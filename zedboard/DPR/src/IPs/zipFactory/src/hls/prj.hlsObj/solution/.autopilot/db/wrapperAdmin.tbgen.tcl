set C_TypeInfoList {{ 
"wrapperAdmin" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"din": [[],"0"] }, {"dout": [[],"0"] }, {"pr": [[],"1"] }, {"prDone": [[],"2"] }],[],""], 
"1": [ "stream<PRbus>", {"hls_type": {"stream": [[[[],"3"]],"4"]}}], 
"3": [ "PRbus", {"struct": [[],[],[{ "addr": [[],  {"scalar": "unsigned int"}]},{ "areaID": [[],  {"scalar": "unsigned short"}]}],""]}], 
"0": [ "stream<unsigned int>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned int"}]],"4"]}}], 
"2": [ "stream<bool>", {"hls_type": {"stream": [[[[], {"scalar": "bool"}]],"4"]}}],
"4": ["hls", ""]
}}
set moduleName wrapperAdmin
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {wrapperAdmin}
set C_modelType { void 0 }
set C_modelArgList {
	{ din_V int 32 regular {fifo 0 volatile }  }
	{ dout_V int 32 regular {fifo 1 volatile }  }
	{ pr_V_addr int 32 regular {fifo 1 volatile }  }
	{ pr_V_areaID int 16 regular {fifo 1 volatile }  }
	{ prDone_V int 1 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "din.V","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dout.V","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pr_V_addr", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pr.V.addr","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "pr_V_areaID", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "pr.V.areaID","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "prDone_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "prDone.V","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ din_V_dout sc_in sc_lv 32 signal 0 } 
	{ din_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ din_V_read sc_out sc_logic 1 signal 0 } 
	{ dout_V_din sc_out sc_lv 32 signal 1 } 
	{ dout_V_full_n sc_in sc_logic 1 signal 1 } 
	{ dout_V_write sc_out sc_logic 1 signal 1 } 
	{ pr_V_addr_din sc_out sc_lv 32 signal 2 } 
	{ pr_V_addr_full_n sc_in sc_logic 1 signal 2 } 
	{ pr_V_addr_write sc_out sc_logic 1 signal 2 } 
	{ pr_V_areaID_din sc_out sc_lv 16 signal 3 } 
	{ pr_V_areaID_full_n sc_in sc_logic 1 signal 3 } 
	{ pr_V_areaID_write sc_out sc_logic 1 signal 3 } 
	{ prDone_V_dout sc_in sc_logic 1 signal 4 } 
	{ prDone_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ prDone_V_read sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "din_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "din_V", "role": "dout" }} , 
 	{ "name": "din_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_V", "role": "empty_n" }} , 
 	{ "name": "din_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_V", "role": "read" }} , 
 	{ "name": "dout_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_V", "role": "din" }} , 
 	{ "name": "dout_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "full_n" }} , 
 	{ "name": "dout_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "write" }} , 
 	{ "name": "pr_V_addr_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pr_V_addr", "role": "din" }} , 
 	{ "name": "pr_V_addr_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_addr", "role": "full_n" }} , 
 	{ "name": "pr_V_addr_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_addr", "role": "write" }} , 
 	{ "name": "pr_V_areaID_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pr_V_areaID", "role": "din" }} , 
 	{ "name": "pr_V_areaID_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_areaID", "role": "full_n" }} , 
 	{ "name": "pr_V_areaID_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_areaID", "role": "write" }} , 
 	{ "name": "prDone_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prDone_V", "role": "dout" }} , 
 	{ "name": "prDone_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prDone_V", "role": "empty_n" }} , 
 	{ "name": "prDone_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prDone_V", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "wrapperAdmin",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc11_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc11_U0"}],
		"Port" : [
			{"Name" : "din_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "din_V"}]},
			{"Name" : "dout_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "dout_V"}]},
			{"Name" : "pr_V_addr", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "pr_V_addr"}]},
			{"Name" : "pr_V_areaID", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "pr_V_areaID"}]},
			{"Name" : "prDone_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "prDone_V"}]},
			{"Name" : "header_objectID", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "header_objectID"}]},
			{"Name" : "header_methodID", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "header_methodID"}]},
			{"Name" : "header_cb", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "header_cb"}]},
			{"Name" : "header_size", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "header_size"}]},
			{"Name" : "p_status", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "p_status"}]},
			{"Name" : "bufferRESP_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc11_U0", "Port" : "bufferRESP_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc11_U0", "Parent" : "0", "Child" : ["2", "3", "4", "6"],
		"CDFG" : "Block_proc11",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fu_197"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fu_197"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_getRequestHead_fu_204"}],
		"Port" : [
			{"Name" : "din_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_forward_fu_197", "Port" : "src_V"},
					{"ID" : "4", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "src_V"}]},
			{"Name" : "dout_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "prDone_V", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "pr_V_addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pr_V_addr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pr_V_areaID", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pr_V_areaID_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_objectID", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_objectID"}]},
			{"Name" : "header_methodID", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_methodID"}]},
			{"Name" : "header_cb", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_cb"}]},
			{"Name" : "header_size", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_size"}]},
			{"Name" : "p_status", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bufferRESP_V", "Type" : "Fifo", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc11_U0.words32_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc11_U0.grp_forward_fu_197", "Parent" : "1",
		"CDFG" : "forward",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "src_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc11_U0.grp_getRequestHead_fu_204", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "getRequestHead",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "src_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "header_objectID", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "header_methodID", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "header_cb", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "header_size", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Block_proc11_U0.grp_getRequestHead_fu_204.words32_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc11_U0.bufferRESP_V_fifo_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	wrapperAdmin {
		din_V {Type I LastRead 3 FirstWrite -1}
		dout_V {Type O LastRead -1 FirstWrite 2}
		pr_V_addr {Type O LastRead -1 FirstWrite 4}
		pr_V_areaID {Type O LastRead -1 FirstWrite 4}
		prDone_V {Type I LastRead 2 FirstWrite -1}
		header_objectID {Type IO LastRead -1 FirstWrite -1}
		header_methodID {Type IO LastRead -1 FirstWrite -1}
		header_cb {Type IO LastRead -1 FirstWrite -1}
		header_size {Type IO LastRead -1 FirstWrite -1}
		p_status {Type IO LastRead -1 FirstWrite -1}
		bufferRESP_V {Type IO LastRead -1 FirstWrite -1}}
	Block_proc11 {
		din_V {Type I LastRead 3 FirstWrite -1}
		dout_V {Type O LastRead -1 FirstWrite 2}
		prDone_V {Type I LastRead 2 FirstWrite -1}
		pr_V_addr {Type O LastRead -1 FirstWrite 4}
		pr_V_areaID {Type O LastRead -1 FirstWrite 4}
		header_objectID {Type IO LastRead -1 FirstWrite -1}
		header_methodID {Type IO LastRead -1 FirstWrite -1}
		header_cb {Type IO LastRead -1 FirstWrite -1}
		header_size {Type IO LastRead -1 FirstWrite -1}
		p_status {Type IO LastRead -1 FirstWrite -1}
		bufferRESP_V {Type IO LastRead -1 FirstWrite -1}}
	forward {
		src_V {Type I LastRead 1 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}
	getRequestHead {
		src_V {Type I LastRead 1 FirstWrite -1}
		header_objectID {Type O LastRead -1 FirstWrite 2}
		header_methodID {Type O LastRead -1 FirstWrite 2}
		header_cb {Type O LastRead -1 FirstWrite 2}
		header_size {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	din_V { ap_fifo {  { din_V_dout fifo_data 0 32 }  { din_V_empty_n fifo_status 0 1 }  { din_V_read fifo_update 1 1 } } }
	dout_V { ap_fifo {  { dout_V_din fifo_data 1 32 }  { dout_V_full_n fifo_status 0 1 }  { dout_V_write fifo_update 1 1 } } }
	pr_V_addr { ap_fifo {  { pr_V_addr_din fifo_data 1 32 }  { pr_V_addr_full_n fifo_status 0 1 }  { pr_V_addr_write fifo_update 1 1 } } }
	pr_V_areaID { ap_fifo {  { pr_V_areaID_din fifo_data 1 16 }  { pr_V_areaID_full_n fifo_status 0 1 }  { pr_V_areaID_write fifo_update 1 1 } } }
	prDone_V { ap_fifo {  { prDone_V_dout fifo_data 0 1 }  { prDone_V_empty_n fifo_status 0 1 }  { prDone_V_read fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	din_V { fifo_read 1 no_conditional }
	dout_V { fifo_write 1 no_conditional }
	pr_V_addr { fifo_write 1 no_conditional }
	pr_V_areaID { fifo_write 1 no_conditional }
	prDone_V { fifo_read 1 no_conditional }
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
