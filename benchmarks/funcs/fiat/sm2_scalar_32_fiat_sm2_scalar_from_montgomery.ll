; ModuleID = '/data2/ben/alive-decomp/bench/fiat/sm2_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_sm2_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_sm2_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x61 = alloca i8, align 1
  %x62 = alloca i32, align 4
  %x63 = alloca i8, align 1
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
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
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
  %x83 = alloca i32, align 4
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
  %x148 = alloca i32, align 4
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
  %x331 = alloca i32, align 4
  %x332 = alloca i32, align 4
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
  %x361 = alloca i8, align 1
  %x362 = alloca i32, align 4
  %x363 = alloca i8, align 1
  %x364 = alloca i32, align 4
  %x365 = alloca i8, align 1
  %x366 = alloca i32, align 4
  %x367 = alloca i8, align 1
  %x368 = alloca i32, align 4
  %x369 = alloca i8, align 1
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
  %x425 = alloca i8, align 1
  %x426 = alloca i32, align 4
  %x427 = alloca i8, align 1
  %x428 = alloca i32, align 4
  %x429 = alloca i8, align 1
  %x430 = alloca i32, align 4
  %x431 = alloca i8, align 1
  %x432 = alloca i32, align 4
  %x433 = alloca i8, align 1
  %x434 = alloca i32, align 4
  %x435 = alloca i8, align 1
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
  %x477 = alloca i32, align 4
  %x478 = alloca i32, align 4
  %x479 = alloca i32, align 4
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
  %x507 = alloca i8, align 1
  %x508 = alloca i32, align 4
  %x509 = alloca i8, align 1
  %x510 = alloca i32, align 4
  %x511 = alloca i8, align 1
  %x512 = alloca i32, align 4
  %x513 = alloca i8, align 1
  %x514 = alloca i32, align 4
  %x515 = alloca i8, align 1
  %x516 = alloca i32, align 4
  %x517 = alloca i8, align 1
  %x518 = alloca i32, align 4
  %x519 = alloca i8, align 1
  %x520 = alloca i32, align 4
  %x521 = alloca i8, align 1
  %x522 = alloca i32, align 4
  %x523 = alloca i8, align 1
  %x524 = alloca i32, align 4
  %x525 = alloca i8, align 1
  %x526 = alloca i32, align 4
  %x527 = alloca i8, align 1
  %x528 = alloca i32, align 4
  %x529 = alloca i8, align 1
  %x530 = alloca i32, align 4
  %x531 = alloca i32, align 4
  %x532 = alloca i32, align 4
  %x533 = alloca i32, align 4
  %x534 = alloca i32, align 4
  %x535 = alloca i32, align 4
  %x536 = alloca i32, align 4
  %x537 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef 1916078453)
  %3 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -2)
  %4 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef -1)
  %7 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %7, i32 noundef 1912856427)
  %8 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x14, ptr noundef %x15, i32 noundef %8, i32 noundef 566625579)
  %9 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x16, ptr noundef %x17, i32 noundef %9, i32 noundef 1404826633)
  %10 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x18, ptr noundef %x19, i32 noundef %10, i32 noundef 970277155)
  %11 = load i32, ptr %x19, align 4
  %12 = load i32, ptr %x16, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %12)
  %13 = load i8, ptr %x21, align 1
  %14 = load i32, ptr %x17, align 4
  %15 = load i32, ptr %x14, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %13, i32 noundef %14, i32 noundef %15)
  %16 = load i8, ptr %x23, align 1
  %17 = load i32, ptr %x15, align 4
  %18 = load i32, ptr %x12, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %16, i32 noundef %17, i32 noundef %18)
  %19 = load i8, ptr %x25, align 1
  %20 = load i32, ptr %x13, align 4
  %21 = load i32, ptr %x10, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %19, i32 noundef %20, i32 noundef %21)
  %22 = load i8, ptr %x27, align 1
  %23 = load i32, ptr %x11, align 4
  %24 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %22, i32 noundef %23, i32 noundef %24)
  %25 = load i8, ptr %x29, align 1
  %26 = load i32, ptr %x9, align 4
  %27 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %25, i32 noundef %26, i32 noundef %27)
  %28 = load i8, ptr %x31, align 1
  %29 = load i32, ptr %x7, align 4
  %30 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %28, i32 noundef %29, i32 noundef %30)
  %31 = load i32, ptr %x1, align 4
  %32 = load i32, ptr %x18, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext 0, i32 noundef %31, i32 noundef %32)
  %33 = load i8, ptr %x35, align 1
  %34 = load i32, ptr %x20, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %33, i32 noundef 0, i32 noundef %34)
  %35 = load i8, ptr %x37, align 1
  %36 = load i32, ptr %x22, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %35, i32 noundef 0, i32 noundef %36)
  %37 = load i8, ptr %x39, align 1
  %38 = load i32, ptr %x24, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %37, i32 noundef 0, i32 noundef %38)
  %39 = load i8, ptr %x41, align 1
  %40 = load i32, ptr %x26, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %39, i32 noundef 0, i32 noundef %40)
  %41 = load i8, ptr %x43, align 1
  %42 = load i32, ptr %x28, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %41, i32 noundef 0, i32 noundef %42)
  %43 = load i8, ptr %x45, align 1
  %44 = load i32, ptr %x30, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %43, i32 noundef 0, i32 noundef %44)
  %45 = load i8, ptr %x47, align 1
  %46 = load i32, ptr %x32, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %45, i32 noundef 0, i32 noundef %46)
  %47 = load i32, ptr %x36, align 4
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %48, i64 1
  %49 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i32 noundef %47, i32 noundef %49)
  %50 = load i8, ptr %x51, align 1
  %51 = load i32, ptr %x38, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %50, i32 noundef %51, i32 noundef 0)
  %52 = load i8, ptr %x53, align 1
  %53 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %52, i32 noundef %53, i32 noundef 0)
  %54 = load i8, ptr %x55, align 1
  %55 = load i32, ptr %x42, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %54, i32 noundef %55, i32 noundef 0)
  %56 = load i8, ptr %x57, align 1
  %57 = load i32, ptr %x44, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %56, i32 noundef %57, i32 noundef 0)
  %58 = load i8, ptr %x59, align 1
  %59 = load i32, ptr %x46, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %58, i32 noundef %59, i32 noundef 0)
  %60 = load i8, ptr %x61, align 1
  %61 = load i32, ptr %x48, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %60, i32 noundef %61, i32 noundef 0)
  %62 = load i8, ptr %x63, align 1
  %63 = load i8, ptr %x49, align 1
  %conv = zext i8 %63 to i32
  %64 = load i8, ptr %x33, align 1
  %conv2 = zext i8 %64 to i32
  %65 = load i32, ptr %x5, align 4
  %add = add i32 %conv2, %65
  %add3 = add i32 %conv, %add
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %62, i32 noundef %add3, i32 noundef 0)
  %66 = load i32, ptr %x50, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %66, i32 noundef 1916078453)
  %67 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %67, i32 noundef -2)
  %68 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %68, i32 noundef -1)
  %69 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %69, i32 noundef -1)
  %70 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %70, i32 noundef -1)
  %71 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x76, ptr noundef %x77, i32 noundef %71, i32 noundef 1912856427)
  %72 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x78, ptr noundef %x79, i32 noundef %72, i32 noundef 566625579)
  %73 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x80, ptr noundef %x81, i32 noundef %73, i32 noundef 1404826633)
  %74 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x82, ptr noundef %x83, i32 noundef %74, i32 noundef 970277155)
  %75 = load i32, ptr %x83, align 4
  %76 = load i32, ptr %x80, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext 0, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x85, align 1
  %78 = load i32, ptr %x81, align 4
  %79 = load i32, ptr %x78, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x87, align 1
  %81 = load i32, ptr %x79, align 4
  %82 = load i32, ptr %x76, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x89, align 1
  %84 = load i32, ptr %x77, align 4
  %85 = load i32, ptr %x74, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x91, align 1
  %87 = load i32, ptr %x75, align 4
  %88 = load i32, ptr %x72, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x93, align 1
  %90 = load i32, ptr %x73, align 4
  %91 = load i32, ptr %x70, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x95, align 1
  %93 = load i32, ptr %x71, align 4
  %94 = load i32, ptr %x68, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %92, i32 noundef %93, i32 noundef %94)
  %95 = load i32, ptr %x50, align 4
  %96 = load i32, ptr %x82, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext 0, i32 noundef %95, i32 noundef %96)
  %97 = load i8, ptr %x99, align 1
  %98 = load i32, ptr %x52, align 4
  %99 = load i32, ptr %x84, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %97, i32 noundef %98, i32 noundef %99)
  %100 = load i8, ptr %x101, align 1
  %101 = load i32, ptr %x54, align 4
  %102 = load i32, ptr %x86, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %100, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x103, align 1
  %104 = load i32, ptr %x56, align 4
  %105 = load i32, ptr %x88, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %103, i32 noundef %104, i32 noundef %105)
  %106 = load i8, ptr %x105, align 1
  %107 = load i32, ptr %x58, align 4
  %108 = load i32, ptr %x90, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %106, i32 noundef %107, i32 noundef %108)
  %109 = load i8, ptr %x107, align 1
  %110 = load i32, ptr %x60, align 4
  %111 = load i32, ptr %x92, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %109, i32 noundef %110, i32 noundef %111)
  %112 = load i8, ptr %x109, align 1
  %113 = load i32, ptr %x62, align 4
  %114 = load i32, ptr %x94, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %112, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x111, align 1
  %116 = load i32, ptr %x64, align 4
  %117 = load i32, ptr %x96, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %115, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x113, align 1
  %119 = load i8, ptr %x65, align 1
  %conv4 = zext i8 %119 to i32
  %120 = load i8, ptr %x97, align 1
  %conv5 = zext i8 %120 to i32
  %121 = load i32, ptr %x69, align 4
  %add6 = add i32 %conv5, %121
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %118, i32 noundef %conv4, i32 noundef %add6)
  %122 = load i32, ptr %x100, align 4
  %123 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %123, i64 2
  %124 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext 0, i32 noundef %122, i32 noundef %124)
  %125 = load i8, ptr %x117, align 1
  %126 = load i32, ptr %x102, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %125, i32 noundef %126, i32 noundef 0)
  %127 = load i8, ptr %x119, align 1
  %128 = load i32, ptr %x104, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %127, i32 noundef %128, i32 noundef 0)
  %129 = load i8, ptr %x121, align 1
  %130 = load i32, ptr %x106, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %129, i32 noundef %130, i32 noundef 0)
  %131 = load i8, ptr %x123, align 1
  %132 = load i32, ptr %x108, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %131, i32 noundef %132, i32 noundef 0)
  %133 = load i8, ptr %x125, align 1
  %134 = load i32, ptr %x110, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %133, i32 noundef %134, i32 noundef 0)
  %135 = load i8, ptr %x127, align 1
  %136 = load i32, ptr %x112, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %135, i32 noundef %136, i32 noundef 0)
  %137 = load i8, ptr %x129, align 1
  %138 = load i32, ptr %x114, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %137, i32 noundef %138, i32 noundef 0)
  %139 = load i32, ptr %x116, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x132, ptr noundef %x133, i32 noundef %139, i32 noundef 1916078453)
  %140 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x134, ptr noundef %x135, i32 noundef %140, i32 noundef -2)
  %141 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x136, ptr noundef %x137, i32 noundef %141, i32 noundef -1)
  %142 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x138, ptr noundef %x139, i32 noundef %142, i32 noundef -1)
  %143 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x140, ptr noundef %x141, i32 noundef %143, i32 noundef -1)
  %144 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x142, ptr noundef %x143, i32 noundef %144, i32 noundef 1912856427)
  %145 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x144, ptr noundef %x145, i32 noundef %145, i32 noundef 566625579)
  %146 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x146, ptr noundef %x147, i32 noundef %146, i32 noundef 1404826633)
  %147 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x148, ptr noundef %x149, i32 noundef %147, i32 noundef 970277155)
  %148 = load i32, ptr %x149, align 4
  %149 = load i32, ptr %x146, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext 0, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x151, align 1
  %151 = load i32, ptr %x147, align 4
  %152 = load i32, ptr %x144, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x153, align 1
  %154 = load i32, ptr %x145, align 4
  %155 = load i32, ptr %x142, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i8, ptr %x155, align 1
  %157 = load i32, ptr %x143, align 4
  %158 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %156, i32 noundef %157, i32 noundef %158)
  %159 = load i8, ptr %x157, align 1
  %160 = load i32, ptr %x141, align 4
  %161 = load i32, ptr %x138, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %159, i32 noundef %160, i32 noundef %161)
  %162 = load i8, ptr %x159, align 1
  %163 = load i32, ptr %x139, align 4
  %164 = load i32, ptr %x136, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %162, i32 noundef %163, i32 noundef %164)
  %165 = load i8, ptr %x161, align 1
  %166 = load i32, ptr %x137, align 4
  %167 = load i32, ptr %x134, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167)
  %168 = load i32, ptr %x116, align 4
  %169 = load i32, ptr %x148, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext 0, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x165, align 1
  %171 = load i32, ptr %x118, align 4
  %172 = load i32, ptr %x150, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x167, align 1
  %174 = load i32, ptr %x120, align 4
  %175 = load i32, ptr %x152, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x169, align 1
  %177 = load i32, ptr %x122, align 4
  %178 = load i32, ptr %x154, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x171, align 1
  %180 = load i32, ptr %x124, align 4
  %181 = load i32, ptr %x156, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %179, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x173, align 1
  %183 = load i32, ptr %x126, align 4
  %184 = load i32, ptr %x158, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x175, align 1
  %186 = load i32, ptr %x128, align 4
  %187 = load i32, ptr %x160, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x177, align 1
  %189 = load i32, ptr %x130, align 4
  %190 = load i32, ptr %x162, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %188, i32 noundef %189, i32 noundef %190)
  %191 = load i8, ptr %x179, align 1
  %192 = load i8, ptr %x131, align 1
  %conv8 = zext i8 %192 to i32
  %193 = load i8, ptr %x115, align 1
  %conv9 = zext i8 %193 to i32
  %add10 = add i32 %conv8, %conv9
  %194 = load i8, ptr %x163, align 1
  %conv11 = zext i8 %194 to i32
  %195 = load i32, ptr %x135, align 4
  %add12 = add i32 %conv11, %195
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %191, i32 noundef %add10, i32 noundef %add12)
  %196 = load i32, ptr %x166, align 4
  %197 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %197, i64 3
  %198 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext 0, i32 noundef %196, i32 noundef %198)
  %199 = load i8, ptr %x183, align 1
  %200 = load i32, ptr %x168, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %199, i32 noundef %200, i32 noundef 0)
  %201 = load i8, ptr %x185, align 1
  %202 = load i32, ptr %x170, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %201, i32 noundef %202, i32 noundef 0)
  %203 = load i8, ptr %x187, align 1
  %204 = load i32, ptr %x172, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %203, i32 noundef %204, i32 noundef 0)
  %205 = load i8, ptr %x189, align 1
  %206 = load i32, ptr %x174, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %205, i32 noundef %206, i32 noundef 0)
  %207 = load i8, ptr %x191, align 1
  %208 = load i32, ptr %x176, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %207, i32 noundef %208, i32 noundef 0)
  %209 = load i8, ptr %x193, align 1
  %210 = load i32, ptr %x178, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %209, i32 noundef %210, i32 noundef 0)
  %211 = load i8, ptr %x195, align 1
  %212 = load i32, ptr %x180, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %211, i32 noundef %212, i32 noundef 0)
  %213 = load i32, ptr %x182, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %213, i32 noundef 1916078453)
  %214 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %214, i32 noundef -2)
  %215 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %215, i32 noundef -1)
  %216 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %216, i32 noundef -1)
  %217 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %217, i32 noundef -1)
  %218 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %218, i32 noundef 1912856427)
  %219 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %219, i32 noundef 566625579)
  %220 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x212, ptr noundef %x213, i32 noundef %220, i32 noundef 1404826633)
  %221 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x214, ptr noundef %x215, i32 noundef %221, i32 noundef 970277155)
  %222 = load i32, ptr %x215, align 4
  %223 = load i32, ptr %x212, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext 0, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x217, align 1
  %225 = load i32, ptr %x213, align 4
  %226 = load i32, ptr %x210, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x219, align 1
  %228 = load i32, ptr %x211, align 4
  %229 = load i32, ptr %x208, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x221, align 1
  %231 = load i32, ptr %x209, align 4
  %232 = load i32, ptr %x206, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x223, align 1
  %234 = load i32, ptr %x207, align 4
  %235 = load i32, ptr %x204, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x225, align 1
  %237 = load i32, ptr %x205, align 4
  %238 = load i32, ptr %x202, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x227, align 1
  %240 = load i32, ptr %x203, align 4
  %241 = load i32, ptr %x200, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i32, ptr %x182, align 4
  %243 = load i32, ptr %x214, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext 0, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x231, align 1
  %245 = load i32, ptr %x184, align 4
  %246 = load i32, ptr %x216, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x233, align 1
  %248 = load i32, ptr %x186, align 4
  %249 = load i32, ptr %x218, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x235, align 1
  %251 = load i32, ptr %x188, align 4
  %252 = load i32, ptr %x220, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x237, align 1
  %254 = load i32, ptr %x190, align 4
  %255 = load i32, ptr %x222, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %253, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x239, align 1
  %257 = load i32, ptr %x192, align 4
  %258 = load i32, ptr %x224, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x241, align 1
  %260 = load i32, ptr %x194, align 4
  %261 = load i32, ptr %x226, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x243, align 1
  %263 = load i32, ptr %x196, align 4
  %264 = load i32, ptr %x228, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %262, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x245, align 1
  %266 = load i8, ptr %x197, align 1
  %conv14 = zext i8 %266 to i32
  %267 = load i8, ptr %x181, align 1
  %conv15 = zext i8 %267 to i32
  %add16 = add i32 %conv14, %conv15
  %268 = load i8, ptr %x229, align 1
  %conv17 = zext i8 %268 to i32
  %269 = load i32, ptr %x201, align 4
  %add18 = add i32 %conv17, %269
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %265, i32 noundef %add16, i32 noundef %add18)
  %270 = load i32, ptr %x232, align 4
  %271 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %271, i64 4
  %272 = load i32, ptr %arrayidx19, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext 0, i32 noundef %270, i32 noundef %272)
  %273 = load i8, ptr %x249, align 1
  %274 = load i32, ptr %x234, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %273, i32 noundef %274, i32 noundef 0)
  %275 = load i8, ptr %x251, align 1
  %276 = load i32, ptr %x236, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %275, i32 noundef %276, i32 noundef 0)
  %277 = load i8, ptr %x253, align 1
  %278 = load i32, ptr %x238, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %277, i32 noundef %278, i32 noundef 0)
  %279 = load i8, ptr %x255, align 1
  %280 = load i32, ptr %x240, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %279, i32 noundef %280, i32 noundef 0)
  %281 = load i8, ptr %x257, align 1
  %282 = load i32, ptr %x242, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %281, i32 noundef %282, i32 noundef 0)
  %283 = load i8, ptr %x259, align 1
  %284 = load i32, ptr %x244, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %283, i32 noundef %284, i32 noundef 0)
  %285 = load i8, ptr %x261, align 1
  %286 = load i32, ptr %x246, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %285, i32 noundef %286, i32 noundef 0)
  %287 = load i32, ptr %x248, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x264, ptr noundef %x265, i32 noundef %287, i32 noundef 1916078453)
  %288 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x266, ptr noundef %x267, i32 noundef %288, i32 noundef -2)
  %289 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x268, ptr noundef %x269, i32 noundef %289, i32 noundef -1)
  %290 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x270, ptr noundef %x271, i32 noundef %290, i32 noundef -1)
  %291 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x272, ptr noundef %x273, i32 noundef %291, i32 noundef -1)
  %292 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x274, ptr noundef %x275, i32 noundef %292, i32 noundef 1912856427)
  %293 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x276, ptr noundef %x277, i32 noundef %293, i32 noundef 566625579)
  %294 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x278, ptr noundef %x279, i32 noundef %294, i32 noundef 1404826633)
  %295 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x280, ptr noundef %x281, i32 noundef %295, i32 noundef 970277155)
  %296 = load i32, ptr %x281, align 4
  %297 = load i32, ptr %x278, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext 0, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x283, align 1
  %299 = load i32, ptr %x279, align 4
  %300 = load i32, ptr %x276, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x285, align 1
  %302 = load i32, ptr %x277, align 4
  %303 = load i32, ptr %x274, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %301, i32 noundef %302, i32 noundef %303)
  %304 = load i8, ptr %x287, align 1
  %305 = load i32, ptr %x275, align 4
  %306 = load i32, ptr %x272, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %304, i32 noundef %305, i32 noundef %306)
  %307 = load i8, ptr %x289, align 1
  %308 = load i32, ptr %x273, align 4
  %309 = load i32, ptr %x270, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %307, i32 noundef %308, i32 noundef %309)
  %310 = load i8, ptr %x291, align 1
  %311 = load i32, ptr %x271, align 4
  %312 = load i32, ptr %x268, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %310, i32 noundef %311, i32 noundef %312)
  %313 = load i8, ptr %x293, align 1
  %314 = load i32, ptr %x269, align 4
  %315 = load i32, ptr %x266, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %313, i32 noundef %314, i32 noundef %315)
  %316 = load i32, ptr %x248, align 4
  %317 = load i32, ptr %x280, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext 0, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x297, align 1
  %319 = load i32, ptr %x250, align 4
  %320 = load i32, ptr %x282, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %318, i32 noundef %319, i32 noundef %320)
  %321 = load i8, ptr %x299, align 1
  %322 = load i32, ptr %x252, align 4
  %323 = load i32, ptr %x284, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x301, align 1
  %325 = load i32, ptr %x254, align 4
  %326 = load i32, ptr %x286, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x303, align 1
  %328 = load i32, ptr %x256, align 4
  %329 = load i32, ptr %x288, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x305, align 1
  %331 = load i32, ptr %x258, align 4
  %332 = load i32, ptr %x290, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext %330, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x307, align 1
  %334 = load i32, ptr %x260, align 4
  %335 = load i32, ptr %x292, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x309, align 1
  %337 = load i32, ptr %x262, align 4
  %338 = load i32, ptr %x294, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x311, align 1
  %340 = load i8, ptr %x263, align 1
  %conv20 = zext i8 %340 to i32
  %341 = load i8, ptr %x247, align 1
  %conv21 = zext i8 %341 to i32
  %add22 = add i32 %conv20, %conv21
  %342 = load i8, ptr %x295, align 1
  %conv23 = zext i8 %342 to i32
  %343 = load i32, ptr %x267, align 4
  %add24 = add i32 %conv23, %343
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %339, i32 noundef %add22, i32 noundef %add24)
  %344 = load i32, ptr %x298, align 4
  %345 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %345, i64 5
  %346 = load i32, ptr %arrayidx25, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext 0, i32 noundef %344, i32 noundef %346)
  %347 = load i8, ptr %x315, align 1
  %348 = load i32, ptr %x300, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %347, i32 noundef %348, i32 noundef 0)
  %349 = load i8, ptr %x317, align 1
  %350 = load i32, ptr %x302, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %349, i32 noundef %350, i32 noundef 0)
  %351 = load i8, ptr %x319, align 1
  %352 = load i32, ptr %x304, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %351, i32 noundef %352, i32 noundef 0)
  %353 = load i8, ptr %x321, align 1
  %354 = load i32, ptr %x306, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %353, i32 noundef %354, i32 noundef 0)
  %355 = load i8, ptr %x323, align 1
  %356 = load i32, ptr %x308, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %355, i32 noundef %356, i32 noundef 0)
  %357 = load i8, ptr %x325, align 1
  %358 = load i32, ptr %x310, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %357, i32 noundef %358, i32 noundef 0)
  %359 = load i8, ptr %x327, align 1
  %360 = load i32, ptr %x312, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %359, i32 noundef %360, i32 noundef 0)
  %361 = load i32, ptr %x314, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x330, ptr noundef %x331, i32 noundef %361, i32 noundef 1916078453)
  %362 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x332, ptr noundef %x333, i32 noundef %362, i32 noundef -2)
  %363 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x334, ptr noundef %x335, i32 noundef %363, i32 noundef -1)
  %364 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x336, ptr noundef %x337, i32 noundef %364, i32 noundef -1)
  %365 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x338, ptr noundef %x339, i32 noundef %365, i32 noundef -1)
  %366 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x340, ptr noundef %x341, i32 noundef %366, i32 noundef 1912856427)
  %367 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %367, i32 noundef 566625579)
  %368 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %368, i32 noundef 1404826633)
  %369 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %369, i32 noundef 970277155)
  %370 = load i32, ptr %x347, align 4
  %371 = load i32, ptr %x344, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext 0, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x349, align 1
  %373 = load i32, ptr %x345, align 4
  %374 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %372, i32 noundef %373, i32 noundef %374)
  %375 = load i8, ptr %x351, align 1
  %376 = load i32, ptr %x343, align 4
  %377 = load i32, ptr %x340, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %375, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x353, align 1
  %379 = load i32, ptr %x341, align 4
  %380 = load i32, ptr %x338, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x355, align 1
  %382 = load i32, ptr %x339, align 4
  %383 = load i32, ptr %x336, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x357, align 1
  %385 = load i32, ptr %x337, align 4
  %386 = load i32, ptr %x334, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x359, align 1
  %388 = load i32, ptr %x335, align 4
  %389 = load i32, ptr %x332, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i32, ptr %x314, align 4
  %391 = load i32, ptr %x346, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext 0, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x363, align 1
  %393 = load i32, ptr %x316, align 4
  %394 = load i32, ptr %x348, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x365, align 1
  %396 = load i32, ptr %x318, align 4
  %397 = load i32, ptr %x350, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x367, align 1
  %399 = load i32, ptr %x320, align 4
  %400 = load i32, ptr %x352, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %398, i32 noundef %399, i32 noundef %400)
  %401 = load i8, ptr %x369, align 1
  %402 = load i32, ptr %x322, align 4
  %403 = load i32, ptr %x354, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %401, i32 noundef %402, i32 noundef %403)
  %404 = load i8, ptr %x371, align 1
  %405 = load i32, ptr %x324, align 4
  %406 = load i32, ptr %x356, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %404, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x373, align 1
  %408 = load i32, ptr %x326, align 4
  %409 = load i32, ptr %x358, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x375, align 1
  %411 = load i32, ptr %x328, align 4
  %412 = load i32, ptr %x360, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x377, align 1
  %414 = load i8, ptr %x329, align 1
  %conv26 = zext i8 %414 to i32
  %415 = load i8, ptr %x313, align 1
  %conv27 = zext i8 %415 to i32
  %add28 = add i32 %conv26, %conv27
  %416 = load i8, ptr %x361, align 1
  %conv29 = zext i8 %416 to i32
  %417 = load i32, ptr %x333, align 4
  %add30 = add i32 %conv29, %417
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %413, i32 noundef %add28, i32 noundef %add30)
  %418 = load i32, ptr %x364, align 4
  %419 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %419, i64 6
  %420 = load i32, ptr %arrayidx31, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext 0, i32 noundef %418, i32 noundef %420)
  %421 = load i8, ptr %x381, align 1
  %422 = load i32, ptr %x366, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %421, i32 noundef %422, i32 noundef 0)
  %423 = load i8, ptr %x383, align 1
  %424 = load i32, ptr %x368, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %423, i32 noundef %424, i32 noundef 0)
  %425 = load i8, ptr %x385, align 1
  %426 = load i32, ptr %x370, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %425, i32 noundef %426, i32 noundef 0)
  %427 = load i8, ptr %x387, align 1
  %428 = load i32, ptr %x372, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %427, i32 noundef %428, i32 noundef 0)
  %429 = load i8, ptr %x389, align 1
  %430 = load i32, ptr %x374, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %429, i32 noundef %430, i32 noundef 0)
  %431 = load i8, ptr %x391, align 1
  %432 = load i32, ptr %x376, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %431, i32 noundef %432, i32 noundef 0)
  %433 = load i8, ptr %x393, align 1
  %434 = load i32, ptr %x378, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x394, ptr noundef %x395, i8 noundef zeroext %433, i32 noundef %434, i32 noundef 0)
  %435 = load i32, ptr %x380, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x396, ptr noundef %x397, i32 noundef %435, i32 noundef 1916078453)
  %436 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x398, ptr noundef %x399, i32 noundef %436, i32 noundef -2)
  %437 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x400, ptr noundef %x401, i32 noundef %437, i32 noundef -1)
  %438 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x402, ptr noundef %x403, i32 noundef %438, i32 noundef -1)
  %439 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x404, ptr noundef %x405, i32 noundef %439, i32 noundef -1)
  %440 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x406, ptr noundef %x407, i32 noundef %440, i32 noundef 1912856427)
  %441 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x408, ptr noundef %x409, i32 noundef %441, i32 noundef 566625579)
  %442 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x410, ptr noundef %x411, i32 noundef %442, i32 noundef 1404826633)
  %443 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x412, ptr noundef %x413, i32 noundef %443, i32 noundef 970277155)
  %444 = load i32, ptr %x413, align 4
  %445 = load i32, ptr %x410, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext 0, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x415, align 1
  %447 = load i32, ptr %x411, align 4
  %448 = load i32, ptr %x408, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %448)
  %449 = load i8, ptr %x417, align 1
  %450 = load i32, ptr %x409, align 4
  %451 = load i32, ptr %x406, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %449, i32 noundef %450, i32 noundef %451)
  %452 = load i8, ptr %x419, align 1
  %453 = load i32, ptr %x407, align 4
  %454 = load i32, ptr %x404, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %452, i32 noundef %453, i32 noundef %454)
  %455 = load i8, ptr %x421, align 1
  %456 = load i32, ptr %x405, align 4
  %457 = load i32, ptr %x402, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %455, i32 noundef %456, i32 noundef %457)
  %458 = load i8, ptr %x423, align 1
  %459 = load i32, ptr %x403, align 4
  %460 = load i32, ptr %x400, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x424, ptr noundef %x425, i8 noundef zeroext %458, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x425, align 1
  %462 = load i32, ptr %x401, align 4
  %463 = load i32, ptr %x398, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x426, ptr noundef %x427, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %463)
  %464 = load i32, ptr %x380, align 4
  %465 = load i32, ptr %x412, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext 0, i32 noundef %464, i32 noundef %465)
  %466 = load i8, ptr %x429, align 1
  %467 = load i32, ptr %x382, align 4
  %468 = load i32, ptr %x414, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %466, i32 noundef %467, i32 noundef %468)
  %469 = load i8, ptr %x431, align 1
  %470 = load i32, ptr %x384, align 4
  %471 = load i32, ptr %x416, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %469, i32 noundef %470, i32 noundef %471)
  %472 = load i8, ptr %x433, align 1
  %473 = load i32, ptr %x386, align 4
  %474 = load i32, ptr %x418, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %472, i32 noundef %473, i32 noundef %474)
  %475 = load i8, ptr %x435, align 1
  %476 = load i32, ptr %x388, align 4
  %477 = load i32, ptr %x420, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %475, i32 noundef %476, i32 noundef %477)
  %478 = load i8, ptr %x437, align 1
  %479 = load i32, ptr %x390, align 4
  %480 = load i32, ptr %x422, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %478, i32 noundef %479, i32 noundef %480)
  %481 = load i8, ptr %x439, align 1
  %482 = load i32, ptr %x392, align 4
  %483 = load i32, ptr %x424, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext %481, i32 noundef %482, i32 noundef %483)
  %484 = load i8, ptr %x441, align 1
  %485 = load i32, ptr %x394, align 4
  %486 = load i32, ptr %x426, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext %484, i32 noundef %485, i32 noundef %486)
  %487 = load i8, ptr %x443, align 1
  %488 = load i8, ptr %x395, align 1
  %conv32 = zext i8 %488 to i32
  %489 = load i8, ptr %x379, align 1
  %conv33 = zext i8 %489 to i32
  %add34 = add i32 %conv32, %conv33
  %490 = load i8, ptr %x427, align 1
  %conv35 = zext i8 %490 to i32
  %491 = load i32, ptr %x399, align 4
  %add36 = add i32 %conv35, %491
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %487, i32 noundef %add34, i32 noundef %add36)
  %492 = load i32, ptr %x430, align 4
  %493 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %493, i64 7
  %494 = load i32, ptr %arrayidx37, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext 0, i32 noundef %492, i32 noundef %494)
  %495 = load i8, ptr %x447, align 1
  %496 = load i32, ptr %x432, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %495, i32 noundef %496, i32 noundef 0)
  %497 = load i8, ptr %x449, align 1
  %498 = load i32, ptr %x434, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %497, i32 noundef %498, i32 noundef 0)
  %499 = load i8, ptr %x451, align 1
  %500 = load i32, ptr %x436, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %499, i32 noundef %500, i32 noundef 0)
  %501 = load i8, ptr %x453, align 1
  %502 = load i32, ptr %x438, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %501, i32 noundef %502, i32 noundef 0)
  %503 = load i8, ptr %x455, align 1
  %504 = load i32, ptr %x440, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %503, i32 noundef %504, i32 noundef 0)
  %505 = load i8, ptr %x457, align 1
  %506 = load i32, ptr %x442, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %505, i32 noundef %506, i32 noundef 0)
  %507 = load i8, ptr %x459, align 1
  %508 = load i32, ptr %x444, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %507, i32 noundef %508, i32 noundef 0)
  %509 = load i32, ptr %x446, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x462, ptr noundef %x463, i32 noundef %509, i32 noundef 1916078453)
  %510 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x464, ptr noundef %x465, i32 noundef %510, i32 noundef -2)
  %511 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x466, ptr noundef %x467, i32 noundef %511, i32 noundef -1)
  %512 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x468, ptr noundef %x469, i32 noundef %512, i32 noundef -1)
  %513 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x470, ptr noundef %x471, i32 noundef %513, i32 noundef -1)
  %514 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x472, ptr noundef %x473, i32 noundef %514, i32 noundef 1912856427)
  %515 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x474, ptr noundef %x475, i32 noundef %515, i32 noundef 566625579)
  %516 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x476, ptr noundef %x477, i32 noundef %516, i32 noundef 1404826633)
  %517 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x478, ptr noundef %x479, i32 noundef %517, i32 noundef 970277155)
  %518 = load i32, ptr %x479, align 4
  %519 = load i32, ptr %x476, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext 0, i32 noundef %518, i32 noundef %519)
  %520 = load i8, ptr %x481, align 1
  %521 = load i32, ptr %x477, align 4
  %522 = load i32, ptr %x474, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %520, i32 noundef %521, i32 noundef %522)
  %523 = load i8, ptr %x483, align 1
  %524 = load i32, ptr %x475, align 4
  %525 = load i32, ptr %x472, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %523, i32 noundef %524, i32 noundef %525)
  %526 = load i8, ptr %x485, align 1
  %527 = load i32, ptr %x473, align 4
  %528 = load i32, ptr %x470, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %526, i32 noundef %527, i32 noundef %528)
  %529 = load i8, ptr %x487, align 1
  %530 = load i32, ptr %x471, align 4
  %531 = load i32, ptr %x468, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %529, i32 noundef %530, i32 noundef %531)
  %532 = load i8, ptr %x489, align 1
  %533 = load i32, ptr %x469, align 4
  %534 = load i32, ptr %x466, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %532, i32 noundef %533, i32 noundef %534)
  %535 = load i8, ptr %x491, align 1
  %536 = load i32, ptr %x467, align 4
  %537 = load i32, ptr %x464, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %535, i32 noundef %536, i32 noundef %537)
  %538 = load i32, ptr %x446, align 4
  %539 = load i32, ptr %x478, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext 0, i32 noundef %538, i32 noundef %539)
  %540 = load i8, ptr %x495, align 1
  %541 = load i32, ptr %x448, align 4
  %542 = load i32, ptr %x480, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext %540, i32 noundef %541, i32 noundef %542)
  %543 = load i8, ptr %x497, align 1
  %544 = load i32, ptr %x450, align 4
  %545 = load i32, ptr %x482, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %543, i32 noundef %544, i32 noundef %545)
  %546 = load i8, ptr %x499, align 1
  %547 = load i32, ptr %x452, align 4
  %548 = load i32, ptr %x484, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext %546, i32 noundef %547, i32 noundef %548)
  %549 = load i8, ptr %x501, align 1
  %550 = load i32, ptr %x454, align 4
  %551 = load i32, ptr %x486, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %549, i32 noundef %550, i32 noundef %551)
  %552 = load i8, ptr %x503, align 1
  %553 = load i32, ptr %x456, align 4
  %554 = load i32, ptr %x488, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %552, i32 noundef %553, i32 noundef %554)
  %555 = load i8, ptr %x505, align 1
  %556 = load i32, ptr %x458, align 4
  %557 = load i32, ptr %x490, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x506, ptr noundef %x507, i8 noundef zeroext %555, i32 noundef %556, i32 noundef %557)
  %558 = load i8, ptr %x507, align 1
  %559 = load i32, ptr %x460, align 4
  %560 = load i32, ptr %x492, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x508, ptr noundef %x509, i8 noundef zeroext %558, i32 noundef %559, i32 noundef %560)
  %561 = load i8, ptr %x509, align 1
  %562 = load i8, ptr %x461, align 1
  %conv38 = zext i8 %562 to i32
  %563 = load i8, ptr %x445, align 1
  %conv39 = zext i8 %563 to i32
  %add40 = add i32 %conv38, %conv39
  %564 = load i8, ptr %x493, align 1
  %conv41 = zext i8 %564 to i32
  %565 = load i32, ptr %x465, align 4
  %add42 = add i32 %conv41, %565
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x510, ptr noundef %x511, i8 noundef zeroext %561, i32 noundef %add40, i32 noundef %add42)
  %566 = load i32, ptr %x496, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x512, ptr noundef %x513, i8 noundef zeroext 0, i32 noundef %566, i32 noundef 970277155)
  %567 = load i8, ptr %x513, align 1
  %568 = load i32, ptr %x498, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x514, ptr noundef %x515, i8 noundef zeroext %567, i32 noundef %568, i32 noundef 1404826633)
  %569 = load i8, ptr %x515, align 1
  %570 = load i32, ptr %x500, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x516, ptr noundef %x517, i8 noundef zeroext %569, i32 noundef %570, i32 noundef 566625579)
  %571 = load i8, ptr %x517, align 1
  %572 = load i32, ptr %x502, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x518, ptr noundef %x519, i8 noundef zeroext %571, i32 noundef %572, i32 noundef 1912856427)
  %573 = load i8, ptr %x519, align 1
  %574 = load i32, ptr %x504, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x520, ptr noundef %x521, i8 noundef zeroext %573, i32 noundef %574, i32 noundef -1)
  %575 = load i8, ptr %x521, align 1
  %576 = load i32, ptr %x506, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x522, ptr noundef %x523, i8 noundef zeroext %575, i32 noundef %576, i32 noundef -1)
  %577 = load i8, ptr %x523, align 1
  %578 = load i32, ptr %x508, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x524, ptr noundef %x525, i8 noundef zeroext %577, i32 noundef %578, i32 noundef -1)
  %579 = load i8, ptr %x525, align 1
  %580 = load i32, ptr %x510, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext %579, i32 noundef %580, i32 noundef -2)
  %581 = load i8, ptr %x527, align 1
  %582 = load i8, ptr %x511, align 1
  %conv43 = zext i8 %582 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %581, i32 noundef %conv43, i32 noundef 0)
  %583 = load i8, ptr %x529, align 1
  %584 = load i32, ptr %x512, align 4
  %585 = load i32, ptr %x496, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x530, i8 noundef zeroext %583, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x529, align 1
  %587 = load i32, ptr %x514, align 4
  %588 = load i32, ptr %x498, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x531, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x529, align 1
  %590 = load i32, ptr %x516, align 4
  %591 = load i32, ptr %x500, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x532, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i8, ptr %x529, align 1
  %593 = load i32, ptr %x518, align 4
  %594 = load i32, ptr %x502, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x533, i8 noundef zeroext %592, i32 noundef %593, i32 noundef %594)
  %595 = load i8, ptr %x529, align 1
  %596 = load i32, ptr %x520, align 4
  %597 = load i32, ptr %x504, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x534, i8 noundef zeroext %595, i32 noundef %596, i32 noundef %597)
  %598 = load i8, ptr %x529, align 1
  %599 = load i32, ptr %x522, align 4
  %600 = load i32, ptr %x506, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x535, i8 noundef zeroext %598, i32 noundef %599, i32 noundef %600)
  %601 = load i8, ptr %x529, align 1
  %602 = load i32, ptr %x524, align 4
  %603 = load i32, ptr %x508, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x536, i8 noundef zeroext %601, i32 noundef %602, i32 noundef %603)
  %604 = load i8, ptr %x529, align 1
  %605 = load i32, ptr %x526, align 4
  %606 = load i32, ptr %x510, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x537, i8 noundef zeroext %604, i32 noundef %605, i32 noundef %606)
  %607 = load i32, ptr %x530, align 4
  %608 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %608, i64 0
  store i32 %607, ptr %arrayidx44, align 4
  %609 = load i32, ptr %x531, align 4
  %610 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %610, i64 1
  store i32 %609, ptr %arrayidx45, align 4
  %611 = load i32, ptr %x532, align 4
  %612 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %612, i64 2
  store i32 %611, ptr %arrayidx46, align 4
  %613 = load i32, ptr %x533, align 4
  %614 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %614, i64 3
  store i32 %613, ptr %arrayidx47, align 4
  %615 = load i32, ptr %x534, align 4
  %616 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %616, i64 4
  store i32 %615, ptr %arrayidx48, align 4
  %617 = load i32, ptr %x535, align 4
  %618 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %618, i64 5
  store i32 %617, ptr %arrayidx49, align 4
  %619 = load i32, ptr %x536, align 4
  %620 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %620, i64 6
  store i32 %619, ptr %arrayidx50, align 4
  %621 = load i32, ptr %x537, align 4
  %622 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %622, i64 7
  store i32 %621, ptr %arrayidx51, align 4
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
