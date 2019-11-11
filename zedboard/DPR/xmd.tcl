connect arm hw
#source sdk/ps_system_wrapper_hw_platform_0/ps7_init.tcl
source sdk/ps_system_wrapper_sys/ps7_init.tcl
ps7_init
ps7_post_config
dow -data Bitstreams/factory_reference_pblock_rm_leds_partial.bit 0x10000000
dow -data Bitstreams/factory_cfg0_pblock_rm_leds_partial.bit 0x11000000
dow sdk/TestApp/Debug/TestApp.elf
run
