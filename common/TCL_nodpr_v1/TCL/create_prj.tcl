###############################################################
### Create project
###############################################################
#create_project $prjName $originDir/$prjName -part $part
create_project -force $prjName ./$prjName -part $part

# Set the directory path for the new project
set prjDir [get_property directory [current_project]]

# Set project properties
set obj [get_projects $prjName]
set_property "board_part" $board_part [current_project]
set_property "default_lib" "xil_defaultlib" [current_project]
set_property "simulator_language" "Mixed" [current_project]
set_property "target_language" "VHDL" [current_project]

# Updte IP Cores
set_property ip_repo_paths $userIPDir [current_project]
update_ip_catalog -rebuild


# Create block design
source $originDir/$blockDesign


# Add static files (constraints included)
foreach it [fileGroup::getFileGroup $staticFiles] {
    import_files -norecurse $it
}

set synthName synth_1 


puts "Top $topName $designName"

if {$topName eq $designName} {
    make_wrapper -files [get_files ./$prjName/$prjName.srcs/sources_1/bd/$designName/$designName.bd] -top
    import_files -norecurse ./$prjName/$prjName.srcs/sources_1/bd/$designName/hdl/$designName\_wrapper.vhd 
    set topName $designName\_wrapper
} else {
    set_property top $topName [current_fileset]
}

update_compile_order -fileset sources_1

puts "INFO Project created"

close_project

puts "INFO Project closed"
###############################################################

