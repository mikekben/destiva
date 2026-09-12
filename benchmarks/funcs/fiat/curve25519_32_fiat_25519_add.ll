; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  %add = add i32 %1, %3
  store i32 %add, ptr %x1, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %5, %7
  store i32 %add4, ptr %x2, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 2
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %9, %11
  store i32 %add7, ptr %x3, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %12, i64 3
  %13 = load i32, ptr %arrayidx8, align 4
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 3
  %15 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %13, %15
  store i32 %add10, ptr %x4, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %16, i64 4
  %17 = load i32, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %18, i64 4
  %19 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %17, %19
  store i32 %add13, ptr %x5, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx14, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %22, i64 5
  %23 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %21, %23
  store i32 %add16, ptr %x6, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %24, i64 6
  %25 = load i32, ptr %arrayidx17, align 4
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %26, i64 6
  %27 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %25, %27
  store i32 %add19, ptr %x7, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %28, i64 7
  %29 = load i32, ptr %arrayidx20, align 4
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %30, i64 7
  %31 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %29, %31
  store i32 %add22, ptr %x8, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %32, i64 8
  %33 = load i32, ptr %arrayidx23, align 4
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %34, i64 8
  %35 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %33, %35
  store i32 %add25, ptr %x9, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %36, i64 9
  %37 = load i32, ptr %arrayidx26, align 4
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %38, i64 9
  %39 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %37, %39
  store i32 %add28, ptr %x10, align 4
  %40 = load i32, ptr %x1, align 4
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 %40, ptr %arrayidx29, align 4
  %42 = load i32, ptr %x2, align 4
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %43, i64 1
  store i32 %42, ptr %arrayidx30, align 4
  %44 = load i32, ptr %x3, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %44, ptr %arrayidx31, align 4
  %46 = load i32, ptr %x4, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %47, i64 3
  store i32 %46, ptr %arrayidx32, align 4
  %48 = load i32, ptr %x5, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %49, i64 4
  store i32 %48, ptr %arrayidx33, align 4
  %50 = load i32, ptr %x6, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %51, i64 5
  store i32 %50, ptr %arrayidx34, align 4
  %52 = load i32, ptr %x7, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %53, i64 6
  store i32 %52, ptr %arrayidx35, align 4
  %54 = load i32, ptr %x8, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %55, i64 7
  store i32 %54, ptr %arrayidx36, align 4
  %56 = load i32, ptr %x9, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %57, i64 8
  store i32 %56, ptr %arrayidx37, align 4
  %58 = load i32, ptr %x10, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %59, i64 9
  store i32 %58, ptr %arrayidx38, align 4
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
