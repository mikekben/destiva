; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_scalar_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x9 = alloca i8, align 1
  %x10 = alloca i32, align 4
  %x11 = alloca i8, align 1
  %x12 = alloca i32, align 4
  %x13 = alloca i8, align 1
  %x14 = alloca i8, align 1
  %x15 = alloca i8, align 1
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i8, align 1
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i8, align 1
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i8, align 1
  %x33 = alloca i8, align 1
  %x34 = alloca i32, align 4
  %x35 = alloca i8, align 1
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i8, align 1
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i8, align 1
  %x44 = alloca i8, align 1
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
  %x50 = alloca i8, align 1
  %x51 = alloca i8, align 1
  %x52 = alloca i32, align 4
  %x53 = alloca i8, align 1
  %x54 = alloca i32, align 4
  %x55 = alloca i8, align 1
  %x56 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 7
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 6
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 5
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 4
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 3
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 1
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 0
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load i32, ptr %x8, align 4
  %and = and i32 %16, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, ptr %x9, align 1
  %17 = load i32, ptr %x8, align 4
  %shr = lshr i32 %17, 8
  store i32 %shr, ptr %x10, align 4
  %18 = load i32, ptr %x10, align 4
  %and8 = and i32 %18, 255
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, ptr %x11, align 1
  %19 = load i32, ptr %x10, align 4
  %shr10 = lshr i32 %19, 8
  store i32 %shr10, ptr %x12, align 4
  %20 = load i32, ptr %x12, align 4
  %and11 = and i32 %20, 255
  %conv12 = trunc i32 %and11 to i8
  store i8 %conv12, ptr %x13, align 1
  %21 = load i32, ptr %x12, align 4
  %shr13 = lshr i32 %21, 8
  %conv14 = trunc i32 %shr13 to i8
  store i8 %conv14, ptr %x14, align 1
  %22 = load i32, ptr %x7, align 4
  %and15 = and i32 %22, 255
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, ptr %x15, align 1
  %23 = load i32, ptr %x7, align 4
  %shr17 = lshr i32 %23, 8
  store i32 %shr17, ptr %x16, align 4
  %24 = load i32, ptr %x16, align 4
  %and18 = and i32 %24, 255
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, ptr %x17, align 1
  %25 = load i32, ptr %x16, align 4
  %shr20 = lshr i32 %25, 8
  store i32 %shr20, ptr %x18, align 4
  %26 = load i32, ptr %x18, align 4
  %and21 = and i32 %26, 255
  %conv22 = trunc i32 %and21 to i8
  store i8 %conv22, ptr %x19, align 1
  %27 = load i32, ptr %x18, align 4
  %shr23 = lshr i32 %27, 8
  %conv24 = trunc i32 %shr23 to i8
  store i8 %conv24, ptr %x20, align 1
  %28 = load i32, ptr %x6, align 4
  %and25 = and i32 %28, 255
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, ptr %x21, align 1
  %29 = load i32, ptr %x6, align 4
  %shr27 = lshr i32 %29, 8
  store i32 %shr27, ptr %x22, align 4
  %30 = load i32, ptr %x22, align 4
  %and28 = and i32 %30, 255
  %conv29 = trunc i32 %and28 to i8
  store i8 %conv29, ptr %x23, align 1
  %31 = load i32, ptr %x22, align 4
  %shr30 = lshr i32 %31, 8
  store i32 %shr30, ptr %x24, align 4
  %32 = load i32, ptr %x24, align 4
  %and31 = and i32 %32, 255
  %conv32 = trunc i32 %and31 to i8
  store i8 %conv32, ptr %x25, align 1
  %33 = load i32, ptr %x24, align 4
  %shr33 = lshr i32 %33, 8
  %conv34 = trunc i32 %shr33 to i8
  store i8 %conv34, ptr %x26, align 1
  %34 = load i32, ptr %x5, align 4
  %and35 = and i32 %34, 255
  %conv36 = trunc i32 %and35 to i8
  store i8 %conv36, ptr %x27, align 1
  %35 = load i32, ptr %x5, align 4
  %shr37 = lshr i32 %35, 8
  store i32 %shr37, ptr %x28, align 4
  %36 = load i32, ptr %x28, align 4
  %and38 = and i32 %36, 255
  %conv39 = trunc i32 %and38 to i8
  store i8 %conv39, ptr %x29, align 1
  %37 = load i32, ptr %x28, align 4
  %shr40 = lshr i32 %37, 8
  store i32 %shr40, ptr %x30, align 4
  %38 = load i32, ptr %x30, align 4
  %and41 = and i32 %38, 255
  %conv42 = trunc i32 %and41 to i8
  store i8 %conv42, ptr %x31, align 1
  %39 = load i32, ptr %x30, align 4
  %shr43 = lshr i32 %39, 8
  %conv44 = trunc i32 %shr43 to i8
  store i8 %conv44, ptr %x32, align 1
  %40 = load i32, ptr %x4, align 4
  %and45 = and i32 %40, 255
  %conv46 = trunc i32 %and45 to i8
  store i8 %conv46, ptr %x33, align 1
  %41 = load i32, ptr %x4, align 4
  %shr47 = lshr i32 %41, 8
  store i32 %shr47, ptr %x34, align 4
  %42 = load i32, ptr %x34, align 4
  %and48 = and i32 %42, 255
  %conv49 = trunc i32 %and48 to i8
  store i8 %conv49, ptr %x35, align 1
  %43 = load i32, ptr %x34, align 4
  %shr50 = lshr i32 %43, 8
  store i32 %shr50, ptr %x36, align 4
  %44 = load i32, ptr %x36, align 4
  %and51 = and i32 %44, 255
  %conv52 = trunc i32 %and51 to i8
  store i8 %conv52, ptr %x37, align 1
  %45 = load i32, ptr %x36, align 4
  %shr53 = lshr i32 %45, 8
  %conv54 = trunc i32 %shr53 to i8
  store i8 %conv54, ptr %x38, align 1
  %46 = load i32, ptr %x3, align 4
  %and55 = and i32 %46, 255
  %conv56 = trunc i32 %and55 to i8
  store i8 %conv56, ptr %x39, align 1
  %47 = load i32, ptr %x3, align 4
  %shr57 = lshr i32 %47, 8
  store i32 %shr57, ptr %x40, align 4
  %48 = load i32, ptr %x40, align 4
  %and58 = and i32 %48, 255
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, ptr %x41, align 1
  %49 = load i32, ptr %x40, align 4
  %shr60 = lshr i32 %49, 8
  store i32 %shr60, ptr %x42, align 4
  %50 = load i32, ptr %x42, align 4
  %and61 = and i32 %50, 255
  %conv62 = trunc i32 %and61 to i8
  store i8 %conv62, ptr %x43, align 1
  %51 = load i32, ptr %x42, align 4
  %shr63 = lshr i32 %51, 8
  %conv64 = trunc i32 %shr63 to i8
  store i8 %conv64, ptr %x44, align 1
  %52 = load i32, ptr %x2, align 4
  %and65 = and i32 %52, 255
  %conv66 = trunc i32 %and65 to i8
  store i8 %conv66, ptr %x45, align 1
  %53 = load i32, ptr %x2, align 4
  %shr67 = lshr i32 %53, 8
  store i32 %shr67, ptr %x46, align 4
  %54 = load i32, ptr %x46, align 4
  %and68 = and i32 %54, 255
  %conv69 = trunc i32 %and68 to i8
  store i8 %conv69, ptr %x47, align 1
  %55 = load i32, ptr %x46, align 4
  %shr70 = lshr i32 %55, 8
  store i32 %shr70, ptr %x48, align 4
  %56 = load i32, ptr %x48, align 4
  %and71 = and i32 %56, 255
  %conv72 = trunc i32 %and71 to i8
  store i8 %conv72, ptr %x49, align 1
  %57 = load i32, ptr %x48, align 4
  %shr73 = lshr i32 %57, 8
  %conv74 = trunc i32 %shr73 to i8
  store i8 %conv74, ptr %x50, align 1
  %58 = load i32, ptr %x1, align 4
  %and75 = and i32 %58, 255
  %conv76 = trunc i32 %and75 to i8
  store i8 %conv76, ptr %x51, align 1
  %59 = load i32, ptr %x1, align 4
  %shr77 = lshr i32 %59, 8
  store i32 %shr77, ptr %x52, align 4
  %60 = load i32, ptr %x52, align 4
  %and78 = and i32 %60, 255
  %conv79 = trunc i32 %and78 to i8
  store i8 %conv79, ptr %x53, align 1
  %61 = load i32, ptr %x52, align 4
  %shr80 = lshr i32 %61, 8
  store i32 %shr80, ptr %x54, align 4
  %62 = load i32, ptr %x54, align 4
  %and81 = and i32 %62, 255
  %conv82 = trunc i32 %and81 to i8
  store i8 %conv82, ptr %x55, align 1
  %63 = load i32, ptr %x54, align 4
  %shr83 = lshr i32 %63, 8
  %conv84 = trunc i32 %shr83 to i8
  store i8 %conv84, ptr %x56, align 1
  %64 = load i8, ptr %x9, align 1
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %65, i64 0
  store i8 %64, ptr %arrayidx85, align 1
  %66 = load i8, ptr %x11, align 1
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %66, ptr %arrayidx86, align 1
  %68 = load i8, ptr %x13, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %68, ptr %arrayidx87, align 1
  %70 = load i8, ptr %x14, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %71, i64 3
  store i8 %70, ptr %arrayidx88, align 1
  %72 = load i8, ptr %x15, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %73, i64 4
  store i8 %72, ptr %arrayidx89, align 1
  %74 = load i8, ptr %x17, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %75, i64 5
  store i8 %74, ptr %arrayidx90, align 1
  %76 = load i8, ptr %x19, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %77, i64 6
  store i8 %76, ptr %arrayidx91, align 1
  %78 = load i8, ptr %x20, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %79, i64 7
  store i8 %78, ptr %arrayidx92, align 1
  %80 = load i8, ptr %x21, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %81, i64 8
  store i8 %80, ptr %arrayidx93, align 1
  %82 = load i8, ptr %x23, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %83, i64 9
  store i8 %82, ptr %arrayidx94, align 1
  %84 = load i8, ptr %x25, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %85, i64 10
  store i8 %84, ptr %arrayidx95, align 1
  %86 = load i8, ptr %x26, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %87, i64 11
  store i8 %86, ptr %arrayidx96, align 1
  %88 = load i8, ptr %x27, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %89, i64 12
  store i8 %88, ptr %arrayidx97, align 1
  %90 = load i8, ptr %x29, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %91, i64 13
  store i8 %90, ptr %arrayidx98, align 1
  %92 = load i8, ptr %x31, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %93, i64 14
  store i8 %92, ptr %arrayidx99, align 1
  %94 = load i8, ptr %x32, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %95, i64 15
  store i8 %94, ptr %arrayidx100, align 1
  %96 = load i8, ptr %x33, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %97, i64 16
  store i8 %96, ptr %arrayidx101, align 1
  %98 = load i8, ptr %x35, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %99, i64 17
  store i8 %98, ptr %arrayidx102, align 1
  %100 = load i8, ptr %x37, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %101, i64 18
  store i8 %100, ptr %arrayidx103, align 1
  %102 = load i8, ptr %x38, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %103, i64 19
  store i8 %102, ptr %arrayidx104, align 1
  %104 = load i8, ptr %x39, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %105, i64 20
  store i8 %104, ptr %arrayidx105, align 1
  %106 = load i8, ptr %x41, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %107, i64 21
  store i8 %106, ptr %arrayidx106, align 1
  %108 = load i8, ptr %x43, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %109, i64 22
  store i8 %108, ptr %arrayidx107, align 1
  %110 = load i8, ptr %x44, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %111, i64 23
  store i8 %110, ptr %arrayidx108, align 1
  %112 = load i8, ptr %x45, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %113, i64 24
  store i8 %112, ptr %arrayidx109, align 1
  %114 = load i8, ptr %x47, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %115, i64 25
  store i8 %114, ptr %arrayidx110, align 1
  %116 = load i8, ptr %x49, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %117, i64 26
  store i8 %116, ptr %arrayidx111, align 1
  %118 = load i8, ptr %x50, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %119, i64 27
  store i8 %118, ptr %arrayidx112, align 1
  %120 = load i8, ptr %x51, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %121, i64 28
  store i8 %120, ptr %arrayidx113, align 1
  %122 = load i8, ptr %x53, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %123, i64 29
  store i8 %122, ptr %arrayidx114, align 1
  %124 = load i8, ptr %x55, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %125, i64 30
  store i8 %124, ptr %arrayidx115, align 1
  %126 = load i8, ptr %x56, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %127, i64 31
  store i8 %126, ptr %arrayidx116, align 1
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
