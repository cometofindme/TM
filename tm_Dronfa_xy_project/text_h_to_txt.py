import re
import os

# ==========================================
# 配置输入输出路径
# ==========================================
input_h_file = "/mnt/e/tm_Dronfa_xy/tm_test_data.h"
output_feature_txt = "/mnt/e/tm_Dronfa_xy/test_features.txt"
output_label_txt = "/mnt/e/tm_Dronfa_xy/test_labels.txt"

def convert_h_to_txt():
    if not os.path.exists(input_h_file):
        print(f"❌ 找不到头文件: {input_h_file}")
        return

    with open(input_h_file, 'r') as f:
        content = f.read()

    # 1. 提取特征数据 (匹配4个 32-bit hex 的数组)
    # 正则解释: 匹配 {0x..., 0x..., 0x..., 0x...} 的结构
    feature_pattern = r'\{\s*(0x[0-9A-Fa-f]+)\s*,\s*(0x[0-9A-Fa-f]+)\s*,\s*(0x[0-9A-Fa-f]+)\s*,\s*(0x[0-9A-Fa-f]+)\s*\}'
    feature_matches = re.findall(feature_pattern, content)

    # 2. 提取标签数据
    # 正则解释: 查找 test_labels 数组花括号里的内容
    label_match = re.search(r'test_labels.*?\{\s*([^}]+)\s*\}', content, re.DOTALL)
    
    if not feature_matches:
        print("未能在头文件中匹配到特征数据，请检查文件格式。")
        return

    # ==========================================
    # 写入特征数据 txt
    # ==========================================
    with open(output_feature_txt, 'w') as f:
        for match in feature_matches:
            # 剥离 '0x' 并确保每个 word 是 8 位字符，然后拼接成 128-bit 长的字符串
            # 顺序为 word0 + word1 + word2 + word3
            hex_str = "".join([m.replace('0x', '').zfill(8) for m in match])
            
            # 你的 tb_tm_top.v 中 current_patch 是 256 位的
            # 这里我们在前面补 32 个 '0' (即 128 bit 的 0)，将其扩展为 256 bit 格式
            padded_hex_str = "0" * 32 + hex_str
            
            f.write(f"{padded_hex_str}\n")
            
    print(f"✅ 成功生成特征文件: {output_feature_txt} (共 {len(feature_matches)} 条，每行 256-bit)")

    # ==========================================
    # 写入标签数据 txt
    # ==========================================
    if label_match:
        labels_raw = label_match.group(1)
        # 提取所有的数字
        labels = re.findall(r'\d+', labels_raw)
        
        with open(output_label_txt, 'w') as f:
            for label in labels:
                # 转换为 16 进制，占 1 位字符
                f.write(f"{int(label):X}\n")
        print(f"✅ 成功生成标签文件: {output_label_txt} (共 {len(labels)} 条)")
    else:
        print("⚠️ 未找到标签数据。")

if __name__ == "__main__":
    convert_h_to_txt()