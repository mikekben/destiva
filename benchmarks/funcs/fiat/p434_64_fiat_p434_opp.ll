; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p434_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p434_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x10 = alloca i8, align 1
  %x11 = alloca i64, align 8
  %x12 = alloca i8, align 1
  %x13 = alloca i64, align 8
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
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
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef 0, i64 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef 0, i64 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef 0, i64 noundef %10)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef 0, i64 noundef %13)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i64 noundef 0, i64 noundef %16)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i64 noundef 0, i64 noundef %19)
  %20 = load i8, ptr %x14, align 1
  call void @fiat_p434_cmovznz_u64(ptr noundef %x15, i8 noundef zeroext %20, i64 noundef 0, i64 noundef -1)
  %21 = load i64, ptr %x1, align 8
  %22 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x17, align 1
  %24 = load i64, ptr %x3, align 8
  %25 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %25)
  %26 = load i8, ptr %x19, align 1
  %27 = load i64, ptr %x5, align 8
  %28 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x21, align 1
  %30 = load i64, ptr %x7, align 8
  %31 = load i64, ptr %x15, align 8
  %and = and i64 %31, -161717841442111489
  call void @fiat_p434_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %and)
  %32 = load i8, ptr %x23, align 1
  %33 = load i64, ptr %x9, align 8
  %34 = load i64, ptr %x15, align 8
  %and7 = and i64 %34, 8918917783347572387
  call void @fiat_p434_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %and7)
  %35 = load i8, ptr %x25, align 1
  %36 = load i64, ptr %x11, align 8
  %37 = load i64, ptr %x15, align 8
  %and8 = and i64 %37, 7853257225132122198
  call void @fiat_p434_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %and8)
  %38 = load i8, ptr %x27, align 1
  %39 = load i64, ptr %x13, align 8
  %40 = load i64, ptr %x15, align 8
  %and9 = and i64 %40, 620258357900100
  call void @fiat_p434_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %and9)
  %41 = load i64, ptr %x16, align 8
  %42 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 %41, ptr %arrayidx10, align 8
  %43 = load i64, ptr %x18, align 8
  %44 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %44, i64 1
  store i64 %43, ptr %arrayidx11, align 8
  %45 = load i64, ptr %x20, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %46, i64 2
  store i64 %45, ptr %arrayidx12, align 8
  %47 = load i64, ptr %x22, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %48, i64 3
  store i64 %47, ptr %arrayidx13, align 8
  %49 = load i64, ptr %x24, align 8
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %50, i64 4
  store i64 %49, ptr %arrayidx14, align 8
  %51 = load i64, ptr %x26, align 8
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %52, i64 5
  store i64 %51, ptr %arrayidx15, align 8
  %53 = load i64, ptr %x28, align 8
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %54, i64 6
  store i64 %53, ptr %arrayidx16, align 8
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
