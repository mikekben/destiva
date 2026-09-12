; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i8, align 1
  %x14 = alloca i8, align 1
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i8, align 1
  %x19 = alloca i8, align 1
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i8, align 1
  %x26 = alloca i8, align 1
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i8, align 1
  %x31 = alloca i8, align 1
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i8, align 1
  %x35 = alloca i32, align 4
  %x36 = alloca i8, align 1
  %x37 = alloca i8, align 1
  %x38 = alloca i8, align 1
  %x39 = alloca i32, align 4
  %x40 = alloca i8, align 1
  %x41 = alloca i32, align 4
  %x42 = alloca i8, align 1
  %x43 = alloca i8, align 1
  %x44 = alloca i8, align 1
  %x45 = alloca i32, align 4
  %x46 = alloca i8, align 1
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 6
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 5
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 4
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 2
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 0
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load i32, ptr %x7, align 4
  %and = and i32 %14, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, ptr %x8, align 1
  %15 = load i32, ptr %x7, align 4
  %shr = lshr i32 %15, 8
  store i32 %shr, ptr %x9, align 4
  %16 = load i32, ptr %x9, align 4
  %and7 = and i32 %16, 255
  %conv8 = trunc i32 %and7 to i8
  store i8 %conv8, ptr %x10, align 1
  %17 = load i32, ptr %x9, align 4
  %shr9 = lshr i32 %17, 8
  store i32 %shr9, ptr %x11, align 4
  %18 = load i32, ptr %x11, align 4
  %and10 = and i32 %18, 255
  %conv11 = trunc i32 %and10 to i8
  store i8 %conv11, ptr %x12, align 1
  %19 = load i32, ptr %x11, align 4
  %shr12 = lshr i32 %19, 8
  %conv13 = trunc i32 %shr12 to i8
  store i8 %conv13, ptr %x13, align 1
  %20 = load i32, ptr %x6, align 4
  %and14 = and i32 %20, 255
  %conv15 = trunc i32 %and14 to i8
  store i8 %conv15, ptr %x14, align 1
  %21 = load i32, ptr %x6, align 4
  %shr16 = lshr i32 %21, 8
  store i32 %shr16, ptr %x15, align 4
  %22 = load i32, ptr %x15, align 4
  %and17 = and i32 %22, 255
  %conv18 = trunc i32 %and17 to i8
  store i8 %conv18, ptr %x16, align 1
  %23 = load i32, ptr %x15, align 4
  %shr19 = lshr i32 %23, 8
  store i32 %shr19, ptr %x17, align 4
  %24 = load i32, ptr %x17, align 4
  %and20 = and i32 %24, 255
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, ptr %x18, align 1
  %25 = load i32, ptr %x17, align 4
  %shr22 = lshr i32 %25, 8
  %conv23 = trunc i32 %shr22 to i8
  store i8 %conv23, ptr %x19, align 1
  %26 = load i32, ptr %x5, align 4
  %and24 = and i32 %26, 255
  %conv25 = trunc i32 %and24 to i8
  store i8 %conv25, ptr %x20, align 1
  %27 = load i32, ptr %x5, align 4
  %shr26 = lshr i32 %27, 8
  store i32 %shr26, ptr %x21, align 4
  %28 = load i32, ptr %x21, align 4
  %and27 = and i32 %28, 255
  %conv28 = trunc i32 %and27 to i8
  store i8 %conv28, ptr %x22, align 1
  %29 = load i32, ptr %x21, align 4
  %shr29 = lshr i32 %29, 8
  store i32 %shr29, ptr %x23, align 4
  %30 = load i32, ptr %x23, align 4
  %and30 = and i32 %30, 255
  %conv31 = trunc i32 %and30 to i8
  store i8 %conv31, ptr %x24, align 1
  %31 = load i32, ptr %x23, align 4
  %shr32 = lshr i32 %31, 8
  %conv33 = trunc i32 %shr32 to i8
  store i8 %conv33, ptr %x25, align 1
  %32 = load i32, ptr %x4, align 4
  %and34 = and i32 %32, 255
  %conv35 = trunc i32 %and34 to i8
  store i8 %conv35, ptr %x26, align 1
  %33 = load i32, ptr %x4, align 4
  %shr36 = lshr i32 %33, 8
  store i32 %shr36, ptr %x27, align 4
  %34 = load i32, ptr %x27, align 4
  %and37 = and i32 %34, 255
  %conv38 = trunc i32 %and37 to i8
  store i8 %conv38, ptr %x28, align 1
  %35 = load i32, ptr %x27, align 4
  %shr39 = lshr i32 %35, 8
  store i32 %shr39, ptr %x29, align 4
  %36 = load i32, ptr %x29, align 4
  %and40 = and i32 %36, 255
  %conv41 = trunc i32 %and40 to i8
  store i8 %conv41, ptr %x30, align 1
  %37 = load i32, ptr %x29, align 4
  %shr42 = lshr i32 %37, 8
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, ptr %x31, align 1
  %38 = load i32, ptr %x3, align 4
  %and44 = and i32 %38, 255
  %conv45 = trunc i32 %and44 to i8
  store i8 %conv45, ptr %x32, align 1
  %39 = load i32, ptr %x3, align 4
  %shr46 = lshr i32 %39, 8
  store i32 %shr46, ptr %x33, align 4
  %40 = load i32, ptr %x33, align 4
  %and47 = and i32 %40, 255
  %conv48 = trunc i32 %and47 to i8
  store i8 %conv48, ptr %x34, align 1
  %41 = load i32, ptr %x33, align 4
  %shr49 = lshr i32 %41, 8
  store i32 %shr49, ptr %x35, align 4
  %42 = load i32, ptr %x35, align 4
  %and50 = and i32 %42, 255
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, ptr %x36, align 1
  %43 = load i32, ptr %x35, align 4
  %shr52 = lshr i32 %43, 8
  %conv53 = trunc i32 %shr52 to i8
  store i8 %conv53, ptr %x37, align 1
  %44 = load i32, ptr %x2, align 4
  %and54 = and i32 %44, 255
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, ptr %x38, align 1
  %45 = load i32, ptr %x2, align 4
  %shr56 = lshr i32 %45, 8
  store i32 %shr56, ptr %x39, align 4
  %46 = load i32, ptr %x39, align 4
  %and57 = and i32 %46, 255
  %conv58 = trunc i32 %and57 to i8
  store i8 %conv58, ptr %x40, align 1
  %47 = load i32, ptr %x39, align 4
  %shr59 = lshr i32 %47, 8
  store i32 %shr59, ptr %x41, align 4
  %48 = load i32, ptr %x41, align 4
  %and60 = and i32 %48, 255
  %conv61 = trunc i32 %and60 to i8
  store i8 %conv61, ptr %x42, align 1
  %49 = load i32, ptr %x41, align 4
  %shr62 = lshr i32 %49, 8
  %conv63 = trunc i32 %shr62 to i8
  store i8 %conv63, ptr %x43, align 1
  %50 = load i32, ptr %x1, align 4
  %and64 = and i32 %50, 255
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, ptr %x44, align 1
  %51 = load i32, ptr %x1, align 4
  %shr66 = lshr i32 %51, 8
  store i32 %shr66, ptr %x45, align 4
  %52 = load i32, ptr %x45, align 4
  %and67 = and i32 %52, 255
  %conv68 = trunc i32 %and67 to i8
  store i8 %conv68, ptr %x46, align 1
  %53 = load i32, ptr %x45, align 4
  %shr69 = lshr i32 %53, 8
  store i32 %shr69, ptr %x47, align 4
  %54 = load i32, ptr %x47, align 4
  %and70 = and i32 %54, 255
  %conv71 = trunc i32 %and70 to i8
  store i8 %conv71, ptr %x48, align 1
  %55 = load i32, ptr %x47, align 4
  %shr72 = lshr i32 %55, 8
  %conv73 = trunc i32 %shr72 to i8
  store i8 %conv73, ptr %x49, align 1
  %56 = load i8, ptr %x8, align 1
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %57, i64 0
  store i8 %56, ptr %arrayidx74, align 1
  %58 = load i8, ptr %x10, align 1
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %58, ptr %arrayidx75, align 1
  %60 = load i8, ptr %x12, align 1
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %61, i64 2
  store i8 %60, ptr %arrayidx76, align 1
  %62 = load i8, ptr %x13, align 1
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %63, i64 3
  store i8 %62, ptr %arrayidx77, align 1
  %64 = load i8, ptr %x14, align 1
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %65, i64 4
  store i8 %64, ptr %arrayidx78, align 1
  %66 = load i8, ptr %x16, align 1
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %67, i64 5
  store i8 %66, ptr %arrayidx79, align 1
  %68 = load i8, ptr %x18, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %69, i64 6
  store i8 %68, ptr %arrayidx80, align 1
  %70 = load i8, ptr %x19, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %71, i64 7
  store i8 %70, ptr %arrayidx81, align 1
  %72 = load i8, ptr %x20, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %73, i64 8
  store i8 %72, ptr %arrayidx82, align 1
  %74 = load i8, ptr %x22, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %75, i64 9
  store i8 %74, ptr %arrayidx83, align 1
  %76 = load i8, ptr %x24, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %77, i64 10
  store i8 %76, ptr %arrayidx84, align 1
  %78 = load i8, ptr %x25, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %79, i64 11
  store i8 %78, ptr %arrayidx85, align 1
  %80 = load i8, ptr %x26, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %81, i64 12
  store i8 %80, ptr %arrayidx86, align 1
  %82 = load i8, ptr %x28, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %83, i64 13
  store i8 %82, ptr %arrayidx87, align 1
  %84 = load i8, ptr %x30, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %85, i64 14
  store i8 %84, ptr %arrayidx88, align 1
  %86 = load i8, ptr %x31, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %87, i64 15
  store i8 %86, ptr %arrayidx89, align 1
  %88 = load i8, ptr %x32, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %89, i64 16
  store i8 %88, ptr %arrayidx90, align 1
  %90 = load i8, ptr %x34, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %91, i64 17
  store i8 %90, ptr %arrayidx91, align 1
  %92 = load i8, ptr %x36, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %93, i64 18
  store i8 %92, ptr %arrayidx92, align 1
  %94 = load i8, ptr %x37, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %95, i64 19
  store i8 %94, ptr %arrayidx93, align 1
  %96 = load i8, ptr %x38, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %97, i64 20
  store i8 %96, ptr %arrayidx94, align 1
  %98 = load i8, ptr %x40, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %99, i64 21
  store i8 %98, ptr %arrayidx95, align 1
  %100 = load i8, ptr %x42, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %101, i64 22
  store i8 %100, ptr %arrayidx96, align 1
  %102 = load i8, ptr %x43, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %103, i64 23
  store i8 %102, ptr %arrayidx97, align 1
  %104 = load i8, ptr %x44, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %105, i64 24
  store i8 %104, ptr %arrayidx98, align 1
  %106 = load i8, ptr %x46, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %107, i64 25
  store i8 %106, ptr %arrayidx99, align 1
  %108 = load i8, ptr %x48, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %109, i64 26
  store i8 %108, ptr %arrayidx100, align 1
  %110 = load i8, ptr %x49, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %111, i64 27
  store i8 %110, ptr %arrayidx101, align 1
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
