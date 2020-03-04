-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Mar  4 13:15:30 2020
-- Host        : Lenovo-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Benjamin/Downloads/eCTF20-datapath-changes-edit/eCTF20-datapath-changes/pl/proj/test/bd/system/ip/system_axi_timebase_wdt_0_0/system_axi_timebase_wdt_0_0_sim_netlist.vhdl
-- Design      : system_axi_timebase_wdt_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_cdc_sync is
  port (
    \iTimebase_count_reg[31]\ : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_cdc_sync : entity is "cdc_sync";
end system_axi_timebase_wdt_0_0_cdc_sync;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_cdc_sync is
  signal Freeze_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => freeze,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => Freeze_int,
      R => '0'
    );
\iTimebase_count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Freeze_int,
      O => \iTimebase_count_reg[31]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_pselect_f : entity is "pselect_f";
end system_axi_timebase_wdt_0_0_pselect_f;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_timebase_wdt_0_0_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_timebase_wdt_0_0_pselect_f__parameterized1\ : entity is "pselect_f";
end \system_axi_timebase_wdt_0_0_pselect_f__parameterized1\;

architecture STRUCTURE of \system_axi_timebase_wdt_0_0_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_address_decoder is
  port (
    eWDT1_Reg_reg : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC;
    eWDT2_Reg_reg : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    \iTimebase_count_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    eWDT2_Reg_reg_0 : out STD_LOGIC;
    eWDT1_Reg_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    \s_axi_bresp_i_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rvalid_i_reg_1 : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    read_Mux_In : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \read_Mux_In__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wdt_State_Reg_reg : in STD_LOGIC;
    wdt_Reset_Status_Reg : in STD_LOGIC;
    \timer_width_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \iTimebase_count_reg[8]\ : in STD_LOGIC;
    \iTimebase_count_reg[9]\ : in STD_LOGIC;
    \iTimebase_count_reg[10]\ : in STD_LOGIC;
    \iTimebase_count_reg[11]\ : in STD_LOGIC;
    \iTimebase_count_reg[12]\ : in STD_LOGIC;
    \iTimebase_count_reg[13]\ : in STD_LOGIC;
    \iTimebase_count_reg[14]\ : in STD_LOGIC;
    \iTimebase_count_reg[15]\ : in STD_LOGIC;
    \iTimebase_count_reg[16]\ : in STD_LOGIC;
    \iTimebase_count_reg[17]\ : in STD_LOGIC;
    \iTimebase_count_reg[18]\ : in STD_LOGIC;
    \iTimebase_count_reg[19]\ : in STD_LOGIC;
    \iTimebase_count_reg[20]\ : in STD_LOGIC;
    \iTimebase_count_reg[21]\ : in STD_LOGIC;
    \iTimebase_count_reg[22]\ : in STD_LOGIC;
    \iTimebase_count_reg[23]\ : in STD_LOGIC;
    \iTimebase_count_reg[24]\ : in STD_LOGIC;
    \iTimebase_count_reg[25]\ : in STD_LOGIC;
    \iTimebase_count_reg[26]\ : in STD_LOGIC;
    \iTimebase_count_reg[27]\ : in STD_LOGIC;
    \iTimebase_count_reg[28]\ : in STD_LOGIC;
    \iTimebase_count_reg[29]\ : in STD_LOGIC;
    \iTimebase_count_reg[30]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    is_read : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid_i_reg_0 : in STD_LOGIC;
    \ip2bus_error__0\ : in STD_LOGIC;
    s_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_address_decoder : entity is "address_decoder";
end system_axi_timebase_wdt_0_0_address_decoder;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_cs\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^ewdt1_reg_reg\ : STD_LOGIC;
  signal \^ewdt2_reg_reg\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_arready_INST_0_i_2_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of eWDT1_Reg_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of eWDT2_Reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \iTimebase_count[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \timer_width[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wdt_State_Reg_i_2 : label is "soft_lutpair0";
begin
  bus2ip_cs <= \^bus2ip_cs\;
  eWDT1_Reg_reg <= \^ewdt1_reg_reg\;
  eWDT2_Reg_reg <= \^ewdt2_reg_reg\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_wready <= \^s_axi_wready\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => \^ewdt2_reg_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^ewdt2_reg_reg\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \^ewdt1_reg_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_arready\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.system_axi_timebase_wdt_0_0_pselect_f
     port map (
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\system_axi_timebase_wdt_0_0_pselect_f__parameterized1\
     port map (
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040400"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_arready\,
      I3 => \^bus2ip_cs\,
      I4 => Q,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^bus2ip_cs\,
      R => '0'
    );
eWDT1_Reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^ewdt1_reg_reg\,
      I2 => \^ewdt2_reg_reg\,
      I3 => read_Mux_In(1),
      O => eWDT1_Reg_reg_0
    );
eWDT2_Reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \^ewdt2_reg_reg\,
      I3 => read_Mux_In(0),
      O => eWDT2_Reg_reg_0
    );
\iTimebase_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF07FF77"
    )
        port map (
      I0 => \^ewdt1_reg_reg\,
      I1 => s_axi_wdata(1),
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => s_axi_wdata(0),
      O => \iTimebase_count_reg[0]\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF44444"
    )
        port map (
      I0 => s_axi_arready_INST_0_i_1_n_0,
      I1 => is_read,
      I2 => \^ewdt1_reg_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => \^ewdt2_reg_reg\,
      I5 => s_axi_arready_INST_0_i_2_n_0,
      O => \^s_axi_arready\
    );
s_axi_arready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(5),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(3),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(4),
      O => s_axi_arready_INST_0_i_1_n_0
    );
s_axi_arready_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \^ewdt2_reg_reg\,
      O => s_axi_arready_INST_0_i_2_n_0
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ip2bus_error__0\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => s_axi_bresp(0),
      O => \s_axi_bresp_i_reg[1]\
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => \^s_axi_wready\,
      I4 => s_axi_bvalid_i_reg_0,
      O => s_axi_bvalid_i_reg
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A000000C000"
    )
        port map (
      I0 => read_Mux_In(0),
      I1 => \read_Mux_In__0\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt1_reg_reg\,
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \timer_width_reg[4]\(0),
      I1 => \^ewdt1_reg_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[10]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(10)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[11]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(11)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[12]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(12)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[13]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(13)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[14]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(14)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[15]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(15)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[16]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(16)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[17]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(17)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[18]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(18)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[19]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(19)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A000000C000"
    )
        port map (
      I0 => read_Mux_In(1),
      I1 => \read_Mux_In__0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt1_reg_reg\,
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \timer_width_reg[4]\(1),
      I1 => \^ewdt1_reg_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[20]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(20)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[21]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(21)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[22]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(22)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[23]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(23)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[24]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(24)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[25]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(25)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[26]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(26)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[27]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(27)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[28]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(28)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[29]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(29)
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A000000C000"
    )
        port map (
      I0 => wdt_State_Reg_reg,
      I1 => \read_Mux_In__0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt1_reg_reg\,
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \timer_width_reg[4]\(2),
      I1 => \^ewdt1_reg_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[30]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(30)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => p_0_in,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(31)
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ewdt2_reg_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A000000C000"
    )
        port map (
      I0 => wdt_Reset_Status_Reg,
      I1 => \read_Mux_In__0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt1_reg_reg\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002AA"
    )
        port map (
      I0 => \timer_width_reg[4]\(3),
      I1 => \^ewdt1_reg_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \s_axi_rdata_i[3]_i_4_n_0\
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00404000"
    )
        port map (
      I0 => s_axi_arready_INST_0_i_2_n_0,
      I1 => S(0),
      I2 => \^ewdt2_reg_reg\,
      I3 => \^ewdt1_reg_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I5 => \s_axi_rdata_i[4]_i_2_n_0\,
      O => \s_axi_rdata_i_reg[31]\(4)
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \timer_width_reg[4]\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \^ewdt2_reg_reg\,
      I4 => \^ewdt1_reg_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => S(1),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => S(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => S(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[8]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^ewdt1_reg_reg\,
      I2 => \iTimebase_count_reg[9]\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => \^ewdt2_reg_reg\,
      O => \s_axi_rdata_i_reg[31]\(9)
    );
\s_axi_rdata_i_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[0]_i_2_n_0\,
      I1 => \s_axi_rdata_i[0]_i_3_n_0\,
      O => \s_axi_rdata_i_reg[31]\(0),
      S => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[1]_i_2_n_0\,
      I1 => \s_axi_rdata_i[1]_i_3_n_0\,
      O => \s_axi_rdata_i_reg[31]\(1),
      S => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[2]_i_2_n_0\,
      I1 => \s_axi_rdata_i[2]_i_3_n_0\,
      O => \s_axi_rdata_i_reg[31]\(2),
      S => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_rdata_i[3]_i_3_n_0\,
      I1 => \s_axi_rdata_i[3]_i_4_n_0\,
      O => \s_axi_rdata_i_reg[31]\(3),
      S => \s_axi_rdata_i[3]_i_2_n_0\
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => s_axi_rready,
      I4 => s_axi_rvalid_i_reg_0,
      O => s_axi_rvalid_i_reg
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4F4F444F4F"
    )
        port map (
      I0 => s_axi_arready_INST_0_i_1_n_0,
      I1 => is_write_reg,
      I2 => \^ewdt2_reg_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => s_axi_wready_INST_0_i_1_n_0,
      I5 => \^ewdt1_reg_reg\,
      O => \^s_axi_wready\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => s_axi_wready_INST_0_i_1_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2CEFEC"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \state_reg[1]\(0),
      I2 => \state_reg[1]\(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_rvalid_i_reg_1,
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2F2C"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \state_reg[1]\(1),
      I2 => \state_reg[1]\(0),
      I3 => s_axi_wvalid,
      I4 => \state_reg[1]_0\,
      O => D(1)
    );
\timer_width[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \^ewdt2_reg_reg\,
      O => bus2ip_wrce(0)
    );
wdt_State_Reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ewdt1_reg_reg\,
      I1 => \^ewdt2_reg_reg\,
      O => bus2ip_wrce(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_timebase_wdt_core is
  port (
    bus2ip_reset : out STD_LOGIC;
    wdt_reset : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    timebase_interrupt : out STD_LOGIC;
    \read_Mux_In__0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \iTimebase_count_reg[11]_0\ : out STD_LOGIC;
    \iTimebase_count_reg[11]_1\ : out STD_LOGIC;
    \iTimebase_count_reg[11]_2\ : out STD_LOGIC;
    \iTimebase_count_reg[11]_3\ : out STD_LOGIC;
    \iTimebase_count_reg[15]_0\ : out STD_LOGIC;
    \iTimebase_count_reg[15]_1\ : out STD_LOGIC;
    \iTimebase_count_reg[15]_2\ : out STD_LOGIC;
    \iTimebase_count_reg[15]_3\ : out STD_LOGIC;
    \iTimebase_count_reg[19]_0\ : out STD_LOGIC;
    \iTimebase_count_reg[19]_1\ : out STD_LOGIC;
    \iTimebase_count_reg[19]_2\ : out STD_LOGIC;
    \iTimebase_count_reg[19]_3\ : out STD_LOGIC;
    \iTimebase_count_reg[23]_0\ : out STD_LOGIC;
    \iTimebase_count_reg[23]_1\ : out STD_LOGIC;
    \iTimebase_count_reg[23]_2\ : out STD_LOGIC;
    \iTimebase_count_reg[23]_3\ : out STD_LOGIC;
    \iTimebase_count_reg[27]_0\ : out STD_LOGIC;
    \iTimebase_count_reg[27]_1\ : out STD_LOGIC;
    \iTimebase_count_reg[27]_2\ : out STD_LOGIC;
    \iTimebase_count_reg[27]_3\ : out STD_LOGIC;
    \iTimebase_count_reg[31]_0\ : out STD_LOGIC;
    \iTimebase_count_reg[31]_1\ : out STD_LOGIC;
    \iTimebase_count_reg[31]_2\ : out STD_LOGIC;
    read_Mux_In : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wdt_interrupt : out STD_LOGIC;
    wdt_Reset_Status_Reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_timebase_wdt_core : entity is "timebase_wdt_core";
end system_axi_timebase_wdt_0_0_timebase_wdt_core;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_timebase_wdt_core is
  signal Current_State : STD_LOGIC;
  signal Current_State_i_1_n_0 : STD_LOGIC;
  signal Current_State_i_2_n_0 : STD_LOGIC;
  signal INPUT_DOUBLE_REGS3_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Timebase_Interrupt0 : STD_LOGIC;
  signal WDT_Current_State : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \WDT_Current_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \WDT_Current_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_reset\ : STD_LOGIC;
  signal count_MSB_Reg : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal \g0_b2__1_n_0\ : STD_LOGIC;
  signal \g0_b2__2_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_i_1_n_0 : STD_LOGIC;
  signal g0_b3_i_2_n_0 : STD_LOGIC;
  signal g0_b3_i_3_n_0 : STD_LOGIC;
  signal g0_b3_i_4_n_0 : STD_LOGIC;
  signal g0_b3_i_5_n_0 : STD_LOGIC;
  signal g0_b3_i_6_n_0 : STD_LOGIC;
  signal g0_b3_i_7_n_0 : STD_LOGIC;
  signal g0_b3_i_8_n_0 : STD_LOGIC;
  signal g0_b3_i_9_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \iTimebase_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \^itimebase_count_reg[11]_0\ : STD_LOGIC;
  signal \^itimebase_count_reg[11]_1\ : STD_LOGIC;
  signal \^itimebase_count_reg[11]_2\ : STD_LOGIC;
  signal \^itimebase_count_reg[11]_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^itimebase_count_reg[15]_0\ : STD_LOGIC;
  signal \^itimebase_count_reg[15]_1\ : STD_LOGIC;
  signal \^itimebase_count_reg[15]_2\ : STD_LOGIC;
  signal \^itimebase_count_reg[15]_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \^itimebase_count_reg[19]_0\ : STD_LOGIC;
  signal \^itimebase_count_reg[19]_1\ : STD_LOGIC;
  signal \^itimebase_count_reg[19]_2\ : STD_LOGIC;
  signal \^itimebase_count_reg[19]_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \^itimebase_count_reg[23]_0\ : STD_LOGIC;
  signal \^itimebase_count_reg[23]_1\ : STD_LOGIC;
  signal \^itimebase_count_reg[23]_2\ : STD_LOGIC;
  signal \^itimebase_count_reg[23]_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \^itimebase_count_reg[27]_0\ : STD_LOGIC;
  signal \^itimebase_count_reg[27]_1\ : STD_LOGIC;
  signal \^itimebase_count_reg[27]_2\ : STD_LOGIC;
  signal \^itimebase_count_reg[27]_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \^itimebase_count_reg[31]_0\ : STD_LOGIC;
  signal \^itimebase_count_reg[31]_1\ : STD_LOGIC;
  signal \^itimebase_count_reg[31]_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \iTimebase_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal iWDT_Reset : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \^read_mux_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^read_mux_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal timebase_Reg_Reset : STD_LOGIC;
  signal wdt_Bitin_1d : STD_LOGIC;
  signal wdt_Bitin_1d_i_1_n_0 : STD_LOGIC;
  signal wdt_Bitin_1d_i_2_n_0 : STD_LOGIC;
  signal \^wdt_reset_status_reg\ : STD_LOGIC;
  signal wdt_Reset_Status_Reg_i_1_n_0 : STD_LOGIC;
  signal wdt_State_Preset : STD_LOGIC;
  signal wdt_State_Preset_i_10_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_11_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_12_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_3_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_4_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_5_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_6_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_7_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_8_n_0 : STD_LOGIC;
  signal wdt_State_Preset_i_9_n_0 : STD_LOGIC;
  signal wdt_State_Preset_reg_i_2_n_0 : STD_LOGIC;
  signal wdt_State_Reg_i_1_n_0 : STD_LOGIC;
  signal \^wdt_interrupt\ : STD_LOGIC;
  signal \NLW_iTimebase_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WDT_Current_State[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WDT_Current_State[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b2__1\ : label is "soft_lutpair9";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  S(3 downto 0) <= \^s\(3 downto 0);
  bus2ip_reset <= \^bus2ip_reset\;
  \iTimebase_count_reg[11]_0\ <= \^itimebase_count_reg[11]_0\;
  \iTimebase_count_reg[11]_1\ <= \^itimebase_count_reg[11]_1\;
  \iTimebase_count_reg[11]_2\ <= \^itimebase_count_reg[11]_2\;
  \iTimebase_count_reg[11]_3\ <= \^itimebase_count_reg[11]_3\;
  \iTimebase_count_reg[15]_0\ <= \^itimebase_count_reg[15]_0\;
  \iTimebase_count_reg[15]_1\ <= \^itimebase_count_reg[15]_1\;
  \iTimebase_count_reg[15]_2\ <= \^itimebase_count_reg[15]_2\;
  \iTimebase_count_reg[15]_3\ <= \^itimebase_count_reg[15]_3\;
  \iTimebase_count_reg[19]_0\ <= \^itimebase_count_reg[19]_0\;
  \iTimebase_count_reg[19]_1\ <= \^itimebase_count_reg[19]_1\;
  \iTimebase_count_reg[19]_2\ <= \^itimebase_count_reg[19]_2\;
  \iTimebase_count_reg[19]_3\ <= \^itimebase_count_reg[19]_3\;
  \iTimebase_count_reg[23]_0\ <= \^itimebase_count_reg[23]_0\;
  \iTimebase_count_reg[23]_1\ <= \^itimebase_count_reg[23]_1\;
  \iTimebase_count_reg[23]_2\ <= \^itimebase_count_reg[23]_2\;
  \iTimebase_count_reg[23]_3\ <= \^itimebase_count_reg[23]_3\;
  \iTimebase_count_reg[27]_0\ <= \^itimebase_count_reg[27]_0\;
  \iTimebase_count_reg[27]_1\ <= \^itimebase_count_reg[27]_1\;
  \iTimebase_count_reg[27]_2\ <= \^itimebase_count_reg[27]_2\;
  \iTimebase_count_reg[27]_3\ <= \^itimebase_count_reg[27]_3\;
  \iTimebase_count_reg[31]_0\ <= \^itimebase_count_reg[31]_0\;
  \iTimebase_count_reg[31]_1\ <= \^itimebase_count_reg[31]_1\;
  \iTimebase_count_reg[31]_2\ <= \^itimebase_count_reg[31]_2\;
  p_0_in <= \^p_0_in\;
  read_Mux_In(1 downto 0) <= \^read_mux_in\(1 downto 0);
  \read_Mux_In__0\(3 downto 0) <= \^read_mux_in__0\(3 downto 0);
  wdt_Reset_Status_Reg <= \^wdt_reset_status_reg\;
  wdt_interrupt <= \^wdt_interrupt\;
Current_State_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A022A022A022"
    )
        port map (
      I0 => Current_State_i_2_n_0,
      I1 => g0_b3_n_0,
      I2 => Current_State,
      I3 => wdt_State_Preset_reg_i_2_n_0,
      I4 => WDT_Current_State(1),
      I5 => WDT_Current_State(0),
      O => Current_State_i_1_n_0
    );
Current_State_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      I2 => \^read_mux_in\(1),
      I3 => \^read_mux_in\(0),
      O => Current_State_i_2_n_0
    );
Current_State_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Current_State_i_1_n_0,
      Q => Current_State,
      R => '0'
    );
INPUT_DOUBLE_REGS3: entity work.system_axi_timebase_wdt_0_0_cdc_sync
     port map (
      freeze => freeze,
      \iTimebase_count_reg[31]\ => INPUT_DOUBLE_REGS3_n_0,
      s_axi_aclk => s_axi_aclk
    );
Timebase_Interrupt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^bus2ip_reset\
    );
Timebase_Interrupt_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_MSB_Reg,
      I1 => \^p_0_in\,
      O => Timebase_Interrupt0
    );
Timebase_Interrupt_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Timebase_Interrupt0,
      Q => timebase_interrupt,
      R => \^bus2ip_reset\
    );
\WDT_Current_State[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => WDT_Current_State(1),
      I1 => \^wdt_interrupt\,
      I2 => WDT_Current_State(0),
      O => \WDT_Current_State[0]_i_1_n_0\
    );
\WDT_Current_State[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC22"
    )
        port map (
      I0 => p_2_in,
      I1 => WDT_Current_State(1),
      I2 => \^wdt_interrupt\,
      I3 => WDT_Current_State(0),
      O => \WDT_Current_State[1]_i_1_n_0\
    );
\WDT_Current_State_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \WDT_Current_State[0]_i_1_n_0\,
      Q => WDT_Current_State(0),
      R => \^bus2ip_reset\
    );
\WDT_Current_State_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \WDT_Current_State[1]_i_1_n_0\,
      Q => WDT_Current_State(1),
      R => \^bus2ip_reset\
    );
WDT_Reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => WDT_Current_State(1),
      I1 => WDT_Current_State(0),
      O => iWDT_Reset
    );
WDT_Reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iWDT_Reset,
      Q => wdt_reset,
      R => '0'
    );
count_MSB_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^p_0_in\,
      Q => count_MSB_Reg,
      R => \^bus2ip_reset\
    );
eWDT1_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      Q => \^read_mux_in\(1),
      R => \^bus2ip_reset\
    );
eWDT2_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      Q => \^read_mux_in\(0),
      R => \^bus2ip_reset\
    );
g0_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => g0_b1_n_0
    );
g0_b2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A857"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => g0_b1_n_0,
      I4 => g0_b0_n_0,
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444445B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => g0_b0_n_0,
      I4 => g0_b1_n_0,
      O => \g0_b2__1_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCC8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => g0_b1_n_0,
      I4 => g0_b0_n_0,
      O => \g0_b2__2_n_0\
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"084C3B7F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => g0_b3_i_1_n_0,
      I3 => g0_b3_i_2_n_0,
      I4 => g0_b3_i_3_n_0,
      O => g0_b3_n_0
    );
g0_b3_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_i_4_n_0,
      I1 => g0_b3_i_5_n_0,
      O => g0_b3_i_1_n_0,
      S => g0_b2_n_0
    );
g0_b3_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_i_6_n_0,
      I1 => g0_b3_i_7_n_0,
      O => g0_b3_i_2_n_0,
      S => g0_b2_n_0
    );
g0_b3_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_i_8_n_0,
      I1 => g0_b3_i_9_n_0,
      O => g0_b3_i_3_n_0,
      S => g0_b2_n_0
    );
g0_b3_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^itimebase_count_reg[27]_3\,
      I1 => \^itimebase_count_reg[27]_2\,
      I2 => g0_b1_n_0,
      I3 => \^itimebase_count_reg[27]_1\,
      I4 => g0_b0_n_0,
      I5 => \^itimebase_count_reg[27]_0\,
      O => g0_b3_i_4_n_0
    );
g0_b3_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_0_in\,
      I1 => \^itimebase_count_reg[31]_2\,
      I2 => g0_b1_n_0,
      I3 => \^itimebase_count_reg[31]_1\,
      I4 => g0_b0_n_0,
      I5 => \^itimebase_count_reg[31]_0\,
      O => g0_b3_i_5_n_0
    );
g0_b3_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^itimebase_count_reg[19]_3\,
      I1 => \^itimebase_count_reg[19]_2\,
      I2 => g0_b1_n_0,
      I3 => \^itimebase_count_reg[19]_1\,
      I4 => g0_b0_n_0,
      I5 => \^itimebase_count_reg[19]_0\,
      O => g0_b3_i_6_n_0
    );
g0_b3_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^itimebase_count_reg[23]_3\,
      I1 => \^itimebase_count_reg[23]_2\,
      I2 => g0_b1_n_0,
      I3 => \^itimebase_count_reg[23]_1\,
      I4 => g0_b0_n_0,
      I5 => \^itimebase_count_reg[23]_0\,
      O => g0_b3_i_7_n_0
    );
g0_b3_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^itimebase_count_reg[11]_3\,
      I1 => \^itimebase_count_reg[11]_2\,
      I2 => g0_b1_n_0,
      I3 => \^itimebase_count_reg[11]_1\,
      I4 => g0_b0_n_0,
      I5 => \^itimebase_count_reg[11]_0\,
      O => g0_b3_i_8_n_0
    );
g0_b3_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^itimebase_count_reg[15]_3\,
      I1 => \^itimebase_count_reg[15]_2\,
      I2 => g0_b1_n_0,
      I3 => \^itimebase_count_reg[15]_1\,
      I4 => g0_b0_n_0,
      I5 => \^itimebase_count_reg[15]_0\,
      O => g0_b3_i_9_n_0
    );
\iTimebase_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^read_mux_in\(0),
      I1 => \^read_mux_in\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      I3 => s_axi_aresetn,
      O => timebase_Reg_Reset
    );
\iTimebase_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^read_mux_in__0\(0),
      O => \iTimebase_count[0]_i_5_n_0\
    );
\iTimebase_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[0]_i_3_n_7\,
      Q => \^read_mux_in__0\(0),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \iTimebase_count_reg[0]_i_3_n_0\,
      CO(2) => \iTimebase_count_reg[0]_i_3_n_1\,
      CO(1) => \iTimebase_count_reg[0]_i_3_n_2\,
      CO(0) => \iTimebase_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \iTimebase_count_reg[0]_i_3_n_4\,
      O(2) => \iTimebase_count_reg[0]_i_3_n_5\,
      O(1) => \iTimebase_count_reg[0]_i_3_n_6\,
      O(0) => \iTimebase_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => \^read_mux_in__0\(3 downto 1),
      S(0) => \iTimebase_count[0]_i_5_n_0\
    );
\iTimebase_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[8]_i_1_n_5\,
      Q => \^itimebase_count_reg[11]_2\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[8]_i_1_n_4\,
      Q => \^itimebase_count_reg[11]_3\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[12]_i_1_n_7\,
      Q => \^itimebase_count_reg[15]_0\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[8]_i_1_n_0\,
      CO(3) => \iTimebase_count_reg[12]_i_1_n_0\,
      CO(2) => \iTimebase_count_reg[12]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[12]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[12]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[12]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[12]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[12]_i_1_n_7\,
      S(3) => \^itimebase_count_reg[15]_3\,
      S(2) => \^itimebase_count_reg[15]_2\,
      S(1) => \^itimebase_count_reg[15]_1\,
      S(0) => \^itimebase_count_reg[15]_0\
    );
\iTimebase_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[12]_i_1_n_6\,
      Q => \^itimebase_count_reg[15]_1\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[12]_i_1_n_5\,
      Q => \^itimebase_count_reg[15]_2\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[12]_i_1_n_4\,
      Q => \^itimebase_count_reg[15]_3\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[16]_i_1_n_7\,
      Q => \^itimebase_count_reg[19]_0\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[12]_i_1_n_0\,
      CO(3) => \iTimebase_count_reg[16]_i_1_n_0\,
      CO(2) => \iTimebase_count_reg[16]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[16]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[16]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[16]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[16]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[16]_i_1_n_7\,
      S(3) => \^itimebase_count_reg[19]_3\,
      S(2) => \^itimebase_count_reg[19]_2\,
      S(1) => \^itimebase_count_reg[19]_1\,
      S(0) => \^itimebase_count_reg[19]_0\
    );
\iTimebase_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[16]_i_1_n_6\,
      Q => \^itimebase_count_reg[19]_1\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[16]_i_1_n_5\,
      Q => \^itimebase_count_reg[19]_2\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[16]_i_1_n_4\,
      Q => \^itimebase_count_reg[19]_3\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[0]_i_3_n_6\,
      Q => \^read_mux_in__0\(1),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[20]_i_1_n_7\,
      Q => \^itimebase_count_reg[23]_0\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[16]_i_1_n_0\,
      CO(3) => \iTimebase_count_reg[20]_i_1_n_0\,
      CO(2) => \iTimebase_count_reg[20]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[20]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[20]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[20]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[20]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[20]_i_1_n_7\,
      S(3) => \^itimebase_count_reg[23]_3\,
      S(2) => \^itimebase_count_reg[23]_2\,
      S(1) => \^itimebase_count_reg[23]_1\,
      S(0) => \^itimebase_count_reg[23]_0\
    );
\iTimebase_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[20]_i_1_n_6\,
      Q => \^itimebase_count_reg[23]_1\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[20]_i_1_n_5\,
      Q => \^itimebase_count_reg[23]_2\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[20]_i_1_n_4\,
      Q => \^itimebase_count_reg[23]_3\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[24]_i_1_n_7\,
      Q => \^itimebase_count_reg[27]_0\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[20]_i_1_n_0\,
      CO(3) => \iTimebase_count_reg[24]_i_1_n_0\,
      CO(2) => \iTimebase_count_reg[24]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[24]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[24]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[24]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[24]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[24]_i_1_n_7\,
      S(3) => \^itimebase_count_reg[27]_3\,
      S(2) => \^itimebase_count_reg[27]_2\,
      S(1) => \^itimebase_count_reg[27]_1\,
      S(0) => \^itimebase_count_reg[27]_0\
    );
\iTimebase_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[24]_i_1_n_6\,
      Q => \^itimebase_count_reg[27]_1\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[24]_i_1_n_5\,
      Q => \^itimebase_count_reg[27]_2\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[24]_i_1_n_4\,
      Q => \^itimebase_count_reg[27]_3\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[28]_i_1_n_7\,
      Q => \^itimebase_count_reg[31]_0\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_iTimebase_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \iTimebase_count_reg[28]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[28]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[28]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[28]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[28]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[28]_i_1_n_7\,
      S(3) => \^p_0_in\,
      S(2) => \^itimebase_count_reg[31]_2\,
      S(1) => \^itimebase_count_reg[31]_1\,
      S(0) => \^itimebase_count_reg[31]_0\
    );
\iTimebase_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[28]_i_1_n_6\,
      Q => \^itimebase_count_reg[31]_1\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[0]_i_3_n_5\,
      Q => \^read_mux_in__0\(2),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[28]_i_1_n_5\,
      Q => \^itimebase_count_reg[31]_2\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[28]_i_1_n_4\,
      Q => \^p_0_in\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[0]_i_3_n_4\,
      Q => \^read_mux_in__0\(3),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[4]_i_1_n_7\,
      Q => \^s\(0),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[0]_i_3_n_0\,
      CO(3) => \iTimebase_count_reg[4]_i_1_n_0\,
      CO(2) => \iTimebase_count_reg[4]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[4]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[4]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[4]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[4]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^s\(3 downto 0)
    );
\iTimebase_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[4]_i_1_n_6\,
      Q => \^s\(1),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[4]_i_1_n_5\,
      Q => \^s\(2),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[4]_i_1_n_4\,
      Q => \^s\(3),
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[8]_i_1_n_7\,
      Q => \^itimebase_count_reg[11]_0\,
      R => timebase_Reg_Reset
    );
\iTimebase_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimebase_count_reg[4]_i_1_n_0\,
      CO(3) => \iTimebase_count_reg[8]_i_1_n_0\,
      CO(2) => \iTimebase_count_reg[8]_i_1_n_1\,
      CO(1) => \iTimebase_count_reg[8]_i_1_n_2\,
      CO(0) => \iTimebase_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \iTimebase_count_reg[8]_i_1_n_4\,
      O(2) => \iTimebase_count_reg[8]_i_1_n_5\,
      O(1) => \iTimebase_count_reg[8]_i_1_n_6\,
      O(0) => \iTimebase_count_reg[8]_i_1_n_7\,
      S(3) => \^itimebase_count_reg[11]_3\,
      S(2) => \^itimebase_count_reg[11]_2\,
      S(1) => \^itimebase_count_reg[11]_1\,
      S(0) => \^itimebase_count_reg[11]_0\
    );
\iTimebase_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INPUT_DOUBLE_REGS3_n_0,
      D => \iTimebase_count_reg[8]_i_1_n_6\,
      Q => \^itimebase_count_reg[11]_1\,
      R => timebase_Reg_Reset
    );
\timer_width_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \^bus2ip_reset\
    );
\timer_width_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      S => \^bus2ip_reset\
    );
\timer_width_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      S => \^bus2ip_reset\
    );
\timer_width_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      S => \^bus2ip_reset\
    );
\timer_width_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      S => \^bus2ip_reset\
    );
wdt_Bitin_1d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFFEAFFEAFF"
    )
        port map (
      I0 => wdt_Bitin_1d_i_2_n_0,
      I1 => bus2ip_wrce(1),
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => WDT_Current_State(1),
      I5 => WDT_Current_State(0),
      O => wdt_Bitin_1d_i_1_n_0
    );
wdt_Bitin_1d_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => g0_b3_n_0,
      I1 => Current_State,
      I2 => wdt_State_Preset_reg_i_2_n_0,
      O => wdt_Bitin_1d_i_2_n_0
    );
wdt_Bitin_1d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wdt_Bitin_1d_i_1_n_0,
      Q => wdt_Bitin_1d,
      R => '0'
    );
wdt_Reset_Status_Reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA00EAEAEAEAEA"
    )
        port map (
      I0 => \^wdt_reset_status_reg\,
      I1 => WDT_Current_State(1),
      I2 => WDT_Current_State(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => s_axi_wdata(3),
      O => wdt_Reset_Status_Reg_i_1_n_0
    );
wdt_Reset_Status_Reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wdt_Reset_Status_Reg_i_1_n_0,
      Q => \^wdt_reset_status_reg\,
      R => '0'
    );
wdt_State_Preset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041414100"
    )
        port map (
      I0 => wdt_State_Preset_reg_i_2_n_0,
      I1 => Current_State,
      I2 => g0_b3_n_0,
      I3 => \^read_mux_in\(1),
      I4 => \^read_mux_in\(0),
      I5 => wdt_Bitin_1d,
      O => p_2_in
    );
wdt_State_Preset_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^itimebase_count_reg[23]_0\,
      I1 => \^itimebase_count_reg[23]_1\,
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^itimebase_count_reg[23]_2\,
      I5 => \^itimebase_count_reg[23]_3\,
      O => wdt_State_Preset_i_10_n_0
    );
wdt_State_Preset_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^itimebase_count_reg[31]_0\,
      I1 => \^itimebase_count_reg[31]_1\,
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^itimebase_count_reg[31]_2\,
      I5 => \^p_0_in\,
      O => wdt_State_Preset_i_11_n_0
    );
wdt_State_Preset_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^itimebase_count_reg[27]_0\,
      I1 => \^itimebase_count_reg[27]_1\,
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^itimebase_count_reg[27]_2\,
      I5 => \^itimebase_count_reg[27]_3\,
      O => wdt_State_Preset_i_12_n_0
    );
wdt_State_Preset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => wdt_State_Preset_i_5_n_0,
      I1 => wdt_State_Preset_i_6_n_0,
      I2 => \g0_b2__1_n_0\,
      I3 => wdt_State_Preset_i_7_n_0,
      I4 => \g0_b2__0_n_0\,
      I5 => wdt_State_Preset_i_8_n_0,
      O => wdt_State_Preset_i_3_n_0
    );
wdt_State_Preset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => wdt_State_Preset_i_9_n_0,
      I1 => wdt_State_Preset_i_10_n_0,
      I2 => \g0_b2__1_n_0\,
      I3 => wdt_State_Preset_i_11_n_0,
      I4 => \g0_b2__0_n_0\,
      I5 => wdt_State_Preset_i_12_n_0,
      O => wdt_State_Preset_i_4_n_0
    );
wdt_State_Preset_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^read_mux_in__0\(0),
      I1 => \^read_mux_in__0\(1),
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^read_mux_in__0\(2),
      I5 => \^read_mux_in__0\(3),
      O => wdt_State_Preset_i_5_n_0
    );
wdt_State_Preset_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^s\(0),
      I1 => \^s\(1),
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^s\(2),
      I5 => \^s\(3),
      O => wdt_State_Preset_i_6_n_0
    );
wdt_State_Preset_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^itimebase_count_reg[15]_0\,
      I1 => \^itimebase_count_reg[15]_1\,
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^itimebase_count_reg[15]_2\,
      I5 => \^itimebase_count_reg[15]_3\,
      O => wdt_State_Preset_i_7_n_0
    );
wdt_State_Preset_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^itimebase_count_reg[11]_0\,
      I1 => \^itimebase_count_reg[11]_1\,
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^itimebase_count_reg[11]_2\,
      I5 => \^itimebase_count_reg[11]_3\,
      O => wdt_State_Preset_i_8_n_0
    );
wdt_State_Preset_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \^itimebase_count_reg[19]_0\,
      I1 => \^itimebase_count_reg[19]_1\,
      I2 => g0_b0_n_0,
      I3 => g0_b1_n_0,
      I4 => \^itimebase_count_reg[19]_2\,
      I5 => \^itimebase_count_reg[19]_3\,
      O => wdt_State_Preset_i_9_n_0
    );
wdt_State_Preset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_2_in,
      Q => wdt_State_Preset,
      R => \^bus2ip_reset\
    );
wdt_State_Preset_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => wdt_State_Preset_i_3_n_0,
      I1 => wdt_State_Preset_i_4_n_0,
      O => wdt_State_Preset_reg_i_2_n_0,
      S => \g0_b2__2_n_0\
    );
wdt_State_Reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AE00AE00AE00"
    )
        port map (
      I0 => \^wdt_interrupt\,
      I1 => p_2_in,
      I2 => wdt_State_Preset,
      I3 => s_axi_aresetn,
      I4 => s_axi_wdata(2),
      I5 => bus2ip_wrce(1),
      O => wdt_State_Reg_i_1_n_0
    );
wdt_State_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wdt_State_Reg_i_1_n_0,
      Q => \^wdt_interrupt\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_slave_attachment is
  port (
    eWDT1_Reg_reg : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_cs : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    eWDT2_Reg_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \iTimebase_count_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eWDT2_Reg_reg_0 : out STD_LOGIC;
    eWDT1_Reg_reg_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ip2bus_error__0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    read_Mux_In : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \read_Mux_In__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wdt_State_Reg_reg : in STD_LOGIC;
    wdt_Reset_Status_Reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \iTimebase_count_reg[8]\ : in STD_LOGIC;
    \iTimebase_count_reg[9]\ : in STD_LOGIC;
    \iTimebase_count_reg[10]\ : in STD_LOGIC;
    \iTimebase_count_reg[11]\ : in STD_LOGIC;
    \iTimebase_count_reg[12]\ : in STD_LOGIC;
    \iTimebase_count_reg[13]\ : in STD_LOGIC;
    \iTimebase_count_reg[14]\ : in STD_LOGIC;
    \iTimebase_count_reg[15]\ : in STD_LOGIC;
    \iTimebase_count_reg[16]\ : in STD_LOGIC;
    \iTimebase_count_reg[17]\ : in STD_LOGIC;
    \iTimebase_count_reg[18]\ : in STD_LOGIC;
    \iTimebase_count_reg[19]\ : in STD_LOGIC;
    \iTimebase_count_reg[20]\ : in STD_LOGIC;
    \iTimebase_count_reg[21]\ : in STD_LOGIC;
    \iTimebase_count_reg[22]\ : in STD_LOGIC;
    \iTimebase_count_reg[23]\ : in STD_LOGIC;
    \iTimebase_count_reg[24]\ : in STD_LOGIC;
    \iTimebase_count_reg[25]\ : in STD_LOGIC;
    \iTimebase_count_reg[26]\ : in STD_LOGIC;
    \iTimebase_count_reg[27]\ : in STD_LOGIC;
    \iTimebase_count_reg[28]\ : in STD_LOGIC;
    \iTimebase_count_reg[29]\ : in STD_LOGIC;
    \iTimebase_count_reg[30]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_slave_attachment : entity is "slave_attachment";
end system_axi_timebase_wdt_0_0_slave_attachment;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_slave_attachment is
  signal \^bus_rnw_reg_reg\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal I_DECODER_n_45 : STD_LOGIC;
  signal I_DECODER_n_46 : STD_LOGIC;
  signal I_DECODER_n_7 : STD_LOGIC;
  signal \TIMEBASE_WDT_CORE_I/sl_DBus_In\ : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of is_read_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair4";
begin
  Bus_RNW_reg_reg <= \^bus_rnw_reg_reg\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      O => plusOp(5)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5),
      R => clear
    );
I_DECODER: entity work.system_axi_timebase_wdt_0_0_address_decoder
     port map (
      D(1 downto 0) => p_0_out(1 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\(5 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5 downto 0),
      Q => start2,
      S(3 downto 0) => S(3 downto 0),
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg_n_0_[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg_n_0_[3]\,
      bus2ip_cs => bus2ip_cs,
      bus2ip_rnw_i_reg => \^bus_rnw_reg_reg\,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      eWDT1_Reg_reg => eWDT1_Reg_reg,
      eWDT1_Reg_reg_0 => eWDT1_Reg_reg_0,
      eWDT2_Reg_reg => eWDT2_Reg_reg,
      eWDT2_Reg_reg_0 => eWDT2_Reg_reg_0,
      \iTimebase_count_reg[0]\ => \iTimebase_count_reg[0]\,
      \iTimebase_count_reg[10]\ => \iTimebase_count_reg[10]\,
      \iTimebase_count_reg[11]\ => \iTimebase_count_reg[11]\,
      \iTimebase_count_reg[12]\ => \iTimebase_count_reg[12]\,
      \iTimebase_count_reg[13]\ => \iTimebase_count_reg[13]\,
      \iTimebase_count_reg[14]\ => \iTimebase_count_reg[14]\,
      \iTimebase_count_reg[15]\ => \iTimebase_count_reg[15]\,
      \iTimebase_count_reg[16]\ => \iTimebase_count_reg[16]\,
      \iTimebase_count_reg[17]\ => \iTimebase_count_reg[17]\,
      \iTimebase_count_reg[18]\ => \iTimebase_count_reg[18]\,
      \iTimebase_count_reg[19]\ => \iTimebase_count_reg[19]\,
      \iTimebase_count_reg[20]\ => \iTimebase_count_reg[20]\,
      \iTimebase_count_reg[21]\ => \iTimebase_count_reg[21]\,
      \iTimebase_count_reg[22]\ => \iTimebase_count_reg[22]\,
      \iTimebase_count_reg[23]\ => \iTimebase_count_reg[23]\,
      \iTimebase_count_reg[24]\ => \iTimebase_count_reg[24]\,
      \iTimebase_count_reg[25]\ => \iTimebase_count_reg[25]\,
      \iTimebase_count_reg[26]\ => \iTimebase_count_reg[26]\,
      \iTimebase_count_reg[27]\ => \iTimebase_count_reg[27]\,
      \iTimebase_count_reg[28]\ => \iTimebase_count_reg[28]\,
      \iTimebase_count_reg[29]\ => \iTimebase_count_reg[29]\,
      \iTimebase_count_reg[30]\ => \iTimebase_count_reg[30]\,
      \iTimebase_count_reg[8]\ => \iTimebase_count_reg[8]\,
      \iTimebase_count_reg[9]\ => \iTimebase_count_reg[9]\,
      \ip2bus_error__0\ => \ip2bus_error__0\,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      p_0_in => p_0_in,
      read_Mux_In(1 downto 0) => read_Mux_In(1 downto 0),
      \read_Mux_In__0\(3 downto 0) => \read_Mux_In__0\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(0),
      \s_axi_bresp_i_reg[1]\ => I_DECODER_n_46,
      s_axi_bvalid_i_reg => I_DECODER_n_45,
      s_axi_bvalid_i_reg_0 => \^s_axi_bvalid\,
      \s_axi_rdata_i_reg[31]\(31) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(0),
      \s_axi_rdata_i_reg[31]\(30) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(1),
      \s_axi_rdata_i_reg[31]\(29) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(2),
      \s_axi_rdata_i_reg[31]\(28) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(3),
      \s_axi_rdata_i_reg[31]\(27) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(4),
      \s_axi_rdata_i_reg[31]\(26) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(5),
      \s_axi_rdata_i_reg[31]\(25) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(6),
      \s_axi_rdata_i_reg[31]\(24) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(7),
      \s_axi_rdata_i_reg[31]\(23) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(8),
      \s_axi_rdata_i_reg[31]\(22) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(9),
      \s_axi_rdata_i_reg[31]\(21) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(10),
      \s_axi_rdata_i_reg[31]\(20) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(11),
      \s_axi_rdata_i_reg[31]\(19) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(12),
      \s_axi_rdata_i_reg[31]\(18) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(13),
      \s_axi_rdata_i_reg[31]\(17) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(14),
      \s_axi_rdata_i_reg[31]\(16) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(15),
      \s_axi_rdata_i_reg[31]\(15) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(16),
      \s_axi_rdata_i_reg[31]\(14) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(17),
      \s_axi_rdata_i_reg[31]\(13) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(18),
      \s_axi_rdata_i_reg[31]\(12) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(19),
      \s_axi_rdata_i_reg[31]\(11) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(20),
      \s_axi_rdata_i_reg[31]\(10) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(21),
      \s_axi_rdata_i_reg[31]\(9) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(22),
      \s_axi_rdata_i_reg[31]\(8) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(23),
      \s_axi_rdata_i_reg[31]\(7) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(24),
      \s_axi_rdata_i_reg[31]\(6) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(25),
      \s_axi_rdata_i_reg[31]\(5) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(26),
      \s_axi_rdata_i_reg[31]\(4) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(27),
      \s_axi_rdata_i_reg[31]\(3) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(28),
      \s_axi_rdata_i_reg[31]\(2) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(29),
      \s_axi_rdata_i_reg[31]\(1) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(30),
      \s_axi_rdata_i_reg[31]\(0) => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(31),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => I_DECODER_n_7,
      s_axi_rvalid_i_reg_0 => \^s_axi_rvalid\,
      s_axi_rvalid_i_reg_1 => \state[0]_i_2_n_0\,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => \state[1]_i_2_n_0\,
      \state_reg[1]\(1 downto 0) => state(1 downto 0),
      \state_reg[1]_0\ => \state[1]_i_3_n_0\,
      \timer_width_reg[4]\(4 downto 0) => Q(4 downto 0),
      wdt_Reset_Status_Reg => wdt_Reset_Status_Reg,
      wdt_State_Reg_reg => wdt_State_Reg_reg
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => bus2ip_rnw_i06_out,
      I2 => s_axi_awaddr(0),
      I3 => \bus2ip_addr_i[3]_i_3_n_0\,
      I4 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => bus2ip_rnw_i06_out,
      I2 => s_axi_awaddr(1),
      I3 => \bus2ip_addr_i[3]_i_3_n_0\,
      I4 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      O => bus2ip_rnw_i06_out
    );
\bus2ip_addr_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[3]_i_3_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF000000AA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => \^bus_rnw_reg_reg\,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => \^bus_rnw_reg_reg\,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      I2 => is_write,
      I3 => is_read,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808055555555"
    )
        port map (
      I0 => state(0),
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      I5 => state(1),
      O => is_write
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => is_write,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_46,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_45,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(21),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(20),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(19),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(18),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(17),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(16),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(15),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(14),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(13),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(12),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(11),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(10),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(9),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(8),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(7),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(6),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(5),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(4),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(3),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(2),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(1),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(0),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(23),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \TIMEBASE_WDT_CORE_I/sl_DBus_In\(22),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => \ip2bus_error__0\,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_7,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_cs : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \iTimebase_count_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eWDT2_Reg_reg : out STD_LOGIC;
    eWDT1_Reg_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ip2bus_error__0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    read_Mux_In : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \read_Mux_In__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wdt_State_Reg_reg : in STD_LOGIC;
    wdt_Reset_Status_Reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \iTimebase_count_reg[8]\ : in STD_LOGIC;
    \iTimebase_count_reg[9]\ : in STD_LOGIC;
    \iTimebase_count_reg[10]\ : in STD_LOGIC;
    \iTimebase_count_reg[11]\ : in STD_LOGIC;
    \iTimebase_count_reg[12]\ : in STD_LOGIC;
    \iTimebase_count_reg[13]\ : in STD_LOGIC;
    \iTimebase_count_reg[14]\ : in STD_LOGIC;
    \iTimebase_count_reg[15]\ : in STD_LOGIC;
    \iTimebase_count_reg[16]\ : in STD_LOGIC;
    \iTimebase_count_reg[17]\ : in STD_LOGIC;
    \iTimebase_count_reg[18]\ : in STD_LOGIC;
    \iTimebase_count_reg[19]\ : in STD_LOGIC;
    \iTimebase_count_reg[20]\ : in STD_LOGIC;
    \iTimebase_count_reg[21]\ : in STD_LOGIC;
    \iTimebase_count_reg[22]\ : in STD_LOGIC;
    \iTimebase_count_reg[23]\ : in STD_LOGIC;
    \iTimebase_count_reg[24]\ : in STD_LOGIC;
    \iTimebase_count_reg[25]\ : in STD_LOGIC;
    \iTimebase_count_reg[26]\ : in STD_LOGIC;
    \iTimebase_count_reg[27]\ : in STD_LOGIC;
    \iTimebase_count_reg[28]\ : in STD_LOGIC;
    \iTimebase_count_reg[29]\ : in STD_LOGIC;
    \iTimebase_count_reg[30]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end system_axi_timebase_wdt_0_0_axi_lite_ipif;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.system_axi_timebase_wdt_0_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      Q(4 downto 0) => Q(4 downto 0),
      S(3 downto 0) => S(3 downto 0),
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      eWDT1_Reg_reg => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      eWDT1_Reg_reg_0 => eWDT1_Reg_reg,
      eWDT2_Reg_reg => Bus_RNW_reg,
      eWDT2_Reg_reg_0 => eWDT2_Reg_reg,
      \iTimebase_count_reg[0]\ => \iTimebase_count_reg[0]\,
      \iTimebase_count_reg[10]\ => \iTimebase_count_reg[10]\,
      \iTimebase_count_reg[11]\ => \iTimebase_count_reg[11]\,
      \iTimebase_count_reg[12]\ => \iTimebase_count_reg[12]\,
      \iTimebase_count_reg[13]\ => \iTimebase_count_reg[13]\,
      \iTimebase_count_reg[14]\ => \iTimebase_count_reg[14]\,
      \iTimebase_count_reg[15]\ => \iTimebase_count_reg[15]\,
      \iTimebase_count_reg[16]\ => \iTimebase_count_reg[16]\,
      \iTimebase_count_reg[17]\ => \iTimebase_count_reg[17]\,
      \iTimebase_count_reg[18]\ => \iTimebase_count_reg[18]\,
      \iTimebase_count_reg[19]\ => \iTimebase_count_reg[19]\,
      \iTimebase_count_reg[20]\ => \iTimebase_count_reg[20]\,
      \iTimebase_count_reg[21]\ => \iTimebase_count_reg[21]\,
      \iTimebase_count_reg[22]\ => \iTimebase_count_reg[22]\,
      \iTimebase_count_reg[23]\ => \iTimebase_count_reg[23]\,
      \iTimebase_count_reg[24]\ => \iTimebase_count_reg[24]\,
      \iTimebase_count_reg[25]\ => \iTimebase_count_reg[25]\,
      \iTimebase_count_reg[26]\ => \iTimebase_count_reg[26]\,
      \iTimebase_count_reg[27]\ => \iTimebase_count_reg[27]\,
      \iTimebase_count_reg[28]\ => \iTimebase_count_reg[28]\,
      \iTimebase_count_reg[29]\ => \iTimebase_count_reg[29]\,
      \iTimebase_count_reg[30]\ => \iTimebase_count_reg[30]\,
      \iTimebase_count_reg[8]\ => \iTimebase_count_reg[8]\,
      \iTimebase_count_reg[9]\ => \iTimebase_count_reg[9]\,
      \ip2bus_error__0\ => \ip2bus_error__0\,
      p_0_in => p_0_in,
      read_Mux_In(1 downto 0) => read_Mux_In(1 downto 0),
      \read_Mux_In__0\(3 downto 0) => \read_Mux_In__0\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      wdt_Reset_Status_Reg => wdt_Reset_Status_Reg,
      wdt_State_Reg_reg => wdt_State_Reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_axi_timebase_wdt is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    wdt_interrupt : out STD_LOGIC;
    wdt_reset : out STD_LOGIC;
    timebase_interrupt : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_axi_timebase_wdt : entity is "axi_timebase_wdt";
end system_axi_timebase_wdt_0_0_axi_timebase_wdt;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_axi_timebase_wdt is
  signal AXI4_LITE_I_n_10 : STD_LOGIC;
  signal AXI4_LITE_I_n_13 : STD_LOGIC;
  signal AXI4_LITE_I_n_14 : STD_LOGIC;
  signal AXI4_LITE_I_n_3 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_10 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_11 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_12 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_13 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_14 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_15 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_16 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_17 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_18 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_19 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_20 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_21 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_22 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_23 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_24 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_25 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_26 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_27 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_28 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_29 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_30 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_31 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_32 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_33 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_34 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_8 : STD_LOGIC;
  signal TIMEBASE_WDT_CORE_I_n_9 : STD_LOGIC;
  signal bus2ip_cs : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \ip2bus_error__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal read_Mux_In : STD_LOGIC_VECTOR ( 2 to 3 );
  signal \read_Mux_In__0\ : STD_LOGIC_VECTOR ( 4 to 7 );
  signal timer_width : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wdt_Reset_Status_Reg : STD_LOGIC;
  signal \^wdt_interrupt\ : STD_LOGIC;
begin
  wdt_interrupt <= \^wdt_interrupt\;
AXI4_LITE_I: entity work.system_axi_timebase_wdt_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI4_LITE_I_n_3,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      Q(4 downto 0) => timer_width(4 downto 0),
      S(3) => TIMEBASE_WDT_CORE_I_n_8,
      S(2) => TIMEBASE_WDT_CORE_I_n_9,
      S(1) => TIMEBASE_WDT_CORE_I_n_10,
      S(0) => TIMEBASE_WDT_CORE_I_n_11,
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrce(1) => bus2ip_wrce(0),
      bus2ip_wrce(0) => bus2ip_wrce(3),
      eWDT1_Reg_reg => AXI4_LITE_I_n_14,
      eWDT2_Reg_reg => AXI4_LITE_I_n_13,
      \iTimebase_count_reg[0]\ => AXI4_LITE_I_n_10,
      \iTimebase_count_reg[10]\ => TIMEBASE_WDT_CORE_I_n_14,
      \iTimebase_count_reg[11]\ => TIMEBASE_WDT_CORE_I_n_15,
      \iTimebase_count_reg[12]\ => TIMEBASE_WDT_CORE_I_n_16,
      \iTimebase_count_reg[13]\ => TIMEBASE_WDT_CORE_I_n_17,
      \iTimebase_count_reg[14]\ => TIMEBASE_WDT_CORE_I_n_18,
      \iTimebase_count_reg[15]\ => TIMEBASE_WDT_CORE_I_n_19,
      \iTimebase_count_reg[16]\ => TIMEBASE_WDT_CORE_I_n_20,
      \iTimebase_count_reg[17]\ => TIMEBASE_WDT_CORE_I_n_21,
      \iTimebase_count_reg[18]\ => TIMEBASE_WDT_CORE_I_n_22,
      \iTimebase_count_reg[19]\ => TIMEBASE_WDT_CORE_I_n_23,
      \iTimebase_count_reg[20]\ => TIMEBASE_WDT_CORE_I_n_24,
      \iTimebase_count_reg[21]\ => TIMEBASE_WDT_CORE_I_n_25,
      \iTimebase_count_reg[22]\ => TIMEBASE_WDT_CORE_I_n_26,
      \iTimebase_count_reg[23]\ => TIMEBASE_WDT_CORE_I_n_27,
      \iTimebase_count_reg[24]\ => TIMEBASE_WDT_CORE_I_n_28,
      \iTimebase_count_reg[25]\ => TIMEBASE_WDT_CORE_I_n_29,
      \iTimebase_count_reg[26]\ => TIMEBASE_WDT_CORE_I_n_30,
      \iTimebase_count_reg[27]\ => TIMEBASE_WDT_CORE_I_n_31,
      \iTimebase_count_reg[28]\ => TIMEBASE_WDT_CORE_I_n_32,
      \iTimebase_count_reg[29]\ => TIMEBASE_WDT_CORE_I_n_33,
      \iTimebase_count_reg[30]\ => TIMEBASE_WDT_CORE_I_n_34,
      \iTimebase_count_reg[8]\ => TIMEBASE_WDT_CORE_I_n_12,
      \iTimebase_count_reg[9]\ => TIMEBASE_WDT_CORE_I_n_13,
      \ip2bus_error__0\ => \ip2bus_error__0\,
      p_0_in => p_0_in,
      read_Mux_In(1) => read_Mux_In(2),
      read_Mux_In(0) => read_Mux_In(3),
      \read_Mux_In__0\(3) => \read_Mux_In__0\(4),
      \read_Mux_In__0\(2) => \read_Mux_In__0\(5),
      \read_Mux_In__0\(1) => \read_Mux_In__0\(6),
      \read_Mux_In__0\(0) => \read_Mux_In__0\(7),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      wdt_Reset_Status_Reg => wdt_Reset_Status_Reg,
      wdt_State_Reg_reg => \^wdt_interrupt\
    );
TIMEBASE_WDT_CORE_I: entity work.system_axi_timebase_wdt_0_0_timebase_wdt_core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => AXI4_LITE_I_n_14,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => AXI4_LITE_I_n_10,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => AXI4_LITE_I_n_13,
      Q(4 downto 0) => timer_width(4 downto 0),
      S(3) => TIMEBASE_WDT_CORE_I_n_8,
      S(2) => TIMEBASE_WDT_CORE_I_n_9,
      S(1) => TIMEBASE_WDT_CORE_I_n_10,
      S(0) => TIMEBASE_WDT_CORE_I_n_11,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrce(1) => bus2ip_wrce(0),
      bus2ip_wrce(0) => bus2ip_wrce(3),
      freeze => freeze,
      \iTimebase_count_reg[11]_0\ => TIMEBASE_WDT_CORE_I_n_12,
      \iTimebase_count_reg[11]_1\ => TIMEBASE_WDT_CORE_I_n_13,
      \iTimebase_count_reg[11]_2\ => TIMEBASE_WDT_CORE_I_n_14,
      \iTimebase_count_reg[11]_3\ => TIMEBASE_WDT_CORE_I_n_15,
      \iTimebase_count_reg[15]_0\ => TIMEBASE_WDT_CORE_I_n_16,
      \iTimebase_count_reg[15]_1\ => TIMEBASE_WDT_CORE_I_n_17,
      \iTimebase_count_reg[15]_2\ => TIMEBASE_WDT_CORE_I_n_18,
      \iTimebase_count_reg[15]_3\ => TIMEBASE_WDT_CORE_I_n_19,
      \iTimebase_count_reg[19]_0\ => TIMEBASE_WDT_CORE_I_n_20,
      \iTimebase_count_reg[19]_1\ => TIMEBASE_WDT_CORE_I_n_21,
      \iTimebase_count_reg[19]_2\ => TIMEBASE_WDT_CORE_I_n_22,
      \iTimebase_count_reg[19]_3\ => TIMEBASE_WDT_CORE_I_n_23,
      \iTimebase_count_reg[23]_0\ => TIMEBASE_WDT_CORE_I_n_24,
      \iTimebase_count_reg[23]_1\ => TIMEBASE_WDT_CORE_I_n_25,
      \iTimebase_count_reg[23]_2\ => TIMEBASE_WDT_CORE_I_n_26,
      \iTimebase_count_reg[23]_3\ => TIMEBASE_WDT_CORE_I_n_27,
      \iTimebase_count_reg[27]_0\ => TIMEBASE_WDT_CORE_I_n_28,
      \iTimebase_count_reg[27]_1\ => TIMEBASE_WDT_CORE_I_n_29,
      \iTimebase_count_reg[27]_2\ => TIMEBASE_WDT_CORE_I_n_30,
      \iTimebase_count_reg[27]_3\ => TIMEBASE_WDT_CORE_I_n_31,
      \iTimebase_count_reg[31]_0\ => TIMEBASE_WDT_CORE_I_n_32,
      \iTimebase_count_reg[31]_1\ => TIMEBASE_WDT_CORE_I_n_33,
      \iTimebase_count_reg[31]_2\ => TIMEBASE_WDT_CORE_I_n_34,
      p_0_in => p_0_in,
      read_Mux_In(1) => read_Mux_In(2),
      read_Mux_In(0) => read_Mux_In(3),
      \read_Mux_In__0\(3) => \read_Mux_In__0\(4),
      \read_Mux_In__0\(2) => \read_Mux_In__0\(5),
      \read_Mux_In__0\(1) => \read_Mux_In__0\(6),
      \read_Mux_In__0\(0) => \read_Mux_In__0\(7),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      timebase_interrupt => timebase_interrupt,
      wdt_Reset_Status_Reg => wdt_Reset_Status_Reg,
      wdt_interrupt => \^wdt_interrupt\,
      wdt_reset => wdt_reset
    );
ip2bus_error: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A00AA00AA00AA"
    )
        port map (
      I0 => bus2ip_cs,
      I1 => s_axi_wstrb(0),
      I2 => s_axi_wstrb(3),
      I3 => AXI4_LITE_I_n_3,
      I4 => s_axi_wstrb(1),
      I5 => s_axi_wstrb(2),
      O => \ip2bus_error__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0_axi_timebase_wdt_top is
  port (
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    timebase_interrupt : out STD_LOGIC;
    wdt_interrupt : out STD_LOGIC;
    wdt_reset : out STD_LOGIC;
    wdt_reset_pending : out STD_LOGIC;
    wdt_state_vec : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute C_ENABLE_WINDOW_WDT : integer;
  attribute C_ENABLE_WINDOW_WDT of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is "zynq";
  attribute C_MAX_COUNT_WIDTH : integer;
  attribute C_MAX_COUNT_WIDTH of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 32;
  attribute C_SST_COUNT_WIDTH : integer;
  attribute C_SST_COUNT_WIDTH of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 8;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 32;
  attribute C_WDT_ENABLE_ONCE : integer;
  attribute C_WDT_ENABLE_ONCE of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 1;
  attribute C_WDT_INTERVAL : integer;
  attribute C_WDT_INTERVAL of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is 30;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top : entity is "axi_timebase_wdt_top";
end system_axi_timebase_wdt_0_0_axi_timebase_wdt_top;

architecture STRUCTURE of system_axi_timebase_wdt_0_0_axi_timebase_wdt_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute max_fanout : string;
  attribute max_fanout of s_axi_aclk : signal is "10000";
  attribute max_fanout of s_axi_aresetn : signal is "10000";
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  wdt_reset_pending <= \<const0>\;
  wdt_state_vec(6) <= \<const0>\;
  wdt_state_vec(5) <= \<const0>\;
  wdt_state_vec(4) <= \<const0>\;
  wdt_state_vec(3) <= \<const0>\;
  wdt_state_vec(2) <= \<const0>\;
  wdt_state_vec(1) <= \<const0>\;
  wdt_state_vec(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\LEGACY_WDT.axi_timebase_wdt_i\: entity work.system_axi_timebase_wdt_0_0_axi_timebase_wdt
     port map (
      freeze => freeze,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      timebase_interrupt => timebase_interrupt,
      wdt_interrupt => wdt_interrupt,
      wdt_reset => wdt_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_timebase_wdt_0_0 is
  port (
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    timebase_interrupt : out STD_LOGIC;
    wdt_interrupt : out STD_LOGIC;
    wdt_reset : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axi_timebase_wdt_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axi_timebase_wdt_0_0 : entity is "system_axi_timebase_wdt_0_0,axi_timebase_wdt_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axi_timebase_wdt_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_axi_timebase_wdt_0_0 : entity is "axi_timebase_wdt_top,Vivado 2017.4";
end system_axi_timebase_wdt_0_0;

architecture STRUCTURE of system_axi_timebase_wdt_0_0 is
  signal NLW_U0_wdt_reset_pending_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wdt_state_vec_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute C_ENABLE_WINDOW_WDT : integer;
  attribute C_ENABLE_WINDOW_WDT of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_MAX_COUNT_WIDTH : integer;
  attribute C_MAX_COUNT_WIDTH of U0 : label is 32;
  attribute C_SST_COUNT_WIDTH : integer;
  attribute C_SST_COUNT_WIDTH of U0 : label is 8;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_WDT_ENABLE_ONCE : integer;
  attribute C_WDT_ENABLE_ONCE of U0 : label is 1;
  attribute C_WDT_INTERVAL : integer;
  attribute C_WDT_INTERVAL of U0 : label is 30;
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn:wdt_reset, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of timebase_interrupt : signal is "xilinx.com:signal:interrupt:1.0 TIMEBASE_INTERRUPT INTERRUPT";
  attribute x_interface_parameter of timebase_interrupt : signal is "XIL_INTERFACENAME TIMEBASE_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of wdt_interrupt : signal is "xilinx.com:signal:interrupt:1.0 WDT_INTERRUPT INTERRUPT";
  attribute x_interface_parameter of wdt_interrupt : signal is "XIL_INTERFACENAME WDT_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of wdt_reset : signal is "xilinx.com:signal:reset:1.0 WDT_RESET RST";
  attribute x_interface_parameter of wdt_reset : signal is "XIL_INTERFACENAME WDT_RESET, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_parameter of s_axi_araddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.system_axi_timebase_wdt_0_0_axi_timebase_wdt_top
     port map (
      freeze => freeze,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      timebase_interrupt => timebase_interrupt,
      wdt_interrupt => wdt_interrupt,
      wdt_reset => wdt_reset,
      wdt_reset_pending => NLW_U0_wdt_reset_pending_UNCONNECTED,
      wdt_state_vec(6 downto 0) => NLW_U0_wdt_state_vec_UNCONNECTED(6 downto 0)
    );
end STRUCTURE;
