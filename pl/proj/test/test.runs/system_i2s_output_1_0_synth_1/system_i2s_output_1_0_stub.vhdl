-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun Feb 16 17:44:00 2020
-- Host        : ssg0 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_i2s_output_1_0_stub.vhdl
-- Design      : system_i2s_output_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    data_l : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_r : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_accepted : out STD_LOGIC;
    i2s_sd : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    i2s_sclk : out STD_LOGIC;
    i2s_mclk : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,data_l[15:0],data_r[15:0],data_accepted,i2s_sd,i2s_lrclk,i2s_sclk,i2s_mclk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "i2s_output,Vivado 2017.4";
begin
end;
