; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x79 = alloca i128, align 16
  %x80 = alloca i128, align 16
  %x81 = alloca i128, align 16
  %x82 = alloca i128, align 16
  %x83 = alloca i128, align 16
  %x84 = alloca i64, align 8
  %x85 = alloca i128, align 16
  %x86 = alloca i128, align 16
  %x87 = alloca i128, align 16
  %x88 = alloca i128, align 16
  %x89 = alloca i128, align 16
  %x90 = alloca i128, align 16
  %x91 = alloca i128, align 16
  %x92 = alloca i128, align 16
  %x93 = alloca i128, align 16
  %x94 = alloca i128, align 16
  %x95 = alloca i64, align 8
  %x96 = alloca i128, align 16
  %x97 = alloca i128, align 16
  %x98 = alloca i64, align 8
  %x99 = alloca i128, align 16
  %x100 = alloca i128, align 16
  %x101 = alloca i64, align 8
  %x102 = alloca i128, align 16
  %x103 = alloca i128, align 16
  %x104 = alloca i64, align 8
  %x105 = alloca i128, align 16
  %x106 = alloca i128, align 16
  %x107 = alloca i64, align 8
  %x108 = alloca i128, align 16
  %x109 = alloca i128, align 16
  %x110 = alloca i64, align 8
  %x111 = alloca i128, align 16
  %x112 = alloca i128, align 16
  %x113 = alloca i64, align 8
  %x114 = alloca i128, align 16
  %x115 = alloca i128, align 16
  %x116 = alloca i64, align 8
  %x117 = alloca i128, align 16
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 8
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 8
  %3 = load i64, ptr %arrayidx1, align 8
  %mul = mul i64 %3, 2
  %conv2 = zext i64 %mul to i128
  %mul3 = mul i128 %conv, %conv2
  store i128 %mul3, ptr %x1, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 8
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 7
  %7 = load i64, ptr %arrayidx6, align 8
  %mul7 = mul i64 %7, 2
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul i128 %conv5, %conv8
  store i128 %mul9, ptr %x2, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 8
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx12, align 8
  %mul13 = mul i64 %11, 2
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul i128 %conv11, %conv14
  store i128 %mul15, ptr %x3, align 16
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %12, i64 8
  %13 = load i64, ptr %arrayidx16, align 8
  %conv17 = zext i64 %13 to i128
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %14, i64 5
  %15 = load i64, ptr %arrayidx18, align 8
  %mul19 = mul i64 %15, 2
  %conv20 = zext i64 %mul19 to i128
  %mul21 = mul i128 %conv17, %conv20
  store i128 %mul21, ptr %x4, align 16
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %16, i64 8
  %17 = load i64, ptr %arrayidx22, align 8
  %conv23 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx24, align 8
  %mul25 = mul i64 %19, 2
  %conv26 = zext i64 %mul25 to i128
  %mul27 = mul i128 %conv23, %conv26
  store i128 %mul27, ptr %x5, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %20, i64 8
  %21 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %21 to i128
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %22, i64 3
  %23 = load i64, ptr %arrayidx30, align 8
  %mul31 = mul i64 %23, 2
  %conv32 = zext i64 %mul31 to i128
  %mul33 = mul i128 %conv29, %conv32
  store i128 %mul33, ptr %x6, align 16
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %24, i64 8
  %25 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %26, i64 2
  %27 = load i64, ptr %arrayidx36, align 8
  %mul37 = mul i64 %27, 2
  %conv38 = zext i64 %mul37 to i128
  %mul39 = mul i128 %conv35, %conv38
  store i128 %mul39, ptr %x7, align 16
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %28, i64 8
  %29 = load i64, ptr %arrayidx40, align 8
  %conv41 = zext i64 %29 to i128
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %30, i64 1
  %31 = load i64, ptr %arrayidx42, align 8
  %mul43 = mul i64 %31, 2
  %conv44 = zext i64 %mul43 to i128
  %mul45 = mul i128 %conv41, %conv44
  store i128 %mul45, ptr %x8, align 16
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %32, i64 7
  %33 = load i64, ptr %arrayidx46, align 8
  %conv47 = zext i64 %33 to i128
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %34, i64 8
  %35 = load i64, ptr %arrayidx48, align 8
  %mul49 = mul i64 %35, 2
  %conv50 = zext i64 %mul49 to i128
  %mul51 = mul i128 %conv47, %conv50
  store i128 %mul51, ptr %x9, align 16
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %37 to i128
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %38, i64 7
  %39 = load i64, ptr %arrayidx54, align 8
  %mul55 = mul i64 %39, 2
  %conv56 = zext i64 %mul55 to i128
  %mul57 = mul i128 %conv53, %conv56
  store i128 %mul57, ptr %x10, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %40, i64 7
  %41 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %42, i64 6
  %43 = load i64, ptr %arrayidx60, align 8
  %mul61 = mul i64 %43, 2
  %conv62 = zext i64 %mul61 to i128
  %mul63 = mul i128 %conv59, %conv62
  store i128 %mul63, ptr %x11, align 16
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %44, i64 7
  %45 = load i64, ptr %arrayidx64, align 8
  %conv65 = zext i64 %45 to i128
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %46, i64 5
  %47 = load i64, ptr %arrayidx66, align 8
  %mul67 = mul i64 %47, 2
  %conv68 = zext i64 %mul67 to i128
  %mul69 = mul i128 %conv65, %conv68
  store i128 %mul69, ptr %x12, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %48, i64 7
  %49 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %50, i64 4
  %51 = load i64, ptr %arrayidx72, align 8
  %mul73 = mul i64 %51, 2
  %conv74 = zext i64 %mul73 to i128
  %mul75 = mul i128 %conv71, %conv74
  store i128 %mul75, ptr %x13, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %52, i64 7
  %53 = load i64, ptr %arrayidx76, align 8
  %conv77 = zext i64 %53 to i128
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %54, i64 3
  %55 = load i64, ptr %arrayidx78, align 8
  %mul79 = mul i64 %55, 2
  %conv80 = zext i64 %mul79 to i128
  %mul81 = mul i128 %conv77, %conv80
  store i128 %mul81, ptr %x14, align 16
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %56, i64 7
  %57 = load i64, ptr %arrayidx82, align 8
  %conv83 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %58, i64 2
  %59 = load i64, ptr %arrayidx84, align 8
  %mul85 = mul i64 %59, 2
  %conv86 = zext i64 %mul85 to i128
  %mul87 = mul i128 %conv83, %conv86
  store i128 %mul87, ptr %x15, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %60, i64 6
  %61 = load i64, ptr %arrayidx88, align 8
  %conv89 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %62, i64 8
  %63 = load i64, ptr %arrayidx90, align 8
  %mul91 = mul i64 %63, 2
  %conv92 = zext i64 %mul91 to i128
  %mul93 = mul i128 %conv89, %conv92
  store i128 %mul93, ptr %x16, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, ptr %64, i64 6
  %65 = load i64, ptr %arrayidx94, align 8
  %conv95 = zext i64 %65 to i128
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx96 = getelementptr inbounds i64, ptr %66, i64 7
  %67 = load i64, ptr %arrayidx96, align 8
  %mul97 = mul i64 %67, 2
  %conv98 = zext i64 %mul97 to i128
  %mul99 = mul i128 %conv95, %conv98
  store i128 %mul99, ptr %x17, align 16
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %68, i64 6
  %69 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %69 to i128
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %70, i64 6
  %71 = load i64, ptr %arrayidx102, align 8
  %mul103 = mul i64 %71, 2
  %conv104 = zext i64 %mul103 to i128
  %mul105 = mul i128 %conv101, %conv104
  store i128 %mul105, ptr %x18, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %72, i64 6
  %73 = load i64, ptr %arrayidx106, align 8
  %conv107 = zext i64 %73 to i128
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %74, i64 5
  %75 = load i64, ptr %arrayidx108, align 8
  %mul109 = mul i64 %75, 2
  %conv110 = zext i64 %mul109 to i128
  %mul111 = mul i128 %conv107, %conv110
  store i128 %mul111, ptr %x19, align 16
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %76, i64 6
  %77 = load i64, ptr %arrayidx112, align 8
  %conv113 = zext i64 %77 to i128
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %78, i64 4
  %79 = load i64, ptr %arrayidx114, align 8
  %mul115 = mul i64 %79, 2
  %conv116 = zext i64 %mul115 to i128
  %mul117 = mul i128 %conv113, %conv116
  store i128 %mul117, ptr %x20, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %80, i64 6
  %81 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %81 to i128
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %82, i64 3
  %83 = load i64, ptr %arrayidx120, align 8
  %mul121 = mul i64 %83, 2
  %conv122 = zext i64 %mul121 to i128
  %mul123 = mul i128 %conv119, %conv122
  store i128 %mul123, ptr %x21, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx124 = getelementptr inbounds i64, ptr %84, i64 5
  %85 = load i64, ptr %arrayidx124, align 8
  %conv125 = zext i64 %85 to i128
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %86, i64 8
  %87 = load i64, ptr %arrayidx126, align 8
  %mul127 = mul i64 %87, 2
  %conv128 = zext i64 %mul127 to i128
  %mul129 = mul i128 %conv125, %conv128
  store i128 %mul129, ptr %x22, align 16
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %88, i64 5
  %89 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %89 to i128
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx132 = getelementptr inbounds i64, ptr %90, i64 7
  %91 = load i64, ptr %arrayidx132, align 8
  %mul133 = mul i64 %91, 2
  %conv134 = zext i64 %mul133 to i128
  %mul135 = mul i128 %conv131, %conv134
  store i128 %mul135, ptr %x23, align 16
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx136 = getelementptr inbounds i64, ptr %92, i64 5
  %93 = load i64, ptr %arrayidx136, align 8
  %conv137 = zext i64 %93 to i128
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %94, i64 6
  %95 = load i64, ptr %arrayidx138, align 8
  %mul139 = mul i64 %95, 2
  %conv140 = zext i64 %mul139 to i128
  %mul141 = mul i128 %conv137, %conv140
  store i128 %mul141, ptr %x24, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i64, ptr %96, i64 5
  %97 = load i64, ptr %arrayidx142, align 8
  %conv143 = zext i64 %97 to i128
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx144 = getelementptr inbounds i64, ptr %98, i64 5
  %99 = load i64, ptr %arrayidx144, align 8
  %mul145 = mul i64 %99, 2
  %conv146 = zext i64 %mul145 to i128
  %mul147 = mul i128 %conv143, %conv146
  store i128 %mul147, ptr %x25, align 16
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx148 = getelementptr inbounds i64, ptr %100, i64 5
  %101 = load i64, ptr %arrayidx148, align 8
  %conv149 = zext i64 %101 to i128
  %102 = load ptr, ptr %arg2.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %102, i64 4
  %103 = load i64, ptr %arrayidx150, align 8
  %mul151 = mul i64 %103, 2
  %conv152 = zext i64 %mul151 to i128
  %mul153 = mul i128 %conv149, %conv152
  store i128 %mul153, ptr %x26, align 16
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx154 = getelementptr inbounds i64, ptr %104, i64 4
  %105 = load i64, ptr %arrayidx154, align 8
  %conv155 = zext i64 %105 to i128
  %106 = load ptr, ptr %arg2.addr, align 8
  %arrayidx156 = getelementptr inbounds i64, ptr %106, i64 8
  %107 = load i64, ptr %arrayidx156, align 8
  %mul157 = mul i64 %107, 2
  %conv158 = zext i64 %mul157 to i128
  %mul159 = mul i128 %conv155, %conv158
  store i128 %mul159, ptr %x27, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i64, ptr %108, i64 4
  %109 = load i64, ptr %arrayidx160, align 8
  %conv161 = zext i64 %109 to i128
  %110 = load ptr, ptr %arg2.addr, align 8
  %arrayidx162 = getelementptr inbounds i64, ptr %110, i64 7
  %111 = load i64, ptr %arrayidx162, align 8
  %mul163 = mul i64 %111, 2
  %conv164 = zext i64 %mul163 to i128
  %mul165 = mul i128 %conv161, %conv164
  store i128 %mul165, ptr %x28, align 16
  %112 = load ptr, ptr %arg1.addr, align 8
  %arrayidx166 = getelementptr inbounds i64, ptr %112, i64 4
  %113 = load i64, ptr %arrayidx166, align 8
  %conv167 = zext i64 %113 to i128
  %114 = load ptr, ptr %arg2.addr, align 8
  %arrayidx168 = getelementptr inbounds i64, ptr %114, i64 6
  %115 = load i64, ptr %arrayidx168, align 8
  %mul169 = mul i64 %115, 2
  %conv170 = zext i64 %mul169 to i128
  %mul171 = mul i128 %conv167, %conv170
  store i128 %mul171, ptr %x29, align 16
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx172 = getelementptr inbounds i64, ptr %116, i64 4
  %117 = load i64, ptr %arrayidx172, align 8
  %conv173 = zext i64 %117 to i128
  %118 = load ptr, ptr %arg2.addr, align 8
  %arrayidx174 = getelementptr inbounds i64, ptr %118, i64 5
  %119 = load i64, ptr %arrayidx174, align 8
  %mul175 = mul i64 %119, 2
  %conv176 = zext i64 %mul175 to i128
  %mul177 = mul i128 %conv173, %conv176
  store i128 %mul177, ptr %x30, align 16
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx178 = getelementptr inbounds i64, ptr %120, i64 3
  %121 = load i64, ptr %arrayidx178, align 8
  %conv179 = zext i64 %121 to i128
  %122 = load ptr, ptr %arg2.addr, align 8
  %arrayidx180 = getelementptr inbounds i64, ptr %122, i64 8
  %123 = load i64, ptr %arrayidx180, align 8
  %mul181 = mul i64 %123, 2
  %conv182 = zext i64 %mul181 to i128
  %mul183 = mul i128 %conv179, %conv182
  store i128 %mul183, ptr %x31, align 16
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx184 = getelementptr inbounds i64, ptr %124, i64 3
  %125 = load i64, ptr %arrayidx184, align 8
  %conv185 = zext i64 %125 to i128
  %126 = load ptr, ptr %arg2.addr, align 8
  %arrayidx186 = getelementptr inbounds i64, ptr %126, i64 7
  %127 = load i64, ptr %arrayidx186, align 8
  %mul187 = mul i64 %127, 2
  %conv188 = zext i64 %mul187 to i128
  %mul189 = mul i128 %conv185, %conv188
  store i128 %mul189, ptr %x32, align 16
  %128 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %128, i64 3
  %129 = load i64, ptr %arrayidx190, align 8
  %conv191 = zext i64 %129 to i128
  %130 = load ptr, ptr %arg2.addr, align 8
  %arrayidx192 = getelementptr inbounds i64, ptr %130, i64 6
  %131 = load i64, ptr %arrayidx192, align 8
  %mul193 = mul i64 %131, 2
  %conv194 = zext i64 %mul193 to i128
  %mul195 = mul i128 %conv191, %conv194
  store i128 %mul195, ptr %x33, align 16
  %132 = load ptr, ptr %arg1.addr, align 8
  %arrayidx196 = getelementptr inbounds i64, ptr %132, i64 2
  %133 = load i64, ptr %arrayidx196, align 8
  %conv197 = zext i64 %133 to i128
  %134 = load ptr, ptr %arg2.addr, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %134, i64 8
  %135 = load i64, ptr %arrayidx198, align 8
  %mul199 = mul i64 %135, 2
  %conv200 = zext i64 %mul199 to i128
  %mul201 = mul i128 %conv197, %conv200
  store i128 %mul201, ptr %x34, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx202 = getelementptr inbounds i64, ptr %136, i64 2
  %137 = load i64, ptr %arrayidx202, align 8
  %conv203 = zext i64 %137 to i128
  %138 = load ptr, ptr %arg2.addr, align 8
  %arrayidx204 = getelementptr inbounds i64, ptr %138, i64 7
  %139 = load i64, ptr %arrayidx204, align 8
  %mul205 = mul i64 %139, 2
  %conv206 = zext i64 %mul205 to i128
  %mul207 = mul i128 %conv203, %conv206
  store i128 %mul207, ptr %x35, align 16
  %140 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %140, i64 1
  %141 = load i64, ptr %arrayidx208, align 8
  %conv209 = zext i64 %141 to i128
  %142 = load ptr, ptr %arg2.addr, align 8
  %arrayidx210 = getelementptr inbounds i64, ptr %142, i64 8
  %143 = load i64, ptr %arrayidx210, align 8
  %mul211 = mul i64 %143, 2
  %conv212 = zext i64 %mul211 to i128
  %mul213 = mul i128 %conv209, %conv212
  store i128 %mul213, ptr %x36, align 16
  %144 = load ptr, ptr %arg1.addr, align 8
  %arrayidx214 = getelementptr inbounds i64, ptr %144, i64 8
  %145 = load i64, ptr %arrayidx214, align 8
  %conv215 = zext i64 %145 to i128
  %146 = load ptr, ptr %arg2.addr, align 8
  %arrayidx216 = getelementptr inbounds i64, ptr %146, i64 0
  %147 = load i64, ptr %arrayidx216, align 8
  %conv217 = zext i64 %147 to i128
  %mul218 = mul i128 %conv215, %conv217
  store i128 %mul218, ptr %x37, align 16
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx219 = getelementptr inbounds i64, ptr %148, i64 7
  %149 = load i64, ptr %arrayidx219, align 8
  %conv220 = zext i64 %149 to i128
  %150 = load ptr, ptr %arg2.addr, align 8
  %arrayidx221 = getelementptr inbounds i64, ptr %150, i64 1
  %151 = load i64, ptr %arrayidx221, align 8
  %conv222 = zext i64 %151 to i128
  %mul223 = mul i128 %conv220, %conv222
  store i128 %mul223, ptr %x38, align 16
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx224 = getelementptr inbounds i64, ptr %152, i64 7
  %153 = load i64, ptr %arrayidx224, align 8
  %conv225 = zext i64 %153 to i128
  %154 = load ptr, ptr %arg2.addr, align 8
  %arrayidx226 = getelementptr inbounds i64, ptr %154, i64 0
  %155 = load i64, ptr %arrayidx226, align 8
  %conv227 = zext i64 %155 to i128
  %mul228 = mul i128 %conv225, %conv227
  store i128 %mul228, ptr %x39, align 16
  %156 = load ptr, ptr %arg1.addr, align 8
  %arrayidx229 = getelementptr inbounds i64, ptr %156, i64 6
  %157 = load i64, ptr %arrayidx229, align 8
  %conv230 = zext i64 %157 to i128
  %158 = load ptr, ptr %arg2.addr, align 8
  %arrayidx231 = getelementptr inbounds i64, ptr %158, i64 2
  %159 = load i64, ptr %arrayidx231, align 8
  %conv232 = zext i64 %159 to i128
  %mul233 = mul i128 %conv230, %conv232
  store i128 %mul233, ptr %x40, align 16
  %160 = load ptr, ptr %arg1.addr, align 8
  %arrayidx234 = getelementptr inbounds i64, ptr %160, i64 6
  %161 = load i64, ptr %arrayidx234, align 8
  %conv235 = zext i64 %161 to i128
  %162 = load ptr, ptr %arg2.addr, align 8
  %arrayidx236 = getelementptr inbounds i64, ptr %162, i64 1
  %163 = load i64, ptr %arrayidx236, align 8
  %conv237 = zext i64 %163 to i128
  %mul238 = mul i128 %conv235, %conv237
  store i128 %mul238, ptr %x41, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx239 = getelementptr inbounds i64, ptr %164, i64 6
  %165 = load i64, ptr %arrayidx239, align 8
  %conv240 = zext i64 %165 to i128
  %166 = load ptr, ptr %arg2.addr, align 8
  %arrayidx241 = getelementptr inbounds i64, ptr %166, i64 0
  %167 = load i64, ptr %arrayidx241, align 8
  %conv242 = zext i64 %167 to i128
  %mul243 = mul i128 %conv240, %conv242
  store i128 %mul243, ptr %x42, align 16
  %168 = load ptr, ptr %arg1.addr, align 8
  %arrayidx244 = getelementptr inbounds i64, ptr %168, i64 5
  %169 = load i64, ptr %arrayidx244, align 8
  %conv245 = zext i64 %169 to i128
  %170 = load ptr, ptr %arg2.addr, align 8
  %arrayidx246 = getelementptr inbounds i64, ptr %170, i64 3
  %171 = load i64, ptr %arrayidx246, align 8
  %conv247 = zext i64 %171 to i128
  %mul248 = mul i128 %conv245, %conv247
  store i128 %mul248, ptr %x43, align 16
  %172 = load ptr, ptr %arg1.addr, align 8
  %arrayidx249 = getelementptr inbounds i64, ptr %172, i64 5
  %173 = load i64, ptr %arrayidx249, align 8
  %conv250 = zext i64 %173 to i128
  %174 = load ptr, ptr %arg2.addr, align 8
  %arrayidx251 = getelementptr inbounds i64, ptr %174, i64 2
  %175 = load i64, ptr %arrayidx251, align 8
  %conv252 = zext i64 %175 to i128
  %mul253 = mul i128 %conv250, %conv252
  store i128 %mul253, ptr %x44, align 16
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx254 = getelementptr inbounds i64, ptr %176, i64 5
  %177 = load i64, ptr %arrayidx254, align 8
  %conv255 = zext i64 %177 to i128
  %178 = load ptr, ptr %arg2.addr, align 8
  %arrayidx256 = getelementptr inbounds i64, ptr %178, i64 1
  %179 = load i64, ptr %arrayidx256, align 8
  %conv257 = zext i64 %179 to i128
  %mul258 = mul i128 %conv255, %conv257
  store i128 %mul258, ptr %x45, align 16
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx259 = getelementptr inbounds i64, ptr %180, i64 5
  %181 = load i64, ptr %arrayidx259, align 8
  %conv260 = zext i64 %181 to i128
  %182 = load ptr, ptr %arg2.addr, align 8
  %arrayidx261 = getelementptr inbounds i64, ptr %182, i64 0
  %183 = load i64, ptr %arrayidx261, align 8
  %conv262 = zext i64 %183 to i128
  %mul263 = mul i128 %conv260, %conv262
  store i128 %mul263, ptr %x46, align 16
  %184 = load ptr, ptr %arg1.addr, align 8
  %arrayidx264 = getelementptr inbounds i64, ptr %184, i64 4
  %185 = load i64, ptr %arrayidx264, align 8
  %conv265 = zext i64 %185 to i128
  %186 = load ptr, ptr %arg2.addr, align 8
  %arrayidx266 = getelementptr inbounds i64, ptr %186, i64 4
  %187 = load i64, ptr %arrayidx266, align 8
  %conv267 = zext i64 %187 to i128
  %mul268 = mul i128 %conv265, %conv267
  store i128 %mul268, ptr %x47, align 16
  %188 = load ptr, ptr %arg1.addr, align 8
  %arrayidx269 = getelementptr inbounds i64, ptr %188, i64 4
  %189 = load i64, ptr %arrayidx269, align 8
  %conv270 = zext i64 %189 to i128
  %190 = load ptr, ptr %arg2.addr, align 8
  %arrayidx271 = getelementptr inbounds i64, ptr %190, i64 3
  %191 = load i64, ptr %arrayidx271, align 8
  %conv272 = zext i64 %191 to i128
  %mul273 = mul i128 %conv270, %conv272
  store i128 %mul273, ptr %x48, align 16
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx274 = getelementptr inbounds i64, ptr %192, i64 4
  %193 = load i64, ptr %arrayidx274, align 8
  %conv275 = zext i64 %193 to i128
  %194 = load ptr, ptr %arg2.addr, align 8
  %arrayidx276 = getelementptr inbounds i64, ptr %194, i64 2
  %195 = load i64, ptr %arrayidx276, align 8
  %conv277 = zext i64 %195 to i128
  %mul278 = mul i128 %conv275, %conv277
  store i128 %mul278, ptr %x49, align 16
  %196 = load ptr, ptr %arg1.addr, align 8
  %arrayidx279 = getelementptr inbounds i64, ptr %196, i64 4
  %197 = load i64, ptr %arrayidx279, align 8
  %conv280 = zext i64 %197 to i128
  %198 = load ptr, ptr %arg2.addr, align 8
  %arrayidx281 = getelementptr inbounds i64, ptr %198, i64 1
  %199 = load i64, ptr %arrayidx281, align 8
  %conv282 = zext i64 %199 to i128
  %mul283 = mul i128 %conv280, %conv282
  store i128 %mul283, ptr %x50, align 16
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx284 = getelementptr inbounds i64, ptr %200, i64 4
  %201 = load i64, ptr %arrayidx284, align 8
  %conv285 = zext i64 %201 to i128
  %202 = load ptr, ptr %arg2.addr, align 8
  %arrayidx286 = getelementptr inbounds i64, ptr %202, i64 0
  %203 = load i64, ptr %arrayidx286, align 8
  %conv287 = zext i64 %203 to i128
  %mul288 = mul i128 %conv285, %conv287
  store i128 %mul288, ptr %x51, align 16
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx289 = getelementptr inbounds i64, ptr %204, i64 3
  %205 = load i64, ptr %arrayidx289, align 8
  %conv290 = zext i64 %205 to i128
  %206 = load ptr, ptr %arg2.addr, align 8
  %arrayidx291 = getelementptr inbounds i64, ptr %206, i64 5
  %207 = load i64, ptr %arrayidx291, align 8
  %conv292 = zext i64 %207 to i128
  %mul293 = mul i128 %conv290, %conv292
  store i128 %mul293, ptr %x52, align 16
  %208 = load ptr, ptr %arg1.addr, align 8
  %arrayidx294 = getelementptr inbounds i64, ptr %208, i64 3
  %209 = load i64, ptr %arrayidx294, align 8
  %conv295 = zext i64 %209 to i128
  %210 = load ptr, ptr %arg2.addr, align 8
  %arrayidx296 = getelementptr inbounds i64, ptr %210, i64 4
  %211 = load i64, ptr %arrayidx296, align 8
  %conv297 = zext i64 %211 to i128
  %mul298 = mul i128 %conv295, %conv297
  store i128 %mul298, ptr %x53, align 16
  %212 = load ptr, ptr %arg1.addr, align 8
  %arrayidx299 = getelementptr inbounds i64, ptr %212, i64 3
  %213 = load i64, ptr %arrayidx299, align 8
  %conv300 = zext i64 %213 to i128
  %214 = load ptr, ptr %arg2.addr, align 8
  %arrayidx301 = getelementptr inbounds i64, ptr %214, i64 3
  %215 = load i64, ptr %arrayidx301, align 8
  %conv302 = zext i64 %215 to i128
  %mul303 = mul i128 %conv300, %conv302
  store i128 %mul303, ptr %x54, align 16
  %216 = load ptr, ptr %arg1.addr, align 8
  %arrayidx304 = getelementptr inbounds i64, ptr %216, i64 3
  %217 = load i64, ptr %arrayidx304, align 8
  %conv305 = zext i64 %217 to i128
  %218 = load ptr, ptr %arg2.addr, align 8
  %arrayidx306 = getelementptr inbounds i64, ptr %218, i64 2
  %219 = load i64, ptr %arrayidx306, align 8
  %conv307 = zext i64 %219 to i128
  %mul308 = mul i128 %conv305, %conv307
  store i128 %mul308, ptr %x55, align 16
  %220 = load ptr, ptr %arg1.addr, align 8
  %arrayidx309 = getelementptr inbounds i64, ptr %220, i64 3
  %221 = load i64, ptr %arrayidx309, align 8
  %conv310 = zext i64 %221 to i128
  %222 = load ptr, ptr %arg2.addr, align 8
  %arrayidx311 = getelementptr inbounds i64, ptr %222, i64 1
  %223 = load i64, ptr %arrayidx311, align 8
  %conv312 = zext i64 %223 to i128
  %mul313 = mul i128 %conv310, %conv312
  store i128 %mul313, ptr %x56, align 16
  %224 = load ptr, ptr %arg1.addr, align 8
  %arrayidx314 = getelementptr inbounds i64, ptr %224, i64 3
  %225 = load i64, ptr %arrayidx314, align 8
  %conv315 = zext i64 %225 to i128
  %226 = load ptr, ptr %arg2.addr, align 8
  %arrayidx316 = getelementptr inbounds i64, ptr %226, i64 0
  %227 = load i64, ptr %arrayidx316, align 8
  %conv317 = zext i64 %227 to i128
  %mul318 = mul i128 %conv315, %conv317
  store i128 %mul318, ptr %x57, align 16
  %228 = load ptr, ptr %arg1.addr, align 8
  %arrayidx319 = getelementptr inbounds i64, ptr %228, i64 2
  %229 = load i64, ptr %arrayidx319, align 8
  %conv320 = zext i64 %229 to i128
  %230 = load ptr, ptr %arg2.addr, align 8
  %arrayidx321 = getelementptr inbounds i64, ptr %230, i64 6
  %231 = load i64, ptr %arrayidx321, align 8
  %conv322 = zext i64 %231 to i128
  %mul323 = mul i128 %conv320, %conv322
  store i128 %mul323, ptr %x58, align 16
  %232 = load ptr, ptr %arg1.addr, align 8
  %arrayidx324 = getelementptr inbounds i64, ptr %232, i64 2
  %233 = load i64, ptr %arrayidx324, align 8
  %conv325 = zext i64 %233 to i128
  %234 = load ptr, ptr %arg2.addr, align 8
  %arrayidx326 = getelementptr inbounds i64, ptr %234, i64 5
  %235 = load i64, ptr %arrayidx326, align 8
  %conv327 = zext i64 %235 to i128
  %mul328 = mul i128 %conv325, %conv327
  store i128 %mul328, ptr %x59, align 16
  %236 = load ptr, ptr %arg1.addr, align 8
  %arrayidx329 = getelementptr inbounds i64, ptr %236, i64 2
  %237 = load i64, ptr %arrayidx329, align 8
  %conv330 = zext i64 %237 to i128
  %238 = load ptr, ptr %arg2.addr, align 8
  %arrayidx331 = getelementptr inbounds i64, ptr %238, i64 4
  %239 = load i64, ptr %arrayidx331, align 8
  %conv332 = zext i64 %239 to i128
  %mul333 = mul i128 %conv330, %conv332
  store i128 %mul333, ptr %x60, align 16
  %240 = load ptr, ptr %arg1.addr, align 8
  %arrayidx334 = getelementptr inbounds i64, ptr %240, i64 2
  %241 = load i64, ptr %arrayidx334, align 8
  %conv335 = zext i64 %241 to i128
  %242 = load ptr, ptr %arg2.addr, align 8
  %arrayidx336 = getelementptr inbounds i64, ptr %242, i64 3
  %243 = load i64, ptr %arrayidx336, align 8
  %conv337 = zext i64 %243 to i128
  %mul338 = mul i128 %conv335, %conv337
  store i128 %mul338, ptr %x61, align 16
  %244 = load ptr, ptr %arg1.addr, align 8
  %arrayidx339 = getelementptr inbounds i64, ptr %244, i64 2
  %245 = load i64, ptr %arrayidx339, align 8
  %conv340 = zext i64 %245 to i128
  %246 = load ptr, ptr %arg2.addr, align 8
  %arrayidx341 = getelementptr inbounds i64, ptr %246, i64 2
  %247 = load i64, ptr %arrayidx341, align 8
  %conv342 = zext i64 %247 to i128
  %mul343 = mul i128 %conv340, %conv342
  store i128 %mul343, ptr %x62, align 16
  %248 = load ptr, ptr %arg1.addr, align 8
  %arrayidx344 = getelementptr inbounds i64, ptr %248, i64 2
  %249 = load i64, ptr %arrayidx344, align 8
  %conv345 = zext i64 %249 to i128
  %250 = load ptr, ptr %arg2.addr, align 8
  %arrayidx346 = getelementptr inbounds i64, ptr %250, i64 1
  %251 = load i64, ptr %arrayidx346, align 8
  %conv347 = zext i64 %251 to i128
  %mul348 = mul i128 %conv345, %conv347
  store i128 %mul348, ptr %x63, align 16
  %252 = load ptr, ptr %arg1.addr, align 8
  %arrayidx349 = getelementptr inbounds i64, ptr %252, i64 2
  %253 = load i64, ptr %arrayidx349, align 8
  %conv350 = zext i64 %253 to i128
  %254 = load ptr, ptr %arg2.addr, align 8
  %arrayidx351 = getelementptr inbounds i64, ptr %254, i64 0
  %255 = load i64, ptr %arrayidx351, align 8
  %conv352 = zext i64 %255 to i128
  %mul353 = mul i128 %conv350, %conv352
  store i128 %mul353, ptr %x64, align 16
  %256 = load ptr, ptr %arg1.addr, align 8
  %arrayidx354 = getelementptr inbounds i64, ptr %256, i64 1
  %257 = load i64, ptr %arrayidx354, align 8
  %conv355 = zext i64 %257 to i128
  %258 = load ptr, ptr %arg2.addr, align 8
  %arrayidx356 = getelementptr inbounds i64, ptr %258, i64 7
  %259 = load i64, ptr %arrayidx356, align 8
  %conv357 = zext i64 %259 to i128
  %mul358 = mul i128 %conv355, %conv357
  store i128 %mul358, ptr %x65, align 16
  %260 = load ptr, ptr %arg1.addr, align 8
  %arrayidx359 = getelementptr inbounds i64, ptr %260, i64 1
  %261 = load i64, ptr %arrayidx359, align 8
  %conv360 = zext i64 %261 to i128
  %262 = load ptr, ptr %arg2.addr, align 8
  %arrayidx361 = getelementptr inbounds i64, ptr %262, i64 6
  %263 = load i64, ptr %arrayidx361, align 8
  %conv362 = zext i64 %263 to i128
  %mul363 = mul i128 %conv360, %conv362
  store i128 %mul363, ptr %x66, align 16
  %264 = load ptr, ptr %arg1.addr, align 8
  %arrayidx364 = getelementptr inbounds i64, ptr %264, i64 1
  %265 = load i64, ptr %arrayidx364, align 8
  %conv365 = zext i64 %265 to i128
  %266 = load ptr, ptr %arg2.addr, align 8
  %arrayidx366 = getelementptr inbounds i64, ptr %266, i64 5
  %267 = load i64, ptr %arrayidx366, align 8
  %conv367 = zext i64 %267 to i128
  %mul368 = mul i128 %conv365, %conv367
  store i128 %mul368, ptr %x67, align 16
  %268 = load ptr, ptr %arg1.addr, align 8
  %arrayidx369 = getelementptr inbounds i64, ptr %268, i64 1
  %269 = load i64, ptr %arrayidx369, align 8
  %conv370 = zext i64 %269 to i128
  %270 = load ptr, ptr %arg2.addr, align 8
  %arrayidx371 = getelementptr inbounds i64, ptr %270, i64 4
  %271 = load i64, ptr %arrayidx371, align 8
  %conv372 = zext i64 %271 to i128
  %mul373 = mul i128 %conv370, %conv372
  store i128 %mul373, ptr %x68, align 16
  %272 = load ptr, ptr %arg1.addr, align 8
  %arrayidx374 = getelementptr inbounds i64, ptr %272, i64 1
  %273 = load i64, ptr %arrayidx374, align 8
  %conv375 = zext i64 %273 to i128
  %274 = load ptr, ptr %arg2.addr, align 8
  %arrayidx376 = getelementptr inbounds i64, ptr %274, i64 3
  %275 = load i64, ptr %arrayidx376, align 8
  %conv377 = zext i64 %275 to i128
  %mul378 = mul i128 %conv375, %conv377
  store i128 %mul378, ptr %x69, align 16
  %276 = load ptr, ptr %arg1.addr, align 8
  %arrayidx379 = getelementptr inbounds i64, ptr %276, i64 1
  %277 = load i64, ptr %arrayidx379, align 8
  %conv380 = zext i64 %277 to i128
  %278 = load ptr, ptr %arg2.addr, align 8
  %arrayidx381 = getelementptr inbounds i64, ptr %278, i64 2
  %279 = load i64, ptr %arrayidx381, align 8
  %conv382 = zext i64 %279 to i128
  %mul383 = mul i128 %conv380, %conv382
  store i128 %mul383, ptr %x70, align 16
  %280 = load ptr, ptr %arg1.addr, align 8
  %arrayidx384 = getelementptr inbounds i64, ptr %280, i64 1
  %281 = load i64, ptr %arrayidx384, align 8
  %conv385 = zext i64 %281 to i128
  %282 = load ptr, ptr %arg2.addr, align 8
  %arrayidx386 = getelementptr inbounds i64, ptr %282, i64 1
  %283 = load i64, ptr %arrayidx386, align 8
  %conv387 = zext i64 %283 to i128
  %mul388 = mul i128 %conv385, %conv387
  store i128 %mul388, ptr %x71, align 16
  %284 = load ptr, ptr %arg1.addr, align 8
  %arrayidx389 = getelementptr inbounds i64, ptr %284, i64 1
  %285 = load i64, ptr %arrayidx389, align 8
  %conv390 = zext i64 %285 to i128
  %286 = load ptr, ptr %arg2.addr, align 8
  %arrayidx391 = getelementptr inbounds i64, ptr %286, i64 0
  %287 = load i64, ptr %arrayidx391, align 8
  %conv392 = zext i64 %287 to i128
  %mul393 = mul i128 %conv390, %conv392
  store i128 %mul393, ptr %x72, align 16
  %288 = load ptr, ptr %arg1.addr, align 8
  %arrayidx394 = getelementptr inbounds i64, ptr %288, i64 0
  %289 = load i64, ptr %arrayidx394, align 8
  %conv395 = zext i64 %289 to i128
  %290 = load ptr, ptr %arg2.addr, align 8
  %arrayidx396 = getelementptr inbounds i64, ptr %290, i64 8
  %291 = load i64, ptr %arrayidx396, align 8
  %conv397 = zext i64 %291 to i128
  %mul398 = mul i128 %conv395, %conv397
  store i128 %mul398, ptr %x73, align 16
  %292 = load ptr, ptr %arg1.addr, align 8
  %arrayidx399 = getelementptr inbounds i64, ptr %292, i64 0
  %293 = load i64, ptr %arrayidx399, align 8
  %conv400 = zext i64 %293 to i128
  %294 = load ptr, ptr %arg2.addr, align 8
  %arrayidx401 = getelementptr inbounds i64, ptr %294, i64 7
  %295 = load i64, ptr %arrayidx401, align 8
  %conv402 = zext i64 %295 to i128
  %mul403 = mul i128 %conv400, %conv402
  store i128 %mul403, ptr %x74, align 16
  %296 = load ptr, ptr %arg1.addr, align 8
  %arrayidx404 = getelementptr inbounds i64, ptr %296, i64 0
  %297 = load i64, ptr %arrayidx404, align 8
  %conv405 = zext i64 %297 to i128
  %298 = load ptr, ptr %arg2.addr, align 8
  %arrayidx406 = getelementptr inbounds i64, ptr %298, i64 6
  %299 = load i64, ptr %arrayidx406, align 8
  %conv407 = zext i64 %299 to i128
  %mul408 = mul i128 %conv405, %conv407
  store i128 %mul408, ptr %x75, align 16
  %300 = load ptr, ptr %arg1.addr, align 8
  %arrayidx409 = getelementptr inbounds i64, ptr %300, i64 0
  %301 = load i64, ptr %arrayidx409, align 8
  %conv410 = zext i64 %301 to i128
  %302 = load ptr, ptr %arg2.addr, align 8
  %arrayidx411 = getelementptr inbounds i64, ptr %302, i64 5
  %303 = load i64, ptr %arrayidx411, align 8
  %conv412 = zext i64 %303 to i128
  %mul413 = mul i128 %conv410, %conv412
  store i128 %mul413, ptr %x76, align 16
  %304 = load ptr, ptr %arg1.addr, align 8
  %arrayidx414 = getelementptr inbounds i64, ptr %304, i64 0
  %305 = load i64, ptr %arrayidx414, align 8
  %conv415 = zext i64 %305 to i128
  %306 = load ptr, ptr %arg2.addr, align 8
  %arrayidx416 = getelementptr inbounds i64, ptr %306, i64 4
  %307 = load i64, ptr %arrayidx416, align 8
  %conv417 = zext i64 %307 to i128
  %mul418 = mul i128 %conv415, %conv417
  store i128 %mul418, ptr %x77, align 16
  %308 = load ptr, ptr %arg1.addr, align 8
  %arrayidx419 = getelementptr inbounds i64, ptr %308, i64 0
  %309 = load i64, ptr %arrayidx419, align 8
  %conv420 = zext i64 %309 to i128
  %310 = load ptr, ptr %arg2.addr, align 8
  %arrayidx421 = getelementptr inbounds i64, ptr %310, i64 3
  %311 = load i64, ptr %arrayidx421, align 8
  %conv422 = zext i64 %311 to i128
  %mul423 = mul i128 %conv420, %conv422
  store i128 %mul423, ptr %x78, align 16
  %312 = load ptr, ptr %arg1.addr, align 8
  %arrayidx424 = getelementptr inbounds i64, ptr %312, i64 0
  %313 = load i64, ptr %arrayidx424, align 8
  %conv425 = zext i64 %313 to i128
  %314 = load ptr, ptr %arg2.addr, align 8
  %arrayidx426 = getelementptr inbounds i64, ptr %314, i64 2
  %315 = load i64, ptr %arrayidx426, align 8
  %conv427 = zext i64 %315 to i128
  %mul428 = mul i128 %conv425, %conv427
  store i128 %mul428, ptr %x79, align 16
  %316 = load ptr, ptr %arg1.addr, align 8
  %arrayidx429 = getelementptr inbounds i64, ptr %316, i64 0
  %317 = load i64, ptr %arrayidx429, align 8
  %conv430 = zext i64 %317 to i128
  %318 = load ptr, ptr %arg2.addr, align 8
  %arrayidx431 = getelementptr inbounds i64, ptr %318, i64 1
  %319 = load i64, ptr %arrayidx431, align 8
  %conv432 = zext i64 %319 to i128
  %mul433 = mul i128 %conv430, %conv432
  store i128 %mul433, ptr %x80, align 16
  %320 = load ptr, ptr %arg1.addr, align 8
  %arrayidx434 = getelementptr inbounds i64, ptr %320, i64 0
  %321 = load i64, ptr %arrayidx434, align 8
  %conv435 = zext i64 %321 to i128
  %322 = load ptr, ptr %arg2.addr, align 8
  %arrayidx436 = getelementptr inbounds i64, ptr %322, i64 0
  %323 = load i64, ptr %arrayidx436, align 8
  %conv437 = zext i64 %323 to i128
  %mul438 = mul i128 %conv435, %conv437
  store i128 %mul438, ptr %x81, align 16
  %324 = load i128, ptr %x81, align 16
  %325 = load i128, ptr %x36, align 16
  %326 = load i128, ptr %x35, align 16
  %327 = load i128, ptr %x33, align 16
  %328 = load i128, ptr %x30, align 16
  %329 = load i128, ptr %x26, align 16
  %330 = load i128, ptr %x21, align 16
  %331 = load i128, ptr %x15, align 16
  %332 = load i128, ptr %x8, align 16
  %add = add i128 %331, %332
  %add439 = add i128 %330, %add
  %add440 = add i128 %329, %add439
  %add441 = add i128 %328, %add440
  %add442 = add i128 %327, %add441
  %add443 = add i128 %326, %add442
  %add444 = add i128 %325, %add443
  %add445 = add i128 %324, %add444
  store i128 %add445, ptr %x82, align 16
  %333 = load i128, ptr %x82, align 16
  %shr = lshr i128 %333, 58
  store i128 %shr, ptr %x83, align 16
  %334 = load i128, ptr %x82, align 16
  %and = and i128 %334, 288230376151711743
  %conv446 = trunc i128 %and to i64
  store i64 %conv446, ptr %x84, align 8
  %335 = load i128, ptr %x73, align 16
  %336 = load i128, ptr %x65, align 16
  %337 = load i128, ptr %x58, align 16
  %338 = load i128, ptr %x52, align 16
  %339 = load i128, ptr %x47, align 16
  %340 = load i128, ptr %x43, align 16
  %341 = load i128, ptr %x40, align 16
  %342 = load i128, ptr %x38, align 16
  %343 = load i128, ptr %x37, align 16
  %add447 = add i128 %342, %343
  %add448 = add i128 %341, %add447
  %add449 = add i128 %340, %add448
  %add450 = add i128 %339, %add449
  %add451 = add i128 %338, %add450
  %add452 = add i128 %337, %add451
  %add453 = add i128 %336, %add452
  %add454 = add i128 %335, %add453
  store i128 %add454, ptr %x85, align 16
  %344 = load i128, ptr %x74, align 16
  %345 = load i128, ptr %x66, align 16
  %346 = load i128, ptr %x59, align 16
  %347 = load i128, ptr %x53, align 16
  %348 = load i128, ptr %x48, align 16
  %349 = load i128, ptr %x44, align 16
  %350 = load i128, ptr %x41, align 16
  %351 = load i128, ptr %x39, align 16
  %352 = load i128, ptr %x1, align 16
  %add455 = add i128 %351, %352
  %add456 = add i128 %350, %add455
  %add457 = add i128 %349, %add456
  %add458 = add i128 %348, %add457
  %add459 = add i128 %347, %add458
  %add460 = add i128 %346, %add459
  %add461 = add i128 %345, %add460
  %add462 = add i128 %344, %add461
  store i128 %add462, ptr %x86, align 16
  %353 = load i128, ptr %x75, align 16
  %354 = load i128, ptr %x67, align 16
  %355 = load i128, ptr %x60, align 16
  %356 = load i128, ptr %x54, align 16
  %357 = load i128, ptr %x49, align 16
  %358 = load i128, ptr %x45, align 16
  %359 = load i128, ptr %x42, align 16
  %360 = load i128, ptr %x9, align 16
  %361 = load i128, ptr %x2, align 16
  %add463 = add i128 %360, %361
  %add464 = add i128 %359, %add463
  %add465 = add i128 %358, %add464
  %add466 = add i128 %357, %add465
  %add467 = add i128 %356, %add466
  %add468 = add i128 %355, %add467
  %add469 = add i128 %354, %add468
  %add470 = add i128 %353, %add469
  store i128 %add470, ptr %x87, align 16
  %362 = load i128, ptr %x76, align 16
  %363 = load i128, ptr %x68, align 16
  %364 = load i128, ptr %x61, align 16
  %365 = load i128, ptr %x55, align 16
  %366 = load i128, ptr %x50, align 16
  %367 = load i128, ptr %x46, align 16
  %368 = load i128, ptr %x16, align 16
  %369 = load i128, ptr %x10, align 16
  %370 = load i128, ptr %x3, align 16
  %add471 = add i128 %369, %370
  %add472 = add i128 %368, %add471
  %add473 = add i128 %367, %add472
  %add474 = add i128 %366, %add473
  %add475 = add i128 %365, %add474
  %add476 = add i128 %364, %add475
  %add477 = add i128 %363, %add476
  %add478 = add i128 %362, %add477
  store i128 %add478, ptr %x88, align 16
  %371 = load i128, ptr %x77, align 16
  %372 = load i128, ptr %x69, align 16
  %373 = load i128, ptr %x62, align 16
  %374 = load i128, ptr %x56, align 16
  %375 = load i128, ptr %x51, align 16
  %376 = load i128, ptr %x22, align 16
  %377 = load i128, ptr %x17, align 16
  %378 = load i128, ptr %x11, align 16
  %379 = load i128, ptr %x4, align 16
  %add479 = add i128 %378, %379
  %add480 = add i128 %377, %add479
  %add481 = add i128 %376, %add480
  %add482 = add i128 %375, %add481
  %add483 = add i128 %374, %add482
  %add484 = add i128 %373, %add483
  %add485 = add i128 %372, %add484
  %add486 = add i128 %371, %add485
  store i128 %add486, ptr %x89, align 16
  %380 = load i128, ptr %x78, align 16
  %381 = load i128, ptr %x70, align 16
  %382 = load i128, ptr %x63, align 16
  %383 = load i128, ptr %x57, align 16
  %384 = load i128, ptr %x27, align 16
  %385 = load i128, ptr %x23, align 16
  %386 = load i128, ptr %x18, align 16
  %387 = load i128, ptr %x12, align 16
  %388 = load i128, ptr %x5, align 16
  %add487 = add i128 %387, %388
  %add488 = add i128 %386, %add487
  %add489 = add i128 %385, %add488
  %add490 = add i128 %384, %add489
  %add491 = add i128 %383, %add490
  %add492 = add i128 %382, %add491
  %add493 = add i128 %381, %add492
  %add494 = add i128 %380, %add493
  store i128 %add494, ptr %x90, align 16
  %389 = load i128, ptr %x79, align 16
  %390 = load i128, ptr %x71, align 16
  %391 = load i128, ptr %x64, align 16
  %392 = load i128, ptr %x31, align 16
  %393 = load i128, ptr %x28, align 16
  %394 = load i128, ptr %x24, align 16
  %395 = load i128, ptr %x19, align 16
  %396 = load i128, ptr %x13, align 16
  %397 = load i128, ptr %x6, align 16
  %add495 = add i128 %396, %397
  %add496 = add i128 %395, %add495
  %add497 = add i128 %394, %add496
  %add498 = add i128 %393, %add497
  %add499 = add i128 %392, %add498
  %add500 = add i128 %391, %add499
  %add501 = add i128 %390, %add500
  %add502 = add i128 %389, %add501
  store i128 %add502, ptr %x91, align 16
  %398 = load i128, ptr %x80, align 16
  %399 = load i128, ptr %x72, align 16
  %400 = load i128, ptr %x34, align 16
  %401 = load i128, ptr %x32, align 16
  %402 = load i128, ptr %x29, align 16
  %403 = load i128, ptr %x25, align 16
  %404 = load i128, ptr %x20, align 16
  %405 = load i128, ptr %x14, align 16
  %406 = load i128, ptr %x7, align 16
  %add503 = add i128 %405, %406
  %add504 = add i128 %404, %add503
  %add505 = add i128 %403, %add504
  %add506 = add i128 %402, %add505
  %add507 = add i128 %401, %add506
  %add508 = add i128 %400, %add507
  %add509 = add i128 %399, %add508
  %add510 = add i128 %398, %add509
  store i128 %add510, ptr %x92, align 16
  %407 = load i128, ptr %x83, align 16
  %408 = load i128, ptr %x92, align 16
  %add511 = add i128 %407, %408
  store i128 %add511, ptr %x93, align 16
  %409 = load i128, ptr %x93, align 16
  %shr512 = lshr i128 %409, 58
  store i128 %shr512, ptr %x94, align 16
  %410 = load i128, ptr %x93, align 16
  %and513 = and i128 %410, 288230376151711743
  %conv514 = trunc i128 %and513 to i64
  store i64 %conv514, ptr %x95, align 8
  %411 = load i128, ptr %x94, align 16
  %412 = load i128, ptr %x91, align 16
  %add515 = add i128 %411, %412
  store i128 %add515, ptr %x96, align 16
  %413 = load i128, ptr %x96, align 16
  %shr516 = lshr i128 %413, 58
  store i128 %shr516, ptr %x97, align 16
  %414 = load i128, ptr %x96, align 16
  %and517 = and i128 %414, 288230376151711743
  %conv518 = trunc i128 %and517 to i64
  store i64 %conv518, ptr %x98, align 8
  %415 = load i128, ptr %x97, align 16
  %416 = load i128, ptr %x90, align 16
  %add519 = add i128 %415, %416
  store i128 %add519, ptr %x99, align 16
  %417 = load i128, ptr %x99, align 16
  %shr520 = lshr i128 %417, 58
  store i128 %shr520, ptr %x100, align 16
  %418 = load i128, ptr %x99, align 16
  %and521 = and i128 %418, 288230376151711743
  %conv522 = trunc i128 %and521 to i64
  store i64 %conv522, ptr %x101, align 8
  %419 = load i128, ptr %x100, align 16
  %420 = load i128, ptr %x89, align 16
  %add523 = add i128 %419, %420
  store i128 %add523, ptr %x102, align 16
  %421 = load i128, ptr %x102, align 16
  %shr524 = lshr i128 %421, 58
  store i128 %shr524, ptr %x103, align 16
  %422 = load i128, ptr %x102, align 16
  %and525 = and i128 %422, 288230376151711743
  %conv526 = trunc i128 %and525 to i64
  store i64 %conv526, ptr %x104, align 8
  %423 = load i128, ptr %x103, align 16
  %424 = load i128, ptr %x88, align 16
  %add527 = add i128 %423, %424
  store i128 %add527, ptr %x105, align 16
  %425 = load i128, ptr %x105, align 16
  %shr528 = lshr i128 %425, 58
  store i128 %shr528, ptr %x106, align 16
  %426 = load i128, ptr %x105, align 16
  %and529 = and i128 %426, 288230376151711743
  %conv530 = trunc i128 %and529 to i64
  store i64 %conv530, ptr %x107, align 8
  %427 = load i128, ptr %x106, align 16
  %428 = load i128, ptr %x87, align 16
  %add531 = add i128 %427, %428
  store i128 %add531, ptr %x108, align 16
  %429 = load i128, ptr %x108, align 16
  %shr532 = lshr i128 %429, 58
  store i128 %shr532, ptr %x109, align 16
  %430 = load i128, ptr %x108, align 16
  %and533 = and i128 %430, 288230376151711743
  %conv534 = trunc i128 %and533 to i64
  store i64 %conv534, ptr %x110, align 8
  %431 = load i128, ptr %x109, align 16
  %432 = load i128, ptr %x86, align 16
  %add535 = add i128 %431, %432
  store i128 %add535, ptr %x111, align 16
  %433 = load i128, ptr %x111, align 16
  %shr536 = lshr i128 %433, 58
  store i128 %shr536, ptr %x112, align 16
  %434 = load i128, ptr %x111, align 16
  %and537 = and i128 %434, 288230376151711743
  %conv538 = trunc i128 %and537 to i64
  store i64 %conv538, ptr %x113, align 8
  %435 = load i128, ptr %x112, align 16
  %436 = load i128, ptr %x85, align 16
  %add539 = add i128 %435, %436
  store i128 %add539, ptr %x114, align 16
  %437 = load i128, ptr %x114, align 16
  %shr540 = lshr i128 %437, 57
  store i128 %shr540, ptr %x115, align 16
  %438 = load i128, ptr %x114, align 16
  %and541 = and i128 %438, 144115188075855871
  %conv542 = trunc i128 %and541 to i64
  store i64 %conv542, ptr %x116, align 8
  %439 = load i64, ptr %x84, align 8
  %conv543 = zext i64 %439 to i128
  %440 = load i128, ptr %x115, align 16
  %add544 = add i128 %conv543, %440
  store i128 %add544, ptr %x117, align 16
  %441 = load i128, ptr %x117, align 16
  %shr545 = lshr i128 %441, 58
  %conv546 = trunc i128 %shr545 to i64
  store i64 %conv546, ptr %x118, align 8
  %442 = load i128, ptr %x117, align 16
  %and547 = and i128 %442, 288230376151711743
  %conv548 = trunc i128 %and547 to i64
  store i64 %conv548, ptr %x119, align 8
  %443 = load i64, ptr %x118, align 8
  %444 = load i64, ptr %x95, align 8
  %add549 = add i64 %443, %444
  store i64 %add549, ptr %x120, align 8
  %445 = load i64, ptr %x120, align 8
  %shr550 = lshr i64 %445, 58
  %conv551 = trunc i64 %shr550 to i8
  store i8 %conv551, ptr %x121, align 1
  %446 = load i64, ptr %x120, align 8
  %and552 = and i64 %446, 288230376151711743
  store i64 %and552, ptr %x122, align 8
  %447 = load i8, ptr %x121, align 1
  %conv553 = zext i8 %447 to i64
  %448 = load i64, ptr %x98, align 8
  %add554 = add i64 %conv553, %448
  store i64 %add554, ptr %x123, align 8
  %449 = load i64, ptr %x119, align 8
  %450 = load ptr, ptr %out1.addr, align 8
  %arrayidx555 = getelementptr inbounds i64, ptr %450, i64 0
  store i64 %449, ptr %arrayidx555, align 8
  %451 = load i64, ptr %x122, align 8
  %452 = load ptr, ptr %out1.addr, align 8
  %arrayidx556 = getelementptr inbounds i64, ptr %452, i64 1
  store i64 %451, ptr %arrayidx556, align 8
  %453 = load i64, ptr %x123, align 8
  %454 = load ptr, ptr %out1.addr, align 8
  %arrayidx557 = getelementptr inbounds i64, ptr %454, i64 2
  store i64 %453, ptr %arrayidx557, align 8
  %455 = load i64, ptr %x101, align 8
  %456 = load ptr, ptr %out1.addr, align 8
  %arrayidx558 = getelementptr inbounds i64, ptr %456, i64 3
  store i64 %455, ptr %arrayidx558, align 8
  %457 = load i64, ptr %x104, align 8
  %458 = load ptr, ptr %out1.addr, align 8
  %arrayidx559 = getelementptr inbounds i64, ptr %458, i64 4
  store i64 %457, ptr %arrayidx559, align 8
  %459 = load i64, ptr %x107, align 8
  %460 = load ptr, ptr %out1.addr, align 8
  %arrayidx560 = getelementptr inbounds i64, ptr %460, i64 5
  store i64 %459, ptr %arrayidx560, align 8
  %461 = load i64, ptr %x110, align 8
  %462 = load ptr, ptr %out1.addr, align 8
  %arrayidx561 = getelementptr inbounds i64, ptr %462, i64 6
  store i64 %461, ptr %arrayidx561, align 8
  %463 = load i64, ptr %x113, align 8
  %464 = load ptr, ptr %out1.addr, align 8
  %arrayidx562 = getelementptr inbounds i64, ptr %464, i64 7
  store i64 %463, ptr %arrayidx562, align 8
  %465 = load i64, ptr %x116, align 8
  %466 = load ptr, ptr %out1.addr, align 8
  %arrayidx563 = getelementptr inbounds i64, ptr %466, i64 8
  store i64 %465, ptr %arrayidx563, align 8
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
