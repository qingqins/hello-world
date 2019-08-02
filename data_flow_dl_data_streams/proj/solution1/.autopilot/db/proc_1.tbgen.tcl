set moduleName proc_1
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
set C_modelName {proc_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_channel1 int 32 regular {fifo 1 volatile }  }
	{ data_channel2 int 32 regular {fifo 1 volatile }  }
	{ A_V_data_V int 32 regular {axi_s 0 volatile  { A Data } }  }
	{ A_V_keep_V int 4 regular {axi_s 0 volatile  { A Keep } }  }
	{ A_V_strb_V int 4 regular {axi_s 0 volatile  { A Strb } }  }
	{ A_V_user_V int 2 regular {axi_s 0 volatile  { A User } }  }
	{ A_V_last_V int 1 regular {axi_s 0 volatile  { A Last } }  }
	{ A_V_id_V int 5 regular {axi_s 0 volatile  { A ID } }  }
	{ A_V_dest_V int 6 regular {axi_s 0 volatile  { A Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_channel1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_channel2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "A_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ data_channel1_din sc_out sc_lv 32 signal 0 } 
	{ data_channel1_full_n sc_in sc_logic 1 signal 0 } 
	{ data_channel1_write sc_out sc_logic 1 signal 0 } 
	{ data_channel2_din sc_out sc_lv 32 signal 1 } 
	{ data_channel2_full_n sc_in sc_logic 1 signal 1 } 
	{ data_channel2_write sc_out sc_logic 1 signal 1 } 
	{ A_TDATA sc_in sc_lv 32 signal 2 } 
	{ A_TVALID sc_in sc_logic 1 invld 8 } 
	{ A_TREADY sc_out sc_logic 1 inacc 8 } 
	{ A_TKEEP sc_in sc_lv 4 signal 3 } 
	{ A_TSTRB sc_in sc_lv 4 signal 4 } 
	{ A_TUSER sc_in sc_lv 2 signal 5 } 
	{ A_TLAST sc_in sc_lv 1 signal 6 } 
	{ A_TID sc_in sc_lv 5 signal 7 } 
	{ A_TDEST sc_in sc_lv 6 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "data_channel1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel1", "role": "din" }} , 
 	{ "name": "data_channel1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel1", "role": "full_n" }} , 
 	{ "name": "data_channel1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel1", "role": "write" }} , 
 	{ "name": "data_channel2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel2", "role": "din" }} , 
 	{ "name": "data_channel2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel2", "role": "full_n" }} , 
 	{ "name": "data_channel2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel2", "role": "write" }} , 
 	{ "name": "A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_V_data_V", "role": "default" }} , 
 	{ "name": "A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A_V_dest_V", "role": "default" }} , 
 	{ "name": "A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "A_V_dest_V", "role": "default" }} , 
 	{ "name": "A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V_keep_V", "role": "default" }} , 
 	{ "name": "A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V_strb_V", "role": "default" }} , 
 	{ "name": "A_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_V_user_V", "role": "default" }} , 
 	{ "name": "A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "A_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "A_V_id_V", "role": "default" }} , 
 	{ "name": "A_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "A_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "proc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_channel1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_user_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_id_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	proc_1 {
		data_channel1 {Type O LastRead -1 FirstWrite 2}
		data_channel2 {Type O LastRead -1 FirstWrite 4}
		A_V_data_V {Type I LastRead 1 FirstWrite -1}
		A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		A_V_user_V {Type I LastRead 1 FirstWrite -1}
		A_V_last_V {Type I LastRead 1 FirstWrite -1}
		A_V_id_V {Type I LastRead 1 FirstWrite -1}
		A_V_dest_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "24", "Max" : "24"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	data_channel1 { ap_fifo {  { data_channel1_din fifo_data 1 32 }  { data_channel1_full_n fifo_status 0 1 }  { data_channel1_write fifo_update 1 1 } } }
	data_channel2 { ap_fifo {  { data_channel2_din fifo_data 1 32 }  { data_channel2_full_n fifo_status 0 1 }  { data_channel2_write fifo_update 1 1 } } }
	A_V_data_V { axis {  { A_TDATA in_data 0 32 } } }
	A_V_keep_V { axis {  { A_TKEEP in_data 0 4 } } }
	A_V_strb_V { axis {  { A_TSTRB in_data 0 4 } } }
	A_V_user_V { axis {  { A_TUSER in_data 0 2 } } }
	A_V_last_V { axis {  { A_TLAST in_data 0 1 } } }
	A_V_id_V { axis {  { A_TID in_data 0 5 } } }
	A_V_dest_V { axis {  { A_TVALID in_vld 0 1 }  { A_TREADY in_acc 1 1 }  { A_TDEST in_data 0 6 } } }
}
