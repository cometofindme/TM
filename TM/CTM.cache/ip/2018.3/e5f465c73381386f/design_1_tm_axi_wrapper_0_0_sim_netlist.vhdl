-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr  2 12:11:08 2026
-- Host        : wjl running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tm_axi_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_tm_axi_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \scores[1]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \scores[0]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \scores[3]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clause_is_odd : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    done_wire : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \clause_cnt_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pred_class_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clause_is_odd_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    done_reg_0 : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    done_d : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_RDATA_reg[0]\ : in STD_LOGIC;
    \S_AXI_RDATA_reg[0]_0\ : in STD_LOGIC;
    \S_AXI_RDATA_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_RDATA_reg[0]_2\ : in STD_LOGIC;
    \S_AXI_RDATA_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_RDATA_reg[0]_4\ : in STD_LOGIC;
    \S_AXI_RDATA_reg[0]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_RDATA_reg[0]_6\ : in STD_LOGIC;
    \S_AXI_RDATA_reg[0]_7\ : in STD_LOGIC;
    \S_AXI_RDATA[0]_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \class_idx_reg[2]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top is
  signal \S_AXI_RDATA[0]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[0]_i_3_n_0\ : STD_LOGIC;
  signal \class_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \class_idx[0]_i_2_n_0\ : STD_LOGIC;
  signal \class_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \class_idx[1]_i_2_n_0\ : STD_LOGIC;
  signal \class_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \class_idx[2]_i_2_n_0\ : STD_LOGIC;
  signal \clause_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \clause_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \clause_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \clause_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \clause_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \clause_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \clause_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \clause_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \^clause_cnt_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \clause_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \clause_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \^clause_is_odd\ : STD_LOGIC;
  signal \cmp_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmp_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \cmp_idx[1]_i_2_n_0\ : STD_LOGIC;
  signal \cmp_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \cmp_idx[2]_i_2_n_0\ : STD_LOGIC;
  signal \^done_wire\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal max_score : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal max_score0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "true";
  signal \^p_0_in\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_1\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_1\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_3\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__2_n_3\ : STD_LOGIC;
  signal p_0_out_carry_i_1_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_2_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_3_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_4_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_5_n_0 : STD_LOGIC;
  signal p_0_out_carry_n_0 : STD_LOGIC;
  signal p_0_out_carry_n_1 : STD_LOGIC;
  signal p_0_out_carry_n_2 : STD_LOGIC;
  signal p_0_out_carry_n_3 : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \pred_class0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_n_0\ : STD_LOGIC;
  signal \pred_class0_carry__0_n_1\ : STD_LOGIC;
  signal \pred_class0_carry__0_n_2\ : STD_LOGIC;
  signal \pred_class0_carry__0_n_3\ : STD_LOGIC;
  signal pred_class0_carry_i_1_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_2_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_3_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_4_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_5_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_6_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_7_n_0 : STD_LOGIC;
  signal pred_class0_carry_i_8_n_0 : STD_LOGIC;
  signal pred_class0_carry_n_0 : STD_LOGIC;
  signal pred_class0_carry_n_1 : STD_LOGIC;
  signal pred_class0_carry_n_2 : STD_LOGIC;
  signal pred_class0_carry_n_3 : STD_LOGIC;
  signal \pred_class[0]_i_1_n_0\ : STD_LOGIC;
  signal \pred_class[1]_i_1_n_0\ : STD_LOGIC;
  signal \pred_class[2]_i_1_n_0\ : STD_LOGIC;
  signal \pred_class[2]_i_2_n_0\ : STD_LOGIC;
  signal \pred_class[2]_i_3_n_0\ : STD_LOGIC;
  signal \^pred_class_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^scores[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \^scores[0]\ : signal is "true";
  signal \scores[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][15]_i_2_n_0\ : STD_LOGIC;
  signal \scores[0][15]_i_3_n_0\ : STD_LOGIC;
  signal \scores[0][15]_i_4_n_0\ : STD_LOGIC;
  signal \scores[0][15]_i_5_n_0\ : STD_LOGIC;
  signal \scores[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \scores[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \^scores[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \^scores[1]\ : signal is "true";
  signal \scores[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][10]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][11]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][12]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][13]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][14]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][15]_i_2_n_0\ : STD_LOGIC;
  signal \scores[1][15]_i_3_n_0\ : STD_LOGIC;
  signal \scores[1][15]_i_4_n_0\ : STD_LOGIC;
  signal \scores[1][15]_i_5_n_0\ : STD_LOGIC;
  signal \scores[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \scores[1][9]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \scores[2][10]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][11]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][12]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][13]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][14]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][15]_i_2_n_0\ : STD_LOGIC;
  signal \scores[2][15]_i_3_n_0\ : STD_LOGIC;
  signal \scores[2][15]_i_4_n_0\ : STD_LOGIC;
  signal \scores[2][15]_i_5_n_0\ : STD_LOGIC;
  signal \scores[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][8]_i_1_n_0\ : STD_LOGIC;
  signal \scores[2][9]_i_1_n_0\ : STD_LOGIC;
  signal \^scores[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \^scores[3]\ : signal is "true";
  signal \scores[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][10]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][11]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][12]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][13]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][14]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][15]_i_2_n_0\ : STD_LOGIC;
  signal \scores[3][15]_i_3_n_0\ : STD_LOGIC;
  signal \scores[3][15]_i_4_n_0\ : STD_LOGIC;
  signal \scores[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][8]_i_1_n_0\ : STD_LOGIC;
  signal \scores[3][9]_i_1_n_0\ : STD_LOGIC;
  signal \scores__115\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sel0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC;
  signal \NLW_p_0_out_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_p_0_out_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_0_out_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_p_0_out_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pred_class0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pred_class0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \class_idx[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \class_idx[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \class_idx[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \clause_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clause_cnt[10]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clause_cnt[10]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clause_cnt[10]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clause_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clause_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clause_cnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clause_cnt[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clause_cnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clause_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clause_cnt[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cmp_idx[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmp_idx[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pred_class[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \scores[0][15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \scores[0][15]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \scores[1][15]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \scores[1][15]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \scores[2][15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \scores[2][15]_i_5\ : label is "soft_lutpair10";
  attribute KEEP : string;
  attribute KEEP of \scores_reg[0][0]\ : label is "yes";
  attribute KEEP of \scores_reg[0][10]\ : label is "yes";
  attribute KEEP of \scores_reg[0][11]\ : label is "yes";
  attribute KEEP of \scores_reg[0][12]\ : label is "yes";
  attribute KEEP of \scores_reg[0][13]\ : label is "yes";
  attribute KEEP of \scores_reg[0][14]\ : label is "yes";
  attribute KEEP of \scores_reg[0][15]\ : label is "yes";
  attribute KEEP of \scores_reg[0][1]\ : label is "yes";
  attribute KEEP of \scores_reg[0][2]\ : label is "yes";
  attribute KEEP of \scores_reg[0][3]\ : label is "yes";
  attribute KEEP of \scores_reg[0][4]\ : label is "yes";
  attribute KEEP of \scores_reg[0][5]\ : label is "yes";
  attribute KEEP of \scores_reg[0][6]\ : label is "yes";
  attribute KEEP of \scores_reg[0][7]\ : label is "yes";
  attribute KEEP of \scores_reg[0][8]\ : label is "yes";
  attribute KEEP of \scores_reg[0][9]\ : label is "yes";
  attribute KEEP of \scores_reg[1][0]\ : label is "yes";
  attribute KEEP of \scores_reg[1][10]\ : label is "yes";
  attribute KEEP of \scores_reg[1][11]\ : label is "yes";
  attribute KEEP of \scores_reg[1][12]\ : label is "yes";
  attribute KEEP of \scores_reg[1][13]\ : label is "yes";
  attribute KEEP of \scores_reg[1][14]\ : label is "yes";
  attribute KEEP of \scores_reg[1][15]\ : label is "yes";
  attribute KEEP of \scores_reg[1][1]\ : label is "yes";
  attribute KEEP of \scores_reg[1][2]\ : label is "yes";
  attribute KEEP of \scores_reg[1][3]\ : label is "yes";
  attribute KEEP of \scores_reg[1][4]\ : label is "yes";
  attribute KEEP of \scores_reg[1][5]\ : label is "yes";
  attribute KEEP of \scores_reg[1][6]\ : label is "yes";
  attribute KEEP of \scores_reg[1][7]\ : label is "yes";
  attribute KEEP of \scores_reg[1][8]\ : label is "yes";
  attribute KEEP of \scores_reg[1][9]\ : label is "yes";
  attribute KEEP of \scores_reg[2][0]\ : label is "yes";
  attribute KEEP of \scores_reg[2][10]\ : label is "yes";
  attribute KEEP of \scores_reg[2][11]\ : label is "yes";
  attribute KEEP of \scores_reg[2][12]\ : label is "yes";
  attribute KEEP of \scores_reg[2][13]\ : label is "yes";
  attribute KEEP of \scores_reg[2][14]\ : label is "yes";
  attribute KEEP of \scores_reg[2][15]\ : label is "yes";
  attribute KEEP of \scores_reg[2][1]\ : label is "yes";
  attribute KEEP of \scores_reg[2][2]\ : label is "yes";
  attribute KEEP of \scores_reg[2][3]\ : label is "yes";
  attribute KEEP of \scores_reg[2][4]\ : label is "yes";
  attribute KEEP of \scores_reg[2][5]\ : label is "yes";
  attribute KEEP of \scores_reg[2][6]\ : label is "yes";
  attribute KEEP of \scores_reg[2][7]\ : label is "yes";
  attribute KEEP of \scores_reg[2][8]\ : label is "yes";
  attribute KEEP of \scores_reg[2][9]\ : label is "yes";
  attribute KEEP of \scores_reg[3][0]\ : label is "yes";
  attribute KEEP of \scores_reg[3][10]\ : label is "yes";
  attribute KEEP of \scores_reg[3][11]\ : label is "yes";
  attribute KEEP of \scores_reg[3][12]\ : label is "yes";
  attribute KEEP of \scores_reg[3][13]\ : label is "yes";
  attribute KEEP of \scores_reg[3][14]\ : label is "yes";
  attribute KEEP of \scores_reg[3][15]\ : label is "yes";
  attribute KEEP of \scores_reg[3][1]\ : label is "yes";
  attribute KEEP of \scores_reg[3][2]\ : label is "yes";
  attribute KEEP of \scores_reg[3][3]\ : label is "yes";
  attribute KEEP of \scores_reg[3][4]\ : label is "yes";
  attribute KEEP of \scores_reg[3][5]\ : label is "yes";
  attribute KEEP of \scores_reg[3][6]\ : label is "yes";
  attribute KEEP of \scores_reg[3][7]\ : label is "yes";
  attribute KEEP of \scores_reg[3][8]\ : label is "yes";
  attribute KEEP of \scores_reg[3][9]\ : label is "yes";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair7";
begin
  \clause_cnt_reg[0]_0\(0) <= \^clause_cnt_reg[0]_0\(0);
  clause_is_odd <= \^clause_is_odd\;
  done_wire <= \^done_wire\;
  \out\(15 downto 0) <= \^out\(15 downto 0);
  p_0_in <= \^p_0_in\;
  \pred_class_reg[2]_0\(2 downto 0) <= \^pred_class_reg[2]_0\(2 downto 0);
  \scores[0]\(15 downto 0) <= \^scores[0]\(15 downto 0);
  \scores[1]\(15 downto 0) <= \^scores[1]\(15 downto 0);
  \scores[3]\(15 downto 0) <= \^scores[3]\(15 downto 0);
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
  \state_reg[2]_0\ <= \^state_reg[2]_0\;
S_AXI_AWREADY_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^p_0_in\
    );
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFB080"
    )
        port map (
      I0 => Q(0),
      I1 => \S_AXI_RDATA_reg[0]\,
      I2 => \S_AXI_RDATA_reg[0]_0\,
      I3 => \S_AXI_RDATA_reg[0]_1\(0),
      I4 => \S_AXI_RDATA[0]_i_2_n_0\,
      I5 => \S_AXI_RDATA_reg[0]_2\,
      O => D(0)
    );
\S_AXI_RDATA[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEAEAEA"
    )
        port map (
      I0 => \S_AXI_RDATA[0]_i_3_n_0\,
      I1 => \S_AXI_RDATA_reg[0]_3\(0),
      I2 => \S_AXI_RDATA_reg[0]_4\,
      I3 => \S_AXI_RDATA_reg[0]_5\(0),
      I4 => \S_AXI_RDATA_reg[0]_6\,
      I5 => \S_AXI_RDATA_reg[0]_7\,
      O => \S_AXI_RDATA[0]_i_2_n_0\
    );
\S_AXI_RDATA[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0203000002000000"
    )
        port map (
      I0 => \S_AXI_RDATA[0]_i_2_0\(0),
      I1 => S_AXI_ARADDR(1),
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_ARADDR(3),
      I4 => S_AXI_ARADDR(2),
      I5 => \^done_wire\,
      O => \S_AXI_RDATA[0]_i_3_n_0\
    );
\class_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFFFF50C000000"
    )
        port map (
      I0 => \class_idx_reg[2]_0\,
      I1 => \class_idx[0]_i_2_n_0\,
      I2 => \^state_reg[2]_0\,
      I3 => \^state_reg[0]_0\,
      I4 => \^state_reg[1]_0\,
      I5 => \sel0__0\(0),
      O => \class_idx[0]_i_1_n_0\
    );
\class_idx[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      O => \class_idx[0]_i_2_n_0\
    );
\class_idx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \sel0__0\(0),
      I1 => \^state_reg[1]_0\,
      I2 => \class_idx[1]_i_2_n_0\,
      I3 => \sel0__0\(1),
      O => \class_idx[1]_i_1_n_0\
    );
\class_idx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC0000000000AA"
    )
        port map (
      I0 => \class_idx_reg[2]_0\,
      I1 => \sel0__0\(2),
      I2 => \class_idx[2]_i_2_n_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \^state_reg[0]_0\,
      I5 => \^state_reg[1]_0\,
      O => \class_idx[1]_i_2_n_0\
    );
\class_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0CCCCCCCCCC44"
    )
        port map (
      I0 => \class_idx_reg[2]_0\,
      I1 => \sel0__0\(2),
      I2 => \class_idx[2]_i_2_n_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \^state_reg[0]_0\,
      I5 => \^state_reg[1]_0\,
      O => \class_idx[2]_i_1_n_0\
    );
\class_idx[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \sel0__0\(0),
      I1 => \sel0__0\(1),
      O => \class_idx[2]_i_2_n_0\
    );
\class_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \class_idx[0]_i_1_n_0\,
      Q => \sel0__0\(0)
    );
\class_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \class_idx[1]_i_1_n_0\,
      Q => \sel0__0\(1)
    );
\class_idx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \class_idx[2]_i_1_n_0\,
      Q => \sel0__0\(2)
    );
\clause_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      I2 => \^clause_cnt_reg[0]_0\(0),
      O => p_0_in_0(0)
    );
\clause_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFF0000"
    )
        port map (
      I0 => \clause_cnt[10]_i_3_n_0\,
      I1 => \clause_cnt[10]_i_4_n_0\,
      I2 => \clause_cnt_reg_n_0_[5]\,
      I3 => \clause_cnt_reg_n_0_[10]\,
      I4 => \clause_cnt[10]_i_5_n_0\,
      I5 => \class_idx[1]_i_2_n_0\,
      O => \clause_cnt[10]_i_1_n_0\
    );
\clause_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07000800"
    )
        port map (
      I0 => \clause_cnt[10]_i_6_n_0\,
      I1 => \clause_cnt_reg_n_0_[9]\,
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[1]_0\,
      I4 => \clause_cnt_reg_n_0_[10]\,
      O => p_0_in_0(10)
    );
\clause_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[8]\,
      I1 => \clause_cnt_reg_n_0_[7]\,
      I2 => \clause_cnt_reg_n_0_[3]\,
      I3 => \clause_cnt_reg_n_0_[6]\,
      I4 => \clause_cnt_reg_n_0_[4]\,
      I5 => \clause_cnt_reg_n_0_[9]\,
      O => \clause_cnt[10]_i_3_n_0\
    );
\clause_cnt[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[1]\,
      I1 => \^clause_cnt_reg[0]_0\(0),
      I2 => \clause_cnt_reg_n_0_[2]\,
      O => \clause_cnt[10]_i_4_n_0\
    );
\clause_cnt[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      I2 => \^state_reg[2]_0\,
      O => \clause_cnt[10]_i_5_n_0\
    );
\clause_cnt[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[8]\,
      I1 => \clause_cnt_reg_n_0_[7]\,
      I2 => \clause_cnt_reg_n_0_[6]\,
      I3 => \clause_cnt[9]_i_2_n_0\,
      O => \clause_cnt[10]_i_6_n_0\
    );
\clause_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^clause_cnt_reg[0]_0\(0),
      I3 => \clause_cnt_reg_n_0_[1]\,
      O => p_0_in_0(1)
    );
\clause_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007800"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[1]\,
      I1 => \^clause_cnt_reg[0]_0\(0),
      I2 => \clause_cnt_reg_n_0_[2]\,
      I3 => \^state_reg[1]_0\,
      I4 => \^state_reg[0]_0\,
      O => p_0_in_0(2)
    );
\clause_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[2]\,
      I1 => \clause_cnt_reg_n_0_[1]\,
      I2 => \^clause_cnt_reg[0]_0\(0),
      I3 => \^state_reg[0]_0\,
      I4 => \^state_reg[1]_0\,
      I5 => \clause_cnt_reg_n_0_[3]\,
      O => p_0_in_0(3)
    );
\clause_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^clause_cnt_reg[0]_0\(0),
      I1 => \clause_cnt_reg_n_0_[1]\,
      I2 => \clause_cnt_reg_n_0_[2]\,
      I3 => \clause_cnt_reg_n_0_[3]\,
      I4 => \clause_cnt[9]_i_3_n_0\,
      I5 => \clause_cnt_reg_n_0_[4]\,
      O => p_0_in_0(4)
    );
\clause_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \clause_cnt[5]_i_2_n_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \clause_cnt_reg_n_0_[5]\,
      O => p_0_in_0(5)
    );
\clause_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[4]\,
      I1 => \clause_cnt_reg_n_0_[3]\,
      I2 => \clause_cnt_reg_n_0_[2]\,
      I3 => \clause_cnt_reg_n_0_[1]\,
      I4 => \^clause_cnt_reg[0]_0\(0),
      O => \clause_cnt[5]_i_2_n_0\
    );
\clause_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2010"
    )
        port map (
      I0 => \clause_cnt[9]_i_2_n_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \clause_cnt_reg_n_0_[6]\,
      O => p_0_in_0(6)
    );
\clause_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D000200"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[6]\,
      I1 => \clause_cnt[9]_i_2_n_0\,
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[1]_0\,
      I4 => \clause_cnt_reg_n_0_[7]\,
      O => p_0_in_0(7)
    );
\clause_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF000000400000"
    )
        port map (
      I0 => \clause_cnt[9]_i_2_n_0\,
      I1 => \clause_cnt_reg_n_0_[6]\,
      I2 => \clause_cnt_reg_n_0_[7]\,
      I3 => \^state_reg[0]_0\,
      I4 => \^state_reg[1]_0\,
      I5 => \clause_cnt_reg_n_0_[8]\,
      O => p_0_in_0(8)
    );
\clause_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000800000"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[8]\,
      I1 => \clause_cnt_reg_n_0_[7]\,
      I2 => \clause_cnt_reg_n_0_[6]\,
      I3 => \clause_cnt[9]_i_2_n_0\,
      I4 => \clause_cnt[9]_i_3_n_0\,
      I5 => \clause_cnt_reg_n_0_[9]\,
      O => p_0_in_0(9)
    );
\clause_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^clause_cnt_reg[0]_0\(0),
      I1 => \clause_cnt_reg_n_0_[1]\,
      I2 => \clause_cnt_reg_n_0_[2]\,
      I3 => \clause_cnt_reg_n_0_[3]\,
      I4 => \clause_cnt_reg_n_0_[4]\,
      I5 => \clause_cnt_reg_n_0_[5]\,
      O => \clause_cnt[9]_i_2_n_0\
    );
\clause_cnt[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^state_reg[0]_0\,
      O => \clause_cnt[9]_i_3_n_0\
    );
\clause_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(0),
      Q => \^clause_cnt_reg[0]_0\(0)
    );
\clause_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(10),
      Q => \clause_cnt_reg_n_0_[10]\
    );
\clause_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(1),
      Q => \clause_cnt_reg_n_0_[1]\
    );
\clause_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(2),
      Q => \clause_cnt_reg_n_0_[2]\
    );
\clause_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(3),
      Q => \clause_cnt_reg_n_0_[3]\
    );
\clause_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(4),
      Q => \clause_cnt_reg_n_0_[4]\
    );
\clause_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(5),
      Q => \clause_cnt_reg_n_0_[5]\
    );
\clause_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(6),
      Q => \clause_cnt_reg_n_0_[6]\
    );
\clause_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(7),
      Q => \clause_cnt_reg_n_0_[7]\
    );
\clause_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(8),
      Q => \clause_cnt_reg_n_0_[8]\
    );
\clause_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \clause_cnt[10]_i_1_n_0\,
      CLR => \^p_0_in\,
      D => p_0_in_0(9),
      Q => \clause_cnt_reg_n_0_[9]\
    );
clause_is_odd_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => clause_is_odd_reg_0,
      Q => \^clause_is_odd\
    );
\cmp_idx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \cmp_idx[1]_i_2_n_0\,
      I2 => sel0(0),
      O => \cmp_idx[0]_i_1_n_0\
    );
\cmp_idx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => sel0(0),
      I1 => \^state_reg[2]_0\,
      I2 => \cmp_idx[1]_i_2_n_0\,
      I3 => sel0(1),
      O => \cmp_idx[1]_i_1_n_0\
    );
\cmp_idx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000050500F0C0000"
    )
        port map (
      I0 => \class_idx[0]_i_2_n_0\,
      I1 => \cmp_idx[2]_i_2_n_0\,
      I2 => \^state_reg[0]_0\,
      I3 => sel0(2),
      I4 => \^state_reg[2]_0\,
      I5 => \^state_reg[1]_0\,
      O => \cmp_idx[1]_i_2_n_0\
    );
\cmp_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AF00FC00FF00"
    )
        port map (
      I0 => \class_idx[0]_i_2_n_0\,
      I1 => \cmp_idx[2]_i_2_n_0\,
      I2 => \^state_reg[0]_0\,
      I3 => sel0(2),
      I4 => \^state_reg[2]_0\,
      I5 => \^state_reg[1]_0\,
      O => \cmp_idx[2]_i_1_n_0\
    );
\cmp_idx[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \cmp_idx[2]_i_2_n_0\
    );
\cmp_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \cmp_idx[0]_i_1_n_0\,
      Q => sel0(0)
    );
\cmp_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \cmp_idx[1]_i_1_n_0\,
      Q => sel0(1)
    );
\cmp_idx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \cmp_idx[2]_i_1_n_0\,
      Q => sel0(2)
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => done_reg_0,
      Q => \^done_wire\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^scores[3]\(8),
      I2 => \^scores[0]\(8),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(7),
      I1 => \^scores[3]\(7),
      I2 => \^scores[0]\(7),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^scores[3]\(6),
      I2 => \^scores[0]\(6),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^scores[3]\(5),
      I2 => \^scores[0]\(5),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(8),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(8),
      I4 => \^scores[3]\(8),
      I5 => \^out\(8),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(7),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(7),
      I4 => \^scores[3]\(7),
      I5 => \^out\(7),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(6),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(6),
      I4 => \^scores[3]\(6),
      I5 => \^out\(6),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(5),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(5),
      I4 => \^scores[3]\(5),
      I5 => \^out\(5),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(12),
      I1 => \^scores[3]\(12),
      I2 => \^scores[0]\(12),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^scores[3]\(11),
      I2 => \^scores[0]\(11),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^scores[3]\(10),
      I2 => \^scores[0]\(10),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^scores[3]\(9),
      I2 => \^scores[0]\(9),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(12),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(12),
      I4 => \^scores[3]\(12),
      I5 => \^out\(12),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(11),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(11),
      I4 => \^scores[3]\(11),
      I5 => \^out\(11),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(10),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(10),
      I4 => \^scores[3]\(10),
      I5 => \^out\(10),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(9),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(9),
      I4 => \^scores[3]\(9),
      I5 => \^out\(9),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(14),
      I1 => \^scores[3]\(14),
      I2 => \^scores[0]\(14),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(14),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(13),
      I1 => \^scores[3]\(13),
      I2 => \^scores[0]\(13),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(13),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(15),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(15),
      I4 => \^scores[3]\(15),
      I5 => \^out\(15),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(14),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(14),
      I4 => \^scores[3]\(14),
      I5 => \^out\(14),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(13),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(13),
      I4 => \^scores[3]\(13),
      I5 => \^out\(13),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(4),
      I1 => \^scores[3]\(4),
      I2 => \^scores[0]\(4),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^scores[3]\(3),
      I2 => \^scores[0]\(3),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^scores[3]\(2),
      I2 => \^scores[0]\(2),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^scores[3]\(1),
      I2 => \^scores[0]\(1),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(4),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(4),
      I4 => \^scores[3]\(4),
      I5 => \^out\(4),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(3),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(3),
      I4 => \^scores[3]\(3),
      I5 => \^out\(3),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(2),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(2),
      I4 => \^scores[3]\(2),
      I5 => \^out\(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0407C4C73437F4F7"
    )
        port map (
      I0 => \^scores[1]\(1),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \^scores[0]\(1),
      I4 => \^scores[3]\(1),
      I5 => \^out\(1),
      O => \i__carry_i_8_n_0\
    );
\max_score[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(0),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(0),
      O => p_1_in(0)
    );
\max_score[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^scores[3]\(0),
      I2 => \^scores[0]\(0),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(0),
      O => \scores__115\(0)
    );
\max_score[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(10),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(10),
      O => p_1_in(10)
    );
\max_score[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^scores[3]\(10),
      I2 => \^scores[0]\(10),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(10),
      O => \scores__115\(10)
    );
\max_score[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(11),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(11),
      O => p_1_in(11)
    );
\max_score[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^scores[3]\(11),
      I2 => \^scores[0]\(11),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(11),
      O => \scores__115\(11)
    );
\max_score[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(12),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(12),
      O => p_1_in(12)
    );
\max_score[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(12),
      I1 => \^scores[3]\(12),
      I2 => \^scores[0]\(12),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(12),
      O => \scores__115\(12)
    );
\max_score[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(13),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(13),
      O => p_1_in(13)
    );
\max_score[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(13),
      I1 => \^scores[3]\(13),
      I2 => \^scores[0]\(13),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(13),
      O => \scores__115\(13)
    );
\max_score[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(14),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(14),
      O => p_1_in(14)
    );
\max_score[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(14),
      I1 => \^scores[3]\(14),
      I2 => \^scores[0]\(14),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(14),
      O => \scores__115\(14)
    );
\max_score[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800083008"
    )
        port map (
      I0 => \pred_class0_carry__0_n_0\,
      I1 => \^state_reg[2]_0\,
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[1]_0\,
      I4 => \class_idx[2]_i_2_n_0\,
      I5 => \sel0__0\(2),
      O => max_score0
    );
\max_score[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(15),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(15),
      O => p_1_in(15)
    );
\max_score[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(15),
      I1 => \^scores[3]\(15),
      I2 => \^scores[0]\(15),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(15),
      O => \scores__115\(15)
    );
\max_score[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(1),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(1),
      O => p_1_in(1)
    );
\max_score[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^scores[3]\(1),
      I2 => \^scores[0]\(1),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(1),
      O => \scores__115\(1)
    );
\max_score[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(2),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(2),
      O => p_1_in(2)
    );
\max_score[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^scores[3]\(2),
      I2 => \^scores[0]\(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(2),
      O => \scores__115\(2)
    );
\max_score[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(3),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(3),
      O => p_1_in(3)
    );
\max_score[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^scores[3]\(3),
      I2 => \^scores[0]\(3),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(3),
      O => \scores__115\(3)
    );
\max_score[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(4),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(4),
      O => p_1_in(4)
    );
\max_score[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(4),
      I1 => \^scores[3]\(4),
      I2 => \^scores[0]\(4),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(4),
      O => \scores__115\(4)
    );
\max_score[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(5),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(5),
      O => p_1_in(5)
    );
\max_score[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^scores[3]\(5),
      I2 => \^scores[0]\(5),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(5),
      O => \scores__115\(5)
    );
\max_score[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(6),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(6),
      O => p_1_in(6)
    );
\max_score[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^scores[3]\(6),
      I2 => \^scores[0]\(6),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(6),
      O => \scores__115\(6)
    );
\max_score[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(7),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(7),
      O => p_1_in(7)
    );
\max_score[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(7),
      I1 => \^scores[3]\(7),
      I2 => \^scores[0]\(7),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(7),
      O => \scores__115\(7)
    );
\max_score[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(8),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(8),
      O => p_1_in(8)
    );
\max_score[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^scores[3]\(8),
      I2 => \^scores[0]\(8),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(8),
      O => \scores__115\(8)
    );
\max_score[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scores[0]\(9),
      I1 => \^state_reg[0]_0\,
      I2 => \scores__115\(9),
      O => p_1_in(9)
    );
\max_score[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^scores[3]\(9),
      I2 => \^scores[0]\(9),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \^scores[1]\(9),
      O => \scores__115\(9)
    );
\max_score_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(0),
      Q => max_score(0)
    );
\max_score_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(10),
      Q => max_score(10)
    );
\max_score_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(11),
      Q => max_score(11)
    );
\max_score_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(12),
      Q => max_score(12)
    );
\max_score_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(13),
      Q => max_score(13)
    );
\max_score_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(14),
      Q => max_score(14)
    );
\max_score_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      D => p_1_in(15),
      PRE => \^p_0_in\,
      Q => max_score(15)
    );
\max_score_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(1),
      Q => max_score(1)
    );
\max_score_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(2),
      Q => max_score(2)
    );
\max_score_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(3),
      Q => max_score(3)
    );
\max_score_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(4),
      Q => max_score(4)
    );
\max_score_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(5),
      Q => max_score(5)
    );
\max_score_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(6),
      Q => max_score(6)
    );
\max_score_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(7),
      Q => max_score(7)
    );
\max_score_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(8),
      Q => max_score(8)
    );
\max_score_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => max_score0,
      CLR => \^p_0_in\,
      D => p_1_in(9),
      Q => max_score(9)
    );
p_0_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_out_carry_n_0,
      CO(2) => p_0_out_carry_n_1,
      CO(1) => p_0_out_carry_n_2,
      CO(0) => p_0_out_carry_n_3,
      CYINIT => p_0_out_carry_i_1_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in1_in(4 downto 1),
      S(3) => p_0_out_carry_i_2_n_0,
      S(2) => p_0_out_carry_i_3_n_0,
      S(1) => p_0_out_carry_i_4_n_0,
      S(0) => p_0_out_carry_i_5_n_0
    );
\p_0_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_0_out_carry_n_0,
      CO(3) => \p_0_out_carry__0_n_0\,
      CO(2) => \p_0_out_carry__0_n_1\,
      CO(1) => \p_0_out_carry__0_n_2\,
      CO(0) => \p_0_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in1_in(8 downto 5),
      S(3) => \p_0_out_carry__0_i_1_n_0\,
      S(2) => \p_0_out_carry__0_i_2_n_0\,
      S(1) => \p_0_out_carry__0_i_3_n_0\,
      S(0) => \p_0_out_carry__0_i_4_n_0\
    );
\p_0_out_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^scores[3]\(8),
      I2 => \^scores[0]\(8),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(8),
      O => \p_0_out_carry__0_i_1_n_0\
    );
\p_0_out_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(7),
      I1 => \^scores[3]\(7),
      I2 => \^scores[0]\(7),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(7),
      O => \p_0_out_carry__0_i_2_n_0\
    );
\p_0_out_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^scores[3]\(6),
      I2 => \^scores[0]\(6),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(6),
      O => \p_0_out_carry__0_i_3_n_0\
    );
\p_0_out_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^scores[3]\(5),
      I2 => \^scores[0]\(5),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(5),
      O => \p_0_out_carry__0_i_4_n_0\
    );
\p_0_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_carry__0_n_0\,
      CO(3) => \p_0_out_carry__1_n_0\,
      CO(2) => \p_0_out_carry__1_n_1\,
      CO(1) => \p_0_out_carry__1_n_2\,
      CO(0) => \p_0_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in1_in(12 downto 9),
      S(3) => \p_0_out_carry__1_i_1_n_0\,
      S(2) => \p_0_out_carry__1_i_2_n_0\,
      S(1) => \p_0_out_carry__1_i_3_n_0\,
      S(0) => \p_0_out_carry__1_i_4_n_0\
    );
\p_0_out_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(12),
      I1 => \^scores[3]\(12),
      I2 => \^scores[0]\(12),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(12),
      O => \p_0_out_carry__1_i_1_n_0\
    );
\p_0_out_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^scores[3]\(11),
      I2 => \^scores[0]\(11),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(11),
      O => \p_0_out_carry__1_i_2_n_0\
    );
\p_0_out_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^scores[3]\(10),
      I2 => \^scores[0]\(10),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(10),
      O => \p_0_out_carry__1_i_3_n_0\
    );
\p_0_out_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^scores[3]\(9),
      I2 => \^scores[0]\(9),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(9),
      O => \p_0_out_carry__1_i_4_n_0\
    );
\p_0_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_carry__1_n_0\,
      CO(3 downto 2) => \NLW_p_0_out_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \p_0_out_carry__2_n_2\,
      CO(0) => \p_0_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_p_0_out_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in1_in(15 downto 13),
      S(3) => '0',
      S(2) => \p_0_out_carry__2_i_1_n_0\,
      S(1) => \p_0_out_carry__2_i_2_n_0\,
      S(0) => \p_0_out_carry__2_i_3_n_0\
    );
\p_0_out_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(15),
      I1 => \^scores[3]\(15),
      I2 => \^scores[0]\(15),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(15),
      O => \p_0_out_carry__2_i_1_n_0\
    );
\p_0_out_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(14),
      I1 => \^scores[3]\(14),
      I2 => \^scores[0]\(14),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(14),
      O => \p_0_out_carry__2_i_2_n_0\
    );
\p_0_out_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(13),
      I1 => \^scores[3]\(13),
      I2 => \^scores[0]\(13),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(13),
      O => \p_0_out_carry__2_i_3_n_0\
    );
p_0_out_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^scores[3]\(0),
      I2 => \^scores[0]\(0),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(0),
      O => p_0_out_carry_i_1_n_0
    );
p_0_out_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(4),
      I1 => \^scores[3]\(4),
      I2 => \^scores[0]\(4),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(4),
      O => p_0_out_carry_i_2_n_0
    );
p_0_out_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^scores[3]\(3),
      I2 => \^scores[0]\(3),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(3),
      O => p_0_out_carry_i_3_n_0
    );
p_0_out_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^scores[3]\(2),
      I2 => \^scores[0]\(2),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(2),
      O => p_0_out_carry_i_4_n_0
    );
p_0_out_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^scores[3]\(1),
      I2 => \^scores[0]\(1),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      I5 => \^scores[1]\(1),
      O => p_0_out_carry_i_5_n_0
    );
\p_0_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out_inferred__0/i__carry_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry_n_3\,
      CYINIT => p_0_out_carry_i_1_n_0,
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => p_2_in(4 downto 1),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry_n_0\,
      CO(3) => \p_0_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => p_2_in(8 downto 5),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \p_0_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => p_2_in(12 downto 9),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_p_0_out_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \p_0_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__2_i_1_n_0\,
      DI(0) => \i__carry__2_i_2_n_0\,
      O(3) => \NLW_p_0_out_inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_2_in(15 downto 13),
      S(3) => '0',
      S(2) => \i__carry__2_i_3_n_0\,
      S(1) => \i__carry__2_i_4_n_0\,
      S(0) => \i__carry__2_i_5_n_0\
    );
pred_class0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pred_class0_carry_n_0,
      CO(2) => pred_class0_carry_n_1,
      CO(1) => pred_class0_carry_n_2,
      CO(0) => pred_class0_carry_n_3,
      CYINIT => '0',
      DI(3) => pred_class0_carry_i_1_n_0,
      DI(2) => pred_class0_carry_i_2_n_0,
      DI(1) => pred_class0_carry_i_3_n_0,
      DI(0) => pred_class0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pred_class0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pred_class0_carry_i_5_n_0,
      S(2) => pred_class0_carry_i_6_n_0,
      S(1) => pred_class0_carry_i_7_n_0,
      S(0) => pred_class0_carry_i_8_n_0
    );
\pred_class0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pred_class0_carry_n_0,
      CO(3) => \pred_class0_carry__0_n_0\,
      CO(2) => \pred_class0_carry__0_n_1\,
      CO(1) => \pred_class0_carry__0_n_2\,
      CO(0) => \pred_class0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pred_class0_carry__0_i_1_n_0\,
      DI(2) => \pred_class0_carry__0_i_2_n_0\,
      DI(1) => \pred_class0_carry__0_i_3_n_0\,
      DI(0) => \pred_class0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pred_class0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pred_class0_carry__0_i_5_n_0\,
      S(2) => \pred_class0_carry__0_i_6_n_0\,
      S(1) => \pred_class0_carry__0_i_7_n_0\,
      S(0) => \pred_class0_carry__0_i_8_n_0\
    );
\pred_class0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(14),
      I1 => max_score(14),
      I2 => \scores__115\(15),
      I3 => max_score(15),
      O => \pred_class0_carry__0_i_1_n_0\
    );
\pred_class0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(12),
      I1 => max_score(12),
      I2 => max_score(13),
      I3 => \scores__115\(13),
      O => \pred_class0_carry__0_i_2_n_0\
    );
\pred_class0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(10),
      I1 => max_score(10),
      I2 => max_score(11),
      I3 => \scores__115\(11),
      O => \pred_class0_carry__0_i_3_n_0\
    );
\pred_class0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(8),
      I1 => max_score(8),
      I2 => max_score(9),
      I3 => \scores__115\(9),
      O => \pred_class0_carry__0_i_4_n_0\
    );
\pred_class0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(14),
      I1 => max_score(15),
      I2 => \scores__115\(15),
      I3 => max_score(14),
      O => \pred_class0_carry__0_i_5_n_0\
    );
\pred_class0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(12),
      I1 => \scores__115\(13),
      I2 => max_score(13),
      I3 => max_score(12),
      O => \pred_class0_carry__0_i_6_n_0\
    );
\pred_class0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(10),
      I1 => \scores__115\(11),
      I2 => max_score(11),
      I3 => max_score(10),
      O => \pred_class0_carry__0_i_7_n_0\
    );
\pred_class0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(8),
      I1 => \scores__115\(9),
      I2 => max_score(9),
      I3 => max_score(8),
      O => \pred_class0_carry__0_i_8_n_0\
    );
pred_class0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(6),
      I1 => max_score(6),
      I2 => max_score(7),
      I3 => \scores__115\(7),
      O => pred_class0_carry_i_1_n_0
    );
pred_class0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(4),
      I1 => max_score(4),
      I2 => max_score(5),
      I3 => \scores__115\(5),
      O => pred_class0_carry_i_2_n_0
    );
pred_class0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(2),
      I1 => max_score(2),
      I2 => max_score(3),
      I3 => \scores__115\(3),
      O => pred_class0_carry_i_3_n_0
    );
pred_class0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \scores__115\(0),
      I1 => max_score(0),
      I2 => max_score(1),
      I3 => \scores__115\(1),
      O => pred_class0_carry_i_4_n_0
    );
pred_class0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(6),
      I1 => \scores__115\(7),
      I2 => max_score(7),
      I3 => max_score(6),
      O => pred_class0_carry_i_5_n_0
    );
pred_class0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(4),
      I1 => \scores__115\(5),
      I2 => max_score(5),
      I3 => max_score(4),
      O => pred_class0_carry_i_6_n_0
    );
pred_class0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(2),
      I1 => \scores__115\(3),
      I2 => max_score(3),
      I3 => max_score(2),
      O => pred_class0_carry_i_7_n_0
    );
pred_class0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \scores__115\(0),
      I1 => \scores__115\(1),
      I2 => max_score(1),
      I3 => max_score(0),
      O => pred_class0_carry_i_8_n_0
    );
\pred_class[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB33AB338800A800"
    )
        port map (
      I0 => sel0(0),
      I1 => \pred_class[2]_i_2_n_0\,
      I2 => \pred_class0_carry__0_n_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \pred_class[2]_i_3_n_0\,
      I5 => \^pred_class_reg[2]_0\(0),
      O => \pred_class[0]_i_1_n_0\
    );
\pred_class[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB33AB338800A800"
    )
        port map (
      I0 => sel0(1),
      I1 => \pred_class[2]_i_2_n_0\,
      I2 => \pred_class0_carry__0_n_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \pred_class[2]_i_3_n_0\,
      I5 => \^pred_class_reg[2]_0\(1),
      O => \pred_class[1]_i_1_n_0\
    );
\pred_class[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB33AB338800A800"
    )
        port map (
      I0 => sel0(2),
      I1 => \pred_class[2]_i_2_n_0\,
      I2 => \pred_class0_carry__0_n_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \pred_class[2]_i_3_n_0\,
      I5 => \^pred_class_reg[2]_0\(2),
      O => \pred_class[2]_i_1_n_0\
    );
\pred_class[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[2]_0\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \pred_class[2]_i_2_n_0\
    );
\pred_class[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      O => \pred_class[2]_i_3_n_0\
    );
\pred_class_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \pred_class[0]_i_1_n_0\,
      Q => \^pred_class_reg[2]_0\(0)
    );
\pred_class_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \pred_class[1]_i_1_n_0\,
      Q => \^pred_class_reg[2]_0\(1)
    );
\pred_class_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \pred_class[2]_i_1_n_0\,
      Q => \^pred_class_reg[2]_0\(2)
    );
\score_latch[0][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^done_wire\,
      I1 => done_d,
      O => E(0)
    );
\scores[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      I3 => \scores[2][0]_i_2_n_0\,
      I4 => \^scores[0]\(0),
      I5 => \scores[0][15]_i_2_n_0\,
      O => \scores[0][0]_i_1_n_0\
    );
\scores[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(10),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(10),
      I4 => p_2_in(10),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][10]_i_1_n_0\
    );
\scores[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(11),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(11),
      I4 => p_2_in(11),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][11]_i_1_n_0\
    );
\scores[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(12),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(12),
      I4 => p_2_in(12),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][12]_i_1_n_0\
    );
\scores[0][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(13),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(13),
      I4 => p_2_in(13),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][13]_i_1_n_0\
    );
\scores[0][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(14),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(14),
      I4 => p_2_in(14),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][14]_i_1_n_0\
    );
\scores[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(15),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(15),
      I4 => p_2_in(15),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][15]_i_1_n_0\
    );
\scores[0][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDCFFDF"
    )
        port map (
      I0 => \scores[0][15]_i_5_n_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \class_idx_reg[2]_0\,
      O => \scores[0][15]_i_2_n_0\
    );
\scores[0][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^clause_is_odd\,
      I1 => \clause_cnt[9]_i_3_n_0\,
      I2 => \^state_reg[2]_0\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[0][15]_i_3_n_0\
    );
\scores[0][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \clause_cnt[9]_i_3_n_0\,
      I1 => \^state_reg[2]_0\,
      I2 => \^clause_is_odd\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[0][15]_i_4_n_0\
    );
\scores[0][15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      O => \scores[0][15]_i_5_n_0\
    );
\scores[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(1),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(1),
      I4 => p_2_in(1),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][1]_i_1_n_0\
    );
\scores[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(2),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(2),
      I4 => p_2_in(2),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][2]_i_1_n_0\
    );
\scores[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(3),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(3),
      I4 => p_2_in(3),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][3]_i_1_n_0\
    );
\scores[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(4),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(4),
      I4 => p_2_in(4),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][4]_i_1_n_0\
    );
\scores[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(5),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(5),
      I4 => p_2_in(5),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][5]_i_1_n_0\
    );
\scores[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(6),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(6),
      I4 => p_2_in(6),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][6]_i_1_n_0\
    );
\scores[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(7),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(7),
      I4 => p_2_in(7),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][7]_i_1_n_0\
    );
\scores[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(8),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(8),
      I4 => p_2_in(8),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][8]_i_1_n_0\
    );
\scores[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[0][15]_i_2_n_0\,
      I1 => \^scores[0]\(9),
      I2 => \scores[0][15]_i_3_n_0\,
      I3 => p_0_in1_in(9),
      I4 => p_2_in(9),
      I5 => \scores[0][15]_i_4_n_0\,
      O => \scores[0][9]_i_1_n_0\
    );
\scores[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF100010001000"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      I3 => \scores[2][0]_i_2_n_0\,
      I4 => \^scores[1]\(0),
      I5 => \scores[1][15]_i_2_n_0\,
      O => \scores[1][0]_i_1_n_0\
    );
\scores[1][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(10),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(10),
      I4 => p_2_in(10),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][10]_i_1_n_0\
    );
\scores[1][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(11),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(11),
      I4 => p_2_in(11),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][11]_i_1_n_0\
    );
\scores[1][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(12),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(12),
      I4 => p_2_in(12),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][12]_i_1_n_0\
    );
\scores[1][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(13),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(13),
      I4 => p_2_in(13),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][13]_i_1_n_0\
    );
\scores[1][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(14),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(14),
      I4 => p_2_in(14),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][14]_i_1_n_0\
    );
\scores[1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(15),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(15),
      I4 => p_2_in(15),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][15]_i_1_n_0\
    );
\scores[1][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDCFFDF"
    )
        port map (
      I0 => \scores[1][15]_i_5_n_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \class_idx_reg[2]_0\,
      O => \scores[1][15]_i_2_n_0\
    );
\scores[1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \^clause_is_odd\,
      I1 => \clause_cnt[9]_i_3_n_0\,
      I2 => \^state_reg[2]_0\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[1][15]_i_3_n_0\
    );
\scores[1][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \clause_cnt[9]_i_3_n_0\,
      I1 => \^state_reg[2]_0\,
      I2 => \^clause_is_odd\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[1][15]_i_4_n_0\
    );
\scores[1][15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      O => \scores[1][15]_i_5_n_0\
    );
\scores[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(1),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(1),
      I4 => p_2_in(1),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][1]_i_1_n_0\
    );
\scores[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(2),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(2),
      I4 => p_2_in(2),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][2]_i_1_n_0\
    );
\scores[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(3),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(3),
      I4 => p_2_in(3),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][3]_i_1_n_0\
    );
\scores[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(4),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(4),
      I4 => p_2_in(4),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][4]_i_1_n_0\
    );
\scores[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(5),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(5),
      I4 => p_2_in(5),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][5]_i_1_n_0\
    );
\scores[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(6),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(6),
      I4 => p_2_in(6),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][6]_i_1_n_0\
    );
\scores[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(7),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(7),
      I4 => p_2_in(7),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][7]_i_1_n_0\
    );
\scores[1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(8),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(8),
      I4 => p_2_in(8),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][8]_i_1_n_0\
    );
\scores[1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[1][15]_i_2_n_0\,
      I1 => \^scores[1]\(9),
      I2 => \scores[1][15]_i_3_n_0\,
      I3 => p_0_in1_in(9),
      I4 => p_2_in(9),
      I5 => \scores[1][15]_i_4_n_0\,
      O => \scores[1][9]_i_1_n_0\
    );
\scores[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF040004000400"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      I3 => \scores[2][0]_i_2_n_0\,
      I4 => \^out\(0),
      I5 => \scores[2][15]_i_2_n_0\,
      O => \scores[2][0]_i_1_n_0\
    );
\scores[2][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^state_reg[2]_0\,
      I1 => \^state_reg[1]_0\,
      I2 => \^state_reg[0]_0\,
      I3 => p_0_out_carry_i_1_n_0,
      O => \scores[2][0]_i_2_n_0\
    );
\scores[2][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(10),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(10),
      I4 => p_2_in(10),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][10]_i_1_n_0\
    );
\scores[2][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(11),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(11),
      I4 => p_2_in(11),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][11]_i_1_n_0\
    );
\scores[2][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(12),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(12),
      I4 => p_2_in(12),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][12]_i_1_n_0\
    );
\scores[2][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(13),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(13),
      I4 => p_2_in(13),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][13]_i_1_n_0\
    );
\scores[2][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(14),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(14),
      I4 => p_2_in(14),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][14]_i_1_n_0\
    );
\scores[2][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(15),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(15),
      I4 => p_2_in(15),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][15]_i_1_n_0\
    );
\scores[2][15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDCFFDF"
    )
        port map (
      I0 => \scores[2][15]_i_5_n_0\,
      I1 => \^state_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \class_idx_reg[2]_0\,
      O => \scores[2][15]_i_2_n_0\
    );
\scores[2][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \^clause_is_odd\,
      I1 => \clause_cnt[9]_i_3_n_0\,
      I2 => \^state_reg[2]_0\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[2][15]_i_3_n_0\
    );
\scores[2][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \clause_cnt[9]_i_3_n_0\,
      I1 => \^state_reg[2]_0\,
      I2 => \^clause_is_odd\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[2][15]_i_4_n_0\
    );
\scores[2][15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      O => \scores[2][15]_i_5_n_0\
    );
\scores[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(1),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(1),
      I4 => p_2_in(1),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][1]_i_1_n_0\
    );
\scores[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(2),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(2),
      I4 => p_2_in(2),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][2]_i_1_n_0\
    );
\scores[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(3),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(3),
      I4 => p_2_in(3),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][3]_i_1_n_0\
    );
\scores[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(4),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(4),
      I4 => p_2_in(4),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][4]_i_1_n_0\
    );
\scores[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(5),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(5),
      I4 => p_2_in(5),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][5]_i_1_n_0\
    );
\scores[2][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(6),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(6),
      I4 => p_2_in(6),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][6]_i_1_n_0\
    );
\scores[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(7),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(7),
      I4 => p_2_in(7),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][7]_i_1_n_0\
    );
\scores[2][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(8),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(8),
      I4 => p_2_in(8),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][8]_i_1_n_0\
    );
\scores[2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[2][15]_i_2_n_0\,
      I1 => \^out\(9),
      I2 => \scores[2][15]_i_3_n_0\,
      I3 => p_0_in1_in(9),
      I4 => p_2_in(9),
      I5 => \scores[2][15]_i_4_n_0\,
      O => \scores[2][9]_i_1_n_0\
    );
\scores[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      I3 => \scores[2][0]_i_2_n_0\,
      I4 => \^scores[3]\(0),
      I5 => \scores[3][15]_i_2_n_0\,
      O => \scores[3][0]_i_1_n_0\
    );
\scores[3][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(10),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(10),
      I4 => p_2_in(10),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][10]_i_1_n_0\
    );
\scores[3][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(11),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(11),
      I4 => p_2_in(11),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][11]_i_1_n_0\
    );
\scores[3][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(12),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(12),
      I4 => p_2_in(12),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][12]_i_1_n_0\
    );
\scores[3][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(13),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(13),
      I4 => p_2_in(13),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][13]_i_1_n_0\
    );
\scores[3][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(14),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(14),
      I4 => p_2_in(14),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][14]_i_1_n_0\
    );
\scores[3][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(15),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(15),
      I4 => p_2_in(15),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][15]_i_1_n_0\
    );
\scores[3][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEF0FFFFFEFF"
    )
        port map (
      I0 => \sel0__0\(2),
      I1 => \class_idx[2]_i_2_n_0\,
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[1]_0\,
      I4 => \^state_reg[2]_0\,
      I5 => \class_idx_reg[2]_0\,
      O => \scores[3][15]_i_2_n_0\
    );
\scores[3][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \^clause_is_odd\,
      I1 => \clause_cnt[9]_i_3_n_0\,
      I2 => \^state_reg[2]_0\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[3][15]_i_3_n_0\
    );
\scores[3][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \clause_cnt[9]_i_3_n_0\,
      I1 => \^state_reg[2]_0\,
      I2 => \^clause_is_odd\,
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(1),
      I5 => \sel0__0\(2),
      O => \scores[3][15]_i_4_n_0\
    );
\scores[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(1),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(1),
      I4 => p_2_in(1),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][1]_i_1_n_0\
    );
\scores[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(2),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(2),
      I4 => p_2_in(2),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][2]_i_1_n_0\
    );
\scores[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(3),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(3),
      I4 => p_2_in(3),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][3]_i_1_n_0\
    );
\scores[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(4),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(4),
      I4 => p_2_in(4),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][4]_i_1_n_0\
    );
\scores[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(5),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(5),
      I4 => p_2_in(5),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][5]_i_1_n_0\
    );
\scores[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(6),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(6),
      I4 => p_2_in(6),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][6]_i_1_n_0\
    );
\scores[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(7),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(7),
      I4 => p_2_in(7),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][7]_i_1_n_0\
    );
\scores[3][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(8),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(8),
      I4 => p_2_in(8),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][8]_i_1_n_0\
    );
\scores[3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scores[3][15]_i_2_n_0\,
      I1 => \^scores[3]\(9),
      I2 => \scores[3][15]_i_3_n_0\,
      I3 => p_0_in1_in(9),
      I4 => p_2_in(9),
      I5 => \scores[3][15]_i_4_n_0\,
      O => \scores[3][9]_i_1_n_0\
    );
\scores_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][0]_i_1_n_0\,
      Q => \^scores[0]\(0)
    );
\scores_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][10]_i_1_n_0\,
      Q => \^scores[0]\(10)
    );
\scores_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][11]_i_1_n_0\,
      Q => \^scores[0]\(11)
    );
\scores_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][12]_i_1_n_0\,
      Q => \^scores[0]\(12)
    );
\scores_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][13]_i_1_n_0\,
      Q => \^scores[0]\(13)
    );
\scores_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][14]_i_1_n_0\,
      Q => \^scores[0]\(14)
    );
\scores_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][15]_i_1_n_0\,
      Q => \^scores[0]\(15)
    );
\scores_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][1]_i_1_n_0\,
      Q => \^scores[0]\(1)
    );
\scores_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][2]_i_1_n_0\,
      Q => \^scores[0]\(2)
    );
\scores_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][3]_i_1_n_0\,
      Q => \^scores[0]\(3)
    );
\scores_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][4]_i_1_n_0\,
      Q => \^scores[0]\(4)
    );
\scores_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][5]_i_1_n_0\,
      Q => \^scores[0]\(5)
    );
\scores_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][6]_i_1_n_0\,
      Q => \^scores[0]\(6)
    );
\scores_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][7]_i_1_n_0\,
      Q => \^scores[0]\(7)
    );
\scores_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][8]_i_1_n_0\,
      Q => \^scores[0]\(8)
    );
\scores_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[0][9]_i_1_n_0\,
      Q => \^scores[0]\(9)
    );
\scores_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][0]_i_1_n_0\,
      Q => \^scores[1]\(0)
    );
\scores_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][10]_i_1_n_0\,
      Q => \^scores[1]\(10)
    );
\scores_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][11]_i_1_n_0\,
      Q => \^scores[1]\(11)
    );
\scores_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][12]_i_1_n_0\,
      Q => \^scores[1]\(12)
    );
\scores_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][13]_i_1_n_0\,
      Q => \^scores[1]\(13)
    );
\scores_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][14]_i_1_n_0\,
      Q => \^scores[1]\(14)
    );
\scores_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][15]_i_1_n_0\,
      Q => \^scores[1]\(15)
    );
\scores_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][1]_i_1_n_0\,
      Q => \^scores[1]\(1)
    );
\scores_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][2]_i_1_n_0\,
      Q => \^scores[1]\(2)
    );
\scores_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][3]_i_1_n_0\,
      Q => \^scores[1]\(3)
    );
\scores_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][4]_i_1_n_0\,
      Q => \^scores[1]\(4)
    );
\scores_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][5]_i_1_n_0\,
      Q => \^scores[1]\(5)
    );
\scores_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][6]_i_1_n_0\,
      Q => \^scores[1]\(6)
    );
\scores_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][7]_i_1_n_0\,
      Q => \^scores[1]\(7)
    );
\scores_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][8]_i_1_n_0\,
      Q => \^scores[1]\(8)
    );
\scores_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[1][9]_i_1_n_0\,
      Q => \^scores[1]\(9)
    );
\scores_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][0]_i_1_n_0\,
      Q => \^out\(0)
    );
\scores_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][10]_i_1_n_0\,
      Q => \^out\(10)
    );
\scores_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][11]_i_1_n_0\,
      Q => \^out\(11)
    );
\scores_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][12]_i_1_n_0\,
      Q => \^out\(12)
    );
\scores_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][13]_i_1_n_0\,
      Q => \^out\(13)
    );
\scores_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][14]_i_1_n_0\,
      Q => \^out\(14)
    );
\scores_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][15]_i_1_n_0\,
      Q => \^out\(15)
    );
\scores_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][1]_i_1_n_0\,
      Q => \^out\(1)
    );
\scores_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][2]_i_1_n_0\,
      Q => \^out\(2)
    );
\scores_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][3]_i_1_n_0\,
      Q => \^out\(3)
    );
\scores_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][4]_i_1_n_0\,
      Q => \^out\(4)
    );
\scores_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][5]_i_1_n_0\,
      Q => \^out\(5)
    );
\scores_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][6]_i_1_n_0\,
      Q => \^out\(6)
    );
\scores_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][7]_i_1_n_0\,
      Q => \^out\(7)
    );
\scores_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][8]_i_1_n_0\,
      Q => \^out\(8)
    );
\scores_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[2][9]_i_1_n_0\,
      Q => \^out\(9)
    );
\scores_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][0]_i_1_n_0\,
      Q => \^scores[3]\(0)
    );
\scores_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][10]_i_1_n_0\,
      Q => \^scores[3]\(10)
    );
\scores_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][11]_i_1_n_0\,
      Q => \^scores[3]\(11)
    );
\scores_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][12]_i_1_n_0\,
      Q => \^scores[3]\(12)
    );
\scores_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][13]_i_1_n_0\,
      Q => \^scores[3]\(13)
    );
\scores_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][14]_i_1_n_0\,
      Q => \^scores[3]\(14)
    );
\scores_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][15]_i_1_n_0\,
      Q => \^scores[3]\(15)
    );
\scores_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][1]_i_1_n_0\,
      Q => \^scores[3]\(1)
    );
\scores_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][2]_i_1_n_0\,
      Q => \^scores[3]\(2)
    );
\scores_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][3]_i_1_n_0\,
      Q => \^scores[3]\(3)
    );
\scores_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][4]_i_1_n_0\,
      Q => \^scores[3]\(4)
    );
\scores_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][5]_i_1_n_0\,
      Q => \^scores[3]\(5)
    );
\scores_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][6]_i_1_n_0\,
      Q => \^scores[3]\(6)
    );
\scores_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][7]_i_1_n_0\,
      Q => \^scores[3]\(7)
    );
\scores_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][8]_i_1_n_0\,
      Q => \^scores[3]\(8)
    );
\scores_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \scores[3][9]_i_1_n_0\,
      Q => \^scores[3]\(9)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400FFFF55FF0000"
    )
        port map (
      I0 => \^state_reg[2]_0\,
      I1 => \sel0__0\(2),
      I2 => \class_idx[2]_i_2_n_0\,
      I3 => \^state_reg[1]_0\,
      I4 => state0,
      I5 => \^state_reg[0]_0\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => state0,
      I2 => \^state_reg[1]_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF8000"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[10]\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \state[1]_i_4_n_0\,
      I3 => \^state_reg[1]_0\,
      I4 => \^state_reg[0]_0\,
      I5 => \^state_reg[2]_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[9]\,
      I1 => \clause_cnt_reg_n_0_[8]\,
      I2 => \clause_cnt_reg_n_0_[7]\,
      I3 => \clause_cnt_reg_n_0_[6]\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \clause_cnt_reg_n_0_[3]\,
      I1 => \clause_cnt_reg_n_0_[4]\,
      I2 => \clause_cnt_reg_n_0_[5]\,
      I3 => \clause_cnt_reg_n_0_[2]\,
      I4 => \^clause_cnt_reg[0]_0\(0),
      I5 => \clause_cnt_reg_n_0_[1]\,
      O => \state[1]_i_4_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFFFF10000000"
    )
        port map (
      I0 => \class_idx[2]_i_2_n_0\,
      I1 => \sel0__0\(2),
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[1]_0\,
      I4 => state0,
      I5 => \^state_reg[2]_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEFEEEFFFEFE"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      I2 => \class_idx_reg[2]_0\,
      I3 => \cmp_idx[2]_i_2_n_0\,
      I4 => \^state_reg[2]_0\,
      I5 => sel0(2),
      O => state0
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \state[0]_i_1_n_0\,
      Q => \^state_reg[0]_0\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_0\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^p_0_in\,
      D => \state[2]_i_1_n_0\,
      Q => \^state_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal S_AXI_ARREADY0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal S_AXI_AWREADY0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal S_AXI_BVALID_i_1_n_0 : STD_LOGIC;
  signal \S_AXI_RDATA[0]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[10]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[11]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[12]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[13]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[14]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_5_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_6_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_5_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_6_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[4]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[5]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[6]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[7]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[8]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal S_AXI_RVALID_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal S_AXI_WREADY0 : STD_LOGIC;
  signal aw_addr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal aw_addr_reg_8 : STD_LOGIC;
  signal \aw_addr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal clause_is_odd : STD_LOGIC;
  signal clause_is_odd_i_1_n_0 : STD_LOGIC;
  signal done_d : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_wire : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pred_class_wire : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pred_latch : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pred_latch0 : STD_LOGIC;
  signal \score_latch_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \score_latch_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \score_latch_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \score_latch_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \scores[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \scores[0]_0\ : signal is "tm_inst ";
  signal \scores[1]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \scores[1]_2\ : signal is "tm_inst ";
  signal \scores[2]_4\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \scores[2]_4\ : signal is "tm_inst ";
  signal \scores[3]_6\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \scores[3]_6\ : signal is "tm_inst ";
  signal start_reg_i_1_n_0 : STD_LOGIC;
  signal start_reg_i_2_n_0 : STD_LOGIC;
  signal start_reg_reg_n_0 : STD_LOGIC;
  signal tm_inst_n_67 : STD_LOGIC;
  signal tm_inst_n_70 : STD_LOGIC;
  signal tm_inst_n_71 : STD_LOGIC;
  signal tm_inst_n_72 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_BVALID_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[0]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[2]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of S_AXI_WREADY_i_1 : label is "soft_lutpair14";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
S_AXI_ARREADY_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => S_AXI_ARREADY0
    );
S_AXI_ARREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_ARREADY0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
S_AXI_AWREADY_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      O => S_AXI_AWREADY0
    );
S_AXI_AWREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_AWREADY0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
S_AXI_BVALID_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_BREADY,
      I3 => \^s_axi_bvalid\,
      O => S_AXI_BVALID_i_1_n_0
    );
S_AXI_BVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_BVALID_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\S_AXI_RDATA[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARADDR(3),
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_ARADDR(1),
      O => \S_AXI_RDATA[0]_i_4_n_0\
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(10),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[10]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(10),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(10)
    );
\S_AXI_RDATA[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(10),
      I1 => \score_latch_reg[1]\(10),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[10]_i_2_n_0\
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(11),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[11]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(11),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(11)
    );
\S_AXI_RDATA[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(11),
      I1 => \score_latch_reg[1]\(11),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[11]_i_2_n_0\
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(12),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[12]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(12),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(12)
    );
\S_AXI_RDATA[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(12),
      I1 => \score_latch_reg[1]\(12),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[12]_i_2_n_0\
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(13),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[13]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(13),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(13)
    );
\S_AXI_RDATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(13),
      I1 => \score_latch_reg[1]\(13),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[13]_i_2_n_0\
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(14),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[14]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(14),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(14)
    );
\S_AXI_RDATA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(14),
      I1 => \score_latch_reg[1]\(14),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[14]_i_2_n_0\
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFB080"
    )
        port map (
      I0 => pred_latch(1),
      I1 => \S_AXI_RDATA[2]_i_2_n_0\,
      I2 => \S_AXI_RDATA[2]_i_3_n_0\,
      I3 => \score_latch_reg[3]\(1),
      I4 => \S_AXI_RDATA[1]_i_2_n_0\,
      I5 => \S_AXI_RDATA[2]_i_5_n_0\,
      O => p_1_in(1)
    );
\S_AXI_RDATA[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E6C4A280"
    )
        port map (
      I0 => \S_AXI_RDATA[2]_i_6_n_0\,
      I1 => \S_AXI_RDATA[2]_i_2_n_0\,
      I2 => \score_latch_reg[2]\(1),
      I3 => \score_latch_reg[0]\(1),
      I4 => \score_latch_reg[1]\(1),
      I5 => \S_AXI_RDATA[31]_i_6_n_0\,
      O => \S_AXI_RDATA[1]_i_2_n_0\
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFB080"
    )
        port map (
      I0 => pred_latch(2),
      I1 => \S_AXI_RDATA[2]_i_2_n_0\,
      I2 => \S_AXI_RDATA[2]_i_3_n_0\,
      I3 => \score_latch_reg[3]\(2),
      I4 => \S_AXI_RDATA[2]_i_4_n_0\,
      I5 => \S_AXI_RDATA[2]_i_5_n_0\,
      O => p_1_in(2)
    );
\S_AXI_RDATA[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      O => \S_AXI_RDATA[2]_i_2_n_0\
    );
\S_AXI_RDATA[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => S_AXI_ARADDR(4),
      I1 => S_AXI_ARADDR(2),
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[2]_i_3_n_0\
    );
\S_AXI_RDATA[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E6C4A280"
    )
        port map (
      I0 => \S_AXI_RDATA[2]_i_6_n_0\,
      I1 => \S_AXI_RDATA[2]_i_2_n_0\,
      I2 => \score_latch_reg[2]\(2),
      I3 => \score_latch_reg[0]\(2),
      I4 => \score_latch_reg[1]\(2),
      I5 => \S_AXI_RDATA[31]_i_6_n_0\,
      O => \S_AXI_RDATA[2]_i_4_n_0\
    );
\S_AXI_RDATA[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => S_AXI_ARADDR(6),
      I1 => S_AXI_ARADDR(5),
      O => \S_AXI_RDATA[2]_i_5_n_0\
    );
\S_AXI_RDATA[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARADDR(1),
      I2 => S_AXI_ARADDR(2),
      O => \S_AXI_RDATA[2]_i_6_n_0\
    );
\S_AXI_RDATA[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(15),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[31]_i_3_n_0\,
      I3 => \score_latch_reg[2]\(15),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(31)
    );
\S_AXI_RDATA[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(4),
      I5 => \S_AXI_RDATA[2]_i_5_n_0\,
      O => \S_AXI_RDATA[31]_i_2_n_0\
    );
\S_AXI_RDATA[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(15),
      I1 => \score_latch_reg[1]\(15),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[31]_i_3_n_0\
    );
\S_AXI_RDATA[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => S_AXI_ARADDR(2),
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[31]_i_4_n_0\
    );
\S_AXI_RDATA[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => S_AXI_ARADDR(5),
      I1 => S_AXI_ARADDR(6),
      I2 => \S_AXI_RDATA[31]_i_6_n_0\,
      O => \S_AXI_RDATA[31]_i_5_n_0\
    );
\S_AXI_RDATA[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA9"
    )
        port map (
      I0 => S_AXI_ARADDR(4),
      I1 => S_AXI_ARADDR(2),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(0),
      I4 => S_AXI_ARADDR(1),
      O => \S_AXI_RDATA[31]_i_6_n_0\
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(3),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[3]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(3),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(3)
    );
\S_AXI_RDATA[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(3),
      I1 => \score_latch_reg[1]\(3),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[3]_i_2_n_0\
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(4),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[4]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(4),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(4)
    );
\S_AXI_RDATA[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(4),
      I1 => \score_latch_reg[1]\(4),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[4]_i_2_n_0\
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(5),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[5]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(5),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(5)
    );
\S_AXI_RDATA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(5),
      I1 => \score_latch_reg[1]\(5),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[5]_i_2_n_0\
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(6),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[6]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(6),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(6)
    );
\S_AXI_RDATA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(6),
      I1 => \score_latch_reg[1]\(6),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[6]_i_2_n_0\
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(7),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[7]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(7),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(7)
    );
\S_AXI_RDATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(7),
      I1 => \score_latch_reg[1]\(7),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[7]_i_2_n_0\
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(8),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[8]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(8),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(8)
    );
\S_AXI_RDATA[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(8),
      I1 => \score_latch_reg[1]\(8),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[8]_i_2_n_0\
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \score_latch_reg[3]\(9),
      I1 => \S_AXI_RDATA[31]_i_2_n_0\,
      I2 => \S_AXI_RDATA[9]_i_2_n_0\,
      I3 => \score_latch_reg[2]\(9),
      I4 => \S_AXI_RDATA[31]_i_4_n_0\,
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_1_in(9)
    );
\S_AXI_RDATA[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C0A0"
    )
        port map (
      I0 => \score_latch_reg[0]\(9),
      I1 => \score_latch_reg[1]\(9),
      I2 => S_AXI_ARADDR(3),
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARADDR(1),
      I5 => S_AXI_ARADDR(0),
      O => \S_AXI_RDATA[9]_i_2_n_0\
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(0),
      Q => S_AXI_RDATA(0),
      R => p_0_in
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(10),
      Q => S_AXI_RDATA(10),
      R => p_0_in
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(11),
      Q => S_AXI_RDATA(11),
      R => p_0_in
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(12),
      Q => S_AXI_RDATA(12),
      R => p_0_in
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(13),
      Q => S_AXI_RDATA(13),
      R => p_0_in
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(14),
      Q => S_AXI_RDATA(14),
      R => p_0_in
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(1),
      Q => S_AXI_RDATA(1),
      R => p_0_in
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(2),
      Q => S_AXI_RDATA(2),
      R => p_0_in
    );
\S_AXI_RDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(31),
      Q => S_AXI_RDATA(15),
      R => p_0_in
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(3),
      Q => S_AXI_RDATA(3),
      R => p_0_in
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(4),
      Q => S_AXI_RDATA(4),
      R => p_0_in
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(5),
      Q => S_AXI_RDATA(5),
      R => p_0_in
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(6),
      Q => S_AXI_RDATA(6),
      R => p_0_in
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(7),
      Q => S_AXI_RDATA(7),
      R => p_0_in
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(8),
      Q => S_AXI_RDATA(8),
      R => p_0_in
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARREADY0,
      D => p_1_in(9),
      Q => S_AXI_RDATA(9),
      R => p_0_in
    );
S_AXI_RVALID_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => S_AXI_RVALID_i_1_n_0
    );
S_AXI_RVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_RVALID_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
S_AXI_WREADY_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_wready\,
      O => S_AXI_WREADY0
    );
S_AXI_WREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_WREADY0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\aw_addr_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      O => aw_addr_reg_8
    );
\aw_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(0),
      Q => aw_addr_reg(0),
      R => '0'
    );
\aw_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(1),
      Q => aw_addr_reg(1),
      R => '0'
    );
\aw_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(2),
      Q => aw_addr_reg(2),
      R => '0'
    );
\aw_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(3),
      Q => aw_addr_reg(3),
      R => '0'
    );
\aw_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(4),
      Q => aw_addr_reg(4),
      R => '0'
    );
\aw_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(5),
      Q => aw_addr_reg(5),
      R => '0'
    );
\aw_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => aw_addr_reg_8,
      D => S_AXI_AWADDR(6),
      Q => \aw_addr_reg_reg_n_0_[6]\,
      R => '0'
    );
clause_is_odd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => tm_inst_n_72,
      I1 => tm_inst_n_67,
      I2 => tm_inst_n_70,
      I3 => tm_inst_n_71,
      I4 => clause_is_odd,
      O => clause_is_odd_i_1_n_0
    );
done_d_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => done_wire,
      Q => done_d,
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => tm_inst_n_67,
      I1 => tm_inst_n_70,
      I2 => tm_inst_n_71,
      I3 => done_wire,
      O => done_i_1_n_0
    );
\pred_latch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => pred_class_wire(0),
      Q => pred_latch(0),
      R => '0'
    );
\pred_latch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => pred_class_wire(1),
      Q => pred_latch(1),
      R => '0'
    );
\pred_latch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => pred_class_wire(2),
      Q => pred_latch(2),
      R => '0'
    );
\score_latch_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(0),
      Q => \score_latch_reg[0]\(0),
      R => '0'
    );
\score_latch_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(10),
      Q => \score_latch_reg[0]\(10),
      R => '0'
    );
\score_latch_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(11),
      Q => \score_latch_reg[0]\(11),
      R => '0'
    );
\score_latch_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(12),
      Q => \score_latch_reg[0]\(12),
      R => '0'
    );
\score_latch_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(13),
      Q => \score_latch_reg[0]\(13),
      R => '0'
    );
\score_latch_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(14),
      Q => \score_latch_reg[0]\(14),
      R => '0'
    );
\score_latch_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(15),
      Q => \score_latch_reg[0]\(15),
      R => '0'
    );
\score_latch_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(1),
      Q => \score_latch_reg[0]\(1),
      R => '0'
    );
\score_latch_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(2),
      Q => \score_latch_reg[0]\(2),
      R => '0'
    );
\score_latch_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(3),
      Q => \score_latch_reg[0]\(3),
      R => '0'
    );
\score_latch_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(4),
      Q => \score_latch_reg[0]\(4),
      R => '0'
    );
\score_latch_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(5),
      Q => \score_latch_reg[0]\(5),
      R => '0'
    );
\score_latch_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(6),
      Q => \score_latch_reg[0]\(6),
      R => '0'
    );
\score_latch_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(7),
      Q => \score_latch_reg[0]\(7),
      R => '0'
    );
\score_latch_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(8),
      Q => \score_latch_reg[0]\(8),
      R => '0'
    );
\score_latch_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[0]_0\(9),
      Q => \score_latch_reg[0]\(9),
      R => '0'
    );
\score_latch_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(0),
      Q => \score_latch_reg[1]\(0),
      R => '0'
    );
\score_latch_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(10),
      Q => \score_latch_reg[1]\(10),
      R => '0'
    );
\score_latch_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(11),
      Q => \score_latch_reg[1]\(11),
      R => '0'
    );
\score_latch_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(12),
      Q => \score_latch_reg[1]\(12),
      R => '0'
    );
\score_latch_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(13),
      Q => \score_latch_reg[1]\(13),
      R => '0'
    );
\score_latch_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(14),
      Q => \score_latch_reg[1]\(14),
      R => '0'
    );
\score_latch_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(15),
      Q => \score_latch_reg[1]\(15),
      R => '0'
    );
\score_latch_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(1),
      Q => \score_latch_reg[1]\(1),
      R => '0'
    );
\score_latch_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(2),
      Q => \score_latch_reg[1]\(2),
      R => '0'
    );
\score_latch_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(3),
      Q => \score_latch_reg[1]\(3),
      R => '0'
    );
\score_latch_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(4),
      Q => \score_latch_reg[1]\(4),
      R => '0'
    );
\score_latch_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(5),
      Q => \score_latch_reg[1]\(5),
      R => '0'
    );
\score_latch_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(6),
      Q => \score_latch_reg[1]\(6),
      R => '0'
    );
\score_latch_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(7),
      Q => \score_latch_reg[1]\(7),
      R => '0'
    );
\score_latch_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(8),
      Q => \score_latch_reg[1]\(8),
      R => '0'
    );
\score_latch_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[1]_2\(9),
      Q => \score_latch_reg[1]\(9),
      R => '0'
    );
\score_latch_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(0),
      Q => \score_latch_reg[2]\(0),
      R => '0'
    );
\score_latch_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(10),
      Q => \score_latch_reg[2]\(10),
      R => '0'
    );
\score_latch_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(11),
      Q => \score_latch_reg[2]\(11),
      R => '0'
    );
\score_latch_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(12),
      Q => \score_latch_reg[2]\(12),
      R => '0'
    );
\score_latch_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(13),
      Q => \score_latch_reg[2]\(13),
      R => '0'
    );
\score_latch_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(14),
      Q => \score_latch_reg[2]\(14),
      R => '0'
    );
\score_latch_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(15),
      Q => \score_latch_reg[2]\(15),
      R => '0'
    );
\score_latch_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(1),
      Q => \score_latch_reg[2]\(1),
      R => '0'
    );
\score_latch_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(2),
      Q => \score_latch_reg[2]\(2),
      R => '0'
    );
\score_latch_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(3),
      Q => \score_latch_reg[2]\(3),
      R => '0'
    );
\score_latch_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(4),
      Q => \score_latch_reg[2]\(4),
      R => '0'
    );
\score_latch_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(5),
      Q => \score_latch_reg[2]\(5),
      R => '0'
    );
\score_latch_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(6),
      Q => \score_latch_reg[2]\(6),
      R => '0'
    );
\score_latch_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(7),
      Q => \score_latch_reg[2]\(7),
      R => '0'
    );
\score_latch_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(8),
      Q => \score_latch_reg[2]\(8),
      R => '0'
    );
\score_latch_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[2]_4\(9),
      Q => \score_latch_reg[2]\(9),
      R => '0'
    );
\score_latch_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(0),
      Q => \score_latch_reg[3]\(0),
      R => '0'
    );
\score_latch_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(10),
      Q => \score_latch_reg[3]\(10),
      R => '0'
    );
\score_latch_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(11),
      Q => \score_latch_reg[3]\(11),
      R => '0'
    );
\score_latch_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(12),
      Q => \score_latch_reg[3]\(12),
      R => '0'
    );
\score_latch_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(13),
      Q => \score_latch_reg[3]\(13),
      R => '0'
    );
\score_latch_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(14),
      Q => \score_latch_reg[3]\(14),
      R => '0'
    );
\score_latch_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(15),
      Q => \score_latch_reg[3]\(15),
      R => '0'
    );
\score_latch_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(1),
      Q => \score_latch_reg[3]\(1),
      R => '0'
    );
\score_latch_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(2),
      Q => \score_latch_reg[3]\(2),
      R => '0'
    );
\score_latch_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(3),
      Q => \score_latch_reg[3]\(3),
      R => '0'
    );
\score_latch_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(4),
      Q => \score_latch_reg[3]\(4),
      R => '0'
    );
\score_latch_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(5),
      Q => \score_latch_reg[3]\(5),
      R => '0'
    );
\score_latch_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(6),
      Q => \score_latch_reg[3]\(6),
      R => '0'
    );
\score_latch_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(7),
      Q => \score_latch_reg[3]\(7),
      R => '0'
    );
\score_latch_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(8),
      Q => \score_latch_reg[3]\(8),
      R => '0'
    );
\score_latch_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => pred_latch0,
      D => \scores[3]_6\(9),
      Q => \score_latch_reg[3]\(9),
      R => '0'
    );
start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \aw_addr_reg_reg_n_0_[6]\,
      I2 => start_reg_i_2_n_0,
      I3 => aw_addr_reg(3),
      I4 => S_AXI_WVALID,
      I5 => S_AXI_ARESETN,
      O => start_reg_i_1_n_0
    );
start_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => aw_addr_reg(2),
      I1 => S_AXI_WDATA(0),
      I2 => aw_addr_reg(1),
      I3 => aw_addr_reg(0),
      I4 => aw_addr_reg(5),
      I5 => aw_addr_reg(4),
      O => start_reg_i_2_n_0
    );
start_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => start_reg_i_1_n_0,
      Q => start_reg_reg_n_0,
      R => '0'
    );
tm_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_top
     port map (
      D(0) => p_1_in(0),
      E(0) => pred_latch0,
      Q(0) => pred_latch(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      \S_AXI_RDATA[0]_i_2_0\(0) => \score_latch_reg[1]\(0),
      \S_AXI_RDATA_reg[0]\ => \S_AXI_RDATA[2]_i_2_n_0\,
      \S_AXI_RDATA_reg[0]_0\ => \S_AXI_RDATA[2]_i_3_n_0\,
      \S_AXI_RDATA_reg[0]_1\(0) => \score_latch_reg[3]\(0),
      \S_AXI_RDATA_reg[0]_2\ => \S_AXI_RDATA[2]_i_5_n_0\,
      \S_AXI_RDATA_reg[0]_3\(0) => \score_latch_reg[2]\(0),
      \S_AXI_RDATA_reg[0]_4\ => \S_AXI_RDATA[31]_i_4_n_0\,
      \S_AXI_RDATA_reg[0]_5\(0) => \score_latch_reg[0]\(0),
      \S_AXI_RDATA_reg[0]_6\ => \S_AXI_RDATA[0]_i_4_n_0\,
      \S_AXI_RDATA_reg[0]_7\ => \S_AXI_RDATA[31]_i_6_n_0\,
      \class_idx_reg[2]_0\ => start_reg_reg_n_0,
      \clause_cnt_reg[0]_0\(0) => tm_inst_n_72,
      clause_is_odd => clause_is_odd,
      clause_is_odd_reg_0 => clause_is_odd_i_1_n_0,
      done_d => done_d,
      done_reg_0 => done_i_1_n_0,
      done_wire => done_wire,
      \out\(15 downto 0) => \scores[2]_4\(15 downto 0),
      p_0_in => p_0_in,
      \pred_class_reg[2]_0\(2 downto 0) => pred_class_wire(2 downto 0),
      \scores[0]\(15 downto 0) => \scores[0]_0\(15 downto 0),
      \scores[1]\(15 downto 0) => \scores[1]_2\(15 downto 0),
      \scores[3]\(15 downto 0) => \scores[3]_6\(15 downto 0),
      \state_reg[0]_0\ => tm_inst_n_70,
      \state_reg[1]_0\ => tm_inst_n_71,
      \state_reg[2]_0\ => tm_inst_n_67
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_tm_axi_wrapper_0_0,tm_axi_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tm_axi_wrapper,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(30) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(29) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(28) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(27) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(26) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(25) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(24) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(23) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(22) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(21) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(20) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(19) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(18) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(17) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(16) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(15) <= \^s_axi_rdata\(30);
  S_AXI_RDATA(14 downto 0) <= \^s_axi_rdata\(14 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tm_axi_wrapper
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(6 downto 0) => S_AXI_ARADDR(6 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(6 downto 0) => S_AXI_AWADDR(6 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(15) => \^s_axi_rdata\(30),
      S_AXI_RDATA(14 downto 0) => \^s_axi_rdata\(14 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(0) => S_AXI_WDATA(0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
