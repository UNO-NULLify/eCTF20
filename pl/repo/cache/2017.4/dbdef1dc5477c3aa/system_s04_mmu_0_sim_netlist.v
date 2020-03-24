// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Feb 16 18:34:14 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s04_mmu_0_sim_netlist.v
// Design      : system_s04_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave
   (err_awready,
    err_rvalid,
    err_arready,
    m_valid_i_reg,
    s_axi_bvalid,
    s_axi_wready,
    \gen_write.w_state_reg[0] ,
    \gen_read.r_state_reg[1] ,
    s_axi_rvalid,
    s_axi_rlast,
    aclk,
    \aresetn_d_reg[1] ,
    s_axi_rready,
    Q,
    \aresetn_d_reg[1]_0 ,
    w_state,
    \m_payload_i_reg[32] ,
    m_axi_awready,
    m_axi_bvalid,
    \gen_write.w_cnt_reg[0] ,
    m_axi_wready,
    \gen_write.w_state_reg[0]_0 ,
    s_axi_bready,
    m_valid_i_reg_0,
    s_axi_wlast,
    s_axi_wvalid,
    \gen_read.r_state_reg[1]_0 ,
    \gen_read.r_state_reg[0] ,
    mr_axi_arvalid,
    m_axi_rvalid,
    m_axi_rlast,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    \gen_axi.gen_read.read_cs_reg[0]_0 );
  output err_awready;
  output err_rvalid;
  output err_arready;
  output m_valid_i_reg;
  output s_axi_bvalid;
  output s_axi_wready;
  output \gen_write.w_state_reg[0] ;
  output \gen_read.r_state_reg[1] ;
  output s_axi_rvalid;
  output s_axi_rlast;
  input aclk;
  input \aresetn_d_reg[1] ;
  input s_axi_rready;
  input [8:0]Q;
  input \aresetn_d_reg[1]_0 ;
  input [1:0]w_state;
  input [0:0]\m_payload_i_reg[32] ;
  input m_axi_awready;
  input m_axi_bvalid;
  input \gen_write.w_cnt_reg[0] ;
  input m_axi_wready;
  input \gen_write.w_state_reg[0]_0 ;
  input s_axi_bready;
  input m_valid_i_reg_0;
  input s_axi_wlast;
  input s_axi_wvalid;
  input \gen_read.r_state_reg[1]_0 ;
  input \gen_read.r_state_reg[0] ;
  input mr_axi_arvalid;
  input m_axi_rvalid;
  input m_axi_rlast;
  input \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  input \gen_axi.gen_read.read_cs_reg[0]_0 ;

  wire [8:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire err_arready;
  wire err_awready;
  wire err_bvalid;
  wire err_rlast;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axi.gen_read.read_cnt[0]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[1]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[2]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[3]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[3]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[4]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[4]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[5]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[5]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[6]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[6]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[6]_i_3_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_2_n_0 ;
  wire [7:1]\gen_axi.gen_read.read_cnt_reg ;
  wire [0:0]\gen_axi.gen_read.read_cnt_reg__0 ;
  wire \gen_axi.gen_read.read_cs[0]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cs[0]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cs[0]_i_3_n_0 ;
  wire \gen_axi.gen_read.read_cs_reg[0]_0 ;
  wire \gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_arready_i_i_2_n_0 ;
  wire \gen_axi.gen_read.s_axi_rid_i ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_2_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_6_n_0 ;
  wire \gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ;
  wire [1:0]\gen_axi.gen_write.write_cs ;
  wire \gen_axi.gen_write.write_cs[0]_i_1_n_0 ;
  wire \gen_axi.gen_write.write_cs[1]_i_2_n_0 ;
  wire \gen_axi.gen_write.write_cs[1]_i_3_n_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[1] ;
  wire \gen_read.r_state_reg[1]_0 ;
  wire \gen_write.w_cnt_reg[0] ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire m_axi_awready;
  wire m_axi_bvalid;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [0:0]\m_payload_i_reg[32] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire mr_axi_arvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [1:0]w_state;

  LUT5 #(
    .INIT(32'hF04E0000)) 
    \gen_axi.gen_read.read_cnt[0]_i_1 
       (.I0(err_rvalid),
        .I1(Q[1]),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I3(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .I4(\aresetn_d_reg[1]_0 ),
        .O(\gen_axi.gen_read.read_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E44E00000000)) 
    \gen_axi.gen_read.read_cnt[1]_i_1 
       (.I0(err_rvalid),
        .I1(Q[2]),
        .I2(\gen_axi.gen_read.read_cnt_reg [1]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I4(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(\gen_axi.gen_read.read_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FD57A802)) 
    \gen_axi.gen_read.read_cnt[2]_i_1 
       (.I0(err_rvalid),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg [1]),
        .I3(\gen_axi.gen_read.read_cnt_reg [2]),
        .I4(Q[3]),
        .I5(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F75DA208)) 
    \gen_axi.gen_read.read_cnt[3]_i_1 
       (.I0(err_rvalid),
        .I1(\gen_axi.gen_read.read_cnt[3]_i_2_n_0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg [2]),
        .I3(\gen_axi.gen_read.read_cnt_reg [3]),
        .I4(Q[4]),
        .I5(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_axi.gen_read.read_cnt[3]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I1(\gen_axi.gen_read.read_cnt_reg [1]),
        .O(\gen_axi.gen_read.read_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0D782)) 
    \gen_axi.gen_read.read_cnt[4]_i_1 
       (.I0(err_rvalid),
        .I1(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg [4]),
        .I3(Q[5]),
        .I4(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.gen_read.read_cnt[4]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [3]),
        .I1(\gen_axi.gen_read.read_cnt_reg [2]),
        .I2(\gen_axi.gen_read.read_cnt_reg [1]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 ),
        .O(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6F60)) 
    \gen_axi.gen_read.read_cnt[5]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt_reg [5]),
        .I1(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ),
        .I2(err_rvalid),
        .I3(Q[6]),
        .I4(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_axi.gen_read.read_cnt[5]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [4]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg [1]),
        .I3(\gen_axi.gen_read.read_cnt_reg [2]),
        .I4(\gen_axi.gen_read.read_cnt_reg [3]),
        .O(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF002EE200000000)) 
    \gen_axi.gen_read.read_cnt[6]_i_1 
       (.I0(Q[7]),
        .I1(err_rvalid),
        .I2(\gen_axi.gen_read.read_cnt[6]_i_2_n_0 ),
        .I3(\gen_axi.gen_read.read_cnt_reg [6]),
        .I4(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(\gen_axi.gen_read.read_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.gen_read.read_cnt[6]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [3]),
        .I1(\gen_axi.gen_read.read_cnt_reg [2]),
        .I2(\gen_axi.gen_read.read_cnt_reg [1]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I4(\gen_axi.gen_read.read_cnt_reg [4]),
        .I5(\gen_axi.gen_read.read_cnt_reg [5]),
        .O(\gen_axi.gen_read.read_cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \gen_axi.gen_read.read_cnt[6]_i_3 
       (.I0(s_axi_rready),
        .I1(\gen_axi.gen_read.s_axi_rlast_i_i_2_n_0 ),
        .I2(\gen_axi.gen_read.s_axi_rid_i ),
        .O(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6F60)) 
    \gen_axi.gen_read.read_cnt[7]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt_reg [7]),
        .I1(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I2(err_rvalid),
        .I3(Q[8]),
        .I4(\gen_axi.gen_read.read_cnt[6]_i_3_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_axi.gen_read.read_cnt[7]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ),
        .I1(\gen_axi.gen_read.read_cnt_reg [6]),
        .I2(\gen_axi.gen_read.read_cnt_reg [5]),
        .O(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ));
  FDRE \gen_axi.gen_read.read_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[0]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 ),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[1]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [1]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[2]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [2]),
        .R(\aresetn_d_reg[1] ));
  FDRE \gen_axi.gen_read.read_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[3]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [3]),
        .R(\aresetn_d_reg[1] ));
  FDRE \gen_axi.gen_read.read_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[4]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [4]),
        .R(\aresetn_d_reg[1] ));
  FDRE \gen_axi.gen_read.read_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[5]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [5]),
        .R(\aresetn_d_reg[1] ));
  FDRE \gen_axi.gen_read.read_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[6]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [6]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [7]),
        .R(\aresetn_d_reg[1] ));
  LUT6 #(
    .INIT(64'h00002000FFFF2000)) 
    \gen_axi.gen_read.read_cs[0]_i_1 
       (.I0(err_arready),
        .I1(Q[0]),
        .I2(mr_axi_arvalid),
        .I3(\gen_axi.gen_read.read_cs[0]_i_2_n_0 ),
        .I4(err_rvalid),
        .I5(\gen_axi.gen_read.read_cs[0]_i_3_n_0 ),
        .O(\gen_axi.gen_read.read_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_axi.gen_read.read_cs[0]_i_2 
       (.I0(\gen_read.r_state_reg[1]_0 ),
        .I1(\gen_read.r_state_reg[0] ),
        .O(\gen_axi.gen_read.read_cs[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \gen_axi.gen_read.read_cs[0]_i_3 
       (.I0(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ),
        .I1(\gen_axi.gen_read.read_cnt_reg [7]),
        .I2(s_axi_rready),
        .I3(\gen_axi.gen_read.read_cnt_reg [5]),
        .I4(\gen_axi.gen_read.read_cnt_reg [6]),
        .O(\gen_axi.gen_read.read_cs[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_read.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cs[0]_i_1_n_0 ),
        .Q(err_rvalid),
        .R(\aresetn_d_reg[1] ));
  LUT5 #(
    .INIT(32'h0000EA00)) 
    \gen_axi.gen_read.s_axi_arready_i_i_1 
       (.I0(\gen_axi.gen_read.s_axi_arready_i_i_2_n_0 ),
        .I1(err_rvalid),
        .I2(err_arready),
        .I3(\aresetn_d_reg[1]_0 ),
        .I4(\gen_axi.gen_read.s_axi_rid_i ),
        .O(\gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \gen_axi.gen_read.s_axi_arready_i_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [6]),
        .I1(\gen_axi.gen_read.read_cnt_reg [5]),
        .I2(s_axi_rready),
        .I3(\gen_axi.gen_read.read_cnt_reg [7]),
        .I4(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ),
        .I5(err_rvalid),
        .O(\gen_axi.gen_read.s_axi_arready_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \gen_axi.gen_read.s_axi_arready_i_i_3 
       (.I0(err_rvalid),
        .I1(\gen_read.r_state_reg[1]_0 ),
        .I2(\gen_read.r_state_reg[0] ),
        .I3(mr_axi_arvalid),
        .I4(Q[0]),
        .I5(err_arready),
        .O(\gen_axi.gen_read.s_axi_rid_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ),
        .Q(err_arready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h777F7770)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_1 
       (.I0(\gen_axi.gen_read.s_axi_rlast_i_i_2_n_0 ),
        .I1(\gen_axi.gen_read.read_cs_reg[0]_0 ),
        .I2(\gen_axi.gen_read.s_axi_rid_i ),
        .I3(\gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ),
        .I4(err_rlast),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_2 
       (.I0(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ),
        .I1(\gen_axi.gen_read.read_cnt_reg [6]),
        .I2(\gen_axi.gen_read.read_cnt_reg [5]),
        .I3(\gen_axi.gen_read.read_cnt_reg [7]),
        .I4(err_rvalid),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_4 
       (.I0(\gen_axi.gen_read.read_cnt_reg [2]),
        .I1(\gen_axi.gen_read.read_cnt_reg [3]),
        .I2(\gen_axi.gen_read.read_cnt_reg [4]),
        .I3(\gen_axi.gen_read.read_cnt_reg [1]),
        .I4(err_rvalid),
        .I5(\gen_axi.gen_read.s_axi_rlast_i_i_6_n_0 ),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_6 
       (.I0(\gen_axi.gen_read.read_cnt_reg [6]),
        .I1(\gen_axi.gen_read.read_cnt_reg [5]),
        .I2(s_axi_rready),
        .I3(\gen_axi.gen_read.read_cnt_reg [7]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_6_n_0 ));
  FDRE \gen_axi.gen_read.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ),
        .Q(err_rlast),
        .R(\aresetn_d_reg[1] ));
  LUT5 #(
    .INIT(32'hFFEE3022)) 
    \gen_axi.gen_write.s_axi_awready_i_i_1 
       (.I0(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I1(\gen_axi.gen_write.write_cs [0]),
        .I2(s_axi_bready),
        .I3(\gen_axi.gen_write.write_cs [1]),
        .I4(err_awready),
        .O(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ),
        .Q(err_awready),
        .R(\aresetn_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEFFFA888)) 
    \gen_axi.gen_write.s_axi_bvalid_i_i_1 
       (.I0(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ),
        .I1(\gen_axi.gen_write.write_cs [0]),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(s_axi_bready),
        .I4(err_bvalid),
        .O(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(\aresetn_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55FF0003)) 
    \gen_axi.gen_write.s_axi_wready_i_i_1 
       (.I0(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ),
        .I1(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(\gen_axi.gen_write.write_cs [0]),
        .I4(err_wready),
        .O(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ),
        .Q(err_wready),
        .R(\aresetn_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5503)) 
    \gen_axi.gen_write.write_cs[0]_i_1 
       (.I0(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ),
        .I1(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(\gen_axi.gen_write.write_cs [0]),
        .O(\gen_axi.gen_write.write_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFC50)) 
    \gen_axi.gen_write.write_cs[1]_i_2 
       (.I0(s_axi_bready),
        .I1(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(\gen_axi.gen_write.write_cs [0]),
        .O(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_axi.gen_write.write_cs[1]_i_3 
       (.I0(w_state[0]),
        .I1(w_state[1]),
        .I2(s_axi_wlast),
        .I3(s_axi_wvalid),
        .I4(\gen_axi.gen_write.write_cs [1]),
        .O(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.write_cs[0]_i_1_n_0 ),
        .Q(\gen_axi.gen_write.write_cs [0]),
        .R(\aresetn_d_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ),
        .Q(\gen_axi.gen_write.write_cs [1]),
        .R(\aresetn_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \gen_read.r_state[1]_i_3 
       (.I0(\gen_read.r_state_reg[1]_0 ),
        .I1(\gen_read.r_state_reg[0] ),
        .I2(err_rlast),
        .I3(err_rvalid),
        .I4(s_axi_rready),
        .O(\gen_read.r_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFBBBBBBBEAAAAAAA)) 
    \gen_write.w_state[1]_i_2 
       (.I0(\gen_write.w_state_reg[0]_0 ),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .I3(err_bvalid),
        .I4(s_axi_bready),
        .I5(m_valid_i_reg_0),
        .O(\gen_write.w_state_reg[0] ));
  LUT5 #(
    .INIT(32'hF07FFF7F)) 
    m_valid_i_i_2
       (.I0(err_awready),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(\m_payload_i_reg[32] ),
        .I4(m_axi_awready),
        .O(m_valid_i_reg));
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(m_axi_bvalid),
        .O(s_axi_bvalid));
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_rlast_INST_0
       (.I0(err_rlast),
        .I1(\gen_read.r_state_reg[1]_0 ),
        .I2(\gen_read.r_state_reg[0] ),
        .I3(m_axi_rlast),
        .O(s_axi_rlast));
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_rvalid_INST_0
       (.I0(err_rvalid),
        .I1(\gen_read.r_state_reg[1]_0 ),
        .I2(\gen_read.r_state_reg[0] ),
        .I3(m_axi_rvalid),
        .O(s_axi_rvalid));
  LUT5 #(
    .INIT(32'hF4440444)) 
    s_axi_wready_INST_0
       (.I0(\gen_write.w_cnt_reg[0] ),
        .I1(m_axi_wready),
        .I2(w_state[1]),
        .I3(w_state[0]),
        .I4(err_wready),
        .O(s_axi_wready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top
   (Q,
    s_axi_arready,
    \m_axi_awqos[3] ,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    m_axi_wvalid,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_rlast,
    s_axi_rresp,
    m_axi_awvalid,
    s_axi_awready,
    m_axi_arvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_bready,
    aclk,
    D,
    \s_axi_arqos[3] ,
    s_axi_awvalid,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_bresp,
    m_axi_wready,
    s_axi_wlast,
    s_axi_wvalid,
    m_axi_rdata,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_arready,
    aresetn);
  output [56:0]Q;
  output s_axi_arready;
  output [56:0]\m_axi_awqos[3] ;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  output s_axi_wready;
  output m_axi_wvalid;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [1:0]s_axi_rresp;
  output m_axi_awvalid;
  output s_axi_awready;
  output m_axi_arvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_bready;
  input aclk;
  input [56:0]D;
  input [56:0]\s_axi_arqos[3] ;
  input s_axi_awvalid;
  input m_axi_awready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;
  input m_axi_wready;
  input s_axi_wlast;
  input s_axi_wvalid;
  input [31:0]m_axi_rdata;
  input m_axi_rvalid;
  input m_axi_rlast;
  input [1:0]m_axi_rresp;
  input m_axi_arready;
  input aresetn;

  wire [56:0]D;
  wire [56:0]Q;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_3;
  wire decerr_slave_inst_n_6;
  wire decerr_slave_inst_n_7;
  wire err_arready;
  wire err_awready;
  wire err_rvalid;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[5]_i_3_n_0 ;
  wire \gen_read.ar_cnt[5]_i_7_n_0 ;
  wire \gen_read.ar_cnt[5]_i_8_n_0 ;
  wire \gen_read.ar_cnt[5]_i_9_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg__0 ;
  wire \gen_read.r_state[1]_i_2_n_0 ;
  wire \gen_read.r_state_reg_n_0_[0] ;
  wire \gen_read.r_state_reg_n_0_[1] ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire \gen_write.aw_cnt[1]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_10_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
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
  wire \gen_write.w_mask_i_2_n_0 ;
  wire \gen_write.w_state[0]_i_1_n_0 ;
  wire \gen_write.w_state[1]_i_1_n_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [56:0]\m_axi_awqos[3] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [32:32]mr_axi_araddr;
  wire mr_axi_arvalid;
  wire [32:32]mr_axi_awaddr;
  wire mr_axi_awvalid;
  wire register_slice_inst_n_1;
  wire register_slice_inst_n_135;
  wire register_slice_inst_n_136;
  wire register_slice_inst_n_138;
  wire register_slice_inst_n_139;
  wire register_slice_inst_n_140;
  wire register_slice_inst_n_142;
  wire register_slice_inst_n_143;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_63;
  wire register_slice_inst_n_64;
  wire register_slice_inst_n_65;
  wire register_slice_inst_n_66;
  wire register_slice_inst_n_67;
  wire register_slice_inst_n_68;
  wire register_slice_inst_n_69;
  wire register_slice_inst_n_70;
  wire register_slice_inst_n_71;
  wire register_slice_inst_n_72;
  wire register_slice_inst_n_73;
  wire register_slice_inst_n_74;
  wire register_slice_inst_n_76;
  wire [56:0]\s_axi_arqos[3] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wvalid;
  wire w_mask;
  wire w_mask0;
  wire [1:0]w_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave decerr_slave_inst
       (.Q({Q[51:44],mr_axi_araddr}),
        .aclk(aclk),
        .\aresetn_d_reg[1] (register_slice_inst_n_1),
        .\aresetn_d_reg[1]_0 (register_slice_inst_n_3),
        .err_arready(err_arready),
        .err_awready(err_awready),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.read_cs_reg[0]_0 (register_slice_inst_n_76),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (register_slice_inst_n_4),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg_n_0_[0] ),
        .\gen_read.r_state_reg[1] (decerr_slave_inst_n_7),
        .\gen_read.r_state_reg[1]_0 (\gen_read.r_state_reg_n_0_[1] ),
        .\gen_write.w_cnt_reg[0] (s_axi_wready_INST_0_i_1_n_0),
        .\gen_write.w_state_reg[0] (decerr_slave_inst_n_6),
        .\gen_write.w_state_reg[0]_0 (\gen_write.w_mask_i_2_n_0 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .\m_payload_i_reg[32] (mr_axi_awaddr),
        .m_valid_i_reg(decerr_slave_inst_n_3),
        .m_valid_i_reg_0(register_slice_inst_n_143),
        .mr_axi_arvalid(mr_axi_arvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .w_state(w_state));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(\gen_read.r_state[1]_i_2_n_0 ),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(m_axi_rlast),
        .O(\gen_read.ar_cnt[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \gen_read.ar_cnt[5]_i_7 
       (.I0(\s_axi_arqos[3] [22]),
        .I1(\s_axi_arqos[3] [27]),
        .I2(\s_axi_arqos[3] [25]),
        .O(\gen_read.ar_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_read.ar_cnt[5]_i_8 
       (.I0(\gen_read.ar_cnt_reg__0 [1]),
        .I1(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_read.ar_cnt[5]_i_9 
       (.I0(\gen_read.ar_cnt_reg__0 [1]),
        .I1(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[5]_i_9_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_142),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg__0 [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_142),
        .D(register_slice_inst_n_74),
        .Q(\gen_read.ar_cnt_reg__0 [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_142),
        .D(register_slice_inst_n_73),
        .Q(\gen_read.ar_cnt_reg__0 [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_142),
        .D(register_slice_inst_n_72),
        .Q(\gen_read.ar_cnt_reg__0 [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_142),
        .D(register_slice_inst_n_71),
        .Q(\gen_read.ar_cnt_reg__0 [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_142),
        .D(register_slice_inst_n_70),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .R(register_slice_inst_n_1));
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
        .D(register_slice_inst_n_135),
        .Q(\gen_read.r_state_reg_n_0_[0] ),
        .R(register_slice_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_136),
        .Q(\gen_read.r_state_reg_n_0_[1] ),
        .R(register_slice_inst_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write.aw_cnt[1]_i_2 
       (.I0(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .O(\gen_write.aw_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_write.aw_cnt[5]_i_10 
       (.I0(\gen_write.aw_cnt_reg__0 [1]),
        .I1(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(\gen_write.aw_cnt_reg__0 [5]),
        .I1(\gen_write.aw_cnt_reg__0 [4]),
        .I2(\gen_write.aw_cnt_reg__0 [2]),
        .I3(\gen_write.aw_cnt_reg__0 [3]),
        .I4(\gen_write.aw_cnt_reg__0 [1]),
        .I5(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .O(w_mask0));
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_write.aw_cnt[5]_i_8 
       (.I0(D[22]),
        .I1(D[27]),
        .I2(D[25]),
        .O(\gen_write.aw_cnt[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_write.aw_cnt[5]_i_9 
       (.I0(\gen_write.aw_cnt_reg__0 [1]),
        .I1(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[5]_i_9_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_139),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg__0 [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_139),
        .D(register_slice_inst_n_67),
        .Q(\gen_write.aw_cnt_reg__0 [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_139),
        .D(register_slice_inst_n_66),
        .Q(\gen_write.aw_cnt_reg__0 [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_139),
        .D(register_slice_inst_n_65),
        .Q(\gen_write.aw_cnt_reg__0 [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_139),
        .D(register_slice_inst_n_64),
        .Q(\gen_write.aw_cnt_reg__0 [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_139),
        .D(register_slice_inst_n_63),
        .Q(\gen_write.aw_cnt_reg__0 [5]),
        .R(register_slice_inst_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF00100010FFEF)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(register_slice_inst_n_138),
        .I2(w_mask0),
        .I3(w_mask),
        .I4(\gen_write.w_cnt_reg__0 [0]),
        .I5(\gen_write.w_cnt_reg__0 [1]),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [3]),
        .I1(\gen_write.w_cnt_reg__0 [2]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt_reg__0 [1]),
        .I4(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [4]),
        .I1(\gen_write.w_cnt_reg__0 [3]),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [1]),
        .I4(\gen_write.w_cnt_reg__0 [0]),
        .I5(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000404)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(w_mask),
        .I1(w_mask0),
        .I2(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I3(register_slice_inst_n_68),
        .I4(register_slice_inst_n_69),
        .I5(\gen_write.w_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(w_mask),
        .I2(\gen_write.aw_cnt_reg__0 [5]),
        .I3(s_axi_awvalid),
        .I4(register_slice_inst_n_138),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA95AAAAAA9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [3]),
        .I4(\gen_write.w_cnt_reg__0 [4]),
        .I5(\gen_write.w_cnt[5]_i_5_n_0 ),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(w_state[0]),
        .I1(w_state[1]),
        .I2(s_axi_wready_INST_0_i_1_n_0),
        .I3(m_axi_wready),
        .I4(s_axi_wvalid),
        .I5(s_axi_wlast),
        .O(\gen_write.w_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000051FFFFFFFF)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(register_slice_inst_n_69),
        .I2(register_slice_inst_n_68),
        .I3(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I4(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I5(\gen_write.w_cnt[5]_i_7_n_0 ),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(\gen_write.w_cnt[5]_i_8_n_0 ),
        .I1(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I2(register_slice_inst_n_69),
        .I3(register_slice_inst_n_68),
        .I4(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I5(\gen_write.w_cnt[5]_i_6_n_0 ),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \gen_write.w_cnt[5]_i_6 
       (.I0(w_mask),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .I2(s_axi_awvalid),
        .O(\gen_write.w_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_write.w_cnt[5]_i_7 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \gen_write.w_cnt[5]_i_8 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_8_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [5]),
        .R(register_slice_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_write.w_mask_i_2 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .I3(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_mask_i_2_n_0 ));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_140),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h4FFFFF00)) 
    \gen_write.w_state[0]_i_1 
       (.I0(mr_axi_awaddr),
        .I1(mr_axi_awvalid),
        .I2(w_state[1]),
        .I3(decerr_slave_inst_n_6),
        .I4(w_state[0]),
        .O(\gen_write.w_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \gen_write.w_state[1]_i_1 
       (.I0(w_state[0]),
        .I1(decerr_slave_inst_n_6),
        .I2(w_state[1]),
        .O(\gen_write.w_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_write.w_state[0]_i_1_n_0 ),
        .Q(w_state[0]),
        .R(register_slice_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_write.w_state[1]_i_1_n_0 ),
        .Q(w_state[1]),
        .R(register_slice_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(s_axi_wready_INST_0_i_1_n_0),
        .I2(w_state[1]),
        .I3(w_state[0]),
        .O(m_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_63,register_slice_inst_n_64,register_slice_inst_n_65,register_slice_inst_n_66,register_slice_inst_n_67}),
        .E(register_slice_inst_n_139),
        .Q({\m_axi_awqos[3] [56:32],mr_axi_awaddr,\m_axi_awqos[3] [31:0]}),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_arready(err_arready),
        .err_awready(err_awready),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.s_axi_rlast_i_reg (register_slice_inst_n_76),
        .\gen_axi.gen_write.s_axi_awready_i_reg (register_slice_inst_n_4),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (decerr_slave_inst_n_3),
        .\gen_read.ar_cnt_reg[0] (register_slice_inst_n_142),
        .\gen_read.ar_cnt_reg[0]_0 (\gen_read.ar_cnt[5]_i_3_n_0 ),
        .\gen_read.ar_cnt_reg[0]_1 (\gen_read.r_state[1]_i_2_n_0 ),
        .\gen_read.ar_cnt_reg[1] (\gen_read.ar_cnt[5]_i_9_n_0 ),
        .\gen_read.ar_cnt_reg[1]_0 (\gen_read.ar_cnt[5]_i_8_n_0 ),
        .\gen_read.ar_cnt_reg[5] ({register_slice_inst_n_70,register_slice_inst_n_71,register_slice_inst_n_72,register_slice_inst_n_73,register_slice_inst_n_74}),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg__0 ),
        .\gen_read.r_state_reg[0] (register_slice_inst_n_135),
        .\gen_read.r_state_reg[0]_0 (\gen_read.r_state_reg_n_0_[0] ),
        .\gen_read.r_state_reg[1] (register_slice_inst_n_136),
        .\gen_read.r_state_reg[1]_0 (\gen_read.r_state_reg_n_0_[1] ),
        .\gen_read.r_state_reg[1]_1 (decerr_slave_inst_n_7),
        .\gen_write.aw_cnt_reg[1] (\gen_write.aw_cnt[5]_i_10_n_0 ),
        .\gen_write.aw_cnt_reg[1]_0 (\gen_write.aw_cnt[5]_i_9_n_0 ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg__0 ),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt[1]_i_2_n_0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt[5]_i_3_n_0 ),
        .\gen_write.w_mask_reg (register_slice_inst_n_140),
        .\gen_write.w_state_reg[0] (register_slice_inst_n_143),
        .\gen_write.w_state_reg[0]_0 (\gen_write.w_mask_i_2_n_0 ),
        .\m_axi_arqos[3] ({Q[56:32],mr_axi_araddr,Q[31:0]}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[32] (register_slice_inst_n_68),
        .\m_payload_i_reg[32]_0 (register_slice_inst_n_69),
        .\m_payload_i_reg[32]_1 (register_slice_inst_n_138),
        .m_valid_i_reg(register_slice_inst_n_1),
        .m_valid_i_reg_0(register_slice_inst_n_3),
        .mr_axi_arvalid(mr_axi_arvalid),
        .mr_axi_awvalid(mr_axi_awvalid),
        .\s_axi_araddr[25] (\gen_read.ar_cnt[5]_i_7_n_0 ),
        .\s_axi_arqos[3] (\s_axi_arqos[3] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_awaddr[25] (\gen_write.aw_cnt[5]_i_8_n_0 ),
        .\s_axi_awqos[3] (D),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .w_mask(w_mask),
        .w_mask0(w_mask0),
        .w_state(w_state));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(\gen_read.r_state_reg_n_0_[0] ),
        .I2(\gen_read.r_state_reg_n_0_[1] ),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
   (mr_axi_awvalid,
    m_valid_i_reg,
    mr_axi_arvalid,
    m_valid_i_reg_0,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    Q,
    D,
    \m_payload_i_reg[32] ,
    \m_payload_i_reg[32]_0 ,
    \gen_read.ar_cnt_reg[5] ,
    s_axi_arready,
    \gen_axi.gen_read.s_axi_rlast_i_reg ,
    \m_axi_arqos[3] ,
    \gen_read.r_state_reg[0] ,
    \gen_read.r_state_reg[1] ,
    m_axi_awvalid,
    \m_payload_i_reg[32]_1 ,
    E,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    \gen_read.ar_cnt_reg[0] ,
    \gen_write.w_state_reg[0] ,
    m_axi_arvalid,
    aclk,
    aresetn,
    err_awready,
    w_state,
    \gen_write.aw_cnt_reg[5] ,
    \s_axi_awaddr[25] ,
    w_mask0,
    \gen_write.aw_cnt_reg[5]_0 ,
    \gen_read.ar_cnt_reg[5]_0 ,
    \gen_read.ar_cnt_reg[0]_0 ,
    \s_axi_araddr[25] ,
    s_axi_arvalid,
    err_rvalid,
    \gen_read.r_state_reg[1]_0 ,
    \gen_read.r_state_reg[0]_0 ,
    \gen_read.r_state_reg[1]_1 ,
    \gen_read.ar_cnt_reg[0]_1 ,
    s_axi_awvalid,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    m_axi_arready,
    err_arready,
    \gen_write.aw_cnt_reg[1] ,
    \gen_write.aw_cnt_reg[1]_0 ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_write.aw_cnt_reg[5]_1 ,
    \gen_write.w_state_reg[0]_0 ,
    w_mask,
    \s_axi_awqos[3] ,
    \gen_read.ar_cnt_reg[1] ,
    \gen_read.ar_cnt_reg[1]_0 ,
    \s_axi_arqos[3] );
  output mr_axi_awvalid;
  output m_valid_i_reg;
  output mr_axi_arvalid;
  output m_valid_i_reg_0;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output [57:0]Q;
  output [4:0]D;
  output \m_payload_i_reg[32] ;
  output \m_payload_i_reg[32]_0 ;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output s_axi_arready;
  output \gen_axi.gen_read.s_axi_rlast_i_reg ;
  output [57:0]\m_axi_arqos[3] ;
  output \gen_read.r_state_reg[0] ;
  output \gen_read.r_state_reg[1] ;
  output m_axi_awvalid;
  output \m_payload_i_reg[32]_1 ;
  output [0:0]E;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output [0:0]\gen_read.ar_cnt_reg[0] ;
  output \gen_write.w_state_reg[0] ;
  output m_axi_arvalid;
  input aclk;
  input aresetn;
  input err_awready;
  input [1:0]w_state;
  input [5:0]\gen_write.aw_cnt_reg[5] ;
  input \s_axi_awaddr[25] ;
  input w_mask0;
  input \gen_write.aw_cnt_reg[5]_0 ;
  input [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  input \gen_read.ar_cnt_reg[0]_0 ;
  input \s_axi_araddr[25] ;
  input s_axi_arvalid;
  input err_rvalid;
  input \gen_read.r_state_reg[1]_0 ;
  input \gen_read.r_state_reg[0]_0 ;
  input \gen_read.r_state_reg[1]_1 ;
  input \gen_read.ar_cnt_reg[0]_1 ;
  input s_axi_awvalid;
  input \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  input m_axi_arready;
  input err_arready;
  input \gen_write.aw_cnt_reg[1] ;
  input \gen_write.aw_cnt_reg[1]_0 ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input \gen_write.w_state_reg[0]_0 ;
  input w_mask;
  input [56:0]\s_axi_awqos[3] ;
  input \gen_read.ar_cnt_reg[1] ;
  input \gen_read.ar_cnt_reg[1]_0 ;
  input [56:0]\s_axi_arqos[3] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [57:0]Q;
  wire aclk;
  wire aresetn;
  wire \aw.aw_pipe_n_1 ;
  wire \aw.aw_pipe_n_73 ;
  wire err_arready;
  wire err_awready;
  wire err_rvalid;
  wire \gen_axi.gen_read.s_axi_rlast_i_reg ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire [0:0]\gen_read.ar_cnt_reg[0] ;
  wire \gen_read.ar_cnt_reg[0]_0 ;
  wire \gen_read.ar_cnt_reg[0]_1 ;
  wire \gen_read.ar_cnt_reg[1] ;
  wire \gen_read.ar_cnt_reg[1]_0 ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[0]_0 ;
  wire \gen_read.r_state_reg[1] ;
  wire \gen_read.r_state_reg[1]_0 ;
  wire \gen_read.r_state_reg[1]_1 ;
  wire \gen_write.aw_cnt_reg[1] ;
  wire \gen_write.aw_cnt_reg[1]_0 ;
  wire [5:0]\gen_write.aw_cnt_reg[5] ;
  wire \gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire [57:0]\m_axi_arqos[3] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire \m_payload_i_reg[32] ;
  wire \m_payload_i_reg[32]_0 ;
  wire \m_payload_i_reg[32]_1 ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire mr_axi_arvalid;
  wire mr_axi_awvalid;
  wire \s_axi_araddr[25] ;
  wire [56:0]\s_axi_arqos[3] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire \s_axi_awaddr[25] ;
  wire [56:0]\s_axi_awqos[3] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire w_mask;
  wire w_mask0;
  wire [1:0]w_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice \ar.ar_pipe 
       (.aclk(aclk),
        .\aresetn_d_reg[0] (\aw.aw_pipe_n_73 ),
        .\aresetn_d_reg[0]_0 (\aw.aw_pipe_n_1 ),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.s_axi_rlast_i_reg (\gen_axi.gen_read.s_axi_rlast_i_reg ),
        .\gen_read.ar_cnt_reg[0] (\gen_read.ar_cnt_reg[0] ),
        .\gen_read.ar_cnt_reg[0]_0 (\gen_read.ar_cnt_reg[0]_0 ),
        .\gen_read.ar_cnt_reg[0]_1 (\gen_read.ar_cnt_reg[0]_1 ),
        .\gen_read.ar_cnt_reg[1] (\gen_read.ar_cnt_reg[1] ),
        .\gen_read.ar_cnt_reg[1]_0 (\gen_read.ar_cnt_reg[1]_0 ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg[5]_0 ),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg[0] ),
        .\gen_read.r_state_reg[0]_0 (\gen_read.r_state_reg[0]_0 ),
        .\gen_read.r_state_reg[1] (mr_axi_arvalid),
        .\gen_read.r_state_reg[1]_0 (\gen_read.r_state_reg[1] ),
        .\gen_read.r_state_reg[1]_1 (\gen_read.r_state_reg[1]_0 ),
        .\gen_read.r_state_reg[1]_2 (\gen_read.r_state_reg[1]_1 ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .\gen_write.w_state_reg[0] (\gen_write.w_state_reg[0]_0 ),
        .\m_axi_arqos[3] (\m_axi_arqos[3] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .\s_axi_araddr[25] (\s_axi_araddr[25] ),
        .\s_axi_arqos[3] (\s_axi_arqos[3] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_awaddr[30] (\m_payload_i_reg[32]_1 ),
        .s_axi_awready(s_axi_awready),
        .w_mask(w_mask),
        .w_mask0(w_mask0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (\aw.aw_pipe_n_1 ),
        .\aresetn_d_reg[1]_0 (\aw.aw_pipe_n_73 ),
        .\aresetn_d_reg[1]_1 (m_valid_i_reg),
        .\aresetn_d_reg[1]_2 (m_valid_i_reg_0),
        .err_awready(err_awready),
        .\gen_axi.gen_write.s_axi_awready_i_reg (\gen_axi.gen_write.s_axi_awready_i_reg ),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .\gen_write.aw_cnt_reg[1] (\gen_write.aw_cnt_reg[1] ),
        .\gen_write.aw_cnt_reg[1]_0 (\gen_write.aw_cnt_reg[1]_0 ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt_reg[5]_0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt_reg[5]_1 ),
        .\gen_write.w_state_reg[0] (\gen_write.w_state_reg[0] ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[0]_0 (mr_axi_awvalid),
        .\m_payload_i_reg[32]_0 (\m_payload_i_reg[32] ),
        .\m_payload_i_reg[32]_1 (\m_payload_i_reg[32]_0 ),
        .\m_payload_i_reg[32]_2 (\m_payload_i_reg[32]_1 ),
        .\s_axi_awaddr[25] (\s_axi_awaddr[25] ),
        .\s_axi_awqos[3] (\s_axi_awqos[3] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .w_mask0(w_mask0),
        .w_state(w_state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice
   (\gen_read.r_state_reg[1] ,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    \gen_read.ar_cnt_reg[5] ,
    s_axi_arready,
    \gen_axi.gen_read.s_axi_rlast_i_reg ,
    \m_axi_arqos[3] ,
    \gen_read.r_state_reg[0] ,
    \gen_read.r_state_reg[1]_0 ,
    \gen_write.w_mask_reg ,
    \gen_read.ar_cnt_reg[0] ,
    m_axi_arvalid,
    aclk,
    \aresetn_d_reg[0] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    \gen_read.ar_cnt_reg[0]_0 ,
    \s_axi_araddr[25] ,
    s_axi_arvalid,
    err_rvalid,
    \gen_read.r_state_reg[1]_1 ,
    \gen_read.r_state_reg[0]_0 ,
    \gen_read.r_state_reg[1]_2 ,
    \gen_read.ar_cnt_reg[0]_1 ,
    m_axi_arready,
    err_arready,
    \gen_write.w_state_reg[0] ,
    w_mask,
    w_mask0,
    \s_axi_awaddr[30] ,
    s_axi_awready,
    \gen_read.ar_cnt_reg[1] ,
    \gen_read.ar_cnt_reg[1]_0 ,
    \s_axi_arqos[3] ,
    \aresetn_d_reg[0]_0 );
  output \gen_read.r_state_reg[1] ;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output s_axi_arready;
  output \gen_axi.gen_read.s_axi_rlast_i_reg ;
  output [57:0]\m_axi_arqos[3] ;
  output \gen_read.r_state_reg[0] ;
  output \gen_read.r_state_reg[1]_0 ;
  output \gen_write.w_mask_reg ;
  output [0:0]\gen_read.ar_cnt_reg[0] ;
  output m_axi_arvalid;
  input aclk;
  input \aresetn_d_reg[0] ;
  input [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  input \gen_read.ar_cnt_reg[0]_0 ;
  input \s_axi_araddr[25] ;
  input s_axi_arvalid;
  input err_rvalid;
  input \gen_read.r_state_reg[1]_1 ;
  input \gen_read.r_state_reg[0]_0 ;
  input \gen_read.r_state_reg[1]_2 ;
  input \gen_read.ar_cnt_reg[0]_1 ;
  input m_axi_arready;
  input err_arready;
  input \gen_write.w_state_reg[0] ;
  input w_mask;
  input w_mask0;
  input \s_axi_awaddr[30] ;
  input s_axi_awready;
  input \gen_read.ar_cnt_reg[1] ;
  input \gen_read.ar_cnt_reg[1]_0 ;
  input [56:0]\s_axi_arqos[3] ;
  input \aresetn_d_reg[0]_0 ;

  wire aclk;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[0]_0 ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_5_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_reg ;
  wire \gen_read.ar_cnt[4]_i_2_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_5_n_0 ;
  wire \gen_read.ar_cnt[5]_i_6_n_0 ;
  wire [0:0]\gen_read.ar_cnt_reg[0] ;
  wire \gen_read.ar_cnt_reg[0]_0 ;
  wire \gen_read.ar_cnt_reg[0]_1 ;
  wire \gen_read.ar_cnt_reg[1] ;
  wire \gen_read.ar_cnt_reg[1]_0 ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.r_state_reg[0] ;
  wire \gen_read.r_state_reg[0]_0 ;
  wire \gen_read.r_state_reg[1] ;
  wire \gen_read.r_state_reg[1]_0 ;
  wire \gen_read.r_state_reg[1]_1 ;
  wire \gen_read.r_state_reg[1]_2 ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_state_reg[0] ;
  wire [57:0]\m_axi_arqos[3] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire \m_payload_i[31]_i_1__0_n_0 ;
  wire \m_payload_i[32]_i_2__0_n_0 ;
  wire \m_payload_i[32]_i_3__0_n_0 ;
  wire \m_payload_i[32]_i_4__0_n_0 ;
  wire \m_payload_i[32]_i_5__0_n_0 ;
  wire \m_payload_i[32]_i_6__0_n_0 ;
  wire \m_payload_i[32]_i_7__0_n_0 ;
  wire \m_payload_i[32]_i_8__0_n_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire m_valid_i_i_2__0_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire r_match;
  wire \s_axi_araddr[25] ;
  wire [56:0]\s_axi_arqos[3] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire \s_axi_awaddr[30] ;
  wire s_axi_awready;
  wire s_ready_i_i_1_n_0;
  wire sr_axi_arready;
  wire w_mask;
  wire w_mask0;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[0] ),
        .Q(m_valid_i_reg_1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_3 
       (.I0(err_rvalid),
        .I1(\gen_axi.gen_read.s_axi_rlast_i_i_5_n_0 ),
        .I2(\m_axi_arqos[3] [46]),
        .I3(\m_axi_arqos[3] [45]),
        .I4(\m_axi_arqos[3] [48]),
        .I5(\m_axi_arqos[3] [47]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_reg ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_5 
       (.I0(\m_axi_arqos[3] [52]),
        .I1(\m_axi_arqos[3] [51]),
        .I2(\m_axi_arqos[3] [50]),
        .I3(\m_axi_arqos[3] [49]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_axi.gen_write.write_cs[1]_i_1 
       (.I0(m_valid_i_reg_1),
        .O(m_valid_i_reg_0));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I1(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [1]),
        .O(\gen_read.ar_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I1(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I2(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I3(\gen_read.ar_cnt_reg[5]_0 [1]),
        .O(\gen_read.ar_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I1(\gen_read.ar_cnt_reg[5]_0 [1]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I3(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I4(\gen_read.ar_cnt_reg[5]_0 [3]),
        .O(\gen_read.ar_cnt_reg[5] [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [4]),
        .I1(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I2(\gen_read.ar_cnt_reg[5]_0 [1]),
        .I3(\gen_read.ar_cnt_reg[5]_0 [0]),
        .I4(\gen_read.ar_cnt_reg[5]_0 [3]),
        .I5(\gen_read.ar_cnt_reg[5]_0 [2]),
        .O(\gen_read.ar_cnt_reg[5] [3]));
  LUT6 #(
    .INIT(64'h8A00000000000000)) 
    \gen_read.ar_cnt[4]_i_2 
       (.I0(\gen_read.ar_cnt_reg[0]_0 ),
        .I1(\m_payload_i[32]_i_3__0_n_0 ),
        .I2(\m_payload_i[32]_i_4__0_n_0 ),
        .I3(\s_axi_araddr[25] ),
        .I4(s_axi_arvalid),
        .I5(s_axi_arready),
        .O(\gen_read.ar_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h55655555)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(\gen_read.ar_cnt_reg[0]_0 ),
        .I1(\m_payload_i[32]_i_2__0_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I4(sr_axi_arready),
        .O(\gen_read.ar_cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h6AAAAAA96AAAAAAA)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I1(\gen_read.ar_cnt_reg[5]_0 [4]),
        .I2(\gen_read.ar_cnt_reg[5]_0 [2]),
        .I3(\gen_read.ar_cnt_reg[5]_0 [3]),
        .I4(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I5(\gen_read.ar_cnt[5]_i_5_n_0 ),
        .O(\gen_read.ar_cnt_reg[5] [4]));
  LUT6 #(
    .INIT(64'h0000000044040000)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(\gen_read.ar_cnt[5]_i_6_n_0 ),
        .I1(\s_axi_araddr[25] ),
        .I2(\m_payload_i[32]_i_4__0_n_0 ),
        .I3(\m_payload_i[32]_i_3__0_n_0 ),
        .I4(\gen_read.ar_cnt_reg[0]_0 ),
        .I5(\gen_read.ar_cnt_reg[1]_0 ),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A8AAA8AAAAAAAAA)) 
    \gen_read.ar_cnt[5]_i_5 
       (.I0(\gen_read.ar_cnt_reg[1] ),
        .I1(\gen_read.ar_cnt[5]_i_6_n_0 ),
        .I2(\s_axi_araddr[25] ),
        .I3(\m_payload_i[32]_i_4__0_n_0 ),
        .I4(\m_payload_i[32]_i_3__0_n_0 ),
        .I5(\gen_read.ar_cnt_reg[0]_0 ),
        .O(\gen_read.ar_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_read.ar_cnt[5]_i_6 
       (.I0(s_axi_arvalid),
        .I1(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I2(sr_axi_arready),
        .O(\gen_read.ar_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2FFFFF22)) 
    \gen_read.r_state[0]_i_1 
       (.I0(\gen_read.r_state_reg[1] ),
        .I1(\m_axi_arqos[3] [32]),
        .I2(\gen_read.r_state_reg[1]_1 ),
        .I3(\gen_read.r_state_reg[0]_0 ),
        .I4(\gen_read.r_state_reg[1]_2 ),
        .O(\gen_read.r_state_reg[0] ));
  LUT6 #(
    .INIT(64'h22FF0000FFF0DD00)) 
    \gen_read.r_state[1]_i_1 
       (.I0(\gen_read.r_state_reg[1] ),
        .I1(\m_axi_arqos[3] [32]),
        .I2(\gen_read.ar_cnt_reg[0]_1 ),
        .I3(\gen_read.r_state_reg[1]_1 ),
        .I4(\gen_read.r_state_reg[0]_0 ),
        .I5(\gen_read.r_state_reg[1]_2 ),
        .O(\gen_read.r_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4440000044404440)) 
    \gen_write.w_mask_i_1 
       (.I0(\gen_write.w_state_reg[0] ),
        .I1(m_valid_i_reg_1),
        .I2(w_mask),
        .I3(w_mask0),
        .I4(\s_axi_awaddr[30] ),
        .I5(s_axi_awready),
        .O(\gen_write.w_mask_reg ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_arvalid_INST_0
       (.I0(\m_axi_arqos[3] [32]),
        .I1(\gen_read.r_state_reg[1] ),
        .I2(\gen_read.r_state_reg[0]_0 ),
        .O(m_axi_arvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1__0 
       (.I0(\gen_read.r_state_reg[1] ),
        .O(\m_payload_i[31]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1__0 
       (.I0(\m_payload_i[32]_i_2__0_n_0 ),
        .O(r_match));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \m_payload_i[32]_i_2__0 
       (.I0(\m_payload_i[32]_i_3__0_n_0 ),
        .I1(\m_payload_i[32]_i_4__0_n_0 ),
        .I2(\s_axi_arqos[3] [25]),
        .I3(\s_axi_arqos[3] [27]),
        .I4(\s_axi_arqos[3] [22]),
        .O(\m_payload_i[32]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \m_payload_i[32]_i_3__0 
       (.I0(\m_payload_i[32]_i_5__0_n_0 ),
        .I1(\m_payload_i[32]_i_6__0_n_0 ),
        .I2(\s_axi_arqos[3] [23]),
        .I3(\s_axi_arqos[3] [31]),
        .I4(\s_axi_arqos[3] [26]),
        .I5(\s_axi_arqos[3] [28]),
        .O(\m_payload_i[32]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBBA)) 
    \m_payload_i[32]_i_4__0 
       (.I0(\m_payload_i[32]_i_7__0_n_0 ),
        .I1(\s_axi_arqos[3] [29]),
        .I2(\m_payload_i[32]_i_8__0_n_0 ),
        .I3(\s_axi_arqos[3] [20]),
        .I4(\s_axi_arqos[3] [15]),
        .I5(\s_axi_arqos[3] [17]),
        .O(\m_payload_i[32]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEF22222222)) 
    \m_payload_i[32]_i_5__0 
       (.I0(\s_axi_arqos[3] [16]),
        .I1(\s_axi_arqos[3] [17]),
        .I2(\s_axi_arqos[3] [15]),
        .I3(\s_axi_arqos[3] [14]),
        .I4(\s_axi_arqos[3] [13]),
        .I5(\s_axi_arqos[3] [20]),
        .O(\m_payload_i[32]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \m_payload_i[32]_i_6__0 
       (.I0(\s_axi_arqos[3] [19]),
        .I1(\s_axi_arqos[3] [18]),
        .I2(\s_axi_arqos[3] [24]),
        .I3(\s_axi_arqos[3] [30]),
        .I4(\s_axi_arqos[3] [29]),
        .I5(\s_axi_arqos[3] [21]),
        .O(\m_payload_i[32]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \m_payload_i[32]_i_7__0 
       (.I0(\s_axi_arqos[3] [30]),
        .I1(\s_axi_arqos[3] [31]),
        .I2(\s_axi_arqos[3] [24]),
        .I3(\s_axi_arqos[3] [26]),
        .I4(\s_axi_arqos[3] [28]),
        .I5(\s_axi_arqos[3] [23]),
        .O(\m_payload_i[32]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_8__0 
       (.I0(\s_axi_arqos[3] [19]),
        .I1(\s_axi_arqos[3] [18]),
        .I2(\s_axi_arqos[3] [21]),
        .I3(\s_axi_arqos[3] [16]),
        .O(\m_payload_i[32]_i_8__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [0]),
        .Q(\m_axi_arqos[3] [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [10]),
        .Q(\m_axi_arqos[3] [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [11]),
        .Q(\m_axi_arqos[3] [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [12]),
        .Q(\m_axi_arqos[3] [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [13]),
        .Q(\m_axi_arqos[3] [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [14]),
        .Q(\m_axi_arqos[3] [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [15]),
        .Q(\m_axi_arqos[3] [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [16]),
        .Q(\m_axi_arqos[3] [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [17]),
        .Q(\m_axi_arqos[3] [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [18]),
        .Q(\m_axi_arqos[3] [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [19]),
        .Q(\m_axi_arqos[3] [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [1]),
        .Q(\m_axi_arqos[3] [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [20]),
        .Q(\m_axi_arqos[3] [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [21]),
        .Q(\m_axi_arqos[3] [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [22]),
        .Q(\m_axi_arqos[3] [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [23]),
        .Q(\m_axi_arqos[3] [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [24]),
        .Q(\m_axi_arqos[3] [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [25]),
        .Q(\m_axi_arqos[3] [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [26]),
        .Q(\m_axi_arqos[3] [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [27]),
        .Q(\m_axi_arqos[3] [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [28]),
        .Q(\m_axi_arqos[3] [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [29]),
        .Q(\m_axi_arqos[3] [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [2]),
        .Q(\m_axi_arqos[3] [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [30]),
        .Q(\m_axi_arqos[3] [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [31]),
        .Q(\m_axi_arqos[3] [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(r_match),
        .Q(\m_axi_arqos[3] [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [32]),
        .Q(\m_axi_arqos[3] [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [33]),
        .Q(\m_axi_arqos[3] [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [34]),
        .Q(\m_axi_arqos[3] [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [35]),
        .Q(\m_axi_arqos[3] [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [36]),
        .Q(\m_axi_arqos[3] [37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [37]),
        .Q(\m_axi_arqos[3] [38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [38]),
        .Q(\m_axi_arqos[3] [39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [3]),
        .Q(\m_axi_arqos[3] [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [39]),
        .Q(\m_axi_arqos[3] [40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [40]),
        .Q(\m_axi_arqos[3] [41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [41]),
        .Q(\m_axi_arqos[3] [42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [42]),
        .Q(\m_axi_arqos[3] [43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [43]),
        .Q(\m_axi_arqos[3] [44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [44]),
        .Q(\m_axi_arqos[3] [45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [45]),
        .Q(\m_axi_arqos[3] [46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [46]),
        .Q(\m_axi_arqos[3] [47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [47]),
        .Q(\m_axi_arqos[3] [48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [48]),
        .Q(\m_axi_arqos[3] [49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [4]),
        .Q(\m_axi_arqos[3] [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [49]),
        .Q(\m_axi_arqos[3] [50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [50]),
        .Q(\m_axi_arqos[3] [51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [51]),
        .Q(\m_axi_arqos[3] [52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [52]),
        .Q(\m_axi_arqos[3] [53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [53]),
        .Q(\m_axi_arqos[3] [54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [54]),
        .Q(\m_axi_arqos[3] [55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [55]),
        .Q(\m_axi_arqos[3] [56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [56]),
        .Q(\m_axi_arqos[3] [57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [5]),
        .Q(\m_axi_arqos[3] [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [6]),
        .Q(\m_axi_arqos[3] [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [7]),
        .Q(\m_axi_arqos[3] [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [8]),
        .Q(\m_axi_arqos[3] [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1__0_n_0 ),
        .D(\s_axi_arqos[3] [9]),
        .Q(\m_axi_arqos[3] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    m_valid_i_i_1__0
       (.I0(s_axi_arvalid),
        .I1(\gen_read.ar_cnt_reg[5]_0 [5]),
        .I2(sr_axi_arready),
        .I3(m_valid_i_i_2__0_n_0),
        .O(m_valid_i_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hCF77FF77)) 
    m_valid_i_i_2__0
       (.I0(m_axi_arready),
        .I1(\m_axi_arqos[3] [32]),
        .I2(err_arready),
        .I3(\gen_read.r_state_reg[0]_0 ),
        .I4(\gen_read.r_state_reg[1]_1 ),
        .O(m_valid_i_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(\gen_read.r_state_reg[1] ),
        .R(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(\gen_read.ar_cnt_reg[5]_0 [5]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'h7F7F757F00000000)) 
    s_ready_i_i_1
       (.I0(m_valid_i_reg_1),
        .I1(m_valid_i_i_2__0_n_0),
        .I2(\gen_read.r_state_reg[1] ),
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
   (\m_payload_i_reg[0]_0 ,
    \aresetn_d_reg[1] ,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    Q,
    D,
    \m_payload_i_reg[32]_0 ,
    \m_payload_i_reg[32]_1 ,
    m_axi_awvalid,
    \m_payload_i_reg[32]_2 ,
    E,
    s_axi_awready,
    \gen_write.w_state_reg[0] ,
    \aresetn_d_reg[1]_0 ,
    \aresetn_d_reg[1]_1 ,
    aclk,
    aresetn,
    err_awready,
    w_state,
    \gen_write.aw_cnt_reg[5] ,
    \s_axi_awaddr[25] ,
    w_mask0,
    \gen_write.aw_cnt_reg[5]_0 ,
    s_axi_awvalid,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    \gen_write.aw_cnt_reg[1] ,
    \gen_write.aw_cnt_reg[1]_0 ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_write.aw_cnt_reg[5]_1 ,
    \s_axi_awqos[3] ,
    \aresetn_d_reg[1]_2 );
  output \m_payload_i_reg[0]_0 ;
  output \aresetn_d_reg[1] ;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output [57:0]Q;
  output [4:0]D;
  output \m_payload_i_reg[32]_0 ;
  output \m_payload_i_reg[32]_1 ;
  output m_axi_awvalid;
  output \m_payload_i_reg[32]_2 ;
  output [0:0]E;
  output s_axi_awready;
  output \gen_write.w_state_reg[0] ;
  output \aresetn_d_reg[1]_0 ;
  input \aresetn_d_reg[1]_1 ;
  input aclk;
  input aresetn;
  input err_awready;
  input [1:0]w_state;
  input [5:0]\gen_write.aw_cnt_reg[5] ;
  input \s_axi_awaddr[25] ;
  input w_mask0;
  input \gen_write.aw_cnt_reg[5]_0 ;
  input s_axi_awvalid;
  input \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  input \gen_write.aw_cnt_reg[1] ;
  input \gen_write.aw_cnt_reg[1]_0 ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input [56:0]\s_axi_awqos[3] ;
  input \aresetn_d_reg[1]_2 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [57:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \aresetn_d_reg[1]_2 ;
  wire err_awready;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_write.aw_cnt[4]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt[5]_i_6_n_0 ;
  wire \gen_write.aw_cnt[5]_i_7_n_0 ;
  wire \gen_write.aw_cnt_reg[1] ;
  wire \gen_write.aw_cnt_reg[1]_0 ;
  wire [5:0]\gen_write.aw_cnt_reg[5] ;
  wire \gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire \gen_write.w_state_reg[0] ;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire \m_payload_i[31]_i_1_n_0 ;
  wire \m_payload_i[32]_i_5_n_0 ;
  wire \m_payload_i[32]_i_6_n_0 ;
  wire \m_payload_i[32]_i_7_n_0 ;
  wire \m_payload_i[32]_i_8_n_0 ;
  wire \m_payload_i[32]_i_9_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire \m_payload_i_reg[32]_0 ;
  wire \m_payload_i_reg[32]_1 ;
  wire \m_payload_i_reg[32]_2 ;
  wire m_valid_i_i_1_n_0;
  wire \s_axi_awaddr[25] ;
  wire [56:0]\s_axi_awqos[3] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_ready_i_i_1_n_0;
  wire sr_axi_awready;
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \gen_axi.gen_write.write_cs[0]_i_2 
       (.I0(err_awready),
        .I1(Q[32]),
        .I2(w_state[1]),
        .I3(w_state[0]),
        .I4(\m_payload_i_reg[0]_0 ),
        .O(\gen_axi.gen_write.s_axi_awready_i_reg ));
  LUT6 #(
    .INIT(64'hFFBF00400040FFBF)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_0 ),
        .I1(w_mask0),
        .I2(sr_axi_awready),
        .I3(\m_payload_i_reg[32]_2 ),
        .I4(\gen_write.aw_cnt_reg[5] [0]),
        .I5(\gen_write.aw_cnt_reg[5] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5] [2]),
        .I1(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.aw_cnt_reg[5] [0]),
        .I3(\gen_write.aw_cnt_reg[5] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I1(\gen_write.aw_cnt_reg[5] [1]),
        .I2(\gen_write.aw_cnt_reg[5] [0]),
        .I3(\gen_write.aw_cnt_reg[5] [2]),
        .I4(\gen_write.aw_cnt_reg[5] [3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5] [4]),
        .I1(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.aw_cnt_reg[5] [1]),
        .I3(\gen_write.aw_cnt_reg[5] [0]),
        .I4(\gen_write.aw_cnt_reg[5] [3]),
        .I5(\gen_write.aw_cnt_reg[5] [2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000045000000)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(\s_axi_awaddr[25] ),
        .I1(\m_payload_i_reg[32]_0 ),
        .I2(\m_payload_i_reg[32]_1 ),
        .I3(sr_axi_awready),
        .I4(w_mask0),
        .I5(\gen_write.aw_cnt_reg[5]_0 ),
        .O(\gen_write.aw_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h807F808080808080)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(s_axi_bready),
        .I1(m_axi_bvalid),
        .I2(\gen_write.aw_cnt_reg[5]_1 ),
        .I3(\m_payload_i_reg[32]_2 ),
        .I4(sr_axi_awready),
        .I5(w_mask0),
        .O(E));
  LUT6 #(
    .INIT(64'h6AAAAAA96AAAAAAA)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(\gen_write.aw_cnt_reg[5] [5]),
        .I1(\gen_write.aw_cnt_reg[5] [4]),
        .I2(\gen_write.aw_cnt_reg[5] [2]),
        .I3(\gen_write.aw_cnt_reg[5] [3]),
        .I4(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .I5(\gen_write.aw_cnt[5]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(\gen_write.aw_cnt_reg[5]_0 ),
        .I1(\gen_write.aw_cnt[5]_i_7_n_0 ),
        .I2(\m_payload_i_reg[32]_1 ),
        .I3(\m_payload_i_reg[32]_0 ),
        .I4(\s_axi_awaddr[25] ),
        .I5(\gen_write.aw_cnt_reg[1]_0 ),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554545554)) 
    \gen_write.aw_cnt[5]_i_6 
       (.I0(\gen_write.aw_cnt_reg[1] ),
        .I1(\gen_write.aw_cnt_reg[5]_0 ),
        .I2(\gen_write.aw_cnt[5]_i_7_n_0 ),
        .I3(\m_payload_i_reg[32]_1 ),
        .I4(\m_payload_i_reg[32]_0 ),
        .I5(\s_axi_awaddr[25] ),
        .O(\gen_write.aw_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_write.aw_cnt[5]_i_7 
       (.I0(sr_axi_awready),
        .I1(\gen_write.aw_cnt_reg[5] [5]),
        .I2(s_axi_awvalid),
        .O(\gen_write.aw_cnt[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.w_state[1]_i_3 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(Q[32]),
        .O(\gen_write.w_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_awvalid_INST_0
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(Q[32]),
        .I2(w_state[0]),
        .O(m_axi_awvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_1 
       (.I0(\m_payload_i_reg[0]_0 ),
        .O(\m_payload_i[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(\m_payload_i_reg[32]_2 ),
        .O(w_match));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \m_payload_i[32]_i_2 
       (.I0(\s_axi_awqos[3] [25]),
        .I1(\s_axi_awqos[3] [27]),
        .I2(\s_axi_awqos[3] [22]),
        .I3(\m_payload_i_reg[32]_0 ),
        .I4(\m_payload_i_reg[32]_1 ),
        .O(\m_payload_i_reg[32]_2 ));
  LUT6 #(
    .INIT(64'h000000000000AA08)) 
    \m_payload_i[32]_i_3 
       (.I0(\m_payload_i[32]_i_5_n_0 ),
        .I1(\s_axi_awqos[3] [16]),
        .I2(\s_axi_awqos[3] [17]),
        .I3(\s_axi_awqos[3] [20]),
        .I4(\m_payload_i[32]_i_6_n_0 ),
        .I5(\m_payload_i[32]_i_7_n_0 ),
        .O(\m_payload_i_reg[32]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \m_payload_i[32]_i_4 
       (.I0(\s_axi_awqos[3] [29]),
        .I1(\m_payload_i[32]_i_8_n_0 ),
        .I2(\s_axi_awqos[3] [17]),
        .I3(\s_axi_awqos[3] [15]),
        .I4(\s_axi_awqos[3] [20]),
        .I5(\m_payload_i[32]_i_9_n_0 ),
        .O(\m_payload_i_reg[32]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFF01)) 
    \m_payload_i[32]_i_5 
       (.I0(\s_axi_awqos[3] [15]),
        .I1(\s_axi_awqos[3] [14]),
        .I2(\s_axi_awqos[3] [13]),
        .I3(\s_axi_awqos[3] [16]),
        .I4(\s_axi_awqos[3] [17]),
        .O(\m_payload_i[32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \m_payload_i[32]_i_6 
       (.I0(\s_axi_awqos[3] [21]),
        .I1(\s_axi_awqos[3] [24]),
        .I2(\s_axi_awqos[3] [26]),
        .I3(\s_axi_awqos[3] [30]),
        .O(\m_payload_i[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \m_payload_i[32]_i_7 
       (.I0(\s_axi_awqos[3] [19]),
        .I1(\s_axi_awqos[3] [18]),
        .I2(\s_axi_awqos[3] [29]),
        .I3(\s_axi_awqos[3] [23]),
        .I4(\s_axi_awqos[3] [28]),
        .I5(\s_axi_awqos[3] [31]),
        .O(\m_payload_i[32]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_8 
       (.I0(\s_axi_awqos[3] [21]),
        .I1(\s_axi_awqos[3] [16]),
        .I2(\s_axi_awqos[3] [19]),
        .I3(\s_axi_awqos[3] [18]),
        .O(\m_payload_i[32]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \m_payload_i[32]_i_9 
       (.I0(\s_axi_awqos[3] [26]),
        .I1(\s_axi_awqos[3] [23]),
        .I2(\s_axi_awqos[3] [28]),
        .I3(\s_axi_awqos[3] [31]),
        .I4(\s_axi_awqos[3] [24]),
        .I5(\s_axi_awqos[3] [30]),
        .O(\m_payload_i[32]_i_9_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(w_match),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [32]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [33]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [34]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [35]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [36]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [37]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [38]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [39]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [40]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [41]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [42]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [43]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [44]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [45]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [46]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [47]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [48]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [49]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [50]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [51]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [52]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [53]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [54]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [55]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [56]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[31]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    m_valid_i_i_1
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg[5] [5]),
        .I2(sr_axi_awready),
        .I3(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(\m_payload_i_reg[0]_0 ),
        .R(\aresetn_d_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(\gen_write.aw_cnt_reg[5] [5]),
        .O(s_axi_awready));
  LUT6 #(
    .INIT(64'h55FFF7F700000000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_2 ),
        .I1(s_axi_awvalid),
        .I2(\gen_write.aw_cnt_reg[5] [5]),
        .I3(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I4(\m_payload_i_reg[0]_0 ),
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

(* CHECK_LICENSE_TYPE = "system_s04_mmu_0,axi_mmu_v2_1_13_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_13_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top inst
       (.D({s_axi_awqos,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .Q({m_axi_arqos,m_axi_arlock,m_axi_arlen,m_axi_arcache,m_axi_arburst,m_axi_arsize,m_axi_arprot,m_axi_araddr}),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_axi_awqos[3] ({m_axi_awqos,m_axi_awlock,m_axi_awlen,m_axi_awcache,m_axi_awburst,m_axi_awsize,m_axi_awprot,m_axi_awaddr}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\s_axi_arqos[3] ({s_axi_arqos,s_axi_arlock,s_axi_arlen,s_axi_arcache,s_axi_arburst,s_axi_arsize,s_axi_arprot,s_axi_araddr}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast),
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
