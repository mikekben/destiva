; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@flags = external hidden global i8, align 1
@last_flags = external hidden global i32, align 4
@opt_len = external hidden global i64, align 8
@static_len = external hidden global i64, align 8
@dyn_ltree = external hidden global [573 x %struct.ct_data], align 16
@dyn_dtree = external hidden global [61 x %struct.ct_data], align 16
@last_lit = external hidden global i32, align 4
@last_dist = external hidden global i32, align 4
@flag_bit = external hidden global i8, align 1
@bl_tree = external hidden global [39 x %struct.ct_data], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @init_block() #0 {
entry:
  %n = alloca i32, align 4, !mymd !6
  store i32 0, ptr %n, align 4, !mymd !7
  br label %for.cond, !mymd !8

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !mymd !9
  %cmp = icmp slt i32 %0, 286, !mymd !10
  br i1 %cmp, label %for.body, label %for.end, !mymd !11

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !mymd !12
  %idxprom = sext i32 %1 to i64, !mymd !13
  %arrayidx = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %idxprom, !mymd !14
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx, i32 0, i32 0, !mymd !15
  store i16 0, ptr %fc, align 4, !mymd !16
  br label %for.inc, !mymd !17

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %n, align 4, !mymd !18
  %inc = add nsw i32 %2, 1, !mymd !19
  store i32 %inc, ptr %n, align 4, !mymd !20
  br label %for.cond, !llvm.loop !21, !mymd !23

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !mymd !24
  br label %for.cond1, !mymd !25

for.cond1:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, ptr %n, align 4, !mymd !26
  %cmp2 = icmp slt i32 %3, 30, !mymd !27
  br i1 %cmp2, label %for.body3, label %for.end9, !mymd !28

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %n, align 4, !mymd !29
  %idxprom4 = sext i32 %4 to i64, !mymd !30
  %arrayidx5 = getelementptr inbounds [61 x %struct.ct_data], ptr @dyn_dtree, i64 0, i64 %idxprom4, !mymd !31
  %fc6 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx5, i32 0, i32 0, !mymd !32
  store i16 0, ptr %fc6, align 4, !mymd !33
  br label %for.inc7, !mymd !34

for.inc7:                                         ; preds = %for.body3
  %5 = load i32, ptr %n, align 4, !mymd !35
  %inc8 = add nsw i32 %5, 1, !mymd !36
  store i32 %inc8, ptr %n, align 4, !mymd !37
  br label %for.cond1, !llvm.loop !38, !mymd !39

for.end9:                                         ; preds = %for.cond1
  store i32 0, ptr %n, align 4, !mymd !40
  br label %for.cond10, !mymd !41

for.cond10:                                       ; preds = %for.inc16, %for.end9
  %6 = load i32, ptr %n, align 4, !mymd !42
  %cmp11 = icmp slt i32 %6, 19, !mymd !43
  br i1 %cmp11, label %for.body12, label %for.end18, !mymd !44

for.body12:                                       ; preds = %for.cond10
  %7 = load i32, ptr %n, align 4, !mymd !45
  %idxprom13 = sext i32 %7 to i64, !mymd !46
  %arrayidx14 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom13, !mymd !47
  %fc15 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx14, i32 0, i32 0, !mymd !48
  store i16 0, ptr %fc15, align 4, !mymd !49
  br label %for.inc16, !mymd !50

for.inc16:                                        ; preds = %for.body12
  %8 = load i32, ptr %n, align 4, !mymd !51
  %inc17 = add nsw i32 %8, 1, !mymd !52
  store i32 %inc17, ptr %n, align 4, !mymd !53
  br label %for.cond10, !llvm.loop !54, !mymd !55

for.end18:                                        ; preds = %for.cond10
  store i16 1, ptr getelementptr inbounds ([573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 256), align 16, !mymd !56
  store i64 0, ptr @static_len, align 8, !mymd !57
  store i64 0, ptr @opt_len, align 8, !mymd !58
  store i32 0, ptr @last_flags, align 4, !mymd !59
  store i32 0, ptr @last_dist, align 4, !mymd !60
  store i32 0, ptr @last_lit, align 4, !mymd !61
  store i8 0, ptr @flags, align 1, !mymd !62
  store i8 1, ptr @flag_bit, align 1, !mymd !63
  ret void, !mymd !64
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"7822"}
!7 = !{!"7823"}
!8 = !{!"7824"}
!9 = !{!"7825"}
!10 = !{!"7826"}
!11 = !{!"7827"}
!12 = !{!"7828"}
!13 = !{!"7829"}
!14 = !{!"7830"}
!15 = !{!"7831"}
!16 = !{!"7832"}
!17 = !{!"7833"}
!18 = !{!"7834"}
!19 = !{!"7835"}
!20 = !{!"7836"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"7837"}
!24 = !{!"7838"}
!25 = !{!"7839"}
!26 = !{!"7840"}
!27 = !{!"7841"}
!28 = !{!"7842"}
!29 = !{!"7843"}
!30 = !{!"7844"}
!31 = !{!"7845"}
!32 = !{!"7846"}
!33 = !{!"7847"}
!34 = !{!"7848"}
!35 = !{!"7849"}
!36 = !{!"7850"}
!37 = !{!"7851"}
!38 = distinct !{!38, !22}
!39 = !{!"7852"}
!40 = !{!"7853"}
!41 = !{!"7854"}
!42 = !{!"7855"}
!43 = !{!"7856"}
!44 = !{!"7857"}
!45 = !{!"7858"}
!46 = !{!"7859"}
!47 = !{!"7860"}
!48 = !{!"7861"}
!49 = !{!"7862"}
!50 = !{!"7863"}
!51 = !{!"7864"}
!52 = !{!"7865"}
!53 = !{!"7866"}
!54 = distinct !{!54, !22}
!55 = !{!"7867"}
!56 = !{!"7868"}
!57 = !{!"7869"}
!58 = !{!"7870"}
!59 = !{!"7871"}
!60 = !{!"7872"}
!61 = !{!"7873"}
!62 = !{!"7874"}
!63 = !{!"7875"}
!64 = !{!"7876"}
