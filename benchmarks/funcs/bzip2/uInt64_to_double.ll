; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UInt64 = type { [8 x i8] }

; Function Attrs: nounwind uwtable
define hidden double @uInt64_to_double(ptr noundef %n) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %base = alloca double, align 8
  %sum = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8
  store double 1.000000e+00, ptr %base, align 8
  store double 0.000000e+00, ptr %sum, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, ptr %base, align 8
  %2 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds nuw %struct.UInt64, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = uitofp i8 %4 to double
  %5 = load double, ptr %sum, align 8
  %6 = call double @llvm.fmuladd.f64(double %1, double %conv, double %5)
  store double %6, ptr %sum, align 8
  %7 = load double, ptr %base, align 8
  %mul = fmul double %7, 2.560000e+02
  store double %mul, ptr %base, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load double, ptr %sum, align 8
  ret double %9
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
