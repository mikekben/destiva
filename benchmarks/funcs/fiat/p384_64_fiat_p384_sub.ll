; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i8, align 1
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
  %x22 = alloca i64, align 8
  %x23 = alloca i8, align 1
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx8, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 4
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i64 noundef %21, i64 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 5
  %26 = load i64, ptr %arrayidx10, align 8
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 5
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i64 noundef %26, i64 noundef %28)
  %29 = load i8, ptr %x12, align 1
  call void @fiat_p384_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %29, i64 noundef 0, i64 noundef -1)
  %30 = load i64, ptr %x1, align 8
  %31 = load i64, ptr %x13, align 8
  %and = and i64 %31, 4294967295
  call void @fiat_p384_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef %30, i64 noundef %and)
  %32 = load i8, ptr %x15, align 1
  %33 = load i64, ptr %x3, align 8
  %34 = load i64, ptr %x13, align 8
  %and12 = and i64 %34, -4294967296
  call void @fiat_p384_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %and12)
  %35 = load i8, ptr %x17, align 1
  %36 = load i64, ptr %x5, align 8
  %37 = load i64, ptr %x13, align 8
  %and13 = and i64 %37, -2
  call void @fiat_p384_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %and13)
  %38 = load i8, ptr %x19, align 1
  %39 = load i64, ptr %x7, align 8
  %40 = load i64, ptr %x13, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x21, align 1
  %42 = load i64, ptr %x9, align 8
  %43 = load i64, ptr %x13, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x23, align 1
  %45 = load i64, ptr %x11, align 8
  %46 = load i64, ptr %x13, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %44, i64 noundef %45, i64 noundef %46)
  %47 = load i64, ptr %x14, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %48, i64 0
  store i64 %47, ptr %arrayidx14, align 8
  %49 = load i64, ptr %x16, align 8
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %50, i64 1
  store i64 %49, ptr %arrayidx15, align 8
  %51 = load i64, ptr %x18, align 8
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %52, i64 2
  store i64 %51, ptr %arrayidx16, align 8
  %53 = load i64, ptr %x20, align 8
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %arrayidx17, align 8
  %55 = load i64, ptr %x22, align 8
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %56, i64 4
  store i64 %55, ptr %arrayidx18, align 8
  %57 = load i64, ptr %x24, align 8
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %58, i64 5
  store i64 %57, ptr %arrayidx19, align 8
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
