; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVSQ_LOOKUP = external hidden global [33 x float], align 16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_ftoi(double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define dso_local float @vorbis_invsqlook(float noundef %a) #1 {
entry:
  %a.addr = alloca float, align 4
  %d = alloca double, align 8
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %1 = call float @llvm.fmuladd.f32(float %0, float 6.400000e+01, float -3.200000e+01)
  %conv = fpext float %1 to double
  store double %conv, ptr %d, align 8
  %2 = load double, ptr %d, align 8
  %sub = fsub double %2, 5.000000e-01
  %call = call i32 @vorbis_ftoi(double noundef %sub)
  store i32 %call, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [33 x float], ptr @INVSQ_LOOKUP, i64 0, i64 %idxprom
  %4 = load float, ptr %arrayidx, align 4
  %conv1 = fpext float %4 to double
  %5 = load double, ptr %d, align 8
  %6 = load i32, ptr %i, align 4
  %conv2 = sitofp i32 %6 to double
  %sub3 = fsub double %5, %conv2
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 %7, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [33 x float], ptr @INVSQ_LOOKUP, i64 0, i64 %idxprom4
  %8 = load float, ptr %arrayidx5, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [33 x float], ptr @INVSQ_LOOKUP, i64 0, i64 %idxprom6
  %10 = load float, ptr %arrayidx7, align 4
  %sub8 = fsub float %8, %10
  %conv9 = fpext float %sub8 to double
  %11 = call double @llvm.fmuladd.f64(double %sub3, double %conv9, double %conv1)
  %conv10 = fptrunc double %11 to float
  ret float %conv10
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
