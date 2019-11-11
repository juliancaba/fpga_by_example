open_project prj.hlsObj
set_top wrapperAdmin
add_files ./wrapperAdmin.cc
add_files ./casting.cc

open_solution "solution"
set_part xc7z020clg484-1
create_clock -period 10

source "./directives.tcl"

csynth_design
