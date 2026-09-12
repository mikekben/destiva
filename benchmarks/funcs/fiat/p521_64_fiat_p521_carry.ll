; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %shr = lshr i64 %2, 58
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  %add = add i64 %shr, %4
  store i64 %add, ptr %x2, align 8
  %5 = load i64, ptr %x2, align 8
  %shr2 = lshr i64 %5, 58
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %shr2, %7
  store i64 %add4, ptr %x3, align 8
  %8 = load i64, ptr %x3, align 8
  %shr5 = lshr i64 %8, 58
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %shr5, %10
  store i64 %add7, ptr %x4, align 8
  %11 = load i64, ptr %x4, align 8
  %shr8 = lshr i64 %11, 58
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %shr8, %13
  store i64 %add10, ptr %x5, align 8
  %14 = load i64, ptr %x5, align 8
  %shr11 = lshr i64 %14, 58
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %shr11, %16
  store i64 %add13, ptr %x6, align 8
  %17 = load i64, ptr %x6, align 8
  %shr14 = lshr i64 %17, 58
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %shr14, %19
  store i64 %add16, ptr %x7, align 8
  %20 = load i64, ptr %x7, align 8
  %shr17 = lshr i64 %20, 58
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 7
  %22 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %shr17, %22
  store i64 %add19, ptr %x8, align 8
  %23 = load i64, ptr %x8, align 8
  %shr20 = lshr i64 %23, 58
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %24, i64 8
  %25 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %shr20, %25
  store i64 %add22, ptr %x9, align 8
  %26 = load i64, ptr %x1, align 8
  %and = and i64 %26, 288230376151711743
  %27 = load i64, ptr %x9, align 8
  %shr23 = lshr i64 %27, 57
  %add24 = add i64 %and, %shr23
  store i64 %add24, ptr %x10, align 8
  %28 = load i64, ptr %x10, align 8
  %shr25 = lshr i64 %28, 58
  %conv = trunc i64 %shr25 to i8
  %conv26 = zext i8 %conv to i64
  %29 = load i64, ptr %x2, align 8
  %and27 = and i64 %29, 288230376151711743
  %add28 = add i64 %conv26, %and27
  store i64 %add28, ptr %x11, align 8
  %30 = load i64, ptr %x10, align 8
  %and29 = and i64 %30, 288230376151711743
  store i64 %and29, ptr %x12, align 8
  %31 = load i64, ptr %x11, align 8
  %and30 = and i64 %31, 288230376151711743
  store i64 %and30, ptr %x13, align 8
  %32 = load i64, ptr %x11, align 8
  %shr31 = lshr i64 %32, 58
  %conv32 = trunc i64 %shr31 to i8
  %conv33 = zext i8 %conv32 to i64
  %33 = load i64, ptr %x3, align 8
  %and34 = and i64 %33, 288230376151711743
  %add35 = add i64 %conv33, %and34
  store i64 %add35, ptr %x14, align 8
  %34 = load i64, ptr %x4, align 8
  %and36 = and i64 %34, 288230376151711743
  store i64 %and36, ptr %x15, align 8
  %35 = load i64, ptr %x5, align 8
  %and37 = and i64 %35, 288230376151711743
  store i64 %and37, ptr %x16, align 8
  %36 = load i64, ptr %x6, align 8
  %and38 = and i64 %36, 288230376151711743
  store i64 %and38, ptr %x17, align 8
  %37 = load i64, ptr %x7, align 8
  %and39 = and i64 %37, 288230376151711743
  store i64 %and39, ptr %x18, align 8
  %38 = load i64, ptr %x8, align 8
  %and40 = and i64 %38, 288230376151711743
  store i64 %and40, ptr %x19, align 8
  %39 = load i64, ptr %x9, align 8
  %and41 = and i64 %39, 144115188075855871
  store i64 %and41, ptr %x20, align 8
  %40 = load i64, ptr %x12, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %40, ptr %arrayidx42, align 8
  %42 = load i64, ptr %x13, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %arrayidx43, align 8
  %44 = load i64, ptr %x14, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %arrayidx44, align 8
  %46 = load i64, ptr %x15, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 %46, ptr %arrayidx45, align 8
  %48 = load i64, ptr %x16, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %49, i64 4
  store i64 %48, ptr %arrayidx46, align 8
  %50 = load i64, ptr %x17, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %51, i64 5
  store i64 %50, ptr %arrayidx47, align 8
  %52 = load i64, ptr %x18, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %53, i64 6
  store i64 %52, ptr %arrayidx48, align 8
  %54 = load i64, ptr %x19, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %55, i64 7
  store i64 %54, ptr %arrayidx49, align 8
  %56 = load i64, ptr %x20, align 8
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %57, i64 8
  store i64 %56, ptr %arrayidx50, align 8
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
