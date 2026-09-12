; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x18 = alloca i8, align 1
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
  %x34 = alloca i32, align 4
  %x35 = alloca i8, align 1
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i8, align 1
  %x44 = alloca i32, align 4
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef 0, i32 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef 0, i32 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef 0, i32 noundef %10)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef 0, i32 noundef %13)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx5, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i32 noundef 0, i32 noundef %16)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx6, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i32 noundef 0, i32 noundef %19)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i32 noundef 0, i32 noundef %22)
  %23 = load i8, ptr %x16, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx8, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %23, i32 noundef 0, i32 noundef %25)
  %26 = load i8, ptr %x18, align 1
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %27, i64 9
  %28 = load i32, ptr %arrayidx9, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %26, i32 noundef 0, i32 noundef %28)
  %29 = load i8, ptr %x20, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %30, i64 10
  %31 = load i32, ptr %arrayidx10, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %29, i32 noundef 0, i32 noundef %31)
  %32 = load i8, ptr %x22, align 1
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %33, i64 11
  %34 = load i32, ptr %arrayidx11, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %32, i32 noundef 0, i32 noundef %34)
  %35 = load i8, ptr %x24, align 1
  call void @fiat_p384_cmovznz_u32(ptr noundef %x25, i8 noundef zeroext %35, i32 noundef 0, i32 noundef -1)
  %36 = load i32, ptr %x1, align 4
  %37 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext 0, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x27, align 1
  %39 = load i32, ptr %x3, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i32 noundef %39, i32 noundef 0)
  %40 = load i8, ptr %x29, align 1
  %41 = load i32, ptr %x5, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %40, i32 noundef %41, i32 noundef 0)
  %42 = load i8, ptr %x31, align 1
  %43 = load i32, ptr %x7, align 4
  %44 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %x33, align 1
  %46 = load i32, ptr %x9, align 4
  %47 = load i32, ptr %x25, align 4
  %and = and i32 %47, -2
  call void @fiat_p384_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %and)
  %48 = load i8, ptr %x35, align 1
  %49 = load i32, ptr %x11, align 4
  %50 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x37, align 1
  %52 = load i32, ptr %x13, align 4
  %53 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x39, align 1
  %55 = load i32, ptr %x15, align 4
  %56 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x41, align 1
  %58 = load i32, ptr %x17, align 4
  %59 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x43, align 1
  %61 = load i32, ptr %x19, align 4
  %62 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %60, i32 noundef %61, i32 noundef %62)
  %63 = load i8, ptr %x45, align 1
  %64 = load i32, ptr %x21, align 4
  %65 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %63, i32 noundef %64, i32 noundef %65)
  %66 = load i8, ptr %x47, align 1
  %67 = load i32, ptr %x23, align 4
  %68 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %66, i32 noundef %67, i32 noundef %68)
  %69 = load i32, ptr %x26, align 4
  %70 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %70, i64 0
  store i32 %69, ptr %arrayidx12, align 4
  %71 = load i32, ptr %x28, align 4
  %72 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %72, i64 1
  store i32 %71, ptr %arrayidx13, align 4
  %73 = load i32, ptr %x30, align 4
  %74 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %74, i64 2
  store i32 %73, ptr %arrayidx14, align 4
  %75 = load i32, ptr %x32, align 4
  %76 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %76, i64 3
  store i32 %75, ptr %arrayidx15, align 4
  %77 = load i32, ptr %x34, align 4
  %78 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %78, i64 4
  store i32 %77, ptr %arrayidx16, align 4
  %79 = load i32, ptr %x36, align 4
  %80 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %80, i64 5
  store i32 %79, ptr %arrayidx17, align 4
  %81 = load i32, ptr %x38, align 4
  %82 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %82, i64 6
  store i32 %81, ptr %arrayidx18, align 4
  %83 = load i32, ptr %x40, align 4
  %84 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %84, i64 7
  store i32 %83, ptr %arrayidx19, align 4
  %85 = load i32, ptr %x42, align 4
  %86 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %86, i64 8
  store i32 %85, ptr %arrayidx20, align 4
  %87 = load i32, ptr %x44, align 4
  %88 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %88, i64 9
  store i32 %87, ptr %arrayidx21, align 4
  %89 = load i32, ptr %x46, align 4
  %90 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %90, i64 10
  store i32 %89, ptr %arrayidx22, align 4
  %91 = load i32, ptr %x48, align 4
  %92 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %92, i64 11
  store i32 %91, ptr %arrayidx23, align 4
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
