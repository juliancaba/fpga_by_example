source create.tcl


###############################################################
### Flow
###############################################################
set topName [fileGroup::getTopName $staticFiles]
if {$topName eq ""} {
    set topName $designName
}


### Create fileSystem
source TCL/fileSystem.tcl

### Create Vivado prj
source TCL/create_prj.tcl

if {$synthPrj eq "synth"} {
    source TCL/synth_nodpr.tcl
}
##############################################################




