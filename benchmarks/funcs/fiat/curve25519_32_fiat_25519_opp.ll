; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 134217690, %1
  store i32 %sub, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  %sub2 = sub i32 67108862, %3
  store i32 %sub2, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx3, align 4
  %sub4 = sub i32 134217726, %5
  store i32 %sub4, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx5, align 4
  %sub6 = sub i32 67108862, %7
  store i32 %sub6, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx7, align 4
  %sub8 = sub i32 134217726, %9
  store i32 %sub8, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 5
  %11 = load i32, ptr %arrayidx9, align 4
  %sub10 = sub i32 67108862, %11
  store i32 %sub10, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx11, align 4
  %sub12 = sub i32 134217726, %13
  store i32 %sub12, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 7
  %15 = load i32, ptr %arrayidx13, align 4
  %sub14 = sub i32 67108862, %15
  store i32 %sub14, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %16, i64 8
  %17 = load i32, ptr %arrayidx15, align 4
  %sub16 = sub i32 134217726, %17
  store i32 %sub16, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %18, i64 9
  %19 = load i32, ptr %arrayidx17, align 4
  %sub18 = sub i32 67108862, %19
  store i32 %sub18, ptr %x10, align 4
  %20 = load i32, ptr %x1, align 4
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %21, i64 0
  store i32 %20, ptr %arrayidx19, align 4
  %22 = load i32, ptr %x2, align 4
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %arrayidx20, align 4
  %24 = load i32, ptr %x3, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %24, ptr %arrayidx21, align 4
  %26 = load i32, ptr %x4, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %26, ptr %arrayidx22, align 4
  %28 = load i32, ptr %x5, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %28, ptr %arrayidx23, align 4
  %30 = load i32, ptr %x6, align 4
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %31, i64 5
  store i32 %30, ptr %arrayidx24, align 4
  %32 = load i32, ptr %x7, align 4
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %33, i64 6
  store i32 %32, ptr %arrayidx25, align 4
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %35, i64 7
  store i32 %34, ptr %arrayidx26, align 4
  %36 = load i32, ptr %x9, align 4
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %37, i64 8
  store i32 %36, ptr %arrayidx27, align 4
  %38 = load i32, ptr %x10, align 4
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %39, i64 9
  store i32 %38, ptr %arrayidx28, align 4
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
