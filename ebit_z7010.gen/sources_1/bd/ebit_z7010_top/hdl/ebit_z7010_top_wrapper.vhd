--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Sat Jul  6 21:24:46 2024
--Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
--Command     : generate_target ebit_z7010_top_wrapper.bd
--Design      : ebit_z7010_top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebit_z7010_top_wrapper is
  port (
    LED_GREEN_OUT_0 : out STD_LOGIC;
    LED_RED_OUT_0 : out STD_LOGIC;
    ddr_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr_cas_n : inout STD_LOGIC;
    ddr_ck_n : inout STD_LOGIC;
    ddr_ck_p : inout STD_LOGIC;
    ddr_cke : inout STD_LOGIC;
    ddr_cs_n : inout STD_LOGIC;
    ddr_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_odt : inout STD_LOGIC;
    ddr_ras_n : inout STD_LOGIC;
    ddr_reset_n : inout STD_LOGIC;
    ddr_we_n : inout STD_LOGIC;
    enet0_mdio_mdc : out STD_LOGIC;
    enet0_mdio_mdio_io : inout STD_LOGIC;
    enet0_mii_rx_clk : in STD_LOGIC;
    enet0_mii_rx_dv : in STD_LOGIC;
    enet0_mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    enet0_mii_tx_clk : in STD_LOGIC;
    enet0_mii_tx_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    enet0_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fixed_io_ddr_vrn : inout STD_LOGIC;
    fixed_io_ddr_vrp : inout STD_LOGIC;
    fixed_io_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    fixed_io_ps_clk : inout STD_LOGIC;
    fixed_io_ps_porb : inout STD_LOGIC;
    fixed_io_ps_srstb : inout STD_LOGIC
  );
end ebit_z7010_top_wrapper;

architecture STRUCTURE of ebit_z7010_top_wrapper is
  component ebit_z7010_top is
  port (
    enet0_mii_rx_dv : in STD_LOGIC;
    enet0_mii_rx_clk : in STD_LOGIC;
    enet0_mii_tx_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    enet0_mii_tx_clk : in STD_LOGIC;
    enet0_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enet0_mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LED_GREEN_OUT_0 : out STD_LOGIC;
    LED_RED_OUT_0 : out STD_LOGIC;
    ddr_cas_n : inout STD_LOGIC;
    ddr_cke : inout STD_LOGIC;
    ddr_ck_n : inout STD_LOGIC;
    ddr_ck_p : inout STD_LOGIC;
    ddr_cs_n : inout STD_LOGIC;
    ddr_reset_n : inout STD_LOGIC;
    ddr_odt : inout STD_LOGIC;
    ddr_ras_n : inout STD_LOGIC;
    ddr_we_n : inout STD_LOGIC;
    ddr_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    fixed_io_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    fixed_io_ddr_vrn : inout STD_LOGIC;
    fixed_io_ddr_vrp : inout STD_LOGIC;
    fixed_io_ps_srstb : inout STD_LOGIC;
    fixed_io_ps_clk : inout STD_LOGIC;
    fixed_io_ps_porb : inout STD_LOGIC;
    enet0_mdio_mdc : out STD_LOGIC;
    enet0_mdio_mdio_o : out STD_LOGIC;
    enet0_mdio_mdio_t : out STD_LOGIC;
    enet0_mdio_mdio_i : in STD_LOGIC
  );
  end component ebit_z7010_top;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal enet0_mdio_mdio_i : STD_LOGIC;
  signal enet0_mdio_mdio_o : STD_LOGIC;
  signal enet0_mdio_mdio_t : STD_LOGIC;
begin
ebit_z7010_top_i: component ebit_z7010_top
     port map (
      LED_GREEN_OUT_0 => LED_GREEN_OUT_0,
      LED_RED_OUT_0 => LED_RED_OUT_0,
      ddr_addr(14 downto 0) => ddr_addr(14 downto 0),
      ddr_ba(2 downto 0) => ddr_ba(2 downto 0),
      ddr_cas_n => ddr_cas_n,
      ddr_ck_n => ddr_ck_n,
      ddr_ck_p => ddr_ck_p,
      ddr_cke => ddr_cke,
      ddr_cs_n => ddr_cs_n,
      ddr_dm(3 downto 0) => ddr_dm(3 downto 0),
      ddr_dq(31 downto 0) => ddr_dq(31 downto 0),
      ddr_dqs_n(3 downto 0) => ddr_dqs_n(3 downto 0),
      ddr_dqs_p(3 downto 0) => ddr_dqs_p(3 downto 0),
      ddr_odt => ddr_odt,
      ddr_ras_n => ddr_ras_n,
      ddr_reset_n => ddr_reset_n,
      ddr_we_n => ddr_we_n,
      enet0_mdio_mdc => enet0_mdio_mdc,
      enet0_mdio_mdio_i => enet0_mdio_mdio_i,
      enet0_mdio_mdio_o => enet0_mdio_mdio_o,
      enet0_mdio_mdio_t => enet0_mdio_mdio_t,
      enet0_mii_rx_clk => enet0_mii_rx_clk,
      enet0_mii_rx_dv => enet0_mii_rx_dv,
      enet0_mii_rxd(3 downto 0) => enet0_mii_rxd(3 downto 0),
      enet0_mii_tx_clk => enet0_mii_tx_clk,
      enet0_mii_tx_en(0) => enet0_mii_tx_en(0),
      enet0_mii_txd(3 downto 0) => enet0_mii_txd(3 downto 0),
      fixed_io_ddr_vrn => fixed_io_ddr_vrn,
      fixed_io_ddr_vrp => fixed_io_ddr_vrp,
      fixed_io_mio(53 downto 0) => fixed_io_mio(53 downto 0),
      fixed_io_ps_clk => fixed_io_ps_clk,
      fixed_io_ps_porb => fixed_io_ps_porb,
      fixed_io_ps_srstb => fixed_io_ps_srstb
    );
enet0_mdio_mdio_iobuf: component IOBUF
     port map (
      I => enet0_mdio_mdio_o,
      IO => enet0_mdio_mdio_io,
      O => enet0_mdio_mdio_i,
      T => enet0_mdio_mdio_t
    );
end STRUCTURE;
