// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Feb 16 18:34:11 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s02_mmu_0_sim_netlist.v
// Design      : system_s02_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave
   (err_bvalid,
    err_wready,
    err_rvalid,
    err_arready,
    s_axi_wready,
    s_axi_bvalid,
    \gen_axilite.gen_write.s_axi_awready_i_reg_0 ,
    \gen_write.w_state_reg[1] ,
    s_axi_rvalid,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ,
    \aresetn_d_reg[1] ,
    aclk,
    \m_payload_i_reg[32] ,
    \aresetn_d_reg[1]_0 ,
    m_axi_wready,
    w_state,
    \gen_write.w_cnt_reg[0] ,
    m_axi_bvalid,
    s_axi_bready,
    \gen_read.r_state_reg[1] ,
    \gen_read.r_state_reg[0] ,
    m_axi_rvalid,
    \gen_axilite.gen_write.s_axi_awready_i ,
    s_axi_rready,
    Q,
    mr_axi_arvalid);
  output err_bvalid;
  output err_wready;
  output err_rvalid;
  output err_arready;
  output s_axi_wready;
  output s_axi_bvalid;
  output \gen_axilite.gen_write.s_axi_awready_i_reg_0 ;
  output \gen_write.w_state_reg[1] ;
  output s_axi_rvalid;
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  input \aresetn_d_reg[1] ;
  input aclk;
  input \m_payload_i_reg[32] ;
  input \aresetn_d_reg[1]_0 ;
  input m_axi_wready;
  input [1:0]w_state;
  input \gen_write.w_cnt_reg[0] ;
  input m_axi_bvalid;
  input s_axi_bready;
  input \gen_read.r_state_reg[1] ;
  input \gen_read.r_state_reg[0] ;
  input m_axi_rvalid;
  input \gen_axilite.gen_write.s_axi_awready_i ;
  input s_axi_rready;
  input [0:0]Q;
  input mr_axi_arvalid;

  wire [0:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  wire \gen_axilite.gen_write.s_axi_awready_i ;
  wire \gen_axilite.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[1] ;
  wire \gen_write.w_cnt_reg[0] ;
  wire \gen_write.w_state_reg[1] ;
  wire m_axi_bvalid;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire \m_payload_i_reg[32] ;
  wire mr_axi_arvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [1:0]w_state;

  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_0 ),
        .Q(err_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4744444444444444)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_1 
       (.I0(s_axi_rready),
        .I1(err_rvalid),
        .I2(Q),
        .I3(mr_axi_arvalid),
        .I4(err_arready),
        .I5(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .R(\aresetn_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_axilite.gen_write.s_axi_awready_i_i_2 
       (.I0(w_state[1]),
        .I1(w_state[0]),
        .O(\gen_axilite.gen_write.s_axi_awready_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[32] ),
        .Q(err_wready),
        .R(\aresetn_d_reg[1] ));
  LUT4 #(
    .INIT(16'h3444)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_i_1 
       (.I0(s_axi_bready),
        .I1(err_bvalid),
        .I2(err_wready),
        .I3(\gen_axilite.gen_write.s_axi_awready_i ),
        .O(\gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(\aresetn_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_write.w_state[1]_i_3 
       (.I0(err_bvalid),
        .I1(s_axi_bready),
        .O(\gen_write.w_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(m_axi_bvalid),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_rvalid_INST_0
       (.I0(err_rvalid),
        .I1(\gen_read.r_state_reg[1] ),
        .I2(\gen_read.r_state_reg[0] ),
        .I3(m_axi_rvalid),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA000ACCC)) 
    s_axi_wready_INST_0
       (.I0(err_wready),
        .I1(m_axi_wready),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .I4(\gen_write.w_cnt_reg[0] ),
        .O(s_axi_wready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top
   (Q,
    \m_axi_arprot[2] ,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    m_axi_wvalid,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_rresp,
    s_axi_awready,
    s_axi_arready,
    m_axi_awvalid,
    m_axi_arvalid,
    s_axi_arvalid,
    aclk,
    s_axi_awvalid,
    D,
    \s_axi_arprot[2] ,
    s_axi_rready,
    s_axi_wvalid,
    m_axi_awready,
    m_axi_wready,
    m_axi_bvalid,
    m_axi_bresp,
    s_axi_bready,
    m_axi_rdata,
    m_axi_rvalid,
    m_axi_rresp,
    m_axi_arready,
    aresetn);
  output [34:0]Q;
  output [34:0]\m_axi_arprot[2] ;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  output m_axi_wvalid;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output [1:0]s_axi_rresp;
  output s_axi_awready;
  output s_axi_arready;
  output m_axi_awvalid;
  output m_axi_arvalid;
  input s_axi_arvalid;
  input aclk;
  input s_axi_awvalid;
  input [34:0]D;
  input [34:0]\s_axi_arprot[2] ;
  input s_axi_rready;
  input s_axi_wvalid;
  input m_axi_awready;
  input m_axi_wready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  input s_axi_bready;
  input [31:0]m_axi_rdata;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input m_axi_arready;
  input aresetn;

  wire [34:0]D;
  wire [34:0]Q;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_6;
  wire decerr_slave_inst_n_7;
  wire decerr_slave_inst_n_9;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_write.s_axi_awready_i ;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[2]_i_3_n_0 ;
  wire \gen_read.ar_cnt[5]_i_3_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg__0 ;
  wire \gen_read.r_state[0]_i_1_n_0 ;
  wire \gen_read.r_state[1]_i_1_n_0 ;
  wire \gen_read.r_state[1]_i_2_n_0 ;
  wire \gen_read.r_state_reg_n_0_[0] ;
  wire \gen_read.r_state_reg_n_0_[1] ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire \gen_write.aw_cnt[5]_i_10_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
  wire \gen_write.aw_cnt[5]_i_7_n_0 ;
  wire \gen_write.aw_cnt[5]_i_8_n_0 ;
  wire \gen_write.aw_cnt[5]_i_9_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg__0 ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_3_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire \gen_write.w_cnt[5]_i_6_n_0 ;
  wire \gen_write.w_cnt[5]_i_7_n_0 ;
  wire \gen_write.w_cnt[5]_i_8_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg__0 ;
  wire \gen_write.w_state[1]_i_2_n_0 ;
  wire \gen_write.w_state[1]_i_4_n_0 ;
  wire [34:0]\m_axi_arprot[2] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [32:32]mr_axi_araddr;
  wire mr_axi_arvalid;
  wire register_slice_inst_n_0;
  wire register_slice_inst_n_10;
  wire register_slice_inst_n_11;
  wire register_slice_inst_n_12;
  wire register_slice_inst_n_13;
  wire register_slice_inst_n_14;
  wire register_slice_inst_n_16;
  wire register_slice_inst_n_2;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_53;
  wire register_slice_inst_n_54;
  wire register_slice_inst_n_55;
  wire register_slice_inst_n_56;
  wire register_slice_inst_n_57;
  wire register_slice_inst_n_58;
  wire register_slice_inst_n_6;
  wire register_slice_inst_n_61;
  wire register_slice_inst_n_62;
  wire register_slice_inst_n_63;
  wire register_slice_inst_n_64;
  wire register_slice_inst_n_65;
  wire register_slice_inst_n_68;
  wire register_slice_inst_n_7;
  wire register_slice_inst_n_8;
  wire register_slice_inst_n_9;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wvalid;
  wire w_mask;
  wire w_mask0;
  wire [1:0]w_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave decerr_slave_inst
       (.Q(mr_axi_araddr),
        .aclk(aclk),
        .\aresetn_d_reg[1] (register_slice_inst_n_0),
        .\aresetn_d_reg[1]_0 (register_slice_inst_n_16),
        .err_arready(err_arready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 (decerr_slave_inst_n_9),
        .\gen_axilite.gen_write.s_axi_awready_i (\gen_axilite.gen_write.s_axi_awready_i ),
        .\gen_axilite.gen_write.s_axi_awready_i_reg_0 (decerr_slave_inst_n_6),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg_n_0_[0] ),
        .\gen_read.r_state_reg[1] (\gen_read.r_state_reg_n_0_[1] ),
        .\gen_write.w_cnt_reg[0] (s_axi_wready_INST_0_i_1_n_0),
        .\gen_write.w_state_reg[1] (decerr_slave_inst_n_7),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .\m_payload_i_reg[32] (register_slice_inst_n_68),
        .mr_axi_arvalid(mr_axi_arvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .w_state(w_state));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_read.ar_cnt[2]_i_3 
       (.I0(\s_axi_arprot[2] [29]),
        .I1(\s_axi_arprot[2] [31]),
        .I2(\s_axi_arprot[2] [30]),
        .O(\gen_read.ar_cnt[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(\gen_read.r_state[1]_i_2_n_0 ),
        .I1(m_axi_rvalid),
        .I2(s_axi_rready),
        .O(\gen_read.ar_cnt[5]_i_3_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_7),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_7),
        .D(register_slice_inst_n_12),
        .Q(\gen_read.ar_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_7),
        .D(register_slice_inst_n_11),
        .Q(\gen_read.ar_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_7),
        .D(register_slice_inst_n_10),
        .Q(\gen_read.ar_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_7),
        .D(register_slice_inst_n_9),
        .Q(\gen_read.ar_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_7),
        .D(register_slice_inst_n_8),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  LUT5 #(
    .INIT(32'hFFFF7F00)) 
    \gen_read.r_state[0]_i_1 
       (.I0(err_rvalid),
        .I1(s_axi_rready),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .I3(\gen_read.r_state_reg_n_0_[0] ),
        .I4(register_slice_inst_n_53),
        .O(\gen_read.r_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0000077F0FF00)) 
    \gen_read.r_state[1]_i_1 
       (.I0(err_rvalid),
        .I1(s_axi_rready),
        .I2(\gen_read.r_state[1]_i_2_n_0 ),
        .I3(\gen_read.r_state_reg_n_0_[1] ),
        .I4(\gen_read.r_state_reg_n_0_[0] ),
        .I5(register_slice_inst_n_53),
        .O(\gen_read.r_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_read.r_state[1]_i_2 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .I1(\gen_read.ar_cnt_reg__0 [1]),
        .I2(\gen_read.ar_cnt_reg__0 [4]),
        .I3(\gen_read.ar_cnt_reg__0 [5]),
        .I4(\gen_read.ar_cnt_reg__0 [2]),
        .I5(\gen_read.ar_cnt_reg__0 [3]),
        .O(\gen_read.r_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_read.r_state[0]_i_1_n_0 ),
        .Q(\gen_read.r_state_reg_n_0_[0] ),
        .R(register_slice_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_read.r_state[1]_i_1_n_0 ),
        .Q(\gen_read.r_state_reg_n_0_[1] ),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_write.aw_cnt[5]_i_10 
       (.I0(D[25]),
        .I1(D[27]),
        .O(\gen_write.aw_cnt[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(\gen_write.w_state[1]_i_4_n_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \gen_write.aw_cnt[5]_i_7 
       (.I0(register_slice_inst_n_56),
        .I1(register_slice_inst_n_62),
        .I2(D[29]),
        .I3(D[23]),
        .I4(\gen_write.aw_cnt[5]_i_10_n_0 ),
        .I5(register_slice_inst_n_61),
        .O(\gen_write.aw_cnt[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEF000FEFEF)) 
    \gen_write.aw_cnt[5]_i_8 
       (.I0(D[30]),
        .I1(D[31]),
        .I2(D[29]),
        .I3(register_slice_inst_n_65),
        .I4(register_slice_inst_n_64),
        .I5(register_slice_inst_n_63),
        .O(\gen_write.aw_cnt[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_write.aw_cnt[5]_i_9 
       (.I0(\gen_write.aw_cnt_reg__0 [1]),
        .I1(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[5]_i_9_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_6),
        .Q(\gen_write.aw_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_5),
        .Q(\gen_write.aw_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_4),
        .Q(\gen_write.aw_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_3),
        .Q(\gen_write.aw_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_54),
        .D(register_slice_inst_n_2),
        .Q(\gen_write.aw_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB00040004FFFB)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(register_slice_inst_n_55),
        .I1(w_mask0),
        .I2(w_mask),
        .I3(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I4(\gen_write.w_cnt_reg__0 [0]),
        .I5(\gen_write.w_cnt_reg__0 [1]),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.w_cnt[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .O(w_mask0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I3(\gen_write.w_cnt_reg__0 [2]),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hDFFB2004)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .I4(\gen_write.w_cnt_reg__0 [3]),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAA9AA)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [4]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .I3(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I4(\gen_write.w_cnt_reg__0 [2]),
        .I5(\gen_write.w_cnt_reg__0 [3]),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFEFFFEFFFEF)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(w_mask),
        .I2(w_mask0),
        .I3(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I4(register_slice_inst_n_57),
        .I5(register_slice_inst_n_56),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(w_mask),
        .I2(\gen_write.aw_cnt_reg__0 [5]),
        .I3(s_axi_awvalid),
        .I4(register_slice_inst_n_55),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA955AAAAA9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [3]),
        .I4(\gen_write.w_cnt_reg__0 [4]),
        .I5(\gen_write.w_cnt[5]_i_5_n_0 ),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000888)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(s_axi_wvalid),
        .I1(m_axi_wready),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .I4(s_axi_wready_INST_0_i_1_n_0),
        .O(\gen_write.w_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555DF55)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I1(\gen_write.aw_cnt[5]_i_7_n_0 ),
        .I2(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I3(w_mask0),
        .I4(w_mask),
        .I5(\gen_write.w_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(\gen_write.w_cnt[5]_i_7_n_0 ),
        .I1(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I2(\gen_write.w_cnt[5]_i_8_n_0 ),
        .I3(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I4(\gen_write.aw_cnt[5]_i_7_n_0 ),
        .I5(\gen_write.w_cnt_reg__0 [2]),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_write.w_cnt[5]_i_6 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_write.w_cnt[5]_i_7 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \gen_write.w_cnt[5]_i_8 
       (.I0(w_mask),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .I2(s_axi_awvalid),
        .O(\gen_write.w_cnt[5]_i_8_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_58),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_write.w_state[1]_i_2 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .I3(\gen_write.w_state[1]_i_4_n_0 ),
        .O(\gen_write.w_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.w_state[1]_i_4 
       (.I0(\gen_write.aw_cnt_reg__0 [5]),
        .I1(\gen_write.aw_cnt_reg__0 [4]),
        .I2(\gen_write.aw_cnt_reg__0 [1]),
        .I3(\gen_write.aw_cnt_reg__0 [0]),
        .I4(\gen_write.aw_cnt_reg__0 [2]),
        .I5(\gen_write.aw_cnt_reg__0 [3]),
        .O(\gen_write.w_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_13),
        .Q(w_state[0]),
        .R(register_slice_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_14),
        .Q(w_state[1]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(s_axi_wready_INST_0_i_1_n_0),
        .I2(w_state[1]),
        .I3(w_state[0]),
        .O(m_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_2,register_slice_inst_n_3,register_slice_inst_n_4,register_slice_inst_n_5,register_slice_inst_n_6}),
        .E(register_slice_inst_n_7),
        .Q(\gen_write.aw_cnt_reg__0 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_arready(err_arready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (register_slice_inst_n_16),
        .\gen_axilite.gen_write.s_axi_awready_i (\gen_axilite.gen_write.s_axi_awready_i ),
        .\gen_axilite.gen_write.s_axi_awready_i_reg (register_slice_inst_n_68),
        .\gen_axilite.gen_write.s_axi_bvalid_i_reg (decerr_slave_inst_n_7),
        .\gen_read.ar_cnt_reg[0] (\gen_read.ar_cnt[5]_i_3_n_0 ),
        .\gen_read.ar_cnt_reg[5] ({register_slice_inst_n_8,register_slice_inst_n_9,register_slice_inst_n_10,register_slice_inst_n_11,register_slice_inst_n_12}),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg__0 ),
        .\gen_read.r_state_reg[0] (register_slice_inst_n_53),
        .\gen_read.r_state_reg[0]_0 (\gen_read.r_state_reg_n_0_[0] ),
        .\gen_read.r_state_reg[1] (decerr_slave_inst_n_9),
        .\gen_read.r_state_reg[1]_0 (\gen_read.r_state_reg_n_0_[1] ),
        .\gen_write.aw_cnt_reg[0] (register_slice_inst_n_54),
        .\gen_write.aw_cnt_reg[1] (\gen_write.aw_cnt[5]_i_9_n_0 ),
        .\gen_write.aw_cnt_reg[4] (register_slice_inst_n_63),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt[5]_i_3_n_0 ),
        .\gen_write.w_mask_reg (register_slice_inst_n_58),
        .\gen_write.w_state_reg[0] (register_slice_inst_n_13),
        .\gen_write.w_state_reg[0]_0 (\gen_write.w_state[1]_i_2_n_0 ),
        .\gen_write.w_state_reg[1] (register_slice_inst_n_14),
        .\gen_write.w_state_reg[1]_0 (decerr_slave_inst_n_6),
        .\m_axi_arprot[2] ({\m_axi_arprot[2] [34:32],mr_axi_araddr,\m_axi_arprot[2] [31:0]}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_axi_awprot[2] (Q),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[32] (register_slice_inst_n_55),
        .\m_payload_i_reg[32]_0 (register_slice_inst_n_56),
        .\m_payload_i_reg[32]_1 (register_slice_inst_n_57),
        .\m_payload_i_reg[32]_2 (register_slice_inst_n_61),
        .\m_payload_i_reg[32]_3 (register_slice_inst_n_62),
        .\m_payload_i_reg[32]_4 (register_slice_inst_n_64),
        .\m_payload_i_reg[32]_5 (register_slice_inst_n_65),
        .m_valid_i_reg(register_slice_inst_n_0),
        .mr_axi_arvalid(mr_axi_arvalid),
        .\s_axi_araddr[30] (\gen_read.ar_cnt[2]_i_3_n_0 ),
        .\s_axi_arprot[2] (\s_axi_arprot[2] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_awaddr[15] (\gen_write.aw_cnt[5]_i_8_n_0 ),
        .\s_axi_awaddr[24] (\gen_write.aw_cnt[5]_i_7_n_0 ),
        .\s_axi_awprot[2] (D),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .w_mask(w_mask),
        .w_mask0(w_mask0),
        .w_state(w_state));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .O(s_axi_bresp[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_wready_INST_0_i_1
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [3]),
        .I4(\gen_write.w_cnt_reg__0 [4]),
        .I5(\gen_write.w_cnt_reg__0 [5]),
        .O(s_axi_wready_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice
   (m_valid_i_reg,
    mr_axi_arvalid,
    D,
    E,
    \gen_read.ar_cnt_reg[5] ,
    \gen_write.w_state_reg[0] ,
    \gen_write.w_state_reg[1] ,
    \gen_axilite.gen_write.s_axi_awready_i ,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    \m_axi_arprot[2] ,
    \gen_read.r_state_reg[0] ,
    \gen_write.aw_cnt_reg[0] ,
    \m_payload_i_reg[32] ,
    \m_payload_i_reg[32]_0 ,
    \m_payload_i_reg[32]_1 ,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    s_axi_arready,
    \m_payload_i_reg[32]_2 ,
    \m_payload_i_reg[32]_3 ,
    \gen_write.aw_cnt_reg[4] ,
    \m_payload_i_reg[32]_4 ,
    \m_payload_i_reg[32]_5 ,
    m_axi_awvalid,
    m_axi_arvalid,
    \gen_axilite.gen_write.s_axi_awready_i_reg ,
    \m_axi_awprot[2] ,
    aclk,
    aresetn,
    Q,
    \gen_read.ar_cnt_reg[0] ,
    s_axi_arvalid,
    \gen_read.ar_cnt_reg[5]_0 ,
    \gen_write.w_state_reg[0]_0 ,
    \gen_axilite.gen_write.s_axi_bvalid_i_reg ,
    w_state,
    err_bvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    m_axi_awready,
    err_wready,
    err_rvalid,
    err_arready,
    \gen_read.r_state_reg[1] ,
    m_axi_arready,
    \gen_read.r_state_reg[0]_0 ,
    \gen_read.r_state_reg[1]_0 ,
    \gen_write.aw_cnt_reg[5] ,
    \s_axi_awaddr[24] ,
    \s_axi_awaddr[15] ,
    \gen_write.aw_cnt_reg[1] ,
    w_mask0,
    w_mask,
    \s_axi_araddr[30] ,
    \s_axi_awprot[2] ,
    \s_axi_arprot[2] ,
    \gen_write.w_state_reg[1]_0 );
  output m_valid_i_reg;
  output mr_axi_arvalid;
  output [4:0]D;
  output [0:0]E;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output \gen_write.w_state_reg[0] ;
  output \gen_write.w_state_reg[1] ;
  output \gen_axilite.gen_write.s_axi_awready_i ;
  output \gen_axilite.gen_read.s_axi_arready_i_reg ;
  output [35:0]\m_axi_arprot[2] ;
  output \gen_read.r_state_reg[0] ;
  output [0:0]\gen_write.aw_cnt_reg[0] ;
  output \m_payload_i_reg[32] ;
  output \m_payload_i_reg[32]_0 ;
  output \m_payload_i_reg[32]_1 ;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output s_axi_arready;
  output \m_payload_i_reg[32]_2 ;
  output \m_payload_i_reg[32]_3 ;
  output \gen_write.aw_cnt_reg[4] ;
  output \m_payload_i_reg[32]_4 ;
  output \m_payload_i_reg[32]_5 ;
  output m_axi_awvalid;
  output m_axi_arvalid;
  output \gen_axilite.gen_write.s_axi_awready_i_reg ;
  output [34:0]\m_axi_awprot[2] ;
  input aclk;
  input aresetn;
  input [5:0]Q;
  input \gen_read.ar_cnt_reg[0] ;
  input s_axi_arvalid;
  input [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  input \gen_write.w_state_reg[0]_0 ;
  input \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  input [1:0]w_state;
  input err_bvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input m_axi_awready;
  input err_wready;
  input err_rvalid;
  input err_arready;
  input \gen_read.r_state_reg[1] ;
  input m_axi_arready;
  input \gen_read.r_state_reg[0]_0 ;
  input \gen_read.r_state_reg[1]_0 ;
  input \gen_write.aw_cnt_reg[5] ;
  input \s_axi_awaddr[24] ;
  input \s_axi_awaddr[15] ;
  input \gen_write.aw_cnt_reg[1] ;
  input w_mask0;
  input w_mask;
  input \s_axi_araddr[30] ;
  input [34:0]\s_axi_awprot[2] ;
  input [34:0]\s_axi_arprot[2] ;
  input \gen_write.w_state_reg[1]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire aclk;
  wire \ar.ar_pipe_n_2 ;
  wire aresetn;
  wire \aw.aw_pipe_n_0 ;
  wire \aw.aw_pipe_n_21 ;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_write.s_axi_awready_i ;
  wire \gen_axilite.gen_write.s_axi_awready_i_reg ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  wire \gen_read.ar_cnt_reg[0] ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[0]_0 ;
  wire \gen_read.r_state_reg[1] ;
  wire \gen_read.r_state_reg[1]_0 ;
  wire [0:0]\gen_write.aw_cnt_reg[0] ;
  wire \gen_write.aw_cnt_reg[1] ;
  wire \gen_write.aw_cnt_reg[4] ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire \gen_write.w_state_reg[1] ;
  wire \gen_write.w_state_reg[1]_0 ;
  wire [35:0]\m_axi_arprot[2] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [34:0]\m_axi_awprot[2] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire \m_payload_i_reg[32] ;
  wire \m_payload_i_reg[32]_0 ;
  wire \m_payload_i_reg[32]_1 ;
  wire \m_payload_i_reg[32]_2 ;
  wire \m_payload_i_reg[32]_3 ;
  wire \m_payload_i_reg[32]_4 ;
  wire \m_payload_i_reg[32]_5 ;
  wire m_valid_i_reg;
  wire mr_axi_arvalid;
  wire \s_axi_araddr[30] ;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire \s_axi_awaddr[15] ;
  wire \s_axi_awaddr[24] ;
  wire [34:0]\s_axi_awprot[2] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire w_mask;
  wire w_mask0;
  wire [1:0]w_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice \ar.ar_pipe 
       (.E(E),
        .Q(\m_axi_arprot[2] ),
        .aclk(aclk),
        .\aresetn_d_reg[0] (\aw.aw_pipe_n_21 ),
        .\aresetn_d_reg[0]_0 (\aw.aw_pipe_n_0 ),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .\gen_read.ar_cnt_reg[0] (\gen_read.ar_cnt_reg[0] ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg[5]_0 ),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg[0] ),
        .\gen_read.r_state_reg[0]_0 (\gen_read.r_state_reg[0]_0 ),
        .\gen_read.r_state_reg[1] (\gen_read.r_state_reg[1] ),
        .\gen_read.r_state_reg[1]_0 (\gen_read.r_state_reg[1]_0 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[0]_0 (mr_axi_arvalid),
        .m_valid_i_reg_0(m_valid_i_reg),
        .\s_axi_araddr[30] (\s_axi_araddr[30] ),
        .\s_axi_arprot[2] (\s_axi_arprot[2] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i_reg_0(\ar.ar_pipe_n_2 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (\aw.aw_pipe_n_0 ),
        .\aresetn_d_reg[1]_0 (\aw.aw_pipe_n_21 ),
        .\aresetn_d_reg[1]_1 (m_valid_i_reg),
        .\aresetn_d_reg[1]_2 (\ar.ar_pipe_n_2 ),
        .err_bvalid(err_bvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_write.s_axi_awready_i (\gen_axilite.gen_write.s_axi_awready_i ),
        .\gen_axilite.gen_write.s_axi_awready_i_reg (\gen_axilite.gen_write.s_axi_awready_i_reg ),
        .\gen_axilite.gen_write.s_axi_bvalid_i_reg (\gen_axilite.gen_write.s_axi_bvalid_i_reg ),
        .\gen_write.aw_cnt_reg[0] (\gen_write.aw_cnt_reg[0] ),
        .\gen_write.aw_cnt_reg[1] (\gen_write.aw_cnt_reg[1] ),
        .\gen_write.aw_cnt_reg[4] (\gen_write.aw_cnt_reg[4] ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .\gen_write.w_state_reg[0] (\gen_write.w_state_reg[0] ),
        .\gen_write.w_state_reg[0]_0 (\gen_write.w_state_reg[0]_0 ),
        .\gen_write.w_state_reg[1] (\gen_write.w_state_reg[1] ),
        .\gen_write.w_state_reg[1]_0 (\gen_write.w_state_reg[1]_0 ),
        .\m_axi_awprot[2] (\m_axi_awprot[2] ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[32]_0 (\m_payload_i_reg[32] ),
        .\m_payload_i_reg[32]_1 (\m_payload_i_reg[32]_0 ),
        .\m_payload_i_reg[32]_2 (\m_payload_i_reg[32]_1 ),
        .\m_payload_i_reg[32]_3 (\m_payload_i_reg[32]_2 ),
        .\m_payload_i_reg[32]_4 (\m_payload_i_reg[32]_3 ),
        .\m_payload_i_reg[32]_5 (\m_payload_i_reg[32]_4 ),
        .\m_payload_i_reg[32]_6 (\m_payload_i_reg[32]_5 ),
        .\s_axi_awaddr[15] (\s_axi_awaddr[15] ),
        .\s_axi_awaddr[24] (\s_axi_awaddr[24] ),
        .\s_axi_awprot[2] (\s_axi_awprot[2] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .w_mask(w_mask),
        .w_mask0(w_mask0),
        .w_state(w_state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice
   (\m_payload_i_reg[0]_0 ,
    m_valid_i_reg_0,
    s_ready_i_reg_0,
    E,
    \gen_read.ar_cnt_reg[5] ,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    Q,
    \gen_read.r_state_reg[0] ,
    s_axi_arready,
    m_axi_arvalid,
    aclk,
    \aresetn_d_reg[0] ,
    \gen_read.ar_cnt_reg[0] ,
    s_axi_arvalid,
    \gen_read.ar_cnt_reg[5]_0 ,
    err_rvalid,
    err_arready,
    \gen_read.r_state_reg[1] ,
    m_axi_arready,
    \gen_read.r_state_reg[0]_0 ,
    \gen_read.r_state_reg[1]_0 ,
    \s_axi_araddr[30] ,
    \s_axi_arprot[2] ,
    \aresetn_d_reg[0]_0 );
  output \m_payload_i_reg[0]_0 ;
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output [0:0]E;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output \gen_axilite.gen_read.s_axi_arready_i_reg ;
  output [35:0]Q;
  output \gen_read.r_state_reg[0] ;
  output s_axi_arready;
  output m_axi_arvalid;
  input aclk;
  input \aresetn_d_reg[0] ;
  input \gen_read.ar_cnt_reg[0] ;
  input s_axi_arvalid;
  input [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  input err_rvalid;
  input err_arready;
  input \gen_read.r_state_reg[1] ;
  input m_axi_arready;
  input \gen_read.r_state_reg[0]_0 ;
  input \gen_read.r_state_reg[1]_0 ;
  input \s_axi_araddr[30] ;
  input [34:0]\s_axi_arprot[2] ;
  input \aresetn_d_reg[0]_0 ;

  wire [0:0]E;
  wire [35:0]Q;
  wire aclk;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[0]_0 ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_read.ar_cnt[2]_i_2_n_0 ;
  wire \gen_read.ar_cnt[2]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt_reg[0] ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[0]_0 ;
  wire \gen_read.r_state_reg[1] ;
  wire \gen_read.r_state_reg[1]_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire \m_payload_i[31]_i_1__0_n_0 ;
  wire \m_payload_i[32]_i_10__0_n_0 ;
  wire \m_payload_i[32]_i_11_n_0 ;
  wire \m_payload_i[32]_i_2__0_n_0 ;
  wire \m_payload_i[32]_i_3__0_n_0 ;
  wire \m_payload_i[32]_i_4__0_n_0 ;
  wire \m_payload_i[32]_i_5__0_n_0 ;
  wire \m_payload_i[32]_i_6__0_n_0 ;
  wire \m_payload_i[32]_i_7__0_n_0 ;
  wire \m_payload_i[32]_i_8__0_n_0 ;
  wire \m_payload_i[32]_i_9__0_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_i_2__0_n_0;
  wire m_valid_i_reg_0;
  wire r_match;
  wire \s_axi_araddr[30] ;
  wire [34:0]\s_axi_arprot[2] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire sr_axi_arready;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[0] ),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AA2222AAAA2222)) 
    \gen_axilite.gen_read.s_axi_arready_i_i_1 
       (.I0(s_ready_i_reg_0),
        .I1(err_rvalid),
        .I2(Q[32]),
        .I3(\m_payload_i_reg[0]_0 ),
        .I4(err_arready),
        .I5(\gen_read.r_state_reg[1] ),
        .O(\gen_axilite.gen_read.s_axi_arready_i_reg ));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .I1(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [1]),
        .O(\gen_read.ar_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I1(\gen_read.ar_cnt_reg[5]_0 [1]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I3(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABABBBB)) 
    \gen_read.ar_cnt[2]_i_2 
       (.I0(\gen_read.ar_cnt_reg[0] ),
        .I1(\s_axi_araddr[30] ),
        .I2(\m_payload_i[32]_i_3__0_n_0 ),
        .I3(\m_payload_i[32]_i_4__0_n_0 ),
        .I4(\m_payload_i[32]_i_5__0_n_0 ),
        .I5(\gen_read.ar_cnt[2]_i_4_n_0 ),
        .O(\gen_read.ar_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_read.ar_cnt[2]_i_4 
       (.I0(s_axi_arvalid),
        .I1(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I2(sr_axi_arready),
        .O(\gen_read.ar_cnt[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I1(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [3]),
        .O(\gen_read.ar_cnt_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [4]),
        .I1(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I2(\gen_read.ar_cnt_reg[5]_0 [3]),
        .I3(\gen_read.ar_cnt_reg[5]_0 [2]),
        .O(\gen_read.ar_cnt_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAA9AAAAA)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(\gen_read.ar_cnt_reg[0] ),
        .I1(\m_payload_i[32]_i_2__0_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I4(sr_axi_arready),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I1(\gen_read.ar_cnt_reg[5]_0 [4]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I3(\gen_read.ar_cnt_reg[5]_0 [3]),
        .I4(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .O(\gen_read.ar_cnt_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h54D5)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I1(\gen_read.ar_cnt_reg[5]_0 [1]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I3(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_read.r_state[1]_i_3 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(Q[32]),
        .O(\gen_read.r_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_arvalid_INST_0
       (.I0(Q[32]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(\gen_read.r_state_reg[0]_0 ),
        .O(m_axi_arvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1__0 
       (.I0(\m_payload_i_reg[0]_0 ),
        .O(\m_payload_i[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[32]_i_10__0 
       (.I0(\s_axi_arprot[2] [18]),
        .I1(\s_axi_arprot[2] [19]),
        .O(\m_payload_i[32]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEF)) 
    \m_payload_i[32]_i_11 
       (.I0(\s_axi_arprot[2] [27]),
        .I1(\s_axi_arprot[2] [25]),
        .I2(\s_axi_arprot[2] [20]),
        .I3(\s_axi_arprot[2] [16]),
        .I4(\s_axi_arprot[2] [30]),
        .I5(\s_axi_arprot[2] [31]),
        .O(\m_payload_i[32]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1__0 
       (.I0(\m_payload_i[32]_i_2__0_n_0 ),
        .O(r_match));
  LUT6 #(
    .INIT(64'h0000EF00EFEFEFEF)) 
    \m_payload_i[32]_i_2__0 
       (.I0(\s_axi_arprot[2] [30]),
        .I1(\s_axi_arprot[2] [31]),
        .I2(\s_axi_arprot[2] [29]),
        .I3(\m_payload_i[32]_i_3__0_n_0 ),
        .I4(\m_payload_i[32]_i_4__0_n_0 ),
        .I5(\m_payload_i[32]_i_5__0_n_0 ),
        .O(\m_payload_i[32]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \m_payload_i[32]_i_3__0 
       (.I0(\s_axi_arprot[2] [29]),
        .I1(\m_payload_i[32]_i_6__0_n_0 ),
        .I2(\s_axi_arprot[2] [17]),
        .I3(\s_axi_arprot[2] [15]),
        .I4(\s_axi_arprot[2] [21]),
        .I5(\m_payload_i[32]_i_7__0_n_0 ),
        .O(\m_payload_i[32]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \m_payload_i[32]_i_4__0 
       (.I0(\m_payload_i[32]_i_8__0_n_0 ),
        .I1(\m_payload_i[32]_i_9__0_n_0 ),
        .I2(\s_axi_arprot[2] [17]),
        .I3(\s_axi_arprot[2] [20]),
        .I4(\m_payload_i[32]_i_10__0_n_0 ),
        .I5(\m_payload_i[32]_i_11_n_0 ),
        .O(\m_payload_i[32]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \m_payload_i[32]_i_5__0 
       (.I0(\s_axi_arprot[2] [28]),
        .I1(\s_axi_arprot[2] [24]),
        .I2(\s_axi_arprot[2] [22]),
        .O(\m_payload_i[32]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_6__0 
       (.I0(\s_axi_arprot[2] [19]),
        .I1(\s_axi_arprot[2] [18]),
        .I2(\s_axi_arprot[2] [16]),
        .I3(\s_axi_arprot[2] [20]),
        .O(\m_payload_i[32]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \m_payload_i[32]_i_7__0 
       (.I0(\s_axi_arprot[2] [27]),
        .I1(\s_axi_arprot[2] [25]),
        .I2(\s_axi_arprot[2] [30]),
        .I3(\s_axi_arprot[2] [31]),
        .I4(\s_axi_arprot[2] [26]),
        .I5(\s_axi_arprot[2] [23]),
        .O(\m_payload_i[32]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF01)) 
    \m_payload_i[32]_i_8__0 
       (.I0(\s_axi_arprot[2] [13]),
        .I1(\s_axi_arprot[2] [15]),
        .I2(\s_axi_arprot[2] [14]),
        .I3(\s_axi_arprot[2] [16]),
        .I4(\s_axi_arprot[2] [17]),
        .O(\m_payload_i[32]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \m_payload_i[32]_i_9__0 
       (.I0(\s_axi_arprot[2] [21]),
        .I1(\s_axi_arprot[2] [29]),
        .I2(\s_axi_arprot[2] [23]),
        .I3(\s_axi_arprot[2] [26]),
        .O(\m_payload_i[32]_i_9__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(r_match),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [32]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [33]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [34]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arprot[2] [9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h440F)) 
    m_valid_i_i_1
       (.I0(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I1(s_axi_arvalid),
        .I2(m_valid_i_i_2__0_n_0),
        .I3(sr_axi_arready),
        .O(m_valid_i_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_valid_i_i_1__0
       (.I0(s_ready_i_reg_0),
        .O(m_valid_i_reg_0));
  LUT5 #(
    .INIT(32'h30880088)) 
    m_valid_i_i_2__0
       (.I0(m_axi_arready),
        .I1(Q[32]),
        .I2(err_arready),
        .I3(\gen_read.r_state_reg[0]_0 ),
        .I4(\gen_read.r_state_reg[1]_0 ),
        .O(m_valid_i_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(\m_payload_i_reg[0]_0 ),
        .R(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(\gen_read.ar_cnt_reg[5]_0 [5]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hDFDFD5DF00000000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(m_valid_i_i_2__0_n_0),
        .I2(\m_payload_i_reg[0]_0 ),
        .I3(s_axi_arvalid),
        .I4(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I5(\aresetn_d_reg[0]_0 ),
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

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0
   (\aresetn_d_reg[1] ,
    D,
    \gen_write.w_state_reg[0] ,
    \gen_write.w_state_reg[1] ,
    \gen_axilite.gen_write.s_axi_awready_i ,
    \gen_write.aw_cnt_reg[0] ,
    \m_payload_i_reg[32]_0 ,
    \m_payload_i_reg[32]_1 ,
    \m_payload_i_reg[32]_2 ,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    \m_payload_i_reg[32]_3 ,
    \m_payload_i_reg[32]_4 ,
    \gen_write.aw_cnt_reg[4] ,
    \m_payload_i_reg[32]_5 ,
    \m_payload_i_reg[32]_6 ,
    m_axi_awvalid,
    \aresetn_d_reg[1]_0 ,
    \gen_axilite.gen_write.s_axi_awready_i_reg ,
    \m_axi_awprot[2] ,
    \aresetn_d_reg[1]_1 ,
    aclk,
    aresetn,
    Q,
    \gen_write.w_state_reg[0]_0 ,
    \gen_axilite.gen_write.s_axi_bvalid_i_reg ,
    w_state,
    err_bvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    m_axi_awready,
    err_wready,
    \gen_write.aw_cnt_reg[5] ,
    \s_axi_awaddr[24] ,
    \s_axi_awaddr[15] ,
    \gen_write.aw_cnt_reg[1] ,
    w_mask0,
    \aresetn_d_reg[1]_2 ,
    w_mask,
    \s_axi_awprot[2] ,
    \gen_write.w_state_reg[1]_0 );
  output \aresetn_d_reg[1] ;
  output [4:0]D;
  output \gen_write.w_state_reg[0] ;
  output \gen_write.w_state_reg[1] ;
  output \gen_axilite.gen_write.s_axi_awready_i ;
  output [0:0]\gen_write.aw_cnt_reg[0] ;
  output \m_payload_i_reg[32]_0 ;
  output \m_payload_i_reg[32]_1 ;
  output \m_payload_i_reg[32]_2 ;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output \m_payload_i_reg[32]_3 ;
  output \m_payload_i_reg[32]_4 ;
  output \gen_write.aw_cnt_reg[4] ;
  output \m_payload_i_reg[32]_5 ;
  output \m_payload_i_reg[32]_6 ;
  output m_axi_awvalid;
  output \aresetn_d_reg[1]_0 ;
  output \gen_axilite.gen_write.s_axi_awready_i_reg ;
  output [34:0]\m_axi_awprot[2] ;
  input \aresetn_d_reg[1]_1 ;
  input aclk;
  input aresetn;
  input [5:0]Q;
  input \gen_write.w_state_reg[0]_0 ;
  input \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  input [1:0]w_state;
  input err_bvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input m_axi_awready;
  input err_wready;
  input \gen_write.aw_cnt_reg[5] ;
  input \s_axi_awaddr[24] ;
  input \s_axi_awaddr[15] ;
  input \gen_write.aw_cnt_reg[1] ;
  input w_mask0;
  input \aresetn_d_reg[1]_2 ;
  input w_mask;
  input [34:0]\s_axi_awprot[2] ;
  input \gen_write.w_state_reg[1]_0 ;

  wire [4:0]D;
  wire [5:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \aresetn_d_reg[1]_2 ;
  wire err_bvalid;
  wire err_wready;
  wire \gen_axilite.gen_write.s_axi_awready_i ;
  wire \gen_axilite.gen_write.s_axi_awready_i_reg ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_reg ;
  wire \gen_write.aw_cnt[4]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_4_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt[5]_i_6_n_0 ;
  wire [0:0]\gen_write.aw_cnt_reg[0] ;
  wire \gen_write.aw_cnt_reg[1] ;
  wire \gen_write.aw_cnt_reg[4] ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire \gen_write.w_state_reg[1] ;
  wire \gen_write.w_state_reg[1]_0 ;
  wire [34:0]\m_axi_awprot[2] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire \m_payload_i[31]_i_1_n_0 ;
  wire \m_payload_i[32]_i_10_n_0 ;
  wire \m_payload_i[32]_i_3_n_0 ;
  wire \m_payload_i_reg[32]_0 ;
  wire \m_payload_i_reg[32]_1 ;
  wire \m_payload_i_reg[32]_2 ;
  wire \m_payload_i_reg[32]_3 ;
  wire \m_payload_i_reg[32]_4 ;
  wire \m_payload_i_reg[32]_5 ;
  wire \m_payload_i_reg[32]_6 ;
  wire m_valid_i_i_2_n_0;
  wire m_valid_i_i_3_n_0;
  wire [32:32]mr_axi_awaddr;
  wire mr_axi_awvalid;
  wire \s_axi_awaddr[15] ;
  wire \s_axi_awaddr[24] ;
  wire [34:0]\s_axi_awprot[2] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire sr_axi_awready;
  wire w_mask;
  wire w_mask0;
  wire w_match;
  wire [1:0]w_state;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg[1] ),
        .I1(aresetn),
        .O(\aresetn_d_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDFFF00002000)) 
    \gen_axilite.gen_write.s_axi_awready_i_i_1 
       (.I0(s_axi_wvalid),
        .I1(mr_axi_awaddr),
        .I2(mr_axi_awvalid),
        .I3(\gen_write.w_state_reg[1]_0 ),
        .I4(err_bvalid),
        .I5(err_wready),
        .O(\gen_axilite.gen_write.s_axi_awready_i_reg ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_i_2 
       (.I0(err_bvalid),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(mr_axi_awvalid),
        .I4(mr_axi_awaddr),
        .I5(s_axi_wvalid),
        .O(\gen_axilite.gen_write.s_axi_awready_i ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h1511000000000000)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(\gen_write.aw_cnt_reg[5] ),
        .I1(\s_axi_awaddr[15] ),
        .I2(\m_payload_i_reg[32]_2 ),
        .I3(\m_payload_i_reg[32]_1 ),
        .I4(sr_axi_awready),
        .I5(w_mask0),
        .O(\gen_write.aw_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(s_axi_awvalid),
        .I1(Q[5]),
        .I2(sr_axi_awready),
        .I3(\m_payload_i_reg[32]_0 ),
        .I4(\gen_write.aw_cnt_reg[5] ),
        .O(\gen_write.aw_cnt_reg[0] ));
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_write.aw_cnt[5]_i_11 
       (.I0(\s_axi_awprot[2] [28]),
        .I1(\s_axi_awprot[2] [22]),
        .I2(\s_axi_awprot[2] [24]),
        .O(\gen_write.aw_cnt_reg[4] ));
  LUT6 #(
    .INIT(64'h6AAAAAAA6AAAAAA9)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .I5(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0045000000000000)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(\gen_write.aw_cnt[5]_i_6_n_0 ),
        .I1(\s_axi_awaddr[24] ),
        .I2(\s_axi_awaddr[15] ),
        .I3(\gen_write.aw_cnt_reg[5] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\gen_write.aw_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000455FFFFFFFF)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(\gen_write.aw_cnt[5]_i_6_n_0 ),
        .I1(\m_payload_i_reg[32]_1 ),
        .I2(\m_payload_i_reg[32]_2 ),
        .I3(\s_axi_awaddr[15] ),
        .I4(\gen_write.aw_cnt_reg[5] ),
        .I5(\gen_write.aw_cnt_reg[1] ),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_write.aw_cnt[5]_i_6 
       (.I0(sr_axi_awready),
        .I1(Q[5]),
        .I2(s_axi_awvalid),
        .O(\gen_write.aw_cnt[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D000D000000)) 
    \gen_write.w_mask_i_1 
       (.I0(s_axi_awready),
        .I1(\m_payload_i_reg[32]_0 ),
        .I2(\gen_write.w_state_reg[0]_0 ),
        .I3(\aresetn_d_reg[1]_2 ),
        .I4(w_mask),
        .I5(w_mask0),
        .O(\gen_write.w_mask_reg ));
  LUT6 #(
    .INIT(64'h1AFAFFFF1AFA1AFA)) 
    \gen_write.w_state[0]_i_1 
       (.I0(\gen_write.w_state_reg[0]_0 ),
        .I1(\gen_axilite.gen_write.s_axi_bvalid_i_reg ),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .I4(mr_axi_awaddr),
        .I5(mr_axi_awvalid),
        .O(\gen_write.w_state_reg[0] ));
  LUT6 #(
    .INIT(64'h15A010A015A015A0)) 
    \gen_write.w_state[1]_i_1 
       (.I0(\gen_write.w_state_reg[0]_0 ),
        .I1(\gen_axilite.gen_write.s_axi_bvalid_i_reg ),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .I4(mr_axi_awaddr),
        .I5(mr_axi_awvalid),
        .O(\gen_write.w_state_reg[1] ));
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_awvalid_INST_0
       (.I0(mr_axi_awaddr),
        .I1(mr_axi_awvalid),
        .I2(w_state[0]),
        .O(m_axi_awvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1 
       (.I0(mr_axi_awvalid),
        .O(\m_payload_i[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(\m_payload_i_reg[32]_0 ),
        .O(w_match));
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[32]_i_10 
       (.I0(\s_axi_awprot[2] [16]),
        .I1(\s_axi_awprot[2] [15]),
        .O(\m_payload_i[32]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5545000055455545)) 
    \m_payload_i[32]_i_2 
       (.I0(\m_payload_i[32]_i_3_n_0 ),
        .I1(\s_axi_awprot[2] [31]),
        .I2(\s_axi_awprot[2] [29]),
        .I3(\s_axi_awprot[2] [30]),
        .I4(\m_payload_i_reg[32]_2 ),
        .I5(\m_payload_i_reg[32]_1 ),
        .O(\m_payload_i_reg[32]_0 ));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    \m_payload_i[32]_i_3 
       (.I0(\s_axi_awprot[2] [28]),
        .I1(\s_axi_awprot[2] [22]),
        .I2(\s_axi_awprot[2] [24]),
        .I3(\m_payload_i_reg[32]_5 ),
        .I4(\m_payload_i_reg[32]_6 ),
        .I5(\s_axi_awprot[2] [29]),
        .O(\m_payload_i[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \m_payload_i[32]_i_4 
       (.I0(\m_payload_i_reg[32]_3 ),
        .I1(\s_axi_awprot[2] [27]),
        .I2(\s_axi_awprot[2] [25]),
        .I3(\s_axi_awprot[2] [23]),
        .I4(\s_axi_awprot[2] [29]),
        .I5(\m_payload_i_reg[32]_4 ),
        .O(\m_payload_i_reg[32]_2 ));
  LUT6 #(
    .INIT(64'hFFAAFFABFF00FF00)) 
    \m_payload_i[32]_i_5 
       (.I0(\s_axi_awprot[2] [17]),
        .I1(\s_axi_awprot[2] [14]),
        .I2(\s_axi_awprot[2] [13]),
        .I3(\s_axi_awprot[2] [16]),
        .I4(\s_axi_awprot[2] [15]),
        .I5(\s_axi_awprot[2] [20]),
        .O(\m_payload_i_reg[32]_1 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \m_payload_i[32]_i_6 
       (.I0(\s_axi_awprot[2] [27]),
        .I1(\s_axi_awprot[2] [25]),
        .I2(\s_axi_awprot[2] [30]),
        .I3(\s_axi_awprot[2] [31]),
        .I4(\s_axi_awprot[2] [26]),
        .I5(\s_axi_awprot[2] [23]),
        .O(\m_payload_i_reg[32]_5 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \m_payload_i[32]_i_7 
       (.I0(\s_axi_awprot[2] [20]),
        .I1(\s_axi_awprot[2] [21]),
        .I2(\s_axi_awprot[2] [17]),
        .I3(\m_payload_i[32]_i_10_n_0 ),
        .I4(\s_axi_awprot[2] [18]),
        .I5(\s_axi_awprot[2] [19]),
        .O(\m_payload_i_reg[32]_6 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \m_payload_i[32]_i_8 
       (.I0(\s_axi_awprot[2] [19]),
        .I1(\s_axi_awprot[2] [18]),
        .I2(\s_axi_awprot[2] [20]),
        .I3(\s_axi_awprot[2] [17]),
        .O(\m_payload_i_reg[32]_3 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \m_payload_i[32]_i_9 
       (.I0(\gen_write.aw_cnt_reg[4] ),
        .I1(\s_axi_awprot[2] [30]),
        .I2(\s_axi_awprot[2] [21]),
        .I3(\s_axi_awprot[2] [31]),
        .I4(\s_axi_awprot[2] [26]),
        .O(\m_payload_i_reg[32]_4 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [0]),
        .Q(\m_axi_awprot[2] [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [10]),
        .Q(\m_axi_awprot[2] [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [11]),
        .Q(\m_axi_awprot[2] [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [12]),
        .Q(\m_axi_awprot[2] [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [13]),
        .Q(\m_axi_awprot[2] [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [14]),
        .Q(\m_axi_awprot[2] [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [15]),
        .Q(\m_axi_awprot[2] [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [16]),
        .Q(\m_axi_awprot[2] [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [17]),
        .Q(\m_axi_awprot[2] [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [18]),
        .Q(\m_axi_awprot[2] [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [19]),
        .Q(\m_axi_awprot[2] [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [1]),
        .Q(\m_axi_awprot[2] [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [20]),
        .Q(\m_axi_awprot[2] [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [21]),
        .Q(\m_axi_awprot[2] [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [22]),
        .Q(\m_axi_awprot[2] [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [23]),
        .Q(\m_axi_awprot[2] [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [24]),
        .Q(\m_axi_awprot[2] [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [25]),
        .Q(\m_axi_awprot[2] [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [26]),
        .Q(\m_axi_awprot[2] [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [27]),
        .Q(\m_axi_awprot[2] [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [28]),
        .Q(\m_axi_awprot[2] [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [29]),
        .Q(\m_axi_awprot[2] [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [2]),
        .Q(\m_axi_awprot[2] [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [30]),
        .Q(\m_axi_awprot[2] [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [31]),
        .Q(\m_axi_awprot[2] [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(w_match),
        .Q(mr_axi_awaddr),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [32]),
        .Q(\m_axi_awprot[2] [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [33]),
        .Q(\m_axi_awprot[2] [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [34]),
        .Q(\m_axi_awprot[2] [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [3]),
        .Q(\m_axi_awprot[2] [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [4]),
        .Q(\m_axi_awprot[2] [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [5]),
        .Q(\m_axi_awprot[2] [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [6]),
        .Q(\m_axi_awprot[2] [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [7]),
        .Q(\m_axi_awprot[2] [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [8]),
        .Q(\m_axi_awprot[2] [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awprot[2] [9]),
        .Q(\m_axi_awprot[2] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0C55)) 
    m_valid_i_i_2
       (.I0(m_valid_i_i_3_n_0),
        .I1(s_axi_awvalid),
        .I2(Q[5]),
        .I3(sr_axi_awready),
        .O(m_valid_i_i_2_n_0));
  LUT5 #(
    .INIT(32'h38080808)) 
    m_valid_i_i_3
       (.I0(m_axi_awready),
        .I1(mr_axi_awaddr),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .I4(err_wready),
        .O(m_valid_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_2_n_0),
        .Q(mr_axi_awvalid),
        .R(\aresetn_d_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(Q[5]),
        .O(s_axi_awready));
  LUT6 #(
    .INIT(64'hFFF755F700000000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_2 ),
        .I1(s_axi_awvalid),
        .I2(Q[5]),
        .I3(mr_axi_awvalid),
        .I4(m_valid_i_i_3_n_0),
        .I5(\aresetn_d_reg[1] ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(sr_axi_awready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_s02_mmu_0,axi_mmu_v2_1_13_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_13_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top inst
       (.D({s_axi_awprot,s_axi_awaddr}),
        .Q({m_axi_awprot,m_axi_awaddr}),
        .aclk(aclk),
        .aresetn(aresetn),
        .\m_axi_arprot[2] ({m_axi_arprot,m_axi_araddr}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\s_axi_arprot[2] ({s_axi_arprot,s_axi_araddr}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
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
