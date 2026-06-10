function convert_2d_to_128bit_expert_dataset_pro()
    clear; clc;
    % =========================================================
    % ★ 路径配置区，
    % 1.时间和频率都不移位 TM_128bit_Expert_Dataset_v6 90.58%
    % 2.时间移位，频率不移位 TM_128bit_Expert_Dataset_v7 90.88%
    % 3.时间移位，频率移位 TM_128bit_Expert_Dataset_v8 88.60%效果不好
    % 4.v7基础上不要专家位 TM_128bit_Expert_Dataset_v7_low 87.99%
    % =========================================================
    input_file  = 'E:\tm_Dronfa_xy\1D_TM\Dataset_Merged_All_v2.mat';
    output_file = 'E:\tm_Dronfa_xy\TM_128bit_Expert_Dataset_v7_low.mat';

    fprintf('开始加载旧数据集: %s\n', input_file);
    load(input_file, 'all_Images', 'all_Labels');
    
    num_samples = size(all_Images, 1);
    fprintf('成功加载 %d 个样本！开始进行特征提取与降维...\n', num_samples);

    % 预分配新的特征矩阵空间 (N x 128)
    all_Features = false(num_samples, 128);

    % =========================================================
    % ★ 核心循环：逐个样本处理
    % =========================================================
    for i = 1:num_samples
        % 取出 64x64 图像
        img_64 = squeeze(all_Images(i, :, :));
        
        % -----------------------------------------------------
%         % 第一部分：提取 5 位专家先验特征
%         % -----------------------------------------------------
%         expert_bits = false(1, 5); % ★ 修改为 5 位
%         CC = bwconncomp(img_64);
%         stats = regionprops(CC, 'Area', 'Centroid'); 
%         
%         if CC.NumObjects > 0
%             areas = [stats.Area];
%             
%             % 专家位 1：跳频块数量 > 4
%             small_blocks_count = sum(areas <30); 
%             if small_blocks_count > 2
%                 expert_bits(1) = true; 
%             end
%             
%             % 专家位 2：是否存在大块图传信号 >= 60
%             if max(areas) >= 60
%                 expert_bits(2) = true; 
%             end
%             
%             % 专家位 3 & 4：上半区/下半区是否存在跳频块
%             for k = 1:CC.NumObjects
%                 if areas(k) < 30  % 确认它是跳频块（小块）
%                     y_centroid = stats(k).Centroid(2); 
%                     if y_centroid <= 32
%                         expert_bits(3) = true; % 上半部分存在跳频块
%                     else
%                         expert_bits(4) = true; % 下半部分存在跳频块
%                     end
%                 end
%             end
%             
%             % ★ 新增专家位 5：上下频段都存在跳频信号 (双频分集)
%             if expert_bits(3) && expert_bits(4)
%                 expert_bits(5) = true;
%             end
%         end
%         
        % -----------------------------------------------------
        % 第二部分：无损投影与频域精准截断 (占 59 + 64 = 123 位)
        % -----------------------------------------------------
        freq_proj = max(img_64, [], 2)'; % 行投影 1x64
        time_proj = max(img_64, [], 1);  % 列投影 1x64 
        
%         % 零点锚定平移
%         idx_f = find(freq_proj == 1, 1, 'first');
%         if ~isempty(idx_f)
%             freq_proj = circshift(freq_proj, [0, -(idx_f-1)]); 
%         end
%         
        idx_t = find(time_proj == 1, 1, 'first');
        if ~isempty(idx_t)
            time_proj = circshift(time_proj, [0, -(idx_t-1)]); 
        end
%         
        % ★ 核心修改：砍掉频域平移后末尾的 5 位空位 (64 -> 59)
%         freq_proj = freq_proj(1:59); 
        
        % -----------------------------------------------------
        % 第三部分：拼接为最终的 128 位特征
        % -----------------------------------------------------
        % 组成: [59位频域] + [64位时域] + [5位专家] = 128 位
        all_Features(i, :) = [freq_proj, time_proj];
        
        if mod(i, 500) == 0
            fprintf('已处理 %d / %d 样本...\n', i, num_samples);
        end
    end

    % =========================================================
    % ★ 保存新数据集
    % =========================================================
    all_Features = uint8(all_Features);
    save(output_file, 'all_Features', 'all_Labels', '-v7');
    fprintf('\n提取完成！新数据集已保存至: %s\n', output_file);
end