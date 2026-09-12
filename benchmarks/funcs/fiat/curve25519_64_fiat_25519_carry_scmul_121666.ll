; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_carry_scmul_121666(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i128, align 16
  %x3 = alloca i128, align 16
  %x4 = alloca i128, align 16
  %x5 = alloca i128, align 16
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i128, align 16
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i128, align 16
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i128, align 16
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i128, align 16
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 4
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %mul = mul i128 121666, %conv
  store i128 %mul, ptr %x1, align 16
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 3
  %3 = load i64, ptr %arrayidx1, align 8
  %conv2 = zext i64 %3 to i128
  %mul3 = mul i128 121666, %conv2
  store i128 %mul3, ptr %x2, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %mul6 = mul i128 121666, %conv5
  store i128 %mul6, ptr %x3, align 16
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx7, align 8
  %conv8 = zext i64 %7 to i128
  %mul9 = mul i128 121666, %conv8
  store i128 %mul9, ptr %x4, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 0
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %mul12 = mul i128 121666, %conv11
  store i128 %mul12, ptr %x5, align 16
  %10 = load i128, ptr %x5, align 16
  %shr = lshr i128 %10, 51
  %conv13 = trunc i128 %shr to i64
  store i64 %conv13, ptr %x6, align 8
  %11 = load i128, ptr %x5, align 16
  %and = and i128 %11, 2251799813685247
  %conv14 = trunc i128 %and to i64
  store i64 %conv14, ptr %x7, align 8
  %12 = load i64, ptr %x6, align 8
  %conv15 = zext i64 %12 to i128
  %13 = load i128, ptr %x4, align 16
  %add = add i128 %conv15, %13
  store i128 %add, ptr %x8, align 16
  %14 = load i128, ptr %x8, align 16
  %shr16 = lshr i128 %14, 51
  %conv17 = trunc i128 %shr16 to i64
  store i64 %conv17, ptr %x9, align 8
  %15 = load i128, ptr %x8, align 16
  %and18 = and i128 %15, 2251799813685247
  %conv19 = trunc i128 %and18 to i64
  store i64 %conv19, ptr %x10, align 8
  %16 = load i64, ptr %x9, align 8
  %conv20 = zext i64 %16 to i128
  %17 = load i128, ptr %x3, align 16
  %add21 = add i128 %conv20, %17
  store i128 %add21, ptr %x11, align 16
  %18 = load i128, ptr %x11, align 16
  %shr22 = lshr i128 %18, 51
  %conv23 = trunc i128 %shr22 to i64
  store i64 %conv23, ptr %x12, align 8
  %19 = load i128, ptr %x11, align 16
  %and24 = and i128 %19, 2251799813685247
  %conv25 = trunc i128 %and24 to i64
  store i64 %conv25, ptr %x13, align 8
  %20 = load i64, ptr %x12, align 8
  %conv26 = zext i64 %20 to i128
  %21 = load i128, ptr %x2, align 16
  %add27 = add i128 %conv26, %21
  store i128 %add27, ptr %x14, align 16
  %22 = load i128, ptr %x14, align 16
  %shr28 = lshr i128 %22, 51
  %conv29 = trunc i128 %shr28 to i64
  store i64 %conv29, ptr %x15, align 8
  %23 = load i128, ptr %x14, align 16
  %and30 = and i128 %23, 2251799813685247
  %conv31 = trunc i128 %and30 to i64
  store i64 %conv31, ptr %x16, align 8
  %24 = load i64, ptr %x15, align 8
  %conv32 = zext i64 %24 to i128
  %25 = load i128, ptr %x1, align 16
  %add33 = add i128 %conv32, %25
  store i128 %add33, ptr %x17, align 16
  %26 = load i128, ptr %x17, align 16
  %shr34 = lshr i128 %26, 51
  %conv35 = trunc i128 %shr34 to i64
  store i64 %conv35, ptr %x18, align 8
  %27 = load i128, ptr %x17, align 16
  %and36 = and i128 %27, 2251799813685247
  %conv37 = trunc i128 %and36 to i64
  store i64 %conv37, ptr %x19, align 8
  %28 = load i64, ptr %x18, align 8
  %mul38 = mul i64 %28, 19
  store i64 %mul38, ptr %x20, align 8
  %29 = load i64, ptr %x7, align 8
  %30 = load i64, ptr %x20, align 8
  %add39 = add i64 %29, %30
  store i64 %add39, ptr %x21, align 8
  %31 = load i64, ptr %x21, align 8
  %shr40 = lshr i64 %31, 51
  %conv41 = trunc i64 %shr40 to i8
  store i8 %conv41, ptr %x22, align 1
  %32 = load i64, ptr %x21, align 8
  %and42 = and i64 %32, 2251799813685247
  store i64 %and42, ptr %x23, align 8
  %33 = load i8, ptr %x22, align 1
  %conv43 = zext i8 %33 to i64
  %34 = load i64, ptr %x10, align 8
  %add44 = add i64 %conv43, %34
  store i64 %add44, ptr %x24, align 8
  %35 = load i64, ptr %x24, align 8
  %shr45 = lshr i64 %35, 51
  %conv46 = trunc i64 %shr45 to i8
  store i8 %conv46, ptr %x25, align 1
  %36 = load i64, ptr %x24, align 8
  %and47 = and i64 %36, 2251799813685247
  store i64 %and47, ptr %x26, align 8
  %37 = load i8, ptr %x25, align 1
  %conv48 = zext i8 %37 to i64
  %38 = load i64, ptr %x13, align 8
  %add49 = add i64 %conv48, %38
  store i64 %add49, ptr %x27, align 8
  %39 = load i64, ptr %x23, align 8
  %40 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %40, i64 0
  store i64 %39, ptr %arrayidx50, align 8
  %41 = load i64, ptr %x26, align 8
  %42 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 %41, ptr %arrayidx51, align 8
  %43 = load i64, ptr %x27, align 8
  %44 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %44, i64 2
  store i64 %43, ptr %arrayidx52, align 8
  %45 = load i64, ptr %x16, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %46, i64 3
  store i64 %45, ptr %arrayidx53, align 8
  %47 = load i64, ptr %x19, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %48, i64 4
  store i64 %47, ptr %arrayidx54, align 8
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
