; ModuleID = '/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wrapperAdmin_str = internal unnamed_addr constant [13 x i8] c"wrapperAdmin\00" ; [#uses=1 type=[13 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@header_size = internal unnamed_addr global i16 0 ; [#uses=3 type=i16*]
@header_objectID = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@header_methodID = internal unnamed_addr global i8 0 ; [#uses=4 type=i8*]
@header_cb = internal unnamed_addr global i16 0   ; [#uses=5 type=i16*]
@conv64 = global double 0.000000e+00              ; [#uses=0 type=double*]
@conv32 = global float 0.000000e+00               ; [#uses=0 type=float*]
@bufferRESP_OC_V_str = internal unnamed_addr constant [13 x i8] c"bufferRESP.V\00" ; [#uses=1 type=[13 x i8]*]
@bufferRESP_V = internal global i32 0             ; [#uses=7 type=i32*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@p_status = internal unnamed_addr global i4 0     ; [#uses=3 type=i4*]
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=11 type=[8 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=87 type=[1 x i8]*]

; [#uses=0]
define void @wrapperAdmin(i32* %din_V, i32* %dout_V, i32* %pr_V_addr, i16* %pr_V_areaID, i1* %prDone_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !89 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* @bufferRESP_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %din_V), !map !259
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %dout_V), !map !263
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %pr_V_addr), !map !267
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %pr_V_areaID), !map !271
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %prDone_V), !map !275
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @wrapperAdmin_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %prDone_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !89 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %pr_V_addr, i16* %pr_V_areaID, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !89 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %dout_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !89 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %din_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !89 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !89 ; [debug line = 125:1]
  call void @llvm.dbg.declare(metadata !{i32* %din_V}, metadata !279), !dbg !283 ; [debug line = 121:40] [debug variable = din.V]
  call void @llvm.dbg.declare(metadata !{i32* %dout_V}, metadata !284), !dbg !286 ; [debug line = 122:33] [debug variable = dout.V]
  call void @llvm.dbg.declare(metadata !{i32* %pr_V_addr}, metadata !287), !dbg !293 ; [debug line = 123:26] [debug variable = pr.V.addr]
  call void @llvm.dbg.declare(metadata !{i16* %pr_V_areaID}, metadata !294), !dbg !293 ; [debug line = 123:26] [debug variable = pr.V.areaID]
  call void @llvm.dbg.declare(metadata !{i1* %prDone_V}, metadata !299), !dbg !303 ; [debug line = 123:48] [debug variable = prDone.V]
  call fastcc void @Block__proc11(i32* %din_V, i32* %dout_V, i1* %prDone_V, i32* %pr_V_addr, i16* %pr_V_areaID)
  ret void, !dbg !304                             ; [debug line = 152:1]
}

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=61]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @getRequestHead(i32* %src_V) {
entry:
  %words32 = alloca [2 x i32], align 4            ; [#uses=3 type=[2 x i32]*]
  call void (...)* @_ssdm_op_SpecInterface(i32* %src_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %src_V}, i64 0, metadata !305), !dbg !311 ; [debug line = 17:43] [debug variable = src.V]
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %words32}, metadata !312), !dbg !318 ; [debug line = 19:7] [debug variable = words32]
  br label %0, !dbg !319                          ; [debug line = 21:15]

; <label>:0                                       ; preds = %1, %entry
  %it_i = phi i2 [ 0, %entry ], [ %it, %1 ]       ; [#uses=3 type=i2]
  %tmp_i = icmp eq i2 %it_i, -2, !dbg !319        ; [#uses=1 type=i1] [debug line = 21:15]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %it = add i2 %it_i, 1, !dbg !321                ; [#uses=1 type=i2] [debug line = 21:26]
  br i1 %tmp_i, label %getRequestHead.exit, label %1, !dbg !319 ; [debug line = 21:15]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i32* %src_V}, i64 0, metadata !322), !dbg !327 ; [debug line = 129:56@22:19] [debug variable = stream<unsigned int>.V]
  %tmp_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %src_V), !dbg !329 ; [#uses=1 type=i32] [debug line = 131:9@22:19]
  call void @llvm.dbg.value(metadata !{i32 %tmp_1}, i64 0, metadata !331), !dbg !329 ; [debug line = 131:9@22:19] [debug variable = tmp]
  %tmp_44_i = zext i2 %it_i to i64, !dbg !328     ; [#uses=1 type=i64] [debug line = 22:19]
  %words32_addr_2 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 %tmp_44_i, !dbg !328 ; [#uses=1 type=i32*] [debug line = 22:19]
  store i32 %tmp_1, i32* %words32_addr_2, align 4, !dbg !328 ; [debug line = 22:19]
  call void @llvm.dbg.value(metadata !{i2 %it}, i64 0, metadata !332), !dbg !321 ; [debug line = 21:26] [debug variable = it]
  br label %0, !dbg !321                          ; [debug line = 21:26]

getRequestHead.exit:                              ; preds = %0
  %words32_addr = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 0, !dbg !333 ; [#uses=1 type=i32*] [debug line = 24:3]
  %words32_load = load i32* %words32_addr, align 4, !dbg !333 ; [#uses=2 type=i32] [debug line = 24:3]
  %tmp_37_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %words32_load, i32 16, i32 23), !dbg !334 ; [#uses=1 type=i8] [debug line = 25:3]
  store i8 %tmp_37_i, i8* @header_objectID, align 1, !dbg !334 ; [debug line = 25:3]
  %tmp_39_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %words32_load, i32 8, i32 15), !dbg !335 ; [#uses=1 type=i8] [debug line = 26:3]
  store i8 %tmp_39_i, i8* @header_methodID, align 1, !dbg !335 ; [debug line = 26:3]
  %words32_addr_1 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 1, !dbg !336 ; [#uses=1 type=i32*] [debug line = 28:3]
  %words32_load_1 = load i32* %words32_addr_1, align 4, !dbg !336 ; [#uses=2 type=i32] [debug line = 28:3]
  %tmp_41_i = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %words32_load_1, i32 16, i32 31), !dbg !336 ; [#uses=1 type=i16] [debug line = 28:3]
  store i16 %tmp_41_i, i16* @header_cb, align 2, !dbg !336 ; [debug line = 28:3]
  %tmp = trunc i32 %words32_load_1 to i16, !dbg !337 ; [#uses=1 type=i16] [debug line = 29:3]
  store i16 %tmp, i16* @header_size, align 2, !dbg !337 ; [debug line = 29:3]
  ret void
}

; [#uses=2]
define internal fastcc void @forward(i32* %src_V, i16 signext %size) noinline {
  call void (...)* @_ssdm_op_SpecInterface(i32* %src_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %size_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %size) ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %size_read}, i64 0, metadata !338), !dbg !343 ; [debug line = 6:47] [debug variable = size]
  call void @llvm.dbg.value(metadata !{i32* %src_V}, i64 0, metadata !344), !dbg !346 ; [debug line = 6:36] [debug variable = src.V]
  call void @llvm.dbg.value(metadata !{i16 %size}, i64 0, metadata !338), !dbg !343 ; [debug line = 6:47] [debug variable = size]
  br label %1, !dbg !347                          ; [debug line = 9:3]

; <label>:1                                       ; preds = %2, %0
  %it = phi i16 [ 0, %0 ], [ %it_1, %2 ]          ; [#uses=2 type=i16]
  %tmp = icmp eq i16 %it, %size_read, !dbg !347   ; [#uses=1 type=i1] [debug line = 9:3]
  %it_1 = add i16 %it, 1, !dbg !349               ; [#uses=1 type=i16] [debug line = 11:5]
  br i1 %tmp, label %3, label %2, !dbg !347       ; [debug line = 9:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32* %src_V}, i64 0, metadata !322), !dbg !351 ; [debug line = 129:56@10:5] [debug variable = stream<unsigned int>.V]
  %tmp_1_0 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %src_V), !dbg !353 ; [#uses=0 type=i32] [debug line = 131:9@10:5]
  call void @llvm.dbg.value(metadata !{i32 %tmp_1_0}, i64 0, metadata !331), !dbg !353 ; [debug line = 131:9@10:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i16 %it_1}, i64 0, metadata !354), !dbg !349 ; [debug line = 11:5] [debug variable = it]
  br label %1, !dbg !355                          ; [debug line = 12:3]

; <label>:3                                       ; preds = %1
  ret void, !dbg !356                             ; [debug line = 13:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P.i16P(i32*, i16*, i32, i16) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %2) ; [#uses=0 type=i32]
  %empty_8 = call i16 @_autotb_FifoWrite_i16(i16* %1, i16 %3) ; [#uses=0 type=i16]
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=14]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_9 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_9
}

; [#uses=2]
define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_10 = trunc i32 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_10
}

; [#uses=1]
define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i32(i32* %0) ; [#uses=1 type=i1]
  ret i1 %empty
}

; [#uses=1]
define weak { i1, i1 } @_ssdm_op_NbRead.ap_fifo.volatile.i1P(i1*) {
entry:
  %empty = alloca i1                              ; [#uses=2 type=i1*]
  %empty_11 = call i1 @_autotb_FifoNbRead_i1(i1* %0, i1* %empty) ; [#uses=1 type=i1]
  %empty_12 = load i1* %empty                     ; [#uses=1 type=i1]
  %mrv_0 = insertvalue { i1, i1 } undef, i1 %empty_11, 0 ; [#uses=1 type={ i1, i1 }]
  %mrv_1 = insertvalue { i1, i1 } %mrv_0, i1 %empty_12, 1 ; [#uses=1 type={ i1, i1 }]
  ret { i1, i1 } %mrv_1
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i16.i8.i8(i16, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16                      ; [#uses=1 type=i16]
  %empty_13 = zext i8 %2 to i16                   ; [#uses=1 type=i16]
  %empty_14 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_15 = or i16 %empty_14, %empty_13         ; [#uses=1 type=i16]
  %empty_16 = zext i16 %0 to i32                  ; [#uses=1 type=i32]
  %empty_17 = zext i16 %empty_15 to i32           ; [#uses=1 type=i32]
  %empty_18 = shl i32 %empty_16, 16               ; [#uses=1 type=i32]
  %empty_19 = or i32 %empty_18, %empty_17         ; [#uses=1 type=i32]
  ret i32 %empty_19
}

; [#uses=2]
define weak i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone {
entry:
  %empty = zext i16 %0 to i32                     ; [#uses=1 type=i32]
  %empty_20 = zext i16 %1 to i32                  ; [#uses=1 type=i32]
  %empty_21 = shl i32 %empty, 16                  ; [#uses=1 type=i32]
  %empty_22 = or i32 %empty_21, %empty_20         ; [#uses=1 type=i32]
  ret i32 %empty_22
}

; [#uses=2]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i16 @_autotb_FifoWrite_i16(i16*, i16)

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare i1 @_autotb_FifoNbRead_i1(i1*, i1*)

; [#uses=1]
declare i1 @_autotb_FifoCanRead_i32(i32*)

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define internal fastcc void @Block__proc11(i32* %din_V, i32* %dout_V, i1* %prDone_V, i32* %pr_V_addr, i16* %pr_V_areaID) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i32* %din_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %dout_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i16* %pr_V_areaID, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %pr_V_addr, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i1* %prDone_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* @bufferRESP_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %words32 = alloca [2 x i32], align 4            ; [#uses=3 type=[2 x i32]*]
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %words32}, metadata !357) nounwind, !dbg !360 ; [debug line = 89:7@80:3@132:7] [debug variable = words32]
  call fastcc void @getRequestHead(i32* %din_V), !dbg !369 ; [debug line = 126:3]
  %header_objectID_load = load i8* @header_objectID, align 1, !dbg !370 ; [#uses=1 type=i8] [debug line = 128:3]
  %tmp = icmp eq i8 %header_objectID_load, 2, !dbg !370 ; [#uses=1 type=i1] [debug line = 128:3]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @bufferRESP_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 16, i32 16, i32* @bufferRESP_V, i32* @bufferRESP_V) ; [#uses=0 type=i32]
  br i1 %tmp, label %0, label %1, !dbg !370       ; [debug line = 128:3]

; <label>:0                                       ; preds = %newFuncRoot
  %header_methodID_load = load i8* @header_methodID, align 1, !dbg !371 ; [#uses=2 type=i8] [debug line = 129:5]
  %tmp_1 = icmp eq i8 %header_methodID_load, 1, !dbg !371 ; [#uses=1 type=i1] [debug line = 129:5]
  br i1 %tmp_1, label %2, label %3, !dbg !371     ; [debug line = 129:5]

; <label>:1                                       ; preds = %newFuncRoot
  %header_size_load = load i16* @header_size, align 2, !dbg !372 ; [#uses=1 type=i16] [debug line = 148:5]
  call fastcc void @forward(i32* %din_V, i16 signext %header_size_load), !dbg !372 ; [debug line = 148:5]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !374), !dbg !381 ; [debug line = 34:42@149:5] [debug variable = dst.V]
  %header_cb_load = load i16* @header_cb, align 2, !dbg !382 ; [#uses=1 type=i16] [debug line = 40:3@149:5]
  %header_methodID_load_1 = load i8* @header_methodID, align 1, !dbg !382 ; [#uses=1 type=i8] [debug line = 40:3@149:5]
  %tmp_6 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i8.i8(i16 %header_cb_load, i8 %header_methodID_load_1, i8 0), !dbg !382 ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  %words32_5 = or i32 %tmp_6, 3, !dbg !382        ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  call void @llvm.dbg.value(metadata !{i32 %words32_5}, i64 0, metadata !384) nounwind, !dbg !382 ; [debug line = 40:3@149:5] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !385), !dbg !389 ; [debug line = 144:48@41:3@149:5] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.value(metadata !{i32 %words32_5}, i64 0, metadata !390) nounwind, !dbg !392 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32_5}, i64 0, metadata !393), !dbg !392 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_5), !dbg !394 ; [debug line = 146:9@41:3@149:5]
  br label %.ret.exitStub

; <label>:2                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !395), !dbg !398 ; [debug line = 34:42@130:7] [debug variable = dst.V]
  %header_cb_load_1 = load i16* @header_cb, align 2, !dbg !399 ; [#uses=1 type=i16] [debug line = 40:3@130:7]
  %tmp_s = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %header_cb_load_1, i16 0), !dbg !399 ; [#uses=1 type=i32] [debug line = 40:3@130:7]
  %words32_6 = or i32 %tmp_s, 257, !dbg !399      ; [#uses=1 type=i32] [debug line = 40:3@130:7]
  call void @llvm.dbg.value(metadata !{i32 %words32_6}, i64 0, metadata !400) nounwind, !dbg !399 ; [debug line = 40:3@130:7] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !401), !dbg !404 ; [debug line = 144:48@41:3@130:7] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.value(metadata !{i32 %words32_6}, i64 0, metadata !405) nounwind, !dbg !406 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32_6}, i64 0, metadata !393), !dbg !406 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_6), !dbg !407 ; [debug line = 146:9@41:3@130:7]
  call void @llvm.dbg.value(metadata !{i32* %din_V}, i64 0, metadata !408), !dbg !410 ; [debug line = 77:46@132:7] [debug variable = src.V]
  call void @llvm.dbg.value(metadata !{i32* %pr_V_addr}, i64 0, metadata !411), !dbg !414 ; [debug line = 78:25@132:7] [debug variable = pr.V.addr]
  call void @llvm.dbg.value(metadata !{i16* %pr_V_areaID}, i64 0, metadata !415), !dbg !414 ; [debug line = 78:25@132:7] [debug variable = pr.V.areaID]
  call void @llvm.dbg.value(metadata !{i32* %din_V}, i64 0, metadata !417), !dbg !419 ; [debug line = 87:53@80:3@132:7] [debug variable = src.V]
  br label %4, !dbg !420                          ; [debug line = 91:15@80:3@132:7]

; <label>:3                                       ; preds = %0
  %tmp_4 = icmp eq i8 %header_methodID_load, 2, !dbg !422 ; [#uses=1 type=i1] [debug line = 135:7]
  br i1 %tmp_4, label %5, label %6, !dbg !422     ; [debug line = 135:7]

; <label>:4                                       ; preds = %7, %2
  %it_0_i_i = phi i2 [ 0, %2 ], [ %it, %7 ]       ; [#uses=3 type=i2]
  %tmp_5 = icmp eq i2 %it_0_i_i, -2, !dbg !420    ; [#uses=1 type=i1] [debug line = 91:15@80:3@132:7]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %it = add i2 %it_0_i_i, 1, !dbg !424            ; [#uses=1 type=i2] [debug line = 91:26@80:3@132:7]
  br i1 %tmp_5, label %wrapper_newObject.exit, label %7, !dbg !420 ; [debug line = 91:15@80:3@132:7]

; <label>:5                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i1* %prDone_V}, i64 0, metadata !425), !dbg !433 ; [debug line = 108:35@136:2] [debug variable = prDone.V]
  call void @llvm.dbg.value(metadata !{i1* %prDone_V}, i64 0, metadata !434), !dbg !441 ; [debug line = 136:48@111:3@136:2] [debug variable = stream<bool>.V]
  %prDone_V_read = call { i1, i1 } @_ssdm_op_NbRead.ap_fifo.volatile.i1P(i1* %prDone_V), !dbg !442 ; [#uses=1 type={ i1, i1 }] [debug line = 138:24@111:3@136:2]
  %tmp_16 = extractvalue { i1, i1 } %prDone_V_read, 1, !dbg !442 ; [#uses=1 type=i1] [debug line = 138:24@111:3@136:2]
  call void @llvm.dbg.value(metadata !{i1 %tmp_16}, i64 0, metadata !444), !dbg !445 ; [debug line = 137:22@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1 %tmp_16}, i64 0, metadata !446) nounwind, !dbg !447 ; [debug line = 139:9@111:3@136:2] [debug variable = aux]
  br i1 %tmp_16, label %8, label %wrapper_status.exit, !dbg !448 ; [debug line = 112:3@136:2]

; <label>:6                                       ; preds = %3
  %header_size_load_1 = load i16* @header_size, align 2, !dbg !449 ; [#uses=1 type=i16] [debug line = 141:2]
  call fastcc void @forward(i32* %din_V, i16 signext %header_size_load_1), !dbg !449 ; [debug line = 141:2]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !451), !dbg !454 ; [debug line = 34:42@142:2] [debug variable = dst.V]
  %header_cb_load_2 = load i16* @header_cb, align 2, !dbg !455 ; [#uses=1 type=i16] [debug line = 40:3@142:2]
  %header_methodID_load_2 = load i8* @header_methodID, align 1, !dbg !455 ; [#uses=1 type=i8] [debug line = 40:3@142:2]
  %tmp_7 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i8.i8(i16 %header_cb_load_2, i8 %header_methodID_load_2, i8 0), !dbg !455 ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  %words32_7 = or i32 %tmp_7, 3, !dbg !455        ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  call void @llvm.dbg.value(metadata !{i32 %words32_7}, i64 0, metadata !456) nounwind, !dbg !455 ; [debug line = 40:3@142:2] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !457), !dbg !460 ; [debug line = 144:48@41:3@142:2] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.value(metadata !{i32 %words32_7}, i64 0, metadata !461) nounwind, !dbg !462 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32_7}, i64 0, metadata !393), !dbg !462 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_7), !dbg !463 ; [debug line = 146:9@41:3@142:2]
  br label %buildResponse.exit

wrapper_newObject.exit:                           ; preds = %4
  %words32_addr = getelementptr [2 x i32]* %words32, i64 0, i64 0 ; [#uses=1 type=i32*]
  %aux = load i32* %words32_addr, align 4, !dbg !464 ; [#uses=1 type=i32] [debug line = 95:25@80:3@132:7]
  %words32_addr_1 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 1, !dbg !464 ; [#uses=1 type=i32*] [debug line = 95:25@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i32 %aux}, i64 0, metadata !465) nounwind, !dbg !471 ; [debug line = 31:3@95:25@80:3@132:7] [debug variable = aux]
  %words32_load_1 = load i32* %words32_addr_1, align 4, !dbg !472 ; [#uses=1 type=i32] [debug line = 96:19@80:3@132:7]
  %aux_3 = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %words32_load_1, i32 16, i32 31) ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %aux_3}, i64 0, metadata !473) nounwind, !dbg !479 ; [debug line = 22:3@97:27@80:3@132:7] [debug variable = aux]
  call void @llvm.dbg.value(metadata !{i32* %pr_V_addr}, i64 0, metadata !480), !dbg !486 ; [debug line = 63:31@81:3@132:7] [debug variable = pr.V.addr]
  call void @llvm.dbg.value(metadata !{i16* %pr_V_areaID}, i64 0, metadata !487), !dbg !486 ; [debug line = 63:31@81:3@132:7] [debug variable = pr.V.areaID]
  call void @llvm.dbg.value(metadata !{i32 %aux}, i64 0, metadata !488) nounwind, !dbg !489 ; [debug line = 63:39@81:3@132:7] [debug variable = addr]
  call void @llvm.dbg.value(metadata !{i16 %aux_3}, i64 0, metadata !490) nounwind, !dbg !491 ; [debug line = 63:51@81:3@132:7] [debug variable = areaID]
  call void @llvm.dbg.value(metadata !{i16 %aux_3}, i64 0, metadata !492) nounwind, !dbg !496 ; [debug line = 66:3@81:3@132:7] [debug variable = aux.areaID]
  call void @llvm.dbg.value(metadata !{i32 %aux}, i64 0, metadata !497) nounwind, !dbg !498 ; [debug line = 67:3@81:3@132:7] [debug variable = aux.addr]
  call void @llvm.dbg.value(metadata !{i32* %pr_V_addr}, i64 0, metadata !499), !dbg !505 ; [debug line = 144:48@68:3@81:3@132:7] [debug variable = stream<PRbus>.V.addr]
  call void @llvm.dbg.value(metadata !{i16* %pr_V_areaID}, i64 0, metadata !506), !dbg !505 ; [debug line = 144:48@68:3@81:3@132:7] [debug variable = stream<PRbus>.V.areaID]
  call void @llvm.dbg.value(metadata !{i32 %aux}, i64 0, metadata !508), !dbg !511 ; [debug line = 145:31@68:3@81:3@132:7] [debug variable = tmp.addr]
  call void @llvm.dbg.value(metadata !{i16 %aux_3}, i64 0, metadata !512), !dbg !511 ; [debug line = 145:31@68:3@81:3@132:7] [debug variable = tmp.areaID]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P.i16P(i32* %pr_V_addr, i16* %pr_V_areaID, i32 %aux, i16 %aux_3), !dbg !513 ; [debug line = 146:9@68:3@81:3@132:7]
  store i4 2, i4* @p_status, align 1, !dbg !514   ; [debug line = 82:3@132:7]
  br label %11, !dbg !515                         ; [debug line = 133:5]

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.value(metadata !{i32* %din_V}, i64 0, metadata !516), !dbg !519 ; [debug line = 129:56@92:19@80:3@132:7] [debug variable = stream<unsigned int>.V]
  %tmp_9 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %din_V), !dbg !520 ; [#uses=1 type=i32] [debug line = 131:9@92:19@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i32 %tmp_9}, i64 0, metadata !331), !dbg !520 ; [debug line = 131:9@92:19@80:3@132:7] [debug variable = tmp]
  %tmp_10 = zext i2 %it_0_i_i to i64, !dbg !518   ; [#uses=1 type=i64] [debug line = 92:19@80:3@132:7]
  %words32_addr_2 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 %tmp_10, !dbg !518 ; [#uses=1 type=i32*] [debug line = 92:19@80:3@132:7]
  store i32 %tmp_9, i32* %words32_addr_2, align 4, !dbg !518 ; [debug line = 92:19@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i2 %it}, i64 0, metadata !521) nounwind, !dbg !424 ; [debug line = 91:26@80:3@132:7] [debug variable = it]
  br label %4, !dbg !424                          ; [debug line = 91:26@80:3@132:7]

; <label>:8                                       ; preds = %5
  store i4 1, i4* @p_status, align 1, !dbg !522   ; [debug line = 113:5@136:2]
  br label %wrapper_status.exit, !dbg !522        ; [debug line = 113:5@136:2]

wrapper_status.exit:                              ; preds = %8, %5
  %p_status_load = load i4* @p_status, align 1    ; [#uses=1 type=i4]
  %tmp_11 = zext i4 %p_status_load to i32         ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %tmp_11}, i64 0, metadata !523) nounwind, !dbg !525 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_11}, i64 0, metadata !393), !dbg !525 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* @bufferRESP_V, i32 %tmp_11), !dbg !526 ; [debug line = 146:9@114:3@136:2]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !527), !dbg !530 ; [debug line = 34:42@137:2] [debug variable = dst.V]
  %header_cb_load_3 = load i16* @header_cb, align 2, !dbg !531 ; [#uses=1 type=i16] [debug line = 40:3@137:2]
  %tmp_12 = call i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16 %header_cb_load_3, i16 0), !dbg !531 ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  %words32_8 = or i32 %tmp_12, 517, !dbg !531     ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  call void @llvm.dbg.value(metadata !{i32 %words32_8}, i64 0, metadata !532) nounwind, !dbg !531 ; [debug line = 40:3@137:2] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !533), !dbg !536 ; [debug line = 144:48@41:3@137:2] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.value(metadata !{i32 %words32_8}, i64 0, metadata !537) nounwind, !dbg !538 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32_8}, i64 0, metadata !393), !dbg !538 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %words32_8), !dbg !539 ; [debug line = 146:9@41:3@137:2]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !540), !dbg !544 ; [debug line = 144:48@44:5@137:2] [debug variable = stream<unsigned int>.V]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 131073), !dbg !545 ; [debug line = 146:9@44:5@137:2]
  br label %9, !dbg !546                          ; [debug line = 45:5@137:2]

; <label>:9                                       ; preds = %10, %wrapper_status.exit
  %tmp_14 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i32P(i32* @bufferRESP_V, i32 1), !dbg !547 ; [#uses=1 type=i1] [debug line = 113:20@45:13@137:2]
  call void @llvm.dbg.value(metadata !{i1 %tmp_14}, i64 0, metadata !551) nounwind, !dbg !547 ; [debug line = 113:20@45:13@137:2] [debug variable = tmp]
  br i1 %tmp_14, label %10, label %buildResponse.exit.loopexit, !dbg !550 ; [debug line = 45:13@137:2]

.ret.exitStub:                                    ; preds = %11, %1
  ret void

; <label>:10                                      ; preds = %9
  %tmp_15 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* @bufferRESP_V), !dbg !552 ; [#uses=1 type=i32] [debug line = 131:9@46:17@137:2]
  call void @llvm.dbg.value(metadata !{i32 %tmp_15}, i64 0, metadata !331), !dbg !552 ; [debug line = 131:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %dout_V}, i64 0, metadata !554), !dbg !556 ; [debug line = 144:48@46:17@137:2] [debug variable = stream<unsigned int>.V]
  call void @llvm.dbg.value(metadata !{i32 %tmp_15}, i64 0, metadata !557) nounwind, !dbg !558 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_15}, i64 0, metadata !393), !dbg !558 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %dout_V, i32 %tmp_15), !dbg !559 ; [debug line = 146:9@46:17@137:2]
  br label %9, !dbg !553                          ; [debug line = 46:17@137:2]

buildResponse.exit.loopexit:                      ; preds = %9
  br label %buildResponse.exit

buildResponse.exit:                               ; preds = %buildResponse.exit.loopexit, %6
  br label %11

; <label>:11                                      ; preds = %buildResponse.exit, %wrapper_newObject.exit
  br label %.ret.exitStub, !dbg !560              ; [debug line = 146:3]
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
!89 = metadata !{i32 125, i32 1, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 124, i32 1, metadata !92, i32 12} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786478, i32 0, metadata !92, metadata !"wrapperAdmin", metadata !"wrapperAdmin", metadata !"_Z12wrapperAdminN3hls6streamIjEES1_NS0_I5PRbusEENS0_IbEE", metadata !92, i32 121, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 124} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786473, metadata !"./wrapperAdmin.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !95, metadata !95, metadata !151, metadata !210}
!95 = metadata !{i32 786434, metadata !96, metadata !"stream<unsigned int>", metadata !97, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !98, i32 0, null, metadata !149} ; [ DW_TAG_class_type ]
!96 = metadata !{i32 786489, null, metadata !"hls", metadata !97, i32 69} ; [ DW_TAG_namespace ]
!97 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!98 = metadata !{metadata !99, metadata !101, metadata !107, metadata !113, metadata !118, metadata !122, metadata !126, metadata !131, metadata !136, metadata !137, metadata !138, metadata !141, metadata !144, metadata !145, metadata !148}
!99 = metadata !{i32 786445, metadata !95, metadata !"V", metadata !97, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ]
!100 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 786478, i32 0, metadata !95, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 83, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 83} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !104}
!104 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !95} ; [ DW_TAG_pointer_type ]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!107 = metadata !{i32 786478, i32 0, metadata !95, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 86, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 86} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !104, metadata !110}
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_const_type ]
!112 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 786478, i32 0, metadata !95, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 91, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !105, i32 91} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !104, metadata !116}
!116 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_reference_type ]
!117 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_const_type ]
!118 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIjEaSERKS1_", metadata !97, i32 94, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !105, i32 94} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{metadata !121, metadata !104, metadata !116}
!121 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_reference_type ]
!122 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIjErsERj", metadata !97, i32 101, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 101} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{null, metadata !104, metadata !125}
!125 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_reference_type ]
!126 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIjElsERKj", metadata !97, i32 105, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 105} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{null, metadata !104, metadata !129}
!129 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_reference_type ]
!130 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_const_type ]
!131 = metadata !{i32 786478, i32 0, metadata !95, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !97, i32 112, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 112} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{metadata !134, metadata !135}
!134 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !117} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 786478, i32 0, metadata !95, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIjE4fullEv", metadata !97, i32 117, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 117} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786478, i32 0, metadata !95, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readERj", metadata !97, i32 123, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 123} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786478, i32 0, metadata !95, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !97, i32 129, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 129} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{metadata !100, metadata !104}
!141 = metadata !{i32 786478, i32 0, metadata !95, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIjE7read_nbERj", metadata !97, i32 136, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 136} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{metadata !134, metadata !104, metadata !125}
!144 = metadata !{i32 786478, i32 0, metadata !95, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !97, i32 144, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 144} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786478, i32 0, metadata !95, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIjE8write_nbERKj", metadata !97, i32 150, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 150} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{metadata !134, metadata !104, metadata !129}
!148 = metadata !{i32 786478, i32 0, metadata !95, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIjE4sizeEv", metadata !97, i32 157, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 157} ; [ DW_TAG_subprogram ]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !100, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!151 = metadata !{i32 786434, metadata !96, metadata !"stream<PRbus>", metadata !97, i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !152, i32 0, null, metadata !208} ; [ DW_TAG_class_type ]
!152 = metadata !{metadata !153, metadata !164, metadata !168, metadata !171, metadata !176, metadata !180, metadata !184, metadata !189, metadata !193, metadata !194, metadata !195, metadata !198, metadata !201, metadata !202, metadata !205}
!153 = metadata !{i32 786445, metadata !151, metadata !"V", metadata !97, i32 163, i64 64, i64 32, i64 0, i32 0, metadata !154} ; [ DW_TAG_member ]
!154 = metadata !{i32 786434, null, metadata !"", metadata !155, i32 19, i64 64, i64 32, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_class_type ]
!155 = metadata !{i32 786473, metadata !"./wrapperAdmin.h", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!156 = metadata !{metadata !157, metadata !158, metadata !160}
!157 = metadata !{i32 786445, metadata !154, metadata !"addr", metadata !155, i32 20, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ]
!158 = metadata !{i32 786445, metadata !154, metadata !"areaID", metadata !155, i32 21, i64 16, i64 16, i64 32, i32 0, metadata !159} ; [ DW_TAG_member ]
!159 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!160 = metadata !{i32 786478, i32 0, metadata !154, metadata !"", metadata !"", metadata !"", metadata !155, i32 19, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !105, i32 19} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{null, metadata !163}
!163 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !154} ; [ DW_TAG_pointer_type ]
!164 = metadata !{i32 786478, i32 0, metadata !151, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 83, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 83} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !167}
!167 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !151} ; [ DW_TAG_pointer_type ]
!168 = metadata !{i32 786478, i32 0, metadata !151, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 86, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 86} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{null, metadata !167, metadata !110}
!171 = metadata !{i32 786478, i32 0, metadata !151, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 91, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !105, i32 91} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !167, metadata !174}
!174 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_reference_type ]
!175 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_const_type ]
!176 = metadata !{i32 786478, i32 0, metadata !151, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI5PRbusEaSERKS2_", metadata !97, i32 94, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !105, i32 94} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{metadata !179, metadata !167, metadata !174}
!179 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_reference_type ]
!180 = metadata !{i32 786478, i32 0, metadata !151, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI5PRbusErsERS1_", metadata !97, i32 101, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 101} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{null, metadata !167, metadata !183}
!183 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_reference_type ]
!184 = metadata !{i32 786478, i32 0, metadata !151, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI5PRbusElsERKS1_", metadata !97, i32 105, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 105} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !167, metadata !187}
!187 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_reference_type ]
!188 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_const_type ]
!189 = metadata !{i32 786478, i32 0, metadata !151, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI5PRbusE5emptyEv", metadata !97, i32 112, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 112} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !134, metadata !192}
!192 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !175} ; [ DW_TAG_pointer_type ]
!193 = metadata !{i32 786478, i32 0, metadata !151, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI5PRbusE4fullEv", metadata !97, i32 117, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 117} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786478, i32 0, metadata !151, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI5PRbusE4readERS1_", metadata !97, i32 123, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 123} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 786478, i32 0, metadata !151, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI5PRbusE4readEv", metadata !97, i32 129, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 129} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !154, metadata !167}
!198 = metadata !{i32 786478, i32 0, metadata !151, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI5PRbusE7read_nbERS1_", metadata !97, i32 136, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 136} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !134, metadata !167, metadata !183}
!201 = metadata !{i32 786478, i32 0, metadata !151, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI5PRbusE5writeERKS1_", metadata !97, i32 144, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 144} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786478, i32 0, metadata !151, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI5PRbusE8write_nbERKS1_", metadata !97, i32 150, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 150} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !134, metadata !167, metadata !187}
!205 = metadata !{i32 786478, i32 0, metadata !151, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI5PRbusE4sizeEv", metadata !97, i32 157, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 157} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !100, metadata !167}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !154, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!210 = metadata !{i32 786434, metadata !96, metadata !"stream<bool>", metadata !97, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !211, i32 0, null, metadata !257} ; [ DW_TAG_class_type ]
!211 = metadata !{metadata !212, metadata !213, metadata !217, metadata !220, metadata !225, metadata !229, metadata !233, metadata !238, metadata !242, metadata !243, metadata !244, metadata !247, metadata !250, metadata !251, metadata !254}
!212 = metadata !{i32 786445, metadata !210, metadata !"V", metadata !97, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !134} ; [ DW_TAG_member ]
!213 = metadata !{i32 786478, i32 0, metadata !210, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 83, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 83} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{null, metadata !216}
!216 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !210} ; [ DW_TAG_pointer_type ]
!217 = metadata !{i32 786478, i32 0, metadata !210, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 86, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 86} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!219 = metadata !{null, metadata !216, metadata !110}
!220 = metadata !{i32 786478, i32 0, metadata !210, metadata !"stream", metadata !"stream", metadata !"", metadata !97, i32 91, metadata !221, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !105, i32 91} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{null, metadata !216, metadata !223}
!223 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_reference_type ]
!224 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_const_type ]
!225 = metadata !{i32 786478, i32 0, metadata !210, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIbEaSERKS1_", metadata !97, i32 94, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !105, i32 94} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !228, metadata !216, metadata !223}
!228 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_reference_type ]
!229 = metadata !{i32 786478, i32 0, metadata !210, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIbErsERb", metadata !97, i32 101, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 101} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{null, metadata !216, metadata !232}
!232 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_reference_type ]
!233 = metadata !{i32 786478, i32 0, metadata !210, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIbElsERKb", metadata !97, i32 105, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 105} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{null, metadata !216, metadata !236}
!236 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_reference_type ]
!237 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_const_type ]
!238 = metadata !{i32 786478, i32 0, metadata !210, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIbE5emptyEv", metadata !97, i32 112, metadata !239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 112} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!240 = metadata !{metadata !134, metadata !241}
!241 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !224} ; [ DW_TAG_pointer_type ]
!242 = metadata !{i32 786478, i32 0, metadata !210, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIbE4fullEv", metadata !97, i32 117, metadata !239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 117} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786478, i32 0, metadata !210, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readERb", metadata !97, i32 123, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 123} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786478, i32 0, metadata !210, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !97, i32 129, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 129} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{metadata !134, metadata !216}
!247 = metadata !{i32 786478, i32 0, metadata !210, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !97, i32 136, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 136} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{metadata !134, metadata !216, metadata !232}
!250 = metadata !{i32 786478, i32 0, metadata !210, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !97, i32 144, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 144} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786478, i32 0, metadata !210, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIbE8write_nbERKb", metadata !97, i32 150, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 150} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !134, metadata !216, metadata !236}
!254 = metadata !{i32 786478, i32 0, metadata !210, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIbE4sizeEv", metadata !97, i32 157, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !105, i32 157} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{metadata !100, metadata !216}
!257 = metadata !{metadata !258}
!258 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !134, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!259 = metadata !{metadata !260}
!260 = metadata !{i32 0, i32 31, metadata !261}
!261 = metadata !{metadata !262}
!262 = metadata !{metadata !"din.V", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!263 = metadata !{metadata !264}
!264 = metadata !{i32 0, i32 31, metadata !265}
!265 = metadata !{metadata !266}
!266 = metadata !{metadata !"dout.V", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!267 = metadata !{metadata !268}
!268 = metadata !{i32 0, i32 31, metadata !269}
!269 = metadata !{metadata !270}
!270 = metadata !{metadata !"pr.V.addr", metadata !77, metadata !"unsigned int", i32 0, i32 31}
!271 = metadata !{metadata !272}
!272 = metadata !{i32 0, i32 15, metadata !273}
!273 = metadata !{metadata !274}
!274 = metadata !{metadata !"pr.V.areaID", metadata !77, metadata !"unsigned short", i32 0, i32 15}
!275 = metadata !{metadata !276}
!276 = metadata !{i32 0, i32 0, metadata !277}
!277 = metadata !{metadata !278}
!278 = metadata !{metadata !"prDone.V", metadata !77, metadata !"bool", i32 0, i32 0}
!279 = metadata !{i32 790531, metadata !280, metadata !"din.V", null, i32 121, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!280 = metadata !{i32 786689, metadata !91, metadata !"din", metadata !92, i32 16777337, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 786438, metadata !96, metadata !"stream<unsigned int>", metadata !97, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !282, i32 0, null, metadata !149} ; [ DW_TAG_class_field_type ]
!282 = metadata !{metadata !99}
!283 = metadata !{i32 121, i32 40, metadata !91, null}
!284 = metadata !{i32 790531, metadata !285, metadata !"dout.V", null, i32 122, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!285 = metadata !{i32 786689, metadata !91, metadata !"dout", metadata !92, i32 33554554, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!286 = metadata !{i32 122, i32 33, metadata !91, null}
!287 = metadata !{i32 790531, metadata !288, metadata !"pr.V.addr", null, i32 123, metadata !289, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!288 = metadata !{i32 786689, metadata !91, metadata !"pr", metadata !92, i32 50331771, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!289 = metadata !{i32 786438, metadata !96, metadata !"stream<PRbus>", metadata !97, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !290, i32 0, null, metadata !208} ; [ DW_TAG_class_field_type ]
!290 = metadata !{metadata !291}
!291 = metadata !{i32 786438, null, metadata !"", metadata !155, i32 19, i64 32, i64 32, i32 0, i32 0, null, metadata !292, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!292 = metadata !{metadata !157}
!293 = metadata !{i32 123, i32 26, metadata !91, null}
!294 = metadata !{i32 790531, metadata !288, metadata !"pr.V.areaID", null, i32 123, metadata !295, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!295 = metadata !{i32 786438, metadata !96, metadata !"stream<PRbus>", metadata !97, i32 79, i64 16, i64 32, i32 0, i32 0, null, metadata !296, i32 0, null, metadata !208} ; [ DW_TAG_class_field_type ]
!296 = metadata !{metadata !297}
!297 = metadata !{i32 786438, null, metadata !"", metadata !155, i32 19, i64 16, i64 32, i32 0, i32 0, null, metadata !298, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!298 = metadata !{metadata !158}
!299 = metadata !{i32 790531, metadata !300, metadata !"prDone.V", null, i32 123, metadata !301, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!300 = metadata !{i32 786689, metadata !91, metadata !"prDone", metadata !92, i32 67108987, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!301 = metadata !{i32 786438, metadata !96, metadata !"stream<bool>", metadata !97, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !302, i32 0, null, metadata !257} ; [ DW_TAG_class_field_type ]
!302 = metadata !{metadata !212}
!303 = metadata !{i32 123, i32 48, metadata !91, null}
!304 = metadata !{i32 152, i32 1, metadata !90, null}
!305 = metadata !{i32 790531, metadata !306, metadata !"src.V", null, i32 17, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!306 = metadata !{i32 786689, metadata !307, metadata !"src", metadata !92, i32 16777233, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!307 = metadata !{i32 786478, i32 0, metadata !92, metadata !"getRequestHead", metadata !"getRequestHead", metadata !"_Z14getRequestHeadRN3hls6streamIjEE", metadata !92, i32 17, metadata !308, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 18} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!309 = metadata !{null, metadata !121}
!310 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ]
!311 = metadata !{i32 17, i32 43, metadata !307, null}
!312 = metadata !{i32 786688, metadata !313, metadata !"words32", metadata !92, i32 19, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!313 = metadata !{i32 786443, metadata !307, i32 18, i32 1, metadata !92, i32 2} ; [ DW_TAG_lexical_block ]
!314 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !315, metadata !316, i32 0, i32 0} ; [ DW_TAG_array_type ]
!315 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!316 = metadata !{metadata !317}
!317 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!318 = metadata !{i32 19, i32 7, metadata !313, null}
!319 = metadata !{i32 21, i32 15, metadata !320, null}
!320 = metadata !{i32 786443, metadata !313, i32 21, i32 3, metadata !92, i32 3} ; [ DW_TAG_lexical_block ]
!321 = metadata !{i32 21, i32 26, metadata !320, null}
!322 = metadata !{i32 790531, metadata !323, metadata !"stream<unsigned int>.V", null, i32 129, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!323 = metadata !{i32 786689, metadata !324, metadata !"this", metadata !97, i32 16777345, metadata !325, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!324 = metadata !{i32 786478, i32 0, metadata !96, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !97, i32 129, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !138, metadata !105, i32 129} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!326 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ]
!327 = metadata !{i32 129, i32 56, metadata !324, metadata !328}
!328 = metadata !{i32 22, i32 19, metadata !320, null}
!329 = metadata !{i32 131, i32 9, metadata !330, metadata !328}
!330 = metadata !{i32 786443, metadata !324, i32 129, i32 63, metadata !97, i32 24} ; [ DW_TAG_lexical_block ]
!331 = metadata !{i32 786688, metadata !330, metadata !"tmp", metadata !97, i32 130, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 786688, metadata !320, metadata !"it", metadata !92, i32 21, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!333 = metadata !{i32 24, i32 3, metadata !313, null}
!334 = metadata !{i32 25, i32 3, metadata !313, null}
!335 = metadata !{i32 26, i32 3, metadata !313, null}
!336 = metadata !{i32 28, i32 3, metadata !313, null}
!337 = metadata !{i32 29, i32 3, metadata !313, null}
!338 = metadata !{i32 786689, metadata !339, metadata !"size", metadata !92, i32 33554438, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!339 = metadata !{i32 786478, i32 0, metadata !92, metadata !"forward", metadata !"forward", metadata !"_Z7forwardRN3hls6streamIjEEs", metadata !92, i32 6, metadata !340, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 7} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!341 = metadata !{null, metadata !121, metadata !342}
!342 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!343 = metadata !{i32 6, i32 47, metadata !339, null}
!344 = metadata !{i32 790531, metadata !345, metadata !"src.V", null, i32 6, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!345 = metadata !{i32 786689, metadata !339, metadata !"src", metadata !92, i32 16777222, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!346 = metadata !{i32 6, i32 36, metadata !339, null}
!347 = metadata !{i32 9, i32 3, metadata !348, null}
!348 = metadata !{i32 786443, metadata !339, i32 7, i32 1, metadata !92, i32 0} ; [ DW_TAG_lexical_block ]
!349 = metadata !{i32 11, i32 5, metadata !350, null}
!350 = metadata !{i32 786443, metadata !348, i32 9, i32 20, metadata !92, i32 1} ; [ DW_TAG_lexical_block ]
!351 = metadata !{i32 129, i32 56, metadata !324, metadata !352}
!352 = metadata !{i32 10, i32 5, metadata !350, null}
!353 = metadata !{i32 131, i32 9, metadata !330, metadata !352}
!354 = metadata !{i32 786688, metadata !348, metadata !"it", metadata !92, i32 8, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!355 = metadata !{i32 12, i32 3, metadata !350, null}
!356 = metadata !{i32 13, i32 1, metadata !348, null}
!357 = metadata !{i32 786688, metadata !358, metadata !"words32", metadata !92, i32 89, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 786443, metadata !359, i32 88, i32 1, metadata !92, i32 9} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 786478, i32 0, metadata !92, metadata !"readParameters_newObject", metadata !"readParameters_newObject", metadata !"_Z24readParameters_newObjectRN3hls6streamIjEE", metadata !92, i32 87, metadata !308, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 88} ; [ DW_TAG_subprogram ]
!360 = metadata !{i32 89, i32 7, metadata !358, metadata !361}
!361 = metadata !{i32 80, i32 3, metadata !362, metadata !366}
!362 = metadata !{i32 786443, metadata !363, i32 79, i32 1, metadata !92, i32 8} ; [ DW_TAG_lexical_block ]
!363 = metadata !{i32 786478, i32 0, metadata !92, metadata !"wrapper_newObject", metadata !"wrapper_newObject", metadata !"_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE", metadata !92, i32 77, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 79} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!365 = metadata !{null, metadata !121, metadata !179}
!366 = metadata !{i32 132, i32 7, metadata !367, null}
!367 = metadata !{i32 786443, metadata !368, i32 129, i32 30, metadata !92, i32 14} ; [ DW_TAG_lexical_block ]
!368 = metadata !{i32 786443, metadata !90, i32 128, i32 28, metadata !92, i32 13} ; [ DW_TAG_lexical_block ]
!369 = metadata !{i32 126, i32 3, metadata !90, null}
!370 = metadata !{i32 128, i32 3, metadata !90, null}
!371 = metadata !{i32 129, i32 5, metadata !368, null}
!372 = metadata !{i32 148, i32 5, metadata !373, null}
!373 = metadata !{i32 786443, metadata !90, i32 147, i32 7, metadata !92, i32 18} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 790531, metadata !375, metadata !"dst.V", null, i32 34, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!375 = metadata !{i32 786689, metadata !376, metadata !"dst", metadata !92, i32 16777250, metadata !121, i32 0, metadata !380} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 786478, i32 0, metadata !92, metadata !"buildResponse", metadata !"buildResponse", metadata !"_Z13buildResponseRN3hls6streamIjEEtth", metadata !92, i32 34, metadata !377, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 37} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{null, metadata !121, metadata !159, metadata !159, metadata !379}
!379 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!380 = metadata !{i32 149, i32 5, metadata !373, null}
!381 = metadata !{i32 34, i32 42, metadata !376, metadata !380}
!382 = metadata !{i32 40, i32 3, metadata !383, metadata !380}
!383 = metadata !{i32 786443, metadata !376, i32 37, i32 1, metadata !92, i32 4} ; [ DW_TAG_lexical_block ]
!384 = metadata !{i32 786688, metadata !383, metadata !"words32", metadata !92, i32 38, metadata !315, i32 0, metadata !380} ; [ DW_TAG_auto_variable ]
!385 = metadata !{i32 790531, metadata !386, metadata !"stream<unsigned int>.V", null, i32 144, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!386 = metadata !{i32 786689, metadata !387, metadata !"this", metadata !97, i32 16777360, metadata !325, i32 64, metadata !388} ; [ DW_TAG_arg_variable ]
!387 = metadata !{i32 786478, i32 0, metadata !96, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !97, i32 144, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !144, metadata !105, i32 144} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 41, i32 3, metadata !383, metadata !380}
!389 = metadata !{i32 144, i32 48, metadata !387, metadata !388}
!390 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, metadata !388} ; [ DW_TAG_auto_variable ]
!391 = metadata !{i32 786443, metadata !387, i32 144, i32 79, metadata !97, i32 23} ; [ DW_TAG_lexical_block ]
!392 = metadata !{i32 145, i32 31, metadata !391, metadata !388}
!393 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 146, i32 9, metadata !391, metadata !388}
!395 = metadata !{i32 790531, metadata !396, metadata !"dst.V", null, i32 34, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!396 = metadata !{i32 786689, metadata !376, metadata !"dst", metadata !92, i32 16777250, metadata !121, i32 0, metadata !397} ; [ DW_TAG_arg_variable ]
!397 = metadata !{i32 130, i32 7, metadata !367, null}
!398 = metadata !{i32 34, i32 42, metadata !376, metadata !397}
!399 = metadata !{i32 40, i32 3, metadata !383, metadata !397}
!400 = metadata !{i32 786688, metadata !383, metadata !"words32", metadata !92, i32 38, metadata !315, i32 0, metadata !397} ; [ DW_TAG_auto_variable ]
!401 = metadata !{i32 790531, metadata !402, metadata !"stream<unsigned int>.V", null, i32 144, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!402 = metadata !{i32 786689, metadata !387, metadata !"this", metadata !97, i32 16777360, metadata !325, i32 64, metadata !403} ; [ DW_TAG_arg_variable ]
!403 = metadata !{i32 41, i32 3, metadata !383, metadata !397}
!404 = metadata !{i32 144, i32 48, metadata !387, metadata !403}
!405 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, metadata !403} ; [ DW_TAG_auto_variable ]
!406 = metadata !{i32 145, i32 31, metadata !391, metadata !403}
!407 = metadata !{i32 146, i32 9, metadata !391, metadata !403}
!408 = metadata !{i32 790531, metadata !409, metadata !"src.V", null, i32 77, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!409 = metadata !{i32 786689, metadata !363, metadata !"src", metadata !92, i32 16777293, metadata !121, i32 0, metadata !366} ; [ DW_TAG_arg_variable ]
!410 = metadata !{i32 77, i32 46, metadata !363, metadata !366}
!411 = metadata !{i32 790531, metadata !412, metadata !"pr.V.addr", null, i32 78, metadata !413, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!412 = metadata !{i32 786689, metadata !363, metadata !"pr", metadata !92, i32 33554510, metadata !179, i32 0, metadata !366} ; [ DW_TAG_arg_variable ]
!413 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_pointer_type ]
!414 = metadata !{i32 78, i32 25, metadata !363, metadata !366}
!415 = metadata !{i32 790531, metadata !412, metadata !"pr.V.areaID", null, i32 78, metadata !416, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!416 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ]
!417 = metadata !{i32 790531, metadata !418, metadata !"src.V", null, i32 87, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!418 = metadata !{i32 786689, metadata !359, metadata !"src", metadata !92, i32 16777303, metadata !121, i32 0, metadata !361} ; [ DW_TAG_arg_variable ]
!419 = metadata !{i32 87, i32 53, metadata !359, metadata !361}
!420 = metadata !{i32 91, i32 15, metadata !421, metadata !361}
!421 = metadata !{i32 786443, metadata !358, i32 91, i32 3, metadata !92, i32 10} ; [ DW_TAG_lexical_block ]
!422 = metadata !{i32 135, i32 7, metadata !423, null}
!423 = metadata !{i32 786443, metadata !368, i32 134, i32 9, metadata !92, i32 15} ; [ DW_TAG_lexical_block ]
!424 = metadata !{i32 91, i32 26, metadata !421, metadata !361}
!425 = metadata !{i32 790531, metadata !426, metadata !"prDone.V", null, i32 108, metadata !432, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!426 = metadata !{i32 786689, metadata !427, metadata !"prDone", metadata !92, i32 16777324, metadata !228, i32 0, metadata !430} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 786478, i32 0, metadata !92, metadata !"wrapper_status", metadata !"wrapper_status", metadata !"_Z14wrapper_statusRN3hls6streamIbEE", metadata !92, i32 108, metadata !428, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 109} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{null, metadata !228}
!430 = metadata !{i32 136, i32 2, metadata !431, null}
!431 = metadata !{i32 786443, metadata !423, i32 135, i32 32, metadata !92, i32 16} ; [ DW_TAG_lexical_block ]
!432 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ]
!433 = metadata !{i32 108, i32 35, metadata !427, metadata !430}
!434 = metadata !{i32 790531, metadata !435, metadata !"stream<bool>.V", null, i32 136, metadata !440, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!435 = metadata !{i32 786689, metadata !436, metadata !"this", metadata !97, i32 16777352, metadata !437, i32 64, metadata !438} ; [ DW_TAG_arg_variable ]
!436 = metadata !{i32 786478, i32 0, metadata !96, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !97, i32 136, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !247, metadata !105, i32 136} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ]
!438 = metadata !{i32 111, i32 3, metadata !439, metadata !430}
!439 = metadata !{i32 786443, metadata !427, i32 109, i32 1, metadata !92, i32 11} ; [ DW_TAG_lexical_block ]
!440 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ]
!441 = metadata !{i32 136, i32 48, metadata !436, metadata !438}
!442 = metadata !{i32 138, i32 24, metadata !443, metadata !438}
!443 = metadata !{i32 786443, metadata !436, i32 136, i32 76, metadata !97, i32 19} ; [ DW_TAG_lexical_block ]
!444 = metadata !{i32 786688, metadata !443, metadata !"tmp", metadata !97, i32 137, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!445 = metadata !{i32 137, i32 22, metadata !443, metadata !438}
!446 = metadata !{i32 786688, metadata !439, metadata !"aux", metadata !92, i32 110, metadata !134, i32 0, metadata !438} ; [ DW_TAG_auto_variable ]
!447 = metadata !{i32 139, i32 9, metadata !443, metadata !438}
!448 = metadata !{i32 112, i32 3, metadata !439, metadata !430}
!449 = metadata !{i32 141, i32 2, metadata !450, null}
!450 = metadata !{i32 786443, metadata !423, i32 140, i32 11, metadata !92, i32 17} ; [ DW_TAG_lexical_block ]
!451 = metadata !{i32 790531, metadata !452, metadata !"dst.V", null, i32 34, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!452 = metadata !{i32 786689, metadata !376, metadata !"dst", metadata !92, i32 16777250, metadata !121, i32 0, metadata !453} ; [ DW_TAG_arg_variable ]
!453 = metadata !{i32 142, i32 2, metadata !450, null}
!454 = metadata !{i32 34, i32 42, metadata !376, metadata !453}
!455 = metadata !{i32 40, i32 3, metadata !383, metadata !453}
!456 = metadata !{i32 786688, metadata !383, metadata !"words32", metadata !92, i32 38, metadata !315, i32 0, metadata !453} ; [ DW_TAG_auto_variable ]
!457 = metadata !{i32 790531, metadata !458, metadata !"stream<unsigned int>.V", null, i32 144, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!458 = metadata !{i32 786689, metadata !387, metadata !"this", metadata !97, i32 16777360, metadata !325, i32 64, metadata !459} ; [ DW_TAG_arg_variable ]
!459 = metadata !{i32 41, i32 3, metadata !383, metadata !453}
!460 = metadata !{i32 144, i32 48, metadata !387, metadata !459}
!461 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, metadata !459} ; [ DW_TAG_auto_variable ]
!462 = metadata !{i32 145, i32 31, metadata !391, metadata !459}
!463 = metadata !{i32 146, i32 9, metadata !391, metadata !459}
!464 = metadata !{i32 95, i32 25, metadata !358, metadata !361}
!465 = metadata !{i32 786688, metadata !466, metadata !"aux", metadata !468, i32 30, metadata !315, i32 0, metadata !464} ; [ DW_TAG_auto_variable ]
!466 = metadata !{i32 786443, metadata !467, i32 29, i32 1, metadata !468, i32 1} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 786478, i32 0, metadata !468, metadata !"to_int", metadata !"to_int", metadata !"_Z6to_inthhhh", metadata !468, i32 27, metadata !469, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 29} ; [ DW_TAG_subprogram ]
!468 = metadata !{i32 786473, metadata !"./casting.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!469 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!470 = metadata !{metadata !315, metadata !379, metadata !379, metadata !379, metadata !379}
!471 = metadata !{i32 31, i32 3, metadata !466, metadata !464}
!472 = metadata !{i32 96, i32 19, metadata !358, metadata !361}
!473 = metadata !{i32 786688, metadata !474, metadata !"aux", metadata !468, i32 21, metadata !342, i32 0, metadata !478} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 786443, metadata !475, i32 20, i32 1, metadata !468, i32 0} ; [ DW_TAG_lexical_block ]
!475 = metadata !{i32 786478, i32 0, metadata !468, metadata !"to_short", metadata !"to_short", metadata !"_Z8to_shorthh", metadata !468, i32 19, metadata !476, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 20} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!477 = metadata !{metadata !342, metadata !379, metadata !379}
!478 = metadata !{i32 97, i32 27, metadata !358, metadata !361}
!479 = metadata !{i32 22, i32 3, metadata !474, metadata !478}
!480 = metadata !{i32 790531, metadata !481, metadata !"pr.V.addr", null, i32 63, metadata !413, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!481 = metadata !{i32 786689, metadata !482, metadata !"pr", metadata !92, i32 16777279, metadata !179, i32 0, metadata !485} ; [ DW_TAG_arg_variable ]
!482 = metadata !{i32 786478, i32 0, metadata !92, metadata !"newObject", metadata !"newObject", metadata !"_Z9newObjectRN3hls6streamI5PRbusEEis", metadata !92, i32 63, metadata !483, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !105, i32 64} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!484 = metadata !{null, metadata !179, metadata !315, metadata !342}
!485 = metadata !{i32 81, i32 3, metadata !362, metadata !366}
!486 = metadata !{i32 63, i32 31, metadata !482, metadata !485}
!487 = metadata !{i32 790531, metadata !481, metadata !"pr.V.areaID", null, i32 63, metadata !416, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!488 = metadata !{i32 786689, metadata !482, metadata !"addr", metadata !92, i32 33554495, metadata !315, i32 0, metadata !485} ; [ DW_TAG_arg_variable ]
!489 = metadata !{i32 63, i32 39, metadata !482, metadata !485}
!490 = metadata !{i32 786689, metadata !482, metadata !"areaID", metadata !92, i32 50331711, metadata !342, i32 0, metadata !485} ; [ DW_TAG_arg_variable ]
!491 = metadata !{i32 63, i32 51, metadata !482, metadata !485}
!492 = metadata !{i32 790529, metadata !493, metadata !"aux.areaID", null, i32 65, metadata !297, i32 0, metadata !485} ; [ DW_TAG_auto_variable_field ]
!493 = metadata !{i32 786688, metadata !494, metadata !"aux", metadata !92, i32 65, metadata !495, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!494 = metadata !{i32 786443, metadata !482, i32 64, i32 1, metadata !92, i32 7} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786454, null, metadata !"PRbus", metadata !92, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ]
!496 = metadata !{i32 66, i32 3, metadata !494, metadata !485}
!497 = metadata !{i32 790529, metadata !493, metadata !"aux.addr", null, i32 65, metadata !291, i32 0, metadata !485} ; [ DW_TAG_auto_variable_field ]
!498 = metadata !{i32 67, i32 3, metadata !494, metadata !485}
!499 = metadata !{i32 790531, metadata !500, metadata !"stream<PRbus>.V.addr", null, i32 144, metadata !504, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!500 = metadata !{i32 786689, metadata !501, metadata !"this", metadata !97, i32 16777360, metadata !502, i32 64, metadata !503} ; [ DW_TAG_arg_variable ]
!501 = metadata !{i32 786478, i32 0, metadata !96, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI5PRbusE5writeERKS1_", metadata !97, i32 144, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !201, metadata !105, i32 144} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ]
!503 = metadata !{i32 68, i32 3, metadata !494, metadata !485}
!504 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !289} ; [ DW_TAG_pointer_type ]
!505 = metadata !{i32 144, i32 48, metadata !501, metadata !503}
!506 = metadata !{i32 790531, metadata !500, metadata !"stream<PRbus>.V.areaID", null, i32 144, metadata !507, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!507 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ]
!508 = metadata !{i32 790529, metadata !509, metadata !"tmp.addr", null, i32 145, metadata !291, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!509 = metadata !{i32 786688, metadata !510, metadata !"tmp", metadata !97, i32 145, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!510 = metadata !{i32 786443, metadata !501, i32 144, i32 79, metadata !97, i32 20} ; [ DW_TAG_lexical_block ]
!511 = metadata !{i32 145, i32 31, metadata !510, metadata !503}
!512 = metadata !{i32 790529, metadata !509, metadata !"tmp.areaID", null, i32 145, metadata !297, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!513 = metadata !{i32 146, i32 9, metadata !510, metadata !503}
!514 = metadata !{i32 82, i32 3, metadata !362, metadata !366}
!515 = metadata !{i32 133, i32 5, metadata !367, null}
!516 = metadata !{i32 790531, metadata !517, metadata !"stream<unsigned int>.V", null, i32 129, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!517 = metadata !{i32 786689, metadata !324, metadata !"this", metadata !97, i32 16777345, metadata !325, i32 64, metadata !518} ; [ DW_TAG_arg_variable ]
!518 = metadata !{i32 92, i32 19, metadata !421, metadata !361}
!519 = metadata !{i32 129, i32 56, metadata !324, metadata !518}
!520 = metadata !{i32 131, i32 9, metadata !330, metadata !518}
!521 = metadata !{i32 786688, metadata !421, metadata !"it", metadata !92, i32 91, metadata !315, i32 0, metadata !361} ; [ DW_TAG_auto_variable ]
!522 = metadata !{i32 113, i32 5, metadata !439, metadata !430}
!523 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, metadata !524} ; [ DW_TAG_auto_variable ]
!524 = metadata !{i32 114, i32 3, metadata !439, metadata !430}
!525 = metadata !{i32 145, i32 31, metadata !391, metadata !524}
!526 = metadata !{i32 146, i32 9, metadata !391, metadata !524}
!527 = metadata !{i32 790531, metadata !528, metadata !"dst.V", null, i32 34, metadata !310, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!528 = metadata !{i32 786689, metadata !376, metadata !"dst", metadata !92, i32 16777250, metadata !121, i32 0, metadata !529} ; [ DW_TAG_arg_variable ]
!529 = metadata !{i32 137, i32 2, metadata !431, null}
!530 = metadata !{i32 34, i32 42, metadata !376, metadata !529}
!531 = metadata !{i32 40, i32 3, metadata !383, metadata !529}
!532 = metadata !{i32 786688, metadata !383, metadata !"words32", metadata !92, i32 38, metadata !315, i32 0, metadata !529} ; [ DW_TAG_auto_variable ]
!533 = metadata !{i32 790531, metadata !534, metadata !"stream<unsigned int>.V", null, i32 144, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!534 = metadata !{i32 786689, metadata !387, metadata !"this", metadata !97, i32 16777360, metadata !325, i32 64, metadata !535} ; [ DW_TAG_arg_variable ]
!535 = metadata !{i32 41, i32 3, metadata !383, metadata !529}
!536 = metadata !{i32 144, i32 48, metadata !387, metadata !535}
!537 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, metadata !535} ; [ DW_TAG_auto_variable ]
!538 = metadata !{i32 145, i32 31, metadata !391, metadata !535}
!539 = metadata !{i32 146, i32 9, metadata !391, metadata !535}
!540 = metadata !{i32 790531, metadata !541, metadata !"stream<unsigned int>.V", null, i32 144, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!541 = metadata !{i32 786689, metadata !387, metadata !"this", metadata !97, i32 16777360, metadata !325, i32 64, metadata !542} ; [ DW_TAG_arg_variable ]
!542 = metadata !{i32 44, i32 5, metadata !543, metadata !529}
!543 = metadata !{i32 786443, metadata !383, i32 42, i32 31, metadata !92, i32 5} ; [ DW_TAG_lexical_block ]
!544 = metadata !{i32 144, i32 48, metadata !387, metadata !542}
!545 = metadata !{i32 146, i32 9, metadata !391, metadata !542}
!546 = metadata !{i32 45, i32 5, metadata !543, metadata !529}
!547 = metadata !{i32 113, i32 20, metadata !548, metadata !550}
!548 = metadata !{i32 786443, metadata !549, i32 112, i32 62, metadata !97, i32 22} ; [ DW_TAG_lexical_block ]
!549 = metadata !{i32 786478, i32 0, metadata !96, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !97, i32 112, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !131, metadata !105, i32 112} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 45, i32 13, metadata !543, metadata !529}
!551 = metadata !{i32 786688, metadata !548, metadata !"tmp", metadata !97, i32 113, metadata !134, i32 0, metadata !550} ; [ DW_TAG_auto_variable ]
!552 = metadata !{i32 131, i32 9, metadata !330, metadata !553}
!553 = metadata !{i32 46, i32 17, metadata !543, metadata !529}
!554 = metadata !{i32 790531, metadata !555, metadata !"stream<unsigned int>.V", null, i32 144, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!555 = metadata !{i32 786689, metadata !387, metadata !"this", metadata !97, i32 16777360, metadata !325, i32 64, metadata !553} ; [ DW_TAG_arg_variable ]
!556 = metadata !{i32 144, i32 48, metadata !387, metadata !553}
!557 = metadata !{i32 786688, metadata !391, metadata !"tmp", metadata !97, i32 145, metadata !100, i32 0, metadata !553} ; [ DW_TAG_auto_variable ]
!558 = metadata !{i32 145, i32 31, metadata !391, metadata !553}
!559 = metadata !{i32 146, i32 9, metadata !391, metadata !553}
!560 = metadata !{i32 146, i32 3, metadata !368, null}
