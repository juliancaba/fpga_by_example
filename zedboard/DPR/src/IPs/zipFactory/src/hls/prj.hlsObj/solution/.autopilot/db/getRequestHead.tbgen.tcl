set moduleName getRequestHead
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {getRequestHead}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_V int 32 regular {fifo 0 volatile }  }
	{ header_objectID int 8 regular {pointer 1} {global 1}  }
	{ header_methodID int 8 regular {pointer 1} {global 1}  }
	{ header_cb int 16 regular {pointer 1} {global 1}  }
	{ header_size int 16 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "header_objectID", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "header_methodID", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "header_cb", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "header_size", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_V_dout sc_in sc_lv 32 signal 0 } 
	{ src_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_V_read sc_out sc_logic 1 signal 0 } 
	{ header_objectID sc_out sc_lv 8 signal 1 } 
	{ header_objectID_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ header_methodID sc_out sc_lv 8 signal 2 } 
	{ header_methodID_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ header_cb sc_out sc_lv 16 signal 3 } 
	{ header_cb_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ header_size sc_out sc_lv 16 signal 4 } 
	{ header_size_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_V", "role": "dout" }} , 
 	{ "name": "src_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V", "role": "empty_n" }} , 
 	{ "name": "src_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V", "role": "read" }} , 
 	{ "name": "header_objectID", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "header_objectID", "role": "default" }} , 
 	{ "name": "header_objectID_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "header_objectID", "role": "ap_vld" }} , 
 	{ "name": "header_methodID", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "header_methodID", "role": "default" }} , 
 	{ "name": "header_methodID_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "header_methodID", "role": "ap_vld" }} , 
 	{ "name": "header_cb", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "header_cb", "role": "default" }} , 
 	{ "name": "header_cb_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "header_cb", "role": "ap_vld" }} , 
 	{ "name": "header_size", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "header_size", "role": "default" }} , 
 	{ "name": "header_size_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "header_size", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.words32_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getRequestHead {
		src_V {Type I LastRead 1 FirstWrite -1}
		header_objectID {Type O LastRead -1 FirstWrite 2}
		header_methodID {Type O LastRead -1 FirstWrite 2}
		header_cb {Type O LastRead -1 FirstWrite 2}
		header_size {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_V { ap_fifo {  { src_V_dout fifo_data 0 32 }  { src_V_empty_n fifo_status 0 1 }  { src_V_read fifo_update 1 1 } } }
	header_objectID { ap_vld {  { header_objectID out_data 1 8 }  { header_objectID_ap_vld out_vld 1 1 } } }
	header_methodID { ap_vld {  { header_methodID out_data 1 8 }  { header_methodID_ap_vld out_vld 1 1 } } }
	header_cb { ap_vld {  { header_cb out_data 1 16 }  { header_cb_ap_vld out_vld 1 1 } } }
	header_size { ap_vld {  { header_size out_data 1 16 }  { header_size_ap_vld out_vld 1 1 } } }
}
