# Set the reference directory to where the script is
set ip_name axi_memory_read_driver_v1
set SRCfolder src
set SRCfiles [list axi_memory_read_driver.vhd thresholdCtrl.vhd axi_protocol_ctrl.vhd fifo2axis_bridge.vhd readTypes.vhd]
#set SRCfiles [list axi_memory_read_driver.vhd thresholdCtrl.vhd axi_protocol_ctrl.vhd readTypes.vhd]
set SIMfolder src
set SIMfiles [list ]
set part xc7z020clg484-1


set origin_dir [file dirname [info script]]
set prj_name tmp




# Create project
create_project $prj_name $origin_dir/$prj_name -part $part -force


# Set project properties
set obj [get_projects $prj_name]
#set_property "board_part" "xilinx.com:zc702:1.1" $obj
#set_property "board_part" "xilinx.com:zc702:part0:0.9" $obj
set_property "board_part" "em.avnet.com:zed:part0:1.2" $obj
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
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name dataBuffer
#set_property -dict [list CONFIG.Performance_Options {First_Word_Fall_Through} CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Input_Data_Width {64} CONFIG.Input_Depth {2048} CONFIG.Output_Data_Width {32} CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} CONFIG.Full_Threshold_Assert_Value {1900} CONFIG.Output_Depth {4096} CONFIG.Reset_Type {Asynchronous_Reset} CONFIG.Full_Flags_Reset_Value {1} CONFIG.Data_Count_Width {11} CONFIG.Write_Data_Count_Width {11} CONFIG.Read_Data_Count_Width {12} CONFIG.Full_Threshold_Negate_Value {1899} CONFIG.Valid_Flag {true}] [get_ips dataBuffer]

#set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Input_Data_Width {64} CONFIG.Output_Data_Width {32} CONFIG.Valid_Flag {true} CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} CONFIG.Full_Threshold_Assert_Value {934} CONFIG.Output_Depth {4096} CONFIG.Read_Data_Count_Width {12} CONFIG.Full_Threshold_Negate_Value {933}] [get_ips dataBuffer]
set_property -dict [list CONFIG.Performance_Options {First_Word_Fall_Through} CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Input_Data_Width {64} CONFIG.Output_Data_Width {32} CONFIG.Valid_Flag {true} CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} CONFIG.Full_Threshold_Assert_Value {934} CONFIG.Output_Depth {2048} CONFIG.Read_Data_Count_Width {11} CONFIG.Full_Threshold_Negate_Value {933}] [get_ips dataBuffer]


#set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Input_Data_Width {64} CONFIG.Output_Data_Width {32} CONFIG.Valid_Flag {true} CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} CONFIG.Full_Threshold_Assert_Value {962} CONFIG.Output_Depth {2048} CONFIG.Read_Data_Count_Width {11} CONFIG.Full_Threshold_Negate_Value {961}] [get_ips dataBuffer]

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


