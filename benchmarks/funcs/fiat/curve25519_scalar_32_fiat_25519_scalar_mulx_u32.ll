; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_scalar_mulx_u32(ptr noundef %out1, ptr noundef %out2, i32 noundef %arg1, i32 noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %x1 = alloca i64, align 8
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i32 %arg1, ptr %arg1.addr, align 4
  store i32 %arg2, ptr %arg2.addr, align 4
  %0 = load i32, ptr %arg1.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i32, ptr %arg2.addr, align 4
  %conv1 = zext i32 %1 to i64
  %mul = mul i64 %conv, %conv1
  store i64 %mul, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %and = and i64 %2, 4294967295
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, ptr %x2, align 4
  %3 = load i64, ptr %x1, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, ptr %x3, align 4
  %4 = load i32, ptr %x2, align 4
  %5 = load ptr, ptr %out1.addr, align 8
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %x3, align 4
  %7 = load ptr, ptr %out2.addr, align 8
  store i32 %6, ptr %7, align 4
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
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
