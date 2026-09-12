; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@file_type = external dso_local global ptr, align 8
@dyn_ltree = external hidden global [573 x %struct.ct_data], align 16
@.str.196 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define hidden void @set_file_type() #0 {
entry:
  %n = alloca i32, align 4, !mymd !6
  %ascii_freq = alloca i32, align 4, !mymd !7
  %bin_freq = alloca i32, align 4, !mymd !8
  store i32 0, ptr %n, align 4, !mymd !9
  store i32 0, ptr %ascii_freq, align 4, !mymd !10
  store i32 0, ptr %bin_freq, align 4, !mymd !11
  br label %while.cond, !mymd !12

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n, align 4, !mymd !13
  %cmp = icmp slt i32 %0, 7, !mymd !14
  br i1 %cmp, label %while.body, label %while.end, !mymd !15

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %n, align 4, !mymd !16
  %inc = add nsw i32 %1, 1, !mymd !17
  store i32 %inc, ptr %n, align 4, !mymd !18
  %idxprom = sext i32 %1 to i64, !mymd !19
  %arrayidx = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %idxprom, !mymd !20
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx, i32 0, i32 0, !mymd !21
  %2 = load i16, ptr %fc, align 4, !mymd !22
  %conv = zext i16 %2 to i32, !mymd !23
  %3 = load i32, ptr %bin_freq, align 4, !mymd !24
  %add = add i32 %3, %conv, !mymd !25
  store i32 %add, ptr %bin_freq, align 4, !mymd !26
  br label %while.cond, !llvm.loop !27, !mymd !29

while.end:                                        ; preds = %while.cond
  br label %while.cond1, !mymd !30

while.cond1:                                      ; preds = %while.body4, %while.end
  %4 = load i32, ptr %n, align 4, !mymd !31
  %cmp2 = icmp slt i32 %4, 128, !mymd !32
  br i1 %cmp2, label %while.body4, label %while.end11, !mymd !33

while.body4:                                      ; preds = %while.cond1
  %5 = load i32, ptr %n, align 4, !mymd !34
  %inc5 = add nsw i32 %5, 1, !mymd !35
  store i32 %inc5, ptr %n, align 4, !mymd !36
  %idxprom6 = sext i32 %5 to i64, !mymd !37
  %arrayidx7 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %idxprom6, !mymd !38
  %fc8 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx7, i32 0, i32 0, !mymd !39
  %6 = load i16, ptr %fc8, align 4, !mymd !40
  %conv9 = zext i16 %6 to i32, !mymd !41
  %7 = load i32, ptr %ascii_freq, align 4, !mymd !42
  %add10 = add i32 %7, %conv9, !mymd !43
  store i32 %add10, ptr %ascii_freq, align 4, !mymd !44
  br label %while.cond1, !llvm.loop !45, !mymd !46

while.end11:                                      ; preds = %while.cond1
  br label %while.cond12, !mymd !47

while.cond12:                                     ; preds = %while.body15, %while.end11
  %8 = load i32, ptr %n, align 4, !mymd !48
  %cmp13 = icmp slt i32 %8, 256, !mymd !49
  br i1 %cmp13, label %while.body15, label %while.end22, !mymd !50

while.body15:                                     ; preds = %while.cond12
  %9 = load i32, ptr %n, align 4, !mymd !51
  %inc16 = add nsw i32 %9, 1, !mymd !52
  store i32 %inc16, ptr %n, align 4, !mymd !53
  %idxprom17 = sext i32 %9 to i64, !mymd !54
  %arrayidx18 = getelementptr inbounds [573 x %struct.ct_data], ptr @dyn_ltree, i64 0, i64 %idxprom17, !mymd !55
  %fc19 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx18, i32 0, i32 0, !mymd !56
  %10 = load i16, ptr %fc19, align 4, !mymd !57
  %conv20 = zext i16 %10 to i32, !mymd !58
  %11 = load i32, ptr %bin_freq, align 4, !mymd !59
  %add21 = add i32 %11, %conv20, !mymd !60
  store i32 %add21, ptr %bin_freq, align 4, !mymd !61
  br label %while.cond12, !llvm.loop !62, !mymd !63

while.end22:                                      ; preds = %while.cond12
  %12 = load i32, ptr %bin_freq, align 4, !mymd !64
  %13 = load i32, ptr %ascii_freq, align 4, !mymd !65
  %shr = lshr i32 %13, 2, !mymd !66
  %cmp23 = icmp ugt i32 %12, %shr, !mymd !67
  %14 = zext i1 %cmp23 to i64, !mymd !68
  %cond = select i1 %cmp23, i32 0, i32 1, !mymd !69
  %conv25 = trunc i32 %cond to i16, !mymd !70
  %15 = load ptr, ptr @file_type, align 8, !mymd !71
  store i16 %conv25, ptr %15, align 2, !mymd !72
  %16 = load ptr, ptr @file_type, align 8, !mymd !73
  %17 = load i16, ptr %16, align 2, !mymd !74
  %conv26 = zext i16 %17 to i32, !mymd !75
  %cmp27 = icmp eq i32 %conv26, 0, !mymd !76
  br i1 %cmp27, label %land.lhs.true, label %if.end, !mymd !77

land.lhs.true:                                    ; preds = %while.end22
  br i1 false, label %if.then, label %if.end, !mymd !78

if.then:                                          ; preds = %land.lhs.true
  call void @warning(ptr noundef @.str.196), !mymd !79
  br label %if.end, !mymd !80

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end22
  ret void, !mymd !81
}

; Function Attrs: noinline nounwind uwtable
declare dso_local void @warning(ptr noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"7877"}
!7 = !{!"7878"}
!8 = !{!"7879"}
!9 = !{!"7880"}
!10 = !{!"7881"}
!11 = !{!"7882"}
!12 = !{!"7883"}
!13 = !{!"7884"}
!14 = !{!"7885"}
!15 = !{!"7886"}
!16 = !{!"7887"}
!17 = !{!"7888"}
!18 = !{!"7889"}
!19 = !{!"7890"}
!20 = !{!"7891"}
!21 = !{!"7892"}
!22 = !{!"7893"}
!23 = !{!"7894"}
!24 = !{!"7895"}
!25 = !{!"7896"}
!26 = !{!"7897"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"7898"}
!30 = !{!"7899"}
!31 = !{!"7900"}
!32 = !{!"7901"}
!33 = !{!"7902"}
!34 = !{!"7903"}
!35 = !{!"7904"}
!36 = !{!"7905"}
!37 = !{!"7906"}
!38 = !{!"7907"}
!39 = !{!"7908"}
!40 = !{!"7909"}
!41 = !{!"7910"}
!42 = !{!"7911"}
!43 = !{!"7912"}
!44 = !{!"7913"}
!45 = distinct !{!45, !28}
!46 = !{!"7914"}
!47 = !{!"7915"}
!48 = !{!"7916"}
!49 = !{!"7917"}
!50 = !{!"7918"}
!51 = !{!"7919"}
!52 = !{!"7920"}
!53 = !{!"7921"}
!54 = !{!"7922"}
!55 = !{!"7923"}
!56 = !{!"7924"}
!57 = !{!"7925"}
!58 = !{!"7926"}
!59 = !{!"7927"}
!60 = !{!"7928"}
!61 = !{!"7929"}
!62 = distinct !{!62, !28}
!63 = !{!"7930"}
!64 = !{!"7931"}
!65 = !{!"7932"}
!66 = !{!"7933"}
!67 = !{!"7934"}
!68 = !{!"7935"}
!69 = !{!"7936"}
!70 = !{!"7937"}
!71 = !{!"7938"}
!72 = !{!"7939"}
!73 = !{!"7940"}
!74 = !{!"7941"}
!75 = !{!"7942"}
!76 = !{!"7943"}
!77 = !{!"7944"}
!78 = !{!"7945"}
!79 = !{!"7946"}
!80 = !{!"7947"}
!81 = !{!"7948"}
