set moduleName example_label
set isTopModule 1
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
set C_modelName {example_label}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {bram 50 { 1 3 } 1 1 }  }
	{ B int 32 regular {bram 50 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "B", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "B","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_Addr_A sc_out sc_lv 32 signal 0 } 
	{ A_EN_A sc_out sc_logic 1 signal 0 } 
	{ A_WEN_A sc_out sc_lv 4 signal 0 } 
	{ A_Din_A sc_out sc_lv 32 signal 0 } 
	{ A_Dout_A sc_in sc_lv 32 signal 0 } 
	{ A_Clk_A sc_out sc_logic 1 signal 0 } 
	{ A_Rst_A sc_out sc_logic 1 signal 0 } 
	{ B_Addr_A sc_out sc_lv 32 signal 1 } 
	{ B_EN_A sc_out sc_logic 1 signal 1 } 
	{ B_WEN_A sc_out sc_lv 4 signal 1 } 
	{ B_Din_A sc_out sc_lv 32 signal 1 } 
	{ B_Dout_A sc_in sc_lv 32 signal 1 } 
	{ B_Clk_A sc_out sc_logic 1 signal 1 } 
	{ B_Rst_A sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Addr_A" }} , 
 	{ "name": "A_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "EN_A" }} , 
 	{ "name": "A_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "WEN_A" }} , 
 	{ "name": "A_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Din_A" }} , 
 	{ "name": "A_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Dout_A" }} , 
 	{ "name": "A_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "Clk_A" }} , 
 	{ "name": "A_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "Rst_A" }} , 
 	{ "name": "B_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Addr_A" }} , 
 	{ "name": "B_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "EN_A" }} , 
 	{ "name": "B_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "WEN_A" }} , 
 	{ "name": "B_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Din_A" }} , 
 	{ "name": "B_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Dout_A" }} , 
 	{ "name": "B_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "Clk_A" }} , 
 	{ "name": "B_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "example_label",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "B", "Type" : "Bram", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	example_label {
		A {Type I LastRead 1 FirstWrite -1}
		B {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "52", "Max" : "52"}
	, {"Name" : "Interval", "Min" : "53", "Max" : "53"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { bram {  { A_Addr_A MemPortADDR2 1 32 }  { A_EN_A MemPortCE2 1 1 }  { A_WEN_A MemPortWE2 1 4 }  { A_Din_A MemPortDIN2 1 32 }  { A_Dout_A MemPortDOUT2 0 32 }  { A_Clk_A mem_clk 1 1 }  { A_Rst_A mem_rst 1 1 } } }
	B { bram {  { B_Addr_A MemPortADDR2 1 32 }  { B_EN_A MemPortCE2 1 1 }  { B_WEN_A MemPortWE2 1 4 }  { B_Din_A MemPortDIN2 1 32 }  { B_Dout_A MemPortDOUT2 0 32 }  { B_Clk_A mem_clk 1 1 }  { B_Rst_A mem_rst 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
