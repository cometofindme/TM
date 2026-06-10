`timescale 1ns / 1ps
module tm_top (
    input  clk,
    input  rst_n,
    input  start,
    input  [255:0] current_patch,
    
    // 恢复为单路256位接口，完美适配你上传的 15000行 txt 文件
    output reg [13:0] mask_addr,      // 0-14999 (14位宽)
    input  [255:0] mask_dout,         // 256位宽
    
    output reg [3:0] pred_class,      // 10类需要4位宽
    output reg done
);
    localparam IDLE       = 3'd0;
    localparam FETCH      = 3'd1;
    localparam CALC       = 3'd2;
    localparam NEXT_CLASS = 3'd3;
    localparam ARGMAX     = 3'd4;
    localparam FINISH     = 3'd5;

    reg [2:0]  state;
    reg [3:0]  class_idx;  // ★ 10类必须是 [3:0]
    reg [10:0] clause_cnt; // 0-1499
    reg [3:0]  cmp_idx;    // ★ 10类必须是 [3:0]

    wire clause_act;
    reg signed [15:0] scores[0:9]; // ★ 10类分数数组
    reg signed [15:0] max_score;
    reg clause_is_odd;

    clause_logic engine (
        .L(current_patch),
        .M(mask_dout),
        .C(clause_act)
    );

    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= IDLE;
            done          <= 1'b0;
            pred_class    <= 4'd0;
            class_idx     <= 4'd0;
            clause_cnt    <= 11'd0;
            mask_addr     <= 14'd0;
            cmp_idx       <= 4'd0;
            max_score     <= 16'sh8000;
            clause_is_odd <= 1'b0;
            for (i = 0; i < 10; i = i + 1)
                scores[i] <= 16'sd0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 1'b0;
                    if (start) begin
                        class_idx  <= 4'd0;
                        clause_cnt <= 11'd0;
                        mask_addr  <= 14'd0;
                        for (i = 0; i < 10; i = i + 1)
                            scores[i] <= 16'sd0;
                        state <= FETCH;
                    end
                end

                FETCH: begin
                    clause_is_odd <= clause_cnt[0];
                    state <= CALC;
                end

                CALC: begin
                    // 根据读取的掩码进行单子句计算
                    if (clause_act) begin
                        if (clause_is_odd)
                            scores[class_idx] <= scores[class_idx] - 16'sd1;
                        else
                            scores[class_idx] <= scores[class_idx] + 16'sd1;
                    end
                    
                    if (clause_cnt == 11'd1499) begin
                        state <= NEXT_CLASS;
                    end else begin
                        clause_cnt <= clause_cnt + 11'd1;
                        mask_addr  <= mask_addr + 14'd1;
                        state      <= FETCH;
                    end
                end

                NEXT_CLASS: begin
                    if (class_idx == 4'd9) begin // ★ 已经算完第9类 (共10类)，去比较结果
                        pred_class <= 4'd0;
                        max_score  <= scores[0];
                        cmp_idx    <= 4'd1;
                        state      <= ARGMAX;
                    end else begin
                        class_idx  <= class_idx + 4'd1;
                        clause_cnt <= 11'd0;
                        mask_addr  <= (class_idx + 4'd1) * 14'd1500;
                        state      <= FETCH;
                    end
                end

                ARGMAX: begin
                    if (scores[cmp_idx] > max_score) begin
                        max_score  <= scores[cmp_idx];
                        pred_class <= cmp_idx;
                    end
                    if (cmp_idx == 4'd9) // ★ 比较到第9类结束
                        state <= FINISH;
                    else
                        cmp_idx <= cmp_idx + 4'd1;
                end

                FINISH: begin
                    done  <= 1'b1;
                    state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end
endmodule