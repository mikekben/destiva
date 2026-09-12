; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden float @_dist(i32 noundef %el, ptr noundef %ref, ptr noundef %b, i32 noundef %step) #1 {
entry:
  %el.addr = alloca i32, align 4
  %ref.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %step.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %acc = alloca float, align 4
  %val = alloca float, align 4
  store i32 %el, ptr %el.addr, align 4
  store ptr %ref, ptr %ref.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %step, ptr %step.addr, align 4
  store float 0.000000e+00, ptr %acc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %el.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ref.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %idxprom
  %4 = load float, ptr %arrayidx, align 4
  %5 = load ptr, ptr %b.addr, align 8
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %step.addr, align 4
  %mul = mul nsw i32 %6, %7
  %idxprom1 = sext i32 %mul to i64
  %arrayidx2 = getelementptr inbounds float, ptr %5, i64 %idxprom1
  %8 = load float, ptr %arrayidx2, align 4
  %sub = fsub float %4, %8
  store float %sub, ptr %val, align 4
  %9 = load float, ptr %val, align 4
  %10 = load float, ptr %val, align 4
  %11 = load float, ptr %acc, align 4
  %12 = call float @llvm.fmuladd.f32(float %9, float %10, float %11)
  store float %12, ptr %acc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load float, ptr %acc, align 4
  ret float %14
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
