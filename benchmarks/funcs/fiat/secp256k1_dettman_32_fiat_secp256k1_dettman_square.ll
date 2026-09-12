; ModuleID = '/data2/ben/alive-decomp/bench/fiat/secp256k1_dettman_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_secp256k1_dettman_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x10 = alloca i64, align 8
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i64, align 8
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i64, align 8
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i64, align 8
  %x20 = alloca i32, align 4
  %x21 = alloca i32, align 4
  %x22 = alloca i64, align 8
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i64, align 8
  %x26 = alloca i32, align 4
  %x27 = alloca i32, align 4
  %x28 = alloca i32, align 4
  %x29 = alloca i32, align 4
  %x30 = alloca i64, align 8
  %x31 = alloca i32, align 4
  %x32 = alloca i32, align 4
  %x33 = alloca i64, align 8
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i64, align 8
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i64, align 8
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i64, align 8
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i64, align 8
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i64, align 8
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i64, align 8
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i64, align 8
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i64, align 8
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i64, align 8
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  %x63 = alloca i64, align 8
  %x64 = alloca i32, align 4
  %x65 = alloca i32, align 4
  %x66 = alloca i64, align 8
  %x67 = alloca i32, align 4
  %x68 = alloca i32, align 4
  %x69 = alloca i64, align 8
  %x70 = alloca i32, align 4
  %x71 = alloca i32, align 4
  %x72 = alloca i64, align 8
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 8
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 2
  store i32 %mul, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 7
  %3 = load i32, ptr %arrayidx1, align 4
  %mul2 = mul i32 %3, 2
  store i32 %mul2, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 6
  %5 = load i32, ptr %arrayidx3, align 4
  %mul4 = mul i32 %5, 2
  store i32 %mul4, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 5
  %7 = load i32, ptr %arrayidx5, align 4
  %mul6 = mul i32 %7, 2
  store i32 %mul6, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx7, align 4
  %mul8 = mul i32 %9, 2
  store i32 %mul8, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 3
  %11 = load i32, ptr %arrayidx9, align 4
  %mul10 = mul i32 %11, 2
  store i32 %mul10, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx11, align 4
  %mul12 = mul i32 %13, 2
  store i32 %mul12, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx13, align 4
  %mul14 = mul i32 %15, 2
  store i32 %mul14, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %16, i64 0
  %17 = load i32, ptr %arrayidx15, align 4
  %mul16 = mul i32 %17, 2
  store i32 %mul16, ptr %x9, align 4
  %18 = load i32, ptr %x1, align 4
  %conv = zext i32 %18 to i64
  %19 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %19, i64 9
  %20 = load i32, ptr %arrayidx17, align 4
  %conv18 = zext i32 %20 to i64
  %mul19 = mul i64 %conv, %conv18
  store i64 %mul19, ptr %x10, align 8
  %21 = load i64, ptr %x10, align 8
  %shr = lshr i64 %21, 26
  %conv20 = trunc i64 %shr to i32
  store i32 %conv20, ptr %x11, align 4
  %22 = load i64, ptr %x10, align 8
  %and = and i64 %22, 67108863
  %conv21 = trunc i64 %and to i32
  store i32 %conv21, ptr %x12, align 4
  %23 = load i32, ptr %x9, align 4
  %conv22 = zext i32 %23 to i64
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %24, i64 7
  %25 = load i32, ptr %arrayidx23, align 4
  %conv24 = zext i32 %25 to i64
  %mul25 = mul i64 %conv22, %conv24
  %26 = load i32, ptr %x8, align 4
  %conv26 = zext i32 %26 to i64
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %27, i64 6
  %28 = load i32, ptr %arrayidx27, align 4
  %conv28 = zext i32 %28 to i64
  %mul29 = mul i64 %conv26, %conv28
  %29 = load i32, ptr %x7, align 4
  %conv30 = zext i32 %29 to i64
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %30, i64 5
  %31 = load i32, ptr %arrayidx31, align 4
  %conv32 = zext i32 %31 to i64
  %mul33 = mul i64 %conv30, %conv32
  %32 = load i32, ptr %x6, align 4
  %conv34 = zext i32 %32 to i64
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %33, i64 4
  %34 = load i32, ptr %arrayidx35, align 4
  %conv36 = zext i32 %34 to i64
  %mul37 = mul i64 %conv34, %conv36
  %add = add i64 %mul33, %mul37
  %add38 = add i64 %mul29, %add
  %add39 = add i64 %mul25, %add38
  %35 = load i32, ptr %x12, align 4
  %conv40 = zext i32 %35 to i64
  %mul41 = mul i64 %conv40, 15632
  %add42 = add i64 %add39, %mul41
  store i64 %add42, ptr %x13, align 8
  %36 = load i64, ptr %x13, align 8
  %shr43 = lshr i64 %36, 26
  %conv44 = trunc i64 %shr43 to i32
  store i32 %conv44, ptr %x14, align 4
  %37 = load i64, ptr %x13, align 8
  %and45 = and i64 %37, 67108863
  %conv46 = trunc i64 %and45 to i32
  store i32 %conv46, ptr %x15, align 4
  %38 = load i32, ptr %x11, align 4
  %conv47 = zext i32 %38 to i64
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %39, i64 9
  %40 = load i32, ptr %arrayidx48, align 4
  %conv49 = zext i32 %40 to i64
  %41 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %41, i64 9
  %42 = load i32, ptr %arrayidx50, align 4
  %conv51 = zext i32 %42 to i64
  %mul52 = mul i64 %conv49, %conv51
  %add53 = add i64 %conv47, %mul52
  store i64 %add53, ptr %x16, align 8
  %43 = load i64, ptr %x16, align 8
  %shr54 = lshr i64 %43, 32
  %conv55 = trunc i64 %shr54 to i32
  store i32 %conv55, ptr %x17, align 4
  %44 = load i64, ptr %x16, align 8
  %and56 = and i64 %44, 4294967295
  %conv57 = trunc i64 %and56 to i32
  store i32 %conv57, ptr %x18, align 4
  %45 = load i32, ptr %x14, align 4
  %conv58 = zext i32 %45 to i64
  %46 = load i32, ptr %x9, align 4
  %conv59 = zext i32 %46 to i64
  %47 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %47, i64 8
  %48 = load i32, ptr %arrayidx60, align 4
  %conv61 = zext i32 %48 to i64
  %mul62 = mul i64 %conv59, %conv61
  %49 = load i32, ptr %x8, align 4
  %conv63 = zext i32 %49 to i64
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %50, i64 7
  %51 = load i32, ptr %arrayidx64, align 4
  %conv65 = zext i32 %51 to i64
  %mul66 = mul i64 %conv63, %conv65
  %52 = load i32, ptr %x7, align 4
  %conv67 = zext i32 %52 to i64
  %53 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %53, i64 6
  %54 = load i32, ptr %arrayidx68, align 4
  %conv69 = zext i32 %54 to i64
  %mul70 = mul i64 %conv67, %conv69
  %55 = load i32, ptr %x6, align 4
  %conv71 = zext i32 %55 to i64
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %56, i64 5
  %57 = load i32, ptr %arrayidx72, align 4
  %conv73 = zext i32 %57 to i64
  %mul74 = mul i64 %conv71, %conv73
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %58, i64 4
  %59 = load i32, ptr %arrayidx75, align 4
  %conv76 = zext i32 %59 to i64
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %60, i64 4
  %61 = load i32, ptr %arrayidx77, align 4
  %conv78 = zext i32 %61 to i64
  %mul79 = mul i64 %conv76, %conv78
  %add80 = add i64 %mul74, %mul79
  %add81 = add i64 %mul70, %add80
  %add82 = add i64 %mul66, %add81
  %add83 = add i64 %mul62, %add82
  %62 = load i32, ptr %x12, align 4
  %conv84 = zext i32 %62 to i64
  %shl = shl i64 %conv84, 10
  %add85 = add i64 %add83, %shl
  %add86 = add i64 %conv58, %add85
  %63 = load i32, ptr %x18, align 4
  %conv87 = zext i32 %63 to i64
  %mul88 = mul i64 %conv87, 15632
  %add89 = add i64 %add86, %mul88
  store i64 %add89, ptr %x19, align 8
  %64 = load i64, ptr %x19, align 8
  %shr90 = lshr i64 %64, 26
  %conv91 = trunc i64 %shr90 to i32
  store i32 %conv91, ptr %x20, align 4
  %65 = load i64, ptr %x19, align 8
  %and92 = and i64 %65, 67108863
  %conv93 = trunc i64 %and92 to i32
  store i32 %conv93, ptr %x21, align 4
  %66 = load i32, ptr %x20, align 4
  %conv94 = zext i32 %66 to i64
  %67 = load i32, ptr %x9, align 4
  %conv95 = zext i32 %67 to i64
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %68, i64 9
  %69 = load i32, ptr %arrayidx96, align 4
  %conv97 = zext i32 %69 to i64
  %mul98 = mul i64 %conv95, %conv97
  %70 = load i32, ptr %x8, align 4
  %conv99 = zext i32 %70 to i64
  %71 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %71, i64 8
  %72 = load i32, ptr %arrayidx100, align 4
  %conv101 = zext i32 %72 to i64
  %mul102 = mul i64 %conv99, %conv101
  %73 = load i32, ptr %x7, align 4
  %conv103 = zext i32 %73 to i64
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %74, i64 7
  %75 = load i32, ptr %arrayidx104, align 4
  %conv105 = zext i32 %75 to i64
  %mul106 = mul i64 %conv103, %conv105
  %76 = load i32, ptr %x6, align 4
  %conv107 = zext i32 %76 to i64
  %77 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %77, i64 6
  %78 = load i32, ptr %arrayidx108, align 4
  %conv109 = zext i32 %78 to i64
  %mul110 = mul i64 %conv107, %conv109
  %79 = load i32, ptr %x5, align 4
  %conv111 = zext i32 %79 to i64
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %80, i64 5
  %81 = load i32, ptr %arrayidx112, align 4
  %conv113 = zext i32 %81 to i64
  %mul114 = mul i64 %conv111, %conv113
  %add115 = add i64 %mul110, %mul114
  %add116 = add i64 %mul106, %add115
  %add117 = add i64 %mul102, %add116
  %add118 = add i64 %mul98, %add117
  %82 = load i32, ptr %x18, align 4
  %conv119 = zext i32 %82 to i64
  %shl120 = shl i64 %conv119, 10
  %add121 = add i64 %add118, %shl120
  %add122 = add i64 %conv94, %add121
  %83 = load i32, ptr %x17, align 4
  %conv123 = zext i32 %83 to i64
  %mul124 = mul i64 %conv123, 1000448
  %add125 = add i64 %add122, %mul124
  store i64 %add125, ptr %x22, align 8
  %84 = load i64, ptr %x22, align 8
  %shr126 = lshr i64 %84, 26
  %conv127 = trunc i64 %shr126 to i32
  store i32 %conv127, ptr %x23, align 4
  %85 = load i64, ptr %x22, align 8
  %and128 = and i64 %85, 67108863
  %conv129 = trunc i64 %and128 to i32
  store i32 %conv129, ptr %x24, align 4
  %86 = load i32, ptr %x23, align 4
  %conv130 = zext i32 %86 to i64
  %87 = load i32, ptr %x8, align 4
  %conv131 = zext i32 %87 to i64
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %88, i64 9
  %89 = load i32, ptr %arrayidx132, align 4
  %conv133 = zext i32 %89 to i64
  %mul134 = mul i64 %conv131, %conv133
  %90 = load i32, ptr %x7, align 4
  %conv135 = zext i32 %90 to i64
  %91 = load ptr, ptr %arg1.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %91, i64 8
  %92 = load i32, ptr %arrayidx136, align 4
  %conv137 = zext i32 %92 to i64
  %mul138 = mul i64 %conv135, %conv137
  %93 = load i32, ptr %x6, align 4
  %conv139 = zext i32 %93 to i64
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %94, i64 7
  %95 = load i32, ptr %arrayidx140, align 4
  %conv141 = zext i32 %95 to i64
  %mul142 = mul i64 %conv139, %conv141
  %96 = load i32, ptr %x5, align 4
  %conv143 = zext i32 %96 to i64
  %97 = load ptr, ptr %arg1.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %97, i64 6
  %98 = load i32, ptr %arrayidx144, align 4
  %conv145 = zext i32 %98 to i64
  %mul146 = mul i64 %conv143, %conv145
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %99, i64 5
  %100 = load i32, ptr %arrayidx147, align 4
  %conv148 = zext i32 %100 to i64
  %101 = load ptr, ptr %arg1.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %101, i64 5
  %102 = load i32, ptr %arrayidx149, align 4
  %conv150 = zext i32 %102 to i64
  %mul151 = mul i64 %conv148, %conv150
  %add152 = add i64 %mul146, %mul151
  %add153 = add i64 %mul142, %add152
  %add154 = add i64 %mul138, %add153
  %add155 = add i64 %mul134, %add154
  %103 = load i32, ptr %x17, align 4
  %shl156 = shl i32 %103, 16
  %conv157 = zext i32 %shl156 to i64
  %add158 = add i64 %add155, %conv157
  %add159 = add i64 %conv130, %add158
  store i64 %add159, ptr %x25, align 8
  %104 = load i64, ptr %x25, align 8
  %shr160 = lshr i64 %104, 26
  %conv161 = trunc i64 %shr160 to i32
  store i32 %conv161, ptr %x26, align 4
  %105 = load i64, ptr %x25, align 8
  %and162 = and i64 %105, 67108863
  %conv163 = trunc i64 %and162 to i32
  store i32 %conv163, ptr %x27, align 4
  %106 = load i32, ptr %x24, align 4
  %shr164 = lshr i32 %106, 22
  store i32 %shr164, ptr %x28, align 4
  %107 = load i32, ptr %x24, align 4
  %and165 = and i32 %107, 4194303
  store i32 %and165, ptr %x29, align 4
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %108, i64 0
  %109 = load i32, ptr %arrayidx166, align 4
  %conv167 = zext i32 %109 to i64
  %110 = load ptr, ptr %arg1.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %110, i64 0
  %111 = load i32, ptr %arrayidx168, align 4
  %conv169 = zext i32 %111 to i64
  %mul170 = mul i64 %conv167, %conv169
  %112 = load i32, ptr %x28, align 4
  %113 = load i32, ptr %x27, align 4
  %shl171 = shl i32 %113, 4
  %add172 = add i32 %112, %shl171
  %conv173 = zext i32 %add172 to i64
  %mul174 = mul i64 %conv173, 977
  %add175 = add i64 %mul170, %mul174
  store i64 %add175, ptr %x30, align 8
  %114 = load i64, ptr %x30, align 8
  %shr176 = lshr i64 %114, 26
  %conv177 = trunc i64 %shr176 to i32
  store i32 %conv177, ptr %x31, align 4
  %115 = load i64, ptr %x30, align 8
  %and178 = and i64 %115, 67108863
  %conv179 = trunc i64 %and178 to i32
  store i32 %conv179, ptr %x32, align 4
  %116 = load i32, ptr %x26, align 4
  %conv180 = zext i32 %116 to i64
  %117 = load i32, ptr %x7, align 4
  %conv181 = zext i32 %117 to i64
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %118, i64 9
  %119 = load i32, ptr %arrayidx182, align 4
  %conv183 = zext i32 %119 to i64
  %mul184 = mul i64 %conv181, %conv183
  %120 = load i32, ptr %x6, align 4
  %conv185 = zext i32 %120 to i64
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %121, i64 8
  %122 = load i32, ptr %arrayidx186, align 4
  %conv187 = zext i32 %122 to i64
  %mul188 = mul i64 %conv185, %conv187
  %123 = load i32, ptr %x5, align 4
  %conv189 = zext i32 %123 to i64
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %124, i64 7
  %125 = load i32, ptr %arrayidx190, align 4
  %conv191 = zext i32 %125 to i64
  %mul192 = mul i64 %conv189, %conv191
  %126 = load i32, ptr %x4, align 4
  %conv193 = zext i32 %126 to i64
  %127 = load ptr, ptr %arg1.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, ptr %127, i64 6
  %128 = load i32, ptr %arrayidx194, align 4
  %conv195 = zext i32 %128 to i64
  %mul196 = mul i64 %conv193, %conv195
  %add197 = add i64 %mul192, %mul196
  %add198 = add i64 %mul188, %add197
  %add199 = add i64 %mul184, %add198
  %add200 = add i64 %conv180, %add199
  store i64 %add200, ptr %x33, align 8
  %129 = load i64, ptr %x33, align 8
  %shr201 = lshr i64 %129, 26
  %conv202 = trunc i64 %shr201 to i32
  store i32 %conv202, ptr %x34, align 4
  %130 = load i64, ptr %x33, align 8
  %and203 = and i64 %130, 67108863
  %conv204 = trunc i64 %and203 to i32
  store i32 %conv204, ptr %x35, align 4
  %131 = load i32, ptr %x31, align 4
  %conv205 = zext i32 %131 to i64
  %132 = load i32, ptr %x9, align 4
  %conv206 = zext i32 %132 to i64
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, ptr %133, i64 1
  %134 = load i32, ptr %arrayidx207, align 4
  %conv208 = zext i32 %134 to i64
  %mul209 = mul i64 %conv206, %conv208
  %135 = load i32, ptr %x28, align 4
  %136 = load i32, ptr %x27, align 4
  %shl210 = shl i32 %136, 4
  %add211 = add i32 %135, %shl210
  %conv212 = zext i32 %add211 to i64
  %shl213 = shl i64 %conv212, 6
  %add214 = add i64 %mul209, %shl213
  %add215 = add i64 %conv205, %add214
  %137 = load i32, ptr %x35, align 4
  %conv216 = zext i32 %137 to i64
  %mul217 = mul i64 %conv216, 15632
  %add218 = add i64 %add215, %mul217
  store i64 %add218, ptr %x36, align 8
  %138 = load i64, ptr %x36, align 8
  %shr219 = lshr i64 %138, 26
  %conv220 = trunc i64 %shr219 to i32
  store i32 %conv220, ptr %x37, align 4
  %139 = load i64, ptr %x36, align 8
  %and221 = and i64 %139, 67108863
  %conv222 = trunc i64 %and221 to i32
  store i32 %conv222, ptr %x38, align 4
  %140 = load i32, ptr %x34, align 4
  %conv223 = zext i32 %140 to i64
  %141 = load i32, ptr %x6, align 4
  %conv224 = zext i32 %141 to i64
  %142 = load ptr, ptr %arg1.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, ptr %142, i64 9
  %143 = load i32, ptr %arrayidx225, align 4
  %conv226 = zext i32 %143 to i64
  %mul227 = mul i64 %conv224, %conv226
  %144 = load i32, ptr %x5, align 4
  %conv228 = zext i32 %144 to i64
  %145 = load ptr, ptr %arg1.addr, align 8
  %arrayidx229 = getelementptr inbounds i32, ptr %145, i64 8
  %146 = load i32, ptr %arrayidx229, align 4
  %conv230 = zext i32 %146 to i64
  %mul231 = mul i64 %conv228, %conv230
  %147 = load i32, ptr %x4, align 4
  %conv232 = zext i32 %147 to i64
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx233 = getelementptr inbounds i32, ptr %148, i64 7
  %149 = load i32, ptr %arrayidx233, align 4
  %conv234 = zext i32 %149 to i64
  %mul235 = mul i64 %conv232, %conv234
  %150 = load ptr, ptr %arg1.addr, align 8
  %arrayidx236 = getelementptr inbounds i32, ptr %150, i64 6
  %151 = load i32, ptr %arrayidx236, align 4
  %conv237 = zext i32 %151 to i64
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, ptr %152, i64 6
  %153 = load i32, ptr %arrayidx238, align 4
  %conv239 = zext i32 %153 to i64
  %mul240 = mul i64 %conv237, %conv239
  %add241 = add i64 %mul235, %mul240
  %add242 = add i64 %mul231, %add241
  %add243 = add i64 %mul227, %add242
  %add244 = add i64 %conv223, %add243
  store i64 %add244, ptr %x39, align 8
  %154 = load i64, ptr %x39, align 8
  %shr245 = lshr i64 %154, 26
  %conv246 = trunc i64 %shr245 to i32
  store i32 %conv246, ptr %x40, align 4
  %155 = load i64, ptr %x39, align 8
  %and247 = and i64 %155, 67108863
  %conv248 = trunc i64 %and247 to i32
  store i32 %conv248, ptr %x41, align 4
  %156 = load i32, ptr %x37, align 4
  %conv249 = zext i32 %156 to i64
  %157 = load i32, ptr %x9, align 4
  %conv250 = zext i32 %157 to i64
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx251 = getelementptr inbounds i32, ptr %158, i64 2
  %159 = load i32, ptr %arrayidx251, align 4
  %conv252 = zext i32 %159 to i64
  %mul253 = mul i64 %conv250, %conv252
  %160 = load ptr, ptr %arg1.addr, align 8
  %arrayidx254 = getelementptr inbounds i32, ptr %160, i64 1
  %161 = load i32, ptr %arrayidx254, align 4
  %conv255 = zext i32 %161 to i64
  %162 = load ptr, ptr %arg1.addr, align 8
  %arrayidx256 = getelementptr inbounds i32, ptr %162, i64 1
  %163 = load i32, ptr %arrayidx256, align 4
  %conv257 = zext i32 %163 to i64
  %mul258 = mul i64 %conv255, %conv257
  %add259 = add i64 %mul253, %mul258
  %164 = load i32, ptr %x35, align 4
  %conv260 = zext i32 %164 to i64
  %shl261 = shl i64 %conv260, 10
  %add262 = add i64 %add259, %shl261
  %add263 = add i64 %conv249, %add262
  %165 = load i32, ptr %x41, align 4
  %conv264 = zext i32 %165 to i64
  %mul265 = mul i64 %conv264, 15632
  %add266 = add i64 %add263, %mul265
  store i64 %add266, ptr %x42, align 8
  %166 = load i64, ptr %x42, align 8
  %shr267 = lshr i64 %166, 26
  %conv268 = trunc i64 %shr267 to i32
  store i32 %conv268, ptr %x43, align 4
  %167 = load i64, ptr %x42, align 8
  %and269 = and i64 %167, 67108863
  %conv270 = trunc i64 %and269 to i32
  store i32 %conv270, ptr %x44, align 4
  %168 = load i32, ptr %x40, align 4
  %conv271 = zext i32 %168 to i64
  %169 = load i32, ptr %x5, align 4
  %conv272 = zext i32 %169 to i64
  %170 = load ptr, ptr %arg1.addr, align 8
  %arrayidx273 = getelementptr inbounds i32, ptr %170, i64 9
  %171 = load i32, ptr %arrayidx273, align 4
  %conv274 = zext i32 %171 to i64
  %mul275 = mul i64 %conv272, %conv274
  %172 = load i32, ptr %x4, align 4
  %conv276 = zext i32 %172 to i64
  %173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx277 = getelementptr inbounds i32, ptr %173, i64 8
  %174 = load i32, ptr %arrayidx277, align 4
  %conv278 = zext i32 %174 to i64
  %mul279 = mul i64 %conv276, %conv278
  %175 = load i32, ptr %x3, align 4
  %conv280 = zext i32 %175 to i64
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx281 = getelementptr inbounds i32, ptr %176, i64 7
  %177 = load i32, ptr %arrayidx281, align 4
  %conv282 = zext i32 %177 to i64
  %mul283 = mul i64 %conv280, %conv282
  %add284 = add i64 %mul279, %mul283
  %add285 = add i64 %mul275, %add284
  %add286 = add i64 %conv271, %add285
  store i64 %add286, ptr %x45, align 8
  %178 = load i64, ptr %x45, align 8
  %shr287 = lshr i64 %178, 26
  %conv288 = trunc i64 %shr287 to i32
  store i32 %conv288, ptr %x46, align 4
  %179 = load i64, ptr %x45, align 8
  %and289 = and i64 %179, 67108863
  %conv290 = trunc i64 %and289 to i32
  store i32 %conv290, ptr %x47, align 4
  %180 = load i32, ptr %x43, align 4
  %conv291 = zext i32 %180 to i64
  %181 = load i32, ptr %x9, align 4
  %conv292 = zext i32 %181 to i64
  %182 = load ptr, ptr %arg1.addr, align 8
  %arrayidx293 = getelementptr inbounds i32, ptr %182, i64 3
  %183 = load i32, ptr %arrayidx293, align 4
  %conv294 = zext i32 %183 to i64
  %mul295 = mul i64 %conv292, %conv294
  %184 = load i32, ptr %x8, align 4
  %conv296 = zext i32 %184 to i64
  %185 = load ptr, ptr %arg1.addr, align 8
  %arrayidx297 = getelementptr inbounds i32, ptr %185, i64 2
  %186 = load i32, ptr %arrayidx297, align 4
  %conv298 = zext i32 %186 to i64
  %mul299 = mul i64 %conv296, %conv298
  %add300 = add i64 %mul295, %mul299
  %187 = load i32, ptr %x41, align 4
  %conv301 = zext i32 %187 to i64
  %shl302 = shl i64 %conv301, 10
  %add303 = add i64 %add300, %shl302
  %add304 = add i64 %conv291, %add303
  %188 = load i32, ptr %x47, align 4
  %conv305 = zext i32 %188 to i64
  %mul306 = mul i64 %conv305, 15632
  %add307 = add i64 %add304, %mul306
  store i64 %add307, ptr %x48, align 8
  %189 = load i64, ptr %x48, align 8
  %shr308 = lshr i64 %189, 26
  %conv309 = trunc i64 %shr308 to i32
  store i32 %conv309, ptr %x49, align 4
  %190 = load i64, ptr %x48, align 8
  %and310 = and i64 %190, 67108863
  %conv311 = trunc i64 %and310 to i32
  store i32 %conv311, ptr %x50, align 4
  %191 = load i32, ptr %x46, align 4
  %conv312 = zext i32 %191 to i64
  %192 = load i32, ptr %x4, align 4
  %conv313 = zext i32 %192 to i64
  %193 = load ptr, ptr %arg1.addr, align 8
  %arrayidx314 = getelementptr inbounds i32, ptr %193, i64 9
  %194 = load i32, ptr %arrayidx314, align 4
  %conv315 = zext i32 %194 to i64
  %mul316 = mul i64 %conv313, %conv315
  %195 = load i32, ptr %x3, align 4
  %conv317 = zext i32 %195 to i64
  %196 = load ptr, ptr %arg1.addr, align 8
  %arrayidx318 = getelementptr inbounds i32, ptr %196, i64 8
  %197 = load i32, ptr %arrayidx318, align 4
  %conv319 = zext i32 %197 to i64
  %mul320 = mul i64 %conv317, %conv319
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx321 = getelementptr inbounds i32, ptr %198, i64 7
  %199 = load i32, ptr %arrayidx321, align 4
  %conv322 = zext i32 %199 to i64
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx323 = getelementptr inbounds i32, ptr %200, i64 7
  %201 = load i32, ptr %arrayidx323, align 4
  %conv324 = zext i32 %201 to i64
  %mul325 = mul i64 %conv322, %conv324
  %add326 = add i64 %mul320, %mul325
  %add327 = add i64 %mul316, %add326
  %add328 = add i64 %conv312, %add327
  store i64 %add328, ptr %x51, align 8
  %202 = load i64, ptr %x51, align 8
  %shr329 = lshr i64 %202, 26
  %conv330 = trunc i64 %shr329 to i32
  store i32 %conv330, ptr %x52, align 4
  %203 = load i64, ptr %x51, align 8
  %and331 = and i64 %203, 67108863
  %conv332 = trunc i64 %and331 to i32
  store i32 %conv332, ptr %x53, align 4
  %204 = load i32, ptr %x49, align 4
  %conv333 = zext i32 %204 to i64
  %205 = load i32, ptr %x9, align 4
  %conv334 = zext i32 %205 to i64
  %206 = load ptr, ptr %arg1.addr, align 8
  %arrayidx335 = getelementptr inbounds i32, ptr %206, i64 4
  %207 = load i32, ptr %arrayidx335, align 4
  %conv336 = zext i32 %207 to i64
  %mul337 = mul i64 %conv334, %conv336
  %208 = load i32, ptr %x8, align 4
  %conv338 = zext i32 %208 to i64
  %209 = load ptr, ptr %arg1.addr, align 8
  %arrayidx339 = getelementptr inbounds i32, ptr %209, i64 3
  %210 = load i32, ptr %arrayidx339, align 4
  %conv340 = zext i32 %210 to i64
  %mul341 = mul i64 %conv338, %conv340
  %211 = load ptr, ptr %arg1.addr, align 8
  %arrayidx342 = getelementptr inbounds i32, ptr %211, i64 2
  %212 = load i32, ptr %arrayidx342, align 4
  %conv343 = zext i32 %212 to i64
  %213 = load ptr, ptr %arg1.addr, align 8
  %arrayidx344 = getelementptr inbounds i32, ptr %213, i64 2
  %214 = load i32, ptr %arrayidx344, align 4
  %conv345 = zext i32 %214 to i64
  %mul346 = mul i64 %conv343, %conv345
  %add347 = add i64 %mul341, %mul346
  %add348 = add i64 %mul337, %add347
  %215 = load i32, ptr %x47, align 4
  %conv349 = zext i32 %215 to i64
  %shl350 = shl i64 %conv349, 10
  %add351 = add i64 %add348, %shl350
  %add352 = add i64 %conv333, %add351
  %216 = load i32, ptr %x53, align 4
  %conv353 = zext i32 %216 to i64
  %mul354 = mul i64 %conv353, 15632
  %add355 = add i64 %add352, %mul354
  store i64 %add355, ptr %x54, align 8
  %217 = load i64, ptr %x54, align 8
  %shr356 = lshr i64 %217, 26
  %conv357 = trunc i64 %shr356 to i32
  store i32 %conv357, ptr %x55, align 4
  %218 = load i64, ptr %x54, align 8
  %and358 = and i64 %218, 67108863
  %conv359 = trunc i64 %and358 to i32
  store i32 %conv359, ptr %x56, align 4
  %219 = load i32, ptr %x52, align 4
  %conv360 = zext i32 %219 to i64
  %220 = load i32, ptr %x3, align 4
  %conv361 = zext i32 %220 to i64
  %221 = load ptr, ptr %arg1.addr, align 8
  %arrayidx362 = getelementptr inbounds i32, ptr %221, i64 9
  %222 = load i32, ptr %arrayidx362, align 4
  %conv363 = zext i32 %222 to i64
  %mul364 = mul i64 %conv361, %conv363
  %223 = load i32, ptr %x2, align 4
  %conv365 = zext i32 %223 to i64
  %224 = load ptr, ptr %arg1.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %224, i64 8
  %225 = load i32, ptr %arrayidx366, align 4
  %conv367 = zext i32 %225 to i64
  %mul368 = mul i64 %conv365, %conv367
  %add369 = add i64 %mul364, %mul368
  %add370 = add i64 %conv360, %add369
  store i64 %add370, ptr %x57, align 8
  %226 = load i64, ptr %x57, align 8
  %shr371 = lshr i64 %226, 26
  %conv372 = trunc i64 %shr371 to i32
  store i32 %conv372, ptr %x58, align 4
  %227 = load i64, ptr %x57, align 8
  %and373 = and i64 %227, 67108863
  %conv374 = trunc i64 %and373 to i32
  store i32 %conv374, ptr %x59, align 4
  %228 = load i32, ptr %x55, align 4
  %conv375 = zext i32 %228 to i64
  %229 = load i32, ptr %x9, align 4
  %conv376 = zext i32 %229 to i64
  %230 = load ptr, ptr %arg1.addr, align 8
  %arrayidx377 = getelementptr inbounds i32, ptr %230, i64 5
  %231 = load i32, ptr %arrayidx377, align 4
  %conv378 = zext i32 %231 to i64
  %mul379 = mul i64 %conv376, %conv378
  %232 = load i32, ptr %x8, align 4
  %conv380 = zext i32 %232 to i64
  %233 = load ptr, ptr %arg1.addr, align 8
  %arrayidx381 = getelementptr inbounds i32, ptr %233, i64 4
  %234 = load i32, ptr %arrayidx381, align 4
  %conv382 = zext i32 %234 to i64
  %mul383 = mul i64 %conv380, %conv382
  %235 = load i32, ptr %x7, align 4
  %conv384 = zext i32 %235 to i64
  %236 = load ptr, ptr %arg1.addr, align 8
  %arrayidx385 = getelementptr inbounds i32, ptr %236, i64 3
  %237 = load i32, ptr %arrayidx385, align 4
  %conv386 = zext i32 %237 to i64
  %mul387 = mul i64 %conv384, %conv386
  %add388 = add i64 %mul383, %mul387
  %add389 = add i64 %mul379, %add388
  %238 = load i32, ptr %x53, align 4
  %conv390 = zext i32 %238 to i64
  %shl391 = shl i64 %conv390, 10
  %add392 = add i64 %add389, %shl391
  %add393 = add i64 %conv375, %add392
  %239 = load i32, ptr %x59, align 4
  %conv394 = zext i32 %239 to i64
  %mul395 = mul i64 %conv394, 15632
  %add396 = add i64 %add393, %mul395
  store i64 %add396, ptr %x60, align 8
  %240 = load i64, ptr %x60, align 8
  %shr397 = lshr i64 %240, 26
  %conv398 = trunc i64 %shr397 to i32
  store i32 %conv398, ptr %x61, align 4
  %241 = load i64, ptr %x60, align 8
  %and399 = and i64 %241, 67108863
  %conv400 = trunc i64 %and399 to i32
  store i32 %conv400, ptr %x62, align 4
  %242 = load i32, ptr %x58, align 4
  %conv401 = zext i32 %242 to i64
  %243 = load i32, ptr %x2, align 4
  %conv402 = zext i32 %243 to i64
  %244 = load ptr, ptr %arg1.addr, align 8
  %arrayidx403 = getelementptr inbounds i32, ptr %244, i64 9
  %245 = load i32, ptr %arrayidx403, align 4
  %conv404 = zext i32 %245 to i64
  %mul405 = mul i64 %conv402, %conv404
  %246 = load ptr, ptr %arg1.addr, align 8
  %arrayidx406 = getelementptr inbounds i32, ptr %246, i64 8
  %247 = load i32, ptr %arrayidx406, align 4
  %conv407 = zext i32 %247 to i64
  %248 = load ptr, ptr %arg1.addr, align 8
  %arrayidx408 = getelementptr inbounds i32, ptr %248, i64 8
  %249 = load i32, ptr %arrayidx408, align 4
  %conv409 = zext i32 %249 to i64
  %mul410 = mul i64 %conv407, %conv409
  %add411 = add i64 %mul405, %mul410
  %add412 = add i64 %conv401, %add411
  store i64 %add412, ptr %x63, align 8
  %250 = load i64, ptr %x63, align 8
  %shr413 = lshr i64 %250, 32
  %conv414 = trunc i64 %shr413 to i32
  store i32 %conv414, ptr %x64, align 4
  %251 = load i64, ptr %x63, align 8
  %and415 = and i64 %251, 4294967295
  %conv416 = trunc i64 %and415 to i32
  store i32 %conv416, ptr %x65, align 4
  %252 = load i32, ptr %x61, align 4
  %conv417 = zext i32 %252 to i64
  %253 = load i32, ptr %x9, align 4
  %conv418 = zext i32 %253 to i64
  %254 = load ptr, ptr %arg1.addr, align 8
  %arrayidx419 = getelementptr inbounds i32, ptr %254, i64 6
  %255 = load i32, ptr %arrayidx419, align 4
  %conv420 = zext i32 %255 to i64
  %mul421 = mul i64 %conv418, %conv420
  %256 = load i32, ptr %x8, align 4
  %conv422 = zext i32 %256 to i64
  %257 = load ptr, ptr %arg1.addr, align 8
  %arrayidx423 = getelementptr inbounds i32, ptr %257, i64 5
  %258 = load i32, ptr %arrayidx423, align 4
  %conv424 = zext i32 %258 to i64
  %mul425 = mul i64 %conv422, %conv424
  %259 = load i32, ptr %x7, align 4
  %conv426 = zext i32 %259 to i64
  %260 = load ptr, ptr %arg1.addr, align 8
  %arrayidx427 = getelementptr inbounds i32, ptr %260, i64 4
  %261 = load i32, ptr %arrayidx427, align 4
  %conv428 = zext i32 %261 to i64
  %mul429 = mul i64 %conv426, %conv428
  %262 = load ptr, ptr %arg1.addr, align 8
  %arrayidx430 = getelementptr inbounds i32, ptr %262, i64 3
  %263 = load i32, ptr %arrayidx430, align 4
  %conv431 = zext i32 %263 to i64
  %264 = load ptr, ptr %arg1.addr, align 8
  %arrayidx432 = getelementptr inbounds i32, ptr %264, i64 3
  %265 = load i32, ptr %arrayidx432, align 4
  %conv433 = zext i32 %265 to i64
  %mul434 = mul i64 %conv431, %conv433
  %add435 = add i64 %mul429, %mul434
  %add436 = add i64 %mul425, %add435
  %add437 = add i64 %mul421, %add436
  %266 = load i32, ptr %x59, align 4
  %conv438 = zext i32 %266 to i64
  %shl439 = shl i64 %conv438, 10
  %add440 = add i64 %add437, %shl439
  %add441 = add i64 %conv417, %add440
  %267 = load i32, ptr %x65, align 4
  %conv442 = zext i32 %267 to i64
  %mul443 = mul i64 %conv442, 15632
  %add444 = add i64 %add441, %mul443
  store i64 %add444, ptr %x66, align 8
  %268 = load i64, ptr %x66, align 8
  %shr445 = lshr i64 %268, 26
  %conv446 = trunc i64 %shr445 to i32
  store i32 %conv446, ptr %x67, align 4
  %269 = load i64, ptr %x66, align 8
  %and447 = and i64 %269, 67108863
  %conv448 = trunc i64 %and447 to i32
  store i32 %conv448, ptr %x68, align 4
  %270 = load i32, ptr %x67, align 4
  %conv449 = zext i32 %270 to i64
  %271 = load i32, ptr %x15, align 4
  %conv450 = zext i32 %271 to i64
  %272 = load i32, ptr %x65, align 4
  %conv451 = zext i32 %272 to i64
  %shl452 = shl i64 %conv451, 10
  %add453 = add i64 %conv450, %shl452
  %add454 = add i64 %conv449, %add453
  %273 = load i32, ptr %x64, align 4
  %conv455 = zext i32 %273 to i64
  %mul456 = mul i64 %conv455, 1000448
  %add457 = add i64 %add454, %mul456
  store i64 %add457, ptr %x69, align 8
  %274 = load i64, ptr %x69, align 8
  %shr458 = lshr i64 %274, 26
  %conv459 = trunc i64 %shr458 to i32
  store i32 %conv459, ptr %x70, align 4
  %275 = load i64, ptr %x69, align 8
  %and460 = and i64 %275, 67108863
  %conv461 = trunc i64 %and460 to i32
  store i32 %conv461, ptr %x71, align 4
  %276 = load i32, ptr %x70, align 4
  %conv462 = zext i32 %276 to i64
  %277 = load i32, ptr %x21, align 4
  %conv463 = zext i32 %277 to i64
  %278 = load i32, ptr %x64, align 4
  %conv464 = zext i32 %278 to i64
  %shl465 = shl i64 %conv464, 16
  %add466 = add i64 %conv463, %shl465
  %add467 = add i64 %conv462, %add466
  store i64 %add467, ptr %x72, align 8
  %279 = load i64, ptr %x72, align 8
  %shr468 = lshr i64 %279, 26
  %conv469 = trunc i64 %shr468 to i32
  store i32 %conv469, ptr %x73, align 4
  %280 = load i64, ptr %x72, align 8
  %and470 = and i64 %280, 67108863
  %conv471 = trunc i64 %and470 to i32
  store i32 %conv471, ptr %x74, align 4
  %281 = load i32, ptr %x73, align 4
  %282 = load i32, ptr %x29, align 4
  %add472 = add i32 %281, %282
  store i32 %add472, ptr %x75, align 4
  %283 = load i32, ptr %x32, align 4
  %284 = load ptr, ptr %out1.addr, align 8
  %arrayidx473 = getelementptr inbounds i32, ptr %284, i64 0
  store i32 %283, ptr %arrayidx473, align 4
  %285 = load i32, ptr %x38, align 4
  %286 = load ptr, ptr %out1.addr, align 8
  %arrayidx474 = getelementptr inbounds i32, ptr %286, i64 1
  store i32 %285, ptr %arrayidx474, align 4
  %287 = load i32, ptr %x44, align 4
  %288 = load ptr, ptr %out1.addr, align 8
  %arrayidx475 = getelementptr inbounds i32, ptr %288, i64 2
  store i32 %287, ptr %arrayidx475, align 4
  %289 = load i32, ptr %x50, align 4
  %290 = load ptr, ptr %out1.addr, align 8
  %arrayidx476 = getelementptr inbounds i32, ptr %290, i64 3
  store i32 %289, ptr %arrayidx476, align 4
  %291 = load i32, ptr %x56, align 4
  %292 = load ptr, ptr %out1.addr, align 8
  %arrayidx477 = getelementptr inbounds i32, ptr %292, i64 4
  store i32 %291, ptr %arrayidx477, align 4
  %293 = load i32, ptr %x62, align 4
  %294 = load ptr, ptr %out1.addr, align 8
  %arrayidx478 = getelementptr inbounds i32, ptr %294, i64 5
  store i32 %293, ptr %arrayidx478, align 4
  %295 = load i32, ptr %x68, align 4
  %296 = load ptr, ptr %out1.addr, align 8
  %arrayidx479 = getelementptr inbounds i32, ptr %296, i64 6
  store i32 %295, ptr %arrayidx479, align 4
  %297 = load i32, ptr %x71, align 4
  %298 = load ptr, ptr %out1.addr, align 8
  %arrayidx480 = getelementptr inbounds i32, ptr %298, i64 7
  store i32 %297, ptr %arrayidx480, align 4
  %299 = load i32, ptr %x74, align 4
  %300 = load ptr, ptr %out1.addr, align 8
  %arrayidx481 = getelementptr inbounds i32, ptr %300, i64 8
  store i32 %299, ptr %arrayidx481, align 4
  %301 = load i32, ptr %x75, align 4
  %302 = load ptr, ptr %out1.addr, align 8
  %arrayidx482 = getelementptr inbounds i32, ptr %302, i64 9
  store i32 %301, ptr %arrayidx482, align 4
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
