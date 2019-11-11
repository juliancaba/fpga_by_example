set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*rst_asreg_d1_reg}]


#-----------------------------------
# Leds
#-----------------------------------
set_property PACKAGE_PIN T22 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property PACKAGE_PIN T21 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN U22 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property PACKAGE_PIN U21 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property PACKAGE_PIN V22 [get_ports {leds[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property PACKAGE_PIN W22 [get_ports {leds[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property PACKAGE_PIN U19 [get_ports {leds[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property PACKAGE_PIN U14 [get_ports {leds[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]
#-----------------------------------



#-----------------------------------
# Buttons
#-----------------------------------
#BTNU
set_property PACKAGE_PIN T18 [get_ports bUp]
set_property IOSTANDARD LVCMOS33 [get_ports bUp]
#BTNC
set_property PACKAGE_PIN P16 [get_ports bDown]
set_property IOSTANDARD LVCMOS33 [get_ports bDown]
#BTNR
set_property PACKAGE_PIN R18 [get_ports bRight]
set_property IOSTANDARD LVCMOS33 [get_ports bRight]
#BTNL
set_property PACKAGE_PIN N15 [get_ports bLeft]
set_property IOSTANDARD LVCMOS33 [get_ports bLeft]
#-----------------------------------
