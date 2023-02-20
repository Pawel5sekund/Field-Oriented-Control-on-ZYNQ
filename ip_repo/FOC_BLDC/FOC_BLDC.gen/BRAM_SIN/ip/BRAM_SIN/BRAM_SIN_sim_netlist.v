// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Jun 29 20:22:01 2022
// Host        : LAPTOP-QKPB5NLF running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top BRAM_SIN -prefix
//               BRAM_SIN_ BRAM_SIN_sim_netlist.v
// Design      : BRAM_SIN
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM_SIN,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BRAM_SIN
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
  BRAM_SIN_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26016)
`pragma protect data_block
+zo5ZDRdXLrpGx9SZF3uRErpP404/DPUc3ltFdw5D/Ye1dtd7ZIuoCsnRlry0L8PGVOMPmx4++KA
TCBlphl4rhHgb4XL99TEzq0OTT3r80zDs53u9zSH7kxuWumq3BGo3FAa+cqZaG3q4jh0nhLeeHdq
mykw16d5bnCdGMx14EoyO2fxuK+E4IYLmLbMmuaOMWc7sn3Q025sIkPzKIviLkwd8zuT7wVYFqhe
GCyFp31BRQy7Z4Un3Ogg68UoblsAa22y9GLx4AWbgn9zUTHkpYIc8QAsVI8yV0Vfk/BOzzuzHqb3
tYTvPTcZ1x0t6rY+JoR96lDU9uTvnp1O6F9jUjTfA6fu4yMUwC9f2WGpGAPoTVXUm1Fx9+SfeuoK
I3FLSQShMhcyrkxAY721jt7qrIrjRnPB6Ofb7P+kpOz4MR1n76J6OqJ8kpdzY4SsMxKVwDf7gsqn
sXMP2RTA60RXFxR9PjK4a4OAZ+LMnEVhsKnMbGQKFa6eDCcm+4aeABJOEkDyzVbCoVjwkyg3P1Tr
bmb1p9C5GD/l11WwkaSOyqUNSqzM65L2I93ULXFob4F2zsaFy4z2kLP3vVn5rufLJTdJPhGCkHFH
Kp+vgcAEArbLoFPdj/V+97/VGa6imL5JVVE8rE7E4HilWgNBbImED8VK9jjMAo7PVka0YmWR9lUS
lj6FExIDPqma1EUGqA7MK9c79K20xzMGpt2oZlfoDuqZYQMLYxRAln4+7CVJpODpxLLuw4or+OPu
vftZn2bsdCIRVcgeS69fRBKWaXfhNjpuVnqEtziYgKSqehGPjqOoy0MPf97ynhf2Vjbk4feIl9FB
2/zm6aNC7cUYe/4+mDDhRmLI6dSE0GGqnoNseY9AnnOIyhWCYnxG1ZT32oUbymCXBB2begL5CbXP
1e3kmgV1A5JptXmZv0koSLmPSQuLAqW1TR3A+Qk2HZnH6wnCKRg5oTi9brksin1fUKbOeiSNJxJi
J/FdDmoPgLeGhC/izwKuEgESIhzWVI2jBmHsVZbJ5jlVHLkn0cEQ3xvDfeFqY+ON1b7BNwmdCfAP
qkOLNTbjTYo+q4064oMGObR/NMfNMI/HaHHnp9oJM2M1YwSPIuBzniGPruHJh4QIwYy7jrS68Fva
xcX48HaoPaf70XLG4Wa+qlvRKhmjvWR9Mfa9BEINUGWs7zalzIiSUm2OIO+/+f4modAH6hz2c2L1
wjOsjmpkMHC9Nao49SNxsviwbIuSS2Pq3sb/nmfH9tsoBpKeEJxCVoCozwtmpYjp3OIEd/7X6Hx8
60bs7ZVvgDkLbNGqlFyUuyHivsEQMYKHduCzZERX1P9OBhQejLc9xrA1UoUrGAunpv3O4sZnMhr7
+ucF0Q5iQP93cbVeQN/jv8F8GdEIDKF9JuQjpPK3NF3aU6diMQdOLx4fTpbhK3mkjl8+EjkyINNr
X6a8udS4neSBa+7JE8AjUckGFAOoLRQnHkR3xIYPHhMggAfFjGyar6CVNTtLC1Cou2d9EWpaEAXu
W+5RUHmRoIMoe2cJBzWbuwDv36Xd7/I/DqH+jBxdoqAkEXu0vuTPqv2M9icsXD4ehajrEVzmp9sN
sNBX9Bc4+KJj1B5uMrsbOBu7rUUMeujRRk7fA98IQaDSMoAjJbzfZ0Bnz1P5zD0x+UGCR5u57yq1
WFLGQtM6+MuHf36xuhngyIUOBGl+HvwhETOWhcXPW0Sw9AlT3HMqE+lVSb9JJPzljrXwawy1suwO
y7Jm/iOU+2NKnEuY0RBfGaPO+SGuUaoXrH4loQETIQ++uvpQ16nnXQfpY/wQTUDnWlDOwOJeNLOV
fazDz3p7qUPsPwZaY67TX4Nirf5B812zc/YQGKHUjHgwbz4oA9cVJONInqo6QQ+6G6Oog9e7tQ0D
30UmKcoJYd4jF07gBtf/+dUY5S/yYk/NIKOQ23N0CX88pBkw+ir8rRXl7TwQ5O/XVRyodI58ZqJV
DxWNdiodRzpK6ZYhaK/HPWibOTQFZR0jpda7BfAVA5LabdfSL27/iMtVLH57hiv6SgeQoAEFEmy9
5ErbsMX00LmvlXEOHAIWDKHJBjG4m5lpXQWL+TsEufhEeSZMXOup02HmPth4KARWUZZZNsoJtSZh
DV3GaS2IOzYJe5ZG/IWiq2aCWzqm7c9rk+A3EJkTWmVI0YzIU6j+ZaMXpGcI/UF9aRg/MknvX/My
TSOuyqlDyfs+8qicq4HwzxaSgdwEGC0w+r1ZXQ2yUTWjvHRiCdSW3Z1o9VffAKmIVZZ273QBvpLq
l6On3/yPB7LJIm4RqseVBeQKvkc9kEM3/1J2XSOx4ABOB0PGziCuIUL5ia+/Q53BupbLlHUeLr9x
1A8B5yQdOrJnMZrV438kRhVZgxKGJcUO9Qony2e+Vvh7AFDoKnB1qTv8O4eDDgHBhmxRA+bbC58P
p/lI7HSgNfzU189ZuaD4rD8Zk/Ae0JAGE2k7BMxNT+TWKs0jfLpqG2kkHjldN/uLT7jgtxZCRreL
8ogpCPtIUQeQPXjhnnX1Jhk8LAOu+QrXAQRKDMGIQdG2nubV1QcI51PDl+r62h6SVzFgQDF88lMT
BY9yCXnukQvCwwmkT2Z2MInPHUDVsPbGbcqYiVdBFLnSjoif1B4wHrnsHU7iniypCEz9DUV02wgs
8hL24XAfOK3eOXonpXg1rGYlzSqaVPb4MuZ61D8iHL3x8U/EGjXx0lClnYAIF6AWEyumZfbuNa69
L0r+h9oAl6NxPk/nU3xsz0bOQFldGJCS1XVuH8aF6SyBtic2o7AR58NYL2h2kViO+1YWPQcRw3KX
1YfmBH58DxUHl4hGeRdrOpHyfKifMvUpW5S2S43EVqefPUVuFaDkGREjg2rGyY2vacqPCK0Ztwp/
FbzNH62bQ3kIO2rNFz9HupNHij1nRWDH+pgQIlVLwu3JHPeYq8hqCAPS9Y8H68QNn51vICPsT3nm
K9rBatXVCYBiYLEt4OMFymGQAi45YqdcDJlHktzQPSxVpgWGxIJuXMYye/FmctMnmYdqRNP/LxyJ
dtp37C1HtU5tdlanE1hOl0nwtWITDrasxFD5g0AOpNDKpPPJaHmW41eO4oAE4xYjGp0AtXFzkEFn
nAWy5YHVCI+TnP7sAxEM74CPAt1uzx8Fr4L7ItZyal5O/Aeizk3MGjK+Y/pwkyAKj+gbgqBamYfY
XIHFAdTOXAIs5/ULD3SQ02pRpt0u8lr8DetOQRehxDgrmjowsm+bSGhBvIpuyJrFUwycHWM6L9Y2
fYUm/PTbwO6ByDD3jLSPtbp7Fs2LZTXOxKcmZcsFYTjmfo2zz3U5cYx56Qy14U1svAfhuLPGgT5B
yFt6m0Y062CAVFcAQNmUfwaHyt/mJJiLcy0emgcI7Uezj/NTBOP7Rvpf8F0ufG009s2OOjeYzD5y
TVwvd4FjJ+BJUDjNDcVWJJMr9y8SEXfk/7O9L7na5xYv1ioNKycJae1bhKR6m7zpuPzBqMOTypYH
OEHs1g5tCTorH9rjLnvcWNh8JkoYzGmJ67Z+IFF246tezwLKSeC/ZfGkk9eIqtDnAuFMBL/oPURH
TxkORuStSxnmOdtLDv7Isi0xeDtZ31lvDCe1cysV4F9BzUM8vRaHeDQvgUBP012TZTe6EVanxiLC
iDFq1jyxWSSEtsyEHPFh59GCSQrAqvYAgvW8uOgs/aRxV5jLbSXcgmBUmrjk+NpEue9+WLmmjDtW
1kKD5mgQRciZL8zgdxegXDDWxrsL2OGMCtf6PodOae3oAsKtgD46pbEQ2+YG3+D1v7+0jcjaBDlv
PWwsfYFHrwS6kc8t2yKrKT+MJyle325hAW25hVbKJ4ixuwZU2y/KDn6IHIQIGhck3IegFR+yDub9
A79JrJMfxTcKIMBzpG9UeZPQPv5hHzDqnG0c1zi1XEyUbIRmK8aqu1/aVfa1uSB4+bq4VYwECbjH
F8RA82lc7ntjcxpm0RtU90gZhmRBKNRu+0O2iZID52J3El/e8eD4AgDpMl/CM1Ymp/xHzIb1YfSD
Owo/eOH9RdAmw5TFjMghkrpTw4yXJ4CPRSUV48ARrv9SnO+ZEWLEQOtVnuNkjyCKsNfEwBHiCTC5
OSt5ZmRdjT/HXytDc6zAvZzzhaMW5ziua+4/+dj2IZOsSToWrh/seFP1f6aQoxt6WqRjb2Lj4Cdj
MQnrtMxU6Y4EU+j6fTP/piEZiZA78NYKRibIcaMku207CiZ4U2Gbx/kRw7AdvNkhiJv+fUpzL/wz
ZV15s1XHIqVXD3h8RRv3HZ8fcxCeo0Vk2zLm89Ox0H+VCBpR48EFxJ57Te7wf0beQ/MSBzyV9DfJ
RLUsmtFky2FFp5E5AEmmka3aub/zSxaa2hxeDBKciI3xedCOuTiyRoO8r2wUrQtHPcdlTLdnxXh1
YnnPEqfLvQw505BzYhQg5efHgUXdtHC5xBUQorA8gDJ30Yh9GSAKCSyCpwm77480TRA5Q/RyM1mT
mLtIgY5c/Mw1g2VkRmu/JJvb3v8iOxoPQwdOVe2Wsv5EmyxeawkL5P/dzBALw+XhmGyi/qm2qZGz
LzMQagQGkuF7JX4fKerJ+gSk84ovQzCQ/r5zrXzJZ9r1qOErMrEHmL3O2VvO/W6uZ7usejKqFsj9
Io6Rrcaeq69AHbWR6iNwWcz7MM1UL/2kmskmWkCeHeO/nh9+ufsLt0jwlJ+C2dRyIyPXknutqJFz
fgLSTQwR6BWjouBIE+nBP/yRestyKFD4ohMUad9N5fA43maNV5pAdBKehlNiz01tK0lNtFJQ56jB
nincfx9rmsSRM077CEp4gbmUvrW8EwHxzfGXnBZuMGolhyzVNIXej5VBUAyXKtax4UkCU9O+bHKJ
0bbj5ZcB6Tw4t4PH/PcB9Ppq6rRq4sdkltxnh6o1UtigIfG4fgRV9l+dY0hy9E71FH3zB5J/C77+
/tZVRmsFvH5PZ+8G1YCyffbVduLfqoGVzLHDFvs3mmzYP7SEAm9SqKENefBgx8t1eeN3kKrypcmz
2idS6HdpNQl+nyuez9a0SeJ1PBHZIItDzXaR8PnbVZnmGZhT88rAb8V8r+15oabGh3b6zdSiJ9qo
uZj3Xr8tklJ28KqvKDYKiDYriN+H+vNCUZVM6SyCcWNZ2nSCRkJ0zZNUQJTERzUY32bsUJ4bC7QP
YfCI+3SozxjpnWQ71Dti2OxVSH8ucqfMF7+PZX1XshH9fUBsYx8IDkAgVisnw1vkUG/YWQVEwn56
GIA2xqY/vAq8ps702qGFcwG6rBwiLg/G0KwWg6EjRd3rqieHpCxcF/PQ9NM+rAodr+5TM0TRrsdt
JoKFIx7d8GVZcsU+ZZgvc+ePHACcRDsNn0aY5OCigMI6FHu96zIiAQNjRmcfMS5Uf5xAMvrgCe8C
UkAI5U9aQkCzcm0KGqVocGCEyfYHJNFoDxgM/3aV+3vzQaNubPqHDhWEM76AlpFJm2MbD7ITNB/j
9GmGShDLFkJ251dYWudKhPLvMt+g6JDX5/bzxrq6Jir8R7JJ9hNPCoSlBuo5FWlMD6W3w2O8RamP
aNso/gw/u7bYY5hm/acTWtUlPfEPNWuTTqBWuPzOJbqOrd1Ghz8keEbubaKVyTz9rDV8aWmo1iOF
s47OlljroJazrzwCA+DXY+CtvejpVg3daAWFmdccv/RjQsyGxu5HwgHfd6EhtVnkQg3EwP8P4ZHG
6wfzsQjqFao3W9KJ8fb1b/YCHnV7XUB+7s9yCucHSyAqnhga3/3uaVJDb6HZmLquoQHcuHXKrWiX
hYIERvvrk8g9o/Fp4LC6x2fqqIEswR5EYaXbq/ciOlTeET6rjFyZ4i1EyhvuXn6ZuBYJ2m3deyMO
gxZ+iarbiQAhNs+2mNuGAOtmReqpwv5wEGQPWYanFeY6IQQlA4Yru+HVT4i5Ro3cuqcVSuh0TFL3
OznysNGWGibkTVTkfZHn+Z2UZ7vVbHeBQXmmE3YRGnwD7LZUI5RmETMo7iG765QfQayKQ7fb03lJ
2Fdy/ZL3lc8ErgzBkvmDvR7krin+7rHxhek7N+sH/ZLcR0JtGm+jdppYg6g8SlDUgv4nXh0DR9Oj
8rBeUxquUEwgPuv6PBaGF2G57fZqAtCgjGwRqeJr1fJUb+MH8nlhQf16KKcqA9ysX8OhM/tyft0f
PCMjh7MxwDk1h5aEkufHnhJpzoC3Vu1tDpIzC6Exybfm2h11Giy5SOaQOyLfOkEw5msGyOrhy5tp
wiCSiQQIzBW54NmcqLwYgjY2Hh/a928R5LS6ohs0I1rC2X9uGvIa8MyaiuDdkdpKw4O/XiZs1efP
Df9UbNXoNlSWFIXOLUc8jrw//CXJoKn1zydq2TcnkuNg3lxF7hM7PbsO0X2K6VA65w0NOH0WjhY9
jsIaak5n9cogtD/9HnNp5lmFuJucFJxu9C17JqmXxTkAunx6BB1sDFd1iPdplZpWrS+l6sE2p1sp
d4XAyIgJriRnJEC8ObaCZWE9qZS2fdsBRsI5UXKbgqWOPNB3wUMiN5gdN11nUk560D7rn9FlqT6M
d2CS7U3+B96Gr7aLYoz5nAsUaPkKJRCzRHAsJApVtBirOL3IXmnhskAPMB073kJgn/OAQAosddSS
FS4Dwv8E7jr/ekSMeZij8bf2H9BrRA+fWdqVo8K94zMiMZJOxOwcgNoXDU5UtLJcErrjjFWYZdg9
3wy+iWydY5ipyPqzidLpFOlPC0aGQMcl6UHLLJ4O35W9oz8+dKO5EbVB/C+Ub891/XaRsmSliM2T
YxvNH2ne/Wtf540vzxLmP0C2yhLgix1+e0aVIG7iiv6dDnh52HtrI8Iz/oJowlw5+XM8i8DBzhuH
3hh0tGyJCARsAokxa6DBJjI2pLduL6dvfbhj4TeWQtXt2GjDJMznQ28BoDSTgdGR5I6xHUMm1toq
Y4Cx98iOC3UJ7LIq97v78j8isTnX2l0RmADlFNTwCODFOFkCI1P5eHHzDSQNHoDLFH8J7Q3C3fWg
7/fEhGouSd6MJCli2Eeip58duQLqT1Fl1aO1Uck50WGzNQVWReciZtWmfcrOQsUXMSo1TrqRfJAV
AV3xCYUPDArEvRk7WR8o+DTxnnKPx3s1WpJ8zXDFbjGMU9I/x9o+GlDiptVnW/frpibcAfmXdb0/
9gvObGbWpZ5xkdVWCABvU3I7gvBAtkJ+nQlGcwSa4jaABx198GMOqTHmnj0GVcUCw55bXKzZhN5U
bEfX7d5fx1ZxdrVMdWZKB0NyTBanc9Vh4Rr7t+0QeU9powGpYurSvuxF1PTz1s35U/Eg17LaU85o
dB+1nFEOMEeMLVPw/l+GgaXYKKgVlGazsrMu34bfPSBuf8H5DHomvRJLukGxUq3T9pjUFz3p4i4z
BHn8kUIdKnFBIGygC2zyLSOEu3/+F8+WGFKrnjh+8Z0G5Zw9ZjAHYu3V6fhxqYd7uCs3BU+fyAyh
lbOvWQwuhcwVR8mjTJYG40SfAa921apnhHKHdJWoQRv0kevk+qfj6mLzuCjUSgnYCq3OW9iZ8SxM
Fm5cEjJucfiUEkMb5mNkVVn4W4M41VFLmzpn/Tj+tSa2QBkaC1n7JjZxN/jECfK6p7qS+AKWHQcW
NtR6M6f1jYExaDRBNs9nHEG8kpxtY8nF2Rxk4O9QGRGK+CZUjQYtU4HC+aOSrKsa+h8w2w8ftsXL
eNXBbhzrQCYgG6JwvsyfC1VaaRW888sQFWzDW4lpCivd4DmnPrIEsRv0e+UW2mArLtpqqm0SruFZ
pZXO2UDiAAe19wI64cF+bch5bAsZrcWhUU0i6iSRJhmv39hFAZjuExMzjJn8f4XYJcKITJ1D0MSk
mLs1JRwzL4y3ZeYzoGynDUYz9+1X0h+DfIWvJ+fAZQd25ZICyo5t05i3H0XSWr9eVKUdcJ6WdW+O
6n3yGQPXOeKg6S3mDvwE9oTh/VEsImakSirW7wddYCM38sMhLsBNzEf7wDVLYg+4fm88adqnpyDM
v/ogKJNwOpY/bEAOqdOIKDsJC6PpkZCvHn4WYZR7QKT1wCyfTfiPlL7t0Nbu+hm+mCi0NOvH8lb7
9DRSyyTVQl8Ef2CUF7f2WyeMupMgteLzQfk4UKcCQczeb9P/mwQp5rC9XyhvPPndoej92NpM3+lU
cN7T/RJFIijp7TNR8IeTb89U/MQ5LJJKwOv8xCNalfYrZyb5kKAUDDrQKRYZnFbnOQr8ikUTPQ6T
68vmy5snsT0jahmzvEgnzcCw+CTJkFc5Utt+8B+AboW9Yy0RMbADTYatE9TKQnoexVoruvn0VExJ
avsCEeimjfFj2UzWvBGSW8kYHz/3a/Sr13VhUe0jG4N9OpH59UH6LxVTdnzkUGxD4HaBfJKm3j9x
OGPEKIPnkSaLUotJdkWTO8efyw0UExAmO95w3BPuyGUXuYnMGT7wyIDOiqNx30CWMZ7+9GKSghCk
jk2EpPE13o1fdbFDWseQPi7SKjh9X7az9NZQZGCwqTu5PvzsCEMZl/tqv/qM+My2V7C/qxBl6J1u
JI5okm8BrAWkUx2lNK1llLbUkfwMcdYjD3fZBMGATfESkEh1cTQTBlxHpaeqFRjFpwVm7j8JmwgG
3J3q8BBFwT1VxWIVcGNU1CZnEWWrsgbkND5OyfQHhEEWGuYD9qEPQXf2ly8m6JgmgMNZ46ykYSni
DVCNXXgL6D51iA9W/tFdOwgxUn8T2BvemsIx99ivPU9ZA5+aH2O+DFLD59qnspFIUAFl0RL52zNO
/N7yAenh2c3mJIeGj6w/rE8Rbi1aOD4/ApX3hejDQGraMAlKCgCNL745HZSPY3tjWVGG3oEdcxL9
0OvfxEElgvB3OMXGvSvFyKfjSH7/7TEJysThpHyI0IKARecQvu4v372qnvHghFkTwyh/tS7mMXVx
rIQ/QHdXcZLlQMJDjWEujvSGCwW/3EFC2SZWyxXcIouWBU+Vf24g3LYy92HcvyL3eiN0tZvvEObS
a8TXmaj2bM8s/8ZQlUSG/cR726OuhcZPMQIaRJ9wYKl1zUzdoheLQI/WKn/Ei/Qn9Qo+w4C3Gmi5
0zBxoXc2witW6FV5mqOz2j0Eqx5OcygjmE2YyxItFZK2Pt0YUJQY4lff+nfzfSJko9dFeuX75j9a
RiyxfHIWiOKGHSEPj3eWyaSpoO6U5D551FcutuGODhcIsa6fzciWM1KrsyfUtSW4uPl/38p39kDV
O4n3+utrGys5LlLFqKNvB/OMgvvQn2c5hwMNedECg5vvSLnahd30hiDjEjhT8iGwLpyCq7K1JT6C
CbeJvyoH5pFx6dLgx1zV9RK1qurZdPilzn50ihzyjAeKHwZdB1UbHUSAuWEHOzFxkX64veaf8q5X
u9rb/2JoccbobhqGjLnyROkbrxVVRxNQKqoJfR6GURc57u/tIwJR558Va4x0KGjilWGldbYPVAzO
zCEZZTlxF+OiXHhmFjXEvcW22ErSm/x8K3rhPTi9Wl+7I4EjbEh5LaZzf20+5UW9AE4Jx9eBmXwA
0VaER+KaSh0dMxfs9BQAKQhska1pFmk5t/QP8LOErol+YE3vZ1fFWX5SQPYsoR6fsvxIu0XXUqpK
lO0t63M5F+yMwXtY14dsyzEfEUmy5AqsLsI4trujHSolD4RTCjWIy5YPzeMVDq1ZRQN8z0zw2qNb
bdciArW5aYj/QlbXusE970pKB65fIWhtflpWuoRhTQQ0AUZcVBox+FGQjwUjt1eR3fYb/fhBbm9s
zj/3Ovxrj76IKD0YSYi5rFzyUeAfarK7JXEYIsa+Bs+VThbsIkvoE7l3qVHrwwcNTyvlKkffrTEf
bsfcHaD0WDYmDh9PQT+VcFiwYA+3ljZ56TRwvE2zOvB3C8CWn98kG1j1ozCphQl8f8xYbX5ddK40
kKdwtQLZkloYaI7wZ/HsLepSGdRGtshJmiK7pY0ITWXpAk97I+52NwjdfTWAb1pKZg4NX//hH7J+
MWslgmdvk9cy7F8y71dQMfXpA+vkqo4FCtI/lKB0VL0NjwS8366/ZaBHhCa6ImOwLvXR29iwUwB6
TCRc+QfRr1Z19IexwKxIJO6mfEvtnEPOBOOEXkbR1iZ9/qBrmywlA4CrTQLyborl16QxVrWePJtA
2E4guzWiD/RQH7VzMxe99FORRj5lBn1KrBd6+OcRLw16J7PhTgaVnRxunXbpOe81RG9H1xrJhokJ
SlbcelbrWEIiQfx9k6iki1lfzWq8YJItjNC5qyijP+QdT/HHlPoCHcqNCg6DQFfmqlqs+zuN4Wp0
LUyRAF6efWScA8L5+SDlLi87esn16fIm1/OdmgbRuezQrD9tzkTM5oR8paSftHEtdc9GfYlgaQkV
XP45xw7BwyzUM94RfiWIv/0wZhKZgcaOd0L0rp6swpweH1MnDydYh5a8qChHjyP5eZz6jVfDbm2r
v1mG7aH682IgdJudvtvnjSxBFBgsu+hSuDXZ/+fmJ48++oEIhplCicUoAL0ZNBS36XsUt6TtK7TA
2tBUvO3KZHuqlm5EbHoWVwUQxohvplMfq65idK14ZAwekWqI7+H78mUDIjARtcH0XwbbX8CI8fsi
+HLANVmZrVywYChUnwB6lSz8WQZJrWEQnt078XF/Ekuy7gMznkyy39lOmXl8oeLrWHXANEGdUbrO
xbX4KLL5nVSDs2GY9OdtSkL0cFMeKbgm+oEhty9nFjIDJHzVkyydu5lzqvezjZO4d3/SGRoudtX3
zqlvAh3Bz2SvX6gS3Ac9hxjMSSN9hKq9edglsP/tFccjft338Snw3Qhl61fAJFVdT7GIpUqogqYP
HDKZIwcP70+VoiSBNin/j5+I2Bd1QjW2wXkEx28jY461t+vjFEvN/VViKH51wc/JkCDePXRLim8+
LwH24aQP49cZ/SpqOvL6OQ8qjiVfiRZnuwGKX5eaEla8V8TPm1DQJXrk7dvU84GHcWC6VJti5RWC
VGk7h1nHHWwn3APAU5Z3EPU6QiR6tv5Ztjk/dlJ4g2G1tK15hIKNmRLyoKvL3E1seh6Tf1Futo5u
sAUjr9HaDH7E8RSXyOQJVlGEJxEi8OWdgmkAx8kWELcDA12NIPXcHSbAz3d5mKlVtMtxx0kV0uoI
g4EqrMTyP45STblvoU+qv1UZsLlw2spGuPld9tE8zu75T1uNq7asxqTx1B82enu7WVHsYtMpK0Wi
pGP/dFibnSlthT2ibCUgVeQryu4kVgfIxiC4lmtFnKyfNw2qyi7IOt25URwzss8a8fMXQTjx1xwC
Y6EVgjuoVMF7KOlREYFTkeoSH07bqw9cnbjklUyQ6f59IsbxIsydJ7H4WeVwM7RKDiGYDbqj03QV
9hjLUKipsaQPt+eTld9SKy0S2bMcw13/G11n6ByVfIm6rdzav8VEe+wSgDUjANWWmVpSpyGzr6Bi
8IKVR3ZxBb+bek3U9xpJvvIpmVsvTaSSSW1fEeieM4t7CmDGjU0i5fMp6jwK5r0PujhDQxedrCU6
57R1eBJvIajnz2nYQe1vcHH04JcAVZEGPOcK+OyknHXKkDL2YqOzGU0MoipxK4TNImdNzEV6N1RA
k4GN2UgSld/E3YnHJyOaiCr1AUWa7mmHMtcEfaVYAx0s9abvUSjaGa73L3UEmvuZJaMoQQ95OqbY
s1WTHFGv8wRBPbC/M86DRxErdqCbUp10ZdsN2LNtsHfkkCej5L82DZcMdpQS9k9SqWHoscWMbI+p
9hQqO2JpNerKAT3leU77HVm2/BK1fkTqOu+GjneA/IKrBcP3Q7ymQicbR5KyAqXknTAtP4SJNdLt
hLJmct9/aJ7d6/q9MeIi78JHIkDEQYJGvgLRNt+qUGj1d7qMVMtFm/091X9bmDSQhXxs6VVoJk+y
ivA3VNpVuCnjmhAFLtMDbgrG1QbqMdAc7zqBpxrFTJ3Oe8R6SI1YaARdKQ0uNmWYJjpge67krpA4
oZuhGNrj35VZpG8noBzNbGuY8RWjQXwjJ/FB4twdlP11lH+b6Pmx6KBD6KBiFf6PVEAWdhRwsTC2
X8AiNr3MdqKXs/C0TVfObLQm+Dd8OI7hUdnM13b3BmgjiykFaKEDlsJGNuVy0TlXji0Dxo4btlyq
GRRNSZEhf1esjTkQxUMOFxj35eVHwSDMVftA8xpPzQLPq1gj2dURQj+SR4yjV3mvOFHJWm56q5op
SqrgZMhcSbDixJy3fjZLHRgTCXrjVM8HeBysqN+EeA5H6MhCTvsnGVPSTWz5yTgH+6rjTCk1T9uy
o4v4uYcocxQ38KaHS4Rt+pE0pxKvTTlerXHarJSQlTZ3Pchu4edPnwOVTpGgcAqFH0W2Wz9azrR+
IvasLv4HYu4e0zddsHj6BXInnkM1zmmqVT9NsSKQmJwMjJUFSA7gOX3XlNHmhHbOZ8mr20PVaXPE
ZMXPkq0zjpVkPwkFayydffDRJJ7mmTcCbvolo53IlsPvVP8F81iVExptdW7ed8Mk8rJO47JlDaWG
Dq0Q3k797eom6okQTAyv9pKy4BjqSXW3DGHhzLzrUVB4HwtrNQjgM9tTu0/HBlMyyD6oBggaCXsM
8ZV5St8SaFN2DNkU7J9t2jkpF04NJOtfZrNUqRpuTQxj5McwPZyYBKxnB58xeKBs2B3VRqW2GkSw
1gGaZLID05ivTF16WEL7eJdy2TBAG/XQg2YJRs70iUiIHT7RBA+WlL7WB8hFCFgfoORiXsn+3ijc
M/d4204Zp4kkWJ8RS+CqZPYCKr8O3XTJXdmP66HzyqswgDt+kL18hLgQzrPWaLy/kLQYVVFI8sRK
8xf3JPkBGNnc8Wr1sazSdO8yONwBv9dOfwxa61HLO1YHhKs7kTa3oMZizw0ocpJlDZajWxz/TIub
fsQIdYpmC/mfPqR+2o5xsfmfbjh8DNesfBqFmmCl/faiNM+KQTdpM++p+MWHN3X5ATPaHVQCFADr
gmiivjxUdoOEdK+IYjDrp7n6Eo2DQCPyUqb1kALXY9+lh1hUTI8yXEeHcrbPWFec2J1P9+4xpd1g
s0l8EiE+tRkOueldU8qtFhPXRLUbKEutcl016f8rSLJSRgNFMNgWxZq/HjSz9F+PEZfQZRwZbxKK
2cdt7eUDhEch8hIm8O1OfzPa7wx2CZPJK10mLbOGUZeUt66z4vpsYUZ9bi87HudFL4+RHgnal59Z
SycOTYczwEtQAN+sahr8SKFt9hry5InOk6mdvEyy+jRcvtuMt3IQyhZch9Mynrf5TyZoN/54whTW
uK51q9lKMd4VFqyTaxWKk/kxMeYoWxrtMJYvoY0gzYFwOZORK5NzcW15lZrVVolWDv3gIqnqBh2j
+ZHg8vitrqJr2qBIftH5d+B+litKh+lQHt4xjpjqXTcMY+bcof+TN+6wjBinEEuebJQhW60e5IQK
ZPX7Lj/tntgI8gUSj2Tt8nb3YKqsI7j3hsXXJr82r14scTCAIKuvte8iuKdKiUJYW7o00O8hV5mH
Q9bxkJT0r5d1QtJ2Q2pqhneh0udAlhXqfG5oGgyN4ji2/xVmJU/DQoJtG4iDlB79RzP2EG0PgdU6
y7Iev9s/VmsU7T4StdZTVb+dQiBpERGcootZGGsRPW/awJpS61xntIQUijajDvmUt1TV17R91eoJ
EYy5FQZIN/tbNOAoYqymGQwOCMApOznyogO8ZJ8njBMCswPBRWlErO8L/ONF5OOkkW4EP+pfv90/
EBYTRcm1hc55Id0tQtoHEeL+KyzwPafEjsQZGo/zspbUabLweiTkPMYVlvCzuieYuQUkp8UN08TN
FqjUJ3tvgYyU2SyC8WcWhHwjVXcDRCI6Gygn72XXT8iyxuvhGp44VGwWgo1JaeLesVYeE1vwsAdi
zFfADazRXGouWWy+ZRmoJLWHYcEG+XjG45r1IxkgWaN3wmS/zD2yZiWxsnT4zABKZH/QKzzxU2sS
oVItzt1+6PzvA+TMmjotwLnRnZEwRgnSxrbcJkB1gw0Urdb9vIlin23116Gp2NgqhyLCSavlncQB
RxdMluLH97RaqasvDZ1+hE97qhtRAx7YXX/S4XBHNY7OgEW6S+EptwOwNnRWCNiezFon9ZsvrZnc
hXuPEkg83QQJJbDgkGvwIPeQ6KqPxh/y35LXd+qYfJkqrg8xCydVs3XZKj1k1QFJ7+yB8y4XghoT
MZlm/qHPDIwn6Ir++p9Ifpdd0ulGrUy71WV3s4xWbxenxed3+dKuoacAWJJsES07rlX36CTAOSIc
YbyUMOybH9HvJw7nZ//17gzDK4MPTyAX3rxZ2Y9zAoKIM05ax+bES+NYF2vXXNz440H0+NoZvqwM
pT312AiSLJ6QNOEFNQw3tMY91tqhi1U6WIkNDcwJIpTe9Q+XQW8TU+23JZr6NAZpk0mVZc0uOdXE
1WtkrE3cu+mqDv+bxc2e7BK7w5U/2w920/p7W+YzyZFnp1VA9IcfGw6wnC/3CeAuE2EKZAD2X/tk
ddUVo9MKDIugGbLFvYyd38QuL7PnyFqoKHQBQvHiNf9C7TGh9S7XUCKduG78Uk1bunZ/QY+XNcl2
MGDPEcy2CoGuHC5fXBeK0sTNQQnlpFeco8A+dJ/vQanLwFyZIyX0epqf312apdTo7mcqe8j67NAb
0HZYZ3GjTS5TNGbdMKY2e1dQ+Na3kd9umXoVjQSx7HW/iPJRGL/8ChBOgueHjPBw3n1eUaeAwPs3
WXMBRVt69hPqg9Ogc/BBCBuuIGTkN8mss0lG0IE0ggwrP7BawgrDK0pcvnx5ZIvUshoyOIsQw/AG
YNTm/CR6pkTC/UWU2z7E1mbPrE23nmqWfI8UwJ3dRAo5y1geQxCdK39Go79AUv+Lei9RHbGHNBFh
8ahZc/eIhUOg+LqcAJ6XDctknDYy7hL5v6IYBCSXPa3B4vex/ku2nTJVXIKNofyGsoRppCTXrXhn
uUyDOBIonAQHXy6irYynCxJTGUvhtG8xP9/N7HUjGKRsrHK9N2HbtRZkj8S7LRIlNsh2DcnM0/Wo
+FKDdh+sJ5Oal4uA3RC0NTEM8o3VtVovL4zGUSazvKBIxP+9VTUf01qYWkXMASht2kiUj9n57aAi
MLuzVviVATid58VoeJAhf0pNnNwer81p0mz10sRXfIUwqzNthBZM9yqdbuNKaPnxK/erp0BYf2AZ
KAEGuD2ajGNRw2VSdNmQxvQJZc22Hnfhr5AgKFsPPyDvS5utqn8tSZjDVNL5OZhM95dq8r5MJYmv
uUvlGbnFdUigZaJbcFiEqEMWa9QuoSpCzLS0z1biNWSjiH1WVzUtpjNg3RZobdhhbZ9vbj8ZPa9c
AjUtqDo3NmGiBHZyL66rlxDqjtkHRwz5koUowHUiq4I55mtwAG9C+1PPvF+4VyC33NgAfoRzjUzM
mx9zj4BjrhFEl+HaWDpYb33HbbvJZPPg1fUiRxgvItkuD8pqK7UvcK5HuHEsufMaUyihvtOePfQf
Z9GM6iV5Mf8/4GqQyayvN8E9PrtpqgaL9EfAUuBn76rfnyzh5tukz1SFgI7PjQwZuzYXuCfJ4wdn
3OWlW43IDCJqBabZyKJ+lmiGgn2bTC7lbjQisA37ibioUB4A9waI3saOz4qAXfvXD+gVFAyva7M2
1ZRDcMWdfEIIT7lUxGgZBpjke2zD6zmXinVexCCcKF/EdCn/CkgHRvG+g//k4FInjHxb2ebf5PVc
fRWHfd/0zq6+XAQQndys8bnebOU6j7eanfP9PnCCn2hFA8vbJR+m3BI2BjmCtd6mPPGiKPsiExsZ
Bzi8HgA8ToAx+1Wtsv92jzMMU2+pHJYz6eomMEJVDw42TItLPAKeqBr4XnYaLYNPW6WWo3vS4kgL
6Q/Rxf/Z8zsmNZNlmQduZyxg62EO0oo0IFRe263V567cLLqKaHpnzCCA8OWuMSKdRkt6qmJiWgqK
ZD8B+yI7W3a5mEi4ESTocjrhkGwbjxc1zHQ1bdYdeA/g/HPaOkz00LznTnl9IK6rJcegJweaydQv
Y3i46N+cgJBSc3STZTpHXIWq6n9qOVtsbhIccY1ODey0pzi0p7TPhRdoS8RUK2msVWg3kBqVGLp+
IzQK/8rBgD2G0ShJTdbTWHgrA4LhCgXSO2Hu39OpTm0kzDBWJjlI7MmsRreqRrodbbX0rgnlj2aL
mPsOy08lkz+crliH43MIp8OJl/GFLAK8Rv0Zdd/qPAlvkENdUr4mD1w0QNHewc/rTG4sZcgzdBeH
nmHBe0tlMThU1jDY7lvPcfu19haScdzmIsHG1CRiTYY80BO6kYadTWxcRKPLm4WAzGZPGfuHFURm
HxT0YFCPywmv/EbVBfZ9XTXwsu6ZAUTaRNfhTq91yD77rUa9cOpmyZwZLwIXDVixVzzD9TLlq2Vf
K9kJyLe9UfdsGN0n+PMtmBD1cp8UePhR3676gtNjxCFTCXUr5sfekPqpM54aPoOahrXumIm4j1PZ
foYCz6FdMJ1HBth1YZ+dRO29wVU7ErF0yOXB1ztCmQCDqZ8znCIiNmzSMKxhNV+nyMab86Ra6rYm
KX54XBOriRYLhE9haR4yONuVF68Ziv/3ezNS/88/HwVUlLhjOUkePBaeFJyQtnozwAtJOzdfKx1r
H+bGlISaPvygYc6zINfXPW/AtmchKd2mDXJzMnqlpQujpFezKQvg1NieOOf33dBlYivdKsO2aWGU
WexOx1GDJUh9nT4rKCGNhgh7YvbKoapTALte/AfuCg5q0H7y9S/QmHrgb5ASmqWSpLSu1BuR9Eh4
wK5fg8bX7plj5f+QTCKJiHBBb31iuf1JnnAB7ZXGjQhmFkXIuuL4wXud1tR5qaqzGAFUu6UgRqch
MfY/zZCRg6SWGswoKDQZr+O8RDYtbykvD4p7CaPl6KEx1Cd8kA5k+d/DKpMVhXxfKb7Ko9+HR5Uh
2794rjLjonFsQt0lb0ioagrfUc8+IvK3ffkmGB2etsyRwevg9cVVjmOBekgmgXJdUslIOA2ZQrAt
l3w0Z/xaRnpvxo5BP9om4ejI1yT1JDBGxvEpCuI//HvqSUcfjMszTJPE+/lg9DnNQ8ZtsQ73xc8O
t7imHR8t6Z3PZjfy0T4o+/f3zX8Ux07oVg/w+V1GWgP1jaQhEMuXublxnHSB+INiOSyl7S0uNOlA
hcuyJLUV0lfoW9VHrcboPhmN4Hyx14MgwsHX4YoyDTMjbwZ0RJ+3V7sBtH4B5UhJURvw+6I5GH8U
SZSce3G2tO0o+iRjRBf+F5IcU2krItNpaPAxCZvVjyfhAgBZaALFzKdCQNCO1Mz9fkwu+dLqALfG
xC3luWmcS6c5ny0vLKObRESImhyJ50i5eVq1bozn7i58iRBnepePdhGbjng0GRiiXTzSnNf4C0nb
c8vndusXLZutWvTCHyN+S0AxhauHuvOzneUXQqPHvs4XAGEa9N+C68AwKixINFErfxuVSzF9WA6E
dDxdl4nsjslS34+ukvn/cg3uNFn7CAdxtji1jIuRcmSOLIgrkGVdENRAFgk2yTsLX2IZvQKV5r8z
y+PV7we8s7HSfo9vrk0qDdztwaFDiF4PdTOCEC9641TRqiilj4DxzeDaL04gaRn+8miGZ73xFQwV
Ywduc9zIhFvbtFFEXtEcLf38b9bRSVLRd9W1pFpqtETq2TLt/GTDKAo1aweFsHLBKoO3xh5VPfJ2
xBPL57ezNNYKauo8Nhkn88d709W/mPrH3HkEwf0XEKfIbWROIzkO68W8XDPLt5IUxQ8+2dfXw1Qo
+tW0hguiP5aYznFFVgWs8ixVDTQ+yv7vcosda+w2L8dOF9ejy/KEgG7l1hBcAZtB/1dyJ06R19/c
/voX6s773jZbIFd23bcsU0i9aj+Ot0nwv3XCOCEv7QuKYet7WojupXaNGbK3XSzB/DEEacbT3sqf
IfSagFEVYHEIWK5XJ0oY6Uv/WUd7DDq+KUJtHABkynk4ZLErp38UwsZWWXLylyAKwIo+sYPjpfMo
7dLeTbuymZw49nZMvT+nQDdEbRjM5/chCbaAQI3AyjAscTFDTcVQqHQrU9/2/beG+/FV8dJlyzIg
KNyn5wEGJbm2dENnQzwSurKe1go9U7U6P+YPJdSUmCLcyTN94fmeJwm0NMErP5hJuv/fpIIkYx2C
WrTIqUF/2+AmjNUe3Fu2evnHXjfjyoIij6o7Vb/Cxdryr7LzAKVTqJTnJSkVuQrQ632V/oBnkzJW
ojYkzeunwTv77kuOKLsIkB2pUWzJmYtPEH3XDoQG0iic/thye0XILzFRzv8hdhEgFQvZSX31Tc87
XsYQfsHeAyaEXMKRGQ1L+4Nr0UeoMtE4mGkqutg+OZN9Qcnb4nGySZebRYoiJPb0+6vcIkvrLLik
lvbk9tqfyEf6Hk9cp7kws4vhQ1O8n5HiNFaio8EJGt7LpVOOeJ7uwt+pXigxoxQw683UT7MqklUh
SRFhjDD5sDFD0U3toLQFC+rrqzIJoxYo+r3Ku4VnT9+qReMd7PYhDcekjAeEP9DPbV1RLpVZekg0
cLnAlPjeDoE295mw4A99zgVV6LAdPLT2eLo5x8WPTzlVxxTWdsfVzZpNmLVxKIFsFt1SO6FsaPB4
lhxik8PpeCOmZ0hylItEV84zkJN2pafRdZ5AugaAmglg/b4oi0/Ru0HMJESvJXNd2pKgcwAmk12b
sbNBwtDNVhTANHiFag373Wn+7vchmPemNZCmXPkVFBQE0s+3PtwZQTO+U03VQOmNcOIK0ma4MRQ8
rhZ4Ys2PuTQadYyMib+LhHr0tEE/CQbnDTSTsQrVAbG5Wxs6OiyEnB0hOlgZysar9J0JP0hTLRqY
16FE+U1h50ZwYhmeinxGGW5sCB8KgwbLH/mwQ4WX11NiLktd8giYRXwgnXqoxt+WoVUwU3/wT21c
w/ZTfNmeN1APqtmC6prVajX1/2caIKmUilOnh/CM1zXvieQGQayJ1wtLr72SxTNxyOfLacv6TmqX
mSLf1kPBcJTwLQeslv/K6fCUEuO8QMgqA+S2iSQvoto9fMrSthjlMmu7ToSfWamiqbGe/AaQ3kIe
qLqWX6Bl+ijWwPUO861rteWzgsXvpCZ2WGNJytZCWL2zKX5KwSU8IaokJ7OvnFGQvEn103rUnXwr
iC8Ldq6+sOiJGSPleJlFqahQ+NFiJj5GSH+gJLVY/dpo52JrRuMRAcJUk2+WQP37N+tXQuC7Y11U
ApUYGQn1GsdPmoHTweHHoWBG62Q4eXDnBTvMGFpwgHsuRiARiXSkHHgXjP5I7RRCbUE/UaOYYvm9
BRzcgWUwCd0zUNO7xUlVkWPR4lUJanBoERg4RkbzbWXYFyQjNQ7Z/o1ArElSypzvm7CqPDTXgJFW
kt9o9c95y43kBfyGh9IKzLQA4wqh52yOG98BgBSXFugBgMsnGXd2uUfbfB4hxqHCV1nxgH58cCiy
JAH761is4PiFjzsA8BZiaSebPusJWgxzkxGDArTbU124HfygM9LB+fJJQPL89sXx+NC7Aj/rdp+Y
vyOr/aBHmzumZt72z3KoEbkdUtysx1A/sAUPLA0BA0j9uFrAjWfuNaBJoP9KmyJfuXu4DAmViLBI
fSJyLX7I1YbdB6fQoJ88EK7h9AFuMgbgdEMH/9lYMvO2vW+B8KGqo3BjAJIzwKVaSf5D/WXZxL7q
jW4PiIhguksX1CpvMXwSLZi/V6wxX38bcOAAFUultVOMMhPSDMC1qttG6REB76IbiAQjoT8ZkpNy
iAz4HAnIG7hG6Oc71tUXqaP92Hln56+LG1ya44H2z5oTB/r9GrY494Dt4vQtfAF9wtIzTDzVG4WO
0h8dqkGSoPjNJG/VhQEp4Ijm96Q0Hl+9jNMfNDzSfUo/dI2imFWzDYFEFLIh2VUEObORKzyv/5Aw
S65RFRfEcD5D8vlr4CCq27OQ3y8vH42jEDmkWQsBDilP87kqQ4kjwrjdIyTfXzvqUhWKDC47Vrne
vhykJqNysQqIqHtVXASFITZ5h8sCyOjhbT5tpaB7TJqiiBquT/YUfr6oksf+ytoavnof8IGi9reJ
ljI1AUnBzVz/Afpg2hUjTI+XYt2oKpZYM1YbTr0bYFaQC55/g88bXtNpaLN6xXUPfm8FKZVIERil
xxp0zlUKriv0AFP03dsKUZatzF4cspPdGBdER/EBANhuYhsafuI5PK9+23iNT8MgygAv6qYCaErj
3LGBefL1KPLMmfH7MgD4NQvtUK9n206V2yFIQiGoPxqD7cpc74iaC3A5e7hjC0wRvduSXQtSwUHB
eT2se3BH0oavV1HohNCkJLh9ePf6r2iDU/0XF4mKCgO10ST0D+hQ4ezc0dqf6RDmnfO3+gKiC5WV
f/P0qnpTNgM57e2ZDwU4TMtSDpROyVi6r0sKgJzPHe6JodnpJ/gjmot0Mzlb//ExHysUtLm5w7ee
gRXjuZK/NO4hSZvcKj3j/7VVcZu1/MmlNB7rAjCjzJDp1rBmBJ5bmYUerGOPX7zgwx+EE0/Oe6MZ
wzLUKeA6HA/R/tYhv9yUlLzk8qicxOHoCK6BB0Z+9gsK07fFYyV8I21sxRQEL+io2MlD814vJ+EO
pM8WnJsS9UzMTivxArSg7yj8VWgCx1ZciXewg2Z3xEHlgf8NkeJZ4SVSpfo8E5ZHSTh+N4tMfs1y
KQRdG9dtRcxS5j61yYOMBTycJZylHt/4moJKSKM1EyXKqORhcS2N10RHDL0/cB7pt4uYdBe1iHm2
8xWSj3nkp6sk+qjkC4mOmTcYPOGgJ65UXRvCpuD0dGjYEDH1WXZseKKZRrzjtB2faQ2zIydhnwLt
Skoi//KwaoCJn/GrITsuqw7kSZruVSGnP+Paee+vqFOXsTAipfqfFuV4wLy/N49nvlMr1z/rc+Si
1yLfSXi3J2LDz++B3DUXU9HppBQeKaRZPiP5Moy+6j6A2XQYomaKihlf99dzcwoPNGaWwF2DIMNI
E1OHeu5Y0P81O2eToTrn7IAXlzRWK+8Yo3bSgTSDIsMdteHmmYrGEEEwfix8Krmgi2qVkRrlkbWN
mNcJbfc6dsD29JODLMu2mE954QOnsVLDOH9Fo7NaNJzIxGj5Dso7eydlskcMvGIsVUfFsNwpGLau
mHvTpA4L1UlEOZf+4SkZMb0SbTXH96w2CxJnNapF51rOAISqJCWhR7tN3Ca+RZwQvMMcHQ6GTuAF
4hBw/iX7Fywc84hAJkiGc8V54om1t7HU6nMbr2tt2GSJVAdNmx3UD+cRey4LSMtz+IEdMvj988tH
u1YvGn+Y++k7EjqqnGFIpgS1bwYtPMPpxv1O8e+1ftEzIV3cmOnbRLzQhOmXDoCuAff30esQYodX
53s0EeHR737yfaL2QmEKCNcBuASGCXQh1bQARHPe3z9JAwj7FDBkVnssnVFDLWCQ2odXFlhMhjx4
sZ6dAmMQiTqyPQzqkJ3WJoRHK0mrSktvBroxYFcvJ8ck7J1UhrWG7+sp7cdG8OIrzVx0wadYRWL0
mICMYT6b5tCY50y6ZYkyz2bl5VJlGdRmIhL8nNmen1sZzcJwlLpK+0l3S4H+i3v5BC5cxiGe11bt
A6sSCdoJdhaLqBnulBGmRbyjpMyoSSlu6Jb0ZqxwpQ3Fi5UEGvWlQkfHdpxf0xyoPX1Cjl07EjEa
u8fyoCc7ogBJN2IbaDcc8qBp5Jto9oD0eGuuAJhAN3YrJrODdgnlp/rq7Rsl3D9Y9t+6T/+r3Qj1
fnGubmAlTJ3E99r1s+ABMc6oQl3Sxh/ER41uqQcQA5sgQ0Q8VIloEl+OjBZ79ZZ+Uzz2us7zGiwN
znvs3+zlnZFigYHmn70iKbJsOQB+aPNR3wgBQEDI5gCciKmFgDY8Q9JipYtGwwpBkEWIulKJWeGz
Body64eR/G4jDe1zOeqI+L8ijwaqi9qDzYqS7eFvay/eCYZmalyTtYuoWW1Lg9y0x1VmbIG/11TH
By8GTdRRYGqbQ1Yr+bx93G+2V48NClgr0JkUF89XzKRjOhT/p/faOw7xknd8FRq9hsYEC7bT8Tz9
93YjWqxsSbxGGle/rztEWK+bP32hYQ+LFr9SxfR2w+eeHHtt6s9BLvttc2tcNohfyOQeSExDlCpZ
O5Y+RF4eLO1VaYa+5qMFQ3XGJPbTSdJfS2gUqMxiw5u6sacaQlVcvFwrvoLL152+cyZGJR9U8qg7
Z85n9PWMMZr4tf0QhDpekxwfx7843HL+iuQOL2ik87ddgrNkK0eQzZgfJHuOOaLzhvb9wdAUh4up
YQOM86WPrIU4BCy5eFfTNv6dFLBXIxKhESNlXhKBgnVPVmdMhJwl+n7sZD3OMd16JlD+s11kGc2U
jJXuD7XwmDAcdLz61NlUV0M66/X+FzlaK9qOW+CjHl/RzfJKzAyUxLkkyg1yih+j2dnP+EQYqQKC
L26hJRpU6aiWL+IywT4kIy6oUvfudapnsU5b9kqSiEb61hAZvLKzx6myIKbc/E01P0/jLpRchun4
UphDbifxPfY2DcvHYvXPZZsiuE/+TtBHToJGeHjEaT7tZH57usElBM7QcRFQlt7KwiuE37PyO+Of
kuSvYOGjyaCIa8lUPdNksIPoY7ee7yetirmFuc6SAorvj7NhCYegPuushU1LcJLI1eNUs3WLjv7b
+xBJsox8ybIno7qWVyQRIK685c4PDY881qNPeU++9jxwluuvkirsRXg9fmW1wkAmH0oKNa9gj0yA
XRD1yRfM1/zlCDiqunQiiDz6kGgV0zG51xYlyylgdcEPKfIvInZEzEn8eYj1bTMcyEv5dfLfvr+X
G5ZD2h4JWWdUzfnLgjfrwZVBw1PTjk/lqtS6OGTYSpdpOiIkou1qIrgC+/vyp15Zq7UBNuvYKyeZ
baBCW966BMLc/yDjcMtp2k+3SIc7QVrwpw11OIXNpMLGg7dZZR4vX0vdKz+ep3wWpY9wkwR0JDrX
3KoDBaDVgqg6/iDscDbaTKeU9fnUbQmEHYB8BFRNWHIpKdWusqfxhmme5oDIcNVjhv8kOmS7ISpZ
WvPQhDGsk/TZ5Bm/73AoWd/RbE49glmh/WMZXZRjYXSDgwbi5LJiZTxBwh+y7yfyWi7joyWEzXgp
OQiDXX65/L2x/uZoU4GxvqbmCY9ADZvscI5b4KpJxYcw7W3htvHHZHZk3y4dxY6pGmoFEKxcKx6+
+AbAGC/cghEsgO5HGf4X7U8TWznNcj9a4e/Z8njYGKE5kGMK7q77bOe7QkEIR4aMIufJ9rIX2ysM
2ECOfroNHd43djtDfkLm8rUHY9EU0PMVI1gZ2E+NqEnbhj1rAorFaTHtH90X/j5TqKpFOa3YqgE+
ideZLyWMu5Z1HQ00AE+42HXf6ukAf9Y92SijeG3dsQUIiPVPsG7ulGuIPyPT3oCDGnNRW1m2twDR
FAaWUd3/dglqoa5KferlOKCXyHTsUxaNfWhaHe5bbEEJJOi7rQo/zeEzS27DVUVHyTRd+lw0Jlbc
ftJ3RcNNLRUNucFE6AkzRnob0SHBOjmE6Q4Thae5yxxpogcREgjkezG0ra3+h/kCi0lw9z+Jt90w
n1TFK/FxyY1iDc5N3spxT9sduJ61Q7rXscSjJJEANUm1k2yJf0igziqBJGnfJx/zc6aEBQZIZDFQ
k8GwFp0hdJw5H9+86zdpa4gw3ch5oM4ssfhecy23k/47fxBWucew6q+wPfJtwL8gR9iq2cvJIjvz
E/BWd+wwPpjTZus4ZeTFe3EjMFut7DJqf3R4f043svTi8XnigCyVusieXdalub9GmrDK0FMWmr4/
QhOtMQi8m6r57D47BR3Q+hFFgW9SH9o0aa0Tu/clZJJX50vftOhrpf3WCE+SuvSauGuyOBgKysrt
YtzLx539wNdwx+/L6wJuR30cEA9eOwsMWNnyj73zABG8To5beN88PXGutx9Njpw+z9SQB0RmCXo/
4yXezvTOYtHCbpE7RylIHjfENVjYhB3EFPDTfg8ta+/y1maDWwIxdw7OJXeGn7YmDVVurGbwPeiY
iIOAZ0mOXKMFKgoRM/mIf45yZh8X7M/sjKfIDnzCASiLpA0O7NDL7Tp+SNPHSKRrKepOLMVKybFG
jzBOjiglodApHjGHgRYUW/9HQpBmo0k7ANL6XvaLGSExpIDb5aRwQehvOkr42mDOK59TT+dkUezQ
htEOyVLCSu6mUSjel833VfNqz8koYdBkukbR3Td+K6QAZUKw5D6s67XKNpt2/rX/2/oiuWAFDya1
3Pl/QShwJXzGsQ6ch/Oub3UTPnBx8rUWryAtO/s+MVUPN0P6xPyIfNnoGVqbvEb1Ge4yc10dfb57
XszYzqV6FX11zgH0Eq87hVt3gpk7znjSTuek8/sqoWiTGFjqQl8qtBzYKgcBJuj9Dhjvvs0UAzaS
BCKuL9+dCtLU2hpCXaF1et3vYBq6GfWuhaOLUrOgskSI4MFxmHD/4qrFlEqzynXs0zhRCcil5z5j
qrrUfzxCKfLCcv+sSP+YNNL+9u8YLfHGk8etcGoKqj9Kd/kV66bFwywc9SxuQL/THR5BN+j/WNwI
sLA1dFCwvRlApTWZIDvdPquWxtaWTVJ34vVoyftt5WuVVRYPbwuD54o26p6a29pg5Ku9XcVxXXL2
dO0KcWKA3Bvohout+OPLe0pp8jw/bSGbaeLDV1wquNp5EGyxErRWjOHqxGmZUqCrgogyjdHfuiRz
OvxHlUSPSH2JyIF7f5wvLCJBqKxEZbqQKyMn9fH9dA3Td14rrZLw0PyxC3Zg5CsbmS3H9NpyhPes
0Ft5q/Y5zQ4Eniao/0kgzxkaVkiDbR5Q7lydEm3wJF1PglLduooUMW5UWOJpWRnSgXT19elI+0uQ
3LHI4np0lIo13z8oQAacgIsSLn4yYmA5ds9fBbdXSc04j5OrIJ2OAzoS+lzGgaZmOrfDhXaLMnSI
G3vY+hxkgo03e2z+73g1SRIaOOQd86J+T2Pkw2174JSXEkm+6v/XfvPuzfw95MI7UhYc1hiDpPwv
EbXQtufAljJ1PUoNf7sRwltuy9curPIY+L7swo0IUeMue23SPL/41r+ScjsZ2HUoxSpWCNA5dX7m
CX/3t1OBqTYNFak/9SRqtCRnmz92/ug0C1qzlSlLTyo82jMR3FeM39o1stTYSWK1k3aT3OSsPhi2
sc5326aPFjqEh9iaM1lSJZ14gyPkpHnoG6txT5/WIs/gODeHPBGL6IChoLRA9qgi1rP+bnmgPWbb
qvWDPRaINt8Fvx7aYnxX6HrSdvPtqIDb/QGRJyDceVkPcGaXJuLkqMWlDhHOUznQkZr45tEoLeTI
SquoxURzl4eOiQyqxca7cOmoh2GDvcEce+rSkFdz3c2W7ziNQMV1J2Ko7ria0BlfnzxJyqx++EsM
SroPyh6sLoWD9l7lCwhnU4V0iTQao99+iXkbup83YHlvHhemsD96GRUo9BkQZSorKE5E5QA93bhf
sDGSnYXu+RQn57MAjy9arKBu1FBdziPIJCk3pW3wD2ggrLzS0LorzVU6ragGqj1C/Q9vP75WcoJk
clQuAJUzlZW+hBSGHGlcXMWyJNxL4oAC9nL/4c09fdssyzIqP3m95N9mAEPMsmfcaz9bx0aXPpQv
7vxvqEIhra5uMtREfXJ0vd1Jcn+RlW2KPiicmerf1FFJuelMw1LV7+gl8ZO/noONzXAYBB8ORVjt
uzBT9jWecH6b4p7FUYEknzvAFoYCvd/sEwXXzc2+BXX+uTs2C2J0LJLsxQvnDef0Alv+/B6XZJlD
pU1lHkkhiz3thHLOMCLS/xefVvWQXXNnBlrTsYjK/KqtRiCfGk+JYSaJLYz9kvhstpHwmN/Dzn3O
RDX4u4ytW4YycItCzkItWTeRrcnG1vEFZrNbiyeSchW2J2HBFtk4WqnZmRxZ79nYQPvofiMDJbh+
+V1oMTva4XS5Wi1uQoHnzRM2BNs+WaOeoSYomhVPf7Z34G1iKLap0fJMVQcj98tiEafrdNPZ+PM6
59FBb1/v5cvo5ZDOE7wFkRW8yZVSEWs2OBeOTDEbvsQzSOtysNipYqII4CKzfMogXRkjiNeYoFUs
O9uPTvlw2iHKo77FxF2cbvgrDtmvo80xdK2+tevmXBS5zXkJ9WjiiVBpsUgQtJ6uN4jBv9dXphIN
GgtvqKhxw8LterjauAOwsTz5LWZudIYVXJb4Lt/3BjKMok7NcdQK3sd+LYIZ1BiPnvleSJiStRYy
fVQo/TRrqchczCUG20mPHzWBPrpkU30bp1nTsgrZ46N/ETlINRE4Y7EqdCtuoqjn2Gz114WhcFbc
GTXfWy0i0DAc1TfjDcwcXJ3IGb/m2X6mSlvpDA0X7FhxVK9ZOyA8/ybtfnoCrQSDiDrFs4a7aYJz
13YBvO9fiicqSX8FByakK9xzEUPVo+oHnpGBG9dcCd7PjLv8owDWtUV3W1sLBeRbLo7EyTeEGJVh
6xl8CaiJkyAjlXpgP4m2goPnox7r1YMl1dbIv5tMjkPu9kRR1LjlDEiaYSFAS8pk8er/Vh1AbcVT
98ae8sJ5pKpuJ/hgVi0OYrlGuxOhceY94N7o/adsFkGFqJf/OpTxhdhwBeI0N2rqzqNQK71MHSGe
lv2gg/jxWksOWXQhFZccS4z9O4/CkCCT8OgrUlEgsA+gEgxObAvMvmHN4QblvCqlfKE+HzAxMZH1
yEOnf1qn1XvY1YQ3lMgwOpR/XI9u16rEKbCt3wT/tX/5kjCYI22NODlFIsjyX5iZk/KGdTDGVIuk
/3uONY92k3rVB/+wJrpdyq9wtPHGcO6eVzfSP3cHrh1/i+gWyHATO28jsuid76y3YdhaThF/IQHK
XKkv1yOZeSqcTGHu9YV4pSVKBZLXUAF9y6zri+vKv/QL9/DtsklLY/C7VPpQChyjovk4u1q1SJan
Kl6bRTcB3PTAPfCxiAMHYuHIqC4ejhzjqh7hU1ON8pjz8BD2AyEmm9Bb8VfeTpNzdsZHe8mpKp8c
cSvjGVwQLYPNDt5zR5KR4ER5tVaRkjfExIQL9wPJb5r2Ctz8pbHq16bEDlvnugVGT1miD9pI36+U
BIn9tMEQIW9Xz5RIQtv+vsxp6pGqS3OVw1AgROGr0su7w8KIMLSvufmCqvezdqiF1a1/ExuDMqKw
4ImiNKO1S7rM1t3mIm4+r8vzebhjAORuI7pMoeMEypPU+v9Yei7/peiECZmOTkmUuWH+dNaQjrc8
NNFhNROJFH/2y84yDJsywBe7AJF3Vrh7IlxeRyabj08PRocWgVPusrbxIIc4OFjLSqUea613zi23
HquDkEAhwETo2uZSPFhGoG5UUvFmzJV+TJrpg0yN7ePxL01TKLuW0WGdgjEV79iavKpbdAT23j0Q
lhjBGI38dddE47QzGOoo8KqRPtLOGOjAt+GXhiwJ6ri4tm63mOpmtbkV8FHTv7oeCOtudaCYPDUJ
LYv4cNQygfIwueZj4LUowqTnDrxrqAMMjkzn7smgY/idKpjcL8j71VyJ+vyf1PMLvuSUEGof55Oq
kZn9Rd6KobhwnX6bHRY8fXkAjO1+pVOW3rSXzjYMZhEKGLvI/hxF0DdyVOsdIR1/3qLVBrFthEIc
bMvwSY819doLDpbDrXZUWx0mKdYun6tmxvNSM/afSGweSgaB+JMMD3KfDfA1mdx39rbBvh29tSGK
Hcbp2KrkSHQPFGP8+cF8j8Ixv4j4Cr42y1p39eXYJA0vzKMKxKs3+DX4KP0uIGyuioONpEtDX4d+
vsXg0PZaPoLe34qIi6we1lfS3euSDmVf40q8fWTzNGgkNmmYZIYcpDxgg/3rGFvJlSHwIj8LohS6
6RgLhyyDXmExP0gMIXDew250EIovPJScLNURc45SYWVKUMQ7KOjIwxyEDOxM0AuNiJRSsn7+G3XH
QRDplSodgdPlUDdYoTNvsozSqGUnkaxcgD5+Buu+7pNOQiKltjRhtgi2GKU92QZ1+xkHblLyYLxH
q1Fcm/LRIyzt9JX7oz7w39XSLB/pz4PlX4CU7g6A+uNNBaGIxNUJTqQEip4a6WkBa+EHTPpNeuSn
X8FlS83dDVAvXPoczwaI6P7gBbCD67WJs4HEBIMnd5BsQX7Qe3luxal0o6i4hpPNBG8CxfqnU/S0
vc98KPlXPqw1aRT9Yy8uJBfZVcsVJyZt0eRZJWQ50WJQ+3EyCW21L7dq/utRx/22ZHfxzz6/WGJj
qBf1p9iwRU62jGXP1wobzn1NkPn9WNFa5iLBli3c5IltWQWIJU3NdBVFdF3hnFJXHkCmBQpQ1l//
ZyMLlbpzxWVhcKGvYAvCPkQub7H+o+40NIKY4hCKGVmaHldOhJGZVSsoXLtkqGhe7JfXgTl2FbIV
lQ8iYoLSQWHrRQDig/sadbyw4jPNuArJxeK52ud6qQucJ7Z9XRmkLXBSsr1pJvBnN+Gr/IsVdisp
J6ufm97WDazEMi7qQdgx7ZbmBG22psRDeDH7BC/kp8ZC18x7/HOruouHwb19jM4UZT9LmHG0jSEr
0YBcWXQE18w+P83F8/i5wGtz+oAqeRASapIUg6pl7o3Y6FviviTk1PvWl+AMFZCjV7IoYpB//5ex
P6rPQV4f1mOIgSWjN6HLnGkcNx2oAi85n3qm2vgAR7cut8mMRVXcqx9mfcjmwlS6xhlZLo2bpN37
GjbyOzaNgjhppR+xEw99w4o6OXV7YJRjEYDuhYJCTthG/YsaJkYnnzO++93KpAclld9uuCnIacXO
4rOYQHU/knoJQV/SYnzkTauRNzKko+N6zsI9cr5LBmsneVWO1rqvgsxTLUHJlgZ+4Hrrnab4Thv9
AzCTnEgR8RjZM96x56X/wByLj/aGusvIrVwcxj23myC2BofPysED9l1vhX6+1u/f3I2Z6cOLBZuZ
pJP9p3BiW9lAnylhWAbWzSN/so89SrDS8/S85eImhCF/0c5q5ZUcObSZV2RAukhBxbQxBsltlO9n
U2tF/dXrdqrjgNiZ/Zj+Pg37LtTgEUByboi0CcX/pGC+IdGIv2clOgYqGxw8+76DN2OeFJ5shVp8
fRFdH+OHsvZk73lw4nRW07b7DDJDJMW3vezQJ/wLLIKGNyzPqgJiMmLh6xWWAiivWCYGcp5k5sM9
qgpUtYwazrSAKzuAGGrqjwHCZxjWK0bJlwaF0Wksa4isg5orWm3yqvwGJYFaKEtzo3iS7engdJz6
wuNC2b9j6f4gX4dWj4jU6/QLNlPs8E9ChHCaZz1gjHgYsoq56dN0urMThru2PO58RDDp9OaN9pii
PfOvDbDvb+n/eZAIC8RNZCRpygBXJc2JR7nwHZxGf7Ws58WPz3SjIbbzBFCJJ6qTvQzzdD4Z6/qn
mz7AYpAJaOBrvdUW2Wu9pssBzaLPSVmVzqla7+JFLsm9T45IiM7Ehusg3CAu0ik9dogh1RrDV2cx
rHt/HWvSDq0t1/qDdrs6FzbtXLaZASHeYK+ig/lXtEZ5fdJ/xPhzZ++JBi8uIEulLGIzoH1puuLq
eRnnytzWheSQx9en6gXS/9QH0seQbso9Q1uhEBJ2bYXsFtb2qHzuHFi5mqJvWVh6wdAovj1Ovldb
YGY836maHg1IaWPHnBNqS6JqTAG4Sx9pulIXZM7rfA/Adqmno7ubwi40cIm4+TCbxH/GgsPacT9/
A3vTkOEEQHAx77JCbNkcMYmKUOPXO9nJ2FD4UfvXWrHjsyc/gghNMxwD6seypGrZXL6C++zLrx1V
DY9w5koz5FNl4cdXezBaLtI2pERiSgMiGaEONR3Kjga7r19MU9KI2iVTk7OaNI56gGOR1mjiR9+g
U9xd1fx+dzvmto39TvrUDZu/7zPZ5hNcSQDaRGGPW8miJzVVx4hHJwuBoaBLkLFayTfPESwtORra
AOZWBovgmysByMPsqAjlYkwQh2SHrR8aRdrZqLAjpZyyhn5jihI6xH469+qgtT6wn4DRZLLNZNi6
upSTxp5srVXph0b/a5rXZ3aw1kDE3tzsNP3OcwmV3+YR18DsaZ1uyb8poEc81FzitRITfGtUdywv
7XzkcPmPDM38Q3Feppk4u5XOBuggYTw2mCz6e0fgflwhJEUvB7XQ4ej4yMcMbUuhKevX0pOh40Cp
5aKoi4dD8l+rWmgMGKMsKwWJ/D9d6CTqTmde2BX3eJLaB32nsluAaH7wN9991c2j/uPQcpP471nX
fm/lwLgiveOvREUgFuorvW+SetSQfEymW/BOyoXT0NYCuGzmOkn8q5/H+H4wzvFTCGxfT8+3k1qp
bhwoiJwpB41z1DOAwkkWwxWKnbdisZHsntP7MB2+M43yot2uGUV/xPS06ac4RSvnzAB+A4iEwK6E
9wpnMDMva6Yne/c06Gh9B756+QMn6rnmY5TUd9+m3MoIbOjDAVtJvLA0cvR3oFFVLxmH1tDnJ9A+
miGUb9djNVpvpXstkCclNnAWZN+shTj4C7rqBEQ6ewUm0w0ebStOKZVn5pkNMIeT4SXslLLj2zs8
V/dp5TJ/KVGvKdzWnEjz9cbB/PFPBHcina6p+4JjnaEs3hTqa+qorK+Lt7qPBkkESceWbT5XBezL
yaYIK094AGquYRMIRIp5zlpalm8m7snBZEFvUIuNbaAGBiuEEu+nvDxET2HbVuyqkwqlBTsMVh7p
DF7HrFSwjD1hdlCoKHQvjZ8iwD+jY45Azm4r+2y4iCcfDE9esc5EGTzSR0NKK5sCLa1DPTVtoAhL
tFWA5ntMLkL6gFAAhGey/JDlnE0t+uDg3F2gsRe8Weu5uYc+NL7YA9HPBL6hWpnx9xIrs3xEKroT
QyG8MfgMHwblQqQ70otD0Jq8MOHddRK2kNDNCWD57/RmtGri89t10HDqqXrhpo3cMWK+6HoCHYcg
0FxOyDBGBOYNRg4y8xu1+/1nVgiRRodfbHHXUDxkwIyIfrNmS3WA24+kBQ90g2sHRHO3A9EROVfL
NpZmuvYZFvjz9PavZjrd6/paYe6VYQbr9HwwizbTP5lnc3du5KFVGFPrchgQ7l36frQFFX7ShwLt
8Im9UTrcjcEgV5j9cQJnNwHaw3Gg3Hji1oDFvWgrgmkm/Iphq9MevxMS+YkMiUNyf4PbCOU/VWWB
Htv52lDyMYxcmngYbuzoT44pFYhL3/Ua8gE3F8KWplBqbkctb2Cwe73n886uJYFUH7X3mwzAZk+i
fGWAcvbCdqqRR3xMUhbVCEHtUdQbZlxVw6gtESYU19tauC5btEZlcjUhiR8VSecmilt5oO0UMJL9
f94FTkjPB8TVmbye529j6Glo43VfaR1xn5eOHZ18TOytdJ0cb9DUGio/GzqJfFp6i5sLbjsaoQgM
T5rL3uotgbkidEL+rA3wNA0cJ+IYJpFd+HLYVtnccyc/UxVN3EVtncqd1gAf39DjkAcMn9qolaxg
vK6a70OtV8XlYA235fSMyhJhItPQCDDDTs8s31XBYKMRT0++6uKfz7XLBzzdFnRPo6IN8pD9VgIN
8I5MSRbqwEWmEOicXtjmRG1hYdNSq7LZdqOmKe7J8DATSUFIrQFetQqZcIV/2V9UqAHbCsdDxal7
Bcs4W4sPATzqswHQyAzooJbSsDkITbbSzRt9wTwpi/5RCKXh6db/+6jIr9k9LysfVOz1ZBRLv23G
n2cN/M7aOB3scJRALy1nNkmNR6Z8DqCW/ZzG5q4ki8NJGfhBJno7xl8Mhp7hIv8zgGhumYACLcIp
ZOvePpHFjlLae7UncDra1jo8hBsXZ1VwkoMcuAuPZgGVzHA4ipPabr95kuSYALVDKX+db9cvQN2j
ou5kMBan9qXSqEmp12V7S/w3WbiyPlKxSLlSpZ5irI1QWsx25ATQ94VatoGJJDmFMxXHbDPdjwr/
dVWcFHfGnx6+aoraviBKyFNrG8moOgXHRnlZqxklYIZuNtn3dNy1u+yG+S6w7jqE1aqQF2EVPvJS
3Rp32nf0QQp4N5tHaiOHxtNiPx6aQI/abLWSjoMiK2Bj6+O3TMvlXKLwgPVariHWkwuzWWEcI3LK
Htswplwd0qDPnrpb98K835NmfTyPb6wTN3eiDga7aEBtLCX7vzcMYr6DpMh0DaX/PWuIs1LfCNtX
CahXOUxFfGVttu9FkI95W1/eIixJxFFmu2IMW+zPMzMGfrH+sYThpM0DJzeMFZbK1MIMP6KGrEDO
i59is3tOPsAb7ZdG2Qj6CR7Qsd4aqiEyKoHdtqxyS85kfIZtphlaP52NP51VQDyD6S0UjtXvjsFY
k7sODIZ7xuxqwSgMtjfT6Y+0S7zeRTdU7rT8o883nJhhKflcYPI5234Nd/nwS+gZ2hYn9VGvoDiM
mu1YY9GzzvxKpyE9w2xXU6YkyhfjB+uOkeZyIayz3GF0JOTIl3e+wgHWBRUodQUkrg02mqW2i4WE
REOXDud+8ADH3hWOt+MYZt0eupaVxi9OvBL2RKGUUjz/nQv9AZIQVhALhRZ+hBDWCUfzLhiz/OmD
ugR9kkw8NkwzvGgmkBZNLmSDm2cIl75O6N1CS/HD5/XRhHQ7ivCvWJkT1QO8GHBxKT7fpukDQgd8
9J1u6/vqGo8ueNsh7iwmf0xRym/3EILkCra9vADXl2nnWDCZWA3mnepSChw+yQLe2uxvdhWpf4Fn
vGuBfV6HzUzpoQFpIOjc/Z5M+71++dFPC96oe02se39irapg1EiCnL3UeEpTyLF0L2T7CeOuR075
nUdGt1wR+3kcg2i1lahVVChrsAoYiI79hkIEF4/BLhDZGJLa5KF+IPa75LMR42fqCDC7eNBRCBll
eDZUajZbtKns52VKVl/5LSlzTrvx696ipVhRTkrhaIlyImMYNty/LiOyioEUXTz7sHfjfGDoa9YU
bewqmgRkYTixW0kOFchTnEbTeMdKHFZzyYifmRfKMJiURKcfvcA4dYYJUFZ9fOVYLY2jv6A4FQlf
eUhLzHnSvTjO2WIjUMxxemowj0ia85dYHMf3Wf7SY8K7+y0Ybhxj6gvYlDPdPPCd9N97XjOHB9eM
vCRNnDv4keEJlb2JpZKN1hoIxuupjOh6Ryo6yKFGtILRhFLMAdPsbLFyOjYgyuxqYHdyO+W5nSEz
We8gthkw5tOvtkoK56Jt5prsdV30qxNiXu5tkO35nQV2t9qRwBEdy+v8T7GFQAFxOUGCcLXq/GYR
7SkLDBWx9AxxECZ/V8HDpV0DNHsArltns92iX3qqDl3MhadxxpTq78iAtBWf1vA6xvIuYqNQ8wrY
PkWNas17RynV0egBKmxlAA9WDb5xRi8VZrOaU6bDY88LkAL655PdvXbKCPBQnW3aQgqFeB607sbg
Hsrpx6Ul0W+pl8RI6xxC5+nxIB+8bv1lj5CBxSGp2l9PZmY6p0tZE7o789askXYK91hTSEXGbnmj
FsOvyCMLE2QodgP2ggCkBiDmJJYqfGxTRD6wvv9I6d7qFQvpwri4OFjhwQu5BYVEV+iG73zEp/xm
0LuJFmLCooNXwAQn85YSCXxRuXN8Uy8ux0z0+kcp5yZ9RxZ1ONYVS7rZy7gdnS+eMdzUU/6jxCkv
xXQd4bBOItslx0t/J1NHeiC4ZjfRlvss7LFdyX0ACZidGFkOSNDBQvK2YllHwhYAOahP3ppvynej
cV9BdiTPlYfydBytq5z2m1oz3g9vQxG8n8TkqLFlkU0WrNFEmrazHXw2nNYAkGNlxKkEMyGMum+d
isvQ52eKtqNRbt6H/aHZGMroD2djuuKn/AMapzjwSJiDs1BaxQKU7p9ooawOo/+DOT8PuFKDGs8O
SVdddM+GiHoqBxqwJZq5SBSiLY2DkwAxbe2K0WhQL+mufnaI+CdzUFEsGwFwO/FehTvOeZYA/y9j
8FhuNG683gXOo1gEVPPxuN8xsTgSWShBX6QxtOwH57kFWdRZY7TD/iVSB2BcUb4854BjaJsOEJH1
l/2AaB4/+bzeioEXD3i4X+dhcv0w//2qkjYfB1mPrKeSvihqqwZQxwrDQp4rkgzzWBnefmkNKe/6
AmEs74eFQmagyeBthhk65mu0q7Z9NLxYFGcxsQgc+zYjsDCQF4ppsCKy/NKVH1FRylBF7vRcV050
TgGATZ8RM/lhxVzTMtNL1TcZy3NPh2lgv1esMhPXbPggf6tJxi9qBR8mrSwcjxVv6b1SIIj4Ta+x
Kjv3knyHe9sbzmMXDkAZSieV33lPtAhRQUNogA4FITLOver7xChRb2Y7R21PACN3D9MFJPk3VAyg
DnrhfPFMOsNcNAkEq11Pu82myMlFHuZoOVn2GnPDcuMheyi27jsZhyOE0UjmLhxF6YeNRt0bbF5r
Rx+DsxX598imXJH81OGQkoUHpW3ml+8ThJnSXblnkZrgJqTdtBFQgNSaGDO/8QeZk8mCIjs7zN5j
PtEPXtgO15PTMuC3MzepFxBUXByzHcIwk6fRbYw1mDKvbta0j+mxfp1KeZIGKvXa8SoEgP9cCCcl
v8jSbIwRxrFNdYakcHgwv7dSGjc8IHfm/yMP1amq+dPlTtf7sS8jyuWWMTesCOXlxd/xdMmpUqYz
Sa9bovhAi2StKlAK3mT/4UK7TbfIa5gkLHhMsNvgzi6YybPVqP0n9SkAgzOAw9StFmdSsPioIoqu
KfRufnyfgM2EGAhQAQ4YgRplADCldwYCq+w/LdZYVNqavX7p/yIdkILoTN9AfCumbJreE2WehzY9
WvSSINhx+60m07RYv53D0UPAyNcjJrHWA+cr2T4VUwaqEU9agb7CI6ifB2uIxD3Kx5aJOgfgrcW+
pw+GW0waJrBDxlt2fmLkyb2d5oWOPkbp
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
