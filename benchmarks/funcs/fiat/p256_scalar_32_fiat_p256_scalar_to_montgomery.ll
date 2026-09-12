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
define dso_local void @fiat_p256_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x19 = alloca i32, align 4
  %x20 = alloca i32, align 4
  %x21 = alloca i32, align 4
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i32, align 4
  %x26 = alloca i8, align 1
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i8, align 1
  %x35 = alloca i32, align 4
  %x36 = alloca i8, align 1
  %x37 = alloca i32, align 4
  %x38 = alloca i8, align 1
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
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
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
  %x84 = alloca i32, align 4
  %x85 = alloca i32, align 4
  %x86 = alloca i32, align 4
  %x87 = alloca i32, align 4
  %x88 = alloca i32, align 4
  %x89 = alloca i32, align 4
  %x90 = alloca i32, align 4
  %x91 = alloca i32, align 4
  %x92 = alloca i32, align 4
  %x93 = alloca i32, align 4
  %x94 = alloca i32, align 4
  %x95 = alloca i32, align 4
  %x96 = alloca i32, align 4
  %x97 = alloca i32, align 4
  %x98 = alloca i32, align 4
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
  %x122 = alloca i8, align 1
  %x123 = alloca i32, align 4
  %x124 = alloca i8, align 1
  %x125 = alloca i32, align 4
  %x126 = alloca i8, align 1
  %x127 = alloca i32, align 4
  %x128 = alloca i8, align 1
  %x129 = alloca i32, align 4
  %x130 = alloca i32, align 4
  %x131 = alloca i32, align 4
  %x132 = alloca i32, align 4
  %x133 = alloca i32, align 4
  %x134 = alloca i32, align 4
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
  %x174 = alloca i32, align 4
  %x175 = alloca i32, align 4
  %x176 = alloca i32, align 4
  %x177 = alloca i32, align 4
  %x178 = alloca i32, align 4
  %x179 = alloca i32, align 4
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
  %x190 = alloca i8, align 1
  %x191 = alloca i32, align 4
  %x192 = alloca i8, align 1
  %x193 = alloca i32, align 4
  %x194 = alloca i8, align 1
  %x195 = alloca i32, align 4
  %x196 = alloca i8, align 1
  %x197 = alloca i32, align 4
  %x198 = alloca i8, align 1
  %x199 = alloca i32, align 4
  %x200 = alloca i8, align 1
  %x201 = alloca i32, align 4
  %x202 = alloca i8, align 1
  %x203 = alloca i32, align 4
  %x204 = alloca i8, align 1
  %x205 = alloca i32, align 4
  %x206 = alloca i8, align 1
  %x207 = alloca i32, align 4
  %x208 = alloca i8, align 1
  %x209 = alloca i32, align 4
  %x210 = alloca i8, align 1
  %x211 = alloca i32, align 4
  %x212 = alloca i8, align 1
  %x213 = alloca i32, align 4
  %x214 = alloca i8, align 1
  %x215 = alloca i32, align 4
  %x216 = alloca i8, align 1
  %x217 = alloca i32, align 4
  %x218 = alloca i8, align 1
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
  %x231 = alloca i32, align 4
  %x232 = alloca i32, align 4
  %x233 = alloca i32, align 4
  %x234 = alloca i32, align 4
  %x235 = alloca i32, align 4
  %x236 = alloca i8, align 1
  %x237 = alloca i32, align 4
  %x238 = alloca i8, align 1
  %x239 = alloca i32, align 4
  %x240 = alloca i8, align 1
  %x241 = alloca i32, align 4
  %x242 = alloca i8, align 1
  %x243 = alloca i32, align 4
  %x244 = alloca i8, align 1
  %x245 = alloca i32, align 4
  %x246 = alloca i8, align 1
  %x247 = alloca i32, align 4
  %x248 = alloca i8, align 1
  %x249 = alloca i32, align 4
  %x250 = alloca i8, align 1
  %x251 = alloca i32, align 4
  %x252 = alloca i8, align 1
  %x253 = alloca i32, align 4
  %x254 = alloca i8, align 1
  %x255 = alloca i32, align 4
  %x256 = alloca i8, align 1
  %x257 = alloca i32, align 4
  %x258 = alloca i8, align 1
  %x259 = alloca i32, align 4
  %x260 = alloca i8, align 1
  %x261 = alloca i32, align 4
  %x262 = alloca i8, align 1
  %x263 = alloca i32, align 4
  %x264 = alloca i32, align 4
  %x265 = alloca i32, align 4
  %x266 = alloca i32, align 4
  %x267 = alloca i32, align 4
  %x268 = alloca i32, align 4
  %x269 = alloca i32, align 4
  %x270 = alloca i32, align 4
  %x271 = alloca i32, align 4
  %x272 = alloca i32, align 4
  %x273 = alloca i32, align 4
  %x274 = alloca i32, align 4
  %x275 = alloca i32, align 4
  %x276 = alloca i32, align 4
  %x277 = alloca i32, align 4
  %x278 = alloca i32, align 4
  %x279 = alloca i32, align 4
  %x280 = alloca i8, align 1
  %x281 = alloca i32, align 4
  %x282 = alloca i8, align 1
  %x283 = alloca i32, align 4
  %x284 = alloca i8, align 1
  %x285 = alloca i32, align 4
  %x286 = alloca i8, align 1
  %x287 = alloca i32, align 4
  %x288 = alloca i8, align 1
  %x289 = alloca i32, align 4
  %x290 = alloca i8, align 1
  %x291 = alloca i32, align 4
  %x292 = alloca i8, align 1
  %x293 = alloca i32, align 4
  %x294 = alloca i8, align 1
  %x295 = alloca i32, align 4
  %x296 = alloca i8, align 1
  %x297 = alloca i32, align 4
  %x298 = alloca i8, align 1
  %x299 = alloca i32, align 4
  %x300 = alloca i8, align 1
  %x301 = alloca i32, align 4
  %x302 = alloca i8, align 1
  %x303 = alloca i32, align 4
  %x304 = alloca i8, align 1
  %x305 = alloca i32, align 4
  %x306 = alloca i8, align 1
  %x307 = alloca i32, align 4
  %x308 = alloca i8, align 1
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
  %x326 = alloca i8, align 1
  %x327 = alloca i32, align 4
  %x328 = alloca i8, align 1
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
  %x348 = alloca i8, align 1
  %x349 = alloca i32, align 4
  %x350 = alloca i8, align 1
  %x351 = alloca i32, align 4
  %x352 = alloca i8, align 1
  %x353 = alloca i32, align 4
  %x354 = alloca i32, align 4
  %x355 = alloca i32, align 4
  %x356 = alloca i32, align 4
  %x357 = alloca i32, align 4
  %x358 = alloca i32, align 4
  %x359 = alloca i32, align 4
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
  %x370 = alloca i8, align 1
  %x371 = alloca i32, align 4
  %x372 = alloca i8, align 1
  %x373 = alloca i32, align 4
  %x374 = alloca i8, align 1
  %x375 = alloca i32, align 4
  %x376 = alloca i8, align 1
  %x377 = alloca i32, align 4
  %x378 = alloca i8, align 1
  %x379 = alloca i32, align 4
  %x380 = alloca i8, align 1
  %x381 = alloca i32, align 4
  %x382 = alloca i8, align 1
  %x383 = alloca i32, align 4
  %x384 = alloca i8, align 1
  %x385 = alloca i32, align 4
  %x386 = alloca i8, align 1
  %x387 = alloca i32, align 4
  %x388 = alloca i8, align 1
  %x389 = alloca i32, align 4
  %x390 = alloca i8, align 1
  %x391 = alloca i32, align 4
  %x392 = alloca i8, align 1
  %x393 = alloca i32, align 4
  %x394 = alloca i8, align 1
  %x395 = alloca i32, align 4
  %x396 = alloca i8, align 1
  %x397 = alloca i32, align 4
  %x398 = alloca i8, align 1
  %x399 = alloca i32, align 4
  %x400 = alloca i32, align 4
  %x401 = alloca i32, align 4
  %x402 = alloca i32, align 4
  %x403 = alloca i32, align 4
  %x404 = alloca i32, align 4
  %x405 = alloca i32, align 4
  %x406 = alloca i32, align 4
  %x407 = alloca i32, align 4
  %x408 = alloca i32, align 4
  %x409 = alloca i32, align 4
  %x410 = alloca i32, align 4
  %x411 = alloca i32, align 4
  %x412 = alloca i32, align 4
  %x413 = alloca i32, align 4
  %x414 = alloca i32, align 4
  %x415 = alloca i32, align 4
  %x416 = alloca i8, align 1
  %x417 = alloca i32, align 4
  %x418 = alloca i8, align 1
  %x419 = alloca i32, align 4
  %x420 = alloca i8, align 1
  %x421 = alloca i32, align 4
  %x422 = alloca i8, align 1
  %x423 = alloca i32, align 4
  %x424 = alloca i8, align 1
  %x425 = alloca i32, align 4
  %x426 = alloca i8, align 1
  %x427 = alloca i32, align 4
  %x428 = alloca i8, align 1
  %x429 = alloca i32, align 4
  %x430 = alloca i8, align 1
  %x431 = alloca i32, align 4
  %x432 = alloca i8, align 1
  %x433 = alloca i32, align 4
  %x434 = alloca i8, align 1
  %x435 = alloca i32, align 4
  %x436 = alloca i8, align 1
  %x437 = alloca i32, align 4
  %x438 = alloca i8, align 1
  %x439 = alloca i32, align 4
  %x440 = alloca i8, align 1
  %x441 = alloca i32, align 4
  %x442 = alloca i8, align 1
  %x443 = alloca i32, align 4
  %x444 = alloca i32, align 4
  %x445 = alloca i32, align 4
  %x446 = alloca i32, align 4
  %x447 = alloca i32, align 4
  %x448 = alloca i32, align 4
  %x449 = alloca i32, align 4
  %x450 = alloca i32, align 4
  %x451 = alloca i32, align 4
  %x452 = alloca i32, align 4
  %x453 = alloca i32, align 4
  %x454 = alloca i32, align 4
  %x455 = alloca i32, align 4
  %x456 = alloca i32, align 4
  %x457 = alloca i32, align 4
  %x458 = alloca i32, align 4
  %x459 = alloca i32, align 4
  %x460 = alloca i8, align 1
  %x461 = alloca i32, align 4
  %x462 = alloca i8, align 1
  %x463 = alloca i32, align 4
  %x464 = alloca i8, align 1
  %x465 = alloca i32, align 4
  %x466 = alloca i8, align 1
  %x467 = alloca i32, align 4
  %x468 = alloca i8, align 1
  %x469 = alloca i32, align 4
  %x470 = alloca i8, align 1
  %x471 = alloca i32, align 4
  %x472 = alloca i8, align 1
  %x473 = alloca i32, align 4
  %x474 = alloca i8, align 1
  %x475 = alloca i32, align 4
  %x476 = alloca i8, align 1
  %x477 = alloca i32, align 4
  %x478 = alloca i8, align 1
  %x479 = alloca i32, align 4
  %x480 = alloca i8, align 1
  %x481 = alloca i32, align 4
  %x482 = alloca i8, align 1
  %x483 = alloca i32, align 4
  %x484 = alloca i8, align 1
  %x485 = alloca i32, align 4
  %x486 = alloca i8, align 1
  %x487 = alloca i32, align 4
  %x488 = alloca i8, align 1
  %x489 = alloca i32, align 4
  %x490 = alloca i32, align 4
  %x491 = alloca i32, align 4
  %x492 = alloca i32, align 4
  %x493 = alloca i32, align 4
  %x494 = alloca i32, align 4
  %x495 = alloca i32, align 4
  %x496 = alloca i32, align 4
  %x497 = alloca i32, align 4
  %x498 = alloca i32, align 4
  %x499 = alloca i32, align 4
  %x500 = alloca i32, align 4
  %x501 = alloca i32, align 4
  %x502 = alloca i32, align 4
  %x503 = alloca i32, align 4
  %x504 = alloca i32, align 4
  %x505 = alloca i32, align 4
  %x506 = alloca i8, align 1
  %x507 = alloca i32, align 4
  %x508 = alloca i8, align 1
  %x509 = alloca i32, align 4
  %x510 = alloca i8, align 1
  %x511 = alloca i32, align 4
  %x512 = alloca i8, align 1
  %x513 = alloca i32, align 4
  %x514 = alloca i8, align 1
  %x515 = alloca i32, align 4
  %x516 = alloca i8, align 1
  %x517 = alloca i32, align 4
  %x518 = alloca i8, align 1
  %x519 = alloca i32, align 4
  %x520 = alloca i8, align 1
  %x521 = alloca i32, align 4
  %x522 = alloca i8, align 1
  %x523 = alloca i32, align 4
  %x524 = alloca i8, align 1
  %x525 = alloca i32, align 4
  %x526 = alloca i8, align 1
  %x527 = alloca i32, align 4
  %x528 = alloca i8, align 1
  %x529 = alloca i32, align 4
  %x530 = alloca i8, align 1
  %x531 = alloca i32, align 4
  %x532 = alloca i8, align 1
  %x533 = alloca i32, align 4
  %x534 = alloca i32, align 4
  %x535 = alloca i32, align 4
  %x536 = alloca i32, align 4
  %x537 = alloca i32, align 4
  %x538 = alloca i32, align 4
  %x539 = alloca i32, align 4
  %x540 = alloca i32, align 4
  %x541 = alloca i32, align 4
  %x542 = alloca i32, align 4
  %x543 = alloca i32, align 4
  %x544 = alloca i32, align 4
  %x545 = alloca i32, align 4
  %x546 = alloca i32, align 4
  %x547 = alloca i32, align 4
  %x548 = alloca i32, align 4
  %x549 = alloca i32, align 4
  %x550 = alloca i8, align 1
  %x551 = alloca i32, align 4
  %x552 = alloca i8, align 1
  %x553 = alloca i32, align 4
  %x554 = alloca i8, align 1
  %x555 = alloca i32, align 4
  %x556 = alloca i8, align 1
  %x557 = alloca i32, align 4
  %x558 = alloca i8, align 1
  %x559 = alloca i32, align 4
  %x560 = alloca i8, align 1
  %x561 = alloca i32, align 4
  %x562 = alloca i8, align 1
  %x563 = alloca i32, align 4
  %x564 = alloca i8, align 1
  %x565 = alloca i32, align 4
  %x566 = alloca i8, align 1
  %x567 = alloca i32, align 4
  %x568 = alloca i8, align 1
  %x569 = alloca i32, align 4
  %x570 = alloca i8, align 1
  %x571 = alloca i32, align 4
  %x572 = alloca i8, align 1
  %x573 = alloca i32, align 4
  %x574 = alloca i8, align 1
  %x575 = alloca i32, align 4
  %x576 = alloca i8, align 1
  %x577 = alloca i32, align 4
  %x578 = alloca i8, align 1
  %x579 = alloca i32, align 4
  %x580 = alloca i32, align 4
  %x581 = alloca i32, align 4
  %x582 = alloca i32, align 4
  %x583 = alloca i32, align 4
  %x584 = alloca i32, align 4
  %x585 = alloca i32, align 4
  %x586 = alloca i32, align 4
  %x587 = alloca i32, align 4
  %x588 = alloca i32, align 4
  %x589 = alloca i32, align 4
  %x590 = alloca i32, align 4
  %x591 = alloca i32, align 4
  %x592 = alloca i32, align 4
  %x593 = alloca i32, align 4
  %x594 = alloca i32, align 4
  %x595 = alloca i32, align 4
  %x596 = alloca i8, align 1
  %x597 = alloca i32, align 4
  %x598 = alloca i8, align 1
  %x599 = alloca i32, align 4
  %x600 = alloca i8, align 1
  %x601 = alloca i32, align 4
  %x602 = alloca i8, align 1
  %x603 = alloca i32, align 4
  %x604 = alloca i8, align 1
  %x605 = alloca i32, align 4
  %x606 = alloca i8, align 1
  %x607 = alloca i32, align 4
  %x608 = alloca i8, align 1
  %x609 = alloca i32, align 4
  %x610 = alloca i8, align 1
  %x611 = alloca i32, align 4
  %x612 = alloca i8, align 1
  %x613 = alloca i32, align 4
  %x614 = alloca i8, align 1
  %x615 = alloca i32, align 4
  %x616 = alloca i8, align 1
  %x617 = alloca i32, align 4
  %x618 = alloca i8, align 1
  %x619 = alloca i32, align 4
  %x620 = alloca i8, align 1
  %x621 = alloca i32, align 4
  %x622 = alloca i8, align 1
  %x623 = alloca i32, align 4
  %x624 = alloca i32, align 4
  %x625 = alloca i32, align 4
  %x626 = alloca i32, align 4
  %x627 = alloca i32, align 4
  %x628 = alloca i32, align 4
  %x629 = alloca i32, align 4
  %x630 = alloca i32, align 4
  %x631 = alloca i32, align 4
  %x632 = alloca i32, align 4
  %x633 = alloca i32, align 4
  %x634 = alloca i32, align 4
  %x635 = alloca i32, align 4
  %x636 = alloca i32, align 4
  %x637 = alloca i32, align 4
  %x638 = alloca i32, align 4
  %x639 = alloca i32, align 4
  %x640 = alloca i8, align 1
  %x641 = alloca i32, align 4
  %x642 = alloca i8, align 1
  %x643 = alloca i32, align 4
  %x644 = alloca i8, align 1
  %x645 = alloca i32, align 4
  %x646 = alloca i8, align 1
  %x647 = alloca i32, align 4
  %x648 = alloca i8, align 1
  %x649 = alloca i32, align 4
  %x650 = alloca i8, align 1
  %x651 = alloca i32, align 4
  %x652 = alloca i8, align 1
  %x653 = alloca i32, align 4
  %x654 = alloca i8, align 1
  %x655 = alloca i32, align 4
  %x656 = alloca i8, align 1
  %x657 = alloca i32, align 4
  %x658 = alloca i8, align 1
  %x659 = alloca i32, align 4
  %x660 = alloca i8, align 1
  %x661 = alloca i32, align 4
  %x662 = alloca i8, align 1
  %x663 = alloca i32, align 4
  %x664 = alloca i8, align 1
  %x665 = alloca i32, align 4
  %x666 = alloca i8, align 1
  %x667 = alloca i32, align 4
  %x668 = alloca i8, align 1
  %x669 = alloca i32, align 4
  %x670 = alloca i32, align 4
  %x671 = alloca i32, align 4
  %x672 = alloca i32, align 4
  %x673 = alloca i32, align 4
  %x674 = alloca i32, align 4
  %x675 = alloca i32, align 4
  %x676 = alloca i32, align 4
  %x677 = alloca i32, align 4
  %x678 = alloca i32, align 4
  %x679 = alloca i32, align 4
  %x680 = alloca i32, align 4
  %x681 = alloca i32, align 4
  %x682 = alloca i32, align 4
  %x683 = alloca i32, align 4
  %x684 = alloca i32, align 4
  %x685 = alloca i32, align 4
  %x686 = alloca i8, align 1
  %x687 = alloca i32, align 4
  %x688 = alloca i8, align 1
  %x689 = alloca i32, align 4
  %x690 = alloca i8, align 1
  %x691 = alloca i32, align 4
  %x692 = alloca i8, align 1
  %x693 = alloca i32, align 4
  %x694 = alloca i8, align 1
  %x695 = alloca i32, align 4
  %x696 = alloca i8, align 1
  %x697 = alloca i32, align 4
  %x698 = alloca i8, align 1
  %x699 = alloca i32, align 4
  %x700 = alloca i8, align 1
  %x701 = alloca i32, align 4
  %x702 = alloca i8, align 1
  %x703 = alloca i32, align 4
  %x704 = alloca i8, align 1
  %x705 = alloca i32, align 4
  %x706 = alloca i8, align 1
  %x707 = alloca i32, align 4
  %x708 = alloca i8, align 1
  %x709 = alloca i32, align 4
  %x710 = alloca i8, align 1
  %x711 = alloca i32, align 4
  %x712 = alloca i8, align 1
  %x713 = alloca i32, align 4
  %x714 = alloca i8, align 1
  %x715 = alloca i32, align 4
  %x716 = alloca i8, align 1
  %x717 = alloca i32, align 4
  %x718 = alloca i8, align 1
  %x719 = alloca i32, align 4
  %x720 = alloca i8, align 1
  %x721 = alloca i32, align 4
  %x722 = alloca i8, align 1
  %x723 = alloca i32, align 4
  %x724 = alloca i8, align 1
  %x725 = alloca i32, align 4
  %x726 = alloca i8, align 1
  %x727 = alloca i32, align 4
  %x728 = alloca i8, align 1
  %x729 = alloca i32, align 4
  %x730 = alloca i8, align 1
  %x731 = alloca i32, align 4
  %x732 = alloca i32, align 4
  %x733 = alloca i32, align 4
  %x734 = alloca i32, align 4
  %x735 = alloca i32, align 4
  %x736 = alloca i32, align 4
  %x737 = alloca i32, align 4
  %x738 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 2
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 3
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 4
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 5
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 6
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 7
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 0
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef 1726033300)
  %17 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %17, i32 noundef -203860448)
  %18 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %18, i32 noundef 675656249)
  %19 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %19, i32 noundef 728493145)
  %20 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %20, i32 noundef 1184463260)
  %21 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %21, i32 noundef 1237151654)
  %22 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %22, i32 noundef -2094773099)
  %23 = load i32, ptr %x8, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %23, i32 noundef -1099305310)
  %24 = load i32, ptr %x24, align 4
  %25 = load i32, ptr %x21, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x26, align 1
  %27 = load i32, ptr %x22, align 4
  %28 = load i32, ptr %x19, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x28, align 1
  %30 = load i32, ptr %x20, align 4
  %31 = load i32, ptr %x17, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x30, align 1
  %33 = load i32, ptr %x18, align 4
  %34 = load i32, ptr %x15, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %x32, align 1
  %36 = load i32, ptr %x16, align 4
  %37 = load i32, ptr %x13, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x34, align 1
  %39 = load i32, ptr %x14, align 4
  %40 = load i32, ptr %x11, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x36, align 1
  %42 = load i32, ptr %x12, align 4
  %43 = load i32, ptr %x9, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i32, ptr %x23, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %44, i32 noundef -301941681)
  %45 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %45, i32 noundef -1)
  %46 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x43, ptr noundef %x44, i32 noundef %46, i32 noundef -1)
  %47 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x45, ptr noundef %x46, i32 noundef %47, i32 noundef -1)
  %48 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x47, ptr noundef %x48, i32 noundef %48, i32 noundef -1125713235)
  %49 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x49, ptr noundef %x50, i32 noundef %49, i32 noundef -1491624316)
  %50 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x51, ptr noundef %x52, i32 noundef %50, i32 noundef -205927742)
  %51 = load i32, ptr %x39, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x53, ptr noundef %x54, i32 noundef %51, i32 noundef -60611247)
  %52 = load i32, ptr %x54, align 4
  %53 = load i32, ptr %x51, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext 0, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x56, align 1
  %55 = load i32, ptr %x52, align 4
  %56 = load i32, ptr %x49, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x58, align 1
  %58 = load i32, ptr %x50, align 4
  %59 = load i32, ptr %x47, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x60, align 1
  %61 = load i32, ptr %x48, align 4
  %62 = load i32, ptr %x45, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %60, i32 noundef %61, i32 noundef %62)
  %63 = load i8, ptr %x62, align 1
  %64 = load i32, ptr %x46, align 4
  %65 = load i32, ptr %x43, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %63, i32 noundef %64, i32 noundef %65)
  %66 = load i32, ptr %x23, align 4
  %67 = load i32, ptr %x53, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext 0, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x66, align 1
  %69 = load i32, ptr %x25, align 4
  %70 = load i32, ptr %x55, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x68, align 1
  %72 = load i32, ptr %x27, align 4
  %73 = load i32, ptr %x57, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %73)
  %74 = load i8, ptr %x70, align 1
  %75 = load i32, ptr %x29, align 4
  %76 = load i32, ptr %x59, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %74, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x72, align 1
  %78 = load i32, ptr %x31, align 4
  %79 = load i32, ptr %x61, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x74, align 1
  %81 = load i32, ptr %x33, align 4
  %82 = load i32, ptr %x63, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x76, align 1
  %84 = load i32, ptr %x35, align 4
  %85 = load i8, ptr %x64, align 1
  %conv = zext i8 %85 to i32
  %86 = load i32, ptr %x44, align 4
  %add = add i32 %conv, %86
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %add)
  %87 = load i8, ptr %x78, align 1
  %88 = load i32, ptr %x37, align 4
  %89 = load i32, ptr %x41, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x80, align 1
  %91 = load i8, ptr %x38, align 1
  %conv8 = zext i8 %91 to i32
  %92 = load i32, ptr %x10, align 4
  %add9 = add i32 %conv8, %92
  %93 = load i32, ptr %x42, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %90, i32 noundef %add9, i32 noundef %93)
  %94 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x83, ptr noundef %x84, i32 noundef %94, i32 noundef 1726033300)
  %95 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x85, ptr noundef %x86, i32 noundef %95, i32 noundef -203860448)
  %96 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x87, ptr noundef %x88, i32 noundef %96, i32 noundef 675656249)
  %97 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x89, ptr noundef %x90, i32 noundef %97, i32 noundef 728493145)
  %98 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x91, ptr noundef %x92, i32 noundef %98, i32 noundef 1184463260)
  %99 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x93, ptr noundef %x94, i32 noundef %99, i32 noundef 1237151654)
  %100 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x95, ptr noundef %x96, i32 noundef %100, i32 noundef -2094773099)
  %101 = load i32, ptr %x1, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x97, ptr noundef %x98, i32 noundef %101, i32 noundef -1099305310)
  %102 = load i32, ptr %x98, align 4
  %103 = load i32, ptr %x95, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext 0, i32 noundef %102, i32 noundef %103)
  %104 = load i8, ptr %x100, align 1
  %105 = load i32, ptr %x96, align 4
  %106 = load i32, ptr %x93, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %104, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x102, align 1
  %108 = load i32, ptr %x94, align 4
  %109 = load i32, ptr %x91, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %107, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x104, align 1
  %111 = load i32, ptr %x92, align 4
  %112 = load i32, ptr %x89, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x106, align 1
  %114 = load i32, ptr %x90, align 4
  %115 = load i32, ptr %x87, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %115)
  %116 = load i8, ptr %x108, align 1
  %117 = load i32, ptr %x88, align 4
  %118 = load i32, ptr %x85, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %118)
  %119 = load i8, ptr %x110, align 1
  %120 = load i32, ptr %x86, align 4
  %121 = load i32, ptr %x83, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %119, i32 noundef %120, i32 noundef %121)
  %122 = load i32, ptr %x67, align 4
  %123 = load i32, ptr %x97, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext 0, i32 noundef %122, i32 noundef %123)
  %124 = load i8, ptr %x114, align 1
  %125 = load i32, ptr %x69, align 4
  %126 = load i32, ptr %x99, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %124, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x116, align 1
  %128 = load i32, ptr %x71, align 4
  %129 = load i32, ptr %x101, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %127, i32 noundef %128, i32 noundef %129)
  %130 = load i8, ptr %x118, align 1
  %131 = load i32, ptr %x73, align 4
  %132 = load i32, ptr %x103, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %130, i32 noundef %131, i32 noundef %132)
  %133 = load i8, ptr %x120, align 1
  %134 = load i32, ptr %x75, align 4
  %135 = load i32, ptr %x105, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %133, i32 noundef %134, i32 noundef %135)
  %136 = load i8, ptr %x122, align 1
  %137 = load i32, ptr %x77, align 4
  %138 = load i32, ptr %x107, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %136, i32 noundef %137, i32 noundef %138)
  %139 = load i8, ptr %x124, align 1
  %140 = load i32, ptr %x79, align 4
  %141 = load i32, ptr %x109, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %139, i32 noundef %140, i32 noundef %141)
  %142 = load i8, ptr %x126, align 1
  %143 = load i32, ptr %x81, align 4
  %144 = load i32, ptr %x111, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %142, i32 noundef %143, i32 noundef %144)
  %145 = load i32, ptr %x113, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x129, ptr noundef %x130, i32 noundef %145, i32 noundef -301941681)
  %146 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x131, ptr noundef %x132, i32 noundef %146, i32 noundef -1)
  %147 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x133, ptr noundef %x134, i32 noundef %147, i32 noundef -1)
  %148 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %148, i32 noundef -1)
  %149 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %149, i32 noundef -1125713235)
  %150 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %150, i32 noundef -1491624316)
  %151 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %151, i32 noundef -205927742)
  %152 = load i32, ptr %x129, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %152, i32 noundef -60611247)
  %153 = load i32, ptr %x144, align 4
  %154 = load i32, ptr %x141, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext 0, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x146, align 1
  %156 = load i32, ptr %x142, align 4
  %157 = load i32, ptr %x139, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x148, align 1
  %159 = load i32, ptr %x140, align 4
  %160 = load i32, ptr %x137, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x150, align 1
  %162 = load i32, ptr %x138, align 4
  %163 = load i32, ptr %x135, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %163)
  %164 = load i8, ptr %x152, align 1
  %165 = load i32, ptr %x136, align 4
  %166 = load i32, ptr %x133, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %164, i32 noundef %165, i32 noundef %166)
  %167 = load i32, ptr %x113, align 4
  %168 = load i32, ptr %x143, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext 0, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x156, align 1
  %170 = load i32, ptr %x115, align 4
  %171 = load i32, ptr %x145, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x158, align 1
  %173 = load i32, ptr %x117, align 4
  %174 = load i32, ptr %x147, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x160, align 1
  %176 = load i32, ptr %x119, align 4
  %177 = load i32, ptr %x149, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i8, ptr %x162, align 1
  %179 = load i32, ptr %x121, align 4
  %180 = load i32, ptr %x151, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180)
  %181 = load i8, ptr %x164, align 1
  %182 = load i32, ptr %x123, align 4
  %183 = load i32, ptr %x153, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %181, i32 noundef %182, i32 noundef %183)
  %184 = load i8, ptr %x166, align 1
  %185 = load i32, ptr %x125, align 4
  %186 = load i8, ptr %x154, align 1
  %conv10 = zext i8 %186 to i32
  %187 = load i32, ptr %x134, align 4
  %add11 = add i32 %conv10, %187
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %184, i32 noundef %185, i32 noundef %add11)
  %188 = load i8, ptr %x168, align 1
  %189 = load i32, ptr %x127, align 4
  %190 = load i32, ptr %x131, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %188, i32 noundef %189, i32 noundef %190)
  %191 = load i8, ptr %x170, align 1
  %192 = load i8, ptr %x128, align 1
  %conv12 = zext i8 %192 to i32
  %193 = load i8, ptr %x82, align 1
  %conv13 = zext i8 %193 to i32
  %add14 = add i32 %conv12, %conv13
  %194 = load i8, ptr %x112, align 1
  %conv15 = zext i8 %194 to i32
  %195 = load i32, ptr %x84, align 4
  %add16 = add i32 %conv15, %195
  %add17 = add i32 %add14, %add16
  %196 = load i32, ptr %x132, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %191, i32 noundef %add17, i32 noundef %196)
  %197 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x173, ptr noundef %x174, i32 noundef %197, i32 noundef 1726033300)
  %198 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x175, ptr noundef %x176, i32 noundef %198, i32 noundef -203860448)
  %199 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x177, ptr noundef %x178, i32 noundef %199, i32 noundef 675656249)
  %200 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x179, ptr noundef %x180, i32 noundef %200, i32 noundef 728493145)
  %201 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x181, ptr noundef %x182, i32 noundef %201, i32 noundef 1184463260)
  %202 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x183, ptr noundef %x184, i32 noundef %202, i32 noundef 1237151654)
  %203 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x185, ptr noundef %x186, i32 noundef %203, i32 noundef -2094773099)
  %204 = load i32, ptr %x2, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x187, ptr noundef %x188, i32 noundef %204, i32 noundef -1099305310)
  %205 = load i32, ptr %x188, align 4
  %206 = load i32, ptr %x185, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext 0, i32 noundef %205, i32 noundef %206)
  %207 = load i8, ptr %x190, align 1
  %208 = load i32, ptr %x186, align 4
  %209 = load i32, ptr %x183, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %207, i32 noundef %208, i32 noundef %209)
  %210 = load i8, ptr %x192, align 1
  %211 = load i32, ptr %x184, align 4
  %212 = load i32, ptr %x181, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %210, i32 noundef %211, i32 noundef %212)
  %213 = load i8, ptr %x194, align 1
  %214 = load i32, ptr %x182, align 4
  %215 = load i32, ptr %x179, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %213, i32 noundef %214, i32 noundef %215)
  %216 = load i8, ptr %x196, align 1
  %217 = load i32, ptr %x180, align 4
  %218 = load i32, ptr %x177, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %216, i32 noundef %217, i32 noundef %218)
  %219 = load i8, ptr %x198, align 1
  %220 = load i32, ptr %x178, align 4
  %221 = load i32, ptr %x175, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %219, i32 noundef %220, i32 noundef %221)
  %222 = load i8, ptr %x200, align 1
  %223 = load i32, ptr %x176, align 4
  %224 = load i32, ptr %x173, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i32, ptr %x157, align 4
  %226 = load i32, ptr %x187, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext 0, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x204, align 1
  %228 = load i32, ptr %x159, align 4
  %229 = load i32, ptr %x189, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x206, align 1
  %231 = load i32, ptr %x161, align 4
  %232 = load i32, ptr %x191, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x208, align 1
  %234 = load i32, ptr %x163, align 4
  %235 = load i32, ptr %x193, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x210, align 1
  %237 = load i32, ptr %x165, align 4
  %238 = load i32, ptr %x195, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x212, align 1
  %240 = load i32, ptr %x167, align 4
  %241 = load i32, ptr %x197, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x214, align 1
  %243 = load i32, ptr %x169, align 4
  %244 = load i32, ptr %x199, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext %242, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x216, align 1
  %246 = load i32, ptr %x171, align 4
  %247 = load i32, ptr %x201, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i32, ptr %x203, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x219, ptr noundef %x220, i32 noundef %248, i32 noundef -301941681)
  %249 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x221, ptr noundef %x222, i32 noundef %249, i32 noundef -1)
  %250 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x223, ptr noundef %x224, i32 noundef %250, i32 noundef -1)
  %251 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x225, ptr noundef %x226, i32 noundef %251, i32 noundef -1)
  %252 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x227, ptr noundef %x228, i32 noundef %252, i32 noundef -1125713235)
  %253 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x229, ptr noundef %x230, i32 noundef %253, i32 noundef -1491624316)
  %254 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x231, ptr noundef %x232, i32 noundef %254, i32 noundef -205927742)
  %255 = load i32, ptr %x219, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x233, ptr noundef %x234, i32 noundef %255, i32 noundef -60611247)
  %256 = load i32, ptr %x234, align 4
  %257 = load i32, ptr %x231, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext 0, i32 noundef %256, i32 noundef %257)
  %258 = load i8, ptr %x236, align 1
  %259 = load i32, ptr %x232, align 4
  %260 = load i32, ptr %x229, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %258, i32 noundef %259, i32 noundef %260)
  %261 = load i8, ptr %x238, align 1
  %262 = load i32, ptr %x230, align 4
  %263 = load i32, ptr %x227, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %261, i32 noundef %262, i32 noundef %263)
  %264 = load i8, ptr %x240, align 1
  %265 = load i32, ptr %x228, align 4
  %266 = load i32, ptr %x225, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %264, i32 noundef %265, i32 noundef %266)
  %267 = load i8, ptr %x242, align 1
  %268 = load i32, ptr %x226, align 4
  %269 = load i32, ptr %x223, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %267, i32 noundef %268, i32 noundef %269)
  %270 = load i32, ptr %x203, align 4
  %271 = load i32, ptr %x233, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x245, ptr noundef %x246, i8 noundef zeroext 0, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x246, align 1
  %273 = load i32, ptr %x205, align 4
  %274 = load i32, ptr %x235, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x247, ptr noundef %x248, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x248, align 1
  %276 = load i32, ptr %x207, align 4
  %277 = load i32, ptr %x237, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x250, align 1
  %279 = load i32, ptr %x209, align 4
  %280 = load i32, ptr %x239, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x252, align 1
  %282 = load i32, ptr %x211, align 4
  %283 = load i32, ptr %x241, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x254, align 1
  %285 = load i32, ptr %x213, align 4
  %286 = load i32, ptr %x243, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %286)
  %287 = load i8, ptr %x256, align 1
  %288 = load i32, ptr %x215, align 4
  %289 = load i8, ptr %x244, align 1
  %conv18 = zext i8 %289 to i32
  %290 = load i32, ptr %x224, align 4
  %add19 = add i32 %conv18, %290
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %287, i32 noundef %288, i32 noundef %add19)
  %291 = load i8, ptr %x258, align 1
  %292 = load i32, ptr %x217, align 4
  %293 = load i32, ptr %x221, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %291, i32 noundef %292, i32 noundef %293)
  %294 = load i8, ptr %x260, align 1
  %295 = load i8, ptr %x218, align 1
  %conv20 = zext i8 %295 to i32
  %296 = load i8, ptr %x172, align 1
  %conv21 = zext i8 %296 to i32
  %add22 = add i32 %conv20, %conv21
  %297 = load i8, ptr %x202, align 1
  %conv23 = zext i8 %297 to i32
  %298 = load i32, ptr %x174, align 4
  %add24 = add i32 %conv23, %298
  %add25 = add i32 %add22, %add24
  %299 = load i32, ptr %x222, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %294, i32 noundef %add25, i32 noundef %299)
  %300 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x263, ptr noundef %x264, i32 noundef %300, i32 noundef 1726033300)
  %301 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x265, ptr noundef %x266, i32 noundef %301, i32 noundef -203860448)
  %302 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x267, ptr noundef %x268, i32 noundef %302, i32 noundef 675656249)
  %303 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x269, ptr noundef %x270, i32 noundef %303, i32 noundef 728493145)
  %304 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x271, ptr noundef %x272, i32 noundef %304, i32 noundef 1184463260)
  %305 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x273, ptr noundef %x274, i32 noundef %305, i32 noundef 1237151654)
  %306 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x275, ptr noundef %x276, i32 noundef %306, i32 noundef -2094773099)
  %307 = load i32, ptr %x3, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x277, ptr noundef %x278, i32 noundef %307, i32 noundef -1099305310)
  %308 = load i32, ptr %x278, align 4
  %309 = load i32, ptr %x275, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext 0, i32 noundef %308, i32 noundef %309)
  %310 = load i8, ptr %x280, align 1
  %311 = load i32, ptr %x276, align 4
  %312 = load i32, ptr %x273, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x281, ptr noundef %x282, i8 noundef zeroext %310, i32 noundef %311, i32 noundef %312)
  %313 = load i8, ptr %x282, align 1
  %314 = load i32, ptr %x274, align 4
  %315 = load i32, ptr %x271, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x283, ptr noundef %x284, i8 noundef zeroext %313, i32 noundef %314, i32 noundef %315)
  %316 = load i8, ptr %x284, align 1
  %317 = load i32, ptr %x272, align 4
  %318 = load i32, ptr %x269, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext %316, i32 noundef %317, i32 noundef %318)
  %319 = load i8, ptr %x286, align 1
  %320 = load i32, ptr %x270, align 4
  %321 = load i32, ptr %x267, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext %319, i32 noundef %320, i32 noundef %321)
  %322 = load i8, ptr %x288, align 1
  %323 = load i32, ptr %x268, align 4
  %324 = load i32, ptr %x265, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %322, i32 noundef %323, i32 noundef %324)
  %325 = load i8, ptr %x290, align 1
  %326 = load i32, ptr %x266, align 4
  %327 = load i32, ptr %x263, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %325, i32 noundef %326, i32 noundef %327)
  %328 = load i32, ptr %x247, align 4
  %329 = load i32, ptr %x277, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext 0, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x294, align 1
  %331 = load i32, ptr %x249, align 4
  %332 = load i32, ptr %x279, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %330, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x296, align 1
  %334 = load i32, ptr %x251, align 4
  %335 = load i32, ptr %x281, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x298, align 1
  %337 = load i32, ptr %x253, align 4
  %338 = load i32, ptr %x283, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x300, align 1
  %340 = load i32, ptr %x255, align 4
  %341 = load i32, ptr %x285, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x302, align 1
  %343 = load i32, ptr %x257, align 4
  %344 = load i32, ptr %x287, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x304, align 1
  %346 = load i32, ptr %x259, align 4
  %347 = load i32, ptr %x289, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i8, ptr %x306, align 1
  %349 = load i32, ptr %x261, align 4
  %350 = load i32, ptr %x291, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %348, i32 noundef %349, i32 noundef %350)
  %351 = load i32, ptr %x293, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x309, ptr noundef %x310, i32 noundef %351, i32 noundef -301941681)
  %352 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x311, ptr noundef %x312, i32 noundef %352, i32 noundef -1)
  %353 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x313, ptr noundef %x314, i32 noundef %353, i32 noundef -1)
  %354 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x315, ptr noundef %x316, i32 noundef %354, i32 noundef -1)
  %355 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x317, ptr noundef %x318, i32 noundef %355, i32 noundef -1125713235)
  %356 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x319, ptr noundef %x320, i32 noundef %356, i32 noundef -1491624316)
  %357 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x321, ptr noundef %x322, i32 noundef %357, i32 noundef -205927742)
  %358 = load i32, ptr %x309, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x323, ptr noundef %x324, i32 noundef %358, i32 noundef -60611247)
  %359 = load i32, ptr %x324, align 4
  %360 = load i32, ptr %x321, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext 0, i32 noundef %359, i32 noundef %360)
  %361 = load i8, ptr %x326, align 1
  %362 = load i32, ptr %x322, align 4
  %363 = load i32, ptr %x319, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i8, ptr %x328, align 1
  %365 = load i32, ptr %x320, align 4
  %366 = load i32, ptr %x317, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %364, i32 noundef %365, i32 noundef %366)
  %367 = load i8, ptr %x330, align 1
  %368 = load i32, ptr %x318, align 4
  %369 = load i32, ptr %x315, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %367, i32 noundef %368, i32 noundef %369)
  %370 = load i8, ptr %x332, align 1
  %371 = load i32, ptr %x316, align 4
  %372 = load i32, ptr %x313, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %370, i32 noundef %371, i32 noundef %372)
  %373 = load i32, ptr %x293, align 4
  %374 = load i32, ptr %x323, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext 0, i32 noundef %373, i32 noundef %374)
  %375 = load i8, ptr %x336, align 1
  %376 = load i32, ptr %x295, align 4
  %377 = load i32, ptr %x325, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %375, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x338, align 1
  %379 = load i32, ptr %x297, align 4
  %380 = load i32, ptr %x327, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x340, align 1
  %382 = load i32, ptr %x299, align 4
  %383 = load i32, ptr %x329, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x342, align 1
  %385 = load i32, ptr %x301, align 4
  %386 = load i32, ptr %x331, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x344, align 1
  %388 = load i32, ptr %x303, align 4
  %389 = load i32, ptr %x333, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i8, ptr %x346, align 1
  %391 = load i32, ptr %x305, align 4
  %392 = load i8, ptr %x334, align 1
  %conv26 = zext i8 %392 to i32
  %393 = load i32, ptr %x314, align 4
  %add27 = add i32 %conv26, %393
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %390, i32 noundef %391, i32 noundef %add27)
  %394 = load i8, ptr %x348, align 1
  %395 = load i32, ptr %x307, align 4
  %396 = load i32, ptr %x311, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %394, i32 noundef %395, i32 noundef %396)
  %397 = load i8, ptr %x350, align 1
  %398 = load i8, ptr %x308, align 1
  %conv28 = zext i8 %398 to i32
  %399 = load i8, ptr %x262, align 1
  %conv29 = zext i8 %399 to i32
  %add30 = add i32 %conv28, %conv29
  %400 = load i8, ptr %x292, align 1
  %conv31 = zext i8 %400 to i32
  %401 = load i32, ptr %x264, align 4
  %add32 = add i32 %conv31, %401
  %add33 = add i32 %add30, %add32
  %402 = load i32, ptr %x312, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %397, i32 noundef %add33, i32 noundef %402)
  %403 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x353, ptr noundef %x354, i32 noundef %403, i32 noundef 1726033300)
  %404 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x355, ptr noundef %x356, i32 noundef %404, i32 noundef -203860448)
  %405 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x357, ptr noundef %x358, i32 noundef %405, i32 noundef 675656249)
  %406 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x359, ptr noundef %x360, i32 noundef %406, i32 noundef 728493145)
  %407 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x361, ptr noundef %x362, i32 noundef %407, i32 noundef 1184463260)
  %408 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x363, ptr noundef %x364, i32 noundef %408, i32 noundef 1237151654)
  %409 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x365, ptr noundef %x366, i32 noundef %409, i32 noundef -2094773099)
  %410 = load i32, ptr %x4, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x367, ptr noundef %x368, i32 noundef %410, i32 noundef -1099305310)
  %411 = load i32, ptr %x368, align 4
  %412 = load i32, ptr %x365, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext 0, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x370, align 1
  %414 = load i32, ptr %x366, align 4
  %415 = load i32, ptr %x363, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x372, align 1
  %417 = load i32, ptr %x364, align 4
  %418 = load i32, ptr %x361, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %416, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x374, align 1
  %420 = load i32, ptr %x362, align 4
  %421 = load i32, ptr %x359, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x376, align 1
  %423 = load i32, ptr %x360, align 4
  %424 = load i32, ptr %x357, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x378, align 1
  %426 = load i32, ptr %x358, align 4
  %427 = load i32, ptr %x355, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %425, i32 noundef %426, i32 noundef %427)
  %428 = load i8, ptr %x380, align 1
  %429 = load i32, ptr %x356, align 4
  %430 = load i32, ptr %x353, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %428, i32 noundef %429, i32 noundef %430)
  %431 = load i32, ptr %x337, align 4
  %432 = load i32, ptr %x367, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext 0, i32 noundef %431, i32 noundef %432)
  %433 = load i8, ptr %x384, align 1
  %434 = load i32, ptr %x339, align 4
  %435 = load i32, ptr %x369, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %433, i32 noundef %434, i32 noundef %435)
  %436 = load i8, ptr %x386, align 1
  %437 = load i32, ptr %x341, align 4
  %438 = load i32, ptr %x371, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %436, i32 noundef %437, i32 noundef %438)
  %439 = load i8, ptr %x388, align 1
  %440 = load i32, ptr %x343, align 4
  %441 = load i32, ptr %x373, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %439, i32 noundef %440, i32 noundef %441)
  %442 = load i8, ptr %x390, align 1
  %443 = load i32, ptr %x345, align 4
  %444 = load i32, ptr %x375, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %442, i32 noundef %443, i32 noundef %444)
  %445 = load i8, ptr %x392, align 1
  %446 = load i32, ptr %x347, align 4
  %447 = load i32, ptr %x377, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %445, i32 noundef %446, i32 noundef %447)
  %448 = load i8, ptr %x394, align 1
  %449 = load i32, ptr %x349, align 4
  %450 = load i32, ptr %x379, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %448, i32 noundef %449, i32 noundef %450)
  %451 = load i8, ptr %x396, align 1
  %452 = load i32, ptr %x351, align 4
  %453 = load i32, ptr %x381, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %451, i32 noundef %452, i32 noundef %453)
  %454 = load i32, ptr %x383, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x399, ptr noundef %x400, i32 noundef %454, i32 noundef -301941681)
  %455 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x401, ptr noundef %x402, i32 noundef %455, i32 noundef -1)
  %456 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x403, ptr noundef %x404, i32 noundef %456, i32 noundef -1)
  %457 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x405, ptr noundef %x406, i32 noundef %457, i32 noundef -1)
  %458 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x407, ptr noundef %x408, i32 noundef %458, i32 noundef -1125713235)
  %459 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x409, ptr noundef %x410, i32 noundef %459, i32 noundef -1491624316)
  %460 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x411, ptr noundef %x412, i32 noundef %460, i32 noundef -205927742)
  %461 = load i32, ptr %x399, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x413, ptr noundef %x414, i32 noundef %461, i32 noundef -60611247)
  %462 = load i32, ptr %x414, align 4
  %463 = load i32, ptr %x411, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext 0, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x416, align 1
  %465 = load i32, ptr %x412, align 4
  %466 = load i32, ptr %x409, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x418, align 1
  %468 = load i32, ptr %x410, align 4
  %469 = load i32, ptr %x407, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x420, align 1
  %471 = load i32, ptr %x408, align 4
  %472 = load i32, ptr %x405, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x422, align 1
  %474 = load i32, ptr %x406, align 4
  %475 = load i32, ptr %x403, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x423, ptr noundef %x424, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i32, ptr %x383, align 4
  %477 = load i32, ptr %x413, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext 0, i32 noundef %476, i32 noundef %477)
  %478 = load i8, ptr %x426, align 1
  %479 = load i32, ptr %x385, align 4
  %480 = load i32, ptr %x415, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %478, i32 noundef %479, i32 noundef %480)
  %481 = load i8, ptr %x428, align 1
  %482 = load i32, ptr %x387, align 4
  %483 = load i32, ptr %x417, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %481, i32 noundef %482, i32 noundef %483)
  %484 = load i8, ptr %x430, align 1
  %485 = load i32, ptr %x389, align 4
  %486 = load i32, ptr %x419, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %484, i32 noundef %485, i32 noundef %486)
  %487 = load i8, ptr %x432, align 1
  %488 = load i32, ptr %x391, align 4
  %489 = load i32, ptr %x421, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %487, i32 noundef %488, i32 noundef %489)
  %490 = load i8, ptr %x434, align 1
  %491 = load i32, ptr %x393, align 4
  %492 = load i32, ptr %x423, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %490, i32 noundef %491, i32 noundef %492)
  %493 = load i8, ptr %x436, align 1
  %494 = load i32, ptr %x395, align 4
  %495 = load i8, ptr %x424, align 1
  %conv34 = zext i8 %495 to i32
  %496 = load i32, ptr %x404, align 4
  %add35 = add i32 %conv34, %496
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %493, i32 noundef %494, i32 noundef %add35)
  %497 = load i8, ptr %x438, align 1
  %498 = load i32, ptr %x397, align 4
  %499 = load i32, ptr %x401, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %497, i32 noundef %498, i32 noundef %499)
  %500 = load i8, ptr %x440, align 1
  %501 = load i8, ptr %x398, align 1
  %conv36 = zext i8 %501 to i32
  %502 = load i8, ptr %x352, align 1
  %conv37 = zext i8 %502 to i32
  %add38 = add i32 %conv36, %conv37
  %503 = load i8, ptr %x382, align 1
  %conv39 = zext i8 %503 to i32
  %504 = load i32, ptr %x354, align 4
  %add40 = add i32 %conv39, %504
  %add41 = add i32 %add38, %add40
  %505 = load i32, ptr %x402, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %500, i32 noundef %add41, i32 noundef %505)
  %506 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x443, ptr noundef %x444, i32 noundef %506, i32 noundef 1726033300)
  %507 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x445, ptr noundef %x446, i32 noundef %507, i32 noundef -203860448)
  %508 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x447, ptr noundef %x448, i32 noundef %508, i32 noundef 675656249)
  %509 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x449, ptr noundef %x450, i32 noundef %509, i32 noundef 728493145)
  %510 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x451, ptr noundef %x452, i32 noundef %510, i32 noundef 1184463260)
  %511 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x453, ptr noundef %x454, i32 noundef %511, i32 noundef 1237151654)
  %512 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %512, i32 noundef -2094773099)
  %513 = load i32, ptr %x5, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x457, ptr noundef %x458, i32 noundef %513, i32 noundef -1099305310)
  %514 = load i32, ptr %x458, align 4
  %515 = load i32, ptr %x455, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext 0, i32 noundef %514, i32 noundef %515)
  %516 = load i8, ptr %x460, align 1
  %517 = load i32, ptr %x456, align 4
  %518 = load i32, ptr %x453, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %516, i32 noundef %517, i32 noundef %518)
  %519 = load i8, ptr %x462, align 1
  %520 = load i32, ptr %x454, align 4
  %521 = load i32, ptr %x451, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %519, i32 noundef %520, i32 noundef %521)
  %522 = load i8, ptr %x464, align 1
  %523 = load i32, ptr %x452, align 4
  %524 = load i32, ptr %x449, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %522, i32 noundef %523, i32 noundef %524)
  %525 = load i8, ptr %x466, align 1
  %526 = load i32, ptr %x450, align 4
  %527 = load i32, ptr %x447, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %525, i32 noundef %526, i32 noundef %527)
  %528 = load i8, ptr %x468, align 1
  %529 = load i32, ptr %x448, align 4
  %530 = load i32, ptr %x445, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %528, i32 noundef %529, i32 noundef %530)
  %531 = load i8, ptr %x470, align 1
  %532 = load i32, ptr %x446, align 4
  %533 = load i32, ptr %x443, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %531, i32 noundef %532, i32 noundef %533)
  %534 = load i32, ptr %x427, align 4
  %535 = load i32, ptr %x457, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext 0, i32 noundef %534, i32 noundef %535)
  %536 = load i8, ptr %x474, align 1
  %537 = load i32, ptr %x429, align 4
  %538 = load i32, ptr %x459, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext %536, i32 noundef %537, i32 noundef %538)
  %539 = load i8, ptr %x476, align 1
  %540 = load i32, ptr %x431, align 4
  %541 = load i32, ptr %x461, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext %539, i32 noundef %540, i32 noundef %541)
  %542 = load i8, ptr %x478, align 1
  %543 = load i32, ptr %x433, align 4
  %544 = load i32, ptr %x463, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x479, ptr noundef %x480, i8 noundef zeroext %542, i32 noundef %543, i32 noundef %544)
  %545 = load i8, ptr %x480, align 1
  %546 = load i32, ptr %x435, align 4
  %547 = load i32, ptr %x465, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x481, ptr noundef %x482, i8 noundef zeroext %545, i32 noundef %546, i32 noundef %547)
  %548 = load i8, ptr %x482, align 1
  %549 = load i32, ptr %x437, align 4
  %550 = load i32, ptr %x467, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x483, ptr noundef %x484, i8 noundef zeroext %548, i32 noundef %549, i32 noundef %550)
  %551 = load i8, ptr %x484, align 1
  %552 = load i32, ptr %x439, align 4
  %553 = load i32, ptr %x469, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x485, ptr noundef %x486, i8 noundef zeroext %551, i32 noundef %552, i32 noundef %553)
  %554 = load i8, ptr %x486, align 1
  %555 = load i32, ptr %x441, align 4
  %556 = load i32, ptr %x471, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x487, ptr noundef %x488, i8 noundef zeroext %554, i32 noundef %555, i32 noundef %556)
  %557 = load i32, ptr %x473, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x489, ptr noundef %x490, i32 noundef %557, i32 noundef -301941681)
  %558 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x491, ptr noundef %x492, i32 noundef %558, i32 noundef -1)
  %559 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x493, ptr noundef %x494, i32 noundef %559, i32 noundef -1)
  %560 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x495, ptr noundef %x496, i32 noundef %560, i32 noundef -1)
  %561 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x497, ptr noundef %x498, i32 noundef %561, i32 noundef -1125713235)
  %562 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x499, ptr noundef %x500, i32 noundef %562, i32 noundef -1491624316)
  %563 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x501, ptr noundef %x502, i32 noundef %563, i32 noundef -205927742)
  %564 = load i32, ptr %x489, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x503, ptr noundef %x504, i32 noundef %564, i32 noundef -60611247)
  %565 = load i32, ptr %x504, align 4
  %566 = load i32, ptr %x501, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext 0, i32 noundef %565, i32 noundef %566)
  %567 = load i8, ptr %x506, align 1
  %568 = load i32, ptr %x502, align 4
  %569 = load i32, ptr %x499, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext %567, i32 noundef %568, i32 noundef %569)
  %570 = load i8, ptr %x508, align 1
  %571 = load i32, ptr %x500, align 4
  %572 = load i32, ptr %x497, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %570, i32 noundef %571, i32 noundef %572)
  %573 = load i8, ptr %x510, align 1
  %574 = load i32, ptr %x498, align 4
  %575 = load i32, ptr %x495, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %573, i32 noundef %574, i32 noundef %575)
  %576 = load i8, ptr %x512, align 1
  %577 = load i32, ptr %x496, align 4
  %578 = load i32, ptr %x493, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %576, i32 noundef %577, i32 noundef %578)
  %579 = load i32, ptr %x473, align 4
  %580 = load i32, ptr %x503, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext 0, i32 noundef %579, i32 noundef %580)
  %581 = load i8, ptr %x516, align 1
  %582 = load i32, ptr %x475, align 4
  %583 = load i32, ptr %x505, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %581, i32 noundef %582, i32 noundef %583)
  %584 = load i8, ptr %x518, align 1
  %585 = load i32, ptr %x477, align 4
  %586 = load i32, ptr %x507, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %584, i32 noundef %585, i32 noundef %586)
  %587 = load i8, ptr %x520, align 1
  %588 = load i32, ptr %x479, align 4
  %589 = load i32, ptr %x509, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %587, i32 noundef %588, i32 noundef %589)
  %590 = load i8, ptr %x522, align 1
  %591 = load i32, ptr %x481, align 4
  %592 = load i32, ptr %x511, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %590, i32 noundef %591, i32 noundef %592)
  %593 = load i8, ptr %x524, align 1
  %594 = load i32, ptr %x483, align 4
  %595 = load i32, ptr %x513, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x525, ptr noundef %x526, i8 noundef zeroext %593, i32 noundef %594, i32 noundef %595)
  %596 = load i8, ptr %x526, align 1
  %597 = load i32, ptr %x485, align 4
  %598 = load i8, ptr %x514, align 1
  %conv42 = zext i8 %598 to i32
  %599 = load i32, ptr %x494, align 4
  %add43 = add i32 %conv42, %599
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext %596, i32 noundef %597, i32 noundef %add43)
  %600 = load i8, ptr %x528, align 1
  %601 = load i32, ptr %x487, align 4
  %602 = load i32, ptr %x491, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x529, ptr noundef %x530, i8 noundef zeroext %600, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x530, align 1
  %604 = load i8, ptr %x488, align 1
  %conv44 = zext i8 %604 to i32
  %605 = load i8, ptr %x442, align 1
  %conv45 = zext i8 %605 to i32
  %add46 = add i32 %conv44, %conv45
  %606 = load i8, ptr %x472, align 1
  %conv47 = zext i8 %606 to i32
  %607 = load i32, ptr %x444, align 4
  %add48 = add i32 %conv47, %607
  %add49 = add i32 %add46, %add48
  %608 = load i32, ptr %x492, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext %603, i32 noundef %add49, i32 noundef %608)
  %609 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x533, ptr noundef %x534, i32 noundef %609, i32 noundef 1726033300)
  %610 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x535, ptr noundef %x536, i32 noundef %610, i32 noundef -203860448)
  %611 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x537, ptr noundef %x538, i32 noundef %611, i32 noundef 675656249)
  %612 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x539, ptr noundef %x540, i32 noundef %612, i32 noundef 728493145)
  %613 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x541, ptr noundef %x542, i32 noundef %613, i32 noundef 1184463260)
  %614 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x543, ptr noundef %x544, i32 noundef %614, i32 noundef 1237151654)
  %615 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x545, ptr noundef %x546, i32 noundef %615, i32 noundef -2094773099)
  %616 = load i32, ptr %x6, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x547, ptr noundef %x548, i32 noundef %616, i32 noundef -1099305310)
  %617 = load i32, ptr %x548, align 4
  %618 = load i32, ptr %x545, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext 0, i32 noundef %617, i32 noundef %618)
  %619 = load i8, ptr %x550, align 1
  %620 = load i32, ptr %x546, align 4
  %621 = load i32, ptr %x543, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %619, i32 noundef %620, i32 noundef %621)
  %622 = load i8, ptr %x552, align 1
  %623 = load i32, ptr %x544, align 4
  %624 = load i32, ptr %x541, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext %622, i32 noundef %623, i32 noundef %624)
  %625 = load i8, ptr %x554, align 1
  %626 = load i32, ptr %x542, align 4
  %627 = load i32, ptr %x539, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %625, i32 noundef %626, i32 noundef %627)
  %628 = load i8, ptr %x556, align 1
  %629 = load i32, ptr %x540, align 4
  %630 = load i32, ptr %x537, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %628, i32 noundef %629, i32 noundef %630)
  %631 = load i8, ptr %x558, align 1
  %632 = load i32, ptr %x538, align 4
  %633 = load i32, ptr %x535, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %631, i32 noundef %632, i32 noundef %633)
  %634 = load i8, ptr %x560, align 1
  %635 = load i32, ptr %x536, align 4
  %636 = load i32, ptr %x533, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %634, i32 noundef %635, i32 noundef %636)
  %637 = load i32, ptr %x517, align 4
  %638 = load i32, ptr %x547, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext 0, i32 noundef %637, i32 noundef %638)
  %639 = load i8, ptr %x564, align 1
  %640 = load i32, ptr %x519, align 4
  %641 = load i32, ptr %x549, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %639, i32 noundef %640, i32 noundef %641)
  %642 = load i8, ptr %x566, align 1
  %643 = load i32, ptr %x521, align 4
  %644 = load i32, ptr %x551, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %642, i32 noundef %643, i32 noundef %644)
  %645 = load i8, ptr %x568, align 1
  %646 = load i32, ptr %x523, align 4
  %647 = load i32, ptr %x553, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x569, ptr noundef %x570, i8 noundef zeroext %645, i32 noundef %646, i32 noundef %647)
  %648 = load i8, ptr %x570, align 1
  %649 = load i32, ptr %x525, align 4
  %650 = load i32, ptr %x555, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x571, ptr noundef %x572, i8 noundef zeroext %648, i32 noundef %649, i32 noundef %650)
  %651 = load i8, ptr %x572, align 1
  %652 = load i32, ptr %x527, align 4
  %653 = load i32, ptr %x557, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x573, ptr noundef %x574, i8 noundef zeroext %651, i32 noundef %652, i32 noundef %653)
  %654 = load i8, ptr %x574, align 1
  %655 = load i32, ptr %x529, align 4
  %656 = load i32, ptr %x559, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x575, ptr noundef %x576, i8 noundef zeroext %654, i32 noundef %655, i32 noundef %656)
  %657 = load i8, ptr %x576, align 1
  %658 = load i32, ptr %x531, align 4
  %659 = load i32, ptr %x561, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext %657, i32 noundef %658, i32 noundef %659)
  %660 = load i32, ptr %x563, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x579, ptr noundef %x580, i32 noundef %660, i32 noundef -301941681)
  %661 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x581, ptr noundef %x582, i32 noundef %661, i32 noundef -1)
  %662 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x583, ptr noundef %x584, i32 noundef %662, i32 noundef -1)
  %663 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x585, ptr noundef %x586, i32 noundef %663, i32 noundef -1)
  %664 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x587, ptr noundef %x588, i32 noundef %664, i32 noundef -1125713235)
  %665 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x589, ptr noundef %x590, i32 noundef %665, i32 noundef -1491624316)
  %666 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x591, ptr noundef %x592, i32 noundef %666, i32 noundef -205927742)
  %667 = load i32, ptr %x579, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x593, ptr noundef %x594, i32 noundef %667, i32 noundef -60611247)
  %668 = load i32, ptr %x594, align 4
  %669 = load i32, ptr %x591, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext 0, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x596, align 1
  %671 = load i32, ptr %x592, align 4
  %672 = load i32, ptr %x589, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %670, i32 noundef %671, i32 noundef %672)
  %673 = load i8, ptr %x598, align 1
  %674 = load i32, ptr %x590, align 4
  %675 = load i32, ptr %x587, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext %673, i32 noundef %674, i32 noundef %675)
  %676 = load i8, ptr %x600, align 1
  %677 = load i32, ptr %x588, align 4
  %678 = load i32, ptr %x585, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %676, i32 noundef %677, i32 noundef %678)
  %679 = load i8, ptr %x602, align 1
  %680 = load i32, ptr %x586, align 4
  %681 = load i32, ptr %x583, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x603, ptr noundef %x604, i8 noundef zeroext %679, i32 noundef %680, i32 noundef %681)
  %682 = load i32, ptr %x563, align 4
  %683 = load i32, ptr %x593, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x605, ptr noundef %x606, i8 noundef zeroext 0, i32 noundef %682, i32 noundef %683)
  %684 = load i8, ptr %x606, align 1
  %685 = load i32, ptr %x565, align 4
  %686 = load i32, ptr %x595, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x607, ptr noundef %x608, i8 noundef zeroext %684, i32 noundef %685, i32 noundef %686)
  %687 = load i8, ptr %x608, align 1
  %688 = load i32, ptr %x567, align 4
  %689 = load i32, ptr %x597, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x609, ptr noundef %x610, i8 noundef zeroext %687, i32 noundef %688, i32 noundef %689)
  %690 = load i8, ptr %x610, align 1
  %691 = load i32, ptr %x569, align 4
  %692 = load i32, ptr %x599, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x611, ptr noundef %x612, i8 noundef zeroext %690, i32 noundef %691, i32 noundef %692)
  %693 = load i8, ptr %x612, align 1
  %694 = load i32, ptr %x571, align 4
  %695 = load i32, ptr %x601, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x613, ptr noundef %x614, i8 noundef zeroext %693, i32 noundef %694, i32 noundef %695)
  %696 = load i8, ptr %x614, align 1
  %697 = load i32, ptr %x573, align 4
  %698 = load i32, ptr %x603, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x615, ptr noundef %x616, i8 noundef zeroext %696, i32 noundef %697, i32 noundef %698)
  %699 = load i8, ptr %x616, align 1
  %700 = load i32, ptr %x575, align 4
  %701 = load i8, ptr %x604, align 1
  %conv50 = zext i8 %701 to i32
  %702 = load i32, ptr %x584, align 4
  %add51 = add i32 %conv50, %702
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext %699, i32 noundef %700, i32 noundef %add51)
  %703 = load i8, ptr %x618, align 1
  %704 = load i32, ptr %x577, align 4
  %705 = load i32, ptr %x581, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x619, ptr noundef %x620, i8 noundef zeroext %703, i32 noundef %704, i32 noundef %705)
  %706 = load i8, ptr %x620, align 1
  %707 = load i8, ptr %x578, align 1
  %conv52 = zext i8 %707 to i32
  %708 = load i8, ptr %x532, align 1
  %conv53 = zext i8 %708 to i32
  %add54 = add i32 %conv52, %conv53
  %709 = load i8, ptr %x562, align 1
  %conv55 = zext i8 %709 to i32
  %710 = load i32, ptr %x534, align 4
  %add56 = add i32 %conv55, %710
  %add57 = add i32 %add54, %add56
  %711 = load i32, ptr %x582, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x621, ptr noundef %x622, i8 noundef zeroext %706, i32 noundef %add57, i32 noundef %711)
  %712 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x623, ptr noundef %x624, i32 noundef %712, i32 noundef 1726033300)
  %713 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x625, ptr noundef %x626, i32 noundef %713, i32 noundef -203860448)
  %714 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x627, ptr noundef %x628, i32 noundef %714, i32 noundef 675656249)
  %715 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x629, ptr noundef %x630, i32 noundef %715, i32 noundef 728493145)
  %716 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x631, ptr noundef %x632, i32 noundef %716, i32 noundef 1184463260)
  %717 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x633, ptr noundef %x634, i32 noundef %717, i32 noundef 1237151654)
  %718 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x635, ptr noundef %x636, i32 noundef %718, i32 noundef -2094773099)
  %719 = load i32, ptr %x7, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x637, ptr noundef %x638, i32 noundef %719, i32 noundef -1099305310)
  %720 = load i32, ptr %x638, align 4
  %721 = load i32, ptr %x635, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext 0, i32 noundef %720, i32 noundef %721)
  %722 = load i8, ptr %x640, align 1
  %723 = load i32, ptr %x636, align 4
  %724 = load i32, ptr %x633, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %722, i32 noundef %723, i32 noundef %724)
  %725 = load i8, ptr %x642, align 1
  %726 = load i32, ptr %x634, align 4
  %727 = load i32, ptr %x631, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %725, i32 noundef %726, i32 noundef %727)
  %728 = load i8, ptr %x644, align 1
  %729 = load i32, ptr %x632, align 4
  %730 = load i32, ptr %x629, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %728, i32 noundef %729, i32 noundef %730)
  %731 = load i8, ptr %x646, align 1
  %732 = load i32, ptr %x630, align 4
  %733 = load i32, ptr %x627, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x647, ptr noundef %x648, i8 noundef zeroext %731, i32 noundef %732, i32 noundef %733)
  %734 = load i8, ptr %x648, align 1
  %735 = load i32, ptr %x628, align 4
  %736 = load i32, ptr %x625, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x649, ptr noundef %x650, i8 noundef zeroext %734, i32 noundef %735, i32 noundef %736)
  %737 = load i8, ptr %x650, align 1
  %738 = load i32, ptr %x626, align 4
  %739 = load i32, ptr %x623, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x651, ptr noundef %x652, i8 noundef zeroext %737, i32 noundef %738, i32 noundef %739)
  %740 = load i32, ptr %x607, align 4
  %741 = load i32, ptr %x637, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x653, ptr noundef %x654, i8 noundef zeroext 0, i32 noundef %740, i32 noundef %741)
  %742 = load i8, ptr %x654, align 1
  %743 = load i32, ptr %x609, align 4
  %744 = load i32, ptr %x639, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x655, ptr noundef %x656, i8 noundef zeroext %742, i32 noundef %743, i32 noundef %744)
  %745 = load i8, ptr %x656, align 1
  %746 = load i32, ptr %x611, align 4
  %747 = load i32, ptr %x641, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x657, ptr noundef %x658, i8 noundef zeroext %745, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x658, align 1
  %749 = load i32, ptr %x613, align 4
  %750 = load i32, ptr %x643, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x659, ptr noundef %x660, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x660, align 1
  %752 = load i32, ptr %x615, align 4
  %753 = load i32, ptr %x645, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x661, ptr noundef %x662, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x662, align 1
  %755 = load i32, ptr %x617, align 4
  %756 = load i32, ptr %x647, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext %754, i32 noundef %755, i32 noundef %756)
  %757 = load i8, ptr %x664, align 1
  %758 = load i32, ptr %x619, align 4
  %759 = load i32, ptr %x649, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x665, ptr noundef %x666, i8 noundef zeroext %757, i32 noundef %758, i32 noundef %759)
  %760 = load i8, ptr %x666, align 1
  %761 = load i32, ptr %x621, align 4
  %762 = load i32, ptr %x651, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext %760, i32 noundef %761, i32 noundef %762)
  %763 = load i32, ptr %x653, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x669, ptr noundef %x670, i32 noundef %763, i32 noundef -301941681)
  %764 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x671, ptr noundef %x672, i32 noundef %764, i32 noundef -1)
  %765 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x673, ptr noundef %x674, i32 noundef %765, i32 noundef -1)
  %766 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x675, ptr noundef %x676, i32 noundef %766, i32 noundef -1)
  %767 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x677, ptr noundef %x678, i32 noundef %767, i32 noundef -1125713235)
  %768 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x679, ptr noundef %x680, i32 noundef %768, i32 noundef -1491624316)
  %769 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x681, ptr noundef %x682, i32 noundef %769, i32 noundef -205927742)
  %770 = load i32, ptr %x669, align 4
  call void @fiat_p256_scalar_mulx_u32(ptr noundef %x683, ptr noundef %x684, i32 noundef %770, i32 noundef -60611247)
  %771 = load i32, ptr %x684, align 4
  %772 = load i32, ptr %x681, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext 0, i32 noundef %771, i32 noundef %772)
  %773 = load i8, ptr %x686, align 1
  %774 = load i32, ptr %x682, align 4
  %775 = load i32, ptr %x679, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %773, i32 noundef %774, i32 noundef %775)
  %776 = load i8, ptr %x688, align 1
  %777 = load i32, ptr %x680, align 4
  %778 = load i32, ptr %x677, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %776, i32 noundef %777, i32 noundef %778)
  %779 = load i8, ptr %x690, align 1
  %780 = load i32, ptr %x678, align 4
  %781 = load i32, ptr %x675, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %779, i32 noundef %780, i32 noundef %781)
  %782 = load i8, ptr %x692, align 1
  %783 = load i32, ptr %x676, align 4
  %784 = load i32, ptr %x673, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x693, ptr noundef %x694, i8 noundef zeroext %782, i32 noundef %783, i32 noundef %784)
  %785 = load i32, ptr %x653, align 4
  %786 = load i32, ptr %x683, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext 0, i32 noundef %785, i32 noundef %786)
  %787 = load i8, ptr %x696, align 1
  %788 = load i32, ptr %x655, align 4
  %789 = load i32, ptr %x685, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x697, ptr noundef %x698, i8 noundef zeroext %787, i32 noundef %788, i32 noundef %789)
  %790 = load i8, ptr %x698, align 1
  %791 = load i32, ptr %x657, align 4
  %792 = load i32, ptr %x687, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x699, ptr noundef %x700, i8 noundef zeroext %790, i32 noundef %791, i32 noundef %792)
  %793 = load i8, ptr %x700, align 1
  %794 = load i32, ptr %x659, align 4
  %795 = load i32, ptr %x689, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x701, ptr noundef %x702, i8 noundef zeroext %793, i32 noundef %794, i32 noundef %795)
  %796 = load i8, ptr %x702, align 1
  %797 = load i32, ptr %x661, align 4
  %798 = load i32, ptr %x691, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x703, ptr noundef %x704, i8 noundef zeroext %796, i32 noundef %797, i32 noundef %798)
  %799 = load i8, ptr %x704, align 1
  %800 = load i32, ptr %x663, align 4
  %801 = load i32, ptr %x693, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x705, ptr noundef %x706, i8 noundef zeroext %799, i32 noundef %800, i32 noundef %801)
  %802 = load i8, ptr %x706, align 1
  %803 = load i32, ptr %x665, align 4
  %804 = load i8, ptr %x694, align 1
  %conv58 = zext i8 %804 to i32
  %805 = load i32, ptr %x674, align 4
  %add59 = add i32 %conv58, %805
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x707, ptr noundef %x708, i8 noundef zeroext %802, i32 noundef %803, i32 noundef %add59)
  %806 = load i8, ptr %x708, align 1
  %807 = load i32, ptr %x667, align 4
  %808 = load i32, ptr %x671, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x709, ptr noundef %x710, i8 noundef zeroext %806, i32 noundef %807, i32 noundef %808)
  %809 = load i8, ptr %x710, align 1
  %810 = load i8, ptr %x668, align 1
  %conv60 = zext i8 %810 to i32
  %811 = load i8, ptr %x622, align 1
  %conv61 = zext i8 %811 to i32
  %add62 = add i32 %conv60, %conv61
  %812 = load i8, ptr %x652, align 1
  %conv63 = zext i8 %812 to i32
  %813 = load i32, ptr %x624, align 4
  %add64 = add i32 %conv63, %813
  %add65 = add i32 %add62, %add64
  %814 = load i32, ptr %x672, align 4
  call void @fiat_p256_scalar_addcarryx_u32(ptr noundef %x711, ptr noundef %x712, i8 noundef zeroext %809, i32 noundef %add65, i32 noundef %814)
  %815 = load i32, ptr %x697, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x713, ptr noundef %x714, i8 noundef zeroext 0, i32 noundef %815, i32 noundef -60611247)
  %816 = load i8, ptr %x714, align 1
  %817 = load i32, ptr %x699, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x715, ptr noundef %x716, i8 noundef zeroext %816, i32 noundef %817, i32 noundef -205927742)
  %818 = load i8, ptr %x716, align 1
  %819 = load i32, ptr %x701, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x717, ptr noundef %x718, i8 noundef zeroext %818, i32 noundef %819, i32 noundef -1491624316)
  %820 = load i8, ptr %x718, align 1
  %821 = load i32, ptr %x703, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x719, ptr noundef %x720, i8 noundef zeroext %820, i32 noundef %821, i32 noundef -1125713235)
  %822 = load i8, ptr %x720, align 1
  %823 = load i32, ptr %x705, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x721, ptr noundef %x722, i8 noundef zeroext %822, i32 noundef %823, i32 noundef -1)
  %824 = load i8, ptr %x722, align 1
  %825 = load i32, ptr %x707, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x723, ptr noundef %x724, i8 noundef zeroext %824, i32 noundef %825, i32 noundef -1)
  %826 = load i8, ptr %x724, align 1
  %827 = load i32, ptr %x709, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x725, ptr noundef %x726, i8 noundef zeroext %826, i32 noundef %827, i32 noundef 0)
  %828 = load i8, ptr %x726, align 1
  %829 = load i32, ptr %x711, align 4
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x727, ptr noundef %x728, i8 noundef zeroext %828, i32 noundef %829, i32 noundef -1)
  %830 = load i8, ptr %x728, align 1
  %831 = load i8, ptr %x712, align 1
  %conv66 = zext i8 %831 to i32
  call void @fiat_p256_scalar_subborrowx_u32(ptr noundef %x729, ptr noundef %x730, i8 noundef zeroext %830, i32 noundef %conv66, i32 noundef 0)
  %832 = load i8, ptr %x730, align 1
  %833 = load i32, ptr %x713, align 4
  %834 = load i32, ptr %x697, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x731, i8 noundef zeroext %832, i32 noundef %833, i32 noundef %834)
  %835 = load i8, ptr %x730, align 1
  %836 = load i32, ptr %x715, align 4
  %837 = load i32, ptr %x699, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x732, i8 noundef zeroext %835, i32 noundef %836, i32 noundef %837)
  %838 = load i8, ptr %x730, align 1
  %839 = load i32, ptr %x717, align 4
  %840 = load i32, ptr %x701, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x733, i8 noundef zeroext %838, i32 noundef %839, i32 noundef %840)
  %841 = load i8, ptr %x730, align 1
  %842 = load i32, ptr %x719, align 4
  %843 = load i32, ptr %x703, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x734, i8 noundef zeroext %841, i32 noundef %842, i32 noundef %843)
  %844 = load i8, ptr %x730, align 1
  %845 = load i32, ptr %x721, align 4
  %846 = load i32, ptr %x705, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x735, i8 noundef zeroext %844, i32 noundef %845, i32 noundef %846)
  %847 = load i8, ptr %x730, align 1
  %848 = load i32, ptr %x723, align 4
  %849 = load i32, ptr %x707, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x736, i8 noundef zeroext %847, i32 noundef %848, i32 noundef %849)
  %850 = load i8, ptr %x730, align 1
  %851 = load i32, ptr %x725, align 4
  %852 = load i32, ptr %x709, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x737, i8 noundef zeroext %850, i32 noundef %851, i32 noundef %852)
  %853 = load i8, ptr %x730, align 1
  %854 = load i32, ptr %x727, align 4
  %855 = load i32, ptr %x711, align 4
  call void @fiat_p256_scalar_cmovznz_u32(ptr noundef %x738, i8 noundef zeroext %853, i32 noundef %854, i32 noundef %855)
  %856 = load i32, ptr %x731, align 4
  %857 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %857, i64 0
  store i32 %856, ptr %arrayidx67, align 4
  %858 = load i32, ptr %x732, align 4
  %859 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %859, i64 1
  store i32 %858, ptr %arrayidx68, align 4
  %860 = load i32, ptr %x733, align 4
  %861 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %861, i64 2
  store i32 %860, ptr %arrayidx69, align 4
  %862 = load i32, ptr %x734, align 4
  %863 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %863, i64 3
  store i32 %862, ptr %arrayidx70, align 4
  %864 = load i32, ptr %x735, align 4
  %865 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %865, i64 4
  store i32 %864, ptr %arrayidx71, align 4
  %866 = load i32, ptr %x736, align 4
  %867 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %867, i64 5
  store i32 %866, ptr %arrayidx72, align 4
  %868 = load i32, ptr %x737, align 4
  %869 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %869, i64 6
  store i32 %868, ptr %arrayidx73, align 4
  %870 = load i32, ptr %x738, align 4
  %871 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %871, i64 7
  store i32 %870, ptr %arrayidx74, align 4
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
