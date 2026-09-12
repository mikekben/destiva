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
define dso_local void @fiat_p384_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x101 = alloca i32, align 4
  %x102 = alloca i32, align 4
  %x103 = alloca i32, align 4
  %x104 = alloca i32, align 4
  %x105 = alloca i32, align 4
  %x106 = alloca i32, align 4
  %x107 = alloca i32, align 4
  %x108 = alloca i32, align 4
  %x109 = alloca i32, align 4
  %x110 = alloca i32, align 4
  %x111 = alloca i32, align 4
  %x112 = alloca i32, align 4
  %x113 = alloca i32, align 4
  %x114 = alloca i32, align 4
  %x115 = alloca i32, align 4
  %x116 = alloca i32, align 4
  %x117 = alloca i32, align 4
  %x118 = alloca i32, align 4
  %x119 = alloca i32, align 4
  %x120 = alloca i32, align 4
  %x121 = alloca i32, align 4
  %x122 = alloca i32, align 4
  %x123 = alloca i32, align 4
  %x124 = alloca i32, align 4
  %x125 = alloca i32, align 4
  %x126 = alloca i32, align 4
  %x127 = alloca i8, align 1
  %x128 = alloca i32, align 4
  %x129 = alloca i8, align 1
  %x130 = alloca i32, align 4
  %x131 = alloca i8, align 1
  %x132 = alloca i32, align 4
  %x133 = alloca i8, align 1
  %x134 = alloca i32, align 4
  %x135 = alloca i8, align 1
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
  %x217 = alloca i32, align 4
  %x218 = alloca i32, align 4
  %x219 = alloca i32, align 4
  %x220 = alloca i32, align 4
  %x221 = alloca i32, align 4
  %x222 = alloca i32, align 4
  %x223 = alloca i32, align 4
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
  %x555 = alloca i8, align 1
  %x556 = alloca i32, align 4
  %x557 = alloca i8, align 1
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
  %x629 = alloca i8, align 1
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
  %x671 = alloca i8, align 1
  %x672 = alloca i32, align 4
  %x673 = alloca i8, align 1
  %x674 = alloca i32, align 4
  %x675 = alloca i8, align 1
  %x676 = alloca i32, align 4
  %x677 = alloca i8, align 1
  %x678 = alloca i32, align 4
  %x679 = alloca i8, align 1
  %x680 = alloca i32, align 4
  %x681 = alloca i8, align 1
  %x682 = alloca i32, align 4
  %x683 = alloca i8, align 1
  %x684 = alloca i32, align 4
  %x685 = alloca i8, align 1
  %x686 = alloca i32, align 4
  %x687 = alloca i8, align 1
  %x688 = alloca i32, align 4
  %x689 = alloca i32, align 4
  %x690 = alloca i32, align 4
  %x691 = alloca i32, align 4
  %x692 = alloca i32, align 4
  %x693 = alloca i32, align 4
  %x694 = alloca i32, align 4
  %x695 = alloca i32, align 4
  %x696 = alloca i32, align 4
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
  %x712 = alloca i32, align 4
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
  %x761 = alloca i8, align 1
  %x762 = alloca i32, align 4
  %x763 = alloca i8, align 1
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
  %x781 = alloca i8, align 1
  %x782 = alloca i32, align 4
  %x783 = alloca i8, align 1
  %x784 = alloca i32, align 4
  %x785 = alloca i8, align 1
  %x786 = alloca i32, align 4
  %x787 = alloca i32, align 4
  %x788 = alloca i32, align 4
  %x789 = alloca i32, align 4
  %x790 = alloca i32, align 4
  %x791 = alloca i32, align 4
  %x792 = alloca i32, align 4
  %x793 = alloca i32, align 4
  %x794 = alloca i32, align 4
  %x795 = alloca i32, align 4
  %x796 = alloca i32, align 4
  %x797 = alloca i32, align 4
  %x798 = alloca i32, align 4
  %x799 = alloca i32, align 4
  %x800 = alloca i32, align 4
  %x801 = alloca i32, align 4
  %x802 = alloca i32, align 4
  %x803 = alloca i32, align 4
  %x804 = alloca i32, align 4
  %x805 = alloca i32, align 4
  %x806 = alloca i32, align 4
  %x807 = alloca i32, align 4
  %x808 = alloca i32, align 4
  %x809 = alloca i32, align 4
  %x810 = alloca i32, align 4
  %x811 = alloca i32, align 4
  %x812 = alloca i32, align 4
  %x813 = alloca i8, align 1
  %x814 = alloca i32, align 4
  %x815 = alloca i8, align 1
  %x816 = alloca i32, align 4
  %x817 = alloca i8, align 1
  %x818 = alloca i32, align 4
  %x819 = alloca i8, align 1
  %x820 = alloca i32, align 4
  %x821 = alloca i8, align 1
  %x822 = alloca i32, align 4
  %x823 = alloca i8, align 1
  %x824 = alloca i32, align 4
  %x825 = alloca i8, align 1
  %x826 = alloca i32, align 4
  %x827 = alloca i8, align 1
  %x828 = alloca i32, align 4
  %x829 = alloca i8, align 1
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
  %x853 = alloca i8, align 1
  %x854 = alloca i32, align 4
  %x855 = alloca i8, align 1
  %x856 = alloca i32, align 4
  %x857 = alloca i8, align 1
  %x858 = alloca i32, align 4
  %x859 = alloca i8, align 1
  %x860 = alloca i32, align 4
  %x861 = alloca i8, align 1
  %x862 = alloca i32, align 4
  %x863 = alloca i8, align 1
  %x864 = alloca i32, align 4
  %x865 = alloca i8, align 1
  %x866 = alloca i32, align 4
  %x867 = alloca i8, align 1
  %x868 = alloca i32, align 4
  %x869 = alloca i8, align 1
  %x870 = alloca i32, align 4
  %x871 = alloca i8, align 1
  %x872 = alloca i32, align 4
  %x873 = alloca i8, align 1
  %x874 = alloca i32, align 4
  %x875 = alloca i8, align 1
  %x876 = alloca i32, align 4
  %x877 = alloca i8, align 1
  %x878 = alloca i32, align 4
  %x879 = alloca i8, align 1
  %x880 = alloca i32, align 4
  %x881 = alloca i8, align 1
  %x882 = alloca i32, align 4
  %x883 = alloca i8, align 1
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
  %x905 = alloca i32, align 4
  %x906 = alloca i32, align 4
  %x907 = alloca i32, align 4
  %x908 = alloca i32, align 4
  %x909 = alloca i32, align 4
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
  %x945 = alloca i8, align 1
  %x946 = alloca i32, align 4
  %x947 = alloca i8, align 1
  %x948 = alloca i32, align 4
  %x949 = alloca i8, align 1
  %x950 = alloca i32, align 4
  %x951 = alloca i8, align 1
  %x952 = alloca i32, align 4
  %x953 = alloca i8, align 1
  %x954 = alloca i32, align 4
  %x955 = alloca i8, align 1
  %x956 = alloca i32, align 4
  %x957 = alloca i8, align 1
  %x958 = alloca i32, align 4
  %x959 = alloca i8, align 1
  %x960 = alloca i32, align 4
  %x961 = alloca i8, align 1
  %x962 = alloca i32, align 4
  %x963 = alloca i8, align 1
  %x964 = alloca i32, align 4
  %x965 = alloca i8, align 1
  %x966 = alloca i32, align 4
  %x967 = alloca i8, align 1
  %x968 = alloca i32, align 4
  %x969 = alloca i8, align 1
  %x970 = alloca i32, align 4
  %x971 = alloca i8, align 1
  %x972 = alloca i32, align 4
  %x973 = alloca i8, align 1
  %x974 = alloca i32, align 4
  %x975 = alloca i8, align 1
  %x976 = alloca i32, align 4
  %x977 = alloca i8, align 1
  %x978 = alloca i32, align 4
  %x979 = alloca i8, align 1
  %x980 = alloca i32, align 4
  %x981 = alloca i8, align 1
  %x982 = alloca i32, align 4
  %x983 = alloca i32, align 4
  %x984 = alloca i32, align 4
  %x985 = alloca i32, align 4
  %x986 = alloca i32, align 4
  %x987 = alloca i32, align 4
  %x988 = alloca i32, align 4
  %x989 = alloca i32, align 4
  %x990 = alloca i32, align 4
  %x991 = alloca i32, align 4
  %x992 = alloca i32, align 4
  %x993 = alloca i32, align 4
  %x994 = alloca i32, align 4
  %x995 = alloca i32, align 4
  %x996 = alloca i32, align 4
  %x997 = alloca i32, align 4
  %x998 = alloca i32, align 4
  %x999 = alloca i32, align 4
  %x1000 = alloca i32, align 4
  %x1001 = alloca i32, align 4
  %x1002 = alloca i32, align 4
  %x1003 = alloca i32, align 4
  %x1004 = alloca i32, align 4
  %x1005 = alloca i32, align 4
  %x1006 = alloca i32, align 4
  %x1007 = alloca i32, align 4
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
  %x1029 = alloca i8, align 1
  %x1030 = alloca i32, align 4
  %x1031 = alloca i8, align 1
  %x1032 = alloca i32, align 4
  %x1033 = alloca i8, align 1
  %x1034 = alloca i32, align 4
  %x1035 = alloca i8, align 1
  %x1036 = alloca i32, align 4
  %x1037 = alloca i8, align 1
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
  %x1055 = alloca i8, align 1
  %x1056 = alloca i32, align 4
  %x1057 = alloca i8, align 1
  %x1058 = alloca i32, align 4
  %x1059 = alloca i8, align 1
  %x1060 = alloca i32, align 4
  %x1061 = alloca i8, align 1
  %x1062 = alloca i32, align 4
  %x1063 = alloca i8, align 1
  %x1064 = alloca i32, align 4
  %x1065 = alloca i8, align 1
  %x1066 = alloca i32, align 4
  %x1067 = alloca i8, align 1
  %x1068 = alloca i32, align 4
  %x1069 = alloca i8, align 1
  %x1070 = alloca i32, align 4
  %x1071 = alloca i8, align 1
  %x1072 = alloca i32, align 4
  %x1073 = alloca i8, align 1
  %x1074 = alloca i32, align 4
  %x1075 = alloca i8, align 1
  %x1076 = alloca i32, align 4
  %x1077 = alloca i8, align 1
  %x1078 = alloca i32, align 4
  %x1079 = alloca i8, align 1
  %x1080 = alloca i32, align 4
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
  %x1151 = alloca i8, align 1
  %x1152 = alloca i32, align 4
  %x1153 = alloca i8, align 1
  %x1154 = alloca i32, align 4
  %x1155 = alloca i8, align 1
  %x1156 = alloca i32, align 4
  %x1157 = alloca i8, align 1
  %x1158 = alloca i32, align 4
  %x1159 = alloca i8, align 1
  %x1160 = alloca i32, align 4
  %x1161 = alloca i8, align 1
  %x1162 = alloca i32, align 4
  %x1163 = alloca i8, align 1
  %x1164 = alloca i32, align 4
  %x1165 = alloca i8, align 1
  %x1166 = alloca i32, align 4
  %x1167 = alloca i8, align 1
  %x1168 = alloca i32, align 4
  %x1169 = alloca i8, align 1
  %x1170 = alloca i32, align 4
  %x1171 = alloca i8, align 1
  %x1172 = alloca i32, align 4
  %x1173 = alloca i8, align 1
  %x1174 = alloca i32, align 4
  %x1175 = alloca i8, align 1
  %x1176 = alloca i32, align 4
  %x1177 = alloca i8, align 1
  %x1178 = alloca i32, align 4
  %x1179 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef -393225147)
  %3 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -1)
  %4 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef -1)
  %7 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %7, i32 noundef -1)
  %8 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x14, ptr noundef %x15, i32 noundef %8, i32 noundef -1)
  %9 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x16, ptr noundef %x17, i32 noundef %9, i32 noundef -949793407)
  %10 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x18, ptr noundef %x19, i32 noundef %10, i32 noundef -197710369)
  %11 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x20, ptr noundef %x21, i32 noundef %11, i32 noundef 1478102450)
  %12 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x22, ptr noundef %x23, i32 noundef %12, i32 noundef 1219536762)
  %13 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x24, ptr noundef %x25, i32 noundef %13, i32 noundef -320071318)
  %14 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x26, ptr noundef %x27, i32 noundef %14, i32 noundef -859494029)
  %15 = load i32, ptr %x27, align 4
  %16 = load i32, ptr %x24, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i32 noundef %15, i32 noundef %16)
  %17 = load i8, ptr %x29, align 1
  %18 = load i32, ptr %x25, align 4
  %19 = load i32, ptr %x22, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %17, i32 noundef %18, i32 noundef %19)
  %20 = load i8, ptr %x31, align 1
  %21 = load i32, ptr %x23, align 4
  %22 = load i32, ptr %x20, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %20, i32 noundef %21, i32 noundef %22)
  %23 = load i8, ptr %x33, align 1
  %24 = load i32, ptr %x21, align 4
  %25 = load i32, ptr %x18, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %23, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x35, align 1
  %27 = load i32, ptr %x19, align 4
  %28 = load i32, ptr %x16, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x37, align 1
  %30 = load i32, ptr %x17, align 4
  %31 = load i32, ptr %x14, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x39, align 1
  %33 = load i32, ptr %x15, align 4
  %34 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %x41, align 1
  %36 = load i32, ptr %x13, align 4
  %37 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x43, align 1
  %39 = load i32, ptr %x11, align 4
  %40 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x45, align 1
  %42 = load i32, ptr %x9, align 4
  %43 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i8, ptr %x47, align 1
  %45 = load i32, ptr %x7, align 4
  %46 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %44, i32 noundef %45, i32 noundef %46)
  %47 = load i32, ptr %x1, align 4
  %48 = load i32, ptr %x26, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i32 noundef %47, i32 noundef %48)
  %49 = load i8, ptr %x51, align 1
  %50 = load i32, ptr %x28, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %49, i32 noundef 0, i32 noundef %50)
  %51 = load i8, ptr %x53, align 1
  %52 = load i32, ptr %x30, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %51, i32 noundef 0, i32 noundef %52)
  %53 = load i8, ptr %x55, align 1
  %54 = load i32, ptr %x32, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %53, i32 noundef 0, i32 noundef %54)
  %55 = load i8, ptr %x57, align 1
  %56 = load i32, ptr %x34, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %55, i32 noundef 0, i32 noundef %56)
  %57 = load i8, ptr %x59, align 1
  %58 = load i32, ptr %x36, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %57, i32 noundef 0, i32 noundef %58)
  %59 = load i8, ptr %x61, align 1
  %60 = load i32, ptr %x38, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %59, i32 noundef 0, i32 noundef %60)
  %61 = load i8, ptr %x63, align 1
  %62 = load i32, ptr %x40, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %61, i32 noundef 0, i32 noundef %62)
  %63 = load i8, ptr %x65, align 1
  %64 = load i32, ptr %x42, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %63, i32 noundef 0, i32 noundef %64)
  %65 = load i8, ptr %x67, align 1
  %66 = load i32, ptr %x44, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %65, i32 noundef 0, i32 noundef %66)
  %67 = load i8, ptr %x69, align 1
  %68 = load i32, ptr %x46, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %67, i32 noundef 0, i32 noundef %68)
  %69 = load i8, ptr %x71, align 1
  %70 = load i32, ptr %x48, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %69, i32 noundef 0, i32 noundef %70)
  %71 = load i8, ptr %x73, align 1
  %72 = load i8, ptr %x49, align 1
  %conv = zext i8 %72 to i32
  %73 = load i32, ptr %x5, align 4
  %add = add i32 %conv, %73
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %71, i32 noundef 0, i32 noundef %add)
  %74 = load i32, ptr %x52, align 4
  %75 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %75, i64 1
  %76 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i32 noundef %74, i32 noundef %76)
  %77 = load i8, ptr %x77, align 1
  %78 = load i32, ptr %x54, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %77, i32 noundef %78, i32 noundef 0)
  %79 = load i8, ptr %x79, align 1
  %80 = load i32, ptr %x56, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %79, i32 noundef %80, i32 noundef 0)
  %81 = load i8, ptr %x81, align 1
  %82 = load i32, ptr %x58, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %81, i32 noundef %82, i32 noundef 0)
  %83 = load i8, ptr %x83, align 1
  %84 = load i32, ptr %x60, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %83, i32 noundef %84, i32 noundef 0)
  %85 = load i8, ptr %x85, align 1
  %86 = load i32, ptr %x62, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %85, i32 noundef %86, i32 noundef 0)
  %87 = load i8, ptr %x87, align 1
  %88 = load i32, ptr %x64, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %87, i32 noundef %88, i32 noundef 0)
  %89 = load i8, ptr %x89, align 1
  %90 = load i32, ptr %x66, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %89, i32 noundef %90, i32 noundef 0)
  %91 = load i8, ptr %x91, align 1
  %92 = load i32, ptr %x68, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %91, i32 noundef %92, i32 noundef 0)
  %93 = load i8, ptr %x93, align 1
  %94 = load i32, ptr %x70, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %93, i32 noundef %94, i32 noundef 0)
  %95 = load i8, ptr %x95, align 1
  %96 = load i32, ptr %x72, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %95, i32 noundef %96, i32 noundef 0)
  %97 = load i8, ptr %x97, align 1
  %98 = load i32, ptr %x74, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %97, i32 noundef %98, i32 noundef 0)
  %99 = load i32, ptr %x76, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x100, ptr noundef %x101, i32 noundef %99, i32 noundef -393225147)
  %100 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x102, ptr noundef %x103, i32 noundef %100, i32 noundef -1)
  %101 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x104, ptr noundef %x105, i32 noundef %101, i32 noundef -1)
  %102 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x106, ptr noundef %x107, i32 noundef %102, i32 noundef -1)
  %103 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x108, ptr noundef %x109, i32 noundef %103, i32 noundef -1)
  %104 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x110, ptr noundef %x111, i32 noundef %104, i32 noundef -1)
  %105 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x112, ptr noundef %x113, i32 noundef %105, i32 noundef -1)
  %106 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x114, ptr noundef %x115, i32 noundef %106, i32 noundef -949793407)
  %107 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x116, ptr noundef %x117, i32 noundef %107, i32 noundef -197710369)
  %108 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x118, ptr noundef %x119, i32 noundef %108, i32 noundef 1478102450)
  %109 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x120, ptr noundef %x121, i32 noundef %109, i32 noundef 1219536762)
  %110 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x122, ptr noundef %x123, i32 noundef %110, i32 noundef -320071318)
  %111 = load i32, ptr %x100, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x124, ptr noundef %x125, i32 noundef %111, i32 noundef -859494029)
  %112 = load i32, ptr %x125, align 4
  %113 = load i32, ptr %x122, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext 0, i32 noundef %112, i32 noundef %113)
  %114 = load i8, ptr %x127, align 1
  %115 = load i32, ptr %x123, align 4
  %116 = load i32, ptr %x120, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %114, i32 noundef %115, i32 noundef %116)
  %117 = load i8, ptr %x129, align 1
  %118 = load i32, ptr %x121, align 4
  %119 = load i32, ptr %x118, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %117, i32 noundef %118, i32 noundef %119)
  %120 = load i8, ptr %x131, align 1
  %121 = load i32, ptr %x119, align 4
  %122 = load i32, ptr %x116, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %120, i32 noundef %121, i32 noundef %122)
  %123 = load i8, ptr %x133, align 1
  %124 = load i32, ptr %x117, align 4
  %125 = load i32, ptr %x114, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %123, i32 noundef %124, i32 noundef %125)
  %126 = load i8, ptr %x135, align 1
  %127 = load i32, ptr %x115, align 4
  %128 = load i32, ptr %x112, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %126, i32 noundef %127, i32 noundef %128)
  %129 = load i8, ptr %x137, align 1
  %130 = load i32, ptr %x113, align 4
  %131 = load i32, ptr %x110, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %129, i32 noundef %130, i32 noundef %131)
  %132 = load i8, ptr %x139, align 1
  %133 = load i32, ptr %x111, align 4
  %134 = load i32, ptr %x108, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %132, i32 noundef %133, i32 noundef %134)
  %135 = load i8, ptr %x141, align 1
  %136 = load i32, ptr %x109, align 4
  %137 = load i32, ptr %x106, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %135, i32 noundef %136, i32 noundef %137)
  %138 = load i8, ptr %x143, align 1
  %139 = load i32, ptr %x107, align 4
  %140 = load i32, ptr %x104, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %138, i32 noundef %139, i32 noundef %140)
  %141 = load i8, ptr %x145, align 1
  %142 = load i32, ptr %x105, align 4
  %143 = load i32, ptr %x102, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143)
  %144 = load i32, ptr %x76, align 4
  %145 = load i32, ptr %x124, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext 0, i32 noundef %144, i32 noundef %145)
  %146 = load i8, ptr %x149, align 1
  %147 = load i32, ptr %x78, align 4
  %148 = load i32, ptr %x126, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %146, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x151, align 1
  %150 = load i32, ptr %x80, align 4
  %151 = load i32, ptr %x128, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i8, ptr %x153, align 1
  %153 = load i32, ptr %x82, align 4
  %154 = load i32, ptr %x130, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %152, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x155, align 1
  %156 = load i32, ptr %x84, align 4
  %157 = load i32, ptr %x132, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x157, align 1
  %159 = load i32, ptr %x86, align 4
  %160 = load i32, ptr %x134, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x159, align 1
  %162 = load i32, ptr %x88, align 4
  %163 = load i32, ptr %x136, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %163)
  %164 = load i8, ptr %x161, align 1
  %165 = load i32, ptr %x90, align 4
  %166 = load i32, ptr %x138, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %164, i32 noundef %165, i32 noundef %166)
  %167 = load i8, ptr %x163, align 1
  %168 = load i32, ptr %x92, align 4
  %169 = load i32, ptr %x140, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x165, align 1
  %171 = load i32, ptr %x94, align 4
  %172 = load i32, ptr %x142, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x167, align 1
  %174 = load i32, ptr %x96, align 4
  %175 = load i32, ptr %x144, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x169, align 1
  %177 = load i32, ptr %x98, align 4
  %178 = load i32, ptr %x146, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x171, align 1
  %180 = load i8, ptr %x99, align 1
  %conv2 = zext i8 %180 to i32
  %181 = load i8, ptr %x75, align 1
  %conv3 = zext i8 %181 to i32
  %add4 = add i32 %conv2, %conv3
  %182 = load i8, ptr %x147, align 1
  %conv5 = zext i8 %182 to i32
  %183 = load i32, ptr %x103, align 4
  %add6 = add i32 %conv5, %183
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %179, i32 noundef %add4, i32 noundef %add6)
  %184 = load i32, ptr %x150, align 4
  %185 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %185, i64 2
  %186 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext 0, i32 noundef %184, i32 noundef %186)
  %187 = load i8, ptr %x175, align 1
  %188 = load i32, ptr %x152, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %187, i32 noundef %188, i32 noundef 0)
  %189 = load i8, ptr %x177, align 1
  %190 = load i32, ptr %x154, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %189, i32 noundef %190, i32 noundef 0)
  %191 = load i8, ptr %x179, align 1
  %192 = load i32, ptr %x156, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %191, i32 noundef %192, i32 noundef 0)
  %193 = load i8, ptr %x181, align 1
  %194 = load i32, ptr %x158, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %193, i32 noundef %194, i32 noundef 0)
  %195 = load i8, ptr %x183, align 1
  %196 = load i32, ptr %x160, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %195, i32 noundef %196, i32 noundef 0)
  %197 = load i8, ptr %x185, align 1
  %198 = load i32, ptr %x162, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %197, i32 noundef %198, i32 noundef 0)
  %199 = load i8, ptr %x187, align 1
  %200 = load i32, ptr %x164, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %199, i32 noundef %200, i32 noundef 0)
  %201 = load i8, ptr %x189, align 1
  %202 = load i32, ptr %x166, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %201, i32 noundef %202, i32 noundef 0)
  %203 = load i8, ptr %x191, align 1
  %204 = load i32, ptr %x168, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %203, i32 noundef %204, i32 noundef 0)
  %205 = load i8, ptr %x193, align 1
  %206 = load i32, ptr %x170, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %205, i32 noundef %206, i32 noundef 0)
  %207 = load i8, ptr %x195, align 1
  %208 = load i32, ptr %x172, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %207, i32 noundef %208, i32 noundef 0)
  %209 = load i32, ptr %x174, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %209, i32 noundef -393225147)
  %210 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %210, i32 noundef -1)
  %211 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %211, i32 noundef -1)
  %212 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %212, i32 noundef -1)
  %213 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %213, i32 noundef -1)
  %214 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %214, i32 noundef -1)
  %215 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %215, i32 noundef -1)
  %216 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x212, ptr noundef %x213, i32 noundef %216, i32 noundef -949793407)
  %217 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x214, ptr noundef %x215, i32 noundef %217, i32 noundef -197710369)
  %218 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x216, ptr noundef %x217, i32 noundef %218, i32 noundef 1478102450)
  %219 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x218, ptr noundef %x219, i32 noundef %219, i32 noundef 1219536762)
  %220 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x220, ptr noundef %x221, i32 noundef %220, i32 noundef -320071318)
  %221 = load i32, ptr %x198, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x222, ptr noundef %x223, i32 noundef %221, i32 noundef -859494029)
  %222 = load i32, ptr %x223, align 4
  %223 = load i32, ptr %x220, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext 0, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x225, align 1
  %225 = load i32, ptr %x221, align 4
  %226 = load i32, ptr %x218, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x227, align 1
  %228 = load i32, ptr %x219, align 4
  %229 = load i32, ptr %x216, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x229, align 1
  %231 = load i32, ptr %x217, align 4
  %232 = load i32, ptr %x214, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x231, align 1
  %234 = load i32, ptr %x215, align 4
  %235 = load i32, ptr %x212, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x233, align 1
  %237 = load i32, ptr %x213, align 4
  %238 = load i32, ptr %x210, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x235, align 1
  %240 = load i32, ptr %x211, align 4
  %241 = load i32, ptr %x208, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x237, align 1
  %243 = load i32, ptr %x209, align 4
  %244 = load i32, ptr %x206, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %242, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x239, align 1
  %246 = load i32, ptr %x207, align 4
  %247 = load i32, ptr %x204, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i8, ptr %x241, align 1
  %249 = load i32, ptr %x205, align 4
  %250 = load i32, ptr %x202, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %248, i32 noundef %249, i32 noundef %250)
  %251 = load i8, ptr %x243, align 1
  %252 = load i32, ptr %x203, align 4
  %253 = load i32, ptr %x200, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %251, i32 noundef %252, i32 noundef %253)
  %254 = load i32, ptr %x174, align 4
  %255 = load i32, ptr %x222, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext 0, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x247, align 1
  %257 = load i32, ptr %x176, align 4
  %258 = load i32, ptr %x224, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x249, align 1
  %260 = load i32, ptr %x178, align 4
  %261 = load i32, ptr %x226, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x251, align 1
  %263 = load i32, ptr %x180, align 4
  %264 = load i32, ptr %x228, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %262, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x253, align 1
  %266 = load i32, ptr %x182, align 4
  %267 = load i32, ptr %x230, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %265, i32 noundef %266, i32 noundef %267)
  %268 = load i8, ptr %x255, align 1
  %269 = load i32, ptr %x184, align 4
  %270 = load i32, ptr %x232, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %268, i32 noundef %269, i32 noundef %270)
  %271 = load i8, ptr %x257, align 1
  %272 = load i32, ptr %x186, align 4
  %273 = load i32, ptr %x234, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %271, i32 noundef %272, i32 noundef %273)
  %274 = load i8, ptr %x259, align 1
  %275 = load i32, ptr %x188, align 4
  %276 = load i32, ptr %x236, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %274, i32 noundef %275, i32 noundef %276)
  %277 = load i8, ptr %x261, align 1
  %278 = load i32, ptr %x190, align 4
  %279 = load i32, ptr %x238, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %277, i32 noundef %278, i32 noundef %279)
  %280 = load i8, ptr %x263, align 1
  %281 = load i32, ptr %x192, align 4
  %282 = load i32, ptr %x240, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext %280, i32 noundef %281, i32 noundef %282)
  %283 = load i8, ptr %x265, align 1
  %284 = load i32, ptr %x194, align 4
  %285 = load i32, ptr %x242, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %283, i32 noundef %284, i32 noundef %285)
  %286 = load i8, ptr %x267, align 1
  %287 = load i32, ptr %x196, align 4
  %288 = load i32, ptr %x244, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x269, align 1
  %290 = load i8, ptr %x197, align 1
  %conv8 = zext i8 %290 to i32
  %291 = load i8, ptr %x173, align 1
  %conv9 = zext i8 %291 to i32
  %add10 = add i32 %conv8, %conv9
  %292 = load i8, ptr %x245, align 1
  %conv11 = zext i8 %292 to i32
  %293 = load i32, ptr %x201, align 4
  %add12 = add i32 %conv11, %293
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %289, i32 noundef %add10, i32 noundef %add12)
  %294 = load i32, ptr %x248, align 4
  %295 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %295, i64 3
  %296 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext 0, i32 noundef %294, i32 noundef %296)
  %297 = load i8, ptr %x273, align 1
  %298 = load i32, ptr %x250, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %297, i32 noundef %298, i32 noundef 0)
  %299 = load i8, ptr %x275, align 1
  %300 = load i32, ptr %x252, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %299, i32 noundef %300, i32 noundef 0)
  %301 = load i8, ptr %x277, align 1
  %302 = load i32, ptr %x254, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %301, i32 noundef %302, i32 noundef 0)
  %303 = load i8, ptr %x279, align 1
  %304 = load i32, ptr %x256, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %303, i32 noundef %304, i32 noundef 0)
  %305 = load i8, ptr %x281, align 1
  %306 = load i32, ptr %x258, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %305, i32 noundef %306, i32 noundef 0)
  %307 = load i8, ptr %x283, align 1
  %308 = load i32, ptr %x260, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %307, i32 noundef %308, i32 noundef 0)
  %309 = load i8, ptr %x285, align 1
  %310 = load i32, ptr %x262, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %309, i32 noundef %310, i32 noundef 0)
  %311 = load i8, ptr %x287, align 1
  %312 = load i32, ptr %x264, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %311, i32 noundef %312, i32 noundef 0)
  %313 = load i8, ptr %x289, align 1
  %314 = load i32, ptr %x266, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %313, i32 noundef %314, i32 noundef 0)
  %315 = load i8, ptr %x291, align 1
  %316 = load i32, ptr %x268, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %315, i32 noundef %316, i32 noundef 0)
  %317 = load i8, ptr %x293, align 1
  %318 = load i32, ptr %x270, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %317, i32 noundef %318, i32 noundef 0)
  %319 = load i32, ptr %x272, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x296, ptr noundef %x297, i32 noundef %319, i32 noundef -393225147)
  %320 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x298, ptr noundef %x299, i32 noundef %320, i32 noundef -1)
  %321 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x300, ptr noundef %x301, i32 noundef %321, i32 noundef -1)
  %322 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x302, ptr noundef %x303, i32 noundef %322, i32 noundef -1)
  %323 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x304, ptr noundef %x305, i32 noundef %323, i32 noundef -1)
  %324 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x306, ptr noundef %x307, i32 noundef %324, i32 noundef -1)
  %325 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x308, ptr noundef %x309, i32 noundef %325, i32 noundef -1)
  %326 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x310, ptr noundef %x311, i32 noundef %326, i32 noundef -949793407)
  %327 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x312, ptr noundef %x313, i32 noundef %327, i32 noundef -197710369)
  %328 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x314, ptr noundef %x315, i32 noundef %328, i32 noundef 1478102450)
  %329 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x316, ptr noundef %x317, i32 noundef %329, i32 noundef 1219536762)
  %330 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x318, ptr noundef %x319, i32 noundef %330, i32 noundef -320071318)
  %331 = load i32, ptr %x296, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x320, ptr noundef %x321, i32 noundef %331, i32 noundef -859494029)
  %332 = load i32, ptr %x321, align 4
  %333 = load i32, ptr %x318, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext 0, i32 noundef %332, i32 noundef %333)
  %334 = load i8, ptr %x323, align 1
  %335 = load i32, ptr %x319, align 4
  %336 = load i32, ptr %x316, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %334, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x325, align 1
  %338 = load i32, ptr %x317, align 4
  %339 = load i32, ptr %x314, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x327, align 1
  %341 = load i32, ptr %x315, align 4
  %342 = load i32, ptr %x312, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x329, align 1
  %344 = load i32, ptr %x313, align 4
  %345 = load i32, ptr %x310, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x331, align 1
  %347 = load i32, ptr %x311, align 4
  %348 = load i32, ptr %x308, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i8, ptr %x333, align 1
  %350 = load i32, ptr %x309, align 4
  %351 = load i32, ptr %x306, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i8, ptr %x335, align 1
  %353 = load i32, ptr %x307, align 4
  %354 = load i32, ptr %x304, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %352, i32 noundef %353, i32 noundef %354)
  %355 = load i8, ptr %x337, align 1
  %356 = load i32, ptr %x305, align 4
  %357 = load i32, ptr %x302, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %355, i32 noundef %356, i32 noundef %357)
  %358 = load i8, ptr %x339, align 1
  %359 = load i32, ptr %x303, align 4
  %360 = load i32, ptr %x300, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %358, i32 noundef %359, i32 noundef %360)
  %361 = load i8, ptr %x341, align 1
  %362 = load i32, ptr %x301, align 4
  %363 = load i32, ptr %x298, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x342, ptr noundef %x343, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i32, ptr %x272, align 4
  %365 = load i32, ptr %x320, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x344, ptr noundef %x345, i8 noundef zeroext 0, i32 noundef %364, i32 noundef %365)
  %366 = load i8, ptr %x345, align 1
  %367 = load i32, ptr %x274, align 4
  %368 = load i32, ptr %x322, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x346, ptr noundef %x347, i8 noundef zeroext %366, i32 noundef %367, i32 noundef %368)
  %369 = load i8, ptr %x347, align 1
  %370 = load i32, ptr %x276, align 4
  %371 = load i32, ptr %x324, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext %369, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x349, align 1
  %373 = load i32, ptr %x278, align 4
  %374 = load i32, ptr %x326, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %372, i32 noundef %373, i32 noundef %374)
  %375 = load i8, ptr %x351, align 1
  %376 = load i32, ptr %x280, align 4
  %377 = load i32, ptr %x328, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %375, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x353, align 1
  %379 = load i32, ptr %x282, align 4
  %380 = load i32, ptr %x330, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x355, align 1
  %382 = load i32, ptr %x284, align 4
  %383 = load i32, ptr %x332, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x357, align 1
  %385 = load i32, ptr %x286, align 4
  %386 = load i32, ptr %x334, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x359, align 1
  %388 = load i32, ptr %x288, align 4
  %389 = load i32, ptr %x336, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i8, ptr %x361, align 1
  %391 = load i32, ptr %x290, align 4
  %392 = load i32, ptr %x338, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext %390, i32 noundef %391, i32 noundef %392)
  %393 = load i8, ptr %x363, align 1
  %394 = load i32, ptr %x292, align 4
  %395 = load i32, ptr %x340, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %393, i32 noundef %394, i32 noundef %395)
  %396 = load i8, ptr %x365, align 1
  %397 = load i32, ptr %x294, align 4
  %398 = load i32, ptr %x342, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %396, i32 noundef %397, i32 noundef %398)
  %399 = load i8, ptr %x367, align 1
  %400 = load i8, ptr %x295, align 1
  %conv14 = zext i8 %400 to i32
  %401 = load i8, ptr %x271, align 1
  %conv15 = zext i8 %401 to i32
  %add16 = add i32 %conv14, %conv15
  %402 = load i8, ptr %x343, align 1
  %conv17 = zext i8 %402 to i32
  %403 = load i32, ptr %x299, align 4
  %add18 = add i32 %conv17, %403
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %399, i32 noundef %add16, i32 noundef %add18)
  %404 = load i32, ptr %x346, align 4
  %405 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %405, i64 4
  %406 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext 0, i32 noundef %404, i32 noundef %406)
  %407 = load i8, ptr %x371, align 1
  %408 = load i32, ptr %x348, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %407, i32 noundef %408, i32 noundef 0)
  %409 = load i8, ptr %x373, align 1
  %410 = load i32, ptr %x350, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %409, i32 noundef %410, i32 noundef 0)
  %411 = load i8, ptr %x375, align 1
  %412 = load i32, ptr %x352, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %411, i32 noundef %412, i32 noundef 0)
  %413 = load i8, ptr %x377, align 1
  %414 = load i32, ptr %x354, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %413, i32 noundef %414, i32 noundef 0)
  %415 = load i8, ptr %x379, align 1
  %416 = load i32, ptr %x356, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext %415, i32 noundef %416, i32 noundef 0)
  %417 = load i8, ptr %x381, align 1
  %418 = load i32, ptr %x358, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %417, i32 noundef %418, i32 noundef 0)
  %419 = load i8, ptr %x383, align 1
  %420 = load i32, ptr %x360, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %419, i32 noundef %420, i32 noundef 0)
  %421 = load i8, ptr %x385, align 1
  %422 = load i32, ptr %x362, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %421, i32 noundef %422, i32 noundef 0)
  %423 = load i8, ptr %x387, align 1
  %424 = load i32, ptr %x364, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %423, i32 noundef %424, i32 noundef 0)
  %425 = load i8, ptr %x389, align 1
  %426 = load i32, ptr %x366, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %425, i32 noundef %426, i32 noundef 0)
  %427 = load i8, ptr %x391, align 1
  %428 = load i32, ptr %x368, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %427, i32 noundef %428, i32 noundef 0)
  %429 = load i32, ptr %x370, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x394, ptr noundef %x395, i32 noundef %429, i32 noundef -393225147)
  %430 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x396, ptr noundef %x397, i32 noundef %430, i32 noundef -1)
  %431 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x398, ptr noundef %x399, i32 noundef %431, i32 noundef -1)
  %432 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x400, ptr noundef %x401, i32 noundef %432, i32 noundef -1)
  %433 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x402, ptr noundef %x403, i32 noundef %433, i32 noundef -1)
  %434 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x404, ptr noundef %x405, i32 noundef %434, i32 noundef -1)
  %435 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x406, ptr noundef %x407, i32 noundef %435, i32 noundef -1)
  %436 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x408, ptr noundef %x409, i32 noundef %436, i32 noundef -949793407)
  %437 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x410, ptr noundef %x411, i32 noundef %437, i32 noundef -197710369)
  %438 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x412, ptr noundef %x413, i32 noundef %438, i32 noundef 1478102450)
  %439 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x414, ptr noundef %x415, i32 noundef %439, i32 noundef 1219536762)
  %440 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x416, ptr noundef %x417, i32 noundef %440, i32 noundef -320071318)
  %441 = load i32, ptr %x394, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x418, ptr noundef %x419, i32 noundef %441, i32 noundef -859494029)
  %442 = load i32, ptr %x419, align 4
  %443 = load i32, ptr %x416, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext 0, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x421, align 1
  %445 = load i32, ptr %x417, align 4
  %446 = load i32, ptr %x414, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x423, align 1
  %448 = load i32, ptr %x415, align 4
  %449 = load i32, ptr %x412, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x424, ptr noundef %x425, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x425, align 1
  %451 = load i32, ptr %x413, align 4
  %452 = load i32, ptr %x410, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x426, ptr noundef %x427, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x427, align 1
  %454 = load i32, ptr %x411, align 4
  %455 = load i32, ptr %x408, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i8, ptr %x429, align 1
  %457 = load i32, ptr %x409, align 4
  %458 = load i32, ptr %x406, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %456, i32 noundef %457, i32 noundef %458)
  %459 = load i8, ptr %x431, align 1
  %460 = load i32, ptr %x407, align 4
  %461 = load i32, ptr %x404, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %459, i32 noundef %460, i32 noundef %461)
  %462 = load i8, ptr %x433, align 1
  %463 = load i32, ptr %x405, align 4
  %464 = load i32, ptr %x402, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %462, i32 noundef %463, i32 noundef %464)
  %465 = load i8, ptr %x435, align 1
  %466 = load i32, ptr %x403, align 4
  %467 = load i32, ptr %x400, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %465, i32 noundef %466, i32 noundef %467)
  %468 = load i8, ptr %x437, align 1
  %469 = load i32, ptr %x401, align 4
  %470 = load i32, ptr %x398, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i8, ptr %x439, align 1
  %472 = load i32, ptr %x399, align 4
  %473 = load i32, ptr %x396, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext %471, i32 noundef %472, i32 noundef %473)
  %474 = load i32, ptr %x370, align 4
  %475 = load i32, ptr %x418, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext 0, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x443, align 1
  %477 = load i32, ptr %x372, align 4
  %478 = load i32, ptr %x420, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x445, align 1
  %480 = load i32, ptr %x374, align 4
  %481 = load i32, ptr %x422, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i8, ptr %x447, align 1
  %483 = load i32, ptr %x376, align 4
  %484 = load i32, ptr %x424, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %482, i32 noundef %483, i32 noundef %484)
  %485 = load i8, ptr %x449, align 1
  %486 = load i32, ptr %x378, align 4
  %487 = load i32, ptr %x426, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %485, i32 noundef %486, i32 noundef %487)
  %488 = load i8, ptr %x451, align 1
  %489 = load i32, ptr %x380, align 4
  %490 = load i32, ptr %x428, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %488, i32 noundef %489, i32 noundef %490)
  %491 = load i8, ptr %x453, align 1
  %492 = load i32, ptr %x382, align 4
  %493 = load i32, ptr %x430, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %491, i32 noundef %492, i32 noundef %493)
  %494 = load i8, ptr %x455, align 1
  %495 = load i32, ptr %x384, align 4
  %496 = load i32, ptr %x432, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %494, i32 noundef %495, i32 noundef %496)
  %497 = load i8, ptr %x457, align 1
  %498 = load i32, ptr %x386, align 4
  %499 = load i32, ptr %x434, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %497, i32 noundef %498, i32 noundef %499)
  %500 = load i8, ptr %x459, align 1
  %501 = load i32, ptr %x388, align 4
  %502 = load i32, ptr %x436, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %500, i32 noundef %501, i32 noundef %502)
  %503 = load i8, ptr %x461, align 1
  %504 = load i32, ptr %x390, align 4
  %505 = load i32, ptr %x438, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %503, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x463, align 1
  %507 = load i32, ptr %x392, align 4
  %508 = load i32, ptr %x440, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %506, i32 noundef %507, i32 noundef %508)
  %509 = load i8, ptr %x465, align 1
  %510 = load i8, ptr %x393, align 1
  %conv20 = zext i8 %510 to i32
  %511 = load i8, ptr %x369, align 1
  %conv21 = zext i8 %511 to i32
  %add22 = add i32 %conv20, %conv21
  %512 = load i8, ptr %x441, align 1
  %conv23 = zext i8 %512 to i32
  %513 = load i32, ptr %x397, align 4
  %add24 = add i32 %conv23, %513
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %509, i32 noundef %add22, i32 noundef %add24)
  %514 = load i32, ptr %x444, align 4
  %515 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %515, i64 5
  %516 = load i32, ptr %arrayidx25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x468, ptr noundef %x469, i8 noundef zeroext 0, i32 noundef %514, i32 noundef %516)
  %517 = load i8, ptr %x469, align 1
  %518 = load i32, ptr %x446, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x470, ptr noundef %x471, i8 noundef zeroext %517, i32 noundef %518, i32 noundef 0)
  %519 = load i8, ptr %x471, align 1
  %520 = load i32, ptr %x448, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x472, ptr noundef %x473, i8 noundef zeroext %519, i32 noundef %520, i32 noundef 0)
  %521 = load i8, ptr %x473, align 1
  %522 = load i32, ptr %x450, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x474, ptr noundef %x475, i8 noundef zeroext %521, i32 noundef %522, i32 noundef 0)
  %523 = load i8, ptr %x475, align 1
  %524 = load i32, ptr %x452, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x476, ptr noundef %x477, i8 noundef zeroext %523, i32 noundef %524, i32 noundef 0)
  %525 = load i8, ptr %x477, align 1
  %526 = load i32, ptr %x454, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x478, ptr noundef %x479, i8 noundef zeroext %525, i32 noundef %526, i32 noundef 0)
  %527 = load i8, ptr %x479, align 1
  %528 = load i32, ptr %x456, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext %527, i32 noundef %528, i32 noundef 0)
  %529 = load i8, ptr %x481, align 1
  %530 = load i32, ptr %x458, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %529, i32 noundef %530, i32 noundef 0)
  %531 = load i8, ptr %x483, align 1
  %532 = load i32, ptr %x460, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %531, i32 noundef %532, i32 noundef 0)
  %533 = load i8, ptr %x485, align 1
  %534 = load i32, ptr %x462, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %533, i32 noundef %534, i32 noundef 0)
  %535 = load i8, ptr %x487, align 1
  %536 = load i32, ptr %x464, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %535, i32 noundef %536, i32 noundef 0)
  %537 = load i8, ptr %x489, align 1
  %538 = load i32, ptr %x466, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %537, i32 noundef %538, i32 noundef 0)
  %539 = load i32, ptr %x468, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x492, ptr noundef %x493, i32 noundef %539, i32 noundef -393225147)
  %540 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x494, ptr noundef %x495, i32 noundef %540, i32 noundef -1)
  %541 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x496, ptr noundef %x497, i32 noundef %541, i32 noundef -1)
  %542 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x498, ptr noundef %x499, i32 noundef %542, i32 noundef -1)
  %543 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x500, ptr noundef %x501, i32 noundef %543, i32 noundef -1)
  %544 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x502, ptr noundef %x503, i32 noundef %544, i32 noundef -1)
  %545 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x504, ptr noundef %x505, i32 noundef %545, i32 noundef -1)
  %546 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x506, ptr noundef %x507, i32 noundef %546, i32 noundef -949793407)
  %547 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x508, ptr noundef %x509, i32 noundef %547, i32 noundef -197710369)
  %548 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x510, ptr noundef %x511, i32 noundef %548, i32 noundef 1478102450)
  %549 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x512, ptr noundef %x513, i32 noundef %549, i32 noundef 1219536762)
  %550 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x514, ptr noundef %x515, i32 noundef %550, i32 noundef -320071318)
  %551 = load i32, ptr %x492, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x516, ptr noundef %x517, i32 noundef %551, i32 noundef -859494029)
  %552 = load i32, ptr %x517, align 4
  %553 = load i32, ptr %x514, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x518, ptr noundef %x519, i8 noundef zeroext 0, i32 noundef %552, i32 noundef %553)
  %554 = load i8, ptr %x519, align 1
  %555 = load i32, ptr %x515, align 4
  %556 = load i32, ptr %x512, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x520, ptr noundef %x521, i8 noundef zeroext %554, i32 noundef %555, i32 noundef %556)
  %557 = load i8, ptr %x521, align 1
  %558 = load i32, ptr %x513, align 4
  %559 = load i32, ptr %x510, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x522, ptr noundef %x523, i8 noundef zeroext %557, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x523, align 1
  %561 = load i32, ptr %x511, align 4
  %562 = load i32, ptr %x508, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x524, ptr noundef %x525, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x525, align 1
  %564 = load i32, ptr %x509, align 4
  %565 = load i32, ptr %x506, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x527, align 1
  %567 = load i32, ptr %x507, align 4
  %568 = load i32, ptr %x504, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i8, ptr %x529, align 1
  %570 = load i32, ptr %x505, align 4
  %571 = load i32, ptr %x502, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %569, i32 noundef %570, i32 noundef %571)
  %572 = load i8, ptr %x531, align 1
  %573 = load i32, ptr %x503, align 4
  %574 = load i32, ptr %x500, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %572, i32 noundef %573, i32 noundef %574)
  %575 = load i8, ptr %x533, align 1
  %576 = load i32, ptr %x501, align 4
  %577 = load i32, ptr %x498, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %575, i32 noundef %576, i32 noundef %577)
  %578 = load i8, ptr %x535, align 1
  %579 = load i32, ptr %x499, align 4
  %580 = load i32, ptr %x496, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %578, i32 noundef %579, i32 noundef %580)
  %581 = load i8, ptr %x537, align 1
  %582 = load i32, ptr %x497, align 4
  %583 = load i32, ptr %x494, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %581, i32 noundef %582, i32 noundef %583)
  %584 = load i32, ptr %x468, align 4
  %585 = load i32, ptr %x516, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext 0, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x541, align 1
  %587 = load i32, ptr %x470, align 4
  %588 = load i32, ptr %x518, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x543, align 1
  %590 = load i32, ptr %x472, align 4
  %591 = load i32, ptr %x520, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x544, ptr noundef %x545, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i8, ptr %x545, align 1
  %593 = load i32, ptr %x474, align 4
  %594 = load i32, ptr %x522, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x546, ptr noundef %x547, i8 noundef zeroext %592, i32 noundef %593, i32 noundef %594)
  %595 = load i8, ptr %x547, align 1
  %596 = load i32, ptr %x476, align 4
  %597 = load i32, ptr %x524, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x548, ptr noundef %x549, i8 noundef zeroext %595, i32 noundef %596, i32 noundef %597)
  %598 = load i8, ptr %x549, align 1
  %599 = load i32, ptr %x478, align 4
  %600 = load i32, ptr %x526, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x550, ptr noundef %x551, i8 noundef zeroext %598, i32 noundef %599, i32 noundef %600)
  %601 = load i8, ptr %x551, align 1
  %602 = load i32, ptr %x480, align 4
  %603 = load i32, ptr %x528, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x552, ptr noundef %x553, i8 noundef zeroext %601, i32 noundef %602, i32 noundef %603)
  %604 = load i8, ptr %x553, align 1
  %605 = load i32, ptr %x482, align 4
  %606 = load i32, ptr %x530, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x554, ptr noundef %x555, i8 noundef zeroext %604, i32 noundef %605, i32 noundef %606)
  %607 = load i8, ptr %x555, align 1
  %608 = load i32, ptr %x484, align 4
  %609 = load i32, ptr %x532, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x556, ptr noundef %x557, i8 noundef zeroext %607, i32 noundef %608, i32 noundef %609)
  %610 = load i8, ptr %x557, align 1
  %611 = load i32, ptr %x486, align 4
  %612 = load i32, ptr %x534, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x558, ptr noundef %x559, i8 noundef zeroext %610, i32 noundef %611, i32 noundef %612)
  %613 = load i8, ptr %x559, align 1
  %614 = load i32, ptr %x488, align 4
  %615 = load i32, ptr %x536, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x560, ptr noundef %x561, i8 noundef zeroext %613, i32 noundef %614, i32 noundef %615)
  %616 = load i8, ptr %x561, align 1
  %617 = load i32, ptr %x490, align 4
  %618 = load i32, ptr %x538, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x562, ptr noundef %x563, i8 noundef zeroext %616, i32 noundef %617, i32 noundef %618)
  %619 = load i8, ptr %x563, align 1
  %620 = load i8, ptr %x491, align 1
  %conv26 = zext i8 %620 to i32
  %621 = load i8, ptr %x467, align 1
  %conv27 = zext i8 %621 to i32
  %add28 = add i32 %conv26, %conv27
  %622 = load i8, ptr %x539, align 1
  %conv29 = zext i8 %622 to i32
  %623 = load i32, ptr %x495, align 4
  %add30 = add i32 %conv29, %623
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x564, ptr noundef %x565, i8 noundef zeroext %619, i32 noundef %add28, i32 noundef %add30)
  %624 = load i32, ptr %x542, align 4
  %625 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %625, i64 6
  %626 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x566, ptr noundef %x567, i8 noundef zeroext 0, i32 noundef %624, i32 noundef %626)
  %627 = load i8, ptr %x567, align 1
  %628 = load i32, ptr %x544, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x568, ptr noundef %x569, i8 noundef zeroext %627, i32 noundef %628, i32 noundef 0)
  %629 = load i8, ptr %x569, align 1
  %630 = load i32, ptr %x546, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x570, ptr noundef %x571, i8 noundef zeroext %629, i32 noundef %630, i32 noundef 0)
  %631 = load i8, ptr %x571, align 1
  %632 = load i32, ptr %x548, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x572, ptr noundef %x573, i8 noundef zeroext %631, i32 noundef %632, i32 noundef 0)
  %633 = load i8, ptr %x573, align 1
  %634 = load i32, ptr %x550, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x574, ptr noundef %x575, i8 noundef zeroext %633, i32 noundef %634, i32 noundef 0)
  %635 = load i8, ptr %x575, align 1
  %636 = load i32, ptr %x552, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x576, ptr noundef %x577, i8 noundef zeroext %635, i32 noundef %636, i32 noundef 0)
  %637 = load i8, ptr %x577, align 1
  %638 = load i32, ptr %x554, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x578, ptr noundef %x579, i8 noundef zeroext %637, i32 noundef %638, i32 noundef 0)
  %639 = load i8, ptr %x579, align 1
  %640 = load i32, ptr %x556, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x580, ptr noundef %x581, i8 noundef zeroext %639, i32 noundef %640, i32 noundef 0)
  %641 = load i8, ptr %x581, align 1
  %642 = load i32, ptr %x558, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x582, ptr noundef %x583, i8 noundef zeroext %641, i32 noundef %642, i32 noundef 0)
  %643 = load i8, ptr %x583, align 1
  %644 = load i32, ptr %x560, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x584, ptr noundef %x585, i8 noundef zeroext %643, i32 noundef %644, i32 noundef 0)
  %645 = load i8, ptr %x585, align 1
  %646 = load i32, ptr %x562, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x586, ptr noundef %x587, i8 noundef zeroext %645, i32 noundef %646, i32 noundef 0)
  %647 = load i8, ptr %x587, align 1
  %648 = load i32, ptr %x564, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x588, ptr noundef %x589, i8 noundef zeroext %647, i32 noundef %648, i32 noundef 0)
  %649 = load i32, ptr %x566, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x590, ptr noundef %x591, i32 noundef %649, i32 noundef -393225147)
  %650 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x592, ptr noundef %x593, i32 noundef %650, i32 noundef -1)
  %651 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x594, ptr noundef %x595, i32 noundef %651, i32 noundef -1)
  %652 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x596, ptr noundef %x597, i32 noundef %652, i32 noundef -1)
  %653 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x598, ptr noundef %x599, i32 noundef %653, i32 noundef -1)
  %654 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x600, ptr noundef %x601, i32 noundef %654, i32 noundef -1)
  %655 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x602, ptr noundef %x603, i32 noundef %655, i32 noundef -1)
  %656 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x604, ptr noundef %x605, i32 noundef %656, i32 noundef -949793407)
  %657 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x606, ptr noundef %x607, i32 noundef %657, i32 noundef -197710369)
  %658 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x608, ptr noundef %x609, i32 noundef %658, i32 noundef 1478102450)
  %659 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x610, ptr noundef %x611, i32 noundef %659, i32 noundef 1219536762)
  %660 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x612, ptr noundef %x613, i32 noundef %660, i32 noundef -320071318)
  %661 = load i32, ptr %x590, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x614, ptr noundef %x615, i32 noundef %661, i32 noundef -859494029)
  %662 = load i32, ptr %x615, align 4
  %663 = load i32, ptr %x612, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x616, ptr noundef %x617, i8 noundef zeroext 0, i32 noundef %662, i32 noundef %663)
  %664 = load i8, ptr %x617, align 1
  %665 = load i32, ptr %x613, align 4
  %666 = load i32, ptr %x610, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x618, ptr noundef %x619, i8 noundef zeroext %664, i32 noundef %665, i32 noundef %666)
  %667 = load i8, ptr %x619, align 1
  %668 = load i32, ptr %x611, align 4
  %669 = load i32, ptr %x608, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x620, ptr noundef %x621, i8 noundef zeroext %667, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x621, align 1
  %671 = load i32, ptr %x609, align 4
  %672 = load i32, ptr %x606, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x622, ptr noundef %x623, i8 noundef zeroext %670, i32 noundef %671, i32 noundef %672)
  %673 = load i8, ptr %x623, align 1
  %674 = load i32, ptr %x607, align 4
  %675 = load i32, ptr %x604, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x624, ptr noundef %x625, i8 noundef zeroext %673, i32 noundef %674, i32 noundef %675)
  %676 = load i8, ptr %x625, align 1
  %677 = load i32, ptr %x605, align 4
  %678 = load i32, ptr %x602, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x626, ptr noundef %x627, i8 noundef zeroext %676, i32 noundef %677, i32 noundef %678)
  %679 = load i8, ptr %x627, align 1
  %680 = load i32, ptr %x603, align 4
  %681 = load i32, ptr %x600, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x628, ptr noundef %x629, i8 noundef zeroext %679, i32 noundef %680, i32 noundef %681)
  %682 = load i8, ptr %x629, align 1
  %683 = load i32, ptr %x601, align 4
  %684 = load i32, ptr %x598, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x630, ptr noundef %x631, i8 noundef zeroext %682, i32 noundef %683, i32 noundef %684)
  %685 = load i8, ptr %x631, align 1
  %686 = load i32, ptr %x599, align 4
  %687 = load i32, ptr %x596, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x632, ptr noundef %x633, i8 noundef zeroext %685, i32 noundef %686, i32 noundef %687)
  %688 = load i8, ptr %x633, align 1
  %689 = load i32, ptr %x597, align 4
  %690 = load i32, ptr %x594, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x634, ptr noundef %x635, i8 noundef zeroext %688, i32 noundef %689, i32 noundef %690)
  %691 = load i8, ptr %x635, align 1
  %692 = load i32, ptr %x595, align 4
  %693 = load i32, ptr %x592, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x636, ptr noundef %x637, i8 noundef zeroext %691, i32 noundef %692, i32 noundef %693)
  %694 = load i32, ptr %x566, align 4
  %695 = load i32, ptr %x614, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x638, ptr noundef %x639, i8 noundef zeroext 0, i32 noundef %694, i32 noundef %695)
  %696 = load i8, ptr %x639, align 1
  %697 = load i32, ptr %x568, align 4
  %698 = load i32, ptr %x616, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x640, ptr noundef %x641, i8 noundef zeroext %696, i32 noundef %697, i32 noundef %698)
  %699 = load i8, ptr %x641, align 1
  %700 = load i32, ptr %x570, align 4
  %701 = load i32, ptr %x618, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x642, ptr noundef %x643, i8 noundef zeroext %699, i32 noundef %700, i32 noundef %701)
  %702 = load i8, ptr %x643, align 1
  %703 = load i32, ptr %x572, align 4
  %704 = load i32, ptr %x620, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x644, ptr noundef %x645, i8 noundef zeroext %702, i32 noundef %703, i32 noundef %704)
  %705 = load i8, ptr %x645, align 1
  %706 = load i32, ptr %x574, align 4
  %707 = load i32, ptr %x622, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x646, ptr noundef %x647, i8 noundef zeroext %705, i32 noundef %706, i32 noundef %707)
  %708 = load i8, ptr %x647, align 1
  %709 = load i32, ptr %x576, align 4
  %710 = load i32, ptr %x624, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x648, ptr noundef %x649, i8 noundef zeroext %708, i32 noundef %709, i32 noundef %710)
  %711 = load i8, ptr %x649, align 1
  %712 = load i32, ptr %x578, align 4
  %713 = load i32, ptr %x626, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x650, ptr noundef %x651, i8 noundef zeroext %711, i32 noundef %712, i32 noundef %713)
  %714 = load i8, ptr %x651, align 1
  %715 = load i32, ptr %x580, align 4
  %716 = load i32, ptr %x628, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x652, ptr noundef %x653, i8 noundef zeroext %714, i32 noundef %715, i32 noundef %716)
  %717 = load i8, ptr %x653, align 1
  %718 = load i32, ptr %x582, align 4
  %719 = load i32, ptr %x630, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x654, ptr noundef %x655, i8 noundef zeroext %717, i32 noundef %718, i32 noundef %719)
  %720 = load i8, ptr %x655, align 1
  %721 = load i32, ptr %x584, align 4
  %722 = load i32, ptr %x632, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x656, ptr noundef %x657, i8 noundef zeroext %720, i32 noundef %721, i32 noundef %722)
  %723 = load i8, ptr %x657, align 1
  %724 = load i32, ptr %x586, align 4
  %725 = load i32, ptr %x634, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x658, ptr noundef %x659, i8 noundef zeroext %723, i32 noundef %724, i32 noundef %725)
  %726 = load i8, ptr %x659, align 1
  %727 = load i32, ptr %x588, align 4
  %728 = load i32, ptr %x636, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x660, ptr noundef %x661, i8 noundef zeroext %726, i32 noundef %727, i32 noundef %728)
  %729 = load i8, ptr %x661, align 1
  %730 = load i8, ptr %x589, align 1
  %conv32 = zext i8 %730 to i32
  %731 = load i8, ptr %x565, align 1
  %conv33 = zext i8 %731 to i32
  %add34 = add i32 %conv32, %conv33
  %732 = load i8, ptr %x637, align 1
  %conv35 = zext i8 %732 to i32
  %733 = load i32, ptr %x593, align 4
  %add36 = add i32 %conv35, %733
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x662, ptr noundef %x663, i8 noundef zeroext %729, i32 noundef %add34, i32 noundef %add36)
  %734 = load i32, ptr %x640, align 4
  %735 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %735, i64 7
  %736 = load i32, ptr %arrayidx37, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x664, ptr noundef %x665, i8 noundef zeroext 0, i32 noundef %734, i32 noundef %736)
  %737 = load i8, ptr %x665, align 1
  %738 = load i32, ptr %x642, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x666, ptr noundef %x667, i8 noundef zeroext %737, i32 noundef %738, i32 noundef 0)
  %739 = load i8, ptr %x667, align 1
  %740 = load i32, ptr %x644, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x668, ptr noundef %x669, i8 noundef zeroext %739, i32 noundef %740, i32 noundef 0)
  %741 = load i8, ptr %x669, align 1
  %742 = load i32, ptr %x646, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x670, ptr noundef %x671, i8 noundef zeroext %741, i32 noundef %742, i32 noundef 0)
  %743 = load i8, ptr %x671, align 1
  %744 = load i32, ptr %x648, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x672, ptr noundef %x673, i8 noundef zeroext %743, i32 noundef %744, i32 noundef 0)
  %745 = load i8, ptr %x673, align 1
  %746 = load i32, ptr %x650, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x674, ptr noundef %x675, i8 noundef zeroext %745, i32 noundef %746, i32 noundef 0)
  %747 = load i8, ptr %x675, align 1
  %748 = load i32, ptr %x652, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x676, ptr noundef %x677, i8 noundef zeroext %747, i32 noundef %748, i32 noundef 0)
  %749 = load i8, ptr %x677, align 1
  %750 = load i32, ptr %x654, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x678, ptr noundef %x679, i8 noundef zeroext %749, i32 noundef %750, i32 noundef 0)
  %751 = load i8, ptr %x679, align 1
  %752 = load i32, ptr %x656, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x680, ptr noundef %x681, i8 noundef zeroext %751, i32 noundef %752, i32 noundef 0)
  %753 = load i8, ptr %x681, align 1
  %754 = load i32, ptr %x658, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x682, ptr noundef %x683, i8 noundef zeroext %753, i32 noundef %754, i32 noundef 0)
  %755 = load i8, ptr %x683, align 1
  %756 = load i32, ptr %x660, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x684, ptr noundef %x685, i8 noundef zeroext %755, i32 noundef %756, i32 noundef 0)
  %757 = load i8, ptr %x685, align 1
  %758 = load i32, ptr %x662, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x686, ptr noundef %x687, i8 noundef zeroext %757, i32 noundef %758, i32 noundef 0)
  %759 = load i32, ptr %x664, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x688, ptr noundef %x689, i32 noundef %759, i32 noundef -393225147)
  %760 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x690, ptr noundef %x691, i32 noundef %760, i32 noundef -1)
  %761 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x692, ptr noundef %x693, i32 noundef %761, i32 noundef -1)
  %762 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x694, ptr noundef %x695, i32 noundef %762, i32 noundef -1)
  %763 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x696, ptr noundef %x697, i32 noundef %763, i32 noundef -1)
  %764 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x698, ptr noundef %x699, i32 noundef %764, i32 noundef -1)
  %765 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x700, ptr noundef %x701, i32 noundef %765, i32 noundef -1)
  %766 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x702, ptr noundef %x703, i32 noundef %766, i32 noundef -949793407)
  %767 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x704, ptr noundef %x705, i32 noundef %767, i32 noundef -197710369)
  %768 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x706, ptr noundef %x707, i32 noundef %768, i32 noundef 1478102450)
  %769 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x708, ptr noundef %x709, i32 noundef %769, i32 noundef 1219536762)
  %770 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x710, ptr noundef %x711, i32 noundef %770, i32 noundef -320071318)
  %771 = load i32, ptr %x688, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x712, ptr noundef %x713, i32 noundef %771, i32 noundef -859494029)
  %772 = load i32, ptr %x713, align 4
  %773 = load i32, ptr %x710, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x714, ptr noundef %x715, i8 noundef zeroext 0, i32 noundef %772, i32 noundef %773)
  %774 = load i8, ptr %x715, align 1
  %775 = load i32, ptr %x711, align 4
  %776 = load i32, ptr %x708, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x716, ptr noundef %x717, i8 noundef zeroext %774, i32 noundef %775, i32 noundef %776)
  %777 = load i8, ptr %x717, align 1
  %778 = load i32, ptr %x709, align 4
  %779 = load i32, ptr %x706, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x718, ptr noundef %x719, i8 noundef zeroext %777, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x719, align 1
  %781 = load i32, ptr %x707, align 4
  %782 = load i32, ptr %x704, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x720, ptr noundef %x721, i8 noundef zeroext %780, i32 noundef %781, i32 noundef %782)
  %783 = load i8, ptr %x721, align 1
  %784 = load i32, ptr %x705, align 4
  %785 = load i32, ptr %x702, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x722, ptr noundef %x723, i8 noundef zeroext %783, i32 noundef %784, i32 noundef %785)
  %786 = load i8, ptr %x723, align 1
  %787 = load i32, ptr %x703, align 4
  %788 = load i32, ptr %x700, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x724, ptr noundef %x725, i8 noundef zeroext %786, i32 noundef %787, i32 noundef %788)
  %789 = load i8, ptr %x725, align 1
  %790 = load i32, ptr %x701, align 4
  %791 = load i32, ptr %x698, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x726, ptr noundef %x727, i8 noundef zeroext %789, i32 noundef %790, i32 noundef %791)
  %792 = load i8, ptr %x727, align 1
  %793 = load i32, ptr %x699, align 4
  %794 = load i32, ptr %x696, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x728, ptr noundef %x729, i8 noundef zeroext %792, i32 noundef %793, i32 noundef %794)
  %795 = load i8, ptr %x729, align 1
  %796 = load i32, ptr %x697, align 4
  %797 = load i32, ptr %x694, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x730, ptr noundef %x731, i8 noundef zeroext %795, i32 noundef %796, i32 noundef %797)
  %798 = load i8, ptr %x731, align 1
  %799 = load i32, ptr %x695, align 4
  %800 = load i32, ptr %x692, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x732, ptr noundef %x733, i8 noundef zeroext %798, i32 noundef %799, i32 noundef %800)
  %801 = load i8, ptr %x733, align 1
  %802 = load i32, ptr %x693, align 4
  %803 = load i32, ptr %x690, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x734, ptr noundef %x735, i8 noundef zeroext %801, i32 noundef %802, i32 noundef %803)
  %804 = load i32, ptr %x664, align 4
  %805 = load i32, ptr %x712, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x736, ptr noundef %x737, i8 noundef zeroext 0, i32 noundef %804, i32 noundef %805)
  %806 = load i8, ptr %x737, align 1
  %807 = load i32, ptr %x666, align 4
  %808 = load i32, ptr %x714, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x738, ptr noundef %x739, i8 noundef zeroext %806, i32 noundef %807, i32 noundef %808)
  %809 = load i8, ptr %x739, align 1
  %810 = load i32, ptr %x668, align 4
  %811 = load i32, ptr %x716, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x740, ptr noundef %x741, i8 noundef zeroext %809, i32 noundef %810, i32 noundef %811)
  %812 = load i8, ptr %x741, align 1
  %813 = load i32, ptr %x670, align 4
  %814 = load i32, ptr %x718, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x742, ptr noundef %x743, i8 noundef zeroext %812, i32 noundef %813, i32 noundef %814)
  %815 = load i8, ptr %x743, align 1
  %816 = load i32, ptr %x672, align 4
  %817 = load i32, ptr %x720, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x744, ptr noundef %x745, i8 noundef zeroext %815, i32 noundef %816, i32 noundef %817)
  %818 = load i8, ptr %x745, align 1
  %819 = load i32, ptr %x674, align 4
  %820 = load i32, ptr %x722, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x746, ptr noundef %x747, i8 noundef zeroext %818, i32 noundef %819, i32 noundef %820)
  %821 = load i8, ptr %x747, align 1
  %822 = load i32, ptr %x676, align 4
  %823 = load i32, ptr %x724, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x748, ptr noundef %x749, i8 noundef zeroext %821, i32 noundef %822, i32 noundef %823)
  %824 = load i8, ptr %x749, align 1
  %825 = load i32, ptr %x678, align 4
  %826 = load i32, ptr %x726, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x750, ptr noundef %x751, i8 noundef zeroext %824, i32 noundef %825, i32 noundef %826)
  %827 = load i8, ptr %x751, align 1
  %828 = load i32, ptr %x680, align 4
  %829 = load i32, ptr %x728, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x752, ptr noundef %x753, i8 noundef zeroext %827, i32 noundef %828, i32 noundef %829)
  %830 = load i8, ptr %x753, align 1
  %831 = load i32, ptr %x682, align 4
  %832 = load i32, ptr %x730, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x754, ptr noundef %x755, i8 noundef zeroext %830, i32 noundef %831, i32 noundef %832)
  %833 = load i8, ptr %x755, align 1
  %834 = load i32, ptr %x684, align 4
  %835 = load i32, ptr %x732, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x756, ptr noundef %x757, i8 noundef zeroext %833, i32 noundef %834, i32 noundef %835)
  %836 = load i8, ptr %x757, align 1
  %837 = load i32, ptr %x686, align 4
  %838 = load i32, ptr %x734, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x758, ptr noundef %x759, i8 noundef zeroext %836, i32 noundef %837, i32 noundef %838)
  %839 = load i8, ptr %x759, align 1
  %840 = load i8, ptr %x687, align 1
  %conv38 = zext i8 %840 to i32
  %841 = load i8, ptr %x663, align 1
  %conv39 = zext i8 %841 to i32
  %add40 = add i32 %conv38, %conv39
  %842 = load i8, ptr %x735, align 1
  %conv41 = zext i8 %842 to i32
  %843 = load i32, ptr %x691, align 4
  %add42 = add i32 %conv41, %843
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x760, ptr noundef %x761, i8 noundef zeroext %839, i32 noundef %add40, i32 noundef %add42)
  %844 = load i32, ptr %x738, align 4
  %845 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %845, i64 8
  %846 = load i32, ptr %arrayidx43, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x762, ptr noundef %x763, i8 noundef zeroext 0, i32 noundef %844, i32 noundef %846)
  %847 = load i8, ptr %x763, align 1
  %848 = load i32, ptr %x740, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x764, ptr noundef %x765, i8 noundef zeroext %847, i32 noundef %848, i32 noundef 0)
  %849 = load i8, ptr %x765, align 1
  %850 = load i32, ptr %x742, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x766, ptr noundef %x767, i8 noundef zeroext %849, i32 noundef %850, i32 noundef 0)
  %851 = load i8, ptr %x767, align 1
  %852 = load i32, ptr %x744, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x768, ptr noundef %x769, i8 noundef zeroext %851, i32 noundef %852, i32 noundef 0)
  %853 = load i8, ptr %x769, align 1
  %854 = load i32, ptr %x746, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x770, ptr noundef %x771, i8 noundef zeroext %853, i32 noundef %854, i32 noundef 0)
  %855 = load i8, ptr %x771, align 1
  %856 = load i32, ptr %x748, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x772, ptr noundef %x773, i8 noundef zeroext %855, i32 noundef %856, i32 noundef 0)
  %857 = load i8, ptr %x773, align 1
  %858 = load i32, ptr %x750, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x774, ptr noundef %x775, i8 noundef zeroext %857, i32 noundef %858, i32 noundef 0)
  %859 = load i8, ptr %x775, align 1
  %860 = load i32, ptr %x752, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x776, ptr noundef %x777, i8 noundef zeroext %859, i32 noundef %860, i32 noundef 0)
  %861 = load i8, ptr %x777, align 1
  %862 = load i32, ptr %x754, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x778, ptr noundef %x779, i8 noundef zeroext %861, i32 noundef %862, i32 noundef 0)
  %863 = load i8, ptr %x779, align 1
  %864 = load i32, ptr %x756, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x780, ptr noundef %x781, i8 noundef zeroext %863, i32 noundef %864, i32 noundef 0)
  %865 = load i8, ptr %x781, align 1
  %866 = load i32, ptr %x758, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x782, ptr noundef %x783, i8 noundef zeroext %865, i32 noundef %866, i32 noundef 0)
  %867 = load i8, ptr %x783, align 1
  %868 = load i32, ptr %x760, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x784, ptr noundef %x785, i8 noundef zeroext %867, i32 noundef %868, i32 noundef 0)
  %869 = load i32, ptr %x762, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x786, ptr noundef %x787, i32 noundef %869, i32 noundef -393225147)
  %870 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x788, ptr noundef %x789, i32 noundef %870, i32 noundef -1)
  %871 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x790, ptr noundef %x791, i32 noundef %871, i32 noundef -1)
  %872 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x792, ptr noundef %x793, i32 noundef %872, i32 noundef -1)
  %873 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x794, ptr noundef %x795, i32 noundef %873, i32 noundef -1)
  %874 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x796, ptr noundef %x797, i32 noundef %874, i32 noundef -1)
  %875 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x798, ptr noundef %x799, i32 noundef %875, i32 noundef -1)
  %876 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x800, ptr noundef %x801, i32 noundef %876, i32 noundef -949793407)
  %877 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x802, ptr noundef %x803, i32 noundef %877, i32 noundef -197710369)
  %878 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x804, ptr noundef %x805, i32 noundef %878, i32 noundef 1478102450)
  %879 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x806, ptr noundef %x807, i32 noundef %879, i32 noundef 1219536762)
  %880 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x808, ptr noundef %x809, i32 noundef %880, i32 noundef -320071318)
  %881 = load i32, ptr %x786, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x810, ptr noundef %x811, i32 noundef %881, i32 noundef -859494029)
  %882 = load i32, ptr %x811, align 4
  %883 = load i32, ptr %x808, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x812, ptr noundef %x813, i8 noundef zeroext 0, i32 noundef %882, i32 noundef %883)
  %884 = load i8, ptr %x813, align 1
  %885 = load i32, ptr %x809, align 4
  %886 = load i32, ptr %x806, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x814, ptr noundef %x815, i8 noundef zeroext %884, i32 noundef %885, i32 noundef %886)
  %887 = load i8, ptr %x815, align 1
  %888 = load i32, ptr %x807, align 4
  %889 = load i32, ptr %x804, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x816, ptr noundef %x817, i8 noundef zeroext %887, i32 noundef %888, i32 noundef %889)
  %890 = load i8, ptr %x817, align 1
  %891 = load i32, ptr %x805, align 4
  %892 = load i32, ptr %x802, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x818, ptr noundef %x819, i8 noundef zeroext %890, i32 noundef %891, i32 noundef %892)
  %893 = load i8, ptr %x819, align 1
  %894 = load i32, ptr %x803, align 4
  %895 = load i32, ptr %x800, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x820, ptr noundef %x821, i8 noundef zeroext %893, i32 noundef %894, i32 noundef %895)
  %896 = load i8, ptr %x821, align 1
  %897 = load i32, ptr %x801, align 4
  %898 = load i32, ptr %x798, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x822, ptr noundef %x823, i8 noundef zeroext %896, i32 noundef %897, i32 noundef %898)
  %899 = load i8, ptr %x823, align 1
  %900 = load i32, ptr %x799, align 4
  %901 = load i32, ptr %x796, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x824, ptr noundef %x825, i8 noundef zeroext %899, i32 noundef %900, i32 noundef %901)
  %902 = load i8, ptr %x825, align 1
  %903 = load i32, ptr %x797, align 4
  %904 = load i32, ptr %x794, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x826, ptr noundef %x827, i8 noundef zeroext %902, i32 noundef %903, i32 noundef %904)
  %905 = load i8, ptr %x827, align 1
  %906 = load i32, ptr %x795, align 4
  %907 = load i32, ptr %x792, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x828, ptr noundef %x829, i8 noundef zeroext %905, i32 noundef %906, i32 noundef %907)
  %908 = load i8, ptr %x829, align 1
  %909 = load i32, ptr %x793, align 4
  %910 = load i32, ptr %x790, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x830, ptr noundef %x831, i8 noundef zeroext %908, i32 noundef %909, i32 noundef %910)
  %911 = load i8, ptr %x831, align 1
  %912 = load i32, ptr %x791, align 4
  %913 = load i32, ptr %x788, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x832, ptr noundef %x833, i8 noundef zeroext %911, i32 noundef %912, i32 noundef %913)
  %914 = load i32, ptr %x762, align 4
  %915 = load i32, ptr %x810, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x834, ptr noundef %x835, i8 noundef zeroext 0, i32 noundef %914, i32 noundef %915)
  %916 = load i8, ptr %x835, align 1
  %917 = load i32, ptr %x764, align 4
  %918 = load i32, ptr %x812, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x836, ptr noundef %x837, i8 noundef zeroext %916, i32 noundef %917, i32 noundef %918)
  %919 = load i8, ptr %x837, align 1
  %920 = load i32, ptr %x766, align 4
  %921 = load i32, ptr %x814, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x838, ptr noundef %x839, i8 noundef zeroext %919, i32 noundef %920, i32 noundef %921)
  %922 = load i8, ptr %x839, align 1
  %923 = load i32, ptr %x768, align 4
  %924 = load i32, ptr %x816, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x840, ptr noundef %x841, i8 noundef zeroext %922, i32 noundef %923, i32 noundef %924)
  %925 = load i8, ptr %x841, align 1
  %926 = load i32, ptr %x770, align 4
  %927 = load i32, ptr %x818, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x842, ptr noundef %x843, i8 noundef zeroext %925, i32 noundef %926, i32 noundef %927)
  %928 = load i8, ptr %x843, align 1
  %929 = load i32, ptr %x772, align 4
  %930 = load i32, ptr %x820, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x844, ptr noundef %x845, i8 noundef zeroext %928, i32 noundef %929, i32 noundef %930)
  %931 = load i8, ptr %x845, align 1
  %932 = load i32, ptr %x774, align 4
  %933 = load i32, ptr %x822, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x846, ptr noundef %x847, i8 noundef zeroext %931, i32 noundef %932, i32 noundef %933)
  %934 = load i8, ptr %x847, align 1
  %935 = load i32, ptr %x776, align 4
  %936 = load i32, ptr %x824, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x848, ptr noundef %x849, i8 noundef zeroext %934, i32 noundef %935, i32 noundef %936)
  %937 = load i8, ptr %x849, align 1
  %938 = load i32, ptr %x778, align 4
  %939 = load i32, ptr %x826, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x850, ptr noundef %x851, i8 noundef zeroext %937, i32 noundef %938, i32 noundef %939)
  %940 = load i8, ptr %x851, align 1
  %941 = load i32, ptr %x780, align 4
  %942 = load i32, ptr %x828, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x852, ptr noundef %x853, i8 noundef zeroext %940, i32 noundef %941, i32 noundef %942)
  %943 = load i8, ptr %x853, align 1
  %944 = load i32, ptr %x782, align 4
  %945 = load i32, ptr %x830, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x854, ptr noundef %x855, i8 noundef zeroext %943, i32 noundef %944, i32 noundef %945)
  %946 = load i8, ptr %x855, align 1
  %947 = load i32, ptr %x784, align 4
  %948 = load i32, ptr %x832, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x856, ptr noundef %x857, i8 noundef zeroext %946, i32 noundef %947, i32 noundef %948)
  %949 = load i8, ptr %x857, align 1
  %950 = load i8, ptr %x785, align 1
  %conv44 = zext i8 %950 to i32
  %951 = load i8, ptr %x761, align 1
  %conv45 = zext i8 %951 to i32
  %add46 = add i32 %conv44, %conv45
  %952 = load i8, ptr %x833, align 1
  %conv47 = zext i8 %952 to i32
  %953 = load i32, ptr %x789, align 4
  %add48 = add i32 %conv47, %953
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x858, ptr noundef %x859, i8 noundef zeroext %949, i32 noundef %add46, i32 noundef %add48)
  %954 = load i32, ptr %x836, align 4
  %955 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %955, i64 9
  %956 = load i32, ptr %arrayidx49, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x860, ptr noundef %x861, i8 noundef zeroext 0, i32 noundef %954, i32 noundef %956)
  %957 = load i8, ptr %x861, align 1
  %958 = load i32, ptr %x838, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x862, ptr noundef %x863, i8 noundef zeroext %957, i32 noundef %958, i32 noundef 0)
  %959 = load i8, ptr %x863, align 1
  %960 = load i32, ptr %x840, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x864, ptr noundef %x865, i8 noundef zeroext %959, i32 noundef %960, i32 noundef 0)
  %961 = load i8, ptr %x865, align 1
  %962 = load i32, ptr %x842, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x866, ptr noundef %x867, i8 noundef zeroext %961, i32 noundef %962, i32 noundef 0)
  %963 = load i8, ptr %x867, align 1
  %964 = load i32, ptr %x844, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x868, ptr noundef %x869, i8 noundef zeroext %963, i32 noundef %964, i32 noundef 0)
  %965 = load i8, ptr %x869, align 1
  %966 = load i32, ptr %x846, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x870, ptr noundef %x871, i8 noundef zeroext %965, i32 noundef %966, i32 noundef 0)
  %967 = load i8, ptr %x871, align 1
  %968 = load i32, ptr %x848, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x872, ptr noundef %x873, i8 noundef zeroext %967, i32 noundef %968, i32 noundef 0)
  %969 = load i8, ptr %x873, align 1
  %970 = load i32, ptr %x850, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x874, ptr noundef %x875, i8 noundef zeroext %969, i32 noundef %970, i32 noundef 0)
  %971 = load i8, ptr %x875, align 1
  %972 = load i32, ptr %x852, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x876, ptr noundef %x877, i8 noundef zeroext %971, i32 noundef %972, i32 noundef 0)
  %973 = load i8, ptr %x877, align 1
  %974 = load i32, ptr %x854, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x878, ptr noundef %x879, i8 noundef zeroext %973, i32 noundef %974, i32 noundef 0)
  %975 = load i8, ptr %x879, align 1
  %976 = load i32, ptr %x856, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x880, ptr noundef %x881, i8 noundef zeroext %975, i32 noundef %976, i32 noundef 0)
  %977 = load i8, ptr %x881, align 1
  %978 = load i32, ptr %x858, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x882, ptr noundef %x883, i8 noundef zeroext %977, i32 noundef %978, i32 noundef 0)
  %979 = load i32, ptr %x860, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x884, ptr noundef %x885, i32 noundef %979, i32 noundef -393225147)
  %980 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x886, ptr noundef %x887, i32 noundef %980, i32 noundef -1)
  %981 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x888, ptr noundef %x889, i32 noundef %981, i32 noundef -1)
  %982 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x890, ptr noundef %x891, i32 noundef %982, i32 noundef -1)
  %983 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x892, ptr noundef %x893, i32 noundef %983, i32 noundef -1)
  %984 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x894, ptr noundef %x895, i32 noundef %984, i32 noundef -1)
  %985 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x896, ptr noundef %x897, i32 noundef %985, i32 noundef -1)
  %986 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x898, ptr noundef %x899, i32 noundef %986, i32 noundef -949793407)
  %987 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x900, ptr noundef %x901, i32 noundef %987, i32 noundef -197710369)
  %988 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x902, ptr noundef %x903, i32 noundef %988, i32 noundef 1478102450)
  %989 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x904, ptr noundef %x905, i32 noundef %989, i32 noundef 1219536762)
  %990 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x906, ptr noundef %x907, i32 noundef %990, i32 noundef -320071318)
  %991 = load i32, ptr %x884, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x908, ptr noundef %x909, i32 noundef %991, i32 noundef -859494029)
  %992 = load i32, ptr %x909, align 4
  %993 = load i32, ptr %x906, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x910, ptr noundef %x911, i8 noundef zeroext 0, i32 noundef %992, i32 noundef %993)
  %994 = load i8, ptr %x911, align 1
  %995 = load i32, ptr %x907, align 4
  %996 = load i32, ptr %x904, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x912, ptr noundef %x913, i8 noundef zeroext %994, i32 noundef %995, i32 noundef %996)
  %997 = load i8, ptr %x913, align 1
  %998 = load i32, ptr %x905, align 4
  %999 = load i32, ptr %x902, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x914, ptr noundef %x915, i8 noundef zeroext %997, i32 noundef %998, i32 noundef %999)
  %1000 = load i8, ptr %x915, align 1
  %1001 = load i32, ptr %x903, align 4
  %1002 = load i32, ptr %x900, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x916, ptr noundef %x917, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef %1002)
  %1003 = load i8, ptr %x917, align 1
  %1004 = load i32, ptr %x901, align 4
  %1005 = load i32, ptr %x898, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x918, ptr noundef %x919, i8 noundef zeroext %1003, i32 noundef %1004, i32 noundef %1005)
  %1006 = load i8, ptr %x919, align 1
  %1007 = load i32, ptr %x899, align 4
  %1008 = load i32, ptr %x896, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x920, ptr noundef %x921, i8 noundef zeroext %1006, i32 noundef %1007, i32 noundef %1008)
  %1009 = load i8, ptr %x921, align 1
  %1010 = load i32, ptr %x897, align 4
  %1011 = load i32, ptr %x894, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x922, ptr noundef %x923, i8 noundef zeroext %1009, i32 noundef %1010, i32 noundef %1011)
  %1012 = load i8, ptr %x923, align 1
  %1013 = load i32, ptr %x895, align 4
  %1014 = load i32, ptr %x892, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x924, ptr noundef %x925, i8 noundef zeroext %1012, i32 noundef %1013, i32 noundef %1014)
  %1015 = load i8, ptr %x925, align 1
  %1016 = load i32, ptr %x893, align 4
  %1017 = load i32, ptr %x890, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x926, ptr noundef %x927, i8 noundef zeroext %1015, i32 noundef %1016, i32 noundef %1017)
  %1018 = load i8, ptr %x927, align 1
  %1019 = load i32, ptr %x891, align 4
  %1020 = load i32, ptr %x888, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x928, ptr noundef %x929, i8 noundef zeroext %1018, i32 noundef %1019, i32 noundef %1020)
  %1021 = load i8, ptr %x929, align 1
  %1022 = load i32, ptr %x889, align 4
  %1023 = load i32, ptr %x886, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x930, ptr noundef %x931, i8 noundef zeroext %1021, i32 noundef %1022, i32 noundef %1023)
  %1024 = load i32, ptr %x860, align 4
  %1025 = load i32, ptr %x908, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x932, ptr noundef %x933, i8 noundef zeroext 0, i32 noundef %1024, i32 noundef %1025)
  %1026 = load i8, ptr %x933, align 1
  %1027 = load i32, ptr %x862, align 4
  %1028 = load i32, ptr %x910, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x934, ptr noundef %x935, i8 noundef zeroext %1026, i32 noundef %1027, i32 noundef %1028)
  %1029 = load i8, ptr %x935, align 1
  %1030 = load i32, ptr %x864, align 4
  %1031 = load i32, ptr %x912, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x936, ptr noundef %x937, i8 noundef zeroext %1029, i32 noundef %1030, i32 noundef %1031)
  %1032 = load i8, ptr %x937, align 1
  %1033 = load i32, ptr %x866, align 4
  %1034 = load i32, ptr %x914, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x938, ptr noundef %x939, i8 noundef zeroext %1032, i32 noundef %1033, i32 noundef %1034)
  %1035 = load i8, ptr %x939, align 1
  %1036 = load i32, ptr %x868, align 4
  %1037 = load i32, ptr %x916, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x940, ptr noundef %x941, i8 noundef zeroext %1035, i32 noundef %1036, i32 noundef %1037)
  %1038 = load i8, ptr %x941, align 1
  %1039 = load i32, ptr %x870, align 4
  %1040 = load i32, ptr %x918, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x942, ptr noundef %x943, i8 noundef zeroext %1038, i32 noundef %1039, i32 noundef %1040)
  %1041 = load i8, ptr %x943, align 1
  %1042 = load i32, ptr %x872, align 4
  %1043 = load i32, ptr %x920, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x944, ptr noundef %x945, i8 noundef zeroext %1041, i32 noundef %1042, i32 noundef %1043)
  %1044 = load i8, ptr %x945, align 1
  %1045 = load i32, ptr %x874, align 4
  %1046 = load i32, ptr %x922, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x946, ptr noundef %x947, i8 noundef zeroext %1044, i32 noundef %1045, i32 noundef %1046)
  %1047 = load i8, ptr %x947, align 1
  %1048 = load i32, ptr %x876, align 4
  %1049 = load i32, ptr %x924, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x948, ptr noundef %x949, i8 noundef zeroext %1047, i32 noundef %1048, i32 noundef %1049)
  %1050 = load i8, ptr %x949, align 1
  %1051 = load i32, ptr %x878, align 4
  %1052 = load i32, ptr %x926, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x950, ptr noundef %x951, i8 noundef zeroext %1050, i32 noundef %1051, i32 noundef %1052)
  %1053 = load i8, ptr %x951, align 1
  %1054 = load i32, ptr %x880, align 4
  %1055 = load i32, ptr %x928, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x952, ptr noundef %x953, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i8, ptr %x953, align 1
  %1057 = load i32, ptr %x882, align 4
  %1058 = load i32, ptr %x930, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x954, ptr noundef %x955, i8 noundef zeroext %1056, i32 noundef %1057, i32 noundef %1058)
  %1059 = load i8, ptr %x955, align 1
  %1060 = load i8, ptr %x883, align 1
  %conv50 = zext i8 %1060 to i32
  %1061 = load i8, ptr %x859, align 1
  %conv51 = zext i8 %1061 to i32
  %add52 = add i32 %conv50, %conv51
  %1062 = load i8, ptr %x931, align 1
  %conv53 = zext i8 %1062 to i32
  %1063 = load i32, ptr %x887, align 4
  %add54 = add i32 %conv53, %1063
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x956, ptr noundef %x957, i8 noundef zeroext %1059, i32 noundef %add52, i32 noundef %add54)
  %1064 = load i32, ptr %x934, align 4
  %1065 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %1065, i64 10
  %1066 = load i32, ptr %arrayidx55, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x958, ptr noundef %x959, i8 noundef zeroext 0, i32 noundef %1064, i32 noundef %1066)
  %1067 = load i8, ptr %x959, align 1
  %1068 = load i32, ptr %x936, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x960, ptr noundef %x961, i8 noundef zeroext %1067, i32 noundef %1068, i32 noundef 0)
  %1069 = load i8, ptr %x961, align 1
  %1070 = load i32, ptr %x938, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x962, ptr noundef %x963, i8 noundef zeroext %1069, i32 noundef %1070, i32 noundef 0)
  %1071 = load i8, ptr %x963, align 1
  %1072 = load i32, ptr %x940, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x964, ptr noundef %x965, i8 noundef zeroext %1071, i32 noundef %1072, i32 noundef 0)
  %1073 = load i8, ptr %x965, align 1
  %1074 = load i32, ptr %x942, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x966, ptr noundef %x967, i8 noundef zeroext %1073, i32 noundef %1074, i32 noundef 0)
  %1075 = load i8, ptr %x967, align 1
  %1076 = load i32, ptr %x944, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x968, ptr noundef %x969, i8 noundef zeroext %1075, i32 noundef %1076, i32 noundef 0)
  %1077 = load i8, ptr %x969, align 1
  %1078 = load i32, ptr %x946, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x970, ptr noundef %x971, i8 noundef zeroext %1077, i32 noundef %1078, i32 noundef 0)
  %1079 = load i8, ptr %x971, align 1
  %1080 = load i32, ptr %x948, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x972, ptr noundef %x973, i8 noundef zeroext %1079, i32 noundef %1080, i32 noundef 0)
  %1081 = load i8, ptr %x973, align 1
  %1082 = load i32, ptr %x950, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x974, ptr noundef %x975, i8 noundef zeroext %1081, i32 noundef %1082, i32 noundef 0)
  %1083 = load i8, ptr %x975, align 1
  %1084 = load i32, ptr %x952, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x976, ptr noundef %x977, i8 noundef zeroext %1083, i32 noundef %1084, i32 noundef 0)
  %1085 = load i8, ptr %x977, align 1
  %1086 = load i32, ptr %x954, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x978, ptr noundef %x979, i8 noundef zeroext %1085, i32 noundef %1086, i32 noundef 0)
  %1087 = load i8, ptr %x979, align 1
  %1088 = load i32, ptr %x956, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x980, ptr noundef %x981, i8 noundef zeroext %1087, i32 noundef %1088, i32 noundef 0)
  %1089 = load i32, ptr %x958, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x982, ptr noundef %x983, i32 noundef %1089, i32 noundef -393225147)
  %1090 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x984, ptr noundef %x985, i32 noundef %1090, i32 noundef -1)
  %1091 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x986, ptr noundef %x987, i32 noundef %1091, i32 noundef -1)
  %1092 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x988, ptr noundef %x989, i32 noundef %1092, i32 noundef -1)
  %1093 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x990, ptr noundef %x991, i32 noundef %1093, i32 noundef -1)
  %1094 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x992, ptr noundef %x993, i32 noundef %1094, i32 noundef -1)
  %1095 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x994, ptr noundef %x995, i32 noundef %1095, i32 noundef -1)
  %1096 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x996, ptr noundef %x997, i32 noundef %1096, i32 noundef -949793407)
  %1097 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x998, ptr noundef %x999, i32 noundef %1097, i32 noundef -197710369)
  %1098 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1000, ptr noundef %x1001, i32 noundef %1098, i32 noundef 1478102450)
  %1099 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1002, ptr noundef %x1003, i32 noundef %1099, i32 noundef 1219536762)
  %1100 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1004, ptr noundef %x1005, i32 noundef %1100, i32 noundef -320071318)
  %1101 = load i32, ptr %x982, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1006, ptr noundef %x1007, i32 noundef %1101, i32 noundef -859494029)
  %1102 = load i32, ptr %x1007, align 4
  %1103 = load i32, ptr %x1004, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1008, ptr noundef %x1009, i8 noundef zeroext 0, i32 noundef %1102, i32 noundef %1103)
  %1104 = load i8, ptr %x1009, align 1
  %1105 = load i32, ptr %x1005, align 4
  %1106 = load i32, ptr %x1002, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1010, ptr noundef %x1011, i8 noundef zeroext %1104, i32 noundef %1105, i32 noundef %1106)
  %1107 = load i8, ptr %x1011, align 1
  %1108 = load i32, ptr %x1003, align 4
  %1109 = load i32, ptr %x1000, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1012, ptr noundef %x1013, i8 noundef zeroext %1107, i32 noundef %1108, i32 noundef %1109)
  %1110 = load i8, ptr %x1013, align 1
  %1111 = load i32, ptr %x1001, align 4
  %1112 = load i32, ptr %x998, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1014, ptr noundef %x1015, i8 noundef zeroext %1110, i32 noundef %1111, i32 noundef %1112)
  %1113 = load i8, ptr %x1015, align 1
  %1114 = load i32, ptr %x999, align 4
  %1115 = load i32, ptr %x996, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1016, ptr noundef %x1017, i8 noundef zeroext %1113, i32 noundef %1114, i32 noundef %1115)
  %1116 = load i8, ptr %x1017, align 1
  %1117 = load i32, ptr %x997, align 4
  %1118 = load i32, ptr %x994, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1018, ptr noundef %x1019, i8 noundef zeroext %1116, i32 noundef %1117, i32 noundef %1118)
  %1119 = load i8, ptr %x1019, align 1
  %1120 = load i32, ptr %x995, align 4
  %1121 = load i32, ptr %x992, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1020, ptr noundef %x1021, i8 noundef zeroext %1119, i32 noundef %1120, i32 noundef %1121)
  %1122 = load i8, ptr %x1021, align 1
  %1123 = load i32, ptr %x993, align 4
  %1124 = load i32, ptr %x990, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1022, ptr noundef %x1023, i8 noundef zeroext %1122, i32 noundef %1123, i32 noundef %1124)
  %1125 = load i8, ptr %x1023, align 1
  %1126 = load i32, ptr %x991, align 4
  %1127 = load i32, ptr %x988, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1024, ptr noundef %x1025, i8 noundef zeroext %1125, i32 noundef %1126, i32 noundef %1127)
  %1128 = load i8, ptr %x1025, align 1
  %1129 = load i32, ptr %x989, align 4
  %1130 = load i32, ptr %x986, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1026, ptr noundef %x1027, i8 noundef zeroext %1128, i32 noundef %1129, i32 noundef %1130)
  %1131 = load i8, ptr %x1027, align 1
  %1132 = load i32, ptr %x987, align 4
  %1133 = load i32, ptr %x984, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1028, ptr noundef %x1029, i8 noundef zeroext %1131, i32 noundef %1132, i32 noundef %1133)
  %1134 = load i32, ptr %x958, align 4
  %1135 = load i32, ptr %x1006, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1030, ptr noundef %x1031, i8 noundef zeroext 0, i32 noundef %1134, i32 noundef %1135)
  %1136 = load i8, ptr %x1031, align 1
  %1137 = load i32, ptr %x960, align 4
  %1138 = load i32, ptr %x1008, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1032, ptr noundef %x1033, i8 noundef zeroext %1136, i32 noundef %1137, i32 noundef %1138)
  %1139 = load i8, ptr %x1033, align 1
  %1140 = load i32, ptr %x962, align 4
  %1141 = load i32, ptr %x1010, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1034, ptr noundef %x1035, i8 noundef zeroext %1139, i32 noundef %1140, i32 noundef %1141)
  %1142 = load i8, ptr %x1035, align 1
  %1143 = load i32, ptr %x964, align 4
  %1144 = load i32, ptr %x1012, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1036, ptr noundef %x1037, i8 noundef zeroext %1142, i32 noundef %1143, i32 noundef %1144)
  %1145 = load i8, ptr %x1037, align 1
  %1146 = load i32, ptr %x966, align 4
  %1147 = load i32, ptr %x1014, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1038, ptr noundef %x1039, i8 noundef zeroext %1145, i32 noundef %1146, i32 noundef %1147)
  %1148 = load i8, ptr %x1039, align 1
  %1149 = load i32, ptr %x968, align 4
  %1150 = load i32, ptr %x1016, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1040, ptr noundef %x1041, i8 noundef zeroext %1148, i32 noundef %1149, i32 noundef %1150)
  %1151 = load i8, ptr %x1041, align 1
  %1152 = load i32, ptr %x970, align 4
  %1153 = load i32, ptr %x1018, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1042, ptr noundef %x1043, i8 noundef zeroext %1151, i32 noundef %1152, i32 noundef %1153)
  %1154 = load i8, ptr %x1043, align 1
  %1155 = load i32, ptr %x972, align 4
  %1156 = load i32, ptr %x1020, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1044, ptr noundef %x1045, i8 noundef zeroext %1154, i32 noundef %1155, i32 noundef %1156)
  %1157 = load i8, ptr %x1045, align 1
  %1158 = load i32, ptr %x974, align 4
  %1159 = load i32, ptr %x1022, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1046, ptr noundef %x1047, i8 noundef zeroext %1157, i32 noundef %1158, i32 noundef %1159)
  %1160 = load i8, ptr %x1047, align 1
  %1161 = load i32, ptr %x976, align 4
  %1162 = load i32, ptr %x1024, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1048, ptr noundef %x1049, i8 noundef zeroext %1160, i32 noundef %1161, i32 noundef %1162)
  %1163 = load i8, ptr %x1049, align 1
  %1164 = load i32, ptr %x978, align 4
  %1165 = load i32, ptr %x1026, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1050, ptr noundef %x1051, i8 noundef zeroext %1163, i32 noundef %1164, i32 noundef %1165)
  %1166 = load i8, ptr %x1051, align 1
  %1167 = load i32, ptr %x980, align 4
  %1168 = load i32, ptr %x1028, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1052, ptr noundef %x1053, i8 noundef zeroext %1166, i32 noundef %1167, i32 noundef %1168)
  %1169 = load i8, ptr %x1053, align 1
  %1170 = load i8, ptr %x981, align 1
  %conv56 = zext i8 %1170 to i32
  %1171 = load i8, ptr %x957, align 1
  %conv57 = zext i8 %1171 to i32
  %add58 = add i32 %conv56, %conv57
  %1172 = load i8, ptr %x1029, align 1
  %conv59 = zext i8 %1172 to i32
  %1173 = load i32, ptr %x985, align 4
  %add60 = add i32 %conv59, %1173
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1054, ptr noundef %x1055, i8 noundef zeroext %1169, i32 noundef %add58, i32 noundef %add60)
  %1174 = load i32, ptr %x1032, align 4
  %1175 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %1175, i64 11
  %1176 = load i32, ptr %arrayidx61, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1056, ptr noundef %x1057, i8 noundef zeroext 0, i32 noundef %1174, i32 noundef %1176)
  %1177 = load i8, ptr %x1057, align 1
  %1178 = load i32, ptr %x1034, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1058, ptr noundef %x1059, i8 noundef zeroext %1177, i32 noundef %1178, i32 noundef 0)
  %1179 = load i8, ptr %x1059, align 1
  %1180 = load i32, ptr %x1036, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1060, ptr noundef %x1061, i8 noundef zeroext %1179, i32 noundef %1180, i32 noundef 0)
  %1181 = load i8, ptr %x1061, align 1
  %1182 = load i32, ptr %x1038, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1062, ptr noundef %x1063, i8 noundef zeroext %1181, i32 noundef %1182, i32 noundef 0)
  %1183 = load i8, ptr %x1063, align 1
  %1184 = load i32, ptr %x1040, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1064, ptr noundef %x1065, i8 noundef zeroext %1183, i32 noundef %1184, i32 noundef 0)
  %1185 = load i8, ptr %x1065, align 1
  %1186 = load i32, ptr %x1042, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1066, ptr noundef %x1067, i8 noundef zeroext %1185, i32 noundef %1186, i32 noundef 0)
  %1187 = load i8, ptr %x1067, align 1
  %1188 = load i32, ptr %x1044, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1068, ptr noundef %x1069, i8 noundef zeroext %1187, i32 noundef %1188, i32 noundef 0)
  %1189 = load i8, ptr %x1069, align 1
  %1190 = load i32, ptr %x1046, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1070, ptr noundef %x1071, i8 noundef zeroext %1189, i32 noundef %1190, i32 noundef 0)
  %1191 = load i8, ptr %x1071, align 1
  %1192 = load i32, ptr %x1048, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1072, ptr noundef %x1073, i8 noundef zeroext %1191, i32 noundef %1192, i32 noundef 0)
  %1193 = load i8, ptr %x1073, align 1
  %1194 = load i32, ptr %x1050, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1074, ptr noundef %x1075, i8 noundef zeroext %1193, i32 noundef %1194, i32 noundef 0)
  %1195 = load i8, ptr %x1075, align 1
  %1196 = load i32, ptr %x1052, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1076, ptr noundef %x1077, i8 noundef zeroext %1195, i32 noundef %1196, i32 noundef 0)
  %1197 = load i8, ptr %x1077, align 1
  %1198 = load i32, ptr %x1054, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1078, ptr noundef %x1079, i8 noundef zeroext %1197, i32 noundef %1198, i32 noundef 0)
  %1199 = load i32, ptr %x1056, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1080, ptr noundef %x1081, i32 noundef %1199, i32 noundef -393225147)
  %1200 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1082, ptr noundef %x1083, i32 noundef %1200, i32 noundef -1)
  %1201 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1084, ptr noundef %x1085, i32 noundef %1201, i32 noundef -1)
  %1202 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1086, ptr noundef %x1087, i32 noundef %1202, i32 noundef -1)
  %1203 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1088, ptr noundef %x1089, i32 noundef %1203, i32 noundef -1)
  %1204 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1090, ptr noundef %x1091, i32 noundef %1204, i32 noundef -1)
  %1205 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1092, ptr noundef %x1093, i32 noundef %1205, i32 noundef -1)
  %1206 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1094, ptr noundef %x1095, i32 noundef %1206, i32 noundef -949793407)
  %1207 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1096, ptr noundef %x1097, i32 noundef %1207, i32 noundef -197710369)
  %1208 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1098, ptr noundef %x1099, i32 noundef %1208, i32 noundef 1478102450)
  %1209 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1100, ptr noundef %x1101, i32 noundef %1209, i32 noundef 1219536762)
  %1210 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1102, ptr noundef %x1103, i32 noundef %1210, i32 noundef -320071318)
  %1211 = load i32, ptr %x1080, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1104, ptr noundef %x1105, i32 noundef %1211, i32 noundef -859494029)
  %1212 = load i32, ptr %x1105, align 4
  %1213 = load i32, ptr %x1102, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1106, ptr noundef %x1107, i8 noundef zeroext 0, i32 noundef %1212, i32 noundef %1213)
  %1214 = load i8, ptr %x1107, align 1
  %1215 = load i32, ptr %x1103, align 4
  %1216 = load i32, ptr %x1100, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1108, ptr noundef %x1109, i8 noundef zeroext %1214, i32 noundef %1215, i32 noundef %1216)
  %1217 = load i8, ptr %x1109, align 1
  %1218 = load i32, ptr %x1101, align 4
  %1219 = load i32, ptr %x1098, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1110, ptr noundef %x1111, i8 noundef zeroext %1217, i32 noundef %1218, i32 noundef %1219)
  %1220 = load i8, ptr %x1111, align 1
  %1221 = load i32, ptr %x1099, align 4
  %1222 = load i32, ptr %x1096, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1112, ptr noundef %x1113, i8 noundef zeroext %1220, i32 noundef %1221, i32 noundef %1222)
  %1223 = load i8, ptr %x1113, align 1
  %1224 = load i32, ptr %x1097, align 4
  %1225 = load i32, ptr %x1094, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1114, ptr noundef %x1115, i8 noundef zeroext %1223, i32 noundef %1224, i32 noundef %1225)
  %1226 = load i8, ptr %x1115, align 1
  %1227 = load i32, ptr %x1095, align 4
  %1228 = load i32, ptr %x1092, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1116, ptr noundef %x1117, i8 noundef zeroext %1226, i32 noundef %1227, i32 noundef %1228)
  %1229 = load i8, ptr %x1117, align 1
  %1230 = load i32, ptr %x1093, align 4
  %1231 = load i32, ptr %x1090, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1118, ptr noundef %x1119, i8 noundef zeroext %1229, i32 noundef %1230, i32 noundef %1231)
  %1232 = load i8, ptr %x1119, align 1
  %1233 = load i32, ptr %x1091, align 4
  %1234 = load i32, ptr %x1088, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1120, ptr noundef %x1121, i8 noundef zeroext %1232, i32 noundef %1233, i32 noundef %1234)
  %1235 = load i8, ptr %x1121, align 1
  %1236 = load i32, ptr %x1089, align 4
  %1237 = load i32, ptr %x1086, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1122, ptr noundef %x1123, i8 noundef zeroext %1235, i32 noundef %1236, i32 noundef %1237)
  %1238 = load i8, ptr %x1123, align 1
  %1239 = load i32, ptr %x1087, align 4
  %1240 = load i32, ptr %x1084, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1124, ptr noundef %x1125, i8 noundef zeroext %1238, i32 noundef %1239, i32 noundef %1240)
  %1241 = load i8, ptr %x1125, align 1
  %1242 = load i32, ptr %x1085, align 4
  %1243 = load i32, ptr %x1082, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1126, ptr noundef %x1127, i8 noundef zeroext %1241, i32 noundef %1242, i32 noundef %1243)
  %1244 = load i32, ptr %x1056, align 4
  %1245 = load i32, ptr %x1104, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1128, ptr noundef %x1129, i8 noundef zeroext 0, i32 noundef %1244, i32 noundef %1245)
  %1246 = load i8, ptr %x1129, align 1
  %1247 = load i32, ptr %x1058, align 4
  %1248 = load i32, ptr %x1106, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1130, ptr noundef %x1131, i8 noundef zeroext %1246, i32 noundef %1247, i32 noundef %1248)
  %1249 = load i8, ptr %x1131, align 1
  %1250 = load i32, ptr %x1060, align 4
  %1251 = load i32, ptr %x1108, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1132, ptr noundef %x1133, i8 noundef zeroext %1249, i32 noundef %1250, i32 noundef %1251)
  %1252 = load i8, ptr %x1133, align 1
  %1253 = load i32, ptr %x1062, align 4
  %1254 = load i32, ptr %x1110, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1134, ptr noundef %x1135, i8 noundef zeroext %1252, i32 noundef %1253, i32 noundef %1254)
  %1255 = load i8, ptr %x1135, align 1
  %1256 = load i32, ptr %x1064, align 4
  %1257 = load i32, ptr %x1112, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1136, ptr noundef %x1137, i8 noundef zeroext %1255, i32 noundef %1256, i32 noundef %1257)
  %1258 = load i8, ptr %x1137, align 1
  %1259 = load i32, ptr %x1066, align 4
  %1260 = load i32, ptr %x1114, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1138, ptr noundef %x1139, i8 noundef zeroext %1258, i32 noundef %1259, i32 noundef %1260)
  %1261 = load i8, ptr %x1139, align 1
  %1262 = load i32, ptr %x1068, align 4
  %1263 = load i32, ptr %x1116, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1140, ptr noundef %x1141, i8 noundef zeroext %1261, i32 noundef %1262, i32 noundef %1263)
  %1264 = load i8, ptr %x1141, align 1
  %1265 = load i32, ptr %x1070, align 4
  %1266 = load i32, ptr %x1118, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1142, ptr noundef %x1143, i8 noundef zeroext %1264, i32 noundef %1265, i32 noundef %1266)
  %1267 = load i8, ptr %x1143, align 1
  %1268 = load i32, ptr %x1072, align 4
  %1269 = load i32, ptr %x1120, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1144, ptr noundef %x1145, i8 noundef zeroext %1267, i32 noundef %1268, i32 noundef %1269)
  %1270 = load i8, ptr %x1145, align 1
  %1271 = load i32, ptr %x1074, align 4
  %1272 = load i32, ptr %x1122, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1146, ptr noundef %x1147, i8 noundef zeroext %1270, i32 noundef %1271, i32 noundef %1272)
  %1273 = load i8, ptr %x1147, align 1
  %1274 = load i32, ptr %x1076, align 4
  %1275 = load i32, ptr %x1124, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1148, ptr noundef %x1149, i8 noundef zeroext %1273, i32 noundef %1274, i32 noundef %1275)
  %1276 = load i8, ptr %x1149, align 1
  %1277 = load i32, ptr %x1078, align 4
  %1278 = load i32, ptr %x1126, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1150, ptr noundef %x1151, i8 noundef zeroext %1276, i32 noundef %1277, i32 noundef %1278)
  %1279 = load i8, ptr %x1151, align 1
  %1280 = load i8, ptr %x1079, align 1
  %conv62 = zext i8 %1280 to i32
  %1281 = load i8, ptr %x1055, align 1
  %conv63 = zext i8 %1281 to i32
  %add64 = add i32 %conv62, %conv63
  %1282 = load i8, ptr %x1127, align 1
  %conv65 = zext i8 %1282 to i32
  %1283 = load i32, ptr %x1083, align 4
  %add66 = add i32 %conv65, %1283
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1152, ptr noundef %x1153, i8 noundef zeroext %1279, i32 noundef %add64, i32 noundef %add66)
  %1284 = load i32, ptr %x1130, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1154, ptr noundef %x1155, i8 noundef zeroext 0, i32 noundef %1284, i32 noundef -859494029)
  %1285 = load i8, ptr %x1155, align 1
  %1286 = load i32, ptr %x1132, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1156, ptr noundef %x1157, i8 noundef zeroext %1285, i32 noundef %1286, i32 noundef -320071318)
  %1287 = load i8, ptr %x1157, align 1
  %1288 = load i32, ptr %x1134, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1158, ptr noundef %x1159, i8 noundef zeroext %1287, i32 noundef %1288, i32 noundef 1219536762)
  %1289 = load i8, ptr %x1159, align 1
  %1290 = load i32, ptr %x1136, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1160, ptr noundef %x1161, i8 noundef zeroext %1289, i32 noundef %1290, i32 noundef 1478102450)
  %1291 = load i8, ptr %x1161, align 1
  %1292 = load i32, ptr %x1138, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1162, ptr noundef %x1163, i8 noundef zeroext %1291, i32 noundef %1292, i32 noundef -197710369)
  %1293 = load i8, ptr %x1163, align 1
  %1294 = load i32, ptr %x1140, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1164, ptr noundef %x1165, i8 noundef zeroext %1293, i32 noundef %1294, i32 noundef -949793407)
  %1295 = load i8, ptr %x1165, align 1
  %1296 = load i32, ptr %x1142, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1166, ptr noundef %x1167, i8 noundef zeroext %1295, i32 noundef %1296, i32 noundef -1)
  %1297 = load i8, ptr %x1167, align 1
  %1298 = load i32, ptr %x1144, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1168, ptr noundef %x1169, i8 noundef zeroext %1297, i32 noundef %1298, i32 noundef -1)
  %1299 = load i8, ptr %x1169, align 1
  %1300 = load i32, ptr %x1146, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1170, ptr noundef %x1171, i8 noundef zeroext %1299, i32 noundef %1300, i32 noundef -1)
  %1301 = load i8, ptr %x1171, align 1
  %1302 = load i32, ptr %x1148, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1172, ptr noundef %x1173, i8 noundef zeroext %1301, i32 noundef %1302, i32 noundef -1)
  %1303 = load i8, ptr %x1173, align 1
  %1304 = load i32, ptr %x1150, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1174, ptr noundef %x1175, i8 noundef zeroext %1303, i32 noundef %1304, i32 noundef -1)
  %1305 = load i8, ptr %x1175, align 1
  %1306 = load i32, ptr %x1152, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1176, ptr noundef %x1177, i8 noundef zeroext %1305, i32 noundef %1306, i32 noundef -1)
  %1307 = load i8, ptr %x1177, align 1
  %1308 = load i8, ptr %x1153, align 1
  %conv67 = zext i8 %1308 to i32
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1178, ptr noundef %x1179, i8 noundef zeroext %1307, i32 noundef %conv67, i32 noundef 0)
  %1309 = load i8, ptr %x1179, align 1
  %1310 = load i32, ptr %x1154, align 4
  %1311 = load i32, ptr %x1130, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1180, i8 noundef zeroext %1309, i32 noundef %1310, i32 noundef %1311)
  %1312 = load i8, ptr %x1179, align 1
  %1313 = load i32, ptr %x1156, align 4
  %1314 = load i32, ptr %x1132, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1181, i8 noundef zeroext %1312, i32 noundef %1313, i32 noundef %1314)
  %1315 = load i8, ptr %x1179, align 1
  %1316 = load i32, ptr %x1158, align 4
  %1317 = load i32, ptr %x1134, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1182, i8 noundef zeroext %1315, i32 noundef %1316, i32 noundef %1317)
  %1318 = load i8, ptr %x1179, align 1
  %1319 = load i32, ptr %x1160, align 4
  %1320 = load i32, ptr %x1136, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1183, i8 noundef zeroext %1318, i32 noundef %1319, i32 noundef %1320)
  %1321 = load i8, ptr %x1179, align 1
  %1322 = load i32, ptr %x1162, align 4
  %1323 = load i32, ptr %x1138, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1184, i8 noundef zeroext %1321, i32 noundef %1322, i32 noundef %1323)
  %1324 = load i8, ptr %x1179, align 1
  %1325 = load i32, ptr %x1164, align 4
  %1326 = load i32, ptr %x1140, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1185, i8 noundef zeroext %1324, i32 noundef %1325, i32 noundef %1326)
  %1327 = load i8, ptr %x1179, align 1
  %1328 = load i32, ptr %x1166, align 4
  %1329 = load i32, ptr %x1142, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1186, i8 noundef zeroext %1327, i32 noundef %1328, i32 noundef %1329)
  %1330 = load i8, ptr %x1179, align 1
  %1331 = load i32, ptr %x1168, align 4
  %1332 = load i32, ptr %x1144, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1187, i8 noundef zeroext %1330, i32 noundef %1331, i32 noundef %1332)
  %1333 = load i8, ptr %x1179, align 1
  %1334 = load i32, ptr %x1170, align 4
  %1335 = load i32, ptr %x1146, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1188, i8 noundef zeroext %1333, i32 noundef %1334, i32 noundef %1335)
  %1336 = load i8, ptr %x1179, align 1
  %1337 = load i32, ptr %x1172, align 4
  %1338 = load i32, ptr %x1148, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1189, i8 noundef zeroext %1336, i32 noundef %1337, i32 noundef %1338)
  %1339 = load i8, ptr %x1179, align 1
  %1340 = load i32, ptr %x1174, align 4
  %1341 = load i32, ptr %x1150, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1190, i8 noundef zeroext %1339, i32 noundef %1340, i32 noundef %1341)
  %1342 = load i8, ptr %x1179, align 1
  %1343 = load i32, ptr %x1176, align 4
  %1344 = load i32, ptr %x1152, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1191, i8 noundef zeroext %1342, i32 noundef %1343, i32 noundef %1344)
  %1345 = load i32, ptr %x1180, align 4
  %1346 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %1346, i64 0
  store i32 %1345, ptr %arrayidx68, align 4
  %1347 = load i32, ptr %x1181, align 4
  %1348 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %1348, i64 1
  store i32 %1347, ptr %arrayidx69, align 4
  %1349 = load i32, ptr %x1182, align 4
  %1350 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %1350, i64 2
  store i32 %1349, ptr %arrayidx70, align 4
  %1351 = load i32, ptr %x1183, align 4
  %1352 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %1352, i64 3
  store i32 %1351, ptr %arrayidx71, align 4
  %1353 = load i32, ptr %x1184, align 4
  %1354 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %1354, i64 4
  store i32 %1353, ptr %arrayidx72, align 4
  %1355 = load i32, ptr %x1185, align 4
  %1356 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %1356, i64 5
  store i32 %1355, ptr %arrayidx73, align 4
  %1357 = load i32, ptr %x1186, align 4
  %1358 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %1358, i64 6
  store i32 %1357, ptr %arrayidx74, align 4
  %1359 = load i32, ptr %x1187, align 4
  %1360 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %1360, i64 7
  store i32 %1359, ptr %arrayidx75, align 4
  %1361 = load i32, ptr %x1188, align 4
  %1362 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %1362, i64 8
  store i32 %1361, ptr %arrayidx76, align 4
  %1363 = load i32, ptr %x1189, align 4
  %1364 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %1364, i64 9
  store i32 %1363, ptr %arrayidx77, align 4
  %1365 = load i32, ptr %x1190, align 4
  %1366 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %1366, i64 10
  store i32 %1365, ptr %arrayidx78, align 4
  %1367 = load i32, ptr %x1191, align 4
  %1368 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %1368, i64 11
  store i32 %1367, ptr %arrayidx79, align 4
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
