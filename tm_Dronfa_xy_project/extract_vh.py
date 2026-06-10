import numpy as np
import pickle


model_path = \
'/mnt/e/tm_Dronfa_xy/trained_drone_1D_model.pkl'
vh_path='/mnt/e/tm_Dronfa_xy/TM_128bit_Expert_masks.npy'

with open(model_path, 'rb') as f:
    loaded_data = pickle.load(f)
    
tm = loaded_data["model"]
class_names = loaded_data["labels"]

num_clauses=tm.number_of_clauses
num_literals = tm.number_of_features#特征数量，256
num_classes = tm.number_of_classes

print(f"--- 模型加载成功: {len(class_names)} 类别, {num_clauses} 子句, {num_literals/2} 原始特征 ---")

def export_masks_to_vh(tm,class_names):
    hardware_masks = np.zeros((num_classes, num_clauses, num_literals), dtype=np.uint8)
    
    for i in range(num_classes):
        print(f"正在提取类别 {i} ({class_names[i]}) 的子句掩码...")
        for j in range(num_clauses):
            for k in range(num_literals):
                action = tm.ta_action(i, j, k)
                hardware_masks[i, j, k] = action
    print("\n 掩码提取完成")
    return hardware_masks

hardware_masks=export_masks_to_vh(tm,class_names)
np.save(vh_path,hardware_masks)
# #提取了掩码，但是掩码内部有正负子句之分，之前证明过奇数正子句，偶数负子句
# #可以做一个硬件仿真
# #np.random.seed(42) # 固定种子，保证每次测试数据一样
# X_test = np.random.randint(0, 2, size=(1, num_literals//2)).astype(np.uint32)

# official_pred = tm.predict(X_test)[0]
    
# # Tsetlin Machine 的 transform 方法会返回所有子句的 0/1 输出状态
# # 形状本来是 (1, num_classes * num_clauses)，我们把它 reshape 一下
# official_clause_outputs = tm.transform(X_test,inverted=False)[0].reshape(num_classes, num_clauses).astype(int)

# official_scores = []
# for c in range(num_classes):
#     score = 0
#     for j in range(num_clauses):
#         # 奇数正子句，偶数负子句 (映射到 0 索引：偶数索引-1，奇数索引+1)
#         weight = 1 if j % 2 == 0 else -1
#         score += official_clause_outputs[c, j] * weight
#     official_scores.append(score)

# # ==========================================
# #  纯手动模拟硬件逻辑 (使用提取的 Mask)
# # ==========================================
# # 硬件第一步：生成 Literal 总线 (拼接原变量和反变量)
# # 注意：append_negated=True 的底层逻辑是先放原变量，再放反变量
# literals = np.concatenate([X_test[0], 1 - X_test[0]])

# hardware_scores = []
# for c in range(num_classes):
#     score = 0
#     for j in range(num_clauses):
#         # 取出这条子句的 256 位掩码
#         mask_for_clause = hardware_masks[c, j, :]
        
#         # 硬件 AND 门逻辑：
#         # 如果掩码要求包含某个变量 (mask=1)，但输入的变量却是 0 (literal=0)
#         # 那么发生“短路/违背”，整条子句的输出就是 0。否则就是 1。
#         violation = np.any((mask_for_clause == 1) & (literals == 0))
#         clause_output = 0 if violation else 1
        
#         # 计分逻辑
#         weight = 1 if j % 2 == 0 else -1
#         score += clause_output * weight
        
#     hardware_scores.append(score)

# hardware_pred = np.argmax(hardware_scores)

# # ==========================================
# # 5. 打印终极对账单
# # ==========================================
# print("\n" + "="*50)
# print("🚀 Tsetlin Machine 软硬推理对账单 🚀")
# print("="*50)
# print(f"输入向量 X (前 10 位): {X_test[0][:10]}...")

# print("\n【Python 官方模型计算结果】")
# for c in range(num_classes):
#     print(f"  类别 {c} ({class_names[c]}) 累加得分: {official_scores[c]}")
# print(f"  --> 官方预测类别: {official_pred} ({class_names[official_pred]})")

# print("\n【掩码矩阵手动推演结果】")
# for c in range(num_classes):
#     print(f"  类别 {c} ({class_names[c]}) 累加得分: {hardware_scores[c]}")
# print(f"  --> 手动预测类别: {hardware_pred} ({class_names[hardware_pred]})")

# print("\n" + "="*50)
# if official_scores == hardware_scores:
#     print("完美通过！掩码矩阵推演的各个分类得分与底层 C 引擎 100% 吻合！\n硬件逻辑闭环正式打通！")
# else:
#     print("警告：得分不一致，请检查逻辑！")