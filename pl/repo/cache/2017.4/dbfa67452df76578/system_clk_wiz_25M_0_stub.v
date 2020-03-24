// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed Feb  5 10:02:18 2020
// Host        : ssg1 running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_clk_wiz_25M_0_stub.v
// Design      : system_clk_wiz_25M_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_codec, clk_bus, clk_mb, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_codec,clk_bus,clk_mb,reset,locked,clk_in1" */;
  output clk_codec;
  output clk_bus;
  output clk_mb;
  input reset;
  output locked;
  input clk_in1;
endmodule
