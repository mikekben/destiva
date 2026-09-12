; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden float @unitnorm(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %ix = alloca ptr, align 8
  store float %x, ptr %x.addr, align 4
  store ptr %x.addr, ptr %ix, align 8
  %0 = load ptr, ptr %ix, align 8
  %1 = load i32, ptr %0, align 4
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 2147483648
  %or = or i64 %and, 1065353216
  %conv1 = trunc i64 %or to i32
  %2 = load ptr, ptr %ix, align 8
  store i32 %conv1, ptr %2, align 4
  %3 = load float, ptr %x.addr, align 4
  ret float %3
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
