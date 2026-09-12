; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p448_solinas_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p448_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p448_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
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
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %1 = load ptr, ptr %arg2.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load ptr, ptr %arg3.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x1, i8 noundef zeroext %0, i32 noundef %2, i32 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %arrayidx3, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x2, i8 noundef zeroext %5, i32 noundef %7, i32 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %11, i64 2
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 2
  %14 = load i32, ptr %arrayidx5, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x3, i8 noundef zeroext %10, i32 noundef %12, i32 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx6, align 4
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %18, i64 3
  %19 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x4, i8 noundef zeroext %15, i32 noundef %17, i32 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %21, i64 4
  %22 = load i32, ptr %arrayidx8, align 4
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %23, i64 4
  %24 = load i32, ptr %arrayidx9, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x5, i8 noundef zeroext %20, i32 noundef %22, i32 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %26, i64 5
  %27 = load i32, ptr %arrayidx10, align 4
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %28, i64 5
  %29 = load i32, ptr %arrayidx11, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %25, i32 noundef %27, i32 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %31, i64 6
  %32 = load i32, ptr %arrayidx12, align 4
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %33, i64 6
  %34 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %30, i32 noundef %32, i32 noundef %34)
  %35 = load i8, ptr %arg1.addr, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %36, i64 7
  %37 = load i32, ptr %arrayidx14, align 4
  %38 = load ptr, ptr %arg3.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 7
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %35, i32 noundef %37, i32 noundef %39)
  %40 = load i8, ptr %arg1.addr, align 1
  %41 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %41, i64 8
  %42 = load i32, ptr %arrayidx16, align 4
  %43 = load ptr, ptr %arg3.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %43, i64 8
  %44 = load i32, ptr %arrayidx17, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x9, i8 noundef zeroext %40, i32 noundef %42, i32 noundef %44)
  %45 = load i8, ptr %arg1.addr, align 1
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %46, i64 9
  %47 = load i32, ptr %arrayidx18, align 4
  %48 = load ptr, ptr %arg3.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %48, i64 9
  %49 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x10, i8 noundef zeroext %45, i32 noundef %47, i32 noundef %49)
  %50 = load i8, ptr %arg1.addr, align 1
  %51 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %51, i64 10
  %52 = load i32, ptr %arrayidx20, align 4
  %53 = load ptr, ptr %arg3.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %53, i64 10
  %54 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %50, i32 noundef %52, i32 noundef %54)
  %55 = load i8, ptr %arg1.addr, align 1
  %56 = load ptr, ptr %arg2.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %56, i64 11
  %57 = load i32, ptr %arrayidx22, align 4
  %58 = load ptr, ptr %arg3.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %58, i64 11
  %59 = load i32, ptr %arrayidx23, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x12, i8 noundef zeroext %55, i32 noundef %57, i32 noundef %59)
  %60 = load i8, ptr %arg1.addr, align 1
  %61 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %61, i64 12
  %62 = load i32, ptr %arrayidx24, align 4
  %63 = load ptr, ptr %arg3.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %63, i64 12
  %64 = load i32, ptr %arrayidx25, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x13, i8 noundef zeroext %60, i32 noundef %62, i32 noundef %64)
  %65 = load i8, ptr %arg1.addr, align 1
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %66, i64 13
  %67 = load i32, ptr %arrayidx26, align 4
  %68 = load ptr, ptr %arg3.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %68, i64 13
  %69 = load i32, ptr %arrayidx27, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x14, i8 noundef zeroext %65, i32 noundef %67, i32 noundef %69)
  %70 = load i8, ptr %arg1.addr, align 1
  %71 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %71, i64 14
  %72 = load i32, ptr %arrayidx28, align 4
  %73 = load ptr, ptr %arg3.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %73, i64 14
  %74 = load i32, ptr %arrayidx29, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x15, i8 noundef zeroext %70, i32 noundef %72, i32 noundef %74)
  %75 = load i8, ptr %arg1.addr, align 1
  %76 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %76, i64 15
  %77 = load i32, ptr %arrayidx30, align 4
  %78 = load ptr, ptr %arg3.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %78, i64 15
  %79 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p448_cmovznz_u32(ptr noundef %x16, i8 noundef zeroext %75, i32 noundef %77, i32 noundef %79)
  %80 = load i32, ptr %x1, align 4
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %81, i64 0
  store i32 %80, ptr %arrayidx32, align 4
  %82 = load i32, ptr %x2, align 4
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %83, i64 1
  store i32 %82, ptr %arrayidx33, align 4
  %84 = load i32, ptr %x3, align 4
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %85, i64 2
  store i32 %84, ptr %arrayidx34, align 4
  %86 = load i32, ptr %x4, align 4
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %87, i64 3
  store i32 %86, ptr %arrayidx35, align 4
  %88 = load i32, ptr %x5, align 4
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %89, i64 4
  store i32 %88, ptr %arrayidx36, align 4
  %90 = load i32, ptr %x6, align 4
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %91, i64 5
  store i32 %90, ptr %arrayidx37, align 4
  %92 = load i32, ptr %x7, align 4
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %93, i64 6
  store i32 %92, ptr %arrayidx38, align 4
  %94 = load i32, ptr %x8, align 4
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %95, i64 7
  store i32 %94, ptr %arrayidx39, align 4
  %96 = load i32, ptr %x9, align 4
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %97, i64 8
  store i32 %96, ptr %arrayidx40, align 4
  %98 = load i32, ptr %x10, align 4
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %99, i64 9
  store i32 %98, ptr %arrayidx41, align 4
  %100 = load i32, ptr %x11, align 4
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %101, i64 10
  store i32 %100, ptr %arrayidx42, align 4
  %102 = load i32, ptr %x12, align 4
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %103, i64 11
  store i32 %102, ptr %arrayidx43, align 4
  %104 = load i32, ptr %x13, align 4
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %105, i64 12
  store i32 %104, ptr %arrayidx44, align 4
  %106 = load i32, ptr %x14, align 4
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %107, i64 13
  store i32 %106, ptr %arrayidx45, align 4
  %108 = load i32, ptr %x15, align 4
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %109, i64 14
  store i32 %108, ptr %arrayidx46, align 4
  %110 = load i32, ptr %x16, align 4
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %111, i64 15
  store i32 %110, ptr %arrayidx47, align 4
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
