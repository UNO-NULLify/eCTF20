// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu May 23 15:04:21 2019
// Host        : MM235512-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/bmarquis/Documents/Cora-Z7-07S-base-linux_backup_20190520/src/bd/system/ip/system_i2s_output_1_0/system_i2s_output_1_0_sim_netlist.v
// Design      : system_i2s_output_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_i2s_output_1_0,i2s_output,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "i2s_output,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_i2s_output_1_0
   (clk,
    data_l,
    data_r,
    data_accepted,
    i2s_sd,
    i2s_lrclk,
    i2s_sclk,
    i2s_mclk);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 24573991, PHASE 0.0, CLK_DOMAIN /clk_wiz_25M_clk_out1" *) input clk;
  input [15:0]data_l;
  input [15:0]data_r;
  output data_accepted;
  output i2s_sd;
  output i2s_lrclk;
  output i2s_sclk;
  output i2s_mclk;

  wire clk;
  wire data_accepted;
  wire [15:0]data_l;
  wire [15:0]data_r;
  wire i2s_lrclk;
  wire i2s_mclk;
  wire i2s_sclk;
  wire i2s_sd;

  system_i2s_output_1_0_i2s_output U0
       (.clk(clk),
        .data_accepted(data_accepted),
        .data_l(data_l),
        .data_r(data_r),
        .i2s_mclk(i2s_mclk),
        .i2s_sd(i2s_sd),
        .out({i2s_lrclk,i2s_sclk}));
endmodule

(* ORIG_REF_NAME = "i2s_output" *) 
module system_i2s_output_1_0_i2s_output
   (i2s_mclk,
    data_accepted,
    i2s_sd,
    out,
    clk,
    data_r,
    data_l);
  output i2s_mclk;
  output data_accepted;
  output i2s_sd;
  output [1:0]out;
  input clk;
  input [15:0]data_r;
  input [15:0]data_l;

  wire clk;
  wire data_accepted;
  wire [15:0]data_l;
  wire [15:0]data_r;
  wire [15:0]hold_r;
  wire i2s_mclk;
  wire i2s_sd;
  wire [1:0]out;
  wire [15:15]p_0_in;
  wire p_0_in1_in;
  wire [15:0]p_1_in;
  wire [8:0]plusOp;
  wire [15:0]shift_out;
  wire \shift_out[15]_i_3_n_0 ;
  wire \shift_out[15]_i_4_n_0 ;
  wire \shift_out[16]_i_1_n_0 ;
  wire \shift_out[16]_i_2_n_0 ;
  wire [7:0]step_reg__0;
  wire NLW_mclk_ODDR_R_UNCONNECTED;
  wire NLW_mclk_ODDR_S_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    data_accepted_i_1
       (.I0(step_reg__0[7]),
        .I1(out[1]),
        .I2(step_reg__0[6]),
        .I3(step_reg__0[5]),
        .I4(step_reg__0[4]),
        .I5(p_0_in),
        .O(p_0_in1_in));
  FDRE data_accepted_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(data_accepted),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[0] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[0]),
        .Q(hold_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[10] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[10]),
        .Q(hold_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[11] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[11]),
        .Q(hold_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[12] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[12]),
        .Q(hold_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[13] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[13]),
        .Q(hold_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[14] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[14]),
        .Q(hold_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[15] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[15]),
        .Q(hold_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[1] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[1]),
        .Q(hold_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[2] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[2]),
        .Q(hold_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[3] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[3]),
        .Q(hold_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[4] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[4]),
        .Q(hold_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[5] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[5]),
        .Q(hold_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[6] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[6]),
        .Q(hold_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[7] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[7]),
        .Q(hold_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[8] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[8]),
        .Q(hold_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_r_reg[9] 
       (.C(clk),
        .CE(p_0_in1_in),
        .D(data_r[9]),
        .Q(hold_r[9]),
        .R(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    mclk_ODDR
       (.C(clk),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(i2s_mclk),
        .R(NLW_mclk_ODDR_R_UNCONNECTED),
        .S(NLW_mclk_ODDR_S_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFBFF3BFF)) 
    \shift_out[0]_i_1 
       (.I0(hold_r[0]),
        .I1(step_reg__0[7]),
        .I2(out[1]),
        .I3(\shift_out[16]_i_2_n_0 ),
        .I4(data_l[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[10]_i_1 
       (.I0(shift_out[9]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[10]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[11]_i_1 
       (.I0(shift_out[10]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[11]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[12]_i_1 
       (.I0(shift_out[11]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[12]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[13]_i_1 
       (.I0(shift_out[12]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[13]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[14]_i_1 
       (.I0(shift_out[13]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[14]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[14]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'h8000)) 
    \shift_out[15]_i_1 
       (.I0(out[0]),
        .I1(step_reg__0[2]),
        .I2(step_reg__0[0]),
        .I3(step_reg__0[1]),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[15]_i_2 
       (.I0(shift_out[14]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[15]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \shift_out[15]_i_3 
       (.I0(step_reg__0[4]),
        .I1(step_reg__0[5]),
        .I2(step_reg__0[6]),
        .I3(out[1]),
        .I4(step_reg__0[7]),
        .O(\shift_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \shift_out[15]_i_4 
       (.I0(step_reg__0[4]),
        .I1(step_reg__0[5]),
        .I2(step_reg__0[6]),
        .I3(out[1]),
        .I4(step_reg__0[7]),
        .O(\shift_out[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAFF2A00)) 
    \shift_out[16]_i_1 
       (.I0(shift_out[15]),
        .I1(step_reg__0[7]),
        .I2(\shift_out[16]_i_2_n_0 ),
        .I3(p_0_in),
        .I4(i2s_sd),
        .O(\shift_out[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \shift_out[16]_i_2 
       (.I0(step_reg__0[6]),
        .I1(step_reg__0[5]),
        .I2(step_reg__0[4]),
        .O(\shift_out[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[1]_i_1 
       (.I0(shift_out[0]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[1]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[2]_i_1 
       (.I0(shift_out[1]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[2]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[3]_i_1 
       (.I0(shift_out[2]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[3]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[4]_i_1 
       (.I0(shift_out[3]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[4]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[5]_i_1 
       (.I0(shift_out[4]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[5]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[6]_i_1 
       (.I0(shift_out[5]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[6]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[7]_i_1 
       (.I0(shift_out[6]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[7]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[8]_i_1 
       (.I0(shift_out[7]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[8]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \shift_out[9]_i_1 
       (.I0(shift_out[8]),
        .I1(\shift_out[15]_i_3_n_0 ),
        .I2(hold_r[9]),
        .I3(\shift_out[15]_i_4_n_0 ),
        .I4(data_l[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[0]),
        .Q(shift_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[10]),
        .Q(shift_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[11]),
        .Q(shift_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[12]),
        .Q(shift_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[13]),
        .Q(shift_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[14]),
        .Q(shift_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[15]),
        .Q(shift_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\shift_out[16]_i_1_n_0 ),
        .Q(i2s_sd),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[1]),
        .Q(shift_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[2]),
        .Q(shift_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[3]),
        .Q(shift_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[4]),
        .Q(shift_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[5]),
        .Q(shift_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[6]),
        .Q(shift_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[7]),
        .Q(shift_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[8]),
        .Q(shift_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_out_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(p_1_in[9]),
        .Q(shift_out[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \step[0]_i_1 
       (.I0(step_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \step[1]_i_1 
       (.I0(step_reg__0[0]),
        .I1(step_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \step[2]_i_1 
       (.I0(step_reg__0[2]),
        .I1(step_reg__0[1]),
        .I2(step_reg__0[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \step[3]_i_1 
       (.I0(step_reg__0[2]),
        .I1(step_reg__0[0]),
        .I2(step_reg__0[1]),
        .I3(out[0]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \step[4]_i_1 
       (.I0(step_reg__0[1]),
        .I1(step_reg__0[0]),
        .I2(step_reg__0[2]),
        .I3(out[0]),
        .I4(step_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \step[5]_i_1 
       (.I0(out[0]),
        .I1(step_reg__0[2]),
        .I2(step_reg__0[0]),
        .I3(step_reg__0[1]),
        .I4(step_reg__0[4]),
        .I5(step_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \step[6]_i_1 
       (.I0(step_reg__0[4]),
        .I1(p_0_in),
        .I2(step_reg__0[5]),
        .I3(step_reg__0[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \step[7]_i_1 
       (.I0(step_reg__0[5]),
        .I1(p_0_in),
        .I2(step_reg__0[4]),
        .I3(step_reg__0[6]),
        .I4(step_reg__0[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \step[8]_i_1 
       (.I0(step_reg__0[7]),
        .I1(step_reg__0[6]),
        .I2(step_reg__0[4]),
        .I3(p_0_in),
        .I4(step_reg__0[5]),
        .I5(out[1]),
        .O(plusOp[8]));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(step_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(step_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(step_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(step_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(step_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(step_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(step_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \step_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(out[1]),
        .R(1'b0));
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
