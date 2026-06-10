import numpy as np
import os

mask_npy_path = "/mnt/e/tm_Dronfa_xy/TM_128bit_Expert_masks.npy"
output_txt_path = "/mnt/e/tm_Dronfa_xy/tm_masks_init.txt"

num_classes = 4
num_clauses = 1500  # 确保这里是 1500

if os.path.exists(mask_npy_path):
    masks = np.load(mask_npy_path) # 形状: (4, 1500, 256)
    
    with open(output_txt_path, 'w') as f:
        # 按照 [类别][子句] 的顺序打平
        for c in range(num_classes):
            for j in range(num_clauses):
                clause_bits = masks[c, j, :]
                
                # 将 256 个比特转为字符串 (小端序排列，与你之前的逻辑一致)
                bit_str = "".join(str(int(b)) for b in clause_bits[::-1])
                
                # 转为 64 位的十六进制字符串 (256 bit = 64 hex chars)
                hex_str = f"{int(bit_str, 2):064X}"
                f.write(hex_str + "\n")
                
    print(f"✅ 成功生成 BRAM 权重文件: {output_txt_path}")
else:
    print("❌ 找不到 .npy 文件，请检查路径！")