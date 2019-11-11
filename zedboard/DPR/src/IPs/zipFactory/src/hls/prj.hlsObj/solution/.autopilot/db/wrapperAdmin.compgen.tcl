# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name din_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_din_V \
    op interface \
    ports { din_V_dout { I 32 vector } din_V_empty_n { I 1 bit } din_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name dout_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dout_V \
    op interface \
    ports { dout_V_din { O 32 vector } dout_V_full_n { I 1 bit } dout_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name pr_V_addr \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pr_V_addr \
    op interface \
    ports { pr_V_addr_din { O 32 vector } pr_V_addr_full_n { I 1 bit } pr_V_addr_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name pr_V_areaID \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pr_V_areaID \
    op interface \
    ports { pr_V_areaID_din { O 16 vector } pr_V_areaID_full_n { I 1 bit } pr_V_areaID_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name prDone_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_prDone_V \
    op interface \
    ports { prDone_V_dout { I 1 bit } prDone_V_empty_n { I 1 bit } prDone_V_read { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


