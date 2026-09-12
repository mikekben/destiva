; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x16 = alloca i8, align 1
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
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i8, align 1
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i8, align 1
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  %x63 = alloca i32, align 4
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
  %x66 = alloca i32, align 4
  %x67 = alloca i32, align 4
  %x68 = alloca i32, align 4
  %x69 = alloca i32, align 4
  %x70 = alloca i8, align 1
  %x71 = alloca i32, align 4
  %x72 = alloca i32, align 4
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
  %x76 = alloca i32, align 4
  %x77 = alloca i32, align 4
  %x78 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 31
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 18
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 30
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 10
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 29
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 2
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 28
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 20
  store i32 %shl9, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 27
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl i32 %conv11, 12
  store i32 %shl12, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 26
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl i32 %conv14, 4
  store i32 %shl15, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 25
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %shl18 = shl i32 %conv17, 21
  store i32 %shl18, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 24
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %shl21 = shl i32 %conv20, 13
  store i32 %shl21, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 23
  %17 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %shl24 = shl i32 %conv23, 5
  store i32 %shl24, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %18, i64 22
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %shl27 = shl i32 %conv26, 23
  store i32 %shl27, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %20, i64 21
  %21 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %21 to i32
  %shl30 = shl i32 %conv29, 15
  store i32 %shl30, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 20
  %23 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %23 to i32
  %shl33 = shl i32 %conv32, 7
  store i32 %shl33, ptr %x12, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 19
  %25 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %25 to i32
  %shl36 = shl i32 %conv35, 24
  store i32 %shl36, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %26, i64 18
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %27 to i32
  %shl39 = shl i32 %conv38, 16
  store i32 %shl39, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %shl42 = shl i32 %conv41, 8
  store i32 %shl42, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %30, i64 16
  %31 = load i8, ptr %arrayidx43, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 15
  %33 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %33 to i32
  %shl46 = shl i32 %conv45, 18
  store i32 %shl46, ptr %x17, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 14
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %35 to i32
  %shl49 = shl i32 %conv48, 10
  store i32 %shl49, ptr %x18, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %36, i64 13
  %37 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %37 to i32
  %shl52 = shl i32 %conv51, 2
  store i32 %shl52, ptr %x19, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %38, i64 12
  %39 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %39 to i32
  %shl55 = shl i32 %conv54, 19
  store i32 %shl55, ptr %x20, align 4
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %40, i64 11
  %41 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %shl58 = shl i32 %conv57, 11
  store i32 %shl58, ptr %x21, align 4
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %42, i64 10
  %43 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %43 to i32
  %shl61 = shl i32 %conv60, 3
  store i32 %shl61, ptr %x22, align 4
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %44, i64 9
  %45 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %45 to i32
  %shl64 = shl i32 %conv63, 21
  store i32 %shl64, ptr %x23, align 4
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %46, i64 8
  %47 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %47 to i32
  %shl67 = shl i32 %conv66, 13
  store i32 %shl67, ptr %x24, align 4
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %48, i64 7
  %49 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %49 to i32
  %shl70 = shl i32 %conv69, 5
  store i32 %shl70, ptr %x25, align 4
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %50, i64 6
  %51 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %51 to i32
  %shl73 = shl i32 %conv72, 22
  store i32 %shl73, ptr %x26, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %52, i64 5
  %53 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %53 to i32
  %shl76 = shl i32 %conv75, 14
  store i32 %shl76, ptr %x27, align 4
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %55 to i32
  %shl79 = shl i32 %conv78, 6
  store i32 %shl79, ptr %x28, align 4
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %56, i64 3
  %57 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %57 to i32
  %shl82 = shl i32 %conv81, 24
  store i32 %shl82, ptr %x29, align 4
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %59 to i32
  %shl85 = shl i32 %conv84, 16
  store i32 %shl85, ptr %x30, align 4
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %60, i64 1
  %61 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %61 to i32
  %shl88 = shl i32 %conv87, 8
  store i32 %shl88, ptr %x31, align 4
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx89, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load i32, ptr %x31, align 4
  %65 = load i8, ptr %x32, align 1
  %conv90 = zext i8 %65 to i32
  %add = add i32 %64, %conv90
  store i32 %add, ptr %x33, align 4
  %66 = load i32, ptr %x30, align 4
  %67 = load i32, ptr %x33, align 4
  %add91 = add i32 %66, %67
  store i32 %add91, ptr %x34, align 4
  %68 = load i32, ptr %x29, align 4
  %69 = load i32, ptr %x34, align 4
  %add92 = add i32 %68, %69
  store i32 %add92, ptr %x35, align 4
  %70 = load i32, ptr %x35, align 4
  %and = and i32 %70, 67108863
  store i32 %and, ptr %x36, align 4
  %71 = load i32, ptr %x35, align 4
  %shr = lshr i32 %71, 26
  %conv93 = trunc i32 %shr to i8
  store i8 %conv93, ptr %x37, align 1
  %72 = load i32, ptr %x28, align 4
  %73 = load i8, ptr %x37, align 1
  %conv94 = zext i8 %73 to i32
  %add95 = add i32 %72, %conv94
  store i32 %add95, ptr %x38, align 4
  %74 = load i32, ptr %x27, align 4
  %75 = load i32, ptr %x38, align 4
  %add96 = add i32 %74, %75
  store i32 %add96, ptr %x39, align 4
  %76 = load i32, ptr %x26, align 4
  %77 = load i32, ptr %x39, align 4
  %add97 = add i32 %76, %77
  store i32 %add97, ptr %x40, align 4
  %78 = load i32, ptr %x40, align 4
  %and98 = and i32 %78, 33554431
  store i32 %and98, ptr %x41, align 4
  %79 = load i32, ptr %x40, align 4
  %shr99 = lshr i32 %79, 25
  %conv100 = trunc i32 %shr99 to i8
  store i8 %conv100, ptr %x42, align 1
  %80 = load i32, ptr %x25, align 4
  %81 = load i8, ptr %x42, align 1
  %conv101 = zext i8 %81 to i32
  %add102 = add i32 %80, %conv101
  store i32 %add102, ptr %x43, align 4
  %82 = load i32, ptr %x24, align 4
  %83 = load i32, ptr %x43, align 4
  %add103 = add i32 %82, %83
  store i32 %add103, ptr %x44, align 4
  %84 = load i32, ptr %x23, align 4
  %85 = load i32, ptr %x44, align 4
  %add104 = add i32 %84, %85
  store i32 %add104, ptr %x45, align 4
  %86 = load i32, ptr %x45, align 4
  %and105 = and i32 %86, 67108863
  store i32 %and105, ptr %x46, align 4
  %87 = load i32, ptr %x45, align 4
  %shr106 = lshr i32 %87, 26
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, ptr %x47, align 1
  %88 = load i32, ptr %x22, align 4
  %89 = load i8, ptr %x47, align 1
  %conv108 = zext i8 %89 to i32
  %add109 = add i32 %88, %conv108
  store i32 %add109, ptr %x48, align 4
  %90 = load i32, ptr %x21, align 4
  %91 = load i32, ptr %x48, align 4
  %add110 = add i32 %90, %91
  store i32 %add110, ptr %x49, align 4
  %92 = load i32, ptr %x20, align 4
  %93 = load i32, ptr %x49, align 4
  %add111 = add i32 %92, %93
  store i32 %add111, ptr %x50, align 4
  %94 = load i32, ptr %x50, align 4
  %and112 = and i32 %94, 33554431
  store i32 %and112, ptr %x51, align 4
  %95 = load i32, ptr %x50, align 4
  %shr113 = lshr i32 %95, 25
  %conv114 = trunc i32 %shr113 to i8
  store i8 %conv114, ptr %x52, align 1
  %96 = load i32, ptr %x19, align 4
  %97 = load i8, ptr %x52, align 1
  %conv115 = zext i8 %97 to i32
  %add116 = add i32 %96, %conv115
  store i32 %add116, ptr %x53, align 4
  %98 = load i32, ptr %x18, align 4
  %99 = load i32, ptr %x53, align 4
  %add117 = add i32 %98, %99
  store i32 %add117, ptr %x54, align 4
  %100 = load i32, ptr %x17, align 4
  %101 = load i32, ptr %x54, align 4
  %add118 = add i32 %100, %101
  store i32 %add118, ptr %x55, align 4
  %102 = load i32, ptr %x15, align 4
  %103 = load i8, ptr %x16, align 1
  %conv119 = zext i8 %103 to i32
  %add120 = add i32 %102, %conv119
  store i32 %add120, ptr %x56, align 4
  %104 = load i32, ptr %x14, align 4
  %105 = load i32, ptr %x56, align 4
  %add121 = add i32 %104, %105
  store i32 %add121, ptr %x57, align 4
  %106 = load i32, ptr %x13, align 4
  %107 = load i32, ptr %x57, align 4
  %add122 = add i32 %106, %107
  store i32 %add122, ptr %x58, align 4
  %108 = load i32, ptr %x58, align 4
  %and123 = and i32 %108, 33554431
  store i32 %and123, ptr %x59, align 4
  %109 = load i32, ptr %x58, align 4
  %shr124 = lshr i32 %109, 25
  %conv125 = trunc i32 %shr124 to i8
  store i8 %conv125, ptr %x60, align 1
  %110 = load i32, ptr %x12, align 4
  %111 = load i8, ptr %x60, align 1
  %conv126 = zext i8 %111 to i32
  %add127 = add i32 %110, %conv126
  store i32 %add127, ptr %x61, align 4
  %112 = load i32, ptr %x11, align 4
  %113 = load i32, ptr %x61, align 4
  %add128 = add i32 %112, %113
  store i32 %add128, ptr %x62, align 4
  %114 = load i32, ptr %x10, align 4
  %115 = load i32, ptr %x62, align 4
  %add129 = add i32 %114, %115
  store i32 %add129, ptr %x63, align 4
  %116 = load i32, ptr %x63, align 4
  %and130 = and i32 %116, 67108863
  store i32 %and130, ptr %x64, align 4
  %117 = load i32, ptr %x63, align 4
  %shr131 = lshr i32 %117, 26
  %conv132 = trunc i32 %shr131 to i8
  store i8 %conv132, ptr %x65, align 1
  %118 = load i32, ptr %x9, align 4
  %119 = load i8, ptr %x65, align 1
  %conv133 = zext i8 %119 to i32
  %add134 = add i32 %118, %conv133
  store i32 %add134, ptr %x66, align 4
  %120 = load i32, ptr %x8, align 4
  %121 = load i32, ptr %x66, align 4
  %add135 = add i32 %120, %121
  store i32 %add135, ptr %x67, align 4
  %122 = load i32, ptr %x7, align 4
  %123 = load i32, ptr %x67, align 4
  %add136 = add i32 %122, %123
  store i32 %add136, ptr %x68, align 4
  %124 = load i32, ptr %x68, align 4
  %and137 = and i32 %124, 33554431
  store i32 %and137, ptr %x69, align 4
  %125 = load i32, ptr %x68, align 4
  %shr138 = lshr i32 %125, 25
  %conv139 = trunc i32 %shr138 to i8
  store i8 %conv139, ptr %x70, align 1
  %126 = load i32, ptr %x6, align 4
  %127 = load i8, ptr %x70, align 1
  %conv140 = zext i8 %127 to i32
  %add141 = add i32 %126, %conv140
  store i32 %add141, ptr %x71, align 4
  %128 = load i32, ptr %x5, align 4
  %129 = load i32, ptr %x71, align 4
  %add142 = add i32 %128, %129
  store i32 %add142, ptr %x72, align 4
  %130 = load i32, ptr %x4, align 4
  %131 = load i32, ptr %x72, align 4
  %add143 = add i32 %130, %131
  store i32 %add143, ptr %x73, align 4
  %132 = load i32, ptr %x73, align 4
  %and144 = and i32 %132, 67108863
  store i32 %and144, ptr %x74, align 4
  %133 = load i32, ptr %x73, align 4
  %shr145 = lshr i32 %133, 26
  %conv146 = trunc i32 %shr145 to i8
  store i8 %conv146, ptr %x75, align 1
  %134 = load i32, ptr %x3, align 4
  %135 = load i8, ptr %x75, align 1
  %conv147 = zext i8 %135 to i32
  %add148 = add i32 %134, %conv147
  store i32 %add148, ptr %x76, align 4
  %136 = load i32, ptr %x2, align 4
  %137 = load i32, ptr %x76, align 4
  %add149 = add i32 %136, %137
  store i32 %add149, ptr %x77, align 4
  %138 = load i32, ptr %x1, align 4
  %139 = load i32, ptr %x77, align 4
  %add150 = add i32 %138, %139
  store i32 %add150, ptr %x78, align 4
  %140 = load i32, ptr %x36, align 4
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %141, i64 0
  store i32 %140, ptr %arrayidx151, align 4
  %142 = load i32, ptr %x41, align 4
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %143, i64 1
  store i32 %142, ptr %arrayidx152, align 4
  %144 = load i32, ptr %x46, align 4
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %145, i64 2
  store i32 %144, ptr %arrayidx153, align 4
  %146 = load i32, ptr %x51, align 4
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %147, i64 3
  store i32 %146, ptr %arrayidx154, align 4
  %148 = load i32, ptr %x55, align 4
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, ptr %149, i64 4
  store i32 %148, ptr %arrayidx155, align 4
  %150 = load i32, ptr %x59, align 4
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, ptr %151, i64 5
  store i32 %150, ptr %arrayidx156, align 4
  %152 = load i32, ptr %x64, align 4
  %153 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %153, i64 6
  store i32 %152, ptr %arrayidx157, align 4
  %154 = load i32, ptr %x69, align 4
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %155, i64 7
  store i32 %154, ptr %arrayidx158, align 4
  %156 = load i32, ptr %x74, align 4
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i32, ptr %157, i64 8
  store i32 %156, ptr %arrayidx159, align 4
  %158 = load i32, ptr %x78, align 4
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %159, i64 9
  store i32 %158, ptr %arrayidx160, align 4
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
