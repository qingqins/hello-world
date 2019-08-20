; ModuleID = '/home/qingqing/git/hello-world/loop_label/proj_loop_label/solution1/.autopilot/db/a.o.1.tmp.bc'
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@__empty_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=0 type=[1 x i8]*]
@AP_complete_mode = internal unnamed_addr constant [9 x i8] c"COMPLETE\00" ; [#uses=0 type=[9 x i8]*]
@.str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@0 = internal unnamed_addr constant [5 x i8] c"bram\00" ; [#uses=2 type=[5 x i8]*]
@1 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=12 type=[1 x i8]*]
@2 = internal unnamed_addr constant [14 x i8] c"example_label\00" ; [#uses=1 type=[14 x i8]*]
@3 = internal unnamed_addr constant [7 x i8] c"LOOP_1\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @example_label([50 x i32]* noalias %A, [50 x i32]* noalias %B) nounwind {
entry:
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @2) nounwind
  call void (...)* @_ssdm_op_SpecInterface([50 x i32]* %A, [5 x i8]* @0, i32 0, i32 0, [1 x i8]* @1, i32 0, i32 0, [1 x i8]* @1, [1 x i8]* @1, [1 x i8]* @1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @1, [1 x i8]* @1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %A) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecInterface([50 x i32]* %B, [5 x i8]* @0, i32 0, i32 0, [1 x i8]* @1, i32 0, i32 0, [1 x i8]* @1, [1 x i8]* @1, [1 x i8]* @1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @1, [1 x i8]* @1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %B) nounwind, !map !22
  br label %for.inc, !dbg !26                     ; [debug line = 78:10]

for.inc:                                          ; preds = %for.inc.split, %entry
  %i = phi i64 [ %add.ln78, %for.inc.split ], [ 0, %entry ] ; [#uses=3 type=i64]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind
  %icmp.ln78 = icmp eq i64 %i, 50, !dbg !28       ; [#uses=1 type=i1] [debug line = 78:23]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  br i1 %icmp.ln78, label %for.end, label %for.inc.split, !dbg !26, !llvm.loop !30 ; [debug line = 78:10]

for.inc.split:                                    ; preds = %for.inc
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @3) nounwind, !dbg !32 ; [debug line = 76:7]
  call void @llvm.dbg.value(metadata !{i64 %i}, i64 0, metadata !33), !dbg !32 ; [debug line = 76:7] [debug variable = i]
  %trunc.ln79 = trunc i64 %i to i62, !dbg !34     ; [#uses=1 type=i62] [debug line = 79:12]
  %zext.ln79 = zext i62 %trunc.ln79 to i64, !dbg !34 ; [#uses=2 type=i64] [debug line = 79:12]
  %A.addr = getelementptr [50 x i32]* %A, i64 0, i64 %zext.ln79, !dbg !34 ; [#uses=1 type=i32*] [debug line = 79:12]
  %A.load = load i32* %A.addr, align 4, !dbg !34  ; [#uses=1 type=i32] [debug line = 79:12]
  %add.ln79 = add nsw i32 %A.load, 5, !dbg !36    ; [#uses=1 type=i32] [debug line = 79:17]
  %B.addr = getelementptr [50 x i32]* %B, i64 0, i64 %zext.ln79, !dbg !37 ; [#uses=1 type=i32*] [debug line = 79:10]
  store i32 %add.ln79, i32* %B.addr, align 4, !dbg !37 ; [debug line = 79:10]
  %add.ln78 = add nuw nsw i64 %i, 1, !dbg !38     ; [#uses=1 type=i64] [debug line = 78:30]
  br label %for.inc

for.end:                                          ; preds = %for.inc
  ret void, !dbg !39                              ; [debug line = 81:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i32 @_ssdm_GepAggregate(...)

; [#uses=0]
declare i32 @_ssdm_ArrayAggregate(...)

; [#uses=0]
declare void @._ssdm_op_SpecStableContent(...)

; [#uses=0]
declare void @._ssdm_op_SpecStable(...)

; [#uses=0]
declare i32 @._ssdm_op_SpecChannel(...)

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!blackbox_cfg = !{!13}
!llvm.module.flags = !{!14, !15}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/qingqing/git/hello-world/loop_label/proj_loop_label/solution1/.autopilot/db/example.pragma.2.cpp", metadata !"/home/qingqing/git/hello-world/loop_label", metadata !"clang version 7.0.0 ", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"example_label", metadata !"example_label", metadata !"_Z13example_labelPiS_", metadata !6, i32 75, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([50 x i32]*, [50 x i32]*)* @example_label, null, null, metadata !1, i32 75} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"example.cpp", metadata !"/home/qingqing/git/hello-world/loop_label", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", metadata !10, i32 0, i64 64, i64 0, i32 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786473, metadata !"<unknown>", null, null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 0, i32 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !"clang version 7.0.0 "}
!13 = metadata !{}
!14 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!15 = metadata !{i32 7, metadata !"reflow.full.lowering", i32 1}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"A", metadata !20, metadata !"int", i32 0, i32 31}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 49, i32 1}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"B", metadata !20, metadata !"int", i32 0, i32 31}
!26 = metadata !{i32 78, i32 10, metadata !27, null}
!27 = metadata !{i32 786443, metadata !5, i32 78, i32 10, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 78, i32 23, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 78, i32 10, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{metadata !30, metadata !13, metadata !13, metadata !31}
!31 = metadata !{metadata !"llvm.loop.name", metadata !"LOOP_1"}
!32 = metadata !{i32 76, i32 7, metadata !5, null}
!33 = metadata !{i32 786688, metadata !5, metadata !"i", metadata !6, i32 76, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 79, i32 12, metadata !35, null}
!35 = metadata !{i32 786443, metadata !29, i32 78, i32 33, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 79, i32 17, metadata !35, null}
!37 = metadata !{i32 79, i32 10, metadata !35, null}
!38 = metadata !{i32 78, i32 30, metadata !29, null}
!39 = metadata !{i32 81, i32 1, metadata !5, null}
