function batch_prepare_tm_1d_anchored_data_v3()
    clear; clc; close all;
    %%从IQ数据到1D全流程（时间长)
    % --- 配置路径 ---
    data_root   = 'F:\DroneRFa丨用于侦测低空无人机的大规模无人机射频信号数据集\DroneRFa\DroneRFa\用于训练的数据集';
    % 强烈建议改个新名字，以防覆盖之前的 2D 数据集
    output_path = 'D:\MATLAB\matlab2018b\homework\wurenjishibie3_newfeatures\TM_1D_Anchored_Dataset_128bit_v4.mat';
    
    % --- 自动获取所有 .mat 文件 ---
    file_list = dir(fullfile(data_root, '*.mat'));
    num_files = length(file_list);
    fprintf('发现 %d 个数据文件，开始全量安全单线程处理 (提取 1D 锚定特征)...\n', num_files);

    % --- 参数设置 ---
    fs_orig = 100e6;
    win_ms  = 100; 
    samples_per_win = floor((win_ms / 1000) * fs_orig);
    img_size = 64; 
    feature_dim = 128; % ★ 新增：特征维度变为 64(频域) + 64(时域) = 128
    max_wins_per_file = 80; % 限制每个文件的窗口数

    % --- 预定义形态学结构元素 ---
    SE_close = strel('rectangle', [20, 20]);
    SE_open  = strel('rectangle', [10, 1800]);

    % --- 预分配 Cell 数组用于收集数据 ---
    all_Features_cell = cell(num_files, 1); % 改名：现在存的是一维特征，不是图像了
    all_Labels_cell   = cell(num_files, 1);

    % 使用普通 for 循环，告别 OOM
    for f_idx = 1:num_files
        fname_full = fullfile(data_root, file_list(f_idx).name);
        fname_str  = file_list(f_idx).name;
        
        % --- 安全的标签解析逻辑 ---
        label = -1; % 初始化默认值
        if contains(fname_str, 'T0001'), label = 0;
        elseif contains(fname_str, 'T0010'), label = 1;
        elseif contains(fname_str, 'T0011'), label = 2;
        elseif contains(fname_str, 'T0100'), label = 3;
        end
        
        if label == -1
            continue; % 跳过无关文件
        end
        
        fprintf('[%d/%d] 正在处理 %s (Label: %d)...\n', f_idx, num_files, fname_str, label);
        
        m = matfile(fname_full);
        info = whos(m, 'RF0_I');
        num_wins = floor(info.size(1) / samples_per_win);
        actual_wins = min(num_wins, max_wins_per_file); 
        
        % ★ 局部变量预分配：现在每个样本是一个 1x128 的逻辑向量
        temp_features = false(actual_wins, feature_dim);
        valid_win_count = 0; % 记录有效窗口数
        
        for w = 1:actual_wins
            start_i = (w-1)*samples_per_win + 1;
            end_i   = start_i + samples_per_win - 1;
            
            % 读取数据
            I = double(m.RF0_I(start_i:end_i, 1));
            Q = double(m.RF0_Q(start_i:end_i, 1));
            sig = (I-mean(I)) + 1j*(Q-mean(Q));
            
            % 1. 生成时频图
            [S, ~, ~] = spectrogram(sig, hamming(512), 384, 1024, fs_orig);
            S = fftshift(S, 1);
            S = S - mean(S, 2);
            P_db = 20*log10(abs(S) + 1e-10);
            
            % 2. 动态阈值二值化 
            sample_idx = randperm(numel(P_db), min(100000, numel(P_db)));
            thresh = prctile(P_db(sample_idx), 95); 
            bin = P_db > thresh; 
            
            % 3. 形态学清理
            bin_clean = bwareaopen(bin, 20);
            bin_clean = imclose(bin_clean, SE_close);
            bin_clean = imopen(bin_clean, SE_open);
            
            % 4. 缩放得到 64x64 矩阵
            img_64 = imresize(bin_clean, [img_size, img_size], 'nearest');
            
            % =========================================================
            % ★★★ 核心：行列投影与零点锚定移位 ★★★
            % =========================================================
            % A. 降维投影
            freq_proj = max(img_64, [], 2)'; % 频域 (行求最大值转置为 1x64)
            time_proj = max(img_64, [], 1);  % 时域 (列求最大值为 1x64)
            
            % 如果当前窗口全是黑的（没有信号），则跳过
            if sum(freq_proj) == 0 || sum(time_proj) == 0
                clear I Q sig S P_db bin bin_clean img_64; 
                continue; 
            end
            
            % B. 零点锚定平移
            idx_f = find(freq_proj == 1, 1, 'first');
            freq_proj = circshift(freq_proj, [0, -(idx_f-1)]);
            
            idx_t = find(time_proj == 1, 1, 'first');
            time_proj = circshift(time_proj, [0, -(idx_t-1)]);
            
            % C. 拼接存入临时矩阵
            valid_win_count = valid_win_count + 1;
            temp_features(valid_win_count, :) = [freq_proj, time_proj];
            % =========================================================
            
            % --- 极其关键：手动释放巨大内存 ---
            clear I Q sig S P_db bin bin_clean img_64; 
        end
        
        % 只保存有效的数据
        if valid_win_count > 0
            all_Features_cell{f_idx} = temp_features(1:valid_win_count, :);
            all_Labels_cell{f_idx}   = ones(valid_win_count, 1) * label;
        end
        
        clear temp_features m; % 清理文件级内存
    end

    fprintf('特征提取结束，正在合并矩阵...\n');
    valid_idx = ~cellfun(@isempty, all_Features_cell);
    
    % 注意：合并后的 all_Features 形状为 (N, 128)
    all_Features = cat(1, all_Features_cell{valid_idx});
    all_Labels   = cat(1, all_Labels_cell{valid_idx});

    % 保存
    save(output_path, 'all_Features', 'all_Labels', '-v7');
    fprintf('全量 1D 数据集制作完成！总样本数: %d，特征维度: %d\n', size(all_Features, 1), size(all_Features, 2));
end