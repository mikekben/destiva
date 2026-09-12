; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x12 = alloca i64, align 8
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
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
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
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 31
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 44
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 30
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 36
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 29
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 28
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 28
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 20
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 27
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 12
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 26
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 4
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 25
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %shl18 = shl i64 %conv17, 47
  store i64 %shl18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 24
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i64
  %shl21 = shl i64 %conv20, 39
  store i64 %shl21, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 23
  %17 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %17 to i64
  %shl24 = shl i64 %conv23, 31
  store i64 %shl24, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %18, i64 22
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i64
  %shl27 = shl i64 %conv26, 23
  store i64 %shl27, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %20, i64 21
  %21 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %21 to i64
  %shl30 = shl i64 %conv29, 15
  store i64 %shl30, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 20
  %23 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %23 to i64
  %shl33 = shl i64 %conv32, 7
  store i64 %shl33, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 19
  %25 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %25 to i64
  %shl36 = shl i64 %conv35, 50
  store i64 %shl36, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %26, i64 18
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %27 to i64
  %shl39 = shl i64 %conv38, 42
  store i64 %shl39, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i64
  %shl42 = shl i64 %conv41, 34
  store i64 %shl42, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %30, i64 16
  %31 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %31 to i64
  %shl45 = shl i64 %conv44, 26
  store i64 %shl45, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %32, i64 15
  %33 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %33 to i64
  %shl48 = shl i64 %conv47, 18
  store i64 %shl48, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %34, i64 14
  %35 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %35 to i64
  %shl51 = shl i64 %conv50, 10
  store i64 %shl51, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %36, i64 13
  %37 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %37 to i64
  %shl54 = shl i64 %conv53, 2
  store i64 %shl54, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %38, i64 12
  %39 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %39 to i64
  %shl57 = shl i64 %conv56, 45
  store i64 %shl57, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %40, i64 11
  %41 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %41 to i64
  %shl60 = shl i64 %conv59, 37
  store i64 %shl60, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %42, i64 10
  %43 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %43 to i64
  %shl63 = shl i64 %conv62, 29
  store i64 %shl63, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %44, i64 9
  %45 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %45 to i64
  %shl66 = shl i64 %conv65, 21
  store i64 %shl66, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %46, i64 8
  %47 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %47 to i64
  %shl69 = shl i64 %conv68, 13
  store i64 %shl69, ptr %x24, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %48, i64 7
  %49 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %49 to i64
  %shl72 = shl i64 %conv71, 5
  store i64 %shl72, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %50, i64 6
  %51 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %51 to i64
  %shl75 = shl i64 %conv74, 48
  store i64 %shl75, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %52, i64 5
  %53 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %53 to i64
  %shl78 = shl i64 %conv77, 40
  store i64 %shl78, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %55 to i64
  %shl81 = shl i64 %conv80, 32
  store i64 %shl81, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %56, i64 3
  %57 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %57 to i64
  %shl84 = shl i64 %conv83, 24
  store i64 %shl84, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %59 to i64
  %shl87 = shl i64 %conv86, 16
  store i64 %shl87, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %60, i64 1
  %61 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %61 to i64
  %shl90 = shl i64 %conv89, 8
  store i64 %shl90, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx91, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load i64, ptr %x31, align 8
  %65 = load i8, ptr %x32, align 1
  %conv92 = zext i8 %65 to i64
  %add = add i64 %64, %conv92
  store i64 %add, ptr %x33, align 8
  %66 = load i64, ptr %x30, align 8
  %67 = load i64, ptr %x33, align 8
  %add93 = add i64 %66, %67
  store i64 %add93, ptr %x34, align 8
  %68 = load i64, ptr %x29, align 8
  %69 = load i64, ptr %x34, align 8
  %add94 = add i64 %68, %69
  store i64 %add94, ptr %x35, align 8
  %70 = load i64, ptr %x28, align 8
  %71 = load i64, ptr %x35, align 8
  %add95 = add i64 %70, %71
  store i64 %add95, ptr %x36, align 8
  %72 = load i64, ptr %x27, align 8
  %73 = load i64, ptr %x36, align 8
  %add96 = add i64 %72, %73
  store i64 %add96, ptr %x37, align 8
  %74 = load i64, ptr %x26, align 8
  %75 = load i64, ptr %x37, align 8
  %add97 = add i64 %74, %75
  store i64 %add97, ptr %x38, align 8
  %76 = load i64, ptr %x38, align 8
  %and = and i64 %76, 2251799813685247
  store i64 %and, ptr %x39, align 8
  %77 = load i64, ptr %x38, align 8
  %shr = lshr i64 %77, 51
  %conv98 = trunc i64 %shr to i8
  store i8 %conv98, ptr %x40, align 1
  %78 = load i64, ptr %x25, align 8
  %79 = load i8, ptr %x40, align 1
  %conv99 = zext i8 %79 to i64
  %add100 = add i64 %78, %conv99
  store i64 %add100, ptr %x41, align 8
  %80 = load i64, ptr %x24, align 8
  %81 = load i64, ptr %x41, align 8
  %add101 = add i64 %80, %81
  store i64 %add101, ptr %x42, align 8
  %82 = load i64, ptr %x23, align 8
  %83 = load i64, ptr %x42, align 8
  %add102 = add i64 %82, %83
  store i64 %add102, ptr %x43, align 8
  %84 = load i64, ptr %x22, align 8
  %85 = load i64, ptr %x43, align 8
  %add103 = add i64 %84, %85
  store i64 %add103, ptr %x44, align 8
  %86 = load i64, ptr %x21, align 8
  %87 = load i64, ptr %x44, align 8
  %add104 = add i64 %86, %87
  store i64 %add104, ptr %x45, align 8
  %88 = load i64, ptr %x20, align 8
  %89 = load i64, ptr %x45, align 8
  %add105 = add i64 %88, %89
  store i64 %add105, ptr %x46, align 8
  %90 = load i64, ptr %x46, align 8
  %and106 = and i64 %90, 2251799813685247
  store i64 %and106, ptr %x47, align 8
  %91 = load i64, ptr %x46, align 8
  %shr107 = lshr i64 %91, 51
  %conv108 = trunc i64 %shr107 to i8
  store i8 %conv108, ptr %x48, align 1
  %92 = load i64, ptr %x19, align 8
  %93 = load i8, ptr %x48, align 1
  %conv109 = zext i8 %93 to i64
  %add110 = add i64 %92, %conv109
  store i64 %add110, ptr %x49, align 8
  %94 = load i64, ptr %x18, align 8
  %95 = load i64, ptr %x49, align 8
  %add111 = add i64 %94, %95
  store i64 %add111, ptr %x50, align 8
  %96 = load i64, ptr %x17, align 8
  %97 = load i64, ptr %x50, align 8
  %add112 = add i64 %96, %97
  store i64 %add112, ptr %x51, align 8
  %98 = load i64, ptr %x16, align 8
  %99 = load i64, ptr %x51, align 8
  %add113 = add i64 %98, %99
  store i64 %add113, ptr %x52, align 8
  %100 = load i64, ptr %x15, align 8
  %101 = load i64, ptr %x52, align 8
  %add114 = add i64 %100, %101
  store i64 %add114, ptr %x53, align 8
  %102 = load i64, ptr %x14, align 8
  %103 = load i64, ptr %x53, align 8
  %add115 = add i64 %102, %103
  store i64 %add115, ptr %x54, align 8
  %104 = load i64, ptr %x13, align 8
  %105 = load i64, ptr %x54, align 8
  %add116 = add i64 %104, %105
  store i64 %add116, ptr %x55, align 8
  %106 = load i64, ptr %x55, align 8
  %and117 = and i64 %106, 2251799813685247
  store i64 %and117, ptr %x56, align 8
  %107 = load i64, ptr %x55, align 8
  %shr118 = lshr i64 %107, 51
  %conv119 = trunc i64 %shr118 to i8
  store i8 %conv119, ptr %x57, align 1
  %108 = load i64, ptr %x12, align 8
  %109 = load i8, ptr %x57, align 1
  %conv120 = zext i8 %109 to i64
  %add121 = add i64 %108, %conv120
  store i64 %add121, ptr %x58, align 8
  %110 = load i64, ptr %x11, align 8
  %111 = load i64, ptr %x58, align 8
  %add122 = add i64 %110, %111
  store i64 %add122, ptr %x59, align 8
  %112 = load i64, ptr %x10, align 8
  %113 = load i64, ptr %x59, align 8
  %add123 = add i64 %112, %113
  store i64 %add123, ptr %x60, align 8
  %114 = load i64, ptr %x9, align 8
  %115 = load i64, ptr %x60, align 8
  %add124 = add i64 %114, %115
  store i64 %add124, ptr %x61, align 8
  %116 = load i64, ptr %x8, align 8
  %117 = load i64, ptr %x61, align 8
  %add125 = add i64 %116, %117
  store i64 %add125, ptr %x62, align 8
  %118 = load i64, ptr %x7, align 8
  %119 = load i64, ptr %x62, align 8
  %add126 = add i64 %118, %119
  store i64 %add126, ptr %x63, align 8
  %120 = load i64, ptr %x63, align 8
  %and127 = and i64 %120, 2251799813685247
  store i64 %and127, ptr %x64, align 8
  %121 = load i64, ptr %x63, align 8
  %shr128 = lshr i64 %121, 51
  %conv129 = trunc i64 %shr128 to i8
  store i8 %conv129, ptr %x65, align 1
  %122 = load i64, ptr %x6, align 8
  %123 = load i8, ptr %x65, align 1
  %conv130 = zext i8 %123 to i64
  %add131 = add i64 %122, %conv130
  store i64 %add131, ptr %x66, align 8
  %124 = load i64, ptr %x5, align 8
  %125 = load i64, ptr %x66, align 8
  %add132 = add i64 %124, %125
  store i64 %add132, ptr %x67, align 8
  %126 = load i64, ptr %x4, align 8
  %127 = load i64, ptr %x67, align 8
  %add133 = add i64 %126, %127
  store i64 %add133, ptr %x68, align 8
  %128 = load i64, ptr %x3, align 8
  %129 = load i64, ptr %x68, align 8
  %add134 = add i64 %128, %129
  store i64 %add134, ptr %x69, align 8
  %130 = load i64, ptr %x2, align 8
  %131 = load i64, ptr %x69, align 8
  %add135 = add i64 %130, %131
  store i64 %add135, ptr %x70, align 8
  %132 = load i64, ptr %x1, align 8
  %133 = load i64, ptr %x70, align 8
  %add136 = add i64 %132, %133
  store i64 %add136, ptr %x71, align 8
  %134 = load i64, ptr %x39, align 8
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i64, ptr %135, i64 0
  store i64 %134, ptr %arrayidx137, align 8
  %136 = load i64, ptr %x47, align 8
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %137, i64 1
  store i64 %136, ptr %arrayidx138, align 8
  %138 = load i64, ptr %x56, align 8
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i64, ptr %139, i64 2
  store i64 %138, ptr %arrayidx139, align 8
  %140 = load i64, ptr %x64, align 8
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %141, i64 3
  store i64 %140, ptr %arrayidx140, align 8
  %142 = load i64, ptr %x71, align 8
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i64, ptr %143, i64 4
  store i64 %142, ptr %arrayidx141, align 8
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
