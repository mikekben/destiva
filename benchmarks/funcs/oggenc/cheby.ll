; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @cheby(ptr noundef %g, i32 noundef %ord) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %ord.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8
  store i32 %ord, ptr %ord.addr, align 4
  %0 = load ptr, ptr %g.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 0
  %1 = load float, ptr %arrayidx, align 4
  %mul = fmul float %1, 5.000000e-01
  store float %mul, ptr %arrayidx, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %ord.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %ord.addr, align 4
  store i32 %4, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %i, align 4
  %cmp2 = icmp sge i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %g.addr, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %7, i64 %idxprom
  %9 = load float, ptr %arrayidx4, align 4
  %10 = load ptr, ptr %g.addr, align 8
  %11 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %11, 2
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds float, ptr %10, i64 %idxprom5
  %12 = load float, ptr %arrayidx6, align 4
  %sub7 = fsub float %12, %9
  store float %sub7, ptr %arrayidx6, align 4
  %13 = load ptr, ptr %g.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %13, i64 %idxprom8
  %15 = load float, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %g.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds float, ptr %16, i64 %idxprom10
  %18 = load float, ptr %arrayidx11, align 4
  %add = fadd float %18, %15
  store float %add, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %19 = load i32, ptr %j, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end13:                                        ; preds = %for.cond
  ret void
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
!8 = distinct !{!8, !7}
