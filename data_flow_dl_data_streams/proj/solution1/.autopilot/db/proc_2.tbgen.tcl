set moduleName proc_2
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {proc_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_channel1 int 32 regular {fifo 0 volatile }  }
	{ data_channel2 int 32 regular {fifo 0 volatile }  }
	{ B_V_data_V int 32 regular {axi_s 1 volatile  { B Data } }  }
	{ B_V_keep_V int 4 regular {axi_s 1 volatile  { B Keep } }  }
	{ B_V_strb_V int 4 regular {axi_s 1 volatile  { B Strb } }  }
	{ B_V_user_V int 2 regular {axi_s 1 volatile  { B User } }  }
	{ B_V_last_V int 1 regular {axi_s 1 volatile  { B Last } }  }
	{ B_V_id_V int 5 regular {axi_s 1 volatile  { B ID } }  }
	{ B_V_dest_V int 6 regular {axi_s 1 volatile  { B Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_channel1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_channel2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_channel1_dout sc_in sc_lv 32 signal 0 } 
	{ data_channel1_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_channel1_read sc_out sc_logic 1 signal 0 } 
	{ data_channel2_dout sc_in sc_lv 32 signal 1 } 
	{ data_channel2_empty_n sc_in sc_logic 1 signal 1 } 
	{ data_channel2_read sc_out sc_logic 1 signal 1 } 
	{ B_TDATA sc_out sc_lv 32 signal 2 } 
	{ B_TVALID sc_out sc_logic 1 outvld 8 } 
	{ B_TREADY sc_in sc_logic 1 outacc 8 } 
	{ B_TKEEP sc_out sc_lv 4 signal 3 } 
	{ B_TSTRB sc_out sc_lv 4 signal 4 } 
	{ B_TUSER sc_out sc_lv 2 signal 5 } 
	{ B_TLAST sc_out sc_lv 1 signal 6 } 
	{ B_TID sc_out sc_lv 5 signal 7 } 
	{ B_TDEST sc_out sc_lv 6 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_channel1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel1", "role": "dout" }} , 
 	{ "name": "data_channel1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel1", "role": "empty_n" }} , 
 	{ "name": "data_channel1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel1", "role": "read" }} , 
 	{ "name": "data_channel2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel2", "role": "dout" }} , 
 	{ "name": "data_channel2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel2", "role": "empty_n" }} , 
 	{ "name": "data_channel2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel2", "role": "read" }} , 
 	{ "name": "B_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_V_data_V", "role": "default" }} , 
 	{ "name": "B_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_V_dest_V", "role": "default" }} , 
 	{ "name": "B_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "B_V_dest_V", "role": "default" }} , 
 	{ "name": "B_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V_keep_V", "role": "default" }} , 
 	{ "name": "B_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V_strb_V", "role": "default" }} , 
 	{ "name": "B_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_V_user_V", "role": "default" }} , 
 	{ "name": "B_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_V_last_V", "role": "default" }} , 
 	{ "name": "B_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "B_V_id_V", "role": "default" }} , 
 	{ "name": "B_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "B_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "proc_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_channel1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "B_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_user_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_id_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	proc_2 {
		data_channel1 {Type I LastRead 2 FirstWrite -1}
		data_channel2 {Type I LastRead 2 FirstWrite -1}
		B_V_data_V {Type O LastRead -1 FirstWrite 2}
		B_V_keep_V {Type O LastRead -1 FirstWrite 2}
		B_V_strb_V {Type O LastRead -1 FirstWrite 2}
		B_V_user_V {Type O LastRead -1 FirstWrite 2}
		B_V_last_V {Type O LastRead -1 FirstWrite 2}
		B_V_id_V {Type O LastRead -1 FirstWrite 2}
		B_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_channel1 { ap_fifo {  { data_channel1_dout fifo_data 0 32 }  { data_channel1_empty_n fifo_status 0 1 }  { data_channel1_read fifo_update 1 1 } } }
	data_channel2 { ap_fifo {  { data_channel2_dout fifo_data 0 32 }  { data_channel2_empty_n fifo_status 0 1 }  { data_channel2_read fifo_update 1 1 } } }
	B_V_data_V { axis {  { B_TDATA out_data 1 32 } } }
	B_V_keep_V { axis {  { B_TKEEP out_data 1 4 } } }
	B_V_strb_V { axis {  { B_TSTRB out_data 1 4 } } }
	B_V_user_V { axis {  { B_TUSER out_data 1 2 } } }
	B_V_last_V { axis {  { B_TLAST out_data 1 1 } } }
	B_V_id_V { axis {  { B_TID out_data 1 5 } } }
	B_V_dest_V { axis {  { B_TVALID out_vld 1 1 }  { B_TREADY out_acc 0 1 }  { B_TDEST out_data 1 6 } } }
}
