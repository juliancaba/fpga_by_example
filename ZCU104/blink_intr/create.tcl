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
set part xczu7ev-ffvc1156-2-e
set board_part "xilinx.com:zcu104:part0:1.1" 
#set xdcFile "blink_intr.xdc"
if {[lindex $argv 0] == "2018.3"} {
    set toolchainVer [lindex $argv 0]
} else {
    set toolchainVer 2018.3
    puts "No block design for the request toolchain version"
    puts "Default 2018.3"
}
set blockDesign src/bd/bd_blink_intr_$toolchainVer.tcl
###############################################################



###############################################################
### VIVADO Project
###############################################################
# VIVADO Project
#set blockDesign src/block_designs/bdesign_v2017.4.tcl



set designName "design_1"
set prjName tmp
set synthPrj [lindex $argv 1]
set userIPDir ip_repo
set staticFiles [fileGroup::create]

# fileGroup::add $staticFiles src/top/ top.vhd "TRUE"

set constraintFiles [fileGroup::create]
fileGroup::add $constraintFiles src/xdc/ blink_intr.xdc
###############################################################



###############################################################
### Configurations
###############################################################
set compressReference off
set createBlanking off
###############################################################





