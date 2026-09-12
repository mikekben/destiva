; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
  %x20 = alloca i32, align 4
  %x21 = alloca i32, align 4
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i32, align 4
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 15
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 14
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 13
  %7 = load i8, ptr %arrayidx7, align 1
  store i8 %7, ptr %x4, align 1
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 12
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl i32 %conv9, 18
  store i32 %shl10, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 11
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 10
  store i32 %shl13, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 10
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 2
  store i32 %shl16, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 9
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %shl19 = shl i32 %conv18, 20
  store i32 %shl19, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %shl22 = shl i32 %conv21, 12
  store i32 %shl22, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 7
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %shl25 = shl i32 %conv24, 4
  store i32 %shl25, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 6
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %shl28 = shl i32 %conv27, 22
  store i32 %shl28, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 5
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %shl31 = shl i32 %conv30, 14
  store i32 %shl31, ptr %x12, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 4
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i32
  %shl34 = shl i32 %conv33, 6
  store i32 %shl34, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i32
  %shl37 = shl i32 %conv36, 24
  store i32 %shl37, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i32
  %shl40 = shl i32 %conv39, 16
  store i32 %shl40, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %31 to i32
  %shl43 = shl i32 %conv42, 8
  store i32 %shl43, ptr %x16, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx44, align 1
  store i8 %33, ptr %x17, align 1
  %34 = load i32, ptr %x16, align 4
  %35 = load i8, ptr %x17, align 1
  %conv45 = zext i8 %35 to i32
  %add = add i32 %34, %conv45
  store i32 %add, ptr %x18, align 4
  %36 = load i32, ptr %x15, align 4
  %37 = load i32, ptr %x18, align 4
  %add46 = add i32 %36, %37
  store i32 %add46, ptr %x19, align 4
  %38 = load i32, ptr %x14, align 4
  %39 = load i32, ptr %x19, align 4
  %add47 = add i32 %38, %39
  store i32 %add47, ptr %x20, align 4
  %40 = load i32, ptr %x20, align 4
  %and = and i32 %40, 67108863
  store i32 %and, ptr %x21, align 4
  %41 = load i32, ptr %x20, align 4
  %shr = lshr i32 %41, 26
  %conv48 = trunc i32 %shr to i8
  store i8 %conv48, ptr %x22, align 1
  %42 = load i32, ptr %x13, align 4
  %43 = load i8, ptr %x22, align 1
  %conv49 = zext i8 %43 to i32
  %add50 = add i32 %42, %conv49
  store i32 %add50, ptr %x23, align 4
  %44 = load i32, ptr %x12, align 4
  %45 = load i32, ptr %x23, align 4
  %add51 = add i32 %44, %45
  store i32 %add51, ptr %x24, align 4
  %46 = load i32, ptr %x11, align 4
  %47 = load i32, ptr %x24, align 4
  %add52 = add i32 %46, %47
  store i32 %add52, ptr %x25, align 4
  %48 = load i32, ptr %x25, align 4
  %and53 = and i32 %48, 67108863
  store i32 %and53, ptr %x26, align 4
  %49 = load i32, ptr %x25, align 4
  %shr54 = lshr i32 %49, 26
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, ptr %x27, align 1
  %50 = load i32, ptr %x10, align 4
  %51 = load i8, ptr %x27, align 1
  %conv56 = zext i8 %51 to i32
  %add57 = add i32 %50, %conv56
  store i32 %add57, ptr %x28, align 4
  %52 = load i32, ptr %x9, align 4
  %53 = load i32, ptr %x28, align 4
  %add58 = add i32 %52, %53
  store i32 %add58, ptr %x29, align 4
  %54 = load i32, ptr %x8, align 4
  %55 = load i32, ptr %x29, align 4
  %add59 = add i32 %54, %55
  store i32 %add59, ptr %x30, align 4
  %56 = load i32, ptr %x30, align 4
  %and60 = and i32 %56, 67108863
  store i32 %and60, ptr %x31, align 4
  %57 = load i32, ptr %x30, align 4
  %shr61 = lshr i32 %57, 26
  %conv62 = trunc i32 %shr61 to i8
  store i8 %conv62, ptr %x32, align 1
  %58 = load i32, ptr %x7, align 4
  %59 = load i8, ptr %x32, align 1
  %conv63 = zext i8 %59 to i32
  %add64 = add i32 %58, %conv63
  store i32 %add64, ptr %x33, align 4
  %60 = load i32, ptr %x6, align 4
  %61 = load i32, ptr %x33, align 4
  %add65 = add i32 %60, %61
  store i32 %add65, ptr %x34, align 4
  %62 = load i32, ptr %x5, align 4
  %63 = load i32, ptr %x34, align 4
  %add66 = add i32 %62, %63
  store i32 %add66, ptr %x35, align 4
  %64 = load i32, ptr %x3, align 4
  %65 = load i8, ptr %x4, align 1
  %conv67 = zext i8 %65 to i32
  %add68 = add i32 %64, %conv67
  store i32 %add68, ptr %x36, align 4
  %66 = load i32, ptr %x2, align 4
  %67 = load i32, ptr %x36, align 4
  %add69 = add i32 %66, %67
  store i32 %add69, ptr %x37, align 4
  %68 = load i32, ptr %x1, align 4
  %69 = load i32, ptr %x37, align 4
  %add70 = add i32 %68, %69
  store i32 %add70, ptr %x38, align 4
  %70 = load i32, ptr %x21, align 4
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %71, i64 0
  store i32 %70, ptr %arrayidx71, align 4
  %72 = load i32, ptr %x26, align 4
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %73, i64 1
  store i32 %72, ptr %arrayidx72, align 4
  %74 = load i32, ptr %x31, align 4
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %75, i64 2
  store i32 %74, ptr %arrayidx73, align 4
  %76 = load i32, ptr %x35, align 4
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %77, i64 3
  store i32 %76, ptr %arrayidx74, align 4
  %78 = load i32, ptr %x38, align 4
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %79, i64 4
  store i32 %78, ptr %arrayidx75, align 4
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
