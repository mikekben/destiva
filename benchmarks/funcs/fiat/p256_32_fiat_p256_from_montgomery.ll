; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i8, align 1
  %x12 = alloca i32, align 4
  %x13 = alloca i8, align 1
  %x14 = alloca i32, align 4
  %x15 = alloca i8, align 1
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
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i32, align 4
  %x32 = alloca i32, align 4
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
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
  %x59 = alloca i32, align 4
  %x60 = alloca i32, align 4
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  %x63 = alloca i32, align 4
  %x64 = alloca i32, align 4
  %x65 = alloca i32, align 4
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
  %x77 = alloca i8, align 1
  %x78 = alloca i32, align 4
  %x79 = alloca i8, align 1
  %x80 = alloca i32, align 4
  %x81 = alloca i8, align 1
  %x82 = alloca i32, align 4
  %x83 = alloca i8, align 1
  %x84 = alloca i32, align 4
  %x85 = alloca i8, align 1
  %x86 = alloca i32, align 4
  %x87 = alloca i8, align 1
  %x88 = alloca i32, align 4
  %x89 = alloca i8, align 1
  %x90 = alloca i32, align 4
  %x91 = alloca i8, align 1
  %x92 = alloca i32, align 4
  %x93 = alloca i8, align 1
  %x94 = alloca i32, align 4
  %x95 = alloca i8, align 1
  %x96 = alloca i32, align 4
  %x97 = alloca i8, align 1
  %x98 = alloca i32, align 4
  %x99 = alloca i8, align 1
  %x100 = alloca i32, align 4
  %x101 = alloca i8, align 1
  %x102 = alloca i32, align 4
  %x103 = alloca i32, align 4
  %x104 = alloca i32, align 4
  %x105 = alloca i32, align 4
  %x106 = alloca i32, align 4
  %x107 = alloca i32, align 4
  %x108 = alloca i32, align 4
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
  %x127 = alloca i8, align 1
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
  %x145 = alloca i8, align 1
  %x146 = alloca i32, align 4
  %x147 = alloca i8, align 1
  %x148 = alloca i32, align 4
  %x149 = alloca i32, align 4
  %x150 = alloca i32, align 4
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
  %x153 = alloca i32, align 4
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
  %x156 = alloca i32, align 4
  %x157 = alloca i8, align 1
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
  %x195 = alloca i32, align 4
  %x196 = alloca i32, align 4
  %x197 = alloca i32, align 4
  %x198 = alloca i32, align 4
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
  %x201 = alloca i32, align 4
  %x202 = alloca i32, align 4
  %x203 = alloca i8, align 1
  %x204 = alloca i32, align 4
  %x205 = alloca i8, align 1
  %x206 = alloca i32, align 4
  %x207 = alloca i8, align 1
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
  %x235 = alloca i8, align 1
  %x236 = alloca i32, align 4
  %x237 = alloca i8, align 1
  %x238 = alloca i32, align 4
  %x239 = alloca i8, align 1
  %x240 = alloca i32, align 4
  %x241 = alloca i32, align 4
  %x242 = alloca i32, align 4
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
  %x245 = alloca i32, align 4
  %x246 = alloca i32, align 4
  %x247 = alloca i32, align 4
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
  %x287 = alloca i32, align 4
  %x288 = alloca i32, align 4
  %x289 = alloca i32, align 4
  %x290 = alloca i32, align 4
  %x291 = alloca i32, align 4
  %x292 = alloca i32, align 4
  %x293 = alloca i32, align 4
  %x294 = alloca i32, align 4
  %x295 = alloca i8, align 1
  %x296 = alloca i32, align 4
  %x297 = alloca i8, align 1
  %x298 = alloca i32, align 4
  %x299 = alloca i8, align 1
  %x300 = alloca i32, align 4
  %x301 = alloca i8, align 1
  %x302 = alloca i32, align 4
  %x303 = alloca i8, align 1
  %x304 = alloca i32, align 4
  %x305 = alloca i8, align 1
  %x306 = alloca i32, align 4
  %x307 = alloca i8, align 1
  %x308 = alloca i32, align 4
  %x309 = alloca i8, align 1
  %x310 = alloca i32, align 4
  %x311 = alloca i8, align 1
  %x312 = alloca i32, align 4
  %x313 = alloca i8, align 1
  %x314 = alloca i32, align 4
  %x315 = alloca i8, align 1
  %x316 = alloca i32, align 4
  %x317 = alloca i8, align 1
  %x318 = alloca i32, align 4
  %x319 = alloca i8, align 1
  %x320 = alloca i32, align 4
  %x321 = alloca i8, align 1
  %x322 = alloca i32, align 4
  %x323 = alloca i8, align 1
  %x324 = alloca i32, align 4
  %x325 = alloca i8, align 1
  %x326 = alloca i32, align 4
  %x327 = alloca i8, align 1
  %x328 = alloca i32, align 4
  %x329 = alloca i8, align 1
  %x330 = alloca i32, align 4
  %x331 = alloca i8, align 1
  %x332 = alloca i32, align 4
  %x333 = alloca i8, align 1
  %x334 = alloca i32, align 4
  %x335 = alloca i32, align 4
  %x336 = alloca i32, align 4
  %x337 = alloca i32, align 4
  %x338 = alloca i32, align 4
  %x339 = alloca i32, align 4
  %x340 = alloca i32, align 4
  %x341 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef -1)
  %3 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -1)
  %4 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x9, align 4
  %7 = load i32, ptr %x6, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i32 noundef %6, i32 noundef %7)
  %8 = load i8, ptr %x11, align 1
  %9 = load i32, ptr %x7, align 4
  %10 = load i32, ptr %x4, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %8, i32 noundef %9, i32 noundef %10)
  %11 = load i32, ptr %x1, align 4
  %12 = load i32, ptr %x8, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %12)
  %13 = load i8, ptr %x15, align 1
  %14 = load i32, ptr %x10, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %13, i32 noundef 0, i32 noundef %14)
  %15 = load i8, ptr %x17, align 1
  %16 = load i32, ptr %x12, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %15, i32 noundef 0, i32 noundef %16)
  %17 = load i8, ptr %x19, align 1
  %18 = load i8, ptr %x13, align 1
  %conv = zext i8 %18 to i32
  %19 = load i32, ptr %x5, align 4
  %add = add i32 %conv, %19
  call void @fiat_p256_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %17, i32 noundef 0, i32 noundef %add)
  %20 = load i32, ptr %x16, align 4
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %21, i64 1
  %22 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i32 noundef %20, i32 noundef %22)
  %23 = load i8, ptr %x23, align 1
  %24 = load i32, ptr %x18, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %23, i32 noundef %24, i32 noundef 0)
  %25 = load i8, ptr %x25, align 1
  %26 = load i32, ptr %x20, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %25, i32 noundef %26, i32 noundef 0)
  %27 = load i32, ptr %x22, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x28, ptr noundef %x29, i32 noundef %27, i32 noundef -1)
  %28 = load i32, ptr %x22, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x30, ptr noundef %x31, i32 noundef %28, i32 noundef -1)
  %29 = load i32, ptr %x22, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x32, ptr noundef %x33, i32 noundef %29, i32 noundef -1)
  %30 = load i32, ptr %x22, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x34, ptr noundef %x35, i32 noundef %30, i32 noundef -1)
  %31 = load i32, ptr %x35, align 4
  %32 = load i32, ptr %x32, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext 0, i32 noundef %31, i32 noundef %32)
  %33 = load i8, ptr %x37, align 1
  %34 = load i32, ptr %x33, align 4
  %35 = load i32, ptr %x30, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %33, i32 noundef %34, i32 noundef %35)
  %36 = load i32, ptr %x22, align 4
  %37 = load i32, ptr %x34, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext 0, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x41, align 1
  %39 = load i32, ptr %x24, align 4
  %40 = load i32, ptr %x36, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x43, align 1
  %42 = load i32, ptr %x26, align 4
  %43 = load i32, ptr %x38, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i8, ptr %x45, align 1
  %45 = load i8, ptr %x27, align 1
  %conv2 = zext i8 %45 to i32
  %46 = load i8, ptr %x21, align 1
  %conv3 = zext i8 %46 to i32
  %add4 = add i32 %conv2, %conv3
  %47 = load i8, ptr %x39, align 1
  %conv5 = zext i8 %47 to i32
  %48 = load i32, ptr %x31, align 4
  %add6 = add i32 %conv5, %48
  call void @fiat_p256_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %44, i32 noundef %add4, i32 noundef %add6)
  %49 = load i32, ptr %x2, align 4
  %50 = load i32, ptr %x22, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext 0, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x49, align 1
  %52 = load i32, ptr %x3, align 4
  %53 = load i32, ptr %x28, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i32, ptr %x42, align 4
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %55, i64 2
  %56 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i32 noundef %54, i32 noundef %56)
  %57 = load i8, ptr %x53, align 1
  %58 = load i32, ptr %x44, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %57, i32 noundef %58, i32 noundef 0)
  %59 = load i8, ptr %x55, align 1
  %60 = load i32, ptr %x46, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %59, i32 noundef %60, i32 noundef 0)
  %61 = load i32, ptr %x52, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x58, ptr noundef %x59, i32 noundef %61, i32 noundef -1)
  %62 = load i32, ptr %x52, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x60, ptr noundef %x61, i32 noundef %62, i32 noundef -1)
  %63 = load i32, ptr %x52, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x62, ptr noundef %x63, i32 noundef %63, i32 noundef -1)
  %64 = load i32, ptr %x52, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x64, ptr noundef %x65, i32 noundef %64, i32 noundef -1)
  %65 = load i32, ptr %x65, align 4
  %66 = load i32, ptr %x62, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext 0, i32 noundef %65, i32 noundef %66)
  %67 = load i8, ptr %x67, align 1
  %68 = load i32, ptr %x63, align 4
  %69 = load i32, ptr %x60, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %67, i32 noundef %68, i32 noundef %69)
  %70 = load i32, ptr %x52, align 4
  %71 = load i32, ptr %x64, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext 0, i32 noundef %70, i32 noundef %71)
  %72 = load i8, ptr %x71, align 1
  %73 = load i32, ptr %x54, align 4
  %74 = load i32, ptr %x66, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %72, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x73, align 1
  %76 = load i32, ptr %x56, align 4
  %77 = load i32, ptr %x68, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x75, align 1
  %79 = load i8, ptr %x57, align 1
  %conv8 = zext i8 %79 to i32
  %80 = load i8, ptr %x47, align 1
  %conv9 = zext i8 %80 to i32
  %add10 = add i32 %conv8, %conv9
  %81 = load i8, ptr %x69, align 1
  %conv11 = zext i8 %81 to i32
  %82 = load i32, ptr %x61, align 4
  %add12 = add i32 %conv11, %82
  call void @fiat_p256_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %78, i32 noundef %add10, i32 noundef %add12)
  %83 = load i8, ptr %x77, align 1
  %84 = load i32, ptr %x1, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %83, i32 noundef %84, i32 noundef 0)
  %85 = load i8, ptr %x79, align 1
  %86 = load i32, ptr %x48, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %85, i32 noundef %86, i32 noundef 0)
  %87 = load i8, ptr %x81, align 1
  %88 = load i32, ptr %x50, align 4
  %89 = load i32, ptr %x52, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x83, align 1
  %91 = load i8, ptr %x51, align 1
  %conv13 = zext i8 %91 to i32
  %92 = load i32, ptr %x29, align 4
  %add14 = add i32 %conv13, %92
  %93 = load i32, ptr %x58, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %90, i32 noundef %add14, i32 noundef %93)
  %94 = load i32, ptr %x72, align 4
  %95 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %95, i64 3
  %96 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i32 noundef %94, i32 noundef %96)
  %97 = load i8, ptr %x87, align 1
  %98 = load i32, ptr %x74, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %97, i32 noundef %98, i32 noundef 0)
  %99 = load i8, ptr %x89, align 1
  %100 = load i32, ptr %x76, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %99, i32 noundef %100, i32 noundef 0)
  %101 = load i8, ptr %x91, align 1
  %102 = load i32, ptr %x78, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %101, i32 noundef %102, i32 noundef 0)
  %103 = load i8, ptr %x93, align 1
  %104 = load i32, ptr %x80, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %103, i32 noundef %104, i32 noundef 0)
  %105 = load i8, ptr %x95, align 1
  %106 = load i32, ptr %x82, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %105, i32 noundef %106, i32 noundef 0)
  %107 = load i8, ptr %x97, align 1
  %108 = load i32, ptr %x84, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %107, i32 noundef %108, i32 noundef 0)
  %109 = load i8, ptr %x99, align 1
  %110 = load i8, ptr %x85, align 1
  %conv16 = zext i8 %110 to i32
  %111 = load i32, ptr %x59, align 4
  %add17 = add i32 %conv16, %111
  call void @fiat_p256_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %109, i32 noundef %add17, i32 noundef 0)
  %112 = load i32, ptr %x86, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x102, ptr noundef %x103, i32 noundef %112, i32 noundef -1)
  %113 = load i32, ptr %x86, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x104, ptr noundef %x105, i32 noundef %113, i32 noundef -1)
  %114 = load i32, ptr %x86, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x106, ptr noundef %x107, i32 noundef %114, i32 noundef -1)
  %115 = load i32, ptr %x86, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x108, ptr noundef %x109, i32 noundef %115, i32 noundef -1)
  %116 = load i32, ptr %x109, align 4
  %117 = load i32, ptr %x106, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext 0, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x111, align 1
  %119 = load i32, ptr %x107, align 4
  %120 = load i32, ptr %x104, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %118, i32 noundef %119, i32 noundef %120)
  %121 = load i32, ptr %x86, align 4
  %122 = load i32, ptr %x108, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext 0, i32 noundef %121, i32 noundef %122)
  %123 = load i8, ptr %x115, align 1
  %124 = load i32, ptr %x88, align 4
  %125 = load i32, ptr %x110, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %123, i32 noundef %124, i32 noundef %125)
  %126 = load i8, ptr %x117, align 1
  %127 = load i32, ptr %x90, align 4
  %128 = load i32, ptr %x112, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %126, i32 noundef %127, i32 noundef %128)
  %129 = load i8, ptr %x119, align 1
  %130 = load i32, ptr %x92, align 4
  %131 = load i8, ptr %x113, align 1
  %conv18 = zext i8 %131 to i32
  %132 = load i32, ptr %x105, align 4
  %add19 = add i32 %conv18, %132
  call void @fiat_p256_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %129, i32 noundef %130, i32 noundef %add19)
  %133 = load i8, ptr %x121, align 1
  %134 = load i32, ptr %x94, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %133, i32 noundef %134, i32 noundef 0)
  %135 = load i8, ptr %x123, align 1
  %136 = load i32, ptr %x96, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %135, i32 noundef %136, i32 noundef 0)
  %137 = load i8, ptr %x125, align 1
  %138 = load i32, ptr %x98, align 4
  %139 = load i32, ptr %x86, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %137, i32 noundef %138, i32 noundef %139)
  %140 = load i8, ptr %x127, align 1
  %141 = load i32, ptr %x100, align 4
  %142 = load i32, ptr %x102, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %140, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x129, align 1
  %144 = load i8, ptr %x101, align 1
  %conv20 = zext i8 %144 to i32
  %145 = load i32, ptr %x103, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %143, i32 noundef %conv20, i32 noundef %145)
  %146 = load i32, ptr %x116, align 4
  %147 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %147, i64 4
  %148 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext 0, i32 noundef %146, i32 noundef %148)
  %149 = load i8, ptr %x133, align 1
  %150 = load i32, ptr %x118, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %149, i32 noundef %150, i32 noundef 0)
  %151 = load i8, ptr %x135, align 1
  %152 = load i32, ptr %x120, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %151, i32 noundef %152, i32 noundef 0)
  %153 = load i8, ptr %x137, align 1
  %154 = load i32, ptr %x122, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %153, i32 noundef %154, i32 noundef 0)
  %155 = load i8, ptr %x139, align 1
  %156 = load i32, ptr %x124, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %155, i32 noundef %156, i32 noundef 0)
  %157 = load i8, ptr %x141, align 1
  %158 = load i32, ptr %x126, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %157, i32 noundef %158, i32 noundef 0)
  %159 = load i8, ptr %x143, align 1
  %160 = load i32, ptr %x128, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %159, i32 noundef %160, i32 noundef 0)
  %161 = load i8, ptr %x145, align 1
  %162 = load i32, ptr %x130, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %161, i32 noundef %162, i32 noundef 0)
  %163 = load i32, ptr %x132, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x148, ptr noundef %x149, i32 noundef %163, i32 noundef -1)
  %164 = load i32, ptr %x132, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x150, ptr noundef %x151, i32 noundef %164, i32 noundef -1)
  %165 = load i32, ptr %x132, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x152, ptr noundef %x153, i32 noundef %165, i32 noundef -1)
  %166 = load i32, ptr %x132, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x154, ptr noundef %x155, i32 noundef %166, i32 noundef -1)
  %167 = load i32, ptr %x155, align 4
  %168 = load i32, ptr %x152, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext 0, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x157, align 1
  %170 = load i32, ptr %x153, align 4
  %171 = load i32, ptr %x150, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i32, ptr %x132, align 4
  %173 = load i32, ptr %x154, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext 0, i32 noundef %172, i32 noundef %173)
  %174 = load i8, ptr %x161, align 1
  %175 = load i32, ptr %x134, align 4
  %176 = load i32, ptr %x156, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %174, i32 noundef %175, i32 noundef %176)
  %177 = load i8, ptr %x163, align 1
  %178 = load i32, ptr %x136, align 4
  %179 = load i32, ptr %x158, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %177, i32 noundef %178, i32 noundef %179)
  %180 = load i8, ptr %x165, align 1
  %181 = load i32, ptr %x138, align 4
  %182 = load i8, ptr %x159, align 1
  %conv22 = zext i8 %182 to i32
  %183 = load i32, ptr %x151, align 4
  %add23 = add i32 %conv22, %183
  call void @fiat_p256_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %180, i32 noundef %181, i32 noundef %add23)
  %184 = load i8, ptr %x167, align 1
  %185 = load i32, ptr %x140, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %184, i32 noundef %185, i32 noundef 0)
  %186 = load i8, ptr %x169, align 1
  %187 = load i32, ptr %x142, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %186, i32 noundef %187, i32 noundef 0)
  %188 = load i8, ptr %x171, align 1
  %189 = load i32, ptr %x144, align 4
  %190 = load i32, ptr %x132, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %188, i32 noundef %189, i32 noundef %190)
  %191 = load i8, ptr %x173, align 1
  %192 = load i32, ptr %x146, align 4
  %193 = load i32, ptr %x148, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %191, i32 noundef %192, i32 noundef %193)
  %194 = load i8, ptr %x175, align 1
  %195 = load i8, ptr %x147, align 1
  %conv24 = zext i8 %195 to i32
  %196 = load i8, ptr %x131, align 1
  %conv25 = zext i8 %196 to i32
  %add26 = add i32 %conv24, %conv25
  %197 = load i32, ptr %x149, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %194, i32 noundef %add26, i32 noundef %197)
  %198 = load i32, ptr %x162, align 4
  %199 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %199, i64 5
  %200 = load i32, ptr %arrayidx27, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext 0, i32 noundef %198, i32 noundef %200)
  %201 = load i8, ptr %x179, align 1
  %202 = load i32, ptr %x164, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %201, i32 noundef %202, i32 noundef 0)
  %203 = load i8, ptr %x181, align 1
  %204 = load i32, ptr %x166, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %203, i32 noundef %204, i32 noundef 0)
  %205 = load i8, ptr %x183, align 1
  %206 = load i32, ptr %x168, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %205, i32 noundef %206, i32 noundef 0)
  %207 = load i8, ptr %x185, align 1
  %208 = load i32, ptr %x170, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %207, i32 noundef %208, i32 noundef 0)
  %209 = load i8, ptr %x187, align 1
  %210 = load i32, ptr %x172, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %209, i32 noundef %210, i32 noundef 0)
  %211 = load i8, ptr %x189, align 1
  %212 = load i32, ptr %x174, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %211, i32 noundef %212, i32 noundef 0)
  %213 = load i8, ptr %x191, align 1
  %214 = load i32, ptr %x176, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %213, i32 noundef %214, i32 noundef 0)
  %215 = load i32, ptr %x178, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x194, ptr noundef %x195, i32 noundef %215, i32 noundef -1)
  %216 = load i32, ptr %x178, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x196, ptr noundef %x197, i32 noundef %216, i32 noundef -1)
  %217 = load i32, ptr %x178, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %217, i32 noundef -1)
  %218 = load i32, ptr %x178, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %218, i32 noundef -1)
  %219 = load i32, ptr %x201, align 4
  %220 = load i32, ptr %x198, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext 0, i32 noundef %219, i32 noundef %220)
  %221 = load i8, ptr %x203, align 1
  %222 = load i32, ptr %x199, align 4
  %223 = load i32, ptr %x196, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %221, i32 noundef %222, i32 noundef %223)
  %224 = load i32, ptr %x178, align 4
  %225 = load i32, ptr %x200, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext 0, i32 noundef %224, i32 noundef %225)
  %226 = load i8, ptr %x207, align 1
  %227 = load i32, ptr %x180, align 4
  %228 = load i32, ptr %x202, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext %226, i32 noundef %227, i32 noundef %228)
  %229 = load i8, ptr %x209, align 1
  %230 = load i32, ptr %x182, align 4
  %231 = load i32, ptr %x204, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %229, i32 noundef %230, i32 noundef %231)
  %232 = load i8, ptr %x211, align 1
  %233 = load i32, ptr %x184, align 4
  %234 = load i8, ptr %x205, align 1
  %conv28 = zext i8 %234 to i32
  %235 = load i32, ptr %x197, align 4
  %add29 = add i32 %conv28, %235
  call void @fiat_p256_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %232, i32 noundef %233, i32 noundef %add29)
  %236 = load i8, ptr %x213, align 1
  %237 = load i32, ptr %x186, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %236, i32 noundef %237, i32 noundef 0)
  %238 = load i8, ptr %x215, align 1
  %239 = load i32, ptr %x188, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %238, i32 noundef %239, i32 noundef 0)
  %240 = load i8, ptr %x217, align 1
  %241 = load i32, ptr %x190, align 4
  %242 = load i32, ptr %x178, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %240, i32 noundef %241, i32 noundef %242)
  %243 = load i8, ptr %x219, align 1
  %244 = load i32, ptr %x192, align 4
  %245 = load i32, ptr %x194, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %243, i32 noundef %244, i32 noundef %245)
  %246 = load i8, ptr %x221, align 1
  %247 = load i8, ptr %x193, align 1
  %conv30 = zext i8 %247 to i32
  %248 = load i8, ptr %x177, align 1
  %conv31 = zext i8 %248 to i32
  %add32 = add i32 %conv30, %conv31
  %249 = load i32, ptr %x195, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %246, i32 noundef %add32, i32 noundef %249)
  %250 = load i32, ptr %x208, align 4
  %251 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %251, i64 6
  %252 = load i32, ptr %arrayidx33, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext 0, i32 noundef %250, i32 noundef %252)
  %253 = load i8, ptr %x225, align 1
  %254 = load i32, ptr %x210, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %253, i32 noundef %254, i32 noundef 0)
  %255 = load i8, ptr %x227, align 1
  %256 = load i32, ptr %x212, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %255, i32 noundef %256, i32 noundef 0)
  %257 = load i8, ptr %x229, align 1
  %258 = load i32, ptr %x214, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %257, i32 noundef %258, i32 noundef 0)
  %259 = load i8, ptr %x231, align 1
  %260 = load i32, ptr %x216, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %259, i32 noundef %260, i32 noundef 0)
  %261 = load i8, ptr %x233, align 1
  %262 = load i32, ptr %x218, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %261, i32 noundef %262, i32 noundef 0)
  %263 = load i8, ptr %x235, align 1
  %264 = load i32, ptr %x220, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %263, i32 noundef %264, i32 noundef 0)
  %265 = load i8, ptr %x237, align 1
  %266 = load i32, ptr %x222, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %265, i32 noundef %266, i32 noundef 0)
  %267 = load i32, ptr %x224, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x240, ptr noundef %x241, i32 noundef %267, i32 noundef -1)
  %268 = load i32, ptr %x224, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x242, ptr noundef %x243, i32 noundef %268, i32 noundef -1)
  %269 = load i32, ptr %x224, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x244, ptr noundef %x245, i32 noundef %269, i32 noundef -1)
  %270 = load i32, ptr %x224, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x246, ptr noundef %x247, i32 noundef %270, i32 noundef -1)
  %271 = load i32, ptr %x247, align 4
  %272 = load i32, ptr %x244, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext 0, i32 noundef %271, i32 noundef %272)
  %273 = load i8, ptr %x249, align 1
  %274 = load i32, ptr %x245, align 4
  %275 = load i32, ptr %x242, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %273, i32 noundef %274, i32 noundef %275)
  %276 = load i32, ptr %x224, align 4
  %277 = load i32, ptr %x246, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext 0, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x253, align 1
  %279 = load i32, ptr %x226, align 4
  %280 = load i32, ptr %x248, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x255, align 1
  %282 = load i32, ptr %x228, align 4
  %283 = load i32, ptr %x250, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x257, align 1
  %285 = load i32, ptr %x230, align 4
  %286 = load i8, ptr %x251, align 1
  %conv34 = zext i8 %286 to i32
  %287 = load i32, ptr %x243, align 4
  %add35 = add i32 %conv34, %287
  call void @fiat_p256_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %add35)
  %288 = load i8, ptr %x259, align 1
  %289 = load i32, ptr %x232, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %288, i32 noundef %289, i32 noundef 0)
  %290 = load i8, ptr %x261, align 1
  %291 = load i32, ptr %x234, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %290, i32 noundef %291, i32 noundef 0)
  %292 = load i8, ptr %x263, align 1
  %293 = load i32, ptr %x236, align 4
  %294 = load i32, ptr %x224, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x265, align 1
  %296 = load i32, ptr %x238, align 4
  %297 = load i32, ptr %x240, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x267, align 1
  %299 = load i8, ptr %x239, align 1
  %conv36 = zext i8 %299 to i32
  %300 = load i8, ptr %x223, align 1
  %conv37 = zext i8 %300 to i32
  %add38 = add i32 %conv36, %conv37
  %301 = load i32, ptr %x241, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %298, i32 noundef %add38, i32 noundef %301)
  %302 = load i32, ptr %x254, align 4
  %303 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %303, i64 7
  %304 = load i32, ptr %arrayidx39, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext 0, i32 noundef %302, i32 noundef %304)
  %305 = load i8, ptr %x271, align 1
  %306 = load i32, ptr %x256, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %305, i32 noundef %306, i32 noundef 0)
  %307 = load i8, ptr %x273, align 1
  %308 = load i32, ptr %x258, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %307, i32 noundef %308, i32 noundef 0)
  %309 = load i8, ptr %x275, align 1
  %310 = load i32, ptr %x260, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %309, i32 noundef %310, i32 noundef 0)
  %311 = load i8, ptr %x277, align 1
  %312 = load i32, ptr %x262, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %311, i32 noundef %312, i32 noundef 0)
  %313 = load i8, ptr %x279, align 1
  %314 = load i32, ptr %x264, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %313, i32 noundef %314, i32 noundef 0)
  %315 = load i8, ptr %x281, align 1
  %316 = load i32, ptr %x266, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %315, i32 noundef %316, i32 noundef 0)
  %317 = load i8, ptr %x283, align 1
  %318 = load i32, ptr %x268, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %317, i32 noundef %318, i32 noundef 0)
  %319 = load i32, ptr %x270, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x286, ptr noundef %x287, i32 noundef %319, i32 noundef -1)
  %320 = load i32, ptr %x270, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x288, ptr noundef %x289, i32 noundef %320, i32 noundef -1)
  %321 = load i32, ptr %x270, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x290, ptr noundef %x291, i32 noundef %321, i32 noundef -1)
  %322 = load i32, ptr %x270, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x292, ptr noundef %x293, i32 noundef %322, i32 noundef -1)
  %323 = load i32, ptr %x293, align 4
  %324 = load i32, ptr %x290, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext 0, i32 noundef %323, i32 noundef %324)
  %325 = load i8, ptr %x295, align 1
  %326 = load i32, ptr %x291, align 4
  %327 = load i32, ptr %x288, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %325, i32 noundef %326, i32 noundef %327)
  %328 = load i32, ptr %x270, align 4
  %329 = load i32, ptr %x292, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext 0, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x299, align 1
  %331 = load i32, ptr %x272, align 4
  %332 = load i32, ptr %x294, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %330, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x301, align 1
  %334 = load i32, ptr %x274, align 4
  %335 = load i32, ptr %x296, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x303, align 1
  %337 = load i32, ptr %x276, align 4
  %338 = load i8, ptr %x297, align 1
  %conv40 = zext i8 %338 to i32
  %339 = load i32, ptr %x289, align 4
  %add41 = add i32 %conv40, %339
  call void @fiat_p256_addcarryx_u32(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %add41)
  %340 = load i8, ptr %x305, align 1
  %341 = load i32, ptr %x278, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext %340, i32 noundef %341, i32 noundef 0)
  %342 = load i8, ptr %x307, align 1
  %343 = load i32, ptr %x280, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %342, i32 noundef %343, i32 noundef 0)
  %344 = load i8, ptr %x309, align 1
  %345 = load i32, ptr %x282, align 4
  %346 = load i32, ptr %x270, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %344, i32 noundef %345, i32 noundef %346)
  %347 = load i8, ptr %x311, align 1
  %348 = load i32, ptr %x284, align 4
  %349 = load i32, ptr %x286, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %347, i32 noundef %348, i32 noundef %349)
  %350 = load i8, ptr %x313, align 1
  %351 = load i8, ptr %x285, align 1
  %conv42 = zext i8 %351 to i32
  %352 = load i8, ptr %x269, align 1
  %conv43 = zext i8 %352 to i32
  %add44 = add i32 %conv42, %conv43
  %353 = load i32, ptr %x287, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %350, i32 noundef %add44, i32 noundef %353)
  %354 = load i32, ptr %x300, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext 0, i32 noundef %354, i32 noundef -1)
  %355 = load i8, ptr %x317, align 1
  %356 = load i32, ptr %x302, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %355, i32 noundef %356, i32 noundef -1)
  %357 = load i8, ptr %x319, align 1
  %358 = load i32, ptr %x304, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %357, i32 noundef %358, i32 noundef -1)
  %359 = load i8, ptr %x321, align 1
  %360 = load i32, ptr %x306, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %359, i32 noundef %360, i32 noundef 0)
  %361 = load i8, ptr %x323, align 1
  %362 = load i32, ptr %x308, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %361, i32 noundef %362, i32 noundef 0)
  %363 = load i8, ptr %x325, align 1
  %364 = load i32, ptr %x310, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %363, i32 noundef %364, i32 noundef 0)
  %365 = load i8, ptr %x327, align 1
  %366 = load i32, ptr %x312, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %365, i32 noundef %366, i32 noundef 1)
  %367 = load i8, ptr %x329, align 1
  %368 = load i32, ptr %x314, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %367, i32 noundef %368, i32 noundef -1)
  %369 = load i8, ptr %x331, align 1
  %370 = load i8, ptr %x315, align 1
  %conv45 = zext i8 %370 to i32
  call void @fiat_p256_subborrowx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %369, i32 noundef %conv45, i32 noundef 0)
  %371 = load i8, ptr %x333, align 1
  %372 = load i32, ptr %x316, align 4
  %373 = load i32, ptr %x300, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x334, i8 noundef zeroext %371, i32 noundef %372, i32 noundef %373)
  %374 = load i8, ptr %x333, align 1
  %375 = load i32, ptr %x318, align 4
  %376 = load i32, ptr %x302, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x335, i8 noundef zeroext %374, i32 noundef %375, i32 noundef %376)
  %377 = load i8, ptr %x333, align 1
  %378 = load i32, ptr %x320, align 4
  %379 = load i32, ptr %x304, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x336, i8 noundef zeroext %377, i32 noundef %378, i32 noundef %379)
  %380 = load i8, ptr %x333, align 1
  %381 = load i32, ptr %x322, align 4
  %382 = load i32, ptr %x306, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x337, i8 noundef zeroext %380, i32 noundef %381, i32 noundef %382)
  %383 = load i8, ptr %x333, align 1
  %384 = load i32, ptr %x324, align 4
  %385 = load i32, ptr %x308, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x338, i8 noundef zeroext %383, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x333, align 1
  %387 = load i32, ptr %x326, align 4
  %388 = load i32, ptr %x310, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x339, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x333, align 1
  %390 = load i32, ptr %x328, align 4
  %391 = load i32, ptr %x312, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x340, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x333, align 1
  %393 = load i32, ptr %x330, align 4
  %394 = load i32, ptr %x314, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x341, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i32, ptr %x334, align 4
  %396 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %396, i64 0
  store i32 %395, ptr %arrayidx46, align 4
  %397 = load i32, ptr %x335, align 4
  %398 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %398, i64 1
  store i32 %397, ptr %arrayidx47, align 4
  %399 = load i32, ptr %x336, align 4
  %400 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %400, i64 2
  store i32 %399, ptr %arrayidx48, align 4
  %401 = load i32, ptr %x337, align 4
  %402 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %402, i64 3
  store i32 %401, ptr %arrayidx49, align 4
  %403 = load i32, ptr %x338, align 4
  %404 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %404, i64 4
  store i32 %403, ptr %arrayidx50, align 4
  %405 = load i32, ptr %x339, align 4
  %406 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %406, i64 5
  store i32 %405, ptr %arrayidx51, align 4
  %407 = load i32, ptr %x340, align 4
  %408 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %408, i64 6
  store i32 %407, ptr %arrayidx52, align 4
  %409 = load i32, ptr %x341, align 4
  %410 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %410, i64 7
  store i32 %409, ptr %arrayidx53, align 4
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
