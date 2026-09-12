; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p521_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
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
  store i8 %arg1, ptr %arg1.addr, align 1
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %1 = load ptr, ptr %arg2.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 0
  %2 = load i64, ptr %arrayidx, align 8
  %3 = load ptr, ptr %arg3.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 0
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 4
  %24 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x5, i8 noundef zeroext %20, i64 noundef %22, i64 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %26, i64 5
  %27 = load i64, ptr %arrayidx10, align 8
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 5
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %25, i64 noundef %27, i64 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %31, i64 6
  %32 = load i64, ptr %arrayidx12, align 8
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 6
  %34 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %30, i64 noundef %32, i64 noundef %34)
  %35 = load i8, ptr %arg1.addr, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx14, align 8
  %38 = load ptr, ptr %arg3.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %38, i64 7
  %39 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %35, i64 noundef %37, i64 noundef %39)
  %40 = load i8, ptr %arg1.addr, align 1
  %41 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %41, i64 8
  %42 = load i64, ptr %arrayidx16, align 8
  %43 = load ptr, ptr %arg3.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %43, i64 8
  %44 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %40, i64 noundef %42, i64 noundef %44)
  %45 = load i64, ptr %x1, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %46, i64 0
  store i64 %45, ptr %arrayidx18, align 8
  %47 = load i64, ptr %x2, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 %47, ptr %arrayidx19, align 8
  %49 = load i64, ptr %x3, align 8
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %50, i64 2
  store i64 %49, ptr %arrayidx20, align 8
  %51 = load i64, ptr %x4, align 8
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %52, i64 3
  store i64 %51, ptr %arrayidx21, align 8
  %53 = load i64, ptr %x5, align 8
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %54, i64 4
  store i64 %53, ptr %arrayidx22, align 8
  %55 = load i64, ptr %x6, align 8
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %56, i64 5
  store i64 %55, ptr %arrayidx23, align 8
  %57 = load i64, ptr %x7, align 8
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %58, i64 6
  store i64 %57, ptr %arrayidx24, align 8
  %59 = load i64, ptr %x8, align 8
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %60, i64 7
  store i64 %59, ptr %arrayidx25, align 8
  %61 = load i64, ptr %x9, align 8
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %62, i64 8
  store i64 %61, ptr %arrayidx26, align 8
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
