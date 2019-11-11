set moduleName Block_proc11
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Block__proc11}
set C_modelType { void 0 }
set C_modelArgList {
	{ din_V int 32 regular {fifo 0 volatile }  }
	{ dout_V int 32 regular {fifo 1 volatile }  }
	{ prDone_V int 1 regular {fifo 0 volatile }  }
	{ pr_V_addr int 32 regular {fifo 1 volatile }  }
	{ pr_V_areaID int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dout_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prDone_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pr_V_addr", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pr_V_areaID", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ din_V_dout sc_in sc_lv 32 signal 0 } 
	{ din_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ din_V_read sc_out sc_logic 1 signal 0 } 
	{ dout_V_din sc_out sc_lv 32 signal 1 } 
	{ dout_V_full_n sc_in sc_logic 1 signal 1 } 
	{ dout_V_write sc_out sc_logic 1 signal 1 } 
	{ prDone_V_dout sc_in sc_logic 1 signal 2 } 
	{ prDone_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ prDone_V_read sc_out sc_logic 1 signal 2 } 
	{ pr_V_addr_din sc_out sc_lv 32 signal 3 } 
	{ pr_V_addr_full_n sc_in sc_logic 1 signal 3 } 
	{ pr_V_addr_write sc_out sc_logic 1 signal 3 } 
	{ pr_V_areaID_din sc_out sc_lv 16 signal 4 } 
	{ pr_V_areaID_full_n sc_in sc_logic 1 signal 4 } 
	{ pr_V_areaID_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "din_V", "role": "dout" }} , 
 	{ "name": "din_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_V", "role": "empty_n" }} , 
 	{ "name": "din_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_V", "role": "read" }} , 
 	{ "name": "dout_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_V", "role": "din" }} , 
 	{ "name": "dout_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "full_n" }} , 
 	{ "name": "dout_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_V", "role": "write" }} , 
 	{ "name": "prDone_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prDone_V", "role": "dout" }} , 
 	{ "name": "prDone_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prDone_V", "role": "empty_n" }} , 
 	{ "name": "prDone_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prDone_V", "role": "read" }} , 
 	{ "name": "pr_V_addr_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pr_V_addr", "role": "din" }} , 
 	{ "name": "pr_V_addr_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_addr", "role": "full_n" }} , 
 	{ "name": "pr_V_addr_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_addr", "role": "write" }} , 
 	{ "name": "pr_V_areaID_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pr_V_areaID", "role": "din" }} , 
 	{ "name": "pr_V_areaID_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_areaID", "role": "full_n" }} , 
 	{ "name": "pr_V_areaID_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pr_V_areaID", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5"],
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
					{"ID" : "2", "SubInstance" : "grp_forward_fu_197", "Port" : "src_V"},
					{"ID" : "3", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "src_V"}]},
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
					{"ID" : "3", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_objectID"}]},
			{"Name" : "header_methodID", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_methodID"}]},
			{"Name" : "header_cb", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_cb"}]},
			{"Name" : "header_size", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_getRequestHead_fu_204", "Port" : "header_size"}]},
			{"Name" : "p_status", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bufferRESP_V", "Type" : "Fifo", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.words32_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_197", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getRequestHead_fu_204", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getRequestHead_fu_204.words32_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bufferRESP_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	prDone_V { ap_fifo {  { prDone_V_dout fifo_data 0 1 }  { prDone_V_empty_n fifo_status 0 1 }  { prDone_V_read fifo_update 1 1 } } }
	pr_V_addr { ap_fifo {  { pr_V_addr_din fifo_data 1 32 }  { pr_V_addr_full_n fifo_status 0 1 }  { pr_V_addr_write fifo_update 1 1 } } }
	pr_V_areaID { ap_fifo {  { pr_V_areaID_din fifo_data 1 16 }  { pr_V_areaID_full_n fifo_status 0 1 }  { pr_V_areaID_write fifo_update 1 1 } } }
}
