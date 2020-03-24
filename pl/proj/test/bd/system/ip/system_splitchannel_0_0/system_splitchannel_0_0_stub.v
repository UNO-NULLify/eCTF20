// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Feb 20 21:08:33 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /ectf/pl/proj/test/bd/system/ip/system_splitchannel_0_0/system_splitchannel_0_0_stub.v
// Design      : system_splitchannel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "splitchannel,Vivado 2017.4" *)
module system_splitchannel_0_0(i_stereo, o_left, o_right)
/* synthesis syn_black_box black_box_pad_pin="i_stereo[31:0],o_left[15:0],o_right[15:0]" */;
  input [31:0]i_stereo;
  output [15:0]o_left;
  output [15:0]o_right;
endmodule
