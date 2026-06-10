function demo_extract_my_data()
    % 这个代码用于手工提取无人机参数并与先验知识库比对
    % 【新增】支持时间滑动窗口切片，大幅增加样本量
    clear; clc; close all;

    % =========================================================
    %  ★ 参数设置区
    % =========================================================
    fs            = 100e6;
    step_ms       = 50;     % 步进长度 (滑动窗口的步长)
    t_duration_ms = 50;     % 每次分析的窗口时长 (设为跟步进一样，即不重叠切片)

    base_path     = 'F:\DroneRFa丨用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa\DroneRFa';
    output_folder = 'E:\tm_Dronfa_xy\结果';
    prior_db_path = 'D:\学习\毕设\选择的无人机型号.xls'; % 先验知识库文件路径
    
    if ~exist(output_folder, 'dir')
        mkdir(output_folder);
    end

    % 加载先验知识库
    if exist(prior_db_path, 'file')
        warning('off', 'MATLAB:table:ModifiedAndSavedVarnames');
        prior_db = readtable(prior_db_path);
        fprintf('成功加载先验知识库，共 %d 种无人机型号。\n', height(prior_db));
    else
        error('未找到先验知识库文件，请检查路径！');
    end

    test_files = {
        'T0001_D00_S0000.mat',
        'T0010_D10_S0000.mat',
        'T0011_D01_S0001.mat',
        'T0100_D01_S0001.mat',
        'T0101_D00_S0000.mat',
        'T0110_D00_S0000.mat',
        'T0111_D00_S0000.mat',
        'T1000_D00_S0000.mat',
        'T1001_D00_S0000.mat',
        'T0000_D00_S0000.mat'
    };

    % === 初始化一个 Table 用于存储特征与分类结果 ===
    results_table = table(); 

    for i = 1:length(test_files)
        file_name      = test_files{i};
        full_file_path = fullfile(base_path, file_name);
        [~, name_no_ext, ~] = fileparts(file_name);

        fprintf('\n[%d/%d] 开始处理文件: %s\n', i, length(test_files), file_name);
        
        if ~exist(full_file_path, 'file')
            fprintf('  [跳过] 文件不存在\n'); continue;
        end

        % 动态识别变量名
        m = matfile(full_file_path);
        vars = whos(m);
        var_names = {vars.name};
        
        if ismember('RF0_I', var_names)
            I_var = 'RF0_I'; Q_var = 'RF0_Q';
        elseif ismember('I', var_names)
            I_var = 'I'; Q_var = 'Q';
        else
            fprintf('  [错误] 无法在文件中找到符合要求的 I 通道变量，跳过。\n');
            continue;
        end

        data_info  = whos(m, I_var);
        total_samp = data_info.size(1);
        total_time_ms = (total_samp / fs) * 1000; % 计算文件总时长(ms)
        
        fprintf('  >> 文件总时长: %.2f ms，即将进行 50ms 切片处理...\n', total_time_ms);

        % =========================================================
        % ★ 新增：滑动窗口循环 (从 0ms 开始，按 step_ms 步进)
        % =========================================================
        for cur_start_ms = 0 : step_ms : (total_time_ms - t_duration_ms)
            
            s_start = max(1, round(cur_start_ms * fs / 1000) + 1);
            s_end   = min(total_samp, round((cur_start_ms + t_duration_ms) * fs / 1000));

            % 1) 读取当前切片数据与预处理
            I   = double(m.(I_var)(s_start:s_end, 1));
            Q   = double(m.(Q_var)(s_start:s_end, 1));
            sig = (I - mean(I)) + 1j*(Q - mean(Q));

            % 2) STFT
            win_len = 256; overlap = 192; nfft = 1024;
            [S, f_vec, t_vec] = spectrogram(sig, hamming(win_len), overlap, nfft, fs);
            S     = fftshift(S, 1);
            f_vec = f_vec - fs/2;
             
            S    = S - mean(S, 2);
            P_db = 20 * log10(abs(S) + 1e-10);

            % 3) 二值化与形态学
            sample_idx = randperm(numel(P_db), min(100000, numel(P_db)));
            thresh = prctile(P_db(sample_idx), 97); 
            bin_raw = P_db > thresh; 
            bin_clean = bwareaopen(bin_raw, 30);
            bin_clean = imclose(bin_clean, strel('rectangle', [10, 40]));
            bin_clean = imopen(bin_clean, strel('rectangle', [10, 1000]));

            % 4) 提取特征 
            t_vec_abs = t_vec * 1000 + cur_start_ms; % 注意这里改为 cur_start_ms
            f_mhz     = f_vec / 1e6;
            features = extract_drone_features(bin_clean, t_vec_abs, f_mhz);
            
            % 5) 特征匹配：与先验知识库比对
            [predicted_model, match_score] = match_with_prior_db(features, prior_db);
            
            % 将当前切片结果追加到表格中
            new_row = table({name_no_ext}, cur_start_ms, ...
                features.Hop_BW, features.Hop_Dur, features.Video_Period, features.Video_DutyCycle, ...
                {char(predicted_model)}, match_score, ...
                'VariableNames', {'Real_FileName', 'Start_Time_ms', 'Hop_BW_MHz', 'Hop_Dur_ms', ...
                                  'Video_Period_ms', 'Video_DutyCycle_pct', 'Predicted_Model', 'Match_Score'});
            results_table = [results_table; new_row];
        end
        fprintf('  >> 完成切片。目前总样本数: %d\n', height(results_table));
    end

    % =========================================================
    % 保存结果与绘制混淆矩阵
    % =========================================================
    if ~isempty(results_table)
        csv_path = fullfile(output_folder, 'Drone_Classification_Result_2.csv');
        
        % 防文件锁定机制
        fid = fopen(csv_path, 'a');
        if fid == -1
            fprintf('\n[警告] 无法写入 CSV！请确保没有用 Excel 打开旧文件。数据仅保留在工作区。\n');
        else
            fclose(fid);
            writetable(results_table, csv_path);
            fprintf('\n★ 处理完毕！共提取 %d 个样本，结果已保存至: %s\n', height(results_table), csv_path);
        end
        
        % 1. 提取真实标签
        true_labels = strings(height(results_table), 1);
        for r = 1:height(results_table)
            fname = results_table.Real_FileName{r};
            tokens = regexp(fname, '^T(\d+)', 'tokens', 'once');
            
            if ~isempty(tokens)
                code_str = tokens{1}; 
                match_idx = 0;
                for k = 1:height(prior_db)
                    if isnumeric(prior_db{k, 1})
                        if prior_db{k, 1} == str2double(code_str), match_idx = k; break; end
                    else
                        if strcmp(string(prior_db{k, 1}), string(code_str)), match_idx = k; break; end
                    end
                end
                
                if match_idx > 0
                    db_model_raw = prior_db{match_idx, 2};
                    if iscell(db_model_raw), true_labels(r) = string(db_model_raw{1});
                    else, true_labels(r) = string(db_model_raw); end
                else
                    true_labels(r) = "Unknown_Real";
                end
            else
                true_labels(r) = "Unknown_Real";
            end
        end
        
        pred_labels = string(results_table.Predicted_Model);
        
        % 2. 绘制混淆矩阵
        fig_cm = figure('Name', 'Confusion Matrix', 'Color', 'w', 'Position', [200, 200, 800, 600]);
        cm = confusionchart(categorical(true_labels), categorical(pred_labels));
        
        cm.Title = 'UAV Classification Confusion Matrix (Sliding Window)';
        cm.XLabel = 'Predicted Class';
        cm.YLabel = 'True Class';
        cm.RowSummary = 'row-normalized';     
        cm.ColumnSummary = 'column-normalized'; 
        
        % 3. 保存图片
        cm_path = fullfile(output_folder, 'Confusion_Matrix_2.png');
        try
            print(fig_cm, cm_path, '-dpng', '-r300');
            fprintf('★ Confusion Matrix image saved to: %s\n', cm_path);
        catch
            fprintf('★ [警告] 图片保存失败，请检查文件夹权限。\n');
        end
    else
        fprintf('\n未能成功提取任何数据。\n');
    end
end

% =========================================================================
% 附加函数 1：安全的数据解析工具
% =========================================================================
function val = safe_parse_numeric(raw_val)
    if isnumeric(raw_val)
        val = double(raw_val);
    elseif iscell(raw_val)
        val = str2double(string(raw_val{1})); 
    elseif ischar(raw_val) || isstring(raw_val)
        val = str2double(string(raw_val));
    else
        val = NaN;
    end
end

% =========================================================================
% 附加函数 2：与先验知识库进行比对
% =========================================================================
function [best_model, min_dist] = match_with_prior_db(features, prior_db)
    num_models = height(prior_db);
    min_dist = inf;
    best_model = 'Unknown';
    
    weight_hop_bw = 1.0;
    weight_hop_dur = 2.0;
    weight_vid_period = 1.0;
    
    for k = 1:num_models
        db_model_raw = prior_db{k, 2};
        if iscell(db_model_raw)
            db_model = string(db_model_raw{1});
        else
            db_model = string(db_model_raw);
        end
        
        db_hop_bw  = safe_parse_numeric(prior_db{k, 3});
        db_hop_dur = safe_parse_numeric(prior_db{k, 4});
        db_vid_per = safe_parse_numeric(prior_db{k, 7});
        
        dist = 0;
        valid_features = 0;
        
        if ~isnan(features.Hop_BW) && ~isnan(db_hop_bw)
            dist = dist + weight_hop_bw * (features.Hop_BW - db_hop_bw)^2;
            valid_features = valid_features + 1;
        elseif xor(isnan(features.Hop_BW), isnan(db_hop_bw))
            dist = dist + 1000; 
        end
        
        if ~isnan(features.Hop_Dur) && ~isnan(db_hop_dur)
            dist = dist + weight_hop_dur * (features.Hop_Dur - db_hop_dur)^2;
            valid_features = valid_features + 1;
        end
        
        if ~isnan(features.Video_Period) && ~isnan(db_vid_per)
            dist = dist + weight_vid_period * (features.Video_Period - db_vid_per)^2;
            valid_features = valid_features + 1;
        elseif xor(isnan(features.Video_Period), isnan(db_vid_per))
            dist = dist + 1000;
        end
        
        if valid_features > 0
            final_dist = sqrt(dist / valid_features);
        else
            final_dist = inf;
        end
        
        if final_dist < min_dist
            min_dist = final_dist;
            best_model = db_model;
        end
    end
end

% =========================================================================
% 附加函数 3：特征提取
% =========================================================================
function features = extract_drone_features(bin_clean, t_vec_abs, f_mhz)
    if length(t_vec_abs) > 1, dt = mean(diff(t_vec_abs)); else, dt = 1; end
    if length(f_mhz) > 1, df = mean(diff(f_mhz)); else, df = 1; end

    stats = regionprops(bin_clean, 'BoundingBox', 'Centroid');
    num_blocks = length(stats);
    
    features = struct('Hop_BW', NaN, 'Hop_Dur', NaN, 'Nearest_T_Int', NaN, ...
                      'Nearest_F_Int', NaN, 'Video_Period', NaN, 'Video_DutyCycle', NaN);

    if num_blocks == 0, return; end

    block_durations = zeros(num_blocks, 1);
    block_bandwidths= zeros(num_blocks, 1);
    block_start_t   = zeros(num_blocks, 1);
    block_center_f  = zeros(num_blocks, 1);

    for k = 1:num_blocks
        bbox = stats(k).BoundingBox;
        block_start_t(k)    = t_vec_abs(max(1, round(bbox(1))));
        block_durations(k)  = bbox(3) * dt;
        block_bandwidths(k) = bbox(4) * df;
        block_center_f(k)   = f_mhz(max(1, round(stats(k).Centroid(2))));
    end

    bw_threshold = 3.0; 
    idx_hopping = find(block_bandwidths < bw_threshold);
    idx_video   = find(block_bandwidths >= bw_threshold);

    if ~isempty(idx_hopping)
        hop_starts = sort(block_start_t(idx_hopping));
        hop_centers = block_center_f(idx_hopping); 
        
        features.Hop_BW  = mean(block_bandwidths(idx_hopping));
        features.Hop_Dur = mean(block_durations(idx_hopping));
        
        if length(idx_hopping) > 1
            features.Nearest_T_Int = mean(diff(hop_starts)); 
            features.Nearest_F_Int = mean(abs(diff(hop_centers))); 
        end
    end

    if length(idx_video) > 1
        [video_starts, sort_idx] = sort(block_start_t(idx_video));
        video_durs = block_durations(idx_video(sort_idx));
        
        periods = diff(video_starts);
        features.Video_Period = mean(periods);
        
        duty_cycles = video_durs(1:end-1) ./ periods;
        valid_dc = duty_cycles(duty_cycles <= 1 & duty_cycles > 0);
        if ~isempty(valid_dc)
            features.Video_DutyCycle = mean(valid_dc) * 100; 
        end
    end
end