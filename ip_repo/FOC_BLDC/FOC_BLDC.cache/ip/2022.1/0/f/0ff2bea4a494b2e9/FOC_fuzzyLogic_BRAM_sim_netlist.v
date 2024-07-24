// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Jul 20 15:13:44 2024
// Host        : LAPTOP-PAWEL running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ FOC_fuzzyLogic_BRAM_sim_netlist.v
// Design      : FOC_fuzzyLogic_BRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FOC_fuzzyLogic_BRAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44048)
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
