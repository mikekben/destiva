; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p448_solinas_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p448_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
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
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 3
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 7
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load i64, ptr %x2, align 8
  %shr = lshr i64 %4, 56
  store i64 %shr, ptr %x3, align 8
  %5 = load i64, ptr %x1, align 8
  %shr2 = lshr i64 %5, 56
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 4
  %7 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %shr2, %7
  %8 = load i64, ptr %x3, align 8
  %add4 = add i64 %add, %8
  store i64 %add4, ptr %x4, align 8
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx5, align 8
  %11 = load i64, ptr %x3, align 8
  %add6 = add i64 %10, %11
  store i64 %add6, ptr %x5, align 8
  %12 = load i64, ptr %x4, align 8
  %shr7 = lshr i64 %12, 56
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %13, i64 5
  %14 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %shr7, %14
  store i64 %add9, ptr %x6, align 8
  %15 = load i64, ptr %x5, align 8
  %shr10 = lshr i64 %15, 56
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %shr10, %17
  store i64 %add12, ptr %x7, align 8
  %18 = load i64, ptr %x6, align 8
  %shr13 = lshr i64 %18, 56
  %19 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %19, i64 6
  %20 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 %shr13, %20
  store i64 %add15, ptr %x8, align 8
  %21 = load i64, ptr %x7, align 8
  %shr16 = lshr i64 %21, 56
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %22, i64 2
  %23 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %shr16, %23
  store i64 %add18, ptr %x9, align 8
  %24 = load i64, ptr %x8, align 8
  %shr19 = lshr i64 %24, 56
  %25 = load i64, ptr %x2, align 8
  %and = and i64 %25, 72057594037927935
  %add20 = add i64 %shr19, %and
  store i64 %add20, ptr %x10, align 8
  %26 = load i64, ptr %x9, align 8
  %shr21 = lshr i64 %26, 56
  %27 = load i64, ptr %x1, align 8
  %and22 = and i64 %27, 72057594037927935
  %add23 = add i64 %shr21, %and22
  store i64 %add23, ptr %x11, align 8
  %28 = load i64, ptr %x10, align 8
  %shr24 = lshr i64 %28, 56
  %conv = trunc i64 %shr24 to i8
  store i8 %conv, ptr %x12, align 1
  %29 = load i64, ptr %x5, align 8
  %and25 = and i64 %29, 72057594037927935
  %30 = load i8, ptr %x12, align 1
  %conv26 = zext i8 %30 to i64
  %add27 = add i64 %and25, %conv26
  store i64 %add27, ptr %x13, align 8
  %31 = load i64, ptr %x11, align 8
  %shr28 = lshr i64 %31, 56
  %conv29 = trunc i64 %shr28 to i8
  %conv30 = zext i8 %conv29 to i64
  %32 = load i64, ptr %x4, align 8
  %and31 = and i64 %32, 72057594037927935
  %33 = load i8, ptr %x12, align 1
  %conv32 = zext i8 %33 to i64
  %add33 = add i64 %and31, %conv32
  %add34 = add i64 %conv30, %add33
  store i64 %add34, ptr %x14, align 8
  %34 = load i64, ptr %x13, align 8
  %and35 = and i64 %34, 72057594037927935
  store i64 %and35, ptr %x15, align 8
  %35 = load i64, ptr %x13, align 8
  %shr36 = lshr i64 %35, 56
  %conv37 = trunc i64 %shr36 to i8
  %conv38 = zext i8 %conv37 to i64
  %36 = load i64, ptr %x7, align 8
  %and39 = and i64 %36, 72057594037927935
  %add40 = add i64 %conv38, %and39
  store i64 %add40, ptr %x16, align 8
  %37 = load i64, ptr %x9, align 8
  %and41 = and i64 %37, 72057594037927935
  store i64 %and41, ptr %x17, align 8
  %38 = load i64, ptr %x11, align 8
  %and42 = and i64 %38, 72057594037927935
  store i64 %and42, ptr %x18, align 8
  %39 = load i64, ptr %x14, align 8
  %and43 = and i64 %39, 72057594037927935
  store i64 %and43, ptr %x19, align 8
  %40 = load i64, ptr %x14, align 8
  %shr44 = lshr i64 %40, 56
  %conv45 = trunc i64 %shr44 to i8
  %conv46 = zext i8 %conv45 to i64
  %41 = load i64, ptr %x6, align 8
  %and47 = and i64 %41, 72057594037927935
  %add48 = add i64 %conv46, %and47
  store i64 %add48, ptr %x20, align 8
  %42 = load i64, ptr %x8, align 8
  %and49 = and i64 %42, 72057594037927935
  store i64 %and49, ptr %x21, align 8
  %43 = load i64, ptr %x10, align 8
  %and50 = and i64 %43, 72057594037927935
  store i64 %and50, ptr %x22, align 8
  %44 = load i64, ptr %x15, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %45, i64 0
  store i64 %44, ptr %arrayidx51, align 8
  %46 = load i64, ptr %x16, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %47, i64 1
  store i64 %46, ptr %arrayidx52, align 8
  %48 = load i64, ptr %x17, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %49, i64 2
  store i64 %48, ptr %arrayidx53, align 8
  %50 = load i64, ptr %x18, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %51, i64 3
  store i64 %50, ptr %arrayidx54, align 8
  %52 = load i64, ptr %x19, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %53, i64 4
  store i64 %52, ptr %arrayidx55, align 8
  %54 = load i64, ptr %x20, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %55, i64 5
  store i64 %54, ptr %arrayidx56, align 8
  %56 = load i64, ptr %x21, align 8
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %57, i64 6
  store i64 %56, ptr %arrayidx57, align 8
  %58 = load i64, ptr %x22, align 8
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %59, i64 7
  store i64 %58, ptr %arrayidx58, align 8
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
