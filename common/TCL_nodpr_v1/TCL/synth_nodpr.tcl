###############################################################
### Create project
###############################################################
#create_project $prjName $originDir/$prjName -part $part
open_project ./$prjName/$prjName.xpr 

reset_run $synthName
set cores [exec nproc]
launch_runs $synthName -jobs $cores
wait_on_run $synthName
open_run $synthName -name $synthName

write_checkpoint -force $synthDir/$topName.dcp
report_timing_summary -file $reportDir/static_synth_timing_summary.rpt
report_utilization -file $reportDir/static_synth_util.rpt


puts "INFO Synth done"


# Read Constraints
############################
foreach itXDC [fileGroup::getFileGroup $constraintFiles] {
    read_xdc $itXDC
}

opt_design
place_design
#phys_opt_design
route_design

write_checkpoint -force $implDir/reference_route_design.dcp
report_utilization -file $reportDir/reference_utilization.rpt
report_timing_summary -file $reportDir/reference_timming_summary.rpt
write_debug_probes $implDir/debug_nets.ltx

puts "INFO PAR done"



if {$compressReference} {
    set_property bitstream.general.compress true [current_design]
}
write_bitstream -force -bin -file $bitsDir/reference.bit

puts "INFO Bit Files done"



close_project

puts "INFO Project closed"
###############################################################

