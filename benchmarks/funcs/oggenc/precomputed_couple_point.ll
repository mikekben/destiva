; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLOOR1_fromdB_INV_LOOKUP = external hidden global [256 x float], align 16
@hypot_lookup = external hidden global [32 x float], align 16

; Function Attrs: nounwind uwtable
define hidden void @precomputed_couple_point(float noundef %premag, i32 noundef %floorA, i32 noundef %floorB, ptr noundef %mag, ptr noundef %ang) #0 {
entry:
  %premag.addr = alloca float, align 4
  %floorA.addr = alloca i32, align 4
  %floorB.addr = alloca i32, align 4
  %mag.addr = alloca ptr, align 8
  %ang.addr = alloca ptr, align 8
  %test = alloca i32, align 4
  %offset = alloca i32, align 4
  %floormag = alloca float, align 4
  store float %premag, ptr %premag.addr, align 4
  store i32 %floorA, ptr %floorA.addr, align 4
  store i32 %floorB, ptr %floorB.addr, align 4
  store ptr %mag, ptr %mag.addr, align 8
  store ptr %ang, ptr %ang.addr, align 8
  %0 = load i32, ptr %floorA.addr, align 4
  %1 = load i32, ptr %floorB.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %test, align 4
  %2 = load i32, ptr %floorA.addr, align 4
  %3 = load i32, ptr %floorB.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %4 = call i32 @llvm.abs.i32(i32 %sub1, i1 true)
  %sub2 = sub nsw i32 31, %4
  store i32 %sub2, ptr %offset, align 4
  %5 = load i32, ptr %offset, align 4
  %cmp3 = icmp slt i32 %5, 0
  %conv4 = zext i1 %cmp3 to i32
  %sub5 = sub nsw i32 %conv4, 1
  %6 = load i32, ptr %offset, align 4
  %and = and i32 %sub5, %6
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [32 x float], ptr @hypot_lookup, i64 0, i64 %idxprom
  %7 = load float, ptr %arrayidx, align 4
  %add = fadd float %7, 1.000000e+00
  store float %add, ptr %floormag, align 4
  %8 = load i32, ptr %floorB.addr, align 4
  %9 = load i32, ptr %test, align 4
  %and6 = and i32 %8, %9
  %10 = load i32, ptr %floorA.addr, align 4
  %11 = load i32, ptr %test, align 4
  %not = xor i32 %11, -1
  %and7 = and i32 %10, %not
  %or = or i32 %and6, %and7
  %idxprom8 = sext i32 %or to i64
  %arrayidx9 = getelementptr inbounds [256 x float], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 0, i64 %idxprom8
  %12 = load float, ptr %arrayidx9, align 4
  %13 = load float, ptr %floormag, align 4
  %mul = fmul float %13, %12
  store float %mul, ptr %floormag, align 4
  %14 = load float, ptr %premag.addr, align 4
  %15 = load float, ptr %floormag, align 4
  %mul10 = fmul float %14, %15
  %16 = load ptr, ptr %mag.addr, align 8
  store float %mul10, ptr %16, align 4
  %17 = load ptr, ptr %ang.addr, align 8
  store float 0.000000e+00, ptr %17, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
