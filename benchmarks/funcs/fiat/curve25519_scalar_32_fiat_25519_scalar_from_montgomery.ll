; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_25519_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_25519_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i32, align 4
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
  %x69 = alloca i32, align 4
  %x70 = alloca i32, align 4
  %x71 = alloca i32, align 4
  %x72 = alloca i32, align 4
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i32, align 4
  %x76 = alloca i32, align 4
  %x77 = alloca i32, align 4
  %x78 = alloca i32, align 4
  %x79 = alloca i32, align 4
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
  %x111 = alloca i32, align 4
  %x112 = alloca i32, align 4
  %x113 = alloca i32, align 4
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
  %x149 = alloca i8, align 1
  %x150 = alloca i32, align 4
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
  %x153 = alloca i32, align 4
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
  %x156 = alloca i32, align 4
  %x157 = alloca i32, align 4
  %x158 = alloca i32, align 4
  %x159 = alloca i32, align 4
  %x160 = alloca i32, align 4
  %x161 = alloca i32, align 4
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
  %x195 = alloca i8, align 1
  %x196 = alloca i32, align 4
  %x197 = alloca i8, align 1
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
  %x209 = alloca i32, align 4
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
  %x241 = alloca i8, align 1
  %x242 = alloca i32, align 4
  %x243 = alloca i8, align 1
  %x244 = alloca i32, align 4
  %x245 = alloca i8, align 1
  %x246 = alloca i32, align 4
  %x247 = alloca i32, align 4
  %x248 = alloca i32, align 4
  %x249 = alloca i32, align 4
  %x250 = alloca i32, align 4
  %x251 = alloca i32, align 4
  %x252 = alloca i32, align 4
  %x253 = alloca i32, align 4
  %x254 = alloca i32, align 4
  %x255 = alloca i32, align 4
  %x256 = alloca i32, align 4
  %x257 = alloca i32, align 4
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
  %x295 = alloca i32, align 4
  %x296 = alloca i32, align 4
  %x297 = alloca i32, align 4
  %x298 = alloca i32, align 4
  %x299 = alloca i32, align 4
  %x300 = alloca i32, align 4
  %x301 = alloca i32, align 4
  %x302 = alloca i32, align 4
  %x303 = alloca i32, align 4
  %x304 = alloca i32, align 4
  %x305 = alloca i32, align 4
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
  %x329 = alloca i32, align 4
  %x330 = alloca i8, align 1
  %x331 = alloca i32, align 4
  %x332 = alloca i8, align 1
  %x333 = alloca i32, align 4
  %x334 = alloca i8, align 1
  %x335 = alloca i32, align 4
  %x336 = alloca i8, align 1
  %x337 = alloca i32, align 4
  %x338 = alloca i8, align 1
  %x339 = alloca i32, align 4
  %x340 = alloca i8, align 1
  %x341 = alloca i32, align 4
  %x342 = alloca i8, align 1
  %x343 = alloca i32, align 4
  %x344 = alloca i8, align 1
  %x345 = alloca i32, align 4
  %x346 = alloca i8, align 1
  %x347 = alloca i32, align 4
  %x348 = alloca i32, align 4
  %x349 = alloca i32, align 4
  %x350 = alloca i32, align 4
  %x351 = alloca i32, align 4
  %x352 = alloca i32, align 4
  %x353 = alloca i32, align 4
  %x354 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef 307527195)
  %3 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef 268435456)
  %4 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef 350157278)
  %5 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1560830762)
  %6 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef 1477600026)
  %7 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %7, i32 noundef 1559614445)
  %8 = load i32, ptr %x13, align 4
  %9 = load i32, ptr %x10, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i32 noundef %8, i32 noundef %9)
  %10 = load i8, ptr %x15, align 1
  %11 = load i32, ptr %x11, align 4
  %12 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %10, i32 noundef %11, i32 noundef %12)
  %13 = load i8, ptr %x17, align 1
  %14 = load i32, ptr %x9, align 4
  %15 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %13, i32 noundef %14, i32 noundef %15)
  %16 = load i32, ptr %x1, align 4
  %17 = load i32, ptr %x12, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext 0, i32 noundef %16, i32 noundef %17)
  %18 = load i8, ptr %x21, align 1
  %19 = load i32, ptr %x14, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %18, i32 noundef 0, i32 noundef %19)
  %20 = load i8, ptr %x23, align 1
  %21 = load i32, ptr %x16, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %20, i32 noundef 0, i32 noundef %21)
  %22 = load i8, ptr %x25, align 1
  %23 = load i32, ptr %x18, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %22, i32 noundef 0, i32 noundef %23)
  %24 = load i32, ptr %x22, align 4
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %25, i64 1
  %26 = load i32, ptr %arrayidx1, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %26)
  %27 = load i8, ptr %x29, align 1
  %28 = load i32, ptr %x24, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %27, i32 noundef %28, i32 noundef 0)
  %29 = load i8, ptr %x31, align 1
  %30 = load i32, ptr %x26, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %29, i32 noundef %30, i32 noundef 0)
  %31 = load i32, ptr %x28, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x34, ptr noundef %x35, i32 noundef %31, i32 noundef 307527195)
  %32 = load i32, ptr %x34, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x36, ptr noundef %x37, i32 noundef %32, i32 noundef 268435456)
  %33 = load i32, ptr %x34, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x38, ptr noundef %x39, i32 noundef %33, i32 noundef 350157278)
  %34 = load i32, ptr %x34, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x40, ptr noundef %x41, i32 noundef %34, i32 noundef -1560830762)
  %35 = load i32, ptr %x34, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x42, ptr noundef %x43, i32 noundef %35, i32 noundef 1477600026)
  %36 = load i32, ptr %x34, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %36, i32 noundef 1559614445)
  %37 = load i32, ptr %x45, align 4
  %38 = load i32, ptr %x42, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext 0, i32 noundef %37, i32 noundef %38)
  %39 = load i8, ptr %x47, align 1
  %40 = load i32, ptr %x43, align 4
  %41 = load i32, ptr %x40, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %39, i32 noundef %40, i32 noundef %41)
  %42 = load i8, ptr %x49, align 1
  %43 = load i32, ptr %x41, align 4
  %44 = load i32, ptr %x38, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i32, ptr %x28, align 4
  %46 = load i32, ptr %x44, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i32 noundef %45, i32 noundef %46)
  %47 = load i8, ptr %x53, align 1
  %48 = load i32, ptr %x30, align 4
  %49 = load i32, ptr %x46, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %47, i32 noundef %48, i32 noundef %49)
  %50 = load i8, ptr %x55, align 1
  %51 = load i32, ptr %x32, align 4
  %52 = load i32, ptr %x48, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %50, i32 noundef %51, i32 noundef %52)
  %53 = load i8, ptr %x57, align 1
  %54 = load i8, ptr %x33, align 1
  %conv = zext i8 %54 to i32
  %55 = load i8, ptr %x27, align 1
  %conv2 = zext i8 %55 to i32
  %56 = load i8, ptr %x19, align 1
  %conv3 = zext i8 %56 to i32
  %57 = load i32, ptr %x7, align 4
  %add = add i32 %conv3, %57
  %add4 = add i32 %conv2, %add
  %add5 = add i32 %conv, %add4
  %58 = load i32, ptr %x50, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %53, i32 noundef %add5, i32 noundef %58)
  %59 = load i32, ptr %x5, align 4
  %60 = load i32, ptr %x36, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i32 noundef %59, i32 noundef %60)
  %61 = load i32, ptr %x54, align 4
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %62, i64 2
  %63 = load i32, ptr %arrayidx6, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i32 noundef %61, i32 noundef %63)
  %64 = load i8, ptr %x63, align 1
  %65 = load i32, ptr %x56, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %64, i32 noundef %65, i32 noundef 0)
  %66 = load i8, ptr %x65, align 1
  %67 = load i32, ptr %x58, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %66, i32 noundef %67, i32 noundef 0)
  %68 = load i32, ptr %x62, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %68, i32 noundef 307527195)
  %69 = load i32, ptr %x68, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %69, i32 noundef 268435456)
  %70 = load i32, ptr %x68, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %70, i32 noundef 350157278)
  %71 = load i32, ptr %x68, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %71, i32 noundef -1560830762)
  %72 = load i32, ptr %x68, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x76, ptr noundef %x77, i32 noundef %72, i32 noundef 1477600026)
  %73 = load i32, ptr %x68, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x78, ptr noundef %x79, i32 noundef %73, i32 noundef 1559614445)
  %74 = load i32, ptr %x79, align 4
  %75 = load i32, ptr %x76, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x81, align 1
  %77 = load i32, ptr %x77, align 4
  %78 = load i32, ptr %x74, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %76, i32 noundef %77, i32 noundef %78)
  %79 = load i8, ptr %x83, align 1
  %80 = load i32, ptr %x75, align 4
  %81 = load i32, ptr %x72, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %79, i32 noundef %80, i32 noundef %81)
  %82 = load i32, ptr %x62, align 4
  %83 = load i32, ptr %x78, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x87, align 1
  %85 = load i32, ptr %x64, align 4
  %86 = load i32, ptr %x80, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x89, align 1
  %88 = load i32, ptr %x66, align 4
  %89 = load i32, ptr %x82, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x91, align 1
  %91 = load i8, ptr %x67, align 1
  %conv7 = zext i8 %91 to i32
  %92 = load i8, ptr %x59, align 1
  %conv8 = zext i8 %92 to i32
  %93 = load i8, ptr %x51, align 1
  %conv9 = zext i8 %93 to i32
  %94 = load i32, ptr %x39, align 4
  %add10 = add i32 %conv9, %94
  %add11 = add i32 %conv8, %add10
  %add12 = add i32 %conv7, %add11
  %95 = load i32, ptr %x84, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %90, i32 noundef %add12, i32 noundef %95)
  %96 = load i8, ptr %x61, align 1
  %conv13 = zext i8 %96 to i32
  %97 = load i32, ptr %x37, align 4
  %add14 = add i32 %conv13, %97
  %98 = load i32, ptr %x70, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext 0, i32 noundef %add14, i32 noundef %98)
  %99 = load i32, ptr %x88, align 4
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %100, i64 3
  %101 = load i32, ptr %arrayidx15, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext 0, i32 noundef %99, i32 noundef %101)
  %102 = load i8, ptr %x97, align 1
  %103 = load i32, ptr %x90, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %102, i32 noundef %103, i32 noundef 0)
  %104 = load i8, ptr %x99, align 1
  %105 = load i32, ptr %x92, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %104, i32 noundef %105, i32 noundef 0)
  %106 = load i32, ptr %x96, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x102, ptr noundef %x103, i32 noundef %106, i32 noundef 307527195)
  %107 = load i32, ptr %x102, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x104, ptr noundef %x105, i32 noundef %107, i32 noundef 268435456)
  %108 = load i32, ptr %x102, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x106, ptr noundef %x107, i32 noundef %108, i32 noundef 350157278)
  %109 = load i32, ptr %x102, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x108, ptr noundef %x109, i32 noundef %109, i32 noundef -1560830762)
  %110 = load i32, ptr %x102, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x110, ptr noundef %x111, i32 noundef %110, i32 noundef 1477600026)
  %111 = load i32, ptr %x102, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x112, ptr noundef %x113, i32 noundef %111, i32 noundef 1559614445)
  %112 = load i32, ptr %x113, align 4
  %113 = load i32, ptr %x110, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext 0, i32 noundef %112, i32 noundef %113)
  %114 = load i8, ptr %x115, align 1
  %115 = load i32, ptr %x111, align 4
  %116 = load i32, ptr %x108, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %114, i32 noundef %115, i32 noundef %116)
  %117 = load i8, ptr %x117, align 1
  %118 = load i32, ptr %x109, align 4
  %119 = load i32, ptr %x106, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %117, i32 noundef %118, i32 noundef %119)
  %120 = load i32, ptr %x96, align 4
  %121 = load i32, ptr %x112, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i32 noundef %120, i32 noundef %121)
  %122 = load i8, ptr %x121, align 1
  %123 = load i32, ptr %x98, align 4
  %124 = load i32, ptr %x114, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %122, i32 noundef %123, i32 noundef %124)
  %125 = load i8, ptr %x123, align 1
  %126 = load i32, ptr %x100, align 4
  %127 = load i32, ptr %x116, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %125, i32 noundef %126, i32 noundef %127)
  %128 = load i8, ptr %x125, align 1
  %129 = load i8, ptr %x101, align 1
  %conv16 = zext i8 %129 to i32
  %130 = load i8, ptr %x93, align 1
  %conv17 = zext i8 %130 to i32
  %131 = load i8, ptr %x85, align 1
  %conv18 = zext i8 %131 to i32
  %132 = load i32, ptr %x73, align 4
  %add19 = add i32 %conv18, %132
  %add20 = add i32 %conv17, %add19
  %add21 = add i32 %conv16, %add20
  %133 = load i32, ptr %x118, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %128, i32 noundef %add21, i32 noundef %133)
  %134 = load i8, ptr %x127, align 1
  %135 = load i32, ptr %x4, align 4
  %136 = load i8, ptr %x119, align 1
  %conv22 = zext i8 %136 to i32
  %137 = load i32, ptr %x107, align 4
  %add23 = add i32 %conv22, %137
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %134, i32 noundef %135, i32 noundef %add23)
  %138 = load i8, ptr %x129, align 1
  %139 = load i32, ptr %x60, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %138, i32 noundef %139, i32 noundef 0)
  %140 = load i8, ptr %x131, align 1
  %141 = load i32, ptr %x94, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %140, i32 noundef %141, i32 noundef 0)
  %142 = load i8, ptr %x133, align 1
  %143 = load i8, ptr %x95, align 1
  %conv24 = zext i8 %143 to i32
  %144 = load i32, ptr %x71, align 4
  %add25 = add i32 %conv24, %144
  %145 = load i32, ptr %x104, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %142, i32 noundef %add25, i32 noundef %145)
  %146 = load i32, ptr %x122, align 4
  %147 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %147, i64 4
  %148 = load i32, ptr %arrayidx26, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext 0, i32 noundef %146, i32 noundef %148)
  %149 = load i8, ptr %x137, align 1
  %150 = load i32, ptr %x124, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %149, i32 noundef %150, i32 noundef 0)
  %151 = load i8, ptr %x139, align 1
  %152 = load i32, ptr %x126, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %151, i32 noundef %152, i32 noundef 0)
  %153 = load i8, ptr %x141, align 1
  %154 = load i32, ptr %x128, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %153, i32 noundef %154, i32 noundef 0)
  %155 = load i8, ptr %x143, align 1
  %156 = load i32, ptr %x130, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %155, i32 noundef %156, i32 noundef 0)
  %157 = load i8, ptr %x145, align 1
  %158 = load i32, ptr %x132, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %157, i32 noundef %158, i32 noundef 0)
  %159 = load i8, ptr %x147, align 1
  %160 = load i32, ptr %x134, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %159, i32 noundef %160, i32 noundef 0)
  %161 = load i32, ptr %x136, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x150, ptr noundef %x151, i32 noundef %161, i32 noundef 307527195)
  %162 = load i32, ptr %x150, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x152, ptr noundef %x153, i32 noundef %162, i32 noundef 268435456)
  %163 = load i32, ptr %x150, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x154, ptr noundef %x155, i32 noundef %163, i32 noundef 350157278)
  %164 = load i32, ptr %x150, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x156, ptr noundef %x157, i32 noundef %164, i32 noundef -1560830762)
  %165 = load i32, ptr %x150, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x158, ptr noundef %x159, i32 noundef %165, i32 noundef 1477600026)
  %166 = load i32, ptr %x150, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x160, ptr noundef %x161, i32 noundef %166, i32 noundef 1559614445)
  %167 = load i32, ptr %x161, align 4
  %168 = load i32, ptr %x158, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext 0, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x163, align 1
  %170 = load i32, ptr %x159, align 4
  %171 = load i32, ptr %x156, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x165, align 1
  %173 = load i32, ptr %x157, align 4
  %174 = load i32, ptr %x154, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i32, ptr %x136, align 4
  %176 = load i32, ptr %x160, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext 0, i32 noundef %175, i32 noundef %176)
  %177 = load i8, ptr %x169, align 1
  %178 = load i32, ptr %x138, align 4
  %179 = load i32, ptr %x162, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %177, i32 noundef %178, i32 noundef %179)
  %180 = load i8, ptr %x171, align 1
  %181 = load i32, ptr %x140, align 4
  %182 = load i32, ptr %x164, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %180, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x173, align 1
  %184 = load i32, ptr %x142, align 4
  %185 = load i32, ptr %x166, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x175, align 1
  %187 = load i32, ptr %x144, align 4
  %188 = load i8, ptr %x167, align 1
  %conv27 = zext i8 %188 to i32
  %189 = load i32, ptr %x155, align 4
  %add28 = add i32 %conv27, %189
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %add28)
  %190 = load i8, ptr %x177, align 1
  %191 = load i32, ptr %x146, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %190, i32 noundef %191, i32 noundef 0)
  %192 = load i8, ptr %x179, align 1
  %193 = load i32, ptr %x148, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %192, i32 noundef %193, i32 noundef 0)
  %194 = load i8, ptr %x181, align 1
  %195 = load i8, ptr %x149, align 1
  %conv29 = zext i8 %195 to i32
  %196 = load i8, ptr %x135, align 1
  %conv30 = zext i8 %196 to i32
  %197 = load i32, ptr %x105, align 4
  %add31 = add i32 %conv30, %197
  %add32 = add i32 %conv29, %add31
  %198 = load i32, ptr %x152, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %194, i32 noundef %add32, i32 noundef %198)
  %199 = load i32, ptr %x170, align 4
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %200, i64 5
  %201 = load i32, ptr %arrayidx33, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext 0, i32 noundef %199, i32 noundef %201)
  %202 = load i8, ptr %x185, align 1
  %203 = load i32, ptr %x172, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %202, i32 noundef %203, i32 noundef 0)
  %204 = load i8, ptr %x187, align 1
  %205 = load i32, ptr %x174, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %204, i32 noundef %205, i32 noundef 0)
  %206 = load i8, ptr %x189, align 1
  %207 = load i32, ptr %x176, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %206, i32 noundef %207, i32 noundef 0)
  %208 = load i8, ptr %x191, align 1
  %209 = load i32, ptr %x178, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %208, i32 noundef %209, i32 noundef 0)
  %210 = load i8, ptr %x193, align 1
  %211 = load i32, ptr %x180, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %210, i32 noundef %211, i32 noundef 0)
  %212 = load i8, ptr %x195, align 1
  %213 = load i32, ptr %x182, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %212, i32 noundef %213, i32 noundef 0)
  %214 = load i32, ptr %x184, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %214, i32 noundef 307527195)
  %215 = load i32, ptr %x198, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %215, i32 noundef 268435456)
  %216 = load i32, ptr %x198, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %216, i32 noundef 350157278)
  %217 = load i32, ptr %x198, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %217, i32 noundef -1560830762)
  %218 = load i32, ptr %x198, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %218, i32 noundef 1477600026)
  %219 = load i32, ptr %x198, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %219, i32 noundef 1559614445)
  %220 = load i32, ptr %x209, align 4
  %221 = load i32, ptr %x206, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext 0, i32 noundef %220, i32 noundef %221)
  %222 = load i8, ptr %x211, align 1
  %223 = load i32, ptr %x207, align 4
  %224 = load i32, ptr %x204, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x213, align 1
  %226 = load i32, ptr %x205, align 4
  %227 = load i32, ptr %x202, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i32, ptr %x184, align 4
  %229 = load i32, ptr %x208, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext 0, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x217, align 1
  %231 = load i32, ptr %x186, align 4
  %232 = load i32, ptr %x210, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x219, align 1
  %234 = load i32, ptr %x188, align 4
  %235 = load i32, ptr %x212, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x221, align 1
  %237 = load i32, ptr %x190, align 4
  %238 = load i32, ptr %x214, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x223, align 1
  %240 = load i32, ptr %x192, align 4
  %241 = load i8, ptr %x215, align 1
  %conv34 = zext i8 %241 to i32
  %242 = load i32, ptr %x203, align 4
  %add35 = add i32 %conv34, %242
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %add35)
  %243 = load i8, ptr %x225, align 1
  %244 = load i32, ptr %x194, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %243, i32 noundef %244, i32 noundef 0)
  %245 = load i8, ptr %x227, align 1
  %246 = load i32, ptr %x196, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %245, i32 noundef %246, i32 noundef 0)
  %247 = load i8, ptr %x229, align 1
  %248 = load i8, ptr %x197, align 1
  %conv36 = zext i8 %248 to i32
  %249 = load i8, ptr %x183, align 1
  %conv37 = zext i8 %249 to i32
  %250 = load i32, ptr %x153, align 4
  %add38 = add i32 %conv37, %250
  %add39 = add i32 %conv36, %add38
  %251 = load i32, ptr %x200, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %247, i32 noundef %add39, i32 noundef %251)
  %252 = load i32, ptr %x218, align 4
  %253 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %253, i64 6
  %254 = load i32, ptr %arrayidx40, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext 0, i32 noundef %252, i32 noundef %254)
  %255 = load i8, ptr %x233, align 1
  %256 = load i32, ptr %x220, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %255, i32 noundef %256, i32 noundef 0)
  %257 = load i8, ptr %x235, align 1
  %258 = load i32, ptr %x222, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %257, i32 noundef %258, i32 noundef 0)
  %259 = load i8, ptr %x237, align 1
  %260 = load i32, ptr %x224, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %259, i32 noundef %260, i32 noundef 0)
  %261 = load i8, ptr %x239, align 1
  %262 = load i32, ptr %x226, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %261, i32 noundef %262, i32 noundef 0)
  %263 = load i8, ptr %x241, align 1
  %264 = load i32, ptr %x228, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %263, i32 noundef %264, i32 noundef 0)
  %265 = load i8, ptr %x243, align 1
  %266 = load i32, ptr %x230, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %265, i32 noundef %266, i32 noundef 0)
  %267 = load i32, ptr %x232, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x246, ptr noundef %x247, i32 noundef %267, i32 noundef 307527195)
  %268 = load i32, ptr %x246, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x248, ptr noundef %x249, i32 noundef %268, i32 noundef 268435456)
  %269 = load i32, ptr %x246, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x250, ptr noundef %x251, i32 noundef %269, i32 noundef 350157278)
  %270 = load i32, ptr %x246, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x252, ptr noundef %x253, i32 noundef %270, i32 noundef -1560830762)
  %271 = load i32, ptr %x246, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x254, ptr noundef %x255, i32 noundef %271, i32 noundef 1477600026)
  %272 = load i32, ptr %x246, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x256, ptr noundef %x257, i32 noundef %272, i32 noundef 1559614445)
  %273 = load i32, ptr %x257, align 4
  %274 = load i32, ptr %x254, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext 0, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x259, align 1
  %276 = load i32, ptr %x255, align 4
  %277 = load i32, ptr %x252, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x261, align 1
  %279 = load i32, ptr %x253, align 4
  %280 = load i32, ptr %x250, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i32, ptr %x232, align 4
  %282 = load i32, ptr %x256, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext 0, i32 noundef %281, i32 noundef %282)
  %283 = load i8, ptr %x265, align 1
  %284 = load i32, ptr %x234, align 4
  %285 = load i32, ptr %x258, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %283, i32 noundef %284, i32 noundef %285)
  %286 = load i8, ptr %x267, align 1
  %287 = load i32, ptr %x236, align 4
  %288 = load i32, ptr %x260, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x269, align 1
  %290 = load i32, ptr %x238, align 4
  %291 = load i32, ptr %x262, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x271, align 1
  %293 = load i32, ptr %x240, align 4
  %294 = load i8, ptr %x263, align 1
  %conv41 = zext i8 %294 to i32
  %295 = load i32, ptr %x251, align 4
  %add42 = add i32 %conv41, %295
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %add42)
  %296 = load i8, ptr %x273, align 1
  %297 = load i32, ptr %x242, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %296, i32 noundef %297, i32 noundef 0)
  %298 = load i8, ptr %x275, align 1
  %299 = load i32, ptr %x244, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %298, i32 noundef %299, i32 noundef 0)
  %300 = load i8, ptr %x277, align 1
  %301 = load i8, ptr %x245, align 1
  %conv43 = zext i8 %301 to i32
  %302 = load i8, ptr %x231, align 1
  %conv44 = zext i8 %302 to i32
  %303 = load i32, ptr %x201, align 4
  %add45 = add i32 %conv44, %303
  %add46 = add i32 %conv43, %add45
  %304 = load i32, ptr %x248, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %300, i32 noundef %add46, i32 noundef %304)
  %305 = load i32, ptr %x266, align 4
  %306 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %306, i64 7
  %307 = load i32, ptr %arrayidx47, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext 0, i32 noundef %305, i32 noundef %307)
  %308 = load i8, ptr %x281, align 1
  %309 = load i32, ptr %x268, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %308, i32 noundef %309, i32 noundef 0)
  %310 = load i8, ptr %x283, align 1
  %311 = load i32, ptr %x270, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %310, i32 noundef %311, i32 noundef 0)
  %312 = load i8, ptr %x285, align 1
  %313 = load i32, ptr %x272, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %312, i32 noundef %313, i32 noundef 0)
  %314 = load i8, ptr %x287, align 1
  %315 = load i32, ptr %x274, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %314, i32 noundef %315, i32 noundef 0)
  %316 = load i8, ptr %x289, align 1
  %317 = load i32, ptr %x276, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %316, i32 noundef %317, i32 noundef 0)
  %318 = load i8, ptr %x291, align 1
  %319 = load i32, ptr %x278, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %318, i32 noundef %319, i32 noundef 0)
  %320 = load i32, ptr %x280, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x294, ptr noundef %x295, i32 noundef %320, i32 noundef 307527195)
  %321 = load i32, ptr %x294, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x296, ptr noundef %x297, i32 noundef %321, i32 noundef 268435456)
  %322 = load i32, ptr %x294, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x298, ptr noundef %x299, i32 noundef %322, i32 noundef 350157278)
  %323 = load i32, ptr %x294, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x300, ptr noundef %x301, i32 noundef %323, i32 noundef -1560830762)
  %324 = load i32, ptr %x294, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x302, ptr noundef %x303, i32 noundef %324, i32 noundef 1477600026)
  %325 = load i32, ptr %x294, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x304, ptr noundef %x305, i32 noundef %325, i32 noundef 1559614445)
  %326 = load i32, ptr %x305, align 4
  %327 = load i32, ptr %x302, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext 0, i32 noundef %326, i32 noundef %327)
  %328 = load i8, ptr %x307, align 1
  %329 = load i32, ptr %x303, align 4
  %330 = load i32, ptr %x300, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %328, i32 noundef %329, i32 noundef %330)
  %331 = load i8, ptr %x309, align 1
  %332 = load i32, ptr %x301, align 4
  %333 = load i32, ptr %x298, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %331, i32 noundef %332, i32 noundef %333)
  %334 = load i32, ptr %x280, align 4
  %335 = load i32, ptr %x304, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext 0, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x313, align 1
  %337 = load i32, ptr %x282, align 4
  %338 = load i32, ptr %x306, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x315, align 1
  %340 = load i32, ptr %x284, align 4
  %341 = load i32, ptr %x308, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x317, align 1
  %343 = load i32, ptr %x286, align 4
  %344 = load i32, ptr %x310, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x319, align 1
  %346 = load i32, ptr %x288, align 4
  %347 = load i8, ptr %x311, align 1
  %conv48 = zext i8 %347 to i32
  %348 = load i32, ptr %x299, align 4
  %add49 = add i32 %conv48, %348
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %add49)
  %349 = load i8, ptr %x321, align 1
  %350 = load i32, ptr %x290, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %349, i32 noundef %350, i32 noundef 0)
  %351 = load i8, ptr %x323, align 1
  %352 = load i32, ptr %x292, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %351, i32 noundef %352, i32 noundef 0)
  %353 = load i8, ptr %x325, align 1
  %354 = load i8, ptr %x293, align 1
  %conv50 = zext i8 %354 to i32
  %355 = load i8, ptr %x279, align 1
  %conv51 = zext i8 %355 to i32
  %356 = load i32, ptr %x249, align 4
  %add52 = add i32 %conv51, %356
  %add53 = add i32 %conv50, %add52
  %357 = load i32, ptr %x296, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %353, i32 noundef %add53, i32 noundef %357)
  %358 = load i8, ptr %x327, align 1
  %conv54 = zext i8 %358 to i32
  %359 = load i32, ptr %x297, align 4
  %add55 = add i32 %conv54, %359
  store i32 %add55, ptr %x328, align 4
  %360 = load i32, ptr %x314, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext 0, i32 noundef %360, i32 noundef 1559614445)
  %361 = load i8, ptr %x330, align 1
  %362 = load i32, ptr %x316, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %361, i32 noundef %362, i32 noundef 1477600026)
  %363 = load i8, ptr %x332, align 1
  %364 = load i32, ptr %x318, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %363, i32 noundef %364, i32 noundef -1560830762)
  %365 = load i8, ptr %x334, align 1
  %366 = load i32, ptr %x320, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %365, i32 noundef %366, i32 noundef 350157278)
  %367 = load i8, ptr %x336, align 1
  %368 = load i32, ptr %x322, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %367, i32 noundef %368, i32 noundef 0)
  %369 = load i8, ptr %x338, align 1
  %370 = load i32, ptr %x324, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %369, i32 noundef %370, i32 noundef 0)
  %371 = load i8, ptr %x340, align 1
  %372 = load i32, ptr %x326, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %371, i32 noundef %372, i32 noundef 0)
  %373 = load i8, ptr %x342, align 1
  %374 = load i32, ptr %x328, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %373, i32 noundef %374, i32 noundef 268435456)
  %375 = load i8, ptr %x344, align 1
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %375, i32 noundef 0, i32 noundef 0)
  %376 = load i8, ptr %x346, align 1
  %377 = load i32, ptr %x329, align 4
  %378 = load i32, ptr %x314, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x347, i8 noundef zeroext %376, i32 noundef %377, i32 noundef %378)
  %379 = load i8, ptr %x346, align 1
  %380 = load i32, ptr %x331, align 4
  %381 = load i32, ptr %x316, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x348, i8 noundef zeroext %379, i32 noundef %380, i32 noundef %381)
  %382 = load i8, ptr %x346, align 1
  %383 = load i32, ptr %x333, align 4
  %384 = load i32, ptr %x318, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x349, i8 noundef zeroext %382, i32 noundef %383, i32 noundef %384)
  %385 = load i8, ptr %x346, align 1
  %386 = load i32, ptr %x335, align 4
  %387 = load i32, ptr %x320, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x350, i8 noundef zeroext %385, i32 noundef %386, i32 noundef %387)
  %388 = load i8, ptr %x346, align 1
  %389 = load i32, ptr %x337, align 4
  %390 = load i32, ptr %x322, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x351, i8 noundef zeroext %388, i32 noundef %389, i32 noundef %390)
  %391 = load i8, ptr %x346, align 1
  %392 = load i32, ptr %x339, align 4
  %393 = load i32, ptr %x324, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x352, i8 noundef zeroext %391, i32 noundef %392, i32 noundef %393)
  %394 = load i8, ptr %x346, align 1
  %395 = load i32, ptr %x341, align 4
  %396 = load i32, ptr %x326, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x353, i8 noundef zeroext %394, i32 noundef %395, i32 noundef %396)
  %397 = load i8, ptr %x346, align 1
  %398 = load i32, ptr %x343, align 4
  %399 = load i32, ptr %x328, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x354, i8 noundef zeroext %397, i32 noundef %398, i32 noundef %399)
  %400 = load i32, ptr %x347, align 4
  %401 = load ptr, ptr %out1.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %401, i64 0
  store i32 %400, ptr %arrayidx56, align 4
  %402 = load i32, ptr %x348, align 4
  %403 = load ptr, ptr %out1.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %403, i64 1
  store i32 %402, ptr %arrayidx57, align 4
  %404 = load i32, ptr %x349, align 4
  %405 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %405, i64 2
  store i32 %404, ptr %arrayidx58, align 4
  %406 = load i32, ptr %x350, align 4
  %407 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %407, i64 3
  store i32 %406, ptr %arrayidx59, align 4
  %408 = load i32, ptr %x351, align 4
  %409 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %409, i64 4
  store i32 %408, ptr %arrayidx60, align 4
  %410 = load i32, ptr %x352, align 4
  %411 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %411, i64 5
  store i32 %410, ptr %arrayidx61, align 4
  %412 = load i32, ptr %x353, align 4
  %413 = load ptr, ptr %out1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %413, i64 6
  store i32 %412, ptr %arrayidx62, align 4
  %414 = load i32, ptr %x354, align 4
  %415 = load ptr, ptr %out1.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %415, i64 7
  store i32 %414, ptr %arrayidx63, align 4
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
