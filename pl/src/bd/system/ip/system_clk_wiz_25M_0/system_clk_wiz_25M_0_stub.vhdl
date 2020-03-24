-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed Feb  5 20:27:55 2020
-- Host        : ssg1 running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /ectf_master/pl/src/bd/system/ip/system_clk_wiz_25M_0/system_clk_wiz_25M_0_stub.vhdl
-- Design      : system_clk_wiz_25M_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_25M_0 is
  Port ( 
    clk_codec : out STD_LOGIC;
    clk_bus : out STD_LOGIC;
    clk_mb : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_25M_0;

architecture stub of system_clk_wiz_25M_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_codec,clk_bus,clk_mb,reset,locked,clk_in1";
begin
end;
