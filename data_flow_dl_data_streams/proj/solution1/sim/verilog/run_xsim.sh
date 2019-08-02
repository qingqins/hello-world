
/proj/xbuilds/HEAD_daily_latest/installs/lin64/Vivado/HEAD/bin/xelab xil_defaultlib.apatb_example_top glbl -prj example.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/proj/xbuilds/HEAD_daily_latest/installs/lin64/Vivado/HEAD/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s example 
/proj/xbuilds/HEAD_daily_latest/installs/lin64/Vivado/HEAD/bin/xsim --noieeewarnings example -tclbatch example.tcl

