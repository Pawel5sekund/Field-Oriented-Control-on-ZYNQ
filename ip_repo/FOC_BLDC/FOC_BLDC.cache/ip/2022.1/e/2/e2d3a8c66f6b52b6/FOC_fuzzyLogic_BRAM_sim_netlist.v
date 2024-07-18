// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jul 12 22:27:55 2024
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
