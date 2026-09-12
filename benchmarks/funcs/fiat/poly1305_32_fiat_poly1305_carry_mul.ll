; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_poly1305_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  %x28 = alloca i32, align 4
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i32, align 4
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i32, align 4
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i32, align 4
  %x42 = alloca i64, align 8
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 4
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 4
  %3 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %3, 5
  %conv2 = zext i32 %mul to i64
  %mul3 = mul i64 %conv, %conv2
  store i64 %mul3, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 4
  %5 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %5 to i64
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx6, align 4
  %mul7 = mul i32 %7, 5
  %conv8 = zext i32 %mul7 to i64
  %mul9 = mul i64 %conv5, %conv8
  store i64 %mul9, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx10, align 4
  %conv11 = zext i32 %9 to i64
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx12, align 4
  %mul13 = mul i32 %11, 5
  %conv14 = zext i32 %mul13 to i64
  %mul15 = mul i64 %conv11, %conv14
  store i64 %mul15, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %13 to i64
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx18, align 4
  %mul19 = mul i32 %15, 5
  %conv20 = zext i32 %mul19 to i64
  %mul21 = mul i64 %conv17, %conv20
  store i64 %mul21, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx22, align 4
  %conv23 = zext i32 %17 to i64
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %18, i64 4
  %19 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul i32 %19, 5
  %conv26 = zext i32 %mul25 to i64
  %mul27 = mul i64 %conv23, %conv26
  store i64 %mul27, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %20, i64 3
  %21 = load i32, ptr %arrayidx28, align 4
  %conv29 = zext i32 %21 to i64
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %22, i64 3
  %23 = load i32, ptr %arrayidx30, align 4
  %mul31 = mul i32 %23, 5
  %conv32 = zext i32 %mul31 to i64
  %mul33 = mul i64 %conv29, %conv32
  store i64 %mul33, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx34, align 4
  %conv35 = zext i32 %25 to i64
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %26, i64 2
  %27 = load i32, ptr %arrayidx36, align 4
  %mul37 = mul i32 %27, 5
  %conv38 = zext i32 %mul37 to i64
  %mul39 = mul i64 %conv35, %conv38
  store i64 %mul39, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %28, i64 2
  %29 = load i32, ptr %arrayidx40, align 4
  %conv41 = zext i32 %29 to i64
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %30, i64 4
  %31 = load i32, ptr %arrayidx42, align 4
  %mul43 = mul i32 %31, 5
  %conv44 = zext i32 %mul43 to i64
  %mul45 = mul i64 %conv41, %conv44
  store i64 %mul45, ptr %x8, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx46, align 4
  %conv47 = zext i32 %33 to i64
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %34, i64 3
  %35 = load i32, ptr %arrayidx48, align 4
  %mul49 = mul i32 %35, 5
  %conv50 = zext i32 %mul49 to i64
  %mul51 = mul i64 %conv47, %conv50
  store i64 %mul51, ptr %x9, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %36, i64 1
  %37 = load i32, ptr %arrayidx52, align 4
  %conv53 = zext i32 %37 to i64
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %38, i64 4
  %39 = load i32, ptr %arrayidx54, align 4
  %mul55 = mul i32 %39, 5
  %conv56 = zext i32 %mul55 to i64
  %mul57 = mul i64 %conv53, %conv56
  store i64 %mul57, ptr %x10, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %40, i64 4
  %41 = load i32, ptr %arrayidx58, align 4
  %conv59 = zext i32 %41 to i64
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %42, i64 0
  %43 = load i32, ptr %arrayidx60, align 4
  %conv61 = zext i32 %43 to i64
  %mul62 = mul i64 %conv59, %conv61
  store i64 %mul62, ptr %x11, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %44, i64 3
  %45 = load i32, ptr %arrayidx63, align 4
  %conv64 = zext i32 %45 to i64
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %46, i64 1
  %47 = load i32, ptr %arrayidx65, align 4
  %conv66 = zext i32 %47 to i64
  %mul67 = mul i64 %conv64, %conv66
  store i64 %mul67, ptr %x12, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %48, i64 3
  %49 = load i32, ptr %arrayidx68, align 4
  %conv69 = zext i32 %49 to i64
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %50, i64 0
  %51 = load i32, ptr %arrayidx70, align 4
  %conv71 = zext i32 %51 to i64
  %mul72 = mul i64 %conv69, %conv71
  store i64 %mul72, ptr %x13, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %52, i64 2
  %53 = load i32, ptr %arrayidx73, align 4
  %conv74 = zext i32 %53 to i64
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %54, i64 2
  %55 = load i32, ptr %arrayidx75, align 4
  %conv76 = zext i32 %55 to i64
  %mul77 = mul i64 %conv74, %conv76
  store i64 %mul77, ptr %x14, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %56, i64 2
  %57 = load i32, ptr %arrayidx78, align 4
  %conv79 = zext i32 %57 to i64
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %58, i64 1
  %59 = load i32, ptr %arrayidx80, align 4
  %conv81 = zext i32 %59 to i64
  %mul82 = mul i64 %conv79, %conv81
  store i64 %mul82, ptr %x15, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %60, i64 2
  %61 = load i32, ptr %arrayidx83, align 4
  %conv84 = zext i32 %61 to i64
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %62, i64 0
  %63 = load i32, ptr %arrayidx85, align 4
  %conv86 = zext i32 %63 to i64
  %mul87 = mul i64 %conv84, %conv86
  store i64 %mul87, ptr %x16, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %64, i64 1
  %65 = load i32, ptr %arrayidx88, align 4
  %conv89 = zext i32 %65 to i64
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %66, i64 3
  %67 = load i32, ptr %arrayidx90, align 4
  %conv91 = zext i32 %67 to i64
  %mul92 = mul i64 %conv89, %conv91
  store i64 %mul92, ptr %x17, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %68, i64 1
  %69 = load i32, ptr %arrayidx93, align 4
  %conv94 = zext i32 %69 to i64
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %70, i64 2
  %71 = load i32, ptr %arrayidx95, align 4
  %conv96 = zext i32 %71 to i64
  %mul97 = mul i64 %conv94, %conv96
  store i64 %mul97, ptr %x18, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %72, i64 1
  %73 = load i32, ptr %arrayidx98, align 4
  %conv99 = zext i32 %73 to i64
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %74, i64 1
  %75 = load i32, ptr %arrayidx100, align 4
  %conv101 = zext i32 %75 to i64
  %mul102 = mul i64 %conv99, %conv101
  store i64 %mul102, ptr %x19, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %76, i64 1
  %77 = load i32, ptr %arrayidx103, align 4
  %conv104 = zext i32 %77 to i64
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %78, i64 0
  %79 = load i32, ptr %arrayidx105, align 4
  %conv106 = zext i32 %79 to i64
  %mul107 = mul i64 %conv104, %conv106
  store i64 %mul107, ptr %x20, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %80, i64 0
  %81 = load i32, ptr %arrayidx108, align 4
  %conv109 = zext i32 %81 to i64
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %82, i64 4
  %83 = load i32, ptr %arrayidx110, align 4
  %conv111 = zext i32 %83 to i64
  %mul112 = mul i64 %conv109, %conv111
  store i64 %mul112, ptr %x21, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %84, i64 0
  %85 = load i32, ptr %arrayidx113, align 4
  %conv114 = zext i32 %85 to i64
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %86, i64 3
  %87 = load i32, ptr %arrayidx115, align 4
  %conv116 = zext i32 %87 to i64
  %mul117 = mul i64 %conv114, %conv116
  store i64 %mul117, ptr %x22, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %88, i64 0
  %89 = load i32, ptr %arrayidx118, align 4
  %conv119 = zext i32 %89 to i64
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %90, i64 2
  %91 = load i32, ptr %arrayidx120, align 4
  %conv121 = zext i32 %91 to i64
  %mul122 = mul i64 %conv119, %conv121
  store i64 %mul122, ptr %x23, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %92, i64 0
  %93 = load i32, ptr %arrayidx123, align 4
  %conv124 = zext i32 %93 to i64
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %94, i64 1
  %95 = load i32, ptr %arrayidx125, align 4
  %conv126 = zext i32 %95 to i64
  %mul127 = mul i64 %conv124, %conv126
  store i64 %mul127, ptr %x24, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %96, i64 0
  %97 = load i32, ptr %arrayidx128, align 4
  %conv129 = zext i32 %97 to i64
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %98, i64 0
  %99 = load i32, ptr %arrayidx130, align 4
  %conv131 = zext i32 %99 to i64
  %mul132 = mul i64 %conv129, %conv131
  store i64 %mul132, ptr %x25, align 8
  %100 = load i64, ptr %x25, align 8
  %101 = load i64, ptr %x10, align 8
  %102 = load i64, ptr %x9, align 8
  %103 = load i64, ptr %x7, align 8
  %104 = load i64, ptr %x4, align 8
  %add = add i64 %103, %104
  %add133 = add i64 %102, %add
  %add134 = add i64 %101, %add133
  %add135 = add i64 %100, %add134
  store i64 %add135, ptr %x26, align 8
  %105 = load i64, ptr %x26, align 8
  %shr = lshr i64 %105, 26
  store i64 %shr, ptr %x27, align 8
  %106 = load i64, ptr %x26, align 8
  %and = and i64 %106, 67108863
  %conv136 = trunc i64 %and to i32
  store i32 %conv136, ptr %x28, align 4
  %107 = load i64, ptr %x21, align 8
  %108 = load i64, ptr %x17, align 8
  %109 = load i64, ptr %x14, align 8
  %110 = load i64, ptr %x12, align 8
  %111 = load i64, ptr %x11, align 8
  %add137 = add i64 %110, %111
  %add138 = add i64 %109, %add137
  %add139 = add i64 %108, %add138
  %add140 = add i64 %107, %add139
  store i64 %add140, ptr %x29, align 8
  %112 = load i64, ptr %x22, align 8
  %113 = load i64, ptr %x18, align 8
  %114 = load i64, ptr %x15, align 8
  %115 = load i64, ptr %x13, align 8
  %116 = load i64, ptr %x1, align 8
  %add141 = add i64 %115, %116
  %add142 = add i64 %114, %add141
  %add143 = add i64 %113, %add142
  %add144 = add i64 %112, %add143
  store i64 %add144, ptr %x30, align 8
  %117 = load i64, ptr %x23, align 8
  %118 = load i64, ptr %x19, align 8
  %119 = load i64, ptr %x16, align 8
  %120 = load i64, ptr %x5, align 8
  %121 = load i64, ptr %x2, align 8
  %add145 = add i64 %120, %121
  %add146 = add i64 %119, %add145
  %add147 = add i64 %118, %add146
  %add148 = add i64 %117, %add147
  store i64 %add148, ptr %x31, align 8
  %122 = load i64, ptr %x24, align 8
  %123 = load i64, ptr %x20, align 8
  %124 = load i64, ptr %x8, align 8
  %125 = load i64, ptr %x6, align 8
  %126 = load i64, ptr %x3, align 8
  %add149 = add i64 %125, %126
  %add150 = add i64 %124, %add149
  %add151 = add i64 %123, %add150
  %add152 = add i64 %122, %add151
  store i64 %add152, ptr %x32, align 8
  %127 = load i64, ptr %x27, align 8
  %128 = load i64, ptr %x32, align 8
  %add153 = add i64 %127, %128
  store i64 %add153, ptr %x33, align 8
  %129 = load i64, ptr %x33, align 8
  %shr154 = lshr i64 %129, 26
  store i64 %shr154, ptr %x34, align 8
  %130 = load i64, ptr %x33, align 8
  %and155 = and i64 %130, 67108863
  %conv156 = trunc i64 %and155 to i32
  store i32 %conv156, ptr %x35, align 4
  %131 = load i64, ptr %x34, align 8
  %132 = load i64, ptr %x31, align 8
  %add157 = add i64 %131, %132
  store i64 %add157, ptr %x36, align 8
  %133 = load i64, ptr %x36, align 8
  %shr158 = lshr i64 %133, 26
  store i64 %shr158, ptr %x37, align 8
  %134 = load i64, ptr %x36, align 8
  %and159 = and i64 %134, 67108863
  %conv160 = trunc i64 %and159 to i32
  store i32 %conv160, ptr %x38, align 4
  %135 = load i64, ptr %x37, align 8
  %136 = load i64, ptr %x30, align 8
  %add161 = add i64 %135, %136
  store i64 %add161, ptr %x39, align 8
  %137 = load i64, ptr %x39, align 8
  %shr162 = lshr i64 %137, 26
  store i64 %shr162, ptr %x40, align 8
  %138 = load i64, ptr %x39, align 8
  %and163 = and i64 %138, 67108863
  %conv164 = trunc i64 %and163 to i32
  store i32 %conv164, ptr %x41, align 4
  %139 = load i64, ptr %x40, align 8
  %140 = load i64, ptr %x29, align 8
  %add165 = add i64 %139, %140
  store i64 %add165, ptr %x42, align 8
  %141 = load i64, ptr %x42, align 8
  %shr166 = lshr i64 %141, 26
  %conv167 = trunc i64 %shr166 to i32
  store i32 %conv167, ptr %x43, align 4
  %142 = load i64, ptr %x42, align 8
  %and168 = and i64 %142, 67108863
  %conv169 = trunc i64 %and168 to i32
  store i32 %conv169, ptr %x44, align 4
  %143 = load i32, ptr %x43, align 4
  %conv170 = zext i32 %143 to i64
  %mul171 = mul i64 %conv170, 5
  store i64 %mul171, ptr %x45, align 8
  %144 = load i32, ptr %x28, align 4
  %conv172 = zext i32 %144 to i64
  %145 = load i64, ptr %x45, align 8
  %add173 = add i64 %conv172, %145
  store i64 %add173, ptr %x46, align 8
  %146 = load i64, ptr %x46, align 8
  %shr174 = lshr i64 %146, 26
  %conv175 = trunc i64 %shr174 to i32
  store i32 %conv175, ptr %x47, align 4
  %147 = load i64, ptr %x46, align 8
  %and176 = and i64 %147, 67108863
  %conv177 = trunc i64 %and176 to i32
  store i32 %conv177, ptr %x48, align 4
  %148 = load i32, ptr %x47, align 4
  %149 = load i32, ptr %x35, align 4
  %add178 = add i32 %148, %149
  store i32 %add178, ptr %x49, align 4
  %150 = load i32, ptr %x49, align 4
  %shr179 = lshr i32 %150, 26
  %conv180 = trunc i32 %shr179 to i8
  store i8 %conv180, ptr %x50, align 1
  %151 = load i32, ptr %x49, align 4
  %and181 = and i32 %151, 67108863
  store i32 %and181, ptr %x51, align 4
  %152 = load i8, ptr %x50, align 1
  %conv182 = zext i8 %152 to i32
  %153 = load i32, ptr %x38, align 4
  %add183 = add i32 %conv182, %153
  store i32 %add183, ptr %x52, align 4
  %154 = load i32, ptr %x48, align 4
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %155, i64 0
  store i32 %154, ptr %arrayidx184, align 4
  %156 = load i32, ptr %x51, align 4
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, ptr %157, i64 1
  store i32 %156, ptr %arrayidx185, align 4
  %158 = load i32, ptr %x52, align 4
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %159, i64 2
  store i32 %158, ptr %arrayidx186, align 4
  %160 = load i32, ptr %x41, align 4
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, ptr %161, i64 3
  store i32 %160, ptr %arrayidx187, align 4
  %162 = load i32, ptr %x44, align 4
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %163, i64 4
  store i32 %162, ptr %arrayidx188, align 4
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
