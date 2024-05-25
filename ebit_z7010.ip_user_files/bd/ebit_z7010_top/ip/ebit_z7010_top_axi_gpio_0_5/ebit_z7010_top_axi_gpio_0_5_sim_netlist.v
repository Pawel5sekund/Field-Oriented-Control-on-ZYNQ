// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Dec 21 19:06:49 2023
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ebit_z7010_top_axi_gpio_0_5 -prefix
//               ebit_z7010_top_axi_gpio_0_5_ ebit_z7010_top_axi_gpio_0_4_sim_netlist.v
// Design      : ebit_z7010_top_axi_gpio_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ebit_z7010_top_axi_gpio_0_5_GPIO_Core
   (gpio_io_o,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    D,
    rst,
    s_axi_aclk,
    bus2ip_cs,
    \Not_Dual.gpio_Data_Out_reg[0]_0 ,
    bus2ip_rnw,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg );
  output [0:0]gpio_io_o;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output [1:0]D;
  input rst;
  input s_axi_aclk;
  input bus2ip_cs;
  input \Not_Dual.gpio_Data_Out_reg[0]_0 ;
  input bus2ip_rnw;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;

  wire Bus_RNW_reg;
  wire [1:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1_n_0 ;
  wire \Not_Dual.gpio_Data_Out_reg[0]_0 ;
  wire bus2ip_cs;
  wire bus2ip_rnw;
  wire [0:0]gpio_io_o;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck__0;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire [31:31]reg1;
  wire rst;
  wire s_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1 
       (.I0(gpio_io_o),
        .I1(gpio_xferAck_Reg),
        .I2(bus2ip_cs),
        .I3(GPIO_xferAck_i),
        .I4(bus2ip_rnw),
        .O(\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[31]_i_1_n_0 ),
        .Q(reg1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.gpio_Data_Out_reg[0]_0 ),
        .Q(gpio_io_o),
        .R(rst));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    iGPIO_xferAck
       (.I0(bus2ip_cs),
        .I1(gpio_xferAck_Reg),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck__0));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck__0),
        .Q(GPIO_xferAck_i),
        .R(rst));
  LUT5 #(
    .INIT(32'h00001400)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0011000011400000)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

module ebit_z7010_top_axi_gpio_0_5_address_decoder
   (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    s_axi_wdata_0_sp_1,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    Q,
    s_axi_aclk,
    \Not_Dual.gpio_Data_Out_reg[0] ,
    bus2ip_rnw,
    s_axi_wdata,
    gpio_io_o,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_awready);
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Bus_RNW_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output s_axi_wdata_0_sp_1;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  input Q;
  input s_axi_aclk;
  input [2:0]\Not_Dual.gpio_Data_Out_reg[0] ;
  input bus2ip_rnw;
  input [1:0]s_axi_wdata;
  input [0:0]gpio_io_o;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_awready;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [2:0]\Not_Dual.gpio_Data_Out_reg[0] ;
  wire Q;
  wire bus2ip_rnw;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire \gpio_core_1/gpio_Data_Out0 ;
  wire [0:0]gpio_io_o;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire s_axi_awready;
  wire [1:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Not_Dual.gpio_Data_Out_reg[0] [0]),
        .I1(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\Not_Dual.gpio_Data_Out_reg[0] [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  ebit_z7010_top_axi_gpio_0_5_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\Not_Dual.gpio_Data_Out_reg[0] [1:0]),
        .ce_expnd_i_3(ce_expnd_i_3));
  ebit_z7010_top_axi_gpio_0_5_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Not_Dual.gpio_Data_Out_reg[0] [1:0]),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Not_Dual.gpio_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .I3(s_axi_wdata[1]),
        .I4(\gpio_core_1/gpio_Data_Out0 ),
        .I5(gpio_io_o),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \Not_Dual.gpio_Data_Out[0]_i_2 
       (.I0(\Not_Dual.gpio_Data_Out_reg[0] [1]),
        .I1(bus2ip_rnw),
        .I2(\Not_Dual.gpio_Data_Out_reg[0] [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\Not_Dual.gpio_Data_Out_reg[0] [2]),
        .O(\gpio_core_1/gpio_Data_Out0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_awready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "1" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "32" *) (* C_GPIO_WIDTH = "1" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "0" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module ebit_z7010_top_axi_gpio_0_5_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [0:0]gpio_io_i;
  output [0:0]gpio_io_o;
  output [0:0]gpio_io_t;
  input [31:0]gpio2_io_i;
  output [31:0]gpio2_io_o;
  output [31:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_12;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/rst ;
  wire bus2ip_cs;
  wire bus2ip_rnw;
  wire [0:0]gpio_io_o;
  wire [0:31]ip2bus_data;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  assign gpio2_io_o[31] = \<const0> ;
  assign gpio2_io_o[30] = \<const0> ;
  assign gpio2_io_o[29] = \<const0> ;
  assign gpio2_io_o[28] = \<const0> ;
  assign gpio2_io_o[27] = \<const0> ;
  assign gpio2_io_o[26] = \<const0> ;
  assign gpio2_io_o[25] = \<const0> ;
  assign gpio2_io_o[24] = \<const0> ;
  assign gpio2_io_o[23] = \<const0> ;
  assign gpio2_io_o[22] = \<const0> ;
  assign gpio2_io_o[21] = \<const0> ;
  assign gpio2_io_o[20] = \<const0> ;
  assign gpio2_io_o[19] = \<const0> ;
  assign gpio2_io_o[18] = \<const0> ;
  assign gpio2_io_o[17] = \<const0> ;
  assign gpio2_io_o[16] = \<const0> ;
  assign gpio2_io_o[15] = \<const0> ;
  assign gpio2_io_o[14] = \<const0> ;
  assign gpio2_io_o[13] = \<const0> ;
  assign gpio2_io_o[12] = \<const0> ;
  assign gpio2_io_o[11] = \<const0> ;
  assign gpio2_io_o[10] = \<const0> ;
  assign gpio2_io_o[9] = \<const0> ;
  assign gpio2_io_o[8] = \<const0> ;
  assign gpio2_io_o[7] = \<const0> ;
  assign gpio2_io_o[6] = \<const0> ;
  assign gpio2_io_o[5] = \<const0> ;
  assign gpio2_io_o[4] = \<const0> ;
  assign gpio2_io_o[3] = \<const0> ;
  assign gpio2_io_o[2] = \<const0> ;
  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \<const0> ;
  assign gpio2_io_t[31] = \<const0> ;
  assign gpio2_io_t[30] = \<const0> ;
  assign gpio2_io_t[29] = \<const0> ;
  assign gpio2_io_t[28] = \<const0> ;
  assign gpio2_io_t[27] = \<const0> ;
  assign gpio2_io_t[26] = \<const0> ;
  assign gpio2_io_t[25] = \<const0> ;
  assign gpio2_io_t[24] = \<const0> ;
  assign gpio2_io_t[23] = \<const0> ;
  assign gpio2_io_t[22] = \<const0> ;
  assign gpio2_io_t[21] = \<const0> ;
  assign gpio2_io_t[20] = \<const0> ;
  assign gpio2_io_t[19] = \<const0> ;
  assign gpio2_io_t[18] = \<const0> ;
  assign gpio2_io_t[17] = \<const0> ;
  assign gpio2_io_t[16] = \<const0> ;
  assign gpio2_io_t[15] = \<const0> ;
  assign gpio2_io_t[14] = \<const0> ;
  assign gpio2_io_t[13] = \<const0> ;
  assign gpio2_io_t[12] = \<const0> ;
  assign gpio2_io_t[11] = \<const0> ;
  assign gpio2_io_t[10] = \<const0> ;
  assign gpio2_io_t[9] = \<const0> ;
  assign gpio2_io_t[8] = \<const0> ;
  assign gpio2_io_t[7] = \<const0> ;
  assign gpio2_io_t[6] = \<const0> ;
  assign gpio2_io_t[5] = \<const0> ;
  assign gpio2_io_t[4] = \<const0> ;
  assign gpio2_io_t[3] = \<const0> ;
  assign gpio2_io_t[2] = \<const0> ;
  assign gpio2_io_t[1] = \<const0> ;
  assign gpio2_io_t[0] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \^s_axi_rdata [30];
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  asTDEFnøİè·l¯c1n¹‡- BF¯+â”Şx
çµĞ>z€"2‰-{ŠÂ'XÊH^ä“rŠÑ¶¾œÜA34ırÖiŒøÁÆ¡
¤ßåZ`&{$%+†f;Ù’L(W[eök`‰ƒ’JÏ”Ğ‡r\¼5û†§^LğàP‘¼.ÈÌàÑ[i–Oƒ¯–/¥¯›¼~(Ï¯ñ6ØÂÊHRf¦×²j_xğQuNâ¼ëœƒİèn±‰çßBŸçÈ\¨PÏ5è|R;Û~šĞõ]¥Œ³ñ4Ğ¥‡¹ZùhD÷o¶õºnˆQ¤¬Šœ‰ÆGRJÎ32‰w˜KÇDÖ¼;\œ™(ú˜ÿ>i¤Ê/´¾[—xb[ÎÈ¬ê›<L@]ı@7J*P1ÂAö†U§¬r:ŞN2”óÊÔHİMÕ”ñä;j#äy)²ÙñM¸İá!úÎ¼ÙûÇ–™¬w.‡?ø0fl3z³m.¢Ÿ=â™IbÎëğ"ï]Yz!¥j»ø·„°¨nòÇ@=¶	ı-5ïªÄÅ > ˆUJÉâPÁÏÓušÉï ĞÃÂqÈG1Á¥{Ú·¨FqF›Å²={L;ø«±qšTÆıÀ…›9‡“TU0½GEyŸæ°â€UzTÉ`a™§öñ,hgß è‰$vdüã¤Ù§lÚÔ]I.Îˆ@DúË;0*ø RQ9ô=.r{’€>Sèg;ÇŒó"N{`Œ8~Ûpb›²!—7_$xÍ:ÙØBÃM·DÕAµ0fÕn8ÑBp±¹`;ùº:öé›#‘³ß4=a×?¸‡lƒnæ©\\yñ‡ÛGÌ(êl©¡j/•]q¿zÙ	t¥Â4zôÀ’ı[¢ßbª(<Ô&–œ¦ğ0(îÂE;â˜à;ŸŸ)ÆÚ1{M:¶¸‰ßYwœ û®(¿)ÜhğDP?¯É¹qİÕ«¬w‘.Ül…sÁı›5Ï±äw
ïH÷jTaÙÛğBHD¨'(ŠS¶ŠçÇBz<KMhÿº„!8è&Ú 8"·o'p–‰3~ËØ™Psš+²Ï%¨uŒWœkA¦tÚ+-¼R}•"Dõ©ÓZN•zÓ{:¡xlâ|*ñg/ô›ÃNÆöyÕâh2BŞƒ&³IW#Gj
¶ï?rF‡5W“êÉì0Qö¬"ï£ÅğÜœuğ_*ÿùÒï“Šl¾\b¤ø æ¶fı·şÍf£­O‡Dq*£ê#ÏFäuÈ	ô5`L×Sfc¦ /9¼(Q¸Û¹”»èbíƒÑ
7òOd;Ñ×í§ˆÚéã^nådRşW8¹±±åH„ èÒªí<V,`>º_”¼ûFFF”l­Èœû	Œ„CB¥Ç’²Íû™úÃU^®ùœFÖÆG
Îx_+¨ô#BÒb|`ş÷‘¨Ïiæ[7­tÃÚÅö™øŸÍBºM^’TzÛ`Ã©YË±O0¸‰ëŞ;C@Şásßh•½nj(ºõÅ£õƒ—:É‘i‡ù‘¤u.²İÄ&P\ƒÃ7r{õbÔN–Ç‚0î¼‘šß8ëÒõUÛP0HDu"ÛA1:7Ñ²½Î–*Îİ›c;¤²Ş‘2Š÷T}…v'QÁÎBîŠL™˜úÑ-êEPrJš­4³Ü€œm¼Y8öV…Dk˜P¿kœÆ‘Ÿöäê%™Üø ª~ZtJ%ßûøÍ‰nx±›¤•UáU *8¼;ºVVkÉ:d?öúÈèCLL=¢«´Ä›¸¸‘ÕÊUBDMˆëušAHJ¹uD%£ùp›Y|Dzí’WnõÁe K1óŸB¾ª8¾Ë »n¬[zò2ÑĞ<ç_¹Mê˜F«šI(-§X^ƒMtA£ÓuİÊ«©û­sDŸôS™ çHˆr@¹ø‹•2Ì*í÷ƒFëèèŞR~Êæédƒü–oKs/¦ä˜xK ¤?ßÁ[Sª„,…›cÙë_7µ°ÔP'‡jÑ*Š%ùLÍámbß@”‹Ç5m7ÊµLİ½‹êÕO6dš(ëø¯¤ çÍ9S¡:YÜî`“T-¼‡ü<\óD¨€¥MÜÒÀ,Uæ<±°×h’6œFgÛjíF^ÍU…
8©;Ü…±Î!ŸĞ7ŒíÜ¤)Øçš©ã×­ä¬— .9Øæº?ê<`ÂÅL 7-ğ],dpµTAMBÆB†»œKGWÂ|8¥9c¿¾;òïDû!RµYhïÒÖ›[Ğ1õ­À[`‡Ñ”Bİé)oµµ9çß%ì{HT•ñ³“wâ$O6Úez.Y†½8ª„7ƒ“”çaÕëšj1O,èÙÜzSĞdMÓ=“€êÌ„ôÔL8ÿÄĞ¢îyÒ)4‹‹îó~g‰§¾ Ôä´(nÔˆ_“@‚%Ú´@õş®½bªÎ2ùˆ?<3ÈœóYöw¶.6Òë'	Ãq¬™ÿ6ß— Ó_$Ì<Š%ºÑ=û`Ù¡©íp Ys¾¢Ğbj`tZ<¿…XšpD —rÕóÿîİR{ó¾íüT¿\Îã#”5àÈÿöŞ#<G©tG@ui
¿Ú’“¼û¨®-÷	€8k«ú¤¥Îa[¯”Ï†šµC¡íæ–(6±°'âmu«‘ŞUìc]ú$×É/S÷»ıA¿4.ÅÁ[~éÁÉ€âây×±ÈÆO(Ö+_ğ”®Ëñ–‰\‘è'DÀèŞ­O·pÏN¾)Ù‘–K¹ªÉ–íÙmÌõ2xÉ’-{é·hÀè‚Í÷&,”LYİÍ”>èÑ¨H%—üMOİîA}U+¹â'~¬$]@óq‘Ì›a+õÅë²õG”úÌ\ˆÃûgÍx»}ËlÉØD
ò·Ói‹³f7!¸vì¹cHßÒhÅ{2ü®çûàÎü&^t4uVUb8ušÔÁr¦ôı²oæ8»Ã!D/–ÎP'TqPé5öiàc²&#§
”/'G«×©I"ïÇ#)Q
Ì7é5úYŠ	·Ğ¯ŞÀaÃlšôSÂ¿úëW½ÖkEÁ=Âj
x,´àşâJù+ˆ&İ½ò˜{ŠT™¯˜aK`l0­)–à>dñ&]í6†·TuK°ı€¿q'·øZ™ÕaÉEĞø§9$¯8!%.H½2gÎÊ²Ë¥jW© ¨(%B†3äÀ`öÎ¾ÿà:ã=÷ÅiÂúÇ€yŒ‚´Ù²âY³¥·km`dÊ`$KvlèåÏ ĞÅäË'„Ôq¾Sª>øhÖ! »`6a[»èÙà’š>µPÄ•ÈM3,9¯¹oÒi—4OÜ7í÷ç†eá1vN/dã]¹Ğ&Á½•4ğ^a]:ï›$;²Í\kÖ¥ÏÉ)ş[0™z¹ÙÜ	ò÷U¬©šy‡Ã¶áœV,º¬0ÀjQzÄÄ›5×ıP$ µ2šUĞ…:+æ™¦Øè¹8ŸÚB×\_úñ"6Ë“®éÒÏs4<oÈ»½ÇH•úßEdå[ÚÎÈó£öb~Ê¼ÔJ9Ì.«:Z9ë )ƒ©ÏĞÂ+£°Ğb<Ë[ğÆ‘¸ñw<HÓÈQ^"Á:ï€f‡™¦×a~¿úäPs1Yº-cùkp”&c¡–d£x[Ò"¥É±ÜH¥ÉO„Ï+ŒÅ0w7Sàÿmxâ³¡¤€ÿÿV´VÈR™"yåü¬ï²Ûxá¶>ÂĞüìíÇ>²MÍUH¯;˜Ğğç(X'ÑmñT†]ä¸p ÆŸ‹ËúŞÁÿ@’ˆdÂlÃLR?Ãæ™‚s§mû;¢iñy'îüæÏ»	õ²,(p
Ì{F¨lÉÏÑ|«›Öº§„÷Üœz2¿eUCÚâ~Bs2Ûê¤Ë_¢F-`Ş$÷‚}Õ€2¸‡…·ÂÕ8/ÖÙôó€Û\úÏ$^u@í‰Gg LO•3¥WéOSÁÀéõK™b:Voäöq„§'Wßô<v€ÍÆkÕÊ³æ(˜~½k`Ççæ
ä´ñ)|Y†¾—J­h"ØÑ¶#2O!ÄĞ"feÏ¦e¯ÙşRd|¾;©(_ñ÷0íòMùæ)¾ÕE¼¾‰ÿY¤6›ÕWx`ÒIª–øÌÌÎY·0¦{d(q“ê}m0æQ…sC(šÃØUÆÓ´¶Æs.Uõßê•›şß´}gKfùÇÇ£%ß`$Î¨ÓíS–2cãƒzPfFék˜M¡8¥Q©ÄßeÒgšT#t«è¼áZe€d}œ0?±ÇAAqeI°K›*m…5R:¹GÓ³´4ç4&éënY^)jÖYø —"fVUØ¬®àbNô,†şÏ±{ŸAµeÏ/ãŸöX=‰S0¹›¼ÿ@ß³EÃ<Lœ=ï6«VÓXSvÁ’«7Í
V´ì¹@hıF"ûzô<Ar­ãTpZ‡î6­9dªšX.ÇÔA©‰{líÓ
†FãVyUÑhNÆ¨!rùÕeÛ÷\Åb¡PS½üËOv%Oˆ-aïò÷óÌËì¶«Ú´Fúá4*‡3ß;­Å­ [?îğ+7ó›o»ˆ×CÛ/*EÀn–fÆîÀ·¿Öİ!ÒŠ€’CãøCYeúCÚY²› ]«æé{¦£Ääû!(î&u±ŸeĞV=w/6ó€Í2nô¾Ş´İA=[9óÜ	—=fjÁàIÈMå¡Ò»f-ÖX–ïÂÖ#Ûñ<|ÿ-Õk\6{-™DàNaiøaFà}—eh›'S3ãrÍÍåjßzÀ…øK4´®5,„€*¨Ãp¤»³Äy0İ,ºÜÎî®˜–9Ø(-ë¡¦j‡nGz×İšĞ—á;ZåtË›—´ş·^±ÃæÚÀŞôkpY˜‰º=MpÙ ´Ìo1´r­û…×à-¦ƒŠ³ÿîs 67…V$Á”ü²ŸPø’¦	ğ·:“æ»Y‡nÎ£ÄÚ&^é¬†¶„½)Å‚¢¥×0`3²Gdg6¯ï~>÷;EˆcÆù’îB¤ÄÈüê«3‚ZoR²eš ÀŸöÍÆ´œÀµƒ¼(ÊÈÁï}èä­œ§Oénåg”[Y§"{´Óª¯ÍFŒç·¤ùÄ_9Øş¿b¡sö8“¡báè{<}üaS“GŞ+×ÇÌxZ)]x×‹~Ekã‹M4¼¥QgƒEJGÿ2L7Íå44#C	-Q1ÿSlâ‰ä’1§\=FKRGoò<kCJQx¾V¶]p½N½÷ğÍ	Ou)/úl’¸—û$ \]Âå¯y™tj<šqJQQs>L „)	fW¬Ët.zˆ’2wÌ	:|‰Í¢L/×\ÈÙêëg+¿`ÿö?h]aéñëb9y5vrQl¯'Åb„øpÁ½‘¤¤1ß/µÒ`õ®, æì”V–ß>¿Èêê“R‹pH…fşÑÂ^iÃë€Ğ |ínJ/lH#+×¶}ç™\8ï&«4ä§Û“O¤	¿Û bD2n¾xÙGDÙ`kè’wÆÀEïtòv«äö®
„é®™>SLü›“u÷Ç[†ˆ ÚMe&v­søsíí­“éŸ²¢¨Xì#O‡)”4kfI«µŒ°ÂP¸U &<ÄÉá¯}4œTÜwN¸·†Ø-¸U^ÙúÉj„nè¬ƒÿF)§’p­âwzº]Ä'‘?0\ä5ÖO·Ù‰&Á¨U•Å)o®-÷®#L]«9hÕÃyù³ÿÑ¼å½JÈ­ß.±'qı–~ræy0*òëîohøP «oÁ™Ú3|dõĞä´ñ’vŠ´ù¿Ø‚bÍ¶é·Ä¥ÇQ	ÀN›Sš×–Â ;İ!¬h©6jUŒÆ»Üıå¦Íù ?Â§û7|]Û`=µËâ`*”Xª|]F%jÈ;7Õ©¬oÓÈÜb©bí×û'ìNvb­ï.ÖƒÕ€xú Àœ”°{ÁvÛËïúGÑ³tE½¯o\ğçqäoôJO¢¨ø¹ùOÉPê?üƒRA"u|ù!3&s(QLĞ `l£­ƒ¢ïZ")Ñ#’e¼m¼'‡>‚¹Øš¦Şuµç¢pğÍéRßwNÚ©SOĞ£«—*‘ Ó“BŒcğl«E;£ï¹6Œóª\"Ñ^@GA½iL‰ÁĞš×ŸˆĞÚAŠí£YyhãSß›'cïcxÍ¶ïéoêÏÿKb Hà0Ë%Ï£¿›3
D½¥œA}†]Q®‚PèÚqé¾tm»Î:{ˆ\^":j'lÓ‘ıçÃ¶«0
vàa€“ÉiULš6Ó–¼‹T]­rˆŠµfÅiTGƒ.ìØ]ÁO³ØÑªßv2ëjmxğ#¹WÄÏ¬oÖnÔ`«RÀP;¼ÓBüœ5ºk¦­‚õít>²RS+J¨;û)…Sé üf½Q¢²Êgçyú!Şë!fõ§†gÃê ˆïì7µd}dævqv‹füæŒt×^1Á±¸=¬2y™îÖZ=z:êçOÔ‘îƒı©şB‰64${aÍÚ·àd®_¾ñ ù¨BbkSÌÍ¢Û³ÃiµŸaÂ¼ZBkqXĞ[|İ‰Y#XnvTÆì}µX’àé2UÒ)Ğ¡„K@ËY5[x·™°Ê» ÙFñìz$ŸP~B€ÚÎÑc»Ù—îÎŒÿè^Û6]y–*ã{
m”"ÿÿñ*%÷q1_Uzæ‘üÒ°{çÎï Õÿdé,]2ßÒi‘¤zñÊıî$U3ø–dş«ó'\óÿ´7e@Şv0lR ÊÆnÅy)lgß‡’ µº™A*ÑjäyfÌM¤|>$ª–;„·¢:­AòË¢%@
¡ö¿QœªùãÉY®Ÿô]#hÅÁİqN[mÅÃTÍØ¦ø‹^"4‘Bç'wp÷C¨†\!ï#—+Nå%ğ=o?°V,ÆÈ®?ùÎ`•”*Pö,ÅÚğ†šàöÍZ^:Áò@³°p¾ä^[°_y±d÷òÓ1fØ?ßp}ó¤¼Î?±Ÿ1ş^ì7•Ÿ qLKë-ÔcûDõ¾ÓÀ­kM'¦ØƒeW™ì–­ÕvŠ‹wK÷ºÄ;Ş^@(ê¼a:4Ïòl+,±ë®wøD‡¯²nJĞ~T®8s¥F¶)¡v’b›³¨ø×pMÜ¿ÜD+GÃEÎõZN€uÙ¶¢E_Ğ9¿øë¼ÙéSñ›WBúv‡¯Å§†·tBcNQù3DNQîğçÙÓ(`6ÕXRP:ãNšÀñ¢EÇ‚Î^f—±$1¹Ï|õ¨ğ$xË;05S,„ûj=xİ
ÅfìæDël÷¤¸á˜ù7ß'ÿ¶û…$Ö}ÕS‹nú“ŸéëTM‘2Z®ÒüÒ!”3Ã¯Üø†paøğğ©!xÇÁ\°ïÔBX1¬‘ 7æ^İUå¾v>ë%¨˜Ç?SŞ¬V†Ÿ3wQÅ	õÉ€É©Ÿ¨@£OAÎM4íTı(Ì±ø+öÊî5éh½8Ã¼¥%Cşş¢À•Ğap Í©^i¼êšü¢ÆÖçûN|5ÎñJÌ{O-ğórà)ÖTùÓ]@¢ÍÏœ]îğt†…å©áêZbí‘Bå>’UòUŠ„Õ¼N„*šY9©ğ|Ü—d©9>éÅ’4¼ààŸÊ¨I®Öš¥¢S6TFinQ#úİêMéŸ‰P,$8‚Ç[YVìÊ³¥I$şJ}WÚufÜu³ÄµÀì;é
&›=cw#Bv¾z¤~ãA]Lƒ 3b£èc§¶ìUxG„6%	ƒ®§lø,'Ğã•qéYUA8¨Gnà¬P£d%Ûæó¹3RòyÒTå™Sjm‹*\)y'm»€E×8BV—Ë¿P~p:YËŒ|#ıê¬N
@ºó ’§„ ª_3Z)eã3ÆâëˆM°š£û—úòc%}æ©÷k*†âÇà£Ë}‰6ysÌİF·ë- ñ=ÕÉ”ào£CvŸÿ?zÿÔ_Í†.'yPóäòèòğY‡cª»Û³çEy@*ˆRÑ—Gª7$n½ºÖ®ãĞÖ®êyäô¶•@ş,¥Yà‚Ç&kª¬Ø—wø§­¨ª5ÊÂk)'Ä•^…J {¿•ç²¯¿oïÛltÛ‰³o<·Z3¾»ƒ†¤……ÎG04Îbl5(s‹à©¬âà~wmSLçã˜Y£±†÷.ZÏÛ€W~ÆßºkBpÏñ¡- ½X•øˆ bÈº
j–†sf3ˆ@L”<ˆ.òbQ®Èà×N	ïäjšŠÀÂƒÔ¸/]ßsK¨è 6í¤3¨Î’´†
ÏÄ),>ËéxÌÏ×ñÚEã]!äK	ªµµ>BtôĞÿºNß·©%1WpP}ômİ©úBX+ÈG>j§Z ¯m“ŒÍw³òûº}WŠ¹•%ø‚$èŒ6["¹MC‘,û’
âÏáF*÷Ì©İŒ=yÿ<(³qškA;Ö`Ÿµ%m¨úği_Ÿù$Çı÷væá|¹âRËøÿéÒ˜¨³)¡OõP>TbˆW˜£ÌÌ;Åó×¤}½xü¯={ùK§ÏŸğ:é@ba“­	ÂÀÓòG4şzÄş	F˜ŒFdÅ²B-‰Dñd˜z:Oùn8ÁÇK{t‹OVj‚ÊkîÌt)Û[ªìPØ3±×n±¦,·ZJ¾ÈöŠ8x•Øï>†A€ù“ŸhV\¸|İ’¦˜Qı$ ÍXôâ)~fTş×Yijsp³§(­éY-"·O¥Å6.ªoĞ§/‰ĞCø÷°ÆÁüÛ¹Ğh_}ªë‹, »ôÓmË©ñSEá3‚Àö‚„í²%pàT0¯„î‘h.nÌ{°Wµks2pöaB!üîàóƒ.«!®£)¼¹Ú¥p.y'z¬Eõ@9÷k‡ø\ÁVUõÅï8Ğ2L/yïK˜/È'€œ°á`Qıí?L7£Ÿ“2¬NŒÂ/c4t¬}­š·¼Ãå!ÁDÚ(,ß"Ë”^êŠ	ur0Åº2i¯Í’B;³'MŸ»XIMkÁ‚iãŠd¨§ËqÁ„Ñóùúè`WÈÅ2œ¤UØ–	­—“ëÉEª–çE±3ô6b£6NÖ¿ãNÅ&uZMU©Æ„¦ï0ÿĞŸ¾d¶†ê¯lf<ØcÑ„Ú¢sÔÃŸAWƒ„úkËdÑú‹âW»ûôÅ3Éºò`¡Ót|5Y"¶wVƒVCAØÃ)cæ)æîÛ¸UÆxZY…‡´iVR³ê­¦*³¥xü™À(šå {†¹89ƒE
“<G¨¥›4ŸS½¡¶«DŠoE\IÿZ¢‚Ò«Øß{À}|úEr&óhMjKìø—^ÏRŠoß¾¸5ĞàÎg’ï×ô?Û4ÁHBÎB…óQ¨7ÒOìë_`t&¬Ù`L€)Q?:ÇÆ$ï®÷ĞÿvÓæÚaWQ*äÓPp¶Ş2úm_Z=»]]«9İxÏ_ï›y¡P¿ĞÙì—!3êÿ å<Jd[?•²'ÀXëTˆ³6-V ÷J 0N¼D9M¶Şÿòğ}×GWb¥2%–vŸ}şá¡…b©›ÿê£º²z¼]èô	g m3B&‚@û·è•ÜU|ºÚÒª’W`MÂ¸1T·QHHĞB°`:|èx·>¯tåè4	Ò…ĞÄ^É«½óï±‡0wù^%Çé4TuÑºBêìÜG7†}Éfné¦eü2•½ù†Y á9„Uñ#p„(ÄWà¦Oú’ìB€âô8ë™[
Cí!<µ•§n‡P–©ŠTâñi/K{¶EI('²9Uçv8Ï%w²'LÌ€/«ÄkIz€@Ê4`”z,qª¡E_ªsÚPRz3lrÛw3ıËçmOCa°'|NË·ÆæáÛE±È€á":-¬÷©ÆäÜâ~%­‘³Äš™ c’ZùbØ>ˆíÃÏ…¿&Ã–m„@*”¸Æ*%;”õÕ4"9I û 1 mCLeUÀô8@‘>Ÿœ;ë%Ô‹î""n¨ò!ÿØkW¤<$¶Géıÿ±ãÓdãvÏ0X„â“jkOsÒÚ5wÓé^ÿk¯A47êã<íÿKP¯ş}Ü n¹à}­'lMP~Ì­~\°Öƒ!¾N\Ø6š“CÌÂC£|¦6lu—X.f¹©i˜èlZT,‹š p’”s¯zëgMl"rIpçí®MVJ_å…02IÑP{à@œYa´R~ì_ƒOååµÄü¤Ù˜@Ã‘-(}ŞDdt~$İÖÌõU:Z*$9!ó´,î¦
TZƒ²âxÿÑ#g(ƒèÊÁ)qmŸg9Ñm”ÏŸÛ,W´FĞ°~’5]òx¦†íË{#†Uü¦7-³.Èóå¨³».[¾W]<MO£³}Opt/ ¥öõÿÜŞ‘øBYª#İÜ»·TÕ—f™»(áêüÒÈULáöÇÃ	µŠÎÀQ<´Ô&¦ß+Øì>;³çôqÈ·x®¢²`3 r“Àœ·]³}r²˜hwjÆFÁÒLEs°­|ıC’›'µ‰6‡FãœÅ¬«éFi11‚¸¹.8Zî=ù€ Â\FâVØ²„¢í| £¯H!â)_
éÕs6¦@ôo·Á+­FO521×{Újmö %FDŞÚÁí©š_9İ¯«È(/É‘7pšâ]²>h”!Bßê×H­&ù£~ÇOt9Wü€s‰g[7ğÀÈ1M·Ø‡yLQ Š”RÙ'‚*äìî@ª€Á†Ñr;‰Ÿ¼ê#3²Øì‚ODNçJŞ6Ä/GÅU°CI*üÎÑrk$p#ªĞˆb˜»xA[BŞ3ãpÁy·^ «Â ²Õ˜cÌ€ù×9ËA¶Ç¤w1üŠƒ¥—f¯÷–‘YlQ*Ö×I
°y#«›³ï” >¨âôM	Ä˜³‡§©×Òöß=ÿªÇ½†’Êq#yK§g÷Šèüê²ÀSı!¦u{YÂ—:ÚJ<­eïù¨	oÛ”—qn‹Ùd;–{-½Ü•ìXçw4Šª‹}SÜ¬°P…+—ÿ^ò$Õ%á>nQ
çnö^Z°rÖªÙDd¾BÅa¾˜WåßÓ66fJ²ÓBşÂäK6jºâSE[äË¡×Ífé\BL¬\ ²Ïá8a›oOz3›ÇC:xf¼<}¨'-yÃ×ş¹ŞRÑôÆÔE•‘<\ÀsrQ( Ô,Õ®K0cÄ³}×Sü¿¶ì¤[<ı±EƒÔ3ñËpØVÄq#¹Æ†‘¨6ÈÖÊ¿À|“·À X!ãJY”8z
;Âbëà;¹ıÃÅ¡±â9 4[‚ĞÅôÛ€Øy/˜ÕX<¶åœÆ¹º¯±È(×ôUà8¬Tô¶é¶‰ù!”75ğ¶öÿâK	†„ß­lÜ%ˆ~$hªYÒ±}ÒQÉ Ï‡Ú÷ğ~òçÈ¹J^ÄËñ­…Ïè;ŞW%¦l™
FM”ŞoO,­×)#=ò”“g.¼Å²±“ b&„àùÒ8µû+x*IÅîé´Å‚ÀÂÕgÒï:{&Ï]¿ƒ¨“Ç­rçõ1ƒKE§ügDĞ¸)¹”h^|V2Â/«X¬5œœã%ãL¸ŞHİtR¹Ø‰n‡pæw@Ûº"±é· whØŒŸ¹Š¨4c7±cówN†ÖØÄo®Ó¬oµkv;˜4›·Ê·~_Ëƒä]šÁ-×2.ÕİşjC¶¶dš~¹<G×S¡Â	“2Äïzç¡s3ó××Ì;=ƒ´¸ÈXÕMK”"'R‰ãJ¿œµEZP«ÎyÚ/Æ#æk1èZ
·çÊS€"ë']Fï¦ KZö<§Ñßî-H…[%<oP7ıõgKÏNJ£üÒ÷ikÏ„è;9x[>§Ü2”j¿câ×g@]µ¡–˜j[RÏ\dNL¡`ÏÄÍÙ¸^ùò:ı#OÊèƒü³ùJ"ÁßTç¸dêa	0®ê·|2ºË0FçÂòGC¸ì0ÆŠE²û±Õ'óâ[‘4LãpæégÅ’Œ·Ü.º#&ô¶çîºsù´§’ó‰ô!É·„˜ßá—Ù«ÂÄ `”ívløYÈô+ùFØ‰œYÎœ$s·Ì¨,$¾Sdß7ŒÈ¦„ ÌúŸ–?}z S±— «ëÿÀÖXJŒáşhsöh‚5,Ğ„j|t+Õd#r[Ñfqªİ×d!j'[Urğ¡ãªp9½çÄ´¹zjóTmìlß‘?­ÅH·ÃÖ¨÷¯9¬ªQœf_Q¯7%ÍÅ[ñíA–4¥ç73­Î0ìëiÛ4ø·Á£´½œ'§æ‚†ƒ¢b{›ò(áå|àeTR¤yk©pùâG$'g	{±6“Ûû(“O¬{!ÉjÃ5,™	-ëİ$k±;ÒÆg_:j©¢F>B|¨3×T¨[œüÍ'íÌyM÷¸¤lQÅ 1®×´w{¤Z@9pwL»¤î|Z£ˆíîµ1Î4¬®bMÑJ9¦’ô/”ìVÊ&@óÓ(äÇúöqFXôiÈÅ¾âåÿ*A®Ç%ZHk‚k~LÁ–¯…ıª'`sPx–*å8vƒŒŠHäâÃ‚c}R?§Ç û‚Ğ+h	Ë¾LŠ×Şä•õé" x‰[öë<Ûà¬›õ´£¦ÂæšŞ+ûP1‰ËŠÃ{¾7ÿƒ¼ïkëˆ'âü*ª·vÈ‹Øvşÿâ(Ëºîz1-Z½ÓOi.P\´Ñ¤A7×ÖøİòÌÌ*­‰£ª}a0æ$@‚æXD¯±$ó˜Éß×ölâ˜%ÛH¢ğıö«Lc™g¦ÇÈ|ó°©Ğ  ¡Ìñ0n[g¢×@ôÉ‰c•Xğ'œêt;]²n¡×X¬xVë“ ‚>;*étjI7ŞĞZ;ÕI¿šÅt”<‘oÀˆÛœj†¼~‹È¸ªá^I‡ÌäE€^Ãë!¢çq½šn@q9MïPH¡œqÌ®²KgÕ‰Ş¹oè”0û4R_òJ¶$óo9âYwë~s¨ÃëŒ;N)$™0çÃ6×"ÌÆl:¹ç˜2rú†ù¤ÇtoûÀÌı<ò‹Æ˜ğ¸Rª"¶=º´Jkmö¡CàÚ@ó)kÅÁ=ùe¼ü”°i…(yˆ?ø ¦V}¸„3ÃMîÂ7RB3Ãg5Ú¼_p³% äs`¢œ’.mòW0·à\ã¤/ÖLİ^œ¥¯Ãìú6G0ĞB;áÆœ”é¦/bœ=’™&(ª¶.ãGV™Ó =—3‹¦éùøx‚òp;…'å*¬W—¢r§ÂW‹†%ÕÊ0Rh¼Õ6—?8)cj=¦1ûbº’sàÂ`–©kñwíwÙëêÙW®…7xs1»ˆ@¿aTR#vĞqfé¥¢êbıÀºé¡=KşüAÍ§Ï2{j-ÌŠğDÿX†ı8B‡Ú%(Ä Âb°1HßÛÄsÄ°ÓrİKÖT10-ªŠÅ?‹‰¶ÖGJéæU©ˆöòû´½ªLJf7nGÏíAdpÃBà¶D¡ækZtw*™dvÆi›ßKFg|¶T
g]Sş"dè=ib'»Ü[!™–Ô×Ş—Úx•` T¼<˜ŸR—~9	,àÏ(ÿXÈ2Y‚çæ§C¤Üfìîd½Ã%0|¨mÂ{Ñd®¬b”#UazúELeXñ”Ê‚ZÀgÆ&kÃäÜ€£“EÁKˆƒââÈÂ4;›.z$õ!¤°w¸l‘Ú¸ÏÄ¼¤ãœ¡Sú½`qX¸ †£M›;Vú-p©ßµÿU‘@÷eŞ–Û@_{ hŒÖÅ Ü|çn8˜Hæìpô]Ù{D²œ¡®ğ²¨&vãN ¨¬7€IÅ´/†¨/M”Œu:lÇ ~'²¨Oåqäó°¥Á¹VPˆÕÁ¢£‚ vÁé"Ÿœæ¨dûG‡óštñï
å¤ VcÅRYfYµµû™ ‰–WpâDò©4ˆre"qÂ|/¨LÆ‹ÁZäènŞÅû¬e|Iä¼(-®i‡Ú†Ñ—@½è°8«‹<+e’şÆœÂe â!WDª'ÛúÙïîìî5 GÏÁ^‘%Q‚–® w5ó%CS*ôÄ_ÊF”V~PÒ{È÷¥_Ÿ¢ïÃEORZ«àï¹œ%&>ıƒUDN³t?¤Ì¿„Öh4Eñ'i"Ä7	‰ŠÉsê„+·Øó˜ÇyuD²öŞvaş€„ÇÍj6†´®M¸«íEqÒ%/–ĞŠ‡õOhjfæºM²c‘°R ‰eìzâ?á3¶H×Å§ŞJx8×‘š›DŞµx˜¹#Ùæ‘ü\õ<,¹4­1J§ÕÅ`ne—®Û§ÀïäÂ’ĞZ~îü2^/ëu1ÎLê’ŸèUÌ‡º´›ï<ãò<5Øegnb¶®‹ÿt– E
,¶ªÆDìØTìëæì¤ş˜4b~ÊMúêØ™·ê}ˆ<ğÚåˆI,Ñ^NéËÖ}É°6x5¯¼"êˆZÂ²«?å[©ó“Â1á¸û!È³…+‡–¦ç<J¨ı3»GT£†ÇòÏÙ¶[&&õúğŒ~vuúÒ6táŞæC8G-Iİq2€©.ë bÁ¹È–(Hzj®ÄÖš)ÔÏ€UşÑcqÔ—šÈ,“ ô¢<|Ó¦Sœ‹3"'5tç˜Úû½ÿšÊ¡È	yÍ|/Œ?›ñfKm£®ÚM†JØ€6+o³¸›ÍšDÔ[Ú=K#ónÑ”0lØQW¡˜¾J™éîfPGy©óM¦Ó^Fr€`İfaÿ§¸†yÊ„\¶pÙ­ÌšBšÌÀË~ÿéÏÄî…­\;§üv¡{à•i7øªXã!|¦D~uó1Ü…0§Çq<Í&Ö;€Ê–õ/?Ê3VÏôp,÷0Xù¶û¼lÁ¶_
ŠÌ2båÏÕS×3z_O²?… YL±¬¯´QnFb§É"¹S©Êüú”·±F¥€l-#"¡+œ#—F:íºıìÖÌÊwDŒÉ™¶ŞTÍxåŸ;6÷<…‡¢€§CiÅ¢vøÃF•e[ÏÕÄeÏ¶Úès"yW.âˆu»ö›ÿl3¢ƒÿñŒ¯š…ÕÓM°«úæøàI÷ÒÂGÊQr>uoeƒèZ®Ê¸¿ê¼ÂÒÅ–@ÀØú°’OÎ^J¡áÖæ7ÔÀ!iå6I?U™×I«0^jÛ¶¯VWª-_·ğ §ÏX=¶D9´Û®B”À”z€…„<êäg*ù+Ëf=Ñ…£,CİÚ?¤‰5G6İVÙopu'Ã¯CZ”œáç?ç¸”İ¥>Şj')uêÓT‡ıı{ª¯/ê[¸ø
üi—a$‰}K°»J²éõ€ÜÇ ÏŒùÁ4È²“)ÖŞÑ¡¬¯~¢­ö
­#Y¿+˜’•ºâùy‰æX‘úÜÚ6ÅÔä¿+'c3M ‘¾ì^¶ÒÏã+7üãxX˜¸è÷ètD$!Ğ3Pñw
qşïï
ï¡ì°œ¯»ìz:³¨Ÿá I¹”#–²&»kˆo<¬ûB Úa œXäİk7—	U<Ä´máuÏc—÷x3Ÿ—¶ ¬¼$†\ù¥ xãòàÜ,5–c°Æ³5ÎÇr„|;{I#/ÒJÿ’|ĞÄ[™PF•§z1n§ÇşOpıDÓ;¥,ˆğ£Š7ôí’Z¾…XÙK_ìG2á g–èC¶Ä˜ôÌıÍ±$¬‘®c~J
¤¡ì_Ö¡I¡K9aAñ.½F©2WMÔ`•P!«é/oºAÒë0…Ô¾jxDâ«ÈØÃ*<8M¿âÃ“¯‰“wi =PM§³Sóã °Áô}V)j2„àƒ‡yŞØ–°iÓ´j_VÀá:à]l`ÇÿÓ\,N1#&D>XzLÑ_wÇÚ>ãgJ\!rŞ=t‹Ä>ÅĞy0w×u’)ÛÈæ´3ZZãT%DyK€/P§\3¤H¢<…2Z"öbâÔ9iRìM©¶A¶Ş
Jf77[zhykrÛ[á—·îùˆ«L)¢Ò7a×ûĞm\ôyAóÿ'|]õ-ÇìÈî¯¼2ìÚzHC5!0=ÀÀB6–	wEB4­êÍæâĞ„ãyJóû´\¦ñ»`š2ZãQSŠt]úµ¨¬ë                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            s_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SS;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output bus2ip_rnw;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output s_axi_wdata_0_sp_1;
  output [1:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_wdata;
  input [0:0]gpio_io_o;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [1:0]Q;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire [0:6]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_rnw;
  wire clear;
  wire [0:0]gpio_io_o;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [8:2]p_1_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [1:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_1_n_0 ;
  wire \s_axi_rdata_i[31]_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [1:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SS));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SS));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  ebit_z7010_top_axi_gpio_0_5_address_decoder I_DECODER
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\Not_Dual.gpio_Data_Out_reg[0] ({bus2ip_addr[0],bus2ip_addr[5],bus2ip_addr[6]}),
        .Q(start2),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_io_o(gpio_io_o),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_awready(is_write_reg_n_0),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(bus2ip_addr[6]),
        .R(SS));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(bus2ip_addr[5]),
        .R(SS));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(bus2ip_addr[0]),
        .R(SS));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw),
        .R(SS));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SS));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[0]),
        .O(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[1]),
        .O(\s_axi_rdata_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[31]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(SS));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SS));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(ip2bus_wrack_i_D1_reg),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SS));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SS));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
