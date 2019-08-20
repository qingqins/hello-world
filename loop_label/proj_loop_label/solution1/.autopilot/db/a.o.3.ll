; ModuleID = '/home/qingqing/git/hello-world/loop_label/proj_loop_label/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@empty = internal unnamed_addr constant [5 x i8] c"bram\00" ; [#uses=2 type=[5 x i8]*]
@empty_0 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=12 type=[1 x i8]*]
@empty_1 = internal unnamed_addr constant [14 x i8] c"example_label\00" ; [#uses=1 type=[14 x i8]*]
@empty_2 = internal unnamed_addr constant [7 x i8] c"LOOP_1\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=1]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @example_label([50 x i32]* noalias %A, [50 x i32]* noalias %B) nounwind {
entry:
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @empty_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([50 x i32]* %A, [5 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %A) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecInterface([50 x i32]* %B, [5 x i8]* @empty, i32 0, i32 0, [1 x i8]* @empty_0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, [1 x i8]* @empty_0, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @empty_0, [1 x i8]* @empty_0) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %B) nounwind, !map !49
  br label %for.inc, !dbg !53, !bitwidth !55      ; [debug line = 78:10]

for.inc:                                          ; preds = %for.inc.split, %entry
  %i = phi i6 [ %add_ln78, %for.inc.split ], [ 0, %entry ], !bitwidth !56 ; [#uses=3 type=i6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %icmp_ln78 = icmp eq i6 %i, -14, !dbg !57, !bitwidth !59 ; [#uses=1 type=i1] [debug line = 78:23]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  %add_ln78 = add i6 %i, 1, !dbg !60, !bitwidth !56 ; [#uses=1 type=i6] [debug line = 78:30]
  br i1 %icmp_ln78, label %for.end, label %for.inc.split, !dbg !53, !llvm.loop !61, !bitwidth !55 ; [debug line = 78:10]

for.inc.split:                                    ; preds = %for.inc
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @empty_2) nounwind, !dbg !63 ; [debug line = 76:7]
  call void @llvm.dbg.value(metadata !{i6 %i}, i64 0, metadata !64), !dbg !63 ; [debug line = 76:7] [debug variable = i]
  %zext_ln79 = zext i6 %i to i64, !dbg !65, !bitwidth !67 ; [#uses=2 type=i64] [debug line = 79:12]
  %A_addr = getelementptr [50 x i32]* %A, i64 0, i64 %zext_ln79, !dbg !65, !bitwidth !19 ; [#uses=1 type=i32*] [debug line = 79:12]
  %A_load = load i32* %A_addr, align 4, !dbg !65, !bitwidth !68 ; [#uses=1 type=i32] [debug line = 79:12]
  %add_ln79 = add nsw i32 %A_load, 5, !dbg !69, !bitwidth !68 ; [#uses=1 type=i32] [debug line = 79:17]
  %B_addr = getelementptr [50 x i32]* %B, i64 0, i64 %zext_ln79, !dbg !70, !bitwidth !19 ; [#uses=1 type=i32*] [debug line = 79:10]
  store i32 %add_ln79, i32* %B_addr, align 4, !dbg !70, !bitwidth !55 ; [debug line = 79:10]
  br label %for.inc, !bitwidth !55

for.end:                                          ; preds = %for.inc
  ret void, !dbg !71, !bitwidth !55               ; [debug line = 81:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!blackbox_cfg = !{!13}
!llvm.module.flags = !{!14, !15}
!llvm.map.gv = !{}
!bitwidth_g = !{!16}

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
!16 = metadata !{void ([50 x i32]*, [50 x i32]*)* @example_label, metadata !17}
!17 = metadata !{metadata !18, metadata !20, metadata !21, metadata !23, metadata !24, metadata !26, metadata !27, metadata !29, metadata !31, metadata !32, metadata !33, metadata !35, metadata !37, metadata !38, metadata !39, metadata !41}
!18 = metadata !{metadata !"Arg", i32 0, metadata !19}
!19 = metadata !{i32 0, i32 0, i32 32, i32 2}
!20 = metadata !{metadata !"Arg", i32 1, metadata !19}
!21 = metadata !{[14 x i8]* @empty_1, metadata !22}
!22 = metadata !{i32 0, i32 0, i32 8, i32 2}
!23 = metadata !{[5 x i8]* @empty, metadata !22}
!24 = metadata !{i32 0, metadata !25}
!25 = metadata !{i32 1, i32 32, i32 0, i32 0}
!26 = metadata !{[1 x i8]* @empty_0, metadata !22}
!27 = metadata !{i6 0, metadata !28}              
!28 = metadata !{i32 1, i32 6, i32 0, i32 0}
!29 = metadata !{i32 -1, metadata !30}            ; [ DW_TAG_hi_user ]
!30 = metadata !{i32 1, i32 32, i32 0, i32 1}
!31 = metadata !{i32 1, metadata !25}
!32 = metadata !{[1 x i8]* @p_str, metadata !22}
!33 = metadata !{i6 -14, metadata !34}            ; [ DW_TAG_try_block ]
!34 = metadata !{i32 5, i32 6, i32 0, i32 1}
!35 = metadata !{i64 50, metadata !36}
!36 = metadata !{i32 7, i32 64, i32 0, i32 1}
!37 = metadata !{i6 1, metadata !28}              ; [ DW_TAG_array_type ]
!38 = metadata !{[7 x i8]* @empty_2, metadata !22}
!39 = metadata !{i64 0, metadata !40}
!40 = metadata !{i32 1, i32 64, i32 0, i32 0}
!41 = metadata !{i32 5, metadata !42}
!42 = metadata !{i32 4, i32 32, i32 0, i32 1}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"A", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 49, i32 1}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"B", metadata !47, metadata !"int", i32 0, i32 31}
!53 = metadata !{i32 78, i32 10, metadata !54, null}
!54 = metadata !{i32 786443, metadata !5, i32 78, i32 10, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 0, i32 0, i32 0, i32 2}
!56 = metadata !{i32 6, i32 6, i32 0, i32 2}
!57 = metadata !{i32 78, i32 23, metadata !58, null}
!58 = metadata !{i32 786443, metadata !54, i32 78, i32 10, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 1, i32 1, i32 0, i32 2}
!60 = metadata !{i32 78, i32 30, metadata !58, null}
!61 = metadata !{metadata !61, metadata !13, metadata !13, metadata !62}
!62 = metadata !{metadata !"llvm.loop.name", metadata !"LOOP_1"}
!63 = metadata !{i32 76, i32 7, metadata !5, null}
!64 = metadata !{i32 786688, metadata !5, metadata !"i", metadata !6, i32 76, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 79, i32 12, metadata !66, null}
!66 = metadata !{i32 786443, metadata !58, i32 78, i32 33, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 64, i32 64, i32 0, i32 0}
!68 = metadata !{i32 32, i32 32, i32 0, i32 2}
!69 = metadata !{i32 79, i32 17, metadata !66, null}
!70 = metadata !{i32 79, i32 10, metadata !66, null}
!71 = metadata !{i32 81, i32 1, metadata !5, null}
