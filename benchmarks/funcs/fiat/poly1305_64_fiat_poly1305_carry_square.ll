; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i128, align 16
  %x6 = alloca i128, align 16
  %x7 = alloca i128, align 16
  %x8 = alloca i128, align 16
  %x9 = alloca i128, align 16
  %x10 = alloca i128, align 16
  %x11 = alloca i128, align 16
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i128, align 16
  %x15 = alloca i128, align 16
  %x16 = alloca i128, align 16
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i128, align 16
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 2
  %1 = load i64, ptr %arrayidx, align 8
  %mul = mul i64 %1, 5
  store i64 %mul, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %mul1 = mul i64 %2, 2
  store i64 %mul1, ptr %x2, align 8
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %3, i64 2
  %4 = load i64, ptr %arrayidx2, align 8
  %mul3 = mul i64 %4, 2
  store i64 %mul3, ptr %x3, align 8
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx4, align 8
  %mul5 = mul i64 %6, 2
  store i64 %mul5, ptr %x4, align 8
  %7 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %7, i64 2
  %8 = load i64, ptr %arrayidx6, align 8
  %conv = zext i64 %8 to i128
  %9 = load i64, ptr %x1, align 8
  %conv7 = zext i64 %9 to i128
  %mul8 = mul i128 %conv, %conv7
  store i128 %mul8, ptr %x5, align 16
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 1
  %11 = load i64, ptr %arrayidx9, align 8
  %conv10 = zext i64 %11 to i128
  %12 = load i64, ptr %x2, align 8
  %mul11 = mul i64 %12, 2
  %conv12 = zext i64 %mul11 to i128
  %mul13 = mul i128 %conv10, %conv12
  store i128 %mul13, ptr %x6, align 16
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %13, i64 1
  %14 = load i64, ptr %arrayidx14, align 8
  %conv15 = zext i64 %14 to i128
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx16, align 8
  %mul17 = mul i64 %16, 2
  %conv18 = zext i64 %mul17 to i128
  %mul19 = mul i128 %conv15, %conv18
  store i128 %mul19, ptr %x7, align 16
  %17 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %17, i64 0
  %18 = load i64, ptr %arrayidx20, align 8
  %conv21 = zext i64 %18 to i128
  %19 = load i64, ptr %x3, align 8
  %conv22 = zext i64 %19 to i128
  %mul23 = mul i128 %conv21, %conv22
  store i128 %mul23, ptr %x8, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %20, i64 0
  %21 = load i64, ptr %arrayidx24, align 8
  %conv25 = zext i64 %21 to i128
  %22 = load i64, ptr %x4, align 8
  %conv26 = zext i64 %22 to i128
  %mul27 = mul i128 %conv25, %conv26
  store i128 %mul27, ptr %x9, align 16
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %23, i64 0
  %24 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %24 to i128
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %25, i64 0
  %26 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %26 to i128
  %mul32 = mul i128 %conv29, %conv31
  store i128 %mul32, ptr %x10, align 16
  %27 = load i128, ptr %x10, align 16
  %28 = load i128, ptr %x6, align 16
  %add = add i128 %27, %28
  store i128 %add, ptr %x11, align 16
  %29 = load i128, ptr %x11, align 16
  %shr = lshr i128 %29, 44
  %conv33 = trunc i128 %shr to i64
  store i64 %conv33, ptr %x12, align 8
  %30 = load i128, ptr %x11, align 16
  %and = and i128 %30, 17592186044415
  %conv34 = trunc i128 %and to i64
  store i64 %conv34, ptr %x13, align 8
  %31 = load i128, ptr %x8, align 16
  %32 = load i128, ptr %x7, align 16
  %add35 = add i128 %31, %32
  store i128 %add35, ptr %x14, align 16
  %33 = load i128, ptr %x9, align 16
  %34 = load i128, ptr %x5, align 16
  %add36 = add i128 %33, %34
  store i128 %add36, ptr %x15, align 16
  %35 = load i64, ptr %x12, align 8
  %conv37 = zext i64 %35 to i128
  %36 = load i128, ptr %x15, align 16
  %add38 = add i128 %conv37, %36
  store i128 %add38, ptr %x16, align 16
  %37 = load i128, ptr %x16, align 16
  %shr39 = lshr i128 %37, 43
  %conv40 = trunc i128 %shr39 to i64
  store i64 %conv40, ptr %x17, align 8
  %38 = load i128, ptr %x16, align 16
  %and41 = and i128 %38, 8796093022207
  %conv42 = trunc i128 %and41 to i64
  store i64 %conv42, ptr %x18, align 8
  %39 = load i64, ptr %x17, align 8
  %conv43 = zext i64 %39 to i128
  %40 = load i128, ptr %x14, align 16
  %add44 = add i128 %conv43, %40
  store i128 %add44, ptr %x19, align 16
  %41 = load i128, ptr %x19, align 16
  %shr45 = lshr i128 %41, 43
  %conv46 = trunc i128 %shr45 to i64
  store i64 %conv46, ptr %x20, align 8
  %42 = load i128, ptr %x19, align 16
  %and47 = and i128 %42, 8796093022207
  %conv48 = trunc i128 %and47 to i64
  store i64 %conv48, ptr %x21, align 8
  %43 = load i64, ptr %x20, align 8
  %mul49 = mul i64 %43, 5
  store i64 %mul49, ptr %x22, align 8
  %44 = load i64, ptr %x13, align 8
  %45 = load i64, ptr %x22, align 8
  %add50 = add i64 %44, %45
  store i64 %add50, ptr %x23, align 8
  %46 = load i64, ptr %x23, align 8
  %shr51 = lshr i64 %46, 44
  store i64 %shr51, ptr %x24, align 8
  %47 = load i64, ptr %x23, align 8
  %and52 = and i64 %47, 17592186044415
  store i64 %and52, ptr %x25, align 8
  %48 = load i64, ptr %x24, align 8
  %49 = load i64, ptr %x18, align 8
  %add53 = add i64 %48, %49
  store i64 %add53, ptr %x26, align 8
  %50 = load i64, ptr %x26, align 8
  %shr54 = lshr i64 %50, 43
  %conv55 = trunc i64 %shr54 to i8
  store i8 %conv55, ptr %x27, align 1
  %51 = load i64, ptr %x26, align 8
  %and56 = and i64 %51, 8796093022207
  store i64 %and56, ptr %x28, align 8
  %52 = load i8, ptr %x27, align 1
  %conv57 = zext i8 %52 to i64
  %53 = load i64, ptr %x21, align 8
  %add58 = add i64 %conv57, %53
  store i64 %add58, ptr %x29, align 8
  %54 = load i64, ptr %x25, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %55, i64 0
  store i64 %54, ptr %arrayidx59, align 8
  %56 = load i64, ptr %x28, align 8
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 %56, ptr %arrayidx60, align 8
  %58 = load i64, ptr %x29, align 8
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %arrayidx61, align 8
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
