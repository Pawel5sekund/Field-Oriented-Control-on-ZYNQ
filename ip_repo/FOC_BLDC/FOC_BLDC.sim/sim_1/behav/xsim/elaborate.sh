#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun Oct 15 22:02:56 CEST 2023
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug all --rangecheck --relax --mt 8 -L xil_defaultlib -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L dsp_macro_v1_0_2 -L FOC_lib -L secureip -L xpm --snapshot PID_testbench_behav FOC_lib.PID_testbench -log elaborate.log"
xelab --incr --debug all --rangecheck --relax --mt 8 -L xil_defaultlib -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L dsp_macro_v1_0_2 -L FOC_lib -L secureip -L xpm --snapshot PID_testbench_behav FOC_lib.PID_testbench -log elaborate.log

