// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Mar  1 21:34:31 2020
// Host        : ssg0 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_dma_0_0_sim_netlist.v
// Design      : system_axi_dma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover
   (m_axis_mm2s_tvalid,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    m_axis_mm2s_tlast,
    mm2s_halt_cmplt,
    sig_rst2all_stop_request,
    s_axis_mm2s_cmd_tready,
    m_axis_mm2s_sts_tvalid_int,
    m_axi_mm2s_rready,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    out,
    m_axi_mm2s_aclk,
    \GNE_SYNC_RESET.halt_i_reg ,
    p_4_out,
    p_2_out,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axis_mm2s_tready,
    m_axi_mm2s_rresp,
    p_5_out,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    D);
  output m_axis_mm2s_tvalid;
  output [0:0]m_axi_mm2s_arsize;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output m_axis_mm2s_tlast;
  output mm2s_halt_cmplt;
  output sig_rst2all_stop_request;
  output s_axis_mm2s_cmd_tready;
  output m_axis_mm2s_sts_tvalid_int;
  output m_axi_mm2s_rready;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  output [31:0]m_axi_mm2s_araddr;
  output [4:0]m_axi_mm2s_arlen;
  output [31:0]m_axis_mm2s_tdata;
  output [3:0]m_axis_mm2s_tkeep;
  input out;
  input m_axi_mm2s_aclk;
  input \GNE_SYNC_RESET.halt_i_reg ;
  input p_4_out;
  input p_2_out;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  input m_axis_mm2s_tready;
  input [1:0]m_axi_mm2s_rresp;
  input p_5_out;
  input m_axi_mm2s_arready;
  input [31:0]m_axi_mm2s_rdata;
  input [40:0]D;

  wire [40:0]D;
  wire \GNE_SYNC_RESET.halt_i_reg ;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [4:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [0:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [31:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axis_mm2s_sts_tvalid_int;
  wire [31:0]m_axis_mm2s_tdata;
  wire [3:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_decerr_i;
  wire mm2s_halt_cmplt;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire out;
  wire p_2_out;
  wire p_4_out;
  wire p_5_out;
  wire s_axis_mm2s_cmd_tready;
  wire sig_rst2all_stop_request;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_mm2s_basic_wrap \GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER 
       (.D(D),
        .\GNE_SYNC_RESET.halt_i_reg (\GNE_SYNC_RESET.halt_i_reg ),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] (s_axis_mm2s_cmd_tready),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
        .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_slverr_i_reg(m_axis_mm2s_sts_tvalid_int),
        .out(out),
        .p_2_out(p_2_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .sig_rst2all_stop_request(sig_rst2all_stop_request));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_addr_cntl
   (out,
    sig_addr_reg_empty,
    sig_addr2rsc_calc_error,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    sig_init_done,
    FIFO_Full_reg,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_data2addr_stop_req,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_mm2s_arready,
    in);
  output out;
  output sig_addr_reg_empty;
  output sig_addr2rsc_calc_error;
  output [0:0]m_axi_mm2s_arsize;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output sig_init_done;
  output FIFO_Full_reg;
  output [31:0]m_axi_mm2s_araddr;
  output [4:0]m_axi_mm2s_arlen;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  input sig_data2addr_stop_req;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_mm2s_arready;
  input [38:0]in;

  wire FIFO_Full_reg;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ;
  wire [0:0]SR;
  wire [38:0]in;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [4:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [0:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [50:4]p_1_out;
  wire sig_addr2rsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_data2addr_stop_req;
  wire sig_init_done;
  wire sig_mstr2addr_cmd_valid;
  wire sig_next_addr_reg0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;

  assign out = sig_posted_to_axi;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo__parameterized1 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out({p_1_out[50],p_1_out[47],p_1_out[45],p_1_out[40:4]}),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty),
        .sig_addr_valid_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_init_done(sig_init_done),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_posted_to_axi_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(sig_push_addr_reg1_out),
        .Q(sig_addr_reg_full),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_4 ),
        .Q(m_axi_mm2s_arvalid),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[50]),
        .Q(sig_addr2rsc_calc_error),
        .R(sig_next_addr_reg0));
  LUT4 #(
    .INIT(16'h08FF)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(sig_addr_reg_full),
        .I1(m_axi_mm2s_arready),
        .I2(sig_addr2rsc_calc_error),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[4]),
        .Q(m_axi_mm2s_araddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[14]),
        .Q(m_axi_mm2s_araddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[15]),
        .Q(m_axi_mm2s_araddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[16]),
        .Q(m_axi_mm2s_araddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[17]),
        .Q(m_axi_mm2s_araddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[18]),
        .Q(m_axi_mm2s_araddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[19]),
        .Q(m_axi_mm2s_araddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[20]),
        .Q(m_axi_mm2s_araddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[21]),
        .Q(m_axi_mm2s_araddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[22]),
        .Q(m_axi_mm2s_araddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[23]),
        .Q(m_axi_mm2s_araddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[5]),
        .Q(m_axi_mm2s_araddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[24]),
        .Q(m_axi_mm2s_araddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[25]),
        .Q(m_axi_mm2s_araddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[26]),
        .Q(m_axi_mm2s_araddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[27]),
        .Q(m_axi_mm2s_araddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[28]),
        .Q(m_axi_mm2s_araddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[29]),
        .Q(m_axi_mm2s_araddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[30]),
        .Q(m_axi_mm2s_araddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[31]),
        .Q(m_axi_mm2s_araddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[32]),
        .Q(m_axi_mm2s_araddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[33]),
        .Q(m_axi_mm2s_araddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[6]),
        .Q(m_axi_mm2s_araddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[34]),
        .Q(m_axi_mm2s_araddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[35]),
        .Q(m_axi_mm2s_araddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[7]),
        .Q(m_axi_mm2s_araddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[8]),
        .Q(m_axi_mm2s_araddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[9]),
        .Q(m_axi_mm2s_araddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[10]),
        .Q(m_axi_mm2s_araddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[11]),
        .Q(m_axi_mm2s_araddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[12]),
        .Q(m_axi_mm2s_araddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[13]),
        .Q(m_axi_mm2s_araddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[47]),
        .Q(m_axi_mm2s_arburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[36]),
        .Q(m_axi_mm2s_arlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[37]),
        .Q(m_axi_mm2s_arlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[38]),
        .Q(m_axi_mm2s_arlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[39]),
        .Q(m_axi_mm2s_arlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[40]),
        .Q(m_axi_mm2s_arlen[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[45]),
        .Q(m_axi_mm2s_arsize),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ),
        .Q(sig_posted_to_axi_2),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_2 ),
        .Q(sig_posted_to_axi),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_cmd_status
   (sig_reset_reg,
    sig_cmd2mstr_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ,
    mm2s_slverr_i_reg,
    sig_stat2rsc_status_ready,
    sig_init_done_reg,
    sig_init_done_reg_0,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    sig_m_valid_out_reg,
    Q,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_4_out,
    sig_cmd_reg_empty,
    sm_scc_sm_ready,
    sig_init_done,
    sig_init_done_0,
    sig_rsc2stat_status_valid,
    p_2_out,
    p_5_out,
    m_axis_mm2s_tready,
    sig_rsc2stat_status,
    D);
  output sig_reset_reg;
  output sig_cmd2mstr_cmd_valid;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  output mm2s_slverr_i_reg;
  output sig_stat2rsc_status_ready;
  output sig_init_done_reg;
  output sig_init_done_reg_0;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  output sig_m_valid_out_reg;
  output [40:0]Q;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_4_out;
  input sig_cmd_reg_empty;
  input sm_scc_sm_ready;
  input sig_init_done;
  input sig_init_done_0;
  input sig_rsc2stat_status_valid;
  input p_2_out;
  input p_5_out;
  input m_axis_mm2s_tready;
  input [2:0]sig_rsc2stat_status;
  input [40:0]D;

  wire [40:0]D;
  wire I_CMD_FIFO_n_3;
  wire [40:0]Q;
  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  wire m_axi_mm2s_aclk;
  wire m_axis_mm2s_tready;
  wire mm2s_decerr_i;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_slverr_i_reg;
  wire p_2_out;
  wire p_4_out;
  wire p_5_out;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_reg_empty;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_reg;
  wire sig_init_done_reg_0;
  wire sig_m_valid_out_reg;
  wire sig_reset_reg;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;
  wire sm_scc_sm_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo__parameterized0 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.SR(SR),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 (sig_stat2rsc_status_ready),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_slverr_i_reg(mm2s_slverr_i_reg),
        .p_2_out(p_2_out),
        .p_5_out(p_5_out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(I_CMD_FIFO_n_3),
        .sig_init_done(sig_init_done_1),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo I_CMD_FIFO
       (.D(D),
        .Q(Q),
        .SR(SR),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .p_4_out(p_4_out),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_reg_empty(sig_cmd_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_init_done(sig_init_done),
        .sig_init_done_0(sig_init_done_0),
        .sig_init_done_1(sig_init_done_1),
        .sig_init_done_reg_0(I_CMD_FIFO_n_3),
        .sig_init_done_reg_1(sig_init_done_reg),
        .sig_init_done_reg_2(sig_init_done_reg_0),
        .sig_init_reg2_reg_0(sig_reset_reg),
        .sig_m_valid_out_reg(sig_m_valid_out_reg),
        .sm_scc_sm_ready(sm_scc_sm_ready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo
   (sig_init_reg2_reg_0,
    sig_cmd2mstr_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ,
    sig_init_done_reg_0,
    sig_init_done_reg_1,
    sig_init_done_reg_2,
    sig_m_valid_out_reg,
    Q,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    p_4_out,
    sig_cmd_reg_empty,
    sm_scc_sm_ready,
    sig_init_done_1,
    sig_init_done,
    sig_init_done_0,
    m_axis_mm2s_tready,
    D);
  output sig_init_reg2_reg_0;
  output sig_cmd2mstr_cmd_valid;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ;
  output sig_init_done_reg_0;
  output sig_init_done_reg_1;
  output sig_init_done_reg_2;
  output sig_m_valid_out_reg;
  output [40:0]Q;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input p_4_out;
  input sig_cmd_reg_empty;
  input sm_scc_sm_ready;
  input sig_init_done_1;
  input sig_init_done;
  input sig_init_done_0;
  input m_axis_mm2s_tready;
  input [40:0]D;

  wire [40:0]D;
  wire \I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ;
  wire [40:0]Q;
  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_i_1_n_0 ;
  wire m_axi_mm2s_aclk;
  wire m_axis_mm2s_tready;
  wire p_4_out;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_reg_empty;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_done_2;
  wire sig_init_done_i_1__2_n_0;
  wire sig_init_done_reg_0;
  wire sig_init_done_reg_1;
  wire sig_init_done_reg_2;
  wire sig_init_reg2_reg_0;
  wire sig_m_valid_out_reg;
  wire sig_push_regfifo;
  wire sm_scc_sm_ready;

  LUT2 #(
    .INIT(4'h8)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[63]_i_1 
       (.I0(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ),
        .I1(p_4_out),
        .O(sig_push_regfifo));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[32] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[33] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[34] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[35] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[36] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[37] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[38] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[39] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[40] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[41] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[42] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[43] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[44] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[45] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[46] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[47] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[48] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[49] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[50] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[51] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[52] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[53] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[54] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[56] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[33]),
        .Q(Q[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[57] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[34]),
        .Q(Q[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[58] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[35]),
        .Q(Q[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[36]),
        .Q(Q[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[60] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[37]),
        .Q(Q[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[61] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[38]),
        .Q(Q[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[62] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[39]),
        .Q(Q[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[40]),
        .Q(Q[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_regfifo),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF80FFFFFF80FF80)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1 
       (.I0(sm_scc_sm_ready),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_cmd_reg_empty),
        .I3(sig_init_done_2),
        .I4(p_4_out),
        .I5(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00AA8080AAAA8080)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1 
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(p_4_out),
        .I2(\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0]_0 ),
        .I3(sig_cmd_reg_empty),
        .I4(sig_cmd2mstr_cmd_valid),
        .I5(sm_scc_sm_ready),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1_n_0 ),
        .Q(sig_cmd2mstr_cmd_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done_1),
        .I2(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .I3(sig_init_reg2_reg_0),
        .O(sig_init_done_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1__0
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done),
        .I2(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .I3(sig_init_reg2_reg_0),
        .O(sig_init_done_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1__1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done_0),
        .I2(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .I3(sig_init_reg2_reg_0),
        .O(sig_init_done_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1__2
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done_2),
        .I2(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .I3(sig_init_reg2_reg_0),
        .O(sig_init_done_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_done_i_1__2_n_0),
        .Q(sig_init_done_2),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_reg2_reg_0),
        .Q(\I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(sig_init_reg2_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_m_valid_dup_i_2
       (.I0(m_axis_mm2s_tready),
        .I1(sig_init_reg2_reg_0),
        .O(sig_m_valid_out_reg));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo__parameterized0
   (sig_init_done,
    mm2s_slverr_i_reg,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    m_axi_mm2s_aclk,
    SR,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_rsc2stat_status_valid,
    p_2_out,
    p_5_out,
    sig_rsc2stat_status);
  output sig_init_done;
  output mm2s_slverr_i_reg;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  input m_axi_mm2s_aclk;
  input [0:0]SR;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_rsc2stat_status_valid;
  input p_2_out;
  input p_5_out;
  input [2:0]sig_rsc2stat_status;

  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  wire m_axi_mm2s_aclk;
  wire [6:4]m_axis_mm2s_sts_tdata_int;
  wire mm2s_decerr_i;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_slverr_i_reg;
  wire p_2_out;
  wire p_5_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_init_done;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1 
       (.I0(sig_rsc2stat_status[0]),
        .I1(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(m_axis_mm2s_sts_tdata_int[4]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1 
       (.I0(sig_rsc2stat_status[1]),
        .I1(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(m_axis_mm2s_sts_tdata_int[5]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1 
       (.I0(sig_rsc2stat_status[2]),
        .I1(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(m_axis_mm2s_sts_tdata_int[6]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ),
        .Q(m_axis_mm2s_sts_tdata_int[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ),
        .Q(m_axis_mm2s_sts_tdata_int[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ),
        .Q(m_axis_mm2s_sts_tdata_int[6]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8FFF8F8)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0 
       (.I0(p_2_out),
        .I1(mm2s_slverr_i_reg),
        .I2(sig_init_done),
        .I3(sig_rsc2stat_status_valid),
        .I4(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'h0080AA80)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0 
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_rsc2stat_status_valid),
        .I2(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .I3(mm2s_slverr_i_reg),
        .I4(p_2_out),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ),
        .Q(mm2s_slverr_i_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    mm2s_decerr_i_i_1
       (.I0(p_5_out),
        .I1(mm2s_slverr_i_reg),
        .I2(m_axis_mm2s_sts_tdata_int[5]),
        .O(mm2s_decerr_i));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    mm2s_interr_i_i_1
       (.I0(p_5_out),
        .I1(mm2s_slverr_i_reg),
        .I2(m_axis_mm2s_sts_tdata_int[4]),
        .O(mm2s_interr_i));
  LUT3 #(
    .INIT(8'h40)) 
    mm2s_slverr_i_i_1
       (.I0(p_5_out),
        .I1(mm2s_slverr_i_reg),
        .I2(m_axis_mm2s_sts_tdata_int[6]),
        .O(mm2s_slverr_i));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo__parameterized1
   (sig_init_done,
    FIFO_Full_reg,
    sig_posted_to_axi_reg,
    sig_push_addr_reg1_out,
    sig_addr_valid_reg_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_addr_reg_empty_reg,
    sig_data2addr_stop_req,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    in);
  output sig_init_done;
  output FIFO_Full_reg;
  output sig_posted_to_axi_reg;
  output sig_push_addr_reg1_out;
  output sig_addr_valid_reg_reg;
  output [39:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  input sig_addr_reg_empty_reg;
  input sig_data2addr_stop_req;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [38:0]in;

  wire FIFO_Full_reg;
  wire [0:0]SR;
  wire [38:0]in;
  wire m_axi_mm2s_aclk;
  wire [39:0]out;
  wire sig_addr_reg_empty_reg;
  wire sig_addr_valid_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_init_done;
  wire sig_mstr2addr_cmd_valid;
  wire sig_posted_to_axi_reg;
  wire sig_push_addr_reg1_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo__parameterized2
   (sig_init_done,
    sig_first_dbeat_reg,
    sig_push_dqual_reg,
    FIFO_Full_reg,
    sig_next_eof_reg_reg,
    D,
    out,
    E,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_first_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    sig_mstr2data_cmd_valid,
    sig_rd_sts_reg_full_reg,
    sig_next_calc_error_reg,
    \sig_addr_posted_cntr_reg[1] ,
    m_axi_mm2s_rlast,
    sig_s_ready_out_reg,
    \sig_dbeat_cntr_reg[4] ,
    \sig_dbeat_cntr_reg[1] ,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_dqual_reg_empty_reg,
    Q,
    \sig_dbeat_cntr_reg[1]_0 ,
    \sig_dbeat_cntr_reg[2] ,
    sig_ld_new_cmd_reg,
    sig_addr_posted_cntr,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4]_0 ,
    sig_last_dbeat_reg_0,
    in);
  output sig_init_done;
  output sig_first_dbeat_reg;
  output sig_push_dqual_reg;
  output FIFO_Full_reg;
  output [0:0]sig_next_eof_reg_reg;
  output [7:0]D;
  output [10:0]out;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_first_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input sig_mstr2data_cmd_valid;
  input sig_rd_sts_reg_full_reg;
  input sig_next_calc_error_reg;
  input \sig_addr_posted_cntr_reg[1] ;
  input m_axi_mm2s_rlast;
  input sig_s_ready_out_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_dqual_reg_empty_reg;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[1]_0 ;
  input \sig_dbeat_cntr_reg[2] ;
  input sig_ld_new_cmd_reg;
  input [2:0]sig_addr_posted_cntr;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4]_0 ;
  input sig_last_dbeat_reg_0;
  input [9:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [9:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire [10:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr_reg[1] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[1]_0 ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[4]_0 ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty_reg;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_i_1__0_n_0;
  wire sig_init_done;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire [0:0]sig_next_eof_reg_reg;
  wire sig_push_dqual_reg;
  wire sig_rd_sts_reg_full_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_s_ready_out_reg;
  wire sig_stat2rsc_status_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .FIFO_Full_reg(FIFO_Full_reg),
        .Q(Q),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .out(out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[1] (\sig_addr_posted_cntr_reg[1] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[1] ),
        .\sig_dbeat_cntr_reg[1]_0 (\sig_dbeat_cntr_reg[1]_0 ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[4]_0 (\sig_dbeat_cntr_reg[4]_0 ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr_reg[7] ),
        .sig_dqual_reg_empty_reg(sig_push_dqual_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_eof_reg_reg(sig_next_eof_reg_reg),
        .sig_rd_sts_reg_full_reg(sig_rd_sts_reg_full_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__0
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n),
        .O(sig_inhibit_rdy_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__0_n_0),
        .Q(sig_inhibit_rdy_n),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_mm2s_basic_wrap
   (m_axis_mm2s_tvalid,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arvalid,
    m_axis_mm2s_tlast,
    mm2s_halt_cmplt,
    sig_rst2all_stop_request,
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ,
    mm2s_slverr_i_reg,
    m_axi_mm2s_rready,
    mm2s_decerr_i,
    mm2s_interr_i,
    mm2s_slverr_i,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    out,
    m_axi_mm2s_aclk,
    \GNE_SYNC_RESET.halt_i_reg ,
    p_4_out,
    p_2_out,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axis_mm2s_tready,
    m_axi_mm2s_rresp,
    p_5_out,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    D);
  output m_axis_mm2s_tvalid;
  output [0:0]m_axi_mm2s_arsize;
  output [0:0]m_axi_mm2s_arburst;
  output m_axi_mm2s_arvalid;
  output m_axis_mm2s_tlast;
  output mm2s_halt_cmplt;
  output sig_rst2all_stop_request;
  output \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  output mm2s_slverr_i_reg;
  output m_axi_mm2s_rready;
  output mm2s_decerr_i;
  output mm2s_interr_i;
  output mm2s_slverr_i;
  output [31:0]m_axi_mm2s_araddr;
  output [4:0]m_axi_mm2s_arlen;
  output [31:0]m_axis_mm2s_tdata;
  output [3:0]m_axis_mm2s_tkeep;
  input out;
  input m_axi_mm2s_aclk;
  input \GNE_SYNC_RESET.halt_i_reg ;
  input p_4_out;
  input p_2_out;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  input m_axis_mm2s_tready;
  input [1:0]m_axi_mm2s_rresp;
  input p_5_out;
  input m_axi_mm2s_arready;
  input [31:0]m_axi_mm2s_rdata;
  input [40:0]D;

  wire [40:0]D;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \GNE_SYNC_RESET.halt_i_reg ;
  wire I_ADDR_CNTL_n_7;
  wire I_CMD_STATUS_n_10;
  wire I_CMD_STATUS_n_11;
  wire I_CMD_STATUS_n_12;
  wire I_CMD_STATUS_n_13;
  wire I_CMD_STATUS_n_14;
  wire I_CMD_STATUS_n_15;
  wire I_CMD_STATUS_n_16;
  wire I_CMD_STATUS_n_17;
  wire I_CMD_STATUS_n_18;
  wire I_CMD_STATUS_n_19;
  wire I_CMD_STATUS_n_20;
  wire I_CMD_STATUS_n_21;
  wire I_CMD_STATUS_n_22;
  wire I_CMD_STATUS_n_23;
  wire I_CMD_STATUS_n_24;
  wire I_CMD_STATUS_n_25;
  wire I_CMD_STATUS_n_26;
  wire I_CMD_STATUS_n_27;
  wire I_CMD_STATUS_n_28;
  wire I_CMD_STATUS_n_29;
  wire I_CMD_STATUS_n_30;
  wire I_CMD_STATUS_n_31;
  wire I_CMD_STATUS_n_32;
  wire I_CMD_STATUS_n_33;
  wire I_CMD_STATUS_n_34;
  wire I_CMD_STATUS_n_35;
  wire I_CMD_STATUS_n_36;
  wire I_CMD_STATUS_n_37;
  wire I_CMD_STATUS_n_38;
  wire I_CMD_STATUS_n_39;
  wire I_CMD_STATUS_n_40;
  wire I_CMD_STATUS_n_41;
  wire I_CMD_STATUS_n_42;
  wire I_CMD_STATUS_n_43;
  wire I_CMD_STATUS_n_45;
  wire I_CMD_STATUS_n_46;
  wire I_CMD_STATUS_n_47;
  wire I_CMD_STATUS_n_48;
  wire I_CMD_STATUS_n_49;
  wire I_CMD_STATUS_n_5;
  wire I_CMD_STATUS_n_50;
  wire I_CMD_STATUS_n_51;
  wire I_CMD_STATUS_n_6;
  wire I_MSTR_SCC_n_4;
  wire I_MSTR_SCC_n_43;
  wire I_RD_DATA_CNTL_n_11;
  wire I_RD_DATA_CNTL_n_12;
  wire I_RD_DATA_CNTL_n_13;
  wire I_RD_DATA_CNTL_n_15;
  wire I_RD_DATA_CNTL_n_24;
  wire I_RD_DATA_CNTL_n_25;
  wire I_RD_DATA_CNTL_n_9;
  wire I_RD_STATUS_CNTLR_n_5;
  wire I_RESET_n_4;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]m_axi_mm2s_arburst;
  wire [4:0]m_axi_mm2s_arlen;
  wire m_axi_mm2s_arready;
  wire [0:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [31:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire [31:0]m_axis_mm2s_tdata;
  wire [3:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_decerr_i;
  wire mm2s_err;
  wire mm2s_halt_cmplt;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire mm2s_slverr_i_reg;
  wire out;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_2_out;
  wire p_4_out;
  wire p_4_out_0;
  wire p_5_out;
  wire sig_addr2data_addr_posted;
  wire sig_addr2rsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_reg_empty;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_valid;
  wire sig_dqual_reg_empty;
  wire sig_halt_reg_dly2;
  wire sig_halt_reg_dly3;
  wire [31:2]sig_mstr2addr_addr;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_eof;
  wire [3:1]sig_mstr2data_last_strb;
  wire [3:0]sig_mstr2data_len;
  wire [1:0]sig_mstr2data_saddr_lsb;
  wire sig_next_burst;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_reset_reg;
  wire sig_rsc2data_ready;
  wire [6:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_rst2all_stop_request;
  wire sig_slast_with_stop;
  wire [3:3]sig_sstrb_stop_mask;
  wire [3:0]sig_sstrb_with_stop;
  wire sig_stat2rsc_status_ready;
  wire [3:0]sig_strb_skid_mux_out;
  wire [3:0]sig_strb_skid_reg;
  wire sig_stream_rst;
  wire sm_scc_sm_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_skid_buf \ENABLE_AXIS_SKID.I_MM2S_SKID_BUF 
       (.D(sig_sstrb_with_stop),
        .Q(sig_strb_skid_reg),
        .SR(sig_stream_rst),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .out(p_0_in5_in),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_halt_reg_dly2(sig_halt_reg_dly2),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_halt_reg_dly3_reg(I_RD_DATA_CNTL_n_15),
        .sig_init_reg_reg(I_RD_DATA_CNTL_n_11),
        .sig_init_reg_reg_0(I_CMD_STATUS_n_10),
        .sig_m_valid_out_reg_0(p_0_in2_in),
        .sig_next_calc_error_reg_reg(I_RD_DATA_CNTL_n_13),
        .sig_next_eof_reg_reg(p_4_out_0),
        .sig_reset_reg(sig_reset_reg),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .\sig_sstrb_stop_mask_reg[3]_0 (I_RD_DATA_CNTL_n_25),
        .\sig_sstrb_stop_mask_reg[3]_1 (I_RD_DATA_CNTL_n_12),
        .\sig_strb_skid_reg_reg[3]_0 (sig_strb_skid_mux_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_addr_cntl I_ADDR_CNTL
       (.FIFO_Full_reg(I_ADDR_CNTL_n_7),
        .SR(sig_stream_rst),
        .in({mm2s_err,sig_mstr2addr_burst,I_MSTR_SCC_n_4,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_saddr_lsb}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
        .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .out(sig_addr2data_addr_posted),
        .sig_addr2rsc_calc_error(sig_addr2rsc_calc_error),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(I_CMD_STATUS_n_5),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_init_done(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_cmd_status I_CMD_STATUS
       (.D(D),
        .Q({I_CMD_STATUS_n_11,I_CMD_STATUS_n_12,I_CMD_STATUS_n_13,I_CMD_STATUS_n_14,I_CMD_STATUS_n_15,I_CMD_STATUS_n_16,I_CMD_STATUS_n_17,I_CMD_STATUS_n_18,I_CMD_STATUS_n_19,I_CMD_STATUS_n_20,I_CMD_STATUS_n_21,I_CMD_STATUS_n_22,I_CMD_STATUS_n_23,I_CMD_STATUS_n_24,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,I_CMD_STATUS_n_40,I_CMD_STATUS_n_41,I_CMD_STATUS_n_42,I_CMD_STATUS_n_43,sig_next_burst,I_CMD_STATUS_n_45,I_CMD_STATUS_n_46,I_CMD_STATUS_n_47,I_CMD_STATUS_n_48,I_CMD_STATUS_n_49,I_CMD_STATUS_n_50,I_CMD_STATUS_n_51}),
        .SR(sig_stream_rst),
        .\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] (\USE_SINGLE_REG.sig_regfifo_dout_reg_reg[0] ),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .mm2s_slverr_i_reg(mm2s_slverr_i_reg),
        .p_2_out(p_2_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_reg_empty(sig_cmd_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_init_done(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_CMD_STATUS_n_5),
        .sig_init_done_reg_0(I_CMD_STATUS_n_6),
        .sig_m_valid_out_reg(I_CMD_STATUS_n_10),
        .sig_reset_reg(sig_reset_reg),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready),
        .sm_scc_sm_ready(sm_scc_sm_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_scc I_MSTR_SCC
       (.Q({I_CMD_STATUS_n_11,I_CMD_STATUS_n_12,I_CMD_STATUS_n_13,I_CMD_STATUS_n_14,I_CMD_STATUS_n_15,I_CMD_STATUS_n_16,I_CMD_STATUS_n_17,I_CMD_STATUS_n_18,I_CMD_STATUS_n_19,I_CMD_STATUS_n_20,I_CMD_STATUS_n_21,I_CMD_STATUS_n_22,I_CMD_STATUS_n_23,I_CMD_STATUS_n_24,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,I_CMD_STATUS_n_40,I_CMD_STATUS_n_41,I_CMD_STATUS_n_42,I_CMD_STATUS_n_43,sig_next_burst,I_CMD_STATUS_n_45,I_CMD_STATUS_n_46,I_CMD_STATUS_n_47,I_CMD_STATUS_n_48,I_CMD_STATUS_n_49,I_CMD_STATUS_n_50,I_CMD_STATUS_n_51}),
        .SR(sig_stream_rst),
        .in({mm2s_err,sig_mstr2addr_burst,I_MSTR_SCC_n_4,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_saddr_lsb}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_cmd2addr_valid_reg_0(I_ADDR_CNTL_n_7),
        .sig_cmd2data_valid_reg_0(I_RD_DATA_CNTL_n_9),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_reg_empty(sig_cmd_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_eof_reg_reg({sig_mstr2data_eof,sig_mstr2data_last_strb[3],I_MSTR_SCC_n_43,sig_mstr2data_last_strb[1]}),
        .sm_scc_sm_ready(sm_scc_sm_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_rddata_cntl I_RD_DATA_CNTL
       (.D(sig_sstrb_with_stop),
        .FIFO_Full_reg(I_RD_DATA_CNTL_n_9),
        .Q(sig_strb_skid_reg),
        .SR(sig_stream_rst),
        .in({mm2s_err,sig_mstr2data_eof,sig_mstr2data_last_strb[3],I_MSTR_SCC_n_43,sig_mstr2data_last_strb[1],I_MSTR_SCC_n_4,sig_mstr2data_len}),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .out(p_0_in5_in),
        .sig_addr2rsc_calc_error(sig_addr2rsc_calc_error),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(I_CMD_STATUS_n_6),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_data2rsc_decerr(sig_data2rsc_decerr),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_halt_cmplt_reg(I_RD_DATA_CNTL_n_24),
        .sig_halt_reg_dly2(sig_halt_reg_dly2),
        .sig_halt_reg_dly3(sig_halt_reg_dly3),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_m_valid_dup_reg(p_0_in2_in),
        .sig_m_valid_out_reg(I_RD_DATA_CNTL_n_15),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_posted_to_axi_reg(sig_addr2data_addr_posted),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_reg_full_reg(I_RD_STATUS_CNTLR_n_5),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_reset_reg(sig_reset_reg),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status({sig_rsc2stat_status[6],sig_rsc2stat_status[4]}),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_h_halt_reg_reg(I_RESET_n_4),
        .sig_s_ready_dup_reg(I_RD_DATA_CNTL_n_11),
        .sig_s_ready_dup_reg_0(I_RD_DATA_CNTL_n_12),
        .sig_s_ready_dup_reg_1(I_RD_DATA_CNTL_n_13),
        .sig_s_ready_out_reg(p_4_out_0),
        .sig_slast_with_stop(sig_slast_with_stop),
        .sig_sstrb_stop_mask(sig_sstrb_stop_mask),
        .\sig_sstrb_stop_mask_reg[3] (I_RD_DATA_CNTL_n_25),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready),
        .\sig_strb_reg_out_reg[3] (sig_strb_skid_mux_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_rd_status_cntl I_RD_STATUS_CNTLR
       (.\INFERRED_GEN.cnt_i_reg[2] (I_RD_STATUS_CNTLR_n_5),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2rsc_decerr(sig_data2rsc_decerr),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_rd_sts_interr_reg0(sig_rd_sts_interr_reg0),
        .sig_rd_sts_slverr_reg0(sig_rd_sts_slverr_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_reset I_RESET
       (.\GNE_SYNC_RESET.halt_i_reg (\GNE_SYNC_RESET.halt_i_reg ),
        .SR(sig_stream_rst),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .out(out),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_halt_reg_reg(I_RESET_n_4),
        .sig_halt_reg_reg_0(I_RD_DATA_CNTL_n_24),
        .sig_rst2all_stop_request(sig_rst2all_stop_request));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_rd_status_cntl
   (sig_rsc2stat_status,
    sig_rsc2stat_status_valid,
    sig_rsc2data_ready,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_rd_sts_interr_reg0,
    m_axi_mm2s_aclk,
    sig_rd_sts_slverr_reg0,
    sig_data2rsc_decerr,
    sig_stat2rsc_status_ready,
    sig_dqual_reg_empty,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_data2rsc_valid);
  output [2:0]sig_rsc2stat_status;
  output sig_rsc2stat_status_valid;
  output sig_rsc2data_ready;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  input sig_rd_sts_interr_reg0;
  input m_axi_mm2s_aclk;
  input sig_rd_sts_slverr_reg0;
  input sig_data2rsc_decerr;
  input sig_stat2rsc_status_ready;
  input sig_dqual_reg_empty;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_data2rsc_valid;

  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire m_axi_mm2s_aclk;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_valid;
  wire sig_dqual_reg_empty;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rsc2data_ready;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  LUT3 #(
    .INIT(8'h2F)) 
    \INFERRED_GEN.cnt_i[2]_i_2__0 
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_stat2rsc_status_ready),
        .I2(sig_dqual_reg_empty),
        .O(\INFERRED_GEN.cnt_i_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_rsc2stat_status[1]),
        .I1(sig_data2rsc_decerr),
        .O(sig_rd_sts_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rsc2stat_status[1]),
        .R(sig_rd_sts_tag_reg0));
  LUT3 #(
    .INIT(8'h8F)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(sig_rsc2stat_status_valid),
        .I1(sig_stat2rsc_status_ready),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_interr_reg_i_2
       (.I0(sig_rsc2data_ready),
        .I1(sig_data2rsc_valid),
        .O(sig_push_rd_sts_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_rsc2stat_status[0]),
        .R(sig_rd_sts_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b0),
        .Q(sig_rsc2data_ready),
        .S(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b1),
        .Q(sig_rsc2stat_status_valid),
        .R(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status[2]),
        .R(sig_rd_sts_tag_reg0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_rddata_cntl
   (sig_data2rsc_valid,
    sig_dqual_reg_empty,
    sig_data2addr_stop_req,
    sig_halt_reg_dly2,
    sig_halt_reg_dly3,
    sig_data2rsc_decerr,
    sig_init_done,
    sig_rd_sts_interr_reg0,
    sig_rd_sts_slverr_reg0,
    FIFO_Full_reg,
    m_axi_mm2s_rready,
    sig_s_ready_dup_reg,
    sig_s_ready_dup_reg_0,
    sig_s_ready_dup_reg_1,
    sig_slast_with_stop,
    sig_m_valid_out_reg,
    \sig_strb_reg_out_reg[3] ,
    D,
    sig_halt_cmplt_reg,
    \sig_sstrb_stop_mask_reg[3] ,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_s_h_halt_reg_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_rsc2stat_status,
    sig_mstr2data_cmd_valid,
    sig_rd_sts_reg_full_reg,
    m_axi_mm2s_rlast,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_s_ready_out_reg,
    m_axi_mm2s_rvalid,
    m_axis_mm2s_tready,
    sig_reset_reg,
    sig_m_valid_dup_reg,
    out,
    sig_sstrb_stop_mask,
    m_axi_mm2s_rresp,
    sig_rsc2data_ready,
    Q,
    sig_addr_reg_empty,
    sig_addr2rsc_calc_error,
    mm2s_halt_cmplt,
    in,
    sig_posted_to_axi_reg);
  output sig_data2rsc_valid;
  output sig_dqual_reg_empty;
  output sig_data2addr_stop_req;
  output sig_halt_reg_dly2;
  output sig_halt_reg_dly3;
  output sig_data2rsc_decerr;
  output sig_init_done;
  output sig_rd_sts_interr_reg0;
  output sig_rd_sts_slverr_reg0;
  output FIFO_Full_reg;
  output m_axi_mm2s_rready;
  output sig_s_ready_dup_reg;
  output sig_s_ready_dup_reg_0;
  output sig_s_ready_dup_reg_1;
  output sig_slast_with_stop;
  output sig_m_valid_out_reg;
  output [3:0]\sig_strb_reg_out_reg[3] ;
  output [3:0]D;
  output sig_halt_cmplt_reg;
  output \sig_sstrb_stop_mask_reg[3] ;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  input sig_s_h_halt_reg_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [1:0]sig_rsc2stat_status;
  input sig_mstr2data_cmd_valid;
  input sig_rd_sts_reg_full_reg;
  input m_axi_mm2s_rlast;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_s_ready_out_reg;
  input m_axi_mm2s_rvalid;
  input m_axis_mm2s_tready;
  input sig_reset_reg;
  input sig_m_valid_dup_reg;
  input out;
  input [0:0]sig_sstrb_stop_mask;
  input [1:0]m_axi_mm2s_rresp;
  input sig_rsc2data_ready;
  input [3:0]Q;
  input sig_addr_reg_empty;
  input sig_addr2rsc_calc_error;
  input mm2s_halt_cmplt;
  input [9:0]in;
  input sig_posted_to_axi_reg;

  wire [3:0]D;
  wire FIFO_Full_reg;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_1 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_25 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_26 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [9:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire m_axi_mm2s_rready_INST_0_i_1_n_0;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axis_mm2s_tready;
  wire mm2s_halt_cmplt;
  wire out;
  wire sig_addr2rsc_calc_error;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_addr_reg_empty;
  wire sig_clr_dqual_reg;
  wire sig_cmd_cmplt_last_dbeat;
  wire [26:14]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_slverr_reg0;
  wire sig_coelsc_tag_reg0;
  wire sig_data2addr_stop_req;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_slverr;
  wire sig_data2rsc_valid;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[3]_i_2_n_0 ;
  wire \sig_dbeat_cntr[4]_i_2_n_0 ;
  wire \sig_dbeat_cntr[5]_i_2_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire \sig_dbeat_cntr[7]_i_4_n_0 ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_first_dbeat_reg_n_0;
  wire sig_halt_cmplt_i_2_n_0;
  wire sig_halt_cmplt_reg;
  wire sig_halt_reg_dly1;
  wire sig_halt_reg_dly2;
  wire sig_halt_reg_dly3;
  wire sig_init_done;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_i_5_n_0;
  wire sig_last_dbeat_reg_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_last_skid_reg_i_2_n_0;
  wire sig_ld_new_cmd_reg;
  wire sig_m_valid_dup_reg;
  wire sig_m_valid_out_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_cmd_cmplt_reg_i_4_n_0;
  wire sig_next_eof_reg;
  wire [3:0]sig_next_last_strb_reg;
  wire [3:0]sig_next_strt_strb_reg;
  wire sig_posted_to_axi_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_dqual_reg;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_reg_full_reg;
  wire sig_rd_sts_slverr_reg0;
  wire sig_reset_reg;
  wire sig_rsc2data_ready;
  wire [1:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_s_h_halt_reg_reg;
  wire sig_s_ready_dup_reg;
  wire sig_s_ready_dup_reg_0;
  wire sig_s_ready_dup_reg_1;
  wire sig_s_ready_out_reg;
  wire sig_slast_with_stop;
  wire [0:0]sig_sstrb_stop_mask;
  wire \sig_sstrb_stop_mask_reg[3] ;
  wire sig_stat2rsc_status_ready;
  wire \sig_strb_reg_out[3]_i_2_n_0 ;
  wire [3:0]\sig_strb_reg_out_reg[3] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_fifo__parameterized2 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D({\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 }),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .FIFO_Full_reg(FIFO_Full_reg),
        .Q(sig_dbeat_cntr),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .out({sig_cmd_fifo_data_out[26:25],sig_cmd_fifo_data_out[23],sig_cmd_fifo_data_out[21:14]}),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[1] (m_axi_mm2s_rready_INST_0_i_1_n_0),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .\sig_dbeat_cntr_reg[1] (sig_last_dbeat_i_5_n_0),
        .\sig_dbeat_cntr_reg[1]_0 (\sig_dbeat_cntr[3]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr[4]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr[5]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[4] (sig_last_dbeat_i_4_n_0),
        .\sig_dbeat_cntr_reg[4]_0 (\sig_dbeat_cntr[7]_i_4_n_0 ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr[7]_i_3_n_0 ),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty),
        .sig_first_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_1 ),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_n_0),
        .sig_init_done(sig_init_done),
        .sig_last_dbeat_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_26 ),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_n_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_25 ),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_eof_reg_reg(sig_clr_dqual_reg),
        .sig_push_dqual_reg(sig_push_dqual_reg),
        .sig_rd_sts_reg_full_reg(sig_rd_sts_reg_full_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_ready_out_reg(sig_next_cmd_cmplt_reg_i_4_n_0),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT6 #(
    .INIT(64'h0000444000000000)) 
    m_axi_mm2s_rready_INST_0
       (.I0(sig_data2rsc_valid),
        .I1(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .I2(sig_s_ready_out_reg),
        .I3(sig_data2addr_stop_req),
        .I4(sig_next_calc_error_reg),
        .I5(sig_dqual_reg_full),
        .O(m_axi_mm2s_rready));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    m_axi_mm2s_rready_INST_0_i_1
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[2]),
        .O(m_axi_mm2s_rready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF08F0EF0)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_posted_to_axi_reg),
        .I3(sig_last_mmap_dbeat_reg),
        .I4(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF4D2B4D0)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(sig_posted_to_axi_reg),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_addr_posted_cntr[2]),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFD4000)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(sig_posted_to_axi_reg),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_addr_posted_cntr[2]),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(m_axi_mm2s_rresp[0]),
        .I1(m_axi_mm2s_rresp[1]),
        .I2(m_axi_mm2s_rvalid),
        .I3(sig_data2rsc_decerr),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_data2rsc_decerr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_data2rsc_calc_err),
        .I1(sig_next_calc_error_reg),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_data2rsc_calc_err),
        .R(sig_coelsc_tag_reg0));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    sig_coelsc_reg_full_i_1
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_rsc2data_ready),
        .I3(sig_data2rsc_valid),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_coelsc_tag_reg0));
  LUT6 #(
    .INIT(64'h88888888FFFFFFF8)) 
    sig_coelsc_reg_full_i_2
       (.I0(sig_next_calc_error_reg),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_addr_posted_cntr[2]),
        .I5(sig_next_cmd_cmplt_reg_i_4_n_0),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    sig_coelsc_reg_full_i_3
       (.I0(m_axi_mm2s_rlast),
        .I1(sig_next_cmd_cmplt_reg),
        .I2(sig_next_calc_error_reg),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_data2rsc_valid),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(m_axi_mm2s_rresp[0]),
        .I1(m_axi_mm2s_rresp[1]),
        .I2(m_axi_mm2s_rvalid),
        .I3(sig_data2rsc_slverr),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_data2rsc_slverr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sig_dbeat_cntr[3]_i_2 
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[2]),
        .O(\sig_dbeat_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[4]_i_2 
       (.I0(sig_dbeat_cntr[2]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[1]),
        .I3(sig_dbeat_cntr[3]),
        .O(\sig_dbeat_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[5]_i_2 
       (.I0(sig_dbeat_cntr[3]),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[2]),
        .I4(sig_dbeat_cntr[4]),
        .O(\sig_dbeat_cntr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDDF)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .I1(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I2(sig_dbeat_cntr[7]),
        .I3(\sig_dbeat_cntr[7]_i_4_n_0 ),
        .I4(sig_dbeat_cntr[6]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_dbeat_cntr[7]_i_4 
       (.I0(sig_dbeat_cntr[4]),
        .I1(sig_dbeat_cntr[2]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[1]),
        .I4(sig_dbeat_cntr[3]),
        .I5(sig_dbeat_cntr[5]),
        .O(\sig_dbeat_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ),
        .Q(sig_dbeat_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ),
        .Q(sig_dbeat_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ),
        .Q(sig_dbeat_cntr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ),
        .Q(sig_dbeat_cntr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ),
        .Q(sig_dbeat_cntr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_7 ),
        .Q(sig_dbeat_cntr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .Q(sig_dbeat_cntr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_24 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .Q(sig_dbeat_cntr[7]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_push_dqual_reg),
        .Q(sig_dqual_reg_full),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_dbeat_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_1 ),
        .Q(sig_first_dbeat_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    sig_halt_cmplt_i_1
       (.I0(sig_halt_cmplt_i_2_n_0),
        .I1(sig_data2addr_stop_req),
        .I2(sig_halt_reg_dly3),
        .I3(sig_addr_reg_empty),
        .I4(sig_addr2rsc_calc_error),
        .I5(mm2s_halt_cmplt),
        .O(sig_halt_cmplt_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    sig_halt_cmplt_i_2
       (.I0(sig_next_calc_error_reg),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[1]),
        .O(sig_halt_cmplt_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly1_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_data2addr_stop_req),
        .Q(sig_halt_reg_dly1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly2_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_dly1),
        .Q(sig_halt_reg_dly2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_dly3_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_dly2),
        .Q(sig_halt_reg_dly3),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_s_h_halt_reg_reg),
        .Q(sig_data2addr_stop_req),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_last_dbeat_i_4
       (.I0(sig_dbeat_cntr[4]),
        .I1(sig_dbeat_cntr[5]),
        .I2(sig_dbeat_cntr[2]),
        .I3(sig_dbeat_cntr[3]),
        .I4(sig_dbeat_cntr[7]),
        .I5(sig_dbeat_cntr[6]),
        .O(sig_last_dbeat_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_last_dbeat_i_5
       (.I0(sig_dbeat_cntr[1]),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_dbeat_cntr[0]),
        .O(sig_last_dbeat_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_26 ),
        .Q(sig_last_dbeat_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(m_axi_mm2s_rlast),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_next_cmd_cmplt_reg_i_4_n_0),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    sig_last_skid_reg_i_1
       (.I0(sig_data2addr_stop_req),
        .I1(sig_last_skid_reg_i_2_n_0),
        .I2(sig_next_eof_reg),
        .I3(m_axi_mm2s_rlast),
        .I4(sig_sstrb_stop_mask),
        .O(sig_slast_with_stop));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hDDDDDDDF)) 
    sig_last_skid_reg_i_2
       (.I0(sig_dqual_reg_full),
        .I1(sig_next_calc_error_reg),
        .I2(sig_addr_posted_cntr[2]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_addr_posted_cntr[1]),
        .O(sig_last_skid_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_25 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    sig_m_valid_dup_i_5
       (.I0(sig_halt_reg_dly3),
        .I1(sig_halt_reg_dly2),
        .O(sig_m_valid_out_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[26]),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFFFFF)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_s_ready_out_reg),
        .I1(sig_data2addr_stop_req),
        .I2(sig_next_calc_error_reg),
        .I3(sig_dqual_reg_full),
        .I4(m_axi_mm2s_rvalid),
        .I5(sig_data2rsc_valid),
        .O(sig_next_cmd_cmplt_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[25]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_eof_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[23]),
        .Q(sig_next_eof_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[18]),
        .Q(sig_next_last_strb_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[19]),
        .Q(sig_next_last_strb_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[20]),
        .Q(sig_next_last_strb_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_last_strb_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[21]),
        .Q(sig_next_last_strb_reg[3]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[14]),
        .Q(sig_next_strt_strb_reg[0]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[15]),
        .Q(sig_next_strt_strb_reg[1]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[16]),
        .Q(sig_next_strt_strb_reg[2]),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_strt_strb_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[17]),
        .Q(sig_next_strt_strb_reg[3]),
        .R(sig_clr_dqual_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_3
       (.I0(sig_data2rsc_calc_err),
        .I1(sig_rsc2stat_status[0]),
        .O(sig_rd_sts_interr_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_data2rsc_slverr),
        .I1(sig_rsc2stat_status[1]),
        .O(sig_rd_sts_slverr_reg0));
  LUT6 #(
    .INIT(64'hAAAAA8AAA8A8A8A8)) 
    sig_s_ready_dup_i_1
       (.I0(sig_s_ready_dup_reg_0),
        .I1(m_axis_mm2s_tready),
        .I2(sig_reset_reg),
        .I3(sig_m_valid_dup_reg),
        .I4(sig_s_ready_dup_reg_1),
        .I5(out),
        .O(sig_s_ready_dup_reg));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    sig_s_ready_dup_i_2
       (.I0(sig_sstrb_stop_mask),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_halt_reg_dly2),
        .I3(sig_halt_reg_dly3),
        .O(sig_s_ready_dup_reg_0));
  LUT6 #(
    .INIT(64'hDFDFDFDFFFDFFFFF)) 
    sig_s_ready_dup_i_3
       (.I0(m_axi_mm2s_rready_INST_0_i_1_n_0),
        .I1(sig_next_calc_error_reg),
        .I2(sig_dqual_reg_full),
        .I3(sig_data2rsc_valid),
        .I4(m_axi_mm2s_rvalid),
        .I5(sig_data2addr_stop_req),
        .O(sig_s_ready_dup_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \sig_sstrb_stop_mask[3]_i_1 
       (.I0(sig_sstrb_stop_mask),
        .I1(sig_halt_reg_dly2),
        .I2(sig_halt_reg_dly3),
        .O(\sig_sstrb_stop_mask_reg[3] ));
  LUT6 #(
    .INIT(64'hFCACFCFCFCACACAC)) 
    \sig_strb_reg_out[0]_i_1 
       (.I0(\sig_strb_reg_out[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(out),
        .I3(sig_next_strt_strb_reg[0]),
        .I4(sig_first_dbeat_reg_n_0),
        .I5(sig_next_last_strb_reg[0]),
        .O(\sig_strb_reg_out_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFCACFCFCFCACACAC)) 
    \sig_strb_reg_out[1]_i_1 
       (.I0(\sig_strb_reg_out[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(out),
        .I3(sig_next_strt_strb_reg[1]),
        .I4(sig_first_dbeat_reg_n_0),
        .I5(sig_next_last_strb_reg[1]),
        .O(\sig_strb_reg_out_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFCACFCFCFCACACAC)) 
    \sig_strb_reg_out[2]_i_1 
       (.I0(\sig_strb_reg_out[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(out),
        .I3(sig_next_strt_strb_reg[2]),
        .I4(sig_first_dbeat_reg_n_0),
        .I5(sig_next_last_strb_reg[2]),
        .O(\sig_strb_reg_out_reg[3] [2]));
  LUT6 #(
    .INIT(64'hFCACFCFCFCACACAC)) 
    \sig_strb_reg_out[3]_i_1 
       (.I0(\sig_strb_reg_out[3]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(out),
        .I3(sig_next_strt_strb_reg[3]),
        .I4(sig_first_dbeat_reg_n_0),
        .I5(sig_next_last_strb_reg[3]),
        .O(\sig_strb_reg_out_reg[3] [3]));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \sig_strb_reg_out[3]_i_2 
       (.I0(sig_data2addr_stop_req),
        .I1(sig_last_dbeat_reg_n_0),
        .I2(sig_first_dbeat_reg_n_0),
        .I3(sig_sstrb_stop_mask),
        .O(\sig_strb_reg_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFAFCFF)) 
    \sig_strb_skid_reg[0]_i_1 
       (.I0(sig_next_last_strb_reg[0]),
        .I1(sig_next_strt_strb_reg[0]),
        .I2(sig_sstrb_stop_mask),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_data2addr_stop_req),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFAFCFF)) 
    \sig_strb_skid_reg[1]_i_1 
       (.I0(sig_next_last_strb_reg[1]),
        .I1(sig_next_strt_strb_reg[1]),
        .I2(sig_sstrb_stop_mask),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_data2addr_stop_req),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFAFCFF)) 
    \sig_strb_skid_reg[2]_i_1 
       (.I0(sig_next_last_strb_reg[2]),
        .I1(sig_next_strt_strb_reg[2]),
        .I2(sig_sstrb_stop_mask),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_data2addr_stop_req),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCFAFCFF)) 
    \sig_strb_skid_reg[3]_i_1 
       (.I0(sig_next_last_strb_reg[3]),
        .I1(sig_next_strt_strb_reg[3]),
        .I2(sig_sstrb_stop_mask),
        .I3(sig_first_dbeat_reg_n_0),
        .I4(sig_last_dbeat_reg_n_0),
        .I5(sig_data2addr_stop_req),
        .O(D[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_reset
   (sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    mm2s_halt_cmplt,
    SR,
    sig_rst2all_stop_request,
    sig_halt_reg_reg,
    out,
    m_axi_mm2s_aclk,
    sig_halt_reg_reg_0,
    \GNE_SYNC_RESET.halt_i_reg ,
    sig_data2addr_stop_req);
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output mm2s_halt_cmplt;
  output [0:0]SR;
  output sig_rst2all_stop_request;
  output sig_halt_reg_reg;
  input out;
  input m_axi_mm2s_aclk;
  input sig_halt_reg_reg_0;
  input \GNE_SYNC_RESET.halt_i_reg ;
  input sig_data2addr_stop_req;

  wire \GNE_SYNC_RESET.halt_i_reg ;
  wire [0:0]SR;
  wire m_axi_mm2s_aclk;
  wire mm2s_halt_cmplt;
  wire out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_halt_reg_reg;
  wire sig_halt_reg_reg_0;
  wire sig_rst2all_stop_request;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_sm_scc_state[2]_i_1 
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(out),
        .Q(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_halt_cmplt_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_halt_reg_reg_0),
        .Q(mm2s_halt_cmplt),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    sig_halt_reg_i_1
       (.I0(sig_rst2all_stop_request),
        .I1(sig_data2addr_stop_req),
        .O(sig_halt_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_s_h_halt_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.halt_i_reg ),
        .Q(sig_rst2all_stop_request),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_scc
   (sm_scc_sm_ready,
    sig_cmd_reg_empty,
    in,
    sig_next_eof_reg_reg,
    sig_mstr2data_cmd_valid,
    sig_mstr2addr_cmd_valid,
    SR,
    m_axi_mm2s_aclk,
    Q,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cmd2data_valid_reg_0,
    sig_cmd2addr_valid_reg_0,
    sig_cmd2mstr_cmd_valid);
  output sm_scc_sm_ready;
  output sig_cmd_reg_empty;
  output [38:0]in;
  output [3:0]sig_next_eof_reg_reg;
  output sig_mstr2data_cmd_valid;
  output sig_mstr2addr_cmd_valid;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input [40:0]Q;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_cmd2data_valid_reg_0;
  input sig_cmd2addr_valid_reg_0;
  input sig_cmd2mstr_cmd_valid;

  wire \FSM_sequential_sm_scc_state[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_scc_state[0]_i_2_n_0 ;
  wire \FSM_sequential_sm_scc_state[1]_i_1_n_0 ;
  wire \FSM_sequential_sm_scc_state[2]_i_2_n_0 ;
  wire \INFERRED_GEN.data_reg[3][19]_srl4_i_2_n_0 ;
  wire \INFERRED_GEN.data_reg[3][20]_srl4_i_2_n_0 ;
  wire [40:0]Q;
  wire [0:0]SR;
  wire [38:0]in;
  wire m_axi_mm2s_aclk;
  wire sig_btt_is_zero__0;
  wire sig_btt_is_zero_reg;
  wire sig_btt_is_zero_reg_i_4_n_0;
  wire [1:0]sig_btt_len_residue;
  wire sig_btt_ms_bit_value;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2addr_valid_reg_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2data_valid_reg_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_btt_reg0;
  wire sig_cmd_reg_empty;
  wire sig_cmd_reg_full;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire [3:0]sig_len_btt_slice;
  wire sig_load_input_cmd;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire [3:0]sig_next_eof_reg_reg;
  wire sm_pop_input_cmd;
  wire sm_pop_input_cmd_ns;
  wire sm_scc_sm_ready;
  wire sm_scc_sm_ready_ns;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_scc_state;
  wire sm_set_error_ns;

  LUT6 #(
    .INIT(64'h0000555555551510)) 
    \FSM_sequential_sm_scc_state[0]_i_1 
       (.I0(\FSM_sequential_sm_scc_state[0]_i_2_n_0 ),
        .I1(sig_cmd_reg_full),
        .I2(sm_scc_state[0]),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(sm_scc_state[2]),
        .I5(sm_scc_state[1]),
        .O(\FSM_sequential_sm_scc_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF22222)) 
    \FSM_sequential_sm_scc_state[0]_i_2 
       (.I0(sm_scc_state[1]),
        .I1(sig_btt_is_zero_reg),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(sig_mstr2data_cmd_valid),
        .I4(sm_scc_state[2]),
        .I5(sm_scc_state[0]),
        .O(\FSM_sequential_sm_scc_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h54445040)) 
    \FSM_sequential_sm_scc_state[1]_i_1 
       (.I0(sm_scc_state[2]),
        .I1(sm_scc_state[1]),
        .I2(sm_scc_state[0]),
        .I3(sig_cmd_reg_full),
        .I4(sig_btt_is_zero_reg),
        .O(\FSM_sequential_sm_scc_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0026)) 
    \FSM_sequential_sm_scc_state[2]_i_2 
       (.I0(sm_scc_state[2]),
        .I1(sm_scc_state[1]),
        .I2(sig_btt_is_zero_reg),
        .I3(sm_scc_state[0]),
        .O(\FSM_sequential_sm_scc_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "init:000,pop_recover:101,get_nxt_cmd:001,chk_and_calc:010,push_to_axi:100,error_trap:011" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_scc_state_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_sm_scc_state[0]_i_1_n_0 ),
        .Q(sm_scc_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "init:000,pop_recover:101,get_nxt_cmd:001,chk_and_calc:010,push_to_axi:100,error_trap:011" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_scc_state_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_sm_scc_state[1]_i_1_n_0 ),
        .Q(sm_scc_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "init:000,pop_recover:101,get_nxt_cmd:001,chk_and_calc:010,push_to_axi:100,error_trap:011" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_scc_state_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_sm_scc_state[2]_i_2_n_0 ),
        .Q(sm_scc_state[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \INFERRED_GEN.data_reg[3][10]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_btt_len_residue[1]),
        .I2(sig_btt_len_residue[0]),
        .O(sig_next_eof_reg_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \INFERRED_GEN.data_reg[3][11]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_btt_len_residue[0]),
        .I2(sig_btt_len_residue[1]),
        .O(sig_next_eof_reg_reg[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \INFERRED_GEN.data_reg[3][18]_srl4_i_1 
       (.I0(sig_btt_len_residue[1]),
        .I1(sig_btt_len_residue[0]),
        .I2(sig_len_btt_slice[3]),
        .I3(\INFERRED_GEN.data_reg[3][19]_srl4_i_2_n_0 ),
        .I4(sig_btt_is_zero_reg),
        .I5(sig_btt_ms_bit_value),
        .O(in[36]));
  LUT6 #(
    .INIT(64'hEEEAEEEAEEEEEEEB)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_len_btt_slice[3]),
        .I2(sig_btt_len_residue[1]),
        .I3(sig_btt_len_residue[0]),
        .I4(\INFERRED_GEN.data_reg[3][19]_srl4_i_2_n_0 ),
        .I5(sig_btt_is_zero_reg),
        .O(in[35]));
  LUT3 #(
    .INIT(8'hFE)) 
    \INFERRED_GEN.data_reg[3][19]_srl4_i_2 
       (.I0(sig_len_btt_slice[1]),
        .I1(sig_len_btt_slice[0]),
        .I2(sig_len_btt_slice[2]),
        .O(\INFERRED_GEN.data_reg[3][19]_srl4_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEEEEEEEBE)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_len_btt_slice[2]),
        .I2(\INFERRED_GEN.data_reg[3][20]_srl4_i_2_n_0 ),
        .I3(sig_len_btt_slice[1]),
        .I4(sig_len_btt_slice[0]),
        .I5(sig_btt_is_zero_reg),
        .O(in[34]));
  LUT2 #(
    .INIT(4'h1)) 
    \INFERRED_GEN.data_reg[3][20]_srl4_i_2 
       (.I0(sig_btt_len_residue[0]),
        .I1(sig_btt_len_residue[1]),
        .O(\INFERRED_GEN.data_reg[3][20]_srl4_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAEEEEEEEB)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_len_btt_slice[1]),
        .I2(sig_btt_len_residue[1]),
        .I3(sig_btt_len_residue[0]),
        .I4(sig_len_btt_slice[0]),
        .I5(sig_btt_is_zero_reg),
        .O(in[33]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEEEAEEEB)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_len_btt_slice[0]),
        .I2(sig_btt_len_residue[1]),
        .I3(sig_btt_len_residue[0]),
        .I4(sig_btt_is_zero_reg),
        .O(in[32]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \INFERRED_GEN.data_reg[3][9]_srl4_i_1 
       (.I0(sig_btt_ms_bit_value),
        .I1(sig_btt_len_residue[1]),
        .I2(sig_btt_len_residue[0]),
        .O(sig_next_eof_reg_reg[2]));
  LUT2 #(
    .INIT(4'hB)) 
    sig_btt_is_zero_reg_i_1
       (.I0(sm_pop_input_cmd),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_cmd_btt_reg0));
  LUT3 #(
    .INIT(8'h80)) 
    sig_btt_is_zero_reg_i_2
       (.I0(sig_cmd_reg_empty),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sm_scc_sm_ready),
        .O(sig_load_input_cmd));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_btt_is_zero_reg_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(sig_btt_is_zero_reg_i_4_n_0),
        .O(sig_btt_is_zero__0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sig_btt_is_zero_reg_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(sig_btt_is_zero_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_is_zero_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(sig_btt_is_zero__0),
        .Q(sig_btt_is_zero_reg),
        .R(sig_cmd_btt_reg0));
  LUT6 #(
    .INIT(64'hAAAA020000000000)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sm_scc_state[0]),
        .I2(sm_scc_state[2]),
        .I3(sm_scc_state[1]),
        .I4(sig_mstr2addr_cmd_valid),
        .I5(sig_cmd2addr_valid_reg_0),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_mstr2addr_cmd_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAA020000000000)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sm_scc_state[0]),
        .I2(sm_scc_state[2]),
        .I3(sm_scc_state[1]),
        .I4(sig_mstr2data_cmd_valid),
        .I5(sig_cmd2data_valid_reg_0),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_mstr2data_cmd_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[9]),
        .Q(in[0]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[19]),
        .Q(in[10]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[20]),
        .Q(in[11]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[21]),
        .Q(in[12]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[22]),
        .Q(in[13]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[23]),
        .Q(in[14]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[24]),
        .Q(in[15]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[25]),
        .Q(in[16]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[26]),
        .Q(in[17]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[27]),
        .Q(in[18]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[28]),
        .Q(in[19]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[10]),
        .Q(in[1]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[29]),
        .Q(in[20]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[30]),
        .Q(in[21]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[31]),
        .Q(in[22]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[32]),
        .Q(in[23]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[33]),
        .Q(in[24]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[34]),
        .Q(in[25]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[35]),
        .Q(in[26]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[36]),
        .Q(in[27]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[37]),
        .Q(in[28]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[38]),
        .Q(in[29]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[11]),
        .Q(in[2]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[39]),
        .Q(in[30]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[40]),
        .Q(in[31]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[12]),
        .Q(in[3]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[13]),
        .Q(in[4]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[14]),
        .Q(in[5]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[15]),
        .Q(in[6]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[16]),
        .Q(in[7]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[17]),
        .Q(in[8]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_addr_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[18]),
        .Q(in[9]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[0]),
        .Q(sig_btt_len_residue[0]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[1]),
        .Q(sig_btt_len_residue[1]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[2]),
        .Q(sig_len_btt_slice[0]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[3]),
        .Q(sig_len_btt_slice[1]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[4]),
        .Q(sig_len_btt_slice[2]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[5]),
        .Q(sig_len_btt_slice[3]),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_btt_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[6]),
        .Q(sig_btt_ms_bit_value),
        .R(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cmd_burst_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[7]),
        .Q(in[37]),
        .R(sig_cmd_btt_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_cmd_reg_empty_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(1'b0),
        .Q(sig_cmd_reg_empty),
        .S(sig_cmd_btt_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_reg_full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(sig_load_input_cmd),
        .Q(sig_cmd_reg_full),
        .R(sig_cmd_btt_reg0));
  FDRE sig_input_eof_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_load_input_cmd),
        .D(Q[8]),
        .Q(sig_next_eof_reg_reg[3]),
        .R(sig_cmd_btt_reg0));
  LUT5 #(
    .INIT(32'h00010000)) 
    sm_pop_input_cmd_i_1
       (.I0(sm_scc_state[0]),
        .I1(sm_scc_state[1]),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_mstr2addr_cmd_valid),
        .I4(sm_scc_state[2]),
        .O(sm_pop_input_cmd_ns));
  FDRE #(
    .INIT(1'b0)) 
    sm_pop_input_cmd_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sm_pop_input_cmd_ns),
        .Q(sm_pop_input_cmd),
        .R(SR));
  LUT4 #(
    .INIT(16'h5F5E)) 
    sm_scc_sm_ready_i_1
       (.I0(sm_scc_state[1]),
        .I1(sm_scc_state[0]),
        .I2(sm_scc_state[2]),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(sm_scc_sm_ready_ns));
  FDRE #(
    .INIT(1'b0)) 
    sm_scc_sm_ready_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sm_scc_sm_ready_ns),
        .Q(sm_scc_sm_ready),
        .R(SR));
  LUT4 #(
    .INIT(16'h5400)) 
    sm_set_error_i_1
       (.I0(sm_scc_state[2]),
        .I1(sm_scc_state[0]),
        .I2(sig_btt_is_zero_reg),
        .I3(sm_scc_state[1]),
        .O(sm_set_error_ns));
  FDRE #(
    .INIT(1'b0)) 
    sm_set_error_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sm_set_error_ns),
        .Q(in[38]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover_skid_buf
   (out,
    sig_m_valid_out_reg_0,
    sig_next_eof_reg_reg,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tlast,
    sig_sstrb_stop_mask,
    m_axis_mm2s_tdata,
    Q,
    m_axis_mm2s_tkeep,
    sig_init_reg_reg,
    m_axi_mm2s_aclk,
    SR,
    sig_slast_with_stop,
    \sig_sstrb_stop_mask_reg[3]_0 ,
    sig_init_reg_reg_0,
    sig_next_calc_error_reg_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axis_mm2s_tready,
    \sig_sstrb_stop_mask_reg[3]_1 ,
    sig_reset_reg,
    sig_halt_reg_dly3_reg,
    m_axi_mm2s_rdata,
    sig_halt_reg_dly3,
    sig_halt_reg_dly2,
    D,
    \sig_strb_skid_reg_reg[3]_0 );
  output out;
  output sig_m_valid_out_reg_0;
  output sig_next_eof_reg_reg;
  output m_axis_mm2s_tvalid;
  output m_axis_mm2s_tlast;
  output [0:0]sig_sstrb_stop_mask;
  output [31:0]m_axis_mm2s_tdata;
  output [3:0]Q;
  output [3:0]m_axis_mm2s_tkeep;
  input sig_init_reg_reg;
  input m_axi_mm2s_aclk;
  input [0:0]SR;
  input sig_slast_with_stop;
  input \sig_sstrb_stop_mask_reg[3]_0 ;
  input sig_init_reg_reg_0;
  input sig_next_calc_error_reg_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axis_mm2s_tready;
  input \sig_sstrb_stop_mask_reg[3]_1 ;
  input sig_reset_reg;
  input sig_halt_reg_dly3_reg;
  input [31:0]m_axi_mm2s_rdata;
  input sig_halt_reg_dly3;
  input sig_halt_reg_dly2;
  input [3:0]D;
  input [3:0]\sig_strb_skid_reg_reg[3]_0 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_rdata;
  wire [31:0]m_axis_mm2s_tdata;
  wire [3:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data_reg_out0;
  wire sig_data_reg_out_en;
  wire [31:0]sig_data_skid_mux_out;
  wire [31:0]sig_data_skid_reg;
  wire sig_halt_reg_dly2;
  wire sig_halt_reg_dly3;
  wire sig_halt_reg_dly3_reg;
  wire sig_init_reg_reg;
  wire sig_init_reg_reg_0;
  wire sig_last_skid_mux_out;
  wire sig_last_skid_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_dup;
  wire sig_m_valid_dup_i_1_n_0;
  wire sig_m_valid_dup_i_3_n_0;
  wire sig_m_valid_dup_i_4_n_0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_m_valid_out;
  wire sig_mvalid_stop;
  wire sig_mvalid_stop_reg_i_1_n_0;
  wire sig_next_calc_error_reg_reg;
  wire sig_reset_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_dup;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_s_ready_out;
  wire sig_slast_with_stop;
  wire [0:0]sig_sstrb_stop_mask;
  wire \sig_sstrb_stop_mask_reg[3]_0 ;
  wire \sig_sstrb_stop_mask_reg[3]_1 ;
  wire [3:0]\sig_strb_skid_reg_reg[3]_0 ;

  assign m_axis_mm2s_tvalid = sig_m_valid_out;
  assign out = sig_s_ready_dup;
  assign sig_m_valid_out_reg_0 = sig_m_valid_dup;
  assign sig_next_eof_reg_reg = sig_s_ready_out;
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[0]_i_1 
       (.I0(m_axi_mm2s_rdata[0]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[0]),
        .O(sig_data_skid_mux_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[10]_i_1 
       (.I0(m_axi_mm2s_rdata[10]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[10]),
        .O(sig_data_skid_mux_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[11]_i_1 
       (.I0(m_axi_mm2s_rdata[11]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[11]),
        .O(sig_data_skid_mux_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[12]_i_1 
       (.I0(m_axi_mm2s_rdata[12]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[12]),
        .O(sig_data_skid_mux_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[13]_i_1 
       (.I0(m_axi_mm2s_rdata[13]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[13]),
        .O(sig_data_skid_mux_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[14]_i_1 
       (.I0(m_axi_mm2s_rdata[14]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[14]),
        .O(sig_data_skid_mux_out[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[15]_i_1 
       (.I0(m_axi_mm2s_rdata[15]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[15]),
        .O(sig_data_skid_mux_out[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[16]_i_1 
       (.I0(m_axi_mm2s_rdata[16]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[16]),
        .O(sig_data_skid_mux_out[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[17]_i_1 
       (.I0(m_axi_mm2s_rdata[17]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[17]),
        .O(sig_data_skid_mux_out[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[18]_i_1 
       (.I0(m_axi_mm2s_rdata[18]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[18]),
        .O(sig_data_skid_mux_out[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[19]_i_1 
       (.I0(m_axi_mm2s_rdata[19]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[19]),
        .O(sig_data_skid_mux_out[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[1]_i_1 
       (.I0(m_axi_mm2s_rdata[1]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[1]),
        .O(sig_data_skid_mux_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[20]_i_1 
       (.I0(m_axi_mm2s_rdata[20]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[20]),
        .O(sig_data_skid_mux_out[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[21]_i_1 
       (.I0(m_axi_mm2s_rdata[21]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[21]),
        .O(sig_data_skid_mux_out[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[22]_i_1 
       (.I0(m_axi_mm2s_rdata[22]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[22]),
        .O(sig_data_skid_mux_out[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[23]_i_1 
       (.I0(m_axi_mm2s_rdata[23]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[23]),
        .O(sig_data_skid_mux_out[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[24]_i_1 
       (.I0(m_axi_mm2s_rdata[24]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[24]),
        .O(sig_data_skid_mux_out[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[25]_i_1 
       (.I0(m_axi_mm2s_rdata[25]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[25]),
        .O(sig_data_skid_mux_out[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[26]_i_1 
       (.I0(m_axi_mm2s_rdata[26]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[26]),
        .O(sig_data_skid_mux_out[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[27]_i_1 
       (.I0(m_axi_mm2s_rdata[27]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[27]),
        .O(sig_data_skid_mux_out[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[28]_i_1 
       (.I0(m_axi_mm2s_rdata[28]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[28]),
        .O(sig_data_skid_mux_out[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[29]_i_1 
       (.I0(m_axi_mm2s_rdata[29]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[29]),
        .O(sig_data_skid_mux_out[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[2]_i_1 
       (.I0(m_axi_mm2s_rdata[2]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[2]),
        .O(sig_data_skid_mux_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[30]_i_1 
       (.I0(m_axi_mm2s_rdata[30]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[30]),
        .O(sig_data_skid_mux_out[30]));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[31]_i_1 
       (.I0(sig_mvalid_stop),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_data_reg_out0));
  LUT2 #(
    .INIT(4'hB)) 
    \sig_data_reg_out[31]_i_2 
       (.I0(m_axis_mm2s_tready),
        .I1(sig_m_valid_dup),
        .O(sig_data_reg_out_en));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[31]_i_3 
       (.I0(m_axi_mm2s_rdata[31]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[31]),
        .O(sig_data_skid_mux_out[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[3]_i_1 
       (.I0(m_axi_mm2s_rdata[3]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[3]),
        .O(sig_data_skid_mux_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[4]_i_1 
       (.I0(m_axi_mm2s_rdata[4]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[4]),
        .O(sig_data_skid_mux_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[5]_i_1 
       (.I0(m_axi_mm2s_rdata[5]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[5]),
        .O(sig_data_skid_mux_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[6]_i_1 
       (.I0(m_axi_mm2s_rdata[6]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[6]),
        .O(sig_data_skid_mux_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[7]_i_1 
       (.I0(m_axi_mm2s_rdata[7]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[7]),
        .O(sig_data_skid_mux_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[8]_i_1 
       (.I0(m_axi_mm2s_rdata[8]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[8]),
        .O(sig_data_skid_mux_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sig_data_reg_out[9]_i_1 
       (.I0(m_axi_mm2s_rdata[9]),
        .I1(sig_s_ready_dup),
        .I2(sig_data_skid_reg[9]),
        .O(sig_data_skid_mux_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[0]),
        .Q(m_axis_mm2s_tdata[0]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[10]),
        .Q(m_axis_mm2s_tdata[10]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[11]),
        .Q(m_axis_mm2s_tdata[11]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[12]),
        .Q(m_axis_mm2s_tdata[12]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[13]),
        .Q(m_axis_mm2s_tdata[13]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[14]),
        .Q(m_axis_mm2s_tdata[14]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[15]),
        .Q(m_axis_mm2s_tdata[15]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[16]),
        .Q(m_axis_mm2s_tdata[16]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[17]),
        .Q(m_axis_mm2s_tdata[17]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[18]),
        .Q(m_axis_mm2s_tdata[18]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[19]),
        .Q(m_axis_mm2s_tdata[19]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[1]),
        .Q(m_axis_mm2s_tdata[1]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[20]),
        .Q(m_axis_mm2s_tdata[20]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[21]),
        .Q(m_axis_mm2s_tdata[21]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[22]),
        .Q(m_axis_mm2s_tdata[22]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[23]),
        .Q(m_axis_mm2s_tdata[23]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[24]),
        .Q(m_axis_mm2s_tdata[24]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[25]),
        .Q(m_axis_mm2s_tdata[25]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[26]),
        .Q(m_axis_mm2s_tdata[26]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[27]),
        .Q(m_axis_mm2s_tdata[27]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[28]),
        .Q(m_axis_mm2s_tdata[28]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[29]),
        .Q(m_axis_mm2s_tdata[29]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[2]),
        .Q(m_axis_mm2s_tdata[2]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[30]),
        .Q(m_axis_mm2s_tdata[30]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[31]),
        .Q(m_axis_mm2s_tdata[31]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[3]),
        .Q(m_axis_mm2s_tdata[3]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[4]),
        .Q(m_axis_mm2s_tdata[4]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[5]),
        .Q(m_axis_mm2s_tdata[5]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[6]),
        .Q(m_axis_mm2s_tdata[6]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[7]),
        .Q(m_axis_mm2s_tdata[7]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[8]),
        .Q(m_axis_mm2s_tdata[8]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_reg_out_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_data_skid_mux_out[9]),
        .Q(m_axis_mm2s_tdata[9]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[0]),
        .Q(sig_data_skid_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[10] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[10]),
        .Q(sig_data_skid_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[11] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[11]),
        .Q(sig_data_skid_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[12] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[12]),
        .Q(sig_data_skid_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[13] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[13]),
        .Q(sig_data_skid_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[14] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[14]),
        .Q(sig_data_skid_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[15] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[15]),
        .Q(sig_data_skid_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[16] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[16]),
        .Q(sig_data_skid_reg[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[17] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[17]),
        .Q(sig_data_skid_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[18] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[18]),
        .Q(sig_data_skid_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[19] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[19]),
        .Q(sig_data_skid_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[1]),
        .Q(sig_data_skid_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[20] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[20]),
        .Q(sig_data_skid_reg[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[21] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[21]),
        .Q(sig_data_skid_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[22] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[22]),
        .Q(sig_data_skid_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[23] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[23]),
        .Q(sig_data_skid_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[24] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[24]),
        .Q(sig_data_skid_reg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[25] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[25]),
        .Q(sig_data_skid_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[26] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[26]),
        .Q(sig_data_skid_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[27] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[27]),
        .Q(sig_data_skid_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[28] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[28]),
        .Q(sig_data_skid_reg[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[29] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[29]),
        .Q(sig_data_skid_reg[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[2]),
        .Q(sig_data_skid_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[30] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[30]),
        .Q(sig_data_skid_reg[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[31] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[31]),
        .Q(sig_data_skid_reg[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[3]),
        .Q(sig_data_skid_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[4] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[4]),
        .Q(sig_data_skid_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[5] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[5]),
        .Q(sig_data_skid_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[6] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[6]),
        .Q(sig_data_skid_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[7] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[7]),
        .Q(sig_data_skid_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[8] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[8]),
        .Q(sig_data_skid_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_data_skid_reg_reg[9] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(m_axi_mm2s_rdata[9]),
        .Q(sig_data_skid_reg[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    sig_last_reg_out_i_1
       (.I0(sig_slast_with_stop),
        .I1(sig_s_ready_dup),
        .I2(sig_last_skid_reg),
        .O(sig_last_skid_mux_out));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_reg_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(sig_last_skid_mux_out),
        .Q(m_axis_mm2s_tlast),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_skid_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(sig_slast_with_stop),
        .Q(sig_last_skid_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF04FF04FFFFFF04)) 
    sig_m_valid_dup_i_1
       (.I0(sig_init_reg_reg_0),
        .I1(sig_m_valid_dup),
        .I2(sig_data_reg_out0),
        .I3(sig_m_valid_dup_i_3_n_0),
        .I4(sig_m_valid_dup_i_4_n_0),
        .I5(sig_next_calc_error_reg_reg),
        .O(sig_m_valid_dup_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000200)) 
    sig_m_valid_dup_i_3
       (.I0(\sig_sstrb_stop_mask_reg[3]_1 ),
        .I1(sig_mvalid_stop),
        .I2(sig_reset_reg),
        .I3(sig_m_valid_dup),
        .I4(sig_s_ready_dup),
        .O(sig_m_valid_dup_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002000200000002)) 
    sig_m_valid_dup_i_4
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_sstrb_stop_mask),
        .I2(sig_mvalid_stop),
        .I3(sig_reset_reg),
        .I4(sig_m_valid_dup),
        .I5(sig_halt_reg_dly3_reg),
        .O(sig_m_valid_dup_i_4_n_0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_dup_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_m_valid_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_m_valid_dup_i_1_n_0),
        .Q(sig_m_valid_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D8D0D0)) 
    sig_mvalid_stop_reg_i_1
       (.I0(sig_m_valid_dup),
        .I1(m_axis_mm2s_tready),
        .I2(sig_sstrb_stop_mask),
        .I3(sig_halt_reg_dly3),
        .I4(sig_halt_reg_dly2),
        .I5(sig_mvalid_stop),
        .O(sig_mvalid_stop_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mvalid_stop_reg_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_mvalid_stop_reg_i_1_n_0),
        .Q(sig_mvalid_stop),
        .R(SR));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_dup_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_s_ready_dup),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_s_ready_out_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(sig_init_reg_reg),
        .Q(sig_s_ready_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_sstrb_stop_mask_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(\sig_sstrb_stop_mask_reg[3]_0 ),
        .Q(sig_sstrb_stop_mask),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_skid_reg_reg[3]_0 [0]),
        .Q(m_axis_mm2s_tkeep[0]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_skid_reg_reg[3]_0 [1]),
        .Q(m_axis_mm2s_tkeep[1]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_skid_reg_reg[3]_0 [2]),
        .Q(m_axis_mm2s_tkeep[2]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_reg_out_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_data_reg_out_en),
        .D(\sig_strb_skid_reg_reg[3]_0 [3]),
        .Q(m_axis_mm2s_tkeep[3]),
        .R(sig_data_reg_out0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_strb_skid_reg_reg[3] 
       (.C(m_axi_mm2s_aclk),
        .CE(sig_s_ready_dup),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* C_DLYTMR_RESOLUTION = "125" *) (* C_ENABLE_MULTI_CHANNEL = "0" *) (* C_FAMILY = "zynq" *) 
(* C_INCLUDE_MM2S = "1" *) (* C_INCLUDE_MM2S_DRE = "0" *) (* C_INCLUDE_MM2S_SF = "1" *) 
(* C_INCLUDE_S2MM = "0" *) (* C_INCLUDE_S2MM_DRE = "0" *) (* C_INCLUDE_S2MM_SF = "1" *) 
(* C_INCLUDE_SG = "0" *) (* C_INSTANCE = "axi_dma" *) (* C_MICRO_DMA = "1" *) 
(* C_MM2S_BURST_SIZE = "16" *) (* C_M_AXIS_MM2S_CNTRL_TDATA_WIDTH = "32" *) (* C_M_AXIS_MM2S_TDATA_WIDTH = "32" *) 
(* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) (* C_M_AXI_MM2S_DATA_WIDTH = "32" *) (* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) 
(* C_M_AXI_S2MM_DATA_WIDTH = "32" *) (* C_M_AXI_SG_ADDR_WIDTH = "32" *) (* C_M_AXI_SG_DATA_WIDTH = "32" *) 
(* C_NUM_MM2S_CHANNELS = "1" *) (* C_NUM_S2MM_CHANNELS = "1" *) (* C_PRMRY_IS_ACLK_ASYNC = "0" *) 
(* C_S2MM_BURST_SIZE = "16" *) (* C_SG_INCLUDE_STSCNTRL_STRM = "0" *) (* C_SG_LENGTH_WIDTH = "14" *) 
(* C_SG_USE_STSAPP_LENGTH = "0" *) (* C_S_AXIS_S2MM_STS_TDATA_WIDTH = "32" *) (* C_S_AXIS_S2MM_TDATA_WIDTH = "32" *) 
(* C_S_AXI_LITE_ADDR_WIDTH = "10" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma
   (s_axi_lite_aclk,
    m_axi_sg_aclk,
    m_axi_mm2s_aclk,
    m_axi_s2mm_aclk,
    axi_resetn,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_awaddr,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_wdata,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_araddr,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    m_axi_sg_awaddr,
    m_axi_sg_awlen,
    m_axi_sg_awsize,
    m_axi_sg_awburst,
    m_axi_sg_awprot,
    m_axi_sg_awcache,
    m_axi_sg_awuser,
    m_axi_sg_awvalid,
    m_axi_sg_awready,
    m_axi_sg_wdata,
    m_axi_sg_wstrb,
    m_axi_sg_wlast,
    m_axi_sg_wvalid,
    m_axi_sg_wready,
    m_axi_sg_bresp,
    m_axi_sg_bvalid,
    m_axi_sg_bready,
    m_axi_sg_araddr,
    m_axi_sg_arlen,
    m_axi_sg_arsize,
    m_axi_sg_arburst,
    m_axi_sg_arprot,
    m_axi_sg_arcache,
    m_axi_sg_aruser,
    m_axi_sg_arvalid,
    m_axi_sg_arready,
    m_axi_sg_rdata,
    m_axi_sg_rresp,
    m_axi_sg_rlast,
    m_axi_sg_rvalid,
    m_axi_sg_rready,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arprot,
    m_axi_mm2s_arcache,
    m_axi_mm2s_aruser,
    m_axi_mm2s_arvalid,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    m_axi_mm2s_rresp,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rready,
    mm2s_prmry_reset_out_n,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    m_axis_mm2s_tuser,
    m_axis_mm2s_tid,
    m_axis_mm2s_tdest,
    mm2s_cntrl_reset_out_n,
    m_axis_mm2s_cntrl_tdata,
    m_axis_mm2s_cntrl_tkeep,
    m_axis_mm2s_cntrl_tvalid,
    m_axis_mm2s_cntrl_tready,
    m_axis_mm2s_cntrl_tlast,
    m_axi_s2mm_awaddr,
    m_axi_s2mm_awlen,
    m_axi_s2mm_awsize,
    m_axi_s2mm_awburst,
    m_axi_s2mm_awprot,
    m_axi_s2mm_awcache,
    m_axi_s2mm_awuser,
    m_axi_s2mm_awvalid,
    m_axi_s2mm_awready,
    m_axi_s2mm_wdata,
    m_axi_s2mm_wstrb,
    m_axi_s2mm_wlast,
    m_axi_s2mm_wvalid,
    m_axi_s2mm_wready,
    m_axi_s2mm_bresp,
    m_axi_s2mm_bvalid,
    m_axi_s2mm_bready,
    s2mm_prmry_reset_out_n,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tvalid,
    s_axis_s2mm_tready,
    s_axis_s2mm_tlast,
    s_axis_s2mm_tuser,
    s_axis_s2mm_tid,
    s_axis_s2mm_tdest,
    s2mm_sts_reset_out_n,
    s_axis_s2mm_sts_tdata,
    s_axis_s2mm_sts_tkeep,
    s_axis_s2mm_sts_tvalid,
    s_axis_s2mm_sts_tready,
    s_axis_s2mm_sts_tlast,
    mm2s_introut,
    s2mm_introut,
    axi_dma_tstvec);
  input s_axi_lite_aclk;
  input m_axi_sg_aclk;
  input m_axi_mm2s_aclk;
  input m_axi_s2mm_aclk;
  input axi_resetn;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [9:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  input [31:0]s_axi_lite_wdata;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  input [9:0]s_axi_lite_araddr;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output [31:0]m_axi_sg_awaddr;
  output [7:0]m_axi_sg_awlen;
  output [2:0]m_axi_sg_awsize;
  output [1:0]m_axi_sg_awburst;
  output [2:0]m_axi_sg_awprot;
  output [3:0]m_axi_sg_awcache;
  output [3:0]m_axi_sg_awuser;
  output m_axi_sg_awvalid;
  input m_axi_sg_awready;
  output [31:0]m_axi_sg_wdata;
  output [3:0]m_axi_sg_wstrb;
  output m_axi_sg_wlast;
  output m_axi_sg_wvalid;
  input m_axi_sg_wready;
  input [1:0]m_axi_sg_bresp;
  input m_axi_sg_bvalid;
  output m_axi_sg_bready;
  output [31:0]m_axi_sg_araddr;
  output [7:0]m_axi_sg_arlen;
  output [2:0]m_axi_sg_arsize;
  output [1:0]m_axi_sg_arburst;
  output [2:0]m_axi_sg_arprot;
  output [3:0]m_axi_sg_arcache;
  output [3:0]m_axi_sg_aruser;
  output m_axi_sg_arvalid;
  input m_axi_sg_arready;
  input [31:0]m_axi_sg_rdata;
  input [1:0]m_axi_sg_rresp;
  input m_axi_sg_rlast;
  input m_axi_sg_rvalid;
  output m_axi_sg_rready;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output [3:0]m_axi_mm2s_aruser;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [31:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output mm2s_prmry_reset_out_n;
  output [31:0]m_axis_mm2s_tdata;
  output [3:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  output m_axis_mm2s_tlast;
  output [3:0]m_axis_mm2s_tuser;
  output [4:0]m_axis_mm2s_tid;
  output [4:0]m_axis_mm2s_tdest;
  output mm2s_cntrl_reset_out_n;
  output [31:0]m_axis_mm2s_cntrl_tdata;
  output [3:0]m_axis_mm2s_cntrl_tkeep;
  output m_axis_mm2s_cntrl_tvalid;
  input m_axis_mm2s_cntrl_tready;
  output m_axis_mm2s_cntrl_tlast;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output [3:0]m_axi_s2mm_awuser;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [31:0]m_axi_s2mm_wdata;
  output [3:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  output s2mm_prmry_reset_out_n;
  input [31:0]s_axis_s2mm_tdata;
  input [3:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input s_axis_s2mm_tlast;
  input [3:0]s_axis_s2mm_tuser;
  input [4:0]s_axis_s2mm_tid;
  input [4:0]s_axis_s2mm_tdest;
  output s2mm_sts_reset_out_n;
  input [31:0]s_axis_s2mm_sts_tdata;
  input [3:0]s_axis_s2mm_sts_tkeep;
  input s_axis_s2mm_sts_tvalid;
  output s_axis_s2mm_sts_tready;
  input s_axis_s2mm_sts_tlast;
  output mm2s_introut;
  output s2mm_introut;
  output [31:0]axi_dma_tstvec;

  wire \<const0> ;
  wire \<const1> ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I/rdy ;
  wire \GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/sig_rst2all_stop_request ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_decerr_i ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_interr_i ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_slverr_i ;
  wire \GEN_RESET_FOR_MM2S.RESET_I/soft_reset_d1 ;
  wire \GEN_RESET_FOR_MM2S.RESET_I/soft_reset_re0 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_10 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_11 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_12 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_13 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_14 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_15 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_16 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_17 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_18 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_19 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_20 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_21 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_22 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_23 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_24 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_25 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_26 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_27 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_28 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_29 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_30 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_31 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_32 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_33 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_34 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_35 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_36 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_37 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_38 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_39 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_40 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_41 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_42 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_43 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_44 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_45 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_46 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_47 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_48 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_49 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_50 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_51 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_52 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_53 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_54 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_55 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_8 ;
  wire \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_9 ;
  wire I_AXI_DMA_REG_MODULE_n_10;
  wire I_AXI_DMA_REG_MODULE_n_11;
  wire I_AXI_DMA_REG_MODULE_n_12;
  wire I_AXI_DMA_REG_MODULE_n_14;
  wire I_AXI_DMA_REG_MODULE_n_56;
  wire I_RST_MODULE_n_10;
  wire I_RST_MODULE_n_11;
  wire I_RST_MODULE_n_8;
  wire I_RST_MODULE_n_9;
  wire [4:0]\^axi_dma_tstvec ;
  wire axi_lite_reset_n;
  wire axi_resetn;
  wire dma_mm2s_error;
  wire idle;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [0:0]\^m_axi_mm2s_arburst ;
  wire m_axi_mm2s_aresetn;
  wire [4:0]\^m_axi_mm2s_arlen ;
  wire m_axi_mm2s_arready;
  wire [1:1]\^m_axi_mm2s_arsize ;
  wire m_axi_mm2s_arvalid;
  wire [31:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire m_axi_sg_aresetn;
  wire m_axis_mm2s_sts_tvalid_int;
  wire [31:0]m_axis_mm2s_tdata;
  wire [3:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_cntrl_reset_out_n;
  wire [0:0]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_halt_cmplt;
  wire mm2s_introut;
  wire [6:0]mm2s_length;
  wire mm2s_length_wren;
  wire mm2s_prmry_reset_out_n;
  wire mm2s_prmry_resetn;
  wire [31:0]mm2s_sa;
  wire mm2s_stop_i;
  wire p_10_out;
  wire p_11_out;
  wire p_2_out;
  wire p_4_out;
  wire p_5_out;
  wire p_9_out;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [9:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire s_axis_mm2s_cmd_tready;
  wire soft_reset;
  wire soft_reset_clr;

  assign axi_dma_tstvec[31] = \<const0> ;
  assign axi_dma_tstvec[30] = \<const0> ;
  assign axi_dma_tstvec[29] = \<const0> ;
  assign axi_dma_tstvec[28] = \<const0> ;
  assign axi_dma_tstvec[27] = \<const0> ;
  assign axi_dma_tstvec[26] = \<const0> ;
  assign axi_dma_tstvec[25] = \<const0> ;
  assign axi_dma_tstvec[24] = \<const0> ;
  assign axi_dma_tstvec[23] = \<const0> ;
  assign axi_dma_tstvec[22] = \<const0> ;
  assign axi_dma_tstvec[21] = \<const0> ;
  assign axi_dma_tstvec[20] = \<const0> ;
  assign axi_dma_tstvec[19] = \<const0> ;
  assign axi_dma_tstvec[18] = \<const0> ;
  assign axi_dma_tstvec[17] = \<const0> ;
  assign axi_dma_tstvec[16] = \<const0> ;
  assign axi_dma_tstvec[15] = \<const0> ;
  assign axi_dma_tstvec[14] = \<const0> ;
  assign axi_dma_tstvec[13] = \<const0> ;
  assign axi_dma_tstvec[12] = \<const0> ;
  assign axi_dma_tstvec[11] = \<const0> ;
  assign axi_dma_tstvec[10] = \<const0> ;
  assign axi_dma_tstvec[9] = \<const0> ;
  assign axi_dma_tstvec[8] = \<const0> ;
  assign axi_dma_tstvec[7] = \<const0> ;
  assign axi_dma_tstvec[6] = \<const0> ;
  assign axi_dma_tstvec[5] = \<const0> ;
  assign axi_dma_tstvec[4] = \^axi_dma_tstvec [4];
  assign axi_dma_tstvec[3] = \<const0> ;
  assign axi_dma_tstvec[2] = \<const0> ;
  assign axi_dma_tstvec[1:0] = \^axi_dma_tstvec [1:0];
  assign m_axi_mm2s_arburst[1] = \<const0> ;
  assign m_axi_mm2s_arburst[0] = \^m_axi_mm2s_arburst [0];
  assign m_axi_mm2s_arcache[3] = \<const0> ;
  assign m_axi_mm2s_arcache[2] = \<const0> ;
  assign m_axi_mm2s_arcache[1] = \<const1> ;
  assign m_axi_mm2s_arcache[0] = \<const1> ;
  assign m_axi_mm2s_arlen[7] = \<const0> ;
  assign m_axi_mm2s_arlen[6] = \<const0> ;
  assign m_axi_mm2s_arlen[5] = \<const0> ;
  assign m_axi_mm2s_arlen[4:0] = \^m_axi_mm2s_arlen [4:0];
  assign m_axi_mm2s_arprot[2] = \<const0> ;
  assign m_axi_mm2s_arprot[1] = \<const0> ;
  assign m_axi_mm2s_arprot[0] = \<const0> ;
  assign m_axi_mm2s_arsize[2] = \<const0> ;
  assign m_axi_mm2s_arsize[1] = \^m_axi_mm2s_arsize [1];
  assign m_axi_mm2s_arsize[0] = \<const0> ;
  assign m_axi_mm2s_aruser[3] = \<const0> ;
  assign m_axi_mm2s_aruser[2] = \<const0> ;
  assign m_axi_mm2s_aruser[1] = \<const0> ;
  assign m_axi_mm2s_aruser[0] = \<const0> ;
  assign m_axi_s2mm_awaddr[31] = \<const0> ;
  assign m_axi_s2mm_awaddr[30] = \<const0> ;
  assign m_axi_s2mm_awaddr[29] = \<const0> ;
  assign m_axi_s2mm_awaddr[28] = \<const0> ;
  assign m_axi_s2mm_awaddr[27] = \<const0> ;
  assign m_axi_s2mm_awaddr[26] = \<const0> ;
  assign m_axi_s2mm_awaddr[25] = \<const0> ;
  assign m_axi_s2mm_awaddr[24] = \<const0> ;
  assign m_axi_s2mm_awaddr[23] = \<const0> ;
  assign m_axi_s2mm_awaddr[22] = \<const0> ;
  assign m_axi_s2mm_awaddr[21] = \<const0> ;
  assign m_axi_s2mm_awaddr[20] = \<const0> ;
  assign m_axi_s2mm_awaddr[19] = \<const0> ;
  assign m_axi_s2mm_awaddr[18] = \<const0> ;
  assign m_axi_s2mm_awaddr[17] = \<const0> ;
  assign m_axi_s2mm_awaddr[16] = \<const0> ;
  assign m_axi_s2mm_awaddr[15] = \<const0> ;
  assign m_axi_s2mm_awaddr[14] = \<const0> ;
  assign m_axi_s2mm_awaddr[13] = \<const0> ;
  assign m_axi_s2mm_awaddr[12] = \<const0> ;
  assign m_axi_s2mm_awaddr[11] = \<const0> ;
  assign m_axi_s2mm_awaddr[10] = \<const0> ;
  assign m_axi_s2mm_awaddr[9] = \<const0> ;
  assign m_axi_s2mm_awaddr[8] = \<const0> ;
  assign m_axi_s2mm_awaddr[7] = \<const0> ;
  assign m_axi_s2mm_awaddr[6] = \<const0> ;
  assign m_axi_s2mm_awaddr[5] = \<const0> ;
  assign m_axi_s2mm_awaddr[4] = \<const0> ;
  assign m_axi_s2mm_awaddr[3] = \<const0> ;
  assign m_axi_s2mm_awaddr[2] = \<const0> ;
  assign m_axi_s2mm_awaddr[1] = \<const0> ;
  assign m_axi_s2mm_awaddr[0] = \<const0> ;
  assign m_axi_s2mm_awburst[1] = \<const0> ;
  assign m_axi_s2mm_awburst[0] = \<const0> ;
  assign m_axi_s2mm_awcache[3] = \<const0> ;
  assign m_axi_s2mm_awcache[2] = \<const0> ;
  assign m_axi_s2mm_awcache[1] = \<const0> ;
  assign m_axi_s2mm_awcache[0] = \<const0> ;
  assign m_axi_s2mm_awlen[7] = \<const0> ;
  assign m_axi_s2mm_awlen[6] = \<const0> ;
  assign m_axi_s2mm_awlen[5] = \<const0> ;
  assign m_axi_s2mm_awlen[4] = \<const0> ;
  assign m_axi_s2mm_awlen[3] = \<const0> ;
  assign m_axi_s2mm_awlen[2] = \<const0> ;
  assign m_axi_s2mm_awlen[1] = \<const0> ;
  assign m_axi_s2mm_awlen[0] = \<const0> ;
  assign m_axi_s2mm_awprot[2] = \<const0> ;
  assign m_axi_s2mm_awprot[1] = \<const0> ;
  assign m_axi_s2mm_awprot[0] = \<const0> ;
  assign m_axi_s2mm_awsize[2] = \<const0> ;
  assign m_axi_s2mm_awsize[1] = \<const0> ;
  assign m_axi_s2mm_awsize[0] = \<const0> ;
  assign m_axi_s2mm_awuser[3] = \<const0> ;
  assign m_axi_s2mm_awuser[2] = \<const0> ;
  assign m_axi_s2mm_awuser[1] = \<const0> ;
  assign m_axi_s2mm_awuser[0] = \<const0> ;
  assign m_axi_s2mm_awvalid = \<const0> ;
  assign m_axi_s2mm_bready = \<const0> ;
  assign m_axi_s2mm_wdata[31] = \<const0> ;
  assign m_axi_s2mm_wdata[30] = \<const0> ;
  assign m_axi_s2mm_wdata[29] = \<const0> ;
  assign m_axi_s2mm_wdata[28] = \<const0> ;
  assign m_axi_s2mm_wdata[27] = \<const0> ;
  assign m_axi_s2mm_wdata[26] = \<const0> ;
  assign m_axi_s2mm_wdata[25] = \<const0> ;
  assign m_axi_s2mm_wdata[24] = \<const0> ;
  assign m_axi_s2mm_wdata[23] = \<const0> ;
  assign m_axi_s2mm_wdata[22] = \<const0> ;
  assign m_axi_s2mm_wdata[21] = \<const0> ;
  assign m_axi_s2mm_wdata[20] = \<const0> ;
  assign m_axi_s2mm_wdata[19] = \<const0> ;
  assign m_axi_s2mm_wdata[18] = \<const0> ;
  assign m_axi_s2mm_wdata[17] = \<const0> ;
  assign m_axi_s2mm_wdata[16] = \<const0> ;
  assign m_axi_s2mm_wdata[15] = \<const0> ;
  assign m_axi_s2mm_wdata[14] = \<const0> ;
  assign m_axi_s2mm_wdata[13] = \<const0> ;
  assign m_axi_s2mm_wdata[12] = \<const0> ;
  assign m_axi_s2mm_wdata[11] = \<const0> ;
  assign m_axi_s2mm_wdata[10] = \<const0> ;
  assign m_axi_s2mm_wdata[9] = \<const0> ;
  assign m_axi_s2mm_wdata[8] = \<const0> ;
  assign m_axi_s2mm_wdata[7] = \<const0> ;
  assign m_axi_s2mm_wdata[6] = \<const0> ;
  assign m_axi_s2mm_wdata[5] = \<const0> ;
  assign m_axi_s2mm_wdata[4] = \<const0> ;
  assign m_axi_s2mm_wdata[3] = \<const0> ;
  assign m_axi_s2mm_wdata[2] = \<const0> ;
  assign m_axi_s2mm_wdata[1] = \<const0> ;
  assign m_axi_s2mm_wdata[0] = \<const0> ;
  assign m_axi_s2mm_wlast = \<const0> ;
  assign m_axi_s2mm_wstrb[3] = \<const0> ;
  assign m_axi_s2mm_wstrb[2] = \<const0> ;
  assign m_axi_s2mm_wstrb[1] = \<const0> ;
  assign m_axi_s2mm_wstrb[0] = \<const0> ;
  assign m_axi_s2mm_wvalid = \<const0> ;
  assign m_axi_sg_araddr[31] = \<const0> ;
  assign m_axi_sg_araddr[30] = \<const0> ;
  assign m_axi_sg_araddr[29] = \<const0> ;
  assign m_axi_sg_araddr[28] = \<const0> ;
  assign m_axi_sg_araddr[27] = \<const0> ;
  assign m_axi_sg_araddr[26] = \<const0> ;
  assign m_axi_sg_araddr[25] = \<const0> ;
  assign m_axi_sg_araddr[24] = \<const0> ;
  assign m_axi_sg_araddr[23] = \<const0> ;
  assign m_axi_sg_araddr[22] = \<const0> ;
  assign m_axi_sg_araddr[21] = \<const0> ;
  assign m_axi_sg_araddr[20] = \<const0> ;
  assign m_axi_sg_araddr[19] = \<const0> ;
  assign m_axi_sg_araddr[18] = \<const0> ;
  assign m_axi_sg_araddr[17] = \<const0> ;
  assign m_axi_sg_araddr[16] = \<const0> ;
  assign m_axi_sg_araddr[15] = \<const0> ;
  assign m_axi_sg_araddr[14] = \<const0> ;
  assign m_axi_sg_araddr[13] = \<const0> ;
  assign m_axi_sg_araddr[12] = \<const0> ;
  assign m_axi_sg_araddr[11] = \<const0> ;
  assign m_axi_sg_araddr[10] = \<const0> ;
  assign m_axi_sg_araddr[9] = \<const0> ;
  assign m_axi_sg_araddr[8] = \<const0> ;
  assign m_axi_sg_araddr[7] = \<const0> ;
  assign m_axi_sg_araddr[6] = \<const0> ;
  assign m_axi_sg_araddr[5] = \<const0> ;
  assign m_axi_sg_araddr[4] = \<const0> ;
  assign m_axi_sg_araddr[3] = \<const0> ;
  assign m_axi_sg_araddr[2] = \<const0> ;
  assign m_axi_sg_araddr[1] = \<const0> ;
  assign m_axi_sg_araddr[0] = \<const0> ;
  assign m_axi_sg_arburst[1] = \<const0> ;
  assign m_axi_sg_arburst[0] = \<const0> ;
  assign m_axi_sg_arcache[3] = \<const0> ;
  assign m_axi_sg_arcache[2] = \<const0> ;
  assign m_axi_sg_arcache[1] = \<const0> ;
  assign m_axi_sg_arcache[0] = \<const0> ;
  assign m_axi_sg_arlen[7] = \<const0> ;
  assign m_axi_sg_arlen[6] = \<const0> ;
  assign m_axi_sg_arlen[5] = \<const0> ;
  assign m_axi_sg_arlen[4] = \<const0> ;
  assign m_axi_sg_arlen[3] = \<const0> ;
  assign m_axi_sg_arlen[2] = \<const0> ;
  assign m_axi_sg_arlen[1] = \<const0> ;
  assign m_axi_sg_arlen[0] = \<const0> ;
  assign m_axi_sg_arprot[2] = \<const0> ;
  assign m_axi_sg_arprot[1] = \<const0> ;
  assign m_axi_sg_arprot[0] = \<const0> ;
  assign m_axi_sg_arsize[2] = \<const0> ;
  assign m_axi_sg_arsize[1] = \<const0> ;
  assign m_axi_sg_arsize[0] = \<const0> ;
  assign m_axi_sg_aruser[3] = \<const0> ;
  assign m_axi_sg_aruser[2] = \<const0> ;
  assign m_axi_sg_aruser[1] = \<const0> ;
  assign m_axi_sg_aruser[0] = \<const0> ;
  assign m_axi_sg_arvalid = \<const0> ;
  assign m_axi_sg_awaddr[31] = \<const0> ;
  assign m_axi_sg_awaddr[30] = \<const0> ;
  assign m_axi_sg_awaddr[29] = \<const0> ;
  assign m_axi_sg_awaddr[28] = \<const0> ;
  assign m_axi_sg_awaddr[27] = \<const0> ;
  assign m_axi_sg_awaddr[26] = \<const0> ;
  assign m_axi_sg_awaddr[25] = \<const0> ;
  assign m_axi_sg_awaddr[24] = \<const0> ;
  assign m_axi_sg_awaddr[23] = \<const0> ;
  assign m_axi_sg_awaddr[22] = \<const0> ;
  assign m_axi_sg_awaddr[21] = \<const0> ;
  assign m_axi_sg_awaddr[20] = \<const0> ;
  assign m_axi_sg_awaddr[19] = \<const0> ;
  assign m_axi_sg_awaddr[18] = \<const0> ;
  assign m_axi_sg_awaddr[17] = \<const0> ;
  assign m_axi_sg_awaddr[16] = \<const0> ;
  assign m_axi_sg_awaddr[15] = \<const0> ;
  assign m_axi_sg_awaddr[14] = \<const0> ;
  assign m_axi_sg_awaddr[13] = \<const0> ;
  assign m_axi_sg_awaddr[12] = \<const0> ;
  assign m_axi_sg_awaddr[11] = \<const0> ;
  assign m_axi_sg_awaddr[10] = \<const0> ;
  assign m_axi_sg_awaddr[9] = \<const0> ;
  assign m_axi_sg_awaddr[8] = \<const0> ;
  assign m_axi_sg_awaddr[7] = \<const0> ;
  assign m_axi_sg_awaddr[6] = \<const0> ;
  assign m_axi_sg_awaddr[5] = \<const0> ;
  assign m_axi_sg_awaddr[4] = \<const0> ;
  assign m_axi_sg_awaddr[3] = \<const0> ;
  assign m_axi_sg_awaddr[2] = \<const0> ;
  assign m_axi_sg_awaddr[1] = \<const0> ;
  assign m_axi_sg_awaddr[0] = \<const0> ;
  assign m_axi_sg_awburst[1] = \<const0> ;
  assign m_axi_sg_awburst[0] = \<const0> ;
  assign m_axi_sg_awcache[3] = \<const0> ;
  assign m_axi_sg_awcache[2] = \<const0> ;
  assign m_axi_sg_awcache[1] = \<const0> ;
  assign m_axi_sg_awcache[0] = \<const0> ;
  assign m_axi_sg_awlen[7] = \<const0> ;
  assign m_axi_sg_awlen[6] = \<const0> ;
  assign m_axi_sg_awlen[5] = \<const0> ;
  assign m_axi_sg_awlen[4] = \<const0> ;
  assign m_axi_sg_awlen[3] = \<const0> ;
  assign m_axi_sg_awlen[2] = \<const0> ;
  assign m_axi_sg_awlen[1] = \<const0> ;
  assign m_axi_sg_awlen[0] = \<const0> ;
  assign m_axi_sg_awprot[2] = \<const0> ;
  assign m_axi_sg_awprot[1] = \<const0> ;
  assign m_axi_sg_awprot[0] = \<const0> ;
  assign m_axi_sg_awsize[2] = \<const0> ;
  assign m_axi_sg_awsize[1] = \<const0> ;
  assign m_axi_sg_awsize[0] = \<const0> ;
  assign m_axi_sg_awuser[3] = \<const0> ;
  assign m_axi_sg_awuser[2] = \<const0> ;
  assign m_axi_sg_awuser[1] = \<const0> ;
  assign m_axi_sg_awuser[0] = \<const0> ;
  assign m_axi_sg_awvalid = \<const0> ;
  assign m_axi_sg_bready = \<const0> ;
  assign m_axi_sg_rready = \<const0> ;
  assign m_axi_sg_wdata[31] = \<const0> ;
  assign m_axi_sg_wdata[30] = \<const0> ;
  assign m_axi_sg_wdata[29] = \<const0> ;
  assign m_axi_sg_wdata[28] = \<const0> ;
  assign m_axi_sg_wdata[27] = \<const0> ;
  assign m_axi_sg_wdata[26] = \<const0> ;
  assign m_axi_sg_wdata[25] = \<const0> ;
  assign m_axi_sg_wdata[24] = \<const0> ;
  assign m_axi_sg_wdata[23] = \<const0> ;
  assign m_axi_sg_wdata[22] = \<const0> ;
  assign m_axi_sg_wdata[21] = \<const0> ;
  assign m_axi_sg_wdata[20] = \<const0> ;
  assign m_axi_sg_wdata[19] = \<const0> ;
  assign m_axi_sg_wdata[18] = \<const0> ;
  assign m_axi_sg_wdata[17] = \<const0> ;
  assign m_axi_sg_wdata[16] = \<const0> ;
  assign m_axi_sg_wdata[15] = \<const0> ;
  assign m_axi_sg_wdata[14] = \<const0> ;
  assign m_axi_sg_wdata[13] = \<const0> ;
  assign m_axi_sg_wdata[12] = \<const0> ;
  assign m_axi_sg_wdata[11] = \<const0> ;
  assign m_axi_sg_wdata[10] = \<const0> ;
  assign m_axi_sg_wdata[9] = \<const0> ;
  assign m_axi_sg_wdata[8] = \<const0> ;
  assign m_axi_sg_wdata[7] = \<const0> ;
  assign m_axi_sg_wdata[6] = \<const0> ;
  assign m_axi_sg_wdata[5] = \<const0> ;
  assign m_axi_sg_wdata[4] = \<const0> ;
  assign m_axi_sg_wdata[3] = \<const0> ;
  assign m_axi_sg_wdata[2] = \<const0> ;
  assign m_axi_sg_wdata[1] = \<const0> ;
  assign m_axi_sg_wdata[0] = \<const0> ;
  assign m_axi_sg_wlast = \<const0> ;
  assign m_axi_sg_wstrb[3] = \<const0> ;
  assign m_axi_sg_wstrb[2] = \<const0> ;
  assign m_axi_sg_wstrb[1] = \<const0> ;
  assign m_axi_sg_wstrb[0] = \<const0> ;
  assign m_axi_sg_wvalid = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[31] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[30] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[29] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[28] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[27] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[26] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[25] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[24] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[23] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[22] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[21] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[20] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[19] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[18] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[17] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[16] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[15] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[14] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[13] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[12] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[11] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[10] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[9] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[8] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[7] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[6] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[5] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[4] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[3] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[2] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[1] = \<const0> ;
  assign m_axis_mm2s_cntrl_tdata[0] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[3] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[2] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[1] = \<const0> ;
  assign m_axis_mm2s_cntrl_tkeep[0] = \<const0> ;
  assign m_axis_mm2s_cntrl_tlast = \<const0> ;
  assign m_axis_mm2s_cntrl_tvalid = \<const0> ;
  assign m_axis_mm2s_tdest[4] = \<const0> ;
  assign m_axis_mm2s_tdest[3] = \<const0> ;
  assign m_axis_mm2s_tdest[2] = \<const0> ;
  assign m_axis_mm2s_tdest[1] = \<const0> ;
  assign m_axis_mm2s_tdest[0] = \<const0> ;
  assign m_axis_mm2s_tid[4] = \<const0> ;
  assign m_axis_mm2s_tid[3] = \<const0> ;
  assign m_axis_mm2s_tid[2] = \<const0> ;
  assign m_axis_mm2s_tid[1] = \<const0> ;
  assign m_axis_mm2s_tid[0] = \<const0> ;
  assign m_axis_mm2s_tuser[3] = \<const0> ;
  assign m_axis_mm2s_tuser[2] = \<const0> ;
  assign m_axis_mm2s_tuser[1] = \<const0> ;
  assign m_axis_mm2s_tuser[0] = \<const0> ;
  assign s2mm_introut = \<const0> ;
  assign s2mm_prmry_reset_out_n = \<const1> ;
  assign s2mm_sts_reset_out_n = \<const1> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  assign s_axi_lite_wready = s_axi_lite_awready;
  assign s_axis_s2mm_sts_tready = \<const0> ;
  assign s_axis_s2mm_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_mm2s_mngr \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR 
       (.D({\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_15 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_16 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_17 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_18 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_19 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_20 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_21 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_22 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_23 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_24 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_25 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_26 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_27 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_28 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_29 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_30 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_31 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_32 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_33 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_34 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_35 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_36 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_37 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_38 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_39 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_40 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_41 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_42 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_43 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_44 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_45 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_46 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_47 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_48 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_49 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_50 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_51 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_52 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_53 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_54 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_55 }),
        .\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] (mm2s_length),
        .\GNE_SYNC_RESET.scndry_resetn_reg (I_RST_MODULE_n_8),
        .Q(mm2s_sa),
        .axi_dma_tstvec(\^axi_dma_tstvec [4]),
        .dma_decerr_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_12 ),
        .dma_decerr_reg_0(I_AXI_DMA_REG_MODULE_n_12),
        .dma_interr_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_14 ),
        .dma_interr_reg_0(I_AXI_DMA_REG_MODULE_n_10),
        .dma_mm2s_error(dma_mm2s_error),
        .dma_slverr_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_13 ),
        .dma_slverr_reg_0(I_AXI_DMA_REG_MODULE_n_11),
        .\dmacr_i_reg[3] (I_AXI_DMA_REG_MODULE_n_56),
        .halted_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_11 ),
        .idle(idle),
        .idle_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_8 ),
        .idle_reg_0(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_9 ),
        .ioc_irq_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_10 ),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .mm2s_decerr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_decerr_i ),
        .mm2s_dmacr(mm2s_dmacr),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_error_reg(I_AXI_DMA_REG_MODULE_n_14),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_interr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_interr_i ),
        .mm2s_length_wren(mm2s_length_wren),
        .mm2s_slverr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_slverr_i ),
        .mm2s_stop_i(mm2s_stop_i),
        .out(m_axi_sg_aresetn),
        .p_10_out(p_10_out),
        .p_11_out(p_11_out),
        .p_2_out(p_2_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .p_9_out(p_9_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .soft_reset(soft_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_sofeof_gen \INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_SOFEOF_GEN 
       (.\GNE_SYNC_RESET.scndry_resetn_reg (I_RST_MODULE_n_8),
        .axi_dma_tstvec(\^axi_dma_tstvec [1:0]),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .out(mm2s_prmry_resetn),
        .s_axi_lite_aclk(s_axi_lite_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_reg_module I_AXI_DMA_REG_MODULE
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (I_RST_MODULE_n_10),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (axi_lite_reset_n),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] (I_AXI_DMA_REG_MODULE_n_56),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] (mm2s_sa),
        .\GNE_SYNC_RESET.scndry_resetn_reg (I_RST_MODULE_n_8),
        .\GNE_SYNC_RESET.scndry_resetn_reg_0 (\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_11 ),
        .Q(mm2s_length),
        .SR(I_RST_MODULE_n_9),
        .dma_mm2s_error(dma_mm2s_error),
        .error_d1_reg(I_AXI_DMA_REG_MODULE_n_10),
        .error_d1_reg_0(I_AXI_DMA_REG_MODULE_n_11),
        .error_d1_reg_1(I_AXI_DMA_REG_MODULE_n_12),
        .idle(idle),
        .idle_reg(I_AXI_DMA_REG_MODULE_n_14),
        .idle_reg_0(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_8 ),
        .mm2s_decerr_i_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_12 ),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halted_clr_reg(mm2s_dmacr),
        .mm2s_halted_set_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_10 ),
        .mm2s_interr_i_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_14 ),
        .mm2s_introut(mm2s_introut),
        .mm2s_length_wren(mm2s_length_wren),
        .mm2s_slverr_i_reg(\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_13 ),
        .mm2s_stop_i(mm2s_stop_i),
        .out(m_axi_sg_aresetn),
        .p_11_out(p_11_out),
        .p_9_out(p_9_out),
        .rdy(\GEN_AXI_LITE_IF.AXI_LITE_IF_I/rdy ),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[5:2]),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .soft_reset(soft_reset),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_d1 ),
        .soft_reset_re0(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_re0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_datamover I_PRMRY_DATAMOVER
       (.D({\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_15 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_16 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_17 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_18 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_19 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_20 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_21 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_22 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_23 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_24 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_25 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_26 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_27 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_28 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_29 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_30 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_31 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_32 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_33 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_34 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_35 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_36 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_37 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_38 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_39 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_40 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_41 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_42 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_43 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_44 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_45 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_46 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_47 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_48 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_49 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_50 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_51 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_52 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_53 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_54 ,\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_55 }),
        .\GNE_SYNC_RESET.halt_i_reg (I_RST_MODULE_n_11),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(\^m_axi_mm2s_arburst ),
        .m_axi_mm2s_arlen(\^m_axi_mm2s_arlen ),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(\^m_axi_mm2s_arsize ),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_decerr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_decerr_i ),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_interr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_interr_i ),
        .mm2s_slverr_i(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS/mm2s_slverr_i ),
        .out(m_axi_mm2s_aresetn),
        .p_2_out(p_2_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .sig_rst2all_stop_request(\GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/sig_rst2all_stop_request ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_rst_module I_RST_MODULE
       (.\GEN_FOR_SYNC.s_sof_generated_reg (mm2s_prmry_resetn),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[0] (axi_lite_reset_n),
        .\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] (I_RST_MODULE_n_10),
        .\GNE_SYNC_RESET.scndry_resetn_reg (m_axi_mm2s_aresetn),
        .SR(I_RST_MODULE_n_9),
        .axi_resetn(axi_resetn),
        .error_d1_reg(I_RST_MODULE_n_8),
        .mm2s_cntrl_reset_out_n(mm2s_cntrl_reset_out_n),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .out(m_axi_sg_aresetn),
        .p_10_out(p_10_out),
        .p_11_out(p_11_out),
        .rdy(\GEN_AXI_LITE_IF.AXI_LITE_IF_I/rdy ),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[6]),
        .sig_rst2all_stop_request(\GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/sig_rst2all_stop_request ),
        .sig_s_h_halt_reg_reg(I_RST_MODULE_n_11),
        .\smpl_cs_reg[1] (\INCLUDE_MM2S_SOF_EOF_GENERATOR.I_MM2S_DMA_MNGR_n_9 ),
        .soft_reset(soft_reset),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_d1 ),
        .soft_reset_re0(\GEN_RESET_FOR_MM2S.RESET_I/soft_reset_re0 ));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_lite_if
   (s_axi_lite_awready,
    \GEN_SYNC_WRITE.wready_i_reg_0 ,
    s_axi_lite_arready,
    p_2_out,
    E,
    p_0_in1_in,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    p_3_out,
    dmacr_i,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ,
    \dmacr_i_reg[16] ,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    SR,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    s_axi_lite_wdata,
    soft_reset_clr,
    \dmacr_i_reg[2] ,
    D,
    Q,
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[15] ,
    idle,
    mm2s_dmasr,
    \dmacr_i_reg[0] ,
    dma_interr_reg,
    \dmacr_i_reg[4] ,
    dma_slverr_reg,
    dma_decerr_reg,
    ioc_irq_reg,
    \dmacr_i_reg[14] ,
    err_irq_reg,
    out,
    s_axi_lite_awaddr,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    s_axi_lite_bready,
    s_axi_lite_rready,
    s_axi_lite_araddr);
  output s_axi_lite_awready;
  output \GEN_SYNC_WRITE.wready_i_reg_0 ;
  output s_axi_lite_arready;
  output [1:0]p_2_out;
  output [0:0]E;
  output p_0_in1_in;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output p_3_out;
  output [0:0]dmacr_i;
  output \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ;
  output \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ;
  output \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ;
  output [0:0]\dmacr_i_reg[16] ;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input [0:0]SR;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input [21:0]s_axi_lite_wdata;
  input soft_reset_clr;
  input \dmacr_i_reg[2] ;
  input [20:0]D;
  input [8:0]Q;
  input [10:0]\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] ;
  input idle;
  input mm2s_dmasr;
  input [0:0]\dmacr_i_reg[0] ;
  input dma_interr_reg;
  input [1:0]\dmacr_i_reg[4] ;
  input dma_slverr_reg;
  input dma_decerr_reg;
  input ioc_irq_reg;
  input [2:0]\dmacr_i_reg[14] ;
  input err_irq_reg;
  input out;
  input [3:0]s_axi_lite_awaddr;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input s_axi_lite_bready;
  input s_axi_lite_rready;
  input [9:0]s_axi_lite_araddr;

  wire [20:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire [10:0]\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] ;
  wire \GEN_REG_FOR_SMPL.buffer_length_wren_i_2_n_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_length_wren_i_3_n_0 ;
  wire \GEN_REG_FOR_SMPL.buffer_length_wren_i_4_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_3_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2_n_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ;
  wire \GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ;
  wire \GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.rdy_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_addr_cap_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_addr_cap_i_2_n_0 ;
  wire \GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_in_progress_i_1_n_0 ;
  wire \GEN_SYNC_WRITE.wr_in_progress_i_2_n_0 ;
  wire \GEN_SYNC_WRITE.wready_i_reg_0 ;
  wire \GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ;
  wire [8:0]Q;
  wire [0:0]SR;
  wire [9:0]araddr;
  wire arvalid;
  wire arvalid_d1;
  wire arvalid_d1_i_1_n_0;
  wire arvalid_re;
  wire awvalid;
  wire awvalid_d1;
  wire [9:0]axi2ip_rdaddr;
  wire [9:0]axi2ip_rdaddr_i;
  wire dma_decerr_reg;
  wire dma_interr_reg;
  wire dma_slverr_reg;
  wire [0:0]dmacr_i;
  wire \dmacr_i[23]_i_2_n_0 ;
  wire [0:0]\dmacr_i_reg[0] ;
  wire [2:0]\dmacr_i_reg[14] ;
  wire [0:0]\dmacr_i_reg[16] ;
  wire \dmacr_i_reg[2] ;
  wire [1:0]\dmacr_i_reg[4] ;
  wire err_irq_reg;
  wire idle;
  wire ioc_irq_reg;
  wire [15:0]ip2axi_rddata1_out;
  wire mm2s_dmasr;
  wire out;
  wire p_0_in1_in;
  wire [1:0]p_2_out;
  wire p_3_out;
  wire rvalid;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [21:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire soft_reset_clr;
  wire wr_addr_cap;
  wire wr_data_cap;
  wire wr_in_progress;
  wire wvalid;
  wire wvalid_d1;

  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_1 
       (.I0(p_2_out[1]),
        .I1(s_axi_lite_wdata[3]),
        .I2(\GEN_REG_FOR_SMPL.buffer_length_wren_i_2_n_0 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_length_wren_i_3_n_0 ),
        .I4(\GEN_REG_FOR_SMPL.buffer_length_wren_i_4_n_0 ),
        .O(p_3_out));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_2 
       (.I0(s_axi_lite_wdata[9]),
        .I1(s_axi_lite_wdata[12]),
        .I2(s_axi_lite_wdata[13]),
        .I3(s_axi_lite_wdata[11]),
        .I4(p_2_out[1]),
        .I5(s_axi_lite_wdata[10]),
        .O(\GEN_REG_FOR_SMPL.buffer_length_wren_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_3 
       (.I0(s_axi_lite_wdata[2]),
        .I1(s_axi_lite_wdata[1]),
        .I2(p_2_out[1]),
        .I3(s_axi_lite_wdata[0]),
        .O(\GEN_REG_FOR_SMPL.buffer_length_wren_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \GEN_REG_FOR_SMPL.buffer_length_wren_i_4 
       (.I0(s_axi_lite_wdata[4]),
        .I1(s_axi_lite_wdata[7]),
        .I2(s_axi_lite_wdata[8]),
        .I3(s_axi_lite_wdata[6]),
        .I4(p_2_out[1]),
        .I5(s_axi_lite_wdata[5]),
        .O(\GEN_REG_FOR_SMPL.buffer_length_wren_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[0]),
        .Q(axi2ip_rdaddr_i[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[1]),
        .Q(axi2ip_rdaddr_i[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[2]),
        .Q(axi2ip_rdaddr_i[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[3]),
        .Q(axi2ip_rdaddr_i[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[4]),
        .Q(axi2ip_rdaddr_i[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[5]),
        .Q(axi2ip_rdaddr_i[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[6]),
        .Q(axi2ip_rdaddr_i[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[7]),
        .Q(axi2ip_rdaddr_i[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[8]),
        .Q(axi2ip_rdaddr_i[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.axi2ip_rdaddr_i_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(arvalid_re),
        .D(araddr[9]),
        .Q(axi2ip_rdaddr_i[9]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[0]),
        .Q(axi2ip_rdaddr[0]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[1]),
        .Q(axi2ip_rdaddr[1]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[2]),
        .Q(axi2ip_rdaddr[2]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[3]),
        .Q(axi2ip_rdaddr[3]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[4]),
        .Q(axi2ip_rdaddr[4]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[5]),
        .Q(axi2ip_rdaddr[5]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[6]),
        .Q(axi2ip_rdaddr[6]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[7]),
        .Q(axi2ip_rdaddr[7]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[8]),
        .Q(axi2ip_rdaddr[8]),
        .R(SR));
  FDRE \GEN_SYNC_READ.axi2ip_rdaddr_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi2ip_rdaddr_i[9]),
        .Q(axi2ip_rdaddr[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.rvalid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_arready),
        .Q(rvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [0]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2_n_0 ),
        .O(ip2axi_rddata1_out[0]));
  LUT6 #(
    .INIT(64'h00A0000000C00000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2 
       (.I0(mm2s_dmasr),
        .I1(\dmacr_i_reg[0] ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_3_n_0 ),
        .I3(axi2ip_rdaddr[5]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_1 
       (.I0(Q[7]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [7]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2_n_0 ),
        .O(ip2axi_rddata1_out[12]));
  LUT6 #(
    .INIT(64'h00A0000000C00000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2 
       (.I0(ioc_irq_reg),
        .I1(\dmacr_i_reg[14] [0]),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_3_n_0 ),
        .I3(axi2ip_rdaddr[5]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[12]_i_3 
       (.I0(axi2ip_rdaddr[3]),
        .I1(axi2ip_rdaddr[4]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ),
        .I1(\dmacr_i_reg[14] [1]),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [8]),
        .I4(Q[8]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .O(ip2axi_rddata1_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[13]_i_2 
       (.I0(axi2ip_rdaddr[5]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I2(axi2ip_rdaddr[2]),
        .I3(axi2ip_rdaddr[4]),
        .I4(axi2ip_rdaddr[3]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ),
        .I1(\dmacr_i_reg[14] [2]),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ),
        .I3(err_irq_reg),
        .I4(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [9]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .O(ip2axi_rddata1_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I1(axi2ip_rdaddr[4]),
        .I2(axi2ip_rdaddr[3]),
        .I3(axi2ip_rdaddr[5]),
        .I4(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[15]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I1(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [10]),
        .O(ip2axi_rddata1_out[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [1]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[1]_i_2_n_0 ),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ),
        .O(ip2axi_rddata1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[1]_i_2 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I1(axi2ip_rdaddr[4]),
        .I2(axi2ip_rdaddr[3]),
        .I3(axi2ip_rdaddr[5]),
        .I4(idle),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[2]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ),
        .I1(\dmacr_i_reg[2] ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [2]),
        .I4(Q[2]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .O(ip2axi_rddata1_out[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1 
       (.I0(s_axi_lite_rready),
        .I1(s_axi_lite_rvalid),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_3 
       (.I0(axi2ip_rdaddr[4]),
        .I1(axi2ip_rdaddr[3]),
        .I2(axi2ip_rdaddr[5]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_4 
       (.I0(axi2ip_rdaddr[4]),
        .I1(axi2ip_rdaddr[3]),
        .I2(axi2ip_rdaddr[5]),
        .I3(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5 
       (.I0(axi2ip_rdaddr[6]),
        .I1(axi2ip_rdaddr[7]),
        .I2(axi2ip_rdaddr[8]),
        .I3(axi2ip_rdaddr[9]),
        .I4(axi2ip_rdaddr[1]),
        .I5(axi2ip_rdaddr[0]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[3]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 ),
        .I1(\dmacr_i_reg[4] [0]),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [3]),
        .I4(Q[3]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .O(ip2axi_rddata1_out[3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [4]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2_n_0 ),
        .O(ip2axi_rddata1_out[4]));
  LUT6 #(
    .INIT(64'h00A0000000C00000)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2 
       (.I0(dma_interr_reg),
        .I1(\dmacr_i_reg[4] [1]),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata[12]_i_3_n_0 ),
        .I3(axi2ip_rdaddr[5]),
        .I4(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(axi2ip_rdaddr[2]),
        .O(\GEN_SYNC_READ.s_axi_lite_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[5]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ),
        .I1(dma_slverr_reg),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [5]),
        .I4(Q[5]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .O(ip2axi_rddata1_out[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[6]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata[14]_i_2_n_0 ),
        .I1(dma_decerr_reg),
        .I2(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 ),
        .I3(\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] [6]),
        .I4(Q[6]),
        .I5(\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 ),
        .O(ip2axi_rddata1_out[6]));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[3]),
        .Q(s_axi_lite_rdata[10]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[4]),
        .Q(s_axi_lite_rdata[11]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[5]),
        .Q(s_axi_lite_rdata[16]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[6]),
        .Q(s_axi_lite_rdata[17]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[7]),
        .Q(s_axi_lite_rdata[18]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[8]),
        .Q(s_axi_lite_rdata[19]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[9]),
        .Q(s_axi_lite_rdata[20]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[10]),
        .Q(s_axi_lite_rdata[21]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[11]),
        .Q(s_axi_lite_rdata[22]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[12]),
        .Q(s_axi_lite_rdata[23]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[13]),
        .Q(s_axi_lite_rdata[24]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[14]),
        .Q(s_axi_lite_rdata[25]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[15]),
        .Q(s_axi_lite_rdata[26]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[16]),
        .Q(s_axi_lite_rdata[27]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[17]),
        .Q(s_axi_lite_rdata[28]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[18]),
        .Q(s_axi_lite_rdata[29]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[19]),
        .Q(s_axi_lite_rdata[30]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[20]),
        .Q(s_axi_lite_rdata[31]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(ip2axi_rddata1_out[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[0]),
        .Q(s_axi_lite_rdata[7]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[1]),
        .Q(s_axi_lite_rdata[8]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \GEN_SYNC_READ.s_axi_lite_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(rvalid),
        .D(D[2]),
        .Q(s_axi_lite_rdata[9]),
        .R(\GEN_SYNC_READ.s_axi_lite_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0C88)) 
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1 
       (.I0(rvalid),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I2(s_axi_lite_rready),
        .I3(s_axi_lite_rvalid),
        .O(\GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_READ.s_axi_lite_rvalid_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_READ.s_axi_lite_rvalid_i_i_1_n_0 ),
        .Q(s_axi_lite_rvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_SYNC_WRITE.awvalid_d1_i_1 
       (.I0(awvalid),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I2(s_axi_lite_bvalid),
        .O(\GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.awvalid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.awvalid_d1_i_1_n_0 ),
        .Q(awvalid_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[2]),
        .I3(s_axi_lite_awaddr[3]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1_n_0 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[0]_i_1_n_0 ),
        .Q(p_2_out[0]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[10]_i_2_n_0 ),
        .Q(p_2_out[1]),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[1]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  FDRE \GEN_SYNC_WRITE.axi2ip_wrce_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.axi2ip_wrce[6]_i_1_n_0 ),
        .Q(E),
        .R(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0C88)) 
    \GEN_SYNC_WRITE.bvalid_i_i_1 
       (.I0(s_axi_lite_awready),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I2(s_axi_lite_bready),
        .I3(s_axi_lite_bvalid),
        .O(\GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.bvalid_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.bvalid_i_i_1_n_0 ),
        .Q(s_axi_lite_bvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_SYNC_WRITE.rdy_i_1 
       (.I0(wr_data_cap),
        .I1(wr_addr_cap),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I3(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.rdy_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.rdy_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.rdy_i_1_n_0 ),
        .Q(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_SYNC_WRITE.wr_addr_cap_i_1 
       (.I0(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .O(\GEN_SYNC_WRITE.wr_addr_cap_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \GEN_SYNC_WRITE.wr_addr_cap_i_2 
       (.I0(wr_in_progress),
        .I1(awvalid_d1),
        .I2(awvalid),
        .I3(wr_addr_cap),
        .O(\GEN_SYNC_WRITE.wr_addr_cap_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_addr_cap_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_addr_cap_i_2_n_0 ),
        .Q(wr_addr_cap),
        .R(\GEN_SYNC_WRITE.wr_addr_cap_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \GEN_SYNC_WRITE.wr_data_cap_i_1 
       (.I0(wr_data_cap),
        .I1(wvalid),
        .I2(wvalid_d1),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I4(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .O(\GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_data_cap_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_data_cap_i_1_n_0 ),
        .Q(wr_data_cap),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_SYNC_WRITE.wr_in_progress_i_1 
       (.I0(s_axi_lite_bvalid),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .O(\GEN_SYNC_WRITE.wr_in_progress_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \GEN_SYNC_WRITE.wr_in_progress_i_2 
       (.I0(awvalid_d1),
        .I1(awvalid),
        .I2(wr_in_progress),
        .O(\GEN_SYNC_WRITE.wr_in_progress_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wr_in_progress_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wr_in_progress_i_2_n_0 ),
        .Q(wr_in_progress),
        .R(\GEN_SYNC_WRITE.wr_in_progress_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wready_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wready_i_reg_0 ),
        .Q(s_axi_lite_awready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_SYNC_WRITE.wvalid_d1_i_1 
       (.I0(wvalid),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .I2(s_axi_lite_bvalid),
        .O(\GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_SYNC_WRITE.wvalid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_SYNC_WRITE.wvalid_d1_i_1_n_0 ),
        .Q(wvalid_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[0]),
        .Q(araddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[1]),
        .Q(araddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[2]),
        .Q(araddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[3]),
        .Q(araddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[4]),
        .Q(araddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[5]),
        .Q(araddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[6]),
        .Q(araddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[7]),
        .Q(araddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[8]),
        .Q(araddr[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \araddr_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_araddr[9]),
        .Q(araddr[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    arready_i_i_2
       (.I0(s_axi_lite_rvalid),
        .I1(arvalid),
        .I2(arvalid_d1),
        .O(arvalid_re));
  FDRE #(
    .INIT(1'b0)) 
    arready_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(arvalid_re),
        .Q(s_axi_lite_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    arvalid_d1_i_1
       (.I0(s_axi_lite_rvalid),
        .I1(arvalid),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .O(arvalid_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(arvalid_d1_i_1_n_0),
        .Q(arvalid_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_arvalid),
        .Q(arvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_awvalid),
        .Q(awvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \dmacr_i[23]_i_1 
       (.I0(\dmacr_i[23]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[16]),
        .I2(s_axi_lite_wdata[15]),
        .I3(s_axi_lite_wdata[14]),
        .I4(out),
        .O(\dmacr_i_reg[16] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dmacr_i[23]_i_2 
       (.I0(s_axi_lite_wdata[19]),
        .I1(s_axi_lite_wdata[20]),
        .I2(s_axi_lite_wdata[17]),
        .I3(s_axi_lite_wdata[18]),
        .I4(s_axi_lite_wdata[21]),
        .I5(p_2_out[0]),
        .O(\dmacr_i[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0F08)) 
    \dmacr_i[2]_i_1 
       (.I0(s_axi_lite_wdata[2]),
        .I1(p_2_out[0]),
        .I2(soft_reset_clr),
        .I3(\dmacr_i_reg[2] ),
        .O(dmacr_i));
  FDRE #(
    .INIT(1'b0)) 
    wvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_wvalid),
        .Q(wvalid),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_mm2s_cmdsts_if
   (\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ,
    p_5_out,
    p_2_out,
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ,
    write_cmnd_cmb,
    dma_decerr_reg,
    dma_slverr_reg,
    dma_interr_reg,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    mm2s_interr_i,
    s_axi_lite_aclk,
    mm2s_slverr_i,
    mm2s_decerr_i,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    sts_received_clr_reg,
    soft_reset,
    smpl_cs,
    out,
    m_axis_mm2s_sts_tvalid_int,
    dma_decerr_reg_0,
    dma_slverr_reg_0,
    dma_interr_reg_0);
  output \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ;
  output p_5_out;
  output p_2_out;
  output \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ;
  output \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ;
  output write_cmnd_cmb;
  output dma_decerr_reg;
  output dma_slverr_reg;
  output dma_interr_reg;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input mm2s_interr_i;
  input s_axi_lite_aclk;
  input mm2s_slverr_i;
  input mm2s_decerr_i;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  input sts_received_clr_reg;
  input soft_reset;
  input [1:0]smpl_cs;
  input out;
  input m_axis_mm2s_sts_tvalid_int;
  input dma_decerr_reg_0;
  input dma_slverr_reg_0;
  input dma_interr_reg_0;

  wire \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire dma_decerr_reg;
  wire dma_decerr_reg_0;
  wire dma_interr_reg;
  wire dma_interr_reg_0;
  wire dma_slverr_reg;
  wire dma_slverr_reg_0;
  wire m_axis_mm2s_sts_tvalid_int;
  wire mm2s_decerr_i;
  wire mm2s_error_i_1_n_0;
  wire mm2s_interr_i;
  wire mm2s_slverr_i;
  wire out;
  wire p_2_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire s_axi_lite_aclk;
  wire [1:0]smpl_cs;
  wire soft_reset;
  wire sts_received_clr_reg;
  wire sts_tready_i_1_n_0;
  wire write_cmnd_cmb;

  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \GEN_CMD_BTT_LESS_23.cmnd_data[63]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .I1(soft_reset),
        .I2(smpl_cs[1]),
        .I3(smpl_cs[0]),
        .I4(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ),
        .I5(out),
        .O(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ),
        .I1(smpl_cs[0]),
        .I2(smpl_cs[1]),
        .I3(soft_reset),
        .I4(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .O(write_cmnd_cmb));
  FDRE \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    dma_decerr_i_1
       (.I0(p_6_out),
        .I1(dma_decerr_reg_0),
        .O(dma_decerr_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    dma_interr_i_1
       (.I0(p_8_out),
        .I1(dma_interr_reg_0),
        .O(dma_interr_reg));
  LUT2 #(
    .INIT(4'hE)) 
    dma_slverr_i_1
       (.I0(p_7_out),
        .I1(dma_slverr_reg_0),
        .O(dma_slverr_reg));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_decerr_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_decerr_i),
        .Q(p_6_out),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mm2s_error_i_1
       (.I0(p_8_out),
        .I1(p_7_out),
        .I2(p_6_out),
        .I3(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .O(mm2s_error_i_1_n_0));
  FDRE mm2s_error_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_error_i_1_n_0),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_interr_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_interr_i),
        .Q(p_8_out),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_slverr_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_slverr_i),
        .Q(p_7_out),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    sts_received_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sts_received_clr_reg),
        .Q(p_5_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0A22)) 
    sts_tready_i_1
       (.I0(out),
        .I1(p_5_out),
        .I2(m_axis_mm2s_sts_tvalid_int),
        .I3(p_2_out),
        .O(sts_tready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sts_tready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sts_tready_i_1_n_0),
        .Q(p_2_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_mm2s_mngr
   (p_10_out,
    p_9_out,
    p_11_out,
    p_4_out,
    p_5_out,
    p_2_out,
    dma_mm2s_error,
    axi_dma_tstvec,
    idle_reg,
    idle_reg_0,
    ioc_irq_reg,
    halted_reg,
    dma_decerr_reg,
    dma_slverr_reg,
    dma_interr_reg,
    D,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    mm2s_dmacr,
    s_axi_lite_aclk,
    mm2s_interr_i,
    mm2s_slverr_i,
    mm2s_decerr_i,
    mm2s_stop_i,
    out,
    soft_reset,
    mm2s_dmasr,
    idle,
    mm2s_error_reg,
    mm2s_length_wren,
    mm2s_halt_cmplt,
    m_axis_mm2s_sts_tvalid_int,
    s_axis_mm2s_cmd_tready,
    dma_decerr_reg_0,
    dma_slverr_reg_0,
    dma_interr_reg_0,
    Q,
    \dmacr_i_reg[3] ,
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[6] );
  output p_10_out;
  output p_9_out;
  output p_11_out;
  output p_4_out;
  output p_5_out;
  output p_2_out;
  output dma_mm2s_error;
  output [0:0]axi_dma_tstvec;
  output idle_reg;
  output idle_reg_0;
  output ioc_irq_reg;
  output halted_reg;
  output dma_decerr_reg;
  output dma_slverr_reg;
  output dma_interr_reg;
  output [40:0]D;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input [0:0]mm2s_dmacr;
  input s_axi_lite_aclk;
  input mm2s_interr_i;
  input mm2s_slverr_i;
  input mm2s_decerr_i;
  input mm2s_stop_i;
  input out;
  input soft_reset;
  input mm2s_dmasr;
  input idle;
  input mm2s_error_reg;
  input mm2s_length_wren;
  input mm2s_halt_cmplt;
  input m_axis_mm2s_sts_tvalid_int;
  input s_axis_mm2s_cmd_tready;
  input dma_decerr_reg_0;
  input dma_slverr_reg_0;
  input dma_interr_reg_0;
  input [31:0]Q;
  input \dmacr_i_reg[3] ;
  input [6:0]\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] ;

  wire [40:0]D;
  wire \GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_5 ;
  wire \GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_7 ;
  wire \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_4 ;
  wire [6:0]\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire [31:0]Q;
  wire [0:0]axi_dma_tstvec;
  wire dma_decerr_reg;
  wire dma_decerr_reg_0;
  wire dma_interr_reg;
  wire dma_interr_reg_0;
  wire dma_mm2s_error;
  wire dma_slverr_reg;
  wire dma_slverr_reg_0;
  wire \dmacr_i_reg[3] ;
  wire halted_reg;
  wire idle;
  wire idle_reg;
  wire idle_reg_0;
  wire ioc_irq_reg;
  wire m_axis_mm2s_sts_tvalid_int;
  wire mm2s_decerr_i;
  wire [0:0]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_error_reg;
  wire mm2s_halt_cmplt;
  wire mm2s_halted_set0;
  wire mm2s_interr_i;
  wire mm2s_length_wren;
  wire mm2s_slverr_i;
  wire mm2s_stop_i;
  wire out;
  wire p_10_out;
  wire p_11_out;
  wire p_2_out;
  wire p_4_out;
  wire p_5_out;
  wire p_9_out;
  wire s_axi_lite_aclk;
  wire s_axis_mm2s_cmd_tready;
  wire [1:0]smpl_cs;
  wire soft_reset;
  wire write_cmnd_cmb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_smple_sm \GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM 
       (.D(D),
        .\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg (\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_7 ),
        .\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 (p_4_out),
        .\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] (\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] ),
        .\GNE_SYNC_RESET.scndry_resetn_reg (\GNE_SYNC_RESET.scndry_resetn_reg ),
        .Q(Q),
        .\dmacr_i_reg[3] (\dmacr_i_reg[3] ),
        .idle_reg(idle_reg_0),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .mm2s_dmacr(mm2s_dmacr),
        .mm2s_error_reg(dma_mm2s_error),
        .mm2s_error_reg_0(\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_4 ),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_halted_set0(mm2s_halted_set0),
        .mm2s_length_wren(mm2s_length_wren),
        .mm2s_stop_i(mm2s_stop_i),
        .out(out),
        .p_10_out(p_10_out),
        .p_9_out(p_9_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .smpl_cs(smpl_cs),
        .soft_reset(soft_reset),
        .sts_received_i_reg(\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_5 ),
        .sts_received_i_reg_0(p_5_out),
        .write_cmnd_cmb(write_cmnd_cmb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_mm2s_cmdsts_if \GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS 
       (.\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] (\GEN_MM2S_DMA_CONTROL.I_MM2S_CMDSTS_n_4 ),
        .\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg (p_4_out),
        .\GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg_0 (dma_mm2s_error),
        .\GNE_SYNC_RESET.scndry_resetn_reg (\GNE_SYNC_RESET.scndry_resetn_reg ),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_7 ),
        .dma_decerr_reg(dma_decerr_reg),
        .dma_decerr_reg_0(dma_decerr_reg_0),
        .dma_interr_reg(dma_interr_reg),
        .dma_interr_reg_0(dma_interr_reg_0),
        .dma_slverr_reg(dma_slverr_reg),
        .dma_slverr_reg_0(dma_slverr_reg_0),
        .m_axis_mm2s_sts_tvalid_int(m_axis_mm2s_sts_tvalid_int),
        .mm2s_decerr_i(mm2s_decerr_i),
        .mm2s_interr_i(mm2s_interr_i),
        .mm2s_slverr_i(mm2s_slverr_i),
        .out(out),
        .p_2_out(p_2_out),
        .p_5_out(p_5_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .smpl_cs(smpl_cs),
        .soft_reset(soft_reset),
        .sts_received_clr_reg(\GEN_MM2S_DMA_CONTROL.GEN_SIMPLE_DMA_MODE.I_MM2S_SMPL_SM_n_5 ),
        .write_cmnd_cmb(write_cmnd_cmb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_mm2s_sts_mngr \GEN_MM2S_DMA_CONTROL.I_MM2S_STS_MNGR 
       (.\GNE_SYNC_RESET.scndry_resetn_reg (\GNE_SYNC_RESET.scndry_resetn_reg ),
        .axi_dma_tstvec(axi_dma_tstvec),
        .dma_mm2s_error(dma_mm2s_error),
        .halted_reg(halted_reg),
        .idle(idle),
        .idle_reg(idle_reg),
        .ioc_irq_reg(ioc_irq_reg),
        .mm2s_dmacr(mm2s_dmacr),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_error_reg(mm2s_error_reg),
        .mm2s_halted_set0(mm2s_halted_set0),
        .out(out),
        .p_10_out(p_10_out),
        .p_9_out(p_9_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .\smpl_cs_reg[1] (idle_reg_0),
        .soft_reset(soft_reset));
  FDRE \GEN_MM2S_DMA_CONTROL.mm2s_stop_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_stop_i),
        .Q(p_11_out),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_mm2s_sts_mngr
   (axi_dma_tstvec,
    idle_reg,
    ioc_irq_reg,
    halted_reg,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    mm2s_dmacr,
    s_axi_lite_aclk,
    mm2s_halted_set0,
    p_10_out,
    mm2s_dmasr,
    soft_reset,
    dma_mm2s_error,
    p_9_out,
    idle,
    \smpl_cs_reg[1] ,
    mm2s_error_reg,
    out);
  output [0:0]axi_dma_tstvec;
  output idle_reg;
  output ioc_irq_reg;
  output halted_reg;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input [0:0]mm2s_dmacr;
  input s_axi_lite_aclk;
  input mm2s_halted_set0;
  input p_10_out;
  input mm2s_dmasr;
  input soft_reset;
  input dma_mm2s_error;
  input p_9_out;
  input idle;
  input \smpl_cs_reg[1] ;
  input mm2s_error_reg;
  input out;

  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire all_is_idle_d1;
  wire [0:0]axi_dma_tstvec;
  wire dma_mm2s_error;
  wire halted_reg;
  wire idle;
  wire idle_i_2_n_0;
  wire idle_reg;
  wire ioc_irq_reg;
  wire [0:0]mm2s_dmacr;
  wire mm2s_dmasr;
  wire mm2s_error_reg;
  wire mm2s_halted_clr;
  wire mm2s_halted_set0;
  wire out;
  wire p_10_out;
  wire p_16_out;
  wire p_9_out;
  wire s_axi_lite_aclk;
  wire \smpl_cs_reg[1] ;
  wire soft_reset;

  FDRE #(
    .INIT(1'b0)) 
    all_is_idle_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(p_10_out),
        .Q(all_is_idle_d1),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h222F2220)) 
    \axi_dma_tstvec[4]_INST_0 
       (.I0(p_16_out),
        .I1(mm2s_dmasr),
        .I2(soft_reset),
        .I3(dma_mm2s_error),
        .I4(p_9_out),
        .O(axi_dma_tstvec));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    halted_i_1
       (.I0(out),
        .I1(p_16_out),
        .I2(mm2s_halted_clr),
        .I3(mm2s_dmasr),
        .O(halted_reg));
  LUT6 #(
    .INIT(64'h4504440404044404)) 
    idle_i_1
       (.I0(idle_i_2_n_0),
        .I1(idle),
        .I2(all_is_idle_d1),
        .I3(\smpl_cs_reg[1] ),
        .I4(mm2s_dmacr),
        .I5(mm2s_error_reg),
        .O(idle_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    idle_i_2
       (.I0(p_16_out),
        .I1(out),
        .O(idle_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ioc_irq_i_2
       (.I0(p_16_out),
        .I1(mm2s_dmasr),
        .O(ioc_irq_reg));
  FDRE mm2s_halted_clr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_dmacr),
        .Q(mm2s_halted_clr),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE mm2s_halted_set_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_halted_set0),
        .Q(p_16_out),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_reg_module
   (mm2s_halted_clr_reg,
    soft_reset,
    s_axi_lite_awready,
    rdy,
    s_axi_lite_arready,
    mm2s_length_wren,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    mm2s_dmasr,
    idle,
    error_d1_reg,
    error_d1_reg_0,
    error_d1_reg_1,
    mm2s_introut,
    idle_reg,
    mm2s_stop_i,
    soft_reset_re0,
    Q,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    SR,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    \GNE_SYNC_RESET.scndry_resetn_reg_0 ,
    idle_reg_0,
    mm2s_interr_i_reg,
    mm2s_slverr_i_reg,
    mm2s_decerr_i_reg,
    dma_mm2s_error,
    out,
    soft_reset_d1,
    s_axi_lite_wdata,
    p_11_out,
    soft_reset_clr,
    s_axi_lite_awaddr,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ,
    s_axi_lite_bready,
    s_axi_lite_rready,
    s_axi_lite_araddr,
    p_9_out,
    mm2s_halted_set_reg);
  output [0:0]mm2s_halted_clr_reg;
  output soft_reset;
  output s_axi_lite_awready;
  output rdy;
  output s_axi_lite_arready;
  output mm2s_length_wren;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output mm2s_dmasr;
  output idle;
  output error_d1_reg;
  output error_d1_reg_0;
  output error_d1_reg_1;
  output mm2s_introut;
  output idle_reg;
  output mm2s_stop_i;
  output soft_reset_re0;
  output [6:0]Q;
  output [31:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ;
  output \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input [0:0]SR;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  input idle_reg_0;
  input mm2s_interr_i_reg;
  input mm2s_slverr_i_reg;
  input mm2s_decerr_i_reg;
  input dma_mm2s_error;
  input out;
  input soft_reset_d1;
  input [31:0]s_axi_lite_wdata;
  input p_11_out;
  input soft_reset_clr;
  input [3:0]s_axi_lite_awaddr;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  input s_axi_lite_bready;
  input s_axi_lite_rready;
  input [9:0]s_axi_lite_araddr;
  input p_9_out;
  input mm2s_halted_set_reg;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_11 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_12 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_13 ;
  wire \GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_14 ;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ;
  wire [31:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_11 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_12 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_13 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_14 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_15 ;
  wire \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_80 ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  wire [6:0]Q;
  wire [0:0]SR;
  wire dma_mm2s_error;
  wire [2:2]dmacr_i;
  wire error_d1_reg;
  wire error_d1_reg_0;
  wire error_d1_reg_1;
  wire idle;
  wire idle_reg;
  wire idle_reg_0;
  wire [31:7]ip2axi_rddata1_out;
  wire mm2s_decerr_i_reg;
  wire [3:3]mm2s_dmacr;
  wire mm2s_dmasr;
  wire [0:0]mm2s_halted_clr_reg;
  wire mm2s_halted_set_reg;
  wire mm2s_interr_i_reg;
  wire mm2s_introut;
  wire [13:12]mm2s_length;
  wire mm2s_length_wren;
  wire mm2s_slverr_i_reg;
  wire mm2s_stop_i;
  wire out;
  wire p_0_in1_in;
  wire p_11_out;
  wire p_1_in;
  wire [10:0]p_2_out;
  wire p_3_out;
  wire p_9_out;
  wire rdy;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wvalid;
  wire soft_reset;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_lite_if \GEN_AXI_LITE_IF.AXI_LITE_IF_I 
       (.D({ip2axi_rddata1_out[31:16],ip2axi_rddata1_out[11:7]}),
        .E(p_1_in),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4_0 ),
        .\GEN_REG_FOR_SMPL.buffer_address_i_reg[15] ({\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [15:12],\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [6:0]}),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_0 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_11 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_1 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_12 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[1]_2 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_13 ),
        .\GEN_SYNC_WRITE.wready_i_reg_0 (rdy),
        .Q({mm2s_length,Q}),
        .SR(SR),
        .dma_decerr_reg(error_d1_reg_1),
        .dma_interr_reg(error_d1_reg),
        .dma_slverr_reg(error_d1_reg_0),
        .dmacr_i(dmacr_i),
        .\dmacr_i_reg[0] (mm2s_halted_clr_reg),
        .\dmacr_i_reg[14] ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_12 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_13 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_14 }),
        .\dmacr_i_reg[16] (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_14 ),
        .\dmacr_i_reg[2] (soft_reset),
        .\dmacr_i_reg[4] ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_80 ,mm2s_dmacr}),
        .err_irq_reg(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_11 ),
        .idle(idle),
        .ioc_irq_reg(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_15 ),
        .mm2s_dmasr(mm2s_dmasr),
        .out(out),
        .p_0_in1_in(p_0_in1_in),
        .p_2_out({p_2_out[10],p_2_out[0]}),
        .p_3_out(p_3_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata({s_axi_lite_wdata[23:16],s_axi_lite_wdata[13:0]}),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .soft_reset_clr(soft_reset_clr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_register \GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER 
       (.D({ip2axi_rddata1_out[31:16],ip2axi_rddata1_out[11:7]}),
        .E(p_1_in),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] (\GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ),
        .\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] (\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_12 ),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_13 ),
        .\GEN_SYNC_READ.axi2ip_rdaddr_reg[5] (\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_11 ),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] ({mm2s_length,Q}),
        .\GEN_SYNC_READ.s_axi_lite_rdata_reg[4] ({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_80 ,mm2s_dmacr}),
        .\GNE_SYNC_RESET.scndry_resetn_reg (\GNE_SYNC_RESET.scndry_resetn_reg ),
        .\GNE_SYNC_RESET.scndry_resetn_reg_0 (\GNE_SYNC_RESET.scndry_resetn_reg_0 ),
        .Q({\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_12 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_13 ,\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_14 }),
        .SR(\GEN_AXI_LITE_IF.AXI_LITE_IF_I_n_14 ),
        .dma_mm2s_error(dma_mm2s_error),
        .dmacr_i(dmacr_i),
        .err_irq_reg_0(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_11 ),
        .error_d1_reg_0(error_d1_reg),
        .error_d1_reg_1(error_d1_reg_0),
        .error_d1_reg_2(error_d1_reg_1),
        .idle(idle),
        .idle_reg_0(idle_reg),
        .idle_reg_1(idle_reg_0),
        .ioc_irq_reg_0(\GEN_MM2S_REGISTERS.I_MM2S_DMA_REGISTER_n_15 ),
        .mm2s_decerr_i_reg(mm2s_decerr_i_reg),
        .mm2s_dmasr(mm2s_dmasr),
        .mm2s_halted_clr_reg(mm2s_halted_clr_reg),
        .mm2s_halted_set_reg(mm2s_halted_set_reg),
        .mm2s_interr_i_reg(mm2s_interr_i_reg),
        .mm2s_introut(mm2s_introut),
        .mm2s_length_wren(mm2s_length_wren),
        .mm2s_slverr_i_reg(mm2s_slverr_i_reg),
        .mm2s_stop_i(mm2s_stop_i),
        .out(out),
        .p_0_in1_in(p_0_in1_in),
        .p_11_out(p_11_out),
        .p_2_out({p_2_out[10],p_2_out[0]}),
        .p_3_out(p_3_out),
        .p_9_out(p_9_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .soft_reset_d1(soft_reset_d1),
        .soft_reset_d1_reg(soft_reset),
        .soft_reset_re0(soft_reset_re0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_register
   (mm2s_halted_clr_reg,
    soft_reset_d1_reg,
    mm2s_length_wren,
    mm2s_dmasr,
    idle,
    error_d1_reg_0,
    error_d1_reg_1,
    error_d1_reg_2,
    mm2s_introut,
    idle_reg_0,
    mm2s_stop_i,
    err_irq_reg_0,
    Q,
    ioc_irq_reg_0,
    soft_reset_re0,
    D,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[13] ,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ,
    \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ,
    \GEN_SYNC_READ.s_axi_lite_rdata_reg[4] ,
    s_axi_lite_aclk,
    dmacr_i,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    p_3_out,
    \GNE_SYNC_RESET.scndry_resetn_reg_0 ,
    idle_reg_1,
    mm2s_interr_i_reg,
    mm2s_slverr_i_reg,
    mm2s_decerr_i_reg,
    dma_mm2s_error,
    out,
    soft_reset_d1,
    p_11_out,
    p_2_out,
    s_axi_lite_wdata,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ,
    SR,
    p_0_in1_in,
    p_9_out,
    mm2s_halted_set_reg,
    E);
  output [0:0]mm2s_halted_clr_reg;
  output soft_reset_d1_reg;
  output mm2s_length_wren;
  output mm2s_dmasr;
  output idle;
  output error_d1_reg_0;
  output error_d1_reg_1;
  output error_d1_reg_2;
  output mm2s_introut;
  output idle_reg_0;
  output mm2s_stop_i;
  output err_irq_reg_0;
  output [2:0]Q;
  output ioc_irq_reg_0;
  output soft_reset_re0;
  output [20:0]D;
  output [8:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] ;
  output [31:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ;
  output \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ;
  output [1:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[4] ;
  input s_axi_lite_aclk;
  input [0:0]dmacr_i;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input p_3_out;
  input \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  input idle_reg_1;
  input mm2s_interr_i_reg;
  input mm2s_slverr_i_reg;
  input mm2s_decerr_i_reg;
  input dma_mm2s_error;
  input out;
  input soft_reset_d1;
  input p_11_out;
  input [1:0]p_2_out;
  input [31:0]s_axi_lite_wdata;
  input \GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ;
  input \GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ;
  input \GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ;
  input [0:0]SR;
  input p_0_in1_in;
  input p_9_out;
  input mm2s_halted_set_reg;
  input [0:0]E;

  wire [20:0]D;
  wire [0:0]E;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ;
  wire [31:0]\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] ;
  wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ;
  wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ;
  wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ;
  wire [8:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] ;
  wire [1:0]\GEN_SYNC_READ.s_axi_lite_rdata_reg[4] ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire dma_mm2s_error;
  wire [0:0]dmacr_i;
  wire \dmacr_i[0]_i_2_n_0 ;
  wire dmacr_i_reg0;
  wire \dmacr_i_reg_n_0_[16] ;
  wire \dmacr_i_reg_n_0_[17] ;
  wire \dmacr_i_reg_n_0_[18] ;
  wire \dmacr_i_reg_n_0_[19] ;
  wire \dmacr_i_reg_n_0_[20] ;
  wire \dmacr_i_reg_n_0_[21] ;
  wire \dmacr_i_reg_n_0_[22] ;
  wire \dmacr_i_reg_n_0_[23] ;
  wire \dmacr_i_reg_n_0_[24] ;
  wire \dmacr_i_reg_n_0_[25] ;
  wire \dmacr_i_reg_n_0_[26] ;
  wire \dmacr_i_reg_n_0_[27] ;
  wire \dmacr_i_reg_n_0_[28] ;
  wire \dmacr_i_reg_n_0_[29] ;
  wire \dmacr_i_reg_n_0_[30] ;
  wire \dmacr_i_reg_n_0_[31] ;
  wire err_irq_i_1_n_0;
  wire err_irq_reg_0;
  wire error_d1;
  wire error_d1_i_1_n_0;
  wire error_d1_reg_0;
  wire error_d1_reg_1;
  wire error_d1_reg_2;
  wire idle;
  wire idle_reg_0;
  wire idle_reg_1;
  wire introut_i_1_n_0;
  wire ioc_irq_i_1_n_0;
  wire ioc_irq_reg_0;
  wire mm2s_decerr_i_reg;
  wire mm2s_dmasr;
  wire [0:0]mm2s_halted_clr_reg;
  wire mm2s_halted_set_reg;
  wire mm2s_interr_i_reg;
  wire mm2s_introut;
  wire [11:7]mm2s_length;
  wire mm2s_length_wren;
  wire mm2s_slverr_i_reg;
  wire mm2s_stop_i;
  wire out;
  wire p_0_in1_in;
  wire p_11_out;
  wire [1:0]p_2_out;
  wire p_3_out;
  wire p_9_out;
  wire s_axi_lite_aclk;
  wire [31:0]s_axi_lite_wdata;
  wire soft_reset_d1;
  wire soft_reset_d1_reg;
  wire soft_reset_re0;

  LUT1 #(
    .INIT(2'h1)) 
    \GEN_CMD_BTT_LESS_23.cmnd_data[23]_i_1 
       (.I0(\GEN_SYNC_READ.s_axi_lite_rdata_reg[4] [0]),
        .O(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_MM2S_DMA_CONTROL.mm2s_stop_i_1 
       (.I0(soft_reset_d1_reg),
        .I1(dma_mm2s_error),
        .O(mm2s_stop_i));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[0]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [0]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[10]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [10]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[11]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [11]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[12]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [12]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[13]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [13]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[14]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [14]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[15]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [15]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[16]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [16]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[17]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [17]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[18]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [18]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[19]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [19]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[1]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [1]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[20]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [20]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[21]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [21]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[22]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [22]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[23]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [23]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[24]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [24]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[25]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [25]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[26]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [26]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[27]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [27]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[28]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [28]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[29]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [29]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[2]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [2]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[30]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [30]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[31]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [31]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[3]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [3]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[4]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [4]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[5]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [5]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[6]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [6]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[7]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [7]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[8]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [8]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_address_i_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(E),
        .D(s_axi_lite_wdata[9]),
        .Q(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [9]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[0]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [0]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[10]),
        .Q(mm2s_length[10]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[11]),
        .Q(mm2s_length[11]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[12]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [7]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[13]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [8]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[1]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [1]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[2]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [2]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[3]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [3]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[4]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [4]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[5]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [5]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[6]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[13] [6]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[7]),
        .Q(mm2s_length[7]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[8]),
        .Q(mm2s_length[8]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[1]),
        .D(s_axi_lite_wdata[9]),
        .Q(mm2s_length[9]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_REG_FOR_SMPL.buffer_length_wren_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(mm2s_length_wren),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[10]_i_1 
       (.I0(mm2s_length[10]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [10]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[11]_i_1 
       (.I0(mm2s_length[11]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [11]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[16]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [16]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[16] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[17]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [17]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[17] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[18]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [18]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[18] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[19]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [19]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[19] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[20]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [20]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[20] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[21]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [21]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[21] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[22]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [22]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[22] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[23]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [23]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[23] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[24]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [24]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[24] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[25]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [25]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[25] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[26]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [26]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[26] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[27]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [27]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[27] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[28]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [28]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[28] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[29]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [29]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[29] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[30]_i_1 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [30]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[30] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[31]_i_2 
       (.I0(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [31]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .I2(\dmacr_i_reg_n_0_[31] ),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4]_0 ),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[7]_i_1 
       (.I0(mm2s_length[7]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [7]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[8]_i_1 
       (.I0(mm2s_length[8]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [8]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \GEN_SYNC_READ.s_axi_lite_rdata[9]_i_1 
       (.I0(mm2s_length[9]),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[5] ),
        .I2(\GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] [9]),
        .I3(\GEN_SYNC_READ.axi2ip_rdaddr_reg[4] ),
        .O(D[2]));
  FDRE #(
    .INIT(1'b0)) 
    dma_decerr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_decerr_i_reg),
        .Q(error_d1_reg_2),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    dma_interr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_interr_i_reg),
        .Q(error_d1_reg_0),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    dma_slverr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(mm2s_slverr_i_reg),
        .Q(error_d1_reg_1),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \dmacr_i[0]_i_1 
       (.I0(\dmacr_i[0]_i_2_n_0 ),
        .I1(error_d1_reg_0),
        .I2(error_d1_reg_1),
        .I3(error_d1_reg_2),
        .O(dmacr_i_reg0));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \dmacr_i[0]_i_2 
       (.I0(soft_reset_d1_reg),
        .I1(out),
        .I2(p_11_out),
        .I3(mm2s_halted_clr_reg),
        .I4(p_2_out[0]),
        .I5(s_axi_lite_wdata[0]),
        .O(\dmacr_i[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dmacr_i_reg0),
        .Q(mm2s_halted_clr_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[12]),
        .Q(Q[0]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[13]),
        .Q(Q[1]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[14]),
        .Q(Q[2]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDSE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[16]),
        .Q(\dmacr_i_reg_n_0_[16] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[17]),
        .Q(\dmacr_i_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[18]),
        .Q(\dmacr_i_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[19]),
        .Q(\dmacr_i_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[20]),
        .Q(\dmacr_i_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[21]),
        .Q(\dmacr_i_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[22]),
        .Q(\dmacr_i_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[23]),
        .Q(\dmacr_i_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[24]),
        .Q(\dmacr_i_reg_n_0_[24] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[25]),
        .Q(\dmacr_i_reg_n_0_[25] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[26]),
        .Q(\dmacr_i_reg_n_0_[26] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[27]),
        .Q(\dmacr_i_reg_n_0_[27] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[28]),
        .Q(\dmacr_i_reg_n_0_[28] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[29]),
        .Q(\dmacr_i_reg_n_0_[29] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dmacr_i),
        .Q(soft_reset_d1_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[30]),
        .Q(\dmacr_i_reg_n_0_[30] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[31]),
        .Q(\dmacr_i_reg_n_0_[31] ),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[3]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[4] [0]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \dmacr_i_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(p_2_out[0]),
        .D(s_axi_lite_wdata[4]),
        .Q(\GEN_SYNC_READ.s_axi_lite_rdata_reg[4] [1]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT5 #(
    .INIT(32'h5DFF0C0C)) 
    err_irq_i_1
       (.I0(s_axi_lite_wdata[14]),
        .I1(error_d1_i_1_n_0),
        .I2(error_d1),
        .I3(p_0_in1_in),
        .I4(err_irq_reg_0),
        .O(err_irq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_irq_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(err_irq_i_1_n_0),
        .Q(err_irq_reg_0),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    error_d1_i_1
       (.I0(error_d1_reg_2),
        .I1(error_d1_reg_1),
        .I2(error_d1_reg_0),
        .O(error_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(error_d1_i_1_n_0),
        .Q(error_d1),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    halted_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.scndry_resetn_reg_0 ),
        .Q(mm2s_dmasr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    idle_i_3
       (.I0(dma_mm2s_error),
        .I1(soft_reset_d1_reg),
        .I2(mm2s_length_wren),
        .O(idle_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    idle_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(idle_reg_1),
        .Q(idle),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444400040004000)) 
    introut_i_1
       (.I0(soft_reset_d1_reg),
        .I1(out),
        .I2(err_irq_reg_0),
        .I3(Q[2]),
        .I4(ioc_irq_reg_0),
        .I5(Q[0]),
        .O(introut_i_1_n_0));
  FDRE introut_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(introut_i_1_n_0),
        .Q(mm2s_introut),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF777F7FFF000F0)) 
    ioc_irq_i_1
       (.I0(s_axi_lite_wdata[12]),
        .I1(p_0_in1_in),
        .I2(p_9_out),
        .I3(mm2s_stop_i),
        .I4(mm2s_halted_set_reg),
        .I5(ioc_irq_reg_0),
        .O(ioc_irq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ioc_irq_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(ioc_irq_i_1_n_0),
        .Q(ioc_irq_reg_0),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    soft_reset_re_i_1
       (.I0(soft_reset_d1_reg),
        .I1(soft_reset_d1),
        .O(soft_reset_re0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_reset
   (out,
    \GEN_FOR_SYNC.s_sof_generated_reg ,
    \GNE_SYNC_RESET.scndry_resetn_reg_0 ,
    mm2s_prmry_reset_out_n,
    mm2s_cntrl_reset_out_n,
    soft_reset_d1,
    error_d1_reg,
    \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg ,
    sig_s_h_halt_reg_reg,
    s_axi_lite_aclk,
    p_10_out,
    soft_reset,
    soft_reset_re0,
    p_11_out,
    scndry_out,
    soft_reset_clr,
    \smpl_cs_reg[1] ,
    mm2s_halt_cmplt,
    sig_rst2all_stop_request);
  output out;
  output \GEN_FOR_SYNC.s_sof_generated_reg ;
  output \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  output mm2s_prmry_reset_out_n;
  output mm2s_cntrl_reset_out_n;
  output soft_reset_d1;
  output error_d1_reg;
  output \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg ;
  output sig_s_h_halt_reg_reg;
  input s_axi_lite_aclk;
  input p_10_out;
  input soft_reset;
  input soft_reset_re0;
  input p_11_out;
  input scndry_out;
  input soft_reset_clr;
  input \smpl_cs_reg[1] ;
  input mm2s_halt_cmplt;
  input sig_rst2all_stop_request;

  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire \GEN_FOR_SYNC.s_sof_generated_reg ;
  wire \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg ;
  wire \GNE_SYNC_RESET.halt_i_i_1_n_0 ;
  wire \GNE_SYNC_RESET.min_assert_sftrst_i_1_n_0 ;
  wire \GNE_SYNC_RESET.s_soft_reset_i_i_1_n_0 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire \GNE_SYNC_RESET.scndry_resetn_reg_0 ;
  wire assert_sftrst_d1;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire dm_mm2s_scndry_resetn;
  wire error_d1_reg;
  wire halt;
  wire min_assert_sftrst;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire mm2s_cntrl_reset_out_n;
  wire mm2s_halt_cmplt;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire mm2s_prmry_reset_out_n;
  wire n_0_282;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire out;
  wire p_10_out;
  wire p_11_out;
  wire s_axi_lite_aclk;
  wire s_soft_reset_i;
  wire s_soft_reset_i_d1;
  wire s_soft_reset_i_re;
  wire scndry_out;
  wire sft_rst_dly1;
  wire sft_rst_dly2;
  wire sft_rst_dly3;
  wire sft_rst_dly4;
  wire sft_rst_dly5;
  wire sft_rst_dly6;
  wire sft_rst_dly7;
  wire sig_rst2all_stop_request;
  wire sig_s_h_halt_reg_reg;
  wire \smpl_cs_reg[1] ;
  wire soft_reset;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re;
  wire soft_reset_re0;

  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_i_1 
       (.I0(scndry_out),
        .I1(assert_sftrst_d1),
        .I2(min_assert_sftrst),
        .I3(soft_reset_clr),
        .O(\GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg ));
  LUT6 #(
    .INIT(64'h0000555400000000)) 
    \GNE_SYNC_RESET.halt_i_i_1 
       (.I0(s_soft_reset_i),
        .I1(soft_reset_re),
        .I2(p_11_out),
        .I3(halt),
        .I4(min_assert_sftrst),
        .I5(scndry_out),
        .O(\GNE_SYNC_RESET.halt_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.halt_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.halt_i_i_1_n_0 ),
        .Q(halt),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \GNE_SYNC_RESET.min_assert_sftrst_i_1 
       (.I0(sft_rst_dly7),
        .I1(min_assert_sftrst),
        .I2(s_soft_reset_i_d1),
        .I3(s_soft_reset_i),
        .O(\GNE_SYNC_RESET.min_assert_sftrst_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.min_assert_sftrst_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.min_assert_sftrst_i_1_n_0 ),
        .Q(min_assert_sftrst),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \GNE_SYNC_RESET.prmry_reset_out_n_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dm_mm2s_scndry_resetn),
        .Q(mm2s_prmry_reset_out_n),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.prmry_resetn_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dm_mm2s_scndry_resetn),
        .Q(\GEN_FOR_SYNC.s_sof_generated_reg ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \GNE_SYNC_RESET.s_soft_reset_i_i_1 
       (.I0(\smpl_cs_reg[1] ),
        .I1(mm2s_halt_cmplt),
        .I2(soft_reset),
        .I3(soft_reset_clr),
        .I4(s_soft_reset_i),
        .O(\GNE_SYNC_RESET.s_soft_reset_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.s_soft_reset_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GNE_SYNC_RESET.s_soft_reset_i_i_1_n_0 ),
        .Q(s_soft_reset_i),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \GNE_SYNC_RESET.scndry_resetn_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dm_mm2s_scndry_resetn),
        .Q(out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \GNE_SYNC_RESET.sft_rst_dly1_i_1 
       (.I0(s_soft_reset_i),
        .I1(s_soft_reset_i_d1),
        .O(s_soft_reset_i_re));
  FDSE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly1_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(1'b0),
        .Q(sft_rst_dly1),
        .S(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly2_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(sft_rst_dly1),
        .Q(sft_rst_dly2),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly3_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(sft_rst_dly2),
        .Q(sft_rst_dly3),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly4_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(sft_rst_dly3),
        .Q(sft_rst_dly4),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly5_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(sft_rst_dly4),
        .Q(sft_rst_dly5),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly6_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(sft_rst_dly5),
        .Q(sft_rst_dly6),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    \GNE_SYNC_RESET.sft_rst_dly7_reg 
       (.C(s_axi_lite_aclk),
        .CE(p_10_out),
        .D(sft_rst_dly6),
        .Q(sft_rst_dly7),
        .R(s_soft_reset_i_re));
  FDRE #(
    .INIT(1'b0)) 
    assert_sftrst_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(min_assert_sftrst),
        .Q(assert_sftrst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    dm_prmry_resetn_inferred_i_1
       (.I0(min_assert_sftrst),
        .I1(scndry_out),
        .I2(s_soft_reset_i),
        .O(dm_mm2s_scndry_resetn));
  LUT1 #(
    .INIT(2'h1)) 
    \dmacr_i[4]_i_1 
       (.I0(out),
        .O(error_d1_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(dm_mm2s_scndry_resetn),
        .O(\GNE_SYNC_RESET.scndry_resetn_reg_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(mm2s_cntrl_reset_out_n));
  LUT1 #(
    .INIT(2'h1)) 
    i_282
       (.I0(out),
        .O(n_0_282));
  FDRE #(
    .INIT(1'b0)) 
    s_soft_reset_i_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_soft_reset_i),
        .Q(s_soft_reset_i_d1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_s_h_halt_reg_i_1
       (.I0(halt),
        .I1(sig_rst2all_stop_request),
        .O(sig_s_h_halt_reg_reg));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_d1_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(soft_reset),
        .Q(soft_reset_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_re_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(soft_reset_re0),
        .Q(soft_reset_re),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_rst_module
   (out,
    \GEN_FOR_SYNC.s_sof_generated_reg ,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    mm2s_prmry_reset_out_n,
    mm2s_cntrl_reset_out_n,
    \GEN_SYNC_READ.axi2ip_rdaddr_reg[0] ,
    soft_reset_d1,
    soft_reset_clr,
    error_d1_reg,
    SR,
    \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ,
    sig_s_h_halt_reg_reg,
    s_axi_lite_aclk,
    p_10_out,
    soft_reset,
    soft_reset_re0,
    p_11_out,
    \smpl_cs_reg[1] ,
    mm2s_halt_cmplt,
    s_axi_lite_awaddr,
    rdy,
    sig_rst2all_stop_request,
    axi_resetn);
  output out;
  output \GEN_FOR_SYNC.s_sof_generated_reg ;
  output \GNE_SYNC_RESET.scndry_resetn_reg ;
  output mm2s_prmry_reset_out_n;
  output mm2s_cntrl_reset_out_n;
  output \GEN_SYNC_READ.axi2ip_rdaddr_reg[0] ;
  output soft_reset_d1;
  output soft_reset_clr;
  output error_d1_reg;
  output [0:0]SR;
  output \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  output sig_s_h_halt_reg_reg;
  input s_axi_lite_aclk;
  input p_10_out;
  input soft_reset;
  input soft_reset_re0;
  input p_11_out;
  input \smpl_cs_reg[1] ;
  input mm2s_halt_cmplt;
  input [0:0]s_axi_lite_awaddr;
  input rdy;
  input sig_rst2all_stop_request;
  input axi_resetn;

  wire \GEN_FOR_SYNC.s_sof_generated_reg ;
  wire \GEN_RESET_FOR_MM2S.RESET_I_n_7 ;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire \GEN_SYNC_READ.axi2ip_rdaddr_reg[0] ;
  wire \GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire [0:0]SR;
  wire axi_resetn;
  wire error_d1_reg;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire m_axi_sg_hrdresetn;
  wire mm2s_cntrl_reset_out_n;
  wire mm2s_halt_cmplt;
  wire mm2s_prmry_reset_out_n;
  wire out;
  wire p_10_out;
  wire p_11_out;
  wire rdy;
  wire s_axi_lite_aclk;
  wire [0:0]s_axi_lite_awaddr;
  wire sig_rst2all_stop_request;
  wire sig_s_h_halt_reg_reg;
  wire \smpl_cs_reg[1] ;
  wire soft_reset;
  wire soft_reset_clr;
  wire soft_reset_d1;
  wire soft_reset_re0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_reset \GEN_RESET_FOR_MM2S.RESET_I 
       (.\GEN_FOR_SYNC.s_sof_generated_reg (\GEN_FOR_SYNC.s_sof_generated_reg ),
        .\GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg (\GEN_RESET_FOR_MM2S.RESET_I_n_7 ),
        .\GNE_SYNC_RESET.scndry_resetn_reg_0 (\GNE_SYNC_RESET.scndry_resetn_reg ),
        .error_d1_reg(error_d1_reg),
        .mm2s_cntrl_reset_out_n(mm2s_cntrl_reset_out_n),
        .mm2s_halt_cmplt(mm2s_halt_cmplt),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .out(out),
        .p_10_out(p_10_out),
        .p_11_out(p_11_out),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .scndry_out(m_axi_sg_hrdresetn),
        .sig_rst2all_stop_request(sig_rst2all_stop_request),
        .sig_s_h_halt_reg_reg(sig_s_h_halt_reg_reg),
        .\smpl_cs_reg[1] (\smpl_cs_reg[1] ),
        .soft_reset(soft_reset),
        .soft_reset_clr(soft_reset_clr),
        .soft_reset_d1(soft_reset_d1),
        .soft_reset_re0(soft_reset_re0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RESET_FOR_MM2S.mm2s_soft_reset_done_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_RESET_FOR_MM2S.RESET_I_n_7 ),
        .Q(soft_reset_clr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBF)) 
    \GEN_SYNC_WRITE.axi2ip_wrce[10]_i_1 
       (.I0(s_axi_lite_awaddr),
        .I1(\GEN_SYNC_READ.axi2ip_rdaddr_reg[0] ),
        .I2(rdy),
        .O(\GEN_SYNC_WRITE.axi2ip_wrce_reg[10] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync REG_HRD_RST
       (.axi_resetn(axi_resetn),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .scndry_out(m_axi_sg_hrdresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 REG_HRD_RST_OUT
       (.axi_resetn(axi_resetn),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .scndry_out(\GEN_SYNC_READ.axi2ip_rdaddr_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    arready_i_i_1
       (.I0(\GEN_SYNC_READ.axi2ip_rdaddr_reg[0] ),
        .O(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_smple_sm
   (p_9_out,
    smpl_cs,
    p_10_out,
    mm2s_halted_set0,
    sts_received_i_reg,
    idle_reg,
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg ,
    D,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    write_cmnd_cmb,
    s_axi_lite_aclk,
    out,
    sts_received_i_reg_0,
    mm2s_error_reg,
    soft_reset,
    mm2s_length_wren,
    mm2s_stop_i,
    mm2s_dmacr,
    mm2s_halt_cmplt,
    m_axis_mm2s_sts_tvalid_int,
    s_axis_mm2s_cmd_tready,
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ,
    mm2s_error_reg_0,
    Q,
    \dmacr_i_reg[3] ,
    \GEN_REG_FOR_SMPL.buffer_length_i_reg[6] );
  output p_9_out;
  output [1:0]smpl_cs;
  output p_10_out;
  output mm2s_halted_set0;
  output sts_received_i_reg;
  output idle_reg;
  output \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg ;
  output [40:0]D;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input write_cmnd_cmb;
  input s_axi_lite_aclk;
  input out;
  input sts_received_i_reg_0;
  input mm2s_error_reg;
  input soft_reset;
  input mm2s_length_wren;
  input mm2s_stop_i;
  input [0:0]mm2s_dmacr;
  input mm2s_halt_cmplt;
  input m_axis_mm2s_sts_tvalid_int;
  input s_axis_mm2s_cmd_tready;
  input \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ;
  input mm2s_error_reg_0;
  input [31:0]Q;
  input \dmacr_i_reg[3] ;
  input [6:0]\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] ;

  wire [40:0]D;
  wire \GEN_CMD_BTT_LESS_23.cmnd_data[30]_i_1_n_0 ;
  wire \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg ;
  wire \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ;
  wire [6:0]\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire [31:0]Q;
  wire cmnds_queued;
  wire cmnds_queued_i_1_n_0;
  wire \dmacr_i_reg[3] ;
  wire idle_reg;
  wire m_axis_mm2s_sts_tvalid_int;
  wire [0:0]mm2s_dmacr;
  wire mm2s_error_reg;
  wire mm2s_error_reg_0;
  wire mm2s_halt_cmplt;
  wire mm2s_halted_set0;
  wire mm2s_length_wren;
  wire mm2s_stop_i;
  wire out;
  wire p_10_out;
  wire p_10_out_0;
  wire p_9_out;
  wire s_axi_lite_aclk;
  wire s_axis_mm2s_cmd_tready;
  wire [1:0]smpl_cs;
  wire \smpl_cs[0]_i_1_n_0 ;
  wire \smpl_cs[1]_i_1_n_0 ;
  wire \smpl_cs[1]_i_2_n_0 ;
  wire soft_reset;
  wire sts_received_clr_cmb;
  wire sts_received_i_reg;
  wire sts_received_i_reg_0;
  wire write_cmnd_cmb;

  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_CMD_BTT_LESS_23.cmnd_data[30]_i_1 
       (.I0(out),
        .I1(mm2s_error_reg_0),
        .I2(D[8]),
        .O(\GEN_CMD_BTT_LESS_23.cmnd_data[30]_i_1_n_0 ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [0]),
        .Q(D[0]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [1]),
        .Q(D[1]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\dmacr_i_reg[3] ),
        .Q(D[7]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [2]),
        .Q(D[2]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_CMD_BTT_LESS_23.cmnd_data[30]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[32] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[0]),
        .Q(D[9]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[33] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[1]),
        .Q(D[10]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[34] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[2]),
        .Q(D[11]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[35] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[3]),
        .Q(D[12]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[36] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[4]),
        .Q(D[13]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[37] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[5]),
        .Q(D[14]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[38] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[6]),
        .Q(D[15]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[39] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[7]),
        .Q(D[16]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [3]),
        .Q(D[3]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[40] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[8]),
        .Q(D[17]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[41] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[9]),
        .Q(D[18]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[42] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[10]),
        .Q(D[19]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[43] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[11]),
        .Q(D[20]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[44] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[12]),
        .Q(D[21]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[45] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[13]),
        .Q(D[22]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[46] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[14]),
        .Q(D[23]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[47] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[15]),
        .Q(D[24]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[48] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[16]),
        .Q(D[25]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[49] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[17]),
        .Q(D[26]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [4]),
        .Q(D[4]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[50] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[18]),
        .Q(D[27]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[51] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[19]),
        .Q(D[28]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[52] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[20]),
        .Q(D[29]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[53] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[21]),
        .Q(D[30]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[54] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[22]),
        .Q(D[31]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[55] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[23]),
        .Q(D[32]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[56] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[24]),
        .Q(D[33]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[57] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[25]),
        .Q(D[34]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[58] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[26]),
        .Q(D[35]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[59] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[27]),
        .Q(D[36]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [5]),
        .Q(D[5]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[60] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[28]),
        .Q(D[37]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[61] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[29]),
        .Q(D[38]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[62] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[30]),
        .Q(D[39]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[63] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(Q[31]),
        .Q(D[40]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \GEN_CMD_BTT_LESS_23.cmnd_data_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(mm2s_error_reg_0),
        .D(\GEN_REG_FOR_SMPL.buffer_length_i_reg[6] [6]),
        .Q(D[6]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_CMD_BTT_LESS_23.cmnd_wr_i_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(write_cmnd_cmb),
        .Q(p_10_out_0),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT3 #(
    .INIT(8'hDC)) 
    \GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_i_1 
       (.I0(s_axis_mm2s_cmd_tready),
        .I1(p_10_out_0),
        .I2(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ),
        .O(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg ));
  LUT3 #(
    .INIT(8'h01)) 
    \GNE_SYNC_RESET.s_soft_reset_i_i_2 
       (.I0(smpl_cs[1]),
        .I1(smpl_cs[0]),
        .I2(cmnds_queued),
        .O(idle_reg));
  LUT6 #(
    .INIT(64'h0101000101010101)) 
    \GNE_SYNC_RESET.sft_rst_dly1_i_2 
       (.I0(cmnds_queued),
        .I1(smpl_cs[0]),
        .I2(smpl_cs[1]),
        .I3(mm2s_dmacr),
        .I4(mm2s_stop_i),
        .I5(mm2s_length_wren),
        .O(p_10_out));
  LUT6 #(
    .INIT(64'h0000000000008A88)) 
    cmnds_queued_i_1
       (.I0(out),
        .I1(p_10_out_0),
        .I2(sts_received_i_reg_0),
        .I3(cmnds_queued),
        .I4(mm2s_error_reg),
        .I5(soft_reset),
        .O(cmnds_queued_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cmnds_queued_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(cmnds_queued_i_1_n_0),
        .Q(cmnds_queued),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    mm2s_halted_set_i_1
       (.I0(mm2s_dmacr),
        .I1(smpl_cs[1]),
        .I2(smpl_cs[0]),
        .I3(cmnds_queued),
        .I4(mm2s_stop_i),
        .I5(mm2s_halt_cmplt),
        .O(mm2s_halted_set0));
  LUT6 #(
    .INIT(64'h0002FFFF00FF0000)) 
    \smpl_cs[0]_i_1 
       (.I0(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ),
        .I1(mm2s_error_reg),
        .I2(soft_reset),
        .I3(smpl_cs[1]),
        .I4(\smpl_cs[1]_i_2_n_0 ),
        .I5(smpl_cs[0]),
        .O(\smpl_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101FFFF00300000)) 
    \smpl_cs[1]_i_1 
       (.I0(sts_received_i_reg_0),
        .I1(mm2s_stop_i),
        .I2(smpl_cs[0]),
        .I3(\GEN_NO_HOLD_DATA.s_axis_mm2s_cmd_tvalid_reg_0 ),
        .I4(\smpl_cs[1]_i_2_n_0 ),
        .I5(smpl_cs[1]),
        .O(\smpl_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0400)) 
    \smpl_cs[1]_i_2 
       (.I0(cmnds_queued),
        .I1(mm2s_length_wren),
        .I2(mm2s_stop_i),
        .I3(mm2s_dmacr),
        .I4(smpl_cs[1]),
        .I5(smpl_cs[0]),
        .O(\smpl_cs[1]_i_2_n_0 ));
  FDRE \smpl_cs_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\smpl_cs[0]_i_1_n_0 ),
        .Q(smpl_cs[0]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE \smpl_cs_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\smpl_cs[1]_i_1_n_0 ),
        .Q(smpl_cs[1]),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT5 #(
    .INIT(32'h44444440)) 
    sts_received_clr_i_1
       (.I0(smpl_cs[0]),
        .I1(smpl_cs[1]),
        .I2(sts_received_i_reg_0),
        .I3(soft_reset),
        .I4(mm2s_error_reg),
        .O(sts_received_clr_cmb));
  FDRE sts_received_clr_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(sts_received_clr_cmb),
        .Q(p_9_out),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT4 #(
    .INIT(16'h4440)) 
    sts_received_i_i_1
       (.I0(p_9_out),
        .I1(out),
        .I2(sts_received_i_reg_0),
        .I3(m_axis_mm2s_sts_tvalid_int),
        .O(sts_received_i_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma_sofeof_gen
   (axi_dma_tstvec,
    \GNE_SYNC_RESET.scndry_resetn_reg ,
    s_axi_lite_aclk,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    out);
  output [1:0]axi_dma_tstvec;
  input \GNE_SYNC_RESET.scndry_resetn_reg ;
  input s_axi_lite_aclk;
  input m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  input m_axis_mm2s_tlast;
  input out;

  wire \GEN_FOR_SYNC.s_sof_generated_i_1_n_0 ;
  wire \GNE_SYNC_RESET.scndry_resetn_reg ;
  wire [1:0]axi_dma_tstvec;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire out;
  wire p_0_out;
  wire p_5_in;
  wire s_axi_lite_aclk;
  wire s_last;
  wire s_last_d1;
  wire s_ready;
  wire s_sof_d1_cdc_tig;
  wire s_sof_generated;
  wire s_valid;
  wire s_valid_d1;

  LUT3 #(
    .INIT(8'h80)) 
    \GEN_FOR_SYNC.s_last_d1_i_1 
       (.I0(s_valid),
        .I1(s_ready),
        .I2(s_last),
        .O(p_0_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_last_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(s_last_d1),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_last_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(m_axis_mm2s_tlast),
        .Q(s_last),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_ready_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(m_axis_mm2s_tready),
        .Q(s_ready),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_sof_d1_cdc_tig_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_sof_generated),
        .Q(s_sof_d1_cdc_tig),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  LUT6 #(
    .INIT(64'h00000000FBAA0000)) 
    \GEN_FOR_SYNC.s_sof_generated_i_1 
       (.I0(s_sof_generated),
        .I1(s_valid_d1),
        .I2(s_sof_d1_cdc_tig),
        .I3(p_5_in),
        .I4(out),
        .I5(axi_dma_tstvec[1]),
        .O(\GEN_FOR_SYNC.s_sof_generated_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_sof_generated_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\GEN_FOR_SYNC.s_sof_generated_i_1_n_0 ),
        .Q(s_sof_generated),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_FOR_SYNC.s_valid_d1_i_1 
       (.I0(s_ready),
        .I1(s_valid),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_valid_d1_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(p_5_in),
        .Q(s_valid_d1),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_FOR_SYNC.s_valid_reg 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(m_axis_mm2s_tvalid),
        .Q(s_valid),
        .R(\GNE_SYNC_RESET.scndry_resetn_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20003000)) 
    \axi_dma_tstvec[0]_INST_0 
       (.I0(s_sof_d1_cdc_tig),
        .I1(s_sof_generated),
        .I2(s_valid),
        .I3(s_ready),
        .I4(s_valid_d1),
        .O(axi_dma_tstvec[0]));
  LUT6 #(
    .INIT(64'h0080808000800080)) 
    \axi_dma_tstvec[1]_INST_0 
       (.I0(s_last),
        .I1(s_valid),
        .I2(s_ready),
        .I3(s_last_d1),
        .I4(s_sof_generated),
        .I5(s_sof_d1_cdc_tig),
        .O(axi_dma_tstvec[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (scndry_out,
    axi_resetn,
    s_axi_lite_aclk);
  output scndry_out;
  input axi_resetn;
  input s_axi_lite_aclk;

  wire axi_resetn;
  wire s_axi_lite_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_resetn),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_lite_aclk),
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
       (.C(s_axi_lite_aclk),
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
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
   (scndry_out,
    axi_resetn,
    s_axi_lite_aclk);
  output scndry_out;
  input axi_resetn;
  input s_axi_lite_aclk;

  wire axi_resetn;
  wire s_axi_lite_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_resetn),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_lite_aclk),
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
       (.C(s_axi_lite_aclk),
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
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f
   (sig_first_dbeat_reg,
    sig_dqual_reg_empty_reg,
    Q,
    fifo_full_p1,
    FIFO_Full_reg,
    sig_next_eof_reg_reg,
    D,
    E,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    sig_first_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    FIFO_Full_reg_0,
    sig_inhibit_rdy_n,
    sig_mstr2data_cmd_valid,
    sig_next_calc_error_reg_reg,
    sig_rd_sts_reg_full_reg,
    sig_next_calc_error_reg,
    \sig_addr_posted_cntr_reg[1] ,
    m_axi_mm2s_rlast,
    sig_s_ready_out_reg,
    \sig_dbeat_cntr_reg[4] ,
    \sig_dbeat_cntr_reg[1] ,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_dqual_reg_empty_reg_0,
    \sig_dbeat_cntr_reg[7]_0 ,
    out,
    \sig_dbeat_cntr_reg[1]_0 ,
    \sig_dbeat_cntr_reg[2] ,
    sig_ld_new_cmd_reg,
    sig_addr_posted_cntr,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4]_0 ,
    \INFERRED_GEN.cnt_i_reg[0]_1 ,
    sig_last_dbeat_reg_0,
    SR,
    m_axi_mm2s_aclk);
  output sig_first_dbeat_reg;
  output sig_dqual_reg_empty_reg;
  output [1:0]Q;
  output fifo_full_p1;
  output FIFO_Full_reg;
  output [0:0]sig_next_eof_reg_reg;
  output [7:0]D;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input sig_first_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input FIFO_Full_reg_0;
  input sig_inhibit_rdy_n;
  input sig_mstr2data_cmd_valid;
  input sig_next_calc_error_reg_reg;
  input sig_rd_sts_reg_full_reg;
  input sig_next_calc_error_reg;
  input \sig_addr_posted_cntr_reg[1] ;
  input m_axi_mm2s_rlast;
  input sig_s_ready_out_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_dqual_reg_empty_reg_0;
  input [7:0]\sig_dbeat_cntr_reg[7]_0 ;
  input [4:0]out;
  input \sig_dbeat_cntr_reg[1]_0 ;
  input \sig_dbeat_cntr_reg[2] ;
  input sig_ld_new_cmd_reg;
  input [2:0]sig_addr_posted_cntr;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4]_0 ;
  input \INFERRED_GEN.cnt_i_reg[0]_1 ;
  input sig_last_dbeat_reg_0;
  input [0:0]SR;
  input m_axi_mm2s_aclk;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i[1]_i_3_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_3_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_4_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_5_n_0 ;
  wire \INFERRED_GEN.cnt_i[2]_i_6_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_1 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire [4:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr_reg[1] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[1]_0 ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[4]_0 ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire [7:0]\sig_dbeat_cntr_reg[7]_0 ;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_first_dbeat_i_3_n_0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n;
  wire sig_last_dbeat_i_3_n_0;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_cmd_cmplt_reg_i_3_n_0;
  wire [0:0]sig_next_eof_reg_reg;
  wire sig_rd_empty;
  wire sig_rd_sts_reg_full_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_s_ready_out_reg;
  wire sig_stat2rsc_status_ready;

  LUT6 #(
    .INIT(64'h40F4000040040000)) 
    FIFO_Full_i_1__0
       (.I0(sig_rd_empty),
        .I1(sig_next_calc_error_reg_reg),
        .I2(Q[0]),
        .I3(FIFO_Full_reg),
        .I4(Q[1]),
        .I5(sig_dqual_reg_empty_reg),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hCACCCCCCACAAAAAA)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .I2(FIFO_Full_reg_0),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_mstr2data_cmd_valid),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  LUT5 #(
    .INIT(32'hF2BCC2B0)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(FIFO_Full_reg),
        .I4(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \INFERRED_GEN.cnt_i[1]_i_2__0 
       (.I0(sig_mstr2data_cmd_valid),
        .I1(sig_inhibit_rdy_n),
        .I2(FIFO_Full_reg_0),
        .O(FIFO_Full_reg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \INFERRED_GEN.cnt_i[1]_i_3 
       (.I0(sig_next_calc_error_reg),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_next_cmd_cmplt_reg_i_3_n_0),
        .O(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF40404040FFEA)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(sig_rd_sts_reg_full_reg),
        .I1(\INFERRED_GEN.cnt_i[2]_i_3_n_0 ),
        .I2(\INFERRED_GEN.cnt_i[2]_i_4_n_0 ),
        .I3(\INFERRED_GEN.cnt_i[2]_i_5_n_0 ),
        .I4(sig_rd_empty),
        .I5(\INFERRED_GEN.cnt_i[2]_i_6_n_0 ),
        .O(addr_i_p1[2]));
  LUT3 #(
    .INIT(8'h7F)) 
    \INFERRED_GEN.cnt_i[2]_i_3 
       (.I0(sig_addr_posted_cntr[1]),
        .I1(sig_addr_posted_cntr[0]),
        .I2(sig_addr_posted_cntr[2]),
        .O(\INFERRED_GEN.cnt_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100010101010101)) 
    \INFERRED_GEN.cnt_i[2]_i_4 
       (.I0(sig_next_calc_error_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(FIFO_Full_reg_0),
        .I4(sig_inhibit_rdy_n),
        .I5(sig_mstr2data_cmd_valid),
        .O(\INFERRED_GEN.cnt_i[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \INFERRED_GEN.cnt_i[2]_i_5 
       (.I0(sig_addr_posted_cntr[0]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[2]),
        .I3(sig_next_calc_error_reg),
        .O(\INFERRED_GEN.cnt_i[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \INFERRED_GEN.cnt_i[2]_i_6 
       (.I0(Q[0]),
        .I1(sig_mstr2data_cmd_valid),
        .I2(sig_inhibit_rdy_n),
        .I3(FIFO_Full_reg_0),
        .I4(Q[1]),
        .O(\INFERRED_GEN.cnt_i[2]_i_6_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(\sig_dbeat_cntr_reg[7]_0 [0]),
        .I1(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .I2(out[0]),
        .I3(sig_dqual_reg_empty_reg),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(out[1]),
        .I2(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .I3(\sig_dbeat_cntr_reg[7]_0 [0]),
        .I4(\sig_dbeat_cntr_reg[7]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(out[2]),
        .I2(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .I3(\sig_dbeat_cntr_reg[7]_0 [1]),
        .I4(\sig_dbeat_cntr_reg[7]_0 [0]),
        .I5(\sig_dbeat_cntr_reg[7]_0 [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(out[3]),
        .I2(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .I3(\sig_dbeat_cntr_reg[1]_0 ),
        .I4(\sig_dbeat_cntr_reg[7]_0 [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(out[4]),
        .I2(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .I3(\sig_dbeat_cntr_reg[2] ),
        .I4(\sig_dbeat_cntr_reg[7]_0 [4]),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h90)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(\sig_dbeat_cntr_reg[3] ),
        .I1(\sig_dbeat_cntr_reg[7]_0 [5]),
        .I2(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(\sig_dbeat_cntr_reg[4]_0 ),
        .I1(\sig_dbeat_cntr_reg[7]_0 [6]),
        .I2(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_dqual_reg_empty_reg),
        .I1(\sig_dbeat_cntr_reg[7] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(\sig_dbeat_cntr_reg[7]_0 [6]),
        .I1(\sig_dbeat_cntr_reg[4]_0 ),
        .I2(\sig_dbeat_cntr_reg[7]_0 [7]),
        .I3(\INFERRED_GEN.cnt_i[1]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h8A808A808A800000)) 
    sig_first_dbeat_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_first_dbeat_reg_0),
        .I4(\sig_dbeat_cntr_reg[7] ),
        .I5(sig_first_dbeat_i_3_n_0),
        .O(sig_first_dbeat_reg));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h22020000)) 
    sig_first_dbeat_i_3
       (.I0(\INFERRED_GEN.cnt_i[2]_i_3_n_0 ),
        .I1(sig_rd_empty),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_stat2rsc_status_ready),
        .I4(sig_dqual_reg_empty_reg_0),
        .O(sig_first_dbeat_i_3_n_0));
  LUT6 #(
    .INIT(64'hECFCECCCEC0CECCC)) 
    sig_last_dbeat_i_1
       (.I0(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I1(sig_last_dbeat_i_3_n_0),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I3(sig_dqual_reg_empty_reg),
        .I4(\sig_dbeat_cntr_reg[7] ),
        .I5(sig_last_dbeat_reg_0),
        .O(sig_last_dbeat_reg));
  LUT6 #(
    .INIT(64'h0808000800080008)) 
    sig_last_dbeat_i_3
       (.I0(\sig_dbeat_cntr_reg[4] ),
        .I1(\sig_dbeat_cntr_reg[1] ),
        .I2(sig_s_ready_out_reg),
        .I3(\INFERRED_GEN.cnt_i[2]_i_3_n_0 ),
        .I4(\sig_addr_posted_cntr_reg[1] ),
        .I5(sig_next_cmd_cmplt_reg_i_3_n_0),
        .O(sig_last_dbeat_i_3_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_dqual_reg_empty_reg),
        .O(sig_ld_new_cmd_reg_reg));
  LUT6 #(
    .INIT(64'h00008F00FFFFFFFF)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(\sig_addr_posted_cntr_reg[1] ),
        .I2(\INFERRED_GEN.cnt_i[2]_i_3_n_0 ),
        .I3(m_axi_mm2s_rlast),
        .I4(sig_s_ready_out_reg),
        .I5(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_next_eof_reg_reg));
  LUT6 #(
    .INIT(64'h0000404400000000)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(sig_next_calc_error_reg),
        .I1(sig_dqual_reg_empty_reg_0),
        .I2(sig_stat2rsc_status_ready),
        .I3(sig_rsc2stat_status_valid),
        .I4(sig_rd_empty),
        .I5(\INFERRED_GEN.cnt_i[2]_i_3_n_0 ),
        .O(sig_dqual_reg_empty_reg));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFF75)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(sig_dqual_reg_empty_reg_0),
        .I1(sig_stat2rsc_status_ready),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_rd_empty),
        .O(sig_next_cmd_cmplt_reg_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f_1
   (fifo_full_p1,
    Q,
    FIFO_Full_reg,
    sig_posted_to_axi_reg,
    sig_push_addr_reg1_out,
    sig_addr_reg_empty_reg,
    sig_data2addr_stop_req,
    FIFO_Full_reg_0,
    sig_inhibit_rdy_n,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    SR,
    m_axi_mm2s_aclk);
  output fifo_full_p1;
  output [1:0]Q;
  output FIFO_Full_reg;
  output sig_posted_to_axi_reg;
  output sig_push_addr_reg1_out;
  input sig_addr_reg_empty_reg;
  input sig_data2addr_stop_req;
  input FIFO_Full_reg_0;
  input sig_inhibit_rdy_n;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [0:0]SR;
  input m_axi_mm2s_aclk;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i[1]_i_2_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]addr_i_p1;
  wire fifo_full_p1;
  wire m_axi_mm2s_aclk;
  wire sig_addr_reg_empty_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_posted_to_axi_reg;
  wire sig_push_addr_reg1_out;
  wire sig_rd_empty;

  LUT6 #(
    .INIT(64'h0D00020D00000000)) 
    FIFO_Full_i_1
       (.I0(sig_addr_reg_empty_reg),
        .I1(sig_data2addr_stop_req),
        .I2(sig_rd_empty),
        .I3(Q[0]),
        .I4(FIFO_Full_reg),
        .I5(Q[1]),
        .O(fifo_full_p1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96999999)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(\INFERRED_GEN.cnt_i[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(FIFO_Full_reg_0),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_mstr2addr_cmd_valid),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hF7FFFF08080000F7)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(sig_inhibit_rdy_n),
        .I2(FIFO_Full_reg_0),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i[1]_i_2_n_0 ),
        .I5(Q[1]),
        .O(addr_i_p1[1]));
  LUT3 #(
    .INIT(8'hFD)) 
    \INFERRED_GEN.cnt_i[1]_i_2 
       (.I0(sig_addr_reg_empty_reg),
        .I1(sig_data2addr_stop_req),
        .I2(sig_rd_empty),
        .O(\INFERRED_GEN.cnt_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F00BF0F0F4F0F0)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(sig_data2addr_stop_req),
        .I1(sig_addr_reg_empty_reg),
        .I2(sig_rd_empty),
        .I3(Q[0]),
        .I4(FIFO_Full_reg),
        .I5(Q[1]),
        .O(addr_i_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \INFERRED_GEN.cnt_i[2]_i_2 
       (.I0(sig_mstr2addr_cmd_valid),
        .I1(sig_inhibit_rdy_n),
        .I2(FIFO_Full_reg_0),
        .O(FIFO_Full_reg));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(sig_rd_empty),
        .I1(sig_data2addr_stop_req),
        .I2(sig_addr_reg_empty_reg),
        .O(sig_push_addr_reg1_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    sig_posted_to_axi_2_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_rd_empty),
        .I2(sig_data2addr_stop_req),
        .I3(sig_addr_reg_empty_reg),
        .O(sig_posted_to_axi_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f
   (sig_addr_valid_reg_reg,
    out,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_mstr2addr_cmd_valid,
    in,
    Q,
    m_axi_mm2s_aclk);
  output sig_addr_valid_reg_reg;
  output [39:0]out;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_mstr2addr_cmd_valid;
  input [38:0]in;
  input [1:0]Q;
  input m_axi_mm2s_aclk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [38:0]in;
  wire m_axi_mm2s_aclk;
  wire [39:0]out;
  wire sig_addr_valid_reg_reg;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_wr_fifo;

  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[37]),
        .Q(out[38]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[37]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[36]),
        .Q(out[36]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][31]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][32]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][33]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][34]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][35]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][36]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][37]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][38]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][47]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][48]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][49]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][50]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][51]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][52]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][53]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][54]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.data_reg[3][54]_srl4_i_1 
       (.I0(FIFO_Full_reg),
        .I1(sig_inhibit_rdy_n),
        .I2(sig_mstr2addr_cmd_valid),
        .O(sig_wr_fifo));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[38]),
        .Q(out[39]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_1
       (.I0(out[39]),
        .O(sig_addr_valid_reg_reg));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f__parameterized0
   (sig_first_dbeat_reg,
    out,
    sig_last_dbeat_reg,
    FIFO_Full_reg,
    sig_inhibit_rdy_n,
    sig_mstr2data_cmd_valid,
    in,
    Q,
    m_axi_mm2s_aclk);
  output sig_first_dbeat_reg;
  output [15:0]out;
  output sig_last_dbeat_reg;
  input FIFO_Full_reg;
  input sig_inhibit_rdy_n;
  input sig_mstr2data_cmd_valid;
  input [9:0]in;
  input [1:0]Q;
  input m_axi_mm2s_aclk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire [9:0]in;
  wire m_axi_mm2s_aclk;
  wire [15:0]out;
  wire sig_first_dbeat_reg;
  wire sig_inhibit_rdy_n;
  wire sig_last_dbeat_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_wr_fifo;

  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][10]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[6]),
        .Q(out[11]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[5]),
        .Q(out[10]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[9]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][13]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[8]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][14]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[7]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[6]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[5]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1 
       (.I0(FIFO_Full_reg),
        .I1(sig_inhibit_rdy_n),
        .I2(sig_mstr2data_cmd_valid),
        .O(sig_wr_fifo));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][4]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[9]),
        .Q(out[15]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][5]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(1'b1),
        .Q(out[14]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][7]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[8]),
        .Q(out[13]));
  (* srl_bus_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "U0/\I_PRMRY_DATAMOVER/GEN_MM2S_BASIC.I_MM2S_BASIC_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][9]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(sig_wr_fifo),
        .CLK(m_axi_mm2s_aclk),
        .D(in[7]),
        .Q(out[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sig_first_dbeat_i_2
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[4]),
        .I3(out[2]),
        .I4(out[1]),
        .O(sig_first_dbeat_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    sig_last_dbeat_i_2
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[4]),
        .I4(out[3]),
        .O(sig_last_dbeat_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f
   (FIFO_Full_reg,
    sig_posted_to_axi_reg,
    sig_push_addr_reg1_out,
    sig_addr_valid_reg_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_addr_reg_empty_reg,
    sig_data2addr_stop_req,
    sig_inhibit_rdy_n,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    in);
  output FIFO_Full_reg;
  output sig_posted_to_axi_reg;
  output sig_push_addr_reg1_out;
  output sig_addr_valid_reg_reg;
  output [39:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_addr_reg_empty_reg;
  input sig_data2addr_stop_req;
  input sig_inhibit_rdy_n;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [38:0]in;

  wire FIFO_Full_reg;
  wire [0:0]SR;
  wire [38:0]in;
  wire m_axi_mm2s_aclk;
  wire [39:0]out;
  wire sig_addr_reg_empty_reg;
  wire sig_addr_valid_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_posted_to_axi_reg;
  wire sig_push_addr_reg1_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f__parameterized0
   (sig_first_dbeat_reg,
    sig_dqual_reg_empty_reg,
    FIFO_Full_reg,
    sig_next_eof_reg_reg,
    D,
    E,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_first_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    sig_inhibit_rdy_n,
    sig_mstr2data_cmd_valid,
    sig_rd_sts_reg_full_reg,
    sig_next_calc_error_reg,
    \sig_addr_posted_cntr_reg[1] ,
    m_axi_mm2s_rlast,
    sig_s_ready_out_reg,
    \sig_dbeat_cntr_reg[4] ,
    \sig_dbeat_cntr_reg[1] ,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_dqual_reg_empty_reg_0,
    Q,
    \sig_dbeat_cntr_reg[1]_0 ,
    \sig_dbeat_cntr_reg[2] ,
    sig_ld_new_cmd_reg,
    sig_addr_posted_cntr,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4]_0 ,
    sig_last_dbeat_reg_0,
    in);
  output sig_first_dbeat_reg;
  output sig_dqual_reg_empty_reg;
  output FIFO_Full_reg;
  output [0:0]sig_next_eof_reg_reg;
  output [7:0]D;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  output [10:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_first_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input sig_inhibit_rdy_n;
  input sig_mstr2data_cmd_valid;
  input sig_rd_sts_reg_full_reg;
  input sig_next_calc_error_reg;
  input \sig_addr_posted_cntr_reg[1] ;
  input m_axi_mm2s_rlast;
  input sig_s_ready_out_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_dqual_reg_empty_reg_0;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[1]_0 ;
  input \sig_dbeat_cntr_reg[2] ;
  input sig_ld_new_cmd_reg;
  input [2:0]sig_addr_posted_cntr;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4]_0 ;
  input sig_last_dbeat_reg_0;
  input [9:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [9:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire [10:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr_reg[1] ;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[1]_0 ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[4]_0 ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire [0:0]sig_next_eof_reg_reg;
  wire sig_rd_sts_reg_full_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_s_ready_out_reg;
  wire sig_stat2rsc_status_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f__parameterized0 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .Q(Q),
        .SR(SR),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .out(out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[1] (\sig_addr_posted_cntr_reg[1] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[1] ),
        .\sig_dbeat_cntr_reg[1]_0 (\sig_dbeat_cntr_reg[1]_0 ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[4]_0 (\sig_dbeat_cntr_reg[4]_0 ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr_reg[7] ),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_eof_reg_reg(sig_next_eof_reg_reg),
        .sig_rd_sts_reg_full_reg(sig_rd_sts_reg_full_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f
   (FIFO_Full_reg_0,
    sig_posted_to_axi_reg,
    sig_push_addr_reg1_out,
    sig_addr_valid_reg_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_addr_reg_empty_reg,
    sig_data2addr_stop_req,
    sig_inhibit_rdy_n,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    in);
  output FIFO_Full_reg_0;
  output sig_posted_to_axi_reg;
  output sig_push_addr_reg1_out;
  output sig_addr_valid_reg_reg;
  output [39:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_addr_reg_empty_reg;
  input sig_data2addr_stop_req;
  input sig_inhibit_rdy_n;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [38:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_n_0;
  wire [0:0]SR;
  wire fifo_full_p1;
  wire [38:0]in;
  wire m_axi_mm2s_aclk;
  wire [39:0]out;
  wire sig_addr_reg_empty_reg;
  wire sig_addr_valid_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_data2addr_stop_req;
  wire sig_inhibit_rdy_n;
  wire sig_mstr2addr_cmd_valid;
  wire sig_posted_to_axi_reg;
  wire sig_push_addr_reg1_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f_1 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_0),
        .FIFO_Full_reg_0(FIFO_Full_reg_n_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .SR(SR),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .sig_addr_reg_empty_reg(sig_addr_reg_empty_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2addr_stop_req(sig_data2addr_stop_req),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_posted_to_axi_reg(sig_posted_to_axi_reg),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f DYNSHREG_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out(out),
        .sig_addr_valid_reg_reg(sig_addr_valid_reg_reg),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f__parameterized0
   (sig_first_dbeat_reg,
    sig_dqual_reg_empty_reg,
    FIFO_Full_reg_0,
    sig_next_eof_reg_reg,
    D,
    E,
    sig_ld_new_cmd_reg_reg,
    sig_last_dbeat_reg,
    out,
    SR,
    m_axi_mm2s_aclk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_first_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    sig_inhibit_rdy_n,
    sig_mstr2data_cmd_valid,
    sig_rd_sts_reg_full_reg,
    sig_next_calc_error_reg,
    \sig_addr_posted_cntr_reg[1] ,
    m_axi_mm2s_rlast,
    sig_s_ready_out_reg,
    \sig_dbeat_cntr_reg[4] ,
    \sig_dbeat_cntr_reg[1] ,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_dqual_reg_empty_reg_0,
    Q,
    \sig_dbeat_cntr_reg[1]_0 ,
    \sig_dbeat_cntr_reg[2] ,
    sig_ld_new_cmd_reg,
    sig_addr_posted_cntr,
    \sig_dbeat_cntr_reg[3] ,
    \sig_dbeat_cntr_reg[4]_0 ,
    sig_last_dbeat_reg_0,
    in);
  output sig_first_dbeat_reg;
  output sig_dqual_reg_empty_reg;
  output FIFO_Full_reg_0;
  output [0:0]sig_next_eof_reg_reg;
  output [7:0]D;
  output [0:0]E;
  output sig_ld_new_cmd_reg_reg;
  output sig_last_dbeat_reg;
  output [10:0]out;
  input [0:0]SR;
  input m_axi_mm2s_aclk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_first_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input sig_inhibit_rdy_n;
  input sig_mstr2data_cmd_valid;
  input sig_rd_sts_reg_full_reg;
  input sig_next_calc_error_reg;
  input \sig_addr_posted_cntr_reg[1] ;
  input m_axi_mm2s_rlast;
  input sig_s_ready_out_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input \sig_dbeat_cntr_reg[1] ;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_dqual_reg_empty_reg_0;
  input [7:0]Q;
  input \sig_dbeat_cntr_reg[1]_0 ;
  input \sig_dbeat_cntr_reg[2] ;
  input sig_ld_new_cmd_reg;
  input [2:0]sig_addr_posted_cntr;
  input \sig_dbeat_cntr_reg[3] ;
  input \sig_dbeat_cntr_reg[4]_0 ;
  input sig_last_dbeat_reg_0;
  input [9:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire [7:0]D;
  wire DYNSHREG_F_I_n_0;
  wire DYNSHREG_F_I_n_17;
  wire [0:0]E;
  wire FIFO_Full_i_2_n_0;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_n_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire fifo_full_p1;
  wire [9:0]in;
  wire m_axi_mm2s_aclk;
  wire m_axi_mm2s_rlast;
  wire [10:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr_reg[1] ;
  wire [10:6]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire \sig_dbeat_cntr_reg[1] ;
  wire \sig_dbeat_cntr_reg[1]_0 ;
  wire \sig_dbeat_cntr_reg[2] ;
  wire \sig_dbeat_cntr_reg[3] ;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[4]_0 ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_first_dbeat_reg;
  wire sig_first_dbeat_reg_0;
  wire sig_inhibit_rdy_n;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_ld_new_cmd_reg_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire [0:0]sig_next_eof_reg_reg;
  wire sig_rd_sts_reg_full_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_s_ready_out_reg;
  wire sig_stat2rsc_status_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.D(D),
        .E(E),
        .FIFO_Full_reg(FIFO_Full_reg_0),
        .FIFO_Full_reg_0(FIFO_Full_reg_n_0),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (DYNSHREG_F_I_n_0),
        .\INFERRED_GEN.cnt_i_reg[0]_1 (DYNSHREG_F_I_n_17),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .SR(SR),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .out(sig_cmd_fifo_data_out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .\sig_addr_posted_cntr_reg[1] (\sig_addr_posted_cntr_reg[1] ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .\sig_dbeat_cntr_reg[1] (\sig_dbeat_cntr_reg[1] ),
        .\sig_dbeat_cntr_reg[1]_0 (\sig_dbeat_cntr_reg[1]_0 ),
        .\sig_dbeat_cntr_reg[2] (\sig_dbeat_cntr_reg[2] ),
        .\sig_dbeat_cntr_reg[3] (\sig_dbeat_cntr_reg[3] ),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[4]_0 (\sig_dbeat_cntr_reg[4]_0 ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr_reg[7] ),
        .\sig_dbeat_cntr_reg[7]_0 (Q),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_first_dbeat_reg(sig_first_dbeat_reg),
        .sig_first_dbeat_reg_0(sig_first_dbeat_reg_0),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_ld_new_cmd_reg_reg(sig_ld_new_cmd_reg_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_calc_error_reg_reg(FIFO_Full_i_2_n_0),
        .sig_next_eof_reg_reg(sig_next_eof_reg_reg),
        .sig_rd_sts_reg_full_reg(sig_rd_sts_reg_full_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_s_ready_out_reg(sig_s_ready_out_reg),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_n_0),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3}),
        .in(in),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .out({out,sig_cmd_fifo_data_out}),
        .sig_first_dbeat_reg(DYNSHREG_F_I_n_0),
        .sig_inhibit_rdy_n(sig_inhibit_rdy_n),
        .sig_last_dbeat_reg(DYNSHREG_F_I_n_17),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    FIFO_Full_i_2
       (.I0(sig_next_calc_error_reg),
        .I1(sig_addr_posted_cntr[2]),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[0]),
        .I4(sig_rd_sts_reg_full_reg),
        .O(FIFO_Full_i_2_n_0));
  FDRE FIFO_Full_reg
       (.C(m_axi_mm2s_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_n_0),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "system_axi_dma_0_0,axi_dma,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_dma,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_lite_aclk,
    m_axi_mm2s_aclk,
    axi_resetn,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_awaddr,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_wdata,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_araddr,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    m_axi_mm2s_araddr,
    m_axi_mm2s_arlen,
    m_axi_mm2s_arsize,
    m_axi_mm2s_arburst,
    m_axi_mm2s_arprot,
    m_axi_mm2s_arcache,
    m_axi_mm2s_arvalid,
    m_axi_mm2s_arready,
    m_axi_mm2s_rdata,
    m_axi_mm2s_rresp,
    m_axi_mm2s_rlast,
    m_axi_mm2s_rvalid,
    m_axi_mm2s_rready,
    mm2s_prmry_reset_out_n,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tvalid,
    m_axis_mm2s_tready,
    m_axis_mm2s_tlast,
    mm2s_introut,
    axi_dma_tstvec);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE_ACLK, ASSOCIATED_BUSIF S_AXI_LITE:M_AXI, ASSOCIATED_RESET axi_resetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M_AXI_MM2S_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S_CLK, ASSOCIATED_BUSIF M_AXI_MM2S:M_AXIS_MM2S:M_AXIS_CNTRL, ASSOCIATED_RESET mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input m_axi_mm2s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_RESETN, POLARITY ACTIVE_LOW" *) input axi_resetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [9:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [9:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI_MM2S, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output [31:0]m_axi_mm2s_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARLEN" *) output [7:0]m_axi_mm2s_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARSIZE" *) output [2:0]m_axi_mm2s_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARBURST" *) output [1:0]m_axi_mm2s_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARPROT" *) output [2:0]m_axi_mm2s_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARCACHE" *) output [3:0]m_axi_mm2s_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARVALID" *) output m_axi_mm2s_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARREADY" *) input m_axi_mm2s_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RDATA" *) input [31:0]m_axi_mm2s_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RRESP" *) input [1:0]m_axi_mm2s_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RLAST" *) input m_axi_mm2s_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RVALID" *) input m_axi_mm2s_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RREADY" *) output m_axi_mm2s_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 MM2S_PRMRY_RESET_OUT_N RST" *) (* x_interface_parameter = "XIL_INTERFACENAME MM2S_PRMRY_RESET_OUT_N, POLARITY ACTIVE_LOW" *) output mm2s_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_MM2S, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, HAS_BURST 0" *) output [31:0]m_axis_mm2s_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TKEEP" *) output [3:0]m_axis_mm2s_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TVALID" *) output m_axis_mm2s_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TREADY" *) input m_axis_mm2s_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TLAST" *) output m_axis_mm2s_tlast;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 MM2S_INTROUT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME MM2S_INTROUT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output mm2s_introut;
  output [31:0]axi_dma_tstvec;

  wire [31:0]axi_dma_tstvec;
  wire axi_resetn;
  wire m_axi_mm2s_aclk;
  wire [31:0]m_axi_mm2s_araddr;
  wire [1:0]m_axi_mm2s_arburst;
  wire [3:0]m_axi_mm2s_arcache;
  wire [7:0]m_axi_mm2s_arlen;
  wire [2:0]m_axi_mm2s_arprot;
  wire m_axi_mm2s_arready;
  wire [2:0]m_axi_mm2s_arsize;
  wire m_axi_mm2s_arvalid;
  wire [31:0]m_axi_mm2s_rdata;
  wire m_axi_mm2s_rlast;
  wire m_axi_mm2s_rready;
  wire [1:0]m_axi_mm2s_rresp;
  wire m_axi_mm2s_rvalid;
  wire [31:0]m_axis_mm2s_tdata;
  wire [3:0]m_axis_mm2s_tkeep;
  wire m_axis_mm2s_tlast;
  wire m_axis_mm2s_tready;
  wire m_axis_mm2s_tvalid;
  wire mm2s_introut;
  wire mm2s_prmry_reset_out_n;
  wire s_axi_lite_aclk;
  wire [9:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [9:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [1:0]s_axi_lite_bresp;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [1:0]s_axi_lite_rresp;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire s_axi_lite_wvalid;
  wire NLW_U0_m_axi_s2mm_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_bready_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_s2mm_wvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_sg_bready_UNCONNECTED;
  wire NLW_U0_m_axi_sg_rready_UNCONNECTED;
  wire NLW_U0_m_axi_sg_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_sg_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_cntrl_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_mm2s_cntrl_tvalid_UNCONNECTED;
  wire NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED;
  wire NLW_U0_s2mm_introut_UNCONNECTED;
  wire NLW_U0_s2mm_prmry_reset_out_n_UNCONNECTED;
  wire NLW_U0_s2mm_sts_reset_out_n_UNCONNECTED;
  wire NLW_U0_s_axis_s2mm_sts_tready_UNCONNECTED;
  wire NLW_U0_s_axis_s2mm_tready_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_mm2s_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_s2mm_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_s2mm_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_s2mm_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_s2mm_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_awuser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_s2mm_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_s2mm_wstrb_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_sg_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_arcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_sg_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_arprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_arsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_sg_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_awcache_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_sg_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_awprot_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_sg_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_awuser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_sg_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_sg_wstrb_UNCONNECTED;
  wire [31:0]NLW_U0_m_axis_mm2s_cntrl_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_mm2s_cntrl_tkeep_UNCONNECTED;
  wire [4:0]NLW_U0_m_axis_mm2s_tdest_UNCONNECTED;
  wire [4:0]NLW_U0_m_axis_mm2s_tid_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_mm2s_tuser_UNCONNECTED;

  (* C_DLYTMR_RESOLUTION = "125" *) 
  (* C_ENABLE_MULTI_CHANNEL = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_INCLUDE_MM2S = "1" *) 
  (* C_INCLUDE_MM2S_DRE = "0" *) 
  (* C_INCLUDE_MM2S_SF = "1" *) 
  (* C_INCLUDE_S2MM = "0" *) 
  (* C_INCLUDE_S2MM_DRE = "0" *) 
  (* C_INCLUDE_S2MM_SF = "1" *) 
  (* C_INCLUDE_SG = "0" *) 
  (* C_INSTANCE = "axi_dma" *) 
  (* C_MICRO_DMA = "1" *) 
  (* C_MM2S_BURST_SIZE = "16" *) 
  (* C_M_AXIS_MM2S_CNTRL_TDATA_WIDTH = "32" *) 
  (* C_M_AXIS_MM2S_TDATA_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_MM2S_DATA_WIDTH = "32" *) 
  (* C_M_AXI_S2MM_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_S2MM_DATA_WIDTH = "32" *) 
  (* C_M_AXI_SG_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SG_DATA_WIDTH = "32" *) 
  (* C_NUM_MM2S_CHANNELS = "1" *) 
  (* C_NUM_S2MM_CHANNELS = "1" *) 
  (* C_PRMRY_IS_ACLK_ASYNC = "0" *) 
  (* C_S2MM_BURST_SIZE = "16" *) 
  (* C_SG_INCLUDE_STSCNTRL_STRM = "0" *) 
  (* C_SG_LENGTH_WIDTH = "14" *) 
  (* C_SG_USE_STSAPP_LENGTH = "0" *) 
  (* C_S_AXIS_S2MM_STS_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_S2MM_TDATA_WIDTH = "32" *) 
  (* C_S_AXI_LITE_ADDR_WIDTH = "10" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dma U0
       (.axi_dma_tstvec(axi_dma_tstvec),
        .axi_resetn(axi_resetn),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(m_axi_mm2s_araddr),
        .m_axi_mm2s_arburst(m_axi_mm2s_arburst),
        .m_axi_mm2s_arcache(m_axi_mm2s_arcache),
        .m_axi_mm2s_arlen(m_axi_mm2s_arlen),
        .m_axi_mm2s_arprot(m_axi_mm2s_arprot),
        .m_axi_mm2s_arready(m_axi_mm2s_arready),
        .m_axi_mm2s_arsize(m_axi_mm2s_arsize),
        .m_axi_mm2s_aruser(NLW_U0_m_axi_mm2s_aruser_UNCONNECTED[3:0]),
        .m_axi_mm2s_arvalid(m_axi_mm2s_arvalid),
        .m_axi_mm2s_rdata(m_axi_mm2s_rdata),
        .m_axi_mm2s_rlast(m_axi_mm2s_rlast),
        .m_axi_mm2s_rready(m_axi_mm2s_rready),
        .m_axi_mm2s_rresp(m_axi_mm2s_rresp),
        .m_axi_mm2s_rvalid(m_axi_mm2s_rvalid),
        .m_axi_s2mm_aclk(1'b0),
        .m_axi_s2mm_awaddr(NLW_U0_m_axi_s2mm_awaddr_UNCONNECTED[31:0]),
        .m_axi_s2mm_awburst(NLW_U0_m_axi_s2mm_awburst_UNCONNECTED[1:0]),
        .m_axi_s2mm_awcache(NLW_U0_m_axi_s2mm_awcache_UNCONNECTED[3:0]),
        .m_axi_s2mm_awlen(NLW_U0_m_axi_s2mm_awlen_UNCONNECTED[7:0]),
        .m_axi_s2mm_awprot(NLW_U0_m_axi_s2mm_awprot_UNCONNECTED[2:0]),
        .m_axi_s2mm_awready(1'b0),
        .m_axi_s2mm_awsize(NLW_U0_m_axi_s2mm_awsize_UNCONNECTED[2:0]),
        .m_axi_s2mm_awuser(NLW_U0_m_axi_s2mm_awuser_UNCONNECTED[3:0]),
        .m_axi_s2mm_awvalid(NLW_U0_m_axi_s2mm_awvalid_UNCONNECTED),
        .m_axi_s2mm_bready(NLW_U0_m_axi_s2mm_bready_UNCONNECTED),
        .m_axi_s2mm_bresp({1'b0,1'b0}),
        .m_axi_s2mm_bvalid(1'b0),
        .m_axi_s2mm_wdata(NLW_U0_m_axi_s2mm_wdata_UNCONNECTED[31:0]),
        .m_axi_s2mm_wlast(NLW_U0_m_axi_s2mm_wlast_UNCONNECTED),
        .m_axi_s2mm_wready(1'b0),
        .m_axi_s2mm_wstrb(NLW_U0_m_axi_s2mm_wstrb_UNCONNECTED[3:0]),
        .m_axi_s2mm_wvalid(NLW_U0_m_axi_s2mm_wvalid_UNCONNECTED),
        .m_axi_sg_aclk(1'b0),
        .m_axi_sg_araddr(NLW_U0_m_axi_sg_araddr_UNCONNECTED[31:0]),
        .m_axi_sg_arburst(NLW_U0_m_axi_sg_arburst_UNCONNECTED[1:0]),
        .m_axi_sg_arcache(NLW_U0_m_axi_sg_arcache_UNCONNECTED[3:0]),
        .m_axi_sg_arlen(NLW_U0_m_axi_sg_arlen_UNCONNECTED[7:0]),
        .m_axi_sg_arprot(NLW_U0_m_axi_sg_arprot_UNCONNECTED[2:0]),
        .m_axi_sg_arready(1'b0),
        .m_axi_sg_arsize(NLW_U0_m_axi_sg_arsize_UNCONNECTED[2:0]),
        .m_axi_sg_aruser(NLW_U0_m_axi_sg_aruser_UNCONNECTED[3:0]),
        .m_axi_sg_arvalid(NLW_U0_m_axi_sg_arvalid_UNCONNECTED),
        .m_axi_sg_awaddr(NLW_U0_m_axi_sg_awaddr_UNCONNECTED[31:0]),
        .m_axi_sg_awburst(NLW_U0_m_axi_sg_awburst_UNCONNECTED[1:0]),
        .m_axi_sg_awcache(NLW_U0_m_axi_sg_awcache_UNCONNECTED[3:0]),
        .m_axi_sg_awlen(NLW_U0_m_axi_sg_awlen_UNCONNECTED[7:0]),
        .m_axi_sg_awprot(NLW_U0_m_axi_sg_awprot_UNCONNECTED[2:0]),
        .m_axi_sg_awready(1'b0),
        .m_axi_sg_awsize(NLW_U0_m_axi_sg_awsize_UNCONNECTED[2:0]),
        .m_axi_sg_awuser(NLW_U0_m_axi_sg_awuser_UNCONNECTED[3:0]),
        .m_axi_sg_awvalid(NLW_U0_m_axi_sg_awvalid_UNCONNECTED),
        .m_axi_sg_bready(NLW_U0_m_axi_sg_bready_UNCONNECTED),
        .m_axi_sg_bresp({1'b0,1'b0}),
        .m_axi_sg_bvalid(1'b0),
        .m_axi_sg_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_sg_rlast(1'b0),
        .m_axi_sg_rready(NLW_U0_m_axi_sg_rready_UNCONNECTED),
        .m_axi_sg_rresp({1'b0,1'b0}),
        .m_axi_sg_rvalid(1'b0),
        .m_axi_sg_wdata(NLW_U0_m_axi_sg_wdata_UNCONNECTED[31:0]),
        .m_axi_sg_wlast(NLW_U0_m_axi_sg_wlast_UNCONNECTED),
        .m_axi_sg_wready(1'b0),
        .m_axi_sg_wstrb(NLW_U0_m_axi_sg_wstrb_UNCONNECTED[3:0]),
        .m_axi_sg_wvalid(NLW_U0_m_axi_sg_wvalid_UNCONNECTED),
        .m_axis_mm2s_cntrl_tdata(NLW_U0_m_axis_mm2s_cntrl_tdata_UNCONNECTED[31:0]),
        .m_axis_mm2s_cntrl_tkeep(NLW_U0_m_axis_mm2s_cntrl_tkeep_UNCONNECTED[3:0]),
        .m_axis_mm2s_cntrl_tlast(NLW_U0_m_axis_mm2s_cntrl_tlast_UNCONNECTED),
        .m_axis_mm2s_cntrl_tready(1'b0),
        .m_axis_mm2s_cntrl_tvalid(NLW_U0_m_axis_mm2s_cntrl_tvalid_UNCONNECTED),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tdest(NLW_U0_m_axis_mm2s_tdest_UNCONNECTED[4:0]),
        .m_axis_mm2s_tid(NLW_U0_m_axis_mm2s_tid_UNCONNECTED[4:0]),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tuser(NLW_U0_m_axis_mm2s_tuser_UNCONNECTED[3:0]),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .mm2s_cntrl_reset_out_n(NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED),
        .mm2s_introut(mm2s_introut),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .s2mm_introut(NLW_U0_s2mm_introut_UNCONNECTED),
        .s2mm_prmry_reset_out_n(NLW_U0_s2mm_prmry_reset_out_n_UNCONNECTED),
        .s2mm_sts_reset_out_n(NLW_U0_s2mm_sts_reset_out_n_UNCONNECTED),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(s_axi_lite_bresp),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(s_axi_lite_rresp),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .s_axis_s2mm_sts_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_sts_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_sts_tlast(1'b0),
        .s_axis_s2mm_sts_tready(NLW_U0_s_axis_s2mm_sts_tready_UNCONNECTED),
        .s_axis_s2mm_sts_tvalid(1'b0),
        .s_axis_s2mm_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tdest({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(1'b0),
        .s_axis_s2mm_tready(NLW_U0_s_axis_s2mm_tready_UNCONNECTED),
        .s_axis_s2mm_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tvalid(1'b0));
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
