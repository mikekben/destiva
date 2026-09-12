; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %add = add i64 4503599627370458, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %sub = sub i64 %add, %3
  store i64 %sub, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %add3 = add i64 4503599627370494, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx4, align 8
  %sub5 = sub i64 %add3, %7
  store i64 %sub5, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 4503599627370494, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx8, align 8
  %sub9 = sub i64 %add7, %11
  store i64 %sub9, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 4503599627370494, %13
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %14, i64 3
  %15 = load i64, ptr %arrayidx12, align 8
  %sub13 = sub i64 %add11, %15
  store i64 %sub13, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 4503599627370494, %17
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx16, align 8
  %sub17 = sub i64 %add15, %19
  store i64 %sub17, ptr %x5, align 8
  %20 = load i64, ptr %x1, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 0
  store i64 %20, ptr %arrayidx18, align 8
  %22 = load i64, ptr %x2, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 %22, ptr %arrayidx19, align 8
  %24 = load i64, ptr %x3, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %25, i64 2
  store i64 %24, ptr %arrayidx20, align 8
  %26 = load i64, ptr %x4, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %27, i64 3
  store i64 %26, ptr %arrayidx21, align 8
  %28 = load i64, ptr %x5, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %29, i64 4
  store i64 %28, ptr %arrayidx22, align 8
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
