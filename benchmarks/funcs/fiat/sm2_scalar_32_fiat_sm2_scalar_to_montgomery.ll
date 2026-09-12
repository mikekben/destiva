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
define dso_local void @fiat_sm2_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
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
  %x101 = alloca i32, align 4
  %x102 = alloca i32, align 4
  %x103 = alloca i32, align 4
  %x104 = alloca i32, align 4
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
  %x130 = alloca i8, align 1
  %x131 = alloca i32, align 4
  %x132 = alloca i8, align 1
  %x133 = alloca i32, align 4
  %x134 = alloca i8, align 1
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
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
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
  %x197 = alloca i32, align 4
  %x198 = alloca i32, align 4
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
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
  %x280 = alloca i8, align 1
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
  %x292 = alloca i32, align 4
  %x293 = alloca i32, align 4
  %x294 = alloca i32, align 4
  %x295 = alloca i32, align 4
  %x296 = alloca i32, align 4
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
  %x328 = alloca i32, align 4
  %x329 = alloca i32, align 4
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
  %x378 = alloca i32, align 4
  %x379 = alloca i32, align 4
  %x380 = alloca i32, align 4
  %x381 = alloca i32, align 4
  %x382 = alloca i32, align 4
  %x383 = alloca i32, align 4
  %x384 = alloca i32, align 4
  %x385 = alloca i32, align 4
  %x386 = alloca i32, align 4
  %x387 = alloca i32, align 4
  %x388 = alloca i32, align 4
  %x389 = alloca i32, align 4
  %x390 = alloca i32, align 4
  %x391 = alloca i32, align 4
  %x392 = alloca i32, align 4
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
  %x532 = alloca i32, align 4
  %x533 = alloca i32, align 4
  %x534 = alloca i32, align 4
  %x535 = alloca i32, align 4
  %x536 = alloca i32, align 4
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
  %x570 = alloca i32, align 4
  %x571 = alloca i32, align 4
  %x572 = alloca i32, align 4
  %x573 = alloca i32, align 4
  %x574 = alloca i32, align 4
  %x575 = alloca i32, align 4
  %x576 = alloca i32, align 4
  %x577 = alloca i32, align 4
  %x578 = alloca i32, align 4
  %x579 = alloca i32, align 4
  %x580 = alloca i32, align 4
  %x581 = alloca i32, align 4
  %x582 = alloca i32, align 4
  %x583 = alloca i32, align 4
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
  %x628 = alloca i32, align 4
  %x629 = alloca i32, align 4
  %x630 = alloca i32, align 4
  %x631 = alloca i32, align 4
  %x632 = alloca i32, align 4
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
  %x666 = alloca i32, align 4
  %x667 = alloca i32, align 4
  %x668 = alloca i32, align 4
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
  %x712 = alloca i32, align 4
  %x713 = alloca i32, align 4
  %x714 = alloca i32, align 4
  %x715 = alloca i32, align 4
  %x716 = alloca i32, align 4
  %x717 = alloca i32, align 4
  %x718 = alloca i32, align 4
  %x719 = alloca i32, align 4
  %x720 = alloca i32, align 4
  %x721 = alloca i32, align 4
  %x722 = alloca i32, align 4
  %x723 = alloca i32, align 4
  %x724 = alloca i32, align 4
  %x725 = alloca i32, align 4
  %x726 = alloca i32, align 4
  %x727 = alloca i32, align 4
  %x728 = alloca i32, align 4
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
  %x742 = alloca i8, align 1
  %x743 = alloca i32, align 4
  %x744 = alloca i8, align 1
  %x745 = alloca i32, align 4
  %x746 = alloca i8, align 1
  %x747 = alloca i32, align 4
  %x748 = alloca i8, align 1
  %x749 = alloca i32, align 4
  %x750 = alloca i8, align 1
  %x751 = alloca i32, align 4
  %x752 = alloca i8, align 1
  %x753 = alloca i32, align 4
  %x754 = alloca i8, align 1
  %x755 = alloca i32, align 4
  %x756 = alloca i8, align 1
  %x757 = alloca i32, align 4
  %x758 = alloca i8, align 1
  %x759 = alloca i32, align 4
  %x760 = alloca i8, align 1
  %x761 = alloca i32, align 4
  %x762 = alloca i8, align 1
  %x763 = alloca i32, align 4
  %x764 = alloca i8, align 1
  %x765 = alloca i32, align 4
  %x766 = alloca i8, align 1
  %x767 = alloca i32, align 4
  %x768 = alloca i8, align 1
  %x769 = alloca i32, align 4
  %x770 = alloca i8, align 1
  %x771 = alloca i32, align 4
  %x772 = alloca i8, align 1
  %x773 = alloca i32, align 4
  %x774 = alloca i8, align 1
  %x775 = alloca i32, align 4
  %x776 = alloca i8, align 1
  %x777 = alloca i32, align 4
  %x778 = alloca i8, align 1
  %x779 = alloca i32, align 4
  %x780 = alloca i32, align 4
  %x781 = alloca i32, align 4
  %x782 = alloca i32, align 4
  %x783 = alloca i32, align 4
  %x784 = alloca i32, align 4
  %x785 = alloca i32, align 4
  %x786 = alloca i32, align 4
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
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef 515236882)
  %17 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %17, i32 noundef -1574224581)
  %18 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %18, i32 noundef 1645201484)
  %19 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %19, i32 noundef 989847764)
  %20 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %20, i32 noundef 878989386)
  %21 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %21, i32 noundef -563109126)
  %22 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %22, i32 noundef -1877896529)
  %23 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %23, i32 noundef 2081509152)
  %24 = load i32, ptr %x24, align 4
  %25 = load i32, ptr %x21, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x26, align 1
  %27 = load i32, ptr %x22, align 4
  %28 = load i32, ptr %x19, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x28, align 1
  %30 = load i32, ptr %x20, align 4
  %31 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x30, align 1
  %33 = load i32, ptr %x18, align 4
  %34 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %x32, align 1
  %36 = load i32, ptr %x16, align 4
  %37 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x34, align 1
  %39 = load i32, ptr %x14, align 4
  %40 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x36, align 1
  %42 = load i32, ptr %x12, align 4
  %43 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i32, ptr %x23, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %44, i32 noundef 1916078453)
  %45 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %45, i32 noundef -2)
  %46 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x43, ptr noundef %x44, i32 noundef %46, i32 noundef -1)
  %47 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x45, ptr noundef %x46, i32 noundef %47, i32 noundef -1)
  %48 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x47, ptr noundef %x48, i32 noundef %48, i32 noundef -1)
  %49 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x49, ptr noundef %x50, i32 noundef %49, i32 noundef 1912856427)
  %50 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x51, ptr noundef %x52, i32 noundef %50, i32 noundef 566625579)
  %51 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x53, ptr noundef %x54, i32 noundef %51, i32 noundef 1404826633)
  %52 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x55, ptr noundef %x56, i32 noundef %52, i32 noundef 970277155)
  %53 = load i32, ptr %x56, align 4
  %54 = load i32, ptr %x53, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext 0, i32 noundef %53, i32 noundef %54)
  %55 = load i8, ptr %x58, align 1
  %56 = load i32, ptr %x54, align 4
  %57 = load i32, ptr %x51, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %55, i32 noundef %56, i32 noundef %57)
  %58 = load i8, ptr %x60, align 1
  %59 = load i32, ptr %x52, align 4
  %60 = load i32, ptr %x49, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %58, i32 noundef %59, i32 noundef %60)
  %61 = load i8, ptr %x62, align 1
  %62 = load i32, ptr %x50, align 4
  %63 = load i32, ptr %x47, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %61, i32 noundef %62, i32 noundef %63)
  %64 = load i8, ptr %x64, align 1
  %65 = load i32, ptr %x48, align 4
  %66 = load i32, ptr %x45, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %64, i32 noundef %65, i32 noundef %66)
  %67 = load i8, ptr %x66, align 1
  %68 = load i32, ptr %x46, align 4
  %69 = load i32, ptr %x43, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %67, i32 noundef %68, i32 noundef %69)
  %70 = load i8, ptr %x68, align 1
  %71 = load i32, ptr %x44, align 4
  %72 = load i32, ptr %x41, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %70, i32 noundef %71, i32 noundef %72)
  %73 = load i32, ptr %x23, align 4
  %74 = load i32, ptr %x55, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext 0, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x72, align 1
  %76 = load i32, ptr %x25, align 4
  %77 = load i32, ptr %x57, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x74, align 1
  %79 = load i32, ptr %x27, align 4
  %80 = load i32, ptr %x59, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x76, align 1
  %82 = load i32, ptr %x29, align 4
  %83 = load i32, ptr %x61, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x78, align 1
  %85 = load i32, ptr %x31, align 4
  %86 = load i32, ptr %x63, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x80, align 1
  %88 = load i32, ptr %x33, align 4
  %89 = load i32, ptr %x65, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x82, align 1
  %91 = load i32, ptr %x35, align 4
  %92 = load i32, ptr %x67, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92)
  %93 = load i8, ptr %x84, align 1
  %94 = load i32, ptr %x37, align 4
  %95 = load i32, ptr %x69, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %93, i32 noundef %94, i32 noundef %95)
  %96 = load i8, ptr %x86, align 1
  %97 = load i8, ptr %x38, align 1
  %conv = zext i8 %97 to i32
  %98 = load i32, ptr %x10, align 4
  %add = add i32 %conv, %98
  %99 = load i8, ptr %x70, align 1
  %conv8 = zext i8 %99 to i32
  %100 = load i32, ptr %x42, align 4
  %add9 = add i32 %conv8, %100
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %96, i32 noundef %add, i32 noundef %add9)
  %101 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x89, ptr noundef %x90, i32 noundef %101, i32 noundef 515236882)
  %102 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x91, ptr noundef %x92, i32 noundef %102, i32 noundef -1574224581)
  %103 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x93, ptr noundef %x94, i32 noundef %103, i32 noundef 1645201484)
  %104 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x95, ptr noundef %x96, i32 noundef %104, i32 noundef 989847764)
  %105 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x97, ptr noundef %x98, i32 noundef %105, i32 noundef 878989386)
  %106 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x99, ptr noundef %x100, i32 noundef %106, i32 noundef -563109126)
  %107 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x101, ptr noundef %x102, i32 noundef %107, i32 noundef -1877896529)
  %108 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x103, ptr noundef %x104, i32 noundef %108, i32 noundef 2081509152)
  %109 = load i32, ptr %x104, align 4
  %110 = load i32, ptr %x101, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext 0, i32 noundef %109, i32 noundef %110)
  %111 = load i8, ptr %x106, align 1
  %112 = load i32, ptr %x102, align 4
  %113 = load i32, ptr %x99, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %111, i32 noundef %112, i32 noundef %113)
  %114 = load i8, ptr %x108, align 1
  %115 = load i32, ptr %x100, align 4
  %116 = load i32, ptr %x97, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %114, i32 noundef %115, i32 noundef %116)
  %117 = load i8, ptr %x110, align 1
  %118 = load i32, ptr %x98, align 4
  %119 = load i32, ptr %x95, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %117, i32 noundef %118, i32 noundef %119)
  %120 = load i8, ptr %x112, align 1
  %121 = load i32, ptr %x96, align 4
  %122 = load i32, ptr %x93, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %120, i32 noundef %121, i32 noundef %122)
  %123 = load i8, ptr %x114, align 1
  %124 = load i32, ptr %x94, align 4
  %125 = load i32, ptr %x91, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %123, i32 noundef %124, i32 noundef %125)
  %126 = load i8, ptr %x116, align 1
  %127 = load i32, ptr %x92, align 4
  %128 = load i32, ptr %x89, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %126, i32 noundef %127, i32 noundef %128)
  %129 = load i32, ptr %x73, align 4
  %130 = load i32, ptr %x103, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext 0, i32 noundef %129, i32 noundef %130)
  %131 = load i8, ptr %x120, align 1
  %132 = load i32, ptr %x75, align 4
  %133 = load i32, ptr %x105, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %131, i32 noundef %132, i32 noundef %133)
  %134 = load i8, ptr %x122, align 1
  %135 = load i32, ptr %x77, align 4
  %136 = load i32, ptr %x107, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %134, i32 noundef %135, i32 noundef %136)
  %137 = load i8, ptr %x124, align 1
  %138 = load i32, ptr %x79, align 4
  %139 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %137, i32 noundef %138, i32 noundef %139)
  %140 = load i8, ptr %x126, align 1
  %141 = load i32, ptr %x81, align 4
  %142 = load i32, ptr %x111, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %140, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x128, align 1
  %144 = load i32, ptr %x83, align 4
  %145 = load i32, ptr %x113, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %143, i32 noundef %144, i32 noundef %145)
  %146 = load i8, ptr %x130, align 1
  %147 = load i32, ptr %x85, align 4
  %148 = load i32, ptr %x115, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %146, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x132, align 1
  %150 = load i32, ptr %x87, align 4
  %151 = load i32, ptr %x117, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i32, ptr %x119, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %152, i32 noundef 1916078453)
  %153 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %153, i32 noundef -2)
  %154 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %154, i32 noundef -1)
  %155 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %155, i32 noundef -1)
  %156 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %156, i32 noundef -1)
  %157 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %157, i32 noundef 1912856427)
  %158 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x147, ptr noundef %x148, i32 noundef %158, i32 noundef 566625579)
  %159 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x149, ptr noundef %x150, i32 noundef %159, i32 noundef 1404826633)
  %160 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x151, ptr noundef %x152, i32 noundef %160, i32 noundef 970277155)
  %161 = load i32, ptr %x152, align 4
  %162 = load i32, ptr %x149, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext 0, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x154, align 1
  %164 = load i32, ptr %x150, align 4
  %165 = load i32, ptr %x147, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i8, ptr %x156, align 1
  %167 = load i32, ptr %x148, align 4
  %168 = load i32, ptr %x145, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %166, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x158, align 1
  %170 = load i32, ptr %x146, align 4
  %171 = load i32, ptr %x143, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x160, align 1
  %173 = load i32, ptr %x144, align 4
  %174 = load i32, ptr %x141, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x162, align 1
  %176 = load i32, ptr %x142, align 4
  %177 = load i32, ptr %x139, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i8, ptr %x164, align 1
  %179 = load i32, ptr %x140, align 4
  %180 = load i32, ptr %x137, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180)
  %181 = load i32, ptr %x119, align 4
  %182 = load i32, ptr %x151, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext 0, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x168, align 1
  %184 = load i32, ptr %x121, align 4
  %185 = load i32, ptr %x153, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x170, align 1
  %187 = load i32, ptr %x123, align 4
  %188 = load i32, ptr %x155, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188)
  %189 = load i8, ptr %x172, align 1
  %190 = load i32, ptr %x125, align 4
  %191 = load i32, ptr %x157, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %189, i32 noundef %190, i32 noundef %191)
  %192 = load i8, ptr %x174, align 1
  %193 = load i32, ptr %x127, align 4
  %194 = load i32, ptr %x159, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %192, i32 noundef %193, i32 noundef %194)
  %195 = load i8, ptr %x176, align 1
  %196 = load i32, ptr %x129, align 4
  %197 = load i32, ptr %x161, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %195, i32 noundef %196, i32 noundef %197)
  %198 = load i8, ptr %x178, align 1
  %199 = load i32, ptr %x131, align 4
  %200 = load i32, ptr %x163, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200)
  %201 = load i8, ptr %x180, align 1
  %202 = load i32, ptr %x133, align 4
  %203 = load i32, ptr %x165, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %201, i32 noundef %202, i32 noundef %203)
  %204 = load i8, ptr %x182, align 1
  %205 = load i8, ptr %x134, align 1
  %conv10 = zext i8 %205 to i32
  %206 = load i8, ptr %x88, align 1
  %conv11 = zext i8 %206 to i32
  %add12 = add i32 %conv10, %conv11
  %207 = load i8, ptr %x118, align 1
  %conv13 = zext i8 %207 to i32
  %208 = load i32, ptr %x90, align 4
  %add14 = add i32 %conv13, %208
  %add15 = add i32 %add12, %add14
  %209 = load i8, ptr %x166, align 1
  %conv16 = zext i8 %209 to i32
  %210 = load i32, ptr %x138, align 4
  %add17 = add i32 %conv16, %210
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %204, i32 noundef %add15, i32 noundef %add17)
  %211 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x185, ptr noundef %x186, i32 noundef %211, i32 noundef 515236882)
  %212 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x187, ptr noundef %x188, i32 noundef %212, i32 noundef -1574224581)
  %213 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x189, ptr noundef %x190, i32 noundef %213, i32 noundef 1645201484)
  %214 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x191, ptr noundef %x192, i32 noundef %214, i32 noundef 989847764)
  %215 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x193, ptr noundef %x194, i32 noundef %215, i32 noundef 878989386)
  %216 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x195, ptr noundef %x196, i32 noundef %216, i32 noundef -563109126)
  %217 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x197, ptr noundef %x198, i32 noundef %217, i32 noundef -1877896529)
  %218 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x199, ptr noundef %x200, i32 noundef %218, i32 noundef 2081509152)
  %219 = load i32, ptr %x200, align 4
  %220 = load i32, ptr %x197, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext 0, i32 noundef %219, i32 noundef %220)
  %221 = load i8, ptr %x202, align 1
  %222 = load i32, ptr %x198, align 4
  %223 = load i32, ptr %x195, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %221, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x204, align 1
  %225 = load i32, ptr %x196, align 4
  %226 = load i32, ptr %x193, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x206, align 1
  %228 = load i32, ptr %x194, align 4
  %229 = load i32, ptr %x191, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x208, align 1
  %231 = load i32, ptr %x192, align 4
  %232 = load i32, ptr %x189, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x210, align 1
  %234 = load i32, ptr %x190, align 4
  %235 = load i32, ptr %x187, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x212, align 1
  %237 = load i32, ptr %x188, align 4
  %238 = load i32, ptr %x185, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i32, ptr %x169, align 4
  %240 = load i32, ptr %x199, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext 0, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x216, align 1
  %242 = load i32, ptr %x171, align 4
  %243 = load i32, ptr %x201, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x218, align 1
  %245 = load i32, ptr %x173, align 4
  %246 = load i32, ptr %x203, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x220, align 1
  %248 = load i32, ptr %x175, align 4
  %249 = load i32, ptr %x205, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x221, ptr noundef %x222, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x222, align 1
  %251 = load i32, ptr %x177, align 4
  %252 = load i32, ptr %x207, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x224, align 1
  %254 = load i32, ptr %x179, align 4
  %255 = load i32, ptr %x209, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %253, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x226, align 1
  %257 = load i32, ptr %x181, align 4
  %258 = load i32, ptr %x211, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x228, align 1
  %260 = load i32, ptr %x183, align 4
  %261 = load i32, ptr %x213, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i32, ptr %x215, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x231, ptr noundef %x232, i32 noundef %262, i32 noundef 1916078453)
  %263 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x233, ptr noundef %x234, i32 noundef %263, i32 noundef -2)
  %264 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x235, ptr noundef %x236, i32 noundef %264, i32 noundef -1)
  %265 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x237, ptr noundef %x238, i32 noundef %265, i32 noundef -1)
  %266 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x239, ptr noundef %x240, i32 noundef %266, i32 noundef -1)
  %267 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x241, ptr noundef %x242, i32 noundef %267, i32 noundef 1912856427)
  %268 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x243, ptr noundef %x244, i32 noundef %268, i32 noundef 566625579)
  %269 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %269, i32 noundef 1404826633)
  %270 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %270, i32 noundef 970277155)
  %271 = load i32, ptr %x248, align 4
  %272 = load i32, ptr %x245, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext 0, i32 noundef %271, i32 noundef %272)
  %273 = load i8, ptr %x250, align 1
  %274 = load i32, ptr %x246, align 4
  %275 = load i32, ptr %x243, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %273, i32 noundef %274, i32 noundef %275)
  %276 = load i8, ptr %x252, align 1
  %277 = load i32, ptr %x244, align 4
  %278 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %276, i32 noundef %277, i32 noundef %278)
  %279 = load i8, ptr %x254, align 1
  %280 = load i32, ptr %x242, align 4
  %281 = load i32, ptr %x239, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %279, i32 noundef %280, i32 noundef %281)
  %282 = load i8, ptr %x256, align 1
  %283 = load i32, ptr %x240, align 4
  %284 = load i32, ptr %x237, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %282, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x258, align 1
  %286 = load i32, ptr %x238, align 4
  %287 = load i32, ptr %x235, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %285, i32 noundef %286, i32 noundef %287)
  %288 = load i8, ptr %x260, align 1
  %289 = load i32, ptr %x236, align 4
  %290 = load i32, ptr %x233, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %288, i32 noundef %289, i32 noundef %290)
  %291 = load i32, ptr %x215, align 4
  %292 = load i32, ptr %x247, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext 0, i32 noundef %291, i32 noundef %292)
  %293 = load i8, ptr %x264, align 1
  %294 = load i32, ptr %x217, align 4
  %295 = load i32, ptr %x249, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %293, i32 noundef %294, i32 noundef %295)
  %296 = load i8, ptr %x266, align 1
  %297 = load i32, ptr %x219, align 4
  %298 = load i32, ptr %x251, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %296, i32 noundef %297, i32 noundef %298)
  %299 = load i8, ptr %x268, align 1
  %300 = load i32, ptr %x221, align 4
  %301 = load i32, ptr %x253, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %299, i32 noundef %300, i32 noundef %301)
  %302 = load i8, ptr %x270, align 1
  %303 = load i32, ptr %x223, align 4
  %304 = load i32, ptr %x255, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %302, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x272, align 1
  %306 = load i32, ptr %x225, align 4
  %307 = load i32, ptr %x257, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %305, i32 noundef %306, i32 noundef %307)
  %308 = load i8, ptr %x274, align 1
  %309 = load i32, ptr %x227, align 4
  %310 = load i32, ptr %x259, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %308, i32 noundef %309, i32 noundef %310)
  %311 = load i8, ptr %x276, align 1
  %312 = load i32, ptr %x229, align 4
  %313 = load i32, ptr %x261, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %311, i32 noundef %312, i32 noundef %313)
  %314 = load i8, ptr %x278, align 1
  %315 = load i8, ptr %x230, align 1
  %conv18 = zext i8 %315 to i32
  %316 = load i8, ptr %x184, align 1
  %conv19 = zext i8 %316 to i32
  %add20 = add i32 %conv18, %conv19
  %317 = load i8, ptr %x214, align 1
  %conv21 = zext i8 %317 to i32
  %318 = load i32, ptr %x186, align 4
  %add22 = add i32 %conv21, %318
  %add23 = add i32 %add20, %add22
  %319 = load i8, ptr %x262, align 1
  %conv24 = zext i8 %319 to i32
  %320 = load i32, ptr %x234, align 4
  %add25 = add i32 %conv24, %320
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %314, i32 noundef %add23, i32 noundef %add25)
  %321 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x281, ptr noundef %x282, i32 noundef %321, i32 noundef 515236882)
  %322 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x283, ptr noundef %x284, i32 noundef %322, i32 noundef -1574224581)
  %323 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x285, ptr noundef %x286, i32 noundef %323, i32 noundef 1645201484)
  %324 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x287, ptr noundef %x288, i32 noundef %324, i32 noundef 989847764)
  %325 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x289, ptr noundef %x290, i32 noundef %325, i32 noundef 878989386)
  %326 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x291, ptr noundef %x292, i32 noundef %326, i32 noundef -563109126)
  %327 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x293, ptr noundef %x294, i32 noundef %327, i32 noundef -1877896529)
  %328 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x295, ptr noundef %x296, i32 noundef %328, i32 noundef 2081509152)
  %329 = load i32, ptr %x296, align 4
  %330 = load i32, ptr %x293, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext 0, i32 noundef %329, i32 noundef %330)
  %331 = load i8, ptr %x298, align 1
  %332 = load i32, ptr %x294, align 4
  %333 = load i32, ptr %x291, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %331, i32 noundef %332, i32 noundef %333)
  %334 = load i8, ptr %x300, align 1
  %335 = load i32, ptr %x292, align 4
  %336 = load i32, ptr %x289, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %334, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x302, align 1
  %338 = load i32, ptr %x290, align 4
  %339 = load i32, ptr %x287, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x304, align 1
  %341 = load i32, ptr %x288, align 4
  %342 = load i32, ptr %x285, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x306, align 1
  %344 = load i32, ptr %x286, align 4
  %345 = load i32, ptr %x283, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x308, align 1
  %347 = load i32, ptr %x284, align 4
  %348 = load i32, ptr %x281, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i32, ptr %x265, align 4
  %350 = load i32, ptr %x295, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext 0, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x312, align 1
  %352 = load i32, ptr %x267, align 4
  %353 = load i32, ptr %x297, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %351, i32 noundef %352, i32 noundef %353)
  %354 = load i8, ptr %x314, align 1
  %355 = load i32, ptr %x269, align 4
  %356 = load i32, ptr %x299, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %354, i32 noundef %355, i32 noundef %356)
  %357 = load i8, ptr %x316, align 1
  %358 = load i32, ptr %x271, align 4
  %359 = load i32, ptr %x301, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %357, i32 noundef %358, i32 noundef %359)
  %360 = load i8, ptr %x318, align 1
  %361 = load i32, ptr %x273, align 4
  %362 = load i32, ptr %x303, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %360, i32 noundef %361, i32 noundef %362)
  %363 = load i8, ptr %x320, align 1
  %364 = load i32, ptr %x275, align 4
  %365 = load i32, ptr %x305, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %363, i32 noundef %364, i32 noundef %365)
  %366 = load i8, ptr %x322, align 1
  %367 = load i32, ptr %x277, align 4
  %368 = load i32, ptr %x307, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %366, i32 noundef %367, i32 noundef %368)
  %369 = load i8, ptr %x324, align 1
  %370 = load i32, ptr %x279, align 4
  %371 = load i32, ptr %x309, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %369, i32 noundef %370, i32 noundef %371)
  %372 = load i32, ptr %x311, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x327, ptr noundef %x328, i32 noundef %372, i32 noundef 1916078453)
  %373 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x329, ptr noundef %x330, i32 noundef %373, i32 noundef -2)
  %374 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x331, ptr noundef %x332, i32 noundef %374, i32 noundef -1)
  %375 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x333, ptr noundef %x334, i32 noundef %375, i32 noundef -1)
  %376 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x335, ptr noundef %x336, i32 noundef %376, i32 noundef -1)
  %377 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x337, ptr noundef %x338, i32 noundef %377, i32 noundef 1912856427)
  %378 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x339, ptr noundef %x340, i32 noundef %378, i32 noundef 566625579)
  %379 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x341, ptr noundef %x342, i32 noundef %379, i32 noundef 1404826633)
  %380 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x343, ptr noundef %x344, i32 noundef %380, i32 noundef 970277155)
  %381 = load i32, ptr %x344, align 4
  %382 = load i32, ptr %x341, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext 0, i32 noundef %381, i32 noundef %382)
  %383 = load i8, ptr %x346, align 1
  %384 = load i32, ptr %x342, align 4
  %385 = load i32, ptr %x339, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %383, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x348, align 1
  %387 = load i32, ptr %x340, align 4
  %388 = load i32, ptr %x337, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x350, align 1
  %390 = load i32, ptr %x338, align 4
  %391 = load i32, ptr %x335, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x352, align 1
  %393 = load i32, ptr %x336, align 4
  %394 = load i32, ptr %x333, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x354, align 1
  %396 = load i32, ptr %x334, align 4
  %397 = load i32, ptr %x331, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x356, align 1
  %399 = load i32, ptr %x332, align 4
  %400 = load i32, ptr %x329, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %398, i32 noundef %399, i32 noundef %400)
  %401 = load i32, ptr %x311, align 4
  %402 = load i32, ptr %x343, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext 0, i32 noundef %401, i32 noundef %402)
  %403 = load i8, ptr %x360, align 1
  %404 = load i32, ptr %x313, align 4
  %405 = load i32, ptr %x345, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %403, i32 noundef %404, i32 noundef %405)
  %406 = load i8, ptr %x362, align 1
  %407 = load i32, ptr %x315, align 4
  %408 = load i32, ptr %x347, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %406, i32 noundef %407, i32 noundef %408)
  %409 = load i8, ptr %x364, align 1
  %410 = load i32, ptr %x317, align 4
  %411 = load i32, ptr %x349, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %409, i32 noundef %410, i32 noundef %411)
  %412 = load i8, ptr %x366, align 1
  %413 = load i32, ptr %x319, align 4
  %414 = load i32, ptr %x351, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %412, i32 noundef %413, i32 noundef %414)
  %415 = load i8, ptr %x368, align 1
  %416 = load i32, ptr %x321, align 4
  %417 = load i32, ptr %x353, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %415, i32 noundef %416, i32 noundef %417)
  %418 = load i8, ptr %x370, align 1
  %419 = load i32, ptr %x323, align 4
  %420 = load i32, ptr %x355, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %418, i32 noundef %419, i32 noundef %420)
  %421 = load i8, ptr %x372, align 1
  %422 = load i32, ptr %x325, align 4
  %423 = load i32, ptr %x357, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %421, i32 noundef %422, i32 noundef %423)
  %424 = load i8, ptr %x374, align 1
  %425 = load i8, ptr %x326, align 1
  %conv26 = zext i8 %425 to i32
  %426 = load i8, ptr %x280, align 1
  %conv27 = zext i8 %426 to i32
  %add28 = add i32 %conv26, %conv27
  %427 = load i8, ptr %x310, align 1
  %conv29 = zext i8 %427 to i32
  %428 = load i32, ptr %x282, align 4
  %add30 = add i32 %conv29, %428
  %add31 = add i32 %add28, %add30
  %429 = load i8, ptr %x358, align 1
  %conv32 = zext i8 %429 to i32
  %430 = load i32, ptr %x330, align 4
  %add33 = add i32 %conv32, %430
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %424, i32 noundef %add31, i32 noundef %add33)
  %431 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x377, ptr noundef %x378, i32 noundef %431, i32 noundef 515236882)
  %432 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x379, ptr noundef %x380, i32 noundef %432, i32 noundef -1574224581)
  %433 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x381, ptr noundef %x382, i32 noundef %433, i32 noundef 1645201484)
  %434 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x383, ptr noundef %x384, i32 noundef %434, i32 noundef 989847764)
  %435 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x385, ptr noundef %x386, i32 noundef %435, i32 noundef 878989386)
  %436 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x387, ptr noundef %x388, i32 noundef %436, i32 noundef -563109126)
  %437 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x389, ptr noundef %x390, i32 noundef %437, i32 noundef -1877896529)
  %438 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x391, ptr noundef %x392, i32 noundef %438, i32 noundef 2081509152)
  %439 = load i32, ptr %x392, align 4
  %440 = load i32, ptr %x389, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext 0, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x394, align 1
  %442 = load i32, ptr %x390, align 4
  %443 = load i32, ptr %x387, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x396, align 1
  %445 = load i32, ptr %x388, align 4
  %446 = load i32, ptr %x385, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x398, align 1
  %448 = load i32, ptr %x386, align 4
  %449 = load i32, ptr %x383, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x400, align 1
  %451 = load i32, ptr %x384, align 4
  %452 = load i32, ptr %x381, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x402, align 1
  %454 = load i32, ptr %x382, align 4
  %455 = load i32, ptr %x379, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i8, ptr %x404, align 1
  %457 = load i32, ptr %x380, align 4
  %458 = load i32, ptr %x377, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %456, i32 noundef %457, i32 noundef %458)
  %459 = load i32, ptr %x361, align 4
  %460 = load i32, ptr %x391, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext 0, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x408, align 1
  %462 = load i32, ptr %x363, align 4
  %463 = load i32, ptr %x393, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x410, align 1
  %465 = load i32, ptr %x365, align 4
  %466 = load i32, ptr %x395, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x412, align 1
  %468 = load i32, ptr %x367, align 4
  %469 = load i32, ptr %x397, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x414, align 1
  %471 = load i32, ptr %x369, align 4
  %472 = load i32, ptr %x399, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x416, align 1
  %474 = load i32, ptr %x371, align 4
  %475 = load i32, ptr %x401, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x418, align 1
  %477 = load i32, ptr %x373, align 4
  %478 = load i32, ptr %x403, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x420, align 1
  %480 = load i32, ptr %x375, align 4
  %481 = load i32, ptr %x405, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i32, ptr %x407, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %482, i32 noundef 1916078453)
  %483 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %483, i32 noundef -2)
  %484 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x427, ptr noundef %x428, i32 noundef %484, i32 noundef -1)
  %485 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x429, ptr noundef %x430, i32 noundef %485, i32 noundef -1)
  %486 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x431, ptr noundef %x432, i32 noundef %486, i32 noundef -1)
  %487 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x433, ptr noundef %x434, i32 noundef %487, i32 noundef 1912856427)
  %488 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x435, ptr noundef %x436, i32 noundef %488, i32 noundef 566625579)
  %489 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x437, ptr noundef %x438, i32 noundef %489, i32 noundef 1404826633)
  %490 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x439, ptr noundef %x440, i32 noundef %490, i32 noundef 970277155)
  %491 = load i32, ptr %x440, align 4
  %492 = load i32, ptr %x437, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext 0, i32 noundef %491, i32 noundef %492)
  %493 = load i8, ptr %x442, align 1
  %494 = load i32, ptr %x438, align 4
  %495 = load i32, ptr %x435, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %493, i32 noundef %494, i32 noundef %495)
  %496 = load i8, ptr %x444, align 1
  %497 = load i32, ptr %x436, align 4
  %498 = load i32, ptr %x433, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %496, i32 noundef %497, i32 noundef %498)
  %499 = load i8, ptr %x446, align 1
  %500 = load i32, ptr %x434, align 4
  %501 = load i32, ptr %x431, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %499, i32 noundef %500, i32 noundef %501)
  %502 = load i8, ptr %x448, align 1
  %503 = load i32, ptr %x432, align 4
  %504 = load i32, ptr %x429, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %502, i32 noundef %503, i32 noundef %504)
  %505 = load i8, ptr %x450, align 1
  %506 = load i32, ptr %x430, align 4
  %507 = load i32, ptr %x427, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %505, i32 noundef %506, i32 noundef %507)
  %508 = load i8, ptr %x452, align 1
  %509 = load i32, ptr %x428, align 4
  %510 = load i32, ptr %x425, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %508, i32 noundef %509, i32 noundef %510)
  %511 = load i32, ptr %x407, align 4
  %512 = load i32, ptr %x439, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext 0, i32 noundef %511, i32 noundef %512)
  %513 = load i8, ptr %x456, align 1
  %514 = load i32, ptr %x409, align 4
  %515 = load i32, ptr %x441, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext %513, i32 noundef %514, i32 noundef %515)
  %516 = load i8, ptr %x458, align 1
  %517 = load i32, ptr %x411, align 4
  %518 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %516, i32 noundef %517, i32 noundef %518)
  %519 = load i8, ptr %x460, align 1
  %520 = load i32, ptr %x413, align 4
  %521 = load i32, ptr %x445, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %519, i32 noundef %520, i32 noundef %521)
  %522 = load i8, ptr %x462, align 1
  %523 = load i32, ptr %x415, align 4
  %524 = load i32, ptr %x447, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %522, i32 noundef %523, i32 noundef %524)
  %525 = load i8, ptr %x464, align 1
  %526 = load i32, ptr %x417, align 4
  %527 = load i32, ptr %x449, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %525, i32 noundef %526, i32 noundef %527)
  %528 = load i8, ptr %x466, align 1
  %529 = load i32, ptr %x419, align 4
  %530 = load i32, ptr %x451, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %528, i32 noundef %529, i32 noundef %530)
  %531 = load i8, ptr %x468, align 1
  %532 = load i32, ptr %x421, align 4
  %533 = load i32, ptr %x453, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %531, i32 noundef %532, i32 noundef %533)
  %534 = load i8, ptr %x470, align 1
  %535 = load i8, ptr %x422, align 1
  %conv34 = zext i8 %535 to i32
  %536 = load i8, ptr %x376, align 1
  %conv35 = zext i8 %536 to i32
  %add36 = add i32 %conv34, %conv35
  %537 = load i8, ptr %x406, align 1
  %conv37 = zext i8 %537 to i32
  %538 = load i32, ptr %x378, align 4
  %add38 = add i32 %conv37, %538
  %add39 = add i32 %add36, %add38
  %539 = load i8, ptr %x454, align 1
  %conv40 = zext i8 %539 to i32
  %540 = load i32, ptr %x426, align 4
  %add41 = add i32 %conv40, %540
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %534, i32 noundef %add39, i32 noundef %add41)
  %541 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x473, ptr noundef %x474, i32 noundef %541, i32 noundef 515236882)
  %542 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x475, ptr noundef %x476, i32 noundef %542, i32 noundef -1574224581)
  %543 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x477, ptr noundef %x478, i32 noundef %543, i32 noundef 1645201484)
  %544 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x479, ptr noundef %x480, i32 noundef %544, i32 noundef 989847764)
  %545 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x481, ptr noundef %x482, i32 noundef %545, i32 noundef 878989386)
  %546 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x483, ptr noundef %x484, i32 noundef %546, i32 noundef -563109126)
  %547 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x485, ptr noundef %x486, i32 noundef %547, i32 noundef -1877896529)
  %548 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x487, ptr noundef %x488, i32 noundef %548, i32 noundef 2081509152)
  %549 = load i32, ptr %x488, align 4
  %550 = load i32, ptr %x485, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext 0, i32 noundef %549, i32 noundef %550)
  %551 = load i8, ptr %x490, align 1
  %552 = load i32, ptr %x486, align 4
  %553 = load i32, ptr %x483, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext %551, i32 noundef %552, i32 noundef %553)
  %554 = load i8, ptr %x492, align 1
  %555 = load i32, ptr %x484, align 4
  %556 = load i32, ptr %x481, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %554, i32 noundef %555, i32 noundef %556)
  %557 = load i8, ptr %x494, align 1
  %558 = load i32, ptr %x482, align 4
  %559 = load i32, ptr %x479, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %557, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x496, align 1
  %561 = load i32, ptr %x480, align 4
  %562 = load i32, ptr %x477, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x498, align 1
  %564 = load i32, ptr %x478, align 4
  %565 = load i32, ptr %x475, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x500, align 1
  %567 = load i32, ptr %x476, align 4
  %568 = load i32, ptr %x473, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x501, ptr noundef %x502, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i32, ptr %x457, align 4
  %570 = load i32, ptr %x487, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x503, ptr noundef %x504, i8 noundef zeroext 0, i32 noundef %569, i32 noundef %570)
  %571 = load i8, ptr %x504, align 1
  %572 = load i32, ptr %x459, align 4
  %573 = load i32, ptr %x489, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext %571, i32 noundef %572, i32 noundef %573)
  %574 = load i8, ptr %x506, align 1
  %575 = load i32, ptr %x461, align 4
  %576 = load i32, ptr %x491, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext %574, i32 noundef %575, i32 noundef %576)
  %577 = load i8, ptr %x508, align 1
  %578 = load i32, ptr %x463, align 4
  %579 = load i32, ptr %x493, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %577, i32 noundef %578, i32 noundef %579)
  %580 = load i8, ptr %x510, align 1
  %581 = load i32, ptr %x465, align 4
  %582 = load i32, ptr %x495, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %580, i32 noundef %581, i32 noundef %582)
  %583 = load i8, ptr %x512, align 1
  %584 = load i32, ptr %x467, align 4
  %585 = load i32, ptr %x497, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %583, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x514, align 1
  %587 = load i32, ptr %x469, align 4
  %588 = load i32, ptr %x499, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x516, align 1
  %590 = load i32, ptr %x471, align 4
  %591 = load i32, ptr %x501, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i32, ptr %x503, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x519, ptr noundef %x520, i32 noundef %592, i32 noundef 1916078453)
  %593 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x521, ptr noundef %x522, i32 noundef %593, i32 noundef -2)
  %594 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x523, ptr noundef %x524, i32 noundef %594, i32 noundef -1)
  %595 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x525, ptr noundef %x526, i32 noundef %595, i32 noundef -1)
  %596 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x527, ptr noundef %x528, i32 noundef %596, i32 noundef -1)
  %597 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x529, ptr noundef %x530, i32 noundef %597, i32 noundef 1912856427)
  %598 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x531, ptr noundef %x532, i32 noundef %598, i32 noundef 566625579)
  %599 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x533, ptr noundef %x534, i32 noundef %599, i32 noundef 1404826633)
  %600 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x535, ptr noundef %x536, i32 noundef %600, i32 noundef 970277155)
  %601 = load i32, ptr %x536, align 4
  %602 = load i32, ptr %x533, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext 0, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x538, align 1
  %604 = load i32, ptr %x534, align 4
  %605 = load i32, ptr %x531, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext %603, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x540, align 1
  %607 = load i32, ptr %x532, align 4
  %608 = load i32, ptr %x529, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %606, i32 noundef %607, i32 noundef %608)
  %609 = load i8, ptr %x542, align 1
  %610 = load i32, ptr %x530, align 4
  %611 = load i32, ptr %x527, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %609, i32 noundef %610, i32 noundef %611)
  %612 = load i8, ptr %x544, align 1
  %613 = load i32, ptr %x528, align 4
  %614 = load i32, ptr %x525, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %612, i32 noundef %613, i32 noundef %614)
  %615 = load i8, ptr %x546, align 1
  %616 = load i32, ptr %x526, align 4
  %617 = load i32, ptr %x523, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %615, i32 noundef %616, i32 noundef %617)
  %618 = load i8, ptr %x548, align 1
  %619 = load i32, ptr %x524, align 4
  %620 = load i32, ptr %x521, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %618, i32 noundef %619, i32 noundef %620)
  %621 = load i32, ptr %x503, align 4
  %622 = load i32, ptr %x535, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext 0, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x552, align 1
  %624 = load i32, ptr %x505, align 4
  %625 = load i32, ptr %x537, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i8, ptr %x554, align 1
  %627 = load i32, ptr %x507, align 4
  %628 = load i32, ptr %x539, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %626, i32 noundef %627, i32 noundef %628)
  %629 = load i8, ptr %x556, align 1
  %630 = load i32, ptr %x509, align 4
  %631 = load i32, ptr %x541, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %629, i32 noundef %630, i32 noundef %631)
  %632 = load i8, ptr %x558, align 1
  %633 = load i32, ptr %x511, align 4
  %634 = load i32, ptr %x543, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %632, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x560, align 1
  %636 = load i32, ptr %x513, align 4
  %637 = load i32, ptr %x545, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x562, align 1
  %639 = load i32, ptr %x515, align 4
  %640 = load i32, ptr %x547, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x564, align 1
  %642 = load i32, ptr %x517, align 4
  %643 = load i32, ptr %x549, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %641, i32 noundef %642, i32 noundef %643)
  %644 = load i8, ptr %x566, align 1
  %645 = load i8, ptr %x518, align 1
  %conv42 = zext i8 %645 to i32
  %646 = load i8, ptr %x472, align 1
  %conv43 = zext i8 %646 to i32
  %add44 = add i32 %conv42, %conv43
  %647 = load i8, ptr %x502, align 1
  %conv45 = zext i8 %647 to i32
  %648 = load i32, ptr %x474, align 4
  %add46 = add i32 %conv45, %648
  %add47 = add i32 %add44, %add46
  %649 = load i8, ptr %x550, align 1
  %conv48 = zext i8 %649 to i32
  %650 = load i32, ptr %x522, align 4
  %add49 = add i32 %conv48, %650
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %644, i32 noundef %add47, i32 noundef %add49)
  %651 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x569, ptr noundef %x570, i32 noundef %651, i32 noundef 515236882)
  %652 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x571, ptr noundef %x572, i32 noundef %652, i32 noundef -1574224581)
  %653 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x573, ptr noundef %x574, i32 noundef %653, i32 noundef 1645201484)
  %654 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x575, ptr noundef %x576, i32 noundef %654, i32 noundef 989847764)
  %655 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x577, ptr noundef %x578, i32 noundef %655, i32 noundef 878989386)
  %656 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x579, ptr noundef %x580, i32 noundef %656, i32 noundef -563109126)
  %657 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x581, ptr noundef %x582, i32 noundef %657, i32 noundef -1877896529)
  %658 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x583, ptr noundef %x584, i32 noundef %658, i32 noundef 2081509152)
  %659 = load i32, ptr %x584, align 4
  %660 = load i32, ptr %x581, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext 0, i32 noundef %659, i32 noundef %660)
  %661 = load i8, ptr %x586, align 1
  %662 = load i32, ptr %x582, align 4
  %663 = load i32, ptr %x579, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %661, i32 noundef %662, i32 noundef %663)
  %664 = load i8, ptr %x588, align 1
  %665 = load i32, ptr %x580, align 4
  %666 = load i32, ptr %x577, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %664, i32 noundef %665, i32 noundef %666)
  %667 = load i8, ptr %x590, align 1
  %668 = load i32, ptr %x578, align 4
  %669 = load i32, ptr %x575, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %667, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x592, align 1
  %671 = load i32, ptr %x576, align 4
  %672 = load i32, ptr %x573, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %670, i32 noundef %671, i32 noundef %672)
  %673 = load i8, ptr %x594, align 1
  %674 = load i32, ptr %x574, align 4
  %675 = load i32, ptr %x571, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %673, i32 noundef %674, i32 noundef %675)
  %676 = load i8, ptr %x596, align 1
  %677 = load i32, ptr %x572, align 4
  %678 = load i32, ptr %x569, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %676, i32 noundef %677, i32 noundef %678)
  %679 = load i32, ptr %x553, align 4
  %680 = load i32, ptr %x583, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext 0, i32 noundef %679, i32 noundef %680)
  %681 = load i8, ptr %x600, align 1
  %682 = load i32, ptr %x555, align 4
  %683 = load i32, ptr %x585, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %681, i32 noundef %682, i32 noundef %683)
  %684 = load i8, ptr %x602, align 1
  %685 = load i32, ptr %x557, align 4
  %686 = load i32, ptr %x587, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x603, ptr noundef %x604, i8 noundef zeroext %684, i32 noundef %685, i32 noundef %686)
  %687 = load i8, ptr %x604, align 1
  %688 = load i32, ptr %x559, align 4
  %689 = load i32, ptr %x589, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x605, ptr noundef %x606, i8 noundef zeroext %687, i32 noundef %688, i32 noundef %689)
  %690 = load i8, ptr %x606, align 1
  %691 = load i32, ptr %x561, align 4
  %692 = load i32, ptr %x591, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x607, ptr noundef %x608, i8 noundef zeroext %690, i32 noundef %691, i32 noundef %692)
  %693 = load i8, ptr %x608, align 1
  %694 = load i32, ptr %x563, align 4
  %695 = load i32, ptr %x593, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x609, ptr noundef %x610, i8 noundef zeroext %693, i32 noundef %694, i32 noundef %695)
  %696 = load i8, ptr %x610, align 1
  %697 = load i32, ptr %x565, align 4
  %698 = load i32, ptr %x595, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x611, ptr noundef %x612, i8 noundef zeroext %696, i32 noundef %697, i32 noundef %698)
  %699 = load i8, ptr %x612, align 1
  %700 = load i32, ptr %x567, align 4
  %701 = load i32, ptr %x597, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x613, ptr noundef %x614, i8 noundef zeroext %699, i32 noundef %700, i32 noundef %701)
  %702 = load i32, ptr %x599, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x615, ptr noundef %x616, i32 noundef %702, i32 noundef 1916078453)
  %703 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x617, ptr noundef %x618, i32 noundef %703, i32 noundef -2)
  %704 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x619, ptr noundef %x620, i32 noundef %704, i32 noundef -1)
  %705 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x621, ptr noundef %x622, i32 noundef %705, i32 noundef -1)
  %706 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x623, ptr noundef %x624, i32 noundef %706, i32 noundef -1)
  %707 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x625, ptr noundef %x626, i32 noundef %707, i32 noundef 1912856427)
  %708 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x627, ptr noundef %x628, i32 noundef %708, i32 noundef 566625579)
  %709 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x629, ptr noundef %x630, i32 noundef %709, i32 noundef 1404826633)
  %710 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x631, ptr noundef %x632, i32 noundef %710, i32 noundef 970277155)
  %711 = load i32, ptr %x632, align 4
  %712 = load i32, ptr %x629, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext 0, i32 noundef %711, i32 noundef %712)
  %713 = load i8, ptr %x634, align 1
  %714 = load i32, ptr %x630, align 4
  %715 = load i32, ptr %x627, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %713, i32 noundef %714, i32 noundef %715)
  %716 = load i8, ptr %x636, align 1
  %717 = load i32, ptr %x628, align 4
  %718 = load i32, ptr %x625, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %716, i32 noundef %717, i32 noundef %718)
  %719 = load i8, ptr %x638, align 1
  %720 = load i32, ptr %x626, align 4
  %721 = load i32, ptr %x623, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %719, i32 noundef %720, i32 noundef %721)
  %722 = load i8, ptr %x640, align 1
  %723 = load i32, ptr %x624, align 4
  %724 = load i32, ptr %x621, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %722, i32 noundef %723, i32 noundef %724)
  %725 = load i8, ptr %x642, align 1
  %726 = load i32, ptr %x622, align 4
  %727 = load i32, ptr %x619, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %725, i32 noundef %726, i32 noundef %727)
  %728 = load i8, ptr %x644, align 1
  %729 = load i32, ptr %x620, align 4
  %730 = load i32, ptr %x617, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %728, i32 noundef %729, i32 noundef %730)
  %731 = load i32, ptr %x599, align 4
  %732 = load i32, ptr %x631, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x647, ptr noundef %x648, i8 noundef zeroext 0, i32 noundef %731, i32 noundef %732)
  %733 = load i8, ptr %x648, align 1
  %734 = load i32, ptr %x601, align 4
  %735 = load i32, ptr %x633, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x649, ptr noundef %x650, i8 noundef zeroext %733, i32 noundef %734, i32 noundef %735)
  %736 = load i8, ptr %x650, align 1
  %737 = load i32, ptr %x603, align 4
  %738 = load i32, ptr %x635, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x651, ptr noundef %x652, i8 noundef zeroext %736, i32 noundef %737, i32 noundef %738)
  %739 = load i8, ptr %x652, align 1
  %740 = load i32, ptr %x605, align 4
  %741 = load i32, ptr %x637, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x653, ptr noundef %x654, i8 noundef zeroext %739, i32 noundef %740, i32 noundef %741)
  %742 = load i8, ptr %x654, align 1
  %743 = load i32, ptr %x607, align 4
  %744 = load i32, ptr %x639, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x655, ptr noundef %x656, i8 noundef zeroext %742, i32 noundef %743, i32 noundef %744)
  %745 = load i8, ptr %x656, align 1
  %746 = load i32, ptr %x609, align 4
  %747 = load i32, ptr %x641, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x657, ptr noundef %x658, i8 noundef zeroext %745, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x658, align 1
  %749 = load i32, ptr %x611, align 4
  %750 = load i32, ptr %x643, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x659, ptr noundef %x660, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x660, align 1
  %752 = load i32, ptr %x613, align 4
  %753 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x661, ptr noundef %x662, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x662, align 1
  %755 = load i8, ptr %x614, align 1
  %conv50 = zext i8 %755 to i32
  %756 = load i8, ptr %x568, align 1
  %conv51 = zext i8 %756 to i32
  %add52 = add i32 %conv50, %conv51
  %757 = load i8, ptr %x598, align 1
  %conv53 = zext i8 %757 to i32
  %758 = load i32, ptr %x570, align 4
  %add54 = add i32 %conv53, %758
  %add55 = add i32 %add52, %add54
  %759 = load i8, ptr %x646, align 1
  %conv56 = zext i8 %759 to i32
  %760 = load i32, ptr %x618, align 4
  %add57 = add i32 %conv56, %760
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext %754, i32 noundef %add55, i32 noundef %add57)
  %761 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x665, ptr noundef %x666, i32 noundef %761, i32 noundef 515236882)
  %762 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x667, ptr noundef %x668, i32 noundef %762, i32 noundef -1574224581)
  %763 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x669, ptr noundef %x670, i32 noundef %763, i32 noundef 1645201484)
  %764 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x671, ptr noundef %x672, i32 noundef %764, i32 noundef 989847764)
  %765 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x673, ptr noundef %x674, i32 noundef %765, i32 noundef 878989386)
  %766 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x675, ptr noundef %x676, i32 noundef %766, i32 noundef -563109126)
  %767 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x677, ptr noundef %x678, i32 noundef %767, i32 noundef -1877896529)
  %768 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x679, ptr noundef %x680, i32 noundef %768, i32 noundef 2081509152)
  %769 = load i32, ptr %x680, align 4
  %770 = load i32, ptr %x677, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext 0, i32 noundef %769, i32 noundef %770)
  %771 = load i8, ptr %x682, align 1
  %772 = load i32, ptr %x678, align 4
  %773 = load i32, ptr %x675, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext %771, i32 noundef %772, i32 noundef %773)
  %774 = load i8, ptr %x684, align 1
  %775 = load i32, ptr %x676, align 4
  %776 = load i32, ptr %x673, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext %774, i32 noundef %775, i32 noundef %776)
  %777 = load i8, ptr %x686, align 1
  %778 = load i32, ptr %x674, align 4
  %779 = load i32, ptr %x671, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %777, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x688, align 1
  %781 = load i32, ptr %x672, align 4
  %782 = load i32, ptr %x669, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %780, i32 noundef %781, i32 noundef %782)
  %783 = load i8, ptr %x690, align 1
  %784 = load i32, ptr %x670, align 4
  %785 = load i32, ptr %x667, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %783, i32 noundef %784, i32 noundef %785)
  %786 = load i8, ptr %x692, align 1
  %787 = load i32, ptr %x668, align 4
  %788 = load i32, ptr %x665, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x693, ptr noundef %x694, i8 noundef zeroext %786, i32 noundef %787, i32 noundef %788)
  %789 = load i32, ptr %x649, align 4
  %790 = load i32, ptr %x679, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext 0, i32 noundef %789, i32 noundef %790)
  %791 = load i8, ptr %x696, align 1
  %792 = load i32, ptr %x651, align 4
  %793 = load i32, ptr %x681, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x697, ptr noundef %x698, i8 noundef zeroext %791, i32 noundef %792, i32 noundef %793)
  %794 = load i8, ptr %x698, align 1
  %795 = load i32, ptr %x653, align 4
  %796 = load i32, ptr %x683, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x699, ptr noundef %x700, i8 noundef zeroext %794, i32 noundef %795, i32 noundef %796)
  %797 = load i8, ptr %x700, align 1
  %798 = load i32, ptr %x655, align 4
  %799 = load i32, ptr %x685, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x701, ptr noundef %x702, i8 noundef zeroext %797, i32 noundef %798, i32 noundef %799)
  %800 = load i8, ptr %x702, align 1
  %801 = load i32, ptr %x657, align 4
  %802 = load i32, ptr %x687, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x703, ptr noundef %x704, i8 noundef zeroext %800, i32 noundef %801, i32 noundef %802)
  %803 = load i8, ptr %x704, align 1
  %804 = load i32, ptr %x659, align 4
  %805 = load i32, ptr %x689, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x705, ptr noundef %x706, i8 noundef zeroext %803, i32 noundef %804, i32 noundef %805)
  %806 = load i8, ptr %x706, align 1
  %807 = load i32, ptr %x661, align 4
  %808 = load i32, ptr %x691, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x707, ptr noundef %x708, i8 noundef zeroext %806, i32 noundef %807, i32 noundef %808)
  %809 = load i8, ptr %x708, align 1
  %810 = load i32, ptr %x663, align 4
  %811 = load i32, ptr %x693, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x709, ptr noundef %x710, i8 noundef zeroext %809, i32 noundef %810, i32 noundef %811)
  %812 = load i32, ptr %x695, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x711, ptr noundef %x712, i32 noundef %812, i32 noundef 1916078453)
  %813 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x713, ptr noundef %x714, i32 noundef %813, i32 noundef -2)
  %814 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x715, ptr noundef %x716, i32 noundef %814, i32 noundef -1)
  %815 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x717, ptr noundef %x718, i32 noundef %815, i32 noundef -1)
  %816 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x719, ptr noundef %x720, i32 noundef %816, i32 noundef -1)
  %817 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x721, ptr noundef %x722, i32 noundef %817, i32 noundef 1912856427)
  %818 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x723, ptr noundef %x724, i32 noundef %818, i32 noundef 566625579)
  %819 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x725, ptr noundef %x726, i32 noundef %819, i32 noundef 1404826633)
  %820 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x727, ptr noundef %x728, i32 noundef %820, i32 noundef 970277155)
  %821 = load i32, ptr %x728, align 4
  %822 = load i32, ptr %x725, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x729, ptr noundef %x730, i8 noundef zeroext 0, i32 noundef %821, i32 noundef %822)
  %823 = load i8, ptr %x730, align 1
  %824 = load i32, ptr %x726, align 4
  %825 = load i32, ptr %x723, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x731, ptr noundef %x732, i8 noundef zeroext %823, i32 noundef %824, i32 noundef %825)
  %826 = load i8, ptr %x732, align 1
  %827 = load i32, ptr %x724, align 4
  %828 = load i32, ptr %x721, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x733, ptr noundef %x734, i8 noundef zeroext %826, i32 noundef %827, i32 noundef %828)
  %829 = load i8, ptr %x734, align 1
  %830 = load i32, ptr %x722, align 4
  %831 = load i32, ptr %x719, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x735, ptr noundef %x736, i8 noundef zeroext %829, i32 noundef %830, i32 noundef %831)
  %832 = load i8, ptr %x736, align 1
  %833 = load i32, ptr %x720, align 4
  %834 = load i32, ptr %x717, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x737, ptr noundef %x738, i8 noundef zeroext %832, i32 noundef %833, i32 noundef %834)
  %835 = load i8, ptr %x738, align 1
  %836 = load i32, ptr %x718, align 4
  %837 = load i32, ptr %x715, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x739, ptr noundef %x740, i8 noundef zeroext %835, i32 noundef %836, i32 noundef %837)
  %838 = load i8, ptr %x740, align 1
  %839 = load i32, ptr %x716, align 4
  %840 = load i32, ptr %x713, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x741, ptr noundef %x742, i8 noundef zeroext %838, i32 noundef %839, i32 noundef %840)
  %841 = load i32, ptr %x695, align 4
  %842 = load i32, ptr %x727, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x743, ptr noundef %x744, i8 noundef zeroext 0, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x744, align 1
  %844 = load i32, ptr %x697, align 4
  %845 = load i32, ptr %x729, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x745, ptr noundef %x746, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i8, ptr %x746, align 1
  %847 = load i32, ptr %x699, align 4
  %848 = load i32, ptr %x731, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x747, ptr noundef %x748, i8 noundef zeroext %846, i32 noundef %847, i32 noundef %848)
  %849 = load i8, ptr %x748, align 1
  %850 = load i32, ptr %x701, align 4
  %851 = load i32, ptr %x733, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x749, ptr noundef %x750, i8 noundef zeroext %849, i32 noundef %850, i32 noundef %851)
  %852 = load i8, ptr %x750, align 1
  %853 = load i32, ptr %x703, align 4
  %854 = load i32, ptr %x735, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x751, ptr noundef %x752, i8 noundef zeroext %852, i32 noundef %853, i32 noundef %854)
  %855 = load i8, ptr %x752, align 1
  %856 = load i32, ptr %x705, align 4
  %857 = load i32, ptr %x737, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x753, ptr noundef %x754, i8 noundef zeroext %855, i32 noundef %856, i32 noundef %857)
  %858 = load i8, ptr %x754, align 1
  %859 = load i32, ptr %x707, align 4
  %860 = load i32, ptr %x739, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x755, ptr noundef %x756, i8 noundef zeroext %858, i32 noundef %859, i32 noundef %860)
  %861 = load i8, ptr %x756, align 1
  %862 = load i32, ptr %x709, align 4
  %863 = load i32, ptr %x741, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x757, ptr noundef %x758, i8 noundef zeroext %861, i32 noundef %862, i32 noundef %863)
  %864 = load i8, ptr %x758, align 1
  %865 = load i8, ptr %x710, align 1
  %conv58 = zext i8 %865 to i32
  %866 = load i8, ptr %x664, align 1
  %conv59 = zext i8 %866 to i32
  %add60 = add i32 %conv58, %conv59
  %867 = load i8, ptr %x694, align 1
  %conv61 = zext i8 %867 to i32
  %868 = load i32, ptr %x666, align 4
  %add62 = add i32 %conv61, %868
  %add63 = add i32 %add60, %add62
  %869 = load i8, ptr %x742, align 1
  %conv64 = zext i8 %869 to i32
  %870 = load i32, ptr %x714, align 4
  %add65 = add i32 %conv64, %870
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x759, ptr noundef %x760, i8 noundef zeroext %864, i32 noundef %add63, i32 noundef %add65)
  %871 = load i32, ptr %x745, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x761, ptr noundef %x762, i8 noundef zeroext 0, i32 noundef %871, i32 noundef 970277155)
  %872 = load i8, ptr %x762, align 1
  %873 = load i32, ptr %x747, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x763, ptr noundef %x764, i8 noundef zeroext %872, i32 noundef %873, i32 noundef 1404826633)
  %874 = load i8, ptr %x764, align 1
  %875 = load i32, ptr %x749, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x765, ptr noundef %x766, i8 noundef zeroext %874, i32 noundef %875, i32 noundef 566625579)
  %876 = load i8, ptr %x766, align 1
  %877 = load i32, ptr %x751, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x767, ptr noundef %x768, i8 noundef zeroext %876, i32 noundef %877, i32 noundef 1912856427)
  %878 = load i8, ptr %x768, align 1
  %879 = load i32, ptr %x753, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x769, ptr noundef %x770, i8 noundef zeroext %878, i32 noundef %879, i32 noundef -1)
  %880 = load i8, ptr %x770, align 1
  %881 = load i32, ptr %x755, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x771, ptr noundef %x772, i8 noundef zeroext %880, i32 noundef %881, i32 noundef -1)
  %882 = load i8, ptr %x772, align 1
  %883 = load i32, ptr %x757, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x773, ptr noundef %x774, i8 noundef zeroext %882, i32 noundef %883, i32 noundef -1)
  %884 = load i8, ptr %x774, align 1
  %885 = load i32, ptr %x759, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x775, ptr noundef %x776, i8 noundef zeroext %884, i32 noundef %885, i32 noundef -2)
  %886 = load i8, ptr %x776, align 1
  %887 = load i8, ptr %x760, align 1
  %conv66 = zext i8 %887 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x777, ptr noundef %x778, i8 noundef zeroext %886, i32 noundef %conv66, i32 noundef 0)
  %888 = load i8, ptr %x778, align 1
  %889 = load i32, ptr %x761, align 4
  %890 = load i32, ptr %x745, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x779, i8 noundef zeroext %888, i32 noundef %889, i32 noundef %890)
  %891 = load i8, ptr %x778, align 1
  %892 = load i32, ptr %x763, align 4
  %893 = load i32, ptr %x747, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x780, i8 noundef zeroext %891, i32 noundef %892, i32 noundef %893)
  %894 = load i8, ptr %x778, align 1
  %895 = load i32, ptr %x765, align 4
  %896 = load i32, ptr %x749, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x781, i8 noundef zeroext %894, i32 noundef %895, i32 noundef %896)
  %897 = load i8, ptr %x778, align 1
  %898 = load i32, ptr %x767, align 4
  %899 = load i32, ptr %x751, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x782, i8 noundef zeroext %897, i32 noundef %898, i32 noundef %899)
  %900 = load i8, ptr %x778, align 1
  %901 = load i32, ptr %x769, align 4
  %902 = load i32, ptr %x753, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x783, i8 noundef zeroext %900, i32 noundef %901, i32 noundef %902)
  %903 = load i8, ptr %x778, align 1
  %904 = load i32, ptr %x771, align 4
  %905 = load i32, ptr %x755, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x784, i8 noundef zeroext %903, i32 noundef %904, i32 noundef %905)
  %906 = load i8, ptr %x778, align 1
  %907 = load i32, ptr %x773, align 4
  %908 = load i32, ptr %x757, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x785, i8 noundef zeroext %906, i32 noundef %907, i32 noundef %908)
  %909 = load i8, ptr %x778, align 1
  %910 = load i32, ptr %x775, align 4
  %911 = load i32, ptr %x759, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x786, i8 noundef zeroext %909, i32 noundef %910, i32 noundef %911)
  %912 = load i32, ptr %x779, align 4
  %913 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %913, i64 0
  store i32 %912, ptr %arrayidx67, align 4
  %914 = load i32, ptr %x780, align 4
  %915 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %915, i64 1
  store i32 %914, ptr %arrayidx68, align 4
  %916 = load i32, ptr %x781, align 4
  %917 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %917, i64 2
  store i32 %916, ptr %arrayidx69, align 4
  %918 = load i32, ptr %x782, align 4
  %919 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %919, i64 3
  store i32 %918, ptr %arrayidx70, align 4
  %920 = load i32, ptr %x783, align 4
  %921 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %921, i64 4
  store i32 %920, ptr %arrayidx71, align 4
  %922 = load i32, ptr %x784, align 4
  %923 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %923, i64 5
  store i32 %922, ptr %arrayidx72, align 4
  %924 = load i32, ptr %x785, align 4
  %925 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %925, i64 6
  store i32 %924, ptr %arrayidx73, align 4
  %926 = load i32, ptr %x786, align 4
  %927 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %927, i64 7
  store i32 %926, ptr %arrayidx74, align 4
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
