###############################################################
### Define Output and top name
###############################################################
set bitDir ./output_test
set bitName top.bit


###############################################################
### Download
###############################################################
open_hw
connect_hw_server
open_hw_target
set_property PROGRAM.FILE $bitDir/$bitName [get_hw_devices xc*]
program_hw_devices [get_hw_devices xc*]

return 0
