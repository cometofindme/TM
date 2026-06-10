function analyze_128bit_expert_dataset ()
    clear; clc; close all;
    data_file = 'E:\tm_Dronfa_xy\TM_128bit_Expert_Dataset_v6.mat';%TM_128bit_Expert_Dataset_v5_pro
    load(data_file, 'all_Features', 'all_Labels');
    all_Features = double(all_Features);
    
    class_names = {'T0001', 'T0010', 'T0011', 'T0100'};
    num_classes = length(class_names);
    mean_features = zeros(num_classes, 128);
    for c = 1:num_classes
        idx = (all_Labels == (c-1)); 
        if sum(idx) > 0, mean_features(c, :) = mean(all_Features(idx, :), 1); end
    end

    % --- 图表 1：热力图 ---
    fig1 = figure('Color','w', 'Position', [100, 100, 1200, 400]);
    imagesc(mean_features); colormap(hot); colorbar; 
    yticks(1:num_classes); yticklabels(class_names);
    title('128 位混合特征宏观激活概率热力图 (59频域+64时域+5专家)', 'FontSize', 14, 'FontWeight', 'bold');
    
    hold on;
    % ★ 修改坐标：59.5 (频域结束), 123.5 (时域结束)
    xline(59.5, 'w--', 'LineWidth', 2); 
    xline(123.5, 'w-', 'LineWidth', 2); 
    
    text(30, 0.2, '频域精准投影 (59 bit)', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
    text(91.5, 0.2, '时域完整投影 (64 bit)', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
    text(126, 0.2, '专家 (5 bit)', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 9);
    set(gca, 'TickDir', 'out', 'FontSize', 11);

    % --- 图表 2：5 位专家特征柱状图 ---
    % ★ 提取最后 5 位 (124 到 128)
    expert_features = mean_features(:, 124:128);
    
    % ★ 更新 5 个标签
    expert_labels = {'1. 跳频块 > 4', '2. 大图传块 >= 60', '3. 上半频段跳频', '4. 下半频段跳频', '5. 上下频段同时跳频'};
                 
    fig2 = figure('Color','w', 'Position', [150, 150, 950, 500]);
    bar(expert_features');
    legend(class_names, 'Location', 'northeastoutside', 'FontSize', 11);
    xticks(1:5); xticklabels(expert_labels); xtickangle(15); 
    ylabel('特征触发概率 (0~1)');
    title('5 位专家特征触发率对比 (破解跨频段协同策略的关键)', 'FontSize', 14, 'FontWeight', 'bold');
    grid on;
end