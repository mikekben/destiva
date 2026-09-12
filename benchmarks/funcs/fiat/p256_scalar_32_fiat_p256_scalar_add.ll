; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_scalar_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  %x18 = alloca i8, align 1
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i8, align 1
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i8, align 1
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx3, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i32 noundef %6, i32 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx5, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 3
  %18 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 4
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %22, i64 4
  %23 = load i32, ptr %arrayidx9, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i32 noundef %21, i32 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %25, i64 5
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 5
  %28 = load i32, ptr %arrayidx11, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i32 noundef %26, i32 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 6
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 6
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i32 noundef %31, i32 noundef %33)
  %34 = load i8, ptr %x14, align 1
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 7
  %36 = load i32, ptr %arrayidx14, align 4
  %37 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %38)
  %39 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext 0, i32 noundef %39, i32 noundef -60611247)
  %40 = load i8, ptr %x18, align 1
  %41 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %40, i32 noundef %41, i32 noundef -205927742)
  %42 = load i8, ptr %x20, align 1
  %43 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %42, i32 noundef %43, i32 noundef -1491624316)
  %44 = load i8, ptr %x22, align 1
  %45 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %44, i32 noundef %45, i32 noundef -1125713235)
  %46 = load i8, ptr %x24, align 1
  %47 = load i32, ptr %x9, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %46, i32 noundef %47, i32 noundef -1)
  %48 = load i8, ptr %x26, align 1
  %49 = load i32, ptr %x11, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %48, i32 noundef %49, i32 noundef -1)
  %50 = load i8, ptr %x28, align 1
  %51 = load i32, ptr %x13, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %50, i32 noundef %51, i32 noundef 0)
  %52 = load i8, ptr %x30, align 1
  %53 = load i32, ptr %x15, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %52, i32 noundef %53, i32 noundef -1)
  %54 = load i8, ptr %x32, align 1
  %55 = load i8, ptr %x16, align 1
  %conv = zext i8 %55 to i32
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %54, i32 noundef %conv, i32 noundef 0)
  %56 = load i8, ptr %x34, align 1
  %57 = load i32, ptr %x17, align 4
  %58 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x35, i8 noundef zeroext %56, i32 noundef %57, i32 noundef %58)
  %59 = load i8, ptr %x34, align 1
  %60 = load i32, ptr %x19, align 4
  %61 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x36, i8 noundef zeroext %59, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x34, align 1
  %63 = load i32, ptr %x21, align 4
  %64 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x37, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x34, align 1
  %66 = load i32, ptr %x23, align 4
  %67 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x38, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x34, align 1
  %69 = load i32, ptr %x25, align 4
  %70 = load i32, ptr %x9, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x39, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x34, align 1
  %72 = load i32, ptr %x27, align 4
  %73 = load i32, ptr %x11, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x40, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %73)
  %74 = load i8, ptr %x34, align 1
  %75 = load i32, ptr %x29, align 4
  %76 = load i32, ptr %x13, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x41, i8 noundef zeroext %74, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x34, align 1
  %78 = load i32, ptr %x31, align 4
  %79 = load i32, ptr %x15, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x42, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i32, ptr %x35, align 4
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %81, i64 0
  store i32 %80, ptr %arrayidx16, align 4
  %82 = load i32, ptr %x36, align 4
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %83, i64 1
  store i32 %82, ptr %arrayidx17, align 4
  %84 = load i32, ptr %x37, align 4
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %85, i64 2
  store i32 %84, ptr %arrayidx18, align 4
  %86 = load i32, ptr %x38, align 4
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %87, i64 3
  store i32 %86, ptr %arrayidx19, align 4
  %88 = load i32, ptr %x39, align 4
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %89, i64 4
  store i32 %88, ptr %arrayidx20, align 4
  %90 = load i32, ptr %x40, align 4
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %91, i64 5
  store i32 %90, ptr %arrayidx21, align 4
  %92 = load i32, ptr %x41, align 4
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %93, i64 6
  store i32 %92, ptr %arrayidx22, align 4
  %94 = load i32, ptr %x42, align 4
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %95, i64 7
  store i32 %94, ptr %arrayidx23, align 4
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
