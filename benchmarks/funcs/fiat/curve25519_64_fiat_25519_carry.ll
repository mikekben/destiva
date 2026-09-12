; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %shr = lshr i64 %2, 51
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  %add = add i64 %shr, %4
  store i64 %add, ptr %x2, align 8
  %5 = load i64, ptr %x2, align 8
  %shr2 = lshr i64 %5, 51
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %shr2, %7
  store i64 %add4, ptr %x3, align 8
  %8 = load i64, ptr %x3, align 8
  %shr5 = lshr i64 %8, 51
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %shr5, %10
  store i64 %add7, ptr %x4, align 8
  %11 = load i64, ptr %x4, align 8
  %shr8 = lshr i64 %11, 51
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %shr8, %13
  store i64 %add10, ptr %x5, align 8
  %14 = load i64, ptr %x1, align 8
  %and = and i64 %14, 2251799813685247
  %15 = load i64, ptr %x5, align 8
  %shr11 = lshr i64 %15, 51
  %mul = mul i64 %shr11, 19
  %add12 = add i64 %and, %mul
  store i64 %add12, ptr %x6, align 8
  %16 = load i64, ptr %x6, align 8
  %shr13 = lshr i64 %16, 51
  %conv = trunc i64 %shr13 to i8
  %conv14 = zext i8 %conv to i64
  %17 = load i64, ptr %x2, align 8
  %and15 = and i64 %17, 2251799813685247
  %add16 = add i64 %conv14, %and15
  store i64 %add16, ptr %x7, align 8
  %18 = load i64, ptr %x6, align 8
  %and17 = and i64 %18, 2251799813685247
  store i64 %and17, ptr %x8, align 8
  %19 = load i64, ptr %x7, align 8
  %and18 = and i64 %19, 2251799813685247
  store i64 %and18, ptr %x9, align 8
  %20 = load i64, ptr %x7, align 8
  %shr19 = lshr i64 %20, 51
  %conv20 = trunc i64 %shr19 to i8
  %conv21 = zext i8 %conv20 to i64
  %21 = load i64, ptr %x3, align 8
  %and22 = and i64 %21, 2251799813685247
  %add23 = add i64 %conv21, %and22
  store i64 %add23, ptr %x10, align 8
  %22 = load i64, ptr %x4, align 8
  %and24 = and i64 %22, 2251799813685247
  store i64 %and24, ptr %x11, align 8
  %23 = load i64, ptr %x5, align 8
  %and25 = and i64 %23, 2251799813685247
  store i64 %and25, ptr %x12, align 8
  %24 = load i64, ptr %x8, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %25, i64 0
  store i64 %24, ptr %arrayidx26, align 8
  %26 = load i64, ptr %x9, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %27, i64 1
  store i64 %26, ptr %arrayidx27, align 8
  %28 = load i64, ptr %x10, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %29, i64 2
  store i64 %28, ptr %arrayidx28, align 8
  %30 = load i64, ptr %x11, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %31, i64 3
  store i64 %30, ptr %arrayidx29, align 8
  %32 = load i64, ptr %x12, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %33, i64 4
  store i64 %32, ptr %arrayidx30, align 8
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
