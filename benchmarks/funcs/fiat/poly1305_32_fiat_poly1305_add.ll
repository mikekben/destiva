; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
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
  %20 = load i32, ptr %x1, align 4
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %21, i64 0
  store i32 %20, ptr %arrayidx14, align 4
  %22 = load i32, ptr %x2, align 4
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %arrayidx15, align 4
  %24 = load i32, ptr %x3, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %24, ptr %arrayidx16, align 4
  %26 = load i32, ptr %x4, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %26, ptr %arrayidx17, align 4
  %28 = load i32, ptr %x5, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %28, ptr %arrayidx18, align 4
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
