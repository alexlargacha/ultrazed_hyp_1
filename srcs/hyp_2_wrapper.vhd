--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Sat Sep  7 11:46:22 2019
--Host        : xubuntu16 running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target hyp_2_wrapper.bd
--Design      : hyp_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hyp_2_wrapper is
  port (
    PLPMOD7_D0 : out STD_LOGIC;
    PLPMOD7_D1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    PLPMOD7_D2 : out STD_LOGIC;
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end hyp_2_wrapper;

architecture STRUCTURE of hyp_2_wrapper is
  component hyp_2 is
  port (
    PLPMOD7_D0 : out STD_LOGIC;
    PLPMOD7_D1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PLPMOD7_D2 : out STD_LOGIC
  );
  end component hyp_2;
begin
hyp_2_i: component hyp_2
     port map (
      PLPMOD7_D0 => PLPMOD7_D0,
      PLPMOD7_D1(0) => PLPMOD7_D1(0),
      PLPMOD7_D2 => PLPMOD7_D2,
      led_8bits_tri_o(7 downto 0) => led_8bits_tri_o(7 downto 0)
    );
end STRUCTURE;
