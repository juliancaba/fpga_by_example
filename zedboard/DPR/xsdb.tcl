connect -url tcp:127.0.0.1:3121
targets 2
source sdk/ZC702_hw_platform/ps7_init.tcl
ps7_init
ps7_post_config
dow -data Bitstreams/factory_reference_pblock_rm_leds_partial.bit 0x11000000
dow -data Bitstreams/factory_cfg0_pblock_rm_leds_partial.bit 0x10000000
dow sdk/TestApp/Debug/TestApp.elf
con
