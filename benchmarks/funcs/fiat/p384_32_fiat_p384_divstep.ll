; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i32 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
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
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
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
  %x35 = alloca i8, align 1
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i8, align 1
  %x44 = alloca i32, align 4
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i32, align 4
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  %x63 = alloca i32, align 4
  %x64 = alloca i32, align 4
  %x65 = alloca i32, align 4
  %x66 = alloca i32, align 4
  %x67 = alloca i32, align 4
  %x68 = alloca i32, align 4
  %x69 = alloca i32, align 4
  %x70 = alloca i32, align 4
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
  %x110 = alloca i8, align 1
  %x111 = alloca i32, align 4
  %x112 = alloca i8, align 1
  %x113 = alloca i32, align 4
  %x114 = alloca i8, align 1
  %x115 = alloca i32, align 4
  %x116 = alloca i8, align 1
  %x117 = alloca i32, align 4
  %x118 = alloca i8, align 1
  %x119 = alloca i32, align 4
  %x120 = alloca i8, align 1
  %x121 = alloca i32, align 4
  %x122 = alloca i32, align 4
  %x123 = alloca i32, align 4
  %x124 = alloca i32, align 4
  %x125 = alloca i32, align 4
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
  %x136 = alloca i8, align 1
  %x137 = alloca i32, align 4
  %x138 = alloca i8, align 1
  %x139 = alloca i32, align 4
  %x140 = alloca i8, align 1
  %x141 = alloca i32, align 4
  %x142 = alloca i8, align 1
  %x143 = alloca i32, align 4
  %x144 = alloca i8, align 1
  %x145 = alloca i32, align 4
  %x146 = alloca i8, align 1
  %x147 = alloca i32, align 4
  %x148 = alloca i8, align 1
  %x149 = alloca i32, align 4
  %x150 = alloca i8, align 1
  %x151 = alloca i32, align 4
  %x152 = alloca i8, align 1
  %x153 = alloca i32, align 4
  %x154 = alloca i8, align 1
  %x155 = alloca i32, align 4
  %x156 = alloca i8, align 1
  %x157 = alloca i32, align 4
  %x158 = alloca i32, align 4
  %x159 = alloca i8, align 1
  %x160 = alloca i32, align 4
  %x161 = alloca i8, align 1
  %x162 = alloca i32, align 4
  %x163 = alloca i8, align 1
  %x164 = alloca i32, align 4
  %x165 = alloca i8, align 1
  %x166 = alloca i32, align 4
  %x167 = alloca i8, align 1
  %x168 = alloca i32, align 4
  %x169 = alloca i8, align 1
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
  %x194 = alloca i8, align 1
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
  %x205 = alloca i32, align 4
  %x206 = alloca i32, align 4
  %x207 = alloca i32, align 4
  %x208 = alloca i32, align 4
  %x209 = alloca i8, align 1
  %x210 = alloca i32, align 4
  %x211 = alloca i8, align 1
  %x212 = alloca i32, align 4
  %x213 = alloca i8, align 1
  %x214 = alloca i32, align 4
  %x215 = alloca i8, align 1
  %x216 = alloca i32, align 4
  %x217 = alloca i8, align 1
  %x218 = alloca i32, align 4
  %x219 = alloca i8, align 1
  %x220 = alloca i32, align 4
  %x221 = alloca i8, align 1
  %x222 = alloca i32, align 4
  %x223 = alloca i8, align 1
  %x224 = alloca i32, align 4
  %x225 = alloca i8, align 1
  %x226 = alloca i32, align 4
  %x227 = alloca i8, align 1
  %x228 = alloca i32, align 4
  %x229 = alloca i8, align 1
  %x230 = alloca i32, align 4
  %x231 = alloca i8, align 1
  %x232 = alloca i32, align 4
  %x233 = alloca i8, align 1
  %x234 = alloca i32, align 4
  %x235 = alloca i32, align 4
  %x236 = alloca i32, align 4
  %x237 = alloca i32, align 4
  %x238 = alloca i32, align 4
  %x239 = alloca i32, align 4
  %x240 = alloca i32, align 4
  %x241 = alloca i32, align 4
  %x242 = alloca i32, align 4
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
  %x245 = alloca i32, align 4
  %x246 = alloca i32, align 4
  %x247 = alloca i8, align 1
  %x248 = alloca i32, align 4
  %x249 = alloca i8, align 1
  %x250 = alloca i32, align 4
  %x251 = alloca i8, align 1
  %x252 = alloca i32, align 4
  %x253 = alloca i8, align 1
  %x254 = alloca i32, align 4
  %x255 = alloca i8, align 1
  %x256 = alloca i32, align 4
  %x257 = alloca i8, align 1
  %x258 = alloca i32, align 4
  %x259 = alloca i8, align 1
  %x260 = alloca i32, align 4
  %x261 = alloca i8, align 1
  %x262 = alloca i32, align 4
  %x263 = alloca i8, align 1
  %x264 = alloca i32, align 4
  %x265 = alloca i8, align 1
  %x266 = alloca i32, align 4
  %x267 = alloca i8, align 1
  %x268 = alloca i32, align 4
  %x269 = alloca i8, align 1
  %x270 = alloca i32, align 4
  %x271 = alloca i8, align 1
  %x272 = alloca i32, align 4
  %x273 = alloca i8, align 1
  %x274 = alloca i32, align 4
  %x275 = alloca i8, align 1
  %x276 = alloca i32, align 4
  %x277 = alloca i8, align 1
  %x278 = alloca i32, align 4
  %x279 = alloca i8, align 1
  %x280 = alloca i32, align 4
  %x281 = alloca i8, align 1
  %x282 = alloca i32, align 4
  %x283 = alloca i8, align 1
  %x284 = alloca i32, align 4
  %x285 = alloca i8, align 1
  %x286 = alloca i32, align 4
  %x287 = alloca i8, align 1
  %x288 = alloca i32, align 4
  %x289 = alloca i8, align 1
  %x290 = alloca i32, align 4
  %x291 = alloca i8, align 1
  %x292 = alloca i32, align 4
  %x293 = alloca i8, align 1
  %x294 = alloca i32, align 4
  %x295 = alloca i8, align 1
  %x296 = alloca i32, align 4
  %x297 = alloca i8, align 1
  %x298 = alloca i32, align 4
  %x299 = alloca i32, align 4
  %x300 = alloca i32, align 4
  %x301 = alloca i32, align 4
  %x302 = alloca i32, align 4
  %x303 = alloca i32, align 4
  %x304 = alloca i32, align 4
  %x305 = alloca i32, align 4
  %x306 = alloca i32, align 4
  %x307 = alloca i32, align 4
  %x308 = alloca i32, align 4
  %x309 = alloca i32, align 4
  %x310 = alloca i32, align 4
  %x311 = alloca i32, align 4
  %x312 = alloca i32, align 4
  %x313 = alloca i32, align 4
  %x314 = alloca i32, align 4
  %x315 = alloca i32, align 4
  %x316 = alloca i32, align 4
  %x317 = alloca i32, align 4
  %x318 = alloca i32, align 4
  %x319 = alloca i32, align 4
  %x320 = alloca i32, align 4
  %x321 = alloca i32, align 4
  %x322 = alloca i32, align 4
  %x323 = alloca i32, align 4
  %x324 = alloca i32, align 4
  %x325 = alloca i32, align 4
  %x326 = alloca i32, align 4
  %x327 = alloca i32, align 4
  %x328 = alloca i32, align 4
  %x329 = alloca i32, align 4
  %x330 = alloca i32, align 4
  %x331 = alloca i32, align 4
  %x332 = alloca i32, align 4
  %x333 = alloca i32, align 4
  %x334 = alloca i32, align 4
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
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %not, i32 noundef 1)
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
  call void @fiat_p384_addcarryx_u32(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i32 noundef %not6, i32 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i32, ptr %arg1.addr, align 4
  %7 = load i32, ptr %x4, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx7, align 4
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx8, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %8, i32 noundef %10, i32 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx10, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %13, i32 noundef %15, i32 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 2
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 2
  %22 = load i32, ptr %arrayidx12, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x9, i8 noundef zeroext %18, i32 noundef %20, i32 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx14, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x10, i8 noundef zeroext %23, i32 noundef %25, i32 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %29, i64 4
  %30 = load i32, ptr %arrayidx15, align 4
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %31, i64 4
  %32 = load i32, ptr %arrayidx16, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %28, i32 noundef %30, i32 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %34, i64 5
  %35 = load i32, ptr %arrayidx17, align 4
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %36, i64 5
  %37 = load i32, ptr %arrayidx18, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x12, i8 noundef zeroext %33, i32 noundef %35, i32 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 6
  %40 = load i32, ptr %arrayidx19, align 4
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %41, i64 6
  %42 = load i32, ptr %arrayidx20, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x13, i8 noundef zeroext %38, i32 noundef %40, i32 noundef %42)
  %43 = load i8, ptr %x3, align 1
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %44, i64 7
  %45 = load i32, ptr %arrayidx21, align 4
  %46 = load ptr, ptr %arg3.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %46, i64 7
  %47 = load i32, ptr %arrayidx22, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x14, i8 noundef zeroext %43, i32 noundef %45, i32 noundef %47)
  %48 = load i8, ptr %x3, align 1
  %49 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %49, i64 8
  %50 = load i32, ptr %arrayidx23, align 4
  %51 = load ptr, ptr %arg3.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %51, i64 8
  %52 = load i32, ptr %arrayidx24, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x15, i8 noundef zeroext %48, i32 noundef %50, i32 noundef %52)
  %53 = load i8, ptr %x3, align 1
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %54, i64 9
  %55 = load i32, ptr %arrayidx25, align 4
  %56 = load ptr, ptr %arg3.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %56, i64 9
  %57 = load i32, ptr %arrayidx26, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x16, i8 noundef zeroext %53, i32 noundef %55, i32 noundef %57)
  %58 = load i8, ptr %x3, align 1
  %59 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %59, i64 10
  %60 = load i32, ptr %arrayidx27, align 4
  %61 = load ptr, ptr %arg3.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %61, i64 10
  %62 = load i32, ptr %arrayidx28, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x17, i8 noundef zeroext %58, i32 noundef %60, i32 noundef %62)
  %63 = load i8, ptr %x3, align 1
  %64 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %64, i64 11
  %65 = load i32, ptr %arrayidx29, align 4
  %66 = load ptr, ptr %arg3.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %66, i64 11
  %67 = load i32, ptr %arrayidx30, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x18, i8 noundef zeroext %63, i32 noundef %65, i32 noundef %67)
  %68 = load i8, ptr %x3, align 1
  %69 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %69, i64 12
  %70 = load i32, ptr %arrayidx31, align 4
  %71 = load ptr, ptr %arg3.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %71, i64 12
  %72 = load i32, ptr %arrayidx32, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x19, i8 noundef zeroext %68, i32 noundef %70, i32 noundef %72)
  %73 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %73, i64 0
  %74 = load i32, ptr %arrayidx33, align 4
  %not34 = xor i32 %74, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext 0, i32 noundef 1, i32 noundef %not34)
  %75 = load i8, ptr %x21, align 1
  %76 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %76, i64 1
  %77 = load i32, ptr %arrayidx35, align 4
  %not36 = xor i32 %77, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %75, i32 noundef 0, i32 noundef %not36)
  %78 = load i8, ptr %x23, align 1
  %79 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %79, i64 2
  %80 = load i32, ptr %arrayidx37, align 4
  %not38 = xor i32 %80, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %78, i32 noundef 0, i32 noundef %not38)
  %81 = load i8, ptr %x25, align 1
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %82, i64 3
  %83 = load i32, ptr %arrayidx39, align 4
  %not40 = xor i32 %83, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %81, i32 noundef 0, i32 noundef %not40)
  %84 = load i8, ptr %x27, align 1
  %85 = load ptr, ptr %arg2.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %85, i64 4
  %86 = load i32, ptr %arrayidx41, align 4
  %not42 = xor i32 %86, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %84, i32 noundef 0, i32 noundef %not42)
  %87 = load i8, ptr %x29, align 1
  %88 = load ptr, ptr %arg2.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %88, i64 5
  %89 = load i32, ptr %arrayidx43, align 4
  %not44 = xor i32 %89, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %87, i32 noundef 0, i32 noundef %not44)
  %90 = load i8, ptr %x31, align 1
  %91 = load ptr, ptr %arg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %91, i64 6
  %92 = load i32, ptr %arrayidx45, align 4
  %not46 = xor i32 %92, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %90, i32 noundef 0, i32 noundef %not46)
  %93 = load i8, ptr %x33, align 1
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %94, i64 7
  %95 = load i32, ptr %arrayidx47, align 4
  %not48 = xor i32 %95, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %93, i32 noundef 0, i32 noundef %not48)
  %96 = load i8, ptr %x35, align 1
  %97 = load ptr, ptr %arg2.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %97, i64 8
  %98 = load i32, ptr %arrayidx49, align 4
  %not50 = xor i32 %98, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %96, i32 noundef 0, i32 noundef %not50)
  %99 = load i8, ptr %x37, align 1
  %100 = load ptr, ptr %arg2.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %100, i64 9
  %101 = load i32, ptr %arrayidx51, align 4
  %not52 = xor i32 %101, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %99, i32 noundef 0, i32 noundef %not52)
  %102 = load i8, ptr %x39, align 1
  %103 = load ptr, ptr %arg2.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %103, i64 10
  %104 = load i32, ptr %arrayidx53, align 4
  %not54 = xor i32 %104, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %102, i32 noundef 0, i32 noundef %not54)
  %105 = load i8, ptr %x41, align 1
  %106 = load ptr, ptr %arg2.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %106, i64 11
  %107 = load i32, ptr %arrayidx55, align 4
  %not56 = xor i32 %107, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %105, i32 noundef 0, i32 noundef %not56)
  %108 = load i8, ptr %x43, align 1
  %109 = load ptr, ptr %arg2.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %109, i64 12
  %110 = load i32, ptr %arrayidx57, align 4
  %not58 = xor i32 %110, -1
  call void @fiat_p384_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %108, i32 noundef 0, i32 noundef %not58)
  %111 = load i8, ptr %x3, align 1
  %112 = load ptr, ptr %arg3.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %112, i64 0
  %113 = load i32, ptr %arrayidx59, align 4
  %114 = load i32, ptr %x20, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x46, i8 noundef zeroext %111, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x3, align 1
  %116 = load ptr, ptr %arg3.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %116, i64 1
  %117 = load i32, ptr %arrayidx60, align 4
  %118 = load i32, ptr %x22, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x47, i8 noundef zeroext %115, i32 noundef %117, i32 noundef %118)
  %119 = load i8, ptr %x3, align 1
  %120 = load ptr, ptr %arg3.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %120, i64 2
  %121 = load i32, ptr %arrayidx61, align 4
  %122 = load i32, ptr %x24, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x48, i8 noundef zeroext %119, i32 noundef %121, i32 noundef %122)
  %123 = load i8, ptr %x3, align 1
  %124 = load ptr, ptr %arg3.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %124, i64 3
  %125 = load i32, ptr %arrayidx62, align 4
  %126 = load i32, ptr %x26, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x49, i8 noundef zeroext %123, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x3, align 1
  %128 = load ptr, ptr %arg3.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %128, i64 4
  %129 = load i32, ptr %arrayidx63, align 4
  %130 = load i32, ptr %x28, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x50, i8 noundef zeroext %127, i32 noundef %129, i32 noundef %130)
  %131 = load i8, ptr %x3, align 1
  %132 = load ptr, ptr %arg3.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %132, i64 5
  %133 = load i32, ptr %arrayidx64, align 4
  %134 = load i32, ptr %x30, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x51, i8 noundef zeroext %131, i32 noundef %133, i32 noundef %134)
  %135 = load i8, ptr %x3, align 1
  %136 = load ptr, ptr %arg3.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %136, i64 6
  %137 = load i32, ptr %arrayidx65, align 4
  %138 = load i32, ptr %x32, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x52, i8 noundef zeroext %135, i32 noundef %137, i32 noundef %138)
  %139 = load i8, ptr %x3, align 1
  %140 = load ptr, ptr %arg3.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %140, i64 7
  %141 = load i32, ptr %arrayidx66, align 4
  %142 = load i32, ptr %x34, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x53, i8 noundef zeroext %139, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x3, align 1
  %144 = load ptr, ptr %arg3.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %144, i64 8
  %145 = load i32, ptr %arrayidx67, align 4
  %146 = load i32, ptr %x36, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x54, i8 noundef zeroext %143, i32 noundef %145, i32 noundef %146)
  %147 = load i8, ptr %x3, align 1
  %148 = load ptr, ptr %arg3.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %148, i64 9
  %149 = load i32, ptr %arrayidx68, align 4
  %150 = load i32, ptr %x38, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x55, i8 noundef zeroext %147, i32 noundef %149, i32 noundef %150)
  %151 = load i8, ptr %x3, align 1
  %152 = load ptr, ptr %arg3.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %152, i64 10
  %153 = load i32, ptr %arrayidx69, align 4
  %154 = load i32, ptr %x40, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x56, i8 noundef zeroext %151, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x3, align 1
  %156 = load ptr, ptr %arg3.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %156, i64 11
  %157 = load i32, ptr %arrayidx70, align 4
  %158 = load i32, ptr %x42, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x57, i8 noundef zeroext %155, i32 noundef %157, i32 noundef %158)
  %159 = load i8, ptr %x3, align 1
  %160 = load ptr, ptr %arg3.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %160, i64 12
  %161 = load i32, ptr %arrayidx71, align 4
  %162 = load i32, ptr %x44, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x58, i8 noundef zeroext %159, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x3, align 1
  %164 = load ptr, ptr %arg4.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %164, i64 0
  %165 = load i32, ptr %arrayidx72, align 4
  %166 = load ptr, ptr %arg5.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %166, i64 0
  %167 = load i32, ptr %arrayidx73, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x59, i8 noundef zeroext %163, i32 noundef %165, i32 noundef %167)
  %168 = load i8, ptr %x3, align 1
  %169 = load ptr, ptr %arg4.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %169, i64 1
  %170 = load i32, ptr %arrayidx74, align 4
  %171 = load ptr, ptr %arg5.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %171, i64 1
  %172 = load i32, ptr %arrayidx75, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x60, i8 noundef zeroext %168, i32 noundef %170, i32 noundef %172)
  %173 = load i8, ptr %x3, align 1
  %174 = load ptr, ptr %arg4.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %174, i64 2
  %175 = load i32, ptr %arrayidx76, align 4
  %176 = load ptr, ptr %arg5.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %176, i64 2
  %177 = load i32, ptr %arrayidx77, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x61, i8 noundef zeroext %173, i32 noundef %175, i32 noundef %177)
  %178 = load i8, ptr %x3, align 1
  %179 = load ptr, ptr %arg4.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %179, i64 3
  %180 = load i32, ptr %arrayidx78, align 4
  %181 = load ptr, ptr %arg5.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %181, i64 3
  %182 = load i32, ptr %arrayidx79, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x62, i8 noundef zeroext %178, i32 noundef %180, i32 noundef %182)
  %183 = load i8, ptr %x3, align 1
  %184 = load ptr, ptr %arg4.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %184, i64 4
  %185 = load i32, ptr %arrayidx80, align 4
  %186 = load ptr, ptr %arg5.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %186, i64 4
  %187 = load i32, ptr %arrayidx81, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x63, i8 noundef zeroext %183, i32 noundef %185, i32 noundef %187)
  %188 = load i8, ptr %x3, align 1
  %189 = load ptr, ptr %arg4.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %189, i64 5
  %190 = load i32, ptr %arrayidx82, align 4
  %191 = load ptr, ptr %arg5.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %191, i64 5
  %192 = load i32, ptr %arrayidx83, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x64, i8 noundef zeroext %188, i32 noundef %190, i32 noundef %192)
  %193 = load i8, ptr %x3, align 1
  %194 = load ptr, ptr %arg4.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %194, i64 6
  %195 = load i32, ptr %arrayidx84, align 4
  %196 = load ptr, ptr %arg5.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %196, i64 6
  %197 = load i32, ptr %arrayidx85, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x65, i8 noundef zeroext %193, i32 noundef %195, i32 noundef %197)
  %198 = load i8, ptr %x3, align 1
  %199 = load ptr, ptr %arg4.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %199, i64 7
  %200 = load i32, ptr %arrayidx86, align 4
  %201 = load ptr, ptr %arg5.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %201, i64 7
  %202 = load i32, ptr %arrayidx87, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x66, i8 noundef zeroext %198, i32 noundef %200, i32 noundef %202)
  %203 = load i8, ptr %x3, align 1
  %204 = load ptr, ptr %arg4.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %204, i64 8
  %205 = load i32, ptr %arrayidx88, align 4
  %206 = load ptr, ptr %arg5.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %206, i64 8
  %207 = load i32, ptr %arrayidx89, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x67, i8 noundef zeroext %203, i32 noundef %205, i32 noundef %207)
  %208 = load i8, ptr %x3, align 1
  %209 = load ptr, ptr %arg4.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %209, i64 9
  %210 = load i32, ptr %arrayidx90, align 4
  %211 = load ptr, ptr %arg5.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %211, i64 9
  %212 = load i32, ptr %arrayidx91, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x68, i8 noundef zeroext %208, i32 noundef %210, i32 noundef %212)
  %213 = load i8, ptr %x3, align 1
  %214 = load ptr, ptr %arg4.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %214, i64 10
  %215 = load i32, ptr %arrayidx92, align 4
  %216 = load ptr, ptr %arg5.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %216, i64 10
  %217 = load i32, ptr %arrayidx93, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x69, i8 noundef zeroext %213, i32 noundef %215, i32 noundef %217)
  %218 = load i8, ptr %x3, align 1
  %219 = load ptr, ptr %arg4.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %219, i64 11
  %220 = load i32, ptr %arrayidx94, align 4
  %221 = load ptr, ptr %arg5.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %221, i64 11
  %222 = load i32, ptr %arrayidx95, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x70, i8 noundef zeroext %218, i32 noundef %220, i32 noundef %222)
  %223 = load i32, ptr %x59, align 4
  %224 = load i32, ptr %x59, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext 0, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x72, align 1
  %226 = load i32, ptr %x60, align 4
  %227 = load i32, ptr %x60, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i8, ptr %x74, align 1
  %229 = load i32, ptr %x61, align 4
  %230 = load i32, ptr %x61, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %228, i32 noundef %229, i32 noundef %230)
  %231 = load i8, ptr %x76, align 1
  %232 = load i32, ptr %x62, align 4
  %233 = load i32, ptr %x62, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %231, i32 noundef %232, i32 noundef %233)
  %234 = load i8, ptr %x78, align 1
  %235 = load i32, ptr %x63, align 4
  %236 = load i32, ptr %x63, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %234, i32 noundef %235, i32 noundef %236)
  %237 = load i8, ptr %x80, align 1
  %238 = load i32, ptr %x64, align 4
  %239 = load i32, ptr %x64, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %237, i32 noundef %238, i32 noundef %239)
  %240 = load i8, ptr %x82, align 1
  %241 = load i32, ptr %x65, align 4
  %242 = load i32, ptr %x65, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %240, i32 noundef %241, i32 noundef %242)
  %243 = load i8, ptr %x84, align 1
  %244 = load i32, ptr %x66, align 4
  %245 = load i32, ptr %x66, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %243, i32 noundef %244, i32 noundef %245)
  %246 = load i8, ptr %x86, align 1
  %247 = load i32, ptr %x67, align 4
  %248 = load i32, ptr %x67, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %246, i32 noundef %247, i32 noundef %248)
  %249 = load i8, ptr %x88, align 1
  %250 = load i32, ptr %x68, align 4
  %251 = load i32, ptr %x68, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %249, i32 noundef %250, i32 noundef %251)
  %252 = load i8, ptr %x90, align 1
  %253 = load i32, ptr %x69, align 4
  %254 = load i32, ptr %x69, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %252, i32 noundef %253, i32 noundef %254)
  %255 = load i8, ptr %x92, align 1
  %256 = load i32, ptr %x70, align 4
  %257 = load i32, ptr %x70, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %255, i32 noundef %256, i32 noundef %257)
  %258 = load i32, ptr %x71, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext 0, i32 noundef %258, i32 noundef -1)
  %259 = load i8, ptr %x96, align 1
  %260 = load i32, ptr %x73, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %259, i32 noundef %260, i32 noundef 0)
  %261 = load i8, ptr %x98, align 1
  %262 = load i32, ptr %x75, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %261, i32 noundef %262, i32 noundef 0)
  %263 = load i8, ptr %x100, align 1
  %264 = load i32, ptr %x77, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %263, i32 noundef %264, i32 noundef -1)
  %265 = load i8, ptr %x102, align 1
  %266 = load i32, ptr %x79, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %265, i32 noundef %266, i32 noundef -2)
  %267 = load i8, ptr %x104, align 1
  %268 = load i32, ptr %x81, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %267, i32 noundef %268, i32 noundef -1)
  %269 = load i8, ptr %x106, align 1
  %270 = load i32, ptr %x83, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %269, i32 noundef %270, i32 noundef -1)
  %271 = load i8, ptr %x108, align 1
  %272 = load i32, ptr %x85, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %271, i32 noundef %272, i32 noundef -1)
  %273 = load i8, ptr %x110, align 1
  %274 = load i32, ptr %x87, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %273, i32 noundef %274, i32 noundef -1)
  %275 = load i8, ptr %x112, align 1
  %276 = load i32, ptr %x89, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %275, i32 noundef %276, i32 noundef -1)
  %277 = load i8, ptr %x114, align 1
  %278 = load i32, ptr %x91, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %277, i32 noundef %278, i32 noundef -1)
  %279 = load i8, ptr %x116, align 1
  %280 = load i32, ptr %x93, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %279, i32 noundef %280, i32 noundef -1)
  %281 = load i8, ptr %x118, align 1
  %282 = load i8, ptr %x94, align 1
  %conv96 = zext i8 %282 to i32
  call void @fiat_p384_subborrowx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %281, i32 noundef %conv96, i32 noundef 0)
  %283 = load ptr, ptr %arg4.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %283, i64 11
  %284 = load i32, ptr %arrayidx97, align 4
  store i32 %284, ptr %x121, align 4
  %285 = load ptr, ptr %arg4.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %285, i64 10
  %286 = load i32, ptr %arrayidx98, align 4
  store i32 %286, ptr %x122, align 4
  %287 = load ptr, ptr %arg4.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %287, i64 9
  %288 = load i32, ptr %arrayidx99, align 4
  store i32 %288, ptr %x123, align 4
  %289 = load ptr, ptr %arg4.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %289, i64 8
  %290 = load i32, ptr %arrayidx100, align 4
  store i32 %290, ptr %x124, align 4
  %291 = load ptr, ptr %arg4.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %291, i64 7
  %292 = load i32, ptr %arrayidx101, align 4
  store i32 %292, ptr %x125, align 4
  %293 = load ptr, ptr %arg4.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, ptr %293, i64 6
  %294 = load i32, ptr %arrayidx102, align 4
  store i32 %294, ptr %x126, align 4
  %295 = load ptr, ptr %arg4.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %295, i64 5
  %296 = load i32, ptr %arrayidx103, align 4
  store i32 %296, ptr %x127, align 4
  %297 = load ptr, ptr %arg4.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %297, i64 4
  %298 = load i32, ptr %arrayidx104, align 4
  store i32 %298, ptr %x128, align 4
  %299 = load ptr, ptr %arg4.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %299, i64 3
  %300 = load i32, ptr %arrayidx105, align 4
  store i32 %300, ptr %x129, align 4
  %301 = load ptr, ptr %arg4.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %301, i64 2
  %302 = load i32, ptr %arrayidx106, align 4
  store i32 %302, ptr %x130, align 4
  %303 = load ptr, ptr %arg4.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %303, i64 1
  %304 = load i32, ptr %arrayidx107, align 4
  store i32 %304, ptr %x131, align 4
  %305 = load ptr, ptr %arg4.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %305, i64 0
  %306 = load i32, ptr %arrayidx108, align 4
  store i32 %306, ptr %x132, align 4
  %307 = load i32, ptr %x132, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %307)
  %308 = load i8, ptr %x134, align 1
  %309 = load i32, ptr %x131, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %308, i32 noundef 0, i32 noundef %309)
  %310 = load i8, ptr %x136, align 1
  %311 = load i32, ptr %x130, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %310, i32 noundef 0, i32 noundef %311)
  %312 = load i8, ptr %x138, align 1
  %313 = load i32, ptr %x129, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %312, i32 noundef 0, i32 noundef %313)
  %314 = load i8, ptr %x140, align 1
  %315 = load i32, ptr %x128, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %314, i32 noundef 0, i32 noundef %315)
  %316 = load i8, ptr %x142, align 1
  %317 = load i32, ptr %x127, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %316, i32 noundef 0, i32 noundef %317)
  %318 = load i8, ptr %x144, align 1
  %319 = load i32, ptr %x126, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %318, i32 noundef 0, i32 noundef %319)
  %320 = load i8, ptr %x146, align 1
  %321 = load i32, ptr %x125, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %320, i32 noundef 0, i32 noundef %321)
  %322 = load i8, ptr %x148, align 1
  %323 = load i32, ptr %x124, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %322, i32 noundef 0, i32 noundef %323)
  %324 = load i8, ptr %x150, align 1
  %325 = load i32, ptr %x123, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %324, i32 noundef 0, i32 noundef %325)
  %326 = load i8, ptr %x152, align 1
  %327 = load i32, ptr %x122, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %326, i32 noundef 0, i32 noundef %327)
  %328 = load i8, ptr %x154, align 1
  %329 = load i32, ptr %x121, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %328, i32 noundef 0, i32 noundef %329)
  %330 = load i8, ptr %x156, align 1
  call void @fiat_p384_cmovznz_u32(ptr noundef %x157, i8 noundef zeroext %330, i32 noundef 0, i32 noundef -1)
  %331 = load i32, ptr %x133, align 4
  %332 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x159, align 1
  %334 = load i32, ptr %x135, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %333, i32 noundef %334, i32 noundef 0)
  %335 = load i8, ptr %x161, align 1
  %336 = load i32, ptr %x137, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %335, i32 noundef %336, i32 noundef 0)
  %337 = load i8, ptr %x163, align 1
  %338 = load i32, ptr %x139, align 4
  %339 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x165, align 1
  %341 = load i32, ptr %x141, align 4
  %342 = load i32, ptr %x157, align 4
  %and109 = and i32 %342, -2
  call void @fiat_p384_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %and109)
  %343 = load i8, ptr %x167, align 1
  %344 = load i32, ptr %x143, align 4
  %345 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x169, align 1
  %347 = load i32, ptr %x145, align 4
  %348 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i8, ptr %x171, align 1
  %350 = load i32, ptr %x147, align 4
  %351 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i8, ptr %x173, align 1
  %353 = load i32, ptr %x149, align 4
  %354 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %352, i32 noundef %353, i32 noundef %354)
  %355 = load i8, ptr %x175, align 1
  %356 = load i32, ptr %x151, align 4
  %357 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %355, i32 noundef %356, i32 noundef %357)
  %358 = load i8, ptr %x177, align 1
  %359 = load i32, ptr %x153, align 4
  %360 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %358, i32 noundef %359, i32 noundef %360)
  %361 = load i8, ptr %x179, align 1
  %362 = load i32, ptr %x155, align 4
  %363 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i8, ptr %x3, align 1
  %365 = load ptr, ptr %arg5.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %365, i64 0
  %366 = load i32, ptr %arrayidx110, align 4
  %367 = load i32, ptr %x158, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x182, i8 noundef zeroext %364, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x3, align 1
  %369 = load ptr, ptr %arg5.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %369, i64 1
  %370 = load i32, ptr %arrayidx111, align 4
  %371 = load i32, ptr %x160, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x183, i8 noundef zeroext %368, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x3, align 1
  %373 = load ptr, ptr %arg5.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %373, i64 2
  %374 = load i32, ptr %arrayidx112, align 4
  %375 = load i32, ptr %x162, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x184, i8 noundef zeroext %372, i32 noundef %374, i32 noundef %375)
  %376 = load i8, ptr %x3, align 1
  %377 = load ptr, ptr %arg5.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %377, i64 3
  %378 = load i32, ptr %arrayidx113, align 4
  %379 = load i32, ptr %x164, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x185, i8 noundef zeroext %376, i32 noundef %378, i32 noundef %379)
  %380 = load i8, ptr %x3, align 1
  %381 = load ptr, ptr %arg5.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %381, i64 4
  %382 = load i32, ptr %arrayidx114, align 4
  %383 = load i32, ptr %x166, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x186, i8 noundef zeroext %380, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x3, align 1
  %385 = load ptr, ptr %arg5.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %385, i64 5
  %386 = load i32, ptr %arrayidx115, align 4
  %387 = load i32, ptr %x168, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x187, i8 noundef zeroext %384, i32 noundef %386, i32 noundef %387)
  %388 = load i8, ptr %x3, align 1
  %389 = load ptr, ptr %arg5.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %389, i64 6
  %390 = load i32, ptr %arrayidx116, align 4
  %391 = load i32, ptr %x170, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x188, i8 noundef zeroext %388, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x3, align 1
  %393 = load ptr, ptr %arg5.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %393, i64 7
  %394 = load i32, ptr %arrayidx117, align 4
  %395 = load i32, ptr %x172, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x189, i8 noundef zeroext %392, i32 noundef %394, i32 noundef %395)
  %396 = load i8, ptr %x3, align 1
  %397 = load ptr, ptr %arg5.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %397, i64 8
  %398 = load i32, ptr %arrayidx118, align 4
  %399 = load i32, ptr %x174, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x190, i8 noundef zeroext %396, i32 noundef %398, i32 noundef %399)
  %400 = load i8, ptr %x3, align 1
  %401 = load ptr, ptr %arg5.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, ptr %401, i64 9
  %402 = load i32, ptr %arrayidx119, align 4
  %403 = load i32, ptr %x176, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x191, i8 noundef zeroext %400, i32 noundef %402, i32 noundef %403)
  %404 = load i8, ptr %x3, align 1
  %405 = load ptr, ptr %arg5.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %405, i64 10
  %406 = load i32, ptr %arrayidx120, align 4
  %407 = load i32, ptr %x178, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x192, i8 noundef zeroext %404, i32 noundef %406, i32 noundef %407)
  %408 = load i8, ptr %x3, align 1
  %409 = load ptr, ptr %arg5.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, ptr %409, i64 11
  %410 = load i32, ptr %arrayidx121, align 4
  %411 = load i32, ptr %x180, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x193, i8 noundef zeroext %408, i32 noundef %410, i32 noundef %411)
  %412 = load i32, ptr %x46, align 4
  %and122 = and i32 %412, 1
  %conv123 = trunc i32 %and122 to i8
  store i8 %conv123, ptr %x194, align 1
  %413 = load i8, ptr %x194, align 1
  %414 = load i32, ptr %x7, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x195, i8 noundef zeroext %413, i32 noundef 0, i32 noundef %414)
  %415 = load i8, ptr %x194, align 1
  %416 = load i32, ptr %x8, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x196, i8 noundef zeroext %415, i32 noundef 0, i32 noundef %416)
  %417 = load i8, ptr %x194, align 1
  %418 = load i32, ptr %x9, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x197, i8 noundef zeroext %417, i32 noundef 0, i32 noundef %418)
  %419 = load i8, ptr %x194, align 1
  %420 = load i32, ptr %x10, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x198, i8 noundef zeroext %419, i32 noundef 0, i32 noundef %420)
  %421 = load i8, ptr %x194, align 1
  %422 = load i32, ptr %x11, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x199, i8 noundef zeroext %421, i32 noundef 0, i32 noundef %422)
  %423 = load i8, ptr %x194, align 1
  %424 = load i32, ptr %x12, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x200, i8 noundef zeroext %423, i32 noundef 0, i32 noundef %424)
  %425 = load i8, ptr %x194, align 1
  %426 = load i32, ptr %x13, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x201, i8 noundef zeroext %425, i32 noundef 0, i32 noundef %426)
  %427 = load i8, ptr %x194, align 1
  %428 = load i32, ptr %x14, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x202, i8 noundef zeroext %427, i32 noundef 0, i32 noundef %428)
  %429 = load i8, ptr %x194, align 1
  %430 = load i32, ptr %x15, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x203, i8 noundef zeroext %429, i32 noundef 0, i32 noundef %430)
  %431 = load i8, ptr %x194, align 1
  %432 = load i32, ptr %x16, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x204, i8 noundef zeroext %431, i32 noundef 0, i32 noundef %432)
  %433 = load i8, ptr %x194, align 1
  %434 = load i32, ptr %x17, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x205, i8 noundef zeroext %433, i32 noundef 0, i32 noundef %434)
  %435 = load i8, ptr %x194, align 1
  %436 = load i32, ptr %x18, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x206, i8 noundef zeroext %435, i32 noundef 0, i32 noundef %436)
  %437 = load i8, ptr %x194, align 1
  %438 = load i32, ptr %x19, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x207, i8 noundef zeroext %437, i32 noundef 0, i32 noundef %438)
  %439 = load i32, ptr %x46, align 4
  %440 = load i32, ptr %x195, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x209, align 1
  %442 = load i32, ptr %x47, align 4
  %443 = load i32, ptr %x196, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x211, align 1
  %445 = load i32, ptr %x48, align 4
  %446 = load i32, ptr %x197, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x213, align 1
  %448 = load i32, ptr %x49, align 4
  %449 = load i32, ptr %x198, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x215, align 1
  %451 = load i32, ptr %x50, align 4
  %452 = load i32, ptr %x199, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x217, align 1
  %454 = load i32, ptr %x51, align 4
  %455 = load i32, ptr %x200, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i8, ptr %x219, align 1
  %457 = load i32, ptr %x52, align 4
  %458 = load i32, ptr %x201, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %456, i32 noundef %457, i32 noundef %458)
  %459 = load i8, ptr %x221, align 1
  %460 = load i32, ptr %x53, align 4
  %461 = load i32, ptr %x202, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %459, i32 noundef %460, i32 noundef %461)
  %462 = load i8, ptr %x223, align 1
  %463 = load i32, ptr %x54, align 4
  %464 = load i32, ptr %x203, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %462, i32 noundef %463, i32 noundef %464)
  %465 = load i8, ptr %x225, align 1
  %466 = load i32, ptr %x55, align 4
  %467 = load i32, ptr %x204, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %465, i32 noundef %466, i32 noundef %467)
  %468 = load i8, ptr %x227, align 1
  %469 = load i32, ptr %x56, align 4
  %470 = load i32, ptr %x205, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i8, ptr %x229, align 1
  %472 = load i32, ptr %x57, align 4
  %473 = load i32, ptr %x206, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %471, i32 noundef %472, i32 noundef %473)
  %474 = load i8, ptr %x231, align 1
  %475 = load i32, ptr %x58, align 4
  %476 = load i32, ptr %x207, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %474, i32 noundef %475, i32 noundef %476)
  %477 = load i8, ptr %x194, align 1
  %478 = load i32, ptr %x59, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x234, i8 noundef zeroext %477, i32 noundef 0, i32 noundef %478)
  %479 = load i8, ptr %x194, align 1
  %480 = load i32, ptr %x60, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x235, i8 noundef zeroext %479, i32 noundef 0, i32 noundef %480)
  %481 = load i8, ptr %x194, align 1
  %482 = load i32, ptr %x61, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x236, i8 noundef zeroext %481, i32 noundef 0, i32 noundef %482)
  %483 = load i8, ptr %x194, align 1
  %484 = load i32, ptr %x62, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x237, i8 noundef zeroext %483, i32 noundef 0, i32 noundef %484)
  %485 = load i8, ptr %x194, align 1
  %486 = load i32, ptr %x63, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x238, i8 noundef zeroext %485, i32 noundef 0, i32 noundef %486)
  %487 = load i8, ptr %x194, align 1
  %488 = load i32, ptr %x64, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x239, i8 noundef zeroext %487, i32 noundef 0, i32 noundef %488)
  %489 = load i8, ptr %x194, align 1
  %490 = load i32, ptr %x65, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x240, i8 noundef zeroext %489, i32 noundef 0, i32 noundef %490)
  %491 = load i8, ptr %x194, align 1
  %492 = load i32, ptr %x66, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x241, i8 noundef zeroext %491, i32 noundef 0, i32 noundef %492)
  %493 = load i8, ptr %x194, align 1
  %494 = load i32, ptr %x67, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x242, i8 noundef zeroext %493, i32 noundef 0, i32 noundef %494)
  %495 = load i8, ptr %x194, align 1
  %496 = load i32, ptr %x68, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x243, i8 noundef zeroext %495, i32 noundef 0, i32 noundef %496)
  %497 = load i8, ptr %x194, align 1
  %498 = load i32, ptr %x69, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x244, i8 noundef zeroext %497, i32 noundef 0, i32 noundef %498)
  %499 = load i8, ptr %x194, align 1
  %500 = load i32, ptr %x70, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x245, i8 noundef zeroext %499, i32 noundef 0, i32 noundef %500)
  %501 = load i32, ptr %x182, align 4
  %502 = load i32, ptr %x234, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext 0, i32 noundef %501, i32 noundef %502)
  %503 = load i8, ptr %x247, align 1
  %504 = load i32, ptr %x183, align 4
  %505 = load i32, ptr %x235, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %503, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x249, align 1
  %507 = load i32, ptr %x184, align 4
  %508 = load i32, ptr %x236, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %506, i32 noundef %507, i32 noundef %508)
  %509 = load i8, ptr %x251, align 1
  %510 = load i32, ptr %x185, align 4
  %511 = load i32, ptr %x237, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %509, i32 noundef %510, i32 noundef %511)
  %512 = load i8, ptr %x253, align 1
  %513 = load i32, ptr %x186, align 4
  %514 = load i32, ptr %x238, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %512, i32 noundef %513, i32 noundef %514)
  %515 = load i8, ptr %x255, align 1
  %516 = load i32, ptr %x187, align 4
  %517 = load i32, ptr %x239, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %515, i32 noundef %516, i32 noundef %517)
  %518 = load i8, ptr %x257, align 1
  %519 = load i32, ptr %x188, align 4
  %520 = load i32, ptr %x240, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %518, i32 noundef %519, i32 noundef %520)
  %521 = load i8, ptr %x259, align 1
  %522 = load i32, ptr %x189, align 4
  %523 = load i32, ptr %x241, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %521, i32 noundef %522, i32 noundef %523)
  %524 = load i8, ptr %x261, align 1
  %525 = load i32, ptr %x190, align 4
  %526 = load i32, ptr %x242, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %524, i32 noundef %525, i32 noundef %526)
  %527 = load i8, ptr %x263, align 1
  %528 = load i32, ptr %x191, align 4
  %529 = load i32, ptr %x243, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext %527, i32 noundef %528, i32 noundef %529)
  %530 = load i8, ptr %x265, align 1
  %531 = load i32, ptr %x192, align 4
  %532 = load i32, ptr %x244, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %530, i32 noundef %531, i32 noundef %532)
  %533 = load i8, ptr %x267, align 1
  %534 = load i32, ptr %x193, align 4
  %535 = load i32, ptr %x245, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %533, i32 noundef %534, i32 noundef %535)
  %536 = load i32, ptr %x246, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext 0, i32 noundef %536, i32 noundef -1)
  %537 = load i8, ptr %x271, align 1
  %538 = load i32, ptr %x248, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %537, i32 noundef %538, i32 noundef 0)
  %539 = load i8, ptr %x273, align 1
  %540 = load i32, ptr %x250, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %539, i32 noundef %540, i32 noundef 0)
  %541 = load i8, ptr %x275, align 1
  %542 = load i32, ptr %x252, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %541, i32 noundef %542, i32 noundef -1)
  %543 = load i8, ptr %x277, align 1
  %544 = load i32, ptr %x254, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %543, i32 noundef %544, i32 noundef -2)
  %545 = load i8, ptr %x279, align 1
  %546 = load i32, ptr %x256, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %545, i32 noundef %546, i32 noundef -1)
  %547 = load i8, ptr %x281, align 1
  %548 = load i32, ptr %x258, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %547, i32 noundef %548, i32 noundef -1)
  %549 = load i8, ptr %x283, align 1
  %550 = load i32, ptr %x260, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %549, i32 noundef %550, i32 noundef -1)
  %551 = load i8, ptr %x285, align 1
  %552 = load i32, ptr %x262, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %551, i32 noundef %552, i32 noundef -1)
  %553 = load i8, ptr %x287, align 1
  %554 = load i32, ptr %x264, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %553, i32 noundef %554, i32 noundef -1)
  %555 = load i8, ptr %x289, align 1
  %556 = load i32, ptr %x266, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %555, i32 noundef %556, i32 noundef -1)
  %557 = load i8, ptr %x291, align 1
  %558 = load i32, ptr %x268, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %557, i32 noundef %558, i32 noundef -1)
  %559 = load i8, ptr %x293, align 1
  %560 = load i8, ptr %x269, align 1
  %conv124 = zext i8 %560 to i32
  call void @fiat_p384_subborrowx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %559, i32 noundef %conv124, i32 noundef 0)
  %561 = load i32, ptr %x6, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext 0, i32 noundef %561, i32 noundef 1)
  %562 = load i32, ptr %x208, align 4
  %shr125 = lshr i32 %562, 1
  %563 = load i32, ptr %x210, align 4
  %shl = shl i32 %563, 31
  %and126 = and i32 %shl, -1
  %or = or i32 %shr125, %and126
  store i32 %or, ptr %x298, align 4
  %564 = load i32, ptr %x210, align 4
  %shr127 = lshr i32 %564, 1
  %565 = load i32, ptr %x212, align 4
  %shl128 = shl i32 %565, 31
  %and129 = and i32 %shl128, -1
  %or130 = or i32 %shr127, %and129
  store i32 %or130, ptr %x299, align 4
  %566 = load i32, ptr %x212, align 4
  %shr131 = lshr i32 %566, 1
  %567 = load i32, ptr %x214, align 4
  %shl132 = shl i32 %567, 31
  %and133 = and i32 %shl132, -1
  %or134 = or i32 %shr131, %and133
  store i32 %or134, ptr %x300, align 4
  %568 = load i32, ptr %x214, align 4
  %shr135 = lshr i32 %568, 1
  %569 = load i32, ptr %x216, align 4
  %shl136 = shl i32 %569, 31
  %and137 = and i32 %shl136, -1
  %or138 = or i32 %shr135, %and137
  store i32 %or138, ptr %x301, align 4
  %570 = load i32, ptr %x216, align 4
  %shr139 = lshr i32 %570, 1
  %571 = load i32, ptr %x218, align 4
  %shl140 = shl i32 %571, 31
  %and141 = and i32 %shl140, -1
  %or142 = or i32 %shr139, %and141
  store i32 %or142, ptr %x302, align 4
  %572 = load i32, ptr %x218, align 4
  %shr143 = lshr i32 %572, 1
  %573 = load i32, ptr %x220, align 4
  %shl144 = shl i32 %573, 31
  %and145 = and i32 %shl144, -1
  %or146 = or i32 %shr143, %and145
  store i32 %or146, ptr %x303, align 4
  %574 = load i32, ptr %x220, align 4
  %shr147 = lshr i32 %574, 1
  %575 = load i32, ptr %x222, align 4
  %shl148 = shl i32 %575, 31
  %and149 = and i32 %shl148, -1
  %or150 = or i32 %shr147, %and149
  store i32 %or150, ptr %x304, align 4
  %576 = load i32, ptr %x222, align 4
  %shr151 = lshr i32 %576, 1
  %577 = load i32, ptr %x224, align 4
  %shl152 = shl i32 %577, 31
  %and153 = and i32 %shl152, -1
  %or154 = or i32 %shr151, %and153
  store i32 %or154, ptr %x305, align 4
  %578 = load i32, ptr %x224, align 4
  %shr155 = lshr i32 %578, 1
  %579 = load i32, ptr %x226, align 4
  %shl156 = shl i32 %579, 31
  %and157 = and i32 %shl156, -1
  %or158 = or i32 %shr155, %and157
  store i32 %or158, ptr %x306, align 4
  %580 = load i32, ptr %x226, align 4
  %shr159 = lshr i32 %580, 1
  %581 = load i32, ptr %x228, align 4
  %shl160 = shl i32 %581, 31
  %and161 = and i32 %shl160, -1
  %or162 = or i32 %shr159, %and161
  store i32 %or162, ptr %x307, align 4
  %582 = load i32, ptr %x228, align 4
  %shr163 = lshr i32 %582, 1
  %583 = load i32, ptr %x230, align 4
  %shl164 = shl i32 %583, 31
  %and165 = and i32 %shl164, -1
  %or166 = or i32 %shr163, %and165
  store i32 %or166, ptr %x308, align 4
  %584 = load i32, ptr %x230, align 4
  %shr167 = lshr i32 %584, 1
  %585 = load i32, ptr %x232, align 4
  %shl168 = shl i32 %585, 31
  %and169 = and i32 %shl168, -1
  %or170 = or i32 %shr167, %and169
  store i32 %or170, ptr %x309, align 4
  %586 = load i32, ptr %x232, align 4
  %and171 = and i32 %586, -2147483648
  %587 = load i32, ptr %x232, align 4
  %shr172 = lshr i32 %587, 1
  %or173 = or i32 %and171, %shr172
  store i32 %or173, ptr %x310, align 4
  %588 = load i8, ptr %x120, align 1
  %589 = load i32, ptr %x95, align 4
  %590 = load i32, ptr %x71, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x311, i8 noundef zeroext %588, i32 noundef %589, i32 noundef %590)
  %591 = load i8, ptr %x120, align 1
  %592 = load i32, ptr %x97, align 4
  %593 = load i32, ptr %x73, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x312, i8 noundef zeroext %591, i32 noundef %592, i32 noundef %593)
  %594 = load i8, ptr %x120, align 1
  %595 = load i32, ptr %x99, align 4
  %596 = load i32, ptr %x75, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x313, i8 noundef zeroext %594, i32 noundef %595, i32 noundef %596)
  %597 = load i8, ptr %x120, align 1
  %598 = load i32, ptr %x101, align 4
  %599 = load i32, ptr %x77, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x314, i8 noundef zeroext %597, i32 noundef %598, i32 noundef %599)
  %600 = load i8, ptr %x120, align 1
  %601 = load i32, ptr %x103, align 4
  %602 = load i32, ptr %x79, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x315, i8 noundef zeroext %600, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x120, align 1
  %604 = load i32, ptr %x105, align 4
  %605 = load i32, ptr %x81, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x316, i8 noundef zeroext %603, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x120, align 1
  %607 = load i32, ptr %x107, align 4
  %608 = load i32, ptr %x83, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x317, i8 noundef zeroext %606, i32 noundef %607, i32 noundef %608)
  %609 = load i8, ptr %x120, align 1
  %610 = load i32, ptr %x109, align 4
  %611 = load i32, ptr %x85, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x318, i8 noundef zeroext %609, i32 noundef %610, i32 noundef %611)
  %612 = load i8, ptr %x120, align 1
  %613 = load i32, ptr %x111, align 4
  %614 = load i32, ptr %x87, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x319, i8 noundef zeroext %612, i32 noundef %613, i32 noundef %614)
  %615 = load i8, ptr %x120, align 1
  %616 = load i32, ptr %x113, align 4
  %617 = load i32, ptr %x89, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x320, i8 noundef zeroext %615, i32 noundef %616, i32 noundef %617)
  %618 = load i8, ptr %x120, align 1
  %619 = load i32, ptr %x115, align 4
  %620 = load i32, ptr %x91, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x321, i8 noundef zeroext %618, i32 noundef %619, i32 noundef %620)
  %621 = load i8, ptr %x120, align 1
  %622 = load i32, ptr %x117, align 4
  %623 = load i32, ptr %x93, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x322, i8 noundef zeroext %621, i32 noundef %622, i32 noundef %623)
  %624 = load i8, ptr %x295, align 1
  %625 = load i32, ptr %x270, align 4
  %626 = load i32, ptr %x246, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x323, i8 noundef zeroext %624, i32 noundef %625, i32 noundef %626)
  %627 = load i8, ptr %x295, align 1
  %628 = load i32, ptr %x272, align 4
  %629 = load i32, ptr %x248, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x324, i8 noundef zeroext %627, i32 noundef %628, i32 noundef %629)
  %630 = load i8, ptr %x295, align 1
  %631 = load i32, ptr %x274, align 4
  %632 = load i32, ptr %x250, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x325, i8 noundef zeroext %630, i32 noundef %631, i32 noundef %632)
  %633 = load i8, ptr %x295, align 1
  %634 = load i32, ptr %x276, align 4
  %635 = load i32, ptr %x252, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x326, i8 noundef zeroext %633, i32 noundef %634, i32 noundef %635)
  %636 = load i8, ptr %x295, align 1
  %637 = load i32, ptr %x278, align 4
  %638 = load i32, ptr %x254, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x327, i8 noundef zeroext %636, i32 noundef %637, i32 noundef %638)
  %639 = load i8, ptr %x295, align 1
  %640 = load i32, ptr %x280, align 4
  %641 = load i32, ptr %x256, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x328, i8 noundef zeroext %639, i32 noundef %640, i32 noundef %641)
  %642 = load i8, ptr %x295, align 1
  %643 = load i32, ptr %x282, align 4
  %644 = load i32, ptr %x258, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x329, i8 noundef zeroext %642, i32 noundef %643, i32 noundef %644)
  %645 = load i8, ptr %x295, align 1
  %646 = load i32, ptr %x284, align 4
  %647 = load i32, ptr %x260, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x330, i8 noundef zeroext %645, i32 noundef %646, i32 noundef %647)
  %648 = load i8, ptr %x295, align 1
  %649 = load i32, ptr %x286, align 4
  %650 = load i32, ptr %x262, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x331, i8 noundef zeroext %648, i32 noundef %649, i32 noundef %650)
  %651 = load i8, ptr %x295, align 1
  %652 = load i32, ptr %x288, align 4
  %653 = load i32, ptr %x264, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x332, i8 noundef zeroext %651, i32 noundef %652, i32 noundef %653)
  %654 = load i8, ptr %x295, align 1
  %655 = load i32, ptr %x290, align 4
  %656 = load i32, ptr %x266, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x333, i8 noundef zeroext %654, i32 noundef %655, i32 noundef %656)
  %657 = load i8, ptr %x295, align 1
  %658 = load i32, ptr %x292, align 4
  %659 = load i32, ptr %x268, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x334, i8 noundef zeroext %657, i32 noundef %658, i32 noundef %659)
  %660 = load i32, ptr %x296, align 4
  %661 = load ptr, ptr %out1.addr, align 8
  store i32 %660, ptr %661, align 4
  %662 = load i32, ptr %x7, align 4
  %663 = load ptr, ptr %out2.addr, align 8
  %arrayidx174 = getelementptr inbounds i32, ptr %663, i64 0
  store i32 %662, ptr %arrayidx174, align 4
  %664 = load i32, ptr %x8, align 4
  %665 = load ptr, ptr %out2.addr, align 8
  %arrayidx175 = getelementptr inbounds i32, ptr %665, i64 1
  store i32 %664, ptr %arrayidx175, align 4
  %666 = load i32, ptr %x9, align 4
  %667 = load ptr, ptr %out2.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, ptr %667, i64 2
  store i32 %666, ptr %arrayidx176, align 4
  %668 = load i32, ptr %x10, align 4
  %669 = load ptr, ptr %out2.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, ptr %669, i64 3
  store i32 %668, ptr %arrayidx177, align 4
  %670 = load i32, ptr %x11, align 4
  %671 = load ptr, ptr %out2.addr, align 8
  %arrayidx178 = getelementptr inbounds i32, ptr %671, i64 4
  store i32 %670, ptr %arrayidx178, align 4
  %672 = load i32, ptr %x12, align 4
  %673 = load ptr, ptr %out2.addr, align 8
  %arrayidx179 = getelementptr inbounds i32, ptr %673, i64 5
  store i32 %672, ptr %arrayidx179, align 4
  %674 = load i32, ptr %x13, align 4
  %675 = load ptr, ptr %out2.addr, align 8
  %arrayidx180 = getelementptr inbounds i32, ptr %675, i64 6
  store i32 %674, ptr %arrayidx180, align 4
  %676 = load i32, ptr %x14, align 4
  %677 = load ptr, ptr %out2.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %677, i64 7
  store i32 %676, ptr %arrayidx181, align 4
  %678 = load i32, ptr %x15, align 4
  %679 = load ptr, ptr %out2.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %679, i64 8
  store i32 %678, ptr %arrayidx182, align 4
  %680 = load i32, ptr %x16, align 4
  %681 = load ptr, ptr %out2.addr, align 8
  %arrayidx183 = getelementptr inbounds i32, ptr %681, i64 9
  store i32 %680, ptr %arrayidx183, align 4
  %682 = load i32, ptr %x17, align 4
  %683 = load ptr, ptr %out2.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %683, i64 10
  store i32 %682, ptr %arrayidx184, align 4
  %684 = load i32, ptr %x18, align 4
  %685 = load ptr, ptr %out2.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, ptr %685, i64 11
  store i32 %684, ptr %arrayidx185, align 4
  %686 = load i32, ptr %x19, align 4
  %687 = load ptr, ptr %out2.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %687, i64 12
  store i32 %686, ptr %arrayidx186, align 4
  %688 = load i32, ptr %x298, align 4
  %689 = load ptr, ptr %out3.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, ptr %689, i64 0
  store i32 %688, ptr %arrayidx187, align 4
  %690 = load i32, ptr %x299, align 4
  %691 = load ptr, ptr %out3.addr, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %691, i64 1
  store i32 %690, ptr %arrayidx188, align 4
  %692 = load i32, ptr %x300, align 4
  %693 = load ptr, ptr %out3.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, ptr %693, i64 2
  store i32 %692, ptr %arrayidx189, align 4
  %694 = load i32, ptr %x301, align 4
  %695 = load ptr, ptr %out3.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %695, i64 3
  store i32 %694, ptr %arrayidx190, align 4
  %696 = load i32, ptr %x302, align 4
  %697 = load ptr, ptr %out3.addr, align 8
  %arrayidx191 = getelementptr inbounds i32, ptr %697, i64 4
  store i32 %696, ptr %arrayidx191, align 4
  %698 = load i32, ptr %x303, align 4
  %699 = load ptr, ptr %out3.addr, align 8
  %arrayidx192 = getelementptr inbounds i32, ptr %699, i64 5
  store i32 %698, ptr %arrayidx192, align 4
  %700 = load i32, ptr %x304, align 4
  %701 = load ptr, ptr %out3.addr, align 8
  %arrayidx193 = getelementptr inbounds i32, ptr %701, i64 6
  store i32 %700, ptr %arrayidx193, align 4
  %702 = load i32, ptr %x305, align 4
  %703 = load ptr, ptr %out3.addr, align 8
  %arrayidx194 = getelementptr inbounds i32, ptr %703, i64 7
  store i32 %702, ptr %arrayidx194, align 4
  %704 = load i32, ptr %x306, align 4
  %705 = load ptr, ptr %out3.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, ptr %705, i64 8
  store i32 %704, ptr %arrayidx195, align 4
  %706 = load i32, ptr %x307, align 4
  %707 = load ptr, ptr %out3.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, ptr %707, i64 9
  store i32 %706, ptr %arrayidx196, align 4
  %708 = load i32, ptr %x308, align 4
  %709 = load ptr, ptr %out3.addr, align 8
  %arrayidx197 = getelementptr inbounds i32, ptr %709, i64 10
  store i32 %708, ptr %arrayidx197, align 4
  %710 = load i32, ptr %x309, align 4
  %711 = load ptr, ptr %out3.addr, align 8
  %arrayidx198 = getelementptr inbounds i32, ptr %711, i64 11
  store i32 %710, ptr %arrayidx198, align 4
  %712 = load i32, ptr %x310, align 4
  %713 = load ptr, ptr %out3.addr, align 8
  %arrayidx199 = getelementptr inbounds i32, ptr %713, i64 12
  store i32 %712, ptr %arrayidx199, align 4
  %714 = load i32, ptr %x311, align 4
  %715 = load ptr, ptr %out4.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, ptr %715, i64 0
  store i32 %714, ptr %arrayidx200, align 4
  %716 = load i32, ptr %x312, align 4
  %717 = load ptr, ptr %out4.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, ptr %717, i64 1
  store i32 %716, ptr %arrayidx201, align 4
  %718 = load i32, ptr %x313, align 4
  %719 = load ptr, ptr %out4.addr, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %719, i64 2
  store i32 %718, ptr %arrayidx202, align 4
  %720 = load i32, ptr %x314, align 4
  %721 = load ptr, ptr %out4.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, ptr %721, i64 3
  store i32 %720, ptr %arrayidx203, align 4
  %722 = load i32, ptr %x315, align 4
  %723 = load ptr, ptr %out4.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %723, i64 4
  store i32 %722, ptr %arrayidx204, align 4
  %724 = load i32, ptr %x316, align 4
  %725 = load ptr, ptr %out4.addr, align 8
  %arrayidx205 = getelementptr inbounds i32, ptr %725, i64 5
  store i32 %724, ptr %arrayidx205, align 4
  %726 = load i32, ptr %x317, align 4
  %727 = load ptr, ptr %out4.addr, align 8
  %arrayidx206 = getelementptr inbounds i32, ptr %727, i64 6
  store i32 %726, ptr %arrayidx206, align 4
  %728 = load i32, ptr %x318, align 4
  %729 = load ptr, ptr %out4.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, ptr %729, i64 7
  store i32 %728, ptr %arrayidx207, align 4
  %730 = load i32, ptr %x319, align 4
  %731 = load ptr, ptr %out4.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %731, i64 8
  store i32 %730, ptr %arrayidx208, align 4
  %732 = load i32, ptr %x320, align 4
  %733 = load ptr, ptr %out4.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, ptr %733, i64 9
  store i32 %732, ptr %arrayidx209, align 4
  %734 = load i32, ptr %x321, align 4
  %735 = load ptr, ptr %out4.addr, align 8
  %arrayidx210 = getelementptr inbounds i32, ptr %735, i64 10
  store i32 %734, ptr %arrayidx210, align 4
  %736 = load i32, ptr %x322, align 4
  %737 = load ptr, ptr %out4.addr, align 8
  %arrayidx211 = getelementptr inbounds i32, ptr %737, i64 11
  store i32 %736, ptr %arrayidx211, align 4
  %738 = load i32, ptr %x323, align 4
  %739 = load ptr, ptr %out5.addr, align 8
  %arrayidx212 = getelementptr inbounds i32, ptr %739, i64 0
  store i32 %738, ptr %arrayidx212, align 4
  %740 = load i32, ptr %x324, align 4
  %741 = load ptr, ptr %out5.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, ptr %741, i64 1
  store i32 %740, ptr %arrayidx213, align 4
  %742 = load i32, ptr %x325, align 4
  %743 = load ptr, ptr %out5.addr, align 8
  %arrayidx214 = getelementptr inbounds i32, ptr %743, i64 2
  store i32 %742, ptr %arrayidx214, align 4
  %744 = load i32, ptr %x326, align 4
  %745 = load ptr, ptr %out5.addr, align 8
  %arrayidx215 = getelementptr inbounds i32, ptr %745, i64 3
  store i32 %744, ptr %arrayidx215, align 4
  %746 = load i32, ptr %x327, align 4
  %747 = load ptr, ptr %out5.addr, align 8
  %arrayidx216 = getelementptr inbounds i32, ptr %747, i64 4
  store i32 %746, ptr %arrayidx216, align 4
  %748 = load i32, ptr %x328, align 4
  %749 = load ptr, ptr %out5.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %749, i64 5
  store i32 %748, ptr %arrayidx217, align 4
  %750 = load i32, ptr %x329, align 4
  %751 = load ptr, ptr %out5.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, ptr %751, i64 6
  store i32 %750, ptr %arrayidx218, align 4
  %752 = load i32, ptr %x330, align 4
  %753 = load ptr, ptr %out5.addr, align 8
  %arrayidx219 = getelementptr inbounds i32, ptr %753, i64 7
  store i32 %752, ptr %arrayidx219, align 4
  %754 = load i32, ptr %x331, align 4
  %755 = load ptr, ptr %out5.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %755, i64 8
  store i32 %754, ptr %arrayidx220, align 4
  %756 = load i32, ptr %x332, align 4
  %757 = load ptr, ptr %out5.addr, align 8
  %arrayidx221 = getelementptr inbounds i32, ptr %757, i64 9
  store i32 %756, ptr %arrayidx221, align 4
  %758 = load i32, ptr %x333, align 4
  %759 = load ptr, ptr %out5.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %759, i64 10
  store i32 %758, ptr %arrayidx222, align 4
  %760 = load i32, ptr %x334, align 4
  %761 = load ptr, ptr %out5.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, ptr %761, i64 11
  store i32 %760, ptr %arrayidx223, align 4
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
