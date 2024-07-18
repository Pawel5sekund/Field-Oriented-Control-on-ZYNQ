// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jul 12 22:27:59 2024
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
  (* C_READ_DEPTH_A = "4095" *) 
  (* C_READ_DEPTH_B = "4095" *) 
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
  (* C_WRITE_DEPTH_A = "4095" *) 
  (* C_WRITE_DEPTH_B = "4095" *) 
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
