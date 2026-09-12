; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_secp256k1_dettman_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i128, align 16
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i128, align 16
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i128, align 16
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i128, align 16
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i128, align 16
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i128, align 16
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i128, align 16
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i128, align 16
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i128, align 16
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i128, align 16
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 3
  %1 = load i64, ptr %arrayidx, align 8
  %mul = mul i64 %1, 2
  store i64 %mul, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  %mul2 = mul i64 %3, 2
  store i64 %mul2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx3, align 8
  %mul4 = mul i64 %5, 2
  store i64 %mul4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx5, align 8
  %mul6 = mul i64 %7, 2
  store i64 %mul6, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx7, align 8
  %conv = zext i64 %9 to i128
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 4
  %11 = load i64, ptr %arrayidx8, align 8
  %conv9 = zext i64 %11 to i128
  %mul10 = mul i128 %conv, %conv9
  store i128 %mul10, ptr %x5, align 16
  %12 = load i128, ptr %x5, align 16
  %shr = lshr i128 %12, 64
  %conv11 = trunc i128 %shr to i64
  store i64 %conv11, ptr %x6, align 8
  %13 = load i128, ptr %x5, align 16
  %and = and i128 %13, 18446744073709551615
  %conv12 = trunc i128 %and to i64
  store i64 %conv12, ptr %x7, align 8
  %14 = load i64, ptr %x4, align 8
  %conv13 = zext i64 %14 to i128
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx14, align 8
  %conv15 = zext i64 %16 to i128
  %mul16 = mul i128 %conv13, %conv15
  %17 = load i64, ptr %x3, align 8
  %conv17 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %18, i64 2
  %19 = load i64, ptr %arrayidx18, align 8
  %conv19 = zext i64 %19 to i128
  %mul20 = mul i128 %conv17, %conv19
  %add = add i128 %mul16, %mul20
  %20 = load i64, ptr %x7, align 8
  %conv21 = zext i64 %20 to i128
  %mul22 = mul i128 %conv21, 68719492368
  %add23 = add i128 %add, %mul22
  store i128 %add23, ptr %x8, align 16
  %21 = load i128, ptr %x8, align 16
  %shr24 = lshr i128 %21, 52
  %conv25 = trunc i128 %shr24 to i64
  store i64 %conv25, ptr %x9, align 8
  %22 = load i128, ptr %x8, align 16
  %and26 = and i128 %22, 4503599627370495
  %conv27 = trunc i128 %and26 to i64
  store i64 %conv27, ptr %x10, align 8
  %23 = load i64, ptr %x9, align 8
  %conv28 = zext i64 %23 to i128
  %24 = load i64, ptr %x4, align 8
  %conv29 = zext i64 %24 to i128
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %25, i64 4
  %26 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %26 to i128
  %mul32 = mul i128 %conv29, %conv31
  %27 = load i64, ptr %x3, align 8
  %conv33 = zext i64 %27 to i128
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %28, i64 3
  %29 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %29 to i128
  %mul36 = mul i128 %conv33, %conv35
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %30, i64 2
  %31 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %31 to i128
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %32, i64 2
  %33 = load i64, ptr %arrayidx39, align 8
  %conv40 = zext i64 %33 to i128
  %mul41 = mul i128 %conv38, %conv40
  %add42 = add i128 %mul36, %mul41
  %add43 = add i128 %mul32, %add42
  %add44 = add i128 %conv28, %add43
  %34 = load i64, ptr %x6, align 8
  %conv45 = zext i64 %34 to i128
  %mul46 = mul i128 %conv45, 281475040739328
  %add47 = add i128 %add44, %mul46
  store i128 %add47, ptr %x11, align 16
  %35 = load i128, ptr %x11, align 16
  %shr48 = lshr i128 %35, 52
  %conv49 = trunc i128 %shr48 to i64
  store i64 %conv49, ptr %x12, align 8
  %36 = load i128, ptr %x11, align 16
  %and50 = and i128 %36, 4503599627370495
  %conv51 = trunc i128 %and50 to i64
  store i64 %conv51, ptr %x13, align 8
  %37 = load i64, ptr %x12, align 8
  %conv52 = zext i64 %37 to i128
  %38 = load i64, ptr %x3, align 8
  %conv53 = zext i64 %38 to i128
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %39, i64 4
  %40 = load i64, ptr %arrayidx54, align 8
  %conv55 = zext i64 %40 to i128
  %mul56 = mul i128 %conv53, %conv55
  %41 = load i64, ptr %x2, align 8
  %conv57 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %42, i64 3
  %43 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %43 to i128
  %mul60 = mul i128 %conv57, %conv59
  %add61 = add i128 %mul56, %mul60
  %add62 = add i128 %conv52, %add61
  store i128 %add62, ptr %x14, align 16
  %44 = load i128, ptr %x14, align 16
  %shr63 = lshr i128 %44, 52
  %conv64 = trunc i128 %shr63 to i64
  store i64 %conv64, ptr %x15, align 8
  %45 = load i128, ptr %x14, align 16
  %and65 = and i128 %45, 4503599627370495
  %conv66 = trunc i128 %and65 to i64
  store i64 %conv66, ptr %x16, align 8
  %46 = load i64, ptr %x13, align 8
  %shr67 = lshr i64 %46, 48
  store i64 %shr67, ptr %x17, align 8
  %47 = load i64, ptr %x13, align 8
  %and68 = and i64 %47, 281474976710655
  store i64 %and68, ptr %x18, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %48, i64 0
  %49 = load i64, ptr %arrayidx69, align 8
  %conv70 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, ptr %50, i64 0
  %51 = load i64, ptr %arrayidx71, align 8
  %conv72 = zext i64 %51 to i128
  %mul73 = mul i128 %conv70, %conv72
  %52 = load i64, ptr %x17, align 8
  %53 = load i64, ptr %x16, align 8
  %shl = shl i64 %53, 4
  %add74 = add i64 %52, %shl
  %conv75 = zext i64 %add74 to i128
  %mul76 = mul i128 %conv75, 4294968273
  %add77 = add i128 %mul73, %mul76
  store i128 %add77, ptr %x19, align 16
  %54 = load i128, ptr %x19, align 16
  %shr78 = lshr i128 %54, 52
  %conv79 = trunc i128 %shr78 to i64
  store i64 %conv79, ptr %x20, align 8
  %55 = load i128, ptr %x19, align 16
  %and80 = and i128 %55, 4503599627370495
  %conv81 = trunc i128 %and80 to i64
  store i64 %conv81, ptr %x21, align 8
  %56 = load i64, ptr %x15, align 8
  %conv82 = zext i64 %56 to i128
  %57 = load i64, ptr %x2, align 8
  %conv83 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %58, i64 4
  %59 = load i64, ptr %arrayidx84, align 8
  %conv85 = zext i64 %59 to i128
  %mul86 = mul i128 %conv83, %conv85
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %60, i64 3
  %61 = load i64, ptr %arrayidx87, align 8
  %conv88 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %62, i64 3
  %63 = load i64, ptr %arrayidx89, align 8
  %conv90 = zext i64 %63 to i128
  %mul91 = mul i128 %conv88, %conv90
  %add92 = add i128 %mul86, %mul91
  %add93 = add i128 %conv82, %add92
  store i128 %add93, ptr %x22, align 16
  %64 = load i128, ptr %x22, align 16
  %shr94 = lshr i128 %64, 52
  %conv95 = trunc i128 %shr94 to i64
  store i64 %conv95, ptr %x23, align 8
  %65 = load i128, ptr %x22, align 16
  %and96 = and i128 %65, 4503599627370495
  %conv97 = trunc i128 %and96 to i64
  store i64 %conv97, ptr %x24, align 8
  %66 = load i64, ptr %x20, align 8
  %conv98 = zext i64 %66 to i128
  %67 = load i64, ptr %x4, align 8
  %conv99 = zext i64 %67 to i128
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %68, i64 1
  %69 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %69 to i128
  %mul102 = mul i128 %conv99, %conv101
  %add103 = add i128 %conv98, %mul102
  %70 = load i64, ptr %x24, align 8
  %conv104 = zext i64 %70 to i128
  %mul105 = mul i128 %conv104, 68719492368
  %add106 = add i128 %add103, %mul105
  store i128 %add106, ptr %x25, align 16
  %71 = load i128, ptr %x25, align 16
  %shr107 = lshr i128 %71, 52
  %conv108 = trunc i128 %shr107 to i64
  store i64 %conv108, ptr %x26, align 8
  %72 = load i128, ptr %x25, align 16
  %and109 = and i128 %72, 4503599627370495
  %conv110 = trunc i128 %and109 to i64
  store i64 %conv110, ptr %x27, align 8
  %73 = load i64, ptr %x23, align 8
  %conv111 = zext i64 %73 to i128
  %74 = load i64, ptr %x1, align 8
  %conv112 = zext i64 %74 to i128
  %75 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %75, i64 4
  %76 = load i64, ptr %arrayidx113, align 8
  %conv114 = zext i64 %76 to i128
  %mul115 = mul i128 %conv112, %conv114
  %add116 = add i128 %conv111, %mul115
  store i128 %add116, ptr %x28, align 16
  %77 = load i128, ptr %x28, align 16
  %shr117 = lshr i128 %77, 64
  %conv118 = trunc i128 %shr117 to i64
  store i64 %conv118, ptr %x29, align 8
  %78 = load i128, ptr %x28, align 16
  %and119 = and i128 %78, 18446744073709551615
  %conv120 = trunc i128 %and119 to i64
  store i64 %conv120, ptr %x30, align 8
  %79 = load i64, ptr %x26, align 8
  %conv121 = zext i64 %79 to i128
  %80 = load i64, ptr %x4, align 8
  %conv122 = zext i64 %80 to i128
  %81 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %81, i64 2
  %82 = load i64, ptr %arrayidx123, align 8
  %conv124 = zext i64 %82 to i128
  %mul125 = mul i128 %conv122, %conv124
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %83, i64 1
  %84 = load i64, ptr %arrayidx126, align 8
  %conv127 = zext i64 %84 to i128
  %85 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %85, i64 1
  %86 = load i64, ptr %arrayidx128, align 8
  %conv129 = zext i64 %86 to i128
  %mul130 = mul i128 %conv127, %conv129
  %add131 = add i128 %mul125, %mul130
  %add132 = add i128 %conv121, %add131
  %87 = load i64, ptr %x30, align 8
  %conv133 = zext i64 %87 to i128
  %mul134 = mul i128 %conv133, 68719492368
  %add135 = add i128 %add132, %mul134
  store i128 %add135, ptr %x31, align 16
  %88 = load i128, ptr %x31, align 16
  %shr136 = lshr i128 %88, 52
  %conv137 = trunc i128 %shr136 to i64
  store i64 %conv137, ptr %x32, align 8
  %89 = load i128, ptr %x31, align 16
  %and138 = and i128 %89, 4503599627370495
  %conv139 = trunc i128 %and138 to i64
  store i64 %conv139, ptr %x33, align 8
  %90 = load i64, ptr %x32, align 8
  %91 = load i64, ptr %x10, align 8
  %add140 = add i64 %90, %91
  %conv141 = zext i64 %add140 to i128
  %92 = load i64, ptr %x29, align 8
  %conv142 = zext i64 %92 to i128
  %mul143 = mul i128 %conv142, 281475040739328
  %add144 = add i128 %conv141, %mul143
  store i128 %add144, ptr %x34, align 16
  %93 = load i128, ptr %x34, align 16
  %shr145 = lshr i128 %93, 52
  %conv146 = trunc i128 %shr145 to i64
  store i64 %conv146, ptr %x35, align 8
  %94 = load i128, ptr %x34, align 16
  %and147 = and i128 %94, 4503599627370495
  %conv148 = trunc i128 %and147 to i64
  store i64 %conv148, ptr %x36, align 8
  %95 = load i64, ptr %x35, align 8
  %96 = load i64, ptr %x18, align 8
  %add149 = add i64 %95, %96
  store i64 %add149, ptr %x37, align 8
  %97 = load i64, ptr %x21, align 8
  %98 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %arrayidx150, align 8
  %99 = load i64, ptr %x27, align 8
  %100 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %arrayidx151, align 8
  %101 = load i64, ptr %x33, align 8
  %102 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %arrayidx152, align 8
  %103 = load i64, ptr %x36, align 8
  %104 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %arrayidx153, align 8
  %105 = load i64, ptr %x37, align 8
  %106 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i64, ptr %106, i64 4
  store i64 %105, ptr %arrayidx154, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
