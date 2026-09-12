; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_scalar_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i8, align 1
  %x53 = alloca i64, align 8
  %x54 = alloca i8, align 1
  %x55 = alloca i64, align 8
  %x56 = alloca i64, align 8
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i8, align 1
  %x60 = alloca i64, align 8
  %x61 = alloca i8, align 1
  %x62 = alloca i64, align 8
  %x63 = alloca i8, align 1
  %x64 = alloca i64, align 8
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i8, align 1
  %x79 = alloca i64, align 8
  %x80 = alloca i8, align 1
  %x81 = alloca i64, align 8
  %x82 = alloca i8, align 1
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i8, align 1
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i8, align 1
  %x126 = alloca i64, align 8
  %x127 = alloca i8, align 1
  %x128 = alloca i64, align 8
  %x129 = alloca i8, align 1
  %x130 = alloca i64, align 8
  %x131 = alloca i8, align 1
  %x132 = alloca i64, align 8
  %x133 = alloca i8, align 1
  %x134 = alloca i64, align 8
  %x135 = alloca i64, align 8
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  %x144 = alloca i8, align 1
  %x145 = alloca i64, align 8
  %x146 = alloca i8, align 1
  %x147 = alloca i64, align 8
  %x148 = alloca i8, align 1
  %x149 = alloca i64, align 8
  %x150 = alloca i64, align 8
  %x151 = alloca i8, align 1
  %x152 = alloca i64, align 8
  %x153 = alloca i8, align 1
  %x154 = alloca i64, align 8
  %x155 = alloca i8, align 1
  %x156 = alloca i64, align 8
  %x157 = alloca i8, align 1
  %x158 = alloca i64, align 8
  %x159 = alloca i8, align 1
  %x160 = alloca i64, align 8
  %x161 = alloca i64, align 8
  %x162 = alloca i64, align 8
  %x163 = alloca i64, align 8
  %x164 = alloca i64, align 8
  %x165 = alloca i64, align 8
  %x166 = alloca i64, align 8
  %x167 = alloca i64, align 8
  %x168 = alloca i64, align 8
  %x169 = alloca i8, align 1
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
  %x172 = alloca i8, align 1
  %x173 = alloca i64, align 8
  %x174 = alloca i8, align 1
  %x175 = alloca i64, align 8
  %x176 = alloca i8, align 1
  %x177 = alloca i64, align 8
  %x178 = alloca i8, align 1
  %x179 = alloca i64, align 8
  %x180 = alloca i8, align 1
  %x181 = alloca i64, align 8
  %x182 = alloca i64, align 8
  %x183 = alloca i8, align 1
  %x184 = alloca i64, align 8
  %x185 = alloca i8, align 1
  %x186 = alloca i64, align 8
  %x187 = alloca i8, align 1
  %x188 = alloca i64, align 8
  %x189 = alloca i8, align 1
  %x190 = alloca i64, align 8
  %x191 = alloca i8, align 1
  %x192 = alloca i64, align 8
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
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
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef %10)
  %11 = load i64, ptr %x4, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %11, i64 noundef %13)
  %14 = load i64, ptr %x4, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx6, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x4, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 0
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x12, align 8
  %21 = load i64, ptr %x9, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %21)
  %22 = load i8, ptr %x14, align 1
  %23 = load i64, ptr %x10, align 8
  %24 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x16, align 1
  %26 = load i64, ptr %x8, align 8
  %27 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %25, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x18, align 1
  %conv = zext i8 %28 to i64
  %29 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %29
  store i64 %add, ptr %x19, align 8
  %30 = load i64, ptr %x11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %30, i64 noundef -3263669768735654373)
  %31 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %31, i64 noundef 1152921504606846976)
  %32 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %32, i64 noundef 1503914060200516822)
  %33 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x26, ptr noundef %x27, i64 noundef %33, i64 noundef 6346243789798364141)
  %34 = load i64, ptr %x27, align 8
  %35 = load i64, ptr %x24, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %34, i64 noundef %35)
  %36 = load i8, ptr %x29, align 1
  %conv8 = zext i8 %36 to i64
  %37 = load i64, ptr %x25, align 8
  %add9 = add i64 %conv8, %37
  store i64 %add9, ptr %x30, align 8
  %38 = load i64, ptr %x11, align 8
  %39 = load i64, ptr %x26, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext 0, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x32, align 1
  %41 = load i64, ptr %x13, align 8
  %42 = load i64, ptr %x28, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x34, align 1
  %44 = load i64, ptr %x15, align 8
  %45 = load i64, ptr %x30, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %45)
  %46 = load i8, ptr %x36, align 1
  %47 = load i64, ptr %x17, align 8
  %48 = load i64, ptr %x22, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %48)
  %49 = load i8, ptr %x38, align 1
  %50 = load i64, ptr %x19, align 8
  %51 = load i64, ptr %x23, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %51)
  %52 = load i64, ptr %x1, align 8
  %53 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %53, i64 3
  %54 = load i64, ptr %arrayidx10, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %52, i64 noundef %54)
  %55 = load i64, ptr %x1, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %55, i64 noundef %57)
  %58 = load i64, ptr %x1, align 8
  %59 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %59, i64 1
  %60 = load i64, ptr %arrayidx12, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %58, i64 noundef %60)
  %61 = load i64, ptr %x1, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %62, i64 0
  %63 = load i64, ptr %arrayidx13, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %61, i64 noundef %63)
  %64 = load i64, ptr %x48, align 8
  %65 = load i64, ptr %x45, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext 0, i64 noundef %64, i64 noundef %65)
  %66 = load i8, ptr %x50, align 1
  %67 = load i64, ptr %x46, align 8
  %68 = load i64, ptr %x43, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %66, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x52, align 1
  %70 = load i64, ptr %x44, align 8
  %71 = load i64, ptr %x41, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i8, ptr %x54, align 1
  %conv14 = zext i8 %72 to i64
  %73 = load i64, ptr %x42, align 8
  %add15 = add i64 %conv14, %73
  store i64 %add15, ptr %x55, align 8
  %74 = load i64, ptr %x33, align 8
  %75 = load i64, ptr %x47, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext 0, i64 noundef %74, i64 noundef %75)
  %76 = load i8, ptr %x57, align 1
  %77 = load i64, ptr %x35, align 8
  %78 = load i64, ptr %x49, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %76, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x59, align 1
  %80 = load i64, ptr %x37, align 8
  %81 = load i64, ptr %x51, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x61, align 1
  %83 = load i64, ptr %x39, align 8
  %84 = load i64, ptr %x53, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x63, align 1
  %86 = load i8, ptr %x40, align 1
  %conv16 = zext i8 %86 to i64
  %87 = load i64, ptr %x55, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %85, i64 noundef %conv16, i64 noundef %87)
  %88 = load i64, ptr %x56, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %88, i64 noundef -3263669768735654373)
  %89 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %89, i64 noundef 1152921504606846976)
  %90 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %90, i64 noundef 1503914060200516822)
  %91 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %91, i64 noundef 6346243789798364141)
  %92 = load i64, ptr %x73, align 8
  %93 = load i64, ptr %x70, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x75, align 1
  %conv17 = zext i8 %94 to i64
  %95 = load i64, ptr %x71, align 8
  %add18 = add i64 %conv17, %95
  store i64 %add18, ptr %x76, align 8
  %96 = load i64, ptr %x56, align 8
  %97 = load i64, ptr %x72, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %96, i64 noundef %97)
  %98 = load i8, ptr %x78, align 1
  %99 = load i64, ptr %x58, align 8
  %100 = load i64, ptr %x74, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %98, i64 noundef %99, i64 noundef %100)
  %101 = load i8, ptr %x80, align 1
  %102 = load i64, ptr %x60, align 8
  %103 = load i64, ptr %x76, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %101, i64 noundef %102, i64 noundef %103)
  %104 = load i8, ptr %x82, align 1
  %105 = load i64, ptr %x62, align 8
  %106 = load i64, ptr %x68, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %104, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x84, align 1
  %108 = load i64, ptr %x64, align 8
  %109 = load i64, ptr %x69, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i8, ptr %x86, align 1
  %conv19 = zext i8 %110 to i64
  %111 = load i8, ptr %x65, align 1
  %conv20 = zext i8 %111 to i64
  %add21 = add i64 %conv19, %conv20
  store i64 %add21, ptr %x87, align 8
  %112 = load i64, ptr %x2, align 8
  %113 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %113, i64 3
  %114 = load i64, ptr %arrayidx22, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %112, i64 noundef %114)
  %115 = load i64, ptr %x2, align 8
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx23, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x90, ptr noundef %x91, i64 noundef %115, i64 noundef %117)
  %118 = load i64, ptr %x2, align 8
  %119 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %119, i64 1
  %120 = load i64, ptr %arrayidx24, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x92, ptr noundef %x93, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x2, align 8
  %122 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %122, i64 0
  %123 = load i64, ptr %arrayidx25, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x94, ptr noundef %x95, i64 noundef %121, i64 noundef %123)
  %124 = load i64, ptr %x95, align 8
  %125 = load i64, ptr %x92, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext 0, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x97, align 1
  %127 = load i64, ptr %x93, align 8
  %128 = load i64, ptr %x90, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x99, align 1
  %130 = load i64, ptr %x91, align 8
  %131 = load i64, ptr %x88, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x101, align 1
  %conv26 = zext i8 %132 to i64
  %133 = load i64, ptr %x89, align 8
  %add27 = add i64 %conv26, %133
  store i64 %add27, ptr %x102, align 8
  %134 = load i64, ptr %x79, align 8
  %135 = load i64, ptr %x94, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i64 noundef %134, i64 noundef %135)
  %136 = load i8, ptr %x104, align 1
  %137 = load i64, ptr %x81, align 8
  %138 = load i64, ptr %x96, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %136, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x106, align 1
  %140 = load i64, ptr %x83, align 8
  %141 = load i64, ptr %x98, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x108, align 1
  %143 = load i64, ptr %x85, align 8
  %144 = load i64, ptr %x100, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x110, align 1
  %146 = load i64, ptr %x87, align 8
  %147 = load i64, ptr %x102, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i64, ptr %x103, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x113, ptr noundef %x114, i64 noundef %148, i64 noundef -3263669768735654373)
  %149 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x115, ptr noundef %x116, i64 noundef %149, i64 noundef 1152921504606846976)
  %150 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %150, i64 noundef 1503914060200516822)
  %151 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %151, i64 noundef 6346243789798364141)
  %152 = load i64, ptr %x120, align 8
  %153 = load i64, ptr %x117, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext 0, i64 noundef %152, i64 noundef %153)
  %154 = load i8, ptr %x122, align 1
  %conv28 = zext i8 %154 to i64
  %155 = load i64, ptr %x118, align 8
  %add29 = add i64 %conv28, %155
  store i64 %add29, ptr %x123, align 8
  %156 = load i64, ptr %x103, align 8
  %157 = load i64, ptr %x119, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext 0, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x125, align 1
  %159 = load i64, ptr %x105, align 8
  %160 = load i64, ptr %x121, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x127, align 1
  %162 = load i64, ptr %x107, align 8
  %163 = load i64, ptr %x123, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x129, align 1
  %165 = load i64, ptr %x109, align 8
  %166 = load i64, ptr %x115, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %164, i64 noundef %165, i64 noundef %166)
  %167 = load i8, ptr %x131, align 1
  %168 = load i64, ptr %x111, align 8
  %169 = load i64, ptr %x116, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %167, i64 noundef %168, i64 noundef %169)
  %170 = load i8, ptr %x133, align 1
  %conv30 = zext i8 %170 to i64
  %171 = load i8, ptr %x112, align 1
  %conv31 = zext i8 %171 to i64
  %add32 = add i64 %conv30, %conv31
  store i64 %add32, ptr %x134, align 8
  %172 = load i64, ptr %x3, align 8
  %173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %173, i64 3
  %174 = load i64, ptr %arrayidx33, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x135, ptr noundef %x136, i64 noundef %172, i64 noundef %174)
  %175 = load i64, ptr %x3, align 8
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %176, i64 2
  %177 = load i64, ptr %arrayidx34, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x137, ptr noundef %x138, i64 noundef %175, i64 noundef %177)
  %178 = load i64, ptr %x3, align 8
  %179 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %179, i64 1
  %180 = load i64, ptr %arrayidx35, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %178, i64 noundef %180)
  %181 = load i64, ptr %x3, align 8
  %182 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %182, i64 0
  %183 = load i64, ptr %arrayidx36, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %181, i64 noundef %183)
  %184 = load i64, ptr %x142, align 8
  %185 = load i64, ptr %x139, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext 0, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x144, align 1
  %187 = load i64, ptr %x140, align 8
  %188 = load i64, ptr %x137, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x146, align 1
  %190 = load i64, ptr %x138, align 8
  %191 = load i64, ptr %x135, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x148, align 1
  %conv37 = zext i8 %192 to i64
  %193 = load i64, ptr %x136, align 8
  %add38 = add i64 %conv37, %193
  store i64 %add38, ptr %x149, align 8
  %194 = load i64, ptr %x126, align 8
  %195 = load i64, ptr %x141, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext 0, i64 noundef %194, i64 noundef %195)
  %196 = load i8, ptr %x151, align 1
  %197 = load i64, ptr %x128, align 8
  %198 = load i64, ptr %x143, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %196, i64 noundef %197, i64 noundef %198)
  %199 = load i8, ptr %x153, align 1
  %200 = load i64, ptr %x130, align 8
  %201 = load i64, ptr %x145, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %199, i64 noundef %200, i64 noundef %201)
  %202 = load i8, ptr %x155, align 1
  %203 = load i64, ptr %x132, align 8
  %204 = load i64, ptr %x147, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %202, i64 noundef %203, i64 noundef %204)
  %205 = load i8, ptr %x157, align 1
  %206 = load i64, ptr %x134, align 8
  %207 = load i64, ptr %x149, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %205, i64 noundef %206, i64 noundef %207)
  %208 = load i64, ptr %x150, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x160, ptr noundef %x161, i64 noundef %208, i64 noundef -3263669768735654373)
  %209 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x162, ptr noundef %x163, i64 noundef %209, i64 noundef 1152921504606846976)
  %210 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x164, ptr noundef %x165, i64 noundef %210, i64 noundef 1503914060200516822)
  %211 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x166, ptr noundef %x167, i64 noundef %211, i64 noundef 6346243789798364141)
  %212 = load i64, ptr %x167, align 8
  %213 = load i64, ptr %x164, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext 0, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x169, align 1
  %conv39 = zext i8 %214 to i64
  %215 = load i64, ptr %x165, align 8
  %add40 = add i64 %conv39, %215
  store i64 %add40, ptr %x170, align 8
  %216 = load i64, ptr %x150, align 8
  %217 = load i64, ptr %x166, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext 0, i64 noundef %216, i64 noundef %217)
  %218 = load i8, ptr %x172, align 1
  %219 = load i64, ptr %x152, align 8
  %220 = load i64, ptr %x168, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %218, i64 noundef %219, i64 noundef %220)
  %221 = load i8, ptr %x174, align 1
  %222 = load i64, ptr %x154, align 8
  %223 = load i64, ptr %x170, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %221, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x176, align 1
  %225 = load i64, ptr %x156, align 8
  %226 = load i64, ptr %x162, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x178, align 1
  %228 = load i64, ptr %x158, align 8
  %229 = load i64, ptr %x163, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x180, align 1
  %conv41 = zext i8 %230 to i64
  %231 = load i8, ptr %x159, align 1
  %conv42 = zext i8 %231 to i64
  %add43 = add i64 %conv41, %conv42
  store i64 %add43, ptr %x181, align 8
  %232 = load i64, ptr %x173, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext 0, i64 noundef %232, i64 noundef 6346243789798364141)
  %233 = load i8, ptr %x183, align 1
  %234 = load i64, ptr %x175, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %233, i64 noundef %234, i64 noundef 1503914060200516822)
  %235 = load i8, ptr %x185, align 1
  %236 = load i64, ptr %x177, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %235, i64 noundef %236, i64 noundef 0)
  %237 = load i8, ptr %x187, align 1
  %238 = load i64, ptr %x179, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %237, i64 noundef %238, i64 noundef 1152921504606846976)
  %239 = load i8, ptr %x189, align 1
  %240 = load i64, ptr %x181, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %239, i64 noundef %240, i64 noundef 0)
  %241 = load i8, ptr %x191, align 1
  %242 = load i64, ptr %x182, align 8
  %243 = load i64, ptr %x173, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x192, i8 noundef zeroext %241, i64 noundef %242, i64 noundef %243)
  %244 = load i8, ptr %x191, align 1
  %245 = load i64, ptr %x184, align 8
  %246 = load i64, ptr %x175, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x193, i8 noundef zeroext %244, i64 noundef %245, i64 noundef %246)
  %247 = load i8, ptr %x191, align 1
  %248 = load i64, ptr %x186, align 8
  %249 = load i64, ptr %x177, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x194, i8 noundef zeroext %247, i64 noundef %248, i64 noundef %249)
  %250 = load i8, ptr %x191, align 1
  %251 = load i64, ptr %x188, align 8
  %252 = load i64, ptr %x179, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x195, i8 noundef zeroext %250, i64 noundef %251, i64 noundef %252)
  %253 = load i64, ptr %x192, align 8
  %254 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %254, i64 0
  store i64 %253, ptr %arrayidx44, align 8
  %255 = load i64, ptr %x193, align 8
  %256 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %256, i64 1
  store i64 %255, ptr %arrayidx45, align 8
  %257 = load i64, ptr %x194, align 8
  %258 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %258, i64 2
  store i64 %257, ptr %arrayidx46, align 8
  %259 = load i64, ptr %x195, align 8
  %260 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %260, i64 3
  store i64 %259, ptr %arrayidx47, align 8
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
