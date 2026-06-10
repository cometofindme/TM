function analyze_128bit_expert_dataset()
    clear; clc; close all;
    
    % =========================================================
    % 全局字体设置：默认数字和英文刻度为 Times New Roman
    % =========================================================
    set(groot, 'defaultAxesFontName', 'Times New Roman');
    set(groot, 'defaultAxesFontSize', 11);
    set(groot, 'defaultAxesTickLabelInterpreter', 'tex'); % 必须开启，才能让 X 轴标签支持 TeX 字体切换

    data_file = 'E:\tm_Dronfa_xy\TM_128bit_Expert_Dataset_v6.mat'; %TM_128bit_Expert_Dataset_v5_pro
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
    imagesc(mean_features); colormap(hot); 
    cb = colorbar; 
    cb.FontName = 'Times New Roman'; % Colorbar 数字设为 Times
    
    yticks(1:num_classes); yticklabels(class_names);
    % 标题中英文混排
    title('\fontname{Times New Roman}128 \fontname{SimSun}位混合特征宏观激活概率热力图 \fontname{Times New Roman}(59\fontname{SimSun}频域\fontname{Times New Roman}+64\fontname{SimSun}时域\fontname{Times New Roman}+5\fontname{SimSun}专家\fontname{Times New Roman})', ...
          'Interpreter', 'tex', 'FontSize', 14, 'FontWeight', 'bold');
    
    hold on;
    xline(59.5, 'w--', 'LineWidth', 2); 
    xline(123.5, 'w-', 'LineWidth', 2); 
    
    % 图内标注中英文混排
    text(30, 0.2, '\fontname{SimSun}频域精准投影 \fontname{Times New Roman}(59 bit)', 'Interpreter', 'tex', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
    text(91.5, 0.2, '\fontname{SimSun}时域完整投影 \fontname{Times New Roman}(64 bit)', 'Interpreter', 'tex', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold');
    text(126, 0.2, '\fontname{SimSun}专家 \fontname{Times New Roman}(5 bit)', 'Interpreter', 'tex', 'Color', 'w', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 9);
    set(gca, 'TickDir', 'out', 'FontSize', 11);

    % --- 图表 2：5 位专家特征柱状图 ---
    expert_features = mean_features(:, 124:128);
    
    % ★ X轴标签中英文混排（数字用 Times New Roman，中文用宋体，符号如 > = 用 Times）
    expert_labels = {'\fontname{Times New Roman}1. \fontname{SimSun}跳频块 \fontname{Times New Roman}> 4', ...
                     '\fontname{Times New Roman}2. \fontname{SimSun}大图传块 \fontname{Times New Roman}>= 60', ...
                     '\fontname{Times New Roman}3. \fontname{SimSun}上半频段跳频', ...
                     '\fontname{Times New Roman}4. \fontname{SimSun}下半频段跳频', ...
                     '\fontname{Times New Roman}5. \fontname{SimSun}上下频段同时跳频'};
                  
    fig2 = figure('Color','w', 'Position', [150, 150, 950, 500]);
    bar(expert_features');
    
    % 图例纯英文/数字，直接套用 Times New Roman
    lgd = legend(class_names, 'Location', 'northeastoutside', 'FontSize', 11);
    lgd.FontName = 'Times New Roman';
    
    xticks(1:5); 
    xticklabels(expert_labels); 
    xtickangle(15); 
    
    % Y 轴标签和标题中英文混排
    ylabel('\fontname{SimSun}特征触发概率 \fontname{Times New Roman}(0~1)', 'Interpreter', 'tex', 'FontSize', 12);
    title('\fontname{Times New Roman}5 \fontname{SimSun}位专家特征触发率对比 ', ...
          'Interpreter', 'tex', 'FontSize', 14, 'FontWeight', 'bold');
    grid on;
end