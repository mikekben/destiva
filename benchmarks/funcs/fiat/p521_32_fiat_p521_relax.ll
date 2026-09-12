; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 5
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 7
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 8
  %17 = load i32, ptr %arrayidx8, align 4
  store i32 %17, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 9
  %19 = load i32, ptr %arrayidx9, align 4
  store i32 %19, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 10
  %21 = load i32, ptr %arrayidx10, align 4
  store i32 %21, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %22, i64 11
  %23 = load i32, ptr %arrayidx11, align 4
  store i32 %23, ptr %x12, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %24, i64 12
  %25 = load i32, ptr %arrayidx12, align 4
  store i32 %25, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %26, i64 13
  %27 = load i32, ptr %arrayidx13, align 4
  store i32 %27, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %28, i64 14
  %29 = load i32, ptr %arrayidx14, align 4
  store i32 %29, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %30, i64 15
  %31 = load i32, ptr %arrayidx15, align 4
  store i32 %31, ptr %x16, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %32, i64 16
  %33 = load i32, ptr %arrayidx16, align 4
  store i32 %33, ptr %x17, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %34, i64 17
  %35 = load i32, ptr %arrayidx17, align 4
  store i32 %35, ptr %x18, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %36, i64 18
  %37 = load i32, ptr %arrayidx18, align 4
  store i32 %37, ptr %x19, align 4
  %38 = load i32, ptr %x1, align 4
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 0
  store i32 %38, ptr %arrayidx19, align 4
  %40 = load i32, ptr %x2, align 4
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %41, i64 1
  store i32 %40, ptr %arrayidx20, align 4
  %42 = load i32, ptr %x3, align 4
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %43, i64 2
  store i32 %42, ptr %arrayidx21, align 4
  %44 = load i32, ptr %x4, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %45, i64 3
  store i32 %44, ptr %arrayidx22, align 4
  %46 = load i32, ptr %x5, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %47, i64 4
  store i32 %46, ptr %arrayidx23, align 4
  %48 = load i32, ptr %x6, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %49, i64 5
  store i32 %48, ptr %arrayidx24, align 4
  %50 = load i32, ptr %x7, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %51, i64 6
  store i32 %50, ptr %arrayidx25, align 4
  %52 = load i32, ptr %x8, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %53, i64 7
  store i32 %52, ptr %arrayidx26, align 4
  %54 = load i32, ptr %x9, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %55, i64 8
  store i32 %54, ptr %arrayidx27, align 4
  %56 = load i32, ptr %x10, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %57, i64 9
  store i32 %56, ptr %arrayidx28, align 4
  %58 = load i32, ptr %x11, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %59, i64 10
  store i32 %58, ptr %arrayidx29, align 4
  %60 = load i32, ptr %x12, align 4
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %61, i64 11
  store i32 %60, ptr %arrayidx30, align 4
  %62 = load i32, ptr %x13, align 4
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %63, i64 12
  store i32 %62, ptr %arrayidx31, align 4
  %64 = load i32, ptr %x14, align 4
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %65, i64 13
  store i32 %64, ptr %arrayidx32, align 4
  %66 = load i32, ptr %x15, align 4
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %67, i64 14
  store i32 %66, ptr %arrayidx33, align 4
  %68 = load i32, ptr %x16, align 4
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %69, i64 15
  store i32 %68, ptr %arrayidx34, align 4
  %70 = load i32, ptr %x17, align 4
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %71, i64 16
  store i32 %70, ptr %arrayidx35, align 4
  %72 = load i32, ptr %x18, align 4
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %73, i64 17
  store i32 %72, ptr %arrayidx36, align 4
  %74 = load i32, ptr %x19, align 4
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %75, i64 18
  store i32 %74, ptr %arrayidx37, align 4
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
