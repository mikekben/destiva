; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p448_solinas_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p448_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x64 = alloca i128, align 16
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
  %x75 = alloca i128, align 16
  %x76 = alloca i128, align 16
  %x77 = alloca i128, align 16
  %x78 = alloca i128, align 16
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i128, align 16
  %x82 = alloca i128, align 16
  %x83 = alloca i128, align 16
  %x84 = alloca i128, align 16
  %x85 = alloca i128, align 16
  %x86 = alloca i128, align 16
  %x87 = alloca i128, align 16
  %x88 = alloca i128, align 16
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i128, align 16
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i128, align 16
  %x95 = alloca i128, align 16
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i128, align 16
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i128, align 16
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i128, align 16
  %x105 = alloca i64, align 8
  %x106 = alloca i64, align 8
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 7
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 7
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %mul = mul i64 %4, 2
  store i64 %mul, ptr %x3, align 8
  %5 = load i64, ptr %x2, align 8
  %mul2 = mul i64 %5, 2
  store i64 %mul2, ptr %x4, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 7
  %7 = load i64, ptr %arrayidx3, align 8
  %mul4 = mul i64 %7, 2
  store i64 %mul4, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 6
  %9 = load i64, ptr %arrayidx5, align 8
  store i64 %9, ptr %x6, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx6, align 8
  store i64 %11, ptr %x7, align 8
  %12 = load i64, ptr %x6, align 8
  %mul7 = mul i64 %12, 2
  store i64 %mul7, ptr %x8, align 8
  %13 = load i64, ptr %x7, align 8
  %mul8 = mul i64 %13, 2
  store i64 %mul8, ptr %x9, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 6
  %15 = load i64, ptr %arrayidx9, align 8
  %mul10 = mul i64 %15, 2
  store i64 %mul10, ptr %x10, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %16, i64 5
  %17 = load i64, ptr %arrayidx11, align 8
  store i64 %17, ptr %x11, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %18, i64 5
  %19 = load i64, ptr %arrayidx12, align 8
  store i64 %19, ptr %x12, align 8
  %20 = load i64, ptr %x11, align 8
  %mul13 = mul i64 %20, 2
  store i64 %mul13, ptr %x13, align 8
  %21 = load i64, ptr %x12, align 8
  %mul14 = mul i64 %21, 2
  store i64 %mul14, ptr %x14, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %22, i64 5
  %23 = load i64, ptr %arrayidx15, align 8
  %mul16 = mul i64 %23, 2
  store i64 %mul16, ptr %x15, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %24, i64 4
  %25 = load i64, ptr %arrayidx17, align 8
  store i64 %25, ptr %x16, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %26, i64 4
  %27 = load i64, ptr %arrayidx18, align 8
  store i64 %27, ptr %x17, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %28, i64 4
  %29 = load i64, ptr %arrayidx19, align 8
  %mul20 = mul i64 %29, 2
  store i64 %mul20, ptr %x18, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %30, i64 3
  %31 = load i64, ptr %arrayidx21, align 8
  %mul22 = mul i64 %31, 2
  store i64 %mul22, ptr %x19, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %32, i64 2
  %33 = load i64, ptr %arrayidx23, align 8
  %mul24 = mul i64 %33, 2
  store i64 %mul24, ptr %x20, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %34, i64 1
  %35 = load i64, ptr %arrayidx25, align 8
  %mul26 = mul i64 %35, 2
  store i64 %mul26, ptr %x21, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx27, align 8
  %conv = zext i64 %37 to i128
  %38 = load i64, ptr %x1, align 8
  %conv28 = zext i64 %38 to i128
  %mul29 = mul i128 %conv, %conv28
  store i128 %mul29, ptr %x22, align 16
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %39, i64 6
  %40 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %40 to i128
  %41 = load i64, ptr %x3, align 8
  %conv32 = zext i64 %41 to i128
  %mul33 = mul i128 %conv31, %conv32
  store i128 %mul33, ptr %x23, align 16
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %42, i64 6
  %43 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %43 to i128
  %44 = load i64, ptr %x6, align 8
  %conv36 = zext i64 %44 to i128
  %mul37 = mul i128 %conv35, %conv36
  store i128 %mul37, ptr %x24, align 16
  %45 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %45, i64 5
  %46 = load i64, ptr %arrayidx38, align 8
  %conv39 = zext i64 %46 to i128
  %47 = load i64, ptr %x3, align 8
  %conv40 = zext i64 %47 to i128
  %mul41 = mul i128 %conv39, %conv40
  store i128 %mul41, ptr %x25, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %48, i64 7
  %49 = load i64, ptr %arrayidx42, align 8
  %conv43 = zext i64 %49 to i128
  %50 = load i64, ptr %x1, align 8
  %conv44 = zext i64 %50 to i128
  %mul45 = mul i128 %conv43, %conv44
  store i128 %mul45, ptr %x26, align 16
  %51 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %51, i64 6
  %52 = load i64, ptr %arrayidx46, align 8
  %conv47 = zext i64 %52 to i128
  %53 = load i64, ptr %x3, align 8
  %conv48 = zext i64 %53 to i128
  %mul49 = mul i128 %conv47, %conv48
  store i128 %mul49, ptr %x27, align 16
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %54, i64 6
  %55 = load i64, ptr %arrayidx50, align 8
  %conv51 = zext i64 %55 to i128
  %56 = load i64, ptr %x6, align 8
  %conv52 = zext i64 %56 to i128
  %mul53 = mul i128 %conv51, %conv52
  store i128 %mul53, ptr %x28, align 16
  %57 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %57, i64 5
  %58 = load i64, ptr %arrayidx54, align 8
  %conv55 = zext i64 %58 to i128
  %59 = load i64, ptr %x3, align 8
  %conv56 = zext i64 %59 to i128
  %mul57 = mul i128 %conv55, %conv56
  store i128 %mul57, ptr %x29, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %60, i64 7
  %61 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %61 to i128
  %62 = load i64, ptr %x2, align 8
  %conv60 = zext i64 %62 to i128
  %mul61 = mul i128 %conv59, %conv60
  store i128 %mul61, ptr %x30, align 16
  %63 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %63, i64 6
  %64 = load i64, ptr %arrayidx62, align 8
  %conv63 = zext i64 %64 to i128
  %65 = load i64, ptr %x4, align 8
  %conv64 = zext i64 %65 to i128
  %mul65 = mul i128 %conv63, %conv64
  store i128 %mul65, ptr %x31, align 16
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %66, i64 6
  %67 = load i64, ptr %arrayidx66, align 8
  %conv67 = zext i64 %67 to i128
  %68 = load i64, ptr %x7, align 8
  %conv68 = zext i64 %68 to i128
  %mul69 = mul i128 %conv67, %conv68
  store i128 %mul69, ptr %x32, align 16
  %69 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %69, i64 5
  %70 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %70 to i128
  %71 = load i64, ptr %x4, align 8
  %conv72 = zext i64 %71 to i128
  %mul73 = mul i128 %conv71, %conv72
  store i128 %mul73, ptr %x33, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %72, i64 5
  %73 = load i64, ptr %arrayidx74, align 8
  %conv75 = zext i64 %73 to i128
  %74 = load i64, ptr %x9, align 8
  %conv76 = zext i64 %74 to i128
  %mul77 = mul i128 %conv75, %conv76
  store i128 %mul77, ptr %x34, align 16
  %75 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %75, i64 5
  %76 = load i64, ptr %arrayidx78, align 8
  %conv79 = zext i64 %76 to i128
  %77 = load i64, ptr %x8, align 8
  %conv80 = zext i64 %77 to i128
  %mul81 = mul i128 %conv79, %conv80
  store i128 %mul81, ptr %x35, align 16
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %78, i64 5
  %79 = load i64, ptr %arrayidx82, align 8
  %conv83 = zext i64 %79 to i128
  %80 = load i64, ptr %x12, align 8
  %conv84 = zext i64 %80 to i128
  %mul85 = mul i128 %conv83, %conv84
  store i128 %mul85, ptr %x36, align 16
  %81 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i64, ptr %81, i64 5
  %82 = load i64, ptr %arrayidx86, align 8
  %conv87 = zext i64 %82 to i128
  %83 = load i64, ptr %x11, align 8
  %conv88 = zext i64 %83 to i128
  %mul89 = mul i128 %conv87, %conv88
  store i128 %mul89, ptr %x37, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %84, i64 4
  %85 = load i64, ptr %arrayidx90, align 8
  %conv91 = zext i64 %85 to i128
  %86 = load i64, ptr %x4, align 8
  %conv92 = zext i64 %86 to i128
  %mul93 = mul i128 %conv91, %conv92
  store i128 %mul93, ptr %x38, align 16
  %87 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, ptr %87, i64 4
  %88 = load i64, ptr %arrayidx94, align 8
  %conv95 = zext i64 %88 to i128
  %89 = load i64, ptr %x3, align 8
  %conv96 = zext i64 %89 to i128
  %mul97 = mul i128 %conv95, %conv96
  store i128 %mul97, ptr %x39, align 16
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %90, i64 4
  %91 = load i64, ptr %arrayidx98, align 8
  %conv99 = zext i64 %91 to i128
  %92 = load i64, ptr %x9, align 8
  %conv100 = zext i64 %92 to i128
  %mul101 = mul i128 %conv99, %conv100
  store i128 %mul101, ptr %x40, align 16
  %93 = load ptr, ptr %arg1.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %93, i64 4
  %94 = load i64, ptr %arrayidx102, align 8
  %conv103 = zext i64 %94 to i128
  %95 = load i64, ptr %x8, align 8
  %conv104 = zext i64 %95 to i128
  %mul105 = mul i128 %conv103, %conv104
  store i128 %mul105, ptr %x41, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %96, i64 4
  %97 = load i64, ptr %arrayidx106, align 8
  %conv107 = zext i64 %97 to i128
  %98 = load i64, ptr %x14, align 8
  %conv108 = zext i64 %98 to i128
  %mul109 = mul i128 %conv107, %conv108
  store i128 %mul109, ptr %x42, align 16
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %99, i64 4
  %100 = load i64, ptr %arrayidx110, align 8
  %conv111 = zext i64 %100 to i128
  %101 = load i64, ptr %x13, align 8
  %conv112 = zext i64 %101 to i128
  %mul113 = mul i128 %conv111, %conv112
  store i128 %mul113, ptr %x43, align 16
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %102, i64 4
  %103 = load i64, ptr %arrayidx114, align 8
  %conv115 = zext i64 %103 to i128
  %104 = load i64, ptr %x17, align 8
  %conv116 = zext i64 %104 to i128
  %mul117 = mul i128 %conv115, %conv116
  store i128 %mul117, ptr %x44, align 16
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %105, i64 4
  %106 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %106 to i128
  %107 = load i64, ptr %x16, align 8
  %conv120 = zext i64 %107 to i128
  %mul121 = mul i128 %conv119, %conv120
  store i128 %mul121, ptr %x45, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %108, i64 3
  %109 = load i64, ptr %arrayidx122, align 8
  %conv123 = zext i64 %109 to i128
  %110 = load i64, ptr %x4, align 8
  %conv124 = zext i64 %110 to i128
  %mul125 = mul i128 %conv123, %conv124
  store i128 %mul125, ptr %x46, align 16
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %111, i64 3
  %112 = load i64, ptr %arrayidx126, align 8
  %conv127 = zext i64 %112 to i128
  %113 = load i64, ptr %x3, align 8
  %conv128 = zext i64 %113 to i128
  %mul129 = mul i128 %conv127, %conv128
  store i128 %mul129, ptr %x47, align 16
  %114 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %114, i64 3
  %115 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %115 to i128
  %116 = load i64, ptr %x9, align 8
  %conv132 = zext i64 %116 to i128
  %mul133 = mul i128 %conv131, %conv132
  store i128 %mul133, ptr %x48, align 16
  %117 = load ptr, ptr %arg1.addr, align 8
  %arrayidx134 = getelementptr inbounds i64, ptr %117, i64 3
  %118 = load i64, ptr %arrayidx134, align 8
  %conv135 = zext i64 %118 to i128
  %119 = load i64, ptr %x8, align 8
  %conv136 = zext i64 %119 to i128
  %mul137 = mul i128 %conv135, %conv136
  store i128 %mul137, ptr %x49, align 16
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %120, i64 3
  %121 = load i64, ptr %arrayidx138, align 8
  %conv139 = zext i64 %121 to i128
  %122 = load i64, ptr %x14, align 8
  %conv140 = zext i64 %122 to i128
  %mul141 = mul i128 %conv139, %conv140
  store i128 %mul141, ptr %x50, align 16
  %123 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i64, ptr %123, i64 3
  %124 = load i64, ptr %arrayidx142, align 8
  %conv143 = zext i64 %124 to i128
  %125 = load i64, ptr %x13, align 8
  %conv144 = zext i64 %125 to i128
  %mul145 = mul i128 %conv143, %conv144
  store i128 %mul145, ptr %x51, align 16
  %126 = load ptr, ptr %arg1.addr, align 8
  %arrayidx146 = getelementptr inbounds i64, ptr %126, i64 3
  %127 = load i64, ptr %arrayidx146, align 8
  %conv147 = zext i64 %127 to i128
  %128 = load i64, ptr %x18, align 8
  %conv148 = zext i64 %128 to i128
  %mul149 = mul i128 %conv147, %conv148
  store i128 %mul149, ptr %x52, align 16
  %129 = load ptr, ptr %arg1.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %129, i64 3
  %130 = load i64, ptr %arrayidx150, align 8
  %conv151 = zext i64 %130 to i128
  %131 = load ptr, ptr %arg1.addr, align 8
  %arrayidx152 = getelementptr inbounds i64, ptr %131, i64 3
  %132 = load i64, ptr %arrayidx152, align 8
  %conv153 = zext i64 %132 to i128
  %mul154 = mul i128 %conv151, %conv153
  store i128 %mul154, ptr %x53, align 16
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx155 = getelementptr inbounds i64, ptr %133, i64 2
  %134 = load i64, ptr %arrayidx155, align 8
  %conv156 = zext i64 %134 to i128
  %135 = load i64, ptr %x4, align 8
  %conv157 = zext i64 %135 to i128
  %mul158 = mul i128 %conv156, %conv157
  store i128 %mul158, ptr %x54, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx159 = getelementptr inbounds i64, ptr %136, i64 2
  %137 = load i64, ptr %arrayidx159, align 8
  %conv160 = zext i64 %137 to i128
  %138 = load i64, ptr %x3, align 8
  %conv161 = zext i64 %138 to i128
  %mul162 = mul i128 %conv160, %conv161
  store i128 %mul162, ptr %x55, align 16
  %139 = load ptr, ptr %arg1.addr, align 8
  %arrayidx163 = getelementptr inbounds i64, ptr %139, i64 2
  %140 = load i64, ptr %arrayidx163, align 8
  %conv164 = zext i64 %140 to i128
  %141 = load i64, ptr %x9, align 8
  %conv165 = zext i64 %141 to i128
  %mul166 = mul i128 %conv164, %conv165
  store i128 %mul166, ptr %x56, align 16
  %142 = load ptr, ptr %arg1.addr, align 8
  %arrayidx167 = getelementptr inbounds i64, ptr %142, i64 2
  %143 = load i64, ptr %arrayidx167, align 8
  %conv168 = zext i64 %143 to i128
  %144 = load i64, ptr %x8, align 8
  %conv169 = zext i64 %144 to i128
  %mul170 = mul i128 %conv168, %conv169
  store i128 %mul170, ptr %x57, align 16
  %145 = load ptr, ptr %arg1.addr, align 8
  %arrayidx171 = getelementptr inbounds i64, ptr %145, i64 2
  %146 = load i64, ptr %arrayidx171, align 8
  %conv172 = zext i64 %146 to i128
  %147 = load i64, ptr %x15, align 8
  %conv173 = zext i64 %147 to i128
  %mul174 = mul i128 %conv172, %conv173
  store i128 %mul174, ptr %x58, align 16
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx175 = getelementptr inbounds i64, ptr %148, i64 2
  %149 = load i64, ptr %arrayidx175, align 8
  %conv176 = zext i64 %149 to i128
  %150 = load i64, ptr %x18, align 8
  %conv177 = zext i64 %150 to i128
  %mul178 = mul i128 %conv176, %conv177
  store i128 %mul178, ptr %x59, align 16
  %151 = load ptr, ptr %arg1.addr, align 8
  %arrayidx179 = getelementptr inbounds i64, ptr %151, i64 2
  %152 = load i64, ptr %arrayidx179, align 8
  %conv180 = zext i64 %152 to i128
  %153 = load i64, ptr %x19, align 8
  %conv181 = zext i64 %153 to i128
  %mul182 = mul i128 %conv180, %conv181
  store i128 %mul182, ptr %x60, align 16
  %154 = load ptr, ptr %arg1.addr, align 8
  %arrayidx183 = getelementptr inbounds i64, ptr %154, i64 2
  %155 = load i64, ptr %arrayidx183, align 8
  %conv184 = zext i64 %155 to i128
  %156 = load ptr, ptr %arg1.addr, align 8
  %arrayidx185 = getelementptr inbounds i64, ptr %156, i64 2
  %157 = load i64, ptr %arrayidx185, align 8
  %conv186 = zext i64 %157 to i128
  %mul187 = mul i128 %conv184, %conv186
  store i128 %mul187, ptr %x61, align 16
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx188 = getelementptr inbounds i64, ptr %158, i64 1
  %159 = load i64, ptr %arrayidx188, align 8
  %conv189 = zext i64 %159 to i128
  %160 = load i64, ptr %x4, align 8
  %conv190 = zext i64 %160 to i128
  %mul191 = mul i128 %conv189, %conv190
  store i128 %mul191, ptr %x62, align 16
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx192 = getelementptr inbounds i64, ptr %161, i64 1
  %162 = load i64, ptr %arrayidx192, align 8
  %conv193 = zext i64 %162 to i128
  %163 = load i64, ptr %x3, align 8
  %conv194 = zext i64 %163 to i128
  %mul195 = mul i128 %conv193, %conv194
  store i128 %mul195, ptr %x63, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx196 = getelementptr inbounds i64, ptr %164, i64 1
  %165 = load i64, ptr %arrayidx196, align 8
  %conv197 = zext i64 %165 to i128
  %166 = load i64, ptr %x10, align 8
  %conv198 = zext i64 %166 to i128
  %mul199 = mul i128 %conv197, %conv198
  store i128 %mul199, ptr %x64, align 16
  %167 = load ptr, ptr %arg1.addr, align 8
  %arrayidx200 = getelementptr inbounds i64, ptr %167, i64 1
  %168 = load i64, ptr %arrayidx200, align 8
  %conv201 = zext i64 %168 to i128
  %169 = load i64, ptr %x15, align 8
  %conv202 = zext i64 %169 to i128
  %mul203 = mul i128 %conv201, %conv202
  store i128 %mul203, ptr %x65, align 16
  %170 = load ptr, ptr %arg1.addr, align 8
  %arrayidx204 = getelementptr inbounds i64, ptr %170, i64 1
  %171 = load i64, ptr %arrayidx204, align 8
  %conv205 = zext i64 %171 to i128
  %172 = load i64, ptr %x18, align 8
  %conv206 = zext i64 %172 to i128
  %mul207 = mul i128 %conv205, %conv206
  store i128 %mul207, ptr %x66, align 16
  %173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %173, i64 1
  %174 = load i64, ptr %arrayidx208, align 8
  %conv209 = zext i64 %174 to i128
  %175 = load i64, ptr %x19, align 8
  %conv210 = zext i64 %175 to i128
  %mul211 = mul i128 %conv209, %conv210
  store i128 %mul211, ptr %x67, align 16
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx212 = getelementptr inbounds i64, ptr %176, i64 1
  %177 = load i64, ptr %arrayidx212, align 8
  %conv213 = zext i64 %177 to i128
  %178 = load i64, ptr %x20, align 8
  %conv214 = zext i64 %178 to i128
  %mul215 = mul i128 %conv213, %conv214
  store i128 %mul215, ptr %x68, align 16
  %179 = load ptr, ptr %arg1.addr, align 8
  %arrayidx216 = getelementptr inbounds i64, ptr %179, i64 1
  %180 = load i64, ptr %arrayidx216, align 8
  %conv217 = zext i64 %180 to i128
  %181 = load ptr, ptr %arg1.addr, align 8
  %arrayidx218 = getelementptr inbounds i64, ptr %181, i64 1
  %182 = load i64, ptr %arrayidx218, align 8
  %conv219 = zext i64 %182 to i128
  %mul220 = mul i128 %conv217, %conv219
  store i128 %mul220, ptr %x69, align 16
  %183 = load ptr, ptr %arg1.addr, align 8
  %arrayidx221 = getelementptr inbounds i64, ptr %183, i64 0
  %184 = load i64, ptr %arrayidx221, align 8
  %conv222 = zext i64 %184 to i128
  %185 = load i64, ptr %x5, align 8
  %conv223 = zext i64 %185 to i128
  %mul224 = mul i128 %conv222, %conv223
  store i128 %mul224, ptr %x70, align 16
  %186 = load ptr, ptr %arg1.addr, align 8
  %arrayidx225 = getelementptr inbounds i64, ptr %186, i64 0
  %187 = load i64, ptr %arrayidx225, align 8
  %conv226 = zext i64 %187 to i128
  %188 = load i64, ptr %x10, align 8
  %conv227 = zext i64 %188 to i128
  %mul228 = mul i128 %conv226, %conv227
  store i128 %mul228, ptr %x71, align 16
  %189 = load ptr, ptr %arg1.addr, align 8
  %arrayidx229 = getelementptr inbounds i64, ptr %189, i64 0
  %190 = load i64, ptr %arrayidx229, align 8
  %conv230 = zext i64 %190 to i128
  %191 = load i64, ptr %x15, align 8
  %conv231 = zext i64 %191 to i128
  %mul232 = mul i128 %conv230, %conv231
  store i128 %mul232, ptr %x72, align 16
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx233 = getelementptr inbounds i64, ptr %192, i64 0
  %193 = load i64, ptr %arrayidx233, align 8
  %conv234 = zext i64 %193 to i128
  %194 = load i64, ptr %x18, align 8
  %conv235 = zext i64 %194 to i128
  %mul236 = mul i128 %conv234, %conv235
  store i128 %mul236, ptr %x73, align 16
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx237 = getelementptr inbounds i64, ptr %195, i64 0
  %196 = load i64, ptr %arrayidx237, align 8
  %conv238 = zext i64 %196 to i128
  %197 = load i64, ptr %x19, align 8
  %conv239 = zext i64 %197 to i128
  %mul240 = mul i128 %conv238, %conv239
  store i128 %mul240, ptr %x74, align 16
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx241 = getelementptr inbounds i64, ptr %198, i64 0
  %199 = load i64, ptr %arrayidx241, align 8
  %conv242 = zext i64 %199 to i128
  %200 = load i64, ptr %x20, align 8
  %conv243 = zext i64 %200 to i128
  %mul244 = mul i128 %conv242, %conv243
  store i128 %mul244, ptr %x75, align 16
  %201 = load ptr, ptr %arg1.addr, align 8
  %arrayidx245 = getelementptr inbounds i64, ptr %201, i64 0
  %202 = load i64, ptr %arrayidx245, align 8
  %conv246 = zext i64 %202 to i128
  %203 = load i64, ptr %x21, align 8
  %conv247 = zext i64 %203 to i128
  %mul248 = mul i128 %conv246, %conv247
  store i128 %mul248, ptr %x76, align 16
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx249 = getelementptr inbounds i64, ptr %204, i64 0
  %205 = load i64, ptr %arrayidx249, align 8
  %conv250 = zext i64 %205 to i128
  %206 = load ptr, ptr %arg1.addr, align 8
  %arrayidx251 = getelementptr inbounds i64, ptr %206, i64 0
  %207 = load i64, ptr %arrayidx251, align 8
  %conv252 = zext i64 %207 to i128
  %mul253 = mul i128 %conv250, %conv252
  store i128 %mul253, ptr %x77, align 16
  %208 = load i128, ptr %x74, align 16
  %209 = load i128, ptr %x68, align 16
  %210 = load i128, ptr %x38, align 16
  %211 = load i128, ptr %x34, align 16
  %add = add i128 %210, %211
  %add254 = add i128 %209, %add
  %add255 = add i128 %208, %add254
  store i128 %add255, ptr %x78, align 16
  %212 = load i128, ptr %x78, align 16
  %shr = lshr i128 %212, 56
  %conv256 = trunc i128 %shr to i64
  store i64 %conv256, ptr %x79, align 8
  %213 = load i128, ptr %x78, align 16
  %and = and i128 %213, 72057594037927935
  %conv257 = trunc i128 %and to i64
  store i64 %conv257, ptr %x80, align 8
  %214 = load i128, ptr %x70, align 16
  %215 = load i128, ptr %x64, align 16
  %216 = load i128, ptr %x58, align 16
  %217 = load i128, ptr %x52, align 16
  %218 = load i128, ptr %x39, align 16
  %219 = load i128, ptr %x35, align 16
  %add258 = add i128 %218, %219
  %add259 = add i128 %217, %add258
  %add260 = add i128 %216, %add259
  %add261 = add i128 %215, %add260
  %add262 = add i128 %214, %add261
  store i128 %add262, ptr %x81, align 16
  %220 = load i128, ptr %x71, align 16
  %221 = load i128, ptr %x65, align 16
  %222 = load i128, ptr %x59, align 16
  %223 = load i128, ptr %x53, align 16
  %224 = load i128, ptr %x47, align 16
  %225 = load i128, ptr %x41, align 16
  %226 = load i128, ptr %x37, align 16
  %227 = load i128, ptr %x30, align 16
  %228 = load i128, ptr %x26, align 16
  %add263 = add i128 %227, %228
  %add264 = add i128 %226, %add263
  %add265 = add i128 %225, %add264
  %add266 = add i128 %224, %add265
  %add267 = add i128 %223, %add266
  %add268 = add i128 %222, %add267
  %add269 = add i128 %221, %add268
  %add270 = add i128 %220, %add269
  store i128 %add270, ptr %x82, align 16
  %229 = load i128, ptr %x72, align 16
  %230 = load i128, ptr %x66, align 16
  %231 = load i128, ptr %x60, align 16
  %232 = load i128, ptr %x55, align 16
  %233 = load i128, ptr %x49, align 16
  %234 = load i128, ptr %x43, align 16
  %235 = load i128, ptr %x31, align 16
  %236 = load i128, ptr %x27, align 16
  %add271 = add i128 %235, %236
  %add272 = add i128 %234, %add271
  %add273 = add i128 %233, %add272
  %add274 = add i128 %232, %add273
  %add275 = add i128 %231, %add274
  %add276 = add i128 %230, %add275
  %add277 = add i128 %229, %add276
  store i128 %add277, ptr %x83, align 16
  %237 = load i128, ptr %x73, align 16
  %238 = load i128, ptr %x67, align 16
  %239 = load i128, ptr %x63, align 16
  %240 = load i128, ptr %x61, align 16
  %241 = load i128, ptr %x57, align 16
  %242 = load i128, ptr %x51, align 16
  %243 = load i128, ptr %x45, align 16
  %244 = load i128, ptr %x33, align 16
  %245 = load i128, ptr %x32, align 16
  %246 = load i128, ptr %x29, align 16
  %247 = load i128, ptr %x28, align 16
  %add278 = add i128 %246, %247
  %add279 = add i128 %245, %add278
  %add280 = add i128 %244, %add279
  %add281 = add i128 %243, %add280
  %add282 = add i128 %242, %add281
  %add283 = add i128 %241, %add282
  %add284 = add i128 %240, %add283
  %add285 = add i128 %239, %add284
  %add286 = add i128 %238, %add285
  %add287 = add i128 %237, %add286
  store i128 %add287, ptr %x84, align 16
  %248 = load i128, ptr %x75, align 16
  %249 = load i128, ptr %x69, align 16
  %250 = load i128, ptr %x46, align 16
  %251 = load i128, ptr %x40, align 16
  %252 = load i128, ptr %x36, align 16
  %253 = load i128, ptr %x22, align 16
  %add288 = add i128 %252, %253
  %add289 = add i128 %251, %add288
  %add290 = add i128 %250, %add289
  %add291 = add i128 %249, %add290
  %add292 = add i128 %248, %add291
  store i128 %add292, ptr %x85, align 16
  %254 = load i128, ptr %x76, align 16
  %255 = load i128, ptr %x54, align 16
  %256 = load i128, ptr %x48, align 16
  %257 = load i128, ptr %x42, align 16
  %258 = load i128, ptr %x23, align 16
  %add293 = add i128 %257, %258
  %add294 = add i128 %256, %add293
  %add295 = add i128 %255, %add294
  %add296 = add i128 %254, %add295
  store i128 %add296, ptr %x86, align 16
  %259 = load i128, ptr %x77, align 16
  %260 = load i128, ptr %x62, align 16
  %261 = load i128, ptr %x56, align 16
  %262 = load i128, ptr %x50, align 16
  %263 = load i128, ptr %x44, align 16
  %264 = load i128, ptr %x25, align 16
  %265 = load i128, ptr %x24, align 16
  %add297 = add i128 %264, %265
  %add298 = add i128 %263, %add297
  %add299 = add i128 %262, %add298
  %add300 = add i128 %261, %add299
  %add301 = add i128 %260, %add300
  %add302 = add i128 %259, %add301
  store i128 %add302, ptr %x87, align 16
  %266 = load i64, ptr %x79, align 8
  %conv303 = zext i64 %266 to i128
  %267 = load i128, ptr %x84, align 16
  %add304 = add i128 %conv303, %267
  store i128 %add304, ptr %x88, align 16
  %268 = load i128, ptr %x81, align 16
  %shr305 = lshr i128 %268, 56
  %conv306 = trunc i128 %shr305 to i64
  store i64 %conv306, ptr %x89, align 8
  %269 = load i128, ptr %x81, align 16
  %and307 = and i128 %269, 72057594037927935
  %conv308 = trunc i128 %and307 to i64
  store i64 %conv308, ptr %x90, align 8
  %270 = load i128, ptr %x88, align 16
  %271 = load i64, ptr %x89, align 8
  %conv309 = zext i64 %271 to i128
  %add310 = add i128 %270, %conv309
  store i128 %add310, ptr %x91, align 16
  %272 = load i128, ptr %x91, align 16
  %shr311 = lshr i128 %272, 56
  %conv312 = trunc i128 %shr311 to i64
  store i64 %conv312, ptr %x92, align 8
  %273 = load i128, ptr %x91, align 16
  %and313 = and i128 %273, 72057594037927935
  %conv314 = trunc i128 %and313 to i64
  store i64 %conv314, ptr %x93, align 8
  %274 = load i128, ptr %x87, align 16
  %275 = load i64, ptr %x89, align 8
  %conv315 = zext i64 %275 to i128
  %add316 = add i128 %274, %conv315
  store i128 %add316, ptr %x94, align 16
  %276 = load i64, ptr %x92, align 8
  %conv317 = zext i64 %276 to i128
  %277 = load i128, ptr %x83, align 16
  %add318 = add i128 %conv317, %277
  store i128 %add318, ptr %x95, align 16
  %278 = load i128, ptr %x94, align 16
  %shr319 = lshr i128 %278, 56
  %conv320 = trunc i128 %shr319 to i64
  store i64 %conv320, ptr %x96, align 8
  %279 = load i128, ptr %x94, align 16
  %and321 = and i128 %279, 72057594037927935
  %conv322 = trunc i128 %and321 to i64
  store i64 %conv322, ptr %x97, align 8
  %280 = load i64, ptr %x96, align 8
  %conv323 = zext i64 %280 to i128
  %281 = load i128, ptr %x86, align 16
  %add324 = add i128 %conv323, %281
  store i128 %add324, ptr %x98, align 16
  %282 = load i128, ptr %x95, align 16
  %shr325 = lshr i128 %282, 56
  %conv326 = trunc i128 %shr325 to i64
  store i64 %conv326, ptr %x99, align 8
  %283 = load i128, ptr %x95, align 16
  %and327 = and i128 %283, 72057594037927935
  %conv328 = trunc i128 %and327 to i64
  store i64 %conv328, ptr %x100, align 8
  %284 = load i64, ptr %x99, align 8
  %conv329 = zext i64 %284 to i128
  %285 = load i128, ptr %x82, align 16
  %add330 = add i128 %conv329, %285
  store i128 %add330, ptr %x101, align 16
  %286 = load i128, ptr %x98, align 16
  %shr331 = lshr i128 %286, 56
  %conv332 = trunc i128 %shr331 to i64
  store i64 %conv332, ptr %x102, align 8
  %287 = load i128, ptr %x98, align 16
  %and333 = and i128 %287, 72057594037927935
  %conv334 = trunc i128 %and333 to i64
  store i64 %conv334, ptr %x103, align 8
  %288 = load i64, ptr %x102, align 8
  %conv335 = zext i64 %288 to i128
  %289 = load i128, ptr %x85, align 16
  %add336 = add i128 %conv335, %289
  store i128 %add336, ptr %x104, align 16
  %290 = load i128, ptr %x101, align 16
  %shr337 = lshr i128 %290, 56
  %conv338 = trunc i128 %shr337 to i64
  store i64 %conv338, ptr %x105, align 8
  %291 = load i128, ptr %x101, align 16
  %and339 = and i128 %291, 72057594037927935
  %conv340 = trunc i128 %and339 to i64
  store i64 %conv340, ptr %x106, align 8
  %292 = load i64, ptr %x105, align 8
  %293 = load i64, ptr %x90, align 8
  %add341 = add i64 %292, %293
  store i64 %add341, ptr %x107, align 8
  %294 = load i128, ptr %x104, align 16
  %shr342 = lshr i128 %294, 56
  %conv343 = trunc i128 %shr342 to i64
  store i64 %conv343, ptr %x108, align 8
  %295 = load i128, ptr %x104, align 16
  %and344 = and i128 %295, 72057594037927935
  %conv345 = trunc i128 %and344 to i64
  store i64 %conv345, ptr %x109, align 8
  %296 = load i64, ptr %x108, align 8
  %297 = load i64, ptr %x80, align 8
  %add346 = add i64 %296, %297
  store i64 %add346, ptr %x110, align 8
  %298 = load i64, ptr %x107, align 8
  %shr347 = lshr i64 %298, 56
  store i64 %shr347, ptr %x111, align 8
  %299 = load i64, ptr %x107, align 8
  %and348 = and i64 %299, 72057594037927935
  store i64 %and348, ptr %x112, align 8
  %300 = load i64, ptr %x110, align 8
  %shr349 = lshr i64 %300, 56
  store i64 %shr349, ptr %x113, align 8
  %301 = load i64, ptr %x110, align 8
  %and350 = and i64 %301, 72057594037927935
  store i64 %and350, ptr %x114, align 8
  %302 = load i64, ptr %x93, align 8
  %303 = load i64, ptr %x111, align 8
  %add351 = add i64 %302, %303
  store i64 %add351, ptr %x115, align 8
  %304 = load i64, ptr %x97, align 8
  %305 = load i64, ptr %x111, align 8
  %add352 = add i64 %304, %305
  store i64 %add352, ptr %x116, align 8
  %306 = load i64, ptr %x113, align 8
  %307 = load i64, ptr %x115, align 8
  %add353 = add i64 %306, %307
  store i64 %add353, ptr %x117, align 8
  %308 = load i64, ptr %x117, align 8
  %shr354 = lshr i64 %308, 56
  %conv355 = trunc i64 %shr354 to i8
  store i8 %conv355, ptr %x118, align 1
  %309 = load i64, ptr %x117, align 8
  %and356 = and i64 %309, 72057594037927935
  store i64 %and356, ptr %x119, align 8
  %310 = load i8, ptr %x118, align 1
  %conv357 = zext i8 %310 to i64
  %311 = load i64, ptr %x100, align 8
  %add358 = add i64 %conv357, %311
  store i64 %add358, ptr %x120, align 8
  %312 = load i64, ptr %x116, align 8
  %shr359 = lshr i64 %312, 56
  %conv360 = trunc i64 %shr359 to i8
  store i8 %conv360, ptr %x121, align 1
  %313 = load i64, ptr %x116, align 8
  %and361 = and i64 %313, 72057594037927935
  store i64 %and361, ptr %x122, align 8
  %314 = load i8, ptr %x121, align 1
  %conv362 = zext i8 %314 to i64
  %315 = load i64, ptr %x103, align 8
  %add363 = add i64 %conv362, %315
  store i64 %add363, ptr %x123, align 8
  %316 = load i64, ptr %x122, align 8
  %317 = load ptr, ptr %out1.addr, align 8
  %arrayidx364 = getelementptr inbounds i64, ptr %317, i64 0
  store i64 %316, ptr %arrayidx364, align 8
  %318 = load i64, ptr %x123, align 8
  %319 = load ptr, ptr %out1.addr, align 8
  %arrayidx365 = getelementptr inbounds i64, ptr %319, i64 1
  store i64 %318, ptr %arrayidx365, align 8
  %320 = load i64, ptr %x109, align 8
  %321 = load ptr, ptr %out1.addr, align 8
  %arrayidx366 = getelementptr inbounds i64, ptr %321, i64 2
  store i64 %320, ptr %arrayidx366, align 8
  %322 = load i64, ptr %x114, align 8
  %323 = load ptr, ptr %out1.addr, align 8
  %arrayidx367 = getelementptr inbounds i64, ptr %323, i64 3
  store i64 %322, ptr %arrayidx367, align 8
  %324 = load i64, ptr %x119, align 8
  %325 = load ptr, ptr %out1.addr, align 8
  %arrayidx368 = getelementptr inbounds i64, ptr %325, i64 4
  store i64 %324, ptr %arrayidx368, align 8
  %326 = load i64, ptr %x120, align 8
  %327 = load ptr, ptr %out1.addr, align 8
  %arrayidx369 = getelementptr inbounds i64, ptr %327, i64 5
  store i64 %326, ptr %arrayidx369, align 8
  %328 = load i64, ptr %x106, align 8
  %329 = load ptr, ptr %out1.addr, align 8
  %arrayidx370 = getelementptr inbounds i64, ptr %329, i64 6
  store i64 %328, ptr %arrayidx370, align 8
  %330 = load i64, ptr %x112, align 8
  %331 = load ptr, ptr %out1.addr, align 8
  %arrayidx371 = getelementptr inbounds i64, ptr %331, i64 7
  store i64 %330, ptr %arrayidx371, align 8
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
