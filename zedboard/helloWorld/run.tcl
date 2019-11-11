
###############################################################
### Define Part, Package, Speedgrade 
###############################################################
set device       "xc7z020"
set package      "clg484"
set speed        "-1"
set part         $device$package$speed



###############################################################
### Define Output and top name
###############################################################
set outputDir ./output_test
file mkdir $outputDir
set topName top
set bitName top



###############################################################
### Setup design sources and constraints 
###############################################################
#read_vhdl -library bftLib [ glob ./Sources/hdl/bftLib/*.vhdl ]
read_vhdl ./top.vhd
#read_verilog [ glob ./Sources/hdl/*.v ]
read_xdc ./top.xdc



###############################################################
### Run synthesis 
###############################################################
synth_design -top $topName -part $part
write_checkpoint -force $outputDir/post_synth.dcp
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_utilization -file $outputDir/post_synth_util.rpt



###############################################################
### Run optimization and placement 
###############################################################
opt_design
place_design
report_clock_utilization -file $outputDir/clock_util.rpt

# Optionally run optimization if there are timing violations after placement
if {[get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]] < 0} {
 puts "Found setup timing violations => running physical optimization"
 phys_opt_design
}
write_checkpoint -force $outputDir/post_place.dcp
report_utilization -file $outputDir/post_place_util.rpt
report_timing_summary -file $outputDir/post_place_timing_summary.rpt



###############################################################
### Run routing 
###############################################################
route_design
write_checkpoint -force $outputDir/post_route.dcp
report_route_status -file $outputDir/post_route_status.rpt
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_power -file $outputDir/post_route_power.rpt
report_drc -file $outputDir/post_imp_drc.rpt
write_vhdl -force $outputDir/top_impl_netlist.vhd



###############################################################
### Generate bitstream
###############################################################
write_bitstream -force $outputDir/$bitName.bit



