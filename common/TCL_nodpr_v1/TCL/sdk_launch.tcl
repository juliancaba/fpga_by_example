###############################################################
### Launch SDK
###############################################################
puts "INFO: Launch SDK"

source design.tcl
source TCL/fileSystem.tcl

open_project $prjName/$prjName.xpr

# Launch
launch_sdk -workspace $sdkDir -hwspec $sdkDir/$designName\_wrapper_sys.hdf -bit $sdkDir/reference.bit

close_project

puts "INFO: Project closed"
###############################################################
