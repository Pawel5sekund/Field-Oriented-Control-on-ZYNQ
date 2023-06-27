-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Jun  8 22:47:01 2023
-- Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC/FOC_BLDC.gen/sources_1/ip/PID_DSP/PID_DSP_stub.vhdl
-- Design      : PID_DSP
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PID_DSP is
  Port ( 
    CLK : in STD_LOGIC;
    SEL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    D : in STD_LOGIC_VECTOR ( 17 downto 0 );
    CARRYOUT : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end PID_DSP;

architecture stub of PID_DSP is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SEL[1:0],A[17:0],B[17:0],C[47:0],D[17:0],CARRYOUT,P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_2,Vivado 2022.1";
begin
end;
