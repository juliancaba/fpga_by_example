; ModuleID = '/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wrapperAdmin_str = internal unnamed_addr constant [13 x i8] c"wrapperAdmin\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@header_size = internal unnamed_addr global i16 0
@header_objectID = internal unnamed_addr global i8 0
@header_methodID = internal unnamed_addr global i8 0
@header_cb = internal unnamed_addr global i16 0
@conv64 = global double 0.000000e+00
@conv32 = global float 0.000000e+00
@bufferRESP_OC_V_str = internal unnamed_addr constant [13 x i8] c"bufferRESP.V\00"
@bufferRESP_V = internal global i32 0
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_status = internal unnamed_addr global i4 0
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @wrapperAdmin(i32* %din_V, i32* %dout_V, i32* %pr_V_addr, i16* %pr_V_areaID, i1* %prDone_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* @bufferRESP_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %din_V), !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %dout_V), !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %pr_V_addr), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %pr_V_areaID), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %prDone_V), !map !105
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @wrapperAdmin_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %prDone_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %pr_V_addr, i16* %pr_V_areaID, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %dout_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %din_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @Block__proc11(i32* %din_V, i32* %dout_V, i1* %prDone_V, i32* %pr_V_addr, i16* %pr_V_areaID)
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @getRequestHead(i32* %src_V) {
entry:
  %words32 = alloca [2 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %src_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %it_i = phi i2 [ 0, %entry ], [ %it, %1 ]
  %tmp_i = icmp eq i2 %it_i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %it = add i2 %it_i, 1
  br i1 %tmp_i, label %getRequestHead.exit, label %1

; <label>:1                                       ; preds = %0
  %tmp_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %src_V)
  %tmp_44_i = zext i2 %it_i to i64
  %words32_addr_2 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 %tmp_44_i
  store i32 %tmp_1, i32* %words32_addr_2, align 4
  br label %0

getRequestHead.exit:                              ; preds = %0
  %words32_addr = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 0
  %words32_load = load i32* %words32_addr, align 4
  %tmp_37_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %words32_load, i32 16, i32 23)
  store i8 %tmp_37_i, i8* @header_objectID, align 1
  %tmp_39_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %words32_load, i32 8, i32 15)
  store i8 %tmp_39_i, i8* @header_methodID, align 1
  %words32_addr_1 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 1
  %words32_load_1 = load i32* %words32_addr_1, align 4
  %tmp_41_i = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %words32_load_1, i32 16, i32 31)
  store i16 %tmp_41_i, i16* @header_cb, align 2
  %tmp = trunc i32 %words32_load_1 to i16
  store i16 %tmp, i16* @header_size, align 2
  ret void
}

define internal fastcc void @forward(i32* %src_V, i16 signext %size) noinline {
  call void (...)* @_ssdm_op_SpecInterface(i32* %src_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %size_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %size)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %it = phi i16 [ 0, %0 ], [ %it_1, %2 ]
  %tmp = icmp eq i16 %it, %size_read
  %it_1 = add i16 %it, 1
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_1_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %src_V)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P.i16P(i32*, i16*, i32, i16) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %2)
  %empty_8 = call i16 @_autotb_FifoWrite_i16(i16* %1, i16 %3)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i8
  ret i8 %empty_9
}

define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i16
  ret i16 %empty_10
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i32(i32* %0)
  ret i1 %empty
}

define weak { i1, i1 } @_ssdm_op_NbRead.ap_fifo.volatile.i1P(i1*) {
entry:
  %empty = alloca i1
  %empty_11 = call i1 @_autotb_FifoNbRead_i1(i1* %0, i1* %empty)
  %empty_12 = load i1* %empty
  %mrv_0 = insertvalue { i1, i1 } undef, i1 %empty_11, 0
  %mrv_1 = insertvalue { i1, i1 } %mrv_0, i1 %empty_12, 1
  ret { i1, i1 } %mrv_1
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i16.i8.i8(i16, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_13 = zext i8 %2 to i16
  %empty_14 = shl i16 %empty, 8
  %empty_15 = or i16 %empty_14, %empty_13
  %empty_16 = zext i16 %0 to i32
  %empty_17 = zext i16 %empty_15 to i32
  %empty_18 = shl i32 %empty_16, 16
  %empty_19 = or i32 %empty_18, %empty_17
  ret i32 %empty_19
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone {
entry:
  %empty = zext i16 %0 to i32
  %empty_20 = zext i16 %1 to i32
  %empty_21 = shl i32 %empty, 16
  %empty_22 = or i32 %empty_21, %empty_20
  ret i32 %empty_22
}

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i16 @_autotb_FifoWrite_i16(i16*, i16)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i1 @_autotb_FifoNbRead_i1(i1*, i1*)

declare i1 @_autotb_FifoCanRead_i32(i32*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Block__proc11(i32* %din_V, i32* %dout_V, i1* %prDone_V, i32* %pr_V_addr, i16* %pr_V_areaID) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i32* %din_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %dout_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i16* %pr_V_areaID, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %pr_V_addr, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* %prDone_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* @bufferRESP_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %words32 = alloca [2 x i32], align 4
  call fastcc void @getRequestHead(i32* %din_V)
  %header_objectID_load = load i8* @header_objectID, align 1
  %tmp = icmp eq i8 %header_objectID_load, 2
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @bufferRESP_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32* @bufferRESP_V, i32* @bufferRESP_V)
  br i1 %tmp, label %0, label %1

; <label>:0                                       ; preds = %newFuncRoot
  %header_methodID_load = load i8* @header_methodID, align 1
  %tmp_1 = icmp eq i8 %header_methodID_load, 1
  br i1 %tmp_1, label %2, label %3

; <label>:1                                       ; preds = %newFuncRoot
  %header_size_load = load i16* @header_size, align 2
  call fastcc void @forward(i32* %din_V, i16 signext %header_size_load)
  %header_cb_load = load i16* @header_cb, align 2
  %header_methodID_load_1 = load i8* @header_methodID, align 1
  %tmp_6 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i8.i8(i16 %header_cb_load, i8 %header_methodID_load_1, i8 0)
  %words32_5 = or i32 %tmp_6, 3
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_5)
  br label %.ret.exitStub

; <label>:2                                       ; preds = %0
  %header_cb_load_1 = load i16* @header_cb, align 2
  %tmp_s = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %header_cb_load_1, i16 0)
  %words32_6 = or i32 %tmp_s, 257
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_6)
  br label %4

; <label>:3                                       ; preds = %0
  %tmp_4 = icmp eq i8 %header_methodID_load, 2
  br i1 %tmp_4, label %5, label %6

; <label>:4                                       ; preds = %7, %2
  %it_0_i_i = phi i2 [ 0, %2 ], [ %it, %7 ]
  %tmp_5 = icmp eq i2 %it_0_i_i, -2
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %it = add i2 %it_0_i_i, 1
  br i1 %tmp_5, label %wrapper_newObject.exit, label %7

; <label>:5                                       ; preds = %3
  %prDone_V_read = call { i1, i1 } @_ssdm_op_NbRead.ap_fifo.volatile.i1P(i1* %prDone_V)
  %tmp_16 = extractvalue { i1, i1 } %prDone_V_read, 1
  br i1 %tmp_16, label %8, label %wrapper_status.exit

; <label>:6                                       ; preds = %3
  %header_size_load_1 = load i16* @header_size, align 2
  call fastcc void @forward(i32* %din_V, i16 signext %header_size_load_1)
  %header_cb_load_2 = load i16* @header_cb, align 2
  %header_methodID_load_2 = load i8* @header_methodID, align 1
  %tmp_7 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i8.i8(i16 %header_cb_load_2, i8 %header_methodID_load_2, i8 0)
  %words32_7 = or i32 %tmp_7, 3
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_7)
  br label %buildResponse.exit

wrapper_newObject.exit:                           ; preds = %4
  %words32_addr = getelementptr [2 x i32]* %words32, i64 0, i64 0
  %aux = load i32* %words32_addr, align 4
  %words32_addr_1 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 1
  %words32_load_1 = load i32* %words32_addr_1, align 4
  %aux_3 = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %words32_load_1, i32 16, i32 31)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P.i16P(i32* %pr_V_addr, i16* %pr_V_areaID, i32 %aux, i16 %aux_3)
  store i4 2, i4* @p_status, align 1
  br label %11

; <label>:7                                       ; preds = %4
  %tmp_9 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %din_V)
  %tmp_10 = zext i2 %it_0_i_i to i64
  %words32_addr_2 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 %tmp_10
  store i32 %tmp_9, i32* %words32_addr_2, align 4
  br label %4

; <label>:8                                       ; preds = %5
  store i4 1, i4* @p_status, align 1
  br label %wrapper_status.exit

wrapper_status.exit:                              ; preds = %8, %5
  %p_status_load = load i4* @p_status, align 1
  %tmp_11 = zext i4 %p_status_load to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* @bufferRESP_V, i32 %tmp_11)
  %header_cb_load_3 = load i16* @header_cb, align 2
  %tmp_12 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %header_cb_load_3, i16 0)
  %words32_8 = or i32 %tmp_12, 517
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_8)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 131073)
  br label %9

; <label>:9                                       ; preds = %10, %wrapper_status.exit
  %tmp_14 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32* @bufferRESP_V, i32 1)
  br i1 %tmp_14, label %10, label %buildResponse.exit.loopexit

.ret.exitStub:                                    ; preds = %11, %1
  ret void

; <label>:10                                      ; preds = %9
  %tmp_15 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* @bufferRESP_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %tmp_15)
  br label %9

buildResponse.exit.loopexit:                      ; preds = %9
  br label %buildResponse.exit

buildResponse.exit:                               ; preds = %buildResponse.exit.loopexit, %6
  br label %11

; <label>:11                                      ; preds = %buildResponse.exit, %wrapper_newObject.exit
  br label %.ret.exitStub
}

!opencl.kernels = !{!0, !7, !13, !19, !23, !25, !7, !13, !27, !29, !31, !34, !40, !43, !46, !52, !34, !43, !55, !58, !61, !64, !64, !70, !64, !64, !64, !64, !64, !64, !64}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!72, !79, !84}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4", metadata !"c5", metadata !"c6", metadata !"c7", metadata !"c8"}
!19 = metadata !{null, metadata !20, metadata !2, metadata !21, metadata !4, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"short", metadata !"uchar*"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"n", metadata !"bytes"}
!23 = metadata !{null, metadata !20, metadata !2, metadata !24, metadata !4, metadata !22, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*"}
!25 = metadata !{null, metadata !20, metadata !2, metadata !26, metadata !4, metadata !22, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"long long", metadata !"uchar*"}
!27 = metadata !{null, metadata !20, metadata !2, metadata !28, metadata !4, metadata !22, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"uchar*"}
!29 = metadata !{null, metadata !20, metadata !2, metadata !30, metadata !4, metadata !22, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"uchar*"}
!31 = metadata !{null, metadata !1, metadata !2, metadata !32, metadata !4, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"short"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"size"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"src"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"ushort", metadata !"ushort", metadata !"uchar"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"objID", metadata !"size", metadata !"flags"}
!43 = metadata !{null, metadata !35, metadata !36, metadata !44, metadata !38, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<_Bool> &"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"prDone"}
!46 = metadata !{null, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<PRbus> &", metadata !"int", metadata !"short"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"pr", metadata !"addr", metadata !"areaID"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"hls::stream<PRbus> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"pr"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint>", metadata !"hls::stream<uint>", metadata !"hls::stream<PRbus>", metadata !"hls::stream<_Bool>"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"dout", metadata !"pr", metadata !"prDone"}
!58 = metadata !{null, metadata !35, metadata !36, metadata !59, metadata !38, metadata !60, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool &"}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!61 = metadata !{null, metadata !35, metadata !36, metadata !62, metadata !38, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const PRbus &"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!64 = metadata !{null, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !6}
!65 = metadata !{metadata !"kernel_arg_addr_space"}
!66 = metadata !{metadata !"kernel_arg_access_qual"}
!67 = metadata !{metadata !"kernel_arg_type"}
!68 = metadata !{metadata !"kernel_arg_type_qual"}
!69 = metadata !{metadata !"kernel_arg_name"}
!70 = metadata !{null, metadata !35, metadata !36, metadata !71, metadata !38, metadata !63, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!72 = metadata !{metadata !73, [1 x i32]* @llvm_global_ctors_0}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 31, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"llvm.global_ctors.0", metadata !77, metadata !"", i32 0, i32 31}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 0, i32 1}
!79 = metadata !{metadata !80, double* @conv64}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 63, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"conv64", metadata !77, metadata !"", i32 0, i32 63}
!84 = metadata !{metadata !85, float* @conv32}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 31, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"conv32", metadata !77, metadata !"", i32 0, i32 31}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"din.V", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"dout.V", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"pr.V.addr", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 15, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"pr.V.areaID", metadata !77, metadata !"unsigned short", i32 0, i32 15}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 0, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"prDone.V", metadata !77, metadata !"bool", i32 0, i32 0}
