; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden double @I_zero(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %n = alloca i32, align 4
  %u = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  store i32 0, ptr %n, align 4
  store double 1.000000e+00, ptr %u, align 8
  store double 1.000000e+00, ptr %s, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %n, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, ptr %n, align 4
  %1 = load double, ptr %x.addr, align 8
  %2 = load i32, ptr %n, align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %1, %conv
  store double %div, ptr %t, align 8
  %3 = load double, ptr %t, align 8
  %4 = load double, ptr %t, align 8
  %mul = fmul double %3, %4
  %5 = load double, ptr %u, align 8
  %mul1 = fmul double %5, %mul
  store double %mul1, ptr %u, align 8
  %6 = load double, ptr %u, align 8
  %7 = load double, ptr %s, align 8
  %add2 = fadd double %7, %6
  store double %add2, ptr %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load double, ptr %u, align 8
  %9 = load double, ptr %s, align 8
  %mul3 = fmul double 0x3B92E3B40A0E9B4F, %9
  %cmp = fcmp ogt double %8, %mul3
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %10 = load double, ptr %s, align 8
  ret double %10
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
