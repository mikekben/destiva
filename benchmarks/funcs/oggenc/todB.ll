; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden float @todB(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %calc = alloca float, align 4
  %i = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  store ptr %0, ptr %i, align 8
  %1 = load ptr, ptr %i, align 8
  %2 = load i32, ptr %1, align 4
  %and = and i32 %2, 2147483647
  %conv = sitofp i32 %and to float
  store float %conv, ptr %calc, align 4
  %3 = load float, ptr %calc, align 4
  %mul = fmul float %3, 0x3EA8151820000000
  store float %mul, ptr %calc, align 4
  %4 = load float, ptr %calc, align 4
  %add = fadd float %4, 0xC087E22B60000000
  store float %add, ptr %calc, align 4
  %5 = load float, ptr %calc, align 4
  ret float %5
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
