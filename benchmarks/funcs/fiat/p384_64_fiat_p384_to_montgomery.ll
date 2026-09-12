; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
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
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
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
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i8, align 1
  %x71 = alloca i64, align 8
  %x72 = alloca i8, align 1
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
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
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
  %x114 = alloca i8, align 1
  %x115 = alloca i64, align 8
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i8, align 1
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
  %x124 = alloca i8, align 1
  %x125 = alloca i64, align 8
  %x126 = alloca i8, align 1
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x134 = alloca i64, align 8
  %x135 = alloca i64, align 8
  %x136 = alloca i8, align 1
  %x137 = alloca i64, align 8
  %x138 = alloca i8, align 1
  %x139 = alloca i64, align 8
  %x140 = alloca i8, align 1
  %x141 = alloca i64, align 8
  %x142 = alloca i8, align 1
  %x143 = alloca i64, align 8
  %x144 = alloca i8, align 1
  %x145 = alloca i64, align 8
  %x146 = alloca i8, align 1
  %x147 = alloca i64, align 8
  %x148 = alloca i8, align 1
  %x149 = alloca i64, align 8
  %x150 = alloca i8, align 1
  %x151 = alloca i64, align 8
  %x152 = alloca i8, align 1
  %x153 = alloca i64, align 8
  %x154 = alloca i8, align 1
  %x155 = alloca i64, align 8
  %x156 = alloca i64, align 8
  %x157 = alloca i64, align 8
  %x158 = alloca i64, align 8
  %x159 = alloca i64, align 8
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
  %x184 = alloca i8, align 1
  %x185 = alloca i64, align 8
  %x186 = alloca i8, align 1
  %x187 = alloca i64, align 8
  %x188 = alloca i8, align 1
  %x189 = alloca i64, align 8
  %x190 = alloca i8, align 1
  %x191 = alloca i64, align 8
  %x192 = alloca i8, align 1
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
  %x196 = alloca i64, align 8
  %x197 = alloca i64, align 8
  %x198 = alloca i64, align 8
  %x199 = alloca i64, align 8
  %x200 = alloca i64, align 8
  %x201 = alloca i64, align 8
  %x202 = alloca i8, align 1
  %x203 = alloca i64, align 8
  %x204 = alloca i8, align 1
  %x205 = alloca i64, align 8
  %x206 = alloca i8, align 1
  %x207 = alloca i64, align 8
  %x208 = alloca i8, align 1
  %x209 = alloca i64, align 8
  %x210 = alloca i8, align 1
  %x211 = alloca i64, align 8
  %x212 = alloca i8, align 1
  %x213 = alloca i64, align 8
  %x214 = alloca i8, align 1
  %x215 = alloca i64, align 8
  %x216 = alloca i8, align 1
  %x217 = alloca i64, align 8
  %x218 = alloca i8, align 1
  %x219 = alloca i64, align 8
  %x220 = alloca i8, align 1
  %x221 = alloca i64, align 8
  %x222 = alloca i64, align 8
  %x223 = alloca i64, align 8
  %x224 = alloca i64, align 8
  %x225 = alloca i64, align 8
  %x226 = alloca i64, align 8
  %x227 = alloca i64, align 8
  %x228 = alloca i64, align 8
  %x229 = alloca i64, align 8
  %x230 = alloca i64, align 8
  %x231 = alloca i64, align 8
  %x232 = alloca i64, align 8
  %x233 = alloca i64, align 8
  %x234 = alloca i64, align 8
  %x235 = alloca i64, align 8
  %x236 = alloca i8, align 1
  %x237 = alloca i64, align 8
  %x238 = alloca i8, align 1
  %x239 = alloca i64, align 8
  %x240 = alloca i8, align 1
  %x241 = alloca i64, align 8
  %x242 = alloca i8, align 1
  %x243 = alloca i64, align 8
  %x244 = alloca i8, align 1
  %x245 = alloca i64, align 8
  %x246 = alloca i8, align 1
  %x247 = alloca i64, align 8
  %x248 = alloca i8, align 1
  %x249 = alloca i64, align 8
  %x250 = alloca i8, align 1
  %x251 = alloca i64, align 8
  %x252 = alloca i8, align 1
  %x253 = alloca i64, align 8
  %x254 = alloca i8, align 1
  %x255 = alloca i64, align 8
  %x256 = alloca i8, align 1
  %x257 = alloca i64, align 8
  %x258 = alloca i8, align 1
  %x259 = alloca i64, align 8
  %x260 = alloca i64, align 8
  %x261 = alloca i64, align 8
  %x262 = alloca i64, align 8
  %x263 = alloca i64, align 8
  %x264 = alloca i64, align 8
  %x265 = alloca i64, align 8
  %x266 = alloca i64, align 8
  %x267 = alloca i64, align 8
  %x268 = alloca i8, align 1
  %x269 = alloca i64, align 8
  %x270 = alloca i8, align 1
  %x271 = alloca i64, align 8
  %x272 = alloca i8, align 1
  %x273 = alloca i64, align 8
  %x274 = alloca i8, align 1
  %x275 = alloca i64, align 8
  %x276 = alloca i8, align 1
  %x277 = alloca i64, align 8
  %x278 = alloca i8, align 1
  %x279 = alloca i64, align 8
  %x280 = alloca i8, align 1
  %x281 = alloca i64, align 8
  %x282 = alloca i8, align 1
  %x283 = alloca i64, align 8
  %x284 = alloca i8, align 1
  %x285 = alloca i64, align 8
  %x286 = alloca i8, align 1
  %x287 = alloca i64, align 8
  %x288 = alloca i64, align 8
  %x289 = alloca i64, align 8
  %x290 = alloca i64, align 8
  %x291 = alloca i64, align 8
  %x292 = alloca i64, align 8
  %x293 = alloca i64, align 8
  %x294 = alloca i64, align 8
  %x295 = alloca i64, align 8
  %x296 = alloca i64, align 8
  %x297 = alloca i64, align 8
  %x298 = alloca i64, align 8
  %x299 = alloca i64, align 8
  %x300 = alloca i64, align 8
  %x301 = alloca i64, align 8
  %x302 = alloca i8, align 1
  %x303 = alloca i64, align 8
  %x304 = alloca i8, align 1
  %x305 = alloca i64, align 8
  %x306 = alloca i8, align 1
  %x307 = alloca i64, align 8
  %x308 = alloca i8, align 1
  %x309 = alloca i64, align 8
  %x310 = alloca i8, align 1
  %x311 = alloca i64, align 8
  %x312 = alloca i8, align 1
  %x313 = alloca i64, align 8
  %x314 = alloca i8, align 1
  %x315 = alloca i64, align 8
  %x316 = alloca i8, align 1
  %x317 = alloca i64, align 8
  %x318 = alloca i8, align 1
  %x319 = alloca i64, align 8
  %x320 = alloca i8, align 1
  %x321 = alloca i64, align 8
  %x322 = alloca i8, align 1
  %x323 = alloca i64, align 8
  %x324 = alloca i8, align 1
  %x325 = alloca i64, align 8
  %x326 = alloca i64, align 8
  %x327 = alloca i64, align 8
  %x328 = alloca i64, align 8
  %x329 = alloca i64, align 8
  %x330 = alloca i64, align 8
  %x331 = alloca i64, align 8
  %x332 = alloca i64, align 8
  %x333 = alloca i64, align 8
  %x334 = alloca i8, align 1
  %x335 = alloca i64, align 8
  %x336 = alloca i8, align 1
  %x337 = alloca i64, align 8
  %x338 = alloca i8, align 1
  %x339 = alloca i64, align 8
  %x340 = alloca i8, align 1
  %x341 = alloca i64, align 8
  %x342 = alloca i8, align 1
  %x343 = alloca i64, align 8
  %x344 = alloca i8, align 1
  %x345 = alloca i64, align 8
  %x346 = alloca i8, align 1
  %x347 = alloca i64, align 8
  %x348 = alloca i8, align 1
  %x349 = alloca i64, align 8
  %x350 = alloca i8, align 1
  %x351 = alloca i64, align 8
  %x352 = alloca i8, align 1
  %x353 = alloca i64, align 8
  %x354 = alloca i64, align 8
  %x355 = alloca i64, align 8
  %x356 = alloca i64, align 8
  %x357 = alloca i64, align 8
  %x358 = alloca i64, align 8
  %x359 = alloca i64, align 8
  %x360 = alloca i64, align 8
  %x361 = alloca i64, align 8
  %x362 = alloca i64, align 8
  %x363 = alloca i64, align 8
  %x364 = alloca i64, align 8
  %x365 = alloca i64, align 8
  %x366 = alloca i64, align 8
  %x367 = alloca i64, align 8
  %x368 = alloca i8, align 1
  %x369 = alloca i64, align 8
  %x370 = alloca i8, align 1
  %x371 = alloca i64, align 8
  %x372 = alloca i8, align 1
  %x373 = alloca i64, align 8
  %x374 = alloca i8, align 1
  %x375 = alloca i64, align 8
  %x376 = alloca i8, align 1
  %x377 = alloca i64, align 8
  %x378 = alloca i8, align 1
  %x379 = alloca i64, align 8
  %x380 = alloca i8, align 1
  %x381 = alloca i64, align 8
  %x382 = alloca i8, align 1
  %x383 = alloca i64, align 8
  %x384 = alloca i8, align 1
  %x385 = alloca i64, align 8
  %x386 = alloca i8, align 1
  %x387 = alloca i64, align 8
  %x388 = alloca i8, align 1
  %x389 = alloca i64, align 8
  %x390 = alloca i8, align 1
  %x391 = alloca i64, align 8
  %x392 = alloca i8, align 1
  %x393 = alloca i64, align 8
  %x394 = alloca i8, align 1
  %x395 = alloca i64, align 8
  %x396 = alloca i8, align 1
  %x397 = alloca i64, align 8
  %x398 = alloca i8, align 1
  %x399 = alloca i64, align 8
  %x400 = alloca i8, align 1
  %x401 = alloca i64, align 8
  %x402 = alloca i8, align 1
  %x403 = alloca i64, align 8
  %x404 = alloca i8, align 1
  %x405 = alloca i64, align 8
  %x406 = alloca i64, align 8
  %x407 = alloca i64, align 8
  %x408 = alloca i64, align 8
  %x409 = alloca i64, align 8
  %x410 = alloca i64, align 8
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
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 4
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 5
  %9 = load i64, ptr %arrayidx4, align 8
  store i64 %9, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 0
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load i64, ptr %x6, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %12, i64 noundef 8589934592)
  %13 = load i64, ptr %x6, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %13, i64 noundef -8589934592)
  %14 = load i64, ptr %x6, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %14, i64 noundef 8589934592)
  %15 = load i64, ptr %x6, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x13, ptr noundef %x14, i64 noundef %15, i64 noundef -8589934591)
  %16 = load i64, ptr %x14, align 8
  %17 = load i64, ptr %x11, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext 0, i64 noundef %16, i64 noundef %17)
  %18 = load i8, ptr %x16, align 1
  %19 = load i64, ptr %x12, align 8
  %20 = load i64, ptr %x9, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %18, i64 noundef %19, i64 noundef %20)
  %21 = load i8, ptr %x18, align 1
  %22 = load i64, ptr %x10, align 8
  %23 = load i64, ptr %x7, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %21, i64 noundef %22, i64 noundef %23)
  %24 = load i8, ptr %x20, align 1
  %25 = load i64, ptr %x8, align 8
  %26 = load i64, ptr %x6, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %24, i64 noundef %25, i64 noundef %26)
  %27 = load i64, ptr %x13, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x23, ptr noundef %x24, i64 noundef %27, i64 noundef 4294967297)
  %28 = load i64, ptr %x23, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x25, ptr noundef %x26, i64 noundef %28, i64 noundef -1)
  %29 = load i64, ptr %x23, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x27, ptr noundef %x28, i64 noundef %29, i64 noundef -1)
  %30 = load i64, ptr %x23, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x29, ptr noundef %x30, i64 noundef %30, i64 noundef -1)
  %31 = load i64, ptr %x23, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x31, ptr noundef %x32, i64 noundef %31, i64 noundef -2)
  %32 = load i64, ptr %x23, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x33, ptr noundef %x34, i64 noundef %32, i64 noundef -4294967296)
  %33 = load i64, ptr %x23, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x35, ptr noundef %x36, i64 noundef %33, i64 noundef 4294967295)
  %34 = load i64, ptr %x36, align 8
  %35 = load i64, ptr %x33, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext 0, i64 noundef %34, i64 noundef %35)
  %36 = load i8, ptr %x38, align 1
  %37 = load i64, ptr %x34, align 8
  %38 = load i64, ptr %x31, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %36, i64 noundef %37, i64 noundef %38)
  %39 = load i8, ptr %x40, align 1
  %40 = load i64, ptr %x32, align 8
  %41 = load i64, ptr %x29, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %39, i64 noundef %40, i64 noundef %41)
  %42 = load i8, ptr %x42, align 1
  %43 = load i64, ptr %x30, align 8
  %44 = load i64, ptr %x27, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %42, i64 noundef %43, i64 noundef %44)
  %45 = load i8, ptr %x44, align 1
  %46 = load i64, ptr %x28, align 8
  %47 = load i64, ptr %x25, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %45, i64 noundef %46, i64 noundef %47)
  %48 = load i64, ptr %x13, align 8
  %49 = load i64, ptr %x35, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext 0, i64 noundef %48, i64 noundef %49)
  %50 = load i8, ptr %x48, align 1
  %51 = load i64, ptr %x15, align 8
  %52 = load i64, ptr %x37, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %50, i64 noundef %51, i64 noundef %52)
  %53 = load i8, ptr %x50, align 1
  %54 = load i64, ptr %x17, align 8
  %55 = load i64, ptr %x39, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %53, i64 noundef %54, i64 noundef %55)
  %56 = load i8, ptr %x52, align 1
  %57 = load i64, ptr %x19, align 8
  %58 = load i64, ptr %x41, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %56, i64 noundef %57, i64 noundef %58)
  %59 = load i8, ptr %x54, align 1
  %60 = load i64, ptr %x21, align 8
  %61 = load i64, ptr %x43, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %59, i64 noundef %60, i64 noundef %61)
  %62 = load i8, ptr %x56, align 1
  %63 = load i8, ptr %x22, align 1
  %conv = zext i8 %63 to i64
  %64 = load i64, ptr %x45, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %62, i64 noundef %conv, i64 noundef %64)
  %65 = load i8, ptr %x58, align 1
  %66 = load i8, ptr %x46, align 1
  %conv6 = zext i8 %66 to i64
  %67 = load i64, ptr %x26, align 8
  %add = add i64 %conv6, %67
  call void @fiat_p384_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %65, i64 noundef 0, i64 noundef %add)
  %68 = load i64, ptr %x1, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x61, ptr noundef %x62, i64 noundef %68, i64 noundef 8589934592)
  %69 = load i64, ptr %x1, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x63, ptr noundef %x64, i64 noundef %69, i64 noundef -8589934592)
  %70 = load i64, ptr %x1, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x65, ptr noundef %x66, i64 noundef %70, i64 noundef 8589934592)
  %71 = load i64, ptr %x1, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x67, ptr noundef %x68, i64 noundef %71, i64 noundef -8589934591)
  %72 = load i64, ptr %x68, align 8
  %73 = load i64, ptr %x65, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext 0, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x70, align 1
  %75 = load i64, ptr %x66, align 8
  %76 = load i64, ptr %x63, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x72, align 1
  %78 = load i64, ptr %x64, align 8
  %79 = load i64, ptr %x61, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x74, align 1
  %81 = load i64, ptr %x62, align 8
  %82 = load i64, ptr %x1, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i64, ptr %x49, align 8
  %84 = load i64, ptr %x67, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x78, align 1
  %86 = load i64, ptr %x51, align 8
  %87 = load i64, ptr %x69, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %85, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x80, align 1
  %89 = load i64, ptr %x53, align 8
  %90 = load i64, ptr %x71, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %88, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x82, align 1
  %92 = load i64, ptr %x55, align 8
  %93 = load i64, ptr %x73, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x84, align 1
  %95 = load i64, ptr %x57, align 8
  %96 = load i64, ptr %x75, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %94, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x86, align 1
  %98 = load i64, ptr %x59, align 8
  %99 = load i8, ptr %x76, align 1
  %conv7 = zext i8 %99 to i64
  call void @fiat_p384_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %97, i64 noundef %98, i64 noundef %conv7)
  %100 = load i64, ptr %x77, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x89, ptr noundef %x90, i64 noundef %100, i64 noundef 4294967297)
  %101 = load i64, ptr %x89, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x91, ptr noundef %x92, i64 noundef %101, i64 noundef -1)
  %102 = load i64, ptr %x89, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x93, ptr noundef %x94, i64 noundef %102, i64 noundef -1)
  %103 = load i64, ptr %x89, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x95, ptr noundef %x96, i64 noundef %103, i64 noundef -1)
  %104 = load i64, ptr %x89, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x97, ptr noundef %x98, i64 noundef %104, i64 noundef -2)
  %105 = load i64, ptr %x89, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x99, ptr noundef %x100, i64 noundef %105, i64 noundef -4294967296)
  %106 = load i64, ptr %x89, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x101, ptr noundef %x102, i64 noundef %106, i64 noundef 4294967295)
  %107 = load i64, ptr %x102, align 8
  %108 = load i64, ptr %x99, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x104, align 1
  %110 = load i64, ptr %x100, align 8
  %111 = load i64, ptr %x97, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i8, ptr %x106, align 1
  %113 = load i64, ptr %x98, align 8
  %114 = load i64, ptr %x95, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %112, i64 noundef %113, i64 noundef %114)
  %115 = load i8, ptr %x108, align 1
  %116 = load i64, ptr %x96, align 8
  %117 = load i64, ptr %x93, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %115, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x110, align 1
  %119 = load i64, ptr %x94, align 8
  %120 = load i64, ptr %x91, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i64, ptr %x77, align 8
  %122 = load i64, ptr %x101, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext 0, i64 noundef %121, i64 noundef %122)
  %123 = load i8, ptr %x114, align 1
  %124 = load i64, ptr %x79, align 8
  %125 = load i64, ptr %x103, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %123, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x116, align 1
  %127 = load i64, ptr %x81, align 8
  %128 = load i64, ptr %x105, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x118, align 1
  %130 = load i64, ptr %x83, align 8
  %131 = load i64, ptr %x107, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x120, align 1
  %133 = load i64, ptr %x85, align 8
  %134 = load i64, ptr %x109, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x122, align 1
  %136 = load i64, ptr %x87, align 8
  %137 = load i64, ptr %x111, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x124, align 1
  %139 = load i8, ptr %x88, align 1
  %conv8 = zext i8 %139 to i64
  %140 = load i8, ptr %x60, align 1
  %conv9 = zext i8 %140 to i64
  %add10 = add i64 %conv8, %conv9
  %141 = load i8, ptr %x112, align 1
  %conv11 = zext i8 %141 to i64
  %142 = load i64, ptr %x92, align 8
  %add12 = add i64 %conv11, %142
  call void @fiat_p384_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %138, i64 noundef %add10, i64 noundef %add12)
  %143 = load i64, ptr %x2, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x127, ptr noundef %x128, i64 noundef %143, i64 noundef 8589934592)
  %144 = load i64, ptr %x2, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x129, ptr noundef %x130, i64 noundef %144, i64 noundef -8589934592)
  %145 = load i64, ptr %x2, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x131, ptr noundef %x132, i64 noundef %145, i64 noundef 8589934592)
  %146 = load i64, ptr %x2, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x133, ptr noundef %x134, i64 noundef %146, i64 noundef -8589934591)
  %147 = load i64, ptr %x134, align 8
  %148 = load i64, ptr %x131, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext 0, i64 noundef %147, i64 noundef %148)
  %149 = load i8, ptr %x136, align 1
  %150 = load i64, ptr %x132, align 8
  %151 = load i64, ptr %x129, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %149, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x138, align 1
  %153 = load i64, ptr %x130, align 8
  %154 = load i64, ptr %x127, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x140, align 1
  %156 = load i64, ptr %x128, align 8
  %157 = load i64, ptr %x2, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i64, ptr %x115, align 8
  %159 = load i64, ptr %x133, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext 0, i64 noundef %158, i64 noundef %159)
  %160 = load i8, ptr %x144, align 1
  %161 = load i64, ptr %x117, align 8
  %162 = load i64, ptr %x135, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %160, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x146, align 1
  %164 = load i64, ptr %x119, align 8
  %165 = load i64, ptr %x137, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %163, i64 noundef %164, i64 noundef %165)
  %166 = load i8, ptr %x148, align 1
  %167 = load i64, ptr %x121, align 8
  %168 = load i64, ptr %x139, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %166, i64 noundef %167, i64 noundef %168)
  %169 = load i8, ptr %x150, align 1
  %170 = load i64, ptr %x123, align 8
  %171 = load i64, ptr %x141, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %169, i64 noundef %170, i64 noundef %171)
  %172 = load i8, ptr %x152, align 1
  %173 = load i64, ptr %x125, align 8
  %174 = load i8, ptr %x142, align 1
  %conv13 = zext i8 %174 to i64
  call void @fiat_p384_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %172, i64 noundef %173, i64 noundef %conv13)
  %175 = load i64, ptr %x143, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x155, ptr noundef %x156, i64 noundef %175, i64 noundef 4294967297)
  %176 = load i64, ptr %x155, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x157, ptr noundef %x158, i64 noundef %176, i64 noundef -1)
  %177 = load i64, ptr %x155, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x159, ptr noundef %x160, i64 noundef %177, i64 noundef -1)
  %178 = load i64, ptr %x155, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x161, ptr noundef %x162, i64 noundef %178, i64 noundef -1)
  %179 = load i64, ptr %x155, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x163, ptr noundef %x164, i64 noundef %179, i64 noundef -2)
  %180 = load i64, ptr %x155, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x165, ptr noundef %x166, i64 noundef %180, i64 noundef -4294967296)
  %181 = load i64, ptr %x155, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x167, ptr noundef %x168, i64 noundef %181, i64 noundef 4294967295)
  %182 = load i64, ptr %x168, align 8
  %183 = load i64, ptr %x165, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext 0, i64 noundef %182, i64 noundef %183)
  %184 = load i8, ptr %x170, align 1
  %185 = load i64, ptr %x166, align 8
  %186 = load i64, ptr %x163, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %184, i64 noundef %185, i64 noundef %186)
  %187 = load i8, ptr %x172, align 1
  %188 = load i64, ptr %x164, align 8
  %189 = load i64, ptr %x161, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %187, i64 noundef %188, i64 noundef %189)
  %190 = load i8, ptr %x174, align 1
  %191 = load i64, ptr %x162, align 8
  %192 = load i64, ptr %x159, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %190, i64 noundef %191, i64 noundef %192)
  %193 = load i8, ptr %x176, align 1
  %194 = load i64, ptr %x160, align 8
  %195 = load i64, ptr %x157, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %193, i64 noundef %194, i64 noundef %195)
  %196 = load i64, ptr %x143, align 8
  %197 = load i64, ptr %x167, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext 0, i64 noundef %196, i64 noundef %197)
  %198 = load i8, ptr %x180, align 1
  %199 = load i64, ptr %x145, align 8
  %200 = load i64, ptr %x169, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %198, i64 noundef %199, i64 noundef %200)
  %201 = load i8, ptr %x182, align 1
  %202 = load i64, ptr %x147, align 8
  %203 = load i64, ptr %x171, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %201, i64 noundef %202, i64 noundef %203)
  %204 = load i8, ptr %x184, align 1
  %205 = load i64, ptr %x149, align 8
  %206 = load i64, ptr %x173, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %204, i64 noundef %205, i64 noundef %206)
  %207 = load i8, ptr %x186, align 1
  %208 = load i64, ptr %x151, align 8
  %209 = load i64, ptr %x175, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %207, i64 noundef %208, i64 noundef %209)
  %210 = load i8, ptr %x188, align 1
  %211 = load i64, ptr %x153, align 8
  %212 = load i64, ptr %x177, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %210, i64 noundef %211, i64 noundef %212)
  %213 = load i8, ptr %x190, align 1
  %214 = load i8, ptr %x154, align 1
  %conv14 = zext i8 %214 to i64
  %215 = load i8, ptr %x126, align 1
  %conv15 = zext i8 %215 to i64
  %add16 = add i64 %conv14, %conv15
  %216 = load i8, ptr %x178, align 1
  %conv17 = zext i8 %216 to i64
  %217 = load i64, ptr %x158, align 8
  %add18 = add i64 %conv17, %217
  call void @fiat_p384_addcarryx_u64(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %213, i64 noundef %add16, i64 noundef %add18)
  %218 = load i64, ptr %x3, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x193, ptr noundef %x194, i64 noundef %218, i64 noundef 8589934592)
  %219 = load i64, ptr %x3, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x195, ptr noundef %x196, i64 noundef %219, i64 noundef -8589934592)
  %220 = load i64, ptr %x3, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x197, ptr noundef %x198, i64 noundef %220, i64 noundef 8589934592)
  %221 = load i64, ptr %x3, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x199, ptr noundef %x200, i64 noundef %221, i64 noundef -8589934591)
  %222 = load i64, ptr %x200, align 8
  %223 = load i64, ptr %x197, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext 0, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x202, align 1
  %225 = load i64, ptr %x198, align 8
  %226 = load i64, ptr %x195, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x204, align 1
  %228 = load i64, ptr %x196, align 8
  %229 = load i64, ptr %x193, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x206, align 1
  %231 = load i64, ptr %x194, align 8
  %232 = load i64, ptr %x3, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %230, i64 noundef %231, i64 noundef %232)
  %233 = load i64, ptr %x181, align 8
  %234 = load i64, ptr %x199, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext 0, i64 noundef %233, i64 noundef %234)
  %235 = load i8, ptr %x210, align 1
  %236 = load i64, ptr %x183, align 8
  %237 = load i64, ptr %x201, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %235, i64 noundef %236, i64 noundef %237)
  %238 = load i8, ptr %x212, align 1
  %239 = load i64, ptr %x185, align 8
  %240 = load i64, ptr %x203, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %238, i64 noundef %239, i64 noundef %240)
  %241 = load i8, ptr %x214, align 1
  %242 = load i64, ptr %x187, align 8
  %243 = load i64, ptr %x205, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext %241, i64 noundef %242, i64 noundef %243)
  %244 = load i8, ptr %x216, align 1
  %245 = load i64, ptr %x189, align 8
  %246 = load i64, ptr %x207, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext %244, i64 noundef %245, i64 noundef %246)
  %247 = load i8, ptr %x218, align 1
  %248 = load i64, ptr %x191, align 8
  %249 = load i8, ptr %x208, align 1
  %conv19 = zext i8 %249 to i64
  call void @fiat_p384_addcarryx_u64(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %247, i64 noundef %248, i64 noundef %conv19)
  %250 = load i64, ptr %x209, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x221, ptr noundef %x222, i64 noundef %250, i64 noundef 4294967297)
  %251 = load i64, ptr %x221, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x223, ptr noundef %x224, i64 noundef %251, i64 noundef -1)
  %252 = load i64, ptr %x221, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x225, ptr noundef %x226, i64 noundef %252, i64 noundef -1)
  %253 = load i64, ptr %x221, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x227, ptr noundef %x228, i64 noundef %253, i64 noundef -1)
  %254 = load i64, ptr %x221, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x229, ptr noundef %x230, i64 noundef %254, i64 noundef -2)
  %255 = load i64, ptr %x221, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x231, ptr noundef %x232, i64 noundef %255, i64 noundef -4294967296)
  %256 = load i64, ptr %x221, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x233, ptr noundef %x234, i64 noundef %256, i64 noundef 4294967295)
  %257 = load i64, ptr %x234, align 8
  %258 = load i64, ptr %x231, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext 0, i64 noundef %257, i64 noundef %258)
  %259 = load i8, ptr %x236, align 1
  %260 = load i64, ptr %x232, align 8
  %261 = load i64, ptr %x229, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %259, i64 noundef %260, i64 noundef %261)
  %262 = load i8, ptr %x238, align 1
  %263 = load i64, ptr %x230, align 8
  %264 = load i64, ptr %x227, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %262, i64 noundef %263, i64 noundef %264)
  %265 = load i8, ptr %x240, align 1
  %266 = load i64, ptr %x228, align 8
  %267 = load i64, ptr %x225, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %265, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x242, align 1
  %269 = load i64, ptr %x226, align 8
  %270 = load i64, ptr %x223, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i64, ptr %x209, align 8
  %272 = load i64, ptr %x233, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x245, ptr noundef %x246, i8 noundef zeroext 0, i64 noundef %271, i64 noundef %272)
  %273 = load i8, ptr %x246, align 1
  %274 = load i64, ptr %x211, align 8
  %275 = load i64, ptr %x235, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x247, ptr noundef %x248, i8 noundef zeroext %273, i64 noundef %274, i64 noundef %275)
  %276 = load i8, ptr %x248, align 1
  %277 = load i64, ptr %x213, align 8
  %278 = load i64, ptr %x237, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext %276, i64 noundef %277, i64 noundef %278)
  %279 = load i8, ptr %x250, align 1
  %280 = load i64, ptr %x215, align 8
  %281 = load i64, ptr %x239, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %279, i64 noundef %280, i64 noundef %281)
  %282 = load i8, ptr %x252, align 1
  %283 = load i64, ptr %x217, align 8
  %284 = load i64, ptr %x241, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %282, i64 noundef %283, i64 noundef %284)
  %285 = load i8, ptr %x254, align 1
  %286 = load i64, ptr %x219, align 8
  %287 = load i64, ptr %x243, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %285, i64 noundef %286, i64 noundef %287)
  %288 = load i8, ptr %x256, align 1
  %289 = load i8, ptr %x220, align 1
  %conv20 = zext i8 %289 to i64
  %290 = load i8, ptr %x192, align 1
  %conv21 = zext i8 %290 to i64
  %add22 = add i64 %conv20, %conv21
  %291 = load i8, ptr %x244, align 1
  %conv23 = zext i8 %291 to i64
  %292 = load i64, ptr %x224, align 8
  %add24 = add i64 %conv23, %292
  call void @fiat_p384_addcarryx_u64(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %288, i64 noundef %add22, i64 noundef %add24)
  %293 = load i64, ptr %x4, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x259, ptr noundef %x260, i64 noundef %293, i64 noundef 8589934592)
  %294 = load i64, ptr %x4, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x261, ptr noundef %x262, i64 noundef %294, i64 noundef -8589934592)
  %295 = load i64, ptr %x4, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x263, ptr noundef %x264, i64 noundef %295, i64 noundef 8589934592)
  %296 = load i64, ptr %x4, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x265, ptr noundef %x266, i64 noundef %296, i64 noundef -8589934591)
  %297 = load i64, ptr %x266, align 8
  %298 = load i64, ptr %x263, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext 0, i64 noundef %297, i64 noundef %298)
  %299 = load i8, ptr %x268, align 1
  %300 = load i64, ptr %x264, align 8
  %301 = load i64, ptr %x261, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %299, i64 noundef %300, i64 noundef %301)
  %302 = load i8, ptr %x270, align 1
  %303 = load i64, ptr %x262, align 8
  %304 = load i64, ptr %x259, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %302, i64 noundef %303, i64 noundef %304)
  %305 = load i8, ptr %x272, align 1
  %306 = load i64, ptr %x260, align 8
  %307 = load i64, ptr %x4, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %305, i64 noundef %306, i64 noundef %307)
  %308 = load i64, ptr %x247, align 8
  %309 = load i64, ptr %x265, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext 0, i64 noundef %308, i64 noundef %309)
  %310 = load i8, ptr %x276, align 1
  %311 = load i64, ptr %x249, align 8
  %312 = load i64, ptr %x267, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %310, i64 noundef %311, i64 noundef %312)
  %313 = load i8, ptr %x278, align 1
  %314 = load i64, ptr %x251, align 8
  %315 = load i64, ptr %x269, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %313, i64 noundef %314, i64 noundef %315)
  %316 = load i8, ptr %x280, align 1
  %317 = load i64, ptr %x253, align 8
  %318 = load i64, ptr %x271, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x281, ptr noundef %x282, i8 noundef zeroext %316, i64 noundef %317, i64 noundef %318)
  %319 = load i8, ptr %x282, align 1
  %320 = load i64, ptr %x255, align 8
  %321 = load i64, ptr %x273, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x283, ptr noundef %x284, i8 noundef zeroext %319, i64 noundef %320, i64 noundef %321)
  %322 = load i8, ptr %x284, align 1
  %323 = load i64, ptr %x257, align 8
  %324 = load i8, ptr %x274, align 1
  %conv25 = zext i8 %324 to i64
  call void @fiat_p384_addcarryx_u64(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext %322, i64 noundef %323, i64 noundef %conv25)
  %325 = load i64, ptr %x275, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x287, ptr noundef %x288, i64 noundef %325, i64 noundef 4294967297)
  %326 = load i64, ptr %x287, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x289, ptr noundef %x290, i64 noundef %326, i64 noundef -1)
  %327 = load i64, ptr %x287, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x291, ptr noundef %x292, i64 noundef %327, i64 noundef -1)
  %328 = load i64, ptr %x287, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x293, ptr noundef %x294, i64 noundef %328, i64 noundef -1)
  %329 = load i64, ptr %x287, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x295, ptr noundef %x296, i64 noundef %329, i64 noundef -2)
  %330 = load i64, ptr %x287, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x297, ptr noundef %x298, i64 noundef %330, i64 noundef -4294967296)
  %331 = load i64, ptr %x287, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x299, ptr noundef %x300, i64 noundef %331, i64 noundef 4294967295)
  %332 = load i64, ptr %x300, align 8
  %333 = load i64, ptr %x297, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext 0, i64 noundef %332, i64 noundef %333)
  %334 = load i8, ptr %x302, align 1
  %335 = load i64, ptr %x298, align 8
  %336 = load i64, ptr %x295, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %334, i64 noundef %335, i64 noundef %336)
  %337 = load i8, ptr %x304, align 1
  %338 = load i64, ptr %x296, align 8
  %339 = load i64, ptr %x293, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %337, i64 noundef %338, i64 noundef %339)
  %340 = load i8, ptr %x306, align 1
  %341 = load i64, ptr %x294, align 8
  %342 = load i64, ptr %x291, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %340, i64 noundef %341, i64 noundef %342)
  %343 = load i8, ptr %x308, align 1
  %344 = load i64, ptr %x292, align 8
  %345 = load i64, ptr %x289, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %343, i64 noundef %344, i64 noundef %345)
  %346 = load i64, ptr %x275, align 8
  %347 = load i64, ptr %x299, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext 0, i64 noundef %346, i64 noundef %347)
  %348 = load i8, ptr %x312, align 1
  %349 = load i64, ptr %x277, align 8
  %350 = load i64, ptr %x301, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %348, i64 noundef %349, i64 noundef %350)
  %351 = load i8, ptr %x314, align 1
  %352 = load i64, ptr %x279, align 8
  %353 = load i64, ptr %x303, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %351, i64 noundef %352, i64 noundef %353)
  %354 = load i8, ptr %x316, align 1
  %355 = load i64, ptr %x281, align 8
  %356 = load i64, ptr %x305, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %354, i64 noundef %355, i64 noundef %356)
  %357 = load i8, ptr %x318, align 1
  %358 = load i64, ptr %x283, align 8
  %359 = load i64, ptr %x307, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %357, i64 noundef %358, i64 noundef %359)
  %360 = load i8, ptr %x320, align 1
  %361 = load i64, ptr %x285, align 8
  %362 = load i64, ptr %x309, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %360, i64 noundef %361, i64 noundef %362)
  %363 = load i8, ptr %x322, align 1
  %364 = load i8, ptr %x286, align 1
  %conv26 = zext i8 %364 to i64
  %365 = load i8, ptr %x258, align 1
  %conv27 = zext i8 %365 to i64
  %add28 = add i64 %conv26, %conv27
  %366 = load i8, ptr %x310, align 1
  %conv29 = zext i8 %366 to i64
  %367 = load i64, ptr %x290, align 8
  %add30 = add i64 %conv29, %367
  call void @fiat_p384_addcarryx_u64(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %363, i64 noundef %add28, i64 noundef %add30)
  %368 = load i64, ptr %x5, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x325, ptr noundef %x326, i64 noundef %368, i64 noundef 8589934592)
  %369 = load i64, ptr %x5, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x327, ptr noundef %x328, i64 noundef %369, i64 noundef -8589934592)
  %370 = load i64, ptr %x5, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x329, ptr noundef %x330, i64 noundef %370, i64 noundef 8589934592)
  %371 = load i64, ptr %x5, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x331, ptr noundef %x332, i64 noundef %371, i64 noundef -8589934591)
  %372 = load i64, ptr %x332, align 8
  %373 = load i64, ptr %x329, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext 0, i64 noundef %372, i64 noundef %373)
  %374 = load i8, ptr %x334, align 1
  %375 = load i64, ptr %x330, align 8
  %376 = load i64, ptr %x327, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %374, i64 noundef %375, i64 noundef %376)
  %377 = load i8, ptr %x336, align 1
  %378 = load i64, ptr %x328, align 8
  %379 = load i64, ptr %x325, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %377, i64 noundef %378, i64 noundef %379)
  %380 = load i8, ptr %x338, align 1
  %381 = load i64, ptr %x326, align 8
  %382 = load i64, ptr %x5, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %380, i64 noundef %381, i64 noundef %382)
  %383 = load i64, ptr %x313, align 8
  %384 = load i64, ptr %x331, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext 0, i64 noundef %383, i64 noundef %384)
  %385 = load i8, ptr %x342, align 1
  %386 = load i64, ptr %x315, align 8
  %387 = load i64, ptr %x333, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %385, i64 noundef %386, i64 noundef %387)
  %388 = load i8, ptr %x344, align 1
  %389 = load i64, ptr %x317, align 8
  %390 = load i64, ptr %x335, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %388, i64 noundef %389, i64 noundef %390)
  %391 = load i8, ptr %x346, align 1
  %392 = load i64, ptr %x319, align 8
  %393 = load i64, ptr %x337, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %391, i64 noundef %392, i64 noundef %393)
  %394 = load i8, ptr %x348, align 1
  %395 = load i64, ptr %x321, align 8
  %396 = load i64, ptr %x339, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %394, i64 noundef %395, i64 noundef %396)
  %397 = load i8, ptr %x350, align 1
  %398 = load i64, ptr %x323, align 8
  %399 = load i8, ptr %x340, align 1
  %conv31 = zext i8 %399 to i64
  call void @fiat_p384_addcarryx_u64(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %397, i64 noundef %398, i64 noundef %conv31)
  %400 = load i64, ptr %x341, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x353, ptr noundef %x354, i64 noundef %400, i64 noundef 4294967297)
  %401 = load i64, ptr %x353, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x355, ptr noundef %x356, i64 noundef %401, i64 noundef -1)
  %402 = load i64, ptr %x353, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x357, ptr noundef %x358, i64 noundef %402, i64 noundef -1)
  %403 = load i64, ptr %x353, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x359, ptr noundef %x360, i64 noundef %403, i64 noundef -1)
  %404 = load i64, ptr %x353, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x361, ptr noundef %x362, i64 noundef %404, i64 noundef -2)
  %405 = load i64, ptr %x353, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x363, ptr noundef %x364, i64 noundef %405, i64 noundef -4294967296)
  %406 = load i64, ptr %x353, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x365, ptr noundef %x366, i64 noundef %406, i64 noundef 4294967295)
  %407 = load i64, ptr %x366, align 8
  %408 = load i64, ptr %x363, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext 0, i64 noundef %407, i64 noundef %408)
  %409 = load i8, ptr %x368, align 1
  %410 = load i64, ptr %x364, align 8
  %411 = load i64, ptr %x361, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %409, i64 noundef %410, i64 noundef %411)
  %412 = load i8, ptr %x370, align 1
  %413 = load i64, ptr %x362, align 8
  %414 = load i64, ptr %x359, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %412, i64 noundef %413, i64 noundef %414)
  %415 = load i8, ptr %x372, align 1
  %416 = load i64, ptr %x360, align 8
  %417 = load i64, ptr %x357, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %415, i64 noundef %416, i64 noundef %417)
  %418 = load i8, ptr %x374, align 1
  %419 = load i64, ptr %x358, align 8
  %420 = load i64, ptr %x355, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %418, i64 noundef %419, i64 noundef %420)
  %421 = load i64, ptr %x341, align 8
  %422 = load i64, ptr %x365, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext 0, i64 noundef %421, i64 noundef %422)
  %423 = load i8, ptr %x378, align 1
  %424 = load i64, ptr %x343, align 8
  %425 = load i64, ptr %x367, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %423, i64 noundef %424, i64 noundef %425)
  %426 = load i8, ptr %x380, align 1
  %427 = load i64, ptr %x345, align 8
  %428 = load i64, ptr %x369, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %426, i64 noundef %427, i64 noundef %428)
  %429 = load i8, ptr %x382, align 1
  %430 = load i64, ptr %x347, align 8
  %431 = load i64, ptr %x371, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %429, i64 noundef %430, i64 noundef %431)
  %432 = load i8, ptr %x384, align 1
  %433 = load i64, ptr %x349, align 8
  %434 = load i64, ptr %x373, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %432, i64 noundef %433, i64 noundef %434)
  %435 = load i8, ptr %x386, align 1
  %436 = load i64, ptr %x351, align 8
  %437 = load i64, ptr %x375, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %435, i64 noundef %436, i64 noundef %437)
  %438 = load i8, ptr %x388, align 1
  %439 = load i8, ptr %x352, align 1
  %conv32 = zext i8 %439 to i64
  %440 = load i8, ptr %x324, align 1
  %conv33 = zext i8 %440 to i64
  %add34 = add i64 %conv32, %conv33
  %441 = load i8, ptr %x376, align 1
  %conv35 = zext i8 %441 to i64
  %442 = load i64, ptr %x356, align 8
  %add36 = add i64 %conv35, %442
  call void @fiat_p384_addcarryx_u64(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %438, i64 noundef %add34, i64 noundef %add36)
  %443 = load i64, ptr %x379, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext 0, i64 noundef %443, i64 noundef 4294967295)
  %444 = load i8, ptr %x392, align 1
  %445 = load i64, ptr %x381, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %444, i64 noundef %445, i64 noundef -4294967296)
  %446 = load i8, ptr %x394, align 1
  %447 = load i64, ptr %x383, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %446, i64 noundef %447, i64 noundef -2)
  %448 = load i8, ptr %x396, align 1
  %449 = load i64, ptr %x385, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %448, i64 noundef %449, i64 noundef -1)
  %450 = load i8, ptr %x398, align 1
  %451 = load i64, ptr %x387, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %450, i64 noundef %451, i64 noundef -1)
  %452 = load i8, ptr %x400, align 1
  %453 = load i64, ptr %x389, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %452, i64 noundef %453, i64 noundef -1)
  %454 = load i8, ptr %x402, align 1
  %455 = load i8, ptr %x390, align 1
  %conv37 = zext i8 %455 to i64
  call void @fiat_p384_subborrowx_u64(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %454, i64 noundef %conv37, i64 noundef 0)
  %456 = load i8, ptr %x404, align 1
  %457 = load i64, ptr %x391, align 8
  %458 = load i64, ptr %x379, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x405, i8 noundef zeroext %456, i64 noundef %457, i64 noundef %458)
  %459 = load i8, ptr %x404, align 1
  %460 = load i64, ptr %x393, align 8
  %461 = load i64, ptr %x381, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x406, i8 noundef zeroext %459, i64 noundef %460, i64 noundef %461)
  %462 = load i8, ptr %x404, align 1
  %463 = load i64, ptr %x395, align 8
  %464 = load i64, ptr %x383, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x407, i8 noundef zeroext %462, i64 noundef %463, i64 noundef %464)
  %465 = load i8, ptr %x404, align 1
  %466 = load i64, ptr %x397, align 8
  %467 = load i64, ptr %x385, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x408, i8 noundef zeroext %465, i64 noundef %466, i64 noundef %467)
  %468 = load i8, ptr %x404, align 1
  %469 = load i64, ptr %x399, align 8
  %470 = load i64, ptr %x387, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x409, i8 noundef zeroext %468, i64 noundef %469, i64 noundef %470)
  %471 = load i8, ptr %x404, align 1
  %472 = load i64, ptr %x401, align 8
  %473 = load i64, ptr %x389, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x410, i8 noundef zeroext %471, i64 noundef %472, i64 noundef %473)
  %474 = load i64, ptr %x405, align 8
  %475 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %475, i64 0
  store i64 %474, ptr %arrayidx38, align 8
  %476 = load i64, ptr %x406, align 8
  %477 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %477, i64 1
  store i64 %476, ptr %arrayidx39, align 8
  %478 = load i64, ptr %x407, align 8
  %479 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %479, i64 2
  store i64 %478, ptr %arrayidx40, align 8
  %480 = load i64, ptr %x408, align 8
  %481 = load ptr, ptr %out1.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %481, i64 3
  store i64 %480, ptr %arrayidx41, align 8
  %482 = load i64, ptr %x409, align 8
  %483 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %483, i64 4
  store i64 %482, ptr %arrayidx42, align 8
  %484 = load i64, ptr %x410, align 8
  %485 = load ptr, ptr %out1.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %485, i64 5
  store i64 %484, ptr %arrayidx43, align 8
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
