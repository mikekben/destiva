; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i32, align 4
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i32, align 4
  %x32 = alloca i32, align 4
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 27
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 26
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 25
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 24
  %7 = load i8, ptr %arrayidx7, align 1
  store i8 %7, ptr %x4, align 1
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 23
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl i32 %conv9, 24
  store i32 %shl10, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 22
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 16
  store i32 %shl13, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 21
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 8
  store i32 %shl16, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 20
  %15 = load i8, ptr %arrayidx17, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 19
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %shl20 = shl i32 %conv19, 24
  store i32 %shl20, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 18
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %shl23 = shl i32 %conv22, 16
  store i32 %shl23, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 17
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %shl26 = shl i32 %conv25, 8
  store i32 %shl26, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %22, i64 16
  %23 = load i8, ptr %arrayidx27, align 1
  store i8 %23, ptr %x12, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %24, i64 15
  %25 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %shl30 = shl i32 %conv29, 24
  store i32 %shl30, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %26, i64 14
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %shl33 = shl i32 %conv32, 16
  store i32 %shl33, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %28, i64 13
  %29 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %shl36 = shl i32 %conv35, 8
  store i32 %shl36, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %30, i64 12
  %31 = load i8, ptr %arrayidx37, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %32, i64 11
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %shl40 = shl i32 %conv39, 24
  store i32 %shl40, ptr %x17, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %34, i64 10
  %35 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %35 to i32
  %shl43 = shl i32 %conv42, 16
  store i32 %shl43, ptr %x18, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %36, i64 9
  %37 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  %shl46 = shl i32 %conv45, 8
  store i32 %shl46, ptr %x19, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %38, i64 8
  %39 = load i8, ptr %arrayidx47, align 1
  store i8 %39, ptr %x20, align 1
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %40, i64 7
  %41 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %41 to i32
  %shl50 = shl i32 %conv49, 24
  store i32 %shl50, ptr %x21, align 4
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 6
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %43 to i32
  %shl53 = shl i32 %conv52, 16
  store i32 %shl53, ptr %x22, align 4
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %44, i64 5
  %45 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %45 to i32
  %shl56 = shl i32 %conv55, 8
  store i32 %shl56, ptr %x23, align 4
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 4
  %47 = load i8, ptr %arrayidx57, align 1
  store i8 %47, ptr %x24, align 1
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %48, i64 3
  %49 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %49 to i32
  %shl60 = shl i32 %conv59, 24
  store i32 %shl60, ptr %x25, align 4
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %50, i64 2
  %51 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %51 to i32
  %shl63 = shl i32 %conv62, 16
  store i32 %shl63, ptr %x26, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %52, i64 1
  %53 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %shl66 = shl i32 %conv65, 8
  store i32 %shl66, ptr %x27, align 4
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx67, align 1
  store i8 %55, ptr %x28, align 1
  %56 = load i32, ptr %x27, align 4
  %57 = load i8, ptr %x28, align 1
  %conv68 = zext i8 %57 to i32
  %add = add i32 %56, %conv68
  store i32 %add, ptr %x29, align 4
  %58 = load i32, ptr %x26, align 4
  %59 = load i32, ptr %x29, align 4
  %add69 = add i32 %58, %59
  store i32 %add69, ptr %x30, align 4
  %60 = load i32, ptr %x25, align 4
  %61 = load i32, ptr %x30, align 4
  %add70 = add i32 %60, %61
  store i32 %add70, ptr %x31, align 4
  %62 = load i32, ptr %x23, align 4
  %63 = load i8, ptr %x24, align 1
  %conv71 = zext i8 %63 to i32
  %add72 = add i32 %62, %conv71
  store i32 %add72, ptr %x32, align 4
  %64 = load i32, ptr %x22, align 4
  %65 = load i32, ptr %x32, align 4
  %add73 = add i32 %64, %65
  store i32 %add73, ptr %x33, align 4
  %66 = load i32, ptr %x21, align 4
  %67 = load i32, ptr %x33, align 4
  %add74 = add i32 %66, %67
  store i32 %add74, ptr %x34, align 4
  %68 = load i32, ptr %x19, align 4
  %69 = load i8, ptr %x20, align 1
  %conv75 = zext i8 %69 to i32
  %add76 = add i32 %68, %conv75
  store i32 %add76, ptr %x35, align 4
  %70 = load i32, ptr %x18, align 4
  %71 = load i32, ptr %x35, align 4
  %add77 = add i32 %70, %71
  store i32 %add77, ptr %x36, align 4
  %72 = load i32, ptr %x17, align 4
  %73 = load i32, ptr %x36, align 4
  %add78 = add i32 %72, %73
  store i32 %add78, ptr %x37, align 4
  %74 = load i32, ptr %x15, align 4
  %75 = load i8, ptr %x16, align 1
  %conv79 = zext i8 %75 to i32
  %add80 = add i32 %74, %conv79
  store i32 %add80, ptr %x38, align 4
  %76 = load i32, ptr %x14, align 4
  %77 = load i32, ptr %x38, align 4
  %add81 = add i32 %76, %77
  store i32 %add81, ptr %x39, align 4
  %78 = load i32, ptr %x13, align 4
  %79 = load i32, ptr %x39, align 4
  %add82 = add i32 %78, %79
  store i32 %add82, ptr %x40, align 4
  %80 = load i32, ptr %x11, align 4
  %81 = load i8, ptr %x12, align 1
  %conv83 = zext i8 %81 to i32
  %add84 = add i32 %80, %conv83
  store i32 %add84, ptr %x41, align 4
  %82 = load i32, ptr %x10, align 4
  %83 = load i32, ptr %x41, align 4
  %add85 = add i32 %82, %83
  store i32 %add85, ptr %x42, align 4
  %84 = load i32, ptr %x9, align 4
  %85 = load i32, ptr %x42, align 4
  %add86 = add i32 %84, %85
  store i32 %add86, ptr %x43, align 4
  %86 = load i32, ptr %x7, align 4
  %87 = load i8, ptr %x8, align 1
  %conv87 = zext i8 %87 to i32
  %add88 = add i32 %86, %conv87
  store i32 %add88, ptr %x44, align 4
  %88 = load i32, ptr %x6, align 4
  %89 = load i32, ptr %x44, align 4
  %add89 = add i32 %88, %89
  store i32 %add89, ptr %x45, align 4
  %90 = load i32, ptr %x5, align 4
  %91 = load i32, ptr %x45, align 4
  %add90 = add i32 %90, %91
  store i32 %add90, ptr %x46, align 4
  %92 = load i32, ptr %x3, align 4
  %93 = load i8, ptr %x4, align 1
  %conv91 = zext i8 %93 to i32
  %add92 = add i32 %92, %conv91
  store i32 %add92, ptr %x47, align 4
  %94 = load i32, ptr %x2, align 4
  %95 = load i32, ptr %x47, align 4
  %add93 = add i32 %94, %95
  store i32 %add93, ptr %x48, align 4
  %96 = load i32, ptr %x1, align 4
  %97 = load i32, ptr %x48, align 4
  %add94 = add i32 %96, %97
  store i32 %add94, ptr %x49, align 4
  %98 = load i32, ptr %x31, align 4
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %99, i64 0
  store i32 %98, ptr %arrayidx95, align 4
  %100 = load i32, ptr %x34, align 4
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %101, i64 1
  store i32 %100, ptr %arrayidx96, align 4
  %102 = load i32, ptr %x37, align 4
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %103, i64 2
  store i32 %102, ptr %arrayidx97, align 4
  %104 = load i32, ptr %x40, align 4
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %105, i64 3
  store i32 %104, ptr %arrayidx98, align 4
  %106 = load i32, ptr %x43, align 4
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %107, i64 4
  store i32 %106, ptr %arrayidx99, align 4
  %108 = load i32, ptr %x46, align 4
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %109, i64 5
  store i32 %108, ptr %arrayidx100, align 4
  %110 = load i32, ptr %x49, align 4
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %111, i64 6
  store i32 %110, ptr %arrayidx101, align 4
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
