; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i8, align 1
  %x6 = alloca i64, align 8
  %x7 = alloca i8, align 1
  %x8 = alloca i64, align 8
  %x9 = alloca i8, align 1
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i8, align 1
  %x19 = alloca i8, align 1
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
  %x22 = alloca i64, align 8
  %x23 = alloca i8, align 1
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i8, align 1
  %x32 = alloca i8, align 1
  %x33 = alloca i8, align 1
  %x34 = alloca i64, align 8
  %x35 = alloca i8, align 1
  %x36 = alloca i64, align 8
  %x37 = alloca i8, align 1
  %x38 = alloca i64, align 8
  %x39 = alloca i8, align 1
  %x40 = alloca i64, align 8
  %x41 = alloca i8, align 1
  %x42 = alloca i64, align 8
  %x43 = alloca i8, align 1
  %x44 = alloca i64, align 8
  %x45 = alloca i8, align 1
  %x46 = alloca i8, align 1
  %x47 = alloca i8, align 1
  %x48 = alloca i64, align 8
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i8, align 1
  %x52 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 3
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  %and = and i64 %8, 255
  %conv = trunc i64 %and to i8
  store i8 %conv, ptr %x5, align 1
  %9 = load i64, ptr %x4, align 8
  %shr = lshr i64 %9, 8
  store i64 %shr, ptr %x6, align 8
  %10 = load i64, ptr %x6, align 8
  %and4 = and i64 %10, 255
  %conv5 = trunc i64 %and4 to i8
  store i8 %conv5, ptr %x7, align 1
  %11 = load i64, ptr %x6, align 8
  %shr6 = lshr i64 %11, 8
  store i64 %shr6, ptr %x8, align 8
  %12 = load i64, ptr %x8, align 8
  %and7 = and i64 %12, 255
  %conv8 = trunc i64 %and7 to i8
  store i8 %conv8, ptr %x9, align 1
  %13 = load i64, ptr %x8, align 8
  %shr9 = lshr i64 %13, 8
  store i64 %shr9, ptr %x10, align 8
  %14 = load i64, ptr %x10, align 8
  %and10 = and i64 %14, 255
  %conv11 = trunc i64 %and10 to i8
  store i8 %conv11, ptr %x11, align 1
  %15 = load i64, ptr %x10, align 8
  %shr12 = lshr i64 %15, 8
  store i64 %shr12, ptr %x12, align 8
  %16 = load i64, ptr %x12, align 8
  %and13 = and i64 %16, 255
  %conv14 = trunc i64 %and13 to i8
  store i8 %conv14, ptr %x13, align 1
  %17 = load i64, ptr %x12, align 8
  %shr15 = lshr i64 %17, 8
  store i64 %shr15, ptr %x14, align 8
  %18 = load i64, ptr %x14, align 8
  %and16 = and i64 %18, 255
  %conv17 = trunc i64 %and16 to i8
  store i8 %conv17, ptr %x15, align 1
  %19 = load i64, ptr %x14, align 8
  %shr18 = lshr i64 %19, 8
  store i64 %shr18, ptr %x16, align 8
  %20 = load i64, ptr %x16, align 8
  %and19 = and i64 %20, 255
  %conv20 = trunc i64 %and19 to i8
  store i8 %conv20, ptr %x17, align 1
  %21 = load i64, ptr %x16, align 8
  %shr21 = lshr i64 %21, 8
  %conv22 = trunc i64 %shr21 to i8
  store i8 %conv22, ptr %x18, align 1
  %22 = load i64, ptr %x3, align 8
  %and23 = and i64 %22, 255
  %conv24 = trunc i64 %and23 to i8
  store i8 %conv24, ptr %x19, align 1
  %23 = load i64, ptr %x3, align 8
  %shr25 = lshr i64 %23, 8
  store i64 %shr25, ptr %x20, align 8
  %24 = load i64, ptr %x20, align 8
  %and26 = and i64 %24, 255
  %conv27 = trunc i64 %and26 to i8
  store i8 %conv27, ptr %x21, align 1
  %25 = load i64, ptr %x20, align 8
  %shr28 = lshr i64 %25, 8
  store i64 %shr28, ptr %x22, align 8
  %26 = load i64, ptr %x22, align 8
  %and29 = and i64 %26, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, ptr %x23, align 1
  %27 = load i64, ptr %x22, align 8
  %shr31 = lshr i64 %27, 8
  store i64 %shr31, ptr %x24, align 8
  %28 = load i64, ptr %x24, align 8
  %and32 = and i64 %28, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x25, align 1
  %29 = load i64, ptr %x24, align 8
  %shr34 = lshr i64 %29, 8
  store i64 %shr34, ptr %x26, align 8
  %30 = load i64, ptr %x26, align 8
  %and35 = and i64 %30, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x27, align 1
  %31 = load i64, ptr %x26, align 8
  %shr37 = lshr i64 %31, 8
  store i64 %shr37, ptr %x28, align 8
  %32 = load i64, ptr %x28, align 8
  %and38 = and i64 %32, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x29, align 1
  %33 = load i64, ptr %x28, align 8
  %shr40 = lshr i64 %33, 8
  store i64 %shr40, ptr %x30, align 8
  %34 = load i64, ptr %x30, align 8
  %and41 = and i64 %34, 255
  %conv42 = trunc i64 %and41 to i8
  store i8 %conv42, ptr %x31, align 1
  %35 = load i64, ptr %x30, align 8
  %shr43 = lshr i64 %35, 8
  %conv44 = trunc i64 %shr43 to i8
  store i8 %conv44, ptr %x32, align 1
  %36 = load i64, ptr %x2, align 8
  %and45 = and i64 %36, 255
  %conv46 = trunc i64 %and45 to i8
  store i8 %conv46, ptr %x33, align 1
  %37 = load i64, ptr %x2, align 8
  %shr47 = lshr i64 %37, 8
  store i64 %shr47, ptr %x34, align 8
  %38 = load i64, ptr %x34, align 8
  %and48 = and i64 %38, 255
  %conv49 = trunc i64 %and48 to i8
  store i8 %conv49, ptr %x35, align 1
  %39 = load i64, ptr %x34, align 8
  %shr50 = lshr i64 %39, 8
  store i64 %shr50, ptr %x36, align 8
  %40 = load i64, ptr %x36, align 8
  %and51 = and i64 %40, 255
  %conv52 = trunc i64 %and51 to i8
  store i8 %conv52, ptr %x37, align 1
  %41 = load i64, ptr %x36, align 8
  %shr53 = lshr i64 %41, 8
  store i64 %shr53, ptr %x38, align 8
  %42 = load i64, ptr %x38, align 8
  %and54 = and i64 %42, 255
  %conv55 = trunc i64 %and54 to i8
  store i8 %conv55, ptr %x39, align 1
  %43 = load i64, ptr %x38, align 8
  %shr56 = lshr i64 %43, 8
  store i64 %shr56, ptr %x40, align 8
  %44 = load i64, ptr %x40, align 8
  %and57 = and i64 %44, 255
  %conv58 = trunc i64 %and57 to i8
  store i8 %conv58, ptr %x41, align 1
  %45 = load i64, ptr %x40, align 8
  %shr59 = lshr i64 %45, 8
  store i64 %shr59, ptr %x42, align 8
  %46 = load i64, ptr %x42, align 8
  %and60 = and i64 %46, 255
  %conv61 = trunc i64 %and60 to i8
  store i8 %conv61, ptr %x43, align 1
  %47 = load i64, ptr %x42, align 8
  %shr62 = lshr i64 %47, 8
  store i64 %shr62, ptr %x44, align 8
  %48 = load i64, ptr %x44, align 8
  %and63 = and i64 %48, 255
  %conv64 = trunc i64 %and63 to i8
  store i8 %conv64, ptr %x45, align 1
  %49 = load i64, ptr %x44, align 8
  %shr65 = lshr i64 %49, 8
  %conv66 = trunc i64 %shr65 to i8
  store i8 %conv66, ptr %x46, align 1
  %50 = load i64, ptr %x1, align 8
  %and67 = and i64 %50, 255
  %conv68 = trunc i64 %and67 to i8
  store i8 %conv68, ptr %x47, align 1
  %51 = load i64, ptr %x1, align 8
  %shr69 = lshr i64 %51, 8
  store i64 %shr69, ptr %x48, align 8
  %52 = load i64, ptr %x48, align 8
  %and70 = and i64 %52, 255
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x49, align 1
  %53 = load i64, ptr %x48, align 8
  %shr72 = lshr i64 %53, 8
  store i64 %shr72, ptr %x50, align 8
  %54 = load i64, ptr %x50, align 8
  %and73 = and i64 %54, 255
  %conv74 = trunc i64 %and73 to i8
  store i8 %conv74, ptr %x51, align 1
  %55 = load i64, ptr %x50, align 8
  %shr75 = lshr i64 %55, 8
  %conv76 = trunc i64 %shr75 to i8
  store i8 %conv76, ptr %x52, align 1
  %56 = load i8, ptr %x5, align 1
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %57, i64 0
  store i8 %56, ptr %arrayidx77, align 1
  %58 = load i8, ptr %x7, align 1
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %58, ptr %arrayidx78, align 1
  %60 = load i8, ptr %x9, align 1
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %61, i64 2
  store i8 %60, ptr %arrayidx79, align 1
  %62 = load i8, ptr %x11, align 1
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %63, i64 3
  store i8 %62, ptr %arrayidx80, align 1
  %64 = load i8, ptr %x13, align 1
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %65, i64 4
  store i8 %64, ptr %arrayidx81, align 1
  %66 = load i8, ptr %x15, align 1
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %67, i64 5
  store i8 %66, ptr %arrayidx82, align 1
  %68 = load i8, ptr %x17, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %69, i64 6
  store i8 %68, ptr %arrayidx83, align 1
  %70 = load i8, ptr %x18, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %71, i64 7
  store i8 %70, ptr %arrayidx84, align 1
  %72 = load i8, ptr %x19, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %73, i64 8
  store i8 %72, ptr %arrayidx85, align 1
  %74 = load i8, ptr %x21, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %75, i64 9
  store i8 %74, ptr %arrayidx86, align 1
  %76 = load i8, ptr %x23, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %77, i64 10
  store i8 %76, ptr %arrayidx87, align 1
  %78 = load i8, ptr %x25, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %79, i64 11
  store i8 %78, ptr %arrayidx88, align 1
  %80 = load i8, ptr %x27, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %81, i64 12
  store i8 %80, ptr %arrayidx89, align 1
  %82 = load i8, ptr %x29, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %83, i64 13
  store i8 %82, ptr %arrayidx90, align 1
  %84 = load i8, ptr %x31, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %85, i64 14
  store i8 %84, ptr %arrayidx91, align 1
  %86 = load i8, ptr %x32, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %87, i64 15
  store i8 %86, ptr %arrayidx92, align 1
  %88 = load i8, ptr %x33, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %89, i64 16
  store i8 %88, ptr %arrayidx93, align 1
  %90 = load i8, ptr %x35, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %91, i64 17
  store i8 %90, ptr %arrayidx94, align 1
  %92 = load i8, ptr %x37, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %93, i64 18
  store i8 %92, ptr %arrayidx95, align 1
  %94 = load i8, ptr %x39, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %95, i64 19
  store i8 %94, ptr %arrayidx96, align 1
  %96 = load i8, ptr %x41, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %97, i64 20
  store i8 %96, ptr %arrayidx97, align 1
  %98 = load i8, ptr %x43, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %99, i64 21
  store i8 %98, ptr %arrayidx98, align 1
  %100 = load i8, ptr %x45, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %101, i64 22
  store i8 %100, ptr %arrayidx99, align 1
  %102 = load i8, ptr %x46, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %103, i64 23
  store i8 %102, ptr %arrayidx100, align 1
  %104 = load i8, ptr %x47, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %105, i64 24
  store i8 %104, ptr %arrayidx101, align 1
  %106 = load i8, ptr %x49, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %107, i64 25
  store i8 %106, ptr %arrayidx102, align 1
  %108 = load i8, ptr %x51, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %109, i64 26
  store i8 %108, ptr %arrayidx103, align 1
  %110 = load i8, ptr %x52, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %111, i64 27
  store i8 %110, ptr %arrayidx104, align 1
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
