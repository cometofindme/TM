import numpy as np
import scipy.io as sio
import os

# ==========================================
# 1. 路径与参数配置
# ==========================================
mask_npy_path = "/mnt/e/tm_Dronfa_xy/TM_128bit_Expert_masks.npy"
dataset_mat_path = '/mnt/e/tm_Dronfa_xy/TM_128bit_Expert_Dataset_v5.mat'
output_coe_path = "/mnt/e/tm_Dronfa_xy/tm_masks_init.coe"
output_header_path = "/mnt/e/tm_Dronfa_xy/tm_test_data.h"

num_classes = 4
num_clauses = 1500
num_features = 128
num_literals = 256
bus_width = 256  # AXI总线/BRAM位宽
words_per_clause = num_literals // bus_width # 8个word

# ==========================================
# 2. 生成 .coe 文件 (BRAM 初始化)
# ==========================================
if os.path.exists(mask_npy_path):
    masks = np.load(mask_npy_path) # (4, 1500, 256)
    hex_vectors = []
    
    # 按照 [类别][子句][分段] 的顺序打平
    for c in range(num_classes):
        for j in range(num_clauses):
            clause_bits = masks[c, j, :]
            for w in range(words_per_clause):
                # 提取32位块
                chunk = clause_bits[w*bus_width : (w+1)*bus_width]
                # 将比特流转为16进制字符串 (小端序排列，符合FPGA位拼接习惯)
                bit_str = "".join(str(int(b)) for b in chunk[::-1])
                hex_vectors.append(f"{int(bit_str, 2):08X}")
    
    with open(output_coe_path, 'w') as f:
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        f.write(",\n".join(hex_vectors) + ";\n")
    print(f"✅ 已生成掩码 COE 文件: {output_coe_path} (深度: {len(hex_vectors)})")
else:
    print("❌ 未找到掩码 .npy 文件，请先执行提取脚本。")

# ==========================================
# 3. 抽取测试样本并生成头文件
# ==========================================
try:
    mat_data = sio.loadmat(dataset_mat_path)
    all_features = mat_data['all_Features'] # (N, 128)
    all_labels = mat_data['all_Labels'].flatten() # (N, 1)
    
    samples_per_class = 5
    selected_indices = []
    
    for c in range(num_classes):
        c_idx = np.where(all_labels == c)[0]
        if len(c_idx) > 0:
            # 随机抽取 5 个样本
            pick = np.random.choice(c_idx, min(samples_per_class, len(c_idx)), replace=False)
            selected_indices.extend(pick)

    with open(output_header_path, 'w') as f:
        f.write("#ifndef TM_TEST_DATA_H\n#define TM_TEST_DATA_H\n\n")
        f.write("#include <stdint.h>\n\n")
        f.write(f"#define NUM_TEST_SAMPLES {len(selected_indices)}\n\n")
        
        # 定义测试特征 (128位输入映射为 4个 uint32_t)
        f.write("// 每个样本包含 128bit 特征 (4个 32-bit 字)\n")
        f.write("const uint32_t test_features[NUM_TEST_SAMPLES][4] = {\n")
        
        for idx in selected_indices:
            feat = all_features[idx, :]
            words = []
            for i in range(4): # 128 / 32 = 4
                chunk = feat[i*32 : (i+1)*32]
                bit_str = "".join(str(int(b)) for b in chunk[::-1])
                words.append(f"0x{int(bit_str, 2):08X}")
            f.write(f"    {{{', '.join(words)}}}, // Sample Index: {idx}\n")
        f.write("};\n\n")
        
        # 定义真实标签
        f.write("const uint8_t test_labels[NUM_TEST_SAMPLES] = {\n")
        labels_str = ", ".join(str(int(all_labels[idx])) for idx in selected_indices)
        f.write(f"    {labels_str}\n")
        f.write("};\n\n#endif\n")
        
    print(f"✅ 已生成测试头文件: {output_header_path} (抽取样本数: {len(selected_indices)})")

except Exception as e:
    print(f"❌ 读取 .mat 文件失败: {str(e)}")