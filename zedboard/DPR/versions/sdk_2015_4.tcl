###############################################################
### Define Output and top name
###############################################################
set sdkDir sdk
set app_name TestApp
set hw_name ps_system_wrapper_sys
set bsp_name ps_system_wrapper_bsp

#file mkdir $sdkDir



# ###############################################################
# ### Export
# ###############################################################
sdk set_workspace sdk
#file copy -force platform_cs/platform.runs/impl_1/ps_system_wrapper.sysdef $sdkDir/$hw_name.hdf
puts "\n# Creating ${hw_name} ...\n"
sdk create_hw_project -name $hw_name -hwspec $sdkDir/$hw_name.hdf
puts "\n# Creating ${bsp_name} ...\n"
sdk create_bsp_project -name $bsp_name -hwproject $hw_name -proc ps7_cortexa9_0 -os standalone
puts "\n# Creating ${app_name} ...\n"
sdk create_app_project -name $app_name -hwproject $hw_name -proc ps7_cortexa9_0 -os standalone -lang C -app {Empty Application} -bsp $bsp_name

exec cp -f -rL src/sw/TestApp.c $sdkDir/${app_name}/src/

puts "\n#\n#\n# Build ${app_name} ...\n#\n#\n"
sdk build_project -type all


