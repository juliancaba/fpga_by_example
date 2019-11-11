source TCL/fileGroup.tcl
package require fileGroup 1.0

source TCL/rmGroup.tcl
package require rmGroup 1.0

source TCL/cfgGroup.tcl
package require cfgGroup 1.0

###############################################################
### Define Part, Package, Speedgrade 
###############################################################
set originDir [file dirname [info script]]
set part xc7z020clg484-1
# ZedBoard
set board "em.avnet.com:zed:part0:1.2"
#Zynq ZC702
#set board "xilinx.com:zc702:1.1"
###############################################################



###############################################################
### VIVADO Project
###############################################################
# VIVADO Project
set blockDesign src/block_designs/bdesign_v2015.4.tcl
set designName "ps_system"
set prjName tmp
set userIPDir ip_repo

set staticFiles [fileGroup::create]

# Design 1
#fileGroup::add $staticFiles src/top/ top_wrapper.v "TRUE"
#fileGroup::add $staticFiles src/static/ top_reconfig.vhd 


set constraintFiles [fileGroup::create]
# ZedBoard
fileGroup::add $constraintFiles src/xdc/ topZedboard.xdc
#Zynq ZC702
#fileGroup::add $constraintFiles src/xdc/ topZC702.xdc
###############################################################



###############################################################
### Reconfig Modules
###############################################################
# Create reconfig modules
set rm_leds [rmGroup::create "rModule_leds"]

# Configure RMs
# Design 1
#rmGroup::setSrcLocation $rm_leds "top_dpr"
# Design 3
rmGroup::setSrcLocation $rm_leds "ps_system_i/top_dpr_0/U0"

rmGroup::setInstanceName $rm_leds "rm_leds"
rmGroup::setHwResources $rm_leds [list SLICE_X16Y20:SLICE_X19Y24]
rmGroup::setResetAfterReconfig $rm_leds on
rmGroup::setSnappingMode $rm_leds on

# Add Modules (Dynamic Parts)
###############################

## rm_leds
set leftshiftFiles [fileGroup::create]
fileGroup::add $leftshiftFiles src/rModule_leds/leftshift/ rModule_leds.vhd
rmGroup::addNewModule $rm_leds "leftshift" $leftshiftFiles

set rightshiftFiles [fileGroup::create]
fileGroup::add $rightshiftFiles src/rModule_leds/rightshift/ rModule_leds.vhd
rmGroup::addNewModule $rm_leds "rightshift" $rightshiftFiles
###############################################################



###############################################################
### Configurations
###############################################################
set compressReference off
set createBlanking off

set cfg0 [cfgGroup::create "cfg0"]
cfgGroup::addNewModule $cfg0 $rm_leds "rightshift" "implement"
###############################################################


