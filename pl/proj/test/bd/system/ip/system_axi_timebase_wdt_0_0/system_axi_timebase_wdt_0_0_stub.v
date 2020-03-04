// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar  4 13:15:30 2020
// Host        : Lenovo-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_timebase_wdt_0_0/system_axi_timebase_wdt_0_0_stub.v
// Design      : system_axi_timebase_wdt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_timebase_wdt_top,Vivado 2017.4" *)
module system_axi_timebase_wdt_0_0(s_axi_araddr, s_axi_arready, s_axi_arvalid, 
  s_axi_awaddr, s_axi_awready, s_axi_awvalid, s_axi_bready, s_axi_bresp, s_axi_bvalid, 
  s_axi_rdata, s_axi_rready, s_axi_rresp, s_axi_rvalid, s_axi_wdata, s_axi_wready, s_axi_wstrb, 
  s_axi_wvalid, freeze, s_axi_aclk, s_axi_aresetn, timebase_interrupt, wdt_interrupt, 
  wdt_reset)
/* synthesis syn_black_box black_box_pad_pin="s_axi_araddr[3:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[3:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wstrb[3:0],s_axi_wvalid,freeze,s_axi_aclk,s_axi_aresetn,timebase_interrupt,wdt_interrupt,wdt_reset" */;
  input [3:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [3:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input freeze;
  input s_axi_aclk;
  input s_axi_aresetn;
  output timebase_interrupt;
  output wdt_interrupt;
  output wdt_reset;
endmodule
