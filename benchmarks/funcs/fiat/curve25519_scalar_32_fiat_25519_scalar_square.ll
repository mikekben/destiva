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
define dso_local void @fiat_25519_scalar_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x53 = alloca i8, align 1
  %x54 = alloca i32, align 4
  %x55 = alloca i8, align 1
  %x56 = alloca i32, align 4
  %x57 = alloca i8, align 1
  %x58 = alloca i32, align 4
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
  %x78 = alloca i32, align 4
  %x79 = alloca i32, align 4
  %x80 = alloca i32, align 4
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
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
  %x134 = alloca i32, align 4
  %x135 = alloca i32, align 4
  %x136 = alloca i32, align 4
  %x137 = alloca i32, align 4
  %x138 = alloca i32, align 4
  %x139 = alloca i8, align 1
  %x140 = alloca i32, align 4
  %x141 = alloca i8, align 1
  %x142 = alloca i32, align 4
  %x143 = alloca i8, align 1
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
  %x164 = alloca i32, align 4
  %x165 = alloca i32, align 4
  %x166 = alloca i32, align 4
  %x167 = alloca i32, align 4
  %x168 = alloca i32, align 4
  %x169 = alloca i32, align 4
  %x170 = alloca i32, align 4
  %x171 = alloca i32, align 4
  %x172 = alloca i32, align 4
  %x173 = alloca i32, align 4
  %x174 = alloca i32, align 4
  %x175 = alloca i32, align 4
  %x176 = alloca i32, align 4
  %x177 = alloca i32, align 4
  %x178 = alloca i32, align 4
  %x179 = alloca i32, align 4
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
  %x226 = alloca i8, align 1
  %x227 = alloca i32, align 4
  %x228 = alloca i8, align 1
  %x229 = alloca i32, align 4
  %x230 = alloca i8, align 1
  %x231 = alloca i32, align 4
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
  %x247 = alloca i8, align 1
  %x248 = alloca i32, align 4
  %x249 = alloca i8, align 1
  %x250 = alloca i32, align 4
  %x251 = alloca i32, align 4
  %x252 = alloca i32, align 4
  %x253 = alloca i32, align 4
  %x254 = alloca i32, align 4
  %x255 = alloca i32, align 4
  %x256 = alloca i32, align 4
  %x257 = alloca i32, align 4
  %x258 = alloca i32, align 4
  %x259 = alloca i32, align 4
  %x260 = alloca i32, align 4
  %x261 = alloca i32, align 4
  %x262 = alloca i32, align 4
  %x263 = alloca i32, align 4
  %x264 = alloca i32, align 4
  %x265 = alloca i32, align 4
  %x266 = alloca i32, align 4
  %x267 = alloca i32, align 4
  %x268 = alloca i8, align 1
  %x269 = alloca i32, align 4
  %x270 = alloca i8, align 1
  %x271 = alloca i32, align 4
  %x272 = alloca i8, align 1
  %x273 = alloca i32, align 4
  %x274 = alloca i8, align 1
  %x275 = alloca i32, align 4
  %x276 = alloca i8, align 1
  %x277 = alloca i32, align 4
  %x278 = alloca i8, align 1
  %x279 = alloca i32, align 4
  %x280 = alloca i8, align 1
  %x281 = alloca i32, align 4
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
  %x313 = alloca i8, align 1
  %x314 = alloca i32, align 4
  %x315 = alloca i8, align 1
  %x316 = alloca i32, align 4
  %x317 = alloca i8, align 1
  %x318 = alloca i32, align 4
  %x319 = alloca i32, align 4
  %x320 = alloca i8, align 1
  %x321 = alloca i32, align 4
  %x322 = alloca i8, align 1
  %x323 = alloca i32, align 4
  %x324 = alloca i8, align 1
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
  %x338 = alloca i32, align 4
  %x339 = alloca i32, align 4
  %x340 = alloca i32, align 4
  %x341 = alloca i32, align 4
  %x342 = alloca i32, align 4
  %x343 = alloca i32, align 4
  %x344 = alloca i32, align 4
  %x345 = alloca i32, align 4
  %x346 = alloca i32, align 4
  %x347 = alloca i32, align 4
  %x348 = alloca i32, align 4
  %x349 = alloca i32, align 4
  %x350 = alloca i32, align 4
  %x351 = alloca i32, align 4
  %x352 = alloca i32, align 4
  %x353 = alloca i32, align 4
  %x354 = alloca i32, align 4
  %x355 = alloca i8, align 1
  %x356 = alloca i32, align 4
  %x357 = alloca i8, align 1
  %x358 = alloca i32, align 4
  %x359 = alloca i8, align 1
  %x360 = alloca i32, align 4
  %x361 = alloca i8, align 1
  %x362 = alloca i32, align 4
  %x363 = alloca i8, align 1
  %x364 = alloca i32, align 4
  %x365 = alloca i8, align 1
  %x366 = alloca i32, align 4
  %x367 = alloca i8, align 1
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
  %x388 = alloca i32, align 4
  %x389 = alloca i32, align 4
  %x390 = alloca i32, align 4
  %x391 = alloca i32, align 4
  %x392 = alloca i32, align 4
  %x393 = alloca i32, align 4
  %x394 = alloca i32, align 4
  %x395 = alloca i32, align 4
  %x396 = alloca i32, align 4
  %x397 = alloca i32, align 4
  %x398 = alloca i32, align 4
  %x399 = alloca i32, align 4
  %x400 = alloca i8, align 1
  %x401 = alloca i32, align 4
  %x402 = alloca i8, align 1
  %x403 = alloca i32, align 4
  %x404 = alloca i8, align 1
  %x405 = alloca i32, align 4
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
  %x421 = alloca i8, align 1
  %x422 = alloca i32, align 4
  %x423 = alloca i8, align 1
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
  %x437 = alloca i32, align 4
  %x438 = alloca i32, align 4
  %x439 = alloca i32, align 4
  %x440 = alloca i32, align 4
  %x441 = alloca i32, align 4
  %x442 = alloca i8, align 1
  %x443 = alloca i32, align 4
  %x444 = alloca i8, align 1
  %x445 = alloca i32, align 4
  %x446 = alloca i8, align 1
  %x447 = alloca i32, align 4
  %x448 = alloca i8, align 1
  %x449 = alloca i32, align 4
  %x450 = alloca i8, align 1
  %x451 = alloca i32, align 4
  %x452 = alloca i8, align 1
  %x453 = alloca i32, align 4
  %x454 = alloca i8, align 1
  %x455 = alloca i32, align 4
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
  %x475 = alloca i32, align 4
  %x476 = alloca i32, align 4
  %x477 = alloca i32, align 4
  %x478 = alloca i32, align 4
  %x479 = alloca i32, align 4
  %x480 = alloca i32, align 4
  %x481 = alloca i32, align 4
  %x482 = alloca i32, align 4
  %x483 = alloca i32, align 4
  %x484 = alloca i32, align 4
  %x485 = alloca i32, align 4
  %x486 = alloca i32, align 4
  %x487 = alloca i8, align 1
  %x488 = alloca i32, align 4
  %x489 = alloca i8, align 1
  %x490 = alloca i32, align 4
  %x491 = alloca i8, align 1
  %x492 = alloca i32, align 4
  %x493 = alloca i32, align 4
  %x494 = alloca i8, align 1
  %x495 = alloca i32, align 4
  %x496 = alloca i8, align 1
  %x497 = alloca i32, align 4
  %x498 = alloca i8, align 1
  %x499 = alloca i32, align 4
  %x500 = alloca i8, align 1
  %x501 = alloca i32, align 4
  %x502 = alloca i8, align 1
  %x503 = alloca i32, align 4
  %x504 = alloca i8, align 1
  %x505 = alloca i32, align 4
  %x506 = alloca i8, align 1
  %x507 = alloca i32, align 4
  %x508 = alloca i8, align 1
  %x509 = alloca i32, align 4
  %x510 = alloca i8, align 1
  %x511 = alloca i32, align 4
  %x512 = alloca i32, align 4
  %x513 = alloca i32, align 4
  %x514 = alloca i32, align 4
  %x515 = alloca i32, align 4
  %x516 = alloca i32, align 4
  %x517 = alloca i32, align 4
  %x518 = alloca i32, align 4
  %x519 = alloca i32, align 4
  %x520 = alloca i32, align 4
  %x521 = alloca i32, align 4
  %x522 = alloca i32, align 4
  %x523 = alloca i32, align 4
  %x524 = alloca i32, align 4
  %x525 = alloca i32, align 4
  %x526 = alloca i32, align 4
  %x527 = alloca i32, align 4
  %x528 = alloca i32, align 4
  %x529 = alloca i8, align 1
  %x530 = alloca i32, align 4
  %x531 = alloca i8, align 1
  %x532 = alloca i32, align 4
  %x533 = alloca i8, align 1
  %x534 = alloca i32, align 4
  %x535 = alloca i8, align 1
  %x536 = alloca i32, align 4
  %x537 = alloca i8, align 1
  %x538 = alloca i32, align 4
  %x539 = alloca i8, align 1
  %x540 = alloca i32, align 4
  %x541 = alloca i8, align 1
  %x542 = alloca i32, align 4
  %x543 = alloca i32, align 4
  %x544 = alloca i8, align 1
  %x545 = alloca i32, align 4
  %x546 = alloca i8, align 1
  %x547 = alloca i32, align 4
  %x548 = alloca i8, align 1
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
  %x562 = alloca i32, align 4
  %x563 = alloca i32, align 4
  %x564 = alloca i32, align 4
  %x565 = alloca i32, align 4
  %x566 = alloca i32, align 4
  %x567 = alloca i32, align 4
  %x568 = alloca i32, align 4
  %x569 = alloca i32, align 4
  %x570 = alloca i32, align 4
  %x571 = alloca i32, align 4
  %x572 = alloca i32, align 4
  %x573 = alloca i32, align 4
  %x574 = alloca i8, align 1
  %x575 = alloca i32, align 4
  %x576 = alloca i8, align 1
  %x577 = alloca i32, align 4
  %x578 = alloca i8, align 1
  %x579 = alloca i32, align 4
  %x580 = alloca i32, align 4
  %x581 = alloca i8, align 1
  %x582 = alloca i32, align 4
  %x583 = alloca i8, align 1
  %x584 = alloca i32, align 4
  %x585 = alloca i8, align 1
  %x586 = alloca i32, align 4
  %x587 = alloca i8, align 1
  %x588 = alloca i32, align 4
  %x589 = alloca i8, align 1
  %x590 = alloca i32, align 4
  %x591 = alloca i8, align 1
  %x592 = alloca i32, align 4
  %x593 = alloca i8, align 1
  %x594 = alloca i32, align 4
  %x595 = alloca i8, align 1
  %x596 = alloca i32, align 4
  %x597 = alloca i8, align 1
  %x598 = alloca i32, align 4
  %x599 = alloca i32, align 4
  %x600 = alloca i32, align 4
  %x601 = alloca i32, align 4
  %x602 = alloca i32, align 4
  %x603 = alloca i32, align 4
  %x604 = alloca i32, align 4
  %x605 = alloca i32, align 4
  %x606 = alloca i32, align 4
  %x607 = alloca i32, align 4
  %x608 = alloca i32, align 4
  %x609 = alloca i32, align 4
  %x610 = alloca i32, align 4
  %x611 = alloca i32, align 4
  %x612 = alloca i32, align 4
  %x613 = alloca i32, align 4
  %x614 = alloca i32, align 4
  %x615 = alloca i32, align 4
  %x616 = alloca i8, align 1
  %x617 = alloca i32, align 4
  %x618 = alloca i8, align 1
  %x619 = alloca i32, align 4
  %x620 = alloca i8, align 1
  %x621 = alloca i32, align 4
  %x622 = alloca i8, align 1
  %x623 = alloca i32, align 4
  %x624 = alloca i8, align 1
  %x625 = alloca i32, align 4
  %x626 = alloca i8, align 1
  %x627 = alloca i32, align 4
  %x628 = alloca i8, align 1
  %x629 = alloca i32, align 4
  %x630 = alloca i32, align 4
  %x631 = alloca i8, align 1
  %x632 = alloca i32, align 4
  %x633 = alloca i8, align 1
  %x634 = alloca i32, align 4
  %x635 = alloca i8, align 1
  %x636 = alloca i32, align 4
  %x637 = alloca i8, align 1
  %x638 = alloca i32, align 4
  %x639 = alloca i8, align 1
  %x640 = alloca i32, align 4
  %x641 = alloca i8, align 1
  %x642 = alloca i32, align 4
  %x643 = alloca i8, align 1
  %x644 = alloca i32, align 4
  %x645 = alloca i8, align 1
  %x646 = alloca i32, align 4
  %x647 = alloca i8, align 1
  %x648 = alloca i32, align 4
  %x649 = alloca i32, align 4
  %x650 = alloca i32, align 4
  %x651 = alloca i32, align 4
  %x652 = alloca i32, align 4
  %x653 = alloca i32, align 4
  %x654 = alloca i32, align 4
  %x655 = alloca i32, align 4
  %x656 = alloca i32, align 4
  %x657 = alloca i32, align 4
  %x658 = alloca i32, align 4
  %x659 = alloca i32, align 4
  %x660 = alloca i32, align 4
  %x661 = alloca i8, align 1
  %x662 = alloca i32, align 4
  %x663 = alloca i8, align 1
  %x664 = alloca i32, align 4
  %x665 = alloca i8, align 1
  %x666 = alloca i32, align 4
  %x667 = alloca i32, align 4
  %x668 = alloca i8, align 1
  %x669 = alloca i32, align 4
  %x670 = alloca i8, align 1
  %x671 = alloca i32, align 4
  %x672 = alloca i8, align 1
  %x673 = alloca i32, align 4
  %x674 = alloca i8, align 1
  %x675 = alloca i32, align 4
  %x676 = alloca i8, align 1
  %x677 = alloca i32, align 4
  %x678 = alloca i8, align 1
  %x679 = alloca i32, align 4
  %x680 = alloca i8, align 1
  %x681 = alloca i32, align 4
  %x682 = alloca i8, align 1
  %x683 = alloca i32, align 4
  %x684 = alloca i8, align 1
  %x685 = alloca i32, align 4
  %x686 = alloca i32, align 4
  %x687 = alloca i8, align 1
  %x688 = alloca i32, align 4
  %x689 = alloca i8, align 1
  %x690 = alloca i32, align 4
  %x691 = alloca i8, align 1
  %x692 = alloca i32, align 4
  %x693 = alloca i8, align 1
  %x694 = alloca i32, align 4
  %x695 = alloca i8, align 1
  %x696 = alloca i32, align 4
  %x697 = alloca i8, align 1
  %x698 = alloca i32, align 4
  %x699 = alloca i8, align 1
  %x700 = alloca i32, align 4
  %x701 = alloca i8, align 1
  %x702 = alloca i32, align 4
  %x703 = alloca i8, align 1
  %x704 = alloca i32, align 4
  %x705 = alloca i32, align 4
  %x706 = alloca i32, align 4
  %x707 = alloca i32, align 4
  %x708 = alloca i32, align 4
  %x709 = alloca i32, align 4
  %x710 = alloca i32, align 4
  %x711 = alloca i32, align 4
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
  %17 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 7
  %18 = load i32, ptr %arrayidx8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef %18)
  %19 = load i32, ptr %x8, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %20, i64 6
  %21 = load i32, ptr %arrayidx9, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %19, i32 noundef %21)
  %22 = load i32, ptr %x8, align 4
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %23, i64 5
  %24 = load i32, ptr %arrayidx10, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %22, i32 noundef %24)
  %25 = load i32, ptr %x8, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %26, i64 4
  %27 = load i32, ptr %arrayidx11, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %25, i32 noundef %27)
  %28 = load i32, ptr %x8, align 4
  %29 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %29, i64 3
  %30 = load i32, ptr %arrayidx12, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %28, i32 noundef %30)
  %31 = load i32, ptr %x8, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %31, i32 noundef %33)
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 1
  %36 = load i32, ptr %arrayidx14, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %34, i32 noundef %36)
  %37 = load i32, ptr %x8, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %37, i32 noundef %39)
  %40 = load i32, ptr %x24, align 4
  %41 = load i32, ptr %x21, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %40, i32 noundef %41)
  %42 = load i8, ptr %x26, align 1
  %43 = load i32, ptr %x22, align 4
  %44 = load i32, ptr %x19, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %x28, align 1
  %46 = load i32, ptr %x20, align 4
  %47 = load i32, ptr %x17, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %47)
  %48 = load i8, ptr %x30, align 1
  %49 = load i32, ptr %x18, align 4
  %50 = load i32, ptr %x15, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x32, align 1
  %52 = load i32, ptr %x16, align 4
  %53 = load i32, ptr %x13, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x34, align 1
  %55 = load i32, ptr %x14, align 4
  %56 = load i32, ptr %x11, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x36, align 1
  %58 = load i32, ptr %x12, align 4
  %59 = load i32, ptr %x9, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x38, align 1
  %conv = zext i8 %60 to i32
  %61 = load i32, ptr %x10, align 4
  %add = add i32 %conv, %61
  store i32 %add, ptr %x39, align 4
  %62 = load i32, ptr %x23, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x40, ptr noundef %x41, i32 noundef %62, i32 noundef 307527195)
  %63 = load i32, ptr %x40, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x42, ptr noundef %x43, i32 noundef %63, i32 noundef 268435456)
  %64 = load i32, ptr %x40, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %64, i32 noundef 350157278)
  %65 = load i32, ptr %x40, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x46, ptr noundef %x47, i32 noundef %65, i32 noundef -1560830762)
  %66 = load i32, ptr %x40, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x48, ptr noundef %x49, i32 noundef %66, i32 noundef 1477600026)
  %67 = load i32, ptr %x40, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x50, ptr noundef %x51, i32 noundef %67, i32 noundef 1559614445)
  %68 = load i32, ptr %x51, align 4
  %69 = load i32, ptr %x48, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i32 noundef %68, i32 noundef %69)
  %70 = load i8, ptr %x53, align 1
  %71 = load i32, ptr %x49, align 4
  %72 = load i32, ptr %x46, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %70, i32 noundef %71, i32 noundef %72)
  %73 = load i8, ptr %x55, align 1
  %74 = load i32, ptr %x47, align 4
  %75 = load i32, ptr %x44, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %73, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x57, align 1
  %conv16 = zext i8 %76 to i32
  %77 = load i32, ptr %x45, align 4
  %add17 = add i32 %conv16, %77
  store i32 %add17, ptr %x58, align 4
  %78 = load i32, ptr %x23, align 4
  %79 = load i32, ptr %x50, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext 0, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x60, align 1
  %81 = load i32, ptr %x25, align 4
  %82 = load i32, ptr %x52, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x62, align 1
  %84 = load i32, ptr %x27, align 4
  %85 = load i32, ptr %x54, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x64, align 1
  %87 = load i32, ptr %x29, align 4
  %88 = load i32, ptr %x56, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x66, align 1
  %90 = load i32, ptr %x31, align 4
  %91 = load i32, ptr %x58, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x68, align 1
  %93 = load i32, ptr %x33, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %92, i32 noundef %93, i32 noundef 0)
  %94 = load i8, ptr %x70, align 1
  %95 = load i32, ptr %x35, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %94, i32 noundef %95, i32 noundef 0)
  %96 = load i8, ptr %x72, align 1
  %97 = load i32, ptr %x37, align 4
  %98 = load i32, ptr %x42, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %96, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x74, align 1
  %100 = load i32, ptr %x39, align 4
  %101 = load i32, ptr %x43, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %99, i32 noundef %100, i32 noundef %101)
  %102 = load i32, ptr %x1, align 4
  %103 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %103, i64 7
  %104 = load i32, ptr %arrayidx18, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x77, ptr noundef %x78, i32 noundef %102, i32 noundef %104)
  %105 = load i32, ptr %x1, align 4
  %106 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %106, i64 6
  %107 = load i32, ptr %arrayidx19, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x79, ptr noundef %x80, i32 noundef %105, i32 noundef %107)
  %108 = load i32, ptr %x1, align 4
  %109 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %109, i64 5
  %110 = load i32, ptr %arrayidx20, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x81, ptr noundef %x82, i32 noundef %108, i32 noundef %110)
  %111 = load i32, ptr %x1, align 4
  %112 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %112, i64 4
  %113 = load i32, ptr %arrayidx21, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x83, ptr noundef %x84, i32 noundef %111, i32 noundef %113)
  %114 = load i32, ptr %x1, align 4
  %115 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %115, i64 3
  %116 = load i32, ptr %arrayidx22, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x85, ptr noundef %x86, i32 noundef %114, i32 noundef %116)
  %117 = load i32, ptr %x1, align 4
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %118, i64 2
  %119 = load i32, ptr %arrayidx23, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x87, ptr noundef %x88, i32 noundef %117, i32 noundef %119)
  %120 = load i32, ptr %x1, align 4
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %121, i64 1
  %122 = load i32, ptr %arrayidx24, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x89, ptr noundef %x90, i32 noundef %120, i32 noundef %122)
  %123 = load i32, ptr %x1, align 4
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %124, i64 0
  %125 = load i32, ptr %arrayidx25, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x91, ptr noundef %x92, i32 noundef %123, i32 noundef %125)
  %126 = load i32, ptr %x92, align 4
  %127 = load i32, ptr %x89, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext 0, i32 noundef %126, i32 noundef %127)
  %128 = load i8, ptr %x94, align 1
  %129 = load i32, ptr %x90, align 4
  %130 = load i32, ptr %x87, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %128, i32 noundef %129, i32 noundef %130)
  %131 = load i8, ptr %x96, align 1
  %132 = load i32, ptr %x88, align 4
  %133 = load i32, ptr %x85, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %131, i32 noundef %132, i32 noundef %133)
  %134 = load i8, ptr %x98, align 1
  %135 = load i32, ptr %x86, align 4
  %136 = load i32, ptr %x83, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %134, i32 noundef %135, i32 noundef %136)
  %137 = load i8, ptr %x100, align 1
  %138 = load i32, ptr %x84, align 4
  %139 = load i32, ptr %x81, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %137, i32 noundef %138, i32 noundef %139)
  %140 = load i8, ptr %x102, align 1
  %141 = load i32, ptr %x82, align 4
  %142 = load i32, ptr %x79, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %140, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x104, align 1
  %144 = load i32, ptr %x80, align 4
  %145 = load i32, ptr %x77, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %143, i32 noundef %144, i32 noundef %145)
  %146 = load i8, ptr %x106, align 1
  %conv26 = zext i8 %146 to i32
  %147 = load i32, ptr %x78, align 4
  %add27 = add i32 %conv26, %147
  store i32 %add27, ptr %x107, align 4
  %148 = load i32, ptr %x61, align 4
  %149 = load i32, ptr %x91, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext 0, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x109, align 1
  %151 = load i32, ptr %x63, align 4
  %152 = load i32, ptr %x93, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x111, align 1
  %154 = load i32, ptr %x65, align 4
  %155 = load i32, ptr %x95, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i8, ptr %x113, align 1
  %157 = load i32, ptr %x67, align 4
  %158 = load i32, ptr %x97, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %156, i32 noundef %157, i32 noundef %158)
  %159 = load i8, ptr %x115, align 1
  %160 = load i32, ptr %x69, align 4
  %161 = load i32, ptr %x99, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %159, i32 noundef %160, i32 noundef %161)
  %162 = load i8, ptr %x117, align 1
  %163 = load i32, ptr %x71, align 4
  %164 = load i32, ptr %x101, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %162, i32 noundef %163, i32 noundef %164)
  %165 = load i8, ptr %x119, align 1
  %166 = load i32, ptr %x73, align 4
  %167 = load i32, ptr %x103, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167)
  %168 = load i8, ptr %x121, align 1
  %169 = load i32, ptr %x75, align 4
  %170 = load i32, ptr %x105, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %168, i32 noundef %169, i32 noundef %170)
  %171 = load i8, ptr %x123, align 1
  %172 = load i8, ptr %x76, align 1
  %conv28 = zext i8 %172 to i32
  %173 = load i32, ptr %x107, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %171, i32 noundef %conv28, i32 noundef %173)
  %174 = load i32, ptr %x108, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x126, ptr noundef %x127, i32 noundef %174, i32 noundef 307527195)
  %175 = load i32, ptr %x126, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x128, ptr noundef %x129, i32 noundef %175, i32 noundef 268435456)
  %176 = load i32, ptr %x126, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x130, ptr noundef %x131, i32 noundef %176, i32 noundef 350157278)
  %177 = load i32, ptr %x126, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x132, ptr noundef %x133, i32 noundef %177, i32 noundef -1560830762)
  %178 = load i32, ptr %x126, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x134, ptr noundef %x135, i32 noundef %178, i32 noundef 1477600026)
  %179 = load i32, ptr %x126, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x136, ptr noundef %x137, i32 noundef %179, i32 noundef 1559614445)
  %180 = load i32, ptr %x137, align 4
  %181 = load i32, ptr %x134, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext 0, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x139, align 1
  %183 = load i32, ptr %x135, align 4
  %184 = load i32, ptr %x132, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x141, align 1
  %186 = load i32, ptr %x133, align 4
  %187 = load i32, ptr %x130, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x143, align 1
  %conv29 = zext i8 %188 to i32
  %189 = load i32, ptr %x131, align 4
  %add30 = add i32 %conv29, %189
  store i32 %add30, ptr %x144, align 4
  %190 = load i32, ptr %x108, align 4
  %191 = load i32, ptr %x136, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext 0, i32 noundef %190, i32 noundef %191)
  %192 = load i8, ptr %x146, align 1
  %193 = load i32, ptr %x110, align 4
  %194 = load i32, ptr %x138, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %192, i32 noundef %193, i32 noundef %194)
  %195 = load i8, ptr %x148, align 1
  %196 = load i32, ptr %x112, align 4
  %197 = load i32, ptr %x140, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %195, i32 noundef %196, i32 noundef %197)
  %198 = load i8, ptr %x150, align 1
  %199 = load i32, ptr %x114, align 4
  %200 = load i32, ptr %x142, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200)
  %201 = load i8, ptr %x152, align 1
  %202 = load i32, ptr %x116, align 4
  %203 = load i32, ptr %x144, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %201, i32 noundef %202, i32 noundef %203)
  %204 = load i8, ptr %x154, align 1
  %205 = load i32, ptr %x118, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %204, i32 noundef %205, i32 noundef 0)
  %206 = load i8, ptr %x156, align 1
  %207 = load i32, ptr %x120, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %206, i32 noundef %207, i32 noundef 0)
  %208 = load i8, ptr %x158, align 1
  %209 = load i32, ptr %x122, align 4
  %210 = load i32, ptr %x128, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %208, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x160, align 1
  %212 = load i32, ptr %x124, align 4
  %213 = load i32, ptr %x129, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %211, i32 noundef %212, i32 noundef %213)
  %214 = load i8, ptr %x162, align 1
  %conv31 = zext i8 %214 to i32
  %215 = load i8, ptr %x125, align 1
  %conv32 = zext i8 %215 to i32
  %add33 = add i32 %conv31, %conv32
  store i32 %add33, ptr %x163, align 4
  %216 = load i32, ptr %x2, align 4
  %217 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %217, i64 7
  %218 = load i32, ptr %arrayidx34, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x164, ptr noundef %x165, i32 noundef %216, i32 noundef %218)
  %219 = load i32, ptr %x2, align 4
  %220 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %220, i64 6
  %221 = load i32, ptr %arrayidx35, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x166, ptr noundef %x167, i32 noundef %219, i32 noundef %221)
  %222 = load i32, ptr %x2, align 4
  %223 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %223, i64 5
  %224 = load i32, ptr %arrayidx36, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x168, ptr noundef %x169, i32 noundef %222, i32 noundef %224)
  %225 = load i32, ptr %x2, align 4
  %226 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %226, i64 4
  %227 = load i32, ptr %arrayidx37, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x170, ptr noundef %x171, i32 noundef %225, i32 noundef %227)
  %228 = load i32, ptr %x2, align 4
  %229 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %229, i64 3
  %230 = load i32, ptr %arrayidx38, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x172, ptr noundef %x173, i32 noundef %228, i32 noundef %230)
  %231 = load i32, ptr %x2, align 4
  %232 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %232, i64 2
  %233 = load i32, ptr %arrayidx39, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x174, ptr noundef %x175, i32 noundef %231, i32 noundef %233)
  %234 = load i32, ptr %x2, align 4
  %235 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %235, i64 1
  %236 = load i32, ptr %arrayidx40, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x176, ptr noundef %x177, i32 noundef %234, i32 noundef %236)
  %237 = load i32, ptr %x2, align 4
  %238 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %238, i64 0
  %239 = load i32, ptr %arrayidx41, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x178, ptr noundef %x179, i32 noundef %237, i32 noundef %239)
  %240 = load i32, ptr %x179, align 4
  %241 = load i32, ptr %x176, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext 0, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x181, align 1
  %243 = load i32, ptr %x177, align 4
  %244 = load i32, ptr %x174, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %242, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x183, align 1
  %246 = load i32, ptr %x175, align 4
  %247 = load i32, ptr %x172, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i8, ptr %x185, align 1
  %249 = load i32, ptr %x173, align 4
  %250 = load i32, ptr %x170, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %248, i32 noundef %249, i32 noundef %250)
  %251 = load i8, ptr %x187, align 1
  %252 = load i32, ptr %x171, align 4
  %253 = load i32, ptr %x168, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %251, i32 noundef %252, i32 noundef %253)
  %254 = load i8, ptr %x189, align 1
  %255 = load i32, ptr %x169, align 4
  %256 = load i32, ptr %x166, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %254, i32 noundef %255, i32 noundef %256)
  %257 = load i8, ptr %x191, align 1
  %258 = load i32, ptr %x167, align 4
  %259 = load i32, ptr %x164, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %257, i32 noundef %258, i32 noundef %259)
  %260 = load i8, ptr %x193, align 1
  %conv42 = zext i8 %260 to i32
  %261 = load i32, ptr %x165, align 4
  %add43 = add i32 %conv42, %261
  store i32 %add43, ptr %x194, align 4
  %262 = load i32, ptr %x147, align 4
  %263 = load i32, ptr %x178, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext 0, i32 noundef %262, i32 noundef %263)
  %264 = load i8, ptr %x196, align 1
  %265 = load i32, ptr %x149, align 4
  %266 = load i32, ptr %x180, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %264, i32 noundef %265, i32 noundef %266)
  %267 = load i8, ptr %x198, align 1
  %268 = load i32, ptr %x151, align 4
  %269 = load i32, ptr %x182, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %267, i32 noundef %268, i32 noundef %269)
  %270 = load i8, ptr %x200, align 1
  %271 = load i32, ptr %x153, align 4
  %272 = load i32, ptr %x184, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %270, i32 noundef %271, i32 noundef %272)
  %273 = load i8, ptr %x202, align 1
  %274 = load i32, ptr %x155, align 4
  %275 = load i32, ptr %x186, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %273, i32 noundef %274, i32 noundef %275)
  %276 = load i8, ptr %x204, align 1
  %277 = load i32, ptr %x157, align 4
  %278 = load i32, ptr %x188, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %276, i32 noundef %277, i32 noundef %278)
  %279 = load i8, ptr %x206, align 1
  %280 = load i32, ptr %x159, align 4
  %281 = load i32, ptr %x190, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %279, i32 noundef %280, i32 noundef %281)
  %282 = load i8, ptr %x208, align 1
  %283 = load i32, ptr %x161, align 4
  %284 = load i32, ptr %x192, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %282, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x210, align 1
  %286 = load i32, ptr %x163, align 4
  %287 = load i32, ptr %x194, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %285, i32 noundef %286, i32 noundef %287)
  %288 = load i32, ptr %x195, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x213, ptr noundef %x214, i32 noundef %288, i32 noundef 307527195)
  %289 = load i32, ptr %x213, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x215, ptr noundef %x216, i32 noundef %289, i32 noundef 268435456)
  %290 = load i32, ptr %x213, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x217, ptr noundef %x218, i32 noundef %290, i32 noundef 350157278)
  %291 = load i32, ptr %x213, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x219, ptr noundef %x220, i32 noundef %291, i32 noundef -1560830762)
  %292 = load i32, ptr %x213, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x221, ptr noundef %x222, i32 noundef %292, i32 noundef 1477600026)
  %293 = load i32, ptr %x213, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x223, ptr noundef %x224, i32 noundef %293, i32 noundef 1559614445)
  %294 = load i32, ptr %x224, align 4
  %295 = load i32, ptr %x221, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext 0, i32 noundef %294, i32 noundef %295)
  %296 = load i8, ptr %x226, align 1
  %297 = load i32, ptr %x222, align 4
  %298 = load i32, ptr %x219, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %296, i32 noundef %297, i32 noundef %298)
  %299 = load i8, ptr %x228, align 1
  %300 = load i32, ptr %x220, align 4
  %301 = load i32, ptr %x217, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %299, i32 noundef %300, i32 noundef %301)
  %302 = load i8, ptr %x230, align 1
  %conv44 = zext i8 %302 to i32
  %303 = load i32, ptr %x218, align 4
  %add45 = add i32 %conv44, %303
  store i32 %add45, ptr %x231, align 4
  %304 = load i32, ptr %x195, align 4
  %305 = load i32, ptr %x223, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext 0, i32 noundef %304, i32 noundef %305)
  %306 = load i8, ptr %x233, align 1
  %307 = load i32, ptr %x197, align 4
  %308 = load i32, ptr %x225, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %306, i32 noundef %307, i32 noundef %308)
  %309 = load i8, ptr %x235, align 1
  %310 = load i32, ptr %x199, align 4
  %311 = load i32, ptr %x227, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %309, i32 noundef %310, i32 noundef %311)
  %312 = load i8, ptr %x237, align 1
  %313 = load i32, ptr %x201, align 4
  %314 = load i32, ptr %x229, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %312, i32 noundef %313, i32 noundef %314)
  %315 = load i8, ptr %x239, align 1
  %316 = load i32, ptr %x203, align 4
  %317 = load i32, ptr %x231, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %315, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x241, align 1
  %319 = load i32, ptr %x205, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %318, i32 noundef %319, i32 noundef 0)
  %320 = load i8, ptr %x243, align 1
  %321 = load i32, ptr %x207, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %320, i32 noundef %321, i32 noundef 0)
  %322 = load i8, ptr %x245, align 1
  %323 = load i32, ptr %x209, align 4
  %324 = load i32, ptr %x215, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %322, i32 noundef %323, i32 noundef %324)
  %325 = load i8, ptr %x247, align 1
  %326 = load i32, ptr %x211, align 4
  %327 = load i32, ptr %x216, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %325, i32 noundef %326, i32 noundef %327)
  %328 = load i8, ptr %x249, align 1
  %conv46 = zext i8 %328 to i32
  %329 = load i8, ptr %x212, align 1
  %conv47 = zext i8 %329 to i32
  %add48 = add i32 %conv46, %conv47
  store i32 %add48, ptr %x250, align 4
  %330 = load i32, ptr %x3, align 4
  %331 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %331, i64 7
  %332 = load i32, ptr %arrayidx49, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x251, ptr noundef %x252, i32 noundef %330, i32 noundef %332)
  %333 = load i32, ptr %x3, align 4
  %334 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %334, i64 6
  %335 = load i32, ptr %arrayidx50, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x253, ptr noundef %x254, i32 noundef %333, i32 noundef %335)
  %336 = load i32, ptr %x3, align 4
  %337 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %337, i64 5
  %338 = load i32, ptr %arrayidx51, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x255, ptr noundef %x256, i32 noundef %336, i32 noundef %338)
  %339 = load i32, ptr %x3, align 4
  %340 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %340, i64 4
  %341 = load i32, ptr %arrayidx52, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x257, ptr noundef %x258, i32 noundef %339, i32 noundef %341)
  %342 = load i32, ptr %x3, align 4
  %343 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %343, i64 3
  %344 = load i32, ptr %arrayidx53, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x259, ptr noundef %x260, i32 noundef %342, i32 noundef %344)
  %345 = load i32, ptr %x3, align 4
  %346 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %346, i64 2
  %347 = load i32, ptr %arrayidx54, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x261, ptr noundef %x262, i32 noundef %345, i32 noundef %347)
  %348 = load i32, ptr %x3, align 4
  %349 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %349, i64 1
  %350 = load i32, ptr %arrayidx55, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x263, ptr noundef %x264, i32 noundef %348, i32 noundef %350)
  %351 = load i32, ptr %x3, align 4
  %352 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %352, i64 0
  %353 = load i32, ptr %arrayidx56, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x265, ptr noundef %x266, i32 noundef %351, i32 noundef %353)
  %354 = load i32, ptr %x266, align 4
  %355 = load i32, ptr %x263, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext 0, i32 noundef %354, i32 noundef %355)
  %356 = load i8, ptr %x268, align 1
  %357 = load i32, ptr %x264, align 4
  %358 = load i32, ptr %x261, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %356, i32 noundef %357, i32 noundef %358)
  %359 = load i8, ptr %x270, align 1
  %360 = load i32, ptr %x262, align 4
  %361 = load i32, ptr %x259, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %359, i32 noundef %360, i32 noundef %361)
  %362 = load i8, ptr %x272, align 1
  %363 = load i32, ptr %x260, align 4
  %364 = load i32, ptr %x257, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %362, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x274, align 1
  %366 = load i32, ptr %x258, align 4
  %367 = load i32, ptr %x255, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x276, align 1
  %369 = load i32, ptr %x256, align 4
  %370 = load i32, ptr %x253, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %368, i32 noundef %369, i32 noundef %370)
  %371 = load i8, ptr %x278, align 1
  %372 = load i32, ptr %x254, align 4
  %373 = load i32, ptr %x251, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %371, i32 noundef %372, i32 noundef %373)
  %374 = load i8, ptr %x280, align 1
  %conv57 = zext i8 %374 to i32
  %375 = load i32, ptr %x252, align 4
  %add58 = add i32 %conv57, %375
  store i32 %add58, ptr %x281, align 4
  %376 = load i32, ptr %x234, align 4
  %377 = load i32, ptr %x265, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext 0, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x283, align 1
  %379 = load i32, ptr %x236, align 4
  %380 = load i32, ptr %x267, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x285, align 1
  %382 = load i32, ptr %x238, align 4
  %383 = load i32, ptr %x269, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x287, align 1
  %385 = load i32, ptr %x240, align 4
  %386 = load i32, ptr %x271, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x289, align 1
  %388 = load i32, ptr %x242, align 4
  %389 = load i32, ptr %x273, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i8, ptr %x291, align 1
  %391 = load i32, ptr %x244, align 4
  %392 = load i32, ptr %x275, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %390, i32 noundef %391, i32 noundef %392)
  %393 = load i8, ptr %x293, align 1
  %394 = load i32, ptr %x246, align 4
  %395 = load i32, ptr %x277, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %393, i32 noundef %394, i32 noundef %395)
  %396 = load i8, ptr %x295, align 1
  %397 = load i32, ptr %x248, align 4
  %398 = load i32, ptr %x279, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %396, i32 noundef %397, i32 noundef %398)
  %399 = load i8, ptr %x297, align 1
  %400 = load i32, ptr %x250, align 4
  %401 = load i32, ptr %x281, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %399, i32 noundef %400, i32 noundef %401)
  %402 = load i32, ptr %x282, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x300, ptr noundef %x301, i32 noundef %402, i32 noundef 307527195)
  %403 = load i32, ptr %x300, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x302, ptr noundef %x303, i32 noundef %403, i32 noundef 268435456)
  %404 = load i32, ptr %x300, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x304, ptr noundef %x305, i32 noundef %404, i32 noundef 350157278)
  %405 = load i32, ptr %x300, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x306, ptr noundef %x307, i32 noundef %405, i32 noundef -1560830762)
  %406 = load i32, ptr %x300, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x308, ptr noundef %x309, i32 noundef %406, i32 noundef 1477600026)
  %407 = load i32, ptr %x300, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x310, ptr noundef %x311, i32 noundef %407, i32 noundef 1559614445)
  %408 = load i32, ptr %x311, align 4
  %409 = load i32, ptr %x308, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext 0, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x313, align 1
  %411 = load i32, ptr %x309, align 4
  %412 = load i32, ptr %x306, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x315, align 1
  %414 = load i32, ptr %x307, align 4
  %415 = load i32, ptr %x304, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x317, align 1
  %conv59 = zext i8 %416 to i32
  %417 = load i32, ptr %x305, align 4
  %add60 = add i32 %conv59, %417
  store i32 %add60, ptr %x318, align 4
  %418 = load i32, ptr %x282, align 4
  %419 = load i32, ptr %x310, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext 0, i32 noundef %418, i32 noundef %419)
  %420 = load i8, ptr %x320, align 1
  %421 = load i32, ptr %x284, align 4
  %422 = load i32, ptr %x312, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %420, i32 noundef %421, i32 noundef %422)
  %423 = load i8, ptr %x322, align 1
  %424 = load i32, ptr %x286, align 4
  %425 = load i32, ptr %x314, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %423, i32 noundef %424, i32 noundef %425)
  %426 = load i8, ptr %x324, align 1
  %427 = load i32, ptr %x288, align 4
  %428 = load i32, ptr %x316, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %426, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x326, align 1
  %430 = load i32, ptr %x290, align 4
  %431 = load i32, ptr %x318, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x328, align 1
  %433 = load i32, ptr %x292, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %432, i32 noundef %433, i32 noundef 0)
  %434 = load i8, ptr %x330, align 1
  %435 = load i32, ptr %x294, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %434, i32 noundef %435, i32 noundef 0)
  %436 = load i8, ptr %x332, align 1
  %437 = load i32, ptr %x296, align 4
  %438 = load i32, ptr %x302, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %436, i32 noundef %437, i32 noundef %438)
  %439 = load i8, ptr %x334, align 1
  %440 = load i32, ptr %x298, align 4
  %441 = load i32, ptr %x303, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %439, i32 noundef %440, i32 noundef %441)
  %442 = load i8, ptr %x336, align 1
  %conv61 = zext i8 %442 to i32
  %443 = load i8, ptr %x299, align 1
  %conv62 = zext i8 %443 to i32
  %add63 = add i32 %conv61, %conv62
  store i32 %add63, ptr %x337, align 4
  %444 = load i32, ptr %x4, align 4
  %445 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %445, i64 7
  %446 = load i32, ptr %arrayidx64, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x338, ptr noundef %x339, i32 noundef %444, i32 noundef %446)
  %447 = load i32, ptr %x4, align 4
  %448 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %448, i64 6
  %449 = load i32, ptr %arrayidx65, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x340, ptr noundef %x341, i32 noundef %447, i32 noundef %449)
  %450 = load i32, ptr %x4, align 4
  %451 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %451, i64 5
  %452 = load i32, ptr %arrayidx66, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %450, i32 noundef %452)
  %453 = load i32, ptr %x4, align 4
  %454 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %454, i64 4
  %455 = load i32, ptr %arrayidx67, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %453, i32 noundef %455)
  %456 = load i32, ptr %x4, align 4
  %457 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %457, i64 3
  %458 = load i32, ptr %arrayidx68, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %456, i32 noundef %458)
  %459 = load i32, ptr %x4, align 4
  %460 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %460, i64 2
  %461 = load i32, ptr %arrayidx69, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x348, ptr noundef %x349, i32 noundef %459, i32 noundef %461)
  %462 = load i32, ptr %x4, align 4
  %463 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %463, i64 1
  %464 = load i32, ptr %arrayidx70, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x350, ptr noundef %x351, i32 noundef %462, i32 noundef %464)
  %465 = load i32, ptr %x4, align 4
  %466 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %466, i64 0
  %467 = load i32, ptr %arrayidx71, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x352, ptr noundef %x353, i32 noundef %465, i32 noundef %467)
  %468 = load i32, ptr %x353, align 4
  %469 = load i32, ptr %x350, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext 0, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x355, align 1
  %471 = load i32, ptr %x351, align 4
  %472 = load i32, ptr %x348, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x357, align 1
  %474 = load i32, ptr %x349, align 4
  %475 = load i32, ptr %x346, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x359, align 1
  %477 = load i32, ptr %x347, align 4
  %478 = load i32, ptr %x344, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x361, align 1
  %480 = load i32, ptr %x345, align 4
  %481 = load i32, ptr %x342, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i8, ptr %x363, align 1
  %483 = load i32, ptr %x343, align 4
  %484 = load i32, ptr %x340, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %482, i32 noundef %483, i32 noundef %484)
  %485 = load i8, ptr %x365, align 1
  %486 = load i32, ptr %x341, align 4
  %487 = load i32, ptr %x338, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %485, i32 noundef %486, i32 noundef %487)
  %488 = load i8, ptr %x367, align 1
  %conv72 = zext i8 %488 to i32
  %489 = load i32, ptr %x339, align 4
  %add73 = add i32 %conv72, %489
  store i32 %add73, ptr %x368, align 4
  %490 = load i32, ptr %x321, align 4
  %491 = load i32, ptr %x352, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext 0, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x370, align 1
  %493 = load i32, ptr %x323, align 4
  %494 = load i32, ptr %x354, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x372, align 1
  %496 = load i32, ptr %x325, align 4
  %497 = load i32, ptr %x356, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %495, i32 noundef %496, i32 noundef %497)
  %498 = load i8, ptr %x374, align 1
  %499 = load i32, ptr %x327, align 4
  %500 = load i32, ptr %x358, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %498, i32 noundef %499, i32 noundef %500)
  %501 = load i8, ptr %x376, align 1
  %502 = load i32, ptr %x329, align 4
  %503 = load i32, ptr %x360, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext %501, i32 noundef %502, i32 noundef %503)
  %504 = load i8, ptr %x378, align 1
  %505 = load i32, ptr %x331, align 4
  %506 = load i32, ptr %x362, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %504, i32 noundef %505, i32 noundef %506)
  %507 = load i8, ptr %x380, align 1
  %508 = load i32, ptr %x333, align 4
  %509 = load i32, ptr %x364, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %507, i32 noundef %508, i32 noundef %509)
  %510 = load i8, ptr %x382, align 1
  %511 = load i32, ptr %x335, align 4
  %512 = load i32, ptr %x366, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %510, i32 noundef %511, i32 noundef %512)
  %513 = load i8, ptr %x384, align 1
  %514 = load i32, ptr %x337, align 4
  %515 = load i32, ptr %x368, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %513, i32 noundef %514, i32 noundef %515)
  %516 = load i32, ptr %x369, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x387, ptr noundef %x388, i32 noundef %516, i32 noundef 307527195)
  %517 = load i32, ptr %x387, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x389, ptr noundef %x390, i32 noundef %517, i32 noundef 268435456)
  %518 = load i32, ptr %x387, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x391, ptr noundef %x392, i32 noundef %518, i32 noundef 350157278)
  %519 = load i32, ptr %x387, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x393, ptr noundef %x394, i32 noundef %519, i32 noundef -1560830762)
  %520 = load i32, ptr %x387, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x395, ptr noundef %x396, i32 noundef %520, i32 noundef 1477600026)
  %521 = load i32, ptr %x387, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x397, ptr noundef %x398, i32 noundef %521, i32 noundef 1559614445)
  %522 = load i32, ptr %x398, align 4
  %523 = load i32, ptr %x395, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext 0, i32 noundef %522, i32 noundef %523)
  %524 = load i8, ptr %x400, align 1
  %525 = load i32, ptr %x396, align 4
  %526 = load i32, ptr %x393, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %524, i32 noundef %525, i32 noundef %526)
  %527 = load i8, ptr %x402, align 1
  %528 = load i32, ptr %x394, align 4
  %529 = load i32, ptr %x391, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %527, i32 noundef %528, i32 noundef %529)
  %530 = load i8, ptr %x404, align 1
  %conv74 = zext i8 %530 to i32
  %531 = load i32, ptr %x392, align 4
  %add75 = add i32 %conv74, %531
  store i32 %add75, ptr %x405, align 4
  %532 = load i32, ptr %x369, align 4
  %533 = load i32, ptr %x397, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext 0, i32 noundef %532, i32 noundef %533)
  %534 = load i8, ptr %x407, align 1
  %535 = load i32, ptr %x371, align 4
  %536 = load i32, ptr %x399, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %534, i32 noundef %535, i32 noundef %536)
  %537 = load i8, ptr %x409, align 1
  %538 = load i32, ptr %x373, align 4
  %539 = load i32, ptr %x401, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %537, i32 noundef %538, i32 noundef %539)
  %540 = load i8, ptr %x411, align 1
  %541 = load i32, ptr %x375, align 4
  %542 = load i32, ptr %x403, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %540, i32 noundef %541, i32 noundef %542)
  %543 = load i8, ptr %x413, align 1
  %544 = load i32, ptr %x377, align 4
  %545 = load i32, ptr %x405, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %543, i32 noundef %544, i32 noundef %545)
  %546 = load i8, ptr %x415, align 1
  %547 = load i32, ptr %x379, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %546, i32 noundef %547, i32 noundef 0)
  %548 = load i8, ptr %x417, align 1
  %549 = load i32, ptr %x381, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %548, i32 noundef %549, i32 noundef 0)
  %550 = load i8, ptr %x419, align 1
  %551 = load i32, ptr %x383, align 4
  %552 = load i32, ptr %x389, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %550, i32 noundef %551, i32 noundef %552)
  %553 = load i8, ptr %x421, align 1
  %554 = load i32, ptr %x385, align 4
  %555 = load i32, ptr %x390, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %553, i32 noundef %554, i32 noundef %555)
  %556 = load i8, ptr %x423, align 1
  %conv76 = zext i8 %556 to i32
  %557 = load i8, ptr %x386, align 1
  %conv77 = zext i8 %557 to i32
  %add78 = add i32 %conv76, %conv77
  store i32 %add78, ptr %x424, align 4
  %558 = load i32, ptr %x5, align 4
  %559 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %559, i64 7
  %560 = load i32, ptr %arrayidx79, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %558, i32 noundef %560)
  %561 = load i32, ptr %x5, align 4
  %562 = load ptr, ptr %arg1.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %562, i64 6
  %563 = load i32, ptr %arrayidx80, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x427, ptr noundef %x428, i32 noundef %561, i32 noundef %563)
  %564 = load i32, ptr %x5, align 4
  %565 = load ptr, ptr %arg1.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %565, i64 5
  %566 = load i32, ptr %arrayidx81, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x429, ptr noundef %x430, i32 noundef %564, i32 noundef %566)
  %567 = load i32, ptr %x5, align 4
  %568 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %568, i64 4
  %569 = load i32, ptr %arrayidx82, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x431, ptr noundef %x432, i32 noundef %567, i32 noundef %569)
  %570 = load i32, ptr %x5, align 4
  %571 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %571, i64 3
  %572 = load i32, ptr %arrayidx83, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x433, ptr noundef %x434, i32 noundef %570, i32 noundef %572)
  %573 = load i32, ptr %x5, align 4
  %574 = load ptr, ptr %arg1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %574, i64 2
  %575 = load i32, ptr %arrayidx84, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x435, ptr noundef %x436, i32 noundef %573, i32 noundef %575)
  %576 = load i32, ptr %x5, align 4
  %577 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %577, i64 1
  %578 = load i32, ptr %arrayidx85, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x437, ptr noundef %x438, i32 noundef %576, i32 noundef %578)
  %579 = load i32, ptr %x5, align 4
  %580 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %580, i64 0
  %581 = load i32, ptr %arrayidx86, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x439, ptr noundef %x440, i32 noundef %579, i32 noundef %581)
  %582 = load i32, ptr %x440, align 4
  %583 = load i32, ptr %x437, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext 0, i32 noundef %582, i32 noundef %583)
  %584 = load i8, ptr %x442, align 1
  %585 = load i32, ptr %x438, align 4
  %586 = load i32, ptr %x435, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %584, i32 noundef %585, i32 noundef %586)
  %587 = load i8, ptr %x444, align 1
  %588 = load i32, ptr %x436, align 4
  %589 = load i32, ptr %x433, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %587, i32 noundef %588, i32 noundef %589)
  %590 = load i8, ptr %x446, align 1
  %591 = load i32, ptr %x434, align 4
  %592 = load i32, ptr %x431, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %590, i32 noundef %591, i32 noundef %592)
  %593 = load i8, ptr %x448, align 1
  %594 = load i32, ptr %x432, align 4
  %595 = load i32, ptr %x429, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %593, i32 noundef %594, i32 noundef %595)
  %596 = load i8, ptr %x450, align 1
  %597 = load i32, ptr %x430, align 4
  %598 = load i32, ptr %x427, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %596, i32 noundef %597, i32 noundef %598)
  %599 = load i8, ptr %x452, align 1
  %600 = load i32, ptr %x428, align 4
  %601 = load i32, ptr %x425, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %599, i32 noundef %600, i32 noundef %601)
  %602 = load i8, ptr %x454, align 1
  %conv87 = zext i8 %602 to i32
  %603 = load i32, ptr %x426, align 4
  %add88 = add i32 %conv87, %603
  store i32 %add88, ptr %x455, align 4
  %604 = load i32, ptr %x408, align 4
  %605 = load i32, ptr %x439, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext 0, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x457, align 1
  %607 = load i32, ptr %x410, align 4
  %608 = load i32, ptr %x441, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %606, i32 noundef %607, i32 noundef %608)
  %609 = load i8, ptr %x459, align 1
  %610 = load i32, ptr %x412, align 4
  %611 = load i32, ptr %x443, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %609, i32 noundef %610, i32 noundef %611)
  %612 = load i8, ptr %x461, align 1
  %613 = load i32, ptr %x414, align 4
  %614 = load i32, ptr %x445, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %612, i32 noundef %613, i32 noundef %614)
  %615 = load i8, ptr %x463, align 1
  %616 = load i32, ptr %x416, align 4
  %617 = load i32, ptr %x447, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %615, i32 noundef %616, i32 noundef %617)
  %618 = load i8, ptr %x465, align 1
  %619 = load i32, ptr %x418, align 4
  %620 = load i32, ptr %x449, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %618, i32 noundef %619, i32 noundef %620)
  %621 = load i8, ptr %x467, align 1
  %622 = load i32, ptr %x420, align 4
  %623 = load i32, ptr %x451, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x468, ptr noundef %x469, i8 noundef zeroext %621, i32 noundef %622, i32 noundef %623)
  %624 = load i8, ptr %x469, align 1
  %625 = load i32, ptr %x422, align 4
  %626 = load i32, ptr %x453, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x470, ptr noundef %x471, i8 noundef zeroext %624, i32 noundef %625, i32 noundef %626)
  %627 = load i8, ptr %x471, align 1
  %628 = load i32, ptr %x424, align 4
  %629 = load i32, ptr %x455, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x472, ptr noundef %x473, i8 noundef zeroext %627, i32 noundef %628, i32 noundef %629)
  %630 = load i32, ptr %x456, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x474, ptr noundef %x475, i32 noundef %630, i32 noundef 307527195)
  %631 = load i32, ptr %x474, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x476, ptr noundef %x477, i32 noundef %631, i32 noundef 268435456)
  %632 = load i32, ptr %x474, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x478, ptr noundef %x479, i32 noundef %632, i32 noundef 350157278)
  %633 = load i32, ptr %x474, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x480, ptr noundef %x481, i32 noundef %633, i32 noundef -1560830762)
  %634 = load i32, ptr %x474, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x482, ptr noundef %x483, i32 noundef %634, i32 noundef 1477600026)
  %635 = load i32, ptr %x474, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x484, ptr noundef %x485, i32 noundef %635, i32 noundef 1559614445)
  %636 = load i32, ptr %x485, align 4
  %637 = load i32, ptr %x482, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext 0, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x487, align 1
  %639 = load i32, ptr %x483, align 4
  %640 = load i32, ptr %x480, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x489, align 1
  %642 = load i32, ptr %x481, align 4
  %643 = load i32, ptr %x478, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %641, i32 noundef %642, i32 noundef %643)
  %644 = load i8, ptr %x491, align 1
  %conv89 = zext i8 %644 to i32
  %645 = load i32, ptr %x479, align 4
  %add90 = add i32 %conv89, %645
  store i32 %add90, ptr %x492, align 4
  %646 = load i32, ptr %x456, align 4
  %647 = load i32, ptr %x484, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext 0, i32 noundef %646, i32 noundef %647)
  %648 = load i8, ptr %x494, align 1
  %649 = load i32, ptr %x458, align 4
  %650 = load i32, ptr %x486, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %648, i32 noundef %649, i32 noundef %650)
  %651 = load i8, ptr %x496, align 1
  %652 = load i32, ptr %x460, align 4
  %653 = load i32, ptr %x488, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext %651, i32 noundef %652, i32 noundef %653)
  %654 = load i8, ptr %x498, align 1
  %655 = load i32, ptr %x462, align 4
  %656 = load i32, ptr %x490, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %654, i32 noundef %655, i32 noundef %656)
  %657 = load i8, ptr %x500, align 1
  %658 = load i32, ptr %x464, align 4
  %659 = load i32, ptr %x492, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x501, ptr noundef %x502, i8 noundef zeroext %657, i32 noundef %658, i32 noundef %659)
  %660 = load i8, ptr %x502, align 1
  %661 = load i32, ptr %x466, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x503, ptr noundef %x504, i8 noundef zeroext %660, i32 noundef %661, i32 noundef 0)
  %662 = load i8, ptr %x504, align 1
  %663 = load i32, ptr %x468, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext %662, i32 noundef %663, i32 noundef 0)
  %664 = load i8, ptr %x506, align 1
  %665 = load i32, ptr %x470, align 4
  %666 = load i32, ptr %x476, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext %664, i32 noundef %665, i32 noundef %666)
  %667 = load i8, ptr %x508, align 1
  %668 = load i32, ptr %x472, align 4
  %669 = load i32, ptr %x477, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %667, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x510, align 1
  %conv91 = zext i8 %670 to i32
  %671 = load i8, ptr %x473, align 1
  %conv92 = zext i8 %671 to i32
  %add93 = add i32 %conv91, %conv92
  store i32 %add93, ptr %x511, align 4
  %672 = load i32, ptr %x6, align 4
  %673 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %673, i64 7
  %674 = load i32, ptr %arrayidx94, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x512, ptr noundef %x513, i32 noundef %672, i32 noundef %674)
  %675 = load i32, ptr %x6, align 4
  %676 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %676, i64 6
  %677 = load i32, ptr %arrayidx95, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x514, ptr noundef %x515, i32 noundef %675, i32 noundef %677)
  %678 = load i32, ptr %x6, align 4
  %679 = load ptr, ptr %arg1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %679, i64 5
  %680 = load i32, ptr %arrayidx96, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x516, ptr noundef %x517, i32 noundef %678, i32 noundef %680)
  %681 = load i32, ptr %x6, align 4
  %682 = load ptr, ptr %arg1.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %682, i64 4
  %683 = load i32, ptr %arrayidx97, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x518, ptr noundef %x519, i32 noundef %681, i32 noundef %683)
  %684 = load i32, ptr %x6, align 4
  %685 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %685, i64 3
  %686 = load i32, ptr %arrayidx98, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x520, ptr noundef %x521, i32 noundef %684, i32 noundef %686)
  %687 = load i32, ptr %x6, align 4
  %688 = load ptr, ptr %arg1.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %688, i64 2
  %689 = load i32, ptr %arrayidx99, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x522, ptr noundef %x523, i32 noundef %687, i32 noundef %689)
  %690 = load i32, ptr %x6, align 4
  %691 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %691, i64 1
  %692 = load i32, ptr %arrayidx100, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x524, ptr noundef %x525, i32 noundef %690, i32 noundef %692)
  %693 = load i32, ptr %x6, align 4
  %694 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %694, i64 0
  %695 = load i32, ptr %arrayidx101, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x526, ptr noundef %x527, i32 noundef %693, i32 noundef %695)
  %696 = load i32, ptr %x527, align 4
  %697 = load i32, ptr %x524, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext 0, i32 noundef %696, i32 noundef %697)
  %698 = load i8, ptr %x529, align 1
  %699 = load i32, ptr %x525, align 4
  %700 = load i32, ptr %x522, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %698, i32 noundef %699, i32 noundef %700)
  %701 = load i8, ptr %x531, align 1
  %702 = load i32, ptr %x523, align 4
  %703 = load i32, ptr %x520, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %701, i32 noundef %702, i32 noundef %703)
  %704 = load i8, ptr %x533, align 1
  %705 = load i32, ptr %x521, align 4
  %706 = load i32, ptr %x518, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %704, i32 noundef %705, i32 noundef %706)
  %707 = load i8, ptr %x535, align 1
  %708 = load i32, ptr %x519, align 4
  %709 = load i32, ptr %x516, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %707, i32 noundef %708, i32 noundef %709)
  %710 = load i8, ptr %x537, align 1
  %711 = load i32, ptr %x517, align 4
  %712 = load i32, ptr %x514, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %710, i32 noundef %711, i32 noundef %712)
  %713 = load i8, ptr %x539, align 1
  %714 = load i32, ptr %x515, align 4
  %715 = load i32, ptr %x512, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext %713, i32 noundef %714, i32 noundef %715)
  %716 = load i8, ptr %x541, align 1
  %conv102 = zext i8 %716 to i32
  %717 = load i32, ptr %x513, align 4
  %add103 = add i32 %conv102, %717
  store i32 %add103, ptr %x542, align 4
  %718 = load i32, ptr %x495, align 4
  %719 = load i32, ptr %x526, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext 0, i32 noundef %718, i32 noundef %719)
  %720 = load i8, ptr %x544, align 1
  %721 = load i32, ptr %x497, align 4
  %722 = load i32, ptr %x528, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %720, i32 noundef %721, i32 noundef %722)
  %723 = load i8, ptr %x546, align 1
  %724 = load i32, ptr %x499, align 4
  %725 = load i32, ptr %x530, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %723, i32 noundef %724, i32 noundef %725)
  %726 = load i8, ptr %x548, align 1
  %727 = load i32, ptr %x501, align 4
  %728 = load i32, ptr %x532, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %726, i32 noundef %727, i32 noundef %728)
  %729 = load i8, ptr %x550, align 1
  %730 = load i32, ptr %x503, align 4
  %731 = load i32, ptr %x534, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %729, i32 noundef %730, i32 noundef %731)
  %732 = load i8, ptr %x552, align 1
  %733 = load i32, ptr %x505, align 4
  %734 = load i32, ptr %x536, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext %732, i32 noundef %733, i32 noundef %734)
  %735 = load i8, ptr %x554, align 1
  %736 = load i32, ptr %x507, align 4
  %737 = load i32, ptr %x538, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %735, i32 noundef %736, i32 noundef %737)
  %738 = load i8, ptr %x556, align 1
  %739 = load i32, ptr %x509, align 4
  %740 = load i32, ptr %x540, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %738, i32 noundef %739, i32 noundef %740)
  %741 = load i8, ptr %x558, align 1
  %742 = load i32, ptr %x511, align 4
  %743 = load i32, ptr %x542, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %741, i32 noundef %742, i32 noundef %743)
  %744 = load i32, ptr %x543, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x561, ptr noundef %x562, i32 noundef %744, i32 noundef 307527195)
  %745 = load i32, ptr %x561, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x563, ptr noundef %x564, i32 noundef %745, i32 noundef 268435456)
  %746 = load i32, ptr %x561, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x565, ptr noundef %x566, i32 noundef %746, i32 noundef 350157278)
  %747 = load i32, ptr %x561, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x567, ptr noundef %x568, i32 noundef %747, i32 noundef -1560830762)
  %748 = load i32, ptr %x561, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x569, ptr noundef %x570, i32 noundef %748, i32 noundef 1477600026)
  %749 = load i32, ptr %x561, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x571, ptr noundef %x572, i32 noundef %749, i32 noundef 1559614445)
  %750 = load i32, ptr %x572, align 4
  %751 = load i32, ptr %x569, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x573, ptr noundef %x574, i8 noundef zeroext 0, i32 noundef %750, i32 noundef %751)
  %752 = load i8, ptr %x574, align 1
  %753 = load i32, ptr %x570, align 4
  %754 = load i32, ptr %x567, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x575, ptr noundef %x576, i8 noundef zeroext %752, i32 noundef %753, i32 noundef %754)
  %755 = load i8, ptr %x576, align 1
  %756 = load i32, ptr %x568, align 4
  %757 = load i32, ptr %x565, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext %755, i32 noundef %756, i32 noundef %757)
  %758 = load i8, ptr %x578, align 1
  %conv104 = zext i8 %758 to i32
  %759 = load i32, ptr %x566, align 4
  %add105 = add i32 %conv104, %759
  store i32 %add105, ptr %x579, align 4
  %760 = load i32, ptr %x543, align 4
  %761 = load i32, ptr %x571, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x580, ptr noundef %x581, i8 noundef zeroext 0, i32 noundef %760, i32 noundef %761)
  %762 = load i8, ptr %x581, align 1
  %763 = load i32, ptr %x545, align 4
  %764 = load i32, ptr %x573, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x582, ptr noundef %x583, i8 noundef zeroext %762, i32 noundef %763, i32 noundef %764)
  %765 = load i8, ptr %x583, align 1
  %766 = load i32, ptr %x547, align 4
  %767 = load i32, ptr %x575, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x584, ptr noundef %x585, i8 noundef zeroext %765, i32 noundef %766, i32 noundef %767)
  %768 = load i8, ptr %x585, align 1
  %769 = load i32, ptr %x549, align 4
  %770 = load i32, ptr %x577, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x586, ptr noundef %x587, i8 noundef zeroext %768, i32 noundef %769, i32 noundef %770)
  %771 = load i8, ptr %x587, align 1
  %772 = load i32, ptr %x551, align 4
  %773 = load i32, ptr %x579, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x588, ptr noundef %x589, i8 noundef zeroext %771, i32 noundef %772, i32 noundef %773)
  %774 = load i8, ptr %x589, align 1
  %775 = load i32, ptr %x553, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x590, ptr noundef %x591, i8 noundef zeroext %774, i32 noundef %775, i32 noundef 0)
  %776 = load i8, ptr %x591, align 1
  %777 = load i32, ptr %x555, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x592, ptr noundef %x593, i8 noundef zeroext %776, i32 noundef %777, i32 noundef 0)
  %778 = load i8, ptr %x593, align 1
  %779 = load i32, ptr %x557, align 4
  %780 = load i32, ptr %x563, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x594, ptr noundef %x595, i8 noundef zeroext %778, i32 noundef %779, i32 noundef %780)
  %781 = load i8, ptr %x595, align 1
  %782 = load i32, ptr %x559, align 4
  %783 = load i32, ptr %x564, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x596, ptr noundef %x597, i8 noundef zeroext %781, i32 noundef %782, i32 noundef %783)
  %784 = load i8, ptr %x597, align 1
  %conv106 = zext i8 %784 to i32
  %785 = load i8, ptr %x560, align 1
  %conv107 = zext i8 %785 to i32
  %add108 = add i32 %conv106, %conv107
  store i32 %add108, ptr %x598, align 4
  %786 = load i32, ptr %x7, align 4
  %787 = load ptr, ptr %arg1.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %787, i64 7
  %788 = load i32, ptr %arrayidx109, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x599, ptr noundef %x600, i32 noundef %786, i32 noundef %788)
  %789 = load i32, ptr %x7, align 4
  %790 = load ptr, ptr %arg1.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %790, i64 6
  %791 = load i32, ptr %arrayidx110, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x601, ptr noundef %x602, i32 noundef %789, i32 noundef %791)
  %792 = load i32, ptr %x7, align 4
  %793 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %793, i64 5
  %794 = load i32, ptr %arrayidx111, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x603, ptr noundef %x604, i32 noundef %792, i32 noundef %794)
  %795 = load i32, ptr %x7, align 4
  %796 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %796, i64 4
  %797 = load i32, ptr %arrayidx112, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x605, ptr noundef %x606, i32 noundef %795, i32 noundef %797)
  %798 = load i32, ptr %x7, align 4
  %799 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %799, i64 3
  %800 = load i32, ptr %arrayidx113, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x607, ptr noundef %x608, i32 noundef %798, i32 noundef %800)
  %801 = load i32, ptr %x7, align 4
  %802 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %802, i64 2
  %803 = load i32, ptr %arrayidx114, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x609, ptr noundef %x610, i32 noundef %801, i32 noundef %803)
  %804 = load i32, ptr %x7, align 4
  %805 = load ptr, ptr %arg1.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %805, i64 1
  %806 = load i32, ptr %arrayidx115, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x611, ptr noundef %x612, i32 noundef %804, i32 noundef %806)
  %807 = load i32, ptr %x7, align 4
  %808 = load ptr, ptr %arg1.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %808, i64 0
  %809 = load i32, ptr %arrayidx116, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x613, ptr noundef %x614, i32 noundef %807, i32 noundef %809)
  %810 = load i32, ptr %x614, align 4
  %811 = load i32, ptr %x611, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x615, ptr noundef %x616, i8 noundef zeroext 0, i32 noundef %810, i32 noundef %811)
  %812 = load i8, ptr %x616, align 1
  %813 = load i32, ptr %x612, align 4
  %814 = load i32, ptr %x609, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext %812, i32 noundef %813, i32 noundef %814)
  %815 = load i8, ptr %x618, align 1
  %816 = load i32, ptr %x610, align 4
  %817 = load i32, ptr %x607, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x619, ptr noundef %x620, i8 noundef zeroext %815, i32 noundef %816, i32 noundef %817)
  %818 = load i8, ptr %x620, align 1
  %819 = load i32, ptr %x608, align 4
  %820 = load i32, ptr %x605, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x621, ptr noundef %x622, i8 noundef zeroext %818, i32 noundef %819, i32 noundef %820)
  %821 = load i8, ptr %x622, align 1
  %822 = load i32, ptr %x606, align 4
  %823 = load i32, ptr %x603, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x623, ptr noundef %x624, i8 noundef zeroext %821, i32 noundef %822, i32 noundef %823)
  %824 = load i8, ptr %x624, align 1
  %825 = load i32, ptr %x604, align 4
  %826 = load i32, ptr %x601, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x625, ptr noundef %x626, i8 noundef zeroext %824, i32 noundef %825, i32 noundef %826)
  %827 = load i8, ptr %x626, align 1
  %828 = load i32, ptr %x602, align 4
  %829 = load i32, ptr %x599, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext %827, i32 noundef %828, i32 noundef %829)
  %830 = load i8, ptr %x628, align 1
  %conv117 = zext i8 %830 to i32
  %831 = load i32, ptr %x600, align 4
  %add118 = add i32 %conv117, %831
  store i32 %add118, ptr %x629, align 4
  %832 = load i32, ptr %x582, align 4
  %833 = load i32, ptr %x613, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x630, ptr noundef %x631, i8 noundef zeroext 0, i32 noundef %832, i32 noundef %833)
  %834 = load i8, ptr %x631, align 1
  %835 = load i32, ptr %x584, align 4
  %836 = load i32, ptr %x615, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x632, ptr noundef %x633, i8 noundef zeroext %834, i32 noundef %835, i32 noundef %836)
  %837 = load i8, ptr %x633, align 1
  %838 = load i32, ptr %x586, align 4
  %839 = load i32, ptr %x617, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x634, ptr noundef %x635, i8 noundef zeroext %837, i32 noundef %838, i32 noundef %839)
  %840 = load i8, ptr %x635, align 1
  %841 = load i32, ptr %x588, align 4
  %842 = load i32, ptr %x619, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x636, ptr noundef %x637, i8 noundef zeroext %840, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x637, align 1
  %844 = load i32, ptr %x590, align 4
  %845 = load i32, ptr %x621, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x638, ptr noundef %x639, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i8, ptr %x639, align 1
  %847 = load i32, ptr %x592, align 4
  %848 = load i32, ptr %x623, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x640, ptr noundef %x641, i8 noundef zeroext %846, i32 noundef %847, i32 noundef %848)
  %849 = load i8, ptr %x641, align 1
  %850 = load i32, ptr %x594, align 4
  %851 = load i32, ptr %x625, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x642, ptr noundef %x643, i8 noundef zeroext %849, i32 noundef %850, i32 noundef %851)
  %852 = load i8, ptr %x643, align 1
  %853 = load i32, ptr %x596, align 4
  %854 = load i32, ptr %x627, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x644, ptr noundef %x645, i8 noundef zeroext %852, i32 noundef %853, i32 noundef %854)
  %855 = load i8, ptr %x645, align 1
  %856 = load i32, ptr %x598, align 4
  %857 = load i32, ptr %x629, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x646, ptr noundef %x647, i8 noundef zeroext %855, i32 noundef %856, i32 noundef %857)
  %858 = load i32, ptr %x630, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x648, ptr noundef %x649, i32 noundef %858, i32 noundef 307527195)
  %859 = load i32, ptr %x648, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x650, ptr noundef %x651, i32 noundef %859, i32 noundef 268435456)
  %860 = load i32, ptr %x648, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x652, ptr noundef %x653, i32 noundef %860, i32 noundef 350157278)
  %861 = load i32, ptr %x648, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x654, ptr noundef %x655, i32 noundef %861, i32 noundef -1560830762)
  %862 = load i32, ptr %x648, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x656, ptr noundef %x657, i32 noundef %862, i32 noundef 1477600026)
  %863 = load i32, ptr %x648, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x658, ptr noundef %x659, i32 noundef %863, i32 noundef 1559614445)
  %864 = load i32, ptr %x659, align 4
  %865 = load i32, ptr %x656, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x660, ptr noundef %x661, i8 noundef zeroext 0, i32 noundef %864, i32 noundef %865)
  %866 = load i8, ptr %x661, align 1
  %867 = load i32, ptr %x657, align 4
  %868 = load i32, ptr %x654, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x662, ptr noundef %x663, i8 noundef zeroext %866, i32 noundef %867, i32 noundef %868)
  %869 = load i8, ptr %x663, align 1
  %870 = load i32, ptr %x655, align 4
  %871 = load i32, ptr %x652, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x664, ptr noundef %x665, i8 noundef zeroext %869, i32 noundef %870, i32 noundef %871)
  %872 = load i8, ptr %x665, align 1
  %conv119 = zext i8 %872 to i32
  %873 = load i32, ptr %x653, align 4
  %add120 = add i32 %conv119, %873
  store i32 %add120, ptr %x666, align 4
  %874 = load i32, ptr %x630, align 4
  %875 = load i32, ptr %x658, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext 0, i32 noundef %874, i32 noundef %875)
  %876 = load i8, ptr %x668, align 1
  %877 = load i32, ptr %x632, align 4
  %878 = load i32, ptr %x660, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x669, ptr noundef %x670, i8 noundef zeroext %876, i32 noundef %877, i32 noundef %878)
  %879 = load i8, ptr %x670, align 1
  %880 = load i32, ptr %x634, align 4
  %881 = load i32, ptr %x662, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x671, ptr noundef %x672, i8 noundef zeroext %879, i32 noundef %880, i32 noundef %881)
  %882 = load i8, ptr %x672, align 1
  %883 = load i32, ptr %x636, align 4
  %884 = load i32, ptr %x664, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x673, ptr noundef %x674, i8 noundef zeroext %882, i32 noundef %883, i32 noundef %884)
  %885 = load i8, ptr %x674, align 1
  %886 = load i32, ptr %x638, align 4
  %887 = load i32, ptr %x666, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x675, ptr noundef %x676, i8 noundef zeroext %885, i32 noundef %886, i32 noundef %887)
  %888 = load i8, ptr %x676, align 1
  %889 = load i32, ptr %x640, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x677, ptr noundef %x678, i8 noundef zeroext %888, i32 noundef %889, i32 noundef 0)
  %890 = load i8, ptr %x678, align 1
  %891 = load i32, ptr %x642, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x679, ptr noundef %x680, i8 noundef zeroext %890, i32 noundef %891, i32 noundef 0)
  %892 = load i8, ptr %x680, align 1
  %893 = load i32, ptr %x644, align 4
  %894 = load i32, ptr %x650, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext %892, i32 noundef %893, i32 noundef %894)
  %895 = load i8, ptr %x682, align 1
  %896 = load i32, ptr %x646, align 4
  %897 = load i32, ptr %x651, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext %895, i32 noundef %896, i32 noundef %897)
  %898 = load i8, ptr %x684, align 1
  %conv121 = zext i8 %898 to i32
  %899 = load i8, ptr %x647, align 1
  %conv122 = zext i8 %899 to i32
  %add123 = add i32 %conv121, %conv122
  store i32 %add123, ptr %x685, align 4
  %900 = load i32, ptr %x669, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x686, ptr noundef %x687, i8 noundef zeroext 0, i32 noundef %900, i32 noundef 1559614445)
  %901 = load i8, ptr %x687, align 1
  %902 = load i32, ptr %x671, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x688, ptr noundef %x689, i8 noundef zeroext %901, i32 noundef %902, i32 noundef 1477600026)
  %903 = load i8, ptr %x689, align 1
  %904 = load i32, ptr %x673, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x690, ptr noundef %x691, i8 noundef zeroext %903, i32 noundef %904, i32 noundef -1560830762)
  %905 = load i8, ptr %x691, align 1
  %906 = load i32, ptr %x675, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x692, ptr noundef %x693, i8 noundef zeroext %905, i32 noundef %906, i32 noundef 350157278)
  %907 = load i8, ptr %x693, align 1
  %908 = load i32, ptr %x677, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x694, ptr noundef %x695, i8 noundef zeroext %907, i32 noundef %908, i32 noundef 0)
  %909 = load i8, ptr %x695, align 1
  %910 = load i32, ptr %x679, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x696, ptr noundef %x697, i8 noundef zeroext %909, i32 noundef %910, i32 noundef 0)
  %911 = load i8, ptr %x697, align 1
  %912 = load i32, ptr %x681, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x698, ptr noundef %x699, i8 noundef zeroext %911, i32 noundef %912, i32 noundef 0)
  %913 = load i8, ptr %x699, align 1
  %914 = load i32, ptr %x683, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x700, ptr noundef %x701, i8 noundef zeroext %913, i32 noundef %914, i32 noundef 268435456)
  %915 = load i8, ptr %x701, align 1
  %916 = load i32, ptr %x685, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x702, ptr noundef %x703, i8 noundef zeroext %915, i32 noundef %916, i32 noundef 0)
  %917 = load i8, ptr %x703, align 1
  %918 = load i32, ptr %x686, align 4
  %919 = load i32, ptr %x669, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x704, i8 noundef zeroext %917, i32 noundef %918, i32 noundef %919)
  %920 = load i8, ptr %x703, align 1
  %921 = load i32, ptr %x688, align 4
  %922 = load i32, ptr %x671, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x705, i8 noundef zeroext %920, i32 noundef %921, i32 noundef %922)
  %923 = load i8, ptr %x703, align 1
  %924 = load i32, ptr %x690, align 4
  %925 = load i32, ptr %x673, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x706, i8 noundef zeroext %923, i32 noundef %924, i32 noundef %925)
  %926 = load i8, ptr %x703, align 1
  %927 = load i32, ptr %x692, align 4
  %928 = load i32, ptr %x675, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x707, i8 noundef zeroext %926, i32 noundef %927, i32 noundef %928)
  %929 = load i8, ptr %x703, align 1
  %930 = load i32, ptr %x694, align 4
  %931 = load i32, ptr %x677, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x708, i8 noundef zeroext %929, i32 noundef %930, i32 noundef %931)
  %932 = load i8, ptr %x703, align 1
  %933 = load i32, ptr %x696, align 4
  %934 = load i32, ptr %x679, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x709, i8 noundef zeroext %932, i32 noundef %933, i32 noundef %934)
  %935 = load i8, ptr %x703, align 1
  %936 = load i32, ptr %x698, align 4
  %937 = load i32, ptr %x681, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x710, i8 noundef zeroext %935, i32 noundef %936, i32 noundef %937)
  %938 = load i8, ptr %x703, align 1
  %939 = load i32, ptr %x700, align 4
  %940 = load i32, ptr %x683, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x711, i8 noundef zeroext %938, i32 noundef %939, i32 noundef %940)
  %941 = load i32, ptr %x704, align 4
  %942 = load ptr, ptr %out1.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %942, i64 0
  store i32 %941, ptr %arrayidx124, align 4
  %943 = load i32, ptr %x705, align 4
  %944 = load ptr, ptr %out1.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %944, i64 1
  store i32 %943, ptr %arrayidx125, align 4
  %945 = load i32, ptr %x706, align 4
  %946 = load ptr, ptr %out1.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %946, i64 2
  store i32 %945, ptr %arrayidx126, align 4
  %947 = load i32, ptr %x707, align 4
  %948 = load ptr, ptr %out1.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %948, i64 3
  store i32 %947, ptr %arrayidx127, align 4
  %949 = load i32, ptr %x708, align 4
  %950 = load ptr, ptr %out1.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %950, i64 4
  store i32 %949, ptr %arrayidx128, align 4
  %951 = load i32, ptr %x709, align 4
  %952 = load ptr, ptr %out1.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %952, i64 5
  store i32 %951, ptr %arrayidx129, align 4
  %953 = load i32, ptr %x710, align 4
  %954 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %954, i64 6
  store i32 %953, ptr %arrayidx130, align 4
  %955 = load i32, ptr %x711, align 4
  %956 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %956, i64 7
  store i32 %955, ptr %arrayidx131, align 4
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
