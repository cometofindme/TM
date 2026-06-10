% =========================================================================
% 无人机射频特征机器学习分类器 (SVM vs Random Forest)
% =========================================================================
clear; clc; close all;

% 设置全局字体（英文默认 Times New Roman，应用于坐标轴刻度数字）
set(groot, 'defaultAxesFontName', 'Times New Roman');
set(groot, 'defaultAxesFontSize', 8);

% 1. 读取滑动窗口提取的特征数据
output_folder = 'E:\tm_Dronfa_xy\结果';
csv_path = fullfile(output_folder, 'Drone_Classification_Result_2.csv');%'Drone_Classification_Result_2.csv'

if ~exist(csv_path, 'file')
    error('未找到 CSV 文件，请确认路径或先运行特征提取代码！');
end

data = readtable(csv_path);

% 2. 提取真实标签 (Y)
real_labels = extractBefore(data.Real_FileName, '_');
Y = categorical(real_labels);

% 3. 提取特征矩阵 (X)
feature_names = {'Hop_BW_MHz', 'Hop_Dur_ms', 'Video_Period_ms', 'Video_DutyCycle_pct'};
X_table = data(:, feature_names);
X = table2array(X_table);

% ========================================================
% ★ 关键数据清洗：处理缺失值 (NaN)
% ========================================================
X(isnan(X)) = -1; 

% 4. 划分数据集 (80% 训练集, 20% 测试集)
rng(42);
cv = cvpartition(Y, 'HoldOut', 0.2);
X_train = X(training(cv), :); Y_train = Y(training(cv));
X_test  = X(test(cv), :);     Y_test  = Y(test(cv));

fprintf('\n★ 数据准备完毕！训练集: %d 个样本，测试集: %d 个样本。\n', sum(training(cv)), sum(test(cv)));

% ========================================================
% 5A. 训练 随机森林 (Random Forest)
% ========================================================
fprintf('正在训练 随机森林 模型...\n');
numTrees = 50;
rf_model = TreeBagger(numTrees, X_train, Y_train, 'OOBPrediction', 'on', ...
                      'Method', 'classification', 'OOBPredictorImportance', 'on', ...
                      'PredictorNames', feature_names);

rf_pred = predict(rf_model, X_test);
rf_acc = sum(categorical(rf_pred) == Y_test) / length(Y_test);
fprintf('>> 随机森林 测试集准确率: %.2f%%\n', rf_acc * 100);

% ========================================================
% 5B. 训练 支持向量机 (SVM - 多分类)
% ========================================================
fprintf('正在训练 支持向量机(SVM) 模型...\n');
svm_template = templateSVM('Standardize', true, 'KernelFunction', 'gaussian'); 
svm_model = fitcecoc(X_train, Y_train, 'Learners', svm_template);

svm_pred = predict(svm_model, X_test);
svm_acc = sum(svm_pred == Y_test) / length(Y_test);
fprintf('>> SVM 测试集准确率: %.2f%%\n', svm_acc * 100);

% ========================================================
% 6. 可视化生成 (完美混排字体版)
% ========================================================

% 计算混淆矩阵并按行归一化
[C_rf, class_order] = confusionmat(Y_test, categorical(rf_pred));
row_sum_rf = sum(C_rf, 2); row_sum_rf(row_sum_rf==0) = 1;
C_rf_pct = (C_rf ./ row_sum_rf) * 100;

[C_svm, ~] = confusionmat(Y_test, svm_pred);
row_sum_svm = sum(C_svm, 2); row_sum_svm(row_sum_svm==0) = 1;
C_svm_pct = (C_svm ./ row_sum_svm) * 100;

% 自定义 Blues 渐变色图
c1 = [1, 1, 1];          % 纯白 (0%)
c2 = [0.03, 0.31, 0.61]; % 深蓝 (100%)
blues_cmap = [linspace(c1(1),c2(1),256)', linspace(c1(2),c2(2),256)', linspace(c1(3),c2(3),256)'];

% 创建画布
fig1 = figure('Name', 'ML Confusion Matrices', 'Position', [100, 100, 1200, 550], 'Color', 'w');

num_classes = length(class_order);
class_labels = cellstr(class_order);

% ------ 绘制 Random Forest 混淆矩阵 ------
ax1 = subplot(1,2,1);
imagesc(C_rf_pct);
colormap(ax1, blues_cmap);
caxis(ax1, [0 100]); % 限制颜色范围 0-100
axis(ax1, 'square'); % 让矩阵变成完美的正方形

% 设置坐标轴刻度及类别标签 (纯数字/英文，采用默认 Times New Roman)
set(ax1, 'XTick', 1:num_classes, 'XTickLabel', class_labels, ...
         'YTick', 1:num_classes, 'YTickLabel', class_labels);

% 注入魔法：混排字体标题与标签
xlabel('\fontname{SimSun}预测类别', 'Interpreter', 'tex', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('\fontname{SimSun}真实类别', 'Interpreter', 'tex', 'FontSize', 12, 'FontWeight', 'bold');
title(sprintf('\\fontname{Times New Roman}Random Forest (\\fontname{SimSun}准确率\\fontname{Times New Roman}: %.1f%%)', rf_acc*100), ...
    'Interpreter', 'tex', 'FontSize', 13);
cb1 = colorbar(ax1); cb1.FontName = 'Times New Roman';

% 在矩阵中心填入数值 (根据背景深浅切换颜色)
% ------ 在矩阵中心填入数值 (针对 10 分类的高级排版优化) ------
% 在矩阵中心填入数值 (智能显示 0)
for i = 1:num_classes
    for j = 1:num_classes
        val = C_rf_pct(i,j);
        
        % 判断文字颜色（深色背景用白字，浅色背景用黑字）
        txt_color = 'k'; if val > 50, txt_color = 'w'; end
        
        % ★ 核心排版技巧：0值简写，非0值带百分号
        if val < 0.1
            txt_str = '0%'; 
        else
            txt_str = sprintf('%.1f%%%', val);
        end
        
        text(j, i, txt_str, 'HorizontalAlignment', 'center', ...
             'Color', txt_color, 'FontName', 'Times New Roman', 'FontSize', 7.5);
    end
end

% ------ 绘制 SVM 混淆矩阵 ------
ax2 = subplot(1,2,2);
imagesc(C_svm_pct);
colormap(ax2, blues_cmap);
caxis(ax2, [0 100]);
axis(ax2, 'square');

set(ax2, 'XTick', 1:num_classes, 'XTickLabel', class_labels, ...
         'YTick', 1:num_classes, 'YTickLabel', class_labels);

xlabel('\fontname{SimSun}预测类别', 'Interpreter', 'tex', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('\fontname{SimSun}真实类别', 'Interpreter', 'tex', 'FontSize', 12, 'FontWeight', 'bold');
title(sprintf('\\fontname{Times New Roman}SVM (\\fontname{SimSun}准确率\\fontname{Times New Roman}: %.1f%%)', svm_acc*100), ...
    'Interpreter', 'tex', 'FontSize', 13);
cb2 = colorbar(ax2); cb2.FontName = 'Times New Roman';

% ------ 在矩阵中心填入数值 (针对 10 分类的高级排版优化) ------
% 在矩阵中心填入数值 (智能显示 0)
for i = 1:num_classes
    for j = 1:num_classes
        val = C_svm_pct(i,j);
        
        % 判断文字颜色
        txt_color = 'k'; if val > 50, txt_color = 'w'; end
        
        % ★ 核心排版技巧：0值简写，非0值带百分号
        if val < 0.1
            txt_str = '0%'; 
        else
            txt_str = sprintf('%.1f%%%', val);
        end
        
        text(j, i, txt_str, 'HorizontalAlignment', 'center', ...
             'Color', txt_color, 'FontName', 'Times New Roman', 'FontSize', 7.5);
    end
end

% ------ 总标题 ------
sgtitle('\fontname{SimSun}机器学习分类器分类结果', 'Interpreter', 'tex', 'FontSize', 16, 'FontWeight', 'bold');

% 保存图片
print(fig1, fullfile(output_folder, 'ML_Confusion_Matrix_3.png'), '-dpng', '-r300');

fprintf('\n★ 混淆矩阵已保存至: %s\n', fullfile(output_folder, 'ML_Confusion_Matrix_3.png'));