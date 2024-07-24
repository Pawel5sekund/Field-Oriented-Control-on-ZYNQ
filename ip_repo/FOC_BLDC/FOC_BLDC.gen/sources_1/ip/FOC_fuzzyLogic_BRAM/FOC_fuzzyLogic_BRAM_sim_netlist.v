// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Jul 21 12:12:14 2024
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /mnt/d/Xilinx/Projects/Vivado/Field-Oriented-Control-on-ZYNQ/ip_repo/FOC_BLDC/FOC_BLDC.gen/sources_1/ip/FOC_fuzzyLogic_BRAM/FOC_fuzzyLogic_BRAM_sim_netlist.v
// Design      : FOC_fuzzyLogic_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FOC_fuzzyLogic_BRAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module FOC_fuzzyLogic_BRAM
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [17:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [17:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [17:0]douta;
  wire [17:0]doutb;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.414399 mW" *) 
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
  (* C_INIT_FILE = "FOC_fuzzyLogic_BRAM.mem" *) 
  (* C_INIT_FILE_NAME = "FOC_fuzzyLogic_BRAM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  FOC_fuzzyLogic_BRAM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44000)
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
