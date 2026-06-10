function generate_drone_spectrogram()
%这个代码用于单纯输出无人机射频信号的时频图，去除了二值化及形态学后处理
%参数：
%观察窗口：时长，起始时间，带宽
    clear; clc; close all;

    % =========================================================
    %  ★ 参数设置区 —— 只需改这里
    % =========================================================
    fs            = 100e6;
    t_start_ms    = 400;      % 观察开始时间 (ms)
    t_duration_ms = 100;     % 观察时长 (ms)

    % ── 功能开关（注释掉 = 关闭，取消注释 = 开启）──────────────
    SCAN_FULL_FILE = false; % 逐段扫描：每隔 t_duration_ms 输出一张，直到文件末尾
    SHOW_FIGURE    = true;  % 绘图显示：在屏幕上弹出图窗（Visible on）
    SAVE_FIGURE    = true;  % 保存图片：输出 PNG 到 output_folder
    % ──────────────────────────────────────────────────────────

    base_path     = 'F:\DroneRFa丨用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa\DroneRFa';
    % 修改了输出文件夹名称，方便与之前的二值化图片区分开
    output_folder = 'E:\tm_Dronfa_xy\结果';
    
    if exist('SAVE_FIGURE','var') && SAVE_FIGURE
        if ~exist(output_folder, 'dir'), mkdir(output_folder); end
    end
    % =========================================================

    test_files = {
%         'T0001_D00_S0000.mat'
        % 'T0001_D00_S0000.mat',
%         'T10111_S1011.mat',
        'T0010_D01_S0001.mat',%跳频块的功率太小了识别不到
%         'T0011_D01_S0001.mat',
%         'T0100_D01_S0001.mat',
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

                % 2) STFT 计算
                win_len = 256; overlap = 192; nfft = 1024;
                [S, f_vec, t_vec] = spectrogram(sig, hamming(win_len), overlap, nfft, fs);
                
                % 频移：把 0~fs 重排为 -fs/2~+fs/2，中心对齐载频
                S     = fftshift(S, 1);
                f_vec = f_vec - fs/2;        % 频率轴平移，变成 -50MHz ~ +50MHz
                
                t_vec_abs = t_vec * 1000 + cur_start_ms;
                f_mhz     = f_vec / 1e6;

                S    = S - mean(S, 2);       % 去除中心频率强干扰
                P_db = 20 * log10(abs(S) + 1e-10);
                
                fprintf('    f_vec: %.1f ~ %.1f MHz，总带宽 %.1f MHz\n', ...
                    min(f_vec)/1e6, max(f_vec)/1e6, (max(f_vec)-min(f_vec))/1e6);

                % ── 绘图（修改为单图满屏显示） ──
                do_show = exist('SHOW_FIGURE','var') && SHOW_FIGURE;
                do_save = exist('SAVE_FIGURE','var') && SAVE_FIGURE;

                if do_show || do_save
                    if do_show
                        vis = 'on';
                    else
                        vis = 'off';   % 只保存不显示时后台渲染
                    end

                    % 调整了画布大小，更适合单张大图显示
                    fig = figure('Color','w', 'Position',[150,150,900,600], 'Visible',vis);

                    imagesc(t_vec_abs, f_mhz, P_db);
                    colormap(jet); 
                    axis xy;
                    
                    % 坐标轴与标题美化
                    xlabel('时间 (ms)', 'FontSize', 12, 'FontWeight', 'bold'); 
                    ylabel('频率 (MHz)', 'FontSize', 12, 'FontWeight', 'bold');
                    title(sprintf('信号功率谱 (dB) | %s | 窗口: %g ~ %g ms', ...
                        strrep(name_no_ext,'_','\_'), cur_start_ms, cur_end_ms), ...
                        'FontSize', 14);
                    
                    % 颜色条
                    cb = colorbar;
                    cb.Label.String = '功率 (dB)';
                    cb.Label.FontSize = 11;

                    % 左下角标注 STFT 参数
                    annotation(fig, 'textbox', [0.15, 0.12, 0.25, 0.08], ...
                        'String', sprintf('fs=%.0fMHz\nwin=%d, ovlp=%d, NFFT=%d', ...
                            fs/1e6, win_len, overlap, nfft), ...
                        'FontSize', 9, 'EdgeColor', 'k', ...
                        'BackgroundColor', [1 1 1 0.8], ...
                        'Interpreter', 'none');

                    % ── 保存 ─────────
                    if do_save
                        win_tag  = sprintf('_t%g_dur%g_Spec', cur_start_ms, t_duration_ms);
                        out_path = fullfile(output_folder, [name_no_ext, win_tag, '.png']);
                        print(fig, out_path, '-dpng', '-r300');
                        fprintf('    -> 已保存: %s\n', [name_no_ext, win_tag, '.png']);
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