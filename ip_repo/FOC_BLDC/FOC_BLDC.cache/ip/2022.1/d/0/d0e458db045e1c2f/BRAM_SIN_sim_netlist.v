// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Jun 29 20:22:01 2022
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BRAM_SIN_sim_netlist.v
// Design      : BRAM_SIN
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM_SIN,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.35235 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "BRAM_SIN.mem" *) 
  (* C_INIT_FILE_NAME = "BRAM_SIN.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26384)
`pragma protect data_block
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
`pragma protect end_protected
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
