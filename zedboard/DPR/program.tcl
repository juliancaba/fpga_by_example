###############################################################
### Define Output and top name
###############################################################
set bitDir ./Bitstreams
set bitName reference.bit
#set bitName reference_pblock_rm_leds_partial.bit
#set bitName cfg0.bit
#set bitName cfg0_pblock_rm_leds_partial.bit


###############################################################
### Download
###############################################################
open_hw
connect_hw_server
open_hw_target
set_property PROGRAM.FILE $bitDir/$bitName [get_hw_devices xc*]
program_hw_devices [get_hw_devices xc*]

return 0
