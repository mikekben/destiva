; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_scalar_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i8, align 1
  %x7 = alloca i64, align 8
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef 0, i64 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef 0, i64 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef 0, i64 noundef %10)
  %11 = load i8, ptr %x8, align 1
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %11, i64 noundef 0, i64 noundef -1)
  %12 = load i64, ptr %x1, align 8
  %13 = load i64, ptr %x9, align 8
  %and = and i64 %13, 6346243789798364141
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %and)
  %14 = load i8, ptr %x11, align 1
  %15 = load i64, ptr %x3, align 8
  %16 = load i64, ptr %x9, align 8
  %and4 = and i64 %16, 1503914060200516822
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %and4)
  %17 = load i8, ptr %x13, align 1
  %18 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %17, i64 noundef %18, i64 noundef 0)
  %19 = load i8, ptr %x15, align 1
  %20 = load i64, ptr %x7, align 8
  %21 = load i64, ptr %x9, align 8
  %and5 = and i64 %21, 1152921504606846976
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %19, i64 noundef %20, i64 noundef %and5)
  %22 = load i64, ptr %x10, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %23, i64 0
  store i64 %22, ptr %arrayidx6, align 8
  %24 = load i64, ptr %x12, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 %24, ptr %arrayidx7, align 8
  %26 = load i64, ptr %x14, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %27, i64 2
  store i64 %26, ptr %arrayidx8, align 8
  %28 = load i64, ptr %x16, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %29, i64 3
  store i64 %28, ptr %arrayidx9, align 8
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
