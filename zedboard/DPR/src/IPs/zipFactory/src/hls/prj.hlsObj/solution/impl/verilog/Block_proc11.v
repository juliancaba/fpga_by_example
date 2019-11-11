// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_proc11 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        din_V_dout,
        din_V_empty_n,
        din_V_read,
        dout_V_din,
        dout_V_full_n,
        dout_V_write,
        prDone_V_dout,
        prDone_V_empty_n,
        prDone_V_read,
        pr_V_addr_din,
        pr_V_addr_full_n,
        pr_V_addr_write,
        pr_V_areaID_din,
        pr_V_areaID_full_n,
        pr_V_areaID_write
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] din_V_dout;
input   din_V_empty_n;
output   din_V_read;
output  [31:0] dout_V_din;
input   dout_V_full_n;
output   dout_V_write;
input   prDone_V_dout;
input   prDone_V_empty_n;
output   prDone_V_read;
output  [31:0] pr_V_addr_din;
input   pr_V_addr_full_n;
output   pr_V_addr_write;
output  [15:0] pr_V_areaID_din;
input   pr_V_areaID_full_n;
output   pr_V_areaID_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg din_V_read;
reg[31:0] dout_V_din;
reg dout_V_write;
reg prDone_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] header_objectID;
reg   [7:0] header_methodID;
reg   [15:0] header_cb;
reg   [15:0] header_size;
reg   [3:0] p_status;
reg    din_V_blk_n;
wire    ap_CS_fsm_state9;
wire   [0:0] tmp_5_fu_341_p2;
reg    dout_V_blk_n;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_fu_240_p2;
wire   [0:0] tmp_1_fu_246_p2;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg   [0:0] tmp_reg_375;
reg   [0:0] tmp_1_reg_379;
reg   [0:0] tmp_4_reg_383;
wire   [0:0] tmp_14_nbreadreq_fu_123_p3;
reg    pr_V_addr_blk_n;
wire    ap_CS_fsm_state10;
reg    pr_V_areaID_blk_n;
reg   [15:0] reg_231;
reg    ap_predicate_op41_write_state3;
reg    ap_block_state3;
wire   [0:0] tmp_4_fu_252_p2;
wire   [1:0] it_fu_347_p2;
reg    ap_block_state9;
reg   [0:0] words32_address0;
reg    words32_ce0;
reg    words32_we0;
wire   [31:0] words32_q0;
wire   [0:0] words32_address1;
reg    words32_ce1;
wire   [31:0] words32_q1;
wire    grp_forward_fu_197_ap_start;
wire    grp_forward_fu_197_ap_done;
wire    grp_forward_fu_197_ap_idle;
wire    grp_forward_fu_197_ap_ready;
wire    grp_forward_fu_197_src_V_read;
wire    grp_getRequestHead_fu_204_ap_start;
wire    grp_getRequestHead_fu_204_ap_done;
wire    grp_getRequestHead_fu_204_ap_idle;
wire    grp_getRequestHead_fu_204_ap_ready;
wire    grp_getRequestHead_fu_204_src_V_read;
wire   [7:0] grp_getRequestHead_fu_204_header_objectID;
wire    grp_getRequestHead_fu_204_header_objectID_ap_vld;
wire   [7:0] grp_getRequestHead_fu_204_header_methodID;
wire    grp_getRequestHead_fu_204_header_methodID_ap_vld;
wire   [15:0] grp_getRequestHead_fu_204_header_cb;
wire    grp_getRequestHead_fu_204_header_cb_ap_vld;
wire   [15:0] grp_getRequestHead_fu_204_header_size;
wire    grp_getRequestHead_fu_204_header_size_ap_vld;
reg   [1:0] it_0_i_i_reg_186;
reg    ap_reg_grp_forward_fu_197_ap_start;
reg    ap_block_state3_ignore_call1;
reg    ap_reg_grp_getRequestHead_fu_204_ap_start;
reg    ap_block_state1_ignore_call7;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_10_fu_353_p1;
wire   [31:0] bufferRESP_V_din;
wire    bufferRESP_V_full_n;
reg    bufferRESP_V_write;
reg    ap_block_state6;
wire   [31:0] bufferRESP_V_dout;
wire    bufferRESP_V_empty_n;
reg    bufferRESP_V_read;
reg    ap_predicate_op68_read_state8;
reg    ap_block_state8;
wire   [31:0] words32_6_fu_276_p2;
wire   [31:0] words32_5_fu_293_p2;
wire   [31:0] words32_7_fu_310_p2;
wire   [31:0] words32_8_fu_334_p2;
reg    pr_V_addr1_update;
wire    pr_V_addr1_status;
wire   [0:0] tmp_16_fu_258_p1;
wire   [31:0] tmp_s_fu_268_p3;
wire   [31:0] tmp_6_fu_283_p4;
wire   [31:0] tmp_7_fu_300_p4;
wire   [31:0] tmp_12_fu_326_p3;
reg   [9:0] ap_NS_fsm;
reg    ap_block_state1;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 header_objectID = 8'd0;
#0 header_methodID = 8'd0;
#0 header_cb = 16'd0;
#0 header_size = 16'd0;
#0 p_status = 4'd0;
#0 ap_reg_grp_forward_fu_197_ap_start = 1'b0;
#0 ap_reg_grp_getRequestHead_fu_204_ap_start = 1'b0;
end

getRequestHead_wobkb #(
    .DataWidth( 32 ),
    .AddressRange( 2 ),
    .AddressWidth( 1 ))
words32_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(words32_address0),
    .ce0(words32_ce0),
    .we0(words32_we0),
    .d0(din_V_dout),
    .q0(words32_q0),
    .address1(words32_address1),
    .ce1(words32_ce1),
    .q1(words32_q1)
);

forward grp_forward_fu_197(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_forward_fu_197_ap_start),
    .ap_done(grp_forward_fu_197_ap_done),
    .ap_idle(grp_forward_fu_197_ap_idle),
    .ap_ready(grp_forward_fu_197_ap_ready),
    .src_V_dout(din_V_dout),
    .src_V_empty_n(din_V_empty_n),
    .src_V_read(grp_forward_fu_197_src_V_read),
    .size(reg_231)
);

getRequestHead grp_getRequestHead_fu_204(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getRequestHead_fu_204_ap_start),
    .ap_done(grp_getRequestHead_fu_204_ap_done),
    .ap_idle(grp_getRequestHead_fu_204_ap_idle),
    .ap_ready(grp_getRequestHead_fu_204_ap_ready),
    .src_V_dout(din_V_dout),
    .src_V_empty_n(din_V_empty_n),
    .src_V_read(grp_getRequestHead_fu_204_src_V_read),
    .header_objectID(grp_getRequestHead_fu_204_header_objectID),
    .header_objectID_ap_vld(grp_getRequestHead_fu_204_header_objectID_ap_vld),
    .header_methodID(grp_getRequestHead_fu_204_header_methodID),
    .header_methodID_ap_vld(grp_getRequestHead_fu_204_header_methodID_ap_vld),
    .header_cb(grp_getRequestHead_fu_204_header_cb),
    .header_cb_ap_vld(grp_getRequestHead_fu_204_header_cb_ap_vld),
    .header_size(grp_getRequestHead_fu_204_header_size),
    .header_size_ap_vld(grp_getRequestHead_fu_204_header_size_ap_vld)
);

fifo_w32_d16_A bufferRESP_V_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(bufferRESP_V_din),
    .if_full_n(bufferRESP_V_full_n),
    .if_write(bufferRESP_V_write),
    .if_dout(bufferRESP_V_dout),
    .if_empty_n(bufferRESP_V_empty_n),
    .if_read(bufferRESP_V_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (1'b1 == ap_CS_fsm_state8) & ((tmp_1_reg_379 == 1'd1) | (tmp_14_nbreadreq_fu_123_p3 == 1'd0) | (tmp_4_reg_383 == 1'd0) | (tmp_reg_375 == 1'd0)))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_forward_fu_197_ap_start <= 1'b0;
    end else begin
        if (((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (tmp_4_fu_252_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
            ap_reg_grp_forward_fu_197_ap_start <= 1'b1;
        end else if ((grp_forward_fu_197_ap_ready == 1'b1)) begin
            ap_reg_grp_forward_fu_197_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_getRequestHead_fu_204_ap_start <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_reg_grp_getRequestHead_fu_204_ap_start <= 1'b1;
        end else if ((grp_getRequestHead_fu_204_ap_ready == 1'b1)) begin
            ap_reg_grp_getRequestHead_fu_204_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        it_0_i_i_reg_186 <= it_fu_347_p2;
    end else if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_1_fu_246_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        it_0_i_i_reg_186 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                p_status[0] <= 1'b0;
        p_status[1] <= 1'b1;
    end else if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_16_fu_258_p1 == 1'd1) & (tmp_4_fu_252_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                p_status[0] <= 1'b1;
        p_status[1] <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_getRequestHead_fu_204_header_cb_ap_vld == 1'b1))) begin
        header_cb <= grp_getRequestHead_fu_204_header_cb;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_getRequestHead_fu_204_header_methodID_ap_vld == 1'b1))) begin
        header_methodID <= grp_getRequestHead_fu_204_header_methodID;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_getRequestHead_fu_204_header_objectID_ap_vld == 1'b1))) begin
        header_objectID <= grp_getRequestHead_fu_204_header_objectID;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_getRequestHead_fu_204_header_size_ap_vld == 1'b1))) begin
        header_size <= grp_getRequestHead_fu_204_header_size;
    end
end

always @ (posedge ap_clk) begin
    if (((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (tmp_4_fu_252_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_231 <= header_size;
    end
end

always @ (posedge ap_clk) begin
    if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_1_reg_379 <= tmp_1_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_4_reg_383 <= tmp_4_fu_252_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_reg_375 <= tmp_fu_240_p2;
    end
end

always @ (*) begin
    if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (1'b1 == ap_CS_fsm_state8) & ((tmp_1_reg_379 == 1'd1) | (tmp_14_nbreadreq_fu_123_p3 == 1'd0) | (tmp_4_reg_383 == 1'd0) | (tmp_reg_375 == 1'd0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (1'b1 == ap_CS_fsm_state8) & ((tmp_1_reg_379 == 1'd1) | (tmp_14_nbreadreq_fu_123_p3 == 1'd0) | (tmp_4_reg_383 == 1'd0) | (tmp_reg_375 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (ap_predicate_op68_read_state8 == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        bufferRESP_V_read = 1'b1;
    end else begin
        bufferRESP_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((dout_V_full_n == 1'b0) | (bufferRESP_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        bufferRESP_V_write = 1'b1;
    end else begin
        bufferRESP_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_5_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        din_V_blk_n = din_V_empty_n;
    end else begin
        din_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        din_V_read = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        din_V_read = grp_getRequestHead_fu_204_src_V_read;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        din_V_read = grp_forward_fu_197_src_V_read;
    end else begin
        din_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7) | ((tmp_1_fu_246_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_14_nbreadreq_fu_123_p3 == 1'd1) & (tmp_4_reg_383 == 1'd1) & (tmp_reg_375 == 1'd1) & (tmp_1_reg_379 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        dout_V_blk_n = dout_V_full_n;
    end else begin
        dout_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (ap_predicate_op68_read_state8 == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        dout_V_din = bufferRESP_V_dout;
    end else if (((dout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        dout_V_din = 32'd131073;
    end else if ((~((dout_V_full_n == 1'b0) | (bufferRESP_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        dout_V_din = words32_8_fu_334_p2;
    end else if ((~((dout_V_full_n == 1'b0) | (grp_forward_fu_197_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        dout_V_din = words32_7_fu_310_p2;
    end else if ((~((dout_V_full_n == 1'b0) | (grp_forward_fu_197_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        dout_V_din = words32_5_fu_293_p2;
    end else if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (ap_predicate_op41_write_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        dout_V_din = words32_6_fu_276_p2;
    end else begin
        dout_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((dout_V_full_n == 1'b0) | (bufferRESP_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6)) | (~((dout_V_full_n == 1'b0) | (grp_forward_fu_197_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state5)) | (~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (ap_predicate_op41_write_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | (~((dout_V_full_n == 1'b0) | (grp_forward_fu_197_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4)) | (~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (ap_predicate_op68_read_state8 == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((dout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)))) begin
        dout_V_write = 1'b1;
    end else begin
        dout_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_4_fu_252_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (prDone_V_empty_n == 1'b1))) begin
        prDone_V_read = 1'b1;
    end else begin
        prDone_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((pr_V_addr1_status == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        pr_V_addr1_update = 1'b1;
    end else begin
        pr_V_addr1_update = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pr_V_addr_blk_n = pr_V_addr_full_n;
    end else begin
        pr_V_addr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pr_V_areaID_blk_n = pr_V_areaID_full_n;
    end else begin
        pr_V_areaID_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        if ((tmp_5_fu_341_p2 == 1'd1)) begin
            words32_address0 = 64'd0;
        end else if ((tmp_5_fu_341_p2 == 1'd0)) begin
            words32_address0 = tmp_10_fu_353_p1;
        end else begin
            words32_address0 = 'bx;
        end
    end else begin
        words32_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | (~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9)))) begin
        words32_ce0 = 1'b1;
    end else begin
        words32_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
        words32_ce1 = 1'b1;
    end else begin
        words32_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        words32_we0 = 1'b1;
    end else begin
        words32_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_getRequestHead_fu_204_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_1_fu_246_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_4_fu_252_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd1) & (tmp_1_fu_246_p2 == 1'd0) & (tmp_4_fu_252_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) & (tmp_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((dout_V_full_n == 1'b0) | (grp_forward_fu_197_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((dout_V_full_n == 1'b0) | (grp_forward_fu_197_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((~((dout_V_full_n == 1'b0) | (bufferRESP_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((dout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (1'b1 == ap_CS_fsm_state8) & ((tmp_1_reg_379 == 1'd1) | (tmp_14_nbreadreq_fu_123_p3 == 1'd0) | (tmp_4_reg_383 == 1'd0) | (tmp_reg_375 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~(((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1))) & (tmp_14_nbreadreq_fu_123_p3 == 1'd1) & (tmp_4_reg_383 == 1'd1) & (tmp_reg_375 == 1'd1) & (tmp_1_reg_379 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if ((~((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0)) & (tmp_5_fu_341_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((pr_V_addr1_status == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call7 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3 = ((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state3_ignore_call1 = ((dout_V_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state6 = ((dout_V_full_n == 1'b0) | (bufferRESP_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state8 = (((bufferRESP_V_empty_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)) | ((dout_V_full_n == 1'b0) & (ap_predicate_op68_read_state8 == 1'b1)));
end

always @ (*) begin
    ap_block_state9 = ((tmp_5_fu_341_p2 == 1'd0) & (din_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_predicate_op41_write_state3 = ((tmp_1_fu_246_p2 == 1'd1) & (tmp_fu_240_p2 == 1'd1));
end

always @ (*) begin
    ap_predicate_op68_read_state8 = ((tmp_14_nbreadreq_fu_123_p3 == 1'd1) & (tmp_4_reg_383 == 1'd1) & (tmp_reg_375 == 1'd1) & (tmp_1_reg_379 == 1'd0));
end

assign bufferRESP_V_din = p_status;

assign grp_forward_fu_197_ap_start = ap_reg_grp_forward_fu_197_ap_start;

assign grp_getRequestHead_fu_204_ap_start = ap_reg_grp_getRequestHead_fu_204_ap_start;

assign it_fu_347_p2 = (it_0_i_i_reg_186 + 2'd1);

assign pr_V_addr1_status = (pr_V_areaID_full_n & pr_V_addr_full_n);

assign pr_V_addr_din = words32_q0;

assign pr_V_addr_write = pr_V_addr1_update;

assign pr_V_areaID_din = {{words32_q1[31:16]}};

assign pr_V_areaID_write = pr_V_addr1_update;

assign tmp_10_fu_353_p1 = it_0_i_i_reg_186;

assign tmp_12_fu_326_p3 = {{header_cb}, {16'd0}};

assign tmp_14_nbreadreq_fu_123_p3 = bufferRESP_V_empty_n;

assign tmp_16_fu_258_p1 = prDone_V_dout;

assign tmp_1_fu_246_p2 = ((header_methodID == 8'd1) ? 1'b1 : 1'b0);

assign tmp_4_fu_252_p2 = ((header_methodID == 8'd2) ? 1'b1 : 1'b0);

assign tmp_5_fu_341_p2 = ((it_0_i_i_reg_186 == 2'd2) ? 1'b1 : 1'b0);

assign tmp_6_fu_283_p4 = {{{header_cb}, {header_methodID}}, {8'd0}};

assign tmp_7_fu_300_p4 = {{{header_cb}, {header_methodID}}, {8'd0}};

assign tmp_fu_240_p2 = ((header_objectID == 8'd2) ? 1'b1 : 1'b0);

assign tmp_s_fu_268_p3 = {{header_cb}, {16'd0}};

assign words32_5_fu_293_p2 = (tmp_6_fu_283_p4 | 32'd3);

assign words32_6_fu_276_p2 = (tmp_s_fu_268_p3 | 32'd257);

assign words32_7_fu_310_p2 = (tmp_7_fu_300_p4 | 32'd3);

assign words32_8_fu_334_p2 = (tmp_12_fu_326_p3 | 32'd517);

assign words32_address1 = 64'd1;

always @ (posedge ap_clk) begin
    p_status[3:2] <= 2'b00;
end

endmodule //Block_proc11
