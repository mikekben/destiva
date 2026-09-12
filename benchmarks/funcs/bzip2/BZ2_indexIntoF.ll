; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_indexIntoF(i32 noundef %indx, ptr noundef %cftab) #0 {
entry:
  %indx.addr = alloca i32, align 4
  %cftab.addr = alloca ptr, align 8
  %nb = alloca i32, align 4
  %na = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %indx, ptr %indx.addr, align 4
  store ptr %cftab, ptr %cftab.addr, align 8
  store i32 0, ptr %nb, align 4
  store i32 256, ptr %na, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %nb, align 4
  %1 = load i32, ptr %na, align 4
  %add = add nsw i32 %0, %1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %mid, align 4
  %2 = load i32, ptr %indx.addr, align 4
  %3 = load ptr, ptr %cftab.addr, align 8
  %4 = load i32, ptr %mid, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sge i32 %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, ptr %mid, align 4
  store i32 %6, ptr %nb, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, ptr %mid, align 4
  store i32 %7, ptr %na, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, ptr %na, align 4
  %9 = load i32, ptr %nb, align 4
  %sub = sub nsw i32 %8, %9
  %cmp1 = icmp ne i32 %sub, 1
  br i1 %cmp1, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr %nb, align 4
  ret i32 %10
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
