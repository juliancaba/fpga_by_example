###############################################################
### Define Part, Package, Speedgrade 
###############################################################
set reportDir $prjName/Reports
set synthDir $prjName/Synth
set implDir $prjName/Implementations
set checksDir $prjName/Checkpoints
set bitsDir $prjName/Bitstreams
set sdkDir $prjName/sdk
###############################################################



###############################################################
### Create fileSystem
###############################################################
if {[file exists $reportDir] == 0} {
    file mkdir $reportDir
}

if {[file exists $synthDir] == 0} {
    file mkdir $synthDir
}

if {[file exists $implDir] == 0} {
    file mkdir $implDir
}

if {[file exists $checksDir] == 0} {
    file mkdir $checksDir
}

if {[file exists $bitsDir] == 0} {
    file mkdir $bitsDir
}

if {[file exists $sdkDir] == 0} {
    file mkdir $sdkDir
}
###############################################################
