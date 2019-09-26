###############################################################
### Define Part, Package, Speedgrade 
###############################################################
set originDir [file dirname [info script]]
set part xczu7ev-ffvc1156-2-e
set board_part "xilinx.com:zcu104:part0:1.1" 
set xdcFile "blink_intr.xdc"
if {[lindex $argv 0] == "2018.3"} {
    set blockDesign src/bd/bd_blink_intr_2018.3.tcl
} else {
    error "[ERROR] No block design for the request toolchain version"
}
###############################################################



###############################################################
### VIVADO Project
###############################################################
# VIVADO Project
#set blockDesign src/block_designs/bdesign_v2017.4.tcl



set designName "design_1"
set prjName tmp
#set userIPDir ip_repo
###############################################################




###############################################################
### Create project
###############################################################
#create_project $prjName $originDir/$prjName -part $part
create_project -force $prjName ./$prjName -part $part

# Set the directory path for the new project
set prjDir [get_property directory [current_project]]

# Set project properties
set obj [get_projects $prjName]
set_property "board_part" $board_part [current_project]
set_property "default_lib" "xil_defaultlib" [current_project]
set_property "simulator_language" "Mixed" [current_project]
set_property "target_language" "VHDL" [current_project]

# Updte IP Cores
#set_property ip_repo_paths $userIPDir [current_project]
#update_ip_catalog -rebuild


# Create block design
source $originDir/$blockDesign

# Add Constraints
add_files -fileset constrs_1 -norecurse src/xdc/$xdcFile
import_files -fileset constrs_1 src/xdc/$xdcFile

# Create top
make_wrapper -files [get_files $prjDir/$prjName.srcs/sources_1/bd/$designName/$designName.bd] -top
import_files -norecurse $prjDir/$prjName.srcs/sources_1/bd/$designName/hdl/$designName\_wrapper.vhd

puts "INFO: Project created"

close_project

puts "INFO: Project closed"
###############################################################





