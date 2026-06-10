#include "xparameters.h"
#include "xil_io.h"
#include "tm_test_data.h"

// ==========================================
// 寄存器地址定义 (★ 已同步适配 10 分类)
// ==========================================
#define TM_BASE  XPAR_TM_AXI_WRAPPER_0_BASEADDR

#define PATCH0   0x00
#define PATCH1   0x04
#define PATCH2   0x08
#define PATCH3   0x0C
#define PATCH4   0x10
#define PATCH5   0x14
#define PATCH6   0x18
#define PATCH7   0x1C
#define CTRL     0x20
#define STATUS   0x24

// ★ 新增：第 0 到第 9 类的得分寄存器
#define SCORE0   0x28
#define SCORE1   0x2C
#define SCORE2   0x30
#define SCORE3   0x34
#define SCORE4   0x38
#define SCORE5   0x3C
#define SCORE6   0x40
#define SCORE7   0x44
#define SCORE8   0x48
#define SCORE9   0x4C

// ★ 关键修改：预测结果寄存器地址顺延到了 0x50
#define PRED     0x50

// ==========================================
// 硬件访问封装
// ==========================================
void tm_write(u32 offset, u32 val) {
    Xil_Out32(TM_BASE + offset, val);
}

u32 tm_read(u32 offset) {
    return Xil_In32(TM_BASE + offset);
}

// ==========================================
// 核心推理函数
// ==========================================
int tm_infer(const uint32_t *feature_words, int *scores_out) {
    // 1. 写入低 128 位 (原变量)
    tm_write(PATCH0, feature_words[0]);
    tm_write(PATCH1, feature_words[1]);
    tm_write(PATCH2, feature_words[2]);
    tm_write(PATCH3, feature_words[3]);

    // 2. 写入高 128 位 (反变量)
    tm_write(PATCH4, ~feature_words[0]);
    tm_write(PATCH5, ~feature_words[1]);
    tm_write(PATCH6, ~feature_words[2]);
    tm_write(PATCH7, ~feature_words[3]);

    // 3. 发送 start 脉冲
    tm_write(CTRL, 0x1);
    tm_write(CTRL, 0x0);

    // 4. 等待 done 信号拉高 (静默轮询)
    // 15000条子句串行大概需要 150us，1000万次轮询绰绰有余
    u32 timeout = 10000000;
    while (!(tm_read(STATUS) & 0x1)) {
        if (--timeout == 0) {
            return -1; // 硬件超时，返回 -1
        }
    }

    // 5. ★ 读取 10 个类别的分数
    scores_out[0] = (int)(s32)tm_read(SCORE0);
    scores_out[1] = (int)(s32)tm_read(SCORE1);
    scores_out[2] = (int)(s32)tm_read(SCORE2);
    scores_out[3] = (int)(s32)tm_read(SCORE3);
    scores_out[4] = (int)(s32)tm_read(SCORE4);
    scores_out[5] = (int)(s32)tm_read(SCORE5);
    scores_out[6] = (int)(s32)tm_read(SCORE6);
    scores_out[7] = (int)(s32)tm_read(SCORE7);
    scores_out[8] = (int)(s32)tm_read(SCORE8);
    scores_out[9] = (int)(s32)tm_read(SCORE9);

    // 6. 返回预测类别
    return (int)tm_read(PRED);
}

// ==========================================
// 全局状态变量 (给 Debugger 抓取用，必须加 volatile)
// ==========================================
volatile int test_completed = 0;   // 标志位：测试是否结束
volatile int hardware_error = 0;   // 标志位：是否发生超时错误
volatile int final_correct = 0;    // 最终答对的个数
volatile int final_accuracy = 0;   // 最终准确率百分比

int main() {
    // ★ 关键修改：数组大小扩展为 10
    int scores[10];
    int pred;
    int correct_count = 0;

    // 遍历 tm_test_data.h 里的所有样本
    for (int i = 0; i < NUM_TEST_SAMPLES; i++) {

        pred = tm_infer(test_features[i], scores);

        if (pred == -1) {
            hardware_error = 1;
            break;
        }

        if (pred == test_labels[i]) {
            correct_count++;
        }
    }

    // 将局部变量赋给全局 volatile 变量，防止被编译器吃掉
    final_correct = correct_count;
    final_accuracy = (correct_count * 100) / NUM_TEST_SAMPLES;

    // 拉高完成标志位
    test_completed = 1;

    // 陷入死循环，防止程序跑飞，同时让 Debugger 稳稳停在这里
    while(1) {
        // 你的芯片现在处于静默待命状态
    }

    return 0;
}
