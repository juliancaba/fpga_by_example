source /opt/xilinx-tcl/build/project.tcl

set board [lindex $argv 0]
project::setBoard $board

set prj [lindex $argv 1]
set workspace [pwd]/$prj.sdk
project::setWorkspace $workspace
project::setProjectName $prj



sdk::create_sw_project standalone {}
sdk::add_files_from_folder src/sw/

sdk::build
sdk::patch_psu_init

exit
