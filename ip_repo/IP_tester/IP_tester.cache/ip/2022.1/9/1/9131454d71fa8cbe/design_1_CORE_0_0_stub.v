// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Mar  1 19:31:42 2023
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CORE_0_0_stub.v
// Design      : design_1_CORE_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CORE,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, daddr_out, den_out, di_in, do_out, drdy_in, 
  dwe_out, resultAddr, resultData)
/* synthesis syn_black_box black_box_pad_pin="CLK,daddr_out[6:0],den_out,di_in[15:0],do_out[15:0],drdy_in,dwe_out,resultAddr[6:0],resultData[15:0]" */;
  input CLK;
  output [6:0]daddr_out;
  output den_out;
  input [15:0]di_in;
  output [15:0]do_out;
  input drdy_in;
  output dwe_out;
  output [6:0]resultAddr;
  output [15:0]resultData;
endmodule
