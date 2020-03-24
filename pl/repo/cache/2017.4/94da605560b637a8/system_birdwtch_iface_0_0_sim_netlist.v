// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 21 12:09:13 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_birdwtch_iface_0_0_sim_netlist.v
// Design      : system_birdwtch_iface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch
   (s00_axi_awready,
    E,
    s00_axi_bvalid,
    s01_axi_wready,
    s01_axi_awready,
    s01_axi_bvalid,
    s00_axi_arready,
    S00_AXI_RVALID,
    s01_axi_arready,
    S01_AXI_RVALID,
    s00_axi_rdata,
    s01_axi_rdata,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s01_axi_wstrb,
    s01_axi_awvalid,
    s01_axi_wvalid,
    s01_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s01_axi_arvalid,
    s01_axi_rready,
    s00_axi_aclk,
    s01_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wdata);
  output s00_axi_awready;
  output [0:0]E;
  output s00_axi_bvalid;
  output [0:0]s01_axi_wready;
  output s01_axi_awready;
  output s01_axi_bvalid;
  output s00_axi_arready;
  output S00_AXI_RVALID;
  output s01_axi_arready;
  output S01_AXI_RVALID;
  output [15:0]s00_axi_rdata;
  output [15:0]s01_axi_rdata;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input [1:0]s01_axi_wstrb;
  input s01_axi_awvalid;
  input s01_axi_wvalid;
  input s01_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input s01_axi_arvalid;
  input s01_axi_rready;
  input s00_axi_aclk;
  input [15:0]s01_axi_wdata;
  input [1:0]s00_axi_wstrb;
  input [15:0]s00_axi_wdata;

  wire [0:0]E;
  wire S00_AXI_RVALID;
  wire S01_AXI_RVALID;
  wire birdwtch_iface_v1_0_S00_AXI_inst_n_4;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_10;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_11;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_12;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_13;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_14;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_2;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_6;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_8;
  wire birdwtch_iface_v1_0_S01_AXI_inst_n_9;
  wire [7:0]o_cr_command;
  wire [7:0]o_cr_data;
  wire [7:0]o_cr_resp;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s01_axi_arready;
  wire s01_axi_arvalid;
  wire s01_axi_awready;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire [15:0]s01_axi_rdata;
  wire s01_axi_rready;
  wire [15:0]s01_axi_wdata;
  wire [0:0]s01_axi_wready;
  wire [1:0]s01_axi_wstrb;
  wire s01_axi_wvalid;
  wire [7:7]w_cr_command;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S00_AXI birdwtch_iface_v1_0_S00_AXI_inst
       (.D({birdwtch_iface_v1_0_S01_AXI_inst_n_8,birdwtch_iface_v1_0_S01_AXI_inst_n_9,birdwtch_iface_v1_0_S01_AXI_inst_n_10,birdwtch_iface_v1_0_S01_AXI_inst_n_11,birdwtch_iface_v1_0_S01_AXI_inst_n_12,birdwtch_iface_v1_0_S01_AXI_inst_n_13,birdwtch_iface_v1_0_S01_AXI_inst_n_14,o_cr_resp}),
        .Q(S00_AXI_RVALID),
        .SR(birdwtch_iface_v1_0_S01_AXI_inst_n_2),
        .\axi_rdata_reg[31] ({o_cr_command,o_cr_data}),
        .\o_cr_command_reg[0]_0 (birdwtch_iface_v1_0_S00_AXI_inst_n_4),
        .\o_cr_status_reg[7] (birdwtch_iface_v1_0_S01_AXI_inst_n_6),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(E),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .w_cr_command(w_cr_command));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S01_AXI birdwtch_iface_v1_0_S01_AXI_inst
       (.D({birdwtch_iface_v1_0_S01_AXI_inst_n_8,birdwtch_iface_v1_0_S01_AXI_inst_n_9,birdwtch_iface_v1_0_S01_AXI_inst_n_10,birdwtch_iface_v1_0_S01_AXI_inst_n_11,birdwtch_iface_v1_0_S01_AXI_inst_n_12,birdwtch_iface_v1_0_S01_AXI_inst_n_13,birdwtch_iface_v1_0_S01_AXI_inst_n_14,o_cr_resp}),
        .Q(S01_AXI_RVALID),
        .SR(birdwtch_iface_v1_0_S01_AXI_inst_n_2),
        .axi_awready_reg_0(birdwtch_iface_v1_0_S00_AXI_inst_n_4),
        .\o_cr_command_reg[0] (birdwtch_iface_v1_0_S01_AXI_inst_n_6),
        .\o_cr_command_reg[7] ({o_cr_command,o_cr_data}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s01_axi_arready(s01_axi_arready),
        .s01_axi_arvalid(s01_axi_arvalid),
        .s01_axi_awready(s01_axi_awready),
        .s01_axi_awvalid(s01_axi_awvalid),
        .s01_axi_bready(s01_axi_bready),
        .s01_axi_bvalid(s01_axi_bvalid),
        .s01_axi_rdata(s01_axi_rdata),
        .s01_axi_rready(s01_axi_rready),
        .s01_axi_wdata(s01_axi_wdata),
        .s01_axi_wready(s01_axi_wready),
        .s01_axi_wstrb(s01_axi_wstrb),
        .s01_axi_wvalid(s01_axi_wvalid),
        .w_cr_command(w_cr_command));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_bvalid,
    s01_axi_wready,
    s01_axi_awready,
    s01_axi_bvalid,
    s00_axi_arready,
    Q,
    s01_axi_arready,
    s01_axi_rvalid,
    s00_axi_rdata,
    s01_axi_rdata,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s01_axi_wstrb,
    s01_axi_awvalid,
    s01_axi_wvalid,
    s01_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s01_axi_arvalid,
    s01_axi_rready,
    s00_axi_aclk,
    s01_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wdata);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_bvalid;
  output s01_axi_wready;
  output s01_axi_awready;
  output s01_axi_bvalid;
  output s00_axi_arready;
  output Q;
  output s01_axi_arready;
  output s01_axi_rvalid;
  output [15:0]s00_axi_rdata;
  output [15:0]s01_axi_rdata;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input [1:0]s01_axi_wstrb;
  input s01_axi_awvalid;
  input s01_axi_wvalid;
  input s01_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input s01_axi_arvalid;
  input s01_axi_rready;
  input s00_axi_aclk;
  input [15:0]s01_axi_wdata;
  input [1:0]s00_axi_wstrb;
  input [15:0]s00_axi_wdata;

  wire Q;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s01_axi_arready;
  wire s01_axi_arvalid;
  wire s01_axi_awready;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire [15:0]s01_axi_rdata;
  wire s01_axi_rready;
  wire s01_axi_rvalid;
  wire [15:0]s01_axi_wdata;
  wire s01_axi_wready;
  wire [1:0]s01_axi_wstrb;
  wire s01_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch birdwtch_inst
       (.E(s00_axi_wready),
        .S00_AXI_RVALID(Q),
        .S01_AXI_RVALID(s01_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s01_axi_arready(s01_axi_arready),
        .s01_axi_arvalid(s01_axi_arvalid),
        .s01_axi_awready(s01_axi_awready),
        .s01_axi_awvalid(s01_axi_awvalid),
        .s01_axi_bready(s01_axi_bready),
        .s01_axi_bvalid(s01_axi_bvalid),
        .s01_axi_rdata(s01_axi_rdata),
        .s01_axi_rready(s01_axi_rready),
        .s01_axi_wdata(s01_axi_wdata),
        .s01_axi_wready(s01_axi_wready),
        .s01_axi_wstrb(s01_axi_wstrb),
        .s01_axi_wvalid(s01_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S00_AXI
   (s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    \o_cr_command_reg[0]_0 ,
    Q,
    s00_axi_rdata,
    \axi_rdata_reg[31] ,
    SR,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s00_axi_wstrb,
    w_cr_command,
    s00_axi_wdata,
    D,
    \o_cr_status_reg[7] );
  output s00_axi_bvalid;
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output \o_cr_command_reg[0]_0 ;
  output Q;
  output [15:0]s00_axi_rdata;
  output [15:0]\axi_rdata_reg[31] ;
  input SR;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input [1:0]s00_axi_wstrb;
  input [0:0]w_cr_command;
  input [15:0]s00_axi_wdata;
  input [14:0]D;
  input \o_cr_status_reg[7] ;

  wire [14:0]D;
  wire Q;
  wire SR;
  wire axi_arready_i_1_n_0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_2_n_0;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire [15:0]\axi_rdata_reg[31] ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire \o_cr_command[0]_i_1_n_0 ;
  wire \o_cr_command[1]_i_1_n_0 ;
  wire \o_cr_command[2]_i_1_n_0 ;
  wire \o_cr_command[3]_i_1_n_0 ;
  wire \o_cr_command[4]_i_1_n_0 ;
  wire \o_cr_command[5]_i_1_n_0 ;
  wire \o_cr_command[6]_i_1_n_0 ;
  wire \o_cr_command[7]_i_2_n_0 ;
  wire \o_cr_command[7]_i_3_n_0 ;
  wire \o_cr_command_reg[0]_0 ;
  wire \o_cr_data[7]_i_1_n_0 ;
  wire \o_cr_status_reg[7] ;
  wire [7:0]p_0_in;
  wire [31:16]pre_wdata;
  wire [3:2]pre_wstrb;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]w_cr_command;

  LUT5 #(
    .INIT(32'hDFDFFFDF)) 
    axi_arready_i_1
       (.I0(Q),
        .I1(s00_axi_rready),
        .I2(s00_axi_aresetn),
        .I3(s00_axi_arready),
        .I4(s00_axi_arvalid),
        .O(axi_arready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F4F4F4FFFFF4FFF)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_aresetn),
        .I3(s00_axi_wready),
        .I4(s00_axi_wvalid),
        .I5(axi_awready_i_2_n_0),
        .O(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_awready_i_2
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .O(axi_awready_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(s00_axi_awready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB0BBFFFFB0BBB0BB)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_2_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \axi_rdata[15]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(Q),
        .O(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[0]),
        .Q(s00_axi_rdata[0]),
        .R(1'b0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[10]),
        .Q(s00_axi_rdata[10]),
        .R(1'b0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[11]),
        .Q(s00_axi_rdata[11]),
        .R(1'b0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[12]),
        .Q(s00_axi_rdata[12]),
        .R(1'b0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[13]),
        .Q(s00_axi_rdata[13]),
        .R(1'b0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[14]),
        .Q(s00_axi_rdata[14]),
        .R(1'b0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(w_cr_command),
        .Q(s00_axi_rdata[15]),
        .R(1'b0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[1]),
        .Q(s00_axi_rdata[1]),
        .R(1'b0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[2]),
        .Q(s00_axi_rdata[2]),
        .R(1'b0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[3]),
        .Q(s00_axi_rdata[3]),
        .R(1'b0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[4]),
        .Q(s00_axi_rdata[4]),
        .R(1'b0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[5]),
        .Q(s00_axi_rdata[5]),
        .R(1'b0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[6]),
        .Q(s00_axi_rdata[6]),
        .R(1'b0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[7]),
        .Q(s00_axi_rdata[7]),
        .R(1'b0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[8]),
        .Q(s00_axi_rdata[8]),
        .R(1'b0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[15]_i_1_n_0 ),
        .D(D[9]),
        .Q(s00_axi_rdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hDFDD)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(Q),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'h4F4F4F4FFFFF4FFF)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wready),
        .I2(s00_axi_aresetn),
        .I3(s00_axi_awready),
        .I4(s00_axi_awvalid),
        .I5(axi_awready_i_2_n_0),
        .O(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[0]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(pre_wdata[24]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[1]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(pre_wdata[25]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[2]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(pre_wdata[26]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[3]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(pre_wdata[27]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[4]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(pre_wdata[28]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[5]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(pre_wdata[29]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[6]_i_1 
       (.I0(s00_axi_wdata[14]),
        .I1(pre_wdata[30]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \o_cr_command[7]_i_2 
       (.I0(s00_axi_wstrb[1]),
        .I1(s00_axi_wready),
        .I2(pre_wstrb[3]),
        .I3(\o_cr_command_reg[0]_0 ),
        .I4(w_cr_command),
        .O(\o_cr_command[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_command[7]_i_3 
       (.I0(s00_axi_wdata[15]),
        .I1(pre_wdata[31]),
        .I2(s00_axi_wready),
        .O(\o_cr_command[7]_i_3_n_0 ));
  FDRE \o_cr_command_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[0]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [8]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[1]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [9]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[2]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [10]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[3]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [11]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[4]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [12]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[5]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [13]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[6]_i_1_n_0 ),
        .Q(\axi_rdata_reg[31] [14]),
        .R(\o_cr_status_reg[7] ));
  FDRE \o_cr_command_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_command[7]_i_2_n_0 ),
        .D(\o_cr_command[7]_i_3_n_0 ),
        .Q(\axi_rdata_reg[31] [15]),
        .R(\o_cr_status_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(pre_wdata[16]),
        .I2(s00_axi_wready),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(pre_wdata[17]),
        .I2(s00_axi_wready),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(pre_wdata[18]),
        .I2(s00_axi_wready),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(pre_wdata[19]),
        .I2(s00_axi_wready),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(pre_wdata[20]),
        .I2(s00_axi_wready),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(pre_wdata[21]),
        .I2(s00_axi_wready),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(pre_wdata[22]),
        .I2(s00_axi_wready),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \o_cr_data[7]_i_1 
       (.I0(\o_cr_command_reg[0]_0 ),
        .I1(pre_wstrb[2]),
        .I2(s00_axi_wready),
        .I3(s00_axi_wstrb[0]),
        .O(\o_cr_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_data[7]_i_2 
       (.I0(s00_axi_wdata[7]),
        .I1(pre_wdata[23]),
        .I2(s00_axi_wready),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hB0BB0000B0BBB0BB)) 
    \o_cr_data[7]_i_3 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(\o_cr_command_reg[0]_0 ));
  FDRE \o_cr_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\axi_rdata_reg[31] [0]),
        .R(1'b0));
  FDRE \o_cr_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\axi_rdata_reg[31] [1]),
        .R(1'b0));
  FDRE \o_cr_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\axi_rdata_reg[31] [2]),
        .R(1'b0));
  FDRE \o_cr_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\axi_rdata_reg[31] [3]),
        .R(1'b0));
  FDRE \o_cr_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\axi_rdata_reg[31] [4]),
        .R(1'b0));
  FDRE \o_cr_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\axi_rdata_reg[31] [5]),
        .R(1'b0));
  FDRE \o_cr_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\axi_rdata_reg[31] [6]),
        .R(1'b0));
  FDRE \o_cr_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_data[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\axi_rdata_reg[31] [7]),
        .R(1'b0));
  FDRE \pre_wdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[0]),
        .Q(pre_wdata[16]),
        .R(1'b0));
  FDRE \pre_wdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[1]),
        .Q(pre_wdata[17]),
        .R(1'b0));
  FDRE \pre_wdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[2]),
        .Q(pre_wdata[18]),
        .R(1'b0));
  FDRE \pre_wdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[3]),
        .Q(pre_wdata[19]),
        .R(1'b0));
  FDRE \pre_wdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[4]),
        .Q(pre_wdata[20]),
        .R(1'b0));
  FDRE \pre_wdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[5]),
        .Q(pre_wdata[21]),
        .R(1'b0));
  FDRE \pre_wdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[6]),
        .Q(pre_wdata[22]),
        .R(1'b0));
  FDRE \pre_wdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[7]),
        .Q(pre_wdata[23]),
        .R(1'b0));
  FDRE \pre_wdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[8]),
        .Q(pre_wdata[24]),
        .R(1'b0));
  FDRE \pre_wdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[9]),
        .Q(pre_wdata[25]),
        .R(1'b0));
  FDRE \pre_wdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[10]),
        .Q(pre_wdata[26]),
        .R(1'b0));
  FDRE \pre_wdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[11]),
        .Q(pre_wdata[27]),
        .R(1'b0));
  FDRE \pre_wdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[12]),
        .Q(pre_wdata[28]),
        .R(1'b0));
  FDRE \pre_wdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[13]),
        .Q(pre_wdata[29]),
        .R(1'b0));
  FDRE \pre_wdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[14]),
        .Q(pre_wdata[30]),
        .R(1'b0));
  FDRE \pre_wdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wdata[15]),
        .Q(pre_wdata[31]),
        .R(1'b0));
  FDRE \pre_wstrb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wstrb[0]),
        .Q(pre_wstrb[2]),
        .R(1'b0));
  FDRE \pre_wstrb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_wready),
        .D(s00_axi_wstrb[1]),
        .Q(pre_wstrb[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S01_AXI
   (s01_axi_wready,
    s01_axi_bvalid,
    SR,
    s01_axi_awready,
    s01_axi_arready,
    Q,
    \o_cr_command_reg[0] ,
    w_cr_command,
    D,
    s01_axi_rdata,
    s00_axi_aclk,
    s01_axi_wstrb,
    s01_axi_awvalid,
    s01_axi_wvalid,
    s01_axi_bready,
    s01_axi_arvalid,
    s01_axi_rready,
    s00_axi_aresetn,
    axi_awready_reg_0,
    s01_axi_wdata,
    \o_cr_command_reg[7] );
  output s01_axi_wready;
  output s01_axi_bvalid;
  output SR;
  output s01_axi_awready;
  output s01_axi_arready;
  output Q;
  output \o_cr_command_reg[0] ;
  output [0:0]w_cr_command;
  output [14:0]D;
  output [15:0]s01_axi_rdata;
  input s00_axi_aclk;
  input [1:0]s01_axi_wstrb;
  input s01_axi_awvalid;
  input s01_axi_wvalid;
  input s01_axi_bready;
  input s01_axi_arvalid;
  input s01_axi_rready;
  input s00_axi_aresetn;
  input axi_awready_reg_0;
  input [15:0]s01_axi_wdata;
  input [15:0]\o_cr_command_reg[7] ;

  wire [14:0]D;
  wire Q;
  wire SR;
  wire axi_arready_i_1__0_n_0;
  wire axi_awready_i_1__0_n_0;
  wire axi_awready_i_2__0_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1__0_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1__0_n_0;
  wire \o_cr_command_reg[0] ;
  wire [15:0]\o_cr_command_reg[7] ;
  wire \o_cr_resp[0]_i_1_n_0 ;
  wire \o_cr_resp[1]_i_1_n_0 ;
  wire \o_cr_resp[2]_i_1_n_0 ;
  wire \o_cr_resp[3]_i_1_n_0 ;
  wire \o_cr_resp[4]_i_1_n_0 ;
  wire \o_cr_resp[5]_i_1_n_0 ;
  wire \o_cr_resp[6]_i_1_n_0 ;
  wire \o_cr_resp[7]_i_1_n_0 ;
  wire \o_cr_resp[7]_i_2_n_0 ;
  wire \o_cr_resp[7]_i_3_n_0 ;
  wire \o_cr_status[0]_i_1_n_0 ;
  wire \o_cr_status[1]_i_1_n_0 ;
  wire \o_cr_status[2]_i_1_n_0 ;
  wire \o_cr_status[3]_i_1_n_0 ;
  wire \o_cr_status[4]_i_1_n_0 ;
  wire \o_cr_status[5]_i_1_n_0 ;
  wire \o_cr_status[6]_i_1_n_0 ;
  wire \o_cr_status[6]_i_2_n_0 ;
  wire \o_cr_status[7]_i_1_n_0 ;
  wire \pre_wdata_reg_n_0_[16] ;
  wire \pre_wdata_reg_n_0_[17] ;
  wire \pre_wdata_reg_n_0_[18] ;
  wire \pre_wdata_reg_n_0_[19] ;
  wire \pre_wdata_reg_n_0_[20] ;
  wire \pre_wdata_reg_n_0_[21] ;
  wire \pre_wdata_reg_n_0_[22] ;
  wire \pre_wdata_reg_n_0_[23] ;
  wire \pre_wdata_reg_n_0_[24] ;
  wire \pre_wdata_reg_n_0_[25] ;
  wire \pre_wdata_reg_n_0_[26] ;
  wire \pre_wdata_reg_n_0_[27] ;
  wire \pre_wdata_reg_n_0_[28] ;
  wire \pre_wdata_reg_n_0_[29] ;
  wire \pre_wdata_reg_n_0_[30] ;
  wire \pre_wdata_reg_n_0_[31] ;
  wire [1:0]pre_wstrb;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s01_axi_arready;
  wire s01_axi_arvalid;
  wire s01_axi_awready;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire [15:0]s01_axi_rdata;
  wire s01_axi_rready;
  wire [15:0]s01_axi_wdata;
  wire s01_axi_wready;
  wire [1:0]s01_axi_wstrb;
  wire s01_axi_wvalid;
  wire [0:0]w_cr_command;
  wire [0:0]wstrb__1;

  LUT5 #(
    .INIT(32'hDFDFFFDF)) 
    axi_arready_i_1__0
       (.I0(Q),
        .I1(s01_axi_rready),
        .I2(s00_axi_aresetn),
        .I3(s01_axi_arready),
        .I4(s01_axi_arvalid),
        .O(axi_arready_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(s01_axi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F4F4F4FFFFF4FFF)) 
    axi_awready_i_1__0
       (.I0(s01_axi_awvalid),
        .I1(s01_axi_awready),
        .I2(s00_axi_aresetn),
        .I3(s01_axi_wready),
        .I4(s01_axi_wvalid),
        .I5(axi_awready_i_2__0_n_0),
        .O(axi_awready_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_awready_i_2__0
       (.I0(s01_axi_bvalid),
        .I1(s01_axi_bready),
        .O(axi_awready_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1__0_n_0),
        .Q(s01_axi_awready),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_bvalid_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hB0BBFFFFB0BBB0BB)) 
    axi_bvalid_i_1__0
       (.I0(s01_axi_awvalid),
        .I1(s01_axi_awready),
        .I2(s01_axi_wvalid),
        .I3(s01_axi_wready),
        .I4(s01_axi_bready),
        .I5(s01_axi_bvalid),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(s01_axi_bvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \axi_rdata[31]_i_1 
       (.I0(s01_axi_arready),
        .I1(s01_axi_arvalid),
        .I2(s01_axi_rready),
        .I3(Q),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [0]),
        .Q(s01_axi_rdata[0]),
        .R(1'b0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [1]),
        .Q(s01_axi_rdata[1]),
        .R(1'b0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [2]),
        .Q(s01_axi_rdata[2]),
        .R(1'b0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [3]),
        .Q(s01_axi_rdata[3]),
        .R(1'b0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [4]),
        .Q(s01_axi_rdata[4]),
        .R(1'b0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [5]),
        .Q(s01_axi_rdata[5]),
        .R(1'b0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [6]),
        .Q(s01_axi_rdata[6]),
        .R(1'b0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [7]),
        .Q(s01_axi_rdata[7]),
        .R(1'b0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [8]),
        .Q(s01_axi_rdata[8]),
        .R(1'b0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [9]),
        .Q(s01_axi_rdata[9]),
        .R(1'b0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [10]),
        .Q(s01_axi_rdata[10]),
        .R(1'b0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [11]),
        .Q(s01_axi_rdata[11]),
        .R(1'b0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [12]),
        .Q(s01_axi_rdata[12]),
        .R(1'b0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [13]),
        .Q(s01_axi_rdata[13]),
        .R(1'b0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [14]),
        .Q(s01_axi_rdata[14]),
        .R(1'b0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\o_cr_command_reg[7] [15]),
        .Q(s01_axi_rdata[15]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hDFDD)) 
    axi_rvalid_i_1
       (.I0(s01_axi_arready),
        .I1(s01_axi_arvalid),
        .I2(s01_axi_rready),
        .I3(Q),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'h4F4F4F4FFFFF4FFF)) 
    axi_wready_i_1__0
       (.I0(s01_axi_wvalid),
        .I1(s01_axi_wready),
        .I2(s00_axi_aresetn),
        .I3(s01_axi_awready),
        .I4(s01_axi_awvalid),
        .I5(axi_awready_i_2__0_n_0),
        .O(axi_wready_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(s01_axi_wready),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \o_cr_command[7]_i_1 
       (.I0(w_cr_command),
        .I1(axi_awready_reg_0),
        .O(\o_cr_command_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[0]_i_1 
       (.I0(s01_axi_wdata[8]),
        .I1(\pre_wdata_reg_n_0_[24] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[1]_i_1 
       (.I0(s01_axi_wdata[9]),
        .I1(\pre_wdata_reg_n_0_[25] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[2]_i_1 
       (.I0(s01_axi_wdata[10]),
        .I1(\pre_wdata_reg_n_0_[26] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[3]_i_1 
       (.I0(s01_axi_wdata[11]),
        .I1(\pre_wdata_reg_n_0_[27] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[4]_i_1 
       (.I0(s01_axi_wdata[12]),
        .I1(\pre_wdata_reg_n_0_[28] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[5]_i_1 
       (.I0(s01_axi_wdata[13]),
        .I1(\pre_wdata_reg_n_0_[29] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[6]_i_1 
       (.I0(s01_axi_wdata[14]),
        .I1(\pre_wdata_reg_n_0_[30] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \o_cr_resp[7]_i_1 
       (.I0(\o_cr_resp[7]_i_3_n_0 ),
        .I1(pre_wstrb[1]),
        .I2(s01_axi_wready),
        .I3(s01_axi_wstrb[1]),
        .O(\o_cr_resp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_resp[7]_i_2 
       (.I0(s01_axi_wdata[15]),
        .I1(\pre_wdata_reg_n_0_[31] ),
        .I2(s01_axi_wready),
        .O(\o_cr_resp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0BB0000B0BBB0BB)) 
    \o_cr_resp[7]_i_3 
       (.I0(s01_axi_awvalid),
        .I1(s01_axi_awready),
        .I2(s01_axi_wvalid),
        .I3(s01_axi_wready),
        .I4(s01_axi_bready),
        .I5(s01_axi_bvalid),
        .O(\o_cr_resp[7]_i_3_n_0 ));
  FDRE \o_cr_resp_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE \o_cr_resp_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_resp[7]_i_1_n_0 ),
        .D(\o_cr_resp[7]_i_2_n_0 ),
        .Q(D[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[0]_i_1 
       (.I0(s01_axi_wdata[0]),
        .I1(\pre_wdata_reg_n_0_[16] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[1]_i_1 
       (.I0(s01_axi_wdata[1]),
        .I1(\pre_wdata_reg_n_0_[17] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[2]_i_1 
       (.I0(s01_axi_wdata[2]),
        .I1(\pre_wdata_reg_n_0_[18] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[3]_i_1 
       (.I0(s01_axi_wdata[3]),
        .I1(\pre_wdata_reg_n_0_[19] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[4]_i_1 
       (.I0(s01_axi_wdata[4]),
        .I1(\pre_wdata_reg_n_0_[20] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[5]_i_1 
       (.I0(s01_axi_wdata[5]),
        .I1(\pre_wdata_reg_n_0_[21] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \o_cr_status[6]_i_1 
       (.I0(\o_cr_resp[7]_i_3_n_0 ),
        .I1(pre_wstrb[0]),
        .I2(s01_axi_wready),
        .I3(s01_axi_wstrb[0]),
        .O(\o_cr_status[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_cr_status[6]_i_2 
       (.I0(s01_axi_wdata[6]),
        .I1(\pre_wdata_reg_n_0_[22] ),
        .I2(s01_axi_wready),
        .O(\o_cr_status[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4FF0000E4000000)) 
    \o_cr_status[7]_i_1 
       (.I0(s01_axi_wready),
        .I1(\pre_wdata_reg_n_0_[23] ),
        .I2(s01_axi_wdata[7]),
        .I3(wstrb__1),
        .I4(\o_cr_resp[7]_i_3_n_0 ),
        .I5(w_cr_command),
        .O(\o_cr_status[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_cr_status[7]_i_2 
       (.I0(s01_axi_wstrb[0]),
        .I1(s01_axi_wready),
        .I2(pre_wstrb[0]),
        .O(wstrb__1));
  FDRE \o_cr_status_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[0]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \o_cr_status_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[1]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
  FDRE \o_cr_status_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[2]_i_1_n_0 ),
        .Q(D[10]),
        .R(1'b0));
  FDRE \o_cr_status_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[3]_i_1_n_0 ),
        .Q(D[11]),
        .R(1'b0));
  FDRE \o_cr_status_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[4]_i_1_n_0 ),
        .Q(D[12]),
        .R(1'b0));
  FDRE \o_cr_status_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[5]_i_1_n_0 ),
        .Q(D[13]),
        .R(1'b0));
  FDRE \o_cr_status_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\o_cr_status[6]_i_1_n_0 ),
        .D(\o_cr_status[6]_i_2_n_0 ),
        .Q(D[14]),
        .R(1'b0));
  FDRE \o_cr_status_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_cr_status[7]_i_1_n_0 ),
        .Q(w_cr_command),
        .R(1'b0));
  FDRE \pre_wdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[0]),
        .Q(\pre_wdata_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[1]),
        .Q(\pre_wdata_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[2]),
        .Q(\pre_wdata_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[3]),
        .Q(\pre_wdata_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[4]),
        .Q(\pre_wdata_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[5]),
        .Q(\pre_wdata_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[6]),
        .Q(\pre_wdata_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[7]),
        .Q(\pre_wdata_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[8]),
        .Q(\pre_wdata_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[9]),
        .Q(\pre_wdata_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[10]),
        .Q(\pre_wdata_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[11]),
        .Q(\pre_wdata_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[12]),
        .Q(\pre_wdata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[13]),
        .Q(\pre_wdata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[14]),
        .Q(\pre_wdata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \pre_wdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wdata[15]),
        .Q(\pre_wdata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \pre_wstrb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wstrb[0]),
        .Q(pre_wstrb[0]),
        .R(1'b0));
  FDRE \pre_wstrb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(s01_axi_wready),
        .D(s01_axi_wstrb[1]),
        .Q(pre_wstrb[1]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_birdwtch_iface_0_0,birdwtch_iface_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "birdwtch_iface_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (int_mb,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s01_axi_aclk,
    s01_axi_aresetn,
    s01_axi_awaddr,
    s01_axi_awprot,
    s01_axi_awvalid,
    s01_axi_awready,
    s01_axi_wdata,
    s01_axi_wstrb,
    s01_axi_wvalid,
    s01_axi_wready,
    s01_axi_bresp,
    s01_axi_bvalid,
    s01_axi_bready,
    s01_axi_araddr,
    s01_axi_arprot,
    s01_axi_arvalid,
    s01_axi_arready,
    s01_axi_rdata,
    s01_axi_rresp,
    s01_axi_rvalid,
    s01_axi_rready);
  output int_mb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s01_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi_aclk, ASSOCIATED_BUSIF s01_axi, ASSOCIATED_RESET s01_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s01_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s01_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi_aresetn, POLARITY ACTIVE_LOW" *) input s01_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [3:0]s01_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]s01_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input s01_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output s01_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [31:0]s01_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [3:0]s01_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input s01_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output s01_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]s01_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output s01_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input s01_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) input [3:0]s01_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]s01_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input s01_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output s01_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [31:0]s01_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]s01_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output s01_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s01_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s01_axi_arready;
  wire s01_axi_arvalid;
  wire s01_axi_awready;
  wire s01_axi_awvalid;
  wire s01_axi_bready;
  wire s01_axi_bvalid;
  wire [31:16]\^s01_axi_rdata ;
  wire s01_axi_rready;
  wire s01_axi_rvalid;
  wire [31:0]s01_axi_wdata;
  wire s01_axi_wready;
  wire [3:0]s01_axi_wstrb;
  wire s01_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15:0] = \^s00_axi_rdata [15:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s01_axi_bresp[1] = \<const0> ;
  assign s01_axi_bresp[0] = \<const0> ;
  assign s01_axi_rdata[31:16] = \^s01_axi_rdata [31:16];
  assign s01_axi_rdata[15] = \<const0> ;
  assign s01_axi_rdata[14] = \<const0> ;
  assign s01_axi_rdata[13] = \<const0> ;
  assign s01_axi_rdata[12] = \<const0> ;
  assign s01_axi_rdata[11] = \<const0> ;
  assign s01_axi_rdata[10] = \<const0> ;
  assign s01_axi_rdata[9] = \<const0> ;
  assign s01_axi_rdata[8] = \<const0> ;
  assign s01_axi_rdata[7] = \<const0> ;
  assign s01_axi_rdata[6] = \<const0> ;
  assign s01_axi_rdata[5] = \<const0> ;
  assign s01_axi_rdata[4] = \<const0> ;
  assign s01_axi_rdata[3] = \<const0> ;
  assign s01_axi_rdata[2] = \<const0> ;
  assign s01_axi_rdata[1] = \<const0> ;
  assign s01_axi_rdata[0] = \<const0> ;
  assign s01_axi_rresp[1] = \<const0> ;
  assign s01_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0 inst
       (.Q(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata[31:16]),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb[3:2]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s01_axi_arready(s01_axi_arready),
        .s01_axi_arvalid(s01_axi_arvalid),
        .s01_axi_awready(s01_axi_awready),
        .s01_axi_awvalid(s01_axi_awvalid),
        .s01_axi_bready(s01_axi_bready),
        .s01_axi_bvalid(s01_axi_bvalid),
        .s01_axi_rdata(\^s01_axi_rdata ),
        .s01_axi_rready(s01_axi_rready),
        .s01_axi_rvalid(s01_axi_rvalid),
        .s01_axi_wdata(s01_axi_wdata[31:16]),
        .s01_axi_wready(s01_axi_wready),
        .s01_axi_wstrb(s01_axi_wstrb[1:0]),
        .s01_axi_wvalid(s01_axi_wvalid));
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
