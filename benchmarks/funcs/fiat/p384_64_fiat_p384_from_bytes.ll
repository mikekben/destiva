; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  %x53 = alloca i64, align 8
  %x54 = alloca i64, align 8
  %x55 = alloca i64, align 8
  %x56 = alloca i64, align 8
  %x57 = alloca i64, align 8
  %x58 = alloca i64, align 8
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i64, align 8
  %x85 = alloca i64, align 8
  %x86 = alloca i64, align 8
  %x87 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 47
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 56
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 46
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 48
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 45
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 40
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 44
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 32
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 43
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 24
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 42
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 16
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 41
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %shl18 = shl i64 %conv17, 8
  store i64 %shl18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i8, ptr %arrayidx19, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 39
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 56
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 38
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 48
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 37
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 40
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 36
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i64
  %shl31 = shl i64 %conv30, 32
  store i64 %shl31, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 35
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i64
  %shl34 = shl i64 %conv33, 24
  store i64 %shl34, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 34
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i64
  %shl37 = shl i64 %conv36, 16
  store i64 %shl37, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 33
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i64
  %shl40 = shl i64 %conv39, 8
  store i64 %shl40, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 32
  %31 = load i8, ptr %arrayidx41, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 31
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i64
  %shl44 = shl i64 %conv43, 56
  store i64 %shl44, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 30
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i64
  %shl47 = shl i64 %conv46, 48
  store i64 %shl47, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 29
  %37 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %37 to i64
  %shl50 = shl i64 %conv49, 40
  store i64 %shl50, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 28
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i64
  %shl53 = shl i64 %conv52, 32
  store i64 %shl53, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 27
  %41 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %41 to i64
  %shl56 = shl i64 %conv55, 24
  store i64 %shl56, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %42, i64 26
  %43 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %43 to i64
  %shl59 = shl i64 %conv58, 16
  store i64 %shl59, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %44, i64 25
  %45 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %45 to i64
  %shl62 = shl i64 %conv61, 8
  store i64 %shl62, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %46, i64 24
  %47 = load i8, ptr %arrayidx63, align 1
  store i8 %47, ptr %x24, align 1
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %48, i64 23
  %49 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %49 to i64
  %shl66 = shl i64 %conv65, 56
  store i64 %shl66, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 22
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i64
  %shl69 = shl i64 %conv68, 48
  store i64 %shl69, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 21
  %53 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %53 to i64
  %shl72 = shl i64 %conv71, 40
  store i64 %shl72, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 20
  %55 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %55 to i64
  %shl75 = shl i64 %conv74, 32
  store i64 %shl75, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %56, i64 19
  %57 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %57 to i64
  %shl78 = shl i64 %conv77, 24
  store i64 %shl78, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %58, i64 18
  %59 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %59 to i64
  %shl81 = shl i64 %conv80, 16
  store i64 %shl81, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %60, i64 17
  %61 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %61 to i64
  %shl84 = shl i64 %conv83, 8
  store i64 %shl84, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %62, i64 16
  %63 = load i8, ptr %arrayidx85, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %64, i64 15
  %65 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %65 to i64
  %shl88 = shl i64 %conv87, 56
  store i64 %shl88, ptr %x33, align 8
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %66, i64 14
  %67 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %67 to i64
  %shl91 = shl i64 %conv90, 48
  store i64 %shl91, ptr %x34, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %68, i64 13
  %69 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %69 to i64
  %shl94 = shl i64 %conv93, 40
  store i64 %shl94, ptr %x35, align 8
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %70, i64 12
  %71 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %71 to i64
  %shl97 = shl i64 %conv96, 32
  store i64 %shl97, ptr %x36, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %72, i64 11
  %73 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %73 to i64
  %shl100 = shl i64 %conv99, 24
  store i64 %shl100, ptr %x37, align 8
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %74, i64 10
  %75 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %75 to i64
  %shl103 = shl i64 %conv102, 16
  store i64 %shl103, ptr %x38, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %76, i64 9
  %77 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %77 to i64
  %shl106 = shl i64 %conv105, 8
  store i64 %shl106, ptr %x39, align 8
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %78, i64 8
  %79 = load i8, ptr %arrayidx107, align 1
  store i8 %79, ptr %x40, align 1
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %80, i64 7
  %81 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %81 to i64
  %shl110 = shl i64 %conv109, 56
  store i64 %shl110, ptr %x41, align 8
  %82 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %82, i64 6
  %83 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %83 to i64
  %shl113 = shl i64 %conv112, 48
  store i64 %shl113, ptr %x42, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %84, i64 5
  %85 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %85 to i64
  %shl116 = shl i64 %conv115, 40
  store i64 %shl116, ptr %x43, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %86, i64 4
  %87 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %87 to i64
  %shl119 = shl i64 %conv118, 32
  store i64 %shl119, ptr %x44, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %88, i64 3
  %89 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %89 to i64
  %shl122 = shl i64 %conv121, 24
  store i64 %shl122, ptr %x45, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %90, i64 2
  %91 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %91 to i64
  %shl125 = shl i64 %conv124, 16
  store i64 %shl125, ptr %x46, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %92, i64 1
  %93 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %93 to i64
  %shl128 = shl i64 %conv127, 8
  store i64 %shl128, ptr %x47, align 8
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx129, align 1
  store i8 %95, ptr %x48, align 1
  %96 = load i64, ptr %x47, align 8
  %97 = load i8, ptr %x48, align 1
  %conv130 = zext i8 %97 to i64
  %add = add i64 %96, %conv130
  store i64 %add, ptr %x49, align 8
  %98 = load i64, ptr %x46, align 8
  %99 = load i64, ptr %x49, align 8
  %add131 = add i64 %98, %99
  store i64 %add131, ptr %x50, align 8
  %100 = load i64, ptr %x45, align 8
  %101 = load i64, ptr %x50, align 8
  %add132 = add i64 %100, %101
  store i64 %add132, ptr %x51, align 8
  %102 = load i64, ptr %x44, align 8
  %103 = load i64, ptr %x51, align 8
  %add133 = add i64 %102, %103
  store i64 %add133, ptr %x52, align 8
  %104 = load i64, ptr %x43, align 8
  %105 = load i64, ptr %x52, align 8
  %add134 = add i64 %104, %105
  store i64 %add134, ptr %x53, align 8
  %106 = load i64, ptr %x42, align 8
  %107 = load i64, ptr %x53, align 8
  %add135 = add i64 %106, %107
  store i64 %add135, ptr %x54, align 8
  %108 = load i64, ptr %x41, align 8
  %109 = load i64, ptr %x54, align 8
  %add136 = add i64 %108, %109
  store i64 %add136, ptr %x55, align 8
  %110 = load i64, ptr %x39, align 8
  %111 = load i8, ptr %x40, align 1
  %conv137 = zext i8 %111 to i64
  %add138 = add i64 %110, %conv137
  store i64 %add138, ptr %x56, align 8
  %112 = load i64, ptr %x38, align 8
  %113 = load i64, ptr %x56, align 8
  %add139 = add i64 %112, %113
  store i64 %add139, ptr %x57, align 8
  %114 = load i64, ptr %x37, align 8
  %115 = load i64, ptr %x57, align 8
  %add140 = add i64 %114, %115
  store i64 %add140, ptr %x58, align 8
  %116 = load i64, ptr %x36, align 8
  %117 = load i64, ptr %x58, align 8
  %add141 = add i64 %116, %117
  store i64 %add141, ptr %x59, align 8
  %118 = load i64, ptr %x35, align 8
  %119 = load i64, ptr %x59, align 8
  %add142 = add i64 %118, %119
  store i64 %add142, ptr %x60, align 8
  %120 = load i64, ptr %x34, align 8
  %121 = load i64, ptr %x60, align 8
  %add143 = add i64 %120, %121
  store i64 %add143, ptr %x61, align 8
  %122 = load i64, ptr %x33, align 8
  %123 = load i64, ptr %x61, align 8
  %add144 = add i64 %122, %123
  store i64 %add144, ptr %x62, align 8
  %124 = load i64, ptr %x31, align 8
  %125 = load i8, ptr %x32, align 1
  %conv145 = zext i8 %125 to i64
  %add146 = add i64 %124, %conv145
  store i64 %add146, ptr %x63, align 8
  %126 = load i64, ptr %x30, align 8
  %127 = load i64, ptr %x63, align 8
  %add147 = add i64 %126, %127
  store i64 %add147, ptr %x64, align 8
  %128 = load i64, ptr %x29, align 8
  %129 = load i64, ptr %x64, align 8
  %add148 = add i64 %128, %129
  store i64 %add148, ptr %x65, align 8
  %130 = load i64, ptr %x28, align 8
  %131 = load i64, ptr %x65, align 8
  %add149 = add i64 %130, %131
  store i64 %add149, ptr %x66, align 8
  %132 = load i64, ptr %x27, align 8
  %133 = load i64, ptr %x66, align 8
  %add150 = add i64 %132, %133
  store i64 %add150, ptr %x67, align 8
  %134 = load i64, ptr %x26, align 8
  %135 = load i64, ptr %x67, align 8
  %add151 = add i64 %134, %135
  store i64 %add151, ptr %x68, align 8
  %136 = load i64, ptr %x25, align 8
  %137 = load i64, ptr %x68, align 8
  %add152 = add i64 %136, %137
  store i64 %add152, ptr %x69, align 8
  %138 = load i64, ptr %x23, align 8
  %139 = load i8, ptr %x24, align 1
  %conv153 = zext i8 %139 to i64
  %add154 = add i64 %138, %conv153
  store i64 %add154, ptr %x70, align 8
  %140 = load i64, ptr %x22, align 8
  %141 = load i64, ptr %x70, align 8
  %add155 = add i64 %140, %141
  store i64 %add155, ptr %x71, align 8
  %142 = load i64, ptr %x21, align 8
  %143 = load i64, ptr %x71, align 8
  %add156 = add i64 %142, %143
  store i64 %add156, ptr %x72, align 8
  %144 = load i64, ptr %x20, align 8
  %145 = load i64, ptr %x72, align 8
  %add157 = add i64 %144, %145
  store i64 %add157, ptr %x73, align 8
  %146 = load i64, ptr %x19, align 8
  %147 = load i64, ptr %x73, align 8
  %add158 = add i64 %146, %147
  store i64 %add158, ptr %x74, align 8
  %148 = load i64, ptr %x18, align 8
  %149 = load i64, ptr %x74, align 8
  %add159 = add i64 %148, %149
  store i64 %add159, ptr %x75, align 8
  %150 = load i64, ptr %x17, align 8
  %151 = load i64, ptr %x75, align 8
  %add160 = add i64 %150, %151
  store i64 %add160, ptr %x76, align 8
  %152 = load i64, ptr %x15, align 8
  %153 = load i8, ptr %x16, align 1
  %conv161 = zext i8 %153 to i64
  %add162 = add i64 %152, %conv161
  store i64 %add162, ptr %x77, align 8
  %154 = load i64, ptr %x14, align 8
  %155 = load i64, ptr %x77, align 8
  %add163 = add i64 %154, %155
  store i64 %add163, ptr %x78, align 8
  %156 = load i64, ptr %x13, align 8
  %157 = load i64, ptr %x78, align 8
  %add164 = add i64 %156, %157
  store i64 %add164, ptr %x79, align 8
  %158 = load i64, ptr %x12, align 8
  %159 = load i64, ptr %x79, align 8
  %add165 = add i64 %158, %159
  store i64 %add165, ptr %x80, align 8
  %160 = load i64, ptr %x11, align 8
  %161 = load i64, ptr %x80, align 8
  %add166 = add i64 %160, %161
  store i64 %add166, ptr %x81, align 8
  %162 = load i64, ptr %x10, align 8
  %163 = load i64, ptr %x81, align 8
  %add167 = add i64 %162, %163
  store i64 %add167, ptr %x82, align 8
  %164 = load i64, ptr %x9, align 8
  %165 = load i64, ptr %x82, align 8
  %add168 = add i64 %164, %165
  store i64 %add168, ptr %x83, align 8
  %166 = load i64, ptr %x7, align 8
  %167 = load i8, ptr %x8, align 1
  %conv169 = zext i8 %167 to i64
  %add170 = add i64 %166, %conv169
  store i64 %add170, ptr %x84, align 8
  %168 = load i64, ptr %x6, align 8
  %169 = load i64, ptr %x84, align 8
  %add171 = add i64 %168, %169
  store i64 %add171, ptr %x85, align 8
  %170 = load i64, ptr %x5, align 8
  %171 = load i64, ptr %x85, align 8
  %add172 = add i64 %170, %171
  store i64 %add172, ptr %x86, align 8
  %172 = load i64, ptr %x4, align 8
  %173 = load i64, ptr %x86, align 8
  %add173 = add i64 %172, %173
  store i64 %add173, ptr %x87, align 8
  %174 = load i64, ptr %x3, align 8
  %175 = load i64, ptr %x87, align 8
  %add174 = add i64 %174, %175
  store i64 %add174, ptr %x88, align 8
  %176 = load i64, ptr %x2, align 8
  %177 = load i64, ptr %x88, align 8
  %add175 = add i64 %176, %177
  store i64 %add175, ptr %x89, align 8
  %178 = load i64, ptr %x1, align 8
  %179 = load i64, ptr %x89, align 8
  %add176 = add i64 %178, %179
  store i64 %add176, ptr %x90, align 8
  %180 = load i64, ptr %x55, align 8
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, ptr %181, i64 0
  store i64 %180, ptr %arrayidx177, align 8
  %182 = load i64, ptr %x62, align 8
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx178 = getelementptr inbounds i64, ptr %183, i64 1
  store i64 %182, ptr %arrayidx178, align 8
  %184 = load i64, ptr %x69, align 8
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx179 = getelementptr inbounds i64, ptr %185, i64 2
  store i64 %184, ptr %arrayidx179, align 8
  %186 = load i64, ptr %x76, align 8
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx180 = getelementptr inbounds i64, ptr %187, i64 3
  store i64 %186, ptr %arrayidx180, align 8
  %188 = load i64, ptr %x83, align 8
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx181 = getelementptr inbounds i64, ptr %189, i64 4
  store i64 %188, ptr %arrayidx181, align 8
  %190 = load i64, ptr %x90, align 8
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx182 = getelementptr inbounds i64, ptr %191, i64 5
  store i64 %190, ptr %arrayidx182, align 8
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
