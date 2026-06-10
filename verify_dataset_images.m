function verify_dataset_images()
    clear; clc; close all;

    % =========================================================
    % ★ 路径配置：指向你存放 64x64 图像的 .mat 文件
    % =========================================================
    data_file = 'E:\tm_Dronfa_xy\TM_Images_64x64_50ms_v7.mat';
    
    fprintf('正在加载数据集: %s\n', data_file);
    load(data_file, 'all_Images', 'all_Labels');
    fprintf('加载成功！数据集包含 %d 张图像。\n', size(all_Images, 1));

    % =========================================================
    % ★ 参数设置
    % =========================================================
    class_names = {'T0001', 'T0010', 'T0011', 'T0100'};
    classes = [0, 1, 2, 3];
    samples_per_class = 4; % 每个类别随机抽 4 张展示

    % 创建一个大图窗
    fig = figure('Name', '数据集 64x64 抽样验证', 'Color', 'w', ...
                 'Position', [50, 50, 1400, 800]);

    plot_idx = 1;

    for c = 1:length(classes)
        % 找到当前类别的所有样本索引
        idx_list = find(all_Labels == classes(c));
        
        if isempty(idx_list)
            fprintf('警告：未找到类别 %s 的数据！\n', class_names{c});
            continue;
        end
        
        % 随机抽取 samples_per_class 张（或者按顺序抽取）
        % randperm 保证每次运行抽到的图都不一样，方便你多看几次
        rand_idx = idx_list(randperm(length(idx_list), min(samples_per_class, length(idx_list))));
        
        for s = 1:length(rand_idx)
            % 取出这张 64x64 的图像
            img = squeeze(all_Images(rand_idx(s), :, :));
            
            % --- 实时模拟你的连通域计数逻辑 ---
            CC = bwconncomp(img);
            stats = regionprops(CC, 'Area');
            
            % ★ 核心修改：只统计面积小于 50 的“跳频块”数量
            if CC.NumObjects > 0
                areas = [stats.Area];
                num_blocks = sum(areas < 30); 
            else
                num_blocks = 0;
            end
            
            % --- 绘图 ---
            subplot(length(classes), samples_per_class, plot_idx);
            imagesc(img);
            colormap(gray);
            axis xy; % 让 y 轴向上，符合频率从低到高的视觉习惯
            
            % 画红色边框，让你看清 64x64 的边界
            hold on;
            plot([0.5, 64.5, 64.5, 0.5, 0.5], [0.5, 0.5, 64.5, 64.5, 0.5], 'r-', 'LineWidth', 1.5);
            hold off;
            
            % ★ 修改标题显示：机型 + 样本编号 + 跳频块数量(<50)
            title_str = sprintf('%s (Idx:%d)\n跳频块(<50): %d 个', ...
                                class_names{c}, rand_idx(s), num_blocks);
            title(title_str, 'FontSize', 10, 'Interpreter', 'none');
            
            % 去掉坐标轴刻度，让画面更干净
            set(gca, 'XTick', [], 'YTick', []);
            
            plot_idx = plot_idx + 1;
        end
    end
    
    % 更新总标题
    sgtitle('64x64 图像连通域分析：跳频块(面积<50)计数验证', ...
            'FontSize', 16, 'FontWeight', 'bold');
end