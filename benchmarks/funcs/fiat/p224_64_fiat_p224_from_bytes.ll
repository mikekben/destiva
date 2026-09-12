; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i8, align 1
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i8, align 1
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 27
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 26
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 16
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 25
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 8
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 24
  %7 = load i8, ptr %arrayidx7, align 1
  store i8 %7, ptr %x4, align 1
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 23
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i64
  %shl10 = shl i64 %conv9, 56
  store i64 %shl10, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 22
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i64
  %shl13 = shl i64 %conv12, 48
  store i64 %shl13, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 21
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i64
  %shl16 = shl i64 %conv15, 40
  store i64 %shl16, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 20
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %shl19 = shl i64 %conv18, 32
  store i64 %shl19, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 19
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 24
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 18
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 16
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 17
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 8
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 16
  %23 = load i8, ptr %arrayidx29, align 1
  store i8 %23, ptr %x12, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %24, i64 15
  %25 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %25 to i64
  %shl32 = shl i64 %conv31, 56
  store i64 %shl32, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %26, i64 14
  %27 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %27 to i64
  %shl35 = shl i64 %conv34, 48
  store i64 %shl35, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %28, i64 13
  %29 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %29 to i64
  %shl38 = shl i64 %conv37, 40
  store i64 %shl38, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %30, i64 12
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %31 to i64
  %shl41 = shl i64 %conv40, 32
  store i64 %shl41, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 11
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i64
  %shl44 = shl i64 %conv43, 24
  store i64 %shl44, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 10
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i64
  %shl47 = shl i64 %conv46, 16
  store i64 %shl47, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 9
  %37 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %37 to i64
  %shl50 = shl i64 %conv49, 8
  store i64 %shl50, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 8
  %39 = load i8, ptr %arrayidx51, align 1
  store i8 %39, ptr %x20, align 1
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %40, i64 7
  %41 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %41 to i64
  %shl54 = shl i64 %conv53, 56
  store i64 %shl54, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %42, i64 6
  %43 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %43 to i64
  %shl57 = shl i64 %conv56, 48
  store i64 %shl57, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %44, i64 5
  %45 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %45 to i64
  %shl60 = shl i64 %conv59, 40
  store i64 %shl60, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %46, i64 4
  %47 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %47 to i64
  %shl63 = shl i64 %conv62, 32
  store i64 %shl63, ptr %x24, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %48, i64 3
  %49 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %49 to i64
  %shl66 = shl i64 %conv65, 24
  store i64 %shl66, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 2
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i64
  %shl69 = shl i64 %conv68, 16
  store i64 %shl69, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 1
  %53 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %53 to i64
  %shl72 = shl i64 %conv71, 8
  store i64 %shl72, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx73, align 1
  store i8 %55, ptr %x28, align 1
  %56 = load i64, ptr %x27, align 8
  %57 = load i8, ptr %x28, align 1
  %conv74 = zext i8 %57 to i64
  %add = add i64 %56, %conv74
  store i64 %add, ptr %x29, align 8
  %58 = load i64, ptr %x26, align 8
  %59 = load i64, ptr %x29, align 8
  %add75 = add i64 %58, %59
  store i64 %add75, ptr %x30, align 8
  %60 = load i64, ptr %x25, align 8
  %61 = load i64, ptr %x30, align 8
  %add76 = add i64 %60, %61
  store i64 %add76, ptr %x31, align 8
  %62 = load i64, ptr %x24, align 8
  %63 = load i64, ptr %x31, align 8
  %add77 = add i64 %62, %63
  store i64 %add77, ptr %x32, align 8
  %64 = load i64, ptr %x23, align 8
  %65 = load i64, ptr %x32, align 8
  %add78 = add i64 %64, %65
  store i64 %add78, ptr %x33, align 8
  %66 = load i64, ptr %x22, align 8
  %67 = load i64, ptr %x33, align 8
  %add79 = add i64 %66, %67
  store i64 %add79, ptr %x34, align 8
  %68 = load i64, ptr %x21, align 8
  %69 = load i64, ptr %x34, align 8
  %add80 = add i64 %68, %69
  store i64 %add80, ptr %x35, align 8
  %70 = load i64, ptr %x19, align 8
  %71 = load i8, ptr %x20, align 1
  %conv81 = zext i8 %71 to i64
  %add82 = add i64 %70, %conv81
  store i64 %add82, ptr %x36, align 8
  %72 = load i64, ptr %x18, align 8
  %73 = load i64, ptr %x36, align 8
  %add83 = add i64 %72, %73
  store i64 %add83, ptr %x37, align 8
  %74 = load i64, ptr %x17, align 8
  %75 = load i64, ptr %x37, align 8
  %add84 = add i64 %74, %75
  store i64 %add84, ptr %x38, align 8
  %76 = load i64, ptr %x16, align 8
  %77 = load i64, ptr %x38, align 8
  %add85 = add i64 %76, %77
  store i64 %add85, ptr %x39, align 8
  %78 = load i64, ptr %x15, align 8
  %79 = load i64, ptr %x39, align 8
  %add86 = add i64 %78, %79
  store i64 %add86, ptr %x40, align 8
  %80 = load i64, ptr %x14, align 8
  %81 = load i64, ptr %x40, align 8
  %add87 = add i64 %80, %81
  store i64 %add87, ptr %x41, align 8
  %82 = load i64, ptr %x13, align 8
  %83 = load i64, ptr %x41, align 8
  %add88 = add i64 %82, %83
  store i64 %add88, ptr %x42, align 8
  %84 = load i64, ptr %x11, align 8
  %85 = load i8, ptr %x12, align 1
  %conv89 = zext i8 %85 to i64
  %add90 = add i64 %84, %conv89
  store i64 %add90, ptr %x43, align 8
  %86 = load i64, ptr %x10, align 8
  %87 = load i64, ptr %x43, align 8
  %add91 = add i64 %86, %87
  store i64 %add91, ptr %x44, align 8
  %88 = load i64, ptr %x9, align 8
  %89 = load i64, ptr %x44, align 8
  %add92 = add i64 %88, %89
  store i64 %add92, ptr %x45, align 8
  %90 = load i64, ptr %x8, align 8
  %91 = load i64, ptr %x45, align 8
  %add93 = add i64 %90, %91
  store i64 %add93, ptr %x46, align 8
  %92 = load i64, ptr %x7, align 8
  %93 = load i64, ptr %x46, align 8
  %add94 = add i64 %92, %93
  store i64 %add94, ptr %x47, align 8
  %94 = load i64, ptr %x6, align 8
  %95 = load i64, ptr %x47, align 8
  %add95 = add i64 %94, %95
  store i64 %add95, ptr %x48, align 8
  %96 = load i64, ptr %x5, align 8
  %97 = load i64, ptr %x48, align 8
  %add96 = add i64 %96, %97
  store i64 %add96, ptr %x49, align 8
  %98 = load i64, ptr %x3, align 8
  %99 = load i8, ptr %x4, align 1
  %conv97 = zext i8 %99 to i64
  %add98 = add i64 %98, %conv97
  store i64 %add98, ptr %x50, align 8
  %100 = load i64, ptr %x2, align 8
  %101 = load i64, ptr %x50, align 8
  %add99 = add i64 %100, %101
  store i64 %add99, ptr %x51, align 8
  %102 = load i64, ptr %x1, align 8
  %103 = load i64, ptr %x51, align 8
  %add100 = add i64 %102, %103
  store i64 %add100, ptr %x52, align 8
  %104 = load i64, ptr %x35, align 8
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i64, ptr %105, i64 0
  store i64 %104, ptr %arrayidx101, align 8
  %106 = load i64, ptr %x42, align 8
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %107, i64 1
  store i64 %106, ptr %arrayidx102, align 8
  %108 = load i64, ptr %x49, align 8
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %109, i64 2
  store i64 %108, ptr %arrayidx103, align 8
  %110 = load i64, ptr %x52, align 8
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i64, ptr %111, i64 3
  store i64 %110, ptr %arrayidx104, align 8
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
