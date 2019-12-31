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
source bd.tcl
########



#######
## Synth Project and Export
####################
project::synth
project::export_hardware
########

