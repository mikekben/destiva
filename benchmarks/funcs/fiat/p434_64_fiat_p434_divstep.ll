; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p434_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p434_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i64 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
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
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i8, align 1
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i8, align 1
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
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
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i8, align 1
  %x48 = alloca i64, align 8
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i8, align 1
  %x52 = alloca i64, align 8
  %x53 = alloca i8, align 1
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
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i8, align 1
  %x68 = alloca i64, align 8
  %x69 = alloca i8, align 1
  %x70 = alloca i64, align 8
  %x71 = alloca i8, align 1
  %x72 = alloca i64, align 8
  %x73 = alloca i8, align 1
  %x74 = alloca i64, align 8
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i8, align 1
  %x91 = alloca i64, align 8
  %x92 = alloca i8, align 1
  %x93 = alloca i64, align 8
  %x94 = alloca i8, align 1
  %x95 = alloca i64, align 8
  %x96 = alloca i8, align 1
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  %x99 = alloca i8, align 1
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i8, align 1
  %x104 = alloca i64, align 8
  %x105 = alloca i8, align 1
  %x106 = alloca i64, align 8
  %x107 = alloca i8, align 1
  %x108 = alloca i64, align 8
  %x109 = alloca i8, align 1
  %x110 = alloca i64, align 8
  %x111 = alloca i8, align 1
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i8, align 1
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i8, align 1
  %x130 = alloca i64, align 8
  %x131 = alloca i8, align 1
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
  %x145 = alloca i64, align 8
  %x146 = alloca i64, align 8
  %x147 = alloca i64, align 8
  %x148 = alloca i64, align 8
  %x149 = alloca i64, align 8
  %x150 = alloca i64, align 8
  %x151 = alloca i64, align 8
  %x152 = alloca i8, align 1
  %x153 = alloca i64, align 8
  %x154 = alloca i8, align 1
  %x155 = alloca i64, align 8
  %x156 = alloca i8, align 1
  %x157 = alloca i64, align 8
  %x158 = alloca i8, align 1
  %x159 = alloca i64, align 8
  %x160 = alloca i8, align 1
  %x161 = alloca i64, align 8
  %x162 = alloca i8, align 1
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
  %x174 = alloca i8, align 1
  %x175 = alloca i64, align 8
  %x176 = alloca i8, align 1
  %x177 = alloca i64, align 8
  %x178 = alloca i8, align 1
  %x179 = alloca i64, align 8
  %x180 = alloca i8, align 1
  %x181 = alloca i64, align 8
  %x182 = alloca i8, align 1
  %x183 = alloca i64, align 8
  %x184 = alloca i64, align 8
  %x185 = alloca i64, align 8
  %x186 = alloca i64, align 8
  %x187 = alloca i64, align 8
  %x188 = alloca i64, align 8
  %x189 = alloca i64, align 8
  %x190 = alloca i64, align 8
  %x191 = alloca i64, align 8
  %x192 = alloca i64, align 8
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
  %x196 = alloca i64, align 8
  %x197 = alloca i64, align 8
  %x198 = alloca i64, align 8
  %x199 = alloca i64, align 8
  %x200 = alloca i64, align 8
  %x201 = alloca i64, align 8
  %x202 = alloca i64, align 8
  %x203 = alloca i64, align 8
  %x204 = alloca i64, align 8
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
  call void @fiat_p434_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %not, i64 noundef 1)
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
  call void @fiat_p434_addcarryx_u64(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i64 noundef %not6, i64 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i64, ptr %arg1.addr, align 8
  %7 = load i64, ptr %x4, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef %10, i64 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %13, i64 noundef %15, i64 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %18, i64 noundef %20, i64 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx13, align 8
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 3
  %27 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x10, i8 noundef zeroext %23, i64 noundef %25, i64 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 4
  %30 = load i64, ptr %arrayidx15, align 8
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 4
  %32 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %28, i64 noundef %30, i64 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 5
  %35 = load i64, ptr %arrayidx17, align 8
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %36, i64 5
  %37 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x12, i8 noundef zeroext %33, i64 noundef %35, i64 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %39, i64 6
  %40 = load i64, ptr %arrayidx19, align 8
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %41, i64 6
  %42 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %38, i64 noundef %40, i64 noundef %42)
  %43 = load i8, ptr %x3, align 1
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %44, i64 7
  %45 = load i64, ptr %arrayidx21, align 8
  %46 = load ptr, ptr %arg3.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %46, i64 7
  %47 = load i64, ptr %arrayidx22, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x14, i8 noundef zeroext %43, i64 noundef %45, i64 noundef %47)
  %48 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %48, i64 0
  %49 = load i64, ptr %arrayidx23, align 8
  %not24 = xor i64 %49, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext 0, i64 noundef 1, i64 noundef %not24)
  %50 = load i8, ptr %x16, align 1
  %51 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %51, i64 1
  %52 = load i64, ptr %arrayidx25, align 8
  %not26 = xor i64 %52, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %50, i64 noundef 0, i64 noundef %not26)
  %53 = load i8, ptr %x18, align 1
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %54, i64 2
  %55 = load i64, ptr %arrayidx27, align 8
  %not28 = xor i64 %55, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %53, i64 noundef 0, i64 noundef %not28)
  %56 = load i8, ptr %x20, align 1
  %57 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %57, i64 3
  %58 = load i64, ptr %arrayidx29, align 8
  %not30 = xor i64 %58, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %56, i64 noundef 0, i64 noundef %not30)
  %59 = load i8, ptr %x22, align 1
  %60 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %60, i64 4
  %61 = load i64, ptr %arrayidx31, align 8
  %not32 = xor i64 %61, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %59, i64 noundef 0, i64 noundef %not32)
  %62 = load i8, ptr %x24, align 1
  %63 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %63, i64 5
  %64 = load i64, ptr %arrayidx33, align 8
  %not34 = xor i64 %64, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %62, i64 noundef 0, i64 noundef %not34)
  %65 = load i8, ptr %x26, align 1
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %66, i64 6
  %67 = load i64, ptr %arrayidx35, align 8
  %not36 = xor i64 %67, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %65, i64 noundef 0, i64 noundef %not36)
  %68 = load i8, ptr %x28, align 1
  %69 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %69, i64 7
  %70 = load i64, ptr %arrayidx37, align 8
  %not38 = xor i64 %70, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %68, i64 noundef 0, i64 noundef %not38)
  %71 = load i8, ptr %x3, align 1
  %72 = load ptr, ptr %arg3.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %72, i64 0
  %73 = load i64, ptr %arrayidx39, align 8
  %74 = load i64, ptr %x15, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x31, i8 noundef zeroext %71, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x3, align 1
  %76 = load ptr, ptr %arg3.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %76, i64 1
  %77 = load i64, ptr %arrayidx40, align 8
  %78 = load i64, ptr %x17, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x32, i8 noundef zeroext %75, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %80, i64 2
  %81 = load i64, ptr %arrayidx41, align 8
  %82 = load i64, ptr %x19, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x33, i8 noundef zeroext %79, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %84, i64 3
  %85 = load i64, ptr %arrayidx42, align 8
  %86 = load i64, ptr %x21, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x34, i8 noundef zeroext %83, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %88, i64 4
  %89 = load i64, ptr %arrayidx43, align 8
  %90 = load i64, ptr %x23, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x35, i8 noundef zeroext %87, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg3.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %92, i64 5
  %93 = load i64, ptr %arrayidx44, align 8
  %94 = load i64, ptr %x25, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x36, i8 noundef zeroext %91, i64 noundef %93, i64 noundef %94)
  %95 = load i8, ptr %x3, align 1
  %96 = load ptr, ptr %arg3.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %96, i64 6
  %97 = load i64, ptr %arrayidx45, align 8
  %98 = load i64, ptr %x27, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x37, i8 noundef zeroext %95, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x3, align 1
  %100 = load ptr, ptr %arg3.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %100, i64 7
  %101 = load i64, ptr %arrayidx46, align 8
  %102 = load i64, ptr %x29, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x38, i8 noundef zeroext %99, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x3, align 1
  %104 = load ptr, ptr %arg4.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %104, i64 0
  %105 = load i64, ptr %arrayidx47, align 8
  %106 = load ptr, ptr %arg5.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %106, i64 0
  %107 = load i64, ptr %arrayidx48, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x39, i8 noundef zeroext %103, i64 noundef %105, i64 noundef %107)
  %108 = load i8, ptr %x3, align 1
  %109 = load ptr, ptr %arg4.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %109, i64 1
  %110 = load i64, ptr %arrayidx49, align 8
  %111 = load ptr, ptr %arg5.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %111, i64 1
  %112 = load i64, ptr %arrayidx50, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x40, i8 noundef zeroext %108, i64 noundef %110, i64 noundef %112)
  %113 = load i8, ptr %x3, align 1
  %114 = load ptr, ptr %arg4.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %114, i64 2
  %115 = load i64, ptr %arrayidx51, align 8
  %116 = load ptr, ptr %arg5.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx52, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x41, i8 noundef zeroext %113, i64 noundef %115, i64 noundef %117)
  %118 = load i8, ptr %x3, align 1
  %119 = load ptr, ptr %arg4.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %119, i64 3
  %120 = load i64, ptr %arrayidx53, align 8
  %121 = load ptr, ptr %arg5.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %121, i64 3
  %122 = load i64, ptr %arrayidx54, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x42, i8 noundef zeroext %118, i64 noundef %120, i64 noundef %122)
  %123 = load i8, ptr %x3, align 1
  %124 = load ptr, ptr %arg4.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %124, i64 4
  %125 = load i64, ptr %arrayidx55, align 8
  %126 = load ptr, ptr %arg5.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %126, i64 4
  %127 = load i64, ptr %arrayidx56, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x43, i8 noundef zeroext %123, i64 noundef %125, i64 noundef %127)
  %128 = load i8, ptr %x3, align 1
  %129 = load ptr, ptr %arg4.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %129, i64 5
  %130 = load i64, ptr %arrayidx57, align 8
  %131 = load ptr, ptr %arg5.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %131, i64 5
  %132 = load i64, ptr %arrayidx58, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x44, i8 noundef zeroext %128, i64 noundef %130, i64 noundef %132)
  %133 = load i8, ptr %x3, align 1
  %134 = load ptr, ptr %arg4.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %134, i64 6
  %135 = load i64, ptr %arrayidx59, align 8
  %136 = load ptr, ptr %arg5.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %136, i64 6
  %137 = load i64, ptr %arrayidx60, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x45, i8 noundef zeroext %133, i64 noundef %135, i64 noundef %137)
  %138 = load i64, ptr %x39, align 8
  %139 = load i64, ptr %x39, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext 0, i64 noundef %138, i64 noundef %139)
  %140 = load i8, ptr %x47, align 1
  %141 = load i64, ptr %x40, align 8
  %142 = load i64, ptr %x40, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %140, i64 noundef %141, i64 noundef %142)
  %143 = load i8, ptr %x49, align 1
  %144 = load i64, ptr %x41, align 8
  %145 = load i64, ptr %x41, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %143, i64 noundef %144, i64 noundef %145)
  %146 = load i8, ptr %x51, align 1
  %147 = load i64, ptr %x42, align 8
  %148 = load i64, ptr %x42, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %146, i64 noundef %147, i64 noundef %148)
  %149 = load i8, ptr %x53, align 1
  %150 = load i64, ptr %x43, align 8
  %151 = load i64, ptr %x43, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %149, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x55, align 1
  %153 = load i64, ptr %x44, align 8
  %154 = load i64, ptr %x44, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x57, align 1
  %156 = load i64, ptr %x45, align 8
  %157 = load i64, ptr %x45, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i64, ptr %x46, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i64 noundef %158, i64 noundef -1)
  %159 = load i8, ptr %x61, align 1
  %160 = load i64, ptr %x48, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %159, i64 noundef %160, i64 noundef -1)
  %161 = load i8, ptr %x63, align 1
  %162 = load i64, ptr %x50, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %161, i64 noundef %162, i64 noundef -1)
  %163 = load i8, ptr %x65, align 1
  %164 = load i64, ptr %x52, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %163, i64 noundef %164, i64 noundef -161717841442111489)
  %165 = load i8, ptr %x67, align 1
  %166 = load i64, ptr %x54, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %165, i64 noundef %166, i64 noundef 8918917783347572387)
  %167 = load i8, ptr %x69, align 1
  %168 = load i64, ptr %x56, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %167, i64 noundef %168, i64 noundef 7853257225132122198)
  %169 = load i8, ptr %x71, align 1
  %170 = load i64, ptr %x58, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %169, i64 noundef %170, i64 noundef 620258357900100)
  %171 = load i8, ptr %x73, align 1
  %172 = load i8, ptr %x59, align 1
  %conv61 = zext i8 %172 to i64
  call void @fiat_p434_subborrowx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %171, i64 noundef %conv61, i64 noundef 0)
  %173 = load ptr, ptr %arg4.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %173, i64 6
  %174 = load i64, ptr %arrayidx62, align 8
  store i64 %174, ptr %x76, align 8
  %175 = load ptr, ptr %arg4.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %175, i64 5
  %176 = load i64, ptr %arrayidx63, align 8
  store i64 %176, ptr %x77, align 8
  %177 = load ptr, ptr %arg4.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %177, i64 4
  %178 = load i64, ptr %arrayidx64, align 8
  store i64 %178, ptr %x78, align 8
  %179 = load ptr, ptr %arg4.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %179, i64 3
  %180 = load i64, ptr %arrayidx65, align 8
  store i64 %180, ptr %x79, align 8
  %181 = load ptr, ptr %arg4.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %181, i64 2
  %182 = load i64, ptr %arrayidx66, align 8
  store i64 %182, ptr %x80, align 8
  %183 = load ptr, ptr %arg4.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %183, i64 1
  %184 = load i64, ptr %arrayidx67, align 8
  store i64 %184, ptr %x81, align 8
  %185 = load ptr, ptr %arg4.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %185, i64 0
  %186 = load i64, ptr %arrayidx68, align 8
  store i64 %186, ptr %x82, align 8
  %187 = load i64, ptr %x82, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %187)
  %188 = load i8, ptr %x84, align 1
  %189 = load i64, ptr %x81, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %188, i64 noundef 0, i64 noundef %189)
  %190 = load i8, ptr %x86, align 1
  %191 = load i64, ptr %x80, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %190, i64 noundef 0, i64 noundef %191)
  %192 = load i8, ptr %x88, align 1
  %193 = load i64, ptr %x79, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %192, i64 noundef 0, i64 noundef %193)
  %194 = load i8, ptr %x90, align 1
  %195 = load i64, ptr %x78, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %194, i64 noundef 0, i64 noundef %195)
  %196 = load i8, ptr %x92, align 1
  %197 = load i64, ptr %x77, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %196, i64 noundef 0, i64 noundef %197)
  %198 = load i8, ptr %x94, align 1
  %199 = load i64, ptr %x76, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %198, i64 noundef 0, i64 noundef %199)
  %200 = load i8, ptr %x96, align 1
  call void @fiat_p434_cmovznz_u64(ptr noundef %x97, i8 noundef zeroext %200, i64 noundef 0, i64 noundef -1)
  %201 = load i64, ptr %x83, align 8
  %202 = load i64, ptr %x97, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext 0, i64 noundef %201, i64 noundef %202)
  %203 = load i8, ptr %x99, align 1
  %204 = load i64, ptr %x85, align 8
  %205 = load i64, ptr %x97, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %203, i64 noundef %204, i64 noundef %205)
  %206 = load i8, ptr %x101, align 1
  %207 = load i64, ptr %x87, align 8
  %208 = load i64, ptr %x97, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %206, i64 noundef %207, i64 noundef %208)
  %209 = load i8, ptr %x103, align 1
  %210 = load i64, ptr %x89, align 8
  %211 = load i64, ptr %x97, align 8
  %and69 = and i64 %211, -161717841442111489
  call void @fiat_p434_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %209, i64 noundef %210, i64 noundef %and69)
  %212 = load i8, ptr %x105, align 1
  %213 = load i64, ptr %x91, align 8
  %214 = load i64, ptr %x97, align 8
  %and70 = and i64 %214, 8918917783347572387
  call void @fiat_p434_addcarryx_u64(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %212, i64 noundef %213, i64 noundef %and70)
  %215 = load i8, ptr %x107, align 1
  %216 = load i64, ptr %x93, align 8
  %217 = load i64, ptr %x97, align 8
  %and71 = and i64 %217, 7853257225132122198
  call void @fiat_p434_addcarryx_u64(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %215, i64 noundef %216, i64 noundef %and71)
  %218 = load i8, ptr %x109, align 1
  %219 = load i64, ptr %x95, align 8
  %220 = load i64, ptr %x97, align 8
  %and72 = and i64 %220, 620258357900100
  call void @fiat_p434_addcarryx_u64(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %218, i64 noundef %219, i64 noundef %and72)
  %221 = load i8, ptr %x3, align 1
  %222 = load ptr, ptr %arg5.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %222, i64 0
  %223 = load i64, ptr %arrayidx73, align 8
  %224 = load i64, ptr %x98, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x112, i8 noundef zeroext %221, i64 noundef %223, i64 noundef %224)
  %225 = load i8, ptr %x3, align 1
  %226 = load ptr, ptr %arg5.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %226, i64 1
  %227 = load i64, ptr %arrayidx74, align 8
  %228 = load i64, ptr %x100, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x113, i8 noundef zeroext %225, i64 noundef %227, i64 noundef %228)
  %229 = load i8, ptr %x3, align 1
  %230 = load ptr, ptr %arg5.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %230, i64 2
  %231 = load i64, ptr %arrayidx75, align 8
  %232 = load i64, ptr %x102, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x114, i8 noundef zeroext %229, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x3, align 1
  %234 = load ptr, ptr %arg5.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %234, i64 3
  %235 = load i64, ptr %arrayidx76, align 8
  %236 = load i64, ptr %x104, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x115, i8 noundef zeroext %233, i64 noundef %235, i64 noundef %236)
  %237 = load i8, ptr %x3, align 1
  %238 = load ptr, ptr %arg5.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %238, i64 4
  %239 = load i64, ptr %arrayidx77, align 8
  %240 = load i64, ptr %x106, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x116, i8 noundef zeroext %237, i64 noundef %239, i64 noundef %240)
  %241 = load i8, ptr %x3, align 1
  %242 = load ptr, ptr %arg5.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %242, i64 5
  %243 = load i64, ptr %arrayidx78, align 8
  %244 = load i64, ptr %x108, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x117, i8 noundef zeroext %241, i64 noundef %243, i64 noundef %244)
  %245 = load i8, ptr %x3, align 1
  %246 = load ptr, ptr %arg5.addr, align 8
  %arrayidx79 = getelementptr inbounds i64, ptr %246, i64 6
  %247 = load i64, ptr %arrayidx79, align 8
  %248 = load i64, ptr %x110, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x118, i8 noundef zeroext %245, i64 noundef %247, i64 noundef %248)
  %249 = load i64, ptr %x31, align 8
  %and80 = and i64 %249, 1
  %conv81 = trunc i64 %and80 to i8
  store i8 %conv81, ptr %x119, align 1
  %250 = load i8, ptr %x119, align 1
  %251 = load i64, ptr %x7, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x120, i8 noundef zeroext %250, i64 noundef 0, i64 noundef %251)
  %252 = load i8, ptr %x119, align 1
  %253 = load i64, ptr %x8, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x121, i8 noundef zeroext %252, i64 noundef 0, i64 noundef %253)
  %254 = load i8, ptr %x119, align 1
  %255 = load i64, ptr %x9, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x122, i8 noundef zeroext %254, i64 noundef 0, i64 noundef %255)
  %256 = load i8, ptr %x119, align 1
  %257 = load i64, ptr %x10, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x123, i8 noundef zeroext %256, i64 noundef 0, i64 noundef %257)
  %258 = load i8, ptr %x119, align 1
  %259 = load i64, ptr %x11, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x124, i8 noundef zeroext %258, i64 noundef 0, i64 noundef %259)
  %260 = load i8, ptr %x119, align 1
  %261 = load i64, ptr %x12, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x125, i8 noundef zeroext %260, i64 noundef 0, i64 noundef %261)
  %262 = load i8, ptr %x119, align 1
  %263 = load i64, ptr %x13, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x126, i8 noundef zeroext %262, i64 noundef 0, i64 noundef %263)
  %264 = load i8, ptr %x119, align 1
  %265 = load i64, ptr %x14, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x127, i8 noundef zeroext %264, i64 noundef 0, i64 noundef %265)
  %266 = load i64, ptr %x31, align 8
  %267 = load i64, ptr %x120, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext 0, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x129, align 1
  %269 = load i64, ptr %x32, align 8
  %270 = load i64, ptr %x121, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i8, ptr %x131, align 1
  %272 = load i64, ptr %x33, align 8
  %273 = load i64, ptr %x122, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %271, i64 noundef %272, i64 noundef %273)
  %274 = load i8, ptr %x133, align 1
  %275 = load i64, ptr %x34, align 8
  %276 = load i64, ptr %x123, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %274, i64 noundef %275, i64 noundef %276)
  %277 = load i8, ptr %x135, align 1
  %278 = load i64, ptr %x35, align 8
  %279 = load i64, ptr %x124, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %277, i64 noundef %278, i64 noundef %279)
  %280 = load i8, ptr %x137, align 1
  %281 = load i64, ptr %x36, align 8
  %282 = load i64, ptr %x125, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %280, i64 noundef %281, i64 noundef %282)
  %283 = load i8, ptr %x139, align 1
  %284 = load i64, ptr %x37, align 8
  %285 = load i64, ptr %x126, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %283, i64 noundef %284, i64 noundef %285)
  %286 = load i8, ptr %x141, align 1
  %287 = load i64, ptr %x38, align 8
  %288 = load i64, ptr %x127, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %286, i64 noundef %287, i64 noundef %288)
  %289 = load i8, ptr %x119, align 1
  %290 = load i64, ptr %x39, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x144, i8 noundef zeroext %289, i64 noundef 0, i64 noundef %290)
  %291 = load i8, ptr %x119, align 1
  %292 = load i64, ptr %x40, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x145, i8 noundef zeroext %291, i64 noundef 0, i64 noundef %292)
  %293 = load i8, ptr %x119, align 1
  %294 = load i64, ptr %x41, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x146, i8 noundef zeroext %293, i64 noundef 0, i64 noundef %294)
  %295 = load i8, ptr %x119, align 1
  %296 = load i64, ptr %x42, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x147, i8 noundef zeroext %295, i64 noundef 0, i64 noundef %296)
  %297 = load i8, ptr %x119, align 1
  %298 = load i64, ptr %x43, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x148, i8 noundef zeroext %297, i64 noundef 0, i64 noundef %298)
  %299 = load i8, ptr %x119, align 1
  %300 = load i64, ptr %x44, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x149, i8 noundef zeroext %299, i64 noundef 0, i64 noundef %300)
  %301 = load i8, ptr %x119, align 1
  %302 = load i64, ptr %x45, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x150, i8 noundef zeroext %301, i64 noundef 0, i64 noundef %302)
  %303 = load i64, ptr %x112, align 8
  %304 = load i64, ptr %x144, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext 0, i64 noundef %303, i64 noundef %304)
  %305 = load i8, ptr %x152, align 1
  %306 = load i64, ptr %x113, align 8
  %307 = load i64, ptr %x145, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %305, i64 noundef %306, i64 noundef %307)
  %308 = load i8, ptr %x154, align 1
  %309 = load i64, ptr %x114, align 8
  %310 = load i64, ptr %x146, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x156, align 1
  %312 = load i64, ptr %x115, align 8
  %313 = load i64, ptr %x147, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x158, align 1
  %315 = load i64, ptr %x116, align 8
  %316 = load i64, ptr %x148, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %314, i64 noundef %315, i64 noundef %316)
  %317 = load i8, ptr %x160, align 1
  %318 = load i64, ptr %x117, align 8
  %319 = load i64, ptr %x149, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %317, i64 noundef %318, i64 noundef %319)
  %320 = load i8, ptr %x162, align 1
  %321 = load i64, ptr %x118, align 8
  %322 = load i64, ptr %x150, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %320, i64 noundef %321, i64 noundef %322)
  %323 = load i64, ptr %x151, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext 0, i64 noundef %323, i64 noundef -1)
  %324 = load i8, ptr %x166, align 1
  %325 = load i64, ptr %x153, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %324, i64 noundef %325, i64 noundef -1)
  %326 = load i8, ptr %x168, align 1
  %327 = load i64, ptr %x155, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %326, i64 noundef %327, i64 noundef -1)
  %328 = load i8, ptr %x170, align 1
  %329 = load i64, ptr %x157, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %328, i64 noundef %329, i64 noundef -161717841442111489)
  %330 = load i8, ptr %x172, align 1
  %331 = load i64, ptr %x159, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %330, i64 noundef %331, i64 noundef 8918917783347572387)
  %332 = load i8, ptr %x174, align 1
  %333 = load i64, ptr %x161, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %332, i64 noundef %333, i64 noundef 7853257225132122198)
  %334 = load i8, ptr %x176, align 1
  %335 = load i64, ptr %x163, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %334, i64 noundef %335, i64 noundef 620258357900100)
  %336 = load i8, ptr %x178, align 1
  %337 = load i8, ptr %x164, align 1
  %conv82 = zext i8 %337 to i64
  call void @fiat_p434_subborrowx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %336, i64 noundef %conv82, i64 noundef 0)
  %338 = load i64, ptr %x6, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext 0, i64 noundef %338, i64 noundef 1)
  %339 = load i64, ptr %x128, align 8
  %shr83 = lshr i64 %339, 1
  %340 = load i64, ptr %x130, align 8
  %shl = shl i64 %340, 63
  %and84 = and i64 %shl, -1
  %or = or i64 %shr83, %and84
  store i64 %or, ptr %x183, align 8
  %341 = load i64, ptr %x130, align 8
  %shr85 = lshr i64 %341, 1
  %342 = load i64, ptr %x132, align 8
  %shl86 = shl i64 %342, 63
  %and87 = and i64 %shl86, -1
  %or88 = or i64 %shr85, %and87
  store i64 %or88, ptr %x184, align 8
  %343 = load i64, ptr %x132, align 8
  %shr89 = lshr i64 %343, 1
  %344 = load i64, ptr %x134, align 8
  %shl90 = shl i64 %344, 63
  %and91 = and i64 %shl90, -1
  %or92 = or i64 %shr89, %and91
  store i64 %or92, ptr %x185, align 8
  %345 = load i64, ptr %x134, align 8
  %shr93 = lshr i64 %345, 1
  %346 = load i64, ptr %x136, align 8
  %shl94 = shl i64 %346, 63
  %and95 = and i64 %shl94, -1
  %or96 = or i64 %shr93, %and95
  store i64 %or96, ptr %x186, align 8
  %347 = load i64, ptr %x136, align 8
  %shr97 = lshr i64 %347, 1
  %348 = load i64, ptr %x138, align 8
  %shl98 = shl i64 %348, 63
  %and99 = and i64 %shl98, -1
  %or100 = or i64 %shr97, %and99
  store i64 %or100, ptr %x187, align 8
  %349 = load i64, ptr %x138, align 8
  %shr101 = lshr i64 %349, 1
  %350 = load i64, ptr %x140, align 8
  %shl102 = shl i64 %350, 63
  %and103 = and i64 %shl102, -1
  %or104 = or i64 %shr101, %and103
  store i64 %or104, ptr %x188, align 8
  %351 = load i64, ptr %x140, align 8
  %shr105 = lshr i64 %351, 1
  %352 = load i64, ptr %x142, align 8
  %shl106 = shl i64 %352, 63
  %and107 = and i64 %shl106, -1
  %or108 = or i64 %shr105, %and107
  store i64 %or108, ptr %x189, align 8
  %353 = load i64, ptr %x142, align 8
  %and109 = and i64 %353, -9223372036854775808
  %354 = load i64, ptr %x142, align 8
  %shr110 = lshr i64 %354, 1
  %or111 = or i64 %and109, %shr110
  store i64 %or111, ptr %x190, align 8
  %355 = load i8, ptr %x75, align 1
  %356 = load i64, ptr %x60, align 8
  %357 = load i64, ptr %x46, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x191, i8 noundef zeroext %355, i64 noundef %356, i64 noundef %357)
  %358 = load i8, ptr %x75, align 1
  %359 = load i64, ptr %x62, align 8
  %360 = load i64, ptr %x48, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x192, i8 noundef zeroext %358, i64 noundef %359, i64 noundef %360)
  %361 = load i8, ptr %x75, align 1
  %362 = load i64, ptr %x64, align 8
  %363 = load i64, ptr %x50, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x193, i8 noundef zeroext %361, i64 noundef %362, i64 noundef %363)
  %364 = load i8, ptr %x75, align 1
  %365 = load i64, ptr %x66, align 8
  %366 = load i64, ptr %x52, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x194, i8 noundef zeroext %364, i64 noundef %365, i64 noundef %366)
  %367 = load i8, ptr %x75, align 1
  %368 = load i64, ptr %x68, align 8
  %369 = load i64, ptr %x54, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x195, i8 noundef zeroext %367, i64 noundef %368, i64 noundef %369)
  %370 = load i8, ptr %x75, align 1
  %371 = load i64, ptr %x70, align 8
  %372 = load i64, ptr %x56, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x196, i8 noundef zeroext %370, i64 noundef %371, i64 noundef %372)
  %373 = load i8, ptr %x75, align 1
  %374 = load i64, ptr %x72, align 8
  %375 = load i64, ptr %x58, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x197, i8 noundef zeroext %373, i64 noundef %374, i64 noundef %375)
  %376 = load i8, ptr %x180, align 1
  %377 = load i64, ptr %x165, align 8
  %378 = load i64, ptr %x151, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x198, i8 noundef zeroext %376, i64 noundef %377, i64 noundef %378)
  %379 = load i8, ptr %x180, align 1
  %380 = load i64, ptr %x167, align 8
  %381 = load i64, ptr %x153, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x199, i8 noundef zeroext %379, i64 noundef %380, i64 noundef %381)
  %382 = load i8, ptr %x180, align 1
  %383 = load i64, ptr %x169, align 8
  %384 = load i64, ptr %x155, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x200, i8 noundef zeroext %382, i64 noundef %383, i64 noundef %384)
  %385 = load i8, ptr %x180, align 1
  %386 = load i64, ptr %x171, align 8
  %387 = load i64, ptr %x157, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x201, i8 noundef zeroext %385, i64 noundef %386, i64 noundef %387)
  %388 = load i8, ptr %x180, align 1
  %389 = load i64, ptr %x173, align 8
  %390 = load i64, ptr %x159, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x202, i8 noundef zeroext %388, i64 noundef %389, i64 noundef %390)
  %391 = load i8, ptr %x180, align 1
  %392 = load i64, ptr %x175, align 8
  %393 = load i64, ptr %x161, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x203, i8 noundef zeroext %391, i64 noundef %392, i64 noundef %393)
  %394 = load i8, ptr %x180, align 1
  %395 = load i64, ptr %x177, align 8
  %396 = load i64, ptr %x163, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x204, i8 noundef zeroext %394, i64 noundef %395, i64 noundef %396)
  %397 = load i64, ptr %x181, align 8
  %398 = load ptr, ptr %out1.addr, align 8
  store i64 %397, ptr %398, align 8
  %399 = load i64, ptr %x7, align 8
  %400 = load ptr, ptr %out2.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %400, i64 0
  store i64 %399, ptr %arrayidx112, align 8
  %401 = load i64, ptr %x8, align 8
  %402 = load ptr, ptr %out2.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %402, i64 1
  store i64 %401, ptr %arrayidx113, align 8
  %403 = load i64, ptr %x9, align 8
  %404 = load ptr, ptr %out2.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %404, i64 2
  store i64 %403, ptr %arrayidx114, align 8
  %405 = load i64, ptr %x10, align 8
  %406 = load ptr, ptr %out2.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %406, i64 3
  store i64 %405, ptr %arrayidx115, align 8
  %407 = load i64, ptr %x11, align 8
  %408 = load ptr, ptr %out2.addr, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %408, i64 4
  store i64 %407, ptr %arrayidx116, align 8
  %409 = load i64, ptr %x12, align 8
  %410 = load ptr, ptr %out2.addr, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %410, i64 5
  store i64 %409, ptr %arrayidx117, align 8
  %411 = load i64, ptr %x13, align 8
  %412 = load ptr, ptr %out2.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %412, i64 6
  store i64 %411, ptr %arrayidx118, align 8
  %413 = load i64, ptr %x14, align 8
  %414 = load ptr, ptr %out2.addr, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %414, i64 7
  store i64 %413, ptr %arrayidx119, align 8
  %415 = load i64, ptr %x183, align 8
  %416 = load ptr, ptr %out3.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %416, i64 0
  store i64 %415, ptr %arrayidx120, align 8
  %417 = load i64, ptr %x184, align 8
  %418 = load ptr, ptr %out3.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, ptr %418, i64 1
  store i64 %417, ptr %arrayidx121, align 8
  %419 = load i64, ptr %x185, align 8
  %420 = load ptr, ptr %out3.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %420, i64 2
  store i64 %419, ptr %arrayidx122, align 8
  %421 = load i64, ptr %x186, align 8
  %422 = load ptr, ptr %out3.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %422, i64 3
  store i64 %421, ptr %arrayidx123, align 8
  %423 = load i64, ptr %x187, align 8
  %424 = load ptr, ptr %out3.addr, align 8
  %arrayidx124 = getelementptr inbounds i64, ptr %424, i64 4
  store i64 %423, ptr %arrayidx124, align 8
  %425 = load i64, ptr %x188, align 8
  %426 = load ptr, ptr %out3.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %426, i64 5
  store i64 %425, ptr %arrayidx125, align 8
  %427 = load i64, ptr %x189, align 8
  %428 = load ptr, ptr %out3.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %428, i64 6
  store i64 %427, ptr %arrayidx126, align 8
  %429 = load i64, ptr %x190, align 8
  %430 = load ptr, ptr %out3.addr, align 8
  %arrayidx127 = getelementptr inbounds i64, ptr %430, i64 7
  store i64 %429, ptr %arrayidx127, align 8
  %431 = load i64, ptr %x191, align 8
  %432 = load ptr, ptr %out4.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %432, i64 0
  store i64 %431, ptr %arrayidx128, align 8
  %433 = load i64, ptr %x192, align 8
  %434 = load ptr, ptr %out4.addr, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %434, i64 1
  store i64 %433, ptr %arrayidx129, align 8
  %435 = load i64, ptr %x193, align 8
  %436 = load ptr, ptr %out4.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %436, i64 2
  store i64 %435, ptr %arrayidx130, align 8
  %437 = load i64, ptr %x194, align 8
  %438 = load ptr, ptr %out4.addr, align 8
  %arrayidx131 = getelementptr inbounds i64, ptr %438, i64 3
  store i64 %437, ptr %arrayidx131, align 8
  %439 = load i64, ptr %x195, align 8
  %440 = load ptr, ptr %out4.addr, align 8
  %arrayidx132 = getelementptr inbounds i64, ptr %440, i64 4
  store i64 %439, ptr %arrayidx132, align 8
  %441 = load i64, ptr %x196, align 8
  %442 = load ptr, ptr %out4.addr, align 8
  %arrayidx133 = getelementptr inbounds i64, ptr %442, i64 5
  store i64 %441, ptr %arrayidx133, align 8
  %443 = load i64, ptr %x197, align 8
  %444 = load ptr, ptr %out4.addr, align 8
  %arrayidx134 = getelementptr inbounds i64, ptr %444, i64 6
  store i64 %443, ptr %arrayidx134, align 8
  %445 = load i64, ptr %x198, align 8
  %446 = load ptr, ptr %out5.addr, align 8
  %arrayidx135 = getelementptr inbounds i64, ptr %446, i64 0
  store i64 %445, ptr %arrayidx135, align 8
  %447 = load i64, ptr %x199, align 8
  %448 = load ptr, ptr %out5.addr, align 8
  %arrayidx136 = getelementptr inbounds i64, ptr %448, i64 1
  store i64 %447, ptr %arrayidx136, align 8
  %449 = load i64, ptr %x200, align 8
  %450 = load ptr, ptr %out5.addr, align 8
  %arrayidx137 = getelementptr inbounds i64, ptr %450, i64 2
  store i64 %449, ptr %arrayidx137, align 8
  %451 = load i64, ptr %x201, align 8
  %452 = load ptr, ptr %out5.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %452, i64 3
  store i64 %451, ptr %arrayidx138, align 8
  %453 = load i64, ptr %x202, align 8
  %454 = load ptr, ptr %out5.addr, align 8
  %arrayidx139 = getelementptr inbounds i64, ptr %454, i64 4
  store i64 %453, ptr %arrayidx139, align 8
  %455 = load i64, ptr %x203, align 8
  %456 = load ptr, ptr %out5.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %456, i64 5
  store i64 %455, ptr %arrayidx140, align 8
  %457 = load i64, ptr %x204, align 8
  %458 = load ptr, ptr %out5.addr, align 8
  %arrayidx141 = getelementptr inbounds i64, ptr %458, i64 6
  store i64 %457, ptr %arrayidx141, align 8
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
