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
define dso_local void @fiat_25519_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x74 = alloca i32, align 4
  %x75 = alloca i32, align 4
  %x76 = alloca i32, align 4
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
  %x132 = alloca i8, align 1
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
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
  %x156 = alloca i32, align 4
  %x157 = alloca i32, align 4
  %x158 = alloca i32, align 4
  %x159 = alloca i32, align 4
  %x160 = alloca i32, align 4
  %x161 = alloca i32, align 4
  %x162 = alloca i32, align 4
  %x163 = alloca i32, align 4
  %x164 = alloca i32, align 4
  %x165 = alloca i32, align 4
  %x166 = alloca i32, align 4
  %x167 = alloca i32, align 4
  %x168 = alloca i32, align 4
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
  %x184 = alloca i8, align 1
  %x185 = alloca i32, align 4
  %x186 = alloca i8, align 1
  %x187 = alloca i32, align 4
  %x188 = alloca i8, align 1
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
  %x211 = alloca i32, align 4
  %x212 = alloca i8, align 1
  %x213 = alloca i32, align 4
  %x214 = alloca i8, align 1
  %x215 = alloca i32, align 4
  %x216 = alloca i8, align 1
  %x217 = alloca i32, align 4
  %x218 = alloca i8, align 1
  %x219 = alloca i32, align 4
  %x220 = alloca i8, align 1
  %x221 = alloca i32, align 4
  %x222 = alloca i8, align 1
  %x223 = alloca i32, align 4
  %x224 = alloca i8, align 1
  %x225 = alloca i32, align 4
  %x226 = alloca i8, align 1
  %x227 = alloca i32, align 4
  %x228 = alloca i8, align 1
  %x229 = alloca i32, align 4
  %x230 = alloca i8, align 1
  %x231 = alloca i32, align 4
  %x232 = alloca i8, align 1
  %x233 = alloca i32, align 4
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
  %x247 = alloca i32, align 4
  %x248 = alloca i32, align 4
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
  %x264 = alloca i8, align 1
  %x265 = alloca i32, align 4
  %x266 = alloca i8, align 1
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
  %x280 = alloca i32, align 4
  %x281 = alloca i32, align 4
  %x282 = alloca i32, align 4
  %x283 = alloca i32, align 4
  %x284 = alloca i32, align 4
  %x285 = alloca i32, align 4
  %x286 = alloca i32, align 4
  %x287 = alloca i32, align 4
  %x288 = alloca i32, align 4
  %x289 = alloca i32, align 4
  %x290 = alloca i32, align 4
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
  %x310 = alloca i8, align 1
  %x311 = alloca i32, align 4
  %x312 = alloca i8, align 1
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
  %x354 = alloca i8, align 1
  %x355 = alloca i32, align 4
  %x356 = alloca i8, align 1
  %x357 = alloca i32, align 4
  %x358 = alloca i8, align 1
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
  %x370 = alloca i32, align 4
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
  %x394 = alloca i32, align 4
  %x395 = alloca i32, align 4
  %x396 = alloca i32, align 4
  %x397 = alloca i32, align 4
  %x398 = alloca i32, align 4
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
  %x410 = alloca i8, align 1
  %x411 = alloca i32, align 4
  %x412 = alloca i8, align 1
  %x413 = alloca i32, align 4
  %x414 = alloca i8, align 1
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
  %x440 = alloca i32, align 4
  %x441 = alloca i32, align 4
  %x442 = alloca i32, align 4
  %x443 = alloca i32, align 4
  %x444 = alloca i32, align 4
  %x445 = alloca i32, align 4
  %x446 = alloca i32, align 4
  %x447 = alloca i32, align 4
  %x448 = alloca i32, align 4
  %x449 = alloca i32, align 4
  %x450 = alloca i32, align 4
  %x451 = alloca i32, align 4
  %x452 = alloca i8, align 1
  %x453 = alloca i32, align 4
  %x454 = alloca i8, align 1
  %x455 = alloca i32, align 4
  %x456 = alloca i8, align 1
  %x457 = alloca i32, align 4
  %x458 = alloca i8, align 1
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
  %x487 = alloca i32, align 4
  %x488 = alloca i32, align 4
  %x489 = alloca i32, align 4
  %x490 = alloca i8, align 1
  %x491 = alloca i32, align 4
  %x492 = alloca i8, align 1
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
  %x512 = alloca i8, align 1
  %x513 = alloca i32, align 4
  %x514 = alloca i8, align 1
  %x515 = alloca i32, align 4
  %x516 = alloca i8, align 1
  %x517 = alloca i32, align 4
  %x518 = alloca i8, align 1
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
  %x529 = alloca i32, align 4
  %x530 = alloca i32, align 4
  %x531 = alloca i32, align 4
  %x532 = alloca i8, align 1
  %x533 = alloca i32, align 4
  %x534 = alloca i8, align 1
  %x535 = alloca i32, align 4
  %x536 = alloca i8, align 1
  %x537 = alloca i32, align 4
  %x538 = alloca i8, align 1
  %x539 = alloca i32, align 4
  %x540 = alloca i8, align 1
  %x541 = alloca i32, align 4
  %x542 = alloca i8, align 1
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
  %x554 = alloca i32, align 4
  %x555 = alloca i32, align 4
  %x556 = alloca i32, align 4
  %x557 = alloca i32, align 4
  %x558 = alloca i32, align 4
  %x559 = alloca i32, align 4
  %x560 = alloca i32, align 4
  %x561 = alloca i32, align 4
  %x562 = alloca i32, align 4
  %x563 = alloca i32, align 4
  %x564 = alloca i32, align 4
  %x565 = alloca i32, align 4
  %x566 = alloca i32, align 4
  %x567 = alloca i32, align 4
  %x568 = alloca i32, align 4
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
  %x580 = alloca i8, align 1
  %x581 = alloca i32, align 4
  %x582 = alloca i8, align 1
  %x583 = alloca i32, align 4
  %x584 = alloca i8, align 1
  %x585 = alloca i32, align 4
  %x586 = alloca i8, align 1
  %x587 = alloca i32, align 4
  %x588 = alloca i8, align 1
  %x589 = alloca i32, align 4
  %x590 = alloca i8, align 1
  %x591 = alloca i32, align 4
  %x592 = alloca i8, align 1
  %x593 = alloca i32, align 4
  %x594 = alloca i8, align 1
  %x595 = alloca i32, align 4
  %x596 = alloca i8, align 1
  %x597 = alloca i32, align 4
  %x598 = alloca i8, align 1
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
  %x624 = alloca i8, align 1
  %x625 = alloca i32, align 4
  %x626 = alloca i8, align 1
  %x627 = alloca i32, align 4
  %x628 = alloca i8, align 1
  %x629 = alloca i32, align 4
  %x630 = alloca i8, align 1
  %x631 = alloca i32, align 4
  %x632 = alloca i8, align 1
  %x633 = alloca i32, align 4
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
  %x649 = alloca i8, align 1
  %x650 = alloca i32, align 4
  %x651 = alloca i8, align 1
  %x652 = alloca i32, align 4
  %x653 = alloca i32, align 4
  %x654 = alloca i32, align 4
  %x655 = alloca i32, align 4
  %x656 = alloca i32, align 4
  %x657 = alloca i32, align 4
  %x658 = alloca i32, align 4
  %x659 = alloca i32, align 4
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
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef 60375323)
  %17 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %17, i32 noundef 2083559997)
  %18 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %18, i32 noundef -823364654)
  %19 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %19, i32 noundef 401981029)
  %20 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %20, i32 noundef -804381785)
  %21 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %21, i32 noundef 1753584455)
  %22 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %22, i32 noundef -1543106077)
  %23 = load i32, ptr %x8, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %23, i32 noundef 1151078145)
  %24 = load i32, ptr %x24, align 4
  %25 = load i32, ptr %x21, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x26, align 1
  %27 = load i32, ptr %x22, align 4
  %28 = load i32, ptr %x19, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x28, align 1
  %30 = load i32, ptr %x20, align 4
  %31 = load i32, ptr %x17, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x30, align 1
  %33 = load i32, ptr %x18, align 4
  %34 = load i32, ptr %x15, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %x32, align 1
  %36 = load i32, ptr %x16, align 4
  %37 = load i32, ptr %x13, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x34, align 1
  %39 = load i32, ptr %x14, align 4
  %40 = load i32, ptr %x11, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x36, align 1
  %42 = load i32, ptr %x12, align 4
  %43 = load i32, ptr %x9, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i32, ptr %x23, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %44, i32 noundef 307527195)
  %45 = load i32, ptr %x39, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %45, i32 noundef 268435456)
  %46 = load i32, ptr %x39, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x43, ptr noundef %x44, i32 noundef %46, i32 noundef 350157278)
  %47 = load i32, ptr %x39, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x45, ptr noundef %x46, i32 noundef %47, i32 noundef -1560830762)
  %48 = load i32, ptr %x39, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x47, ptr noundef %x48, i32 noundef %48, i32 noundef 1477600026)
  %49 = load i32, ptr %x39, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x49, ptr noundef %x50, i32 noundef %49, i32 noundef 1559614445)
  %50 = load i32, ptr %x50, align 4
  %51 = load i32, ptr %x47, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i32 noundef %50, i32 noundef %51)
  %52 = load i8, ptr %x52, align 1
  %53 = load i32, ptr %x48, align 4
  %54 = load i32, ptr %x45, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %52, i32 noundef %53, i32 noundef %54)
  %55 = load i8, ptr %x54, align 1
  %56 = load i32, ptr %x46, align 4
  %57 = load i32, ptr %x43, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %55, i32 noundef %56, i32 noundef %57)
  %58 = load i32, ptr %x23, align 4
  %59 = load i32, ptr %x49, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext 0, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x58, align 1
  %61 = load i32, ptr %x25, align 4
  %62 = load i32, ptr %x51, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %60, i32 noundef %61, i32 noundef %62)
  %63 = load i8, ptr %x60, align 1
  %64 = load i32, ptr %x27, align 4
  %65 = load i32, ptr %x53, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %63, i32 noundef %64, i32 noundef %65)
  %66 = load i8, ptr %x62, align 1
  %67 = load i32, ptr %x29, align 4
  %68 = load i32, ptr %x55, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %66, i32 noundef %67, i32 noundef %68)
  %69 = load i8, ptr %x64, align 1
  %70 = load i32, ptr %x31, align 4
  %71 = load i8, ptr %x56, align 1
  %conv = zext i8 %71 to i32
  %72 = load i32, ptr %x44, align 4
  %add = add i32 %conv, %72
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %69, i32 noundef %70, i32 noundef %add)
  %73 = load i8, ptr %x66, align 1
  %74 = load i32, ptr %x33, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %73, i32 noundef %74, i32 noundef 0)
  %75 = load i8, ptr %x68, align 1
  %76 = load i32, ptr %x35, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %75, i32 noundef %76, i32 noundef 0)
  %77 = load i8, ptr %x70, align 1
  %78 = load i32, ptr %x37, align 4
  %79 = load i32, ptr %x41, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x73, ptr noundef %x74, i32 noundef %80, i32 noundef 60375323)
  %81 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x75, ptr noundef %x76, i32 noundef %81, i32 noundef 2083559997)
  %82 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x77, ptr noundef %x78, i32 noundef %82, i32 noundef -823364654)
  %83 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x79, ptr noundef %x80, i32 noundef %83, i32 noundef 401981029)
  %84 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x81, ptr noundef %x82, i32 noundef %84, i32 noundef -804381785)
  %85 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x83, ptr noundef %x84, i32 noundef %85, i32 noundef 1753584455)
  %86 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x85, ptr noundef %x86, i32 noundef %86, i32 noundef -1543106077)
  %87 = load i32, ptr %x1, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x87, ptr noundef %x88, i32 noundef %87, i32 noundef 1151078145)
  %88 = load i32, ptr %x88, align 4
  %89 = load i32, ptr %x85, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext 0, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x90, align 1
  %91 = load i32, ptr %x86, align 4
  %92 = load i32, ptr %x83, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92)
  %93 = load i8, ptr %x92, align 1
  %94 = load i32, ptr %x84, align 4
  %95 = load i32, ptr %x81, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %93, i32 noundef %94, i32 noundef %95)
  %96 = load i8, ptr %x94, align 1
  %97 = load i32, ptr %x82, align 4
  %98 = load i32, ptr %x79, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %96, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x96, align 1
  %100 = load i32, ptr %x80, align 4
  %101 = load i32, ptr %x77, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %99, i32 noundef %100, i32 noundef %101)
  %102 = load i8, ptr %x98, align 1
  %103 = load i32, ptr %x78, align 4
  %104 = load i32, ptr %x75, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %102, i32 noundef %103, i32 noundef %104)
  %105 = load i8, ptr %x100, align 1
  %106 = load i32, ptr %x76, align 4
  %107 = load i32, ptr %x73, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %105, i32 noundef %106, i32 noundef %107)
  %108 = load i32, ptr %x59, align 4
  %109 = load i32, ptr %x87, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x104, align 1
  %111 = load i32, ptr %x61, align 4
  %112 = load i32, ptr %x89, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x106, align 1
  %114 = load i32, ptr %x63, align 4
  %115 = load i32, ptr %x91, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %115)
  %116 = load i8, ptr %x108, align 1
  %117 = load i32, ptr %x65, align 4
  %118 = load i32, ptr %x93, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %118)
  %119 = load i8, ptr %x110, align 1
  %120 = load i32, ptr %x67, align 4
  %121 = load i32, ptr %x95, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %119, i32 noundef %120, i32 noundef %121)
  %122 = load i8, ptr %x112, align 1
  %123 = load i32, ptr %x69, align 4
  %124 = load i32, ptr %x97, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %122, i32 noundef %123, i32 noundef %124)
  %125 = load i8, ptr %x114, align 1
  %126 = load i32, ptr %x71, align 4
  %127 = load i32, ptr %x99, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %125, i32 noundef %126, i32 noundef %127)
  %128 = load i8, ptr %x116, align 1
  %129 = load i8, ptr %x72, align 1
  %conv8 = zext i8 %129 to i32
  %130 = load i8, ptr %x38, align 1
  %conv9 = zext i8 %130 to i32
  %131 = load i32, ptr %x10, align 4
  %add10 = add i32 %conv9, %131
  %add11 = add i32 %conv8, %add10
  %132 = load i32, ptr %x42, align 4
  %add12 = add i32 %add11, %132
  %133 = load i32, ptr %x101, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %128, i32 noundef %add12, i32 noundef %133)
  %134 = load i32, ptr %x103, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x119, ptr noundef %x120, i32 noundef %134, i32 noundef 307527195)
  %135 = load i32, ptr %x119, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x121, ptr noundef %x122, i32 noundef %135, i32 noundef 268435456)
  %136 = load i32, ptr %x119, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x123, ptr noundef %x124, i32 noundef %136, i32 noundef 350157278)
  %137 = load i32, ptr %x119, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x125, ptr noundef %x126, i32 noundef %137, i32 noundef -1560830762)
  %138 = load i32, ptr %x119, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x127, ptr noundef %x128, i32 noundef %138, i32 noundef 1477600026)
  %139 = load i32, ptr %x119, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x129, ptr noundef %x130, i32 noundef %139, i32 noundef 1559614445)
  %140 = load i32, ptr %x130, align 4
  %141 = load i32, ptr %x127, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i32 noundef %140, i32 noundef %141)
  %142 = load i8, ptr %x132, align 1
  %143 = load i32, ptr %x128, align 4
  %144 = load i32, ptr %x125, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %142, i32 noundef %143, i32 noundef %144)
  %145 = load i8, ptr %x134, align 1
  %146 = load i32, ptr %x126, align 4
  %147 = load i32, ptr %x123, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %145, i32 noundef %146, i32 noundef %147)
  %148 = load i32, ptr %x103, align 4
  %149 = load i32, ptr %x129, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext 0, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x138, align 1
  %151 = load i32, ptr %x105, align 4
  %152 = load i32, ptr %x131, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x140, align 1
  %154 = load i32, ptr %x107, align 4
  %155 = load i32, ptr %x133, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i8, ptr %x142, align 1
  %157 = load i32, ptr %x109, align 4
  %158 = load i32, ptr %x135, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %156, i32 noundef %157, i32 noundef %158)
  %159 = load i8, ptr %x144, align 1
  %160 = load i32, ptr %x111, align 4
  %161 = load i8, ptr %x136, align 1
  %conv13 = zext i8 %161 to i32
  %162 = load i32, ptr %x124, align 4
  %add14 = add i32 %conv13, %162
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %159, i32 noundef %160, i32 noundef %add14)
  %163 = load i8, ptr %x146, align 1
  %164 = load i32, ptr %x113, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %163, i32 noundef %164, i32 noundef 0)
  %165 = load i8, ptr %x148, align 1
  %166 = load i32, ptr %x115, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %165, i32 noundef %166, i32 noundef 0)
  %167 = load i8, ptr %x150, align 1
  %168 = load i32, ptr %x117, align 4
  %169 = load i32, ptr %x121, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x153, ptr noundef %x154, i32 noundef %170, i32 noundef 60375323)
  %171 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x155, ptr noundef %x156, i32 noundef %171, i32 noundef 2083559997)
  %172 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x157, ptr noundef %x158, i32 noundef %172, i32 noundef -823364654)
  %173 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x159, ptr noundef %x160, i32 noundef %173, i32 noundef 401981029)
  %174 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x161, ptr noundef %x162, i32 noundef %174, i32 noundef -804381785)
  %175 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x163, ptr noundef %x164, i32 noundef %175, i32 noundef 1753584455)
  %176 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x165, ptr noundef %x166, i32 noundef %176, i32 noundef -1543106077)
  %177 = load i32, ptr %x2, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x167, ptr noundef %x168, i32 noundef %177, i32 noundef 1151078145)
  %178 = load i32, ptr %x168, align 4
  %179 = load i32, ptr %x165, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext 0, i32 noundef %178, i32 noundef %179)
  %180 = load i8, ptr %x170, align 1
  %181 = load i32, ptr %x166, align 4
  %182 = load i32, ptr %x163, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %180, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x172, align 1
  %184 = load i32, ptr %x164, align 4
  %185 = load i32, ptr %x161, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x174, align 1
  %187 = load i32, ptr %x162, align 4
  %188 = load i32, ptr %x159, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188)
  %189 = load i8, ptr %x176, align 1
  %190 = load i32, ptr %x160, align 4
  %191 = load i32, ptr %x157, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %189, i32 noundef %190, i32 noundef %191)
  %192 = load i8, ptr %x178, align 1
  %193 = load i32, ptr %x158, align 4
  %194 = load i32, ptr %x155, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %192, i32 noundef %193, i32 noundef %194)
  %195 = load i8, ptr %x180, align 1
  %196 = load i32, ptr %x156, align 4
  %197 = load i32, ptr %x153, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %195, i32 noundef %196, i32 noundef %197)
  %198 = load i32, ptr %x139, align 4
  %199 = load i32, ptr %x167, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext 0, i32 noundef %198, i32 noundef %199)
  %200 = load i8, ptr %x184, align 1
  %201 = load i32, ptr %x141, align 4
  %202 = load i32, ptr %x169, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %200, i32 noundef %201, i32 noundef %202)
  %203 = load i8, ptr %x186, align 1
  %204 = load i32, ptr %x143, align 4
  %205 = load i32, ptr %x171, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %203, i32 noundef %204, i32 noundef %205)
  %206 = load i8, ptr %x188, align 1
  %207 = load i32, ptr %x145, align 4
  %208 = load i32, ptr %x173, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %206, i32 noundef %207, i32 noundef %208)
  %209 = load i8, ptr %x190, align 1
  %210 = load i32, ptr %x147, align 4
  %211 = load i32, ptr %x175, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %209, i32 noundef %210, i32 noundef %211)
  %212 = load i8, ptr %x192, align 1
  %213 = load i32, ptr %x149, align 4
  %214 = load i32, ptr %x177, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %212, i32 noundef %213, i32 noundef %214)
  %215 = load i8, ptr %x194, align 1
  %216 = load i32, ptr %x151, align 4
  %217 = load i32, ptr %x179, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %215, i32 noundef %216, i32 noundef %217)
  %218 = load i8, ptr %x196, align 1
  %219 = load i8, ptr %x152, align 1
  %conv15 = zext i8 %219 to i32
  %220 = load i8, ptr %x118, align 1
  %conv16 = zext i8 %220 to i32
  %221 = load i8, ptr %x102, align 1
  %conv17 = zext i8 %221 to i32
  %222 = load i32, ptr %x74, align 4
  %add18 = add i32 %conv17, %222
  %add19 = add i32 %conv16, %add18
  %add20 = add i32 %conv15, %add19
  %223 = load i32, ptr %x122, align 4
  %add21 = add i32 %add20, %223
  %224 = load i32, ptr %x181, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %218, i32 noundef %add21, i32 noundef %224)
  %225 = load i32, ptr %x183, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x199, ptr noundef %x200, i32 noundef %225, i32 noundef 307527195)
  %226 = load i32, ptr %x199, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x201, ptr noundef %x202, i32 noundef %226, i32 noundef 268435456)
  %227 = load i32, ptr %x199, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x203, ptr noundef %x204, i32 noundef %227, i32 noundef 350157278)
  %228 = load i32, ptr %x199, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x205, ptr noundef %x206, i32 noundef %228, i32 noundef -1560830762)
  %229 = load i32, ptr %x199, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x207, ptr noundef %x208, i32 noundef %229, i32 noundef 1477600026)
  %230 = load i32, ptr %x199, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x209, ptr noundef %x210, i32 noundef %230, i32 noundef 1559614445)
  %231 = load i32, ptr %x210, align 4
  %232 = load i32, ptr %x207, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext 0, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x212, align 1
  %234 = load i32, ptr %x208, align 4
  %235 = load i32, ptr %x205, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x214, align 1
  %237 = load i32, ptr %x206, align 4
  %238 = load i32, ptr %x203, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i32, ptr %x183, align 4
  %240 = load i32, ptr %x209, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext 0, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x218, align 1
  %242 = load i32, ptr %x185, align 4
  %243 = load i32, ptr %x211, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x220, align 1
  %245 = load i32, ptr %x187, align 4
  %246 = load i32, ptr %x213, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x221, ptr noundef %x222, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x222, align 1
  %248 = load i32, ptr %x189, align 4
  %249 = load i32, ptr %x215, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x224, align 1
  %251 = load i32, ptr %x191, align 4
  %252 = load i8, ptr %x216, align 1
  %conv22 = zext i8 %252 to i32
  %253 = load i32, ptr %x204, align 4
  %add23 = add i32 %conv22, %253
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %add23)
  %254 = load i8, ptr %x226, align 1
  %255 = load i32, ptr %x193, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %254, i32 noundef %255, i32 noundef 0)
  %256 = load i8, ptr %x228, align 1
  %257 = load i32, ptr %x195, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %256, i32 noundef %257, i32 noundef 0)
  %258 = load i8, ptr %x230, align 1
  %259 = load i32, ptr %x197, align 4
  %260 = load i32, ptr %x201, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %258, i32 noundef %259, i32 noundef %260)
  %261 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x233, ptr noundef %x234, i32 noundef %261, i32 noundef 60375323)
  %262 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x235, ptr noundef %x236, i32 noundef %262, i32 noundef 2083559997)
  %263 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x237, ptr noundef %x238, i32 noundef %263, i32 noundef -823364654)
  %264 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x239, ptr noundef %x240, i32 noundef %264, i32 noundef 401981029)
  %265 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x241, ptr noundef %x242, i32 noundef %265, i32 noundef -804381785)
  %266 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x243, ptr noundef %x244, i32 noundef %266, i32 noundef 1753584455)
  %267 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %267, i32 noundef -1543106077)
  %268 = load i32, ptr %x3, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %268, i32 noundef 1151078145)
  %269 = load i32, ptr %x248, align 4
  %270 = load i32, ptr %x245, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext 0, i32 noundef %269, i32 noundef %270)
  %271 = load i8, ptr %x250, align 1
  %272 = load i32, ptr %x246, align 4
  %273 = load i32, ptr %x243, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %271, i32 noundef %272, i32 noundef %273)
  %274 = load i8, ptr %x252, align 1
  %275 = load i32, ptr %x244, align 4
  %276 = load i32, ptr %x241, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %274, i32 noundef %275, i32 noundef %276)
  %277 = load i8, ptr %x254, align 1
  %278 = load i32, ptr %x242, align 4
  %279 = load i32, ptr %x239, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %277, i32 noundef %278, i32 noundef %279)
  %280 = load i8, ptr %x256, align 1
  %281 = load i32, ptr %x240, align 4
  %282 = load i32, ptr %x237, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %280, i32 noundef %281, i32 noundef %282)
  %283 = load i8, ptr %x258, align 1
  %284 = load i32, ptr %x238, align 4
  %285 = load i32, ptr %x235, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %283, i32 noundef %284, i32 noundef %285)
  %286 = load i8, ptr %x260, align 1
  %287 = load i32, ptr %x236, align 4
  %288 = load i32, ptr %x233, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i32, ptr %x219, align 4
  %290 = load i32, ptr %x247, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext 0, i32 noundef %289, i32 noundef %290)
  %291 = load i8, ptr %x264, align 1
  %292 = load i32, ptr %x221, align 4
  %293 = load i32, ptr %x249, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %291, i32 noundef %292, i32 noundef %293)
  %294 = load i8, ptr %x266, align 1
  %295 = load i32, ptr %x223, align 4
  %296 = load i32, ptr %x251, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %294, i32 noundef %295, i32 noundef %296)
  %297 = load i8, ptr %x268, align 1
  %298 = load i32, ptr %x225, align 4
  %299 = load i32, ptr %x253, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %297, i32 noundef %298, i32 noundef %299)
  %300 = load i8, ptr %x270, align 1
  %301 = load i32, ptr %x227, align 4
  %302 = load i32, ptr %x255, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %300, i32 noundef %301, i32 noundef %302)
  %303 = load i8, ptr %x272, align 1
  %304 = load i32, ptr %x229, align 4
  %305 = load i32, ptr %x257, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %303, i32 noundef %304, i32 noundef %305)
  %306 = load i8, ptr %x274, align 1
  %307 = load i32, ptr %x231, align 4
  %308 = load i32, ptr %x259, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %306, i32 noundef %307, i32 noundef %308)
  %309 = load i8, ptr %x276, align 1
  %310 = load i8, ptr %x232, align 1
  %conv24 = zext i8 %310 to i32
  %311 = load i8, ptr %x198, align 1
  %conv25 = zext i8 %311 to i32
  %312 = load i8, ptr %x182, align 1
  %conv26 = zext i8 %312 to i32
  %313 = load i32, ptr %x154, align 4
  %add27 = add i32 %conv26, %313
  %add28 = add i32 %conv25, %add27
  %add29 = add i32 %conv24, %add28
  %314 = load i32, ptr %x202, align 4
  %add30 = add i32 %add29, %314
  %315 = load i32, ptr %x261, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %309, i32 noundef %add30, i32 noundef %315)
  %316 = load i32, ptr %x263, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x279, ptr noundef %x280, i32 noundef %316, i32 noundef 307527195)
  %317 = load i32, ptr %x279, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x281, ptr noundef %x282, i32 noundef %317, i32 noundef 268435456)
  %318 = load i32, ptr %x279, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x283, ptr noundef %x284, i32 noundef %318, i32 noundef 350157278)
  %319 = load i32, ptr %x279, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x285, ptr noundef %x286, i32 noundef %319, i32 noundef -1560830762)
  %320 = load i32, ptr %x279, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x287, ptr noundef %x288, i32 noundef %320, i32 noundef 1477600026)
  %321 = load i32, ptr %x279, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x289, ptr noundef %x290, i32 noundef %321, i32 noundef 1559614445)
  %322 = load i32, ptr %x290, align 4
  %323 = load i32, ptr %x287, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext 0, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x292, align 1
  %325 = load i32, ptr %x288, align 4
  %326 = load i32, ptr %x285, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x294, align 1
  %328 = load i32, ptr %x286, align 4
  %329 = load i32, ptr %x283, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i32, ptr %x263, align 4
  %331 = load i32, ptr %x289, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext 0, i32 noundef %330, i32 noundef %331)
  %332 = load i8, ptr %x298, align 1
  %333 = load i32, ptr %x265, align 4
  %334 = load i32, ptr %x291, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %332, i32 noundef %333, i32 noundef %334)
  %335 = load i8, ptr %x300, align 1
  %336 = load i32, ptr %x267, align 4
  %337 = load i32, ptr %x293, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %335, i32 noundef %336, i32 noundef %337)
  %338 = load i8, ptr %x302, align 1
  %339 = load i32, ptr %x269, align 4
  %340 = load i32, ptr %x295, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %338, i32 noundef %339, i32 noundef %340)
  %341 = load i8, ptr %x304, align 1
  %342 = load i32, ptr %x271, align 4
  %343 = load i8, ptr %x296, align 1
  %conv31 = zext i8 %343 to i32
  %344 = load i32, ptr %x284, align 4
  %add32 = add i32 %conv31, %344
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %341, i32 noundef %342, i32 noundef %add32)
  %345 = load i8, ptr %x306, align 1
  %346 = load i32, ptr %x273, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %345, i32 noundef %346, i32 noundef 0)
  %347 = load i8, ptr %x308, align 1
  %348 = load i32, ptr %x275, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %347, i32 noundef %348, i32 noundef 0)
  %349 = load i8, ptr %x310, align 1
  %350 = load i32, ptr %x277, align 4
  %351 = load i32, ptr %x281, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x313, ptr noundef %x314, i32 noundef %352, i32 noundef 60375323)
  %353 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x315, ptr noundef %x316, i32 noundef %353, i32 noundef 2083559997)
  %354 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x317, ptr noundef %x318, i32 noundef %354, i32 noundef -823364654)
  %355 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x319, ptr noundef %x320, i32 noundef %355, i32 noundef 401981029)
  %356 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x321, ptr noundef %x322, i32 noundef %356, i32 noundef -804381785)
  %357 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x323, ptr noundef %x324, i32 noundef %357, i32 noundef 1753584455)
  %358 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x325, ptr noundef %x326, i32 noundef %358, i32 noundef -1543106077)
  %359 = load i32, ptr %x4, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x327, ptr noundef %x328, i32 noundef %359, i32 noundef 1151078145)
  %360 = load i32, ptr %x328, align 4
  %361 = load i32, ptr %x325, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext 0, i32 noundef %360, i32 noundef %361)
  %362 = load i8, ptr %x330, align 1
  %363 = load i32, ptr %x326, align 4
  %364 = load i32, ptr %x323, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %362, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x332, align 1
  %366 = load i32, ptr %x324, align 4
  %367 = load i32, ptr %x321, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x334, align 1
  %369 = load i32, ptr %x322, align 4
  %370 = load i32, ptr %x319, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %368, i32 noundef %369, i32 noundef %370)
  %371 = load i8, ptr %x336, align 1
  %372 = load i32, ptr %x320, align 4
  %373 = load i32, ptr %x317, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %371, i32 noundef %372, i32 noundef %373)
  %374 = load i8, ptr %x338, align 1
  %375 = load i32, ptr %x318, align 4
  %376 = load i32, ptr %x315, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %374, i32 noundef %375, i32 noundef %376)
  %377 = load i8, ptr %x340, align 1
  %378 = load i32, ptr %x316, align 4
  %379 = load i32, ptr %x313, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %377, i32 noundef %378, i32 noundef %379)
  %380 = load i32, ptr %x299, align 4
  %381 = load i32, ptr %x327, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext 0, i32 noundef %380, i32 noundef %381)
  %382 = load i8, ptr %x344, align 1
  %383 = load i32, ptr %x301, align 4
  %384 = load i32, ptr %x329, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %382, i32 noundef %383, i32 noundef %384)
  %385 = load i8, ptr %x346, align 1
  %386 = load i32, ptr %x303, align 4
  %387 = load i32, ptr %x331, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %385, i32 noundef %386, i32 noundef %387)
  %388 = load i8, ptr %x348, align 1
  %389 = load i32, ptr %x305, align 4
  %390 = load i32, ptr %x333, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %388, i32 noundef %389, i32 noundef %390)
  %391 = load i8, ptr %x350, align 1
  %392 = load i32, ptr %x307, align 4
  %393 = load i32, ptr %x335, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %391, i32 noundef %392, i32 noundef %393)
  %394 = load i8, ptr %x352, align 1
  %395 = load i32, ptr %x309, align 4
  %396 = load i32, ptr %x337, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %394, i32 noundef %395, i32 noundef %396)
  %397 = load i8, ptr %x354, align 1
  %398 = load i32, ptr %x311, align 4
  %399 = load i32, ptr %x339, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %397, i32 noundef %398, i32 noundef %399)
  %400 = load i8, ptr %x356, align 1
  %401 = load i8, ptr %x312, align 1
  %conv33 = zext i8 %401 to i32
  %402 = load i8, ptr %x278, align 1
  %conv34 = zext i8 %402 to i32
  %403 = load i8, ptr %x262, align 1
  %conv35 = zext i8 %403 to i32
  %404 = load i32, ptr %x234, align 4
  %add36 = add i32 %conv35, %404
  %add37 = add i32 %conv34, %add36
  %add38 = add i32 %conv33, %add37
  %405 = load i32, ptr %x282, align 4
  %add39 = add i32 %add38, %405
  %406 = load i32, ptr %x341, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %400, i32 noundef %add39, i32 noundef %406)
  %407 = load i32, ptr %x343, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x359, ptr noundef %x360, i32 noundef %407, i32 noundef 307527195)
  %408 = load i32, ptr %x359, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x361, ptr noundef %x362, i32 noundef %408, i32 noundef 268435456)
  %409 = load i32, ptr %x359, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x363, ptr noundef %x364, i32 noundef %409, i32 noundef 350157278)
  %410 = load i32, ptr %x359, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x365, ptr noundef %x366, i32 noundef %410, i32 noundef -1560830762)
  %411 = load i32, ptr %x359, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x367, ptr noundef %x368, i32 noundef %411, i32 noundef 1477600026)
  %412 = load i32, ptr %x359, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x369, ptr noundef %x370, i32 noundef %412, i32 noundef 1559614445)
  %413 = load i32, ptr %x370, align 4
  %414 = load i32, ptr %x367, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext 0, i32 noundef %413, i32 noundef %414)
  %415 = load i8, ptr %x372, align 1
  %416 = load i32, ptr %x368, align 4
  %417 = load i32, ptr %x365, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %415, i32 noundef %416, i32 noundef %417)
  %418 = load i8, ptr %x374, align 1
  %419 = load i32, ptr %x366, align 4
  %420 = load i32, ptr %x363, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %418, i32 noundef %419, i32 noundef %420)
  %421 = load i32, ptr %x343, align 4
  %422 = load i32, ptr %x369, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext 0, i32 noundef %421, i32 noundef %422)
  %423 = load i8, ptr %x378, align 1
  %424 = load i32, ptr %x345, align 4
  %425 = load i32, ptr %x371, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %423, i32 noundef %424, i32 noundef %425)
  %426 = load i8, ptr %x380, align 1
  %427 = load i32, ptr %x347, align 4
  %428 = load i32, ptr %x373, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %426, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x382, align 1
  %430 = load i32, ptr %x349, align 4
  %431 = load i32, ptr %x375, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x384, align 1
  %433 = load i32, ptr %x351, align 4
  %434 = load i8, ptr %x376, align 1
  %conv40 = zext i8 %434 to i32
  %435 = load i32, ptr %x364, align 4
  %add41 = add i32 %conv40, %435
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %432, i32 noundef %433, i32 noundef %add41)
  %436 = load i8, ptr %x386, align 1
  %437 = load i32, ptr %x353, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %436, i32 noundef %437, i32 noundef 0)
  %438 = load i8, ptr %x388, align 1
  %439 = load i32, ptr %x355, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %438, i32 noundef %439, i32 noundef 0)
  %440 = load i8, ptr %x390, align 1
  %441 = load i32, ptr %x357, align 4
  %442 = load i32, ptr %x361, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %440, i32 noundef %441, i32 noundef %442)
  %443 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x393, ptr noundef %x394, i32 noundef %443, i32 noundef 60375323)
  %444 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x395, ptr noundef %x396, i32 noundef %444, i32 noundef 2083559997)
  %445 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x397, ptr noundef %x398, i32 noundef %445, i32 noundef -823364654)
  %446 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x399, ptr noundef %x400, i32 noundef %446, i32 noundef 401981029)
  %447 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x401, ptr noundef %x402, i32 noundef %447, i32 noundef -804381785)
  %448 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x403, ptr noundef %x404, i32 noundef %448, i32 noundef 1753584455)
  %449 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x405, ptr noundef %x406, i32 noundef %449, i32 noundef -1543106077)
  %450 = load i32, ptr %x5, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x407, ptr noundef %x408, i32 noundef %450, i32 noundef 1151078145)
  %451 = load i32, ptr %x408, align 4
  %452 = load i32, ptr %x405, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext 0, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x410, align 1
  %454 = load i32, ptr %x406, align 4
  %455 = load i32, ptr %x403, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i8, ptr %x412, align 1
  %457 = load i32, ptr %x404, align 4
  %458 = load i32, ptr %x401, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %456, i32 noundef %457, i32 noundef %458)
  %459 = load i8, ptr %x414, align 1
  %460 = load i32, ptr %x402, align 4
  %461 = load i32, ptr %x399, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %459, i32 noundef %460, i32 noundef %461)
  %462 = load i8, ptr %x416, align 1
  %463 = load i32, ptr %x400, align 4
  %464 = load i32, ptr %x397, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %462, i32 noundef %463, i32 noundef %464)
  %465 = load i8, ptr %x418, align 1
  %466 = load i32, ptr %x398, align 4
  %467 = load i32, ptr %x395, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %465, i32 noundef %466, i32 noundef %467)
  %468 = load i8, ptr %x420, align 1
  %469 = load i32, ptr %x396, align 4
  %470 = load i32, ptr %x393, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i32, ptr %x379, align 4
  %472 = load i32, ptr %x407, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x423, ptr noundef %x424, i8 noundef zeroext 0, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x424, align 1
  %474 = load i32, ptr %x381, align 4
  %475 = load i32, ptr %x409, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x426, align 1
  %477 = load i32, ptr %x383, align 4
  %478 = load i32, ptr %x411, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x428, align 1
  %480 = load i32, ptr %x385, align 4
  %481 = load i32, ptr %x413, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i8, ptr %x430, align 1
  %483 = load i32, ptr %x387, align 4
  %484 = load i32, ptr %x415, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %482, i32 noundef %483, i32 noundef %484)
  %485 = load i8, ptr %x432, align 1
  %486 = load i32, ptr %x389, align 4
  %487 = load i32, ptr %x417, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %485, i32 noundef %486, i32 noundef %487)
  %488 = load i8, ptr %x434, align 1
  %489 = load i32, ptr %x391, align 4
  %490 = load i32, ptr %x419, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %488, i32 noundef %489, i32 noundef %490)
  %491 = load i8, ptr %x436, align 1
  %492 = load i8, ptr %x392, align 1
  %conv42 = zext i8 %492 to i32
  %493 = load i8, ptr %x358, align 1
  %conv43 = zext i8 %493 to i32
  %494 = load i8, ptr %x342, align 1
  %conv44 = zext i8 %494 to i32
  %495 = load i32, ptr %x314, align 4
  %add45 = add i32 %conv44, %495
  %add46 = add i32 %conv43, %add45
  %add47 = add i32 %conv42, %add46
  %496 = load i32, ptr %x362, align 4
  %add48 = add i32 %add47, %496
  %497 = load i32, ptr %x421, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %491, i32 noundef %add48, i32 noundef %497)
  %498 = load i32, ptr %x423, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x439, ptr noundef %x440, i32 noundef %498, i32 noundef 307527195)
  %499 = load i32, ptr %x439, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x441, ptr noundef %x442, i32 noundef %499, i32 noundef 268435456)
  %500 = load i32, ptr %x439, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x443, ptr noundef %x444, i32 noundef %500, i32 noundef 350157278)
  %501 = load i32, ptr %x439, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x445, ptr noundef %x446, i32 noundef %501, i32 noundef -1560830762)
  %502 = load i32, ptr %x439, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x447, ptr noundef %x448, i32 noundef %502, i32 noundef 1477600026)
  %503 = load i32, ptr %x439, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x449, ptr noundef %x450, i32 noundef %503, i32 noundef 1559614445)
  %504 = load i32, ptr %x450, align 4
  %505 = load i32, ptr %x447, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext 0, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x452, align 1
  %507 = load i32, ptr %x448, align 4
  %508 = load i32, ptr %x445, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %506, i32 noundef %507, i32 noundef %508)
  %509 = load i8, ptr %x454, align 1
  %510 = load i32, ptr %x446, align 4
  %511 = load i32, ptr %x443, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext %509, i32 noundef %510, i32 noundef %511)
  %512 = load i32, ptr %x423, align 4
  %513 = load i32, ptr %x449, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext 0, i32 noundef %512, i32 noundef %513)
  %514 = load i8, ptr %x458, align 1
  %515 = load i32, ptr %x425, align 4
  %516 = load i32, ptr %x451, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %514, i32 noundef %515, i32 noundef %516)
  %517 = load i8, ptr %x460, align 1
  %518 = load i32, ptr %x427, align 4
  %519 = load i32, ptr %x453, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %517, i32 noundef %518, i32 noundef %519)
  %520 = load i8, ptr %x462, align 1
  %521 = load i32, ptr %x429, align 4
  %522 = load i32, ptr %x455, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %520, i32 noundef %521, i32 noundef %522)
  %523 = load i8, ptr %x464, align 1
  %524 = load i32, ptr %x431, align 4
  %525 = load i8, ptr %x456, align 1
  %conv49 = zext i8 %525 to i32
  %526 = load i32, ptr %x444, align 4
  %add50 = add i32 %conv49, %526
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %523, i32 noundef %524, i32 noundef %add50)
  %527 = load i8, ptr %x466, align 1
  %528 = load i32, ptr %x433, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %527, i32 noundef %528, i32 noundef 0)
  %529 = load i8, ptr %x468, align 1
  %530 = load i32, ptr %x435, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %529, i32 noundef %530, i32 noundef 0)
  %531 = load i8, ptr %x470, align 1
  %532 = load i32, ptr %x437, align 4
  %533 = load i32, ptr %x441, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %531, i32 noundef %532, i32 noundef %533)
  %534 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x473, ptr noundef %x474, i32 noundef %534, i32 noundef 60375323)
  %535 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x475, ptr noundef %x476, i32 noundef %535, i32 noundef 2083559997)
  %536 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x477, ptr noundef %x478, i32 noundef %536, i32 noundef -823364654)
  %537 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x479, ptr noundef %x480, i32 noundef %537, i32 noundef 401981029)
  %538 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x481, ptr noundef %x482, i32 noundef %538, i32 noundef -804381785)
  %539 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x483, ptr noundef %x484, i32 noundef %539, i32 noundef 1753584455)
  %540 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x485, ptr noundef %x486, i32 noundef %540, i32 noundef -1543106077)
  %541 = load i32, ptr %x6, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x487, ptr noundef %x488, i32 noundef %541, i32 noundef 1151078145)
  %542 = load i32, ptr %x488, align 4
  %543 = load i32, ptr %x485, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext 0, i32 noundef %542, i32 noundef %543)
  %544 = load i8, ptr %x490, align 1
  %545 = load i32, ptr %x486, align 4
  %546 = load i32, ptr %x483, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext %544, i32 noundef %545, i32 noundef %546)
  %547 = load i8, ptr %x492, align 1
  %548 = load i32, ptr %x484, align 4
  %549 = load i32, ptr %x481, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %547, i32 noundef %548, i32 noundef %549)
  %550 = load i8, ptr %x494, align 1
  %551 = load i32, ptr %x482, align 4
  %552 = load i32, ptr %x479, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %550, i32 noundef %551, i32 noundef %552)
  %553 = load i8, ptr %x496, align 1
  %554 = load i32, ptr %x480, align 4
  %555 = load i32, ptr %x477, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext %553, i32 noundef %554, i32 noundef %555)
  %556 = load i8, ptr %x498, align 1
  %557 = load i32, ptr %x478, align 4
  %558 = load i32, ptr %x475, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %556, i32 noundef %557, i32 noundef %558)
  %559 = load i8, ptr %x500, align 1
  %560 = load i32, ptr %x476, align 4
  %561 = load i32, ptr %x473, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x501, ptr noundef %x502, i8 noundef zeroext %559, i32 noundef %560, i32 noundef %561)
  %562 = load i32, ptr %x459, align 4
  %563 = load i32, ptr %x487, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x503, ptr noundef %x504, i8 noundef zeroext 0, i32 noundef %562, i32 noundef %563)
  %564 = load i8, ptr %x504, align 1
  %565 = load i32, ptr %x461, align 4
  %566 = load i32, ptr %x489, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext %564, i32 noundef %565, i32 noundef %566)
  %567 = load i8, ptr %x506, align 1
  %568 = load i32, ptr %x463, align 4
  %569 = load i32, ptr %x491, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext %567, i32 noundef %568, i32 noundef %569)
  %570 = load i8, ptr %x508, align 1
  %571 = load i32, ptr %x465, align 4
  %572 = load i32, ptr %x493, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %570, i32 noundef %571, i32 noundef %572)
  %573 = load i8, ptr %x510, align 1
  %574 = load i32, ptr %x467, align 4
  %575 = load i32, ptr %x495, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %573, i32 noundef %574, i32 noundef %575)
  %576 = load i8, ptr %x512, align 1
  %577 = load i32, ptr %x469, align 4
  %578 = load i32, ptr %x497, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %576, i32 noundef %577, i32 noundef %578)
  %579 = load i8, ptr %x514, align 1
  %580 = load i32, ptr %x471, align 4
  %581 = load i32, ptr %x499, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %579, i32 noundef %580, i32 noundef %581)
  %582 = load i8, ptr %x516, align 1
  %583 = load i8, ptr %x472, align 1
  %conv51 = zext i8 %583 to i32
  %584 = load i8, ptr %x438, align 1
  %conv52 = zext i8 %584 to i32
  %585 = load i8, ptr %x422, align 1
  %conv53 = zext i8 %585 to i32
  %586 = load i32, ptr %x394, align 4
  %add54 = add i32 %conv53, %586
  %add55 = add i32 %conv52, %add54
  %add56 = add i32 %conv51, %add55
  %587 = load i32, ptr %x442, align 4
  %add57 = add i32 %add56, %587
  %588 = load i32, ptr %x501, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %582, i32 noundef %add57, i32 noundef %588)
  %589 = load i32, ptr %x503, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x519, ptr noundef %x520, i32 noundef %589, i32 noundef 307527195)
  %590 = load i32, ptr %x519, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x521, ptr noundef %x522, i32 noundef %590, i32 noundef 268435456)
  %591 = load i32, ptr %x519, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x523, ptr noundef %x524, i32 noundef %591, i32 noundef 350157278)
  %592 = load i32, ptr %x519, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x525, ptr noundef %x526, i32 noundef %592, i32 noundef -1560830762)
  %593 = load i32, ptr %x519, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x527, ptr noundef %x528, i32 noundef %593, i32 noundef 1477600026)
  %594 = load i32, ptr %x519, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x529, ptr noundef %x530, i32 noundef %594, i32 noundef 1559614445)
  %595 = load i32, ptr %x530, align 4
  %596 = load i32, ptr %x527, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext 0, i32 noundef %595, i32 noundef %596)
  %597 = load i8, ptr %x532, align 1
  %598 = load i32, ptr %x528, align 4
  %599 = load i32, ptr %x525, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x533, ptr noundef %x534, i8 noundef zeroext %597, i32 noundef %598, i32 noundef %599)
  %600 = load i8, ptr %x534, align 1
  %601 = load i32, ptr %x526, align 4
  %602 = load i32, ptr %x523, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext %600, i32 noundef %601, i32 noundef %602)
  %603 = load i32, ptr %x503, align 4
  %604 = load i32, ptr %x529, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext 0, i32 noundef %603, i32 noundef %604)
  %605 = load i8, ptr %x538, align 1
  %606 = load i32, ptr %x505, align 4
  %607 = load i32, ptr %x531, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext %605, i32 noundef %606, i32 noundef %607)
  %608 = load i8, ptr %x540, align 1
  %609 = load i32, ptr %x507, align 4
  %610 = load i32, ptr %x533, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %608, i32 noundef %609, i32 noundef %610)
  %611 = load i8, ptr %x542, align 1
  %612 = load i32, ptr %x509, align 4
  %613 = load i32, ptr %x535, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %611, i32 noundef %612, i32 noundef %613)
  %614 = load i8, ptr %x544, align 1
  %615 = load i32, ptr %x511, align 4
  %616 = load i8, ptr %x536, align 1
  %conv58 = zext i8 %616 to i32
  %617 = load i32, ptr %x524, align 4
  %add59 = add i32 %conv58, %617
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %614, i32 noundef %615, i32 noundef %add59)
  %618 = load i8, ptr %x546, align 1
  %619 = load i32, ptr %x513, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %618, i32 noundef %619, i32 noundef 0)
  %620 = load i8, ptr %x548, align 1
  %621 = load i32, ptr %x515, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %620, i32 noundef %621, i32 noundef 0)
  %622 = load i8, ptr %x550, align 1
  %623 = load i32, ptr %x517, align 4
  %624 = load i32, ptr %x521, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %622, i32 noundef %623, i32 noundef %624)
  %625 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x553, ptr noundef %x554, i32 noundef %625, i32 noundef 60375323)
  %626 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x555, ptr noundef %x556, i32 noundef %626, i32 noundef 2083559997)
  %627 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x557, ptr noundef %x558, i32 noundef %627, i32 noundef -823364654)
  %628 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x559, ptr noundef %x560, i32 noundef %628, i32 noundef 401981029)
  %629 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x561, ptr noundef %x562, i32 noundef %629, i32 noundef -804381785)
  %630 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x563, ptr noundef %x564, i32 noundef %630, i32 noundef 1753584455)
  %631 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x565, ptr noundef %x566, i32 noundef %631, i32 noundef -1543106077)
  %632 = load i32, ptr %x7, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x567, ptr noundef %x568, i32 noundef %632, i32 noundef 1151078145)
  %633 = load i32, ptr %x568, align 4
  %634 = load i32, ptr %x565, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x569, ptr noundef %x570, i8 noundef zeroext 0, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x570, align 1
  %636 = load i32, ptr %x566, align 4
  %637 = load i32, ptr %x563, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x571, ptr noundef %x572, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x572, align 1
  %639 = load i32, ptr %x564, align 4
  %640 = load i32, ptr %x561, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x573, ptr noundef %x574, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x574, align 1
  %642 = load i32, ptr %x562, align 4
  %643 = load i32, ptr %x559, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x575, ptr noundef %x576, i8 noundef zeroext %641, i32 noundef %642, i32 noundef %643)
  %644 = load i8, ptr %x576, align 1
  %645 = load i32, ptr %x560, align 4
  %646 = load i32, ptr %x557, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext %644, i32 noundef %645, i32 noundef %646)
  %647 = load i8, ptr %x578, align 1
  %648 = load i32, ptr %x558, align 4
  %649 = load i32, ptr %x555, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x579, ptr noundef %x580, i8 noundef zeroext %647, i32 noundef %648, i32 noundef %649)
  %650 = load i8, ptr %x580, align 1
  %651 = load i32, ptr %x556, align 4
  %652 = load i32, ptr %x553, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x581, ptr noundef %x582, i8 noundef zeroext %650, i32 noundef %651, i32 noundef %652)
  %653 = load i32, ptr %x539, align 4
  %654 = load i32, ptr %x567, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x583, ptr noundef %x584, i8 noundef zeroext 0, i32 noundef %653, i32 noundef %654)
  %655 = load i8, ptr %x584, align 1
  %656 = load i32, ptr %x541, align 4
  %657 = load i32, ptr %x569, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext %655, i32 noundef %656, i32 noundef %657)
  %658 = load i8, ptr %x586, align 1
  %659 = load i32, ptr %x543, align 4
  %660 = load i32, ptr %x571, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %658, i32 noundef %659, i32 noundef %660)
  %661 = load i8, ptr %x588, align 1
  %662 = load i32, ptr %x545, align 4
  %663 = load i32, ptr %x573, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %661, i32 noundef %662, i32 noundef %663)
  %664 = load i8, ptr %x590, align 1
  %665 = load i32, ptr %x547, align 4
  %666 = load i32, ptr %x575, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %664, i32 noundef %665, i32 noundef %666)
  %667 = load i8, ptr %x592, align 1
  %668 = load i32, ptr %x549, align 4
  %669 = load i32, ptr %x577, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %667, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x594, align 1
  %671 = load i32, ptr %x551, align 4
  %672 = load i32, ptr %x579, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %670, i32 noundef %671, i32 noundef %672)
  %673 = load i8, ptr %x596, align 1
  %674 = load i8, ptr %x552, align 1
  %conv60 = zext i8 %674 to i32
  %675 = load i8, ptr %x518, align 1
  %conv61 = zext i8 %675 to i32
  %676 = load i8, ptr %x502, align 1
  %conv62 = zext i8 %676 to i32
  %677 = load i32, ptr %x474, align 4
  %add63 = add i32 %conv62, %677
  %add64 = add i32 %conv61, %add63
  %add65 = add i32 %conv60, %add64
  %678 = load i32, ptr %x522, align 4
  %add66 = add i32 %add65, %678
  %679 = load i32, ptr %x581, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %673, i32 noundef %add66, i32 noundef %679)
  %680 = load i32, ptr %x583, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x599, ptr noundef %x600, i32 noundef %680, i32 noundef 307527195)
  %681 = load i32, ptr %x599, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x601, ptr noundef %x602, i32 noundef %681, i32 noundef 268435456)
  %682 = load i32, ptr %x599, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x603, ptr noundef %x604, i32 noundef %682, i32 noundef 350157278)
  %683 = load i32, ptr %x599, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x605, ptr noundef %x606, i32 noundef %683, i32 noundef -1560830762)
  %684 = load i32, ptr %x599, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x607, ptr noundef %x608, i32 noundef %684, i32 noundef 1477600026)
  %685 = load i32, ptr %x599, align 4
  call void @fiat_25519_scalar_mulx_u32(ptr noundef %x609, ptr noundef %x610, i32 noundef %685, i32 noundef 1559614445)
  %686 = load i32, ptr %x610, align 4
  %687 = load i32, ptr %x607, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x611, ptr noundef %x612, i8 noundef zeroext 0, i32 noundef %686, i32 noundef %687)
  %688 = load i8, ptr %x612, align 1
  %689 = load i32, ptr %x608, align 4
  %690 = load i32, ptr %x605, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x613, ptr noundef %x614, i8 noundef zeroext %688, i32 noundef %689, i32 noundef %690)
  %691 = load i8, ptr %x614, align 1
  %692 = load i32, ptr %x606, align 4
  %693 = load i32, ptr %x603, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x615, ptr noundef %x616, i8 noundef zeroext %691, i32 noundef %692, i32 noundef %693)
  %694 = load i32, ptr %x583, align 4
  %695 = load i32, ptr %x609, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext 0, i32 noundef %694, i32 noundef %695)
  %696 = load i8, ptr %x618, align 1
  %697 = load i32, ptr %x585, align 4
  %698 = load i32, ptr %x611, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x619, ptr noundef %x620, i8 noundef zeroext %696, i32 noundef %697, i32 noundef %698)
  %699 = load i8, ptr %x620, align 1
  %700 = load i32, ptr %x587, align 4
  %701 = load i32, ptr %x613, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x621, ptr noundef %x622, i8 noundef zeroext %699, i32 noundef %700, i32 noundef %701)
  %702 = load i8, ptr %x622, align 1
  %703 = load i32, ptr %x589, align 4
  %704 = load i32, ptr %x615, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x623, ptr noundef %x624, i8 noundef zeroext %702, i32 noundef %703, i32 noundef %704)
  %705 = load i8, ptr %x624, align 1
  %706 = load i32, ptr %x591, align 4
  %707 = load i8, ptr %x616, align 1
  %conv67 = zext i8 %707 to i32
  %708 = load i32, ptr %x604, align 4
  %add68 = add i32 %conv67, %708
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x625, ptr noundef %x626, i8 noundef zeroext %705, i32 noundef %706, i32 noundef %add68)
  %709 = load i8, ptr %x626, align 1
  %710 = load i32, ptr %x593, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext %709, i32 noundef %710, i32 noundef 0)
  %711 = load i8, ptr %x628, align 1
  %712 = load i32, ptr %x595, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext %711, i32 noundef %712, i32 noundef 0)
  %713 = load i8, ptr %x630, align 1
  %714 = load i32, ptr %x597, align 4
  %715 = load i32, ptr %x601, align 4
  call void @fiat_25519_scalar_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %713, i32 noundef %714, i32 noundef %715)
  %716 = load i8, ptr %x632, align 1
  %conv69 = zext i8 %716 to i32
  %717 = load i8, ptr %x598, align 1
  %conv70 = zext i8 %717 to i32
  %718 = load i8, ptr %x582, align 1
  %conv71 = zext i8 %718 to i32
  %719 = load i32, ptr %x554, align 4
  %add72 = add i32 %conv71, %719
  %add73 = add i32 %conv70, %add72
  %add74 = add i32 %conv69, %add73
  %720 = load i32, ptr %x602, align 4
  %add75 = add i32 %add74, %720
  store i32 %add75, ptr %x633, align 4
  %721 = load i32, ptr %x619, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x634, ptr noundef %x635, i8 noundef zeroext 0, i32 noundef %721, i32 noundef 1559614445)
  %722 = load i8, ptr %x635, align 1
  %723 = load i32, ptr %x621, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x636, ptr noundef %x637, i8 noundef zeroext %722, i32 noundef %723, i32 noundef 1477600026)
  %724 = load i8, ptr %x637, align 1
  %725 = load i32, ptr %x623, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x638, ptr noundef %x639, i8 noundef zeroext %724, i32 noundef %725, i32 noundef -1560830762)
  %726 = load i8, ptr %x639, align 1
  %727 = load i32, ptr %x625, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x640, ptr noundef %x641, i8 noundef zeroext %726, i32 noundef %727, i32 noundef 350157278)
  %728 = load i8, ptr %x641, align 1
  %729 = load i32, ptr %x627, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x642, ptr noundef %x643, i8 noundef zeroext %728, i32 noundef %729, i32 noundef 0)
  %730 = load i8, ptr %x643, align 1
  %731 = load i32, ptr %x629, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x644, ptr noundef %x645, i8 noundef zeroext %730, i32 noundef %731, i32 noundef 0)
  %732 = load i8, ptr %x645, align 1
  %733 = load i32, ptr %x631, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x646, ptr noundef %x647, i8 noundef zeroext %732, i32 noundef %733, i32 noundef 0)
  %734 = load i8, ptr %x647, align 1
  %735 = load i32, ptr %x633, align 4
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x648, ptr noundef %x649, i8 noundef zeroext %734, i32 noundef %735, i32 noundef 268435456)
  %736 = load i8, ptr %x649, align 1
  call void @fiat_25519_scalar_subborrowx_u32(ptr noundef %x650, ptr noundef %x651, i8 noundef zeroext %736, i32 noundef 0, i32 noundef 0)
  %737 = load i8, ptr %x651, align 1
  %738 = load i32, ptr %x634, align 4
  %739 = load i32, ptr %x619, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x652, i8 noundef zeroext %737, i32 noundef %738, i32 noundef %739)
  %740 = load i8, ptr %x651, align 1
  %741 = load i32, ptr %x636, align 4
  %742 = load i32, ptr %x621, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x653, i8 noundef zeroext %740, i32 noundef %741, i32 noundef %742)
  %743 = load i8, ptr %x651, align 1
  %744 = load i32, ptr %x638, align 4
  %745 = load i32, ptr %x623, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x654, i8 noundef zeroext %743, i32 noundef %744, i32 noundef %745)
  %746 = load i8, ptr %x651, align 1
  %747 = load i32, ptr %x640, align 4
  %748 = load i32, ptr %x625, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x655, i8 noundef zeroext %746, i32 noundef %747, i32 noundef %748)
  %749 = load i8, ptr %x651, align 1
  %750 = load i32, ptr %x642, align 4
  %751 = load i32, ptr %x627, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x656, i8 noundef zeroext %749, i32 noundef %750, i32 noundef %751)
  %752 = load i8, ptr %x651, align 1
  %753 = load i32, ptr %x644, align 4
  %754 = load i32, ptr %x629, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x657, i8 noundef zeroext %752, i32 noundef %753, i32 noundef %754)
  %755 = load i8, ptr %x651, align 1
  %756 = load i32, ptr %x646, align 4
  %757 = load i32, ptr %x631, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x658, i8 noundef zeroext %755, i32 noundef %756, i32 noundef %757)
  %758 = load i8, ptr %x651, align 1
  %759 = load i32, ptr %x648, align 4
  %760 = load i32, ptr %x633, align 4
  call void @fiat_25519_scalar_cmovznz_u32(ptr noundef %x659, i8 noundef zeroext %758, i32 noundef %759, i32 noundef %760)
  %761 = load i32, ptr %x652, align 4
  %762 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %762, i64 0
  store i32 %761, ptr %arrayidx76, align 4
  %763 = load i32, ptr %x653, align 4
  %764 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %764, i64 1
  store i32 %763, ptr %arrayidx77, align 4
  %765 = load i32, ptr %x654, align 4
  %766 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %766, i64 2
  store i32 %765, ptr %arrayidx78, align 4
  %767 = load i32, ptr %x655, align 4
  %768 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %768, i64 3
  store i32 %767, ptr %arrayidx79, align 4
  %769 = load i32, ptr %x656, align 4
  %770 = load ptr, ptr %out1.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %770, i64 4
  store i32 %769, ptr %arrayidx80, align 4
  %771 = load i32, ptr %x657, align 4
  %772 = load ptr, ptr %out1.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %772, i64 5
  store i32 %771, ptr %arrayidx81, align 4
  %773 = load i32, ptr %x658, align 4
  %774 = load ptr, ptr %out1.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %774, i64 6
  store i32 %773, ptr %arrayidx82, align 4
  %775 = load i32, ptr %x659, align 4
  %776 = load ptr, ptr %out1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %776, i64 7
  store i32 %775, ptr %arrayidx83, align 4
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
