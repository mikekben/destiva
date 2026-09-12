; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p448_solinas_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p448_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
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
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i32, align 4
  %x26 = alloca i32, align 4
  %x27 = alloca i32, align 4
  %x28 = alloca i32, align 4
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 7
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 15
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load i32, ptr %x2, align 4
  %shr = lshr i32 %4, 28
  store i32 %shr, ptr %x3, align 4
  %5 = load i32, ptr %x1, align 4
  %shr2 = lshr i32 %5, 28
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 8
  %7 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %shr2, %7
  %8 = load i32, ptr %x3, align 4
  %add4 = add i32 %add, %8
  store i32 %add4, ptr %x4, align 4
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx5, align 4
  %11 = load i32, ptr %x3, align 4
  %add6 = add i32 %10, %11
  store i32 %add6, ptr %x5, align 4
  %12 = load i32, ptr %x4, align 4
  %shr7 = lshr i32 %12, 28
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %13, i64 9
  %14 = load i32, ptr %arrayidx8, align 4
  %add9 = add i32 %shr7, %14
  store i32 %add9, ptr %x6, align 4
  %15 = load i32, ptr %x5, align 4
  %shr10 = lshr i32 %15, 28
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %shr10, %17
  store i32 %add12, ptr %x7, align 4
  %18 = load i32, ptr %x6, align 4
  %shr13 = lshr i32 %18, 28
  %19 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 10
  %20 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %shr13, %20
  store i32 %add15, ptr %x8, align 4
  %21 = load i32, ptr %x7, align 4
  %shr16 = lshr i32 %21, 28
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %22, i64 2
  %23 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %shr16, %23
  store i32 %add18, ptr %x9, align 4
  %24 = load i32, ptr %x8, align 4
  %shr19 = lshr i32 %24, 28
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %25, i64 11
  %26 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %shr19, %26
  store i32 %add21, ptr %x10, align 4
  %27 = load i32, ptr %x9, align 4
  %shr22 = lshr i32 %27, 28
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %28, i64 3
  %29 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %shr22, %29
  store i32 %add24, ptr %x11, align 4
  %30 = load i32, ptr %x10, align 4
  %shr25 = lshr i32 %30, 28
  %31 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %31, i64 12
  %32 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %shr25, %32
  store i32 %add27, ptr %x12, align 4
  %33 = load i32, ptr %x11, align 4
  %shr28 = lshr i32 %33, 28
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %34, i64 4
  %35 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %shr28, %35
  store i32 %add30, ptr %x13, align 4
  %36 = load i32, ptr %x12, align 4
  %shr31 = lshr i32 %36, 28
  %37 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %37, i64 13
  %38 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %shr31, %38
  store i32 %add33, ptr %x14, align 4
  %39 = load i32, ptr %x13, align 4
  %shr34 = lshr i32 %39, 28
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %40, i64 5
  %41 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %shr34, %41
  store i32 %add36, ptr %x15, align 4
  %42 = load i32, ptr %x14, align 4
  %shr37 = lshr i32 %42, 28
  %43 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %43, i64 14
  %44 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %shr37, %44
  store i32 %add39, ptr %x16, align 4
  %45 = load i32, ptr %x15, align 4
  %shr40 = lshr i32 %45, 28
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %46, i64 6
  %47 = load i32, ptr %arrayidx41, align 4
  %add42 = add i32 %shr40, %47
  store i32 %add42, ptr %x17, align 4
  %48 = load i32, ptr %x16, align 4
  %shr43 = lshr i32 %48, 28
  %49 = load i32, ptr %x2, align 4
  %and = and i32 %49, 268435455
  %add44 = add i32 %shr43, %and
  store i32 %add44, ptr %x18, align 4
  %50 = load i32, ptr %x17, align 4
  %shr45 = lshr i32 %50, 28
  %51 = load i32, ptr %x1, align 4
  %and46 = and i32 %51, 268435455
  %add47 = add i32 %shr45, %and46
  store i32 %add47, ptr %x19, align 4
  %52 = load i32, ptr %x18, align 4
  %shr48 = lshr i32 %52, 28
  %conv = trunc i32 %shr48 to i8
  store i8 %conv, ptr %x20, align 1
  %53 = load i32, ptr %x5, align 4
  %and49 = and i32 %53, 268435455
  %54 = load i8, ptr %x20, align 1
  %conv50 = zext i8 %54 to i32
  %add51 = add i32 %and49, %conv50
  store i32 %add51, ptr %x21, align 4
  %55 = load i32, ptr %x19, align 4
  %shr52 = lshr i32 %55, 28
  %conv53 = trunc i32 %shr52 to i8
  %conv54 = zext i8 %conv53 to i32
  %56 = load i32, ptr %x4, align 4
  %and55 = and i32 %56, 268435455
  %57 = load i8, ptr %x20, align 1
  %conv56 = zext i8 %57 to i32
  %add57 = add i32 %and55, %conv56
  %add58 = add i32 %conv54, %add57
  store i32 %add58, ptr %x22, align 4
  %58 = load i32, ptr %x21, align 4
  %and59 = and i32 %58, 268435455
  store i32 %and59, ptr %x23, align 4
  %59 = load i32, ptr %x21, align 4
  %shr60 = lshr i32 %59, 28
  %conv61 = trunc i32 %shr60 to i8
  %conv62 = zext i8 %conv61 to i32
  %60 = load i32, ptr %x7, align 4
  %and63 = and i32 %60, 268435455
  %add64 = add i32 %conv62, %and63
  store i32 %add64, ptr %x24, align 4
  %61 = load i32, ptr %x9, align 4
  %and65 = and i32 %61, 268435455
  store i32 %and65, ptr %x25, align 4
  %62 = load i32, ptr %x11, align 4
  %and66 = and i32 %62, 268435455
  store i32 %and66, ptr %x26, align 4
  %63 = load i32, ptr %x13, align 4
  %and67 = and i32 %63, 268435455
  store i32 %and67, ptr %x27, align 4
  %64 = load i32, ptr %x15, align 4
  %and68 = and i32 %64, 268435455
  store i32 %and68, ptr %x28, align 4
  %65 = load i32, ptr %x17, align 4
  %and69 = and i32 %65, 268435455
  store i32 %and69, ptr %x29, align 4
  %66 = load i32, ptr %x19, align 4
  %and70 = and i32 %66, 268435455
  store i32 %and70, ptr %x30, align 4
  %67 = load i32, ptr %x22, align 4
  %and71 = and i32 %67, 268435455
  store i32 %and71, ptr %x31, align 4
  %68 = load i32, ptr %x22, align 4
  %shr72 = lshr i32 %68, 28
  %conv73 = trunc i32 %shr72 to i8
  %conv74 = zext i8 %conv73 to i32
  %69 = load i32, ptr %x6, align 4
  %and75 = and i32 %69, 268435455
  %add76 = add i32 %conv74, %and75
  store i32 %add76, ptr %x32, align 4
  %70 = load i32, ptr %x8, align 4
  %and77 = and i32 %70, 268435455
  store i32 %and77, ptr %x33, align 4
  %71 = load i32, ptr %x10, align 4
  %and78 = and i32 %71, 268435455
  store i32 %and78, ptr %x34, align 4
  %72 = load i32, ptr %x12, align 4
  %and79 = and i32 %72, 268435455
  store i32 %and79, ptr %x35, align 4
  %73 = load i32, ptr %x14, align 4
  %and80 = and i32 %73, 268435455
  store i32 %and80, ptr %x36, align 4
  %74 = load i32, ptr %x16, align 4
  %and81 = and i32 %74, 268435455
  store i32 %and81, ptr %x37, align 4
  %75 = load i32, ptr %x18, align 4
  %and82 = and i32 %75, 268435455
  store i32 %and82, ptr %x38, align 4
  %76 = load i32, ptr %x23, align 4
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %77, i64 0
  store i32 %76, ptr %arrayidx83, align 4
  %78 = load i32, ptr %x24, align 4
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %79, i64 1
  store i32 %78, ptr %arrayidx84, align 4
  %80 = load i32, ptr %x25, align 4
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %81, i64 2
  store i32 %80, ptr %arrayidx85, align 4
  %82 = load i32, ptr %x26, align 4
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %83, i64 3
  store i32 %82, ptr %arrayidx86, align 4
  %84 = load i32, ptr %x27, align 4
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %85, i64 4
  store i32 %84, ptr %arrayidx87, align 4
  %86 = load i32, ptr %x28, align 4
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %87, i64 5
  store i32 %86, ptr %arrayidx88, align 4
  %88 = load i32, ptr %x29, align 4
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %89, i64 6
  store i32 %88, ptr %arrayidx89, align 4
  %90 = load i32, ptr %x30, align 4
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %91, i64 7
  store i32 %90, ptr %arrayidx90, align 4
  %92 = load i32, ptr %x31, align 4
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %93, i64 8
  store i32 %92, ptr %arrayidx91, align 4
  %94 = load i32, ptr %x32, align 4
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %95, i64 9
  store i32 %94, ptr %arrayidx92, align 4
  %96 = load i32, ptr %x33, align 4
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %97, i64 10
  store i32 %96, ptr %arrayidx93, align 4
  %98 = load i32, ptr %x34, align 4
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %99, i64 11
  store i32 %98, ptr %arrayidx94, align 4
  %100 = load i32, ptr %x35, align 4
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %101, i64 12
  store i32 %100, ptr %arrayidx95, align 4
  %102 = load i32, ptr %x36, align 4
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %103, i64 13
  store i32 %102, ptr %arrayidx96, align 4
  %104 = load i32, ptr %x37, align 4
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %105, i64 14
  store i32 %104, ptr %arrayidx97, align 4
  %106 = load i32, ptr %x38, align 4
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %107, i64 15
  store i32 %106, ptr %arrayidx98, align 4
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
