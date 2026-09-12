; ModuleID = '/data2/ben/alive-decomp/bench/fiat/sm2_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_sm2_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  %x55 = alloca i8, align 1
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i8, align 1
  %x59 = alloca i32, align 4
  %x60 = alloca i8, align 1
  %x61 = alloca i32, align 4
  %x62 = alloca i8, align 1
  %x63 = alloca i32, align 4
  %x64 = alloca i8, align 1
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
  %x150 = alloca i32, align 4
  %x151 = alloca i8, align 1
  %x152 = alloca i32, align 4
  %x153 = alloca i8, align 1
  %x154 = alloca i32, align 4
  %x155 = alloca i8, align 1
  %x156 = alloca i32, align 4
  %x157 = alloca i8, align 1
  %x158 = alloca i32, align 4
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
  %x174 = alloca i8, align 1
  %x175 = alloca i32, align 4
  %x176 = alloca i8, align 1
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
  %x190 = alloca i32, align 4
  %x191 = alloca i32, align 4
  %x192 = alloca i32, align 4
  %x193 = alloca i32, align 4
  %x194 = alloca i32, align 4
  %x195 = alloca i8, align 1
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
  %x220 = alloca i8, align 1
  %x221 = alloca i32, align 4
  %x222 = alloca i8, align 1
  %x223 = alloca i32, align 4
  %x224 = alloca i8, align 1
  %x225 = alloca i32, align 4
  %x226 = alloca i8, align 1
  %x227 = alloca i32, align 4
  %x228 = alloca i32, align 4
  %x229 = alloca i32, align 4
  %x230 = alloca i32, align 4
  %x231 = alloca i32, align 4
  %x232 = alloca i32, align 4
  %x233 = alloca i32, align 4
  %x234 = alloca i32, align 4
  %x235 = alloca i32, align 4
  %x236 = alloca i32, align 4
  %x237 = alloca i32, align 4
  %x238 = alloca i32, align 4
  %x239 = alloca i32, align 4
  %x240 = alloca i32, align 4
  %x241 = alloca i32, align 4
  %x242 = alloca i8, align 1
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
  %x245 = alloca i8, align 1
  %x246 = alloca i32, align 4
  %x247 = alloca i8, align 1
  %x248 = alloca i32, align 4
  %x249 = alloca i8, align 1
  %x250 = alloca i32, align 4
  %x251 = alloca i8, align 1
  %x252 = alloca i32, align 4
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
  %x272 = alloca i32, align 4
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
  %x301 = alloca i8, align 1
  %x302 = alloca i32, align 4
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
  %x314 = alloca i8, align 1
  %x315 = alloca i32, align 4
  %x316 = alloca i8, align 1
  %x317 = alloca i32, align 4
  %x318 = alloca i8, align 1
  %x319 = alloca i32, align 4
  %x320 = alloca i8, align 1
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
  %x335 = alloca i32, align 4
  %x336 = alloca i8, align 1
  %x337 = alloca i32, align 4
  %x338 = alloca i32, align 4
  %x339 = alloca i8, align 1
  %x340 = alloca i32, align 4
  %x341 = alloca i8, align 1
  %x342 = alloca i32, align 4
  %x343 = alloca i8, align 1
  %x344 = alloca i32, align 4
  %x345 = alloca i8, align 1
  %x346 = alloca i32, align 4
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
  %x360 = alloca i8, align 1
  %x361 = alloca i32, align 4
  %x362 = alloca i8, align 1
  %x363 = alloca i32, align 4
  %x364 = alloca i8, align 1
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
  %x377 = alloca i32, align 4
  %x378 = alloca i32, align 4
  %x379 = alloca i32, align 4
  %x380 = alloca i32, align 4
  %x381 = alloca i32, align 4
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
  %x414 = alloca i8, align 1
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
  %x428 = alloca i32, align 4
  %x429 = alloca i32, align 4
  %x430 = alloca i8, align 1
  %x431 = alloca i32, align 4
  %x432 = alloca i32, align 4
  %x433 = alloca i8, align 1
  %x434 = alloca i32, align 4
  %x435 = alloca i8, align 1
  %x436 = alloca i32, align 4
  %x437 = alloca i8, align 1
  %x438 = alloca i32, align 4
  %x439 = alloca i8, align 1
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
  %x456 = alloca i8, align 1
  %x457 = alloca i32, align 4
  %x458 = alloca i8, align 1
  %x459 = alloca i32, align 4
  %x460 = alloca i32, align 4
  %x461 = alloca i32, align 4
  %x462 = alloca i32, align 4
  %x463 = alloca i32, align 4
  %x464 = alloca i32, align 4
  %x465 = alloca i32, align 4
  %x466 = alloca i32, align 4
  %x467 = alloca i32, align 4
  %x468 = alloca i32, align 4
  %x469 = alloca i32, align 4
  %x470 = alloca i32, align 4
  %x471 = alloca i32, align 4
  %x472 = alloca i32, align 4
  %x473 = alloca i32, align 4
  %x474 = alloca i32, align 4
  %x475 = alloca i32, align 4
  %x476 = alloca i32, align 4
  %x477 = alloca i8, align 1
  %x478 = alloca i32, align 4
  %x479 = alloca i8, align 1
  %x480 = alloca i32, align 4
  %x481 = alloca i8, align 1
  %x482 = alloca i32, align 4
  %x483 = alloca i8, align 1
  %x484 = alloca i32, align 4
  %x485 = alloca i8, align 1
  %x486 = alloca i32, align 4
  %x487 = alloca i8, align 1
  %x488 = alloca i32, align 4
  %x489 = alloca i8, align 1
  %x490 = alloca i32, align 4
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
  %x510 = alloca i32, align 4
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
  %x524 = alloca i8, align 1
  %x525 = alloca i32, align 4
  %x526 = alloca i32, align 4
  %x527 = alloca i8, align 1
  %x528 = alloca i32, align 4
  %x529 = alloca i8, align 1
  %x530 = alloca i32, align 4
  %x531 = alloca i8, align 1
  %x532 = alloca i32, align 4
  %x533 = alloca i8, align 1
  %x534 = alloca i32, align 4
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
  %x570 = alloca i32, align 4
  %x571 = alloca i8, align 1
  %x572 = alloca i32, align 4
  %x573 = alloca i8, align 1
  %x574 = alloca i32, align 4
  %x575 = alloca i8, align 1
  %x576 = alloca i32, align 4
  %x577 = alloca i8, align 1
  %x578 = alloca i32, align 4
  %x579 = alloca i8, align 1
  %x580 = alloca i32, align 4
  %x581 = alloca i8, align 1
  %x582 = alloca i32, align 4
  %x583 = alloca i8, align 1
  %x584 = alloca i32, align 4
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
  %x600 = alloca i8, align 1
  %x601 = alloca i32, align 4
  %x602 = alloca i8, align 1
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
  %x616 = alloca i32, align 4
  %x617 = alloca i32, align 4
  %x618 = alloca i8, align 1
  %x619 = alloca i32, align 4
  %x620 = alloca i32, align 4
  %x621 = alloca i8, align 1
  %x622 = alloca i32, align 4
  %x623 = alloca i8, align 1
  %x624 = alloca i32, align 4
  %x625 = alloca i8, align 1
  %x626 = alloca i32, align 4
  %x627 = alloca i8, align 1
  %x628 = alloca i32, align 4
  %x629 = alloca i32, align 4
  %x630 = alloca i8, align 1
  %x631 = alloca i32, align 4
  %x632 = alloca i8, align 1
  %x633 = alloca i32, align 4
  %x634 = alloca i8, align 1
  %x635 = alloca i32, align 4
  %x636 = alloca i8, align 1
  %x637 = alloca i32, align 4
  %x638 = alloca i8, align 1
  %x639 = alloca i32, align 4
  %x640 = alloca i8, align 1
  %x641 = alloca i32, align 4
  %x642 = alloca i8, align 1
  %x643 = alloca i32, align 4
  %x644 = alloca i8, align 1
  %x645 = alloca i32, align 4
  %x646 = alloca i8, align 1
  %x647 = alloca i32, align 4
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
  %x661 = alloca i32, align 4
  %x662 = alloca i32, align 4
  %x663 = alloca i32, align 4
  %x664 = alloca i32, align 4
  %x665 = alloca i8, align 1
  %x666 = alloca i32, align 4
  %x667 = alloca i8, align 1
  %x668 = alloca i32, align 4
  %x669 = alloca i8, align 1
  %x670 = alloca i32, align 4
  %x671 = alloca i8, align 1
  %x672 = alloca i32, align 4
  %x673 = alloca i8, align 1
  %x674 = alloca i32, align 4
  %x675 = alloca i8, align 1
  %x676 = alloca i32, align 4
  %x677 = alloca i8, align 1
  %x678 = alloca i32, align 4
  %x679 = alloca i32, align 4
  %x680 = alloca i8, align 1
  %x681 = alloca i32, align 4
  %x682 = alloca i8, align 1
  %x683 = alloca i32, align 4
  %x684 = alloca i8, align 1
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
  %x698 = alloca i32, align 4
  %x699 = alloca i32, align 4
  %x700 = alloca i32, align 4
  %x701 = alloca i32, align 4
  %x702 = alloca i32, align 4
  %x703 = alloca i32, align 4
  %x704 = alloca i32, align 4
  %x705 = alloca i32, align 4
  %x706 = alloca i32, align 4
  %x707 = alloca i32, align 4
  %x708 = alloca i32, align 4
  %x709 = alloca i32, align 4
  %x710 = alloca i32, align 4
  %x711 = alloca i32, align 4
  %x712 = alloca i8, align 1
  %x713 = alloca i32, align 4
  %x714 = alloca i32, align 4
  %x715 = alloca i8, align 1
  %x716 = alloca i32, align 4
  %x717 = alloca i8, align 1
  %x718 = alloca i32, align 4
  %x719 = alloca i8, align 1
  %x720 = alloca i32, align 4
  %x721 = alloca i8, align 1
  %x722 = alloca i32, align 4
  %x723 = alloca i32, align 4
  %x724 = alloca i8, align 1
  %x725 = alloca i32, align 4
  %x726 = alloca i8, align 1
  %x727 = alloca i32, align 4
  %x728 = alloca i8, align 1
  %x729 = alloca i32, align 4
  %x730 = alloca i8, align 1
  %x731 = alloca i32, align 4
  %x732 = alloca i8, align 1
  %x733 = alloca i32, align 4
  %x734 = alloca i8, align 1
  %x735 = alloca i32, align 4
  %x736 = alloca i8, align 1
  %x737 = alloca i32, align 4
  %x738 = alloca i8, align 1
  %x739 = alloca i32, align 4
  %x740 = alloca i8, align 1
  %x741 = alloca i32, align 4
  %x742 = alloca i32, align 4
  %x743 = alloca i8, align 1
  %x744 = alloca i32, align 4
  %x745 = alloca i8, align 1
  %x746 = alloca i32, align 4
  %x747 = alloca i8, align 1
  %x748 = alloca i32, align 4
  %x749 = alloca i8, align 1
  %x750 = alloca i32, align 4
  %x751 = alloca i8, align 1
  %x752 = alloca i32, align 4
  %x753 = alloca i8, align 1
  %x754 = alloca i32, align 4
  %x755 = alloca i8, align 1
  %x756 = alloca i32, align 4
  %x757 = alloca i8, align 1
  %x758 = alloca i32, align 4
  %x759 = alloca i8, align 1
  %x760 = alloca i32, align 4
  %x761 = alloca i32, align 4
  %x762 = alloca i32, align 4
  %x763 = alloca i32, align 4
  %x764 = alloca i32, align 4
  %x765 = alloca i32, align 4
  %x766 = alloca i32, align 4
  %x767 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
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
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 7
  %18 = load i32, ptr %arrayidx8, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef %18)
  %19 = load i32, ptr %x8, align 4
  %20 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %20, i64 6
  %21 = load i32, ptr %arrayidx9, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %19, i32 noundef %21)
  %22 = load i32, ptr %x8, align 4
  %23 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %23, i64 5
  %24 = load i32, ptr %arrayidx10, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %22, i32 noundef %24)
  %25 = load i32, ptr %x8, align 4
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %26, i64 4
  %27 = load i32, ptr %arrayidx11, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %25, i32 noundef %27)
  %28 = load i32, ptr %x8, align 4
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %29, i64 3
  %30 = load i32, ptr %arrayidx12, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %28, i32 noundef %30)
  %31 = load i32, ptr %x8, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %31, i32 noundef %33)
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 1
  %36 = load i32, ptr %arrayidx14, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %34, i32 noundef %36)
  %37 = load i32, ptr %x8, align 4
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %37, i32 noundef %39)
  %40 = load i32, ptr %x24, align 4
  %41 = load i32, ptr %x21, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %40, i32 noundef %41)
  %42 = load i8, ptr %x26, align 1
  %43 = load i32, ptr %x22, align 4
  %44 = load i32, ptr %x19, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %x28, align 1
  %46 = load i32, ptr %x20, align 4
  %47 = load i32, ptr %x17, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %47)
  %48 = load i8, ptr %x30, align 1
  %49 = load i32, ptr %x18, align 4
  %50 = load i32, ptr %x15, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x32, align 1
  %52 = load i32, ptr %x16, align 4
  %53 = load i32, ptr %x13, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x34, align 1
  %55 = load i32, ptr %x14, align 4
  %56 = load i32, ptr %x11, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x36, align 1
  %58 = load i32, ptr %x12, align 4
  %59 = load i32, ptr %x9, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x38, align 1
  %conv = zext i8 %60 to i32
  %61 = load i32, ptr %x10, align 4
  %add = add i32 %conv, %61
  store i32 %add, ptr %x39, align 4
  %62 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x40, ptr noundef %x41, i32 noundef %62, i32 noundef -2)
  %63 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x42, ptr noundef %x43, i32 noundef %63, i32 noundef -1)
  %64 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %64, i32 noundef -1)
  %65 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x46, ptr noundef %x47, i32 noundef %65, i32 noundef -1)
  %66 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x48, ptr noundef %x49, i32 noundef %66, i32 noundef -1)
  %67 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x50, ptr noundef %x51, i32 noundef %67, i32 noundef -1)
  %68 = load i32, ptr %x23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x52, ptr noundef %x53, i32 noundef %68, i32 noundef -1)
  %69 = load i32, ptr %x53, align 4
  %70 = load i32, ptr %x50, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext 0, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x55, align 1
  %conv16 = zext i8 %71 to i32
  %72 = load i32, ptr %x51, align 4
  %add17 = add i32 %conv16, %72
  store i32 %add17, ptr %x56, align 4
  %73 = load i32, ptr %x49, align 4
  %74 = load i32, ptr %x46, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext 0, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x58, align 1
  %76 = load i32, ptr %x47, align 4
  %77 = load i32, ptr %x44, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x60, align 1
  %79 = load i32, ptr %x45, align 4
  %80 = load i32, ptr %x42, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x62, align 1
  %82 = load i32, ptr %x43, align 4
  %83 = load i32, ptr %x40, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x64, align 1
  %conv18 = zext i8 %84 to i32
  %85 = load i32, ptr %x41, align 4
  %add19 = add i32 %conv18, %85
  store i32 %add19, ptr %x65, align 4
  %86 = load i32, ptr %x23, align 4
  %87 = load i32, ptr %x52, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext 0, i32 noundef %86, i32 noundef %87)
  %88 = load i8, ptr %x67, align 1
  %89 = load i32, ptr %x25, align 4
  %90 = load i32, ptr %x54, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %88, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x69, align 1
  %92 = load i32, ptr %x27, align 4
  %93 = load i32, ptr %x56, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %91, i32 noundef %92, i32 noundef %93)
  %94 = load i8, ptr %x71, align 1
  %95 = load i32, ptr %x29, align 4
  %96 = load i32, ptr %x48, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %94, i32 noundef %95, i32 noundef %96)
  %97 = load i8, ptr %x73, align 1
  %98 = load i32, ptr %x31, align 4
  %99 = load i32, ptr %x57, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %97, i32 noundef %98, i32 noundef %99)
  %100 = load i8, ptr %x75, align 1
  %101 = load i32, ptr %x33, align 4
  %102 = load i32, ptr %x59, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %100, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x77, align 1
  %104 = load i32, ptr %x35, align 4
  %105 = load i32, ptr %x61, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %103, i32 noundef %104, i32 noundef %105)
  %106 = load i8, ptr %x79, align 1
  %107 = load i32, ptr %x37, align 4
  %108 = load i32, ptr %x63, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %106, i32 noundef %107, i32 noundef %108)
  %109 = load i8, ptr %x81, align 1
  %110 = load i32, ptr %x39, align 4
  %111 = load i32, ptr %x65, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %109, i32 noundef %110, i32 noundef %111)
  %112 = load i32, ptr %x1, align 4
  %113 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %113, i64 7
  %114 = load i32, ptr %arrayidx20, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x84, ptr noundef %x85, i32 noundef %112, i32 noundef %114)
  %115 = load i32, ptr %x1, align 4
  %116 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %116, i64 6
  %117 = load i32, ptr %arrayidx21, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x86, ptr noundef %x87, i32 noundef %115, i32 noundef %117)
  %118 = load i32, ptr %x1, align 4
  %119 = load ptr, ptr %arg2.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %119, i64 5
  %120 = load i32, ptr %arrayidx22, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x88, ptr noundef %x89, i32 noundef %118, i32 noundef %120)
  %121 = load i32, ptr %x1, align 4
  %122 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %122, i64 4
  %123 = load i32, ptr %arrayidx23, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x90, ptr noundef %x91, i32 noundef %121, i32 noundef %123)
  %124 = load i32, ptr %x1, align 4
  %125 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %125, i64 3
  %126 = load i32, ptr %arrayidx24, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x92, ptr noundef %x93, i32 noundef %124, i32 noundef %126)
  %127 = load i32, ptr %x1, align 4
  %128 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %128, i64 2
  %129 = load i32, ptr %arrayidx25, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x94, ptr noundef %x95, i32 noundef %127, i32 noundef %129)
  %130 = load i32, ptr %x1, align 4
  %131 = load ptr, ptr %arg2.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %131, i64 1
  %132 = load i32, ptr %arrayidx26, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x96, ptr noundef %x97, i32 noundef %130, i32 noundef %132)
  %133 = load i32, ptr %x1, align 4
  %134 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %134, i64 0
  %135 = load i32, ptr %arrayidx27, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x98, ptr noundef %x99, i32 noundef %133, i32 noundef %135)
  %136 = load i32, ptr %x99, align 4
  %137 = load i32, ptr %x96, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext 0, i32 noundef %136, i32 noundef %137)
  %138 = load i8, ptr %x101, align 1
  %139 = load i32, ptr %x97, align 4
  %140 = load i32, ptr %x94, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %138, i32 noundef %139, i32 noundef %140)
  %141 = load i8, ptr %x103, align 1
  %142 = load i32, ptr %x95, align 4
  %143 = load i32, ptr %x92, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143)
  %144 = load i8, ptr %x105, align 1
  %145 = load i32, ptr %x93, align 4
  %146 = load i32, ptr %x90, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %144, i32 noundef %145, i32 noundef %146)
  %147 = load i8, ptr %x107, align 1
  %148 = load i32, ptr %x91, align 4
  %149 = load i32, ptr %x88, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %147, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x109, align 1
  %151 = load i32, ptr %x89, align 4
  %152 = load i32, ptr %x86, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x111, align 1
  %154 = load i32, ptr %x87, align 4
  %155 = load i32, ptr %x84, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i8, ptr %x113, align 1
  %conv28 = zext i8 %156 to i32
  %157 = load i32, ptr %x85, align 4
  %add29 = add i32 %conv28, %157
  store i32 %add29, ptr %x114, align 4
  %158 = load i32, ptr %x68, align 4
  %159 = load i32, ptr %x98, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext 0, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x116, align 1
  %161 = load i32, ptr %x70, align 4
  %162 = load i32, ptr %x100, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x118, align 1
  %164 = load i32, ptr %x72, align 4
  %165 = load i32, ptr %x102, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i8, ptr %x120, align 1
  %167 = load i32, ptr %x74, align 4
  %168 = load i32, ptr %x104, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %166, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x122, align 1
  %170 = load i32, ptr %x76, align 4
  %171 = load i32, ptr %x106, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x124, align 1
  %173 = load i32, ptr %x78, align 4
  %174 = load i32, ptr %x108, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x126, align 1
  %176 = load i32, ptr %x80, align 4
  %177 = load i32, ptr %x110, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i8, ptr %x128, align 1
  %179 = load i32, ptr %x82, align 4
  %180 = load i32, ptr %x112, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180)
  %181 = load i8, ptr %x130, align 1
  %182 = load i8, ptr %x83, align 1
  %conv30 = zext i8 %182 to i32
  %183 = load i32, ptr %x114, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %181, i32 noundef %conv30, i32 noundef %183)
  %184 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x133, ptr noundef %x134, i32 noundef %184, i32 noundef -2)
  %185 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %185, i32 noundef -1)
  %186 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %186, i32 noundef -1)
  %187 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %187, i32 noundef -1)
  %188 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %188, i32 noundef -1)
  %189 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %189, i32 noundef -1)
  %190 = load i32, ptr %x115, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %190, i32 noundef -1)
  %191 = load i32, ptr %x146, align 4
  %192 = load i32, ptr %x143, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext 0, i32 noundef %191, i32 noundef %192)
  %193 = load i8, ptr %x148, align 1
  %conv31 = zext i8 %193 to i32
  %194 = load i32, ptr %x144, align 4
  %add32 = add i32 %conv31, %194
  store i32 %add32, ptr %x149, align 4
  %195 = load i32, ptr %x142, align 4
  %196 = load i32, ptr %x139, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext 0, i32 noundef %195, i32 noundef %196)
  %197 = load i8, ptr %x151, align 1
  %198 = load i32, ptr %x140, align 4
  %199 = load i32, ptr %x137, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %197, i32 noundef %198, i32 noundef %199)
  %200 = load i8, ptr %x153, align 1
  %201 = load i32, ptr %x138, align 4
  %202 = load i32, ptr %x135, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %200, i32 noundef %201, i32 noundef %202)
  %203 = load i8, ptr %x155, align 1
  %204 = load i32, ptr %x136, align 4
  %205 = load i32, ptr %x133, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %203, i32 noundef %204, i32 noundef %205)
  %206 = load i8, ptr %x157, align 1
  %conv33 = zext i8 %206 to i32
  %207 = load i32, ptr %x134, align 4
  %add34 = add i32 %conv33, %207
  store i32 %add34, ptr %x158, align 4
  %208 = load i32, ptr %x115, align 4
  %209 = load i32, ptr %x145, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext 0, i32 noundef %208, i32 noundef %209)
  %210 = load i8, ptr %x160, align 1
  %211 = load i32, ptr %x117, align 4
  %212 = load i32, ptr %x147, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %210, i32 noundef %211, i32 noundef %212)
  %213 = load i8, ptr %x162, align 1
  %214 = load i32, ptr %x119, align 4
  %215 = load i32, ptr %x149, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %213, i32 noundef %214, i32 noundef %215)
  %216 = load i8, ptr %x164, align 1
  %217 = load i32, ptr %x121, align 4
  %218 = load i32, ptr %x141, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %216, i32 noundef %217, i32 noundef %218)
  %219 = load i8, ptr %x166, align 1
  %220 = load i32, ptr %x123, align 4
  %221 = load i32, ptr %x150, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %219, i32 noundef %220, i32 noundef %221)
  %222 = load i8, ptr %x168, align 1
  %223 = load i32, ptr %x125, align 4
  %224 = load i32, ptr %x152, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x170, align 1
  %226 = load i32, ptr %x127, align 4
  %227 = load i32, ptr %x154, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i8, ptr %x172, align 1
  %229 = load i32, ptr %x129, align 4
  %230 = load i32, ptr %x156, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %228, i32 noundef %229, i32 noundef %230)
  %231 = load i8, ptr %x174, align 1
  %232 = load i32, ptr %x131, align 4
  %233 = load i32, ptr %x158, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %231, i32 noundef %232, i32 noundef %233)
  %234 = load i8, ptr %x176, align 1
  %conv35 = zext i8 %234 to i32
  %235 = load i8, ptr %x132, align 1
  %conv36 = zext i8 %235 to i32
  %add37 = add i32 %conv35, %conv36
  store i32 %add37, ptr %x177, align 4
  %236 = load i32, ptr %x2, align 4
  %237 = load ptr, ptr %arg2.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %237, i64 7
  %238 = load i32, ptr %arrayidx38, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x178, ptr noundef %x179, i32 noundef %236, i32 noundef %238)
  %239 = load i32, ptr %x2, align 4
  %240 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %240, i64 6
  %241 = load i32, ptr %arrayidx39, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x180, ptr noundef %x181, i32 noundef %239, i32 noundef %241)
  %242 = load i32, ptr %x2, align 4
  %243 = load ptr, ptr %arg2.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %243, i64 5
  %244 = load i32, ptr %arrayidx40, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x182, ptr noundef %x183, i32 noundef %242, i32 noundef %244)
  %245 = load i32, ptr %x2, align 4
  %246 = load ptr, ptr %arg2.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %246, i64 4
  %247 = load i32, ptr %arrayidx41, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x184, ptr noundef %x185, i32 noundef %245, i32 noundef %247)
  %248 = load i32, ptr %x2, align 4
  %249 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %249, i64 3
  %250 = load i32, ptr %arrayidx42, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x186, ptr noundef %x187, i32 noundef %248, i32 noundef %250)
  %251 = load i32, ptr %x2, align 4
  %252 = load ptr, ptr %arg2.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %252, i64 2
  %253 = load i32, ptr %arrayidx43, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x188, ptr noundef %x189, i32 noundef %251, i32 noundef %253)
  %254 = load i32, ptr %x2, align 4
  %255 = load ptr, ptr %arg2.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %255, i64 1
  %256 = load i32, ptr %arrayidx44, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x190, ptr noundef %x191, i32 noundef %254, i32 noundef %256)
  %257 = load i32, ptr %x2, align 4
  %258 = load ptr, ptr %arg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %258, i64 0
  %259 = load i32, ptr %arrayidx45, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x192, ptr noundef %x193, i32 noundef %257, i32 noundef %259)
  %260 = load i32, ptr %x193, align 4
  %261 = load i32, ptr %x190, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext 0, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x195, align 1
  %263 = load i32, ptr %x191, align 4
  %264 = load i32, ptr %x188, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %262, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x197, align 1
  %266 = load i32, ptr %x189, align 4
  %267 = load i32, ptr %x186, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %265, i32 noundef %266, i32 noundef %267)
  %268 = load i8, ptr %x199, align 1
  %269 = load i32, ptr %x187, align 4
  %270 = load i32, ptr %x184, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %268, i32 noundef %269, i32 noundef %270)
  %271 = load i8, ptr %x201, align 1
  %272 = load i32, ptr %x185, align 4
  %273 = load i32, ptr %x182, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %271, i32 noundef %272, i32 noundef %273)
  %274 = load i8, ptr %x203, align 1
  %275 = load i32, ptr %x183, align 4
  %276 = load i32, ptr %x180, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %274, i32 noundef %275, i32 noundef %276)
  %277 = load i8, ptr %x205, align 1
  %278 = load i32, ptr %x181, align 4
  %279 = load i32, ptr %x178, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext %277, i32 noundef %278, i32 noundef %279)
  %280 = load i8, ptr %x207, align 1
  %conv46 = zext i8 %280 to i32
  %281 = load i32, ptr %x179, align 4
  %add47 = add i32 %conv46, %281
  store i32 %add47, ptr %x208, align 4
  %282 = load i32, ptr %x161, align 4
  %283 = load i32, ptr %x192, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext 0, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x210, align 1
  %285 = load i32, ptr %x163, align 4
  %286 = load i32, ptr %x194, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %286)
  %287 = load i8, ptr %x212, align 1
  %288 = load i32, ptr %x165, align 4
  %289 = load i32, ptr %x196, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %287, i32 noundef %288, i32 noundef %289)
  %290 = load i8, ptr %x214, align 1
  %291 = load i32, ptr %x167, align 4
  %292 = load i32, ptr %x198, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext %290, i32 noundef %291, i32 noundef %292)
  %293 = load i8, ptr %x216, align 1
  %294 = load i32, ptr %x169, align 4
  %295 = load i32, ptr %x200, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext %293, i32 noundef %294, i32 noundef %295)
  %296 = load i8, ptr %x218, align 1
  %297 = load i32, ptr %x171, align 4
  %298 = load i32, ptr %x202, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %296, i32 noundef %297, i32 noundef %298)
  %299 = load i8, ptr %x220, align 1
  %300 = load i32, ptr %x173, align 4
  %301 = load i32, ptr %x204, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x221, ptr noundef %x222, i8 noundef zeroext %299, i32 noundef %300, i32 noundef %301)
  %302 = load i8, ptr %x222, align 1
  %303 = load i32, ptr %x175, align 4
  %304 = load i32, ptr %x206, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext %302, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x224, align 1
  %306 = load i32, ptr %x177, align 4
  %307 = load i32, ptr %x208, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %305, i32 noundef %306, i32 noundef %307)
  %308 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x227, ptr noundef %x228, i32 noundef %308, i32 noundef -2)
  %309 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x229, ptr noundef %x230, i32 noundef %309, i32 noundef -1)
  %310 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x231, ptr noundef %x232, i32 noundef %310, i32 noundef -1)
  %311 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x233, ptr noundef %x234, i32 noundef %311, i32 noundef -1)
  %312 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x235, ptr noundef %x236, i32 noundef %312, i32 noundef -1)
  %313 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x237, ptr noundef %x238, i32 noundef %313, i32 noundef -1)
  %314 = load i32, ptr %x209, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x239, ptr noundef %x240, i32 noundef %314, i32 noundef -1)
  %315 = load i32, ptr %x240, align 4
  %316 = load i32, ptr %x237, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext 0, i32 noundef %315, i32 noundef %316)
  %317 = load i8, ptr %x242, align 1
  %conv48 = zext i8 %317 to i32
  %318 = load i32, ptr %x238, align 4
  %add49 = add i32 %conv48, %318
  store i32 %add49, ptr %x243, align 4
  %319 = load i32, ptr %x236, align 4
  %320 = load i32, ptr %x233, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext 0, i32 noundef %319, i32 noundef %320)
  %321 = load i8, ptr %x245, align 1
  %322 = load i32, ptr %x234, align 4
  %323 = load i32, ptr %x231, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x247, align 1
  %325 = load i32, ptr %x232, align 4
  %326 = load i32, ptr %x229, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x249, align 1
  %328 = load i32, ptr %x230, align 4
  %329 = load i32, ptr %x227, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x251, align 1
  %conv50 = zext i8 %330 to i32
  %331 = load i32, ptr %x228, align 4
  %add51 = add i32 %conv50, %331
  store i32 %add51, ptr %x252, align 4
  %332 = load i32, ptr %x209, align 4
  %333 = load i32, ptr %x239, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext 0, i32 noundef %332, i32 noundef %333)
  %334 = load i8, ptr %x254, align 1
  %335 = load i32, ptr %x211, align 4
  %336 = load i32, ptr %x241, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %334, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x256, align 1
  %338 = load i32, ptr %x213, align 4
  %339 = load i32, ptr %x243, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x258, align 1
  %341 = load i32, ptr %x215, align 4
  %342 = load i32, ptr %x235, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x260, align 1
  %344 = load i32, ptr %x217, align 4
  %345 = load i32, ptr %x244, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x262, align 1
  %347 = load i32, ptr %x219, align 4
  %348 = load i32, ptr %x246, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i8, ptr %x264, align 1
  %350 = load i32, ptr %x221, align 4
  %351 = load i32, ptr %x248, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i8, ptr %x266, align 1
  %353 = load i32, ptr %x223, align 4
  %354 = load i32, ptr %x250, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %352, i32 noundef %353, i32 noundef %354)
  %355 = load i8, ptr %x268, align 1
  %356 = load i32, ptr %x225, align 4
  %357 = load i32, ptr %x252, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %355, i32 noundef %356, i32 noundef %357)
  %358 = load i8, ptr %x270, align 1
  %conv52 = zext i8 %358 to i32
  %359 = load i8, ptr %x226, align 1
  %conv53 = zext i8 %359 to i32
  %add54 = add i32 %conv52, %conv53
  store i32 %add54, ptr %x271, align 4
  %360 = load i32, ptr %x3, align 4
  %361 = load ptr, ptr %arg2.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %361, i64 7
  %362 = load i32, ptr %arrayidx55, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x272, ptr noundef %x273, i32 noundef %360, i32 noundef %362)
  %363 = load i32, ptr %x3, align 4
  %364 = load ptr, ptr %arg2.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %364, i64 6
  %365 = load i32, ptr %arrayidx56, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x274, ptr noundef %x275, i32 noundef %363, i32 noundef %365)
  %366 = load i32, ptr %x3, align 4
  %367 = load ptr, ptr %arg2.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %367, i64 5
  %368 = load i32, ptr %arrayidx57, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x276, ptr noundef %x277, i32 noundef %366, i32 noundef %368)
  %369 = load i32, ptr %x3, align 4
  %370 = load ptr, ptr %arg2.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %370, i64 4
  %371 = load i32, ptr %arrayidx58, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x278, ptr noundef %x279, i32 noundef %369, i32 noundef %371)
  %372 = load i32, ptr %x3, align 4
  %373 = load ptr, ptr %arg2.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %373, i64 3
  %374 = load i32, ptr %arrayidx59, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x280, ptr noundef %x281, i32 noundef %372, i32 noundef %374)
  %375 = load i32, ptr %x3, align 4
  %376 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %376, i64 2
  %377 = load i32, ptr %arrayidx60, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x282, ptr noundef %x283, i32 noundef %375, i32 noundef %377)
  %378 = load i32, ptr %x3, align 4
  %379 = load ptr, ptr %arg2.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %379, i64 1
  %380 = load i32, ptr %arrayidx61, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x284, ptr noundef %x285, i32 noundef %378, i32 noundef %380)
  %381 = load i32, ptr %x3, align 4
  %382 = load ptr, ptr %arg2.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %382, i64 0
  %383 = load i32, ptr %arrayidx62, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x286, ptr noundef %x287, i32 noundef %381, i32 noundef %383)
  %384 = load i32, ptr %x287, align 4
  %385 = load i32, ptr %x284, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext 0, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x289, align 1
  %387 = load i32, ptr %x285, align 4
  %388 = load i32, ptr %x282, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x291, align 1
  %390 = load i32, ptr %x283, align 4
  %391 = load i32, ptr %x280, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x293, align 1
  %393 = load i32, ptr %x281, align 4
  %394 = load i32, ptr %x278, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x295, align 1
  %396 = load i32, ptr %x279, align 4
  %397 = load i32, ptr %x276, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x297, align 1
  %399 = load i32, ptr %x277, align 4
  %400 = load i32, ptr %x274, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %398, i32 noundef %399, i32 noundef %400)
  %401 = load i8, ptr %x299, align 1
  %402 = load i32, ptr %x275, align 4
  %403 = load i32, ptr %x272, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %401, i32 noundef %402, i32 noundef %403)
  %404 = load i8, ptr %x301, align 1
  %conv63 = zext i8 %404 to i32
  %405 = load i32, ptr %x273, align 4
  %add64 = add i32 %conv63, %405
  store i32 %add64, ptr %x302, align 4
  %406 = load i32, ptr %x255, align 4
  %407 = load i32, ptr %x286, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext 0, i32 noundef %406, i32 noundef %407)
  %408 = load i8, ptr %x304, align 1
  %409 = load i32, ptr %x257, align 4
  %410 = load i32, ptr %x288, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %408, i32 noundef %409, i32 noundef %410)
  %411 = load i8, ptr %x306, align 1
  %412 = load i32, ptr %x259, align 4
  %413 = load i32, ptr %x290, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %411, i32 noundef %412, i32 noundef %413)
  %414 = load i8, ptr %x308, align 1
  %415 = load i32, ptr %x261, align 4
  %416 = load i32, ptr %x292, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %414, i32 noundef %415, i32 noundef %416)
  %417 = load i8, ptr %x310, align 1
  %418 = load i32, ptr %x263, align 4
  %419 = load i32, ptr %x294, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %417, i32 noundef %418, i32 noundef %419)
  %420 = load i8, ptr %x312, align 1
  %421 = load i32, ptr %x265, align 4
  %422 = load i32, ptr %x296, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %420, i32 noundef %421, i32 noundef %422)
  %423 = load i8, ptr %x314, align 1
  %424 = load i32, ptr %x267, align 4
  %425 = load i32, ptr %x298, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %423, i32 noundef %424, i32 noundef %425)
  %426 = load i8, ptr %x316, align 1
  %427 = load i32, ptr %x269, align 4
  %428 = load i32, ptr %x300, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %426, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x318, align 1
  %430 = load i32, ptr %x271, align 4
  %431 = load i32, ptr %x302, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x321, ptr noundef %x322, i32 noundef %432, i32 noundef -2)
  %433 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x323, ptr noundef %x324, i32 noundef %433, i32 noundef -1)
  %434 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x325, ptr noundef %x326, i32 noundef %434, i32 noundef -1)
  %435 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x327, ptr noundef %x328, i32 noundef %435, i32 noundef -1)
  %436 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x329, ptr noundef %x330, i32 noundef %436, i32 noundef -1)
  %437 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x331, ptr noundef %x332, i32 noundef %437, i32 noundef -1)
  %438 = load i32, ptr %x303, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x333, ptr noundef %x334, i32 noundef %438, i32 noundef -1)
  %439 = load i32, ptr %x334, align 4
  %440 = load i32, ptr %x331, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext 0, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x336, align 1
  %conv65 = zext i8 %441 to i32
  %442 = load i32, ptr %x332, align 4
  %add66 = add i32 %conv65, %442
  store i32 %add66, ptr %x337, align 4
  %443 = load i32, ptr %x330, align 4
  %444 = load i32, ptr %x327, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext 0, i32 noundef %443, i32 noundef %444)
  %445 = load i8, ptr %x339, align 1
  %446 = load i32, ptr %x328, align 4
  %447 = load i32, ptr %x325, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %445, i32 noundef %446, i32 noundef %447)
  %448 = load i8, ptr %x341, align 1
  %449 = load i32, ptr %x326, align 4
  %450 = load i32, ptr %x323, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x342, ptr noundef %x343, i8 noundef zeroext %448, i32 noundef %449, i32 noundef %450)
  %451 = load i8, ptr %x343, align 1
  %452 = load i32, ptr %x324, align 4
  %453 = load i32, ptr %x321, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x344, ptr noundef %x345, i8 noundef zeroext %451, i32 noundef %452, i32 noundef %453)
  %454 = load i8, ptr %x345, align 1
  %conv67 = zext i8 %454 to i32
  %455 = load i32, ptr %x322, align 4
  %add68 = add i32 %conv67, %455
  store i32 %add68, ptr %x346, align 4
  %456 = load i32, ptr %x303, align 4
  %457 = load i32, ptr %x333, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext 0, i32 noundef %456, i32 noundef %457)
  %458 = load i8, ptr %x348, align 1
  %459 = load i32, ptr %x305, align 4
  %460 = load i32, ptr %x335, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %458, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x350, align 1
  %462 = load i32, ptr %x307, align 4
  %463 = load i32, ptr %x337, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x352, align 1
  %465 = load i32, ptr %x309, align 4
  %466 = load i32, ptr %x329, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x354, align 1
  %468 = load i32, ptr %x311, align 4
  %469 = load i32, ptr %x338, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x356, align 1
  %471 = load i32, ptr %x313, align 4
  %472 = load i32, ptr %x340, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x358, align 1
  %474 = load i32, ptr %x315, align 4
  %475 = load i32, ptr %x342, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x360, align 1
  %477 = load i32, ptr %x317, align 4
  %478 = load i32, ptr %x344, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x362, align 1
  %480 = load i32, ptr %x319, align 4
  %481 = load i32, ptr %x346, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i8, ptr %x364, align 1
  %conv69 = zext i8 %482 to i32
  %483 = load i8, ptr %x320, align 1
  %conv70 = zext i8 %483 to i32
  %add71 = add i32 %conv69, %conv70
  store i32 %add71, ptr %x365, align 4
  %484 = load i32, ptr %x4, align 4
  %485 = load ptr, ptr %arg2.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %485, i64 7
  %486 = load i32, ptr %arrayidx72, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x366, ptr noundef %x367, i32 noundef %484, i32 noundef %486)
  %487 = load i32, ptr %x4, align 4
  %488 = load ptr, ptr %arg2.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %488, i64 6
  %489 = load i32, ptr %arrayidx73, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x368, ptr noundef %x369, i32 noundef %487, i32 noundef %489)
  %490 = load i32, ptr %x4, align 4
  %491 = load ptr, ptr %arg2.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %491, i64 5
  %492 = load i32, ptr %arrayidx74, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x370, ptr noundef %x371, i32 noundef %490, i32 noundef %492)
  %493 = load i32, ptr %x4, align 4
  %494 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %494, i64 4
  %495 = load i32, ptr %arrayidx75, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x372, ptr noundef %x373, i32 noundef %493, i32 noundef %495)
  %496 = load i32, ptr %x4, align 4
  %497 = load ptr, ptr %arg2.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %497, i64 3
  %498 = load i32, ptr %arrayidx76, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x374, ptr noundef %x375, i32 noundef %496, i32 noundef %498)
  %499 = load i32, ptr %x4, align 4
  %500 = load ptr, ptr %arg2.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %500, i64 2
  %501 = load i32, ptr %arrayidx77, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x376, ptr noundef %x377, i32 noundef %499, i32 noundef %501)
  %502 = load i32, ptr %x4, align 4
  %503 = load ptr, ptr %arg2.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %503, i64 1
  %504 = load i32, ptr %arrayidx78, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x378, ptr noundef %x379, i32 noundef %502, i32 noundef %504)
  %505 = load i32, ptr %x4, align 4
  %506 = load ptr, ptr %arg2.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %506, i64 0
  %507 = load i32, ptr %arrayidx79, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x380, ptr noundef %x381, i32 noundef %505, i32 noundef %507)
  %508 = load i32, ptr %x381, align 4
  %509 = load i32, ptr %x378, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext 0, i32 noundef %508, i32 noundef %509)
  %510 = load i8, ptr %x383, align 1
  %511 = load i32, ptr %x379, align 4
  %512 = load i32, ptr %x376, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %510, i32 noundef %511, i32 noundef %512)
  %513 = load i8, ptr %x385, align 1
  %514 = load i32, ptr %x377, align 4
  %515 = load i32, ptr %x374, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %513, i32 noundef %514, i32 noundef %515)
  %516 = load i8, ptr %x387, align 1
  %517 = load i32, ptr %x375, align 4
  %518 = load i32, ptr %x372, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %516, i32 noundef %517, i32 noundef %518)
  %519 = load i8, ptr %x389, align 1
  %520 = load i32, ptr %x373, align 4
  %521 = load i32, ptr %x370, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %519, i32 noundef %520, i32 noundef %521)
  %522 = load i8, ptr %x391, align 1
  %523 = load i32, ptr %x371, align 4
  %524 = load i32, ptr %x368, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %522, i32 noundef %523, i32 noundef %524)
  %525 = load i8, ptr %x393, align 1
  %526 = load i32, ptr %x369, align 4
  %527 = load i32, ptr %x366, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x394, ptr noundef %x395, i8 noundef zeroext %525, i32 noundef %526, i32 noundef %527)
  %528 = load i8, ptr %x395, align 1
  %conv80 = zext i8 %528 to i32
  %529 = load i32, ptr %x367, align 4
  %add81 = add i32 %conv80, %529
  store i32 %add81, ptr %x396, align 4
  %530 = load i32, ptr %x349, align 4
  %531 = load i32, ptr %x380, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext 0, i32 noundef %530, i32 noundef %531)
  %532 = load i8, ptr %x398, align 1
  %533 = load i32, ptr %x351, align 4
  %534 = load i32, ptr %x382, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %532, i32 noundef %533, i32 noundef %534)
  %535 = load i8, ptr %x400, align 1
  %536 = load i32, ptr %x353, align 4
  %537 = load i32, ptr %x384, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %535, i32 noundef %536, i32 noundef %537)
  %538 = load i8, ptr %x402, align 1
  %539 = load i32, ptr %x355, align 4
  %540 = load i32, ptr %x386, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %538, i32 noundef %539, i32 noundef %540)
  %541 = load i8, ptr %x404, align 1
  %542 = load i32, ptr %x357, align 4
  %543 = load i32, ptr %x388, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %541, i32 noundef %542, i32 noundef %543)
  %544 = load i8, ptr %x406, align 1
  %545 = load i32, ptr %x359, align 4
  %546 = load i32, ptr %x390, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext %544, i32 noundef %545, i32 noundef %546)
  %547 = load i8, ptr %x408, align 1
  %548 = load i32, ptr %x361, align 4
  %549 = load i32, ptr %x392, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %547, i32 noundef %548, i32 noundef %549)
  %550 = load i8, ptr %x410, align 1
  %551 = load i32, ptr %x363, align 4
  %552 = load i32, ptr %x394, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %550, i32 noundef %551, i32 noundef %552)
  %553 = load i8, ptr %x412, align 1
  %554 = load i32, ptr %x365, align 4
  %555 = load i32, ptr %x396, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %553, i32 noundef %554, i32 noundef %555)
  %556 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x415, ptr noundef %x416, i32 noundef %556, i32 noundef -2)
  %557 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x417, ptr noundef %x418, i32 noundef %557, i32 noundef -1)
  %558 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x419, ptr noundef %x420, i32 noundef %558, i32 noundef -1)
  %559 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x421, ptr noundef %x422, i32 noundef %559, i32 noundef -1)
  %560 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %560, i32 noundef -1)
  %561 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %561, i32 noundef -1)
  %562 = load i32, ptr %x397, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x427, ptr noundef %x428, i32 noundef %562, i32 noundef -1)
  %563 = load i32, ptr %x428, align 4
  %564 = load i32, ptr %x425, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext 0, i32 noundef %563, i32 noundef %564)
  %565 = load i8, ptr %x430, align 1
  %conv82 = zext i8 %565 to i32
  %566 = load i32, ptr %x426, align 4
  %add83 = add i32 %conv82, %566
  store i32 %add83, ptr %x431, align 4
  %567 = load i32, ptr %x424, align 4
  %568 = load i32, ptr %x421, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext 0, i32 noundef %567, i32 noundef %568)
  %569 = load i8, ptr %x433, align 1
  %570 = load i32, ptr %x422, align 4
  %571 = load i32, ptr %x419, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %569, i32 noundef %570, i32 noundef %571)
  %572 = load i8, ptr %x435, align 1
  %573 = load i32, ptr %x420, align 4
  %574 = load i32, ptr %x417, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %572, i32 noundef %573, i32 noundef %574)
  %575 = load i8, ptr %x437, align 1
  %576 = load i32, ptr %x418, align 4
  %577 = load i32, ptr %x415, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %575, i32 noundef %576, i32 noundef %577)
  %578 = load i8, ptr %x439, align 1
  %conv84 = zext i8 %578 to i32
  %579 = load i32, ptr %x416, align 4
  %add85 = add i32 %conv84, %579
  store i32 %add85, ptr %x440, align 4
  %580 = load i32, ptr %x397, align 4
  %581 = load i32, ptr %x427, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext 0, i32 noundef %580, i32 noundef %581)
  %582 = load i8, ptr %x442, align 1
  %583 = load i32, ptr %x399, align 4
  %584 = load i32, ptr %x429, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %582, i32 noundef %583, i32 noundef %584)
  %585 = load i8, ptr %x444, align 1
  %586 = load i32, ptr %x401, align 4
  %587 = load i32, ptr %x431, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %585, i32 noundef %586, i32 noundef %587)
  %588 = load i8, ptr %x446, align 1
  %589 = load i32, ptr %x403, align 4
  %590 = load i32, ptr %x423, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %588, i32 noundef %589, i32 noundef %590)
  %591 = load i8, ptr %x448, align 1
  %592 = load i32, ptr %x405, align 4
  %593 = load i32, ptr %x432, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %591, i32 noundef %592, i32 noundef %593)
  %594 = load i8, ptr %x450, align 1
  %595 = load i32, ptr %x407, align 4
  %596 = load i32, ptr %x434, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %594, i32 noundef %595, i32 noundef %596)
  %597 = load i8, ptr %x452, align 1
  %598 = load i32, ptr %x409, align 4
  %599 = load i32, ptr %x436, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %597, i32 noundef %598, i32 noundef %599)
  %600 = load i8, ptr %x454, align 1
  %601 = load i32, ptr %x411, align 4
  %602 = load i32, ptr %x438, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext %600, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x456, align 1
  %604 = load i32, ptr %x413, align 4
  %605 = load i32, ptr %x440, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext %603, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x458, align 1
  %conv86 = zext i8 %606 to i32
  %607 = load i8, ptr %x414, align 1
  %conv87 = zext i8 %607 to i32
  %add88 = add i32 %conv86, %conv87
  store i32 %add88, ptr %x459, align 4
  %608 = load i32, ptr %x5, align 4
  %609 = load ptr, ptr %arg2.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %609, i64 7
  %610 = load i32, ptr %arrayidx89, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x460, ptr noundef %x461, i32 noundef %608, i32 noundef %610)
  %611 = load i32, ptr %x5, align 4
  %612 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %612, i64 6
  %613 = load i32, ptr %arrayidx90, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x462, ptr noundef %x463, i32 noundef %611, i32 noundef %613)
  %614 = load i32, ptr %x5, align 4
  %615 = load ptr, ptr %arg2.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %615, i64 5
  %616 = load i32, ptr %arrayidx91, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x464, ptr noundef %x465, i32 noundef %614, i32 noundef %616)
  %617 = load i32, ptr %x5, align 4
  %618 = load ptr, ptr %arg2.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %618, i64 4
  %619 = load i32, ptr %arrayidx92, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x466, ptr noundef %x467, i32 noundef %617, i32 noundef %619)
  %620 = load i32, ptr %x5, align 4
  %621 = load ptr, ptr %arg2.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %621, i64 3
  %622 = load i32, ptr %arrayidx93, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x468, ptr noundef %x469, i32 noundef %620, i32 noundef %622)
  %623 = load i32, ptr %x5, align 4
  %624 = load ptr, ptr %arg2.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %624, i64 2
  %625 = load i32, ptr %arrayidx94, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x470, ptr noundef %x471, i32 noundef %623, i32 noundef %625)
  %626 = load i32, ptr %x5, align 4
  %627 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %627, i64 1
  %628 = load i32, ptr %arrayidx95, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x472, ptr noundef %x473, i32 noundef %626, i32 noundef %628)
  %629 = load i32, ptr %x5, align 4
  %630 = load ptr, ptr %arg2.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %630, i64 0
  %631 = load i32, ptr %arrayidx96, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x474, ptr noundef %x475, i32 noundef %629, i32 noundef %631)
  %632 = load i32, ptr %x475, align 4
  %633 = load i32, ptr %x472, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x476, ptr noundef %x477, i8 noundef zeroext 0, i32 noundef %632, i32 noundef %633)
  %634 = load i8, ptr %x477, align 1
  %635 = load i32, ptr %x473, align 4
  %636 = load i32, ptr %x470, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x478, ptr noundef %x479, i8 noundef zeroext %634, i32 noundef %635, i32 noundef %636)
  %637 = load i8, ptr %x479, align 1
  %638 = load i32, ptr %x471, align 4
  %639 = load i32, ptr %x468, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext %637, i32 noundef %638, i32 noundef %639)
  %640 = load i8, ptr %x481, align 1
  %641 = load i32, ptr %x469, align 4
  %642 = load i32, ptr %x466, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %640, i32 noundef %641, i32 noundef %642)
  %643 = load i8, ptr %x483, align 1
  %644 = load i32, ptr %x467, align 4
  %645 = load i32, ptr %x464, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %643, i32 noundef %644, i32 noundef %645)
  %646 = load i8, ptr %x485, align 1
  %647 = load i32, ptr %x465, align 4
  %648 = load i32, ptr %x462, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %646, i32 noundef %647, i32 noundef %648)
  %649 = load i8, ptr %x487, align 1
  %650 = load i32, ptr %x463, align 4
  %651 = load i32, ptr %x460, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %649, i32 noundef %650, i32 noundef %651)
  %652 = load i8, ptr %x489, align 1
  %conv97 = zext i8 %652 to i32
  %653 = load i32, ptr %x461, align 4
  %add98 = add i32 %conv97, %653
  store i32 %add98, ptr %x490, align 4
  %654 = load i32, ptr %x443, align 4
  %655 = load i32, ptr %x474, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext 0, i32 noundef %654, i32 noundef %655)
  %656 = load i8, ptr %x492, align 1
  %657 = load i32, ptr %x445, align 4
  %658 = load i32, ptr %x476, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %656, i32 noundef %657, i32 noundef %658)
  %659 = load i8, ptr %x494, align 1
  %660 = load i32, ptr %x447, align 4
  %661 = load i32, ptr %x478, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %659, i32 noundef %660, i32 noundef %661)
  %662 = load i8, ptr %x496, align 1
  %663 = load i32, ptr %x449, align 4
  %664 = load i32, ptr %x480, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext %662, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x498, align 1
  %666 = load i32, ptr %x451, align 4
  %667 = load i32, ptr %x482, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x500, align 1
  %669 = load i32, ptr %x453, align 4
  %670 = load i32, ptr %x484, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x501, ptr noundef %x502, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x502, align 1
  %672 = load i32, ptr %x455, align 4
  %673 = load i32, ptr %x486, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x503, ptr noundef %x504, i8 noundef zeroext %671, i32 noundef %672, i32 noundef %673)
  %674 = load i8, ptr %x504, align 1
  %675 = load i32, ptr %x457, align 4
  %676 = load i32, ptr %x488, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext %674, i32 noundef %675, i32 noundef %676)
  %677 = load i8, ptr %x506, align 1
  %678 = load i32, ptr %x459, align 4
  %679 = load i32, ptr %x490, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext %677, i32 noundef %678, i32 noundef %679)
  %680 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x509, ptr noundef %x510, i32 noundef %680, i32 noundef -2)
  %681 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x511, ptr noundef %x512, i32 noundef %681, i32 noundef -1)
  %682 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x513, ptr noundef %x514, i32 noundef %682, i32 noundef -1)
  %683 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x515, ptr noundef %x516, i32 noundef %683, i32 noundef -1)
  %684 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x517, ptr noundef %x518, i32 noundef %684, i32 noundef -1)
  %685 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x519, ptr noundef %x520, i32 noundef %685, i32 noundef -1)
  %686 = load i32, ptr %x491, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x521, ptr noundef %x522, i32 noundef %686, i32 noundef -1)
  %687 = load i32, ptr %x522, align 4
  %688 = load i32, ptr %x519, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext 0, i32 noundef %687, i32 noundef %688)
  %689 = load i8, ptr %x524, align 1
  %conv99 = zext i8 %689 to i32
  %690 = load i32, ptr %x520, align 4
  %add100 = add i32 %conv99, %690
  store i32 %add100, ptr %x525, align 4
  %691 = load i32, ptr %x518, align 4
  %692 = load i32, ptr %x515, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext 0, i32 noundef %691, i32 noundef %692)
  %693 = load i8, ptr %x527, align 1
  %694 = load i32, ptr %x516, align 4
  %695 = load i32, ptr %x513, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %693, i32 noundef %694, i32 noundef %695)
  %696 = load i8, ptr %x529, align 1
  %697 = load i32, ptr %x514, align 4
  %698 = load i32, ptr %x511, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %696, i32 noundef %697, i32 noundef %698)
  %699 = load i8, ptr %x531, align 1
  %700 = load i32, ptr %x512, align 4
  %701 = load i32, ptr %x509, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %699, i32 noundef %700, i32 noundef %701)
  %702 = load i8, ptr %x533, align 1
  %conv101 = zext i8 %702 to i32
  %703 = load i32, ptr %x510, align 4
  %add102 = add i32 %conv101, %703
  store i32 %add102, ptr %x534, align 4
  %704 = load i32, ptr %x491, align 4
  %705 = load i32, ptr %x521, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext 0, i32 noundef %704, i32 noundef %705)
  %706 = load i8, ptr %x536, align 1
  %707 = load i32, ptr %x493, align 4
  %708 = load i32, ptr %x523, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext %706, i32 noundef %707, i32 noundef %708)
  %709 = load i8, ptr %x538, align 1
  %710 = load i32, ptr %x495, align 4
  %711 = load i32, ptr %x525, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext %709, i32 noundef %710, i32 noundef %711)
  %712 = load i8, ptr %x540, align 1
  %713 = load i32, ptr %x497, align 4
  %714 = load i32, ptr %x517, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %712, i32 noundef %713, i32 noundef %714)
  %715 = load i8, ptr %x542, align 1
  %716 = load i32, ptr %x499, align 4
  %717 = load i32, ptr %x526, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %715, i32 noundef %716, i32 noundef %717)
  %718 = load i8, ptr %x544, align 1
  %719 = load i32, ptr %x501, align 4
  %720 = load i32, ptr %x528, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %718, i32 noundef %719, i32 noundef %720)
  %721 = load i8, ptr %x546, align 1
  %722 = load i32, ptr %x503, align 4
  %723 = load i32, ptr %x530, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %721, i32 noundef %722, i32 noundef %723)
  %724 = load i8, ptr %x548, align 1
  %725 = load i32, ptr %x505, align 4
  %726 = load i32, ptr %x532, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %724, i32 noundef %725, i32 noundef %726)
  %727 = load i8, ptr %x550, align 1
  %728 = load i32, ptr %x507, align 4
  %729 = load i32, ptr %x534, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %727, i32 noundef %728, i32 noundef %729)
  %730 = load i8, ptr %x552, align 1
  %conv103 = zext i8 %730 to i32
  %731 = load i8, ptr %x508, align 1
  %conv104 = zext i8 %731 to i32
  %add105 = add i32 %conv103, %conv104
  store i32 %add105, ptr %x553, align 4
  %732 = load i32, ptr %x6, align 4
  %733 = load ptr, ptr %arg2.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %733, i64 7
  %734 = load i32, ptr %arrayidx106, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x554, ptr noundef %x555, i32 noundef %732, i32 noundef %734)
  %735 = load i32, ptr %x6, align 4
  %736 = load ptr, ptr %arg2.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %736, i64 6
  %737 = load i32, ptr %arrayidx107, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x556, ptr noundef %x557, i32 noundef %735, i32 noundef %737)
  %738 = load i32, ptr %x6, align 4
  %739 = load ptr, ptr %arg2.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %739, i64 5
  %740 = load i32, ptr %arrayidx108, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x558, ptr noundef %x559, i32 noundef %738, i32 noundef %740)
  %741 = load i32, ptr %x6, align 4
  %742 = load ptr, ptr %arg2.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %742, i64 4
  %743 = load i32, ptr %arrayidx109, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x560, ptr noundef %x561, i32 noundef %741, i32 noundef %743)
  %744 = load i32, ptr %x6, align 4
  %745 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %745, i64 3
  %746 = load i32, ptr %arrayidx110, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x562, ptr noundef %x563, i32 noundef %744, i32 noundef %746)
  %747 = load i32, ptr %x6, align 4
  %748 = load ptr, ptr %arg2.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %748, i64 2
  %749 = load i32, ptr %arrayidx111, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x564, ptr noundef %x565, i32 noundef %747, i32 noundef %749)
  %750 = load i32, ptr %x6, align 4
  %751 = load ptr, ptr %arg2.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %751, i64 1
  %752 = load i32, ptr %arrayidx112, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x566, ptr noundef %x567, i32 noundef %750, i32 noundef %752)
  %753 = load i32, ptr %x6, align 4
  %754 = load ptr, ptr %arg2.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %754, i64 0
  %755 = load i32, ptr %arrayidx113, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x568, ptr noundef %x569, i32 noundef %753, i32 noundef %755)
  %756 = load i32, ptr %x569, align 4
  %757 = load i32, ptr %x566, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x570, ptr noundef %x571, i8 noundef zeroext 0, i32 noundef %756, i32 noundef %757)
  %758 = load i8, ptr %x571, align 1
  %759 = load i32, ptr %x567, align 4
  %760 = load i32, ptr %x564, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x572, ptr noundef %x573, i8 noundef zeroext %758, i32 noundef %759, i32 noundef %760)
  %761 = load i8, ptr %x573, align 1
  %762 = load i32, ptr %x565, align 4
  %763 = load i32, ptr %x562, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x574, ptr noundef %x575, i8 noundef zeroext %761, i32 noundef %762, i32 noundef %763)
  %764 = load i8, ptr %x575, align 1
  %765 = load i32, ptr %x563, align 4
  %766 = load i32, ptr %x560, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x576, ptr noundef %x577, i8 noundef zeroext %764, i32 noundef %765, i32 noundef %766)
  %767 = load i8, ptr %x577, align 1
  %768 = load i32, ptr %x561, align 4
  %769 = load i32, ptr %x558, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x578, ptr noundef %x579, i8 noundef zeroext %767, i32 noundef %768, i32 noundef %769)
  %770 = load i8, ptr %x579, align 1
  %771 = load i32, ptr %x559, align 4
  %772 = load i32, ptr %x556, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x580, ptr noundef %x581, i8 noundef zeroext %770, i32 noundef %771, i32 noundef %772)
  %773 = load i8, ptr %x581, align 1
  %774 = load i32, ptr %x557, align 4
  %775 = load i32, ptr %x554, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x582, ptr noundef %x583, i8 noundef zeroext %773, i32 noundef %774, i32 noundef %775)
  %776 = load i8, ptr %x583, align 1
  %conv114 = zext i8 %776 to i32
  %777 = load i32, ptr %x555, align 4
  %add115 = add i32 %conv114, %777
  store i32 %add115, ptr %x584, align 4
  %778 = load i32, ptr %x537, align 4
  %779 = load i32, ptr %x568, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext 0, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x586, align 1
  %781 = load i32, ptr %x539, align 4
  %782 = load i32, ptr %x570, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %780, i32 noundef %781, i32 noundef %782)
  %783 = load i8, ptr %x588, align 1
  %784 = load i32, ptr %x541, align 4
  %785 = load i32, ptr %x572, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %783, i32 noundef %784, i32 noundef %785)
  %786 = load i8, ptr %x590, align 1
  %787 = load i32, ptr %x543, align 4
  %788 = load i32, ptr %x574, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %786, i32 noundef %787, i32 noundef %788)
  %789 = load i8, ptr %x592, align 1
  %790 = load i32, ptr %x545, align 4
  %791 = load i32, ptr %x576, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %789, i32 noundef %790, i32 noundef %791)
  %792 = load i8, ptr %x594, align 1
  %793 = load i32, ptr %x547, align 4
  %794 = load i32, ptr %x578, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %792, i32 noundef %793, i32 noundef %794)
  %795 = load i8, ptr %x596, align 1
  %796 = load i32, ptr %x549, align 4
  %797 = load i32, ptr %x580, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %795, i32 noundef %796, i32 noundef %797)
  %798 = load i8, ptr %x598, align 1
  %799 = load i32, ptr %x551, align 4
  %800 = load i32, ptr %x582, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext %798, i32 noundef %799, i32 noundef %800)
  %801 = load i8, ptr %x600, align 1
  %802 = load i32, ptr %x553, align 4
  %803 = load i32, ptr %x584, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %801, i32 noundef %802, i32 noundef %803)
  %804 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x603, ptr noundef %x604, i32 noundef %804, i32 noundef -2)
  %805 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x605, ptr noundef %x606, i32 noundef %805, i32 noundef -1)
  %806 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x607, ptr noundef %x608, i32 noundef %806, i32 noundef -1)
  %807 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x609, ptr noundef %x610, i32 noundef %807, i32 noundef -1)
  %808 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x611, ptr noundef %x612, i32 noundef %808, i32 noundef -1)
  %809 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x613, ptr noundef %x614, i32 noundef %809, i32 noundef -1)
  %810 = load i32, ptr %x585, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x615, ptr noundef %x616, i32 noundef %810, i32 noundef -1)
  %811 = load i32, ptr %x616, align 4
  %812 = load i32, ptr %x613, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext 0, i32 noundef %811, i32 noundef %812)
  %813 = load i8, ptr %x618, align 1
  %conv116 = zext i8 %813 to i32
  %814 = load i32, ptr %x614, align 4
  %add117 = add i32 %conv116, %814
  store i32 %add117, ptr %x619, align 4
  %815 = load i32, ptr %x612, align 4
  %816 = load i32, ptr %x609, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x620, ptr noundef %x621, i8 noundef zeroext 0, i32 noundef %815, i32 noundef %816)
  %817 = load i8, ptr %x621, align 1
  %818 = load i32, ptr %x610, align 4
  %819 = load i32, ptr %x607, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x622, ptr noundef %x623, i8 noundef zeroext %817, i32 noundef %818, i32 noundef %819)
  %820 = load i8, ptr %x623, align 1
  %821 = load i32, ptr %x608, align 4
  %822 = load i32, ptr %x605, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x624, ptr noundef %x625, i8 noundef zeroext %820, i32 noundef %821, i32 noundef %822)
  %823 = load i8, ptr %x625, align 1
  %824 = load i32, ptr %x606, align 4
  %825 = load i32, ptr %x603, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x626, ptr noundef %x627, i8 noundef zeroext %823, i32 noundef %824, i32 noundef %825)
  %826 = load i8, ptr %x627, align 1
  %conv118 = zext i8 %826 to i32
  %827 = load i32, ptr %x604, align 4
  %add119 = add i32 %conv118, %827
  store i32 %add119, ptr %x628, align 4
  %828 = load i32, ptr %x585, align 4
  %829 = load i32, ptr %x615, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext 0, i32 noundef %828, i32 noundef %829)
  %830 = load i8, ptr %x630, align 1
  %831 = load i32, ptr %x587, align 4
  %832 = load i32, ptr %x617, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %830, i32 noundef %831, i32 noundef %832)
  %833 = load i8, ptr %x632, align 1
  %834 = load i32, ptr %x589, align 4
  %835 = load i32, ptr %x619, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext %833, i32 noundef %834, i32 noundef %835)
  %836 = load i8, ptr %x634, align 1
  %837 = load i32, ptr %x591, align 4
  %838 = load i32, ptr %x611, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %836, i32 noundef %837, i32 noundef %838)
  %839 = load i8, ptr %x636, align 1
  %840 = load i32, ptr %x593, align 4
  %841 = load i32, ptr %x620, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %839, i32 noundef %840, i32 noundef %841)
  %842 = load i8, ptr %x638, align 1
  %843 = load i32, ptr %x595, align 4
  %844 = load i32, ptr %x622, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %842, i32 noundef %843, i32 noundef %844)
  %845 = load i8, ptr %x640, align 1
  %846 = load i32, ptr %x597, align 4
  %847 = load i32, ptr %x624, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %845, i32 noundef %846, i32 noundef %847)
  %848 = load i8, ptr %x642, align 1
  %849 = load i32, ptr %x599, align 4
  %850 = load i32, ptr %x626, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %848, i32 noundef %849, i32 noundef %850)
  %851 = load i8, ptr %x644, align 1
  %852 = load i32, ptr %x601, align 4
  %853 = load i32, ptr %x628, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %851, i32 noundef %852, i32 noundef %853)
  %854 = load i8, ptr %x646, align 1
  %conv120 = zext i8 %854 to i32
  %855 = load i8, ptr %x602, align 1
  %conv121 = zext i8 %855 to i32
  %add122 = add i32 %conv120, %conv121
  store i32 %add122, ptr %x647, align 4
  %856 = load i32, ptr %x7, align 4
  %857 = load ptr, ptr %arg2.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %857, i64 7
  %858 = load i32, ptr %arrayidx123, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x648, ptr noundef %x649, i32 noundef %856, i32 noundef %858)
  %859 = load i32, ptr %x7, align 4
  %860 = load ptr, ptr %arg2.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %860, i64 6
  %861 = load i32, ptr %arrayidx124, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x650, ptr noundef %x651, i32 noundef %859, i32 noundef %861)
  %862 = load i32, ptr %x7, align 4
  %863 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %863, i64 5
  %864 = load i32, ptr %arrayidx125, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x652, ptr noundef %x653, i32 noundef %862, i32 noundef %864)
  %865 = load i32, ptr %x7, align 4
  %866 = load ptr, ptr %arg2.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %866, i64 4
  %867 = load i32, ptr %arrayidx126, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x654, ptr noundef %x655, i32 noundef %865, i32 noundef %867)
  %868 = load i32, ptr %x7, align 4
  %869 = load ptr, ptr %arg2.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %869, i64 3
  %870 = load i32, ptr %arrayidx127, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x656, ptr noundef %x657, i32 noundef %868, i32 noundef %870)
  %871 = load i32, ptr %x7, align 4
  %872 = load ptr, ptr %arg2.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %872, i64 2
  %873 = load i32, ptr %arrayidx128, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x658, ptr noundef %x659, i32 noundef %871, i32 noundef %873)
  %874 = load i32, ptr %x7, align 4
  %875 = load ptr, ptr %arg2.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %875, i64 1
  %876 = load i32, ptr %arrayidx129, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x660, ptr noundef %x661, i32 noundef %874, i32 noundef %876)
  %877 = load i32, ptr %x7, align 4
  %878 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %878, i64 0
  %879 = load i32, ptr %arrayidx130, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x662, ptr noundef %x663, i32 noundef %877, i32 noundef %879)
  %880 = load i32, ptr %x663, align 4
  %881 = load i32, ptr %x660, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x664, ptr noundef %x665, i8 noundef zeroext 0, i32 noundef %880, i32 noundef %881)
  %882 = load i8, ptr %x665, align 1
  %883 = load i32, ptr %x661, align 4
  %884 = load i32, ptr %x658, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x666, ptr noundef %x667, i8 noundef zeroext %882, i32 noundef %883, i32 noundef %884)
  %885 = load i8, ptr %x667, align 1
  %886 = load i32, ptr %x659, align 4
  %887 = load i32, ptr %x656, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x668, ptr noundef %x669, i8 noundef zeroext %885, i32 noundef %886, i32 noundef %887)
  %888 = load i8, ptr %x669, align 1
  %889 = load i32, ptr %x657, align 4
  %890 = load i32, ptr %x654, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x670, ptr noundef %x671, i8 noundef zeroext %888, i32 noundef %889, i32 noundef %890)
  %891 = load i8, ptr %x671, align 1
  %892 = load i32, ptr %x655, align 4
  %893 = load i32, ptr %x652, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x672, ptr noundef %x673, i8 noundef zeroext %891, i32 noundef %892, i32 noundef %893)
  %894 = load i8, ptr %x673, align 1
  %895 = load i32, ptr %x653, align 4
  %896 = load i32, ptr %x650, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x674, ptr noundef %x675, i8 noundef zeroext %894, i32 noundef %895, i32 noundef %896)
  %897 = load i8, ptr %x675, align 1
  %898 = load i32, ptr %x651, align 4
  %899 = load i32, ptr %x648, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x676, ptr noundef %x677, i8 noundef zeroext %897, i32 noundef %898, i32 noundef %899)
  %900 = load i8, ptr %x677, align 1
  %conv131 = zext i8 %900 to i32
  %901 = load i32, ptr %x649, align 4
  %add132 = add i32 %conv131, %901
  store i32 %add132, ptr %x678, align 4
  %902 = load i32, ptr %x631, align 4
  %903 = load i32, ptr %x662, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x679, ptr noundef %x680, i8 noundef zeroext 0, i32 noundef %902, i32 noundef %903)
  %904 = load i8, ptr %x680, align 1
  %905 = load i32, ptr %x633, align 4
  %906 = load i32, ptr %x664, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext %904, i32 noundef %905, i32 noundef %906)
  %907 = load i8, ptr %x682, align 1
  %908 = load i32, ptr %x635, align 4
  %909 = load i32, ptr %x666, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext %907, i32 noundef %908, i32 noundef %909)
  %910 = load i8, ptr %x684, align 1
  %911 = load i32, ptr %x637, align 4
  %912 = load i32, ptr %x668, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext %910, i32 noundef %911, i32 noundef %912)
  %913 = load i8, ptr %x686, align 1
  %914 = load i32, ptr %x639, align 4
  %915 = load i32, ptr %x670, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %913, i32 noundef %914, i32 noundef %915)
  %916 = load i8, ptr %x688, align 1
  %917 = load i32, ptr %x641, align 4
  %918 = load i32, ptr %x672, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %916, i32 noundef %917, i32 noundef %918)
  %919 = load i8, ptr %x690, align 1
  %920 = load i32, ptr %x643, align 4
  %921 = load i32, ptr %x674, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %919, i32 noundef %920, i32 noundef %921)
  %922 = load i8, ptr %x692, align 1
  %923 = load i32, ptr %x645, align 4
  %924 = load i32, ptr %x676, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x693, ptr noundef %x694, i8 noundef zeroext %922, i32 noundef %923, i32 noundef %924)
  %925 = load i8, ptr %x694, align 1
  %926 = load i32, ptr %x647, align 4
  %927 = load i32, ptr %x678, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext %925, i32 noundef %926, i32 noundef %927)
  %928 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x697, ptr noundef %x698, i32 noundef %928, i32 noundef -2)
  %929 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x699, ptr noundef %x700, i32 noundef %929, i32 noundef -1)
  %930 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x701, ptr noundef %x702, i32 noundef %930, i32 noundef -1)
  %931 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x703, ptr noundef %x704, i32 noundef %931, i32 noundef -1)
  %932 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x705, ptr noundef %x706, i32 noundef %932, i32 noundef -1)
  %933 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x707, ptr noundef %x708, i32 noundef %933, i32 noundef -1)
  %934 = load i32, ptr %x679, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x709, ptr noundef %x710, i32 noundef %934, i32 noundef -1)
  %935 = load i32, ptr %x710, align 4
  %936 = load i32, ptr %x707, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x711, ptr noundef %x712, i8 noundef zeroext 0, i32 noundef %935, i32 noundef %936)
  %937 = load i8, ptr %x712, align 1
  %conv133 = zext i8 %937 to i32
  %938 = load i32, ptr %x708, align 4
  %add134 = add i32 %conv133, %938
  store i32 %add134, ptr %x713, align 4
  %939 = load i32, ptr %x706, align 4
  %940 = load i32, ptr %x703, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x714, ptr noundef %x715, i8 noundef zeroext 0, i32 noundef %939, i32 noundef %940)
  %941 = load i8, ptr %x715, align 1
  %942 = load i32, ptr %x704, align 4
  %943 = load i32, ptr %x701, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x716, ptr noundef %x717, i8 noundef zeroext %941, i32 noundef %942, i32 noundef %943)
  %944 = load i8, ptr %x717, align 1
  %945 = load i32, ptr %x702, align 4
  %946 = load i32, ptr %x699, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x718, ptr noundef %x719, i8 noundef zeroext %944, i32 noundef %945, i32 noundef %946)
  %947 = load i8, ptr %x719, align 1
  %948 = load i32, ptr %x700, align 4
  %949 = load i32, ptr %x697, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x720, ptr noundef %x721, i8 noundef zeroext %947, i32 noundef %948, i32 noundef %949)
  %950 = load i8, ptr %x721, align 1
  %conv135 = zext i8 %950 to i32
  %951 = load i32, ptr %x698, align 4
  %add136 = add i32 %conv135, %951
  store i32 %add136, ptr %x722, align 4
  %952 = load i32, ptr %x679, align 4
  %953 = load i32, ptr %x709, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x723, ptr noundef %x724, i8 noundef zeroext 0, i32 noundef %952, i32 noundef %953)
  %954 = load i8, ptr %x724, align 1
  %955 = load i32, ptr %x681, align 4
  %956 = load i32, ptr %x711, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x725, ptr noundef %x726, i8 noundef zeroext %954, i32 noundef %955, i32 noundef %956)
  %957 = load i8, ptr %x726, align 1
  %958 = load i32, ptr %x683, align 4
  %959 = load i32, ptr %x713, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x727, ptr noundef %x728, i8 noundef zeroext %957, i32 noundef %958, i32 noundef %959)
  %960 = load i8, ptr %x728, align 1
  %961 = load i32, ptr %x685, align 4
  %962 = load i32, ptr %x705, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x729, ptr noundef %x730, i8 noundef zeroext %960, i32 noundef %961, i32 noundef %962)
  %963 = load i8, ptr %x730, align 1
  %964 = load i32, ptr %x687, align 4
  %965 = load i32, ptr %x714, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x731, ptr noundef %x732, i8 noundef zeroext %963, i32 noundef %964, i32 noundef %965)
  %966 = load i8, ptr %x732, align 1
  %967 = load i32, ptr %x689, align 4
  %968 = load i32, ptr %x716, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x733, ptr noundef %x734, i8 noundef zeroext %966, i32 noundef %967, i32 noundef %968)
  %969 = load i8, ptr %x734, align 1
  %970 = load i32, ptr %x691, align 4
  %971 = load i32, ptr %x718, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x735, ptr noundef %x736, i8 noundef zeroext %969, i32 noundef %970, i32 noundef %971)
  %972 = load i8, ptr %x736, align 1
  %973 = load i32, ptr %x693, align 4
  %974 = load i32, ptr %x720, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x737, ptr noundef %x738, i8 noundef zeroext %972, i32 noundef %973, i32 noundef %974)
  %975 = load i8, ptr %x738, align 1
  %976 = load i32, ptr %x695, align 4
  %977 = load i32, ptr %x722, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x739, ptr noundef %x740, i8 noundef zeroext %975, i32 noundef %976, i32 noundef %977)
  %978 = load i8, ptr %x740, align 1
  %conv137 = zext i8 %978 to i32
  %979 = load i8, ptr %x696, align 1
  %conv138 = zext i8 %979 to i32
  %add139 = add i32 %conv137, %conv138
  store i32 %add139, ptr %x741, align 4
  %980 = load i32, ptr %x725, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x742, ptr noundef %x743, i8 noundef zeroext 0, i32 noundef %980, i32 noundef -1)
  %981 = load i8, ptr %x743, align 1
  %982 = load i32, ptr %x727, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x744, ptr noundef %x745, i8 noundef zeroext %981, i32 noundef %982, i32 noundef -1)
  %983 = load i8, ptr %x745, align 1
  %984 = load i32, ptr %x729, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x746, ptr noundef %x747, i8 noundef zeroext %983, i32 noundef %984, i32 noundef 0)
  %985 = load i8, ptr %x747, align 1
  %986 = load i32, ptr %x731, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x748, ptr noundef %x749, i8 noundef zeroext %985, i32 noundef %986, i32 noundef -1)
  %987 = load i8, ptr %x749, align 1
  %988 = load i32, ptr %x733, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x750, ptr noundef %x751, i8 noundef zeroext %987, i32 noundef %988, i32 noundef -1)
  %989 = load i8, ptr %x751, align 1
  %990 = load i32, ptr %x735, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x752, ptr noundef %x753, i8 noundef zeroext %989, i32 noundef %990, i32 noundef -1)
  %991 = load i8, ptr %x753, align 1
  %992 = load i32, ptr %x737, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x754, ptr noundef %x755, i8 noundef zeroext %991, i32 noundef %992, i32 noundef -1)
  %993 = load i8, ptr %x755, align 1
  %994 = load i32, ptr %x739, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x756, ptr noundef %x757, i8 noundef zeroext %993, i32 noundef %994, i32 noundef -2)
  %995 = load i8, ptr %x757, align 1
  %996 = load i32, ptr %x741, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x758, ptr noundef %x759, i8 noundef zeroext %995, i32 noundef %996, i32 noundef 0)
  %997 = load i8, ptr %x759, align 1
  %998 = load i32, ptr %x742, align 4
  %999 = load i32, ptr %x725, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x760, i8 noundef zeroext %997, i32 noundef %998, i32 noundef %999)
  %1000 = load i8, ptr %x759, align 1
  %1001 = load i32, ptr %x744, align 4
  %1002 = load i32, ptr %x727, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x761, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef %1002)
  %1003 = load i8, ptr %x759, align 1
  %1004 = load i32, ptr %x746, align 4
  %1005 = load i32, ptr %x729, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x762, i8 noundef zeroext %1003, i32 noundef %1004, i32 noundef %1005)
  %1006 = load i8, ptr %x759, align 1
  %1007 = load i32, ptr %x748, align 4
  %1008 = load i32, ptr %x731, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x763, i8 noundef zeroext %1006, i32 noundef %1007, i32 noundef %1008)
  %1009 = load i8, ptr %x759, align 1
  %1010 = load i32, ptr %x750, align 4
  %1011 = load i32, ptr %x733, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x764, i8 noundef zeroext %1009, i32 noundef %1010, i32 noundef %1011)
  %1012 = load i8, ptr %x759, align 1
  %1013 = load i32, ptr %x752, align 4
  %1014 = load i32, ptr %x735, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x765, i8 noundef zeroext %1012, i32 noundef %1013, i32 noundef %1014)
  %1015 = load i8, ptr %x759, align 1
  %1016 = load i32, ptr %x754, align 4
  %1017 = load i32, ptr %x737, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x766, i8 noundef zeroext %1015, i32 noundef %1016, i32 noundef %1017)
  %1018 = load i8, ptr %x759, align 1
  %1019 = load i32, ptr %x756, align 4
  %1020 = load i32, ptr %x739, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x767, i8 noundef zeroext %1018, i32 noundef %1019, i32 noundef %1020)
  %1021 = load i32, ptr %x760, align 4
  %1022 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %1022, i64 0
  store i32 %1021, ptr %arrayidx140, align 4
  %1023 = load i32, ptr %x761, align 4
  %1024 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %1024, i64 1
  store i32 %1023, ptr %arrayidx141, align 4
  %1025 = load i32, ptr %x762, align 4
  %1026 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %1026, i64 2
  store i32 %1025, ptr %arrayidx142, align 4
  %1027 = load i32, ptr %x763, align 4
  %1028 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %1028, i64 3
  store i32 %1027, ptr %arrayidx143, align 4
  %1029 = load i32, ptr %x764, align 4
  %1030 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %1030, i64 4
  store i32 %1029, ptr %arrayidx144, align 4
  %1031 = load i32, ptr %x765, align 4
  %1032 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %1032, i64 5
  store i32 %1031, ptr %arrayidx145, align 4
  %1033 = load i32, ptr %x766, align 4
  %1034 = load ptr, ptr %out1.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %1034, i64 6
  store i32 %1033, ptr %arrayidx146, align 4
  %1035 = load i32, ptr %x767, align 4
  %1036 = load ptr, ptr %out1.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %1036, i64 7
  store i32 %1035, ptr %arrayidx147, align 4
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
