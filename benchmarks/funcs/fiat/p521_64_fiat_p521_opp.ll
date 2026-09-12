; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %sub = sub i64 576460752303423486, %1
  store i64 %sub, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %sub2 = sub i64 576460752303423486, %3
  store i64 %sub2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx3, align 8
  %sub4 = sub i64 576460752303423486, %5
  store i64 %sub4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx5, align 8
  %sub6 = sub i64 576460752303423486, %7
  store i64 %sub6, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx7, align 8
  %sub8 = sub i64 576460752303423486, %9
  store i64 %sub8, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx9, align 8
  %sub10 = sub i64 576460752303423486, %11
  store i64 %sub10, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx11, align 8
  %sub12 = sub i64 576460752303423486, %13
  store i64 %sub12, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %14, i64 7
  %15 = load i64, ptr %arrayidx13, align 8
  %sub14 = sub i64 576460752303423486, %15
  store i64 %sub14, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %16, i64 8
  %17 = load i64, ptr %arrayidx15, align 8
  %sub16 = sub i64 288230376151711742, %17
  store i64 %sub16, ptr %x9, align 8
  %18 = load i64, ptr %x1, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 %18, ptr %arrayidx17, align 8
  %20 = load i64, ptr %x2, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 1
  store i64 %20, ptr %arrayidx18, align 8
  %22 = load i64, ptr %x3, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 2
  store i64 %22, ptr %arrayidx19, align 8
  %24 = load i64, ptr %x4, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %25, i64 3
  store i64 %24, ptr %arrayidx20, align 8
  %26 = load i64, ptr %x5, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %27, i64 4
  store i64 %26, ptr %arrayidx21, align 8
  %28 = load i64, ptr %x6, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %29, i64 5
  store i64 %28, ptr %arrayidx22, align 8
  %30 = load i64, ptr %x7, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %31, i64 6
  store i64 %30, ptr %arrayidx23, align 8
  %32 = load i64, ptr %x8, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %33, i64 7
  store i64 %32, ptr %arrayidx24, align 8
  %34 = load i64, ptr %x9, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %35, i64 8
  store i64 %34, ptr %arrayidx25, align 8
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
