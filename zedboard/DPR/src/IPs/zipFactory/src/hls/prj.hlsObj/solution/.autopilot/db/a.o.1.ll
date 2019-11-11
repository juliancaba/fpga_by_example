; ModuleID = '/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.headerStruct.2 = type <{ i8, i8, i8, i8, i16, i16 }>
%union.type64.1 = type { double }
%union.type32.0 = type { float }
%"class.hls::stream.3" = type { i32 }
%struct.PARAM_newObject.5 = type <{ i32, i16 }>
%"class.hls::stream.1.8" = type { %struct.PRbus.7 }
%struct.PRbus.7 = type { i32, i16 }
%"class.hls::stream.0.4" = type { i1 }

@wrapperAdmin.str = internal unnamed_addr constant [13 x i8] c"wrapperAdmin\00" ; [#uses=1 type=[13 x i8]*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]
@header = internal unnamed_addr global %struct.headerStruct.2 zeroinitializer, align 1 ; [#uses=6 type=%struct.headerStruct.2*]
@conv64 = global %union.type64.1 zeroinitializer, align 8 ; [#uses=0 type=%union.type64.1*]
@conv32 = global %union.type32.0 zeroinitializer, align 4 ; [#uses=0 type=%union.type32.0*]
@bufferRESP = internal global %"class.hls::stream.3" zeroinitializer, align 4 ; [#uses=1 type=%"class.hls::stream.3"*]
@args_newObject = internal unnamed_addr global %struct.PARAM_newObject.5 zeroinitializer, align 4 ; [#uses=2 type=%struct.PARAM_newObject.5*]
@_status = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@.str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @wrapperAdmin(%"class.hls::stream.3"* %din, %"class.hls::stream.3"* %dout, %"class.hls::stream.1.8"* %pr, %"class.hls::stream.0.4"* %prDone) nounwind uwtable {
  %tmp.37 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.15 = alloca i1, align 1                    ; [#uses=2 type=i1*]
  %tmp.33 = alloca %struct.PRbus.7, align 4       ; [#uses=3 type=%struct.PRbus.7*]
  %tmp.34 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %words32 = alloca [2 x i32], align 4            ; [#uses=4 type=[2 x i32]*]
  %tmp.11 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.49 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.48 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.46 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.44 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.21 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.7 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @wrapperAdmin.str) nounwind
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.3"* %din}, metadata !403), !dbg !404 ; [debug line = 121:40] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.3"* %dout}, metadata !405), !dbg !406 ; [debug line = 122:33] [debug variable = dout]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1.8"* %pr}, metadata !407), !dbg !408 ; [debug line = 123:26] [debug variable = pr]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0.4"* %prDone}, metadata !409), !dbg !410 ; [debug line = 123:48] [debug variable = prDone]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !411 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0.4"* %prDone, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !411 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.1.8"* %pr, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !411 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.3"* %dout, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !411 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.3"* %din, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !411 ; [debug line = 125:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !411 ; [debug line = 125:1]
  call fastcc void @getRequestHead(%"class.hls::stream.3"* %din), !dbg !413 ; [debug line = 126:3]
  %header.load = load i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 1), align 1, !dbg !414 ; [#uses=2 type=i8] [debug line = 128:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %header.load) nounwind
  %tmp = icmp eq i8 %header.load, 2, !dbg !414    ; [#uses=1 type=i1] [debug line = 128:3]
  br i1 %tmp, label %1, label %12, !dbg !414      ; [debug line = 128:3]

; <label>:1                                       ; preds = %0
  %header.load.1 = load i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 2), align 1, !dbg !415 ; [#uses=4 type=i8] [debug line = 129:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %header.load.1) nounwind
  %tmp.1 = icmp eq i8 %header.load.1, 1, !dbg !415 ; [#uses=1 type=i1] [debug line = 129:5]
  br i1 %tmp.1, label %2, label %5, !dbg !415     ; [debug line = 129:5]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !417) nounwind, !dbg !420 ; [debug line = 34:42@130:7] [debug variable = dst]
  %header.load.5 = load i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 4), align 1, !dbg !421 ; [#uses=2 type=i16] [debug line = 40:3@130:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %header.load.5) nounwind
  %tmp.9 = zext i16 %header.load.5 to i32, !dbg !421 ; [#uses=1 type=i32] [debug line = 40:3@130:7]
  %tmp.10 = shl nuw i32 %tmp.9, 16, !dbg !421     ; [#uses=1 type=i32] [debug line = 40:3@130:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 1) nounwind
  %words32.3 = or i32 %tmp.10, 257, !dbg !421     ; [#uses=1 type=i32] [debug line = 40:3@130:7]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !423) nounwind, !dbg !421 ; [debug line = 40:3@130:7] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !424) nounwind, !dbg !427 ; [debug line = 144:48@41:3@130:7] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.11}, metadata !428) nounwind, !dbg !430 ; [debug line = 145:22@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !431) nounwind, !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !428), !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !428), !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.3}, i64 0, metadata !428), !dbg !432 ; [debug line = 145:31@41:3@130:7] [debug variable = tmp]
  store i32 %words32.3, i32* %tmp.11, align 4, !dbg !432 ; [debug line = 145:31@41:3@130:7]
  %dout.addr.1 = getelementptr inbounds %"class.hls::stream.3"* %dout, i64 0, i32 0, !dbg !433 ; [#uses=1 type=i32*] [debug line = 146:9@41:3@130:7]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %dout.addr.1, i32* %tmp.11) nounwind, !dbg !433 ; [debug line = 146:9@41:3@130:7]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %din}, i64 0, metadata !434) nounwind, !dbg !436 ; [debug line = 77:46@132:7] [debug variable = src]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1.8"* %pr}, i64 0, metadata !437) nounwind, !dbg !438 ; [debug line = 78:25@132:7] [debug variable = pr]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %din}, i64 0, metadata !439) nounwind, !dbg !442 ; [debug line = 87:53@80:3@132:7] [debug variable = src]
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %words32}, metadata !443) nounwind, !dbg !448 ; [debug line = 89:7@80:3@132:7] [debug variable = words32]
  %din.addr = getelementptr inbounds %"class.hls::stream.3"* %din, i64 0, i32 0, !dbg !449 ; [#uses=1 type=i32*] [debug line = 131:9@92:19@80:3@132:7]
  br label %3, !dbg !453                          ; [debug line = 91:15@80:3@132:7]

; <label>:3                                       ; preds = %4, %2
  %it.0.i.i = phi i32 [ 0, %2 ], [ %it, %4 ]      ; [#uses=3 type=i32]
  %tmp.14 = icmp eq i32 %it.0.i.i, 2, !dbg !453   ; [#uses=1 type=i1] [debug line = 91:15@80:3@132:7]
  br i1 %tmp.14, label %wrapper_newObject.exit, label %4, !dbg !453 ; [debug line = 91:15@80:3@132:7]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %din}, i64 0, metadata !454) nounwind, !dbg !455 ; [debug line = 129:56@92:19@80:3@132:7] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.34}, metadata !456) nounwind, !dbg !457 ; [debug line = 130:22@92:19@80:3@132:7] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %din.addr, i32* %tmp.34) nounwind, !dbg !449 ; [debug line = 131:9@92:19@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !458) nounwind, !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !456), !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !456), !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !456), !dbg !459 ; [debug line = 132:9@92:19@80:3@132:7] [debug variable = tmp]
  %tmp.34.load = load i32* %tmp.34, align 4, !dbg !459 ; [#uses=1 type=i32] [debug line = 132:9@92:19@80:3@132:7]
  %tmp.35 = sext i32 %it.0.i.i to i64, !dbg !451  ; [#uses=1 type=i64] [debug line = 92:19@80:3@132:7]
  %words32.addr.2 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 %tmp.35, !dbg !451 ; [#uses=1 type=i32*] [debug line = 92:19@80:3@132:7]
  store i32 %tmp.34.load, i32* %words32.addr.2, align 4, !dbg !451 ; [debug line = 92:19@80:3@132:7]
  %it = add nsw i32 %it.0.i.i, 1, !dbg !460       ; [#uses=1 type=i32] [debug line = 91:26@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i32 %it}, i64 0, metadata !461) nounwind, !dbg !460 ; [debug line = 91:26@80:3@132:7] [debug variable = it]
  br label %3, !dbg !460                          ; [debug line = 91:26@80:3@132:7]

wrapper_newObject.exit:                           ; preds = %3
  %ptr = bitcast [2 x i32]* %words32 to i8*, !dbg !462 ; [#uses=3 type=i8*] [debug line = 94:46@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i8* %ptr}, i64 0, metadata !463) nounwind, !dbg !462 ; [debug line = 94:46@80:3@132:7] [debug variable = ptr]
  %ptr.1 = getelementptr inbounds i8* %ptr, i64 1, !dbg !464 ; [#uses=1 type=i8*] [debug line = 95:25@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i8* %ptr.1}, i64 0, metadata !463) nounwind, !dbg !464 ; [debug line = 95:25@80:3@132:7] [debug variable = ptr]
  %words32.addr = getelementptr [2 x i32]* %words32, i32 0, i32 0 ; [#uses=1 type=i32*]
  %words32.load = load i32* %words32.addr, !dbg !464 ; [#uses=1 type=i32] [debug line = 95:25@80:3@132:7]
  %tmp.23 = trunc i32 %words32.load to i8, !dbg !464 ; [#uses=1 type=i8] [debug line = 95:25@80:3@132:7]
  %ptr.2 = getelementptr inbounds i8* %ptr, i64 2, !dbg !464 ; [#uses=1 type=i8*] [debug line = 95:25@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i8* %ptr.2}, i64 0, metadata !463) nounwind, !dbg !464 ; [debug line = 95:25@80:3@132:7] [debug variable = ptr]
  %ptr.1.load = load i8* %ptr.1, align 1, !dbg !464 ; [#uses=2 type=i8] [debug line = 95:25@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %ptr.1.load) nounwind
  %ptr.3 = getelementptr inbounds i8* %ptr, i64 3, !dbg !464 ; [#uses=1 type=i8*] [debug line = 95:25@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i8* %ptr.3}, i64 0, metadata !463) nounwind, !dbg !464 ; [debug line = 95:25@80:3@132:7] [debug variable = ptr]
  %ptr.2.load = load i8* %ptr.2, align 2, !dbg !464 ; [#uses=2 type=i8] [debug line = 95:25@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %ptr.2.load) nounwind
  %words32.addr.1 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 1, !dbg !464 ; [#uses=4 type=i32*] [debug line = 95:25@80:3@132:7]
  %ptr.3.load = load i8* %ptr.3, align 1, !dbg !464 ; [#uses=2 type=i8] [debug line = 95:25@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %ptr.3.load) nounwind
  %tmp.24 = call fastcc i32 @to_int(i8 zeroext %tmp.23, i8 zeroext %ptr.1.load, i8 zeroext %ptr.2.load, i8 zeroext %ptr.3.load) nounwind, !dbg !464 ; [#uses=1 type=i32] [debug line = 95:25@80:3@132:7]
  store i32 %tmp.24, i32* getelementptr inbounds (%struct.PARAM_newObject.5* @args_newObject, i64 0, i32 0), align 4, !dbg !464 ; [debug line = 95:25@80:3@132:7]
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !463) nounwind, !dbg !465 ; [debug line = 96:19@80:3@132:7] [debug variable = ptr]
  %words32.load.1 = load i32* %words32.addr.1, !dbg !465 ; [#uses=1 type=i32] [debug line = 96:19@80:3@132:7]
  %tmp.25 = trunc i32 %words32.load.1 to i8, !dbg !465 ; [#uses=2 type=i8] [debug line = 96:19@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.25) nounwind
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !463) nounwind, !dbg !465 ; [debug line = 96:19@80:3@132:7] [debug variable = ptr]
  %words32.load.2 = load i32* %words32.addr.1     ; [#uses=1 type=i32]
  %tmp.26 = lshr i32 %words32.load.2, 8           ; [#uses=1 type=i32]
  %tmp.27 = trunc i32 %tmp.26 to i8, !dbg !465    ; [#uses=2 type=i8] [debug line = 96:19@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.27) nounwind
  %padding.0.i.i = call fastcc signext i16 @to_short(i8 zeroext %tmp.25, i8 zeroext %tmp.27) nounwind, !dbg !465 ; [#uses=0 type=i16] [debug line = 96:19@80:3@132:7]
  call void @llvm.dbg.value(metadata !{i16 %padding.0.i.i}, i64 0, metadata !466) nounwind, !dbg !465 ; [debug line = 96:19@80:3@132:7] [debug variable = padding]
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !463) nounwind, !dbg !467 ; [debug line = 97:27@80:3@132:7] [debug variable = ptr]
  %words32.load.3 = load i32* %words32.addr.1     ; [#uses=1 type=i32]
  %tmp.28 = lshr i32 %words32.load.3, 16          ; [#uses=1 type=i32]
  %tmp.29 = trunc i32 %tmp.28 to i8, !dbg !467    ; [#uses=2 type=i8] [debug line = 97:27@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.29) nounwind
  %words32.load.4 = load i32* %words32.addr.1     ; [#uses=1 type=i32]
  %tmp.30 = lshr i32 %words32.load.4, 24          ; [#uses=1 type=i32]
  %tmp.31 = trunc i32 %tmp.30 to i8, !dbg !467    ; [#uses=2 type=i8] [debug line = 97:27@80:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %tmp.31) nounwind
  %areaID.assign = call fastcc signext i16 @to_short(i8 zeroext %tmp.29, i8 zeroext %tmp.31) nounwind, !dbg !467 ; [#uses=3 type=i16] [debug line = 97:27@80:3@132:7]
  store i16 %areaID.assign, i16* getelementptr inbounds (%struct.PARAM_newObject.5* @args_newObject, i64 0, i32 1), align 4, !dbg !467 ; [debug line = 97:27@80:3@132:7]
  %addr.assign = load i32* getelementptr inbounds (%struct.PARAM_newObject.5* @args_newObject, i64 0, i32 0), align 4, !dbg !468 ; [#uses=2 type=i32] [debug line = 81:3@132:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %addr.assign) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %areaID.assign) nounwind
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1.8"* %pr}, i64 0, metadata !469) nounwind, !dbg !470 ; [debug line = 63:31@81:3@132:7] [debug variable = pr]
  call void @llvm.dbg.value(metadata !{i32 %addr.assign}, i64 0, metadata !471) nounwind, !dbg !472 ; [debug line = 63:39@81:3@132:7] [debug variable = addr]
  call void @llvm.dbg.value(metadata !{i16 %areaID.assign}, i64 0, metadata !473) nounwind, !dbg !474 ; [debug line = 63:51@81:3@132:7] [debug variable = areaID]
  call void @llvm.dbg.value(metadata !{i16 %areaID.assign}, i64 0, metadata !475) nounwind, !dbg !481 ; [debug line = 66:3@81:3@132:7] [debug variable = aux.areaID]
  call void @llvm.dbg.value(metadata !{i32 %addr.assign}, i64 0, metadata !482) nounwind, !dbg !485 ; [debug line = 67:3@81:3@132:7] [debug variable = aux.addr]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1.8"* %pr}, i64 0, metadata !486) nounwind, !dbg !489 ; [debug line = 144:48@68:3@81:3@132:7] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%struct.PRbus.7* %tmp.33}, metadata !490) nounwind, !dbg !492 ; [debug line = 145:22@68:3@81:3@132:7] [debug variable = tmp]
  %tmp.33.addr = getelementptr inbounds %struct.PRbus.7* %tmp.33, i64 0, i32 0, !dbg !493 ; [#uses=1 type=i32*] [debug line = 145:31@68:3@81:3@132:7]
  store i32 %addr.assign, i32* %tmp.33.addr, align 4, !dbg !493 ; [debug line = 145:31@68:3@81:3@132:7]
  %tmp.33.addr.1 = getelementptr inbounds %struct.PRbus.7* %tmp.33, i64 0, i32 1, !dbg !493 ; [#uses=1 type=i16*] [debug line = 145:31@68:3@81:3@132:7]
  store i16 %areaID.assign, i16* %tmp.33.addr.1, align 4, !dbg !493 ; [debug line = 145:31@68:3@81:3@132:7]
  %pr.addr = getelementptr inbounds %"class.hls::stream.1.8"* %pr, i64 0, i32 0, !dbg !494 ; [#uses=1 type=%struct.PRbus.7*] [debug line = 146:9@68:3@81:3@132:7]
  call void @"_ssdm_op_IfWrite.Stream.%struct.PRbus.7 = type { i32, i16 }P.%struct.PRbus.7 = type { i32, i16 }P"(%struct.PRbus.7* %pr.addr, %struct.PRbus.7* %tmp.33) nounwind, !dbg !494 ; [debug line = 146:9@68:3@81:3@132:7]
  store i32 2, i32* @_status, align 4, !dbg !495  ; [debug line = 82:3@132:7]
  br label %11, !dbg !496                         ; [debug line = 133:5]

; <label>:5                                       ; preds = %1
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %header.load.1) nounwind
  %tmp.13 = icmp eq i8 %header.load.1, 2, !dbg !497 ; [#uses=1 type=i1] [debug line = 135:7]
  br i1 %tmp.13, label %6, label %10, !dbg !497   ; [debug line = 135:7]

; <label>:6                                       ; preds = %5
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.4"* %prDone}, i64 0, metadata !499) nounwind, !dbg !502 ; [debug line = 108:35@136:2] [debug variable = prDone]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.4"* %prDone}, i64 0, metadata !503) nounwind, !dbg !507 ; [debug line = 136:48@111:3@136:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i1* %tmp.15}, metadata !508) nounwind, !dbg !510 ; [debug line = 137:22@111:3@136:2] [debug variable = tmp]
  %prDone.addr = getelementptr inbounds %"class.hls::stream.0.4"* %prDone, i64 0, i32 0, !dbg !511 ; [#uses=1 type=i1*] [debug line = 138:24@111:3@136:2]
  %empty_n.i.0.i = call i1 @_ssdm_op_IfNbRead.Stream.i1P.i1P(i1* %prDone.addr, i1* %tmp.15) nounwind, !dbg !511 ; [#uses=0 type=i1] [debug line = 138:24@111:3@136:2]
  call void @llvm.dbg.value(metadata !{i1 %empty_n.i.0.i}, i64 0, metadata !512) nounwind, !dbg !511 ; [debug line = 138:24@111:3@136:2] [debug variable = empty_n]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !513) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !508), !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !508), !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i1* %tmp.15}, i64 0, metadata !508), !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = tmp]
  %aux = load i1* %tmp.15, align 1, !dbg !514     ; [#uses=1 type=i1] [debug line = 139:9@111:3@136:2]
  call void @llvm.dbg.value(metadata !{i1 %aux}, i64 0, metadata !515) nounwind, !dbg !514 ; [debug line = 139:9@111:3@136:2] [debug variable = aux]
  br i1 %aux, label %7, label %wrapper_status.exit, !dbg !516 ; [debug line = 112:3@136:2]

; <label>:7                                       ; preds = %6
  store i32 1, i32* @_status, align 4, !dbg !517  ; [debug line = 113:5@136:2]
  br label %wrapper_status.exit, !dbg !517        ; [debug line = 113:5@136:2]

wrapper_status.exit:                              ; preds = %7, %6
  %tmp.38 = load i32* @_status, align 4, !dbg !518 ; [#uses=1 type=i32] [debug line = 114:3@136:2]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.37}, metadata !428) nounwind, !dbg !519 ; [debug line = 145:22@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !520) nounwind, !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !428), !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !428), !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.38}, i64 0, metadata !428), !dbg !521 ; [debug line = 145:31@114:3@136:2] [debug variable = tmp]
  store i32 %tmp.38, i32* %tmp.37, align 4, !dbg !521 ; [debug line = 145:31@114:3@136:2]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* getelementptr inbounds (%"class.hls::stream.3"* @bufferRESP, i64 0, i32 0), i32* %tmp.37) nounwind, !dbg !522 ; [debug line = 146:9@114:3@136:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !523) nounwind, !dbg !525 ; [debug line = 34:42@137:2] [debug variable = dst]
  %header.load.9 = load i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 4), align 1, !dbg !526 ; [#uses=2 type=i16] [debug line = 40:3@137:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %header.load.9) nounwind
  %tmp.39 = zext i16 %header.load.9 to i32, !dbg !526 ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  %tmp.40 = shl nuw i32 %tmp.39, 16, !dbg !526    ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  %header.load.10 = load i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 2), align 1, !dbg !526 ; [#uses=2 type=i8] [debug line = 40:3@137:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %header.load.10) nounwind
  %tmp.41 = zext i8 %header.load.10 to i32, !dbg !526 ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  %tmp.42 = shl nuw nsw i32 %tmp.41, 8, !dbg !526 ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  %tmp.43 = or i32 %tmp.40, 5, !dbg !526          ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  %words32.4 = or i32 %tmp.43, %tmp.42, !dbg !526 ; [#uses=1 type=i32] [debug line = 40:3@137:2]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !527) nounwind, !dbg !526 ; [debug line = 40:3@137:2] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !528) nounwind, !dbg !530 ; [debug line = 144:48@41:3@137:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.44}, metadata !428) nounwind, !dbg !531 ; [debug line = 145:22@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !532) nounwind, !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !428), !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !428), !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.4}, i64 0, metadata !428), !dbg !533 ; [debug line = 145:31@41:3@137:2] [debug variable = tmp]
  store i32 %words32.4, i32* %tmp.44, align 4, !dbg !533 ; [debug line = 145:31@41:3@137:2]
  %dout.addr.3 = getelementptr inbounds %"class.hls::stream.3"* %dout, i64 0, i32 0, !dbg !534 ; [#uses=3 type=i32*] [debug line = 146:9@41:3@137:2]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %dout.addr.3, i32* %tmp.44) nounwind, !dbg !534 ; [debug line = 146:9@41:3@137:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !535) nounwind, !dbg !538 ; [debug line = 144:48@44:5@137:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.46}, metadata !428) nounwind, !dbg !539 ; [debug line = 145:22@44:5@137:2] [debug variable = tmp]
  store i32 131073, i32* %tmp.46, align 4, !dbg !540 ; [debug line = 145:31@44:5@137:2]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %dout.addr.3, i32* %tmp.46) nounwind, !dbg !541 ; [debug line = 146:9@44:5@137:2]
  br label %8, !dbg !542                          ; [debug line = 45:5@137:2]

; <label>:8                                       ; preds = %9, %wrapper_status.exit
  %tmp.47 = call i1 @_ssdm_op_IfCanRead.Stream.i32P(i32* getelementptr inbounds (%"class.hls::stream.3"* @bufferRESP, i64 0, i32 0)) nounwind, !dbg !543 ; [#uses=1 type=i1] [debug line = 113:20@45:13@137:2]
  call void @llvm.dbg.value(metadata !{i1 %tmp.47}, i64 0, metadata !546) nounwind, !dbg !543 ; [debug line = 113:20@45:13@137:2] [debug variable = tmp]
  br i1 %tmp.47, label %9, label %buildResponse.exit.loopexit, !dbg !545 ; [debug line = 45:13@137:2]

; <label>:9                                       ; preds = %8
  call void @llvm.dbg.declare(metadata !{i32* %tmp.48}, metadata !456) nounwind, !dbg !547 ; [debug line = 130:22@46:17@137:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* getelementptr inbounds (%"class.hls::stream.3"* @bufferRESP, i64 0, i32 0), i32* %tmp.48) nounwind, !dbg !549 ; [debug line = 131:9@46:17@137:2]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !550) nounwind, !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !456), !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !456), !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.48}, i64 0, metadata !456), !dbg !551 ; [debug line = 132:9@46:17@137:2] [debug variable = tmp]
  %tmp.50 = load i32* %tmp.48, align 4, !dbg !551 ; [#uses=1 type=i32] [debug line = 132:9@46:17@137:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !552) nounwind, !dbg !553 ; [debug line = 144:48@46:17@137:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.49}, metadata !428) nounwind, !dbg !554 ; [debug line = 145:22@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !555) nounwind, !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !428), !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !428), !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.50}, i64 0, metadata !428), !dbg !556 ; [debug line = 145:31@46:17@137:2] [debug variable = tmp]
  store i32 %tmp.50, i32* %tmp.49, align 4, !dbg !556 ; [debug line = 145:31@46:17@137:2]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %dout.addr.3, i32* %tmp.49) nounwind, !dbg !557 ; [debug line = 146:9@46:17@137:2]
  br label %8, !dbg !548                          ; [debug line = 46:17@137:2]

; <label>:10                                      ; preds = %5
  %header.load.6 = load i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 5), align 1, !dbg !558 ; [#uses=2 type=i16] [debug line = 141:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %header.load.6) nounwind
  call fastcc void @forward(%"class.hls::stream.3"* %din, i16 signext %header.load.6), !dbg !558 ; [debug line = 141:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !560) nounwind, !dbg !562 ; [debug line = 34:42@142:2] [debug variable = dst]
  %header.load.7 = load i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 4), align 1, !dbg !563 ; [#uses=2 type=i16] [debug line = 40:3@142:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %header.load.7) nounwind
  %tmp.16 = zext i16 %header.load.7 to i32, !dbg !563 ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  %tmp.17 = shl nuw i32 %tmp.16, 16, !dbg !563    ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  %header.load.8 = load i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 2), align 1, !dbg !563 ; [#uses=2 type=i8] [debug line = 40:3@142:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %header.load.8) nounwind
  %tmp.18 = zext i8 %header.load.8 to i32, !dbg !563 ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  %tmp.19 = shl nuw nsw i32 %tmp.18, 8, !dbg !563 ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  %tmp.20 = or i32 %tmp.17, 3, !dbg !563          ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  %words32.5 = or i32 %tmp.20, %tmp.19, !dbg !563 ; [#uses=1 type=i32] [debug line = 40:3@142:2]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !564) nounwind, !dbg !563 ; [debug line = 40:3@142:2] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !565) nounwind, !dbg !567 ; [debug line = 144:48@41:3@142:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.21}, metadata !428) nounwind, !dbg !568 ; [debug line = 145:22@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !569) nounwind, !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !428), !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !428), !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.5}, i64 0, metadata !428), !dbg !570 ; [debug line = 145:31@41:3@142:2] [debug variable = tmp]
  store i32 %words32.5, i32* %tmp.21, align 4, !dbg !570 ; [debug line = 145:31@41:3@142:2]
  %dout.addr.2 = getelementptr inbounds %"class.hls::stream.3"* %dout, i64 0, i32 0, !dbg !571 ; [#uses=1 type=i32*] [debug line = 146:9@41:3@142:2]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %dout.addr.2, i32* %tmp.21) nounwind, !dbg !571 ; [debug line = 146:9@41:3@142:2]
  br label %buildResponse.exit

buildResponse.exit.loopexit:                      ; preds = %8
  br label %buildResponse.exit

buildResponse.exit:                               ; preds = %buildResponse.exit.loopexit, %10
  br label %11

; <label>:11                                      ; preds = %buildResponse.exit, %wrapper_newObject.exit
  br label %13, !dbg !572                         ; [debug line = 146:3]

; <label>:12                                      ; preds = %0
  %header.load.2 = load i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 5), align 1, !dbg !573 ; [#uses=2 type=i16] [debug line = 148:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %header.load.2) nounwind
  call fastcc void @forward(%"class.hls::stream.3"* %din, i16 signext %header.load.2), !dbg !573 ; [debug line = 148:5]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !575) nounwind, !dbg !577 ; [debug line = 34:42@149:5] [debug variable = dst]
  %header.load.3 = load i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 4), align 1, !dbg !578 ; [#uses=2 type=i16] [debug line = 40:3@149:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %header.load.3) nounwind
  %tmp.2 = zext i16 %header.load.3 to i32, !dbg !578 ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  %tmp.3 = shl nuw i32 %tmp.2, 16, !dbg !578      ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  %header.load.4 = load i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 2), align 1, !dbg !578 ; [#uses=2 type=i8] [debug line = 40:3@149:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %header.load.4) nounwind
  %tmp.4 = zext i8 %header.load.4 to i32, !dbg !578 ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  %tmp.5 = shl nuw nsw i32 %tmp.4, 8, !dbg !578   ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  %tmp.6 = or i32 %tmp.3, 3, !dbg !578            ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  %words32.6 = or i32 %tmp.6, %tmp.5, !dbg !578   ; [#uses=1 type=i32] [debug line = 40:3@149:5]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !579) nounwind, !dbg !578 ; [debug line = 40:3@149:5] [debug variable = words32]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %dout}, i64 0, metadata !580) nounwind, !dbg !582 ; [debug line = 144:48@41:3@149:5] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.7}, metadata !428) nounwind, !dbg !583 ; [debug line = 145:22@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !584) nounwind, !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !428), !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !428), !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %words32.6}, i64 0, metadata !428), !dbg !585 ; [debug line = 145:31@41:3@149:5] [debug variable = tmp]
  store i32 %words32.6, i32* %tmp.7, align 4, !dbg !585 ; [debug line = 145:31@41:3@149:5]
  %dout.addr = getelementptr inbounds %"class.hls::stream.3"* %dout, i64 0, i32 0, !dbg !586 ; [#uses=1 type=i32*] [debug line = 146:9@41:3@149:5]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %dout.addr, i32* %tmp.7) nounwind, !dbg !586 ; [debug line = 146:9@41:3@149:5]
  br label %13

; <label>:13                                      ; preds = %12, %11
  ret void, !dbg !587                             ; [debug line = 152:1]
}

; [#uses=2]
define internal fastcc signext i16 @to_short(i8 zeroext %c1, i8 zeroext %c2) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %c1}, i64 0, metadata !588), !dbg !589 ; [debug line = 19:24] [debug variable = c1]
  call void @llvm.dbg.value(metadata !{i8 %c2}, i64 0, metadata !590), !dbg !591 ; [debug line = 19:42] [debug variable = c2]
  %aux = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %c2, i8 %c1) ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %aux}, i64 0, metadata !592), !dbg !594 ; [debug line = 22:3] [debug variable = aux]
  ret i16 %aux, !dbg !595                         ; [debug line = 23:3]
}

; [#uses=1]
define internal fastcc i32 @to_int(i8 zeroext %c1, i8 zeroext %c2, i8 zeroext %c3, i8 zeroext %c4) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %c1}, i64 0, metadata !596), !dbg !597 ; [debug line = 27:22] [debug variable = c1]
  call void @llvm.dbg.value(metadata !{i8 %c2}, i64 0, metadata !598), !dbg !599 ; [debug line = 27:40] [debug variable = c2]
  call void @llvm.dbg.value(metadata !{i8 %c3}, i64 0, metadata !600), !dbg !601 ; [debug line = 28:17] [debug variable = c3]
  call void @llvm.dbg.value(metadata !{i8 %c4}, i64 0, metadata !602), !dbg !603 ; [debug line = 28:35] [debug variable = c4]
  %tmp = zext i8 %c4 to i32, !dbg !604            ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.51 = shl nuw i32 %tmp, 24, !dbg !604       ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.52 = zext i8 %c3 to i32, !dbg !604         ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.53 = shl nuw nsw i32 %tmp.52, 16, !dbg !604 ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.54 = zext i8 %c2 to i32, !dbg !604         ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.55 = shl nuw nsw i32 %tmp.54, 8, !dbg !604 ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.56 = zext i8 %c1 to i32, !dbg !604         ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.57 = or i32 %tmp.55, %tmp.56, !dbg !604    ; [#uses=1 type=i32] [debug line = 31:3]
  %tmp.58 = or i32 %tmp.57, %tmp.53, !dbg !604    ; [#uses=1 type=i32] [debug line = 31:3]
  %aux = or i32 %tmp.58, %tmp.51, !dbg !604       ; [#uses=1 type=i32] [debug line = 31:3]
  call void @llvm.dbg.value(metadata !{i32 %aux}, i64 0, metadata !606), !dbg !604 ; [debug line = 31:3] [debug variable = aux]
  ret i32 %aux, !dbg !607                         ; [debug line = 32:3]
}

; [#uses=164]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=19]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @getRequestHead(%"class.hls::stream.3"* %src) nounwind uwtable {
  %tmp.69 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %words32 = alloca [2 x i32], align 4            ; [#uses=3 type=[2 x i32]*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %src}, i64 0, metadata !608), !dbg !609 ; [debug line = 17:43] [debug variable = src]
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %words32}, metadata !610), !dbg !612 ; [debug line = 19:7] [debug variable = words32]
  %src.addr = getelementptr inbounds %"class.hls::stream.3"* %src, i64 0, i32 0, !dbg !613 ; [#uses=1 type=i32*] [debug line = 131:9@22:19]
  br label %1, !dbg !616                          ; [debug line = 21:15]

; <label>:1                                       ; preds = %2, %0
  %it = phi i32 [ 0, %0 ], [ %it.1, %2 ]          ; [#uses=3 type=i32]
  %tmp = icmp eq i32 %it, 2, !dbg !616            ; [#uses=1 type=i1] [debug line = 21:15]
  br i1 %tmp, label %3, label %2, !dbg !616       ; [debug line = 21:15]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %src}, i64 0, metadata !617), !dbg !618 ; [debug line = 129:56@22:19] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.69}, metadata !456) nounwind, !dbg !619 ; [debug line = 130:22@22:19] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %src.addr, i32* %tmp.69) nounwind, !dbg !613 ; [debug line = 131:9@22:19]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.69}, i64 0, metadata !456), !dbg !620 ; [debug line = 132:9@22:19] [debug variable = tmp]
  %tmp.69.load = load i32* %tmp.69, align 4, !dbg !620 ; [#uses=1 type=i32] [debug line = 132:9@22:19]
  %tmp.70 = sext i32 %it to i64, !dbg !614        ; [#uses=1 type=i64] [debug line = 22:19]
  %words32.addr.4 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 %tmp.70, !dbg !614 ; [#uses=1 type=i32*] [debug line = 22:19]
  store i32 %tmp.69.load, i32* %words32.addr.4, align 4, !dbg !614 ; [debug line = 22:19]
  %it.1 = add nsw i32 %it, 1, !dbg !621           ; [#uses=1 type=i32] [debug line = 21:26]
  call void @llvm.dbg.value(metadata !{i32 %it.1}, i64 0, metadata !622), !dbg !621 ; [debug line = 21:26] [debug variable = it]
  br label %1, !dbg !621                          ; [debug line = 21:26]

; <label>:3                                       ; preds = %1
  %words32.addr = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 0, !dbg !623 ; [#uses=1 type=i32*] [debug line = 24:3]
  %words32.load = load i32* %words32.addr, align 4, !dbg !623 ; [#uses=8 type=i32] [debug line = 24:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %words32.load) nounwind
  %tmp.59 = lshr i32 %words32.load, 24, !dbg !623 ; [#uses=1 type=i32] [debug line = 24:3]
  %tmp.60 = trunc i32 %tmp.59 to i8, !dbg !623    ; [#uses=1 type=i8] [debug line = 24:3]
  store i8 %tmp.60, i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 0), align 1, !dbg !623 ; [debug line = 24:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %words32.load) nounwind
  %tmp.61 = lshr i32 %words32.load, 16, !dbg !624 ; [#uses=1 type=i32] [debug line = 25:3]
  %tmp.62 = trunc i32 %tmp.61 to i8, !dbg !624    ; [#uses=1 type=i8] [debug line = 25:3]
  store i8 %tmp.62, i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 1), align 1, !dbg !624 ; [debug line = 25:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %words32.load) nounwind
  %tmp.63 = lshr i32 %words32.load, 8, !dbg !625  ; [#uses=1 type=i32] [debug line = 26:3]
  %tmp.64 = trunc i32 %tmp.63 to i8, !dbg !625    ; [#uses=1 type=i8] [debug line = 26:3]
  store i8 %tmp.64, i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 2), align 1, !dbg !625 ; [debug line = 26:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %words32.load) nounwind
  %tmp.65 = trunc i32 %words32.load to i8, !dbg !626 ; [#uses=1 type=i8] [debug line = 27:3]
  store i8 %tmp.65, i8* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 3), align 1, !dbg !626 ; [debug line = 27:3]
  %words32.addr.3 = getelementptr inbounds [2 x i32]* %words32, i64 0, i64 1, !dbg !627 ; [#uses=1 type=i32*] [debug line = 28:3]
  %words32.load.5 = load i32* %words32.addr.3, align 4, !dbg !627 ; [#uses=4 type=i32] [debug line = 28:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %words32.load.5) nounwind
  %tmp.66 = lshr i32 %words32.load.5, 16, !dbg !627 ; [#uses=1 type=i32] [debug line = 28:3]
  %tmp.67 = trunc i32 %tmp.66 to i16, !dbg !627   ; [#uses=1 type=i16] [debug line = 28:3]
  store i16 %tmp.67, i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 4), align 1, !dbg !627 ; [debug line = 28:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %words32.load.5) nounwind
  %tmp.68 = trunc i32 %words32.load.5 to i16, !dbg !628 ; [#uses=1 type=i16] [debug line = 29:3]
  store i16 %tmp.68, i16* getelementptr inbounds (%struct.headerStruct.2* @header, i64 0, i32 5), align 1, !dbg !628 ; [debug line = 29:3]
  ret void, !dbg !629                             ; [debug line = 30:1]
}

; [#uses=2]
define internal fastcc void @forward(%"class.hls::stream.3"* %src, i16 signext %size) nounwind uwtable noinline {
  %tmp.72 = alloca i32, align 4                   ; [#uses=1 type=i32*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %src}, i64 0, metadata !630), !dbg !631 ; [debug line = 6:36] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i16 %size}, i64 0, metadata !632), !dbg !633 ; [debug line = 6:47] [debug variable = size]
  call void (...)* @_ssdm_InlineSelf(i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !634 ; [debug line = 8:1]
  %src.addr = getelementptr inbounds %"class.hls::stream.3"* %src, i64 0, i32 0, !dbg !636 ; [#uses=1 type=i32*] [debug line = 131:9@10:5]
  br label %1, !dbg !639                          ; [debug line = 9:3]

; <label>:1                                       ; preds = %2, %0
  %it = phi i16 [ 0, %0 ], [ %it.2, %2 ]          ; [#uses=2 type=i16]
  %tmp = icmp eq i16 %it, %size, !dbg !639        ; [#uses=1 type=i1] [debug line = 9:3]
  br i1 %tmp, label %3, label %2, !dbg !639       ; [debug line = 9:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.3"* %src}, i64 0, metadata !617), !dbg !640 ; [debug line = 129:56@10:5] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.72}, metadata !456) nounwind, !dbg !641 ; [debug line = 130:22@10:5] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %src.addr, i32* %tmp.72) nounwind, !dbg !636 ; [debug line = 131:9@10:5]
  call void @llvm.dbg.value(metadata !{i32* %tmp.72}, i64 0, metadata !456), !dbg !642 ; [debug line = 132:9@10:5] [debug variable = tmp]
  %it.2 = add i16 %it, 1, !dbg !643               ; [#uses=1 type=i16] [debug line = 11:5]
  call void @llvm.dbg.value(metadata !{i16 %it.2}, i64 0, metadata !644), !dbg !643 ; [debug line = 11:5] [debug variable = it]
  br label %1, !dbg !645                          ; [debug line = 12:3]

; <label>:3                                       ; preds = %1
  ret void, !dbg !646                             ; [debug line = 13:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=7]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=1]
declare void @"_ssdm_op_IfWrite.Stream.%struct.PRbus.7 = type { i32, i16 }P.%struct.PRbus.7 = type { i32, i16 }P"(%struct.PRbus.7*, %struct.PRbus.7*)

; [#uses=4]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=1]
declare i1 @_ssdm_op_IfNbRead.Stream.i1P.i1P(i1*, i1*)

; [#uses=1]
declare i1 @_ssdm_op_IfCanRead.Stream.i32P(i32*)

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone

; [#uses=1]
declare i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone

; [#uses=28]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!llvm.dbg.cu = !{!0, !73}
!opencl.kernels = !{!329, !336, !342, !348, !352, !354, !356, !342, !357, !359, !361, !364, !370, !373, !376, !382, !385, !373, !386, !389, !392, !395, !395, !401, !395, !395, !395, !395, !395, !395, !395}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/casting.pragma.2.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !45} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !17, metadata !21, metadata !25, metadata !28, metadata !31, metadata !35, metadata !39, metadata !42}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_short", metadata !"to_short", metadata !"_Z8to_shorthh", metadata !6, i32 19, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i8, i8)* @to_short, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"./casting.cc", metadata !"/home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"to_int", metadata !"to_int", metadata !"_Z6to_inthhhh", metadata !6, i32 27, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8, i8, i8, i8)* @to_int, null, null, metadata !11, i32 29} ; [ DW_TAG_subprogram ]
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
!47 = metadata !{i32 786484, i32 0, null, metadata !"conv32", metadata !"conv32", metadata !"", metadata !6, i32 7, metadata !48, i32 0, i32 1, %union.type32.0* @conv32} ; [ DW_TAG_variable ]
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
!59 = metadata !{i32 786484, i32 0, null, metadata !"conv64", metadata !"conv64", metadata !"", metadata !6, i32 13, metadata !60, i32 0, i32 1, %union.type64.1* @conv64} ; [ DW_TAG_variable ]
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
!76 = metadata !{i32 786478, i32 0, metadata !77, metadata !"forward", metadata !"forward", metadata !"_Z7forwardRN3hls6streamIjEEs", metadata !77, i32 6, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.3"*, i16)* @forward, null, null, metadata !11, i32 7} ; [ DW_TAG_subprogram ]
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
!134 = metadata !{i32 786478, i32 0, metadata !77, metadata !"getRequestHead", metadata !"getRequestHead", metadata !"_Z14getRequestHeadRN3hls6streamIjEE", metadata !77, i32 17, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.3"*)* @getRequestHead, null, null, metadata !11, i32 18} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{null, metadata !80}
!137 = metadata !{i32 786478, i32 0, metadata !77, metadata !"buildResponse", metadata !"buildResponse", metadata !"_Z13buildResponseRN3hls6streamIjEEtth", metadata !77, i32 34, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 37} ; [ DW_TAG_subprogram ]
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
!193 = metadata !{i32 786478, i32 0, metadata !77, metadata !"newObject", metadata !"newObject", metadata !"_Z9newObjectRN3hls6streamI5PRbusEEis", metadata !77, i32 63, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 64} ; [ DW_TAG_subprogram ]
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
!254 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wrapper_newObject", metadata !"wrapper_newObject", metadata !"_Z17wrapper_newObjectRN3hls6streamIjEERNS0_I5PRbusEE", metadata !77, i32 77, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 79} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{null, metadata !80, metadata !196}
!257 = metadata !{i32 786478, i32 0, metadata !77, metadata !"readParameters_newObject", metadata !"readParameters_newObject", metadata !"_Z24readParameters_newObjectRN3hls6streamIjEE", metadata !77, i32 87, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 88} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wrapper_status", metadata !"wrapper_status", metadata !"_Z14wrapper_statusRN3hls6streamIbEE", metadata !77, i32 108, metadata !259, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 109} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{null, metadata !144}
!261 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wrapperAdmin", metadata !"wrapperAdmin", metadata !"_Z12wrapperAdminN3hls6streamIjEES1_NS0_I5PRbusEENS0_IbEE", metadata !77, i32 121, metadata !262, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.3"*, %"class.hls::stream.3"*, %"class.hls::stream.1.8"*, %"class.hls::stream.0.4"*)* @wrapperAdmin, null, null, metadata !11, i32 124} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{null, metadata !81, metadata !81, metadata !197, metadata !145}
!264 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIbE7read_nbERb", metadata !83, i32 136, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !181, metadata !11, i32 136} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI5PRbusE5writeERKS1_", metadata !83, i32 144, metadata !229, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !245, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIbE4readEv", metadata !83, i32 129, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !178, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !82, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIjE5emptyEv", metadata !83, i32 112, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !114, metadata !11, i32 112} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786478, i32 0, metadata !82, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIjE5writeERKj", metadata !83, i32 144, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !127, metadata !11, i32 144} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786478, i32 0, metadata !82, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIjE4readEv", metadata !83, i32 129, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !121, metadata !11, i32 129} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIbEC1Ev", metadata !83, i32 83, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !148, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIbEC2Ev", metadata !83, i32 83, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !148, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIjEC1Ev", metadata !83, i32 83, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !87, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIjEC2Ev", metadata !83, i32 83, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !87, metadata !11, i32 83} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC1Ev", metadata !77, i32 156, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !280, metadata !11, i32 156} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{null, metadata !277}
!277 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !278} ; [ DW_TAG_pointer_type ]
!278 = metadata !{i32 786434, null, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !77, i32 154, i64 8, i64 8, i32 0, i32 0, null, metadata !279, i32 0, null, null} ; [ DW_TAG_class_type ]
!279 = metadata !{metadata !280}
!280 = metadata !{i32 786478, i32 0, metadata !278, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"", metadata !77, i32 156, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 156} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"ssdm_global_array_wrapperAdminpp0ccaplinecc", metadata !"_ZN43ssdm_global_array_wrapperAdminpp0ccaplineccC2Ev", metadata !77, i32 156, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !280, metadata !11, i32 156} ; [ DW_TAG_subprogram ]
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !284, metadata !298, metadata !299, metadata !300, metadata !309, metadata !312, metadata !313, metadata !309, metadata !312, metadata !313, metadata !312, metadata !314, metadata !315, metadata !312, metadata !314, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328}
!284 = metadata !{i32 786484, i32 0, null, metadata !"header", metadata !"header", metadata !"_ZL6header", metadata !201, i32 9, metadata !285, i32 1, i32 1, %struct.headerStruct.2* @header} ; [ DW_TAG_variable ]
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
!298 = metadata !{i32 786484, i32 0, null, metadata !"bufferRESP", metadata !"bufferRESP", metadata !"_ZL10bufferRESP", metadata !201, i32 16, metadata !81, i32 1, i32 1, %"class.hls::stream.3"* @bufferRESP} ; [ DW_TAG_variable ]
!299 = metadata !{i32 786484, i32 0, null, metadata !"bufferPRdone", metadata !"bufferPRdone", metadata !"_ZL12bufferPRdone", metadata !201, i32 25, metadata !145, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!300 = metadata !{i32 786484, i32 0, null, metadata !"args_newObject", metadata !"args_newObject", metadata !"_ZL14args_newObject", metadata !201, i32 38, metadata !301, i32 1, i32 1, %struct.PARAM_newObject.5* @args_newObject} ; [ DW_TAG_variable ]
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
!316 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !77, i32 170, metadata !278, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!317 = metadata !{i32 786484, i32 0, null, metadata !"NULL_OBJ", metadata !"NULL_OBJ", metadata !"_ZL8NULL_OBJ", metadata !286, i32 9, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!318 = metadata !{i32 786484, i32 0, null, metadata !"BROADCAST", metadata !"BROADCAST", metadata !"_ZL9BROADCAST", metadata !286, i32 7, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!319 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_ASYNC_GET_RESP", metadata !"FLAG_ASYNC_GET_RESP", metadata !"_ZL19FLAG_ASYNC_GET_RESP", metadata !310, i32 17, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!320 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_ASYNC_REQ", metadata !"FLAG_ASYNC_REQ", metadata !"_ZL14FLAG_ASYNC_REQ", metadata !310, i32 16, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!321 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_ASYNC", metadata !"FLAG_ASYNC", metadata !"_ZL10FLAG_ASYNC", metadata !310, i32 14, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!322 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_SYNC", metadata !"FLAG_SYNC", metadata !"_ZL9FLAG_SYNC", metadata !310, i32 13, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!323 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_HAS_PAYLOAD", metadata !"FLAG_HAS_PAYLOAD", metadata !"_ZL16FLAG_HAS_PAYLOAD", metadata !310, i32 11, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!324 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_OK", metadata !"FLAG_OK", metadata !"_ZL7FLAG_OK", metadata !310, i32 9, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!325 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_FAIL", metadata !"FLAG_FAIL", metadata !"_ZL9FLAG_FAIL", metadata !310, i32 8, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!326 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_RESPONSE", metadata !"FLAG_RESPONSE", metadata !"_ZL13FLAG_RESPONSE", metadata !310, i32 6, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!327 = metadata !{i32 786484, i32 0, null, metadata !"FLAG_REQUEST", metadata !"FLAG_REQUEST", metadata !"_ZL12FLAG_REQUEST", metadata !310, i32 5, metadata !311, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!328 = metadata !{i32 786484, i32 0, null, metadata !"_status", metadata !"_status", metadata !"_ZL7_status", metadata !201, i32 17, metadata !16, i32 1, i32 1, i32* @_status} ; [ DW_TAG_variable ]
!329 = metadata !{i16 (i8, i8)* @to_short, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335}
!330 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!331 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar"}
!333 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!334 = metadata !{metadata !"kernel_arg_name", metadata !"c1", metadata !"c2"}
!335 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!336 = metadata !{i32 (i8, i8, i8, i8)* @to_int, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !335}
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
!361 = metadata !{void (%"class.hls::stream.3"*, i16)* @forward, metadata !330, metadata !331, metadata !362, metadata !333, metadata !363, metadata !335}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"short"}
!363 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"size"}
!364 = metadata !{void (%"class.hls::stream.3"*)* @getRequestHead, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !335}
!365 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!366 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &"}
!368 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!369 = metadata !{metadata !"kernel_arg_name", metadata !"src"}
!370 = metadata !{null, metadata !337, metadata !338, metadata !371, metadata !340, metadata !372, metadata !335}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"ushort", metadata !"ushort", metadata !"uchar"}
!372 = metadata !{metadata !"kernel_arg_name", metadata !"dst", metadata !"objID", metadata !"size", metadata !"flags"}
!373 = metadata !{null, metadata !365, metadata !366, metadata !374, metadata !368, metadata !375, metadata !335}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<_Bool> &"}
!375 = metadata !{metadata !"kernel_arg_name", metadata !"prDone"}
!376 = metadata !{null, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !335}
!377 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!378 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<PRbus> &", metadata !"int", metadata !"short"}
!380 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!381 = metadata !{metadata !"kernel_arg_name", metadata !"pr", metadata !"addr", metadata !"areaID"}
!382 = metadata !{null, metadata !330, metadata !331, metadata !383, metadata !333, metadata !384, metadata !335}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint> &", metadata !"hls::stream<PRbus> &"}
!384 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"pr"}
!385 = metadata !{null, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !335}
!386 = metadata !{void (%"class.hls::stream.3"*, %"class.hls::stream.3"*, %"class.hls::stream.1.8"*, %"class.hls::stream.0.4"*)* @wrapperAdmin, metadata !337, metadata !338, metadata !387, metadata !340, metadata !388, metadata !335}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint>", metadata !"hls::stream<uint>", metadata !"hls::stream<PRbus>", metadata !"hls::stream<_Bool>"}
!388 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"dout", metadata !"pr", metadata !"prDone"}
!389 = metadata !{null, metadata !365, metadata !366, metadata !390, metadata !368, metadata !391, metadata !335}
!390 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool &"}
!391 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!392 = metadata !{null, metadata !365, metadata !366, metadata !393, metadata !368, metadata !394, metadata !335}
!393 = metadata !{metadata !"kernel_arg_type", metadata !"const PRbus &"}
!394 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!395 = metadata !{null, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !335}
!396 = metadata !{metadata !"kernel_arg_addr_space"}
!397 = metadata !{metadata !"kernel_arg_access_qual"}
!398 = metadata !{metadata !"kernel_arg_type"}
!399 = metadata !{metadata !"kernel_arg_type_qual"}
!400 = metadata !{metadata !"kernel_arg_name"}
!401 = metadata !{null, metadata !365, metadata !366, metadata !402, metadata !368, metadata !394, metadata !335}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"const uint &"}
!403 = metadata !{i32 786689, metadata !261, metadata !"din", metadata !77, i32 16777337, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!404 = metadata !{i32 121, i32 40, metadata !261, null}
!405 = metadata !{i32 786689, metadata !261, metadata !"dout", metadata !77, i32 33554554, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!406 = metadata !{i32 122, i32 33, metadata !261, null}
!407 = metadata !{i32 786689, metadata !261, metadata !"pr", metadata !77, i32 50331771, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!408 = metadata !{i32 123, i32 26, metadata !261, null}
!409 = metadata !{i32 786689, metadata !261, metadata !"prDone", metadata !77, i32 67108987, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!410 = metadata !{i32 123, i32 48, metadata !261, null}
!411 = metadata !{i32 125, i32 1, metadata !412, null}
!412 = metadata !{i32 786443, metadata !261, i32 124, i32 1, metadata !77, i32 12} ; [ DW_TAG_lexical_block ]
!413 = metadata !{i32 126, i32 3, metadata !412, null}
!414 = metadata !{i32 128, i32 3, metadata !412, null}
!415 = metadata !{i32 129, i32 5, metadata !416, null}
!416 = metadata !{i32 786443, metadata !412, i32 128, i32 28, metadata !77, i32 13} ; [ DW_TAG_lexical_block ]
!417 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !77, i32 16777250, metadata !80, i32 0, metadata !418} ; [ DW_TAG_arg_variable ]
!418 = metadata !{i32 130, i32 7, metadata !419, null}
!419 = metadata !{i32 786443, metadata !416, i32 129, i32 30, metadata !77, i32 14} ; [ DW_TAG_lexical_block ]
!420 = metadata !{i32 34, i32 42, metadata !137, metadata !418}
!421 = metadata !{i32 40, i32 3, metadata !422, metadata !418}
!422 = metadata !{i32 786443, metadata !137, i32 37, i32 1, metadata !77, i32 4} ; [ DW_TAG_lexical_block ]
!423 = metadata !{i32 786688, metadata !422, metadata !"words32", metadata !77, i32 38, metadata !16, i32 0, metadata !418} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !425, i32 64, metadata !426} ; [ DW_TAG_arg_variable ]
!425 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ]
!426 = metadata !{i32 41, i32 3, metadata !422, metadata !418}
!427 = metadata !{i32 144, i32 48, metadata !268, metadata !426}
!428 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!429 = metadata !{i32 786443, metadata !268, i32 144, i32 79, metadata !83, i32 23} ; [ DW_TAG_lexical_block ]
!430 = metadata !{i32 145, i32 22, metadata !429, metadata !426}
!431 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, metadata !426} ; [ DW_TAG_auto_variable ]
!432 = metadata !{i32 145, i32 31, metadata !429, metadata !426}
!433 = metadata !{i32 146, i32 9, metadata !429, metadata !426}
!434 = metadata !{i32 786689, metadata !254, metadata !"src", metadata !77, i32 16777293, metadata !80, i32 0, metadata !435} ; [ DW_TAG_arg_variable ]
!435 = metadata !{i32 132, i32 7, metadata !419, null}
!436 = metadata !{i32 77, i32 46, metadata !254, metadata !435}
!437 = metadata !{i32 786689, metadata !254, metadata !"pr", metadata !77, i32 33554510, metadata !196, i32 0, metadata !435} ; [ DW_TAG_arg_variable ]
!438 = metadata !{i32 78, i32 25, metadata !254, metadata !435}
!439 = metadata !{i32 786689, metadata !257, metadata !"src", metadata !77, i32 16777303, metadata !80, i32 0, metadata !440} ; [ DW_TAG_arg_variable ]
!440 = metadata !{i32 80, i32 3, metadata !441, metadata !435}
!441 = metadata !{i32 786443, metadata !254, i32 79, i32 1, metadata !77, i32 8} ; [ DW_TAG_lexical_block ]
!442 = metadata !{i32 87, i32 53, metadata !257, metadata !440}
!443 = metadata !{i32 786688, metadata !444, metadata !"words32", metadata !77, i32 89, metadata !445, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!444 = metadata !{i32 786443, metadata !257, i32 88, i32 1, metadata !77, i32 9} ; [ DW_TAG_lexical_block ]
!445 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !16, metadata !446, i32 0, i32 0} ; [ DW_TAG_array_type ]
!446 = metadata !{metadata !447}
!447 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!448 = metadata !{i32 89, i32 7, metadata !444, metadata !440}
!449 = metadata !{i32 131, i32 9, metadata !450, metadata !451}
!450 = metadata !{i32 786443, metadata !269, i32 129, i32 63, metadata !83, i32 24} ; [ DW_TAG_lexical_block ]
!451 = metadata !{i32 92, i32 19, metadata !452, metadata !440}
!452 = metadata !{i32 786443, metadata !444, i32 91, i32 3, metadata !77, i32 10} ; [ DW_TAG_lexical_block ]
!453 = metadata !{i32 91, i32 15, metadata !452, metadata !440}
!454 = metadata !{i32 786689, metadata !269, metadata !"this", metadata !83, i32 16777345, metadata !425, i32 64, metadata !451} ; [ DW_TAG_arg_variable ]
!455 = metadata !{i32 129, i32 56, metadata !269, metadata !451}
!456 = metadata !{i32 786688, metadata !450, metadata !"tmp", metadata !83, i32 130, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!457 = metadata !{i32 130, i32 22, metadata !450, metadata !451}
!458 = metadata !{i32 786688, metadata !450, metadata !"tmp", metadata !83, i32 130, metadata !86, i32 0, metadata !451} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 132, i32 9, metadata !450, metadata !451}
!460 = metadata !{i32 91, i32 26, metadata !452, metadata !440}
!461 = metadata !{i32 786688, metadata !452, metadata !"it", metadata !77, i32 91, metadata !16, i32 0, metadata !440} ; [ DW_TAG_auto_variable ]
!462 = metadata !{i32 94, i32 46, metadata !444, metadata !440}
!463 = metadata !{i32 786688, metadata !444, metadata !"ptr", metadata !77, i32 94, metadata !24, i32 0, metadata !440} ; [ DW_TAG_auto_variable ]
!464 = metadata !{i32 95, i32 25, metadata !444, metadata !440}
!465 = metadata !{i32 96, i32 19, metadata !444, metadata !440}
!466 = metadata !{i32 786688, metadata !444, metadata !"padding", metadata !77, i32 96, metadata !9, i32 0, metadata !440} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 97, i32 27, metadata !444, metadata !440}
!468 = metadata !{i32 81, i32 3, metadata !441, metadata !435}
!469 = metadata !{i32 786689, metadata !193, metadata !"pr", metadata !77, i32 16777279, metadata !196, i32 0, metadata !468} ; [ DW_TAG_arg_variable ]
!470 = metadata !{i32 63, i32 31, metadata !193, metadata !468}
!471 = metadata !{i32 786689, metadata !193, metadata !"addr", metadata !77, i32 33554495, metadata !16, i32 0, metadata !468} ; [ DW_TAG_arg_variable ]
!472 = metadata !{i32 63, i32 39, metadata !193, metadata !468}
!473 = metadata !{i32 786689, metadata !193, metadata !"areaID", metadata !77, i32 50331711, metadata !9, i32 0, metadata !468} ; [ DW_TAG_arg_variable ]
!474 = metadata !{i32 63, i32 51, metadata !193, metadata !468}
!475 = metadata !{i32 790529, metadata !476, metadata !"aux.areaID", null, i32 65, metadata !479, i32 0, metadata !468} ; [ DW_TAG_auto_variable_field ]
!476 = metadata !{i32 786688, metadata !477, metadata !"aux", metadata !77, i32 65, metadata !478, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!477 = metadata !{i32 786443, metadata !193, i32 64, i32 1, metadata !77, i32 7} ; [ DW_TAG_lexical_block ]
!478 = metadata !{i32 786454, null, metadata !"PRbus", metadata !77, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ]
!479 = metadata !{i32 786438, null, metadata !"", metadata !201, i32 19, i64 16, i64 32, i32 0, i32 0, null, metadata !480, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!480 = metadata !{metadata !204}
!481 = metadata !{i32 66, i32 3, metadata !477, metadata !468}
!482 = metadata !{i32 790529, metadata !476, metadata !"aux.addr", null, i32 65, metadata !483, i32 0, metadata !468} ; [ DW_TAG_auto_variable_field ]
!483 = metadata !{i32 786438, null, metadata !"", metadata !201, i32 19, i64 32, i64 32, i32 0, i32 0, null, metadata !484, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!484 = metadata !{metadata !203}
!485 = metadata !{i32 67, i32 3, metadata !477, metadata !468}
!486 = metadata !{i32 786689, metadata !265, metadata !"this", metadata !83, i32 16777360, metadata !487, i32 64, metadata !488} ; [ DW_TAG_arg_variable ]
!487 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ]
!488 = metadata !{i32 68, i32 3, metadata !477, metadata !468}
!489 = metadata !{i32 144, i32 48, metadata !265, metadata !488}
!490 = metadata !{i32 786688, metadata !491, metadata !"tmp", metadata !83, i32 145, metadata !200, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 786443, metadata !265, i32 144, i32 79, metadata !83, i32 20} ; [ DW_TAG_lexical_block ]
!492 = metadata !{i32 145, i32 22, metadata !491, metadata !488}
!493 = metadata !{i32 145, i32 31, metadata !491, metadata !488}
!494 = metadata !{i32 146, i32 9, metadata !491, metadata !488}
!495 = metadata !{i32 82, i32 3, metadata !441, metadata !435}
!496 = metadata !{i32 133, i32 5, metadata !419, null}
!497 = metadata !{i32 135, i32 7, metadata !498, null}
!498 = metadata !{i32 786443, metadata !416, i32 134, i32 9, metadata !77, i32 15} ; [ DW_TAG_lexical_block ]
!499 = metadata !{i32 786689, metadata !258, metadata !"prDone", metadata !77, i32 16777324, metadata !144, i32 0, metadata !500} ; [ DW_TAG_arg_variable ]
!500 = metadata !{i32 136, i32 2, metadata !501, null}
!501 = metadata !{i32 786443, metadata !498, i32 135, i32 32, metadata !77, i32 16} ; [ DW_TAG_lexical_block ]
!502 = metadata !{i32 108, i32 35, metadata !258, metadata !500}
!503 = metadata !{i32 786689, metadata !264, metadata !"this", metadata !83, i32 16777352, metadata !504, i32 64, metadata !505} ; [ DW_TAG_arg_variable ]
!504 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ]
!505 = metadata !{i32 111, i32 3, metadata !506, metadata !500}
!506 = metadata !{i32 786443, metadata !258, i32 109, i32 1, metadata !77, i32 11} ; [ DW_TAG_lexical_block ]
!507 = metadata !{i32 136, i32 48, metadata !264, metadata !505}
!508 = metadata !{i32 786688, metadata !509, metadata !"tmp", metadata !83, i32 137, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!509 = metadata !{i32 786443, metadata !264, i32 136, i32 76, metadata !83, i32 19} ; [ DW_TAG_lexical_block ]
!510 = metadata !{i32 137, i32 22, metadata !509, metadata !505}
!511 = metadata !{i32 138, i32 24, metadata !509, metadata !505}
!512 = metadata !{i32 786688, metadata !509, metadata !"empty_n", metadata !83, i32 138, metadata !117, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!513 = metadata !{i32 786688, metadata !509, metadata !"tmp", metadata !83, i32 137, metadata !117, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!514 = metadata !{i32 139, i32 9, metadata !509, metadata !505}
!515 = metadata !{i32 786688, metadata !506, metadata !"aux", metadata !77, i32 110, metadata !117, i32 0, metadata !505} ; [ DW_TAG_auto_variable ]
!516 = metadata !{i32 112, i32 3, metadata !506, metadata !500}
!517 = metadata !{i32 113, i32 5, metadata !506, metadata !500}
!518 = metadata !{i32 114, i32 3, metadata !506, metadata !500}
!519 = metadata !{i32 145, i32 22, metadata !429, metadata !518}
!520 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, metadata !518} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 145, i32 31, metadata !429, metadata !518}
!522 = metadata !{i32 146, i32 9, metadata !429, metadata !518}
!523 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !77, i32 16777250, metadata !80, i32 0, metadata !524} ; [ DW_TAG_arg_variable ]
!524 = metadata !{i32 137, i32 2, metadata !501, null}
!525 = metadata !{i32 34, i32 42, metadata !137, metadata !524}
!526 = metadata !{i32 40, i32 3, metadata !422, metadata !524}
!527 = metadata !{i32 786688, metadata !422, metadata !"words32", metadata !77, i32 38, metadata !16, i32 0, metadata !524} ; [ DW_TAG_auto_variable ]
!528 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !425, i32 64, metadata !529} ; [ DW_TAG_arg_variable ]
!529 = metadata !{i32 41, i32 3, metadata !422, metadata !524}
!530 = metadata !{i32 144, i32 48, metadata !268, metadata !529}
!531 = metadata !{i32 145, i32 22, metadata !429, metadata !529}
!532 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, metadata !529} ; [ DW_TAG_auto_variable ]
!533 = metadata !{i32 145, i32 31, metadata !429, metadata !529}
!534 = metadata !{i32 146, i32 9, metadata !429, metadata !529}
!535 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !425, i32 64, metadata !536} ; [ DW_TAG_arg_variable ]
!536 = metadata !{i32 44, i32 5, metadata !537, metadata !524}
!537 = metadata !{i32 786443, metadata !422, i32 42, i32 31, metadata !77, i32 5} ; [ DW_TAG_lexical_block ]
!538 = metadata !{i32 144, i32 48, metadata !268, metadata !536}
!539 = metadata !{i32 145, i32 22, metadata !429, metadata !536}
!540 = metadata !{i32 145, i32 31, metadata !429, metadata !536}
!541 = metadata !{i32 146, i32 9, metadata !429, metadata !536}
!542 = metadata !{i32 45, i32 5, metadata !537, metadata !524}
!543 = metadata !{i32 113, i32 20, metadata !544, metadata !545}
!544 = metadata !{i32 786443, metadata !267, i32 112, i32 62, metadata !83, i32 22} ; [ DW_TAG_lexical_block ]
!545 = metadata !{i32 45, i32 13, metadata !537, metadata !524}
!546 = metadata !{i32 786688, metadata !544, metadata !"tmp", metadata !83, i32 113, metadata !117, i32 0, metadata !545} ; [ DW_TAG_auto_variable ]
!547 = metadata !{i32 130, i32 22, metadata !450, metadata !548}
!548 = metadata !{i32 46, i32 17, metadata !537, metadata !524}
!549 = metadata !{i32 131, i32 9, metadata !450, metadata !548}
!550 = metadata !{i32 786688, metadata !450, metadata !"tmp", metadata !83, i32 130, metadata !86, i32 0, metadata !548} ; [ DW_TAG_auto_variable ]
!551 = metadata !{i32 132, i32 9, metadata !450, metadata !548}
!552 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !425, i32 64, metadata !548} ; [ DW_TAG_arg_variable ]
!553 = metadata !{i32 144, i32 48, metadata !268, metadata !548}
!554 = metadata !{i32 145, i32 22, metadata !429, metadata !548}
!555 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, metadata !548} ; [ DW_TAG_auto_variable ]
!556 = metadata !{i32 145, i32 31, metadata !429, metadata !548}
!557 = metadata !{i32 146, i32 9, metadata !429, metadata !548}
!558 = metadata !{i32 141, i32 2, metadata !559, null}
!559 = metadata !{i32 786443, metadata !498, i32 140, i32 11, metadata !77, i32 17} ; [ DW_TAG_lexical_block ]
!560 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !77, i32 16777250, metadata !80, i32 0, metadata !561} ; [ DW_TAG_arg_variable ]
!561 = metadata !{i32 142, i32 2, metadata !559, null}
!562 = metadata !{i32 34, i32 42, metadata !137, metadata !561}
!563 = metadata !{i32 40, i32 3, metadata !422, metadata !561}
!564 = metadata !{i32 786688, metadata !422, metadata !"words32", metadata !77, i32 38, metadata !16, i32 0, metadata !561} ; [ DW_TAG_auto_variable ]
!565 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !425, i32 64, metadata !566} ; [ DW_TAG_arg_variable ]
!566 = metadata !{i32 41, i32 3, metadata !422, metadata !561}
!567 = metadata !{i32 144, i32 48, metadata !268, metadata !566}
!568 = metadata !{i32 145, i32 22, metadata !429, metadata !566}
!569 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, metadata !566} ; [ DW_TAG_auto_variable ]
!570 = metadata !{i32 145, i32 31, metadata !429, metadata !566}
!571 = metadata !{i32 146, i32 9, metadata !429, metadata !566}
!572 = metadata !{i32 146, i32 3, metadata !416, null}
!573 = metadata !{i32 148, i32 5, metadata !574, null}
!574 = metadata !{i32 786443, metadata !412, i32 147, i32 7, metadata !77, i32 18} ; [ DW_TAG_lexical_block ]
!575 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !77, i32 16777250, metadata !80, i32 0, metadata !576} ; [ DW_TAG_arg_variable ]
!576 = metadata !{i32 149, i32 5, metadata !574, null}
!577 = metadata !{i32 34, i32 42, metadata !137, metadata !576}
!578 = metadata !{i32 40, i32 3, metadata !422, metadata !576}
!579 = metadata !{i32 786688, metadata !422, metadata !"words32", metadata !77, i32 38, metadata !16, i32 0, metadata !576} ; [ DW_TAG_auto_variable ]
!580 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !83, i32 16777360, metadata !425, i32 64, metadata !581} ; [ DW_TAG_arg_variable ]
!581 = metadata !{i32 41, i32 3, metadata !422, metadata !576}
!582 = metadata !{i32 144, i32 48, metadata !268, metadata !581}
!583 = metadata !{i32 145, i32 22, metadata !429, metadata !581}
!584 = metadata !{i32 786688, metadata !429, metadata !"tmp", metadata !83, i32 145, metadata !86, i32 0, metadata !581} ; [ DW_TAG_auto_variable ]
!585 = metadata !{i32 145, i32 31, metadata !429, metadata !581}
!586 = metadata !{i32 146, i32 9, metadata !429, metadata !581}
!587 = metadata !{i32 152, i32 1, metadata !412, null}
!588 = metadata !{i32 786689, metadata !5, metadata !"c1", metadata !6, i32 16777235, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!589 = metadata !{i32 19, i32 24, metadata !5, null}
!590 = metadata !{i32 786689, metadata !5, metadata !"c2", metadata !6, i32 33554451, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!591 = metadata !{i32 19, i32 42, metadata !5, null}
!592 = metadata !{i32 786688, metadata !593, metadata !"aux", metadata !6, i32 21, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!593 = metadata !{i32 786443, metadata !5, i32 20, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!594 = metadata !{i32 22, i32 3, metadata !593, null}
!595 = metadata !{i32 23, i32 3, metadata !593, null}
!596 = metadata !{i32 786689, metadata !13, metadata !"c1", metadata !6, i32 16777243, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!597 = metadata !{i32 27, i32 22, metadata !13, null}
!598 = metadata !{i32 786689, metadata !13, metadata !"c2", metadata !6, i32 33554459, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!599 = metadata !{i32 27, i32 40, metadata !13, null}
!600 = metadata !{i32 786689, metadata !13, metadata !"c3", metadata !6, i32 50331676, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!601 = metadata !{i32 28, i32 17, metadata !13, null}
!602 = metadata !{i32 786689, metadata !13, metadata !"c4", metadata !6, i32 67108892, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!603 = metadata !{i32 28, i32 35, metadata !13, null}
!604 = metadata !{i32 31, i32 3, metadata !605, null}
!605 = metadata !{i32 786443, metadata !13, i32 29, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!606 = metadata !{i32 786688, metadata !605, metadata !"aux", metadata !6, i32 30, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!607 = metadata !{i32 32, i32 3, metadata !605, null}
!608 = metadata !{i32 786689, metadata !134, metadata !"src", metadata !77, i32 16777233, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!609 = metadata !{i32 17, i32 43, metadata !134, null}
!610 = metadata !{i32 786688, metadata !611, metadata !"words32", metadata !77, i32 19, metadata !445, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!611 = metadata !{i32 786443, metadata !134, i32 18, i32 1, metadata !77, i32 2} ; [ DW_TAG_lexical_block ]
!612 = metadata !{i32 19, i32 7, metadata !611, null}
!613 = metadata !{i32 131, i32 9, metadata !450, metadata !614}
!614 = metadata !{i32 22, i32 19, metadata !615, null}
!615 = metadata !{i32 786443, metadata !611, i32 21, i32 3, metadata !77, i32 3} ; [ DW_TAG_lexical_block ]
!616 = metadata !{i32 21, i32 15, metadata !615, null}
!617 = metadata !{i32 786689, metadata !269, metadata !"this", metadata !83, i32 16777345, metadata !425, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!618 = metadata !{i32 129, i32 56, metadata !269, metadata !614}
!619 = metadata !{i32 130, i32 22, metadata !450, metadata !614}
!620 = metadata !{i32 132, i32 9, metadata !450, metadata !614}
!621 = metadata !{i32 21, i32 26, metadata !615, null}
!622 = metadata !{i32 786688, metadata !615, metadata !"it", metadata !77, i32 21, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!623 = metadata !{i32 24, i32 3, metadata !611, null}
!624 = metadata !{i32 25, i32 3, metadata !611, null}
!625 = metadata !{i32 26, i32 3, metadata !611, null}
!626 = metadata !{i32 27, i32 3, metadata !611, null}
!627 = metadata !{i32 28, i32 3, metadata !611, null}
!628 = metadata !{i32 29, i32 3, metadata !611, null}
!629 = metadata !{i32 30, i32 1, metadata !611, null}
!630 = metadata !{i32 786689, metadata !76, metadata !"src", metadata !77, i32 16777222, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!631 = metadata !{i32 6, i32 36, metadata !76, null}
!632 = metadata !{i32 786689, metadata !76, metadata !"size", metadata !77, i32 33554438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!633 = metadata !{i32 6, i32 47, metadata !76, null}
!634 = metadata !{i32 8, i32 1, metadata !635, null}
!635 = metadata !{i32 786443, metadata !76, i32 7, i32 1, metadata !77, i32 0} ; [ DW_TAG_lexical_block ]
!636 = metadata !{i32 131, i32 9, metadata !450, metadata !637}
!637 = metadata !{i32 10, i32 5, metadata !638, null}
!638 = metadata !{i32 786443, metadata !635, i32 9, i32 20, metadata !77, i32 1} ; [ DW_TAG_lexical_block ]
!639 = metadata !{i32 9, i32 3, metadata !635, null}
!640 = metadata !{i32 129, i32 56, metadata !269, metadata !637}
!641 = metadata !{i32 130, i32 22, metadata !450, metadata !637}
!642 = metadata !{i32 132, i32 9, metadata !450, metadata !637}
!643 = metadata !{i32 11, i32 5, metadata !638, null}
!644 = metadata !{i32 786688, metadata !635, metadata !"it", metadata !77, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!645 = metadata !{i32 12, i32 3, metadata !638, null}
!646 = metadata !{i32 13, i32 1, metadata !635, null}
