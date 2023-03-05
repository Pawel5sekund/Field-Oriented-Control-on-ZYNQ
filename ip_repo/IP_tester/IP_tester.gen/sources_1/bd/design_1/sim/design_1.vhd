--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Sat Mar  4 22:57:05 2023
--Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp0 : in STD_LOGIC;
    vauxn0 : in STD_LOGIC;
    vauxp1 : in STD_LOGIC;
    vauxn1 : in STD_LOGIC;
    vauxp2 : in STD_LOGIC;
    vauxn2 : in STD_LOGIC;
    vauxp3 : in STD_LOGIC;
    vauxn3 : in STD_LOGIC;
    vauxp4 : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    vauxp5 : in STD_LOGIC;
    vauxn5 : in STD_LOGIC;
    vauxp6 : in STD_LOGIC;
    vauxn6 : in STD_LOGIC;
    vauxp7 : in STD_LOGIC;
    vauxn7 : in STD_LOGIC;
    vauxp8 : in STD_LOGIC;
    vauxn8 : in STD_LOGIC;
    vauxp9 : in STD_LOGIC;
    vauxn9 : in STD_LOGIC;
    vauxp10 : in STD_LOGIC;
    vauxn10 : in STD_LOGIC;
    vauxp11 : in STD_LOGIC;
    vauxn11 : in STD_LOGIC;
    vauxp12 : in STD_LOGIC;
    vauxn12 : in STD_LOGIC;
    vauxp13 : in STD_LOGIC;
    vauxn13 : in STD_LOGIC;
    vauxp14 : in STD_LOGIC;
    vauxn14 : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_xadc_wiz_0_0;
  component design_1_sim_clk_gen_0_0 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_1_sim_clk_gen_0_0;
  component design_1_CORE_0_0 is
  port (
    CLK : in STD_LOGIC;
    daddr_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    den_out : out STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_in : in STD_LOGIC;
    dwe_out : out STD_LOGIC;
    resultAddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    resultData : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_CORE_0_0;
  signal CORE_0_daddr_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal CORE_0_den_out : STD_LOGIC;
  signal CORE_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal CORE_0_dwe_out : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal xadc_wiz_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_drdy_out : STD_LOGIC;
  signal NLW_CORE_0_resultAddr_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_CORE_0_resultData_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_sim_clk_gen_0_sync_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
CORE_0: component design_1_CORE_0_0
     port map (
      CLK => Net,
      daddr_out(6 downto 0) => CORE_0_daddr_out(6 downto 0),
      den_out => CORE_0_den_out,
      di_in(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      do_out(15 downto 0) => CORE_0_do_out(15 downto 0),
      drdy_in => xadc_wiz_0_drdy_out,
      dwe_out => CORE_0_dwe_out,
      resultAddr(6 downto 0) => NLW_CORE_0_resultAddr_UNCONNECTED(6 downto 0),
      resultData(15 downto 0) => NLW_CORE_0_resultData_UNCONNECTED(15 downto 0)
    );
sim_clk_gen_0: component design_1_sim_clk_gen_0_0
     port map (
      clk => Net,
      sync_rst => NLW_sim_clk_gen_0_sync_rst_UNCONNECTED
    );
xadc_wiz_0: component design_1_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      daddr_in(6 downto 0) => CORE_0_daddr_out(6 downto 0),
      dclk_in => Net,
      den_in => CORE_0_den_out,
      di_in(15 downto 0) => CORE_0_do_out(15 downto 0),
      do_out(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      drdy_out => xadc_wiz_0_drdy_out,
      dwe_in => CORE_0_dwe_out,
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      vauxn0 => '0',
      vauxn1 => '0',
      vauxn10 => '0',
      vauxn11 => '0',
      vauxn12 => '0',
      vauxn13 => '0',
      vauxn14 => '0',
      vauxn15 => '0',
      vauxn2 => '0',
      vauxn3 => '0',
      vauxn4 => '0',
      vauxn5 => '0',
      vauxn6 => '0',
      vauxn7 => '0',
      vauxn8 => '0',
      vauxn9 => '0',
      vauxp0 => '0',
      vauxp1 => '0',
      vauxp10 => '0',
      vauxp11 => '0',
      vauxp12 => '0',
      vauxp13 => '0',
      vauxp14 => '0',
      vauxp15 => '0',
      vauxp2 => '0',
      vauxp3 => '0',
      vauxp4 => '0',
      vauxp5 => '0',
      vauxp6 => '0',
      vauxp7 => '0',
      vauxp8 => '0',
      vauxp9 => '0',
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
