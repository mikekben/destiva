; ModuleID = '/data2/ben/alive-decomp/bench/fiat/secp256k1_dettman_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_secp256k1_dettman_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i128, align 16
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i128, align 16
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i128, align 16
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i128, align 16
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i128, align 16
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i128, align 16
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i128, align 16
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i128, align 16
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i128, align 16
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
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
  %conv2 = zext i64 %3 to i128
  %mul = mul i128 %conv, %conv2
  store i128 %mul, ptr %x1, align 16
  %4 = load i128, ptr %x1, align 16
  %shr = lshr i128 %4, 64
  %conv3 = trunc i128 %shr to i64
  store i64 %conv3, ptr %x2, align 8
  %5 = load i128, ptr %x1, align 16
  %and = and i128 %5, 18446744073709551615
  %conv4 = trunc i128 %and to i64
  store i64 %conv4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx5, align 8
  %conv6 = zext i64 %7 to i128
  %8 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 3
  %9 = load i64, ptr %arrayidx7, align 8
  %conv8 = zext i64 %9 to i128
  %mul9 = mul i128 %conv6, %conv8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %10, i64 1
  %11 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %11 to i128
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx12, align 8
  %conv13 = zext i64 %13 to i128
  %mul14 = mul i128 %conv11, %conv13
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %14, i64 2
  %15 = load i64, ptr %arrayidx15, align 8
  %conv16 = zext i64 %15 to i128
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx17, align 8
  %conv18 = zext i64 %17 to i128
  %mul19 = mul i128 %conv16, %conv18
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx20, align 8
  %conv21 = zext i64 %19 to i128
  %20 = load ptr, ptr %arg2.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %20, i64 0
  %21 = load i64, ptr %arrayidx22, align 8
  %conv23 = zext i64 %21 to i128
  %mul24 = mul i128 %conv21, %conv23
  %add = add i128 %mul19, %mul24
  %add25 = add i128 %mul14, %add
  %add26 = add i128 %mul9, %add25
  %22 = load i64, ptr %x3, align 8
  %conv27 = zext i64 %22 to i128
  %mul28 = mul i128 %conv27, 68719492368
  %add29 = add i128 %add26, %mul28
  store i128 %add29, ptr %x4, align 16
  %23 = load i128, ptr %x4, align 16
  %shr30 = lshr i128 %23, 52
  %conv31 = trunc i128 %shr30 to i64
  store i64 %conv31, ptr %x5, align 8
  %24 = load i128, ptr %x4, align 16
  %and32 = and i128 %24, 4503599627370495
  %conv33 = trunc i128 %and32 to i64
  store i64 %conv33, ptr %x6, align 8
  %25 = load i64, ptr %x5, align 8
  %conv34 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %26, i64 0
  %27 = load i64, ptr %arrayidx35, align 8
  %conv36 = zext i64 %27 to i128
  %28 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %28, i64 4
  %29 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %29 to i128
  %mul39 = mul i128 %conv36, %conv38
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %30, i64 1
  %31 = load i64, ptr %arrayidx40, align 8
  %conv41 = zext i64 %31 to i128
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %32, i64 3
  %33 = load i64, ptr %arrayidx42, align 8
  %conv43 = zext i64 %33 to i128
  %mul44 = mul i128 %conv41, %conv43
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %34, i64 2
  %35 = load i64, ptr %arrayidx45, align 8
  %conv46 = zext i64 %35 to i128
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %36, i64 2
  %37 = load i64, ptr %arrayidx47, align 8
  %conv48 = zext i64 %37 to i128
  %mul49 = mul i128 %conv46, %conv48
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %38, i64 3
  %39 = load i64, ptr %arrayidx50, align 8
  %conv51 = zext i64 %39 to i128
  %40 = load ptr, ptr %arg2.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %40, i64 1
  %41 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %41 to i128
  %mul54 = mul i128 %conv51, %conv53
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %42, i64 4
  %43 = load i64, ptr %arrayidx55, align 8
  %conv56 = zext i64 %43 to i128
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %44, i64 0
  %45 = load i64, ptr %arrayidx57, align 8
  %conv58 = zext i64 %45 to i128
  %mul59 = mul i128 %conv56, %conv58
  %add60 = add i128 %mul54, %mul59
  %add61 = add i128 %mul49, %add60
  %add62 = add i128 %mul44, %add61
  %add63 = add i128 %mul39, %add62
  %add64 = add i128 %conv34, %add63
  %46 = load i64, ptr %x2, align 8
  %conv65 = zext i64 %46 to i128
  %mul66 = mul i128 %conv65, 281475040739328
  %add67 = add i128 %add64, %mul66
  store i128 %add67, ptr %x7, align 16
  %47 = load i128, ptr %x7, align 16
  %shr68 = lshr i128 %47, 52
  %conv69 = trunc i128 %shr68 to i64
  store i64 %conv69, ptr %x8, align 8
  %48 = load i128, ptr %x7, align 16
  %and70 = and i128 %48, 4503599627370495
  %conv71 = trunc i128 %and70 to i64
  store i64 %conv71, ptr %x9, align 8
  %49 = load i64, ptr %x8, align 8
  %conv72 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %50, i64 1
  %51 = load i64, ptr %arrayidx73, align 8
  %conv74 = zext i64 %51 to i128
  %52 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %52, i64 4
  %53 = load i64, ptr %arrayidx75, align 8
  %conv76 = zext i64 %53 to i128
  %mul77 = mul i128 %conv74, %conv76
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %54, i64 2
  %55 = load i64, ptr %arrayidx78, align 8
  %conv79 = zext i64 %55 to i128
  %56 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %56, i64 3
  %57 = load i64, ptr %arrayidx80, align 8
  %conv81 = zext i64 %57 to i128
  %mul82 = mul i128 %conv79, %conv81
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %58, i64 3
  %59 = load i64, ptr %arrayidx83, align 8
  %conv84 = zext i64 %59 to i128
  %60 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %60, i64 2
  %61 = load i64, ptr %arrayidx85, align 8
  %conv86 = zext i64 %61 to i128
  %mul87 = mul i128 %conv84, %conv86
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %62, i64 4
  %63 = load i64, ptr %arrayidx88, align 8
  %conv89 = zext i64 %63 to i128
  %64 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %64, i64 1
  %65 = load i64, ptr %arrayidx90, align 8
  %conv91 = zext i64 %65 to i128
  %mul92 = mul i128 %conv89, %conv91
  %add93 = add i128 %mul87, %mul92
  %add94 = add i128 %mul82, %add93
  %add95 = add i128 %mul77, %add94
  %add96 = add i128 %conv72, %add95
  store i128 %add96, ptr %x10, align 16
  %66 = load i128, ptr %x10, align 16
  %shr97 = lshr i128 %66, 52
  %conv98 = trunc i128 %shr97 to i64
  store i64 %conv98, ptr %x11, align 8
  %67 = load i128, ptr %x10, align 16
  %and99 = and i128 %67, 4503599627370495
  %conv100 = trunc i128 %and99 to i64
  store i64 %conv100, ptr %x12, align 8
  %68 = load i64, ptr %x9, align 8
  %shr101 = lshr i64 %68, 48
  store i64 %shr101, ptr %x13, align 8
  %69 = load i64, ptr %x9, align 8
  %and102 = and i64 %69, 281474976710655
  store i64 %and102, ptr %x14, align 8
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %70, i64 0
  %71 = load i64, ptr %arrayidx103, align 8
  %conv104 = zext i64 %71 to i128
  %72 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %72, i64 0
  %73 = load i64, ptr %arrayidx105, align 8
  %conv106 = zext i64 %73 to i128
  %mul107 = mul i128 %conv104, %conv106
  %74 = load i64, ptr %x13, align 8
  %75 = load i64, ptr %x12, align 8
  %shl = shl i64 %75, 4
  %add108 = add i64 %74, %shl
  %conv109 = zext i64 %add108 to i128
  %mul110 = mul i128 %conv109, 4294968273
  %add111 = add i128 %mul107, %mul110
  store i128 %add111, ptr %x15, align 16
  %76 = load i128, ptr %x15, align 16
  %shr112 = lshr i128 %76, 52
  %conv113 = trunc i128 %shr112 to i64
  store i64 %conv113, ptr %x16, align 8
  %77 = load i128, ptr %x15, align 16
  %and114 = and i128 %77, 4503599627370495
  %conv115 = trunc i128 %and114 to i64
  store i64 %conv115, ptr %x17, align 8
  %78 = load i64, ptr %x11, align 8
  %conv116 = zext i64 %78 to i128
  %79 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %79, i64 2
  %80 = load i64, ptr %arrayidx117, align 8
  %conv118 = zext i64 %80 to i128
  %81 = load ptr, ptr %arg2.addr, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %81, i64 4
  %82 = load i64, ptr %arrayidx119, align 8
  %conv120 = zext i64 %82 to i128
  %mul121 = mul i128 %conv118, %conv120
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %83, i64 3
  %84 = load i64, ptr %arrayidx122, align 8
  %conv123 = zext i64 %84 to i128
  %85 = load ptr, ptr %arg2.addr, align 8
  %arrayidx124 = getelementptr inbounds i64, ptr %85, i64 3
  %86 = load i64, ptr %arrayidx124, align 8
  %conv125 = zext i64 %86 to i128
  %mul126 = mul i128 %conv123, %conv125
  %87 = load ptr, ptr %arg1.addr, align 8
  %arrayidx127 = getelementptr inbounds i64, ptr %87, i64 4
  %88 = load i64, ptr %arrayidx127, align 8
  %conv128 = zext i64 %88 to i128
  %89 = load ptr, ptr %arg2.addr, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %89, i64 2
  %90 = load i64, ptr %arrayidx129, align 8
  %conv130 = zext i64 %90 to i128
  %mul131 = mul i128 %conv128, %conv130
  %add132 = add i128 %mul126, %mul131
  %add133 = add i128 %mul121, %add132
  %add134 = add i128 %conv116, %add133
  store i128 %add134, ptr %x18, align 16
  %91 = load i128, ptr %x18, align 16
  %shr135 = lshr i128 %91, 52
  %conv136 = trunc i128 %shr135 to i64
  store i64 %conv136, ptr %x19, align 8
  %92 = load i128, ptr %x18, align 16
  %and137 = and i128 %92, 4503599627370495
  %conv138 = trunc i128 %and137 to i64
  store i64 %conv138, ptr %x20, align 8
  %93 = load i64, ptr %x16, align 8
  %conv139 = zext i64 %93 to i128
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %94, i64 0
  %95 = load i64, ptr %arrayidx140, align 8
  %conv141 = zext i64 %95 to i128
  %96 = load ptr, ptr %arg2.addr, align 8
  %arrayidx142 = getelementptr inbounds i64, ptr %96, i64 1
  %97 = load i64, ptr %arrayidx142, align 8
  %conv143 = zext i64 %97 to i128
  %mul144 = mul i128 %conv141, %conv143
  %98 = load ptr, ptr %arg1.addr, align 8
  %arrayidx145 = getelementptr inbounds i64, ptr %98, i64 1
  %99 = load i64, ptr %arrayidx145, align 8
  %conv146 = zext i64 %99 to i128
  %100 = load ptr, ptr %arg2.addr, align 8
  %arrayidx147 = getelementptr inbounds i64, ptr %100, i64 0
  %101 = load i64, ptr %arrayidx147, align 8
  %conv148 = zext i64 %101 to i128
  %mul149 = mul i128 %conv146, %conv148
  %add150 = add i128 %mul144, %mul149
  %add151 = add i128 %conv139, %add150
  %102 = load i64, ptr %x20, align 8
  %conv152 = zext i64 %102 to i128
  %mul153 = mul i128 %conv152, 68719492368
  %add154 = add i128 %add151, %mul153
  store i128 %add154, ptr %x21, align 16
  %103 = load i128, ptr %x21, align 16
  %shr155 = lshr i128 %103, 52
  %conv156 = trunc i128 %shr155 to i64
  store i64 %conv156, ptr %x22, align 8
  %104 = load i128, ptr %x21, align 16
  %and157 = and i128 %104, 4503599627370495
  %conv158 = trunc i128 %and157 to i64
  store i64 %conv158, ptr %x23, align 8
  %105 = load i64, ptr %x19, align 8
  %conv159 = zext i64 %105 to i128
  %106 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i64, ptr %106, i64 3
  %107 = load i64, ptr %arrayidx160, align 8
  %conv161 = zext i64 %107 to i128
  %108 = load ptr, ptr %arg2.addr, align 8
  %arrayidx162 = getelementptr inbounds i64, ptr %108, i64 4
  %109 = load i64, ptr %arrayidx162, align 8
  %conv163 = zext i64 %109 to i128
  %mul164 = mul i128 %conv161, %conv163
  %110 = load ptr, ptr %arg1.addr, align 8
  %arrayidx165 = getelementptr inbounds i64, ptr %110, i64 4
  %111 = load i64, ptr %arrayidx165, align 8
  %conv166 = zext i64 %111 to i128
  %112 = load ptr, ptr %arg2.addr, align 8
  %arrayidx167 = getelementptr inbounds i64, ptr %112, i64 3
  %113 = load i64, ptr %arrayidx167, align 8
  %conv168 = zext i64 %113 to i128
  %mul169 = mul i128 %conv166, %conv168
  %add170 = add i128 %mul164, %mul169
  %add171 = add i128 %conv159, %add170
  store i128 %add171, ptr %x24, align 16
  %114 = load i128, ptr %x24, align 16
  %shr172 = lshr i128 %114, 64
  %conv173 = trunc i128 %shr172 to i64
  store i64 %conv173, ptr %x25, align 8
  %115 = load i128, ptr %x24, align 16
  %and174 = and i128 %115, 18446744073709551615
  %conv175 = trunc i128 %and174 to i64
  store i64 %conv175, ptr %x26, align 8
  %116 = load i64, ptr %x22, align 8
  %conv176 = zext i64 %116 to i128
  %117 = load ptr, ptr %arg1.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, ptr %117, i64 0
  %118 = load i64, ptr %arrayidx177, align 8
  %conv178 = zext i64 %118 to i128
  %119 = load ptr, ptr %arg2.addr, align 8
  %arrayidx179 = getelementptr inbounds i64, ptr %119, i64 2
  %120 = load i64, ptr %arrayidx179, align 8
  %conv180 = zext i64 %120 to i128
  %mul181 = mul i128 %conv178, %conv180
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx182 = getelementptr inbounds i64, ptr %121, i64 1
  %122 = load i64, ptr %arrayidx182, align 8
  %conv183 = zext i64 %122 to i128
  %123 = load ptr, ptr %arg2.addr, align 8
  %arrayidx184 = getelementptr inbounds i64, ptr %123, i64 1
  %124 = load i64, ptr %arrayidx184, align 8
  %conv185 = zext i64 %124 to i128
  %mul186 = mul i128 %conv183, %conv185
  %125 = load ptr, ptr %arg1.addr, align 8
  %arrayidx187 = getelementptr inbounds i64, ptr %125, i64 2
  %126 = load i64, ptr %arrayidx187, align 8
  %conv188 = zext i64 %126 to i128
  %127 = load ptr, ptr %arg2.addr, align 8
  %arrayidx189 = getelementptr inbounds i64, ptr %127, i64 0
  %128 = load i64, ptr %arrayidx189, align 8
  %conv190 = zext i64 %128 to i128
  %mul191 = mul i128 %conv188, %conv190
  %add192 = add i128 %mul186, %mul191
  %add193 = add i128 %mul181, %add192
  %add194 = add i128 %conv176, %add193
  %129 = load i64, ptr %x26, align 8
  %conv195 = zext i64 %129 to i128
  %mul196 = mul i128 %conv195, 68719492368
  %add197 = add i128 %add194, %mul196
  store i128 %add197, ptr %x27, align 16
  %130 = load i128, ptr %x27, align 16
  %shr198 = lshr i128 %130, 52
  %conv199 = trunc i128 %shr198 to i64
  store i64 %conv199, ptr %x28, align 8
  %131 = load i128, ptr %x27, align 16
  %and200 = and i128 %131, 4503599627370495
  %conv201 = trunc i128 %and200 to i64
  store i64 %conv201, ptr %x29, align 8
  %132 = load i64, ptr %x28, align 8
  %133 = load i64, ptr %x6, align 8
  %add202 = add i64 %132, %133
  %conv203 = zext i64 %add202 to i128
  %134 = load i64, ptr %x25, align 8
  %conv204 = zext i64 %134 to i128
  %mul205 = mul i128 %conv204, 281475040739328
  %add206 = add i128 %conv203, %mul205
  store i128 %add206, ptr %x30, align 16
  %135 = load i128, ptr %x30, align 16
  %shr207 = lshr i128 %135, 52
  %conv208 = trunc i128 %shr207 to i64
  store i64 %conv208, ptr %x31, align 8
  %136 = load i128, ptr %x30, align 16
  %and209 = and i128 %136, 4503599627370495
  %conv210 = trunc i128 %and209 to i64
  store i64 %conv210, ptr %x32, align 8
  %137 = load i64, ptr %x31, align 8
  %138 = load i64, ptr %x14, align 8
  %add211 = add i64 %137, %138
  store i64 %add211, ptr %x33, align 8
  %139 = load i64, ptr %x17, align 8
  %140 = load ptr, ptr %out1.addr, align 8
  %arrayidx212 = getelementptr inbounds i64, ptr %140, i64 0
  store i64 %139, ptr %arrayidx212, align 8
  %141 = load i64, ptr %x23, align 8
  %142 = load ptr, ptr %out1.addr, align 8
  %arrayidx213 = getelementptr inbounds i64, ptr %142, i64 1
  store i64 %141, ptr %arrayidx213, align 8
  %143 = load i64, ptr %x29, align 8
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx214 = getelementptr inbounds i64, ptr %144, i64 2
  store i64 %143, ptr %arrayidx214, align 8
  %145 = load i64, ptr %x32, align 8
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx215 = getelementptr inbounds i64, ptr %146, i64 3
  store i64 %145, ptr %arrayidx215, align 8
  %147 = load i64, ptr %x33, align 8
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx216 = getelementptr inbounds i64, ptr %148, i64 4
  store i64 %147, ptr %arrayidx216, align 8
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
