; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_scalar_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_scalar_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
  %x83 = alloca i32, align 4
  %x84 = alloca i32, align 4
  %x85 = alloca i32, align 4
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
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
  %x156 = alloca i32, align 4
  %x157 = alloca i32, align 4
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
  %x178 = alloca i8, align 1
  %x179 = alloca i32, align 4
  %x180 = alloca i8, align 1
  %x181 = alloca i32, align 4
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
  %x210 = alloca i32, align 4
  %x211 = alloca i32, align 4
  %x212 = alloca i32, align 4
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
  %x226 = alloca i32, align 4
  %x227 = alloca i32, align 4
  %x228 = alloca i32, align 4
  %x229 = alloca i32, align 4
  %x230 = alloca i32, align 4
  %x231 = alloca i32, align 4
  %x232 = alloca i32, align 4
  %x233 = alloca i32, align 4
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
  %x282 = alloca i8, align 1
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
  %x298 = alloca i32, align 4
  %x299 = alloca i32, align 4
  %x300 = alloca i32, align 4
  %x301 = alloca i32, align 4
  %x302 = alloca i32, align 4
  %x303 = alloca i32, align 4
  %x304 = alloca i32, align 4
  %x305 = alloca i32, align 4
  %x306 = alloca i32, align 4
  %x307 = alloca i32, align 4
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
  %x425 = alloca i8, align 1
  %x426 = alloca i32, align 4
  %x427 = alloca i8, align 1
  %x428 = alloca i32, align 4
  %x429 = alloca i8, align 1
  %x430 = alloca i32, align 4
  %x431 = alloca i8, align 1
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
  %x452 = alloca i32, align 4
  %x453 = alloca i32, align 4
  %x454 = alloca i32, align 4
  %x455 = alloca i32, align 4
  %x456 = alloca i32, align 4
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
  %x474 = alloca i8, align 1
  %x475 = alloca i32, align 4
  %x476 = alloca i8, align 1
  %x477 = alloca i32, align 4
  %x478 = alloca i8, align 1
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
  %x507 = alloca i32, align 4
  %x508 = alloca i32, align 4
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
  %x524 = alloca i32, align 4
  %x525 = alloca i32, align 4
  %x526 = alloca i32, align 4
  %x527 = alloca i32, align 4
  %x528 = alloca i32, align 4
  %x529 = alloca i32, align 4
  %x530 = alloca i32, align 4
  %x531 = alloca i32, align 4
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
  %x543 = alloca i8, align 1
  %x544 = alloca i32, align 4
  %x545 = alloca i8, align 1
  %x546 = alloca i32, align 4
  %x547 = alloca i8, align 1
  %x548 = alloca i32, align 4
  %x549 = alloca i8, align 1
  %x550 = alloca i32, align 4
  %x551 = alloca i8, align 1
  %x552 = alloca i32, align 4
  %x553 = alloca i8, align 1
  %x554 = alloca i32, align 4
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
  %x580 = alloca i8, align 1
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
  %x596 = alloca i32, align 4
  %x597 = alloca i32, align 4
  %x598 = alloca i32, align 4
  %x599 = alloca i32, align 4
  %x600 = alloca i32, align 4
  %x601 = alloca i32, align 4
  %x602 = alloca i32, align 4
  %x603 = alloca i32, align 4
  %x604 = alloca i32, align 4
  %x605 = alloca i32, align 4
  %x606 = alloca i32, align 4
  %x607 = alloca i8, align 1
  %x608 = alloca i32, align 4
  %x609 = alloca i8, align 1
  %x610 = alloca i32, align 4
  %x611 = alloca i8, align 1
  %x612 = alloca i32, align 4
  %x613 = alloca i8, align 1
  %x614 = alloca i32, align 4
  %x615 = alloca i8, align 1
  %x616 = alloca i32, align 4
  %x617 = alloca i8, align 1
  %x618 = alloca i32, align 4
  %x619 = alloca i8, align 1
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
  %x648 = alloca i8, align 1
  %x649 = alloca i32, align 4
  %x650 = alloca i8, align 1
  %x651 = alloca i32, align 4
  %x652 = alloca i8, align 1
  %x653 = alloca i32, align 4
  %x654 = alloca i8, align 1
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
  %x704 = alloca i32, align 4
  %x705 = alloca i8, align 1
  %x706 = alloca i32, align 4
  %x707 = alloca i8, align 1
  %x708 = alloca i32, align 4
  %x709 = alloca i8, align 1
  %x710 = alloca i32, align 4
  %x711 = alloca i8, align 1
  %x712 = alloca i32, align 4
  %x713 = alloca i8, align 1
  %x714 = alloca i32, align 4
  %x715 = alloca i8, align 1
  %x716 = alloca i32, align 4
  %x717 = alloca i8, align 1
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
  %x731 = alloca i32, align 4
  %x732 = alloca i32, align 4
  %x733 = alloca i32, align 4
  %x734 = alloca i32, align 4
  %x735 = alloca i32, align 4
  %x736 = alloca i32, align 4
  %x737 = alloca i32, align 4
  %x738 = alloca i32, align 4
  %x739 = alloca i32, align 4
  %x740 = alloca i32, align 4
  %x741 = alloca i32, align 4
  %x742 = alloca i32, align 4
  %x743 = alloca i32, align 4
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
  %x778 = alloca i32, align 4
  %x779 = alloca i8, align 1
  %x780 = alloca i32, align 4
  %x781 = alloca i8, align 1
  %x782 = alloca i32, align 4
  %x783 = alloca i8, align 1
  %x784 = alloca i32, align 4
  %x785 = alloca i8, align 1
  %x786 = alloca i32, align 4
  %x787 = alloca i8, align 1
  %x788 = alloca i32, align 4
  %x789 = alloca i8, align 1
  %x790 = alloca i32, align 4
  %x791 = alloca i8, align 1
  %x792 = alloca i32, align 4
  %x793 = alloca i8, align 1
  %x794 = alloca i32, align 4
  %x795 = alloca i8, align 1
  %x796 = alloca i32, align 4
  %x797 = alloca i8, align 1
  %x798 = alloca i32, align 4
  %x799 = alloca i8, align 1
  %x800 = alloca i32, align 4
  %x801 = alloca i8, align 1
  %x802 = alloca i32, align 4
  %x803 = alloca i8, align 1
  %x804 = alloca i32, align 4
  %x805 = alloca i32, align 4
  %x806 = alloca i32, align 4
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
  %x831 = alloca i8, align 1
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
  %x853 = alloca i32, align 4
  %x854 = alloca i8, align 1
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
  %x880 = alloca i32, align 4
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
  %x902 = alloca i32, align 4
  %x903 = alloca i32, align 4
  %x904 = alloca i32, align 4
  %x905 = alloca i8, align 1
  %x906 = alloca i32, align 4
  %x907 = alloca i8, align 1
  %x908 = alloca i32, align 4
  %x909 = alloca i8, align 1
  %x910 = alloca i32, align 4
  %x911 = alloca i8, align 1
  %x912 = alloca i32, align 4
  %x913 = alloca i8, align 1
  %x914 = alloca i32, align 4
  %x915 = alloca i8, align 1
  %x916 = alloca i32, align 4
  %x917 = alloca i8, align 1
  %x918 = alloca i32, align 4
  %x919 = alloca i8, align 1
  %x920 = alloca i32, align 4
  %x921 = alloca i8, align 1
  %x922 = alloca i32, align 4
  %x923 = alloca i8, align 1
  %x924 = alloca i32, align 4
  %x925 = alloca i8, align 1
  %x926 = alloca i32, align 4
  %x927 = alloca i32, align 4
  %x928 = alloca i8, align 1
  %x929 = alloca i32, align 4
  %x930 = alloca i8, align 1
  %x931 = alloca i32, align 4
  %x932 = alloca i8, align 1
  %x933 = alloca i32, align 4
  %x934 = alloca i8, align 1
  %x935 = alloca i32, align 4
  %x936 = alloca i8, align 1
  %x937 = alloca i32, align 4
  %x938 = alloca i8, align 1
  %x939 = alloca i32, align 4
  %x940 = alloca i8, align 1
  %x941 = alloca i32, align 4
  %x942 = alloca i8, align 1
  %x943 = alloca i32, align 4
  %x944 = alloca i8, align 1
  %x945 = alloca i32, align 4
  %x946 = alloca i8, align 1
  %x947 = alloca i32, align 4
  %x948 = alloca i8, align 1
  %x949 = alloca i32, align 4
  %x950 = alloca i8, align 1
  %x951 = alloca i32, align 4
  %x952 = alloca i8, align 1
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
  %x970 = alloca i32, align 4
  %x971 = alloca i32, align 4
  %x972 = alloca i32, align 4
  %x973 = alloca i32, align 4
  %x974 = alloca i32, align 4
  %x975 = alloca i32, align 4
  %x976 = alloca i32, align 4
  %x977 = alloca i32, align 4
  %x978 = alloca i32, align 4
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
  %x992 = alloca i8, align 1
  %x993 = alloca i32, align 4
  %x994 = alloca i8, align 1
  %x995 = alloca i32, align 4
  %x996 = alloca i8, align 1
  %x997 = alloca i32, align 4
  %x998 = alloca i8, align 1
  %x999 = alloca i32, align 4
  %x1000 = alloca i8, align 1
  %x1001 = alloca i32, align 4
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
  %x1019 = alloca i8, align 1
  %x1020 = alloca i32, align 4
  %x1021 = alloca i8, align 1
  %x1022 = alloca i32, align 4
  %x1023 = alloca i8, align 1
  %x1024 = alloca i32, align 4
  %x1025 = alloca i8, align 1
  %x1026 = alloca i32, align 4
  %x1027 = alloca i8, align 1
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
  %x1039 = alloca i32, align 4
  %x1040 = alloca i32, align 4
  %x1041 = alloca i32, align 4
  %x1042 = alloca i32, align 4
  %x1043 = alloca i32, align 4
  %x1044 = alloca i32, align 4
  %x1045 = alloca i32, align 4
  %x1046 = alloca i32, align 4
  %x1047 = alloca i32, align 4
  %x1048 = alloca i32, align 4
  %x1049 = alloca i32, align 4
  %x1050 = alloca i32, align 4
  %x1051 = alloca i32, align 4
  %x1052 = alloca i32, align 4
  %x1053 = alloca i32, align 4
  %x1054 = alloca i8, align 1
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
  %x1076 = alloca i32, align 4
  %x1077 = alloca i8, align 1
  %x1078 = alloca i32, align 4
  %x1079 = alloca i8, align 1
  %x1080 = alloca i32, align 4
  %x1081 = alloca i8, align 1
  %x1082 = alloca i32, align 4
  %x1083 = alloca i8, align 1
  %x1084 = alloca i32, align 4
  %x1085 = alloca i8, align 1
  %x1086 = alloca i32, align 4
  %x1087 = alloca i8, align 1
  %x1088 = alloca i32, align 4
  %x1089 = alloca i8, align 1
  %x1090 = alloca i32, align 4
  %x1091 = alloca i8, align 1
  %x1092 = alloca i32, align 4
  %x1093 = alloca i8, align 1
  %x1094 = alloca i32, align 4
  %x1095 = alloca i8, align 1
  %x1096 = alloca i32, align 4
  %x1097 = alloca i8, align 1
  %x1098 = alloca i32, align 4
  %x1099 = alloca i8, align 1
  %x1100 = alloca i32, align 4
  %x1101 = alloca i8, align 1
  %x1102 = alloca i32, align 4
  %x1103 = alloca i32, align 4
  %x1104 = alloca i32, align 4
  %x1105 = alloca i32, align 4
  %x1106 = alloca i32, align 4
  %x1107 = alloca i32, align 4
  %x1108 = alloca i32, align 4
  %x1109 = alloca i32, align 4
  %x1110 = alloca i32, align 4
  %x1111 = alloca i32, align 4
  %x1112 = alloca i32, align 4
  %x1113 = alloca i32, align 4
  %x1114 = alloca i32, align 4
  %x1115 = alloca i32, align 4
  %x1116 = alloca i32, align 4
  %x1117 = alloca i32, align 4
  %x1118 = alloca i32, align 4
  %x1119 = alloca i32, align 4
  %x1120 = alloca i32, align 4
  %x1121 = alloca i32, align 4
  %x1122 = alloca i32, align 4
  %x1123 = alloca i32, align 4
  %x1124 = alloca i32, align 4
  %x1125 = alloca i32, align 4
  %x1126 = alloca i32, align 4
  %x1127 = alloca i32, align 4
  %x1128 = alloca i32, align 4
  %x1129 = alloca i8, align 1
  %x1130 = alloca i32, align 4
  %x1131 = alloca i8, align 1
  %x1132 = alloca i32, align 4
  %x1133 = alloca i8, align 1
  %x1134 = alloca i32, align 4
  %x1135 = alloca i8, align 1
  %x1136 = alloca i32, align 4
  %x1137 = alloca i8, align 1
  %x1138 = alloca i32, align 4
  %x1139 = alloca i8, align 1
  %x1140 = alloca i32, align 4
  %x1141 = alloca i8, align 1
  %x1142 = alloca i32, align 4
  %x1143 = alloca i8, align 1
  %x1144 = alloca i32, align 4
  %x1145 = alloca i8, align 1
  %x1146 = alloca i32, align 4
  %x1147 = alloca i8, align 1
  %x1148 = alloca i32, align 4
  %x1149 = alloca i8, align 1
  %x1150 = alloca i32, align 4
  %x1151 = alloca i32, align 4
  %x1152 = alloca i8, align 1
  %x1153 = alloca i32, align 4
  %x1154 = alloca i8, align 1
  %x1155 = alloca i32, align 4
  %x1156 = alloca i8, align 1
  %x1157 = alloca i32, align 4
  %x1158 = alloca i8, align 1
  %x1159 = alloca i32, align 4
  %x1160 = alloca i8, align 1
  %x1161 = alloca i32, align 4
  %x1162 = alloca i8, align 1
  %x1163 = alloca i32, align 4
  %x1164 = alloca i8, align 1
  %x1165 = alloca i32, align 4
  %x1166 = alloca i8, align 1
  %x1167 = alloca i32, align 4
  %x1168 = alloca i8, align 1
  %x1169 = alloca i32, align 4
  %x1170 = alloca i8, align 1
  %x1171 = alloca i32, align 4
  %x1172 = alloca i8, align 1
  %x1173 = alloca i32, align 4
  %x1174 = alloca i8, align 1
  %x1175 = alloca i32, align 4
  %x1176 = alloca i8, align 1
  %x1177 = alloca i32, align 4
  %x1178 = alloca i32, align 4
  %x1179 = alloca i32, align 4
  %x1180 = alloca i32, align 4
  %x1181 = alloca i32, align 4
  %x1182 = alloca i32, align 4
  %x1183 = alloca i32, align 4
  %x1184 = alloca i32, align 4
  %x1185 = alloca i32, align 4
  %x1186 = alloca i32, align 4
  %x1187 = alloca i32, align 4
  %x1188 = alloca i32, align 4
  %x1189 = alloca i32, align 4
  %x1190 = alloca i32, align 4
  %x1191 = alloca i32, align 4
  %x1192 = alloca i32, align 4
  %x1193 = alloca i32, align 4
  %x1194 = alloca i32, align 4
  %x1195 = alloca i32, align 4
  %x1196 = alloca i32, align 4
  %x1197 = alloca i32, align 4
  %x1198 = alloca i32, align 4
  %x1199 = alloca i32, align 4
  %x1200 = alloca i32, align 4
  %x1201 = alloca i32, align 4
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
  %x1219 = alloca i8, align 1
  %x1220 = alloca i32, align 4
  %x1221 = alloca i8, align 1
  %x1222 = alloca i32, align 4
  %x1223 = alloca i8, align 1
  %x1224 = alloca i32, align 4
  %x1225 = alloca i32, align 4
  %x1226 = alloca i8, align 1
  %x1227 = alloca i32, align 4
  %x1228 = alloca i8, align 1
  %x1229 = alloca i32, align 4
  %x1230 = alloca i8, align 1
  %x1231 = alloca i32, align 4
  %x1232 = alloca i8, align 1
  %x1233 = alloca i32, align 4
  %x1234 = alloca i8, align 1
  %x1235 = alloca i32, align 4
  %x1236 = alloca i8, align 1
  %x1237 = alloca i32, align 4
  %x1238 = alloca i8, align 1
  %x1239 = alloca i32, align 4
  %x1240 = alloca i8, align 1
  %x1241 = alloca i32, align 4
  %x1242 = alloca i8, align 1
  %x1243 = alloca i32, align 4
  %x1244 = alloca i8, align 1
  %x1245 = alloca i32, align 4
  %x1246 = alloca i8, align 1
  %x1247 = alloca i32, align 4
  %x1248 = alloca i8, align 1
  %x1249 = alloca i32, align 4
  %x1250 = alloca i8, align 1
  %x1251 = alloca i32, align 4
  %x1252 = alloca i32, align 4
  %x1253 = alloca i32, align 4
  %x1254 = alloca i32, align 4
  %x1255 = alloca i32, align 4
  %x1256 = alloca i32, align 4
  %x1257 = alloca i32, align 4
  %x1258 = alloca i32, align 4
  %x1259 = alloca i32, align 4
  %x1260 = alloca i32, align 4
  %x1261 = alloca i32, align 4
  %x1262 = alloca i32, align 4
  %x1263 = alloca i32, align 4
  %x1264 = alloca i32, align 4
  %x1265 = alloca i32, align 4
  %x1266 = alloca i32, align 4
  %x1267 = alloca i32, align 4
  %x1268 = alloca i32, align 4
  %x1269 = alloca i32, align 4
  %x1270 = alloca i32, align 4
  %x1271 = alloca i32, align 4
  %x1272 = alloca i32, align 4
  %x1273 = alloca i32, align 4
  %x1274 = alloca i32, align 4
  %x1275 = alloca i32, align 4
  %x1276 = alloca i32, align 4
  %x1277 = alloca i32, align 4
  %x1278 = alloca i8, align 1
  %x1279 = alloca i32, align 4
  %x1280 = alloca i8, align 1
  %x1281 = alloca i32, align 4
  %x1282 = alloca i8, align 1
  %x1283 = alloca i32, align 4
  %x1284 = alloca i8, align 1
  %x1285 = alloca i32, align 4
  %x1286 = alloca i8, align 1
  %x1287 = alloca i32, align 4
  %x1288 = alloca i8, align 1
  %x1289 = alloca i32, align 4
  %x1290 = alloca i8, align 1
  %x1291 = alloca i32, align 4
  %x1292 = alloca i8, align 1
  %x1293 = alloca i32, align 4
  %x1294 = alloca i8, align 1
  %x1295 = alloca i32, align 4
  %x1296 = alloca i8, align 1
  %x1297 = alloca i32, align 4
  %x1298 = alloca i8, align 1
  %x1299 = alloca i32, align 4
  %x1300 = alloca i32, align 4
  %x1301 = alloca i8, align 1
  %x1302 = alloca i32, align 4
  %x1303 = alloca i8, align 1
  %x1304 = alloca i32, align 4
  %x1305 = alloca i8, align 1
  %x1306 = alloca i32, align 4
  %x1307 = alloca i8, align 1
  %x1308 = alloca i32, align 4
  %x1309 = alloca i8, align 1
  %x1310 = alloca i32, align 4
  %x1311 = alloca i8, align 1
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
  %x1327 = alloca i32, align 4
  %x1328 = alloca i32, align 4
  %x1329 = alloca i32, align 4
  %x1330 = alloca i32, align 4
  %x1331 = alloca i32, align 4
  %x1332 = alloca i32, align 4
  %x1333 = alloca i32, align 4
  %x1334 = alloca i32, align 4
  %x1335 = alloca i32, align 4
  %x1336 = alloca i32, align 4
  %x1337 = alloca i32, align 4
  %x1338 = alloca i32, align 4
  %x1339 = alloca i32, align 4
  %x1340 = alloca i32, align 4
  %x1341 = alloca i32, align 4
  %x1342 = alloca i32, align 4
  %x1343 = alloca i32, align 4
  %x1344 = alloca i32, align 4
  %x1345 = alloca i32, align 4
  %x1346 = alloca i32, align 4
  %x1347 = alloca i32, align 4
  %x1348 = alloca i32, align 4
  %x1349 = alloca i32, align 4
  %x1350 = alloca i32, align 4
  %x1351 = alloca i32, align 4
  %x1352 = alloca i8, align 1
  %x1353 = alloca i32, align 4
  %x1354 = alloca i8, align 1
  %x1355 = alloca i32, align 4
  %x1356 = alloca i8, align 1
  %x1357 = alloca i32, align 4
  %x1358 = alloca i8, align 1
  %x1359 = alloca i32, align 4
  %x1360 = alloca i8, align 1
  %x1361 = alloca i32, align 4
  %x1362 = alloca i8, align 1
  %x1363 = alloca i32, align 4
  %x1364 = alloca i8, align 1
  %x1365 = alloca i32, align 4
  %x1366 = alloca i8, align 1
  %x1367 = alloca i32, align 4
  %x1368 = alloca i8, align 1
  %x1369 = alloca i32, align 4
  %x1370 = alloca i8, align 1
  %x1371 = alloca i32, align 4
  %x1372 = alloca i8, align 1
  %x1373 = alloca i32, align 4
  %x1374 = alloca i32, align 4
  %x1375 = alloca i8, align 1
  %x1376 = alloca i32, align 4
  %x1377 = alloca i8, align 1
  %x1378 = alloca i32, align 4
  %x1379 = alloca i8, align 1
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
  %x1401 = alloca i32, align 4
  %x1402 = alloca i32, align 4
  %x1403 = alloca i32, align 4
  %x1404 = alloca i32, align 4
  %x1405 = alloca i32, align 4
  %x1406 = alloca i32, align 4
  %x1407 = alloca i32, align 4
  %x1408 = alloca i32, align 4
  %x1409 = alloca i32, align 4
  %x1410 = alloca i32, align 4
  %x1411 = alloca i32, align 4
  %x1412 = alloca i32, align 4
  %x1413 = alloca i32, align 4
  %x1414 = alloca i32, align 4
  %x1415 = alloca i32, align 4
  %x1416 = alloca i32, align 4
  %x1417 = alloca i32, align 4
  %x1418 = alloca i32, align 4
  %x1419 = alloca i32, align 4
  %x1420 = alloca i32, align 4
  %x1421 = alloca i32, align 4
  %x1422 = alloca i32, align 4
  %x1423 = alloca i32, align 4
  %x1424 = alloca i32, align 4
  %x1425 = alloca i32, align 4
  %x1426 = alloca i32, align 4
  %x1427 = alloca i8, align 1
  %x1428 = alloca i32, align 4
  %x1429 = alloca i8, align 1
  %x1430 = alloca i32, align 4
  %x1431 = alloca i8, align 1
  %x1432 = alloca i32, align 4
  %x1433 = alloca i8, align 1
  %x1434 = alloca i32, align 4
  %x1435 = alloca i8, align 1
  %x1436 = alloca i32, align 4
  %x1437 = alloca i8, align 1
  %x1438 = alloca i32, align 4
  %x1439 = alloca i8, align 1
  %x1440 = alloca i32, align 4
  %x1441 = alloca i8, align 1
  %x1442 = alloca i32, align 4
  %x1443 = alloca i8, align 1
  %x1444 = alloca i32, align 4
  %x1445 = alloca i8, align 1
  %x1446 = alloca i32, align 4
  %x1447 = alloca i8, align 1
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
  %x1466 = alloca i8, align 1
  %x1467 = alloca i32, align 4
  %x1468 = alloca i8, align 1
  %x1469 = alloca i32, align 4
  %x1470 = alloca i8, align 1
  %x1471 = alloca i32, align 4
  %x1472 = alloca i8, align 1
  %x1473 = alloca i32, align 4
  %x1474 = alloca i8, align 1
  %x1475 = alloca i32, align 4
  %x1476 = alloca i32, align 4
  %x1477 = alloca i32, align 4
  %x1478 = alloca i32, align 4
  %x1479 = alloca i32, align 4
  %x1480 = alloca i32, align 4
  %x1481 = alloca i32, align 4
  %x1482 = alloca i32, align 4
  %x1483 = alloca i32, align 4
  %x1484 = alloca i32, align 4
  %x1485 = alloca i32, align 4
  %x1486 = alloca i32, align 4
  %x1487 = alloca i32, align 4
  %x1488 = alloca i32, align 4
  %x1489 = alloca i32, align 4
  %x1490 = alloca i32, align 4
  %x1491 = alloca i32, align 4
  %x1492 = alloca i32, align 4
  %x1493 = alloca i32, align 4
  %x1494 = alloca i32, align 4
  %x1495 = alloca i32, align 4
  %x1496 = alloca i32, align 4
  %x1497 = alloca i32, align 4
  %x1498 = alloca i32, align 4
  %x1499 = alloca i32, align 4
  %x1500 = alloca i32, align 4
  %x1501 = alloca i8, align 1
  %x1502 = alloca i32, align 4
  %x1503 = alloca i8, align 1
  %x1504 = alloca i32, align 4
  %x1505 = alloca i8, align 1
  %x1506 = alloca i32, align 4
  %x1507 = alloca i8, align 1
  %x1508 = alloca i32, align 4
  %x1509 = alloca i8, align 1
  %x1510 = alloca i32, align 4
  %x1511 = alloca i8, align 1
  %x1512 = alloca i32, align 4
  %x1513 = alloca i8, align 1
  %x1514 = alloca i32, align 4
  %x1515 = alloca i8, align 1
  %x1516 = alloca i32, align 4
  %x1517 = alloca i8, align 1
  %x1518 = alloca i32, align 4
  %x1519 = alloca i8, align 1
  %x1520 = alloca i32, align 4
  %x1521 = alloca i8, align 1
  %x1522 = alloca i32, align 4
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
  %x1540 = alloca i8, align 1
  %x1541 = alloca i32, align 4
  %x1542 = alloca i8, align 1
  %x1543 = alloca i32, align 4
  %x1544 = alloca i8, align 1
  %x1545 = alloca i32, align 4
  %x1546 = alloca i8, align 1
  %x1547 = alloca i32, align 4
  %x1548 = alloca i8, align 1
  %x1549 = alloca i32, align 4
  %x1550 = alloca i32, align 4
  %x1551 = alloca i32, align 4
  %x1552 = alloca i32, align 4
  %x1553 = alloca i32, align 4
  %x1554 = alloca i32, align 4
  %x1555 = alloca i32, align 4
  %x1556 = alloca i32, align 4
  %x1557 = alloca i32, align 4
  %x1558 = alloca i32, align 4
  %x1559 = alloca i32, align 4
  %x1560 = alloca i32, align 4
  %x1561 = alloca i32, align 4
  %x1562 = alloca i32, align 4
  %x1563 = alloca i32, align 4
  %x1564 = alloca i32, align 4
  %x1565 = alloca i32, align 4
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
  %x1576 = alloca i8, align 1
  %x1577 = alloca i32, align 4
  %x1578 = alloca i8, align 1
  %x1579 = alloca i32, align 4
  %x1580 = alloca i8, align 1
  %x1581 = alloca i32, align 4
  %x1582 = alloca i8, align 1
  %x1583 = alloca i32, align 4
  %x1584 = alloca i8, align 1
  %x1585 = alloca i32, align 4
  %x1586 = alloca i8, align 1
  %x1587 = alloca i32, align 4
  %x1588 = alloca i8, align 1
  %x1589 = alloca i32, align 4
  %x1590 = alloca i8, align 1
  %x1591 = alloca i32, align 4
  %x1592 = alloca i8, align 1
  %x1593 = alloca i32, align 4
  %x1594 = alloca i8, align 1
  %x1595 = alloca i32, align 4
  %x1596 = alloca i8, align 1
  %x1597 = alloca i32, align 4
  %x1598 = alloca i32, align 4
  %x1599 = alloca i8, align 1
  %x1600 = alloca i32, align 4
  %x1601 = alloca i8, align 1
  %x1602 = alloca i32, align 4
  %x1603 = alloca i8, align 1
  %x1604 = alloca i32, align 4
  %x1605 = alloca i8, align 1
  %x1606 = alloca i32, align 4
  %x1607 = alloca i8, align 1
  %x1608 = alloca i32, align 4
  %x1609 = alloca i8, align 1
  %x1610 = alloca i32, align 4
  %x1611 = alloca i8, align 1
  %x1612 = alloca i32, align 4
  %x1613 = alloca i8, align 1
  %x1614 = alloca i32, align 4
  %x1615 = alloca i8, align 1
  %x1616 = alloca i32, align 4
  %x1617 = alloca i8, align 1
  %x1618 = alloca i32, align 4
  %x1619 = alloca i8, align 1
  %x1620 = alloca i32, align 4
  %x1621 = alloca i8, align 1
  %x1622 = alloca i32, align 4
  %x1623 = alloca i8, align 1
  %x1624 = alloca i32, align 4
  %x1625 = alloca i32, align 4
  %x1626 = alloca i32, align 4
  %x1627 = alloca i32, align 4
  %x1628 = alloca i32, align 4
  %x1629 = alloca i32, align 4
  %x1630 = alloca i32, align 4
  %x1631 = alloca i32, align 4
  %x1632 = alloca i32, align 4
  %x1633 = alloca i32, align 4
  %x1634 = alloca i32, align 4
  %x1635 = alloca i32, align 4
  %x1636 = alloca i32, align 4
  %x1637 = alloca i32, align 4
  %x1638 = alloca i32, align 4
  %x1639 = alloca i32, align 4
  %x1640 = alloca i32, align 4
  %x1641 = alloca i32, align 4
  %x1642 = alloca i32, align 4
  %x1643 = alloca i32, align 4
  %x1644 = alloca i32, align 4
  %x1645 = alloca i32, align 4
  %x1646 = alloca i32, align 4
  %x1647 = alloca i32, align 4
  %x1648 = alloca i32, align 4
  %x1649 = alloca i32, align 4
  %x1650 = alloca i8, align 1
  %x1651 = alloca i32, align 4
  %x1652 = alloca i8, align 1
  %x1653 = alloca i32, align 4
  %x1654 = alloca i8, align 1
  %x1655 = alloca i32, align 4
  %x1656 = alloca i8, align 1
  %x1657 = alloca i32, align 4
  %x1658 = alloca i8, align 1
  %x1659 = alloca i32, align 4
  %x1660 = alloca i8, align 1
  %x1661 = alloca i32, align 4
  %x1662 = alloca i8, align 1
  %x1663 = alloca i32, align 4
  %x1664 = alloca i8, align 1
  %x1665 = alloca i32, align 4
  %x1666 = alloca i8, align 1
  %x1667 = alloca i32, align 4
  %x1668 = alloca i8, align 1
  %x1669 = alloca i32, align 4
  %x1670 = alloca i8, align 1
  %x1671 = alloca i32, align 4
  %x1672 = alloca i32, align 4
  %x1673 = alloca i8, align 1
  %x1674 = alloca i32, align 4
  %x1675 = alloca i8, align 1
  %x1676 = alloca i32, align 4
  %x1677 = alloca i8, align 1
  %x1678 = alloca i32, align 4
  %x1679 = alloca i8, align 1
  %x1680 = alloca i32, align 4
  %x1681 = alloca i8, align 1
  %x1682 = alloca i32, align 4
  %x1683 = alloca i8, align 1
  %x1684 = alloca i32, align 4
  %x1685 = alloca i8, align 1
  %x1686 = alloca i32, align 4
  %x1687 = alloca i8, align 1
  %x1688 = alloca i32, align 4
  %x1689 = alloca i8, align 1
  %x1690 = alloca i32, align 4
  %x1691 = alloca i8, align 1
  %x1692 = alloca i32, align 4
  %x1693 = alloca i8, align 1
  %x1694 = alloca i32, align 4
  %x1695 = alloca i8, align 1
  %x1696 = alloca i32, align 4
  %x1697 = alloca i8, align 1
  %x1698 = alloca i32, align 4
  %x1699 = alloca i32, align 4
  %x1700 = alloca i32, align 4
  %x1701 = alloca i32, align 4
  %x1702 = alloca i32, align 4
  %x1703 = alloca i32, align 4
  %x1704 = alloca i32, align 4
  %x1705 = alloca i32, align 4
  %x1706 = alloca i32, align 4
  %x1707 = alloca i32, align 4
  %x1708 = alloca i32, align 4
  %x1709 = alloca i32, align 4
  %x1710 = alloca i32, align 4
  %x1711 = alloca i32, align 4
  %x1712 = alloca i32, align 4
  %x1713 = alloca i32, align 4
  %x1714 = alloca i32, align 4
  %x1715 = alloca i32, align 4
  %x1716 = alloca i32, align 4
  %x1717 = alloca i32, align 4
  %x1718 = alloca i32, align 4
  %x1719 = alloca i32, align 4
  %x1720 = alloca i32, align 4
  %x1721 = alloca i32, align 4
  %x1722 = alloca i32, align 4
  %x1723 = alloca i32, align 4
  %x1724 = alloca i32, align 4
  %x1725 = alloca i8, align 1
  %x1726 = alloca i32, align 4
  %x1727 = alloca i8, align 1
  %x1728 = alloca i32, align 4
  %x1729 = alloca i8, align 1
  %x1730 = alloca i32, align 4
  %x1731 = alloca i8, align 1
  %x1732 = alloca i32, align 4
  %x1733 = alloca i8, align 1
  %x1734 = alloca i32, align 4
  %x1735 = alloca i8, align 1
  %x1736 = alloca i32, align 4
  %x1737 = alloca i8, align 1
  %x1738 = alloca i32, align 4
  %x1739 = alloca i8, align 1
  %x1740 = alloca i32, align 4
  %x1741 = alloca i8, align 1
  %x1742 = alloca i32, align 4
  %x1743 = alloca i8, align 1
  %x1744 = alloca i32, align 4
  %x1745 = alloca i8, align 1
  %x1746 = alloca i32, align 4
  %x1747 = alloca i32, align 4
  %x1748 = alloca i8, align 1
  %x1749 = alloca i32, align 4
  %x1750 = alloca i8, align 1
  %x1751 = alloca i32, align 4
  %x1752 = alloca i8, align 1
  %x1753 = alloca i32, align 4
  %x1754 = alloca i8, align 1
  %x1755 = alloca i32, align 4
  %x1756 = alloca i8, align 1
  %x1757 = alloca i32, align 4
  %x1758 = alloca i8, align 1
  %x1759 = alloca i32, align 4
  %x1760 = alloca i8, align 1
  %x1761 = alloca i32, align 4
  %x1762 = alloca i8, align 1
  %x1763 = alloca i32, align 4
  %x1764 = alloca i8, align 1
  %x1765 = alloca i32, align 4
  %x1766 = alloca i8, align 1
  %x1767 = alloca i32, align 4
  %x1768 = alloca i8, align 1
  %x1769 = alloca i32, align 4
  %x1770 = alloca i8, align 1
  %x1771 = alloca i32, align 4
  %x1772 = alloca i8, align 1
  %x1773 = alloca i32, align 4
  %x1774 = alloca i32, align 4
  %x1775 = alloca i8, align 1
  %x1776 = alloca i32, align 4
  %x1777 = alloca i8, align 1
  %x1778 = alloca i32, align 4
  %x1779 = alloca i8, align 1
  %x1780 = alloca i32, align 4
  %x1781 = alloca i8, align 1
  %x1782 = alloca i32, align 4
  %x1783 = alloca i8, align 1
  %x1784 = alloca i32, align 4
  %x1785 = alloca i8, align 1
  %x1786 = alloca i32, align 4
  %x1787 = alloca i8, align 1
  %x1788 = alloca i32, align 4
  %x1789 = alloca i8, align 1
  %x1790 = alloca i32, align 4
  %x1791 = alloca i8, align 1
  %x1792 = alloca i32, align 4
  %x1793 = alloca i8, align 1
  %x1794 = alloca i32, align 4
  %x1795 = alloca i8, align 1
  %x1796 = alloca i32, align 4
  %x1797 = alloca i8, align 1
  %x1798 = alloca i32, align 4
  %x1799 = alloca i8, align 1
  %x1800 = alloca i32, align 4
  %x1801 = alloca i32, align 4
  %x1802 = alloca i32, align 4
  %x1803 = alloca i32, align 4
  %x1804 = alloca i32, align 4
  %x1805 = alloca i32, align 4
  %x1806 = alloca i32, align 4
  %x1807 = alloca i32, align 4
  %x1808 = alloca i32, align 4
  %x1809 = alloca i32, align 4
  %x1810 = alloca i32, align 4
  %x1811 = alloca i32, align 4
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
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %25, i64 11
  %26 = load i32, ptr %arrayidx12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %24, i32 noundef %26)
  %27 = load i32, ptr %x12, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %28, i64 10
  %29 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %27, i32 noundef %29)
  %30 = load i32, ptr %x12, align 4
  %31 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %31, i64 9
  %32 = load i32, ptr %arrayidx14, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %30, i32 noundef %32)
  %33 = load i32, ptr %x12, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %34, i64 8
  %35 = load i32, ptr %arrayidx15, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %33, i32 noundef %35)
  %36 = load i32, ptr %x12, align 4
  %37 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx16, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %36, i32 noundef %38)
  %39 = load i32, ptr %x12, align 4
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %40, i64 6
  %41 = load i32, ptr %arrayidx17, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %39, i32 noundef %41)
  %42 = load i32, ptr %x12, align 4
  %43 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %43, i64 5
  %44 = load i32, ptr %arrayidx18, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x25, ptr noundef %x26, i32 noundef %42, i32 noundef %44)
  %45 = load i32, ptr %x12, align 4
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %46, i64 4
  %47 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x27, ptr noundef %x28, i32 noundef %45, i32 noundef %47)
  %48 = load i32, ptr %x12, align 4
  %49 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %49, i64 3
  %50 = load i32, ptr %arrayidx20, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x29, ptr noundef %x30, i32 noundef %48, i32 noundef %50)
  %51 = load i32, ptr %x12, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %52, i64 2
  %53 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x31, ptr noundef %x32, i32 noundef %51, i32 noundef %53)
  %54 = load i32, ptr %x12, align 4
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %55, i64 1
  %56 = load i32, ptr %arrayidx22, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x33, ptr noundef %x34, i32 noundef %54, i32 noundef %56)
  %57 = load i32, ptr %x12, align 4
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %58, i64 0
  %59 = load i32, ptr %arrayidx23, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %57, i32 noundef %59)
  %60 = load i32, ptr %x36, align 4
  %61 = load i32, ptr %x33, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext 0, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x38, align 1
  %63 = load i32, ptr %x34, align 4
  %64 = load i32, ptr %x31, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x40, align 1
  %66 = load i32, ptr %x32, align 4
  %67 = load i32, ptr %x29, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x42, align 1
  %69 = load i32, ptr %x30, align 4
  %70 = load i32, ptr %x27, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x44, align 1
  %72 = load i32, ptr %x28, align 4
  %73 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %73)
  %74 = load i8, ptr %x46, align 1
  %75 = load i32, ptr %x26, align 4
  %76 = load i32, ptr %x23, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %74, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x48, align 1
  %78 = load i32, ptr %x24, align 4
  %79 = load i32, ptr %x21, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x50, align 1
  %81 = load i32, ptr %x22, align 4
  %82 = load i32, ptr %x19, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x52, align 1
  %84 = load i32, ptr %x20, align 4
  %85 = load i32, ptr %x17, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x54, align 1
  %87 = load i32, ptr %x18, align 4
  %88 = load i32, ptr %x15, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x56, align 1
  %90 = load i32, ptr %x16, align 4
  %91 = load i32, ptr %x13, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x58, align 1
  %conv = zext i8 %92 to i32
  %93 = load i32, ptr %x14, align 4
  %add = add i32 %conv, %93
  store i32 %add, ptr %x59, align 4
  %94 = load i32, ptr %x35, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x60, ptr noundef %x61, i32 noundef %94, i32 noundef -393225147)
  %95 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x62, ptr noundef %x63, i32 noundef %95, i32 noundef -1)
  %96 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x64, ptr noundef %x65, i32 noundef %96, i32 noundef -1)
  %97 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %97, i32 noundef -1)
  %98 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %98, i32 noundef -1)
  %99 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %99, i32 noundef -1)
  %100 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %100, i32 noundef -1)
  %101 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %101, i32 noundef -949793407)
  %102 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x76, ptr noundef %x77, i32 noundef %102, i32 noundef -197710369)
  %103 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x78, ptr noundef %x79, i32 noundef %103, i32 noundef 1478102450)
  %104 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x80, ptr noundef %x81, i32 noundef %104, i32 noundef 1219536762)
  %105 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x82, ptr noundef %x83, i32 noundef %105, i32 noundef -320071318)
  %106 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x84, ptr noundef %x85, i32 noundef %106, i32 noundef -859494029)
  %107 = load i32, ptr %x85, align 4
  %108 = load i32, ptr %x82, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i32 noundef %107, i32 noundef %108)
  %109 = load i8, ptr %x87, align 1
  %110 = load i32, ptr %x83, align 4
  %111 = load i32, ptr %x80, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %109, i32 noundef %110, i32 noundef %111)
  %112 = load i8, ptr %x89, align 1
  %113 = load i32, ptr %x81, align 4
  %114 = load i32, ptr %x78, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %112, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x91, align 1
  %116 = load i32, ptr %x79, align 4
  %117 = load i32, ptr %x76, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %115, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x93, align 1
  %119 = load i32, ptr %x77, align 4
  %120 = load i32, ptr %x74, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %118, i32 noundef %119, i32 noundef %120)
  %121 = load i8, ptr %x95, align 1
  %122 = load i32, ptr %x75, align 4
  %123 = load i32, ptr %x72, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %121, i32 noundef %122, i32 noundef %123)
  %124 = load i8, ptr %x97, align 1
  %125 = load i32, ptr %x73, align 4
  %126 = load i32, ptr %x70, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %124, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x99, align 1
  %128 = load i32, ptr %x71, align 4
  %129 = load i32, ptr %x68, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %127, i32 noundef %128, i32 noundef %129)
  %130 = load i8, ptr %x101, align 1
  %131 = load i32, ptr %x69, align 4
  %132 = load i32, ptr %x66, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %130, i32 noundef %131, i32 noundef %132)
  %133 = load i8, ptr %x103, align 1
  %134 = load i32, ptr %x67, align 4
  %135 = load i32, ptr %x64, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %133, i32 noundef %134, i32 noundef %135)
  %136 = load i8, ptr %x105, align 1
  %137 = load i32, ptr %x65, align 4
  %138 = load i32, ptr %x62, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %136, i32 noundef %137, i32 noundef %138)
  %139 = load i8, ptr %x107, align 1
  %conv24 = zext i8 %139 to i32
  %140 = load i32, ptr %x63, align 4
  %add25 = add i32 %conv24, %140
  store i32 %add25, ptr %x108, align 4
  %141 = load i32, ptr %x35, align 4
  %142 = load i32, ptr %x84, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext 0, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x110, align 1
  %144 = load i32, ptr %x37, align 4
  %145 = load i32, ptr %x86, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %143, i32 noundef %144, i32 noundef %145)
  %146 = load i8, ptr %x112, align 1
  %147 = load i32, ptr %x39, align 4
  %148 = load i32, ptr %x88, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %146, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x114, align 1
  %150 = load i32, ptr %x41, align 4
  %151 = load i32, ptr %x90, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i8, ptr %x116, align 1
  %153 = load i32, ptr %x43, align 4
  %154 = load i32, ptr %x92, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %152, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x118, align 1
  %156 = load i32, ptr %x45, align 4
  %157 = load i32, ptr %x94, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x120, align 1
  %159 = load i32, ptr %x47, align 4
  %160 = load i32, ptr %x96, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x122, align 1
  %162 = load i32, ptr %x49, align 4
  %163 = load i32, ptr %x98, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %163)
  %164 = load i8, ptr %x124, align 1
  %165 = load i32, ptr %x51, align 4
  %166 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %164, i32 noundef %165, i32 noundef %166)
  %167 = load i8, ptr %x126, align 1
  %168 = load i32, ptr %x53, align 4
  %169 = load i32, ptr %x102, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x128, align 1
  %171 = load i32, ptr %x55, align 4
  %172 = load i32, ptr %x104, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x130, align 1
  %174 = load i32, ptr %x57, align 4
  %175 = load i32, ptr %x106, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x132, align 1
  %177 = load i32, ptr %x59, align 4
  %178 = load i32, ptr %x108, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i32, ptr %x1, align 4
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %180, i64 11
  %181 = load i32, ptr %arrayidx26, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %179, i32 noundef %181)
  %182 = load i32, ptr %x1, align 4
  %183 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %183, i64 10
  %184 = load i32, ptr %arrayidx27, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %182, i32 noundef %184)
  %185 = load i32, ptr %x1, align 4
  %186 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %186, i64 9
  %187 = load i32, ptr %arrayidx28, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %185, i32 noundef %187)
  %188 = load i32, ptr %x1, align 4
  %189 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %189, i64 8
  %190 = load i32, ptr %arrayidx29, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %188, i32 noundef %190)
  %191 = load i32, ptr %x1, align 4
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %192, i64 7
  %193 = load i32, ptr %arrayidx30, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %191, i32 noundef %193)
  %194 = load i32, ptr %x1, align 4
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %195, i64 6
  %196 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %194, i32 noundef %196)
  %197 = load i32, ptr %x1, align 4
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %198, i64 5
  %199 = load i32, ptr %arrayidx32, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x147, ptr noundef %x148, i32 noundef %197, i32 noundef %199)
  %200 = load i32, ptr %x1, align 4
  %201 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %201, i64 4
  %202 = load i32, ptr %arrayidx33, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x149, ptr noundef %x150, i32 noundef %200, i32 noundef %202)
  %203 = load i32, ptr %x1, align 4
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %204, i64 3
  %205 = load i32, ptr %arrayidx34, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x151, ptr noundef %x152, i32 noundef %203, i32 noundef %205)
  %206 = load i32, ptr %x1, align 4
  %207 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %207, i64 2
  %208 = load i32, ptr %arrayidx35, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x153, ptr noundef %x154, i32 noundef %206, i32 noundef %208)
  %209 = load i32, ptr %x1, align 4
  %210 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %210, i64 1
  %211 = load i32, ptr %arrayidx36, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x155, ptr noundef %x156, i32 noundef %209, i32 noundef %211)
  %212 = load i32, ptr %x1, align 4
  %213 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %213, i64 0
  %214 = load i32, ptr %arrayidx37, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x157, ptr noundef %x158, i32 noundef %212, i32 noundef %214)
  %215 = load i32, ptr %x158, align 4
  %216 = load i32, ptr %x155, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext 0, i32 noundef %215, i32 noundef %216)
  %217 = load i8, ptr %x160, align 1
  %218 = load i32, ptr %x156, align 4
  %219 = load i32, ptr %x153, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %217, i32 noundef %218, i32 noundef %219)
  %220 = load i8, ptr %x162, align 1
  %221 = load i32, ptr %x154, align 4
  %222 = load i32, ptr %x151, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %220, i32 noundef %221, i32 noundef %222)
  %223 = load i8, ptr %x164, align 1
  %224 = load i32, ptr %x152, align 4
  %225 = load i32, ptr %x149, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %223, i32 noundef %224, i32 noundef %225)
  %226 = load i8, ptr %x166, align 1
  %227 = load i32, ptr %x150, align 4
  %228 = load i32, ptr %x147, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %226, i32 noundef %227, i32 noundef %228)
  %229 = load i8, ptr %x168, align 1
  %230 = load i32, ptr %x148, align 4
  %231 = load i32, ptr %x145, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %229, i32 noundef %230, i32 noundef %231)
  %232 = load i8, ptr %x170, align 1
  %233 = load i32, ptr %x146, align 4
  %234 = load i32, ptr %x143, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %232, i32 noundef %233, i32 noundef %234)
  %235 = load i8, ptr %x172, align 1
  %236 = load i32, ptr %x144, align 4
  %237 = load i32, ptr %x141, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %235, i32 noundef %236, i32 noundef %237)
  %238 = load i8, ptr %x174, align 1
  %239 = load i32, ptr %x142, align 4
  %240 = load i32, ptr %x139, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %238, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x176, align 1
  %242 = load i32, ptr %x140, align 4
  %243 = load i32, ptr %x137, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x178, align 1
  %245 = load i32, ptr %x138, align 4
  %246 = load i32, ptr %x135, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x180, align 1
  %conv38 = zext i8 %247 to i32
  %248 = load i32, ptr %x136, align 4
  %add39 = add i32 %conv38, %248
  store i32 %add39, ptr %x181, align 4
  %249 = load i32, ptr %x111, align 4
  %250 = load i32, ptr %x157, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext 0, i32 noundef %249, i32 noundef %250)
  %251 = load i8, ptr %x183, align 1
  %252 = load i32, ptr %x113, align 4
  %253 = load i32, ptr %x159, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %251, i32 noundef %252, i32 noundef %253)
  %254 = load i8, ptr %x185, align 1
  %255 = load i32, ptr %x115, align 4
  %256 = load i32, ptr %x161, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %254, i32 noundef %255, i32 noundef %256)
  %257 = load i8, ptr %x187, align 1
  %258 = load i32, ptr %x117, align 4
  %259 = load i32, ptr %x163, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %257, i32 noundef %258, i32 noundef %259)
  %260 = load i8, ptr %x189, align 1
  %261 = load i32, ptr %x119, align 4
  %262 = load i32, ptr %x165, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %260, i32 noundef %261, i32 noundef %262)
  %263 = load i8, ptr %x191, align 1
  %264 = load i32, ptr %x121, align 4
  %265 = load i32, ptr %x167, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %263, i32 noundef %264, i32 noundef %265)
  %266 = load i8, ptr %x193, align 1
  %267 = load i32, ptr %x123, align 4
  %268 = load i32, ptr %x169, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %266, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x195, align 1
  %270 = load i32, ptr %x125, align 4
  %271 = load i32, ptr %x171, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x197, align 1
  %273 = load i32, ptr %x127, align 4
  %274 = load i32, ptr %x173, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x199, align 1
  %276 = load i32, ptr %x129, align 4
  %277 = load i32, ptr %x175, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x201, align 1
  %279 = load i32, ptr %x131, align 4
  %280 = load i32, ptr %x177, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x203, align 1
  %282 = load i32, ptr %x133, align 4
  %283 = load i32, ptr %x179, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x205, align 1
  %285 = load i8, ptr %x134, align 1
  %conv40 = zext i8 %285 to i32
  %286 = load i32, ptr %x181, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext %284, i32 noundef %conv40, i32 noundef %286)
  %287 = load i32, ptr %x182, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %287, i32 noundef -393225147)
  %288 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %288, i32 noundef -1)
  %289 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x212, ptr noundef %x213, i32 noundef %289, i32 noundef -1)
  %290 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x214, ptr noundef %x215, i32 noundef %290, i32 noundef -1)
  %291 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x216, ptr noundef %x217, i32 noundef %291, i32 noundef -1)
  %292 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x218, ptr noundef %x219, i32 noundef %292, i32 noundef -1)
  %293 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x220, ptr noundef %x221, i32 noundef %293, i32 noundef -1)
  %294 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x222, ptr noundef %x223, i32 noundef %294, i32 noundef -949793407)
  %295 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x224, ptr noundef %x225, i32 noundef %295, i32 noundef -197710369)
  %296 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x226, ptr noundef %x227, i32 noundef %296, i32 noundef 1478102450)
  %297 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x228, ptr noundef %x229, i32 noundef %297, i32 noundef 1219536762)
  %298 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x230, ptr noundef %x231, i32 noundef %298, i32 noundef -320071318)
  %299 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x232, ptr noundef %x233, i32 noundef %299, i32 noundef -859494029)
  %300 = load i32, ptr %x233, align 4
  %301 = load i32, ptr %x230, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext 0, i32 noundef %300, i32 noundef %301)
  %302 = load i8, ptr %x235, align 1
  %303 = load i32, ptr %x231, align 4
  %304 = load i32, ptr %x228, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %302, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x237, align 1
  %306 = load i32, ptr %x229, align 4
  %307 = load i32, ptr %x226, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %305, i32 noundef %306, i32 noundef %307)
  %308 = load i8, ptr %x239, align 1
  %309 = load i32, ptr %x227, align 4
  %310 = load i32, ptr %x224, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %308, i32 noundef %309, i32 noundef %310)
  %311 = load i8, ptr %x241, align 1
  %312 = load i32, ptr %x225, align 4
  %313 = load i32, ptr %x222, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %311, i32 noundef %312, i32 noundef %313)
  %314 = load i8, ptr %x243, align 1
  %315 = load i32, ptr %x223, align 4
  %316 = load i32, ptr %x220, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %314, i32 noundef %315, i32 noundef %316)
  %317 = load i8, ptr %x245, align 1
  %318 = load i32, ptr %x221, align 4
  %319 = load i32, ptr %x218, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %317, i32 noundef %318, i32 noundef %319)
  %320 = load i8, ptr %x247, align 1
  %321 = load i32, ptr %x219, align 4
  %322 = load i32, ptr %x216, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %320, i32 noundef %321, i32 noundef %322)
  %323 = load i8, ptr %x249, align 1
  %324 = load i32, ptr %x217, align 4
  %325 = load i32, ptr %x214, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %323, i32 noundef %324, i32 noundef %325)
  %326 = load i8, ptr %x251, align 1
  %327 = load i32, ptr %x215, align 4
  %328 = load i32, ptr %x212, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %326, i32 noundef %327, i32 noundef %328)
  %329 = load i8, ptr %x253, align 1
  %330 = load i32, ptr %x213, align 4
  %331 = load i32, ptr %x210, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %329, i32 noundef %330, i32 noundef %331)
  %332 = load i8, ptr %x255, align 1
  %conv41 = zext i8 %332 to i32
  %333 = load i32, ptr %x211, align 4
  %add42 = add i32 %conv41, %333
  store i32 %add42, ptr %x256, align 4
  %334 = load i32, ptr %x182, align 4
  %335 = load i32, ptr %x232, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext 0, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x258, align 1
  %337 = load i32, ptr %x184, align 4
  %338 = load i32, ptr %x234, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x260, align 1
  %340 = load i32, ptr %x186, align 4
  %341 = load i32, ptr %x236, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x262, align 1
  %343 = load i32, ptr %x188, align 4
  %344 = load i32, ptr %x238, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x264, align 1
  %346 = load i32, ptr %x190, align 4
  %347 = load i32, ptr %x240, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i8, ptr %x266, align 1
  %349 = load i32, ptr %x192, align 4
  %350 = load i32, ptr %x242, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %348, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x268, align 1
  %352 = load i32, ptr %x194, align 4
  %353 = load i32, ptr %x244, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %351, i32 noundef %352, i32 noundef %353)
  %354 = load i8, ptr %x270, align 1
  %355 = load i32, ptr %x196, align 4
  %356 = load i32, ptr %x246, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %354, i32 noundef %355, i32 noundef %356)
  %357 = load i8, ptr %x272, align 1
  %358 = load i32, ptr %x198, align 4
  %359 = load i32, ptr %x248, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %357, i32 noundef %358, i32 noundef %359)
  %360 = load i8, ptr %x274, align 1
  %361 = load i32, ptr %x200, align 4
  %362 = load i32, ptr %x250, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %360, i32 noundef %361, i32 noundef %362)
  %363 = load i8, ptr %x276, align 1
  %364 = load i32, ptr %x202, align 4
  %365 = load i32, ptr %x252, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %363, i32 noundef %364, i32 noundef %365)
  %366 = load i8, ptr %x278, align 1
  %367 = load i32, ptr %x204, align 4
  %368 = load i32, ptr %x254, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %366, i32 noundef %367, i32 noundef %368)
  %369 = load i8, ptr %x280, align 1
  %370 = load i32, ptr %x206, align 4
  %371 = load i32, ptr %x256, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x281, ptr noundef %x282, i8 noundef zeroext %369, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x282, align 1
  %conv43 = zext i8 %372 to i32
  %373 = load i8, ptr %x207, align 1
  %conv44 = zext i8 %373 to i32
  %add45 = add i32 %conv43, %conv44
  store i32 %add45, ptr %x283, align 4
  %374 = load i32, ptr %x2, align 4
  %375 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %375, i64 11
  %376 = load i32, ptr %arrayidx46, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x284, ptr noundef %x285, i32 noundef %374, i32 noundef %376)
  %377 = load i32, ptr %x2, align 4
  %378 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %378, i64 10
  %379 = load i32, ptr %arrayidx47, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x286, ptr noundef %x287, i32 noundef %377, i32 noundef %379)
  %380 = load i32, ptr %x2, align 4
  %381 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %381, i64 9
  %382 = load i32, ptr %arrayidx48, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x288, ptr noundef %x289, i32 noundef %380, i32 noundef %382)
  %383 = load i32, ptr %x2, align 4
  %384 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %384, i64 8
  %385 = load i32, ptr %arrayidx49, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x290, ptr noundef %x291, i32 noundef %383, i32 noundef %385)
  %386 = load i32, ptr %x2, align 4
  %387 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %387, i64 7
  %388 = load i32, ptr %arrayidx50, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x292, ptr noundef %x293, i32 noundef %386, i32 noundef %388)
  %389 = load i32, ptr %x2, align 4
  %390 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %390, i64 6
  %391 = load i32, ptr %arrayidx51, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x294, ptr noundef %x295, i32 noundef %389, i32 noundef %391)
  %392 = load i32, ptr %x2, align 4
  %393 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %393, i64 5
  %394 = load i32, ptr %arrayidx52, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x296, ptr noundef %x297, i32 noundef %392, i32 noundef %394)
  %395 = load i32, ptr %x2, align 4
  %396 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %396, i64 4
  %397 = load i32, ptr %arrayidx53, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x298, ptr noundef %x299, i32 noundef %395, i32 noundef %397)
  %398 = load i32, ptr %x2, align 4
  %399 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %399, i64 3
  %400 = load i32, ptr %arrayidx54, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x300, ptr noundef %x301, i32 noundef %398, i32 noundef %400)
  %401 = load i32, ptr %x2, align 4
  %402 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %402, i64 2
  %403 = load i32, ptr %arrayidx55, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x302, ptr noundef %x303, i32 noundef %401, i32 noundef %403)
  %404 = load i32, ptr %x2, align 4
  %405 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %405, i64 1
  %406 = load i32, ptr %arrayidx56, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x304, ptr noundef %x305, i32 noundef %404, i32 noundef %406)
  %407 = load i32, ptr %x2, align 4
  %408 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %408, i64 0
  %409 = load i32, ptr %arrayidx57, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x306, ptr noundef %x307, i32 noundef %407, i32 noundef %409)
  %410 = load i32, ptr %x307, align 4
  %411 = load i32, ptr %x304, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext 0, i32 noundef %410, i32 noundef %411)
  %412 = load i8, ptr %x309, align 1
  %413 = load i32, ptr %x305, align 4
  %414 = load i32, ptr %x302, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %412, i32 noundef %413, i32 noundef %414)
  %415 = load i8, ptr %x311, align 1
  %416 = load i32, ptr %x303, align 4
  %417 = load i32, ptr %x300, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %415, i32 noundef %416, i32 noundef %417)
  %418 = load i8, ptr %x313, align 1
  %419 = load i32, ptr %x301, align 4
  %420 = load i32, ptr %x298, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %418, i32 noundef %419, i32 noundef %420)
  %421 = load i8, ptr %x315, align 1
  %422 = load i32, ptr %x299, align 4
  %423 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %421, i32 noundef %422, i32 noundef %423)
  %424 = load i8, ptr %x317, align 1
  %425 = load i32, ptr %x297, align 4
  %426 = load i32, ptr %x294, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %424, i32 noundef %425, i32 noundef %426)
  %427 = load i8, ptr %x319, align 1
  %428 = load i32, ptr %x295, align 4
  %429 = load i32, ptr %x292, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %427, i32 noundef %428, i32 noundef %429)
  %430 = load i8, ptr %x321, align 1
  %431 = load i32, ptr %x293, align 4
  %432 = load i32, ptr %x290, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %430, i32 noundef %431, i32 noundef %432)
  %433 = load i8, ptr %x323, align 1
  %434 = load i32, ptr %x291, align 4
  %435 = load i32, ptr %x288, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %433, i32 noundef %434, i32 noundef %435)
  %436 = load i8, ptr %x325, align 1
  %437 = load i32, ptr %x289, align 4
  %438 = load i32, ptr %x286, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %436, i32 noundef %437, i32 noundef %438)
  %439 = load i8, ptr %x327, align 1
  %440 = load i32, ptr %x287, align 4
  %441 = load i32, ptr %x284, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %439, i32 noundef %440, i32 noundef %441)
  %442 = load i8, ptr %x329, align 1
  %conv58 = zext i8 %442 to i32
  %443 = load i32, ptr %x285, align 4
  %add59 = add i32 %conv58, %443
  store i32 %add59, ptr %x330, align 4
  %444 = load i32, ptr %x259, align 4
  %445 = load i32, ptr %x306, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext 0, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x332, align 1
  %447 = load i32, ptr %x261, align 4
  %448 = load i32, ptr %x308, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %448)
  %449 = load i8, ptr %x334, align 1
  %450 = load i32, ptr %x263, align 4
  %451 = load i32, ptr %x310, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %449, i32 noundef %450, i32 noundef %451)
  %452 = load i8, ptr %x336, align 1
  %453 = load i32, ptr %x265, align 4
  %454 = load i32, ptr %x312, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %452, i32 noundef %453, i32 noundef %454)
  %455 = load i8, ptr %x338, align 1
  %456 = load i32, ptr %x267, align 4
  %457 = load i32, ptr %x314, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %455, i32 noundef %456, i32 noundef %457)
  %458 = load i8, ptr %x340, align 1
  %459 = load i32, ptr %x269, align 4
  %460 = load i32, ptr %x316, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %458, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x342, align 1
  %462 = load i32, ptr %x271, align 4
  %463 = load i32, ptr %x318, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x344, align 1
  %465 = load i32, ptr %x273, align 4
  %466 = load i32, ptr %x320, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x346, align 1
  %468 = load i32, ptr %x275, align 4
  %469 = load i32, ptr %x322, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x348, align 1
  %471 = load i32, ptr %x277, align 4
  %472 = load i32, ptr %x324, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x350, align 1
  %474 = load i32, ptr %x279, align 4
  %475 = load i32, ptr %x326, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x352, align 1
  %477 = load i32, ptr %x281, align 4
  %478 = load i32, ptr %x328, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x354, align 1
  %480 = load i32, ptr %x283, align 4
  %481 = load i32, ptr %x330, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i32, ptr %x331, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x357, ptr noundef %x358, i32 noundef %482, i32 noundef -393225147)
  %483 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x359, ptr noundef %x360, i32 noundef %483, i32 noundef -1)
  %484 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x361, ptr noundef %x362, i32 noundef %484, i32 noundef -1)
  %485 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x363, ptr noundef %x364, i32 noundef %485, i32 noundef -1)
  %486 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x365, ptr noundef %x366, i32 noundef %486, i32 noundef -1)
  %487 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x367, ptr noundef %x368, i32 noundef %487, i32 noundef -1)
  %488 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x369, ptr noundef %x370, i32 noundef %488, i32 noundef -1)
  %489 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x371, ptr noundef %x372, i32 noundef %489, i32 noundef -949793407)
  %490 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x373, ptr noundef %x374, i32 noundef %490, i32 noundef -197710369)
  %491 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x375, ptr noundef %x376, i32 noundef %491, i32 noundef 1478102450)
  %492 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x377, ptr noundef %x378, i32 noundef %492, i32 noundef 1219536762)
  %493 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x379, ptr noundef %x380, i32 noundef %493, i32 noundef -320071318)
  %494 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x381, ptr noundef %x382, i32 noundef %494, i32 noundef -859494029)
  %495 = load i32, ptr %x382, align 4
  %496 = load i32, ptr %x379, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext 0, i32 noundef %495, i32 noundef %496)
  %497 = load i8, ptr %x384, align 1
  %498 = load i32, ptr %x380, align 4
  %499 = load i32, ptr %x377, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %497, i32 noundef %498, i32 noundef %499)
  %500 = load i8, ptr %x386, align 1
  %501 = load i32, ptr %x378, align 4
  %502 = load i32, ptr %x375, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %500, i32 noundef %501, i32 noundef %502)
  %503 = load i8, ptr %x388, align 1
  %504 = load i32, ptr %x376, align 4
  %505 = load i32, ptr %x373, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %503, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x390, align 1
  %507 = load i32, ptr %x374, align 4
  %508 = load i32, ptr %x371, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %506, i32 noundef %507, i32 noundef %508)
  %509 = load i8, ptr %x392, align 1
  %510 = load i32, ptr %x372, align 4
  %511 = load i32, ptr %x369, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %509, i32 noundef %510, i32 noundef %511)
  %512 = load i8, ptr %x394, align 1
  %513 = load i32, ptr %x370, align 4
  %514 = load i32, ptr %x367, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %512, i32 noundef %513, i32 noundef %514)
  %515 = load i8, ptr %x396, align 1
  %516 = load i32, ptr %x368, align 4
  %517 = load i32, ptr %x365, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %515, i32 noundef %516, i32 noundef %517)
  %518 = load i8, ptr %x398, align 1
  %519 = load i32, ptr %x366, align 4
  %520 = load i32, ptr %x363, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %518, i32 noundef %519, i32 noundef %520)
  %521 = load i8, ptr %x400, align 1
  %522 = load i32, ptr %x364, align 4
  %523 = load i32, ptr %x361, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %521, i32 noundef %522, i32 noundef %523)
  %524 = load i8, ptr %x402, align 1
  %525 = load i32, ptr %x362, align 4
  %526 = load i32, ptr %x359, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %524, i32 noundef %525, i32 noundef %526)
  %527 = load i8, ptr %x404, align 1
  %conv60 = zext i8 %527 to i32
  %528 = load i32, ptr %x360, align 4
  %add61 = add i32 %conv60, %528
  store i32 %add61, ptr %x405, align 4
  %529 = load i32, ptr %x331, align 4
  %530 = load i32, ptr %x381, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext 0, i32 noundef %529, i32 noundef %530)
  %531 = load i8, ptr %x407, align 1
  %532 = load i32, ptr %x333, align 4
  %533 = load i32, ptr %x383, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %531, i32 noundef %532, i32 noundef %533)
  %534 = load i8, ptr %x409, align 1
  %535 = load i32, ptr %x335, align 4
  %536 = load i32, ptr %x385, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %534, i32 noundef %535, i32 noundef %536)
  %537 = load i8, ptr %x411, align 1
  %538 = load i32, ptr %x337, align 4
  %539 = load i32, ptr %x387, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %537, i32 noundef %538, i32 noundef %539)
  %540 = load i8, ptr %x413, align 1
  %541 = load i32, ptr %x339, align 4
  %542 = load i32, ptr %x389, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %540, i32 noundef %541, i32 noundef %542)
  %543 = load i8, ptr %x415, align 1
  %544 = load i32, ptr %x341, align 4
  %545 = load i32, ptr %x391, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %543, i32 noundef %544, i32 noundef %545)
  %546 = load i8, ptr %x417, align 1
  %547 = load i32, ptr %x343, align 4
  %548 = load i32, ptr %x393, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %546, i32 noundef %547, i32 noundef %548)
  %549 = load i8, ptr %x419, align 1
  %550 = load i32, ptr %x345, align 4
  %551 = load i32, ptr %x395, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %549, i32 noundef %550, i32 noundef %551)
  %552 = load i8, ptr %x421, align 1
  %553 = load i32, ptr %x347, align 4
  %554 = load i32, ptr %x397, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %552, i32 noundef %553, i32 noundef %554)
  %555 = load i8, ptr %x423, align 1
  %556 = load i32, ptr %x349, align 4
  %557 = load i32, ptr %x399, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x424, ptr noundef %x425, i8 noundef zeroext %555, i32 noundef %556, i32 noundef %557)
  %558 = load i8, ptr %x425, align 1
  %559 = load i32, ptr %x351, align 4
  %560 = load i32, ptr %x401, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x426, ptr noundef %x427, i8 noundef zeroext %558, i32 noundef %559, i32 noundef %560)
  %561 = load i8, ptr %x427, align 1
  %562 = load i32, ptr %x353, align 4
  %563 = load i32, ptr %x403, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext %561, i32 noundef %562, i32 noundef %563)
  %564 = load i8, ptr %x429, align 1
  %565 = load i32, ptr %x355, align 4
  %566 = load i32, ptr %x405, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %564, i32 noundef %565, i32 noundef %566)
  %567 = load i8, ptr %x431, align 1
  %conv62 = zext i8 %567 to i32
  %568 = load i8, ptr %x356, align 1
  %conv63 = zext i8 %568 to i32
  %add64 = add i32 %conv62, %conv63
  store i32 %add64, ptr %x432, align 4
  %569 = load i32, ptr %x3, align 4
  %570 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %570, i64 11
  %571 = load i32, ptr %arrayidx65, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x433, ptr noundef %x434, i32 noundef %569, i32 noundef %571)
  %572 = load i32, ptr %x3, align 4
  %573 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %573, i64 10
  %574 = load i32, ptr %arrayidx66, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x435, ptr noundef %x436, i32 noundef %572, i32 noundef %574)
  %575 = load i32, ptr %x3, align 4
  %576 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %576, i64 9
  %577 = load i32, ptr %arrayidx67, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x437, ptr noundef %x438, i32 noundef %575, i32 noundef %577)
  %578 = load i32, ptr %x3, align 4
  %579 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %579, i64 8
  %580 = load i32, ptr %arrayidx68, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x439, ptr noundef %x440, i32 noundef %578, i32 noundef %580)
  %581 = load i32, ptr %x3, align 4
  %582 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %582, i64 7
  %583 = load i32, ptr %arrayidx69, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x441, ptr noundef %x442, i32 noundef %581, i32 noundef %583)
  %584 = load i32, ptr %x3, align 4
  %585 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %585, i64 6
  %586 = load i32, ptr %arrayidx70, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x443, ptr noundef %x444, i32 noundef %584, i32 noundef %586)
  %587 = load i32, ptr %x3, align 4
  %588 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %588, i64 5
  %589 = load i32, ptr %arrayidx71, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x445, ptr noundef %x446, i32 noundef %587, i32 noundef %589)
  %590 = load i32, ptr %x3, align 4
  %591 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %591, i64 4
  %592 = load i32, ptr %arrayidx72, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x447, ptr noundef %x448, i32 noundef %590, i32 noundef %592)
  %593 = load i32, ptr %x3, align 4
  %594 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %594, i64 3
  %595 = load i32, ptr %arrayidx73, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x449, ptr noundef %x450, i32 noundef %593, i32 noundef %595)
  %596 = load i32, ptr %x3, align 4
  %597 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %597, i64 2
  %598 = load i32, ptr %arrayidx74, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x451, ptr noundef %x452, i32 noundef %596, i32 noundef %598)
  %599 = load i32, ptr %x3, align 4
  %600 = load ptr, ptr %arg1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %600, i64 1
  %601 = load i32, ptr %arrayidx75, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x453, ptr noundef %x454, i32 noundef %599, i32 noundef %601)
  %602 = load i32, ptr %x3, align 4
  %603 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %603, i64 0
  %604 = load i32, ptr %arrayidx76, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %602, i32 noundef %604)
  %605 = load i32, ptr %x456, align 4
  %606 = load i32, ptr %x453, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext 0, i32 noundef %605, i32 noundef %606)
  %607 = load i8, ptr %x458, align 1
  %608 = load i32, ptr %x454, align 4
  %609 = load i32, ptr %x451, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %607, i32 noundef %608, i32 noundef %609)
  %610 = load i8, ptr %x460, align 1
  %611 = load i32, ptr %x452, align 4
  %612 = load i32, ptr %x449, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %610, i32 noundef %611, i32 noundef %612)
  %613 = load i8, ptr %x462, align 1
  %614 = load i32, ptr %x450, align 4
  %615 = load i32, ptr %x447, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %613, i32 noundef %614, i32 noundef %615)
  %616 = load i8, ptr %x464, align 1
  %617 = load i32, ptr %x448, align 4
  %618 = load i32, ptr %x445, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %616, i32 noundef %617, i32 noundef %618)
  %619 = load i8, ptr %x466, align 1
  %620 = load i32, ptr %x446, align 4
  %621 = load i32, ptr %x443, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %619, i32 noundef %620, i32 noundef %621)
  %622 = load i8, ptr %x468, align 1
  %623 = load i32, ptr %x444, align 4
  %624 = load i32, ptr %x441, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %622, i32 noundef %623, i32 noundef %624)
  %625 = load i8, ptr %x470, align 1
  %626 = load i32, ptr %x442, align 4
  %627 = load i32, ptr %x439, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %625, i32 noundef %626, i32 noundef %627)
  %628 = load i8, ptr %x472, align 1
  %629 = load i32, ptr %x440, align 4
  %630 = load i32, ptr %x437, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %628, i32 noundef %629, i32 noundef %630)
  %631 = load i8, ptr %x474, align 1
  %632 = load i32, ptr %x438, align 4
  %633 = load i32, ptr %x435, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext %631, i32 noundef %632, i32 noundef %633)
  %634 = load i8, ptr %x476, align 1
  %635 = load i32, ptr %x436, align 4
  %636 = load i32, ptr %x433, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext %634, i32 noundef %635, i32 noundef %636)
  %637 = load i8, ptr %x478, align 1
  %conv77 = zext i8 %637 to i32
  %638 = load i32, ptr %x434, align 4
  %add78 = add i32 %conv77, %638
  store i32 %add78, ptr %x479, align 4
  %639 = load i32, ptr %x408, align 4
  %640 = load i32, ptr %x455, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext 0, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x481, align 1
  %642 = load i32, ptr %x410, align 4
  %643 = load i32, ptr %x457, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %641, i32 noundef %642, i32 noundef %643)
  %644 = load i8, ptr %x483, align 1
  %645 = load i32, ptr %x412, align 4
  %646 = load i32, ptr %x459, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %644, i32 noundef %645, i32 noundef %646)
  %647 = load i8, ptr %x485, align 1
  %648 = load i32, ptr %x414, align 4
  %649 = load i32, ptr %x461, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %647, i32 noundef %648, i32 noundef %649)
  %650 = load i8, ptr %x487, align 1
  %651 = load i32, ptr %x416, align 4
  %652 = load i32, ptr %x463, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %650, i32 noundef %651, i32 noundef %652)
  %653 = load i8, ptr %x489, align 1
  %654 = load i32, ptr %x418, align 4
  %655 = load i32, ptr %x465, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %653, i32 noundef %654, i32 noundef %655)
  %656 = load i8, ptr %x491, align 1
  %657 = load i32, ptr %x420, align 4
  %658 = load i32, ptr %x467, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %656, i32 noundef %657, i32 noundef %658)
  %659 = load i8, ptr %x493, align 1
  %660 = load i32, ptr %x422, align 4
  %661 = load i32, ptr %x469, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext %659, i32 noundef %660, i32 noundef %661)
  %662 = load i8, ptr %x495, align 1
  %663 = load i32, ptr %x424, align 4
  %664 = load i32, ptr %x471, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext %662, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x497, align 1
  %666 = load i32, ptr %x426, align 4
  %667 = load i32, ptr %x473, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x499, align 1
  %669 = load i32, ptr %x428, align 4
  %670 = load i32, ptr %x475, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x501, align 1
  %672 = load i32, ptr %x430, align 4
  %673 = load i32, ptr %x477, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %671, i32 noundef %672, i32 noundef %673)
  %674 = load i8, ptr %x503, align 1
  %675 = load i32, ptr %x432, align 4
  %676 = load i32, ptr %x479, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %674, i32 noundef %675, i32 noundef %676)
  %677 = load i32, ptr %x480, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x506, ptr noundef %x507, i32 noundef %677, i32 noundef -393225147)
  %678 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x508, ptr noundef %x509, i32 noundef %678, i32 noundef -1)
  %679 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x510, ptr noundef %x511, i32 noundef %679, i32 noundef -1)
  %680 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x512, ptr noundef %x513, i32 noundef %680, i32 noundef -1)
  %681 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x514, ptr noundef %x515, i32 noundef %681, i32 noundef -1)
  %682 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x516, ptr noundef %x517, i32 noundef %682, i32 noundef -1)
  %683 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x518, ptr noundef %x519, i32 noundef %683, i32 noundef -1)
  %684 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x520, ptr noundef %x521, i32 noundef %684, i32 noundef -949793407)
  %685 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x522, ptr noundef %x523, i32 noundef %685, i32 noundef -197710369)
  %686 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x524, ptr noundef %x525, i32 noundef %686, i32 noundef 1478102450)
  %687 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x526, ptr noundef %x527, i32 noundef %687, i32 noundef 1219536762)
  %688 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x528, ptr noundef %x529, i32 noundef %688, i32 noundef -320071318)
  %689 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x530, ptr noundef %x531, i32 noundef %689, i32 noundef -859494029)
  %690 = load i32, ptr %x531, align 4
  %691 = load i32, ptr %x528, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext 0, i32 noundef %690, i32 noundef %691)
  %692 = load i8, ptr %x533, align 1
  %693 = load i32, ptr %x529, align 4
  %694 = load i32, ptr %x526, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %692, i32 noundef %693, i32 noundef %694)
  %695 = load i8, ptr %x535, align 1
  %696 = load i32, ptr %x527, align 4
  %697 = load i32, ptr %x524, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %695, i32 noundef %696, i32 noundef %697)
  %698 = load i8, ptr %x537, align 1
  %699 = load i32, ptr %x525, align 4
  %700 = load i32, ptr %x522, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %698, i32 noundef %699, i32 noundef %700)
  %701 = load i8, ptr %x539, align 1
  %702 = load i32, ptr %x523, align 4
  %703 = load i32, ptr %x520, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext %701, i32 noundef %702, i32 noundef %703)
  %704 = load i8, ptr %x541, align 1
  %705 = load i32, ptr %x521, align 4
  %706 = load i32, ptr %x518, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %704, i32 noundef %705, i32 noundef %706)
  %707 = load i8, ptr %x543, align 1
  %708 = load i32, ptr %x519, align 4
  %709 = load i32, ptr %x516, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x544, ptr noundef %x545, i8 noundef zeroext %707, i32 noundef %708, i32 noundef %709)
  %710 = load i8, ptr %x545, align 1
  %711 = load i32, ptr %x517, align 4
  %712 = load i32, ptr %x514, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x546, ptr noundef %x547, i8 noundef zeroext %710, i32 noundef %711, i32 noundef %712)
  %713 = load i8, ptr %x547, align 1
  %714 = load i32, ptr %x515, align 4
  %715 = load i32, ptr %x512, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x548, ptr noundef %x549, i8 noundef zeroext %713, i32 noundef %714, i32 noundef %715)
  %716 = load i8, ptr %x549, align 1
  %717 = load i32, ptr %x513, align 4
  %718 = load i32, ptr %x510, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x550, ptr noundef %x551, i8 noundef zeroext %716, i32 noundef %717, i32 noundef %718)
  %719 = load i8, ptr %x551, align 1
  %720 = load i32, ptr %x511, align 4
  %721 = load i32, ptr %x508, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x552, ptr noundef %x553, i8 noundef zeroext %719, i32 noundef %720, i32 noundef %721)
  %722 = load i8, ptr %x553, align 1
  %conv79 = zext i8 %722 to i32
  %723 = load i32, ptr %x509, align 4
  %add80 = add i32 %conv79, %723
  store i32 %add80, ptr %x554, align 4
  %724 = load i32, ptr %x480, align 4
  %725 = load i32, ptr %x530, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext 0, i32 noundef %724, i32 noundef %725)
  %726 = load i8, ptr %x556, align 1
  %727 = load i32, ptr %x482, align 4
  %728 = load i32, ptr %x532, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %726, i32 noundef %727, i32 noundef %728)
  %729 = load i8, ptr %x558, align 1
  %730 = load i32, ptr %x484, align 4
  %731 = load i32, ptr %x534, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %729, i32 noundef %730, i32 noundef %731)
  %732 = load i8, ptr %x560, align 1
  %733 = load i32, ptr %x486, align 4
  %734 = load i32, ptr %x536, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %732, i32 noundef %733, i32 noundef %734)
  %735 = load i8, ptr %x562, align 1
  %736 = load i32, ptr %x488, align 4
  %737 = load i32, ptr %x538, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext %735, i32 noundef %736, i32 noundef %737)
  %738 = load i8, ptr %x564, align 1
  %739 = load i32, ptr %x490, align 4
  %740 = load i32, ptr %x540, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %738, i32 noundef %739, i32 noundef %740)
  %741 = load i8, ptr %x566, align 1
  %742 = load i32, ptr %x492, align 4
  %743 = load i32, ptr %x542, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %741, i32 noundef %742, i32 noundef %743)
  %744 = load i8, ptr %x568, align 1
  %745 = load i32, ptr %x494, align 4
  %746 = load i32, ptr %x544, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x569, ptr noundef %x570, i8 noundef zeroext %744, i32 noundef %745, i32 noundef %746)
  %747 = load i8, ptr %x570, align 1
  %748 = load i32, ptr %x496, align 4
  %749 = load i32, ptr %x546, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x571, ptr noundef %x572, i8 noundef zeroext %747, i32 noundef %748, i32 noundef %749)
  %750 = load i8, ptr %x572, align 1
  %751 = load i32, ptr %x498, align 4
  %752 = load i32, ptr %x548, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x573, ptr noundef %x574, i8 noundef zeroext %750, i32 noundef %751, i32 noundef %752)
  %753 = load i8, ptr %x574, align 1
  %754 = load i32, ptr %x500, align 4
  %755 = load i32, ptr %x550, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x575, ptr noundef %x576, i8 noundef zeroext %753, i32 noundef %754, i32 noundef %755)
  %756 = load i8, ptr %x576, align 1
  %757 = load i32, ptr %x502, align 4
  %758 = load i32, ptr %x552, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext %756, i32 noundef %757, i32 noundef %758)
  %759 = load i8, ptr %x578, align 1
  %760 = load i32, ptr %x504, align 4
  %761 = load i32, ptr %x554, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x579, ptr noundef %x580, i8 noundef zeroext %759, i32 noundef %760, i32 noundef %761)
  %762 = load i8, ptr %x580, align 1
  %conv81 = zext i8 %762 to i32
  %763 = load i8, ptr %x505, align 1
  %conv82 = zext i8 %763 to i32
  %add83 = add i32 %conv81, %conv82
  store i32 %add83, ptr %x581, align 4
  %764 = load i32, ptr %x4, align 4
  %765 = load ptr, ptr %arg1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %765, i64 11
  %766 = load i32, ptr %arrayidx84, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x582, ptr noundef %x583, i32 noundef %764, i32 noundef %766)
  %767 = load i32, ptr %x4, align 4
  %768 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %768, i64 10
  %769 = load i32, ptr %arrayidx85, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x584, ptr noundef %x585, i32 noundef %767, i32 noundef %769)
  %770 = load i32, ptr %x4, align 4
  %771 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %771, i64 9
  %772 = load i32, ptr %arrayidx86, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x586, ptr noundef %x587, i32 noundef %770, i32 noundef %772)
  %773 = load i32, ptr %x4, align 4
  %774 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %774, i64 8
  %775 = load i32, ptr %arrayidx87, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x588, ptr noundef %x589, i32 noundef %773, i32 noundef %775)
  %776 = load i32, ptr %x4, align 4
  %777 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %777, i64 7
  %778 = load i32, ptr %arrayidx88, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x590, ptr noundef %x591, i32 noundef %776, i32 noundef %778)
  %779 = load i32, ptr %x4, align 4
  %780 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %780, i64 6
  %781 = load i32, ptr %arrayidx89, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x592, ptr noundef %x593, i32 noundef %779, i32 noundef %781)
  %782 = load i32, ptr %x4, align 4
  %783 = load ptr, ptr %arg1.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %783, i64 5
  %784 = load i32, ptr %arrayidx90, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x594, ptr noundef %x595, i32 noundef %782, i32 noundef %784)
  %785 = load i32, ptr %x4, align 4
  %786 = load ptr, ptr %arg1.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %786, i64 4
  %787 = load i32, ptr %arrayidx91, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x596, ptr noundef %x597, i32 noundef %785, i32 noundef %787)
  %788 = load i32, ptr %x4, align 4
  %789 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %789, i64 3
  %790 = load i32, ptr %arrayidx92, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x598, ptr noundef %x599, i32 noundef %788, i32 noundef %790)
  %791 = load i32, ptr %x4, align 4
  %792 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %792, i64 2
  %793 = load i32, ptr %arrayidx93, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x600, ptr noundef %x601, i32 noundef %791, i32 noundef %793)
  %794 = load i32, ptr %x4, align 4
  %795 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %795, i64 1
  %796 = load i32, ptr %arrayidx94, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x602, ptr noundef %x603, i32 noundef %794, i32 noundef %796)
  %797 = load i32, ptr %x4, align 4
  %798 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %798, i64 0
  %799 = load i32, ptr %arrayidx95, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x604, ptr noundef %x605, i32 noundef %797, i32 noundef %799)
  %800 = load i32, ptr %x605, align 4
  %801 = load i32, ptr %x602, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x606, ptr noundef %x607, i8 noundef zeroext 0, i32 noundef %800, i32 noundef %801)
  %802 = load i8, ptr %x607, align 1
  %803 = load i32, ptr %x603, align 4
  %804 = load i32, ptr %x600, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x608, ptr noundef %x609, i8 noundef zeroext %802, i32 noundef %803, i32 noundef %804)
  %805 = load i8, ptr %x609, align 1
  %806 = load i32, ptr %x601, align 4
  %807 = load i32, ptr %x598, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x610, ptr noundef %x611, i8 noundef zeroext %805, i32 noundef %806, i32 noundef %807)
  %808 = load i8, ptr %x611, align 1
  %809 = load i32, ptr %x599, align 4
  %810 = load i32, ptr %x596, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x612, ptr noundef %x613, i8 noundef zeroext %808, i32 noundef %809, i32 noundef %810)
  %811 = load i8, ptr %x613, align 1
  %812 = load i32, ptr %x597, align 4
  %813 = load i32, ptr %x594, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x614, ptr noundef %x615, i8 noundef zeroext %811, i32 noundef %812, i32 noundef %813)
  %814 = load i8, ptr %x615, align 1
  %815 = load i32, ptr %x595, align 4
  %816 = load i32, ptr %x592, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x616, ptr noundef %x617, i8 noundef zeroext %814, i32 noundef %815, i32 noundef %816)
  %817 = load i8, ptr %x617, align 1
  %818 = load i32, ptr %x593, align 4
  %819 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x618, ptr noundef %x619, i8 noundef zeroext %817, i32 noundef %818, i32 noundef %819)
  %820 = load i8, ptr %x619, align 1
  %821 = load i32, ptr %x591, align 4
  %822 = load i32, ptr %x588, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x620, ptr noundef %x621, i8 noundef zeroext %820, i32 noundef %821, i32 noundef %822)
  %823 = load i8, ptr %x621, align 1
  %824 = load i32, ptr %x589, align 4
  %825 = load i32, ptr %x586, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x622, ptr noundef %x623, i8 noundef zeroext %823, i32 noundef %824, i32 noundef %825)
  %826 = load i8, ptr %x623, align 1
  %827 = load i32, ptr %x587, align 4
  %828 = load i32, ptr %x584, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x624, ptr noundef %x625, i8 noundef zeroext %826, i32 noundef %827, i32 noundef %828)
  %829 = load i8, ptr %x625, align 1
  %830 = load i32, ptr %x585, align 4
  %831 = load i32, ptr %x582, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x626, ptr noundef %x627, i8 noundef zeroext %829, i32 noundef %830, i32 noundef %831)
  %832 = load i8, ptr %x627, align 1
  %conv96 = zext i8 %832 to i32
  %833 = load i32, ptr %x583, align 4
  %add97 = add i32 %conv96, %833
  store i32 %add97, ptr %x628, align 4
  %834 = load i32, ptr %x557, align 4
  %835 = load i32, ptr %x604, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext 0, i32 noundef %834, i32 noundef %835)
  %836 = load i8, ptr %x630, align 1
  %837 = load i32, ptr %x559, align 4
  %838 = load i32, ptr %x606, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %836, i32 noundef %837, i32 noundef %838)
  %839 = load i8, ptr %x632, align 1
  %840 = load i32, ptr %x561, align 4
  %841 = load i32, ptr %x608, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext %839, i32 noundef %840, i32 noundef %841)
  %842 = load i8, ptr %x634, align 1
  %843 = load i32, ptr %x563, align 4
  %844 = load i32, ptr %x610, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %842, i32 noundef %843, i32 noundef %844)
  %845 = load i8, ptr %x636, align 1
  %846 = load i32, ptr %x565, align 4
  %847 = load i32, ptr %x612, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %845, i32 noundef %846, i32 noundef %847)
  %848 = load i8, ptr %x638, align 1
  %849 = load i32, ptr %x567, align 4
  %850 = load i32, ptr %x614, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %848, i32 noundef %849, i32 noundef %850)
  %851 = load i8, ptr %x640, align 1
  %852 = load i32, ptr %x569, align 4
  %853 = load i32, ptr %x616, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %851, i32 noundef %852, i32 noundef %853)
  %854 = load i8, ptr %x642, align 1
  %855 = load i32, ptr %x571, align 4
  %856 = load i32, ptr %x618, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %854, i32 noundef %855, i32 noundef %856)
  %857 = load i8, ptr %x644, align 1
  %858 = load i32, ptr %x573, align 4
  %859 = load i32, ptr %x620, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %857, i32 noundef %858, i32 noundef %859)
  %860 = load i8, ptr %x646, align 1
  %861 = load i32, ptr %x575, align 4
  %862 = load i32, ptr %x622, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x647, ptr noundef %x648, i8 noundef zeroext %860, i32 noundef %861, i32 noundef %862)
  %863 = load i8, ptr %x648, align 1
  %864 = load i32, ptr %x577, align 4
  %865 = load i32, ptr %x624, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x649, ptr noundef %x650, i8 noundef zeroext %863, i32 noundef %864, i32 noundef %865)
  %866 = load i8, ptr %x650, align 1
  %867 = load i32, ptr %x579, align 4
  %868 = load i32, ptr %x626, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x651, ptr noundef %x652, i8 noundef zeroext %866, i32 noundef %867, i32 noundef %868)
  %869 = load i8, ptr %x652, align 1
  %870 = load i32, ptr %x581, align 4
  %871 = load i32, ptr %x628, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x653, ptr noundef %x654, i8 noundef zeroext %869, i32 noundef %870, i32 noundef %871)
  %872 = load i32, ptr %x629, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x655, ptr noundef %x656, i32 noundef %872, i32 noundef -393225147)
  %873 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x657, ptr noundef %x658, i32 noundef %873, i32 noundef -1)
  %874 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x659, ptr noundef %x660, i32 noundef %874, i32 noundef -1)
  %875 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x661, ptr noundef %x662, i32 noundef %875, i32 noundef -1)
  %876 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x663, ptr noundef %x664, i32 noundef %876, i32 noundef -1)
  %877 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x665, ptr noundef %x666, i32 noundef %877, i32 noundef -1)
  %878 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x667, ptr noundef %x668, i32 noundef %878, i32 noundef -1)
  %879 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x669, ptr noundef %x670, i32 noundef %879, i32 noundef -949793407)
  %880 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x671, ptr noundef %x672, i32 noundef %880, i32 noundef -197710369)
  %881 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x673, ptr noundef %x674, i32 noundef %881, i32 noundef 1478102450)
  %882 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x675, ptr noundef %x676, i32 noundef %882, i32 noundef 1219536762)
  %883 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x677, ptr noundef %x678, i32 noundef %883, i32 noundef -320071318)
  %884 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x679, ptr noundef %x680, i32 noundef %884, i32 noundef -859494029)
  %885 = load i32, ptr %x680, align 4
  %886 = load i32, ptr %x677, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext 0, i32 noundef %885, i32 noundef %886)
  %887 = load i8, ptr %x682, align 1
  %888 = load i32, ptr %x678, align 4
  %889 = load i32, ptr %x675, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext %887, i32 noundef %888, i32 noundef %889)
  %890 = load i8, ptr %x684, align 1
  %891 = load i32, ptr %x676, align 4
  %892 = load i32, ptr %x673, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext %890, i32 noundef %891, i32 noundef %892)
  %893 = load i8, ptr %x686, align 1
  %894 = load i32, ptr %x674, align 4
  %895 = load i32, ptr %x671, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %893, i32 noundef %894, i32 noundef %895)
  %896 = load i8, ptr %x688, align 1
  %897 = load i32, ptr %x672, align 4
  %898 = load i32, ptr %x669, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %896, i32 noundef %897, i32 noundef %898)
  %899 = load i8, ptr %x690, align 1
  %900 = load i32, ptr %x670, align 4
  %901 = load i32, ptr %x667, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %899, i32 noundef %900, i32 noundef %901)
  %902 = load i8, ptr %x692, align 1
  %903 = load i32, ptr %x668, align 4
  %904 = load i32, ptr %x665, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x693, ptr noundef %x694, i8 noundef zeroext %902, i32 noundef %903, i32 noundef %904)
  %905 = load i8, ptr %x694, align 1
  %906 = load i32, ptr %x666, align 4
  %907 = load i32, ptr %x663, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext %905, i32 noundef %906, i32 noundef %907)
  %908 = load i8, ptr %x696, align 1
  %909 = load i32, ptr %x664, align 4
  %910 = load i32, ptr %x661, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x697, ptr noundef %x698, i8 noundef zeroext %908, i32 noundef %909, i32 noundef %910)
  %911 = load i8, ptr %x698, align 1
  %912 = load i32, ptr %x662, align 4
  %913 = load i32, ptr %x659, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x699, ptr noundef %x700, i8 noundef zeroext %911, i32 noundef %912, i32 noundef %913)
  %914 = load i8, ptr %x700, align 1
  %915 = load i32, ptr %x660, align 4
  %916 = load i32, ptr %x657, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x701, ptr noundef %x702, i8 noundef zeroext %914, i32 noundef %915, i32 noundef %916)
  %917 = load i8, ptr %x702, align 1
  %conv98 = zext i8 %917 to i32
  %918 = load i32, ptr %x658, align 4
  %add99 = add i32 %conv98, %918
  store i32 %add99, ptr %x703, align 4
  %919 = load i32, ptr %x629, align 4
  %920 = load i32, ptr %x679, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x704, ptr noundef %x705, i8 noundef zeroext 0, i32 noundef %919, i32 noundef %920)
  %921 = load i8, ptr %x705, align 1
  %922 = load i32, ptr %x631, align 4
  %923 = load i32, ptr %x681, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x706, ptr noundef %x707, i8 noundef zeroext %921, i32 noundef %922, i32 noundef %923)
  %924 = load i8, ptr %x707, align 1
  %925 = load i32, ptr %x633, align 4
  %926 = load i32, ptr %x683, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x708, ptr noundef %x709, i8 noundef zeroext %924, i32 noundef %925, i32 noundef %926)
  %927 = load i8, ptr %x709, align 1
  %928 = load i32, ptr %x635, align 4
  %929 = load i32, ptr %x685, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x710, ptr noundef %x711, i8 noundef zeroext %927, i32 noundef %928, i32 noundef %929)
  %930 = load i8, ptr %x711, align 1
  %931 = load i32, ptr %x637, align 4
  %932 = load i32, ptr %x687, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x712, ptr noundef %x713, i8 noundef zeroext %930, i32 noundef %931, i32 noundef %932)
  %933 = load i8, ptr %x713, align 1
  %934 = load i32, ptr %x639, align 4
  %935 = load i32, ptr %x689, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x714, ptr noundef %x715, i8 noundef zeroext %933, i32 noundef %934, i32 noundef %935)
  %936 = load i8, ptr %x715, align 1
  %937 = load i32, ptr %x641, align 4
  %938 = load i32, ptr %x691, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x716, ptr noundef %x717, i8 noundef zeroext %936, i32 noundef %937, i32 noundef %938)
  %939 = load i8, ptr %x717, align 1
  %940 = load i32, ptr %x643, align 4
  %941 = load i32, ptr %x693, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x718, ptr noundef %x719, i8 noundef zeroext %939, i32 noundef %940, i32 noundef %941)
  %942 = load i8, ptr %x719, align 1
  %943 = load i32, ptr %x645, align 4
  %944 = load i32, ptr %x695, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x720, ptr noundef %x721, i8 noundef zeroext %942, i32 noundef %943, i32 noundef %944)
  %945 = load i8, ptr %x721, align 1
  %946 = load i32, ptr %x647, align 4
  %947 = load i32, ptr %x697, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x722, ptr noundef %x723, i8 noundef zeroext %945, i32 noundef %946, i32 noundef %947)
  %948 = load i8, ptr %x723, align 1
  %949 = load i32, ptr %x649, align 4
  %950 = load i32, ptr %x699, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x724, ptr noundef %x725, i8 noundef zeroext %948, i32 noundef %949, i32 noundef %950)
  %951 = load i8, ptr %x725, align 1
  %952 = load i32, ptr %x651, align 4
  %953 = load i32, ptr %x701, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x726, ptr noundef %x727, i8 noundef zeroext %951, i32 noundef %952, i32 noundef %953)
  %954 = load i8, ptr %x727, align 1
  %955 = load i32, ptr %x653, align 4
  %956 = load i32, ptr %x703, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x728, ptr noundef %x729, i8 noundef zeroext %954, i32 noundef %955, i32 noundef %956)
  %957 = load i8, ptr %x729, align 1
  %conv100 = zext i8 %957 to i32
  %958 = load i8, ptr %x654, align 1
  %conv101 = zext i8 %958 to i32
  %add102 = add i32 %conv100, %conv101
  store i32 %add102, ptr %x730, align 4
  %959 = load i32, ptr %x5, align 4
  %960 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %960, i64 11
  %961 = load i32, ptr %arrayidx103, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x731, ptr noundef %x732, i32 noundef %959, i32 noundef %961)
  %962 = load i32, ptr %x5, align 4
  %963 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %963, i64 10
  %964 = load i32, ptr %arrayidx104, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x733, ptr noundef %x734, i32 noundef %962, i32 noundef %964)
  %965 = load i32, ptr %x5, align 4
  %966 = load ptr, ptr %arg1.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %966, i64 9
  %967 = load i32, ptr %arrayidx105, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x735, ptr noundef %x736, i32 noundef %965, i32 noundef %967)
  %968 = load i32, ptr %x5, align 4
  %969 = load ptr, ptr %arg1.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %969, i64 8
  %970 = load i32, ptr %arrayidx106, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x737, ptr noundef %x738, i32 noundef %968, i32 noundef %970)
  %971 = load i32, ptr %x5, align 4
  %972 = load ptr, ptr %arg1.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %972, i64 7
  %973 = load i32, ptr %arrayidx107, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x739, ptr noundef %x740, i32 noundef %971, i32 noundef %973)
  %974 = load i32, ptr %x5, align 4
  %975 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %975, i64 6
  %976 = load i32, ptr %arrayidx108, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x741, ptr noundef %x742, i32 noundef %974, i32 noundef %976)
  %977 = load i32, ptr %x5, align 4
  %978 = load ptr, ptr %arg1.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %978, i64 5
  %979 = load i32, ptr %arrayidx109, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x743, ptr noundef %x744, i32 noundef %977, i32 noundef %979)
  %980 = load i32, ptr %x5, align 4
  %981 = load ptr, ptr %arg1.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %981, i64 4
  %982 = load i32, ptr %arrayidx110, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x745, ptr noundef %x746, i32 noundef %980, i32 noundef %982)
  %983 = load i32, ptr %x5, align 4
  %984 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %984, i64 3
  %985 = load i32, ptr %arrayidx111, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x747, ptr noundef %x748, i32 noundef %983, i32 noundef %985)
  %986 = load i32, ptr %x5, align 4
  %987 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %987, i64 2
  %988 = load i32, ptr %arrayidx112, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x749, ptr noundef %x750, i32 noundef %986, i32 noundef %988)
  %989 = load i32, ptr %x5, align 4
  %990 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %990, i64 1
  %991 = load i32, ptr %arrayidx113, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x751, ptr noundef %x752, i32 noundef %989, i32 noundef %991)
  %992 = load i32, ptr %x5, align 4
  %993 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %993, i64 0
  %994 = load i32, ptr %arrayidx114, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x753, ptr noundef %x754, i32 noundef %992, i32 noundef %994)
  %995 = load i32, ptr %x754, align 4
  %996 = load i32, ptr %x751, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x755, ptr noundef %x756, i8 noundef zeroext 0, i32 noundef %995, i32 noundef %996)
  %997 = load i8, ptr %x756, align 1
  %998 = load i32, ptr %x752, align 4
  %999 = load i32, ptr %x749, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x757, ptr noundef %x758, i8 noundef zeroext %997, i32 noundef %998, i32 noundef %999)
  %1000 = load i8, ptr %x758, align 1
  %1001 = load i32, ptr %x750, align 4
  %1002 = load i32, ptr %x747, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x759, ptr noundef %x760, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef %1002)
  %1003 = load i8, ptr %x760, align 1
  %1004 = load i32, ptr %x748, align 4
  %1005 = load i32, ptr %x745, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x761, ptr noundef %x762, i8 noundef zeroext %1003, i32 noundef %1004, i32 noundef %1005)
  %1006 = load i8, ptr %x762, align 1
  %1007 = load i32, ptr %x746, align 4
  %1008 = load i32, ptr %x743, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x763, ptr noundef %x764, i8 noundef zeroext %1006, i32 noundef %1007, i32 noundef %1008)
  %1009 = load i8, ptr %x764, align 1
  %1010 = load i32, ptr %x744, align 4
  %1011 = load i32, ptr %x741, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x765, ptr noundef %x766, i8 noundef zeroext %1009, i32 noundef %1010, i32 noundef %1011)
  %1012 = load i8, ptr %x766, align 1
  %1013 = load i32, ptr %x742, align 4
  %1014 = load i32, ptr %x739, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x767, ptr noundef %x768, i8 noundef zeroext %1012, i32 noundef %1013, i32 noundef %1014)
  %1015 = load i8, ptr %x768, align 1
  %1016 = load i32, ptr %x740, align 4
  %1017 = load i32, ptr %x737, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x769, ptr noundef %x770, i8 noundef zeroext %1015, i32 noundef %1016, i32 noundef %1017)
  %1018 = load i8, ptr %x770, align 1
  %1019 = load i32, ptr %x738, align 4
  %1020 = load i32, ptr %x735, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x771, ptr noundef %x772, i8 noundef zeroext %1018, i32 noundef %1019, i32 noundef %1020)
  %1021 = load i8, ptr %x772, align 1
  %1022 = load i32, ptr %x736, align 4
  %1023 = load i32, ptr %x733, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x773, ptr noundef %x774, i8 noundef zeroext %1021, i32 noundef %1022, i32 noundef %1023)
  %1024 = load i8, ptr %x774, align 1
  %1025 = load i32, ptr %x734, align 4
  %1026 = load i32, ptr %x731, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x775, ptr noundef %x776, i8 noundef zeroext %1024, i32 noundef %1025, i32 noundef %1026)
  %1027 = load i8, ptr %x776, align 1
  %conv115 = zext i8 %1027 to i32
  %1028 = load i32, ptr %x732, align 4
  %add116 = add i32 %conv115, %1028
  store i32 %add116, ptr %x777, align 4
  %1029 = load i32, ptr %x706, align 4
  %1030 = load i32, ptr %x753, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x778, ptr noundef %x779, i8 noundef zeroext 0, i32 noundef %1029, i32 noundef %1030)
  %1031 = load i8, ptr %x779, align 1
  %1032 = load i32, ptr %x708, align 4
  %1033 = load i32, ptr %x755, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x780, ptr noundef %x781, i8 noundef zeroext %1031, i32 noundef %1032, i32 noundef %1033)
  %1034 = load i8, ptr %x781, align 1
  %1035 = load i32, ptr %x710, align 4
  %1036 = load i32, ptr %x757, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x782, ptr noundef %x783, i8 noundef zeroext %1034, i32 noundef %1035, i32 noundef %1036)
  %1037 = load i8, ptr %x783, align 1
  %1038 = load i32, ptr %x712, align 4
  %1039 = load i32, ptr %x759, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x784, ptr noundef %x785, i8 noundef zeroext %1037, i32 noundef %1038, i32 noundef %1039)
  %1040 = load i8, ptr %x785, align 1
  %1041 = load i32, ptr %x714, align 4
  %1042 = load i32, ptr %x761, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x786, ptr noundef %x787, i8 noundef zeroext %1040, i32 noundef %1041, i32 noundef %1042)
  %1043 = load i8, ptr %x787, align 1
  %1044 = load i32, ptr %x716, align 4
  %1045 = load i32, ptr %x763, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x788, ptr noundef %x789, i8 noundef zeroext %1043, i32 noundef %1044, i32 noundef %1045)
  %1046 = load i8, ptr %x789, align 1
  %1047 = load i32, ptr %x718, align 4
  %1048 = load i32, ptr %x765, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x790, ptr noundef %x791, i8 noundef zeroext %1046, i32 noundef %1047, i32 noundef %1048)
  %1049 = load i8, ptr %x791, align 1
  %1050 = load i32, ptr %x720, align 4
  %1051 = load i32, ptr %x767, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x792, ptr noundef %x793, i8 noundef zeroext %1049, i32 noundef %1050, i32 noundef %1051)
  %1052 = load i8, ptr %x793, align 1
  %1053 = load i32, ptr %x722, align 4
  %1054 = load i32, ptr %x769, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x794, ptr noundef %x795, i8 noundef zeroext %1052, i32 noundef %1053, i32 noundef %1054)
  %1055 = load i8, ptr %x795, align 1
  %1056 = load i32, ptr %x724, align 4
  %1057 = load i32, ptr %x771, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x796, ptr noundef %x797, i8 noundef zeroext %1055, i32 noundef %1056, i32 noundef %1057)
  %1058 = load i8, ptr %x797, align 1
  %1059 = load i32, ptr %x726, align 4
  %1060 = load i32, ptr %x773, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x798, ptr noundef %x799, i8 noundef zeroext %1058, i32 noundef %1059, i32 noundef %1060)
  %1061 = load i8, ptr %x799, align 1
  %1062 = load i32, ptr %x728, align 4
  %1063 = load i32, ptr %x775, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x800, ptr noundef %x801, i8 noundef zeroext %1061, i32 noundef %1062, i32 noundef %1063)
  %1064 = load i8, ptr %x801, align 1
  %1065 = load i32, ptr %x730, align 4
  %1066 = load i32, ptr %x777, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x802, ptr noundef %x803, i8 noundef zeroext %1064, i32 noundef %1065, i32 noundef %1066)
  %1067 = load i32, ptr %x778, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x804, ptr noundef %x805, i32 noundef %1067, i32 noundef -393225147)
  %1068 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x806, ptr noundef %x807, i32 noundef %1068, i32 noundef -1)
  %1069 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x808, ptr noundef %x809, i32 noundef %1069, i32 noundef -1)
  %1070 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x810, ptr noundef %x811, i32 noundef %1070, i32 noundef -1)
  %1071 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x812, ptr noundef %x813, i32 noundef %1071, i32 noundef -1)
  %1072 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x814, ptr noundef %x815, i32 noundef %1072, i32 noundef -1)
  %1073 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x816, ptr noundef %x817, i32 noundef %1073, i32 noundef -1)
  %1074 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x818, ptr noundef %x819, i32 noundef %1074, i32 noundef -949793407)
  %1075 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x820, ptr noundef %x821, i32 noundef %1075, i32 noundef -197710369)
  %1076 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x822, ptr noundef %x823, i32 noundef %1076, i32 noundef 1478102450)
  %1077 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x824, ptr noundef %x825, i32 noundef %1077, i32 noundef 1219536762)
  %1078 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x826, ptr noundef %x827, i32 noundef %1078, i32 noundef -320071318)
  %1079 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x828, ptr noundef %x829, i32 noundef %1079, i32 noundef -859494029)
  %1080 = load i32, ptr %x829, align 4
  %1081 = load i32, ptr %x826, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x830, ptr noundef %x831, i8 noundef zeroext 0, i32 noundef %1080, i32 noundef %1081)
  %1082 = load i8, ptr %x831, align 1
  %1083 = load i32, ptr %x827, align 4
  %1084 = load i32, ptr %x824, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x832, ptr noundef %x833, i8 noundef zeroext %1082, i32 noundef %1083, i32 noundef %1084)
  %1085 = load i8, ptr %x833, align 1
  %1086 = load i32, ptr %x825, align 4
  %1087 = load i32, ptr %x822, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x834, ptr noundef %x835, i8 noundef zeroext %1085, i32 noundef %1086, i32 noundef %1087)
  %1088 = load i8, ptr %x835, align 1
  %1089 = load i32, ptr %x823, align 4
  %1090 = load i32, ptr %x820, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x836, ptr noundef %x837, i8 noundef zeroext %1088, i32 noundef %1089, i32 noundef %1090)
  %1091 = load i8, ptr %x837, align 1
  %1092 = load i32, ptr %x821, align 4
  %1093 = load i32, ptr %x818, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x838, ptr noundef %x839, i8 noundef zeroext %1091, i32 noundef %1092, i32 noundef %1093)
  %1094 = load i8, ptr %x839, align 1
  %1095 = load i32, ptr %x819, align 4
  %1096 = load i32, ptr %x816, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x840, ptr noundef %x841, i8 noundef zeroext %1094, i32 noundef %1095, i32 noundef %1096)
  %1097 = load i8, ptr %x841, align 1
  %1098 = load i32, ptr %x817, align 4
  %1099 = load i32, ptr %x814, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x842, ptr noundef %x843, i8 noundef zeroext %1097, i32 noundef %1098, i32 noundef %1099)
  %1100 = load i8, ptr %x843, align 1
  %1101 = load i32, ptr %x815, align 4
  %1102 = load i32, ptr %x812, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x844, ptr noundef %x845, i8 noundef zeroext %1100, i32 noundef %1101, i32 noundef %1102)
  %1103 = load i8, ptr %x845, align 1
  %1104 = load i32, ptr %x813, align 4
  %1105 = load i32, ptr %x810, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x846, ptr noundef %x847, i8 noundef zeroext %1103, i32 noundef %1104, i32 noundef %1105)
  %1106 = load i8, ptr %x847, align 1
  %1107 = load i32, ptr %x811, align 4
  %1108 = load i32, ptr %x808, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x848, ptr noundef %x849, i8 noundef zeroext %1106, i32 noundef %1107, i32 noundef %1108)
  %1109 = load i8, ptr %x849, align 1
  %1110 = load i32, ptr %x809, align 4
  %1111 = load i32, ptr %x806, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x850, ptr noundef %x851, i8 noundef zeroext %1109, i32 noundef %1110, i32 noundef %1111)
  %1112 = load i8, ptr %x851, align 1
  %conv117 = zext i8 %1112 to i32
  %1113 = load i32, ptr %x807, align 4
  %add118 = add i32 %conv117, %1113
  store i32 %add118, ptr %x852, align 4
  %1114 = load i32, ptr %x778, align 4
  %1115 = load i32, ptr %x828, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x853, ptr noundef %x854, i8 noundef zeroext 0, i32 noundef %1114, i32 noundef %1115)
  %1116 = load i8, ptr %x854, align 1
  %1117 = load i32, ptr %x780, align 4
  %1118 = load i32, ptr %x830, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x855, ptr noundef %x856, i8 noundef zeroext %1116, i32 noundef %1117, i32 noundef %1118)
  %1119 = load i8, ptr %x856, align 1
  %1120 = load i32, ptr %x782, align 4
  %1121 = load i32, ptr %x832, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x857, ptr noundef %x858, i8 noundef zeroext %1119, i32 noundef %1120, i32 noundef %1121)
  %1122 = load i8, ptr %x858, align 1
  %1123 = load i32, ptr %x784, align 4
  %1124 = load i32, ptr %x834, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x859, ptr noundef %x860, i8 noundef zeroext %1122, i32 noundef %1123, i32 noundef %1124)
  %1125 = load i8, ptr %x860, align 1
  %1126 = load i32, ptr %x786, align 4
  %1127 = load i32, ptr %x836, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x861, ptr noundef %x862, i8 noundef zeroext %1125, i32 noundef %1126, i32 noundef %1127)
  %1128 = load i8, ptr %x862, align 1
  %1129 = load i32, ptr %x788, align 4
  %1130 = load i32, ptr %x838, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x863, ptr noundef %x864, i8 noundef zeroext %1128, i32 noundef %1129, i32 noundef %1130)
  %1131 = load i8, ptr %x864, align 1
  %1132 = load i32, ptr %x790, align 4
  %1133 = load i32, ptr %x840, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x865, ptr noundef %x866, i8 noundef zeroext %1131, i32 noundef %1132, i32 noundef %1133)
  %1134 = load i8, ptr %x866, align 1
  %1135 = load i32, ptr %x792, align 4
  %1136 = load i32, ptr %x842, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x867, ptr noundef %x868, i8 noundef zeroext %1134, i32 noundef %1135, i32 noundef %1136)
  %1137 = load i8, ptr %x868, align 1
  %1138 = load i32, ptr %x794, align 4
  %1139 = load i32, ptr %x844, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x869, ptr noundef %x870, i8 noundef zeroext %1137, i32 noundef %1138, i32 noundef %1139)
  %1140 = load i8, ptr %x870, align 1
  %1141 = load i32, ptr %x796, align 4
  %1142 = load i32, ptr %x846, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x871, ptr noundef %x872, i8 noundef zeroext %1140, i32 noundef %1141, i32 noundef %1142)
  %1143 = load i8, ptr %x872, align 1
  %1144 = load i32, ptr %x798, align 4
  %1145 = load i32, ptr %x848, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x873, ptr noundef %x874, i8 noundef zeroext %1143, i32 noundef %1144, i32 noundef %1145)
  %1146 = load i8, ptr %x874, align 1
  %1147 = load i32, ptr %x800, align 4
  %1148 = load i32, ptr %x850, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x875, ptr noundef %x876, i8 noundef zeroext %1146, i32 noundef %1147, i32 noundef %1148)
  %1149 = load i8, ptr %x876, align 1
  %1150 = load i32, ptr %x802, align 4
  %1151 = load i32, ptr %x852, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x877, ptr noundef %x878, i8 noundef zeroext %1149, i32 noundef %1150, i32 noundef %1151)
  %1152 = load i8, ptr %x878, align 1
  %conv119 = zext i8 %1152 to i32
  %1153 = load i8, ptr %x803, align 1
  %conv120 = zext i8 %1153 to i32
  %add121 = add i32 %conv119, %conv120
  store i32 %add121, ptr %x879, align 4
  %1154 = load i32, ptr %x6, align 4
  %1155 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %1155, i64 11
  %1156 = load i32, ptr %arrayidx122, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x880, ptr noundef %x881, i32 noundef %1154, i32 noundef %1156)
  %1157 = load i32, ptr %x6, align 4
  %1158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %1158, i64 10
  %1159 = load i32, ptr %arrayidx123, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x882, ptr noundef %x883, i32 noundef %1157, i32 noundef %1159)
  %1160 = load i32, ptr %x6, align 4
  %1161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %1161, i64 9
  %1162 = load i32, ptr %arrayidx124, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x884, ptr noundef %x885, i32 noundef %1160, i32 noundef %1162)
  %1163 = load i32, ptr %x6, align 4
  %1164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %1164, i64 8
  %1165 = load i32, ptr %arrayidx125, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x886, ptr noundef %x887, i32 noundef %1163, i32 noundef %1165)
  %1166 = load i32, ptr %x6, align 4
  %1167 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %1167, i64 7
  %1168 = load i32, ptr %arrayidx126, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x888, ptr noundef %x889, i32 noundef %1166, i32 noundef %1168)
  %1169 = load i32, ptr %x6, align 4
  %1170 = load ptr, ptr %arg1.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %1170, i64 6
  %1171 = load i32, ptr %arrayidx127, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x890, ptr noundef %x891, i32 noundef %1169, i32 noundef %1171)
  %1172 = load i32, ptr %x6, align 4
  %1173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %1173, i64 5
  %1174 = load i32, ptr %arrayidx128, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x892, ptr noundef %x893, i32 noundef %1172, i32 noundef %1174)
  %1175 = load i32, ptr %x6, align 4
  %1176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %1176, i64 4
  %1177 = load i32, ptr %arrayidx129, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x894, ptr noundef %x895, i32 noundef %1175, i32 noundef %1177)
  %1178 = load i32, ptr %x6, align 4
  %1179 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %1179, i64 3
  %1180 = load i32, ptr %arrayidx130, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x896, ptr noundef %x897, i32 noundef %1178, i32 noundef %1180)
  %1181 = load i32, ptr %x6, align 4
  %1182 = load ptr, ptr %arg1.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %1182, i64 2
  %1183 = load i32, ptr %arrayidx131, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x898, ptr noundef %x899, i32 noundef %1181, i32 noundef %1183)
  %1184 = load i32, ptr %x6, align 4
  %1185 = load ptr, ptr %arg1.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %1185, i64 1
  %1186 = load i32, ptr %arrayidx132, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x900, ptr noundef %x901, i32 noundef %1184, i32 noundef %1186)
  %1187 = load i32, ptr %x6, align 4
  %1188 = load ptr, ptr %arg1.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %1188, i64 0
  %1189 = load i32, ptr %arrayidx133, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x902, ptr noundef %x903, i32 noundef %1187, i32 noundef %1189)
  %1190 = load i32, ptr %x903, align 4
  %1191 = load i32, ptr %x900, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x904, ptr noundef %x905, i8 noundef zeroext 0, i32 noundef %1190, i32 noundef %1191)
  %1192 = load i8, ptr %x905, align 1
  %1193 = load i32, ptr %x901, align 4
  %1194 = load i32, ptr %x898, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x906, ptr noundef %x907, i8 noundef zeroext %1192, i32 noundef %1193, i32 noundef %1194)
  %1195 = load i8, ptr %x907, align 1
  %1196 = load i32, ptr %x899, align 4
  %1197 = load i32, ptr %x896, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x908, ptr noundef %x909, i8 noundef zeroext %1195, i32 noundef %1196, i32 noundef %1197)
  %1198 = load i8, ptr %x909, align 1
  %1199 = load i32, ptr %x897, align 4
  %1200 = load i32, ptr %x894, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x910, ptr noundef %x911, i8 noundef zeroext %1198, i32 noundef %1199, i32 noundef %1200)
  %1201 = load i8, ptr %x911, align 1
  %1202 = load i32, ptr %x895, align 4
  %1203 = load i32, ptr %x892, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x912, ptr noundef %x913, i8 noundef zeroext %1201, i32 noundef %1202, i32 noundef %1203)
  %1204 = load i8, ptr %x913, align 1
  %1205 = load i32, ptr %x893, align 4
  %1206 = load i32, ptr %x890, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x914, ptr noundef %x915, i8 noundef zeroext %1204, i32 noundef %1205, i32 noundef %1206)
  %1207 = load i8, ptr %x915, align 1
  %1208 = load i32, ptr %x891, align 4
  %1209 = load i32, ptr %x888, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x916, ptr noundef %x917, i8 noundef zeroext %1207, i32 noundef %1208, i32 noundef %1209)
  %1210 = load i8, ptr %x917, align 1
  %1211 = load i32, ptr %x889, align 4
  %1212 = load i32, ptr %x886, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x918, ptr noundef %x919, i8 noundef zeroext %1210, i32 noundef %1211, i32 noundef %1212)
  %1213 = load i8, ptr %x919, align 1
  %1214 = load i32, ptr %x887, align 4
  %1215 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x920, ptr noundef %x921, i8 noundef zeroext %1213, i32 noundef %1214, i32 noundef %1215)
  %1216 = load i8, ptr %x921, align 1
  %1217 = load i32, ptr %x885, align 4
  %1218 = load i32, ptr %x882, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x922, ptr noundef %x923, i8 noundef zeroext %1216, i32 noundef %1217, i32 noundef %1218)
  %1219 = load i8, ptr %x923, align 1
  %1220 = load i32, ptr %x883, align 4
  %1221 = load i32, ptr %x880, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x924, ptr noundef %x925, i8 noundef zeroext %1219, i32 noundef %1220, i32 noundef %1221)
  %1222 = load i8, ptr %x925, align 1
  %conv134 = zext i8 %1222 to i32
  %1223 = load i32, ptr %x881, align 4
  %add135 = add i32 %conv134, %1223
  store i32 %add135, ptr %x926, align 4
  %1224 = load i32, ptr %x855, align 4
  %1225 = load i32, ptr %x902, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x927, ptr noundef %x928, i8 noundef zeroext 0, i32 noundef %1224, i32 noundef %1225)
  %1226 = load i8, ptr %x928, align 1
  %1227 = load i32, ptr %x857, align 4
  %1228 = load i32, ptr %x904, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x929, ptr noundef %x930, i8 noundef zeroext %1226, i32 noundef %1227, i32 noundef %1228)
  %1229 = load i8, ptr %x930, align 1
  %1230 = load i32, ptr %x859, align 4
  %1231 = load i32, ptr %x906, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x931, ptr noundef %x932, i8 noundef zeroext %1229, i32 noundef %1230, i32 noundef %1231)
  %1232 = load i8, ptr %x932, align 1
  %1233 = load i32, ptr %x861, align 4
  %1234 = load i32, ptr %x908, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x933, ptr noundef %x934, i8 noundef zeroext %1232, i32 noundef %1233, i32 noundef %1234)
  %1235 = load i8, ptr %x934, align 1
  %1236 = load i32, ptr %x863, align 4
  %1237 = load i32, ptr %x910, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x935, ptr noundef %x936, i8 noundef zeroext %1235, i32 noundef %1236, i32 noundef %1237)
  %1238 = load i8, ptr %x936, align 1
  %1239 = load i32, ptr %x865, align 4
  %1240 = load i32, ptr %x912, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x937, ptr noundef %x938, i8 noundef zeroext %1238, i32 noundef %1239, i32 noundef %1240)
  %1241 = load i8, ptr %x938, align 1
  %1242 = load i32, ptr %x867, align 4
  %1243 = load i32, ptr %x914, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x939, ptr noundef %x940, i8 noundef zeroext %1241, i32 noundef %1242, i32 noundef %1243)
  %1244 = load i8, ptr %x940, align 1
  %1245 = load i32, ptr %x869, align 4
  %1246 = load i32, ptr %x916, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x941, ptr noundef %x942, i8 noundef zeroext %1244, i32 noundef %1245, i32 noundef %1246)
  %1247 = load i8, ptr %x942, align 1
  %1248 = load i32, ptr %x871, align 4
  %1249 = load i32, ptr %x918, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x943, ptr noundef %x944, i8 noundef zeroext %1247, i32 noundef %1248, i32 noundef %1249)
  %1250 = load i8, ptr %x944, align 1
  %1251 = load i32, ptr %x873, align 4
  %1252 = load i32, ptr %x920, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x945, ptr noundef %x946, i8 noundef zeroext %1250, i32 noundef %1251, i32 noundef %1252)
  %1253 = load i8, ptr %x946, align 1
  %1254 = load i32, ptr %x875, align 4
  %1255 = load i32, ptr %x922, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x947, ptr noundef %x948, i8 noundef zeroext %1253, i32 noundef %1254, i32 noundef %1255)
  %1256 = load i8, ptr %x948, align 1
  %1257 = load i32, ptr %x877, align 4
  %1258 = load i32, ptr %x924, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x949, ptr noundef %x950, i8 noundef zeroext %1256, i32 noundef %1257, i32 noundef %1258)
  %1259 = load i8, ptr %x950, align 1
  %1260 = load i32, ptr %x879, align 4
  %1261 = load i32, ptr %x926, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x951, ptr noundef %x952, i8 noundef zeroext %1259, i32 noundef %1260, i32 noundef %1261)
  %1262 = load i32, ptr %x927, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x953, ptr noundef %x954, i32 noundef %1262, i32 noundef -393225147)
  %1263 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x955, ptr noundef %x956, i32 noundef %1263, i32 noundef -1)
  %1264 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x957, ptr noundef %x958, i32 noundef %1264, i32 noundef -1)
  %1265 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x959, ptr noundef %x960, i32 noundef %1265, i32 noundef -1)
  %1266 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x961, ptr noundef %x962, i32 noundef %1266, i32 noundef -1)
  %1267 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x963, ptr noundef %x964, i32 noundef %1267, i32 noundef -1)
  %1268 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x965, ptr noundef %x966, i32 noundef %1268, i32 noundef -1)
  %1269 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x967, ptr noundef %x968, i32 noundef %1269, i32 noundef -949793407)
  %1270 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x969, ptr noundef %x970, i32 noundef %1270, i32 noundef -197710369)
  %1271 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x971, ptr noundef %x972, i32 noundef %1271, i32 noundef 1478102450)
  %1272 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x973, ptr noundef %x974, i32 noundef %1272, i32 noundef 1219536762)
  %1273 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x975, ptr noundef %x976, i32 noundef %1273, i32 noundef -320071318)
  %1274 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x977, ptr noundef %x978, i32 noundef %1274, i32 noundef -859494029)
  %1275 = load i32, ptr %x978, align 4
  %1276 = load i32, ptr %x975, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x979, ptr noundef %x980, i8 noundef zeroext 0, i32 noundef %1275, i32 noundef %1276)
  %1277 = load i8, ptr %x980, align 1
  %1278 = load i32, ptr %x976, align 4
  %1279 = load i32, ptr %x973, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x981, ptr noundef %x982, i8 noundef zeroext %1277, i32 noundef %1278, i32 noundef %1279)
  %1280 = load i8, ptr %x982, align 1
  %1281 = load i32, ptr %x974, align 4
  %1282 = load i32, ptr %x971, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x983, ptr noundef %x984, i8 noundef zeroext %1280, i32 noundef %1281, i32 noundef %1282)
  %1283 = load i8, ptr %x984, align 1
  %1284 = load i32, ptr %x972, align 4
  %1285 = load i32, ptr %x969, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x985, ptr noundef %x986, i8 noundef zeroext %1283, i32 noundef %1284, i32 noundef %1285)
  %1286 = load i8, ptr %x986, align 1
  %1287 = load i32, ptr %x970, align 4
  %1288 = load i32, ptr %x967, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x987, ptr noundef %x988, i8 noundef zeroext %1286, i32 noundef %1287, i32 noundef %1288)
  %1289 = load i8, ptr %x988, align 1
  %1290 = load i32, ptr %x968, align 4
  %1291 = load i32, ptr %x965, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x989, ptr noundef %x990, i8 noundef zeroext %1289, i32 noundef %1290, i32 noundef %1291)
  %1292 = load i8, ptr %x990, align 1
  %1293 = load i32, ptr %x966, align 4
  %1294 = load i32, ptr %x963, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x991, ptr noundef %x992, i8 noundef zeroext %1292, i32 noundef %1293, i32 noundef %1294)
  %1295 = load i8, ptr %x992, align 1
  %1296 = load i32, ptr %x964, align 4
  %1297 = load i32, ptr %x961, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x993, ptr noundef %x994, i8 noundef zeroext %1295, i32 noundef %1296, i32 noundef %1297)
  %1298 = load i8, ptr %x994, align 1
  %1299 = load i32, ptr %x962, align 4
  %1300 = load i32, ptr %x959, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x995, ptr noundef %x996, i8 noundef zeroext %1298, i32 noundef %1299, i32 noundef %1300)
  %1301 = load i8, ptr %x996, align 1
  %1302 = load i32, ptr %x960, align 4
  %1303 = load i32, ptr %x957, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x997, ptr noundef %x998, i8 noundef zeroext %1301, i32 noundef %1302, i32 noundef %1303)
  %1304 = load i8, ptr %x998, align 1
  %1305 = load i32, ptr %x958, align 4
  %1306 = load i32, ptr %x955, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x999, ptr noundef %x1000, i8 noundef zeroext %1304, i32 noundef %1305, i32 noundef %1306)
  %1307 = load i8, ptr %x1000, align 1
  %conv136 = zext i8 %1307 to i32
  %1308 = load i32, ptr %x956, align 4
  %add137 = add i32 %conv136, %1308
  store i32 %add137, ptr %x1001, align 4
  %1309 = load i32, ptr %x927, align 4
  %1310 = load i32, ptr %x977, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1002, ptr noundef %x1003, i8 noundef zeroext 0, i32 noundef %1309, i32 noundef %1310)
  %1311 = load i8, ptr %x1003, align 1
  %1312 = load i32, ptr %x929, align 4
  %1313 = load i32, ptr %x979, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1004, ptr noundef %x1005, i8 noundef zeroext %1311, i32 noundef %1312, i32 noundef %1313)
  %1314 = load i8, ptr %x1005, align 1
  %1315 = load i32, ptr %x931, align 4
  %1316 = load i32, ptr %x981, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1006, ptr noundef %x1007, i8 noundef zeroext %1314, i32 noundef %1315, i32 noundef %1316)
  %1317 = load i8, ptr %x1007, align 1
  %1318 = load i32, ptr %x933, align 4
  %1319 = load i32, ptr %x983, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1008, ptr noundef %x1009, i8 noundef zeroext %1317, i32 noundef %1318, i32 noundef %1319)
  %1320 = load i8, ptr %x1009, align 1
  %1321 = load i32, ptr %x935, align 4
  %1322 = load i32, ptr %x985, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1010, ptr noundef %x1011, i8 noundef zeroext %1320, i32 noundef %1321, i32 noundef %1322)
  %1323 = load i8, ptr %x1011, align 1
  %1324 = load i32, ptr %x937, align 4
  %1325 = load i32, ptr %x987, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1012, ptr noundef %x1013, i8 noundef zeroext %1323, i32 noundef %1324, i32 noundef %1325)
  %1326 = load i8, ptr %x1013, align 1
  %1327 = load i32, ptr %x939, align 4
  %1328 = load i32, ptr %x989, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1014, ptr noundef %x1015, i8 noundef zeroext %1326, i32 noundef %1327, i32 noundef %1328)
  %1329 = load i8, ptr %x1015, align 1
  %1330 = load i32, ptr %x941, align 4
  %1331 = load i32, ptr %x991, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1016, ptr noundef %x1017, i8 noundef zeroext %1329, i32 noundef %1330, i32 noundef %1331)
  %1332 = load i8, ptr %x1017, align 1
  %1333 = load i32, ptr %x943, align 4
  %1334 = load i32, ptr %x993, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1018, ptr noundef %x1019, i8 noundef zeroext %1332, i32 noundef %1333, i32 noundef %1334)
  %1335 = load i8, ptr %x1019, align 1
  %1336 = load i32, ptr %x945, align 4
  %1337 = load i32, ptr %x995, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1020, ptr noundef %x1021, i8 noundef zeroext %1335, i32 noundef %1336, i32 noundef %1337)
  %1338 = load i8, ptr %x1021, align 1
  %1339 = load i32, ptr %x947, align 4
  %1340 = load i32, ptr %x997, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1022, ptr noundef %x1023, i8 noundef zeroext %1338, i32 noundef %1339, i32 noundef %1340)
  %1341 = load i8, ptr %x1023, align 1
  %1342 = load i32, ptr %x949, align 4
  %1343 = load i32, ptr %x999, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1024, ptr noundef %x1025, i8 noundef zeroext %1341, i32 noundef %1342, i32 noundef %1343)
  %1344 = load i8, ptr %x1025, align 1
  %1345 = load i32, ptr %x951, align 4
  %1346 = load i32, ptr %x1001, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1026, ptr noundef %x1027, i8 noundef zeroext %1344, i32 noundef %1345, i32 noundef %1346)
  %1347 = load i8, ptr %x1027, align 1
  %conv138 = zext i8 %1347 to i32
  %1348 = load i8, ptr %x952, align 1
  %conv139 = zext i8 %1348 to i32
  %add140 = add i32 %conv138, %conv139
  store i32 %add140, ptr %x1028, align 4
  %1349 = load i32, ptr %x7, align 4
  %1350 = load ptr, ptr %arg1.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %1350, i64 11
  %1351 = load i32, ptr %arrayidx141, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1029, ptr noundef %x1030, i32 noundef %1349, i32 noundef %1351)
  %1352 = load i32, ptr %x7, align 4
  %1353 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %1353, i64 10
  %1354 = load i32, ptr %arrayidx142, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1031, ptr noundef %x1032, i32 noundef %1352, i32 noundef %1354)
  %1355 = load i32, ptr %x7, align 4
  %1356 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %1356, i64 9
  %1357 = load i32, ptr %arrayidx143, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1033, ptr noundef %x1034, i32 noundef %1355, i32 noundef %1357)
  %1358 = load i32, ptr %x7, align 4
  %1359 = load ptr, ptr %arg1.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %1359, i64 8
  %1360 = load i32, ptr %arrayidx144, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1035, ptr noundef %x1036, i32 noundef %1358, i32 noundef %1360)
  %1361 = load i32, ptr %x7, align 4
  %1362 = load ptr, ptr %arg1.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %1362, i64 7
  %1363 = load i32, ptr %arrayidx145, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1037, ptr noundef %x1038, i32 noundef %1361, i32 noundef %1363)
  %1364 = load i32, ptr %x7, align 4
  %1365 = load ptr, ptr %arg1.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %1365, i64 6
  %1366 = load i32, ptr %arrayidx146, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1039, ptr noundef %x1040, i32 noundef %1364, i32 noundef %1366)
  %1367 = load i32, ptr %x7, align 4
  %1368 = load ptr, ptr %arg1.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %1368, i64 5
  %1369 = load i32, ptr %arrayidx147, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1041, ptr noundef %x1042, i32 noundef %1367, i32 noundef %1369)
  %1370 = load i32, ptr %x7, align 4
  %1371 = load ptr, ptr %arg1.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %1371, i64 4
  %1372 = load i32, ptr %arrayidx148, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1043, ptr noundef %x1044, i32 noundef %1370, i32 noundef %1372)
  %1373 = load i32, ptr %x7, align 4
  %1374 = load ptr, ptr %arg1.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %1374, i64 3
  %1375 = load i32, ptr %arrayidx149, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1045, ptr noundef %x1046, i32 noundef %1373, i32 noundef %1375)
  %1376 = load i32, ptr %x7, align 4
  %1377 = load ptr, ptr %arg1.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %1377, i64 2
  %1378 = load i32, ptr %arrayidx150, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1047, ptr noundef %x1048, i32 noundef %1376, i32 noundef %1378)
  %1379 = load i32, ptr %x7, align 4
  %1380 = load ptr, ptr %arg1.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %1380, i64 1
  %1381 = load i32, ptr %arrayidx151, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1049, ptr noundef %x1050, i32 noundef %1379, i32 noundef %1381)
  %1382 = load i32, ptr %x7, align 4
  %1383 = load ptr, ptr %arg1.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %1383, i64 0
  %1384 = load i32, ptr %arrayidx152, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1051, ptr noundef %x1052, i32 noundef %1382, i32 noundef %1384)
  %1385 = load i32, ptr %x1052, align 4
  %1386 = load i32, ptr %x1049, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1053, ptr noundef %x1054, i8 noundef zeroext 0, i32 noundef %1385, i32 noundef %1386)
  %1387 = load i8, ptr %x1054, align 1
  %1388 = load i32, ptr %x1050, align 4
  %1389 = load i32, ptr %x1047, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1055, ptr noundef %x1056, i8 noundef zeroext %1387, i32 noundef %1388, i32 noundef %1389)
  %1390 = load i8, ptr %x1056, align 1
  %1391 = load i32, ptr %x1048, align 4
  %1392 = load i32, ptr %x1045, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1057, ptr noundef %x1058, i8 noundef zeroext %1390, i32 noundef %1391, i32 noundef %1392)
  %1393 = load i8, ptr %x1058, align 1
  %1394 = load i32, ptr %x1046, align 4
  %1395 = load i32, ptr %x1043, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1059, ptr noundef %x1060, i8 noundef zeroext %1393, i32 noundef %1394, i32 noundef %1395)
  %1396 = load i8, ptr %x1060, align 1
  %1397 = load i32, ptr %x1044, align 4
  %1398 = load i32, ptr %x1041, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1061, ptr noundef %x1062, i8 noundef zeroext %1396, i32 noundef %1397, i32 noundef %1398)
  %1399 = load i8, ptr %x1062, align 1
  %1400 = load i32, ptr %x1042, align 4
  %1401 = load i32, ptr %x1039, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1063, ptr noundef %x1064, i8 noundef zeroext %1399, i32 noundef %1400, i32 noundef %1401)
  %1402 = load i8, ptr %x1064, align 1
  %1403 = load i32, ptr %x1040, align 4
  %1404 = load i32, ptr %x1037, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1065, ptr noundef %x1066, i8 noundef zeroext %1402, i32 noundef %1403, i32 noundef %1404)
  %1405 = load i8, ptr %x1066, align 1
  %1406 = load i32, ptr %x1038, align 4
  %1407 = load i32, ptr %x1035, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1067, ptr noundef %x1068, i8 noundef zeroext %1405, i32 noundef %1406, i32 noundef %1407)
  %1408 = load i8, ptr %x1068, align 1
  %1409 = load i32, ptr %x1036, align 4
  %1410 = load i32, ptr %x1033, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1069, ptr noundef %x1070, i8 noundef zeroext %1408, i32 noundef %1409, i32 noundef %1410)
  %1411 = load i8, ptr %x1070, align 1
  %1412 = load i32, ptr %x1034, align 4
  %1413 = load i32, ptr %x1031, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1071, ptr noundef %x1072, i8 noundef zeroext %1411, i32 noundef %1412, i32 noundef %1413)
  %1414 = load i8, ptr %x1072, align 1
  %1415 = load i32, ptr %x1032, align 4
  %1416 = load i32, ptr %x1029, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1073, ptr noundef %x1074, i8 noundef zeroext %1414, i32 noundef %1415, i32 noundef %1416)
  %1417 = load i8, ptr %x1074, align 1
  %conv153 = zext i8 %1417 to i32
  %1418 = load i32, ptr %x1030, align 4
  %add154 = add i32 %conv153, %1418
  store i32 %add154, ptr %x1075, align 4
  %1419 = load i32, ptr %x1004, align 4
  %1420 = load i32, ptr %x1051, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1076, ptr noundef %x1077, i8 noundef zeroext 0, i32 noundef %1419, i32 noundef %1420)
  %1421 = load i8, ptr %x1077, align 1
  %1422 = load i32, ptr %x1006, align 4
  %1423 = load i32, ptr %x1053, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1078, ptr noundef %x1079, i8 noundef zeroext %1421, i32 noundef %1422, i32 noundef %1423)
  %1424 = load i8, ptr %x1079, align 1
  %1425 = load i32, ptr %x1008, align 4
  %1426 = load i32, ptr %x1055, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1080, ptr noundef %x1081, i8 noundef zeroext %1424, i32 noundef %1425, i32 noundef %1426)
  %1427 = load i8, ptr %x1081, align 1
  %1428 = load i32, ptr %x1010, align 4
  %1429 = load i32, ptr %x1057, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1082, ptr noundef %x1083, i8 noundef zeroext %1427, i32 noundef %1428, i32 noundef %1429)
  %1430 = load i8, ptr %x1083, align 1
  %1431 = load i32, ptr %x1012, align 4
  %1432 = load i32, ptr %x1059, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1084, ptr noundef %x1085, i8 noundef zeroext %1430, i32 noundef %1431, i32 noundef %1432)
  %1433 = load i8, ptr %x1085, align 1
  %1434 = load i32, ptr %x1014, align 4
  %1435 = load i32, ptr %x1061, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1086, ptr noundef %x1087, i8 noundef zeroext %1433, i32 noundef %1434, i32 noundef %1435)
  %1436 = load i8, ptr %x1087, align 1
  %1437 = load i32, ptr %x1016, align 4
  %1438 = load i32, ptr %x1063, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1088, ptr noundef %x1089, i8 noundef zeroext %1436, i32 noundef %1437, i32 noundef %1438)
  %1439 = load i8, ptr %x1089, align 1
  %1440 = load i32, ptr %x1018, align 4
  %1441 = load i32, ptr %x1065, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1090, ptr noundef %x1091, i8 noundef zeroext %1439, i32 noundef %1440, i32 noundef %1441)
  %1442 = load i8, ptr %x1091, align 1
  %1443 = load i32, ptr %x1020, align 4
  %1444 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1092, ptr noundef %x1093, i8 noundef zeroext %1442, i32 noundef %1443, i32 noundef %1444)
  %1445 = load i8, ptr %x1093, align 1
  %1446 = load i32, ptr %x1022, align 4
  %1447 = load i32, ptr %x1069, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1094, ptr noundef %x1095, i8 noundef zeroext %1445, i32 noundef %1446, i32 noundef %1447)
  %1448 = load i8, ptr %x1095, align 1
  %1449 = load i32, ptr %x1024, align 4
  %1450 = load i32, ptr %x1071, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1096, ptr noundef %x1097, i8 noundef zeroext %1448, i32 noundef %1449, i32 noundef %1450)
  %1451 = load i8, ptr %x1097, align 1
  %1452 = load i32, ptr %x1026, align 4
  %1453 = load i32, ptr %x1073, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1098, ptr noundef %x1099, i8 noundef zeroext %1451, i32 noundef %1452, i32 noundef %1453)
  %1454 = load i8, ptr %x1099, align 1
  %1455 = load i32, ptr %x1028, align 4
  %1456 = load i32, ptr %x1075, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1100, ptr noundef %x1101, i8 noundef zeroext %1454, i32 noundef %1455, i32 noundef %1456)
  %1457 = load i32, ptr %x1076, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1102, ptr noundef %x1103, i32 noundef %1457, i32 noundef -393225147)
  %1458 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1104, ptr noundef %x1105, i32 noundef %1458, i32 noundef -1)
  %1459 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1106, ptr noundef %x1107, i32 noundef %1459, i32 noundef -1)
  %1460 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1108, ptr noundef %x1109, i32 noundef %1460, i32 noundef -1)
  %1461 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1110, ptr noundef %x1111, i32 noundef %1461, i32 noundef -1)
  %1462 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1112, ptr noundef %x1113, i32 noundef %1462, i32 noundef -1)
  %1463 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1114, ptr noundef %x1115, i32 noundef %1463, i32 noundef -1)
  %1464 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1116, ptr noundef %x1117, i32 noundef %1464, i32 noundef -949793407)
  %1465 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1118, ptr noundef %x1119, i32 noundef %1465, i32 noundef -197710369)
  %1466 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1120, ptr noundef %x1121, i32 noundef %1466, i32 noundef 1478102450)
  %1467 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1122, ptr noundef %x1123, i32 noundef %1467, i32 noundef 1219536762)
  %1468 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1124, ptr noundef %x1125, i32 noundef %1468, i32 noundef -320071318)
  %1469 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1126, ptr noundef %x1127, i32 noundef %1469, i32 noundef -859494029)
  %1470 = load i32, ptr %x1127, align 4
  %1471 = load i32, ptr %x1124, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1128, ptr noundef %x1129, i8 noundef zeroext 0, i32 noundef %1470, i32 noundef %1471)
  %1472 = load i8, ptr %x1129, align 1
  %1473 = load i32, ptr %x1125, align 4
  %1474 = load i32, ptr %x1122, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1130, ptr noundef %x1131, i8 noundef zeroext %1472, i32 noundef %1473, i32 noundef %1474)
  %1475 = load i8, ptr %x1131, align 1
  %1476 = load i32, ptr %x1123, align 4
  %1477 = load i32, ptr %x1120, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1132, ptr noundef %x1133, i8 noundef zeroext %1475, i32 noundef %1476, i32 noundef %1477)
  %1478 = load i8, ptr %x1133, align 1
  %1479 = load i32, ptr %x1121, align 4
  %1480 = load i32, ptr %x1118, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1134, ptr noundef %x1135, i8 noundef zeroext %1478, i32 noundef %1479, i32 noundef %1480)
  %1481 = load i8, ptr %x1135, align 1
  %1482 = load i32, ptr %x1119, align 4
  %1483 = load i32, ptr %x1116, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1136, ptr noundef %x1137, i8 noundef zeroext %1481, i32 noundef %1482, i32 noundef %1483)
  %1484 = load i8, ptr %x1137, align 1
  %1485 = load i32, ptr %x1117, align 4
  %1486 = load i32, ptr %x1114, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1138, ptr noundef %x1139, i8 noundef zeroext %1484, i32 noundef %1485, i32 noundef %1486)
  %1487 = load i8, ptr %x1139, align 1
  %1488 = load i32, ptr %x1115, align 4
  %1489 = load i32, ptr %x1112, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1140, ptr noundef %x1141, i8 noundef zeroext %1487, i32 noundef %1488, i32 noundef %1489)
  %1490 = load i8, ptr %x1141, align 1
  %1491 = load i32, ptr %x1113, align 4
  %1492 = load i32, ptr %x1110, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1142, ptr noundef %x1143, i8 noundef zeroext %1490, i32 noundef %1491, i32 noundef %1492)
  %1493 = load i8, ptr %x1143, align 1
  %1494 = load i32, ptr %x1111, align 4
  %1495 = load i32, ptr %x1108, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1144, ptr noundef %x1145, i8 noundef zeroext %1493, i32 noundef %1494, i32 noundef %1495)
  %1496 = load i8, ptr %x1145, align 1
  %1497 = load i32, ptr %x1109, align 4
  %1498 = load i32, ptr %x1106, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1146, ptr noundef %x1147, i8 noundef zeroext %1496, i32 noundef %1497, i32 noundef %1498)
  %1499 = load i8, ptr %x1147, align 1
  %1500 = load i32, ptr %x1107, align 4
  %1501 = load i32, ptr %x1104, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1148, ptr noundef %x1149, i8 noundef zeroext %1499, i32 noundef %1500, i32 noundef %1501)
  %1502 = load i8, ptr %x1149, align 1
  %conv155 = zext i8 %1502 to i32
  %1503 = load i32, ptr %x1105, align 4
  %add156 = add i32 %conv155, %1503
  store i32 %add156, ptr %x1150, align 4
  %1504 = load i32, ptr %x1076, align 4
  %1505 = load i32, ptr %x1126, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1151, ptr noundef %x1152, i8 noundef zeroext 0, i32 noundef %1504, i32 noundef %1505)
  %1506 = load i8, ptr %x1152, align 1
  %1507 = load i32, ptr %x1078, align 4
  %1508 = load i32, ptr %x1128, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1153, ptr noundef %x1154, i8 noundef zeroext %1506, i32 noundef %1507, i32 noundef %1508)
  %1509 = load i8, ptr %x1154, align 1
  %1510 = load i32, ptr %x1080, align 4
  %1511 = load i32, ptr %x1130, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1155, ptr noundef %x1156, i8 noundef zeroext %1509, i32 noundef %1510, i32 noundef %1511)
  %1512 = load i8, ptr %x1156, align 1
  %1513 = load i32, ptr %x1082, align 4
  %1514 = load i32, ptr %x1132, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1157, ptr noundef %x1158, i8 noundef zeroext %1512, i32 noundef %1513, i32 noundef %1514)
  %1515 = load i8, ptr %x1158, align 1
  %1516 = load i32, ptr %x1084, align 4
  %1517 = load i32, ptr %x1134, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1159, ptr noundef %x1160, i8 noundef zeroext %1515, i32 noundef %1516, i32 noundef %1517)
  %1518 = load i8, ptr %x1160, align 1
  %1519 = load i32, ptr %x1086, align 4
  %1520 = load i32, ptr %x1136, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1161, ptr noundef %x1162, i8 noundef zeroext %1518, i32 noundef %1519, i32 noundef %1520)
  %1521 = load i8, ptr %x1162, align 1
  %1522 = load i32, ptr %x1088, align 4
  %1523 = load i32, ptr %x1138, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1163, ptr noundef %x1164, i8 noundef zeroext %1521, i32 noundef %1522, i32 noundef %1523)
  %1524 = load i8, ptr %x1164, align 1
  %1525 = load i32, ptr %x1090, align 4
  %1526 = load i32, ptr %x1140, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1165, ptr noundef %x1166, i8 noundef zeroext %1524, i32 noundef %1525, i32 noundef %1526)
  %1527 = load i8, ptr %x1166, align 1
  %1528 = load i32, ptr %x1092, align 4
  %1529 = load i32, ptr %x1142, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1167, ptr noundef %x1168, i8 noundef zeroext %1527, i32 noundef %1528, i32 noundef %1529)
  %1530 = load i8, ptr %x1168, align 1
  %1531 = load i32, ptr %x1094, align 4
  %1532 = load i32, ptr %x1144, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1169, ptr noundef %x1170, i8 noundef zeroext %1530, i32 noundef %1531, i32 noundef %1532)
  %1533 = load i8, ptr %x1170, align 1
  %1534 = load i32, ptr %x1096, align 4
  %1535 = load i32, ptr %x1146, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1171, ptr noundef %x1172, i8 noundef zeroext %1533, i32 noundef %1534, i32 noundef %1535)
  %1536 = load i8, ptr %x1172, align 1
  %1537 = load i32, ptr %x1098, align 4
  %1538 = load i32, ptr %x1148, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1173, ptr noundef %x1174, i8 noundef zeroext %1536, i32 noundef %1537, i32 noundef %1538)
  %1539 = load i8, ptr %x1174, align 1
  %1540 = load i32, ptr %x1100, align 4
  %1541 = load i32, ptr %x1150, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1175, ptr noundef %x1176, i8 noundef zeroext %1539, i32 noundef %1540, i32 noundef %1541)
  %1542 = load i8, ptr %x1176, align 1
  %conv157 = zext i8 %1542 to i32
  %1543 = load i8, ptr %x1101, align 1
  %conv158 = zext i8 %1543 to i32
  %add159 = add i32 %conv157, %conv158
  store i32 %add159, ptr %x1177, align 4
  %1544 = load i32, ptr %x8, align 4
  %1545 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %1545, i64 11
  %1546 = load i32, ptr %arrayidx160, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1178, ptr noundef %x1179, i32 noundef %1544, i32 noundef %1546)
  %1547 = load i32, ptr %x8, align 4
  %1548 = load ptr, ptr %arg1.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, ptr %1548, i64 10
  %1549 = load i32, ptr %arrayidx161, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1180, ptr noundef %x1181, i32 noundef %1547, i32 noundef %1549)
  %1550 = load i32, ptr %x8, align 4
  %1551 = load ptr, ptr %arg1.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, ptr %1551, i64 9
  %1552 = load i32, ptr %arrayidx162, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1182, ptr noundef %x1183, i32 noundef %1550, i32 noundef %1552)
  %1553 = load i32, ptr %x8, align 4
  %1554 = load ptr, ptr %arg1.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, ptr %1554, i64 8
  %1555 = load i32, ptr %arrayidx163, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1184, ptr noundef %x1185, i32 noundef %1553, i32 noundef %1555)
  %1556 = load i32, ptr %x8, align 4
  %1557 = load ptr, ptr %arg1.addr, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %1557, i64 7
  %1558 = load i32, ptr %arrayidx164, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1186, ptr noundef %x1187, i32 noundef %1556, i32 noundef %1558)
  %1559 = load i32, ptr %x8, align 4
  %1560 = load ptr, ptr %arg1.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, ptr %1560, i64 6
  %1561 = load i32, ptr %arrayidx165, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1188, ptr noundef %x1189, i32 noundef %1559, i32 noundef %1561)
  %1562 = load i32, ptr %x8, align 4
  %1563 = load ptr, ptr %arg1.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %1563, i64 5
  %1564 = load i32, ptr %arrayidx166, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1190, ptr noundef %x1191, i32 noundef %1562, i32 noundef %1564)
  %1565 = load i32, ptr %x8, align 4
  %1566 = load ptr, ptr %arg1.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, ptr %1566, i64 4
  %1567 = load i32, ptr %arrayidx167, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1192, ptr noundef %x1193, i32 noundef %1565, i32 noundef %1567)
  %1568 = load i32, ptr %x8, align 4
  %1569 = load ptr, ptr %arg1.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %1569, i64 3
  %1570 = load i32, ptr %arrayidx168, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1194, ptr noundef %x1195, i32 noundef %1568, i32 noundef %1570)
  %1571 = load i32, ptr %x8, align 4
  %1572 = load ptr, ptr %arg1.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, ptr %1572, i64 2
  %1573 = load i32, ptr %arrayidx169, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1196, ptr noundef %x1197, i32 noundef %1571, i32 noundef %1573)
  %1574 = load i32, ptr %x8, align 4
  %1575 = load ptr, ptr %arg1.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %1575, i64 1
  %1576 = load i32, ptr %arrayidx170, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1198, ptr noundef %x1199, i32 noundef %1574, i32 noundef %1576)
  %1577 = load i32, ptr %x8, align 4
  %1578 = load ptr, ptr %arg1.addr, align 8
  %arrayidx171 = getelementptr inbounds i32, ptr %1578, i64 0
  %1579 = load i32, ptr %arrayidx171, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1200, ptr noundef %x1201, i32 noundef %1577, i32 noundef %1579)
  %1580 = load i32, ptr %x1201, align 4
  %1581 = load i32, ptr %x1198, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1202, ptr noundef %x1203, i8 noundef zeroext 0, i32 noundef %1580, i32 noundef %1581)
  %1582 = load i8, ptr %x1203, align 1
  %1583 = load i32, ptr %x1199, align 4
  %1584 = load i32, ptr %x1196, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1204, ptr noundef %x1205, i8 noundef zeroext %1582, i32 noundef %1583, i32 noundef %1584)
  %1585 = load i8, ptr %x1205, align 1
  %1586 = load i32, ptr %x1197, align 4
  %1587 = load i32, ptr %x1194, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1206, ptr noundef %x1207, i8 noundef zeroext %1585, i32 noundef %1586, i32 noundef %1587)
  %1588 = load i8, ptr %x1207, align 1
  %1589 = load i32, ptr %x1195, align 4
  %1590 = load i32, ptr %x1192, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1208, ptr noundef %x1209, i8 noundef zeroext %1588, i32 noundef %1589, i32 noundef %1590)
  %1591 = load i8, ptr %x1209, align 1
  %1592 = load i32, ptr %x1193, align 4
  %1593 = load i32, ptr %x1190, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1210, ptr noundef %x1211, i8 noundef zeroext %1591, i32 noundef %1592, i32 noundef %1593)
  %1594 = load i8, ptr %x1211, align 1
  %1595 = load i32, ptr %x1191, align 4
  %1596 = load i32, ptr %x1188, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1212, ptr noundef %x1213, i8 noundef zeroext %1594, i32 noundef %1595, i32 noundef %1596)
  %1597 = load i8, ptr %x1213, align 1
  %1598 = load i32, ptr %x1189, align 4
  %1599 = load i32, ptr %x1186, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1214, ptr noundef %x1215, i8 noundef zeroext %1597, i32 noundef %1598, i32 noundef %1599)
  %1600 = load i8, ptr %x1215, align 1
  %1601 = load i32, ptr %x1187, align 4
  %1602 = load i32, ptr %x1184, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1216, ptr noundef %x1217, i8 noundef zeroext %1600, i32 noundef %1601, i32 noundef %1602)
  %1603 = load i8, ptr %x1217, align 1
  %1604 = load i32, ptr %x1185, align 4
  %1605 = load i32, ptr %x1182, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1218, ptr noundef %x1219, i8 noundef zeroext %1603, i32 noundef %1604, i32 noundef %1605)
  %1606 = load i8, ptr %x1219, align 1
  %1607 = load i32, ptr %x1183, align 4
  %1608 = load i32, ptr %x1180, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1220, ptr noundef %x1221, i8 noundef zeroext %1606, i32 noundef %1607, i32 noundef %1608)
  %1609 = load i8, ptr %x1221, align 1
  %1610 = load i32, ptr %x1181, align 4
  %1611 = load i32, ptr %x1178, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1222, ptr noundef %x1223, i8 noundef zeroext %1609, i32 noundef %1610, i32 noundef %1611)
  %1612 = load i8, ptr %x1223, align 1
  %conv172 = zext i8 %1612 to i32
  %1613 = load i32, ptr %x1179, align 4
  %add173 = add i32 %conv172, %1613
  store i32 %add173, ptr %x1224, align 4
  %1614 = load i32, ptr %x1153, align 4
  %1615 = load i32, ptr %x1200, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1225, ptr noundef %x1226, i8 noundef zeroext 0, i32 noundef %1614, i32 noundef %1615)
  %1616 = load i8, ptr %x1226, align 1
  %1617 = load i32, ptr %x1155, align 4
  %1618 = load i32, ptr %x1202, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1227, ptr noundef %x1228, i8 noundef zeroext %1616, i32 noundef %1617, i32 noundef %1618)
  %1619 = load i8, ptr %x1228, align 1
  %1620 = load i32, ptr %x1157, align 4
  %1621 = load i32, ptr %x1204, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1229, ptr noundef %x1230, i8 noundef zeroext %1619, i32 noundef %1620, i32 noundef %1621)
  %1622 = load i8, ptr %x1230, align 1
  %1623 = load i32, ptr %x1159, align 4
  %1624 = load i32, ptr %x1206, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1231, ptr noundef %x1232, i8 noundef zeroext %1622, i32 noundef %1623, i32 noundef %1624)
  %1625 = load i8, ptr %x1232, align 1
  %1626 = load i32, ptr %x1161, align 4
  %1627 = load i32, ptr %x1208, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1233, ptr noundef %x1234, i8 noundef zeroext %1625, i32 noundef %1626, i32 noundef %1627)
  %1628 = load i8, ptr %x1234, align 1
  %1629 = load i32, ptr %x1163, align 4
  %1630 = load i32, ptr %x1210, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1235, ptr noundef %x1236, i8 noundef zeroext %1628, i32 noundef %1629, i32 noundef %1630)
  %1631 = load i8, ptr %x1236, align 1
  %1632 = load i32, ptr %x1165, align 4
  %1633 = load i32, ptr %x1212, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1237, ptr noundef %x1238, i8 noundef zeroext %1631, i32 noundef %1632, i32 noundef %1633)
  %1634 = load i8, ptr %x1238, align 1
  %1635 = load i32, ptr %x1167, align 4
  %1636 = load i32, ptr %x1214, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1239, ptr noundef %x1240, i8 noundef zeroext %1634, i32 noundef %1635, i32 noundef %1636)
  %1637 = load i8, ptr %x1240, align 1
  %1638 = load i32, ptr %x1169, align 4
  %1639 = load i32, ptr %x1216, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1241, ptr noundef %x1242, i8 noundef zeroext %1637, i32 noundef %1638, i32 noundef %1639)
  %1640 = load i8, ptr %x1242, align 1
  %1641 = load i32, ptr %x1171, align 4
  %1642 = load i32, ptr %x1218, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1243, ptr noundef %x1244, i8 noundef zeroext %1640, i32 noundef %1641, i32 noundef %1642)
  %1643 = load i8, ptr %x1244, align 1
  %1644 = load i32, ptr %x1173, align 4
  %1645 = load i32, ptr %x1220, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1245, ptr noundef %x1246, i8 noundef zeroext %1643, i32 noundef %1644, i32 noundef %1645)
  %1646 = load i8, ptr %x1246, align 1
  %1647 = load i32, ptr %x1175, align 4
  %1648 = load i32, ptr %x1222, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1247, ptr noundef %x1248, i8 noundef zeroext %1646, i32 noundef %1647, i32 noundef %1648)
  %1649 = load i8, ptr %x1248, align 1
  %1650 = load i32, ptr %x1177, align 4
  %1651 = load i32, ptr %x1224, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1249, ptr noundef %x1250, i8 noundef zeroext %1649, i32 noundef %1650, i32 noundef %1651)
  %1652 = load i32, ptr %x1225, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1251, ptr noundef %x1252, i32 noundef %1652, i32 noundef -393225147)
  %1653 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1253, ptr noundef %x1254, i32 noundef %1653, i32 noundef -1)
  %1654 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1255, ptr noundef %x1256, i32 noundef %1654, i32 noundef -1)
  %1655 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1257, ptr noundef %x1258, i32 noundef %1655, i32 noundef -1)
  %1656 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1259, ptr noundef %x1260, i32 noundef %1656, i32 noundef -1)
  %1657 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1261, ptr noundef %x1262, i32 noundef %1657, i32 noundef -1)
  %1658 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1263, ptr noundef %x1264, i32 noundef %1658, i32 noundef -1)
  %1659 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1265, ptr noundef %x1266, i32 noundef %1659, i32 noundef -949793407)
  %1660 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1267, ptr noundef %x1268, i32 noundef %1660, i32 noundef -197710369)
  %1661 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1269, ptr noundef %x1270, i32 noundef %1661, i32 noundef 1478102450)
  %1662 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1271, ptr noundef %x1272, i32 noundef %1662, i32 noundef 1219536762)
  %1663 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1273, ptr noundef %x1274, i32 noundef %1663, i32 noundef -320071318)
  %1664 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1275, ptr noundef %x1276, i32 noundef %1664, i32 noundef -859494029)
  %1665 = load i32, ptr %x1276, align 4
  %1666 = load i32, ptr %x1273, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1277, ptr noundef %x1278, i8 noundef zeroext 0, i32 noundef %1665, i32 noundef %1666)
  %1667 = load i8, ptr %x1278, align 1
  %1668 = load i32, ptr %x1274, align 4
  %1669 = load i32, ptr %x1271, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1279, ptr noundef %x1280, i8 noundef zeroext %1667, i32 noundef %1668, i32 noundef %1669)
  %1670 = load i8, ptr %x1280, align 1
  %1671 = load i32, ptr %x1272, align 4
  %1672 = load i32, ptr %x1269, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1281, ptr noundef %x1282, i8 noundef zeroext %1670, i32 noundef %1671, i32 noundef %1672)
  %1673 = load i8, ptr %x1282, align 1
  %1674 = load i32, ptr %x1270, align 4
  %1675 = load i32, ptr %x1267, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1283, ptr noundef %x1284, i8 noundef zeroext %1673, i32 noundef %1674, i32 noundef %1675)
  %1676 = load i8, ptr %x1284, align 1
  %1677 = load i32, ptr %x1268, align 4
  %1678 = load i32, ptr %x1265, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1285, ptr noundef %x1286, i8 noundef zeroext %1676, i32 noundef %1677, i32 noundef %1678)
  %1679 = load i8, ptr %x1286, align 1
  %1680 = load i32, ptr %x1266, align 4
  %1681 = load i32, ptr %x1263, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1287, ptr noundef %x1288, i8 noundef zeroext %1679, i32 noundef %1680, i32 noundef %1681)
  %1682 = load i8, ptr %x1288, align 1
  %1683 = load i32, ptr %x1264, align 4
  %1684 = load i32, ptr %x1261, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1289, ptr noundef %x1290, i8 noundef zeroext %1682, i32 noundef %1683, i32 noundef %1684)
  %1685 = load i8, ptr %x1290, align 1
  %1686 = load i32, ptr %x1262, align 4
  %1687 = load i32, ptr %x1259, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1291, ptr noundef %x1292, i8 noundef zeroext %1685, i32 noundef %1686, i32 noundef %1687)
  %1688 = load i8, ptr %x1292, align 1
  %1689 = load i32, ptr %x1260, align 4
  %1690 = load i32, ptr %x1257, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1293, ptr noundef %x1294, i8 noundef zeroext %1688, i32 noundef %1689, i32 noundef %1690)
  %1691 = load i8, ptr %x1294, align 1
  %1692 = load i32, ptr %x1258, align 4
  %1693 = load i32, ptr %x1255, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1295, ptr noundef %x1296, i8 noundef zeroext %1691, i32 noundef %1692, i32 noundef %1693)
  %1694 = load i8, ptr %x1296, align 1
  %1695 = load i32, ptr %x1256, align 4
  %1696 = load i32, ptr %x1253, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1297, ptr noundef %x1298, i8 noundef zeroext %1694, i32 noundef %1695, i32 noundef %1696)
  %1697 = load i8, ptr %x1298, align 1
  %conv174 = zext i8 %1697 to i32
  %1698 = load i32, ptr %x1254, align 4
  %add175 = add i32 %conv174, %1698
  store i32 %add175, ptr %x1299, align 4
  %1699 = load i32, ptr %x1225, align 4
  %1700 = load i32, ptr %x1275, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1300, ptr noundef %x1301, i8 noundef zeroext 0, i32 noundef %1699, i32 noundef %1700)
  %1701 = load i8, ptr %x1301, align 1
  %1702 = load i32, ptr %x1227, align 4
  %1703 = load i32, ptr %x1277, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1302, ptr noundef %x1303, i8 noundef zeroext %1701, i32 noundef %1702, i32 noundef %1703)
  %1704 = load i8, ptr %x1303, align 1
  %1705 = load i32, ptr %x1229, align 4
  %1706 = load i32, ptr %x1279, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1304, ptr noundef %x1305, i8 noundef zeroext %1704, i32 noundef %1705, i32 noundef %1706)
  %1707 = load i8, ptr %x1305, align 1
  %1708 = load i32, ptr %x1231, align 4
  %1709 = load i32, ptr %x1281, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1306, ptr noundef %x1307, i8 noundef zeroext %1707, i32 noundef %1708, i32 noundef %1709)
  %1710 = load i8, ptr %x1307, align 1
  %1711 = load i32, ptr %x1233, align 4
  %1712 = load i32, ptr %x1283, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1308, ptr noundef %x1309, i8 noundef zeroext %1710, i32 noundef %1711, i32 noundef %1712)
  %1713 = load i8, ptr %x1309, align 1
  %1714 = load i32, ptr %x1235, align 4
  %1715 = load i32, ptr %x1285, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1310, ptr noundef %x1311, i8 noundef zeroext %1713, i32 noundef %1714, i32 noundef %1715)
  %1716 = load i8, ptr %x1311, align 1
  %1717 = load i32, ptr %x1237, align 4
  %1718 = load i32, ptr %x1287, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1312, ptr noundef %x1313, i8 noundef zeroext %1716, i32 noundef %1717, i32 noundef %1718)
  %1719 = load i8, ptr %x1313, align 1
  %1720 = load i32, ptr %x1239, align 4
  %1721 = load i32, ptr %x1289, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1314, ptr noundef %x1315, i8 noundef zeroext %1719, i32 noundef %1720, i32 noundef %1721)
  %1722 = load i8, ptr %x1315, align 1
  %1723 = load i32, ptr %x1241, align 4
  %1724 = load i32, ptr %x1291, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1316, ptr noundef %x1317, i8 noundef zeroext %1722, i32 noundef %1723, i32 noundef %1724)
  %1725 = load i8, ptr %x1317, align 1
  %1726 = load i32, ptr %x1243, align 4
  %1727 = load i32, ptr %x1293, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1318, ptr noundef %x1319, i8 noundef zeroext %1725, i32 noundef %1726, i32 noundef %1727)
  %1728 = load i8, ptr %x1319, align 1
  %1729 = load i32, ptr %x1245, align 4
  %1730 = load i32, ptr %x1295, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1320, ptr noundef %x1321, i8 noundef zeroext %1728, i32 noundef %1729, i32 noundef %1730)
  %1731 = load i8, ptr %x1321, align 1
  %1732 = load i32, ptr %x1247, align 4
  %1733 = load i32, ptr %x1297, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1322, ptr noundef %x1323, i8 noundef zeroext %1731, i32 noundef %1732, i32 noundef %1733)
  %1734 = load i8, ptr %x1323, align 1
  %1735 = load i32, ptr %x1249, align 4
  %1736 = load i32, ptr %x1299, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1324, ptr noundef %x1325, i8 noundef zeroext %1734, i32 noundef %1735, i32 noundef %1736)
  %1737 = load i8, ptr %x1325, align 1
  %conv176 = zext i8 %1737 to i32
  %1738 = load i8, ptr %x1250, align 1
  %conv177 = zext i8 %1738 to i32
  %add178 = add i32 %conv176, %conv177
  store i32 %add178, ptr %x1326, align 4
  %1739 = load i32, ptr %x9, align 4
  %1740 = load ptr, ptr %arg1.addr, align 8
  %arrayidx179 = getelementptr inbounds i32, ptr %1740, i64 11
  %1741 = load i32, ptr %arrayidx179, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1327, ptr noundef %x1328, i32 noundef %1739, i32 noundef %1741)
  %1742 = load i32, ptr %x9, align 4
  %1743 = load ptr, ptr %arg1.addr, align 8
  %arrayidx180 = getelementptr inbounds i32, ptr %1743, i64 10
  %1744 = load i32, ptr %arrayidx180, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1329, ptr noundef %x1330, i32 noundef %1742, i32 noundef %1744)
  %1745 = load i32, ptr %x9, align 4
  %1746 = load ptr, ptr %arg1.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %1746, i64 9
  %1747 = load i32, ptr %arrayidx181, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1331, ptr noundef %x1332, i32 noundef %1745, i32 noundef %1747)
  %1748 = load i32, ptr %x9, align 4
  %1749 = load ptr, ptr %arg1.addr, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %1749, i64 8
  %1750 = load i32, ptr %arrayidx182, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1333, ptr noundef %x1334, i32 noundef %1748, i32 noundef %1750)
  %1751 = load i32, ptr %x9, align 4
  %1752 = load ptr, ptr %arg1.addr, align 8
  %arrayidx183 = getelementptr inbounds i32, ptr %1752, i64 7
  %1753 = load i32, ptr %arrayidx183, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1335, ptr noundef %x1336, i32 noundef %1751, i32 noundef %1753)
  %1754 = load i32, ptr %x9, align 4
  %1755 = load ptr, ptr %arg1.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %1755, i64 6
  %1756 = load i32, ptr %arrayidx184, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1337, ptr noundef %x1338, i32 noundef %1754, i32 noundef %1756)
  %1757 = load i32, ptr %x9, align 4
  %1758 = load ptr, ptr %arg1.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, ptr %1758, i64 5
  %1759 = load i32, ptr %arrayidx185, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1339, ptr noundef %x1340, i32 noundef %1757, i32 noundef %1759)
  %1760 = load i32, ptr %x9, align 4
  %1761 = load ptr, ptr %arg1.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %1761, i64 4
  %1762 = load i32, ptr %arrayidx186, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1341, ptr noundef %x1342, i32 noundef %1760, i32 noundef %1762)
  %1763 = load i32, ptr %x9, align 4
  %1764 = load ptr, ptr %arg1.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, ptr %1764, i64 3
  %1765 = load i32, ptr %arrayidx187, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1343, ptr noundef %x1344, i32 noundef %1763, i32 noundef %1765)
  %1766 = load i32, ptr %x9, align 4
  %1767 = load ptr, ptr %arg1.addr, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %1767, i64 2
  %1768 = load i32, ptr %arrayidx188, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1345, ptr noundef %x1346, i32 noundef %1766, i32 noundef %1768)
  %1769 = load i32, ptr %x9, align 4
  %1770 = load ptr, ptr %arg1.addr, align 8
  %arrayidx189 = getelementptr inbounds i32, ptr %1770, i64 1
  %1771 = load i32, ptr %arrayidx189, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1347, ptr noundef %x1348, i32 noundef %1769, i32 noundef %1771)
  %1772 = load i32, ptr %x9, align 4
  %1773 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %1773, i64 0
  %1774 = load i32, ptr %arrayidx190, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1349, ptr noundef %x1350, i32 noundef %1772, i32 noundef %1774)
  %1775 = load i32, ptr %x1350, align 4
  %1776 = load i32, ptr %x1347, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1351, ptr noundef %x1352, i8 noundef zeroext 0, i32 noundef %1775, i32 noundef %1776)
  %1777 = load i8, ptr %x1352, align 1
  %1778 = load i32, ptr %x1348, align 4
  %1779 = load i32, ptr %x1345, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1353, ptr noundef %x1354, i8 noundef zeroext %1777, i32 noundef %1778, i32 noundef %1779)
  %1780 = load i8, ptr %x1354, align 1
  %1781 = load i32, ptr %x1346, align 4
  %1782 = load i32, ptr %x1343, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1355, ptr noundef %x1356, i8 noundef zeroext %1780, i32 noundef %1781, i32 noundef %1782)
  %1783 = load i8, ptr %x1356, align 1
  %1784 = load i32, ptr %x1344, align 4
  %1785 = load i32, ptr %x1341, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1357, ptr noundef %x1358, i8 noundef zeroext %1783, i32 noundef %1784, i32 noundef %1785)
  %1786 = load i8, ptr %x1358, align 1
  %1787 = load i32, ptr %x1342, align 4
  %1788 = load i32, ptr %x1339, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1359, ptr noundef %x1360, i8 noundef zeroext %1786, i32 noundef %1787, i32 noundef %1788)
  %1789 = load i8, ptr %x1360, align 1
  %1790 = load i32, ptr %x1340, align 4
  %1791 = load i32, ptr %x1337, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1361, ptr noundef %x1362, i8 noundef zeroext %1789, i32 noundef %1790, i32 noundef %1791)
  %1792 = load i8, ptr %x1362, align 1
  %1793 = load i32, ptr %x1338, align 4
  %1794 = load i32, ptr %x1335, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1363, ptr noundef %x1364, i8 noundef zeroext %1792, i32 noundef %1793, i32 noundef %1794)
  %1795 = load i8, ptr %x1364, align 1
  %1796 = load i32, ptr %x1336, align 4
  %1797 = load i32, ptr %x1333, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1365, ptr noundef %x1366, i8 noundef zeroext %1795, i32 noundef %1796, i32 noundef %1797)
  %1798 = load i8, ptr %x1366, align 1
  %1799 = load i32, ptr %x1334, align 4
  %1800 = load i32, ptr %x1331, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1367, ptr noundef %x1368, i8 noundef zeroext %1798, i32 noundef %1799, i32 noundef %1800)
  %1801 = load i8, ptr %x1368, align 1
  %1802 = load i32, ptr %x1332, align 4
  %1803 = load i32, ptr %x1329, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1369, ptr noundef %x1370, i8 noundef zeroext %1801, i32 noundef %1802, i32 noundef %1803)
  %1804 = load i8, ptr %x1370, align 1
  %1805 = load i32, ptr %x1330, align 4
  %1806 = load i32, ptr %x1327, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1371, ptr noundef %x1372, i8 noundef zeroext %1804, i32 noundef %1805, i32 noundef %1806)
  %1807 = load i8, ptr %x1372, align 1
  %conv191 = zext i8 %1807 to i32
  %1808 = load i32, ptr %x1328, align 4
  %add192 = add i32 %conv191, %1808
  store i32 %add192, ptr %x1373, align 4
  %1809 = load i32, ptr %x1302, align 4
  %1810 = load i32, ptr %x1349, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1374, ptr noundef %x1375, i8 noundef zeroext 0, i32 noundef %1809, i32 noundef %1810)
  %1811 = load i8, ptr %x1375, align 1
  %1812 = load i32, ptr %x1304, align 4
  %1813 = load i32, ptr %x1351, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1376, ptr noundef %x1377, i8 noundef zeroext %1811, i32 noundef %1812, i32 noundef %1813)
  %1814 = load i8, ptr %x1377, align 1
  %1815 = load i32, ptr %x1306, align 4
  %1816 = load i32, ptr %x1353, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1378, ptr noundef %x1379, i8 noundef zeroext %1814, i32 noundef %1815, i32 noundef %1816)
  %1817 = load i8, ptr %x1379, align 1
  %1818 = load i32, ptr %x1308, align 4
  %1819 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1380, ptr noundef %x1381, i8 noundef zeroext %1817, i32 noundef %1818, i32 noundef %1819)
  %1820 = load i8, ptr %x1381, align 1
  %1821 = load i32, ptr %x1310, align 4
  %1822 = load i32, ptr %x1357, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1382, ptr noundef %x1383, i8 noundef zeroext %1820, i32 noundef %1821, i32 noundef %1822)
  %1823 = load i8, ptr %x1383, align 1
  %1824 = load i32, ptr %x1312, align 4
  %1825 = load i32, ptr %x1359, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1384, ptr noundef %x1385, i8 noundef zeroext %1823, i32 noundef %1824, i32 noundef %1825)
  %1826 = load i8, ptr %x1385, align 1
  %1827 = load i32, ptr %x1314, align 4
  %1828 = load i32, ptr %x1361, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1386, ptr noundef %x1387, i8 noundef zeroext %1826, i32 noundef %1827, i32 noundef %1828)
  %1829 = load i8, ptr %x1387, align 1
  %1830 = load i32, ptr %x1316, align 4
  %1831 = load i32, ptr %x1363, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1388, ptr noundef %x1389, i8 noundef zeroext %1829, i32 noundef %1830, i32 noundef %1831)
  %1832 = load i8, ptr %x1389, align 1
  %1833 = load i32, ptr %x1318, align 4
  %1834 = load i32, ptr %x1365, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1390, ptr noundef %x1391, i8 noundef zeroext %1832, i32 noundef %1833, i32 noundef %1834)
  %1835 = load i8, ptr %x1391, align 1
  %1836 = load i32, ptr %x1320, align 4
  %1837 = load i32, ptr %x1367, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1392, ptr noundef %x1393, i8 noundef zeroext %1835, i32 noundef %1836, i32 noundef %1837)
  %1838 = load i8, ptr %x1393, align 1
  %1839 = load i32, ptr %x1322, align 4
  %1840 = load i32, ptr %x1369, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1394, ptr noundef %x1395, i8 noundef zeroext %1838, i32 noundef %1839, i32 noundef %1840)
  %1841 = load i8, ptr %x1395, align 1
  %1842 = load i32, ptr %x1324, align 4
  %1843 = load i32, ptr %x1371, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1396, ptr noundef %x1397, i8 noundef zeroext %1841, i32 noundef %1842, i32 noundef %1843)
  %1844 = load i8, ptr %x1397, align 1
  %1845 = load i32, ptr %x1326, align 4
  %1846 = load i32, ptr %x1373, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1398, ptr noundef %x1399, i8 noundef zeroext %1844, i32 noundef %1845, i32 noundef %1846)
  %1847 = load i32, ptr %x1374, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1400, ptr noundef %x1401, i32 noundef %1847, i32 noundef -393225147)
  %1848 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1402, ptr noundef %x1403, i32 noundef %1848, i32 noundef -1)
  %1849 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1404, ptr noundef %x1405, i32 noundef %1849, i32 noundef -1)
  %1850 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1406, ptr noundef %x1407, i32 noundef %1850, i32 noundef -1)
  %1851 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1408, ptr noundef %x1409, i32 noundef %1851, i32 noundef -1)
  %1852 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1410, ptr noundef %x1411, i32 noundef %1852, i32 noundef -1)
  %1853 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1412, ptr noundef %x1413, i32 noundef %1853, i32 noundef -1)
  %1854 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1414, ptr noundef %x1415, i32 noundef %1854, i32 noundef -949793407)
  %1855 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1416, ptr noundef %x1417, i32 noundef %1855, i32 noundef -197710369)
  %1856 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1418, ptr noundef %x1419, i32 noundef %1856, i32 noundef 1478102450)
  %1857 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1420, ptr noundef %x1421, i32 noundef %1857, i32 noundef 1219536762)
  %1858 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1422, ptr noundef %x1423, i32 noundef %1858, i32 noundef -320071318)
  %1859 = load i32, ptr %x1400, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1424, ptr noundef %x1425, i32 noundef %1859, i32 noundef -859494029)
  %1860 = load i32, ptr %x1425, align 4
  %1861 = load i32, ptr %x1422, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1426, ptr noundef %x1427, i8 noundef zeroext 0, i32 noundef %1860, i32 noundef %1861)
  %1862 = load i8, ptr %x1427, align 1
  %1863 = load i32, ptr %x1423, align 4
  %1864 = load i32, ptr %x1420, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1428, ptr noundef %x1429, i8 noundef zeroext %1862, i32 noundef %1863, i32 noundef %1864)
  %1865 = load i8, ptr %x1429, align 1
  %1866 = load i32, ptr %x1421, align 4
  %1867 = load i32, ptr %x1418, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1430, ptr noundef %x1431, i8 noundef zeroext %1865, i32 noundef %1866, i32 noundef %1867)
  %1868 = load i8, ptr %x1431, align 1
  %1869 = load i32, ptr %x1419, align 4
  %1870 = load i32, ptr %x1416, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1432, ptr noundef %x1433, i8 noundef zeroext %1868, i32 noundef %1869, i32 noundef %1870)
  %1871 = load i8, ptr %x1433, align 1
  %1872 = load i32, ptr %x1417, align 4
  %1873 = load i32, ptr %x1414, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1434, ptr noundef %x1435, i8 noundef zeroext %1871, i32 noundef %1872, i32 noundef %1873)
  %1874 = load i8, ptr %x1435, align 1
  %1875 = load i32, ptr %x1415, align 4
  %1876 = load i32, ptr %x1412, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1436, ptr noundef %x1437, i8 noundef zeroext %1874, i32 noundef %1875, i32 noundef %1876)
  %1877 = load i8, ptr %x1437, align 1
  %1878 = load i32, ptr %x1413, align 4
  %1879 = load i32, ptr %x1410, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1438, ptr noundef %x1439, i8 noundef zeroext %1877, i32 noundef %1878, i32 noundef %1879)
  %1880 = load i8, ptr %x1439, align 1
  %1881 = load i32, ptr %x1411, align 4
  %1882 = load i32, ptr %x1408, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1440, ptr noundef %x1441, i8 noundef zeroext %1880, i32 noundef %1881, i32 noundef %1882)
  %1883 = load i8, ptr %x1441, align 1
  %1884 = load i32, ptr %x1409, align 4
  %1885 = load i32, ptr %x1406, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1442, ptr noundef %x1443, i8 noundef zeroext %1883, i32 noundef %1884, i32 noundef %1885)
  %1886 = load i8, ptr %x1443, align 1
  %1887 = load i32, ptr %x1407, align 4
  %1888 = load i32, ptr %x1404, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1444, ptr noundef %x1445, i8 noundef zeroext %1886, i32 noundef %1887, i32 noundef %1888)
  %1889 = load i8, ptr %x1445, align 1
  %1890 = load i32, ptr %x1405, align 4
  %1891 = load i32, ptr %x1402, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1446, ptr noundef %x1447, i8 noundef zeroext %1889, i32 noundef %1890, i32 noundef %1891)
  %1892 = load i8, ptr %x1447, align 1
  %conv193 = zext i8 %1892 to i32
  %1893 = load i32, ptr %x1403, align 4
  %add194 = add i32 %conv193, %1893
  store i32 %add194, ptr %x1448, align 4
  %1894 = load i32, ptr %x1374, align 4
  %1895 = load i32, ptr %x1424, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1449, ptr noundef %x1450, i8 noundef zeroext 0, i32 noundef %1894, i32 noundef %1895)
  %1896 = load i8, ptr %x1450, align 1
  %1897 = load i32, ptr %x1376, align 4
  %1898 = load i32, ptr %x1426, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1451, ptr noundef %x1452, i8 noundef zeroext %1896, i32 noundef %1897, i32 noundef %1898)
  %1899 = load i8, ptr %x1452, align 1
  %1900 = load i32, ptr %x1378, align 4
  %1901 = load i32, ptr %x1428, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1453, ptr noundef %x1454, i8 noundef zeroext %1899, i32 noundef %1900, i32 noundef %1901)
  %1902 = load i8, ptr %x1454, align 1
  %1903 = load i32, ptr %x1380, align 4
  %1904 = load i32, ptr %x1430, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1455, ptr noundef %x1456, i8 noundef zeroext %1902, i32 noundef %1903, i32 noundef %1904)
  %1905 = load i8, ptr %x1456, align 1
  %1906 = load i32, ptr %x1382, align 4
  %1907 = load i32, ptr %x1432, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1457, ptr noundef %x1458, i8 noundef zeroext %1905, i32 noundef %1906, i32 noundef %1907)
  %1908 = load i8, ptr %x1458, align 1
  %1909 = load i32, ptr %x1384, align 4
  %1910 = load i32, ptr %x1434, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1459, ptr noundef %x1460, i8 noundef zeroext %1908, i32 noundef %1909, i32 noundef %1910)
  %1911 = load i8, ptr %x1460, align 1
  %1912 = load i32, ptr %x1386, align 4
  %1913 = load i32, ptr %x1436, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1461, ptr noundef %x1462, i8 noundef zeroext %1911, i32 noundef %1912, i32 noundef %1913)
  %1914 = load i8, ptr %x1462, align 1
  %1915 = load i32, ptr %x1388, align 4
  %1916 = load i32, ptr %x1438, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1463, ptr noundef %x1464, i8 noundef zeroext %1914, i32 noundef %1915, i32 noundef %1916)
  %1917 = load i8, ptr %x1464, align 1
  %1918 = load i32, ptr %x1390, align 4
  %1919 = load i32, ptr %x1440, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1465, ptr noundef %x1466, i8 noundef zeroext %1917, i32 noundef %1918, i32 noundef %1919)
  %1920 = load i8, ptr %x1466, align 1
  %1921 = load i32, ptr %x1392, align 4
  %1922 = load i32, ptr %x1442, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1467, ptr noundef %x1468, i8 noundef zeroext %1920, i32 noundef %1921, i32 noundef %1922)
  %1923 = load i8, ptr %x1468, align 1
  %1924 = load i32, ptr %x1394, align 4
  %1925 = load i32, ptr %x1444, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1469, ptr noundef %x1470, i8 noundef zeroext %1923, i32 noundef %1924, i32 noundef %1925)
  %1926 = load i8, ptr %x1470, align 1
  %1927 = load i32, ptr %x1396, align 4
  %1928 = load i32, ptr %x1446, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1471, ptr noundef %x1472, i8 noundef zeroext %1926, i32 noundef %1927, i32 noundef %1928)
  %1929 = load i8, ptr %x1472, align 1
  %1930 = load i32, ptr %x1398, align 4
  %1931 = load i32, ptr %x1448, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1473, ptr noundef %x1474, i8 noundef zeroext %1929, i32 noundef %1930, i32 noundef %1931)
  %1932 = load i8, ptr %x1474, align 1
  %conv195 = zext i8 %1932 to i32
  %1933 = load i8, ptr %x1399, align 1
  %conv196 = zext i8 %1933 to i32
  %add197 = add i32 %conv195, %conv196
  store i32 %add197, ptr %x1475, align 4
  %1934 = load i32, ptr %x10, align 4
  %1935 = load ptr, ptr %arg1.addr, align 8
  %arrayidx198 = getelementptr inbounds i32, ptr %1935, i64 11
  %1936 = load i32, ptr %arrayidx198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1476, ptr noundef %x1477, i32 noundef %1934, i32 noundef %1936)
  %1937 = load i32, ptr %x10, align 4
  %1938 = load ptr, ptr %arg1.addr, align 8
  %arrayidx199 = getelementptr inbounds i32, ptr %1938, i64 10
  %1939 = load i32, ptr %arrayidx199, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1478, ptr noundef %x1479, i32 noundef %1937, i32 noundef %1939)
  %1940 = load i32, ptr %x10, align 4
  %1941 = load ptr, ptr %arg1.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, ptr %1941, i64 9
  %1942 = load i32, ptr %arrayidx200, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1480, ptr noundef %x1481, i32 noundef %1940, i32 noundef %1942)
  %1943 = load i32, ptr %x10, align 4
  %1944 = load ptr, ptr %arg1.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, ptr %1944, i64 8
  %1945 = load i32, ptr %arrayidx201, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1482, ptr noundef %x1483, i32 noundef %1943, i32 noundef %1945)
  %1946 = load i32, ptr %x10, align 4
  %1947 = load ptr, ptr %arg1.addr, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %1947, i64 7
  %1948 = load i32, ptr %arrayidx202, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1484, ptr noundef %x1485, i32 noundef %1946, i32 noundef %1948)
  %1949 = load i32, ptr %x10, align 4
  %1950 = load ptr, ptr %arg1.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, ptr %1950, i64 6
  %1951 = load i32, ptr %arrayidx203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1486, ptr noundef %x1487, i32 noundef %1949, i32 noundef %1951)
  %1952 = load i32, ptr %x10, align 4
  %1953 = load ptr, ptr %arg1.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %1953, i64 5
  %1954 = load i32, ptr %arrayidx204, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1488, ptr noundef %x1489, i32 noundef %1952, i32 noundef %1954)
  %1955 = load i32, ptr %x10, align 4
  %1956 = load ptr, ptr %arg1.addr, align 8
  %arrayidx205 = getelementptr inbounds i32, ptr %1956, i64 4
  %1957 = load i32, ptr %arrayidx205, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1490, ptr noundef %x1491, i32 noundef %1955, i32 noundef %1957)
  %1958 = load i32, ptr %x10, align 4
  %1959 = load ptr, ptr %arg1.addr, align 8
  %arrayidx206 = getelementptr inbounds i32, ptr %1959, i64 3
  %1960 = load i32, ptr %arrayidx206, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1492, ptr noundef %x1493, i32 noundef %1958, i32 noundef %1960)
  %1961 = load i32, ptr %x10, align 4
  %1962 = load ptr, ptr %arg1.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, ptr %1962, i64 2
  %1963 = load i32, ptr %arrayidx207, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1494, ptr noundef %x1495, i32 noundef %1961, i32 noundef %1963)
  %1964 = load i32, ptr %x10, align 4
  %1965 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %1965, i64 1
  %1966 = load i32, ptr %arrayidx208, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1496, ptr noundef %x1497, i32 noundef %1964, i32 noundef %1966)
  %1967 = load i32, ptr %x10, align 4
  %1968 = load ptr, ptr %arg1.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, ptr %1968, i64 0
  %1969 = load i32, ptr %arrayidx209, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1498, ptr noundef %x1499, i32 noundef %1967, i32 noundef %1969)
  %1970 = load i32, ptr %x1499, align 4
  %1971 = load i32, ptr %x1496, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1500, ptr noundef %x1501, i8 noundef zeroext 0, i32 noundef %1970, i32 noundef %1971)
  %1972 = load i8, ptr %x1501, align 1
  %1973 = load i32, ptr %x1497, align 4
  %1974 = load i32, ptr %x1494, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1502, ptr noundef %x1503, i8 noundef zeroext %1972, i32 noundef %1973, i32 noundef %1974)
  %1975 = load i8, ptr %x1503, align 1
  %1976 = load i32, ptr %x1495, align 4
  %1977 = load i32, ptr %x1492, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1504, ptr noundef %x1505, i8 noundef zeroext %1975, i32 noundef %1976, i32 noundef %1977)
  %1978 = load i8, ptr %x1505, align 1
  %1979 = load i32, ptr %x1493, align 4
  %1980 = load i32, ptr %x1490, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1506, ptr noundef %x1507, i8 noundef zeroext %1978, i32 noundef %1979, i32 noundef %1980)
  %1981 = load i8, ptr %x1507, align 1
  %1982 = load i32, ptr %x1491, align 4
  %1983 = load i32, ptr %x1488, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1508, ptr noundef %x1509, i8 noundef zeroext %1981, i32 noundef %1982, i32 noundef %1983)
  %1984 = load i8, ptr %x1509, align 1
  %1985 = load i32, ptr %x1489, align 4
  %1986 = load i32, ptr %x1486, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1510, ptr noundef %x1511, i8 noundef zeroext %1984, i32 noundef %1985, i32 noundef %1986)
  %1987 = load i8, ptr %x1511, align 1
  %1988 = load i32, ptr %x1487, align 4
  %1989 = load i32, ptr %x1484, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1512, ptr noundef %x1513, i8 noundef zeroext %1987, i32 noundef %1988, i32 noundef %1989)
  %1990 = load i8, ptr %x1513, align 1
  %1991 = load i32, ptr %x1485, align 4
  %1992 = load i32, ptr %x1482, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1514, ptr noundef %x1515, i8 noundef zeroext %1990, i32 noundef %1991, i32 noundef %1992)
  %1993 = load i8, ptr %x1515, align 1
  %1994 = load i32, ptr %x1483, align 4
  %1995 = load i32, ptr %x1480, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1516, ptr noundef %x1517, i8 noundef zeroext %1993, i32 noundef %1994, i32 noundef %1995)
  %1996 = load i8, ptr %x1517, align 1
  %1997 = load i32, ptr %x1481, align 4
  %1998 = load i32, ptr %x1478, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1518, ptr noundef %x1519, i8 noundef zeroext %1996, i32 noundef %1997, i32 noundef %1998)
  %1999 = load i8, ptr %x1519, align 1
  %2000 = load i32, ptr %x1479, align 4
  %2001 = load i32, ptr %x1476, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1520, ptr noundef %x1521, i8 noundef zeroext %1999, i32 noundef %2000, i32 noundef %2001)
  %2002 = load i8, ptr %x1521, align 1
  %conv210 = zext i8 %2002 to i32
  %2003 = load i32, ptr %x1477, align 4
  %add211 = add i32 %conv210, %2003
  store i32 %add211, ptr %x1522, align 4
  %2004 = load i32, ptr %x1451, align 4
  %2005 = load i32, ptr %x1498, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1523, ptr noundef %x1524, i8 noundef zeroext 0, i32 noundef %2004, i32 noundef %2005)
  %2006 = load i8, ptr %x1524, align 1
  %2007 = load i32, ptr %x1453, align 4
  %2008 = load i32, ptr %x1500, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1525, ptr noundef %x1526, i8 noundef zeroext %2006, i32 noundef %2007, i32 noundef %2008)
  %2009 = load i8, ptr %x1526, align 1
  %2010 = load i32, ptr %x1455, align 4
  %2011 = load i32, ptr %x1502, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1527, ptr noundef %x1528, i8 noundef zeroext %2009, i32 noundef %2010, i32 noundef %2011)
  %2012 = load i8, ptr %x1528, align 1
  %2013 = load i32, ptr %x1457, align 4
  %2014 = load i32, ptr %x1504, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1529, ptr noundef %x1530, i8 noundef zeroext %2012, i32 noundef %2013, i32 noundef %2014)
  %2015 = load i8, ptr %x1530, align 1
  %2016 = load i32, ptr %x1459, align 4
  %2017 = load i32, ptr %x1506, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1531, ptr noundef %x1532, i8 noundef zeroext %2015, i32 noundef %2016, i32 noundef %2017)
  %2018 = load i8, ptr %x1532, align 1
  %2019 = load i32, ptr %x1461, align 4
  %2020 = load i32, ptr %x1508, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1533, ptr noundef %x1534, i8 noundef zeroext %2018, i32 noundef %2019, i32 noundef %2020)
  %2021 = load i8, ptr %x1534, align 1
  %2022 = load i32, ptr %x1463, align 4
  %2023 = load i32, ptr %x1510, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1535, ptr noundef %x1536, i8 noundef zeroext %2021, i32 noundef %2022, i32 noundef %2023)
  %2024 = load i8, ptr %x1536, align 1
  %2025 = load i32, ptr %x1465, align 4
  %2026 = load i32, ptr %x1512, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1537, ptr noundef %x1538, i8 noundef zeroext %2024, i32 noundef %2025, i32 noundef %2026)
  %2027 = load i8, ptr %x1538, align 1
  %2028 = load i32, ptr %x1467, align 4
  %2029 = load i32, ptr %x1514, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1539, ptr noundef %x1540, i8 noundef zeroext %2027, i32 noundef %2028, i32 noundef %2029)
  %2030 = load i8, ptr %x1540, align 1
  %2031 = load i32, ptr %x1469, align 4
  %2032 = load i32, ptr %x1516, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1541, ptr noundef %x1542, i8 noundef zeroext %2030, i32 noundef %2031, i32 noundef %2032)
  %2033 = load i8, ptr %x1542, align 1
  %2034 = load i32, ptr %x1471, align 4
  %2035 = load i32, ptr %x1518, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1543, ptr noundef %x1544, i8 noundef zeroext %2033, i32 noundef %2034, i32 noundef %2035)
  %2036 = load i8, ptr %x1544, align 1
  %2037 = load i32, ptr %x1473, align 4
  %2038 = load i32, ptr %x1520, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1545, ptr noundef %x1546, i8 noundef zeroext %2036, i32 noundef %2037, i32 noundef %2038)
  %2039 = load i8, ptr %x1546, align 1
  %2040 = load i32, ptr %x1475, align 4
  %2041 = load i32, ptr %x1522, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1547, ptr noundef %x1548, i8 noundef zeroext %2039, i32 noundef %2040, i32 noundef %2041)
  %2042 = load i32, ptr %x1523, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1549, ptr noundef %x1550, i32 noundef %2042, i32 noundef -393225147)
  %2043 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1551, ptr noundef %x1552, i32 noundef %2043, i32 noundef -1)
  %2044 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1553, ptr noundef %x1554, i32 noundef %2044, i32 noundef -1)
  %2045 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1555, ptr noundef %x1556, i32 noundef %2045, i32 noundef -1)
  %2046 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1557, ptr noundef %x1558, i32 noundef %2046, i32 noundef -1)
  %2047 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1559, ptr noundef %x1560, i32 noundef %2047, i32 noundef -1)
  %2048 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1561, ptr noundef %x1562, i32 noundef %2048, i32 noundef -1)
  %2049 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1563, ptr noundef %x1564, i32 noundef %2049, i32 noundef -949793407)
  %2050 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1565, ptr noundef %x1566, i32 noundef %2050, i32 noundef -197710369)
  %2051 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1567, ptr noundef %x1568, i32 noundef %2051, i32 noundef 1478102450)
  %2052 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1569, ptr noundef %x1570, i32 noundef %2052, i32 noundef 1219536762)
  %2053 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1571, ptr noundef %x1572, i32 noundef %2053, i32 noundef -320071318)
  %2054 = load i32, ptr %x1549, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1573, ptr noundef %x1574, i32 noundef %2054, i32 noundef -859494029)
  %2055 = load i32, ptr %x1574, align 4
  %2056 = load i32, ptr %x1571, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1575, ptr noundef %x1576, i8 noundef zeroext 0, i32 noundef %2055, i32 noundef %2056)
  %2057 = load i8, ptr %x1576, align 1
  %2058 = load i32, ptr %x1572, align 4
  %2059 = load i32, ptr %x1569, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1577, ptr noundef %x1578, i8 noundef zeroext %2057, i32 noundef %2058, i32 noundef %2059)
  %2060 = load i8, ptr %x1578, align 1
  %2061 = load i32, ptr %x1570, align 4
  %2062 = load i32, ptr %x1567, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1579, ptr noundef %x1580, i8 noundef zeroext %2060, i32 noundef %2061, i32 noundef %2062)
  %2063 = load i8, ptr %x1580, align 1
  %2064 = load i32, ptr %x1568, align 4
  %2065 = load i32, ptr %x1565, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1581, ptr noundef %x1582, i8 noundef zeroext %2063, i32 noundef %2064, i32 noundef %2065)
  %2066 = load i8, ptr %x1582, align 1
  %2067 = load i32, ptr %x1566, align 4
  %2068 = load i32, ptr %x1563, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1583, ptr noundef %x1584, i8 noundef zeroext %2066, i32 noundef %2067, i32 noundef %2068)
  %2069 = load i8, ptr %x1584, align 1
  %2070 = load i32, ptr %x1564, align 4
  %2071 = load i32, ptr %x1561, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1585, ptr noundef %x1586, i8 noundef zeroext %2069, i32 noundef %2070, i32 noundef %2071)
  %2072 = load i8, ptr %x1586, align 1
  %2073 = load i32, ptr %x1562, align 4
  %2074 = load i32, ptr %x1559, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1587, ptr noundef %x1588, i8 noundef zeroext %2072, i32 noundef %2073, i32 noundef %2074)
  %2075 = load i8, ptr %x1588, align 1
  %2076 = load i32, ptr %x1560, align 4
  %2077 = load i32, ptr %x1557, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1589, ptr noundef %x1590, i8 noundef zeroext %2075, i32 noundef %2076, i32 noundef %2077)
  %2078 = load i8, ptr %x1590, align 1
  %2079 = load i32, ptr %x1558, align 4
  %2080 = load i32, ptr %x1555, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1591, ptr noundef %x1592, i8 noundef zeroext %2078, i32 noundef %2079, i32 noundef %2080)
  %2081 = load i8, ptr %x1592, align 1
  %2082 = load i32, ptr %x1556, align 4
  %2083 = load i32, ptr %x1553, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1593, ptr noundef %x1594, i8 noundef zeroext %2081, i32 noundef %2082, i32 noundef %2083)
  %2084 = load i8, ptr %x1594, align 1
  %2085 = load i32, ptr %x1554, align 4
  %2086 = load i32, ptr %x1551, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1595, ptr noundef %x1596, i8 noundef zeroext %2084, i32 noundef %2085, i32 noundef %2086)
  %2087 = load i8, ptr %x1596, align 1
  %conv212 = zext i8 %2087 to i32
  %2088 = load i32, ptr %x1552, align 4
  %add213 = add i32 %conv212, %2088
  store i32 %add213, ptr %x1597, align 4
  %2089 = load i32, ptr %x1523, align 4
  %2090 = load i32, ptr %x1573, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1598, ptr noundef %x1599, i8 noundef zeroext 0, i32 noundef %2089, i32 noundef %2090)
  %2091 = load i8, ptr %x1599, align 1
  %2092 = load i32, ptr %x1525, align 4
  %2093 = load i32, ptr %x1575, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1600, ptr noundef %x1601, i8 noundef zeroext %2091, i32 noundef %2092, i32 noundef %2093)
  %2094 = load i8, ptr %x1601, align 1
  %2095 = load i32, ptr %x1527, align 4
  %2096 = load i32, ptr %x1577, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1602, ptr noundef %x1603, i8 noundef zeroext %2094, i32 noundef %2095, i32 noundef %2096)
  %2097 = load i8, ptr %x1603, align 1
  %2098 = load i32, ptr %x1529, align 4
  %2099 = load i32, ptr %x1579, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1604, ptr noundef %x1605, i8 noundef zeroext %2097, i32 noundef %2098, i32 noundef %2099)
  %2100 = load i8, ptr %x1605, align 1
  %2101 = load i32, ptr %x1531, align 4
  %2102 = load i32, ptr %x1581, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1606, ptr noundef %x1607, i8 noundef zeroext %2100, i32 noundef %2101, i32 noundef %2102)
  %2103 = load i8, ptr %x1607, align 1
  %2104 = load i32, ptr %x1533, align 4
  %2105 = load i32, ptr %x1583, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1608, ptr noundef %x1609, i8 noundef zeroext %2103, i32 noundef %2104, i32 noundef %2105)
  %2106 = load i8, ptr %x1609, align 1
  %2107 = load i32, ptr %x1535, align 4
  %2108 = load i32, ptr %x1585, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1610, ptr noundef %x1611, i8 noundef zeroext %2106, i32 noundef %2107, i32 noundef %2108)
  %2109 = load i8, ptr %x1611, align 1
  %2110 = load i32, ptr %x1537, align 4
  %2111 = load i32, ptr %x1587, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1612, ptr noundef %x1613, i8 noundef zeroext %2109, i32 noundef %2110, i32 noundef %2111)
  %2112 = load i8, ptr %x1613, align 1
  %2113 = load i32, ptr %x1539, align 4
  %2114 = load i32, ptr %x1589, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1614, ptr noundef %x1615, i8 noundef zeroext %2112, i32 noundef %2113, i32 noundef %2114)
  %2115 = load i8, ptr %x1615, align 1
  %2116 = load i32, ptr %x1541, align 4
  %2117 = load i32, ptr %x1591, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1616, ptr noundef %x1617, i8 noundef zeroext %2115, i32 noundef %2116, i32 noundef %2117)
  %2118 = load i8, ptr %x1617, align 1
  %2119 = load i32, ptr %x1543, align 4
  %2120 = load i32, ptr %x1593, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1618, ptr noundef %x1619, i8 noundef zeroext %2118, i32 noundef %2119, i32 noundef %2120)
  %2121 = load i8, ptr %x1619, align 1
  %2122 = load i32, ptr %x1545, align 4
  %2123 = load i32, ptr %x1595, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1620, ptr noundef %x1621, i8 noundef zeroext %2121, i32 noundef %2122, i32 noundef %2123)
  %2124 = load i8, ptr %x1621, align 1
  %2125 = load i32, ptr %x1547, align 4
  %2126 = load i32, ptr %x1597, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1622, ptr noundef %x1623, i8 noundef zeroext %2124, i32 noundef %2125, i32 noundef %2126)
  %2127 = load i8, ptr %x1623, align 1
  %conv214 = zext i8 %2127 to i32
  %2128 = load i8, ptr %x1548, align 1
  %conv215 = zext i8 %2128 to i32
  %add216 = add i32 %conv214, %conv215
  store i32 %add216, ptr %x1624, align 4
  %2129 = load i32, ptr %x11, align 4
  %2130 = load ptr, ptr %arg1.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %2130, i64 11
  %2131 = load i32, ptr %arrayidx217, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1625, ptr noundef %x1626, i32 noundef %2129, i32 noundef %2131)
  %2132 = load i32, ptr %x11, align 4
  %2133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, ptr %2133, i64 10
  %2134 = load i32, ptr %arrayidx218, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1627, ptr noundef %x1628, i32 noundef %2132, i32 noundef %2134)
  %2135 = load i32, ptr %x11, align 4
  %2136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx219 = getelementptr inbounds i32, ptr %2136, i64 9
  %2137 = load i32, ptr %arrayidx219, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1629, ptr noundef %x1630, i32 noundef %2135, i32 noundef %2137)
  %2138 = load i32, ptr %x11, align 4
  %2139 = load ptr, ptr %arg1.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %2139, i64 8
  %2140 = load i32, ptr %arrayidx220, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1631, ptr noundef %x1632, i32 noundef %2138, i32 noundef %2140)
  %2141 = load i32, ptr %x11, align 4
  %2142 = load ptr, ptr %arg1.addr, align 8
  %arrayidx221 = getelementptr inbounds i32, ptr %2142, i64 7
  %2143 = load i32, ptr %arrayidx221, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1633, ptr noundef %x1634, i32 noundef %2141, i32 noundef %2143)
  %2144 = load i32, ptr %x11, align 4
  %2145 = load ptr, ptr %arg1.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %2145, i64 6
  %2146 = load i32, ptr %arrayidx222, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1635, ptr noundef %x1636, i32 noundef %2144, i32 noundef %2146)
  %2147 = load i32, ptr %x11, align 4
  %2148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, ptr %2148, i64 5
  %2149 = load i32, ptr %arrayidx223, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1637, ptr noundef %x1638, i32 noundef %2147, i32 noundef %2149)
  %2150 = load i32, ptr %x11, align 4
  %2151 = load ptr, ptr %arg1.addr, align 8
  %arrayidx224 = getelementptr inbounds i32, ptr %2151, i64 4
  %2152 = load i32, ptr %arrayidx224, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1639, ptr noundef %x1640, i32 noundef %2150, i32 noundef %2152)
  %2153 = load i32, ptr %x11, align 4
  %2154 = load ptr, ptr %arg1.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, ptr %2154, i64 3
  %2155 = load i32, ptr %arrayidx225, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1641, ptr noundef %x1642, i32 noundef %2153, i32 noundef %2155)
  %2156 = load i32, ptr %x11, align 4
  %2157 = load ptr, ptr %arg1.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, ptr %2157, i64 2
  %2158 = load i32, ptr %arrayidx226, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1643, ptr noundef %x1644, i32 noundef %2156, i32 noundef %2158)
  %2159 = load i32, ptr %x11, align 4
  %2160 = load ptr, ptr %arg1.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, ptr %2160, i64 1
  %2161 = load i32, ptr %arrayidx227, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1645, ptr noundef %x1646, i32 noundef %2159, i32 noundef %2161)
  %2162 = load i32, ptr %x11, align 4
  %2163 = load ptr, ptr %arg1.addr, align 8
  %arrayidx228 = getelementptr inbounds i32, ptr %2163, i64 0
  %2164 = load i32, ptr %arrayidx228, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1647, ptr noundef %x1648, i32 noundef %2162, i32 noundef %2164)
  %2165 = load i32, ptr %x1648, align 4
  %2166 = load i32, ptr %x1645, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1649, ptr noundef %x1650, i8 noundef zeroext 0, i32 noundef %2165, i32 noundef %2166)
  %2167 = load i8, ptr %x1650, align 1
  %2168 = load i32, ptr %x1646, align 4
  %2169 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1651, ptr noundef %x1652, i8 noundef zeroext %2167, i32 noundef %2168, i32 noundef %2169)
  %2170 = load i8, ptr %x1652, align 1
  %2171 = load i32, ptr %x1644, align 4
  %2172 = load i32, ptr %x1641, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1653, ptr noundef %x1654, i8 noundef zeroext %2170, i32 noundef %2171, i32 noundef %2172)
  %2173 = load i8, ptr %x1654, align 1
  %2174 = load i32, ptr %x1642, align 4
  %2175 = load i32, ptr %x1639, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1655, ptr noundef %x1656, i8 noundef zeroext %2173, i32 noundef %2174, i32 noundef %2175)
  %2176 = load i8, ptr %x1656, align 1
  %2177 = load i32, ptr %x1640, align 4
  %2178 = load i32, ptr %x1637, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1657, ptr noundef %x1658, i8 noundef zeroext %2176, i32 noundef %2177, i32 noundef %2178)
  %2179 = load i8, ptr %x1658, align 1
  %2180 = load i32, ptr %x1638, align 4
  %2181 = load i32, ptr %x1635, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1659, ptr noundef %x1660, i8 noundef zeroext %2179, i32 noundef %2180, i32 noundef %2181)
  %2182 = load i8, ptr %x1660, align 1
  %2183 = load i32, ptr %x1636, align 4
  %2184 = load i32, ptr %x1633, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1661, ptr noundef %x1662, i8 noundef zeroext %2182, i32 noundef %2183, i32 noundef %2184)
  %2185 = load i8, ptr %x1662, align 1
  %2186 = load i32, ptr %x1634, align 4
  %2187 = load i32, ptr %x1631, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1663, ptr noundef %x1664, i8 noundef zeroext %2185, i32 noundef %2186, i32 noundef %2187)
  %2188 = load i8, ptr %x1664, align 1
  %2189 = load i32, ptr %x1632, align 4
  %2190 = load i32, ptr %x1629, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1665, ptr noundef %x1666, i8 noundef zeroext %2188, i32 noundef %2189, i32 noundef %2190)
  %2191 = load i8, ptr %x1666, align 1
  %2192 = load i32, ptr %x1630, align 4
  %2193 = load i32, ptr %x1627, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1667, ptr noundef %x1668, i8 noundef zeroext %2191, i32 noundef %2192, i32 noundef %2193)
  %2194 = load i8, ptr %x1668, align 1
  %2195 = load i32, ptr %x1628, align 4
  %2196 = load i32, ptr %x1625, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1669, ptr noundef %x1670, i8 noundef zeroext %2194, i32 noundef %2195, i32 noundef %2196)
  %2197 = load i8, ptr %x1670, align 1
  %conv229 = zext i8 %2197 to i32
  %2198 = load i32, ptr %x1626, align 4
  %add230 = add i32 %conv229, %2198
  store i32 %add230, ptr %x1671, align 4
  %2199 = load i32, ptr %x1600, align 4
  %2200 = load i32, ptr %x1647, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1672, ptr noundef %x1673, i8 noundef zeroext 0, i32 noundef %2199, i32 noundef %2200)
  %2201 = load i8, ptr %x1673, align 1
  %2202 = load i32, ptr %x1602, align 4
  %2203 = load i32, ptr %x1649, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1674, ptr noundef %x1675, i8 noundef zeroext %2201, i32 noundef %2202, i32 noundef %2203)
  %2204 = load i8, ptr %x1675, align 1
  %2205 = load i32, ptr %x1604, align 4
  %2206 = load i32, ptr %x1651, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1676, ptr noundef %x1677, i8 noundef zeroext %2204, i32 noundef %2205, i32 noundef %2206)
  %2207 = load i8, ptr %x1677, align 1
  %2208 = load i32, ptr %x1606, align 4
  %2209 = load i32, ptr %x1653, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1678, ptr noundef %x1679, i8 noundef zeroext %2207, i32 noundef %2208, i32 noundef %2209)
  %2210 = load i8, ptr %x1679, align 1
  %2211 = load i32, ptr %x1608, align 4
  %2212 = load i32, ptr %x1655, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1680, ptr noundef %x1681, i8 noundef zeroext %2210, i32 noundef %2211, i32 noundef %2212)
  %2213 = load i8, ptr %x1681, align 1
  %2214 = load i32, ptr %x1610, align 4
  %2215 = load i32, ptr %x1657, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1682, ptr noundef %x1683, i8 noundef zeroext %2213, i32 noundef %2214, i32 noundef %2215)
  %2216 = load i8, ptr %x1683, align 1
  %2217 = load i32, ptr %x1612, align 4
  %2218 = load i32, ptr %x1659, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1684, ptr noundef %x1685, i8 noundef zeroext %2216, i32 noundef %2217, i32 noundef %2218)
  %2219 = load i8, ptr %x1685, align 1
  %2220 = load i32, ptr %x1614, align 4
  %2221 = load i32, ptr %x1661, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1686, ptr noundef %x1687, i8 noundef zeroext %2219, i32 noundef %2220, i32 noundef %2221)
  %2222 = load i8, ptr %x1687, align 1
  %2223 = load i32, ptr %x1616, align 4
  %2224 = load i32, ptr %x1663, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1688, ptr noundef %x1689, i8 noundef zeroext %2222, i32 noundef %2223, i32 noundef %2224)
  %2225 = load i8, ptr %x1689, align 1
  %2226 = load i32, ptr %x1618, align 4
  %2227 = load i32, ptr %x1665, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1690, ptr noundef %x1691, i8 noundef zeroext %2225, i32 noundef %2226, i32 noundef %2227)
  %2228 = load i8, ptr %x1691, align 1
  %2229 = load i32, ptr %x1620, align 4
  %2230 = load i32, ptr %x1667, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1692, ptr noundef %x1693, i8 noundef zeroext %2228, i32 noundef %2229, i32 noundef %2230)
  %2231 = load i8, ptr %x1693, align 1
  %2232 = load i32, ptr %x1622, align 4
  %2233 = load i32, ptr %x1669, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1694, ptr noundef %x1695, i8 noundef zeroext %2231, i32 noundef %2232, i32 noundef %2233)
  %2234 = load i8, ptr %x1695, align 1
  %2235 = load i32, ptr %x1624, align 4
  %2236 = load i32, ptr %x1671, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1696, ptr noundef %x1697, i8 noundef zeroext %2234, i32 noundef %2235, i32 noundef %2236)
  %2237 = load i32, ptr %x1672, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1698, ptr noundef %x1699, i32 noundef %2237, i32 noundef -393225147)
  %2238 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1700, ptr noundef %x1701, i32 noundef %2238, i32 noundef -1)
  %2239 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1702, ptr noundef %x1703, i32 noundef %2239, i32 noundef -1)
  %2240 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1704, ptr noundef %x1705, i32 noundef %2240, i32 noundef -1)
  %2241 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1706, ptr noundef %x1707, i32 noundef %2241, i32 noundef -1)
  %2242 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1708, ptr noundef %x1709, i32 noundef %2242, i32 noundef -1)
  %2243 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1710, ptr noundef %x1711, i32 noundef %2243, i32 noundef -1)
  %2244 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1712, ptr noundef %x1713, i32 noundef %2244, i32 noundef -949793407)
  %2245 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1714, ptr noundef %x1715, i32 noundef %2245, i32 noundef -197710369)
  %2246 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1716, ptr noundef %x1717, i32 noundef %2246, i32 noundef 1478102450)
  %2247 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1718, ptr noundef %x1719, i32 noundef %2247, i32 noundef 1219536762)
  %2248 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1720, ptr noundef %x1721, i32 noundef %2248, i32 noundef -320071318)
  %2249 = load i32, ptr %x1698, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1722, ptr noundef %x1723, i32 noundef %2249, i32 noundef -859494029)
  %2250 = load i32, ptr %x1723, align 4
  %2251 = load i32, ptr %x1720, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1724, ptr noundef %x1725, i8 noundef zeroext 0, i32 noundef %2250, i32 noundef %2251)
  %2252 = load i8, ptr %x1725, align 1
  %2253 = load i32, ptr %x1721, align 4
  %2254 = load i32, ptr %x1718, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1726, ptr noundef %x1727, i8 noundef zeroext %2252, i32 noundef %2253, i32 noundef %2254)
  %2255 = load i8, ptr %x1727, align 1
  %2256 = load i32, ptr %x1719, align 4
  %2257 = load i32, ptr %x1716, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1728, ptr noundef %x1729, i8 noundef zeroext %2255, i32 noundef %2256, i32 noundef %2257)
  %2258 = load i8, ptr %x1729, align 1
  %2259 = load i32, ptr %x1717, align 4
  %2260 = load i32, ptr %x1714, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1730, ptr noundef %x1731, i8 noundef zeroext %2258, i32 noundef %2259, i32 noundef %2260)
  %2261 = load i8, ptr %x1731, align 1
  %2262 = load i32, ptr %x1715, align 4
  %2263 = load i32, ptr %x1712, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1732, ptr noundef %x1733, i8 noundef zeroext %2261, i32 noundef %2262, i32 noundef %2263)
  %2264 = load i8, ptr %x1733, align 1
  %2265 = load i32, ptr %x1713, align 4
  %2266 = load i32, ptr %x1710, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1734, ptr noundef %x1735, i8 noundef zeroext %2264, i32 noundef %2265, i32 noundef %2266)
  %2267 = load i8, ptr %x1735, align 1
  %2268 = load i32, ptr %x1711, align 4
  %2269 = load i32, ptr %x1708, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1736, ptr noundef %x1737, i8 noundef zeroext %2267, i32 noundef %2268, i32 noundef %2269)
  %2270 = load i8, ptr %x1737, align 1
  %2271 = load i32, ptr %x1709, align 4
  %2272 = load i32, ptr %x1706, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1738, ptr noundef %x1739, i8 noundef zeroext %2270, i32 noundef %2271, i32 noundef %2272)
  %2273 = load i8, ptr %x1739, align 1
  %2274 = load i32, ptr %x1707, align 4
  %2275 = load i32, ptr %x1704, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1740, ptr noundef %x1741, i8 noundef zeroext %2273, i32 noundef %2274, i32 noundef %2275)
  %2276 = load i8, ptr %x1741, align 1
  %2277 = load i32, ptr %x1705, align 4
  %2278 = load i32, ptr %x1702, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1742, ptr noundef %x1743, i8 noundef zeroext %2276, i32 noundef %2277, i32 noundef %2278)
  %2279 = load i8, ptr %x1743, align 1
  %2280 = load i32, ptr %x1703, align 4
  %2281 = load i32, ptr %x1700, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1744, ptr noundef %x1745, i8 noundef zeroext %2279, i32 noundef %2280, i32 noundef %2281)
  %2282 = load i8, ptr %x1745, align 1
  %conv231 = zext i8 %2282 to i32
  %2283 = load i32, ptr %x1701, align 4
  %add232 = add i32 %conv231, %2283
  store i32 %add232, ptr %x1746, align 4
  %2284 = load i32, ptr %x1672, align 4
  %2285 = load i32, ptr %x1722, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1747, ptr noundef %x1748, i8 noundef zeroext 0, i32 noundef %2284, i32 noundef %2285)
  %2286 = load i8, ptr %x1748, align 1
  %2287 = load i32, ptr %x1674, align 4
  %2288 = load i32, ptr %x1724, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1749, ptr noundef %x1750, i8 noundef zeroext %2286, i32 noundef %2287, i32 noundef %2288)
  %2289 = load i8, ptr %x1750, align 1
  %2290 = load i32, ptr %x1676, align 4
  %2291 = load i32, ptr %x1726, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1751, ptr noundef %x1752, i8 noundef zeroext %2289, i32 noundef %2290, i32 noundef %2291)
  %2292 = load i8, ptr %x1752, align 1
  %2293 = load i32, ptr %x1678, align 4
  %2294 = load i32, ptr %x1728, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1753, ptr noundef %x1754, i8 noundef zeroext %2292, i32 noundef %2293, i32 noundef %2294)
  %2295 = load i8, ptr %x1754, align 1
  %2296 = load i32, ptr %x1680, align 4
  %2297 = load i32, ptr %x1730, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1755, ptr noundef %x1756, i8 noundef zeroext %2295, i32 noundef %2296, i32 noundef %2297)
  %2298 = load i8, ptr %x1756, align 1
  %2299 = load i32, ptr %x1682, align 4
  %2300 = load i32, ptr %x1732, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1757, ptr noundef %x1758, i8 noundef zeroext %2298, i32 noundef %2299, i32 noundef %2300)
  %2301 = load i8, ptr %x1758, align 1
  %2302 = load i32, ptr %x1684, align 4
  %2303 = load i32, ptr %x1734, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1759, ptr noundef %x1760, i8 noundef zeroext %2301, i32 noundef %2302, i32 noundef %2303)
  %2304 = load i8, ptr %x1760, align 1
  %2305 = load i32, ptr %x1686, align 4
  %2306 = load i32, ptr %x1736, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1761, ptr noundef %x1762, i8 noundef zeroext %2304, i32 noundef %2305, i32 noundef %2306)
  %2307 = load i8, ptr %x1762, align 1
  %2308 = load i32, ptr %x1688, align 4
  %2309 = load i32, ptr %x1738, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1763, ptr noundef %x1764, i8 noundef zeroext %2307, i32 noundef %2308, i32 noundef %2309)
  %2310 = load i8, ptr %x1764, align 1
  %2311 = load i32, ptr %x1690, align 4
  %2312 = load i32, ptr %x1740, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1765, ptr noundef %x1766, i8 noundef zeroext %2310, i32 noundef %2311, i32 noundef %2312)
  %2313 = load i8, ptr %x1766, align 1
  %2314 = load i32, ptr %x1692, align 4
  %2315 = load i32, ptr %x1742, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1767, ptr noundef %x1768, i8 noundef zeroext %2313, i32 noundef %2314, i32 noundef %2315)
  %2316 = load i8, ptr %x1768, align 1
  %2317 = load i32, ptr %x1694, align 4
  %2318 = load i32, ptr %x1744, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1769, ptr noundef %x1770, i8 noundef zeroext %2316, i32 noundef %2317, i32 noundef %2318)
  %2319 = load i8, ptr %x1770, align 1
  %2320 = load i32, ptr %x1696, align 4
  %2321 = load i32, ptr %x1746, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1771, ptr noundef %x1772, i8 noundef zeroext %2319, i32 noundef %2320, i32 noundef %2321)
  %2322 = load i8, ptr %x1772, align 1
  %conv233 = zext i8 %2322 to i32
  %2323 = load i8, ptr %x1697, align 1
  %conv234 = zext i8 %2323 to i32
  %add235 = add i32 %conv233, %conv234
  store i32 %add235, ptr %x1773, align 4
  %2324 = load i32, ptr %x1749, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1774, ptr noundef %x1775, i8 noundef zeroext 0, i32 noundef %2324, i32 noundef -859494029)
  %2325 = load i8, ptr %x1775, align 1
  %2326 = load i32, ptr %x1751, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1776, ptr noundef %x1777, i8 noundef zeroext %2325, i32 noundef %2326, i32 noundef -320071318)
  %2327 = load i8, ptr %x1777, align 1
  %2328 = load i32, ptr %x1753, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1778, ptr noundef %x1779, i8 noundef zeroext %2327, i32 noundef %2328, i32 noundef 1219536762)
  %2329 = load i8, ptr %x1779, align 1
  %2330 = load i32, ptr %x1755, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1780, ptr noundef %x1781, i8 noundef zeroext %2329, i32 noundef %2330, i32 noundef 1478102450)
  %2331 = load i8, ptr %x1781, align 1
  %2332 = load i32, ptr %x1757, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1782, ptr noundef %x1783, i8 noundef zeroext %2331, i32 noundef %2332, i32 noundef -197710369)
  %2333 = load i8, ptr %x1783, align 1
  %2334 = load i32, ptr %x1759, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1784, ptr noundef %x1785, i8 noundef zeroext %2333, i32 noundef %2334, i32 noundef -949793407)
  %2335 = load i8, ptr %x1785, align 1
  %2336 = load i32, ptr %x1761, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1786, ptr noundef %x1787, i8 noundef zeroext %2335, i32 noundef %2336, i32 noundef -1)
  %2337 = load i8, ptr %x1787, align 1
  %2338 = load i32, ptr %x1763, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1788, ptr noundef %x1789, i8 noundef zeroext %2337, i32 noundef %2338, i32 noundef -1)
  %2339 = load i8, ptr %x1789, align 1
  %2340 = load i32, ptr %x1765, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1790, ptr noundef %x1791, i8 noundef zeroext %2339, i32 noundef %2340, i32 noundef -1)
  %2341 = load i8, ptr %x1791, align 1
  %2342 = load i32, ptr %x1767, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1792, ptr noundef %x1793, i8 noundef zeroext %2341, i32 noundef %2342, i32 noundef -1)
  %2343 = load i8, ptr %x1793, align 1
  %2344 = load i32, ptr %x1769, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1794, ptr noundef %x1795, i8 noundef zeroext %2343, i32 noundef %2344, i32 noundef -1)
  %2345 = load i8, ptr %x1795, align 1
  %2346 = load i32, ptr %x1771, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1796, ptr noundef %x1797, i8 noundef zeroext %2345, i32 noundef %2346, i32 noundef -1)
  %2347 = load i8, ptr %x1797, align 1
  %2348 = load i32, ptr %x1773, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1798, ptr noundef %x1799, i8 noundef zeroext %2347, i32 noundef %2348, i32 noundef 0)
  %2349 = load i8, ptr %x1799, align 1
  %2350 = load i32, ptr %x1774, align 4
  %2351 = load i32, ptr %x1749, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1800, i8 noundef zeroext %2349, i32 noundef %2350, i32 noundef %2351)
  %2352 = load i8, ptr %x1799, align 1
  %2353 = load i32, ptr %x1776, align 4
  %2354 = load i32, ptr %x1751, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1801, i8 noundef zeroext %2352, i32 noundef %2353, i32 noundef %2354)
  %2355 = load i8, ptr %x1799, align 1
  %2356 = load i32, ptr %x1778, align 4
  %2357 = load i32, ptr %x1753, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1802, i8 noundef zeroext %2355, i32 noundef %2356, i32 noundef %2357)
  %2358 = load i8, ptr %x1799, align 1
  %2359 = load i32, ptr %x1780, align 4
  %2360 = load i32, ptr %x1755, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1803, i8 noundef zeroext %2358, i32 noundef %2359, i32 noundef %2360)
  %2361 = load i8, ptr %x1799, align 1
  %2362 = load i32, ptr %x1782, align 4
  %2363 = load i32, ptr %x1757, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1804, i8 noundef zeroext %2361, i32 noundef %2362, i32 noundef %2363)
  %2364 = load i8, ptr %x1799, align 1
  %2365 = load i32, ptr %x1784, align 4
  %2366 = load i32, ptr %x1759, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1805, i8 noundef zeroext %2364, i32 noundef %2365, i32 noundef %2366)
  %2367 = load i8, ptr %x1799, align 1
  %2368 = load i32, ptr %x1786, align 4
  %2369 = load i32, ptr %x1761, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1806, i8 noundef zeroext %2367, i32 noundef %2368, i32 noundef %2369)
  %2370 = load i8, ptr %x1799, align 1
  %2371 = load i32, ptr %x1788, align 4
  %2372 = load i32, ptr %x1763, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1807, i8 noundef zeroext %2370, i32 noundef %2371, i32 noundef %2372)
  %2373 = load i8, ptr %x1799, align 1
  %2374 = load i32, ptr %x1790, align 4
  %2375 = load i32, ptr %x1765, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1808, i8 noundef zeroext %2373, i32 noundef %2374, i32 noundef %2375)
  %2376 = load i8, ptr %x1799, align 1
  %2377 = load i32, ptr %x1792, align 4
  %2378 = load i32, ptr %x1767, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1809, i8 noundef zeroext %2376, i32 noundef %2377, i32 noundef %2378)
  %2379 = load i8, ptr %x1799, align 1
  %2380 = load i32, ptr %x1794, align 4
  %2381 = load i32, ptr %x1769, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1810, i8 noundef zeroext %2379, i32 noundef %2380, i32 noundef %2381)
  %2382 = load i8, ptr %x1799, align 1
  %2383 = load i32, ptr %x1796, align 4
  %2384 = load i32, ptr %x1771, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1811, i8 noundef zeroext %2382, i32 noundef %2383, i32 noundef %2384)
  %2385 = load i32, ptr %x1800, align 4
  %2386 = load ptr, ptr %out1.addr, align 8
  %arrayidx236 = getelementptr inbounds i32, ptr %2386, i64 0
  store i32 %2385, ptr %arrayidx236, align 4
  %2387 = load i32, ptr %x1801, align 4
  %2388 = load ptr, ptr %out1.addr, align 8
  %arrayidx237 = getelementptr inbounds i32, ptr %2388, i64 1
  store i32 %2387, ptr %arrayidx237, align 4
  %2389 = load i32, ptr %x1802, align 4
  %2390 = load ptr, ptr %out1.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, ptr %2390, i64 2
  store i32 %2389, ptr %arrayidx238, align 4
  %2391 = load i32, ptr %x1803, align 4
  %2392 = load ptr, ptr %out1.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, ptr %2392, i64 3
  store i32 %2391, ptr %arrayidx239, align 4
  %2393 = load i32, ptr %x1804, align 4
  %2394 = load ptr, ptr %out1.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, ptr %2394, i64 4
  store i32 %2393, ptr %arrayidx240, align 4
  %2395 = load i32, ptr %x1805, align 4
  %2396 = load ptr, ptr %out1.addr, align 8
  %arrayidx241 = getelementptr inbounds i32, ptr %2396, i64 5
  store i32 %2395, ptr %arrayidx241, align 4
  %2397 = load i32, ptr %x1806, align 4
  %2398 = load ptr, ptr %out1.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, ptr %2398, i64 6
  store i32 %2397, ptr %arrayidx242, align 4
  %2399 = load i32, ptr %x1807, align 4
  %2400 = load ptr, ptr %out1.addr, align 8
  %arrayidx243 = getelementptr inbounds i32, ptr %2400, i64 7
  store i32 %2399, ptr %arrayidx243, align 4
  %2401 = load i32, ptr %x1808, align 4
  %2402 = load ptr, ptr %out1.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, ptr %2402, i64 8
  store i32 %2401, ptr %arrayidx244, align 4
  %2403 = load i32, ptr %x1809, align 4
  %2404 = load ptr, ptr %out1.addr, align 8
  %arrayidx245 = getelementptr inbounds i32, ptr %2404, i64 9
  store i32 %2403, ptr %arrayidx245, align 4
  %2405 = load i32, ptr %x1810, align 4
  %2406 = load ptr, ptr %out1.addr, align 8
  %arrayidx246 = getelementptr inbounds i32, ptr %2406, i64 10
  store i32 %2405, ptr %arrayidx246, align 4
  %2407 = load i32, ptr %x1811, align 4
  %2408 = load ptr, ptr %out1.addr, align 8
  %arrayidx247 = getelementptr inbounds i32, ptr %2408, i64 11
  store i32 %2407, ptr %arrayidx247, align 4
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
