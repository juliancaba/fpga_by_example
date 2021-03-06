# Set the reference directory to where the script is
set ip_name fifo_zipFactory_v1
set SRCfolder src
if {[lindex $argv 0] == "2017_4"} {
    set SRCfiles [list factory_axis2pr_bridge.vhd fifo_zipFactory.vhd getRequestHead_wobkb.vhd wrapperAdmin.vhd Block_proc11.vhd factory_pr32.vhd forward.vhd factory_adminPR.vhd fifo_w32_d16_A.vhd getRequestHead.vhd unzip.vhd]
} elseif {[lindex $argv 0] == "2016_4"} {
    set SRCfiles [list Block_proc.vhd factory_adminPR.vhd getRequestHead.vhd Block_proc_buffercud.vhd factory_pr32.vhd getRequestHead_wobkb.vhd factory_axis2pr_bridge.vhd fifo_zipFactory.vhd unzip.vhd forward.vhd wrapperAdmin.vhd]
} elseif {[lindex $argv 0] == "2015_4"} {
    set SRCfiles [list FIFO_wrapperAdmin_Block_proc_bufferRESP_V.vhd wrapperAdmin_Block_proc.vhd wrapperAdmin_forward.vhd factory_pr32.vhd wrapperAdmin_getRequestHead.vhd factory_adminPR.vhd fifo_zipFactory.vhd wrapperAdmin_getRequestHead_words32.vhd unzip.vhd factory_axis2pr_bridge.vhd wrapperAdmin.vhd]
} else {
    error "Version not found"
}
set SIMfolder src
set SIMfiles [list ]
set part xc7z020clg484-1


set origin_dir [file dirname [info script]]
set prj_name tmp




# Create project
create_project $prj_name $origin_dir/$prj_name -part $part -force


# Set project properties
set obj [get_projects $prj_name]
if {[lindex $argv 0] == "2015_4"} {
    set_property "board_part" "xilinx.com:zc702:part0:0.9" $obj
} else {
    set_property "board_part"  "em.avnet.com:zed:part0:1.3" $obj
}
set_property "default_lib" "xil_defaultlib" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property SOURCE_SET sources_1 [get_filesets sim_1]


# Add source files
foreach it $SRCfiles {
    add_files -norecurse $origin_dir/$SRCfolder/$it
}


# Add sim files
foreach it $SIMfiles {
    add_files -fileset sim_1 -norecurse $origin_dir/$SIMfolder/$it
}


# Create Generated IPs
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name factory_fifo
set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Performance_Options {First_Word_Fall_Through} CONFIG.Input_Data_Width {32} CONFIG.Valid_Flag {true} CONFIG.Output_Data_Width {32} CONFIG.Full_Threshold_Assert_Value {1021} CONFIG.Full_Threshold_Negate_Value {1020}] [get_ips factory_fifo]

create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name factory_bufferBitstream
set_property -dict [list CONFIG.INTERFACE_TYPE {AXI_STREAM} CONFIG.Clock_Type_AXI {Independent_Clock} CONFIG.TDATA_NUM_BYTES {4} CONFIG.TUSER_WIDTH {0} CONFIG.Programmable_Full_Type_axis {Single_Programmable_Full_Threshold_Constant} CONFIG.Full_Threshold_Assert_Value_axis {950} CONFIG.TSTRB_WIDTH {4} CONFIG.TKEEP_WIDTH {4} CONFIG.FIFO_Implementation_wach {Independent_Clocks_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_wach {15} CONFIG.Empty_Threshold_Assert_Value_wach {13} CONFIG.FIFO_Implementation_wdch {Independent_Clocks_Block_RAM} CONFIG.Empty_Threshold_Assert_Value_wdch {1021} CONFIG.FIFO_Implementation_wrch {Independent_Clocks_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_wrch {15} CONFIG.Empty_Threshold_Assert_Value_wrch {13} CONFIG.FIFO_Implementation_rach {Independent_Clocks_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_rach {15} CONFIG.Empty_Threshold_Assert_Value_rach {13} CONFIG.FIFO_Implementation_rdch {Independent_Clocks_Block_RAM} CONFIG.Empty_Threshold_Assert_Value_rdch {1021} CONFIG.FIFO_Implementation_axis {Independent_Clocks_Block_RAM} CONFIG.Empty_Threshold_Assert_Value_axis {1021}] [get_ips factory_bufferBitstream]

# create_ip -name fifo_generator -vendor xilinx.com -library ip -version 12.0 -module_name factory_fifoDataUnzipped
# set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Performance_Options {First_Word_Fall_Through} CONFIG.Input_Data_Width {32} CONFIG.Valid_Flag {true} CONFIG.Output_Data_Width {32} CONFIG.Full_Threshold_Assert_Value {1021} CONFIG.Full_Threshold_Negate_Value {1020}] [get_ips factory_fifoDataUnzipped]


update_compile_order -fileset sources_1
update_compile_order -fileset sim_1


# Package
ipx::package_project -import_files -root_dir $origin_dir/$ip_name

set_property taxonomy /UserIP [ipx::current_core]
set_property vendor arco_group [ipx::current_core]
set_property vendor_display_name {ARCO Group} [ipx::current_core]
set_property company_url http://arco.esi.uclm.es [ipx::current_core]
set_property display_name $ip_name [ipx::current_core]
#set_property value ACTIVE_HIGH [ipx::get_bus_parameters POLARITY -of_objects [ipx::get_bus_interfaces EXT_signal_reset -of_objects [ipx::current_core]]]
set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]

# Update IP catalog
set_property ip_repo_paths $origin_dir/$ip_name [current_project]
update_ip_catalog


