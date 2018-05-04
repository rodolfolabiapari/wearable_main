-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri May  4 11:05:41 2018
-- Host        : c3po running 64-bit Linux Mint 18.2 Sonya
-- Command     : write_vhdl -force -mode synth_stub
--               /home/kiev/Gits/wearable_project_main/vivado_and_sdk/vivado_project/vivado_project.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_xlconcat_1/design_1_microblaze_0_xlconcat_1_stub.vhdl
-- Design      : design_1_microblaze_0_xlconcat_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_microblaze_0_xlconcat_1 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end design_1_microblaze_0_xlconcat_1;

architecture stub of design_1_microblaze_0_xlconcat_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[0:0],In1[0:0],In2[0:0],In3[0:0],In4[0:0],dout[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
begin
end;
