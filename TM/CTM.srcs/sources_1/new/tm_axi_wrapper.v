`timescale 1ns / 1ps
module tm_axi_wrapper #(
    parameter C_S_AXI_DATA_WIDTH = 32,
    parameter C_S_AXI_ADDR_WIDTH = 7
)(
    // AXI-Lite接口
    input  wire        S_AXI_ACLK,
    input  wire        S_AXI_ARESETN,
    // 写地址
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input  wire        S_AXI_AWVALID,
    output reg         S_AXI_AWREADY,
    // 写数据
    input  wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input  wire [3:0]  S_AXI_WSTRB,
    input  wire        S_AXI_WVALID,
    output reg         S_AXI_WREADY,
    // 写响应
    output reg  [1:0]  S_AXI_BRESP,
    output reg         S_AXI_BVALID,
    input  wire        S_AXI_BREADY,
    // 读地址
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input  wire        S_AXI_ARVALID,
    output reg         S_AXI_ARREADY,
    // 读数据
    output reg  [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output reg  [1:0]  S_AXI_RRESP,
    output reg         S_AXI_RVALID,
    input  wire        S_AXI_RREADY,

    // ★ 关键补全：必须在这里声明对外接口，否则 Block Design 或 Testbench 连不上
    output wire [13:0]  mask_addr_out,
    input  wire [255:0] mask_dout_in
);

    // 寄存器地址映射 (适配 10 分类)
    localparam ADDR_PATCH0   = 7'h00;
    localparam ADDR_CTRL     = 7'h20;
    localparam ADDR_STATUS   = 7'h24;
    localparam ADDR_SCORE0   = 7'h28; // SCORE0 ~ SCORE9 顺延
    localparam ADDR_PRED     = 7'h50; // PRED 移到 0x50

    reg [255:0] patch_reg;
    reg         start_reg;
    wire        done_wire;
    wire [3:0]  pred_class_wire;
    
    // 锁存器扩展为 10 个
    reg  signed [15:0] score_latch[0:9];
    reg  [3:0]  pred_latch;
    reg [C_S_AXI_ADDR_WIDTH-1:0] aw_addr_reg;

    // 实例化 tm_top
    tm_top tm_inst (
        .clk          (S_AXI_ACLK),
        .rst_n        (S_AXI_ARESETN),
        .start        (start_reg),
        .current_patch(patch_reg),
        .mask_addr    (mask_addr_out), 
        .mask_dout    (mask_dout_in),  
        .pred_class   (pred_class_wire),
        .done         (done_wire)
    );

    // done上升沿锁存结果
    reg done_d;
    integer i;
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            done_d <= 1'b0;
            for (i=0; i<10; i=i+1) score_latch[i] <= 16'd0;
            pred_latch <= 4'd0;
        end else begin
            done_d <= done_wire;
            if (done_wire && !done_d) begin
                // 自动锁存 tm_top 内部的 10 个分数
                score_latch[0] <= tm_inst.scores[0];
                score_latch[1] <= tm_inst.scores[1];
                score_latch[2] <= tm_inst.scores[2];
                score_latch[3] <= tm_inst.scores[3];
                score_latch[4] <= tm_inst.scores[4];
                score_latch[5] <= tm_inst.scores[5];
                score_latch[6] <= tm_inst.scores[6];
                score_latch[7] <= tm_inst.scores[7];
                score_latch[8] <= tm_inst.scores[8];
                score_latch[9] <= tm_inst.scores[9];
                pred_latch     <= pred_class_wire;
            end
        end
    end

    // AXI写控制逻辑
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_BVALID  <= 1'b0;
            patch_reg     <= 256'd0;
            start_reg     <= 1'b0;
        end else begin
            start_reg <= 1'b0; 
            if (S_AXI_AWVALID && !S_AXI_AWREADY) begin
                S_AXI_AWREADY <= 1'b1;
                aw_addr_reg   <= S_AXI_AWADDR;
            end else S_AXI_AWREADY <= 1'b0;

            if (S_AXI_WVALID && !S_AXI_WREADY) begin
                S_AXI_WREADY <= 1'b1;
                case (aw_addr_reg)
                    7'h00: patch_reg[31:0]    <= S_AXI_WDATA;
                    7'h04: patch_reg[63:32]   <= S_AXI_WDATA;
                    7'h08: patch_reg[95:64]   <= S_AXI_WDATA;
                    7'h0C: patch_reg[127:96]  <= S_AXI_WDATA;
                    7'h10: patch_reg[159:128] <= S_AXI_WDATA;
                    7'h14: patch_reg[191:160] <= S_AXI_WDATA;
                    7'h18: patch_reg[223:192] <= S_AXI_WDATA;
                    7'h1C: patch_reg[255:224] <= S_AXI_WDATA;
                    ADDR_CTRL: start_reg      <= S_AXI_WDATA[0];
                endcase
            end else S_AXI_WREADY <= 1'b0;

            if (S_AXI_WREADY && S_AXI_WVALID) S_AXI_BVALID <= 1'b1;
            else if (S_AXI_BREADY && S_AXI_BVALID) S_AXI_BVALID <= 1'b0;
        end
    end

    // AXI读控制逻辑 (适配 10 分类)
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_ARREADY <= 1'b0;
            S_AXI_RVALID  <= 1'b0;
        end else begin
            if (S_AXI_ARVALID && !S_AXI_ARREADY) begin
                S_AXI_ARREADY <= 1'b1;
                case (S_AXI_ARADDR)
                    ADDR_STATUS: S_AXI_RDATA <= {31'd0, done_wire};
                    7'h28: S_AXI_RDATA <= {{16{score_latch[0][15]}}, score_latch[0]};
                    7'h2C: S_AXI_RDATA <= {{16{score_latch[1][15]}}, score_latch[1]};
                    7'h30: S_AXI_RDATA <= {{16{score_latch[2][15]}}, score_latch[2]};
                    7'h34: S_AXI_RDATA <= {{16{score_latch[3][15]}}, score_latch[3]};
                    7'h38: S_AXI_RDATA <= {{16{score_latch[4][15]}}, score_latch[4]};
                    7'h3C: S_AXI_RDATA <= {{16{score_latch[5][15]}}, score_latch[5]};
                    7'h40: S_AXI_RDATA <= {{16{score_latch[6][15]}}, score_latch[6]};
                    7'h44: S_AXI_RDATA <= {{16{score_latch[7][15]}}, score_latch[7]};
                    7'h48: S_AXI_RDATA <= {{16{score_latch[8][15]}}, score_latch[8]};
                    7'h4C: S_AXI_RDATA <= {{16{score_latch[9][15]}}, score_latch[9]};
                    ADDR_PRED:   S_AXI_RDATA <= {28'd0, pred_latch};
                    default:     S_AXI_RDATA <= 32'd0;
                endcase
                S_AXI_RVALID <= 1'b1;
            end else begin
                S_AXI_ARREADY <= 1'b0;
                if (S_AXI_RREADY && S_AXI_RVALID) S_AXI_RVALID <= 1'b0;
            end
        end
    end
endmodule