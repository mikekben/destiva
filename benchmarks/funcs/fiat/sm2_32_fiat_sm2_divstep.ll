; ModuleID = '/data2/ben/alive-decomp/bench/fiat/sm2_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_sm2_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i32 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
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
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
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
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i8, align 1
  %x55 = alloca i32, align 4
  %x56 = alloca i8, align 1
  %x57 = alloca i32, align 4
  %x58 = alloca i8, align 1
  %x59 = alloca i32, align 4
  %x60 = alloca i8, align 1
  %x61 = alloca i32, align 4
  %x62 = alloca i8, align 1
  %x63 = alloca i32, align 4
  %x64 = alloca i8, align 1
  %x65 = alloca i32, align 4
  %x66 = alloca i8, align 1
  %x67 = alloca i32, align 4
  %x68 = alloca i8, align 1
  %x69 = alloca i32, align 4
  %x70 = alloca i8, align 1
  %x71 = alloca i32, align 4
  %x72 = alloca i8, align 1
  %x73 = alloca i32, align 4
  %x74 = alloca i8, align 1
  %x75 = alloca i32, align 4
  %x76 = alloca i8, align 1
  %x77 = alloca i32, align 4
  %x78 = alloca i8, align 1
  %x79 = alloca i32, align 4
  %x80 = alloca i8, align 1
  %x81 = alloca i32, align 4
  %x82 = alloca i8, align 1
  %x83 = alloca i32, align 4
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i32, align 4
  %x87 = alloca i32, align 4
  %x88 = alloca i32, align 4
  %x89 = alloca i32, align 4
  %x90 = alloca i32, align 4
  %x91 = alloca i32, align 4
  %x92 = alloca i32, align 4
  %x93 = alloca i32, align 4
  %x94 = alloca i8, align 1
  %x95 = alloca i32, align 4
  %x96 = alloca i8, align 1
  %x97 = alloca i32, align 4
  %x98 = alloca i8, align 1
  %x99 = alloca i32, align 4
  %x100 = alloca i8, align 1
  %x101 = alloca i32, align 4
  %x102 = alloca i8, align 1
  %x103 = alloca i32, align 4
  %x104 = alloca i8, align 1
  %x105 = alloca i32, align 4
  %x106 = alloca i8, align 1
  %x107 = alloca i32, align 4
  %x108 = alloca i8, align 1
  %x109 = alloca i32, align 4
  %x110 = alloca i32, align 4
  %x111 = alloca i8, align 1
  %x112 = alloca i32, align 4
  %x113 = alloca i8, align 1
  %x114 = alloca i32, align 4
  %x115 = alloca i8, align 1
  %x116 = alloca i32, align 4
  %x117 = alloca i8, align 1
  %x118 = alloca i32, align 4
  %x119 = alloca i8, align 1
  %x120 = alloca i32, align 4
  %x121 = alloca i8, align 1
  %x122 = alloca i32, align 4
  %x123 = alloca i8, align 1
  %x124 = alloca i32, align 4
  %x125 = alloca i8, align 1
  %x126 = alloca i32, align 4
  %x127 = alloca i32, align 4
  %x128 = alloca i32, align 4
  %x129 = alloca i32, align 4
  %x130 = alloca i32, align 4
  %x131 = alloca i32, align 4
  %x132 = alloca i32, align 4
  %x133 = alloca i32, align 4
  %x134 = alloca i8, align 1
  %x135 = alloca i32, align 4
  %x136 = alloca i32, align 4
  %x137 = alloca i32, align 4
  %x138 = alloca i32, align 4
  %x139 = alloca i32, align 4
  %x140 = alloca i32, align 4
  %x141 = alloca i32, align 4
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
  %x144 = alloca i32, align 4
  %x145 = alloca i8, align 1
  %x146 = alloca i32, align 4
  %x147 = alloca i8, align 1
  %x148 = alloca i32, align 4
  %x149 = alloca i8, align 1
  %x150 = alloca i32, align 4
  %x151 = alloca i8, align 1
  %x152 = alloca i32, align 4
  %x153 = alloca i8, align 1
  %x154 = alloca i32, align 4
  %x155 = alloca i8, align 1
  %x156 = alloca i32, align 4
  %x157 = alloca i8, align 1
  %x158 = alloca i32, align 4
  %x159 = alloca i8, align 1
  %x160 = alloca i32, align 4
  %x161 = alloca i8, align 1
  %x162 = alloca i32, align 4
  %x163 = alloca i32, align 4
  %x164 = alloca i32, align 4
  %x165 = alloca i32, align 4
  %x166 = alloca i32, align 4
  %x167 = alloca i32, align 4
  %x168 = alloca i32, align 4
  %x169 = alloca i32, align 4
  %x170 = alloca i32, align 4
  %x171 = alloca i8, align 1
  %x172 = alloca i32, align 4
  %x173 = alloca i8, align 1
  %x174 = alloca i32, align 4
  %x175 = alloca i8, align 1
  %x176 = alloca i32, align 4
  %x177 = alloca i8, align 1
  %x178 = alloca i32, align 4
  %x179 = alloca i8, align 1
  %x180 = alloca i32, align 4
  %x181 = alloca i8, align 1
  %x182 = alloca i32, align 4
  %x183 = alloca i8, align 1
  %x184 = alloca i32, align 4
  %x185 = alloca i8, align 1
  %x186 = alloca i32, align 4
  %x187 = alloca i8, align 1
  %x188 = alloca i32, align 4
  %x189 = alloca i8, align 1
  %x190 = alloca i32, align 4
  %x191 = alloca i8, align 1
  %x192 = alloca i32, align 4
  %x193 = alloca i8, align 1
  %x194 = alloca i32, align 4
  %x195 = alloca i8, align 1
  %x196 = alloca i32, align 4
  %x197 = alloca i8, align 1
  %x198 = alloca i32, align 4
  %x199 = alloca i8, align 1
  %x200 = alloca i32, align 4
  %x201 = alloca i8, align 1
  %x202 = alloca i32, align 4
  %x203 = alloca i8, align 1
  %x204 = alloca i32, align 4
  %x205 = alloca i8, align 1
  %x206 = alloca i32, align 4
  %x207 = alloca i32, align 4
  %x208 = alloca i32, align 4
  %x209 = alloca i32, align 4
  %x210 = alloca i32, align 4
  %x211 = alloca i32, align 4
  %x212 = alloca i32, align 4
  %x213 = alloca i32, align 4
  %x214 = alloca i32, align 4
  %x215 = alloca i32, align 4
  %x216 = alloca i32, align 4
  %x217 = alloca i32, align 4
  %x218 = alloca i32, align 4
  %x219 = alloca i32, align 4
  %x220 = alloca i32, align 4
  %x221 = alloca i32, align 4
  %x222 = alloca i32, align 4
  %x223 = alloca i32, align 4
  %x224 = alloca i32, align 4
  %x225 = alloca i32, align 4
  %x226 = alloca i32, align 4
  %x227 = alloca i32, align 4
  %x228 = alloca i32, align 4
  %x229 = alloca i32, align 4
  %x230 = alloca i32, align 4
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
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %not, i32 noundef 1)
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
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i32 noundef %not6, i32 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i32, ptr %arg1.addr, align 4
  %7 = load i32, ptr %x4, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx7, align 4
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx8, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %8, i32 noundef %10, i32 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx10, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %13, i32 noundef %15, i32 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 2
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 2
  %22 = load i32, ptr %arrayidx12, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x9, i8 noundef zeroext %18, i32 noundef %20, i32 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx14, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x10, i8 noundef zeroext %23, i32 noundef %25, i32 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %29, i64 4
  %30 = load i32, ptr %arrayidx15, align 4
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %31, i64 4
  %32 = load i32, ptr %arrayidx16, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %28, i32 noundef %30, i32 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %34, i64 5
  %35 = load i32, ptr %arrayidx17, align 4
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %36, i64 5
  %37 = load i32, ptr %arrayidx18, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x12, i8 noundef zeroext %33, i32 noundef %35, i32 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 6
  %40 = load i32, ptr %arrayidx19, align 4
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %41, i64 6
  %42 = load i32, ptr %arrayidx20, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x13, i8 noundef zeroext %38, i32 noundef %40, i32 noundef %42)
  %43 = load i8, ptr %x3, align 1
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %44, i64 7
  %45 = load i32, ptr %arrayidx21, align 4
  %46 = load ptr, ptr %arg3.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %46, i64 7
  %47 = load i32, ptr %arrayidx22, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x14, i8 noundef zeroext %43, i32 noundef %45, i32 noundef %47)
  %48 = load i8, ptr %x3, align 1
  %49 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %49, i64 8
  %50 = load i32, ptr %arrayidx23, align 4
  %51 = load ptr, ptr %arg3.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %51, i64 8
  %52 = load i32, ptr %arrayidx24, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x15, i8 noundef zeroext %48, i32 noundef %50, i32 noundef %52)
  %53 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %53, i64 0
  %54 = load i32, ptr %arrayidx25, align 4
  %not26 = xor i32 %54, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i32 noundef 1, i32 noundef %not26)
  %55 = load i8, ptr %x17, align 1
  %56 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %56, i64 1
  %57 = load i32, ptr %arrayidx27, align 4
  %not28 = xor i32 %57, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %55, i32 noundef 0, i32 noundef %not28)
  %58 = load i8, ptr %x19, align 1
  %59 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %59, i64 2
  %60 = load i32, ptr %arrayidx29, align 4
  %not30 = xor i32 %60, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %58, i32 noundef 0, i32 noundef %not30)
  %61 = load i8, ptr %x21, align 1
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %62, i64 3
  %63 = load i32, ptr %arrayidx31, align 4
  %not32 = xor i32 %63, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %61, i32 noundef 0, i32 noundef %not32)
  %64 = load i8, ptr %x23, align 1
  %65 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %65, i64 4
  %66 = load i32, ptr %arrayidx33, align 4
  %not34 = xor i32 %66, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %64, i32 noundef 0, i32 noundef %not34)
  %67 = load i8, ptr %x25, align 1
  %68 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %68, i64 5
  %69 = load i32, ptr %arrayidx35, align 4
  %not36 = xor i32 %69, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %67, i32 noundef 0, i32 noundef %not36)
  %70 = load i8, ptr %x27, align 1
  %71 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %71, i64 6
  %72 = load i32, ptr %arrayidx37, align 4
  %not38 = xor i32 %72, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %70, i32 noundef 0, i32 noundef %not38)
  %73 = load i8, ptr %x29, align 1
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %74, i64 7
  %75 = load i32, ptr %arrayidx39, align 4
  %not40 = xor i32 %75, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %73, i32 noundef 0, i32 noundef %not40)
  %76 = load i8, ptr %x31, align 1
  %77 = load ptr, ptr %arg2.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %77, i64 8
  %78 = load i32, ptr %arrayidx41, align 4
  %not42 = xor i32 %78, -1
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %76, i32 noundef 0, i32 noundef %not42)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %80, i64 0
  %81 = load i32, ptr %arrayidx43, align 4
  %82 = load i32, ptr %x16, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x34, i8 noundef zeroext %79, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %84, i64 1
  %85 = load i32, ptr %arrayidx44, align 4
  %86 = load i32, ptr %x18, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x35, i8 noundef zeroext %83, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %88, i64 2
  %89 = load i32, ptr %arrayidx45, align 4
  %90 = load i32, ptr %x20, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x36, i8 noundef zeroext %87, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg3.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %92, i64 3
  %93 = load i32, ptr %arrayidx46, align 4
  %94 = load i32, ptr %x22, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x37, i8 noundef zeroext %91, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x3, align 1
  %96 = load ptr, ptr %arg3.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %96, i64 4
  %97 = load i32, ptr %arrayidx47, align 4
  %98 = load i32, ptr %x24, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x38, i8 noundef zeroext %95, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x3, align 1
  %100 = load ptr, ptr %arg3.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %100, i64 5
  %101 = load i32, ptr %arrayidx48, align 4
  %102 = load i32, ptr %x26, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x39, i8 noundef zeroext %99, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x3, align 1
  %104 = load ptr, ptr %arg3.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %104, i64 6
  %105 = load i32, ptr %arrayidx49, align 4
  %106 = load i32, ptr %x28, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x40, i8 noundef zeroext %103, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x3, align 1
  %108 = load ptr, ptr %arg3.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %108, i64 7
  %109 = load i32, ptr %arrayidx50, align 4
  %110 = load i32, ptr %x30, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x41, i8 noundef zeroext %107, i32 noundef %109, i32 noundef %110)
  %111 = load i8, ptr %x3, align 1
  %112 = load ptr, ptr %arg3.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %112, i64 8
  %113 = load i32, ptr %arrayidx51, align 4
  %114 = load i32, ptr %x32, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x42, i8 noundef zeroext %111, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x3, align 1
  %116 = load ptr, ptr %arg4.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %116, i64 0
  %117 = load i32, ptr %arrayidx52, align 4
  %118 = load ptr, ptr %arg5.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %118, i64 0
  %119 = load i32, ptr %arrayidx53, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x43, i8 noundef zeroext %115, i32 noundef %117, i32 noundef %119)
  %120 = load i8, ptr %x3, align 1
  %121 = load ptr, ptr %arg4.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %121, i64 1
  %122 = load i32, ptr %arrayidx54, align 4
  %123 = load ptr, ptr %arg5.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %123, i64 1
  %124 = load i32, ptr %arrayidx55, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x44, i8 noundef zeroext %120, i32 noundef %122, i32 noundef %124)
  %125 = load i8, ptr %x3, align 1
  %126 = load ptr, ptr %arg4.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %126, i64 2
  %127 = load i32, ptr %arrayidx56, align 4
  %128 = load ptr, ptr %arg5.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %128, i64 2
  %129 = load i32, ptr %arrayidx57, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x45, i8 noundef zeroext %125, i32 noundef %127, i32 noundef %129)
  %130 = load i8, ptr %x3, align 1
  %131 = load ptr, ptr %arg4.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %131, i64 3
  %132 = load i32, ptr %arrayidx58, align 4
  %133 = load ptr, ptr %arg5.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %133, i64 3
  %134 = load i32, ptr %arrayidx59, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x46, i8 noundef zeroext %130, i32 noundef %132, i32 noundef %134)
  %135 = load i8, ptr %x3, align 1
  %136 = load ptr, ptr %arg4.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %136, i64 4
  %137 = load i32, ptr %arrayidx60, align 4
  %138 = load ptr, ptr %arg5.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %138, i64 4
  %139 = load i32, ptr %arrayidx61, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x47, i8 noundef zeroext %135, i32 noundef %137, i32 noundef %139)
  %140 = load i8, ptr %x3, align 1
  %141 = load ptr, ptr %arg4.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %141, i64 5
  %142 = load i32, ptr %arrayidx62, align 4
  %143 = load ptr, ptr %arg5.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %143, i64 5
  %144 = load i32, ptr %arrayidx63, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x48, i8 noundef zeroext %140, i32 noundef %142, i32 noundef %144)
  %145 = load i8, ptr %x3, align 1
  %146 = load ptr, ptr %arg4.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %146, i64 6
  %147 = load i32, ptr %arrayidx64, align 4
  %148 = load ptr, ptr %arg5.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %148, i64 6
  %149 = load i32, ptr %arrayidx65, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x49, i8 noundef zeroext %145, i32 noundef %147, i32 noundef %149)
  %150 = load i8, ptr %x3, align 1
  %151 = load ptr, ptr %arg4.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %151, i64 7
  %152 = load i32, ptr %arrayidx66, align 4
  %153 = load ptr, ptr %arg5.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %153, i64 7
  %154 = load i32, ptr %arrayidx67, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x50, i8 noundef zeroext %150, i32 noundef %152, i32 noundef %154)
  %155 = load i32, ptr %x43, align 4
  %156 = load i32, ptr %x43, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i32 noundef %155, i32 noundef %156)
  %157 = load i8, ptr %x52, align 1
  %158 = load i32, ptr %x44, align 4
  %159 = load i32, ptr %x44, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %157, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x54, align 1
  %161 = load i32, ptr %x45, align 4
  %162 = load i32, ptr %x45, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x56, align 1
  %164 = load i32, ptr %x46, align 4
  %165 = load i32, ptr %x46, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i8, ptr %x58, align 1
  %167 = load i32, ptr %x47, align 4
  %168 = load i32, ptr %x47, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %166, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x60, align 1
  %170 = load i32, ptr %x48, align 4
  %171 = load i32, ptr %x48, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x62, align 1
  %173 = load i32, ptr %x49, align 4
  %174 = load i32, ptr %x49, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x64, align 1
  %176 = load i32, ptr %x50, align 4
  %177 = load i32, ptr %x50, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i32, ptr %x51, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext 0, i32 noundef %178, i32 noundef -1)
  %179 = load i8, ptr %x68, align 1
  %180 = load i32, ptr %x53, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %179, i32 noundef %180, i32 noundef -1)
  %181 = load i8, ptr %x70, align 1
  %182 = load i32, ptr %x55, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %181, i32 noundef %182, i32 noundef 0)
  %183 = load i8, ptr %x72, align 1
  %184 = load i32, ptr %x57, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %183, i32 noundef %184, i32 noundef -1)
  %185 = load i8, ptr %x74, align 1
  %186 = load i32, ptr %x59, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %185, i32 noundef %186, i32 noundef -1)
  %187 = load i8, ptr %x76, align 1
  %188 = load i32, ptr %x61, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %187, i32 noundef %188, i32 noundef -1)
  %189 = load i8, ptr %x78, align 1
  %190 = load i32, ptr %x63, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %189, i32 noundef %190, i32 noundef -1)
  %191 = load i8, ptr %x80, align 1
  %192 = load i32, ptr %x65, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %191, i32 noundef %192, i32 noundef -2)
  %193 = load i8, ptr %x82, align 1
  %194 = load i8, ptr %x66, align 1
  %conv68 = zext i8 %194 to i32
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %193, i32 noundef %conv68, i32 noundef 0)
  %195 = load ptr, ptr %arg4.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %195, i64 7
  %196 = load i32, ptr %arrayidx69, align 4
  store i32 %196, ptr %x85, align 4
  %197 = load ptr, ptr %arg4.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %197, i64 6
  %198 = load i32, ptr %arrayidx70, align 4
  store i32 %198, ptr %x86, align 4
  %199 = load ptr, ptr %arg4.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %199, i64 5
  %200 = load i32, ptr %arrayidx71, align 4
  store i32 %200, ptr %x87, align 4
  %201 = load ptr, ptr %arg4.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %201, i64 4
  %202 = load i32, ptr %arrayidx72, align 4
  store i32 %202, ptr %x88, align 4
  %203 = load ptr, ptr %arg4.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %203, i64 3
  %204 = load i32, ptr %arrayidx73, align 4
  store i32 %204, ptr %x89, align 4
  %205 = load ptr, ptr %arg4.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %205, i64 2
  %206 = load i32, ptr %arrayidx74, align 4
  store i32 %206, ptr %x90, align 4
  %207 = load ptr, ptr %arg4.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %207, i64 1
  %208 = load i32, ptr %arrayidx75, align 4
  store i32 %208, ptr %x91, align 4
  %209 = load ptr, ptr %arg4.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %209, i64 0
  %210 = load i32, ptr %arrayidx76, align 4
  store i32 %210, ptr %x92, align 4
  %211 = load i32, ptr %x92, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %211)
  %212 = load i8, ptr %x94, align 1
  %213 = load i32, ptr %x91, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %212, i32 noundef 0, i32 noundef %213)
  %214 = load i8, ptr %x96, align 1
  %215 = load i32, ptr %x90, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %214, i32 noundef 0, i32 noundef %215)
  %216 = load i8, ptr %x98, align 1
  %217 = load i32, ptr %x89, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %216, i32 noundef 0, i32 noundef %217)
  %218 = load i8, ptr %x100, align 1
  %219 = load i32, ptr %x88, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %218, i32 noundef 0, i32 noundef %219)
  %220 = load i8, ptr %x102, align 1
  %221 = load i32, ptr %x87, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %220, i32 noundef 0, i32 noundef %221)
  %222 = load i8, ptr %x104, align 1
  %223 = load i32, ptr %x86, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %222, i32 noundef 0, i32 noundef %223)
  %224 = load i8, ptr %x106, align 1
  %225 = load i32, ptr %x85, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %224, i32 noundef 0, i32 noundef %225)
  %226 = load i8, ptr %x108, align 1
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x109, i8 noundef zeroext %226, i32 noundef 0, i32 noundef -1)
  %227 = load i32, ptr %x93, align 4
  %228 = load i32, ptr %x109, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext 0, i32 noundef %227, i32 noundef %228)
  %229 = load i8, ptr %x111, align 1
  %230 = load i32, ptr %x95, align 4
  %231 = load i32, ptr %x109, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %229, i32 noundef %230, i32 noundef %231)
  %232 = load i8, ptr %x113, align 1
  %233 = load i32, ptr %x97, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %232, i32 noundef %233, i32 noundef 0)
  %234 = load i8, ptr %x115, align 1
  %235 = load i32, ptr %x99, align 4
  %236 = load i32, ptr %x109, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %234, i32 noundef %235, i32 noundef %236)
  %237 = load i8, ptr %x117, align 1
  %238 = load i32, ptr %x101, align 4
  %239 = load i32, ptr %x109, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %237, i32 noundef %238, i32 noundef %239)
  %240 = load i8, ptr %x119, align 1
  %241 = load i32, ptr %x103, align 4
  %242 = load i32, ptr %x109, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %240, i32 noundef %241, i32 noundef %242)
  %243 = load i8, ptr %x121, align 1
  %244 = load i32, ptr %x105, align 4
  %245 = load i32, ptr %x109, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %243, i32 noundef %244, i32 noundef %245)
  %246 = load i8, ptr %x123, align 1
  %247 = load i32, ptr %x107, align 4
  %248 = load i32, ptr %x109, align 4
  %and77 = and i32 %248, -2
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %246, i32 noundef %247, i32 noundef %and77)
  %249 = load i8, ptr %x3, align 1
  %250 = load ptr, ptr %arg5.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %250, i64 0
  %251 = load i32, ptr %arrayidx78, align 4
  %252 = load i32, ptr %x110, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x126, i8 noundef zeroext %249, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x3, align 1
  %254 = load ptr, ptr %arg5.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %254, i64 1
  %255 = load i32, ptr %arrayidx79, align 4
  %256 = load i32, ptr %x112, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x127, i8 noundef zeroext %253, i32 noundef %255, i32 noundef %256)
  %257 = load i8, ptr %x3, align 1
  %258 = load ptr, ptr %arg5.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %258, i64 2
  %259 = load i32, ptr %arrayidx80, align 4
  %260 = load i32, ptr %x114, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x128, i8 noundef zeroext %257, i32 noundef %259, i32 noundef %260)
  %261 = load i8, ptr %x3, align 1
  %262 = load ptr, ptr %arg5.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %262, i64 3
  %263 = load i32, ptr %arrayidx81, align 4
  %264 = load i32, ptr %x116, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x129, i8 noundef zeroext %261, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x3, align 1
  %266 = load ptr, ptr %arg5.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %266, i64 4
  %267 = load i32, ptr %arrayidx82, align 4
  %268 = load i32, ptr %x118, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x130, i8 noundef zeroext %265, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x3, align 1
  %270 = load ptr, ptr %arg5.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %270, i64 5
  %271 = load i32, ptr %arrayidx83, align 4
  %272 = load i32, ptr %x120, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x131, i8 noundef zeroext %269, i32 noundef %271, i32 noundef %272)
  %273 = load i8, ptr %x3, align 1
  %274 = load ptr, ptr %arg5.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %274, i64 6
  %275 = load i32, ptr %arrayidx84, align 4
  %276 = load i32, ptr %x122, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x132, i8 noundef zeroext %273, i32 noundef %275, i32 noundef %276)
  %277 = load i8, ptr %x3, align 1
  %278 = load ptr, ptr %arg5.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %278, i64 7
  %279 = load i32, ptr %arrayidx85, align 4
  %280 = load i32, ptr %x124, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x133, i8 noundef zeroext %277, i32 noundef %279, i32 noundef %280)
  %281 = load i32, ptr %x34, align 4
  %and86 = and i32 %281, 1
  %conv87 = trunc i32 %and86 to i8
  store i8 %conv87, ptr %x134, align 1
  %282 = load i8, ptr %x134, align 1
  %283 = load i32, ptr %x7, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x135, i8 noundef zeroext %282, i32 noundef 0, i32 noundef %283)
  %284 = load i8, ptr %x134, align 1
  %285 = load i32, ptr %x8, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x136, i8 noundef zeroext %284, i32 noundef 0, i32 noundef %285)
  %286 = load i8, ptr %x134, align 1
  %287 = load i32, ptr %x9, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x137, i8 noundef zeroext %286, i32 noundef 0, i32 noundef %287)
  %288 = load i8, ptr %x134, align 1
  %289 = load i32, ptr %x10, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x138, i8 noundef zeroext %288, i32 noundef 0, i32 noundef %289)
  %290 = load i8, ptr %x134, align 1
  %291 = load i32, ptr %x11, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x139, i8 noundef zeroext %290, i32 noundef 0, i32 noundef %291)
  %292 = load i8, ptr %x134, align 1
  %293 = load i32, ptr %x12, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x140, i8 noundef zeroext %292, i32 noundef 0, i32 noundef %293)
  %294 = load i8, ptr %x134, align 1
  %295 = load i32, ptr %x13, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x141, i8 noundef zeroext %294, i32 noundef 0, i32 noundef %295)
  %296 = load i8, ptr %x134, align 1
  %297 = load i32, ptr %x14, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x142, i8 noundef zeroext %296, i32 noundef 0, i32 noundef %297)
  %298 = load i8, ptr %x134, align 1
  %299 = load i32, ptr %x15, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x143, i8 noundef zeroext %298, i32 noundef 0, i32 noundef %299)
  %300 = load i32, ptr %x34, align 4
  %301 = load i32, ptr %x135, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext 0, i32 noundef %300, i32 noundef %301)
  %302 = load i8, ptr %x145, align 1
  %303 = load i32, ptr %x35, align 4
  %304 = load i32, ptr %x136, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %302, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x147, align 1
  %306 = load i32, ptr %x36, align 4
  %307 = load i32, ptr %x137, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %305, i32 noundef %306, i32 noundef %307)
  %308 = load i8, ptr %x149, align 1
  %309 = load i32, ptr %x37, align 4
  %310 = load i32, ptr %x138, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %308, i32 noundef %309, i32 noundef %310)
  %311 = load i8, ptr %x151, align 1
  %312 = load i32, ptr %x38, align 4
  %313 = load i32, ptr %x139, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %311, i32 noundef %312, i32 noundef %313)
  %314 = load i8, ptr %x153, align 1
  %315 = load i32, ptr %x39, align 4
  %316 = load i32, ptr %x140, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %314, i32 noundef %315, i32 noundef %316)
  %317 = load i8, ptr %x155, align 1
  %318 = load i32, ptr %x40, align 4
  %319 = load i32, ptr %x141, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %317, i32 noundef %318, i32 noundef %319)
  %320 = load i8, ptr %x157, align 1
  %321 = load i32, ptr %x41, align 4
  %322 = load i32, ptr %x142, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %320, i32 noundef %321, i32 noundef %322)
  %323 = load i8, ptr %x159, align 1
  %324 = load i32, ptr %x42, align 4
  %325 = load i32, ptr %x143, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %323, i32 noundef %324, i32 noundef %325)
  %326 = load i8, ptr %x134, align 1
  %327 = load i32, ptr %x43, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x162, i8 noundef zeroext %326, i32 noundef 0, i32 noundef %327)
  %328 = load i8, ptr %x134, align 1
  %329 = load i32, ptr %x44, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x163, i8 noundef zeroext %328, i32 noundef 0, i32 noundef %329)
  %330 = load i8, ptr %x134, align 1
  %331 = load i32, ptr %x45, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x164, i8 noundef zeroext %330, i32 noundef 0, i32 noundef %331)
  %332 = load i8, ptr %x134, align 1
  %333 = load i32, ptr %x46, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x165, i8 noundef zeroext %332, i32 noundef 0, i32 noundef %333)
  %334 = load i8, ptr %x134, align 1
  %335 = load i32, ptr %x47, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x166, i8 noundef zeroext %334, i32 noundef 0, i32 noundef %335)
  %336 = load i8, ptr %x134, align 1
  %337 = load i32, ptr %x48, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x167, i8 noundef zeroext %336, i32 noundef 0, i32 noundef %337)
  %338 = load i8, ptr %x134, align 1
  %339 = load i32, ptr %x49, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x168, i8 noundef zeroext %338, i32 noundef 0, i32 noundef %339)
  %340 = load i8, ptr %x134, align 1
  %341 = load i32, ptr %x50, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x169, i8 noundef zeroext %340, i32 noundef 0, i32 noundef %341)
  %342 = load i32, ptr %x126, align 4
  %343 = load i32, ptr %x162, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext 0, i32 noundef %342, i32 noundef %343)
  %344 = load i8, ptr %x171, align 1
  %345 = load i32, ptr %x127, align 4
  %346 = load i32, ptr %x163, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %344, i32 noundef %345, i32 noundef %346)
  %347 = load i8, ptr %x173, align 1
  %348 = load i32, ptr %x128, align 4
  %349 = load i32, ptr %x164, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %347, i32 noundef %348, i32 noundef %349)
  %350 = load i8, ptr %x175, align 1
  %351 = load i32, ptr %x129, align 4
  %352 = load i32, ptr %x165, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %350, i32 noundef %351, i32 noundef %352)
  %353 = load i8, ptr %x177, align 1
  %354 = load i32, ptr %x130, align 4
  %355 = load i32, ptr %x166, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %353, i32 noundef %354, i32 noundef %355)
  %356 = load i8, ptr %x179, align 1
  %357 = load i32, ptr %x131, align 4
  %358 = load i32, ptr %x167, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %356, i32 noundef %357, i32 noundef %358)
  %359 = load i8, ptr %x181, align 1
  %360 = load i32, ptr %x132, align 4
  %361 = load i32, ptr %x168, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %359, i32 noundef %360, i32 noundef %361)
  %362 = load i8, ptr %x183, align 1
  %363 = load i32, ptr %x133, align 4
  %364 = load i32, ptr %x169, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %362, i32 noundef %363, i32 noundef %364)
  %365 = load i32, ptr %x170, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext 0, i32 noundef %365, i32 noundef -1)
  %366 = load i8, ptr %x187, align 1
  %367 = load i32, ptr %x172, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %366, i32 noundef %367, i32 noundef -1)
  %368 = load i8, ptr %x189, align 1
  %369 = load i32, ptr %x174, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %368, i32 noundef %369, i32 noundef 0)
  %370 = load i8, ptr %x191, align 1
  %371 = load i32, ptr %x176, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %370, i32 noundef %371, i32 noundef -1)
  %372 = load i8, ptr %x193, align 1
  %373 = load i32, ptr %x178, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %372, i32 noundef %373, i32 noundef -1)
  %374 = load i8, ptr %x195, align 1
  %375 = load i32, ptr %x180, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %374, i32 noundef %375, i32 noundef -1)
  %376 = load i8, ptr %x197, align 1
  %377 = load i32, ptr %x182, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %376, i32 noundef %377, i32 noundef -1)
  %378 = load i8, ptr %x199, align 1
  %379 = load i32, ptr %x184, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %378, i32 noundef %379, i32 noundef -2)
  %380 = load i8, ptr %x201, align 1
  %381 = load i8, ptr %x185, align 1
  %conv88 = zext i8 %381 to i32
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %380, i32 noundef %conv88, i32 noundef 0)
  %382 = load i32, ptr %x6, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext 0, i32 noundef %382, i32 noundef 1)
  %383 = load i32, ptr %x144, align 4
  %shr89 = lshr i32 %383, 1
  %384 = load i32, ptr %x146, align 4
  %shl = shl i32 %384, 31
  %and90 = and i32 %shl, -1
  %or = or i32 %shr89, %and90
  store i32 %or, ptr %x206, align 4
  %385 = load i32, ptr %x146, align 4
  %shr91 = lshr i32 %385, 1
  %386 = load i32, ptr %x148, align 4
  %shl92 = shl i32 %386, 31
  %and93 = and i32 %shl92, -1
  %or94 = or i32 %shr91, %and93
  store i32 %or94, ptr %x207, align 4
  %387 = load i32, ptr %x148, align 4
  %shr95 = lshr i32 %387, 1
  %388 = load i32, ptr %x150, align 4
  %shl96 = shl i32 %388, 31
  %and97 = and i32 %shl96, -1
  %or98 = or i32 %shr95, %and97
  store i32 %or98, ptr %x208, align 4
  %389 = load i32, ptr %x150, align 4
  %shr99 = lshr i32 %389, 1
  %390 = load i32, ptr %x152, align 4
  %shl100 = shl i32 %390, 31
  %and101 = and i32 %shl100, -1
  %or102 = or i32 %shr99, %and101
  store i32 %or102, ptr %x209, align 4
  %391 = load i32, ptr %x152, align 4
  %shr103 = lshr i32 %391, 1
  %392 = load i32, ptr %x154, align 4
  %shl104 = shl i32 %392, 31
  %and105 = and i32 %shl104, -1
  %or106 = or i32 %shr103, %and105
  store i32 %or106, ptr %x210, align 4
  %393 = load i32, ptr %x154, align 4
  %shr107 = lshr i32 %393, 1
  %394 = load i32, ptr %x156, align 4
  %shl108 = shl i32 %394, 31
  %and109 = and i32 %shl108, -1
  %or110 = or i32 %shr107, %and109
  store i32 %or110, ptr %x211, align 4
  %395 = load i32, ptr %x156, align 4
  %shr111 = lshr i32 %395, 1
  %396 = load i32, ptr %x158, align 4
  %shl112 = shl i32 %396, 31
  %and113 = and i32 %shl112, -1
  %or114 = or i32 %shr111, %and113
  store i32 %or114, ptr %x212, align 4
  %397 = load i32, ptr %x158, align 4
  %shr115 = lshr i32 %397, 1
  %398 = load i32, ptr %x160, align 4
  %shl116 = shl i32 %398, 31
  %and117 = and i32 %shl116, -1
  %or118 = or i32 %shr115, %and117
  store i32 %or118, ptr %x213, align 4
  %399 = load i32, ptr %x160, align 4
  %and119 = and i32 %399, -2147483648
  %400 = load i32, ptr %x160, align 4
  %shr120 = lshr i32 %400, 1
  %or121 = or i32 %and119, %shr120
  store i32 %or121, ptr %x214, align 4
  %401 = load i8, ptr %x84, align 1
  %402 = load i32, ptr %x67, align 4
  %403 = load i32, ptr %x51, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x215, i8 noundef zeroext %401, i32 noundef %402, i32 noundef %403)
  %404 = load i8, ptr %x84, align 1
  %405 = load i32, ptr %x69, align 4
  %406 = load i32, ptr %x53, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x216, i8 noundef zeroext %404, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x84, align 1
  %408 = load i32, ptr %x71, align 4
  %409 = load i32, ptr %x55, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x217, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x84, align 1
  %411 = load i32, ptr %x73, align 4
  %412 = load i32, ptr %x57, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x218, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x84, align 1
  %414 = load i32, ptr %x75, align 4
  %415 = load i32, ptr %x59, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x219, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x84, align 1
  %417 = load i32, ptr %x77, align 4
  %418 = load i32, ptr %x61, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x220, i8 noundef zeroext %416, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x84, align 1
  %420 = load i32, ptr %x79, align 4
  %421 = load i32, ptr %x63, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x221, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x84, align 1
  %423 = load i32, ptr %x81, align 4
  %424 = load i32, ptr %x65, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x222, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x203, align 1
  %426 = load i32, ptr %x186, align 4
  %427 = load i32, ptr %x170, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x223, i8 noundef zeroext %425, i32 noundef %426, i32 noundef %427)
  %428 = load i8, ptr %x203, align 1
  %429 = load i32, ptr %x188, align 4
  %430 = load i32, ptr %x172, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x224, i8 noundef zeroext %428, i32 noundef %429, i32 noundef %430)
  %431 = load i8, ptr %x203, align 1
  %432 = load i32, ptr %x190, align 4
  %433 = load i32, ptr %x174, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x225, i8 noundef zeroext %431, i32 noundef %432, i32 noundef %433)
  %434 = load i8, ptr %x203, align 1
  %435 = load i32, ptr %x192, align 4
  %436 = load i32, ptr %x176, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x226, i8 noundef zeroext %434, i32 noundef %435, i32 noundef %436)
  %437 = load i8, ptr %x203, align 1
  %438 = load i32, ptr %x194, align 4
  %439 = load i32, ptr %x178, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x227, i8 noundef zeroext %437, i32 noundef %438, i32 noundef %439)
  %440 = load i8, ptr %x203, align 1
  %441 = load i32, ptr %x196, align 4
  %442 = load i32, ptr %x180, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x228, i8 noundef zeroext %440, i32 noundef %441, i32 noundef %442)
  %443 = load i8, ptr %x203, align 1
  %444 = load i32, ptr %x198, align 4
  %445 = load i32, ptr %x182, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x229, i8 noundef zeroext %443, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x203, align 1
  %447 = load i32, ptr %x200, align 4
  %448 = load i32, ptr %x184, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x230, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %448)
  %449 = load i32, ptr %x204, align 4
  %450 = load ptr, ptr %out1.addr, align 8
  store i32 %449, ptr %450, align 4
  %451 = load i32, ptr %x7, align 4
  %452 = load ptr, ptr %out2.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %452, i64 0
  store i32 %451, ptr %arrayidx122, align 4
  %453 = load i32, ptr %x8, align 4
  %454 = load ptr, ptr %out2.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %454, i64 1
  store i32 %453, ptr %arrayidx123, align 4
  %455 = load i32, ptr %x9, align 4
  %456 = load ptr, ptr %out2.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %456, i64 2
  store i32 %455, ptr %arrayidx124, align 4
  %457 = load i32, ptr %x10, align 4
  %458 = load ptr, ptr %out2.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %458, i64 3
  store i32 %457, ptr %arrayidx125, align 4
  %459 = load i32, ptr %x11, align 4
  %460 = load ptr, ptr %out2.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %460, i64 4
  store i32 %459, ptr %arrayidx126, align 4
  %461 = load i32, ptr %x12, align 4
  %462 = load ptr, ptr %out2.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %462, i64 5
  store i32 %461, ptr %arrayidx127, align 4
  %463 = load i32, ptr %x13, align 4
  %464 = load ptr, ptr %out2.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %464, i64 6
  store i32 %463, ptr %arrayidx128, align 4
  %465 = load i32, ptr %x14, align 4
  %466 = load ptr, ptr %out2.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %466, i64 7
  store i32 %465, ptr %arrayidx129, align 4
  %467 = load i32, ptr %x15, align 4
  %468 = load ptr, ptr %out2.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %468, i64 8
  store i32 %467, ptr %arrayidx130, align 4
  %469 = load i32, ptr %x206, align 4
  %470 = load ptr, ptr %out3.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %470, i64 0
  store i32 %469, ptr %arrayidx131, align 4
  %471 = load i32, ptr %x207, align 4
  %472 = load ptr, ptr %out3.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %472, i64 1
  store i32 %471, ptr %arrayidx132, align 4
  %473 = load i32, ptr %x208, align 4
  %474 = load ptr, ptr %out3.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %474, i64 2
  store i32 %473, ptr %arrayidx133, align 4
  %475 = load i32, ptr %x209, align 4
  %476 = load ptr, ptr %out3.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %476, i64 3
  store i32 %475, ptr %arrayidx134, align 4
  %477 = load i32, ptr %x210, align 4
  %478 = load ptr, ptr %out3.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %478, i64 4
  store i32 %477, ptr %arrayidx135, align 4
  %479 = load i32, ptr %x211, align 4
  %480 = load ptr, ptr %out3.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %480, i64 5
  store i32 %479, ptr %arrayidx136, align 4
  %481 = load i32, ptr %x212, align 4
  %482 = load ptr, ptr %out3.addr, align 8
  %arrayidx137 = getelementptr inbounds i32, ptr %482, i64 6
  store i32 %481, ptr %arrayidx137, align 4
  %483 = load i32, ptr %x213, align 4
  %484 = load ptr, ptr %out3.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %484, i64 7
  store i32 %483, ptr %arrayidx138, align 4
  %485 = load i32, ptr %x214, align 4
  %486 = load ptr, ptr %out3.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %486, i64 8
  store i32 %485, ptr %arrayidx139, align 4
  %487 = load i32, ptr %x215, align 4
  %488 = load ptr, ptr %out4.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %488, i64 0
  store i32 %487, ptr %arrayidx140, align 4
  %489 = load i32, ptr %x216, align 4
  %490 = load ptr, ptr %out4.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %490, i64 1
  store i32 %489, ptr %arrayidx141, align 4
  %491 = load i32, ptr %x217, align 4
  %492 = load ptr, ptr %out4.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %492, i64 2
  store i32 %491, ptr %arrayidx142, align 4
  %493 = load i32, ptr %x218, align 4
  %494 = load ptr, ptr %out4.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %494, i64 3
  store i32 %493, ptr %arrayidx143, align 4
  %495 = load i32, ptr %x219, align 4
  %496 = load ptr, ptr %out4.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %496, i64 4
  store i32 %495, ptr %arrayidx144, align 4
  %497 = load i32, ptr %x220, align 4
  %498 = load ptr, ptr %out4.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %498, i64 5
  store i32 %497, ptr %arrayidx145, align 4
  %499 = load i32, ptr %x221, align 4
  %500 = load ptr, ptr %out4.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %500, i64 6
  store i32 %499, ptr %arrayidx146, align 4
  %501 = load i32, ptr %x222, align 4
  %502 = load ptr, ptr %out4.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %502, i64 7
  store i32 %501, ptr %arrayidx147, align 4
  %503 = load i32, ptr %x223, align 4
  %504 = load ptr, ptr %out5.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %504, i64 0
  store i32 %503, ptr %arrayidx148, align 4
  %505 = load i32, ptr %x224, align 4
  %506 = load ptr, ptr %out5.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %506, i64 1
  store i32 %505, ptr %arrayidx149, align 4
  %507 = load i32, ptr %x225, align 4
  %508 = load ptr, ptr %out5.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %508, i64 2
  store i32 %507, ptr %arrayidx150, align 4
  %509 = load i32, ptr %x226, align 4
  %510 = load ptr, ptr %out5.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %510, i64 3
  store i32 %509, ptr %arrayidx151, align 4
  %511 = load i32, ptr %x227, align 4
  %512 = load ptr, ptr %out5.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %512, i64 4
  store i32 %511, ptr %arrayidx152, align 4
  %513 = load i32, ptr %x228, align 4
  %514 = load ptr, ptr %out5.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %514, i64 5
  store i32 %513, ptr %arrayidx153, align 4
  %515 = load i32, ptr %x229, align 4
  %516 = load ptr, ptr %out5.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %516, i64 6
  store i32 %515, ptr %arrayidx154, align 4
  %517 = load i32, ptr %x230, align 4
  %518 = load ptr, ptr %out5.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, ptr %518, i64 7
  store i32 %517, ptr %arrayidx155, align 4
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
