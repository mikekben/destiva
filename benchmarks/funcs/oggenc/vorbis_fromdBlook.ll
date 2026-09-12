; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FROMdB_LOOKUP = external hidden global [35 x float], align 16
@FROMdB2_LOOKUP = external hidden global [32 x float], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_ftoi(double noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind uwtable
define dso_local float @vorbis_fromdBlook(float noundef %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %1 = call float @llvm.fmuladd.f32(float %0, float -8.000000e+00, float -5.000000e-01)
  %conv = fpext float %1 to double
  %call = call i32 @vorbis_ftoi(double noundef %conv)
  store i32 %call, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end8

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp sge i32 %3, 1120
  br i1 %cmp2, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.false
  br label %cond.end

cond.false5:                                      ; preds = %cond.false
  %4 = load i32, ptr %i, align 4
  %shr = ashr i32 %4, 5
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [35 x float], ptr @FROMdB_LOOKUP, i64 0, i64 %idxprom
  %5 = load float, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %and = and i32 %6, 31
  %idxprom6 = sext i32 %and to i64
  %arrayidx7 = getelementptr inbounds [32 x float], ptr @FROMdB2_LOOKUP, i64 0, i64 %idxprom6
  %7 = load float, ptr %arrayidx7, align 4
  %mul = fmul float %5, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false5, %cond.true4
  %cond = phi float [ 0.000000e+00, %cond.true4 ], [ %mul, %cond.false5 ]
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi float [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  ret float %cond9
}

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
