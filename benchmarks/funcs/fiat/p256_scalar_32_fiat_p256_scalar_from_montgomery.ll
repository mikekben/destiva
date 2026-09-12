; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p256_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p256_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p256_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  %x17 = alloca i32, align 4
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
  %x72 = alloca i32, align 4
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i32, align 4
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
  %x113 = alloca i8, align 1
  %x114 = alloca i32, align 4
  %x115 = alloca i8, align 1
  %x116 = alloca i32, align 4
  %x117 = alloca i8, align 1
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
  %x129 = alloca i32, align 4
  %x130 = alloca i32, align 4
  %x131 = alloca i32, align 4
  %x132 = alloca i32, align 4
  %x133 = alloca i32, align 4
  %x134 = alloca i32, align 4
  %x135 = alloca i32, align 4
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
  %x181 = alloca i32, align 4
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
  %x194 = alloca i32, align 4
  %x195 = alloca i32, align 4
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
  %x249 = alloca i32, align 4
  %x250 = alloca i32, align 4
  %x251 = alloca i32, align 4
  %x252 = alloca i32, align 4
  %x253 = alloca i32, align 4
  %x254 = alloca i32, align 4
  %x255 = alloca i32, align 4
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
  %x299 = alloca i8, align 1
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
  %x335 = alloca i8, align 1
  %x336 = alloca i32, align 4
  %x337 = alloca i8, align 1
  %x338 = alloca i32, align 4
  %x339 = alloca i8, align 1
  %x340 = alloca i32, align 4
  %x341 = alloca i8, align 1
  %x342 = alloca i32, align 4
  %x343 = alloca i8, align 1
  %x344 = alloca i32, align 4
  %x345 = alloca i8, align 1
  %x346 = alloca i32, align 4
  %x347 = alloca i8, align 1
  %x348 = alloca i32, align 4
  %x349 = alloca i8, align 1
  %x350 = alloca i32, align 4
  %x351 = alloca i8, align 1
  %x352 = alloca i32, align 4
  %x353 = alloca i8, align 1
  %x354 = alloca i32, align 4
  %x355 = alloca i8, align 1
  %x356 = alloca i32, align 4
  %x357 = alloca i8, align 1
  %x358 = alloca i32, align 4
  %x359 = alloca i8, align 1
  %x360 = alloca i32, align 4
  %x361 = alloca i32, align 4
  %x362 = alloca i32, align 4
  %x363 = alloca i32, align 4
  %x364 = alloca i32, align 4
  %x365 = alloca i32, align 4
  %x366 = alloca i32, align 4
  %x367 = alloca i32, align 4
  %x368 = alloca i32, align 4
  %x369 = alloca i32, align 4
  %x370 = alloca i32, align 4
  %x371 = alloca i32, align 4
  %x372 = alloca i32, align 4
  %x373 = alloca i32, align 4
  %x374 = alloca i32, align 4
  %x375 = alloca i32, align 4
  %x376 = alloca i32, align 4
  %x377 = alloca i8, align 1
  %x378 = alloca i32, align 4
  %x379 = alloca i8, align 1
  %x380 = alloca i32, align 4
  %x381 = alloca i8, align 1
  %x382 = alloca i32, align 4
  %x383 = alloca i8, align 1
  %x384 = alloca i32, align 4
  %x385 = alloca i8, align 1
  %x386 = alloca i32, align 4
  %x387 = alloca i8, align 1
  %x388 = alloca i32, align 4
  %x389 = alloca i8, align 1
  %x390 = alloca i32, align 4
  %x391 = alloca i8, align 1
  %x392 = alloca i32, align 4
  %x393 = alloca i8, align 1
  %x394 = alloca i32, align 4
  %x395 = alloca i8, align 1
  %x396 = alloca i32, align 4
  %x397 = alloca i8, align 1
  %x398 = alloca i32, align 4
  %x399 = alloca i8, align 1
  %x400 = alloca i32, align 4
  %x401 = alloca i8, align 1
  %x402 = alloca i32, align 4
  %x403 = alloca i8, align 1
  %x404 = alloca i32, align 4
  %x405 = alloca i8, align 1
  %x406 = alloca i32, align 4
  %x407 = alloca i8, align 1
  %x408 = alloca i32, align 4
  %x409 = alloca i8, align 1
  %x410 = alloca i32, align 4
  %x411 = alloca i8, align 1
  %x412 = alloca i32, align 4
  %x413 = alloca i8, align 1
  %x414 = alloca i32, align 4
  %x415 = alloca i8, align 1
  %x416 = alloca i32, align 4
  %x417 = alloca i8, align 1
  %x418 = alloca i32, align 4
  %x419 = alloca i8, align 1
  %x420 = alloca i32, align 4
  %x421 = alloca i32, align 4
  %x422 = alloca i32, align 4
  %x423 = alloca i32, align 4
  %x424 = alloca i32, align 4
  %x425 = alloca i32, align 4
  %x426 = alloca i32, align 4
  %x427 = alloca i32, align 4
  %x428 = alloca i32, align 4
  %x429 = alloca i32, align 4
  %x430 = alloca i32, align 4
  %x431 = alloca i32, align 4
  %x432 = alloca i32, align 4
  %x433 = alloca i32, align 4
  %x434 = alloca i32, align 4
  %x435 = alloca i32, align 4
  %x436 = alloca i32, align 4
  %x437 = alloca i8, align 1
  %x438 = alloca i32, align 4
  %x439 = alloca i8, align 1
  %x440 = alloca i32, align 4
  %x441 = alloca i8, align 1
  %x442 = alloca i32, align 4
  %x443 = alloca i8, align 1
  %x444 = alloca i32, align 4
  %x445 = alloca i8, align 1
  %x446 = alloca i32, align 4
  %x447 = alloca i8, align 1
  %x448 = alloca i32, align 4
  %x449 = alloca i8, align 1
  %x450 = alloca i32, align 4
  %x451 = alloca i8, align 1
  %x452 = alloca i32, align 4
  %x453 = alloca i8, align 1
  %x454 = alloca i32, align 4
  %x455 = alloca i8, align 1
  %x456 = alloca i32, align 4
  %x457 = alloca i8, align 1
  %x458 = alloca i32, align 4
  %x459 = alloca i8, align 1
  %x460 = alloca i32, align 4
  %x461 = alloca i8, align 1
  %x462 = alloca i32, align 4
  %x463 = alloca i8, align 1
  %x464 = alloca i32, align 4
  %x465 = alloca i8, align 1
  %x466 = alloca i32, align 4
  %x467 = alloca i8, align 1
  %x468 = alloca i32, align 4
  %x469 = alloca i8, align 1
  %x470 = alloca i32, align 4
  %x471 = alloca i8, align 1
  %x472 = alloca i32, align 4
  %x473 = alloca i8, align 1
  %x474 = alloca i32, align 4
  %x475 = alloca i8, align 1
  %x476 = alloca i32, align 4
  %x477 = alloca i8, align 1
  %x478 = alloca i32, align 4
  %x479 = alloca i8, align 1
  %x480 = alloca i32, align 4
  %x481 = alloca i8, align 1
  %x482 = alloca i32, align 4
  %x483 = alloca i32, align 4
  %x484 = alloca i32, align 4
  %x485 = alloca i32, align 4
  %x486 = alloca i32, align 4
  %x487 = alloca i32, align 4
  %x488 = alloca i32, align 4
  %x489 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef -301941681)
  %3 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -1)
  %4 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef -1125713235)
  %7 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %7, i32 noundef -1491624316)
  %8 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x14, ptr noundef %x15, i32 noundef %8, i32 noundef -205927742)
  %9 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x16, ptr noundef %x17, i32 noundef %9, i32 noundef -60611247)
  %10 = load i32, ptr %x17, align 4
  %11 = load i32, ptr %x14, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i32 noundef %10, i32 noundef %11)
  %12 = load i8, ptr %x19, align 1
  %13 = load i32, ptr %x15, align 4
  %14 = load i32, ptr %x12, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %12, i32 noundef %13, i32 noundef %14)
  %15 = load i8, ptr %x21, align 1
  %16 = load i32, ptr %x13, align 4
  %17 = load i32, ptr %x10, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %15, i32 noundef %16, i32 noundef %17)
  %18 = load i8, ptr %x23, align 1
  %19 = load i32, ptr %x11, align 4
  %20 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %18, i32 noundef %19, i32 noundef %20)
  %21 = load i8, ptr %x25, align 1
  %22 = load i32, ptr %x9, align 4
  %23 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %21, i32 noundef %22, i32 noundef %23)
  %24 = load i32, ptr %x1, align 4
  %25 = load i32, ptr %x16, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x29, align 1
  %27 = load i32, ptr %x18, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %26, i32 noundef 0, i32 noundef %27)
  %28 = load i8, ptr %x31, align 1
  %29 = load i32, ptr %x20, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %28, i32 noundef 0, i32 noundef %29)
  %30 = load i8, ptr %x33, align 1
  %31 = load i32, ptr %x22, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %30, i32 noundef 0, i32 noundef %31)
  %32 = load i8, ptr %x35, align 1
  %33 = load i32, ptr %x24, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %32, i32 noundef 0, i32 noundef %33)
  %34 = load i8, ptr %x37, align 1
  %35 = load i32, ptr %x26, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %34, i32 noundef 0, i32 noundef %35)
  %36 = load i8, ptr %x39, align 1
  %37 = load i8, ptr %x27, align 1
  %conv = zext i8 %37 to i32
  %38 = load i32, ptr %x7, align 4
  %add = add i32 %conv, %38
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %36, i32 noundef 0, i32 noundef %add)
  %39 = load i8, ptr %x41, align 1
  %40 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %39, i32 noundef 0, i32 noundef %40)
  %41 = load i32, ptr %x30, align 4
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %42, i64 1
  %43 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext 0, i32 noundef %41, i32 noundef %43)
  %44 = load i8, ptr %x45, align 1
  %45 = load i32, ptr %x32, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %44, i32 noundef %45, i32 noundef 0)
  %46 = load i8, ptr %x47, align 1
  %47 = load i32, ptr %x34, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %46, i32 noundef %47, i32 noundef 0)
  %48 = load i8, ptr %x49, align 1
  %49 = load i32, ptr %x36, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %48, i32 noundef %49, i32 noundef 0)
  %50 = load i8, ptr %x51, align 1
  %51 = load i32, ptr %x38, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %50, i32 noundef %51, i32 noundef 0)
  %52 = load i8, ptr %x53, align 1
  %53 = load i32, ptr %x40, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %52, i32 noundef %53, i32 noundef 0)
  %54 = load i8, ptr %x55, align 1
  %55 = load i32, ptr %x42, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %54, i32 noundef %55, i32 noundef 0)
  %56 = load i8, ptr %x57, align 1
  %57 = load i8, ptr %x43, align 1
  %conv2 = zext i8 %57 to i32
  %58 = load i32, ptr %x5, align 4
  %add3 = add i32 %conv2, %58
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %56, i32 noundef %add3, i32 noundef 0)
  %59 = load i32, ptr %x44, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x60, ptr noundef %x61, i32 noundef %59, i32 noundef -301941681)
  %60 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x62, ptr noundef %x63, i32 noundef %60, i32 noundef -1)
  %61 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x64, ptr noundef %x65, i32 noundef %61, i32 noundef -1)
  %62 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %62, i32 noundef -1)
  %63 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %63, i32 noundef -1125713235)
  %64 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %64, i32 noundef -1491624316)
  %65 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %65, i32 noundef -205927742)
  %66 = load i32, ptr %x60, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %66, i32 noundef -60611247)
  %67 = load i32, ptr %x75, align 4
  %68 = load i32, ptr %x72, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i32 noundef %67, i32 noundef %68)
  %69 = load i8, ptr %x77, align 1
  %70 = load i32, ptr %x73, align 4
  %71 = load i32, ptr %x70, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %69, i32 noundef %70, i32 noundef %71)
  %72 = load i8, ptr %x79, align 1
  %73 = load i32, ptr %x71, align 4
  %74 = load i32, ptr %x68, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %72, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x81, align 1
  %76 = load i32, ptr %x69, align 4
  %77 = load i32, ptr %x66, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x83, align 1
  %79 = load i32, ptr %x67, align 4
  %80 = load i32, ptr %x64, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80)
  %81 = load i32, ptr %x44, align 4
  %82 = load i32, ptr %x74, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x87, align 1
  %84 = load i32, ptr %x46, align 4
  %85 = load i32, ptr %x76, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x89, align 1
  %87 = load i32, ptr %x48, align 4
  %88 = load i32, ptr %x78, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x91, align 1
  %90 = load i32, ptr %x50, align 4
  %91 = load i32, ptr %x80, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x93, align 1
  %93 = load i32, ptr %x52, align 4
  %94 = load i32, ptr %x82, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %92, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x95, align 1
  %96 = load i32, ptr %x54, align 4
  %97 = load i32, ptr %x84, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %95, i32 noundef %96, i32 noundef %97)
  %98 = load i8, ptr %x97, align 1
  %99 = load i32, ptr %x56, align 4
  %100 = load i8, ptr %x85, align 1
  %conv4 = zext i8 %100 to i32
  %101 = load i32, ptr %x65, align 4
  %add5 = add i32 %conv4, %101
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %98, i32 noundef %99, i32 noundef %add5)
  %102 = load i8, ptr %x99, align 1
  %103 = load i32, ptr %x58, align 4
  %104 = load i32, ptr %x62, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %102, i32 noundef %103, i32 noundef %104)
  %105 = load i8, ptr %x101, align 1
  %106 = load i8, ptr %x59, align 1
  %conv6 = zext i8 %106 to i32
  %107 = load i32, ptr %x63, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %105, i32 noundef %conv6, i32 noundef %107)
  %108 = load i32, ptr %x88, align 4
  %109 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %109, i64 2
  %110 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext 0, i32 noundef %108, i32 noundef %110)
  %111 = load i8, ptr %x105, align 1
  %112 = load i32, ptr %x90, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %111, i32 noundef %112, i32 noundef 0)
  %113 = load i8, ptr %x107, align 1
  %114 = load i32, ptr %x92, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %113, i32 noundef %114, i32 noundef 0)
  %115 = load i8, ptr %x109, align 1
  %116 = load i32, ptr %x94, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %115, i32 noundef %116, i32 noundef 0)
  %117 = load i8, ptr %x111, align 1
  %118 = load i32, ptr %x96, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %117, i32 noundef %118, i32 noundef 0)
  %119 = load i8, ptr %x113, align 1
  %120 = load i32, ptr %x98, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %119, i32 noundef %120, i32 noundef 0)
  %121 = load i8, ptr %x115, align 1
  %122 = load i32, ptr %x100, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %121, i32 noundef %122, i32 noundef 0)
  %123 = load i8, ptr %x117, align 1
  %124 = load i32, ptr %x102, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %123, i32 noundef %124, i32 noundef 0)
  %125 = load i32, ptr %x104, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x120, ptr noundef %x121, i32 noundef %125, i32 noundef -301941681)
  %126 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x122, ptr noundef %x123, i32 noundef %126, i32 noundef -1)
  %127 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x124, ptr noundef %x125, i32 noundef %127, i32 noundef -1)
  %128 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x126, ptr noundef %x127, i32 noundef %128, i32 noundef -1)
  %129 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x128, ptr noundef %x129, i32 noundef %129, i32 noundef -1125713235)
  %130 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x130, ptr noundef %x131, i32 noundef %130, i32 noundef -1491624316)
  %131 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x132, ptr noundef %x133, i32 noundef %131, i32 noundef -205927742)
  %132 = load i32, ptr %x120, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x134, ptr noundef %x135, i32 noundef %132, i32 noundef -60611247)
  %133 = load i32, ptr %x135, align 4
  %134 = load i32, ptr %x132, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext 0, i32 noundef %133, i32 noundef %134)
  %135 = load i8, ptr %x137, align 1
  %136 = load i32, ptr %x133, align 4
  %137 = load i32, ptr %x130, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %135, i32 noundef %136, i32 noundef %137)
  %138 = load i8, ptr %x139, align 1
  %139 = load i32, ptr %x131, align 4
  %140 = load i32, ptr %x128, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %138, i32 noundef %139, i32 noundef %140)
  %141 = load i8, ptr %x141, align 1
  %142 = load i32, ptr %x129, align 4
  %143 = load i32, ptr %x126, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143)
  %144 = load i8, ptr %x143, align 1
  %145 = load i32, ptr %x127, align 4
  %146 = load i32, ptr %x124, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %144, i32 noundef %145, i32 noundef %146)
  %147 = load i32, ptr %x104, align 4
  %148 = load i32, ptr %x134, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext 0, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x147, align 1
  %150 = load i32, ptr %x106, align 4
  %151 = load i32, ptr %x136, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i8, ptr %x149, align 1
  %153 = load i32, ptr %x108, align 4
  %154 = load i32, ptr %x138, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %152, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x151, align 1
  %156 = load i32, ptr %x110, align 4
  %157 = load i32, ptr %x140, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x153, align 1
  %159 = load i32, ptr %x112, align 4
  %160 = load i32, ptr %x142, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x155, align 1
  %162 = load i32, ptr %x114, align 4
  %163 = load i32, ptr %x144, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %163)
  %164 = load i8, ptr %x157, align 1
  %165 = load i32, ptr %x116, align 4
  %166 = load i8, ptr %x145, align 1
  %conv8 = zext i8 %166 to i32
  %167 = load i32, ptr %x125, align 4
  %add9 = add i32 %conv8, %167
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %164, i32 noundef %165, i32 noundef %add9)
  %168 = load i8, ptr %x159, align 1
  %169 = load i32, ptr %x118, align 4
  %170 = load i32, ptr %x122, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %168, i32 noundef %169, i32 noundef %170)
  %171 = load i8, ptr %x161, align 1
  %172 = load i8, ptr %x119, align 1
  %conv10 = zext i8 %172 to i32
  %173 = load i8, ptr %x103, align 1
  %conv11 = zext i8 %173 to i32
  %add12 = add i32 %conv10, %conv11
  %174 = load i32, ptr %x123, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %171, i32 noundef %add12, i32 noundef %174)
  %175 = load i32, ptr %x148, align 4
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %176, i64 3
  %177 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext 0, i32 noundef %175, i32 noundef %177)
  %178 = load i8, ptr %x165, align 1
  %179 = load i32, ptr %x150, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %178, i32 noundef %179, i32 noundef 0)
  %180 = load i8, ptr %x167, align 1
  %181 = load i32, ptr %x152, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %180, i32 noundef %181, i32 noundef 0)
  %182 = load i8, ptr %x169, align 1
  %183 = load i32, ptr %x154, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %182, i32 noundef %183, i32 noundef 0)
  %184 = load i8, ptr %x171, align 1
  %185 = load i32, ptr %x156, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %184, i32 noundef %185, i32 noundef 0)
  %186 = load i8, ptr %x173, align 1
  %187 = load i32, ptr %x158, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %186, i32 noundef %187, i32 noundef 0)
  %188 = load i8, ptr %x175, align 1
  %189 = load i32, ptr %x160, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %188, i32 noundef %189, i32 noundef 0)
  %190 = load i8, ptr %x177, align 1
  %191 = load i32, ptr %x162, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %190, i32 noundef %191, i32 noundef 0)
  %192 = load i32, ptr %x164, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x180, ptr noundef %x181, i32 noundef %192, i32 noundef -301941681)
  %193 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x182, ptr noundef %x183, i32 noundef %193, i32 noundef -1)
  %194 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x184, ptr noundef %x185, i32 noundef %194, i32 noundef -1)
  %195 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x186, ptr noundef %x187, i32 noundef %195, i32 noundef -1)
  %196 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x188, ptr noundef %x189, i32 noundef %196, i32 noundef -1125713235)
  %197 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x190, ptr noundef %x191, i32 noundef %197, i32 noundef -1491624316)
  %198 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x192, ptr noundef %x193, i32 noundef %198, i32 noundef -205927742)
  %199 = load i32, ptr %x180, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x194, ptr noundef %x195, i32 noundef %199, i32 noundef -60611247)
  %200 = load i32, ptr %x195, align 4
  %201 = load i32, ptr %x192, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext 0, i32 noundef %200, i32 noundef %201)
  %202 = load i8, ptr %x197, align 1
  %203 = load i32, ptr %x193, align 4
  %204 = load i32, ptr %x190, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %202, i32 noundef %203, i32 noundef %204)
  %205 = load i8, ptr %x199, align 1
  %206 = load i32, ptr %x191, align 4
  %207 = load i32, ptr %x188, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %205, i32 noundef %206, i32 noundef %207)
  %208 = load i8, ptr %x201, align 1
  %209 = load i32, ptr %x189, align 4
  %210 = load i32, ptr %x186, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %208, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x203, align 1
  %212 = load i32, ptr %x187, align 4
  %213 = load i32, ptr %x184, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %211, i32 noundef %212, i32 noundef %213)
  %214 = load i32, ptr %x164, align 4
  %215 = load i32, ptr %x194, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext 0, i32 noundef %214, i32 noundef %215)
  %216 = load i8, ptr %x207, align 1
  %217 = load i32, ptr %x166, align 4
  %218 = load i32, ptr %x196, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext %216, i32 noundef %217, i32 noundef %218)
  %219 = load i8, ptr %x209, align 1
  %220 = load i32, ptr %x168, align 4
  %221 = load i32, ptr %x198, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %219, i32 noundef %220, i32 noundef %221)
  %222 = load i8, ptr %x211, align 1
  %223 = load i32, ptr %x170, align 4
  %224 = load i32, ptr %x200, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x213, align 1
  %226 = load i32, ptr %x172, align 4
  %227 = load i32, ptr %x202, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i8, ptr %x215, align 1
  %229 = load i32, ptr %x174, align 4
  %230 = load i32, ptr %x204, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %228, i32 noundef %229, i32 noundef %230)
  %231 = load i8, ptr %x217, align 1
  %232 = load i32, ptr %x176, align 4
  %233 = load i8, ptr %x205, align 1
  %conv14 = zext i8 %233 to i32
  %234 = load i32, ptr %x185, align 4
  %add15 = add i32 %conv14, %234
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %231, i32 noundef %232, i32 noundef %add15)
  %235 = load i8, ptr %x219, align 1
  %236 = load i32, ptr %x178, align 4
  %237 = load i32, ptr %x182, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %235, i32 noundef %236, i32 noundef %237)
  %238 = load i8, ptr %x221, align 1
  %239 = load i8, ptr %x179, align 1
  %conv16 = zext i8 %239 to i32
  %240 = load i8, ptr %x163, align 1
  %conv17 = zext i8 %240 to i32
  %add18 = add i32 %conv16, %conv17
  %241 = load i32, ptr %x183, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %238, i32 noundef %add18, i32 noundef %241)
  %242 = load i32, ptr %x208, align 4
  %243 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %243, i64 4
  %244 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext 0, i32 noundef %242, i32 noundef %244)
  %245 = load i8, ptr %x225, align 1
  %246 = load i32, ptr %x210, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %245, i32 noundef %246, i32 noundef 0)
  %247 = load i8, ptr %x227, align 1
  %248 = load i32, ptr %x212, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %247, i32 noundef %248, i32 noundef 0)
  %249 = load i8, ptr %x229, align 1
  %250 = load i32, ptr %x214, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %249, i32 noundef %250, i32 noundef 0)
  %251 = load i8, ptr %x231, align 1
  %252 = load i32, ptr %x216, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %251, i32 noundef %252, i32 noundef 0)
  %253 = load i8, ptr %x233, align 1
  %254 = load i32, ptr %x218, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %253, i32 noundef %254, i32 noundef 0)
  %255 = load i8, ptr %x235, align 1
  %256 = load i32, ptr %x220, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %255, i32 noundef %256, i32 noundef 0)
  %257 = load i8, ptr %x237, align 1
  %258 = load i32, ptr %x222, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %257, i32 noundef %258, i32 noundef 0)
  %259 = load i32, ptr %x224, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x240, ptr noundef %x241, i32 noundef %259, i32 noundef -301941681)
  %260 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x242, ptr noundef %x243, i32 noundef %260, i32 noundef -1)
  %261 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x244, ptr noundef %x245, i32 noundef %261, i32 noundef -1)
  %262 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x246, ptr noundef %x247, i32 noundef %262, i32 noundef -1)
  %263 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x248, ptr noundef %x249, i32 noundef %263, i32 noundef -1125713235)
  %264 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x250, ptr noundef %x251, i32 noundef %264, i32 noundef -1491624316)
  %265 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x252, ptr noundef %x253, i32 noundef %265, i32 noundef -205927742)
  %266 = load i32, ptr %x240, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x254, ptr noundef %x255, i32 noundef %266, i32 noundef -60611247)
  %267 = load i32, ptr %x255, align 4
  %268 = load i32, ptr %x252, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext 0, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x257, align 1
  %270 = load i32, ptr %x253, align 4
  %271 = load i32, ptr %x250, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x259, align 1
  %273 = load i32, ptr %x251, align 4
  %274 = load i32, ptr %x248, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x261, align 1
  %276 = load i32, ptr %x249, align 4
  %277 = load i32, ptr %x246, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x263, align 1
  %279 = load i32, ptr %x247, align 4
  %280 = load i32, ptr %x244, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i32, ptr %x224, align 4
  %282 = load i32, ptr %x254, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext 0, i32 noundef %281, i32 noundef %282)
  %283 = load i8, ptr %x267, align 1
  %284 = load i32, ptr %x226, align 4
  %285 = load i32, ptr %x256, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %283, i32 noundef %284, i32 noundef %285)
  %286 = load i8, ptr %x269, align 1
  %287 = load i32, ptr %x228, align 4
  %288 = load i32, ptr %x258, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x271, align 1
  %290 = load i32, ptr %x230, align 4
  %291 = load i32, ptr %x260, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x273, align 1
  %293 = load i32, ptr %x232, align 4
  %294 = load i32, ptr %x262, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x275, align 1
  %296 = load i32, ptr %x234, align 4
  %297 = load i32, ptr %x264, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x277, align 1
  %299 = load i32, ptr %x236, align 4
  %300 = load i8, ptr %x265, align 1
  %conv20 = zext i8 %300 to i32
  %301 = load i32, ptr %x245, align 4
  %add21 = add i32 %conv20, %301
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %add21)
  %302 = load i8, ptr %x279, align 1
  %303 = load i32, ptr %x238, align 4
  %304 = load i32, ptr %x242, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %302, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x281, align 1
  %306 = load i8, ptr %x239, align 1
  %conv22 = zext i8 %306 to i32
  %307 = load i8, ptr %x223, align 1
  %conv23 = zext i8 %307 to i32
  %add24 = add i32 %conv22, %conv23
  %308 = load i32, ptr %x243, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %305, i32 noundef %add24, i32 noundef %308)
  %309 = load i32, ptr %x268, align 4
  %310 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %310, i64 5
  %311 = load i32, ptr %arrayidx25, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext 0, i32 noundef %309, i32 noundef %311)
  %312 = load i8, ptr %x285, align 1
  %313 = load i32, ptr %x270, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %312, i32 noundef %313, i32 noundef 0)
  %314 = load i8, ptr %x287, align 1
  %315 = load i32, ptr %x272, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %314, i32 noundef %315, i32 noundef 0)
  %316 = load i8, ptr %x289, align 1
  %317 = load i32, ptr %x274, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %316, i32 noundef %317, i32 noundef 0)
  %318 = load i8, ptr %x291, align 1
  %319 = load i32, ptr %x276, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %318, i32 noundef %319, i32 noundef 0)
  %320 = load i8, ptr %x293, align 1
  %321 = load i32, ptr %x278, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %320, i32 noundef %321, i32 noundef 0)
  %322 = load i8, ptr %x295, align 1
  %323 = load i32, ptr %x280, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %322, i32 noundef %323, i32 noundef 0)
  %324 = load i8, ptr %x297, align 1
  %325 = load i32, ptr %x282, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %324, i32 noundef %325, i32 noundef 0)
  %326 = load i32, ptr %x284, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x300, ptr noundef %x301, i32 noundef %326, i32 noundef -301941681)
  %327 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x302, ptr noundef %x303, i32 noundef %327, i32 noundef -1)
  %328 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x304, ptr noundef %x305, i32 noundef %328, i32 noundef -1)
  %329 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x306, ptr noundef %x307, i32 noundef %329, i32 noundef -1)
  %330 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x308, ptr noundef %x309, i32 noundef %330, i32 noundef -1125713235)
  %331 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x310, ptr noundef %x311, i32 noundef %331, i32 noundef -1491624316)
  %332 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x312, ptr noundef %x313, i32 noundef %332, i32 noundef -205927742)
  %333 = load i32, ptr %x300, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x314, ptr noundef %x315, i32 noundef %333, i32 noundef -60611247)
  %334 = load i32, ptr %x315, align 4
  %335 = load i32, ptr %x312, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext 0, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x317, align 1
  %337 = load i32, ptr %x313, align 4
  %338 = load i32, ptr %x310, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x319, align 1
  %340 = load i32, ptr %x311, align 4
  %341 = load i32, ptr %x308, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x321, align 1
  %343 = load i32, ptr %x309, align 4
  %344 = load i32, ptr %x306, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x323, align 1
  %346 = load i32, ptr %x307, align 4
  %347 = load i32, ptr %x304, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i32, ptr %x284, align 4
  %349 = load i32, ptr %x314, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext 0, i32 noundef %348, i32 noundef %349)
  %350 = load i8, ptr %x327, align 1
  %351 = load i32, ptr %x286, align 4
  %352 = load i32, ptr %x316, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %350, i32 noundef %351, i32 noundef %352)
  %353 = load i8, ptr %x329, align 1
  %354 = load i32, ptr %x288, align 4
  %355 = load i32, ptr %x318, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %353, i32 noundef %354, i32 noundef %355)
  %356 = load i8, ptr %x331, align 1
  %357 = load i32, ptr %x290, align 4
  %358 = load i32, ptr %x320, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %356, i32 noundef %357, i32 noundef %358)
  %359 = load i8, ptr %x333, align 1
  %360 = load i32, ptr %x292, align 4
  %361 = load i32, ptr %x322, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %359, i32 noundef %360, i32 noundef %361)
  %362 = load i8, ptr %x335, align 1
  %363 = load i32, ptr %x294, align 4
  %364 = load i32, ptr %x324, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %362, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x337, align 1
  %366 = load i32, ptr %x296, align 4
  %367 = load i8, ptr %x325, align 1
  %conv26 = zext i8 %367 to i32
  %368 = load i32, ptr %x305, align 4
  %add27 = add i32 %conv26, %368
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %add27)
  %369 = load i8, ptr %x339, align 1
  %370 = load i32, ptr %x298, align 4
  %371 = load i32, ptr %x302, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %369, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x341, align 1
  %373 = load i8, ptr %x299, align 1
  %conv28 = zext i8 %373 to i32
  %374 = load i8, ptr %x283, align 1
  %conv29 = zext i8 %374 to i32
  %add30 = add i32 %conv28, %conv29
  %375 = load i32, ptr %x303, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x342, ptr noundef %x343, i8 noundef zeroext %372, i32 noundef %add30, i32 noundef %375)
  %376 = load i32, ptr %x328, align 4
  %377 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %377, i64 6
  %378 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x344, ptr noundef %x345, i8 noundef zeroext 0, i32 noundef %376, i32 noundef %378)
  %379 = load i8, ptr %x345, align 1
  %380 = load i32, ptr %x330, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x346, ptr noundef %x347, i8 noundef zeroext %379, i32 noundef %380, i32 noundef 0)
  %381 = load i8, ptr %x347, align 1
  %382 = load i32, ptr %x332, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext %381, i32 noundef %382, i32 noundef 0)
  %383 = load i8, ptr %x349, align 1
  %384 = load i32, ptr %x334, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %383, i32 noundef %384, i32 noundef 0)
  %385 = load i8, ptr %x351, align 1
  %386 = load i32, ptr %x336, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %385, i32 noundef %386, i32 noundef 0)
  %387 = load i8, ptr %x353, align 1
  %388 = load i32, ptr %x338, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %387, i32 noundef %388, i32 noundef 0)
  %389 = load i8, ptr %x355, align 1
  %390 = load i32, ptr %x340, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %389, i32 noundef %390, i32 noundef 0)
  %391 = load i8, ptr %x357, align 1
  %392 = load i32, ptr %x342, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext %391, i32 noundef %392, i32 noundef 0)
  %393 = load i32, ptr %x344, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x360, ptr noundef %x361, i32 noundef %393, i32 noundef -301941681)
  %394 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x362, ptr noundef %x363, i32 noundef %394, i32 noundef -1)
  %395 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x364, ptr noundef %x365, i32 noundef %395, i32 noundef -1)
  %396 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x366, ptr noundef %x367, i32 noundef %396, i32 noundef -1)
  %397 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x368, ptr noundef %x369, i32 noundef %397, i32 noundef -1125713235)
  %398 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x370, ptr noundef %x371, i32 noundef %398, i32 noundef -1491624316)
  %399 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x372, ptr noundef %x373, i32 noundef %399, i32 noundef -205927742)
  %400 = load i32, ptr %x360, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x374, ptr noundef %x375, i32 noundef %400, i32 noundef -60611247)
  %401 = load i32, ptr %x375, align 4
  %402 = load i32, ptr %x372, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext 0, i32 noundef %401, i32 noundef %402)
  %403 = load i8, ptr %x377, align 1
  %404 = load i32, ptr %x373, align 4
  %405 = load i32, ptr %x370, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %403, i32 noundef %404, i32 noundef %405)
  %406 = load i8, ptr %x379, align 1
  %407 = load i32, ptr %x371, align 4
  %408 = load i32, ptr %x368, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext %406, i32 noundef %407, i32 noundef %408)
  %409 = load i8, ptr %x381, align 1
  %410 = load i32, ptr %x369, align 4
  %411 = load i32, ptr %x366, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %409, i32 noundef %410, i32 noundef %411)
  %412 = load i8, ptr %x383, align 1
  %413 = load i32, ptr %x367, align 4
  %414 = load i32, ptr %x364, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %412, i32 noundef %413, i32 noundef %414)
  %415 = load i32, ptr %x344, align 4
  %416 = load i32, ptr %x374, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext 0, i32 noundef %415, i32 noundef %416)
  %417 = load i8, ptr %x387, align 1
  %418 = load i32, ptr %x346, align 4
  %419 = load i32, ptr %x376, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %417, i32 noundef %418, i32 noundef %419)
  %420 = load i8, ptr %x389, align 1
  %421 = load i32, ptr %x348, align 4
  %422 = load i32, ptr %x378, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %420, i32 noundef %421, i32 noundef %422)
  %423 = load i8, ptr %x391, align 1
  %424 = load i32, ptr %x350, align 4
  %425 = load i32, ptr %x380, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %423, i32 noundef %424, i32 noundef %425)
  %426 = load i8, ptr %x393, align 1
  %427 = load i32, ptr %x352, align 4
  %428 = load i32, ptr %x382, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x394, ptr noundef %x395, i8 noundef zeroext %426, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x395, align 1
  %430 = load i32, ptr %x354, align 4
  %431 = load i32, ptr %x384, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x396, ptr noundef %x397, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x397, align 1
  %433 = load i32, ptr %x356, align 4
  %434 = load i8, ptr %x385, align 1
  %conv32 = zext i8 %434 to i32
  %435 = load i32, ptr %x365, align 4
  %add33 = add i32 %conv32, %435
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x398, ptr noundef %x399, i8 noundef zeroext %432, i32 noundef %433, i32 noundef %add33)
  %436 = load i8, ptr %x399, align 1
  %437 = load i32, ptr %x358, align 4
  %438 = load i32, ptr %x362, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x400, ptr noundef %x401, i8 noundef zeroext %436, i32 noundef %437, i32 noundef %438)
  %439 = load i8, ptr %x401, align 1
  %440 = load i8, ptr %x359, align 1
  %conv34 = zext i8 %440 to i32
  %441 = load i8, ptr %x343, align 1
  %conv35 = zext i8 %441 to i32
  %add36 = add i32 %conv34, %conv35
  %442 = load i32, ptr %x363, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x402, ptr noundef %x403, i8 noundef zeroext %439, i32 noundef %add36, i32 noundef %442)
  %443 = load i32, ptr %x388, align 4
  %444 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %444, i64 7
  %445 = load i32, ptr %arrayidx37, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x404, ptr noundef %x405, i8 noundef zeroext 0, i32 noundef %443, i32 noundef %445)
  %446 = load i8, ptr %x405, align 1
  %447 = load i32, ptr %x390, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext %446, i32 noundef %447, i32 noundef 0)
  %448 = load i8, ptr %x407, align 1
  %449 = load i32, ptr %x392, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %448, i32 noundef %449, i32 noundef 0)
  %450 = load i8, ptr %x409, align 1
  %451 = load i32, ptr %x394, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %450, i32 noundef %451, i32 noundef 0)
  %452 = load i8, ptr %x411, align 1
  %453 = load i32, ptr %x396, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %452, i32 noundef %453, i32 noundef 0)
  %454 = load i8, ptr %x413, align 1
  %455 = load i32, ptr %x398, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %454, i32 noundef %455, i32 noundef 0)
  %456 = load i8, ptr %x415, align 1
  %457 = load i32, ptr %x400, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %456, i32 noundef %457, i32 noundef 0)
  %458 = load i8, ptr %x417, align 1
  %459 = load i32, ptr %x402, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %458, i32 noundef %459, i32 noundef 0)
  %460 = load i32, ptr %x404, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x420, ptr noundef %x421, i32 noundef %460, i32 noundef -301941681)
  %461 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x422, ptr noundef %x423, i32 noundef %461, i32 noundef -1)
  %462 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x424, ptr noundef %x425, i32 noundef %462, i32 noundef -1)
  %463 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x426, ptr noundef %x427, i32 noundef %463, i32 noundef -1)
  %464 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x428, ptr noundef %x429, i32 noundef %464, i32 noundef -1125713235)
  %465 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x430, ptr noundef %x431, i32 noundef %465, i32 noundef -1491624316)
  %466 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x432, ptr noundef %x433, i32 noundef %466, i32 noundef -205927742)
  %467 = load i32, ptr %x420, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x434, ptr noundef %x435, i32 noundef %467, i32 noundef -60611247)
  %468 = load i32, ptr %x435, align 4
  %469 = load i32, ptr %x432, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext 0, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x437, align 1
  %471 = load i32, ptr %x433, align 4
  %472 = load i32, ptr %x430, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x439, align 1
  %474 = load i32, ptr %x431, align 4
  %475 = load i32, ptr %x428, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x441, align 1
  %477 = load i32, ptr %x429, align 4
  %478 = load i32, ptr %x426, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x443, align 1
  %480 = load i32, ptr %x427, align 4
  %481 = load i32, ptr %x424, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i32, ptr %x404, align 4
  %483 = load i32, ptr %x434, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext 0, i32 noundef %482, i32 noundef %483)
  %484 = load i8, ptr %x447, align 1
  %485 = load i32, ptr %x406, align 4
  %486 = load i32, ptr %x436, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %484, i32 noundef %485, i32 noundef %486)
  %487 = load i8, ptr %x449, align 1
  %488 = load i32, ptr %x408, align 4
  %489 = load i32, ptr %x438, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %487, i32 noundef %488, i32 noundef %489)
  %490 = load i8, ptr %x451, align 1
  %491 = load i32, ptr %x410, align 4
  %492 = load i32, ptr %x440, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %490, i32 noundef %491, i32 noundef %492)
  %493 = load i8, ptr %x453, align 1
  %494 = load i32, ptr %x412, align 4
  %495 = load i32, ptr %x442, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %493, i32 noundef %494, i32 noundef %495)
  %496 = load i8, ptr %x455, align 1
  %497 = load i32, ptr %x414, align 4
  %498 = load i32, ptr %x444, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %496, i32 noundef %497, i32 noundef %498)
  %499 = load i8, ptr %x457, align 1
  %500 = load i32, ptr %x416, align 4
  %501 = load i8, ptr %x445, align 1
  %conv38 = zext i8 %501 to i32
  %502 = load i32, ptr %x425, align 4
  %add39 = add i32 %conv38, %502
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %499, i32 noundef %500, i32 noundef %add39)
  %503 = load i8, ptr %x459, align 1
  %504 = load i32, ptr %x418, align 4
  %505 = load i32, ptr %x422, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %503, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x461, align 1
  %507 = load i8, ptr %x419, align 1
  %conv40 = zext i8 %507 to i32
  %508 = load i8, ptr %x403, align 1
  %conv41 = zext i8 %508 to i32
  %add42 = add i32 %conv40, %conv41
  %509 = load i32, ptr %x423, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %506, i32 noundef %add42, i32 noundef %509)
  %510 = load i32, ptr %x448, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext 0, i32 noundef %510, i32 noundef -60611247)
  %511 = load i8, ptr %x465, align 1
  %512 = load i32, ptr %x450, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %511, i32 noundef %512, i32 noundef -205927742)
  %513 = load i8, ptr %x467, align 1
  %514 = load i32, ptr %x452, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x468, ptr noundef %x469, i8 noundef zeroext %513, i32 noundef %514, i32 noundef -1491624316)
  %515 = load i8, ptr %x469, align 1
  %516 = load i32, ptr %x454, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x470, ptr noundef %x471, i8 noundef zeroext %515, i32 noundef %516, i32 noundef -1125713235)
  %517 = load i8, ptr %x471, align 1
  %518 = load i32, ptr %x456, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x472, ptr noundef %x473, i8 noundef zeroext %517, i32 noundef %518, i32 noundef -1)
  %519 = load i8, ptr %x473, align 1
  %520 = load i32, ptr %x458, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x474, ptr noundef %x475, i8 noundef zeroext %519, i32 noundef %520, i32 noundef -1)
  %521 = load i8, ptr %x475, align 1
  %522 = load i32, ptr %x460, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x476, ptr noundef %x477, i8 noundef zeroext %521, i32 noundef %522, i32 noundef 0)
  %523 = load i8, ptr %x477, align 1
  %524 = load i32, ptr %x462, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x478, ptr noundef %x479, i8 noundef zeroext %523, i32 noundef %524, i32 noundef -1)
  %525 = load i8, ptr %x479, align 1
  %526 = load i8, ptr %x463, align 1
  %conv43 = zext i8 %526 to i32
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext %525, i32 noundef %conv43, i32 noundef 0)
  %527 = load i8, ptr %x481, align 1
  %528 = load i32, ptr %x464, align 4
  %529 = load i32, ptr %x448, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x482, i8 noundef zeroext %527, i32 noundef %528, i32 noundef %529)
  %530 = load i8, ptr %x481, align 1
  %531 = load i32, ptr %x466, align 4
  %532 = load i32, ptr %x450, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x483, i8 noundef zeroext %530, i32 noundef %531, i32 noundef %532)
  %533 = load i8, ptr %x481, align 1
  %534 = load i32, ptr %x468, align 4
  %535 = load i32, ptr %x452, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x484, i8 noundef zeroext %533, i32 noundef %534, i32 noundef %535)
  %536 = load i8, ptr %x481, align 1
  %537 = load i32, ptr %x470, align 4
  %538 = load i32, ptr %x454, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x485, i8 noundef zeroext %536, i32 noundef %537, i32 noundef %538)
  %539 = load i8, ptr %x481, align 1
  %540 = load i32, ptr %x472, align 4
  %541 = load i32, ptr %x456, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x486, i8 noundef zeroext %539, i32 noundef %540, i32 noundef %541)
  %542 = load i8, ptr %x481, align 1
  %543 = load i32, ptr %x474, align 4
  %544 = load i32, ptr %x458, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x487, i8 noundef zeroext %542, i32 noundef %543, i32 noundef %544)
  %545 = load i8, ptr %x481, align 1
  %546 = load i32, ptr %x476, align 4
  %547 = load i32, ptr %x460, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x488, i8 noundef zeroext %545, i32 noundef %546, i32 noundef %547)
  %548 = load i8, ptr %x481, align 1
  %549 = load i32, ptr %x478, align 4
  %550 = load i32, ptr %x462, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x489, i8 noundef zeroext %548, i32 noundef %549, i32 noundef %550)
  %551 = load i32, ptr %x482, align 4
  %552 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %552, i64 0
  store i32 %551, ptr %arrayidx44, align 4
  %553 = load i32, ptr %x483, align 4
  %554 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %554, i64 1
  store i32 %553, ptr %arrayidx45, align 4
  %555 = load i32, ptr %x484, align 4
  %556 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %556, i64 2
  store i32 %555, ptr %arrayidx46, align 4
  %557 = load i32, ptr %x485, align 4
  %558 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %558, i64 3
  store i32 %557, ptr %arrayidx47, align 4
  %559 = load i32, ptr %x486, align 4
  %560 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %560, i64 4
  store i32 %559, ptr %arrayidx48, align 4
  %561 = load i32, ptr %x487, align 4
  %562 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %562, i64 5
  store i32 %561, ptr %arrayidx49, align 4
  %563 = load i32, ptr %x488, align 4
  %564 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %564, i64 6
  store i32 %563, ptr %arrayidx50, align 4
  %565 = load i32, ptr %x489, align 4
  %566 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %566, i64 7
  store i32 %565, ptr %arrayidx51, align 4
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
