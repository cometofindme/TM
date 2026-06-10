`timescale 1ns / 1ps
module tm_axi_wrapper #(
    parameter C_S_AXI_DATA_WIDTH = 32,
    parameter C_S_AXI_ADDR_WIDTH = 7 // 7位地址线最大支持到 0x7F，足够我们放新寄存器了
)(
    input  wire        S_AXI_ACLK,
    input  wire        S_AXI_ARESETN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input  wire        S_AXI_AWVALID,
    output reg         S_AXI_AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input  wire [3:0]  S_AXI_WSTRB,
    input  wire        S_AXI_WVALID,
    output reg         S_AXI_WREADY,
    output reg  [1:0]  S_AXI_BRESP,
    output reg         S_AXI_BVALID,
    input  wire        S_AXI_BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input  wire        S_AXI_ARVALID,
    output reg         S_AXI_ARREADY,
    output reg  [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output reg  [1:0]  S_AXI_RRESP,
    output reg         S_AXI_RVALID,
    input  wire        S_AXI_RREADY,
    
    // ★ 修改：15000深度需要14位地址线
    output wire [13:0] mask_addr_out,
    input  wire [255:0] mask_dout_in   
);
    // 地址映射表 (紧凑排列)
    localparam ADDR_PATCH0 = 7'h00;
    localparam ADDR_PATCH1 = 7'h04;
    localparam ADDR_PATCH2 = 7'h08;
    localparam ADDR_PATCH3 = 7'h0C;
    localparam ADDR_PATCH4 = 7'h10;
    localparam ADDR_PATCH5 = 7'h14;
    localparam ADDR_PATCH6 = 7'h18;
    localparam ADDR_PATCH7 = 7'h1C;
    localparam ADDR_CTRL   = 7'h20;
    localparam ADDR_STATUS = 7'h24;
    
    // ★ 修改：扩展为 10 个得分寄存器
    localparam ADDR_SCORE0 = 7'h28;
    localparam ADDR_SCORE1 = 7'h2C;
    localparam ADDR_SCORE2 = 7'h30;
    localparam ADDR_SCORE3 = 7'h34;
    localparam ADDR_SCORE4 = 7'h38;
    localparam ADDR_SCORE5 = 7'h3C;
    localparam ADDR_SCORE6 = 7'h40;
    localparam ADDR_SCORE7 = 7'h44;
    localparam ADDR_SCORE8 = 7'h48;
    localparam ADDR_SCORE9 = 7'h4C;
    
    // ★ 注意：预测结果寄存器地址顺延到了 0x50
    localparam ADDR_PRED   = 7'h50;

    reg [255:0] patch_reg;
    reg         start_reg;
    wire        done_wire;
    
    // ★ 修改：预测类别改为 4 位宽
    wire [3:0]  pred_class_wire;
    
    // ★ 修改：得分锁存器扩展为 10 个
    reg  signed [15:0] score_latch[0:9];
    reg  [3:0]  pred_latch; // 对应 4 位宽
    reg [C_S_AXI_ADDR_WIDTH-1:0] aw_addr_reg;

    // =========================================================
    // 实例化底层 tm_top 核心
    // =========================================================
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

    // ★ 修改：内部连线扩展为 10 个
    wire signed [15:0] score_wire[0:9];
    assign score_wire[0] = tm_inst.scores[0];
    assign score_wire[1] = tm_inst.scores[1];
    assign score_wire[2] = tm_inst.scores[2];
    assign score_wire[3] = tm_inst.scores[3];
    assign score_wire[4] = tm_inst.scores[4];
    assign score_wire[5] = tm_inst.scores[5];
    assign score_wire[6] = tm_inst.scores[6];
    assign score_wire[7] = tm_inst.scores[7];
    assign score_wire[8] = tm_inst.scores[8];
    assign score_wire[9] = tm_inst.scores[9];

    // done 信号和输出结果的保持锁存器
    reg done_d;
    reg done_latch; 
    
    integer i;

    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            done_d <= 1'b0;
            done_latch <= 1'b0;
            pred_latch <= 4'd0;
            for (i = 0; i < 10; i = i + 1) score_latch[i] <= 16'd0;
        end else begin
            done_d <= done_wire;
            
            if (start_reg) begin
                done_latch <= 1'b0;
            end
            else if (done_wire && !done_d) begin
                done_latch     <= 1'b1; 
                // ★ 修改：锁存所有 10 个类别的分数
                score_latch[0] <= score_wire[0];
                score_latch[1] <= score_wire[1];
                score_latch[2] <= score_wire[2];
                score_latch[3] <= score_wire[3];
                score_latch[4] <= score_wire[4];
                score_latch[5] <= score_wire[5];
                score_latch[6] <= score_wire[6];
                score_latch[7] <= score_wire[7];
                score_latch[8] <= score_wire[8];
                score_latch[9] <= score_wire[9];
                pred_latch     <= pred_class_wire;
            end
        end
    end

    // =========================================================
    // AXI 写逻辑 (无需修改，保持原有高可靠性)
    // =========================================================
    reg aw_en;
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_BVALID  <= 1'b0;
            S_AXI_BRESP   <= 2'b00;
            patch_reg     <= 256'd0;
            start_reg     <= 1'b0;
            aw_addr_reg   <= 0;
            aw_en         <= 1'b1;
        end else begin
            start_reg <= 1'b0; 

            if (S_AXI_AWVALID && S_AXI_WVALID && !S_AXI_AWREADY && aw_en) begin
                S_AXI_AWREADY <= 1'b1;
                aw_en <= 1'b0;
                aw_addr_reg <= S_AXI_AWADDR;
            end else if (S_AXI_BREADY && S_AXI_BVALID) begin
                S_AXI_AWREADY <= 1'b0;
                aw_en <= 1'b1;
            end else begin
                S_AXI_AWREADY <= 1'b0;
            end

            if (S_AXI_AWVALID && S_AXI_WVALID && !S_AXI_WREADY && aw_en) begin
                S_AXI_WREADY <= 1'b1;
                case (S_AXI_AWADDR)
                    ADDR_PATCH0: patch_reg[31:0]    <= S_AXI_WDATA;
                    ADDR_PATCH1: patch_reg[63:32]   <= S_AXI_WDATA;
                    ADDR_PATCH2: patch_reg[95:64]   <= S_AXI_WDATA;
                    ADDR_PATCH3: patch_reg[127:96]  <= S_AXI_WDATA;
                    ADDR_PATCH4: patch_reg[159:128] <= S_AXI_WDATA;
                    ADDR_PATCH5: patch_reg[191:160] <= S_AXI_WDATA;
                    ADDR_PATCH6: patch_reg[223:192] <= S_AXI_WDATA;
                    ADDR_PATCH7: patch_reg[255:224] <= S_AXI_WDATA;
                    ADDR_CTRL:   start_reg          <= S_AXI_WDATA[0];
                    default: ;
                endcase
            end else begin
                S_AXI_WREADY <= 1'b0;
            end

            if (S_AXI_AWREADY && S_AXI_AWVALID && S_AXI_WREADY && S_AXI_WVALID && !S_AXI_BVALID) begin
                S_AXI_BVALID <= 1'b1;
                S_AXI_BRESP  <= 2'b00;
            end else if (S_AXI_BREADY && S_AXI_BVALID) begin
                S_AXI_BVALID <= 1'b0;
            end
        end
    end

    // =========================================================
    // ★ 修改：AXI 读逻辑，增加对新得分寄存器的寻址
    // =========================================================
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            S_AXI_ARREADY <= 1'b0;
            S_AXI_RVALID  <= 1'b0;
            S_AXI_RRESP   <= 2'b00;
            S_AXI_RDATA   <= 32'd0;
        end else begin
            if (S_AXI_ARVALID && !S_AXI_ARREADY) begin
                S_AXI_ARREADY <= 1'b1;
            end else begin
                S_AXI_ARREADY <= 1'b0;
            end

            if (S_AXI_ARREADY && S_AXI_ARVALID && !S_AXI_RVALID) begin
                S_AXI_RVALID <= 1'b1;
                S_AXI_RRESP  <= 2'b00;
                case (S_AXI_ARADDR)
                    ADDR_STATUS: S_AXI_RDATA <= {31'd0, done_latch};
                    ADDR_SCORE0: S_AXI_RDATA <= {{16{score_latch[0][15]}}, score_latch[0]};
                    ADDR_SCORE1: S_AXI_RDATA <= {{16{score_latch[1][15]}}, score_latch[1]};
                    ADDR_SCORE2: S_AXI_RDATA <= {{16{score_latch[2][15]}}, score_latch[2]};
                    ADDR_SCORE3: S_AXI_RDATA <= {{16{score_latch[3][15]}}, score_latch[3]};
                    ADDR_SCORE4: S_AXI_RDATA <= {{16{score_latch[4][15]}}, score_latch[4]};
                    ADDR_SCORE5: S_AXI_RDATA <= {{16{score_latch[5][15]}}, score_latch[5]};
                    ADDR_SCORE6: S_AXI_RDATA <= {{16{score_latch[6][15]}}, score_latch[6]};
                    ADDR_SCORE7: S_AXI_RDATA <= {{16{score_latch[7][15]}}, score_latch[7]};
                    ADDR_SCORE8: S_AXI_RDATA <= {{16{score_latch[8][15]}}, score_latch[8]};
                    ADDR_SCORE9: S_AXI_RDATA <= {{16{score_latch[9][15]}}, score_latch[9]};
                    // pred_latch 变成了 4 位，补 28 个 0
                    ADDR_PRED:   S_AXI_RDATA <= {28'd0, pred_latch};
                    default:     S_AXI_RDATA <= 32'd0;
                endcase
            end else if (S_AXI_RREADY && S_AXI_RVALID) begin
                S_AXI_RVALID <= 1'b0;
            end
        end
    end
    
endmodule