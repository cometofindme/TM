import numpy as np
import matplotlib.pyplot as plt
import scipy.io as sio  # 新增：用于读取 MATLAB 生成的 .mat 文件
from pyTsetlinMachine.tm import MultiClassTsetlinMachine
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix
import seaborn as sns
import pickle

# ==========================================
# 1. 加载 MATLAB 生成的 1D 锚定特征数据集
# ==========================================
# 请确保路径和你刚才 MATLAB 生成的一致
mat_file = '/mnt/e/tm_Dronfa_xy/TM_128bit_Expert_Dataset_v5.mat'
# E:\DroneRFa用于侦测低空无人机的大规模无人机射频信号数据集\tm_Dronfa_xy
data = sio.loadmat(mat_file)

# 提取特征 X 和标签 y
X = data['all_Features'].astype(np.uint8)  # TM 库通常要求 uint8 格式
y = data['all_Labels'].flatten().astype(np.uint32) # 展平为 1D 数组

print(f"✅ 数据加载成功！X 形状: {X.shape}, y 形状: {y.shape}")

# 根据 MATLAB 代码定义的 0, 1, 2, 3 映射大疆机型
drone_classes = ['T0001', 'T0010', 'T0011', 'T0100']

# ==========================================
# 2. 初始化 TM 机 (针对 1D 锚定特征量身定制)
# ==========================================
tm = MultiClassTsetlinMachine(
    number_of_clauses=1500,  # 对齐 FPGA 硬件的 1500 条子句
    number_of_state_bits=128,
    T=100,                   # 降维后排除了大量背景噪声，目标分数 T 可以设为 100
    s=1.5,                  # 特异性参数，15.0 能让模型学到非常干净的宏观特征
    boost_true_positive_feedback=1,
    # max_included_literals=64,
    append_negated=True      # ★ 核心：输入 128 位，自动追加反变量变 256 位，完美对齐 FPGA 硬件总线！
)

# ==========================================
# 3. 训练模型
# ==========================================
# 划分 80% 训练，20% 测试
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

print("\n🚀 开始训练模型...")
for i in range(50):
    tm.fit(X_train, y_train, epochs=1, incremental=True)
    result = 100 * (tm.predict(X_test) == y_test).mean()
    print(f"Epoch {i+1}: 测试准确率 = {result:.2f}%")

# ==========================================
# 4. 混淆矩阵可视化
# ==========================================
y_pred = tm.predict(X_test)
cm = confusion_matrix(y_test, y_pred)

plt.figure(figsize=(8, 6))
# 换个更酷的蓝色调，显专业
sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', xticklabels=drone_classes, yticklabels=drone_classes)
plt.xlabel('Predicted')
plt.ylabel('True')
plt.title('Drone RF 1D-Anchored Classification Confusion Matrix')
plt.savefig('/mnt/e/tm_Dronfa_xy/Confusion_Matrix_Drone.png', dpi=300, bbox_inches='tight')
print("\n📊 混淆矩阵已保存为 Confusion_Matrix_Drone.png")

# ==========================================
# 5. 保存模型 (逆向解析 FPGA 掩码的弹药库)
# ==========================================
def save_tm_model(model, class_list, filename="/mnt/e/tm_Dronfa_xy/trained_drone_1D_model.pkl"):
    """保存整个 TM 模型对象"""
    save_data = {
        "model": model,
        "labels": class_list,
        "feature_dim": 128  # 记录特征维度，防止后续接错
    }
    with open(filename, 'wb') as f:
        pickle.dump(save_data, f)
    print(f"✅ 模型已成功保存至: {filename}")

save_tm_model(tm, drone_classes)

# ==========================================
# 6. 单样本推理测试 (模拟 FPGA 的工作流)
# ==========================================
print("\n[硬件级测试模拟] 抽取测试集第 1 个样本送入模型...")
test_sample = X_test[0].reshape(1, -1) # 形状变为 (1, 128)
prediction = tm.predict(test_sample)
true_label = y_test[0]

print(f"  👉 真实类别: {drone_classes[true_label]} (标签 {true_label})")
print(f"  👉 模型预测: {drone_classes[prediction[0]]} (标签 {prediction[0]})")
if true_label == prediction[0]:
    print("  🎉 预测完全一致！")

print(tm.number_of_clauses)