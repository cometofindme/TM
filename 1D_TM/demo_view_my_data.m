function demo_view_my_data()
%这个代码用于输出无人机时频图来观察不同无人机的差异
%参数：
%观察窗口：时长，起始时间，带宽
%是否输出图片，是否输出全部时间图片
%形态学处理：需要调整imopen的宽度、输出尺寸
%时频图步长取决于STFT的窗口和步长步长= win_len ? 重叠 = 256 ? 192 = 64 个采样点
    clear; clc; close all;

    % =========================================================
    %  ★ 参数设置区 —— 只需改这里
    % =========================================================
    fs            = 100e6;
    t_start_ms    = 0;      % 观察开始时间 (ms)
    t_duration_ms = 100;    % 观察时长 (ms)

    % ── 功能开关（注释掉 = 关闭，取消注释 = 开启）──────────────
    SCAN_FULL_FILE =true;  % 逐段扫描：每隔 t_duration_ms 输出一张，直到文件末尾
    SHOW_FIGURE    = false;   % 绘图显示：在屏幕上弹出图窗（Visible on）
    SAVE_FIGURE    = true;   % 保存图片：输出 PNG 到 output_folder
    % ──────────────────────────────────────────────────────────

    base_path     = 'F:\DroneRFa丨用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa\DroneRFa';
    output_folder = 'E:\DroneRFa用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa_Images_Output\T1010';
    if exist('SAVE_FIGURE','var') && SAVE_FIGURE
        if ~exist(output_folder, 'dir'), mkdir(output_folder); end
    end
    % =========================================================

    test_files = {
%         'T1010_D00_S0000.mat'
        'T1010_D00_S0000.mat',
%         'T0010_D10_S0000.mat',%跳频块的功率太小了识别不到
%         'T0011_D01_S0001.mat',
%         'T0100_D01_S0001.mat',
%         'T0111_D00_S0001.mat',
%        'T0110_D00_S0010.mat',
%            'T1101_S0001.mat',
%            'T0001_D01_S0011'
    };

    fprintf('共指定 %d 个文件。\n', length(test_files));

    for i = 1:length(test_files)
        file_name      = test_files{i};
        full_file_path = fullfile(base_path, file_name);
        [~, name_no_ext, ~] = fileparts(file_name);

        fprintf('\n[%d/%d] %s\n', i, length(test_files), file_name);
        if ~exist(full_file_path, 'file')
            fprintf('  [跳过] 文件不存在\n'); continue;
        end

        m          = matfile(full_file_path);
        data_info  = whos(m, 'RF0_I');
        total_samp = data_info.size(1);
        total_ms   = total_samp / fs * 1000;

        if exist('SCAN_FULL_FILE','var') && SCAN_FULL_FILE
            seg_starts_ms = t_start_ms : t_duration_ms : (total_ms - t_duration_ms);
            if isempty(seg_starts_ms)
                fprintf('  [跳过] 开始时间 %g ms 已超出文件总时长 %.1f ms\n', t_start_ms, total_ms);
                continue;
            end
            fprintf('  [扫描模式] 共 %d 段，%.1f ms ~ %.1f ms\n', ...
                length(seg_starts_ms), seg_starts_ms(1), seg_starts_ms(end) + t_duration_ms);
        else
            seg_starts_ms = t_start_ms;
        end

        for seg = 1:length(seg_starts_ms)
            cur_start_ms = seg_starts_ms(seg);
            cur_end_ms   = cur_start_ms + t_duration_ms;

            s_start       = max(1, round(cur_start_ms * fs / 1000) + 1);
            s_end         = min(total_samp, round(cur_end_ms * fs / 1000));
            actual_dur_ms = (s_end - s_start + 1) / fs * 1000;

            if s_start > total_samp, break; end

            fprintf('  段 %d/%d  [%g ~ %g ms]\n', seg, length(seg_starts_ms), cur_start_ms, cur_end_ms);

            try
                % 1) 读取数据
                I   = double(m.RF0_I(s_start:s_end, 1));
                Q   = double(m.RF0_Q(s_start:s_end, 1));
                sig = (I - mean(I)) + 1j*(Q - mean(Q));

                % 2) STFT
                win_len = 256; overlap = 192; nfft = 1024;
                [S, f_vec, t_vec] = spectrogram(sig, hamming(win_len), overlap, nfft, fs);
                % ★ 频移：把 0~fs 重排为 -fs/2~+fs/2，中心对齐载频
                S     = fftshift(S, 1);
                f_vec = f_vec - fs/2;        % 频率轴平移，变成 -50MHz ~ +50MHz
                
                t_vec_abs = t_vec * 1000 + cur_start_ms;
                f_mhz     = f_vec / 1e6;

                 S    = S - mean(S, 2);%这个地方是因为之前的时频图颠倒了，中间会出现频率强
                P_db = 20 * log10(abs(S) + 1e-10);
                fprintf('    f_vec: %.1f ~ %.1f MHz，总带宽 %.1f MHz\n', ...
                    min(f_vec)/1e6, max(f_vec)/1e6, (max(f_vec)-min(f_vec))/1e6);

                % 3) 二值化
                            % 2. 动态阈值二值化 (提速核心：抽样估算分位数)
            % 从巨大的 P_db 中随机抽取 10 万个点算阈值，替代全量排序
            sample_idx = randperm(numel(P_db), min(100000, numel(P_db)));
            thresh = prctile(P_db(sample_idx), 97); 
            bin_raw = P_db > thresh; 

                % 4) 形态学清理
%但STFT输出的每一列对应的是一个窗口的步进，而不是单个采样点：
% 帧时间分辨率= hop size 窗口步进/ fs = 64 / 100×10e6 = 0.64 us                 
% 
                bin_clean = bwareaopen(bin_raw, 30);%去噪
% 
                SE_close  = strel('rectangle', [10, 40]);
                bin_clean = imclose(bin_clean, SE_close);
%                 
%                 SE_open = strel('rectangle', [10, 1800]);
%                 bin_clean = imopen(bin_clean, SE_open);

                % 5) 缩放 128×128
                img_128 = imresize(bin_clean, [64, 64], 'nearest');

                % ── 绘图（注释掉 SHOW_FIGURE 开关可完全跳过此块）──
                do_show = exist('SHOW_FIGURE','var') && SHOW_FIGURE;
                do_save = exist('SAVE_FIGURE','var') && SAVE_FIGURE;

                if do_show || do_save
                    % 显示开关控制 Visible 属性
                    if do_show
                        vis = 'on';
                    else
                        vis = 'off';   % 只保存不显示时后台渲染
                    end

                    fig = figure('Color','w', 'Position',[80,160,1600,460], 'Visible',vis);

                    sgtitle(sprintf('%s   |   窗口: %g ~ %g ms  (%.1f ms,  %d 点)', ...
                        strrep(name_no_ext,'_','\_'), ...
                        cur_start_ms, cur_end_ms, actual_dur_ms, s_end-s_start+1), ...
                        'FontSize', 10);

                    ax1 = subplot(1,4,1);
                    imagesc(t_vec_abs, f_mhz, P_db);
                    colormap(ax1, jet); axis xy;
                    xlabel('时间 (ms)'); ylabel('频率 (Mhz)');
                    title(sprintf('1. 功率谱 (dB)\n[%.1f, %.1f] Mhz', min(f_mhz), max(f_mhz)));
                    cb = colorbar('Location','southoutside');
                    cb.Label.String = 'dB';

                    ax2 = subplot(1,4,2);
                    imagesc(t_vec_abs, f_mhz, bin_raw);
                    colormap(ax2, gray); axis xy;
                    xlabel('时间 (ms)'); ylabel('频率 (Mhz)');
                    title('2. 初始二值化');

                    ax3 = subplot(1,4,3);
                    imagesc(t_vec_abs, f_mhz, bin_clean);
                    colormap(ax3, gray); axis xy;
                    xlabel('时间 (ms)'); ylabel('频率 (Mhz)');
                    title('3. 形态学清理后');

                    ax4 = subplot(1,4,4);
                    imagesc(img_128);
                    colormap(ax4, gray); axis xy;
                    xlabel('像素列'); ylabel('像素行');
                    title('4. 最终输入 (64×64)');
                    set(ax4, 'XColor','r', 'YColor','r', 'LineWidth', 2);

                    annotation(fig, 'textbox', [0.755, 0.01, 0.23, 0.10], ...
                        'String', sprintf('fs=%.0fMHz  win=%d  ovlp=%d  NFFT=%d', ...
                            fs/1e6, win_len, overlap, nfft), ...
                        'FontSize', 7.5, 'EdgeColor', 'none', ...
                        'BackgroundColor', [1 1 1 0.7], ...
                        'HorizontalAlignment', 'right', 'Interpreter', 'none');

                    % ── 保存（注释掉 SAVE_FIGURE 开关可跳过）─────────
                    if do_save
                        win_tag  = sprintf('_t%g_dur%g', cur_start_ms, t_duration_ms);
                        out_path = fullfile(output_folder, [name_no_ext, win_tag, '.png']);
                        print(fig, out_path, '-dpng', '-r300');
                        fprintf('    -> 已保存: %s\n', [name_no_ext, win_tag, '.png']);
                    end

                    % 不显示时关闭；显示时保留（用户手动关）
                    if ~do_show
                        close(fig);
                    end
                end

            catch ME
                fprintf('    [错误] %s\n', ME.message);
                if exist('fig','var') && isvalid(fig), close(fig); end
            end
        end
    end

    fprintf('\n全部完成！\n');
    if exist('SAVE_FIGURE','var') && SAVE_FIGURE
        fprintf('图片保存至:\n  %s\n', output_folder);
    end
end