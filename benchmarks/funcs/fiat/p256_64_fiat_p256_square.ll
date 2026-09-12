; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i8, align 1
  %x53 = alloca i64, align 8
  %x54 = alloca i64, align 8
  %x55 = alloca i8, align 1
  %x56 = alloca i64, align 8
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i8, align 1
  %x60 = alloca i64, align 8
  %x61 = alloca i8, align 1
  %x62 = alloca i64, align 8
  %x63 = alloca i8, align 1
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i8, align 1
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i8, align 1
  %x77 = alloca i64, align 8
  %x78 = alloca i8, align 1
  %x79 = alloca i64, align 8
  %x80 = alloca i8, align 1
  %x81 = alloca i64, align 8
  %x82 = alloca i8, align 1
  %x83 = alloca i64, align 8
  %x84 = alloca i64, align 8
  %x85 = alloca i64, align 8
  %x86 = alloca i64, align 8
  %x87 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i8, align 1
  %x94 = alloca i64, align 8
  %x95 = alloca i8, align 1
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i8, align 1
  %x101 = alloca i64, align 8
  %x102 = alloca i8, align 1
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i8, align 1
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i8, align 1
  %x124 = alloca i64, align 8
  %x125 = alloca i8, align 1
  %x126 = alloca i64, align 8
  %x127 = alloca i8, align 1
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x134 = alloca i64, align 8
  %x135 = alloca i64, align 8
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i8, align 1
  %x139 = alloca i64, align 8
  %x140 = alloca i8, align 1
  %x141 = alloca i64, align 8
  %x142 = alloca i8, align 1
  %x143 = alloca i64, align 8
  %x144 = alloca i64, align 8
  %x145 = alloca i8, align 1
  %x146 = alloca i64, align 8
  %x147 = alloca i8, align 1
  %x148 = alloca i64, align 8
  %x149 = alloca i8, align 1
  %x150 = alloca i64, align 8
  %x151 = alloca i8, align 1
  %x152 = alloca i64, align 8
  %x153 = alloca i8, align 1
  %x154 = alloca i64, align 8
  %x155 = alloca i64, align 8
  %x156 = alloca i64, align 8
  %x157 = alloca i64, align 8
  %x158 = alloca i64, align 8
  %x159 = alloca i64, align 8
  %x160 = alloca i64, align 8
  %x161 = alloca i8, align 1
  %x162 = alloca i64, align 8
  %x163 = alloca i64, align 8
  %x164 = alloca i8, align 1
  %x165 = alloca i64, align 8
  %x166 = alloca i8, align 1
  %x167 = alloca i64, align 8
  %x168 = alloca i8, align 1
  %x169 = alloca i64, align 8
  %x170 = alloca i8, align 1
  %x171 = alloca i64, align 8
  %x172 = alloca i8, align 1
  %x173 = alloca i64, align 8
  %x174 = alloca i64, align 8
  %x175 = alloca i8, align 1
  %x176 = alloca i64, align 8
  %x177 = alloca i8, align 1
  %x178 = alloca i64, align 8
  %x179 = alloca i8, align 1
  %x180 = alloca i64, align 8
  %x181 = alloca i8, align 1
  %x182 = alloca i64, align 8
  %x183 = alloca i8, align 1
  %x184 = alloca i64, align 8
  %x185 = alloca i64, align 8
  %x186 = alloca i64, align 8
  %x187 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 1
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 3
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef %10)
  %11 = load i64, ptr %x4, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %11, i64 noundef %13)
  %14 = load i64, ptr %x4, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x4, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 0
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x12, align 8
  %21 = load i64, ptr %x9, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %21)
  %22 = load i8, ptr %x14, align 1
  %23 = load i64, ptr %x10, align 8
  %24 = load i64, ptr %x7, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x16, align 1
  %26 = load i64, ptr %x8, align 8
  %27 = load i64, ptr %x5, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %25, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x18, align 1
  %conv = zext i8 %28 to i64
  %29 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %29
  store i64 %add, ptr %x19, align 8
  %30 = load i64, ptr %x11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %30, i64 noundef -4294967295)
  %31 = load i64, ptr %x11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %31, i64 noundef 4294967295)
  %32 = load i64, ptr %x11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %32, i64 noundef -1)
  %33 = load i64, ptr %x25, align 8
  %34 = load i64, ptr %x22, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext 0, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x27, align 1
  %conv8 = zext i8 %35 to i64
  %36 = load i64, ptr %x23, align 8
  %add9 = add i64 %conv8, %36
  store i64 %add9, ptr %x28, align 8
  %37 = load i64, ptr %x11, align 8
  %38 = load i64, ptr %x24, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext 0, i64 noundef %37, i64 noundef %38)
  %39 = load i8, ptr %x30, align 1
  %40 = load i64, ptr %x13, align 8
  %41 = load i64, ptr %x26, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %39, i64 noundef %40, i64 noundef %41)
  %42 = load i8, ptr %x32, align 1
  %43 = load i64, ptr %x15, align 8
  %44 = load i64, ptr %x28, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %42, i64 noundef %43, i64 noundef %44)
  %45 = load i8, ptr %x34, align 1
  %46 = load i64, ptr %x17, align 8
  %47 = load i64, ptr %x20, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %45, i64 noundef %46, i64 noundef %47)
  %48 = load i8, ptr %x36, align 1
  %49 = load i64, ptr %x19, align 8
  %50 = load i64, ptr %x21, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %48, i64 noundef %49, i64 noundef %50)
  %51 = load i64, ptr %x1, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %52, i64 3
  %53 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x39, ptr noundef %x40, i64 noundef %51, i64 noundef %53)
  %54 = load i64, ptr %x1, align 8
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %55, i64 2
  %56 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %54, i64 noundef %56)
  %57 = load i64, ptr %x1, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %58, i64 1
  %59 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %57, i64 noundef %59)
  %60 = load i64, ptr %x1, align 8
  %61 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %61, i64 0
  %62 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %60, i64 noundef %62)
  %63 = load i64, ptr %x46, align 8
  %64 = load i64, ptr %x43, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext 0, i64 noundef %63, i64 noundef %64)
  %65 = load i8, ptr %x48, align 1
  %66 = load i64, ptr %x44, align 8
  %67 = load i64, ptr %x41, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %65, i64 noundef %66, i64 noundef %67)
  %68 = load i8, ptr %x50, align 1
  %69 = load i64, ptr %x42, align 8
  %70 = load i64, ptr %x39, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %68, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x52, align 1
  %conv14 = zext i8 %71 to i64
  %72 = load i64, ptr %x40, align 8
  %add15 = add i64 %conv14, %72
  store i64 %add15, ptr %x53, align 8
  %73 = load i64, ptr %x31, align 8
  %74 = load i64, ptr %x45, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext 0, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x55, align 1
  %76 = load i64, ptr %x33, align 8
  %77 = load i64, ptr %x47, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %75, i64 noundef %76, i64 noundef %77)
  %78 = load i8, ptr %x57, align 1
  %79 = load i64, ptr %x35, align 8
  %80 = load i64, ptr %x49, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %78, i64 noundef %79, i64 noundef %80)
  %81 = load i8, ptr %x59, align 1
  %82 = load i64, ptr %x37, align 8
  %83 = load i64, ptr %x51, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %81, i64 noundef %82, i64 noundef %83)
  %84 = load i8, ptr %x61, align 1
  %85 = load i8, ptr %x38, align 1
  %conv16 = zext i8 %85 to i64
  %86 = load i64, ptr %x53, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %84, i64 noundef %conv16, i64 noundef %86)
  %87 = load i64, ptr %x54, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x64, ptr noundef %x65, i64 noundef %87, i64 noundef -4294967295)
  %88 = load i64, ptr %x54, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %88, i64 noundef 4294967295)
  %89 = load i64, ptr %x54, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %89, i64 noundef -1)
  %90 = load i64, ptr %x69, align 8
  %91 = load i64, ptr %x66, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext 0, i64 noundef %90, i64 noundef %91)
  %92 = load i8, ptr %x71, align 1
  %conv17 = zext i8 %92 to i64
  %93 = load i64, ptr %x67, align 8
  %add18 = add i64 %conv17, %93
  store i64 %add18, ptr %x72, align 8
  %94 = load i64, ptr %x54, align 8
  %95 = load i64, ptr %x68, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i64 noundef %94, i64 noundef %95)
  %96 = load i8, ptr %x74, align 1
  %97 = load i64, ptr %x56, align 8
  %98 = load i64, ptr %x70, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %96, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x76, align 1
  %100 = load i64, ptr %x58, align 8
  %101 = load i64, ptr %x72, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %99, i64 noundef %100, i64 noundef %101)
  %102 = load i8, ptr %x78, align 1
  %103 = load i64, ptr %x60, align 8
  %104 = load i64, ptr %x64, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %102, i64 noundef %103, i64 noundef %104)
  %105 = load i8, ptr %x80, align 1
  %106 = load i64, ptr %x62, align 8
  %107 = load i64, ptr %x65, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %105, i64 noundef %106, i64 noundef %107)
  %108 = load i8, ptr %x82, align 1
  %conv19 = zext i8 %108 to i64
  %109 = load i8, ptr %x63, align 1
  %conv20 = zext i8 %109 to i64
  %add21 = add i64 %conv19, %conv20
  store i64 %add21, ptr %x83, align 8
  %110 = load i64, ptr %x2, align 8
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %111, i64 3
  %112 = load i64, ptr %arrayidx22, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x84, ptr noundef %x85, i64 noundef %110, i64 noundef %112)
  %113 = load i64, ptr %x2, align 8
  %114 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %114, i64 2
  %115 = load i64, ptr %arrayidx23, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x86, ptr noundef %x87, i64 noundef %113, i64 noundef %115)
  %116 = load i64, ptr %x2, align 8
  %117 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %117, i64 1
  %118 = load i64, ptr %arrayidx24, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %116, i64 noundef %118)
  %119 = load i64, ptr %x2, align 8
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %120, i64 0
  %121 = load i64, ptr %arrayidx25, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x90, ptr noundef %x91, i64 noundef %119, i64 noundef %121)
  %122 = load i64, ptr %x91, align 8
  %123 = load i64, ptr %x88, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext 0, i64 noundef %122, i64 noundef %123)
  %124 = load i8, ptr %x93, align 1
  %125 = load i64, ptr %x89, align 8
  %126 = load i64, ptr %x86, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %124, i64 noundef %125, i64 noundef %126)
  %127 = load i8, ptr %x95, align 1
  %128 = load i64, ptr %x87, align 8
  %129 = load i64, ptr %x84, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %127, i64 noundef %128, i64 noundef %129)
  %130 = load i8, ptr %x97, align 1
  %conv26 = zext i8 %130 to i64
  %131 = load i64, ptr %x85, align 8
  %add27 = add i64 %conv26, %131
  store i64 %add27, ptr %x98, align 8
  %132 = load i64, ptr %x75, align 8
  %133 = load i64, ptr %x90, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext 0, i64 noundef %132, i64 noundef %133)
  %134 = load i8, ptr %x100, align 1
  %135 = load i64, ptr %x77, align 8
  %136 = load i64, ptr %x92, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %134, i64 noundef %135, i64 noundef %136)
  %137 = load i8, ptr %x102, align 1
  %138 = load i64, ptr %x79, align 8
  %139 = load i64, ptr %x94, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %137, i64 noundef %138, i64 noundef %139)
  %140 = load i8, ptr %x104, align 1
  %141 = load i64, ptr %x81, align 8
  %142 = load i64, ptr %x96, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %140, i64 noundef %141, i64 noundef %142)
  %143 = load i8, ptr %x106, align 1
  %144 = load i64, ptr %x83, align 8
  %145 = load i64, ptr %x98, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %143, i64 noundef %144, i64 noundef %145)
  %146 = load i64, ptr %x99, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x109, ptr noundef %x110, i64 noundef %146, i64 noundef -4294967295)
  %147 = load i64, ptr %x99, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x111, ptr noundef %x112, i64 noundef %147, i64 noundef 4294967295)
  %148 = load i64, ptr %x99, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x113, ptr noundef %x114, i64 noundef %148, i64 noundef -1)
  %149 = load i64, ptr %x114, align 8
  %150 = load i64, ptr %x111, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext 0, i64 noundef %149, i64 noundef %150)
  %151 = load i8, ptr %x116, align 1
  %conv28 = zext i8 %151 to i64
  %152 = load i64, ptr %x112, align 8
  %add29 = add i64 %conv28, %152
  store i64 %add29, ptr %x117, align 8
  %153 = load i64, ptr %x99, align 8
  %154 = load i64, ptr %x113, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext 0, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x119, align 1
  %156 = load i64, ptr %x101, align 8
  %157 = load i64, ptr %x115, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x121, align 1
  %159 = load i64, ptr %x103, align 8
  %160 = load i64, ptr %x117, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x123, align 1
  %162 = load i64, ptr %x105, align 8
  %163 = load i64, ptr %x109, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x125, align 1
  %165 = load i64, ptr %x107, align 8
  %166 = load i64, ptr %x110, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %164, i64 noundef %165, i64 noundef %166)
  %167 = load i8, ptr %x127, align 1
  %conv30 = zext i8 %167 to i64
  %168 = load i8, ptr %x108, align 1
  %conv31 = zext i8 %168 to i64
  %add32 = add i64 %conv30, %conv31
  store i64 %add32, ptr %x128, align 8
  %169 = load i64, ptr %x3, align 8
  %170 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %170, i64 3
  %171 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x129, ptr noundef %x130, i64 noundef %169, i64 noundef %171)
  %172 = load i64, ptr %x3, align 8
  %173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %173, i64 2
  %174 = load i64, ptr %arrayidx34, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x131, ptr noundef %x132, i64 noundef %172, i64 noundef %174)
  %175 = load i64, ptr %x3, align 8
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %176, i64 1
  %177 = load i64, ptr %arrayidx35, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x133, ptr noundef %x134, i64 noundef %175, i64 noundef %177)
  %178 = load i64, ptr %x3, align 8
  %179 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %179, i64 0
  %180 = load i64, ptr %arrayidx36, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x135, ptr noundef %x136, i64 noundef %178, i64 noundef %180)
  %181 = load i64, ptr %x136, align 8
  %182 = load i64, ptr %x133, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext 0, i64 noundef %181, i64 noundef %182)
  %183 = load i8, ptr %x138, align 1
  %184 = load i64, ptr %x134, align 8
  %185 = load i64, ptr %x131, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x140, align 1
  %187 = load i64, ptr %x132, align 8
  %188 = load i64, ptr %x129, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x142, align 1
  %conv37 = zext i8 %189 to i64
  %190 = load i64, ptr %x130, align 8
  %add38 = add i64 %conv37, %190
  store i64 %add38, ptr %x143, align 8
  %191 = load i64, ptr %x120, align 8
  %192 = load i64, ptr %x135, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext 0, i64 noundef %191, i64 noundef %192)
  %193 = load i8, ptr %x145, align 1
  %194 = load i64, ptr %x122, align 8
  %195 = load i64, ptr %x137, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %193, i64 noundef %194, i64 noundef %195)
  %196 = load i8, ptr %x147, align 1
  %197 = load i64, ptr %x124, align 8
  %198 = load i64, ptr %x139, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %196, i64 noundef %197, i64 noundef %198)
  %199 = load i8, ptr %x149, align 1
  %200 = load i64, ptr %x126, align 8
  %201 = load i64, ptr %x141, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %199, i64 noundef %200, i64 noundef %201)
  %202 = load i8, ptr %x151, align 1
  %203 = load i64, ptr %x128, align 8
  %204 = load i64, ptr %x143, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %202, i64 noundef %203, i64 noundef %204)
  %205 = load i64, ptr %x144, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x154, ptr noundef %x155, i64 noundef %205, i64 noundef -4294967295)
  %206 = load i64, ptr %x144, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x156, ptr noundef %x157, i64 noundef %206, i64 noundef 4294967295)
  %207 = load i64, ptr %x144, align 8
  call void @fiat_p256_mulx_u64(ptr noundef %x158, ptr noundef %x159, i64 noundef %207, i64 noundef -1)
  %208 = load i64, ptr %x159, align 8
  %209 = load i64, ptr %x156, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext 0, i64 noundef %208, i64 noundef %209)
  %210 = load i8, ptr %x161, align 1
  %conv39 = zext i8 %210 to i64
  %211 = load i64, ptr %x157, align 8
  %add40 = add i64 %conv39, %211
  store i64 %add40, ptr %x162, align 8
  %212 = load i64, ptr %x144, align 8
  %213 = load i64, ptr %x158, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext 0, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x164, align 1
  %215 = load i64, ptr %x146, align 8
  %216 = load i64, ptr %x160, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %214, i64 noundef %215, i64 noundef %216)
  %217 = load i8, ptr %x166, align 1
  %218 = load i64, ptr %x148, align 8
  %219 = load i64, ptr %x162, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %217, i64 noundef %218, i64 noundef %219)
  %220 = load i8, ptr %x168, align 1
  %221 = load i64, ptr %x150, align 8
  %222 = load i64, ptr %x154, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %220, i64 noundef %221, i64 noundef %222)
  %223 = load i8, ptr %x170, align 1
  %224 = load i64, ptr %x152, align 8
  %225 = load i64, ptr %x155, align 8
  call void @fiat_p256_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %223, i64 noundef %224, i64 noundef %225)
  %226 = load i8, ptr %x172, align 1
  %conv41 = zext i8 %226 to i64
  %227 = load i8, ptr %x153, align 1
  %conv42 = zext i8 %227 to i64
  %add43 = add i64 %conv41, %conv42
  store i64 %add43, ptr %x173, align 8
  %228 = load i64, ptr %x165, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext 0, i64 noundef %228, i64 noundef -1)
  %229 = load i8, ptr %x175, align 1
  %230 = load i64, ptr %x167, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %229, i64 noundef %230, i64 noundef 4294967295)
  %231 = load i8, ptr %x177, align 1
  %232 = load i64, ptr %x169, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %231, i64 noundef %232, i64 noundef 0)
  %233 = load i8, ptr %x179, align 1
  %234 = load i64, ptr %x171, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %233, i64 noundef %234, i64 noundef -4294967295)
  %235 = load i8, ptr %x181, align 1
  %236 = load i64, ptr %x173, align 8
  call void @fiat_p256_subborrowx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %235, i64 noundef %236, i64 noundef 0)
  %237 = load i8, ptr %x183, align 1
  %238 = load i64, ptr %x174, align 8
  %239 = load i64, ptr %x165, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x184, i8 noundef zeroext %237, i64 noundef %238, i64 noundef %239)
  %240 = load i8, ptr %x183, align 1
  %241 = load i64, ptr %x176, align 8
  %242 = load i64, ptr %x167, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x185, i8 noundef zeroext %240, i64 noundef %241, i64 noundef %242)
  %243 = load i8, ptr %x183, align 1
  %244 = load i64, ptr %x178, align 8
  %245 = load i64, ptr %x169, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x186, i8 noundef zeroext %243, i64 noundef %244, i64 noundef %245)
  %246 = load i8, ptr %x183, align 1
  %247 = load i64, ptr %x180, align 8
  %248 = load i64, ptr %x171, align 8
  call void @fiat_p256_cmovznz_u64(ptr noundef %x187, i8 noundef zeroext %246, i64 noundef %247, i64 noundef %248)
  %249 = load i64, ptr %x184, align 8
  %250 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %250, i64 0
  store i64 %249, ptr %arrayidx44, align 8
  %251 = load i64, ptr %x185, align 8
  %252 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %252, i64 1
  store i64 %251, ptr %arrayidx45, align 8
  %253 = load i64, ptr %x186, align 8
  %254 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %254, i64 2
  store i64 %253, ptr %arrayidx46, align 8
  %255 = load i64, ptr %x187, align 8
  %256 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %256, i64 3
  store i64 %255, ptr %arrayidx47, align 8
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
