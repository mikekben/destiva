; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  %shr = lshr i32 %2, 26
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  %add = add i32 %shr, %4
  store i32 %add, ptr %x2, align 4
  %5 = load i32, ptr %x2, align 4
  %shr2 = lshr i32 %5, 26
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %shr2, %7
  store i32 %add4, ptr %x3, align 4
  %8 = load i32, ptr %x3, align 4
  %shr5 = lshr i32 %8, 26
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %shr5, %10
  store i32 %add7, ptr %x4, align 4
  %11 = load i32, ptr %x4, align 4
  %shr8 = lshr i32 %11, 26
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %shr8, %13
  store i32 %add10, ptr %x5, align 4
  %14 = load i32, ptr %x1, align 4
  %and = and i32 %14, 67108863
  %15 = load i32, ptr %x5, align 4
  %shr11 = lshr i32 %15, 26
  %mul = mul i32 %shr11, 5
  %add12 = add i32 %and, %mul
  store i32 %add12, ptr %x6, align 4
  %16 = load i32, ptr %x6, align 4
  %shr13 = lshr i32 %16, 26
  %conv = trunc i32 %shr13 to i8
  %conv14 = zext i8 %conv to i32
  %17 = load i32, ptr %x2, align 4
  %and15 = and i32 %17, 67108863
  %add16 = add i32 %conv14, %and15
  store i32 %add16, ptr %x7, align 4
  %18 = load i32, ptr %x6, align 4
  %and17 = and i32 %18, 67108863
  store i32 %and17, ptr %x8, align 4
  %19 = load i32, ptr %x7, align 4
  %and18 = and i32 %19, 67108863
  store i32 %and18, ptr %x9, align 4
  %20 = load i32, ptr %x7, align 4
  %shr19 = lshr i32 %20, 26
  %conv20 = trunc i32 %shr19 to i8
  %conv21 = zext i8 %conv20 to i32
  %21 = load i32, ptr %x3, align 4
  %and22 = and i32 %21, 67108863
  %add23 = add i32 %conv21, %and22
  store i32 %add23, ptr %x10, align 4
  %22 = load i32, ptr %x4, align 4
  %and24 = and i32 %22, 67108863
  store i32 %and24, ptr %x11, align 4
  %23 = load i32, ptr %x5, align 4
  %and25 = and i32 %23, 67108863
  store i32 %and25, ptr %x12, align 4
  %24 = load i32, ptr %x8, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %25, i64 0
  store i32 %24, ptr %arrayidx26, align 4
  %26 = load i32, ptr %x9, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %26, ptr %arrayidx27, align 4
  %28 = load i32, ptr %x10, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %28, ptr %arrayidx28, align 4
  %30 = load i32, ptr %x11, align 4
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %31, i64 3
  store i32 %30, ptr %arrayidx29, align 4
  %32 = load i32, ptr %x12, align 4
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %33, i64 4
  store i32 %32, ptr %arrayidx30, align 4
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
