; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i8, align 1
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i8, align 1
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
  %x43 = alloca i32, align 4
  %x44 = alloca i8, align 1
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i32, align 4
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  %x63 = alloca i32, align 4
  %x64 = alloca i32, align 4
  %x65 = alloca i32, align 4
  %x66 = alloca i32, align 4
  %x67 = alloca i32, align 4
  %x68 = alloca i32, align 4
  %x69 = alloca i32, align 4
  %x70 = alloca i32, align 4
  %x71 = alloca i32, align 4
  %x72 = alloca i32, align 4
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i32, align 4
  %x76 = alloca i32, align 4
  %x77 = alloca i32, align 4
  %x78 = alloca i32, align 4
  %x79 = alloca i32, align 4
  %x80 = alloca i32, align 4
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
  %x83 = alloca i32, align 4
  %x84 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 47
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 46
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 45
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 44
  %7 = load i8, ptr %arrayidx7, align 1
  store i8 %7, ptr %x4, align 1
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 43
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl i32 %conv9, 24
  store i32 %shl10, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 42
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 16
  store i32 %shl13, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 41
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 8
  store i32 %shl16, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i8, ptr %arrayidx17, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 39
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %shl20 = shl i32 %conv19, 24
  store i32 %shl20, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 38
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %shl23 = shl i32 %conv22, 16
  store i32 %shl23, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 37
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %shl26 = shl i32 %conv25, 8
  store i32 %shl26, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %22, i64 36
  %23 = load i8, ptr %arrayidx27, align 1
  store i8 %23, ptr %x12, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %24, i64 35
  %25 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %shl30 = shl i32 %conv29, 24
  store i32 %shl30, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %26, i64 34
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %shl33 = shl i32 %conv32, 16
  store i32 %shl33, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %28, i64 33
  %29 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %shl36 = shl i32 %conv35, 8
  store i32 %shl36, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %30, i64 32
  %31 = load i8, ptr %arrayidx37, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %32, i64 31
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %shl40 = shl i32 %conv39, 24
  store i32 %shl40, ptr %x17, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %34, i64 30
  %35 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %35 to i32
  %shl43 = shl i32 %conv42, 16
  store i32 %shl43, ptr %x18, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %36, i64 29
  %37 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  %shl46 = shl i32 %conv45, 8
  store i32 %shl46, ptr %x19, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %38, i64 28
  %39 = load i8, ptr %arrayidx47, align 1
  store i8 %39, ptr %x20, align 1
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %40, i64 27
  %41 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %41 to i32
  %shl50 = shl i32 %conv49, 24
  store i32 %shl50, ptr %x21, align 4
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 26
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %43 to i32
  %shl53 = shl i32 %conv52, 16
  store i32 %shl53, ptr %x22, align 4
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %44, i64 25
  %45 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %45 to i32
  %shl56 = shl i32 %conv55, 8
  store i32 %shl56, ptr %x23, align 4
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 24
  %47 = load i8, ptr %arrayidx57, align 1
  store i8 %47, ptr %x24, align 1
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %48, i64 23
  %49 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %49 to i32
  %shl60 = shl i32 %conv59, 24
  store i32 %shl60, ptr %x25, align 4
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %50, i64 22
  %51 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %51 to i32
  %shl63 = shl i32 %conv62, 16
  store i32 %shl63, ptr %x26, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %52, i64 21
  %53 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %shl66 = shl i32 %conv65, 8
  store i32 %shl66, ptr %x27, align 4
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %54, i64 20
  %55 = load i8, ptr %arrayidx67, align 1
  store i8 %55, ptr %x28, align 1
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %56, i64 19
  %57 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %57 to i32
  %shl70 = shl i32 %conv69, 24
  store i32 %shl70, ptr %x29, align 4
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %58, i64 18
  %59 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %59 to i32
  %shl73 = shl i32 %conv72, 16
  store i32 %shl73, ptr %x30, align 4
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %60, i64 17
  %61 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %61 to i32
  %shl76 = shl i32 %conv75, 8
  store i32 %shl76, ptr %x31, align 4
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %62, i64 16
  %63 = load i8, ptr %arrayidx77, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %64, i64 15
  %65 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %65 to i32
  %shl80 = shl i32 %conv79, 24
  store i32 %shl80, ptr %x33, align 4
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, ptr %66, i64 14
  %67 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %67 to i32
  %shl83 = shl i32 %conv82, 16
  store i32 %shl83, ptr %x34, align 4
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %68, i64 13
  %69 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %69 to i32
  %shl86 = shl i32 %conv85, 8
  store i32 %shl86, ptr %x35, align 4
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %70, i64 12
  %71 = load i8, ptr %arrayidx87, align 1
  store i8 %71, ptr %x36, align 1
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %72, i64 11
  %73 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %73 to i32
  %shl90 = shl i32 %conv89, 24
  store i32 %shl90, ptr %x37, align 4
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %74, i64 10
  %75 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %75 to i32
  %shl93 = shl i32 %conv92, 16
  store i32 %shl93, ptr %x38, align 4
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %76, i64 9
  %77 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %77 to i32
  %shl96 = shl i32 %conv95, 8
  store i32 %shl96, ptr %x39, align 4
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %78, i64 8
  %79 = load i8, ptr %arrayidx97, align 1
  store i8 %79, ptr %x40, align 1
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %80, i64 7
  %81 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %81 to i32
  %shl100 = shl i32 %conv99, 24
  store i32 %shl100, ptr %x41, align 4
  %82 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %82, i64 6
  %83 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %83 to i32
  %shl103 = shl i32 %conv102, 16
  store i32 %shl103, ptr %x42, align 4
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %84, i64 5
  %85 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %85 to i32
  %shl106 = shl i32 %conv105, 8
  store i32 %shl106, ptr %x43, align 4
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %86, i64 4
  %87 = load i8, ptr %arrayidx107, align 1
  store i8 %87, ptr %x44, align 1
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %88, i64 3
  %89 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %89 to i32
  %shl110 = shl i32 %conv109, 24
  store i32 %shl110, ptr %x45, align 4
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %90, i64 2
  %91 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %91 to i32
  %shl113 = shl i32 %conv112, 16
  store i32 %shl113, ptr %x46, align 4
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %92, i64 1
  %93 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %93 to i32
  %shl116 = shl i32 %conv115, 8
  store i32 %shl116, ptr %x47, align 4
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx117, align 1
  store i8 %95, ptr %x48, align 1
  %96 = load i32, ptr %x47, align 4
  %97 = load i8, ptr %x48, align 1
  %conv118 = zext i8 %97 to i32
  %add = add i32 %96, %conv118
  store i32 %add, ptr %x49, align 4
  %98 = load i32, ptr %x46, align 4
  %99 = load i32, ptr %x49, align 4
  %add119 = add i32 %98, %99
  store i32 %add119, ptr %x50, align 4
  %100 = load i32, ptr %x45, align 4
  %101 = load i32, ptr %x50, align 4
  %add120 = add i32 %100, %101
  store i32 %add120, ptr %x51, align 4
  %102 = load i32, ptr %x43, align 4
  %103 = load i8, ptr %x44, align 1
  %conv121 = zext i8 %103 to i32
  %add122 = add i32 %102, %conv121
  store i32 %add122, ptr %x52, align 4
  %104 = load i32, ptr %x42, align 4
  %105 = load i32, ptr %x52, align 4
  %add123 = add i32 %104, %105
  store i32 %add123, ptr %x53, align 4
  %106 = load i32, ptr %x41, align 4
  %107 = load i32, ptr %x53, align 4
  %add124 = add i32 %106, %107
  store i32 %add124, ptr %x54, align 4
  %108 = load i32, ptr %x39, align 4
  %109 = load i8, ptr %x40, align 1
  %conv125 = zext i8 %109 to i32
  %add126 = add i32 %108, %conv125
  store i32 %add126, ptr %x55, align 4
  %110 = load i32, ptr %x38, align 4
  %111 = load i32, ptr %x55, align 4
  %add127 = add i32 %110, %111
  store i32 %add127, ptr %x56, align 4
  %112 = load i32, ptr %x37, align 4
  %113 = load i32, ptr %x56, align 4
  %add128 = add i32 %112, %113
  store i32 %add128, ptr %x57, align 4
  %114 = load i32, ptr %x35, align 4
  %115 = load i8, ptr %x36, align 1
  %conv129 = zext i8 %115 to i32
  %add130 = add i32 %114, %conv129
  store i32 %add130, ptr %x58, align 4
  %116 = load i32, ptr %x34, align 4
  %117 = load i32, ptr %x58, align 4
  %add131 = add i32 %116, %117
  store i32 %add131, ptr %x59, align 4
  %118 = load i32, ptr %x33, align 4
  %119 = load i32, ptr %x59, align 4
  %add132 = add i32 %118, %119
  store i32 %add132, ptr %x60, align 4
  %120 = load i32, ptr %x31, align 4
  %121 = load i8, ptr %x32, align 1
  %conv133 = zext i8 %121 to i32
  %add134 = add i32 %120, %conv133
  store i32 %add134, ptr %x61, align 4
  %122 = load i32, ptr %x30, align 4
  %123 = load i32, ptr %x61, align 4
  %add135 = add i32 %122, %123
  store i32 %add135, ptr %x62, align 4
  %124 = load i32, ptr %x29, align 4
  %125 = load i32, ptr %x62, align 4
  %add136 = add i32 %124, %125
  store i32 %add136, ptr %x63, align 4
  %126 = load i32, ptr %x27, align 4
  %127 = load i8, ptr %x28, align 1
  %conv137 = zext i8 %127 to i32
  %add138 = add i32 %126, %conv137
  store i32 %add138, ptr %x64, align 4
  %128 = load i32, ptr %x26, align 4
  %129 = load i32, ptr %x64, align 4
  %add139 = add i32 %128, %129
  store i32 %add139, ptr %x65, align 4
  %130 = load i32, ptr %x25, align 4
  %131 = load i32, ptr %x65, align 4
  %add140 = add i32 %130, %131
  store i32 %add140, ptr %x66, align 4
  %132 = load i32, ptr %x23, align 4
  %133 = load i8, ptr %x24, align 1
  %conv141 = zext i8 %133 to i32
  %add142 = add i32 %132, %conv141
  store i32 %add142, ptr %x67, align 4
  %134 = load i32, ptr %x22, align 4
  %135 = load i32, ptr %x67, align 4
  %add143 = add i32 %134, %135
  store i32 %add143, ptr %x68, align 4
  %136 = load i32, ptr %x21, align 4
  %137 = load i32, ptr %x68, align 4
  %add144 = add i32 %136, %137
  store i32 %add144, ptr %x69, align 4
  %138 = load i32, ptr %x19, align 4
  %139 = load i8, ptr %x20, align 1
  %conv145 = zext i8 %139 to i32
  %add146 = add i32 %138, %conv145
  store i32 %add146, ptr %x70, align 4
  %140 = load i32, ptr %x18, align 4
  %141 = load i32, ptr %x70, align 4
  %add147 = add i32 %140, %141
  store i32 %add147, ptr %x71, align 4
  %142 = load i32, ptr %x17, align 4
  %143 = load i32, ptr %x71, align 4
  %add148 = add i32 %142, %143
  store i32 %add148, ptr %x72, align 4
  %144 = load i32, ptr %x15, align 4
  %145 = load i8, ptr %x16, align 1
  %conv149 = zext i8 %145 to i32
  %add150 = add i32 %144, %conv149
  store i32 %add150, ptr %x73, align 4
  %146 = load i32, ptr %x14, align 4
  %147 = load i32, ptr %x73, align 4
  %add151 = add i32 %146, %147
  store i32 %add151, ptr %x74, align 4
  %148 = load i32, ptr %x13, align 4
  %149 = load i32, ptr %x74, align 4
  %add152 = add i32 %148, %149
  store i32 %add152, ptr %x75, align 4
  %150 = load i32, ptr %x11, align 4
  %151 = load i8, ptr %x12, align 1
  %conv153 = zext i8 %151 to i32
  %add154 = add i32 %150, %conv153
  store i32 %add154, ptr %x76, align 4
  %152 = load i32, ptr %x10, align 4
  %153 = load i32, ptr %x76, align 4
  %add155 = add i32 %152, %153
  store i32 %add155, ptr %x77, align 4
  %154 = load i32, ptr %x9, align 4
  %155 = load i32, ptr %x77, align 4
  %add156 = add i32 %154, %155
  store i32 %add156, ptr %x78, align 4
  %156 = load i32, ptr %x7, align 4
  %157 = load i8, ptr %x8, align 1
  %conv157 = zext i8 %157 to i32
  %add158 = add i32 %156, %conv157
  store i32 %add158, ptr %x79, align 4
  %158 = load i32, ptr %x6, align 4
  %159 = load i32, ptr %x79, align 4
  %add159 = add i32 %158, %159
  store i32 %add159, ptr %x80, align 4
  %160 = load i32, ptr %x5, align 4
  %161 = load i32, ptr %x80, align 4
  %add160 = add i32 %160, %161
  store i32 %add160, ptr %x81, align 4
  %162 = load i32, ptr %x3, align 4
  %163 = load i8, ptr %x4, align 1
  %conv161 = zext i8 %163 to i32
  %add162 = add i32 %162, %conv161
  store i32 %add162, ptr %x82, align 4
  %164 = load i32, ptr %x2, align 4
  %165 = load i32, ptr %x82, align 4
  %add163 = add i32 %164, %165
  store i32 %add163, ptr %x83, align 4
  %166 = load i32, ptr %x1, align 4
  %167 = load i32, ptr %x83, align 4
  %add164 = add i32 %166, %167
  store i32 %add164, ptr %x84, align 4
  %168 = load i32, ptr %x51, align 4
  %169 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, ptr %169, i64 0
  store i32 %168, ptr %arrayidx165, align 4
  %170 = load i32, ptr %x54, align 4
  %171 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %171, i64 1
  store i32 %170, ptr %arrayidx166, align 4
  %172 = load i32, ptr %x57, align 4
  %173 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, ptr %173, i64 2
  store i32 %172, ptr %arrayidx167, align 4
  %174 = load i32, ptr %x60, align 4
  %175 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %175, i64 3
  store i32 %174, ptr %arrayidx168, align 4
  %176 = load i32, ptr %x63, align 4
  %177 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, ptr %177, i64 4
  store i32 %176, ptr %arrayidx169, align 4
  %178 = load i32, ptr %x66, align 4
  %179 = load ptr, ptr %out1.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %179, i64 5
  store i32 %178, ptr %arrayidx170, align 4
  %180 = load i32, ptr %x69, align 4
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx171 = getelementptr inbounds i32, ptr %181, i64 6
  store i32 %180, ptr %arrayidx171, align 4
  %182 = load i32, ptr %x72, align 4
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %183, i64 7
  store i32 %182, ptr %arrayidx172, align 4
  %184 = load i32, ptr %x75, align 4
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx173 = getelementptr inbounds i32, ptr %185, i64 8
  store i32 %184, ptr %arrayidx173, align 4
  %186 = load i32, ptr %x78, align 4
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx174 = getelementptr inbounds i32, ptr %187, i64 9
  store i32 %186, ptr %arrayidx174, align 4
  %188 = load i32, ptr %x81, align 4
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx175 = getelementptr inbounds i32, ptr %189, i64 10
  store i32 %188, ptr %arrayidx175, align 4
  %190 = load i32, ptr %x84, align 4
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, ptr %191, i64 11
  store i32 %190, ptr %arrayidx176, align 4
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
