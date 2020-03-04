// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar  4 13:15:30 2020
// Host        : Lenovo-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_timebase_wdt_0_0/system_axi_timebase_wdt_0_0_sim_netlist.v
// Design      : system_axi_timebase_wdt_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_timebase_wdt_0_0,axi_timebase_wdt_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_timebase_wdt_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_axi_timebase_wdt_0_0
   (s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    freeze,
    s_axi_aclk,
    s_axi_aresetn,
    timebase_interrupt,
    wdt_interrupt,
    wdt_reset);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  input freeze;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn:wdt_reset, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 TIMEBASE_INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME TIMEBASE_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output timebase_interrupt;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 WDT_INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME WDT_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output wdt_interrupt;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 WDT_RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME WDT_RESET, POLARITY ACTIVE_HIGH" *) output wdt_reset;

  wire freeze;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
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
  wire timebase_interrupt;
  wire wdt_interrupt;
  wire wdt_reset;
  wire NLW_U0_wdt_reset_pending_UNCONNECTED;
  wire [6:0]NLW_U0_wdt_state_vec_UNCONNECTED;

  (* C_ENABLE_WINDOW_WDT = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_MAX_COUNT_WIDTH = "32" *) 
  (* C_SST_COUNT_WIDTH = "8" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_WDT_ENABLE_ONCE = "1" *) 
  (* C_WDT_INTERVAL = "30" *) 
  system_axi_timebase_wdt_0_0_axi_timebase_wdt_top U0
       (.freeze(freeze),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .timebase_interrupt(timebase_interrupt),
        .wdt_interrupt(wdt_interrupt),
        .wdt_reset(wdt_reset),
        .wdt_reset_pending(NLW_U0_wdt_reset_pending_UNCONNECTED),
        .wdt_state_vec(NLW_U0_wdt_state_vec_UNCONNECTED[6:0]));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module system_axi_timebase_wdt_0_0_address_decoder
   (eWDT1_Reg_reg,
    bus2ip_cs,
    eWDT2_Reg_reg,
    s_axi_wready,
    s_axi_arready,
    D,
    s_axi_rvalid_i_reg,
    \iTimebase_count_reg[0] ,
    bus2ip_wrce,
    \s_axi_rdata_i_reg[31] ,
    eWDT2_Reg_reg_0,
    eWDT1_Reg_reg_0,
    s_axi_bvalid_i_reg,
    \s_axi_bresp_i_reg[1] ,
    Q,
    s_axi_aclk,
    s_axi_aresetn,
    \state_reg[1] ,
    s_axi_wvalid,
    \state_reg[1]_0 ,
    s_axi_rready,
    s_axi_rvalid_i_reg_0,
    s_axi_arvalid,
    s_axi_rvalid_i_reg_1,
    is_write_reg,
    s_axi_wdata,
    read_Mux_In,
    read_Mux_In__0,
    wdt_State_Reg_reg,
    wdt_Reset_Status_Reg,
    \timer_width_reg[4] ,
    S,
    \iTimebase_count_reg[8] ,
    \iTimebase_count_reg[9] ,
    \iTimebase_count_reg[10] ,
    \iTimebase_count_reg[11] ,
    \iTimebase_count_reg[12] ,
    \iTimebase_count_reg[13] ,
    \iTimebase_count_reg[14] ,
    \iTimebase_count_reg[15] ,
    \iTimebase_count_reg[16] ,
    \iTimebase_count_reg[17] ,
    \iTimebase_count_reg[18] ,
    \iTimebase_count_reg[19] ,
    \iTimebase_count_reg[20] ,
    \iTimebase_count_reg[21] ,
    \iTimebase_count_reg[22] ,
    \iTimebase_count_reg[23] ,
    \iTimebase_count_reg[24] ,
    \iTimebase_count_reg[25] ,
    \iTimebase_count_reg[26] ,
    \iTimebase_count_reg[27] ,
    \iTimebase_count_reg[28] ,
    \iTimebase_count_reg[29] ,
    \iTimebase_count_reg[30] ,
    p_0_in,
    is_read,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ,
    s_axi_bready,
    s_axi_bvalid_i_reg_0,
    ip2bus_error__0,
    s_axi_bresp,
    bus2ip_rnw_i_reg,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[2] );
  output eWDT1_Reg_reg;
  output bus2ip_cs;
  output eWDT2_Reg_reg;
  output s_axi_wready;
  output s_axi_arready;
  output [1:0]D;
  output s_axi_rvalid_i_reg;
  output \iTimebase_count_reg[0] ;
  output [1:0]bus2ip_wrce;
  output [31:0]\s_axi_rdata_i_reg[31] ;
  output eWDT2_Reg_reg_0;
  output eWDT1_Reg_reg_0;
  output s_axi_bvalid_i_reg;
  output \s_axi_bresp_i_reg[1] ;
  input Q;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [1:0]\state_reg[1] ;
  input s_axi_wvalid;
  input \state_reg[1]_0 ;
  input s_axi_rready;
  input s_axi_rvalid_i_reg_0;
  input s_axi_arvalid;
  input s_axi_rvalid_i_reg_1;
  input is_write_reg;
  input [1:0]s_axi_wdata;
  input [1:0]read_Mux_In;
  input [3:0]read_Mux_In__0;
  input wdt_State_Reg_reg;
  input wdt_Reset_Status_Reg;
  input [4:0]\timer_width_reg[4] ;
  input [3:0]S;
  input \iTimebase_count_reg[8] ;
  input \iTimebase_count_reg[9] ;
  input \iTimebase_count_reg[10] ;
  input \iTimebase_count_reg[11] ;
  input \iTimebase_count_reg[12] ;
  input \iTimebase_count_reg[13] ;
  input \iTimebase_count_reg[14] ;
  input \iTimebase_count_reg[15] ;
  input \iTimebase_count_reg[16] ;
  input \iTimebase_count_reg[17] ;
  input \iTimebase_count_reg[18] ;
  input \iTimebase_count_reg[19] ;
  input \iTimebase_count_reg[20] ;
  input \iTimebase_count_reg[21] ;
  input \iTimebase_count_reg[22] ;
  input \iTimebase_count_reg[23] ;
  input \iTimebase_count_reg[24] ;
  input \iTimebase_count_reg[25] ;
  input \iTimebase_count_reg[26] ;
  input \iTimebase_count_reg[27] ;
  input \iTimebase_count_reg[28] ;
  input \iTimebase_count_reg[29] ;
  input \iTimebase_count_reg[30] ;
  input p_0_in;
  input is_read;
  input [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;
  input s_axi_bready;
  input s_axi_bvalid_i_reg_0;
  input ip2bus_error__0;
  input [0:0]s_axi_bresp;
  input bus2ip_rnw_i_reg;
  input \bus2ip_addr_i_reg[3] ;
  input \bus2ip_addr_i_reg[2] ;

  wire Bus_RNW_reg_i_1_n_0;
  wire [1:0]D;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire Q;
  wire [3:0]S;
  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[3] ;
  wire bus2ip_cs;
  wire bus2ip_rnw_i_reg;
  wire [1:0]bus2ip_wrce;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire eWDT1_Reg_reg;
  wire eWDT1_Reg_reg_0;
  wire eWDT2_Reg_reg;
  wire eWDT2_Reg_reg_0;
  wire \iTimebase_count_reg[0] ;
  wire \iTimebase_count_reg[10] ;
  wire \iTimebase_count_reg[11] ;
  wire \iTimebase_count_reg[12] ;
  wire \iTimebase_count_reg[13] ;
  wire \iTimebase_count_reg[14] ;
  wire \iTimebase_count_reg[15] ;
  wire \iTimebase_count_reg[16] ;
  wire \iTimebase_count_reg[17] ;
  wire \iTimebase_count_reg[18] ;
  wire \iTimebase_count_reg[19] ;
  wire \iTimebase_count_reg[20] ;
  wire \iTimebase_count_reg[21] ;
  wire \iTimebase_count_reg[22] ;
  wire \iTimebase_count_reg[23] ;
  wire \iTimebase_count_reg[24] ;
  wire \iTimebase_count_reg[25] ;
  wire \iTimebase_count_reg[26] ;
  wire \iTimebase_count_reg[27] ;
  wire \iTimebase_count_reg[28] ;
  wire \iTimebase_count_reg[29] ;
  wire \iTimebase_count_reg[30] ;
  wire \iTimebase_count_reg[8] ;
  wire \iTimebase_count_reg[9] ;
  wire ip2bus_error__0;
  wire is_read;
  wire is_write_reg;
  wire p_0_in;
  wire [1:0]read_Mux_In;
  wire [3:0]read_Mux_In__0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready_INST_0_i_1_n_0;
  wire s_axi_arready_INST_0_i_2_n_0;
  wire s_axi_arvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp_i_reg[1] ;
  wire s_axi_bvalid_i_reg;
  wire s_axi_bvalid_i_reg_0;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[3]_i_4_n_0 ;
  wire \s_axi_rdata_i[4]_i_2_n_0 ;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_rvalid_i_reg_1;
  wire [1:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wvalid;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire [4:0]\timer_width_reg[4] ;
  wire wdt_Reset_Status_Reg;
  wire wdt_State_Reg_reg;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(eWDT2_Reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(eWDT2_Reg_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(eWDT1_Reg_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[2] ),
        .I1(\bus2ip_addr_i_reg[3] ),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hFB)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_aresetn),
        .I2(s_axi_arready),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\bus2ip_addr_i_reg[3] ),
        .I1(\bus2ip_addr_i_reg[2] ),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  system_axi_timebase_wdt_0_0_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg[2] ),
        .\bus2ip_addr_i_reg[3] (\bus2ip_addr_i_reg[3] ),
        .ce_expnd_i_3(ce_expnd_i_3));
  system_axi_timebase_wdt_0_0_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg[2] ),
        .\bus2ip_addr_i_reg[3] (\bus2ip_addr_i_reg[3] ),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h04040400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_aresetn),
        .I2(s_axi_arready),
        .I3(bus2ip_cs),
        .I4(Q),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(bus2ip_cs),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    eWDT1_Reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(eWDT1_Reg_reg),
        .I2(eWDT2_Reg_reg),
        .I3(read_Mux_In[1]),
        .O(eWDT1_Reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    eWDT2_Reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(eWDT2_Reg_reg),
        .I3(read_Mux_In[0]),
        .O(eWDT2_Reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF07FF77)) 
    \iTimebase_count[0]_i_4 
       (.I0(eWDT1_Reg_reg),
        .I1(s_axi_wdata[1]),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(s_axi_wdata[0]),
        .O(\iTimebase_count_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF44444)) 
    s_axi_arready_INST_0
       (.I0(s_axi_arready_INST_0_i_1_n_0),
        .I1(is_read),
        .I2(eWDT1_Reg_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(eWDT2_Reg_reg),
        .I5(s_axi_arready_INST_0_i_2_n_0),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    s_axi_arready_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [5]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [4]),
        .O(s_axi_arready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    s_axi_arready_INST_0_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(eWDT2_Reg_reg),
        .O(s_axi_arready_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error__0),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_bresp),
        .O(\s_axi_bresp_i_reg[1] ));
  LUT5 #(
    .INIT(32'h5D550C00)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_wready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_reg));
  LUT6 #(
    .INIT(64'h00000A000000C000)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(read_Mux_In[0]),
        .I1(read_Mux_In__0[0]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT1_Reg_reg),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\timer_width_reg[4] [0]),
        .I1(eWDT1_Reg_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[10] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [10]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[11] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [11]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[12] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [12]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[13] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [13]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[14] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [14]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[15] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [15]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[16] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [16]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[17] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [17]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[18] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [18]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[19] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [19]));
  LUT6 #(
    .INIT(64'h00000A000000C000)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(read_Mux_In[1]),
        .I1(read_Mux_In__0[1]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT1_Reg_reg),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\timer_width_reg[4] [1]),
        .I1(eWDT1_Reg_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[20] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [20]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[21] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [21]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[22] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [22]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[23] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [23]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[24] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [24]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[25] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [25]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[26] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [26]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[27] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [27]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[28] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [28]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[29] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [29]));
  LUT6 #(
    .INIT(64'h00000A000000C000)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(wdt_State_Reg_reg),
        .I1(read_Mux_In__0[2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT1_Reg_reg),
        .O(\s_axi_rdata_i[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\timer_width_reg[4] [2]),
        .I1(eWDT1_Reg_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[30] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [30]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(p_0_in),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [31]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(eWDT2_Reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\s_axi_rdata_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A000000C000)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(wdt_Reset_Status_Reg),
        .I1(read_Mux_In__0[3]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT1_Reg_reg),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000002AA)) 
    \s_axi_rdata_i[3]_i_4 
       (.I0(\timer_width_reg[4] [3]),
        .I1(eWDT1_Reg_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(\s_axi_rdata_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00404000)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(s_axi_arready_INST_0_i_2_n_0),
        .I1(S[0]),
        .I2(eWDT2_Reg_reg),
        .I3(eWDT1_Reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I5(\s_axi_rdata_i[4]_i_2_n_0 ),
        .O(\s_axi_rdata_i_reg[31] [4]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\timer_width_reg[4] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(eWDT2_Reg_reg),
        .I4(eWDT1_Reg_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(S[1]),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [5]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(S[2]),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [6]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(S[3]),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [7]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[8] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [8]));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(eWDT1_Reg_reg),
        .I2(\iTimebase_count_reg[9] ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(eWDT2_Reg_reg),
        .O(\s_axi_rdata_i_reg[31] [9]));
  MUXF7 \s_axi_rdata_i_reg[0]_i_1 
       (.I0(\s_axi_rdata_i[0]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[0]_i_3_n_0 ),
        .O(\s_axi_rdata_i_reg[31] [0]),
        .S(\s_axi_rdata_i[3]_i_2_n_0 ));
  MUXF7 \s_axi_rdata_i_reg[1]_i_1 
       (.I0(\s_axi_rdata_i[1]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[1]_i_3_n_0 ),
        .O(\s_axi_rdata_i_reg[31] [1]),
        .S(\s_axi_rdata_i[3]_i_2_n_0 ));
  MUXF7 \s_axi_rdata_i_reg[2]_i_1 
       (.I0(\s_axi_rdata_i[2]_i_2_n_0 ),
        .I1(\s_axi_rdata_i[2]_i_3_n_0 ),
        .O(\s_axi_rdata_i_reg[31] [2]),
        .S(\s_axi_rdata_i[3]_i_2_n_0 ));
  MUXF7 \s_axi_rdata_i_reg[3]_i_1 
       (.I0(\s_axi_rdata_i[3]_i_3_n_0 ),
        .I1(\s_axi_rdata_i[3]_i_4_n_0 ),
        .O(\s_axi_rdata_i_reg[31] [3]),
        .S(\s_axi_rdata_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_arready),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_reg));
  LUT6 #(
    .INIT(64'h4F4F4F4F4F444F4F)) 
    s_axi_wready_INST_0
       (.I0(s_axi_arready_INST_0_i_1_n_0),
        .I1(is_write_reg),
        .I2(eWDT2_Reg_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(s_axi_wready_INST_0_i_1_n_0),
        .I5(eWDT1_Reg_reg),
        .O(s_axi_wready));
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_wready_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(s_axi_wready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h2F2CEFEC)) 
    \state[0]_i_1 
       (.I0(s_axi_wready),
        .I1(\state_reg[1] [0]),
        .I2(\state_reg[1] [1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_rvalid_i_reg_1),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFF2F2C)) 
    \state[1]_i_1 
       (.I0(s_axi_arready),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_wvalid),
        .I4(\state_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_width[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(eWDT2_Reg_reg),
        .O(bus2ip_wrce[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wdt_State_Reg_i_2
       (.I0(eWDT1_Reg_reg),
        .I1(eWDT2_Reg_reg),
        .O(bus2ip_wrce[1]));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module system_axi_timebase_wdt_0_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    s_axi_rresp,
    bus2ip_cs,
    Bus_RNW_reg_reg,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    s_axi_arready,
    \iTimebase_count_reg[0] ,
    bus2ip_wrce,
    eWDT2_Reg_reg,
    eWDT1_Reg_reg,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    ip2bus_error__0,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_wdata,
    read_Mux_In,
    read_Mux_In__0,
    wdt_State_Reg_reg,
    wdt_Reset_Status_Reg,
    Q,
    S,
    \iTimebase_count_reg[8] ,
    \iTimebase_count_reg[9] ,
    \iTimebase_count_reg[10] ,
    \iTimebase_count_reg[11] ,
    \iTimebase_count_reg[12] ,
    \iTimebase_count_reg[13] ,
    \iTimebase_count_reg[14] ,
    \iTimebase_count_reg[15] ,
    \iTimebase_count_reg[16] ,
    \iTimebase_count_reg[17] ,
    \iTimebase_count_reg[18] ,
    \iTimebase_count_reg[19] ,
    \iTimebase_count_reg[20] ,
    \iTimebase_count_reg[21] ,
    \iTimebase_count_reg[22] ,
    \iTimebase_count_reg[23] ,
    \iTimebase_count_reg[24] ,
    \iTimebase_count_reg[25] ,
    \iTimebase_count_reg[26] ,
    \iTimebase_count_reg[27] ,
    \iTimebase_count_reg[28] ,
    \iTimebase_count_reg[29] ,
    \iTimebase_count_reg[30] ,
    p_0_in,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_awaddr);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output [0:0]s_axi_rresp;
  output bus2ip_cs;
  output Bus_RNW_reg_reg;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_wready;
  output s_axi_arready;
  output \iTimebase_count_reg[0] ;
  output [1:0]bus2ip_wrce;
  output eWDT2_Reg_reg;
  output eWDT1_Reg_reg;
  output [31:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input ip2bus_error__0;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_arvalid;
  input [1:0]s_axi_wdata;
  input [1:0]read_Mux_In;
  input [3:0]read_Mux_In__0;
  input wdt_State_Reg_reg;
  input wdt_Reset_Status_Reg;
  input [4:0]Q;
  input [3:0]S;
  input \iTimebase_count_reg[8] ;
  input \iTimebase_count_reg[9] ;
  input \iTimebase_count_reg[10] ;
  input \iTimebase_count_reg[11] ;
  input \iTimebase_count_reg[12] ;
  input \iTimebase_count_reg[13] ;
  input \iTimebase_count_reg[14] ;
  input \iTimebase_count_reg[15] ;
  input \iTimebase_count_reg[16] ;
  input \iTimebase_count_reg[17] ;
  input \iTimebase_count_reg[18] ;
  input \iTimebase_count_reg[19] ;
  input \iTimebase_count_reg[20] ;
  input \iTimebase_count_reg[21] ;
  input \iTimebase_count_reg[22] ;
  input \iTimebase_count_reg[23] ;
  input \iTimebase_count_reg[24] ;
  input \iTimebase_count_reg[25] ;
  input \iTimebase_count_reg[26] ;
  input \iTimebase_count_reg[27] ;
  input \iTimebase_count_reg[28] ;
  input \iTimebase_count_reg[29] ;
  input \iTimebase_count_reg[30] ;
  input p_0_in;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [4:0]Q;
  wire [3:0]S;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire [1:0]bus2ip_wrce;
  wire eWDT1_Reg_reg;
  wire eWDT2_Reg_reg;
  wire \iTimebase_count_reg[0] ;
  wire \iTimebase_count_reg[10] ;
  wire \iTimebase_count_reg[11] ;
  wire \iTimebase_count_reg[12] ;
  wire \iTimebase_count_reg[13] ;
  wire \iTimebase_count_reg[14] ;
  wire \iTimebase_count_reg[15] ;
  wire \iTimebase_count_reg[16] ;
  wire \iTimebase_count_reg[17] ;
  wire \iTimebase_count_reg[18] ;
  wire \iTimebase_count_reg[19] ;
  wire \iTimebase_count_reg[20] ;
  wire \iTimebase_count_reg[21] ;
  wire \iTimebase_count_reg[22] ;
  wire \iTimebase_count_reg[23] ;
  wire \iTimebase_count_reg[24] ;
  wire \iTimebase_count_reg[25] ;
  wire \iTimebase_count_reg[26] ;
  wire \iTimebase_count_reg[27] ;
  wire \iTimebase_count_reg[28] ;
  wire \iTimebase_count_reg[29] ;
  wire \iTimebase_count_reg[30] ;
  wire \iTimebase_count_reg[8] ;
  wire \iTimebase_count_reg[9] ;
  wire ip2bus_error__0;
  wire p_0_in;
  wire [1:0]read_Mux_In;
  wire [3:0]read_Mux_In__0;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [1:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wdt_Reset_Status_Reg;
  wire wdt_State_Reg_reg;

  system_axi_timebase_wdt_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Q(Q),
        .S(S),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrce(bus2ip_wrce),
        .eWDT1_Reg_reg(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .eWDT1_Reg_reg_0(eWDT1_Reg_reg),
        .eWDT2_Reg_reg(Bus_RNW_reg),
        .eWDT2_Reg_reg_0(eWDT2_Reg_reg),
        .\iTimebase_count_reg[0] (\iTimebase_count_reg[0] ),
        .\iTimebase_count_reg[10] (\iTimebase_count_reg[10] ),
        .\iTimebase_count_reg[11] (\iTimebase_count_reg[11] ),
        .\iTimebase_count_reg[12] (\iTimebase_count_reg[12] ),
        .\iTimebase_count_reg[13] (\iTimebase_count_reg[13] ),
        .\iTimebase_count_reg[14] (\iTimebase_count_reg[14] ),
        .\iTimebase_count_reg[15] (\iTimebase_count_reg[15] ),
        .\iTimebase_count_reg[16] (\iTimebase_count_reg[16] ),
        .\iTimebase_count_reg[17] (\iTimebase_count_reg[17] ),
        .\iTimebase_count_reg[18] (\iTimebase_count_reg[18] ),
        .\iTimebase_count_reg[19] (\iTimebase_count_reg[19] ),
        .\iTimebase_count_reg[20] (\iTimebase_count_reg[20] ),
        .\iTimebase_count_reg[21] (\iTimebase_count_reg[21] ),
        .\iTimebase_count_reg[22] (\iTimebase_count_reg[22] ),
        .\iTimebase_count_reg[23] (\iTimebase_count_reg[23] ),
        .\iTimebase_count_reg[24] (\iTimebase_count_reg[24] ),
        .\iTimebase_count_reg[25] (\iTimebase_count_reg[25] ),
        .\iTimebase_count_reg[26] (\iTimebase_count_reg[26] ),
        .\iTimebase_count_reg[27] (\iTimebase_count_reg[27] ),
        .\iTimebase_count_reg[28] (\iTimebase_count_reg[28] ),
        .\iTimebase_count_reg[29] (\iTimebase_count_reg[29] ),
        .\iTimebase_count_reg[30] (\iTimebase_count_reg[30] ),
        .\iTimebase_count_reg[8] (\iTimebase_count_reg[8] ),
        .\iTimebase_count_reg[9] (\iTimebase_count_reg[9] ),
        .ip2bus_error__0(ip2bus_error__0),
        .p_0_in(p_0_in),
        .read_Mux_In(read_Mux_In),
        .read_Mux_In__0(read_Mux_In__0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg),
        .wdt_State_Reg_reg(wdt_State_Reg_reg));
endmodule

(* ORIG_REF_NAME = "axi_timebase_wdt" *) 
module system_axi_timebase_wdt_0_0_axi_timebase_wdt
   (s_axi_wready,
    s_axi_arready,
    s_axi_rvalid,
    wdt_interrupt,
    wdt_reset,
    timebase_interrupt,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_aresetn,
    s_axi_rready,
    freeze,
    s_axi_aclk,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_wstrb);
  output s_axi_wready;
  output s_axi_arready;
  output s_axi_rvalid;
  output wdt_interrupt;
  output wdt_reset;
  output timebase_interrupt;
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  input s_axi_aresetn;
  input s_axi_rready;
  input freeze;
  input s_axi_aclk;
  input [4:0]s_axi_wdata;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;

  wire AXI4_LITE_I_n_10;
  wire AXI4_LITE_I_n_13;
  wire AXI4_LITE_I_n_14;
  wire AXI4_LITE_I_n_3;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire TIMEBASE_WDT_CORE_I_n_10;
  wire TIMEBASE_WDT_CORE_I_n_11;
  wire TIMEBASE_WDT_CORE_I_n_12;
  wire TIMEBASE_WDT_CORE_I_n_13;
  wire TIMEBASE_WDT_CORE_I_n_14;
  wire TIMEBASE_WDT_CORE_I_n_15;
  wire TIMEBASE_WDT_CORE_I_n_16;
  wire TIMEBASE_WDT_CORE_I_n_17;
  wire TIMEBASE_WDT_CORE_I_n_18;
  wire TIMEBASE_WDT_CORE_I_n_19;
  wire TIMEBASE_WDT_CORE_I_n_20;
  wire TIMEBASE_WDT_CORE_I_n_21;
  wire TIMEBASE_WDT_CORE_I_n_22;
  wire TIMEBASE_WDT_CORE_I_n_23;
  wire TIMEBASE_WDT_CORE_I_n_24;
  wire TIMEBASE_WDT_CORE_I_n_25;
  wire TIMEBASE_WDT_CORE_I_n_26;
  wire TIMEBASE_WDT_CORE_I_n_27;
  wire TIMEBASE_WDT_CORE_I_n_28;
  wire TIMEBASE_WDT_CORE_I_n_29;
  wire TIMEBASE_WDT_CORE_I_n_30;
  wire TIMEBASE_WDT_CORE_I_n_31;
  wire TIMEBASE_WDT_CORE_I_n_32;
  wire TIMEBASE_WDT_CORE_I_n_33;
  wire TIMEBASE_WDT_CORE_I_n_34;
  wire TIMEBASE_WDT_CORE_I_n_8;
  wire TIMEBASE_WDT_CORE_I_n_9;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire [0:3]bus2ip_wrce;
  wire freeze;
  wire ip2bus_error__0;
  wire p_0_in;
  wire [2:3]read_Mux_In;
  wire [4:7]read_Mux_In__0;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire timebase_interrupt;
  wire [4:0]timer_width;
  wire wdt_Reset_Status_Reg;
  wire wdt_interrupt;
  wire wdt_reset;

  system_axi_timebase_wdt_0_0_axi_lite_ipif AXI4_LITE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI4_LITE_I_n_3),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q(timer_width),
        .S({TIMEBASE_WDT_CORE_I_n_8,TIMEBASE_WDT_CORE_I_n_9,TIMEBASE_WDT_CORE_I_n_10,TIMEBASE_WDT_CORE_I_n_11}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrce({bus2ip_wrce[0],bus2ip_wrce[3]}),
        .eWDT1_Reg_reg(AXI4_LITE_I_n_14),
        .eWDT2_Reg_reg(AXI4_LITE_I_n_13),
        .\iTimebase_count_reg[0] (AXI4_LITE_I_n_10),
        .\iTimebase_count_reg[10] (TIMEBASE_WDT_CORE_I_n_14),
        .\iTimebase_count_reg[11] (TIMEBASE_WDT_CORE_I_n_15),
        .\iTimebase_count_reg[12] (TIMEBASE_WDT_CORE_I_n_16),
        .\iTimebase_count_reg[13] (TIMEBASE_WDT_CORE_I_n_17),
        .\iTimebase_count_reg[14] (TIMEBASE_WDT_CORE_I_n_18),
        .\iTimebase_count_reg[15] (TIMEBASE_WDT_CORE_I_n_19),
        .\iTimebase_count_reg[16] (TIMEBASE_WDT_CORE_I_n_20),
        .\iTimebase_count_reg[17] (TIMEBASE_WDT_CORE_I_n_21),
        .\iTimebase_count_reg[18] (TIMEBASE_WDT_CORE_I_n_22),
        .\iTimebase_count_reg[19] (TIMEBASE_WDT_CORE_I_n_23),
        .\iTimebase_count_reg[20] (TIMEBASE_WDT_CORE_I_n_24),
        .\iTimebase_count_reg[21] (TIMEBASE_WDT_CORE_I_n_25),
        .\iTimebase_count_reg[22] (TIMEBASE_WDT_CORE_I_n_26),
        .\iTimebase_count_reg[23] (TIMEBASE_WDT_CORE_I_n_27),
        .\iTimebase_count_reg[24] (TIMEBASE_WDT_CORE_I_n_28),
        .\iTimebase_count_reg[25] (TIMEBASE_WDT_CORE_I_n_29),
        .\iTimebase_count_reg[26] (TIMEBASE_WDT_CORE_I_n_30),
        .\iTimebase_count_reg[27] (TIMEBASE_WDT_CORE_I_n_31),
        .\iTimebase_count_reg[28] (TIMEBASE_WDT_CORE_I_n_32),
        .\iTimebase_count_reg[29] (TIMEBASE_WDT_CORE_I_n_33),
        .\iTimebase_count_reg[30] (TIMEBASE_WDT_CORE_I_n_34),
        .\iTimebase_count_reg[8] (TIMEBASE_WDT_CORE_I_n_12),
        .\iTimebase_count_reg[9] (TIMEBASE_WDT_CORE_I_n_13),
        .ip2bus_error__0(ip2bus_error__0),
        .p_0_in(p_0_in),
        .read_Mux_In({read_Mux_In[2],read_Mux_In[3]}),
        .read_Mux_In__0({read_Mux_In__0[4],read_Mux_In__0[5],read_Mux_In__0[6],read_Mux_In__0[7]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[1:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg),
        .wdt_State_Reg_reg(wdt_interrupt));
  system_axi_timebase_wdt_0_0_timebase_wdt_core TIMEBASE_WDT_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (AXI4_LITE_I_n_14),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (AXI4_LITE_I_n_10),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (AXI4_LITE_I_n_13),
        .Q(timer_width),
        .S({TIMEBASE_WDT_CORE_I_n_8,TIMEBASE_WDT_CORE_I_n_9,TIMEBASE_WDT_CORE_I_n_10,TIMEBASE_WDT_CORE_I_n_11}),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrce({bus2ip_wrce[0],bus2ip_wrce[3]}),
        .freeze(freeze),
        .\iTimebase_count_reg[11]_0 (TIMEBASE_WDT_CORE_I_n_12),
        .\iTimebase_count_reg[11]_1 (TIMEBASE_WDT_CORE_I_n_13),
        .\iTimebase_count_reg[11]_2 (TIMEBASE_WDT_CORE_I_n_14),
        .\iTimebase_count_reg[11]_3 (TIMEBASE_WDT_CORE_I_n_15),
        .\iTimebase_count_reg[15]_0 (TIMEBASE_WDT_CORE_I_n_16),
        .\iTimebase_count_reg[15]_1 (TIMEBASE_WDT_CORE_I_n_17),
        .\iTimebase_count_reg[15]_2 (TIMEBASE_WDT_CORE_I_n_18),
        .\iTimebase_count_reg[15]_3 (TIMEBASE_WDT_CORE_I_n_19),
        .\iTimebase_count_reg[19]_0 (TIMEBASE_WDT_CORE_I_n_20),
        .\iTimebase_count_reg[19]_1 (TIMEBASE_WDT_CORE_I_n_21),
        .\iTimebase_count_reg[19]_2 (TIMEBASE_WDT_CORE_I_n_22),
        .\iTimebase_count_reg[19]_3 (TIMEBASE_WDT_CORE_I_n_23),
        .\iTimebase_count_reg[23]_0 (TIMEBASE_WDT_CORE_I_n_24),
        .\iTimebase_count_reg[23]_1 (TIMEBASE_WDT_CORE_I_n_25),
        .\iTimebase_count_reg[23]_2 (TIMEBASE_WDT_CORE_I_n_26),
        .\iTimebase_count_reg[23]_3 (TIMEBASE_WDT_CORE_I_n_27),
        .\iTimebase_count_reg[27]_0 (TIMEBASE_WDT_CORE_I_n_28),
        .\iTimebase_count_reg[27]_1 (TIMEBASE_WDT_CORE_I_n_29),
        .\iTimebase_count_reg[27]_2 (TIMEBASE_WDT_CORE_I_n_30),
        .\iTimebase_count_reg[27]_3 (TIMEBASE_WDT_CORE_I_n_31),
        .\iTimebase_count_reg[31]_0 (TIMEBASE_WDT_CORE_I_n_32),
        .\iTimebase_count_reg[31]_1 (TIMEBASE_WDT_CORE_I_n_33),
        .\iTimebase_count_reg[31]_2 (TIMEBASE_WDT_CORE_I_n_34),
        .p_0_in(p_0_in),
        .read_Mux_In({read_Mux_In[2],read_Mux_In[3]}),
        .read_Mux_In__0({read_Mux_In__0[4],read_Mux_In__0[5],read_Mux_In__0[6],read_Mux_In__0[7]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .timebase_interrupt(timebase_interrupt),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg),
        .wdt_interrupt(wdt_interrupt),
        .wdt_reset(wdt_reset));
  LUT6 #(
    .INIT(64'h002A00AA00AA00AA)) 
    ip2bus_error
       (.I0(bus2ip_cs),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_wstrb[3]),
        .I3(AXI4_LITE_I_n_3),
        .I4(s_axi_wstrb[1]),
        .I5(s_axi_wstrb[2]),
        .O(ip2bus_error__0));
endmodule

(* C_ENABLE_WINDOW_WDT = "0" *) (* C_FAMILY = "zynq" *) (* C_MAX_COUNT_WIDTH = "32" *) 
(* C_SST_COUNT_WIDTH = "8" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_WDT_ENABLE_ONCE = "1" *) (* C_WDT_INTERVAL = "30" *) (* ORIG_REF_NAME = "axi_timebase_wdt_top" *) 
module system_axi_timebase_wdt_0_0_axi_timebase_wdt_top
   (s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    freeze,
    s_axi_aclk,
    s_axi_aresetn,
    timebase_interrupt,
    wdt_interrupt,
    wdt_reset,
    wdt_reset_pending,
    wdt_state_vec);
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
  (* max_fanout = "10000" *) input s_axi_aclk;
  (* max_fanout = "10000" *) input s_axi_aresetn;
  output timebase_interrupt;
  output wdt_interrupt;
  output wdt_reset;
  output wdt_reset_pending;
  output [6:0]wdt_state_vec;

  wire \<const0> ;
  wire freeze;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire timebase_interrupt;
  wire wdt_interrupt;
  wire wdt_reset;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign wdt_reset_pending = \<const0> ;
  assign wdt_state_vec[6] = \<const0> ;
  assign wdt_state_vec[5] = \<const0> ;
  assign wdt_state_vec[4] = \<const0> ;
  assign wdt_state_vec[3] = \<const0> ;
  assign wdt_state_vec[2] = \<const0> ;
  assign wdt_state_vec[1] = \<const0> ;
  assign wdt_state_vec[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_axi_timebase_wdt_0_0_axi_timebase_wdt \LEGACY_WDT.axi_timebase_wdt_i 
       (.freeze(freeze),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[4:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .timebase_interrupt(timebase_interrupt),
        .wdt_interrupt(wdt_interrupt),
        .wdt_reset(wdt_reset));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module system_axi_timebase_wdt_0_0_cdc_sync
   (\iTimebase_count_reg[31] ,
    freeze,
    s_axi_aclk);
  output \iTimebase_count_reg[31] ;
  input freeze;
  input s_axi_aclk;

  wire Freeze_int;
  wire freeze;
  wire \iTimebase_count_reg[31] ;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(freeze),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(Freeze_int),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \iTimebase_count[0]_i_2 
       (.I0(Freeze_int),
        .O(\iTimebase_count_reg[31] ));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module system_axi_timebase_wdt_0_0_pselect_f
   (ce_expnd_i_3,
    \bus2ip_addr_i_reg[2] ,
    \bus2ip_addr_i_reg[3] );
  output ce_expnd_i_3;
  input \bus2ip_addr_i_reg[2] ;
  input \bus2ip_addr_i_reg[3] ;

  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[3] ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\bus2ip_addr_i_reg[2] ),
        .I1(\bus2ip_addr_i_reg[3] ),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module system_axi_timebase_wdt_0_0_pselect_f__parameterized1
   (ce_expnd_i_1,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[2] );
  output ce_expnd_i_1;
  input \bus2ip_addr_i_reg[3] ;
  input \bus2ip_addr_i_reg[2] ;

  wire \bus2ip_addr_i_reg[2] ;
  wire \bus2ip_addr_i_reg[3] ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\bus2ip_addr_i_reg[3] ),
        .I1(\bus2ip_addr_i_reg[2] ),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module system_axi_timebase_wdt_0_0_slave_attachment
   (eWDT1_Reg_reg,
    s_axi_rresp,
    bus2ip_cs,
    Bus_RNW_reg_reg,
    eWDT2_Reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_wready,
    s_axi_arready,
    \iTimebase_count_reg[0] ,
    bus2ip_wrce,
    eWDT2_Reg_reg_0,
    eWDT1_Reg_reg_0,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    ip2bus_error__0,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_wdata,
    read_Mux_In,
    read_Mux_In__0,
    wdt_State_Reg_reg,
    wdt_Reset_Status_Reg,
    Q,
    S,
    \iTimebase_count_reg[8] ,
    \iTimebase_count_reg[9] ,
    \iTimebase_count_reg[10] ,
    \iTimebase_count_reg[11] ,
    \iTimebase_count_reg[12] ,
    \iTimebase_count_reg[13] ,
    \iTimebase_count_reg[14] ,
    \iTimebase_count_reg[15] ,
    \iTimebase_count_reg[16] ,
    \iTimebase_count_reg[17] ,
    \iTimebase_count_reg[18] ,
    \iTimebase_count_reg[19] ,
    \iTimebase_count_reg[20] ,
    \iTimebase_count_reg[21] ,
    \iTimebase_count_reg[22] ,
    \iTimebase_count_reg[23] ,
    \iTimebase_count_reg[24] ,
    \iTimebase_count_reg[25] ,
    \iTimebase_count_reg[26] ,
    \iTimebase_count_reg[27] ,
    \iTimebase_count_reg[28] ,
    \iTimebase_count_reg[29] ,
    \iTimebase_count_reg[30] ,
    p_0_in,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_awaddr);
  output eWDT1_Reg_reg;
  output [0:0]s_axi_rresp;
  output bus2ip_cs;
  output Bus_RNW_reg_reg;
  output eWDT2_Reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output s_axi_wready;
  output s_axi_arready;
  output \iTimebase_count_reg[0] ;
  output [1:0]bus2ip_wrce;
  output eWDT2_Reg_reg_0;
  output eWDT1_Reg_reg_0;
  output [31:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input ip2bus_error__0;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_arvalid;
  input [1:0]s_axi_wdata;
  input [1:0]read_Mux_In;
  input [3:0]read_Mux_In__0;
  input wdt_State_Reg_reg;
  input wdt_Reset_Status_Reg;
  input [4:0]Q;
  input [3:0]S;
  input \iTimebase_count_reg[8] ;
  input \iTimebase_count_reg[9] ;
  input \iTimebase_count_reg[10] ;
  input \iTimebase_count_reg[11] ;
  input \iTimebase_count_reg[12] ;
  input \iTimebase_count_reg[13] ;
  input \iTimebase_count_reg[14] ;
  input \iTimebase_count_reg[15] ;
  input \iTimebase_count_reg[16] ;
  input \iTimebase_count_reg[17] ;
  input \iTimebase_count_reg[18] ;
  input \iTimebase_count_reg[19] ;
  input \iTimebase_count_reg[20] ;
  input \iTimebase_count_reg[21] ;
  input \iTimebase_count_reg[22] ;
  input \iTimebase_count_reg[23] ;
  input \iTimebase_count_reg[24] ;
  input \iTimebase_count_reg[25] ;
  input \iTimebase_count_reg[26] ;
  input \iTimebase_count_reg[27] ;
  input \iTimebase_count_reg[28] ;
  input \iTimebase_count_reg[29] ;
  input \iTimebase_count_reg[30] ;
  input p_0_in;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire I_DECODER_n_45;
  wire I_DECODER_n_46;
  wire I_DECODER_n_7;
  wire [4:0]Q;
  wire [3:0]S;
  wire [0:31]\TIMEBASE_WDT_CORE_I/sl_DBus_In ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_3_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw_i06_out;
  wire bus2ip_rnw_i_i_1_n_0;
  wire [1:0]bus2ip_wrce;
  wire clear;
  wire eWDT1_Reg_reg;
  wire eWDT1_Reg_reg_0;
  wire eWDT2_Reg_reg;
  wire eWDT2_Reg_reg_0;
  wire \iTimebase_count_reg[0] ;
  wire \iTimebase_count_reg[10] ;
  wire \iTimebase_count_reg[11] ;
  wire \iTimebase_count_reg[12] ;
  wire \iTimebase_count_reg[13] ;
  wire \iTimebase_count_reg[14] ;
  wire \iTimebase_count_reg[15] ;
  wire \iTimebase_count_reg[16] ;
  wire \iTimebase_count_reg[17] ;
  wire \iTimebase_count_reg[18] ;
  wire \iTimebase_count_reg[19] ;
  wire \iTimebase_count_reg[20] ;
  wire \iTimebase_count_reg[21] ;
  wire \iTimebase_count_reg[22] ;
  wire \iTimebase_count_reg[23] ;
  wire \iTimebase_count_reg[24] ;
  wire \iTimebase_count_reg[25] ;
  wire \iTimebase_count_reg[26] ;
  wire \iTimebase_count_reg[27] ;
  wire \iTimebase_count_reg[28] ;
  wire \iTimebase_count_reg[29] ;
  wire \iTimebase_count_reg[30] ;
  wire \iTimebase_count_reg[8] ;
  wire \iTimebase_count_reg[9] ;
  wire ip2bus_error__0;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_write;
  wire is_write_i_1_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [1:0]p_0_out;
  wire [5:0]plusOp;
  wire [1:0]read_Mux_In;
  wire [3:0]read_Mux_In__0;
  wire rst;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [1:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire wdt_Reset_Status_Reg;
  wire wdt_State_Reg_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .R(clear));
  system_axi_timebase_wdt_0_0_address_decoder I_DECODER
       (.D(p_0_out),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .Q(start2),
        .S(S),
        .\bus2ip_addr_i_reg[2] (\bus2ip_addr_i_reg_n_0_[2] ),
        .\bus2ip_addr_i_reg[3] (\bus2ip_addr_i_reg_n_0_[3] ),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_rnw_i_reg(Bus_RNW_reg_reg),
        .bus2ip_wrce(bus2ip_wrce),
        .eWDT1_Reg_reg(eWDT1_Reg_reg),
        .eWDT1_Reg_reg_0(eWDT1_Reg_reg_0),
        .eWDT2_Reg_reg(eWDT2_Reg_reg),
        .eWDT2_Reg_reg_0(eWDT2_Reg_reg_0),
        .\iTimebase_count_reg[0] (\iTimebase_count_reg[0] ),
        .\iTimebase_count_reg[10] (\iTimebase_count_reg[10] ),
        .\iTimebase_count_reg[11] (\iTimebase_count_reg[11] ),
        .\iTimebase_count_reg[12] (\iTimebase_count_reg[12] ),
        .\iTimebase_count_reg[13] (\iTimebase_count_reg[13] ),
        .\iTimebase_count_reg[14] (\iTimebase_count_reg[14] ),
        .\iTimebase_count_reg[15] (\iTimebase_count_reg[15] ),
        .\iTimebase_count_reg[16] (\iTimebase_count_reg[16] ),
        .\iTimebase_count_reg[17] (\iTimebase_count_reg[17] ),
        .\iTimebase_count_reg[18] (\iTimebase_count_reg[18] ),
        .\iTimebase_count_reg[19] (\iTimebase_count_reg[19] ),
        .\iTimebase_count_reg[20] (\iTimebase_count_reg[20] ),
        .\iTimebase_count_reg[21] (\iTimebase_count_reg[21] ),
        .\iTimebase_count_reg[22] (\iTimebase_count_reg[22] ),
        .\iTimebase_count_reg[23] (\iTimebase_count_reg[23] ),
        .\iTimebase_count_reg[24] (\iTimebase_count_reg[24] ),
        .\iTimebase_count_reg[25] (\iTimebase_count_reg[25] ),
        .\iTimebase_count_reg[26] (\iTimebase_count_reg[26] ),
        .\iTimebase_count_reg[27] (\iTimebase_count_reg[27] ),
        .\iTimebase_count_reg[28] (\iTimebase_count_reg[28] ),
        .\iTimebase_count_reg[29] (\iTimebase_count_reg[29] ),
        .\iTimebase_count_reg[30] (\iTimebase_count_reg[30] ),
        .\iTimebase_count_reg[8] (\iTimebase_count_reg[8] ),
        .\iTimebase_count_reg[9] (\iTimebase_count_reg[9] ),
        .ip2bus_error__0(ip2bus_error__0),
        .is_read(is_read),
        .is_write_reg(is_write_reg_n_0),
        .p_0_in(p_0_in),
        .read_Mux_In(read_Mux_In),
        .read_Mux_In__0(read_Mux_In__0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .\s_axi_bresp_i_reg[1] (I_DECODER_n_46),
        .s_axi_bvalid_i_reg(I_DECODER_n_45),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid),
        .\s_axi_rdata_i_reg[31] ({\TIMEBASE_WDT_CORE_I/sl_DBus_In [0],\TIMEBASE_WDT_CORE_I/sl_DBus_In [1],\TIMEBASE_WDT_CORE_I/sl_DBus_In [2],\TIMEBASE_WDT_CORE_I/sl_DBus_In [3],\TIMEBASE_WDT_CORE_I/sl_DBus_In [4],\TIMEBASE_WDT_CORE_I/sl_DBus_In [5],\TIMEBASE_WDT_CORE_I/sl_DBus_In [6],\TIMEBASE_WDT_CORE_I/sl_DBus_In [7],\TIMEBASE_WDT_CORE_I/sl_DBus_In [8],\TIMEBASE_WDT_CORE_I/sl_DBus_In [9],\TIMEBASE_WDT_CORE_I/sl_DBus_In [10],\TIMEBASE_WDT_CORE_I/sl_DBus_In [11],\TIMEBASE_WDT_CORE_I/sl_DBus_In [12],\TIMEBASE_WDT_CORE_I/sl_DBus_In [13],\TIMEBASE_WDT_CORE_I/sl_DBus_In [14],\TIMEBASE_WDT_CORE_I/sl_DBus_In [15],\TIMEBASE_WDT_CORE_I/sl_DBus_In [16],\TIMEBASE_WDT_CORE_I/sl_DBus_In [17],\TIMEBASE_WDT_CORE_I/sl_DBus_In [18],\TIMEBASE_WDT_CORE_I/sl_DBus_In [19],\TIMEBASE_WDT_CORE_I/sl_DBus_In [20],\TIMEBASE_WDT_CORE_I/sl_DBus_In [21],\TIMEBASE_WDT_CORE_I/sl_DBus_In [22],\TIMEBASE_WDT_CORE_I/sl_DBus_In [23],\TIMEBASE_WDT_CORE_I/sl_DBus_In [24],\TIMEBASE_WDT_CORE_I/sl_DBus_In [25],\TIMEBASE_WDT_CORE_I/sl_DBus_In [26],\TIMEBASE_WDT_CORE_I/sl_DBus_In [27],\TIMEBASE_WDT_CORE_I/sl_DBus_In [28],\TIMEBASE_WDT_CORE_I/sl_DBus_In [29],\TIMEBASE_WDT_CORE_I/sl_DBus_In [30],\TIMEBASE_WDT_CORE_I/sl_DBus_In [31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(I_DECODER_n_7),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid),
        .s_axi_rvalid_i_reg_1(\state[0]_i_2_n_0 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(\state[1]_i_2_n_0 ),
        .\state_reg[1] (state),
        .\state_reg[1]_0 (\state[1]_i_3_n_0 ),
        .\timer_width_reg[4] (Q),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg),
        .wdt_State_Reg_reg(wdt_State_Reg_reg));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(bus2ip_rnw_i06_out),
        .I2(s_axi_awaddr[0]),
        .I3(\bus2ip_addr_i[3]_i_3_n_0 ),
        .I4(\bus2ip_addr_i_reg_n_0_[2] ),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(bus2ip_rnw_i06_out),
        .I2(s_axi_awaddr[1]),
        .I3(\bus2ip_addr_i[3]_i_3_n_0 ),
        .I4(\bus2ip_addr_i_reg_n_0_[3] ),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bus2ip_addr_i[3]_i_2 
       (.I0(s_axi_arvalid),
        .I1(state[0]),
        .I2(state[1]),
        .O(bus2ip_rnw_i06_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[3]_i_3 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[3]_i_3_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFBF000000AA)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(Bus_RNW_reg_reg),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(Bus_RNW_reg_reg),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(is_write),
        .I3(is_read),
        .O(is_read_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA80808055555555)) 
    is_read_i_2
       (.I0(state[0]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .I5(state[1]),
        .O(is_write));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read),
        .R(rst));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    is_write_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(is_write),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_46),
        .Q(s_axi_bresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_45),
        .Q(s_axi_bvalid),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [31]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [21]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [20]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [19]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [18]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [17]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [16]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [15]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [14]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [13]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [12]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [30]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [11]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [10]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [9]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [8]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [7]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [6]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [5]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [4]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [3]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [2]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [29]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [1]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [0]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [28]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [27]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [26]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [25]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [24]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [23]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [22]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(ip2bus_error__0),
        .Q(s_axi_rresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_7),
        .Q(s_axi_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \state[0]_i_2 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .O(\state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \state[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \state[1]_i_3 
       (.I0(state[1]),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "timebase_wdt_core" *) 
module system_axi_timebase_wdt_0_0_timebase_wdt_core
   (bus2ip_reset,
    wdt_reset,
    p_0_in,
    timebase_interrupt,
    read_Mux_In__0,
    S,
    \iTimebase_count_reg[11]_0 ,
    \iTimebase_count_reg[11]_1 ,
    \iTimebase_count_reg[11]_2 ,
    \iTimebase_count_reg[11]_3 ,
    \iTimebase_count_reg[15]_0 ,
    \iTimebase_count_reg[15]_1 ,
    \iTimebase_count_reg[15]_2 ,
    \iTimebase_count_reg[15]_3 ,
    \iTimebase_count_reg[19]_0 ,
    \iTimebase_count_reg[19]_1 ,
    \iTimebase_count_reg[19]_2 ,
    \iTimebase_count_reg[19]_3 ,
    \iTimebase_count_reg[23]_0 ,
    \iTimebase_count_reg[23]_1 ,
    \iTimebase_count_reg[23]_2 ,
    \iTimebase_count_reg[23]_3 ,
    \iTimebase_count_reg[27]_0 ,
    \iTimebase_count_reg[27]_1 ,
    \iTimebase_count_reg[27]_2 ,
    \iTimebase_count_reg[27]_3 ,
    \iTimebase_count_reg[31]_0 ,
    \iTimebase_count_reg[31]_1 ,
    \iTimebase_count_reg[31]_2 ,
    read_Mux_In,
    wdt_interrupt,
    wdt_Reset_Status_Reg,
    Q,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_aresetn,
    s_axi_wdata,
    bus2ip_wrce,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg,
    freeze);
  output bus2ip_reset;
  output wdt_reset;
  output p_0_in;
  output timebase_interrupt;
  output [3:0]read_Mux_In__0;
  output [3:0]S;
  output \iTimebase_count_reg[11]_0 ;
  output \iTimebase_count_reg[11]_1 ;
  output \iTimebase_count_reg[11]_2 ;
  output \iTimebase_count_reg[11]_3 ;
  output \iTimebase_count_reg[15]_0 ;
  output \iTimebase_count_reg[15]_1 ;
  output \iTimebase_count_reg[15]_2 ;
  output \iTimebase_count_reg[15]_3 ;
  output \iTimebase_count_reg[19]_0 ;
  output \iTimebase_count_reg[19]_1 ;
  output \iTimebase_count_reg[19]_2 ;
  output \iTimebase_count_reg[19]_3 ;
  output \iTimebase_count_reg[23]_0 ;
  output \iTimebase_count_reg[23]_1 ;
  output \iTimebase_count_reg[23]_2 ;
  output \iTimebase_count_reg[23]_3 ;
  output \iTimebase_count_reg[27]_0 ;
  output \iTimebase_count_reg[27]_1 ;
  output \iTimebase_count_reg[27]_2 ;
  output \iTimebase_count_reg[27]_3 ;
  output \iTimebase_count_reg[31]_0 ;
  output \iTimebase_count_reg[31]_1 ;
  output \iTimebase_count_reg[31]_2 ;
  output [1:0]read_Mux_In;
  output wdt_interrupt;
  output wdt_Reset_Status_Reg;
  output [4:0]Q;
  input s_axi_aclk;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_aresetn;
  input [4:0]s_axi_wdata;
  input [1:0]bus2ip_wrce;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input Bus_RNW_reg;
  input freeze;

  wire Bus_RNW_reg;
  wire Current_State;
  wire Current_State_i_1_n_0;
  wire Current_State_i_2_n_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire INPUT_DOUBLE_REGS3_n_0;
  wire [4:0]Q;
  wire [3:0]S;
  wire Timebase_Interrupt0;
  wire [1:0]WDT_Current_State;
  wire \WDT_Current_State[0]_i_1_n_0 ;
  wire \WDT_Current_State[1]_i_1_n_0 ;
  wire bus2ip_reset;
  wire [1:0]bus2ip_wrce;
  wire count_MSB_Reg;
  wire freeze;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2__1_n_0;
  wire g0_b2__2_n_0;
  wire g0_b2_n_0;
  wire g0_b3_i_1_n_0;
  wire g0_b3_i_2_n_0;
  wire g0_b3_i_3_n_0;
  wire g0_b3_i_4_n_0;
  wire g0_b3_i_5_n_0;
  wire g0_b3_i_6_n_0;
  wire g0_b3_i_7_n_0;
  wire g0_b3_i_8_n_0;
  wire g0_b3_i_9_n_0;
  wire g0_b3_n_0;
  wire \iTimebase_count[0]_i_5_n_0 ;
  wire \iTimebase_count_reg[0]_i_3_n_0 ;
  wire \iTimebase_count_reg[0]_i_3_n_1 ;
  wire \iTimebase_count_reg[0]_i_3_n_2 ;
  wire \iTimebase_count_reg[0]_i_3_n_3 ;
  wire \iTimebase_count_reg[0]_i_3_n_4 ;
  wire \iTimebase_count_reg[0]_i_3_n_5 ;
  wire \iTimebase_count_reg[0]_i_3_n_6 ;
  wire \iTimebase_count_reg[0]_i_3_n_7 ;
  wire \iTimebase_count_reg[11]_0 ;
  wire \iTimebase_count_reg[11]_1 ;
  wire \iTimebase_count_reg[11]_2 ;
  wire \iTimebase_count_reg[11]_3 ;
  wire \iTimebase_count_reg[12]_i_1_n_0 ;
  wire \iTimebase_count_reg[12]_i_1_n_1 ;
  wire \iTimebase_count_reg[12]_i_1_n_2 ;
  wire \iTimebase_count_reg[12]_i_1_n_3 ;
  wire \iTimebase_count_reg[12]_i_1_n_4 ;
  wire \iTimebase_count_reg[12]_i_1_n_5 ;
  wire \iTimebase_count_reg[12]_i_1_n_6 ;
  wire \iTimebase_count_reg[12]_i_1_n_7 ;
  wire \iTimebase_count_reg[15]_0 ;
  wire \iTimebase_count_reg[15]_1 ;
  wire \iTimebase_count_reg[15]_2 ;
  wire \iTimebase_count_reg[15]_3 ;
  wire \iTimebase_count_reg[16]_i_1_n_0 ;
  wire \iTimebase_count_reg[16]_i_1_n_1 ;
  wire \iTimebase_count_reg[16]_i_1_n_2 ;
  wire \iTimebase_count_reg[16]_i_1_n_3 ;
  wire \iTimebase_count_reg[16]_i_1_n_4 ;
  wire \iTimebase_count_reg[16]_i_1_n_5 ;
  wire \iTimebase_count_reg[16]_i_1_n_6 ;
  wire \iTimebase_count_reg[16]_i_1_n_7 ;
  wire \iTimebase_count_reg[19]_0 ;
  wire \iTimebase_count_reg[19]_1 ;
  wire \iTimebase_count_reg[19]_2 ;
  wire \iTimebase_count_reg[19]_3 ;
  wire \iTimebase_count_reg[20]_i_1_n_0 ;
  wire \iTimebase_count_reg[20]_i_1_n_1 ;
  wire \iTimebase_count_reg[20]_i_1_n_2 ;
  wire \iTimebase_count_reg[20]_i_1_n_3 ;
  wire \iTimebase_count_reg[20]_i_1_n_4 ;
  wire \iTimebase_count_reg[20]_i_1_n_5 ;
  wire \iTimebase_count_reg[20]_i_1_n_6 ;
  wire \iTimebase_count_reg[20]_i_1_n_7 ;
  wire \iTimebase_count_reg[23]_0 ;
  wire \iTimebase_count_reg[23]_1 ;
  wire \iTimebase_count_reg[23]_2 ;
  wire \iTimebase_count_reg[23]_3 ;
  wire \iTimebase_count_reg[24]_i_1_n_0 ;
  wire \iTimebase_count_reg[24]_i_1_n_1 ;
  wire \iTimebase_count_reg[24]_i_1_n_2 ;
  wire \iTimebase_count_reg[24]_i_1_n_3 ;
  wire \iTimebase_count_reg[24]_i_1_n_4 ;
  wire \iTimebase_count_reg[24]_i_1_n_5 ;
  wire \iTimebase_count_reg[24]_i_1_n_6 ;
  wire \iTimebase_count_reg[24]_i_1_n_7 ;
  wire \iTimebase_count_reg[27]_0 ;
  wire \iTimebase_count_reg[27]_1 ;
  wire \iTimebase_count_reg[27]_2 ;
  wire \iTimebase_count_reg[27]_3 ;
  wire \iTimebase_count_reg[28]_i_1_n_1 ;
  wire \iTimebase_count_reg[28]_i_1_n_2 ;
  wire \iTimebase_count_reg[28]_i_1_n_3 ;
  wire \iTimebase_count_reg[28]_i_1_n_4 ;
  wire \iTimebase_count_reg[28]_i_1_n_5 ;
  wire \iTimebase_count_reg[28]_i_1_n_6 ;
  wire \iTimebase_count_reg[28]_i_1_n_7 ;
  wire \iTimebase_count_reg[31]_0 ;
  wire \iTimebase_count_reg[31]_1 ;
  wire \iTimebase_count_reg[31]_2 ;
  wire \iTimebase_count_reg[4]_i_1_n_0 ;
  wire \iTimebase_count_reg[4]_i_1_n_1 ;
  wire \iTimebase_count_reg[4]_i_1_n_2 ;
  wire \iTimebase_count_reg[4]_i_1_n_3 ;
  wire \iTimebase_count_reg[4]_i_1_n_4 ;
  wire \iTimebase_count_reg[4]_i_1_n_5 ;
  wire \iTimebase_count_reg[4]_i_1_n_6 ;
  wire \iTimebase_count_reg[4]_i_1_n_7 ;
  wire \iTimebase_count_reg[8]_i_1_n_0 ;
  wire \iTimebase_count_reg[8]_i_1_n_1 ;
  wire \iTimebase_count_reg[8]_i_1_n_2 ;
  wire \iTimebase_count_reg[8]_i_1_n_3 ;
  wire \iTimebase_count_reg[8]_i_1_n_4 ;
  wire \iTimebase_count_reg[8]_i_1_n_5 ;
  wire \iTimebase_count_reg[8]_i_1_n_6 ;
  wire \iTimebase_count_reg[8]_i_1_n_7 ;
  wire iWDT_Reset;
  wire p_0_in;
  wire p_2_in;
  wire [1:0]read_Mux_In;
  wire [3:0]read_Mux_In__0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [4:0]s_axi_wdata;
  wire timebase_Reg_Reset;
  wire timebase_interrupt;
  wire wdt_Bitin_1d;
  wire wdt_Bitin_1d_i_1_n_0;
  wire wdt_Bitin_1d_i_2_n_0;
  wire wdt_Reset_Status_Reg;
  wire wdt_Reset_Status_Reg_i_1_n_0;
  wire wdt_State_Preset;
  wire wdt_State_Preset_i_10_n_0;
  wire wdt_State_Preset_i_11_n_0;
  wire wdt_State_Preset_i_12_n_0;
  wire wdt_State_Preset_i_3_n_0;
  wire wdt_State_Preset_i_4_n_0;
  wire wdt_State_Preset_i_5_n_0;
  wire wdt_State_Preset_i_6_n_0;
  wire wdt_State_Preset_i_7_n_0;
  wire wdt_State_Preset_i_8_n_0;
  wire wdt_State_Preset_i_9_n_0;
  wire wdt_State_Preset_reg_i_2_n_0;
  wire wdt_State_Reg_i_1_n_0;
  wire wdt_interrupt;
  wire wdt_reset;
  wire [3:3]\NLW_iTimebase_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000A022A022A022)) 
    Current_State_i_1
       (.I0(Current_State_i_2_n_0),
        .I1(g0_b3_n_0),
        .I2(Current_State),
        .I3(wdt_State_Preset_reg_i_2_n_0),
        .I4(WDT_Current_State[1]),
        .I5(WDT_Current_State[0]),
        .O(Current_State_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    Current_State_i_2
       (.I0(s_axi_aresetn),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(read_Mux_In[1]),
        .I3(read_Mux_In[0]),
        .O(Current_State_i_2_n_0));
  FDRE Current_State_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Current_State_i_1_n_0),
        .Q(Current_State),
        .R(1'b0));
  system_axi_timebase_wdt_0_0_cdc_sync INPUT_DOUBLE_REGS3
       (.freeze(freeze),
        .\iTimebase_count_reg[31] (INPUT_DOUBLE_REGS3_n_0),
        .s_axi_aclk(s_axi_aclk));
  LUT1 #(
    .INIT(2'h1)) 
    Timebase_Interrupt_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset));
  LUT2 #(
    .INIT(4'h2)) 
    Timebase_Interrupt_i_2
       (.I0(count_MSB_Reg),
        .I1(p_0_in),
        .O(Timebase_Interrupt0));
  FDRE Timebase_Interrupt_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Timebase_Interrupt0),
        .Q(timebase_interrupt),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \WDT_Current_State[0]_i_1 
       (.I0(WDT_Current_State[1]),
        .I1(wdt_interrupt),
        .I2(WDT_Current_State[0]),
        .O(\WDT_Current_State[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEC22)) 
    \WDT_Current_State[1]_i_1 
       (.I0(p_2_in),
        .I1(WDT_Current_State[1]),
        .I2(wdt_interrupt),
        .I3(WDT_Current_State[0]),
        .O(\WDT_Current_State[1]_i_1_n_0 ));
  FDRE \WDT_Current_State_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\WDT_Current_State[0]_i_1_n_0 ),
        .Q(WDT_Current_State[0]),
        .R(bus2ip_reset));
  FDRE \WDT_Current_State_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\WDT_Current_State[1]_i_1_n_0 ),
        .Q(WDT_Current_State[1]),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'h8)) 
    WDT_Reset_i_1
       (.I0(WDT_Current_State[1]),
        .I1(WDT_Current_State[0]),
        .O(iWDT_Reset));
  FDRE WDT_Reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iWDT_Reset),
        .Q(wdt_reset),
        .R(1'b0));
  FDRE count_MSB_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(count_MSB_Reg),
        .R(bus2ip_reset));
  FDRE eWDT1_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(read_Mux_In[1]),
        .R(bus2ip_reset));
  FDRE eWDT2_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .Q(read_Mux_In[0]),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    g0_b1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(g0_b1_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    g0_b2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hA8A8A857)) 
    g0_b2__0
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .O(g0_b2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h4444445B)) 
    g0_b2__1
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(g0_b0_n_0),
        .I4(g0_b1_n_0),
        .O(g0_b2__1_n_0));
  LUT5 #(
    .INIT(32'hCCCCCCC8)) 
    g0_b2__2
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .O(g0_b2__2_n_0));
  LUT5 #(
    .INIT(32'h084C3B7F)) 
    g0_b3
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(g0_b3_i_1_n_0),
        .I3(g0_b3_i_2_n_0),
        .I4(g0_b3_i_3_n_0),
        .O(g0_b3_n_0));
  MUXF7 g0_b3_i_1
       (.I0(g0_b3_i_4_n_0),
        .I1(g0_b3_i_5_n_0),
        .O(g0_b3_i_1_n_0),
        .S(g0_b2_n_0));
  MUXF7 g0_b3_i_2
       (.I0(g0_b3_i_6_n_0),
        .I1(g0_b3_i_7_n_0),
        .O(g0_b3_i_2_n_0),
        .S(g0_b2_n_0));
  MUXF7 g0_b3_i_3
       (.I0(g0_b3_i_8_n_0),
        .I1(g0_b3_i_9_n_0),
        .O(g0_b3_i_3_n_0),
        .S(g0_b2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3_i_4
       (.I0(\iTimebase_count_reg[27]_3 ),
        .I1(\iTimebase_count_reg[27]_2 ),
        .I2(g0_b1_n_0),
        .I3(\iTimebase_count_reg[27]_1 ),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[27]_0 ),
        .O(g0_b3_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3_i_5
       (.I0(p_0_in),
        .I1(\iTimebase_count_reg[31]_2 ),
        .I2(g0_b1_n_0),
        .I3(\iTimebase_count_reg[31]_1 ),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[31]_0 ),
        .O(g0_b3_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3_i_6
       (.I0(\iTimebase_count_reg[19]_3 ),
        .I1(\iTimebase_count_reg[19]_2 ),
        .I2(g0_b1_n_0),
        .I3(\iTimebase_count_reg[19]_1 ),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[19]_0 ),
        .O(g0_b3_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3_i_7
       (.I0(\iTimebase_count_reg[23]_3 ),
        .I1(\iTimebase_count_reg[23]_2 ),
        .I2(g0_b1_n_0),
        .I3(\iTimebase_count_reg[23]_1 ),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[23]_0 ),
        .O(g0_b3_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3_i_8
       (.I0(\iTimebase_count_reg[11]_3 ),
        .I1(\iTimebase_count_reg[11]_2 ),
        .I2(g0_b1_n_0),
        .I3(\iTimebase_count_reg[11]_1 ),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[11]_0 ),
        .O(g0_b3_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b3_i_9
       (.I0(\iTimebase_count_reg[15]_3 ),
        .I1(\iTimebase_count_reg[15]_2 ),
        .I2(g0_b1_n_0),
        .I3(\iTimebase_count_reg[15]_1 ),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[15]_0 ),
        .O(g0_b3_i_9_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    \iTimebase_count[0]_i_1 
       (.I0(read_Mux_In[0]),
        .I1(read_Mux_In[1]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(s_axi_aresetn),
        .O(timebase_Reg_Reset));
  LUT1 #(
    .INIT(2'h1)) 
    \iTimebase_count[0]_i_5 
       (.I0(read_Mux_In__0[0]),
        .O(\iTimebase_count[0]_i_5_n_0 ));
  FDRE \iTimebase_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[0]_i_3_n_7 ),
        .Q(read_Mux_In__0[0]),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\iTimebase_count_reg[0]_i_3_n_0 ,\iTimebase_count_reg[0]_i_3_n_1 ,\iTimebase_count_reg[0]_i_3_n_2 ,\iTimebase_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\iTimebase_count_reg[0]_i_3_n_4 ,\iTimebase_count_reg[0]_i_3_n_5 ,\iTimebase_count_reg[0]_i_3_n_6 ,\iTimebase_count_reg[0]_i_3_n_7 }),
        .S({read_Mux_In__0[3:1],\iTimebase_count[0]_i_5_n_0 }));
  FDRE \iTimebase_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[8]_i_1_n_5 ),
        .Q(\iTimebase_count_reg[11]_2 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[8]_i_1_n_4 ),
        .Q(\iTimebase_count_reg[11]_3 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[12]_i_1_n_7 ),
        .Q(\iTimebase_count_reg[15]_0 ),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[12]_i_1 
       (.CI(\iTimebase_count_reg[8]_i_1_n_0 ),
        .CO({\iTimebase_count_reg[12]_i_1_n_0 ,\iTimebase_count_reg[12]_i_1_n_1 ,\iTimebase_count_reg[12]_i_1_n_2 ,\iTimebase_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[12]_i_1_n_4 ,\iTimebase_count_reg[12]_i_1_n_5 ,\iTimebase_count_reg[12]_i_1_n_6 ,\iTimebase_count_reg[12]_i_1_n_7 }),
        .S({\iTimebase_count_reg[15]_3 ,\iTimebase_count_reg[15]_2 ,\iTimebase_count_reg[15]_1 ,\iTimebase_count_reg[15]_0 }));
  FDRE \iTimebase_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[12]_i_1_n_6 ),
        .Q(\iTimebase_count_reg[15]_1 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[12]_i_1_n_5 ),
        .Q(\iTimebase_count_reg[15]_2 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[12]_i_1_n_4 ),
        .Q(\iTimebase_count_reg[15]_3 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[16]_i_1_n_7 ),
        .Q(\iTimebase_count_reg[19]_0 ),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[16]_i_1 
       (.CI(\iTimebase_count_reg[12]_i_1_n_0 ),
        .CO({\iTimebase_count_reg[16]_i_1_n_0 ,\iTimebase_count_reg[16]_i_1_n_1 ,\iTimebase_count_reg[16]_i_1_n_2 ,\iTimebase_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[16]_i_1_n_4 ,\iTimebase_count_reg[16]_i_1_n_5 ,\iTimebase_count_reg[16]_i_1_n_6 ,\iTimebase_count_reg[16]_i_1_n_7 }),
        .S({\iTimebase_count_reg[19]_3 ,\iTimebase_count_reg[19]_2 ,\iTimebase_count_reg[19]_1 ,\iTimebase_count_reg[19]_0 }));
  FDRE \iTimebase_count_reg[17] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[16]_i_1_n_6 ),
        .Q(\iTimebase_count_reg[19]_1 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[18] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[16]_i_1_n_5 ),
        .Q(\iTimebase_count_reg[19]_2 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[19] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[16]_i_1_n_4 ),
        .Q(\iTimebase_count_reg[19]_3 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[0]_i_3_n_6 ),
        .Q(read_Mux_In__0[1]),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[20] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[20]_i_1_n_7 ),
        .Q(\iTimebase_count_reg[23]_0 ),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[20]_i_1 
       (.CI(\iTimebase_count_reg[16]_i_1_n_0 ),
        .CO({\iTimebase_count_reg[20]_i_1_n_0 ,\iTimebase_count_reg[20]_i_1_n_1 ,\iTimebase_count_reg[20]_i_1_n_2 ,\iTimebase_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[20]_i_1_n_4 ,\iTimebase_count_reg[20]_i_1_n_5 ,\iTimebase_count_reg[20]_i_1_n_6 ,\iTimebase_count_reg[20]_i_1_n_7 }),
        .S({\iTimebase_count_reg[23]_3 ,\iTimebase_count_reg[23]_2 ,\iTimebase_count_reg[23]_1 ,\iTimebase_count_reg[23]_0 }));
  FDRE \iTimebase_count_reg[21] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[20]_i_1_n_6 ),
        .Q(\iTimebase_count_reg[23]_1 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[22] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[20]_i_1_n_5 ),
        .Q(\iTimebase_count_reg[23]_2 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[23] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[20]_i_1_n_4 ),
        .Q(\iTimebase_count_reg[23]_3 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[24] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[24]_i_1_n_7 ),
        .Q(\iTimebase_count_reg[27]_0 ),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[24]_i_1 
       (.CI(\iTimebase_count_reg[20]_i_1_n_0 ),
        .CO({\iTimebase_count_reg[24]_i_1_n_0 ,\iTimebase_count_reg[24]_i_1_n_1 ,\iTimebase_count_reg[24]_i_1_n_2 ,\iTimebase_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[24]_i_1_n_4 ,\iTimebase_count_reg[24]_i_1_n_5 ,\iTimebase_count_reg[24]_i_1_n_6 ,\iTimebase_count_reg[24]_i_1_n_7 }),
        .S({\iTimebase_count_reg[27]_3 ,\iTimebase_count_reg[27]_2 ,\iTimebase_count_reg[27]_1 ,\iTimebase_count_reg[27]_0 }));
  FDRE \iTimebase_count_reg[25] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[24]_i_1_n_6 ),
        .Q(\iTimebase_count_reg[27]_1 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[26] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[24]_i_1_n_5 ),
        .Q(\iTimebase_count_reg[27]_2 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[27] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[24]_i_1_n_4 ),
        .Q(\iTimebase_count_reg[27]_3 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[28] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[28]_i_1_n_7 ),
        .Q(\iTimebase_count_reg[31]_0 ),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[28]_i_1 
       (.CI(\iTimebase_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_iTimebase_count_reg[28]_i_1_CO_UNCONNECTED [3],\iTimebase_count_reg[28]_i_1_n_1 ,\iTimebase_count_reg[28]_i_1_n_2 ,\iTimebase_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[28]_i_1_n_4 ,\iTimebase_count_reg[28]_i_1_n_5 ,\iTimebase_count_reg[28]_i_1_n_6 ,\iTimebase_count_reg[28]_i_1_n_7 }),
        .S({p_0_in,\iTimebase_count_reg[31]_2 ,\iTimebase_count_reg[31]_1 ,\iTimebase_count_reg[31]_0 }));
  FDRE \iTimebase_count_reg[29] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[28]_i_1_n_6 ),
        .Q(\iTimebase_count_reg[31]_1 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[0]_i_3_n_5 ),
        .Q(read_Mux_In__0[2]),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[30] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[28]_i_1_n_5 ),
        .Q(\iTimebase_count_reg[31]_2 ),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[31] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[28]_i_1_n_4 ),
        .Q(p_0_in),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[0]_i_3_n_4 ),
        .Q(read_Mux_In__0[3]),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[4]_i_1_n_7 ),
        .Q(S[0]),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[4]_i_1 
       (.CI(\iTimebase_count_reg[0]_i_3_n_0 ),
        .CO({\iTimebase_count_reg[4]_i_1_n_0 ,\iTimebase_count_reg[4]_i_1_n_1 ,\iTimebase_count_reg[4]_i_1_n_2 ,\iTimebase_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[4]_i_1_n_4 ,\iTimebase_count_reg[4]_i_1_n_5 ,\iTimebase_count_reg[4]_i_1_n_6 ,\iTimebase_count_reg[4]_i_1_n_7 }),
        .S(S));
  FDRE \iTimebase_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[4]_i_1_n_6 ),
        .Q(S[1]),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[4]_i_1_n_5 ),
        .Q(S[2]),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[4]_i_1_n_4 ),
        .Q(S[3]),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[8]_i_1_n_7 ),
        .Q(\iTimebase_count_reg[11]_0 ),
        .R(timebase_Reg_Reset));
  CARRY4 \iTimebase_count_reg[8]_i_1 
       (.CI(\iTimebase_count_reg[4]_i_1_n_0 ),
        .CO({\iTimebase_count_reg[8]_i_1_n_0 ,\iTimebase_count_reg[8]_i_1_n_1 ,\iTimebase_count_reg[8]_i_1_n_2 ,\iTimebase_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[8]_i_1_n_4 ,\iTimebase_count_reg[8]_i_1_n_5 ,\iTimebase_count_reg[8]_i_1_n_6 ,\iTimebase_count_reg[8]_i_1_n_7 }),
        .S({\iTimebase_count_reg[11]_3 ,\iTimebase_count_reg[11]_2 ,\iTimebase_count_reg[11]_1 ,\iTimebase_count_reg[11]_0 }));
  FDRE \iTimebase_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(INPUT_DOUBLE_REGS3_n_0),
        .D(\iTimebase_count_reg[8]_i_1_n_6 ),
        .Q(\iTimebase_count_reg[11]_1 ),
        .R(timebase_Reg_Reset));
  FDRE #(
    .INIT(1'b0)) 
    \timer_width_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .S(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    wdt_Bitin_1d_i_1
       (.I0(wdt_Bitin_1d_i_2_n_0),
        .I1(bus2ip_wrce[1]),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(WDT_Current_State[1]),
        .I5(WDT_Current_State[0]),
        .O(wdt_Bitin_1d_i_1_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    wdt_Bitin_1d_i_2
       (.I0(g0_b3_n_0),
        .I1(Current_State),
        .I2(wdt_State_Preset_reg_i_2_n_0),
        .O(wdt_Bitin_1d_i_2_n_0));
  FDRE wdt_Bitin_1d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdt_Bitin_1d_i_1_n_0),
        .Q(wdt_Bitin_1d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAEA00EAEAEAEAEA)) 
    wdt_Reset_Status_Reg_i_1
       (.I0(wdt_Reset_Status_Reg),
        .I1(WDT_Current_State[1]),
        .I2(WDT_Current_State[0]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(s_axi_wdata[3]),
        .O(wdt_Reset_Status_Reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wdt_Reset_Status_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdt_Reset_Status_Reg_i_1_n_0),
        .Q(wdt_Reset_Status_Reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000041414100)) 
    wdt_State_Preset_i_1
       (.I0(wdt_State_Preset_reg_i_2_n_0),
        .I1(Current_State),
        .I2(g0_b3_n_0),
        .I3(read_Mux_In[1]),
        .I4(read_Mux_In[0]),
        .I5(wdt_Bitin_1d),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_10
       (.I0(\iTimebase_count_reg[23]_0 ),
        .I1(\iTimebase_count_reg[23]_1 ),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(\iTimebase_count_reg[23]_2 ),
        .I5(\iTimebase_count_reg[23]_3 ),
        .O(wdt_State_Preset_i_10_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_11
       (.I0(\iTimebase_count_reg[31]_0 ),
        .I1(\iTimebase_count_reg[31]_1 ),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(\iTimebase_count_reg[31]_2 ),
        .I5(p_0_in),
        .O(wdt_State_Preset_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_12
       (.I0(\iTimebase_count_reg[27]_0 ),
        .I1(\iTimebase_count_reg[27]_1 ),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(\iTimebase_count_reg[27]_2 ),
        .I5(\iTimebase_count_reg[27]_3 ),
        .O(wdt_State_Preset_i_12_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    wdt_State_Preset_i_3
       (.I0(wdt_State_Preset_i_5_n_0),
        .I1(wdt_State_Preset_i_6_n_0),
        .I2(g0_b2__1_n_0),
        .I3(wdt_State_Preset_i_7_n_0),
        .I4(g0_b2__0_n_0),
        .I5(wdt_State_Preset_i_8_n_0),
        .O(wdt_State_Preset_i_3_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    wdt_State_Preset_i_4
       (.I0(wdt_State_Preset_i_9_n_0),
        .I1(wdt_State_Preset_i_10_n_0),
        .I2(g0_b2__1_n_0),
        .I3(wdt_State_Preset_i_11_n_0),
        .I4(g0_b2__0_n_0),
        .I5(wdt_State_Preset_i_12_n_0),
        .O(wdt_State_Preset_i_4_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_5
       (.I0(read_Mux_In__0[0]),
        .I1(read_Mux_In__0[1]),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(read_Mux_In__0[2]),
        .I5(read_Mux_In__0[3]),
        .O(wdt_State_Preset_i_5_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_6
       (.I0(S[0]),
        .I1(S[1]),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(S[2]),
        .I5(S[3]),
        .O(wdt_State_Preset_i_6_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_7
       (.I0(\iTimebase_count_reg[15]_0 ),
        .I1(\iTimebase_count_reg[15]_1 ),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(\iTimebase_count_reg[15]_2 ),
        .I5(\iTimebase_count_reg[15]_3 ),
        .O(wdt_State_Preset_i_7_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_8
       (.I0(\iTimebase_count_reg[11]_0 ),
        .I1(\iTimebase_count_reg[11]_1 ),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(\iTimebase_count_reg[11]_2 ),
        .I5(\iTimebase_count_reg[11]_3 ),
        .O(wdt_State_Preset_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    wdt_State_Preset_i_9
       (.I0(\iTimebase_count_reg[19]_0 ),
        .I1(\iTimebase_count_reg[19]_1 ),
        .I2(g0_b0_n_0),
        .I3(g0_b1_n_0),
        .I4(\iTimebase_count_reg[19]_2 ),
        .I5(\iTimebase_count_reg[19]_3 ),
        .O(wdt_State_Preset_i_9_n_0));
  FDRE wdt_State_Preset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(wdt_State_Preset),
        .R(bus2ip_reset));
  MUXF7 wdt_State_Preset_reg_i_2
       (.I0(wdt_State_Preset_i_3_n_0),
        .I1(wdt_State_Preset_i_4_n_0),
        .O(wdt_State_Preset_reg_i_2_n_0),
        .S(g0_b2__2_n_0));
  LUT6 #(
    .INIT(64'h0000AE00AE00AE00)) 
    wdt_State_Reg_i_1
       (.I0(wdt_interrupt),
        .I1(p_2_in),
        .I2(wdt_State_Preset),
        .I3(s_axi_aresetn),
        .I4(s_axi_wdata[2]),
        .I5(bus2ip_wrce[1]),
        .O(wdt_State_Reg_i_1_n_0));
  FDRE wdt_State_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdt_State_Reg_i_1_n_0),
        .Q(wdt_interrupt),
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
