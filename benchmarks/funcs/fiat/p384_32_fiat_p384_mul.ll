; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x26 = alloca i32, align 4
  %x27 = alloca i32, align 4
  %x28 = alloca i32, align 4
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i32, align 4
  %x32 = alloca i32, align 4
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i8, align 1
  %x39 = alloca i32, align 4
  %x40 = alloca i8, align 1
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
  %x122 = alloca i8, align 1
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
  %x209 = alloca i32, align 4
  %x210 = alloca i32, align 4
  %x211 = alloca i32, align 4
  %x212 = alloca i32, align 4
  %x213 = alloca i32, align 4
  %x214 = alloca i32, align 4
  %x215 = alloca i32, align 4
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
  %x260 = alloca i32, align 4
  %x261 = alloca i32, align 4
  %x262 = alloca i32, align 4
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
  %x280 = alloca i32, align 4
  %x281 = alloca i32, align 4
  %x282 = alloca i32, align 4
  %x283 = alloca i32, align 4
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
  %x301 = alloca i8, align 1
  %x302 = alloca i32, align 4
  %x303 = alloca i8, align 1
  %x304 = alloca i32, align 4
  %x305 = alloca i8, align 1
  %x306 = alloca i32, align 4
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
  %x334 = alloca i32, align 4
  %x335 = alloca i32, align 4
  %x336 = alloca i32, align 4
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
  %x366 = alloca i8, align 1
  %x367 = alloca i32, align 4
  %x368 = alloca i8, align 1
  %x369 = alloca i32, align 4
  %x370 = alloca i32, align 4
  %x371 = alloca i8, align 1
  %x372 = alloca i32, align 4
  %x373 = alloca i8, align 1
  %x374 = alloca i32, align 4
  %x375 = alloca i8, align 1
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
  %x410 = alloca i32, align 4
  %x411 = alloca i32, align 4
  %x412 = alloca i32, align 4
  %x413 = alloca i32, align 4
  %x414 = alloca i32, align 4
  %x415 = alloca i32, align 4
  %x416 = alloca i32, align 4
  %x417 = alloca i32, align 4
  %x418 = alloca i32, align 4
  %x419 = alloca i32, align 4
  %x420 = alloca i32, align 4
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
  %x471 = alloca i32, align 4
  %x472 = alloca i32, align 4
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
  %x490 = alloca i32, align 4
  %x491 = alloca i8, align 1
  %x492 = alloca i32, align 4
  %x493 = alloca i8, align 1
  %x494 = alloca i32, align 4
  %x495 = alloca i8, align 1
  %x496 = alloca i32, align 4
  %x497 = alloca i8, align 1
  %x498 = alloca i32, align 4
  %x499 = alloca i8, align 1
  %x500 = alloca i32, align 4
  %x501 = alloca i8, align 1
  %x502 = alloca i32, align 4
  %x503 = alloca i8, align 1
  %x504 = alloca i32, align 4
  %x505 = alloca i8, align 1
  %x506 = alloca i32, align 4
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
  %x550 = alloca i32, align 4
  %x551 = alloca i32, align 4
  %x552 = alloca i32, align 4
  %x553 = alloca i32, align 4
  %x554 = alloca i32, align 4
  %x555 = alloca i32, align 4
  %x556 = alloca i32, align 4
  %x557 = alloca i32, align 4
  %x558 = alloca i32, align 4
  %x559 = alloca i8, align 1
  %x560 = alloca i32, align 4
  %x561 = alloca i8, align 1
  %x562 = alloca i32, align 4
  %x563 = alloca i8, align 1
  %x564 = alloca i32, align 4
  %x565 = alloca i8, align 1
  %x566 = alloca i32, align 4
  %x567 = alloca i8, align 1
  %x568 = alloca i32, align 4
  %x569 = alloca i8, align 1
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
  %x600 = alloca i8, align 1
  %x601 = alloca i32, align 4
  %x602 = alloca i8, align 1
  %x603 = alloca i32, align 4
  %x604 = alloca i8, align 1
  %x605 = alloca i32, align 4
  %x606 = alloca i8, align 1
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
  %x618 = alloca i32, align 4
  %x619 = alloca i32, align 4
  %x620 = alloca i32, align 4
  %x621 = alloca i32, align 4
  %x622 = alloca i32, align 4
  %x623 = alloca i32, align 4
  %x624 = alloca i32, align 4
  %x625 = alloca i32, align 4
  %x626 = alloca i32, align 4
  %x627 = alloca i32, align 4
  %x628 = alloca i8, align 1
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
  %x644 = alloca i32, align 4
  %x645 = alloca i8, align 1
  %x646 = alloca i32, align 4
  %x647 = alloca i8, align 1
  %x648 = alloca i32, align 4
  %x649 = alloca i8, align 1
  %x650 = alloca i32, align 4
  %x651 = alloca i8, align 1
  %x652 = alloca i32, align 4
  %x653 = alloca i8, align 1
  %x654 = alloca i32, align 4
  %x655 = alloca i8, align 1
  %x656 = alloca i32, align 4
  %x657 = alloca i8, align 1
  %x658 = alloca i32, align 4
  %x659 = alloca i8, align 1
  %x660 = alloca i32, align 4
  %x661 = alloca i8, align 1
  %x662 = alloca i32, align 4
  %x663 = alloca i8, align 1
  %x664 = alloca i32, align 4
  %x665 = alloca i8, align 1
  %x666 = alloca i32, align 4
  %x667 = alloca i8, align 1
  %x668 = alloca i32, align 4
  %x669 = alloca i8, align 1
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
  %x686 = alloca i32, align 4
  %x687 = alloca i32, align 4
  %x688 = alloca i32, align 4
  %x689 = alloca i32, align 4
  %x690 = alloca i32, align 4
  %x691 = alloca i32, align 4
  %x692 = alloca i32, align 4
  %x693 = alloca i32, align 4
  %x694 = alloca i32, align 4
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
  %x718 = alloca i32, align 4
  %x719 = alloca i8, align 1
  %x720 = alloca i32, align 4
  %x721 = alloca i8, align 1
  %x722 = alloca i32, align 4
  %x723 = alloca i8, align 1
  %x724 = alloca i32, align 4
  %x725 = alloca i8, align 1
  %x726 = alloca i32, align 4
  %x727 = alloca i8, align 1
  %x728 = alloca i32, align 4
  %x729 = alloca i8, align 1
  %x730 = alloca i32, align 4
  %x731 = alloca i8, align 1
  %x732 = alloca i32, align 4
  %x733 = alloca i8, align 1
  %x734 = alloca i32, align 4
  %x735 = alloca i8, align 1
  %x736 = alloca i32, align 4
  %x737 = alloca i8, align 1
  %x738 = alloca i32, align 4
  %x739 = alloca i8, align 1
  %x740 = alloca i32, align 4
  %x741 = alloca i8, align 1
  %x742 = alloca i32, align 4
  %x743 = alloca i8, align 1
  %x744 = alloca i32, align 4
  %x745 = alloca i32, align 4
  %x746 = alloca i32, align 4
  %x747 = alloca i32, align 4
  %x748 = alloca i32, align 4
  %x749 = alloca i32, align 4
  %x750 = alloca i32, align 4
  %x751 = alloca i32, align 4
  %x752 = alloca i32, align 4
  %x753 = alloca i32, align 4
  %x754 = alloca i32, align 4
  %x755 = alloca i32, align 4
  %x756 = alloca i32, align 4
  %x757 = alloca i32, align 4
  %x758 = alloca i32, align 4
  %x759 = alloca i32, align 4
  %x760 = alloca i32, align 4
  %x761 = alloca i32, align 4
  %x762 = alloca i32, align 4
  %x763 = alloca i32, align 4
  %x764 = alloca i32, align 4
  %x765 = alloca i8, align 1
  %x766 = alloca i32, align 4
  %x767 = alloca i8, align 1
  %x768 = alloca i32, align 4
  %x769 = alloca i8, align 1
  %x770 = alloca i32, align 4
  %x771 = alloca i8, align 1
  %x772 = alloca i32, align 4
  %x773 = alloca i8, align 1
  %x774 = alloca i32, align 4
  %x775 = alloca i8, align 1
  %x776 = alloca i32, align 4
  %x777 = alloca i8, align 1
  %x778 = alloca i32, align 4
  %x779 = alloca i8, align 1
  %x780 = alloca i32, align 4
  %x781 = alloca i32, align 4
  %x782 = alloca i8, align 1
  %x783 = alloca i32, align 4
  %x784 = alloca i8, align 1
  %x785 = alloca i32, align 4
  %x786 = alloca i8, align 1
  %x787 = alloca i32, align 4
  %x788 = alloca i8, align 1
  %x789 = alloca i32, align 4
  %x790 = alloca i8, align 1
  %x791 = alloca i32, align 4
  %x792 = alloca i8, align 1
  %x793 = alloca i32, align 4
  %x794 = alloca i8, align 1
  %x795 = alloca i32, align 4
  %x796 = alloca i8, align 1
  %x797 = alloca i32, align 4
  %x798 = alloca i8, align 1
  %x799 = alloca i32, align 4
  %x800 = alloca i8, align 1
  %x801 = alloca i32, align 4
  %x802 = alloca i8, align 1
  %x803 = alloca i32, align 4
  %x804 = alloca i8, align 1
  %x805 = alloca i32, align 4
  %x806 = alloca i8, align 1
  %x807 = alloca i32, align 4
  %x808 = alloca i32, align 4
  %x809 = alloca i32, align 4
  %x810 = alloca i32, align 4
  %x811 = alloca i32, align 4
  %x812 = alloca i32, align 4
  %x813 = alloca i32, align 4
  %x814 = alloca i32, align 4
  %x815 = alloca i32, align 4
  %x816 = alloca i32, align 4
  %x817 = alloca i32, align 4
  %x818 = alloca i32, align 4
  %x819 = alloca i32, align 4
  %x820 = alloca i32, align 4
  %x821 = alloca i32, align 4
  %x822 = alloca i32, align 4
  %x823 = alloca i32, align 4
  %x824 = alloca i32, align 4
  %x825 = alloca i32, align 4
  %x826 = alloca i32, align 4
  %x827 = alloca i32, align 4
  %x828 = alloca i32, align 4
  %x829 = alloca i32, align 4
  %x830 = alloca i32, align 4
  %x831 = alloca i32, align 4
  %x832 = alloca i32, align 4
  %x833 = alloca i8, align 1
  %x834 = alloca i32, align 4
  %x835 = alloca i8, align 1
  %x836 = alloca i32, align 4
  %x837 = alloca i8, align 1
  %x838 = alloca i32, align 4
  %x839 = alloca i8, align 1
  %x840 = alloca i32, align 4
  %x841 = alloca i8, align 1
  %x842 = alloca i32, align 4
  %x843 = alloca i8, align 1
  %x844 = alloca i32, align 4
  %x845 = alloca i8, align 1
  %x846 = alloca i32, align 4
  %x847 = alloca i8, align 1
  %x848 = alloca i32, align 4
  %x849 = alloca i8, align 1
  %x850 = alloca i32, align 4
  %x851 = alloca i8, align 1
  %x852 = alloca i32, align 4
  %x853 = alloca i8, align 1
  %x854 = alloca i32, align 4
  %x855 = alloca i32, align 4
  %x856 = alloca i8, align 1
  %x857 = alloca i32, align 4
  %x858 = alloca i8, align 1
  %x859 = alloca i32, align 4
  %x860 = alloca i8, align 1
  %x861 = alloca i32, align 4
  %x862 = alloca i8, align 1
  %x863 = alloca i32, align 4
  %x864 = alloca i8, align 1
  %x865 = alloca i32, align 4
  %x866 = alloca i8, align 1
  %x867 = alloca i32, align 4
  %x868 = alloca i8, align 1
  %x869 = alloca i32, align 4
  %x870 = alloca i8, align 1
  %x871 = alloca i32, align 4
  %x872 = alloca i8, align 1
  %x873 = alloca i32, align 4
  %x874 = alloca i8, align 1
  %x875 = alloca i32, align 4
  %x876 = alloca i8, align 1
  %x877 = alloca i32, align 4
  %x878 = alloca i8, align 1
  %x879 = alloca i32, align 4
  %x880 = alloca i8, align 1
  %x881 = alloca i32, align 4
  %x882 = alloca i32, align 4
  %x883 = alloca i32, align 4
  %x884 = alloca i32, align 4
  %x885 = alloca i32, align 4
  %x886 = alloca i32, align 4
  %x887 = alloca i32, align 4
  %x888 = alloca i32, align 4
  %x889 = alloca i32, align 4
  %x890 = alloca i32, align 4
  %x891 = alloca i32, align 4
  %x892 = alloca i32, align 4
  %x893 = alloca i32, align 4
  %x894 = alloca i32, align 4
  %x895 = alloca i32, align 4
  %x896 = alloca i32, align 4
  %x897 = alloca i32, align 4
  %x898 = alloca i32, align 4
  %x899 = alloca i32, align 4
  %x900 = alloca i32, align 4
  %x901 = alloca i32, align 4
  %x902 = alloca i8, align 1
  %x903 = alloca i32, align 4
  %x904 = alloca i8, align 1
  %x905 = alloca i32, align 4
  %x906 = alloca i8, align 1
  %x907 = alloca i32, align 4
  %x908 = alloca i8, align 1
  %x909 = alloca i32, align 4
  %x910 = alloca i8, align 1
  %x911 = alloca i32, align 4
  %x912 = alloca i8, align 1
  %x913 = alloca i32, align 4
  %x914 = alloca i8, align 1
  %x915 = alloca i32, align 4
  %x916 = alloca i8, align 1
  %x917 = alloca i32, align 4
  %x918 = alloca i32, align 4
  %x919 = alloca i8, align 1
  %x920 = alloca i32, align 4
  %x921 = alloca i8, align 1
  %x922 = alloca i32, align 4
  %x923 = alloca i8, align 1
  %x924 = alloca i32, align 4
  %x925 = alloca i8, align 1
  %x926 = alloca i32, align 4
  %x927 = alloca i8, align 1
  %x928 = alloca i32, align 4
  %x929 = alloca i8, align 1
  %x930 = alloca i32, align 4
  %x931 = alloca i8, align 1
  %x932 = alloca i32, align 4
  %x933 = alloca i8, align 1
  %x934 = alloca i32, align 4
  %x935 = alloca i8, align 1
  %x936 = alloca i32, align 4
  %x937 = alloca i8, align 1
  %x938 = alloca i32, align 4
  %x939 = alloca i8, align 1
  %x940 = alloca i32, align 4
  %x941 = alloca i8, align 1
  %x942 = alloca i32, align 4
  %x943 = alloca i8, align 1
  %x944 = alloca i32, align 4
  %x945 = alloca i32, align 4
  %x946 = alloca i32, align 4
  %x947 = alloca i32, align 4
  %x948 = alloca i32, align 4
  %x949 = alloca i32, align 4
  %x950 = alloca i32, align 4
  %x951 = alloca i32, align 4
  %x952 = alloca i32, align 4
  %x953 = alloca i32, align 4
  %x954 = alloca i32, align 4
  %x955 = alloca i32, align 4
  %x956 = alloca i32, align 4
  %x957 = alloca i32, align 4
  %x958 = alloca i32, align 4
  %x959 = alloca i32, align 4
  %x960 = alloca i32, align 4
  %x961 = alloca i32, align 4
  %x962 = alloca i32, align 4
  %x963 = alloca i32, align 4
  %x964 = alloca i32, align 4
  %x965 = alloca i32, align 4
  %x966 = alloca i32, align 4
  %x967 = alloca i32, align 4
  %x968 = alloca i32, align 4
  %x969 = alloca i32, align 4
  %x970 = alloca i8, align 1
  %x971 = alloca i32, align 4
  %x972 = alloca i8, align 1
  %x973 = alloca i32, align 4
  %x974 = alloca i8, align 1
  %x975 = alloca i32, align 4
  %x976 = alloca i8, align 1
  %x977 = alloca i32, align 4
  %x978 = alloca i8, align 1
  %x979 = alloca i32, align 4
  %x980 = alloca i8, align 1
  %x981 = alloca i32, align 4
  %x982 = alloca i8, align 1
  %x983 = alloca i32, align 4
  %x984 = alloca i8, align 1
  %x985 = alloca i32, align 4
  %x986 = alloca i8, align 1
  %x987 = alloca i32, align 4
  %x988 = alloca i8, align 1
  %x989 = alloca i32, align 4
  %x990 = alloca i8, align 1
  %x991 = alloca i32, align 4
  %x992 = alloca i32, align 4
  %x993 = alloca i8, align 1
  %x994 = alloca i32, align 4
  %x995 = alloca i8, align 1
  %x996 = alloca i32, align 4
  %x997 = alloca i8, align 1
  %x998 = alloca i32, align 4
  %x999 = alloca i8, align 1
  %x1000 = alloca i32, align 4
  %x1001 = alloca i8, align 1
  %x1002 = alloca i32, align 4
  %x1003 = alloca i8, align 1
  %x1004 = alloca i32, align 4
  %x1005 = alloca i8, align 1
  %x1006 = alloca i32, align 4
  %x1007 = alloca i8, align 1
  %x1008 = alloca i32, align 4
  %x1009 = alloca i8, align 1
  %x1010 = alloca i32, align 4
  %x1011 = alloca i8, align 1
  %x1012 = alloca i32, align 4
  %x1013 = alloca i8, align 1
  %x1014 = alloca i32, align 4
  %x1015 = alloca i8, align 1
  %x1016 = alloca i32, align 4
  %x1017 = alloca i8, align 1
  %x1018 = alloca i32, align 4
  %x1019 = alloca i32, align 4
  %x1020 = alloca i32, align 4
  %x1021 = alloca i32, align 4
  %x1022 = alloca i32, align 4
  %x1023 = alloca i32, align 4
  %x1024 = alloca i32, align 4
  %x1025 = alloca i32, align 4
  %x1026 = alloca i32, align 4
  %x1027 = alloca i32, align 4
  %x1028 = alloca i32, align 4
  %x1029 = alloca i32, align 4
  %x1030 = alloca i32, align 4
  %x1031 = alloca i32, align 4
  %x1032 = alloca i32, align 4
  %x1033 = alloca i32, align 4
  %x1034 = alloca i32, align 4
  %x1035 = alloca i32, align 4
  %x1036 = alloca i32, align 4
  %x1037 = alloca i32, align 4
  %x1038 = alloca i32, align 4
  %x1039 = alloca i8, align 1
  %x1040 = alloca i32, align 4
  %x1041 = alloca i8, align 1
  %x1042 = alloca i32, align 4
  %x1043 = alloca i8, align 1
  %x1044 = alloca i32, align 4
  %x1045 = alloca i8, align 1
  %x1046 = alloca i32, align 4
  %x1047 = alloca i8, align 1
  %x1048 = alloca i32, align 4
  %x1049 = alloca i8, align 1
  %x1050 = alloca i32, align 4
  %x1051 = alloca i8, align 1
  %x1052 = alloca i32, align 4
  %x1053 = alloca i8, align 1
  %x1054 = alloca i32, align 4
  %x1055 = alloca i32, align 4
  %x1056 = alloca i8, align 1
  %x1057 = alloca i32, align 4
  %x1058 = alloca i8, align 1
  %x1059 = alloca i32, align 4
  %x1060 = alloca i8, align 1
  %x1061 = alloca i32, align 4
  %x1062 = alloca i8, align 1
  %x1063 = alloca i32, align 4
  %x1064 = alloca i8, align 1
  %x1065 = alloca i32, align 4
  %x1066 = alloca i8, align 1
  %x1067 = alloca i32, align 4
  %x1068 = alloca i8, align 1
  %x1069 = alloca i32, align 4
  %x1070 = alloca i8, align 1
  %x1071 = alloca i32, align 4
  %x1072 = alloca i8, align 1
  %x1073 = alloca i32, align 4
  %x1074 = alloca i8, align 1
  %x1075 = alloca i32, align 4
  %x1076 = alloca i8, align 1
  %x1077 = alloca i32, align 4
  %x1078 = alloca i8, align 1
  %x1079 = alloca i32, align 4
  %x1080 = alloca i8, align 1
  %x1081 = alloca i32, align 4
  %x1082 = alloca i32, align 4
  %x1083 = alloca i32, align 4
  %x1084 = alloca i32, align 4
  %x1085 = alloca i32, align 4
  %x1086 = alloca i32, align 4
  %x1087 = alloca i32, align 4
  %x1088 = alloca i32, align 4
  %x1089 = alloca i32, align 4
  %x1090 = alloca i32, align 4
  %x1091 = alloca i32, align 4
  %x1092 = alloca i32, align 4
  %x1093 = alloca i32, align 4
  %x1094 = alloca i32, align 4
  %x1095 = alloca i32, align 4
  %x1096 = alloca i32, align 4
  %x1097 = alloca i32, align 4
  %x1098 = alloca i32, align 4
  %x1099 = alloca i32, align 4
  %x1100 = alloca i32, align 4
  %x1101 = alloca i32, align 4
  %x1102 = alloca i32, align 4
  %x1103 = alloca i32, align 4
  %x1104 = alloca i32, align 4
  %x1105 = alloca i32, align 4
  %x1106 = alloca i32, align 4
  %x1107 = alloca i8, align 1
  %x1108 = alloca i32, align 4
  %x1109 = alloca i8, align 1
  %x1110 = alloca i32, align 4
  %x1111 = alloca i8, align 1
  %x1112 = alloca i32, align 4
  %x1113 = alloca i8, align 1
  %x1114 = alloca i32, align 4
  %x1115 = alloca i8, align 1
  %x1116 = alloca i32, align 4
  %x1117 = alloca i8, align 1
  %x1118 = alloca i32, align 4
  %x1119 = alloca i8, align 1
  %x1120 = alloca i32, align 4
  %x1121 = alloca i8, align 1
  %x1122 = alloca i32, align 4
  %x1123 = alloca i8, align 1
  %x1124 = alloca i32, align 4
  %x1125 = alloca i8, align 1
  %x1126 = alloca i32, align 4
  %x1127 = alloca i8, align 1
  %x1128 = alloca i32, align 4
  %x1129 = alloca i32, align 4
  %x1130 = alloca i8, align 1
  %x1131 = alloca i32, align 4
  %x1132 = alloca i8, align 1
  %x1133 = alloca i32, align 4
  %x1134 = alloca i8, align 1
  %x1135 = alloca i32, align 4
  %x1136 = alloca i8, align 1
  %x1137 = alloca i32, align 4
  %x1138 = alloca i8, align 1
  %x1139 = alloca i32, align 4
  %x1140 = alloca i8, align 1
  %x1141 = alloca i32, align 4
  %x1142 = alloca i8, align 1
  %x1143 = alloca i32, align 4
  %x1144 = alloca i8, align 1
  %x1145 = alloca i32, align 4
  %x1146 = alloca i8, align 1
  %x1147 = alloca i32, align 4
  %x1148 = alloca i8, align 1
  %x1149 = alloca i32, align 4
  %x1150 = alloca i8, align 1
  %x1151 = alloca i32, align 4
  %x1152 = alloca i8, align 1
  %x1153 = alloca i32, align 4
  %x1154 = alloca i8, align 1
  %x1155 = alloca i32, align 4
  %x1156 = alloca i32, align 4
  %x1157 = alloca i32, align 4
  %x1158 = alloca i32, align 4
  %x1159 = alloca i32, align 4
  %x1160 = alloca i32, align 4
  %x1161 = alloca i32, align 4
  %x1162 = alloca i32, align 4
  %x1163 = alloca i32, align 4
  %x1164 = alloca i32, align 4
  %x1165 = alloca i32, align 4
  %x1166 = alloca i32, align 4
  %x1167 = alloca i32, align 4
  %x1168 = alloca i32, align 4
  %x1169 = alloca i32, align 4
  %x1170 = alloca i32, align 4
  %x1171 = alloca i32, align 4
  %x1172 = alloca i32, align 4
  %x1173 = alloca i32, align 4
  %x1174 = alloca i32, align 4
  %x1175 = alloca i32, align 4
  %x1176 = alloca i8, align 1
  %x1177 = alloca i32, align 4
  %x1178 = alloca i8, align 1
  %x1179 = alloca i32, align 4
  %x1180 = alloca i8, align 1
  %x1181 = alloca i32, align 4
  %x1182 = alloca i8, align 1
  %x1183 = alloca i32, align 4
  %x1184 = alloca i8, align 1
  %x1185 = alloca i32, align 4
  %x1186 = alloca i8, align 1
  %x1187 = alloca i32, align 4
  %x1188 = alloca i8, align 1
  %x1189 = alloca i32, align 4
  %x1190 = alloca i8, align 1
  %x1191 = alloca i32, align 4
  %x1192 = alloca i32, align 4
  %x1193 = alloca i8, align 1
  %x1194 = alloca i32, align 4
  %x1195 = alloca i8, align 1
  %x1196 = alloca i32, align 4
  %x1197 = alloca i8, align 1
  %x1198 = alloca i32, align 4
  %x1199 = alloca i8, align 1
  %x1200 = alloca i32, align 4
  %x1201 = alloca i8, align 1
  %x1202 = alloca i32, align 4
  %x1203 = alloca i8, align 1
  %x1204 = alloca i32, align 4
  %x1205 = alloca i8, align 1
  %x1206 = alloca i32, align 4
  %x1207 = alloca i8, align 1
  %x1208 = alloca i32, align 4
  %x1209 = alloca i8, align 1
  %x1210 = alloca i32, align 4
  %x1211 = alloca i8, align 1
  %x1212 = alloca i32, align 4
  %x1213 = alloca i8, align 1
  %x1214 = alloca i32, align 4
  %x1215 = alloca i8, align 1
  %x1216 = alloca i32, align 4
  %x1217 = alloca i8, align 1
  %x1218 = alloca i32, align 4
  %x1219 = alloca i32, align 4
  %x1220 = alloca i32, align 4
  %x1221 = alloca i32, align 4
  %x1222 = alloca i32, align 4
  %x1223 = alloca i32, align 4
  %x1224 = alloca i32, align 4
  %x1225 = alloca i32, align 4
  %x1226 = alloca i32, align 4
  %x1227 = alloca i32, align 4
  %x1228 = alloca i32, align 4
  %x1229 = alloca i32, align 4
  %x1230 = alloca i32, align 4
  %x1231 = alloca i32, align 4
  %x1232 = alloca i32, align 4
  %x1233 = alloca i32, align 4
  %x1234 = alloca i32, align 4
  %x1235 = alloca i32, align 4
  %x1236 = alloca i32, align 4
  %x1237 = alloca i32, align 4
  %x1238 = alloca i32, align 4
  %x1239 = alloca i32, align 4
  %x1240 = alloca i32, align 4
  %x1241 = alloca i32, align 4
  %x1242 = alloca i32, align 4
  %x1243 = alloca i32, align 4
  %x1244 = alloca i8, align 1
  %x1245 = alloca i32, align 4
  %x1246 = alloca i8, align 1
  %x1247 = alloca i32, align 4
  %x1248 = alloca i8, align 1
  %x1249 = alloca i32, align 4
  %x1250 = alloca i8, align 1
  %x1251 = alloca i32, align 4
  %x1252 = alloca i8, align 1
  %x1253 = alloca i32, align 4
  %x1254 = alloca i8, align 1
  %x1255 = alloca i32, align 4
  %x1256 = alloca i8, align 1
  %x1257 = alloca i32, align 4
  %x1258 = alloca i8, align 1
  %x1259 = alloca i32, align 4
  %x1260 = alloca i8, align 1
  %x1261 = alloca i32, align 4
  %x1262 = alloca i8, align 1
  %x1263 = alloca i32, align 4
  %x1264 = alloca i8, align 1
  %x1265 = alloca i32, align 4
  %x1266 = alloca i32, align 4
  %x1267 = alloca i8, align 1
  %x1268 = alloca i32, align 4
  %x1269 = alloca i8, align 1
  %x1270 = alloca i32, align 4
  %x1271 = alloca i8, align 1
  %x1272 = alloca i32, align 4
  %x1273 = alloca i8, align 1
  %x1274 = alloca i32, align 4
  %x1275 = alloca i8, align 1
  %x1276 = alloca i32, align 4
  %x1277 = alloca i8, align 1
  %x1278 = alloca i32, align 4
  %x1279 = alloca i8, align 1
  %x1280 = alloca i32, align 4
  %x1281 = alloca i8, align 1
  %x1282 = alloca i32, align 4
  %x1283 = alloca i8, align 1
  %x1284 = alloca i32, align 4
  %x1285 = alloca i8, align 1
  %x1286 = alloca i32, align 4
  %x1287 = alloca i8, align 1
  %x1288 = alloca i32, align 4
  %x1289 = alloca i8, align 1
  %x1290 = alloca i32, align 4
  %x1291 = alloca i8, align 1
  %x1292 = alloca i32, align 4
  %x1293 = alloca i32, align 4
  %x1294 = alloca i32, align 4
  %x1295 = alloca i32, align 4
  %x1296 = alloca i32, align 4
  %x1297 = alloca i32, align 4
  %x1298 = alloca i32, align 4
  %x1299 = alloca i32, align 4
  %x1300 = alloca i32, align 4
  %x1301 = alloca i32, align 4
  %x1302 = alloca i32, align 4
  %x1303 = alloca i32, align 4
  %x1304 = alloca i32, align 4
  %x1305 = alloca i32, align 4
  %x1306 = alloca i32, align 4
  %x1307 = alloca i32, align 4
  %x1308 = alloca i32, align 4
  %x1309 = alloca i32, align 4
  %x1310 = alloca i32, align 4
  %x1311 = alloca i32, align 4
  %x1312 = alloca i32, align 4
  %x1313 = alloca i8, align 1
  %x1314 = alloca i32, align 4
  %x1315 = alloca i8, align 1
  %x1316 = alloca i32, align 4
  %x1317 = alloca i8, align 1
  %x1318 = alloca i32, align 4
  %x1319 = alloca i8, align 1
  %x1320 = alloca i32, align 4
  %x1321 = alloca i8, align 1
  %x1322 = alloca i32, align 4
  %x1323 = alloca i8, align 1
  %x1324 = alloca i32, align 4
  %x1325 = alloca i8, align 1
  %x1326 = alloca i32, align 4
  %x1327 = alloca i8, align 1
  %x1328 = alloca i32, align 4
  %x1329 = alloca i32, align 4
  %x1330 = alloca i8, align 1
  %x1331 = alloca i32, align 4
  %x1332 = alloca i8, align 1
  %x1333 = alloca i32, align 4
  %x1334 = alloca i8, align 1
  %x1335 = alloca i32, align 4
  %x1336 = alloca i8, align 1
  %x1337 = alloca i32, align 4
  %x1338 = alloca i8, align 1
  %x1339 = alloca i32, align 4
  %x1340 = alloca i8, align 1
  %x1341 = alloca i32, align 4
  %x1342 = alloca i8, align 1
  %x1343 = alloca i32, align 4
  %x1344 = alloca i8, align 1
  %x1345 = alloca i32, align 4
  %x1346 = alloca i8, align 1
  %x1347 = alloca i32, align 4
  %x1348 = alloca i8, align 1
  %x1349 = alloca i32, align 4
  %x1350 = alloca i8, align 1
  %x1351 = alloca i32, align 4
  %x1352 = alloca i8, align 1
  %x1353 = alloca i32, align 4
  %x1354 = alloca i8, align 1
  %x1355 = alloca i32, align 4
  %x1356 = alloca i32, align 4
  %x1357 = alloca i32, align 4
  %x1358 = alloca i32, align 4
  %x1359 = alloca i32, align 4
  %x1360 = alloca i32, align 4
  %x1361 = alloca i32, align 4
  %x1362 = alloca i32, align 4
  %x1363 = alloca i32, align 4
  %x1364 = alloca i32, align 4
  %x1365 = alloca i32, align 4
  %x1366 = alloca i32, align 4
  %x1367 = alloca i32, align 4
  %x1368 = alloca i32, align 4
  %x1369 = alloca i32, align 4
  %x1370 = alloca i32, align 4
  %x1371 = alloca i32, align 4
  %x1372 = alloca i32, align 4
  %x1373 = alloca i32, align 4
  %x1374 = alloca i32, align 4
  %x1375 = alloca i32, align 4
  %x1376 = alloca i32, align 4
  %x1377 = alloca i32, align 4
  %x1378 = alloca i32, align 4
  %x1379 = alloca i32, align 4
  %x1380 = alloca i32, align 4
  %x1381 = alloca i8, align 1
  %x1382 = alloca i32, align 4
  %x1383 = alloca i8, align 1
  %x1384 = alloca i32, align 4
  %x1385 = alloca i8, align 1
  %x1386 = alloca i32, align 4
  %x1387 = alloca i8, align 1
  %x1388 = alloca i32, align 4
  %x1389 = alloca i8, align 1
  %x1390 = alloca i32, align 4
  %x1391 = alloca i8, align 1
  %x1392 = alloca i32, align 4
  %x1393 = alloca i8, align 1
  %x1394 = alloca i32, align 4
  %x1395 = alloca i8, align 1
  %x1396 = alloca i32, align 4
  %x1397 = alloca i8, align 1
  %x1398 = alloca i32, align 4
  %x1399 = alloca i8, align 1
  %x1400 = alloca i32, align 4
  %x1401 = alloca i8, align 1
  %x1402 = alloca i32, align 4
  %x1403 = alloca i32, align 4
  %x1404 = alloca i8, align 1
  %x1405 = alloca i32, align 4
  %x1406 = alloca i8, align 1
  %x1407 = alloca i32, align 4
  %x1408 = alloca i8, align 1
  %x1409 = alloca i32, align 4
  %x1410 = alloca i8, align 1
  %x1411 = alloca i32, align 4
  %x1412 = alloca i8, align 1
  %x1413 = alloca i32, align 4
  %x1414 = alloca i8, align 1
  %x1415 = alloca i32, align 4
  %x1416 = alloca i8, align 1
  %x1417 = alloca i32, align 4
  %x1418 = alloca i8, align 1
  %x1419 = alloca i32, align 4
  %x1420 = alloca i8, align 1
  %x1421 = alloca i32, align 4
  %x1422 = alloca i8, align 1
  %x1423 = alloca i32, align 4
  %x1424 = alloca i8, align 1
  %x1425 = alloca i32, align 4
  %x1426 = alloca i8, align 1
  %x1427 = alloca i32, align 4
  %x1428 = alloca i8, align 1
  %x1429 = alloca i32, align 4
  %x1430 = alloca i32, align 4
  %x1431 = alloca i32, align 4
  %x1432 = alloca i32, align 4
  %x1433 = alloca i32, align 4
  %x1434 = alloca i32, align 4
  %x1435 = alloca i32, align 4
  %x1436 = alloca i32, align 4
  %x1437 = alloca i32, align 4
  %x1438 = alloca i32, align 4
  %x1439 = alloca i32, align 4
  %x1440 = alloca i32, align 4
  %x1441 = alloca i32, align 4
  %x1442 = alloca i32, align 4
  %x1443 = alloca i32, align 4
  %x1444 = alloca i32, align 4
  %x1445 = alloca i32, align 4
  %x1446 = alloca i32, align 4
  %x1447 = alloca i32, align 4
  %x1448 = alloca i32, align 4
  %x1449 = alloca i32, align 4
  %x1450 = alloca i8, align 1
  %x1451 = alloca i32, align 4
  %x1452 = alloca i8, align 1
  %x1453 = alloca i32, align 4
  %x1454 = alloca i8, align 1
  %x1455 = alloca i32, align 4
  %x1456 = alloca i8, align 1
  %x1457 = alloca i32, align 4
  %x1458 = alloca i8, align 1
  %x1459 = alloca i32, align 4
  %x1460 = alloca i8, align 1
  %x1461 = alloca i32, align 4
  %x1462 = alloca i8, align 1
  %x1463 = alloca i32, align 4
  %x1464 = alloca i8, align 1
  %x1465 = alloca i32, align 4
  %x1466 = alloca i32, align 4
  %x1467 = alloca i8, align 1
  %x1468 = alloca i32, align 4
  %x1469 = alloca i8, align 1
  %x1470 = alloca i32, align 4
  %x1471 = alloca i8, align 1
  %x1472 = alloca i32, align 4
  %x1473 = alloca i8, align 1
  %x1474 = alloca i32, align 4
  %x1475 = alloca i8, align 1
  %x1476 = alloca i32, align 4
  %x1477 = alloca i8, align 1
  %x1478 = alloca i32, align 4
  %x1479 = alloca i8, align 1
  %x1480 = alloca i32, align 4
  %x1481 = alloca i8, align 1
  %x1482 = alloca i32, align 4
  %x1483 = alloca i8, align 1
  %x1484 = alloca i32, align 4
  %x1485 = alloca i8, align 1
  %x1486 = alloca i32, align 4
  %x1487 = alloca i8, align 1
  %x1488 = alloca i32, align 4
  %x1489 = alloca i8, align 1
  %x1490 = alloca i32, align 4
  %x1491 = alloca i8, align 1
  %x1492 = alloca i32, align 4
  %x1493 = alloca i32, align 4
  %x1494 = alloca i32, align 4
  %x1495 = alloca i32, align 4
  %x1496 = alloca i32, align 4
  %x1497 = alloca i32, align 4
  %x1498 = alloca i32, align 4
  %x1499 = alloca i32, align 4
  %x1500 = alloca i32, align 4
  %x1501 = alloca i32, align 4
  %x1502 = alloca i32, align 4
  %x1503 = alloca i32, align 4
  %x1504 = alloca i32, align 4
  %x1505 = alloca i32, align 4
  %x1506 = alloca i32, align 4
  %x1507 = alloca i32, align 4
  %x1508 = alloca i32, align 4
  %x1509 = alloca i32, align 4
  %x1510 = alloca i32, align 4
  %x1511 = alloca i32, align 4
  %x1512 = alloca i32, align 4
  %x1513 = alloca i32, align 4
  %x1514 = alloca i32, align 4
  %x1515 = alloca i32, align 4
  %x1516 = alloca i32, align 4
  %x1517 = alloca i32, align 4
  %x1518 = alloca i8, align 1
  %x1519 = alloca i32, align 4
  %x1520 = alloca i8, align 1
  %x1521 = alloca i32, align 4
  %x1522 = alloca i8, align 1
  %x1523 = alloca i32, align 4
  %x1524 = alloca i8, align 1
  %x1525 = alloca i32, align 4
  %x1526 = alloca i8, align 1
  %x1527 = alloca i32, align 4
  %x1528 = alloca i8, align 1
  %x1529 = alloca i32, align 4
  %x1530 = alloca i8, align 1
  %x1531 = alloca i32, align 4
  %x1532 = alloca i8, align 1
  %x1533 = alloca i32, align 4
  %x1534 = alloca i8, align 1
  %x1535 = alloca i32, align 4
  %x1536 = alloca i8, align 1
  %x1537 = alloca i32, align 4
  %x1538 = alloca i8, align 1
  %x1539 = alloca i32, align 4
  %x1540 = alloca i32, align 4
  %x1541 = alloca i8, align 1
  %x1542 = alloca i32, align 4
  %x1543 = alloca i8, align 1
  %x1544 = alloca i32, align 4
  %x1545 = alloca i8, align 1
  %x1546 = alloca i32, align 4
  %x1547 = alloca i8, align 1
  %x1548 = alloca i32, align 4
  %x1549 = alloca i8, align 1
  %x1550 = alloca i32, align 4
  %x1551 = alloca i8, align 1
  %x1552 = alloca i32, align 4
  %x1553 = alloca i8, align 1
  %x1554 = alloca i32, align 4
  %x1555 = alloca i8, align 1
  %x1556 = alloca i32, align 4
  %x1557 = alloca i8, align 1
  %x1558 = alloca i32, align 4
  %x1559 = alloca i8, align 1
  %x1560 = alloca i32, align 4
  %x1561 = alloca i8, align 1
  %x1562 = alloca i32, align 4
  %x1563 = alloca i8, align 1
  %x1564 = alloca i32, align 4
  %x1565 = alloca i8, align 1
  %x1566 = alloca i32, align 4
  %x1567 = alloca i32, align 4
  %x1568 = alloca i32, align 4
  %x1569 = alloca i32, align 4
  %x1570 = alloca i32, align 4
  %x1571 = alloca i32, align 4
  %x1572 = alloca i32, align 4
  %x1573 = alloca i32, align 4
  %x1574 = alloca i32, align 4
  %x1575 = alloca i32, align 4
  %x1576 = alloca i32, align 4
  %x1577 = alloca i32, align 4
  %x1578 = alloca i32, align 4
  %x1579 = alloca i32, align 4
  %x1580 = alloca i32, align 4
  %x1581 = alloca i32, align 4
  %x1582 = alloca i32, align 4
  %x1583 = alloca i32, align 4
  %x1584 = alloca i32, align 4
  %x1585 = alloca i32, align 4
  %x1586 = alloca i32, align 4
  %x1587 = alloca i8, align 1
  %x1588 = alloca i32, align 4
  %x1589 = alloca i8, align 1
  %x1590 = alloca i32, align 4
  %x1591 = alloca i8, align 1
  %x1592 = alloca i32, align 4
  %x1593 = alloca i8, align 1
  %x1594 = alloca i32, align 4
  %x1595 = alloca i8, align 1
  %x1596 = alloca i32, align 4
  %x1597 = alloca i8, align 1
  %x1598 = alloca i32, align 4
  %x1599 = alloca i8, align 1
  %x1600 = alloca i32, align 4
  %x1601 = alloca i8, align 1
  %x1602 = alloca i32, align 4
  %x1603 = alloca i32, align 4
  %x1604 = alloca i8, align 1
  %x1605 = alloca i32, align 4
  %x1606 = alloca i8, align 1
  %x1607 = alloca i32, align 4
  %x1608 = alloca i8, align 1
  %x1609 = alloca i32, align 4
  %x1610 = alloca i8, align 1
  %x1611 = alloca i32, align 4
  %x1612 = alloca i8, align 1
  %x1613 = alloca i32, align 4
  %x1614 = alloca i8, align 1
  %x1615 = alloca i32, align 4
  %x1616 = alloca i8, align 1
  %x1617 = alloca i32, align 4
  %x1618 = alloca i8, align 1
  %x1619 = alloca i32, align 4
  %x1620 = alloca i8, align 1
  %x1621 = alloca i32, align 4
  %x1622 = alloca i8, align 1
  %x1623 = alloca i32, align 4
  %x1624 = alloca i8, align 1
  %x1625 = alloca i32, align 4
  %x1626 = alloca i8, align 1
  %x1627 = alloca i32, align 4
  %x1628 = alloca i8, align 1
  %x1629 = alloca i32, align 4
  %x1630 = alloca i32, align 4
  %x1631 = alloca i8, align 1
  %x1632 = alloca i32, align 4
  %x1633 = alloca i8, align 1
  %x1634 = alloca i32, align 4
  %x1635 = alloca i8, align 1
  %x1636 = alloca i32, align 4
  %x1637 = alloca i8, align 1
  %x1638 = alloca i32, align 4
  %x1639 = alloca i8, align 1
  %x1640 = alloca i32, align 4
  %x1641 = alloca i8, align 1
  %x1642 = alloca i32, align 4
  %x1643 = alloca i8, align 1
  %x1644 = alloca i32, align 4
  %x1645 = alloca i8, align 1
  %x1646 = alloca i32, align 4
  %x1647 = alloca i8, align 1
  %x1648 = alloca i32, align 4
  %x1649 = alloca i8, align 1
  %x1650 = alloca i32, align 4
  %x1651 = alloca i8, align 1
  %x1652 = alloca i32, align 4
  %x1653 = alloca i8, align 1
  %x1654 = alloca i32, align 4
  %x1655 = alloca i8, align 1
  %x1656 = alloca i32, align 4
  %x1657 = alloca i32, align 4
  %x1658 = alloca i32, align 4
  %x1659 = alloca i32, align 4
  %x1660 = alloca i32, align 4
  %x1661 = alloca i32, align 4
  %x1662 = alloca i32, align 4
  %x1663 = alloca i32, align 4
  %x1664 = alloca i32, align 4
  %x1665 = alloca i32, align 4
  %x1666 = alloca i32, align 4
  %x1667 = alloca i32, align 4
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
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 8
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 9
  %17 = load i32, ptr %arrayidx8, align 4
  store i32 %17, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 10
  %19 = load i32, ptr %arrayidx9, align 4
  store i32 %19, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 11
  %21 = load i32, ptr %arrayidx10, align 4
  store i32 %21, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx11, align 4
  store i32 %23, ptr %x12, align 4
  %24 = load i32, ptr %x12, align 4
  %25 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %25, i64 11
  %26 = load i32, ptr %arrayidx12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %24, i32 noundef %26)
  %27 = load i32, ptr %x12, align 4
  %28 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %28, i64 10
  %29 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %27, i32 noundef %29)
  %30 = load i32, ptr %x12, align 4
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %31, i64 9
  %32 = load i32, ptr %arrayidx14, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %30, i32 noundef %32)
  %33 = load i32, ptr %x12, align 4
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %34, i64 8
  %35 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %33, i32 noundef %35)
  %36 = load i32, ptr %x12, align 4
  %37 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx16, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %36, i32 noundef %38)
  %39 = load i32, ptr %x12, align 4
  %40 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %40, i64 6
  %41 = load i32, ptr %arrayidx17, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %39, i32 noundef %41)
  %42 = load i32, ptr %x12, align 4
  %43 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %43, i64 5
  %44 = load i32, ptr %arrayidx18, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x25, ptr noundef %x26, i32 noundef %42, i32 noundef %44)
  %45 = load i32, ptr %x12, align 4
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %46, i64 4
  %47 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x27, ptr noundef %x28, i32 noundef %45, i32 noundef %47)
  %48 = load i32, ptr %x12, align 4
  %49 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %49, i64 3
  %50 = load i32, ptr %arrayidx20, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x29, ptr noundef %x30, i32 noundef %48, i32 noundef %50)
  %51 = load i32, ptr %x12, align 4
  %52 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %52, i64 2
  %53 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x31, ptr noundef %x32, i32 noundef %51, i32 noundef %53)
  %54 = load i32, ptr %x12, align 4
  %55 = load ptr, ptr %arg2.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %55, i64 1
  %56 = load i32, ptr %arrayidx22, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x33, ptr noundef %x34, i32 noundef %54, i32 noundef %56)
  %57 = load i32, ptr %x12, align 4
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %58, i64 0
  %59 = load i32, ptr %arrayidx23, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %57, i32 noundef %59)
  %60 = load i32, ptr %x36, align 4
  %61 = load i32, ptr %x33, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext 0, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x38, align 1
  %63 = load i32, ptr %x34, align 4
  %64 = load i32, ptr %x31, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x40, align 1
  %66 = load i32, ptr %x32, align 4
  %67 = load i32, ptr %x29, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x42, align 1
  %69 = load i32, ptr %x30, align 4
  %70 = load i32, ptr %x27, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x44, align 1
  %72 = load i32, ptr %x28, align 4
  %73 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %73)
  %74 = load i8, ptr %x46, align 1
  %75 = load i32, ptr %x26, align 4
  %76 = load i32, ptr %x23, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %74, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x48, align 1
  %78 = load i32, ptr %x24, align 4
  %79 = load i32, ptr %x21, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x50, align 1
  %81 = load i32, ptr %x22, align 4
  %82 = load i32, ptr %x19, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x52, align 1
  %84 = load i32, ptr %x20, align 4
  %85 = load i32, ptr %x17, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x54, align 1
  %87 = load i32, ptr %x18, align 4
  %88 = load i32, ptr %x15, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x56, align 1
  %90 = load i32, ptr %x16, align 4
  %91 = load i32, ptr %x13, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x58, align 1
  %conv = zext i8 %92 to i32
  %93 = load i32, ptr %x14, align 4
  %add = add i32 %conv, %93
  store i32 %add, ptr %x59, align 4
  %94 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x60, ptr noundef %x61, i32 noundef %94, i32 noundef -1)
  %95 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x62, ptr noundef %x63, i32 noundef %95, i32 noundef -1)
  %96 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x64, ptr noundef %x65, i32 noundef %96, i32 noundef -1)
  %97 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %97, i32 noundef -1)
  %98 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %98, i32 noundef -1)
  %99 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %99, i32 noundef -1)
  %100 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %100, i32 noundef -1)
  %101 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %101, i32 noundef -2)
  %102 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x76, ptr noundef %x77, i32 noundef %102, i32 noundef -1)
  %103 = load i32, ptr %x35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x78, ptr noundef %x79, i32 noundef %103, i32 noundef -1)
  %104 = load i32, ptr %x77, align 4
  %105 = load i32, ptr %x74, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i32 noundef %104, i32 noundef %105)
  %106 = load i8, ptr %x81, align 1
  %107 = load i32, ptr %x75, align 4
  %108 = load i32, ptr %x72, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %106, i32 noundef %107, i32 noundef %108)
  %109 = load i8, ptr %x83, align 1
  %110 = load i32, ptr %x73, align 4
  %111 = load i32, ptr %x70, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %109, i32 noundef %110, i32 noundef %111)
  %112 = load i8, ptr %x85, align 1
  %113 = load i32, ptr %x71, align 4
  %114 = load i32, ptr %x68, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %112, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x87, align 1
  %116 = load i32, ptr %x69, align 4
  %117 = load i32, ptr %x66, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %115, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x89, align 1
  %119 = load i32, ptr %x67, align 4
  %120 = load i32, ptr %x64, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %118, i32 noundef %119, i32 noundef %120)
  %121 = load i8, ptr %x91, align 1
  %122 = load i32, ptr %x65, align 4
  %123 = load i32, ptr %x62, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %121, i32 noundef %122, i32 noundef %123)
  %124 = load i8, ptr %x93, align 1
  %125 = load i32, ptr %x63, align 4
  %126 = load i32, ptr %x60, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %124, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x95, align 1
  %conv24 = zext i8 %127 to i32
  %128 = load i32, ptr %x61, align 4
  %add25 = add i32 %conv24, %128
  store i32 %add25, ptr %x96, align 4
  %129 = load i32, ptr %x35, align 4
  %130 = load i32, ptr %x78, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext 0, i32 noundef %129, i32 noundef %130)
  %131 = load i8, ptr %x98, align 1
  %132 = load i32, ptr %x37, align 4
  %133 = load i32, ptr %x79, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %131, i32 noundef %132, i32 noundef %133)
  %134 = load i8, ptr %x100, align 1
  %135 = load i32, ptr %x39, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %134, i32 noundef %135, i32 noundef 0)
  %136 = load i8, ptr %x102, align 1
  %137 = load i32, ptr %x41, align 4
  %138 = load i32, ptr %x76, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %136, i32 noundef %137, i32 noundef %138)
  %139 = load i8, ptr %x104, align 1
  %140 = load i32, ptr %x43, align 4
  %141 = load i32, ptr %x80, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %139, i32 noundef %140, i32 noundef %141)
  %142 = load i8, ptr %x106, align 1
  %143 = load i32, ptr %x45, align 4
  %144 = load i32, ptr %x82, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %142, i32 noundef %143, i32 noundef %144)
  %145 = load i8, ptr %x108, align 1
  %146 = load i32, ptr %x47, align 4
  %147 = load i32, ptr %x84, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %145, i32 noundef %146, i32 noundef %147)
  %148 = load i8, ptr %x110, align 1
  %149 = load i32, ptr %x49, align 4
  %150 = load i32, ptr %x86, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %148, i32 noundef %149, i32 noundef %150)
  %151 = load i8, ptr %x112, align 1
  %152 = load i32, ptr %x51, align 4
  %153 = load i32, ptr %x88, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %151, i32 noundef %152, i32 noundef %153)
  %154 = load i8, ptr %x114, align 1
  %155 = load i32, ptr %x53, align 4
  %156 = load i32, ptr %x90, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %154, i32 noundef %155, i32 noundef %156)
  %157 = load i8, ptr %x116, align 1
  %158 = load i32, ptr %x55, align 4
  %159 = load i32, ptr %x92, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %157, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x118, align 1
  %161 = load i32, ptr %x57, align 4
  %162 = load i32, ptr %x94, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x120, align 1
  %164 = load i32, ptr %x59, align 4
  %165 = load i32, ptr %x96, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i32, ptr %x1, align 4
  %167 = load ptr, ptr %arg2.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %167, i64 11
  %168 = load i32, ptr %arrayidx26, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x123, ptr noundef %x124, i32 noundef %166, i32 noundef %168)
  %169 = load i32, ptr %x1, align 4
  %170 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %170, i64 10
  %171 = load i32, ptr %arrayidx27, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x125, ptr noundef %x126, i32 noundef %169, i32 noundef %171)
  %172 = load i32, ptr %x1, align 4
  %173 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %173, i64 9
  %174 = load i32, ptr %arrayidx28, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x127, ptr noundef %x128, i32 noundef %172, i32 noundef %174)
  %175 = load i32, ptr %x1, align 4
  %176 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %176, i64 8
  %177 = load i32, ptr %arrayidx29, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x129, ptr noundef %x130, i32 noundef %175, i32 noundef %177)
  %178 = load i32, ptr %x1, align 4
  %179 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %179, i64 7
  %180 = load i32, ptr %arrayidx30, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x131, ptr noundef %x132, i32 noundef %178, i32 noundef %180)
  %181 = load i32, ptr %x1, align 4
  %182 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %182, i64 6
  %183 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x133, ptr noundef %x134, i32 noundef %181, i32 noundef %183)
  %184 = load i32, ptr %x1, align 4
  %185 = load ptr, ptr %arg2.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %185, i64 5
  %186 = load i32, ptr %arrayidx32, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %184, i32 noundef %186)
  %187 = load i32, ptr %x1, align 4
  %188 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %188, i64 4
  %189 = load i32, ptr %arrayidx33, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %187, i32 noundef %189)
  %190 = load i32, ptr %x1, align 4
  %191 = load ptr, ptr %arg2.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %191, i64 3
  %192 = load i32, ptr %arrayidx34, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %190, i32 noundef %192)
  %193 = load i32, ptr %x1, align 4
  %194 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %194, i64 2
  %195 = load i32, ptr %arrayidx35, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %193, i32 noundef %195)
  %196 = load i32, ptr %x1, align 4
  %197 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %197, i64 1
  %198 = load i32, ptr %arrayidx36, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %196, i32 noundef %198)
  %199 = load i32, ptr %x1, align 4
  %200 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %200, i64 0
  %201 = load i32, ptr %arrayidx37, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %199, i32 noundef %201)
  %202 = load i32, ptr %x146, align 4
  %203 = load i32, ptr %x143, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext 0, i32 noundef %202, i32 noundef %203)
  %204 = load i8, ptr %x148, align 1
  %205 = load i32, ptr %x144, align 4
  %206 = load i32, ptr %x141, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %204, i32 noundef %205, i32 noundef %206)
  %207 = load i8, ptr %x150, align 1
  %208 = load i32, ptr %x142, align 4
  %209 = load i32, ptr %x139, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %207, i32 noundef %208, i32 noundef %209)
  %210 = load i8, ptr %x152, align 1
  %211 = load i32, ptr %x140, align 4
  %212 = load i32, ptr %x137, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %210, i32 noundef %211, i32 noundef %212)
  %213 = load i8, ptr %x154, align 1
  %214 = load i32, ptr %x138, align 4
  %215 = load i32, ptr %x135, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %213, i32 noundef %214, i32 noundef %215)
  %216 = load i8, ptr %x156, align 1
  %217 = load i32, ptr %x136, align 4
  %218 = load i32, ptr %x133, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %216, i32 noundef %217, i32 noundef %218)
  %219 = load i8, ptr %x158, align 1
  %220 = load i32, ptr %x134, align 4
  %221 = load i32, ptr %x131, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %219, i32 noundef %220, i32 noundef %221)
  %222 = load i8, ptr %x160, align 1
  %223 = load i32, ptr %x132, align 4
  %224 = load i32, ptr %x129, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x162, align 1
  %226 = load i32, ptr %x130, align 4
  %227 = load i32, ptr %x127, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i8, ptr %x164, align 1
  %229 = load i32, ptr %x128, align 4
  %230 = load i32, ptr %x125, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %228, i32 noundef %229, i32 noundef %230)
  %231 = load i8, ptr %x166, align 1
  %232 = load i32, ptr %x126, align 4
  %233 = load i32, ptr %x123, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %231, i32 noundef %232, i32 noundef %233)
  %234 = load i8, ptr %x168, align 1
  %conv38 = zext i8 %234 to i32
  %235 = load i32, ptr %x124, align 4
  %add39 = add i32 %conv38, %235
  store i32 %add39, ptr %x169, align 4
  %236 = load i32, ptr %x99, align 4
  %237 = load i32, ptr %x145, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext 0, i32 noundef %236, i32 noundef %237)
  %238 = load i8, ptr %x171, align 1
  %239 = load i32, ptr %x101, align 4
  %240 = load i32, ptr %x147, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %238, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x173, align 1
  %242 = load i32, ptr %x103, align 4
  %243 = load i32, ptr %x149, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x175, align 1
  %245 = load i32, ptr %x105, align 4
  %246 = load i32, ptr %x151, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x177, align 1
  %248 = load i32, ptr %x107, align 4
  %249 = load i32, ptr %x153, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x179, align 1
  %251 = load i32, ptr %x109, align 4
  %252 = load i32, ptr %x155, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x181, align 1
  %254 = load i32, ptr %x111, align 4
  %255 = load i32, ptr %x157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %253, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x183, align 1
  %257 = load i32, ptr %x113, align 4
  %258 = load i32, ptr %x159, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x185, align 1
  %260 = load i32, ptr %x115, align 4
  %261 = load i32, ptr %x161, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x187, align 1
  %263 = load i32, ptr %x117, align 4
  %264 = load i32, ptr %x163, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %262, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x189, align 1
  %266 = load i32, ptr %x119, align 4
  %267 = load i32, ptr %x165, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %265, i32 noundef %266, i32 noundef %267)
  %268 = load i8, ptr %x191, align 1
  %269 = load i32, ptr %x121, align 4
  %270 = load i32, ptr %x167, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %268, i32 noundef %269, i32 noundef %270)
  %271 = load i8, ptr %x193, align 1
  %272 = load i8, ptr %x122, align 1
  %conv40 = zext i8 %272 to i32
  %273 = load i32, ptr %x169, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %271, i32 noundef %conv40, i32 noundef %273)
  %274 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x196, ptr noundef %x197, i32 noundef %274, i32 noundef -1)
  %275 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %275, i32 noundef -1)
  %276 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %276, i32 noundef -1)
  %277 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %277, i32 noundef -1)
  %278 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %278, i32 noundef -1)
  %279 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %279, i32 noundef -1)
  %280 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %280, i32 noundef -1)
  %281 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %281, i32 noundef -2)
  %282 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x212, ptr noundef %x213, i32 noundef %282, i32 noundef -1)
  %283 = load i32, ptr %x170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x214, ptr noundef %x215, i32 noundef %283, i32 noundef -1)
  %284 = load i32, ptr %x213, align 4
  %285 = load i32, ptr %x210, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext 0, i32 noundef %284, i32 noundef %285)
  %286 = load i8, ptr %x217, align 1
  %287 = load i32, ptr %x211, align 4
  %288 = load i32, ptr %x208, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x219, align 1
  %290 = load i32, ptr %x209, align 4
  %291 = load i32, ptr %x206, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x221, align 1
  %293 = load i32, ptr %x207, align 4
  %294 = load i32, ptr %x204, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x223, align 1
  %296 = load i32, ptr %x205, align 4
  %297 = load i32, ptr %x202, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x225, align 1
  %299 = load i32, ptr %x203, align 4
  %300 = load i32, ptr %x200, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x227, align 1
  %302 = load i32, ptr %x201, align 4
  %303 = load i32, ptr %x198, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %301, i32 noundef %302, i32 noundef %303)
  %304 = load i8, ptr %x229, align 1
  %305 = load i32, ptr %x199, align 4
  %306 = load i32, ptr %x196, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %304, i32 noundef %305, i32 noundef %306)
  %307 = load i8, ptr %x231, align 1
  %conv41 = zext i8 %307 to i32
  %308 = load i32, ptr %x197, align 4
  %add42 = add i32 %conv41, %308
  store i32 %add42, ptr %x232, align 4
  %309 = load i32, ptr %x170, align 4
  %310 = load i32, ptr %x214, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext 0, i32 noundef %309, i32 noundef %310)
  %311 = load i8, ptr %x234, align 1
  %312 = load i32, ptr %x172, align 4
  %313 = load i32, ptr %x215, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %311, i32 noundef %312, i32 noundef %313)
  %314 = load i8, ptr %x236, align 1
  %315 = load i32, ptr %x174, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %314, i32 noundef %315, i32 noundef 0)
  %316 = load i8, ptr %x238, align 1
  %317 = load i32, ptr %x176, align 4
  %318 = load i32, ptr %x212, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %316, i32 noundef %317, i32 noundef %318)
  %319 = load i8, ptr %x240, align 1
  %320 = load i32, ptr %x178, align 4
  %321 = load i32, ptr %x216, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %319, i32 noundef %320, i32 noundef %321)
  %322 = load i8, ptr %x242, align 1
  %323 = load i32, ptr %x180, align 4
  %324 = load i32, ptr %x218, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %322, i32 noundef %323, i32 noundef %324)
  %325 = load i8, ptr %x244, align 1
  %326 = load i32, ptr %x182, align 4
  %327 = load i32, ptr %x220, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x245, ptr noundef %x246, i8 noundef zeroext %325, i32 noundef %326, i32 noundef %327)
  %328 = load i8, ptr %x246, align 1
  %329 = load i32, ptr %x184, align 4
  %330 = load i32, ptr %x222, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x247, ptr noundef %x248, i8 noundef zeroext %328, i32 noundef %329, i32 noundef %330)
  %331 = load i8, ptr %x248, align 1
  %332 = load i32, ptr %x186, align 4
  %333 = load i32, ptr %x224, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext %331, i32 noundef %332, i32 noundef %333)
  %334 = load i8, ptr %x250, align 1
  %335 = load i32, ptr %x188, align 4
  %336 = load i32, ptr %x226, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %334, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x252, align 1
  %338 = load i32, ptr %x190, align 4
  %339 = load i32, ptr %x228, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x254, align 1
  %341 = load i32, ptr %x192, align 4
  %342 = load i32, ptr %x230, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x256, align 1
  %344 = load i32, ptr %x194, align 4
  %345 = load i32, ptr %x232, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x258, align 1
  %conv43 = zext i8 %346 to i32
  %347 = load i8, ptr %x195, align 1
  %conv44 = zext i8 %347 to i32
  %add45 = add i32 %conv43, %conv44
  store i32 %add45, ptr %x259, align 4
  %348 = load i32, ptr %x2, align 4
  %349 = load ptr, ptr %arg2.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %349, i64 11
  %350 = load i32, ptr %arrayidx46, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x260, ptr noundef %x261, i32 noundef %348, i32 noundef %350)
  %351 = load i32, ptr %x2, align 4
  %352 = load ptr, ptr %arg2.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %352, i64 10
  %353 = load i32, ptr %arrayidx47, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x262, ptr noundef %x263, i32 noundef %351, i32 noundef %353)
  %354 = load i32, ptr %x2, align 4
  %355 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %355, i64 9
  %356 = load i32, ptr %arrayidx48, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x264, ptr noundef %x265, i32 noundef %354, i32 noundef %356)
  %357 = load i32, ptr %x2, align 4
  %358 = load ptr, ptr %arg2.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %358, i64 8
  %359 = load i32, ptr %arrayidx49, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x266, ptr noundef %x267, i32 noundef %357, i32 noundef %359)
  %360 = load i32, ptr %x2, align 4
  %361 = load ptr, ptr %arg2.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %361, i64 7
  %362 = load i32, ptr %arrayidx50, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x268, ptr noundef %x269, i32 noundef %360, i32 noundef %362)
  %363 = load i32, ptr %x2, align 4
  %364 = load ptr, ptr %arg2.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %364, i64 6
  %365 = load i32, ptr %arrayidx51, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x270, ptr noundef %x271, i32 noundef %363, i32 noundef %365)
  %366 = load i32, ptr %x2, align 4
  %367 = load ptr, ptr %arg2.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %367, i64 5
  %368 = load i32, ptr %arrayidx52, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x272, ptr noundef %x273, i32 noundef %366, i32 noundef %368)
  %369 = load i32, ptr %x2, align 4
  %370 = load ptr, ptr %arg2.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %370, i64 4
  %371 = load i32, ptr %arrayidx53, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x274, ptr noundef %x275, i32 noundef %369, i32 noundef %371)
  %372 = load i32, ptr %x2, align 4
  %373 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %373, i64 3
  %374 = load i32, ptr %arrayidx54, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x276, ptr noundef %x277, i32 noundef %372, i32 noundef %374)
  %375 = load i32, ptr %x2, align 4
  %376 = load ptr, ptr %arg2.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %376, i64 2
  %377 = load i32, ptr %arrayidx55, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x278, ptr noundef %x279, i32 noundef %375, i32 noundef %377)
  %378 = load i32, ptr %x2, align 4
  %379 = load ptr, ptr %arg2.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %379, i64 1
  %380 = load i32, ptr %arrayidx56, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x280, ptr noundef %x281, i32 noundef %378, i32 noundef %380)
  %381 = load i32, ptr %x2, align 4
  %382 = load ptr, ptr %arg2.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %382, i64 0
  %383 = load i32, ptr %arrayidx57, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x282, ptr noundef %x283, i32 noundef %381, i32 noundef %383)
  %384 = load i32, ptr %x283, align 4
  %385 = load i32, ptr %x280, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext 0, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x285, align 1
  %387 = load i32, ptr %x281, align 4
  %388 = load i32, ptr %x278, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x287, align 1
  %390 = load i32, ptr %x279, align 4
  %391 = load i32, ptr %x276, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x289, align 1
  %393 = load i32, ptr %x277, align 4
  %394 = load i32, ptr %x274, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x291, align 1
  %396 = load i32, ptr %x275, align 4
  %397 = load i32, ptr %x272, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x293, align 1
  %399 = load i32, ptr %x273, align 4
  %400 = load i32, ptr %x270, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %398, i32 noundef %399, i32 noundef %400)
  %401 = load i8, ptr %x295, align 1
  %402 = load i32, ptr %x271, align 4
  %403 = load i32, ptr %x268, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %401, i32 noundef %402, i32 noundef %403)
  %404 = load i8, ptr %x297, align 1
  %405 = load i32, ptr %x269, align 4
  %406 = load i32, ptr %x266, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %404, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x299, align 1
  %408 = load i32, ptr %x267, align 4
  %409 = load i32, ptr %x264, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x301, align 1
  %411 = load i32, ptr %x265, align 4
  %412 = load i32, ptr %x262, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x303, align 1
  %414 = load i32, ptr %x263, align 4
  %415 = load i32, ptr %x260, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x305, align 1
  %conv58 = zext i8 %416 to i32
  %417 = load i32, ptr %x261, align 4
  %add59 = add i32 %conv58, %417
  store i32 %add59, ptr %x306, align 4
  %418 = load i32, ptr %x235, align 4
  %419 = load i32, ptr %x282, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext 0, i32 noundef %418, i32 noundef %419)
  %420 = load i8, ptr %x308, align 1
  %421 = load i32, ptr %x237, align 4
  %422 = load i32, ptr %x284, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %420, i32 noundef %421, i32 noundef %422)
  %423 = load i8, ptr %x310, align 1
  %424 = load i32, ptr %x239, align 4
  %425 = load i32, ptr %x286, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %423, i32 noundef %424, i32 noundef %425)
  %426 = load i8, ptr %x312, align 1
  %427 = load i32, ptr %x241, align 4
  %428 = load i32, ptr %x288, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %426, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x314, align 1
  %430 = load i32, ptr %x243, align 4
  %431 = load i32, ptr %x290, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x316, align 1
  %433 = load i32, ptr %x245, align 4
  %434 = load i32, ptr %x292, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %432, i32 noundef %433, i32 noundef %434)
  %435 = load i8, ptr %x318, align 1
  %436 = load i32, ptr %x247, align 4
  %437 = load i32, ptr %x294, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %435, i32 noundef %436, i32 noundef %437)
  %438 = load i8, ptr %x320, align 1
  %439 = load i32, ptr %x249, align 4
  %440 = load i32, ptr %x296, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %438, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x322, align 1
  %442 = load i32, ptr %x251, align 4
  %443 = load i32, ptr %x298, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x324, align 1
  %445 = load i32, ptr %x253, align 4
  %446 = load i32, ptr %x300, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x326, align 1
  %448 = load i32, ptr %x255, align 4
  %449 = load i32, ptr %x302, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x328, align 1
  %451 = load i32, ptr %x257, align 4
  %452 = load i32, ptr %x304, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x330, align 1
  %454 = load i32, ptr %x259, align 4
  %455 = load i32, ptr %x306, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x333, ptr noundef %x334, i32 noundef %456, i32 noundef -1)
  %457 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x335, ptr noundef %x336, i32 noundef %457, i32 noundef -1)
  %458 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x337, ptr noundef %x338, i32 noundef %458, i32 noundef -1)
  %459 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x339, ptr noundef %x340, i32 noundef %459, i32 noundef -1)
  %460 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x341, ptr noundef %x342, i32 noundef %460, i32 noundef -1)
  %461 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x343, ptr noundef %x344, i32 noundef %461, i32 noundef -1)
  %462 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x345, ptr noundef %x346, i32 noundef %462, i32 noundef -1)
  %463 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x347, ptr noundef %x348, i32 noundef %463, i32 noundef -2)
  %464 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x349, ptr noundef %x350, i32 noundef %464, i32 noundef -1)
  %465 = load i32, ptr %x307, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x351, ptr noundef %x352, i32 noundef %465, i32 noundef -1)
  %466 = load i32, ptr %x350, align 4
  %467 = load i32, ptr %x347, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext 0, i32 noundef %466, i32 noundef %467)
  %468 = load i8, ptr %x354, align 1
  %469 = load i32, ptr %x348, align 4
  %470 = load i32, ptr %x345, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i8, ptr %x356, align 1
  %472 = load i32, ptr %x346, align 4
  %473 = load i32, ptr %x343, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %471, i32 noundef %472, i32 noundef %473)
  %474 = load i8, ptr %x358, align 1
  %475 = load i32, ptr %x344, align 4
  %476 = load i32, ptr %x341, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %474, i32 noundef %475, i32 noundef %476)
  %477 = load i8, ptr %x360, align 1
  %478 = load i32, ptr %x342, align 4
  %479 = load i32, ptr %x339, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %477, i32 noundef %478, i32 noundef %479)
  %480 = load i8, ptr %x362, align 1
  %481 = load i32, ptr %x340, align 4
  %482 = load i32, ptr %x337, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %480, i32 noundef %481, i32 noundef %482)
  %483 = load i8, ptr %x364, align 1
  %484 = load i32, ptr %x338, align 4
  %485 = load i32, ptr %x335, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %483, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x366, align 1
  %487 = load i32, ptr %x336, align 4
  %488 = load i32, ptr %x333, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x368, align 1
  %conv60 = zext i8 %489 to i32
  %490 = load i32, ptr %x334, align 4
  %add61 = add i32 %conv60, %490
  store i32 %add61, ptr %x369, align 4
  %491 = load i32, ptr %x307, align 4
  %492 = load i32, ptr %x351, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext 0, i32 noundef %491, i32 noundef %492)
  %493 = load i8, ptr %x371, align 1
  %494 = load i32, ptr %x309, align 4
  %495 = load i32, ptr %x352, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %493, i32 noundef %494, i32 noundef %495)
  %496 = load i8, ptr %x373, align 1
  %497 = load i32, ptr %x311, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %496, i32 noundef %497, i32 noundef 0)
  %498 = load i8, ptr %x375, align 1
  %499 = load i32, ptr %x313, align 4
  %500 = load i32, ptr %x349, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %498, i32 noundef %499, i32 noundef %500)
  %501 = load i8, ptr %x377, align 1
  %502 = load i32, ptr %x315, align 4
  %503 = load i32, ptr %x353, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %501, i32 noundef %502, i32 noundef %503)
  %504 = load i8, ptr %x379, align 1
  %505 = load i32, ptr %x317, align 4
  %506 = load i32, ptr %x355, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext %504, i32 noundef %505, i32 noundef %506)
  %507 = load i8, ptr %x381, align 1
  %508 = load i32, ptr %x319, align 4
  %509 = load i32, ptr %x357, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %507, i32 noundef %508, i32 noundef %509)
  %510 = load i8, ptr %x383, align 1
  %511 = load i32, ptr %x321, align 4
  %512 = load i32, ptr %x359, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %510, i32 noundef %511, i32 noundef %512)
  %513 = load i8, ptr %x385, align 1
  %514 = load i32, ptr %x323, align 4
  %515 = load i32, ptr %x361, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %513, i32 noundef %514, i32 noundef %515)
  %516 = load i8, ptr %x387, align 1
  %517 = load i32, ptr %x325, align 4
  %518 = load i32, ptr %x363, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %516, i32 noundef %517, i32 noundef %518)
  %519 = load i8, ptr %x389, align 1
  %520 = load i32, ptr %x327, align 4
  %521 = load i32, ptr %x365, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %519, i32 noundef %520, i32 noundef %521)
  %522 = load i8, ptr %x391, align 1
  %523 = load i32, ptr %x329, align 4
  %524 = load i32, ptr %x367, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %522, i32 noundef %523, i32 noundef %524)
  %525 = load i8, ptr %x393, align 1
  %526 = load i32, ptr %x331, align 4
  %527 = load i32, ptr %x369, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x394, ptr noundef %x395, i8 noundef zeroext %525, i32 noundef %526, i32 noundef %527)
  %528 = load i8, ptr %x395, align 1
  %conv62 = zext i8 %528 to i32
  %529 = load i8, ptr %x332, align 1
  %conv63 = zext i8 %529 to i32
  %add64 = add i32 %conv62, %conv63
  store i32 %add64, ptr %x396, align 4
  %530 = load i32, ptr %x3, align 4
  %531 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %531, i64 11
  %532 = load i32, ptr %arrayidx65, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x397, ptr noundef %x398, i32 noundef %530, i32 noundef %532)
  %533 = load i32, ptr %x3, align 4
  %534 = load ptr, ptr %arg2.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %534, i64 10
  %535 = load i32, ptr %arrayidx66, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x399, ptr noundef %x400, i32 noundef %533, i32 noundef %535)
  %536 = load i32, ptr %x3, align 4
  %537 = load ptr, ptr %arg2.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %537, i64 9
  %538 = load i32, ptr %arrayidx67, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x401, ptr noundef %x402, i32 noundef %536, i32 noundef %538)
  %539 = load i32, ptr %x3, align 4
  %540 = load ptr, ptr %arg2.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %540, i64 8
  %541 = load i32, ptr %arrayidx68, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x403, ptr noundef %x404, i32 noundef %539, i32 noundef %541)
  %542 = load i32, ptr %x3, align 4
  %543 = load ptr, ptr %arg2.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %543, i64 7
  %544 = load i32, ptr %arrayidx69, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x405, ptr noundef %x406, i32 noundef %542, i32 noundef %544)
  %545 = load i32, ptr %x3, align 4
  %546 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %546, i64 6
  %547 = load i32, ptr %arrayidx70, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x407, ptr noundef %x408, i32 noundef %545, i32 noundef %547)
  %548 = load i32, ptr %x3, align 4
  %549 = load ptr, ptr %arg2.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %549, i64 5
  %550 = load i32, ptr %arrayidx71, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x409, ptr noundef %x410, i32 noundef %548, i32 noundef %550)
  %551 = load i32, ptr %x3, align 4
  %552 = load ptr, ptr %arg2.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %552, i64 4
  %553 = load i32, ptr %arrayidx72, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x411, ptr noundef %x412, i32 noundef %551, i32 noundef %553)
  %554 = load i32, ptr %x3, align 4
  %555 = load ptr, ptr %arg2.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %555, i64 3
  %556 = load i32, ptr %arrayidx73, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x413, ptr noundef %x414, i32 noundef %554, i32 noundef %556)
  %557 = load i32, ptr %x3, align 4
  %558 = load ptr, ptr %arg2.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %558, i64 2
  %559 = load i32, ptr %arrayidx74, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x415, ptr noundef %x416, i32 noundef %557, i32 noundef %559)
  %560 = load i32, ptr %x3, align 4
  %561 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %561, i64 1
  %562 = load i32, ptr %arrayidx75, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x417, ptr noundef %x418, i32 noundef %560, i32 noundef %562)
  %563 = load i32, ptr %x3, align 4
  %564 = load ptr, ptr %arg2.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %564, i64 0
  %565 = load i32, ptr %arrayidx76, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x419, ptr noundef %x420, i32 noundef %563, i32 noundef %565)
  %566 = load i32, ptr %x420, align 4
  %567 = load i32, ptr %x417, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext 0, i32 noundef %566, i32 noundef %567)
  %568 = load i8, ptr %x422, align 1
  %569 = load i32, ptr %x418, align 4
  %570 = load i32, ptr %x415, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x423, ptr noundef %x424, i8 noundef zeroext %568, i32 noundef %569, i32 noundef %570)
  %571 = load i8, ptr %x424, align 1
  %572 = load i32, ptr %x416, align 4
  %573 = load i32, ptr %x413, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext %571, i32 noundef %572, i32 noundef %573)
  %574 = load i8, ptr %x426, align 1
  %575 = load i32, ptr %x414, align 4
  %576 = load i32, ptr %x411, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %574, i32 noundef %575, i32 noundef %576)
  %577 = load i8, ptr %x428, align 1
  %578 = load i32, ptr %x412, align 4
  %579 = load i32, ptr %x409, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %577, i32 noundef %578, i32 noundef %579)
  %580 = load i8, ptr %x430, align 1
  %581 = load i32, ptr %x410, align 4
  %582 = load i32, ptr %x407, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %580, i32 noundef %581, i32 noundef %582)
  %583 = load i8, ptr %x432, align 1
  %584 = load i32, ptr %x408, align 4
  %585 = load i32, ptr %x405, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %583, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x434, align 1
  %587 = load i32, ptr %x406, align 4
  %588 = load i32, ptr %x403, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x436, align 1
  %590 = load i32, ptr %x404, align 4
  %591 = load i32, ptr %x401, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i8, ptr %x438, align 1
  %593 = load i32, ptr %x402, align 4
  %594 = load i32, ptr %x399, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %592, i32 noundef %593, i32 noundef %594)
  %595 = load i8, ptr %x440, align 1
  %596 = load i32, ptr %x400, align 4
  %597 = load i32, ptr %x397, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %595, i32 noundef %596, i32 noundef %597)
  %598 = load i8, ptr %x442, align 1
  %conv77 = zext i8 %598 to i32
  %599 = load i32, ptr %x398, align 4
  %add78 = add i32 %conv77, %599
  store i32 %add78, ptr %x443, align 4
  %600 = load i32, ptr %x372, align 4
  %601 = load i32, ptr %x419, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext 0, i32 noundef %600, i32 noundef %601)
  %602 = load i8, ptr %x445, align 1
  %603 = load i32, ptr %x374, align 4
  %604 = load i32, ptr %x421, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext %602, i32 noundef %603, i32 noundef %604)
  %605 = load i8, ptr %x447, align 1
  %606 = load i32, ptr %x376, align 4
  %607 = load i32, ptr %x423, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %605, i32 noundef %606, i32 noundef %607)
  %608 = load i8, ptr %x449, align 1
  %609 = load i32, ptr %x378, align 4
  %610 = load i32, ptr %x425, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %608, i32 noundef %609, i32 noundef %610)
  %611 = load i8, ptr %x451, align 1
  %612 = load i32, ptr %x380, align 4
  %613 = load i32, ptr %x427, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %611, i32 noundef %612, i32 noundef %613)
  %614 = load i8, ptr %x453, align 1
  %615 = load i32, ptr %x382, align 4
  %616 = load i32, ptr %x429, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %614, i32 noundef %615, i32 noundef %616)
  %617 = load i8, ptr %x455, align 1
  %618 = load i32, ptr %x384, align 4
  %619 = load i32, ptr %x431, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %617, i32 noundef %618, i32 noundef %619)
  %620 = load i8, ptr %x457, align 1
  %621 = load i32, ptr %x386, align 4
  %622 = load i32, ptr %x433, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %620, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x459, align 1
  %624 = load i32, ptr %x388, align 4
  %625 = load i32, ptr %x435, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i8, ptr %x461, align 1
  %627 = load i32, ptr %x390, align 4
  %628 = load i32, ptr %x437, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %626, i32 noundef %627, i32 noundef %628)
  %629 = load i8, ptr %x463, align 1
  %630 = load i32, ptr %x392, align 4
  %631 = load i32, ptr %x439, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %629, i32 noundef %630, i32 noundef %631)
  %632 = load i8, ptr %x465, align 1
  %633 = load i32, ptr %x394, align 4
  %634 = load i32, ptr %x441, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %632, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x467, align 1
  %636 = load i32, ptr %x396, align 4
  %637 = load i32, ptr %x443, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x468, ptr noundef %x469, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x470, ptr noundef %x471, i32 noundef %638, i32 noundef -1)
  %639 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x472, ptr noundef %x473, i32 noundef %639, i32 noundef -1)
  %640 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x474, ptr noundef %x475, i32 noundef %640, i32 noundef -1)
  %641 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x476, ptr noundef %x477, i32 noundef %641, i32 noundef -1)
  %642 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x478, ptr noundef %x479, i32 noundef %642, i32 noundef -1)
  %643 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x480, ptr noundef %x481, i32 noundef %643, i32 noundef -1)
  %644 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x482, ptr noundef %x483, i32 noundef %644, i32 noundef -1)
  %645 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x484, ptr noundef %x485, i32 noundef %645, i32 noundef -2)
  %646 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x486, ptr noundef %x487, i32 noundef %646, i32 noundef -1)
  %647 = load i32, ptr %x444, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x488, ptr noundef %x489, i32 noundef %647, i32 noundef -1)
  %648 = load i32, ptr %x487, align 4
  %649 = load i32, ptr %x484, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext 0, i32 noundef %648, i32 noundef %649)
  %650 = load i8, ptr %x491, align 1
  %651 = load i32, ptr %x485, align 4
  %652 = load i32, ptr %x482, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %650, i32 noundef %651, i32 noundef %652)
  %653 = load i8, ptr %x493, align 1
  %654 = load i32, ptr %x483, align 4
  %655 = load i32, ptr %x480, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext %653, i32 noundef %654, i32 noundef %655)
  %656 = load i8, ptr %x495, align 1
  %657 = load i32, ptr %x481, align 4
  %658 = load i32, ptr %x478, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext %656, i32 noundef %657, i32 noundef %658)
  %659 = load i8, ptr %x497, align 1
  %660 = load i32, ptr %x479, align 4
  %661 = load i32, ptr %x476, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %659, i32 noundef %660, i32 noundef %661)
  %662 = load i8, ptr %x499, align 1
  %663 = load i32, ptr %x477, align 4
  %664 = load i32, ptr %x474, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext %662, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x501, align 1
  %666 = load i32, ptr %x475, align 4
  %667 = load i32, ptr %x472, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x503, align 1
  %669 = load i32, ptr %x473, align 4
  %670 = load i32, ptr %x470, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x505, align 1
  %conv79 = zext i8 %671 to i32
  %672 = load i32, ptr %x471, align 4
  %add80 = add i32 %conv79, %672
  store i32 %add80, ptr %x506, align 4
  %673 = load i32, ptr %x444, align 4
  %674 = load i32, ptr %x488, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext 0, i32 noundef %673, i32 noundef %674)
  %675 = load i8, ptr %x508, align 1
  %676 = load i32, ptr %x446, align 4
  %677 = load i32, ptr %x489, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %675, i32 noundef %676, i32 noundef %677)
  %678 = load i8, ptr %x510, align 1
  %679 = load i32, ptr %x448, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %678, i32 noundef %679, i32 noundef 0)
  %680 = load i8, ptr %x512, align 1
  %681 = load i32, ptr %x450, align 4
  %682 = load i32, ptr %x486, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %680, i32 noundef %681, i32 noundef %682)
  %683 = load i8, ptr %x514, align 1
  %684 = load i32, ptr %x452, align 4
  %685 = load i32, ptr %x490, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %683, i32 noundef %684, i32 noundef %685)
  %686 = load i8, ptr %x516, align 1
  %687 = load i32, ptr %x454, align 4
  %688 = load i32, ptr %x492, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %686, i32 noundef %687, i32 noundef %688)
  %689 = load i8, ptr %x518, align 1
  %690 = load i32, ptr %x456, align 4
  %691 = load i32, ptr %x494, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %689, i32 noundef %690, i32 noundef %691)
  %692 = load i8, ptr %x520, align 1
  %693 = load i32, ptr %x458, align 4
  %694 = load i32, ptr %x496, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %692, i32 noundef %693, i32 noundef %694)
  %695 = load i8, ptr %x522, align 1
  %696 = load i32, ptr %x460, align 4
  %697 = load i32, ptr %x498, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %695, i32 noundef %696, i32 noundef %697)
  %698 = load i8, ptr %x524, align 1
  %699 = load i32, ptr %x462, align 4
  %700 = load i32, ptr %x500, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x525, ptr noundef %x526, i8 noundef zeroext %698, i32 noundef %699, i32 noundef %700)
  %701 = load i8, ptr %x526, align 1
  %702 = load i32, ptr %x464, align 4
  %703 = load i32, ptr %x502, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext %701, i32 noundef %702, i32 noundef %703)
  %704 = load i8, ptr %x528, align 1
  %705 = load i32, ptr %x466, align 4
  %706 = load i32, ptr %x504, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x529, ptr noundef %x530, i8 noundef zeroext %704, i32 noundef %705, i32 noundef %706)
  %707 = load i8, ptr %x530, align 1
  %708 = load i32, ptr %x468, align 4
  %709 = load i32, ptr %x506, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext %707, i32 noundef %708, i32 noundef %709)
  %710 = load i8, ptr %x532, align 1
  %conv81 = zext i8 %710 to i32
  %711 = load i8, ptr %x469, align 1
  %conv82 = zext i8 %711 to i32
  %add83 = add i32 %conv81, %conv82
  store i32 %add83, ptr %x533, align 4
  %712 = load i32, ptr %x4, align 4
  %713 = load ptr, ptr %arg2.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %713, i64 11
  %714 = load i32, ptr %arrayidx84, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x534, ptr noundef %x535, i32 noundef %712, i32 noundef %714)
  %715 = load i32, ptr %x4, align 4
  %716 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %716, i64 10
  %717 = load i32, ptr %arrayidx85, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x536, ptr noundef %x537, i32 noundef %715, i32 noundef %717)
  %718 = load i32, ptr %x4, align 4
  %719 = load ptr, ptr %arg2.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %719, i64 9
  %720 = load i32, ptr %arrayidx86, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x538, ptr noundef %x539, i32 noundef %718, i32 noundef %720)
  %721 = load i32, ptr %x4, align 4
  %722 = load ptr, ptr %arg2.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %722, i64 8
  %723 = load i32, ptr %arrayidx87, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x540, ptr noundef %x541, i32 noundef %721, i32 noundef %723)
  %724 = load i32, ptr %x4, align 4
  %725 = load ptr, ptr %arg2.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %725, i64 7
  %726 = load i32, ptr %arrayidx88, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x542, ptr noundef %x543, i32 noundef %724, i32 noundef %726)
  %727 = load i32, ptr %x4, align 4
  %728 = load ptr, ptr %arg2.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %728, i64 6
  %729 = load i32, ptr %arrayidx89, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x544, ptr noundef %x545, i32 noundef %727, i32 noundef %729)
  %730 = load i32, ptr %x4, align 4
  %731 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %731, i64 5
  %732 = load i32, ptr %arrayidx90, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x546, ptr noundef %x547, i32 noundef %730, i32 noundef %732)
  %733 = load i32, ptr %x4, align 4
  %734 = load ptr, ptr %arg2.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %734, i64 4
  %735 = load i32, ptr %arrayidx91, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x548, ptr noundef %x549, i32 noundef %733, i32 noundef %735)
  %736 = load i32, ptr %x4, align 4
  %737 = load ptr, ptr %arg2.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %737, i64 3
  %738 = load i32, ptr %arrayidx92, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x550, ptr noundef %x551, i32 noundef %736, i32 noundef %738)
  %739 = load i32, ptr %x4, align 4
  %740 = load ptr, ptr %arg2.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %740, i64 2
  %741 = load i32, ptr %arrayidx93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x552, ptr noundef %x553, i32 noundef %739, i32 noundef %741)
  %742 = load i32, ptr %x4, align 4
  %743 = load ptr, ptr %arg2.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %743, i64 1
  %744 = load i32, ptr %arrayidx94, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x554, ptr noundef %x555, i32 noundef %742, i32 noundef %744)
  %745 = load i32, ptr %x4, align 4
  %746 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %746, i64 0
  %747 = load i32, ptr %arrayidx95, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x556, ptr noundef %x557, i32 noundef %745, i32 noundef %747)
  %748 = load i32, ptr %x557, align 4
  %749 = load i32, ptr %x554, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x558, ptr noundef %x559, i8 noundef zeroext 0, i32 noundef %748, i32 noundef %749)
  %750 = load i8, ptr %x559, align 1
  %751 = load i32, ptr %x555, align 4
  %752 = load i32, ptr %x552, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x560, ptr noundef %x561, i8 noundef zeroext %750, i32 noundef %751, i32 noundef %752)
  %753 = load i8, ptr %x561, align 1
  %754 = load i32, ptr %x553, align 4
  %755 = load i32, ptr %x550, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x562, ptr noundef %x563, i8 noundef zeroext %753, i32 noundef %754, i32 noundef %755)
  %756 = load i8, ptr %x563, align 1
  %757 = load i32, ptr %x551, align 4
  %758 = load i32, ptr %x548, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x564, ptr noundef %x565, i8 noundef zeroext %756, i32 noundef %757, i32 noundef %758)
  %759 = load i8, ptr %x565, align 1
  %760 = load i32, ptr %x549, align 4
  %761 = load i32, ptr %x546, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x566, ptr noundef %x567, i8 noundef zeroext %759, i32 noundef %760, i32 noundef %761)
  %762 = load i8, ptr %x567, align 1
  %763 = load i32, ptr %x547, align 4
  %764 = load i32, ptr %x544, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x568, ptr noundef %x569, i8 noundef zeroext %762, i32 noundef %763, i32 noundef %764)
  %765 = load i8, ptr %x569, align 1
  %766 = load i32, ptr %x545, align 4
  %767 = load i32, ptr %x542, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x570, ptr noundef %x571, i8 noundef zeroext %765, i32 noundef %766, i32 noundef %767)
  %768 = load i8, ptr %x571, align 1
  %769 = load i32, ptr %x543, align 4
  %770 = load i32, ptr %x540, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x572, ptr noundef %x573, i8 noundef zeroext %768, i32 noundef %769, i32 noundef %770)
  %771 = load i8, ptr %x573, align 1
  %772 = load i32, ptr %x541, align 4
  %773 = load i32, ptr %x538, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x574, ptr noundef %x575, i8 noundef zeroext %771, i32 noundef %772, i32 noundef %773)
  %774 = load i8, ptr %x575, align 1
  %775 = load i32, ptr %x539, align 4
  %776 = load i32, ptr %x536, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x576, ptr noundef %x577, i8 noundef zeroext %774, i32 noundef %775, i32 noundef %776)
  %777 = load i8, ptr %x577, align 1
  %778 = load i32, ptr %x537, align 4
  %779 = load i32, ptr %x534, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x578, ptr noundef %x579, i8 noundef zeroext %777, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x579, align 1
  %conv96 = zext i8 %780 to i32
  %781 = load i32, ptr %x535, align 4
  %add97 = add i32 %conv96, %781
  store i32 %add97, ptr %x580, align 4
  %782 = load i32, ptr %x509, align 4
  %783 = load i32, ptr %x556, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x581, ptr noundef %x582, i8 noundef zeroext 0, i32 noundef %782, i32 noundef %783)
  %784 = load i8, ptr %x582, align 1
  %785 = load i32, ptr %x511, align 4
  %786 = load i32, ptr %x558, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x583, ptr noundef %x584, i8 noundef zeroext %784, i32 noundef %785, i32 noundef %786)
  %787 = load i8, ptr %x584, align 1
  %788 = load i32, ptr %x513, align 4
  %789 = load i32, ptr %x560, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext %787, i32 noundef %788, i32 noundef %789)
  %790 = load i8, ptr %x586, align 1
  %791 = load i32, ptr %x515, align 4
  %792 = load i32, ptr %x562, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %790, i32 noundef %791, i32 noundef %792)
  %793 = load i8, ptr %x588, align 1
  %794 = load i32, ptr %x517, align 4
  %795 = load i32, ptr %x564, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %793, i32 noundef %794, i32 noundef %795)
  %796 = load i8, ptr %x590, align 1
  %797 = load i32, ptr %x519, align 4
  %798 = load i32, ptr %x566, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %796, i32 noundef %797, i32 noundef %798)
  %799 = load i8, ptr %x592, align 1
  %800 = load i32, ptr %x521, align 4
  %801 = load i32, ptr %x568, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %799, i32 noundef %800, i32 noundef %801)
  %802 = load i8, ptr %x594, align 1
  %803 = load i32, ptr %x523, align 4
  %804 = load i32, ptr %x570, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %802, i32 noundef %803, i32 noundef %804)
  %805 = load i8, ptr %x596, align 1
  %806 = load i32, ptr %x525, align 4
  %807 = load i32, ptr %x572, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %805, i32 noundef %806, i32 noundef %807)
  %808 = load i8, ptr %x598, align 1
  %809 = load i32, ptr %x527, align 4
  %810 = load i32, ptr %x574, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext %808, i32 noundef %809, i32 noundef %810)
  %811 = load i8, ptr %x600, align 1
  %812 = load i32, ptr %x529, align 4
  %813 = load i32, ptr %x576, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %811, i32 noundef %812, i32 noundef %813)
  %814 = load i8, ptr %x602, align 1
  %815 = load i32, ptr %x531, align 4
  %816 = load i32, ptr %x578, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x603, ptr noundef %x604, i8 noundef zeroext %814, i32 noundef %815, i32 noundef %816)
  %817 = load i8, ptr %x604, align 1
  %818 = load i32, ptr %x533, align 4
  %819 = load i32, ptr %x580, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x605, ptr noundef %x606, i8 noundef zeroext %817, i32 noundef %818, i32 noundef %819)
  %820 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x607, ptr noundef %x608, i32 noundef %820, i32 noundef -1)
  %821 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x609, ptr noundef %x610, i32 noundef %821, i32 noundef -1)
  %822 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x611, ptr noundef %x612, i32 noundef %822, i32 noundef -1)
  %823 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x613, ptr noundef %x614, i32 noundef %823, i32 noundef -1)
  %824 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x615, ptr noundef %x616, i32 noundef %824, i32 noundef -1)
  %825 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x617, ptr noundef %x618, i32 noundef %825, i32 noundef -1)
  %826 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x619, ptr noundef %x620, i32 noundef %826, i32 noundef -1)
  %827 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x621, ptr noundef %x622, i32 noundef %827, i32 noundef -2)
  %828 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x623, ptr noundef %x624, i32 noundef %828, i32 noundef -1)
  %829 = load i32, ptr %x581, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x625, ptr noundef %x626, i32 noundef %829, i32 noundef -1)
  %830 = load i32, ptr %x624, align 4
  %831 = load i32, ptr %x621, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext 0, i32 noundef %830, i32 noundef %831)
  %832 = load i8, ptr %x628, align 1
  %833 = load i32, ptr %x622, align 4
  %834 = load i32, ptr %x619, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext %832, i32 noundef %833, i32 noundef %834)
  %835 = load i8, ptr %x630, align 1
  %836 = load i32, ptr %x620, align 4
  %837 = load i32, ptr %x617, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %835, i32 noundef %836, i32 noundef %837)
  %838 = load i8, ptr %x632, align 1
  %839 = load i32, ptr %x618, align 4
  %840 = load i32, ptr %x615, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext %838, i32 noundef %839, i32 noundef %840)
  %841 = load i8, ptr %x634, align 1
  %842 = load i32, ptr %x616, align 4
  %843 = load i32, ptr %x613, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %841, i32 noundef %842, i32 noundef %843)
  %844 = load i8, ptr %x636, align 1
  %845 = load i32, ptr %x614, align 4
  %846 = load i32, ptr %x611, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %844, i32 noundef %845, i32 noundef %846)
  %847 = load i8, ptr %x638, align 1
  %848 = load i32, ptr %x612, align 4
  %849 = load i32, ptr %x609, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %847, i32 noundef %848, i32 noundef %849)
  %850 = load i8, ptr %x640, align 1
  %851 = load i32, ptr %x610, align 4
  %852 = load i32, ptr %x607, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %850, i32 noundef %851, i32 noundef %852)
  %853 = load i8, ptr %x642, align 1
  %conv98 = zext i8 %853 to i32
  %854 = load i32, ptr %x608, align 4
  %add99 = add i32 %conv98, %854
  store i32 %add99, ptr %x643, align 4
  %855 = load i32, ptr %x581, align 4
  %856 = load i32, ptr %x625, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x644, ptr noundef %x645, i8 noundef zeroext 0, i32 noundef %855, i32 noundef %856)
  %857 = load i8, ptr %x645, align 1
  %858 = load i32, ptr %x583, align 4
  %859 = load i32, ptr %x626, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x646, ptr noundef %x647, i8 noundef zeroext %857, i32 noundef %858, i32 noundef %859)
  %860 = load i8, ptr %x647, align 1
  %861 = load i32, ptr %x585, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x648, ptr noundef %x649, i8 noundef zeroext %860, i32 noundef %861, i32 noundef 0)
  %862 = load i8, ptr %x649, align 1
  %863 = load i32, ptr %x587, align 4
  %864 = load i32, ptr %x623, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x650, ptr noundef %x651, i8 noundef zeroext %862, i32 noundef %863, i32 noundef %864)
  %865 = load i8, ptr %x651, align 1
  %866 = load i32, ptr %x589, align 4
  %867 = load i32, ptr %x627, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x652, ptr noundef %x653, i8 noundef zeroext %865, i32 noundef %866, i32 noundef %867)
  %868 = load i8, ptr %x653, align 1
  %869 = load i32, ptr %x591, align 4
  %870 = load i32, ptr %x629, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x654, ptr noundef %x655, i8 noundef zeroext %868, i32 noundef %869, i32 noundef %870)
  %871 = load i8, ptr %x655, align 1
  %872 = load i32, ptr %x593, align 4
  %873 = load i32, ptr %x631, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x656, ptr noundef %x657, i8 noundef zeroext %871, i32 noundef %872, i32 noundef %873)
  %874 = load i8, ptr %x657, align 1
  %875 = load i32, ptr %x595, align 4
  %876 = load i32, ptr %x633, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x658, ptr noundef %x659, i8 noundef zeroext %874, i32 noundef %875, i32 noundef %876)
  %877 = load i8, ptr %x659, align 1
  %878 = load i32, ptr %x597, align 4
  %879 = load i32, ptr %x635, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x660, ptr noundef %x661, i8 noundef zeroext %877, i32 noundef %878, i32 noundef %879)
  %880 = load i8, ptr %x661, align 1
  %881 = load i32, ptr %x599, align 4
  %882 = load i32, ptr %x637, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x662, ptr noundef %x663, i8 noundef zeroext %880, i32 noundef %881, i32 noundef %882)
  %883 = load i8, ptr %x663, align 1
  %884 = load i32, ptr %x601, align 4
  %885 = load i32, ptr %x639, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x664, ptr noundef %x665, i8 noundef zeroext %883, i32 noundef %884, i32 noundef %885)
  %886 = load i8, ptr %x665, align 1
  %887 = load i32, ptr %x603, align 4
  %888 = load i32, ptr %x641, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x666, ptr noundef %x667, i8 noundef zeroext %886, i32 noundef %887, i32 noundef %888)
  %889 = load i8, ptr %x667, align 1
  %890 = load i32, ptr %x605, align 4
  %891 = load i32, ptr %x643, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x668, ptr noundef %x669, i8 noundef zeroext %889, i32 noundef %890, i32 noundef %891)
  %892 = load i8, ptr %x669, align 1
  %conv100 = zext i8 %892 to i32
  %893 = load i8, ptr %x606, align 1
  %conv101 = zext i8 %893 to i32
  %add102 = add i32 %conv100, %conv101
  store i32 %add102, ptr %x670, align 4
  %894 = load i32, ptr %x5, align 4
  %895 = load ptr, ptr %arg2.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %895, i64 11
  %896 = load i32, ptr %arrayidx103, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x671, ptr noundef %x672, i32 noundef %894, i32 noundef %896)
  %897 = load i32, ptr %x5, align 4
  %898 = load ptr, ptr %arg2.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %898, i64 10
  %899 = load i32, ptr %arrayidx104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x673, ptr noundef %x674, i32 noundef %897, i32 noundef %899)
  %900 = load i32, ptr %x5, align 4
  %901 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %901, i64 9
  %902 = load i32, ptr %arrayidx105, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x675, ptr noundef %x676, i32 noundef %900, i32 noundef %902)
  %903 = load i32, ptr %x5, align 4
  %904 = load ptr, ptr %arg2.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %904, i64 8
  %905 = load i32, ptr %arrayidx106, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x677, ptr noundef %x678, i32 noundef %903, i32 noundef %905)
  %906 = load i32, ptr %x5, align 4
  %907 = load ptr, ptr %arg2.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %907, i64 7
  %908 = load i32, ptr %arrayidx107, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x679, ptr noundef %x680, i32 noundef %906, i32 noundef %908)
  %909 = load i32, ptr %x5, align 4
  %910 = load ptr, ptr %arg2.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %910, i64 6
  %911 = load i32, ptr %arrayidx108, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x681, ptr noundef %x682, i32 noundef %909, i32 noundef %911)
  %912 = load i32, ptr %x5, align 4
  %913 = load ptr, ptr %arg2.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %913, i64 5
  %914 = load i32, ptr %arrayidx109, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x683, ptr noundef %x684, i32 noundef %912, i32 noundef %914)
  %915 = load i32, ptr %x5, align 4
  %916 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %916, i64 4
  %917 = load i32, ptr %arrayidx110, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x685, ptr noundef %x686, i32 noundef %915, i32 noundef %917)
  %918 = load i32, ptr %x5, align 4
  %919 = load ptr, ptr %arg2.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %919, i64 3
  %920 = load i32, ptr %arrayidx111, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x687, ptr noundef %x688, i32 noundef %918, i32 noundef %920)
  %921 = load i32, ptr %x5, align 4
  %922 = load ptr, ptr %arg2.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %922, i64 2
  %923 = load i32, ptr %arrayidx112, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x689, ptr noundef %x690, i32 noundef %921, i32 noundef %923)
  %924 = load i32, ptr %x5, align 4
  %925 = load ptr, ptr %arg2.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %925, i64 1
  %926 = load i32, ptr %arrayidx113, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x691, ptr noundef %x692, i32 noundef %924, i32 noundef %926)
  %927 = load i32, ptr %x5, align 4
  %928 = load ptr, ptr %arg2.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %928, i64 0
  %929 = load i32, ptr %arrayidx114, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x693, ptr noundef %x694, i32 noundef %927, i32 noundef %929)
  %930 = load i32, ptr %x694, align 4
  %931 = load i32, ptr %x691, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext 0, i32 noundef %930, i32 noundef %931)
  %932 = load i8, ptr %x696, align 1
  %933 = load i32, ptr %x692, align 4
  %934 = load i32, ptr %x689, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x697, ptr noundef %x698, i8 noundef zeroext %932, i32 noundef %933, i32 noundef %934)
  %935 = load i8, ptr %x698, align 1
  %936 = load i32, ptr %x690, align 4
  %937 = load i32, ptr %x687, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x699, ptr noundef %x700, i8 noundef zeroext %935, i32 noundef %936, i32 noundef %937)
  %938 = load i8, ptr %x700, align 1
  %939 = load i32, ptr %x688, align 4
  %940 = load i32, ptr %x685, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x701, ptr noundef %x702, i8 noundef zeroext %938, i32 noundef %939, i32 noundef %940)
  %941 = load i8, ptr %x702, align 1
  %942 = load i32, ptr %x686, align 4
  %943 = load i32, ptr %x683, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x703, ptr noundef %x704, i8 noundef zeroext %941, i32 noundef %942, i32 noundef %943)
  %944 = load i8, ptr %x704, align 1
  %945 = load i32, ptr %x684, align 4
  %946 = load i32, ptr %x681, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x705, ptr noundef %x706, i8 noundef zeroext %944, i32 noundef %945, i32 noundef %946)
  %947 = load i8, ptr %x706, align 1
  %948 = load i32, ptr %x682, align 4
  %949 = load i32, ptr %x679, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x707, ptr noundef %x708, i8 noundef zeroext %947, i32 noundef %948, i32 noundef %949)
  %950 = load i8, ptr %x708, align 1
  %951 = load i32, ptr %x680, align 4
  %952 = load i32, ptr %x677, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x709, ptr noundef %x710, i8 noundef zeroext %950, i32 noundef %951, i32 noundef %952)
  %953 = load i8, ptr %x710, align 1
  %954 = load i32, ptr %x678, align 4
  %955 = load i32, ptr %x675, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x711, ptr noundef %x712, i8 noundef zeroext %953, i32 noundef %954, i32 noundef %955)
  %956 = load i8, ptr %x712, align 1
  %957 = load i32, ptr %x676, align 4
  %958 = load i32, ptr %x673, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x713, ptr noundef %x714, i8 noundef zeroext %956, i32 noundef %957, i32 noundef %958)
  %959 = load i8, ptr %x714, align 1
  %960 = load i32, ptr %x674, align 4
  %961 = load i32, ptr %x671, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x715, ptr noundef %x716, i8 noundef zeroext %959, i32 noundef %960, i32 noundef %961)
  %962 = load i8, ptr %x716, align 1
  %conv115 = zext i8 %962 to i32
  %963 = load i32, ptr %x672, align 4
  %add116 = add i32 %conv115, %963
  store i32 %add116, ptr %x717, align 4
  %964 = load i32, ptr %x646, align 4
  %965 = load i32, ptr %x693, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x718, ptr noundef %x719, i8 noundef zeroext 0, i32 noundef %964, i32 noundef %965)
  %966 = load i8, ptr %x719, align 1
  %967 = load i32, ptr %x648, align 4
  %968 = load i32, ptr %x695, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x720, ptr noundef %x721, i8 noundef zeroext %966, i32 noundef %967, i32 noundef %968)
  %969 = load i8, ptr %x721, align 1
  %970 = load i32, ptr %x650, align 4
  %971 = load i32, ptr %x697, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x722, ptr noundef %x723, i8 noundef zeroext %969, i32 noundef %970, i32 noundef %971)
  %972 = load i8, ptr %x723, align 1
  %973 = load i32, ptr %x652, align 4
  %974 = load i32, ptr %x699, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x724, ptr noundef %x725, i8 noundef zeroext %972, i32 noundef %973, i32 noundef %974)
  %975 = load i8, ptr %x725, align 1
  %976 = load i32, ptr %x654, align 4
  %977 = load i32, ptr %x701, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x726, ptr noundef %x727, i8 noundef zeroext %975, i32 noundef %976, i32 noundef %977)
  %978 = load i8, ptr %x727, align 1
  %979 = load i32, ptr %x656, align 4
  %980 = load i32, ptr %x703, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x728, ptr noundef %x729, i8 noundef zeroext %978, i32 noundef %979, i32 noundef %980)
  %981 = load i8, ptr %x729, align 1
  %982 = load i32, ptr %x658, align 4
  %983 = load i32, ptr %x705, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x730, ptr noundef %x731, i8 noundef zeroext %981, i32 noundef %982, i32 noundef %983)
  %984 = load i8, ptr %x731, align 1
  %985 = load i32, ptr %x660, align 4
  %986 = load i32, ptr %x707, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x732, ptr noundef %x733, i8 noundef zeroext %984, i32 noundef %985, i32 noundef %986)
  %987 = load i8, ptr %x733, align 1
  %988 = load i32, ptr %x662, align 4
  %989 = load i32, ptr %x709, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x734, ptr noundef %x735, i8 noundef zeroext %987, i32 noundef %988, i32 noundef %989)
  %990 = load i8, ptr %x735, align 1
  %991 = load i32, ptr %x664, align 4
  %992 = load i32, ptr %x711, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x736, ptr noundef %x737, i8 noundef zeroext %990, i32 noundef %991, i32 noundef %992)
  %993 = load i8, ptr %x737, align 1
  %994 = load i32, ptr %x666, align 4
  %995 = load i32, ptr %x713, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x738, ptr noundef %x739, i8 noundef zeroext %993, i32 noundef %994, i32 noundef %995)
  %996 = load i8, ptr %x739, align 1
  %997 = load i32, ptr %x668, align 4
  %998 = load i32, ptr %x715, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x740, ptr noundef %x741, i8 noundef zeroext %996, i32 noundef %997, i32 noundef %998)
  %999 = load i8, ptr %x741, align 1
  %1000 = load i32, ptr %x670, align 4
  %1001 = load i32, ptr %x717, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x742, ptr noundef %x743, i8 noundef zeroext %999, i32 noundef %1000, i32 noundef %1001)
  %1002 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x744, ptr noundef %x745, i32 noundef %1002, i32 noundef -1)
  %1003 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x746, ptr noundef %x747, i32 noundef %1003, i32 noundef -1)
  %1004 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x748, ptr noundef %x749, i32 noundef %1004, i32 noundef -1)
  %1005 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x750, ptr noundef %x751, i32 noundef %1005, i32 noundef -1)
  %1006 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x752, ptr noundef %x753, i32 noundef %1006, i32 noundef -1)
  %1007 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x754, ptr noundef %x755, i32 noundef %1007, i32 noundef -1)
  %1008 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x756, ptr noundef %x757, i32 noundef %1008, i32 noundef -1)
  %1009 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x758, ptr noundef %x759, i32 noundef %1009, i32 noundef -2)
  %1010 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x760, ptr noundef %x761, i32 noundef %1010, i32 noundef -1)
  %1011 = load i32, ptr %x718, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x762, ptr noundef %x763, i32 noundef %1011, i32 noundef -1)
  %1012 = load i32, ptr %x761, align 4
  %1013 = load i32, ptr %x758, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x764, ptr noundef %x765, i8 noundef zeroext 0, i32 noundef %1012, i32 noundef %1013)
  %1014 = load i8, ptr %x765, align 1
  %1015 = load i32, ptr %x759, align 4
  %1016 = load i32, ptr %x756, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x766, ptr noundef %x767, i8 noundef zeroext %1014, i32 noundef %1015, i32 noundef %1016)
  %1017 = load i8, ptr %x767, align 1
  %1018 = load i32, ptr %x757, align 4
  %1019 = load i32, ptr %x754, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x768, ptr noundef %x769, i8 noundef zeroext %1017, i32 noundef %1018, i32 noundef %1019)
  %1020 = load i8, ptr %x769, align 1
  %1021 = load i32, ptr %x755, align 4
  %1022 = load i32, ptr %x752, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x770, ptr noundef %x771, i8 noundef zeroext %1020, i32 noundef %1021, i32 noundef %1022)
  %1023 = load i8, ptr %x771, align 1
  %1024 = load i32, ptr %x753, align 4
  %1025 = load i32, ptr %x750, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x772, ptr noundef %x773, i8 noundef zeroext %1023, i32 noundef %1024, i32 noundef %1025)
  %1026 = load i8, ptr %x773, align 1
  %1027 = load i32, ptr %x751, align 4
  %1028 = load i32, ptr %x748, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x774, ptr noundef %x775, i8 noundef zeroext %1026, i32 noundef %1027, i32 noundef %1028)
  %1029 = load i8, ptr %x775, align 1
  %1030 = load i32, ptr %x749, align 4
  %1031 = load i32, ptr %x746, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x776, ptr noundef %x777, i8 noundef zeroext %1029, i32 noundef %1030, i32 noundef %1031)
  %1032 = load i8, ptr %x777, align 1
  %1033 = load i32, ptr %x747, align 4
  %1034 = load i32, ptr %x744, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x778, ptr noundef %x779, i8 noundef zeroext %1032, i32 noundef %1033, i32 noundef %1034)
  %1035 = load i8, ptr %x779, align 1
  %conv117 = zext i8 %1035 to i32
  %1036 = load i32, ptr %x745, align 4
  %add118 = add i32 %conv117, %1036
  store i32 %add118, ptr %x780, align 4
  %1037 = load i32, ptr %x718, align 4
  %1038 = load i32, ptr %x762, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x781, ptr noundef %x782, i8 noundef zeroext 0, i32 noundef %1037, i32 noundef %1038)
  %1039 = load i8, ptr %x782, align 1
  %1040 = load i32, ptr %x720, align 4
  %1041 = load i32, ptr %x763, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x783, ptr noundef %x784, i8 noundef zeroext %1039, i32 noundef %1040, i32 noundef %1041)
  %1042 = load i8, ptr %x784, align 1
  %1043 = load i32, ptr %x722, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x785, ptr noundef %x786, i8 noundef zeroext %1042, i32 noundef %1043, i32 noundef 0)
  %1044 = load i8, ptr %x786, align 1
  %1045 = load i32, ptr %x724, align 4
  %1046 = load i32, ptr %x760, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x787, ptr noundef %x788, i8 noundef zeroext %1044, i32 noundef %1045, i32 noundef %1046)
  %1047 = load i8, ptr %x788, align 1
  %1048 = load i32, ptr %x726, align 4
  %1049 = load i32, ptr %x764, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x789, ptr noundef %x790, i8 noundef zeroext %1047, i32 noundef %1048, i32 noundef %1049)
  %1050 = load i8, ptr %x790, align 1
  %1051 = load i32, ptr %x728, align 4
  %1052 = load i32, ptr %x766, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x791, ptr noundef %x792, i8 noundef zeroext %1050, i32 noundef %1051, i32 noundef %1052)
  %1053 = load i8, ptr %x792, align 1
  %1054 = load i32, ptr %x730, align 4
  %1055 = load i32, ptr %x768, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x793, ptr noundef %x794, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i8, ptr %x794, align 1
  %1057 = load i32, ptr %x732, align 4
  %1058 = load i32, ptr %x770, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x795, ptr noundef %x796, i8 noundef zeroext %1056, i32 noundef %1057, i32 noundef %1058)
  %1059 = load i8, ptr %x796, align 1
  %1060 = load i32, ptr %x734, align 4
  %1061 = load i32, ptr %x772, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x797, ptr noundef %x798, i8 noundef zeroext %1059, i32 noundef %1060, i32 noundef %1061)
  %1062 = load i8, ptr %x798, align 1
  %1063 = load i32, ptr %x736, align 4
  %1064 = load i32, ptr %x774, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x799, ptr noundef %x800, i8 noundef zeroext %1062, i32 noundef %1063, i32 noundef %1064)
  %1065 = load i8, ptr %x800, align 1
  %1066 = load i32, ptr %x738, align 4
  %1067 = load i32, ptr %x776, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x801, ptr noundef %x802, i8 noundef zeroext %1065, i32 noundef %1066, i32 noundef %1067)
  %1068 = load i8, ptr %x802, align 1
  %1069 = load i32, ptr %x740, align 4
  %1070 = load i32, ptr %x778, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x803, ptr noundef %x804, i8 noundef zeroext %1068, i32 noundef %1069, i32 noundef %1070)
  %1071 = load i8, ptr %x804, align 1
  %1072 = load i32, ptr %x742, align 4
  %1073 = load i32, ptr %x780, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x805, ptr noundef %x806, i8 noundef zeroext %1071, i32 noundef %1072, i32 noundef %1073)
  %1074 = load i8, ptr %x806, align 1
  %conv119 = zext i8 %1074 to i32
  %1075 = load i8, ptr %x743, align 1
  %conv120 = zext i8 %1075 to i32
  %add121 = add i32 %conv119, %conv120
  store i32 %add121, ptr %x807, align 4
  %1076 = load i32, ptr %x6, align 4
  %1077 = load ptr, ptr %arg2.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %1077, i64 11
  %1078 = load i32, ptr %arrayidx122, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x808, ptr noundef %x809, i32 noundef %1076, i32 noundef %1078)
  %1079 = load i32, ptr %x6, align 4
  %1080 = load ptr, ptr %arg2.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %1080, i64 10
  %1081 = load i32, ptr %arrayidx123, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x810, ptr noundef %x811, i32 noundef %1079, i32 noundef %1081)
  %1082 = load i32, ptr %x6, align 4
  %1083 = load ptr, ptr %arg2.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %1083, i64 9
  %1084 = load i32, ptr %arrayidx124, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x812, ptr noundef %x813, i32 noundef %1082, i32 noundef %1084)
  %1085 = load i32, ptr %x6, align 4
  %1086 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %1086, i64 8
  %1087 = load i32, ptr %arrayidx125, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x814, ptr noundef %x815, i32 noundef %1085, i32 noundef %1087)
  %1088 = load i32, ptr %x6, align 4
  %1089 = load ptr, ptr %arg2.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %1089, i64 7
  %1090 = load i32, ptr %arrayidx126, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x816, ptr noundef %x817, i32 noundef %1088, i32 noundef %1090)
  %1091 = load i32, ptr %x6, align 4
  %1092 = load ptr, ptr %arg2.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %1092, i64 6
  %1093 = load i32, ptr %arrayidx127, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x818, ptr noundef %x819, i32 noundef %1091, i32 noundef %1093)
  %1094 = load i32, ptr %x6, align 4
  %1095 = load ptr, ptr %arg2.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %1095, i64 5
  %1096 = load i32, ptr %arrayidx128, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x820, ptr noundef %x821, i32 noundef %1094, i32 noundef %1096)
  %1097 = load i32, ptr %x6, align 4
  %1098 = load ptr, ptr %arg2.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %1098, i64 4
  %1099 = load i32, ptr %arrayidx129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x822, ptr noundef %x823, i32 noundef %1097, i32 noundef %1099)
  %1100 = load i32, ptr %x6, align 4
  %1101 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %1101, i64 3
  %1102 = load i32, ptr %arrayidx130, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x824, ptr noundef %x825, i32 noundef %1100, i32 noundef %1102)
  %1103 = load i32, ptr %x6, align 4
  %1104 = load ptr, ptr %arg2.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %1104, i64 2
  %1105 = load i32, ptr %arrayidx131, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x826, ptr noundef %x827, i32 noundef %1103, i32 noundef %1105)
  %1106 = load i32, ptr %x6, align 4
  %1107 = load ptr, ptr %arg2.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %1107, i64 1
  %1108 = load i32, ptr %arrayidx132, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x828, ptr noundef %x829, i32 noundef %1106, i32 noundef %1108)
  %1109 = load i32, ptr %x6, align 4
  %1110 = load ptr, ptr %arg2.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %1110, i64 0
  %1111 = load i32, ptr %arrayidx133, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x830, ptr noundef %x831, i32 noundef %1109, i32 noundef %1111)
  %1112 = load i32, ptr %x831, align 4
  %1113 = load i32, ptr %x828, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x832, ptr noundef %x833, i8 noundef zeroext 0, i32 noundef %1112, i32 noundef %1113)
  %1114 = load i8, ptr %x833, align 1
  %1115 = load i32, ptr %x829, align 4
  %1116 = load i32, ptr %x826, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x834, ptr noundef %x835, i8 noundef zeroext %1114, i32 noundef %1115, i32 noundef %1116)
  %1117 = load i8, ptr %x835, align 1
  %1118 = load i32, ptr %x827, align 4
  %1119 = load i32, ptr %x824, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x836, ptr noundef %x837, i8 noundef zeroext %1117, i32 noundef %1118, i32 noundef %1119)
  %1120 = load i8, ptr %x837, align 1
  %1121 = load i32, ptr %x825, align 4
  %1122 = load i32, ptr %x822, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x838, ptr noundef %x839, i8 noundef zeroext %1120, i32 noundef %1121, i32 noundef %1122)
  %1123 = load i8, ptr %x839, align 1
  %1124 = load i32, ptr %x823, align 4
  %1125 = load i32, ptr %x820, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x840, ptr noundef %x841, i8 noundef zeroext %1123, i32 noundef %1124, i32 noundef %1125)
  %1126 = load i8, ptr %x841, align 1
  %1127 = load i32, ptr %x821, align 4
  %1128 = load i32, ptr %x818, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x842, ptr noundef %x843, i8 noundef zeroext %1126, i32 noundef %1127, i32 noundef %1128)
  %1129 = load i8, ptr %x843, align 1
  %1130 = load i32, ptr %x819, align 4
  %1131 = load i32, ptr %x816, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x844, ptr noundef %x845, i8 noundef zeroext %1129, i32 noundef %1130, i32 noundef %1131)
  %1132 = load i8, ptr %x845, align 1
  %1133 = load i32, ptr %x817, align 4
  %1134 = load i32, ptr %x814, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x846, ptr noundef %x847, i8 noundef zeroext %1132, i32 noundef %1133, i32 noundef %1134)
  %1135 = load i8, ptr %x847, align 1
  %1136 = load i32, ptr %x815, align 4
  %1137 = load i32, ptr %x812, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x848, ptr noundef %x849, i8 noundef zeroext %1135, i32 noundef %1136, i32 noundef %1137)
  %1138 = load i8, ptr %x849, align 1
  %1139 = load i32, ptr %x813, align 4
  %1140 = load i32, ptr %x810, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x850, ptr noundef %x851, i8 noundef zeroext %1138, i32 noundef %1139, i32 noundef %1140)
  %1141 = load i8, ptr %x851, align 1
  %1142 = load i32, ptr %x811, align 4
  %1143 = load i32, ptr %x808, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x852, ptr noundef %x853, i8 noundef zeroext %1141, i32 noundef %1142, i32 noundef %1143)
  %1144 = load i8, ptr %x853, align 1
  %conv134 = zext i8 %1144 to i32
  %1145 = load i32, ptr %x809, align 4
  %add135 = add i32 %conv134, %1145
  store i32 %add135, ptr %x854, align 4
  %1146 = load i32, ptr %x783, align 4
  %1147 = load i32, ptr %x830, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x855, ptr noundef %x856, i8 noundef zeroext 0, i32 noundef %1146, i32 noundef %1147)
  %1148 = load i8, ptr %x856, align 1
  %1149 = load i32, ptr %x785, align 4
  %1150 = load i32, ptr %x832, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x857, ptr noundef %x858, i8 noundef zeroext %1148, i32 noundef %1149, i32 noundef %1150)
  %1151 = load i8, ptr %x858, align 1
  %1152 = load i32, ptr %x787, align 4
  %1153 = load i32, ptr %x834, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x859, ptr noundef %x860, i8 noundef zeroext %1151, i32 noundef %1152, i32 noundef %1153)
  %1154 = load i8, ptr %x860, align 1
  %1155 = load i32, ptr %x789, align 4
  %1156 = load i32, ptr %x836, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x861, ptr noundef %x862, i8 noundef zeroext %1154, i32 noundef %1155, i32 noundef %1156)
  %1157 = load i8, ptr %x862, align 1
  %1158 = load i32, ptr %x791, align 4
  %1159 = load i32, ptr %x838, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x863, ptr noundef %x864, i8 noundef zeroext %1157, i32 noundef %1158, i32 noundef %1159)
  %1160 = load i8, ptr %x864, align 1
  %1161 = load i32, ptr %x793, align 4
  %1162 = load i32, ptr %x840, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x865, ptr noundef %x866, i8 noundef zeroext %1160, i32 noundef %1161, i32 noundef %1162)
  %1163 = load i8, ptr %x866, align 1
  %1164 = load i32, ptr %x795, align 4
  %1165 = load i32, ptr %x842, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x867, ptr noundef %x868, i8 noundef zeroext %1163, i32 noundef %1164, i32 noundef %1165)
  %1166 = load i8, ptr %x868, align 1
  %1167 = load i32, ptr %x797, align 4
  %1168 = load i32, ptr %x844, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x869, ptr noundef %x870, i8 noundef zeroext %1166, i32 noundef %1167, i32 noundef %1168)
  %1169 = load i8, ptr %x870, align 1
  %1170 = load i32, ptr %x799, align 4
  %1171 = load i32, ptr %x846, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x871, ptr noundef %x872, i8 noundef zeroext %1169, i32 noundef %1170, i32 noundef %1171)
  %1172 = load i8, ptr %x872, align 1
  %1173 = load i32, ptr %x801, align 4
  %1174 = load i32, ptr %x848, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x873, ptr noundef %x874, i8 noundef zeroext %1172, i32 noundef %1173, i32 noundef %1174)
  %1175 = load i8, ptr %x874, align 1
  %1176 = load i32, ptr %x803, align 4
  %1177 = load i32, ptr %x850, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x875, ptr noundef %x876, i8 noundef zeroext %1175, i32 noundef %1176, i32 noundef %1177)
  %1178 = load i8, ptr %x876, align 1
  %1179 = load i32, ptr %x805, align 4
  %1180 = load i32, ptr %x852, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x877, ptr noundef %x878, i8 noundef zeroext %1178, i32 noundef %1179, i32 noundef %1180)
  %1181 = load i8, ptr %x878, align 1
  %1182 = load i32, ptr %x807, align 4
  %1183 = load i32, ptr %x854, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x879, ptr noundef %x880, i8 noundef zeroext %1181, i32 noundef %1182, i32 noundef %1183)
  %1184 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x881, ptr noundef %x882, i32 noundef %1184, i32 noundef -1)
  %1185 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x883, ptr noundef %x884, i32 noundef %1185, i32 noundef -1)
  %1186 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x885, ptr noundef %x886, i32 noundef %1186, i32 noundef -1)
  %1187 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x887, ptr noundef %x888, i32 noundef %1187, i32 noundef -1)
  %1188 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x889, ptr noundef %x890, i32 noundef %1188, i32 noundef -1)
  %1189 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x891, ptr noundef %x892, i32 noundef %1189, i32 noundef -1)
  %1190 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x893, ptr noundef %x894, i32 noundef %1190, i32 noundef -1)
  %1191 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x895, ptr noundef %x896, i32 noundef %1191, i32 noundef -2)
  %1192 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x897, ptr noundef %x898, i32 noundef %1192, i32 noundef -1)
  %1193 = load i32, ptr %x855, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x899, ptr noundef %x900, i32 noundef %1193, i32 noundef -1)
  %1194 = load i32, ptr %x898, align 4
  %1195 = load i32, ptr %x895, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x901, ptr noundef %x902, i8 noundef zeroext 0, i32 noundef %1194, i32 noundef %1195)
  %1196 = load i8, ptr %x902, align 1
  %1197 = load i32, ptr %x896, align 4
  %1198 = load i32, ptr %x893, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x903, ptr noundef %x904, i8 noundef zeroext %1196, i32 noundef %1197, i32 noundef %1198)
  %1199 = load i8, ptr %x904, align 1
  %1200 = load i32, ptr %x894, align 4
  %1201 = load i32, ptr %x891, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x905, ptr noundef %x906, i8 noundef zeroext %1199, i32 noundef %1200, i32 noundef %1201)
  %1202 = load i8, ptr %x906, align 1
  %1203 = load i32, ptr %x892, align 4
  %1204 = load i32, ptr %x889, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x907, ptr noundef %x908, i8 noundef zeroext %1202, i32 noundef %1203, i32 noundef %1204)
  %1205 = load i8, ptr %x908, align 1
  %1206 = load i32, ptr %x890, align 4
  %1207 = load i32, ptr %x887, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x909, ptr noundef %x910, i8 noundef zeroext %1205, i32 noundef %1206, i32 noundef %1207)
  %1208 = load i8, ptr %x910, align 1
  %1209 = load i32, ptr %x888, align 4
  %1210 = load i32, ptr %x885, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x911, ptr noundef %x912, i8 noundef zeroext %1208, i32 noundef %1209, i32 noundef %1210)
  %1211 = load i8, ptr %x912, align 1
  %1212 = load i32, ptr %x886, align 4
  %1213 = load i32, ptr %x883, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x913, ptr noundef %x914, i8 noundef zeroext %1211, i32 noundef %1212, i32 noundef %1213)
  %1214 = load i8, ptr %x914, align 1
  %1215 = load i32, ptr %x884, align 4
  %1216 = load i32, ptr %x881, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x915, ptr noundef %x916, i8 noundef zeroext %1214, i32 noundef %1215, i32 noundef %1216)
  %1217 = load i8, ptr %x916, align 1
  %conv136 = zext i8 %1217 to i32
  %1218 = load i32, ptr %x882, align 4
  %add137 = add i32 %conv136, %1218
  store i32 %add137, ptr %x917, align 4
  %1219 = load i32, ptr %x855, align 4
  %1220 = load i32, ptr %x899, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x918, ptr noundef %x919, i8 noundef zeroext 0, i32 noundef %1219, i32 noundef %1220)
  %1221 = load i8, ptr %x919, align 1
  %1222 = load i32, ptr %x857, align 4
  %1223 = load i32, ptr %x900, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x920, ptr noundef %x921, i8 noundef zeroext %1221, i32 noundef %1222, i32 noundef %1223)
  %1224 = load i8, ptr %x921, align 1
  %1225 = load i32, ptr %x859, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x922, ptr noundef %x923, i8 noundef zeroext %1224, i32 noundef %1225, i32 noundef 0)
  %1226 = load i8, ptr %x923, align 1
  %1227 = load i32, ptr %x861, align 4
  %1228 = load i32, ptr %x897, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x924, ptr noundef %x925, i8 noundef zeroext %1226, i32 noundef %1227, i32 noundef %1228)
  %1229 = load i8, ptr %x925, align 1
  %1230 = load i32, ptr %x863, align 4
  %1231 = load i32, ptr %x901, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x926, ptr noundef %x927, i8 noundef zeroext %1229, i32 noundef %1230, i32 noundef %1231)
  %1232 = load i8, ptr %x927, align 1
  %1233 = load i32, ptr %x865, align 4
  %1234 = load i32, ptr %x903, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x928, ptr noundef %x929, i8 noundef zeroext %1232, i32 noundef %1233, i32 noundef %1234)
  %1235 = load i8, ptr %x929, align 1
  %1236 = load i32, ptr %x867, align 4
  %1237 = load i32, ptr %x905, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x930, ptr noundef %x931, i8 noundef zeroext %1235, i32 noundef %1236, i32 noundef %1237)
  %1238 = load i8, ptr %x931, align 1
  %1239 = load i32, ptr %x869, align 4
  %1240 = load i32, ptr %x907, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x932, ptr noundef %x933, i8 noundef zeroext %1238, i32 noundef %1239, i32 noundef %1240)
  %1241 = load i8, ptr %x933, align 1
  %1242 = load i32, ptr %x871, align 4
  %1243 = load i32, ptr %x909, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x934, ptr noundef %x935, i8 noundef zeroext %1241, i32 noundef %1242, i32 noundef %1243)
  %1244 = load i8, ptr %x935, align 1
  %1245 = load i32, ptr %x873, align 4
  %1246 = load i32, ptr %x911, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x936, ptr noundef %x937, i8 noundef zeroext %1244, i32 noundef %1245, i32 noundef %1246)
  %1247 = load i8, ptr %x937, align 1
  %1248 = load i32, ptr %x875, align 4
  %1249 = load i32, ptr %x913, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x938, ptr noundef %x939, i8 noundef zeroext %1247, i32 noundef %1248, i32 noundef %1249)
  %1250 = load i8, ptr %x939, align 1
  %1251 = load i32, ptr %x877, align 4
  %1252 = load i32, ptr %x915, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x940, ptr noundef %x941, i8 noundef zeroext %1250, i32 noundef %1251, i32 noundef %1252)
  %1253 = load i8, ptr %x941, align 1
  %1254 = load i32, ptr %x879, align 4
  %1255 = load i32, ptr %x917, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x942, ptr noundef %x943, i8 noundef zeroext %1253, i32 noundef %1254, i32 noundef %1255)
  %1256 = load i8, ptr %x943, align 1
  %conv138 = zext i8 %1256 to i32
  %1257 = load i8, ptr %x880, align 1
  %conv139 = zext i8 %1257 to i32
  %add140 = add i32 %conv138, %conv139
  store i32 %add140, ptr %x944, align 4
  %1258 = load i32, ptr %x7, align 4
  %1259 = load ptr, ptr %arg2.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %1259, i64 11
  %1260 = load i32, ptr %arrayidx141, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x945, ptr noundef %x946, i32 noundef %1258, i32 noundef %1260)
  %1261 = load i32, ptr %x7, align 4
  %1262 = load ptr, ptr %arg2.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %1262, i64 10
  %1263 = load i32, ptr %arrayidx142, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x947, ptr noundef %x948, i32 noundef %1261, i32 noundef %1263)
  %1264 = load i32, ptr %x7, align 4
  %1265 = load ptr, ptr %arg2.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %1265, i64 9
  %1266 = load i32, ptr %arrayidx143, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x949, ptr noundef %x950, i32 noundef %1264, i32 noundef %1266)
  %1267 = load i32, ptr %x7, align 4
  %1268 = load ptr, ptr %arg2.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %1268, i64 8
  %1269 = load i32, ptr %arrayidx144, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x951, ptr noundef %x952, i32 noundef %1267, i32 noundef %1269)
  %1270 = load i32, ptr %x7, align 4
  %1271 = load ptr, ptr %arg2.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %1271, i64 7
  %1272 = load i32, ptr %arrayidx145, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x953, ptr noundef %x954, i32 noundef %1270, i32 noundef %1272)
  %1273 = load i32, ptr %x7, align 4
  %1274 = load ptr, ptr %arg2.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %1274, i64 6
  %1275 = load i32, ptr %arrayidx146, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x955, ptr noundef %x956, i32 noundef %1273, i32 noundef %1275)
  %1276 = load i32, ptr %x7, align 4
  %1277 = load ptr, ptr %arg2.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %1277, i64 5
  %1278 = load i32, ptr %arrayidx147, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x957, ptr noundef %x958, i32 noundef %1276, i32 noundef %1278)
  %1279 = load i32, ptr %x7, align 4
  %1280 = load ptr, ptr %arg2.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %1280, i64 4
  %1281 = load i32, ptr %arrayidx148, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x959, ptr noundef %x960, i32 noundef %1279, i32 noundef %1281)
  %1282 = load i32, ptr %x7, align 4
  %1283 = load ptr, ptr %arg2.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %1283, i64 3
  %1284 = load i32, ptr %arrayidx149, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x961, ptr noundef %x962, i32 noundef %1282, i32 noundef %1284)
  %1285 = load i32, ptr %x7, align 4
  %1286 = load ptr, ptr %arg2.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %1286, i64 2
  %1287 = load i32, ptr %arrayidx150, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x963, ptr noundef %x964, i32 noundef %1285, i32 noundef %1287)
  %1288 = load i32, ptr %x7, align 4
  %1289 = load ptr, ptr %arg2.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %1289, i64 1
  %1290 = load i32, ptr %arrayidx151, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x965, ptr noundef %x966, i32 noundef %1288, i32 noundef %1290)
  %1291 = load i32, ptr %x7, align 4
  %1292 = load ptr, ptr %arg2.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %1292, i64 0
  %1293 = load i32, ptr %arrayidx152, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x967, ptr noundef %x968, i32 noundef %1291, i32 noundef %1293)
  %1294 = load i32, ptr %x968, align 4
  %1295 = load i32, ptr %x965, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x969, ptr noundef %x970, i8 noundef zeroext 0, i32 noundef %1294, i32 noundef %1295)
  %1296 = load i8, ptr %x970, align 1
  %1297 = load i32, ptr %x966, align 4
  %1298 = load i32, ptr %x963, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x971, ptr noundef %x972, i8 noundef zeroext %1296, i32 noundef %1297, i32 noundef %1298)
  %1299 = load i8, ptr %x972, align 1
  %1300 = load i32, ptr %x964, align 4
  %1301 = load i32, ptr %x961, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x973, ptr noundef %x974, i8 noundef zeroext %1299, i32 noundef %1300, i32 noundef %1301)
  %1302 = load i8, ptr %x974, align 1
  %1303 = load i32, ptr %x962, align 4
  %1304 = load i32, ptr %x959, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x975, ptr noundef %x976, i8 noundef zeroext %1302, i32 noundef %1303, i32 noundef %1304)
  %1305 = load i8, ptr %x976, align 1
  %1306 = load i32, ptr %x960, align 4
  %1307 = load i32, ptr %x957, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x977, ptr noundef %x978, i8 noundef zeroext %1305, i32 noundef %1306, i32 noundef %1307)
  %1308 = load i8, ptr %x978, align 1
  %1309 = load i32, ptr %x958, align 4
  %1310 = load i32, ptr %x955, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x979, ptr noundef %x980, i8 noundef zeroext %1308, i32 noundef %1309, i32 noundef %1310)
  %1311 = load i8, ptr %x980, align 1
  %1312 = load i32, ptr %x956, align 4
  %1313 = load i32, ptr %x953, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x981, ptr noundef %x982, i8 noundef zeroext %1311, i32 noundef %1312, i32 noundef %1313)
  %1314 = load i8, ptr %x982, align 1
  %1315 = load i32, ptr %x954, align 4
  %1316 = load i32, ptr %x951, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x983, ptr noundef %x984, i8 noundef zeroext %1314, i32 noundef %1315, i32 noundef %1316)
  %1317 = load i8, ptr %x984, align 1
  %1318 = load i32, ptr %x952, align 4
  %1319 = load i32, ptr %x949, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x985, ptr noundef %x986, i8 noundef zeroext %1317, i32 noundef %1318, i32 noundef %1319)
  %1320 = load i8, ptr %x986, align 1
  %1321 = load i32, ptr %x950, align 4
  %1322 = load i32, ptr %x947, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x987, ptr noundef %x988, i8 noundef zeroext %1320, i32 noundef %1321, i32 noundef %1322)
  %1323 = load i8, ptr %x988, align 1
  %1324 = load i32, ptr %x948, align 4
  %1325 = load i32, ptr %x945, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x989, ptr noundef %x990, i8 noundef zeroext %1323, i32 noundef %1324, i32 noundef %1325)
  %1326 = load i8, ptr %x990, align 1
  %conv153 = zext i8 %1326 to i32
  %1327 = load i32, ptr %x946, align 4
  %add154 = add i32 %conv153, %1327
  store i32 %add154, ptr %x991, align 4
  %1328 = load i32, ptr %x920, align 4
  %1329 = load i32, ptr %x967, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x992, ptr noundef %x993, i8 noundef zeroext 0, i32 noundef %1328, i32 noundef %1329)
  %1330 = load i8, ptr %x993, align 1
  %1331 = load i32, ptr %x922, align 4
  %1332 = load i32, ptr %x969, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x994, ptr noundef %x995, i8 noundef zeroext %1330, i32 noundef %1331, i32 noundef %1332)
  %1333 = load i8, ptr %x995, align 1
  %1334 = load i32, ptr %x924, align 4
  %1335 = load i32, ptr %x971, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x996, ptr noundef %x997, i8 noundef zeroext %1333, i32 noundef %1334, i32 noundef %1335)
  %1336 = load i8, ptr %x997, align 1
  %1337 = load i32, ptr %x926, align 4
  %1338 = load i32, ptr %x973, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x998, ptr noundef %x999, i8 noundef zeroext %1336, i32 noundef %1337, i32 noundef %1338)
  %1339 = load i8, ptr %x999, align 1
  %1340 = load i32, ptr %x928, align 4
  %1341 = load i32, ptr %x975, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1000, ptr noundef %x1001, i8 noundef zeroext %1339, i32 noundef %1340, i32 noundef %1341)
  %1342 = load i8, ptr %x1001, align 1
  %1343 = load i32, ptr %x930, align 4
  %1344 = load i32, ptr %x977, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1002, ptr noundef %x1003, i8 noundef zeroext %1342, i32 noundef %1343, i32 noundef %1344)
  %1345 = load i8, ptr %x1003, align 1
  %1346 = load i32, ptr %x932, align 4
  %1347 = load i32, ptr %x979, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1004, ptr noundef %x1005, i8 noundef zeroext %1345, i32 noundef %1346, i32 noundef %1347)
  %1348 = load i8, ptr %x1005, align 1
  %1349 = load i32, ptr %x934, align 4
  %1350 = load i32, ptr %x981, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1006, ptr noundef %x1007, i8 noundef zeroext %1348, i32 noundef %1349, i32 noundef %1350)
  %1351 = load i8, ptr %x1007, align 1
  %1352 = load i32, ptr %x936, align 4
  %1353 = load i32, ptr %x983, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1008, ptr noundef %x1009, i8 noundef zeroext %1351, i32 noundef %1352, i32 noundef %1353)
  %1354 = load i8, ptr %x1009, align 1
  %1355 = load i32, ptr %x938, align 4
  %1356 = load i32, ptr %x985, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1010, ptr noundef %x1011, i8 noundef zeroext %1354, i32 noundef %1355, i32 noundef %1356)
  %1357 = load i8, ptr %x1011, align 1
  %1358 = load i32, ptr %x940, align 4
  %1359 = load i32, ptr %x987, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1012, ptr noundef %x1013, i8 noundef zeroext %1357, i32 noundef %1358, i32 noundef %1359)
  %1360 = load i8, ptr %x1013, align 1
  %1361 = load i32, ptr %x942, align 4
  %1362 = load i32, ptr %x989, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1014, ptr noundef %x1015, i8 noundef zeroext %1360, i32 noundef %1361, i32 noundef %1362)
  %1363 = load i8, ptr %x1015, align 1
  %1364 = load i32, ptr %x944, align 4
  %1365 = load i32, ptr %x991, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1016, ptr noundef %x1017, i8 noundef zeroext %1363, i32 noundef %1364, i32 noundef %1365)
  %1366 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1018, ptr noundef %x1019, i32 noundef %1366, i32 noundef -1)
  %1367 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1020, ptr noundef %x1021, i32 noundef %1367, i32 noundef -1)
  %1368 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1022, ptr noundef %x1023, i32 noundef %1368, i32 noundef -1)
  %1369 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1024, ptr noundef %x1025, i32 noundef %1369, i32 noundef -1)
  %1370 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1026, ptr noundef %x1027, i32 noundef %1370, i32 noundef -1)
  %1371 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1028, ptr noundef %x1029, i32 noundef %1371, i32 noundef -1)
  %1372 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1030, ptr noundef %x1031, i32 noundef %1372, i32 noundef -1)
  %1373 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1032, ptr noundef %x1033, i32 noundef %1373, i32 noundef -2)
  %1374 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1034, ptr noundef %x1035, i32 noundef %1374, i32 noundef -1)
  %1375 = load i32, ptr %x992, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1036, ptr noundef %x1037, i32 noundef %1375, i32 noundef -1)
  %1376 = load i32, ptr %x1035, align 4
  %1377 = load i32, ptr %x1032, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1038, ptr noundef %x1039, i8 noundef zeroext 0, i32 noundef %1376, i32 noundef %1377)
  %1378 = load i8, ptr %x1039, align 1
  %1379 = load i32, ptr %x1033, align 4
  %1380 = load i32, ptr %x1030, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1040, ptr noundef %x1041, i8 noundef zeroext %1378, i32 noundef %1379, i32 noundef %1380)
  %1381 = load i8, ptr %x1041, align 1
  %1382 = load i32, ptr %x1031, align 4
  %1383 = load i32, ptr %x1028, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1042, ptr noundef %x1043, i8 noundef zeroext %1381, i32 noundef %1382, i32 noundef %1383)
  %1384 = load i8, ptr %x1043, align 1
  %1385 = load i32, ptr %x1029, align 4
  %1386 = load i32, ptr %x1026, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1044, ptr noundef %x1045, i8 noundef zeroext %1384, i32 noundef %1385, i32 noundef %1386)
  %1387 = load i8, ptr %x1045, align 1
  %1388 = load i32, ptr %x1027, align 4
  %1389 = load i32, ptr %x1024, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1046, ptr noundef %x1047, i8 noundef zeroext %1387, i32 noundef %1388, i32 noundef %1389)
  %1390 = load i8, ptr %x1047, align 1
  %1391 = load i32, ptr %x1025, align 4
  %1392 = load i32, ptr %x1022, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1048, ptr noundef %x1049, i8 noundef zeroext %1390, i32 noundef %1391, i32 noundef %1392)
  %1393 = load i8, ptr %x1049, align 1
  %1394 = load i32, ptr %x1023, align 4
  %1395 = load i32, ptr %x1020, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1050, ptr noundef %x1051, i8 noundef zeroext %1393, i32 noundef %1394, i32 noundef %1395)
  %1396 = load i8, ptr %x1051, align 1
  %1397 = load i32, ptr %x1021, align 4
  %1398 = load i32, ptr %x1018, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1052, ptr noundef %x1053, i8 noundef zeroext %1396, i32 noundef %1397, i32 noundef %1398)
  %1399 = load i8, ptr %x1053, align 1
  %conv155 = zext i8 %1399 to i32
  %1400 = load i32, ptr %x1019, align 4
  %add156 = add i32 %conv155, %1400
  store i32 %add156, ptr %x1054, align 4
  %1401 = load i32, ptr %x992, align 4
  %1402 = load i32, ptr %x1036, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1055, ptr noundef %x1056, i8 noundef zeroext 0, i32 noundef %1401, i32 noundef %1402)
  %1403 = load i8, ptr %x1056, align 1
  %1404 = load i32, ptr %x994, align 4
  %1405 = load i32, ptr %x1037, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1057, ptr noundef %x1058, i8 noundef zeroext %1403, i32 noundef %1404, i32 noundef %1405)
  %1406 = load i8, ptr %x1058, align 1
  %1407 = load i32, ptr %x996, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1059, ptr noundef %x1060, i8 noundef zeroext %1406, i32 noundef %1407, i32 noundef 0)
  %1408 = load i8, ptr %x1060, align 1
  %1409 = load i32, ptr %x998, align 4
  %1410 = load i32, ptr %x1034, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1061, ptr noundef %x1062, i8 noundef zeroext %1408, i32 noundef %1409, i32 noundef %1410)
  %1411 = load i8, ptr %x1062, align 1
  %1412 = load i32, ptr %x1000, align 4
  %1413 = load i32, ptr %x1038, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1063, ptr noundef %x1064, i8 noundef zeroext %1411, i32 noundef %1412, i32 noundef %1413)
  %1414 = load i8, ptr %x1064, align 1
  %1415 = load i32, ptr %x1002, align 4
  %1416 = load i32, ptr %x1040, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1065, ptr noundef %x1066, i8 noundef zeroext %1414, i32 noundef %1415, i32 noundef %1416)
  %1417 = load i8, ptr %x1066, align 1
  %1418 = load i32, ptr %x1004, align 4
  %1419 = load i32, ptr %x1042, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1067, ptr noundef %x1068, i8 noundef zeroext %1417, i32 noundef %1418, i32 noundef %1419)
  %1420 = load i8, ptr %x1068, align 1
  %1421 = load i32, ptr %x1006, align 4
  %1422 = load i32, ptr %x1044, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1069, ptr noundef %x1070, i8 noundef zeroext %1420, i32 noundef %1421, i32 noundef %1422)
  %1423 = load i8, ptr %x1070, align 1
  %1424 = load i32, ptr %x1008, align 4
  %1425 = load i32, ptr %x1046, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1071, ptr noundef %x1072, i8 noundef zeroext %1423, i32 noundef %1424, i32 noundef %1425)
  %1426 = load i8, ptr %x1072, align 1
  %1427 = load i32, ptr %x1010, align 4
  %1428 = load i32, ptr %x1048, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1073, ptr noundef %x1074, i8 noundef zeroext %1426, i32 noundef %1427, i32 noundef %1428)
  %1429 = load i8, ptr %x1074, align 1
  %1430 = load i32, ptr %x1012, align 4
  %1431 = load i32, ptr %x1050, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1075, ptr noundef %x1076, i8 noundef zeroext %1429, i32 noundef %1430, i32 noundef %1431)
  %1432 = load i8, ptr %x1076, align 1
  %1433 = load i32, ptr %x1014, align 4
  %1434 = load i32, ptr %x1052, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1077, ptr noundef %x1078, i8 noundef zeroext %1432, i32 noundef %1433, i32 noundef %1434)
  %1435 = load i8, ptr %x1078, align 1
  %1436 = load i32, ptr %x1016, align 4
  %1437 = load i32, ptr %x1054, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1079, ptr noundef %x1080, i8 noundef zeroext %1435, i32 noundef %1436, i32 noundef %1437)
  %1438 = load i8, ptr %x1080, align 1
  %conv157 = zext i8 %1438 to i32
  %1439 = load i8, ptr %x1017, align 1
  %conv158 = zext i8 %1439 to i32
  %add159 = add i32 %conv157, %conv158
  store i32 %add159, ptr %x1081, align 4
  %1440 = load i32, ptr %x8, align 4
  %1441 = load ptr, ptr %arg2.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %1441, i64 11
  %1442 = load i32, ptr %arrayidx160, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1082, ptr noundef %x1083, i32 noundef %1440, i32 noundef %1442)
  %1443 = load i32, ptr %x8, align 4
  %1444 = load ptr, ptr %arg2.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, ptr %1444, i64 10
  %1445 = load i32, ptr %arrayidx161, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1084, ptr noundef %x1085, i32 noundef %1443, i32 noundef %1445)
  %1446 = load i32, ptr %x8, align 4
  %1447 = load ptr, ptr %arg2.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, ptr %1447, i64 9
  %1448 = load i32, ptr %arrayidx162, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1086, ptr noundef %x1087, i32 noundef %1446, i32 noundef %1448)
  %1449 = load i32, ptr %x8, align 4
  %1450 = load ptr, ptr %arg2.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, ptr %1450, i64 8
  %1451 = load i32, ptr %arrayidx163, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1088, ptr noundef %x1089, i32 noundef %1449, i32 noundef %1451)
  %1452 = load i32, ptr %x8, align 4
  %1453 = load ptr, ptr %arg2.addr, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %1453, i64 7
  %1454 = load i32, ptr %arrayidx164, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1090, ptr noundef %x1091, i32 noundef %1452, i32 noundef %1454)
  %1455 = load i32, ptr %x8, align 4
  %1456 = load ptr, ptr %arg2.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, ptr %1456, i64 6
  %1457 = load i32, ptr %arrayidx165, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1092, ptr noundef %x1093, i32 noundef %1455, i32 noundef %1457)
  %1458 = load i32, ptr %x8, align 4
  %1459 = load ptr, ptr %arg2.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %1459, i64 5
  %1460 = load i32, ptr %arrayidx166, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1094, ptr noundef %x1095, i32 noundef %1458, i32 noundef %1460)
  %1461 = load i32, ptr %x8, align 4
  %1462 = load ptr, ptr %arg2.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, ptr %1462, i64 4
  %1463 = load i32, ptr %arrayidx167, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1096, ptr noundef %x1097, i32 noundef %1461, i32 noundef %1463)
  %1464 = load i32, ptr %x8, align 4
  %1465 = load ptr, ptr %arg2.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %1465, i64 3
  %1466 = load i32, ptr %arrayidx168, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1098, ptr noundef %x1099, i32 noundef %1464, i32 noundef %1466)
  %1467 = load i32, ptr %x8, align 4
  %1468 = load ptr, ptr %arg2.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, ptr %1468, i64 2
  %1469 = load i32, ptr %arrayidx169, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1100, ptr noundef %x1101, i32 noundef %1467, i32 noundef %1469)
  %1470 = load i32, ptr %x8, align 4
  %1471 = load ptr, ptr %arg2.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %1471, i64 1
  %1472 = load i32, ptr %arrayidx170, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1102, ptr noundef %x1103, i32 noundef %1470, i32 noundef %1472)
  %1473 = load i32, ptr %x8, align 4
  %1474 = load ptr, ptr %arg2.addr, align 8
  %arrayidx171 = getelementptr inbounds i32, ptr %1474, i64 0
  %1475 = load i32, ptr %arrayidx171, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1104, ptr noundef %x1105, i32 noundef %1473, i32 noundef %1475)
  %1476 = load i32, ptr %x1105, align 4
  %1477 = load i32, ptr %x1102, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1106, ptr noundef %x1107, i8 noundef zeroext 0, i32 noundef %1476, i32 noundef %1477)
  %1478 = load i8, ptr %x1107, align 1
  %1479 = load i32, ptr %x1103, align 4
  %1480 = load i32, ptr %x1100, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1108, ptr noundef %x1109, i8 noundef zeroext %1478, i32 noundef %1479, i32 noundef %1480)
  %1481 = load i8, ptr %x1109, align 1
  %1482 = load i32, ptr %x1101, align 4
  %1483 = load i32, ptr %x1098, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1110, ptr noundef %x1111, i8 noundef zeroext %1481, i32 noundef %1482, i32 noundef %1483)
  %1484 = load i8, ptr %x1111, align 1
  %1485 = load i32, ptr %x1099, align 4
  %1486 = load i32, ptr %x1096, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1112, ptr noundef %x1113, i8 noundef zeroext %1484, i32 noundef %1485, i32 noundef %1486)
  %1487 = load i8, ptr %x1113, align 1
  %1488 = load i32, ptr %x1097, align 4
  %1489 = load i32, ptr %x1094, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1114, ptr noundef %x1115, i8 noundef zeroext %1487, i32 noundef %1488, i32 noundef %1489)
  %1490 = load i8, ptr %x1115, align 1
  %1491 = load i32, ptr %x1095, align 4
  %1492 = load i32, ptr %x1092, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1116, ptr noundef %x1117, i8 noundef zeroext %1490, i32 noundef %1491, i32 noundef %1492)
  %1493 = load i8, ptr %x1117, align 1
  %1494 = load i32, ptr %x1093, align 4
  %1495 = load i32, ptr %x1090, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1118, ptr noundef %x1119, i8 noundef zeroext %1493, i32 noundef %1494, i32 noundef %1495)
  %1496 = load i8, ptr %x1119, align 1
  %1497 = load i32, ptr %x1091, align 4
  %1498 = load i32, ptr %x1088, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1120, ptr noundef %x1121, i8 noundef zeroext %1496, i32 noundef %1497, i32 noundef %1498)
  %1499 = load i8, ptr %x1121, align 1
  %1500 = load i32, ptr %x1089, align 4
  %1501 = load i32, ptr %x1086, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1122, ptr noundef %x1123, i8 noundef zeroext %1499, i32 noundef %1500, i32 noundef %1501)
  %1502 = load i8, ptr %x1123, align 1
  %1503 = load i32, ptr %x1087, align 4
  %1504 = load i32, ptr %x1084, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1124, ptr noundef %x1125, i8 noundef zeroext %1502, i32 noundef %1503, i32 noundef %1504)
  %1505 = load i8, ptr %x1125, align 1
  %1506 = load i32, ptr %x1085, align 4
  %1507 = load i32, ptr %x1082, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1126, ptr noundef %x1127, i8 noundef zeroext %1505, i32 noundef %1506, i32 noundef %1507)
  %1508 = load i8, ptr %x1127, align 1
  %conv172 = zext i8 %1508 to i32
  %1509 = load i32, ptr %x1083, align 4
  %add173 = add i32 %conv172, %1509
  store i32 %add173, ptr %x1128, align 4
  %1510 = load i32, ptr %x1057, align 4
  %1511 = load i32, ptr %x1104, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1129, ptr noundef %x1130, i8 noundef zeroext 0, i32 noundef %1510, i32 noundef %1511)
  %1512 = load i8, ptr %x1130, align 1
  %1513 = load i32, ptr %x1059, align 4
  %1514 = load i32, ptr %x1106, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1131, ptr noundef %x1132, i8 noundef zeroext %1512, i32 noundef %1513, i32 noundef %1514)
  %1515 = load i8, ptr %x1132, align 1
  %1516 = load i32, ptr %x1061, align 4
  %1517 = load i32, ptr %x1108, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1133, ptr noundef %x1134, i8 noundef zeroext %1515, i32 noundef %1516, i32 noundef %1517)
  %1518 = load i8, ptr %x1134, align 1
  %1519 = load i32, ptr %x1063, align 4
  %1520 = load i32, ptr %x1110, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1135, ptr noundef %x1136, i8 noundef zeroext %1518, i32 noundef %1519, i32 noundef %1520)
  %1521 = load i8, ptr %x1136, align 1
  %1522 = load i32, ptr %x1065, align 4
  %1523 = load i32, ptr %x1112, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1137, ptr noundef %x1138, i8 noundef zeroext %1521, i32 noundef %1522, i32 noundef %1523)
  %1524 = load i8, ptr %x1138, align 1
  %1525 = load i32, ptr %x1067, align 4
  %1526 = load i32, ptr %x1114, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1139, ptr noundef %x1140, i8 noundef zeroext %1524, i32 noundef %1525, i32 noundef %1526)
  %1527 = load i8, ptr %x1140, align 1
  %1528 = load i32, ptr %x1069, align 4
  %1529 = load i32, ptr %x1116, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1141, ptr noundef %x1142, i8 noundef zeroext %1527, i32 noundef %1528, i32 noundef %1529)
  %1530 = load i8, ptr %x1142, align 1
  %1531 = load i32, ptr %x1071, align 4
  %1532 = load i32, ptr %x1118, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1143, ptr noundef %x1144, i8 noundef zeroext %1530, i32 noundef %1531, i32 noundef %1532)
  %1533 = load i8, ptr %x1144, align 1
  %1534 = load i32, ptr %x1073, align 4
  %1535 = load i32, ptr %x1120, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1145, ptr noundef %x1146, i8 noundef zeroext %1533, i32 noundef %1534, i32 noundef %1535)
  %1536 = load i8, ptr %x1146, align 1
  %1537 = load i32, ptr %x1075, align 4
  %1538 = load i32, ptr %x1122, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1147, ptr noundef %x1148, i8 noundef zeroext %1536, i32 noundef %1537, i32 noundef %1538)
  %1539 = load i8, ptr %x1148, align 1
  %1540 = load i32, ptr %x1077, align 4
  %1541 = load i32, ptr %x1124, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1149, ptr noundef %x1150, i8 noundef zeroext %1539, i32 noundef %1540, i32 noundef %1541)
  %1542 = load i8, ptr %x1150, align 1
  %1543 = load i32, ptr %x1079, align 4
  %1544 = load i32, ptr %x1126, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1151, ptr noundef %x1152, i8 noundef zeroext %1542, i32 noundef %1543, i32 noundef %1544)
  %1545 = load i8, ptr %x1152, align 1
  %1546 = load i32, ptr %x1081, align 4
  %1547 = load i32, ptr %x1128, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1153, ptr noundef %x1154, i8 noundef zeroext %1545, i32 noundef %1546, i32 noundef %1547)
  %1548 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1155, ptr noundef %x1156, i32 noundef %1548, i32 noundef -1)
  %1549 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1157, ptr noundef %x1158, i32 noundef %1549, i32 noundef -1)
  %1550 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1159, ptr noundef %x1160, i32 noundef %1550, i32 noundef -1)
  %1551 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1161, ptr noundef %x1162, i32 noundef %1551, i32 noundef -1)
  %1552 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1163, ptr noundef %x1164, i32 noundef %1552, i32 noundef -1)
  %1553 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1165, ptr noundef %x1166, i32 noundef %1553, i32 noundef -1)
  %1554 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1167, ptr noundef %x1168, i32 noundef %1554, i32 noundef -1)
  %1555 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1169, ptr noundef %x1170, i32 noundef %1555, i32 noundef -2)
  %1556 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1171, ptr noundef %x1172, i32 noundef %1556, i32 noundef -1)
  %1557 = load i32, ptr %x1129, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1173, ptr noundef %x1174, i32 noundef %1557, i32 noundef -1)
  %1558 = load i32, ptr %x1172, align 4
  %1559 = load i32, ptr %x1169, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1175, ptr noundef %x1176, i8 noundef zeroext 0, i32 noundef %1558, i32 noundef %1559)
  %1560 = load i8, ptr %x1176, align 1
  %1561 = load i32, ptr %x1170, align 4
  %1562 = load i32, ptr %x1167, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1177, ptr noundef %x1178, i8 noundef zeroext %1560, i32 noundef %1561, i32 noundef %1562)
  %1563 = load i8, ptr %x1178, align 1
  %1564 = load i32, ptr %x1168, align 4
  %1565 = load i32, ptr %x1165, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1179, ptr noundef %x1180, i8 noundef zeroext %1563, i32 noundef %1564, i32 noundef %1565)
  %1566 = load i8, ptr %x1180, align 1
  %1567 = load i32, ptr %x1166, align 4
  %1568 = load i32, ptr %x1163, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1181, ptr noundef %x1182, i8 noundef zeroext %1566, i32 noundef %1567, i32 noundef %1568)
  %1569 = load i8, ptr %x1182, align 1
  %1570 = load i32, ptr %x1164, align 4
  %1571 = load i32, ptr %x1161, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1183, ptr noundef %x1184, i8 noundef zeroext %1569, i32 noundef %1570, i32 noundef %1571)
  %1572 = load i8, ptr %x1184, align 1
  %1573 = load i32, ptr %x1162, align 4
  %1574 = load i32, ptr %x1159, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1185, ptr noundef %x1186, i8 noundef zeroext %1572, i32 noundef %1573, i32 noundef %1574)
  %1575 = load i8, ptr %x1186, align 1
  %1576 = load i32, ptr %x1160, align 4
  %1577 = load i32, ptr %x1157, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1187, ptr noundef %x1188, i8 noundef zeroext %1575, i32 noundef %1576, i32 noundef %1577)
  %1578 = load i8, ptr %x1188, align 1
  %1579 = load i32, ptr %x1158, align 4
  %1580 = load i32, ptr %x1155, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1189, ptr noundef %x1190, i8 noundef zeroext %1578, i32 noundef %1579, i32 noundef %1580)
  %1581 = load i8, ptr %x1190, align 1
  %conv174 = zext i8 %1581 to i32
  %1582 = load i32, ptr %x1156, align 4
  %add175 = add i32 %conv174, %1582
  store i32 %add175, ptr %x1191, align 4
  %1583 = load i32, ptr %x1129, align 4
  %1584 = load i32, ptr %x1173, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1192, ptr noundef %x1193, i8 noundef zeroext 0, i32 noundef %1583, i32 noundef %1584)
  %1585 = load i8, ptr %x1193, align 1
  %1586 = load i32, ptr %x1131, align 4
  %1587 = load i32, ptr %x1174, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1194, ptr noundef %x1195, i8 noundef zeroext %1585, i32 noundef %1586, i32 noundef %1587)
  %1588 = load i8, ptr %x1195, align 1
  %1589 = load i32, ptr %x1133, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1196, ptr noundef %x1197, i8 noundef zeroext %1588, i32 noundef %1589, i32 noundef 0)
  %1590 = load i8, ptr %x1197, align 1
  %1591 = load i32, ptr %x1135, align 4
  %1592 = load i32, ptr %x1171, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1198, ptr noundef %x1199, i8 noundef zeroext %1590, i32 noundef %1591, i32 noundef %1592)
  %1593 = load i8, ptr %x1199, align 1
  %1594 = load i32, ptr %x1137, align 4
  %1595 = load i32, ptr %x1175, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1200, ptr noundef %x1201, i8 noundef zeroext %1593, i32 noundef %1594, i32 noundef %1595)
  %1596 = load i8, ptr %x1201, align 1
  %1597 = load i32, ptr %x1139, align 4
  %1598 = load i32, ptr %x1177, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1202, ptr noundef %x1203, i8 noundef zeroext %1596, i32 noundef %1597, i32 noundef %1598)
  %1599 = load i8, ptr %x1203, align 1
  %1600 = load i32, ptr %x1141, align 4
  %1601 = load i32, ptr %x1179, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1204, ptr noundef %x1205, i8 noundef zeroext %1599, i32 noundef %1600, i32 noundef %1601)
  %1602 = load i8, ptr %x1205, align 1
  %1603 = load i32, ptr %x1143, align 4
  %1604 = load i32, ptr %x1181, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1206, ptr noundef %x1207, i8 noundef zeroext %1602, i32 noundef %1603, i32 noundef %1604)
  %1605 = load i8, ptr %x1207, align 1
  %1606 = load i32, ptr %x1145, align 4
  %1607 = load i32, ptr %x1183, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1208, ptr noundef %x1209, i8 noundef zeroext %1605, i32 noundef %1606, i32 noundef %1607)
  %1608 = load i8, ptr %x1209, align 1
  %1609 = load i32, ptr %x1147, align 4
  %1610 = load i32, ptr %x1185, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1210, ptr noundef %x1211, i8 noundef zeroext %1608, i32 noundef %1609, i32 noundef %1610)
  %1611 = load i8, ptr %x1211, align 1
  %1612 = load i32, ptr %x1149, align 4
  %1613 = load i32, ptr %x1187, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1212, ptr noundef %x1213, i8 noundef zeroext %1611, i32 noundef %1612, i32 noundef %1613)
  %1614 = load i8, ptr %x1213, align 1
  %1615 = load i32, ptr %x1151, align 4
  %1616 = load i32, ptr %x1189, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1214, ptr noundef %x1215, i8 noundef zeroext %1614, i32 noundef %1615, i32 noundef %1616)
  %1617 = load i8, ptr %x1215, align 1
  %1618 = load i32, ptr %x1153, align 4
  %1619 = load i32, ptr %x1191, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1216, ptr noundef %x1217, i8 noundef zeroext %1617, i32 noundef %1618, i32 noundef %1619)
  %1620 = load i8, ptr %x1217, align 1
  %conv176 = zext i8 %1620 to i32
  %1621 = load i8, ptr %x1154, align 1
  %conv177 = zext i8 %1621 to i32
  %add178 = add i32 %conv176, %conv177
  store i32 %add178, ptr %x1218, align 4
  %1622 = load i32, ptr %x9, align 4
  %1623 = load ptr, ptr %arg2.addr, align 8
  %arrayidx179 = getelementptr inbounds i32, ptr %1623, i64 11
  %1624 = load i32, ptr %arrayidx179, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1219, ptr noundef %x1220, i32 noundef %1622, i32 noundef %1624)
  %1625 = load i32, ptr %x9, align 4
  %1626 = load ptr, ptr %arg2.addr, align 8
  %arrayidx180 = getelementptr inbounds i32, ptr %1626, i64 10
  %1627 = load i32, ptr %arrayidx180, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1221, ptr noundef %x1222, i32 noundef %1625, i32 noundef %1627)
  %1628 = load i32, ptr %x9, align 4
  %1629 = load ptr, ptr %arg2.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %1629, i64 9
  %1630 = load i32, ptr %arrayidx181, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1223, ptr noundef %x1224, i32 noundef %1628, i32 noundef %1630)
  %1631 = load i32, ptr %x9, align 4
  %1632 = load ptr, ptr %arg2.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %1632, i64 8
  %1633 = load i32, ptr %arrayidx182, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1225, ptr noundef %x1226, i32 noundef %1631, i32 noundef %1633)
  %1634 = load i32, ptr %x9, align 4
  %1635 = load ptr, ptr %arg2.addr, align 8
  %arrayidx183 = getelementptr inbounds i32, ptr %1635, i64 7
  %1636 = load i32, ptr %arrayidx183, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1227, ptr noundef %x1228, i32 noundef %1634, i32 noundef %1636)
  %1637 = load i32, ptr %x9, align 4
  %1638 = load ptr, ptr %arg2.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %1638, i64 6
  %1639 = load i32, ptr %arrayidx184, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1229, ptr noundef %x1230, i32 noundef %1637, i32 noundef %1639)
  %1640 = load i32, ptr %x9, align 4
  %1641 = load ptr, ptr %arg2.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, ptr %1641, i64 5
  %1642 = load i32, ptr %arrayidx185, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1231, ptr noundef %x1232, i32 noundef %1640, i32 noundef %1642)
  %1643 = load i32, ptr %x9, align 4
  %1644 = load ptr, ptr %arg2.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %1644, i64 4
  %1645 = load i32, ptr %arrayidx186, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1233, ptr noundef %x1234, i32 noundef %1643, i32 noundef %1645)
  %1646 = load i32, ptr %x9, align 4
  %1647 = load ptr, ptr %arg2.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, ptr %1647, i64 3
  %1648 = load i32, ptr %arrayidx187, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1235, ptr noundef %x1236, i32 noundef %1646, i32 noundef %1648)
  %1649 = load i32, ptr %x9, align 4
  %1650 = load ptr, ptr %arg2.addr, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %1650, i64 2
  %1651 = load i32, ptr %arrayidx188, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1237, ptr noundef %x1238, i32 noundef %1649, i32 noundef %1651)
  %1652 = load i32, ptr %x9, align 4
  %1653 = load ptr, ptr %arg2.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, ptr %1653, i64 1
  %1654 = load i32, ptr %arrayidx189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1239, ptr noundef %x1240, i32 noundef %1652, i32 noundef %1654)
  %1655 = load i32, ptr %x9, align 4
  %1656 = load ptr, ptr %arg2.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %1656, i64 0
  %1657 = load i32, ptr %arrayidx190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1241, ptr noundef %x1242, i32 noundef %1655, i32 noundef %1657)
  %1658 = load i32, ptr %x1242, align 4
  %1659 = load i32, ptr %x1239, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1243, ptr noundef %x1244, i8 noundef zeroext 0, i32 noundef %1658, i32 noundef %1659)
  %1660 = load i8, ptr %x1244, align 1
  %1661 = load i32, ptr %x1240, align 4
  %1662 = load i32, ptr %x1237, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1245, ptr noundef %x1246, i8 noundef zeroext %1660, i32 noundef %1661, i32 noundef %1662)
  %1663 = load i8, ptr %x1246, align 1
  %1664 = load i32, ptr %x1238, align 4
  %1665 = load i32, ptr %x1235, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1247, ptr noundef %x1248, i8 noundef zeroext %1663, i32 noundef %1664, i32 noundef %1665)
  %1666 = load i8, ptr %x1248, align 1
  %1667 = load i32, ptr %x1236, align 4
  %1668 = load i32, ptr %x1233, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1249, ptr noundef %x1250, i8 noundef zeroext %1666, i32 noundef %1667, i32 noundef %1668)
  %1669 = load i8, ptr %x1250, align 1
  %1670 = load i32, ptr %x1234, align 4
  %1671 = load i32, ptr %x1231, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1251, ptr noundef %x1252, i8 noundef zeroext %1669, i32 noundef %1670, i32 noundef %1671)
  %1672 = load i8, ptr %x1252, align 1
  %1673 = load i32, ptr %x1232, align 4
  %1674 = load i32, ptr %x1229, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1253, ptr noundef %x1254, i8 noundef zeroext %1672, i32 noundef %1673, i32 noundef %1674)
  %1675 = load i8, ptr %x1254, align 1
  %1676 = load i32, ptr %x1230, align 4
  %1677 = load i32, ptr %x1227, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1255, ptr noundef %x1256, i8 noundef zeroext %1675, i32 noundef %1676, i32 noundef %1677)
  %1678 = load i8, ptr %x1256, align 1
  %1679 = load i32, ptr %x1228, align 4
  %1680 = load i32, ptr %x1225, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1257, ptr noundef %x1258, i8 noundef zeroext %1678, i32 noundef %1679, i32 noundef %1680)
  %1681 = load i8, ptr %x1258, align 1
  %1682 = load i32, ptr %x1226, align 4
  %1683 = load i32, ptr %x1223, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1259, ptr noundef %x1260, i8 noundef zeroext %1681, i32 noundef %1682, i32 noundef %1683)
  %1684 = load i8, ptr %x1260, align 1
  %1685 = load i32, ptr %x1224, align 4
  %1686 = load i32, ptr %x1221, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1261, ptr noundef %x1262, i8 noundef zeroext %1684, i32 noundef %1685, i32 noundef %1686)
  %1687 = load i8, ptr %x1262, align 1
  %1688 = load i32, ptr %x1222, align 4
  %1689 = load i32, ptr %x1219, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1263, ptr noundef %x1264, i8 noundef zeroext %1687, i32 noundef %1688, i32 noundef %1689)
  %1690 = load i8, ptr %x1264, align 1
  %conv191 = zext i8 %1690 to i32
  %1691 = load i32, ptr %x1220, align 4
  %add192 = add i32 %conv191, %1691
  store i32 %add192, ptr %x1265, align 4
  %1692 = load i32, ptr %x1194, align 4
  %1693 = load i32, ptr %x1241, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1266, ptr noundef %x1267, i8 noundef zeroext 0, i32 noundef %1692, i32 noundef %1693)
  %1694 = load i8, ptr %x1267, align 1
  %1695 = load i32, ptr %x1196, align 4
  %1696 = load i32, ptr %x1243, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1268, ptr noundef %x1269, i8 noundef zeroext %1694, i32 noundef %1695, i32 noundef %1696)
  %1697 = load i8, ptr %x1269, align 1
  %1698 = load i32, ptr %x1198, align 4
  %1699 = load i32, ptr %x1245, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1270, ptr noundef %x1271, i8 noundef zeroext %1697, i32 noundef %1698, i32 noundef %1699)
  %1700 = load i8, ptr %x1271, align 1
  %1701 = load i32, ptr %x1200, align 4
  %1702 = load i32, ptr %x1247, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1272, ptr noundef %x1273, i8 noundef zeroext %1700, i32 noundef %1701, i32 noundef %1702)
  %1703 = load i8, ptr %x1273, align 1
  %1704 = load i32, ptr %x1202, align 4
  %1705 = load i32, ptr %x1249, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1274, ptr noundef %x1275, i8 noundef zeroext %1703, i32 noundef %1704, i32 noundef %1705)
  %1706 = load i8, ptr %x1275, align 1
  %1707 = load i32, ptr %x1204, align 4
  %1708 = load i32, ptr %x1251, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1276, ptr noundef %x1277, i8 noundef zeroext %1706, i32 noundef %1707, i32 noundef %1708)
  %1709 = load i8, ptr %x1277, align 1
  %1710 = load i32, ptr %x1206, align 4
  %1711 = load i32, ptr %x1253, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1278, ptr noundef %x1279, i8 noundef zeroext %1709, i32 noundef %1710, i32 noundef %1711)
  %1712 = load i8, ptr %x1279, align 1
  %1713 = load i32, ptr %x1208, align 4
  %1714 = load i32, ptr %x1255, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1280, ptr noundef %x1281, i8 noundef zeroext %1712, i32 noundef %1713, i32 noundef %1714)
  %1715 = load i8, ptr %x1281, align 1
  %1716 = load i32, ptr %x1210, align 4
  %1717 = load i32, ptr %x1257, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1282, ptr noundef %x1283, i8 noundef zeroext %1715, i32 noundef %1716, i32 noundef %1717)
  %1718 = load i8, ptr %x1283, align 1
  %1719 = load i32, ptr %x1212, align 4
  %1720 = load i32, ptr %x1259, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1284, ptr noundef %x1285, i8 noundef zeroext %1718, i32 noundef %1719, i32 noundef %1720)
  %1721 = load i8, ptr %x1285, align 1
  %1722 = load i32, ptr %x1214, align 4
  %1723 = load i32, ptr %x1261, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1286, ptr noundef %x1287, i8 noundef zeroext %1721, i32 noundef %1722, i32 noundef %1723)
  %1724 = load i8, ptr %x1287, align 1
  %1725 = load i32, ptr %x1216, align 4
  %1726 = load i32, ptr %x1263, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1288, ptr noundef %x1289, i8 noundef zeroext %1724, i32 noundef %1725, i32 noundef %1726)
  %1727 = load i8, ptr %x1289, align 1
  %1728 = load i32, ptr %x1218, align 4
  %1729 = load i32, ptr %x1265, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1290, ptr noundef %x1291, i8 noundef zeroext %1727, i32 noundef %1728, i32 noundef %1729)
  %1730 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1292, ptr noundef %x1293, i32 noundef %1730, i32 noundef -1)
  %1731 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1294, ptr noundef %x1295, i32 noundef %1731, i32 noundef -1)
  %1732 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1296, ptr noundef %x1297, i32 noundef %1732, i32 noundef -1)
  %1733 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1298, ptr noundef %x1299, i32 noundef %1733, i32 noundef -1)
  %1734 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1300, ptr noundef %x1301, i32 noundef %1734, i32 noundef -1)
  %1735 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1302, ptr noundef %x1303, i32 noundef %1735, i32 noundef -1)
  %1736 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1304, ptr noundef %x1305, i32 noundef %1736, i32 noundef -1)
  %1737 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1306, ptr noundef %x1307, i32 noundef %1737, i32 noundef -2)
  %1738 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1308, ptr noundef %x1309, i32 noundef %1738, i32 noundef -1)
  %1739 = load i32, ptr %x1266, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1310, ptr noundef %x1311, i32 noundef %1739, i32 noundef -1)
  %1740 = load i32, ptr %x1309, align 4
  %1741 = load i32, ptr %x1306, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1312, ptr noundef %x1313, i8 noundef zeroext 0, i32 noundef %1740, i32 noundef %1741)
  %1742 = load i8, ptr %x1313, align 1
  %1743 = load i32, ptr %x1307, align 4
  %1744 = load i32, ptr %x1304, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1314, ptr noundef %x1315, i8 noundef zeroext %1742, i32 noundef %1743, i32 noundef %1744)
  %1745 = load i8, ptr %x1315, align 1
  %1746 = load i32, ptr %x1305, align 4
  %1747 = load i32, ptr %x1302, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1316, ptr noundef %x1317, i8 noundef zeroext %1745, i32 noundef %1746, i32 noundef %1747)
  %1748 = load i8, ptr %x1317, align 1
  %1749 = load i32, ptr %x1303, align 4
  %1750 = load i32, ptr %x1300, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1318, ptr noundef %x1319, i8 noundef zeroext %1748, i32 noundef %1749, i32 noundef %1750)
  %1751 = load i8, ptr %x1319, align 1
  %1752 = load i32, ptr %x1301, align 4
  %1753 = load i32, ptr %x1298, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1320, ptr noundef %x1321, i8 noundef zeroext %1751, i32 noundef %1752, i32 noundef %1753)
  %1754 = load i8, ptr %x1321, align 1
  %1755 = load i32, ptr %x1299, align 4
  %1756 = load i32, ptr %x1296, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1322, ptr noundef %x1323, i8 noundef zeroext %1754, i32 noundef %1755, i32 noundef %1756)
  %1757 = load i8, ptr %x1323, align 1
  %1758 = load i32, ptr %x1297, align 4
  %1759 = load i32, ptr %x1294, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1324, ptr noundef %x1325, i8 noundef zeroext %1757, i32 noundef %1758, i32 noundef %1759)
  %1760 = load i8, ptr %x1325, align 1
  %1761 = load i32, ptr %x1295, align 4
  %1762 = load i32, ptr %x1292, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1326, ptr noundef %x1327, i8 noundef zeroext %1760, i32 noundef %1761, i32 noundef %1762)
  %1763 = load i8, ptr %x1327, align 1
  %conv193 = zext i8 %1763 to i32
  %1764 = load i32, ptr %x1293, align 4
  %add194 = add i32 %conv193, %1764
  store i32 %add194, ptr %x1328, align 4
  %1765 = load i32, ptr %x1266, align 4
  %1766 = load i32, ptr %x1310, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1329, ptr noundef %x1330, i8 noundef zeroext 0, i32 noundef %1765, i32 noundef %1766)
  %1767 = load i8, ptr %x1330, align 1
  %1768 = load i32, ptr %x1268, align 4
  %1769 = load i32, ptr %x1311, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1331, ptr noundef %x1332, i8 noundef zeroext %1767, i32 noundef %1768, i32 noundef %1769)
  %1770 = load i8, ptr %x1332, align 1
  %1771 = load i32, ptr %x1270, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1333, ptr noundef %x1334, i8 noundef zeroext %1770, i32 noundef %1771, i32 noundef 0)
  %1772 = load i8, ptr %x1334, align 1
  %1773 = load i32, ptr %x1272, align 4
  %1774 = load i32, ptr %x1308, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1335, ptr noundef %x1336, i8 noundef zeroext %1772, i32 noundef %1773, i32 noundef %1774)
  %1775 = load i8, ptr %x1336, align 1
  %1776 = load i32, ptr %x1274, align 4
  %1777 = load i32, ptr %x1312, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1337, ptr noundef %x1338, i8 noundef zeroext %1775, i32 noundef %1776, i32 noundef %1777)
  %1778 = load i8, ptr %x1338, align 1
  %1779 = load i32, ptr %x1276, align 4
  %1780 = load i32, ptr %x1314, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1339, ptr noundef %x1340, i8 noundef zeroext %1778, i32 noundef %1779, i32 noundef %1780)
  %1781 = load i8, ptr %x1340, align 1
  %1782 = load i32, ptr %x1278, align 4
  %1783 = load i32, ptr %x1316, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1341, ptr noundef %x1342, i8 noundef zeroext %1781, i32 noundef %1782, i32 noundef %1783)
  %1784 = load i8, ptr %x1342, align 1
  %1785 = load i32, ptr %x1280, align 4
  %1786 = load i32, ptr %x1318, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1343, ptr noundef %x1344, i8 noundef zeroext %1784, i32 noundef %1785, i32 noundef %1786)
  %1787 = load i8, ptr %x1344, align 1
  %1788 = load i32, ptr %x1282, align 4
  %1789 = load i32, ptr %x1320, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1345, ptr noundef %x1346, i8 noundef zeroext %1787, i32 noundef %1788, i32 noundef %1789)
  %1790 = load i8, ptr %x1346, align 1
  %1791 = load i32, ptr %x1284, align 4
  %1792 = load i32, ptr %x1322, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1347, ptr noundef %x1348, i8 noundef zeroext %1790, i32 noundef %1791, i32 noundef %1792)
  %1793 = load i8, ptr %x1348, align 1
  %1794 = load i32, ptr %x1286, align 4
  %1795 = load i32, ptr %x1324, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1349, ptr noundef %x1350, i8 noundef zeroext %1793, i32 noundef %1794, i32 noundef %1795)
  %1796 = load i8, ptr %x1350, align 1
  %1797 = load i32, ptr %x1288, align 4
  %1798 = load i32, ptr %x1326, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1351, ptr noundef %x1352, i8 noundef zeroext %1796, i32 noundef %1797, i32 noundef %1798)
  %1799 = load i8, ptr %x1352, align 1
  %1800 = load i32, ptr %x1290, align 4
  %1801 = load i32, ptr %x1328, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1353, ptr noundef %x1354, i8 noundef zeroext %1799, i32 noundef %1800, i32 noundef %1801)
  %1802 = load i8, ptr %x1354, align 1
  %conv195 = zext i8 %1802 to i32
  %1803 = load i8, ptr %x1291, align 1
  %conv196 = zext i8 %1803 to i32
  %add197 = add i32 %conv195, %conv196
  store i32 %add197, ptr %x1355, align 4
  %1804 = load i32, ptr %x10, align 4
  %1805 = load ptr, ptr %arg2.addr, align 8
  %arrayidx198 = getelementptr inbounds i32, ptr %1805, i64 11
  %1806 = load i32, ptr %arrayidx198, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1356, ptr noundef %x1357, i32 noundef %1804, i32 noundef %1806)
  %1807 = load i32, ptr %x10, align 4
  %1808 = load ptr, ptr %arg2.addr, align 8
  %arrayidx199 = getelementptr inbounds i32, ptr %1808, i64 10
  %1809 = load i32, ptr %arrayidx199, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1358, ptr noundef %x1359, i32 noundef %1807, i32 noundef %1809)
  %1810 = load i32, ptr %x10, align 4
  %1811 = load ptr, ptr %arg2.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, ptr %1811, i64 9
  %1812 = load i32, ptr %arrayidx200, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1360, ptr noundef %x1361, i32 noundef %1810, i32 noundef %1812)
  %1813 = load i32, ptr %x10, align 4
  %1814 = load ptr, ptr %arg2.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, ptr %1814, i64 8
  %1815 = load i32, ptr %arrayidx201, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1362, ptr noundef %x1363, i32 noundef %1813, i32 noundef %1815)
  %1816 = load i32, ptr %x10, align 4
  %1817 = load ptr, ptr %arg2.addr, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %1817, i64 7
  %1818 = load i32, ptr %arrayidx202, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1364, ptr noundef %x1365, i32 noundef %1816, i32 noundef %1818)
  %1819 = load i32, ptr %x10, align 4
  %1820 = load ptr, ptr %arg2.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, ptr %1820, i64 6
  %1821 = load i32, ptr %arrayidx203, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1366, ptr noundef %x1367, i32 noundef %1819, i32 noundef %1821)
  %1822 = load i32, ptr %x10, align 4
  %1823 = load ptr, ptr %arg2.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %1823, i64 5
  %1824 = load i32, ptr %arrayidx204, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1368, ptr noundef %x1369, i32 noundef %1822, i32 noundef %1824)
  %1825 = load i32, ptr %x10, align 4
  %1826 = load ptr, ptr %arg2.addr, align 8
  %arrayidx205 = getelementptr inbounds i32, ptr %1826, i64 4
  %1827 = load i32, ptr %arrayidx205, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1370, ptr noundef %x1371, i32 noundef %1825, i32 noundef %1827)
  %1828 = load i32, ptr %x10, align 4
  %1829 = load ptr, ptr %arg2.addr, align 8
  %arrayidx206 = getelementptr inbounds i32, ptr %1829, i64 3
  %1830 = load i32, ptr %arrayidx206, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1372, ptr noundef %x1373, i32 noundef %1828, i32 noundef %1830)
  %1831 = load i32, ptr %x10, align 4
  %1832 = load ptr, ptr %arg2.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, ptr %1832, i64 2
  %1833 = load i32, ptr %arrayidx207, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1374, ptr noundef %x1375, i32 noundef %1831, i32 noundef %1833)
  %1834 = load i32, ptr %x10, align 4
  %1835 = load ptr, ptr %arg2.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %1835, i64 1
  %1836 = load i32, ptr %arrayidx208, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1376, ptr noundef %x1377, i32 noundef %1834, i32 noundef %1836)
  %1837 = load i32, ptr %x10, align 4
  %1838 = load ptr, ptr %arg2.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, ptr %1838, i64 0
  %1839 = load i32, ptr %arrayidx209, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1378, ptr noundef %x1379, i32 noundef %1837, i32 noundef %1839)
  %1840 = load i32, ptr %x1379, align 4
  %1841 = load i32, ptr %x1376, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1380, ptr noundef %x1381, i8 noundef zeroext 0, i32 noundef %1840, i32 noundef %1841)
  %1842 = load i8, ptr %x1381, align 1
  %1843 = load i32, ptr %x1377, align 4
  %1844 = load i32, ptr %x1374, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1382, ptr noundef %x1383, i8 noundef zeroext %1842, i32 noundef %1843, i32 noundef %1844)
  %1845 = load i8, ptr %x1383, align 1
  %1846 = load i32, ptr %x1375, align 4
  %1847 = load i32, ptr %x1372, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1384, ptr noundef %x1385, i8 noundef zeroext %1845, i32 noundef %1846, i32 noundef %1847)
  %1848 = load i8, ptr %x1385, align 1
  %1849 = load i32, ptr %x1373, align 4
  %1850 = load i32, ptr %x1370, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1386, ptr noundef %x1387, i8 noundef zeroext %1848, i32 noundef %1849, i32 noundef %1850)
  %1851 = load i8, ptr %x1387, align 1
  %1852 = load i32, ptr %x1371, align 4
  %1853 = load i32, ptr %x1368, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1388, ptr noundef %x1389, i8 noundef zeroext %1851, i32 noundef %1852, i32 noundef %1853)
  %1854 = load i8, ptr %x1389, align 1
  %1855 = load i32, ptr %x1369, align 4
  %1856 = load i32, ptr %x1366, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1390, ptr noundef %x1391, i8 noundef zeroext %1854, i32 noundef %1855, i32 noundef %1856)
  %1857 = load i8, ptr %x1391, align 1
  %1858 = load i32, ptr %x1367, align 4
  %1859 = load i32, ptr %x1364, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1392, ptr noundef %x1393, i8 noundef zeroext %1857, i32 noundef %1858, i32 noundef %1859)
  %1860 = load i8, ptr %x1393, align 1
  %1861 = load i32, ptr %x1365, align 4
  %1862 = load i32, ptr %x1362, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1394, ptr noundef %x1395, i8 noundef zeroext %1860, i32 noundef %1861, i32 noundef %1862)
  %1863 = load i8, ptr %x1395, align 1
  %1864 = load i32, ptr %x1363, align 4
  %1865 = load i32, ptr %x1360, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1396, ptr noundef %x1397, i8 noundef zeroext %1863, i32 noundef %1864, i32 noundef %1865)
  %1866 = load i8, ptr %x1397, align 1
  %1867 = load i32, ptr %x1361, align 4
  %1868 = load i32, ptr %x1358, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1398, ptr noundef %x1399, i8 noundef zeroext %1866, i32 noundef %1867, i32 noundef %1868)
  %1869 = load i8, ptr %x1399, align 1
  %1870 = load i32, ptr %x1359, align 4
  %1871 = load i32, ptr %x1356, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1400, ptr noundef %x1401, i8 noundef zeroext %1869, i32 noundef %1870, i32 noundef %1871)
  %1872 = load i8, ptr %x1401, align 1
  %conv210 = zext i8 %1872 to i32
  %1873 = load i32, ptr %x1357, align 4
  %add211 = add i32 %conv210, %1873
  store i32 %add211, ptr %x1402, align 4
  %1874 = load i32, ptr %x1331, align 4
  %1875 = load i32, ptr %x1378, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1403, ptr noundef %x1404, i8 noundef zeroext 0, i32 noundef %1874, i32 noundef %1875)
  %1876 = load i8, ptr %x1404, align 1
  %1877 = load i32, ptr %x1333, align 4
  %1878 = load i32, ptr %x1380, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1405, ptr noundef %x1406, i8 noundef zeroext %1876, i32 noundef %1877, i32 noundef %1878)
  %1879 = load i8, ptr %x1406, align 1
  %1880 = load i32, ptr %x1335, align 4
  %1881 = load i32, ptr %x1382, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1407, ptr noundef %x1408, i8 noundef zeroext %1879, i32 noundef %1880, i32 noundef %1881)
  %1882 = load i8, ptr %x1408, align 1
  %1883 = load i32, ptr %x1337, align 4
  %1884 = load i32, ptr %x1384, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1409, ptr noundef %x1410, i8 noundef zeroext %1882, i32 noundef %1883, i32 noundef %1884)
  %1885 = load i8, ptr %x1410, align 1
  %1886 = load i32, ptr %x1339, align 4
  %1887 = load i32, ptr %x1386, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1411, ptr noundef %x1412, i8 noundef zeroext %1885, i32 noundef %1886, i32 noundef %1887)
  %1888 = load i8, ptr %x1412, align 1
  %1889 = load i32, ptr %x1341, align 4
  %1890 = load i32, ptr %x1388, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1413, ptr noundef %x1414, i8 noundef zeroext %1888, i32 noundef %1889, i32 noundef %1890)
  %1891 = load i8, ptr %x1414, align 1
  %1892 = load i32, ptr %x1343, align 4
  %1893 = load i32, ptr %x1390, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1415, ptr noundef %x1416, i8 noundef zeroext %1891, i32 noundef %1892, i32 noundef %1893)
  %1894 = load i8, ptr %x1416, align 1
  %1895 = load i32, ptr %x1345, align 4
  %1896 = load i32, ptr %x1392, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1417, ptr noundef %x1418, i8 noundef zeroext %1894, i32 noundef %1895, i32 noundef %1896)
  %1897 = load i8, ptr %x1418, align 1
  %1898 = load i32, ptr %x1347, align 4
  %1899 = load i32, ptr %x1394, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1419, ptr noundef %x1420, i8 noundef zeroext %1897, i32 noundef %1898, i32 noundef %1899)
  %1900 = load i8, ptr %x1420, align 1
  %1901 = load i32, ptr %x1349, align 4
  %1902 = load i32, ptr %x1396, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1421, ptr noundef %x1422, i8 noundef zeroext %1900, i32 noundef %1901, i32 noundef %1902)
  %1903 = load i8, ptr %x1422, align 1
  %1904 = load i32, ptr %x1351, align 4
  %1905 = load i32, ptr %x1398, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1423, ptr noundef %x1424, i8 noundef zeroext %1903, i32 noundef %1904, i32 noundef %1905)
  %1906 = load i8, ptr %x1424, align 1
  %1907 = load i32, ptr %x1353, align 4
  %1908 = load i32, ptr %x1400, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1425, ptr noundef %x1426, i8 noundef zeroext %1906, i32 noundef %1907, i32 noundef %1908)
  %1909 = load i8, ptr %x1426, align 1
  %1910 = load i32, ptr %x1355, align 4
  %1911 = load i32, ptr %x1402, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1427, ptr noundef %x1428, i8 noundef zeroext %1909, i32 noundef %1910, i32 noundef %1911)
  %1912 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1429, ptr noundef %x1430, i32 noundef %1912, i32 noundef -1)
  %1913 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1431, ptr noundef %x1432, i32 noundef %1913, i32 noundef -1)
  %1914 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1433, ptr noundef %x1434, i32 noundef %1914, i32 noundef -1)
  %1915 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1435, ptr noundef %x1436, i32 noundef %1915, i32 noundef -1)
  %1916 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1437, ptr noundef %x1438, i32 noundef %1916, i32 noundef -1)
  %1917 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1439, ptr noundef %x1440, i32 noundef %1917, i32 noundef -1)
  %1918 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1441, ptr noundef %x1442, i32 noundef %1918, i32 noundef -1)
  %1919 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1443, ptr noundef %x1444, i32 noundef %1919, i32 noundef -2)
  %1920 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1445, ptr noundef %x1446, i32 noundef %1920, i32 noundef -1)
  %1921 = load i32, ptr %x1403, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1447, ptr noundef %x1448, i32 noundef %1921, i32 noundef -1)
  %1922 = load i32, ptr %x1446, align 4
  %1923 = load i32, ptr %x1443, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1449, ptr noundef %x1450, i8 noundef zeroext 0, i32 noundef %1922, i32 noundef %1923)
  %1924 = load i8, ptr %x1450, align 1
  %1925 = load i32, ptr %x1444, align 4
  %1926 = load i32, ptr %x1441, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1451, ptr noundef %x1452, i8 noundef zeroext %1924, i32 noundef %1925, i32 noundef %1926)
  %1927 = load i8, ptr %x1452, align 1
  %1928 = load i32, ptr %x1442, align 4
  %1929 = load i32, ptr %x1439, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1453, ptr noundef %x1454, i8 noundef zeroext %1927, i32 noundef %1928, i32 noundef %1929)
  %1930 = load i8, ptr %x1454, align 1
  %1931 = load i32, ptr %x1440, align 4
  %1932 = load i32, ptr %x1437, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1455, ptr noundef %x1456, i8 noundef zeroext %1930, i32 noundef %1931, i32 noundef %1932)
  %1933 = load i8, ptr %x1456, align 1
  %1934 = load i32, ptr %x1438, align 4
  %1935 = load i32, ptr %x1435, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1457, ptr noundef %x1458, i8 noundef zeroext %1933, i32 noundef %1934, i32 noundef %1935)
  %1936 = load i8, ptr %x1458, align 1
  %1937 = load i32, ptr %x1436, align 4
  %1938 = load i32, ptr %x1433, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1459, ptr noundef %x1460, i8 noundef zeroext %1936, i32 noundef %1937, i32 noundef %1938)
  %1939 = load i8, ptr %x1460, align 1
  %1940 = load i32, ptr %x1434, align 4
  %1941 = load i32, ptr %x1431, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1461, ptr noundef %x1462, i8 noundef zeroext %1939, i32 noundef %1940, i32 noundef %1941)
  %1942 = load i8, ptr %x1462, align 1
  %1943 = load i32, ptr %x1432, align 4
  %1944 = load i32, ptr %x1429, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1463, ptr noundef %x1464, i8 noundef zeroext %1942, i32 noundef %1943, i32 noundef %1944)
  %1945 = load i8, ptr %x1464, align 1
  %conv212 = zext i8 %1945 to i32
  %1946 = load i32, ptr %x1430, align 4
  %add213 = add i32 %conv212, %1946
  store i32 %add213, ptr %x1465, align 4
  %1947 = load i32, ptr %x1403, align 4
  %1948 = load i32, ptr %x1447, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1466, ptr noundef %x1467, i8 noundef zeroext 0, i32 noundef %1947, i32 noundef %1948)
  %1949 = load i8, ptr %x1467, align 1
  %1950 = load i32, ptr %x1405, align 4
  %1951 = load i32, ptr %x1448, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1468, ptr noundef %x1469, i8 noundef zeroext %1949, i32 noundef %1950, i32 noundef %1951)
  %1952 = load i8, ptr %x1469, align 1
  %1953 = load i32, ptr %x1407, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1470, ptr noundef %x1471, i8 noundef zeroext %1952, i32 noundef %1953, i32 noundef 0)
  %1954 = load i8, ptr %x1471, align 1
  %1955 = load i32, ptr %x1409, align 4
  %1956 = load i32, ptr %x1445, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1472, ptr noundef %x1473, i8 noundef zeroext %1954, i32 noundef %1955, i32 noundef %1956)
  %1957 = load i8, ptr %x1473, align 1
  %1958 = load i32, ptr %x1411, align 4
  %1959 = load i32, ptr %x1449, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1474, ptr noundef %x1475, i8 noundef zeroext %1957, i32 noundef %1958, i32 noundef %1959)
  %1960 = load i8, ptr %x1475, align 1
  %1961 = load i32, ptr %x1413, align 4
  %1962 = load i32, ptr %x1451, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1476, ptr noundef %x1477, i8 noundef zeroext %1960, i32 noundef %1961, i32 noundef %1962)
  %1963 = load i8, ptr %x1477, align 1
  %1964 = load i32, ptr %x1415, align 4
  %1965 = load i32, ptr %x1453, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1478, ptr noundef %x1479, i8 noundef zeroext %1963, i32 noundef %1964, i32 noundef %1965)
  %1966 = load i8, ptr %x1479, align 1
  %1967 = load i32, ptr %x1417, align 4
  %1968 = load i32, ptr %x1455, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1480, ptr noundef %x1481, i8 noundef zeroext %1966, i32 noundef %1967, i32 noundef %1968)
  %1969 = load i8, ptr %x1481, align 1
  %1970 = load i32, ptr %x1419, align 4
  %1971 = load i32, ptr %x1457, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1482, ptr noundef %x1483, i8 noundef zeroext %1969, i32 noundef %1970, i32 noundef %1971)
  %1972 = load i8, ptr %x1483, align 1
  %1973 = load i32, ptr %x1421, align 4
  %1974 = load i32, ptr %x1459, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1484, ptr noundef %x1485, i8 noundef zeroext %1972, i32 noundef %1973, i32 noundef %1974)
  %1975 = load i8, ptr %x1485, align 1
  %1976 = load i32, ptr %x1423, align 4
  %1977 = load i32, ptr %x1461, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1486, ptr noundef %x1487, i8 noundef zeroext %1975, i32 noundef %1976, i32 noundef %1977)
  %1978 = load i8, ptr %x1487, align 1
  %1979 = load i32, ptr %x1425, align 4
  %1980 = load i32, ptr %x1463, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1488, ptr noundef %x1489, i8 noundef zeroext %1978, i32 noundef %1979, i32 noundef %1980)
  %1981 = load i8, ptr %x1489, align 1
  %1982 = load i32, ptr %x1427, align 4
  %1983 = load i32, ptr %x1465, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1490, ptr noundef %x1491, i8 noundef zeroext %1981, i32 noundef %1982, i32 noundef %1983)
  %1984 = load i8, ptr %x1491, align 1
  %conv214 = zext i8 %1984 to i32
  %1985 = load i8, ptr %x1428, align 1
  %conv215 = zext i8 %1985 to i32
  %add216 = add i32 %conv214, %conv215
  store i32 %add216, ptr %x1492, align 4
  %1986 = load i32, ptr %x11, align 4
  %1987 = load ptr, ptr %arg2.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %1987, i64 11
  %1988 = load i32, ptr %arrayidx217, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1493, ptr noundef %x1494, i32 noundef %1986, i32 noundef %1988)
  %1989 = load i32, ptr %x11, align 4
  %1990 = load ptr, ptr %arg2.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, ptr %1990, i64 10
  %1991 = load i32, ptr %arrayidx218, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1495, ptr noundef %x1496, i32 noundef %1989, i32 noundef %1991)
  %1992 = load i32, ptr %x11, align 4
  %1993 = load ptr, ptr %arg2.addr, align 8
  %arrayidx219 = getelementptr inbounds i32, ptr %1993, i64 9
  %1994 = load i32, ptr %arrayidx219, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1497, ptr noundef %x1498, i32 noundef %1992, i32 noundef %1994)
  %1995 = load i32, ptr %x11, align 4
  %1996 = load ptr, ptr %arg2.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %1996, i64 8
  %1997 = load i32, ptr %arrayidx220, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1499, ptr noundef %x1500, i32 noundef %1995, i32 noundef %1997)
  %1998 = load i32, ptr %x11, align 4
  %1999 = load ptr, ptr %arg2.addr, align 8
  %arrayidx221 = getelementptr inbounds i32, ptr %1999, i64 7
  %2000 = load i32, ptr %arrayidx221, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1501, ptr noundef %x1502, i32 noundef %1998, i32 noundef %2000)
  %2001 = load i32, ptr %x11, align 4
  %2002 = load ptr, ptr %arg2.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %2002, i64 6
  %2003 = load i32, ptr %arrayidx222, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1503, ptr noundef %x1504, i32 noundef %2001, i32 noundef %2003)
  %2004 = load i32, ptr %x11, align 4
  %2005 = load ptr, ptr %arg2.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, ptr %2005, i64 5
  %2006 = load i32, ptr %arrayidx223, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1505, ptr noundef %x1506, i32 noundef %2004, i32 noundef %2006)
  %2007 = load i32, ptr %x11, align 4
  %2008 = load ptr, ptr %arg2.addr, align 8
  %arrayidx224 = getelementptr inbounds i32, ptr %2008, i64 4
  %2009 = load i32, ptr %arrayidx224, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1507, ptr noundef %x1508, i32 noundef %2007, i32 noundef %2009)
  %2010 = load i32, ptr %x11, align 4
  %2011 = load ptr, ptr %arg2.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, ptr %2011, i64 3
  %2012 = load i32, ptr %arrayidx225, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1509, ptr noundef %x1510, i32 noundef %2010, i32 noundef %2012)
  %2013 = load i32, ptr %x11, align 4
  %2014 = load ptr, ptr %arg2.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, ptr %2014, i64 2
  %2015 = load i32, ptr %arrayidx226, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1511, ptr noundef %x1512, i32 noundef %2013, i32 noundef %2015)
  %2016 = load i32, ptr %x11, align 4
  %2017 = load ptr, ptr %arg2.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, ptr %2017, i64 1
  %2018 = load i32, ptr %arrayidx227, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1513, ptr noundef %x1514, i32 noundef %2016, i32 noundef %2018)
  %2019 = load i32, ptr %x11, align 4
  %2020 = load ptr, ptr %arg2.addr, align 8
  %arrayidx228 = getelementptr inbounds i32, ptr %2020, i64 0
  %2021 = load i32, ptr %arrayidx228, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1515, ptr noundef %x1516, i32 noundef %2019, i32 noundef %2021)
  %2022 = load i32, ptr %x1516, align 4
  %2023 = load i32, ptr %x1513, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1517, ptr noundef %x1518, i8 noundef zeroext 0, i32 noundef %2022, i32 noundef %2023)
  %2024 = load i8, ptr %x1518, align 1
  %2025 = load i32, ptr %x1514, align 4
  %2026 = load i32, ptr %x1511, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1519, ptr noundef %x1520, i8 noundef zeroext %2024, i32 noundef %2025, i32 noundef %2026)
  %2027 = load i8, ptr %x1520, align 1
  %2028 = load i32, ptr %x1512, align 4
  %2029 = load i32, ptr %x1509, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1521, ptr noundef %x1522, i8 noundef zeroext %2027, i32 noundef %2028, i32 noundef %2029)
  %2030 = load i8, ptr %x1522, align 1
  %2031 = load i32, ptr %x1510, align 4
  %2032 = load i32, ptr %x1507, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1523, ptr noundef %x1524, i8 noundef zeroext %2030, i32 noundef %2031, i32 noundef %2032)
  %2033 = load i8, ptr %x1524, align 1
  %2034 = load i32, ptr %x1508, align 4
  %2035 = load i32, ptr %x1505, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1525, ptr noundef %x1526, i8 noundef zeroext %2033, i32 noundef %2034, i32 noundef %2035)
  %2036 = load i8, ptr %x1526, align 1
  %2037 = load i32, ptr %x1506, align 4
  %2038 = load i32, ptr %x1503, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1527, ptr noundef %x1528, i8 noundef zeroext %2036, i32 noundef %2037, i32 noundef %2038)
  %2039 = load i8, ptr %x1528, align 1
  %2040 = load i32, ptr %x1504, align 4
  %2041 = load i32, ptr %x1501, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1529, ptr noundef %x1530, i8 noundef zeroext %2039, i32 noundef %2040, i32 noundef %2041)
  %2042 = load i8, ptr %x1530, align 1
  %2043 = load i32, ptr %x1502, align 4
  %2044 = load i32, ptr %x1499, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1531, ptr noundef %x1532, i8 noundef zeroext %2042, i32 noundef %2043, i32 noundef %2044)
  %2045 = load i8, ptr %x1532, align 1
  %2046 = load i32, ptr %x1500, align 4
  %2047 = load i32, ptr %x1497, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1533, ptr noundef %x1534, i8 noundef zeroext %2045, i32 noundef %2046, i32 noundef %2047)
  %2048 = load i8, ptr %x1534, align 1
  %2049 = load i32, ptr %x1498, align 4
  %2050 = load i32, ptr %x1495, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1535, ptr noundef %x1536, i8 noundef zeroext %2048, i32 noundef %2049, i32 noundef %2050)
  %2051 = load i8, ptr %x1536, align 1
  %2052 = load i32, ptr %x1496, align 4
  %2053 = load i32, ptr %x1493, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1537, ptr noundef %x1538, i8 noundef zeroext %2051, i32 noundef %2052, i32 noundef %2053)
  %2054 = load i8, ptr %x1538, align 1
  %conv229 = zext i8 %2054 to i32
  %2055 = load i32, ptr %x1494, align 4
  %add230 = add i32 %conv229, %2055
  store i32 %add230, ptr %x1539, align 4
  %2056 = load i32, ptr %x1468, align 4
  %2057 = load i32, ptr %x1515, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1540, ptr noundef %x1541, i8 noundef zeroext 0, i32 noundef %2056, i32 noundef %2057)
  %2058 = load i8, ptr %x1541, align 1
  %2059 = load i32, ptr %x1470, align 4
  %2060 = load i32, ptr %x1517, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1542, ptr noundef %x1543, i8 noundef zeroext %2058, i32 noundef %2059, i32 noundef %2060)
  %2061 = load i8, ptr %x1543, align 1
  %2062 = load i32, ptr %x1472, align 4
  %2063 = load i32, ptr %x1519, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1544, ptr noundef %x1545, i8 noundef zeroext %2061, i32 noundef %2062, i32 noundef %2063)
  %2064 = load i8, ptr %x1545, align 1
  %2065 = load i32, ptr %x1474, align 4
  %2066 = load i32, ptr %x1521, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1546, ptr noundef %x1547, i8 noundef zeroext %2064, i32 noundef %2065, i32 noundef %2066)
  %2067 = load i8, ptr %x1547, align 1
  %2068 = load i32, ptr %x1476, align 4
  %2069 = load i32, ptr %x1523, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1548, ptr noundef %x1549, i8 noundef zeroext %2067, i32 noundef %2068, i32 noundef %2069)
  %2070 = load i8, ptr %x1549, align 1
  %2071 = load i32, ptr %x1478, align 4
  %2072 = load i32, ptr %x1525, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1550, ptr noundef %x1551, i8 noundef zeroext %2070, i32 noundef %2071, i32 noundef %2072)
  %2073 = load i8, ptr %x1551, align 1
  %2074 = load i32, ptr %x1480, align 4
  %2075 = load i32, ptr %x1527, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1552, ptr noundef %x1553, i8 noundef zeroext %2073, i32 noundef %2074, i32 noundef %2075)
  %2076 = load i8, ptr %x1553, align 1
  %2077 = load i32, ptr %x1482, align 4
  %2078 = load i32, ptr %x1529, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1554, ptr noundef %x1555, i8 noundef zeroext %2076, i32 noundef %2077, i32 noundef %2078)
  %2079 = load i8, ptr %x1555, align 1
  %2080 = load i32, ptr %x1484, align 4
  %2081 = load i32, ptr %x1531, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1556, ptr noundef %x1557, i8 noundef zeroext %2079, i32 noundef %2080, i32 noundef %2081)
  %2082 = load i8, ptr %x1557, align 1
  %2083 = load i32, ptr %x1486, align 4
  %2084 = load i32, ptr %x1533, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1558, ptr noundef %x1559, i8 noundef zeroext %2082, i32 noundef %2083, i32 noundef %2084)
  %2085 = load i8, ptr %x1559, align 1
  %2086 = load i32, ptr %x1488, align 4
  %2087 = load i32, ptr %x1535, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1560, ptr noundef %x1561, i8 noundef zeroext %2085, i32 noundef %2086, i32 noundef %2087)
  %2088 = load i8, ptr %x1561, align 1
  %2089 = load i32, ptr %x1490, align 4
  %2090 = load i32, ptr %x1537, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1562, ptr noundef %x1563, i8 noundef zeroext %2088, i32 noundef %2089, i32 noundef %2090)
  %2091 = load i8, ptr %x1563, align 1
  %2092 = load i32, ptr %x1492, align 4
  %2093 = load i32, ptr %x1539, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1564, ptr noundef %x1565, i8 noundef zeroext %2091, i32 noundef %2092, i32 noundef %2093)
  %2094 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1566, ptr noundef %x1567, i32 noundef %2094, i32 noundef -1)
  %2095 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1568, ptr noundef %x1569, i32 noundef %2095, i32 noundef -1)
  %2096 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1570, ptr noundef %x1571, i32 noundef %2096, i32 noundef -1)
  %2097 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1572, ptr noundef %x1573, i32 noundef %2097, i32 noundef -1)
  %2098 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1574, ptr noundef %x1575, i32 noundef %2098, i32 noundef -1)
  %2099 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1576, ptr noundef %x1577, i32 noundef %2099, i32 noundef -1)
  %2100 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1578, ptr noundef %x1579, i32 noundef %2100, i32 noundef -1)
  %2101 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1580, ptr noundef %x1581, i32 noundef %2101, i32 noundef -2)
  %2102 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1582, ptr noundef %x1583, i32 noundef %2102, i32 noundef -1)
  %2103 = load i32, ptr %x1540, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1584, ptr noundef %x1585, i32 noundef %2103, i32 noundef -1)
  %2104 = load i32, ptr %x1583, align 4
  %2105 = load i32, ptr %x1580, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1586, ptr noundef %x1587, i8 noundef zeroext 0, i32 noundef %2104, i32 noundef %2105)
  %2106 = load i8, ptr %x1587, align 1
  %2107 = load i32, ptr %x1581, align 4
  %2108 = load i32, ptr %x1578, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1588, ptr noundef %x1589, i8 noundef zeroext %2106, i32 noundef %2107, i32 noundef %2108)
  %2109 = load i8, ptr %x1589, align 1
  %2110 = load i32, ptr %x1579, align 4
  %2111 = load i32, ptr %x1576, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1590, ptr noundef %x1591, i8 noundef zeroext %2109, i32 noundef %2110, i32 noundef %2111)
  %2112 = load i8, ptr %x1591, align 1
  %2113 = load i32, ptr %x1577, align 4
  %2114 = load i32, ptr %x1574, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1592, ptr noundef %x1593, i8 noundef zeroext %2112, i32 noundef %2113, i32 noundef %2114)
  %2115 = load i8, ptr %x1593, align 1
  %2116 = load i32, ptr %x1575, align 4
  %2117 = load i32, ptr %x1572, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1594, ptr noundef %x1595, i8 noundef zeroext %2115, i32 noundef %2116, i32 noundef %2117)
  %2118 = load i8, ptr %x1595, align 1
  %2119 = load i32, ptr %x1573, align 4
  %2120 = load i32, ptr %x1570, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1596, ptr noundef %x1597, i8 noundef zeroext %2118, i32 noundef %2119, i32 noundef %2120)
  %2121 = load i8, ptr %x1597, align 1
  %2122 = load i32, ptr %x1571, align 4
  %2123 = load i32, ptr %x1568, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1598, ptr noundef %x1599, i8 noundef zeroext %2121, i32 noundef %2122, i32 noundef %2123)
  %2124 = load i8, ptr %x1599, align 1
  %2125 = load i32, ptr %x1569, align 4
  %2126 = load i32, ptr %x1566, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1600, ptr noundef %x1601, i8 noundef zeroext %2124, i32 noundef %2125, i32 noundef %2126)
  %2127 = load i8, ptr %x1601, align 1
  %conv231 = zext i8 %2127 to i32
  %2128 = load i32, ptr %x1567, align 4
  %add232 = add i32 %conv231, %2128
  store i32 %add232, ptr %x1602, align 4
  %2129 = load i32, ptr %x1540, align 4
  %2130 = load i32, ptr %x1584, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1603, ptr noundef %x1604, i8 noundef zeroext 0, i32 noundef %2129, i32 noundef %2130)
  %2131 = load i8, ptr %x1604, align 1
  %2132 = load i32, ptr %x1542, align 4
  %2133 = load i32, ptr %x1585, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1605, ptr noundef %x1606, i8 noundef zeroext %2131, i32 noundef %2132, i32 noundef %2133)
  %2134 = load i8, ptr %x1606, align 1
  %2135 = load i32, ptr %x1544, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1607, ptr noundef %x1608, i8 noundef zeroext %2134, i32 noundef %2135, i32 noundef 0)
  %2136 = load i8, ptr %x1608, align 1
  %2137 = load i32, ptr %x1546, align 4
  %2138 = load i32, ptr %x1582, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1609, ptr noundef %x1610, i8 noundef zeroext %2136, i32 noundef %2137, i32 noundef %2138)
  %2139 = load i8, ptr %x1610, align 1
  %2140 = load i32, ptr %x1548, align 4
  %2141 = load i32, ptr %x1586, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1611, ptr noundef %x1612, i8 noundef zeroext %2139, i32 noundef %2140, i32 noundef %2141)
  %2142 = load i8, ptr %x1612, align 1
  %2143 = load i32, ptr %x1550, align 4
  %2144 = load i32, ptr %x1588, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1613, ptr noundef %x1614, i8 noundef zeroext %2142, i32 noundef %2143, i32 noundef %2144)
  %2145 = load i8, ptr %x1614, align 1
  %2146 = load i32, ptr %x1552, align 4
  %2147 = load i32, ptr %x1590, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1615, ptr noundef %x1616, i8 noundef zeroext %2145, i32 noundef %2146, i32 noundef %2147)
  %2148 = load i8, ptr %x1616, align 1
  %2149 = load i32, ptr %x1554, align 4
  %2150 = load i32, ptr %x1592, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1617, ptr noundef %x1618, i8 noundef zeroext %2148, i32 noundef %2149, i32 noundef %2150)
  %2151 = load i8, ptr %x1618, align 1
  %2152 = load i32, ptr %x1556, align 4
  %2153 = load i32, ptr %x1594, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1619, ptr noundef %x1620, i8 noundef zeroext %2151, i32 noundef %2152, i32 noundef %2153)
  %2154 = load i8, ptr %x1620, align 1
  %2155 = load i32, ptr %x1558, align 4
  %2156 = load i32, ptr %x1596, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1621, ptr noundef %x1622, i8 noundef zeroext %2154, i32 noundef %2155, i32 noundef %2156)
  %2157 = load i8, ptr %x1622, align 1
  %2158 = load i32, ptr %x1560, align 4
  %2159 = load i32, ptr %x1598, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1623, ptr noundef %x1624, i8 noundef zeroext %2157, i32 noundef %2158, i32 noundef %2159)
  %2160 = load i8, ptr %x1624, align 1
  %2161 = load i32, ptr %x1562, align 4
  %2162 = load i32, ptr %x1600, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1625, ptr noundef %x1626, i8 noundef zeroext %2160, i32 noundef %2161, i32 noundef %2162)
  %2163 = load i8, ptr %x1626, align 1
  %2164 = load i32, ptr %x1564, align 4
  %2165 = load i32, ptr %x1602, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1627, ptr noundef %x1628, i8 noundef zeroext %2163, i32 noundef %2164, i32 noundef %2165)
  %2166 = load i8, ptr %x1628, align 1
  %conv233 = zext i8 %2166 to i32
  %2167 = load i8, ptr %x1565, align 1
  %conv234 = zext i8 %2167 to i32
  %add235 = add i32 %conv233, %conv234
  store i32 %add235, ptr %x1629, align 4
  %2168 = load i32, ptr %x1605, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1630, ptr noundef %x1631, i8 noundef zeroext 0, i32 noundef %2168, i32 noundef -1)
  %2169 = load i8, ptr %x1631, align 1
  %2170 = load i32, ptr %x1607, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1632, ptr noundef %x1633, i8 noundef zeroext %2169, i32 noundef %2170, i32 noundef 0)
  %2171 = load i8, ptr %x1633, align 1
  %2172 = load i32, ptr %x1609, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1634, ptr noundef %x1635, i8 noundef zeroext %2171, i32 noundef %2172, i32 noundef 0)
  %2173 = load i8, ptr %x1635, align 1
  %2174 = load i32, ptr %x1611, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1636, ptr noundef %x1637, i8 noundef zeroext %2173, i32 noundef %2174, i32 noundef -1)
  %2175 = load i8, ptr %x1637, align 1
  %2176 = load i32, ptr %x1613, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1638, ptr noundef %x1639, i8 noundef zeroext %2175, i32 noundef %2176, i32 noundef -2)
  %2177 = load i8, ptr %x1639, align 1
  %2178 = load i32, ptr %x1615, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1640, ptr noundef %x1641, i8 noundef zeroext %2177, i32 noundef %2178, i32 noundef -1)
  %2179 = load i8, ptr %x1641, align 1
  %2180 = load i32, ptr %x1617, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1642, ptr noundef %x1643, i8 noundef zeroext %2179, i32 noundef %2180, i32 noundef -1)
  %2181 = load i8, ptr %x1643, align 1
  %2182 = load i32, ptr %x1619, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1644, ptr noundef %x1645, i8 noundef zeroext %2181, i32 noundef %2182, i32 noundef -1)
  %2183 = load i8, ptr %x1645, align 1
  %2184 = load i32, ptr %x1621, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1646, ptr noundef %x1647, i8 noundef zeroext %2183, i32 noundef %2184, i32 noundef -1)
  %2185 = load i8, ptr %x1647, align 1
  %2186 = load i32, ptr %x1623, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1648, ptr noundef %x1649, i8 noundef zeroext %2185, i32 noundef %2186, i32 noundef -1)
  %2187 = load i8, ptr %x1649, align 1
  %2188 = load i32, ptr %x1625, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1650, ptr noundef %x1651, i8 noundef zeroext %2187, i32 noundef %2188, i32 noundef -1)
  %2189 = load i8, ptr %x1651, align 1
  %2190 = load i32, ptr %x1627, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1652, ptr noundef %x1653, i8 noundef zeroext %2189, i32 noundef %2190, i32 noundef -1)
  %2191 = load i8, ptr %x1653, align 1
  %2192 = load i32, ptr %x1629, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1654, ptr noundef %x1655, i8 noundef zeroext %2191, i32 noundef %2192, i32 noundef 0)
  %2193 = load i8, ptr %x1655, align 1
  %2194 = load i32, ptr %x1630, align 4
  %2195 = load i32, ptr %x1605, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1656, i8 noundef zeroext %2193, i32 noundef %2194, i32 noundef %2195)
  %2196 = load i8, ptr %x1655, align 1
  %2197 = load i32, ptr %x1632, align 4
  %2198 = load i32, ptr %x1607, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1657, i8 noundef zeroext %2196, i32 noundef %2197, i32 noundef %2198)
  %2199 = load i8, ptr %x1655, align 1
  %2200 = load i32, ptr %x1634, align 4
  %2201 = load i32, ptr %x1609, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1658, i8 noundef zeroext %2199, i32 noundef %2200, i32 noundef %2201)
  %2202 = load i8, ptr %x1655, align 1
  %2203 = load i32, ptr %x1636, align 4
  %2204 = load i32, ptr %x1611, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1659, i8 noundef zeroext %2202, i32 noundef %2203, i32 noundef %2204)
  %2205 = load i8, ptr %x1655, align 1
  %2206 = load i32, ptr %x1638, align 4
  %2207 = load i32, ptr %x1613, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1660, i8 noundef zeroext %2205, i32 noundef %2206, i32 noundef %2207)
  %2208 = load i8, ptr %x1655, align 1
  %2209 = load i32, ptr %x1640, align 4
  %2210 = load i32, ptr %x1615, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1661, i8 noundef zeroext %2208, i32 noundef %2209, i32 noundef %2210)
  %2211 = load i8, ptr %x1655, align 1
  %2212 = load i32, ptr %x1642, align 4
  %2213 = load i32, ptr %x1617, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1662, i8 noundef zeroext %2211, i32 noundef %2212, i32 noundef %2213)
  %2214 = load i8, ptr %x1655, align 1
  %2215 = load i32, ptr %x1644, align 4
  %2216 = load i32, ptr %x1619, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1663, i8 noundef zeroext %2214, i32 noundef %2215, i32 noundef %2216)
  %2217 = load i8, ptr %x1655, align 1
  %2218 = load i32, ptr %x1646, align 4
  %2219 = load i32, ptr %x1621, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1664, i8 noundef zeroext %2217, i32 noundef %2218, i32 noundef %2219)
  %2220 = load i8, ptr %x1655, align 1
  %2221 = load i32, ptr %x1648, align 4
  %2222 = load i32, ptr %x1623, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1665, i8 noundef zeroext %2220, i32 noundef %2221, i32 noundef %2222)
  %2223 = load i8, ptr %x1655, align 1
  %2224 = load i32, ptr %x1650, align 4
  %2225 = load i32, ptr %x1625, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1666, i8 noundef zeroext %2223, i32 noundef %2224, i32 noundef %2225)
  %2226 = load i8, ptr %x1655, align 1
  %2227 = load i32, ptr %x1652, align 4
  %2228 = load i32, ptr %x1627, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1667, i8 noundef zeroext %2226, i32 noundef %2227, i32 noundef %2228)
  %2229 = load i32, ptr %x1656, align 4
  %2230 = load ptr, ptr %out1.addr, align 8
  %arrayidx236 = getelementptr inbounds i32, ptr %2230, i64 0
  store i32 %2229, ptr %arrayidx236, align 4
  %2231 = load i32, ptr %x1657, align 4
  %2232 = load ptr, ptr %out1.addr, align 8
  %arrayidx237 = getelementptr inbounds i32, ptr %2232, i64 1
  store i32 %2231, ptr %arrayidx237, align 4
  %2233 = load i32, ptr %x1658, align 4
  %2234 = load ptr, ptr %out1.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, ptr %2234, i64 2
  store i32 %2233, ptr %arrayidx238, align 4
  %2235 = load i32, ptr %x1659, align 4
  %2236 = load ptr, ptr %out1.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, ptr %2236, i64 3
  store i32 %2235, ptr %arrayidx239, align 4
  %2237 = load i32, ptr %x1660, align 4
  %2238 = load ptr, ptr %out1.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, ptr %2238, i64 4
  store i32 %2237, ptr %arrayidx240, align 4
  %2239 = load i32, ptr %x1661, align 4
  %2240 = load ptr, ptr %out1.addr, align 8
  %arrayidx241 = getelementptr inbounds i32, ptr %2240, i64 5
  store i32 %2239, ptr %arrayidx241, align 4
  %2241 = load i32, ptr %x1662, align 4
  %2242 = load ptr, ptr %out1.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, ptr %2242, i64 6
  store i32 %2241, ptr %arrayidx242, align 4
  %2243 = load i32, ptr %x1663, align 4
  %2244 = load ptr, ptr %out1.addr, align 8
  %arrayidx243 = getelementptr inbounds i32, ptr %2244, i64 7
  store i32 %2243, ptr %arrayidx243, align 4
  %2245 = load i32, ptr %x1664, align 4
  %2246 = load ptr, ptr %out1.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, ptr %2246, i64 8
  store i32 %2245, ptr %arrayidx244, align 4
  %2247 = load i32, ptr %x1665, align 4
  %2248 = load ptr, ptr %out1.addr, align 8
  %arrayidx245 = getelementptr inbounds i32, ptr %2248, i64 9
  store i32 %2247, ptr %arrayidx245, align 4
  %2249 = load i32, ptr %x1666, align 4
  %2250 = load ptr, ptr %out1.addr, align 8
  %arrayidx246 = getelementptr inbounds i32, ptr %2250, i64 10
  store i32 %2249, ptr %arrayidx246, align 4
  %2251 = load i32, ptr %x1667, align 4
  %2252 = load ptr, ptr %out1.addr, align 8
  %arrayidx247 = getelementptr inbounds i32, ptr %2252, i64 11
  store i32 %2251, ptr %arrayidx247, align 4
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
