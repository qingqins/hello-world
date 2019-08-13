############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_loop_label
set_top example_label
add_files example.cpp
add_files -tb example_test.cpp
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 75MHz -name default
#source "./proj_loop_label/solution1/directives.tcl"
csim_design
csynth_design -dump_post_cfg
cosim_design
export_design -format ip_catalog
