; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bi_reverse(i32 noundef %code, i32 noundef %len) #0 {
entry:
  %code.addr = alloca i32, align 4, !mymd !6
  %len.addr = alloca i32, align 4, !mymd !7
  %res = alloca i32, align 4, !mymd !8
  store i32 %code, ptr %code.addr, align 4, !mymd !9
  store i32 %len, ptr %len.addr, align 4, !mymd !10
  store i32 0, ptr %res, align 4, !mymd !11
  br label %do.body, !mymd !12

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %code.addr, align 4, !mymd !13
  %and = and i32 %0, 1, !mymd !14
  %1 = load i32, ptr %res, align 4, !mymd !15
  %or = or i32 %1, %and, !mymd !16
  store i32 %or, ptr %res, align 4, !mymd !17
  %2 = load i32, ptr %code.addr, align 4, !mymd !18
  %shr = lshr i32 %2, 1, !mymd !19
  store i32 %shr, ptr %code.addr, align 4, !mymd !20
  %3 = load i32, ptr %res, align 4, !mymd !21
  %shl = shl i32 %3, 1, !mymd !22
  store i32 %shl, ptr %res, align 4, !mymd !23
  br label %do.cond, !mymd !24

do.cond:                                          ; preds = %do.body
  %4 = load i32, ptr %len.addr, align 4, !mymd !25
  %dec = add nsw i32 %4, -1, !mymd !26
  store i32 %dec, ptr %len.addr, align 4, !mymd !27
  %cmp = icmp sgt i32 %dec, 0, !mymd !28
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !29, !mymd !31

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %res, align 4, !mymd !32
  %shr1 = lshr i32 %5, 1, !mymd !33
  ret i32 %shr1, !mymd !34
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
!6 = !{!"171"}
!7 = !{!"172"}
!8 = !{!"173"}
!9 = !{!"174"}
!10 = !{!"175"}
!11 = !{!"176"}
!12 = !{!"177"}
!13 = !{!"178"}
!14 = !{!"179"}
!15 = !{!"180"}
!16 = !{!"181"}
!17 = !{!"182"}
!18 = !{!"183"}
!19 = !{!"184"}
!20 = !{!"185"}
!21 = !{!"186"}
!22 = !{!"187"}
!23 = !{!"188"}
!24 = !{!"189"}
!25 = !{!"190"}
!26 = !{!"191"}
!27 = !{!"192"}
!28 = !{!"193"}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"194"}
!32 = !{!"195"}
!33 = !{!"196"}
!34 = !{!"197"}
