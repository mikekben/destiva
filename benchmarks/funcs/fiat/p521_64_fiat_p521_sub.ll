; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %add = add i64 576460752303423486, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %sub = sub i64 %add, %3
  store i64 %sub, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %add3 = add i64 576460752303423486, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx4, align 8
  %sub5 = sub i64 %add3, %7
  store i64 %sub5, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 576460752303423486, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx8, align 8
  %sub9 = sub i64 %add7, %11
  store i64 %sub9, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 576460752303423486, %13
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %14, i64 3
  %15 = load i64, ptr %arrayidx12, align 8
  %sub13 = sub i64 %add11, %15
  store i64 %sub13, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 576460752303423486, %17
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx16, align 8
  %sub17 = sub i64 %add15, %19
  store i64 %sub17, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %20, i64 5
  %21 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 576460752303423486, %21
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %22, i64 5
  %23 = load i64, ptr %arrayidx20, align 8
  %sub21 = sub i64 %add19, %23
  store i64 %sub21, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %24, i64 6
  %25 = load i64, ptr %arrayidx22, align 8
  %add23 = add i64 576460752303423486, %25
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %26, i64 6
  %27 = load i64, ptr %arrayidx24, align 8
  %sub25 = sub i64 %add23, %27
  store i64 %sub25, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %28, i64 7
  %29 = load i64, ptr %arrayidx26, align 8
  %add27 = add i64 576460752303423486, %29
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %30, i64 7
  %31 = load i64, ptr %arrayidx28, align 8
  %sub29 = sub i64 %add27, %31
  store i64 %sub29, ptr %x8, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %32, i64 8
  %33 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 288230376151711742, %33
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %34, i64 8
  %35 = load i64, ptr %arrayidx32, align 8
  %sub33 = sub i64 %add31, %35
  store i64 %sub33, ptr %x9, align 8
  %36 = load i64, ptr %x1, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %37, i64 0
  store i64 %36, ptr %arrayidx34, align 8
  %38 = load i64, ptr %x2, align 8
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %39, i64 1
  store i64 %38, ptr %arrayidx35, align 8
  %40 = load i64, ptr %x3, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %41, i64 2
  store i64 %40, ptr %arrayidx36, align 8
  %42 = load i64, ptr %x4, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %43, i64 3
  store i64 %42, ptr %arrayidx37, align 8
  %44 = load i64, ptr %x5, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %45, i64 4
  store i64 %44, ptr %arrayidx38, align 8
  %46 = load i64, ptr %x6, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %47, i64 5
  store i64 %46, ptr %arrayidx39, align 8
  %48 = load i64, ptr %x7, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %49, i64 6
  store i64 %48, ptr %arrayidx40, align 8
  %50 = load i64, ptr %x8, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %51, i64 7
  store i64 %50, ptr %arrayidx41, align 8
  %52 = load i64, ptr %x9, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %53, i64 8
  store i64 %52, ptr %arrayidx42, align 8
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
