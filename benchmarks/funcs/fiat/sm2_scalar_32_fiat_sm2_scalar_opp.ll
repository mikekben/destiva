; ModuleID = '/data2/ben/alive-decomp/bench/fiat/sm2_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_sm2_scalar_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i8, align 1
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i8, align 1
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef 0, i32 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef 0, i32 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef 0, i32 noundef %10)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef 0, i32 noundef %13)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx5, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i32 noundef 0, i32 noundef %16)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx6, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i32 noundef 0, i32 noundef %19)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i32 noundef 0, i32 noundef %22)
  %23 = load i8, ptr %x16, align 1
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x17, i8 noundef zeroext %23, i32 noundef 0, i32 noundef -1)
  %24 = load i32, ptr %x1, align 4
  %25 = load i32, ptr %x17, align 4
  %and = and i32 %25, 970277155
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %and)
  %26 = load i8, ptr %x19, align 1
  %27 = load i32, ptr %x3, align 4
  %28 = load i32, ptr %x17, align 4
  %and8 = and i32 %28, 1404826633
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %and8)
  %29 = load i8, ptr %x21, align 1
  %30 = load i32, ptr %x5, align 4
  %31 = load i32, ptr %x17, align 4
  %and9 = and i32 %31, 566625579
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %and9)
  %32 = load i8, ptr %x23, align 1
  %33 = load i32, ptr %x7, align 4
  %34 = load i32, ptr %x17, align 4
  %and10 = and i32 %34, 1912856427
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %and10)
  %35 = load i8, ptr %x25, align 1
  %36 = load i32, ptr %x9, align 4
  %37 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x27, align 1
  %39 = load i32, ptr %x11, align 4
  %40 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x29, align 1
  %42 = load i32, ptr %x13, align 4
  %43 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i8, ptr %x31, align 1
  %45 = load i32, ptr %x15, align 4
  %46 = load i32, ptr %x17, align 4
  %and11 = and i32 %46, -2
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %44, i32 noundef %45, i32 noundef %and11)
  %47 = load i32, ptr %x18, align 4
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %48, i64 0
  store i32 %47, ptr %arrayidx12, align 4
  %49 = load i32, ptr %x20, align 4
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %50, i64 1
  store i32 %49, ptr %arrayidx13, align 4
  %51 = load i32, ptr %x22, align 4
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %52, i64 2
  store i32 %51, ptr %arrayidx14, align 4
  %53 = load i32, ptr %x24, align 4
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %54, i64 3
  store i32 %53, ptr %arrayidx15, align 4
  %55 = load i32, ptr %x26, align 4
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %56, i64 4
  store i32 %55, ptr %arrayidx16, align 4
  %57 = load i32, ptr %x28, align 4
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %58, i64 5
  store i32 %57, ptr %arrayidx17, align 4
  %59 = load i32, ptr %x30, align 4
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %60, i64 6
  store i32 %59, ptr %arrayidx18, align 4
  %61 = load i32, ptr %x32, align 4
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %62, i64 7
  store i32 %61, ptr %arrayidx19, align 4
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
