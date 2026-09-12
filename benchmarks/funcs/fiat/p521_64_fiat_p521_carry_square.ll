; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x27 = alloca i128, align 16
  %x28 = alloca i128, align 16
  %x29 = alloca i128, align 16
  %x30 = alloca i128, align 16
  %x31 = alloca i128, align 16
  %x32 = alloca i128, align 16
  %x33 = alloca i128, align 16
  %x34 = alloca i128, align 16
  %x35 = alloca i128, align 16
  %x36 = alloca i128, align 16
  %x37 = alloca i128, align 16
  %x38 = alloca i128, align 16
  %x39 = alloca i128, align 16
  %x40 = alloca i128, align 16
  %x41 = alloca i128, align 16
  %x42 = alloca i128, align 16
  %x43 = alloca i128, align 16
  %x44 = alloca i128, align 16
  %x45 = alloca i128, align 16
  %x46 = alloca i128, align 16
  %x47 = alloca i128, align 16
  %x48 = alloca i128, align 16
  %x49 = alloca i128, align 16
  %x50 = alloca i128, align 16
  %x51 = alloca i128, align 16
  %x52 = alloca i128, align 16
  %x53 = alloca i128, align 16
  %x54 = alloca i128, align 16
  %x55 = alloca i128, align 16
  %x56 = alloca i128, align 16
  %x57 = alloca i128, align 16
  %x58 = alloca i128, align 16
  %x59 = alloca i128, align 16
  %x60 = alloca i128, align 16
  %x61 = alloca i128, align 16
  %x62 = alloca i128, align 16
  %x63 = alloca i128, align 16
  %x64 = alloca i64, align 8
  %x65 = alloca i128, align 16
  %x66 = alloca i128, align 16
  %x67 = alloca i128, align 16
  %x68 = alloca i128, align 16
  %x69 = alloca i128, align 16
  %x70 = alloca i128, align 16
  %x71 = alloca i128, align 16
  %x72 = alloca i128, align 16
  %x73 = alloca i128, align 16
  %x74 = alloca i128, align 16
  %x75 = alloca i64, align 8
  %x76 = alloca i128, align 16
  %x77 = alloca i128, align 16
  %x78 = alloca i64, align 8
  %x79 = alloca i128, align 16
  %x80 = alloca i128, align 16
  %x81 = alloca i64, align 8
  %x82 = alloca i128, align 16
  %x83 = alloca i128, align 16
  %x84 = alloca i64, align 8
  %x85 = alloca i128, align 16
  %x86 = alloca i128, align 16
  %x87 = alloca i64, align 8
  %x88 = alloca i128, align 16
  %x89 = alloca i128, align 16
  %x90 = alloca i64, align 8
  %x91 = alloca i128, align 16
  %x92 = alloca i128, align 16
  %x93 = alloca i64, align 8
  %x94 = alloca i128, align 16
  %x95 = alloca i128, align 16
  %x96 = alloca i64, align 8
  %x97 = alloca i128, align 16
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 8
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %mul = mul i64 %2, 2
  store i64 %mul, ptr %x2, align 8
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 8
  %4 = load i64, ptr %arrayidx1, align 8
  %mul2 = mul i64 %4, 2
  store i64 %mul2, ptr %x3, align 8
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %5, i64 7
  %6 = load i64, ptr %arrayidx3, align 8
  store i64 %6, ptr %x4, align 8
  %7 = load i64, ptr %x4, align 8
  %mul4 = mul i64 %7, 2
  store i64 %mul4, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 7
  %9 = load i64, ptr %arrayidx5, align 8
  %mul6 = mul i64 %9, 2
  store i64 %mul6, ptr %x6, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx7, align 8
  store i64 %11, ptr %x7, align 8
  %12 = load i64, ptr %x7, align 8
  %mul8 = mul i64 %12, 2
  store i64 %mul8, ptr %x8, align 8
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %13, i64 6
  %14 = load i64, ptr %arrayidx9, align 8
  %mul10 = mul i64 %14, 2
  store i64 %mul10, ptr %x9, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx11, align 8
  store i64 %16, ptr %x10, align 8
  %17 = load i64, ptr %x10, align 8
  %mul12 = mul i64 %17, 2
  store i64 %mul12, ptr %x11, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %18, i64 5
  %19 = load i64, ptr %arrayidx13, align 8
  %mul14 = mul i64 %19, 2
  store i64 %mul14, ptr %x12, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx15, align 8
  %mul16 = mul i64 %21, 2
  store i64 %mul16, ptr %x13, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %22, i64 3
  %23 = load i64, ptr %arrayidx17, align 8
  %mul18 = mul i64 %23, 2
  store i64 %mul18, ptr %x14, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %24, i64 2
  %25 = load i64, ptr %arrayidx19, align 8
  %mul20 = mul i64 %25, 2
  store i64 %mul20, ptr %x15, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %26, i64 1
  %27 = load i64, ptr %arrayidx21, align 8
  %mul22 = mul i64 %27, 2
  store i64 %mul22, ptr %x16, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %28, i64 8
  %29 = load i64, ptr %arrayidx23, align 8
  %conv = zext i64 %29 to i128
  %30 = load i64, ptr %x1, align 8
  %mul24 = mul i64 %30, 2
  %conv25 = zext i64 %mul24 to i128
  %mul26 = mul i128 %conv, %conv25
  store i128 %mul26, ptr %x17, align 16
  %31 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %31, i64 7
  %32 = load i64, ptr %arrayidx27, align 8
  %conv28 = zext i64 %32 to i128
  %33 = load i64, ptr %x2, align 8
  %mul29 = mul i64 %33, 2
  %conv30 = zext i64 %mul29 to i128
  %mul31 = mul i128 %conv28, %conv30
  store i128 %mul31, ptr %x18, align 16
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %34, i64 7
  %35 = load i64, ptr %arrayidx32, align 8
  %conv33 = zext i64 %35 to i128
  %36 = load i64, ptr %x4, align 8
  %mul34 = mul i64 %36, 2
  %conv35 = zext i64 %mul34 to i128
  %mul36 = mul i128 %conv33, %conv35
  store i128 %mul36, ptr %x19, align 16
  %37 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %37, i64 6
  %38 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %38 to i128
  %39 = load i64, ptr %x2, align 8
  %mul39 = mul i64 %39, 2
  %conv40 = zext i64 %mul39 to i128
  %mul41 = mul i128 %conv38, %conv40
  store i128 %mul41, ptr %x20, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %40, i64 6
  %41 = load i64, ptr %arrayidx42, align 8
  %conv43 = zext i64 %41 to i128
  %42 = load i64, ptr %x5, align 8
  %mul44 = mul i64 %42, 2
  %conv45 = zext i64 %mul44 to i128
  %mul46 = mul i128 %conv43, %conv45
  store i128 %mul46, ptr %x21, align 16
  %43 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %43, i64 6
  %44 = load i64, ptr %arrayidx47, align 8
  %conv48 = zext i64 %44 to i128
  %45 = load i64, ptr %x7, align 8
  %mul49 = mul i64 %45, 2
  %conv50 = zext i64 %mul49 to i128
  %mul51 = mul i128 %conv48, %conv50
  store i128 %mul51, ptr %x22, align 16
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %46, i64 5
  %47 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %47 to i128
  %48 = load i64, ptr %x2, align 8
  %mul54 = mul i64 %48, 2
  %conv55 = zext i64 %mul54 to i128
  %mul56 = mul i128 %conv53, %conv55
  store i128 %mul56, ptr %x23, align 16
  %49 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %49, i64 5
  %50 = load i64, ptr %arrayidx57, align 8
  %conv58 = zext i64 %50 to i128
  %51 = load i64, ptr %x5, align 8
  %mul59 = mul i64 %51, 2
  %conv60 = zext i64 %mul59 to i128
  %mul61 = mul i128 %conv58, %conv60
  store i128 %mul61, ptr %x24, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %52, i64 5
  %53 = load i64, ptr %arrayidx62, align 8
  %conv63 = zext i64 %53 to i128
  %54 = load i64, ptr %x8, align 8
  %mul64 = mul i64 %54, 2
  %conv65 = zext i64 %mul64 to i128
  %mul66 = mul i128 %conv63, %conv65
  store i128 %mul66, ptr %x25, align 16
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %55, i64 5
  %56 = load i64, ptr %arrayidx67, align 8
  %conv68 = zext i64 %56 to i128
  %57 = load i64, ptr %x10, align 8
  %mul69 = mul i64 %57, 2
  %conv70 = zext i64 %mul69 to i128
  %mul71 = mul i128 %conv68, %conv70
  store i128 %mul71, ptr %x26, align 16
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %58, i64 4
  %59 = load i64, ptr %arrayidx72, align 8
  %conv73 = zext i64 %59 to i128
  %60 = load i64, ptr %x2, align 8
  %mul74 = mul i64 %60, 2
  %conv75 = zext i64 %mul74 to i128
  %mul76 = mul i128 %conv73, %conv75
  store i128 %mul76, ptr %x27, align 16
  %61 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %61, i64 4
  %62 = load i64, ptr %arrayidx77, align 8
  %conv78 = zext i64 %62 to i128
  %63 = load i64, ptr %x5, align 8
  %mul79 = mul i64 %63, 2
  %conv80 = zext i64 %mul79 to i128
  %mul81 = mul i128 %conv78, %conv80
  store i128 %mul81, ptr %x28, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %64, i64 4
  %65 = load i64, ptr %arrayidx82, align 8
  %conv83 = zext i64 %65 to i128
  %66 = load i64, ptr %x8, align 8
  %mul84 = mul i64 %66, 2
  %conv85 = zext i64 %mul84 to i128
  %mul86 = mul i128 %conv83, %conv85
  store i128 %mul86, ptr %x29, align 16
  %67 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %67, i64 4
  %68 = load i64, ptr %arrayidx87, align 8
  %conv88 = zext i64 %68 to i128
  %69 = load i64, ptr %x11, align 8
  %mul89 = mul i64 %69, 2
  %conv90 = zext i64 %mul89 to i128
  %mul91 = mul i128 %conv88, %conv90
  store i128 %mul91, ptr %x30, align 16
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i64, ptr %70, i64 4
  %71 = load i64, ptr %arrayidx92, align 8
  %conv93 = zext i64 %71 to i128
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, ptr %72, i64 4
  %73 = load i64, ptr %arrayidx94, align 8
  %conv95 = zext i64 %73 to i128
  %mul96 = mul i128 %conv93, %conv95
  store i128 %mul96, ptr %x31, align 16
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx97 = getelementptr inbounds i64, ptr %74, i64 3
  %75 = load i64, ptr %arrayidx97, align 8
  %conv98 = zext i64 %75 to i128
  %76 = load i64, ptr %x2, align 8
  %mul99 = mul i64 %76, 2
  %conv100 = zext i64 %mul99 to i128
  %mul101 = mul i128 %conv98, %conv100
  store i128 %mul101, ptr %x32, align 16
  %77 = load ptr, ptr %arg1.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %77, i64 3
  %78 = load i64, ptr %arrayidx102, align 8
  %conv103 = zext i64 %78 to i128
  %79 = load i64, ptr %x5, align 8
  %mul104 = mul i64 %79, 2
  %conv105 = zext i64 %mul104 to i128
  %mul106 = mul i128 %conv103, %conv105
  store i128 %mul106, ptr %x33, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx107 = getelementptr inbounds i64, ptr %80, i64 3
  %81 = load i64, ptr %arrayidx107, align 8
  %conv108 = zext i64 %81 to i128
  %82 = load i64, ptr %x8, align 8
  %mul109 = mul i64 %82, 2
  %conv110 = zext i64 %mul109 to i128
  %mul111 = mul i128 %conv108, %conv110
  store i128 %mul111, ptr %x34, align 16
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %83, i64 3
  %84 = load i64, ptr %arrayidx112, align 8
  %conv113 = zext i64 %84 to i128
  %85 = load i64, ptr %x12, align 8
  %conv114 = zext i64 %85 to i128
  %mul115 = mul i128 %conv113, %conv114
  store i128 %mul115, ptr %x35, align 16
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %86, i64 3
  %87 = load i64, ptr %arrayidx116, align 8
  %conv117 = zext i64 %87 to i128
  %88 = load i64, ptr %x13, align 8
  %conv118 = zext i64 %88 to i128
  %mul119 = mul i128 %conv117, %conv118
  store i128 %mul119, ptr %x36, align 16
  %89 = load ptr, ptr %arg1.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %89, i64 3
  %90 = load i64, ptr %arrayidx120, align 8
  %conv121 = zext i64 %90 to i128
  %91 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %91, i64 3
  %92 = load i64, ptr %arrayidx122, align 8
  %conv123 = zext i64 %92 to i128
  %mul124 = mul i128 %conv121, %conv123
  store i128 %mul124, ptr %x37, align 16
  %93 = load ptr, ptr %arg1.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %93, i64 2
  %94 = load i64, ptr %arrayidx125, align 8
  %conv126 = zext i64 %94 to i128
  %95 = load i64, ptr %x2, align 8
  %mul127 = mul i64 %95, 2
  %conv128 = zext i64 %mul127 to i128
  %mul129 = mul i128 %conv126, %conv128
  store i128 %mul129, ptr %x38, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %96, i64 2
  %97 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %97 to i128
  %98 = load i64, ptr %x5, align 8
  %mul132 = mul i64 %98, 2
  %conv133 = zext i64 %mul132 to i128
  %mul134 = mul i128 %conv131, %conv133
  store i128 %mul134, ptr %x39, align 16
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx135 = getelementptr inbounds i64, ptr %99, i64 2
  %100 = load i64, ptr %arrayidx135, align 8
  %conv136 = zext i64 %100 to i128
  %101 = load i64, ptr %x9, align 8
  %conv137 = zext i64 %101 to i128
  %mul138 = mul i128 %conv136, %conv137
  store i128 %mul138, ptr %x40, align 16
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx139 = getelementptr inbounds i64, ptr %102, i64 2
  %103 = load i64, ptr %arrayidx139, align 8
  %conv140 = zext i64 %103 to i128
  %104 = load i64, ptr %x12, align 8
  %conv141 = zext i64 %104 to i128
  %mul142 = mul i128 %conv140, %conv141
  store i128 %mul142, ptr %x41, align 16
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i64, ptr %105, i64 2
  %106 = load i64, ptr %arrayidx143, align 8
  %conv144 = zext i64 %106 to i128
  %107 = load i64, ptr %x13, align 8
  %conv145 = zext i64 %107 to i128
  %mul146 = mul i128 %conv144, %conv145
  store i128 %mul146, ptr %x42, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx147 = getelementptr inbounds i64, ptr %108, i64 2
  %109 = load i64, ptr %arrayidx147, align 8
  %conv148 = zext i64 %109 to i128
  %110 = load i64, ptr %x14, align 8
  %conv149 = zext i64 %110 to i128
  %mul150 = mul i128 %conv148, %conv149
  store i128 %mul150, ptr %x43, align 16
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx151 = getelementptr inbounds i64, ptr %111, i64 2
  %112 = load i64, ptr %arrayidx151, align 8
  %conv152 = zext i64 %112 to i128
  %113 = load ptr, ptr %arg1.addr, align 8
  %arrayidx153 = getelementptr inbounds i64, ptr %113, i64 2
  %114 = load i64, ptr %arrayidx153, align 8
  %conv154 = zext i64 %114 to i128
  %mul155 = mul i128 %conv152, %conv154
  store i128 %mul155, ptr %x44, align 16
  %115 = load ptr, ptr %arg1.addr, align 8
  %arrayidx156 = getelementptr inbounds i64, ptr %115, i64 1
  %116 = load i64, ptr %arrayidx156, align 8
  %conv157 = zext i64 %116 to i128
  %117 = load i64, ptr %x2, align 8
  %mul158 = mul i64 %117, 2
  %conv159 = zext i64 %mul158 to i128
  %mul160 = mul i128 %conv157, %conv159
  store i128 %mul160, ptr %x45, align 16
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx161 = getelementptr inbounds i64, ptr %118, i64 1
  %119 = load i64, ptr %arrayidx161, align 8
  %conv162 = zext i64 %119 to i128
  %120 = load i64, ptr %x6, align 8
  %conv163 = zext i64 %120 to i128
  %mul164 = mul i128 %conv162, %conv163
  store i128 %mul164, ptr %x46, align 16
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx165 = getelementptr inbounds i64, ptr %121, i64 1
  %122 = load i64, ptr %arrayidx165, align 8
  %conv166 = zext i64 %122 to i128
  %123 = load i64, ptr %x9, align 8
  %conv167 = zext i64 %123 to i128
  %mul168 = mul i128 %conv166, %conv167
  store i128 %mul168, ptr %x47, align 16
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx169 = getelementptr inbounds i64, ptr %124, i64 1
  %125 = load i64, ptr %arrayidx169, align 8
  %conv170 = zext i64 %125 to i128
  %126 = load i64, ptr %x12, align 8
  %conv171 = zext i64 %126 to i128
  %mul172 = mul i128 %conv170, %conv171
  store i128 %mul172, ptr %x48, align 16
  %127 = load ptr, ptr %arg1.addr, align 8
  %arrayidx173 = getelementptr inbounds i64, ptr %127, i64 1
  %128 = load i64, ptr %arrayidx173, align 8
  %conv174 = zext i64 %128 to i128
  %129 = load i64, ptr %x13, align 8
  %conv175 = zext i64 %129 to i128
  %mul176 = mul i128 %conv174, %conv175
  store i128 %mul176, ptr %x49, align 16
  %130 = load ptr, ptr %arg1.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, ptr %130, i64 1
  %131 = load i64, ptr %arrayidx177, align 8
  %conv178 = zext i64 %131 to i128
  %132 = load i64, ptr %x14, align 8
  %conv179 = zext i64 %132 to i128
  %mul180 = mul i128 %conv178, %conv179
  store i128 %mul180, ptr %x50, align 16
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx181 = getelementptr inbounds i64, ptr %133, i64 1
  %134 = load i64, ptr %arrayidx181, align 8
  %conv182 = zext i64 %134 to i128
  %135 = load i64, ptr %x15, align 8
  %conv183 = zext i64 %135 to i128
  %mul184 = mul i128 %conv182, %conv183
  store i128 %mul184, ptr %x51, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx185 = getelementptr inbounds i64, ptr %136, i64 1
  %137 = load i64, ptr %arrayidx185, align 8
  %conv186 = zext i64 %137 to i128
  %138 = load ptr, ptr %arg1.addr, align 8
  %arrayidx187 = getelementptr inbounds i64, ptr %138, i64 1
  %139 = load i64, ptr %arrayidx187, align 8
  %conv188 = zext i64 %139 to i128
  %mul189 = mul i128 %conv186, %conv188
  store i128 %mul189, ptr %x52, align 16
  %140 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %140, i64 0
  %141 = load i64, ptr %arrayidx190, align 8
  %conv191 = zext i64 %141 to i128
  %142 = load i64, ptr %x3, align 8
  %conv192 = zext i64 %142 to i128
  %mul193 = mul i128 %conv191, %conv192
  store i128 %mul193, ptr %x53, align 16
  %143 = load ptr, ptr %arg1.addr, align 8
  %arrayidx194 = getelementptr inbounds i64, ptr %143, i64 0
  %144 = load i64, ptr %arrayidx194, align 8
  %conv195 = zext i64 %144 to i128
  %145 = load i64, ptr %x6, align 8
  %conv196 = zext i64 %145 to i128
  %mul197 = mul i128 %conv195, %conv196
  store i128 %mul197, ptr %x54, align 16
  %146 = load ptr, ptr %arg1.addr, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %146, i64 0
  %147 = load i64, ptr %arrayidx198, align 8
  %conv199 = zext i64 %147 to i128
  %148 = load i64, ptr %x9, align 8
  %conv200 = zext i64 %148 to i128
  %mul201 = mul i128 %conv199, %conv200
  store i128 %mul201, ptr %x55, align 16
  %149 = load ptr, ptr %arg1.addr, align 8
  %arrayidx202 = getelementptr inbounds i64, ptr %149, i64 0
  %150 = load i64, ptr %arrayidx202, align 8
  %conv203 = zext i64 %150 to i128
  %151 = load i64, ptr %x12, align 8
  %conv204 = zext i64 %151 to i128
  %mul205 = mul i128 %conv203, %conv204
  store i128 %mul205, ptr %x56, align 16
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx206 = getelementptr inbounds i64, ptr %152, i64 0
  %153 = load i64, ptr %arrayidx206, align 8
  %conv207 = zext i64 %153 to i128
  %154 = load i64, ptr %x13, align 8
  %conv208 = zext i64 %154 to i128
  %mul209 = mul i128 %conv207, %conv208
  store i128 %mul209, ptr %x57, align 16
  %155 = load ptr, ptr %arg1.addr, align 8
  %arrayidx210 = getelementptr inbounds i64, ptr %155, i64 0
  %156 = load i64, ptr %arrayidx210, align 8
  %conv211 = zext i64 %156 to i128
  %157 = load i64, ptr %x14, align 8
  %conv212 = zext i64 %157 to i128
  %mul213 = mul i128 %conv211, %conv212
  store i128 %mul213, ptr %x58, align 16
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx214 = getelementptr inbounds i64, ptr %158, i64 0
  %159 = load i64, ptr %arrayidx214, align 8
  %conv215 = zext i64 %159 to i128
  %160 = load i64, ptr %x15, align 8
  %conv216 = zext i64 %160 to i128
  %mul217 = mul i128 %conv215, %conv216
  store i128 %mul217, ptr %x59, align 16
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx218 = getelementptr inbounds i64, ptr %161, i64 0
  %162 = load i64, ptr %arrayidx218, align 8
  %conv219 = zext i64 %162 to i128
  %163 = load i64, ptr %x16, align 8
  %conv220 = zext i64 %163 to i128
  %mul221 = mul i128 %conv219, %conv220
  store i128 %mul221, ptr %x60, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx222 = getelementptr inbounds i64, ptr %164, i64 0
  %165 = load i64, ptr %arrayidx222, align 8
  %conv223 = zext i64 %165 to i128
  %166 = load ptr, ptr %arg1.addr, align 8
  %arrayidx224 = getelementptr inbounds i64, ptr %166, i64 0
  %167 = load i64, ptr %arrayidx224, align 8
  %conv225 = zext i64 %167 to i128
  %mul226 = mul i128 %conv223, %conv225
  store i128 %mul226, ptr %x61, align 16
  %168 = load i128, ptr %x61, align 16
  %169 = load i128, ptr %x45, align 16
  %170 = load i128, ptr %x39, align 16
  %171 = load i128, ptr %x34, align 16
  %172 = load i128, ptr %x30, align 16
  %add = add i128 %171, %172
  %add227 = add i128 %170, %add
  %add228 = add i128 %169, %add227
  %add229 = add i128 %168, %add228
  store i128 %add229, ptr %x62, align 16
  %173 = load i128, ptr %x62, align 16
  %shr = lshr i128 %173, 58
  store i128 %shr, ptr %x63, align 16
  %174 = load i128, ptr %x62, align 16
  %and = and i128 %174, 288230376151711743
  %conv230 = trunc i128 %and to i64
  store i64 %conv230, ptr %x64, align 8
  %175 = load i128, ptr %x53, align 16
  %176 = load i128, ptr %x46, align 16
  %177 = load i128, ptr %x40, align 16
  %178 = load i128, ptr %x35, align 16
  %179 = load i128, ptr %x31, align 16
  %add231 = add i128 %178, %179
  %add232 = add i128 %177, %add231
  %add233 = add i128 %176, %add232
  %add234 = add i128 %175, %add233
  store i128 %add234, ptr %x65, align 16
  %180 = load i128, ptr %x54, align 16
  %181 = load i128, ptr %x47, align 16
  %182 = load i128, ptr %x41, align 16
  %183 = load i128, ptr %x36, align 16
  %184 = load i128, ptr %x17, align 16
  %add235 = add i128 %183, %184
  %add236 = add i128 %182, %add235
  %add237 = add i128 %181, %add236
  %add238 = add i128 %180, %add237
  store i128 %add238, ptr %x66, align 16
  %185 = load i128, ptr %x55, align 16
  %186 = load i128, ptr %x48, align 16
  %187 = load i128, ptr %x42, align 16
  %188 = load i128, ptr %x37, align 16
  %189 = load i128, ptr %x18, align 16
  %add239 = add i128 %188, %189
  %add240 = add i128 %187, %add239
  %add241 = add i128 %186, %add240
  %add242 = add i128 %185, %add241
  store i128 %add242, ptr %x67, align 16
  %190 = load i128, ptr %x56, align 16
  %191 = load i128, ptr %x49, align 16
  %192 = load i128, ptr %x43, align 16
  %193 = load i128, ptr %x20, align 16
  %194 = load i128, ptr %x19, align 16
  %add243 = add i128 %193, %194
  %add244 = add i128 %192, %add243
  %add245 = add i128 %191, %add244
  %add246 = add i128 %190, %add245
  store i128 %add246, ptr %x68, align 16
  %195 = load i128, ptr %x57, align 16
  %196 = load i128, ptr %x50, align 16
  %197 = load i128, ptr %x44, align 16
  %198 = load i128, ptr %x23, align 16
  %199 = load i128, ptr %x21, align 16
  %add247 = add i128 %198, %199
  %add248 = add i128 %197, %add247
  %add249 = add i128 %196, %add248
  %add250 = add i128 %195, %add249
  store i128 %add250, ptr %x69, align 16
  %200 = load i128, ptr %x58, align 16
  %201 = load i128, ptr %x51, align 16
  %202 = load i128, ptr %x27, align 16
  %203 = load i128, ptr %x24, align 16
  %204 = load i128, ptr %x22, align 16
  %add251 = add i128 %203, %204
  %add252 = add i128 %202, %add251
  %add253 = add i128 %201, %add252
  %add254 = add i128 %200, %add253
  store i128 %add254, ptr %x70, align 16
  %205 = load i128, ptr %x59, align 16
  %206 = load i128, ptr %x52, align 16
  %207 = load i128, ptr %x32, align 16
  %208 = load i128, ptr %x28, align 16
  %209 = load i128, ptr %x25, align 16
  %add255 = add i128 %208, %209
  %add256 = add i128 %207, %add255
  %add257 = add i128 %206, %add256
  %add258 = add i128 %205, %add257
  store i128 %add258, ptr %x71, align 16
  %210 = load i128, ptr %x60, align 16
  %211 = load i128, ptr %x38, align 16
  %212 = load i128, ptr %x33, align 16
  %213 = load i128, ptr %x29, align 16
  %214 = load i128, ptr %x26, align 16
  %add259 = add i128 %213, %214
  %add260 = add i128 %212, %add259
  %add261 = add i128 %211, %add260
  %add262 = add i128 %210, %add261
  store i128 %add262, ptr %x72, align 16
  %215 = load i128, ptr %x63, align 16
  %216 = load i128, ptr %x72, align 16
  %add263 = add i128 %215, %216
  store i128 %add263, ptr %x73, align 16
  %217 = load i128, ptr %x73, align 16
  %shr264 = lshr i128 %217, 58
  store i128 %shr264, ptr %x74, align 16
  %218 = load i128, ptr %x73, align 16
  %and265 = and i128 %218, 288230376151711743
  %conv266 = trunc i128 %and265 to i64
  store i64 %conv266, ptr %x75, align 8
  %219 = load i128, ptr %x74, align 16
  %220 = load i128, ptr %x71, align 16
  %add267 = add i128 %219, %220
  store i128 %add267, ptr %x76, align 16
  %221 = load i128, ptr %x76, align 16
  %shr268 = lshr i128 %221, 58
  store i128 %shr268, ptr %x77, align 16
  %222 = load i128, ptr %x76, align 16
  %and269 = and i128 %222, 288230376151711743
  %conv270 = trunc i128 %and269 to i64
  store i64 %conv270, ptr %x78, align 8
  %223 = load i128, ptr %x77, align 16
  %224 = load i128, ptr %x70, align 16
  %add271 = add i128 %223, %224
  store i128 %add271, ptr %x79, align 16
  %225 = load i128, ptr %x79, align 16
  %shr272 = lshr i128 %225, 58
  store i128 %shr272, ptr %x80, align 16
  %226 = load i128, ptr %x79, align 16
  %and273 = and i128 %226, 288230376151711743
  %conv274 = trunc i128 %and273 to i64
  store i64 %conv274, ptr %x81, align 8
  %227 = load i128, ptr %x80, align 16
  %228 = load i128, ptr %x69, align 16
  %add275 = add i128 %227, %228
  store i128 %add275, ptr %x82, align 16
  %229 = load i128, ptr %x82, align 16
  %shr276 = lshr i128 %229, 58
  store i128 %shr276, ptr %x83, align 16
  %230 = load i128, ptr %x82, align 16
  %and277 = and i128 %230, 288230376151711743
  %conv278 = trunc i128 %and277 to i64
  store i64 %conv278, ptr %x84, align 8
  %231 = load i128, ptr %x83, align 16
  %232 = load i128, ptr %x68, align 16
  %add279 = add i128 %231, %232
  store i128 %add279, ptr %x85, align 16
  %233 = load i128, ptr %x85, align 16
  %shr280 = lshr i128 %233, 58
  store i128 %shr280, ptr %x86, align 16
  %234 = load i128, ptr %x85, align 16
  %and281 = and i128 %234, 288230376151711743
  %conv282 = trunc i128 %and281 to i64
  store i64 %conv282, ptr %x87, align 8
  %235 = load i128, ptr %x86, align 16
  %236 = load i128, ptr %x67, align 16
  %add283 = add i128 %235, %236
  store i128 %add283, ptr %x88, align 16
  %237 = load i128, ptr %x88, align 16
  %shr284 = lshr i128 %237, 58
  store i128 %shr284, ptr %x89, align 16
  %238 = load i128, ptr %x88, align 16
  %and285 = and i128 %238, 288230376151711743
  %conv286 = trunc i128 %and285 to i64
  store i64 %conv286, ptr %x90, align 8
  %239 = load i128, ptr %x89, align 16
  %240 = load i128, ptr %x66, align 16
  %add287 = add i128 %239, %240
  store i128 %add287, ptr %x91, align 16
  %241 = load i128, ptr %x91, align 16
  %shr288 = lshr i128 %241, 58
  store i128 %shr288, ptr %x92, align 16
  %242 = load i128, ptr %x91, align 16
  %and289 = and i128 %242, 288230376151711743
  %conv290 = trunc i128 %and289 to i64
  store i64 %conv290, ptr %x93, align 8
  %243 = load i128, ptr %x92, align 16
  %244 = load i128, ptr %x65, align 16
  %add291 = add i128 %243, %244
  store i128 %add291, ptr %x94, align 16
  %245 = load i128, ptr %x94, align 16
  %shr292 = lshr i128 %245, 57
  store i128 %shr292, ptr %x95, align 16
  %246 = load i128, ptr %x94, align 16
  %and293 = and i128 %246, 144115188075855871
  %conv294 = trunc i128 %and293 to i64
  store i64 %conv294, ptr %x96, align 8
  %247 = load i64, ptr %x64, align 8
  %conv295 = zext i64 %247 to i128
  %248 = load i128, ptr %x95, align 16
  %add296 = add i128 %conv295, %248
  store i128 %add296, ptr %x97, align 16
  %249 = load i128, ptr %x97, align 16
  %shr297 = lshr i128 %249, 58
  %conv298 = trunc i128 %shr297 to i64
  store i64 %conv298, ptr %x98, align 8
  %250 = load i128, ptr %x97, align 16
  %and299 = and i128 %250, 288230376151711743
  %conv300 = trunc i128 %and299 to i64
  store i64 %conv300, ptr %x99, align 8
  %251 = load i64, ptr %x98, align 8
  %252 = load i64, ptr %x75, align 8
  %add301 = add i64 %251, %252
  store i64 %add301, ptr %x100, align 8
  %253 = load i64, ptr %x100, align 8
  %shr302 = lshr i64 %253, 58
  %conv303 = trunc i64 %shr302 to i8
  store i8 %conv303, ptr %x101, align 1
  %254 = load i64, ptr %x100, align 8
  %and304 = and i64 %254, 288230376151711743
  store i64 %and304, ptr %x102, align 8
  %255 = load i8, ptr %x101, align 1
  %conv305 = zext i8 %255 to i64
  %256 = load i64, ptr %x78, align 8
  %add306 = add i64 %conv305, %256
  store i64 %add306, ptr %x103, align 8
  %257 = load i64, ptr %x99, align 8
  %258 = load ptr, ptr %out1.addr, align 8
  %arrayidx307 = getelementptr inbounds i64, ptr %258, i64 0
  store i64 %257, ptr %arrayidx307, align 8
  %259 = load i64, ptr %x102, align 8
  %260 = load ptr, ptr %out1.addr, align 8
  %arrayidx308 = getelementptr inbounds i64, ptr %260, i64 1
  store i64 %259, ptr %arrayidx308, align 8
  %261 = load i64, ptr %x103, align 8
  %262 = load ptr, ptr %out1.addr, align 8
  %arrayidx309 = getelementptr inbounds i64, ptr %262, i64 2
  store i64 %261, ptr %arrayidx309, align 8
  %263 = load i64, ptr %x81, align 8
  %264 = load ptr, ptr %out1.addr, align 8
  %arrayidx310 = getelementptr inbounds i64, ptr %264, i64 3
  store i64 %263, ptr %arrayidx310, align 8
  %265 = load i64, ptr %x84, align 8
  %266 = load ptr, ptr %out1.addr, align 8
  %arrayidx311 = getelementptr inbounds i64, ptr %266, i64 4
  store i64 %265, ptr %arrayidx311, align 8
  %267 = load i64, ptr %x87, align 8
  %268 = load ptr, ptr %out1.addr, align 8
  %arrayidx312 = getelementptr inbounds i64, ptr %268, i64 5
  store i64 %267, ptr %arrayidx312, align 8
  %269 = load i64, ptr %x90, align 8
  %270 = load ptr, ptr %out1.addr, align 8
  %arrayidx313 = getelementptr inbounds i64, ptr %270, i64 6
  store i64 %269, ptr %arrayidx313, align 8
  %271 = load i64, ptr %x93, align 8
  %272 = load ptr, ptr %out1.addr, align 8
  %arrayidx314 = getelementptr inbounds i64, ptr %272, i64 7
  store i64 %271, ptr %arrayidx314, align 8
  %273 = load i64, ptr %x96, align 8
  %274 = load ptr, ptr %out1.addr, align 8
  %arrayidx315 = getelementptr inbounds i64, ptr %274, i64 8
  store i64 %273, ptr %arrayidx315, align 8
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
