############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top example
add_files example.cpp
add_files -tb example_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-2}
create_clock -period 75MHz -name default
config_compile -dump_cfg
source "./proj/solution1/directives.tcl"
csim_design -profile
csynth_design -dump_post_cfg
cosim_design
export_design -format ip_catalog
