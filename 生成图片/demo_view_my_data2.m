function demo_view_my_data2()
%无64压缩版
%参数：
%观察窗口：时长，起始时间，带宽
%是否输出图片，是否输出全部时间图片
%形态学处理：需要调整imopen的宽度、输出尺寸
%时频图步长取决于STFT的窗口和步长步长= win_len - 重叠 = 256 - 192 = 64 个采样点
    clear; clc; close all;
    
    % =========================================================
    %  ★ 全局字体设置 —— 让所有坐标轴刻度数字默认为 Times New Roman
    % =========================================================
    set(groot, 'defaultAxesFontName', 'Times New Roman');
    set(groot, 'defaultAxesFontSize', 11);

    % =========================================================
    %  ★ 参数设置区 —— 只需改这里
    % =========================================================
    fs            = 100e6;
    t_start_ms    = 0;      % 观察开始时间 (ms)
    t_duration_ms = 100;    % 观察时长 (ms)

    % ── 功能开关（注释掉 = 关闭，取消注释 = 开启）──────────────
    SCAN_FULL_FILE =false;  % 逐段扫描：每隔 t_duration_ms 输出一张，直到文件末尾
    SHOW_FIGURE    = false;   % 绘图显示：在屏幕上弹出图窗（Visible on）
    SAVE_FIGURE    = true;   % 保存图片：输出 PNG 到 output_folder
    % ──────────────────────────────────────────────────────────

    base_path     = 'F:\DroneRFa丨用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa\DroneRFa';
    output_folder = 'E:\tm_Dronfa_xy\结果\数据预处理\宋体';
    if exist('SAVE_FIGURE','var') && SAVE_FIGURE
        if ~exist(output_folder, 'dir'), mkdir(output_folder); end
    end
    % =========================================================

    test_files = {
           'T0100_D01_S0001.mat'
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
                S     = fftshift(S, 1);
                f_vec = f_vec - fs/2;        
                
                t_vec_abs = t_vec * 1000 + cur_start_ms;
                f_mhz     = f_vec / 1e6;

                 S    = S - mean(S, 2);
                P_db = 20 * log10(abs(S) + 1e-10);
                fprintf('    f_vec: %.1f ~ %.1f MHz，总带宽 %.1f MHz\n', ...
                    min(f_vec)/1e6, max(f_vec)/1e6, (max(f_vec)-min(f_vec))/1e6);

                % 3) 二值化
                sample_idx = randperm(numel(P_db), min(100000, numel(P_db)));
                thresh = prctile(P_db(sample_idx), 97); 
                bin_raw = P_db > thresh; 

                % 4) 形态学清理
                bin_clean = bwareaopen(bin_raw, 30);
                SE_close  = strel('rectangle', [10, 40]);
                bin_clean = imclose(bin_clean, SE_close);
                SE_open = strel('rectangle', [10, 1800]);
                bin_clean = imopen(bin_clean, SE_open);

                % ── 绘图 ──
                do_show = exist('SHOW_FIGURE','var') && SHOW_FIGURE;
                do_save = exist('SAVE_FIGURE','var') && SAVE_FIGURE;

                if do_show || do_save
                    if do_show
                        vis = 'on';
                    else
                        vis = 'off';   
                    end

                    % ★ 调整了窗口宽度，从 1600 缩小到 1350，确保 3 个图的高宽比极其完美
                    fig = figure('Color','w', 'Position',[100,160,1350,460], 'Visible',vis);

                    % 总标题全是英文和数字，直接指定 Times New Roman
                    sgt = sgtitle(sprintf('%s   |    %g ~ %g ms  (%.1f ms)', ...
                        strrep(name_no_ext,'_','\_'), ...
                        cur_start_ms, cur_end_ms, actual_dur_ms));
                    set(sgt, 'FontName', 'Times New Roman', 'FontSize', 12, 'FontWeight', 'bold');

                    % 图 1
                    ax1 = subplot(1,3,1);
                    imagesc(t_vec_abs, f_mhz, P_db);
                    colormap(ax1, jet); axis xy;
                    xlabel('\fontname{SimSun}时间 \fontname{Times New Roman}(ms)'); 
                    ylabel('\fontname{SimSun}频率 \fontname{Times New Roman}(MHz)');
                    title(sprintf('\\fontname{Times New Roman}1. \\fontname{SimSun}功率谱 \\fontname{Times New Roman}(dB)\n[%.1f, %.1f] MHz', min(f_mhz), max(f_mhz)));
                    cb = colorbar('Location','southoutside');
                    cb.Label.String = '\fontname{Times New Roman}dB';

                    % 图 2
                    ax2 = subplot(1,3,2);
                    imagesc(t_vec_abs, f_mhz, bin_raw);
                    colormap(ax2, gray); axis xy;
                    xlabel('\fontname{SimSun}时间 \fontname{Times New Roman}(ms)'); 
                    ylabel('\fontname{SimSun}频率 \fontname{Times New Roman}(MHz)');
                    title('\fontname{Times New Roman}2. \fontname{SimSun}初始二值化');

                    % 图 3
                    ax3 = subplot(1,3,3);
                    imagesc(t_vec_abs, f_mhz, bin_clean);
                    colormap(ax3, gray); axis xy;
                    xlabel('\fontname{SimSun}时间 \fontname{Times New Roman}(ms)'); 
                    ylabel('\fontname{SimSun}频率 \fontname{Times New Roman}(MHz)');
                    title('\fontname{Times New Roman}3. \fontname{SimSun}形态学清理后');

                    % 批注框调整了相对位置，使其依然乖乖呆在右下角
                    annotation(fig, 'textbox', [0.76, 0.02, 0.23, 0.08], ...
                        'String', sprintf('fs=%.0fMHz  win=%d  ovlp=%d  NFFT=%d', ...
                            fs/1e6, win_len, overlap, nfft), ...
                        'FontName', 'Times New Roman', 'FontSize', 8, 'EdgeColor', 'none', ...
                        'BackgroundColor', [1 1 1 0.7], ...
                        'HorizontalAlignment', 'right', 'Interpreter', 'none');

                    if do_save
                        win_tag  = sprintf('_t%g_dur%g', cur_start_ms, t_duration_ms);
                        out_path = fullfile(output_folder, [name_no_ext, win_tag, '2.png']);
                        print(fig, out_path, '-dpng', '-r300');
                        fprintf('    -> 已保存: %s\n', [name_no_ext, win_tag, '2.png']);
                    end

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