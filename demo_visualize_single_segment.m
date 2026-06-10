% =========================================================================
% 无人机射频信号 - 单片段特征提取与精细可视化 (含降采样加速版)
% =========================================================================
clear; clc; close all;

% =========================================================
%  ★ 1. 用户自定义参数区 
% =========================================================
fs_original   = 100e6;       % 原始采样率 100MHz
t_start_ms    = 0;         % 起始时间 (ms)
t_duration_ms = 50;          % 窗口时长 (ms)

% ★ 新增：降采样因子 (Downsample Factor)
% 设为 1 不降采样；设为 4 则采样率降至 25MHz，运算速度飙升！
ds_factor     = 4;           

% 测试文件路径
test_file = 'F:\DroneRFa丨用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa\DroneRFa\T0001_D00_S0001.mat';

bw_threshold = 3.0; % 带宽区分阈值

% =========================================================
%  ★ 2. 数据读取与预处理
% =========================================================
fprintf('正在加载文件: %s\n', test_file);
if ~exist(test_file, 'file')
    error('未找到文件，请检查路径！');
end

m = matfile(test_file);
vars = whos(m);
var_names = {vars.name};
if ismember('RF0_I', var_names), I_var = 'RF0_I'; Q_var = 'RF0_Q';
elseif ismember('I', var_names), I_var = 'I'; Q_var = 'Q';
else, error('无法在文件中找到符合要求的 I/Q 通道变量！'); end

% --- 替换原有的获取 total_samp 的代码 ---
% 使用 matfile 对象的内部属性获取变量维度
file_info = whos(m, I_var);
if isempty(file_info)
    error('在文件中未找到变量: %s', I_var);
end
% 这里的 size 是一个数组，例如 [100000, 1]，我们要的是第一个维度
total_samp = file_info.size(1);
s_start = max(1, round(t_start_ms * fs_original / 1000) + 1);
s_end   = min(total_samp, round((t_start_ms + t_duration_ms) * fs_original / 1000));

if s_start > total_samp, error('指定的起始时间超出了数据总长度。'); end

I   = double(m.(I_var)(s_start:s_end, 1));
Q   = double(m.(Q_var)(s_start:s_end, 1));
sig = (I - mean(I)) + 1j*(Q - mean(Q));

% =========================================================
%  ★ 3. 降采样执行 (Downsampling)
% =========================================================
fs = fs_original;
if ds_factor > 1
    % 通过等间隔抽取进行快速降采样
    sig = sig(1:ds_factor:end);
    fs = fs_original / ds_factor;
    fprintf('>> 已开启降采样 (x%d)。当前等效采样率: %.1f MHz (奈奎斯特带宽: ±%.1f MHz)\n', ...
            ds_factor, fs/1e6, fs/2e6);
end

% =========================================================
%  ★ 4. 时频变换与形态学清理
% =========================================================
fprintf('正在进行时频分析与特征提取...\n');

% 自适应窗口：按降采样比例缩小窗长，保证时间分辨率(ms/pixel)绝对一致
win_len = max(16, round(256 / ds_factor)); 
overlap = round(win_len * 0.75); 
nfft    = 1024; % 保持 1024 点 FFT 以获得极高的频率分辨率

[S, f_vec, t_vec] = spectrogram(sig, hamming(win_len), overlap, nfft, fs);
S = fftshift(S, 1); f_vec = f_vec - fs/2;
t_vec_abs = t_vec * 1000 + t_start_ms; f_mhz = f_vec / 1e6;
S = S - mean(S, 2); P_db = 20 * log10(abs(S) + 1e-10);

sample_idx = randperm(numel(P_db), min(100000, numel(P_db)));
thresh = prctile(P_db(sample_idx), 98); 
bin_raw = P_db > thresh; 
bin_clean = bwareaopen(bin_raw, 30);
bin_clean = imclose(bin_clean, strel('rectangle', [10, 40]));
bin_clean = imopen(bin_clean, strel('rectangle', [10, 1800]));

% =========================================================
%  ★ 5. 计算特征并准备可视化
% =========================================================
dt = mean(diff(t_vec_abs)); df = mean(diff(f_mhz));
stats = regionprops(bin_clean, 'BoundingBox', 'Centroid');

fig = figure('Name', 'RF Feature Visualization', 'Color', 'w', 'Position', [100, 100, 1200, 700]);
imagesc(t_vec_abs, f_mhz, P_db); axis xy; colormap jet; hold on;
c = colorbar; c.Label.String = 'Power (dB)';
xlabel('Time (ms)', 'FontWeight', 'bold', 'FontSize', 12);
ylabel('Frequency (MHz)', 'FontWeight', 'bold', 'FontSize', 12);
[~, fname_only, ~] = fileparts(test_file);
% ★ 关键修改：加上 'Interpreter', 'none'
title(sprintf('Feature Extraction: %s (%g ms - %g ms) | Downsample: x%d', fname_only, t_start_ms, t_start_ms + t_duration_ms, ds_factor), 'FontSize', 14, 'Interpreter', 'none');
hop_centroids = []; 

if isempty(stats)
    text(t_start_ms + t_duration_ms/2, 0, '未检测到任何信号块', 'Color', 'w', 'FontSize', 14, 'HorizontalAlignment', 'center');
else
    for k = 1:length(stats)
        bbox = stats(k).BoundingBox;
        
        t_start_box = t_vec_abs(max(1, round(bbox(1))));
        f_start_box = f_mhz(max(1, round(bbox(2))));
        t_len_box   = bbox(3) * dt;
        f_len_box   = bbox(4) * df;
        
        t_center = t_vec_abs(max(1, round(stats(k).Centroid(1))));
        f_center = f_mhz(max(1, round(stats(k).Centroid(2))));

        if f_len_box < bw_threshold
            % === 跳频信号 (使用青色 Cyan，对比度最高) ===
            color = 'c'; % 'c' 就是青色
            % 绘制矩形框
            rectangle('Position', [t_start_box, f_start_box, t_len_box, f_len_box], 'EdgeColor', color, 'LineWidth', 2.5);
            
            % ★ 优化标注位置：
            % 1. 带宽标在竖直边 (右侧)
            text(t_start_box + t_len_box, f_start_box + f_len_box/2, ...
                sprintf(' BW:%.1fMHz', f_len_box), 'Color', color, 'FontSize', 9, 'FontWeight', 'bold', 'HorizontalAlignment', 'left');
            
            % 2. 时长标在水平边 (下方)
            text(t_start_box + t_len_box/2, f_start_box - 1.0, ...
                sprintf('Dur:%.1fms', t_len_box), 'Color', color, 'FontSize', 9, 'FontWeight', 'bold', 'HorizontalAlignment', 'center');
            
            hop_centroids = [hop_centroids; t_center, f_center]; 
        else
            % === 图传信号 (保持绿色) ===
            color = '#32CD32'; 
            rectangle('Position', [t_start_box, f_start_box, t_len_box, f_len_box], 'EdgeColor', color, 'LineWidth', 2);
            text(t_start_box, f_start_box - 2.0, sprintf('Video BW:%.1fMHz', f_len_box), ...
                 'Color', color, 'FontSize', 10, 'FontWeight', 'bold', 'BackgroundColor', [1 1 1 0.7]);
        end
    end
end

if size(hop_centroids, 1) > 1
    [~, idx] = sort(hop_centroids(:,1));
    hop_centroids = hop_centroids(idx, :);
    
    for k = 1:size(hop_centroids,1)-1
        x1 = hop_centroids(k,1); y1 = hop_centroids(k,2);
        x2 = hop_centroids(k+1,1); y2 = hop_centroids(k+1,2);
        
        plot([x1, x2], [y1, y2], 'w--', 'LineWidth', 1.5);
        
        t_int = x2 - x1; 
        f_int = abs(y2 - y1);
        int_str = sprintf('T-Int: %.1f ms\nF-Int: %.1f MHz', t_int, f_int);
        text((x1+x2)/2, (y1+y2)/2, int_str, 'Color', 'k', 'BackgroundColor', 'y', 'FontSize', 9, 'FontWeight', 'bold', 'HorizontalAlignment', 'center');
    end
end

hold off;
fprintf('可视化完成！\n');