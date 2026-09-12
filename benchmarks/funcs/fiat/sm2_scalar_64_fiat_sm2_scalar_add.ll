; ModuleID = '/data2/ben/alive-decomp/bench/fiat/sm2_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_sm2_scalar_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i8, align 1
  %x7 = alloca i64, align 8
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i8, align 1
  %x11 = alloca i64, align 8
  %x12 = alloca i8, align 1
  %x13 = alloca i64, align 8
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_sm2_scalar_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_sm2_scalar_addcarryx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_sm2_scalar_addcarryx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_sm2_scalar_addcarryx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i64, ptr %x1, align 8
  call void @fiat_sm2_scalar_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext 0, i64 noundef %19, i64 noundef 6033684446255071523)
  %20 = load i8, ptr %x10, align 1
  %21 = load i64, ptr %x3, align 8
  call void @fiat_sm2_scalar_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %20, i64 noundef %21, i64 noundef 8215655796475036971)
  %22 = load i8, ptr %x12, align 1
  %23 = load i64, ptr %x5, align 8
  call void @fiat_sm2_scalar_subborrowx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %22, i64 noundef %23, i64 noundef -1)
  %24 = load i8, ptr %x14, align 1
  %25 = load i64, ptr %x7, align 8
  call void @fiat_sm2_scalar_subborrowx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %24, i64 noundef %25, i64 noundef -4294967297)
  %26 = load i8, ptr %x16, align 1
  %27 = load i8, ptr %x8, align 1
  %conv = zext i8 %27 to i64
  call void @fiat_sm2_scalar_subborrowx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %26, i64 noundef %conv, i64 noundef 0)
  %28 = load i8, ptr %x18, align 1
  %29 = load i64, ptr %x9, align 8
  %30 = load i64, ptr %x1, align 8
  call void @fiat_sm2_scalar_cmovznz_u64(ptr noundef %x19, i8 noundef zeroext %28, i64 noundef %29, i64 noundef %30)
  %31 = load i8, ptr %x18, align 1
  %32 = load i64, ptr %x11, align 8
  %33 = load i64, ptr %x3, align 8
  call void @fiat_sm2_scalar_cmovznz_u64(ptr noundef %x20, i8 noundef zeroext %31, i64 noundef %32, i64 noundef %33)
  %34 = load i8, ptr %x18, align 1
  %35 = load i64, ptr %x13, align 8
  %36 = load i64, ptr %x5, align 8
  call void @fiat_sm2_scalar_cmovznz_u64(ptr noundef %x21, i8 noundef zeroext %34, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x18, align 1
  %38 = load i64, ptr %x15, align 8
  %39 = load i64, ptr %x7, align 8
  call void @fiat_sm2_scalar_cmovznz_u64(ptr noundef %x22, i8 noundef zeroext %37, i64 noundef %38, i64 noundef %39)
  %40 = load i64, ptr %x19, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %40, ptr %arrayidx8, align 8
  %42 = load i64, ptr %x20, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %arrayidx9, align 8
  %44 = load i64, ptr %x21, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %arrayidx10, align 8
  %46 = load i64, ptr %x22, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 %46, ptr %arrayidx11, align 8
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
