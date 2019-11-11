; ModuleID = '/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.type32 = type { float }
%union.type64 = type { double }
%struct.headerStruct = type <{ i8, i8, i8, i8, i16, i16 }>
%"class.hls::stream" = type { i32 }
%"class.hls::stream.0" = type { i1 }
%struct.PARAM_newObject = type <{ i32, i16 }>
%class.ssdm_global_array_wrapperAdminpp0ccaplinecc = type {}
%"class.hls::stream.1" = type { %struct.PRbus }
%struct.PRbus = type { i32, i16 }

@conv32 = global %union.type32 zeroinitializer, align 4 ; [#uses=0 type=%union.type32*]
@conv64 = global %union.type64 zeroinitializer, align 8 ; [#uses=0 type=%union.type64*]
@_ZL6header = internal global %struct.headerStruct zeroinitializer, align 1 ; [#uses=6 type=%struct.headerStruct*]
@_ZL10bufferRESP = internal global %"class.hls::stream" zeroinitializer, align 4 ; [#uses=4 type=%"class.hls::stream"*]
@_ZL12bufferPRdone = internal global %"class.hls::stream.0" zeroinitializer, align 1 ; [#uses=1 type=%"class.hls::stream.0"*]
@_ZL14args_newObject = internal global %struct.PARAM_newObject zeroinitializer, align 1 ; [#uses=2 type=%struct.PARAM_newObject*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_ZL7_status = internal global i32 0, align 4     ; [#uses=3 type=i32*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@_ZL21ssdm_global_array_ins = internal global %class.ssdm_global_array_wrapperAdminpp0ccaplinecc zeroinitializer, align 1 ; [#uses=1 type=%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*]
@_ZL12FLAG_REQUEST = internal constant i8 0, align 1 ; [#uses=1 type=i8*]
@_ZL13FLAG_RESPONSE = internal constant i8 1, align 1 ; [#uses=1 type=i8*]
@_ZL9FLAG_FAIL = internal constant i8 2, align 1  ; [#uses=1 type=i8*]
@_ZL7FLAG_OK = internal constant i8 0, align 1    ; [#uses=1 type=i8*]
@_ZL16FLAG_HAS_PAYLOAD = internal constant i8 4, align 1 ; [#uses=1 type=i8*]
@_ZL9FLAG_SYNC = internal constant i8 0, align 1  ; [#uses=1 type=i8*]
@_ZL10FLAG_ASYNC = internal constant i8 8, align 1 ; [#uses=1 type=i8*]
@_ZL14FLAG_ASYNC_REQ = internal constant i8 0, align 1 ; [#uses=1 type=i8*]
@_ZL19FLAG_ASYNC_GET_RESP = internal constant i8 16, align 1 ; [#uses=1 type=i8*]
@_ZL9BROADCAST = internal constant i8 -1, align 1 ; [#uses=1 type=i8*]
@_ZL8NULL_OBJ = internal constant i8 0, align 1   ; [#uses=1 type=i8*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]

; [#uses=2]
define internal signext i16 @_Z8to_shorthh(i8 zeroext %c1, i8 zeroext %c2) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %2 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %aux = alloca i16, align 2                      ; [#uses=2 type=i16*]
  store i8 %c1, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !412), !dbg !413 ; [debug line = 19:24] [debug variable = c1]
  store i8 %c2, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !414), !dbg !415 ; [debug line = 19:42] [debug variable = c2]
  call void @llvm.dbg.declare(metadata !{i16* %aux}, metadata !416), !dbg !418 ; [debug line = 21:9] [debug variable = aux]
  %3 = load i8* %2, align 1, !dbg !419            ; [#uses=1 type=i8] [debug line = 22:3]
  %4 = zext i8 %3 to i32, !dbg !419               ; [#uses=1 type=i32] [debug line = 22:3]
  %5 = shl i32 %4, 8, !dbg !419                   ; [#uses=1 type=i32] [debug line = 22:3]
  %6 = load i8* %1, align 1, !dbg !419            ; [#uses=1 type=i8] [debug line = 22:3]
  %7 = zext i8 %6 to i32, !dbg !419               ; [#uses=1 type=i32] [debug line = 22:3]
  %8 = or i32 %5, %7, !dbg !419                   ; [#uses=1 type=i32] [debug line = 22:3]
  %9 = trunc i32 %8 to i16, !dbg !419             ; [#uses=1 type=i16] [debug line = 22:3]
  store i16 %9, i16* %aux, align 2, !dbg !419     ; [debug line = 22:3]
  %10 = load i16* %aux, align 2, !dbg !420        ; [#uses=1 type=i16] [debug line = 23:3]
  ret i16 %10, !dbg !420                          ; [debug line = 23:3]
}

; [#uses=56]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal i32 @_Z6to_inthhhh(i8 zeroext %c1, i8 zeroext %c2, i8 zeroext %c3, i8 zeroext %c4) nounwind uwtable {
  %1 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %2 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %3 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %4 = alloca i8, align 1                         ; [#uses=2 type=i8*]
  %aux = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store i8 %c1, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !421), !dbg !422 ; [debug line = 27:22] [debug variable = c1]
  store i8 %c2, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !423), !dbg !424 ; [debug line = 27:40] [debug variable = c2]
  store i8 %c3, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !425), !dbg !426 ; [debug line = 28:17] [debug variable = c3]
  store i8 %c4, i8* %4, align 1
  call void @llvm.dbg.declare(metadata !{i8* %4}, metadata !427), !dbg !428 ; [debug line = 28:35] [debug variable = c4]
  call void @llvm.dbg.declare(metadata !{i32* %aux}, metadata !429), !dbg !431 ; [debug line = 30:7] [debug variable = aux]
  %5 = load i8* %4, align 1, !dbg !432            ; [#uses=1 type=i8] [debug line = 31:3]
  %6 = zext i8 %5 to i32, !dbg !432               ; [#uses=1 type=i32] [debug line = 31:3]
  %7 = shl i32 %6, 24, !dbg !432                  ; [#uses=1 type=i32] [debug line = 31:3]
  %8 = load i8* %3, align 1, !dbg !432            ; [#uses=1 type=i8] [debug line = 31:3]
  %9 = zext i8 %8 to i32, !dbg !432               ; [#uses=1 type=i32] [debug line = 31:3]
  %10 = shl i32 %9, 16, !dbg !432                 ; [#uses=1 type=i32] [debug line = 31:3]
  %11 = or i32 %7, %10, !dbg !432                 ; [#uses=1 type=i32] [debug line = 31:3]
  %12 = load i8* %2, align 1, !dbg !432           ; [#uses=1 type=i8] [debug line = 31:3]
  %13 = zext i8 %12 to i32, !dbg !432             ; [#uses=1 type=i32] [debug line = 31:3]
  %14 = shl i32 %13, 8, !dbg !432                 ; [#uses=1 type=i32] [debug line = 31:3]
  %15 = or i32 %11, %14, !dbg !432                ; [#uses=1 type=i32] [debug line = 31:3]
  %16 = load i8* %1, align 1, !dbg !432           ; [#uses=1 type=i8] [debug line = 31:3]
  %17 = zext i8 %16 to i32, !dbg !432             ; [#uses=1 type=i32] [debug line = 31:3]
  %18 = or i32 %15, %17, !dbg !432                ; [#uses=1 type=i32] [debug line = 31:3]
  store i32 %18, i32* %aux, align 4, !dbg !432    ; [debug line = 31:3]
  %19 = load i32* %aux, align 4, !dbg !433        ; [#uses=1 type=i32] [debug line = 32:3]
  ret i32 %19, !dbg !433                          ; [debug line = 32:3]
}

; [#uses=1]
define internal void @__cxx_global_var_init() nounwind section ".text.startup" {
  call void @_ZN3hls6streamIjEC1Ev(%"class.hls::stream"* @_ZL10bufferRESP)
  ret void
}

; [#uses=1]
define internal void @_ZN3hls6streamIjEC1Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !434), !dbg !436 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @_ZN3hls6streamIjEC2Ev(%"class.hls::stream"* %2), !dbg !437 ; [debug line = 84:5]
  ret void, !dbg !437                             ; [debug line = 84:5]
}

; [#uses=1]
define internal void @__cxx_global_var_init1() nounwind section ".text.startup" {
  call void @_ZN3hls6streamIbEC1Ev(%"class.hls::stream.0"* @_ZL12bufferPRdone)
  ret void
}

; [#uses=1]
define internal void @_ZN3hls6streamIbEC1Ev(%"class.hls::stream.0"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !438), !dbg !440 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @_ZN3hls6streamIbEC2Ev(%"class.hls::stream.0"* %2), !dbg !441 ; [debug line = 84:5]
  ret void, !dbg !441                             ; [debug line = 84:5]
}

; [#uses=2]
define internal void @_Z7forwardRN3hls6streamIjEEs(%"class.hls::stream"* %src, i16 signext %size) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i16, align 2                        ; [#uses=2 type=i16*]
  %it = alloca i16, align 2                       ; [#uses=4 type=i16*]
  store %"class.hls::stream"* %src, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !442), !dbg !443 ; [debug line = 6:36] [debug variable = src]
  store i16 %size, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !444), !dbg !445 ; [debug line = 6:47] [debug variable = size]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !446 ; [debug line = 8:1]
  call void @llvm.dbg.declare(metadata !{i16* %it}, metadata !448), !dbg !449 ; [debug line = 8:9] [debug variable = it]
  store i16 0, i16* %it, align 2, !dbg !450       ; [debug line = 8:13]
  br label %3, !dbg !451                          ; [debug line = 9:3]

; <label>:3                                       ; preds = %9, %0
  %4 = load i16* %it, align 2, !dbg !451          ; [#uses=1 type=i16] [debug line = 9:3]
  %5 = sext i16 %4 to i32, !dbg !451              ; [#uses=1 type=i32] [debug line = 9:3]
  %6 = load i16* %2, align 2, !dbg !451           ; [#uses=1 type=i16] [debug line = 9:3]
  %7 = sext i16 %6 to i32, !dbg !451              ; [#uses=1 type=i32] [debug line = 9:3]
  %8 = icmp ne i32 %5, %7, !dbg !451              ; [#uses=1 type=i1] [debug line = 9:3]
  br i1 %8, label %9, label %16, !dbg !451        ; [debug line = 9:3]

; <label>:9                                       ; preds = %3
  %10 = load %"class.hls::stream"** %1, align 8, !dbg !452 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 10:5]
  %11 = call i32 @_ZN3hls6streamIjE4readEv(%"class.hls::stream"* %10), !dbg !452 ; [#uses=0 type=i32] [debug line = 10:5]
  %12 = load i16* %it, align 2, !dbg !454         ; [#uses=1 type=i16] [debug line = 11:5]
  %13 = sext i16 %12 to i32, !dbg !454            ; [#uses=1 type=i32] [debug line = 11:5]
  %14 = add nsw i32 %13, 1, !dbg !454             ; [#uses=1 type=i32] [debug line = 11:5]
  %15 = trunc i32 %14 to i16, !dbg !454           ; [#uses=1 type=i16] [debug line = 11:5]
  store i16 %15, i16* %it, align 2, !dbg !454     ; [debug line = 11:5]
  br label %3, !dbg !455                          ; [debug line = 12:3]

; <label>:16                                      ; preds = %3
  ret void, !dbg !456                             ; [debug line = 13:1]
}

; [#uses=6]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=4]
define internal i32 @_ZN3hls6streamIjE4readEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !457), !dbg !458 ; [debug line = 129:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !459), !dbg !461 ; [debug line = 130:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !462 ; [#uses=1 type=i32*] [debug line = 131:9]
  call void (...)* @_ssdm_StreamRead(i32* %3, i32* %tmp) nounwind, !dbg !462 ; [debug line = 131:9]
  %4 = load i32* %tmp, align 4, !dbg !463         ; [#uses=1 type=i32] [debug line = 132:9]
  ret i32 %4, !dbg !463                           ; [debug line = 132:9]
}

; [#uses=1]
define internal void @_Z14getRequestHeadRN3hls6streamIjEE(%"class.hls::stream"* %src) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %words32 = alloca [2 x i32], align 4            ; [#uses=7 type=[2 x i32]*]
  %it = alloca i32, align 4                       ; [#uses=5 type=i32*]
  store %"class.hls::stream"* %src, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !464), !dbg !465 ; [debug line = 17:43] [debug variable = src]
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %words32}, metadata !466), !dbg !471 ; [debug line = 19:7] [debug variable = words32]
  call void @llvm.dbg.declare(metadata !{i32* %it}, metadata !472), !dbg !474 ; [debug line = 21:11] [debug variable = it]
  store i32 0, i32* %it, align 4, !dbg !475       ; [debug line = 21:15]
  br label %2, !dbg !475                          ; [debug line = 21:15]

; <label>:2                                       ; preds = %11, %0
  %3 = load i32* %it, align 4, !dbg !475          ; [#uses=1 type=i32] [debug line = 21:15]
  %4 = icmp ne i32 %3, 2, !dbg !475               ; [#uses=1 type=i1] [debug line = 21:15]
  br i1 %4, label %5, label %14, !dbg !475        ; [debug line = 21:15]

; <label>:5                                       ; preds = %2
  %6 = load %"class.hls::stream"** %1, align 8, !dbg !476 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 22:19]
  %7 = call i32 @_ZN3hls6streamIjE4readEv(%"class.hls::stream"* %6), !dbg !476 ; [#uses=1 type=i32] [debug line = 22:19]
  %8 = load i32* %it, align 4, !dbg !476          ; [#uses=1 type=i32] [debug line = 22:19]
  %9 = sext i32 %8 to i64, !dbg !476              ; [#uses=1 type=i64] [debug line = 22:19]
  %10 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 %9, !dbg !476 ; [#uses=1 type=i32*] [debug line = 22:19]
  store i32 %7, i32* %10, align 4, !dbg !476      ; [debug line = 22:19]
  br label %11, !dbg !476                         ; [debug line = 22:19]

; <label>:11                                      ; preds = %5
  %12 = load i32* %it, align 4, !dbg !477         ; [#uses=1 type=i32] [debug line = 21:26]
  %13 = add nsw i32 %12, 1, !dbg !477             ; [#uses=1 type=i32] [debug line = 21:26]
  store i32 %13, i32* %it, align 4, !dbg !477     ; [debug line = 21:26]
  br label %2, !dbg !477                          ; [debug line = 21:26]

; <label>:14                                      ; preds = %2
  %15 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 0, !dbg !478 ; [#uses=1 type=i32*] [debug line = 24:3]
  %16 = load i32* %15, align 4, !dbg !478         ; [#uses=1 type=i32] [debug line = 24:3]
  %17 = ashr i32 %16, 24, !dbg !478               ; [#uses=1 type=i32] [debug line = 24:3]
  %18 = and i32 %17, 255, !dbg !478               ; [#uses=1 type=i32] [debug line = 24:3]
  %19 = trunc i32 %18 to i8, !dbg !478            ; [#uses=1 type=i8] [debug line = 24:3]
  store i8 %19, i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 0), align 1, !dbg !478 ; [debug line = 24:3]
  %20 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 0, !dbg !479 ; [#uses=1 type=i32*] [debug line = 25:3]
  %21 = load i32* %20, align 4, !dbg !479         ; [#uses=1 type=i32] [debug line = 25:3]
  %22 = ashr i32 %21, 16, !dbg !479               ; [#uses=1 type=i32] [debug line = 25:3]
  %23 = and i32 %22, 255, !dbg !479               ; [#uses=1 type=i32] [debug line = 25:3]
  %24 = trunc i32 %23 to i8, !dbg !479            ; [#uses=1 type=i8] [debug line = 25:3]
  store i8 %24, i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 1), align 1, !dbg !479 ; [debug line = 25:3]
  %25 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 0, !dbg !480 ; [#uses=1 type=i32*] [debug line = 26:3]
  %26 = load i32* %25, align 4, !dbg !480         ; [#uses=1 type=i32] [debug line = 26:3]
  %27 = ashr i32 %26, 8, !dbg !480                ; [#uses=1 type=i32] [debug line = 26:3]
  %28 = and i32 %27, 255, !dbg !480               ; [#uses=1 type=i32] [debug line = 26:3]
  %29 = trunc i32 %28 to i8, !dbg !480            ; [#uses=1 type=i8] [debug line = 26:3]
  store i8 %29, i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 2), align 1, !dbg !480 ; [debug line = 26:3]
  %30 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 0, !dbg !481 ; [#uses=1 type=i32*] [debug line = 27:3]
  %31 = load i32* %30, align 4, !dbg !481         ; [#uses=1 type=i32] [debug line = 27:3]
  %32 = and i32 %31, 255, !dbg !481               ; [#uses=1 type=i32] [debug line = 27:3]
  %33 = trunc i32 %32 to i8, !dbg !481            ; [#uses=1 type=i8] [debug line = 27:3]
  store i8 %33, i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 3), align 1, !dbg !481 ; [debug line = 27:3]
  %34 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 1, !dbg !482 ; [#uses=1 type=i32*] [debug line = 28:3]
  %35 = load i32* %34, align 4, !dbg !482         ; [#uses=1 type=i32] [debug line = 28:3]
  %36 = ashr i32 %35, 16, !dbg !482               ; [#uses=1 type=i32] [debug line = 28:3]
  %37 = and i32 %36, 65535, !dbg !482             ; [#uses=1 type=i32] [debug line = 28:3]
  %38 = trunc i32 %37 to i16, !dbg !482           ; [#uses=1 type=i16] [debug line = 28:3]
  store i16 %38, i16* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 4), align 1, !dbg !482 ; [debug line = 28:3]
  %39 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 1, !dbg !483 ; [#uses=1 type=i32*] [debug line = 29:3]
  %40 = load i32* %39, align 4, !dbg !483         ; [#uses=1 type=i32] [debug line = 29:3]
  %41 = and i32 %40, 65535, !dbg !483             ; [#uses=1 type=i32] [debug line = 29:3]
  %42 = trunc i32 %41 to i16, !dbg !483           ; [#uses=1 type=i16] [debug line = 29:3]
  store i16 %42, i16* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 5), align 1, !dbg !483 ; [debug line = 29:3]
  ret void, !dbg !484                             ; [debug line = 30:1]
}

; [#uses=4]
define internal void @_Z13buildResponseRN3hls6streamIjEEtth(%"class.hls::stream"* %dst, i16 zeroext %objID, i16 zeroext %size, i8 zeroext %flags) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=4 type=%"class.hls::stream"**]
  %2 = alloca i16, align 2                        ; [#uses=2 type=i16*]
  %3 = alloca i16, align 2                        ; [#uses=2 type=i16*]
  %4 = alloca i8, align 1                         ; [#uses=3 type=i8*]
  %words32 = alloca i32, align 4                  ; [#uses=4 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %6 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %7 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %dst, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !485), !dbg !486 ; [debug line = 34:42] [debug variable = dst]
  store i16 %objID, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !487), !dbg !488 ; [debug line = 35:23] [debug variable = objID]
  store i16 %size, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !489), !dbg !490 ; [debug line = 35:45] [debug variable = size]
  store i8 %flags, i8* %4, align 1
  call void @llvm.dbg.declare(metadata !{i8* %4}, metadata !491), !dbg !492 ; [debug line = 36:22] [debug variable = flags]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !493 ; [debug line = 38:1]
  call void @llvm.dbg.declare(metadata !{i32* %words32}, metadata !495), !dbg !496 ; [debug line = 38:7] [debug variable = words32]
  %8 = load i16* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 4), align 1, !dbg !497 ; [#uses=1 type=i16] [debug line = 40:3]
  %9 = zext i16 %8 to i32, !dbg !497              ; [#uses=1 type=i32] [debug line = 40:3]
  %10 = shl i32 %9, 16, !dbg !497                 ; [#uses=1 type=i32] [debug line = 40:3]
  %11 = load i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 2), align 1, !dbg !497 ; [#uses=1 type=i8] [debug line = 40:3]
  %12 = zext i8 %11 to i32, !dbg !497             ; [#uses=1 type=i32] [debug line = 40:3]
  %13 = shl i32 %12, 8, !dbg !497                 ; [#uses=1 type=i32] [debug line = 40:3]
  %14 = or i32 %10, %13, !dbg !497                ; [#uses=1 type=i32] [debug line = 40:3]
  %15 = load i8* %4, align 1, !dbg !497           ; [#uses=1 type=i8] [debug line = 40:3]
  %16 = zext i8 %15 to i32, !dbg !497             ; [#uses=1 type=i32] [debug line = 40:3]
  %17 = or i32 %14, %16, !dbg !497                ; [#uses=1 type=i32] [debug line = 40:3]
  store i32 %17, i32* %words32, align 4, !dbg !497 ; [debug line = 40:3]
  %18 = load %"class.hls::stream"** %1, align 8, !dbg !498 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 41:3]
  %19 = load i32* %words32, align 4, !dbg !498    ; [#uses=1 type=i32] [debug line = 41:3]
  store i32 %19, i32* %5, align 4, !dbg !498      ; [debug line = 41:3]
  call void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream"* %18, i32* %5), !dbg !498 ; [debug line = 41:3]
  %20 = load i8* %4, align 1, !dbg !499           ; [#uses=1 type=i8] [debug line = 42:3]
  %21 = zext i8 %20 to i32, !dbg !499             ; [#uses=1 type=i32] [debug line = 42:3]
  %22 = and i32 %21, 4, !dbg !499                 ; [#uses=1 type=i32] [debug line = 42:3]
  %23 = icmp ne i32 %22, 0, !dbg !499             ; [#uses=1 type=i1] [debug line = 42:3]
  br i1 %23, label %24, label %40, !dbg !499      ; [debug line = 42:3]

; <label>:24                                      ; preds = %0
  %25 = load i16* %2, align 2, !dbg !500          ; [#uses=1 type=i16] [debug line = 43:5]
  %26 = zext i16 %25 to i32, !dbg !500            ; [#uses=1 type=i32] [debug line = 43:5]
  %27 = shl i32 %26, 16, !dbg !500                ; [#uses=1 type=i32] [debug line = 43:5]
  %28 = load i16* %3, align 2, !dbg !500          ; [#uses=1 type=i16] [debug line = 43:5]
  %29 = zext i16 %28 to i32, !dbg !500            ; [#uses=1 type=i32] [debug line = 43:5]
  %30 = or i32 %27, %29, !dbg !500                ; [#uses=1 type=i32] [debug line = 43:5]
  store i32 %30, i32* %words32, align 4, !dbg !500 ; [debug line = 43:5]
  %31 = load %"class.hls::stream"** %1, align 8, !dbg !502 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 44:5]
  %32 = load i32* %words32, align 4, !dbg !502    ; [#uses=1 type=i32] [debug line = 44:5]
  store i32 %32, i32* %6, align 4, !dbg !502      ; [debug line = 44:5]
  call void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream"* %31, i32* %6), !dbg !502 ; [debug line = 44:5]
  br label %33, !dbg !503                         ; [debug line = 45:5]

; <label>:33                                      ; preds = %36, %24
  %34 = call zeroext i1 @_ZNK3hls6streamIjE5emptyEv(%"class.hls::stream"* @_ZL10bufferRESP), !dbg !504 ; [#uses=1 type=i1] [debug line = 45:13]
  %35 = xor i1 %34, true, !dbg !504               ; [#uses=1 type=i1] [debug line = 45:13]
  br i1 %35, label %36, label %39, !dbg !504      ; [debug line = 45:13]

; <label>:36                                      ; preds = %33
  %37 = load %"class.hls::stream"** %1, align 8, !dbg !505 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 46:7]
  %38 = call i32 @_ZN3hls6streamIjE4readEv(%"class.hls::stream"* @_ZL10bufferRESP), !dbg !506 ; [#uses=1 type=i32] [debug line = 46:17]
  store i32 %38, i32* %7, align 4, !dbg !506      ; [debug line = 46:17]
  call void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream"* %37, i32* %7), !dbg !506 ; [debug line = 46:17]
  br label %33, !dbg !506                         ; [debug line = 46:17]

; <label>:39                                      ; preds = %33
  br label %40, !dbg !507                         ; [debug line = 47:3]

; <label>:40                                      ; preds = %39, %0
  ret void, !dbg !508                             ; [debug line = 48:1]
}

; [#uses=4]
define internal void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream"* %this, i32* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !509), !dbg !510 ; [debug line = 144:48] [debug variable = this]
  store i32* %din, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !511), !dbg !512 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !513), !dbg !515 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i32** %2, align 8, !dbg !516          ; [#uses=1 type=i32*] [debug line = 145:31]
  %5 = load i32* %4, align 4, !dbg !516           ; [#uses=1 type=i32] [debug line = 145:31]
  store i32 %5, i32* %tmp, align 4, !dbg !516     ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !517 ; [#uses=1 type=i32*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i32* %6, i32* %tmp) nounwind, !dbg !517 ; [debug line = 146:9]
  ret void, !dbg !518                             ; [debug line = 147:5]
}

; [#uses=1]
define internal zeroext i1 @_ZNK3hls6streamIjE5emptyEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i1, align 1                       ; [#uses=2 type=i1*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !519), !dbg !521 ; [debug line = 112:48] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i1* %tmp}, metadata !522), !dbg !524 ; [debug line = 113:14] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !525 ; [#uses=1 type=i32*] [debug line = 113:20]
  %4 = call zeroext i1 (...)* @_ssdm_StreamCanRead(i32* %3) nounwind, !dbg !525 ; [#uses=1 type=i1] [debug line = 113:20]
  store i1 %4, i1* %tmp, align 1, !dbg !525       ; [debug line = 113:20]
  %5 = load i1* %tmp, align 1, !dbg !526          ; [#uses=1 type=i1] [debug line = 114:9]
  %6 = xor i1 %5, true, !dbg !526                 ; [#uses=1 type=i1] [debug line = 114:9]
  ret i1 %6, !dbg !526                            ; [debug line = 114:9]
}

; [#uses=1]
define internal void @_Z9newObjectRN3hls6streamI5PRbusEEis(%"class.hls::stream.1"* %pr, i32 %addr, i16 signext %areaID) nounwind uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8    ; [#uses=2 type=%"class.hls::stream.1"**]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca i16, align 2                        ; [#uses=2 type=i16*]
  %aux = alloca %struct.PRbus, align 4            ; [#uses=3 type=%struct.PRbus*]
  store %"class.hls::stream.1"* %pr, %"class.hls::stream.1"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"** %1}, metadata !527), !dbg !528 ; [debug line = 63:31] [debug variable = pr]
  store i32 %addr, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !529), !dbg !530 ; [debug line = 63:39] [debug variable = addr]
  store i16 %areaID, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !531), !dbg !532 ; [debug line = 63:51] [debug variable = areaID]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !533 ; [debug line = 65:1]
  call void @llvm.dbg.declare(metadata !{%struct.PRbus* %aux}, metadata !535), !dbg !537 ; [debug line = 65:9] [debug variable = aux]
  %4 = load i16* %3, align 2, !dbg !538           ; [#uses=1 type=i16] [debug line = 66:3]
  %5 = getelementptr inbounds %struct.PRbus* %aux, i32 0, i32 1, !dbg !538 ; [#uses=1 type=i16*] [debug line = 66:3]
  store i16 %4, i16* %5, align 2, !dbg !538       ; [debug line = 66:3]
  %6 = load i32* %2, align 4, !dbg !539           ; [#uses=1 type=i32] [debug line = 67:3]
  %7 = getelementptr inbounds %struct.PRbus* %aux, i32 0, i32 0, !dbg !539 ; [#uses=1 type=i32*] [debug line = 67:3]
  store i32 %6, i32* %7, align 4, !dbg !539       ; [debug line = 67:3]
  %8 = load %"class.hls::stream.1"** %1, align 8, !dbg !540 ; [#uses=1 type=%"class.hls::stream.1"*] [debug line = 68:3]
  call void @_ZN3hls6streamI5PRbusE5writeERKS1_(%"class.hls::stream.1"* %8, %struct.PRbus* %aux), !dbg !540 ; [debug line = 68:3]
  ret void, !dbg !541                             ; [debug line = 69:1]
}

; [#uses=1]
define internal void @_ZN3hls6streamI5PRbusE5writeERKS1_(%"class.hls::stream.1"* %this, %struct.PRbus* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.1"*, align 8    ; [#uses=2 type=%"class.hls::stream.1"**]
  %2 = alloca %struct.PRbus*, align 8             ; [#uses=2 type=%struct.PRbus**]
  %tmp = alloca %struct.PRbus, align 4            ; [#uses=4 type=%struct.PRbus*]
  store %"class.hls::stream.1"* %this, %"class.hls::stream.1"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"** %1}, metadata !542), !dbg !544 ; [debug line = 144:48] [debug variable = this]
  store %struct.PRbus* %din, %struct.PRbus** %2, align 8
  call void @llvm.dbg.declare(metadata !{%struct.PRbus** %2}, metadata !545), !dbg !546 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream.1"** %1           ; [#uses=1 type=%"class.hls::stream.1"*]
  call void @llvm.dbg.declare(metadata !{%struct.PRbus* %tmp}, metadata !547), !dbg !549 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load %struct.PRbus** %2, align 8, !dbg !550 ; [#uses=3 type=%struct.PRbus*] [debug line = 145:31]
  %5 = bitcast %struct.PRbus* %tmp to i8*, !dbg !550 ; [#uses=0 type=i8*] [debug line = 145:31]
  %6 = bitcast %struct.PRbus* %4 to i8*, !dbg !550 ; [#uses=0 type=i8*] [debug line = 145:31]
  %7 = getelementptr inbounds %struct.PRbus* %tmp, i32 0, i32 0, !dbg !550 ; [#uses=1 type=i32*] [debug line = 145:31]
  %8 = getelementptr inbounds %struct.PRbus* %4, i32 0, i32 0, !dbg !550 ; [#uses=1 type=i32*] [debug line = 145:31]
  %9 = load i32* %8, !dbg !550                    ; [#uses=1 type=i32] [debug line = 145:31]
  store i32 %9, i32* %7, !dbg !550                ; [debug line = 145:31]
  %10 = getelementptr inbounds %struct.PRbus* %tmp, i32 0, i32 1, !dbg !550 ; [#uses=1 type=i16*] [debug line = 145:31]
  %11 = getelementptr inbounds %struct.PRbus* %4, i32 0, i32 1, !dbg !550 ; [#uses=1 type=i16*] [debug line = 145:31]
  %12 = load i16* %11, !dbg !550                  ; [#uses=1 type=i16] [debug line = 145:31]
  store i16 %12, i16* %10, !dbg !550              ; [debug line = 145:31]
  %13 = getelementptr inbounds %"class.hls::stream.1"* %3, i32 0, i32 0, !dbg !551 ; [#uses=1 type=%struct.PRbus*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(%struct.PRbus* %13, %struct.PRbus* %tmp) nounwind, !dbg !551 ; [debug line = 146:9]
  ret void, !dbg !552                             ; [debug line = 147:5]
}

; [#uses=1]
define internal void @_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE(%"class.hls::stream"* %src, %"class.hls::stream.1"* %pr) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream.1"*, align 8    ; [#uses=2 type=%"class.hls::stream.1"**]
  store %"class.hls::stream"* %src, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !553), !dbg !554 ; [debug line = 77:46] [debug variable = src]
  store %"class.hls::stream.1"* %pr, %"class.hls::stream.1"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"** %2}, metadata !555), !dbg !556 ; [debug line = 78:25] [debug variable = pr]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !557 ; [debug line = 80:1]
  %3 = load %"class.hls::stream"** %1, align 8, !dbg !559 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 80:3]
  call void @_Z24readParameters_newObjectRN3hls6streamIjEE(%"class.hls::stream"* %3), !dbg !559 ; [debug line = 80:3]
  %4 = load %"class.hls::stream.1"** %2, align 8, !dbg !560 ; [#uses=1 type=%"class.hls::stream.1"*] [debug line = 81:3]
  %5 = load i32* getelementptr inbounds (%struct.PARAM_newObject* @_ZL14args_newObject, i32 0, i32 0), align 1, !dbg !560 ; [#uses=1 type=i32] [debug line = 81:3]
  %6 = load i16* getelementptr inbounds (%struct.PARAM_newObject* @_ZL14args_newObject, i32 0, i32 1), align 1, !dbg !560 ; [#uses=1 type=i16] [debug line = 81:3]
  call void @_Z9newObjectRN3hls6streamI5PRbusEEis(%"class.hls::stream.1"* %4, i32 %5, i16 signext %6), !dbg !560 ; [debug line = 81:3]
  store i32 2, i32* @_ZL7_status, align 4, !dbg !561 ; [debug line = 82:3]
  ret void, !dbg !562                             ; [debug line = 83:1]
}

; [#uses=1]
define internal void @_Z24readParameters_newObjectRN3hls6streamIjEE(%"class.hls::stream"* %src) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %words32 = alloca [2 x i32], align 4            ; [#uses=2 type=[2 x i32]*]
  %it = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %ptr = alloca i8*, align 8                      ; [#uses=17 type=i8**]
  %padding = alloca i16, align 2                  ; [#uses=1 type=i16*]
  store %"class.hls::stream"* %src, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !563), !dbg !564 ; [debug line = 87:53] [debug variable = src]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !565 ; [debug line = 89:1]
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %words32}, metadata !567), !dbg !568 ; [debug line = 89:7] [debug variable = words32]
  call void @llvm.dbg.declare(metadata !{i32* %it}, metadata !569), !dbg !571 ; [debug line = 91:11] [debug variable = it]
  store i32 0, i32* %it, align 4, !dbg !572       ; [debug line = 91:15]
  br label %2, !dbg !572                          ; [debug line = 91:15]

; <label>:2                                       ; preds = %11, %0
  %3 = load i32* %it, align 4, !dbg !572          ; [#uses=1 type=i32] [debug line = 91:15]
  %4 = icmp ne i32 %3, 2, !dbg !572               ; [#uses=1 type=i1] [debug line = 91:15]
  br i1 %4, label %5, label %14, !dbg !572        ; [debug line = 91:15]

; <label>:5                                       ; preds = %2
  %6 = load %"class.hls::stream"** %1, align 8, !dbg !573 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 92:19]
  %7 = call i32 @_ZN3hls6streamIjE4readEv(%"class.hls::stream"* %6), !dbg !573 ; [#uses=1 type=i32] [debug line = 92:19]
  %8 = load i32* %it, align 4, !dbg !573          ; [#uses=1 type=i32] [debug line = 92:19]
  %9 = sext i32 %8 to i64, !dbg !573              ; [#uses=1 type=i64] [debug line = 92:19]
  %10 = getelementptr inbounds [2 x i32]* %words32, i32 0, i64 %9, !dbg !573 ; [#uses=1 type=i32*] [debug line = 92:19]
  store i32 %7, i32* %10, align 4, !dbg !573      ; [debug line = 92:19]
  br label %11, !dbg !573                         ; [debug line = 92:19]

; <label>:11                                      ; preds = %5
  %12 = load i32* %it, align 4, !dbg !574         ; [#uses=1 type=i32] [debug line = 91:26]
  %13 = add nsw i32 %12, 1, !dbg !574             ; [#uses=1 type=i32] [debug line = 91:26]
  store i32 %13, i32* %it, align 4, !dbg !574     ; [debug line = 91:26]
  br label %2, !dbg !574                          ; [debug line = 91:26]

; <label>:14                                      ; preds = %2
  call void @llvm.dbg.declare(metadata !{i8** %ptr}, metadata !575), !dbg !576 ; [debug line = 94:18] [debug variable = ptr]
  %15 = getelementptr inbounds [2 x i32]* %words32, i32 0, i32 0, !dbg !577 ; [#uses=1 type=i32*] [debug line = 94:46]
  %16 = bitcast i32* %15 to i8*, !dbg !577        ; [#uses=1 type=i8*] [debug line = 94:46]
  store i8* %16, i8** %ptr, align 8, !dbg !577    ; [debug line = 94:46]
  %17 = load i8** %ptr, align 8, !dbg !578        ; [#uses=2 type=i8*] [debug line = 95:25]
  %18 = getelementptr inbounds i8* %17, i32 1, !dbg !578 ; [#uses=1 type=i8*] [debug line = 95:25]
  store i8* %18, i8** %ptr, align 8, !dbg !578    ; [debug line = 95:25]
  %19 = load i8* %17, align 1, !dbg !578          ; [#uses=1 type=i8] [debug line = 95:25]
  %20 = load i8** %ptr, align 8, !dbg !578        ; [#uses=2 type=i8*] [debug line = 95:25]
  %21 = getelementptr inbounds i8* %20, i32 1, !dbg !578 ; [#uses=1 type=i8*] [debug line = 95:25]
  store i8* %21, i8** %ptr, align 8, !dbg !578    ; [debug line = 95:25]
  %22 = load i8* %20, align 1, !dbg !578          ; [#uses=1 type=i8] [debug line = 95:25]
  %23 = load i8** %ptr, align 8, !dbg !578        ; [#uses=2 type=i8*] [debug line = 95:25]
  %24 = getelementptr inbounds i8* %23, i32 1, !dbg !578 ; [#uses=1 type=i8*] [debug line = 95:25]
  store i8* %24, i8** %ptr, align 8, !dbg !578    ; [debug line = 95:25]
  %25 = load i8* %23, align 1, !dbg !578          ; [#uses=1 type=i8] [debug line = 95:25]
  %26 = load i8** %ptr, align 8, !dbg !578        ; [#uses=2 type=i8*] [debug line = 95:25]
  %27 = getelementptr inbounds i8* %26, i32 1, !dbg !578 ; [#uses=1 type=i8*] [debug line = 95:25]
  store i8* %27, i8** %ptr, align 8, !dbg !578    ; [debug line = 95:25]
  %28 = load i8* %26, align 1, !dbg !578          ; [#uses=1 type=i8] [debug line = 95:25]
  %29 = call i32 @_Z6to_inthhhh(i8 zeroext %19, i8 zeroext %22, i8 zeroext %25, i8 zeroext %28), !dbg !578 ; [#uses=1 type=i32] [debug line = 95:25]
  store i32 %29, i32* getelementptr inbounds (%struct.PARAM_newObject* @_ZL14args_newObject, i32 0, i32 0), align 1, !dbg !578 ; [debug line = 95:25]
  call void @llvm.dbg.declare(metadata !{i16* %padding}, metadata !579), !dbg !580 ; [debug line = 96:9] [debug variable = padding]
  %30 = load i8** %ptr, align 8, !dbg !581        ; [#uses=2 type=i8*] [debug line = 96:19]
  %31 = getelementptr inbounds i8* %30, i32 1, !dbg !581 ; [#uses=1 type=i8*] [debug line = 96:19]
  store i8* %31, i8** %ptr, align 8, !dbg !581    ; [debug line = 96:19]
  %32 = load i8* %30, align 1, !dbg !581          ; [#uses=1 type=i8] [debug line = 96:19]
  %33 = load i8** %ptr, align 8, !dbg !581        ; [#uses=2 type=i8*] [debug line = 96:19]
  %34 = getelementptr inbounds i8* %33, i32 1, !dbg !581 ; [#uses=1 type=i8*] [debug line = 96:19]
  store i8* %34, i8** %ptr, align 8, !dbg !581    ; [debug line = 96:19]
  %35 = load i8* %33, align 1, !dbg !581          ; [#uses=1 type=i8] [debug line = 96:19]
  %36 = call signext i16 @_Z8to_shorthh(i8 zeroext %32, i8 zeroext %35), !dbg !581 ; [#uses=1 type=i16] [debug line = 96:19]
  store i16 %36, i16* %padding, align 2, !dbg !581 ; [debug line = 96:19]
  %37 = load i8** %ptr, align 8, !dbg !582        ; [#uses=2 type=i8*] [debug line = 97:27]
  %38 = getelementptr inbounds i8* %37, i32 1, !dbg !582 ; [#uses=1 type=i8*] [debug line = 97:27]
  store i8* %38, i8** %ptr, align 8, !dbg !582    ; [debug line = 97:27]
  %39 = load i8* %37, align 1, !dbg !582          ; [#uses=1 type=i8] [debug line = 97:27]
  %40 = load i8** %ptr, align 8, !dbg !582        ; [#uses=2 type=i8*] [debug line = 97:27]
  %41 = getelementptr inbounds i8* %40, i32 1, !dbg !582 ; [#uses=1 type=i8*] [debug line = 97:27]
  store i8* %41, i8** %ptr, align 8, !dbg !582    ; [debug line = 97:27]
  %42 = load i8* %40, align 1, !dbg !582          ; [#uses=1 type=i8] [debug line = 97:27]
  %43 = call signext i16 @_Z8to_shorthh(i8 zeroext %39, i8 zeroext %42), !dbg !582 ; [#uses=1 type=i16] [debug line = 97:27]
  store i16 %43, i16* getelementptr inbounds (%struct.PARAM_newObject* @_ZL14args_newObject, i32 0, i32 1), align 1, !dbg !582 ; [debug line = 97:27]
  ret void, !dbg !583                             ; [debug line = 98:1]
}

; [#uses=1]
define internal void @_Z14wrapper_statusRN3hls6streamIbEE(%"class.hls::stream.0"* %prDone) nounwind uwtable {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %aux = alloca i1, align 1                       ; [#uses=3 type=i1*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  store %"class.hls::stream.0"* %prDone, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !584), !dbg !585 ; [debug line = 108:35] [debug variable = prDone]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !586 ; [debug line = 110:1]
  call void @llvm.dbg.declare(metadata !{i1* %aux}, metadata !588), !dbg !589 ; [debug line = 110:8] [debug variable = aux]
  store i1 false, i1* %aux, align 1, !dbg !590    ; [debug line = 110:19]
  %3 = load %"class.hls::stream.0"** %1, align 8, !dbg !591 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 111:3]
  %4 = call zeroext i1 @_ZN3hls6streamIbE7read_nbERb(%"class.hls::stream.0"* %3, i1* %aux), !dbg !591 ; [#uses=0 type=i1] [debug line = 111:3]
  %5 = load i1* %aux, align 1, !dbg !592          ; [#uses=1 type=i1] [debug line = 112:3]
  br i1 %5, label %6, label %7, !dbg !592         ; [debug line = 112:3]

; <label>:6                                       ; preds = %0
  store i32 1, i32* @_ZL7_status, align 4, !dbg !593 ; [debug line = 113:5]
  br label %7, !dbg !593                          ; [debug line = 113:5]

; <label>:7                                       ; preds = %6, %0
  %8 = load i32* @_ZL7_status, align 4, !dbg !594 ; [#uses=1 type=i32] [debug line = 114:3]
  store i32 %8, i32* %2, align 4, !dbg !594       ; [debug line = 114:3]
  call void @_ZN3hls6streamIjE5writeERKj(%"class.hls::stream"* @_ZL10bufferRESP, i32* %2), !dbg !594 ; [debug line = 114:3]
  ret void, !dbg !595                             ; [debug line = 115:1]
}

; [#uses=1]
define internal zeroext i1 @_ZN3hls6streamIbE7read_nbERb(%"class.hls::stream.0"* %this, i1* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca i1*, align 8                        ; [#uses=2 type=i1**]
  %tmp = alloca i1, align 1                       ; [#uses=2 type=i1*]
  %empty_n = alloca i1, align 1                   ; [#uses=2 type=i1*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !596), !dbg !597 ; [debug line = 136:48] [debug variable = this]
  store i1* %dout, i1** %2, align 8
  call void @llvm.dbg.declare(metadata !{i1** %2}, metadata !598), !dbg !599 ; [debug line = 136:70] [debug variable = dout]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{i1* %tmp}, metadata !600), !dbg !602 ; [debug line = 137:22] [debug variable = tmp]
  call void @llvm.dbg.declare(metadata !{i1* %empty_n}, metadata !603), !dbg !604 ; [debug line = 138:14] [debug variable = empty_n]
  %4 = getelementptr inbounds %"class.hls::stream.0"* %3, i32 0, i32 0, !dbg !605 ; [#uses=1 type=i1*] [debug line = 138:24]
  %5 = call zeroext i1 (...)* @_ssdm_StreamNbRead(i1* %4, i1* %tmp) nounwind, !dbg !605 ; [#uses=1 type=i1] [debug line = 138:24]
  store i1 %5, i1* %empty_n, align 1, !dbg !605   ; [debug line = 138:24]
  %6 = load i1* %tmp, align 1, !dbg !606          ; [#uses=1 type=i1] [debug line = 139:9]
  %7 = load i1** %2, align 8, !dbg !606           ; [#uses=1 type=i1*] [debug line = 139:9]
  store i1 %6, i1* %7, align 1, !dbg !606         ; [debug line = 139:9]
  %8 = load i1* %empty_n, align 1, !dbg !607      ; [#uses=1 type=i1] [debug line = 140:9]
  ret i1 %8, !dbg !607                            ; [debug line = 140:9]
}

; [#uses=0]
define void @_Z12wrapperAdminN3hls6streamIjEES1_NS0_I5PRbusEENS0_IbEE(%"class.hls::stream"* %din, %"class.hls::stream"* %dout, %"class.hls::stream.1"* %pr, %"class.hls::stream.0"* %prDone) nounwind uwtable {
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %din}, metadata !608), !dbg !609 ; [debug line = 121:40] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %dout}, metadata !610), !dbg !611 ; [debug line = 122:33] [debug variable = dout]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %pr}, metadata !612), !dbg !613 ; [debug line = 123:26] [debug variable = pr]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %prDone}, metadata !614), !dbg !615 ; [debug line = 123:48] [debug variable = prDone]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !616 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %prDone, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !616 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.1"* %pr, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !616 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %dout, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !616 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %din, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !616 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !616 ; [debug line = 125:1]
  call void @_Z14getRequestHeadRN3hls6streamIjEE(%"class.hls::stream"* %din), !dbg !618 ; [debug line = 126:3]
  %1 = load i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 1), align 1, !dbg !619 ; [#uses=1 type=i8] [debug line = 128:3]
  %2 = zext i8 %1 to i32, !dbg !619               ; [#uses=1 type=i32] [debug line = 128:3]
  %3 = icmp eq i32 2, %2, !dbg !619               ; [#uses=1 type=i1] [debug line = 128:3]
  br i1 %3, label %4, label %18, !dbg !619        ; [debug line = 128:3]

; <label>:4                                       ; preds = %0
  %5 = load i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 2), align 1, !dbg !620 ; [#uses=1 type=i8] [debug line = 129:5]
  %6 = zext i8 %5 to i32, !dbg !620               ; [#uses=1 type=i32] [debug line = 129:5]
  %7 = icmp eq i32 1, %6, !dbg !620               ; [#uses=1 type=i1] [debug line = 129:5]
  br i1 %7, label %8, label %9, !dbg !620         ; [debug line = 129:5]

; <label>:8                                       ; preds = %4
  call void @_Z13buildResponseRN3hls6streamIjEEtth(%"class.hls::stream"* %dout, i16 zeroext 2, i16 zeroext 0, i8 zeroext 1), !dbg !622 ; [debug line = 130:7]
  call void @_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE(%"class.hls::stream"* %din, %"class.hls::stream.1"* %pr), !dbg !624 ; [debug line = 132:7]
  br label %17, !dbg !625                         ; [debug line = 133:5]

; <label>:9                                       ; preds = %4
  %10 = load i8* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 2), align 1, !dbg !626 ; [#uses=1 type=i8] [debug line = 135:7]
  %11 = zext i8 %10 to i32, !dbg !626             ; [#uses=1 type=i32] [debug line = 135:7]
  %12 = icmp eq i32 2, %11, !dbg !626             ; [#uses=1 type=i1] [debug line = 135:7]
  br i1 %12, label %13, label %14, !dbg !626      ; [debug line = 135:7]

; <label>:13                                      ; preds = %9
  call void @_Z14wrapper_statusRN3hls6streamIbEE(%"class.hls::stream.0"* %prDone), !dbg !628 ; [debug line = 136:2]
  call void @_Z13buildResponseRN3hls6streamIjEEtth(%"class.hls::stream"* %dout, i16 zeroext 2, i16 zeroext 1, i8 zeroext 5), !dbg !630 ; [debug line = 137:2]
  br label %16, !dbg !631                         ; [debug line = 139:7]

; <label>:14                                      ; preds = %9
  %15 = load i16* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 5), align 1, !dbg !632 ; [#uses=1 type=i16] [debug line = 141:2]
  call void @_Z7forwardRN3hls6streamIjEEs(%"class.hls::stream"* %din, i16 signext %15), !dbg !632 ; [debug line = 141:2]
  call void @_Z13buildResponseRN3hls6streamIjEEtth(%"class.hls::stream"* %dout, i16 zeroext 2, i16 zeroext 0, i8 zeroext 3), !dbg !634 ; [debug line = 142:2]
  br label %16

; <label>:16                                      ; preds = %14, %13
  br label %17

; <label>:17                                      ; preds = %16, %8
  br label %20, !dbg !635                         ; [debug line = 146:3]

; <label>:18                                      ; preds = %0
  %19 = load i16* getelementptr inbounds (%struct.headerStruct* @_ZL6header, i32 0, i32 5), align 1, !dbg !636 ; [#uses=1 type=i16] [debug line = 148:5]
  call void @_Z7forwardRN3hls6streamIjEEs(%"class.hls::stream"* %din, i16 signext %19), !dbg !636 ; [debug line = 148:5]
  call void @_Z13buildResponseRN3hls6streamIjEEtth(%"class.hls::stream"* %dout, i16 zeroext 0, i16 zeroext 0, i8 zeroext 3), !dbg !638 ; [debug line = 149:5]
  br label %20

; <label>:20                                      ; preds = %18, %17
  ret void, !dbg !639                             ; [debug line = 152:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define internal void @__cxx_global_var_init4() nounwind section ".text.startup" {
  call void @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC1Ev(%class.ssdm_global_array_wrapperAdminpp0ccaplinecc* @_ZL21ssdm_global_array_ins)
  ret void
}

; [#uses=1]
define void @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC1Ev(%class.ssdm_global_array_wrapperAdminpp0ccaplinecc* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.ssdm_global_array_wrapperAdminpp0ccaplinecc*, align 8 ; [#uses=2 type=%class.ssdm_global_array_wrapperAdminpp0ccaplinecc**]
  store %class.ssdm_global_array_wrapperAdminpp0ccaplinecc* %this, %class.ssdm_global_array_wrapperAdminpp0ccaplinecc** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.ssdm_global_array_wrapperAdminpp0ccaplinecc** %1}, metadata !640), !dbg !642 ; [debug line = 156:42] [debug variable = this]
  %2 = load %class.ssdm_global_array_wrapperAdminpp0ccaplinecc** %1 ; [#uses=1 type=%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*]
  call void @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC2Ev(%class.ssdm_global_array_wrapperAdminpp0ccaplinecc* %2), !dbg !643 ; [debug line = 168:3]
  ret void, !dbg !643                             ; [debug line = 168:3]
}

; [#uses=1]
declare zeroext i1 @_ssdm_StreamNbRead(...) nounwind

; [#uses=2]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
declare zeroext i1 @_ssdm_StreamCanRead(...) nounwind

; [#uses=1]
define internal void @_ZN3hls6streamIbEC2Ev(%"class.hls::stream.0"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !644), !dbg !645 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream.0"** %1           ; [#uses=0 type=%"class.hls::stream.0"*]
  ret void, !dbg !646                             ; [debug line = 84:5]
}

; [#uses=1]
define internal void @_ZN3hls6streamIjEC2Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !648), !dbg !649 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=0 type=%"class.hls::stream"*]
  ret void, !dbg !650                             ; [debug line = 84:5]
}

; [#uses=1]
define void @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC2Ev(%class.ssdm_global_array_wrapperAdminpp0ccaplinecc* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.ssdm_global_array_wrapperAdminpp0ccaplinecc*, align 8 ; [#uses=2 type=%class.ssdm_global_array_wrapperAdminpp0ccaplinecc**]
  store %class.ssdm_global_array_wrapperAdminpp0ccaplinecc* %this, %class.ssdm_global_array_wrapperAdminpp0ccaplinecc** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.ssdm_global_array_wrapperAdminpp0ccaplinecc** %1}, metadata !652), !dbg !653 ; [debug line = 156:42] [debug variable = this]
  %2 = load %class.ssdm_global_array_wrapperAdminpp0ccaplinecc** %1 ; [#uses=0 type=%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL12FLAG_REQUEST) nounwind, !dbg !654 ; [debug line = 157:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL13FLAG_RESPONSE) nounwind, !dbg !656 ; [debug line = 158:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL9FLAG_FAIL) nounwind, !dbg !657 ; [debug line = 159:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL7FLAG_OK) nounwind, !dbg !658 ; [debug line = 160:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL16FLAG_HAS_PAYLOAD) nounwind, !dbg !659 ; [debug line = 161:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL9FLAG_SYNC) nounwind, !dbg !660 ; [debug line = 162:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL10FLAG_ASYNC) nounwind, !dbg !661 ; [debug line = 163:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL14FLAG_ASYNC_REQ) nounwind, !dbg !662 ; [debug line = 164:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL19FLAG_ASYNC_GET_RESP) nounwind, !dbg !663 ; [debug line = 165:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL9BROADCAST) nounwind, !dbg !664 ; [debug line = 166:4]
  call void (...)* @_ssdm_SpecConstant(i8* @_ZL8NULL_OBJ) nounwind, !dbg !665 ; [debug line = 167:4]
  ret void, !dbg !666                             ; [debug line = 168:3]
}

; [#uses=11]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=1]
define internal void @_GLOBAL__I_a() nounwind section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  call void @__cxx_global_var_init4()
  ret void
}

!llvm.dbg.cu = !{!0, !73}
!opencl.kernels = !{!329, !336, !342, !348, !352, !354, !356, !342, !357, !359, !361, !364, !370, !373, !376, !382, !385, !386, !387, !390, !393, !396, !402, !403, !405, !406, !407, !408, !409, !410, !411}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/casting.pragma.2.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !45} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !17, metadata !21, metadata !25, metadata !28, metadata !31, metadata !35, metadata !39, metadata !42}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_short", metadata !"to_short", metadata !"_Z8to_shorthh", metadata !6, i32 19, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i8, i8)* @_Z8to_shorthh, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"./casting.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_int", metadata !"to_int", metadata !"_Z6to_inthhhh", metadata !6, i32 27, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8, i8, i8, i8)* @_Z6to_inthhhh, null, null, metadata !11, i32 29} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !16, metadata !10, metadata !10, metadata !10, metadata !10}
!16 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_long_long", metadata !"to_long_long", metadata !"_Z12to_long_longhhhhhhhh", metadata !6, i32 36, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 40} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10}
!20 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_char_short", metadata !"to_char_short", metadata !"_Z13to_char_shortsPh", metadata !6, i32 53, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 54} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !9, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_char_int", metadata !"to_char_int", metadata !"_Z11to_char_intiPh", metadata !6, i32 60, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 61} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !16, metadata !24}
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_char_long_long", metadata !"to_char_long_long", metadata !"_Z17to_char_long_longxPh", metadata !6, i32 69, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 70} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !20, metadata !24}
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_float", metadata !"to_float", metadata !"_Z8to_floathhhh", metadata !6, i32 87, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 89} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{metadata !34, metadata !10, metadata !10, metadata !10, metadata !10}
!34 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_double", metadata !"to_double", metadata !"_Z9to_doublehhhhhhhh", metadata !6, i32 104, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 108} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{metadata !38, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10}
!38 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_char_float", metadata !"to_char_float", metadata !"_Z13to_char_floatfPh", metadata !6, i32 122, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 123} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !34, metadata !24}
!42 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_char_double", metadata !"to_char_double", metadata !"_Z14to_char_doubledPh", metadata !6, i32 134, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 135} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !38, metadata !24}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !47, metadata !59}
!47 = metadata !{i32 786484, i32 0, null, metadata !"conv32", metadata !"conv32", metadata !"", metadata !6, i32 7, metadata !48, i32 0, i32 1, %union.type32* @conv32} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786455, null, metadata !"type32", metadata !6, i32 4, i64 32, i64 32, i64 0, i32 0, null, metadata !49, i32 0, null} ; [ DW_TAG_union_type ]
!49 = metadata !{metadata !50, metadata !54, metadata !55}
!50 = metadata !{i32 786445, metadata !48, metadata !"c", metadata !6, i32 5, i64 32, i64 8, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !10, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 786445, metadata !48, metadata !"f", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!55 = metadata !{i32 786478, i32 0, metadata !48, metadata !"type32", metadata !"type32", metadata !"", metadata !6, i32 4, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !58}
!58 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !48} ; [ DW_TAG_pointer_type ]
!59 = metadata !{i32 786484, i32 0, null, metadata !"conv64", metadata !"conv64", metadata !"", metadata !6, i32 13, metadata !60, i32 0, i32 1, %union.type64* @conv64} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786455, null, metadata !"type64", metadata !6, i32 9, i64 64, i64 64, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_union_type ]
!61 = metadata !{metadata !62, metadata !66, metadata !67, metadata !69}
!62 = metadata !{i32 786445, metadata !60, metadata !"c", metadata !6, i32 10, i64 64, i64 8, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ]
!63 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 8, i32 0, i32 0, metadata !10, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!66 = metadata !{i32 786445, metadata !60, metadata !"d", metadata !6, i32 11, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ]
!67 = metadata !{i32 786445, metadata !60, metadata !"ll", metadata !6, i32 12, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786478, i32 0, metadata !60, metadata !"type64", metadata !"type64", metadata !"", metadata !6, i32 9, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !72}
!72 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !60} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/wrapperAdmin.pragma.2.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !74, metadata !282} ; [ DW_TAG_compile_unit ]
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !76, metadata !134, metadata !137, metadata !141, metadata !193, metadata !254, metadata !257, metadata !258, metadata !261, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !281}
!76 = metadata !{i32 786478, i32 0, metadata !77, metadata !"forward", metadata !"forward", metadata !"_Z7forwardRN3hls6streamIjEEs", metadata !77, i32 6, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i16)* @_Z7forwardRN3hls6streamIjEEs, null, null, metadata !11, i32 7} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786473, metadata !"./wrapperAdmin.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !80, metadata !9}
!80 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_reference_type ]
!81 = metadata !{i32 786434, metadata !82, metadata !"stream<unsigned int>", metadata !83, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !84, i32 0, null, metadata !132} ; [ DW_TAG_class_type ]
!82 = metadata !{i32 786489, null, metadata !"hls", metadata !83, i32 69} ; [ DW_TAG_namespace ]
!83 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!84 = metadata !{metadata !85, metadata !87, metadata !91, metadata !97, metadata !102, metadata !105, metadata !109, metadata !114, metadata !119, metadata !120, metadata !121, metadata !124, metadata !127, metadata !128, metadata !131}
!85 = metadata !{i32 786445, metadata !81, metadata !"V", metadata !83, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ]
!86 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 786478, i32 0, metadata !81, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 83, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !90}
!90 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !81} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786478, i32 0, metadata !81, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 86, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 86} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !90, metadata !94}
!94 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_const_type ]
!96 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!97 = metadata !{i32 786478, i32 0, metadata !81, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 91, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !11, i32 91} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{null, metadata !90, metadata !100}
!100 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_reference_type ]
!101 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_const_type ]
!102 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIjEaSERKS1_", metadata !83, i32 94, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !11, i32 94} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !80, metadata !90, metadata !100}
!105 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIjErsERj", metadata !83, i32 101, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 101} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{null, metadata !90, metadata !108}
!108 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_reference_type ]
!109 = metadata !{i32 786478, i32 0, metadata !81, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIjElsERKj", metadata !83, i32 105, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 105} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{null, metadata !90, metadata !112}
!112 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_reference_type ]
!113 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_const_type ]
!114 = metadata !{i32 786478, i32 0, metadata !81, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !83, i32 112, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 112} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !117, metadata !118}
!117 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!118 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !101} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 786478, i32 0, metadata !81, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIjE4fullEv", metadata !83, i32 117, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 117} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786478, i32 0, metadata !81, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readERj", metadata !83, i32 123, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 123} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786478, i32 0, metadata !81, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !83, i32 129, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{metadata !86, metadata !90}
!124 = metadata !{i32 786478, i32 0, metadata !81, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIjE7read_nbERj", metadata !83, i32 136, metadata !125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 136} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{metadata !117, metadata !90, metadata !108}
!127 = metadata !{i32 786478, i32 0, metadata !81, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !83, i32 144, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786478, i32 0, metadata !81, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIjE8write_nbERKj", metadata !83, i32 150, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 150} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !117, metadata !90, metadata !112}
!131 = metadata !{i32 786478, i32 0, metadata !81, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIjE4sizeEv", metadata !83, i32 157, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 157} ; [ DW_TAG_subprogram ]
!132 = metadata !{metadata !133}
!133 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !86, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!134 = metadata !{i32 786478, i32 0, metadata !77, metadata !"getRequestHead", metadata !"getRequestHead", metadata !"_Z14getRequestHeadRN3hls6streamIjEE", metadata !77, i32 17, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_Z14getRequestHeadRN3hls6streamIjEE, null, null, metadata !11, i32 18} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{null, metadata !80}
!137 = metadata !{i32 786478, i32 0, metadata !77, metadata !"buildResponse", metadata !"buildResponse", metadata !"_Z13buildResponseRN3hls6streamIjEEtth", metadata !77, i32 34, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i16, i16, i8)* @_Z13buildResponseRN3hls6streamIjEEtth, null, null, metadata !11, i32 37} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{null, metadata !80, metadata !140, metadata !140, metadata !10}
!140 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!141 = metadata !{i32 786478, i32 0, metadata !77, metadata !"responseAdminPR", metadata !"responseAdminPR", metadata !"_Z15responseAdminPRRN3hls6streamIbEE", metadata !77, i32 53, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 54} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{metadata !9, metadata !144}
!144 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_reference_type ]
!145 = metadata !{i32 786434, metadata !82, metadata !"stream<bool>", metadata !83, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !146, i32 0, null, metadata !191} ; [ DW_TAG_class_type ]
!146 = metadata !{metadata !147, metadata !148, metadata !152, metadata !155, metadata !160, metadata !163, metadata !167, metadata !172, metadata !176, metadata !177, metadata !178, metadata !181, metadata !184, metadata !185, metadata !188}
!147 = metadata !{i32 786445, metadata !145, metadata !"V", metadata !83, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !117} ; [ DW_TAG_member ]
!148 = metadata !{i32 786478, i32 0, metadata !145, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 83, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{null, metadata !151}
!151 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !145} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 786478, i32 0, metadata !145, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 86, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 86} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{null, metadata !151, metadata !94}
!155 = metadata !{i32 786478, i32 0, metadata !145, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 91, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !11, i32 91} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !151, metadata !158}
!158 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_reference_type ]
!159 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_const_type ]
!160 = metadata !{i32 786478, i32 0, metadata !145, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIbEaSERKS1_", metadata !83, i32 94, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !11, i32 94} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{metadata !144, metadata !151, metadata !158}
!163 = metadata !{i32 786478, i32 0, metadata !145, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIbErsERb", metadata !83, i32 101, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 101} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !151, metadata !166}
!166 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_reference_type ]
!167 = metadata !{i32 786478, i32 0, metadata !145, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIbElsERKb", metadata !83, i32 105, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 105} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{null, metadata !151, metadata !170}
!170 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_reference_type ]
!171 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_const_type ]
!172 = metadata !{i32 786478, i32 0, metadata !145, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIbE5emptyEv", metadata !83, i32 112, metadata !173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 112} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !117, metadata !175}
!175 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !159} ; [ DW_TAG_pointer_type ]
!176 = metadata !{i32 786478, i32 0, metadata !145, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIbE4fullEv", metadata !83, i32 117, metadata !173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 117} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786478, i32 0, metadata !145, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readERb", metadata !83, i32 123, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 123} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786478, i32 0, metadata !145, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !83, i32 129, metadata !179, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{metadata !117, metadata !151}
!181 = metadata !{i32 786478, i32 0, metadata !145, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !83, i32 136, metadata !182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 136} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !117, metadata !151, metadata !166}
!184 = metadata !{i32 786478, i32 0, metadata !145, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIbE5writeERKb", metadata !83, i32 144, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786478, i32 0, metadata !145, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIbE8write_nbERKb", metadata !83, i32 150, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 150} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !117, metadata !151, metadata !170}
!188 = metadata !{i32 786478, i32 0, metadata !145, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIbE4sizeEv", metadata !83, i32 157, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 157} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !86, metadata !151}
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !117, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!193 = metadata !{i32 786478, i32 0, metadata !77, metadata !"newObject", metadata !"newObject", metadata !"_Z9newObjectRN3hls6streamI5PRbusEEis", metadata !77, i32 63, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, i32, i16)* @_Z9newObjectRN3hls6streamI5PRbusEEis, null, null, metadata !11, i32 64} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{null, metadata !196, metadata !16, metadata !9}
!196 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !197} ; [ DW_TAG_reference_type ]
!197 = metadata !{i32 786434, metadata !82, metadata !"stream<PRbus>", metadata !83, i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !198, i32 0, null, metadata !252} ; [ DW_TAG_class_type ]
!198 = metadata !{metadata !199, metadata !209, metadata !213, metadata !216, metadata !221, metadata !224, metadata !228, metadata !233, metadata !237, metadata !238, metadata !239, metadata !242, metadata !245, metadata !246, metadata !249}
!199 = metadata !{i32 786445, metadata !197, metadata !"V", metadata !83, i32 163, i64 64, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_member ]
!200 = metadata !{i32 786434, null, metadata !"", metadata !201, i32 19, i64 64, i64 32, i32 0, i32 0, null, metadata !202, i32 0, null, null} ; [ DW_TAG_class_type ]
!201 = metadata !{i32 786473, metadata !"./wrapperAdmin.h", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!202 = metadata !{metadata !203, metadata !204, metadata !205}
!203 = metadata !{i32 786445, metadata !200, metadata !"addr", metadata !201, i32 20, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ]
!204 = metadata !{i32 786445, metadata !200, metadata !"areaID", metadata !201, i32 21, i64 16, i64 16, i64 32, i32 0, metadata !140} ; [ DW_TAG_member ]
!205 = metadata !{i32 786478, i32 0, metadata !200, metadata !"", metadata !"", metadata !"", metadata !201, i32 19, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !11, i32 19} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{null, metadata !208}
!208 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !200} ; [ DW_TAG_pointer_type ]
!209 = metadata !{i32 786478, i32 0, metadata !197, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 83, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{null, metadata !212}
!212 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !197} ; [ DW_TAG_pointer_type ]
!213 = metadata !{i32 786478, i32 0, metadata !197, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 86, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 86} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{null, metadata !212, metadata !94}
!216 = metadata !{i32 786478, i32 0, metadata !197, metadata !"stream", metadata !"stream", metadata !"", metadata !83, i32 91, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !11, i32 91} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{null, metadata !212, metadata !219}
!219 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_reference_type ]
!220 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !197} ; [ DW_TAG_const_type ]
!221 = metadata !{i32 786478, i32 0, metadata !197, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI5PRbusEaSERKS2_", metadata !83, i32 94, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !11, i32 94} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !196, metadata !212, metadata !219}
!224 = metadata !{i32 786478, i32 0, metadata !197, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI5PRbusErsERS1_", metadata !83, i32 101, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 101} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{null, metadata !212, metadata !227}
!227 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_reference_type ]
!228 = metadata !{i32 786478, i32 0, metadata !197, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI5PRbusElsERKS1_", metadata !83, i32 105, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 105} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!230 = metadata !{null, metadata !212, metadata !231}
!231 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_reference_type ]
!232 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_const_type ]
!233 = metadata !{i32 786478, i32 0, metadata !197, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI5PRbusE5emptyEv", metadata !83, i32 112, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 112} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !117, metadata !236}
!236 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !220} ; [ DW_TAG_pointer_type ]
!237 = metadata !{i32 786478, i32 0, metadata !197, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI5PRbusE4fullEv", metadata !83, i32 117, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 117} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786478, i32 0, metadata !197, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI5PRbusE4readERS1_", metadata !83, i32 123, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 123} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786478, i32 0, metadata !197, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI5PRbusE4readEv", metadata !83, i32 129, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !200, metadata !212}
!242 = metadata !{i32 786478, i32 0, metadata !197, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI5PRbusE7read_nbERS1_", metadata !83, i32 136, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 136} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !117, metadata !212, metadata !227}
!245 = metadata !{i32 786478, i32 0, metadata !197, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI5PRbusE5writeERKS1_", metadata !83, i32 144, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786478, i32 0, metadata !197, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI5PRbusE8write_nbERKS1_", metadata !83, i32 150, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 150} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !117, metadata !212, metadata !231}
!249 = metadata !{i32 786478, i32 0, metadata !197, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI5PRbusE4sizeEv", metadata !83, i32 157, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 157} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{metadata !86, metadata !212}
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !200, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!254 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wrapper_newObject", metadata !"wrapper_newObject", metadata !"_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE", metadata !77, i32 77, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream.1"*)* @_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{null, metadata !80, metadata !196}
!257 = metadata !{i32 786478, i32 0, metadata !77, metadata !"readParameters_newObject", metadata !"readParameters_newObject", metadata !"_Z24readParameters_newObjectRN3hls6streamIjEE", metadata !77, i32 87, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_Z24readParameters_newObjectRN3hls6streamIjEE, null, null, metadata !11, i32 88} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wrapper_status", metadata !"wrapper_status", metadata !"_Z14wrapper_statusRN3hls6streamIbEE", metadata !77, i32 108, metadata !259, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @_Z14wrapper_statusRN3hls6streamIbEE, null, null, metadata !11, i32 109} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{null, metadata !144}
!261 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wrapperAdmin", metadata !"wrapperAdmin", metadata !"_Z12wrapperAdminN3hls6streamIjEES1_NS0_I5PRbusEENS0_IbEE", metadata !77, i32 121, metadata !262, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.1"*, %"class.hls::stream.0"*)* @_Z12wrapperAdminN3hls6streamIjEES1_NS0_I5PRbusEENS0_IbEE, null, null, metadata !11, i32 124} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{null, metadata !81, metadata !81, metadata !197, metadata !145}
!264 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !83, i32 136, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream.0"*, i1*)* @_ZN3hls6streamIbE7read_nbERb, null, metadata !181, metadata !11, i32 136} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI5PRbusE5writeERKS1_", metadata !83, i32 144, metadata !229, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, %struct.PRbus*)* @_ZN3hls6streamI5PRbusE5writeERKS1_, null, metadata !245, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !83, i32 129, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !178, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !82, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !83, i32 112, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.hls::stream"*)* @_ZNK3hls6streamIjE5emptyEv, null, metadata !114, metadata !11, i32 112} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !83, i32 144, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIjE5writeERKj, null, metadata !127, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !83, i32 129, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.hls::stream"*)* @_ZN3hls6streamIjE4readEv, null, metadata !121, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIbEC1Ev", metadata !83, i32 83, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @_ZN3hls6streamIbEC1Ev, null, metadata !148, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIbEC2Ev", metadata !83, i32 83, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @_ZN3hls6streamIbEC2Ev, null, metadata !148, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIjEC1Ev", metadata !83, i32 83, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIjEC1Ev, null, metadata !87, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIjEC2Ev", metadata !83, i32 83, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIjEC2Ev, null, metadata !87, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC1Ev", metadata !77, i32 156, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*)* @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC1Ev, null, metadata !280, metadata !11, i32 156} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{null, metadata !277}
!277 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !278} ; [ DW_TAG_pointer_type ]
!278 = metadata !{i32 786434, null, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !77, i32 154, i64 8, i64 8, i32 0, i32 0, null, metadata !279, i32 0, null, null} ; [ DW_TAG_class_type ]
!279 = metadata !{metadata !280}
!280 = metadata !{i32 786478, i32 0, metadata !278, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"", metadata !77, i32 156, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 156} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC2Ev", metadata !77, i32 156, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*)* @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC2Ev, null, metadata !280, metadata !11, i32 156} ; [ DW_TAG_subprogram ]
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !284, metadata !298, metadata !299, metadata !300, metadata !309, metadata !312, metadata !313, metadata !309, metadata !312, metadata !313, metadata !312, metadata !314, metadata !315, metadata !312, metadata !314, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328}
!284 = metadata !{i32 786484, i32 0, null, metadata !"header", metadata !"header", metadata !"_ZL6header", metadata !201, i32 9, metadata !285, i32 1, i32 1, %struct.headerStruct* @_ZL6header} ; [ DW_TAG_variable ]
!285 = metadata !{i32 786434, null, metadata !"headerStruct", metadata !286, i32 11, i64 64, i64 8, i32 0, i32 0, null, metadata !287, i32 0, null, null} ; [ DW_TAG_class_type ]
!286 = metadata !{i32 786473, metadata !"./header.h", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!287 = metadata !{metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!288 = metadata !{i32 786445, metadata !285, metadata !"nodeID", metadata !286, i32 14, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!289 = metadata !{i32 786445, metadata !285, metadata !"objectID", metadata !286, i32 15, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ]
!290 = metadata !{i32 786445, metadata !285, metadata !"methodID", metadata !286, i32 16, i64 8, i64 8, i64 16, i32 0, metadata !10} ; [ DW_TAG_member ]
!291 = metadata !{i32 786445, metadata !285, metadata !"flags", metadata !286, i32 17, i64 8, i64 8, i64 24, i32 0, metadata !10} ; [ DW_TAG_member ]
!292 = metadata !{i32 786445, metadata !285, metadata !"cb", metadata !286, i32 19, i64 16, i64 16, i64 32, i32 0, metadata !140} ; [ DW_TAG_member ]
!293 = metadata !{i32 786445, metadata !285, metadata !"size", metadata !286, i32 20, i64 16, i64 16, i64 48, i32 0, metadata !140} ; [ DW_TAG_member ]
!294 = metadata !{i32 786478, i32 0, metadata !285, metadata !"headerStruct", metadata !"headerStruct", metadata !"", metadata !286, i32 11, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !11, i32 11} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{null, metadata !297}
!297 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !285} ; [ DW_TAG_pointer_type ]
!298 = metadata !{i32 786484, i32 0, null, metadata !"bufferRESP", metadata !"bufferRESP", metadata !"_ZL10bufferRESP", metadata !201, i32 16, metadata !81, i32 1, i32 1, %"class.hls::stream"* @_ZL10bufferRESP} ; [ DW_TAG_variable ]
!299 = metadata !{i32 786484, i32 0, null, metadata !"bufferPRdone", metadata !"bufferPRdone", metadata !"_ZL12bufferPRdone", metadata !201, i32 25, metadata !145, i32 1, i32 1, %"class.hls::stream.0"* @_ZL12bufferPRdone} ; [ DW_TAG_variable ]
!300 = metadata !{i32 786484, i32 0, null, metadata !"args_newObject", metadata !"args_newObject", metadata !"_ZL14args_newObject", metadata !201, i32 38, metadata !301, i32 1, i32 1, %struct.PARAM_newObject* @_ZL14args_newObject} ; [ DW_TAG_variable ]
!301 = metadata !{i32 786434, null, metadata !"PARAM_newObject", metadata !201, i32 33, i64 48, i64 8, i32 0, i32 0, null, metadata !302, i32 0, null, null} ; [ DW_TAG_class_type ]
!302 = metadata !{metadata !303, metadata !304, metadata !305}
!303 = metadata !{i32 786445, metadata !301, metadata !"addr", metadata !201, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ]
!304 = metadata !{i32 786445, metadata !301, metadata !"areaID", metadata !201, i32 35, i64 16, i64 16, i64 32, i32 0, metadata !140} ; [ DW_TAG_member ]
!305 = metadata !{i32 786478, i32 0, metadata !301, metadata !"PARAM_newObject", metadata !"PARAM_newObject", metadata !"", metadata !201, i32 33, metadata !306, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !11, i32 33} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!307 = metadata !{null, metadata !308}
!308 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !301} ; [ DW_TAG_pointer_type ]
!309 = metadata !{i32 786484, i32 0, metadata !310, metadata !"FLAG_HAS_PAYLOAD", metadata !"FLAG_HAS_PAYLOAD", metadata !"FLAG_HAS_PAYLOAD", metadata !310, i32 11, metadata !311, i32 1, i32 1, i8 4} ; [ DW_TAG_variable ]
!310 = metadata !{i32 786473, metadata !"./flag_codes.h", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!311 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!312 = metadata !{i32 786484, i32 0, metadata !310, metadata !"FLAG_RESPONSE", metadata !"FLAG_RESPONSE", metadata !"FLAG_RESPONSE", metadata !310, i32 6, metadata !311, i32 1, i32 1, i8 1} ; [ DW_TAG_variable ]
!313 = metadata !{i32 786484, i32 0, metadata !310, metadata !"FLAG_OK", metadata !"FLAG_OK", metadata !"FLAG_OK", metadata !310, i32 9, metadata !311, i32 1, i32 1, i8 0} ; [ DW_TAG_variable ]
!314 = metadata !{i32 786484, i32 0, metadata !310, metadata !"FLAG_FAIL", metadata !"FLAG_FAIL", metadata !"FLAG_FAIL", metadata !310, i32 8, metadata !311, i32 1, i32 1, i8 2} ; [ DW_TAG_variable ]
!315 = metadata !{i32 786484, i32 0, metadata !286, metadata !"NULL_OBJ", metadata !"NULL_OBJ", metadata !"NULL_OBJ", metadata !286, i32 9, metadata !311, i32 1, i32 1, i8 0} ; [ DW_TAG_variable ]
!316 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !77, i32 170, metadata !278, i32 1, i32 1, %class.ssdm_global_array_wrapperAdminpp0ccaplinecc* @_ZL21ssdm_global_array_ins} ; [ DW_TAG_variable ]
!317 = metadata !{i32 786484, i32 0, null, metadata !"NULL_OBJ", metadata !"NULL_OBJ", metadata !"_ZL8NULL_OBJ", metadata !286, i32 9, metadata !311, i32 1, i32 1, i8* @_ZL8NULL_OBJ} ; [ DW_TAG_variable ]
!318 = metadata !{i32 786484, i32 0, null, metadata !"BROADCAST", metadata !"BROADCAST", metadata !"_ZL9BROADCAST", metadata !286, i32 7, metadata !311, i32 1, i32 1, i8* @_ZL9BROADCAST} ; [ DW_TAG_variable ]
!319 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_ASYNC_GET_RESP", metadata !"FLAG_ASYNC_GET_RESP", metadata !"_ZL19FLAG_ASYNC_GET_RESP", metadata !310, i32 17, metadata !311, i32 1, i32 1, i8* @_ZL19FLAG_ASYNC_GET_RESP} ; [ DW_TAG_variable ]
!320 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_ASYNC_REQ", metadata !"FLAG_ASYNC_REQ", metadata !"_ZL14FLAG_ASYNC_REQ", metadata !310, i32 16, metadata !311, i32 1, i32 1, i8* @_ZL14FLAG_ASYNC_REQ} ; [ DW_TAG_variable ]
!321 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_ASYNC", metadata !"FLAG_ASYNC", metadata !"_ZL10FLAG_ASYNC", metadata !310, i32 14, metadata !311, i32 1, i32 1, i8* @_ZL10FLAG_ASYNC} ; [ DW_TAG_variable ]
!322 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_SYNC", metadata !"FLAG_SYNC", metadata !"_ZL9FLAG_SYNC", metadata !310, i32 13, metadata !311, i32 1, i32 1, i8* @_ZL9FLAG_SYNC} ; [ DW_TAG_variable ]
!323 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_HAS_PAYLOAD", metadata !"FLAG_HAS_PAYLOAD", metadata !"_ZL16FLAG_HAS_PAYLOAD", metadata !310, i32 11, metadata !311, i32 1, i32 1, i8* @_ZL16FLAG_HAS_PAYLOAD} ; [ DW_TAG_variable ]
!324 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_OK", metadata !"FLAG_OK", metadata !"_ZL7FLAG_OK", metadata !310, i32 9, metadata !311, i32 1, i32 1, i8* @_ZL7FLAG_OK} ; [ DW_TAG_variable ]
!325 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_FAIL", metadata !"FLAG_FAIL", metadata !"_ZL9FLAG_FAIL", metadata !310, i32 8, metadata !311, i32 1, i32 1, i8* @_ZL9FLAG_FAIL} ; [ DW_TAG_variable ]
!326 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_RESPONSE", metadata !"FLAG_RESPONSE", metadata !"_ZL13FLAG_RESPONSE", metadata !310, i32 6, metadata !311, i32 1, i32 1, i8* @_ZL13FLAG_RESPONSE} ; [ DW_TAG_variable ]
!327 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_REQUEST", metadata !"FLAG_REQUEST", metadata !"_ZL12FLAG_REQUEST", metadata !310, i32 5, metadata !311, i32 1, i32 1, i8* @_ZL12FLAG_REQUEST} ; [ DW_TAG_variable ]
!328 = metadata !{i32 786484, i32 0, null, metadata !"_status", metadata !"_status", metadata !"_ZL7_status", metadata !201, i32 17, metadata !16, i32 1, i32 1, i32* @_ZL7_status} ; [ DW_TAG_variable ]
!329 = metadata !{i16 (i8, i8)* @_Z8to_shorthh, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335}
!330 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!331 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar"}
!333 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!334 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2"}
!335 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!336 = metadata !{i32 (i8, i8, i8, i8)* @_Z6to_inthhhh, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !335}
!337 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!338 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar"}
!340 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!341 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4"}
!342 = metadata !{null, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !335}
!343 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!344 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar", metadata !"uchar"}
!346 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!347 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2", metadata !"c3", metadata !"c4", metadata !"c5", metadata !"c6", metadata !"c7", metadata !"c8"}
!348 = metadata !{null, metadata !349, metadata !331, metadata !350, metadata !333, metadata !351, metadata !335}
!349 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"short", metadata !"uchar*"}
!351 = metadata !{metadata !"kernel_arg_name", metadata !"n", metadata !"bytes"}
!352 = metadata !{null, metadata !349, metadata !331, metadata !353, metadata !333, metadata !351, metadata !335}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uchar*"}
!354 = metadata !{null, metadata !349, metadata !331, metadata !355, metadata !333, metadata !351, metadata !335}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"long long", metadata !"uchar*"}
!356 = metadata !{null, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !335}
!357 = metadata !{null, metadata !349, metadata !331, metadata !358, metadata !333, metadata !351, metadata !335}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"uchar*"}
!359 = metadata !{null, metadata !349, metadata !331, metadata !360, metadata !333, metadata !351, metadata !335}
!360 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"uchar*"}
!361 = metadata !{void (%"class.hls::stream"*, i16)* @_Z7forwardRN3hls6streamIjEEs, metadata !330, metadata !331, metadata !362, metadata !333, metadata !363, metadata !335}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"short"}
!363 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"size"}
!364 = metadata !{void (%"class.hls::stream"*)* @_Z14getRequestHeadRN3hls6streamIjEE, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !335}
!365 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!366 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &"}
!368 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!369 = metadata !{metadata !"kernel_arg_name", metadata !"src"}
!370 = metadata !{void (%"class.hls::stream"*, i16, i16, i8)* @_Z13buildResponseRN3hls6streamIjEEtth, metadata !337, metadata !338, metadata !371, metadata !340, metadata !372, metadata !335}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"ushort", metadata !"ushort", metadata !"uchar"}
!372 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"objID", metadata !"size", metadata !"flags"}
!373 = metadata !{null, metadata !365, metadata !366, metadata !374, metadata !368, metadata !375, metadata !335}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<_Bool> &"}
!375 = metadata !{metadata !"kernel_arg_name", metadata !"prDone"}
!376 = metadata !{void (%"class.hls::stream.1"*, i32, i16)* @_Z9newObjectRN3hls6streamI5PRbusEEis, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !335}
!377 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!378 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<PRbus> &", metadata !"int", metadata !"short"}
!380 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!381 = metadata !{metadata !"kernel_arg_name", metadata !"pr", metadata !"addr", metadata !"areaID"}
!382 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream.1"*)* @_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE, metadata !330, metadata !331, metadata !383, metadata !333, metadata !384, metadata !335}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"hls::stream<PRbus> &"}
!384 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"pr"}
!385 = metadata !{void (%"class.hls::stream"*)* @_Z24readParameters_newObjectRN3hls6streamIjEE, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !335}
!386 = metadata !{void (%"class.hls::stream.0"*)* @_Z14wrapper_statusRN3hls6streamIbEE, metadata !365, metadata !366, metadata !374, metadata !368, metadata !375, metadata !335}
!387 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.1"*, %"class.hls::stream.0"*)* @_Z12wrapperAdminN3hls6streamIjEES1_NS0_I5PRbusEENS0_IbEE, metadata !337, metadata !338, metadata !388, metadata !340, metadata !389, metadata !335}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint>", metadata !"hls::stream<uint>", metadata !"hls::stream<PRbus>", metadata !"hls::stream<_Bool>"}
!389 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"dout", metadata !"pr", metadata !"prDone"}
!390 = metadata !{i1 (%"class.hls::stream.0"*, i1*)* @_ZN3hls6streamIbE7read_nbERb, metadata !365, metadata !366, metadata !391, metadata !368, metadata !392, metadata !335}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool &"}
!392 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!393 = metadata !{void (%"class.hls::stream.1"*, %struct.PRbus*)* @_ZN3hls6streamI5PRbusE5writeERKS1_, metadata !365, metadata !366, metadata !394, metadata !368, metadata !395, metadata !335}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const PRbus &"}
!395 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!396 = metadata !{null, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!397 = metadata !{metadata !"kernel_arg_addr_space"}
!398 = metadata !{metadata !"kernel_arg_access_qual"}
!399 = metadata !{metadata !"kernel_arg_type"}
!400 = metadata !{metadata !"kernel_arg_type_qual"}
!401 = metadata !{metadata !"kernel_arg_name"}
!402 = metadata !{i1 (%"class.hls::stream"*)* @_ZNK3hls6streamIjE5emptyEv, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!403 = metadata !{void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIjE5writeERKj, metadata !365, metadata !366, metadata !404, metadata !368, metadata !395, metadata !335}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!405 = metadata !{i32 (%"class.hls::stream"*)* @_ZN3hls6streamIjE4readEv, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!406 = metadata !{void (%"class.hls::stream.0"*)* @_ZN3hls6streamIbEC1Ev, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!407 = metadata !{void (%"class.hls::stream.0"*)* @_ZN3hls6streamIbEC2Ev, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!408 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIjEC1Ev, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!409 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIjEC2Ev, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!410 = metadata !{void (%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*)* @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC1Ev, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!411 = metadata !{void (%class.ssdm_global_array_wrapperAdminpp0ccaplinecc*)* @_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC2Ev, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !335}
!412 = metadata !{i32 786689, metadata !5, metadata !"c1", metadata !6, i32 16777235, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!413 = metadata !{i32 19, i32 24, metadata !5, null}
!414 = metadata !{i32 786689, metadata !5, metadata !"c2", metadata !6, i32 33554451, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!415 = metadata !{i32 19, i32 42, metadata !5, null}
!416 = metadata !{i32 786688, metadata !417, metadata !"aux", metadata !6, i32 21, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!417 = metadata !{i32 786443, metadata !5, i32 20, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!418 = metadata !{i32 21, i32 9, metadata !417, null}
!419 = metadata !{i32 22, i32 3, metadata !417, null}
!420 = metadata !{i32 23, i32 3, metadata !417, null}
!421 = metadata !{i32 786689, metadata !13, metadata !"c1", metadata !6, i32 16777243, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 27, i32 22, metadata !13, null}
!423 = metadata !{i32 786689, metadata !13, metadata !"c2", metadata !6, i32 33554459, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!424 = metadata !{i32 27, i32 40, metadata !13, null}
!425 = metadata !{i32 786689, metadata !13, metadata !"c3", metadata !6, i32 50331676, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!426 = metadata !{i32 28, i32 17, metadata !13, null}
!427 = metadata !{i32 786689, metadata !13, metadata !"c4", metadata !6, i32 67108892, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!428 = metadata !{i32 28, i32 35, metadata !13, null}
!429 = metadata !{i32 786688, metadata !430, metadata !"aux", metadata !6, i32 30, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!430 = metadata !{i32 786443, metadata !13, i32 29, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!431 = metadata !{i32 30, i32 7, metadata !430, null}
!432 = metadata !{i32 31, i32 3, metadata !430, null}
!433 = metadata !{i32 32, i32 3, metadata !430, null}
!434 = metadata !{i32 786689, metadata !272, metadata !"this", metadata !83, i32 16777299, metadata !435, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!435 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ]
!436 = metadata !{i32 83, i32 43, metadata !272, null}
!437 = metadata !{i32 84, i32 5, metadata !272, null}
!438 = metadata !{i32 786689, metadata !270, metadata !"this", metadata !83, i32 16777299, metadata !439, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!439 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ]
!440 = metadata !{i32 83, i32 43, metadata !270, null}
!441 = metadata !{i32 84, i32 5, metadata !270, null}
!442 = metadata !{i32 786689, metadata !76, metadata !"src", metadata !77, i32 16777222, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!443 = metadata !{i32 6, i32 36, metadata !76, null}
!444 = metadata !{i32 786689, metadata !76, metadata !"size", metadata !77, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!445 = metadata !{i32 6, i32 47, metadata !76, null}
!446 = metadata !{i32 8, i32 1, metadata !447, null}
!447 = metadata !{i32 786443, metadata !76, i32 7, i32 1, metadata !77, i32 0} ; [ DW_TAG_lexical_block ]
!448 = metadata !{i32 786688, metadata !447, metadata !"it", metadata !77, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 8, i32 9, metadata !447, null}
!450 = metadata !{i32 8, i32 13, metadata !447, null}
!451 = metadata !{i32 9, i32 3, metadata !447, null}
!452 = metadata !{i32 10, i32 5, metadata !453, null}
!453 = metadata !{i32 786443, metadata !447, i32 9, i32 20, metadata !77, i32 1} ; [ DW_TAG_lexical_block ]
!454 = metadata !{i32 11, i32 5, metadata !453, null}
!455 = metadata !{i32 12, i32 3, metadata !453, null}
!456 = metadata !{i32 13, i32 1, metadata !447, null}
!457 = metadata !{i32 786689, metadata !269, metadata !"this", metadata !83, i32 16777345, metadata !435, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!458 = metadata !{i32 129, i32 56, metadata !269, null}
!459 = metadata !{i32 786688, metadata !460, metadata !"tmp", metadata !83, i32 130, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!460 = metadata !{i32 786443, metadata !269, i32 129, i32 63, metadata !83, i32 24} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 130, i32 22, metadata !460, null}
!462 = metadata !{i32 131, i32 9, metadata !460, null}
!463 = metadata !{i32 132, i32 9, metadata !460, null}
!464 = metadata !{i32 786689, metadata !134, metadata !"src", metadata !77, i32 16777233, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!465 = metadata !{i32 17, i32 43, metadata !134, null}
!466 = metadata !{i32 786688, metadata !467, metadata !"words32", metadata !77, i32 19, metadata !468, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 786443, metadata !134, i32 18, i32 1, metadata !77, i32 2} ; [ DW_TAG_lexical_block ]
!468 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !16, metadata !469, i32 0, i32 0} ; [ DW_TAG_array_type ]
!469 = metadata !{metadata !470}
!470 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!471 = metadata !{i32 19, i32 7, metadata !467, null}
!472 = metadata !{i32 786688, metadata !473, metadata !"it", metadata !77, i32 21, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!473 = metadata !{i32 786443, metadata !467, i32 21, i32 3, metadata !77, i32 3} ; [ DW_TAG_lexical_block ]
!474 = metadata !{i32 21, i32 11, metadata !473, null}
!475 = metadata !{i32 21, i32 15, metadata !473, null}
!476 = metadata !{i32 22, i32 19, metadata !473, null}
!477 = metadata !{i32 21, i32 26, metadata !473, null}
!478 = metadata !{i32 24, i32 3, metadata !467, null}
!479 = metadata !{i32 25, i32 3, metadata !467, null}
!480 = metadata !{i32 26, i32 3, metadata !467, null}
!481 = metadata !{i32 27, i32 3, metadata !467, null}
!482 = metadata !{i32 28, i32 3, metadata !467, null}
!483 = metadata !{i32 29, i32 3, metadata !467, null}
!484 = metadata !{i32 30, i32 1, metadata !467, null}
!485 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !77, i32 16777250, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!486 = metadata !{i32 34, i32 42, metadata !137, null}
!487 = metadata !{i32 786689, metadata !137, metadata !"objID", metadata !77, i32 33554467, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 35, i32 23, metadata !137, null}
!489 = metadata !{i32 786689, metadata !137, metadata !"size", metadata !77, i32 50331683, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!490 = metadata !{i32 35, i32 45, metadata !137, null}
!491 = metadata !{i32 786689, metadata !137, metadata !"flags", metadata !77, i32 67108900, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!492 = metadata !{i32 36, i32 22, metadata !137, null}
!493 = metadata !{i32 38, i32 1, metadata !494, null}
!494 = metadata !{i32 786443, metadata !137, i32 37, i32 1, metadata !77, i32 4} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786688, metadata !494, metadata !"words32", metadata !77, i32 38, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 38, i32 7, metadata !494, null}
!497 = metadata !{i32 40, i32 3, metadata !494, null}
!498 = metadata !{i32 41, i32 3, metadata !494, null}
!499 = metadata !{i32 42, i32 3, metadata !494, null}
!500 = metadata !{i32 43, i32 5, metadata !501, null}
!501 = metadata !{i32 786443, metadata !494, i32 42, i32 31, metadata !77, i32 5} ; [ DW_TAG_lexical_block ]
!502 = metadata !{i32 44, i32 5, metadata !501, null}
!503 = metadata !{i32 45, i32 5, metadata !501, null}
!504 = metadata !{i32 45, i32 13, metadata !501, null}
!505 = metadata !{i32 46, i32 7, metadata !501, null}
!506 = metadata !{i32 46, i32 17, metadata !501, null}
!507 = metadata !{i32 47, i32 3, metadata !501, null}
!508 = metadata !{i32 48, i32 1, metadata !494, null}
!509 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !435, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!510 = metadata !{i32 144, i32 48, metadata !268, null}
!511 = metadata !{i32 786689, metadata !268, metadata !"din", metadata !83, i32 33554576, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!512 = metadata !{i32 144, i32 74, metadata !268, null}
!513 = metadata !{i32 786688, metadata !514, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!514 = metadata !{i32 786443, metadata !268, i32 144, i32 79, metadata !83, i32 23} ; [ DW_TAG_lexical_block ]
!515 = metadata !{i32 145, i32 22, metadata !514, null}
!516 = metadata !{i32 145, i32 31, metadata !514, null}
!517 = metadata !{i32 146, i32 9, metadata !514, null}
!518 = metadata !{i32 147, i32 5, metadata !514, null}
!519 = metadata !{i32 786689, metadata !267, metadata !"this", metadata !83, i32 16777328, metadata !520, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!520 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ]
!521 = metadata !{i32 112, i32 48, metadata !267, null}
!522 = metadata !{i32 786688, metadata !523, metadata !"tmp", metadata !83, i32 113, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!523 = metadata !{i32 786443, metadata !267, i32 112, i32 62, metadata !83, i32 22} ; [ DW_TAG_lexical_block ]
!524 = metadata !{i32 113, i32 14, metadata !523, null}
!525 = metadata !{i32 113, i32 20, metadata !523, null}
!526 = metadata !{i32 114, i32 9, metadata !523, null}
!527 = metadata !{i32 786689, metadata !193, metadata !"pr", metadata !77, i32 16777279, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!528 = metadata !{i32 63, i32 31, metadata !193, null}
!529 = metadata !{i32 786689, metadata !193, metadata !"addr", metadata !77, i32 33554495, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!530 = metadata !{i32 63, i32 39, metadata !193, null}
!531 = metadata !{i32 786689, metadata !193, metadata !"areaID", metadata !77, i32 50331711, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 63, i32 51, metadata !193, null}
!533 = metadata !{i32 65, i32 1, metadata !534, null}
!534 = metadata !{i32 786443, metadata !193, i32 64, i32 1, metadata !77, i32 7} ; [ DW_TAG_lexical_block ]
!535 = metadata !{i32 786688, metadata !534, metadata !"aux", metadata !77, i32 65, metadata !536, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!536 = metadata !{i32 786454, null, metadata !"PRbus", metadata !77, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ]
!537 = metadata !{i32 65, i32 9, metadata !534, null}
!538 = metadata !{i32 66, i32 3, metadata !534, null}
!539 = metadata !{i32 67, i32 3, metadata !534, null}
!540 = metadata !{i32 68, i32 3, metadata !534, null}
!541 = metadata !{i32 69, i32 1, metadata !534, null}
!542 = metadata !{i32 786689, metadata !265, metadata !"this", metadata !83, i32 16777360, metadata !543, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!543 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ]
!544 = metadata !{i32 144, i32 48, metadata !265, null}
!545 = metadata !{i32 786689, metadata !265, metadata !"din", metadata !83, i32 33554576, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!546 = metadata !{i32 144, i32 74, metadata !265, null}
!547 = metadata !{i32 786688, metadata !548, metadata !"tmp", metadata !83, i32 145, metadata !200, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!548 = metadata !{i32 786443, metadata !265, i32 144, i32 79, metadata !83, i32 20} ; [ DW_TAG_lexical_block ]
!549 = metadata !{i32 145, i32 22, metadata !548, null}
!550 = metadata !{i32 145, i32 31, metadata !548, null}
!551 = metadata !{i32 146, i32 9, metadata !548, null}
!552 = metadata !{i32 147, i32 5, metadata !548, null}
!553 = metadata !{i32 786689, metadata !254, metadata !"src", metadata !77, i32 16777293, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!554 = metadata !{i32 77, i32 46, metadata !254, null}
!555 = metadata !{i32 786689, metadata !254, metadata !"pr", metadata !77, i32 33554510, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!556 = metadata !{i32 78, i32 25, metadata !254, null}
!557 = metadata !{i32 80, i32 1, metadata !558, null}
!558 = metadata !{i32 786443, metadata !254, i32 79, i32 1, metadata !77, i32 8} ; [ DW_TAG_lexical_block ]
!559 = metadata !{i32 80, i32 3, metadata !558, null}
!560 = metadata !{i32 81, i32 3, metadata !558, null}
!561 = metadata !{i32 82, i32 3, metadata !558, null}
!562 = metadata !{i32 83, i32 1, metadata !558, null}
!563 = metadata !{i32 786689, metadata !257, metadata !"src", metadata !77, i32 16777303, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!564 = metadata !{i32 87, i32 53, metadata !257, null}
!565 = metadata !{i32 89, i32 1, metadata !566, null}
!566 = metadata !{i32 786443, metadata !257, i32 88, i32 1, metadata !77, i32 9} ; [ DW_TAG_lexical_block ]
!567 = metadata !{i32 786688, metadata !566, metadata !"words32", metadata !77, i32 89, metadata !468, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!568 = metadata !{i32 89, i32 7, metadata !566, null}
!569 = metadata !{i32 786688, metadata !570, metadata !"it", metadata !77, i32 91, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!570 = metadata !{i32 786443, metadata !566, i32 91, i32 3, metadata !77, i32 10} ; [ DW_TAG_lexical_block ]
!571 = metadata !{i32 91, i32 11, metadata !570, null}
!572 = metadata !{i32 91, i32 15, metadata !570, null}
!573 = metadata !{i32 92, i32 19, metadata !570, null}
!574 = metadata !{i32 91, i32 26, metadata !570, null}
!575 = metadata !{i32 786688, metadata !566, metadata !"ptr", metadata !77, i32 94, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!576 = metadata !{i32 94, i32 18, metadata !566, null}
!577 = metadata !{i32 94, i32 46, metadata !566, null}
!578 = metadata !{i32 95, i32 25, metadata !566, null}
!579 = metadata !{i32 786688, metadata !566, metadata !"padding", metadata !77, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!580 = metadata !{i32 96, i32 9, metadata !566, null}
!581 = metadata !{i32 96, i32 19, metadata !566, null}
!582 = metadata !{i32 97, i32 27, metadata !566, null}
!583 = metadata !{i32 98, i32 1, metadata !566, null}
!584 = metadata !{i32 786689, metadata !258, metadata !"prDone", metadata !77, i32 16777324, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!585 = metadata !{i32 108, i32 35, metadata !258, null}
!586 = metadata !{i32 110, i32 1, metadata !587, null}
!587 = metadata !{i32 786443, metadata !258, i32 109, i32 1, metadata !77, i32 11} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 786688, metadata !587, metadata !"aux", metadata !77, i32 110, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!589 = metadata !{i32 110, i32 8, metadata !587, null}
!590 = metadata !{i32 110, i32 19, metadata !587, null}
!591 = metadata !{i32 111, i32 3, metadata !587, null}
!592 = metadata !{i32 112, i32 3, metadata !587, null}
!593 = metadata !{i32 113, i32 5, metadata !587, null}
!594 = metadata !{i32 114, i32 3, metadata !587, null}
!595 = metadata !{i32 115, i32 1, metadata !587, null}
!596 = metadata !{i32 786689, metadata !264, metadata !"this", metadata !83, i32 16777352, metadata !439, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!597 = metadata !{i32 136, i32 48, metadata !264, null}
!598 = metadata !{i32 786689, metadata !264, metadata !"dout", metadata !83, i32 33554568, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!599 = metadata !{i32 136, i32 70, metadata !264, null}
!600 = metadata !{i32 786688, metadata !601, metadata !"tmp", metadata !83, i32 137, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!601 = metadata !{i32 786443, metadata !264, i32 136, i32 76, metadata !83, i32 19} ; [ DW_TAG_lexical_block ]
!602 = metadata !{i32 137, i32 22, metadata !601, null}
!603 = metadata !{i32 786688, metadata !601, metadata !"empty_n", metadata !83, i32 138, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!604 = metadata !{i32 138, i32 14, metadata !601, null}
!605 = metadata !{i32 138, i32 24, metadata !601, null}
!606 = metadata !{i32 139, i32 9, metadata !601, null}
!607 = metadata !{i32 140, i32 9, metadata !601, null}
!608 = metadata !{i32 786689, metadata !261, metadata !"din", metadata !77, i32 16777337, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!609 = metadata !{i32 121, i32 40, metadata !261, null}
!610 = metadata !{i32 786689, metadata !261, metadata !"dout", metadata !77, i32 33554554, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!611 = metadata !{i32 122, i32 33, metadata !261, null}
!612 = metadata !{i32 786689, metadata !261, metadata !"pr", metadata !77, i32 50331771, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!613 = metadata !{i32 123, i32 26, metadata !261, null}
!614 = metadata !{i32 786689, metadata !261, metadata !"prDone", metadata !77, i32 67108987, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!615 = metadata !{i32 123, i32 48, metadata !261, null}
!616 = metadata !{i32 125, i32 1, metadata !617, null}
!617 = metadata !{i32 786443, metadata !261, i32 124, i32 1, metadata !77, i32 12} ; [ DW_TAG_lexical_block ]
!618 = metadata !{i32 126, i32 3, metadata !617, null}
!619 = metadata !{i32 128, i32 3, metadata !617, null}
!620 = metadata !{i32 129, i32 5, metadata !621, null}
!621 = metadata !{i32 786443, metadata !617, i32 128, i32 28, metadata !77, i32 13} ; [ DW_TAG_lexical_block ]
!622 = metadata !{i32 130, i32 7, metadata !623, null}
!623 = metadata !{i32 786443, metadata !621, i32 129, i32 30, metadata !77, i32 14} ; [ DW_TAG_lexical_block ]
!624 = metadata !{i32 132, i32 7, metadata !623, null}
!625 = metadata !{i32 133, i32 5, metadata !623, null}
!626 = metadata !{i32 135, i32 7, metadata !627, null}
!627 = metadata !{i32 786443, metadata !621, i32 134, i32 9, metadata !77, i32 15} ; [ DW_TAG_lexical_block ]
!628 = metadata !{i32 136, i32 2, metadata !629, null}
!629 = metadata !{i32 786443, metadata !627, i32 135, i32 32, metadata !77, i32 16} ; [ DW_TAG_lexical_block ]
!630 = metadata !{i32 137, i32 2, metadata !629, null}
!631 = metadata !{i32 139, i32 7, metadata !629, null}
!632 = metadata !{i32 141, i32 2, metadata !633, null}
!633 = metadata !{i32 786443, metadata !627, i32 140, i32 11, metadata !77, i32 17} ; [ DW_TAG_lexical_block ]
!634 = metadata !{i32 142, i32 2, metadata !633, null}
!635 = metadata !{i32 146, i32 3, metadata !621, null}
!636 = metadata !{i32 148, i32 5, metadata !637, null}
!637 = metadata !{i32 786443, metadata !617, i32 147, i32 7, metadata !77, i32 18} ; [ DW_TAG_lexical_block ]
!638 = metadata !{i32 149, i32 5, metadata !637, null}
!639 = metadata !{i32 152, i32 1, metadata !617, null}
!640 = metadata !{i32 786689, metadata !274, metadata !"this", metadata !77, i32 16777372, metadata !641, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!641 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ]
!642 = metadata !{i32 156, i32 42, metadata !274, null}
!643 = metadata !{i32 168, i32 3, metadata !274, null}
!644 = metadata !{i32 786689, metadata !271, metadata !"this", metadata !83, i32 16777299, metadata !439, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!645 = metadata !{i32 83, i32 43, metadata !271, null}
!646 = metadata !{i32 84, i32 5, metadata !647, null}
!647 = metadata !{i32 786443, metadata !271, i32 83, i32 52, metadata !83, i32 25} ; [ DW_TAG_lexical_block ]
!648 = metadata !{i32 786689, metadata !273, metadata !"this", metadata !83, i32 16777299, metadata !435, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!649 = metadata !{i32 83, i32 43, metadata !273, null}
!650 = metadata !{i32 84, i32 5, metadata !651, null}
!651 = metadata !{i32 786443, metadata !273, i32 83, i32 52, metadata !83, i32 26} ; [ DW_TAG_lexical_block ]
!652 = metadata !{i32 786689, metadata !281, metadata !"this", metadata !77, i32 16777372, metadata !641, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!653 = metadata !{i32 156, i32 42, metadata !281, null}
!654 = metadata !{i32 157, i32 4, metadata !655, null}
!655 = metadata !{i32 786443, metadata !281, i32 156, i32 88, metadata !77, i32 27} ; [ DW_TAG_lexical_block ]
!656 = metadata !{i32 158, i32 4, metadata !655, null}
!657 = metadata !{i32 159, i32 4, metadata !655, null}
!658 = metadata !{i32 160, i32 4, metadata !655, null}
!659 = metadata !{i32 161, i32 4, metadata !655, null}
!660 = metadata !{i32 162, i32 4, metadata !655, null}
!661 = metadata !{i32 163, i32 4, metadata !655, null}
!662 = metadata !{i32 164, i32 4, metadata !655, null}
!663 = metadata !{i32 165, i32 4, metadata !655, null}
!664 = metadata !{i32 166, i32 4, metadata !655, null}
!665 = metadata !{i32 167, i32 4, metadata !655, null}
!666 = metadata !{i32 168, i32 3, metadata !655, null}
