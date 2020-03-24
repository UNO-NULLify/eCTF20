// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Feb 16 18:34:11 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s03_mmu_0_sim_netlist.v
// Design      : system_s03_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave
   (err_rvalid,
    err_arready,
    r_state0,
    s_axi_rvalid,
    m_valid_i_reg,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ,
    aclk,
    \aresetn_d_reg[1] ,
    s_axi_rready,
    \gen_read.ar_cnt_reg[0] ,
    \gen_read.r_state_reg[1] ,
    \gen_read.r_state_reg[0] ,
    m_valid_i_reg_0,
    m_axi_rvalid,
    Q,
    m_axi_arready,
    \aresetn_d_reg[1]_0 );
  output err_rvalid;
  output err_arready;
  output r_state0;
  output s_axi_rvalid;
  output m_valid_i_reg;
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  input aclk;
  input \aresetn_d_reg[1] ;
  input s_axi_rready;
  input \gen_read.ar_cnt_reg[0] ;
  input \gen_read.r_state_reg[1] ;
  input \gen_read.r_state_reg[0] ;
  input m_valid_i_reg_0;
  input m_axi_rvalid;
  input [0:0]Q;
  input m_axi_arready;
  input \aresetn_d_reg[1]_0 ;

  wire [0:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  wire \gen_read.ar_cnt_reg[0] ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[1] ;
  wire m_axi_arready;
  wire m_axi_rvalid;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire r_state0;
  wire s_axi_rready;
  wire s_axi_rvalid;

  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1] ),
        .Q(err_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000EAAA00000000)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_1 
       (.I0(err_rvalid),
        .I1(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ),
        .I2(m_valid_i_reg_0),
        .I3(err_arready),
        .I4(s_axi_rready),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_2 
       (.I0(\gen_read.r_state_reg[1] ),
        .I1(\gen_read.r_state_reg[0] ),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ),
        .Q(err_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88F0FFFF88F00000)) 
    \gen_read.r_state[1]_i_2 
       (.I0(err_rvalid),
        .I1(s_axi_rready),
        .I2(\gen_read.ar_cnt_reg[0] ),
        .I3(\gen_read.r_state_reg[1] ),
        .I4(\gen_read.r_state_reg[0] ),
        .I5(m_valid_i_reg_0),
        .O(r_state0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF07FFF7F)) 
    m_valid_i_i_2
       (.I0(err_arready),
        .I1(\gen_read.r_state_reg[1] ),
        .I2(\gen_read.r_state_reg[0] ),
        .I3(Q),
        .I4(m_axi_arready),
        .O(m_valid_i_reg));
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_rvalid_INST_0
       (.I0(err_rvalid),
        .I1(\gen_read.r_state_reg[1] ),
        .I2(\gen_read.r_state_reg[0] ),
        .I3(m_axi_rvalid),
        .O(s_axi_rvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top
   (Q,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_rresp,
    m_axi_arvalid,
    s_axi_arready,
    s_axi_arvalid,
    D,
    aclk,
    s_axi_rready,
    m_axi_rdata,
    m_axi_rvalid,
    m_axi_rresp,
    m_axi_arready,
    aresetn);
  output [34:0]Q;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output [1:0]s_axi_rresp;
  output m_axi_arvalid;
  output s_axi_arready;
  input s_axi_arvalid;
  input [34:0]D;
  input aclk;
  input s_axi_rready;
  input [31:0]m_axi_rdata;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input m_axi_arready;
  input aresetn;

  wire [34:0]D;
  wire [34:0]Q;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_4;
  wire decerr_slave_inst_n_5;
  wire err_arready;
  wire err_rvalid;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[5]_i_10_n_0 ;
  wire \gen_read.ar_cnt[5]_i_11_n_0 ;
  wire \gen_read.ar_cnt[5]_i_12_n_0 ;
  wire \gen_read.ar_cnt[5]_i_13_n_0 ;
  wire \gen_read.ar_cnt[5]_i_14_n_0 ;
  wire \gen_read.ar_cnt[5]_i_15_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_8_n_0 ;
  wire \gen_read.ar_cnt[5]_i_9_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg__0 ;
  wire \gen_read.r_state[0]_i_1_n_0 ;
  wire \gen_read.r_state[1]_i_1_n_0 ;
  wire \gen_read.r_state[1]_i_3_n_0 ;
  wire \gen_read.r_state_reg_n_0_[0] ;
  wire \gen_read.r_state_reg_n_0_[1] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [32:32]mr_axi_araddr;
  wire mr_axi_arvalid;
  wire r_state0;
  wire register_slice_inst_n_1;
  wire register_slice_inst_n_2;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_44;
  wire register_slice_inst_n_46;
  wire register_slice_inst_n_47;
  wire register_slice_inst_n_48;
  wire register_slice_inst_n_49;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_50;
  wire register_slice_inst_n_51;
  wire register_slice_inst_n_52;
  wire register_slice_inst_n_53;
  wire register_slice_inst_n_54;
  wire register_slice_inst_n_56;
  wire register_slice_inst_n_6;
  wire register_slice_inst_n_7;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave decerr_slave_inst
       (.Q(mr_axi_araddr),
        .aclk(aclk),
        .\aresetn_d_reg[1] (register_slice_inst_n_7),
        .\aresetn_d_reg[1]_0 (register_slice_inst_n_1),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 (decerr_slave_inst_n_5),
        .\gen_read.ar_cnt_reg[0] (\gen_read.r_state[1]_i_3_n_0 ),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg_n_0_[0] ),
        .\gen_read.r_state_reg[1] (\gen_read.r_state_reg_n_0_[1] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_valid_i_reg(decerr_slave_inst_n_4),
        .m_valid_i_reg_0(register_slice_inst_n_44),
        .r_state0(r_state0),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \gen_read.ar_cnt[5]_i_10 
       (.I0(register_slice_inst_n_48),
        .I1(\gen_read.ar_cnt[5]_i_13_n_0 ),
        .I2(register_slice_inst_n_53),
        .I3(D[16]),
        .I4(D[17]),
        .I5(register_slice_inst_n_47),
        .O(\gen_read.ar_cnt[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_read.ar_cnt[5]_i_11 
       (.I0(\gen_read.ar_cnt_reg__0 [1]),
        .I1(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_read.ar_cnt[5]_i_12 
       (.I0(\gen_read.ar_cnt_reg__0 [1]),
        .I1(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \gen_read.ar_cnt[5]_i_13 
       (.I0(D[19]),
        .I1(D[18]),
        .I2(D[20]),
        .I3(D[31]),
        .O(\gen_read.ar_cnt[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \gen_read.ar_cnt[5]_i_14 
       (.I0(D[28]),
        .I1(D[22]),
        .I2(D[24]),
        .O(\gen_read.ar_cnt[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \gen_read.ar_cnt[5]_i_15 
       (.I0(D[21]),
        .I1(D[20]),
        .I2(D[17]),
        .O(\gen_read.ar_cnt[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(\gen_read.r_state[1]_i_3_n_0 ),
        .I1(m_axi_rvalid),
        .I2(s_axi_rready),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020A0A)) 
    \gen_read.ar_cnt[5]_i_8 
       (.I0(register_slice_inst_n_47),
        .I1(\gen_read.ar_cnt[5]_i_13_n_0 ),
        .I2(register_slice_inst_n_53),
        .I3(register_slice_inst_n_52),
        .I4(register_slice_inst_n_51),
        .O(\gen_read.ar_cnt[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFFDFFF)) 
    \gen_read.ar_cnt[5]_i_9 
       (.I0(\gen_read.ar_cnt[5]_i_14_n_0 ),
        .I1(register_slice_inst_n_54),
        .I2(\gen_read.ar_cnt[5]_i_15_n_0 ),
        .I3(register_slice_inst_n_50),
        .I4(register_slice_inst_n_49),
        .I5(D[29]),
        .O(\gen_read.ar_cnt[5]_i_9_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_46),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg__0 [0]),
        .R(register_slice_inst_n_56));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_46),
        .D(register_slice_inst_n_6),
        .Q(\gen_read.ar_cnt_reg__0 [1]),
        .R(register_slice_inst_n_56));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_46),
        .D(register_slice_inst_n_5),
        .Q(\gen_read.ar_cnt_reg__0 [2]),
        .R(register_slice_inst_n_56));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_46),
        .D(register_slice_inst_n_4),
        .Q(\gen_read.ar_cnt_reg__0 [3]),
        .R(register_slice_inst_n_56));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_46),
        .D(register_slice_inst_n_3),
        .Q(\gen_read.ar_cnt_reg__0 [4]),
        .R(register_slice_inst_n_56));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_46),
        .D(register_slice_inst_n_2),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .R(register_slice_inst_n_56));
  LUT6 #(
    .INIT(64'h6E6EEE6E00000000)) 
    \gen_read.r_state[0]_i_1 
       (.I0(\gen_read.r_state_reg_n_0_[0] ),
        .I1(r_state0),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .I3(mr_axi_arvalid),
        .I4(mr_axi_araddr),
        .I5(register_slice_inst_n_1),
        .O(\gen_read.r_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h62E2626200000000)) 
    \gen_read.r_state[1]_i_1 
       (.I0(\gen_read.r_state_reg_n_0_[1] ),
        .I1(r_state0),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .I3(mr_axi_araddr),
        .I4(mr_axi_arvalid),
        .I5(register_slice_inst_n_1),
        .O(\gen_read.r_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_read.r_state[1]_i_3 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .I1(\gen_read.ar_cnt_reg__0 [1]),
        .I2(\gen_read.ar_cnt_reg__0 [4]),
        .I3(\gen_read.ar_cnt_reg__0 [5]),
        .I4(\gen_read.ar_cnt_reg__0 [2]),
        .I5(\gen_read.ar_cnt_reg__0 [3]),
        .O(\gen_read.r_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_read.r_state[0]_i_1_n_0 ),
        .Q(\gen_read.r_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_read.r_state[1]_i_1_n_0 ),
        .Q(\gen_read.r_state_reg_n_0_[1] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_2,register_slice_inst_n_3,register_slice_inst_n_4,register_slice_inst_n_5,register_slice_inst_n_6}),
        .E(register_slice_inst_n_46),
        .Q(\gen_read.ar_cnt_reg__0 ),
        .SR(register_slice_inst_n_56),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (register_slice_inst_n_7),
        .\gen_axilite.gen_read.s_axi_arready_i_reg_0 (decerr_slave_inst_n_4),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg (register_slice_inst_n_44),
        .\gen_read.ar_cnt_reg[0] (register_slice_inst_n_1),
        .\gen_read.ar_cnt_reg[0]_0 (register_slice_inst_n_47),
        .\gen_read.ar_cnt_reg[0]_1 (register_slice_inst_n_48),
        .\gen_read.ar_cnt_reg[0]_2 (register_slice_inst_n_49),
        .\gen_read.ar_cnt_reg[0]_3 (register_slice_inst_n_50),
        .\gen_read.ar_cnt_reg[0]_4 (register_slice_inst_n_51),
        .\gen_read.ar_cnt_reg[0]_5 (register_slice_inst_n_52),
        .\gen_read.ar_cnt_reg[0]_6 (register_slice_inst_n_53),
        .\gen_read.ar_cnt_reg[0]_7 (register_slice_inst_n_54),
        .\gen_read.ar_cnt_reg[0]_8 (\gen_read.ar_cnt[5]_i_4_n_0 ),
        .\gen_read.ar_cnt_reg[1] (\gen_read.ar_cnt[5]_i_11_n_0 ),
        .\gen_read.ar_cnt_reg[1]_0 (\gen_read.ar_cnt[5]_i_12_n_0 ),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg_n_0_[0] ),
        .\gen_read.r_state_reg[1] (decerr_slave_inst_n_5),
        .\m_axi_arprot[2] ({Q[34:32],mr_axi_araddr,Q[31:0]}),
        .m_axi_arvalid(m_axi_arvalid),
        .mr_axi_arvalid(mr_axi_arvalid),
        .\s_axi_araddr[19] (\gen_read.ar_cnt[5]_i_8_n_0 ),
        .\s_axi_araddr[19]_0 (\gen_read.ar_cnt[5]_i_9_n_0 ),
        .\s_axi_araddr[27] (\gen_read.ar_cnt[5]_i_10_n_0 ),
        .\s_axi_arprot[2] (D),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rresp[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice
   (mr_axi_arvalid,
    \gen_read.ar_cnt_reg[0] ,
    D,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    \m_axi_arprot[2] ,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg ,
    m_axi_arvalid,
    E,
    \gen_read.ar_cnt_reg[0]_0 ,
    \gen_read.ar_cnt_reg[0]_1 ,
    \gen_read.ar_cnt_reg[0]_2 ,
    \gen_read.ar_cnt_reg[0]_3 ,
    \gen_read.ar_cnt_reg[0]_4 ,
    \gen_read.ar_cnt_reg[0]_5 ,
    \gen_read.ar_cnt_reg[0]_6 ,
    \gen_read.ar_cnt_reg[0]_7 ,
    s_axi_arready,
    SR,
    aclk,
    aresetn,
    \gen_axilite.gen_read.s_axi_arready_i_reg_0 ,
    s_axi_arvalid,
    Q,
    err_arready,
    \gen_read.r_state_reg[1] ,
    err_rvalid,
    \gen_read.r_state_reg[0] ,
    \gen_read.ar_cnt_reg[0]_8 ,
    \s_axi_araddr[19] ,
    \s_axi_araddr[19]_0 ,
    \s_axi_araddr[27] ,
    \gen_read.ar_cnt_reg[1] ,
    \gen_read.ar_cnt_reg[1]_0 ,
    \s_axi_arprot[2] );
  output mr_axi_arvalid;
  output \gen_read.ar_cnt_reg[0] ;
  output [4:0]D;
  output \gen_axilite.gen_read.s_axi_arready_i_reg ;
  output [35:0]\m_axi_arprot[2] ;
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  output m_axi_arvalid;
  output [0:0]E;
  output \gen_read.ar_cnt_reg[0]_0 ;
  output \gen_read.ar_cnt_reg[0]_1 ;
  output \gen_read.ar_cnt_reg[0]_2 ;
  output \gen_read.ar_cnt_reg[0]_3 ;
  output \gen_read.ar_cnt_reg[0]_4 ;
  output \gen_read.ar_cnt_reg[0]_5 ;
  output \gen_read.ar_cnt_reg[0]_6 ;
  output \gen_read.ar_cnt_reg[0]_7 ;
  output s_axi_arready;
  output [0:0]SR;
  input aclk;
  input aresetn;
  input \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  input s_axi_arvalid;
  input [5:0]Q;
  input err_arready;
  input \gen_read.r_state_reg[1] ;
  input err_rvalid;
  input \gen_read.r_state_reg[0] ;
  input \gen_read.ar_cnt_reg[0]_8 ;
  input \s_axi_araddr[19] ;
  input \s_axi_araddr[19]_0 ;
  input \s_axi_araddr[27] ;
  input \gen_read.ar_cnt_reg[1] ;
  input \gen_read.ar_cnt_reg[1]_0 ;
  input [34:0]\s_axi_arprot[2] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  wire \gen_read.ar_cnt_reg[0] ;
  wire \gen_read.ar_cnt_reg[0]_0 ;
  wire \gen_read.ar_cnt_reg[0]_1 ;
  wire \gen_read.ar_cnt_reg[0]_2 ;
  wire \gen_read.ar_cnt_reg[0]_3 ;
  wire \gen_read.ar_cnt_reg[0]_4 ;
  wire \gen_read.ar_cnt_reg[0]_5 ;
  wire \gen_read.ar_cnt_reg[0]_6 ;
  wire \gen_read.ar_cnt_reg[0]_7 ;
  wire \gen_read.ar_cnt_reg[0]_8 ;
  wire \gen_read.ar_cnt_reg[1] ;
  wire \gen_read.ar_cnt_reg[1]_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[1] ;
  wire [35:0]\m_axi_arprot[2] ;
  wire m_axi_arvalid;
  wire mr_axi_arvalid;
  wire \s_axi_araddr[19] ;
  wire \s_axi_araddr[19]_0 ;
  wire \s_axi_araddr[27] ;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1 \ar.ar_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .\gen_axilite.gen_read.s_axi_arready_i_reg_0 (\gen_axilite.gen_read.s_axi_arready_i_reg_0 ),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg (\gen_axilite.gen_read.s_axi_rvalid_i_reg ),
        .\gen_read.ar_cnt_reg[0] (\gen_read.ar_cnt_reg[0] ),
        .\gen_read.ar_cnt_reg[0]_0 (\gen_read.ar_cnt_reg[0]_0 ),
        .\gen_read.ar_cnt_reg[0]_1 (\gen_read.ar_cnt_reg[0]_1 ),
        .\gen_read.ar_cnt_reg[0]_2 (\gen_read.ar_cnt_reg[0]_2 ),
        .\gen_read.ar_cnt_reg[0]_3 (\gen_read.ar_cnt_reg[0]_3 ),
        .\gen_read.ar_cnt_reg[0]_4 (\gen_read.ar_cnt_reg[0]_4 ),
        .\gen_read.ar_cnt_reg[0]_5 (\gen_read.ar_cnt_reg[0]_5 ),
        .\gen_read.ar_cnt_reg[0]_6 (\gen_read.ar_cnt_reg[0]_6 ),
        .\gen_read.ar_cnt_reg[0]_7 (\gen_read.ar_cnt_reg[0]_7 ),
        .\gen_read.ar_cnt_reg[0]_8 (\gen_read.ar_cnt_reg[0]_8 ),
        .\gen_read.ar_cnt_reg[1] (\gen_read.ar_cnt_reg[1] ),
        .\gen_read.ar_cnt_reg[1]_0 (\gen_read.ar_cnt_reg[1]_0 ),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg[0] ),
        .\gen_read.r_state_reg[1] (\gen_read.r_state_reg[1] ),
        .\m_axi_arprot[2] (\m_axi_arprot[2] ),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[0]_0 (mr_axi_arvalid),
        .\s_axi_araddr[19] (\s_axi_araddr[19] ),
        .\s_axi_araddr[19]_0 (\s_axi_araddr[19]_0 ),
        .\s_axi_araddr[27] (\s_axi_araddr[27] ),
        .\s_axi_arprot[2] (\s_axi_arprot[2] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1
   (\m_payload_i_reg[0]_0 ,
    \gen_read.ar_cnt_reg[0] ,
    D,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    \m_axi_arprot[2] ,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg ,
    m_axi_arvalid,
    E,
    \gen_read.ar_cnt_reg[0]_0 ,
    \gen_read.ar_cnt_reg[0]_1 ,
    \gen_read.ar_cnt_reg[0]_2 ,
    \gen_read.ar_cnt_reg[0]_3 ,
    \gen_read.ar_cnt_reg[0]_4 ,
    \gen_read.ar_cnt_reg[0]_5 ,
    \gen_read.ar_cnt_reg[0]_6 ,
    \gen_read.ar_cnt_reg[0]_7 ,
    s_axi_arready,
    SR,
    aclk,
    aresetn,
    \gen_axilite.gen_read.s_axi_arready_i_reg_0 ,
    s_axi_arvalid,
    Q,
    err_arready,
    \gen_read.r_state_reg[1] ,
    err_rvalid,
    \gen_read.r_state_reg[0] ,
    \gen_read.ar_cnt_reg[0]_8 ,
    \s_axi_araddr[19] ,
    \s_axi_araddr[19]_0 ,
    \s_axi_araddr[27] ,
    \gen_read.ar_cnt_reg[1] ,
    \gen_read.ar_cnt_reg[1]_0 ,
    \s_axi_arprot[2] );
  output \m_payload_i_reg[0]_0 ;
  output \gen_read.ar_cnt_reg[0] ;
  output [4:0]D;
  output \gen_axilite.gen_read.s_axi_arready_i_reg ;
  output [35:0]\m_axi_arprot[2] ;
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  output m_axi_arvalid;
  output [0:0]E;
  output \gen_read.ar_cnt_reg[0]_0 ;
  output \gen_read.ar_cnt_reg[0]_1 ;
  output \gen_read.ar_cnt_reg[0]_2 ;
  output \gen_read.ar_cnt_reg[0]_3 ;
  output \gen_read.ar_cnt_reg[0]_4 ;
  output \gen_read.ar_cnt_reg[0]_5 ;
  output \gen_read.ar_cnt_reg[0]_6 ;
  output \gen_read.ar_cnt_reg[0]_7 ;
  output s_axi_arready;
  output [0:0]SR;
  input aclk;
  input aresetn;
  input \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  input s_axi_arvalid;
  input [5:0]Q;
  input err_arready;
  input \gen_read.r_state_reg[1] ;
  input err_rvalid;
  input \gen_read.r_state_reg[0] ;
  input \gen_read.ar_cnt_reg[0]_8 ;
  input \s_axi_araddr[19] ;
  input \s_axi_araddr[19]_0 ;
  input \s_axi_araddr[27] ;
  input \gen_read.ar_cnt_reg[1] ;
  input \gen_read.ar_cnt_reg[1]_0 ;
  input [34:0]\s_axi_arprot[2] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d[1]_i_1_n_0 ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  wire \gen_read.ar_cnt[4]_i_2_n_0 ;
  wire \gen_read.ar_cnt[5]_i_5_n_0 ;
  wire \gen_read.ar_cnt[5]_i_6_n_0 ;
  wire \gen_read.ar_cnt[5]_i_7_n_0 ;
  wire \gen_read.ar_cnt_reg[0] ;
  wire \gen_read.ar_cnt_reg[0]_0 ;
  wire \gen_read.ar_cnt_reg[0]_1 ;
  wire \gen_read.ar_cnt_reg[0]_2 ;
  wire \gen_read.ar_cnt_reg[0]_3 ;
  wire \gen_read.ar_cnt_reg[0]_4 ;
  wire \gen_read.ar_cnt_reg[0]_5 ;
  wire \gen_read.ar_cnt_reg[0]_6 ;
  wire \gen_read.ar_cnt_reg[0]_7 ;
  wire \gen_read.ar_cnt_reg[0]_8 ;
  wire \gen_read.ar_cnt_reg[1] ;
  wire \gen_read.ar_cnt_reg[1]_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[1] ;
  wire [35:0]\m_axi_arprot[2] ;
  wire m_axi_arvalid;
  wire \m_payload_i[31]_i_1_n_0 ;
  wire \m_payload_i[32]_i_2_n_0 ;
  wire \m_payload_i[32]_i_4_n_0 ;
  wire \m_payload_i[32]_i_5_n_0 ;
  wire \m_payload_i[32]_i_6_n_0 ;
  wire \m_payload_i[32]_i_7_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire m_valid_i_i_1_n_0;
  wire r_match;
  wire \s_axi_araddr[19] ;
  wire \s_axi_araddr[19]_0 ;
  wire \s_axi_araddr[27] ;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_ready_i_i_1_n_0;
  wire sr_axi_arready;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(aresetn),
        .O(\aresetn_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d[1]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888A2AAAAAA)) 
    \gen_axilite.gen_read.s_axi_arready_i_i_1 
       (.I0(\gen_read.ar_cnt_reg[0] ),
        .I1(err_arready),
        .I2(\m_axi_arprot[2] [32]),
        .I3(\m_payload_i_reg[0]_0 ),
        .I4(\gen_read.r_state_reg[1] ),
        .I5(err_rvalid),
        .O(\gen_axilite.gen_read.s_axi_arready_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_3 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(\m_axi_arprot[2] [32]),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_reg ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000045554545)) 
    \gen_read.ar_cnt[4]_i_2 
       (.I0(\gen_read.ar_cnt_reg[0]_8 ),
        .I1(\s_axi_araddr[27] ),
        .I2(\s_axi_araddr[19]_0 ),
        .I3(\m_payload_i[32]_i_7_n_0 ),
        .I4(\gen_read.ar_cnt_reg[0]_0 ),
        .I5(\gen_read.ar_cnt[5]_i_7_n_0 ),
        .O(\gen_read.ar_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(\gen_read.ar_cnt_reg[0] ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(sr_axi_arready),
        .I1(Q[5]),
        .I2(s_axi_arvalid),
        .I3(\m_payload_i[32]_i_2_n_0 ),
        .I4(\gen_read.ar_cnt_reg[0]_8 ),
        .O(E));
  LUT6 #(
    .INIT(64'h6AAAAAA96AAAAAAA)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\gen_read.ar_cnt[5]_i_5_n_0 ),
        .I5(\gen_read.ar_cnt[5]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000005545)) 
    \gen_read.ar_cnt[5]_i_5 
       (.I0(\gen_read.ar_cnt[5]_i_7_n_0 ),
        .I1(\s_axi_araddr[19] ),
        .I2(\s_axi_araddr[19]_0 ),
        .I3(\s_axi_araddr[27] ),
        .I4(\gen_read.ar_cnt_reg[0]_8 ),
        .I5(\gen_read.ar_cnt_reg[1] ),
        .O(\gen_read.ar_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888A88)) 
    \gen_read.ar_cnt[5]_i_6 
       (.I0(\gen_read.ar_cnt_reg[1]_0 ),
        .I1(\gen_read.ar_cnt[5]_i_7_n_0 ),
        .I2(\s_axi_araddr[19] ),
        .I3(\s_axi_araddr[19]_0 ),
        .I4(\s_axi_araddr[27] ),
        .I5(\gen_read.ar_cnt_reg[0]_8 ),
        .O(\gen_read.ar_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_read.ar_cnt[5]_i_7 
       (.I0(s_axi_arvalid),
        .I1(Q[5]),
        .I2(sr_axi_arready),
        .O(\gen_read.ar_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_arvalid_INST_0
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(\m_axi_arprot[2] [32]),
        .I2(\gen_read.r_state_reg[0] ),
        .O(m_axi_arvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1 
       (.I0(\m_payload_i_reg[0]_0 ),
        .O(\m_payload_i[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(\m_payload_i[32]_i_2_n_0 ),
        .O(r_match));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \m_payload_i[32]_i_10 
       (.I0(\s_axi_arprot[2] [21]),
        .I1(\s_axi_arprot[2] [26]),
        .I2(\s_axi_arprot[2] [29]),
        .I3(\s_axi_arprot[2] [30]),
        .O(\gen_read.ar_cnt_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \m_payload_i[32]_i_11 
       (.I0(\s_axi_arprot[2] [27]),
        .I1(\s_axi_arprot[2] [25]),
        .I2(\s_axi_arprot[2] [30]),
        .I3(\s_axi_arprot[2] [31]),
        .I4(\s_axi_arprot[2] [26]),
        .I5(\s_axi_arprot[2] [23]),
        .O(\gen_read.ar_cnt_reg[0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[32]_i_12 
       (.I0(\s_axi_arprot[2] [16]),
        .I1(\s_axi_arprot[2] [15]),
        .O(\gen_read.ar_cnt_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \m_payload_i[32]_i_13 
       (.I0(\s_axi_arprot[2] [31]),
        .I1(\s_axi_arprot[2] [17]),
        .I2(\s_axi_arprot[2] [16]),
        .I3(\s_axi_arprot[2] [18]),
        .I4(\s_axi_arprot[2] [19]),
        .O(\gen_read.ar_cnt_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF5554)) 
    \m_payload_i[32]_i_14 
       (.I0(\s_axi_arprot[2] [17]),
        .I1(\s_axi_arprot[2] [13]),
        .I2(\s_axi_arprot[2] [14]),
        .I3(\s_axi_arprot[2] [15]),
        .I4(\s_axi_arprot[2] [16]),
        .O(\gen_read.ar_cnt_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h4440000055505550)) 
    \m_payload_i[32]_i_2 
       (.I0(\gen_read.ar_cnt_reg[0]_1 ),
        .I1(\m_payload_i[32]_i_4_n_0 ),
        .I2(\m_payload_i[32]_i_5_n_0 ),
        .I3(\m_payload_i[32]_i_6_n_0 ),
        .I4(\m_payload_i[32]_i_7_n_0 ),
        .I5(\gen_read.ar_cnt_reg[0]_0 ),
        .O(\m_payload_i[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_payload_i[32]_i_3 
       (.I0(\s_axi_arprot[2] [30]),
        .I1(\s_axi_arprot[2] [29]),
        .I2(\s_axi_arprot[2] [31]),
        .O(\gen_read.ar_cnt_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \m_payload_i[32]_i_4 
       (.I0(\gen_read.ar_cnt_reg[0]_2 ),
        .I1(\s_axi_arprot[2] [20]),
        .I2(\s_axi_arprot[2] [31]),
        .I3(\gen_read.ar_cnt_reg[0]_6 ),
        .I4(\s_axi_arprot[2] [16]),
        .I5(\s_axi_arprot[2] [17]),
        .O(\m_payload_i[32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_5 
       (.I0(\gen_read.ar_cnt_reg[0]_7 ),
        .I1(\s_axi_arprot[2] [24]),
        .I2(\s_axi_arprot[2] [22]),
        .I3(\s_axi_arprot[2] [28]),
        .O(\m_payload_i[32]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555545)) 
    \m_payload_i[32]_i_6 
       (.I0(\s_axi_arprot[2] [29]),
        .I1(\gen_read.ar_cnt_reg[0]_2 ),
        .I2(\gen_read.ar_cnt_reg[0]_3 ),
        .I3(\s_axi_arprot[2] [21]),
        .I4(\s_axi_arprot[2] [20]),
        .I5(\s_axi_arprot[2] [17]),
        .O(\m_payload_i[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAF8FAFA)) 
    \m_payload_i[32]_i_7 
       (.I0(\gen_read.ar_cnt_reg[0]_4 ),
        .I1(\gen_read.ar_cnt_reg[0]_5 ),
        .I2(\gen_read.ar_cnt_reg[0]_6 ),
        .I3(\s_axi_arprot[2] [31]),
        .I4(\s_axi_arprot[2] [20]),
        .I5(\gen_read.ar_cnt_reg[0]_2 ),
        .O(\m_payload_i[32]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \m_payload_i[32]_i_8 
       (.I0(\s_axi_arprot[2] [24]),
        .I1(\s_axi_arprot[2] [22]),
        .I2(\s_axi_arprot[2] [28]),
        .I3(\s_axi_arprot[2] [23]),
        .I4(\s_axi_arprot[2] [25]),
        .I5(\s_axi_arprot[2] [27]),
        .O(\gen_read.ar_cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[32]_i_9 
       (.I0(\s_axi_arprot[2] [18]),
        .I1(\s_axi_arprot[2] [19]),
        .O(\gen_read.ar_cnt_reg[0]_2 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [0]),
        .Q(\m_axi_arprot[2] [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [10]),
        .Q(\m_axi_arprot[2] [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [11]),
        .Q(\m_axi_arprot[2] [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [12]),
        .Q(\m_axi_arprot[2] [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [13]),
        .Q(\m_axi_arprot[2] [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [14]),
        .Q(\m_axi_arprot[2] [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [15]),
        .Q(\m_axi_arprot[2] [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [16]),
        .Q(\m_axi_arprot[2] [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [17]),
        .Q(\m_axi_arprot[2] [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [18]),
        .Q(\m_axi_arprot[2] [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [19]),
        .Q(\m_axi_arprot[2] [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [1]),
        .Q(\m_axi_arprot[2] [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [20]),
        .Q(\m_axi_arprot[2] [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [21]),
        .Q(\m_axi_arprot[2] [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [22]),
        .Q(\m_axi_arprot[2] [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [23]),
        .Q(\m_axi_arprot[2] [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [24]),
        .Q(\m_axi_arprot[2] [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [25]),
        .Q(\m_axi_arprot[2] [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [26]),
        .Q(\m_axi_arprot[2] [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [27]),
        .Q(\m_axi_arprot[2] [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [28]),
        .Q(\m_axi_arprot[2] [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [29]),
        .Q(\m_axi_arprot[2] [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [2]),
        .Q(\m_axi_arprot[2] [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [30]),
        .Q(\m_axi_arprot[2] [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [31]),
        .Q(\m_axi_arprot[2] [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(r_match),
        .Q(\m_axi_arprot[2] [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [32]),
        .Q(\m_axi_arprot[2] [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [33]),
        .Q(\m_axi_arprot[2] [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [34]),
        .Q(\m_axi_arprot[2] [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [3]),
        .Q(\m_axi_arprot[2] [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [4]),
        .Q(\m_axi_arprot[2] [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [5]),
        .Q(\m_axi_arprot[2] [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [6]),
        .Q(\m_axi_arprot[2] [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [7]),
        .Q(\m_axi_arprot[2] [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [8]),
        .Q(\m_axi_arprot[2] [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_arprot[2] [9]),
        .Q(\m_axi_arprot[2] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2E220000)) 
    m_valid_i_i_1
       (.I0(\gen_axilite.gen_read.s_axi_arready_i_reg_0 ),
        .I1(sr_axi_arready),
        .I2(Q[5]),
        .I3(s_axi_arvalid),
        .I4(\gen_read.ar_cnt_reg[0] ),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(\m_payload_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(Q[5]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'h2AAA2AAA2A222AAA)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(\gen_read.ar_cnt_reg[0] ),
        .I2(\gen_axilite.gen_read.s_axi_arready_i_reg_0 ),
        .I3(\m_payload_i_reg[0]_0 ),
        .I4(s_axi_arvalid),
        .I5(Q[5]),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(sr_axi_arready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_s03_mmu_0,axi_mmu_v2_1_13_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_13_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;

  assign m_axi_rready = s_axi_rready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top inst
       (.D({s_axi_arprot,s_axi_araddr}),
        .Q({m_axi_arprot,m_axi_araddr}),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid));
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
