source /opt/xilinx-tcl/build/project.tcl


set prj_name [lindex $argv 0]


#######
## Create Project
####################
project::setProperties $prj_name zed
project::create_hw_project
########



#######
## Create Block Design
####################
bd::add_file "src/hdl/top.vhd"
#bd::add_files_from_folder src/hdl/
bd::add_constraints "src/xdc/top.xdc"
########



#######
## Synth Project and Export
####################
project::synth
project::copy_bitstream "top.bit" [pwd]/$::project::project_name.sdk
########

