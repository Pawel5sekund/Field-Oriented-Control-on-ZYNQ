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
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
hu2O850U9ahokIB2e7QBmkg+6ChDQnPV
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
