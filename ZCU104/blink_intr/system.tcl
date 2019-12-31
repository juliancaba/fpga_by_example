source /opt/xilinx-tcl/build/project.tcl

set prj_name [lindex $argv 0]
set bd design_1


#######
## Create Project
####################
project::setProperties $prj_name zcu104
project::create_hw_project
########



#######
## Create Block Design
####################
bd::create_bd $bd

set ps [psu_e::create_ip ps_0 [list irq0 {1}]]
set gpio [axi_gpio::create_ip axi_gpio0  [list width {4} iface {led_4bits} outputs {1}]]
bd::automate_bus axi4 Auto $ps/M_AXI_HPM0_FPD $gpio/S_AXI
bd::make_external $gpio/GPIO leds
bd::make_external_internal_ports $ps/pl_ps_irq0 pbutton

bd::regenerate_bd
bd::wrap_bd
bd::add_constraints "src/xdc/blink_intr.xdc"
########



#######
## Synth Project and Export
####################
project::synth
project::export_hardware
########


