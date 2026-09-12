; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
  %x20 = alloca i32, align 4
  %x21 = alloca i32, align 4
  %x22 = alloca i32, align 4
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
  %shr2 = lshr i32 %5, 25
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
  %shr8 = lshr i32 %11, 25
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %shr8, %13
  store i32 %add10, ptr %x5, align 4
  %14 = load i32, ptr %x5, align 4
  %shr11 = lshr i32 %14, 26
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %shr11, %16
  store i32 %add13, ptr %x6, align 4
  %17 = load i32, ptr %x6, align 4
  %shr14 = lshr i32 %17, 25
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %shr14, %19
  store i32 %add16, ptr %x7, align 4
  %20 = load i32, ptr %x7, align 4
  %shr17 = lshr i32 %20, 26
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %shr17, %22
  store i32 %add19, ptr %x8, align 4
  %23 = load i32, ptr %x8, align 4
  %shr20 = lshr i32 %23, 25
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %shr20, %25
  store i32 %add22, ptr %x9, align 4
  %26 = load i32, ptr %x9, align 4
  %shr23 = lshr i32 %26, 26
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %27, i64 9
  %28 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %shr23, %28
  store i32 %add25, ptr %x10, align 4
  %29 = load i32, ptr %x1, align 4
  %and = and i32 %29, 67108863
  %30 = load i32, ptr %x10, align 4
  %shr26 = lshr i32 %30, 25
  %mul = mul i32 %shr26, 19
  %add27 = add i32 %and, %mul
  store i32 %add27, ptr %x11, align 4
  %31 = load i32, ptr %x11, align 4
  %shr28 = lshr i32 %31, 26
  %conv = trunc i32 %shr28 to i8
  %conv29 = zext i8 %conv to i32
  %32 = load i32, ptr %x2, align 4
  %and30 = and i32 %32, 33554431
  %add31 = add i32 %conv29, %and30
  store i32 %add31, ptr %x12, align 4
  %33 = load i32, ptr %x11, align 4
  %and32 = and i32 %33, 67108863
  store i32 %and32, ptr %x13, align 4
  %34 = load i32, ptr %x12, align 4
  %and33 = and i32 %34, 33554431
  store i32 %and33, ptr %x14, align 4
  %35 = load i32, ptr %x12, align 4
  %shr34 = lshr i32 %35, 25
  %conv35 = trunc i32 %shr34 to i8
  %conv36 = zext i8 %conv35 to i32
  %36 = load i32, ptr %x3, align 4
  %and37 = and i32 %36, 67108863
  %add38 = add i32 %conv36, %and37
  store i32 %add38, ptr %x15, align 4
  %37 = load i32, ptr %x4, align 4
  %and39 = and i32 %37, 33554431
  store i32 %and39, ptr %x16, align 4
  %38 = load i32, ptr %x5, align 4
  %and40 = and i32 %38, 67108863
  store i32 %and40, ptr %x17, align 4
  %39 = load i32, ptr %x6, align 4
  %and41 = and i32 %39, 33554431
  store i32 %and41, ptr %x18, align 4
  %40 = load i32, ptr %x7, align 4
  %and42 = and i32 %40, 67108863
  store i32 %and42, ptr %x19, align 4
  %41 = load i32, ptr %x8, align 4
  %and43 = and i32 %41, 33554431
  store i32 %and43, ptr %x20, align 4
  %42 = load i32, ptr %x9, align 4
  %and44 = and i32 %42, 67108863
  store i32 %and44, ptr %x21, align 4
  %43 = load i32, ptr %x10, align 4
  %and45 = and i32 %43, 33554431
  store i32 %and45, ptr %x22, align 4
  %44 = load i32, ptr %x13, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %45, i64 0
  store i32 %44, ptr %arrayidx46, align 4
  %46 = load i32, ptr %x14, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %47, i64 1
  store i32 %46, ptr %arrayidx47, align 4
  %48 = load i32, ptr %x15, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %49, i64 2
  store i32 %48, ptr %arrayidx48, align 4
  %50 = load i32, ptr %x16, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %51, i64 3
  store i32 %50, ptr %arrayidx49, align 4
  %52 = load i32, ptr %x17, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %53, i64 4
  store i32 %52, ptr %arrayidx50, align 4
  %54 = load i32, ptr %x18, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %55, i64 5
  store i32 %54, ptr %arrayidx51, align 4
  %56 = load i32, ptr %x19, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %57, i64 6
  store i32 %56, ptr %arrayidx52, align 4
  %58 = load i32, ptr %x20, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %59, i64 7
  store i32 %58, ptr %arrayidx53, align 4
  %60 = load i32, ptr %x21, align 4
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %61, i64 8
  store i32 %60, ptr %arrayidx54, align 4
  %62 = load i32, ptr %x22, align 4
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %63, i64 9
  store i32 %62, ptr %arrayidx55, align 4
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
