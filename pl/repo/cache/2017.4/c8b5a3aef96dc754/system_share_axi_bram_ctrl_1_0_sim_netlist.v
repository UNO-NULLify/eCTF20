// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Mar  2 08:36:25 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_share_axi_bram_ctrl_1_0_sim_netlist.v
// Design      : system_share_axi_bram_ctrl_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO
   (D,
    bvalid_cnt_inc,
    E,
    \Addr_Counters[0].FDRE_I_0 ,
    bid_gets_fifo_load,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ,
    SR,
    s_axi_aclk,
    s_axi_awid,
    aw_active_d1_reg,
    p_1_out,
    bid_gets_fifo_load_d1,
    axi_bvalid_int_reg,
    s_axi_bready,
    axi_wr_burst,
    axi_wdata_full_reg,
    s_axi_wlast,
    s_axi_wvalid,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    AW2Arb_BVALID_Cnt);
  output [11:0]D;
  output bvalid_cnt_inc;
  output [0:0]E;
  output \Addr_Counters[0].FDRE_I_0 ;
  output bid_gets_fifo_load;
  output \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ;
  output \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ;
  input [0:0]SR;
  input s_axi_aclk;
  input [11:0]s_axi_awid;
  input aw_active_d1_reg;
  input p_1_out;
  input bid_gets_fifo_load_d1;
  input axi_bvalid_int_reg;
  input s_axi_bready;
  input axi_wr_burst;
  input axi_wdata_full_reg;
  input s_axi_wlast;
  input s_axi_wvalid;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  input [2:0]AW2Arb_BVALID_Cnt;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire \Addr_Counters[0].FDRE_I_0 ;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire [11:0]D;
  wire D_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire [0:0]E;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ;
  wire S;
  wire S0_out;
  wire S1_out;
  wire [0:0]SR;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active_d1_reg;
  wire \axi_bid_int[11]_i_3_n_0 ;
  wire axi_bvalid_int_reg;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire bid_fifo_not_empty;
  wire [11:0]bid_fifo_rd;
  wire bid_fifo_rd_en__2;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bvalid_cnt_inc;
  wire bvalid_cnt_non_zero;
  wire p_1_out;
  wire s_axi_aclk;
  wire [11:0]s_axi_awid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I1(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ),
        .I2(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h55555551AAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .I5(bid_fifo_rd_en__2),
        .O(S));
  LUT6 #(
    .INIT(64'h00BF00FF00FF00FF)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(bid_fifo_rd_en__2),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_0 ),
        .I4(\Addr_Counters[3].FDRE_I_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .O(\Addr_Counters[0].FDRE_I_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h55555551AAAAAAAA)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .I4(\Addr_Counters[0].FDRE_I_n_0 ),
        .I5(bid_fifo_rd_en__2),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h55555551AAAAAAAA)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[2].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .I5(bid_fifo_rd_en__2),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h55555551AAAAAAAA)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[0].FDRE_I_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .I5(bid_fifo_rd_en__2),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(bid_fifo_not_empty),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hAEFF0404)) 
    Data_Exists_DFF_i_1
       (.I0(Data_Exists_DFF_i_2_n_0),
        .I1(p_1_out),
        .I2(aw_active_d1_reg),
        .I3(bid_fifo_rd_en__2),
        .I4(bid_fifo_not_empty),
        .O(D_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_2
       (.I0(\Addr_Counters[3].FDRE_I_n_0 ),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[11]),
        .Q(bid_fifo_rd[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[1]),
        .Q(bid_fifo_rd[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[11].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[0]),
        .Q(bid_fifo_rd[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[10]),
        .Q(bid_fifo_rd[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[9]),
        .Q(bid_fifo_rd[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[8]),
        .Q(bid_fifo_rd[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[7]),
        .Q(bid_fifo_rd[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[6]),
        .Q(bid_fifo_rd[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[5]),
        .Q(bid_fifo_rd[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[4]),
        .Q(bid_fifo_rd[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[3]),
        .Q(bid_fifo_rd[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[9].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[2]),
        .Q(bid_fifo_rd[2]));
  LUT5 #(
    .INIT(32'hBF30AA00)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg ),
        .I1(axi_wr_burst),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wlast),
        .I4(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ),
        .O(bvalid_cnt_inc));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2 
       (.I0(s_axi_wvalid),
        .I1(axi_wdata_full_reg),
        .I2(p_1_out),
        .I3(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ),
        .I4(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[0]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[0]),
        .I5(bid_fifo_rd[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[10]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[10]),
        .I5(bid_fifo_rd[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \axi_bid_int[11]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(bid_fifo_rd_en__2),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[11]_i_2 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[11]),
        .I5(bid_fifo_rd[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h00000008000000FF)) 
    \axi_bid_int[11]_i_3 
       (.I0(s_axi_bready),
        .I1(axi_bvalid_int_reg),
        .I2(bid_fifo_not_empty),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\axi_bid_int[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCEEEE00000000)) 
    \axi_bid_int[11]_i_4 
       (.I0(bvalid_cnt_inc),
        .I1(bid_gets_fifo_load_d1),
        .I2(axi_bvalid_int_reg),
        .I3(s_axi_bready),
        .I4(bvalid_cnt_non_zero),
        .I5(bid_fifo_not_empty),
        .O(bid_fifo_rd_en__2));
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_bid_int[11]_i_5 
       (.I0(AW2Arb_BVALID_Cnt[0]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .O(bvalid_cnt_non_zero));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[1]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[1]),
        .I5(bid_fifo_rd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[2]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[2]),
        .I5(bid_fifo_rd[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[3]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[3]),
        .I5(bid_fifo_rd[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[4]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[4]),
        .I5(bid_fifo_rd[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[5]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[5]),
        .I5(bid_fifo_rd[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[6]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[6]),
        .I5(bid_fifo_rd[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[7]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[7]),
        .I5(bid_fifo_rd[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[8]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[8]),
        .I5(bid_fifo_rd[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFBFFF40000000)) 
    \axi_bid_int[9]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .I4(s_axi_awid[9]),
        .I5(bid_fifo_rd[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(aw_active_d1_reg),
        .I1(p_1_out),
        .I2(\axi_bid_int[11]_i_3_n_0 ),
        .I3(bvalid_cnt_inc),
        .O(bid_gets_fifo_load));
endmodule

(* C_BRAM_ADDR_WIDTH = "11" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "2048" *) (* C_SELECT_XPM = "1" *) 
(* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "12" *) 
(* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [11:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [11:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [12:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [12:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [12:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[12:2] = \^bram_addr_a [12:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.bram_addr_a(\^bram_addr_a ),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_rst_a(bram_rst_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:2]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl_top
   (bram_rst_a,
    s_axi_rvalid,
    s_axi_rlast,
    bram_addr_a,
    s_axi_bvalid,
    s_axi_bid,
    bram_wrdata_a,
    s_axi_rid,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    bram_we_a,
    bram_en_a,
    s_axi_wready,
    s_axi_arburst,
    s_axi_awid,
    s_axi_aclk,
    s_axi_rready,
    s_axi_awlen,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_arlen,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_awburst);
  output bram_rst_a;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [10:0]bram_addr_a;
  output s_axi_bvalid;
  output [11:0]s_axi_bid;
  output [31:0]bram_wrdata_a;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output [3:0]bram_we_a;
  output bram_en_a;
  output s_axi_wready;
  input [1:0]s_axi_arburst;
  input [11:0]s_axi_awid;
  input s_axi_aclk;
  input s_axi_rready;
  input [3:0]s_axi_awlen;
  input s_axi_wlast;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_a;
  input s_axi_aresetn;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;
  input s_axi_wvalid;
  input [7:0]s_axi_arlen;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [1:0]s_axi_awburst;

  wire [10:0]bram_addr_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_axi \GEN_AXI4.I_FULL_AXI 
       (.SR(bram_rst_a),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_axi
   (SR,
    s_axi_rvalid,
    s_axi_rlast,
    bram_addr_a,
    s_axi_bvalid,
    s_axi_bid,
    bram_wrdata_a,
    s_axi_rid,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    bram_we_a,
    bram_en_a,
    s_axi_wready,
    s_axi_arburst,
    s_axi_awid,
    s_axi_aclk,
    s_axi_rready,
    s_axi_awlen,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_arlen,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_awburst);
  output [0:0]SR;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [10:0]bram_addr_a;
  output s_axi_bvalid;
  output [11:0]s_axi_bid;
  output [31:0]bram_wrdata_a;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output [3:0]bram_we_a;
  output bram_en_a;
  output s_axi_wready;
  input [1:0]s_axi_arburst;
  input [11:0]s_axi_awid;
  input s_axi_aclk;
  input s_axi_rready;
  input [3:0]s_axi_awlen;
  input s_axi_wlast;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_a;
  input s_axi_aresetn;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;
  input s_axi_wvalid;
  input [7:0]s_axi_arlen;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [1:0]s_axi_awburst;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_15_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[12]_i_1_n_0 ;
  wire \GEN_ARB.I_SNG_PORT_n_12 ;
  wire \GEN_ARB.I_SNG_PORT_n_4 ;
  wire I_RD_CHNL_n_37;
  wire I_RD_CHNL_n_38;
  wire I_RD_CHNL_n_39;
  wire I_RD_CHNL_n_40;
  wire I_RD_CHNL_n_41;
  wire I_RD_CHNL_n_42;
  wire I_RD_CHNL_n_43;
  wire I_RD_CHNL_n_44;
  wire I_RD_CHNL_n_45;
  wire I_RD_CHNL_n_46;
  wire I_RD_CHNL_n_49;
  wire I_RD_CHNL_n_50;
  wire I_WR_CHNL_n_36;
  wire I_WR_CHNL_n_38;
  wire I_WR_CHNL_n_39;
  wire I_WR_CHNL_n_40;
  wire I_WR_CHNL_n_41;
  wire I_WR_CHNL_n_42;
  wire I_WR_CHNL_n_43;
  wire I_WR_CHNL_n_44;
  wire I_WR_CHNL_n_45;
  wire I_WR_CHNL_n_46;
  wire I_WR_CHNL_n_49;
  wire I_WR_CHNL_n_51;
  wire I_WR_CHNL_n_54;
  wire [10:10]RdChnl_BRAM_Addr_Ld;
  wire [0:0]SR;
  wire WrChnl_BRAM_Addr_Rst;
  wire ar_active_d1;
  wire ar_active_re;
  wire [1:1]arb_sm_cs;
  wire aw_active_cmb;
  wire aw_active_d1;
  wire aw_active_re;
  wire [10:0]bram_addr_a;
  wire bram_addr_ld1__0;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire curr_fixed_burst_reg;
  wire p_0_out;
  wire [9:9]p_1_in;
  wire p_1_out;
  wire p_3_in;
  wire [3:0]p_6_in;
  wire p_7_in;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sng_bram_addr_ld_en;
  wire [1:0]wr_data_sng_sm_cs;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_15 
       (.I0(bram_addr_a[5]),
        .I1(bram_addr_a[4]),
        .I2(bram_addr_a[2]),
        .I3(bram_addr_a[1]),
        .I4(bram_addr_a[0]),
        .I5(bram_addr_a[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(bram_addr_a[10]),
        .I1(sng_bram_addr_ld_en),
        .I2(p_1_in),
        .I3(p_0_out),
        .I4(RdChnl_BRAM_Addr_Ld),
        .I5(WrChnl_BRAM_Addr_Rst),
        .O(\ADDR_SNG_PORT.bram_addr_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_38),
        .Q(bram_addr_a[8]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_37),
        .Q(bram_addr_a[9]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ADDR_SNG_PORT.bram_addr_int[12]_i_1_n_0 ),
        .Q(bram_addr_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_46),
        .Q(bram_addr_a[0]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_45),
        .Q(bram_addr_a[1]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_44),
        .Q(bram_addr_a[2]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_43),
        .Q(bram_addr_a[3]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_42),
        .Q(bram_addr_a[4]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_41),
        .Q(bram_addr_a[5]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_40),
        .Q(bram_addr_a[6]),
        .R(WrChnl_BRAM_Addr_Rst));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_49),
        .D(I_RD_CHNL_n_39),
        .Q(bram_addr_a[7]),
        .R(WrChnl_BRAM_Addr_Rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.\ADDR_SNG_PORT.bram_addr_int_reg[2] (\GEN_ARB.I_SNG_PORT_n_4 ),
        .E(aw_active_re),
        .\GEN_AR_SNG.ar_active_d1_reg (\GEN_ARB.I_SNG_PORT_n_12 ),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (I_WR_CHNL_n_49),
        .Q(p_6_in),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .\arb_sm_cs_reg[1]_0 (arb_sm_cs),
        .aw_active_cmb(aw_active_cmb),
        .aw_active_d1(aw_active_d1),
        .axi_rlast_int_reg(I_RD_CHNL_n_50),
        .axi_rlast_int_reg_0(s_axi_rlast),
        .bram_addr_ld1__0(bram_addr_ld1__0),
        .bram_we_a(bram_we_a),
        .\bvalid_cnt_reg[0] (I_WR_CHNL_n_54),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rready(s_axi_rready),
        .sng_bram_addr_ld_en(sng_bram_addr_ld_en),
        .wr_data_sng_sm_cs(wr_data_sng_sm_cs));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_chnl I_RD_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[4] (I_WR_CHNL_n_51),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int[11]_i_15_n_0 ),
        .D({I_RD_CHNL_n_37,I_RD_CHNL_n_38,I_RD_CHNL_n_39,I_RD_CHNL_n_40,I_RD_CHNL_n_41,I_RD_CHNL_n_42,I_RD_CHNL_n_43,I_RD_CHNL_n_44,I_RD_CHNL_n_45,I_RD_CHNL_n_46}),
        .E(I_RD_CHNL_n_49),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (I_WR_CHNL_n_46),
        .Q(bram_addr_a[9:0]),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .ar_active_reg(\GEN_ARB.I_SNG_PORT_n_12 ),
        .ar_active_reg_0(I_WR_CHNL_n_36),
        .ar_active_reg_1(I_WR_CHNL_n_38),
        .ar_active_reg_2(I_WR_CHNL_n_39),
        .ar_active_reg_3(\GEN_ARB.I_SNG_PORT_n_4 ),
        .\arb_sm_cs_reg[1] (I_RD_CHNL_n_50),
        .bram_rddata_a(bram_rddata_a),
        .bram_rst_a(SR),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .p_0_out(p_0_out),
        .p_3_in(p_3_in),
        .p_7_in(p_7_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_awaddr(s_axi_awaddr[0]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\save_init_bram_addr_ld_reg[10] (I_WR_CHNL_n_44),
        .\save_init_bram_addr_ld_reg[11] (I_WR_CHNL_n_45),
        .\save_init_bram_addr_ld_reg[12] (RdChnl_BRAM_Addr_Ld),
        .\save_init_bram_addr_ld_reg[6] (I_WR_CHNL_n_40),
        .\save_init_bram_addr_ld_reg[7] (I_WR_CHNL_n_41),
        .\save_init_bram_addr_ld_reg[8] (I_WR_CHNL_n_42),
        .\save_init_bram_addr_ld_reg[9] (I_WR_CHNL_n_43),
        .sng_bram_addr_ld_en(sng_bram_addr_ld_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_chnl I_WR_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (I_WR_CHNL_n_44),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (I_WR_CHNL_n_45),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (I_WR_CHNL_n_51),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 (WrChnl_BRAM_Addr_Rst),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (I_WR_CHNL_n_36),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (I_WR_CHNL_n_38),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (I_WR_CHNL_n_39),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (I_WR_CHNL_n_40),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (I_WR_CHNL_n_41),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (I_WR_CHNL_n_42),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (I_WR_CHNL_n_43),
        .D(p_1_in),
        .E(aw_active_re),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 (I_WR_CHNL_n_46),
        .Q(bram_addr_a[3:0]),
        .SR(SR),
        .\arb_sm_cs_reg[1] (I_WR_CHNL_n_49),
        .\arb_sm_cs_reg[1]_0 (arb_sm_cs),
        .aw_active_cmb(aw_active_cmb),
        .aw_active_d1(aw_active_d1),
        .axi_arready_int_reg(I_WR_CHNL_n_54),
        .bram_addr_ld1__0(bram_addr_ld1__0),
        .bram_en_a(bram_en_a),
        .\bram_we_a[3] (p_6_in),
        .bram_wrdata_a(bram_wrdata_a),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_3_in(p_3_in),
        .p_7_in(p_7_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[10:1]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sng_bram_addr_ld_en(sng_bram_addr_ld_en),
        .wr_data_sng_sm_cs(wr_data_sng_sm_cs));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_chnl
   (bram_rst_a,
    s_axi_rdata,
    ar_active_d1,
    s_axi_rvalid,
    s_axi_rlast,
    p_7_in,
    D,
    sng_bram_addr_ld_en,
    \save_init_bram_addr_ld_reg[12] ,
    E,
    \arb_sm_cs_reg[1] ,
    s_axi_rid,
    s_axi_aclk,
    ar_active_re,
    ar_active_reg,
    p_0_out,
    s_axi_arburst,
    s_axi_aresetn,
    ar_active_reg_0,
    s_axi_araddr,
    ar_active_reg_1,
    ar_active_reg_2,
    \save_init_bram_addr_ld_reg[6] ,
    \save_init_bram_addr_ld_reg[7] ,
    \save_init_bram_addr_ld_reg[8] ,
    \save_init_bram_addr_ld_reg[9] ,
    \save_init_bram_addr_ld_reg[10] ,
    \save_init_bram_addr_ld_reg[11] ,
    Q,
    ar_active_reg_3,
    s_axi_awaddr,
    curr_fixed_burst_reg,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    p_3_in,
    s_axi_rready,
    s_axi_arlen,
    s_axi_arid,
    bram_rddata_a);
  output bram_rst_a;
  output [31:0]s_axi_rdata;
  output ar_active_d1;
  output s_axi_rvalid;
  output s_axi_rlast;
  output p_7_in;
  output [9:0]D;
  output sng_bram_addr_ld_en;
  output [0:0]\save_init_bram_addr_ld_reg[12] ;
  output [0:0]E;
  output \arb_sm_cs_reg[1] ;
  output [11:0]s_axi_rid;
  input s_axi_aclk;
  input ar_active_re;
  input ar_active_reg;
  input p_0_out;
  input [1:0]s_axi_arburst;
  input s_axi_aresetn;
  input ar_active_reg_0;
  input [10:0]s_axi_araddr;
  input ar_active_reg_1;
  input ar_active_reg_2;
  input \save_init_bram_addr_ld_reg[6] ;
  input \save_init_bram_addr_ld_reg[7] ;
  input \save_init_bram_addr_ld_reg[8] ;
  input \save_init_bram_addr_ld_reg[9] ;
  input \save_init_bram_addr_ld_reg[10] ;
  input \save_init_bram_addr_ld_reg[11] ;
  input [9:0]Q;
  input ar_active_reg_3;
  input [0:0]s_axi_awaddr;
  input curr_fixed_burst_reg;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input p_3_in;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_a;

  wire \/FSM_sequential_rlast_sm_cs[0]_i_2_n_0 ;
  wire \/FSM_sequential_rlast_sm_cs[1]_i_2_n_0 ;
  wire \/i__n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rd_data_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_2_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ;
  wire \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[10]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[11]_i_3_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[2]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[3]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[4]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[5]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[6]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[7]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[8]_i_1_n_0 ;
  wire \GEN_RID_SNG.axi_rid_int[9]_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire I_WRAP_BRST_n_13;
  wire [9:0]Q;
  wire act_rd_burst;
  wire act_rd_burst0;
  wire act_rd_burst_i_1_n_0;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire act_rd_burst_two_i_1_n_0;
  wire act_rd_burst_two_i_4_n_0;
  wire act_rd_burst_two_i_5_n_0;
  wire ar_active_d1;
  wire ar_active_re;
  wire ar_active_reg;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire ar_active_reg_2;
  wire ar_active_reg_3;
  wire \arb_sm_cs_reg[1] ;
  wire axi_rd_burst;
  wire axi_rd_burst1__2;
  wire axi_rd_burst_i_1_n_0;
  wire axi_rd_burst_i_2_n_0;
  wire axi_rd_burst_two_i_1_n_0;
  wire axi_rd_burst_two_reg_n_0;
  wire axi_rdata_en;
  wire [11:0]axi_rid_temp;
  wire axi_rlast_int_i_1_n_0;
  wire axi_rlast_set;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_clr_ok_i_1_n_0;
  wire axi_rvalid_clr_ok_i_2_n_0;
  wire axi_rvalid_int_i_1_n_0;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire bram_addr_inc;
  wire bram_addr_inc1;
  wire bram_en_int_i_1_n_0;
  wire bram_en_int_i_2_n_0;
  wire bram_en_int_i_3_n_0;
  wire bram_en_int_i_4_n_0;
  wire bram_en_int_i_5_n_0;
  wire bram_en_int_i_6_n_0;
  wire bram_en_int_i_7_n_0;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [7:0]brst_cnt;
  wire \brst_cnt[0]_i_1_n_0 ;
  wire \brst_cnt[1]_i_1_n_0 ;
  wire \brst_cnt[2]_i_1_n_0 ;
  wire \brst_cnt[3]_i_1_n_0 ;
  wire \brst_cnt[4]_i_1_n_0 ;
  wire \brst_cnt[5]_i_1_n_0 ;
  wire \brst_cnt[6]_i_1_n_0 ;
  wire \brst_cnt[6]_i_2_n_0 ;
  wire \brst_cnt[7]_i_1_n_0 ;
  wire \brst_cnt[7]_i_2_n_0 ;
  wire \brst_cnt[7]_i_3_n_0 ;
  wire brst_cnt_max;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_one_i_1_n_0;
  wire brst_one_i_2_n_0;
  wire brst_zero;
  wire brst_zero_i_1_n_0;
  wire brst_zero_i_3_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_0;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_i_1__0_n_0;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire disable_b2b_brst_i_2_n_0;
  wire disable_b2b_brst_i_3_n_0;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire end_brst_rd_clr_i_1_n_0;
  wire end_brst_rd_i_1_n_0;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire last_bram_addr_i_2_n_0;
  wire last_bram_addr_i_3_n_0;
  wire last_bram_addr_i_4_n_0;
  wire last_bram_addr_i_6_n_0;
  wire p_0_out;
  wire p_3_in;
  wire p_3_out;
  wire p_7_in;
  wire pend_rd_op;
  wire pend_rd_op_i_1_n_0;
  wire pend_rd_op_i_2_n_0;
  wire pend_rd_op_i_3_n_0;
  wire pend_rd_op_i_4_n_0;
  (* RTL_KEEP = "yes" *) wire [3:0]rd_data_sm_cs;
  wire [31:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_i_1_n_0;
  wire rddata_mux_sel_i_2_n_0;
  wire rddata_mux_sel_i_3_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_awaddr;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire \save_init_bram_addr_ld_reg[10] ;
  wire \save_init_bram_addr_ld_reg[11] ;
  wire [0:0]\save_init_bram_addr_ld_reg[12] ;
  wire \save_init_bram_addr_ld_reg[6] ;
  wire \save_init_bram_addr_ld_reg[7] ;
  wire \save_init_bram_addr_ld_reg[8] ;
  wire \save_init_bram_addr_ld_reg[9] ;
  wire set_last_bram_addr3_out;
  wire sng_bram_addr_ld_en;

  LUT6 #(
    .INIT(64'h0011001300130013)) 
    \/FSM_sequential_rlast_sm_cs[0]_i_2 
       (.I0(axi_rd_burst),
        .I1(rlast_sm_cs[1]),
        .I2(act_rd_burst_two),
        .I3(axi_rd_burst_two_reg_n_0),
        .I4(s_axi_rvalid),
        .I5(s_axi_rready),
        .O(\/FSM_sequential_rlast_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h003F007F003F0055)) 
    \/FSM_sequential_rlast_sm_cs[1]_i_2 
       (.I0(axi_rd_burst),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(rlast_sm_cs[1]),
        .I4(axi_rd_burst_two_reg_n_0),
        .I5(act_rd_burst_two),
        .O(\/FSM_sequential_rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF000F111F000E000)) 
    \/i_ 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[1]),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .I4(rlast_sm_cs[0]),
        .I5(last_bram_addr),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h00008080000F8080)) 
    \/i___0 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[1]),
        .I4(rlast_sm_cs[2]),
        .I5(s_axi_rlast),
        .O(axi_rlast_set));
  LUT2 #(
    .INIT(4'h2)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(I_WRAP_BRST_n_13),
        .I1(rd_data_sm_cs[3]),
        .O(bram_addr_inc));
  LUT6 #(
    .INIT(64'h3033337730330044)) 
    \FSM_sequential_rd_data_sm_cs[0]_i_1 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .I2(\FSM_sequential_rd_data_sm_cs[0]_i_2_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(\FSM_sequential_rd_data_sm_cs[0]_i_3_n_0 ),
        .O(\FSM_sequential_rd_data_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h54545454111111FF)) 
    \FSM_sequential_rd_data_sm_cs[0]_i_2 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I1(ar_active_re),
        .I2(pend_rd_op),
        .I3(act_rd_burst_two),
        .I4(act_rd_burst),
        .I5(rd_data_sm_cs[1]),
        .O(\FSM_sequential_rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h808080D5FFFFFFFF)) 
    \FSM_sequential_rd_data_sm_cs[0]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(axi_rd_burst),
        .I4(axi_rd_burst_two_reg_n_0),
        .I5(rd_data_sm_cs[0]),
        .O(\FSM_sequential_rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(\FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(\FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_rd_data_sm_cs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_2 
       (.I0(rd_data_sm_cs[1]),
        .I1(axi_rd_burst_two_reg_n_0),
        .O(\FSM_sequential_rd_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFBF0000FFBFFF)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_3 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I1(ar_active_re),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(bram_addr_inc1),
        .O(\FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF2E002E)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_rd_data_sm_cs[2]_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(\FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(\FSM_sequential_rd_data_sm_cs[2]_i_4_n_0 ),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_rd_data_sm_cs[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_2 
       (.I0(axi_rd_burst_two_reg_n_0),
        .I1(rd_data_sm_cs[1]),
        .O(\FSM_sequential_rd_data_sm_cs[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_3 
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(rd_data_sm_cs[1]),
        .O(\FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FFBFFFBF00)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_4 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I1(ar_active_re),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(bram_addr_inc1),
        .I5(rd_data_sm_cs[1]),
        .O(\FSM_sequential_rd_data_sm_cs[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(\FSM_sequential_rd_data_sm_cs[3]_i_3_n_0 ),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088200000)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_2 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .I2(\FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE777677FF77FF22)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[2]),
        .I1(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I2(bram_addr_inc1),
        .I3(rd_data_sm_cs[0]),
        .I4(ar_active_re),
        .I5(rd_data_sm_cs[1]),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_4 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(act_rd_burst_two),
        .I3(act_rd_burst),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_5 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .O(bram_addr_inc1));
  (* FSM_ENCODED_STATES = "idle:0000,sng_addr:0001,sec_addr:0010,full_pipe:0011,full_throttle:0100,last_addr:0101,last_throttle:0110,last_data:0111,last_data_ar_pend:1000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_rd_data_sm_cs[0]_i_1_n_0 ),
        .Q(rd_data_sm_cs[0]),
        .R(bram_rst_a));
  (* FSM_ENCODED_STATES = "idle:0000,sng_addr:0001,sec_addr:0010,full_pipe:0011,full_throttle:0100,last_addr:0101,last_throttle:0110,last_data:0111,last_data_ar_pend:1000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_rd_data_sm_cs[1]_i_1_n_0 ),
        .Q(rd_data_sm_cs[1]),
        .R(bram_rst_a));
  (* FSM_ENCODED_STATES = "idle:0000,sng_addr:0001,sec_addr:0010,full_pipe:0011,full_throttle:0100,last_addr:0101,last_throttle:0110,last_data:0111,last_data_ar_pend:1000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_rd_data_sm_cs[2]_i_1_n_0 ),
        .Q(rd_data_sm_cs[2]),
        .R(bram_rst_a));
  (* FSM_ENCODED_STATES = "idle:0000,sng_addr:0001,sec_addr:0010,full_pipe:0011,full_throttle:0100,last_addr:0101,last_throttle:0110,last_data:0111,last_data_ar_pend:1000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_rd_data_sm_cs[3]_i_2_n_0 ),
        .Q(rd_data_sm_cs[3]),
        .R(bram_rst_a));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \FSM_sequential_rlast_sm_cs[0]_i_1 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(\/FSM_sequential_rlast_sm_cs[0]_i_2_n_0 ),
        .I3(\/i__n_0 ),
        .I4(rlast_sm_cs[0]),
        .O(\FSM_sequential_rlast_sm_cs[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \FSM_sequential_rlast_sm_cs[1]_i_1 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(\/FSM_sequential_rlast_sm_cs[1]_i_2_n_0 ),
        .I3(\/i__n_0 ),
        .I4(rlast_sm_cs[1]),
        .O(\FSM_sequential_rlast_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C1FFFF00C10000)) 
    \FSM_sequential_rlast_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ),
        .I1(rlast_sm_cs[1]),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(\/i__n_0 ),
        .I5(rlast_sm_cs[2]),
        .O(\FSM_sequential_rlast_sm_cs[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_rlast_sm_cs[2]_i_2 
       (.I0(axi_rd_burst_two_reg_n_0),
        .I1(axi_rd_burst),
        .O(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,w8_throttle:010,w8_2nd_last_data:011,w8_last_data:100,w8_throttle_b2:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(bram_rst_a));
  (* FSM_ENCODED_STATES = "idle:000,w8_throttle:010,w8_2nd_last_data:011,w8_last_data:100,w8_throttle_b2:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(bram_rst_a));
  (* FSM_ENCODED_STATES = "idle:000,w8_throttle:010,w8_2nd_last_data:011,w8_last_data:100,w8_throttle_b2:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rlast_sm_cs[2]_i_1_n_0 ),
        .Q(rlast_sm_cs[2]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_SNG.ar_active_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_reg),
        .Q(ar_active_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA080000AA00AA00)) 
    \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1 
       (.I0(s_axi_aresetn),
        .I1(brst_zero),
        .I2(pend_rd_op),
        .I3(brst_cnt_max),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(brst_cnt_max),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_a[0]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_a[10]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_a[11]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_a[12]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_a[13]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_a[14]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_a[15]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_a[16]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_a[17]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_a[18]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_a[19]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_a[1]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_a[20]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_a[21]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_a[22]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_a[23]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_a[24]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_a[25]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_a[26]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_a[27]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_a[28]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_a[29]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_a[2]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_a[30]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(p_3_out));
  LUT6 #(
    .INIT(64'h00000000072A472A)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I5(rd_data_sm_cs[3]),
        .O(axi_rdata_en));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_a[31]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_a[3]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_a[4]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_a[5]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_a[6]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_a[7]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_a[8]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_a[9]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(p_3_out));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[0]),
        .Q(rd_skid_buf[0]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[10]),
        .Q(rd_skid_buf[10]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[11]),
        .Q(rd_skid_buf[11]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[12]),
        .Q(rd_skid_buf[12]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[13]),
        .Q(rd_skid_buf[13]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[14]),
        .Q(rd_skid_buf[14]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[15]),
        .Q(rd_skid_buf[15]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[16]),
        .Q(rd_skid_buf[16]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[17]),
        .Q(rd_skid_buf[17]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[18]),
        .Q(rd_skid_buf[18]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[19]),
        .Q(rd_skid_buf[19]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[1]),
        .Q(rd_skid_buf[1]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[20]),
        .Q(rd_skid_buf[20]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[21]),
        .Q(rd_skid_buf[21]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[22]),
        .Q(rd_skid_buf[22]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[23]),
        .Q(rd_skid_buf[23]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[24]),
        .Q(rd_skid_buf[24]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[25]),
        .Q(rd_skid_buf[25]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[26]),
        .Q(rd_skid_buf[26]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[27]),
        .Q(rd_skid_buf[27]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[28]),
        .Q(rd_skid_buf[28]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[29]),
        .Q(rd_skid_buf[29]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[2]),
        .Q(rd_skid_buf[2]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[30]),
        .Q(rd_skid_buf[30]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[31]),
        .Q(rd_skid_buf[31]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[3]),
        .Q(rd_skid_buf[3]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[4]),
        .Q(rd_skid_buf[4]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[5]),
        .Q(rd_skid_buf[5]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[6]),
        .Q(rd_skid_buf[6]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[7]),
        .Q(rd_skid_buf[7]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[8]),
        .Q(rd_skid_buf[8]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[9]),
        .Q(rd_skid_buf[9]),
        .R(bram_rst_a));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[0]_i_1 
       (.I0(s_axi_arid[0]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[0]),
        .O(\GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[10]_i_1 
       (.I0(s_axi_arid[10]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[10]),
        .O(\GEN_RID_SNG.axi_rid_int[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_RID_SNG.axi_rid_int[11]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rlast),
        .I2(s_axi_aresetn),
        .O(p_3_out));
  LUT3 #(
    .INIT(8'hF4)) 
    \GEN_RID_SNG.axi_rid_int[11]_i_2 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(axi_rvalid_set),
        .O(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[11]_i_3 
       (.I0(s_axi_arid[11]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[11]),
        .O(\GEN_RID_SNG.axi_rid_int[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[1]_i_1 
       (.I0(s_axi_arid[1]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[1]),
        .O(\GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[2]_i_1 
       (.I0(s_axi_arid[2]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[2]),
        .O(\GEN_RID_SNG.axi_rid_int[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[3]_i_1 
       (.I0(s_axi_arid[3]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[3]),
        .O(\GEN_RID_SNG.axi_rid_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[4]_i_1 
       (.I0(s_axi_arid[4]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[4]),
        .O(\GEN_RID_SNG.axi_rid_int[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[5]_i_1 
       (.I0(s_axi_arid[5]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[5]),
        .O(\GEN_RID_SNG.axi_rid_int[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[6]_i_1 
       (.I0(s_axi_arid[6]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[6]),
        .O(\GEN_RID_SNG.axi_rid_int[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[7]_i_1 
       (.I0(s_axi_arid[7]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[7]),
        .O(\GEN_RID_SNG.axi_rid_int[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[8]_i_1 
       (.I0(s_axi_arid[8]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[8]),
        .O(\GEN_RID_SNG.axi_rid_int[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \GEN_RID_SNG.axi_rid_int[9]_i_1 
       (.I0(s_axi_arid[9]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(axi_rid_temp[9]),
        .O(\GEN_RID_SNG.axi_rid_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ),
        .Q(s_axi_rid[0]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[10]_i_1_n_0 ),
        .Q(s_axi_rid[10]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[11]_i_3_n_0 ),
        .Q(s_axi_rid[11]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ),
        .Q(s_axi_rid[1]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[2]_i_1_n_0 ),
        .Q(s_axi_rid[2]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[3]_i_1_n_0 ),
        .Q(s_axi_rid[3]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[4]_i_1_n_0 ),
        .Q(s_axi_rid[4]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[5]_i_1_n_0 ),
        .Q(s_axi_rid[5]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[6]_i_1_n_0 ),
        .Q(s_axi_rid[6]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[7]_i_1_n_0 ),
        .Q(s_axi_rid[7]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[8]_i_1_n_0 ),
        .Q(s_axi_rid[8]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID_SNG.axi_rid_int[11]_i_2_n_0 ),
        .D(\GEN_RID_SNG.axi_rid_int[9]_i_1_n_0 ),
        .Q(s_axi_rid[9]),
        .R(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[0]),
        .Q(axi_rid_temp[0]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[10]),
        .Q(axi_rid_temp[10]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[11]),
        .Q(axi_rid_temp[11]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[1]),
        .Q(axi_rid_temp[1]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[2]),
        .Q(axi_rid_temp[2]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[3]),
        .Q(axi_rid_temp[3]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[4]),
        .Q(axi_rid_temp[4]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[5]),
        .Q(axi_rid_temp[5]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[6]),
        .Q(axi_rid_temp[6]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[7]),
        .Q(axi_rid_temp[7]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[8]),
        .Q(axi_rid_temp[8]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID_SNG.axi_rid_temp_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid[9]),
        .Q(axi_rid_temp[9]),
        .R(bram_rst_a));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst_0 I_WRAP_BRST
       (.\ADDR_SNG_PORT.bram_addr_int_reg[11] (sng_bram_addr_ld_en),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (I_WRAP_BRST_n_13),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .D(D),
        .E(E),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .Q(Q),
        .SR(bram_rst_a),
        .ar_active_re(ar_active_re),
        .ar_active_reg(ar_active_reg_0),
        .ar_active_reg_0(ar_active_reg_1),
        .ar_active_reg_1(ar_active_reg_2),
        .ar_active_reg_2(ar_active_reg_3),
        .axi_rd_burst(axi_rd_burst),
        .axi_rd_burst_two_reg(axi_rd_burst_two_reg_n_0),
        .axi_rvalid_int_reg(s_axi_rvalid),
        .bram_addr_inc(bram_addr_inc),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_0(curr_fixed_burst_reg_0),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .end_brst_rd(end_brst_rd),
        .out(rd_data_sm_cs),
        .p_0_out(p_0_out),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_rready(s_axi_rready),
        .\save_init_bram_addr_ld_reg[10]_0 (\save_init_bram_addr_ld_reg[10] ),
        .\save_init_bram_addr_ld_reg[11]_0 (\save_init_bram_addr_ld_reg[11] ),
        .\save_init_bram_addr_ld_reg[12]_0 (\save_init_bram_addr_ld_reg[12] ),
        .\save_init_bram_addr_ld_reg[6]_0 (\save_init_bram_addr_ld_reg[6] ),
        .\save_init_bram_addr_ld_reg[7]_0 (\save_init_bram_addr_ld_reg[7] ),
        .\save_init_bram_addr_ld_reg[8]_0 (\save_init_bram_addr_ld_reg[8] ),
        .\save_init_bram_addr_ld_reg[9]_0 (\save_init_bram_addr_ld_reg[9] ));
  LUT6 #(
    .INIT(64'h00000000E2EEE222)) 
    act_rd_burst_i_1
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst_i_2_n_0),
        .I3(ar_active_re),
        .I4(axi_rd_burst),
        .I5(act_rd_burst0),
        .O(act_rd_burst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    act_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(act_rd_burst_i_1_n_0),
        .Q(act_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    act_rd_burst_two_i_1
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst_two_reg_n_0),
        .I3(ar_active_re),
        .I4(axi_rd_burst_i_2_n_0),
        .I5(act_rd_burst0),
        .O(act_rd_burst_two_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    act_rd_burst_two_i_2
       (.I0(rd_data_sm_cs[2]),
        .I1(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(act_rd_burst_two_i_4_n_0),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h10000004FFFFFFFF)) 
    act_rd_burst_two_i_3
       (.I0(act_rd_burst_two_i_5_n_0),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(s_axi_aresetn),
        .O(act_rd_burst0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    act_rd_burst_two_i_4
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(axi_rd_burst1__2),
        .O(act_rd_burst_two_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    act_rd_burst_two_i_5
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(act_rd_burst_two),
        .I3(act_rd_burst),
        .O(act_rd_burst_two_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    act_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(act_rd_burst_two_i_1_n_0),
        .Q(act_rd_burst_two),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_awready_int_i_2
       (.I0(s_axi_rlast),
        .I1(s_axi_rready),
        .O(\arb_sm_cs_reg[1] ));
  LUT6 #(
    .INIT(64'hC000C0000000AA00)) 
    axi_rd_burst_i_1
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst1__2),
        .I2(axi_rd_burst_i_2_n_0),
        .I3(s_axi_aresetn),
        .I4(brst_zero),
        .I5(ar_active_re),
        .O(axi_rd_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    axi_rd_burst_i_2
       (.I0(brst_zero_i_3_n_0),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arlen[0]),
        .O(axi_rd_burst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rd_burst_i_1_n_0),
        .Q(axi_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00A0303000A000A0)) 
    axi_rd_burst_two_i_1
       (.I0(axi_rd_burst_two_reg_n_0),
        .I1(axi_rd_burst_i_2_n_0),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(axi_rd_burst_two_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rd_burst_two_i_1_n_0),
        .Q(axi_rd_burst_two_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    axi_rlast_int_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rlast),
        .I2(s_axi_aresetn),
        .I3(axi_rlast_set),
        .O(axi_rlast_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rlast_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rlast_int_i_1_n_0),
        .Q(s_axi_rlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    axi_rvalid_clr_ok_i_1
       (.I0(last_bram_addr),
        .I1(disable_b2b_brst_cmb),
        .I2(disable_b2b_brst),
        .I3(axi_rvalid_clr_ok_i_2_n_0),
        .I4(axi_rvalid_clr_ok),
        .O(axi_rvalid_clr_ok_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    axi_rvalid_clr_ok_i_2
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(axi_rvalid_clr_ok_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_clr_ok_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_clr_ok_i_1_n_0),
        .Q(axi_rvalid_clr_ok),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'h7F007F007F000000)) 
    axi_rvalid_int_i_1
       (.I0(axi_rvalid_clr_ok),
        .I1(s_axi_rready),
        .I2(s_axi_rlast),
        .I3(s_axi_aresetn),
        .I4(axi_rvalid_set),
        .I5(s_axi_rvalid),
        .O(axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_int_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    axi_rvalid_set_i_1
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[3]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'hFFFFE2FF0000E200)) 
    bram_en_int_i_1
       (.I0(bram_en_int_i_2_n_0),
        .I1(rd_data_sm_cs[2]),
        .I2(bram_en_int_i_3_n_0),
        .I3(bram_en_int_i_4_n_0),
        .I4(rd_data_sm_cs[3]),
        .I5(p_7_in),
        .O(bram_en_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h505F505FFFCFF0C0)) 
    bram_en_int_i_2
       (.I0(bram_addr_inc1),
        .I1(axi_rd_burst),
        .I2(rd_data_sm_cs[0]),
        .I3(axi_rd_burst_two_reg_n_0),
        .I4(ar_active_re),
        .I5(rd_data_sm_cs[1]),
        .O(bram_en_int_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEE0C00EFEF0D05)) 
    bram_en_int_i_3
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I3(pend_rd_op),
        .I4(ar_active_re),
        .I5(bram_addr_inc1),
        .O(bram_en_int_i_3_n_0));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    bram_en_int_i_4
       (.I0(bram_en_int_i_5_n_0),
        .I1(ar_active_re),
        .I2(act_rd_burst_two_i_5_n_0),
        .I3(bram_en_int_i_6_n_0),
        .I4(rd_data_sm_cs[2]),
        .I5(bram_en_int_i_7_n_0),
        .O(bram_en_int_i_4_n_0));
  LUT6 #(
    .INIT(64'hA0E0A0E0FFFFF0FF)) 
    bram_en_int_i_5
       (.I0(ar_active_re),
        .I1(pend_rd_op),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I4(bram_addr_inc1),
        .I5(rd_data_sm_cs[1]),
        .O(bram_en_int_i_5_n_0));
  LUT6 #(
    .INIT(64'hA0E0A0E00F0F000F)) 
    bram_en_int_i_6
       (.I0(ar_active_re),
        .I1(pend_rd_op),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I4(bram_addr_inc1),
        .I5(rd_data_sm_cs[1]),
        .O(bram_en_int_i_6_n_0));
  LUT6 #(
    .INIT(64'hDFFFDFFFFFFFFF00)) 
    bram_en_int_i_7
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I1(bram_addr_inc1),
        .I2(brst_one),
        .I3(rd_data_sm_cs[0]),
        .I4(ar_active_re),
        .I5(rd_data_sm_cs[1]),
        .O(bram_en_int_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bram_en_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_int_i_1_n_0),
        .Q(p_7_in),
        .R(bram_rst_a));
  LUT4 #(
    .INIT(16'h08FB)) 
    \brst_cnt[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(brst_cnt[0]),
        .O(\brst_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9999F099)) 
    \brst_cnt[1]_i_1 
       (.I0(brst_cnt[1]),
        .I1(brst_cnt[0]),
        .I2(s_axi_arlen[1]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .O(\brst_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9A9FF00A9A9)) 
    \brst_cnt[2]_i_1 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .I3(s_axi_arlen[2]),
        .I4(p_0_out),
        .I5(ar_active_d1),
        .O(\brst_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAA9AAA9)) 
    \brst_cnt[3]_i_1 
       (.I0(brst_cnt[3]),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[2]),
        .I4(s_axi_arlen[3]),
        .I5(ar_active_re),
        .O(\brst_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9999F099)) 
    \brst_cnt[4]_i_1 
       (.I0(brst_cnt[4]),
        .I1(\brst_cnt[6]_i_2_n_0 ),
        .I2(s_axi_arlen[4]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .O(\brst_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9A9FF00A9A9)) 
    \brst_cnt[5]_i_1 
       (.I0(brst_cnt[5]),
        .I1(\brst_cnt[6]_i_2_n_0 ),
        .I2(brst_cnt[4]),
        .I3(s_axi_arlen[5]),
        .I4(p_0_out),
        .I5(ar_active_d1),
        .O(\brst_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAA9AAA9)) 
    \brst_cnt[6]_i_1 
       (.I0(brst_cnt[6]),
        .I1(brst_cnt[4]),
        .I2(\brst_cnt[6]_i_2_n_0 ),
        .I3(brst_cnt[5]),
        .I4(s_axi_arlen[6]),
        .I5(ar_active_re),
        .O(\brst_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \brst_cnt[6]_i_2 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[3]),
        .O(\brst_cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \brst_cnt[7]_i_1 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(bram_addr_inc),
        .O(\brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9A9FF00A9A9)) 
    \brst_cnt[7]_i_2 
       (.I0(brst_cnt[7]),
        .I1(brst_cnt[6]),
        .I2(\brst_cnt[7]_i_3_n_0 ),
        .I3(s_axi_arlen[7]),
        .I4(p_0_out),
        .I5(ar_active_d1),
        .O(\brst_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \brst_cnt[7]_i_3 
       (.I0(brst_cnt[4]),
        .I1(brst_cnt[2]),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[1]),
        .I4(brst_cnt[3]),
        .I5(brst_cnt[5]),
        .O(\brst_cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    brst_cnt_max_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_cnt_max),
        .Q(brst_cnt_max_d1),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[0]_i_1_n_0 ),
        .Q(brst_cnt[0]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[1]_i_1_n_0 ),
        .Q(brst_cnt[1]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[2]_i_1_n_0 ),
        .Q(brst_cnt[2]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[3]_i_1_n_0 ),
        .Q(brst_cnt[3]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[4]_i_1_n_0 ),
        .Q(brst_cnt[4]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[5]_i_1_n_0 ),
        .Q(brst_cnt[5]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[6]_i_1_n_0 ),
        .Q(brst_cnt[6]),
        .R(bram_rst_a));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[7]_i_2_n_0 ),
        .Q(brst_cnt[7]),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'h0000540055005400)) 
    brst_one_i_1
       (.I0(last_bram_addr_i_4_n_0),
        .I1(brst_one),
        .I2(brst_one_i_2_n_0),
        .I3(s_axi_aresetn),
        .I4(ar_active_re),
        .I5(axi_rd_burst_i_2_n_0),
        .O(brst_one_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    brst_one_i_2
       (.I0(last_bram_addr_i_6_n_0),
        .I1(bram_addr_inc),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[0]),
        .O(brst_one_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    brst_one_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_one_i_1_n_0),
        .Q(brst_one),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA800A8A8A8A8A8A8)) 
    brst_zero_i_1
       (.I0(s_axi_aresetn),
        .I1(last_bram_addr_i_4_n_0),
        .I2(brst_zero),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(axi_rd_burst1__2),
        .O(brst_zero_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    brst_zero_i_2
       (.I0(brst_zero_i_3_n_0),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arlen[0]),
        .O(axi_rd_burst1__2));
  LUT3 #(
    .INIT(8'hFE)) 
    brst_zero_i_3
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[1]),
        .O(brst_zero_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    brst_zero_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_zero_i_1_n_0),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    curr_fixed_burst_reg_i_1__0
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg_0),
        .R(bram_rst_a));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    curr_wrap_burst_reg_i_1__0
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_wrap_burst_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_wrap_burst_reg_i_1__0_n_0),
        .Q(curr_wrap_burst_reg),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'h0000000022E2E2E2)) 
    disable_b2b_brst_i_1
       (.I0(disable_b2b_brst_i_2_n_0),
        .I1(rd_data_sm_cs[2]),
        .I2(disable_b2b_brst),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    disable_b2b_brst_i_2
       (.I0(disable_b2b_brst_i_3_n_0),
        .I1(rd_data_sm_cs[1]),
        .I2(axi_rd_burst_two_reg_n_0),
        .I3(axi_rd_burst),
        .I4(rd_data_sm_cs[0]),
        .I5(disable_b2b_brst),
        .O(disable_b2b_brst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAFFFEFFFEFFFE)) 
    disable_b2b_brst_i_3
       (.I0(disable_b2b_brst),
        .I1(end_brst_rd),
        .I2(brst_zero),
        .I3(brst_one),
        .I4(s_axi_rvalid),
        .I5(s_axi_rready),
        .O(disable_b2b_brst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    disable_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'hFFFFFFAB00005000)) 
    end_brst_rd_clr_i_1
       (.I0(rd_data_sm_cs[1]),
        .I1(ar_active_re),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(end_brst_rd_clr),
        .O(end_brst_rd_clr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    end_brst_rd_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(end_brst_rd_clr_i_1_n_0),
        .Q(end_brst_rd_clr),
        .R(bram_rst_a));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    end_brst_rd_i_1
       (.I0(s_axi_aresetn),
        .I1(brst_cnt_max_d1),
        .I2(brst_cnt_max),
        .I3(end_brst_rd),
        .I4(end_brst_rd_clr),
        .O(end_brst_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    end_brst_rd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(end_brst_rd_i_1_n_0),
        .Q(end_brst_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF222E2222)) 
    last_bram_addr_i_1
       (.I0(last_bram_addr_i_2_n_0),
        .I1(rd_data_sm_cs[3]),
        .I2(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I4(last_bram_addr_i_3_n_0),
        .I5(last_bram_addr_i_4_n_0),
        .O(last_bram_addr0));
  LUT6 #(
    .INIT(64'h8000800380008000)) 
    last_bram_addr_i_2
       (.I0(set_last_bram_addr3_out),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(axi_rd_burst1__2),
        .I5(ar_active_re),
        .O(last_bram_addr_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    last_bram_addr_i_3
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .O(last_bram_addr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    last_bram_addr_i_4
       (.I0(last_bram_addr_i_6_n_0),
        .I1(bram_addr_inc),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[1]),
        .O(last_bram_addr_i_4_n_0));
  LUT6 #(
    .INIT(64'h000055550000000C)) 
    last_bram_addr_i_5
       (.I0(axi_rd_burst1__2),
        .I1(pend_rd_op),
        .I2(axi_rd_burst),
        .I3(axi_rd_burst_two_reg_n_0),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I5(ar_active_re),
        .O(set_last_bram_addr3_out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    last_bram_addr_i_6
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[3]),
        .I2(brst_cnt[4]),
        .I3(brst_cnt[5]),
        .I4(brst_cnt[7]),
        .I5(brst_cnt[6]),
        .O(last_bram_addr_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_bram_addr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'hFFFFABFB0000A808)) 
    pend_rd_op_i_1
       (.I0(pend_rd_op_i_2_n_0),
        .I1(pend_rd_op_i_3_n_0),
        .I2(rd_data_sm_cs[2]),
        .I3(pend_rd_op_i_4_n_0),
        .I4(rd_data_sm_cs[3]),
        .I5(pend_rd_op),
        .O(pend_rd_op_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000AB00)) 
    pend_rd_op_i_2
       (.I0(rd_data_sm_cs[2]),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(axi_rd_burst),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(rd_data_sm_cs[1]),
        .O(pend_rd_op_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555010000000000)) 
    pend_rd_op_i_3
       (.I0(rd_data_sm_cs[1]),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(axi_rd_burst),
        .I3(ar_active_re),
        .I4(pend_rd_op),
        .I5(rd_data_sm_cs[0]),
        .O(pend_rd_op_i_3_n_0));
  LUT6 #(
    .INIT(64'h4400440033303030)) 
    pend_rd_op_i_4
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(ar_active_re),
        .I3(pend_rd_op),
        .I4(s_axi_rlast),
        .I5(rd_data_sm_cs[1]),
        .O(pend_rd_op_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pend_rd_op_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pend_rd_op_i_1_n_0),
        .Q(pend_rd_op),
        .R(bram_rst_a));
  LUT6 #(
    .INIT(64'h0000000040555500)) 
    rd_skid_buf_ld_reg_i_1
       (.I0(rd_data_sm_cs[2]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    rd_skid_buf_ld_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(bram_rst_a));
  LUT4 #(
    .INIT(16'hFB08)) 
    rddata_mux_sel_i_1
       (.I0(rddata_mux_sel_i_2_n_0),
        .I1(rddata_mux_sel_i_3_n_0),
        .I2(rd_data_sm_cs[3]),
        .I3(rddata_mux_sel),
        .O(rddata_mux_sel_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF10F01000F000F0)) 
    rddata_mux_sel_i_2
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(rddata_mux_sel_i_2_n_0));
  LUT6 #(
    .INIT(64'h0FFF0FFF8F808080)) 
    rddata_mux_sel_i_3
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(axi_rd_burst_two_reg_n_0),
        .I5(rd_data_sm_cs[0]),
        .O(rddata_mux_sel_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rddata_mux_sel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rddata_mux_sel_i_1_n_0),
        .Q(rddata_mux_sel),
        .R(bram_rst_a));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sng_port_arb
   (s_axi_awready,
    s_axi_arready,
    p_0_out,
    p_1_out,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    E,
    ar_active_re,
    \arb_sm_cs_reg[1]_0 ,
    bram_we_a,
    \GEN_AR_SNG.ar_active_d1_reg ,
    s_axi_aresetn_0,
    s_axi_aclk,
    sng_bram_addr_ld_en,
    bram_addr_ld1__0,
    aw_active_d1,
    ar_active_d1,
    \bvalid_cnt_reg[0] ,
    axi_rlast_int_reg,
    s_axi_awvalid,
    s_axi_arvalid,
    aw_active_cmb,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    wr_data_sng_sm_cs,
    Q,
    s_axi_aresetn,
    axi_rlast_int_reg_0,
    s_axi_rready);
  output s_axi_awready;
  output s_axi_arready;
  output p_0_out;
  output p_1_out;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output [0:0]E;
  output ar_active_re;
  output [0:0]\arb_sm_cs_reg[1]_0 ;
  output [3:0]bram_we_a;
  output \GEN_AR_SNG.ar_active_d1_reg ;
  input s_axi_aresetn_0;
  input s_axi_aclk;
  input sng_bram_addr_ld_en;
  input bram_addr_ld1__0;
  input aw_active_d1;
  input ar_active_d1;
  input \bvalid_cnt_reg[0] ;
  input axi_rlast_int_reg;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input aw_active_cmb;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  input [1:0]wr_data_sng_sm_cs;
  input [3:0]Q;
  input s_axi_aresetn;
  input axi_rlast_int_reg_0;
  input s_axi_rready;

  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire [0:0]E;
  wire \GEN_AR_SNG.ar_active_d1_reg ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire [3:0]Q;
  wire ar_active_cmb;
  wire ar_active_d1;
  wire ar_active_i_1_n_0;
  wire ar_active_re;
  wire [0:0]arb_sm_cs;
  wire \arb_sm_cs[0]_i_1_n_0 ;
  wire \arb_sm_cs[0]_i_3_n_0 ;
  wire \arb_sm_cs[1]_i_1_n_0 ;
  wire \arb_sm_cs[1]_i_3_n_0 ;
  wire [0:0]\arb_sm_cs_reg[1]_0 ;
  wire [0:0]arb_sm_ns;
  wire aw_active_cmb;
  wire aw_active_d1;
  wire aw_active_i_1_n_0;
  wire axi_arready_cmb;
  wire axi_arready_int_i_3_n_0;
  wire axi_arready_int_i_4_n_0;
  wire axi_awready_cmb;
  wire axi_rlast_int_reg;
  wire axi_rlast_int_reg_0;
  wire bram_addr_ld1__0;
  wire [3:0]bram_we_a;
  wire \bvalid_cnt_reg[0] ;
  wire last_arb_won;
  wire last_arb_won_i_1_n_0;
  wire last_arb_won_i_2_n_0;
  wire p_0_out;
  wire p_1_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_rready;
  wire sng_bram_addr_ld_en;
  wire [1:0]wr_data_sng_sm_cs;

  LUT3 #(
    .INIT(8'h04)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_2 
       (.I0(p_0_out),
        .I1(sng_bram_addr_ld_en),
        .I2(bram_addr_ld1__0),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \GEN_AR_SNG.ar_active_d1_i_1 
       (.I0(p_0_out),
        .I1(s_axi_aresetn),
        .I2(axi_rlast_int_reg_0),
        .I3(s_axi_rready),
        .O(\GEN_AR_SNG.ar_active_d1_reg ));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    ar_active_i_1
       (.I0(ar_active_cmb),
        .I1(axi_rlast_int_reg),
        .I2(arb_sm_cs),
        .I3(\arb_sm_cs_reg[1]_0 ),
        .I4(axi_arready_int_i_4_n_0),
        .I5(p_0_out),
        .O(ar_active_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAFA0000BBFF0000)) 
    ar_active_i_2
       (.I0(\arb_sm_cs_reg[1]_0 ),
        .I1(last_arb_won),
        .I2(\bvalid_cnt_reg[0] ),
        .I3(s_axi_awvalid),
        .I4(s_axi_arvalid),
        .I5(arb_sm_cs),
        .O(ar_active_cmb));
  FDRE #(
    .INIT(1'b0)) 
    ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_i_1_n_0),
        .Q(p_0_out),
        .R(s_axi_aresetn_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \arb_sm_cs[0]_i_1 
       (.I0(arb_sm_ns),
        .I1(\arb_sm_cs[0]_i_3_n_0 ),
        .I2(arb_sm_cs),
        .O(\arb_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F50CFF00000000)) 
    \arb_sm_cs[0]_i_2 
       (.I0(last_arb_won),
        .I1(\bvalid_cnt_reg[0] ),
        .I2(\arb_sm_cs_reg[1]_0 ),
        .I3(arb_sm_cs),
        .I4(s_axi_awvalid),
        .I5(s_axi_arvalid),
        .O(arb_sm_ns));
  LUT6 #(
    .INIT(64'hFFFA33FFFFFA33F0)) 
    \arb_sm_cs[0]_i_3 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I1(axi_rlast_int_reg),
        .I2(aw_active_cmb),
        .I3(arb_sm_cs),
        .I4(\arb_sm_cs_reg[1]_0 ),
        .I5(\arb_sm_cs[1]_i_3_n_0 ),
        .O(\arb_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0053000F00530F0)) 
    \arb_sm_cs[1]_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I1(axi_rlast_int_reg),
        .I2(aw_active_cmb),
        .I3(arb_sm_cs),
        .I4(\arb_sm_cs_reg[1]_0 ),
        .I5(\arb_sm_cs[1]_i_3_n_0 ),
        .O(\arb_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \arb_sm_cs[1]_i_3 
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .O(\arb_sm_cs[1]_i_3_n_0 ));
  FDRE \arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\arb_sm_cs[0]_i_1_n_0 ),
        .Q(arb_sm_cs),
        .R(s_axi_aresetn_0));
  FDRE \arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\arb_sm_cs[1]_i_1_n_0 ),
        .Q(\arb_sm_cs_reg[1]_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    aw_active_i_1
       (.I0(aw_active_cmb),
        .I1(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I2(\arb_sm_cs_reg[1]_0 ),
        .I3(arb_sm_cs),
        .I4(axi_awready_cmb),
        .I5(p_1_out),
        .O(aw_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_i_1_n_0),
        .Q(p_1_out),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    axi_arready_int_i_1
       (.I0(\bvalid_cnt_reg[0] ),
        .I1(axi_rlast_int_reg),
        .I2(axi_arready_int_i_3_n_0),
        .I3(\arb_sm_cs_reg[1]_0 ),
        .I4(arb_sm_cs),
        .I5(axi_arready_int_i_4_n_0),
        .O(axi_arready_cmb));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_int_i_3
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .O(axi_arready_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000022E22222)) 
    axi_arready_int_i_4
       (.I0(\arb_sm_cs[1]_i_3_n_0 ),
        .I1(\arb_sm_cs_reg[1]_0 ),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(s_axi_arvalid),
        .I5(arb_sm_cs),
        .O(axi_arready_int_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(s_axi_arready),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h008FFF8F00000000)) 
    axi_awready_int_i_1
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(arb_sm_cs),
        .I4(axi_rlast_int_reg),
        .I5(aw_active_cmb),
        .O(axi_awready_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(s_axi_aresetn_0));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[0]_INST_0 
       (.I0(p_1_out),
        .I1(Q[0]),
        .O(bram_we_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[1]_INST_0 
       (.I0(p_1_out),
        .I1(Q[1]),
        .O(bram_we_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[2]_INST_0 
       (.I0(p_1_out),
        .I1(Q[2]),
        .O(bram_we_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[3]_INST_0 
       (.I0(p_1_out),
        .I1(Q[3]),
        .O(bram_we_a[3]));
  LUT6 #(
    .INIT(64'hBBABABAB88A8A8A8)) 
    last_arb_won_i_1
       (.I0(ar_active_cmb),
        .I1(last_arb_won_i_2_n_0),
        .I2(aw_active_cmb),
        .I3(arb_sm_cs),
        .I4(axi_rlast_int_reg),
        .I5(last_arb_won),
        .O(last_arb_won_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    last_arb_won_i_2
       (.I0(axi_rlast_int_reg),
        .I1(\arb_sm_cs_reg[1]_0 ),
        .I2(arb_sm_cs),
        .I3(s_axi_awvalid),
        .I4(s_axi_arvalid),
        .I5(axi_arready_int_i_4_n_0),
        .O(last_arb_won_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_arb_won_i_1_n_0),
        .Q(last_arb_won),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(p_1_out),
        .I1(aw_active_d1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(p_0_out),
        .I1(ar_active_d1),
        .O(ar_active_re));
endmodule

(* CHECK_LICENSE_TYPE = "system_share_axi_bram_ctrl_1_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [11:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [11:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [11:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [11:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_WRITE" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [12:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;

  wire [12:0]bram_addr_a;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [12:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_BRAM_ADDR_WIDTH = "11" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "2048" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "12" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[12:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_chnl
   (aw_active_d1,
    bram_wrdata_a,
    s_axi_wready,
    s_axi_bvalid,
    curr_fixed_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    bram_addr_ld1__0,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ,
    wr_data_sng_sm_cs,
    \arb_sm_cs_reg[1] ,
    p_3_in,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    D,
    aw_active_cmb,
    axi_arready_int_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ,
    bram_en_a,
    s_axi_bid,
    \bram_we_a[3] ,
    SR,
    s_axi_aclk,
    s_axi_awid,
    p_1_out,
    s_axi_wdata,
    s_axi_awaddr,
    p_0_out,
    sng_bram_addr_ld_en,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_wlast,
    s_axi_wvalid,
    Q,
    \arb_sm_cs_reg[1]_0 ,
    s_axi_awvalid,
    p_7_in,
    s_axi_awburst,
    E,
    s_axi_wstrb,
    s_axi_awlen);
  output aw_active_d1;
  output [31:0]bram_wrdata_a;
  output s_axi_wready;
  output s_axi_bvalid;
  output curr_fixed_burst_reg;
  output \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  output bram_addr_ld1__0;
  output \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  output \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ;
  output [1:0]wr_data_sng_sm_cs;
  output \arb_sm_cs_reg[1] ;
  output p_3_in;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output [0:0]D;
  output aw_active_cmb;
  output axi_arready_int_reg;
  output [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  output bram_en_a;
  output [11:0]s_axi_bid;
  output [3:0]\bram_we_a[3] ;
  input [0:0]SR;
  input s_axi_aclk;
  input [11:0]s_axi_awid;
  input p_1_out;
  input [31:0]s_axi_wdata;
  input [9:0]s_axi_awaddr;
  input p_0_out;
  input sng_bram_addr_ld_en;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_wlast;
  input s_axi_wvalid;
  input [3:0]Q;
  input [0:0]\arb_sm_cs_reg[1]_0 ;
  input s_axi_awvalid;
  input p_7_in;
  input [1:0]s_axi_awburst;
  input [0:0]E;
  input [3:0]s_axi_wstrb;
  input [3:0]s_axi_awlen;

  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire [2:0]AW2Arb_BVALID_Cnt;
  wire BID_FIFO_n_0;
  wire BID_FIFO_n_1;
  wire BID_FIFO_n_10;
  wire BID_FIFO_n_11;
  wire BID_FIFO_n_13;
  wire BID_FIFO_n_14;
  wire BID_FIFO_n_17;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_4;
  wire BID_FIFO_n_5;
  wire BID_FIFO_n_6;
  wire BID_FIFO_n_7;
  wire BID_FIFO_n_8;
  wire BID_FIFO_n_9;
  wire [0:0]D;
  wire [0:0]E;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_2_n_0 ;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \arb_sm_cs_reg[1] ;
  wire [0:0]\arb_sm_cs_reg[1]_0 ;
  wire aw_active_cmb;
  wire aw_active_d1;
  wire axi_arready_int_reg;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_2_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bram_addr_ld1__0;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [3:0]\bram_we_a[3] ;
  wire [31:0]bram_wrdata_a;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire bvalid_cnt_inc;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_in;
  wire p_7_in;
  wire p_8_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [9:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sng_bram_addr_ld_en;
  wire [1:0]wr_data_sng_sm_cs;
  wire wrdata_reg_ld;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SRL_FIFO BID_FIFO
       (.AW2Arb_BVALID_Cnt(AW2Arb_BVALID_Cnt),
        .\Addr_Counters[0].FDRE_I_0 (BID_FIFO_n_14),
        .D({BID_FIFO_n_0,BID_FIFO_n_1,BID_FIFO_n_2,BID_FIFO_n_3,BID_FIFO_n_4,BID_FIFO_n_5,BID_FIFO_n_6,BID_FIFO_n_7,BID_FIFO_n_8,BID_FIFO_n_9,BID_FIFO_n_10,BID_FIFO_n_11}),
        .E(BID_FIFO_n_13),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg (\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 (BID_FIFO_n_17),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (wr_data_sng_sm_cs[0]),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] (wr_data_sng_sm_cs[1]),
        .SR(SR),
        .aw_active_d1_reg(aw_active_d1),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .axi_wdata_full_reg(axi_wdata_full_reg),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bvalid_cnt_inc(bvalid_cnt_inc),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hF0F0BB10)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(p_1_out),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wvalid),
        .I4(wr_data_sng_sm_cs[1]),
        .O(axi_wdata_full_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h0000F0A8)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(p_1_out),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wvalid),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(wr_data_sng_sm_cs[0]),
        .O(bram_en_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(p_8_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFFFF740000)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(axi_wr_burst),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wlast),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ),
        .I5(wr_data_sng_sm_cs[0]),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF51010000)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .I4(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ),
        .I5(wr_data_sng_sm_cs[1]),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAF0FAF0F8F0F8)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 
       (.I0(p_1_out),
        .I1(axi_wdata_full_reg),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(s_axi_wlast),
        .I5(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ));
  FDRE \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ),
        .Q(wr_data_sng_sm_cs[0]),
        .R(SR));
  FDRE \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ),
        .Q(wr_data_sng_sm_cs[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6070)) 
    \GEN_WRDATA[31].bram_wrdata_int[31]_i_1 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBFBBBBBB)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(\GEN_WR_NO_ECC.bram_we_int[3]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(wr_data_sng_sm_cs[1]),
        .I3(clr_bram_we),
        .I4(axi_wdata_full_reg),
        .I5(wr_data_sng_sm_cs[0]),
        .O(p_2_out));
  LUT6 #(
    .INIT(64'h8888EFFF00000000)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_2 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(p_1_out),
        .I3(axi_wdata_full_reg),
        .I4(s_axi_wvalid),
        .I5(clr_bram_we),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(\bram_we_a[3] [0]),
        .R(p_2_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(\bram_we_a[3] [1]),
        .R(p_2_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(\bram_we_a[3] [2]),
        .R(p_2_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(\bram_we_a[3] [3]),
        .R(p_2_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst I_WRAP_BRST
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .D(D),
        .E(E),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg_0 ),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 (\arb_sm_cs_reg[1] ),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_1 (wr_data_sng_sm_cs[0]),
        .\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] (wr_data_sng_sm_cs[1]),
        .Q(Q),
        .SR(SR),
        .aw_active_d1_reg(BID_FIFO_n_14),
        .aw_active_d1_reg_0(aw_active_d1),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(I_WRAP_BRST_n_14),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_15),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .\save_init_bram_addr_ld_reg[12]_0 (bram_addr_ld1__0),
        .sng_bram_addr_ld_en(sng_bram_addr_ld_en));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \arb_sm_cs[1]_i_2 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .O(\arb_sm_cs_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(aw_active_d1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    axi_arready_int_i_2
       (.I0(AW2Arb_BVALID_Cnt[0]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(s_axi_awvalid),
        .O(axi_arready_int_reg));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h04444444)) 
    axi_awready_int_i_3
       (.I0(\arb_sm_cs_reg[1]_0 ),
        .I1(s_axi_awvalid),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .O(aw_active_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_11),
        .Q(s_axi_bid[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_1),
        .Q(s_axi_bid[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_0),
        .Q(s_axi_bid[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_10),
        .Q(s_axi_bid[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_9),
        .Q(s_axi_bid[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_8),
        .Q(s_axi_bid[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_7),
        .Q(s_axi_bid[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_6),
        .Q(s_axi_bid[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_5),
        .Q(s_axi_bid[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_4),
        .Q(s_axi_bid[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_3),
        .Q(s_axi_bid[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_13),
        .D(BID_FIFO_n_2),
        .Q(s_axi_bid[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFEFFFA00000000)) 
    axi_bvalid_int_i_1
       (.I0(bvalid_cnt_inc),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(axi_bvalid_int_i_2_n_0),
        .I5(s_axi_aresetn),
        .O(axi_bvalid_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h7777777F)) 
    axi_bvalid_int_i_2
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .O(axi_bvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555DFDD55551011)) 
    axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(axi_wr_burst_i_2_n_0),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(axi_wdata_full_reg),
        .I4(BID_FIFO_n_17),
        .I5(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hB)) 
    axi_wr_burst_i_2
       (.I0(wr_data_sng_sm_cs[1]),
        .I1(s_axi_wvalid),
        .O(axi_wr_burst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(SR));
  LUT6 #(
    .INIT(64'h330A000033FB0000)) 
    axi_wready_int_mod_i_1
       (.I0(p_1_out),
        .I1(axi_wdata_full_reg),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(s_axi_aresetn),
        .I5(s_axi_wvalid),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    bram_en_a_INST_0
       (.I0(p_8_in),
        .I1(p_7_in),
        .O(bram_en_a));
  LUT6 #(
    .INIT(64'hF0000FFF1FFFE000)) 
    \bvalid_cnt[0]_i_1 
       (.I0(AW2Arb_BVALID_Cnt[1]),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .I4(bvalid_cnt_inc),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D52A2ABFBF4000)) 
    \bvalid_cnt[1]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(s_axi_bvalid),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD52AFF00FF00BF00)) 
    \bvalid_cnt[2]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(s_axi_bvalid),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_14),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_15),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst
   (\ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    \save_init_bram_addr_ld_reg[12]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    p_3_in,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    D,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ,
    curr_fixed_burst_reg_reg,
    curr_wrap_burst_reg_reg,
    s_axi_awaddr,
    p_0_out,
    sng_bram_addr_ld_en,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    aw_active_d1_reg,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ,
    curr_fixed_burst_reg,
    s_axi_aresetn,
    p_1_out,
    aw_active_d1_reg_0,
    curr_wrap_burst_reg,
    Q,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_1 ,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ,
    s_axi_awburst,
    SR,
    E,
    s_axi_aclk,
    s_axi_awlen);
  output \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  output \save_init_bram_addr_ld_reg[12]_0 ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  output p_3_in;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output [0:0]D;
  output [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  output curr_fixed_burst_reg_reg;
  output curr_wrap_burst_reg_reg;
  input [9:0]s_axi_awaddr;
  input p_0_out;
  input sng_bram_addr_ld_en;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  input aw_active_d1_reg;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ;
  input curr_fixed_burst_reg;
  input s_axi_aresetn;
  input p_1_out;
  input aw_active_d1_reg_0;
  input curr_wrap_burst_reg;
  input [3:0]Q;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_1 ;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ;
  input [1:0]s_axi_awburst;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;
  input [3:0]s_axi_awlen;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[3]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire [0:0]D;
  wire [0:0]E;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_1 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aw_active_d1_reg;
  wire aw_active_d1_reg_0;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg0;
  wire curr_wrap_burst_reg_reg;
  wire p_0_out;
  wire p_13_in;
  wire [8:0]p_1_in;
  wire p_1_out;
  wire p_3_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [9:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire [12:3]save_init_bram_addr_ld;
  wire \save_init_bram_addr_ld_reg[12]_0 ;
  wire sng_bram_addr_ld_en;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_3 
       (.I0(save_init_bram_addr_ld[10]),
        .I1(s_axi_awaddr[7]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[10] ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(p_3_in),
        .I1(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_1 ),
        .I2(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ),
        .I3(s_axi_aresetn),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hE6220000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_11 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_12 
       (.I0(curr_wrap_burst_reg),
        .I1(wrap_burst_total[2]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_13 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_14 
       (.I0(curr_wrap_burst_reg),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8F880000FFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ),
        .I4(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I5(aw_active_d1_reg),
        .O(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_8 
       (.I0(save_init_bram_addr_ld[11]),
        .I1(s_axi_awaddr[8]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[11] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[3]_i_5_n_0 ),
        .I1(s_axi_awaddr[0]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hD900)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_5 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .I3(save_init_bram_addr_ld[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ),
        .I1(s_axi_awaddr[1]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hDB00)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_5 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[4]),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[5]_i_5_n_0 ),
        .I1(s_axi_awaddr[2]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFD00)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_5 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[0]),
        .I3(save_init_bram_addr_ld[5]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3 
       (.I0(save_init_bram_addr_ld[6]),
        .I1(s_axi_awaddr[3]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_3 
       (.I0(save_init_bram_addr_ld[7]),
        .I1(s_axi_awaddr[4]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_3 
       (.I0(save_init_bram_addr_ld[8]),
        .I1(s_axi_awaddr[5]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_3 
       (.I0(save_init_bram_addr_ld[9]),
        .I1(s_axi_awaddr[6]),
        .I2(p_0_out),
        .I3(sng_bram_addr_ld_en),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[9] ));
  LUT6 #(
    .INIT(64'h000000008A8A8ABA)) 
    curr_fixed_burst_reg_i_1
       (.I0(curr_fixed_burst_reg),
        .I1(aw_active_d1_reg_0),
        .I2(p_1_out),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .I5(curr_wrap_burst_reg0),
        .O(curr_fixed_burst_reg_reg));
  LUT6 #(
    .INIT(64'h000000008ABA8A8A)) 
    curr_wrap_burst_reg_i_1
       (.I0(curr_wrap_burst_reg),
        .I1(aw_active_d1_reg_0),
        .I2(p_1_out),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(curr_wrap_burst_reg0),
        .O(curr_wrap_burst_reg_reg));
  LUT6 #(
    .INIT(64'h70003000FFFFFFFF)) 
    curr_wrap_burst_reg_i_2
       (.I0(p_13_in),
        .I1(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I2(aw_active_d1_reg),
        .I3(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ),
        .I4(curr_fixed_burst_reg),
        .I5(s_axi_aresetn),
        .O(curr_wrap_burst_reg0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(save_init_bram_addr_ld[10]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(save_init_bram_addr_ld[11]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[8]),
        .O(p_1_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_2__0 
       (.I0(save_init_bram_addr_ld[12]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[9]),
        .O(D));
  LUT3 #(
    .INIT(8'hD0)) 
    \save_init_bram_addr_ld[12]_i_3__0 
       (.I0(p_1_out),
        .I1(aw_active_d1_reg_0),
        .I2(p_13_in),
        .O(\save_init_bram_addr_ld_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h00A000A000A030A0)) 
    \save_init_bram_addr_ld[12]_i_4__0 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .I2(curr_wrap_burst_reg),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[1]),
        .I5(wrap_burst_total[0]),
        .O(p_13_in));
  LUT6 #(
    .INIT(64'hD900FFFFD9000000)) 
    \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .I3(save_init_bram_addr_ld[3]),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .I5(s_axi_awaddr[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hDB00FFFFDB000000)) 
    \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[4]),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .I5(s_axi_awaddr[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFD00FFFFFD000000)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[0]),
        .I3(save_init_bram_addr_ld[5]),
        .I4(\save_init_bram_addr_ld_reg[12]_0 ),
        .I5(s_axi_awaddr[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(save_init_bram_addr_ld[6]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(save_init_bram_addr_ld[7]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(save_init_bram_addr_ld[8]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(save_init_bram_addr_ld[9]),
        .I1(\save_init_bram_addr_ld_reg[12]_0 ),
        .I2(s_axi_awaddr[6]),
        .O(p_1_in[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(save_init_bram_addr_ld[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[8]),
        .Q(save_init_bram_addr_ld[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D),
        .Q(save_init_bram_addr_ld[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(save_init_bram_addr_ld[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(save_init_bram_addr_ld[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(save_init_bram_addr_ld[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(save_init_bram_addr_ld[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(save_init_bram_addr_ld[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(save_init_bram_addr_ld[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(save_init_bram_addr_ld[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \wrap_burst_total[0]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awlen[2]),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \wrap_burst_total[1]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awlen[1]),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst_0
   (D,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \save_init_bram_addr_ld_reg[12]_0 ,
    E,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    SR,
    ar_active_reg,
    s_axi_araddr,
    ar_active_reg_0,
    ar_active_reg_1,
    \save_init_bram_addr_ld_reg[6]_0 ,
    \save_init_bram_addr_ld_reg[7]_0 ,
    \save_init_bram_addr_ld_reg[8]_0 ,
    \save_init_bram_addr_ld_reg[9]_0 ,
    \save_init_bram_addr_ld_reg[10]_0 ,
    \save_init_bram_addr_ld_reg[11]_0 ,
    p_0_out,
    Q,
    ar_active_reg_2,
    s_axi_awaddr,
    curr_fixed_burst_reg,
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    bram_addr_inc,
    curr_fixed_burst_reg_0,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    out,
    curr_wrap_burst_reg,
    ar_active_re,
    p_3_in,
    s_axi_arlen,
    end_brst_rd,
    brst_zero,
    s_axi_rready,
    axi_rvalid_int_reg,
    s_axi_aresetn,
    axi_rd_burst,
    axi_rd_burst_two_reg,
    s_axi_aclk);
  output [9:0]D;
  output \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  output [0:0]\save_init_bram_addr_ld_reg[12]_0 ;
  output [0:0]E;
  output \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  output [0:0]SR;
  input ar_active_reg;
  input [10:0]s_axi_araddr;
  input ar_active_reg_0;
  input ar_active_reg_1;
  input \save_init_bram_addr_ld_reg[6]_0 ;
  input \save_init_bram_addr_ld_reg[7]_0 ;
  input \save_init_bram_addr_ld_reg[8]_0 ;
  input \save_init_bram_addr_ld_reg[9]_0 ;
  input \save_init_bram_addr_ld_reg[10]_0 ;
  input \save_init_bram_addr_ld_reg[11]_0 ;
  input p_0_out;
  input [9:0]Q;
  input ar_active_reg_2;
  input [0:0]s_axi_awaddr;
  input curr_fixed_burst_reg;
  input \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  input bram_addr_inc;
  input curr_fixed_burst_reg_0;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input [3:0]out;
  input curr_wrap_burst_reg;
  input ar_active_re;
  input p_3_in;
  input [3:0]s_axi_arlen;
  input end_brst_rd;
  input brst_zero;
  input s_axi_rready;
  input axi_rvalid_int_reg;
  input s_axi_aresetn;
  input axi_rd_burst;
  input axi_rd_burst_two_reg;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[12]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[3]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[3]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire [9:0]D;
  wire [0:0]E;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire [9:0]Q;
  wire [9:1]RdChnl_BRAM_Addr_Ld;
  wire [0:0]SR;
  wire ar_active_re;
  wire ar_active_reg;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire ar_active_reg_2;
  wire axi_rd_burst;
  wire axi_rd_burst_two_reg;
  wire axi_rvalid_int_reg;
  wire bram_addr_inc;
  wire bram_addr_inc9_out;
  wire bram_addr_ld_en_mod1__1;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_0;
  wire curr_wrap_burst_reg;
  wire end_brst_rd;
  wire [3:0]out;
  wire p_0_out;
  wire p_3_in;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [0:0]s_axi_awaddr;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld[12]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_5_n_0 ;
  wire \save_init_bram_addr_ld_reg[10]_0 ;
  wire \save_init_bram_addr_ld_reg[11]_0 ;
  wire [0:0]\save_init_bram_addr_ld_reg[12]_0 ;
  wire \save_init_bram_addr_ld_reg[6]_0 ;
  wire \save_init_bram_addr_ld_reg[7]_0 ;
  wire \save_init_bram_addr_ld_reg[8]_0 ;
  wire \save_init_bram_addr_ld_reg[9]_0 ;
  wire \save_init_bram_addr_ld_reg_n_0_[10] ;
  wire \save_init_bram_addr_ld_reg_n_0_[11] ;
  wire \save_init_bram_addr_ld_reg_n_0_[12] ;
  wire \save_init_bram_addr_ld_reg_n_0_[3] ;
  wire \save_init_bram_addr_ld_reg_n_0_[4] ;
  wire \save_init_bram_addr_ld_reg_n_0_[5] ;
  wire \save_init_bram_addr_ld_reg_n_0_[6] ;
  wire \save_init_bram_addr_ld_reg_n_0_[7] ;
  wire \save_init_bram_addr_ld_reg_n_0_[8] ;
  wire \save_init_bram_addr_ld_reg_n_0_[9] ;
  wire \wrap_burst_total[0]_i_1__0_n_0 ;
  wire \wrap_burst_total[1]_i_1__0_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;
  wire \wrap_burst_total_reg_n_0_[0] ;
  wire \wrap_burst_total_reg_n_0_[1] ;
  wire \wrap_burst_total_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld_reg[10]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[8]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h15554000)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .I4(Q[8]),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_10 
       (.I0(p_0_out),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I2(bram_addr_ld_en_mod1__1),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAFFBAAABA)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(curr_fixed_burst_reg),
        .I2(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .I3(p_0_out),
        .I4(bram_addr_inc),
        .I5(curr_fixed_burst_reg_0),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ),
        .I1(\save_init_bram_addr_ld_reg[11]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[9]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_7 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[8]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[9]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_9 
       (.I0(p_0_out),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I2(bram_addr_ld_en_mod1__1),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2000)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I1(out[3]),
        .I2(curr_wrap_burst_reg),
        .I3(\ADDR_SNG_PORT.bram_addr_int[12]_i_4_n_0 ),
        .I4(ar_active_re),
        .I5(p_3_in),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[11] ));
  LUT6 #(
    .INIT(64'h4400558844555088)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_3 
       (.I0(out[2]),
        .I1(bram_addr_inc9_out),
        .I2(axi_rd_burst),
        .I3(out[0]),
        .I4(out[1]),
        .I5(axi_rd_burst_two_reg),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_4 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\wrap_burst_total_reg_n_0_[2] ),
        .I4(\save_init_bram_addr_ld[12]_i_4_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_5 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(s_axi_rready),
        .I3(axi_rvalid_int_reg),
        .O(bram_addr_inc9_out));
  LUT6 #(
    .INIT(64'hFFFFF111F111F111)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[0]),
        .I2(ar_active_reg_2),
        .I3(s_axi_awaddr),
        .I4(s_axi_araddr[0]),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[3]_i_2_n_0 ),
        .I1(ar_active_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[1]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[3]_i_4_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h14)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hD900)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_4 
       (.I0(\wrap_burst_total_reg_n_0_[1] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ),
        .I1(ar_active_reg_0),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[2]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDB00)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_4 
       (.I0(\wrap_burst_total_reg_n_0_[0] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ),
        .I1(ar_active_reg_1),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[5]_i_4_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFD00)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_4 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld_reg[6]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[4]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld_reg[7]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[5]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5104)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[4]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I3(Q[5]),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld_reg[8]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[6]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h45551000)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld_reg[9]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .I3(s_axi_araddr[7]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h5515555500400000)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[8]),
        .O(RdChnl_BRAM_Addr_Ld[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[9]),
        .O(RdChnl_BRAM_Addr_Ld[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_2 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[10]),
        .O(\save_init_bram_addr_ld_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h2000200020002020)) 
    \save_init_bram_addr_ld[12]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I1(out[3]),
        .I2(curr_wrap_burst_reg),
        .I3(\save_init_bram_addr_ld[12]_i_4_n_0 ),
        .I4(\save_init_bram_addr_ld[12]_i_5_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .O(bram_addr_ld_en_mod1__1));
  LUT6 #(
    .INIT(64'h0000000080AA8800)) 
    \save_init_bram_addr_ld[12]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .I4(\wrap_burst_total_reg_n_0_[0] ),
        .I5(\wrap_burst_total_reg_n_0_[2] ),
        .O(\save_init_bram_addr_ld[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \save_init_bram_addr_ld[12]_i_5 
       (.I0(\wrap_burst_total_reg_n_0_[0] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .O(\save_init_bram_addr_ld[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD900FFFFD9000000)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(\wrap_burst_total_reg_n_0_[1] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .I4(bram_addr_ld_en_mod1__1),
        .I5(s_axi_araddr[1]),
        .O(RdChnl_BRAM_Addr_Ld[1]));
  LUT6 #(
    .INIT(64'hDB00FFFFDB000000)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(\wrap_burst_total_reg_n_0_[0] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I4(bram_addr_ld_en_mod1__1),
        .I5(s_axi_araddr[2]),
        .O(RdChnl_BRAM_Addr_Ld[2]));
  LUT6 #(
    .INIT(64'hFD00FFFFFD000000)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I4(bram_addr_ld_en_mod1__1),
        .I5(s_axi_araddr[3]),
        .O(RdChnl_BRAM_Addr_Ld[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[4]),
        .O(RdChnl_BRAM_Addr_Ld[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[5]),
        .O(RdChnl_BRAM_Addr_Ld[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[6]),
        .O(RdChnl_BRAM_Addr_Ld[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .I1(bram_addr_ld_en_mod1__1),
        .I2(s_axi_araddr[7]),
        .O(RdChnl_BRAM_Addr_Ld[7]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[8]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[9]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\save_init_bram_addr_ld_reg[12]_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[1]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[2]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[3]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[4]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[5]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[6]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[7]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4100)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .O(\wrap_burst_total[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .O(\wrap_burst_total[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[2]),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[0]_i_1__0_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[1]_i_1__0_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[2] ),
        .R(SR));
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
