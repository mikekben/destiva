; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpmatch(ptr noundef nonnull %response) #0 {
entry:
  %response.addr = alloca ptr, align 8, !mymd !6
  store ptr %response, ptr %response.addr, align 8, !mymd !7
  %0 = load ptr, ptr %response.addr, align 8, !mymd !8
  %1 = load i8, ptr %0, align 1, !mymd !9
  %conv = sext i8 %1 to i32, !mymd !10
  %cmp = icmp eq i32 %conv, 121, !mymd !11
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !mymd !12

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %response.addr, align 8, !mymd !13
  %3 = load i8, ptr %2, align 1, !mymd !14
  %conv2 = sext i8 %3 to i32, !mymd !15
  %cmp3 = icmp eq i32 %conv2, 89, !mymd !16
  br i1 %cmp3, label %cond.true, label %cond.false, !mymd !17

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end, !mymd !18

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load ptr, ptr %response.addr, align 8, !mymd !19
  %5 = load i8, ptr %4, align 1, !mymd !20
  %conv5 = sext i8 %5 to i32, !mymd !21
  %cmp6 = icmp eq i32 %conv5, 110, !mymd !22
  br i1 %cmp6, label %lor.end, label %lor.rhs, !mymd !23

lor.rhs:                                          ; preds = %cond.false
  %6 = load ptr, ptr %response.addr, align 8, !mymd !24
  %7 = load i8, ptr %6, align 1, !mymd !25
  %conv8 = sext i8 %7 to i32, !mymd !26
  %cmp9 = icmp eq i32 %conv8, 78, !mymd !27
  br label %lor.end, !mymd !28

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %8 = phi i1 [ true, %cond.false ], [ %cmp9, %lor.rhs ], !mymd !29
  %9 = zext i1 %8 to i64, !mymd !30
  %cond = select i1 %8, i32 0, i32 -1, !mymd !31
  br label %cond.end, !mymd !32

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond11 = phi i32 [ 1, %cond.true ], [ %cond, %lor.end ], !mymd !33
  ret i32 %cond11, !mymd !34
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
!6 = !{!"10660"}
!7 = !{!"10661"}
!8 = !{!"10662"}
!9 = !{!"10663"}
!10 = !{!"10664"}
!11 = !{!"10665"}
!12 = !{!"10666"}
!13 = !{!"10667"}
!14 = !{!"10668"}
!15 = !{!"10669"}
!16 = !{!"10670"}
!17 = !{!"10671"}
!18 = !{!"10672"}
!19 = !{!"10673"}
!20 = !{!"10674"}
!21 = !{!"10675"}
!22 = !{!"10676"}
!23 = !{!"10677"}
!24 = !{!"10678"}
!25 = !{!"10679"}
!26 = !{!"10680"}
!27 = !{!"10681"}
!28 = !{!"10682"}
!29 = !{!"10683"}
!30 = !{!"10684"}
!31 = !{!"10685"}
!32 = !{!"10686"}
!33 = !{!"10687"}
!34 = !{!"10688"}
