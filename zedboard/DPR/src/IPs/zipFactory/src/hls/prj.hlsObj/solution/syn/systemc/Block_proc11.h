// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Block_proc11_HH_
#define _Block_proc11_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "forward.h"
#include "getRequestHead.h"
#include "getRequestHead_wobkb.h"
#include "fifo_w32_d16_A.h"

namespace ap_rtl {

struct Block_proc11 : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > din_V_dout;
    sc_in< sc_logic > din_V_empty_n;
    sc_out< sc_logic > din_V_read;
    sc_out< sc_lv<32> > dout_V_din;
    sc_in< sc_logic > dout_V_full_n;
    sc_out< sc_logic > dout_V_write;
    sc_in< sc_logic > prDone_V_dout;
    sc_in< sc_logic > prDone_V_empty_n;
    sc_out< sc_logic > prDone_V_read;
    sc_out< sc_lv<32> > pr_V_addr_din;
    sc_in< sc_logic > pr_V_addr_full_n;
    sc_out< sc_logic > pr_V_addr_write;
    sc_out< sc_lv<16> > pr_V_areaID_din;
    sc_in< sc_logic > pr_V_areaID_full_n;
    sc_out< sc_logic > pr_V_areaID_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Block_proc11(sc_module_name name);
    SC_HAS_PROCESS(Block_proc11);

    ~Block_proc11();

    sc_trace_file* mVcdFile;

    getRequestHead_wobkb* words32_U;
    forward* grp_forward_fu_197;
    getRequestHead* grp_getRequestHead_fu_204;
    fifo_w32_d16_A* bufferRESP_V_fifo_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > header_objectID;
    sc_signal< sc_lv<8> > header_methodID;
    sc_signal< sc_lv<16> > header_cb;
    sc_signal< sc_lv<16> > header_size;
    sc_signal< sc_lv<4> > p_status;
    sc_signal< sc_logic > din_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_5_fu_341_p2;
    sc_signal< sc_logic > dout_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > tmp_fu_240_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_246_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_reg_375;
    sc_signal< sc_lv<1> > tmp_1_reg_379;
    sc_signal< sc_lv<1> > tmp_4_reg_383;
    sc_signal< sc_lv<1> > tmp_14_nbreadreq_fu_123_p3;
    sc_signal< sc_logic > pr_V_addr_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > pr_V_areaID_blk_n;
    sc_signal< sc_lv<16> > reg_231;
    sc_signal< bool > ap_predicate_op41_write_state3;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<1> > tmp_4_fu_252_p2;
    sc_signal< sc_lv<2> > it_fu_347_p2;
    sc_signal< bool > ap_block_state9;
    sc_signal< sc_lv<1> > words32_address0;
    sc_signal< sc_logic > words32_ce0;
    sc_signal< sc_logic > words32_we0;
    sc_signal< sc_lv<32> > words32_q0;
    sc_signal< sc_lv<1> > words32_address1;
    sc_signal< sc_logic > words32_ce1;
    sc_signal< sc_lv<32> > words32_q1;
    sc_signal< sc_logic > grp_forward_fu_197_ap_start;
    sc_signal< sc_logic > grp_forward_fu_197_ap_done;
    sc_signal< sc_logic > grp_forward_fu_197_ap_idle;
    sc_signal< sc_logic > grp_forward_fu_197_ap_ready;
    sc_signal< sc_logic > grp_forward_fu_197_src_V_read;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_ap_start;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_ap_done;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_ap_idle;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_ap_ready;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_src_V_read;
    sc_signal< sc_lv<8> > grp_getRequestHead_fu_204_header_objectID;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_header_objectID_ap_vld;
    sc_signal< sc_lv<8> > grp_getRequestHead_fu_204_header_methodID;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_header_methodID_ap_vld;
    sc_signal< sc_lv<16> > grp_getRequestHead_fu_204_header_cb;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_header_cb_ap_vld;
    sc_signal< sc_lv<16> > grp_getRequestHead_fu_204_header_size;
    sc_signal< sc_logic > grp_getRequestHead_fu_204_header_size_ap_vld;
    sc_signal< sc_lv<2> > it_0_i_i_reg_186;
    sc_signal< sc_logic > ap_reg_grp_forward_fu_197_ap_start;
    sc_signal< bool > ap_block_state3_ignore_call1;
    sc_signal< sc_logic > ap_reg_grp_getRequestHead_fu_204_ap_start;
    sc_signal< bool > ap_block_state1_ignore_call7;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_10_fu_353_p1;
    sc_signal< sc_lv<32> > bufferRESP_V_din;
    sc_signal< sc_logic > bufferRESP_V_full_n;
    sc_signal< sc_logic > bufferRESP_V_write;
    sc_signal< bool > ap_block_state6;
    sc_signal< sc_lv<32> > bufferRESP_V_dout;
    sc_signal< sc_logic > bufferRESP_V_empty_n;
    sc_signal< sc_logic > bufferRESP_V_read;
    sc_signal< bool > ap_predicate_op68_read_state8;
    sc_signal< bool > ap_block_state8;
    sc_signal< sc_lv<32> > words32_6_fu_276_p2;
    sc_signal< sc_lv<32> > words32_5_fu_293_p2;
    sc_signal< sc_lv<32> > words32_7_fu_310_p2;
    sc_signal< sc_lv<32> > words32_8_fu_334_p2;
    sc_signal< sc_logic > pr_V_addr1_update;
    sc_signal< sc_logic > pr_V_addr1_status;
    sc_signal< sc_lv<1> > tmp_16_fu_258_p1;
    sc_signal< sc_lv<32> > tmp_s_fu_268_p3;
    sc_signal< sc_lv<32> > tmp_6_fu_283_p4;
    sc_signal< sc_lv<32> > tmp_7_fu_300_p4;
    sc_signal< sc_lv<32> > tmp_12_fu_326_p3;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< bool > ap_block_state1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_20001;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_101;
    static const sc_lv<32> ap_const_lv32_205;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state1_ignore_call7();
    void thread_ap_block_state3();
    void thread_ap_block_state3_ignore_call1();
    void thread_ap_block_state6();
    void thread_ap_block_state8();
    void thread_ap_block_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op41_write_state3();
    void thread_ap_predicate_op68_read_state8();
    void thread_ap_ready();
    void thread_bufferRESP_V_din();
    void thread_bufferRESP_V_read();
    void thread_bufferRESP_V_write();
    void thread_din_V_blk_n();
    void thread_din_V_read();
    void thread_dout_V_blk_n();
    void thread_dout_V_din();
    void thread_dout_V_write();
    void thread_grp_forward_fu_197_ap_start();
    void thread_grp_getRequestHead_fu_204_ap_start();
    void thread_it_fu_347_p2();
    void thread_prDone_V_read();
    void thread_pr_V_addr1_status();
    void thread_pr_V_addr1_update();
    void thread_pr_V_addr_blk_n();
    void thread_pr_V_addr_din();
    void thread_pr_V_addr_write();
    void thread_pr_V_areaID_blk_n();
    void thread_pr_V_areaID_din();
    void thread_pr_V_areaID_write();
    void thread_tmp_10_fu_353_p1();
    void thread_tmp_12_fu_326_p3();
    void thread_tmp_14_nbreadreq_fu_123_p3();
    void thread_tmp_16_fu_258_p1();
    void thread_tmp_1_fu_246_p2();
    void thread_tmp_4_fu_252_p2();
    void thread_tmp_5_fu_341_p2();
    void thread_tmp_6_fu_283_p4();
    void thread_tmp_7_fu_300_p4();
    void thread_tmp_fu_240_p2();
    void thread_tmp_s_fu_268_p3();
    void thread_words32_5_fu_293_p2();
    void thread_words32_6_fu_276_p2();
    void thread_words32_7_fu_310_p2();
    void thread_words32_8_fu_334_p2();
    void thread_words32_address0();
    void thread_words32_address1();
    void thread_words32_ce0();
    void thread_words32_ce1();
    void thread_words32_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
