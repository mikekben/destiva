; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i64, align 8
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i64, align 8
  %x12 = alloca i32, align 4
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
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
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
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
  %x76 = alloca i32, align 4
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
  %x88 = alloca i32, align 4
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i32, align 4
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i32, align 4
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i32, align 4
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i32, align 4
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i32, align 4
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
  %x106 = alloca i32, align 4
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i32, align 4
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i32, align 4
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i32, align 4
  %x116 = alloca i32, align 4
  %x117 = alloca i32, align 4
  %x118 = alloca i8, align 1
  %x119 = alloca i32, align 4
  %x120 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 9
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 19
  store i32 %mul, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  %mul1 = mul i32 %2, 2
  store i32 %mul1, ptr %x2, align 4
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 9
  %4 = load i32, ptr %arrayidx2, align 4
  %mul3 = mul i32 %4, 2
  store i32 %mul3, ptr %x3, align 4
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %5, i64 8
  %6 = load i32, ptr %arrayidx4, align 4
  %mul5 = mul i32 %6, 19
  store i32 %mul5, ptr %x4, align 4
  %7 = load i32, ptr %x4, align 4
  %conv = zext i32 %7 to i64
  %mul6 = mul i64 %conv, 2
  store i64 %mul6, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 8
  %9 = load i32, ptr %arrayidx7, align 4
  %mul8 = mul i32 %9, 2
  store i32 %mul8, ptr %x6, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 7
  %11 = load i32, ptr %arrayidx9, align 4
  %mul10 = mul i32 %11, 19
  store i32 %mul10, ptr %x7, align 4
  %12 = load i32, ptr %x7, align 4
  %mul11 = mul i32 %12, 2
  store i32 %mul11, ptr %x8, align 4
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %13, i64 7
  %14 = load i32, ptr %arrayidx12, align 4
  %mul13 = mul i32 %14, 2
  store i32 %mul13, ptr %x9, align 4
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %15, i64 6
  %16 = load i32, ptr %arrayidx14, align 4
  %mul15 = mul i32 %16, 19
  store i32 %mul15, ptr %x10, align 4
  %17 = load i32, ptr %x10, align 4
  %conv16 = zext i32 %17 to i64
  %mul17 = mul i64 %conv16, 2
  store i64 %mul17, ptr %x11, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx18, align 4
  %mul19 = mul i32 %19, 2
  store i32 %mul19, ptr %x12, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx20, align 4
  %mul21 = mul i32 %21, 19
  store i32 %mul21, ptr %x13, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %22, i64 5
  %23 = load i32, ptr %arrayidx22, align 4
  %mul23 = mul i32 %23, 2
  store i32 %mul23, ptr %x14, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %24, i64 4
  %25 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul i32 %25, 2
  store i32 %mul25, ptr %x15, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx26, align 4
  %mul27 = mul i32 %27, 2
  store i32 %mul27, ptr %x16, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %28, i64 2
  %29 = load i32, ptr %arrayidx28, align 4
  %mul29 = mul i32 %29, 2
  store i32 %mul29, ptr %x17, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %30, i64 1
  %31 = load i32, ptr %arrayidx30, align 4
  %mul31 = mul i32 %31, 2
  store i32 %mul31, ptr %x18, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %32, i64 9
  %33 = load i32, ptr %arrayidx32, align 4
  %conv33 = zext i32 %33 to i64
  %34 = load i32, ptr %x1, align 4
  %mul34 = mul i32 %34, 2
  %conv35 = zext i32 %mul34 to i64
  %mul36 = mul i64 %conv33, %conv35
  store i64 %mul36, ptr %x19, align 8
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %35, i64 8
  %36 = load i32, ptr %arrayidx37, align 4
  %conv38 = zext i32 %36 to i64
  %37 = load i32, ptr %x2, align 4
  %conv39 = zext i32 %37 to i64
  %mul40 = mul i64 %conv38, %conv39
  store i64 %mul40, ptr %x20, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %38, i64 8
  %39 = load i32, ptr %arrayidx41, align 4
  %conv42 = zext i32 %39 to i64
  %40 = load i32, ptr %x4, align 4
  %conv43 = zext i32 %40 to i64
  %mul44 = mul i64 %conv42, %conv43
  store i64 %mul44, ptr %x21, align 8
  %41 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %41, i64 7
  %42 = load i32, ptr %arrayidx45, align 4
  %conv46 = zext i32 %42 to i64
  %43 = load i32, ptr %x2, align 4
  %conv47 = zext i32 %43 to i64
  %mul48 = mul i64 %conv47, 2
  %mul49 = mul i64 %conv46, %mul48
  store i64 %mul49, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %44, i64 7
  %45 = load i32, ptr %arrayidx50, align 4
  %conv51 = zext i32 %45 to i64
  %46 = load i64, ptr %x5, align 8
  %mul52 = mul i64 %conv51, %46
  store i64 %mul52, ptr %x23, align 8
  %47 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %47, i64 7
  %48 = load i32, ptr %arrayidx53, align 4
  %conv54 = zext i32 %48 to i64
  %49 = load i32, ptr %x7, align 4
  %mul55 = mul i32 %49, 2
  %conv56 = zext i32 %mul55 to i64
  %mul57 = mul i64 %conv54, %conv56
  store i64 %mul57, ptr %x24, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %50, i64 6
  %51 = load i32, ptr %arrayidx58, align 4
  %conv59 = zext i32 %51 to i64
  %52 = load i32, ptr %x2, align 4
  %conv60 = zext i32 %52 to i64
  %mul61 = mul i64 %conv59, %conv60
  store i64 %mul61, ptr %x25, align 8
  %53 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %53, i64 6
  %54 = load i32, ptr %arrayidx62, align 4
  %conv63 = zext i32 %54 to i64
  %55 = load i64, ptr %x5, align 8
  %mul64 = mul i64 %conv63, %55
  store i64 %mul64, ptr %x26, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %56, i64 6
  %57 = load i32, ptr %arrayidx65, align 4
  %conv66 = zext i32 %57 to i64
  %58 = load i32, ptr %x8, align 4
  %conv67 = zext i32 %58 to i64
  %mul68 = mul i64 %conv66, %conv67
  store i64 %mul68, ptr %x27, align 8
  %59 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %59, i64 6
  %60 = load i32, ptr %arrayidx69, align 4
  %conv70 = zext i32 %60 to i64
  %61 = load i32, ptr %x10, align 4
  %conv71 = zext i32 %61 to i64
  %mul72 = mul i64 %conv70, %conv71
  store i64 %mul72, ptr %x28, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %62, i64 5
  %63 = load i32, ptr %arrayidx73, align 4
  %conv74 = zext i32 %63 to i64
  %64 = load i32, ptr %x2, align 4
  %conv75 = zext i32 %64 to i64
  %mul76 = mul i64 %conv75, 2
  %mul77 = mul i64 %conv74, %mul76
  store i64 %mul77, ptr %x29, align 8
  %65 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %65, i64 5
  %66 = load i32, ptr %arrayidx78, align 4
  %conv79 = zext i32 %66 to i64
  %67 = load i64, ptr %x5, align 8
  %mul80 = mul i64 %conv79, %67
  store i64 %mul80, ptr %x30, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %68, i64 5
  %69 = load i32, ptr %arrayidx81, align 4
  %conv82 = zext i32 %69 to i64
  %70 = load i32, ptr %x8, align 4
  %conv83 = zext i32 %70 to i64
  %mul84 = mul i64 %conv83, 2
  %mul85 = mul i64 %conv82, %mul84
  store i64 %mul85, ptr %x31, align 8
  %71 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %71, i64 5
  %72 = load i32, ptr %arrayidx86, align 4
  %conv87 = zext i32 %72 to i64
  %73 = load i64, ptr %x11, align 8
  %mul88 = mul i64 %conv87, %73
  store i64 %mul88, ptr %x32, align 8
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %74, i64 5
  %75 = load i32, ptr %arrayidx89, align 4
  %conv90 = zext i32 %75 to i64
  %76 = load i32, ptr %x13, align 4
  %mul91 = mul i32 %76, 2
  %conv92 = zext i32 %mul91 to i64
  %mul93 = mul i64 %conv90, %conv92
  store i64 %mul93, ptr %x33, align 8
  %77 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %77, i64 4
  %78 = load i32, ptr %arrayidx94, align 4
  %conv95 = zext i32 %78 to i64
  %79 = load i32, ptr %x2, align 4
  %conv96 = zext i32 %79 to i64
  %mul97 = mul i64 %conv95, %conv96
  store i64 %mul97, ptr %x34, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %80, i64 4
  %81 = load i32, ptr %arrayidx98, align 4
  %conv99 = zext i32 %81 to i64
  %82 = load i64, ptr %x5, align 8
  %mul100 = mul i64 %conv99, %82
  store i64 %mul100, ptr %x35, align 8
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %83, i64 4
  %84 = load i32, ptr %arrayidx101, align 4
  %conv102 = zext i32 %84 to i64
  %85 = load i32, ptr %x8, align 4
  %conv103 = zext i32 %85 to i64
  %mul104 = mul i64 %conv102, %conv103
  store i64 %mul104, ptr %x36, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %86, i64 4
  %87 = load i32, ptr %arrayidx105, align 4
  %conv106 = zext i32 %87 to i64
  %88 = load i64, ptr %x11, align 8
  %mul107 = mul i64 %conv106, %88
  store i64 %mul107, ptr %x37, align 8
  %89 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %89, i64 4
  %90 = load i32, ptr %arrayidx108, align 4
  %conv109 = zext i32 %90 to i64
  %91 = load i32, ptr %x14, align 4
  %conv110 = zext i32 %91 to i64
  %mul111 = mul i64 %conv109, %conv110
  store i64 %mul111, ptr %x38, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %92, i64 4
  %93 = load i32, ptr %arrayidx112, align 4
  %conv113 = zext i32 %93 to i64
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %94, i64 4
  %95 = load i32, ptr %arrayidx114, align 4
  %conv115 = zext i32 %95 to i64
  %mul116 = mul i64 %conv113, %conv115
  store i64 %mul116, ptr %x39, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %96, i64 3
  %97 = load i32, ptr %arrayidx117, align 4
  %conv118 = zext i32 %97 to i64
  %98 = load i32, ptr %x2, align 4
  %conv119 = zext i32 %98 to i64
  %mul120 = mul i64 %conv119, 2
  %mul121 = mul i64 %conv118, %mul120
  store i64 %mul121, ptr %x40, align 8
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %99, i64 3
  %100 = load i32, ptr %arrayidx122, align 4
  %conv123 = zext i32 %100 to i64
  %101 = load i64, ptr %x5, align 8
  %mul124 = mul i64 %conv123, %101
  store i64 %mul124, ptr %x41, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %102, i64 3
  %103 = load i32, ptr %arrayidx125, align 4
  %conv126 = zext i32 %103 to i64
  %104 = load i32, ptr %x8, align 4
  %conv127 = zext i32 %104 to i64
  %mul128 = mul i64 %conv127, 2
  %mul129 = mul i64 %conv126, %mul128
  store i64 %mul129, ptr %x42, align 8
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %105, i64 3
  %106 = load i32, ptr %arrayidx130, align 4
  %conv131 = zext i32 %106 to i64
  %107 = load i32, ptr %x12, align 4
  %conv132 = zext i32 %107 to i64
  %mul133 = mul i64 %conv131, %conv132
  store i64 %mul133, ptr %x43, align 8
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %108, i64 3
  %109 = load i32, ptr %arrayidx134, align 4
  %conv135 = zext i32 %109 to i64
  %110 = load i32, ptr %x14, align 4
  %mul136 = mul i32 %110, 2
  %conv137 = zext i32 %mul136 to i64
  %mul138 = mul i64 %conv135, %conv137
  store i64 %mul138, ptr %x44, align 8
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %111, i64 3
  %112 = load i32, ptr %arrayidx139, align 4
  %conv140 = zext i32 %112 to i64
  %113 = load i32, ptr %x15, align 4
  %conv141 = zext i32 %113 to i64
  %mul142 = mul i64 %conv140, %conv141
  store i64 %mul142, ptr %x45, align 8
  %114 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %114, i64 3
  %115 = load i32, ptr %arrayidx143, align 4
  %conv144 = zext i32 %115 to i64
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %116, i64 3
  %117 = load i32, ptr %arrayidx145, align 4
  %mul146 = mul i32 %117, 2
  %conv147 = zext i32 %mul146 to i64
  %mul148 = mul i64 %conv144, %conv147
  store i64 %mul148, ptr %x46, align 8
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %118, i64 2
  %119 = load i32, ptr %arrayidx149, align 4
  %conv150 = zext i32 %119 to i64
  %120 = load i32, ptr %x2, align 4
  %conv151 = zext i32 %120 to i64
  %mul152 = mul i64 %conv150, %conv151
  store i64 %mul152, ptr %x47, align 8
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %121, i64 2
  %122 = load i32, ptr %arrayidx153, align 4
  %conv154 = zext i32 %122 to i64
  %123 = load i64, ptr %x5, align 8
  %mul155 = mul i64 %conv154, %123
  store i64 %mul155, ptr %x48, align 8
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, ptr %124, i64 2
  %125 = load i32, ptr %arrayidx156, align 4
  %conv157 = zext i32 %125 to i64
  %126 = load i32, ptr %x9, align 4
  %conv158 = zext i32 %126 to i64
  %mul159 = mul i64 %conv157, %conv158
  store i64 %mul159, ptr %x49, align 8
  %127 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %127, i64 2
  %128 = load i32, ptr %arrayidx160, align 4
  %conv161 = zext i32 %128 to i64
  %129 = load i32, ptr %x12, align 4
  %conv162 = zext i32 %129 to i64
  %mul163 = mul i64 %conv161, %conv162
  store i64 %mul163, ptr %x50, align 8
  %130 = load ptr, ptr %arg1.addr, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %130, i64 2
  %131 = load i32, ptr %arrayidx164, align 4
  %conv165 = zext i32 %131 to i64
  %132 = load i32, ptr %x14, align 4
  %conv166 = zext i32 %132 to i64
  %mul167 = mul i64 %conv165, %conv166
  store i64 %mul167, ptr %x51, align 8
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %133, i64 2
  %134 = load i32, ptr %arrayidx168, align 4
  %conv169 = zext i32 %134 to i64
  %135 = load i32, ptr %x15, align 4
  %conv170 = zext i32 %135 to i64
  %mul171 = mul i64 %conv169, %conv170
  store i64 %mul171, ptr %x52, align 8
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %136, i64 2
  %137 = load i32, ptr %arrayidx172, align 4
  %conv173 = zext i32 %137 to i64
  %138 = load i32, ptr %x16, align 4
  %conv174 = zext i32 %138 to i64
  %mul175 = mul i64 %conv173, %conv174
  store i64 %mul175, ptr %x53, align 8
  %139 = load ptr, ptr %arg1.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, ptr %139, i64 2
  %140 = load i32, ptr %arrayidx176, align 4
  %conv177 = zext i32 %140 to i64
  %141 = load ptr, ptr %arg1.addr, align 8
  %arrayidx178 = getelementptr inbounds i32, ptr %141, i64 2
  %142 = load i32, ptr %arrayidx178, align 4
  %conv179 = zext i32 %142 to i64
  %mul180 = mul i64 %conv177, %conv179
  store i64 %mul180, ptr %x54, align 8
  %143 = load ptr, ptr %arg1.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %143, i64 1
  %144 = load i32, ptr %arrayidx181, align 4
  %conv182 = zext i32 %144 to i64
  %145 = load i32, ptr %x2, align 4
  %conv183 = zext i32 %145 to i64
  %mul184 = mul i64 %conv183, 2
  %mul185 = mul i64 %conv182, %mul184
  store i64 %mul185, ptr %x55, align 8
  %146 = load ptr, ptr %arg1.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %146, i64 1
  %147 = load i32, ptr %arrayidx186, align 4
  %conv187 = zext i32 %147 to i64
  %148 = load i32, ptr %x6, align 4
  %conv188 = zext i32 %148 to i64
  %mul189 = mul i64 %conv187, %conv188
  store i64 %mul189, ptr %x56, align 8
  %149 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %149, i64 1
  %150 = load i32, ptr %arrayidx190, align 4
  %conv191 = zext i32 %150 to i64
  %151 = load i32, ptr %x9, align 4
  %mul192 = mul i32 %151, 2
  %conv193 = zext i32 %mul192 to i64
  %mul194 = mul i64 %conv191, %conv193
  store i64 %mul194, ptr %x57, align 8
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, ptr %152, i64 1
  %153 = load i32, ptr %arrayidx195, align 4
  %conv196 = zext i32 %153 to i64
  %154 = load i32, ptr %x12, align 4
  %conv197 = zext i32 %154 to i64
  %mul198 = mul i64 %conv196, %conv197
  store i64 %mul198, ptr %x58, align 8
  %155 = load ptr, ptr %arg1.addr, align 8
  %arrayidx199 = getelementptr inbounds i32, ptr %155, i64 1
  %156 = load i32, ptr %arrayidx199, align 4
  %conv200 = zext i32 %156 to i64
  %157 = load i32, ptr %x14, align 4
  %mul201 = mul i32 %157, 2
  %conv202 = zext i32 %mul201 to i64
  %mul203 = mul i64 %conv200, %conv202
  store i64 %mul203, ptr %x59, align 8
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %158, i64 1
  %159 = load i32, ptr %arrayidx204, align 4
  %conv205 = zext i32 %159 to i64
  %160 = load i32, ptr %x15, align 4
  %conv206 = zext i32 %160 to i64
  %mul207 = mul i64 %conv205, %conv206
  store i64 %mul207, ptr %x60, align 8
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %161, i64 1
  %162 = load i32, ptr %arrayidx208, align 4
  %conv209 = zext i32 %162 to i64
  %163 = load i32, ptr %x16, align 4
  %mul210 = mul i32 %163, 2
  %conv211 = zext i32 %mul210 to i64
  %mul212 = mul i64 %conv209, %conv211
  store i64 %mul212, ptr %x61, align 8
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, ptr %164, i64 1
  %165 = load i32, ptr %arrayidx213, align 4
  %conv214 = zext i32 %165 to i64
  %166 = load i32, ptr %x17, align 4
  %conv215 = zext i32 %166 to i64
  %mul216 = mul i64 %conv214, %conv215
  store i64 %mul216, ptr %x62, align 8
  %167 = load ptr, ptr %arg1.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %167, i64 1
  %168 = load i32, ptr %arrayidx217, align 4
  %conv218 = zext i32 %168 to i64
  %169 = load ptr, ptr %arg1.addr, align 8
  %arrayidx219 = getelementptr inbounds i32, ptr %169, i64 1
  %170 = load i32, ptr %arrayidx219, align 4
  %mul220 = mul i32 %170, 2
  %conv221 = zext i32 %mul220 to i64
  %mul222 = mul i64 %conv218, %conv221
  store i64 %mul222, ptr %x63, align 8
  %171 = load ptr, ptr %arg1.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, ptr %171, i64 0
  %172 = load i32, ptr %arrayidx223, align 4
  %conv224 = zext i32 %172 to i64
  %173 = load i32, ptr %x3, align 4
  %conv225 = zext i32 %173 to i64
  %mul226 = mul i64 %conv224, %conv225
  store i64 %mul226, ptr %x64, align 8
  %174 = load ptr, ptr %arg1.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, ptr %174, i64 0
  %175 = load i32, ptr %arrayidx227, align 4
  %conv228 = zext i32 %175 to i64
  %176 = load i32, ptr %x6, align 4
  %conv229 = zext i32 %176 to i64
  %mul230 = mul i64 %conv228, %conv229
  store i64 %mul230, ptr %x65, align 8
  %177 = load ptr, ptr %arg1.addr, align 8
  %arrayidx231 = getelementptr inbounds i32, ptr %177, i64 0
  %178 = load i32, ptr %arrayidx231, align 4
  %conv232 = zext i32 %178 to i64
  %179 = load i32, ptr %x9, align 4
  %conv233 = zext i32 %179 to i64
  %mul234 = mul i64 %conv232, %conv233
  store i64 %mul234, ptr %x66, align 8
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx235 = getelementptr inbounds i32, ptr %180, i64 0
  %181 = load i32, ptr %arrayidx235, align 4
  %conv236 = zext i32 %181 to i64
  %182 = load i32, ptr %x12, align 4
  %conv237 = zext i32 %182 to i64
  %mul238 = mul i64 %conv236, %conv237
  store i64 %mul238, ptr %x67, align 8
  %183 = load ptr, ptr %arg1.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, ptr %183, i64 0
  %184 = load i32, ptr %arrayidx239, align 4
  %conv240 = zext i32 %184 to i64
  %185 = load i32, ptr %x14, align 4
  %conv241 = zext i32 %185 to i64
  %mul242 = mul i64 %conv240, %conv241
  store i64 %mul242, ptr %x68, align 8
  %186 = load ptr, ptr %arg1.addr, align 8
  %arrayidx243 = getelementptr inbounds i32, ptr %186, i64 0
  %187 = load i32, ptr %arrayidx243, align 4
  %conv244 = zext i32 %187 to i64
  %188 = load i32, ptr %x15, align 4
  %conv245 = zext i32 %188 to i64
  %mul246 = mul i64 %conv244, %conv245
  store i64 %mul246, ptr %x69, align 8
  %189 = load ptr, ptr %arg1.addr, align 8
  %arrayidx247 = getelementptr inbounds i32, ptr %189, i64 0
  %190 = load i32, ptr %arrayidx247, align 4
  %conv248 = zext i32 %190 to i64
  %191 = load i32, ptr %x16, align 4
  %conv249 = zext i32 %191 to i64
  %mul250 = mul i64 %conv248, %conv249
  store i64 %mul250, ptr %x70, align 8
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx251 = getelementptr inbounds i32, ptr %192, i64 0
  %193 = load i32, ptr %arrayidx251, align 4
  %conv252 = zext i32 %193 to i64
  %194 = load i32, ptr %x17, align 4
  %conv253 = zext i32 %194 to i64
  %mul254 = mul i64 %conv252, %conv253
  store i64 %mul254, ptr %x71, align 8
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx255 = getelementptr inbounds i32, ptr %195, i64 0
  %196 = load i32, ptr %arrayidx255, align 4
  %conv256 = zext i32 %196 to i64
  %197 = load i32, ptr %x18, align 4
  %conv257 = zext i32 %197 to i64
  %mul258 = mul i64 %conv256, %conv257
  store i64 %mul258, ptr %x72, align 8
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx259 = getelementptr inbounds i32, ptr %198, i64 0
  %199 = load i32, ptr %arrayidx259, align 4
  %conv260 = zext i32 %199 to i64
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx261 = getelementptr inbounds i32, ptr %200, i64 0
  %201 = load i32, ptr %arrayidx261, align 4
  %conv262 = zext i32 %201 to i64
  %mul263 = mul i64 %conv260, %conv262
  store i64 %mul263, ptr %x73, align 8
  %202 = load i64, ptr %x73, align 8
  %203 = load i64, ptr %x55, align 8
  %204 = load i64, ptr %x48, align 8
  %205 = load i64, ptr %x42, align 8
  %206 = load i64, ptr %x37, align 8
  %207 = load i64, ptr %x33, align 8
  %add = add i64 %206, %207
  %add264 = add i64 %205, %add
  %add265 = add i64 %204, %add264
  %add266 = add i64 %203, %add265
  %add267 = add i64 %202, %add266
  store i64 %add267, ptr %x74, align 8
  %208 = load i64, ptr %x74, align 8
  %shr = lshr i64 %208, 26
  store i64 %shr, ptr %x75, align 8
  %209 = load i64, ptr %x74, align 8
  %and = and i64 %209, 67108863
  %conv268 = trunc i64 %and to i32
  store i32 %conv268, ptr %x76, align 4
  %210 = load i64, ptr %x64, align 8
  %211 = load i64, ptr %x56, align 8
  %212 = load i64, ptr %x49, align 8
  %213 = load i64, ptr %x43, align 8
  %214 = load i64, ptr %x38, align 8
  %add269 = add i64 %213, %214
  %add270 = add i64 %212, %add269
  %add271 = add i64 %211, %add270
  %add272 = add i64 %210, %add271
  store i64 %add272, ptr %x77, align 8
  %215 = load i64, ptr %x65, align 8
  %216 = load i64, ptr %x57, align 8
  %217 = load i64, ptr %x50, align 8
  %218 = load i64, ptr %x44, align 8
  %219 = load i64, ptr %x39, align 8
  %220 = load i64, ptr %x19, align 8
  %add273 = add i64 %219, %220
  %add274 = add i64 %218, %add273
  %add275 = add i64 %217, %add274
  %add276 = add i64 %216, %add275
  %add277 = add i64 %215, %add276
  store i64 %add277, ptr %x78, align 8
  %221 = load i64, ptr %x66, align 8
  %222 = load i64, ptr %x58, align 8
  %223 = load i64, ptr %x51, align 8
  %224 = load i64, ptr %x45, align 8
  %225 = load i64, ptr %x20, align 8
  %add278 = add i64 %224, %225
  %add279 = add i64 %223, %add278
  %add280 = add i64 %222, %add279
  %add281 = add i64 %221, %add280
  store i64 %add281, ptr %x79, align 8
  %226 = load i64, ptr %x67, align 8
  %227 = load i64, ptr %x59, align 8
  %228 = load i64, ptr %x52, align 8
  %229 = load i64, ptr %x46, align 8
  %230 = load i64, ptr %x22, align 8
  %231 = load i64, ptr %x21, align 8
  %add282 = add i64 %230, %231
  %add283 = add i64 %229, %add282
  %add284 = add i64 %228, %add283
  %add285 = add i64 %227, %add284
  %add286 = add i64 %226, %add285
  store i64 %add286, ptr %x80, align 8
  %232 = load i64, ptr %x68, align 8
  %233 = load i64, ptr %x60, align 8
  %234 = load i64, ptr %x53, align 8
  %235 = load i64, ptr %x25, align 8
  %236 = load i64, ptr %x23, align 8
  %add287 = add i64 %235, %236
  %add288 = add i64 %234, %add287
  %add289 = add i64 %233, %add288
  %add290 = add i64 %232, %add289
  store i64 %add290, ptr %x81, align 8
  %237 = load i64, ptr %x69, align 8
  %238 = load i64, ptr %x61, align 8
  %239 = load i64, ptr %x54, align 8
  %240 = load i64, ptr %x29, align 8
  %241 = load i64, ptr %x26, align 8
  %242 = load i64, ptr %x24, align 8
  %add291 = add i64 %241, %242
  %add292 = add i64 %240, %add291
  %add293 = add i64 %239, %add292
  %add294 = add i64 %238, %add293
  %add295 = add i64 %237, %add294
  store i64 %add295, ptr %x82, align 8
  %243 = load i64, ptr %x70, align 8
  %244 = load i64, ptr %x62, align 8
  %245 = load i64, ptr %x34, align 8
  %246 = load i64, ptr %x30, align 8
  %247 = load i64, ptr %x27, align 8
  %add296 = add i64 %246, %247
  %add297 = add i64 %245, %add296
  %add298 = add i64 %244, %add297
  %add299 = add i64 %243, %add298
  store i64 %add299, ptr %x83, align 8
  %248 = load i64, ptr %x71, align 8
  %249 = load i64, ptr %x63, align 8
  %250 = load i64, ptr %x40, align 8
  %251 = load i64, ptr %x35, align 8
  %252 = load i64, ptr %x31, align 8
  %253 = load i64, ptr %x28, align 8
  %add300 = add i64 %252, %253
  %add301 = add i64 %251, %add300
  %add302 = add i64 %250, %add301
  %add303 = add i64 %249, %add302
  %add304 = add i64 %248, %add303
  store i64 %add304, ptr %x84, align 8
  %254 = load i64, ptr %x72, align 8
  %255 = load i64, ptr %x47, align 8
  %256 = load i64, ptr %x41, align 8
  %257 = load i64, ptr %x36, align 8
  %258 = load i64, ptr %x32, align 8
  %add305 = add i64 %257, %258
  %add306 = add i64 %256, %add305
  %add307 = add i64 %255, %add306
  %add308 = add i64 %254, %add307
  store i64 %add308, ptr %x85, align 8
  %259 = load i64, ptr %x75, align 8
  %260 = load i64, ptr %x85, align 8
  %add309 = add i64 %259, %260
  store i64 %add309, ptr %x86, align 8
  %261 = load i64, ptr %x86, align 8
  %shr310 = lshr i64 %261, 25
  store i64 %shr310, ptr %x87, align 8
  %262 = load i64, ptr %x86, align 8
  %and311 = and i64 %262, 33554431
  %conv312 = trunc i64 %and311 to i32
  store i32 %conv312, ptr %x88, align 4
  %263 = load i64, ptr %x87, align 8
  %264 = load i64, ptr %x84, align 8
  %add313 = add i64 %263, %264
  store i64 %add313, ptr %x89, align 8
  %265 = load i64, ptr %x89, align 8
  %shr314 = lshr i64 %265, 26
  store i64 %shr314, ptr %x90, align 8
  %266 = load i64, ptr %x89, align 8
  %and315 = and i64 %266, 67108863
  %conv316 = trunc i64 %and315 to i32
  store i32 %conv316, ptr %x91, align 4
  %267 = load i64, ptr %x90, align 8
  %268 = load i64, ptr %x83, align 8
  %add317 = add i64 %267, %268
  store i64 %add317, ptr %x92, align 8
  %269 = load i64, ptr %x92, align 8
  %shr318 = lshr i64 %269, 25
  store i64 %shr318, ptr %x93, align 8
  %270 = load i64, ptr %x92, align 8
  %and319 = and i64 %270, 33554431
  %conv320 = trunc i64 %and319 to i32
  store i32 %conv320, ptr %x94, align 4
  %271 = load i64, ptr %x93, align 8
  %272 = load i64, ptr %x82, align 8
  %add321 = add i64 %271, %272
  store i64 %add321, ptr %x95, align 8
  %273 = load i64, ptr %x95, align 8
  %shr322 = lshr i64 %273, 26
  store i64 %shr322, ptr %x96, align 8
  %274 = load i64, ptr %x95, align 8
  %and323 = and i64 %274, 67108863
  %conv324 = trunc i64 %and323 to i32
  store i32 %conv324, ptr %x97, align 4
  %275 = load i64, ptr %x96, align 8
  %276 = load i64, ptr %x81, align 8
  %add325 = add i64 %275, %276
  store i64 %add325, ptr %x98, align 8
  %277 = load i64, ptr %x98, align 8
  %shr326 = lshr i64 %277, 25
  store i64 %shr326, ptr %x99, align 8
  %278 = load i64, ptr %x98, align 8
  %and327 = and i64 %278, 33554431
  %conv328 = trunc i64 %and327 to i32
  store i32 %conv328, ptr %x100, align 4
  %279 = load i64, ptr %x99, align 8
  %280 = load i64, ptr %x80, align 8
  %add329 = add i64 %279, %280
  store i64 %add329, ptr %x101, align 8
  %281 = load i64, ptr %x101, align 8
  %shr330 = lshr i64 %281, 26
  store i64 %shr330, ptr %x102, align 8
  %282 = load i64, ptr %x101, align 8
  %and331 = and i64 %282, 67108863
  %conv332 = trunc i64 %and331 to i32
  store i32 %conv332, ptr %x103, align 4
  %283 = load i64, ptr %x102, align 8
  %284 = load i64, ptr %x79, align 8
  %add333 = add i64 %283, %284
  store i64 %add333, ptr %x104, align 8
  %285 = load i64, ptr %x104, align 8
  %shr334 = lshr i64 %285, 25
  store i64 %shr334, ptr %x105, align 8
  %286 = load i64, ptr %x104, align 8
  %and335 = and i64 %286, 33554431
  %conv336 = trunc i64 %and335 to i32
  store i32 %conv336, ptr %x106, align 4
  %287 = load i64, ptr %x105, align 8
  %288 = load i64, ptr %x78, align 8
  %add337 = add i64 %287, %288
  store i64 %add337, ptr %x107, align 8
  %289 = load i64, ptr %x107, align 8
  %shr338 = lshr i64 %289, 26
  store i64 %shr338, ptr %x108, align 8
  %290 = load i64, ptr %x107, align 8
  %and339 = and i64 %290, 67108863
  %conv340 = trunc i64 %and339 to i32
  store i32 %conv340, ptr %x109, align 4
  %291 = load i64, ptr %x108, align 8
  %292 = load i64, ptr %x77, align 8
  %add341 = add i64 %291, %292
  store i64 %add341, ptr %x110, align 8
  %293 = load i64, ptr %x110, align 8
  %shr342 = lshr i64 %293, 25
  store i64 %shr342, ptr %x111, align 8
  %294 = load i64, ptr %x110, align 8
  %and343 = and i64 %294, 33554431
  %conv344 = trunc i64 %and343 to i32
  store i32 %conv344, ptr %x112, align 4
  %295 = load i64, ptr %x111, align 8
  %mul345 = mul i64 %295, 19
  store i64 %mul345, ptr %x113, align 8
  %296 = load i32, ptr %x76, align 4
  %conv346 = zext i32 %296 to i64
  %297 = load i64, ptr %x113, align 8
  %add347 = add i64 %conv346, %297
  store i64 %add347, ptr %x114, align 8
  %298 = load i64, ptr %x114, align 8
  %shr348 = lshr i64 %298, 26
  %conv349 = trunc i64 %shr348 to i32
  store i32 %conv349, ptr %x115, align 4
  %299 = load i64, ptr %x114, align 8
  %and350 = and i64 %299, 67108863
  %conv351 = trunc i64 %and350 to i32
  store i32 %conv351, ptr %x116, align 4
  %300 = load i32, ptr %x115, align 4
  %301 = load i32, ptr %x88, align 4
  %add352 = add i32 %300, %301
  store i32 %add352, ptr %x117, align 4
  %302 = load i32, ptr %x117, align 4
  %shr353 = lshr i32 %302, 25
  %conv354 = trunc i32 %shr353 to i8
  store i8 %conv354, ptr %x118, align 1
  %303 = load i32, ptr %x117, align 4
  %and355 = and i32 %303, 33554431
  store i32 %and355, ptr %x119, align 4
  %304 = load i8, ptr %x118, align 1
  %conv356 = zext i8 %304 to i32
  %305 = load i32, ptr %x91, align 4
  %add357 = add i32 %conv356, %305
  store i32 %add357, ptr %x120, align 4
  %306 = load i32, ptr %x116, align 4
  %307 = load ptr, ptr %out1.addr, align 8
  %arrayidx358 = getelementptr inbounds i32, ptr %307, i64 0
  store i32 %306, ptr %arrayidx358, align 4
  %308 = load i32, ptr %x119, align 4
  %309 = load ptr, ptr %out1.addr, align 8
  %arrayidx359 = getelementptr inbounds i32, ptr %309, i64 1
  store i32 %308, ptr %arrayidx359, align 4
  %310 = load i32, ptr %x120, align 4
  %311 = load ptr, ptr %out1.addr, align 8
  %arrayidx360 = getelementptr inbounds i32, ptr %311, i64 2
  store i32 %310, ptr %arrayidx360, align 4
  %312 = load i32, ptr %x94, align 4
  %313 = load ptr, ptr %out1.addr, align 8
  %arrayidx361 = getelementptr inbounds i32, ptr %313, i64 3
  store i32 %312, ptr %arrayidx361, align 4
  %314 = load i32, ptr %x97, align 4
  %315 = load ptr, ptr %out1.addr, align 8
  %arrayidx362 = getelementptr inbounds i32, ptr %315, i64 4
  store i32 %314, ptr %arrayidx362, align 4
  %316 = load i32, ptr %x100, align 4
  %317 = load ptr, ptr %out1.addr, align 8
  %arrayidx363 = getelementptr inbounds i32, ptr %317, i64 5
  store i32 %316, ptr %arrayidx363, align 4
  %318 = load i32, ptr %x103, align 4
  %319 = load ptr, ptr %out1.addr, align 8
  %arrayidx364 = getelementptr inbounds i32, ptr %319, i64 6
  store i32 %318, ptr %arrayidx364, align 4
  %320 = load i32, ptr %x106, align 4
  %321 = load ptr, ptr %out1.addr, align 8
  %arrayidx365 = getelementptr inbounds i32, ptr %321, i64 7
  store i32 %320, ptr %arrayidx365, align 4
  %322 = load i32, ptr %x109, align 4
  %323 = load ptr, ptr %out1.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %323, i64 8
  store i32 %322, ptr %arrayidx366, align 4
  %324 = load i32, ptr %x112, align 4
  %325 = load ptr, ptr %out1.addr, align 8
  %arrayidx367 = getelementptr inbounds i32, ptr %325, i64 9
  store i32 %324, ptr %arrayidx367, align 4
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
