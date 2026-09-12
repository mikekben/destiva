; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i32 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %out3.addr = alloca ptr, align 8
  %out4.addr = alloca ptr, align 8
  %out5.addr = alloca ptr, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %arg4.addr = alloca ptr, align 8
  %arg5.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i8, align 1
  %x4 = alloca i32, align 4
  %x5 = alloca i8, align 1
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i8, align 1
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i8, align 1
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i32, align 4
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
  %x50 = alloca i32, align 4
  %x51 = alloca i8, align 1
  %x52 = alloca i32, align 4
  %x53 = alloca i8, align 1
  %x54 = alloca i32, align 4
  %x55 = alloca i8, align 1
  %x56 = alloca i32, align 4
  %x57 = alloca i8, align 1
  %x58 = alloca i32, align 4
  %x59 = alloca i8, align 1
  %x60 = alloca i32, align 4
  %x61 = alloca i8, align 1
  %x62 = alloca i32, align 4
  %x63 = alloca i8, align 1
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
  %x66 = alloca i32, align 4
  %x67 = alloca i8, align 1
  %x68 = alloca i32, align 4
  %x69 = alloca i8, align 1
  %x70 = alloca i32, align 4
  %x71 = alloca i8, align 1
  %x72 = alloca i32, align 4
  %x73 = alloca i8, align 1
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
  %x76 = alloca i32, align 4
  %x77 = alloca i32, align 4
  %x78 = alloca i32, align 4
  %x79 = alloca i32, align 4
  %x80 = alloca i32, align 4
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
  %x83 = alloca i32, align 4
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %x89 = alloca i32, align 4
  %x90 = alloca i8, align 1
  %x91 = alloca i32, align 4
  %x92 = alloca i8, align 1
  %x93 = alloca i32, align 4
  %x94 = alloca i8, align 1
  %x95 = alloca i32, align 4
  %x96 = alloca i8, align 1
  %x97 = alloca i32, align 4
  %x98 = alloca i32, align 4
  %x99 = alloca i8, align 1
  %x100 = alloca i32, align 4
  %x101 = alloca i8, align 1
  %x102 = alloca i32, align 4
  %x103 = alloca i8, align 1
  %x104 = alloca i32, align 4
  %x105 = alloca i8, align 1
  %x106 = alloca i32, align 4
  %x107 = alloca i8, align 1
  %x108 = alloca i32, align 4
  %x109 = alloca i8, align 1
  %x110 = alloca i32, align 4
  %x111 = alloca i8, align 1
  %x112 = alloca i32, align 4
  %x113 = alloca i32, align 4
  %x114 = alloca i32, align 4
  %x115 = alloca i32, align 4
  %x116 = alloca i32, align 4
  %x117 = alloca i32, align 4
  %x118 = alloca i32, align 4
  %x119 = alloca i8, align 1
  %x120 = alloca i32, align 4
  %x121 = alloca i32, align 4
  %x122 = alloca i32, align 4
  %x123 = alloca i32, align 4
  %x124 = alloca i32, align 4
  %x125 = alloca i32, align 4
  %x126 = alloca i32, align 4
  %x127 = alloca i32, align 4
  %x128 = alloca i32, align 4
  %x129 = alloca i8, align 1
  %x130 = alloca i32, align 4
  %x131 = alloca i8, align 1
  %x132 = alloca i32, align 4
  %x133 = alloca i8, align 1
  %x134 = alloca i32, align 4
  %x135 = alloca i8, align 1
  %x136 = alloca i32, align 4
  %x137 = alloca i8, align 1
  %x138 = alloca i32, align 4
  %x139 = alloca i8, align 1
  %x140 = alloca i32, align 4
  %x141 = alloca i8, align 1
  %x142 = alloca i32, align 4
  %x143 = alloca i8, align 1
  %x144 = alloca i32, align 4
  %x145 = alloca i32, align 4
  %x146 = alloca i32, align 4
  %x147 = alloca i32, align 4
  %x148 = alloca i32, align 4
  %x149 = alloca i32, align 4
  %x150 = alloca i32, align 4
  %x151 = alloca i32, align 4
  %x152 = alloca i8, align 1
  %x153 = alloca i32, align 4
  %x154 = alloca i8, align 1
  %x155 = alloca i32, align 4
  %x156 = alloca i8, align 1
  %x157 = alloca i32, align 4
  %x158 = alloca i8, align 1
  %x159 = alloca i32, align 4
  %x160 = alloca i8, align 1
  %x161 = alloca i32, align 4
  %x162 = alloca i8, align 1
  %x163 = alloca i32, align 4
  %x164 = alloca i8, align 1
  %x165 = alloca i32, align 4
  %x166 = alloca i8, align 1
  %x167 = alloca i32, align 4
  %x168 = alloca i8, align 1
  %x169 = alloca i32, align 4
  %x170 = alloca i8, align 1
  %x171 = alloca i32, align 4
  %x172 = alloca i8, align 1
  %x173 = alloca i32, align 4
  %x174 = alloca i8, align 1
  %x175 = alloca i32, align 4
  %x176 = alloca i8, align 1
  %x177 = alloca i32, align 4
  %x178 = alloca i8, align 1
  %x179 = alloca i32, align 4
  %x180 = alloca i8, align 1
  %x181 = alloca i32, align 4
  %x182 = alloca i8, align 1
  %x183 = alloca i32, align 4
  %x184 = alloca i32, align 4
  %x185 = alloca i32, align 4
  %x186 = alloca i32, align 4
  %x187 = alloca i32, align 4
  %x188 = alloca i32, align 4
  %x189 = alloca i32, align 4
  %x190 = alloca i32, align 4
  %x191 = alloca i32, align 4
  %x192 = alloca i32, align 4
  %x193 = alloca i32, align 4
  %x194 = alloca i32, align 4
  %x195 = alloca i32, align 4
  %x196 = alloca i32, align 4
  %x197 = alloca i32, align 4
  %x198 = alloca i32, align 4
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
  %x201 = alloca i32, align 4
  %x202 = alloca i32, align 4
  %x203 = alloca i32, align 4
  %x204 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store ptr %out3, ptr %out3.addr, align 8
  store ptr %out4, ptr %out4.addr, align 8
  store ptr %out5, ptr %out5.addr, align 8
  store i32 %arg1, ptr %arg1.addr, align 4
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  store ptr %arg4, ptr %arg4.addr, align 8
  store ptr %arg5, ptr %arg5.addr, align 8
  %0 = load i32, ptr %arg1.addr, align 4
  %not = xor i32 %0, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %not, i32 noundef 1)
  %1 = load i32, ptr %x1, align 4
  %shr = lshr i32 %1, 31
  %conv = trunc i32 %shr to i8
  %conv1 = zext i8 %conv to i32
  %2 = load ptr, ptr %arg3.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 1
  %conv2 = trunc i32 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv1, %conv3
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %x3, align 1
  %4 = load i32, ptr %arg1.addr, align 4
  %not6 = xor i32 %4, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i32 noundef %not6, i32 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i32, ptr %arg1.addr, align 4
  %7 = load i32, ptr %x4, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx7, align 4
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx8, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %8, i32 noundef %10, i32 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx10, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %13, i32 noundef %15, i32 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 2
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 2
  %22 = load i32, ptr %arrayidx12, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x9, i8 noundef zeroext %18, i32 noundef %20, i32 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx14, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x10, i8 noundef zeroext %23, i32 noundef %25, i32 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %29, i64 4
  %30 = load i32, ptr %arrayidx15, align 4
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %31, i64 4
  %32 = load i32, ptr %arrayidx16, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %28, i32 noundef %30, i32 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %34, i64 5
  %35 = load i32, ptr %arrayidx17, align 4
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %36, i64 5
  %37 = load i32, ptr %arrayidx18, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x12, i8 noundef zeroext %33, i32 noundef %35, i32 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 6
  %40 = load i32, ptr %arrayidx19, align 4
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %41, i64 6
  %42 = load i32, ptr %arrayidx20, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x13, i8 noundef zeroext %38, i32 noundef %40, i32 noundef %42)
  %43 = load i8, ptr %x3, align 1
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %44, i64 7
  %45 = load i32, ptr %arrayidx21, align 4
  %46 = load ptr, ptr %arg3.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %46, i64 7
  %47 = load i32, ptr %arrayidx22, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x14, i8 noundef zeroext %43, i32 noundef %45, i32 noundef %47)
  %48 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %48, i64 0
  %49 = load i32, ptr %arrayidx23, align 4
  %not24 = xor i32 %49, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext 0, i32 noundef 1, i32 noundef %not24)
  %50 = load i8, ptr %x16, align 1
  %51 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %51, i64 1
  %52 = load i32, ptr %arrayidx25, align 4
  %not26 = xor i32 %52, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %50, i32 noundef 0, i32 noundef %not26)
  %53 = load i8, ptr %x18, align 1
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %54, i64 2
  %55 = load i32, ptr %arrayidx27, align 4
  %not28 = xor i32 %55, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %53, i32 noundef 0, i32 noundef %not28)
  %56 = load i8, ptr %x20, align 1
  %57 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %57, i64 3
  %58 = load i32, ptr %arrayidx29, align 4
  %not30 = xor i32 %58, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %56, i32 noundef 0, i32 noundef %not30)
  %59 = load i8, ptr %x22, align 1
  %60 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %60, i64 4
  %61 = load i32, ptr %arrayidx31, align 4
  %not32 = xor i32 %61, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %59, i32 noundef 0, i32 noundef %not32)
  %62 = load i8, ptr %x24, align 1
  %63 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %63, i64 5
  %64 = load i32, ptr %arrayidx33, align 4
  %not34 = xor i32 %64, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %62, i32 noundef 0, i32 noundef %not34)
  %65 = load i8, ptr %x26, align 1
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %66, i64 6
  %67 = load i32, ptr %arrayidx35, align 4
  %not36 = xor i32 %67, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %65, i32 noundef 0, i32 noundef %not36)
  %68 = load i8, ptr %x28, align 1
  %69 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %69, i64 7
  %70 = load i32, ptr %arrayidx37, align 4
  %not38 = xor i32 %70, -1
  call void @fiat_p224_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %68, i32 noundef 0, i32 noundef %not38)
  %71 = load i8, ptr %x3, align 1
  %72 = load ptr, ptr %arg3.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %72, i64 0
  %73 = load i32, ptr %arrayidx39, align 4
  %74 = load i32, ptr %x15, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x31, i8 noundef zeroext %71, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x3, align 1
  %76 = load ptr, ptr %arg3.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %76, i64 1
  %77 = load i32, ptr %arrayidx40, align 4
  %78 = load i32, ptr %x17, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x32, i8 noundef zeroext %75, i32 noundef %77, i32 noundef %78)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %80, i64 2
  %81 = load i32, ptr %arrayidx41, align 4
  %82 = load i32, ptr %x19, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x33, i8 noundef zeroext %79, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %84, i64 3
  %85 = load i32, ptr %arrayidx42, align 4
  %86 = load i32, ptr %x21, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x34, i8 noundef zeroext %83, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %88, i64 4
  %89 = load i32, ptr %arrayidx43, align 4
  %90 = load i32, ptr %x23, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x35, i8 noundef zeroext %87, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg3.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %92, i64 5
  %93 = load i32, ptr %arrayidx44, align 4
  %94 = load i32, ptr %x25, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x36, i8 noundef zeroext %91, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x3, align 1
  %96 = load ptr, ptr %arg3.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %96, i64 6
  %97 = load i32, ptr %arrayidx45, align 4
  %98 = load i32, ptr %x27, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x37, i8 noundef zeroext %95, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x3, align 1
  %100 = load ptr, ptr %arg3.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %100, i64 7
  %101 = load i32, ptr %arrayidx46, align 4
  %102 = load i32, ptr %x29, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x38, i8 noundef zeroext %99, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x3, align 1
  %104 = load ptr, ptr %arg4.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %104, i64 0
  %105 = load i32, ptr %arrayidx47, align 4
  %106 = load ptr, ptr %arg5.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %106, i64 0
  %107 = load i32, ptr %arrayidx48, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x39, i8 noundef zeroext %103, i32 noundef %105, i32 noundef %107)
  %108 = load i8, ptr %x3, align 1
  %109 = load ptr, ptr %arg4.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %109, i64 1
  %110 = load i32, ptr %arrayidx49, align 4
  %111 = load ptr, ptr %arg5.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %111, i64 1
  %112 = load i32, ptr %arrayidx50, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x40, i8 noundef zeroext %108, i32 noundef %110, i32 noundef %112)
  %113 = load i8, ptr %x3, align 1
  %114 = load ptr, ptr %arg4.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %114, i64 2
  %115 = load i32, ptr %arrayidx51, align 4
  %116 = load ptr, ptr %arg5.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %116, i64 2
  %117 = load i32, ptr %arrayidx52, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x41, i8 noundef zeroext %113, i32 noundef %115, i32 noundef %117)
  %118 = load i8, ptr %x3, align 1
  %119 = load ptr, ptr %arg4.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %119, i64 3
  %120 = load i32, ptr %arrayidx53, align 4
  %121 = load ptr, ptr %arg5.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %121, i64 3
  %122 = load i32, ptr %arrayidx54, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x42, i8 noundef zeroext %118, i32 noundef %120, i32 noundef %122)
  %123 = load i8, ptr %x3, align 1
  %124 = load ptr, ptr %arg4.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %124, i64 4
  %125 = load i32, ptr %arrayidx55, align 4
  %126 = load ptr, ptr %arg5.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %126, i64 4
  %127 = load i32, ptr %arrayidx56, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x43, i8 noundef zeroext %123, i32 noundef %125, i32 noundef %127)
  %128 = load i8, ptr %x3, align 1
  %129 = load ptr, ptr %arg4.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %129, i64 5
  %130 = load i32, ptr %arrayidx57, align 4
  %131 = load ptr, ptr %arg5.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %131, i64 5
  %132 = load i32, ptr %arrayidx58, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x44, i8 noundef zeroext %128, i32 noundef %130, i32 noundef %132)
  %133 = load i8, ptr %x3, align 1
  %134 = load ptr, ptr %arg4.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %134, i64 6
  %135 = load i32, ptr %arrayidx59, align 4
  %136 = load ptr, ptr %arg5.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %136, i64 6
  %137 = load i32, ptr %arrayidx60, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x45, i8 noundef zeroext %133, i32 noundef %135, i32 noundef %137)
  %138 = load i32, ptr %x39, align 4
  %139 = load i32, ptr %x39, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext 0, i32 noundef %138, i32 noundef %139)
  %140 = load i8, ptr %x47, align 1
  %141 = load i32, ptr %x40, align 4
  %142 = load i32, ptr %x40, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %140, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x49, align 1
  %144 = load i32, ptr %x41, align 4
  %145 = load i32, ptr %x41, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %143, i32 noundef %144, i32 noundef %145)
  %146 = load i8, ptr %x51, align 1
  %147 = load i32, ptr %x42, align 4
  %148 = load i32, ptr %x42, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %146, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x53, align 1
  %150 = load i32, ptr %x43, align 4
  %151 = load i32, ptr %x43, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i8, ptr %x55, align 1
  %153 = load i32, ptr %x44, align 4
  %154 = load i32, ptr %x44, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %152, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x57, align 1
  %156 = load i32, ptr %x45, align 4
  %157 = load i32, ptr %x45, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i32, ptr %x46, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i32 noundef %158, i32 noundef 1)
  %159 = load i8, ptr %x61, align 1
  %160 = load i32, ptr %x48, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %159, i32 noundef %160, i32 noundef 0)
  %161 = load i8, ptr %x63, align 1
  %162 = load i32, ptr %x50, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %161, i32 noundef %162, i32 noundef 0)
  %163 = load i8, ptr %x65, align 1
  %164 = load i32, ptr %x52, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %163, i32 noundef %164, i32 noundef -1)
  %165 = load i8, ptr %x67, align 1
  %166 = load i32, ptr %x54, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %165, i32 noundef %166, i32 noundef -1)
  %167 = load i8, ptr %x69, align 1
  %168 = load i32, ptr %x56, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %167, i32 noundef %168, i32 noundef -1)
  %169 = load i8, ptr %x71, align 1
  %170 = load i32, ptr %x58, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %169, i32 noundef %170, i32 noundef -1)
  %171 = load i8, ptr %x73, align 1
  %172 = load i8, ptr %x59, align 1
  %conv61 = zext i8 %172 to i32
  call void @fiat_p224_subborrowx_u32(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %171, i32 noundef %conv61, i32 noundef 0)
  %173 = load ptr, ptr %arg4.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %173, i64 6
  %174 = load i32, ptr %arrayidx62, align 4
  store i32 %174, ptr %x76, align 4
  %175 = load ptr, ptr %arg4.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %175, i64 5
  %176 = load i32, ptr %arrayidx63, align 4
  store i32 %176, ptr %x77, align 4
  %177 = load ptr, ptr %arg4.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %177, i64 4
  %178 = load i32, ptr %arrayidx64, align 4
  store i32 %178, ptr %x78, align 4
  %179 = load ptr, ptr %arg4.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %179, i64 3
  %180 = load i32, ptr %arrayidx65, align 4
  store i32 %180, ptr %x79, align 4
  %181 = load ptr, ptr %arg4.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %181, i64 2
  %182 = load i32, ptr %arrayidx66, align 4
  store i32 %182, ptr %x80, align 4
  %183 = load ptr, ptr %arg4.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %183, i64 1
  %184 = load i32, ptr %arrayidx67, align 4
  store i32 %184, ptr %x81, align 4
  %185 = load ptr, ptr %arg4.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %185, i64 0
  %186 = load i32, ptr %arrayidx68, align 4
  store i32 %186, ptr %x82, align 4
  %187 = load i32, ptr %x82, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %187)
  %188 = load i8, ptr %x84, align 1
  %189 = load i32, ptr %x81, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %188, i32 noundef 0, i32 noundef %189)
  %190 = load i8, ptr %x86, align 1
  %191 = load i32, ptr %x80, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %190, i32 noundef 0, i32 noundef %191)
  %192 = load i8, ptr %x88, align 1
  %193 = load i32, ptr %x79, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %192, i32 noundef 0, i32 noundef %193)
  %194 = load i8, ptr %x90, align 1
  %195 = load i32, ptr %x78, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %194, i32 noundef 0, i32 noundef %195)
  %196 = load i8, ptr %x92, align 1
  %197 = load i32, ptr %x77, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %196, i32 noundef 0, i32 noundef %197)
  %198 = load i8, ptr %x94, align 1
  %199 = load i32, ptr %x76, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %198, i32 noundef 0, i32 noundef %199)
  %200 = load i8, ptr %x96, align 1
  call void @fiat_p224_cmovznz_u32(ptr noundef %x97, i8 noundef zeroext %200, i32 noundef 0, i32 noundef -1)
  %201 = load i32, ptr %x83, align 4
  %202 = load i32, ptr %x97, align 4
  %and69 = and i32 %202, 1
  %conv70 = trunc i32 %and69 to i8
  %conv71 = zext i8 %conv70 to i32
  call void @fiat_p224_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext 0, i32 noundef %201, i32 noundef %conv71)
  %203 = load i8, ptr %x99, align 1
  %204 = load i32, ptr %x85, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %203, i32 noundef %204, i32 noundef 0)
  %205 = load i8, ptr %x101, align 1
  %206 = load i32, ptr %x87, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %205, i32 noundef %206, i32 noundef 0)
  %207 = load i8, ptr %x103, align 1
  %208 = load i32, ptr %x89, align 4
  %209 = load i32, ptr %x97, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %207, i32 noundef %208, i32 noundef %209)
  %210 = load i8, ptr %x105, align 1
  %211 = load i32, ptr %x91, align 4
  %212 = load i32, ptr %x97, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %210, i32 noundef %211, i32 noundef %212)
  %213 = load i8, ptr %x107, align 1
  %214 = load i32, ptr %x93, align 4
  %215 = load i32, ptr %x97, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %213, i32 noundef %214, i32 noundef %215)
  %216 = load i8, ptr %x109, align 1
  %217 = load i32, ptr %x95, align 4
  %218 = load i32, ptr %x97, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %216, i32 noundef %217, i32 noundef %218)
  %219 = load i8, ptr %x3, align 1
  %220 = load ptr, ptr %arg5.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %220, i64 0
  %221 = load i32, ptr %arrayidx72, align 4
  %222 = load i32, ptr %x98, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x112, i8 noundef zeroext %219, i32 noundef %221, i32 noundef %222)
  %223 = load i8, ptr %x3, align 1
  %224 = load ptr, ptr %arg5.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %224, i64 1
  %225 = load i32, ptr %arrayidx73, align 4
  %226 = load i32, ptr %x100, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x113, i8 noundef zeroext %223, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x3, align 1
  %228 = load ptr, ptr %arg5.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %228, i64 2
  %229 = load i32, ptr %arrayidx74, align 4
  %230 = load i32, ptr %x102, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x114, i8 noundef zeroext %227, i32 noundef %229, i32 noundef %230)
  %231 = load i8, ptr %x3, align 1
  %232 = load ptr, ptr %arg5.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %232, i64 3
  %233 = load i32, ptr %arrayidx75, align 4
  %234 = load i32, ptr %x104, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x115, i8 noundef zeroext %231, i32 noundef %233, i32 noundef %234)
  %235 = load i8, ptr %x3, align 1
  %236 = load ptr, ptr %arg5.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %236, i64 4
  %237 = load i32, ptr %arrayidx76, align 4
  %238 = load i32, ptr %x106, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x116, i8 noundef zeroext %235, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x3, align 1
  %240 = load ptr, ptr %arg5.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %240, i64 5
  %241 = load i32, ptr %arrayidx77, align 4
  %242 = load i32, ptr %x108, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x117, i8 noundef zeroext %239, i32 noundef %241, i32 noundef %242)
  %243 = load i8, ptr %x3, align 1
  %244 = load ptr, ptr %arg5.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %244, i64 6
  %245 = load i32, ptr %arrayidx78, align 4
  %246 = load i32, ptr %x110, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x118, i8 noundef zeroext %243, i32 noundef %245, i32 noundef %246)
  %247 = load i32, ptr %x31, align 4
  %and79 = and i32 %247, 1
  %conv80 = trunc i32 %and79 to i8
  store i8 %conv80, ptr %x119, align 1
  %248 = load i8, ptr %x119, align 1
  %249 = load i32, ptr %x7, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x120, i8 noundef zeroext %248, i32 noundef 0, i32 noundef %249)
  %250 = load i8, ptr %x119, align 1
  %251 = load i32, ptr %x8, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x121, i8 noundef zeroext %250, i32 noundef 0, i32 noundef %251)
  %252 = load i8, ptr %x119, align 1
  %253 = load i32, ptr %x9, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x122, i8 noundef zeroext %252, i32 noundef 0, i32 noundef %253)
  %254 = load i8, ptr %x119, align 1
  %255 = load i32, ptr %x10, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x123, i8 noundef zeroext %254, i32 noundef 0, i32 noundef %255)
  %256 = load i8, ptr %x119, align 1
  %257 = load i32, ptr %x11, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x124, i8 noundef zeroext %256, i32 noundef 0, i32 noundef %257)
  %258 = load i8, ptr %x119, align 1
  %259 = load i32, ptr %x12, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x125, i8 noundef zeroext %258, i32 noundef 0, i32 noundef %259)
  %260 = load i8, ptr %x119, align 1
  %261 = load i32, ptr %x13, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x126, i8 noundef zeroext %260, i32 noundef 0, i32 noundef %261)
  %262 = load i8, ptr %x119, align 1
  %263 = load i32, ptr %x14, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x127, i8 noundef zeroext %262, i32 noundef 0, i32 noundef %263)
  %264 = load i32, ptr %x31, align 4
  %265 = load i32, ptr %x120, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext 0, i32 noundef %264, i32 noundef %265)
  %266 = load i8, ptr %x129, align 1
  %267 = load i32, ptr %x32, align 4
  %268 = load i32, ptr %x121, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %266, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x131, align 1
  %270 = load i32, ptr %x33, align 4
  %271 = load i32, ptr %x122, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x133, align 1
  %273 = load i32, ptr %x34, align 4
  %274 = load i32, ptr %x123, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x135, align 1
  %276 = load i32, ptr %x35, align 4
  %277 = load i32, ptr %x124, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x137, align 1
  %279 = load i32, ptr %x36, align 4
  %280 = load i32, ptr %x125, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x139, align 1
  %282 = load i32, ptr %x37, align 4
  %283 = load i32, ptr %x126, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x141, align 1
  %285 = load i32, ptr %x38, align 4
  %286 = load i32, ptr %x127, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %286)
  %287 = load i8, ptr %x119, align 1
  %288 = load i32, ptr %x39, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x144, i8 noundef zeroext %287, i32 noundef 0, i32 noundef %288)
  %289 = load i8, ptr %x119, align 1
  %290 = load i32, ptr %x40, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x145, i8 noundef zeroext %289, i32 noundef 0, i32 noundef %290)
  %291 = load i8, ptr %x119, align 1
  %292 = load i32, ptr %x41, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x146, i8 noundef zeroext %291, i32 noundef 0, i32 noundef %292)
  %293 = load i8, ptr %x119, align 1
  %294 = load i32, ptr %x42, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x147, i8 noundef zeroext %293, i32 noundef 0, i32 noundef %294)
  %295 = load i8, ptr %x119, align 1
  %296 = load i32, ptr %x43, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x148, i8 noundef zeroext %295, i32 noundef 0, i32 noundef %296)
  %297 = load i8, ptr %x119, align 1
  %298 = load i32, ptr %x44, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x149, i8 noundef zeroext %297, i32 noundef 0, i32 noundef %298)
  %299 = load i8, ptr %x119, align 1
  %300 = load i32, ptr %x45, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x150, i8 noundef zeroext %299, i32 noundef 0, i32 noundef %300)
  %301 = load i32, ptr %x112, align 4
  %302 = load i32, ptr %x144, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext 0, i32 noundef %301, i32 noundef %302)
  %303 = load i8, ptr %x152, align 1
  %304 = load i32, ptr %x113, align 4
  %305 = load i32, ptr %x145, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %303, i32 noundef %304, i32 noundef %305)
  %306 = load i8, ptr %x154, align 1
  %307 = load i32, ptr %x114, align 4
  %308 = load i32, ptr %x146, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %306, i32 noundef %307, i32 noundef %308)
  %309 = load i8, ptr %x156, align 1
  %310 = load i32, ptr %x115, align 4
  %311 = load i32, ptr %x147, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %309, i32 noundef %310, i32 noundef %311)
  %312 = load i8, ptr %x158, align 1
  %313 = load i32, ptr %x116, align 4
  %314 = load i32, ptr %x148, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %312, i32 noundef %313, i32 noundef %314)
  %315 = load i8, ptr %x160, align 1
  %316 = load i32, ptr %x117, align 4
  %317 = load i32, ptr %x149, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %315, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x162, align 1
  %319 = load i32, ptr %x118, align 4
  %320 = load i32, ptr %x150, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %318, i32 noundef %319, i32 noundef %320)
  %321 = load i32, ptr %x151, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext 0, i32 noundef %321, i32 noundef 1)
  %322 = load i8, ptr %x166, align 1
  %323 = load i32, ptr %x153, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %322, i32 noundef %323, i32 noundef 0)
  %324 = load i8, ptr %x168, align 1
  %325 = load i32, ptr %x155, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %324, i32 noundef %325, i32 noundef 0)
  %326 = load i8, ptr %x170, align 1
  %327 = load i32, ptr %x157, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %326, i32 noundef %327, i32 noundef -1)
  %328 = load i8, ptr %x172, align 1
  %329 = load i32, ptr %x159, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %328, i32 noundef %329, i32 noundef -1)
  %330 = load i8, ptr %x174, align 1
  %331 = load i32, ptr %x161, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %330, i32 noundef %331, i32 noundef -1)
  %332 = load i8, ptr %x176, align 1
  %333 = load i32, ptr %x163, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %332, i32 noundef %333, i32 noundef -1)
  %334 = load i8, ptr %x178, align 1
  %335 = load i8, ptr %x164, align 1
  %conv81 = zext i8 %335 to i32
  call void @fiat_p224_subborrowx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %334, i32 noundef %conv81, i32 noundef 0)
  %336 = load i32, ptr %x6, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext 0, i32 noundef %336, i32 noundef 1)
  %337 = load i32, ptr %x128, align 4
  %shr82 = lshr i32 %337, 1
  %338 = load i32, ptr %x130, align 4
  %shl = shl i32 %338, 31
  %and83 = and i32 %shl, -1
  %or = or i32 %shr82, %and83
  store i32 %or, ptr %x183, align 4
  %339 = load i32, ptr %x130, align 4
  %shr84 = lshr i32 %339, 1
  %340 = load i32, ptr %x132, align 4
  %shl85 = shl i32 %340, 31
  %and86 = and i32 %shl85, -1
  %or87 = or i32 %shr84, %and86
  store i32 %or87, ptr %x184, align 4
  %341 = load i32, ptr %x132, align 4
  %shr88 = lshr i32 %341, 1
  %342 = load i32, ptr %x134, align 4
  %shl89 = shl i32 %342, 31
  %and90 = and i32 %shl89, -1
  %or91 = or i32 %shr88, %and90
  store i32 %or91, ptr %x185, align 4
  %343 = load i32, ptr %x134, align 4
  %shr92 = lshr i32 %343, 1
  %344 = load i32, ptr %x136, align 4
  %shl93 = shl i32 %344, 31
  %and94 = and i32 %shl93, -1
  %or95 = or i32 %shr92, %and94
  store i32 %or95, ptr %x186, align 4
  %345 = load i32, ptr %x136, align 4
  %shr96 = lshr i32 %345, 1
  %346 = load i32, ptr %x138, align 4
  %shl97 = shl i32 %346, 31
  %and98 = and i32 %shl97, -1
  %or99 = or i32 %shr96, %and98
  store i32 %or99, ptr %x187, align 4
  %347 = load i32, ptr %x138, align 4
  %shr100 = lshr i32 %347, 1
  %348 = load i32, ptr %x140, align 4
  %shl101 = shl i32 %348, 31
  %and102 = and i32 %shl101, -1
  %or103 = or i32 %shr100, %and102
  store i32 %or103, ptr %x188, align 4
  %349 = load i32, ptr %x140, align 4
  %shr104 = lshr i32 %349, 1
  %350 = load i32, ptr %x142, align 4
  %shl105 = shl i32 %350, 31
  %and106 = and i32 %shl105, -1
  %or107 = or i32 %shr104, %and106
  store i32 %or107, ptr %x189, align 4
  %351 = load i32, ptr %x142, align 4
  %and108 = and i32 %351, -2147483648
  %352 = load i32, ptr %x142, align 4
  %shr109 = lshr i32 %352, 1
  %or110 = or i32 %and108, %shr109
  store i32 %or110, ptr %x190, align 4
  %353 = load i8, ptr %x75, align 1
  %354 = load i32, ptr %x60, align 4
  %355 = load i32, ptr %x46, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x191, i8 noundef zeroext %353, i32 noundef %354, i32 noundef %355)
  %356 = load i8, ptr %x75, align 1
  %357 = load i32, ptr %x62, align 4
  %358 = load i32, ptr %x48, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x192, i8 noundef zeroext %356, i32 noundef %357, i32 noundef %358)
  %359 = load i8, ptr %x75, align 1
  %360 = load i32, ptr %x64, align 4
  %361 = load i32, ptr %x50, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x193, i8 noundef zeroext %359, i32 noundef %360, i32 noundef %361)
  %362 = load i8, ptr %x75, align 1
  %363 = load i32, ptr %x66, align 4
  %364 = load i32, ptr %x52, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x194, i8 noundef zeroext %362, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x75, align 1
  %366 = load i32, ptr %x68, align 4
  %367 = load i32, ptr %x54, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x195, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x75, align 1
  %369 = load i32, ptr %x70, align 4
  %370 = load i32, ptr %x56, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x196, i8 noundef zeroext %368, i32 noundef %369, i32 noundef %370)
  %371 = load i8, ptr %x75, align 1
  %372 = load i32, ptr %x72, align 4
  %373 = load i32, ptr %x58, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x197, i8 noundef zeroext %371, i32 noundef %372, i32 noundef %373)
  %374 = load i8, ptr %x180, align 1
  %375 = load i32, ptr %x165, align 4
  %376 = load i32, ptr %x151, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x198, i8 noundef zeroext %374, i32 noundef %375, i32 noundef %376)
  %377 = load i8, ptr %x180, align 1
  %378 = load i32, ptr %x167, align 4
  %379 = load i32, ptr %x153, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x199, i8 noundef zeroext %377, i32 noundef %378, i32 noundef %379)
  %380 = load i8, ptr %x180, align 1
  %381 = load i32, ptr %x169, align 4
  %382 = load i32, ptr %x155, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x200, i8 noundef zeroext %380, i32 noundef %381, i32 noundef %382)
  %383 = load i8, ptr %x180, align 1
  %384 = load i32, ptr %x171, align 4
  %385 = load i32, ptr %x157, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x201, i8 noundef zeroext %383, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x180, align 1
  %387 = load i32, ptr %x173, align 4
  %388 = load i32, ptr %x159, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x202, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x180, align 1
  %390 = load i32, ptr %x175, align 4
  %391 = load i32, ptr %x161, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x203, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x180, align 1
  %393 = load i32, ptr %x177, align 4
  %394 = load i32, ptr %x163, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x204, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i32, ptr %x181, align 4
  %396 = load ptr, ptr %out1.addr, align 8
  store i32 %395, ptr %396, align 4
  %397 = load i32, ptr %x7, align 4
  %398 = load ptr, ptr %out2.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %398, i64 0
  store i32 %397, ptr %arrayidx111, align 4
  %399 = load i32, ptr %x8, align 4
  %400 = load ptr, ptr %out2.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %400, i64 1
  store i32 %399, ptr %arrayidx112, align 4
  %401 = load i32, ptr %x9, align 4
  %402 = load ptr, ptr %out2.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %402, i64 2
  store i32 %401, ptr %arrayidx113, align 4
  %403 = load i32, ptr %x10, align 4
  %404 = load ptr, ptr %out2.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %404, i64 3
  store i32 %403, ptr %arrayidx114, align 4
  %405 = load i32, ptr %x11, align 4
  %406 = load ptr, ptr %out2.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %406, i64 4
  store i32 %405, ptr %arrayidx115, align 4
  %407 = load i32, ptr %x12, align 4
  %408 = load ptr, ptr %out2.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %408, i64 5
  store i32 %407, ptr %arrayidx116, align 4
  %409 = load i32, ptr %x13, align 4
  %410 = load ptr, ptr %out2.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %410, i64 6
  store i32 %409, ptr %arrayidx117, align 4
  %411 = load i32, ptr %x14, align 4
  %412 = load ptr, ptr %out2.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %412, i64 7
  store i32 %411, ptr %arrayidx118, align 4
  %413 = load i32, ptr %x183, align 4
  %414 = load ptr, ptr %out3.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, ptr %414, i64 0
  store i32 %413, ptr %arrayidx119, align 4
  %415 = load i32, ptr %x184, align 4
  %416 = load ptr, ptr %out3.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %416, i64 1
  store i32 %415, ptr %arrayidx120, align 4
  %417 = load i32, ptr %x185, align 4
  %418 = load ptr, ptr %out3.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, ptr %418, i64 2
  store i32 %417, ptr %arrayidx121, align 4
  %419 = load i32, ptr %x186, align 4
  %420 = load ptr, ptr %out3.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %420, i64 3
  store i32 %419, ptr %arrayidx122, align 4
  %421 = load i32, ptr %x187, align 4
  %422 = load ptr, ptr %out3.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %422, i64 4
  store i32 %421, ptr %arrayidx123, align 4
  %423 = load i32, ptr %x188, align 4
  %424 = load ptr, ptr %out3.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %424, i64 5
  store i32 %423, ptr %arrayidx124, align 4
  %425 = load i32, ptr %x189, align 4
  %426 = load ptr, ptr %out3.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %426, i64 6
  store i32 %425, ptr %arrayidx125, align 4
  %427 = load i32, ptr %x190, align 4
  %428 = load ptr, ptr %out3.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %428, i64 7
  store i32 %427, ptr %arrayidx126, align 4
  %429 = load i32, ptr %x191, align 4
  %430 = load ptr, ptr %out4.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %430, i64 0
  store i32 %429, ptr %arrayidx127, align 4
  %431 = load i32, ptr %x192, align 4
  %432 = load ptr, ptr %out4.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %432, i64 1
  store i32 %431, ptr %arrayidx128, align 4
  %433 = load i32, ptr %x193, align 4
  %434 = load ptr, ptr %out4.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %434, i64 2
  store i32 %433, ptr %arrayidx129, align 4
  %435 = load i32, ptr %x194, align 4
  %436 = load ptr, ptr %out4.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %436, i64 3
  store i32 %435, ptr %arrayidx130, align 4
  %437 = load i32, ptr %x195, align 4
  %438 = load ptr, ptr %out4.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %438, i64 4
  store i32 %437, ptr %arrayidx131, align 4
  %439 = load i32, ptr %x196, align 4
  %440 = load ptr, ptr %out4.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %440, i64 5
  store i32 %439, ptr %arrayidx132, align 4
  %441 = load i32, ptr %x197, align 4
  %442 = load ptr, ptr %out4.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %442, i64 6
  store i32 %441, ptr %arrayidx133, align 4
  %443 = load i32, ptr %x198, align 4
  %444 = load ptr, ptr %out5.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %444, i64 0
  store i32 %443, ptr %arrayidx134, align 4
  %445 = load i32, ptr %x199, align 4
  %446 = load ptr, ptr %out5.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %446, i64 1
  store i32 %445, ptr %arrayidx135, align 4
  %447 = load i32, ptr %x200, align 4
  %448 = load ptr, ptr %out5.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %448, i64 2
  store i32 %447, ptr %arrayidx136, align 4
  %449 = load i32, ptr %x201, align 4
  %450 = load ptr, ptr %out5.addr, align 8
  %arrayidx137 = getelementptr inbounds i32, ptr %450, i64 3
  store i32 %449, ptr %arrayidx137, align 4
  %451 = load i32, ptr %x202, align 4
  %452 = load ptr, ptr %out5.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %452, i64 4
  store i32 %451, ptr %arrayidx138, align 4
  %453 = load i32, ptr %x203, align 4
  %454 = load ptr, ptr %out5.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %454, i64 5
  store i32 %453, ptr %arrayidx139, align 4
  %455 = load i32, ptr %x204, align 4
  %456 = load ptr, ptr %out5.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %456, i64 6
  store i32 %455, ptr %arrayidx140, align 4
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
