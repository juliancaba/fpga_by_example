###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -name clk -period 5 [get_ports clk]

# For Programable Clock Source over SMA
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

#-----------------------------------
# Reset (Center button)
#-----------------------------------
# Reset Button on Switch SW5 "Center Button"
# GPIO_SW_C on Bank18 (VADJ 2.5 volt)
set_property PACKAGE_PIN P16 [get_ports rst]
set_property IOSTANDARD LVCMOS25 [get_ports rst]


#-----------------------------------
#leds
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
#dips
#-----------------------------------
set_property PACKAGE_PIN F22 [get_ports {dips[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[0]}]
set_property PACKAGE_PIN G22 [get_ports {dips[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[1]}]
set_property PACKAGE_PIN H22 [get_ports {dips[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[2]}]
set_property PACKAGE_PIN F21 [get_ports {dips[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[3]}]
set_property PACKAGE_PIN H19 [get_ports {dips[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[4]}]
set_property PACKAGE_PIN H18 [get_ports {dips[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[5]}]
set_property PACKAGE_PIN H17 [get_ports {dips[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[6]}]
set_property PACKAGE_PIN M15 [get_ports {dips[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dips[7]}]


#-----------------------------------
#buttons
#-----------------------------------
# Up Right Down Center Left
#set_property PACKAGE_PIN T18 [get_ports {buttons[0]}]
#set_property PACKAGE_PIN R18 [get_ports {buttons[1]}]
#set_property PACKAGE_PIN R16 [get_ports {buttons[2]}]
#set_property PACKAGE_PIN P16 [get_ports {buttons[3]}]
#set_property PACKAGE_PIN N15 [get_ports {buttons[4]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {button*}]


# PB1
#set_property PACKAGE_PIN D13 [get_ports {pb1}]

# PB2
#set_property PACKAGE_PIN C10 [get_ports {pb2}]