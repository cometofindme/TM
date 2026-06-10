function convert_2d_to_128bit_expert_dataset()
    clear; clc;
%用.mat文件(时频图）生成新的一维布尔向量
    % =========================================================
    % ★ 路径配置区
    % =========================================================
    % 1. 这里填你已经生成好的、包含 64x64 图像的旧数据集路径
    input_file  = 'E:\DroneRFa用于侦测低空无人机的大规模无人机射频信号数据集\tm_Dronfa_xy\TM_Images_64x64_50ms_v7.mat';
    
    % 2. 这是生成的新 128 位特征数据集的保存路径
    output_file = 'E:\DroneRFa用于侦测低空无人机的大规模无人机射频信号数据集\tm_Dronfa_xy\TM_128bit_Expert_Dataset_v5.mat';

    fprintf('开始加载旧数据集: %s\n', input_file);
    % 加载数据，里面应该包含 all_Images (N x 64 x 64) 和 all_Labels (N x 1)
    load(input_file, 'all_Images', 'all_Labels');
    
    num_samples = size(all_Images, 1);
    fprintf('成功加载 %d 个样本！开始进行特征提取与降维...\n', num_samples);

    % 预分配新的特征矩阵空间 (N x 128 的逻辑矩阵，极度省内存)
    all_Features = false(num_samples, 128);

    % =========================================================
    % ★ 核心循环：逐个样本处理
    % =========================================================
    for i = 1:num_samples
        % 取出第 i 个样本的 64x64 图像
        % 注意：如果是 3 维矩阵，用 squeeze 降为 2 维
        img_64 = squeeze(all_Images(i, :, :));
        
        % -----------------------------------------------------
        % 第一部分：提取 8 位先验专家特征 (基于原始 64x64 提取最准)
        % -----------------------------------------------------
        expert_bits = false(1, 8);
        CC = bwconncomp(img_64);
        stats = regionprops(CC, 'Area', 'Centroid', 'BoundingBox');
        
        if CC.NumObjects > 0
            areas = [stats.Area];
            % ★ 核心修改 1：剔除巨型粘连图传块，只数“独立小跳频点”的数量
            % 设定面积阈值：大于 100 像素的认为是主干图传，不计入跳频点
            small_blocks_count = sum(areas < 100); 
            
            % 如果独立小跳频点 > 3 个 
            if small_blocks_count > 5
                expert_bits(1) = true; 
            end
            
            % 1. 跳频块数量较多 (>3)
            if CC.NumObjects > 3, expert_bits(1) = true; end
            
            % 2. 存在极大单块信号 
            if max(areas) > 100, expert_bits(2) = true; end
            
          end
        
        % -----------------------------------------------------
        % 第二部分：图像压缩与 1D 锚定投影 (占 120 位)
        % -----------------------------------------------------
        % 压缩至 60x60，腾出 8 位空间
        img_60 = imresize(img_64, [60, 60], 'nearest');
        
        freq_proj = max(img_60, [], 2)'; % 行投影 1x60
        time_proj = max(img_60, [], 1);  % 列投影 1x60
        
        % 零点锚定平移
        idx_f = find(freq_proj == 1, 1, 'first');
        if ~isempty(idx_f), freq_proj = circshift(freq_proj, [0, -(idx_f-1)]); end
        
        idx_t = find(time_proj == 1, 1, 'first');
        if ~isempty(idx_t), time_proj = circshift(time_proj, [0, -(idx_t-1)]); end
        
        % -----------------------------------------------------
        % 第三部分：拼接为最终的 128 位特征
        % -----------------------------------------------------
        all_Features(i, :) = [freq_proj, time_proj, expert_bits];
        
        % 打印进度
        if mod(i, 500) == 0
            fprintf('已处理 %d / %d 样本...\n', i, num_samples);
        end
    end

    % =========================================================
    % ★ 保存新数据集
    % =========================================================
    % 将布尔型转为 uint8 以兼容 Python 库
    all_Features = uint8(all_Features);
    
    save(output_file, 'all_Features', 'all_Labels', '-v7');
    fprintf('\n提取完成！新数据集已保存至: %s\n', output_file);
    fprintf('最终特征矩阵大小: %d 行 x %d 列\n', size(all_Features, 1), size(all_Features, 2));
end