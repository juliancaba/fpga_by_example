###############################################################
### Define Output and top name
###############################################################
source create.tcl
set sdkDir $prjName/sdk
set app_name TestApp
set hw_name $designName\_wrapper_sys
set bsp_name $designName\_wrapper_bsp

#file mkdir $sdkDir



# ###############################################################
# ### Export
# ###############################################################
sdk setws $sdkDir
#$prjName/sdk
#file copy -force platform_cs/platform.runs/impl_1/ps_system_wrapper.sysdef $sdkDir/$hw_name.hdf
puts "\n# Creating ${hw_name} ...\n"
sdk createhw -name $hw_name -hwspec $sdkDir/$hw_name.hdf
puts "\n# Creating ${bsp_name} ...\n"
#sdk createbsp -name $bsp_name -hwproject ZC702_hw_platform -proc ps7_cortexa9_0 -os standalone
puts "\n# Creating ${app_name} ...\n"
sdk createapp -name $app_name -hwproject $designName\_wrapper_sys -proc psu_cortexa53_0 -os standalone -lang C -app {Empty Application}

exec cp -f -rL src/sw/main.c $sdkDir/${app_name}/src/
exec cp -f -rL src/sw/platform.c $sdkDir/${app_name}/src/
exec cp -f -rL src/sw/platform.h $sdkDir/${app_name}/src/
exec cp -f -rL src/sw/platform_config.h $sdkDir/${app_name}/src/

puts "\n#\n#\n# Build ${app_name} ...\n#\n#\n"
sdk build_project -type all


