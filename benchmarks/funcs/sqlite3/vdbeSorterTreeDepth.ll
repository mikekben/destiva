; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterTreeDepth(i32 noundef %nPMA) #0 {
entry:
  %nPMA.addr = alloca i32, align 4
  %nDepth = alloca i32, align 4
  %nDiv = alloca i64, align 8
  store i32 %nPMA, ptr %nPMA.addr, align 4
  store i32 0, ptr %nDepth, align 4
  store i64 16, ptr %nDiv, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %nDiv, align 8
  %1 = load i32, ptr %nPMA.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp slt i64 %0, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %nDiv, align 8
  %mul = mul nsw i64 %2, 16
  store i64 %mul, ptr %nDiv, align 8
  %3 = load i32, ptr %nDepth, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nDepth, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %nDepth, align 4
  ret i32 %4
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
