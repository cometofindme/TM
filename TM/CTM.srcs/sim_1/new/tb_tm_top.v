`timescale 1ns / 1ps

module tb_tm_top();

    // ==========================================
    // 1. 信号声明与参数配置
    // ==========================================
    parameter NUM_SAMPLES = 500; // 测试样本总数
    
    reg          clk;
    reg          rst_n;
    reg          start;
    reg  [255:0] current_patch;
    
    // ★ 修改：深度15000需要14位地址线 (2^14 = 16384)
    wire [13:0]  mask_addr; 
    wire [255:0] mask_dout;
    // ★ 修改：10类需要4位的类别输出
    wire [3:0]   pred_class;
    wire         done;

    // ==========================================
    // 2. 抓取 DUT 内部的分数信号 (10 个类别)
    // ==========================================
    wire signed [15:0] score0 = uut.scores[0];
    wire signed [15:0] score1 = uut.scores[1];
    wire signed [15:0] score2 = uut.scores[2];
    wire signed [15:0] score3 = uut.scores[3];
    // ★ 新增：第 4 到 9 类的分数
    wire signed [15:0] score4 = uut.scores[4];
    wire signed [15:0] score5 = uut.scores[5];
    wire signed [15:0] score6 = uut.scores[6];
    wire signed [15:0] score7 = uut.scores[7];
    wire signed [15:0] score8 = uut.scores[8];
    wire signed [15:0] score9 = uut.scores[9];

    // ==========================================
    // 3. 实例化待测模块 (DUT)
    // ==========================================
    tm_top uut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .current_patch(current_patch),
        .mask_addr(mask_addr),
        .mask_dout(mask_dout),
        .pred_class(pred_class),
        .done(done)
    );

    // ==========================================
    // 4. 模拟 BRAM (★ 修改：深度扩大为 15000, 位宽 256)
    // ==========================================
    reg [255:0] fake_bram [0:14999];

    initial begin
        // 读取真实的模型掩码数据
        $readmemh("E:/tm_Dronfa_xy/tm_masks_init.txt", fake_bram);
    end

    // 0 周期延迟组合逻辑读取 (防越界保护)
    assign mask_dout = (mask_addr < 14'd15000) ? fake_bram[mask_addr] : 256'hx;

    // ==========================================
    // 5. 时钟生成 (100MHz)
    // ==========================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 周期 10ns
    end

    // ==========================================
    // 6. 自动化测试激励 (Stimulus)
    // ==========================================
    reg [255:0] test_features [0:NUM_SAMPLES-1];
    reg [3:0]   test_labels   [0:NUM_SAMPLES-1];
    
    integer sample_idx;
    integer correct_count;
    
    // 用于修复比特顺序的临时寄存器
    reg [127:0] raw_feat;
    reg [127:0] aligned_feat;
    
    initial begin
        // 加载外部生成的 txt 测试数据
        $readmemh("E:/tm_Dronfa_xy/test_features.txt", test_features);
        $readmemh("E:/tm_Dronfa_xy/test_labels.txt", test_labels);
        
        // 初始状态
        rst_n = 0;
        start = 0;
        current_patch = 256'd0;
        correct_count = 0;
        raw_feat = 128'd0;
        aligned_feat = 128'd0;
        
        // 等待全局复位完成
        #100;
        @(posedge clk); #1;
        rst_n = 1;
        #50;
        
        $display("\n========================================");
        $display("? 启动 10 分类自动化批量测试，共 %0d 个样本", NUM_SAMPLES);
        $display("========================================");

        // 遍历所有测试样本
        for (sample_idx = 0; sample_idx < NUM_SAMPLES; sample_idx = sample_idx + 1) begin
            
            // ==================================================
            // ★ 修复特征位序，并拼接反变量
            // ==================================================
            // 1. 拿出128位的原始数据
            raw_feat = test_features[sample_idx][127:0];
            
            // 2. 交叉互换 32-bit words，对齐 Python 里的数组顺序
            aligned_feat = { 
                raw_feat[31:0],   // 原 word3 移到最高 32 位
                raw_feat[63:32],  // 原 word2
                raw_feat[95:64],  // 原 word1
                raw_feat[127:96]  // 原 word0 移回最低 32 位 (特征0-31)
            };
            
            // 3. 动态生成 256 位输入：高 128 位是取反(反变量)，低 128 位是原变量
            current_patch = { ~aligned_feat, aligned_feat };
            // ==================================================
            
            // 发送 start 脉冲
            @(posedge clk); #1; start = 1;
            @(posedge clk); #1; start = 0;

            // 监控仿真进程，等待当前样本计算完毕
            wait(done == 1'b1);
            
            // 延迟一拍打印，确保结果稳定
            @(posedge clk);
            
            // ★ 修改：结果比对与打印 (适配 10 个类别的输出)
            if (pred_class === test_labels[sample_idx]) begin
                $display(" [Sample %02d] True: %0d | Pred: %0d | Match! \n    -> Scores: [%0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d]", 
                          sample_idx, test_labels[sample_idx], pred_class, 
                          score0, score1, score2, score3, score4, score5, score6, score7, score8, score9);
                correct_count = correct_count + 1;
            end else begin
                $display(" [Sample %02d] True: %0d | Pred: %0d | FAIL!  \n    -> Scores: [%0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d, %0d]", 
                          sample_idx, test_labels[sample_idx], pred_class, 
                          score0, score1, score2, score3, score4, score5, score6, score7, score8, score9);
            end
            
            // 留出几个时钟周期的间隔，准备送入下一个样本
            repeat(5) @(posedge clk);
        end
        
        // 测试完成，打印准确率报告
        $display("\n========================================");
        $display("? Simulation Finished Successfully!");
        $display("   Total Samples : %0d", NUM_SAMPLES);
        $display("   Correct Preds : %0d", correct_count);
        $display("   Accuracy      : %0d %%", (correct_count * 100) / NUM_SAMPLES);
        $display("========================================\n");
        
        #50;
        $stop;
    end

    // ==========================================
    // 7. [可选] 超时监控，防止仿真死循环
    // ==========================================
    initial begin
        // ★ 修改：15000深度意味着每个样本需要至少15000拍(150us)，超时时间适当延长
        #300_000_000; // 100ms 超时限制
        $display(" ? ERROR: Simulation Timeout!");
        $stop;
    end

endmodule