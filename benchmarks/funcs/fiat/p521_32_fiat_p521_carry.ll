; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x20 = alloca i32, align 4
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
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  %shr = lshr i32 %2, 28
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  %add = add i32 %shr, %4
  store i32 %add, ptr %x2, align 4
  %5 = load i32, ptr %x2, align 4
  %shr2 = lshr i32 %5, 27
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %shr2, %7
  store i32 %add4, ptr %x3, align 4
  %8 = load i32, ptr %x3, align 4
  %shr5 = lshr i32 %8, 28
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %shr5, %10
  store i32 %add7, ptr %x4, align 4
  %11 = load i32, ptr %x4, align 4
  %shr8 = lshr i32 %11, 27
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %shr8, %13
  store i32 %add10, ptr %x5, align 4
  %14 = load i32, ptr %x5, align 4
  %shr11 = lshr i32 %14, 28
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %shr11, %16
  store i32 %add13, ptr %x6, align 4
  %17 = load i32, ptr %x6, align 4
  %shr14 = lshr i32 %17, 27
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %shr14, %19
  store i32 %add16, ptr %x7, align 4
  %20 = load i32, ptr %x7, align 4
  %shr17 = lshr i32 %20, 27
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %shr17, %22
  store i32 %add19, ptr %x8, align 4
  %23 = load i32, ptr %x8, align 4
  %shr20 = lshr i32 %23, 28
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %shr20, %25
  store i32 %add22, ptr %x9, align 4
  %26 = load i32, ptr %x9, align 4
  %shr23 = lshr i32 %26, 27
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %27, i64 9
  %28 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %shr23, %28
  store i32 %add25, ptr %x10, align 4
  %29 = load i32, ptr %x10, align 4
  %shr26 = lshr i32 %29, 28
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %30, i64 10
  %31 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %shr26, %31
  store i32 %add28, ptr %x11, align 4
  %32 = load i32, ptr %x11, align 4
  %shr29 = lshr i32 %32, 27
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %33, i64 11
  %34 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %shr29, %34
  store i32 %add31, ptr %x12, align 4
  %35 = load i32, ptr %x12, align 4
  %shr32 = lshr i32 %35, 28
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %36, i64 12
  %37 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %shr32, %37
  store i32 %add34, ptr %x13, align 4
  %38 = load i32, ptr %x13, align 4
  %shr35 = lshr i32 %38, 27
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %39, i64 13
  %40 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %shr35, %40
  store i32 %add37, ptr %x14, align 4
  %41 = load i32, ptr %x14, align 4
  %shr38 = lshr i32 %41, 27
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %42, i64 14
  %43 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %shr38, %43
  store i32 %add40, ptr %x15, align 4
  %44 = load i32, ptr %x15, align 4
  %shr41 = lshr i32 %44, 28
  %45 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %45, i64 15
  %46 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %shr41, %46
  store i32 %add43, ptr %x16, align 4
  %47 = load i32, ptr %x16, align 4
  %shr44 = lshr i32 %47, 27
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %48, i64 16
  %49 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %shr44, %49
  store i32 %add46, ptr %x17, align 4
  %50 = load i32, ptr %x17, align 4
  %shr47 = lshr i32 %50, 28
  %51 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %51, i64 17
  %52 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %shr47, %52
  store i32 %add49, ptr %x18, align 4
  %53 = load i32, ptr %x18, align 4
  %shr50 = lshr i32 %53, 27
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %54, i64 18
  %55 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %shr50, %55
  store i32 %add52, ptr %x19, align 4
  %56 = load i32, ptr %x1, align 4
  %and = and i32 %56, 268435455
  %57 = load i32, ptr %x19, align 4
  %shr53 = lshr i32 %57, 27
  %add54 = add i32 %and, %shr53
  store i32 %add54, ptr %x20, align 4
  %58 = load i32, ptr %x20, align 4
  %shr55 = lshr i32 %58, 28
  %conv = trunc i32 %shr55 to i8
  %conv56 = zext i8 %conv to i32
  %59 = load i32, ptr %x2, align 4
  %and57 = and i32 %59, 134217727
  %add58 = add i32 %conv56, %and57
  store i32 %add58, ptr %x21, align 4
  %60 = load i32, ptr %x20, align 4
  %and59 = and i32 %60, 268435455
  store i32 %and59, ptr %x22, align 4
  %61 = load i32, ptr %x21, align 4
  %and60 = and i32 %61, 134217727
  store i32 %and60, ptr %x23, align 4
  %62 = load i32, ptr %x21, align 4
  %shr61 = lshr i32 %62, 27
  %conv62 = trunc i32 %shr61 to i8
  %conv63 = zext i8 %conv62 to i32
  %63 = load i32, ptr %x3, align 4
  %and64 = and i32 %63, 268435455
  %add65 = add i32 %conv63, %and64
  store i32 %add65, ptr %x24, align 4
  %64 = load i32, ptr %x4, align 4
  %and66 = and i32 %64, 134217727
  store i32 %and66, ptr %x25, align 4
  %65 = load i32, ptr %x5, align 4
  %and67 = and i32 %65, 268435455
  store i32 %and67, ptr %x26, align 4
  %66 = load i32, ptr %x6, align 4
  %and68 = and i32 %66, 134217727
  store i32 %and68, ptr %x27, align 4
  %67 = load i32, ptr %x7, align 4
  %and69 = and i32 %67, 134217727
  store i32 %and69, ptr %x28, align 4
  %68 = load i32, ptr %x8, align 4
  %and70 = and i32 %68, 268435455
  store i32 %and70, ptr %x29, align 4
  %69 = load i32, ptr %x9, align 4
  %and71 = and i32 %69, 134217727
  store i32 %and71, ptr %x30, align 4
  %70 = load i32, ptr %x10, align 4
  %and72 = and i32 %70, 268435455
  store i32 %and72, ptr %x31, align 4
  %71 = load i32, ptr %x11, align 4
  %and73 = and i32 %71, 134217727
  store i32 %and73, ptr %x32, align 4
  %72 = load i32, ptr %x12, align 4
  %and74 = and i32 %72, 268435455
  store i32 %and74, ptr %x33, align 4
  %73 = load i32, ptr %x13, align 4
  %and75 = and i32 %73, 134217727
  store i32 %and75, ptr %x34, align 4
  %74 = load i32, ptr %x14, align 4
  %and76 = and i32 %74, 134217727
  store i32 %and76, ptr %x35, align 4
  %75 = load i32, ptr %x15, align 4
  %and77 = and i32 %75, 268435455
  store i32 %and77, ptr %x36, align 4
  %76 = load i32, ptr %x16, align 4
  %and78 = and i32 %76, 134217727
  store i32 %and78, ptr %x37, align 4
  %77 = load i32, ptr %x17, align 4
  %and79 = and i32 %77, 268435455
  store i32 %and79, ptr %x38, align 4
  %78 = load i32, ptr %x18, align 4
  %and80 = and i32 %78, 134217727
  store i32 %and80, ptr %x39, align 4
  %79 = load i32, ptr %x19, align 4
  %and81 = and i32 %79, 134217727
  store i32 %and81, ptr %x40, align 4
  %80 = load i32, ptr %x22, align 4
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %81, i64 0
  store i32 %80, ptr %arrayidx82, align 4
  %82 = load i32, ptr %x23, align 4
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %83, i64 1
  store i32 %82, ptr %arrayidx83, align 4
  %84 = load i32, ptr %x24, align 4
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %85, i64 2
  store i32 %84, ptr %arrayidx84, align 4
  %86 = load i32, ptr %x25, align 4
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %87, i64 3
  store i32 %86, ptr %arrayidx85, align 4
  %88 = load i32, ptr %x26, align 4
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %89, i64 4
  store i32 %88, ptr %arrayidx86, align 4
  %90 = load i32, ptr %x27, align 4
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %91, i64 5
  store i32 %90, ptr %arrayidx87, align 4
  %92 = load i32, ptr %x28, align 4
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %93, i64 6
  store i32 %92, ptr %arrayidx88, align 4
  %94 = load i32, ptr %x29, align 4
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %95, i64 7
  store i32 %94, ptr %arrayidx89, align 4
  %96 = load i32, ptr %x30, align 4
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %97, i64 8
  store i32 %96, ptr %arrayidx90, align 4
  %98 = load i32, ptr %x31, align 4
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %99, i64 9
  store i32 %98, ptr %arrayidx91, align 4
  %100 = load i32, ptr %x32, align 4
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %101, i64 10
  store i32 %100, ptr %arrayidx92, align 4
  %102 = load i32, ptr %x33, align 4
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %103, i64 11
  store i32 %102, ptr %arrayidx93, align 4
  %104 = load i32, ptr %x34, align 4
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %105, i64 12
  store i32 %104, ptr %arrayidx94, align 4
  %106 = load i32, ptr %x35, align 4
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %107, i64 13
  store i32 %106, ptr %arrayidx95, align 4
  %108 = load i32, ptr %x36, align 4
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %109, i64 14
  store i32 %108, ptr %arrayidx96, align 4
  %110 = load i32, ptr %x37, align 4
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %111, i64 15
  store i32 %110, ptr %arrayidx97, align 4
  %112 = load i32, ptr %x38, align 4
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %113, i64 16
  store i32 %112, ptr %arrayidx98, align 4
  %114 = load i32, ptr %x39, align 4
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %115, i64 17
  store i32 %114, ptr %arrayidx99, align 4
  %116 = load i32, ptr %x40, align 4
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %117, i64 18
  store i32 %116, ptr %arrayidx100, align 4
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
