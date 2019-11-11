#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("din_V_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("din_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("din_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("dout_V_din", 32, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("dout_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("dout_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("pr_V_addr_din", 32, hls_out, 2, "ap_fifo", "fifo_data", 1),
	Port_Property("pr_V_addr_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("pr_V_addr_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 1),
	Port_Property("pr_V_areaID_din", 16, hls_out, 3, "ap_fifo", "fifo_data", 1),
	Port_Property("pr_V_areaID_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("pr_V_areaID_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 1),
	Port_Property("prDone_V_dout", 1, hls_in, 4, "ap_fifo", "fifo_data", 1),
	Port_Property("prDone_V_empty_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 1),
	Port_Property("prDone_V_read", 1, hls_out, 4, "ap_fifo", "fifo_update", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "wrapperAdmin";
