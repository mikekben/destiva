; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i128, align 16
  %x3 = alloca i128, align 16
  %x4 = alloca i128, align 16
  %x5 = alloca i128, align 16
  %x6 = alloca i128, align 16
  %x7 = alloca i128, align 16
  %x8 = alloca i128, align 16
  %x9 = alloca i128, align 16
  %x10 = alloca i128, align 16
  %x11 = alloca i128, align 16
  %x12 = alloca i128, align 16
  %x13 = alloca i128, align 16
  %x14 = alloca i128, align 16
  %x15 = alloca i128, align 16
  %x16 = alloca i128, align 16
  %x17 = alloca i128, align 16
  %x18 = alloca i128, align 16
  %x19 = alloca i128, align 16
  %x20 = alloca i128, align 16
  %x21 = alloca i128, align 16
  %x22 = alloca i128, align 16
  %x23 = alloca i128, align 16
  %x24 = alloca i128, align 16
  %x25 = alloca i128, align 16
  %x26 = alloca i128, align 16
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i128, align 16
  %x30 = alloca i128, align 16
  %x31 = alloca i128, align 16
  %x32 = alloca i128, align 16
  %x33 = alloca i128, align 16
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i128, align 16
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i128, align 16
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i128, align 16
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 4
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 4
  %3 = load i64, ptr %arrayidx1, align 8
  %mul = mul i64 %3, 19
  %conv2 = zext i64 %mul to i128
  %mul3 = mul i128 %conv, %conv2
  store i128 %mul3, ptr %x1, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx6, align 8
  %mul7 = mul i64 %7, 19
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul i128 %conv5, %conv8
  store i128 %mul9, ptr %x2, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx12, align 8
  %mul13 = mul i64 %11, 19
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul i128 %conv11, %conv14
  store i128 %mul15, ptr %x3, align 16
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx16, align 8
  %conv17 = zext i64 %13 to i128
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx18, align 8
  %mul19 = mul i64 %15, 19
  %conv20 = zext i64 %mul19 to i128
  %mul21 = mul i128 %conv17, %conv20
  store i128 %mul21, ptr %x4, align 16
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx22, align 8
  %conv23 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx24, align 8
  %mul25 = mul i64 %19, 19
  %conv26 = zext i64 %mul25 to i128
  %mul27 = mul i128 %conv23, %conv26
  store i128 %mul27, ptr %x5, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %20, i64 3
  %21 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %21 to i128
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %22, i64 3
  %23 = load i64, ptr %arrayidx30, align 8
  %mul31 = mul i64 %23, 19
  %conv32 = zext i64 %mul31 to i128
  %mul33 = mul i128 %conv29, %conv32
  store i128 %mul33, ptr %x6, align 16
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %26, i64 2
  %27 = load i64, ptr %arrayidx36, align 8
  %mul37 = mul i64 %27, 19
  %conv38 = zext i64 %mul37 to i128
  %mul39 = mul i128 %conv35, %conv38
  store i128 %mul39, ptr %x7, align 16
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %28, i64 2
  %29 = load i64, ptr %arrayidx40, align 8
  %conv41 = zext i64 %29 to i128
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %30, i64 4
  %31 = load i64, ptr %arrayidx42, align 8
  %mul43 = mul i64 %31, 19
  %conv44 = zext i64 %mul43 to i128
  %mul45 = mul i128 %conv41, %conv44
  store i128 %mul45, ptr %x8, align 16
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %32, i64 2
  %33 = load i64, ptr %arrayidx46, align 8
  %conv47 = zext i64 %33 to i128
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %34, i64 3
  %35 = load i64, ptr %arrayidx48, align 8
  %mul49 = mul i64 %35, 19
  %conv50 = zext i64 %mul49 to i128
  %mul51 = mul i128 %conv47, %conv50
  store i128 %mul51, ptr %x9, align 16
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %36, i64 1
  %37 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %37 to i128
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %38, i64 4
  %39 = load i64, ptr %arrayidx54, align 8
  %mul55 = mul i64 %39, 19
  %conv56 = zext i64 %mul55 to i128
  %mul57 = mul i128 %conv53, %conv56
  store i128 %mul57, ptr %x10, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %40, i64 4
  %41 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %42, i64 0
  %43 = load i64, ptr %arrayidx60, align 8
  %conv61 = zext i64 %43 to i128
  %mul62 = mul i128 %conv59, %conv61
  store i128 %mul62, ptr %x11, align 16
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %44, i64 3
  %45 = load i64, ptr %arrayidx63, align 8
  %conv64 = zext i64 %45 to i128
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %46, i64 1
  %47 = load i64, ptr %arrayidx65, align 8
  %conv66 = zext i64 %47 to i128
  %mul67 = mul i128 %conv64, %conv66
  store i128 %mul67, ptr %x12, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %48, i64 3
  %49 = load i64, ptr %arrayidx68, align 8
  %conv69 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %50, i64 0
  %51 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %51 to i128
  %mul72 = mul i128 %conv69, %conv71
  store i128 %mul72, ptr %x13, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %52, i64 2
  %53 = load i64, ptr %arrayidx73, align 8
  %conv74 = zext i64 %53 to i128
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %54, i64 2
  %55 = load i64, ptr %arrayidx75, align 8
  %conv76 = zext i64 %55 to i128
  %mul77 = mul i128 %conv74, %conv76
  store i128 %mul77, ptr %x14, align 16
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx78, align 8
  %conv79 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %58, i64 1
  %59 = load i64, ptr %arrayidx80, align 8
  %conv81 = zext i64 %59 to i128
  %mul82 = mul i128 %conv79, %conv81
  store i128 %mul82, ptr %x15, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %60, i64 2
  %61 = load i64, ptr %arrayidx83, align 8
  %conv84 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %62, i64 0
  %63 = load i64, ptr %arrayidx85, align 8
  %conv86 = zext i64 %63 to i128
  %mul87 = mul i128 %conv84, %conv86
  store i128 %mul87, ptr %x16, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %64, i64 1
  %65 = load i64, ptr %arrayidx88, align 8
  %conv89 = zext i64 %65 to i128
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %66, i64 3
  %67 = load i64, ptr %arrayidx90, align 8
  %conv91 = zext i64 %67 to i128
  %mul92 = mul i128 %conv89, %conv91
  store i128 %mul92, ptr %x17, align 16
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i64, ptr %68, i64 1
  %69 = load i64, ptr %arrayidx93, align 8
  %conv94 = zext i64 %69 to i128
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i64, ptr %70, i64 2
  %71 = load i64, ptr %arrayidx95, align 8
  %conv96 = zext i64 %71 to i128
  %mul97 = mul i128 %conv94, %conv96
  store i128 %mul97, ptr %x18, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %72, i64 1
  %73 = load i64, ptr %arrayidx98, align 8
  %conv99 = zext i64 %73 to i128
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %74, i64 1
  %75 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %75 to i128
  %mul102 = mul i128 %conv99, %conv101
  store i128 %mul102, ptr %x19, align 16
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %76, i64 1
  %77 = load i64, ptr %arrayidx103, align 8
  %conv104 = zext i64 %77 to i128
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %78, i64 0
  %79 = load i64, ptr %arrayidx105, align 8
  %conv106 = zext i64 %79 to i128
  %mul107 = mul i128 %conv104, %conv106
  store i128 %mul107, ptr %x20, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %80, i64 0
  %81 = load i64, ptr %arrayidx108, align 8
  %conv109 = zext i64 %81 to i128
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %82, i64 4
  %83 = load i64, ptr %arrayidx110, align 8
  %conv111 = zext i64 %83 to i128
  %mul112 = mul i128 %conv109, %conv111
  store i128 %mul112, ptr %x21, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %84, i64 0
  %85 = load i64, ptr %arrayidx113, align 8
  %conv114 = zext i64 %85 to i128
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %86, i64 3
  %87 = load i64, ptr %arrayidx115, align 8
  %conv116 = zext i64 %87 to i128
  %mul117 = mul i128 %conv114, %conv116
  store i128 %mul117, ptr %x22, align 16
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %88, i64 0
  %89 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %89 to i128
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %90, i64 2
  %91 = load i64, ptr %arrayidx120, align 8
  %conv121 = zext i64 %91 to i128
  %mul122 = mul i128 %conv119, %conv121
  store i128 %mul122, ptr %x23, align 16
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %92, i64 0
  %93 = load i64, ptr %arrayidx123, align 8
  %conv124 = zext i64 %93 to i128
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %94, i64 1
  %95 = load i64, ptr %arrayidx125, align 8
  %conv126 = zext i64 %95 to i128
  %mul127 = mul i128 %conv124, %conv126
  store i128 %mul127, ptr %x24, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %96, i64 0
  %97 = load i64, ptr %arrayidx128, align 8
  %conv129 = zext i64 %97 to i128
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %98, i64 0
  %99 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %99 to i128
  %mul132 = mul i128 %conv129, %conv131
  store i128 %mul132, ptr %x25, align 16
  %100 = load i128, ptr %x25, align 16
  %101 = load i128, ptr %x10, align 16
  %102 = load i128, ptr %x9, align 16
  %103 = load i128, ptr %x7, align 16
  %104 = load i128, ptr %x4, align 16
  %add = add i128 %103, %104
  %add133 = add i128 %102, %add
  %add134 = add i128 %101, %add133
  %add135 = add i128 %100, %add134
  store i128 %add135, ptr %x26, align 16
  %105 = load i128, ptr %x26, align 16
  %shr = lshr i128 %105, 51
  %conv136 = trunc i128 %shr to i64
  store i64 %conv136, ptr %x27, align 8
  %106 = load i128, ptr %x26, align 16
  %and = and i128 %106, 2251799813685247
  %conv137 = trunc i128 %and to i64
  store i64 %conv137, ptr %x28, align 8
  %107 = load i128, ptr %x21, align 16
  %108 = load i128, ptr %x17, align 16
  %109 = load i128, ptr %x14, align 16
  %110 = load i128, ptr %x12, align 16
  %111 = load i128, ptr %x11, align 16
  %add138 = add i128 %110, %111
  %add139 = add i128 %109, %add138
  %add140 = add i128 %108, %add139
  %add141 = add i128 %107, %add140
  store i128 %add141, ptr %x29, align 16
  %112 = load i128, ptr %x22, align 16
  %113 = load i128, ptr %x18, align 16
  %114 = load i128, ptr %x15, align 16
  %115 = load i128, ptr %x13, align 16
  %116 = load i128, ptr %x1, align 16
  %add142 = add i128 %115, %116
  %add143 = add i128 %114, %add142
  %add144 = add i128 %113, %add143
  %add145 = add i128 %112, %add144
  store i128 %add145, ptr %x30, align 16
  %117 = load i128, ptr %x23, align 16
  %118 = load i128, ptr %x19, align 16
  %119 = load i128, ptr %x16, align 16
  %120 = load i128, ptr %x5, align 16
  %121 = load i128, ptr %x2, align 16
  %add146 = add i128 %120, %121
  %add147 = add i128 %119, %add146
  %add148 = add i128 %118, %add147
  %add149 = add i128 %117, %add148
  store i128 %add149, ptr %x31, align 16
  %122 = load i128, ptr %x24, align 16
  %123 = load i128, ptr %x20, align 16
  %124 = load i128, ptr %x8, align 16
  %125 = load i128, ptr %x6, align 16
  %126 = load i128, ptr %x3, align 16
  %add150 = add i128 %125, %126
  %add151 = add i128 %124, %add150
  %add152 = add i128 %123, %add151
  %add153 = add i128 %122, %add152
  store i128 %add153, ptr %x32, align 16
  %127 = load i64, ptr %x27, align 8
  %conv154 = zext i64 %127 to i128
  %128 = load i128, ptr %x32, align 16
  %add155 = add i128 %conv154, %128
  store i128 %add155, ptr %x33, align 16
  %129 = load i128, ptr %x33, align 16
  %shr156 = lshr i128 %129, 51
  %conv157 = trunc i128 %shr156 to i64
  store i64 %conv157, ptr %x34, align 8
  %130 = load i128, ptr %x33, align 16
  %and158 = and i128 %130, 2251799813685247
  %conv159 = trunc i128 %and158 to i64
  store i64 %conv159, ptr %x35, align 8
  %131 = load i64, ptr %x34, align 8
  %conv160 = zext i64 %131 to i128
  %132 = load i128, ptr %x31, align 16
  %add161 = add i128 %conv160, %132
  store i128 %add161, ptr %x36, align 16
  %133 = load i128, ptr %x36, align 16
  %shr162 = lshr i128 %133, 51
  %conv163 = trunc i128 %shr162 to i64
  store i64 %conv163, ptr %x37, align 8
  %134 = load i128, ptr %x36, align 16
  %and164 = and i128 %134, 2251799813685247
  %conv165 = trunc i128 %and164 to i64
  store i64 %conv165, ptr %x38, align 8
  %135 = load i64, ptr %x37, align 8
  %conv166 = zext i64 %135 to i128
  %136 = load i128, ptr %x30, align 16
  %add167 = add i128 %conv166, %136
  store i128 %add167, ptr %x39, align 16
  %137 = load i128, ptr %x39, align 16
  %shr168 = lshr i128 %137, 51
  %conv169 = trunc i128 %shr168 to i64
  store i64 %conv169, ptr %x40, align 8
  %138 = load i128, ptr %x39, align 16
  %and170 = and i128 %138, 2251799813685247
  %conv171 = trunc i128 %and170 to i64
  store i64 %conv171, ptr %x41, align 8
  %139 = load i64, ptr %x40, align 8
  %conv172 = zext i64 %139 to i128
  %140 = load i128, ptr %x29, align 16
  %add173 = add i128 %conv172, %140
  store i128 %add173, ptr %x42, align 16
  %141 = load i128, ptr %x42, align 16
  %shr174 = lshr i128 %141, 51
  %conv175 = trunc i128 %shr174 to i64
  store i64 %conv175, ptr %x43, align 8
  %142 = load i128, ptr %x42, align 16
  %and176 = and i128 %142, 2251799813685247
  %conv177 = trunc i128 %and176 to i64
  store i64 %conv177, ptr %x44, align 8
  %143 = load i64, ptr %x43, align 8
  %mul178 = mul i64 %143, 19
  store i64 %mul178, ptr %x45, align 8
  %144 = load i64, ptr %x28, align 8
  %145 = load i64, ptr %x45, align 8
  %add179 = add i64 %144, %145
  store i64 %add179, ptr %x46, align 8
  %146 = load i64, ptr %x46, align 8
  %shr180 = lshr i64 %146, 51
  store i64 %shr180, ptr %x47, align 8
  %147 = load i64, ptr %x46, align 8
  %and181 = and i64 %147, 2251799813685247
  store i64 %and181, ptr %x48, align 8
  %148 = load i64, ptr %x47, align 8
  %149 = load i64, ptr %x35, align 8
  %add182 = add i64 %148, %149
  store i64 %add182, ptr %x49, align 8
  %150 = load i64, ptr %x49, align 8
  %shr183 = lshr i64 %150, 51
  %conv184 = trunc i64 %shr183 to i8
  store i8 %conv184, ptr %x50, align 1
  %151 = load i64, ptr %x49, align 8
  %and185 = and i64 %151, 2251799813685247
  store i64 %and185, ptr %x51, align 8
  %152 = load i8, ptr %x50, align 1
  %conv186 = zext i8 %152 to i64
  %153 = load i64, ptr %x38, align 8
  %add187 = add i64 %conv186, %153
  store i64 %add187, ptr %x52, align 8
  %154 = load i64, ptr %x48, align 8
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx188 = getelementptr inbounds i64, ptr %155, i64 0
  store i64 %154, ptr %arrayidx188, align 8
  %156 = load i64, ptr %x51, align 8
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx189 = getelementptr inbounds i64, ptr %157, i64 1
  store i64 %156, ptr %arrayidx189, align 8
  %158 = load i64, ptr %x52, align 8
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %159, i64 2
  store i64 %158, ptr %arrayidx190, align 8
  %160 = load i64, ptr %x41, align 8
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx191 = getelementptr inbounds i64, ptr %161, i64 3
  store i64 %160, ptr %arrayidx191, align 8
  %162 = load i64, ptr %x44, align 8
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx192 = getelementptr inbounds i64, ptr %163, i64 4
  store i64 %162, ptr %arrayidx192, align 8
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
