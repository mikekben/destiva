; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i64 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %out3.addr = alloca ptr, align 8
  %out4.addr = alloca ptr, align 8
  %out5.addr = alloca ptr, align 8
  %arg1.addr = alloca i64, align 8
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %arg4.addr = alloca ptr, align 8
  %arg5.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i8, align 1
  %x4 = alloca i64, align 8
  %x5 = alloca i8, align 1
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i8, align 1
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
  %x22 = alloca i64, align 8
  %x23 = alloca i8, align 1
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i8, align 1
  %x43 = alloca i64, align 8
  %x44 = alloca i8, align 1
  %x45 = alloca i64, align 8
  %x46 = alloca i8, align 1
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i8, align 1
  %x53 = alloca i64, align 8
  %x54 = alloca i8, align 1
  %x55 = alloca i64, align 8
  %x56 = alloca i8, align 1
  %x57 = alloca i64, align 8
  %x58 = alloca i8, align 1
  %x59 = alloca i64, align 8
  %x60 = alloca i8, align 1
  %x61 = alloca i64, align 8
  %x62 = alloca i8, align 1
  %x63 = alloca i64, align 8
  %x64 = alloca i8, align 1
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
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
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
  %x86 = alloca i64, align 8
  %x87 = alloca i8, align 1
  %x88 = alloca i64, align 8
  %x89 = alloca i8, align 1
  %x90 = alloca i64, align 8
  %x91 = alloca i8, align 1
  %x92 = alloca i64, align 8
  %x93 = alloca i8, align 1
  %x94 = alloca i64, align 8
  %x95 = alloca i8, align 1
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i64, align 8
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i8, align 1
  %x114 = alloca i64, align 8
  %x115 = alloca i8, align 1
  %x116 = alloca i64, align 8
  %x117 = alloca i8, align 1
  %x118 = alloca i64, align 8
  %x119 = alloca i8, align 1
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i8, align 1
  %x124 = alloca i64, align 8
  %x125 = alloca i8, align 1
  %x126 = alloca i64, align 8
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i8, align 1
  %x134 = alloca i64, align 8
  %x135 = alloca i8, align 1
  %x136 = alloca i64, align 8
  %x137 = alloca i8, align 1
  %x138 = alloca i64, align 8
  %x139 = alloca i8, align 1
  %x140 = alloca i64, align 8
  %x141 = alloca i8, align 1
  %x142 = alloca i64, align 8
  %x143 = alloca i8, align 1
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
  %x169 = alloca i64, align 8
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
  %x172 = alloca i64, align 8
  %x173 = alloca i64, align 8
  %x174 = alloca i64, align 8
  %x175 = alloca i64, align 8
  %x176 = alloca i64, align 8
  %x177 = alloca i64, align 8
  %x178 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store ptr %out3, ptr %out3.addr, align 8
  store ptr %out4, ptr %out4.addr, align 8
  store ptr %out5, ptr %out5.addr, align 8
  store i64 %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  store ptr %arg4, ptr %arg4.addr, align 8
  store ptr %arg5, ptr %arg5.addr, align 8
  %0 = load i64, ptr %arg1.addr, align 8
  %not = xor i64 %0, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %not, i64 noundef 1)
  %1 = load i64, ptr %x1, align 8
  %shr = lshr i64 %1, 63
  %conv = trunc i64 %shr to i8
  %conv1 = zext i8 %conv to i32
  %2 = load ptr, ptr %arg3.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx, align 8
  %and = and i64 %3, 1
  %conv2 = trunc i64 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv1, %conv3
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %x3, align 1
  %4 = load i64, ptr %arg1.addr, align 8
  %not6 = xor i64 %4, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i64 noundef %not6, i64 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i64, ptr %arg1.addr, align 8
  %7 = load i64, ptr %x4, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef %10, i64 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %13, i64 noundef %15, i64 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %18, i64 noundef %20, i64 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx13, align 8
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 3
  %27 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x10, i8 noundef zeroext %23, i64 noundef %25, i64 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 4
  %30 = load i64, ptr %arrayidx15, align 8
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 4
  %32 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %28, i64 noundef %30, i64 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 5
  %35 = load i64, ptr %arrayidx17, align 8
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %36, i64 5
  %37 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x12, i8 noundef zeroext %33, i64 noundef %35, i64 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %39, i64 6
  %40 = load i64, ptr %arrayidx19, align 8
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %41, i64 6
  %42 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %38, i64 noundef %40, i64 noundef %42)
  %43 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %43, i64 0
  %44 = load i64, ptr %arrayidx21, align 8
  %not22 = xor i64 %44, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef 1, i64 noundef %not22)
  %45 = load i8, ptr %x15, align 1
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %46, i64 1
  %47 = load i64, ptr %arrayidx23, align 8
  %not24 = xor i64 %47, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %45, i64 noundef 0, i64 noundef %not24)
  %48 = load i8, ptr %x17, align 1
  %49 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %49, i64 2
  %50 = load i64, ptr %arrayidx25, align 8
  %not26 = xor i64 %50, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %48, i64 noundef 0, i64 noundef %not26)
  %51 = load i8, ptr %x19, align 1
  %52 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %52, i64 3
  %53 = load i64, ptr %arrayidx27, align 8
  %not28 = xor i64 %53, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %51, i64 noundef 0, i64 noundef %not28)
  %54 = load i8, ptr %x21, align 1
  %55 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %55, i64 4
  %56 = load i64, ptr %arrayidx29, align 8
  %not30 = xor i64 %56, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %54, i64 noundef 0, i64 noundef %not30)
  %57 = load i8, ptr %x23, align 1
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %58, i64 5
  %59 = load i64, ptr %arrayidx31, align 8
  %not32 = xor i64 %59, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %57, i64 noundef 0, i64 noundef %not32)
  %60 = load i8, ptr %x25, align 1
  %61 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %61, i64 6
  %62 = load i64, ptr %arrayidx33, align 8
  %not34 = xor i64 %62, -1
  call void @fiat_p384_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %60, i64 noundef 0, i64 noundef %not34)
  %63 = load i8, ptr %x3, align 1
  %64 = load ptr, ptr %arg3.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %64, i64 0
  %65 = load i64, ptr %arrayidx35, align 8
  %66 = load i64, ptr %x14, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x28, i8 noundef zeroext %63, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x3, align 1
  %68 = load ptr, ptr %arg3.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %68, i64 1
  %69 = load i64, ptr %arrayidx36, align 8
  %70 = load i64, ptr %x16, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x29, i8 noundef zeroext %67, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x3, align 1
  %72 = load ptr, ptr %arg3.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %72, i64 2
  %73 = load i64, ptr %arrayidx37, align 8
  %74 = load i64, ptr %x18, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x30, i8 noundef zeroext %71, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x3, align 1
  %76 = load ptr, ptr %arg3.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %76, i64 3
  %77 = load i64, ptr %arrayidx38, align 8
  %78 = load i64, ptr %x20, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x31, i8 noundef zeroext %75, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %80, i64 4
  %81 = load i64, ptr %arrayidx39, align 8
  %82 = load i64, ptr %x22, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x32, i8 noundef zeroext %79, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %84, i64 5
  %85 = load i64, ptr %arrayidx40, align 8
  %86 = load i64, ptr %x24, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x33, i8 noundef zeroext %83, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %88, i64 6
  %89 = load i64, ptr %arrayidx41, align 8
  %90 = load i64, ptr %x26, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x34, i8 noundef zeroext %87, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg4.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %92, i64 0
  %93 = load i64, ptr %arrayidx42, align 8
  %94 = load ptr, ptr %arg5.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %94, i64 0
  %95 = load i64, ptr %arrayidx43, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x35, i8 noundef zeroext %91, i64 noundef %93, i64 noundef %95)
  %96 = load i8, ptr %x3, align 1
  %97 = load ptr, ptr %arg4.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %97, i64 1
  %98 = load i64, ptr %arrayidx44, align 8
  %99 = load ptr, ptr %arg5.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %99, i64 1
  %100 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x36, i8 noundef zeroext %96, i64 noundef %98, i64 noundef %100)
  %101 = load i8, ptr %x3, align 1
  %102 = load ptr, ptr %arg4.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %102, i64 2
  %103 = load i64, ptr %arrayidx46, align 8
  %104 = load ptr, ptr %arg5.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %104, i64 2
  %105 = load i64, ptr %arrayidx47, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x37, i8 noundef zeroext %101, i64 noundef %103, i64 noundef %105)
  %106 = load i8, ptr %x3, align 1
  %107 = load ptr, ptr %arg4.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %107, i64 3
  %108 = load i64, ptr %arrayidx48, align 8
  %109 = load ptr, ptr %arg5.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %109, i64 3
  %110 = load i64, ptr %arrayidx49, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x38, i8 noundef zeroext %106, i64 noundef %108, i64 noundef %110)
  %111 = load i8, ptr %x3, align 1
  %112 = load ptr, ptr %arg4.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %112, i64 4
  %113 = load i64, ptr %arrayidx50, align 8
  %114 = load ptr, ptr %arg5.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %114, i64 4
  %115 = load i64, ptr %arrayidx51, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x39, i8 noundef zeroext %111, i64 noundef %113, i64 noundef %115)
  %116 = load i8, ptr %x3, align 1
  %117 = load ptr, ptr %arg4.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %117, i64 5
  %118 = load i64, ptr %arrayidx52, align 8
  %119 = load ptr, ptr %arg5.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %119, i64 5
  %120 = load i64, ptr %arrayidx53, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x40, i8 noundef zeroext %116, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x35, align 8
  %122 = load i64, ptr %x35, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext 0, i64 noundef %121, i64 noundef %122)
  %123 = load i8, ptr %x42, align 1
  %124 = load i64, ptr %x36, align 8
  %125 = load i64, ptr %x36, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %123, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x44, align 1
  %127 = load i64, ptr %x37, align 8
  %128 = load i64, ptr %x37, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x46, align 1
  %130 = load i64, ptr %x38, align 8
  %131 = load i64, ptr %x38, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x48, align 1
  %133 = load i64, ptr %x39, align 8
  %134 = load i64, ptr %x39, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x50, align 1
  %136 = load i64, ptr %x40, align 8
  %137 = load i64, ptr %x40, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i64, ptr %x41, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext 0, i64 noundef %138, i64 noundef 4294967295)
  %139 = load i8, ptr %x54, align 1
  %140 = load i64, ptr %x43, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %139, i64 noundef %140, i64 noundef -4294967296)
  %141 = load i8, ptr %x56, align 1
  %142 = load i64, ptr %x45, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %141, i64 noundef %142, i64 noundef -2)
  %143 = load i8, ptr %x58, align 1
  %144 = load i64, ptr %x47, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %143, i64 noundef %144, i64 noundef -1)
  %145 = load i8, ptr %x60, align 1
  %146 = load i64, ptr %x49, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %145, i64 noundef %146, i64 noundef -1)
  %147 = load i8, ptr %x62, align 1
  %148 = load i64, ptr %x51, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %147, i64 noundef %148, i64 noundef -1)
  %149 = load i8, ptr %x64, align 1
  %150 = load i8, ptr %x52, align 1
  %conv54 = zext i8 %150 to i64
  call void @fiat_p384_subborrowx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %149, i64 noundef %conv54, i64 noundef 0)
  %151 = load ptr, ptr %arg4.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %151, i64 5
  %152 = load i64, ptr %arrayidx55, align 8
  store i64 %152, ptr %x67, align 8
  %153 = load ptr, ptr %arg4.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %153, i64 4
  %154 = load i64, ptr %arrayidx56, align 8
  store i64 %154, ptr %x68, align 8
  %155 = load ptr, ptr %arg4.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %155, i64 3
  %156 = load i64, ptr %arrayidx57, align 8
  store i64 %156, ptr %x69, align 8
  %157 = load ptr, ptr %arg4.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %157, i64 2
  %158 = load i64, ptr %arrayidx58, align 8
  store i64 %158, ptr %x70, align 8
  %159 = load ptr, ptr %arg4.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %159, i64 1
  %160 = load i64, ptr %arrayidx59, align 8
  store i64 %160, ptr %x71, align 8
  %161 = load ptr, ptr %arg4.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %161, i64 0
  %162 = load i64, ptr %arrayidx60, align 8
  store i64 %162, ptr %x72, align 8
  %163 = load i64, ptr %x72, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %163)
  %164 = load i8, ptr %x74, align 1
  %165 = load i64, ptr %x71, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %164, i64 noundef 0, i64 noundef %165)
  %166 = load i8, ptr %x76, align 1
  %167 = load i64, ptr %x70, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %166, i64 noundef 0, i64 noundef %167)
  %168 = load i8, ptr %x78, align 1
  %169 = load i64, ptr %x69, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %168, i64 noundef 0, i64 noundef %169)
  %170 = load i8, ptr %x80, align 1
  %171 = load i64, ptr %x68, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %170, i64 noundef 0, i64 noundef %171)
  %172 = load i8, ptr %x82, align 1
  %173 = load i64, ptr %x67, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %172, i64 noundef 0, i64 noundef %173)
  %174 = load i8, ptr %x84, align 1
  call void @fiat_p384_cmovznz_u64(ptr noundef %x85, i8 noundef zeroext %174, i64 noundef 0, i64 noundef -1)
  %175 = load i64, ptr %x73, align 8
  %176 = load i64, ptr %x85, align 8
  %and61 = and i64 %176, 4294967295
  call void @fiat_p384_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i64 noundef %175, i64 noundef %and61)
  %177 = load i8, ptr %x87, align 1
  %178 = load i64, ptr %x75, align 8
  %179 = load i64, ptr %x85, align 8
  %and62 = and i64 %179, -4294967296
  call void @fiat_p384_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %177, i64 noundef %178, i64 noundef %and62)
  %180 = load i8, ptr %x89, align 1
  %181 = load i64, ptr %x77, align 8
  %182 = load i64, ptr %x85, align 8
  %and63 = and i64 %182, -2
  call void @fiat_p384_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %180, i64 noundef %181, i64 noundef %and63)
  %183 = load i8, ptr %x91, align 1
  %184 = load i64, ptr %x79, align 8
  %185 = load i64, ptr %x85, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x93, align 1
  %187 = load i64, ptr %x81, align 8
  %188 = load i64, ptr %x85, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x95, align 1
  %190 = load i64, ptr %x83, align 8
  %191 = load i64, ptr %x85, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x3, align 1
  %193 = load ptr, ptr %arg5.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %193, i64 0
  %194 = load i64, ptr %arrayidx64, align 8
  %195 = load i64, ptr %x86, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x98, i8 noundef zeroext %192, i64 noundef %194, i64 noundef %195)
  %196 = load i8, ptr %x3, align 1
  %197 = load ptr, ptr %arg5.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %197, i64 1
  %198 = load i64, ptr %arrayidx65, align 8
  %199 = load i64, ptr %x88, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x99, i8 noundef zeroext %196, i64 noundef %198, i64 noundef %199)
  %200 = load i8, ptr %x3, align 1
  %201 = load ptr, ptr %arg5.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %201, i64 2
  %202 = load i64, ptr %arrayidx66, align 8
  %203 = load i64, ptr %x90, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x100, i8 noundef zeroext %200, i64 noundef %202, i64 noundef %203)
  %204 = load i8, ptr %x3, align 1
  %205 = load ptr, ptr %arg5.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %205, i64 3
  %206 = load i64, ptr %arrayidx67, align 8
  %207 = load i64, ptr %x92, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x101, i8 noundef zeroext %204, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x3, align 1
  %209 = load ptr, ptr %arg5.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %209, i64 4
  %210 = load i64, ptr %arrayidx68, align 8
  %211 = load i64, ptr %x94, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x102, i8 noundef zeroext %208, i64 noundef %210, i64 noundef %211)
  %212 = load i8, ptr %x3, align 1
  %213 = load ptr, ptr %arg5.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %213, i64 5
  %214 = load i64, ptr %arrayidx69, align 8
  %215 = load i64, ptr %x96, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x103, i8 noundef zeroext %212, i64 noundef %214, i64 noundef %215)
  %216 = load i64, ptr %x28, align 8
  %and70 = and i64 %216, 1
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x104, align 1
  %217 = load i8, ptr %x104, align 1
  %218 = load i64, ptr %x7, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x105, i8 noundef zeroext %217, i64 noundef 0, i64 noundef %218)
  %219 = load i8, ptr %x104, align 1
  %220 = load i64, ptr %x8, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x106, i8 noundef zeroext %219, i64 noundef 0, i64 noundef %220)
  %221 = load i8, ptr %x104, align 1
  %222 = load i64, ptr %x9, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x107, i8 noundef zeroext %221, i64 noundef 0, i64 noundef %222)
  %223 = load i8, ptr %x104, align 1
  %224 = load i64, ptr %x10, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x108, i8 noundef zeroext %223, i64 noundef 0, i64 noundef %224)
  %225 = load i8, ptr %x104, align 1
  %226 = load i64, ptr %x11, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x109, i8 noundef zeroext %225, i64 noundef 0, i64 noundef %226)
  %227 = load i8, ptr %x104, align 1
  %228 = load i64, ptr %x12, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x110, i8 noundef zeroext %227, i64 noundef 0, i64 noundef %228)
  %229 = load i8, ptr %x104, align 1
  %230 = load i64, ptr %x13, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x111, i8 noundef zeroext %229, i64 noundef 0, i64 noundef %230)
  %231 = load i64, ptr %x28, align 8
  %232 = load i64, ptr %x105, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext 0, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x113, align 1
  %234 = load i64, ptr %x29, align 8
  %235 = load i64, ptr %x106, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %233, i64 noundef %234, i64 noundef %235)
  %236 = load i8, ptr %x115, align 1
  %237 = load i64, ptr %x30, align 8
  %238 = load i64, ptr %x107, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %236, i64 noundef %237, i64 noundef %238)
  %239 = load i8, ptr %x117, align 1
  %240 = load i64, ptr %x31, align 8
  %241 = load i64, ptr %x108, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %239, i64 noundef %240, i64 noundef %241)
  %242 = load i8, ptr %x119, align 1
  %243 = load i64, ptr %x32, align 8
  %244 = load i64, ptr %x109, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %242, i64 noundef %243, i64 noundef %244)
  %245 = load i8, ptr %x121, align 1
  %246 = load i64, ptr %x33, align 8
  %247 = load i64, ptr %x110, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %245, i64 noundef %246, i64 noundef %247)
  %248 = load i8, ptr %x123, align 1
  %249 = load i64, ptr %x34, align 8
  %250 = load i64, ptr %x111, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %248, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x104, align 1
  %252 = load i64, ptr %x35, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x126, i8 noundef zeroext %251, i64 noundef 0, i64 noundef %252)
  %253 = load i8, ptr %x104, align 1
  %254 = load i64, ptr %x36, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x127, i8 noundef zeroext %253, i64 noundef 0, i64 noundef %254)
  %255 = load i8, ptr %x104, align 1
  %256 = load i64, ptr %x37, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x128, i8 noundef zeroext %255, i64 noundef 0, i64 noundef %256)
  %257 = load i8, ptr %x104, align 1
  %258 = load i64, ptr %x38, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x129, i8 noundef zeroext %257, i64 noundef 0, i64 noundef %258)
  %259 = load i8, ptr %x104, align 1
  %260 = load i64, ptr %x39, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x130, i8 noundef zeroext %259, i64 noundef 0, i64 noundef %260)
  %261 = load i8, ptr %x104, align 1
  %262 = load i64, ptr %x40, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x131, i8 noundef zeroext %261, i64 noundef 0, i64 noundef %262)
  %263 = load i64, ptr %x98, align 8
  %264 = load i64, ptr %x126, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext 0, i64 noundef %263, i64 noundef %264)
  %265 = load i8, ptr %x133, align 1
  %266 = load i64, ptr %x99, align 8
  %267 = load i64, ptr %x127, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %265, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x135, align 1
  %269 = load i64, ptr %x100, align 8
  %270 = load i64, ptr %x128, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i8, ptr %x137, align 1
  %272 = load i64, ptr %x101, align 8
  %273 = load i64, ptr %x129, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %271, i64 noundef %272, i64 noundef %273)
  %274 = load i8, ptr %x139, align 1
  %275 = load i64, ptr %x102, align 8
  %276 = load i64, ptr %x130, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %274, i64 noundef %275, i64 noundef %276)
  %277 = load i8, ptr %x141, align 1
  %278 = load i64, ptr %x103, align 8
  %279 = load i64, ptr %x131, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %277, i64 noundef %278, i64 noundef %279)
  %280 = load i64, ptr %x132, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext 0, i64 noundef %280, i64 noundef 4294967295)
  %281 = load i8, ptr %x145, align 1
  %282 = load i64, ptr %x134, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %281, i64 noundef %282, i64 noundef -4294967296)
  %283 = load i8, ptr %x147, align 1
  %284 = load i64, ptr %x136, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %283, i64 noundef %284, i64 noundef -2)
  %285 = load i8, ptr %x149, align 1
  %286 = load i64, ptr %x138, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %285, i64 noundef %286, i64 noundef -1)
  %287 = load i8, ptr %x151, align 1
  %288 = load i64, ptr %x140, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %287, i64 noundef %288, i64 noundef -1)
  %289 = load i8, ptr %x153, align 1
  %290 = load i64, ptr %x142, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %289, i64 noundef %290, i64 noundef -1)
  %291 = load i8, ptr %x155, align 1
  %292 = load i8, ptr %x143, align 1
  %conv72 = zext i8 %292 to i64
  call void @fiat_p384_subborrowx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %291, i64 noundef %conv72, i64 noundef 0)
  %293 = load i64, ptr %x6, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i64 noundef %293, i64 noundef 1)
  %294 = load i64, ptr %x112, align 8
  %shr73 = lshr i64 %294, 1
  %295 = load i64, ptr %x114, align 8
  %shl = shl i64 %295, 63
  %and74 = and i64 %shl, -1
  %or = or i64 %shr73, %and74
  store i64 %or, ptr %x160, align 8
  %296 = load i64, ptr %x114, align 8
  %shr75 = lshr i64 %296, 1
  %297 = load i64, ptr %x116, align 8
  %shl76 = shl i64 %297, 63
  %and77 = and i64 %shl76, -1
  %or78 = or i64 %shr75, %and77
  store i64 %or78, ptr %x161, align 8
  %298 = load i64, ptr %x116, align 8
  %shr79 = lshr i64 %298, 1
  %299 = load i64, ptr %x118, align 8
  %shl80 = shl i64 %299, 63
  %and81 = and i64 %shl80, -1
  %or82 = or i64 %shr79, %and81
  store i64 %or82, ptr %x162, align 8
  %300 = load i64, ptr %x118, align 8
  %shr83 = lshr i64 %300, 1
  %301 = load i64, ptr %x120, align 8
  %shl84 = shl i64 %301, 63
  %and85 = and i64 %shl84, -1
  %or86 = or i64 %shr83, %and85
  store i64 %or86, ptr %x163, align 8
  %302 = load i64, ptr %x120, align 8
  %shr87 = lshr i64 %302, 1
  %303 = load i64, ptr %x122, align 8
  %shl88 = shl i64 %303, 63
  %and89 = and i64 %shl88, -1
  %or90 = or i64 %shr87, %and89
  store i64 %or90, ptr %x164, align 8
  %304 = load i64, ptr %x122, align 8
  %shr91 = lshr i64 %304, 1
  %305 = load i64, ptr %x124, align 8
  %shl92 = shl i64 %305, 63
  %and93 = and i64 %shl92, -1
  %or94 = or i64 %shr91, %and93
  store i64 %or94, ptr %x165, align 8
  %306 = load i64, ptr %x124, align 8
  %and95 = and i64 %306, -9223372036854775808
  %307 = load i64, ptr %x124, align 8
  %shr96 = lshr i64 %307, 1
  %or97 = or i64 %and95, %shr96
  store i64 %or97, ptr %x166, align 8
  %308 = load i8, ptr %x66, align 1
  %309 = load i64, ptr %x53, align 8
  %310 = load i64, ptr %x41, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x167, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x66, align 1
  %312 = load i64, ptr %x55, align 8
  %313 = load i64, ptr %x43, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x168, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x66, align 1
  %315 = load i64, ptr %x57, align 8
  %316 = load i64, ptr %x45, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x169, i8 noundef zeroext %314, i64 noundef %315, i64 noundef %316)
  %317 = load i8, ptr %x66, align 1
  %318 = load i64, ptr %x59, align 8
  %319 = load i64, ptr %x47, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x170, i8 noundef zeroext %317, i64 noundef %318, i64 noundef %319)
  %320 = load i8, ptr %x66, align 1
  %321 = load i64, ptr %x61, align 8
  %322 = load i64, ptr %x49, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x171, i8 noundef zeroext %320, i64 noundef %321, i64 noundef %322)
  %323 = load i8, ptr %x66, align 1
  %324 = load i64, ptr %x63, align 8
  %325 = load i64, ptr %x51, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x172, i8 noundef zeroext %323, i64 noundef %324, i64 noundef %325)
  %326 = load i8, ptr %x157, align 1
  %327 = load i64, ptr %x144, align 8
  %328 = load i64, ptr %x132, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x173, i8 noundef zeroext %326, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x157, align 1
  %330 = load i64, ptr %x146, align 8
  %331 = load i64, ptr %x134, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x174, i8 noundef zeroext %329, i64 noundef %330, i64 noundef %331)
  %332 = load i8, ptr %x157, align 1
  %333 = load i64, ptr %x148, align 8
  %334 = load i64, ptr %x136, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x175, i8 noundef zeroext %332, i64 noundef %333, i64 noundef %334)
  %335 = load i8, ptr %x157, align 1
  %336 = load i64, ptr %x150, align 8
  %337 = load i64, ptr %x138, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x176, i8 noundef zeroext %335, i64 noundef %336, i64 noundef %337)
  %338 = load i8, ptr %x157, align 1
  %339 = load i64, ptr %x152, align 8
  %340 = load i64, ptr %x140, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x177, i8 noundef zeroext %338, i64 noundef %339, i64 noundef %340)
  %341 = load i8, ptr %x157, align 1
  %342 = load i64, ptr %x154, align 8
  %343 = load i64, ptr %x142, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x178, i8 noundef zeroext %341, i64 noundef %342, i64 noundef %343)
  %344 = load i64, ptr %x158, align 8
  %345 = load ptr, ptr %out1.addr, align 8
  store i64 %344, ptr %345, align 8
  %346 = load i64, ptr %x7, align 8
  %347 = load ptr, ptr %out2.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %347, i64 0
  store i64 %346, ptr %arrayidx98, align 8
  %348 = load i64, ptr %x8, align 8
  %349 = load ptr, ptr %out2.addr, align 8
  %arrayidx99 = getelementptr inbounds i64, ptr %349, i64 1
  store i64 %348, ptr %arrayidx99, align 8
  %350 = load i64, ptr %x9, align 8
  %351 = load ptr, ptr %out2.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %351, i64 2
  store i64 %350, ptr %arrayidx100, align 8
  %352 = load i64, ptr %x10, align 8
  %353 = load ptr, ptr %out2.addr, align 8
  %arrayidx101 = getelementptr inbounds i64, ptr %353, i64 3
  store i64 %352, ptr %arrayidx101, align 8
  %354 = load i64, ptr %x11, align 8
  %355 = load ptr, ptr %out2.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %355, i64 4
  store i64 %354, ptr %arrayidx102, align 8
  %356 = load i64, ptr %x12, align 8
  %357 = load ptr, ptr %out2.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %357, i64 5
  store i64 %356, ptr %arrayidx103, align 8
  %358 = load i64, ptr %x13, align 8
  %359 = load ptr, ptr %out2.addr, align 8
  %arrayidx104 = getelementptr inbounds i64, ptr %359, i64 6
  store i64 %358, ptr %arrayidx104, align 8
  %360 = load i64, ptr %x160, align 8
  %361 = load ptr, ptr %out3.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %361, i64 0
  store i64 %360, ptr %arrayidx105, align 8
  %362 = load i64, ptr %x161, align 8
  %363 = load ptr, ptr %out3.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %363, i64 1
  store i64 %362, ptr %arrayidx106, align 8
  %364 = load i64, ptr %x162, align 8
  %365 = load ptr, ptr %out3.addr, align 8
  %arrayidx107 = getelementptr inbounds i64, ptr %365, i64 2
  store i64 %364, ptr %arrayidx107, align 8
  %366 = load i64, ptr %x163, align 8
  %367 = load ptr, ptr %out3.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %367, i64 3
  store i64 %366, ptr %arrayidx108, align 8
  %368 = load i64, ptr %x164, align 8
  %369 = load ptr, ptr %out3.addr, align 8
  %arrayidx109 = getelementptr inbounds i64, ptr %369, i64 4
  store i64 %368, ptr %arrayidx109, align 8
  %370 = load i64, ptr %x165, align 8
  %371 = load ptr, ptr %out3.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %371, i64 5
  store i64 %370, ptr %arrayidx110, align 8
  %372 = load i64, ptr %x166, align 8
  %373 = load ptr, ptr %out3.addr, align 8
  %arrayidx111 = getelementptr inbounds i64, ptr %373, i64 6
  store i64 %372, ptr %arrayidx111, align 8
  %374 = load i64, ptr %x167, align 8
  %375 = load ptr, ptr %out4.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %375, i64 0
  store i64 %374, ptr %arrayidx112, align 8
  %376 = load i64, ptr %x168, align 8
  %377 = load ptr, ptr %out4.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %377, i64 1
  store i64 %376, ptr %arrayidx113, align 8
  %378 = load i64, ptr %x169, align 8
  %379 = load ptr, ptr %out4.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %379, i64 2
  store i64 %378, ptr %arrayidx114, align 8
  %380 = load i64, ptr %x170, align 8
  %381 = load ptr, ptr %out4.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %381, i64 3
  store i64 %380, ptr %arrayidx115, align 8
  %382 = load i64, ptr %x171, align 8
  %383 = load ptr, ptr %out4.addr, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %383, i64 4
  store i64 %382, ptr %arrayidx116, align 8
  %384 = load i64, ptr %x172, align 8
  %385 = load ptr, ptr %out4.addr, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %385, i64 5
  store i64 %384, ptr %arrayidx117, align 8
  %386 = load i64, ptr %x173, align 8
  %387 = load ptr, ptr %out5.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %387, i64 0
  store i64 %386, ptr %arrayidx118, align 8
  %388 = load i64, ptr %x174, align 8
  %389 = load ptr, ptr %out5.addr, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %389, i64 1
  store i64 %388, ptr %arrayidx119, align 8
  %390 = load i64, ptr %x175, align 8
  %391 = load ptr, ptr %out5.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %391, i64 2
  store i64 %390, ptr %arrayidx120, align 8
  %392 = load i64, ptr %x176, align 8
  %393 = load ptr, ptr %out5.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, ptr %393, i64 3
  store i64 %392, ptr %arrayidx121, align 8
  %394 = load i64, ptr %x177, align 8
  %395 = load ptr, ptr %out5.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %395, i64 4
  store i64 %394, ptr %arrayidx122, align 8
  %396 = load i64, ptr %x178, align 8
  %397 = load ptr, ptr %out5.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %397, i64 5
  store i64 %396, ptr %arrayidx123, align 8
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
