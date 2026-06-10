// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr  2 12:11:08 2026
// Host        : wjl running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tm_axi_wrapper_0_0_sim_netlist.v
// Design      : design_1_tm_axi_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tm_axi_wrapper_0_0,tm_axi_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "tm_axi_wrapper,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [6:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [6:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [30:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[30] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[29] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[28] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[27] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[26] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[25] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[24] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[23] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[22] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[21] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[20] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[19] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[18] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[17] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[16] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[15] = \^S_AXI_RDATA [30];
  assign S_AXI_RDATA[14:0] = \^S_AXI_RDATA [14:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA({\^S_AXI_RDATA [30],\^S_AXI_RDATA [14:0]}),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    S_AXI_WDATA,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [15:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input S_AXI_ACLK;
  input [6:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input [0:0]S_AXI_WDATA;
  input S_AXI_ARVALID;
  input [6:0]S_AXI_ARADDR;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARREADY0;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWREADY0;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_BVALID_i_1_n_0;
  wire [15:0]S_AXI_RDATA;
  wire \S_AXI_RDATA[0]_i_4_n_0 ;
  wire \S_AXI_RDATA[10]_i_2_n_0 ;
  wire \S_AXI_RDATA[11]_i_2_n_0 ;
  wire \S_AXI_RDATA[12]_i_2_n_0 ;
  wire \S_AXI_RDATA[13]_i_2_n_0 ;
  wire \S_AXI_RDATA[14]_i_2_n_0 ;
  wire \S_AXI_RDATA[1]_i_2_n_0 ;
  wire \S_AXI_RDATA[2]_i_2_n_0 ;
  wire \S_AXI_RDATA[2]_i_3_n_0 ;
  wire \S_AXI_RDATA[2]_i_4_n_0 ;
  wire \S_AXI_RDATA[2]_i_5_n_0 ;
  wire \S_AXI_RDATA[2]_i_6_n_0 ;
  wire \S_AXI_RDATA[31]_i_2_n_0 ;
  wire \S_AXI_RDATA[31]_i_3_n_0 ;
  wire \S_AXI_RDATA[31]_i_4_n_0 ;
  wire \S_AXI_RDATA[31]_i_5_n_0 ;
  wire \S_AXI_RDATA[31]_i_6_n_0 ;
  wire \S_AXI_RDATA[3]_i_2_n_0 ;
  wire \S_AXI_RDATA[4]_i_2_n_0 ;
  wire \S_AXI_RDATA[5]_i_2_n_0 ;
  wire \S_AXI_RDATA[6]_i_2_n_0 ;
  wire \S_AXI_RDATA[7]_i_2_n_0 ;
  wire \S_AXI_RDATA[8]_i_2_n_0 ;
  wire \S_AXI_RDATA[9]_i_2_n_0 ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_RVALID_i_1_n_0;
  wire [0:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY0;
  wire S_AXI_WVALID;
  wire [5:0]aw_addr_reg;
  wire aw_addr_reg_8;
  wire \aw_addr_reg_reg_n_0_[6] ;
  wire clause_is_odd;
  wire clause_is_odd_i_1_n_0;
  wire done_d;
  wire done_i_1_n_0;
  wire done_wire;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire [2:0]pred_class_wire;
  wire [2:0]pred_latch;
  wire pred_latch0;
  wire [15:0]\score_latch_reg[0] ;
  wire [15:0]\score_latch_reg[1] ;
  wire [15:0]\score_latch_reg[2] ;
  wire [15:0]\score_latch_reg[3] ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[0]_0 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[1]_2 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[2]_4 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[3]_6 ;
  wire start_reg_i_1_n_0;
  wire start_reg_i_2_n_0;
  wire start_reg_reg_n_0;
  wire tm_inst_n_67;
  wire tm_inst_n_70;
  wire tm_inst_n_71;
  wire tm_inst_n_72;

  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_ARREADY_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(S_AXI_ARREADY0));
  FDRE S_AXI_ARREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_ARREADY0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_AWREADY_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .O(S_AXI_AWREADY0));
  FDRE S_AXI_AWREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_AWREADY0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    S_AXI_BVALID_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_BREADY),
        .I3(S_AXI_BVALID),
        .O(S_AXI_BVALID_i_1_n_0));
  FDRE S_AXI_BVALID_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[0]_i_4 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARADDR[3]),
        .I2(S_AXI_ARADDR[0]),
        .I3(S_AXI_ARADDR[1]),
        .O(\S_AXI_RDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(\score_latch_reg[3] [10]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[10]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [10]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[10]_i_2 
       (.I0(\score_latch_reg[0] [10]),
        .I1(\score_latch_reg[1] [10]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(\score_latch_reg[3] [11]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[11]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [11]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[11]_i_2 
       (.I0(\score_latch_reg[0] [11]),
        .I1(\score_latch_reg[1] [11]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(\score_latch_reg[3] [12]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[12]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [12]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[12]_i_2 
       (.I0(\score_latch_reg[0] [12]),
        .I1(\score_latch_reg[1] [12]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(\score_latch_reg[3] [13]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[13]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [13]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[13]_i_2 
       (.I0(\score_latch_reg[0] [13]),
        .I1(\score_latch_reg[1] [13]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(\score_latch_reg[3] [14]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[14]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [14]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[14]_i_2 
       (.I0(\score_latch_reg[0] [14]),
        .I1(\score_latch_reg[1] [14]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB080)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(pred_latch[1]),
        .I1(\S_AXI_RDATA[2]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[2]_i_3_n_0 ),
        .I3(\score_latch_reg[3] [1]),
        .I4(\S_AXI_RDATA[1]_i_2_n_0 ),
        .I5(\S_AXI_RDATA[2]_i_5_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h00000000E6C4A280)) 
    \S_AXI_RDATA[1]_i_2 
       (.I0(\S_AXI_RDATA[2]_i_6_n_0 ),
        .I1(\S_AXI_RDATA[2]_i_2_n_0 ),
        .I2(\score_latch_reg[2] [1]),
        .I3(\score_latch_reg[0] [1]),
        .I4(\score_latch_reg[1] [1]),
        .I5(\S_AXI_RDATA[31]_i_6_n_0 ),
        .O(\S_AXI_RDATA[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB080)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(pred_latch[2]),
        .I1(\S_AXI_RDATA[2]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[2]_i_3_n_0 ),
        .I3(\score_latch_reg[3] [2]),
        .I4(\S_AXI_RDATA[2]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[2]_i_5_n_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFEEF)) 
    \S_AXI_RDATA[2]_i_2 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARADDR[0]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .O(\S_AXI_RDATA[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \S_AXI_RDATA[2]_i_3 
       (.I0(S_AXI_ARADDR[4]),
        .I1(S_AXI_ARADDR[2]),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E6C4A280)) 
    \S_AXI_RDATA[2]_i_4 
       (.I0(\S_AXI_RDATA[2]_i_6_n_0 ),
        .I1(\S_AXI_RDATA[2]_i_2_n_0 ),
        .I2(\score_latch_reg[2] [2]),
        .I3(\score_latch_reg[0] [2]),
        .I4(\score_latch_reg[1] [2]),
        .I5(\S_AXI_RDATA[31]_i_6_n_0 ),
        .O(\S_AXI_RDATA[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \S_AXI_RDATA[2]_i_5 
       (.I0(S_AXI_ARADDR[6]),
        .I1(S_AXI_ARADDR[5]),
        .O(\S_AXI_RDATA[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \S_AXI_RDATA[2]_i_6 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARADDR[1]),
        .I2(S_AXI_ARADDR[2]),
        .O(\S_AXI_RDATA[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[31]_i_1 
       (.I0(\score_latch_reg[3] [15]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I3(\score_latch_reg[2] [15]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \S_AXI_RDATA[31]_i_2 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARADDR[0]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[2]_i_5_n_0 ),
        .O(\S_AXI_RDATA[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[31]_i_3 
       (.I0(\score_latch_reg[0] [15]),
        .I1(\score_latch_reg[1] [15]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \S_AXI_RDATA[31]_i_4 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARADDR[2]),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \S_AXI_RDATA[31]_i_5 
       (.I0(S_AXI_ARADDR[5]),
        .I1(S_AXI_ARADDR[6]),
        .I2(\S_AXI_RDATA[31]_i_6_n_0 ),
        .O(\S_AXI_RDATA[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFA9)) 
    \S_AXI_RDATA[31]_i_6 
       (.I0(S_AXI_ARADDR[4]),
        .I1(S_AXI_ARADDR[2]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[0]),
        .I4(S_AXI_ARADDR[1]),
        .O(\S_AXI_RDATA[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(\score_latch_reg[3] [3]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[3]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [3]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[3]_i_2 
       (.I0(\score_latch_reg[0] [3]),
        .I1(\score_latch_reg[1] [3]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(\score_latch_reg[3] [4]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[4]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [4]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[4]_i_2 
       (.I0(\score_latch_reg[0] [4]),
        .I1(\score_latch_reg[1] [4]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(\score_latch_reg[3] [5]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[5]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [5]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[5]_i_2 
       (.I0(\score_latch_reg[0] [5]),
        .I1(\score_latch_reg[1] [5]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(\score_latch_reg[3] [6]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[6]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [6]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[6]_i_2 
       (.I0(\score_latch_reg[0] [6]),
        .I1(\score_latch_reg[1] [6]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(\score_latch_reg[3] [7]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[7]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [7]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[7]_i_2 
       (.I0(\score_latch_reg[0] [7]),
        .I1(\score_latch_reg[1] [7]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(\score_latch_reg[3] [8]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[8]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [8]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[8]_i_2 
       (.I0(\score_latch_reg[0] [8]),
        .I1(\score_latch_reg[1] [8]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(\score_latch_reg[3] [9]),
        .I1(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[9]_i_2_n_0 ),
        .I3(\score_latch_reg[2] [9]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h000000000000C0A0)) 
    \S_AXI_RDATA[9]_i_2 
       (.I0(\score_latch_reg[0] [9]),
        .I1(\score_latch_reg[1] [9]),
        .I2(S_AXI_ARADDR[3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[1]),
        .I5(S_AXI_ARADDR[0]),
        .O(\S_AXI_RDATA[9]_i_2_n_0 ));
  FDRE \S_AXI_RDATA_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[0]),
        .Q(S_AXI_RDATA[0]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[10]),
        .Q(S_AXI_RDATA[10]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[11]),
        .Q(S_AXI_RDATA[11]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[12]),
        .Q(S_AXI_RDATA[12]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[13]),
        .Q(S_AXI_RDATA[13]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[14]),
        .Q(S_AXI_RDATA[14]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[1]),
        .Q(S_AXI_RDATA[1]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[2]),
        .Q(S_AXI_RDATA[2]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[31]),
        .Q(S_AXI_RDATA[15]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[3]),
        .Q(S_AXI_RDATA[3]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[4]),
        .Q(S_AXI_RDATA[4]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[5]),
        .Q(S_AXI_RDATA[5]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[6]),
        .Q(S_AXI_RDATA[6]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[7]),
        .Q(S_AXI_RDATA[7]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[8]),
        .Q(S_AXI_RDATA[8]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARREADY0),
        .D(p_1_in[9]),
        .Q(S_AXI_RDATA[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h44F4)) 
    S_AXI_RVALID_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(S_AXI_RVALID_i_1_n_0));
  FDRE S_AXI_RVALID_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
        .O(S_AXI_WREADY0));
  FDRE S_AXI_WREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WREADY0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    \aw_addr_reg[6]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .O(aw_addr_reg_8));
  FDRE \aw_addr_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[0]),
        .Q(aw_addr_reg[0]),
        .R(1'b0));
  FDRE \aw_addr_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[1]),
        .Q(aw_addr_reg[1]),
        .R(1'b0));
  FDRE \aw_addr_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[2]),
        .Q(aw_addr_reg[2]),
        .R(1'b0));
  FDRE \aw_addr_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[3]),
        .Q(aw_addr_reg[3]),
        .R(1'b0));
  FDRE \aw_addr_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[4]),
        .Q(aw_addr_reg[4]),
        .R(1'b0));
  FDRE \aw_addr_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[5]),
        .Q(aw_addr_reg[5]),
        .R(1'b0));
  FDRE \aw_addr_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(aw_addr_reg_8),
        .D(S_AXI_AWADDR[6]),
        .Q(\aw_addr_reg_reg_n_0_[6] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    clause_is_odd_i_1
       (.I0(tm_inst_n_72),
        .I1(tm_inst_n_67),
        .I2(tm_inst_n_70),
        .I3(tm_inst_n_71),
        .I4(clause_is_odd),
        .O(clause_is_odd_i_1_n_0));
  FDRE done_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(done_wire),
        .Q(done_d),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE08)) 
    done_i_1
       (.I0(tm_inst_n_67),
        .I1(tm_inst_n_70),
        .I2(tm_inst_n_71),
        .I3(done_wire),
        .O(done_i_1_n_0));
  FDRE \pred_latch_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(pred_class_wire[0]),
        .Q(pred_latch[0]),
        .R(1'b0));
  FDRE \pred_latch_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(pred_class_wire[1]),
        .Q(pred_latch[1]),
        .R(1'b0));
  FDRE \pred_latch_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(pred_class_wire[2]),
        .Q(pred_latch[2]),
        .R(1'b0));
  FDRE \score_latch_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [0]),
        .Q(\score_latch_reg[0] [0]),
        .R(1'b0));
  FDRE \score_latch_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [10]),
        .Q(\score_latch_reg[0] [10]),
        .R(1'b0));
  FDRE \score_latch_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [11]),
        .Q(\score_latch_reg[0] [11]),
        .R(1'b0));
  FDRE \score_latch_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [12]),
        .Q(\score_latch_reg[0] [12]),
        .R(1'b0));
  FDRE \score_latch_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [13]),
        .Q(\score_latch_reg[0] [13]),
        .R(1'b0));
  FDRE \score_latch_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [14]),
        .Q(\score_latch_reg[0] [14]),
        .R(1'b0));
  FDRE \score_latch_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [15]),
        .Q(\score_latch_reg[0] [15]),
        .R(1'b0));
  FDRE \score_latch_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [1]),
        .Q(\score_latch_reg[0] [1]),
        .R(1'b0));
  FDRE \score_latch_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [2]),
        .Q(\score_latch_reg[0] [2]),
        .R(1'b0));
  FDRE \score_latch_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [3]),
        .Q(\score_latch_reg[0] [3]),
        .R(1'b0));
  FDRE \score_latch_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [4]),
        .Q(\score_latch_reg[0] [4]),
        .R(1'b0));
  FDRE \score_latch_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [5]),
        .Q(\score_latch_reg[0] [5]),
        .R(1'b0));
  FDRE \score_latch_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [6]),
        .Q(\score_latch_reg[0] [6]),
        .R(1'b0));
  FDRE \score_latch_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [7]),
        .Q(\score_latch_reg[0] [7]),
        .R(1'b0));
  FDRE \score_latch_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [8]),
        .Q(\score_latch_reg[0] [8]),
        .R(1'b0));
  FDRE \score_latch_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[0]_0 [9]),
        .Q(\score_latch_reg[0] [9]),
        .R(1'b0));
  FDRE \score_latch_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [0]),
        .Q(\score_latch_reg[1] [0]),
        .R(1'b0));
  FDRE \score_latch_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [10]),
        .Q(\score_latch_reg[1] [10]),
        .R(1'b0));
  FDRE \score_latch_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [11]),
        .Q(\score_latch_reg[1] [11]),
        .R(1'b0));
  FDRE \score_latch_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [12]),
        .Q(\score_latch_reg[1] [12]),
        .R(1'b0));
  FDRE \score_latch_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [13]),
        .Q(\score_latch_reg[1] [13]),
        .R(1'b0));
  FDRE \score_latch_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [14]),
        .Q(\score_latch_reg[1] [14]),
        .R(1'b0));
  FDRE \score_latch_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [15]),
        .Q(\score_latch_reg[1] [15]),
        .R(1'b0));
  FDRE \score_latch_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [1]),
        .Q(\score_latch_reg[1] [1]),
        .R(1'b0));
  FDRE \score_latch_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [2]),
        .Q(\score_latch_reg[1] [2]),
        .R(1'b0));
  FDRE \score_latch_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [3]),
        .Q(\score_latch_reg[1] [3]),
        .R(1'b0));
  FDRE \score_latch_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [4]),
        .Q(\score_latch_reg[1] [4]),
        .R(1'b0));
  FDRE \score_latch_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [5]),
        .Q(\score_latch_reg[1] [5]),
        .R(1'b0));
  FDRE \score_latch_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [6]),
        .Q(\score_latch_reg[1] [6]),
        .R(1'b0));
  FDRE \score_latch_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [7]),
        .Q(\score_latch_reg[1] [7]),
        .R(1'b0));
  FDRE \score_latch_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [8]),
        .Q(\score_latch_reg[1] [8]),
        .R(1'b0));
  FDRE \score_latch_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[1]_2 [9]),
        .Q(\score_latch_reg[1] [9]),
        .R(1'b0));
  FDRE \score_latch_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [0]),
        .Q(\score_latch_reg[2] [0]),
        .R(1'b0));
  FDRE \score_latch_reg[2][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [10]),
        .Q(\score_latch_reg[2] [10]),
        .R(1'b0));
  FDRE \score_latch_reg[2][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [11]),
        .Q(\score_latch_reg[2] [11]),
        .R(1'b0));
  FDRE \score_latch_reg[2][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [12]),
        .Q(\score_latch_reg[2] [12]),
        .R(1'b0));
  FDRE \score_latch_reg[2][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [13]),
        .Q(\score_latch_reg[2] [13]),
        .R(1'b0));
  FDRE \score_latch_reg[2][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [14]),
        .Q(\score_latch_reg[2] [14]),
        .R(1'b0));
  FDRE \score_latch_reg[2][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [15]),
        .Q(\score_latch_reg[2] [15]),
        .R(1'b0));
  FDRE \score_latch_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [1]),
        .Q(\score_latch_reg[2] [1]),
        .R(1'b0));
  FDRE \score_latch_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [2]),
        .Q(\score_latch_reg[2] [2]),
        .R(1'b0));
  FDRE \score_latch_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [3]),
        .Q(\score_latch_reg[2] [3]),
        .R(1'b0));
  FDRE \score_latch_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [4]),
        .Q(\score_latch_reg[2] [4]),
        .R(1'b0));
  FDRE \score_latch_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [5]),
        .Q(\score_latch_reg[2] [5]),
        .R(1'b0));
  FDRE \score_latch_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [6]),
        .Q(\score_latch_reg[2] [6]),
        .R(1'b0));
  FDRE \score_latch_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [7]),
        .Q(\score_latch_reg[2] [7]),
        .R(1'b0));
  FDRE \score_latch_reg[2][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [8]),
        .Q(\score_latch_reg[2] [8]),
        .R(1'b0));
  FDRE \score_latch_reg[2][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[2]_4 [9]),
        .Q(\score_latch_reg[2] [9]),
        .R(1'b0));
  FDRE \score_latch_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [0]),
        .Q(\score_latch_reg[3] [0]),
        .R(1'b0));
  FDRE \score_latch_reg[3][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [10]),
        .Q(\score_latch_reg[3] [10]),
        .R(1'b0));
  FDRE \score_latch_reg[3][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [11]),
        .Q(\score_latch_reg[3] [11]),
        .R(1'b0));
  FDRE \score_latch_reg[3][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [12]),
        .Q(\score_latch_reg[3] [12]),
        .R(1'b0));
  FDRE \score_latch_reg[3][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [13]),
        .Q(\score_latch_reg[3] [13]),
        .R(1'b0));
  FDRE \score_latch_reg[3][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [14]),
        .Q(\score_latch_reg[3] [14]),
        .R(1'b0));
  FDRE \score_latch_reg[3][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [15]),
        .Q(\score_latch_reg[3] [15]),
        .R(1'b0));
  FDRE \score_latch_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [1]),
        .Q(\score_latch_reg[3] [1]),
        .R(1'b0));
  FDRE \score_latch_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [2]),
        .Q(\score_latch_reg[3] [2]),
        .R(1'b0));
  FDRE \score_latch_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [3]),
        .Q(\score_latch_reg[3] [3]),
        .R(1'b0));
  FDRE \score_latch_reg[3][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [4]),
        .Q(\score_latch_reg[3] [4]),
        .R(1'b0));
  FDRE \score_latch_reg[3][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [5]),
        .Q(\score_latch_reg[3] [5]),
        .R(1'b0));
  FDRE \score_latch_reg[3][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [6]),
        .Q(\score_latch_reg[3] [6]),
        .R(1'b0));
  FDRE \score_latch_reg[3][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [7]),
        .Q(\score_latch_reg[3] [7]),
        .R(1'b0));
  FDRE \score_latch_reg[3][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [8]),
        .Q(\score_latch_reg[3] [8]),
        .R(1'b0));
  FDRE \score_latch_reg[3][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch0),
        .D(\scores[3]_6 [9]),
        .Q(\score_latch_reg[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    start_reg_i_1
       (.I0(S_AXI_WREADY),
        .I1(\aw_addr_reg_reg_n_0_[6] ),
        .I2(start_reg_i_2_n_0),
        .I3(aw_addr_reg[3]),
        .I4(S_AXI_WVALID),
        .I5(S_AXI_ARESETN),
        .O(start_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    start_reg_i_2
       (.I0(aw_addr_reg[2]),
        .I1(S_AXI_WDATA),
        .I2(aw_addr_reg[1]),
        .I3(aw_addr_reg[0]),
        .I4(aw_addr_reg[5]),
        .I5(aw_addr_reg[4]),
        .O(start_reg_i_2_n_0));
  FDRE start_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start_reg_i_1_n_0),
        .Q(start_reg_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top tm_inst
       (.D(p_1_in[0]),
        .E(pred_latch0),
        .Q(pred_latch[0]),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\S_AXI_RDATA[0]_i_2_0 (\score_latch_reg[1] [0]),
        .\S_AXI_RDATA_reg[0] (\S_AXI_RDATA[2]_i_2_n_0 ),
        .\S_AXI_RDATA_reg[0]_0 (\S_AXI_RDATA[2]_i_3_n_0 ),
        .\S_AXI_RDATA_reg[0]_1 (\score_latch_reg[3] [0]),
        .\S_AXI_RDATA_reg[0]_2 (\S_AXI_RDATA[2]_i_5_n_0 ),
        .\S_AXI_RDATA_reg[0]_3 (\score_latch_reg[2] [0]),
        .\S_AXI_RDATA_reg[0]_4 (\S_AXI_RDATA[31]_i_4_n_0 ),
        .\S_AXI_RDATA_reg[0]_5 (\score_latch_reg[0] [0]),
        .\S_AXI_RDATA_reg[0]_6 (\S_AXI_RDATA[0]_i_4_n_0 ),
        .\S_AXI_RDATA_reg[0]_7 (\S_AXI_RDATA[31]_i_6_n_0 ),
        .\class_idx_reg[2]_0 (start_reg_reg_n_0),
        .\clause_cnt_reg[0]_0 (tm_inst_n_72),
        .clause_is_odd(clause_is_odd),
        .clause_is_odd_reg_0(clause_is_odd_i_1_n_0),
        .done_d(done_d),
        .done_reg_0(done_i_1_n_0),
        .done_wire(done_wire),
        .out(\scores[2]_4 ),
        .p_0_in(p_0_in),
        .\pred_class_reg[2]_0 (pred_class_wire),
        .\scores[0] (\scores[0]_0 ),
        .\scores[1] (\scores[1]_2 ),
        .\scores[3] (\scores[3]_6 ),
        .\state_reg[0]_0 (tm_inst_n_70),
        .\state_reg[1]_0 (tm_inst_n_71),
        .\state_reg[2]_0 (tm_inst_n_67));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top
   (out,
    \scores[1] ,
    \scores[0] ,
    \scores[3] ,
    clause_is_odd,
    p_0_in,
    done_wire,
    \state_reg[2]_0 ,
    E,
    D,
    \state_reg[0]_0 ,
    \state_reg[1]_0 ,
    \clause_cnt_reg[0]_0 ,
    \pred_class_reg[2]_0 ,
    clause_is_odd_reg_0,
    S_AXI_ACLK,
    done_reg_0,
    S_AXI_ARESETN,
    done_d,
    Q,
    \S_AXI_RDATA_reg[0] ,
    \S_AXI_RDATA_reg[0]_0 ,
    \S_AXI_RDATA_reg[0]_1 ,
    \S_AXI_RDATA_reg[0]_2 ,
    \S_AXI_RDATA_reg[0]_3 ,
    \S_AXI_RDATA_reg[0]_4 ,
    \S_AXI_RDATA_reg[0]_5 ,
    \S_AXI_RDATA_reg[0]_6 ,
    \S_AXI_RDATA_reg[0]_7 ,
    \S_AXI_RDATA[0]_i_2_0 ,
    S_AXI_ARADDR,
    \class_idx_reg[2]_0 );
  output [15:0]out;
  output [15:0]\scores[1] ;
  output [15:0]\scores[0] ;
  output [15:0]\scores[3] ;
  output clause_is_odd;
  output p_0_in;
  output done_wire;
  output \state_reg[2]_0 ;
  output [0:0]E;
  output [0:0]D;
  output \state_reg[0]_0 ;
  output \state_reg[1]_0 ;
  output [0:0]\clause_cnt_reg[0]_0 ;
  output [2:0]\pred_class_reg[2]_0 ;
  input clause_is_odd_reg_0;
  input S_AXI_ACLK;
  input done_reg_0;
  input S_AXI_ARESETN;
  input done_d;
  input [0:0]Q;
  input \S_AXI_RDATA_reg[0] ;
  input \S_AXI_RDATA_reg[0]_0 ;
  input [0:0]\S_AXI_RDATA_reg[0]_1 ;
  input \S_AXI_RDATA_reg[0]_2 ;
  input [0:0]\S_AXI_RDATA_reg[0]_3 ;
  input \S_AXI_RDATA_reg[0]_4 ;
  input [0:0]\S_AXI_RDATA_reg[0]_5 ;
  input \S_AXI_RDATA_reg[0]_6 ;
  input \S_AXI_RDATA_reg[0]_7 ;
  input [0:0]\S_AXI_RDATA[0]_i_2_0 ;
  input [3:0]S_AXI_ARADDR;
  input \class_idx_reg[2]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]\S_AXI_RDATA[0]_i_2_0 ;
  wire \S_AXI_RDATA[0]_i_2_n_0 ;
  wire \S_AXI_RDATA[0]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[0] ;
  wire \S_AXI_RDATA_reg[0]_0 ;
  wire [0:0]\S_AXI_RDATA_reg[0]_1 ;
  wire \S_AXI_RDATA_reg[0]_2 ;
  wire [0:0]\S_AXI_RDATA_reg[0]_3 ;
  wire \S_AXI_RDATA_reg[0]_4 ;
  wire [0:0]\S_AXI_RDATA_reg[0]_5 ;
  wire \S_AXI_RDATA_reg[0]_6 ;
  wire \S_AXI_RDATA_reg[0]_7 ;
  wire \class_idx[0]_i_1_n_0 ;
  wire \class_idx[0]_i_2_n_0 ;
  wire \class_idx[1]_i_1_n_0 ;
  wire \class_idx[1]_i_2_n_0 ;
  wire \class_idx[2]_i_1_n_0 ;
  wire \class_idx[2]_i_2_n_0 ;
  wire \class_idx_reg[2]_0 ;
  wire \clause_cnt[10]_i_1_n_0 ;
  wire \clause_cnt[10]_i_3_n_0 ;
  wire \clause_cnt[10]_i_4_n_0 ;
  wire \clause_cnt[10]_i_5_n_0 ;
  wire \clause_cnt[10]_i_6_n_0 ;
  wire \clause_cnt[5]_i_2_n_0 ;
  wire \clause_cnt[9]_i_2_n_0 ;
  wire \clause_cnt[9]_i_3_n_0 ;
  wire [0:0]\clause_cnt_reg[0]_0 ;
  wire \clause_cnt_reg_n_0_[10] ;
  wire \clause_cnt_reg_n_0_[1] ;
  wire \clause_cnt_reg_n_0_[2] ;
  wire \clause_cnt_reg_n_0_[3] ;
  wire \clause_cnt_reg_n_0_[4] ;
  wire \clause_cnt_reg_n_0_[5] ;
  wire \clause_cnt_reg_n_0_[6] ;
  wire \clause_cnt_reg_n_0_[7] ;
  wire \clause_cnt_reg_n_0_[8] ;
  wire \clause_cnt_reg_n_0_[9] ;
  wire clause_is_odd;
  wire clause_is_odd_reg_0;
  wire \cmp_idx[0]_i_1_n_0 ;
  wire \cmp_idx[1]_i_1_n_0 ;
  wire \cmp_idx[1]_i_2_n_0 ;
  wire \cmp_idx[2]_i_1_n_0 ;
  wire \cmp_idx[2]_i_2_n_0 ;
  wire done_d;
  wire done_reg_0;
  wire done_wire;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [15:0]max_score;
  wire max_score0;
  (* RTL_KEEP = "true" *) wire [15:0]out;
  wire p_0_in;
  wire [15:1]p_0_in1_in;
  wire [10:0]p_0_in_0;
  wire p_0_out_carry__0_i_1_n_0;
  wire p_0_out_carry__0_i_2_n_0;
  wire p_0_out_carry__0_i_3_n_0;
  wire p_0_out_carry__0_i_4_n_0;
  wire p_0_out_carry__0_n_0;
  wire p_0_out_carry__0_n_1;
  wire p_0_out_carry__0_n_2;
  wire p_0_out_carry__0_n_3;
  wire p_0_out_carry__1_i_1_n_0;
  wire p_0_out_carry__1_i_2_n_0;
  wire p_0_out_carry__1_i_3_n_0;
  wire p_0_out_carry__1_i_4_n_0;
  wire p_0_out_carry__1_n_0;
  wire p_0_out_carry__1_n_1;
  wire p_0_out_carry__1_n_2;
  wire p_0_out_carry__1_n_3;
  wire p_0_out_carry__2_i_1_n_0;
  wire p_0_out_carry__2_i_2_n_0;
  wire p_0_out_carry__2_i_3_n_0;
  wire p_0_out_carry__2_n_2;
  wire p_0_out_carry__2_n_3;
  wire p_0_out_carry_i_1_n_0;
  wire p_0_out_carry_i_2_n_0;
  wire p_0_out_carry_i_3_n_0;
  wire p_0_out_carry_i_4_n_0;
  wire p_0_out_carry_i_5_n_0;
  wire p_0_out_carry_n_0;
  wire p_0_out_carry_n_1;
  wire p_0_out_carry_n_2;
  wire p_0_out_carry_n_3;
  wire \p_0_out_inferred__0/i__carry__0_n_0 ;
  wire \p_0_out_inferred__0/i__carry__0_n_1 ;
  wire \p_0_out_inferred__0/i__carry__0_n_2 ;
  wire \p_0_out_inferred__0/i__carry__0_n_3 ;
  wire \p_0_out_inferred__0/i__carry__1_n_0 ;
  wire \p_0_out_inferred__0/i__carry__1_n_1 ;
  wire \p_0_out_inferred__0/i__carry__1_n_2 ;
  wire \p_0_out_inferred__0/i__carry__1_n_3 ;
  wire \p_0_out_inferred__0/i__carry__2_n_2 ;
  wire \p_0_out_inferred__0/i__carry__2_n_3 ;
  wire \p_0_out_inferred__0/i__carry_n_0 ;
  wire \p_0_out_inferred__0/i__carry_n_1 ;
  wire \p_0_out_inferred__0/i__carry_n_2 ;
  wire \p_0_out_inferred__0/i__carry_n_3 ;
  wire [15:0]p_1_in;
  wire [15:1]p_2_in;
  wire pred_class0_carry__0_i_1_n_0;
  wire pred_class0_carry__0_i_2_n_0;
  wire pred_class0_carry__0_i_3_n_0;
  wire pred_class0_carry__0_i_4_n_0;
  wire pred_class0_carry__0_i_5_n_0;
  wire pred_class0_carry__0_i_6_n_0;
  wire pred_class0_carry__0_i_7_n_0;
  wire pred_class0_carry__0_i_8_n_0;
  wire pred_class0_carry__0_n_0;
  wire pred_class0_carry__0_n_1;
  wire pred_class0_carry__0_n_2;
  wire pred_class0_carry__0_n_3;
  wire pred_class0_carry_i_1_n_0;
  wire pred_class0_carry_i_2_n_0;
  wire pred_class0_carry_i_3_n_0;
  wire pred_class0_carry_i_4_n_0;
  wire pred_class0_carry_i_5_n_0;
  wire pred_class0_carry_i_6_n_0;
  wire pred_class0_carry_i_7_n_0;
  wire pred_class0_carry_i_8_n_0;
  wire pred_class0_carry_n_0;
  wire pred_class0_carry_n_1;
  wire pred_class0_carry_n_2;
  wire pred_class0_carry_n_3;
  wire \pred_class[0]_i_1_n_0 ;
  wire \pred_class[1]_i_1_n_0 ;
  wire \pred_class[2]_i_1_n_0 ;
  wire \pred_class[2]_i_2_n_0 ;
  wire \pred_class[2]_i_3_n_0 ;
  wire [2:0]\pred_class_reg[2]_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[0] ;
  wire \scores[0][0]_i_1_n_0 ;
  wire \scores[0][10]_i_1_n_0 ;
  wire \scores[0][11]_i_1_n_0 ;
  wire \scores[0][12]_i_1_n_0 ;
  wire \scores[0][13]_i_1_n_0 ;
  wire \scores[0][14]_i_1_n_0 ;
  wire \scores[0][15]_i_1_n_0 ;
  wire \scores[0][15]_i_2_n_0 ;
  wire \scores[0][15]_i_3_n_0 ;
  wire \scores[0][15]_i_4_n_0 ;
  wire \scores[0][15]_i_5_n_0 ;
  wire \scores[0][1]_i_1_n_0 ;
  wire \scores[0][2]_i_1_n_0 ;
  wire \scores[0][3]_i_1_n_0 ;
  wire \scores[0][4]_i_1_n_0 ;
  wire \scores[0][5]_i_1_n_0 ;
  wire \scores[0][6]_i_1_n_0 ;
  wire \scores[0][7]_i_1_n_0 ;
  wire \scores[0][8]_i_1_n_0 ;
  wire \scores[0][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[1] ;
  wire \scores[1][0]_i_1_n_0 ;
  wire \scores[1][10]_i_1_n_0 ;
  wire \scores[1][11]_i_1_n_0 ;
  wire \scores[1][12]_i_1_n_0 ;
  wire \scores[1][13]_i_1_n_0 ;
  wire \scores[1][14]_i_1_n_0 ;
  wire \scores[1][15]_i_1_n_0 ;
  wire \scores[1][15]_i_2_n_0 ;
  wire \scores[1][15]_i_3_n_0 ;
  wire \scores[1][15]_i_4_n_0 ;
  wire \scores[1][15]_i_5_n_0 ;
  wire \scores[1][1]_i_1_n_0 ;
  wire \scores[1][2]_i_1_n_0 ;
  wire \scores[1][3]_i_1_n_0 ;
  wire \scores[1][4]_i_1_n_0 ;
  wire \scores[1][5]_i_1_n_0 ;
  wire \scores[1][6]_i_1_n_0 ;
  wire \scores[1][7]_i_1_n_0 ;
  wire \scores[1][8]_i_1_n_0 ;
  wire \scores[1][9]_i_1_n_0 ;
  wire \scores[2][0]_i_1_n_0 ;
  wire \scores[2][0]_i_2_n_0 ;
  wire \scores[2][10]_i_1_n_0 ;
  wire \scores[2][11]_i_1_n_0 ;
  wire \scores[2][12]_i_1_n_0 ;
  wire \scores[2][13]_i_1_n_0 ;
  wire \scores[2][14]_i_1_n_0 ;
  wire \scores[2][15]_i_1_n_0 ;
  wire \scores[2][15]_i_2_n_0 ;
  wire \scores[2][15]_i_3_n_0 ;
  wire \scores[2][15]_i_4_n_0 ;
  wire \scores[2][15]_i_5_n_0 ;
  wire \scores[2][1]_i_1_n_0 ;
  wire \scores[2][2]_i_1_n_0 ;
  wire \scores[2][3]_i_1_n_0 ;
  wire \scores[2][4]_i_1_n_0 ;
  wire \scores[2][5]_i_1_n_0 ;
  wire \scores[2][6]_i_1_n_0 ;
  wire \scores[2][7]_i_1_n_0 ;
  wire \scores[2][8]_i_1_n_0 ;
  wire \scores[2][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[3] ;
  wire \scores[3][0]_i_1_n_0 ;
  wire \scores[3][10]_i_1_n_0 ;
  wire \scores[3][11]_i_1_n_0 ;
  wire \scores[3][12]_i_1_n_0 ;
  wire \scores[3][13]_i_1_n_0 ;
  wire \scores[3][14]_i_1_n_0 ;
  wire \scores[3][15]_i_1_n_0 ;
  wire \scores[3][15]_i_2_n_0 ;
  wire \scores[3][15]_i_3_n_0 ;
  wire \scores[3][15]_i_4_n_0 ;
  wire \scores[3][1]_i_1_n_0 ;
  wire \scores[3][2]_i_1_n_0 ;
  wire \scores[3][3]_i_1_n_0 ;
  wire \scores[3][4]_i_1_n_0 ;
  wire \scores[3][5]_i_1_n_0 ;
  wire \scores[3][6]_i_1_n_0 ;
  wire \scores[3][7]_i_1_n_0 ;
  wire \scores[3][8]_i_1_n_0 ;
  wire \scores[3][9]_i_1_n_0 ;
  wire [15:0]scores__115;
  wire [2:0]sel0;
  wire [2:0]sel0__0;
  wire state0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2]_0 ;
  wire [3:2]NLW_p_0_out_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_p_0_out_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_p_0_out_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_p_0_out_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_pred_class0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pred_class0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h00000000FFFFB080)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(Q),
        .I1(\S_AXI_RDATA_reg[0] ),
        .I2(\S_AXI_RDATA_reg[0]_0 ),
        .I3(\S_AXI_RDATA_reg[0]_1 ),
        .I4(\S_AXI_RDATA[0]_i_2_n_0 ),
        .I5(\S_AXI_RDATA_reg[0]_2 ),
        .O(D));
  LUT6 #(
    .INIT(64'h00000000FFEAEAEA)) 
    \S_AXI_RDATA[0]_i_2 
       (.I0(\S_AXI_RDATA[0]_i_3_n_0 ),
        .I1(\S_AXI_RDATA_reg[0]_3 ),
        .I2(\S_AXI_RDATA_reg[0]_4 ),
        .I3(\S_AXI_RDATA_reg[0]_5 ),
        .I4(\S_AXI_RDATA_reg[0]_6 ),
        .I5(\S_AXI_RDATA_reg[0]_7 ),
        .O(\S_AXI_RDATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0203000002000000)) 
    \S_AXI_RDATA[0]_i_3 
       (.I0(\S_AXI_RDATA[0]_i_2_0 ),
        .I1(S_AXI_ARADDR[1]),
        .I2(S_AXI_ARADDR[0]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(done_wire),
        .O(\S_AXI_RDATA[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFFFF50C000000)) 
    \class_idx[0]_i_1 
       (.I0(\class_idx_reg[2]_0 ),
        .I1(\class_idx[0]_i_2_n_0 ),
        .I2(\state_reg[2]_0 ),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(sel0__0[0]),
        .O(\class_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \class_idx[0]_i_2 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .O(\class_idx[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \class_idx[1]_i_1 
       (.I0(sel0__0[0]),
        .I1(\state_reg[1]_0 ),
        .I2(\class_idx[1]_i_2_n_0 ),
        .I3(sel0__0[1]),
        .O(\class_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FC0000000000AA)) 
    \class_idx[1]_i_2 
       (.I0(\class_idx_reg[2]_0 ),
        .I1(sel0__0[2]),
        .I2(\class_idx[2]_i_2_n_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\state_reg[0]_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\class_idx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0CCCCCCCCCC44)) 
    \class_idx[2]_i_1 
       (.I0(\class_idx_reg[2]_0 ),
        .I1(sel0__0[2]),
        .I2(\class_idx[2]_i_2_n_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\state_reg[0]_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\class_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \class_idx[2]_i_2 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .O(\class_idx[2]_i_2_n_0 ));
  FDCE \class_idx_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\class_idx[0]_i_1_n_0 ),
        .Q(sel0__0[0]));
  FDCE \class_idx_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\class_idx[1]_i_1_n_0 ),
        .Q(sel0__0[1]));
  FDCE \class_idx_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\class_idx[2]_i_1_n_0 ),
        .Q(sel0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \clause_cnt[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\clause_cnt_reg[0]_0 ),
        .O(p_0_in_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFF0000)) 
    \clause_cnt[10]_i_1 
       (.I0(\clause_cnt[10]_i_3_n_0 ),
        .I1(\clause_cnt[10]_i_4_n_0 ),
        .I2(\clause_cnt_reg_n_0_[5] ),
        .I3(\clause_cnt_reg_n_0_[10] ),
        .I4(\clause_cnt[10]_i_5_n_0 ),
        .I5(\class_idx[1]_i_2_n_0 ),
        .O(\clause_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h07000800)) 
    \clause_cnt[10]_i_2 
       (.I0(\clause_cnt[10]_i_6_n_0 ),
        .I1(\clause_cnt_reg_n_0_[9] ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\clause_cnt_reg_n_0_[10] ),
        .O(p_0_in_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \clause_cnt[10]_i_3 
       (.I0(\clause_cnt_reg_n_0_[8] ),
        .I1(\clause_cnt_reg_n_0_[7] ),
        .I2(\clause_cnt_reg_n_0_[3] ),
        .I3(\clause_cnt_reg_n_0_[6] ),
        .I4(\clause_cnt_reg_n_0_[4] ),
        .I5(\clause_cnt_reg_n_0_[9] ),
        .O(\clause_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \clause_cnt[10]_i_4 
       (.I0(\clause_cnt_reg_n_0_[1] ),
        .I1(\clause_cnt_reg[0]_0 ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .O(\clause_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \clause_cnt[10]_i_5 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[2]_0 ),
        .O(\clause_cnt[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \clause_cnt[10]_i_6 
       (.I0(\clause_cnt_reg_n_0_[8] ),
        .I1(\clause_cnt_reg_n_0_[7] ),
        .I2(\clause_cnt_reg_n_0_[6] ),
        .I3(\clause_cnt[9]_i_2_n_0 ),
        .O(\clause_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \clause_cnt[1]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\clause_cnt_reg[0]_0 ),
        .I3(\clause_cnt_reg_n_0_[1] ),
        .O(p_0_in_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007800)) 
    \clause_cnt[2]_i_1 
       (.I0(\clause_cnt_reg_n_0_[1] ),
        .I1(\clause_cnt_reg[0]_0 ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg[0]_0 ),
        .O(p_0_in_0[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \clause_cnt[3]_i_1 
       (.I0(\clause_cnt_reg_n_0_[2] ),
        .I1(\clause_cnt_reg_n_0_[1] ),
        .I2(\clause_cnt_reg[0]_0 ),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\clause_cnt_reg_n_0_[3] ),
        .O(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \clause_cnt[4]_i_1 
       (.I0(\clause_cnt_reg[0]_0 ),
        .I1(\clause_cnt_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .I3(\clause_cnt_reg_n_0_[3] ),
        .I4(\clause_cnt[9]_i_3_n_0 ),
        .I5(\clause_cnt_reg_n_0_[4] ),
        .O(p_0_in_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \clause_cnt[5]_i_1 
       (.I0(\clause_cnt[5]_i_2_n_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\clause_cnt_reg_n_0_[5] ),
        .O(p_0_in_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \clause_cnt[5]_i_2 
       (.I0(\clause_cnt_reg_n_0_[4] ),
        .I1(\clause_cnt_reg_n_0_[3] ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .I3(\clause_cnt_reg_n_0_[1] ),
        .I4(\clause_cnt_reg[0]_0 ),
        .O(\clause_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \clause_cnt[6]_i_1 
       (.I0(\clause_cnt[9]_i_2_n_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\clause_cnt_reg_n_0_[6] ),
        .O(p_0_in_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0D000200)) 
    \clause_cnt[7]_i_1 
       (.I0(\clause_cnt_reg_n_0_[6] ),
        .I1(\clause_cnt[9]_i_2_n_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\clause_cnt_reg_n_0_[7] ),
        .O(p_0_in_0[7]));
  LUT6 #(
    .INIT(64'h00BF000000400000)) 
    \clause_cnt[8]_i_1 
       (.I0(\clause_cnt[9]_i_2_n_0 ),
        .I1(\clause_cnt_reg_n_0_[6] ),
        .I2(\clause_cnt_reg_n_0_[7] ),
        .I3(\state_reg[0]_0 ),
        .I4(\state_reg[1]_0 ),
        .I5(\clause_cnt_reg_n_0_[8] ),
        .O(p_0_in_0[8]));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \clause_cnt[9]_i_1 
       (.I0(\clause_cnt_reg_n_0_[8] ),
        .I1(\clause_cnt_reg_n_0_[7] ),
        .I2(\clause_cnt_reg_n_0_[6] ),
        .I3(\clause_cnt[9]_i_2_n_0 ),
        .I4(\clause_cnt[9]_i_3_n_0 ),
        .I5(\clause_cnt_reg_n_0_[9] ),
        .O(p_0_in_0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clause_cnt[9]_i_2 
       (.I0(\clause_cnt_reg[0]_0 ),
        .I1(\clause_cnt_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .I3(\clause_cnt_reg_n_0_[3] ),
        .I4(\clause_cnt_reg_n_0_[4] ),
        .I5(\clause_cnt_reg_n_0_[5] ),
        .O(\clause_cnt[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clause_cnt[9]_i_3 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_0 ),
        .O(\clause_cnt[9]_i_3_n_0 ));
  FDCE \clause_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[0]),
        .Q(\clause_cnt_reg[0]_0 ));
  FDCE \clause_cnt_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[10]),
        .Q(\clause_cnt_reg_n_0_[10] ));
  FDCE \clause_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[1]),
        .Q(\clause_cnt_reg_n_0_[1] ));
  FDCE \clause_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[2]),
        .Q(\clause_cnt_reg_n_0_[2] ));
  FDCE \clause_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[3]),
        .Q(\clause_cnt_reg_n_0_[3] ));
  FDCE \clause_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[4]),
        .Q(\clause_cnt_reg_n_0_[4] ));
  FDCE \clause_cnt_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[5]),
        .Q(\clause_cnt_reg_n_0_[5] ));
  FDCE \clause_cnt_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[6]),
        .Q(\clause_cnt_reg_n_0_[6] ));
  FDCE \clause_cnt_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[7]),
        .Q(\clause_cnt_reg_n_0_[7] ));
  FDCE \clause_cnt_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[8]),
        .Q(\clause_cnt_reg_n_0_[8] ));
  FDCE \clause_cnt_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\clause_cnt[10]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[9]),
        .Q(\clause_cnt_reg_n_0_[9] ));
  FDCE clause_is_odd_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(clause_is_odd_reg_0),
        .Q(clause_is_odd));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \cmp_idx[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\cmp_idx[1]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\cmp_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \cmp_idx[1]_i_1 
       (.I0(sel0[0]),
        .I1(\state_reg[2]_0 ),
        .I2(\cmp_idx[1]_i_2_n_0 ),
        .I3(sel0[1]),
        .O(\cmp_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000050500F0C0000)) 
    \cmp_idx[1]_i_2 
       (.I0(\class_idx[0]_i_2_n_0 ),
        .I1(\cmp_idx[2]_i_2_n_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(sel0[2]),
        .I4(\state_reg[2]_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\cmp_idx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AF00FC00FF00)) 
    \cmp_idx[2]_i_1 
       (.I0(\class_idx[0]_i_2_n_0 ),
        .I1(\cmp_idx[2]_i_2_n_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(sel0[2]),
        .I4(\state_reg[2]_0 ),
        .I5(\state_reg[1]_0 ),
        .O(\cmp_idx[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cmp_idx[2]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\cmp_idx[2]_i_2_n_0 ));
  FDCE \cmp_idx_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\cmp_idx[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE \cmp_idx_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\cmp_idx[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE \cmp_idx_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\cmp_idx[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDCE done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(done_reg_0),
        .Q(done_wire));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_1
       (.I0(out[8]),
        .I1(\scores[3] [8]),
        .I2(\scores[0] [8]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [8]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_2
       (.I0(out[7]),
        .I1(\scores[3] [7]),
        .I2(\scores[0] [7]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [7]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_3
       (.I0(out[6]),
        .I1(\scores[3] [6]),
        .I2(\scores[0] [6]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [6]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_4
       (.I0(out[5]),
        .I1(\scores[3] [5]),
        .I2(\scores[0] [5]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [5]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__0_i_5
       (.I0(\scores[1] [8]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [8]),
        .I4(\scores[3] [8]),
        .I5(out[8]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__0_i_6
       (.I0(\scores[1] [7]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [7]),
        .I4(\scores[3] [7]),
        .I5(out[7]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__0_i_7
       (.I0(\scores[1] [6]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [6]),
        .I4(\scores[3] [6]),
        .I5(out[6]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__0_i_8
       (.I0(\scores[1] [5]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [5]),
        .I4(\scores[3] [5]),
        .I5(out[5]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__1_i_1
       (.I0(out[12]),
        .I1(\scores[3] [12]),
        .I2(\scores[0] [12]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [12]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__1_i_2
       (.I0(out[11]),
        .I1(\scores[3] [11]),
        .I2(\scores[0] [11]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [11]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__1_i_3
       (.I0(out[10]),
        .I1(\scores[3] [10]),
        .I2(\scores[0] [10]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [10]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__1_i_4
       (.I0(out[9]),
        .I1(\scores[3] [9]),
        .I2(\scores[0] [9]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [9]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__1_i_5
       (.I0(\scores[1] [12]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [12]),
        .I4(\scores[3] [12]),
        .I5(out[12]),
        .O(i__carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__1_i_6
       (.I0(\scores[1] [11]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [11]),
        .I4(\scores[3] [11]),
        .I5(out[11]),
        .O(i__carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__1_i_7
       (.I0(\scores[1] [10]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [10]),
        .I4(\scores[3] [10]),
        .I5(out[10]),
        .O(i__carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__1_i_8
       (.I0(\scores[1] [9]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [9]),
        .I4(\scores[3] [9]),
        .I5(out[9]),
        .O(i__carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__2_i_1
       (.I0(out[14]),
        .I1(\scores[3] [14]),
        .I2(\scores[0] [14]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [14]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__2_i_2
       (.I0(out[13]),
        .I1(\scores[3] [13]),
        .I2(\scores[0] [13]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [13]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__2_i_3
       (.I0(\scores[1] [15]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [15]),
        .I4(\scores[3] [15]),
        .I5(out[15]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__2_i_4
       (.I0(\scores[1] [14]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [14]),
        .I4(\scores[3] [14]),
        .I5(out[14]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry__2_i_5
       (.I0(\scores[1] [13]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [13]),
        .I4(\scores[3] [13]),
        .I5(out[13]),
        .O(i__carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_1
       (.I0(out[4]),
        .I1(\scores[3] [4]),
        .I2(\scores[0] [4]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [4]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_2
       (.I0(out[3]),
        .I1(\scores[3] [3]),
        .I2(\scores[0] [3]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_3
       (.I0(out[2]),
        .I1(\scores[3] [2]),
        .I2(\scores[0] [2]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_4
       (.I0(out[1]),
        .I1(\scores[3] [1]),
        .I2(\scores[0] [1]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry_i_5
       (.I0(\scores[1] [4]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [4]),
        .I4(\scores[3] [4]),
        .I5(out[4]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry_i_6
       (.I0(\scores[1] [3]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [3]),
        .I4(\scores[3] [3]),
        .I5(out[3]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry_i_7
       (.I0(\scores[1] [2]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [2]),
        .I4(\scores[3] [2]),
        .I5(out[2]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0407C4C73437F4F7)) 
    i__carry_i_8
       (.I0(\scores[1] [1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(\scores[0] [1]),
        .I4(\scores[3] [1]),
        .I5(out[1]),
        .O(i__carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[0]_i_1 
       (.I0(\scores[0] [0]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[0]_i_2 
       (.I0(out[0]),
        .I1(\scores[3] [0]),
        .I2(\scores[0] [0]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [0]),
        .O(scores__115[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[10]_i_1 
       (.I0(\scores[0] [10]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[10]_i_2 
       (.I0(out[10]),
        .I1(\scores[3] [10]),
        .I2(\scores[0] [10]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [10]),
        .O(scores__115[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[11]_i_1 
       (.I0(\scores[0] [11]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[11]_i_2 
       (.I0(out[11]),
        .I1(\scores[3] [11]),
        .I2(\scores[0] [11]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [11]),
        .O(scores__115[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[12]_i_1 
       (.I0(\scores[0] [12]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[12]_i_2 
       (.I0(out[12]),
        .I1(\scores[3] [12]),
        .I2(\scores[0] [12]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [12]),
        .O(scores__115[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[13]_i_1 
       (.I0(\scores[0] [13]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[13]_i_2 
       (.I0(out[13]),
        .I1(\scores[3] [13]),
        .I2(\scores[0] [13]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [13]),
        .O(scores__115[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[14]_i_1 
       (.I0(\scores[0] [14]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[14]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[14]_i_2 
       (.I0(out[14]),
        .I1(\scores[3] [14]),
        .I2(\scores[0] [14]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [14]),
        .O(scores__115[14]));
  LUT6 #(
    .INIT(64'h0008000800083008)) 
    \max_score[15]_i_1 
       (.I0(pred_class0_carry__0_n_0),
        .I1(\state_reg[2]_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\class_idx[2]_i_2_n_0 ),
        .I5(sel0__0[2]),
        .O(max_score0));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[15]_i_2 
       (.I0(\scores[0] [15]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[15]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[15]_i_3 
       (.I0(out[15]),
        .I1(\scores[3] [15]),
        .I2(\scores[0] [15]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [15]),
        .O(scores__115[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[1]_i_1 
       (.I0(\scores[0] [1]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[1]_i_2 
       (.I0(out[1]),
        .I1(\scores[3] [1]),
        .I2(\scores[0] [1]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [1]),
        .O(scores__115[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[2]_i_1 
       (.I0(\scores[0] [2]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[2]_i_2 
       (.I0(out[2]),
        .I1(\scores[3] [2]),
        .I2(\scores[0] [2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [2]),
        .O(scores__115[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[3]_i_1 
       (.I0(\scores[0] [3]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[3]_i_2 
       (.I0(out[3]),
        .I1(\scores[3] [3]),
        .I2(\scores[0] [3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [3]),
        .O(scores__115[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[4]_i_1 
       (.I0(\scores[0] [4]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[4]_i_2 
       (.I0(out[4]),
        .I1(\scores[3] [4]),
        .I2(\scores[0] [4]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [4]),
        .O(scores__115[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[5]_i_1 
       (.I0(\scores[0] [5]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[5]_i_2 
       (.I0(out[5]),
        .I1(\scores[3] [5]),
        .I2(\scores[0] [5]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [5]),
        .O(scores__115[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[6]_i_1 
       (.I0(\scores[0] [6]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[6]_i_2 
       (.I0(out[6]),
        .I1(\scores[3] [6]),
        .I2(\scores[0] [6]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [6]),
        .O(scores__115[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[7]_i_1 
       (.I0(\scores[0] [7]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[7]_i_2 
       (.I0(out[7]),
        .I1(\scores[3] [7]),
        .I2(\scores[0] [7]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [7]),
        .O(scores__115[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[8]_i_1 
       (.I0(\scores[0] [8]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[8]_i_2 
       (.I0(out[8]),
        .I1(\scores[3] [8]),
        .I2(\scores[0] [8]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [8]),
        .O(scores__115[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[9]_i_1 
       (.I0(\scores[0] [9]),
        .I1(\state_reg[0]_0 ),
        .I2(scores__115[9]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \max_score[9]_i_2 
       (.I0(out[9]),
        .I1(\scores[3] [9]),
        .I2(\scores[0] [9]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\scores[1] [9]),
        .O(scores__115[9]));
  FDCE \max_score_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[0]),
        .Q(max_score[0]));
  FDCE \max_score_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[10]),
        .Q(max_score[10]));
  FDCE \max_score_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[11]),
        .Q(max_score[11]));
  FDCE \max_score_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[12]),
        .Q(max_score[12]));
  FDCE \max_score_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[13]),
        .Q(max_score[13]));
  FDCE \max_score_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[14]),
        .Q(max_score[14]));
  FDPE \max_score_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .D(p_1_in[15]),
        .PRE(p_0_in),
        .Q(max_score[15]));
  FDCE \max_score_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[1]),
        .Q(max_score[1]));
  FDCE \max_score_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[2]),
        .Q(max_score[2]));
  FDCE \max_score_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[3]),
        .Q(max_score[3]));
  FDCE \max_score_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[4]),
        .Q(max_score[4]));
  FDCE \max_score_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[5]),
        .Q(max_score[5]));
  FDCE \max_score_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[6]),
        .Q(max_score[6]));
  FDCE \max_score_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[7]),
        .Q(max_score[7]));
  FDCE \max_score_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[8]),
        .Q(max_score[8]));
  FDCE \max_score_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(max_score0),
        .CLR(p_0_in),
        .D(p_1_in[9]),
        .Q(max_score[9]));
  CARRY4 p_0_out_carry
       (.CI(1'b0),
        .CO({p_0_out_carry_n_0,p_0_out_carry_n_1,p_0_out_carry_n_2,p_0_out_carry_n_3}),
        .CYINIT(p_0_out_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[4:1]),
        .S({p_0_out_carry_i_2_n_0,p_0_out_carry_i_3_n_0,p_0_out_carry_i_4_n_0,p_0_out_carry_i_5_n_0}));
  CARRY4 p_0_out_carry__0
       (.CI(p_0_out_carry_n_0),
        .CO({p_0_out_carry__0_n_0,p_0_out_carry__0_n_1,p_0_out_carry__0_n_2,p_0_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[8:5]),
        .S({p_0_out_carry__0_i_1_n_0,p_0_out_carry__0_i_2_n_0,p_0_out_carry__0_i_3_n_0,p_0_out_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__0_i_1
       (.I0(out[8]),
        .I1(\scores[3] [8]),
        .I2(\scores[0] [8]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [8]),
        .O(p_0_out_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__0_i_2
       (.I0(out[7]),
        .I1(\scores[3] [7]),
        .I2(\scores[0] [7]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [7]),
        .O(p_0_out_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__0_i_3
       (.I0(out[6]),
        .I1(\scores[3] [6]),
        .I2(\scores[0] [6]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [6]),
        .O(p_0_out_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__0_i_4
       (.I0(out[5]),
        .I1(\scores[3] [5]),
        .I2(\scores[0] [5]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [5]),
        .O(p_0_out_carry__0_i_4_n_0));
  CARRY4 p_0_out_carry__1
       (.CI(p_0_out_carry__0_n_0),
        .CO({p_0_out_carry__1_n_0,p_0_out_carry__1_n_1,p_0_out_carry__1_n_2,p_0_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[12:9]),
        .S({p_0_out_carry__1_i_1_n_0,p_0_out_carry__1_i_2_n_0,p_0_out_carry__1_i_3_n_0,p_0_out_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__1_i_1
       (.I0(out[12]),
        .I1(\scores[3] [12]),
        .I2(\scores[0] [12]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [12]),
        .O(p_0_out_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__1_i_2
       (.I0(out[11]),
        .I1(\scores[3] [11]),
        .I2(\scores[0] [11]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [11]),
        .O(p_0_out_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__1_i_3
       (.I0(out[10]),
        .I1(\scores[3] [10]),
        .I2(\scores[0] [10]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [10]),
        .O(p_0_out_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__1_i_4
       (.I0(out[9]),
        .I1(\scores[3] [9]),
        .I2(\scores[0] [9]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [9]),
        .O(p_0_out_carry__1_i_4_n_0));
  CARRY4 p_0_out_carry__2
       (.CI(p_0_out_carry__1_n_0),
        .CO({NLW_p_0_out_carry__2_CO_UNCONNECTED[3:2],p_0_out_carry__2_n_2,p_0_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_0_out_carry__2_O_UNCONNECTED[3],p_0_in1_in[15:13]}),
        .S({1'b0,p_0_out_carry__2_i_1_n_0,p_0_out_carry__2_i_2_n_0,p_0_out_carry__2_i_3_n_0}));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__2_i_1
       (.I0(out[15]),
        .I1(\scores[3] [15]),
        .I2(\scores[0] [15]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [15]),
        .O(p_0_out_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__2_i_2
       (.I0(out[14]),
        .I1(\scores[3] [14]),
        .I2(\scores[0] [14]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [14]),
        .O(p_0_out_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry__2_i_3
       (.I0(out[13]),
        .I1(\scores[3] [13]),
        .I2(\scores[0] [13]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [13]),
        .O(p_0_out_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry_i_1
       (.I0(out[0]),
        .I1(\scores[3] [0]),
        .I2(\scores[0] [0]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [0]),
        .O(p_0_out_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry_i_2
       (.I0(out[4]),
        .I1(\scores[3] [4]),
        .I2(\scores[0] [4]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [4]),
        .O(p_0_out_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry_i_3
       (.I0(out[3]),
        .I1(\scores[3] [3]),
        .I2(\scores[0] [3]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [3]),
        .O(p_0_out_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry_i_4
       (.I0(out[2]),
        .I1(\scores[3] [2]),
        .I2(\scores[0] [2]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [2]),
        .O(p_0_out_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    p_0_out_carry_i_5
       (.I0(out[1]),
        .I1(\scores[3] [1]),
        .I2(\scores[0] [1]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .I5(\scores[1] [1]),
        .O(p_0_out_carry_i_5_n_0));
  CARRY4 \p_0_out_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\p_0_out_inferred__0/i__carry_n_0 ,\p_0_out_inferred__0/i__carry_n_1 ,\p_0_out_inferred__0/i__carry_n_2 ,\p_0_out_inferred__0/i__carry_n_3 }),
        .CYINIT(p_0_out_carry_i_1_n_0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(p_2_in[4:1]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \p_0_out_inferred__0/i__carry__0 
       (.CI(\p_0_out_inferred__0/i__carry_n_0 ),
        .CO({\p_0_out_inferred__0/i__carry__0_n_0 ,\p_0_out_inferred__0/i__carry__0_n_1 ,\p_0_out_inferred__0/i__carry__0_n_2 ,\p_0_out_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(p_2_in[8:5]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \p_0_out_inferred__0/i__carry__1 
       (.CI(\p_0_out_inferred__0/i__carry__0_n_0 ),
        .CO({\p_0_out_inferred__0/i__carry__1_n_0 ,\p_0_out_inferred__0/i__carry__1_n_1 ,\p_0_out_inferred__0/i__carry__1_n_2 ,\p_0_out_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(p_2_in[12:9]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \p_0_out_inferred__0/i__carry__2 
       (.CI(\p_0_out_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_p_0_out_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\p_0_out_inferred__0/i__carry__2_n_2 ,\p_0_out_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}),
        .O({\NLW_p_0_out_inferred__0/i__carry__2_O_UNCONNECTED [3],p_2_in[15:13]}),
        .S({1'b0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0,i__carry__2_i_5_n_0}));
  CARRY4 pred_class0_carry
       (.CI(1'b0),
        .CO({pred_class0_carry_n_0,pred_class0_carry_n_1,pred_class0_carry_n_2,pred_class0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pred_class0_carry_i_1_n_0,pred_class0_carry_i_2_n_0,pred_class0_carry_i_3_n_0,pred_class0_carry_i_4_n_0}),
        .O(NLW_pred_class0_carry_O_UNCONNECTED[3:0]),
        .S({pred_class0_carry_i_5_n_0,pred_class0_carry_i_6_n_0,pred_class0_carry_i_7_n_0,pred_class0_carry_i_8_n_0}));
  CARRY4 pred_class0_carry__0
       (.CI(pred_class0_carry_n_0),
        .CO({pred_class0_carry__0_n_0,pred_class0_carry__0_n_1,pred_class0_carry__0_n_2,pred_class0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pred_class0_carry__0_i_1_n_0,pred_class0_carry__0_i_2_n_0,pred_class0_carry__0_i_3_n_0,pred_class0_carry__0_i_4_n_0}),
        .O(NLW_pred_class0_carry__0_O_UNCONNECTED[3:0]),
        .S({pred_class0_carry__0_i_5_n_0,pred_class0_carry__0_i_6_n_0,pred_class0_carry__0_i_7_n_0,pred_class0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry__0_i_1
       (.I0(scores__115[14]),
        .I1(max_score[14]),
        .I2(scores__115[15]),
        .I3(max_score[15]),
        .O(pred_class0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry__0_i_2
       (.I0(scores__115[12]),
        .I1(max_score[12]),
        .I2(max_score[13]),
        .I3(scores__115[13]),
        .O(pred_class0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry__0_i_3
       (.I0(scores__115[10]),
        .I1(max_score[10]),
        .I2(max_score[11]),
        .I3(scores__115[11]),
        .O(pred_class0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry__0_i_4
       (.I0(scores__115[8]),
        .I1(max_score[8]),
        .I2(max_score[9]),
        .I3(scores__115[9]),
        .O(pred_class0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry__0_i_5
       (.I0(scores__115[14]),
        .I1(max_score[15]),
        .I2(scores__115[15]),
        .I3(max_score[14]),
        .O(pred_class0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry__0_i_6
       (.I0(scores__115[12]),
        .I1(scores__115[13]),
        .I2(max_score[13]),
        .I3(max_score[12]),
        .O(pred_class0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry__0_i_7
       (.I0(scores__115[10]),
        .I1(scores__115[11]),
        .I2(max_score[11]),
        .I3(max_score[10]),
        .O(pred_class0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry__0_i_8
       (.I0(scores__115[8]),
        .I1(scores__115[9]),
        .I2(max_score[9]),
        .I3(max_score[8]),
        .O(pred_class0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry_i_1
       (.I0(scores__115[6]),
        .I1(max_score[6]),
        .I2(max_score[7]),
        .I3(scores__115[7]),
        .O(pred_class0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry_i_2
       (.I0(scores__115[4]),
        .I1(max_score[4]),
        .I2(max_score[5]),
        .I3(scores__115[5]),
        .O(pred_class0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry_i_3
       (.I0(scores__115[2]),
        .I1(max_score[2]),
        .I2(max_score[3]),
        .I3(scores__115[3]),
        .O(pred_class0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pred_class0_carry_i_4
       (.I0(scores__115[0]),
        .I1(max_score[0]),
        .I2(max_score[1]),
        .I3(scores__115[1]),
        .O(pred_class0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry_i_5
       (.I0(scores__115[6]),
        .I1(scores__115[7]),
        .I2(max_score[7]),
        .I3(max_score[6]),
        .O(pred_class0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry_i_6
       (.I0(scores__115[4]),
        .I1(scores__115[5]),
        .I2(max_score[5]),
        .I3(max_score[4]),
        .O(pred_class0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry_i_7
       (.I0(scores__115[2]),
        .I1(scores__115[3]),
        .I2(max_score[3]),
        .I3(max_score[2]),
        .O(pred_class0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pred_class0_carry_i_8
       (.I0(scores__115[0]),
        .I1(scores__115[1]),
        .I2(max_score[1]),
        .I3(max_score[0]),
        .O(pred_class0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hBB33AB338800A800)) 
    \pred_class[0]_i_1 
       (.I0(sel0[0]),
        .I1(\pred_class[2]_i_2_n_0 ),
        .I2(pred_class0_carry__0_n_0),
        .I3(\state_reg[2]_0 ),
        .I4(\pred_class[2]_i_3_n_0 ),
        .I5(\pred_class_reg[2]_0 [0]),
        .O(\pred_class[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB33AB338800A800)) 
    \pred_class[1]_i_1 
       (.I0(sel0[1]),
        .I1(\pred_class[2]_i_2_n_0 ),
        .I2(pred_class0_carry__0_n_0),
        .I3(\state_reg[2]_0 ),
        .I4(\pred_class[2]_i_3_n_0 ),
        .I5(\pred_class_reg[2]_0 [1]),
        .O(\pred_class[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB33AB338800A800)) 
    \pred_class[2]_i_1 
       (.I0(sel0[2]),
        .I1(\pred_class[2]_i_2_n_0 ),
        .I2(pred_class0_carry__0_n_0),
        .I3(\state_reg[2]_0 ),
        .I4(\pred_class[2]_i_3_n_0 ),
        .I5(\pred_class_reg[2]_0 [2]),
        .O(\pred_class[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \pred_class[2]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[2]_0 ),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\pred_class[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pred_class[2]_i_3 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .O(\pred_class[2]_i_3_n_0 ));
  FDCE \pred_class_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\pred_class[0]_i_1_n_0 ),
        .Q(\pred_class_reg[2]_0 [0]));
  FDCE \pred_class_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\pred_class[1]_i_1_n_0 ),
        .Q(\pred_class_reg[2]_0 [1]));
  FDCE \pred_class_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\pred_class[2]_i_1_n_0 ),
        .Q(\pred_class_reg[2]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \score_latch[0][15]_i_1 
       (.I0(done_wire),
        .I1(done_d),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF010001000100)) 
    \scores[0][0]_i_1 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(\scores[2][0]_i_2_n_0 ),
        .I4(\scores[0] [0]),
        .I5(\scores[0][15]_i_2_n_0 ),
        .O(\scores[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][10]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [10]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[10]),
        .I4(p_2_in[10]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][11]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [11]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[11]),
        .I4(p_2_in[11]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][12]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [12]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[12]),
        .I4(p_2_in[12]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][13]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [13]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[13]),
        .I4(p_2_in[13]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][14]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [14]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[14]),
        .I4(p_2_in[14]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][15]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [15]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[15]),
        .I4(p_2_in[15]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFDCFFDF)) 
    \scores[0][15]_i_2 
       (.I0(\scores[0][15]_i_5_n_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\class_idx_reg[2]_0 ),
        .O(\scores[0][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \scores[0][15]_i_3 
       (.I0(clause_is_odd),
        .I1(\clause_cnt[9]_i_3_n_0 ),
        .I2(\state_reg[2]_0 ),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[0][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \scores[0][15]_i_4 
       (.I0(\clause_cnt[9]_i_3_n_0 ),
        .I1(\state_reg[2]_0 ),
        .I2(clause_is_odd),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[0][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \scores[0][15]_i_5 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .O(\scores[0][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][1]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [1]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[1]),
        .I4(p_2_in[1]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][2]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [2]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[2]),
        .I4(p_2_in[2]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][3]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [3]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[3]),
        .I4(p_2_in[3]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][4]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [4]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[4]),
        .I4(p_2_in[4]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][5]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [5]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[5]),
        .I4(p_2_in[5]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][6]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [6]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[6]),
        .I4(p_2_in[6]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][7]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [7]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[7]),
        .I4(p_2_in[7]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][8]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [8]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[8]),
        .I4(p_2_in[8]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[0][9]_i_1 
       (.I0(\scores[0][15]_i_2_n_0 ),
        .I1(\scores[0] [9]),
        .I2(\scores[0][15]_i_3_n_0 ),
        .I3(p_0_in1_in[9]),
        .I4(p_2_in[9]),
        .I5(\scores[0][15]_i_4_n_0 ),
        .O(\scores[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \scores[1][0]_i_1 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(\scores[2][0]_i_2_n_0 ),
        .I4(\scores[1] [0]),
        .I5(\scores[1][15]_i_2_n_0 ),
        .O(\scores[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [10]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[10]),
        .I4(p_2_in[10]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [11]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[11]),
        .I4(p_2_in[11]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [12]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[12]),
        .I4(p_2_in[12]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [13]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[13]),
        .I4(p_2_in[13]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [14]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[14]),
        .I4(p_2_in[14]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [15]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[15]),
        .I4(p_2_in[15]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFDCFFDF)) 
    \scores[1][15]_i_2 
       (.I0(\scores[1][15]_i_5_n_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\class_idx_reg[2]_0 ),
        .O(\scores[1][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \scores[1][15]_i_3 
       (.I0(clause_is_odd),
        .I1(\clause_cnt[9]_i_3_n_0 ),
        .I2(\state_reg[2]_0 ),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[1][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \scores[1][15]_i_4 
       (.I0(\clause_cnt[9]_i_3_n_0 ),
        .I1(\state_reg[2]_0 ),
        .I2(clause_is_odd),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[1][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \scores[1][15]_i_5 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .O(\scores[1][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [1]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[1]),
        .I4(p_2_in[1]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [2]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[2]),
        .I4(p_2_in[2]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [3]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[3]),
        .I4(p_2_in[3]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [4]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[4]),
        .I4(p_2_in[4]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [5]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[5]),
        .I4(p_2_in[5]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [6]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[6]),
        .I4(p_2_in[6]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [7]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[7]),
        .I4(p_2_in[7]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [8]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[8]),
        .I4(p_2_in[8]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[1][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[1] [9]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(p_0_in1_in[9]),
        .I4(p_2_in[9]),
        .I5(\scores[1][15]_i_4_n_0 ),
        .O(\scores[1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF040004000400)) 
    \scores[2][0]_i_1 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(\scores[2][0]_i_2_n_0 ),
        .I4(out[0]),
        .I5(\scores[2][15]_i_2_n_0 ),
        .O(\scores[2][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \scores[2][0]_i_2 
       (.I0(\state_reg[2]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(p_0_out_carry_i_1_n_0),
        .O(\scores[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][10]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[10]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[10]),
        .I4(p_2_in[10]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][11]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[11]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[11]),
        .I4(p_2_in[11]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][12]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[12]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[12]),
        .I4(p_2_in[12]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][13]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[13]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[13]),
        .I4(p_2_in[13]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][14]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[14]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[14]),
        .I4(p_2_in[14]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][15]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[15]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[15]),
        .I4(p_2_in[15]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFDCFFDF)) 
    \scores[2][15]_i_2 
       (.I0(\scores[2][15]_i_5_n_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\class_idx_reg[2]_0 ),
        .O(\scores[2][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \scores[2][15]_i_3 
       (.I0(clause_is_odd),
        .I1(\clause_cnt[9]_i_3_n_0 ),
        .I2(\state_reg[2]_0 ),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[2][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \scores[2][15]_i_4 
       (.I0(\clause_cnt[9]_i_3_n_0 ),
        .I1(\state_reg[2]_0 ),
        .I2(clause_is_odd),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[2][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \scores[2][15]_i_5 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .O(\scores[2][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][1]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[1]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[1]),
        .I4(p_2_in[1]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][2]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[2]),
        .I4(p_2_in[2]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][3]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[3]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[3]),
        .I4(p_2_in[3]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][4]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[4]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[4]),
        .I4(p_2_in[4]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][5]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[5]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[5]),
        .I4(p_2_in[5]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][6]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[6]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[6]),
        .I4(p_2_in[6]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][7]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[7]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[7]),
        .I4(p_2_in[7]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][8]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[8]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[8]),
        .I4(p_2_in[8]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[2][9]_i_1 
       (.I0(\scores[2][15]_i_2_n_0 ),
        .I1(out[9]),
        .I2(\scores[2][15]_i_3_n_0 ),
        .I3(p_0_in1_in[9]),
        .I4(p_2_in[9]),
        .I5(\scores[2][15]_i_4_n_0 ),
        .O(\scores[2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \scores[3][0]_i_1 
       (.I0(sel0__0[2]),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(\scores[2][0]_i_2_n_0 ),
        .I4(\scores[3] [0]),
        .I5(\scores[3][15]_i_2_n_0 ),
        .O(\scores[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][10]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [10]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[10]),
        .I4(p_2_in[10]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][11]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [11]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[11]),
        .I4(p_2_in[11]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][12]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [12]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[12]),
        .I4(p_2_in[12]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][13]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [13]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[13]),
        .I4(p_2_in[13]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][14]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [14]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[14]),
        .I4(p_2_in[14]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][15]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [15]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[15]),
        .I4(p_2_in[15]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEF0FFFFFEFF)) 
    \scores[3][15]_i_2 
       (.I0(sel0__0[2]),
        .I1(\class_idx[2]_i_2_n_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg[2]_0 ),
        .I5(\class_idx_reg[2]_0 ),
        .O(\scores[3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \scores[3][15]_i_3 
       (.I0(clause_is_odd),
        .I1(\clause_cnt[9]_i_3_n_0 ),
        .I2(\state_reg[2]_0 ),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[3][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \scores[3][15]_i_4 
       (.I0(\clause_cnt[9]_i_3_n_0 ),
        .I1(\state_reg[2]_0 ),
        .I2(clause_is_odd),
        .I3(sel0__0[0]),
        .I4(sel0__0[1]),
        .I5(sel0__0[2]),
        .O(\scores[3][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][1]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [1]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[1]),
        .I4(p_2_in[1]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][2]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [2]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[2]),
        .I4(p_2_in[2]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][3]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [3]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[3]),
        .I4(p_2_in[3]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][4]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [4]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[4]),
        .I4(p_2_in[4]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][5]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [5]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[5]),
        .I4(p_2_in[5]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][6]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [6]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[6]),
        .I4(p_2_in[6]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][7]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [7]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[7]),
        .I4(p_2_in[7]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][8]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [8]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[8]),
        .I4(p_2_in[8]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scores[3][9]_i_1 
       (.I0(\scores[3][15]_i_2_n_0 ),
        .I1(\scores[3] [9]),
        .I2(\scores[3][15]_i_3_n_0 ),
        .I3(p_0_in1_in[9]),
        .I4(p_2_in[9]),
        .I5(\scores[3][15]_i_4_n_0 ),
        .O(\scores[3][9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][0]_i_1_n_0 ),
        .Q(\scores[0] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][10]_i_1_n_0 ),
        .Q(\scores[0] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][11]_i_1_n_0 ),
        .Q(\scores[0] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][12]_i_1_n_0 ),
        .Q(\scores[0] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][13]_i_1_n_0 ),
        .Q(\scores[0] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][14]_i_1_n_0 ),
        .Q(\scores[0] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][15]_i_1_n_0 ),
        .Q(\scores[0] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][1]_i_1_n_0 ),
        .Q(\scores[0] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][2]_i_1_n_0 ),
        .Q(\scores[0] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][3]_i_1_n_0 ),
        .Q(\scores[0] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][4]_i_1_n_0 ),
        .Q(\scores[0] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][5]_i_1_n_0 ),
        .Q(\scores[0] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][6]_i_1_n_0 ),
        .Q(\scores[0] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][7]_i_1_n_0 ),
        .Q(\scores[0] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][8]_i_1_n_0 ),
        .Q(\scores[0] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[0][9]_i_1_n_0 ),
        .Q(\scores[0] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][0]_i_1_n_0 ),
        .Q(\scores[1] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][10]_i_1_n_0 ),
        .Q(\scores[1] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][11]_i_1_n_0 ),
        .Q(\scores[1] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][12]_i_1_n_0 ),
        .Q(\scores[1] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][13]_i_1_n_0 ),
        .Q(\scores[1] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][14]_i_1_n_0 ),
        .Q(\scores[1] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][15]_i_1_n_0 ),
        .Q(\scores[1] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][1]_i_1_n_0 ),
        .Q(\scores[1] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][2]_i_1_n_0 ),
        .Q(\scores[1] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][3]_i_1_n_0 ),
        .Q(\scores[1] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][4]_i_1_n_0 ),
        .Q(\scores[1] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][5]_i_1_n_0 ),
        .Q(\scores[1] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][6]_i_1_n_0 ),
        .Q(\scores[1] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][7]_i_1_n_0 ),
        .Q(\scores[1] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][8]_i_1_n_0 ),
        .Q(\scores[1] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][9]_i_1_n_0 ),
        .Q(\scores[1] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][0]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][10]_i_1_n_0 ),
        .Q(out[10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][11]_i_1_n_0 ),
        .Q(out[11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][12]_i_1_n_0 ),
        .Q(out[12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][13]_i_1_n_0 ),
        .Q(out[13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][14]_i_1_n_0 ),
        .Q(out[14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][15]_i_1_n_0 ),
        .Q(out[15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][1]_i_1_n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][2]_i_1_n_0 ),
        .Q(out[2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][3]_i_1_n_0 ),
        .Q(out[3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][4]_i_1_n_0 ),
        .Q(out[4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][5]_i_1_n_0 ),
        .Q(out[5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][6]_i_1_n_0 ),
        .Q(out[6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][7]_i_1_n_0 ),
        .Q(out[7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][8]_i_1_n_0 ),
        .Q(out[8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][9]_i_1_n_0 ),
        .Q(out[9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][0]_i_1_n_0 ),
        .Q(\scores[3] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][10]_i_1_n_0 ),
        .Q(\scores[3] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][11]_i_1_n_0 ),
        .Q(\scores[3] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][12]_i_1_n_0 ),
        .Q(\scores[3] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][13]_i_1_n_0 ),
        .Q(\scores[3] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][14]_i_1_n_0 ),
        .Q(\scores[3] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][15]_i_1_n_0 ),
        .Q(\scores[3] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][1]_i_1_n_0 ),
        .Q(\scores[3] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][2]_i_1_n_0 ),
        .Q(\scores[3] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][3]_i_1_n_0 ),
        .Q(\scores[3] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][4]_i_1_n_0 ),
        .Q(\scores[3] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][5]_i_1_n_0 ),
        .Q(\scores[3] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][6]_i_1_n_0 ),
        .Q(\scores[3] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][7]_i_1_n_0 ),
        .Q(\scores[3] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][8]_i_1_n_0 ),
        .Q(\scores[3] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[3][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[3][9]_i_1_n_0 ),
        .Q(\scores[3] [9]));
  LUT6 #(
    .INIT(64'h5400FFFF55FF0000)) 
    \state[0]_i_1 
       (.I0(\state_reg[2]_0 ),
        .I1(sel0__0[2]),
        .I2(\class_idx[2]_i_2_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(state0),
        .I5(\state_reg[0]_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(state0),
        .I2(\state_reg[1]_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FF8000)) 
    \state[1]_i_2 
       (.I0(\clause_cnt_reg_n_0_[10] ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg[0]_0 ),
        .I5(\state_reg[2]_0 ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \state[1]_i_3 
       (.I0(\clause_cnt_reg_n_0_[9] ),
        .I1(\clause_cnt_reg_n_0_[8] ),
        .I2(\clause_cnt_reg_n_0_[7] ),
        .I3(\clause_cnt_reg_n_0_[6] ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \state[1]_i_4 
       (.I0(\clause_cnt_reg_n_0_[3] ),
        .I1(\clause_cnt_reg_n_0_[4] ),
        .I2(\clause_cnt_reg_n_0_[5] ),
        .I3(\clause_cnt_reg_n_0_[2] ),
        .I4(\clause_cnt_reg[0]_0 ),
        .I5(\clause_cnt_reg_n_0_[1] ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF10000000)) 
    \state[2]_i_1 
       (.I0(\class_idx[2]_i_2_n_0 ),
        .I1(sel0__0[2]),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(state0),
        .I5(\state_reg[2]_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEFFFEFE)) 
    \state[2]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\class_idx_reg[2]_0 ),
        .I3(\cmp_idx[2]_i_2_n_0 ),
        .I4(\state_reg[2]_0 ),
        .I5(sel0[2]),
        .O(state0));
  FDCE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg[0]_0 ));
  FDCE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ));
  FDCE \state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg[2]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
