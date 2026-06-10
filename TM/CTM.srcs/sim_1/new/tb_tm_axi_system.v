`timescale 1ns / 1ps

module tb_tm_axi_system();

    // AXI 总线参数
    parameter ADDR_WIDTH = 7;
    parameter DATA_WIDTH = 32;

    // AXI 信号定义
    reg                     s_axi_aclk;
    reg                     s_axi_aresetn;
    reg  [ADDR_WIDTH-1:0]   s_axi_awaddr;
    reg                     s_axi_awvalid;
    wire                    s_axi_awready;
    reg  [DATA_WIDTH-1:0]   s_axi_wdata;
    reg                     s_axi_wvalid;
    wire                    s_axi_wready;
    wire [1:0]              s_axi_bresp;
    wire                    s_axi_bvalid;
    reg                     s_axi_bready;
    reg  [ADDR_WIDTH-1:0]   s_axi_araddr;
    reg                     s_axi_arvalid;
    wire                    s_axi_arready;
    wire [DATA_WIDTH-1:0]   s_axi_rdata;
    wire [1:0]              s_axi_rresp;
    wire                    s_axi_rvalid;
    reg                     s_axi_rready;

    // BRAM 接口信号
    wire [13:0]             mask_addr;
    wire [255:0]            mask_dout;

    // 1. 实例化 AXI 包装器
    tm_axi_wrapper uut_wrapper (
        .S_AXI_ACLK(s_axi_aclk),
        .S_AXI_ARESETN(s_axi_aresetn),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WSTRB(4'hF),
        .S_AXI_WVALID(s_axi_wvalid),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_ARADDR(s_axi_araddr),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_RDATA(s_axi_rdata),
        .S_AXI_RRESP(s_axi_rresp),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_RREADY(s_axi_rready),
        .mask_addr_out(mask_addr),
        .mask_dout_in(mask_dout)
    );

    // 2. 模拟外部 BRAM 存储掩码 (15000深度)
    reg [255:0] fake_bram [0:14999];
    initial $readmemh("E:/tm_Dronfa_xy/tm_masks_init.txt", fake_bram);
    assign mask_dout = fake_bram[mask_addr];

    // 3. 时钟生成 (100MHz)
    initial begin
        s_axi_aclk = 0;
        forever #5 s_axi_aclk = ~s_axi_aclk;
    end

    // 4. AXI 写操作 Task
    task axi_write(input [ADDR_WIDTH-1:0] addr, input [DATA_WIDTH-1:0] data);
    begin
        @(posedge s_axi_aclk);
        s_axi_awaddr <= addr;
        s_axi_awvalid <= 1'b1;
        s_axi_wdata <= data;
        s_axi_wvalid <= 1'b1;
        s_axi_bready <= 1'b1;
        wait(s_axi_awready && s_axi_wready);
        @(posedge s_axi_aclk);
        s_axi_awvalid <= 1'b0;
        s_axi_wvalid <= 1'b0;
        wait(s_axi_bvalid);
        @(posedge s_axi_aclk);
        s_axi_bready <= 1'b0;
    end
    endtask

    // 5. AXI 读操作 Task
    task axi_read(input [ADDR_WIDTH-1:0] addr, output [DATA_WIDTH-1:0] data);
    begin
        @(posedge s_axi_aclk);
        s_axi_araddr <= addr;
        s_axi_arvalid <= 1'b1;
        s_axi_rready <= 1'b1;
        wait(s_axi_arready);
        @(posedge s_axi_aclk);
        s_axi_arvalid <= 1'b0;
        wait(s_axi_rvalid);
        data = s_axi_rdata;
        @(posedge s_axi_aclk);
        s_axi_rready <= 1'b0;
    end
    endtask

    // 6. 系统测试激励
    reg [31:0] r_data;
    initial begin
        s_axi_aresetn = 0;
        s_axi_awvalid = 0;
        s_axi_wvalid = 0;
        s_axi_bready = 0;
        s_axi_arvalid = 0;
        s_axi_rready = 0;
        #100;
        s_axi_aresetn = 1;
        #50;

        $display("--- 阶段1: 模拟 ARM 写入特征数据 (PATCH0-3) ---");
        axi_write(7'h00, 32'h12345678); // PATCH0
        axi_write(7'h04, 32'h87654321); // PATCH1
        axi_write(7'h08, 32'hAABBCCDD); // PATCH2
        axi_write(7'h0C, 32'h11223344); // PATCH3

        $display("--- 阶段2: 模拟 ARM 写入即时取反数据 (NEG_PATCH0-3) ---");
        axi_write(7'h10, ~32'h12345678); // NEG_PATCH4
        axi_write(7'h14, ~32'h87654321); // NEG_PATCH5
        axi_write(7'h18, ~32'hAABBCCDD); // NEG_PATCH6
        axi_write(7'h1C, ~32'h11223344); // NEG_PATCH7

        $display("--- 阶段3: 发送启动脉冲 ---");
        axi_write(7'h20, 32'h1);

        $display("--- 阶段4: 模拟 ARM 状态轮询 (Polling STATUS) ---");
        r_data = 0;
        while (r_data[0] == 0) begin
            axi_read(7'h24, r_data); // 读 STATUS 寄存器
            #100; // 轮询间隔
        end
        $display(">>> 硬件计算完成! <<<");

        $display("--- 阶段5: 读取预测结果与得分 ---");
        axi_read(7'h50, r_data); $display("Prediction: %d", r_data);
        axi_read(7'h28, r_data); $display("Score Class 0: %d", $signed(r_data[15:0]));
        axi_read(7'h2C, r_data); $display("Score Class 1: %d", $signed(r_data[15:0]));

        $display("--- 仿真结束 ---");
        #100;
        $stop;
    end

endmodule