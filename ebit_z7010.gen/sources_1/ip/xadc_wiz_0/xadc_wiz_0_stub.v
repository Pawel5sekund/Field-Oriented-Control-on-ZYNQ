// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Dec 21 19:10:42 2023
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ebit_z7010.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0_stub.v
// Design      : xadc_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module xadc_wiz_0(daddr_in, den_in, di_in, dwe_in, do_out, drdy_out, 
  dclk_in, reset_in, vauxp0, vauxn0, vauxp1, vauxn1, vauxp2, vauxn2, vauxp3, vauxn3, vauxp4, vauxn4, 
  vauxp5, vauxn5, vauxp6, vauxn6, vauxp7, vauxn7, vauxp8, vauxn8, vauxp9, vauxn9, busy_out, channel_out, 
  eoc_out, eos_out, ot_out, vccddro_alarm_out, vccpint_alarm_out, vccpaux_alarm_out, 
  vccaux_alarm_out, vccint_alarm_out, user_temp_alarm_out, alarm_out, vp_in, vn_in)
/* synthesis syn_black_box black_box_pad_pin="daddr_in[6:0],den_in,di_in[15:0],dwe_in,do_out[15:0],drdy_out,dclk_in,reset_in,vauxp0,vauxn0,vauxp1,vauxn1,vauxp2,vauxn2,vauxp3,vauxn3,vauxp4,vauxn4,vauxp5,vauxn5,vauxp6,vauxn6,vauxp7,vauxn7,vauxp8,vauxn8,vauxp9,vauxn9,busy_out,channel_out[4:0],eoc_out,eos_out,ot_out,vccddro_alarm_out,vccpint_alarm_out,vccpaux_alarm_out,vccaux_alarm_out,vccint_alarm_out,user_temp_alarm_out,alarm_out,vp_in,vn_in" */;
  input [6:0]daddr_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  output [15:0]do_out;
  output drdy_out;
  input dclk_in;
  input reset_in;
  input vauxp0;
  input vauxn0;
  input vauxp1;
  input vauxn1;
  input vauxp2;
  input vauxn2;
  input vauxp3;
  input vauxn3;
  input vauxp4;
  input vauxn4;
  input vauxp5;
  input vauxn5;
  input vauxp6;
  input vauxn6;
  input vauxp7;
  input vauxn7;
  input vauxp8;
  input vauxn8;
  input vauxp9;
  input vauxn9;
  output busy_out;
  output [4:0]channel_out;
  output eoc_out;
  output eos_out;
  output ot_out;
  output vccddro_alarm_out;
  output vccpint_alarm_out;
  output vccpaux_alarm_out;
  output vccaux_alarm_out;
  output vccint_alarm_out;
  output user_temp_alarm_out;
  output alarm_out;
  input vp_in;
  input vn_in;
endmodule
