//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Mar  1 19:30:53 2023
//Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [6:0]CORE_0_daddr_out;
  wire CORE_0_den_out;
  wire [15:0]CORE_0_do_out;
  wire CORE_0_dwe_out;
  wire Net;
  wire [15:0]xadc_wiz_0_do_out;
  wire xadc_wiz_0_drdy_out;

  design_1_CORE_0_0 CORE_0
       (.CLK(Net),
        .daddr_out(CORE_0_daddr_out),
        .den_out(CORE_0_den_out),
        .di_in(xadc_wiz_0_do_out),
        .do_out(CORE_0_do_out),
        .drdy_in(xadc_wiz_0_drdy_out),
        .dwe_out(CORE_0_dwe_out));
  design_1_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(Net));
  design_1_xadc_wiz_0_0 xadc_wiz_0
       (.daddr_in(CORE_0_daddr_out),
        .dclk_in(Net),
        .den_in(CORE_0_den_out),
        .di_in(CORE_0_do_out),
        .do_out(xadc_wiz_0_do_out),
        .drdy_out(xadc_wiz_0_drdy_out),
        .dwe_in(CORE_0_dwe_out),
        .vauxn0(1'b0),
        .vauxn1(1'b0),
        .vauxn10(1'b0),
        .vauxn11(1'b0),
        .vauxn12(1'b0),
        .vauxn13(1'b0),
        .vauxn14(1'b0),
        .vauxn15(1'b0),
        .vauxn2(1'b0),
        .vauxn3(1'b0),
        .vauxn4(1'b0),
        .vauxn5(1'b0),
        .vauxn6(1'b0),
        .vauxn7(1'b0),
        .vauxn8(1'b0),
        .vauxn9(1'b0),
        .vauxp0(1'b0),
        .vauxp1(1'b0),
        .vauxp10(1'b0),
        .vauxp11(1'b0),
        .vauxp12(1'b0),
        .vauxp13(1'b0),
        .vauxp14(1'b0),
        .vauxp15(1'b0),
        .vauxp2(1'b0),
        .vauxp3(1'b0),
        .vauxp4(1'b0),
        .vauxp5(1'b0),
        .vauxp6(1'b0),
        .vauxp7(1'b0),
        .vauxp8(1'b0),
        .vauxp9(1'b0),
        .vn_in(1'b0),
        .vp_in(1'b0));
endmodule
