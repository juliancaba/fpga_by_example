source /opt/xilinx-tcl/build/project.tcl

set board [lindex $argv 0]
project::setBoard $board

set workspace [pwd]/[lindex $argv 1].sdk
project::setWorkspace $workspace



sdk::create_sw_project standalone {}
sdk::add_files_from_folder src/sw/

sdk::build
sdk::patch_psu_init

exit
