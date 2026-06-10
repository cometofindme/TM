// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May  5 12:47:53 2026
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
    S_AXI_RREADY,
    mask_addr_out,
    mask_dout_in);
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
  output [13:0]mask_addr_out;
  input [255:0]mask_dout_in;

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
  wire [13:0]mask_addr_out;
  wire [255:0]mask_dout_in;

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
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .mask_addr_out(mask_addr_out),
        .mask_dout_in(mask_dout_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper
   (mask_addr_out,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_ARADDR,
    mask_dout_in,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output [13:0]mask_addr_out;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [15:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input [6:0]S_AXI_ARADDR;
  input [255:0]mask_dout_in;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0]S_AXI_WDATA;
  input [6:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARVALID;
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
  wire \S_AXI_RDATA[0]_i_2_n_0 ;
  wire \S_AXI_RDATA[0]_i_3_n_0 ;
  wire \S_AXI_RDATA[0]_i_4_n_0 ;
  wire \S_AXI_RDATA[0]_i_5_n_0 ;
  wire \S_AXI_RDATA[0]_i_6_n_0 ;
  wire \S_AXI_RDATA[10]_i_2_n_0 ;
  wire \S_AXI_RDATA[10]_i_3_n_0 ;
  wire \S_AXI_RDATA[10]_i_4_n_0 ;
  wire \S_AXI_RDATA[11]_i_2_n_0 ;
  wire \S_AXI_RDATA[11]_i_3_n_0 ;
  wire \S_AXI_RDATA[11]_i_4_n_0 ;
  wire \S_AXI_RDATA[12]_i_2_n_0 ;
  wire \S_AXI_RDATA[12]_i_3_n_0 ;
  wire \S_AXI_RDATA[12]_i_4_n_0 ;
  wire \S_AXI_RDATA[13]_i_2_n_0 ;
  wire \S_AXI_RDATA[13]_i_3_n_0 ;
  wire \S_AXI_RDATA[13]_i_4_n_0 ;
  wire \S_AXI_RDATA[14]_i_2_n_0 ;
  wire \S_AXI_RDATA[14]_i_3_n_0 ;
  wire \S_AXI_RDATA[14]_i_4_n_0 ;
  wire \S_AXI_RDATA[1]_i_2_n_0 ;
  wire \S_AXI_RDATA[1]_i_3_n_0 ;
  wire \S_AXI_RDATA[1]_i_4_n_0 ;
  wire \S_AXI_RDATA[1]_i_5_n_0 ;
  wire \S_AXI_RDATA[2]_i_2_n_0 ;
  wire \S_AXI_RDATA[2]_i_3_n_0 ;
  wire \S_AXI_RDATA[2]_i_4_n_0 ;
  wire \S_AXI_RDATA[2]_i_5_n_0 ;
  wire \S_AXI_RDATA[31]_i_2_n_0 ;
  wire \S_AXI_RDATA[31]_i_3_n_0 ;
  wire \S_AXI_RDATA[31]_i_4_n_0 ;
  wire \S_AXI_RDATA[31]_i_5_n_0 ;
  wire \S_AXI_RDATA[3]_i_2_n_0 ;
  wire \S_AXI_RDATA[3]_i_3_n_0 ;
  wire \S_AXI_RDATA[3]_i_4_n_0 ;
  wire \S_AXI_RDATA[3]_i_5_n_0 ;
  wire \S_AXI_RDATA[3]_i_6_n_0 ;
  wire \S_AXI_RDATA[3]_i_7_n_0 ;
  wire \S_AXI_RDATA[4]_i_2_n_0 ;
  wire \S_AXI_RDATA[4]_i_3_n_0 ;
  wire \S_AXI_RDATA[4]_i_4_n_0 ;
  wire \S_AXI_RDATA[5]_i_2_n_0 ;
  wire \S_AXI_RDATA[5]_i_3_n_0 ;
  wire \S_AXI_RDATA[5]_i_4_n_0 ;
  wire \S_AXI_RDATA[6]_i_2_n_0 ;
  wire \S_AXI_RDATA[6]_i_3_n_0 ;
  wire \S_AXI_RDATA[6]_i_4_n_0 ;
  wire \S_AXI_RDATA[7]_i_2_n_0 ;
  wire \S_AXI_RDATA[7]_i_3_n_0 ;
  wire \S_AXI_RDATA[7]_i_4_n_0 ;
  wire \S_AXI_RDATA[8]_i_2_n_0 ;
  wire \S_AXI_RDATA[8]_i_3_n_0 ;
  wire \S_AXI_RDATA[8]_i_4_n_0 ;
  wire \S_AXI_RDATA[9]_i_2_n_0 ;
  wire \S_AXI_RDATA[9]_i_3_n_0 ;
  wire \S_AXI_RDATA[9]_i_4_n_0 ;
  wire [31:0]S_AXI_RDATA__0;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_RVALID02_out__0;
  wire S_AXI_RVALID_i_1_n_0;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY0;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire done_d;
  wire done_latch;
  wire done_wire;
  wire [13:0]mask_addr_out;
  wire [255:0]mask_dout_in;
  wire p_0_in;
  wire [255:0]patch_reg;
  wire \patch_reg[127]_i_1_n_0 ;
  wire \patch_reg[159]_i_1_n_0 ;
  wire \patch_reg[191]_i_1_n_0 ;
  wire \patch_reg[223]_i_1_n_0 ;
  wire \patch_reg[223]_i_2_n_0 ;
  wire \patch_reg[255]_i_1_n_0 ;
  wire \patch_reg[255]_i_2_n_0 ;
  wire \patch_reg[31]_i_1_n_0 ;
  wire \patch_reg[63]_i_1_n_0 ;
  wire \patch_reg[95]_i_1_n_0 ;
  wire [3:0]pred_class_wire;
  wire [3:0]pred_latch;
  wire pred_latch_20;
  wire [15:0]\score_latch_reg[0] ;
  wire [15:0]\score_latch_reg[1] ;
  wire [15:0]\score_latch_reg[2] ;
  wire [15:0]\score_latch_reg[3] ;
  wire [15:0]\score_latch_reg[4] ;
  wire [15:0]\score_latch_reg[5] ;
  wire [15:0]\score_latch_reg[6] ;
  wire [15:0]\score_latch_reg[7] ;
  wire [15:0]\score_latch_reg[8] ;
  wire [15:0]\score_latch_reg[9] ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[0]_0 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[1]_2 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[2]_4 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[3]_6 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[4]_8 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[5]_10 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[6]_12 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[7]_14 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[8]_16 ;
  (* RTL_KEEP = "tm_inst " *) wire [15:0]\scores[9]_18 ;
  wire start_reg_i_1_n_0;
  wire start_reg_i_2_n_0;
  wire start_reg_i_3_n_0;
  wire start_reg_i_4_n_0;
  wire start_reg_reg_n_0;
  wire tm_inst_n_162;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    S_AXI_AWREADY_i_2
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(aw_en_reg_n_0),
        .O(S_AXI_AWREADY0));
  FDRE S_AXI_AWREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_AWREADY0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    S_AXI_BVALID_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWREADY),
        .I5(S_AXI_BVALID),
        .O(S_AXI_BVALID_i_1_n_0));
  FDRE S_AXI_BVALID_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hA888A888A888AAAA)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[0]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[3]_i_3_n_0 ),
        .I3(\S_AXI_RDATA[0]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[0]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[0]_i_5_n_0 ),
        .O(S_AXI_RDATA__0[0]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \S_AXI_RDATA[0]_i_2 
       (.I0(pred_latch[0]),
        .I1(S_AXI_ARADDR[6]),
        .I2(S_AXI_ARADDR[5]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[4]),
        .I5(S_AXI_ARADDR[2]),
        .O(\S_AXI_RDATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_3 
       (.I0(\score_latch_reg[9] [0]),
        .I1(\score_latch_reg[8] [0]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [0]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [0]),
        .O(\S_AXI_RDATA[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \S_AXI_RDATA[0]_i_4 
       (.I0(S_AXI_ARADDR[4]),
        .I1(done_latch),
        .I2(S_AXI_ARADDR[2]),
        .I3(S_AXI_ARADDR[3]),
        .I4(\score_latch_reg[0] [0]),
        .I5(\score_latch_reg[1] [0]),
        .O(\S_AXI_RDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00088088)) 
    \S_AXI_RDATA[0]_i_5 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARADDR[4]),
        .I2(S_AXI_ARADDR[2]),
        .I3(\score_latch_reg[4] [0]),
        .I4(\score_latch_reg[5] [0]),
        .I5(\S_AXI_RDATA[0]_i_6_n_0 ),
        .O(\S_AXI_RDATA[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00004700FFFFFFFF)) 
    \S_AXI_RDATA[0]_i_6 
       (.I0(\score_latch_reg[3] [0]),
        .I1(S_AXI_ARADDR[2]),
        .I2(\score_latch_reg[2] [0]),
        .I3(S_AXI_ARADDR[4]),
        .I4(S_AXI_ARADDR[3]),
        .I5(\S_AXI_RDATA[3]_i_5_n_0 ),
        .O(\S_AXI_RDATA[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[10]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[10]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[10]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[10]_i_2 
       (.I0(\S_AXI_RDATA[10]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [10]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [10]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[10]_i_3 
       (.I0(\score_latch_reg[9] [10]),
        .I1(\score_latch_reg[8] [10]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [10]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [10]),
        .O(\S_AXI_RDATA[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[10]_i_4 
       (.I0(\score_latch_reg[5] [10]),
        .I1(\score_latch_reg[4] [10]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [10]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [10]),
        .O(\S_AXI_RDATA[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[11]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[11]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[11]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[11]_i_2 
       (.I0(\S_AXI_RDATA[11]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [11]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [11]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[11]_i_3 
       (.I0(\score_latch_reg[9] [11]),
        .I1(\score_latch_reg[8] [11]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [11]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [11]),
        .O(\S_AXI_RDATA[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[11]_i_4 
       (.I0(\score_latch_reg[5] [11]),
        .I1(\score_latch_reg[4] [11]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [11]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [11]),
        .O(\S_AXI_RDATA[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[12]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[12]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[12]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[12]_i_2 
       (.I0(\S_AXI_RDATA[12]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [12]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [12]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[12]_i_3 
       (.I0(\score_latch_reg[9] [12]),
        .I1(\score_latch_reg[8] [12]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [12]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [12]),
        .O(\S_AXI_RDATA[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[12]_i_4 
       (.I0(\score_latch_reg[5] [12]),
        .I1(\score_latch_reg[4] [12]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [12]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [12]),
        .O(\S_AXI_RDATA[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[13]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[13]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[13]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[13]_i_2 
       (.I0(\S_AXI_RDATA[13]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [13]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [13]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[13]_i_3 
       (.I0(\score_latch_reg[9] [13]),
        .I1(\score_latch_reg[8] [13]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [13]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [13]),
        .O(\S_AXI_RDATA[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[13]_i_4 
       (.I0(\score_latch_reg[5] [13]),
        .I1(\score_latch_reg[4] [13]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [13]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [13]),
        .O(\S_AXI_RDATA[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[14]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[14]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[14]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[14]_i_2 
       (.I0(\S_AXI_RDATA[14]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [14]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [14]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[14]_i_3 
       (.I0(\score_latch_reg[9] [14]),
        .I1(\score_latch_reg[8] [14]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [14]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [14]),
        .O(\S_AXI_RDATA[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[14]_i_4 
       (.I0(\score_latch_reg[5] [14]),
        .I1(\score_latch_reg[4] [14]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [14]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [14]),
        .O(\S_AXI_RDATA[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[1]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[3]_i_3_n_0 ),
        .I3(\S_AXI_RDATA[1]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[3]_i_5_n_0 ),
        .I5(\S_AXI_RDATA[1]_i_4_n_0 ),
        .O(S_AXI_RDATA__0[1]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \S_AXI_RDATA[1]_i_2 
       (.I0(pred_latch[1]),
        .I1(S_AXI_ARADDR[6]),
        .I2(S_AXI_ARADDR[5]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[4]),
        .I5(S_AXI_ARADDR[2]),
        .O(\S_AXI_RDATA[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_3 
       (.I0(\score_latch_reg[9] [1]),
        .I1(\score_latch_reg[8] [1]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [1]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [1]),
        .O(\S_AXI_RDATA[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[1]_i_4 
       (.I0(\S_AXI_RDATA[1]_i_5_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [1]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [1]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_5 
       (.I0(\score_latch_reg[5] [1]),
        .I1(\score_latch_reg[4] [1]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [1]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [1]),
        .O(\S_AXI_RDATA[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[2]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[3]_i_3_n_0 ),
        .I3(\S_AXI_RDATA[2]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[3]_i_5_n_0 ),
        .I5(\S_AXI_RDATA[2]_i_4_n_0 ),
        .O(S_AXI_RDATA__0[2]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \S_AXI_RDATA[2]_i_2 
       (.I0(pred_latch[2]),
        .I1(S_AXI_ARADDR[6]),
        .I2(S_AXI_ARADDR[5]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[4]),
        .I5(S_AXI_ARADDR[2]),
        .O(\S_AXI_RDATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_3 
       (.I0(\score_latch_reg[9] [2]),
        .I1(\score_latch_reg[8] [2]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [2]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [2]),
        .O(\S_AXI_RDATA[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[2]_i_4 
       (.I0(\S_AXI_RDATA[2]_i_5_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [2]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [2]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_5 
       (.I0(\score_latch_reg[5] [2]),
        .I1(\score_latch_reg[4] [2]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [2]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [2]),
        .O(\S_AXI_RDATA[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080008A00800)) 
    \S_AXI_RDATA[31]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I5(S_AXI_ARADDR[4]),
        .O(S_AXI_RDATA__0[31]));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_RDATA[31]_i_2 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARADDR[1]),
        .O(\S_AXI_RDATA[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[31]_i_3 
       (.I0(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [15]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [15]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[31]_i_4 
       (.I0(\score_latch_reg[9] [15]),
        .I1(\score_latch_reg[8] [15]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [15]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [15]),
        .O(\S_AXI_RDATA[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[31]_i_5 
       (.I0(\score_latch_reg[5] [15]),
        .I1(\score_latch_reg[4] [15]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [15]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [15]),
        .O(\S_AXI_RDATA[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[3]_i_2_n_0 ),
        .I2(\S_AXI_RDATA[3]_i_3_n_0 ),
        .I3(\S_AXI_RDATA[3]_i_4_n_0 ),
        .I4(\S_AXI_RDATA[3]_i_5_n_0 ),
        .I5(\S_AXI_RDATA[3]_i_6_n_0 ),
        .O(S_AXI_RDATA__0[3]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \S_AXI_RDATA[3]_i_2 
       (.I0(pred_latch[3]),
        .I1(S_AXI_ARADDR[3]),
        .I2(S_AXI_ARADDR[4]),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARADDR[6]),
        .I5(S_AXI_ARADDR[5]),
        .O(\S_AXI_RDATA[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \S_AXI_RDATA[3]_i_3 
       (.I0(S_AXI_ARADDR[4]),
        .I1(S_AXI_ARADDR[6]),
        .I2(S_AXI_ARADDR[5]),
        .O(\S_AXI_RDATA[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_4 
       (.I0(\score_latch_reg[9] [3]),
        .I1(\score_latch_reg[8] [3]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [3]),
        .O(\S_AXI_RDATA[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \S_AXI_RDATA[3]_i_5 
       (.I0(S_AXI_ARADDR[5]),
        .I1(S_AXI_ARADDR[6]),
        .O(\S_AXI_RDATA[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[3]_i_6 
       (.I0(\S_AXI_RDATA[3]_i_7_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [3]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [3]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_7 
       (.I0(\score_latch_reg[5] [3]),
        .I1(\score_latch_reg[4] [3]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [3]),
        .O(\S_AXI_RDATA[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[4]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[4]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[4]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[4]_i_2 
       (.I0(\S_AXI_RDATA[4]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [4]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [4]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_3 
       (.I0(\score_latch_reg[9] [4]),
        .I1(\score_latch_reg[8] [4]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [4]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [4]),
        .O(\S_AXI_RDATA[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_4 
       (.I0(\score_latch_reg[5] [4]),
        .I1(\score_latch_reg[4] [4]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [4]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [4]),
        .O(\S_AXI_RDATA[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[5]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[5]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[5]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[5]_i_2 
       (.I0(\S_AXI_RDATA[5]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [5]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [5]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_3 
       (.I0(\score_latch_reg[9] [5]),
        .I1(\score_latch_reg[8] [5]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [5]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [5]),
        .O(\S_AXI_RDATA[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_4 
       (.I0(\score_latch_reg[5] [5]),
        .I1(\score_latch_reg[4] [5]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [5]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [5]),
        .O(\S_AXI_RDATA[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[6]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[6]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[6]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[6]_i_2 
       (.I0(\S_AXI_RDATA[6]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [6]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [6]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_3 
       (.I0(\score_latch_reg[9] [6]),
        .I1(\score_latch_reg[8] [6]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [6]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [6]),
        .O(\S_AXI_RDATA[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_4 
       (.I0(\score_latch_reg[5] [6]),
        .I1(\score_latch_reg[4] [6]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [6]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [6]),
        .O(\S_AXI_RDATA[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[7]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[7]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[7]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[7]_i_2 
       (.I0(\S_AXI_RDATA[7]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [7]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [7]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_3 
       (.I0(\score_latch_reg[9] [7]),
        .I1(\score_latch_reg[8] [7]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [7]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [7]),
        .O(\S_AXI_RDATA[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_4 
       (.I0(\score_latch_reg[5] [7]),
        .I1(\score_latch_reg[4] [7]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [7]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [7]),
        .O(\S_AXI_RDATA[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[8]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[8]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[8]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[8]_i_2 
       (.I0(\S_AXI_RDATA[8]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [8]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [8]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[8]_i_3 
       (.I0(\score_latch_reg[9] [8]),
        .I1(\score_latch_reg[8] [8]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [8]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [8]),
        .O(\S_AXI_RDATA[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[8]_i_4 
       (.I0(\score_latch_reg[5] [8]),
        .I1(\score_latch_reg[4] [8]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [8]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [8]),
        .O(\S_AXI_RDATA[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080008A008000800)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_2_n_0 ),
        .I1(\S_AXI_RDATA[9]_i_2_n_0 ),
        .I2(S_AXI_ARADDR[6]),
        .I3(S_AXI_ARADDR[5]),
        .I4(S_AXI_ARADDR[4]),
        .I5(\S_AXI_RDATA[9]_i_3_n_0 ),
        .O(S_AXI_RDATA__0[9]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \S_AXI_RDATA[9]_i_2 
       (.I0(\S_AXI_RDATA[9]_i_4_n_0 ),
        .I1(S_AXI_ARADDR[4]),
        .I2(\score_latch_reg[0] [9]),
        .I3(S_AXI_ARADDR[2]),
        .I4(\score_latch_reg[1] [9]),
        .I5(S_AXI_ARADDR[3]),
        .O(\S_AXI_RDATA[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[9]_i_3 
       (.I0(\score_latch_reg[9] [9]),
        .I1(\score_latch_reg[8] [9]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[7] [9]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[6] [9]),
        .O(\S_AXI_RDATA[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[9]_i_4 
       (.I0(\score_latch_reg[5] [9]),
        .I1(\score_latch_reg[4] [9]),
        .I2(S_AXI_ARADDR[3]),
        .I3(\score_latch_reg[3] [9]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\score_latch_reg[2] [9]),
        .O(\S_AXI_RDATA[9]_i_4_n_0 ));
  FDRE \S_AXI_RDATA_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[0]),
        .Q(S_AXI_RDATA[0]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[10]),
        .Q(S_AXI_RDATA[10]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[11]),
        .Q(S_AXI_RDATA[11]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[12]),
        .Q(S_AXI_RDATA[12]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[13]),
        .Q(S_AXI_RDATA[13]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[14]),
        .Q(S_AXI_RDATA[14]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[1]),
        .Q(S_AXI_RDATA[1]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[2]),
        .Q(S_AXI_RDATA[2]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[31]),
        .Q(S_AXI_RDATA[15]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[3]),
        .Q(S_AXI_RDATA[3]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[4]),
        .Q(S_AXI_RDATA[4]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[5]),
        .Q(S_AXI_RDATA[5]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[6]),
        .Q(S_AXI_RDATA[6]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[7]),
        .Q(S_AXI_RDATA[7]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[8]),
        .Q(S_AXI_RDATA[8]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_RVALID02_out__0),
        .D(S_AXI_RDATA__0[9]),
        .Q(S_AXI_RDATA[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_RVALID02_out
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .O(S_AXI_RVALID02_out__0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    S_AXI_RVALID_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(S_AXI_RVALID_i_1_n_0));
  FDRE S_AXI_RVALID_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    S_AXI_WREADY_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_WREADY),
        .O(S_AXI_WREADY0));
  FDRE S_AXI_WREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_WREADY0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDRE done_d_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(done_wire),
        .Q(done_d),
        .R(p_0_in));
  FDRE done_latch_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(tm_inst_n_162),
        .Q(done_latch),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \patch_reg[127]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWADDR[3]),
        .I2(\patch_reg[255]_i_2_n_0 ),
        .O(\patch_reg[127]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \patch_reg[159]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[4]),
        .I2(\patch_reg[223]_i_2_n_0 ),
        .O(\patch_reg[159]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \patch_reg[191]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[4]),
        .I2(\patch_reg[255]_i_2_n_0 ),
        .O(\patch_reg[191]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \patch_reg[223]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWADDR[3]),
        .I2(\patch_reg[223]_i_2_n_0 ),
        .O(\patch_reg[223]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \patch_reg[223]_i_2 
       (.I0(S_AXI_AWADDR[5]),
        .I1(S_AXI_AWADDR[6]),
        .I2(S_AXI_WREADY0),
        .I3(S_AXI_AWADDR[1]),
        .I4(S_AXI_AWADDR[0]),
        .I5(S_AXI_AWADDR[2]),
        .O(\patch_reg[223]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \patch_reg[255]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWADDR[3]),
        .I2(\patch_reg[255]_i_2_n_0 ),
        .O(\patch_reg[255]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \patch_reg[255]_i_2 
       (.I0(S_AXI_AWADDR[5]),
        .I1(S_AXI_AWADDR[6]),
        .I2(S_AXI_WREADY0),
        .I3(S_AXI_AWADDR[1]),
        .I4(S_AXI_AWADDR[0]),
        .I5(S_AXI_AWADDR[2]),
        .O(\patch_reg[255]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \patch_reg[31]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWADDR[3]),
        .I2(\patch_reg[223]_i_2_n_0 ),
        .O(\patch_reg[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \patch_reg[63]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWADDR[3]),
        .I2(\patch_reg[255]_i_2_n_0 ),
        .O(\patch_reg[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \patch_reg[95]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWADDR[3]),
        .I2(\patch_reg[223]_i_2_n_0 ),
        .O(\patch_reg[95]_i_1_n_0 ));
  FDRE \patch_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[0]),
        .R(p_0_in));
  FDRE \patch_reg_reg[100] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[100]),
        .R(p_0_in));
  FDRE \patch_reg_reg[101] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[101]),
        .R(p_0_in));
  FDRE \patch_reg_reg[102] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[102]),
        .R(p_0_in));
  FDRE \patch_reg_reg[103] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[103]),
        .R(p_0_in));
  FDRE \patch_reg_reg[104] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[104]),
        .R(p_0_in));
  FDRE \patch_reg_reg[105] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[105]),
        .R(p_0_in));
  FDRE \patch_reg_reg[106] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[106]),
        .R(p_0_in));
  FDRE \patch_reg_reg[107] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[107]),
        .R(p_0_in));
  FDRE \patch_reg_reg[108] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[108]),
        .R(p_0_in));
  FDRE \patch_reg_reg[109] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[109]),
        .R(p_0_in));
  FDRE \patch_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[10]),
        .R(p_0_in));
  FDRE \patch_reg_reg[110] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[110]),
        .R(p_0_in));
  FDRE \patch_reg_reg[111] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[111]),
        .R(p_0_in));
  FDRE \patch_reg_reg[112] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[112]),
        .R(p_0_in));
  FDRE \patch_reg_reg[113] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[113]),
        .R(p_0_in));
  FDRE \patch_reg_reg[114] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[114]),
        .R(p_0_in));
  FDRE \patch_reg_reg[115] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[115]),
        .R(p_0_in));
  FDRE \patch_reg_reg[116] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[116]),
        .R(p_0_in));
  FDRE \patch_reg_reg[117] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[117]),
        .R(p_0_in));
  FDRE \patch_reg_reg[118] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[118]),
        .R(p_0_in));
  FDRE \patch_reg_reg[119] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[119]),
        .R(p_0_in));
  FDRE \patch_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[11]),
        .R(p_0_in));
  FDRE \patch_reg_reg[120] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[120]),
        .R(p_0_in));
  FDRE \patch_reg_reg[121] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[121]),
        .R(p_0_in));
  FDRE \patch_reg_reg[122] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[122]),
        .R(p_0_in));
  FDRE \patch_reg_reg[123] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[123]),
        .R(p_0_in));
  FDRE \patch_reg_reg[124] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[124]),
        .R(p_0_in));
  FDRE \patch_reg_reg[125] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[125]),
        .R(p_0_in));
  FDRE \patch_reg_reg[126] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[126]),
        .R(p_0_in));
  FDRE \patch_reg_reg[127] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[127]),
        .R(p_0_in));
  FDRE \patch_reg_reg[128] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[128]),
        .R(p_0_in));
  FDRE \patch_reg_reg[129] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[129]),
        .R(p_0_in));
  FDRE \patch_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[12]),
        .R(p_0_in));
  FDRE \patch_reg_reg[130] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[130]),
        .R(p_0_in));
  FDRE \patch_reg_reg[131] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[131]),
        .R(p_0_in));
  FDRE \patch_reg_reg[132] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[132]),
        .R(p_0_in));
  FDRE \patch_reg_reg[133] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[133]),
        .R(p_0_in));
  FDRE \patch_reg_reg[134] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[134]),
        .R(p_0_in));
  FDRE \patch_reg_reg[135] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[135]),
        .R(p_0_in));
  FDRE \patch_reg_reg[136] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[136]),
        .R(p_0_in));
  FDRE \patch_reg_reg[137] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[137]),
        .R(p_0_in));
  FDRE \patch_reg_reg[138] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[138]),
        .R(p_0_in));
  FDRE \patch_reg_reg[139] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[139]),
        .R(p_0_in));
  FDRE \patch_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[13]),
        .R(p_0_in));
  FDRE \patch_reg_reg[140] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[140]),
        .R(p_0_in));
  FDRE \patch_reg_reg[141] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[141]),
        .R(p_0_in));
  FDRE \patch_reg_reg[142] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[142]),
        .R(p_0_in));
  FDRE \patch_reg_reg[143] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[143]),
        .R(p_0_in));
  FDRE \patch_reg_reg[144] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[144]),
        .R(p_0_in));
  FDRE \patch_reg_reg[145] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[145]),
        .R(p_0_in));
  FDRE \patch_reg_reg[146] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[146]),
        .R(p_0_in));
  FDRE \patch_reg_reg[147] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[147]),
        .R(p_0_in));
  FDRE \patch_reg_reg[148] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[148]),
        .R(p_0_in));
  FDRE \patch_reg_reg[149] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[149]),
        .R(p_0_in));
  FDRE \patch_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[14]),
        .R(p_0_in));
  FDRE \patch_reg_reg[150] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[150]),
        .R(p_0_in));
  FDRE \patch_reg_reg[151] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[151]),
        .R(p_0_in));
  FDRE \patch_reg_reg[152] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[152]),
        .R(p_0_in));
  FDRE \patch_reg_reg[153] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[153]),
        .R(p_0_in));
  FDRE \patch_reg_reg[154] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[154]),
        .R(p_0_in));
  FDRE \patch_reg_reg[155] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[155]),
        .R(p_0_in));
  FDRE \patch_reg_reg[156] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[156]),
        .R(p_0_in));
  FDRE \patch_reg_reg[157] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[157]),
        .R(p_0_in));
  FDRE \patch_reg_reg[158] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[158]),
        .R(p_0_in));
  FDRE \patch_reg_reg[159] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[159]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[159]),
        .R(p_0_in));
  FDRE \patch_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[15]),
        .R(p_0_in));
  FDRE \patch_reg_reg[160] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[160]),
        .R(p_0_in));
  FDRE \patch_reg_reg[161] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[161]),
        .R(p_0_in));
  FDRE \patch_reg_reg[162] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[162]),
        .R(p_0_in));
  FDRE \patch_reg_reg[163] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[163]),
        .R(p_0_in));
  FDRE \patch_reg_reg[164] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[164]),
        .R(p_0_in));
  FDRE \patch_reg_reg[165] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[165]),
        .R(p_0_in));
  FDRE \patch_reg_reg[166] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[166]),
        .R(p_0_in));
  FDRE \patch_reg_reg[167] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[167]),
        .R(p_0_in));
  FDRE \patch_reg_reg[168] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[168]),
        .R(p_0_in));
  FDRE \patch_reg_reg[169] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[169]),
        .R(p_0_in));
  FDRE \patch_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[16]),
        .R(p_0_in));
  FDRE \patch_reg_reg[170] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[170]),
        .R(p_0_in));
  FDRE \patch_reg_reg[171] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[171]),
        .R(p_0_in));
  FDRE \patch_reg_reg[172] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[172]),
        .R(p_0_in));
  FDRE \patch_reg_reg[173] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[173]),
        .R(p_0_in));
  FDRE \patch_reg_reg[174] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[174]),
        .R(p_0_in));
  FDRE \patch_reg_reg[175] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[175]),
        .R(p_0_in));
  FDRE \patch_reg_reg[176] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[176]),
        .R(p_0_in));
  FDRE \patch_reg_reg[177] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[177]),
        .R(p_0_in));
  FDRE \patch_reg_reg[178] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[178]),
        .R(p_0_in));
  FDRE \patch_reg_reg[179] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[179]),
        .R(p_0_in));
  FDRE \patch_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[17]),
        .R(p_0_in));
  FDRE \patch_reg_reg[180] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[180]),
        .R(p_0_in));
  FDRE \patch_reg_reg[181] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[181]),
        .R(p_0_in));
  FDRE \patch_reg_reg[182] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[182]),
        .R(p_0_in));
  FDRE \patch_reg_reg[183] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[183]),
        .R(p_0_in));
  FDRE \patch_reg_reg[184] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[184]),
        .R(p_0_in));
  FDRE \patch_reg_reg[185] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[185]),
        .R(p_0_in));
  FDRE \patch_reg_reg[186] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[186]),
        .R(p_0_in));
  FDRE \patch_reg_reg[187] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[187]),
        .R(p_0_in));
  FDRE \patch_reg_reg[188] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[188]),
        .R(p_0_in));
  FDRE \patch_reg_reg[189] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[189]),
        .R(p_0_in));
  FDRE \patch_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[18]),
        .R(p_0_in));
  FDRE \patch_reg_reg[190] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[190]),
        .R(p_0_in));
  FDRE \patch_reg_reg[191] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[191]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[191]),
        .R(p_0_in));
  FDRE \patch_reg_reg[192] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[192]),
        .R(p_0_in));
  FDRE \patch_reg_reg[193] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[193]),
        .R(p_0_in));
  FDRE \patch_reg_reg[194] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[194]),
        .R(p_0_in));
  FDRE \patch_reg_reg[195] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[195]),
        .R(p_0_in));
  FDRE \patch_reg_reg[196] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[196]),
        .R(p_0_in));
  FDRE \patch_reg_reg[197] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[197]),
        .R(p_0_in));
  FDRE \patch_reg_reg[198] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[198]),
        .R(p_0_in));
  FDRE \patch_reg_reg[199] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[199]),
        .R(p_0_in));
  FDRE \patch_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[19]),
        .R(p_0_in));
  FDRE \patch_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[1]),
        .R(p_0_in));
  FDRE \patch_reg_reg[200] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[200]),
        .R(p_0_in));
  FDRE \patch_reg_reg[201] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[201]),
        .R(p_0_in));
  FDRE \patch_reg_reg[202] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[202]),
        .R(p_0_in));
  FDRE \patch_reg_reg[203] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[203]),
        .R(p_0_in));
  FDRE \patch_reg_reg[204] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[204]),
        .R(p_0_in));
  FDRE \patch_reg_reg[205] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[205]),
        .R(p_0_in));
  FDRE \patch_reg_reg[206] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[206]),
        .R(p_0_in));
  FDRE \patch_reg_reg[207] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[207]),
        .R(p_0_in));
  FDRE \patch_reg_reg[208] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[208]),
        .R(p_0_in));
  FDRE \patch_reg_reg[209] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[209]),
        .R(p_0_in));
  FDRE \patch_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[20]),
        .R(p_0_in));
  FDRE \patch_reg_reg[210] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[210]),
        .R(p_0_in));
  FDRE \patch_reg_reg[211] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[211]),
        .R(p_0_in));
  FDRE \patch_reg_reg[212] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[212]),
        .R(p_0_in));
  FDRE \patch_reg_reg[213] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[213]),
        .R(p_0_in));
  FDRE \patch_reg_reg[214] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[214]),
        .R(p_0_in));
  FDRE \patch_reg_reg[215] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[215]),
        .R(p_0_in));
  FDRE \patch_reg_reg[216] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[216]),
        .R(p_0_in));
  FDRE \patch_reg_reg[217] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[217]),
        .R(p_0_in));
  FDRE \patch_reg_reg[218] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[218]),
        .R(p_0_in));
  FDRE \patch_reg_reg[219] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[219]),
        .R(p_0_in));
  FDRE \patch_reg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[21]),
        .R(p_0_in));
  FDRE \patch_reg_reg[220] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[220]),
        .R(p_0_in));
  FDRE \patch_reg_reg[221] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[221]),
        .R(p_0_in));
  FDRE \patch_reg_reg[222] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[222]),
        .R(p_0_in));
  FDRE \patch_reg_reg[223] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[223]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[223]),
        .R(p_0_in));
  FDRE \patch_reg_reg[224] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[224]),
        .R(p_0_in));
  FDRE \patch_reg_reg[225] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[225]),
        .R(p_0_in));
  FDRE \patch_reg_reg[226] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[226]),
        .R(p_0_in));
  FDRE \patch_reg_reg[227] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[227]),
        .R(p_0_in));
  FDRE \patch_reg_reg[228] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[228]),
        .R(p_0_in));
  FDRE \patch_reg_reg[229] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[229]),
        .R(p_0_in));
  FDRE \patch_reg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[22]),
        .R(p_0_in));
  FDRE \patch_reg_reg[230] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[230]),
        .R(p_0_in));
  FDRE \patch_reg_reg[231] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[231]),
        .R(p_0_in));
  FDRE \patch_reg_reg[232] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[232]),
        .R(p_0_in));
  FDRE \patch_reg_reg[233] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[233]),
        .R(p_0_in));
  FDRE \patch_reg_reg[234] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[234]),
        .R(p_0_in));
  FDRE \patch_reg_reg[235] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[235]),
        .R(p_0_in));
  FDRE \patch_reg_reg[236] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[236]),
        .R(p_0_in));
  FDRE \patch_reg_reg[237] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[237]),
        .R(p_0_in));
  FDRE \patch_reg_reg[238] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[238]),
        .R(p_0_in));
  FDRE \patch_reg_reg[239] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[239]),
        .R(p_0_in));
  FDRE \patch_reg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[23]),
        .R(p_0_in));
  FDRE \patch_reg_reg[240] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[240]),
        .R(p_0_in));
  FDRE \patch_reg_reg[241] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[241]),
        .R(p_0_in));
  FDRE \patch_reg_reg[242] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[242]),
        .R(p_0_in));
  FDRE \patch_reg_reg[243] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[243]),
        .R(p_0_in));
  FDRE \patch_reg_reg[244] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[244]),
        .R(p_0_in));
  FDRE \patch_reg_reg[245] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[245]),
        .R(p_0_in));
  FDRE \patch_reg_reg[246] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[246]),
        .R(p_0_in));
  FDRE \patch_reg_reg[247] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[247]),
        .R(p_0_in));
  FDRE \patch_reg_reg[248] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[248]),
        .R(p_0_in));
  FDRE \patch_reg_reg[249] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[249]),
        .R(p_0_in));
  FDRE \patch_reg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[24]),
        .R(p_0_in));
  FDRE \patch_reg_reg[250] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[250]),
        .R(p_0_in));
  FDRE \patch_reg_reg[251] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[251]),
        .R(p_0_in));
  FDRE \patch_reg_reg[252] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[252]),
        .R(p_0_in));
  FDRE \patch_reg_reg[253] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[253]),
        .R(p_0_in));
  FDRE \patch_reg_reg[254] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[254]),
        .R(p_0_in));
  FDRE \patch_reg_reg[255] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[255]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[255]),
        .R(p_0_in));
  FDRE \patch_reg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[25]),
        .R(p_0_in));
  FDRE \patch_reg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[26]),
        .R(p_0_in));
  FDRE \patch_reg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[27]),
        .R(p_0_in));
  FDRE \patch_reg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[28]),
        .R(p_0_in));
  FDRE \patch_reg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[29]),
        .R(p_0_in));
  FDRE \patch_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[2]),
        .R(p_0_in));
  FDRE \patch_reg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[30]),
        .R(p_0_in));
  FDRE \patch_reg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[31]),
        .R(p_0_in));
  FDRE \patch_reg_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[32]),
        .R(p_0_in));
  FDRE \patch_reg_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[33]),
        .R(p_0_in));
  FDRE \patch_reg_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[34]),
        .R(p_0_in));
  FDRE \patch_reg_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[35]),
        .R(p_0_in));
  FDRE \patch_reg_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[36]),
        .R(p_0_in));
  FDRE \patch_reg_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[37]),
        .R(p_0_in));
  FDRE \patch_reg_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[38]),
        .R(p_0_in));
  FDRE \patch_reg_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[39]),
        .R(p_0_in));
  FDRE \patch_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[3]),
        .R(p_0_in));
  FDRE \patch_reg_reg[40] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[40]),
        .R(p_0_in));
  FDRE \patch_reg_reg[41] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[41]),
        .R(p_0_in));
  FDRE \patch_reg_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[42]),
        .R(p_0_in));
  FDRE \patch_reg_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[43]),
        .R(p_0_in));
  FDRE \patch_reg_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[44]),
        .R(p_0_in));
  FDRE \patch_reg_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[45]),
        .R(p_0_in));
  FDRE \patch_reg_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[46]),
        .R(p_0_in));
  FDRE \patch_reg_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[47]),
        .R(p_0_in));
  FDRE \patch_reg_reg[48] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[48]),
        .R(p_0_in));
  FDRE \patch_reg_reg[49] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[49]),
        .R(p_0_in));
  FDRE \patch_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[4]),
        .R(p_0_in));
  FDRE \patch_reg_reg[50] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[50]),
        .R(p_0_in));
  FDRE \patch_reg_reg[51] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[51]),
        .R(p_0_in));
  FDRE \patch_reg_reg[52] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[52]),
        .R(p_0_in));
  FDRE \patch_reg_reg[53] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[53]),
        .R(p_0_in));
  FDRE \patch_reg_reg[54] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[54]),
        .R(p_0_in));
  FDRE \patch_reg_reg[55] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[55]),
        .R(p_0_in));
  FDRE \patch_reg_reg[56] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[56]),
        .R(p_0_in));
  FDRE \patch_reg_reg[57] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[57]),
        .R(p_0_in));
  FDRE \patch_reg_reg[58] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[58]),
        .R(p_0_in));
  FDRE \patch_reg_reg[59] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[59]),
        .R(p_0_in));
  FDRE \patch_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[5]),
        .R(p_0_in));
  FDRE \patch_reg_reg[60] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[60]),
        .R(p_0_in));
  FDRE \patch_reg_reg[61] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[61]),
        .R(p_0_in));
  FDRE \patch_reg_reg[62] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[62]),
        .R(p_0_in));
  FDRE \patch_reg_reg[63] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[63]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[63]),
        .R(p_0_in));
  FDRE \patch_reg_reg[64] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[64]),
        .R(p_0_in));
  FDRE \patch_reg_reg[65] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[65]),
        .R(p_0_in));
  FDRE \patch_reg_reg[66] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[66]),
        .R(p_0_in));
  FDRE \patch_reg_reg[67] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[67]),
        .R(p_0_in));
  FDRE \patch_reg_reg[68] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(patch_reg[68]),
        .R(p_0_in));
  FDRE \patch_reg_reg[69] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(patch_reg[69]),
        .R(p_0_in));
  FDRE \patch_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[6]),
        .R(p_0_in));
  FDRE \patch_reg_reg[70] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(patch_reg[70]),
        .R(p_0_in));
  FDRE \patch_reg_reg[71] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[71]),
        .R(p_0_in));
  FDRE \patch_reg_reg[72] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[72]),
        .R(p_0_in));
  FDRE \patch_reg_reg[73] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[73]),
        .R(p_0_in));
  FDRE \patch_reg_reg[74] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(patch_reg[74]),
        .R(p_0_in));
  FDRE \patch_reg_reg[75] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(patch_reg[75]),
        .R(p_0_in));
  FDRE \patch_reg_reg[76] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(patch_reg[76]),
        .R(p_0_in));
  FDRE \patch_reg_reg[77] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(patch_reg[77]),
        .R(p_0_in));
  FDRE \patch_reg_reg[78] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(patch_reg[78]),
        .R(p_0_in));
  FDRE \patch_reg_reg[79] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(patch_reg[79]),
        .R(p_0_in));
  FDRE \patch_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(patch_reg[7]),
        .R(p_0_in));
  FDRE \patch_reg_reg[80] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(patch_reg[80]),
        .R(p_0_in));
  FDRE \patch_reg_reg[81] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(patch_reg[81]),
        .R(p_0_in));
  FDRE \patch_reg_reg[82] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(patch_reg[82]),
        .R(p_0_in));
  FDRE \patch_reg_reg[83] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(patch_reg[83]),
        .R(p_0_in));
  FDRE \patch_reg_reg[84] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(patch_reg[84]),
        .R(p_0_in));
  FDRE \patch_reg_reg[85] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(patch_reg[85]),
        .R(p_0_in));
  FDRE \patch_reg_reg[86] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(patch_reg[86]),
        .R(p_0_in));
  FDRE \patch_reg_reg[87] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(patch_reg[87]),
        .R(p_0_in));
  FDRE \patch_reg_reg[88] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(patch_reg[88]),
        .R(p_0_in));
  FDRE \patch_reg_reg[89] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(patch_reg[89]),
        .R(p_0_in));
  FDRE \patch_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(patch_reg[8]),
        .R(p_0_in));
  FDRE \patch_reg_reg[90] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(patch_reg[90]),
        .R(p_0_in));
  FDRE \patch_reg_reg[91] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(patch_reg[91]),
        .R(p_0_in));
  FDRE \patch_reg_reg[92] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(patch_reg[92]),
        .R(p_0_in));
  FDRE \patch_reg_reg[93] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(patch_reg[93]),
        .R(p_0_in));
  FDRE \patch_reg_reg[94] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(patch_reg[94]),
        .R(p_0_in));
  FDRE \patch_reg_reg[95] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[95]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(patch_reg[95]),
        .R(p_0_in));
  FDRE \patch_reg_reg[96] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(patch_reg[96]),
        .R(p_0_in));
  FDRE \patch_reg_reg[97] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(patch_reg[97]),
        .R(p_0_in));
  FDRE \patch_reg_reg[98] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(patch_reg[98]),
        .R(p_0_in));
  FDRE \patch_reg_reg[99] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[127]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(patch_reg[99]),
        .R(p_0_in));
  FDRE \patch_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\patch_reg[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(patch_reg[9]),
        .R(p_0_in));
  FDRE \pred_latch_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(pred_class_wire[0]),
        .Q(pred_latch[0]),
        .R(p_0_in));
  FDRE \pred_latch_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(pred_class_wire[1]),
        .Q(pred_latch[1]),
        .R(p_0_in));
  FDRE \pred_latch_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(pred_class_wire[2]),
        .Q(pred_latch[2]),
        .R(p_0_in));
  FDRE \pred_latch_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(pred_class_wire[3]),
        .Q(pred_latch[3]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [0]),
        .Q(\score_latch_reg[0] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [10]),
        .Q(\score_latch_reg[0] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [11]),
        .Q(\score_latch_reg[0] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [12]),
        .Q(\score_latch_reg[0] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [13]),
        .Q(\score_latch_reg[0] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [14]),
        .Q(\score_latch_reg[0] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [15]),
        .Q(\score_latch_reg[0] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [1]),
        .Q(\score_latch_reg[0] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [2]),
        .Q(\score_latch_reg[0] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [3]),
        .Q(\score_latch_reg[0] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [4]),
        .Q(\score_latch_reg[0] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [5]),
        .Q(\score_latch_reg[0] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [6]),
        .Q(\score_latch_reg[0] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [7]),
        .Q(\score_latch_reg[0] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [8]),
        .Q(\score_latch_reg[0] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[0]_0 [9]),
        .Q(\score_latch_reg[0] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [0]),
        .Q(\score_latch_reg[1] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [10]),
        .Q(\score_latch_reg[1] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [11]),
        .Q(\score_latch_reg[1] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [12]),
        .Q(\score_latch_reg[1] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [13]),
        .Q(\score_latch_reg[1] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [14]),
        .Q(\score_latch_reg[1] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [15]),
        .Q(\score_latch_reg[1] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [1]),
        .Q(\score_latch_reg[1] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [2]),
        .Q(\score_latch_reg[1] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [3]),
        .Q(\score_latch_reg[1] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [4]),
        .Q(\score_latch_reg[1] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [5]),
        .Q(\score_latch_reg[1] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [6]),
        .Q(\score_latch_reg[1] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [7]),
        .Q(\score_latch_reg[1] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [8]),
        .Q(\score_latch_reg[1] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[1]_2 [9]),
        .Q(\score_latch_reg[1] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [0]),
        .Q(\score_latch_reg[2] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [10]),
        .Q(\score_latch_reg[2] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [11]),
        .Q(\score_latch_reg[2] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [12]),
        .Q(\score_latch_reg[2] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [13]),
        .Q(\score_latch_reg[2] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [14]),
        .Q(\score_latch_reg[2] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [15]),
        .Q(\score_latch_reg[2] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [1]),
        .Q(\score_latch_reg[2] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [2]),
        .Q(\score_latch_reg[2] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [3]),
        .Q(\score_latch_reg[2] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [4]),
        .Q(\score_latch_reg[2] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [5]),
        .Q(\score_latch_reg[2] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [6]),
        .Q(\score_latch_reg[2] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [7]),
        .Q(\score_latch_reg[2] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [8]),
        .Q(\score_latch_reg[2] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[2][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[2]_4 [9]),
        .Q(\score_latch_reg[2] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [0]),
        .Q(\score_latch_reg[3] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [10]),
        .Q(\score_latch_reg[3] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [11]),
        .Q(\score_latch_reg[3] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [12]),
        .Q(\score_latch_reg[3] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [13]),
        .Q(\score_latch_reg[3] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [14]),
        .Q(\score_latch_reg[3] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [15]),
        .Q(\score_latch_reg[3] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [1]),
        .Q(\score_latch_reg[3] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [2]),
        .Q(\score_latch_reg[3] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [3]),
        .Q(\score_latch_reg[3] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [4]),
        .Q(\score_latch_reg[3] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [5]),
        .Q(\score_latch_reg[3] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [6]),
        .Q(\score_latch_reg[3] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [7]),
        .Q(\score_latch_reg[3] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [8]),
        .Q(\score_latch_reg[3] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[3][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[3]_6 [9]),
        .Q(\score_latch_reg[3] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [0]),
        .Q(\score_latch_reg[4] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [10]),
        .Q(\score_latch_reg[4] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [11]),
        .Q(\score_latch_reg[4] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [12]),
        .Q(\score_latch_reg[4] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [13]),
        .Q(\score_latch_reg[4] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [14]),
        .Q(\score_latch_reg[4] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [15]),
        .Q(\score_latch_reg[4] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [1]),
        .Q(\score_latch_reg[4] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [2]),
        .Q(\score_latch_reg[4] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [3]),
        .Q(\score_latch_reg[4] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [4]),
        .Q(\score_latch_reg[4] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [5]),
        .Q(\score_latch_reg[4] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [6]),
        .Q(\score_latch_reg[4] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [7]),
        .Q(\score_latch_reg[4] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [8]),
        .Q(\score_latch_reg[4] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[4][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[4]_8 [9]),
        .Q(\score_latch_reg[4] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [0]),
        .Q(\score_latch_reg[5] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [10]),
        .Q(\score_latch_reg[5] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [11]),
        .Q(\score_latch_reg[5] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [12]),
        .Q(\score_latch_reg[5] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [13]),
        .Q(\score_latch_reg[5] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [14]),
        .Q(\score_latch_reg[5] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [15]),
        .Q(\score_latch_reg[5] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [1]),
        .Q(\score_latch_reg[5] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [2]),
        .Q(\score_latch_reg[5] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [3]),
        .Q(\score_latch_reg[5] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [4]),
        .Q(\score_latch_reg[5] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [5]),
        .Q(\score_latch_reg[5] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [6]),
        .Q(\score_latch_reg[5] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [7]),
        .Q(\score_latch_reg[5] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [8]),
        .Q(\score_latch_reg[5] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[5][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[5]_10 [9]),
        .Q(\score_latch_reg[5] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [0]),
        .Q(\score_latch_reg[6] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [10]),
        .Q(\score_latch_reg[6] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [11]),
        .Q(\score_latch_reg[6] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [12]),
        .Q(\score_latch_reg[6] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [13]),
        .Q(\score_latch_reg[6] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [14]),
        .Q(\score_latch_reg[6] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [15]),
        .Q(\score_latch_reg[6] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [1]),
        .Q(\score_latch_reg[6] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [2]),
        .Q(\score_latch_reg[6] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [3]),
        .Q(\score_latch_reg[6] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [4]),
        .Q(\score_latch_reg[6] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [5]),
        .Q(\score_latch_reg[6] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [6]),
        .Q(\score_latch_reg[6] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [7]),
        .Q(\score_latch_reg[6] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [8]),
        .Q(\score_latch_reg[6] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[6][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[6]_12 [9]),
        .Q(\score_latch_reg[6] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [0]),
        .Q(\score_latch_reg[7] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [10]),
        .Q(\score_latch_reg[7] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [11]),
        .Q(\score_latch_reg[7] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [12]),
        .Q(\score_latch_reg[7] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [13]),
        .Q(\score_latch_reg[7] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [14]),
        .Q(\score_latch_reg[7] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [15]),
        .Q(\score_latch_reg[7] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [1]),
        .Q(\score_latch_reg[7] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [2]),
        .Q(\score_latch_reg[7] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [3]),
        .Q(\score_latch_reg[7] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [4]),
        .Q(\score_latch_reg[7] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [5]),
        .Q(\score_latch_reg[7] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [6]),
        .Q(\score_latch_reg[7] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [7]),
        .Q(\score_latch_reg[7] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [8]),
        .Q(\score_latch_reg[7] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[7][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[7]_14 [9]),
        .Q(\score_latch_reg[7] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [0]),
        .Q(\score_latch_reg[8] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [10]),
        .Q(\score_latch_reg[8] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [11]),
        .Q(\score_latch_reg[8] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [12]),
        .Q(\score_latch_reg[8] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [13]),
        .Q(\score_latch_reg[8] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [14]),
        .Q(\score_latch_reg[8] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [15]),
        .Q(\score_latch_reg[8] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [1]),
        .Q(\score_latch_reg[8] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [2]),
        .Q(\score_latch_reg[8] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [3]),
        .Q(\score_latch_reg[8] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [4]),
        .Q(\score_latch_reg[8] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [5]),
        .Q(\score_latch_reg[8] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [6]),
        .Q(\score_latch_reg[8] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [7]),
        .Q(\score_latch_reg[8] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [8]),
        .Q(\score_latch_reg[8] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[8][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[8]_16 [9]),
        .Q(\score_latch_reg[8] [9]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [0]),
        .Q(\score_latch_reg[9] [0]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][10] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [10]),
        .Q(\score_latch_reg[9] [10]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][11] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [11]),
        .Q(\score_latch_reg[9] [11]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][12] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [12]),
        .Q(\score_latch_reg[9] [12]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][13] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [13]),
        .Q(\score_latch_reg[9] [13]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][14] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [14]),
        .Q(\score_latch_reg[9] [14]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][15] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [15]),
        .Q(\score_latch_reg[9] [15]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [1]),
        .Q(\score_latch_reg[9] [1]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [2]),
        .Q(\score_latch_reg[9] [2]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [3]),
        .Q(\score_latch_reg[9] [3]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][4] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [4]),
        .Q(\score_latch_reg[9] [4]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][5] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [5]),
        .Q(\score_latch_reg[9] [5]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][6] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [6]),
        .Q(\score_latch_reg[9] [6]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][7] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [7]),
        .Q(\score_latch_reg[9] [7]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][8] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [8]),
        .Q(\score_latch_reg[9] [8]),
        .R(p_0_in));
  FDRE \score_latch_reg[9][9] 
       (.C(S_AXI_ACLK),
        .CE(pred_latch_20),
        .D(\scores[9]_18 [9]),
        .Q(\score_latch_reg[9] [9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    start_reg_i_1
       (.I0(S_AXI_AWADDR[5]),
        .I1(S_AXI_ARESETN),
        .I2(S_AXI_AWADDR[2]),
        .I3(S_AXI_WDATA[0]),
        .I4(start_reg_i_2_n_0),
        .I5(start_reg_i_3_n_0),
        .O(start_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_reg_i_2
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWADDR[4]),
        .O(start_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    start_reg_i_3
       (.I0(S_AXI_AWADDR[6]),
        .I1(aw_en_reg_n_0),
        .I2(start_reg_i_4_n_0),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWADDR[1]),
        .I5(S_AXI_AWADDR[0]),
        .O(start_reg_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    start_reg_i_4
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(start_reg_i_4_n_0));
  FDRE start_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start_reg_i_1_n_0),
        .Q(start_reg_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top tm_inst
       (.E(pred_latch_20),
        .Q(pred_class_wire),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .done_d(done_d),
        .done_latch(done_latch),
        .done_wire(done_wire),
        .mask_addr_out(mask_addr_out),
        .mask_dout_in(mask_dout_in),
        .out(\scores[1]_2 ),
        .p_0_in(p_0_in),
        .\scores[0] (\scores[0]_0 ),
        .\scores[1][15]_i_16_0 (patch_reg),
        .\scores[2] (\scores[2]_4 ),
        .\scores[3] (\scores[3]_6 ),
        .\scores[4] (\scores[4]_8 ),
        .\scores[5] (\scores[5]_10 ),
        .\scores[6] (\scores[6]_12 ),
        .\scores[7] (\scores[7]_14 ),
        .\scores[8] (\scores[8]_16 ),
        .\scores[9] (\scores[9]_18 ),
        .start_reg_reg(tm_inst_n_162),
        .\state_reg[0]_0 (start_reg_reg_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top
   (out,
    \scores[2] ,
    \scores[3] ,
    \scores[4] ,
    \scores[5] ,
    \scores[6] ,
    \scores[7] ,
    \scores[8] ,
    \scores[9] ,
    \scores[0] ,
    E,
    done_wire,
    start_reg_reg,
    mask_addr_out,
    Q,
    \state_reg[0]_0 ,
    done_d,
    S_AXI_ARESETN,
    done_latch,
    S_AXI_ACLK,
    p_0_in,
    \scores[1][15]_i_16_0 ,
    mask_dout_in);
  output [15:0]out;
  output [15:0]\scores[2] ;
  output [15:0]\scores[3] ;
  output [15:0]\scores[4] ;
  output [15:0]\scores[5] ;
  output [15:0]\scores[6] ;
  output [15:0]\scores[7] ;
  output [15:0]\scores[8] ;
  output [15:0]\scores[9] ;
  output [15:0]\scores[0] ;
  output [0:0]E;
  output done_wire;
  output start_reg_reg;
  output [13:0]mask_addr_out;
  output [3:0]Q;
  input \state_reg[0]_0 ;
  input done_d;
  input S_AXI_ARESETN;
  input done_latch;
  input S_AXI_ACLK;
  input p_0_in;
  input [255:0]\scores[1][15]_i_16_0 ;
  input [255:0]mask_dout_in;

  wire [0:0]E;
  wire [3:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire \class_idx[0]_i_1_n_0 ;
  wire \class_idx[1]_i_1_n_0 ;
  wire \class_idx[2]_i_1_n_0 ;
  wire \class_idx[3]_i_1_n_0 ;
  wire \class_idx[3]_i_2_n_0 ;
  wire clause_act;
  wire \clause_cnt[10]_i_1_n_0 ;
  wire \clause_cnt[10]_i_2_n_0 ;
  wire \clause_cnt[1]_i_1_n_0 ;
  wire \clause_cnt[2]_i_1_n_0 ;
  wire \clause_cnt[3]_i_1_n_0 ;
  wire \clause_cnt[4]_i_1_n_0 ;
  wire \clause_cnt[5]_i_1_n_0 ;
  wire \clause_cnt[5]_i_2_n_0 ;
  wire \clause_cnt[6]_i_1_n_0 ;
  wire \clause_cnt[7]_i_1_n_0 ;
  wire \clause_cnt[8]_i_2_n_0 ;
  wire \clause_cnt[9]_i_1_n_0 ;
  wire \clause_cnt_reg_n_0_[0] ;
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
  wire clause_is_odd_i_1_n_0;
  wire \cmp_idx[0]_i_1_n_0 ;
  wire \cmp_idx[1]_i_1_n_0 ;
  wire \cmp_idx[2]_i_1_n_0 ;
  wire \cmp_idx[3]_i_1_n_0 ;
  wire \cmp_idx[3]_i_2_n_0 ;
  wire \cmp_idx[3]_i_3_n_0 ;
  wire done_d;
  wire done_i_1_n_0;
  wire done_latch;
  wire done_wire;
  wire [13:1]mask_addr0__0;
  wire mask_addr0_n_100;
  wire mask_addr0_n_101;
  wire mask_addr0_n_102;
  wire mask_addr0_n_103;
  wire mask_addr0_n_104;
  wire mask_addr0_n_105;
  wire mask_addr0_n_90;
  wire mask_addr0_n_91;
  wire mask_addr0_n_92;
  wire mask_addr0_n_93;
  wire mask_addr0_n_94;
  wire mask_addr0_n_95;
  wire mask_addr0_n_96;
  wire mask_addr0_n_97;
  wire mask_addr0_n_98;
  wire mask_addr0_n_99;
  wire \mask_addr[0]_i_1_n_0 ;
  wire \mask_addr[10]_i_1_n_0 ;
  wire \mask_addr[11]_i_1_n_0 ;
  wire \mask_addr[12]_i_1_n_0 ;
  wire \mask_addr[13]_i_1_n_0 ;
  wire \mask_addr[13]_i_2_n_0 ;
  wire \mask_addr[13]_i_3_n_0 ;
  wire \mask_addr[13]_i_4_n_0 ;
  wire \mask_addr[13]_i_6_n_0 ;
  wire \mask_addr[13]_i_7_n_0 ;
  wire \mask_addr[1]_i_1_n_0 ;
  wire \mask_addr[2]_i_1_n_0 ;
  wire \mask_addr[3]_i_1_n_0 ;
  wire \mask_addr[4]_i_1_n_0 ;
  wire \mask_addr[5]_i_1_n_0 ;
  wire \mask_addr[6]_i_1_n_0 ;
  wire \mask_addr[7]_i_1_n_0 ;
  wire \mask_addr[8]_i_1_n_0 ;
  wire \mask_addr[9]_i_1_n_0 ;
  wire [13:0]mask_addr_out;
  wire \mask_addr_reg[12]_i_2_n_0 ;
  wire \mask_addr_reg[12]_i_2_n_1 ;
  wire \mask_addr_reg[12]_i_2_n_2 ;
  wire \mask_addr_reg[12]_i_2_n_3 ;
  wire \mask_addr_reg[4]_i_2_n_0 ;
  wire \mask_addr_reg[4]_i_2_n_1 ;
  wire \mask_addr_reg[4]_i_2_n_2 ;
  wire \mask_addr_reg[4]_i_2_n_3 ;
  wire \mask_addr_reg[8]_i_2_n_0 ;
  wire \mask_addr_reg[8]_i_2_n_1 ;
  wire \mask_addr_reg[8]_i_2_n_2 ;
  wire \mask_addr_reg[8]_i_2_n_3 ;
  wire [255:0]mask_dout_in;
  wire [15:0]max_score;
  wire \max_score[0]_i_2_n_0 ;
  wire \max_score[0]_i_3_n_0 ;
  wire \max_score[0]_i_4_n_0 ;
  wire \max_score[10]_i_2_n_0 ;
  wire \max_score[10]_i_3_n_0 ;
  wire \max_score[10]_i_4_n_0 ;
  wire \max_score[11]_i_2_n_0 ;
  wire \max_score[11]_i_3_n_0 ;
  wire \max_score[11]_i_4_n_0 ;
  wire \max_score[12]_i_2_n_0 ;
  wire \max_score[12]_i_3_n_0 ;
  wire \max_score[12]_i_4_n_0 ;
  wire \max_score[13]_i_2_n_0 ;
  wire \max_score[13]_i_3_n_0 ;
  wire \max_score[13]_i_4_n_0 ;
  wire \max_score[14]_i_2_n_0 ;
  wire \max_score[14]_i_3_n_0 ;
  wire \max_score[14]_i_4_n_0 ;
  wire \max_score[15]_i_10_n_0 ;
  wire \max_score[15]_i_11_n_0 ;
  wire \max_score[15]_i_12_n_0 ;
  wire \max_score[15]_i_13_n_0 ;
  wire \max_score[15]_i_14_n_0 ;
  wire \max_score[15]_i_15_n_0 ;
  wire \max_score[15]_i_16_n_0 ;
  wire \max_score[15]_i_17_n_0 ;
  wire \max_score[15]_i_18_n_0 ;
  wire \max_score[15]_i_19_n_0 ;
  wire \max_score[15]_i_1_n_0 ;
  wire \max_score[15]_i_20_n_0 ;
  wire \max_score[15]_i_21_n_0 ;
  wire \max_score[15]_i_22_n_0 ;
  wire \max_score[15]_i_23_n_0 ;
  wire \max_score[15]_i_24_n_0 ;
  wire \max_score[15]_i_4_n_0 ;
  wire \max_score[15]_i_6_n_0 ;
  wire \max_score[15]_i_7_n_0 ;
  wire \max_score[15]_i_8_n_0 ;
  wire \max_score[15]_i_9_n_0 ;
  wire \max_score[1]_i_2_n_0 ;
  wire \max_score[1]_i_3_n_0 ;
  wire \max_score[1]_i_4_n_0 ;
  wire \max_score[2]_i_2_n_0 ;
  wire \max_score[2]_i_3_n_0 ;
  wire \max_score[2]_i_4_n_0 ;
  wire \max_score[3]_i_2_n_0 ;
  wire \max_score[3]_i_3_n_0 ;
  wire \max_score[3]_i_4_n_0 ;
  wire \max_score[4]_i_2_n_0 ;
  wire \max_score[4]_i_3_n_0 ;
  wire \max_score[4]_i_4_n_0 ;
  wire \max_score[5]_i_2_n_0 ;
  wire \max_score[5]_i_3_n_0 ;
  wire \max_score[5]_i_4_n_0 ;
  wire \max_score[6]_i_2_n_0 ;
  wire \max_score[6]_i_3_n_0 ;
  wire \max_score[6]_i_4_n_0 ;
  wire \max_score[7]_i_2_n_0 ;
  wire \max_score[7]_i_3_n_0 ;
  wire \max_score[7]_i_4_n_0 ;
  wire \max_score[8]_i_2_n_0 ;
  wire \max_score[8]_i_3_n_0 ;
  wire \max_score[8]_i_4_n_0 ;
  wire \max_score[9]_i_2_n_0 ;
  wire \max_score[9]_i_3_n_0 ;
  wire \max_score[9]_i_4_n_0 ;
  wire \max_score_reg[15]_i_3_n_0 ;
  wire \max_score_reg[15]_i_3_n_1 ;
  wire \max_score_reg[15]_i_3_n_2 ;
  wire \max_score_reg[15]_i_3_n_3 ;
  wire \max_score_reg[15]_i_5_n_0 ;
  wire \max_score_reg[15]_i_5_n_1 ;
  wire \max_score_reg[15]_i_5_n_2 ;
  wire \max_score_reg[15]_i_5_n_3 ;
  (* RTL_KEEP = "true" *) wire [15:0]out;
  wire p_0_in;
  wire [15:1]p_0_in1_in;
  wire [8:0]p_0_in_0;
  wire [15:0]p_1_in;
  wire [15:1]p_2_in;
  wire \pred_class[0]_i_1_n_0 ;
  wire \pred_class[1]_i_1_n_0 ;
  wire \pred_class[2]_i_1_n_0 ;
  wire \pred_class[3]_i_1_n_0 ;
  wire [15:0]scores;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[0] ;
  wire \scores[0][0]_i_1_n_0 ;
  wire \scores[0][10]_i_1_n_0 ;
  wire \scores[0][11]_i_1_n_0 ;
  wire \scores[0][12]_i_1_n_0 ;
  wire \scores[0][13]_i_1_n_0 ;
  wire \scores[0][14]_i_1_n_0 ;
  wire \scores[0][15]_i_1_n_0 ;
  wire \scores[0][1]_i_1_n_0 ;
  wire \scores[0][2]_i_1_n_0 ;
  wire \scores[0][3]_i_1_n_0 ;
  wire \scores[0][4]_i_1_n_0 ;
  wire \scores[0][5]_i_1_n_0 ;
  wire \scores[0][6]_i_1_n_0 ;
  wire \scores[0][7]_i_1_n_0 ;
  wire \scores[0][8]_i_1_n_0 ;
  wire \scores[0][9]_i_1_n_0 ;
  wire \scores[1][0]_i_1_n_0 ;
  wire \scores[1][0]_i_3_n_0 ;
  wire \scores[1][0]_i_4_n_0 ;
  wire \scores[1][0]_i_5_n_0 ;
  wire \scores[1][10]_i_1_n_0 ;
  wire \scores[1][10]_i_2_n_0 ;
  wire \scores[1][11]_i_1_n_0 ;
  wire \scores[1][11]_i_2_n_0 ;
  wire \scores[1][12]_i_10_n_0 ;
  wire \scores[1][12]_i_11_n_0 ;
  wire \scores[1][12]_i_12_n_0 ;
  wire \scores[1][12]_i_13_n_0 ;
  wire \scores[1][12]_i_14_n_0 ;
  wire \scores[1][12]_i_15_n_0 ;
  wire \scores[1][12]_i_16_n_0 ;
  wire \scores[1][12]_i_17_n_0 ;
  wire \scores[1][12]_i_18_n_0 ;
  wire \scores[1][12]_i_19_n_0 ;
  wire \scores[1][12]_i_1_n_0 ;
  wire \scores[1][12]_i_20_n_0 ;
  wire \scores[1][12]_i_21_n_0 ;
  wire \scores[1][12]_i_22_n_0 ;
  wire \scores[1][12]_i_23_n_0 ;
  wire \scores[1][12]_i_24_n_0 ;
  wire \scores[1][12]_i_2_n_0 ;
  wire \scores[1][12]_i_9_n_0 ;
  wire \scores[1][13]_i_1_n_0 ;
  wire \scores[1][13]_i_2_n_0 ;
  wire \scores[1][14]_i_1_n_0 ;
  wire \scores[1][14]_i_2_n_0 ;
  wire \scores[1][15]_i_100_n_0 ;
  wire \scores[1][15]_i_101_n_0 ;
  wire \scores[1][15]_i_102_n_0 ;
  wire \scores[1][15]_i_103_n_0 ;
  wire \scores[1][15]_i_104_n_0 ;
  wire \scores[1][15]_i_105_n_0 ;
  wire \scores[1][15]_i_106_n_0 ;
  wire \scores[1][15]_i_107_n_0 ;
  wire \scores[1][15]_i_108_n_0 ;
  wire \scores[1][15]_i_109_n_0 ;
  wire \scores[1][15]_i_10_n_0 ;
  wire \scores[1][15]_i_110_n_0 ;
  wire \scores[1][15]_i_111_n_0 ;
  wire \scores[1][15]_i_112_n_0 ;
  wire \scores[1][15]_i_113_n_0 ;
  wire \scores[1][15]_i_114_n_0 ;
  wire \scores[1][15]_i_115_n_0 ;
  wire \scores[1][15]_i_116_n_0 ;
  wire \scores[1][15]_i_117_n_0 ;
  wire \scores[1][15]_i_118_n_0 ;
  wire \scores[1][15]_i_119_n_0 ;
  wire \scores[1][15]_i_120_n_0 ;
  wire \scores[1][15]_i_121_n_0 ;
  wire \scores[1][15]_i_122_n_0 ;
  wire \scores[1][15]_i_123_n_0 ;
  wire \scores[1][15]_i_124_n_0 ;
  wire \scores[1][15]_i_125_n_0 ;
  wire \scores[1][15]_i_126_n_0 ;
  wire \scores[1][15]_i_127_n_0 ;
  wire \scores[1][15]_i_128_n_0 ;
  wire \scores[1][15]_i_129_n_0 ;
  wire \scores[1][15]_i_130_n_0 ;
  wire \scores[1][15]_i_131_n_0 ;
  wire \scores[1][15]_i_132_n_0 ;
  wire \scores[1][15]_i_133_n_0 ;
  wire \scores[1][15]_i_134_n_0 ;
  wire \scores[1][15]_i_135_n_0 ;
  wire \scores[1][15]_i_136_n_0 ;
  wire \scores[1][15]_i_137_n_0 ;
  wire \scores[1][15]_i_138_n_0 ;
  wire \scores[1][15]_i_139_n_0 ;
  wire \scores[1][15]_i_13_n_0 ;
  wire \scores[1][15]_i_140_n_0 ;
  wire \scores[1][15]_i_141_n_0 ;
  wire \scores[1][15]_i_142_n_0 ;
  wire \scores[1][15]_i_143_n_0 ;
  wire \scores[1][15]_i_144_n_0 ;
  wire \scores[1][15]_i_145_n_0 ;
  wire \scores[1][15]_i_146_n_0 ;
  wire \scores[1][15]_i_147_n_0 ;
  wire \scores[1][15]_i_148_n_0 ;
  wire \scores[1][15]_i_149_n_0 ;
  wire \scores[1][15]_i_14_n_0 ;
  wire \scores[1][15]_i_150_n_0 ;
  wire \scores[1][15]_i_151_n_0 ;
  wire \scores[1][15]_i_152_n_0 ;
  wire \scores[1][15]_i_153_n_0 ;
  wire \scores[1][15]_i_154_n_0 ;
  wire \scores[1][15]_i_155_n_0 ;
  wire \scores[1][15]_i_156_n_0 ;
  wire \scores[1][15]_i_157_n_0 ;
  wire \scores[1][15]_i_158_n_0 ;
  wire \scores[1][15]_i_15_n_0 ;
  wire [255:0]\scores[1][15]_i_16_0 ;
  wire \scores[1][15]_i_16_n_0 ;
  wire \scores[1][15]_i_17_n_0 ;
  wire \scores[1][15]_i_18_n_0 ;
  wire \scores[1][15]_i_19_n_0 ;
  wire \scores[1][15]_i_1_n_0 ;
  wire \scores[1][15]_i_20_n_0 ;
  wire \scores[1][15]_i_21_n_0 ;
  wire \scores[1][15]_i_22_n_0 ;
  wire \scores[1][15]_i_23_n_0 ;
  wire \scores[1][15]_i_24_n_0 ;
  wire \scores[1][15]_i_25_n_0 ;
  wire \scores[1][15]_i_26_n_0 ;
  wire \scores[1][15]_i_27_n_0 ;
  wire \scores[1][15]_i_28_n_0 ;
  wire \scores[1][15]_i_2_n_0 ;
  wire \scores[1][15]_i_31_n_0 ;
  wire \scores[1][15]_i_32_n_0 ;
  wire \scores[1][15]_i_33_n_0 ;
  wire \scores[1][15]_i_35_n_0 ;
  wire \scores[1][15]_i_36_n_0 ;
  wire \scores[1][15]_i_37_n_0 ;
  wire \scores[1][15]_i_38_n_0 ;
  wire \scores[1][15]_i_39_n_0 ;
  wire \scores[1][15]_i_3_n_0 ;
  wire \scores[1][15]_i_40_n_0 ;
  wire \scores[1][15]_i_41_n_0 ;
  wire \scores[1][15]_i_42_n_0 ;
  wire \scores[1][15]_i_43_n_0 ;
  wire \scores[1][15]_i_44_n_0 ;
  wire \scores[1][15]_i_45_n_0 ;
  wire \scores[1][15]_i_46_n_0 ;
  wire \scores[1][15]_i_47_n_0 ;
  wire \scores[1][15]_i_48_n_0 ;
  wire \scores[1][15]_i_49_n_0 ;
  wire \scores[1][15]_i_4_n_0 ;
  wire \scores[1][15]_i_50_n_0 ;
  wire \scores[1][15]_i_51_n_0 ;
  wire \scores[1][15]_i_52_n_0 ;
  wire \scores[1][15]_i_53_n_0 ;
  wire \scores[1][15]_i_54_n_0 ;
  wire \scores[1][15]_i_55_n_0 ;
  wire \scores[1][15]_i_56_n_0 ;
  wire \scores[1][15]_i_57_n_0 ;
  wire \scores[1][15]_i_58_n_0 ;
  wire \scores[1][15]_i_59_n_0 ;
  wire \scores[1][15]_i_5_n_0 ;
  wire \scores[1][15]_i_60_n_0 ;
  wire \scores[1][15]_i_61_n_0 ;
  wire \scores[1][15]_i_62_n_0 ;
  wire \scores[1][15]_i_63_n_0 ;
  wire \scores[1][15]_i_64_n_0 ;
  wire \scores[1][15]_i_65_n_0 ;
  wire \scores[1][15]_i_66_n_0 ;
  wire \scores[1][15]_i_67_n_0 ;
  wire \scores[1][15]_i_68_n_0 ;
  wire \scores[1][15]_i_69_n_0 ;
  wire \scores[1][15]_i_6_n_0 ;
  wire \scores[1][15]_i_70_n_0 ;
  wire \scores[1][15]_i_71_n_0 ;
  wire \scores[1][15]_i_72_n_0 ;
  wire \scores[1][15]_i_73_n_0 ;
  wire \scores[1][15]_i_74_n_0 ;
  wire \scores[1][15]_i_75_n_0 ;
  wire \scores[1][15]_i_76_n_0 ;
  wire \scores[1][15]_i_77_n_0 ;
  wire \scores[1][15]_i_78_n_0 ;
  wire \scores[1][15]_i_79_n_0 ;
  wire \scores[1][15]_i_7_n_0 ;
  wire \scores[1][15]_i_80_n_0 ;
  wire \scores[1][15]_i_81_n_0 ;
  wire \scores[1][15]_i_82_n_0 ;
  wire \scores[1][15]_i_83_n_0 ;
  wire \scores[1][15]_i_84_n_0 ;
  wire \scores[1][15]_i_85_n_0 ;
  wire \scores[1][15]_i_86_n_0 ;
  wire \scores[1][15]_i_87_n_0 ;
  wire \scores[1][15]_i_88_n_0 ;
  wire \scores[1][15]_i_89_n_0 ;
  wire \scores[1][15]_i_8_n_0 ;
  wire \scores[1][15]_i_90_n_0 ;
  wire \scores[1][15]_i_91_n_0 ;
  wire \scores[1][15]_i_92_n_0 ;
  wire \scores[1][15]_i_93_n_0 ;
  wire \scores[1][15]_i_94_n_0 ;
  wire \scores[1][15]_i_95_n_0 ;
  wire \scores[1][15]_i_96_n_0 ;
  wire \scores[1][15]_i_97_n_0 ;
  wire \scores[1][15]_i_98_n_0 ;
  wire \scores[1][15]_i_99_n_0 ;
  wire \scores[1][15]_i_9_n_0 ;
  wire \scores[1][1]_i_1_n_0 ;
  wire \scores[1][1]_i_2_n_0 ;
  wire \scores[1][2]_i_1_n_0 ;
  wire \scores[1][2]_i_2_n_0 ;
  wire \scores[1][3]_i_1_n_0 ;
  wire \scores[1][3]_i_2_n_0 ;
  wire \scores[1][4]_i_10_n_0 ;
  wire \scores[1][4]_i_11_n_0 ;
  wire \scores[1][4]_i_12_n_0 ;
  wire \scores[1][4]_i_13_n_0 ;
  wire \scores[1][4]_i_14_n_0 ;
  wire \scores[1][4]_i_15_n_0 ;
  wire \scores[1][4]_i_16_n_0 ;
  wire \scores[1][4]_i_17_n_0 ;
  wire \scores[1][4]_i_18_n_0 ;
  wire \scores[1][4]_i_19_n_0 ;
  wire \scores[1][4]_i_1_n_0 ;
  wire \scores[1][4]_i_20_n_0 ;
  wire \scores[1][4]_i_21_n_0 ;
  wire \scores[1][4]_i_22_n_0 ;
  wire \scores[1][4]_i_23_n_0 ;
  wire \scores[1][4]_i_24_n_0 ;
  wire \scores[1][4]_i_2_n_0 ;
  wire \scores[1][4]_i_9_n_0 ;
  wire \scores[1][5]_i_1_n_0 ;
  wire \scores[1][5]_i_2_n_0 ;
  wire \scores[1][6]_i_1_n_0 ;
  wire \scores[1][6]_i_2_n_0 ;
  wire \scores[1][7]_i_1_n_0 ;
  wire \scores[1][7]_i_2_n_0 ;
  wire \scores[1][8]_i_10_n_0 ;
  wire \scores[1][8]_i_11_n_0 ;
  wire \scores[1][8]_i_12_n_0 ;
  wire \scores[1][8]_i_13_n_0 ;
  wire \scores[1][8]_i_14_n_0 ;
  wire \scores[1][8]_i_15_n_0 ;
  wire \scores[1][8]_i_16_n_0 ;
  wire \scores[1][8]_i_17_n_0 ;
  wire \scores[1][8]_i_18_n_0 ;
  wire \scores[1][8]_i_19_n_0 ;
  wire \scores[1][8]_i_1_n_0 ;
  wire \scores[1][8]_i_20_n_0 ;
  wire \scores[1][8]_i_21_n_0 ;
  wire \scores[1][8]_i_22_n_0 ;
  wire \scores[1][8]_i_23_n_0 ;
  wire \scores[1][8]_i_24_n_0 ;
  wire \scores[1][8]_i_2_n_0 ;
  wire \scores[1][8]_i_9_n_0 ;
  wire \scores[1][9]_i_1_n_0 ;
  wire \scores[1][9]_i_2_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[2] ;
  wire \scores[2][0]_i_1_n_0 ;
  wire \scores[2][10]_i_1_n_0 ;
  wire \scores[2][11]_i_1_n_0 ;
  wire \scores[2][12]_i_1_n_0 ;
  wire \scores[2][13]_i_1_n_0 ;
  wire \scores[2][14]_i_1_n_0 ;
  wire \scores[2][15]_i_1_n_0 ;
  wire \scores[2][15]_i_2_n_0 ;
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
  wire \scores[3][1]_i_1_n_0 ;
  wire \scores[3][2]_i_1_n_0 ;
  wire \scores[3][3]_i_1_n_0 ;
  wire \scores[3][4]_i_1_n_0 ;
  wire \scores[3][5]_i_1_n_0 ;
  wire \scores[3][6]_i_1_n_0 ;
  wire \scores[3][7]_i_1_n_0 ;
  wire \scores[3][8]_i_1_n_0 ;
  wire \scores[3][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[4] ;
  wire \scores[4][0]_i_1_n_0 ;
  wire \scores[4][10]_i_1_n_0 ;
  wire \scores[4][11]_i_1_n_0 ;
  wire \scores[4][12]_i_1_n_0 ;
  wire \scores[4][13]_i_1_n_0 ;
  wire \scores[4][14]_i_1_n_0 ;
  wire \scores[4][15]_i_1_n_0 ;
  wire \scores[4][15]_i_2_n_0 ;
  wire \scores[4][15]_i_3_n_0 ;
  wire \scores[4][1]_i_1_n_0 ;
  wire \scores[4][2]_i_1_n_0 ;
  wire \scores[4][3]_i_1_n_0 ;
  wire \scores[4][4]_i_1_n_0 ;
  wire \scores[4][5]_i_1_n_0 ;
  wire \scores[4][6]_i_1_n_0 ;
  wire \scores[4][7]_i_1_n_0 ;
  wire \scores[4][8]_i_1_n_0 ;
  wire \scores[4][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[5] ;
  wire \scores[5][0]_i_1_n_0 ;
  wire \scores[5][10]_i_1_n_0 ;
  wire \scores[5][11]_i_1_n_0 ;
  wire \scores[5][12]_i_1_n_0 ;
  wire \scores[5][13]_i_1_n_0 ;
  wire \scores[5][14]_i_1_n_0 ;
  wire \scores[5][15]_i_1_n_0 ;
  wire \scores[5][1]_i_1_n_0 ;
  wire \scores[5][2]_i_1_n_0 ;
  wire \scores[5][3]_i_1_n_0 ;
  wire \scores[5][4]_i_1_n_0 ;
  wire \scores[5][5]_i_1_n_0 ;
  wire \scores[5][6]_i_1_n_0 ;
  wire \scores[5][7]_i_1_n_0 ;
  wire \scores[5][8]_i_1_n_0 ;
  wire \scores[5][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[6] ;
  wire \scores[6][0]_i_1_n_0 ;
  wire \scores[6][10]_i_1_n_0 ;
  wire \scores[6][11]_i_1_n_0 ;
  wire \scores[6][12]_i_1_n_0 ;
  wire \scores[6][13]_i_1_n_0 ;
  wire \scores[6][14]_i_1_n_0 ;
  wire \scores[6][15]_i_1_n_0 ;
  wire \scores[6][1]_i_1_n_0 ;
  wire \scores[6][2]_i_1_n_0 ;
  wire \scores[6][3]_i_1_n_0 ;
  wire \scores[6][4]_i_1_n_0 ;
  wire \scores[6][5]_i_1_n_0 ;
  wire \scores[6][6]_i_1_n_0 ;
  wire \scores[6][7]_i_1_n_0 ;
  wire \scores[6][8]_i_1_n_0 ;
  wire \scores[6][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[7] ;
  wire \scores[7][0]_i_1_n_0 ;
  wire \scores[7][10]_i_1_n_0 ;
  wire \scores[7][11]_i_1_n_0 ;
  wire \scores[7][12]_i_1_n_0 ;
  wire \scores[7][13]_i_1_n_0 ;
  wire \scores[7][14]_i_1_n_0 ;
  wire \scores[7][15]_i_1_n_0 ;
  wire \scores[7][1]_i_1_n_0 ;
  wire \scores[7][2]_i_1_n_0 ;
  wire \scores[7][3]_i_1_n_0 ;
  wire \scores[7][4]_i_1_n_0 ;
  wire \scores[7][5]_i_1_n_0 ;
  wire \scores[7][6]_i_1_n_0 ;
  wire \scores[7][7]_i_1_n_0 ;
  wire \scores[7][8]_i_1_n_0 ;
  wire \scores[7][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[8] ;
  wire \scores[8][0]_i_1_n_0 ;
  wire \scores[8][10]_i_1_n_0 ;
  wire \scores[8][11]_i_1_n_0 ;
  wire \scores[8][12]_i_1_n_0 ;
  wire \scores[8][13]_i_1_n_0 ;
  wire \scores[8][14]_i_1_n_0 ;
  wire \scores[8][15]_i_1_n_0 ;
  wire \scores[8][15]_i_2_n_0 ;
  wire \scores[8][15]_i_3_n_0 ;
  wire \scores[8][15]_i_4_n_0 ;
  wire \scores[8][1]_i_1_n_0 ;
  wire \scores[8][2]_i_1_n_0 ;
  wire \scores[8][3]_i_1_n_0 ;
  wire \scores[8][4]_i_1_n_0 ;
  wire \scores[8][5]_i_1_n_0 ;
  wire \scores[8][6]_i_1_n_0 ;
  wire \scores[8][7]_i_1_n_0 ;
  wire \scores[8][8]_i_1_n_0 ;
  wire \scores[8][9]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [15:0]\scores[9] ;
  wire \scores[9][0]_i_1_n_0 ;
  wire \scores[9][10]_i_1_n_0 ;
  wire \scores[9][11]_i_1_n_0 ;
  wire \scores[9][12]_i_1_n_0 ;
  wire \scores[9][13]_i_1_n_0 ;
  wire \scores[9][14]_i_1_n_0 ;
  wire \scores[9][15]_i_1_n_0 ;
  wire \scores[9][1]_i_1_n_0 ;
  wire \scores[9][2]_i_1_n_0 ;
  wire \scores[9][3]_i_1_n_0 ;
  wire \scores[9][4]_i_1_n_0 ;
  wire \scores[9][5]_i_1_n_0 ;
  wire \scores[9][6]_i_1_n_0 ;
  wire \scores[9][7]_i_1_n_0 ;
  wire \scores[9][8]_i_1_n_0 ;
  wire \scores[9][9]_i_1_n_0 ;
  wire \scores_reg[1][12]_i_3_n_0 ;
  wire \scores_reg[1][12]_i_3_n_1 ;
  wire \scores_reg[1][12]_i_3_n_2 ;
  wire \scores_reg[1][12]_i_3_n_3 ;
  wire \scores_reg[1][12]_i_4_n_0 ;
  wire \scores_reg[1][12]_i_4_n_1 ;
  wire \scores_reg[1][12]_i_4_n_2 ;
  wire \scores_reg[1][12]_i_4_n_3 ;
  wire \scores_reg[1][15]_i_11_n_2 ;
  wire \scores_reg[1][15]_i_11_n_3 ;
  wire \scores_reg[1][15]_i_12_n_2 ;
  wire \scores_reg[1][15]_i_12_n_3 ;
  wire \scores_reg[1][4]_i_3_n_0 ;
  wire \scores_reg[1][4]_i_3_n_1 ;
  wire \scores_reg[1][4]_i_3_n_2 ;
  wire \scores_reg[1][4]_i_3_n_3 ;
  wire \scores_reg[1][4]_i_4_n_0 ;
  wire \scores_reg[1][4]_i_4_n_1 ;
  wire \scores_reg[1][4]_i_4_n_2 ;
  wire \scores_reg[1][4]_i_4_n_3 ;
  wire \scores_reg[1][8]_i_3_n_0 ;
  wire \scores_reg[1][8]_i_3_n_1 ;
  wire \scores_reg[1][8]_i_3_n_2 ;
  wire \scores_reg[1][8]_i_3_n_3 ;
  wire \scores_reg[1][8]_i_4_n_0 ;
  wire \scores_reg[1][8]_i_4_n_1 ;
  wire \scores_reg[1][8]_i_4_n_2 ;
  wire \scores_reg[1][8]_i_4_n_3 ;
  wire [3:0]sel0;
  wire [3:0]sel0__0;
  wire start_reg_reg;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire NLW_mask_addr0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mask_addr0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mask_addr0_OVERFLOW_UNCONNECTED;
  wire NLW_mask_addr0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mask_addr0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mask_addr0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mask_addr0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mask_addr0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mask_addr0_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_mask_addr0_P_UNCONNECTED;
  wire [47:0]NLW_mask_addr0_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_mask_addr_reg[13]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_mask_addr_reg[13]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_max_score_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_max_score_reg[15]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_scores_reg[1][15]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_scores_reg[1][15]_i_11_O_UNCONNECTED ;
  wire [3:2]\NLW_scores_reg[1][15]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_scores_reg[1][15]_i_12_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \class_idx[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[0]),
        .O(\class_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \class_idx[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\state_reg_n_0_[1] ),
        .O(\class_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \class_idx[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(\class_idx[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h50040004)) 
    \class_idx[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\mask_addr[13]_i_3_n_0 ),
        .O(\class_idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \class_idx[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\class_idx[3]_i_2_n_0 ));
  FDCE \class_idx_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\class_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\class_idx[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE \class_idx_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\class_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\class_idx[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE \class_idx_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\class_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\class_idx[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDCE \class_idx_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\class_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\class_idx[3]_i_2_n_0 ),
        .Q(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \clause_cnt[0]_i_1 
       (.I0(\clause_cnt_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(p_0_in_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h14440000)) 
    \clause_cnt[10]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\clause_cnt_reg_n_0_[10] ),
        .I2(\clause_cnt_reg_n_0_[9] ),
        .I3(\clause_cnt[10]_i_2_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .O(\clause_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \clause_cnt[10]_i_2 
       (.I0(\clause_cnt_reg_n_0_[7] ),
        .I1(\clause_cnt_reg_n_0_[6] ),
        .I2(\clause_cnt_reg_n_0_[8] ),
        .I3(\clause_cnt[8]_i_2_n_0 ),
        .O(\clause_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \clause_cnt[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\clause_cnt_reg_n_0_[0] ),
        .I2(\clause_cnt_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\clause_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \clause_cnt[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .I3(\clause_cnt_reg_n_0_[1] ),
        .I4(\clause_cnt_reg_n_0_[0] ),
        .O(\clause_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \clause_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[3] ),
        .I3(\clause_cnt_reg_n_0_[2] ),
        .I4(\clause_cnt_reg_n_0_[0] ),
        .I5(\clause_cnt_reg_n_0_[1] ),
        .O(\clause_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40400440)) 
    \clause_cnt[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[4] ),
        .I3(\clause_cnt_reg_n_0_[3] ),
        .I4(\clause_cnt[5]_i_2_n_0 ),
        .O(\clause_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4004404040404040)) 
    \clause_cnt[5]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[5] ),
        .I3(\clause_cnt[5]_i_2_n_0 ),
        .I4(\clause_cnt_reg_n_0_[3] ),
        .I5(\clause_cnt_reg_n_0_[4] ),
        .O(\clause_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \clause_cnt[5]_i_2 
       (.I0(\clause_cnt_reg_n_0_[1] ),
        .I1(\clause_cnt_reg_n_0_[0] ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .O(\clause_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \clause_cnt[6]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[6] ),
        .I3(\clause_cnt[8]_i_2_n_0 ),
        .O(\clause_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40044040)) 
    \clause_cnt[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[7] ),
        .I3(\clause_cnt[8]_i_2_n_0 ),
        .I4(\clause_cnt_reg_n_0_[6] ),
        .O(\clause_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F07800000000)) 
    \clause_cnt[8]_i_1 
       (.I0(\clause_cnt_reg_n_0_[7] ),
        .I1(\clause_cnt_reg_n_0_[6] ),
        .I2(\clause_cnt_reg_n_0_[8] ),
        .I3(\clause_cnt[8]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(p_0_in_0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clause_cnt[8]_i_2 
       (.I0(\clause_cnt_reg_n_0_[1] ),
        .I1(\clause_cnt_reg_n_0_[0] ),
        .I2(\clause_cnt_reg_n_0_[2] ),
        .I3(\clause_cnt_reg_n_0_[3] ),
        .I4(\clause_cnt_reg_n_0_[4] ),
        .I5(\clause_cnt_reg_n_0_[5] ),
        .O(\clause_cnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \clause_cnt[9]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\clause_cnt_reg_n_0_[9] ),
        .I3(\clause_cnt[10]_i_2_n_0 ),
        .O(\clause_cnt[9]_i_1_n_0 ));
  FDCE \clause_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[0]),
        .Q(\clause_cnt_reg_n_0_[0] ));
  FDCE \clause_cnt_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[10]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[10] ));
  FDCE \clause_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[1]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[1] ));
  FDCE \clause_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[2]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[2] ));
  FDCE \clause_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[3]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[3] ));
  FDCE \clause_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[4]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[4] ));
  FDCE \clause_cnt_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[5]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[5] ));
  FDCE \clause_cnt_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[6]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[6] ));
  FDCE \clause_cnt_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[7]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[7] ));
  FDCE \clause_cnt_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_0_in_0[8]),
        .Q(\clause_cnt_reg_n_0_[8] ));
  FDCE \clause_cnt_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\clause_cnt[9]_i_1_n_0 ),
        .Q(\clause_cnt_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    clause_is_odd_i_1
       (.I0(\clause_cnt_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(clause_is_odd),
        .O(clause_is_odd_i_1_n_0));
  FDCE clause_is_odd_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(clause_is_odd_i_1_n_0),
        .Q(clause_is_odd));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cmp_idx[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(sel0__0[0]),
        .O(\cmp_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \cmp_idx[1]_i_1 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(\state_reg_n_0_[2] ),
        .O(\cmp_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \cmp_idx[2]_i_1 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[2]),
        .I3(\state_reg_n_0_[2] ),
        .O(\cmp_idx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \cmp_idx[3]_i_1 
       (.I0(\cmp_idx[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(sel0__0[3]),
        .I3(sel0__0[0]),
        .I4(sel0__0[2]),
        .I5(sel0__0[1]),
        .O(\cmp_idx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cmp_idx[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(sel0__0[2]),
        .I2(sel0__0[0]),
        .I3(sel0__0[1]),
        .I4(sel0__0[3]),
        .O(\cmp_idx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0340)) 
    \cmp_idx[3]_i_3 
       (.I0(\mask_addr[13]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\cmp_idx[3]_i_3_n_0 ));
  FDCE \cmp_idx_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\cmp_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\cmp_idx[0]_i_1_n_0 ),
        .Q(sel0__0[0]));
  FDCE \cmp_idx_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\cmp_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\cmp_idx[1]_i_1_n_0 ),
        .Q(sel0__0[1]));
  FDCE \cmp_idx_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\cmp_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\cmp_idx[2]_i_1_n_0 ),
        .Q(sel0__0[2]));
  FDCE \cmp_idx_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\cmp_idx[3]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\cmp_idx[3]_i_2_n_0 ),
        .Q(sel0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    done_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(done_wire),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40404440)) 
    done_latch_i_1
       (.I0(\state_reg[0]_0 ),
        .I1(S_AXI_ARESETN),
        .I2(done_latch),
        .I3(done_wire),
        .I4(done_d),
        .O(start_reg_reg));
  FDCE done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(done_i_1_n_0),
        .Q(done_wire));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mask_addr0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mask_addr0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mask_addr0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mask_addr0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mask_addr0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sel0}),
        .INMODE({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mask_addr0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mask_addr0_OVERFLOW_UNCONNECTED),
        .P({NLW_mask_addr0_P_UNCONNECTED[47:16],mask_addr0_n_90,mask_addr0_n_91,mask_addr0_n_92,mask_addr0_n_93,mask_addr0_n_94,mask_addr0_n_95,mask_addr0_n_96,mask_addr0_n_97,mask_addr0_n_98,mask_addr0_n_99,mask_addr0_n_100,mask_addr0_n_101,mask_addr0_n_102,mask_addr0_n_103,mask_addr0_n_104,mask_addr0_n_105}),
        .PATTERNBDETECT(NLW_mask_addr0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mask_addr0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mask_addr0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mask_addr0_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h80B0)) 
    \mask_addr[0]_i_1 
       (.I0(mask_addr0_n_105),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(mask_addr_out[0]),
        .O(\mask_addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[10]_i_1 
       (.I0(mask_addr0__0[10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_95),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[11]_i_1 
       (.I0(mask_addr0__0[11]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_94),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[12]_i_1 
       (.I0(mask_addr0__0[12]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_93),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5504050450040004)) 
    \mask_addr[13]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\mask_addr[13]_i_3_n_0 ),
        .I5(\mask_addr[13]_i_4_n_0 ),
        .O(\mask_addr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[13]_i_2 
       (.I0(mask_addr0__0[13]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_92),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \mask_addr[13]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(\mask_addr[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \mask_addr[13]_i_4 
       (.I0(\mask_addr[13]_i_6_n_0 ),
        .I1(\mask_addr[13]_i_7_n_0 ),
        .I2(\clause_cnt_reg_n_0_[9] ),
        .I3(\clause_cnt_reg_n_0_[2] ),
        .I4(\clause_cnt_reg_n_0_[10] ),
        .I5(\clause_cnt_reg_n_0_[4] ),
        .O(\mask_addr[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mask_addr[13]_i_6 
       (.I0(\clause_cnt_reg_n_0_[8] ),
        .I1(\clause_cnt_reg_n_0_[6] ),
        .I2(\clause_cnt_reg_n_0_[7] ),
        .O(\mask_addr[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \mask_addr[13]_i_7 
       (.I0(\clause_cnt_reg_n_0_[1] ),
        .I1(\clause_cnt_reg_n_0_[0] ),
        .I2(\clause_cnt_reg_n_0_[3] ),
        .I3(\clause_cnt_reg_n_0_[5] ),
        .O(\mask_addr[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[1]_i_1 
       (.I0(mask_addr0__0[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_104),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[2]_i_1 
       (.I0(mask_addr0__0[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_103),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[3]_i_1 
       (.I0(mask_addr0__0[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_102),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[4]_i_1 
       (.I0(mask_addr0__0[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_101),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[5]_i_1 
       (.I0(mask_addr0__0[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_100),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[6]_i_1 
       (.I0(mask_addr0__0[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_99),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[7]_i_1 
       (.I0(mask_addr0__0[7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_98),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[8]_i_1 
       (.I0(mask_addr0__0[8]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_97),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mask_addr[9]_i_1 
       (.I0(mask_addr0__0[9]),
        .I1(\state_reg_n_0_[0] ),
        .I2(mask_addr0_n_96),
        .I3(\state_reg_n_0_[1] ),
        .O(\mask_addr[9]_i_1_n_0 ));
  FDCE \mask_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[0]_i_1_n_0 ),
        .Q(mask_addr_out[0]));
  FDCE \mask_addr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[10]_i_1_n_0 ),
        .Q(mask_addr_out[10]));
  FDCE \mask_addr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[11]_i_1_n_0 ),
        .Q(mask_addr_out[11]));
  FDCE \mask_addr_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[12]_i_1_n_0 ),
        .Q(mask_addr_out[12]));
  CARRY4 \mask_addr_reg[12]_i_2 
       (.CI(\mask_addr_reg[8]_i_2_n_0 ),
        .CO({\mask_addr_reg[12]_i_2_n_0 ,\mask_addr_reg[12]_i_2_n_1 ,\mask_addr_reg[12]_i_2_n_2 ,\mask_addr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mask_addr0__0[12:9]),
        .S(mask_addr_out[12:9]));
  FDCE \mask_addr_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[13]_i_2_n_0 ),
        .Q(mask_addr_out[13]));
  CARRY4 \mask_addr_reg[13]_i_5 
       (.CI(\mask_addr_reg[12]_i_2_n_0 ),
        .CO(\NLW_mask_addr_reg[13]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mask_addr_reg[13]_i_5_O_UNCONNECTED [3:1],mask_addr0__0[13]}),
        .S({1'b0,1'b0,1'b0,mask_addr_out[13]}));
  FDCE \mask_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[1]_i_1_n_0 ),
        .Q(mask_addr_out[1]));
  FDCE \mask_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[2]_i_1_n_0 ),
        .Q(mask_addr_out[2]));
  FDCE \mask_addr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[3]_i_1_n_0 ),
        .Q(mask_addr_out[3]));
  FDCE \mask_addr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[4]_i_1_n_0 ),
        .Q(mask_addr_out[4]));
  CARRY4 \mask_addr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\mask_addr_reg[4]_i_2_n_0 ,\mask_addr_reg[4]_i_2_n_1 ,\mask_addr_reg[4]_i_2_n_2 ,\mask_addr_reg[4]_i_2_n_3 }),
        .CYINIT(mask_addr_out[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mask_addr0__0[4:1]),
        .S(mask_addr_out[4:1]));
  FDCE \mask_addr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[5]_i_1_n_0 ),
        .Q(mask_addr_out[5]));
  FDCE \mask_addr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[6]_i_1_n_0 ),
        .Q(mask_addr_out[6]));
  FDCE \mask_addr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[7]_i_1_n_0 ),
        .Q(mask_addr_out[7]));
  FDCE \mask_addr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[8]_i_1_n_0 ),
        .Q(mask_addr_out[8]));
  CARRY4 \mask_addr_reg[8]_i_2 
       (.CI(\mask_addr_reg[4]_i_2_n_0 ),
        .CO({\mask_addr_reg[8]_i_2_n_0 ,\mask_addr_reg[8]_i_2_n_1 ,\mask_addr_reg[8]_i_2_n_2 ,\mask_addr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mask_addr0__0[8:5]),
        .S(mask_addr_out[8:5]));
  FDCE \mask_addr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\mask_addr[13]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\mask_addr[9]_i_1_n_0 ),
        .Q(mask_addr_out[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[0]_i_1 
       (.I0(\scores[0] [0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[0]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[0]_i_2 
       (.I0(\scores[9] [0]),
        .I1(\scores[8] [0]),
        .I2(sel0__0[3]),
        .I3(\max_score[0]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[0]_i_4_n_0 ),
        .O(\max_score[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[0]_i_3 
       (.I0(\scores[7] [0]),
        .I1(\scores[6] [0]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [0]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [0]),
        .O(\max_score[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[0]_i_4 
       (.I0(\scores[3] [0]),
        .I1(\scores[2] [0]),
        .I2(sel0__0[1]),
        .I3(out[0]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [0]),
        .O(\max_score[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[10]_i_1 
       (.I0(\scores[0] [10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[10]_i_2_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[10]_i_2 
       (.I0(\scores[9] [10]),
        .I1(\scores[8] [10]),
        .I2(sel0__0[3]),
        .I3(\max_score[10]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[10]_i_4_n_0 ),
        .O(\max_score[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[10]_i_3 
       (.I0(\scores[7] [10]),
        .I1(\scores[6] [10]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [10]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [10]),
        .O(\max_score[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[10]_i_4 
       (.I0(\scores[3] [10]),
        .I1(\scores[2] [10]),
        .I2(sel0__0[1]),
        .I3(out[10]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [10]),
        .O(\max_score[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[11]_i_1 
       (.I0(\scores[0] [11]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[11]_i_2_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[11]_i_2 
       (.I0(\scores[9] [11]),
        .I1(\scores[8] [11]),
        .I2(sel0__0[3]),
        .I3(\max_score[11]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[11]_i_4_n_0 ),
        .O(\max_score[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[11]_i_3 
       (.I0(\scores[7] [11]),
        .I1(\scores[6] [11]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [11]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [11]),
        .O(\max_score[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[11]_i_4 
       (.I0(\scores[3] [11]),
        .I1(\scores[2] [11]),
        .I2(sel0__0[1]),
        .I3(out[11]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [11]),
        .O(\max_score[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[12]_i_1 
       (.I0(\scores[0] [12]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[12]_i_2_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[12]_i_2 
       (.I0(\scores[9] [12]),
        .I1(\scores[8] [12]),
        .I2(sel0__0[3]),
        .I3(\max_score[12]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[12]_i_4_n_0 ),
        .O(\max_score[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[12]_i_3 
       (.I0(\scores[7] [12]),
        .I1(\scores[6] [12]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [12]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [12]),
        .O(\max_score[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[12]_i_4 
       (.I0(\scores[3] [12]),
        .I1(\scores[2] [12]),
        .I2(sel0__0[1]),
        .I3(out[12]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [12]),
        .O(\max_score[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[13]_i_1 
       (.I0(\scores[0] [13]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[13]_i_2_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[13]_i_2 
       (.I0(\scores[9] [13]),
        .I1(\scores[8] [13]),
        .I2(sel0__0[3]),
        .I3(\max_score[13]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[13]_i_4_n_0 ),
        .O(\max_score[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[13]_i_3 
       (.I0(\scores[7] [13]),
        .I1(\scores[6] [13]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [13]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [13]),
        .O(\max_score[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[13]_i_4 
       (.I0(\scores[3] [13]),
        .I1(\scores[2] [13]),
        .I2(sel0__0[1]),
        .I3(out[13]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [13]),
        .O(\max_score[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[14]_i_1 
       (.I0(\scores[0] [14]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[14]_i_2_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[14]_i_2 
       (.I0(\scores[9] [14]),
        .I1(\scores[8] [14]),
        .I2(sel0__0[3]),
        .I3(\max_score[14]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[14]_i_4_n_0 ),
        .O(\max_score[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[14]_i_3 
       (.I0(\scores[7] [14]),
        .I1(\scores[6] [14]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [14]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [14]),
        .O(\max_score[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[14]_i_4 
       (.I0(\scores[3] [14]),
        .I1(\scores[2] [14]),
        .I2(sel0__0[1]),
        .I3(out[14]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [14]),
        .O(\max_score[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h100C1000)) 
    \max_score[15]_i_1 
       (.I0(\mask_addr[13]_i_3_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\max_score_reg[15]_i_3_n_0 ),
        .O(\max_score[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_10 
       (.I0(max_score[15]),
        .I1(\max_score[15]_i_4_n_0 ),
        .I2(\max_score[14]_i_2_n_0 ),
        .I3(max_score[14]),
        .O(\max_score[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_11 
       (.I0(max_score[13]),
        .I1(\max_score[13]_i_2_n_0 ),
        .I2(\max_score[12]_i_2_n_0 ),
        .I3(max_score[12]),
        .O(\max_score[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_12 
       (.I0(max_score[11]),
        .I1(\max_score[11]_i_2_n_0 ),
        .I2(\max_score[10]_i_2_n_0 ),
        .I3(max_score[10]),
        .O(\max_score[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_13 
       (.I0(max_score[9]),
        .I1(\max_score[9]_i_2_n_0 ),
        .I2(\max_score[8]_i_2_n_0 ),
        .I3(max_score[8]),
        .O(\max_score[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[15]_i_14 
       (.I0(\scores[7] [15]),
        .I1(\scores[6] [15]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [15]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [15]),
        .O(\max_score[15]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_score[15]_i_15 
       (.I0(sel0__0[0]),
        .I1(sel0__0[2]),
        .I2(sel0__0[3]),
        .O(\max_score[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[15]_i_16 
       (.I0(\scores[3] [15]),
        .I1(\scores[2] [15]),
        .I2(sel0__0[1]),
        .I3(out[15]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [15]),
        .O(\max_score[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_17 
       (.I0(max_score[7]),
        .I1(\max_score[7]_i_2_n_0 ),
        .I2(\max_score[6]_i_2_n_0 ),
        .I3(max_score[6]),
        .O(\max_score[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_18 
       (.I0(max_score[5]),
        .I1(\max_score[5]_i_2_n_0 ),
        .I2(\max_score[4]_i_2_n_0 ),
        .I3(max_score[4]),
        .O(\max_score[15]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_19 
       (.I0(max_score[3]),
        .I1(\max_score[3]_i_2_n_0 ),
        .I2(\max_score[2]_i_2_n_0 ),
        .I3(max_score[2]),
        .O(\max_score[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[15]_i_2 
       (.I0(\scores[0] [15]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[15]_i_4_n_0 ),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_20 
       (.I0(max_score[1]),
        .I1(\max_score[1]_i_2_n_0 ),
        .I2(\max_score[0]_i_2_n_0 ),
        .I3(max_score[0]),
        .O(\max_score[15]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_21 
       (.I0(max_score[7]),
        .I1(\max_score[7]_i_2_n_0 ),
        .I2(\max_score[6]_i_2_n_0 ),
        .I3(max_score[6]),
        .O(\max_score[15]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_22 
       (.I0(max_score[5]),
        .I1(\max_score[5]_i_2_n_0 ),
        .I2(\max_score[4]_i_2_n_0 ),
        .I3(max_score[4]),
        .O(\max_score[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_23 
       (.I0(max_score[3]),
        .I1(\max_score[3]_i_2_n_0 ),
        .I2(\max_score[2]_i_2_n_0 ),
        .I3(max_score[2]),
        .O(\max_score[15]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max_score[15]_i_24 
       (.I0(max_score[1]),
        .I1(\max_score[1]_i_2_n_0 ),
        .I2(\max_score[0]_i_2_n_0 ),
        .I3(max_score[0]),
        .O(\max_score[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[15]_i_4 
       (.I0(\scores[9] [15]),
        .I1(\scores[8] [15]),
        .I2(sel0__0[3]),
        .I3(\max_score[15]_i_14_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[15]_i_16_n_0 ),
        .O(\max_score[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \max_score[15]_i_6 
       (.I0(max_score[15]),
        .I1(\max_score[15]_i_4_n_0 ),
        .I2(\max_score[14]_i_2_n_0 ),
        .I3(max_score[14]),
        .O(\max_score[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_7 
       (.I0(max_score[13]),
        .I1(\max_score[13]_i_2_n_0 ),
        .I2(\max_score[12]_i_2_n_0 ),
        .I3(max_score[12]),
        .O(\max_score[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_8 
       (.I0(max_score[11]),
        .I1(\max_score[11]_i_2_n_0 ),
        .I2(\max_score[10]_i_2_n_0 ),
        .I3(max_score[10]),
        .O(\max_score[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \max_score[15]_i_9 
       (.I0(max_score[9]),
        .I1(\max_score[9]_i_2_n_0 ),
        .I2(\max_score[8]_i_2_n_0 ),
        .I3(max_score[8]),
        .O(\max_score[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[1]_i_1 
       (.I0(\scores[0] [1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[1]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[1]_i_2 
       (.I0(\scores[9] [1]),
        .I1(\scores[8] [1]),
        .I2(sel0__0[3]),
        .I3(\max_score[1]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[1]_i_4_n_0 ),
        .O(\max_score[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[1]_i_3 
       (.I0(\scores[7] [1]),
        .I1(\scores[6] [1]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [1]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [1]),
        .O(\max_score[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[1]_i_4 
       (.I0(\scores[3] [1]),
        .I1(\scores[2] [1]),
        .I2(sel0__0[1]),
        .I3(out[1]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [1]),
        .O(\max_score[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[2]_i_1 
       (.I0(\scores[0] [2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[2]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[2]_i_2 
       (.I0(\scores[9] [2]),
        .I1(\scores[8] [2]),
        .I2(sel0__0[3]),
        .I3(\max_score[2]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[2]_i_4_n_0 ),
        .O(\max_score[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[2]_i_3 
       (.I0(\scores[7] [2]),
        .I1(\scores[6] [2]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [2]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [2]),
        .O(\max_score[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[2]_i_4 
       (.I0(\scores[3] [2]),
        .I1(\scores[2] [2]),
        .I2(sel0__0[1]),
        .I3(out[2]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [2]),
        .O(\max_score[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[3]_i_1 
       (.I0(\scores[0] [3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[3]_i_2 
       (.I0(\scores[9] [3]),
        .I1(\scores[8] [3]),
        .I2(sel0__0[3]),
        .I3(\max_score[3]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[3]_i_4_n_0 ),
        .O(\max_score[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[3]_i_3 
       (.I0(\scores[7] [3]),
        .I1(\scores[6] [3]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [3]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [3]),
        .O(\max_score[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[3]_i_4 
       (.I0(\scores[3] [3]),
        .I1(\scores[2] [3]),
        .I2(sel0__0[1]),
        .I3(out[3]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [3]),
        .O(\max_score[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[4]_i_1 
       (.I0(\scores[0] [4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[4]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[4]_i_2 
       (.I0(\scores[9] [4]),
        .I1(\scores[8] [4]),
        .I2(sel0__0[3]),
        .I3(\max_score[4]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[4]_i_4_n_0 ),
        .O(\max_score[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[4]_i_3 
       (.I0(\scores[7] [4]),
        .I1(\scores[6] [4]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [4]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [4]),
        .O(\max_score[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[4]_i_4 
       (.I0(\scores[3] [4]),
        .I1(\scores[2] [4]),
        .I2(sel0__0[1]),
        .I3(out[4]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [4]),
        .O(\max_score[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[5]_i_1 
       (.I0(\scores[0] [5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[5]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[5]_i_2 
       (.I0(\scores[9] [5]),
        .I1(\scores[8] [5]),
        .I2(sel0__0[3]),
        .I3(\max_score[5]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[5]_i_4_n_0 ),
        .O(\max_score[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[5]_i_3 
       (.I0(\scores[7] [5]),
        .I1(\scores[6] [5]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [5]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [5]),
        .O(\max_score[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[5]_i_4 
       (.I0(\scores[3] [5]),
        .I1(\scores[2] [5]),
        .I2(sel0__0[1]),
        .I3(out[5]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [5]),
        .O(\max_score[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[6]_i_1 
       (.I0(\scores[0] [6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[6]_i_2 
       (.I0(\scores[9] [6]),
        .I1(\scores[8] [6]),
        .I2(sel0__0[3]),
        .I3(\max_score[6]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[6]_i_4_n_0 ),
        .O(\max_score[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[6]_i_3 
       (.I0(\scores[7] [6]),
        .I1(\scores[6] [6]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [6]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [6]),
        .O(\max_score[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[6]_i_4 
       (.I0(\scores[3] [6]),
        .I1(\scores[2] [6]),
        .I2(sel0__0[1]),
        .I3(out[6]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [6]),
        .O(\max_score[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[7]_i_1 
       (.I0(\scores[0] [7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[7]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[7]_i_2 
       (.I0(\scores[9] [7]),
        .I1(\scores[8] [7]),
        .I2(sel0__0[3]),
        .I3(\max_score[7]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[7]_i_4_n_0 ),
        .O(\max_score[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[7]_i_3 
       (.I0(\scores[7] [7]),
        .I1(\scores[6] [7]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [7]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [7]),
        .O(\max_score[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[7]_i_4 
       (.I0(\scores[3] [7]),
        .I1(\scores[2] [7]),
        .I2(sel0__0[1]),
        .I3(out[7]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [7]),
        .O(\max_score[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[8]_i_1 
       (.I0(\scores[0] [8]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[8]_i_2_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[8]_i_2 
       (.I0(\scores[9] [8]),
        .I1(\scores[8] [8]),
        .I2(sel0__0[3]),
        .I3(\max_score[8]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[8]_i_4_n_0 ),
        .O(\max_score[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[8]_i_3 
       (.I0(\scores[7] [8]),
        .I1(\scores[6] [8]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [8]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [8]),
        .O(\max_score[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[8]_i_4 
       (.I0(\scores[3] [8]),
        .I1(\scores[2] [8]),
        .I2(sel0__0[1]),
        .I3(out[8]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [8]),
        .O(\max_score[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \max_score[9]_i_1 
       (.I0(\scores[0] [9]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\max_score[9]_i_2_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[9]_i_2 
       (.I0(\scores[9] [9]),
        .I1(\scores[8] [9]),
        .I2(sel0__0[3]),
        .I3(\max_score[9]_i_3_n_0 ),
        .I4(\max_score[15]_i_15_n_0 ),
        .I5(\max_score[9]_i_4_n_0 ),
        .O(\max_score[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[9]_i_3 
       (.I0(\scores[7] [9]),
        .I1(\scores[6] [9]),
        .I2(sel0__0[1]),
        .I3(\scores[5] [9]),
        .I4(sel0__0[0]),
        .I5(\scores[4] [9]),
        .O(\max_score[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_score[9]_i_4 
       (.I0(\scores[3] [9]),
        .I1(\scores[2] [9]),
        .I2(sel0__0[1]),
        .I3(out[9]),
        .I4(sel0__0[0]),
        .I5(\scores[0] [9]),
        .O(\max_score[9]_i_4_n_0 ));
  FDCE \max_score_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[0]),
        .Q(max_score[0]));
  FDCE \max_score_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[10]),
        .Q(max_score[10]));
  FDCE \max_score_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[11]),
        .Q(max_score[11]));
  FDCE \max_score_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[12]),
        .Q(max_score[12]));
  FDCE \max_score_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[13]),
        .Q(max_score[13]));
  FDCE \max_score_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[14]),
        .Q(max_score[14]));
  FDPE \max_score_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .PRE(p_0_in),
        .Q(max_score[15]));
  CARRY4 \max_score_reg[15]_i_3 
       (.CI(\max_score_reg[15]_i_5_n_0 ),
        .CO({\max_score_reg[15]_i_3_n_0 ,\max_score_reg[15]_i_3_n_1 ,\max_score_reg[15]_i_3_n_2 ,\max_score_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\max_score[15]_i_6_n_0 ,\max_score[15]_i_7_n_0 ,\max_score[15]_i_8_n_0 ,\max_score[15]_i_9_n_0 }),
        .O(\NLW_max_score_reg[15]_i_3_O_UNCONNECTED [3:0]),
        .S({\max_score[15]_i_10_n_0 ,\max_score[15]_i_11_n_0 ,\max_score[15]_i_12_n_0 ,\max_score[15]_i_13_n_0 }));
  CARRY4 \max_score_reg[15]_i_5 
       (.CI(1'b0),
        .CO({\max_score_reg[15]_i_5_n_0 ,\max_score_reg[15]_i_5_n_1 ,\max_score_reg[15]_i_5_n_2 ,\max_score_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\max_score[15]_i_17_n_0 ,\max_score[15]_i_18_n_0 ,\max_score[15]_i_19_n_0 ,\max_score[15]_i_20_n_0 }),
        .O(\NLW_max_score_reg[15]_i_5_O_UNCONNECTED [3:0]),
        .S({\max_score[15]_i_21_n_0 ,\max_score[15]_i_22_n_0 ,\max_score[15]_i_23_n_0 ,\max_score[15]_i_24_n_0 }));
  FDCE \max_score_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[1]),
        .Q(max_score[1]));
  FDCE \max_score_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[2]),
        .Q(max_score[2]));
  FDCE \max_score_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[3]),
        .Q(max_score[3]));
  FDCE \max_score_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[4]),
        .Q(max_score[4]));
  FDCE \max_score_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[5]),
        .Q(max_score[5]));
  FDCE \max_score_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[6]),
        .Q(max_score[6]));
  FDCE \max_score_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[7]),
        .Q(max_score[7]));
  FDCE \max_score_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[8]),
        .Q(max_score[8]));
  FDCE \max_score_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_1_in[9]),
        .Q(max_score[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pred_class[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(sel0__0[0]),
        .O(\pred_class[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pred_class[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(sel0__0[1]),
        .O(\pred_class[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pred_class[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(sel0__0[2]),
        .O(\pred_class[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pred_class[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(sel0__0[3]),
        .O(\pred_class[3]_i_1_n_0 ));
  FDCE \pred_class_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\pred_class[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \pred_class_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\pred_class[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \pred_class_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\pred_class[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \pred_class_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\max_score[15]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(\pred_class[3]_i_1_n_0 ),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \score_latch[0][15]_i_1 
       (.I0(done_d),
        .I1(done_wire),
        .I2(\state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hCCC44444CCCF4444)) 
    \scores[0][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [0]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [10]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[0][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [11]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [12]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [13]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[0][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [14]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [15]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[0][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [1]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [2]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [3]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [4]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [5]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [6]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [7]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [8]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[0][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[0] [9]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44444CCCF4444)) 
    \scores[1][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[0]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][0]_i_2 
       (.I0(\scores[8] [0]),
        .I1(\scores[9] [0]),
        .I2(sel0[3]),
        .I3(\scores[1][0]_i_3_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][0]_i_5_n_0 ),
        .O(scores[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][0]_i_3 
       (.I0(\scores[3] [0]),
        .I1(\scores[2] [0]),
        .I2(sel0[1]),
        .I3(out[0]),
        .I4(sel0[0]),
        .I5(\scores[0] [0]),
        .O(\scores[1][0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \scores[1][0]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .O(\scores[1][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][0]_i_5 
       (.I0(\scores[7] [0]),
        .I1(\scores[6] [0]),
        .I2(sel0[1]),
        .I3(\scores[5] [0]),
        .I4(sel0[0]),
        .I5(\scores[4] [0]),
        .O(\scores[1][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[10]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][10]_i_2 
       (.I0(p_2_in[10]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[10]),
        .O(\scores[1][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[11]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][11]_i_2 
       (.I0(p_2_in[11]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[11]),
        .O(\scores[1][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[12]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[1][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][12]_i_10 
       (.I0(\scores[8] [11]),
        .I1(\scores[9] [11]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_19_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_20_n_0 ),
        .O(\scores[1][12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][12]_i_11 
       (.I0(\scores[8] [10]),
        .I1(\scores[9] [10]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_22_n_0 ),
        .O(\scores[1][12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h55553333FF00F0F0)) 
    \scores[1][12]_i_12 
       (.I0(\scores[8] [9]),
        .I1(\scores[9] [9]),
        .I2(\scores[1][12]_i_23_n_0 ),
        .I3(\scores[1][12]_i_24_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_13 
       (.I0(\scores[8] [12]),
        .I1(\scores[9] [12]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_17_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_18_n_0 ),
        .O(\scores[1][12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_14 
       (.I0(\scores[8] [11]),
        .I1(\scores[9] [11]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_19_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_20_n_0 ),
        .O(\scores[1][12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_15 
       (.I0(\scores[8] [10]),
        .I1(\scores[9] [10]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_22_n_0 ),
        .O(\scores[1][12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][12]_i_16 
       (.I0(\scores[8] [9]),
        .I1(\scores[9] [9]),
        .I2(\scores[1][12]_i_23_n_0 ),
        .I3(\scores[1][12]_i_24_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_17 
       (.I0(\scores[3] [12]),
        .I1(\scores[2] [12]),
        .I2(sel0[1]),
        .I3(out[12]),
        .I4(sel0[0]),
        .I5(\scores[0] [12]),
        .O(\scores[1][12]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_18 
       (.I0(\scores[7] [12]),
        .I1(\scores[6] [12]),
        .I2(sel0[1]),
        .I3(\scores[5] [12]),
        .I4(sel0[0]),
        .I5(\scores[4] [12]),
        .O(\scores[1][12]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_19 
       (.I0(\scores[3] [11]),
        .I1(\scores[2] [11]),
        .I2(sel0[1]),
        .I3(out[11]),
        .I4(sel0[0]),
        .I5(\scores[0] [11]),
        .O(\scores[1][12]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][12]_i_2 
       (.I0(p_2_in[12]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[12]),
        .O(\scores[1][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_20 
       (.I0(\scores[7] [11]),
        .I1(\scores[6] [11]),
        .I2(sel0[1]),
        .I3(\scores[5] [11]),
        .I4(sel0[0]),
        .I5(\scores[4] [11]),
        .O(\scores[1][12]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_21 
       (.I0(\scores[3] [10]),
        .I1(\scores[2] [10]),
        .I2(sel0[1]),
        .I3(out[10]),
        .I4(sel0[0]),
        .I5(\scores[0] [10]),
        .O(\scores[1][12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_22 
       (.I0(\scores[7] [10]),
        .I1(\scores[6] [10]),
        .I2(sel0[1]),
        .I3(\scores[5] [10]),
        .I4(sel0[0]),
        .I5(\scores[4] [10]),
        .O(\scores[1][12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][12]_i_23 
       (.I0(\scores[5] [9]),
        .I1(\scores[4] [9]),
        .I2(sel0[1]),
        .I3(\scores[7] [9]),
        .I4(sel0[0]),
        .I5(\scores[6] [9]),
        .O(\scores[1][12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][12]_i_24 
       (.I0(out[9]),
        .I1(\scores[0] [9]),
        .I2(sel0[1]),
        .I3(\scores[3] [9]),
        .I4(sel0[0]),
        .I5(\scores[2] [9]),
        .O(\scores[1][12]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_5 
       (.I0(\scores[8] [12]),
        .I1(\scores[9] [12]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_17_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_18_n_0 ),
        .O(scores[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_6 
       (.I0(\scores[8] [11]),
        .I1(\scores[9] [11]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_19_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_20_n_0 ),
        .O(scores[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][12]_i_7 
       (.I0(\scores[8] [10]),
        .I1(\scores[9] [10]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_22_n_0 ),
        .O(scores[10]));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][12]_i_8 
       (.I0(\scores[8] [9]),
        .I1(\scores[9] [9]),
        .I2(\scores[1][12]_i_23_n_0 ),
        .I3(\scores[1][12]_i_24_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(scores[9]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][12]_i_9 
       (.I0(\scores[8] [12]),
        .I1(\scores[9] [12]),
        .I2(sel0[3]),
        .I3(\scores[1][12]_i_17_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][12]_i_18_n_0 ),
        .O(\scores[1][12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[13]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][13]_i_2 
       (.I0(p_2_in[13]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[13]),
        .O(\scores[1][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[14]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][14]_i_2 
       (.I0(p_2_in[14]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[14]),
        .O(\scores[1][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[15]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[1][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_10 
       (.I0(\scores[1][15]_i_16_0 [58]),
        .I1(mask_dout_in[58]),
        .I2(\scores[1][15]_i_25_n_0 ),
        .I3(\scores[1][15]_i_26_n_0 ),
        .I4(\scores[1][15]_i_27_n_0 ),
        .I5(\scores[1][15]_i_28_n_0 ),
        .O(\scores[1][15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_100 
       (.I0(mask_dout_in[233]),
        .I1(\scores[1][15]_i_16_0 [233]),
        .I2(mask_dout_in[234]),
        .I3(\scores[1][15]_i_16_0 [234]),
        .I4(\scores[1][15]_i_16_0 [239]),
        .I5(mask_dout_in[239]),
        .O(\scores[1][15]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_101 
       (.I0(\scores[1][15]_i_16_0 [227]),
        .I1(mask_dout_in[227]),
        .I2(\scores[1][15]_i_16_0 [226]),
        .I3(mask_dout_in[226]),
        .O(\scores[1][15]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_102 
       (.I0(\scores[1][15]_i_16_0 [225]),
        .I1(mask_dout_in[225]),
        .I2(\scores[1][15]_i_16_0 [224]),
        .I3(mask_dout_in[224]),
        .O(\scores[1][15]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_103 
       (.I0(\scores[1][15]_i_16_0 [231]),
        .I1(mask_dout_in[231]),
        .I2(\scores[1][15]_i_16_0 [230]),
        .I3(mask_dout_in[230]),
        .O(\scores[1][15]_i_103_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_104 
       (.I0(\scores[1][15]_i_16_0 [229]),
        .I1(mask_dout_in[229]),
        .I2(\scores[1][15]_i_16_0 [228]),
        .I3(mask_dout_in[228]),
        .O(\scores[1][15]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_105 
       (.I0(mask_dout_in[137]),
        .I1(\scores[1][15]_i_16_0 [137]),
        .I2(mask_dout_in[138]),
        .I3(\scores[1][15]_i_16_0 [138]),
        .I4(\scores[1][15]_i_16_0 [143]),
        .I5(mask_dout_in[143]),
        .O(\scores[1][15]_i_105_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_106 
       (.I0(\scores[1][15]_i_16_0 [131]),
        .I1(mask_dout_in[131]),
        .I2(\scores[1][15]_i_16_0 [130]),
        .I3(mask_dout_in[130]),
        .O(\scores[1][15]_i_106_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_107 
       (.I0(\scores[1][15]_i_16_0 [129]),
        .I1(mask_dout_in[129]),
        .I2(\scores[1][15]_i_16_0 [128]),
        .I3(mask_dout_in[128]),
        .O(\scores[1][15]_i_107_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_108 
       (.I0(\scores[1][15]_i_16_0 [135]),
        .I1(mask_dout_in[135]),
        .I2(\scores[1][15]_i_16_0 [134]),
        .I3(mask_dout_in[134]),
        .O(\scores[1][15]_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_109 
       (.I0(\scores[1][15]_i_16_0 [133]),
        .I1(mask_dout_in[133]),
        .I2(\scores[1][15]_i_16_0 [132]),
        .I3(mask_dout_in[132]),
        .O(\scores[1][15]_i_109_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_110 
       (.I0(\scores[1][15]_i_16_0 [147]),
        .I1(mask_dout_in[147]),
        .I2(\scores[1][15]_i_16_0 [146]),
        .I3(mask_dout_in[146]),
        .O(\scores[1][15]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_111 
       (.I0(\scores[1][15]_i_16_0 [145]),
        .I1(mask_dout_in[145]),
        .I2(\scores[1][15]_i_16_0 [144]),
        .I3(mask_dout_in[144]),
        .O(\scores[1][15]_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_112 
       (.I0(\scores[1][15]_i_16_0 [151]),
        .I1(mask_dout_in[151]),
        .I2(\scores[1][15]_i_16_0 [150]),
        .I3(mask_dout_in[150]),
        .O(\scores[1][15]_i_112_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_113 
       (.I0(\scores[1][15]_i_16_0 [149]),
        .I1(mask_dout_in[149]),
        .I2(\scores[1][15]_i_16_0 [148]),
        .I3(mask_dout_in[148]),
        .O(\scores[1][15]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_114 
       (.I0(\scores[1][15]_i_16_0 [179]),
        .I1(mask_dout_in[179]),
        .I2(\scores[1][15]_i_16_0 [178]),
        .I3(mask_dout_in[178]),
        .O(\scores[1][15]_i_114_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_115 
       (.I0(\scores[1][15]_i_16_0 [177]),
        .I1(mask_dout_in[177]),
        .I2(\scores[1][15]_i_16_0 [176]),
        .I3(mask_dout_in[176]),
        .O(\scores[1][15]_i_115_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_116 
       (.I0(\scores[1][15]_i_16_0 [183]),
        .I1(mask_dout_in[183]),
        .I2(\scores[1][15]_i_16_0 [182]),
        .I3(mask_dout_in[182]),
        .O(\scores[1][15]_i_116_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_117 
       (.I0(\scores[1][15]_i_16_0 [181]),
        .I1(mask_dout_in[181]),
        .I2(\scores[1][15]_i_16_0 [180]),
        .I3(mask_dout_in[180]),
        .O(\scores[1][15]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_118 
       (.I0(mask_dout_in[169]),
        .I1(\scores[1][15]_i_16_0 [169]),
        .I2(mask_dout_in[170]),
        .I3(\scores[1][15]_i_16_0 [170]),
        .I4(\scores[1][15]_i_16_0 [175]),
        .I5(mask_dout_in[175]),
        .O(\scores[1][15]_i_118_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_119 
       (.I0(\scores[1][15]_i_16_0 [163]),
        .I1(mask_dout_in[163]),
        .I2(\scores[1][15]_i_16_0 [162]),
        .I3(mask_dout_in[162]),
        .O(\scores[1][15]_i_119_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_120 
       (.I0(\scores[1][15]_i_16_0 [161]),
        .I1(mask_dout_in[161]),
        .I2(\scores[1][15]_i_16_0 [160]),
        .I3(mask_dout_in[160]),
        .O(\scores[1][15]_i_120_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_121 
       (.I0(\scores[1][15]_i_16_0 [167]),
        .I1(mask_dout_in[167]),
        .I2(\scores[1][15]_i_16_0 [166]),
        .I3(mask_dout_in[166]),
        .O(\scores[1][15]_i_121_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_122 
       (.I0(\scores[1][15]_i_16_0 [165]),
        .I1(mask_dout_in[165]),
        .I2(\scores[1][15]_i_16_0 [164]),
        .I3(mask_dout_in[164]),
        .O(\scores[1][15]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_123 
       (.I0(mask_dout_in[73]),
        .I1(\scores[1][15]_i_16_0 [73]),
        .I2(mask_dout_in[74]),
        .I3(\scores[1][15]_i_16_0 [74]),
        .I4(\scores[1][15]_i_16_0 [79]),
        .I5(mask_dout_in[79]),
        .O(\scores[1][15]_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_124 
       (.I0(\scores[1][15]_i_16_0 [67]),
        .I1(mask_dout_in[67]),
        .I2(\scores[1][15]_i_16_0 [66]),
        .I3(mask_dout_in[66]),
        .O(\scores[1][15]_i_124_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_125 
       (.I0(\scores[1][15]_i_16_0 [65]),
        .I1(mask_dout_in[65]),
        .I2(\scores[1][15]_i_16_0 [64]),
        .I3(mask_dout_in[64]),
        .O(\scores[1][15]_i_125_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_126 
       (.I0(\scores[1][15]_i_16_0 [71]),
        .I1(mask_dout_in[71]),
        .I2(\scores[1][15]_i_16_0 [70]),
        .I3(mask_dout_in[70]),
        .O(\scores[1][15]_i_126_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_127 
       (.I0(\scores[1][15]_i_16_0 [69]),
        .I1(mask_dout_in[69]),
        .I2(\scores[1][15]_i_16_0 [68]),
        .I3(mask_dout_in[68]),
        .O(\scores[1][15]_i_127_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_128 
       (.I0(\scores[1][15]_i_16_0 [83]),
        .I1(mask_dout_in[83]),
        .I2(\scores[1][15]_i_16_0 [82]),
        .I3(mask_dout_in[82]),
        .O(\scores[1][15]_i_128_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_129 
       (.I0(\scores[1][15]_i_16_0 [81]),
        .I1(mask_dout_in[81]),
        .I2(\scores[1][15]_i_16_0 [80]),
        .I3(mask_dout_in[80]),
        .O(\scores[1][15]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_13 
       (.I0(\scores[1][15]_i_37_n_0 ),
        .I1(\scores[1][15]_i_38_n_0 ),
        .I2(\scores[1][15]_i_39_n_0 ),
        .I3(\scores[1][15]_i_40_n_0 ),
        .I4(mask_dout_in[217]),
        .I5(\scores[1][15]_i_16_0 [217]),
        .O(\scores[1][15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_130 
       (.I0(\scores[1][15]_i_16_0 [87]),
        .I1(mask_dout_in[87]),
        .I2(\scores[1][15]_i_16_0 [86]),
        .I3(mask_dout_in[86]),
        .O(\scores[1][15]_i_130_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_131 
       (.I0(\scores[1][15]_i_16_0 [85]),
        .I1(mask_dout_in[85]),
        .I2(\scores[1][15]_i_16_0 [84]),
        .I3(mask_dout_in[84]),
        .O(\scores[1][15]_i_131_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_132 
       (.I0(\scores[1][15]_i_16_0 [115]),
        .I1(mask_dout_in[115]),
        .I2(\scores[1][15]_i_16_0 [114]),
        .I3(mask_dout_in[114]),
        .O(\scores[1][15]_i_132_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_133 
       (.I0(\scores[1][15]_i_16_0 [113]),
        .I1(mask_dout_in[113]),
        .I2(\scores[1][15]_i_16_0 [112]),
        .I3(mask_dout_in[112]),
        .O(\scores[1][15]_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_134 
       (.I0(\scores[1][15]_i_16_0 [119]),
        .I1(mask_dout_in[119]),
        .I2(\scores[1][15]_i_16_0 [118]),
        .I3(mask_dout_in[118]),
        .O(\scores[1][15]_i_134_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_135 
       (.I0(\scores[1][15]_i_16_0 [117]),
        .I1(mask_dout_in[117]),
        .I2(\scores[1][15]_i_16_0 [116]),
        .I3(mask_dout_in[116]),
        .O(\scores[1][15]_i_135_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_136 
       (.I0(mask_dout_in[105]),
        .I1(\scores[1][15]_i_16_0 [105]),
        .I2(mask_dout_in[106]),
        .I3(\scores[1][15]_i_16_0 [106]),
        .I4(\scores[1][15]_i_16_0 [111]),
        .I5(mask_dout_in[111]),
        .O(\scores[1][15]_i_136_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_137 
       (.I0(\scores[1][15]_i_16_0 [99]),
        .I1(mask_dout_in[99]),
        .I2(\scores[1][15]_i_16_0 [98]),
        .I3(mask_dout_in[98]),
        .O(\scores[1][15]_i_137_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_138 
       (.I0(\scores[1][15]_i_16_0 [97]),
        .I1(mask_dout_in[97]),
        .I2(\scores[1][15]_i_16_0 [96]),
        .I3(mask_dout_in[96]),
        .O(\scores[1][15]_i_138_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_139 
       (.I0(\scores[1][15]_i_16_0 [103]),
        .I1(mask_dout_in[103]),
        .I2(\scores[1][15]_i_16_0 [102]),
        .I3(mask_dout_in[102]),
        .O(\scores[1][15]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \scores[1][15]_i_14 
       (.I0(\scores[1][15]_i_41_n_0 ),
        .I1(\scores[1][15]_i_16_0 [219]),
        .I2(mask_dout_in[219]),
        .I3(\scores[1][15]_i_16_0 [218]),
        .I4(mask_dout_in[218]),
        .I5(\scores[1][15]_i_42_n_0 ),
        .O(\scores[1][15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_140 
       (.I0(\scores[1][15]_i_16_0 [101]),
        .I1(mask_dout_in[101]),
        .I2(\scores[1][15]_i_16_0 [100]),
        .I3(mask_dout_in[100]),
        .O(\scores[1][15]_i_140_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_141 
       (.I0(mask_dout_in[9]),
        .I1(\scores[1][15]_i_16_0 [9]),
        .I2(mask_dout_in[10]),
        .I3(\scores[1][15]_i_16_0 [10]),
        .I4(\scores[1][15]_i_16_0 [15]),
        .I5(mask_dout_in[15]),
        .O(\scores[1][15]_i_141_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_142 
       (.I0(\scores[1][15]_i_16_0 [3]),
        .I1(mask_dout_in[3]),
        .I2(\scores[1][15]_i_16_0 [2]),
        .I3(mask_dout_in[2]),
        .O(\scores[1][15]_i_142_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_143 
       (.I0(\scores[1][15]_i_16_0 [1]),
        .I1(mask_dout_in[1]),
        .I2(\scores[1][15]_i_16_0 [0]),
        .I3(mask_dout_in[0]),
        .O(\scores[1][15]_i_143_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_144 
       (.I0(\scores[1][15]_i_16_0 [7]),
        .I1(mask_dout_in[7]),
        .I2(\scores[1][15]_i_16_0 [6]),
        .I3(mask_dout_in[6]),
        .O(\scores[1][15]_i_144_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_145 
       (.I0(\scores[1][15]_i_16_0 [5]),
        .I1(mask_dout_in[5]),
        .I2(\scores[1][15]_i_16_0 [4]),
        .I3(mask_dout_in[4]),
        .O(\scores[1][15]_i_145_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_146 
       (.I0(\scores[1][15]_i_16_0 [19]),
        .I1(mask_dout_in[19]),
        .I2(\scores[1][15]_i_16_0 [18]),
        .I3(mask_dout_in[18]),
        .O(\scores[1][15]_i_146_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_147 
       (.I0(\scores[1][15]_i_16_0 [17]),
        .I1(mask_dout_in[17]),
        .I2(\scores[1][15]_i_16_0 [16]),
        .I3(mask_dout_in[16]),
        .O(\scores[1][15]_i_147_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_148 
       (.I0(\scores[1][15]_i_16_0 [23]),
        .I1(mask_dout_in[23]),
        .I2(\scores[1][15]_i_16_0 [22]),
        .I3(mask_dout_in[22]),
        .O(\scores[1][15]_i_148_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_149 
       (.I0(\scores[1][15]_i_16_0 [21]),
        .I1(mask_dout_in[21]),
        .I2(\scores[1][15]_i_16_0 [20]),
        .I3(mask_dout_in[20]),
        .O(\scores[1][15]_i_149_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \scores[1][15]_i_15 
       (.I0(mask_dout_in[253]),
        .I1(\scores[1][15]_i_16_0 [253]),
        .I2(mask_dout_in[254]),
        .I3(\scores[1][15]_i_16_0 [254]),
        .I4(\scores[1][15]_i_43_n_0 ),
        .O(\scores[1][15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_150 
       (.I0(\scores[1][15]_i_16_0 [51]),
        .I1(mask_dout_in[51]),
        .I2(\scores[1][15]_i_16_0 [50]),
        .I3(mask_dout_in[50]),
        .O(\scores[1][15]_i_150_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_151 
       (.I0(\scores[1][15]_i_16_0 [49]),
        .I1(mask_dout_in[49]),
        .I2(\scores[1][15]_i_16_0 [48]),
        .I3(mask_dout_in[48]),
        .O(\scores[1][15]_i_151_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_152 
       (.I0(\scores[1][15]_i_16_0 [55]),
        .I1(mask_dout_in[55]),
        .I2(\scores[1][15]_i_16_0 [54]),
        .I3(mask_dout_in[54]),
        .O(\scores[1][15]_i_152_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_153 
       (.I0(\scores[1][15]_i_16_0 [53]),
        .I1(mask_dout_in[53]),
        .I2(\scores[1][15]_i_16_0 [52]),
        .I3(mask_dout_in[52]),
        .O(\scores[1][15]_i_153_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_154 
       (.I0(mask_dout_in[41]),
        .I1(\scores[1][15]_i_16_0 [41]),
        .I2(mask_dout_in[42]),
        .I3(\scores[1][15]_i_16_0 [42]),
        .I4(\scores[1][15]_i_16_0 [47]),
        .I5(mask_dout_in[47]),
        .O(\scores[1][15]_i_154_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_155 
       (.I0(\scores[1][15]_i_16_0 [35]),
        .I1(mask_dout_in[35]),
        .I2(\scores[1][15]_i_16_0 [34]),
        .I3(mask_dout_in[34]),
        .O(\scores[1][15]_i_155_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_156 
       (.I0(\scores[1][15]_i_16_0 [33]),
        .I1(mask_dout_in[33]),
        .I2(\scores[1][15]_i_16_0 [32]),
        .I3(mask_dout_in[32]),
        .O(\scores[1][15]_i_156_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_157 
       (.I0(\scores[1][15]_i_16_0 [39]),
        .I1(mask_dout_in[39]),
        .I2(\scores[1][15]_i_16_0 [38]),
        .I3(mask_dout_in[38]),
        .O(\scores[1][15]_i_157_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_158 
       (.I0(\scores[1][15]_i_16_0 [37]),
        .I1(mask_dout_in[37]),
        .I2(\scores[1][15]_i_16_0 [36]),
        .I3(mask_dout_in[36]),
        .O(\scores[1][15]_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_16 
       (.I0(\scores[1][15]_i_44_n_0 ),
        .I1(\scores[1][15]_i_45_n_0 ),
        .I2(\scores[1][15]_i_46_n_0 ),
        .I3(\scores[1][15]_i_47_n_0 ),
        .I4(mask_dout_in[249]),
        .I5(\scores[1][15]_i_16_0 [249]),
        .O(\scores[1][15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_17 
       (.I0(\scores[1][15]_i_48_n_0 ),
        .I1(\scores[1][15]_i_49_n_0 ),
        .I2(\scores[1][15]_i_50_n_0 ),
        .I3(\scores[1][15]_i_51_n_0 ),
        .I4(mask_dout_in[153]),
        .I5(\scores[1][15]_i_16_0 [153]),
        .O(\scores[1][15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \scores[1][15]_i_18 
       (.I0(\scores[1][15]_i_52_n_0 ),
        .I1(\scores[1][15]_i_16_0 [155]),
        .I2(mask_dout_in[155]),
        .I3(\scores[1][15]_i_16_0 [154]),
        .I4(mask_dout_in[154]),
        .I5(\scores[1][15]_i_53_n_0 ),
        .O(\scores[1][15]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \scores[1][15]_i_19 
       (.I0(mask_dout_in[189]),
        .I1(\scores[1][15]_i_16_0 [189]),
        .I2(mask_dout_in[190]),
        .I3(\scores[1][15]_i_16_0 [190]),
        .I4(\scores[1][15]_i_54_n_0 ),
        .O(\scores[1][15]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \scores[1][15]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg_n_0_[1] ),
        .O(\scores[1][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_20 
       (.I0(\scores[1][15]_i_55_n_0 ),
        .I1(\scores[1][15]_i_56_n_0 ),
        .I2(\scores[1][15]_i_57_n_0 ),
        .I3(\scores[1][15]_i_58_n_0 ),
        .I4(mask_dout_in[185]),
        .I5(\scores[1][15]_i_16_0 [185]),
        .O(\scores[1][15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_21 
       (.I0(\scores[1][15]_i_59_n_0 ),
        .I1(\scores[1][15]_i_60_n_0 ),
        .I2(\scores[1][15]_i_61_n_0 ),
        .I3(\scores[1][15]_i_62_n_0 ),
        .I4(mask_dout_in[89]),
        .I5(\scores[1][15]_i_16_0 [89]),
        .O(\scores[1][15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \scores[1][15]_i_22 
       (.I0(\scores[1][15]_i_63_n_0 ),
        .I1(\scores[1][15]_i_16_0 [91]),
        .I2(mask_dout_in[91]),
        .I3(\scores[1][15]_i_16_0 [90]),
        .I4(mask_dout_in[90]),
        .I5(\scores[1][15]_i_64_n_0 ),
        .O(\scores[1][15]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \scores[1][15]_i_23 
       (.I0(mask_dout_in[125]),
        .I1(\scores[1][15]_i_16_0 [125]),
        .I2(mask_dout_in[126]),
        .I3(\scores[1][15]_i_16_0 [126]),
        .I4(\scores[1][15]_i_65_n_0 ),
        .O(\scores[1][15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_24 
       (.I0(\scores[1][15]_i_66_n_0 ),
        .I1(\scores[1][15]_i_67_n_0 ),
        .I2(\scores[1][15]_i_68_n_0 ),
        .I3(\scores[1][15]_i_69_n_0 ),
        .I4(mask_dout_in[121]),
        .I5(\scores[1][15]_i_16_0 [121]),
        .O(\scores[1][15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_25 
       (.I0(\scores[1][15]_i_70_n_0 ),
        .I1(\scores[1][15]_i_71_n_0 ),
        .I2(\scores[1][15]_i_72_n_0 ),
        .I3(\scores[1][15]_i_73_n_0 ),
        .I4(mask_dout_in[25]),
        .I5(\scores[1][15]_i_16_0 [25]),
        .O(\scores[1][15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \scores[1][15]_i_26 
       (.I0(\scores[1][15]_i_74_n_0 ),
        .I1(\scores[1][15]_i_16_0 [27]),
        .I2(mask_dout_in[27]),
        .I3(\scores[1][15]_i_16_0 [26]),
        .I4(mask_dout_in[26]),
        .I5(\scores[1][15]_i_75_n_0 ),
        .O(\scores[1][15]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \scores[1][15]_i_27 
       (.I0(mask_dout_in[61]),
        .I1(\scores[1][15]_i_16_0 [61]),
        .I2(mask_dout_in[62]),
        .I3(\scores[1][15]_i_16_0 [62]),
        .I4(\scores[1][15]_i_76_n_0 ),
        .O(\scores[1][15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \scores[1][15]_i_28 
       (.I0(\scores[1][15]_i_77_n_0 ),
        .I1(\scores[1][15]_i_78_n_0 ),
        .I2(\scores[1][15]_i_79_n_0 ),
        .I3(\scores[1][15]_i_80_n_0 ),
        .I4(mask_dout_in[57]),
        .I5(\scores[1][15]_i_16_0 [57]),
        .O(\scores[1][15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][15]_i_29 
       (.I0(\scores[8] [14]),
        .I1(\scores[9] [14]),
        .I2(\scores[1][15]_i_81_n_0 ),
        .I3(\scores[1][15]_i_82_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(scores[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \scores[1][15]_i_3 
       (.I0(sel0[2]),
        .I1(\scores[1][15]_i_7_n_0 ),
        .I2(\scores[1][15]_i_8_n_0 ),
        .I3(\scores[1][15]_i_9_n_0 ),
        .I4(\scores[1][15]_i_10_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][15]_i_30 
       (.I0(\scores[8] [13]),
        .I1(\scores[9] [13]),
        .I2(sel0[3]),
        .I3(\scores[1][15]_i_83_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][15]_i_84_n_0 ),
        .O(scores[13]));
  LUT6 #(
    .INIT(64'h55553333FF00F0F0)) 
    \scores[1][15]_i_31 
       (.I0(\scores[8] [15]),
        .I1(\scores[9] [15]),
        .I2(\scores[1][15]_i_85_n_0 ),
        .I3(\scores[1][15]_i_86_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h55553333FF00F0F0)) 
    \scores[1][15]_i_32 
       (.I0(\scores[8] [14]),
        .I1(\scores[9] [14]),
        .I2(\scores[1][15]_i_81_n_0 ),
        .I3(\scores[1][15]_i_82_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][15]_i_33 
       (.I0(\scores[8] [13]),
        .I1(\scores[9] [13]),
        .I2(sel0[3]),
        .I3(\scores[1][15]_i_83_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][15]_i_84_n_0 ),
        .O(\scores[1][15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][15]_i_34 
       (.I0(\scores[8] [15]),
        .I1(\scores[9] [15]),
        .I2(\scores[1][15]_i_85_n_0 ),
        .I3(\scores[1][15]_i_86_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(scores[15]));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][15]_i_35 
       (.I0(\scores[8] [14]),
        .I1(\scores[9] [14]),
        .I2(\scores[1][15]_i_81_n_0 ),
        .I3(\scores[1][15]_i_82_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][15]_i_36 
       (.I0(\scores[8] [13]),
        .I1(\scores[9] [13]),
        .I2(sel0[3]),
        .I3(\scores[1][15]_i_83_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][15]_i_84_n_0 ),
        .O(\scores[1][15]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_37 
       (.I0(\scores[1][15]_i_16_0 [221]),
        .I1(mask_dout_in[221]),
        .I2(\scores[1][15]_i_16_0 [220]),
        .I3(mask_dout_in[220]),
        .O(\scores[1][15]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_38 
       (.I0(\scores[1][15]_i_87_n_0 ),
        .I1(mask_dout_in[205]),
        .I2(\scores[1][15]_i_16_0 [205]),
        .I3(mask_dout_in[206]),
        .I4(\scores[1][15]_i_16_0 [206]),
        .O(\scores[1][15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_39 
       (.I0(\scores[1][15]_i_16_0 [200]),
        .I1(mask_dout_in[200]),
        .I2(\scores[1][15]_i_88_n_0 ),
        .I3(\scores[1][15]_i_89_n_0 ),
        .I4(\scores[1][15]_i_90_n_0 ),
        .I5(\scores[1][15]_i_91_n_0 ),
        .O(\scores[1][15]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \scores[1][15]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\scores[1][15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_40 
       (.I0(\scores[1][15]_i_16_0 [204]),
        .I1(mask_dout_in[204]),
        .I2(\scores[1][15]_i_16_0 [203]),
        .I3(mask_dout_in[203]),
        .O(\scores[1][15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_41 
       (.I0(\scores[1][15]_i_16_0 [216]),
        .I1(mask_dout_in[216]),
        .I2(\scores[1][15]_i_92_n_0 ),
        .I3(\scores[1][15]_i_93_n_0 ),
        .I4(\scores[1][15]_i_94_n_0 ),
        .I5(\scores[1][15]_i_95_n_0 ),
        .O(\scores[1][15]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_42 
       (.I0(\scores[1][15]_i_16_0 [223]),
        .I1(mask_dout_in[223]),
        .I2(\scores[1][15]_i_16_0 [222]),
        .I3(mask_dout_in[222]),
        .O(\scores[1][15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_43 
       (.I0(\scores[1][15]_i_16_0 [248]),
        .I1(mask_dout_in[248]),
        .I2(\scores[1][15]_i_96_n_0 ),
        .I3(\scores[1][15]_i_97_n_0 ),
        .I4(\scores[1][15]_i_98_n_0 ),
        .I5(\scores[1][15]_i_99_n_0 ),
        .O(\scores[1][15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_44 
       (.I0(mask_dout_in[251]),
        .I1(\scores[1][15]_i_16_0 [251]),
        .I2(mask_dout_in[252]),
        .I3(\scores[1][15]_i_16_0 [252]),
        .I4(\scores[1][15]_i_16_0 [255]),
        .I5(mask_dout_in[255]),
        .O(\scores[1][15]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_45 
       (.I0(\scores[1][15]_i_100_n_0 ),
        .I1(mask_dout_in[237]),
        .I2(\scores[1][15]_i_16_0 [237]),
        .I3(mask_dout_in[238]),
        .I4(\scores[1][15]_i_16_0 [238]),
        .O(\scores[1][15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_46 
       (.I0(\scores[1][15]_i_16_0 [232]),
        .I1(mask_dout_in[232]),
        .I2(\scores[1][15]_i_101_n_0 ),
        .I3(\scores[1][15]_i_102_n_0 ),
        .I4(\scores[1][15]_i_103_n_0 ),
        .I5(\scores[1][15]_i_104_n_0 ),
        .O(\scores[1][15]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_47 
       (.I0(\scores[1][15]_i_16_0 [236]),
        .I1(mask_dout_in[236]),
        .I2(\scores[1][15]_i_16_0 [235]),
        .I3(mask_dout_in[235]),
        .O(\scores[1][15]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_48 
       (.I0(\scores[1][15]_i_16_0 [157]),
        .I1(mask_dout_in[157]),
        .I2(\scores[1][15]_i_16_0 [156]),
        .I3(mask_dout_in[156]),
        .O(\scores[1][15]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_49 
       (.I0(\scores[1][15]_i_105_n_0 ),
        .I1(mask_dout_in[141]),
        .I2(\scores[1][15]_i_16_0 [141]),
        .I3(mask_dout_in[142]),
        .I4(\scores[1][15]_i_16_0 [142]),
        .O(\scores[1][15]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \scores[1][15]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\scores[1][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_50 
       (.I0(\scores[1][15]_i_16_0 [136]),
        .I1(mask_dout_in[136]),
        .I2(\scores[1][15]_i_106_n_0 ),
        .I3(\scores[1][15]_i_107_n_0 ),
        .I4(\scores[1][15]_i_108_n_0 ),
        .I5(\scores[1][15]_i_109_n_0 ),
        .O(\scores[1][15]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_51 
       (.I0(\scores[1][15]_i_16_0 [140]),
        .I1(mask_dout_in[140]),
        .I2(\scores[1][15]_i_16_0 [139]),
        .I3(mask_dout_in[139]),
        .O(\scores[1][15]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_52 
       (.I0(\scores[1][15]_i_16_0 [152]),
        .I1(mask_dout_in[152]),
        .I2(\scores[1][15]_i_110_n_0 ),
        .I3(\scores[1][15]_i_111_n_0 ),
        .I4(\scores[1][15]_i_112_n_0 ),
        .I5(\scores[1][15]_i_113_n_0 ),
        .O(\scores[1][15]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_53 
       (.I0(\scores[1][15]_i_16_0 [159]),
        .I1(mask_dout_in[159]),
        .I2(\scores[1][15]_i_16_0 [158]),
        .I3(mask_dout_in[158]),
        .O(\scores[1][15]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_54 
       (.I0(\scores[1][15]_i_16_0 [184]),
        .I1(mask_dout_in[184]),
        .I2(\scores[1][15]_i_114_n_0 ),
        .I3(\scores[1][15]_i_115_n_0 ),
        .I4(\scores[1][15]_i_116_n_0 ),
        .I5(\scores[1][15]_i_117_n_0 ),
        .O(\scores[1][15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_55 
       (.I0(mask_dout_in[187]),
        .I1(\scores[1][15]_i_16_0 [187]),
        .I2(mask_dout_in[188]),
        .I3(\scores[1][15]_i_16_0 [188]),
        .I4(\scores[1][15]_i_16_0 [191]),
        .I5(mask_dout_in[191]),
        .O(\scores[1][15]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_56 
       (.I0(\scores[1][15]_i_118_n_0 ),
        .I1(mask_dout_in[173]),
        .I2(\scores[1][15]_i_16_0 [173]),
        .I3(mask_dout_in[174]),
        .I4(\scores[1][15]_i_16_0 [174]),
        .O(\scores[1][15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_57 
       (.I0(\scores[1][15]_i_16_0 [168]),
        .I1(mask_dout_in[168]),
        .I2(\scores[1][15]_i_119_n_0 ),
        .I3(\scores[1][15]_i_120_n_0 ),
        .I4(\scores[1][15]_i_121_n_0 ),
        .I5(\scores[1][15]_i_122_n_0 ),
        .O(\scores[1][15]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_58 
       (.I0(\scores[1][15]_i_16_0 [172]),
        .I1(mask_dout_in[172]),
        .I2(\scores[1][15]_i_16_0 [171]),
        .I3(mask_dout_in[171]),
        .O(\scores[1][15]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_59 
       (.I0(\scores[1][15]_i_16_0 [93]),
        .I1(mask_dout_in[93]),
        .I2(\scores[1][15]_i_16_0 [92]),
        .I3(mask_dout_in[92]),
        .O(\scores[1][15]_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][15]_i_6 
       (.I0(p_2_in[15]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[15]),
        .O(\scores[1][15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_60 
       (.I0(\scores[1][15]_i_123_n_0 ),
        .I1(mask_dout_in[77]),
        .I2(\scores[1][15]_i_16_0 [77]),
        .I3(mask_dout_in[78]),
        .I4(\scores[1][15]_i_16_0 [78]),
        .O(\scores[1][15]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_61 
       (.I0(\scores[1][15]_i_16_0 [72]),
        .I1(mask_dout_in[72]),
        .I2(\scores[1][15]_i_124_n_0 ),
        .I3(\scores[1][15]_i_125_n_0 ),
        .I4(\scores[1][15]_i_126_n_0 ),
        .I5(\scores[1][15]_i_127_n_0 ),
        .O(\scores[1][15]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_62 
       (.I0(\scores[1][15]_i_16_0 [76]),
        .I1(mask_dout_in[76]),
        .I2(\scores[1][15]_i_16_0 [75]),
        .I3(mask_dout_in[75]),
        .O(\scores[1][15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_63 
       (.I0(\scores[1][15]_i_16_0 [88]),
        .I1(mask_dout_in[88]),
        .I2(\scores[1][15]_i_128_n_0 ),
        .I3(\scores[1][15]_i_129_n_0 ),
        .I4(\scores[1][15]_i_130_n_0 ),
        .I5(\scores[1][15]_i_131_n_0 ),
        .O(\scores[1][15]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_64 
       (.I0(\scores[1][15]_i_16_0 [95]),
        .I1(mask_dout_in[95]),
        .I2(\scores[1][15]_i_16_0 [94]),
        .I3(mask_dout_in[94]),
        .O(\scores[1][15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_65 
       (.I0(\scores[1][15]_i_16_0 [120]),
        .I1(mask_dout_in[120]),
        .I2(\scores[1][15]_i_132_n_0 ),
        .I3(\scores[1][15]_i_133_n_0 ),
        .I4(\scores[1][15]_i_134_n_0 ),
        .I5(\scores[1][15]_i_135_n_0 ),
        .O(\scores[1][15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_66 
       (.I0(mask_dout_in[123]),
        .I1(\scores[1][15]_i_16_0 [123]),
        .I2(mask_dout_in[124]),
        .I3(\scores[1][15]_i_16_0 [124]),
        .I4(\scores[1][15]_i_16_0 [127]),
        .I5(mask_dout_in[127]),
        .O(\scores[1][15]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_67 
       (.I0(\scores[1][15]_i_136_n_0 ),
        .I1(mask_dout_in[109]),
        .I2(\scores[1][15]_i_16_0 [109]),
        .I3(mask_dout_in[110]),
        .I4(\scores[1][15]_i_16_0 [110]),
        .O(\scores[1][15]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_68 
       (.I0(\scores[1][15]_i_16_0 [104]),
        .I1(mask_dout_in[104]),
        .I2(\scores[1][15]_i_137_n_0 ),
        .I3(\scores[1][15]_i_138_n_0 ),
        .I4(\scores[1][15]_i_139_n_0 ),
        .I5(\scores[1][15]_i_140_n_0 ),
        .O(\scores[1][15]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_69 
       (.I0(\scores[1][15]_i_16_0 [108]),
        .I1(mask_dout_in[108]),
        .I2(\scores[1][15]_i_16_0 [107]),
        .I3(mask_dout_in[107]),
        .O(\scores[1][15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_7 
       (.I0(\scores[1][15]_i_16_0 [250]),
        .I1(mask_dout_in[250]),
        .I2(\scores[1][15]_i_13_n_0 ),
        .I3(\scores[1][15]_i_14_n_0 ),
        .I4(\scores[1][15]_i_15_n_0 ),
        .I5(\scores[1][15]_i_16_n_0 ),
        .O(\scores[1][15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_70 
       (.I0(\scores[1][15]_i_16_0 [29]),
        .I1(mask_dout_in[29]),
        .I2(\scores[1][15]_i_16_0 [28]),
        .I3(mask_dout_in[28]),
        .O(\scores[1][15]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_71 
       (.I0(\scores[1][15]_i_141_n_0 ),
        .I1(mask_dout_in[13]),
        .I2(\scores[1][15]_i_16_0 [13]),
        .I3(mask_dout_in[14]),
        .I4(\scores[1][15]_i_16_0 [14]),
        .O(\scores[1][15]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_72 
       (.I0(\scores[1][15]_i_16_0 [8]),
        .I1(mask_dout_in[8]),
        .I2(\scores[1][15]_i_142_n_0 ),
        .I3(\scores[1][15]_i_143_n_0 ),
        .I4(\scores[1][15]_i_144_n_0 ),
        .I5(\scores[1][15]_i_145_n_0 ),
        .O(\scores[1][15]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_73 
       (.I0(\scores[1][15]_i_16_0 [12]),
        .I1(mask_dout_in[12]),
        .I2(\scores[1][15]_i_16_0 [11]),
        .I3(mask_dout_in[11]),
        .O(\scores[1][15]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_74 
       (.I0(\scores[1][15]_i_16_0 [24]),
        .I1(mask_dout_in[24]),
        .I2(\scores[1][15]_i_146_n_0 ),
        .I3(\scores[1][15]_i_147_n_0 ),
        .I4(\scores[1][15]_i_148_n_0 ),
        .I5(\scores[1][15]_i_149_n_0 ),
        .O(\scores[1][15]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_75 
       (.I0(\scores[1][15]_i_16_0 [31]),
        .I1(mask_dout_in[31]),
        .I2(\scores[1][15]_i_16_0 [30]),
        .I3(mask_dout_in[30]),
        .O(\scores[1][15]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_76 
       (.I0(\scores[1][15]_i_16_0 [56]),
        .I1(mask_dout_in[56]),
        .I2(\scores[1][15]_i_150_n_0 ),
        .I3(\scores[1][15]_i_151_n_0 ),
        .I4(\scores[1][15]_i_152_n_0 ),
        .I5(\scores[1][15]_i_153_n_0 ),
        .O(\scores[1][15]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_77 
       (.I0(mask_dout_in[59]),
        .I1(\scores[1][15]_i_16_0 [59]),
        .I2(mask_dout_in[60]),
        .I3(\scores[1][15]_i_16_0 [60]),
        .I4(\scores[1][15]_i_16_0 [63]),
        .I5(mask_dout_in[63]),
        .O(\scores[1][15]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \scores[1][15]_i_78 
       (.I0(\scores[1][15]_i_154_n_0 ),
        .I1(mask_dout_in[45]),
        .I2(\scores[1][15]_i_16_0 [45]),
        .I3(mask_dout_in[46]),
        .I4(\scores[1][15]_i_16_0 [46]),
        .O(\scores[1][15]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_79 
       (.I0(\scores[1][15]_i_16_0 [40]),
        .I1(mask_dout_in[40]),
        .I2(\scores[1][15]_i_155_n_0 ),
        .I3(\scores[1][15]_i_156_n_0 ),
        .I4(\scores[1][15]_i_157_n_0 ),
        .I5(\scores[1][15]_i_158_n_0 ),
        .O(\scores[1][15]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_8 
       (.I0(\scores[1][15]_i_16_0 [186]),
        .I1(mask_dout_in[186]),
        .I2(\scores[1][15]_i_17_n_0 ),
        .I3(\scores[1][15]_i_18_n_0 ),
        .I4(\scores[1][15]_i_19_n_0 ),
        .I5(\scores[1][15]_i_20_n_0 ),
        .O(\scores[1][15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_80 
       (.I0(\scores[1][15]_i_16_0 [44]),
        .I1(mask_dout_in[44]),
        .I2(\scores[1][15]_i_16_0 [43]),
        .I3(mask_dout_in[43]),
        .O(\scores[1][15]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][15]_i_81 
       (.I0(\scores[7] [14]),
        .I1(\scores[6] [14]),
        .I2(sel0[1]),
        .I3(\scores[5] [14]),
        .I4(sel0[0]),
        .I5(\scores[4] [14]),
        .O(\scores[1][15]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][15]_i_82 
       (.I0(out[14]),
        .I1(\scores[0] [14]),
        .I2(sel0[1]),
        .I3(\scores[3] [14]),
        .I4(sel0[0]),
        .I5(\scores[2] [14]),
        .O(\scores[1][15]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][15]_i_83 
       (.I0(\scores[3] [13]),
        .I1(\scores[2] [13]),
        .I2(sel0[1]),
        .I3(out[13]),
        .I4(sel0[0]),
        .I5(\scores[0] [13]),
        .O(\scores[1][15]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][15]_i_84 
       (.I0(\scores[7] [13]),
        .I1(\scores[6] [13]),
        .I2(sel0[1]),
        .I3(\scores[5] [13]),
        .I4(sel0[0]),
        .I5(\scores[4] [13]),
        .O(\scores[1][15]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][15]_i_85 
       (.I0(\scores[7] [15]),
        .I1(\scores[6] [15]),
        .I2(sel0[1]),
        .I3(\scores[5] [15]),
        .I4(sel0[0]),
        .I5(\scores[4] [15]),
        .O(\scores[1][15]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][15]_i_86 
       (.I0(out[15]),
        .I1(\scores[0] [15]),
        .I2(sel0[1]),
        .I3(\scores[3] [15]),
        .I4(sel0[0]),
        .I5(\scores[2] [15]),
        .O(\scores[1][15]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \scores[1][15]_i_87 
       (.I0(mask_dout_in[201]),
        .I1(\scores[1][15]_i_16_0 [201]),
        .I2(mask_dout_in[202]),
        .I3(\scores[1][15]_i_16_0 [202]),
        .I4(\scores[1][15]_i_16_0 [207]),
        .I5(mask_dout_in[207]),
        .O(\scores[1][15]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_88 
       (.I0(\scores[1][15]_i_16_0 [195]),
        .I1(mask_dout_in[195]),
        .I2(\scores[1][15]_i_16_0 [194]),
        .I3(mask_dout_in[194]),
        .O(\scores[1][15]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_89 
       (.I0(\scores[1][15]_i_16_0 [193]),
        .I1(mask_dout_in[193]),
        .I2(\scores[1][15]_i_16_0 [192]),
        .I3(mask_dout_in[192]),
        .O(\scores[1][15]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \scores[1][15]_i_9 
       (.I0(\scores[1][15]_i_16_0 [122]),
        .I1(mask_dout_in[122]),
        .I2(\scores[1][15]_i_21_n_0 ),
        .I3(\scores[1][15]_i_22_n_0 ),
        .I4(\scores[1][15]_i_23_n_0 ),
        .I5(\scores[1][15]_i_24_n_0 ),
        .O(\scores[1][15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_90 
       (.I0(\scores[1][15]_i_16_0 [199]),
        .I1(mask_dout_in[199]),
        .I2(\scores[1][15]_i_16_0 [198]),
        .I3(mask_dout_in[198]),
        .O(\scores[1][15]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_91 
       (.I0(\scores[1][15]_i_16_0 [197]),
        .I1(mask_dout_in[197]),
        .I2(\scores[1][15]_i_16_0 [196]),
        .I3(mask_dout_in[196]),
        .O(\scores[1][15]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_92 
       (.I0(\scores[1][15]_i_16_0 [211]),
        .I1(mask_dout_in[211]),
        .I2(\scores[1][15]_i_16_0 [210]),
        .I3(mask_dout_in[210]),
        .O(\scores[1][15]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_93 
       (.I0(\scores[1][15]_i_16_0 [209]),
        .I1(mask_dout_in[209]),
        .I2(\scores[1][15]_i_16_0 [208]),
        .I3(mask_dout_in[208]),
        .O(\scores[1][15]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_94 
       (.I0(\scores[1][15]_i_16_0 [215]),
        .I1(mask_dout_in[215]),
        .I2(\scores[1][15]_i_16_0 [214]),
        .I3(mask_dout_in[214]),
        .O(\scores[1][15]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_95 
       (.I0(\scores[1][15]_i_16_0 [213]),
        .I1(mask_dout_in[213]),
        .I2(\scores[1][15]_i_16_0 [212]),
        .I3(mask_dout_in[212]),
        .O(\scores[1][15]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_96 
       (.I0(\scores[1][15]_i_16_0 [243]),
        .I1(mask_dout_in[243]),
        .I2(\scores[1][15]_i_16_0 [242]),
        .I3(mask_dout_in[242]),
        .O(\scores[1][15]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_97 
       (.I0(\scores[1][15]_i_16_0 [241]),
        .I1(mask_dout_in[241]),
        .I2(\scores[1][15]_i_16_0 [240]),
        .I3(mask_dout_in[240]),
        .O(\scores[1][15]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_98 
       (.I0(\scores[1][15]_i_16_0 [247]),
        .I1(mask_dout_in[247]),
        .I2(\scores[1][15]_i_16_0 [246]),
        .I3(mask_dout_in[246]),
        .O(\scores[1][15]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \scores[1][15]_i_99 
       (.I0(\scores[1][15]_i_16_0 [245]),
        .I1(mask_dout_in[245]),
        .I2(\scores[1][15]_i_16_0 [244]),
        .I3(mask_dout_in[244]),
        .O(\scores[1][15]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[1]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[1][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][1]_i_2 
       (.I0(p_2_in[1]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[1]),
        .O(\scores[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][2]_i_2 
       (.I0(p_2_in[2]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[2]),
        .O(\scores[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[3]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][3]_i_2 
       (.I0(p_2_in[3]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[3]),
        .O(\scores[1][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[4]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55553333FF00F0F0)) 
    \scores[1][4]_i_10 
       (.I0(\scores[8] [3]),
        .I1(\scores[9] [3]),
        .I2(\scores[1][4]_i_19_n_0 ),
        .I3(\scores[1][4]_i_20_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][4]_i_11 
       (.I0(\scores[8] [2]),
        .I1(\scores[9] [2]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_22_n_0 ),
        .O(\scores[1][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][4]_i_12 
       (.I0(\scores[8] [1]),
        .I1(\scores[9] [1]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_23_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_24_n_0 ),
        .O(\scores[1][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_13 
       (.I0(\scores[8] [4]),
        .I1(\scores[9] [4]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_17_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_18_n_0 ),
        .O(\scores[1][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][4]_i_14 
       (.I0(\scores[8] [3]),
        .I1(\scores[9] [3]),
        .I2(\scores[1][4]_i_19_n_0 ),
        .I3(\scores[1][4]_i_20_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_15 
       (.I0(\scores[8] [2]),
        .I1(\scores[9] [2]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_22_n_0 ),
        .O(\scores[1][4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_16 
       (.I0(\scores[8] [1]),
        .I1(\scores[9] [1]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_23_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_24_n_0 ),
        .O(\scores[1][4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_17 
       (.I0(\scores[3] [4]),
        .I1(\scores[2] [4]),
        .I2(sel0[1]),
        .I3(out[4]),
        .I4(sel0[0]),
        .I5(\scores[0] [4]),
        .O(\scores[1][4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_18 
       (.I0(\scores[7] [4]),
        .I1(\scores[6] [4]),
        .I2(sel0[1]),
        .I3(\scores[5] [4]),
        .I4(sel0[0]),
        .I5(\scores[4] [4]),
        .O(\scores[1][4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][4]_i_19 
       (.I0(\scores[5] [3]),
        .I1(\scores[4] [3]),
        .I2(sel0[1]),
        .I3(\scores[7] [3]),
        .I4(sel0[0]),
        .I5(\scores[6] [3]),
        .O(\scores[1][4]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][4]_i_2 
       (.I0(p_2_in[4]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[4]),
        .O(\scores[1][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][4]_i_20 
       (.I0(out[3]),
        .I1(\scores[0] [3]),
        .I2(sel0[1]),
        .I3(\scores[3] [3]),
        .I4(sel0[0]),
        .I5(\scores[2] [3]),
        .O(\scores[1][4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_21 
       (.I0(\scores[3] [2]),
        .I1(\scores[2] [2]),
        .I2(sel0[1]),
        .I3(out[2]),
        .I4(sel0[0]),
        .I5(\scores[0] [2]),
        .O(\scores[1][4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_22 
       (.I0(\scores[7] [2]),
        .I1(\scores[6] [2]),
        .I2(sel0[1]),
        .I3(\scores[5] [2]),
        .I4(sel0[0]),
        .I5(\scores[4] [2]),
        .O(\scores[1][4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_23 
       (.I0(\scores[3] [1]),
        .I1(\scores[2] [1]),
        .I2(sel0[1]),
        .I3(out[1]),
        .I4(sel0[0]),
        .I5(\scores[0] [1]),
        .O(\scores[1][4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_24 
       (.I0(\scores[7] [1]),
        .I1(\scores[6] [1]),
        .I2(sel0[1]),
        .I3(\scores[5] [1]),
        .I4(sel0[0]),
        .I5(\scores[4] [1]),
        .O(\scores[1][4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_5 
       (.I0(\scores[8] [4]),
        .I1(\scores[9] [4]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_17_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_18_n_0 ),
        .O(scores[4]));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][4]_i_6 
       (.I0(\scores[8] [3]),
        .I1(\scores[9] [3]),
        .I2(\scores[1][4]_i_19_n_0 ),
        .I3(\scores[1][4]_i_20_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(scores[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_7 
       (.I0(\scores[8] [2]),
        .I1(\scores[9] [2]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_22_n_0 ),
        .O(scores[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][4]_i_8 
       (.I0(\scores[8] [1]),
        .I1(\scores[9] [1]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_23_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_24_n_0 ),
        .O(scores[1]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][4]_i_9 
       (.I0(\scores[8] [4]),
        .I1(\scores[9] [4]),
        .I2(sel0[3]),
        .I3(\scores[1][4]_i_17_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][4]_i_18_n_0 ),
        .O(\scores[1][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[5]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][5]_i_2 
       (.I0(p_2_in[5]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[5]),
        .O(\scores[1][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[6]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][6]_i_2 
       (.I0(p_2_in[6]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[6]),
        .O(\scores[1][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[7]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][7]_i_2 
       (.I0(p_2_in[7]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[7]),
        .O(\scores[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[8]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][8]_i_10 
       (.I0(\scores[8] [7]),
        .I1(\scores[9] [7]),
        .I2(sel0[3]),
        .I3(\scores[1][8]_i_19_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][8]_i_20_n_0 ),
        .O(\scores[1][8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \scores[1][8]_i_11 
       (.I0(\scores[8] [6]),
        .I1(\scores[9] [6]),
        .I2(sel0[3]),
        .I3(\scores[1][8]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][8]_i_22_n_0 ),
        .O(\scores[1][8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h55553333FF00F0F0)) 
    \scores[1][8]_i_12 
       (.I0(\scores[8] [5]),
        .I1(\scores[9] [5]),
        .I2(\scores[1][8]_i_23_n_0 ),
        .I3(\scores[1][8]_i_24_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][8]_i_13 
       (.I0(\scores[8] [8]),
        .I1(\scores[9] [8]),
        .I2(\scores[1][8]_i_17_n_0 ),
        .I3(\scores[1][8]_i_18_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_14 
       (.I0(\scores[8] [7]),
        .I1(\scores[9] [7]),
        .I2(sel0[3]),
        .I3(\scores[1][8]_i_19_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][8]_i_20_n_0 ),
        .O(\scores[1][8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_15 
       (.I0(\scores[8] [6]),
        .I1(\scores[9] [6]),
        .I2(sel0[3]),
        .I3(\scores[1][8]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][8]_i_22_n_0 ),
        .O(\scores[1][8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][8]_i_16 
       (.I0(\scores[8] [5]),
        .I1(\scores[9] [5]),
        .I2(\scores[1][8]_i_23_n_0 ),
        .I3(\scores[1][8]_i_24_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][8]_i_17 
       (.I0(\scores[5] [8]),
        .I1(\scores[4] [8]),
        .I2(sel0[1]),
        .I3(\scores[7] [8]),
        .I4(sel0[0]),
        .I5(\scores[6] [8]),
        .O(\scores[1][8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][8]_i_18 
       (.I0(out[8]),
        .I1(\scores[0] [8]),
        .I2(sel0[1]),
        .I3(\scores[3] [8]),
        .I4(sel0[0]),
        .I5(\scores[2] [8]),
        .O(\scores[1][8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_19 
       (.I0(\scores[3] [7]),
        .I1(\scores[2] [7]),
        .I2(sel0[1]),
        .I3(out[7]),
        .I4(sel0[0]),
        .I5(\scores[0] [7]),
        .O(\scores[1][8]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][8]_i_2 
       (.I0(p_2_in[8]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[8]),
        .O(\scores[1][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_20 
       (.I0(\scores[7] [7]),
        .I1(\scores[6] [7]),
        .I2(sel0[1]),
        .I3(\scores[5] [7]),
        .I4(sel0[0]),
        .I5(\scores[4] [7]),
        .O(\scores[1][8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_21 
       (.I0(\scores[3] [6]),
        .I1(\scores[2] [6]),
        .I2(sel0[1]),
        .I3(out[6]),
        .I4(sel0[0]),
        .I5(\scores[0] [6]),
        .O(\scores[1][8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_22 
       (.I0(\scores[7] [6]),
        .I1(\scores[6] [6]),
        .I2(sel0[1]),
        .I3(\scores[5] [6]),
        .I4(sel0[0]),
        .I5(\scores[4] [6]),
        .O(\scores[1][8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][8]_i_23 
       (.I0(\scores[5] [5]),
        .I1(\scores[4] [5]),
        .I2(sel0[1]),
        .I3(\scores[7] [5]),
        .I4(sel0[0]),
        .I5(\scores[6] [5]),
        .O(\scores[1][8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \scores[1][8]_i_24 
       (.I0(out[5]),
        .I1(\scores[0] [5]),
        .I2(sel0[1]),
        .I3(\scores[3] [5]),
        .I4(sel0[0]),
        .I5(\scores[2] [5]),
        .O(\scores[1][8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][8]_i_5 
       (.I0(\scores[8] [8]),
        .I1(\scores[9] [8]),
        .I2(\scores[1][8]_i_17_n_0 ),
        .I3(\scores[1][8]_i_18_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(scores[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_6 
       (.I0(\scores[8] [7]),
        .I1(\scores[9] [7]),
        .I2(sel0[3]),
        .I3(\scores[1][8]_i_19_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][8]_i_20_n_0 ),
        .O(scores[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scores[1][8]_i_7 
       (.I0(\scores[8] [6]),
        .I1(\scores[9] [6]),
        .I2(sel0[3]),
        .I3(\scores[1][8]_i_21_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(\scores[1][8]_i_22_n_0 ),
        .O(scores[6]));
  LUT6 #(
    .INIT(64'hAAAACCCC00FF0F0F)) 
    \scores[1][8]_i_8 
       (.I0(\scores[8] [5]),
        .I1(\scores[9] [5]),
        .I2(\scores[1][8]_i_23_n_0 ),
        .I3(\scores[1][8]_i_24_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(scores[5]));
  LUT6 #(
    .INIT(64'h55553333FF00F0F0)) 
    \scores[1][8]_i_9 
       (.I0(\scores[8] [8]),
        .I1(\scores[9] [8]),
        .I2(\scores[1][8]_i_17_n_0 ),
        .I3(\scores[1][8]_i_18_n_0 ),
        .I4(\scores[1][0]_i_4_n_0 ),
        .I5(sel0[3]),
        .O(\scores[1][8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[1][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(out[9]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scores[1][9]_i_2 
       (.I0(p_2_in[9]),
        .I1(clause_is_odd),
        .I2(p_0_in1_in[9]),
        .O(\scores[1][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44444CCCF4444)) 
    \scores[2][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [0]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [10]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[2][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [11]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[2][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [12]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[2][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [13]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[2][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [14]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[2][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [15]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[2][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \scores[2][15]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\scores[2][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [1]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [2]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [3]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [4]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [5]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [6]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [7]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [8]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[2][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[2] [9]),
        .I2(\scores[1][15]_i_3_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC4C4444CCFC4444)) 
    \scores[3][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [0]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [10]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[3][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [11]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[3][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [12]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[3][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [13]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[3][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [14]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[3][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [15]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[3][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \scores[3][15]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\scores[3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [1]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [2]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [3]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [4]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [5]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [6]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [7]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [8]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[3][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[3][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[3] [9]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44444CCCF4444)) 
    \scores[4][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [0]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [10]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[4][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [11]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[4][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [12]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[4][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [13]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[4][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [14]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[4][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [15]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[4][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \scores[4][15]_i_2 
       (.I0(\scores[1][15]_i_7_n_0 ),
        .I1(\scores[1][15]_i_8_n_0 ),
        .I2(\scores[1][15]_i_9_n_0 ),
        .I3(\scores[1][15]_i_10_n_0 ),
        .I4(sel0[3]),
        .I5(sel0[2]),
        .O(\scores[4][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \scores[4][15]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\scores[4][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [1]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [2]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [3]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [4]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [5]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [6]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [7]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [8]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[4][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[4][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[4] [9]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44444CCCF4444)) 
    \scores[5][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [0]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [10]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[5][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [11]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[5][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [12]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[5][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [13]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[5][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [14]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[5][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [15]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[5][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [1]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [2]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [3]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [4]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [5]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [6]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [7]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [8]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[5][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[5][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[5] [9]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_4_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44444CCCF4444)) 
    \scores[6][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [0]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [10]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[6][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [11]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[6][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [12]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[6][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [13]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[6][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [14]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[6][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [15]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[6][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [1]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [2]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [3]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [4]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [5]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [6]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [7]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [8]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[6][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCF4444CCC44444)) 
    \scores[6][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[6] [9]),
        .I2(\scores[4][15]_i_2_n_0 ),
        .I3(\scores[2][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC4C4444CCFC4444)) 
    \scores[7][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [0]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [10]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[7][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [11]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[7][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [12]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[7][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [13]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[7][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [14]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[7][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [15]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[7][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [1]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [2]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [3]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [4]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [5]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [6]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [7]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [8]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[7][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[7][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[7] [9]),
        .I2(\scores[3][15]_i_2_n_0 ),
        .I3(\scores[4][15]_i_2_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[7][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC444CF44)) 
    \scores[8][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [0]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(scores[0]),
        .O(\scores[8][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [10]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][10]_i_2_n_0 ),
        .O(\scores[8][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [11]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][11]_i_2_n_0 ),
        .O(\scores[8][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [12]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][12]_i_2_n_0 ),
        .O(\scores[8][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [13]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][13]_i_2_n_0 ),
        .O(\scores[8][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [14]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][14]_i_2_n_0 ),
        .O(\scores[8][14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [15]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][15]_i_6_n_0 ),
        .O(\scores[8][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \scores[8][15]_i_2 
       (.I0(\scores[8][15]_i_3_n_0 ),
        .I1(\scores[1][15]_i_7_n_0 ),
        .I2(\scores[1][15]_i_8_n_0 ),
        .I3(\scores[1][15]_i_9_n_0 ),
        .I4(\scores[1][15]_i_10_n_0 ),
        .I5(\scores[8][15]_i_4_n_0 ),
        .O(\scores[8][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \scores[8][15]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .O(\scores[8][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \scores[8][15]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .O(\scores[8][15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [1]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][1]_i_2_n_0 ),
        .O(\scores[8][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [2]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][2]_i_2_n_0 ),
        .O(\scores[8][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [3]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][3]_i_2_n_0 ),
        .O(\scores[8][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [4]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][4]_i_2_n_0 ),
        .O(\scores[8][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [5]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][5]_i_2_n_0 ),
        .O(\scores[8][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [6]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][6]_i_2_n_0 ),
        .O(\scores[8][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [7]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][7]_i_2_n_0 ),
        .O(\scores[8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [8]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][8]_i_2_n_0 ),
        .O(\scores[8][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF44C444)) 
    \scores[8][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[8] [9]),
        .I2(\scores[8][15]_i_2_n_0 ),
        .I3(\scores[1][15]_i_5_n_0 ),
        .I4(\scores[1][9]_i_2_n_0 ),
        .O(\scores[8][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC4C4444CCFC4444)) 
    \scores[9][0]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [0]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(scores[0]),
        .O(\scores[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][10]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [10]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][10]_i_2_n_0 ),
        .O(\scores[9][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][11]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [11]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][11]_i_2_n_0 ),
        .O(\scores[9][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][12]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [12]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][12]_i_2_n_0 ),
        .O(\scores[9][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][13]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [13]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][13]_i_2_n_0 ),
        .O(\scores[9][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][14]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [14]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][14]_i_2_n_0 ),
        .O(\scores[9][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][15]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [15]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][15]_i_6_n_0 ),
        .O(\scores[9][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \scores[9][15]_i_2 
       (.I0(\scores[1][15]_i_7_n_0 ),
        .I1(\scores[1][15]_i_8_n_0 ),
        .I2(\scores[1][15]_i_9_n_0 ),
        .I3(\scores[1][15]_i_10_n_0 ),
        .O(clause_act));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][1]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [1]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][1]_i_2_n_0 ),
        .O(\scores[9][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][2]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [2]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][2]_i_2_n_0 ),
        .O(\scores[9][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][3]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [3]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][3]_i_2_n_0 ),
        .O(\scores[9][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][4]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [4]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][4]_i_2_n_0 ),
        .O(\scores[9][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][5]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [5]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][5]_i_2_n_0 ),
        .O(\scores[9][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][6]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [6]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][6]_i_2_n_0 ),
        .O(\scores[9][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][7]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [7]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][7]_i_2_n_0 ),
        .O(\scores[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][8]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [8]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][8]_i_2_n_0 ),
        .O(\scores[9][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFC4444CC4C4444)) 
    \scores[9][9]_i_1 
       (.I0(\scores[1][15]_i_2_n_0 ),
        .I1(\scores[9] [9]),
        .I2(clause_act),
        .I3(\mask_addr[13]_i_3_n_0 ),
        .I4(\scores[1][15]_i_5_n_0 ),
        .I5(\scores[1][9]_i_2_n_0 ),
        .O(\scores[9][9]_i_1_n_0 ));
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
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][10]_i_1_n_0 ),
        .Q(out[10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][11]_i_1_n_0 ),
        .Q(out[11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][12]_i_1_n_0 ),
        .Q(out[12]));
  CARRY4 \scores_reg[1][12]_i_3 
       (.CI(\scores_reg[1][8]_i_3_n_0 ),
        .CO({\scores_reg[1][12]_i_3_n_0 ,\scores_reg[1][12]_i_3_n_1 ,\scores_reg[1][12]_i_3_n_2 ,\scores_reg[1][12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(scores[12:9]),
        .O(p_2_in[12:9]),
        .S({\scores[1][12]_i_9_n_0 ,\scores[1][12]_i_10_n_0 ,\scores[1][12]_i_11_n_0 ,\scores[1][12]_i_12_n_0 }));
  CARRY4 \scores_reg[1][12]_i_4 
       (.CI(\scores_reg[1][8]_i_4_n_0 ),
        .CO({\scores_reg[1][12]_i_4_n_0 ,\scores_reg[1][12]_i_4_n_1 ,\scores_reg[1][12]_i_4_n_2 ,\scores_reg[1][12]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[12:9]),
        .S({\scores[1][12]_i_13_n_0 ,\scores[1][12]_i_14_n_0 ,\scores[1][12]_i_15_n_0 ,\scores[1][12]_i_16_n_0 }));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][13]_i_1_n_0 ),
        .Q(out[13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][14]_i_1_n_0 ),
        .Q(out[14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][15]_i_1_n_0 ),
        .Q(out[15]));
  CARRY4 \scores_reg[1][15]_i_11 
       (.CI(\scores_reg[1][12]_i_3_n_0 ),
        .CO({\NLW_scores_reg[1][15]_i_11_CO_UNCONNECTED [3:2],\scores_reg[1][15]_i_11_n_2 ,\scores_reg[1][15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,scores[14:13]}),
        .O({\NLW_scores_reg[1][15]_i_11_O_UNCONNECTED [3],p_2_in[15:13]}),
        .S({1'b0,\scores[1][15]_i_31_n_0 ,\scores[1][15]_i_32_n_0 ,\scores[1][15]_i_33_n_0 }));
  CARRY4 \scores_reg[1][15]_i_12 
       (.CI(\scores_reg[1][12]_i_4_n_0 ),
        .CO({\NLW_scores_reg[1][15]_i_12_CO_UNCONNECTED [3:2],\scores_reg[1][15]_i_12_n_2 ,\scores_reg[1][15]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_scores_reg[1][15]_i_12_O_UNCONNECTED [3],p_0_in1_in[15:13]}),
        .S({1'b0,scores[15],\scores[1][15]_i_35_n_0 ,\scores[1][15]_i_36_n_0 }));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][1]_i_1_n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][2]_i_1_n_0 ),
        .Q(out[2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][3]_i_1_n_0 ),
        .Q(out[3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][4]_i_1_n_0 ),
        .Q(out[4]));
  CARRY4 \scores_reg[1][4]_i_3 
       (.CI(1'b0),
        .CO({\scores_reg[1][4]_i_3_n_0 ,\scores_reg[1][4]_i_3_n_1 ,\scores_reg[1][4]_i_3_n_2 ,\scores_reg[1][4]_i_3_n_3 }),
        .CYINIT(scores[0]),
        .DI(scores[4:1]),
        .O(p_2_in[4:1]),
        .S({\scores[1][4]_i_9_n_0 ,\scores[1][4]_i_10_n_0 ,\scores[1][4]_i_11_n_0 ,\scores[1][4]_i_12_n_0 }));
  CARRY4 \scores_reg[1][4]_i_4 
       (.CI(1'b0),
        .CO({\scores_reg[1][4]_i_4_n_0 ,\scores_reg[1][4]_i_4_n_1 ,\scores_reg[1][4]_i_4_n_2 ,\scores_reg[1][4]_i_4_n_3 }),
        .CYINIT(scores[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[4:1]),
        .S({\scores[1][4]_i_13_n_0 ,\scores[1][4]_i_14_n_0 ,\scores[1][4]_i_15_n_0 ,\scores[1][4]_i_16_n_0 }));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][5]_i_1_n_0 ),
        .Q(out[5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][6]_i_1_n_0 ),
        .Q(out[6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][7]_i_1_n_0 ),
        .Q(out[7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][8]_i_1_n_0 ),
        .Q(out[8]));
  CARRY4 \scores_reg[1][8]_i_3 
       (.CI(\scores_reg[1][4]_i_3_n_0 ),
        .CO({\scores_reg[1][8]_i_3_n_0 ,\scores_reg[1][8]_i_3_n_1 ,\scores_reg[1][8]_i_3_n_2 ,\scores_reg[1][8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(scores[8:5]),
        .O(p_2_in[8:5]),
        .S({\scores[1][8]_i_9_n_0 ,\scores[1][8]_i_10_n_0 ,\scores[1][8]_i_11_n_0 ,\scores[1][8]_i_12_n_0 }));
  CARRY4 \scores_reg[1][8]_i_4 
       (.CI(\scores_reg[1][4]_i_4_n_0 ),
        .CO({\scores_reg[1][8]_i_4_n_0 ,\scores_reg[1][8]_i_4_n_1 ,\scores_reg[1][8]_i_4_n_2 ,\scores_reg[1][8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in1_in[8:5]),
        .S({\scores[1][8]_i_13_n_0 ,\scores[1][8]_i_14_n_0 ,\scores[1][8]_i_15_n_0 ,\scores[1][8]_i_16_n_0 }));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[1][9]_i_1_n_0 ),
        .Q(out[9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][0]_i_1_n_0 ),
        .Q(\scores[2] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][10]_i_1_n_0 ),
        .Q(\scores[2] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][11]_i_1_n_0 ),
        .Q(\scores[2] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][12]_i_1_n_0 ),
        .Q(\scores[2] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][13]_i_1_n_0 ),
        .Q(\scores[2] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][14]_i_1_n_0 ),
        .Q(\scores[2] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][15]_i_1_n_0 ),
        .Q(\scores[2] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][1]_i_1_n_0 ),
        .Q(\scores[2] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][2]_i_1_n_0 ),
        .Q(\scores[2] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][3]_i_1_n_0 ),
        .Q(\scores[2] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][4]_i_1_n_0 ),
        .Q(\scores[2] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][5]_i_1_n_0 ),
        .Q(\scores[2] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][6]_i_1_n_0 ),
        .Q(\scores[2] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][7]_i_1_n_0 ),
        .Q(\scores[2] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][8]_i_1_n_0 ),
        .Q(\scores[2] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[2][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[2][9]_i_1_n_0 ),
        .Q(\scores[2] [9]));
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
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][0]_i_1_n_0 ),
        .Q(\scores[4] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][10]_i_1_n_0 ),
        .Q(\scores[4] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][11]_i_1_n_0 ),
        .Q(\scores[4] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][12]_i_1_n_0 ),
        .Q(\scores[4] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][13]_i_1_n_0 ),
        .Q(\scores[4] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][14]_i_1_n_0 ),
        .Q(\scores[4] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][15]_i_1_n_0 ),
        .Q(\scores[4] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][1]_i_1_n_0 ),
        .Q(\scores[4] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][2]_i_1_n_0 ),
        .Q(\scores[4] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][3]_i_1_n_0 ),
        .Q(\scores[4] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][4]_i_1_n_0 ),
        .Q(\scores[4] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][5]_i_1_n_0 ),
        .Q(\scores[4] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][6]_i_1_n_0 ),
        .Q(\scores[4] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][7]_i_1_n_0 ),
        .Q(\scores[4] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][8]_i_1_n_0 ),
        .Q(\scores[4] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[4][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[4][9]_i_1_n_0 ),
        .Q(\scores[4] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][0]_i_1_n_0 ),
        .Q(\scores[5] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][10]_i_1_n_0 ),
        .Q(\scores[5] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][11]_i_1_n_0 ),
        .Q(\scores[5] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][12]_i_1_n_0 ),
        .Q(\scores[5] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][13]_i_1_n_0 ),
        .Q(\scores[5] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][14]_i_1_n_0 ),
        .Q(\scores[5] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][15]_i_1_n_0 ),
        .Q(\scores[5] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][1]_i_1_n_0 ),
        .Q(\scores[5] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][2]_i_1_n_0 ),
        .Q(\scores[5] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][3]_i_1_n_0 ),
        .Q(\scores[5] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][4]_i_1_n_0 ),
        .Q(\scores[5] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][5]_i_1_n_0 ),
        .Q(\scores[5] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][6]_i_1_n_0 ),
        .Q(\scores[5] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][7]_i_1_n_0 ),
        .Q(\scores[5] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][8]_i_1_n_0 ),
        .Q(\scores[5] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[5][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[5][9]_i_1_n_0 ),
        .Q(\scores[5] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][0]_i_1_n_0 ),
        .Q(\scores[6] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][10]_i_1_n_0 ),
        .Q(\scores[6] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][11]_i_1_n_0 ),
        .Q(\scores[6] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][12]_i_1_n_0 ),
        .Q(\scores[6] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][13]_i_1_n_0 ),
        .Q(\scores[6] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][14]_i_1_n_0 ),
        .Q(\scores[6] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][15]_i_1_n_0 ),
        .Q(\scores[6] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][1]_i_1_n_0 ),
        .Q(\scores[6] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][2]_i_1_n_0 ),
        .Q(\scores[6] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][3]_i_1_n_0 ),
        .Q(\scores[6] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][4]_i_1_n_0 ),
        .Q(\scores[6] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][5]_i_1_n_0 ),
        .Q(\scores[6] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][6]_i_1_n_0 ),
        .Q(\scores[6] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][7]_i_1_n_0 ),
        .Q(\scores[6] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][8]_i_1_n_0 ),
        .Q(\scores[6] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[6][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[6][9]_i_1_n_0 ),
        .Q(\scores[6] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][0]_i_1_n_0 ),
        .Q(\scores[7] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][10]_i_1_n_0 ),
        .Q(\scores[7] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][11]_i_1_n_0 ),
        .Q(\scores[7] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][12]_i_1_n_0 ),
        .Q(\scores[7] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][13]_i_1_n_0 ),
        .Q(\scores[7] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][14]_i_1_n_0 ),
        .Q(\scores[7] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][15]_i_1_n_0 ),
        .Q(\scores[7] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][1]_i_1_n_0 ),
        .Q(\scores[7] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][2]_i_1_n_0 ),
        .Q(\scores[7] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][3]_i_1_n_0 ),
        .Q(\scores[7] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][4]_i_1_n_0 ),
        .Q(\scores[7] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][5]_i_1_n_0 ),
        .Q(\scores[7] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][6]_i_1_n_0 ),
        .Q(\scores[7] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][7]_i_1_n_0 ),
        .Q(\scores[7] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][8]_i_1_n_0 ),
        .Q(\scores[7] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[7][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[7][9]_i_1_n_0 ),
        .Q(\scores[7] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][0]_i_1_n_0 ),
        .Q(\scores[8] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][10]_i_1_n_0 ),
        .Q(\scores[8] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][11]_i_1_n_0 ),
        .Q(\scores[8] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][12]_i_1_n_0 ),
        .Q(\scores[8] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][13]_i_1_n_0 ),
        .Q(\scores[8] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][14]_i_1_n_0 ),
        .Q(\scores[8] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][15]_i_1_n_0 ),
        .Q(\scores[8] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][1]_i_1_n_0 ),
        .Q(\scores[8] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][2]_i_1_n_0 ),
        .Q(\scores[8] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][3]_i_1_n_0 ),
        .Q(\scores[8] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][4]_i_1_n_0 ),
        .Q(\scores[8] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][5]_i_1_n_0 ),
        .Q(\scores[8] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][6]_i_1_n_0 ),
        .Q(\scores[8] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][7]_i_1_n_0 ),
        .Q(\scores[8] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][8]_i_1_n_0 ),
        .Q(\scores[8] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[8][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[8][9]_i_1_n_0 ),
        .Q(\scores[8] [9]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][0]_i_1_n_0 ),
        .Q(\scores[9] [0]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][10]_i_1_n_0 ),
        .Q(\scores[9] [10]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][11]_i_1_n_0 ),
        .Q(\scores[9] [11]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][12]_i_1_n_0 ),
        .Q(\scores[9] [12]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][13]_i_1_n_0 ),
        .Q(\scores[9] [13]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][14]_i_1_n_0 ),
        .Q(\scores[9] [14]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][15]_i_1_n_0 ),
        .Q(\scores[9] [15]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][1]_i_1_n_0 ),
        .Q(\scores[9] [1]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][2]_i_1_n_0 ),
        .Q(\scores[9] [2]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][3]_i_1_n_0 ),
        .Q(\scores[9] [3]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][4]_i_1_n_0 ),
        .Q(\scores[9] [4]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][5]_i_1_n_0 ),
        .Q(\scores[9] [5]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][6]_i_1_n_0 ),
        .Q(\scores[9] [6]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][7]_i_1_n_0 ),
        .Q(\scores[9] [7]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][8]_i_1_n_0 ),
        .Q(\scores[9] [8]));
  (* KEEP = "yes" *) 
  FDCE \scores_reg[9][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\scores[9][9]_i_1_n_0 ),
        .Q(\scores[9] [9]));
  LUT6 #(
    .INIT(64'h00AA00FF0000F0CC)) 
    \state[0]_i_1 
       (.I0(\mask_addr[13]_i_3_n_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state[0]_i_2_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \state[0]_i_2 
       (.I0(sel0__0[3]),
        .I1(sel0__0[0]),
        .I2(sel0__0[2]),
        .I3(sel0__0[1]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0414)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\mask_addr[13]_i_4_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h100C)) 
    \state[2]_i_1 
       (.I0(\mask_addr[13]_i_3_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1_n_0 ));
  FDCE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE \state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
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
