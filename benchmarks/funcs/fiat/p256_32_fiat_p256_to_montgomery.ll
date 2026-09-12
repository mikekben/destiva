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
define dso_local void @fiat_p256_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i8, align 1
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i8, align 1
  %x43 = alloca i32, align 4
  %x44 = alloca i8, align 1
  %x45 = alloca i32, align 4
  %x46 = alloca i8, align 1
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
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
  %x104 = alloca i32, align 4
  %x105 = alloca i32, align 4
  %x106 = alloca i32, align 4
  %x107 = alloca i32, align 4
  %x108 = alloca i32, align 4
  %x109 = alloca i32, align 4
  %x110 = alloca i32, align 4
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
  %x130 = alloca i8, align 1
  %x131 = alloca i32, align 4
  %x132 = alloca i8, align 1
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
  %x146 = alloca i32, align 4
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
  %x200 = alloca i8, align 1
  %x201 = alloca i32, align 4
  %x202 = alloca i8, align 1
  %x203 = alloca i32, align 4
  %x204 = alloca i32, align 4
  %x205 = alloca i32, align 4
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
  %x234 = alloca i8, align 1
  %x235 = alloca i32, align 4
  %x236 = alloca i8, align 1
  %x237 = alloca i32, align 4
  %x238 = alloca i8, align 1
  %x239 = alloca i32, align 4
  %x240 = alloca i8, align 1
  %x241 = alloca i32, align 4
  %x242 = alloca i8, align 1
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
  %x245 = alloca i32, align 4
  %x246 = alloca i32, align 4
  %x247 = alloca i32, align 4
  %x248 = alloca i32, align 4
  %x249 = alloca i32, align 4
  %x250 = alloca i32, align 4
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
  %x274 = alloca i32, align 4
  %x275 = alloca i32, align 4
  %x276 = alloca i32, align 4
  %x277 = alloca i32, align 4
  %x278 = alloca i32, align 4
  %x279 = alloca i32, align 4
  %x280 = alloca i32, align 4
  %x281 = alloca i32, align 4
  %x282 = alloca i32, align 4
  %x283 = alloca i32, align 4
  %x284 = alloca i32, align 4
  %x285 = alloca i32, align 4
  %x286 = alloca i32, align 4
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
  %x338 = alloca i8, align 1
  %x339 = alloca i32, align 4
  %x340 = alloca i8, align 1
  %x341 = alloca i32, align 4
  %x342 = alloca i8, align 1
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
  %x355 = alloca i32, align 4
  %x356 = alloca i32, align 4
  %x357 = alloca i32, align 4
  %x358 = alloca i8, align 1
  %x359 = alloca i32, align 4
  %x360 = alloca i8, align 1
  %x361 = alloca i32, align 4
  %x362 = alloca i8, align 1
  %x363 = alloca i32, align 4
  %x364 = alloca i8, align 1
  %x365 = alloca i32, align 4
  %x366 = alloca i8, align 1
  %x367 = alloca i32, align 4
  %x368 = alloca i8, align 1
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
  %x384 = alloca i32, align 4
  %x385 = alloca i32, align 4
  %x386 = alloca i32, align 4
  %x387 = alloca i32, align 4
  %x388 = alloca i32, align 4
  %x389 = alloca i32, align 4
  %x390 = alloca i32, align 4
  %x391 = alloca i32, align 4
  %x392 = alloca i8, align 1
  %x393 = alloca i32, align 4
  %x394 = alloca i8, align 1
  %x395 = alloca i32, align 4
  %x396 = alloca i8, align 1
  %x397 = alloca i32, align 4
  %x398 = alloca i8, align 1
  %x399 = alloca i32, align 4
  %x400 = alloca i8, align 1
  %x401 = alloca i32, align 4
  %x402 = alloca i8, align 1
  %x403 = alloca i32, align 4
  %x404 = alloca i8, align 1
  %x405 = alloca i32, align 4
  %x406 = alloca i8, align 1
  %x407 = alloca i32, align 4
  %x408 = alloca i8, align 1
  %x409 = alloca i32, align 4
  %x410 = alloca i8, align 1
  %x411 = alloca i32, align 4
  %x412 = alloca i8, align 1
  %x413 = alloca i32, align 4
  %x414 = alloca i32, align 4
  %x415 = alloca i32, align 4
  %x416 = alloca i32, align 4
  %x417 = alloca i32, align 4
  %x418 = alloca i32, align 4
  %x419 = alloca i32, align 4
  %x420 = alloca i32, align 4
  %x421 = alloca i32, align 4
  %x422 = alloca i32, align 4
  %x423 = alloca i32, align 4
  %x424 = alloca i32, align 4
  %x425 = alloca i32, align 4
  %x426 = alloca i32, align 4
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
  %x454 = alloca i32, align 4
  %x455 = alloca i32, align 4
  %x456 = alloca i32, align 4
  %x457 = alloca i32, align 4
  %x458 = alloca i32, align 4
  %x459 = alloca i32, align 4
  %x460 = alloca i32, align 4
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
  %x484 = alloca i32, align 4
  %x485 = alloca i32, align 4
  %x486 = alloca i32, align 4
  %x487 = alloca i32, align 4
  %x488 = alloca i32, align 4
  %x489 = alloca i32, align 4
  %x490 = alloca i32, align 4
  %x491 = alloca i32, align 4
  %x492 = alloca i32, align 4
  %x493 = alloca i32, align 4
  %x494 = alloca i32, align 4
  %x495 = alloca i32, align 4
  %x496 = alloca i32, align 4
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
  %x520 = alloca i8, align 1
  %x521 = alloca i32, align 4
  %x522 = alloca i8, align 1
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
  %x572 = alloca i32, align 4
  %x573 = alloca i32, align 4
  %x574 = alloca i32, align 4
  %x575 = alloca i32, align 4
  %x576 = alloca i32, align 4
  %x577 = alloca i32, align 4
  %x578 = alloca i32, align 4
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
  call void @fiat_p256_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef 4)
  %17 = load i32, ptr %x8, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %17, i32 noundef -3)
  %18 = load i32, ptr %x8, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %18, i32 noundef -1)
  %19 = load i32, ptr %x8, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %19, i32 noundef -2)
  %20 = load i32, ptr %x8, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %20, i32 noundef -5)
  %21 = load i32, ptr %x8, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %21, i32 noundef -1)
  %22 = load i32, ptr %x8, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %22, i32 noundef 3)
  %23 = load i32, ptr %x20, align 4
  %24 = load i32, ptr %x17, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext 0, i32 noundef %23, i32 noundef %24)
  %25 = load i8, ptr %x24, align 1
  %26 = load i32, ptr %x18, align 4
  %27 = load i32, ptr %x15, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %25, i32 noundef %26, i32 noundef %27)
  %28 = load i8, ptr %x26, align 1
  %29 = load i32, ptr %x16, align 4
  %30 = load i32, ptr %x13, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %28, i32 noundef %29, i32 noundef %30)
  %31 = load i8, ptr %x28, align 1
  %32 = load i32, ptr %x14, align 4
  %33 = load i32, ptr %x11, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %31, i32 noundef %32, i32 noundef %33)
  %34 = load i8, ptr %x30, align 1
  %35 = load i32, ptr %x12, align 4
  %36 = load i32, ptr %x9, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %34, i32 noundef %35, i32 noundef %36)
  %37 = load i32, ptr %x21, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x33, ptr noundef %x34, i32 noundef %37, i32 noundef -1)
  %38 = load i32, ptr %x21, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %38, i32 noundef -1)
  %39 = load i32, ptr %x21, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x37, ptr noundef %x38, i32 noundef %39, i32 noundef -1)
  %40 = load i32, ptr %x21, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %40, i32 noundef -1)
  %41 = load i32, ptr %x40, align 4
  %42 = load i32, ptr %x37, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext 0, i32 noundef %41, i32 noundef %42)
  %43 = load i8, ptr %x42, align 1
  %44 = load i32, ptr %x38, align 4
  %45 = load i32, ptr %x35, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %43, i32 noundef %44, i32 noundef %45)
  %46 = load i32, ptr %x21, align 4
  %47 = load i32, ptr %x39, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext 0, i32 noundef %46, i32 noundef %47)
  %48 = load i8, ptr %x46, align 1
  %49 = load i32, ptr %x22, align 4
  %50 = load i32, ptr %x41, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x48, align 1
  %52 = load i32, ptr %x19, align 4
  %53 = load i32, ptr %x43, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x50, align 1
  %55 = load i32, ptr %x23, align 4
  %56 = load i8, ptr %x44, align 1
  %conv = zext i8 %56 to i32
  %57 = load i32, ptr %x36, align 4
  %add = add i32 %conv, %57
  call void @fiat_p256_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %add)
  %58 = load i8, ptr %x52, align 1
  %59 = load i32, ptr %x25, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %58, i32 noundef %59, i32 noundef 0)
  %60 = load i8, ptr %x54, align 1
  %61 = load i32, ptr %x27, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %60, i32 noundef %61, i32 noundef 0)
  %62 = load i8, ptr %x56, align 1
  %63 = load i32, ptr %x29, align 4
  %64 = load i32, ptr %x21, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x58, align 1
  %66 = load i32, ptr %x31, align 4
  %67 = load i32, ptr %x33, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x60, align 1
  %69 = load i8, ptr %x32, align 1
  %conv8 = zext i8 %69 to i32
  %70 = load i32, ptr %x10, align 4
  %add9 = add i32 %conv8, %70
  %71 = load i32, ptr %x34, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %68, i32 noundef %add9, i32 noundef %71)
  %72 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x63, ptr noundef %x64, i32 noundef %72, i32 noundef 4)
  %73 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x65, ptr noundef %x66, i32 noundef %73, i32 noundef -3)
  %74 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x67, ptr noundef %x68, i32 noundef %74, i32 noundef -1)
  %75 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x69, ptr noundef %x70, i32 noundef %75, i32 noundef -2)
  %76 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x71, ptr noundef %x72, i32 noundef %76, i32 noundef -5)
  %77 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x73, ptr noundef %x74, i32 noundef %77, i32 noundef -1)
  %78 = load i32, ptr %x1, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x75, ptr noundef %x76, i32 noundef %78, i32 noundef 3)
  %79 = load i32, ptr %x74, align 4
  %80 = load i32, ptr %x71, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x78, align 1
  %82 = load i32, ptr %x72, align 4
  %83 = load i32, ptr %x69, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x80, align 1
  %85 = load i32, ptr %x70, align 4
  %86 = load i32, ptr %x67, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x82, align 1
  %88 = load i32, ptr %x68, align 4
  %89 = load i32, ptr %x65, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x84, align 1
  %91 = load i32, ptr %x66, align 4
  %92 = load i32, ptr %x63, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92)
  %93 = load i32, ptr %x47, align 4
  %94 = load i32, ptr %x75, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext 0, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x88, align 1
  %96 = load i32, ptr %x49, align 4
  %97 = load i32, ptr %x76, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %95, i32 noundef %96, i32 noundef %97)
  %98 = load i8, ptr %x90, align 1
  %99 = load i32, ptr %x51, align 4
  %100 = load i32, ptr %x73, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %98, i32 noundef %99, i32 noundef %100)
  %101 = load i8, ptr %x92, align 1
  %102 = load i32, ptr %x53, align 4
  %103 = load i32, ptr %x77, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %101, i32 noundef %102, i32 noundef %103)
  %104 = load i8, ptr %x94, align 1
  %105 = load i32, ptr %x55, align 4
  %106 = load i32, ptr %x79, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %104, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x96, align 1
  %108 = load i32, ptr %x57, align 4
  %109 = load i32, ptr %x81, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %107, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x98, align 1
  %111 = load i32, ptr %x59, align 4
  %112 = load i32, ptr %x83, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x100, align 1
  %114 = load i32, ptr %x61, align 4
  %115 = load i32, ptr %x85, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %115)
  %116 = load i32, ptr %x87, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x103, ptr noundef %x104, i32 noundef %116, i32 noundef -1)
  %117 = load i32, ptr %x87, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x105, ptr noundef %x106, i32 noundef %117, i32 noundef -1)
  %118 = load i32, ptr %x87, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x107, ptr noundef %x108, i32 noundef %118, i32 noundef -1)
  %119 = load i32, ptr %x87, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x109, ptr noundef %x110, i32 noundef %119, i32 noundef -1)
  %120 = load i32, ptr %x110, align 4
  %121 = load i32, ptr %x107, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext 0, i32 noundef %120, i32 noundef %121)
  %122 = load i8, ptr %x112, align 1
  %123 = load i32, ptr %x108, align 4
  %124 = load i32, ptr %x105, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %122, i32 noundef %123, i32 noundef %124)
  %125 = load i32, ptr %x87, align 4
  %126 = load i32, ptr %x109, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext 0, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x116, align 1
  %128 = load i32, ptr %x89, align 4
  %129 = load i32, ptr %x111, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %127, i32 noundef %128, i32 noundef %129)
  %130 = load i8, ptr %x118, align 1
  %131 = load i32, ptr %x91, align 4
  %132 = load i32, ptr %x113, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %130, i32 noundef %131, i32 noundef %132)
  %133 = load i8, ptr %x120, align 1
  %134 = load i32, ptr %x93, align 4
  %135 = load i8, ptr %x114, align 1
  %conv10 = zext i8 %135 to i32
  %136 = load i32, ptr %x106, align 4
  %add11 = add i32 %conv10, %136
  call void @fiat_p256_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %133, i32 noundef %134, i32 noundef %add11)
  %137 = load i8, ptr %x122, align 1
  %138 = load i32, ptr %x95, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %137, i32 noundef %138, i32 noundef 0)
  %139 = load i8, ptr %x124, align 1
  %140 = load i32, ptr %x97, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %139, i32 noundef %140, i32 noundef 0)
  %141 = load i8, ptr %x126, align 1
  %142 = load i32, ptr %x99, align 4
  %143 = load i32, ptr %x87, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143)
  %144 = load i8, ptr %x128, align 1
  %145 = load i32, ptr %x101, align 4
  %146 = load i32, ptr %x103, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %144, i32 noundef %145, i32 noundef %146)
  %147 = load i8, ptr %x130, align 1
  %148 = load i8, ptr %x102, align 1
  %conv12 = zext i8 %148 to i32
  %149 = load i8, ptr %x62, align 1
  %conv13 = zext i8 %149 to i32
  %add14 = add i32 %conv12, %conv13
  %150 = load i8, ptr %x86, align 1
  %conv15 = zext i8 %150 to i32
  %151 = load i32, ptr %x64, align 4
  %add16 = add i32 %conv15, %151
  %add17 = add i32 %add14, %add16
  %152 = load i32, ptr %x104, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %147, i32 noundef %add17, i32 noundef %152)
  %153 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x133, ptr noundef %x134, i32 noundef %153, i32 noundef 4)
  %154 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %154, i32 noundef -3)
  %155 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %155, i32 noundef -1)
  %156 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %156, i32 noundef -2)
  %157 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %157, i32 noundef -5)
  %158 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %158, i32 noundef -1)
  %159 = load i32, ptr %x2, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %159, i32 noundef 3)
  %160 = load i32, ptr %x144, align 4
  %161 = load i32, ptr %x141, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext 0, i32 noundef %160, i32 noundef %161)
  %162 = load i8, ptr %x148, align 1
  %163 = load i32, ptr %x142, align 4
  %164 = load i32, ptr %x139, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %162, i32 noundef %163, i32 noundef %164)
  %165 = load i8, ptr %x150, align 1
  %166 = load i32, ptr %x140, align 4
  %167 = load i32, ptr %x137, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167)
  %168 = load i8, ptr %x152, align 1
  %169 = load i32, ptr %x138, align 4
  %170 = load i32, ptr %x135, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %168, i32 noundef %169, i32 noundef %170)
  %171 = load i8, ptr %x154, align 1
  %172 = load i32, ptr %x136, align 4
  %173 = load i32, ptr %x133, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %171, i32 noundef %172, i32 noundef %173)
  %174 = load i32, ptr %x117, align 4
  %175 = load i32, ptr %x145, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext 0, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x158, align 1
  %177 = load i32, ptr %x119, align 4
  %178 = load i32, ptr %x146, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x160, align 1
  %180 = load i32, ptr %x121, align 4
  %181 = load i32, ptr %x143, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %179, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x162, align 1
  %183 = load i32, ptr %x123, align 4
  %184 = load i32, ptr %x147, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x164, align 1
  %186 = load i32, ptr %x125, align 4
  %187 = load i32, ptr %x149, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x166, align 1
  %189 = load i32, ptr %x127, align 4
  %190 = load i32, ptr %x151, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %188, i32 noundef %189, i32 noundef %190)
  %191 = load i8, ptr %x168, align 1
  %192 = load i32, ptr %x129, align 4
  %193 = load i32, ptr %x153, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %191, i32 noundef %192, i32 noundef %193)
  %194 = load i8, ptr %x170, align 1
  %195 = load i32, ptr %x131, align 4
  %196 = load i32, ptr %x155, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %194, i32 noundef %195, i32 noundef %196)
  %197 = load i32, ptr %x157, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x173, ptr noundef %x174, i32 noundef %197, i32 noundef -1)
  %198 = load i32, ptr %x157, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x175, ptr noundef %x176, i32 noundef %198, i32 noundef -1)
  %199 = load i32, ptr %x157, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x177, ptr noundef %x178, i32 noundef %199, i32 noundef -1)
  %200 = load i32, ptr %x157, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x179, ptr noundef %x180, i32 noundef %200, i32 noundef -1)
  %201 = load i32, ptr %x180, align 4
  %202 = load i32, ptr %x177, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext 0, i32 noundef %201, i32 noundef %202)
  %203 = load i8, ptr %x182, align 1
  %204 = load i32, ptr %x178, align 4
  %205 = load i32, ptr %x175, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %203, i32 noundef %204, i32 noundef %205)
  %206 = load i32, ptr %x157, align 4
  %207 = load i32, ptr %x179, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext 0, i32 noundef %206, i32 noundef %207)
  %208 = load i8, ptr %x186, align 1
  %209 = load i32, ptr %x159, align 4
  %210 = load i32, ptr %x181, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %208, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x188, align 1
  %212 = load i32, ptr %x161, align 4
  %213 = load i32, ptr %x183, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %211, i32 noundef %212, i32 noundef %213)
  %214 = load i8, ptr %x190, align 1
  %215 = load i32, ptr %x163, align 4
  %216 = load i8, ptr %x184, align 1
  %conv18 = zext i8 %216 to i32
  %217 = load i32, ptr %x176, align 4
  %add19 = add i32 %conv18, %217
  call void @fiat_p256_addcarryx_u32(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %214, i32 noundef %215, i32 noundef %add19)
  %218 = load i8, ptr %x192, align 1
  %219 = load i32, ptr %x165, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %218, i32 noundef %219, i32 noundef 0)
  %220 = load i8, ptr %x194, align 1
  %221 = load i32, ptr %x167, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %220, i32 noundef %221, i32 noundef 0)
  %222 = load i8, ptr %x196, align 1
  %223 = load i32, ptr %x169, align 4
  %224 = load i32, ptr %x157, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x198, align 1
  %226 = load i32, ptr %x171, align 4
  %227 = load i32, ptr %x173, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i8, ptr %x200, align 1
  %229 = load i8, ptr %x172, align 1
  %conv20 = zext i8 %229 to i32
  %230 = load i8, ptr %x132, align 1
  %conv21 = zext i8 %230 to i32
  %add22 = add i32 %conv20, %conv21
  %231 = load i8, ptr %x156, align 1
  %conv23 = zext i8 %231 to i32
  %232 = load i32, ptr %x134, align 4
  %add24 = add i32 %conv23, %232
  %add25 = add i32 %add22, %add24
  %233 = load i32, ptr %x174, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %228, i32 noundef %add25, i32 noundef %233)
  %234 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x203, ptr noundef %x204, i32 noundef %234, i32 noundef 4)
  %235 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x205, ptr noundef %x206, i32 noundef %235, i32 noundef -3)
  %236 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x207, ptr noundef %x208, i32 noundef %236, i32 noundef -1)
  %237 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x209, ptr noundef %x210, i32 noundef %237, i32 noundef -2)
  %238 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x211, ptr noundef %x212, i32 noundef %238, i32 noundef -5)
  %239 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x213, ptr noundef %x214, i32 noundef %239, i32 noundef -1)
  %240 = load i32, ptr %x3, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x215, ptr noundef %x216, i32 noundef %240, i32 noundef 3)
  %241 = load i32, ptr %x214, align 4
  %242 = load i32, ptr %x211, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext 0, i32 noundef %241, i32 noundef %242)
  %243 = load i8, ptr %x218, align 1
  %244 = load i32, ptr %x212, align 4
  %245 = load i32, ptr %x209, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %243, i32 noundef %244, i32 noundef %245)
  %246 = load i8, ptr %x220, align 1
  %247 = load i32, ptr %x210, align 4
  %248 = load i32, ptr %x207, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x221, ptr noundef %x222, i8 noundef zeroext %246, i32 noundef %247, i32 noundef %248)
  %249 = load i8, ptr %x222, align 1
  %250 = load i32, ptr %x208, align 4
  %251 = load i32, ptr %x205, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext %249, i32 noundef %250, i32 noundef %251)
  %252 = load i8, ptr %x224, align 1
  %253 = load i32, ptr %x206, align 4
  %254 = load i32, ptr %x203, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %252, i32 noundef %253, i32 noundef %254)
  %255 = load i32, ptr %x187, align 4
  %256 = load i32, ptr %x215, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext 0, i32 noundef %255, i32 noundef %256)
  %257 = load i8, ptr %x228, align 1
  %258 = load i32, ptr %x189, align 4
  %259 = load i32, ptr %x216, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %257, i32 noundef %258, i32 noundef %259)
  %260 = load i8, ptr %x230, align 1
  %261 = load i32, ptr %x191, align 4
  %262 = load i32, ptr %x213, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %260, i32 noundef %261, i32 noundef %262)
  %263 = load i8, ptr %x232, align 1
  %264 = load i32, ptr %x193, align 4
  %265 = load i32, ptr %x217, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext %263, i32 noundef %264, i32 noundef %265)
  %266 = load i8, ptr %x234, align 1
  %267 = load i32, ptr %x195, align 4
  %268 = load i32, ptr %x219, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %266, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x236, align 1
  %270 = load i32, ptr %x197, align 4
  %271 = load i32, ptr %x221, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x238, align 1
  %273 = load i32, ptr %x199, align 4
  %274 = load i32, ptr %x223, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x240, align 1
  %276 = load i32, ptr %x201, align 4
  %277 = load i32, ptr %x225, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i32, ptr %x227, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x243, ptr noundef %x244, i32 noundef %278, i32 noundef -1)
  %279 = load i32, ptr %x227, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %279, i32 noundef -1)
  %280 = load i32, ptr %x227, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %280, i32 noundef -1)
  %281 = load i32, ptr %x227, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x249, ptr noundef %x250, i32 noundef %281, i32 noundef -1)
  %282 = load i32, ptr %x250, align 4
  %283 = load i32, ptr %x247, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext 0, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x252, align 1
  %285 = load i32, ptr %x248, align 4
  %286 = load i32, ptr %x245, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %286)
  %287 = load i32, ptr %x227, align 4
  %288 = load i32, ptr %x249, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext 0, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x256, align 1
  %290 = load i32, ptr %x229, align 4
  %291 = load i32, ptr %x251, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x258, align 1
  %293 = load i32, ptr %x231, align 4
  %294 = load i32, ptr %x253, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x260, align 1
  %296 = load i32, ptr %x233, align 4
  %297 = load i8, ptr %x254, align 1
  %conv26 = zext i8 %297 to i32
  %298 = load i32, ptr %x246, align 4
  %add27 = add i32 %conv26, %298
  call void @fiat_p256_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %add27)
  %299 = load i8, ptr %x262, align 1
  %300 = load i32, ptr %x235, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %299, i32 noundef %300, i32 noundef 0)
  %301 = load i8, ptr %x264, align 1
  %302 = load i32, ptr %x237, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %301, i32 noundef %302, i32 noundef 0)
  %303 = load i8, ptr %x266, align 1
  %304 = load i32, ptr %x239, align 4
  %305 = load i32, ptr %x227, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %303, i32 noundef %304, i32 noundef %305)
  %306 = load i8, ptr %x268, align 1
  %307 = load i32, ptr %x241, align 4
  %308 = load i32, ptr %x243, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %306, i32 noundef %307, i32 noundef %308)
  %309 = load i8, ptr %x270, align 1
  %310 = load i8, ptr %x242, align 1
  %conv28 = zext i8 %310 to i32
  %311 = load i8, ptr %x202, align 1
  %conv29 = zext i8 %311 to i32
  %add30 = add i32 %conv28, %conv29
  %312 = load i8, ptr %x226, align 1
  %conv31 = zext i8 %312 to i32
  %313 = load i32, ptr %x204, align 4
  %add32 = add i32 %conv31, %313
  %add33 = add i32 %add30, %add32
  %314 = load i32, ptr %x244, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %309, i32 noundef %add33, i32 noundef %314)
  %315 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x273, ptr noundef %x274, i32 noundef %315, i32 noundef 4)
  %316 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x275, ptr noundef %x276, i32 noundef %316, i32 noundef -3)
  %317 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x277, ptr noundef %x278, i32 noundef %317, i32 noundef -1)
  %318 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x279, ptr noundef %x280, i32 noundef %318, i32 noundef -2)
  %319 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x281, ptr noundef %x282, i32 noundef %319, i32 noundef -5)
  %320 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x283, ptr noundef %x284, i32 noundef %320, i32 noundef -1)
  %321 = load i32, ptr %x4, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x285, ptr noundef %x286, i32 noundef %321, i32 noundef 3)
  %322 = load i32, ptr %x284, align 4
  %323 = load i32, ptr %x281, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext 0, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x288, align 1
  %325 = load i32, ptr %x282, align 4
  %326 = load i32, ptr %x279, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x290, align 1
  %328 = load i32, ptr %x280, align 4
  %329 = load i32, ptr %x277, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x292, align 1
  %331 = load i32, ptr %x278, align 4
  %332 = load i32, ptr %x275, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %330, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x294, align 1
  %334 = load i32, ptr %x276, align 4
  %335 = load i32, ptr %x273, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i32, ptr %x257, align 4
  %337 = load i32, ptr %x285, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext 0, i32 noundef %336, i32 noundef %337)
  %338 = load i8, ptr %x298, align 1
  %339 = load i32, ptr %x259, align 4
  %340 = load i32, ptr %x286, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %338, i32 noundef %339, i32 noundef %340)
  %341 = load i8, ptr %x300, align 1
  %342 = load i32, ptr %x261, align 4
  %343 = load i32, ptr %x283, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %341, i32 noundef %342, i32 noundef %343)
  %344 = load i8, ptr %x302, align 1
  %345 = load i32, ptr %x263, align 4
  %346 = load i32, ptr %x287, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %344, i32 noundef %345, i32 noundef %346)
  %347 = load i8, ptr %x304, align 1
  %348 = load i32, ptr %x265, align 4
  %349 = load i32, ptr %x289, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %347, i32 noundef %348, i32 noundef %349)
  %350 = load i8, ptr %x306, align 1
  %351 = load i32, ptr %x267, align 4
  %352 = load i32, ptr %x291, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %350, i32 noundef %351, i32 noundef %352)
  %353 = load i8, ptr %x308, align 1
  %354 = load i32, ptr %x269, align 4
  %355 = load i32, ptr %x293, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %353, i32 noundef %354, i32 noundef %355)
  %356 = load i8, ptr %x310, align 1
  %357 = load i32, ptr %x271, align 4
  %358 = load i32, ptr %x295, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %356, i32 noundef %357, i32 noundef %358)
  %359 = load i32, ptr %x297, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x313, ptr noundef %x314, i32 noundef %359, i32 noundef -1)
  %360 = load i32, ptr %x297, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x315, ptr noundef %x316, i32 noundef %360, i32 noundef -1)
  %361 = load i32, ptr %x297, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x317, ptr noundef %x318, i32 noundef %361, i32 noundef -1)
  %362 = load i32, ptr %x297, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x319, ptr noundef %x320, i32 noundef %362, i32 noundef -1)
  %363 = load i32, ptr %x320, align 4
  %364 = load i32, ptr %x317, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext 0, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x322, align 1
  %366 = load i32, ptr %x318, align 4
  %367 = load i32, ptr %x315, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367)
  %368 = load i32, ptr %x297, align 4
  %369 = load i32, ptr %x319, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext 0, i32 noundef %368, i32 noundef %369)
  %370 = load i8, ptr %x326, align 1
  %371 = load i32, ptr %x299, align 4
  %372 = load i32, ptr %x321, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %370, i32 noundef %371, i32 noundef %372)
  %373 = load i8, ptr %x328, align 1
  %374 = load i32, ptr %x301, align 4
  %375 = load i32, ptr %x323, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %373, i32 noundef %374, i32 noundef %375)
  %376 = load i8, ptr %x330, align 1
  %377 = load i32, ptr %x303, align 4
  %378 = load i8, ptr %x324, align 1
  %conv34 = zext i8 %378 to i32
  %379 = load i32, ptr %x316, align 4
  %add35 = add i32 %conv34, %379
  call void @fiat_p256_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %376, i32 noundef %377, i32 noundef %add35)
  %380 = load i8, ptr %x332, align 1
  %381 = load i32, ptr %x305, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %380, i32 noundef %381, i32 noundef 0)
  %382 = load i8, ptr %x334, align 1
  %383 = load i32, ptr %x307, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %382, i32 noundef %383, i32 noundef 0)
  %384 = load i8, ptr %x336, align 1
  %385 = load i32, ptr %x309, align 4
  %386 = load i32, ptr %x297, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x338, align 1
  %388 = load i32, ptr %x311, align 4
  %389 = load i32, ptr %x313, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i8, ptr %x340, align 1
  %391 = load i8, ptr %x312, align 1
  %conv36 = zext i8 %391 to i32
  %392 = load i8, ptr %x272, align 1
  %conv37 = zext i8 %392 to i32
  %add38 = add i32 %conv36, %conv37
  %393 = load i8, ptr %x296, align 1
  %conv39 = zext i8 %393 to i32
  %394 = load i32, ptr %x274, align 4
  %add40 = add i32 %conv39, %394
  %add41 = add i32 %add38, %add40
  %395 = load i32, ptr %x314, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %390, i32 noundef %add41, i32 noundef %395)
  %396 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x343, ptr noundef %x344, i32 noundef %396, i32 noundef 4)
  %397 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x345, ptr noundef %x346, i32 noundef %397, i32 noundef -3)
  %398 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x347, ptr noundef %x348, i32 noundef %398, i32 noundef -1)
  %399 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x349, ptr noundef %x350, i32 noundef %399, i32 noundef -2)
  %400 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x351, ptr noundef %x352, i32 noundef %400, i32 noundef -5)
  %401 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x353, ptr noundef %x354, i32 noundef %401, i32 noundef -1)
  %402 = load i32, ptr %x5, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x355, ptr noundef %x356, i32 noundef %402, i32 noundef 3)
  %403 = load i32, ptr %x354, align 4
  %404 = load i32, ptr %x351, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext 0, i32 noundef %403, i32 noundef %404)
  %405 = load i8, ptr %x358, align 1
  %406 = load i32, ptr %x352, align 4
  %407 = load i32, ptr %x349, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %405, i32 noundef %406, i32 noundef %407)
  %408 = load i8, ptr %x360, align 1
  %409 = load i32, ptr %x350, align 4
  %410 = load i32, ptr %x347, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %408, i32 noundef %409, i32 noundef %410)
  %411 = load i8, ptr %x362, align 1
  %412 = load i32, ptr %x348, align 4
  %413 = load i32, ptr %x345, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %411, i32 noundef %412, i32 noundef %413)
  %414 = load i8, ptr %x364, align 1
  %415 = load i32, ptr %x346, align 4
  %416 = load i32, ptr %x343, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %414, i32 noundef %415, i32 noundef %416)
  %417 = load i32, ptr %x327, align 4
  %418 = load i32, ptr %x355, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext 0, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x368, align 1
  %420 = load i32, ptr %x329, align 4
  %421 = load i32, ptr %x356, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x370, align 1
  %423 = load i32, ptr %x331, align 4
  %424 = load i32, ptr %x353, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x372, align 1
  %426 = load i32, ptr %x333, align 4
  %427 = load i32, ptr %x357, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %425, i32 noundef %426, i32 noundef %427)
  %428 = load i8, ptr %x374, align 1
  %429 = load i32, ptr %x335, align 4
  %430 = load i32, ptr %x359, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %428, i32 noundef %429, i32 noundef %430)
  %431 = load i8, ptr %x376, align 1
  %432 = load i32, ptr %x337, align 4
  %433 = load i32, ptr %x361, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext %431, i32 noundef %432, i32 noundef %433)
  %434 = load i8, ptr %x378, align 1
  %435 = load i32, ptr %x339, align 4
  %436 = load i32, ptr %x363, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %434, i32 noundef %435, i32 noundef %436)
  %437 = load i8, ptr %x380, align 1
  %438 = load i32, ptr %x341, align 4
  %439 = load i32, ptr %x365, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %437, i32 noundef %438, i32 noundef %439)
  %440 = load i32, ptr %x367, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x383, ptr noundef %x384, i32 noundef %440, i32 noundef -1)
  %441 = load i32, ptr %x367, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x385, ptr noundef %x386, i32 noundef %441, i32 noundef -1)
  %442 = load i32, ptr %x367, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x387, ptr noundef %x388, i32 noundef %442, i32 noundef -1)
  %443 = load i32, ptr %x367, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x389, ptr noundef %x390, i32 noundef %443, i32 noundef -1)
  %444 = load i32, ptr %x390, align 4
  %445 = load i32, ptr %x387, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext 0, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x392, align 1
  %447 = load i32, ptr %x388, align 4
  %448 = load i32, ptr %x385, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %448)
  %449 = load i32, ptr %x367, align 4
  %450 = load i32, ptr %x389, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext 0, i32 noundef %449, i32 noundef %450)
  %451 = load i8, ptr %x396, align 1
  %452 = load i32, ptr %x369, align 4
  %453 = load i32, ptr %x391, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %451, i32 noundef %452, i32 noundef %453)
  %454 = load i8, ptr %x398, align 1
  %455 = load i32, ptr %x371, align 4
  %456 = load i32, ptr %x393, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %454, i32 noundef %455, i32 noundef %456)
  %457 = load i8, ptr %x400, align 1
  %458 = load i32, ptr %x373, align 4
  %459 = load i8, ptr %x394, align 1
  %conv42 = zext i8 %459 to i32
  %460 = load i32, ptr %x386, align 4
  %add43 = add i32 %conv42, %460
  call void @fiat_p256_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %457, i32 noundef %458, i32 noundef %add43)
  %461 = load i8, ptr %x402, align 1
  %462 = load i32, ptr %x375, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %461, i32 noundef %462, i32 noundef 0)
  %463 = load i8, ptr %x404, align 1
  %464 = load i32, ptr %x377, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %463, i32 noundef %464, i32 noundef 0)
  %465 = load i8, ptr %x406, align 1
  %466 = load i32, ptr %x379, align 4
  %467 = load i32, ptr %x367, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext %465, i32 noundef %466, i32 noundef %467)
  %468 = load i8, ptr %x408, align 1
  %469 = load i32, ptr %x381, align 4
  %470 = load i32, ptr %x383, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i8, ptr %x410, align 1
  %472 = load i8, ptr %x382, align 1
  %conv44 = zext i8 %472 to i32
  %473 = load i8, ptr %x342, align 1
  %conv45 = zext i8 %473 to i32
  %add46 = add i32 %conv44, %conv45
  %474 = load i8, ptr %x366, align 1
  %conv47 = zext i8 %474 to i32
  %475 = load i32, ptr %x344, align 4
  %add48 = add i32 %conv47, %475
  %add49 = add i32 %add46, %add48
  %476 = load i32, ptr %x384, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %471, i32 noundef %add49, i32 noundef %476)
  %477 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x413, ptr noundef %x414, i32 noundef %477, i32 noundef 4)
  %478 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x415, ptr noundef %x416, i32 noundef %478, i32 noundef -3)
  %479 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x417, ptr noundef %x418, i32 noundef %479, i32 noundef -1)
  %480 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x419, ptr noundef %x420, i32 noundef %480, i32 noundef -2)
  %481 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x421, ptr noundef %x422, i32 noundef %481, i32 noundef -5)
  %482 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %482, i32 noundef -1)
  %483 = load i32, ptr %x6, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %483, i32 noundef 3)
  %484 = load i32, ptr %x424, align 4
  %485 = load i32, ptr %x421, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext 0, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x428, align 1
  %487 = load i32, ptr %x422, align 4
  %488 = load i32, ptr %x419, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x430, align 1
  %490 = load i32, ptr %x420, align 4
  %491 = load i32, ptr %x417, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %489, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x432, align 1
  %493 = load i32, ptr %x418, align 4
  %494 = load i32, ptr %x415, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x434, align 1
  %496 = load i32, ptr %x416, align 4
  %497 = load i32, ptr %x413, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %495, i32 noundef %496, i32 noundef %497)
  %498 = load i32, ptr %x397, align 4
  %499 = load i32, ptr %x425, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext 0, i32 noundef %498, i32 noundef %499)
  %500 = load i8, ptr %x438, align 1
  %501 = load i32, ptr %x399, align 4
  %502 = load i32, ptr %x426, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %500, i32 noundef %501, i32 noundef %502)
  %503 = load i8, ptr %x440, align 1
  %504 = load i32, ptr %x401, align 4
  %505 = load i32, ptr %x423, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %503, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x442, align 1
  %507 = load i32, ptr %x403, align 4
  %508 = load i32, ptr %x427, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %506, i32 noundef %507, i32 noundef %508)
  %509 = load i8, ptr %x444, align 1
  %510 = load i32, ptr %x405, align 4
  %511 = load i32, ptr %x429, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %509, i32 noundef %510, i32 noundef %511)
  %512 = load i8, ptr %x446, align 1
  %513 = load i32, ptr %x407, align 4
  %514 = load i32, ptr %x431, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %512, i32 noundef %513, i32 noundef %514)
  %515 = load i8, ptr %x448, align 1
  %516 = load i32, ptr %x409, align 4
  %517 = load i32, ptr %x433, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %515, i32 noundef %516, i32 noundef %517)
  %518 = load i8, ptr %x450, align 1
  %519 = load i32, ptr %x411, align 4
  %520 = load i32, ptr %x435, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %518, i32 noundef %519, i32 noundef %520)
  %521 = load i32, ptr %x437, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x453, ptr noundef %x454, i32 noundef %521, i32 noundef -1)
  %522 = load i32, ptr %x437, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %522, i32 noundef -1)
  %523 = load i32, ptr %x437, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x457, ptr noundef %x458, i32 noundef %523, i32 noundef -1)
  %524 = load i32, ptr %x437, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x459, ptr noundef %x460, i32 noundef %524, i32 noundef -1)
  %525 = load i32, ptr %x460, align 4
  %526 = load i32, ptr %x457, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext 0, i32 noundef %525, i32 noundef %526)
  %527 = load i8, ptr %x462, align 1
  %528 = load i32, ptr %x458, align 4
  %529 = load i32, ptr %x455, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %527, i32 noundef %528, i32 noundef %529)
  %530 = load i32, ptr %x437, align 4
  %531 = load i32, ptr %x459, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext 0, i32 noundef %530, i32 noundef %531)
  %532 = load i8, ptr %x466, align 1
  %533 = load i32, ptr %x439, align 4
  %534 = load i32, ptr %x461, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %532, i32 noundef %533, i32 noundef %534)
  %535 = load i8, ptr %x468, align 1
  %536 = load i32, ptr %x441, align 4
  %537 = load i32, ptr %x463, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %535, i32 noundef %536, i32 noundef %537)
  %538 = load i8, ptr %x470, align 1
  %539 = load i32, ptr %x443, align 4
  %540 = load i8, ptr %x464, align 1
  %conv50 = zext i8 %540 to i32
  %541 = load i32, ptr %x456, align 4
  %add51 = add i32 %conv50, %541
  call void @fiat_p256_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %538, i32 noundef %539, i32 noundef %add51)
  %542 = load i8, ptr %x472, align 1
  %543 = load i32, ptr %x445, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %542, i32 noundef %543, i32 noundef 0)
  %544 = load i8, ptr %x474, align 1
  %545 = load i32, ptr %x447, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext %544, i32 noundef %545, i32 noundef 0)
  %546 = load i8, ptr %x476, align 1
  %547 = load i32, ptr %x449, align 4
  %548 = load i32, ptr %x437, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext %546, i32 noundef %547, i32 noundef %548)
  %549 = load i8, ptr %x478, align 1
  %550 = load i32, ptr %x451, align 4
  %551 = load i32, ptr %x453, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x479, ptr noundef %x480, i8 noundef zeroext %549, i32 noundef %550, i32 noundef %551)
  %552 = load i8, ptr %x480, align 1
  %553 = load i8, ptr %x452, align 1
  %conv52 = zext i8 %553 to i32
  %554 = load i8, ptr %x412, align 1
  %conv53 = zext i8 %554 to i32
  %add54 = add i32 %conv52, %conv53
  %555 = load i8, ptr %x436, align 1
  %conv55 = zext i8 %555 to i32
  %556 = load i32, ptr %x414, align 4
  %add56 = add i32 %conv55, %556
  %add57 = add i32 %add54, %add56
  %557 = load i32, ptr %x454, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x481, ptr noundef %x482, i8 noundef zeroext %552, i32 noundef %add57, i32 noundef %557)
  %558 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x483, ptr noundef %x484, i32 noundef %558, i32 noundef 4)
  %559 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x485, ptr noundef %x486, i32 noundef %559, i32 noundef -3)
  %560 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x487, ptr noundef %x488, i32 noundef %560, i32 noundef -1)
  %561 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x489, ptr noundef %x490, i32 noundef %561, i32 noundef -2)
  %562 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x491, ptr noundef %x492, i32 noundef %562, i32 noundef -5)
  %563 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x493, ptr noundef %x494, i32 noundef %563, i32 noundef -1)
  %564 = load i32, ptr %x7, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x495, ptr noundef %x496, i32 noundef %564, i32 noundef 3)
  %565 = load i32, ptr %x494, align 4
  %566 = load i32, ptr %x491, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext 0, i32 noundef %565, i32 noundef %566)
  %567 = load i8, ptr %x498, align 1
  %568 = load i32, ptr %x492, align 4
  %569 = load i32, ptr %x489, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %567, i32 noundef %568, i32 noundef %569)
  %570 = load i8, ptr %x500, align 1
  %571 = load i32, ptr %x490, align 4
  %572 = load i32, ptr %x487, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x501, ptr noundef %x502, i8 noundef zeroext %570, i32 noundef %571, i32 noundef %572)
  %573 = load i8, ptr %x502, align 1
  %574 = load i32, ptr %x488, align 4
  %575 = load i32, ptr %x485, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x503, ptr noundef %x504, i8 noundef zeroext %573, i32 noundef %574, i32 noundef %575)
  %576 = load i8, ptr %x504, align 1
  %577 = load i32, ptr %x486, align 4
  %578 = load i32, ptr %x483, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext %576, i32 noundef %577, i32 noundef %578)
  %579 = load i32, ptr %x467, align 4
  %580 = load i32, ptr %x495, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext 0, i32 noundef %579, i32 noundef %580)
  %581 = load i8, ptr %x508, align 1
  %582 = load i32, ptr %x469, align 4
  %583 = load i32, ptr %x496, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %581, i32 noundef %582, i32 noundef %583)
  %584 = load i8, ptr %x510, align 1
  %585 = load i32, ptr %x471, align 4
  %586 = load i32, ptr %x493, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %584, i32 noundef %585, i32 noundef %586)
  %587 = load i8, ptr %x512, align 1
  %588 = load i32, ptr %x473, align 4
  %589 = load i32, ptr %x497, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %587, i32 noundef %588, i32 noundef %589)
  %590 = load i8, ptr %x514, align 1
  %591 = load i32, ptr %x475, align 4
  %592 = load i32, ptr %x499, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %590, i32 noundef %591, i32 noundef %592)
  %593 = load i8, ptr %x516, align 1
  %594 = load i32, ptr %x477, align 4
  %595 = load i32, ptr %x501, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %593, i32 noundef %594, i32 noundef %595)
  %596 = load i8, ptr %x518, align 1
  %597 = load i32, ptr %x479, align 4
  %598 = load i32, ptr %x503, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %596, i32 noundef %597, i32 noundef %598)
  %599 = load i8, ptr %x520, align 1
  %600 = load i32, ptr %x481, align 4
  %601 = load i32, ptr %x505, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %599, i32 noundef %600, i32 noundef %601)
  %602 = load i32, ptr %x507, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x523, ptr noundef %x524, i32 noundef %602, i32 noundef -1)
  %603 = load i32, ptr %x507, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x525, ptr noundef %x526, i32 noundef %603, i32 noundef -1)
  %604 = load i32, ptr %x507, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x527, ptr noundef %x528, i32 noundef %604, i32 noundef -1)
  %605 = load i32, ptr %x507, align 4
  call void @fiat_p256_mulx_u32(ptr noundef %x529, ptr noundef %x530, i32 noundef %605, i32 noundef -1)
  %606 = load i32, ptr %x530, align 4
  %607 = load i32, ptr %x527, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext 0, i32 noundef %606, i32 noundef %607)
  %608 = load i8, ptr %x532, align 1
  %609 = load i32, ptr %x528, align 4
  %610 = load i32, ptr %x525, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x533, ptr noundef %x534, i8 noundef zeroext %608, i32 noundef %609, i32 noundef %610)
  %611 = load i32, ptr %x507, align 4
  %612 = load i32, ptr %x529, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext 0, i32 noundef %611, i32 noundef %612)
  %613 = load i8, ptr %x536, align 1
  %614 = load i32, ptr %x509, align 4
  %615 = load i32, ptr %x531, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext %613, i32 noundef %614, i32 noundef %615)
  %616 = load i8, ptr %x538, align 1
  %617 = load i32, ptr %x511, align 4
  %618 = load i32, ptr %x533, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext %616, i32 noundef %617, i32 noundef %618)
  %619 = load i8, ptr %x540, align 1
  %620 = load i32, ptr %x513, align 4
  %621 = load i8, ptr %x534, align 1
  %conv58 = zext i8 %621 to i32
  %622 = load i32, ptr %x526, align 4
  %add59 = add i32 %conv58, %622
  call void @fiat_p256_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %619, i32 noundef %620, i32 noundef %add59)
  %623 = load i8, ptr %x542, align 1
  %624 = load i32, ptr %x515, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %623, i32 noundef %624, i32 noundef 0)
  %625 = load i8, ptr %x544, align 1
  %626 = load i32, ptr %x517, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %625, i32 noundef %626, i32 noundef 0)
  %627 = load i8, ptr %x546, align 1
  %628 = load i32, ptr %x519, align 4
  %629 = load i32, ptr %x507, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %627, i32 noundef %628, i32 noundef %629)
  %630 = load i8, ptr %x548, align 1
  %631 = load i32, ptr %x521, align 4
  %632 = load i32, ptr %x523, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %630, i32 noundef %631, i32 noundef %632)
  %633 = load i8, ptr %x550, align 1
  %634 = load i8, ptr %x522, align 1
  %conv60 = zext i8 %634 to i32
  %635 = load i8, ptr %x482, align 1
  %conv61 = zext i8 %635 to i32
  %add62 = add i32 %conv60, %conv61
  %636 = load i8, ptr %x506, align 1
  %conv63 = zext i8 %636 to i32
  %637 = load i32, ptr %x484, align 4
  %add64 = add i32 %conv63, %637
  %add65 = add i32 %add62, %add64
  %638 = load i32, ptr %x524, align 4
  call void @fiat_p256_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %633, i32 noundef %add65, i32 noundef %638)
  %639 = load i32, ptr %x537, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext 0, i32 noundef %639, i32 noundef -1)
  %640 = load i8, ptr %x554, align 1
  %641 = load i32, ptr %x539, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %640, i32 noundef %641, i32 noundef -1)
  %642 = load i8, ptr %x556, align 1
  %643 = load i32, ptr %x541, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %642, i32 noundef %643, i32 noundef -1)
  %644 = load i8, ptr %x558, align 1
  %645 = load i32, ptr %x543, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %644, i32 noundef %645, i32 noundef 0)
  %646 = load i8, ptr %x560, align 1
  %647 = load i32, ptr %x545, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %646, i32 noundef %647, i32 noundef 0)
  %648 = load i8, ptr %x562, align 1
  %649 = load i32, ptr %x547, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext %648, i32 noundef %649, i32 noundef 0)
  %650 = load i8, ptr %x564, align 1
  %651 = load i32, ptr %x549, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %650, i32 noundef %651, i32 noundef 1)
  %652 = load i8, ptr %x566, align 1
  %653 = load i32, ptr %x551, align 4
  call void @fiat_p256_subborrowx_u32(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %652, i32 noundef %653, i32 noundef -1)
  %654 = load i8, ptr %x568, align 1
  %655 = load i8, ptr %x552, align 1
  %conv66 = zext i8 %655 to i32
  call void @fiat_p256_subborrowx_u32(ptr noundef %x569, ptr noundef %x570, i8 noundef zeroext %654, i32 noundef %conv66, i32 noundef 0)
  %656 = load i8, ptr %x570, align 1
  %657 = load i32, ptr %x553, align 4
  %658 = load i32, ptr %x537, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x571, i8 noundef zeroext %656, i32 noundef %657, i32 noundef %658)
  %659 = load i8, ptr %x570, align 1
  %660 = load i32, ptr %x555, align 4
  %661 = load i32, ptr %x539, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x572, i8 noundef zeroext %659, i32 noundef %660, i32 noundef %661)
  %662 = load i8, ptr %x570, align 1
  %663 = load i32, ptr %x557, align 4
  %664 = load i32, ptr %x541, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x573, i8 noundef zeroext %662, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x570, align 1
  %666 = load i32, ptr %x559, align 4
  %667 = load i32, ptr %x543, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x574, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x570, align 1
  %669 = load i32, ptr %x561, align 4
  %670 = load i32, ptr %x545, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x575, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x570, align 1
  %672 = load i32, ptr %x563, align 4
  %673 = load i32, ptr %x547, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x576, i8 noundef zeroext %671, i32 noundef %672, i32 noundef %673)
  %674 = load i8, ptr %x570, align 1
  %675 = load i32, ptr %x565, align 4
  %676 = load i32, ptr %x549, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x577, i8 noundef zeroext %674, i32 noundef %675, i32 noundef %676)
  %677 = load i8, ptr %x570, align 1
  %678 = load i32, ptr %x567, align 4
  %679 = load i32, ptr %x551, align 4
  call void @fiat_p256_cmovznz_u32(ptr noundef %x578, i8 noundef zeroext %677, i32 noundef %678, i32 noundef %679)
  %680 = load i32, ptr %x571, align 4
  %681 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %681, i64 0
  store i32 %680, ptr %arrayidx67, align 4
  %682 = load i32, ptr %x572, align 4
  %683 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %683, i64 1
  store i32 %682, ptr %arrayidx68, align 4
  %684 = load i32, ptr %x573, align 4
  %685 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %685, i64 2
  store i32 %684, ptr %arrayidx69, align 4
  %686 = load i32, ptr %x574, align 4
  %687 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %687, i64 3
  store i32 %686, ptr %arrayidx70, align 4
  %688 = load i32, ptr %x575, align 4
  %689 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %689, i64 4
  store i32 %688, ptr %arrayidx71, align 4
  %690 = load i32, ptr %x576, align 4
  %691 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %691, i64 5
  store i32 %690, ptr %arrayidx72, align 4
  %692 = load i32, ptr %x577, align 4
  %693 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %693, i64 6
  store i32 %692, ptr %arrayidx73, align 4
  %694 = load i32, ptr %x578, align 4
  %695 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %695, i64 7
  store i32 %694, ptr %arrayidx74, align 4
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
