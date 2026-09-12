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
define dso_local void @fiat_p384_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x422 = alloca i32, align 4
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
  %x442 = alloca i32, align 4
  %x443 = alloca i32, align 4
  %x444 = alloca i32, align 4
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
  %x490 = alloca i8, align 1
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
  %x566 = alloca i32, align 4
  %x567 = alloca i32, align 4
  %x568 = alloca i32, align 4
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
  %x586 = alloca i32, align 4
  %x587 = alloca i32, align 4
  %x588 = alloca i32, align 4
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
  %x634 = alloca i8, align 1
  %x635 = alloca i32, align 4
  %x636 = alloca i32, align 4
  %x637 = alloca i32, align 4
  %x638 = alloca i32, align 4
  %x639 = alloca i32, align 4
  %x640 = alloca i32, align 4
  %x641 = alloca i32, align 4
  %x642 = alloca i32, align 4
  %x643 = alloca i32, align 4
  %x644 = alloca i32, align 4
  %x645 = alloca i32, align 4
  %x646 = alloca i32, align 4
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
  %x662 = alloca i8, align 1
  %x663 = alloca i32, align 4
  %x664 = alloca i8, align 1
  %x665 = alloca i32, align 4
  %x666 = alloca i8, align 1
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
  %x710 = alloca i32, align 4
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
  %x730 = alloca i32, align 4
  %x731 = alloca i32, align 4
  %x732 = alloca i32, align 4
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
  %x806 = alloca i8, align 1
  %x807 = alloca i32, align 4
  %x808 = alloca i8, align 1
  %x809 = alloca i32, align 4
  %x810 = alloca i8, align 1
  %x811 = alloca i32, align 4
  %x812 = alloca i8, align 1
  %x813 = alloca i32, align 4
  %x814 = alloca i8, align 1
  %x815 = alloca i32, align 4
  %x816 = alloca i8, align 1
  %x817 = alloca i32, align 4
  %x818 = alloca i8, align 1
  %x819 = alloca i32, align 4
  %x820 = alloca i8, align 1
  %x821 = alloca i32, align 4
  %x822 = alloca i8, align 1
  %x823 = alloca i32, align 4
  %x824 = alloca i8, align 1
  %x825 = alloca i32, align 4
  %x826 = alloca i8, align 1
  %x827 = alloca i32, align 4
  %x828 = alloca i8, align 1
  %x829 = alloca i32, align 4
  %x830 = alloca i8, align 1
  %x831 = alloca i32, align 4
  %x832 = alloca i8, align 1
  %x833 = alloca i32, align 4
  %x834 = alloca i8, align 1
  %x835 = alloca i32, align 4
  %x836 = alloca i8, align 1
  %x837 = alloca i32, align 4
  %x838 = alloca i8, align 1
  %x839 = alloca i32, align 4
  %x840 = alloca i8, align 1
  %x841 = alloca i32, align 4
  %x842 = alloca i8, align 1
  %x843 = alloca i32, align 4
  %x844 = alloca i8, align 1
  %x845 = alloca i32, align 4
  %x846 = alloca i8, align 1
  %x847 = alloca i32, align 4
  %x848 = alloca i8, align 1
  %x849 = alloca i32, align 4
  %x850 = alloca i8, align 1
  %x851 = alloca i32, align 4
  %x852 = alloca i8, align 1
  %x853 = alloca i32, align 4
  %x854 = alloca i32, align 4
  %x855 = alloca i32, align 4
  %x856 = alloca i32, align 4
  %x857 = alloca i32, align 4
  %x858 = alloca i32, align 4
  %x859 = alloca i32, align 4
  %x860 = alloca i32, align 4
  %x861 = alloca i32, align 4
  %x862 = alloca i32, align 4
  %x863 = alloca i32, align 4
  %x864 = alloca i32, align 4
  %x865 = alloca i32, align 4
  %x866 = alloca i32, align 4
  %x867 = alloca i32, align 4
  %x868 = alloca i32, align 4
  %x869 = alloca i32, align 4
  %x870 = alloca i32, align 4
  %x871 = alloca i32, align 4
  %x872 = alloca i32, align 4
  %x873 = alloca i32, align 4
  %x874 = alloca i32, align 4
  %x875 = alloca i32, align 4
  %x876 = alloca i32, align 4
  %x877 = alloca i32, align 4
  %x878 = alloca i8, align 1
  %x879 = alloca i32, align 4
  %x880 = alloca i8, align 1
  %x881 = alloca i32, align 4
  %x882 = alloca i8, align 1
  %x883 = alloca i32, align 4
  %x884 = alloca i8, align 1
  %x885 = alloca i32, align 4
  %x886 = alloca i8, align 1
  %x887 = alloca i32, align 4
  %x888 = alloca i8, align 1
  %x889 = alloca i32, align 4
  %x890 = alloca i8, align 1
  %x891 = alloca i32, align 4
  %x892 = alloca i8, align 1
  %x893 = alloca i32, align 4
  %x894 = alloca i8, align 1
  %x895 = alloca i32, align 4
  %x896 = alloca i8, align 1
  %x897 = alloca i32, align 4
  %x898 = alloca i8, align 1
  %x899 = alloca i32, align 4
  %x900 = alloca i8, align 1
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
  %x918 = alloca i8, align 1
  %x919 = alloca i32, align 4
  %x920 = alloca i8, align 1
  %x921 = alloca i32, align 4
  %x922 = alloca i8, align 1
  %x923 = alloca i32, align 4
  %x924 = alloca i32, align 4
  %x925 = alloca i32, align 4
  %x926 = alloca i32, align 4
  %x927 = alloca i32, align 4
  %x928 = alloca i32, align 4
  %x929 = alloca i32, align 4
  %x930 = alloca i32, align 4
  %x931 = alloca i32, align 4
  %x932 = alloca i32, align 4
  %x933 = alloca i32, align 4
  %x934 = alloca i32, align 4
  %x935 = alloca i32, align 4
  %x936 = alloca i32, align 4
  %x937 = alloca i32, align 4
  %x938 = alloca i32, align 4
  %x939 = alloca i32, align 4
  %x940 = alloca i32, align 4
  %x941 = alloca i32, align 4
  %x942 = alloca i32, align 4
  %x943 = alloca i32, align 4
  %x944 = alloca i32, align 4
  %x945 = alloca i32, align 4
  %x946 = alloca i32, align 4
  %x947 = alloca i32, align 4
  %x948 = alloca i32, align 4
  %x949 = alloca i32, align 4
  %x950 = alloca i8, align 1
  %x951 = alloca i32, align 4
  %x952 = alloca i8, align 1
  %x953 = alloca i32, align 4
  %x954 = alloca i8, align 1
  %x955 = alloca i32, align 4
  %x956 = alloca i8, align 1
  %x957 = alloca i32, align 4
  %x958 = alloca i8, align 1
  %x959 = alloca i32, align 4
  %x960 = alloca i8, align 1
  %x961 = alloca i32, align 4
  %x962 = alloca i8, align 1
  %x963 = alloca i32, align 4
  %x964 = alloca i8, align 1
  %x965 = alloca i32, align 4
  %x966 = alloca i8, align 1
  %x967 = alloca i32, align 4
  %x968 = alloca i8, align 1
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
  %x992 = alloca i8, align 1
  %x993 = alloca i32, align 4
  %x994 = alloca i8, align 1
  %x995 = alloca i32, align 4
  %x996 = alloca i8, align 1
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
  %x1009 = alloca i32, align 4
  %x1010 = alloca i32, align 4
  %x1011 = alloca i32, align 4
  %x1012 = alloca i32, align 4
  %x1013 = alloca i32, align 4
  %x1014 = alloca i32, align 4
  %x1015 = alloca i32, align 4
  %x1016 = alloca i32, align 4
  %x1017 = alloca i32, align 4
  %x1018 = alloca i32, align 4
  %x1019 = alloca i32, align 4
  %x1020 = alloca i32, align 4
  %x1021 = alloca i32, align 4
  %x1022 = alloca i8, align 1
  %x1023 = alloca i32, align 4
  %x1024 = alloca i8, align 1
  %x1025 = alloca i32, align 4
  %x1026 = alloca i8, align 1
  %x1027 = alloca i32, align 4
  %x1028 = alloca i8, align 1
  %x1029 = alloca i32, align 4
  %x1030 = alloca i8, align 1
  %x1031 = alloca i32, align 4
  %x1032 = alloca i8, align 1
  %x1033 = alloca i32, align 4
  %x1034 = alloca i8, align 1
  %x1035 = alloca i32, align 4
  %x1036 = alloca i8, align 1
  %x1037 = alloca i32, align 4
  %x1038 = alloca i8, align 1
  %x1039 = alloca i32, align 4
  %x1040 = alloca i8, align 1
  %x1041 = alloca i32, align 4
  %x1042 = alloca i8, align 1
  %x1043 = alloca i32, align 4
  %x1044 = alloca i8, align 1
  %x1045 = alloca i32, align 4
  %x1046 = alloca i8, align 1
  %x1047 = alloca i32, align 4
  %x1048 = alloca i8, align 1
  %x1049 = alloca i32, align 4
  %x1050 = alloca i8, align 1
  %x1051 = alloca i32, align 4
  %x1052 = alloca i8, align 1
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
  %x1068 = alloca i32, align 4
  %x1069 = alloca i32, align 4
  %x1070 = alloca i32, align 4
  %x1071 = alloca i32, align 4
  %x1072 = alloca i32, align 4
  %x1073 = alloca i32, align 4
  %x1074 = alloca i32, align 4
  %x1075 = alloca i32, align 4
  %x1076 = alloca i32, align 4
  %x1077 = alloca i32, align 4
  %x1078 = alloca i32, align 4
  %x1079 = alloca i32, align 4
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
  %x1094 = alloca i8, align 1
  %x1095 = alloca i32, align 4
  %x1096 = alloca i8, align 1
  %x1097 = alloca i32, align 4
  %x1098 = alloca i8, align 1
  %x1099 = alloca i32, align 4
  %x1100 = alloca i8, align 1
  %x1101 = alloca i32, align 4
  %x1102 = alloca i8, align 1
  %x1103 = alloca i32, align 4
  %x1104 = alloca i8, align 1
  %x1105 = alloca i32, align 4
  %x1106 = alloca i8, align 1
  %x1107 = alloca i32, align 4
  %x1108 = alloca i8, align 1
  %x1109 = alloca i32, align 4
  %x1110 = alloca i8, align 1
  %x1111 = alloca i32, align 4
  %x1112 = alloca i8, align 1
  %x1113 = alloca i32, align 4
  %x1114 = alloca i8, align 1
  %x1115 = alloca i32, align 4
  %x1116 = alloca i8, align 1
  %x1117 = alloca i32, align 4
  %x1118 = alloca i8, align 1
  %x1119 = alloca i32, align 4
  %x1120 = alloca i8, align 1
  %x1121 = alloca i32, align 4
  %x1122 = alloca i8, align 1
  %x1123 = alloca i32, align 4
  %x1124 = alloca i8, align 1
  %x1125 = alloca i32, align 4
  %x1126 = alloca i8, align 1
  %x1127 = alloca i32, align 4
  %x1128 = alloca i8, align 1
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
  %x1142 = alloca i32, align 4
  %x1143 = alloca i32, align 4
  %x1144 = alloca i32, align 4
  %x1145 = alloca i32, align 4
  %x1146 = alloca i32, align 4
  %x1147 = alloca i32, align 4
  %x1148 = alloca i32, align 4
  %x1149 = alloca i32, align 4
  %x1150 = alloca i32, align 4
  %x1151 = alloca i32, align 4
  %x1152 = alloca i32, align 4
  %x1153 = alloca i32, align 4
  %x1154 = alloca i32, align 4
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
  %x1192 = alloca i8, align 1
  %x1193 = alloca i32, align 4
  %x1194 = alloca i8, align 1
  %x1195 = alloca i32, align 4
  %x1196 = alloca i8, align 1
  %x1197 = alloca i32, align 4
  %x1198 = alloca i8, align 1
  %x1199 = alloca i32, align 4
  %x1200 = alloca i8, align 1
  %x1201 = alloca i32, align 4
  %x1202 = alloca i8, align 1
  %x1203 = alloca i32, align 4
  %x1204 = alloca i8, align 1
  %x1205 = alloca i32, align 4
  %x1206 = alloca i8, align 1
  %x1207 = alloca i32, align 4
  %x1208 = alloca i8, align 1
  %x1209 = alloca i32, align 4
  %x1210 = alloca i8, align 1
  %x1211 = alloca i32, align 4
  %x1212 = alloca i32, align 4
  %x1213 = alloca i32, align 4
  %x1214 = alloca i32, align 4
  %x1215 = alloca i32, align 4
  %x1216 = alloca i32, align 4
  %x1217 = alloca i32, align 4
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
  %x1266 = alloca i8, align 1
  %x1267 = alloca i32, align 4
  %x1268 = alloca i8, align 1
  %x1269 = alloca i32, align 4
  %x1270 = alloca i8, align 1
  %x1271 = alloca i32, align 4
  %x1272 = alloca i8, align 1
  %x1273 = alloca i32, align 4
  %x1274 = alloca i8, align 1
  %x1275 = alloca i32, align 4
  %x1276 = alloca i8, align 1
  %x1277 = alloca i32, align 4
  %x1278 = alloca i8, align 1
  %x1279 = alloca i32, align 4
  %x1280 = alloca i8, align 1
  %x1281 = alloca i32, align 4
  %x1282 = alloca i8, align 1
  %x1283 = alloca i32, align 4
  %x1284 = alloca i8, align 1
  %x1285 = alloca i32, align 4
  %x1286 = alloca i32, align 4
  %x1287 = alloca i32, align 4
  %x1288 = alloca i32, align 4
  %x1289 = alloca i32, align 4
  %x1290 = alloca i32, align 4
  %x1291 = alloca i32, align 4
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
  %x1310 = alloca i8, align 1
  %x1311 = alloca i32, align 4
  %x1312 = alloca i8, align 1
  %x1313 = alloca i32, align 4
  %x1314 = alloca i8, align 1
  %x1315 = alloca i32, align 4
  %x1316 = alloca i8, align 1
  %x1317 = alloca i32, align 4
  %x1318 = alloca i8, align 1
  %x1319 = alloca i32, align 4
  %x1320 = alloca i8, align 1
  %x1321 = alloca i32, align 4
  %x1322 = alloca i8, align 1
  %x1323 = alloca i32, align 4
  %x1324 = alloca i8, align 1
  %x1325 = alloca i32, align 4
  %x1326 = alloca i8, align 1
  %x1327 = alloca i32, align 4
  %x1328 = alloca i8, align 1
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
  %x1381 = alloca i32, align 4
  %x1382 = alloca i8, align 1
  %x1383 = alloca i32, align 4
  %x1384 = alloca i8, align 1
  %x1385 = alloca i32, align 4
  %x1386 = alloca i8, align 1
  %x1387 = alloca i32, align 4
  %x1388 = alloca i8, align 1
  %x1389 = alloca i32, align 4
  %x1390 = alloca i8, align 1
  %x1391 = alloca i32, align 4
  %x1392 = alloca i8, align 1
  %x1393 = alloca i32, align 4
  %x1394 = alloca i8, align 1
  %x1395 = alloca i32, align 4
  %x1396 = alloca i8, align 1
  %x1397 = alloca i32, align 4
  %x1398 = alloca i8, align 1
  %x1399 = alloca i32, align 4
  %x1400 = alloca i8, align 1
  %x1401 = alloca i32, align 4
  %x1402 = alloca i8, align 1
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
  %x1450 = alloca i32, align 4
  %x1451 = alloca i32, align 4
  %x1452 = alloca i32, align 4
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
  %x1476 = alloca i8, align 1
  %x1477 = alloca i32, align 4
  %x1478 = alloca i8, align 1
  %x1479 = alloca i32, align 4
  %x1480 = alloca i8, align 1
  %x1481 = alloca i32, align 4
  %x1482 = alloca i8, align 1
  %x1483 = alloca i32, align 4
  %x1484 = alloca i8, align 1
  %x1485 = alloca i32, align 4
  %x1486 = alloca i8, align 1
  %x1487 = alloca i32, align 4
  %x1488 = alloca i8, align 1
  %x1489 = alloca i32, align 4
  %x1490 = alloca i8, align 1
  %x1491 = alloca i32, align 4
  %x1492 = alloca i8, align 1
  %x1493 = alloca i32, align 4
  %x1494 = alloca i8, align 1
  %x1495 = alloca i32, align 4
  %x1496 = alloca i8, align 1
  %x1497 = alloca i32, align 4
  %x1498 = alloca i8, align 1
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
  %x1518 = alloca i32, align 4
  %x1519 = alloca i32, align 4
  %x1520 = alloca i32, align 4
  %x1521 = alloca i32, align 4
  %x1522 = alloca i32, align 4
  %x1523 = alloca i32, align 4
  %x1524 = alloca i32, align 4
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
  %x1550 = alloca i8, align 1
  %x1551 = alloca i32, align 4
  %x1552 = alloca i8, align 1
  %x1553 = alloca i32, align 4
  %x1554 = alloca i8, align 1
  %x1555 = alloca i32, align 4
  %x1556 = alloca i8, align 1
  %x1557 = alloca i32, align 4
  %x1558 = alloca i8, align 1
  %x1559 = alloca i32, align 4
  %x1560 = alloca i8, align 1
  %x1561 = alloca i32, align 4
  %x1562 = alloca i8, align 1
  %x1563 = alloca i32, align 4
  %x1564 = alloca i8, align 1
  %x1565 = alloca i32, align 4
  %x1566 = alloca i8, align 1
  %x1567 = alloca i32, align 4
  %x1568 = alloca i8, align 1
  %x1569 = alloca i32, align 4
  %x1570 = alloca i8, align 1
  %x1571 = alloca i32, align 4
  %x1572 = alloca i8, align 1
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
  %x1587 = alloca i32, align 4
  %x1588 = alloca i32, align 4
  %x1589 = alloca i32, align 4
  %x1590 = alloca i32, align 4
  %x1591 = alloca i32, align 4
  %x1592 = alloca i32, align 4
  %x1593 = alloca i32, align 4
  %x1594 = alloca i32, align 4
  %x1595 = alloca i32, align 4
  %x1596 = alloca i32, align 4
  %x1597 = alloca i32, align 4
  %x1598 = alloca i8, align 1
  %x1599 = alloca i32, align 4
  %x1600 = alloca i8, align 1
  %x1601 = alloca i32, align 4
  %x1602 = alloca i8, align 1
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
  %x1630 = alloca i8, align 1
  %x1631 = alloca i32, align 4
  %x1632 = alloca i8, align 1
  %x1633 = alloca i32, align 4
  %x1634 = alloca i8, align 1
  %x1635 = alloca i32, align 4
  %x1636 = alloca i8, align 1
  %x1637 = alloca i32, align 4
  %x1638 = alloca i8, align 1
  %x1639 = alloca i32, align 4
  %x1640 = alloca i8, align 1
  %x1641 = alloca i32, align 4
  %x1642 = alloca i8, align 1
  %x1643 = alloca i32, align 4
  %x1644 = alloca i32, align 4
  %x1645 = alloca i32, align 4
  %x1646 = alloca i32, align 4
  %x1647 = alloca i32, align 4
  %x1648 = alloca i32, align 4
  %x1649 = alloca i32, align 4
  %x1650 = alloca i32, align 4
  %x1651 = alloca i32, align 4
  %x1652 = alloca i32, align 4
  %x1653 = alloca i32, align 4
  %x1654 = alloca i32, align 4
  %x1655 = alloca i32, align 4
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
  %x1668 = alloca i32, align 4
  %x1669 = alloca i32, align 4
  %x1670 = alloca i8, align 1
  %x1671 = alloca i32, align 4
  %x1672 = alloca i8, align 1
  %x1673 = alloca i32, align 4
  %x1674 = alloca i8, align 1
  %x1675 = alloca i32, align 4
  %x1676 = alloca i8, align 1
  %x1677 = alloca i32, align 4
  %x1678 = alloca i8, align 1
  %x1679 = alloca i32, align 4
  %x1680 = alloca i8, align 1
  %x1681 = alloca i32, align 4
  %x1682 = alloca i8, align 1
  %x1683 = alloca i32, align 4
  %x1684 = alloca i8, align 1
  %x1685 = alloca i32, align 4
  %x1686 = alloca i8, align 1
  %x1687 = alloca i32, align 4
  %x1688 = alloca i8, align 1
  %x1689 = alloca i32, align 4
  %x1690 = alloca i8, align 1
  %x1691 = alloca i32, align 4
  %x1692 = alloca i8, align 1
  %x1693 = alloca i32, align 4
  %x1694 = alloca i8, align 1
  %x1695 = alloca i32, align 4
  %x1696 = alloca i8, align 1
  %x1697 = alloca i32, align 4
  %x1698 = alloca i8, align 1
  %x1699 = alloca i32, align 4
  %x1700 = alloca i8, align 1
  %x1701 = alloca i32, align 4
  %x1702 = alloca i8, align 1
  %x1703 = alloca i32, align 4
  %x1704 = alloca i8, align 1
  %x1705 = alloca i32, align 4
  %x1706 = alloca i8, align 1
  %x1707 = alloca i32, align 4
  %x1708 = alloca i8, align 1
  %x1709 = alloca i32, align 4
  %x1710 = alloca i8, align 1
  %x1711 = alloca i32, align 4
  %x1712 = alloca i8, align 1
  %x1713 = alloca i32, align 4
  %x1714 = alloca i8, align 1
  %x1715 = alloca i32, align 4
  %x1716 = alloca i8, align 1
  %x1717 = alloca i32, align 4
  %x1718 = alloca i8, align 1
  %x1719 = alloca i32, align 4
  %x1720 = alloca i8, align 1
  %x1721 = alloca i32, align 4
  %x1722 = alloca i8, align 1
  %x1723 = alloca i32, align 4
  %x1724 = alloca i8, align 1
  %x1725 = alloca i32, align 4
  %x1726 = alloca i8, align 1
  %x1727 = alloca i32, align 4
  %x1728 = alloca i8, align 1
  %x1729 = alloca i32, align 4
  %x1730 = alloca i8, align 1
  %x1731 = alloca i32, align 4
  %x1732 = alloca i8, align 1
  %x1733 = alloca i32, align 4
  %x1734 = alloca i8, align 1
  %x1735 = alloca i32, align 4
  %x1736 = alloca i8, align 1
  %x1737 = alloca i32, align 4
  %x1738 = alloca i8, align 1
  %x1739 = alloca i32, align 4
  %x1740 = alloca i8, align 1
  %x1741 = alloca i32, align 4
  %x1742 = alloca i8, align 1
  %x1743 = alloca i32, align 4
  %x1744 = alloca i32, align 4
  %x1745 = alloca i32, align 4
  %x1746 = alloca i32, align 4
  %x1747 = alloca i32, align 4
  %x1748 = alloca i32, align 4
  %x1749 = alloca i32, align 4
  %x1750 = alloca i32, align 4
  %x1751 = alloca i32, align 4
  %x1752 = alloca i32, align 4
  %x1753 = alloca i32, align 4
  %x1754 = alloca i32, align 4
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
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %24, i32 noundef 210038273)
  %25 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %25, i32 noundef 725204769)
  %26 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %26, i32 noundef 1068522362)
  %27 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %27, i32 noundef 673605781)
  %28 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %28, i32 noundef -737326825)
  %29 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %29, i32 noundef 1252728005)
  %30 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x25, ptr noundef %x26, i32 noundef %30, i32 noundef -1136768966)
  %31 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x27, ptr noundef %x28, i32 noundef %31, i32 noundef -55039673)
  %32 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x29, ptr noundef %x30, i32 noundef %32, i32 noundef -12746267)
  %33 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x31, ptr noundef %x32, i32 noundef %33, i32 noundef -551902183)
  %34 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x33, ptr noundef %x34, i32 noundef %34, i32 noundef 758225700)
  %35 = load i32, ptr %x12, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %35, i32 noundef 431229353)
  %36 = load i32, ptr %x36, align 4
  %37 = load i32, ptr %x33, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext 0, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x38, align 1
  %39 = load i32, ptr %x34, align 4
  %40 = load i32, ptr %x31, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x40, align 1
  %42 = load i32, ptr %x32, align 4
  %43 = load i32, ptr %x29, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i8, ptr %x42, align 1
  %45 = load i32, ptr %x30, align 4
  %46 = load i32, ptr %x27, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %44, i32 noundef %45, i32 noundef %46)
  %47 = load i8, ptr %x44, align 1
  %48 = load i32, ptr %x28, align 4
  %49 = load i32, ptr %x25, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %47, i32 noundef %48, i32 noundef %49)
  %50 = load i8, ptr %x46, align 1
  %51 = load i32, ptr %x26, align 4
  %52 = load i32, ptr %x23, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %50, i32 noundef %51, i32 noundef %52)
  %53 = load i8, ptr %x48, align 1
  %54 = load i32, ptr %x24, align 4
  %55 = load i32, ptr %x21, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55)
  %56 = load i8, ptr %x50, align 1
  %57 = load i32, ptr %x22, align 4
  %58 = load i32, ptr %x19, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %56, i32 noundef %57, i32 noundef %58)
  %59 = load i8, ptr %x52, align 1
  %60 = load i32, ptr %x20, align 4
  %61 = load i32, ptr %x17, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %59, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x54, align 1
  %63 = load i32, ptr %x18, align 4
  %64 = load i32, ptr %x15, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x56, align 1
  %66 = load i32, ptr %x16, align 4
  %67 = load i32, ptr %x13, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i32, ptr %x35, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x59, ptr noundef %x60, i32 noundef %68, i32 noundef -393225147)
  %69 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x61, ptr noundef %x62, i32 noundef %69, i32 noundef -1)
  %70 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x63, ptr noundef %x64, i32 noundef %70, i32 noundef -1)
  %71 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x65, ptr noundef %x66, i32 noundef %71, i32 noundef -1)
  %72 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x67, ptr noundef %x68, i32 noundef %72, i32 noundef -1)
  %73 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x69, ptr noundef %x70, i32 noundef %73, i32 noundef -1)
  %74 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x71, ptr noundef %x72, i32 noundef %74, i32 noundef -1)
  %75 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x73, ptr noundef %x74, i32 noundef %75, i32 noundef -949793407)
  %76 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x75, ptr noundef %x76, i32 noundef %76, i32 noundef -197710369)
  %77 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x77, ptr noundef %x78, i32 noundef %77, i32 noundef 1478102450)
  %78 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x79, ptr noundef %x80, i32 noundef %78, i32 noundef 1219536762)
  %79 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x81, ptr noundef %x82, i32 noundef %79, i32 noundef -320071318)
  %80 = load i32, ptr %x59, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x83, ptr noundef %x84, i32 noundef %80, i32 noundef -859494029)
  %81 = load i32, ptr %x84, align 4
  %82 = load i32, ptr %x81, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext 0, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x86, align 1
  %84 = load i32, ptr %x82, align 4
  %85 = load i32, ptr %x79, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x88, align 1
  %87 = load i32, ptr %x80, align 4
  %88 = load i32, ptr %x77, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x90, align 1
  %90 = load i32, ptr %x78, align 4
  %91 = load i32, ptr %x75, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x92, align 1
  %93 = load i32, ptr %x76, align 4
  %94 = load i32, ptr %x73, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %92, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x94, align 1
  %96 = load i32, ptr %x74, align 4
  %97 = load i32, ptr %x71, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %95, i32 noundef %96, i32 noundef %97)
  %98 = load i8, ptr %x96, align 1
  %99 = load i32, ptr %x72, align 4
  %100 = load i32, ptr %x69, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %98, i32 noundef %99, i32 noundef %100)
  %101 = load i8, ptr %x98, align 1
  %102 = load i32, ptr %x70, align 4
  %103 = load i32, ptr %x67, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %101, i32 noundef %102, i32 noundef %103)
  %104 = load i8, ptr %x100, align 1
  %105 = load i32, ptr %x68, align 4
  %106 = load i32, ptr %x65, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %104, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x102, align 1
  %108 = load i32, ptr %x66, align 4
  %109 = load i32, ptr %x63, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %107, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x104, align 1
  %111 = load i32, ptr %x64, align 4
  %112 = load i32, ptr %x61, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i32, ptr %x35, align 4
  %114 = load i32, ptr %x83, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x108, align 1
  %116 = load i32, ptr %x37, align 4
  %117 = load i32, ptr %x85, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %115, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x110, align 1
  %119 = load i32, ptr %x39, align 4
  %120 = load i32, ptr %x87, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %118, i32 noundef %119, i32 noundef %120)
  %121 = load i8, ptr %x112, align 1
  %122 = load i32, ptr %x41, align 4
  %123 = load i32, ptr %x89, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %121, i32 noundef %122, i32 noundef %123)
  %124 = load i8, ptr %x114, align 1
  %125 = load i32, ptr %x43, align 4
  %126 = load i32, ptr %x91, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %124, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x116, align 1
  %128 = load i32, ptr %x45, align 4
  %129 = load i32, ptr %x93, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %127, i32 noundef %128, i32 noundef %129)
  %130 = load i8, ptr %x118, align 1
  %131 = load i32, ptr %x47, align 4
  %132 = load i32, ptr %x95, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %130, i32 noundef %131, i32 noundef %132)
  %133 = load i8, ptr %x120, align 1
  %134 = load i32, ptr %x49, align 4
  %135 = load i32, ptr %x97, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %133, i32 noundef %134, i32 noundef %135)
  %136 = load i8, ptr %x122, align 1
  %137 = load i32, ptr %x51, align 4
  %138 = load i32, ptr %x99, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %136, i32 noundef %137, i32 noundef %138)
  %139 = load i8, ptr %x124, align 1
  %140 = load i32, ptr %x53, align 4
  %141 = load i32, ptr %x101, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %139, i32 noundef %140, i32 noundef %141)
  %142 = load i8, ptr %x126, align 1
  %143 = load i32, ptr %x55, align 4
  %144 = load i32, ptr %x103, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %142, i32 noundef %143, i32 noundef %144)
  %145 = load i8, ptr %x128, align 1
  %146 = load i32, ptr %x57, align 4
  %147 = load i32, ptr %x105, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %145, i32 noundef %146, i32 noundef %147)
  %148 = load i8, ptr %x130, align 1
  %149 = load i8, ptr %x58, align 1
  %conv = zext i8 %149 to i32
  %150 = load i32, ptr %x14, align 4
  %add = add i32 %conv, %150
  %151 = load i8, ptr %x106, align 1
  %conv12 = zext i8 %151 to i32
  %152 = load i32, ptr %x62, align 4
  %add13 = add i32 %conv12, %152
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %148, i32 noundef %add, i32 noundef %add13)
  %153 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x133, ptr noundef %x134, i32 noundef %153, i32 noundef 210038273)
  %154 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %154, i32 noundef 725204769)
  %155 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %155, i32 noundef 1068522362)
  %156 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %156, i32 noundef 673605781)
  %157 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %157, i32 noundef -737326825)
  %158 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %158, i32 noundef 1252728005)
  %159 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %159, i32 noundef -1136768966)
  %160 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x147, ptr noundef %x148, i32 noundef %160, i32 noundef -55039673)
  %161 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x149, ptr noundef %x150, i32 noundef %161, i32 noundef -12746267)
  %162 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x151, ptr noundef %x152, i32 noundef %162, i32 noundef -551902183)
  %163 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x153, ptr noundef %x154, i32 noundef %163, i32 noundef 758225700)
  %164 = load i32, ptr %x1, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x155, ptr noundef %x156, i32 noundef %164, i32 noundef 431229353)
  %165 = load i32, ptr %x156, align 4
  %166 = load i32, ptr %x153, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext 0, i32 noundef %165, i32 noundef %166)
  %167 = load i8, ptr %x158, align 1
  %168 = load i32, ptr %x154, align 4
  %169 = load i32, ptr %x151, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x160, align 1
  %171 = load i32, ptr %x152, align 4
  %172 = load i32, ptr %x149, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x162, align 1
  %174 = load i32, ptr %x150, align 4
  %175 = load i32, ptr %x147, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x164, align 1
  %177 = load i32, ptr %x148, align 4
  %178 = load i32, ptr %x145, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x166, align 1
  %180 = load i32, ptr %x146, align 4
  %181 = load i32, ptr %x143, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %179, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x168, align 1
  %183 = load i32, ptr %x144, align 4
  %184 = load i32, ptr %x141, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x170, align 1
  %186 = load i32, ptr %x142, align 4
  %187 = load i32, ptr %x139, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x172, align 1
  %189 = load i32, ptr %x140, align 4
  %190 = load i32, ptr %x137, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %188, i32 noundef %189, i32 noundef %190)
  %191 = load i8, ptr %x174, align 1
  %192 = load i32, ptr %x138, align 4
  %193 = load i32, ptr %x135, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %191, i32 noundef %192, i32 noundef %193)
  %194 = load i8, ptr %x176, align 1
  %195 = load i32, ptr %x136, align 4
  %196 = load i32, ptr %x133, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %194, i32 noundef %195, i32 noundef %196)
  %197 = load i32, ptr %x109, align 4
  %198 = load i32, ptr %x155, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext 0, i32 noundef %197, i32 noundef %198)
  %199 = load i8, ptr %x180, align 1
  %200 = load i32, ptr %x111, align 4
  %201 = load i32, ptr %x157, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %199, i32 noundef %200, i32 noundef %201)
  %202 = load i8, ptr %x182, align 1
  %203 = load i32, ptr %x113, align 4
  %204 = load i32, ptr %x159, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %202, i32 noundef %203, i32 noundef %204)
  %205 = load i8, ptr %x184, align 1
  %206 = load i32, ptr %x115, align 4
  %207 = load i32, ptr %x161, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %205, i32 noundef %206, i32 noundef %207)
  %208 = load i8, ptr %x186, align 1
  %209 = load i32, ptr %x117, align 4
  %210 = load i32, ptr %x163, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %208, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x188, align 1
  %212 = load i32, ptr %x119, align 4
  %213 = load i32, ptr %x165, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %211, i32 noundef %212, i32 noundef %213)
  %214 = load i8, ptr %x190, align 1
  %215 = load i32, ptr %x121, align 4
  %216 = load i32, ptr %x167, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %214, i32 noundef %215, i32 noundef %216)
  %217 = load i8, ptr %x192, align 1
  %218 = load i32, ptr %x123, align 4
  %219 = load i32, ptr %x169, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %217, i32 noundef %218, i32 noundef %219)
  %220 = load i8, ptr %x194, align 1
  %221 = load i32, ptr %x125, align 4
  %222 = load i32, ptr %x171, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %220, i32 noundef %221, i32 noundef %222)
  %223 = load i8, ptr %x196, align 1
  %224 = load i32, ptr %x127, align 4
  %225 = load i32, ptr %x173, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %223, i32 noundef %224, i32 noundef %225)
  %226 = load i8, ptr %x198, align 1
  %227 = load i32, ptr %x129, align 4
  %228 = load i32, ptr %x175, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %226, i32 noundef %227, i32 noundef %228)
  %229 = load i8, ptr %x200, align 1
  %230 = load i32, ptr %x131, align 4
  %231 = load i32, ptr %x177, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %229, i32 noundef %230, i32 noundef %231)
  %232 = load i32, ptr %x179, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x203, ptr noundef %x204, i32 noundef %232, i32 noundef -393225147)
  %233 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x205, ptr noundef %x206, i32 noundef %233, i32 noundef -1)
  %234 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x207, ptr noundef %x208, i32 noundef %234, i32 noundef -1)
  %235 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x209, ptr noundef %x210, i32 noundef %235, i32 noundef -1)
  %236 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x211, ptr noundef %x212, i32 noundef %236, i32 noundef -1)
  %237 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x213, ptr noundef %x214, i32 noundef %237, i32 noundef -1)
  %238 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x215, ptr noundef %x216, i32 noundef %238, i32 noundef -1)
  %239 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x217, ptr noundef %x218, i32 noundef %239, i32 noundef -949793407)
  %240 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x219, ptr noundef %x220, i32 noundef %240, i32 noundef -197710369)
  %241 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x221, ptr noundef %x222, i32 noundef %241, i32 noundef 1478102450)
  %242 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x223, ptr noundef %x224, i32 noundef %242, i32 noundef 1219536762)
  %243 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x225, ptr noundef %x226, i32 noundef %243, i32 noundef -320071318)
  %244 = load i32, ptr %x203, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x227, ptr noundef %x228, i32 noundef %244, i32 noundef -859494029)
  %245 = load i32, ptr %x228, align 4
  %246 = load i32, ptr %x225, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext 0, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x230, align 1
  %248 = load i32, ptr %x226, align 4
  %249 = load i32, ptr %x223, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x232, align 1
  %251 = load i32, ptr %x224, align 4
  %252 = load i32, ptr %x221, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x234, align 1
  %254 = load i32, ptr %x222, align 4
  %255 = load i32, ptr %x219, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %253, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x236, align 1
  %257 = load i32, ptr %x220, align 4
  %258 = load i32, ptr %x217, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x238, align 1
  %260 = load i32, ptr %x218, align 4
  %261 = load i32, ptr %x215, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x240, align 1
  %263 = load i32, ptr %x216, align 4
  %264 = load i32, ptr %x213, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %262, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x242, align 1
  %266 = load i32, ptr %x214, align 4
  %267 = load i32, ptr %x211, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %265, i32 noundef %266, i32 noundef %267)
  %268 = load i8, ptr %x244, align 1
  %269 = load i32, ptr %x212, align 4
  %270 = load i32, ptr %x209, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x245, ptr noundef %x246, i8 noundef zeroext %268, i32 noundef %269, i32 noundef %270)
  %271 = load i8, ptr %x246, align 1
  %272 = load i32, ptr %x210, align 4
  %273 = load i32, ptr %x207, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x247, ptr noundef %x248, i8 noundef zeroext %271, i32 noundef %272, i32 noundef %273)
  %274 = load i8, ptr %x248, align 1
  %275 = load i32, ptr %x208, align 4
  %276 = load i32, ptr %x205, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext %274, i32 noundef %275, i32 noundef %276)
  %277 = load i32, ptr %x179, align 4
  %278 = load i32, ptr %x227, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext 0, i32 noundef %277, i32 noundef %278)
  %279 = load i8, ptr %x252, align 1
  %280 = load i32, ptr %x181, align 4
  %281 = load i32, ptr %x229, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %279, i32 noundef %280, i32 noundef %281)
  %282 = load i8, ptr %x254, align 1
  %283 = load i32, ptr %x183, align 4
  %284 = load i32, ptr %x231, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %282, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x256, align 1
  %286 = load i32, ptr %x185, align 4
  %287 = load i32, ptr %x233, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %285, i32 noundef %286, i32 noundef %287)
  %288 = load i8, ptr %x258, align 1
  %289 = load i32, ptr %x187, align 4
  %290 = load i32, ptr %x235, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %288, i32 noundef %289, i32 noundef %290)
  %291 = load i8, ptr %x260, align 1
  %292 = load i32, ptr %x189, align 4
  %293 = load i32, ptr %x237, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %291, i32 noundef %292, i32 noundef %293)
  %294 = load i8, ptr %x262, align 1
  %295 = load i32, ptr %x191, align 4
  %296 = load i32, ptr %x239, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %294, i32 noundef %295, i32 noundef %296)
  %297 = load i8, ptr %x264, align 1
  %298 = load i32, ptr %x193, align 4
  %299 = load i32, ptr %x241, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %297, i32 noundef %298, i32 noundef %299)
  %300 = load i8, ptr %x266, align 1
  %301 = load i32, ptr %x195, align 4
  %302 = load i32, ptr %x243, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %300, i32 noundef %301, i32 noundef %302)
  %303 = load i8, ptr %x268, align 1
  %304 = load i32, ptr %x197, align 4
  %305 = load i32, ptr %x245, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %303, i32 noundef %304, i32 noundef %305)
  %306 = load i8, ptr %x270, align 1
  %307 = load i32, ptr %x199, align 4
  %308 = load i32, ptr %x247, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %306, i32 noundef %307, i32 noundef %308)
  %309 = load i8, ptr %x272, align 1
  %310 = load i32, ptr %x201, align 4
  %311 = load i32, ptr %x249, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %309, i32 noundef %310, i32 noundef %311)
  %312 = load i8, ptr %x274, align 1
  %313 = load i8, ptr %x202, align 1
  %conv14 = zext i8 %313 to i32
  %314 = load i8, ptr %x132, align 1
  %conv15 = zext i8 %314 to i32
  %add16 = add i32 %conv14, %conv15
  %315 = load i8, ptr %x178, align 1
  %conv17 = zext i8 %315 to i32
  %316 = load i32, ptr %x134, align 4
  %add18 = add i32 %conv17, %316
  %add19 = add i32 %add16, %add18
  %317 = load i8, ptr %x250, align 1
  %conv20 = zext i8 %317 to i32
  %318 = load i32, ptr %x206, align 4
  %add21 = add i32 %conv20, %318
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %312, i32 noundef %add19, i32 noundef %add21)
  %319 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x277, ptr noundef %x278, i32 noundef %319, i32 noundef 210038273)
  %320 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x279, ptr noundef %x280, i32 noundef %320, i32 noundef 725204769)
  %321 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x281, ptr noundef %x282, i32 noundef %321, i32 noundef 1068522362)
  %322 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x283, ptr noundef %x284, i32 noundef %322, i32 noundef 673605781)
  %323 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x285, ptr noundef %x286, i32 noundef %323, i32 noundef -737326825)
  %324 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x287, ptr noundef %x288, i32 noundef %324, i32 noundef 1252728005)
  %325 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x289, ptr noundef %x290, i32 noundef %325, i32 noundef -1136768966)
  %326 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x291, ptr noundef %x292, i32 noundef %326, i32 noundef -55039673)
  %327 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x293, ptr noundef %x294, i32 noundef %327, i32 noundef -12746267)
  %328 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x295, ptr noundef %x296, i32 noundef %328, i32 noundef -551902183)
  %329 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x297, ptr noundef %x298, i32 noundef %329, i32 noundef 758225700)
  %330 = load i32, ptr %x2, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x299, ptr noundef %x300, i32 noundef %330, i32 noundef 431229353)
  %331 = load i32, ptr %x300, align 4
  %332 = load i32, ptr %x297, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext 0, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x302, align 1
  %334 = load i32, ptr %x298, align 4
  %335 = load i32, ptr %x295, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x304, align 1
  %337 = load i32, ptr %x296, align 4
  %338 = load i32, ptr %x293, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x306, align 1
  %340 = load i32, ptr %x294, align 4
  %341 = load i32, ptr %x291, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x308, align 1
  %343 = load i32, ptr %x292, align 4
  %344 = load i32, ptr %x289, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x310, align 1
  %346 = load i32, ptr %x290, align 4
  %347 = load i32, ptr %x287, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i8, ptr %x312, align 1
  %349 = load i32, ptr %x288, align 4
  %350 = load i32, ptr %x285, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %348, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x314, align 1
  %352 = load i32, ptr %x286, align 4
  %353 = load i32, ptr %x283, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %351, i32 noundef %352, i32 noundef %353)
  %354 = load i8, ptr %x316, align 1
  %355 = load i32, ptr %x284, align 4
  %356 = load i32, ptr %x281, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %354, i32 noundef %355, i32 noundef %356)
  %357 = load i8, ptr %x318, align 1
  %358 = load i32, ptr %x282, align 4
  %359 = load i32, ptr %x279, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %357, i32 noundef %358, i32 noundef %359)
  %360 = load i8, ptr %x320, align 1
  %361 = load i32, ptr %x280, align 4
  %362 = load i32, ptr %x277, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %360, i32 noundef %361, i32 noundef %362)
  %363 = load i32, ptr %x253, align 4
  %364 = load i32, ptr %x299, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext 0, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x324, align 1
  %366 = load i32, ptr %x255, align 4
  %367 = load i32, ptr %x301, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x326, align 1
  %369 = load i32, ptr %x257, align 4
  %370 = load i32, ptr %x303, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %368, i32 noundef %369, i32 noundef %370)
  %371 = load i8, ptr %x328, align 1
  %372 = load i32, ptr %x259, align 4
  %373 = load i32, ptr %x305, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %371, i32 noundef %372, i32 noundef %373)
  %374 = load i8, ptr %x330, align 1
  %375 = load i32, ptr %x261, align 4
  %376 = load i32, ptr %x307, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %374, i32 noundef %375, i32 noundef %376)
  %377 = load i8, ptr %x332, align 1
  %378 = load i32, ptr %x263, align 4
  %379 = load i32, ptr %x309, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %377, i32 noundef %378, i32 noundef %379)
  %380 = load i8, ptr %x334, align 1
  %381 = load i32, ptr %x265, align 4
  %382 = load i32, ptr %x311, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %380, i32 noundef %381, i32 noundef %382)
  %383 = load i8, ptr %x336, align 1
  %384 = load i32, ptr %x267, align 4
  %385 = load i32, ptr %x313, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %383, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x338, align 1
  %387 = load i32, ptr %x269, align 4
  %388 = load i32, ptr %x315, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x340, align 1
  %390 = load i32, ptr %x271, align 4
  %391 = load i32, ptr %x317, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x342, align 1
  %393 = load i32, ptr %x273, align 4
  %394 = load i32, ptr %x319, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x344, align 1
  %396 = load i32, ptr %x275, align 4
  %397 = load i32, ptr %x321, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i32, ptr %x323, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x347, ptr noundef %x348, i32 noundef %398, i32 noundef -393225147)
  %399 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x349, ptr noundef %x350, i32 noundef %399, i32 noundef -1)
  %400 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x351, ptr noundef %x352, i32 noundef %400, i32 noundef -1)
  %401 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x353, ptr noundef %x354, i32 noundef %401, i32 noundef -1)
  %402 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x355, ptr noundef %x356, i32 noundef %402, i32 noundef -1)
  %403 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x357, ptr noundef %x358, i32 noundef %403, i32 noundef -1)
  %404 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x359, ptr noundef %x360, i32 noundef %404, i32 noundef -1)
  %405 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x361, ptr noundef %x362, i32 noundef %405, i32 noundef -949793407)
  %406 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x363, ptr noundef %x364, i32 noundef %406, i32 noundef -197710369)
  %407 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x365, ptr noundef %x366, i32 noundef %407, i32 noundef 1478102450)
  %408 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x367, ptr noundef %x368, i32 noundef %408, i32 noundef 1219536762)
  %409 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x369, ptr noundef %x370, i32 noundef %409, i32 noundef -320071318)
  %410 = load i32, ptr %x347, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x371, ptr noundef %x372, i32 noundef %410, i32 noundef -859494029)
  %411 = load i32, ptr %x372, align 4
  %412 = load i32, ptr %x369, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext 0, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x374, align 1
  %414 = load i32, ptr %x370, align 4
  %415 = load i32, ptr %x367, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x376, align 1
  %417 = load i32, ptr %x368, align 4
  %418 = load i32, ptr %x365, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext %416, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x378, align 1
  %420 = load i32, ptr %x366, align 4
  %421 = load i32, ptr %x363, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x380, align 1
  %423 = load i32, ptr %x364, align 4
  %424 = load i32, ptr %x361, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x382, align 1
  %426 = load i32, ptr %x362, align 4
  %427 = load i32, ptr %x359, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %425, i32 noundef %426, i32 noundef %427)
  %428 = load i8, ptr %x384, align 1
  %429 = load i32, ptr %x360, align 4
  %430 = load i32, ptr %x357, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %428, i32 noundef %429, i32 noundef %430)
  %431 = load i8, ptr %x386, align 1
  %432 = load i32, ptr %x358, align 4
  %433 = load i32, ptr %x355, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %431, i32 noundef %432, i32 noundef %433)
  %434 = load i8, ptr %x388, align 1
  %435 = load i32, ptr %x356, align 4
  %436 = load i32, ptr %x353, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %434, i32 noundef %435, i32 noundef %436)
  %437 = load i8, ptr %x390, align 1
  %438 = load i32, ptr %x354, align 4
  %439 = load i32, ptr %x351, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %437, i32 noundef %438, i32 noundef %439)
  %440 = load i8, ptr %x392, align 1
  %441 = load i32, ptr %x352, align 4
  %442 = load i32, ptr %x349, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %440, i32 noundef %441, i32 noundef %442)
  %443 = load i32, ptr %x323, align 4
  %444 = load i32, ptr %x371, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext 0, i32 noundef %443, i32 noundef %444)
  %445 = load i8, ptr %x396, align 1
  %446 = load i32, ptr %x325, align 4
  %447 = load i32, ptr %x373, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %445, i32 noundef %446, i32 noundef %447)
  %448 = load i8, ptr %x398, align 1
  %449 = load i32, ptr %x327, align 4
  %450 = load i32, ptr %x375, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %448, i32 noundef %449, i32 noundef %450)
  %451 = load i8, ptr %x400, align 1
  %452 = load i32, ptr %x329, align 4
  %453 = load i32, ptr %x377, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %451, i32 noundef %452, i32 noundef %453)
  %454 = load i8, ptr %x402, align 1
  %455 = load i32, ptr %x331, align 4
  %456 = load i32, ptr %x379, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %454, i32 noundef %455, i32 noundef %456)
  %457 = load i8, ptr %x404, align 1
  %458 = load i32, ptr %x333, align 4
  %459 = load i32, ptr %x381, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %457, i32 noundef %458, i32 noundef %459)
  %460 = load i8, ptr %x406, align 1
  %461 = load i32, ptr %x335, align 4
  %462 = load i32, ptr %x383, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext %460, i32 noundef %461, i32 noundef %462)
  %463 = load i8, ptr %x408, align 1
  %464 = load i32, ptr %x337, align 4
  %465 = load i32, ptr %x385, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %463, i32 noundef %464, i32 noundef %465)
  %466 = load i8, ptr %x410, align 1
  %467 = load i32, ptr %x339, align 4
  %468 = load i32, ptr %x387, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %466, i32 noundef %467, i32 noundef %468)
  %469 = load i8, ptr %x412, align 1
  %470 = load i32, ptr %x341, align 4
  %471 = load i32, ptr %x389, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %469, i32 noundef %470, i32 noundef %471)
  %472 = load i8, ptr %x414, align 1
  %473 = load i32, ptr %x343, align 4
  %474 = load i32, ptr %x391, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %472, i32 noundef %473, i32 noundef %474)
  %475 = load i8, ptr %x416, align 1
  %476 = load i32, ptr %x345, align 4
  %477 = load i32, ptr %x393, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %475, i32 noundef %476, i32 noundef %477)
  %478 = load i8, ptr %x418, align 1
  %479 = load i8, ptr %x346, align 1
  %conv22 = zext i8 %479 to i32
  %480 = load i8, ptr %x276, align 1
  %conv23 = zext i8 %480 to i32
  %add24 = add i32 %conv22, %conv23
  %481 = load i8, ptr %x322, align 1
  %conv25 = zext i8 %481 to i32
  %482 = load i32, ptr %x278, align 4
  %add26 = add i32 %conv25, %482
  %add27 = add i32 %add24, %add26
  %483 = load i8, ptr %x394, align 1
  %conv28 = zext i8 %483 to i32
  %484 = load i32, ptr %x350, align 4
  %add29 = add i32 %conv28, %484
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %478, i32 noundef %add27, i32 noundef %add29)
  %485 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x421, ptr noundef %x422, i32 noundef %485, i32 noundef 210038273)
  %486 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %486, i32 noundef 725204769)
  %487 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %487, i32 noundef 1068522362)
  %488 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x427, ptr noundef %x428, i32 noundef %488, i32 noundef 673605781)
  %489 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x429, ptr noundef %x430, i32 noundef %489, i32 noundef -737326825)
  %490 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x431, ptr noundef %x432, i32 noundef %490, i32 noundef 1252728005)
  %491 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x433, ptr noundef %x434, i32 noundef %491, i32 noundef -1136768966)
  %492 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x435, ptr noundef %x436, i32 noundef %492, i32 noundef -55039673)
  %493 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x437, ptr noundef %x438, i32 noundef %493, i32 noundef -12746267)
  %494 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x439, ptr noundef %x440, i32 noundef %494, i32 noundef -551902183)
  %495 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x441, ptr noundef %x442, i32 noundef %495, i32 noundef 758225700)
  %496 = load i32, ptr %x3, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x443, ptr noundef %x444, i32 noundef %496, i32 noundef 431229353)
  %497 = load i32, ptr %x444, align 4
  %498 = load i32, ptr %x441, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext 0, i32 noundef %497, i32 noundef %498)
  %499 = load i8, ptr %x446, align 1
  %500 = load i32, ptr %x442, align 4
  %501 = load i32, ptr %x439, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %499, i32 noundef %500, i32 noundef %501)
  %502 = load i8, ptr %x448, align 1
  %503 = load i32, ptr %x440, align 4
  %504 = load i32, ptr %x437, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %502, i32 noundef %503, i32 noundef %504)
  %505 = load i8, ptr %x450, align 1
  %506 = load i32, ptr %x438, align 4
  %507 = load i32, ptr %x435, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %505, i32 noundef %506, i32 noundef %507)
  %508 = load i8, ptr %x452, align 1
  %509 = load i32, ptr %x436, align 4
  %510 = load i32, ptr %x433, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %508, i32 noundef %509, i32 noundef %510)
  %511 = load i8, ptr %x454, align 1
  %512 = load i32, ptr %x434, align 4
  %513 = load i32, ptr %x431, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext %511, i32 noundef %512, i32 noundef %513)
  %514 = load i8, ptr %x456, align 1
  %515 = load i32, ptr %x432, align 4
  %516 = load i32, ptr %x429, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext %514, i32 noundef %515, i32 noundef %516)
  %517 = load i8, ptr %x458, align 1
  %518 = load i32, ptr %x430, align 4
  %519 = load i32, ptr %x427, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %517, i32 noundef %518, i32 noundef %519)
  %520 = load i8, ptr %x460, align 1
  %521 = load i32, ptr %x428, align 4
  %522 = load i32, ptr %x425, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %520, i32 noundef %521, i32 noundef %522)
  %523 = load i8, ptr %x462, align 1
  %524 = load i32, ptr %x426, align 4
  %525 = load i32, ptr %x423, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %523, i32 noundef %524, i32 noundef %525)
  %526 = load i8, ptr %x464, align 1
  %527 = load i32, ptr %x424, align 4
  %528 = load i32, ptr %x421, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %526, i32 noundef %527, i32 noundef %528)
  %529 = load i32, ptr %x397, align 4
  %530 = load i32, ptr %x443, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext 0, i32 noundef %529, i32 noundef %530)
  %531 = load i8, ptr %x468, align 1
  %532 = load i32, ptr %x399, align 4
  %533 = load i32, ptr %x445, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %531, i32 noundef %532, i32 noundef %533)
  %534 = load i8, ptr %x470, align 1
  %535 = load i32, ptr %x401, align 4
  %536 = load i32, ptr %x447, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %534, i32 noundef %535, i32 noundef %536)
  %537 = load i8, ptr %x472, align 1
  %538 = load i32, ptr %x403, align 4
  %539 = load i32, ptr %x449, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %537, i32 noundef %538, i32 noundef %539)
  %540 = load i8, ptr %x474, align 1
  %541 = load i32, ptr %x405, align 4
  %542 = load i32, ptr %x451, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext %540, i32 noundef %541, i32 noundef %542)
  %543 = load i8, ptr %x476, align 1
  %544 = load i32, ptr %x407, align 4
  %545 = load i32, ptr %x453, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext %543, i32 noundef %544, i32 noundef %545)
  %546 = load i8, ptr %x478, align 1
  %547 = load i32, ptr %x409, align 4
  %548 = load i32, ptr %x455, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x479, ptr noundef %x480, i8 noundef zeroext %546, i32 noundef %547, i32 noundef %548)
  %549 = load i8, ptr %x480, align 1
  %550 = load i32, ptr %x411, align 4
  %551 = load i32, ptr %x457, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x481, ptr noundef %x482, i8 noundef zeroext %549, i32 noundef %550, i32 noundef %551)
  %552 = load i8, ptr %x482, align 1
  %553 = load i32, ptr %x413, align 4
  %554 = load i32, ptr %x459, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x483, ptr noundef %x484, i8 noundef zeroext %552, i32 noundef %553, i32 noundef %554)
  %555 = load i8, ptr %x484, align 1
  %556 = load i32, ptr %x415, align 4
  %557 = load i32, ptr %x461, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x485, ptr noundef %x486, i8 noundef zeroext %555, i32 noundef %556, i32 noundef %557)
  %558 = load i8, ptr %x486, align 1
  %559 = load i32, ptr %x417, align 4
  %560 = load i32, ptr %x463, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x487, ptr noundef %x488, i8 noundef zeroext %558, i32 noundef %559, i32 noundef %560)
  %561 = load i8, ptr %x488, align 1
  %562 = load i32, ptr %x419, align 4
  %563 = load i32, ptr %x465, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext %561, i32 noundef %562, i32 noundef %563)
  %564 = load i32, ptr %x467, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x491, ptr noundef %x492, i32 noundef %564, i32 noundef -393225147)
  %565 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x493, ptr noundef %x494, i32 noundef %565, i32 noundef -1)
  %566 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x495, ptr noundef %x496, i32 noundef %566, i32 noundef -1)
  %567 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x497, ptr noundef %x498, i32 noundef %567, i32 noundef -1)
  %568 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x499, ptr noundef %x500, i32 noundef %568, i32 noundef -1)
  %569 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x501, ptr noundef %x502, i32 noundef %569, i32 noundef -1)
  %570 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x503, ptr noundef %x504, i32 noundef %570, i32 noundef -1)
  %571 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x505, ptr noundef %x506, i32 noundef %571, i32 noundef -949793407)
  %572 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x507, ptr noundef %x508, i32 noundef %572, i32 noundef -197710369)
  %573 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x509, ptr noundef %x510, i32 noundef %573, i32 noundef 1478102450)
  %574 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x511, ptr noundef %x512, i32 noundef %574, i32 noundef 1219536762)
  %575 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x513, ptr noundef %x514, i32 noundef %575, i32 noundef -320071318)
  %576 = load i32, ptr %x491, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x515, ptr noundef %x516, i32 noundef %576, i32 noundef -859494029)
  %577 = load i32, ptr %x516, align 4
  %578 = load i32, ptr %x513, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext 0, i32 noundef %577, i32 noundef %578)
  %579 = load i8, ptr %x518, align 1
  %580 = load i32, ptr %x514, align 4
  %581 = load i32, ptr %x511, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %579, i32 noundef %580, i32 noundef %581)
  %582 = load i8, ptr %x520, align 1
  %583 = load i32, ptr %x512, align 4
  %584 = load i32, ptr %x509, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %582, i32 noundef %583, i32 noundef %584)
  %585 = load i8, ptr %x522, align 1
  %586 = load i32, ptr %x510, align 4
  %587 = load i32, ptr %x507, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %585, i32 noundef %586, i32 noundef %587)
  %588 = load i8, ptr %x524, align 1
  %589 = load i32, ptr %x508, align 4
  %590 = load i32, ptr %x505, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x525, ptr noundef %x526, i8 noundef zeroext %588, i32 noundef %589, i32 noundef %590)
  %591 = load i8, ptr %x526, align 1
  %592 = load i32, ptr %x506, align 4
  %593 = load i32, ptr %x503, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext %591, i32 noundef %592, i32 noundef %593)
  %594 = load i8, ptr %x528, align 1
  %595 = load i32, ptr %x504, align 4
  %596 = load i32, ptr %x501, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x529, ptr noundef %x530, i8 noundef zeroext %594, i32 noundef %595, i32 noundef %596)
  %597 = load i8, ptr %x530, align 1
  %598 = load i32, ptr %x502, align 4
  %599 = load i32, ptr %x499, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext %597, i32 noundef %598, i32 noundef %599)
  %600 = load i8, ptr %x532, align 1
  %601 = load i32, ptr %x500, align 4
  %602 = load i32, ptr %x497, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x533, ptr noundef %x534, i8 noundef zeroext %600, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x534, align 1
  %604 = load i32, ptr %x498, align 4
  %605 = load i32, ptr %x495, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext %603, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x536, align 1
  %607 = load i32, ptr %x496, align 4
  %608 = load i32, ptr %x493, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext %606, i32 noundef %607, i32 noundef %608)
  %609 = load i32, ptr %x467, align 4
  %610 = load i32, ptr %x515, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext 0, i32 noundef %609, i32 noundef %610)
  %611 = load i8, ptr %x540, align 1
  %612 = load i32, ptr %x469, align 4
  %613 = load i32, ptr %x517, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %611, i32 noundef %612, i32 noundef %613)
  %614 = load i8, ptr %x542, align 1
  %615 = load i32, ptr %x471, align 4
  %616 = load i32, ptr %x519, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %614, i32 noundef %615, i32 noundef %616)
  %617 = load i8, ptr %x544, align 1
  %618 = load i32, ptr %x473, align 4
  %619 = load i32, ptr %x521, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %617, i32 noundef %618, i32 noundef %619)
  %620 = load i8, ptr %x546, align 1
  %621 = load i32, ptr %x475, align 4
  %622 = load i32, ptr %x523, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %620, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x548, align 1
  %624 = load i32, ptr %x477, align 4
  %625 = load i32, ptr %x525, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i8, ptr %x550, align 1
  %627 = load i32, ptr %x479, align 4
  %628 = load i32, ptr %x527, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %626, i32 noundef %627, i32 noundef %628)
  %629 = load i8, ptr %x552, align 1
  %630 = load i32, ptr %x481, align 4
  %631 = load i32, ptr %x529, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext %629, i32 noundef %630, i32 noundef %631)
  %632 = load i8, ptr %x554, align 1
  %633 = load i32, ptr %x483, align 4
  %634 = load i32, ptr %x531, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %632, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x556, align 1
  %636 = load i32, ptr %x485, align 4
  %637 = load i32, ptr %x533, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x558, align 1
  %639 = load i32, ptr %x487, align 4
  %640 = load i32, ptr %x535, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x560, align 1
  %642 = load i32, ptr %x489, align 4
  %643 = load i32, ptr %x537, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %641, i32 noundef %642, i32 noundef %643)
  %644 = load i8, ptr %x562, align 1
  %645 = load i8, ptr %x490, align 1
  %conv30 = zext i8 %645 to i32
  %646 = load i8, ptr %x420, align 1
  %conv31 = zext i8 %646 to i32
  %add32 = add i32 %conv30, %conv31
  %647 = load i8, ptr %x466, align 1
  %conv33 = zext i8 %647 to i32
  %648 = load i32, ptr %x422, align 4
  %add34 = add i32 %conv33, %648
  %add35 = add i32 %add32, %add34
  %649 = load i8, ptr %x538, align 1
  %conv36 = zext i8 %649 to i32
  %650 = load i32, ptr %x494, align 4
  %add37 = add i32 %conv36, %650
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext %644, i32 noundef %add35, i32 noundef %add37)
  %651 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x565, ptr noundef %x566, i32 noundef %651, i32 noundef 210038273)
  %652 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x567, ptr noundef %x568, i32 noundef %652, i32 noundef 725204769)
  %653 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x569, ptr noundef %x570, i32 noundef %653, i32 noundef 1068522362)
  %654 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x571, ptr noundef %x572, i32 noundef %654, i32 noundef 673605781)
  %655 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x573, ptr noundef %x574, i32 noundef %655, i32 noundef -737326825)
  %656 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x575, ptr noundef %x576, i32 noundef %656, i32 noundef 1252728005)
  %657 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x577, ptr noundef %x578, i32 noundef %657, i32 noundef -1136768966)
  %658 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x579, ptr noundef %x580, i32 noundef %658, i32 noundef -55039673)
  %659 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x581, ptr noundef %x582, i32 noundef %659, i32 noundef -12746267)
  %660 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x583, ptr noundef %x584, i32 noundef %660, i32 noundef -551902183)
  %661 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x585, ptr noundef %x586, i32 noundef %661, i32 noundef 758225700)
  %662 = load i32, ptr %x4, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x587, ptr noundef %x588, i32 noundef %662, i32 noundef 431229353)
  %663 = load i32, ptr %x588, align 4
  %664 = load i32, ptr %x585, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext 0, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x590, align 1
  %666 = load i32, ptr %x586, align 4
  %667 = load i32, ptr %x583, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x592, align 1
  %669 = load i32, ptr %x584, align 4
  %670 = load i32, ptr %x581, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x594, align 1
  %672 = load i32, ptr %x582, align 4
  %673 = load i32, ptr %x579, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %671, i32 noundef %672, i32 noundef %673)
  %674 = load i8, ptr %x596, align 1
  %675 = load i32, ptr %x580, align 4
  %676 = load i32, ptr %x577, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %674, i32 noundef %675, i32 noundef %676)
  %677 = load i8, ptr %x598, align 1
  %678 = load i32, ptr %x578, align 4
  %679 = load i32, ptr %x575, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext %677, i32 noundef %678, i32 noundef %679)
  %680 = load i8, ptr %x600, align 1
  %681 = load i32, ptr %x576, align 4
  %682 = load i32, ptr %x573, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %680, i32 noundef %681, i32 noundef %682)
  %683 = load i8, ptr %x602, align 1
  %684 = load i32, ptr %x574, align 4
  %685 = load i32, ptr %x571, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x603, ptr noundef %x604, i8 noundef zeroext %683, i32 noundef %684, i32 noundef %685)
  %686 = load i8, ptr %x604, align 1
  %687 = load i32, ptr %x572, align 4
  %688 = load i32, ptr %x569, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x605, ptr noundef %x606, i8 noundef zeroext %686, i32 noundef %687, i32 noundef %688)
  %689 = load i8, ptr %x606, align 1
  %690 = load i32, ptr %x570, align 4
  %691 = load i32, ptr %x567, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x607, ptr noundef %x608, i8 noundef zeroext %689, i32 noundef %690, i32 noundef %691)
  %692 = load i8, ptr %x608, align 1
  %693 = load i32, ptr %x568, align 4
  %694 = load i32, ptr %x565, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x609, ptr noundef %x610, i8 noundef zeroext %692, i32 noundef %693, i32 noundef %694)
  %695 = load i32, ptr %x541, align 4
  %696 = load i32, ptr %x587, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x611, ptr noundef %x612, i8 noundef zeroext 0, i32 noundef %695, i32 noundef %696)
  %697 = load i8, ptr %x612, align 1
  %698 = load i32, ptr %x543, align 4
  %699 = load i32, ptr %x589, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x613, ptr noundef %x614, i8 noundef zeroext %697, i32 noundef %698, i32 noundef %699)
  %700 = load i8, ptr %x614, align 1
  %701 = load i32, ptr %x545, align 4
  %702 = load i32, ptr %x591, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x615, ptr noundef %x616, i8 noundef zeroext %700, i32 noundef %701, i32 noundef %702)
  %703 = load i8, ptr %x616, align 1
  %704 = load i32, ptr %x547, align 4
  %705 = load i32, ptr %x593, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext %703, i32 noundef %704, i32 noundef %705)
  %706 = load i8, ptr %x618, align 1
  %707 = load i32, ptr %x549, align 4
  %708 = load i32, ptr %x595, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x619, ptr noundef %x620, i8 noundef zeroext %706, i32 noundef %707, i32 noundef %708)
  %709 = load i8, ptr %x620, align 1
  %710 = load i32, ptr %x551, align 4
  %711 = load i32, ptr %x597, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x621, ptr noundef %x622, i8 noundef zeroext %709, i32 noundef %710, i32 noundef %711)
  %712 = load i8, ptr %x622, align 1
  %713 = load i32, ptr %x553, align 4
  %714 = load i32, ptr %x599, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x623, ptr noundef %x624, i8 noundef zeroext %712, i32 noundef %713, i32 noundef %714)
  %715 = load i8, ptr %x624, align 1
  %716 = load i32, ptr %x555, align 4
  %717 = load i32, ptr %x601, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x625, ptr noundef %x626, i8 noundef zeroext %715, i32 noundef %716, i32 noundef %717)
  %718 = load i8, ptr %x626, align 1
  %719 = load i32, ptr %x557, align 4
  %720 = load i32, ptr %x603, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext %718, i32 noundef %719, i32 noundef %720)
  %721 = load i8, ptr %x628, align 1
  %722 = load i32, ptr %x559, align 4
  %723 = load i32, ptr %x605, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext %721, i32 noundef %722, i32 noundef %723)
  %724 = load i8, ptr %x630, align 1
  %725 = load i32, ptr %x561, align 4
  %726 = load i32, ptr %x607, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %724, i32 noundef %725, i32 noundef %726)
  %727 = load i8, ptr %x632, align 1
  %728 = load i32, ptr %x563, align 4
  %729 = load i32, ptr %x609, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext %727, i32 noundef %728, i32 noundef %729)
  %730 = load i32, ptr %x611, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x635, ptr noundef %x636, i32 noundef %730, i32 noundef -393225147)
  %731 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x637, ptr noundef %x638, i32 noundef %731, i32 noundef -1)
  %732 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x639, ptr noundef %x640, i32 noundef %732, i32 noundef -1)
  %733 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x641, ptr noundef %x642, i32 noundef %733, i32 noundef -1)
  %734 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x643, ptr noundef %x644, i32 noundef %734, i32 noundef -1)
  %735 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x645, ptr noundef %x646, i32 noundef %735, i32 noundef -1)
  %736 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x647, ptr noundef %x648, i32 noundef %736, i32 noundef -1)
  %737 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x649, ptr noundef %x650, i32 noundef %737, i32 noundef -949793407)
  %738 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x651, ptr noundef %x652, i32 noundef %738, i32 noundef -197710369)
  %739 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x653, ptr noundef %x654, i32 noundef %739, i32 noundef 1478102450)
  %740 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x655, ptr noundef %x656, i32 noundef %740, i32 noundef 1219536762)
  %741 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x657, ptr noundef %x658, i32 noundef %741, i32 noundef -320071318)
  %742 = load i32, ptr %x635, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x659, ptr noundef %x660, i32 noundef %742, i32 noundef -859494029)
  %743 = load i32, ptr %x660, align 4
  %744 = load i32, ptr %x657, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x661, ptr noundef %x662, i8 noundef zeroext 0, i32 noundef %743, i32 noundef %744)
  %745 = load i8, ptr %x662, align 1
  %746 = load i32, ptr %x658, align 4
  %747 = load i32, ptr %x655, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext %745, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x664, align 1
  %749 = load i32, ptr %x656, align 4
  %750 = load i32, ptr %x653, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x665, ptr noundef %x666, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x666, align 1
  %752 = load i32, ptr %x654, align 4
  %753 = load i32, ptr %x651, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x668, align 1
  %755 = load i32, ptr %x652, align 4
  %756 = load i32, ptr %x649, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x669, ptr noundef %x670, i8 noundef zeroext %754, i32 noundef %755, i32 noundef %756)
  %757 = load i8, ptr %x670, align 1
  %758 = load i32, ptr %x650, align 4
  %759 = load i32, ptr %x647, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x671, ptr noundef %x672, i8 noundef zeroext %757, i32 noundef %758, i32 noundef %759)
  %760 = load i8, ptr %x672, align 1
  %761 = load i32, ptr %x648, align 4
  %762 = load i32, ptr %x645, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x673, ptr noundef %x674, i8 noundef zeroext %760, i32 noundef %761, i32 noundef %762)
  %763 = load i8, ptr %x674, align 1
  %764 = load i32, ptr %x646, align 4
  %765 = load i32, ptr %x643, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x675, ptr noundef %x676, i8 noundef zeroext %763, i32 noundef %764, i32 noundef %765)
  %766 = load i8, ptr %x676, align 1
  %767 = load i32, ptr %x644, align 4
  %768 = load i32, ptr %x641, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x677, ptr noundef %x678, i8 noundef zeroext %766, i32 noundef %767, i32 noundef %768)
  %769 = load i8, ptr %x678, align 1
  %770 = load i32, ptr %x642, align 4
  %771 = load i32, ptr %x639, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x679, ptr noundef %x680, i8 noundef zeroext %769, i32 noundef %770, i32 noundef %771)
  %772 = load i8, ptr %x680, align 1
  %773 = load i32, ptr %x640, align 4
  %774 = load i32, ptr %x637, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext %772, i32 noundef %773, i32 noundef %774)
  %775 = load i32, ptr %x611, align 4
  %776 = load i32, ptr %x659, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext 0, i32 noundef %775, i32 noundef %776)
  %777 = load i8, ptr %x684, align 1
  %778 = load i32, ptr %x613, align 4
  %779 = load i32, ptr %x661, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext %777, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x686, align 1
  %781 = load i32, ptr %x615, align 4
  %782 = load i32, ptr %x663, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %780, i32 noundef %781, i32 noundef %782)
  %783 = load i8, ptr %x688, align 1
  %784 = load i32, ptr %x617, align 4
  %785 = load i32, ptr %x665, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %783, i32 noundef %784, i32 noundef %785)
  %786 = load i8, ptr %x690, align 1
  %787 = load i32, ptr %x619, align 4
  %788 = load i32, ptr %x667, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %786, i32 noundef %787, i32 noundef %788)
  %789 = load i8, ptr %x692, align 1
  %790 = load i32, ptr %x621, align 4
  %791 = load i32, ptr %x669, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x693, ptr noundef %x694, i8 noundef zeroext %789, i32 noundef %790, i32 noundef %791)
  %792 = load i8, ptr %x694, align 1
  %793 = load i32, ptr %x623, align 4
  %794 = load i32, ptr %x671, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext %792, i32 noundef %793, i32 noundef %794)
  %795 = load i8, ptr %x696, align 1
  %796 = load i32, ptr %x625, align 4
  %797 = load i32, ptr %x673, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x697, ptr noundef %x698, i8 noundef zeroext %795, i32 noundef %796, i32 noundef %797)
  %798 = load i8, ptr %x698, align 1
  %799 = load i32, ptr %x627, align 4
  %800 = load i32, ptr %x675, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x699, ptr noundef %x700, i8 noundef zeroext %798, i32 noundef %799, i32 noundef %800)
  %801 = load i8, ptr %x700, align 1
  %802 = load i32, ptr %x629, align 4
  %803 = load i32, ptr %x677, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x701, ptr noundef %x702, i8 noundef zeroext %801, i32 noundef %802, i32 noundef %803)
  %804 = load i8, ptr %x702, align 1
  %805 = load i32, ptr %x631, align 4
  %806 = load i32, ptr %x679, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x703, ptr noundef %x704, i8 noundef zeroext %804, i32 noundef %805, i32 noundef %806)
  %807 = load i8, ptr %x704, align 1
  %808 = load i32, ptr %x633, align 4
  %809 = load i32, ptr %x681, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x705, ptr noundef %x706, i8 noundef zeroext %807, i32 noundef %808, i32 noundef %809)
  %810 = load i8, ptr %x706, align 1
  %811 = load i8, ptr %x634, align 1
  %conv38 = zext i8 %811 to i32
  %812 = load i8, ptr %x564, align 1
  %conv39 = zext i8 %812 to i32
  %add40 = add i32 %conv38, %conv39
  %813 = load i8, ptr %x610, align 1
  %conv41 = zext i8 %813 to i32
  %814 = load i32, ptr %x566, align 4
  %add42 = add i32 %conv41, %814
  %add43 = add i32 %add40, %add42
  %815 = load i8, ptr %x682, align 1
  %conv44 = zext i8 %815 to i32
  %816 = load i32, ptr %x638, align 4
  %add45 = add i32 %conv44, %816
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x707, ptr noundef %x708, i8 noundef zeroext %810, i32 noundef %add43, i32 noundef %add45)
  %817 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x709, ptr noundef %x710, i32 noundef %817, i32 noundef 210038273)
  %818 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x711, ptr noundef %x712, i32 noundef %818, i32 noundef 725204769)
  %819 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x713, ptr noundef %x714, i32 noundef %819, i32 noundef 1068522362)
  %820 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x715, ptr noundef %x716, i32 noundef %820, i32 noundef 673605781)
  %821 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x717, ptr noundef %x718, i32 noundef %821, i32 noundef -737326825)
  %822 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x719, ptr noundef %x720, i32 noundef %822, i32 noundef 1252728005)
  %823 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x721, ptr noundef %x722, i32 noundef %823, i32 noundef -1136768966)
  %824 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x723, ptr noundef %x724, i32 noundef %824, i32 noundef -55039673)
  %825 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x725, ptr noundef %x726, i32 noundef %825, i32 noundef -12746267)
  %826 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x727, ptr noundef %x728, i32 noundef %826, i32 noundef -551902183)
  %827 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x729, ptr noundef %x730, i32 noundef %827, i32 noundef 758225700)
  %828 = load i32, ptr %x5, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x731, ptr noundef %x732, i32 noundef %828, i32 noundef 431229353)
  %829 = load i32, ptr %x732, align 4
  %830 = load i32, ptr %x729, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x733, ptr noundef %x734, i8 noundef zeroext 0, i32 noundef %829, i32 noundef %830)
  %831 = load i8, ptr %x734, align 1
  %832 = load i32, ptr %x730, align 4
  %833 = load i32, ptr %x727, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x735, ptr noundef %x736, i8 noundef zeroext %831, i32 noundef %832, i32 noundef %833)
  %834 = load i8, ptr %x736, align 1
  %835 = load i32, ptr %x728, align 4
  %836 = load i32, ptr %x725, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x737, ptr noundef %x738, i8 noundef zeroext %834, i32 noundef %835, i32 noundef %836)
  %837 = load i8, ptr %x738, align 1
  %838 = load i32, ptr %x726, align 4
  %839 = load i32, ptr %x723, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x739, ptr noundef %x740, i8 noundef zeroext %837, i32 noundef %838, i32 noundef %839)
  %840 = load i8, ptr %x740, align 1
  %841 = load i32, ptr %x724, align 4
  %842 = load i32, ptr %x721, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x741, ptr noundef %x742, i8 noundef zeroext %840, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x742, align 1
  %844 = load i32, ptr %x722, align 4
  %845 = load i32, ptr %x719, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x743, ptr noundef %x744, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i8, ptr %x744, align 1
  %847 = load i32, ptr %x720, align 4
  %848 = load i32, ptr %x717, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x745, ptr noundef %x746, i8 noundef zeroext %846, i32 noundef %847, i32 noundef %848)
  %849 = load i8, ptr %x746, align 1
  %850 = load i32, ptr %x718, align 4
  %851 = load i32, ptr %x715, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x747, ptr noundef %x748, i8 noundef zeroext %849, i32 noundef %850, i32 noundef %851)
  %852 = load i8, ptr %x748, align 1
  %853 = load i32, ptr %x716, align 4
  %854 = load i32, ptr %x713, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x749, ptr noundef %x750, i8 noundef zeroext %852, i32 noundef %853, i32 noundef %854)
  %855 = load i8, ptr %x750, align 1
  %856 = load i32, ptr %x714, align 4
  %857 = load i32, ptr %x711, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x751, ptr noundef %x752, i8 noundef zeroext %855, i32 noundef %856, i32 noundef %857)
  %858 = load i8, ptr %x752, align 1
  %859 = load i32, ptr %x712, align 4
  %860 = load i32, ptr %x709, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x753, ptr noundef %x754, i8 noundef zeroext %858, i32 noundef %859, i32 noundef %860)
  %861 = load i32, ptr %x685, align 4
  %862 = load i32, ptr %x731, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x755, ptr noundef %x756, i8 noundef zeroext 0, i32 noundef %861, i32 noundef %862)
  %863 = load i8, ptr %x756, align 1
  %864 = load i32, ptr %x687, align 4
  %865 = load i32, ptr %x733, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x757, ptr noundef %x758, i8 noundef zeroext %863, i32 noundef %864, i32 noundef %865)
  %866 = load i8, ptr %x758, align 1
  %867 = load i32, ptr %x689, align 4
  %868 = load i32, ptr %x735, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x759, ptr noundef %x760, i8 noundef zeroext %866, i32 noundef %867, i32 noundef %868)
  %869 = load i8, ptr %x760, align 1
  %870 = load i32, ptr %x691, align 4
  %871 = load i32, ptr %x737, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x761, ptr noundef %x762, i8 noundef zeroext %869, i32 noundef %870, i32 noundef %871)
  %872 = load i8, ptr %x762, align 1
  %873 = load i32, ptr %x693, align 4
  %874 = load i32, ptr %x739, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x763, ptr noundef %x764, i8 noundef zeroext %872, i32 noundef %873, i32 noundef %874)
  %875 = load i8, ptr %x764, align 1
  %876 = load i32, ptr %x695, align 4
  %877 = load i32, ptr %x741, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x765, ptr noundef %x766, i8 noundef zeroext %875, i32 noundef %876, i32 noundef %877)
  %878 = load i8, ptr %x766, align 1
  %879 = load i32, ptr %x697, align 4
  %880 = load i32, ptr %x743, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x767, ptr noundef %x768, i8 noundef zeroext %878, i32 noundef %879, i32 noundef %880)
  %881 = load i8, ptr %x768, align 1
  %882 = load i32, ptr %x699, align 4
  %883 = load i32, ptr %x745, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x769, ptr noundef %x770, i8 noundef zeroext %881, i32 noundef %882, i32 noundef %883)
  %884 = load i8, ptr %x770, align 1
  %885 = load i32, ptr %x701, align 4
  %886 = load i32, ptr %x747, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x771, ptr noundef %x772, i8 noundef zeroext %884, i32 noundef %885, i32 noundef %886)
  %887 = load i8, ptr %x772, align 1
  %888 = load i32, ptr %x703, align 4
  %889 = load i32, ptr %x749, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x773, ptr noundef %x774, i8 noundef zeroext %887, i32 noundef %888, i32 noundef %889)
  %890 = load i8, ptr %x774, align 1
  %891 = load i32, ptr %x705, align 4
  %892 = load i32, ptr %x751, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x775, ptr noundef %x776, i8 noundef zeroext %890, i32 noundef %891, i32 noundef %892)
  %893 = load i8, ptr %x776, align 1
  %894 = load i32, ptr %x707, align 4
  %895 = load i32, ptr %x753, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x777, ptr noundef %x778, i8 noundef zeroext %893, i32 noundef %894, i32 noundef %895)
  %896 = load i32, ptr %x755, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x779, ptr noundef %x780, i32 noundef %896, i32 noundef -393225147)
  %897 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x781, ptr noundef %x782, i32 noundef %897, i32 noundef -1)
  %898 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x783, ptr noundef %x784, i32 noundef %898, i32 noundef -1)
  %899 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x785, ptr noundef %x786, i32 noundef %899, i32 noundef -1)
  %900 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x787, ptr noundef %x788, i32 noundef %900, i32 noundef -1)
  %901 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x789, ptr noundef %x790, i32 noundef %901, i32 noundef -1)
  %902 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x791, ptr noundef %x792, i32 noundef %902, i32 noundef -1)
  %903 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x793, ptr noundef %x794, i32 noundef %903, i32 noundef -949793407)
  %904 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x795, ptr noundef %x796, i32 noundef %904, i32 noundef -197710369)
  %905 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x797, ptr noundef %x798, i32 noundef %905, i32 noundef 1478102450)
  %906 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x799, ptr noundef %x800, i32 noundef %906, i32 noundef 1219536762)
  %907 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x801, ptr noundef %x802, i32 noundef %907, i32 noundef -320071318)
  %908 = load i32, ptr %x779, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x803, ptr noundef %x804, i32 noundef %908, i32 noundef -859494029)
  %909 = load i32, ptr %x804, align 4
  %910 = load i32, ptr %x801, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x805, ptr noundef %x806, i8 noundef zeroext 0, i32 noundef %909, i32 noundef %910)
  %911 = load i8, ptr %x806, align 1
  %912 = load i32, ptr %x802, align 4
  %913 = load i32, ptr %x799, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x807, ptr noundef %x808, i8 noundef zeroext %911, i32 noundef %912, i32 noundef %913)
  %914 = load i8, ptr %x808, align 1
  %915 = load i32, ptr %x800, align 4
  %916 = load i32, ptr %x797, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x809, ptr noundef %x810, i8 noundef zeroext %914, i32 noundef %915, i32 noundef %916)
  %917 = load i8, ptr %x810, align 1
  %918 = load i32, ptr %x798, align 4
  %919 = load i32, ptr %x795, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x811, ptr noundef %x812, i8 noundef zeroext %917, i32 noundef %918, i32 noundef %919)
  %920 = load i8, ptr %x812, align 1
  %921 = load i32, ptr %x796, align 4
  %922 = load i32, ptr %x793, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x813, ptr noundef %x814, i8 noundef zeroext %920, i32 noundef %921, i32 noundef %922)
  %923 = load i8, ptr %x814, align 1
  %924 = load i32, ptr %x794, align 4
  %925 = load i32, ptr %x791, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x815, ptr noundef %x816, i8 noundef zeroext %923, i32 noundef %924, i32 noundef %925)
  %926 = load i8, ptr %x816, align 1
  %927 = load i32, ptr %x792, align 4
  %928 = load i32, ptr %x789, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x817, ptr noundef %x818, i8 noundef zeroext %926, i32 noundef %927, i32 noundef %928)
  %929 = load i8, ptr %x818, align 1
  %930 = load i32, ptr %x790, align 4
  %931 = load i32, ptr %x787, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x819, ptr noundef %x820, i8 noundef zeroext %929, i32 noundef %930, i32 noundef %931)
  %932 = load i8, ptr %x820, align 1
  %933 = load i32, ptr %x788, align 4
  %934 = load i32, ptr %x785, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x821, ptr noundef %x822, i8 noundef zeroext %932, i32 noundef %933, i32 noundef %934)
  %935 = load i8, ptr %x822, align 1
  %936 = load i32, ptr %x786, align 4
  %937 = load i32, ptr %x783, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x823, ptr noundef %x824, i8 noundef zeroext %935, i32 noundef %936, i32 noundef %937)
  %938 = load i8, ptr %x824, align 1
  %939 = load i32, ptr %x784, align 4
  %940 = load i32, ptr %x781, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x825, ptr noundef %x826, i8 noundef zeroext %938, i32 noundef %939, i32 noundef %940)
  %941 = load i32, ptr %x755, align 4
  %942 = load i32, ptr %x803, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x827, ptr noundef %x828, i8 noundef zeroext 0, i32 noundef %941, i32 noundef %942)
  %943 = load i8, ptr %x828, align 1
  %944 = load i32, ptr %x757, align 4
  %945 = load i32, ptr %x805, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x829, ptr noundef %x830, i8 noundef zeroext %943, i32 noundef %944, i32 noundef %945)
  %946 = load i8, ptr %x830, align 1
  %947 = load i32, ptr %x759, align 4
  %948 = load i32, ptr %x807, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x831, ptr noundef %x832, i8 noundef zeroext %946, i32 noundef %947, i32 noundef %948)
  %949 = load i8, ptr %x832, align 1
  %950 = load i32, ptr %x761, align 4
  %951 = load i32, ptr %x809, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x833, ptr noundef %x834, i8 noundef zeroext %949, i32 noundef %950, i32 noundef %951)
  %952 = load i8, ptr %x834, align 1
  %953 = load i32, ptr %x763, align 4
  %954 = load i32, ptr %x811, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x835, ptr noundef %x836, i8 noundef zeroext %952, i32 noundef %953, i32 noundef %954)
  %955 = load i8, ptr %x836, align 1
  %956 = load i32, ptr %x765, align 4
  %957 = load i32, ptr %x813, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x837, ptr noundef %x838, i8 noundef zeroext %955, i32 noundef %956, i32 noundef %957)
  %958 = load i8, ptr %x838, align 1
  %959 = load i32, ptr %x767, align 4
  %960 = load i32, ptr %x815, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x839, ptr noundef %x840, i8 noundef zeroext %958, i32 noundef %959, i32 noundef %960)
  %961 = load i8, ptr %x840, align 1
  %962 = load i32, ptr %x769, align 4
  %963 = load i32, ptr %x817, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x841, ptr noundef %x842, i8 noundef zeroext %961, i32 noundef %962, i32 noundef %963)
  %964 = load i8, ptr %x842, align 1
  %965 = load i32, ptr %x771, align 4
  %966 = load i32, ptr %x819, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x843, ptr noundef %x844, i8 noundef zeroext %964, i32 noundef %965, i32 noundef %966)
  %967 = load i8, ptr %x844, align 1
  %968 = load i32, ptr %x773, align 4
  %969 = load i32, ptr %x821, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x845, ptr noundef %x846, i8 noundef zeroext %967, i32 noundef %968, i32 noundef %969)
  %970 = load i8, ptr %x846, align 1
  %971 = load i32, ptr %x775, align 4
  %972 = load i32, ptr %x823, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x847, ptr noundef %x848, i8 noundef zeroext %970, i32 noundef %971, i32 noundef %972)
  %973 = load i8, ptr %x848, align 1
  %974 = load i32, ptr %x777, align 4
  %975 = load i32, ptr %x825, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x849, ptr noundef %x850, i8 noundef zeroext %973, i32 noundef %974, i32 noundef %975)
  %976 = load i8, ptr %x850, align 1
  %977 = load i8, ptr %x778, align 1
  %conv46 = zext i8 %977 to i32
  %978 = load i8, ptr %x708, align 1
  %conv47 = zext i8 %978 to i32
  %add48 = add i32 %conv46, %conv47
  %979 = load i8, ptr %x754, align 1
  %conv49 = zext i8 %979 to i32
  %980 = load i32, ptr %x710, align 4
  %add50 = add i32 %conv49, %980
  %add51 = add i32 %add48, %add50
  %981 = load i8, ptr %x826, align 1
  %conv52 = zext i8 %981 to i32
  %982 = load i32, ptr %x782, align 4
  %add53 = add i32 %conv52, %982
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x851, ptr noundef %x852, i8 noundef zeroext %976, i32 noundef %add51, i32 noundef %add53)
  %983 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x853, ptr noundef %x854, i32 noundef %983, i32 noundef 210038273)
  %984 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x855, ptr noundef %x856, i32 noundef %984, i32 noundef 725204769)
  %985 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x857, ptr noundef %x858, i32 noundef %985, i32 noundef 1068522362)
  %986 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x859, ptr noundef %x860, i32 noundef %986, i32 noundef 673605781)
  %987 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x861, ptr noundef %x862, i32 noundef %987, i32 noundef -737326825)
  %988 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x863, ptr noundef %x864, i32 noundef %988, i32 noundef 1252728005)
  %989 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x865, ptr noundef %x866, i32 noundef %989, i32 noundef -1136768966)
  %990 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x867, ptr noundef %x868, i32 noundef %990, i32 noundef -55039673)
  %991 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x869, ptr noundef %x870, i32 noundef %991, i32 noundef -12746267)
  %992 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x871, ptr noundef %x872, i32 noundef %992, i32 noundef -551902183)
  %993 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x873, ptr noundef %x874, i32 noundef %993, i32 noundef 758225700)
  %994 = load i32, ptr %x6, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x875, ptr noundef %x876, i32 noundef %994, i32 noundef 431229353)
  %995 = load i32, ptr %x876, align 4
  %996 = load i32, ptr %x873, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x877, ptr noundef %x878, i8 noundef zeroext 0, i32 noundef %995, i32 noundef %996)
  %997 = load i8, ptr %x878, align 1
  %998 = load i32, ptr %x874, align 4
  %999 = load i32, ptr %x871, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x879, ptr noundef %x880, i8 noundef zeroext %997, i32 noundef %998, i32 noundef %999)
  %1000 = load i8, ptr %x880, align 1
  %1001 = load i32, ptr %x872, align 4
  %1002 = load i32, ptr %x869, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x881, ptr noundef %x882, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef %1002)
  %1003 = load i8, ptr %x882, align 1
  %1004 = load i32, ptr %x870, align 4
  %1005 = load i32, ptr %x867, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x883, ptr noundef %x884, i8 noundef zeroext %1003, i32 noundef %1004, i32 noundef %1005)
  %1006 = load i8, ptr %x884, align 1
  %1007 = load i32, ptr %x868, align 4
  %1008 = load i32, ptr %x865, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x885, ptr noundef %x886, i8 noundef zeroext %1006, i32 noundef %1007, i32 noundef %1008)
  %1009 = load i8, ptr %x886, align 1
  %1010 = load i32, ptr %x866, align 4
  %1011 = load i32, ptr %x863, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x887, ptr noundef %x888, i8 noundef zeroext %1009, i32 noundef %1010, i32 noundef %1011)
  %1012 = load i8, ptr %x888, align 1
  %1013 = load i32, ptr %x864, align 4
  %1014 = load i32, ptr %x861, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x889, ptr noundef %x890, i8 noundef zeroext %1012, i32 noundef %1013, i32 noundef %1014)
  %1015 = load i8, ptr %x890, align 1
  %1016 = load i32, ptr %x862, align 4
  %1017 = load i32, ptr %x859, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x891, ptr noundef %x892, i8 noundef zeroext %1015, i32 noundef %1016, i32 noundef %1017)
  %1018 = load i8, ptr %x892, align 1
  %1019 = load i32, ptr %x860, align 4
  %1020 = load i32, ptr %x857, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x893, ptr noundef %x894, i8 noundef zeroext %1018, i32 noundef %1019, i32 noundef %1020)
  %1021 = load i8, ptr %x894, align 1
  %1022 = load i32, ptr %x858, align 4
  %1023 = load i32, ptr %x855, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x895, ptr noundef %x896, i8 noundef zeroext %1021, i32 noundef %1022, i32 noundef %1023)
  %1024 = load i8, ptr %x896, align 1
  %1025 = load i32, ptr %x856, align 4
  %1026 = load i32, ptr %x853, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x897, ptr noundef %x898, i8 noundef zeroext %1024, i32 noundef %1025, i32 noundef %1026)
  %1027 = load i32, ptr %x829, align 4
  %1028 = load i32, ptr %x875, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x899, ptr noundef %x900, i8 noundef zeroext 0, i32 noundef %1027, i32 noundef %1028)
  %1029 = load i8, ptr %x900, align 1
  %1030 = load i32, ptr %x831, align 4
  %1031 = load i32, ptr %x877, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x901, ptr noundef %x902, i8 noundef zeroext %1029, i32 noundef %1030, i32 noundef %1031)
  %1032 = load i8, ptr %x902, align 1
  %1033 = load i32, ptr %x833, align 4
  %1034 = load i32, ptr %x879, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x903, ptr noundef %x904, i8 noundef zeroext %1032, i32 noundef %1033, i32 noundef %1034)
  %1035 = load i8, ptr %x904, align 1
  %1036 = load i32, ptr %x835, align 4
  %1037 = load i32, ptr %x881, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x905, ptr noundef %x906, i8 noundef zeroext %1035, i32 noundef %1036, i32 noundef %1037)
  %1038 = load i8, ptr %x906, align 1
  %1039 = load i32, ptr %x837, align 4
  %1040 = load i32, ptr %x883, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x907, ptr noundef %x908, i8 noundef zeroext %1038, i32 noundef %1039, i32 noundef %1040)
  %1041 = load i8, ptr %x908, align 1
  %1042 = load i32, ptr %x839, align 4
  %1043 = load i32, ptr %x885, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x909, ptr noundef %x910, i8 noundef zeroext %1041, i32 noundef %1042, i32 noundef %1043)
  %1044 = load i8, ptr %x910, align 1
  %1045 = load i32, ptr %x841, align 4
  %1046 = load i32, ptr %x887, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x911, ptr noundef %x912, i8 noundef zeroext %1044, i32 noundef %1045, i32 noundef %1046)
  %1047 = load i8, ptr %x912, align 1
  %1048 = load i32, ptr %x843, align 4
  %1049 = load i32, ptr %x889, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x913, ptr noundef %x914, i8 noundef zeroext %1047, i32 noundef %1048, i32 noundef %1049)
  %1050 = load i8, ptr %x914, align 1
  %1051 = load i32, ptr %x845, align 4
  %1052 = load i32, ptr %x891, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x915, ptr noundef %x916, i8 noundef zeroext %1050, i32 noundef %1051, i32 noundef %1052)
  %1053 = load i8, ptr %x916, align 1
  %1054 = load i32, ptr %x847, align 4
  %1055 = load i32, ptr %x893, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x917, ptr noundef %x918, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i8, ptr %x918, align 1
  %1057 = load i32, ptr %x849, align 4
  %1058 = load i32, ptr %x895, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x919, ptr noundef %x920, i8 noundef zeroext %1056, i32 noundef %1057, i32 noundef %1058)
  %1059 = load i8, ptr %x920, align 1
  %1060 = load i32, ptr %x851, align 4
  %1061 = load i32, ptr %x897, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x921, ptr noundef %x922, i8 noundef zeroext %1059, i32 noundef %1060, i32 noundef %1061)
  %1062 = load i32, ptr %x899, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x923, ptr noundef %x924, i32 noundef %1062, i32 noundef -393225147)
  %1063 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x925, ptr noundef %x926, i32 noundef %1063, i32 noundef -1)
  %1064 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x927, ptr noundef %x928, i32 noundef %1064, i32 noundef -1)
  %1065 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x929, ptr noundef %x930, i32 noundef %1065, i32 noundef -1)
  %1066 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x931, ptr noundef %x932, i32 noundef %1066, i32 noundef -1)
  %1067 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x933, ptr noundef %x934, i32 noundef %1067, i32 noundef -1)
  %1068 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x935, ptr noundef %x936, i32 noundef %1068, i32 noundef -1)
  %1069 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x937, ptr noundef %x938, i32 noundef %1069, i32 noundef -949793407)
  %1070 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x939, ptr noundef %x940, i32 noundef %1070, i32 noundef -197710369)
  %1071 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x941, ptr noundef %x942, i32 noundef %1071, i32 noundef 1478102450)
  %1072 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x943, ptr noundef %x944, i32 noundef %1072, i32 noundef 1219536762)
  %1073 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x945, ptr noundef %x946, i32 noundef %1073, i32 noundef -320071318)
  %1074 = load i32, ptr %x923, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x947, ptr noundef %x948, i32 noundef %1074, i32 noundef -859494029)
  %1075 = load i32, ptr %x948, align 4
  %1076 = load i32, ptr %x945, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x949, ptr noundef %x950, i8 noundef zeroext 0, i32 noundef %1075, i32 noundef %1076)
  %1077 = load i8, ptr %x950, align 1
  %1078 = load i32, ptr %x946, align 4
  %1079 = load i32, ptr %x943, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x951, ptr noundef %x952, i8 noundef zeroext %1077, i32 noundef %1078, i32 noundef %1079)
  %1080 = load i8, ptr %x952, align 1
  %1081 = load i32, ptr %x944, align 4
  %1082 = load i32, ptr %x941, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x953, ptr noundef %x954, i8 noundef zeroext %1080, i32 noundef %1081, i32 noundef %1082)
  %1083 = load i8, ptr %x954, align 1
  %1084 = load i32, ptr %x942, align 4
  %1085 = load i32, ptr %x939, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x955, ptr noundef %x956, i8 noundef zeroext %1083, i32 noundef %1084, i32 noundef %1085)
  %1086 = load i8, ptr %x956, align 1
  %1087 = load i32, ptr %x940, align 4
  %1088 = load i32, ptr %x937, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x957, ptr noundef %x958, i8 noundef zeroext %1086, i32 noundef %1087, i32 noundef %1088)
  %1089 = load i8, ptr %x958, align 1
  %1090 = load i32, ptr %x938, align 4
  %1091 = load i32, ptr %x935, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x959, ptr noundef %x960, i8 noundef zeroext %1089, i32 noundef %1090, i32 noundef %1091)
  %1092 = load i8, ptr %x960, align 1
  %1093 = load i32, ptr %x936, align 4
  %1094 = load i32, ptr %x933, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x961, ptr noundef %x962, i8 noundef zeroext %1092, i32 noundef %1093, i32 noundef %1094)
  %1095 = load i8, ptr %x962, align 1
  %1096 = load i32, ptr %x934, align 4
  %1097 = load i32, ptr %x931, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x963, ptr noundef %x964, i8 noundef zeroext %1095, i32 noundef %1096, i32 noundef %1097)
  %1098 = load i8, ptr %x964, align 1
  %1099 = load i32, ptr %x932, align 4
  %1100 = load i32, ptr %x929, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x965, ptr noundef %x966, i8 noundef zeroext %1098, i32 noundef %1099, i32 noundef %1100)
  %1101 = load i8, ptr %x966, align 1
  %1102 = load i32, ptr %x930, align 4
  %1103 = load i32, ptr %x927, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x967, ptr noundef %x968, i8 noundef zeroext %1101, i32 noundef %1102, i32 noundef %1103)
  %1104 = load i8, ptr %x968, align 1
  %1105 = load i32, ptr %x928, align 4
  %1106 = load i32, ptr %x925, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x969, ptr noundef %x970, i8 noundef zeroext %1104, i32 noundef %1105, i32 noundef %1106)
  %1107 = load i32, ptr %x899, align 4
  %1108 = load i32, ptr %x947, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x971, ptr noundef %x972, i8 noundef zeroext 0, i32 noundef %1107, i32 noundef %1108)
  %1109 = load i8, ptr %x972, align 1
  %1110 = load i32, ptr %x901, align 4
  %1111 = load i32, ptr %x949, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x973, ptr noundef %x974, i8 noundef zeroext %1109, i32 noundef %1110, i32 noundef %1111)
  %1112 = load i8, ptr %x974, align 1
  %1113 = load i32, ptr %x903, align 4
  %1114 = load i32, ptr %x951, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x975, ptr noundef %x976, i8 noundef zeroext %1112, i32 noundef %1113, i32 noundef %1114)
  %1115 = load i8, ptr %x976, align 1
  %1116 = load i32, ptr %x905, align 4
  %1117 = load i32, ptr %x953, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x977, ptr noundef %x978, i8 noundef zeroext %1115, i32 noundef %1116, i32 noundef %1117)
  %1118 = load i8, ptr %x978, align 1
  %1119 = load i32, ptr %x907, align 4
  %1120 = load i32, ptr %x955, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x979, ptr noundef %x980, i8 noundef zeroext %1118, i32 noundef %1119, i32 noundef %1120)
  %1121 = load i8, ptr %x980, align 1
  %1122 = load i32, ptr %x909, align 4
  %1123 = load i32, ptr %x957, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x981, ptr noundef %x982, i8 noundef zeroext %1121, i32 noundef %1122, i32 noundef %1123)
  %1124 = load i8, ptr %x982, align 1
  %1125 = load i32, ptr %x911, align 4
  %1126 = load i32, ptr %x959, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x983, ptr noundef %x984, i8 noundef zeroext %1124, i32 noundef %1125, i32 noundef %1126)
  %1127 = load i8, ptr %x984, align 1
  %1128 = load i32, ptr %x913, align 4
  %1129 = load i32, ptr %x961, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x985, ptr noundef %x986, i8 noundef zeroext %1127, i32 noundef %1128, i32 noundef %1129)
  %1130 = load i8, ptr %x986, align 1
  %1131 = load i32, ptr %x915, align 4
  %1132 = load i32, ptr %x963, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x987, ptr noundef %x988, i8 noundef zeroext %1130, i32 noundef %1131, i32 noundef %1132)
  %1133 = load i8, ptr %x988, align 1
  %1134 = load i32, ptr %x917, align 4
  %1135 = load i32, ptr %x965, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x989, ptr noundef %x990, i8 noundef zeroext %1133, i32 noundef %1134, i32 noundef %1135)
  %1136 = load i8, ptr %x990, align 1
  %1137 = load i32, ptr %x919, align 4
  %1138 = load i32, ptr %x967, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x991, ptr noundef %x992, i8 noundef zeroext %1136, i32 noundef %1137, i32 noundef %1138)
  %1139 = load i8, ptr %x992, align 1
  %1140 = load i32, ptr %x921, align 4
  %1141 = load i32, ptr %x969, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x993, ptr noundef %x994, i8 noundef zeroext %1139, i32 noundef %1140, i32 noundef %1141)
  %1142 = load i8, ptr %x994, align 1
  %1143 = load i8, ptr %x922, align 1
  %conv54 = zext i8 %1143 to i32
  %1144 = load i8, ptr %x852, align 1
  %conv55 = zext i8 %1144 to i32
  %add56 = add i32 %conv54, %conv55
  %1145 = load i8, ptr %x898, align 1
  %conv57 = zext i8 %1145 to i32
  %1146 = load i32, ptr %x854, align 4
  %add58 = add i32 %conv57, %1146
  %add59 = add i32 %add56, %add58
  %1147 = load i8, ptr %x970, align 1
  %conv60 = zext i8 %1147 to i32
  %1148 = load i32, ptr %x926, align 4
  %add61 = add i32 %conv60, %1148
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x995, ptr noundef %x996, i8 noundef zeroext %1142, i32 noundef %add59, i32 noundef %add61)
  %1149 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x997, ptr noundef %x998, i32 noundef %1149, i32 noundef 210038273)
  %1150 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x999, ptr noundef %x1000, i32 noundef %1150, i32 noundef 725204769)
  %1151 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1001, ptr noundef %x1002, i32 noundef %1151, i32 noundef 1068522362)
  %1152 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1003, ptr noundef %x1004, i32 noundef %1152, i32 noundef 673605781)
  %1153 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1005, ptr noundef %x1006, i32 noundef %1153, i32 noundef -737326825)
  %1154 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1007, ptr noundef %x1008, i32 noundef %1154, i32 noundef 1252728005)
  %1155 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1009, ptr noundef %x1010, i32 noundef %1155, i32 noundef -1136768966)
  %1156 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1011, ptr noundef %x1012, i32 noundef %1156, i32 noundef -55039673)
  %1157 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1013, ptr noundef %x1014, i32 noundef %1157, i32 noundef -12746267)
  %1158 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1015, ptr noundef %x1016, i32 noundef %1158, i32 noundef -551902183)
  %1159 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1017, ptr noundef %x1018, i32 noundef %1159, i32 noundef 758225700)
  %1160 = load i32, ptr %x7, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1019, ptr noundef %x1020, i32 noundef %1160, i32 noundef 431229353)
  %1161 = load i32, ptr %x1020, align 4
  %1162 = load i32, ptr %x1017, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1021, ptr noundef %x1022, i8 noundef zeroext 0, i32 noundef %1161, i32 noundef %1162)
  %1163 = load i8, ptr %x1022, align 1
  %1164 = load i32, ptr %x1018, align 4
  %1165 = load i32, ptr %x1015, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1023, ptr noundef %x1024, i8 noundef zeroext %1163, i32 noundef %1164, i32 noundef %1165)
  %1166 = load i8, ptr %x1024, align 1
  %1167 = load i32, ptr %x1016, align 4
  %1168 = load i32, ptr %x1013, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1025, ptr noundef %x1026, i8 noundef zeroext %1166, i32 noundef %1167, i32 noundef %1168)
  %1169 = load i8, ptr %x1026, align 1
  %1170 = load i32, ptr %x1014, align 4
  %1171 = load i32, ptr %x1011, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1027, ptr noundef %x1028, i8 noundef zeroext %1169, i32 noundef %1170, i32 noundef %1171)
  %1172 = load i8, ptr %x1028, align 1
  %1173 = load i32, ptr %x1012, align 4
  %1174 = load i32, ptr %x1009, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1029, ptr noundef %x1030, i8 noundef zeroext %1172, i32 noundef %1173, i32 noundef %1174)
  %1175 = load i8, ptr %x1030, align 1
  %1176 = load i32, ptr %x1010, align 4
  %1177 = load i32, ptr %x1007, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1031, ptr noundef %x1032, i8 noundef zeroext %1175, i32 noundef %1176, i32 noundef %1177)
  %1178 = load i8, ptr %x1032, align 1
  %1179 = load i32, ptr %x1008, align 4
  %1180 = load i32, ptr %x1005, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1033, ptr noundef %x1034, i8 noundef zeroext %1178, i32 noundef %1179, i32 noundef %1180)
  %1181 = load i8, ptr %x1034, align 1
  %1182 = load i32, ptr %x1006, align 4
  %1183 = load i32, ptr %x1003, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1035, ptr noundef %x1036, i8 noundef zeroext %1181, i32 noundef %1182, i32 noundef %1183)
  %1184 = load i8, ptr %x1036, align 1
  %1185 = load i32, ptr %x1004, align 4
  %1186 = load i32, ptr %x1001, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1037, ptr noundef %x1038, i8 noundef zeroext %1184, i32 noundef %1185, i32 noundef %1186)
  %1187 = load i8, ptr %x1038, align 1
  %1188 = load i32, ptr %x1002, align 4
  %1189 = load i32, ptr %x999, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1039, ptr noundef %x1040, i8 noundef zeroext %1187, i32 noundef %1188, i32 noundef %1189)
  %1190 = load i8, ptr %x1040, align 1
  %1191 = load i32, ptr %x1000, align 4
  %1192 = load i32, ptr %x997, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1041, ptr noundef %x1042, i8 noundef zeroext %1190, i32 noundef %1191, i32 noundef %1192)
  %1193 = load i32, ptr %x973, align 4
  %1194 = load i32, ptr %x1019, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1043, ptr noundef %x1044, i8 noundef zeroext 0, i32 noundef %1193, i32 noundef %1194)
  %1195 = load i8, ptr %x1044, align 1
  %1196 = load i32, ptr %x975, align 4
  %1197 = load i32, ptr %x1021, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1045, ptr noundef %x1046, i8 noundef zeroext %1195, i32 noundef %1196, i32 noundef %1197)
  %1198 = load i8, ptr %x1046, align 1
  %1199 = load i32, ptr %x977, align 4
  %1200 = load i32, ptr %x1023, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1047, ptr noundef %x1048, i8 noundef zeroext %1198, i32 noundef %1199, i32 noundef %1200)
  %1201 = load i8, ptr %x1048, align 1
  %1202 = load i32, ptr %x979, align 4
  %1203 = load i32, ptr %x1025, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1049, ptr noundef %x1050, i8 noundef zeroext %1201, i32 noundef %1202, i32 noundef %1203)
  %1204 = load i8, ptr %x1050, align 1
  %1205 = load i32, ptr %x981, align 4
  %1206 = load i32, ptr %x1027, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1051, ptr noundef %x1052, i8 noundef zeroext %1204, i32 noundef %1205, i32 noundef %1206)
  %1207 = load i8, ptr %x1052, align 1
  %1208 = load i32, ptr %x983, align 4
  %1209 = load i32, ptr %x1029, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1053, ptr noundef %x1054, i8 noundef zeroext %1207, i32 noundef %1208, i32 noundef %1209)
  %1210 = load i8, ptr %x1054, align 1
  %1211 = load i32, ptr %x985, align 4
  %1212 = load i32, ptr %x1031, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1055, ptr noundef %x1056, i8 noundef zeroext %1210, i32 noundef %1211, i32 noundef %1212)
  %1213 = load i8, ptr %x1056, align 1
  %1214 = load i32, ptr %x987, align 4
  %1215 = load i32, ptr %x1033, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1057, ptr noundef %x1058, i8 noundef zeroext %1213, i32 noundef %1214, i32 noundef %1215)
  %1216 = load i8, ptr %x1058, align 1
  %1217 = load i32, ptr %x989, align 4
  %1218 = load i32, ptr %x1035, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1059, ptr noundef %x1060, i8 noundef zeroext %1216, i32 noundef %1217, i32 noundef %1218)
  %1219 = load i8, ptr %x1060, align 1
  %1220 = load i32, ptr %x991, align 4
  %1221 = load i32, ptr %x1037, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1061, ptr noundef %x1062, i8 noundef zeroext %1219, i32 noundef %1220, i32 noundef %1221)
  %1222 = load i8, ptr %x1062, align 1
  %1223 = load i32, ptr %x993, align 4
  %1224 = load i32, ptr %x1039, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1063, ptr noundef %x1064, i8 noundef zeroext %1222, i32 noundef %1223, i32 noundef %1224)
  %1225 = load i8, ptr %x1064, align 1
  %1226 = load i32, ptr %x995, align 4
  %1227 = load i32, ptr %x1041, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1065, ptr noundef %x1066, i8 noundef zeroext %1225, i32 noundef %1226, i32 noundef %1227)
  %1228 = load i32, ptr %x1043, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1067, ptr noundef %x1068, i32 noundef %1228, i32 noundef -393225147)
  %1229 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1069, ptr noundef %x1070, i32 noundef %1229, i32 noundef -1)
  %1230 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1071, ptr noundef %x1072, i32 noundef %1230, i32 noundef -1)
  %1231 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1073, ptr noundef %x1074, i32 noundef %1231, i32 noundef -1)
  %1232 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1075, ptr noundef %x1076, i32 noundef %1232, i32 noundef -1)
  %1233 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1077, ptr noundef %x1078, i32 noundef %1233, i32 noundef -1)
  %1234 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1079, ptr noundef %x1080, i32 noundef %1234, i32 noundef -1)
  %1235 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1081, ptr noundef %x1082, i32 noundef %1235, i32 noundef -949793407)
  %1236 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1083, ptr noundef %x1084, i32 noundef %1236, i32 noundef -197710369)
  %1237 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1085, ptr noundef %x1086, i32 noundef %1237, i32 noundef 1478102450)
  %1238 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1087, ptr noundef %x1088, i32 noundef %1238, i32 noundef 1219536762)
  %1239 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1089, ptr noundef %x1090, i32 noundef %1239, i32 noundef -320071318)
  %1240 = load i32, ptr %x1067, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1091, ptr noundef %x1092, i32 noundef %1240, i32 noundef -859494029)
  %1241 = load i32, ptr %x1092, align 4
  %1242 = load i32, ptr %x1089, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1093, ptr noundef %x1094, i8 noundef zeroext 0, i32 noundef %1241, i32 noundef %1242)
  %1243 = load i8, ptr %x1094, align 1
  %1244 = load i32, ptr %x1090, align 4
  %1245 = load i32, ptr %x1087, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1095, ptr noundef %x1096, i8 noundef zeroext %1243, i32 noundef %1244, i32 noundef %1245)
  %1246 = load i8, ptr %x1096, align 1
  %1247 = load i32, ptr %x1088, align 4
  %1248 = load i32, ptr %x1085, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1097, ptr noundef %x1098, i8 noundef zeroext %1246, i32 noundef %1247, i32 noundef %1248)
  %1249 = load i8, ptr %x1098, align 1
  %1250 = load i32, ptr %x1086, align 4
  %1251 = load i32, ptr %x1083, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1099, ptr noundef %x1100, i8 noundef zeroext %1249, i32 noundef %1250, i32 noundef %1251)
  %1252 = load i8, ptr %x1100, align 1
  %1253 = load i32, ptr %x1084, align 4
  %1254 = load i32, ptr %x1081, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1101, ptr noundef %x1102, i8 noundef zeroext %1252, i32 noundef %1253, i32 noundef %1254)
  %1255 = load i8, ptr %x1102, align 1
  %1256 = load i32, ptr %x1082, align 4
  %1257 = load i32, ptr %x1079, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1103, ptr noundef %x1104, i8 noundef zeroext %1255, i32 noundef %1256, i32 noundef %1257)
  %1258 = load i8, ptr %x1104, align 1
  %1259 = load i32, ptr %x1080, align 4
  %1260 = load i32, ptr %x1077, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1105, ptr noundef %x1106, i8 noundef zeroext %1258, i32 noundef %1259, i32 noundef %1260)
  %1261 = load i8, ptr %x1106, align 1
  %1262 = load i32, ptr %x1078, align 4
  %1263 = load i32, ptr %x1075, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1107, ptr noundef %x1108, i8 noundef zeroext %1261, i32 noundef %1262, i32 noundef %1263)
  %1264 = load i8, ptr %x1108, align 1
  %1265 = load i32, ptr %x1076, align 4
  %1266 = load i32, ptr %x1073, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1109, ptr noundef %x1110, i8 noundef zeroext %1264, i32 noundef %1265, i32 noundef %1266)
  %1267 = load i8, ptr %x1110, align 1
  %1268 = load i32, ptr %x1074, align 4
  %1269 = load i32, ptr %x1071, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1111, ptr noundef %x1112, i8 noundef zeroext %1267, i32 noundef %1268, i32 noundef %1269)
  %1270 = load i8, ptr %x1112, align 1
  %1271 = load i32, ptr %x1072, align 4
  %1272 = load i32, ptr %x1069, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1113, ptr noundef %x1114, i8 noundef zeroext %1270, i32 noundef %1271, i32 noundef %1272)
  %1273 = load i32, ptr %x1043, align 4
  %1274 = load i32, ptr %x1091, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1115, ptr noundef %x1116, i8 noundef zeroext 0, i32 noundef %1273, i32 noundef %1274)
  %1275 = load i8, ptr %x1116, align 1
  %1276 = load i32, ptr %x1045, align 4
  %1277 = load i32, ptr %x1093, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1117, ptr noundef %x1118, i8 noundef zeroext %1275, i32 noundef %1276, i32 noundef %1277)
  %1278 = load i8, ptr %x1118, align 1
  %1279 = load i32, ptr %x1047, align 4
  %1280 = load i32, ptr %x1095, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1119, ptr noundef %x1120, i8 noundef zeroext %1278, i32 noundef %1279, i32 noundef %1280)
  %1281 = load i8, ptr %x1120, align 1
  %1282 = load i32, ptr %x1049, align 4
  %1283 = load i32, ptr %x1097, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1121, ptr noundef %x1122, i8 noundef zeroext %1281, i32 noundef %1282, i32 noundef %1283)
  %1284 = load i8, ptr %x1122, align 1
  %1285 = load i32, ptr %x1051, align 4
  %1286 = load i32, ptr %x1099, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1123, ptr noundef %x1124, i8 noundef zeroext %1284, i32 noundef %1285, i32 noundef %1286)
  %1287 = load i8, ptr %x1124, align 1
  %1288 = load i32, ptr %x1053, align 4
  %1289 = load i32, ptr %x1101, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1125, ptr noundef %x1126, i8 noundef zeroext %1287, i32 noundef %1288, i32 noundef %1289)
  %1290 = load i8, ptr %x1126, align 1
  %1291 = load i32, ptr %x1055, align 4
  %1292 = load i32, ptr %x1103, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1127, ptr noundef %x1128, i8 noundef zeroext %1290, i32 noundef %1291, i32 noundef %1292)
  %1293 = load i8, ptr %x1128, align 1
  %1294 = load i32, ptr %x1057, align 4
  %1295 = load i32, ptr %x1105, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1129, ptr noundef %x1130, i8 noundef zeroext %1293, i32 noundef %1294, i32 noundef %1295)
  %1296 = load i8, ptr %x1130, align 1
  %1297 = load i32, ptr %x1059, align 4
  %1298 = load i32, ptr %x1107, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1131, ptr noundef %x1132, i8 noundef zeroext %1296, i32 noundef %1297, i32 noundef %1298)
  %1299 = load i8, ptr %x1132, align 1
  %1300 = load i32, ptr %x1061, align 4
  %1301 = load i32, ptr %x1109, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1133, ptr noundef %x1134, i8 noundef zeroext %1299, i32 noundef %1300, i32 noundef %1301)
  %1302 = load i8, ptr %x1134, align 1
  %1303 = load i32, ptr %x1063, align 4
  %1304 = load i32, ptr %x1111, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1135, ptr noundef %x1136, i8 noundef zeroext %1302, i32 noundef %1303, i32 noundef %1304)
  %1305 = load i8, ptr %x1136, align 1
  %1306 = load i32, ptr %x1065, align 4
  %1307 = load i32, ptr %x1113, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1137, ptr noundef %x1138, i8 noundef zeroext %1305, i32 noundef %1306, i32 noundef %1307)
  %1308 = load i8, ptr %x1138, align 1
  %1309 = load i8, ptr %x1066, align 1
  %conv62 = zext i8 %1309 to i32
  %1310 = load i8, ptr %x996, align 1
  %conv63 = zext i8 %1310 to i32
  %add64 = add i32 %conv62, %conv63
  %1311 = load i8, ptr %x1042, align 1
  %conv65 = zext i8 %1311 to i32
  %1312 = load i32, ptr %x998, align 4
  %add66 = add i32 %conv65, %1312
  %add67 = add i32 %add64, %add66
  %1313 = load i8, ptr %x1114, align 1
  %conv68 = zext i8 %1313 to i32
  %1314 = load i32, ptr %x1070, align 4
  %add69 = add i32 %conv68, %1314
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1139, ptr noundef %x1140, i8 noundef zeroext %1308, i32 noundef %add67, i32 noundef %add69)
  %1315 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1141, ptr noundef %x1142, i32 noundef %1315, i32 noundef 210038273)
  %1316 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1143, ptr noundef %x1144, i32 noundef %1316, i32 noundef 725204769)
  %1317 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1145, ptr noundef %x1146, i32 noundef %1317, i32 noundef 1068522362)
  %1318 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1147, ptr noundef %x1148, i32 noundef %1318, i32 noundef 673605781)
  %1319 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1149, ptr noundef %x1150, i32 noundef %1319, i32 noundef -737326825)
  %1320 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1151, ptr noundef %x1152, i32 noundef %1320, i32 noundef 1252728005)
  %1321 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1153, ptr noundef %x1154, i32 noundef %1321, i32 noundef -1136768966)
  %1322 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1155, ptr noundef %x1156, i32 noundef %1322, i32 noundef -55039673)
  %1323 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1157, ptr noundef %x1158, i32 noundef %1323, i32 noundef -12746267)
  %1324 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1159, ptr noundef %x1160, i32 noundef %1324, i32 noundef -551902183)
  %1325 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1161, ptr noundef %x1162, i32 noundef %1325, i32 noundef 758225700)
  %1326 = load i32, ptr %x8, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1163, ptr noundef %x1164, i32 noundef %1326, i32 noundef 431229353)
  %1327 = load i32, ptr %x1164, align 4
  %1328 = load i32, ptr %x1161, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1165, ptr noundef %x1166, i8 noundef zeroext 0, i32 noundef %1327, i32 noundef %1328)
  %1329 = load i8, ptr %x1166, align 1
  %1330 = load i32, ptr %x1162, align 4
  %1331 = load i32, ptr %x1159, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1167, ptr noundef %x1168, i8 noundef zeroext %1329, i32 noundef %1330, i32 noundef %1331)
  %1332 = load i8, ptr %x1168, align 1
  %1333 = load i32, ptr %x1160, align 4
  %1334 = load i32, ptr %x1157, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1169, ptr noundef %x1170, i8 noundef zeroext %1332, i32 noundef %1333, i32 noundef %1334)
  %1335 = load i8, ptr %x1170, align 1
  %1336 = load i32, ptr %x1158, align 4
  %1337 = load i32, ptr %x1155, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1171, ptr noundef %x1172, i8 noundef zeroext %1335, i32 noundef %1336, i32 noundef %1337)
  %1338 = load i8, ptr %x1172, align 1
  %1339 = load i32, ptr %x1156, align 4
  %1340 = load i32, ptr %x1153, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1173, ptr noundef %x1174, i8 noundef zeroext %1338, i32 noundef %1339, i32 noundef %1340)
  %1341 = load i8, ptr %x1174, align 1
  %1342 = load i32, ptr %x1154, align 4
  %1343 = load i32, ptr %x1151, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1175, ptr noundef %x1176, i8 noundef zeroext %1341, i32 noundef %1342, i32 noundef %1343)
  %1344 = load i8, ptr %x1176, align 1
  %1345 = load i32, ptr %x1152, align 4
  %1346 = load i32, ptr %x1149, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1177, ptr noundef %x1178, i8 noundef zeroext %1344, i32 noundef %1345, i32 noundef %1346)
  %1347 = load i8, ptr %x1178, align 1
  %1348 = load i32, ptr %x1150, align 4
  %1349 = load i32, ptr %x1147, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1179, ptr noundef %x1180, i8 noundef zeroext %1347, i32 noundef %1348, i32 noundef %1349)
  %1350 = load i8, ptr %x1180, align 1
  %1351 = load i32, ptr %x1148, align 4
  %1352 = load i32, ptr %x1145, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1181, ptr noundef %x1182, i8 noundef zeroext %1350, i32 noundef %1351, i32 noundef %1352)
  %1353 = load i8, ptr %x1182, align 1
  %1354 = load i32, ptr %x1146, align 4
  %1355 = load i32, ptr %x1143, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1183, ptr noundef %x1184, i8 noundef zeroext %1353, i32 noundef %1354, i32 noundef %1355)
  %1356 = load i8, ptr %x1184, align 1
  %1357 = load i32, ptr %x1144, align 4
  %1358 = load i32, ptr %x1141, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1185, ptr noundef %x1186, i8 noundef zeroext %1356, i32 noundef %1357, i32 noundef %1358)
  %1359 = load i32, ptr %x1117, align 4
  %1360 = load i32, ptr %x1163, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1187, ptr noundef %x1188, i8 noundef zeroext 0, i32 noundef %1359, i32 noundef %1360)
  %1361 = load i8, ptr %x1188, align 1
  %1362 = load i32, ptr %x1119, align 4
  %1363 = load i32, ptr %x1165, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1189, ptr noundef %x1190, i8 noundef zeroext %1361, i32 noundef %1362, i32 noundef %1363)
  %1364 = load i8, ptr %x1190, align 1
  %1365 = load i32, ptr %x1121, align 4
  %1366 = load i32, ptr %x1167, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1191, ptr noundef %x1192, i8 noundef zeroext %1364, i32 noundef %1365, i32 noundef %1366)
  %1367 = load i8, ptr %x1192, align 1
  %1368 = load i32, ptr %x1123, align 4
  %1369 = load i32, ptr %x1169, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1193, ptr noundef %x1194, i8 noundef zeroext %1367, i32 noundef %1368, i32 noundef %1369)
  %1370 = load i8, ptr %x1194, align 1
  %1371 = load i32, ptr %x1125, align 4
  %1372 = load i32, ptr %x1171, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1195, ptr noundef %x1196, i8 noundef zeroext %1370, i32 noundef %1371, i32 noundef %1372)
  %1373 = load i8, ptr %x1196, align 1
  %1374 = load i32, ptr %x1127, align 4
  %1375 = load i32, ptr %x1173, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1197, ptr noundef %x1198, i8 noundef zeroext %1373, i32 noundef %1374, i32 noundef %1375)
  %1376 = load i8, ptr %x1198, align 1
  %1377 = load i32, ptr %x1129, align 4
  %1378 = load i32, ptr %x1175, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1199, ptr noundef %x1200, i8 noundef zeroext %1376, i32 noundef %1377, i32 noundef %1378)
  %1379 = load i8, ptr %x1200, align 1
  %1380 = load i32, ptr %x1131, align 4
  %1381 = load i32, ptr %x1177, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1201, ptr noundef %x1202, i8 noundef zeroext %1379, i32 noundef %1380, i32 noundef %1381)
  %1382 = load i8, ptr %x1202, align 1
  %1383 = load i32, ptr %x1133, align 4
  %1384 = load i32, ptr %x1179, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1203, ptr noundef %x1204, i8 noundef zeroext %1382, i32 noundef %1383, i32 noundef %1384)
  %1385 = load i8, ptr %x1204, align 1
  %1386 = load i32, ptr %x1135, align 4
  %1387 = load i32, ptr %x1181, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1205, ptr noundef %x1206, i8 noundef zeroext %1385, i32 noundef %1386, i32 noundef %1387)
  %1388 = load i8, ptr %x1206, align 1
  %1389 = load i32, ptr %x1137, align 4
  %1390 = load i32, ptr %x1183, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1207, ptr noundef %x1208, i8 noundef zeroext %1388, i32 noundef %1389, i32 noundef %1390)
  %1391 = load i8, ptr %x1208, align 1
  %1392 = load i32, ptr %x1139, align 4
  %1393 = load i32, ptr %x1185, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1209, ptr noundef %x1210, i8 noundef zeroext %1391, i32 noundef %1392, i32 noundef %1393)
  %1394 = load i32, ptr %x1187, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1211, ptr noundef %x1212, i32 noundef %1394, i32 noundef -393225147)
  %1395 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1213, ptr noundef %x1214, i32 noundef %1395, i32 noundef -1)
  %1396 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1215, ptr noundef %x1216, i32 noundef %1396, i32 noundef -1)
  %1397 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1217, ptr noundef %x1218, i32 noundef %1397, i32 noundef -1)
  %1398 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1219, ptr noundef %x1220, i32 noundef %1398, i32 noundef -1)
  %1399 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1221, ptr noundef %x1222, i32 noundef %1399, i32 noundef -1)
  %1400 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1223, ptr noundef %x1224, i32 noundef %1400, i32 noundef -1)
  %1401 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1225, ptr noundef %x1226, i32 noundef %1401, i32 noundef -949793407)
  %1402 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1227, ptr noundef %x1228, i32 noundef %1402, i32 noundef -197710369)
  %1403 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1229, ptr noundef %x1230, i32 noundef %1403, i32 noundef 1478102450)
  %1404 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1231, ptr noundef %x1232, i32 noundef %1404, i32 noundef 1219536762)
  %1405 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1233, ptr noundef %x1234, i32 noundef %1405, i32 noundef -320071318)
  %1406 = load i32, ptr %x1211, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1235, ptr noundef %x1236, i32 noundef %1406, i32 noundef -859494029)
  %1407 = load i32, ptr %x1236, align 4
  %1408 = load i32, ptr %x1233, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1237, ptr noundef %x1238, i8 noundef zeroext 0, i32 noundef %1407, i32 noundef %1408)
  %1409 = load i8, ptr %x1238, align 1
  %1410 = load i32, ptr %x1234, align 4
  %1411 = load i32, ptr %x1231, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1239, ptr noundef %x1240, i8 noundef zeroext %1409, i32 noundef %1410, i32 noundef %1411)
  %1412 = load i8, ptr %x1240, align 1
  %1413 = load i32, ptr %x1232, align 4
  %1414 = load i32, ptr %x1229, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1241, ptr noundef %x1242, i8 noundef zeroext %1412, i32 noundef %1413, i32 noundef %1414)
  %1415 = load i8, ptr %x1242, align 1
  %1416 = load i32, ptr %x1230, align 4
  %1417 = load i32, ptr %x1227, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1243, ptr noundef %x1244, i8 noundef zeroext %1415, i32 noundef %1416, i32 noundef %1417)
  %1418 = load i8, ptr %x1244, align 1
  %1419 = load i32, ptr %x1228, align 4
  %1420 = load i32, ptr %x1225, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1245, ptr noundef %x1246, i8 noundef zeroext %1418, i32 noundef %1419, i32 noundef %1420)
  %1421 = load i8, ptr %x1246, align 1
  %1422 = load i32, ptr %x1226, align 4
  %1423 = load i32, ptr %x1223, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1247, ptr noundef %x1248, i8 noundef zeroext %1421, i32 noundef %1422, i32 noundef %1423)
  %1424 = load i8, ptr %x1248, align 1
  %1425 = load i32, ptr %x1224, align 4
  %1426 = load i32, ptr %x1221, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1249, ptr noundef %x1250, i8 noundef zeroext %1424, i32 noundef %1425, i32 noundef %1426)
  %1427 = load i8, ptr %x1250, align 1
  %1428 = load i32, ptr %x1222, align 4
  %1429 = load i32, ptr %x1219, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1251, ptr noundef %x1252, i8 noundef zeroext %1427, i32 noundef %1428, i32 noundef %1429)
  %1430 = load i8, ptr %x1252, align 1
  %1431 = load i32, ptr %x1220, align 4
  %1432 = load i32, ptr %x1217, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1253, ptr noundef %x1254, i8 noundef zeroext %1430, i32 noundef %1431, i32 noundef %1432)
  %1433 = load i8, ptr %x1254, align 1
  %1434 = load i32, ptr %x1218, align 4
  %1435 = load i32, ptr %x1215, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1255, ptr noundef %x1256, i8 noundef zeroext %1433, i32 noundef %1434, i32 noundef %1435)
  %1436 = load i8, ptr %x1256, align 1
  %1437 = load i32, ptr %x1216, align 4
  %1438 = load i32, ptr %x1213, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1257, ptr noundef %x1258, i8 noundef zeroext %1436, i32 noundef %1437, i32 noundef %1438)
  %1439 = load i32, ptr %x1187, align 4
  %1440 = load i32, ptr %x1235, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1259, ptr noundef %x1260, i8 noundef zeroext 0, i32 noundef %1439, i32 noundef %1440)
  %1441 = load i8, ptr %x1260, align 1
  %1442 = load i32, ptr %x1189, align 4
  %1443 = load i32, ptr %x1237, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1261, ptr noundef %x1262, i8 noundef zeroext %1441, i32 noundef %1442, i32 noundef %1443)
  %1444 = load i8, ptr %x1262, align 1
  %1445 = load i32, ptr %x1191, align 4
  %1446 = load i32, ptr %x1239, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1263, ptr noundef %x1264, i8 noundef zeroext %1444, i32 noundef %1445, i32 noundef %1446)
  %1447 = load i8, ptr %x1264, align 1
  %1448 = load i32, ptr %x1193, align 4
  %1449 = load i32, ptr %x1241, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1265, ptr noundef %x1266, i8 noundef zeroext %1447, i32 noundef %1448, i32 noundef %1449)
  %1450 = load i8, ptr %x1266, align 1
  %1451 = load i32, ptr %x1195, align 4
  %1452 = load i32, ptr %x1243, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1267, ptr noundef %x1268, i8 noundef zeroext %1450, i32 noundef %1451, i32 noundef %1452)
  %1453 = load i8, ptr %x1268, align 1
  %1454 = load i32, ptr %x1197, align 4
  %1455 = load i32, ptr %x1245, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1269, ptr noundef %x1270, i8 noundef zeroext %1453, i32 noundef %1454, i32 noundef %1455)
  %1456 = load i8, ptr %x1270, align 1
  %1457 = load i32, ptr %x1199, align 4
  %1458 = load i32, ptr %x1247, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1271, ptr noundef %x1272, i8 noundef zeroext %1456, i32 noundef %1457, i32 noundef %1458)
  %1459 = load i8, ptr %x1272, align 1
  %1460 = load i32, ptr %x1201, align 4
  %1461 = load i32, ptr %x1249, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1273, ptr noundef %x1274, i8 noundef zeroext %1459, i32 noundef %1460, i32 noundef %1461)
  %1462 = load i8, ptr %x1274, align 1
  %1463 = load i32, ptr %x1203, align 4
  %1464 = load i32, ptr %x1251, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1275, ptr noundef %x1276, i8 noundef zeroext %1462, i32 noundef %1463, i32 noundef %1464)
  %1465 = load i8, ptr %x1276, align 1
  %1466 = load i32, ptr %x1205, align 4
  %1467 = load i32, ptr %x1253, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1277, ptr noundef %x1278, i8 noundef zeroext %1465, i32 noundef %1466, i32 noundef %1467)
  %1468 = load i8, ptr %x1278, align 1
  %1469 = load i32, ptr %x1207, align 4
  %1470 = load i32, ptr %x1255, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1279, ptr noundef %x1280, i8 noundef zeroext %1468, i32 noundef %1469, i32 noundef %1470)
  %1471 = load i8, ptr %x1280, align 1
  %1472 = load i32, ptr %x1209, align 4
  %1473 = load i32, ptr %x1257, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1281, ptr noundef %x1282, i8 noundef zeroext %1471, i32 noundef %1472, i32 noundef %1473)
  %1474 = load i8, ptr %x1282, align 1
  %1475 = load i8, ptr %x1210, align 1
  %conv70 = zext i8 %1475 to i32
  %1476 = load i8, ptr %x1140, align 1
  %conv71 = zext i8 %1476 to i32
  %add72 = add i32 %conv70, %conv71
  %1477 = load i8, ptr %x1186, align 1
  %conv73 = zext i8 %1477 to i32
  %1478 = load i32, ptr %x1142, align 4
  %add74 = add i32 %conv73, %1478
  %add75 = add i32 %add72, %add74
  %1479 = load i8, ptr %x1258, align 1
  %conv76 = zext i8 %1479 to i32
  %1480 = load i32, ptr %x1214, align 4
  %add77 = add i32 %conv76, %1480
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1283, ptr noundef %x1284, i8 noundef zeroext %1474, i32 noundef %add75, i32 noundef %add77)
  %1481 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1285, ptr noundef %x1286, i32 noundef %1481, i32 noundef 210038273)
  %1482 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1287, ptr noundef %x1288, i32 noundef %1482, i32 noundef 725204769)
  %1483 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1289, ptr noundef %x1290, i32 noundef %1483, i32 noundef 1068522362)
  %1484 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1291, ptr noundef %x1292, i32 noundef %1484, i32 noundef 673605781)
  %1485 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1293, ptr noundef %x1294, i32 noundef %1485, i32 noundef -737326825)
  %1486 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1295, ptr noundef %x1296, i32 noundef %1486, i32 noundef 1252728005)
  %1487 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1297, ptr noundef %x1298, i32 noundef %1487, i32 noundef -1136768966)
  %1488 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1299, ptr noundef %x1300, i32 noundef %1488, i32 noundef -55039673)
  %1489 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1301, ptr noundef %x1302, i32 noundef %1489, i32 noundef -12746267)
  %1490 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1303, ptr noundef %x1304, i32 noundef %1490, i32 noundef -551902183)
  %1491 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1305, ptr noundef %x1306, i32 noundef %1491, i32 noundef 758225700)
  %1492 = load i32, ptr %x9, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1307, ptr noundef %x1308, i32 noundef %1492, i32 noundef 431229353)
  %1493 = load i32, ptr %x1308, align 4
  %1494 = load i32, ptr %x1305, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1309, ptr noundef %x1310, i8 noundef zeroext 0, i32 noundef %1493, i32 noundef %1494)
  %1495 = load i8, ptr %x1310, align 1
  %1496 = load i32, ptr %x1306, align 4
  %1497 = load i32, ptr %x1303, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1311, ptr noundef %x1312, i8 noundef zeroext %1495, i32 noundef %1496, i32 noundef %1497)
  %1498 = load i8, ptr %x1312, align 1
  %1499 = load i32, ptr %x1304, align 4
  %1500 = load i32, ptr %x1301, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1313, ptr noundef %x1314, i8 noundef zeroext %1498, i32 noundef %1499, i32 noundef %1500)
  %1501 = load i8, ptr %x1314, align 1
  %1502 = load i32, ptr %x1302, align 4
  %1503 = load i32, ptr %x1299, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1315, ptr noundef %x1316, i8 noundef zeroext %1501, i32 noundef %1502, i32 noundef %1503)
  %1504 = load i8, ptr %x1316, align 1
  %1505 = load i32, ptr %x1300, align 4
  %1506 = load i32, ptr %x1297, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1317, ptr noundef %x1318, i8 noundef zeroext %1504, i32 noundef %1505, i32 noundef %1506)
  %1507 = load i8, ptr %x1318, align 1
  %1508 = load i32, ptr %x1298, align 4
  %1509 = load i32, ptr %x1295, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1319, ptr noundef %x1320, i8 noundef zeroext %1507, i32 noundef %1508, i32 noundef %1509)
  %1510 = load i8, ptr %x1320, align 1
  %1511 = load i32, ptr %x1296, align 4
  %1512 = load i32, ptr %x1293, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1321, ptr noundef %x1322, i8 noundef zeroext %1510, i32 noundef %1511, i32 noundef %1512)
  %1513 = load i8, ptr %x1322, align 1
  %1514 = load i32, ptr %x1294, align 4
  %1515 = load i32, ptr %x1291, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1323, ptr noundef %x1324, i8 noundef zeroext %1513, i32 noundef %1514, i32 noundef %1515)
  %1516 = load i8, ptr %x1324, align 1
  %1517 = load i32, ptr %x1292, align 4
  %1518 = load i32, ptr %x1289, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1325, ptr noundef %x1326, i8 noundef zeroext %1516, i32 noundef %1517, i32 noundef %1518)
  %1519 = load i8, ptr %x1326, align 1
  %1520 = load i32, ptr %x1290, align 4
  %1521 = load i32, ptr %x1287, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1327, ptr noundef %x1328, i8 noundef zeroext %1519, i32 noundef %1520, i32 noundef %1521)
  %1522 = load i8, ptr %x1328, align 1
  %1523 = load i32, ptr %x1288, align 4
  %1524 = load i32, ptr %x1285, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1329, ptr noundef %x1330, i8 noundef zeroext %1522, i32 noundef %1523, i32 noundef %1524)
  %1525 = load i32, ptr %x1261, align 4
  %1526 = load i32, ptr %x1307, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1331, ptr noundef %x1332, i8 noundef zeroext 0, i32 noundef %1525, i32 noundef %1526)
  %1527 = load i8, ptr %x1332, align 1
  %1528 = load i32, ptr %x1263, align 4
  %1529 = load i32, ptr %x1309, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1333, ptr noundef %x1334, i8 noundef zeroext %1527, i32 noundef %1528, i32 noundef %1529)
  %1530 = load i8, ptr %x1334, align 1
  %1531 = load i32, ptr %x1265, align 4
  %1532 = load i32, ptr %x1311, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1335, ptr noundef %x1336, i8 noundef zeroext %1530, i32 noundef %1531, i32 noundef %1532)
  %1533 = load i8, ptr %x1336, align 1
  %1534 = load i32, ptr %x1267, align 4
  %1535 = load i32, ptr %x1313, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1337, ptr noundef %x1338, i8 noundef zeroext %1533, i32 noundef %1534, i32 noundef %1535)
  %1536 = load i8, ptr %x1338, align 1
  %1537 = load i32, ptr %x1269, align 4
  %1538 = load i32, ptr %x1315, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1339, ptr noundef %x1340, i8 noundef zeroext %1536, i32 noundef %1537, i32 noundef %1538)
  %1539 = load i8, ptr %x1340, align 1
  %1540 = load i32, ptr %x1271, align 4
  %1541 = load i32, ptr %x1317, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1341, ptr noundef %x1342, i8 noundef zeroext %1539, i32 noundef %1540, i32 noundef %1541)
  %1542 = load i8, ptr %x1342, align 1
  %1543 = load i32, ptr %x1273, align 4
  %1544 = load i32, ptr %x1319, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1343, ptr noundef %x1344, i8 noundef zeroext %1542, i32 noundef %1543, i32 noundef %1544)
  %1545 = load i8, ptr %x1344, align 1
  %1546 = load i32, ptr %x1275, align 4
  %1547 = load i32, ptr %x1321, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1345, ptr noundef %x1346, i8 noundef zeroext %1545, i32 noundef %1546, i32 noundef %1547)
  %1548 = load i8, ptr %x1346, align 1
  %1549 = load i32, ptr %x1277, align 4
  %1550 = load i32, ptr %x1323, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1347, ptr noundef %x1348, i8 noundef zeroext %1548, i32 noundef %1549, i32 noundef %1550)
  %1551 = load i8, ptr %x1348, align 1
  %1552 = load i32, ptr %x1279, align 4
  %1553 = load i32, ptr %x1325, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1349, ptr noundef %x1350, i8 noundef zeroext %1551, i32 noundef %1552, i32 noundef %1553)
  %1554 = load i8, ptr %x1350, align 1
  %1555 = load i32, ptr %x1281, align 4
  %1556 = load i32, ptr %x1327, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1351, ptr noundef %x1352, i8 noundef zeroext %1554, i32 noundef %1555, i32 noundef %1556)
  %1557 = load i8, ptr %x1352, align 1
  %1558 = load i32, ptr %x1283, align 4
  %1559 = load i32, ptr %x1329, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1353, ptr noundef %x1354, i8 noundef zeroext %1557, i32 noundef %1558, i32 noundef %1559)
  %1560 = load i32, ptr %x1331, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1355, ptr noundef %x1356, i32 noundef %1560, i32 noundef -393225147)
  %1561 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1357, ptr noundef %x1358, i32 noundef %1561, i32 noundef -1)
  %1562 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1359, ptr noundef %x1360, i32 noundef %1562, i32 noundef -1)
  %1563 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1361, ptr noundef %x1362, i32 noundef %1563, i32 noundef -1)
  %1564 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1363, ptr noundef %x1364, i32 noundef %1564, i32 noundef -1)
  %1565 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1365, ptr noundef %x1366, i32 noundef %1565, i32 noundef -1)
  %1566 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1367, ptr noundef %x1368, i32 noundef %1566, i32 noundef -1)
  %1567 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1369, ptr noundef %x1370, i32 noundef %1567, i32 noundef -949793407)
  %1568 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1371, ptr noundef %x1372, i32 noundef %1568, i32 noundef -197710369)
  %1569 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1373, ptr noundef %x1374, i32 noundef %1569, i32 noundef 1478102450)
  %1570 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1375, ptr noundef %x1376, i32 noundef %1570, i32 noundef 1219536762)
  %1571 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1377, ptr noundef %x1378, i32 noundef %1571, i32 noundef -320071318)
  %1572 = load i32, ptr %x1355, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1379, ptr noundef %x1380, i32 noundef %1572, i32 noundef -859494029)
  %1573 = load i32, ptr %x1380, align 4
  %1574 = load i32, ptr %x1377, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1381, ptr noundef %x1382, i8 noundef zeroext 0, i32 noundef %1573, i32 noundef %1574)
  %1575 = load i8, ptr %x1382, align 1
  %1576 = load i32, ptr %x1378, align 4
  %1577 = load i32, ptr %x1375, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1383, ptr noundef %x1384, i8 noundef zeroext %1575, i32 noundef %1576, i32 noundef %1577)
  %1578 = load i8, ptr %x1384, align 1
  %1579 = load i32, ptr %x1376, align 4
  %1580 = load i32, ptr %x1373, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1385, ptr noundef %x1386, i8 noundef zeroext %1578, i32 noundef %1579, i32 noundef %1580)
  %1581 = load i8, ptr %x1386, align 1
  %1582 = load i32, ptr %x1374, align 4
  %1583 = load i32, ptr %x1371, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1387, ptr noundef %x1388, i8 noundef zeroext %1581, i32 noundef %1582, i32 noundef %1583)
  %1584 = load i8, ptr %x1388, align 1
  %1585 = load i32, ptr %x1372, align 4
  %1586 = load i32, ptr %x1369, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1389, ptr noundef %x1390, i8 noundef zeroext %1584, i32 noundef %1585, i32 noundef %1586)
  %1587 = load i8, ptr %x1390, align 1
  %1588 = load i32, ptr %x1370, align 4
  %1589 = load i32, ptr %x1367, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1391, ptr noundef %x1392, i8 noundef zeroext %1587, i32 noundef %1588, i32 noundef %1589)
  %1590 = load i8, ptr %x1392, align 1
  %1591 = load i32, ptr %x1368, align 4
  %1592 = load i32, ptr %x1365, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1393, ptr noundef %x1394, i8 noundef zeroext %1590, i32 noundef %1591, i32 noundef %1592)
  %1593 = load i8, ptr %x1394, align 1
  %1594 = load i32, ptr %x1366, align 4
  %1595 = load i32, ptr %x1363, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1395, ptr noundef %x1396, i8 noundef zeroext %1593, i32 noundef %1594, i32 noundef %1595)
  %1596 = load i8, ptr %x1396, align 1
  %1597 = load i32, ptr %x1364, align 4
  %1598 = load i32, ptr %x1361, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1397, ptr noundef %x1398, i8 noundef zeroext %1596, i32 noundef %1597, i32 noundef %1598)
  %1599 = load i8, ptr %x1398, align 1
  %1600 = load i32, ptr %x1362, align 4
  %1601 = load i32, ptr %x1359, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1399, ptr noundef %x1400, i8 noundef zeroext %1599, i32 noundef %1600, i32 noundef %1601)
  %1602 = load i8, ptr %x1400, align 1
  %1603 = load i32, ptr %x1360, align 4
  %1604 = load i32, ptr %x1357, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1401, ptr noundef %x1402, i8 noundef zeroext %1602, i32 noundef %1603, i32 noundef %1604)
  %1605 = load i32, ptr %x1331, align 4
  %1606 = load i32, ptr %x1379, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1403, ptr noundef %x1404, i8 noundef zeroext 0, i32 noundef %1605, i32 noundef %1606)
  %1607 = load i8, ptr %x1404, align 1
  %1608 = load i32, ptr %x1333, align 4
  %1609 = load i32, ptr %x1381, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1405, ptr noundef %x1406, i8 noundef zeroext %1607, i32 noundef %1608, i32 noundef %1609)
  %1610 = load i8, ptr %x1406, align 1
  %1611 = load i32, ptr %x1335, align 4
  %1612 = load i32, ptr %x1383, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1407, ptr noundef %x1408, i8 noundef zeroext %1610, i32 noundef %1611, i32 noundef %1612)
  %1613 = load i8, ptr %x1408, align 1
  %1614 = load i32, ptr %x1337, align 4
  %1615 = load i32, ptr %x1385, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1409, ptr noundef %x1410, i8 noundef zeroext %1613, i32 noundef %1614, i32 noundef %1615)
  %1616 = load i8, ptr %x1410, align 1
  %1617 = load i32, ptr %x1339, align 4
  %1618 = load i32, ptr %x1387, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1411, ptr noundef %x1412, i8 noundef zeroext %1616, i32 noundef %1617, i32 noundef %1618)
  %1619 = load i8, ptr %x1412, align 1
  %1620 = load i32, ptr %x1341, align 4
  %1621 = load i32, ptr %x1389, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1413, ptr noundef %x1414, i8 noundef zeroext %1619, i32 noundef %1620, i32 noundef %1621)
  %1622 = load i8, ptr %x1414, align 1
  %1623 = load i32, ptr %x1343, align 4
  %1624 = load i32, ptr %x1391, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1415, ptr noundef %x1416, i8 noundef zeroext %1622, i32 noundef %1623, i32 noundef %1624)
  %1625 = load i8, ptr %x1416, align 1
  %1626 = load i32, ptr %x1345, align 4
  %1627 = load i32, ptr %x1393, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1417, ptr noundef %x1418, i8 noundef zeroext %1625, i32 noundef %1626, i32 noundef %1627)
  %1628 = load i8, ptr %x1418, align 1
  %1629 = load i32, ptr %x1347, align 4
  %1630 = load i32, ptr %x1395, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1419, ptr noundef %x1420, i8 noundef zeroext %1628, i32 noundef %1629, i32 noundef %1630)
  %1631 = load i8, ptr %x1420, align 1
  %1632 = load i32, ptr %x1349, align 4
  %1633 = load i32, ptr %x1397, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1421, ptr noundef %x1422, i8 noundef zeroext %1631, i32 noundef %1632, i32 noundef %1633)
  %1634 = load i8, ptr %x1422, align 1
  %1635 = load i32, ptr %x1351, align 4
  %1636 = load i32, ptr %x1399, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1423, ptr noundef %x1424, i8 noundef zeroext %1634, i32 noundef %1635, i32 noundef %1636)
  %1637 = load i8, ptr %x1424, align 1
  %1638 = load i32, ptr %x1353, align 4
  %1639 = load i32, ptr %x1401, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1425, ptr noundef %x1426, i8 noundef zeroext %1637, i32 noundef %1638, i32 noundef %1639)
  %1640 = load i8, ptr %x1426, align 1
  %1641 = load i8, ptr %x1354, align 1
  %conv78 = zext i8 %1641 to i32
  %1642 = load i8, ptr %x1284, align 1
  %conv79 = zext i8 %1642 to i32
  %add80 = add i32 %conv78, %conv79
  %1643 = load i8, ptr %x1330, align 1
  %conv81 = zext i8 %1643 to i32
  %1644 = load i32, ptr %x1286, align 4
  %add82 = add i32 %conv81, %1644
  %add83 = add i32 %add80, %add82
  %1645 = load i8, ptr %x1402, align 1
  %conv84 = zext i8 %1645 to i32
  %1646 = load i32, ptr %x1358, align 4
  %add85 = add i32 %conv84, %1646
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1427, ptr noundef %x1428, i8 noundef zeroext %1640, i32 noundef %add83, i32 noundef %add85)
  %1647 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1429, ptr noundef %x1430, i32 noundef %1647, i32 noundef 210038273)
  %1648 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1431, ptr noundef %x1432, i32 noundef %1648, i32 noundef 725204769)
  %1649 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1433, ptr noundef %x1434, i32 noundef %1649, i32 noundef 1068522362)
  %1650 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1435, ptr noundef %x1436, i32 noundef %1650, i32 noundef 673605781)
  %1651 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1437, ptr noundef %x1438, i32 noundef %1651, i32 noundef -737326825)
  %1652 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1439, ptr noundef %x1440, i32 noundef %1652, i32 noundef 1252728005)
  %1653 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1441, ptr noundef %x1442, i32 noundef %1653, i32 noundef -1136768966)
  %1654 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1443, ptr noundef %x1444, i32 noundef %1654, i32 noundef -55039673)
  %1655 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1445, ptr noundef %x1446, i32 noundef %1655, i32 noundef -12746267)
  %1656 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1447, ptr noundef %x1448, i32 noundef %1656, i32 noundef -551902183)
  %1657 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1449, ptr noundef %x1450, i32 noundef %1657, i32 noundef 758225700)
  %1658 = load i32, ptr %x10, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1451, ptr noundef %x1452, i32 noundef %1658, i32 noundef 431229353)
  %1659 = load i32, ptr %x1452, align 4
  %1660 = load i32, ptr %x1449, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1453, ptr noundef %x1454, i8 noundef zeroext 0, i32 noundef %1659, i32 noundef %1660)
  %1661 = load i8, ptr %x1454, align 1
  %1662 = load i32, ptr %x1450, align 4
  %1663 = load i32, ptr %x1447, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1455, ptr noundef %x1456, i8 noundef zeroext %1661, i32 noundef %1662, i32 noundef %1663)
  %1664 = load i8, ptr %x1456, align 1
  %1665 = load i32, ptr %x1448, align 4
  %1666 = load i32, ptr %x1445, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1457, ptr noundef %x1458, i8 noundef zeroext %1664, i32 noundef %1665, i32 noundef %1666)
  %1667 = load i8, ptr %x1458, align 1
  %1668 = load i32, ptr %x1446, align 4
  %1669 = load i32, ptr %x1443, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1459, ptr noundef %x1460, i8 noundef zeroext %1667, i32 noundef %1668, i32 noundef %1669)
  %1670 = load i8, ptr %x1460, align 1
  %1671 = load i32, ptr %x1444, align 4
  %1672 = load i32, ptr %x1441, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1461, ptr noundef %x1462, i8 noundef zeroext %1670, i32 noundef %1671, i32 noundef %1672)
  %1673 = load i8, ptr %x1462, align 1
  %1674 = load i32, ptr %x1442, align 4
  %1675 = load i32, ptr %x1439, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1463, ptr noundef %x1464, i8 noundef zeroext %1673, i32 noundef %1674, i32 noundef %1675)
  %1676 = load i8, ptr %x1464, align 1
  %1677 = load i32, ptr %x1440, align 4
  %1678 = load i32, ptr %x1437, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1465, ptr noundef %x1466, i8 noundef zeroext %1676, i32 noundef %1677, i32 noundef %1678)
  %1679 = load i8, ptr %x1466, align 1
  %1680 = load i32, ptr %x1438, align 4
  %1681 = load i32, ptr %x1435, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1467, ptr noundef %x1468, i8 noundef zeroext %1679, i32 noundef %1680, i32 noundef %1681)
  %1682 = load i8, ptr %x1468, align 1
  %1683 = load i32, ptr %x1436, align 4
  %1684 = load i32, ptr %x1433, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1469, ptr noundef %x1470, i8 noundef zeroext %1682, i32 noundef %1683, i32 noundef %1684)
  %1685 = load i8, ptr %x1470, align 1
  %1686 = load i32, ptr %x1434, align 4
  %1687 = load i32, ptr %x1431, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1471, ptr noundef %x1472, i8 noundef zeroext %1685, i32 noundef %1686, i32 noundef %1687)
  %1688 = load i8, ptr %x1472, align 1
  %1689 = load i32, ptr %x1432, align 4
  %1690 = load i32, ptr %x1429, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1473, ptr noundef %x1474, i8 noundef zeroext %1688, i32 noundef %1689, i32 noundef %1690)
  %1691 = load i32, ptr %x1405, align 4
  %1692 = load i32, ptr %x1451, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1475, ptr noundef %x1476, i8 noundef zeroext 0, i32 noundef %1691, i32 noundef %1692)
  %1693 = load i8, ptr %x1476, align 1
  %1694 = load i32, ptr %x1407, align 4
  %1695 = load i32, ptr %x1453, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1477, ptr noundef %x1478, i8 noundef zeroext %1693, i32 noundef %1694, i32 noundef %1695)
  %1696 = load i8, ptr %x1478, align 1
  %1697 = load i32, ptr %x1409, align 4
  %1698 = load i32, ptr %x1455, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1479, ptr noundef %x1480, i8 noundef zeroext %1696, i32 noundef %1697, i32 noundef %1698)
  %1699 = load i8, ptr %x1480, align 1
  %1700 = load i32, ptr %x1411, align 4
  %1701 = load i32, ptr %x1457, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1481, ptr noundef %x1482, i8 noundef zeroext %1699, i32 noundef %1700, i32 noundef %1701)
  %1702 = load i8, ptr %x1482, align 1
  %1703 = load i32, ptr %x1413, align 4
  %1704 = load i32, ptr %x1459, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1483, ptr noundef %x1484, i8 noundef zeroext %1702, i32 noundef %1703, i32 noundef %1704)
  %1705 = load i8, ptr %x1484, align 1
  %1706 = load i32, ptr %x1415, align 4
  %1707 = load i32, ptr %x1461, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1485, ptr noundef %x1486, i8 noundef zeroext %1705, i32 noundef %1706, i32 noundef %1707)
  %1708 = load i8, ptr %x1486, align 1
  %1709 = load i32, ptr %x1417, align 4
  %1710 = load i32, ptr %x1463, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1487, ptr noundef %x1488, i8 noundef zeroext %1708, i32 noundef %1709, i32 noundef %1710)
  %1711 = load i8, ptr %x1488, align 1
  %1712 = load i32, ptr %x1419, align 4
  %1713 = load i32, ptr %x1465, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1489, ptr noundef %x1490, i8 noundef zeroext %1711, i32 noundef %1712, i32 noundef %1713)
  %1714 = load i8, ptr %x1490, align 1
  %1715 = load i32, ptr %x1421, align 4
  %1716 = load i32, ptr %x1467, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1491, ptr noundef %x1492, i8 noundef zeroext %1714, i32 noundef %1715, i32 noundef %1716)
  %1717 = load i8, ptr %x1492, align 1
  %1718 = load i32, ptr %x1423, align 4
  %1719 = load i32, ptr %x1469, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1493, ptr noundef %x1494, i8 noundef zeroext %1717, i32 noundef %1718, i32 noundef %1719)
  %1720 = load i8, ptr %x1494, align 1
  %1721 = load i32, ptr %x1425, align 4
  %1722 = load i32, ptr %x1471, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1495, ptr noundef %x1496, i8 noundef zeroext %1720, i32 noundef %1721, i32 noundef %1722)
  %1723 = load i8, ptr %x1496, align 1
  %1724 = load i32, ptr %x1427, align 4
  %1725 = load i32, ptr %x1473, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1497, ptr noundef %x1498, i8 noundef zeroext %1723, i32 noundef %1724, i32 noundef %1725)
  %1726 = load i32, ptr %x1475, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1499, ptr noundef %x1500, i32 noundef %1726, i32 noundef -393225147)
  %1727 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1501, ptr noundef %x1502, i32 noundef %1727, i32 noundef -1)
  %1728 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1503, ptr noundef %x1504, i32 noundef %1728, i32 noundef -1)
  %1729 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1505, ptr noundef %x1506, i32 noundef %1729, i32 noundef -1)
  %1730 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1507, ptr noundef %x1508, i32 noundef %1730, i32 noundef -1)
  %1731 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1509, ptr noundef %x1510, i32 noundef %1731, i32 noundef -1)
  %1732 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1511, ptr noundef %x1512, i32 noundef %1732, i32 noundef -1)
  %1733 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1513, ptr noundef %x1514, i32 noundef %1733, i32 noundef -949793407)
  %1734 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1515, ptr noundef %x1516, i32 noundef %1734, i32 noundef -197710369)
  %1735 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1517, ptr noundef %x1518, i32 noundef %1735, i32 noundef 1478102450)
  %1736 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1519, ptr noundef %x1520, i32 noundef %1736, i32 noundef 1219536762)
  %1737 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1521, ptr noundef %x1522, i32 noundef %1737, i32 noundef -320071318)
  %1738 = load i32, ptr %x1499, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1523, ptr noundef %x1524, i32 noundef %1738, i32 noundef -859494029)
  %1739 = load i32, ptr %x1524, align 4
  %1740 = load i32, ptr %x1521, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1525, ptr noundef %x1526, i8 noundef zeroext 0, i32 noundef %1739, i32 noundef %1740)
  %1741 = load i8, ptr %x1526, align 1
  %1742 = load i32, ptr %x1522, align 4
  %1743 = load i32, ptr %x1519, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1527, ptr noundef %x1528, i8 noundef zeroext %1741, i32 noundef %1742, i32 noundef %1743)
  %1744 = load i8, ptr %x1528, align 1
  %1745 = load i32, ptr %x1520, align 4
  %1746 = load i32, ptr %x1517, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1529, ptr noundef %x1530, i8 noundef zeroext %1744, i32 noundef %1745, i32 noundef %1746)
  %1747 = load i8, ptr %x1530, align 1
  %1748 = load i32, ptr %x1518, align 4
  %1749 = load i32, ptr %x1515, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1531, ptr noundef %x1532, i8 noundef zeroext %1747, i32 noundef %1748, i32 noundef %1749)
  %1750 = load i8, ptr %x1532, align 1
  %1751 = load i32, ptr %x1516, align 4
  %1752 = load i32, ptr %x1513, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1533, ptr noundef %x1534, i8 noundef zeroext %1750, i32 noundef %1751, i32 noundef %1752)
  %1753 = load i8, ptr %x1534, align 1
  %1754 = load i32, ptr %x1514, align 4
  %1755 = load i32, ptr %x1511, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1535, ptr noundef %x1536, i8 noundef zeroext %1753, i32 noundef %1754, i32 noundef %1755)
  %1756 = load i8, ptr %x1536, align 1
  %1757 = load i32, ptr %x1512, align 4
  %1758 = load i32, ptr %x1509, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1537, ptr noundef %x1538, i8 noundef zeroext %1756, i32 noundef %1757, i32 noundef %1758)
  %1759 = load i8, ptr %x1538, align 1
  %1760 = load i32, ptr %x1510, align 4
  %1761 = load i32, ptr %x1507, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1539, ptr noundef %x1540, i8 noundef zeroext %1759, i32 noundef %1760, i32 noundef %1761)
  %1762 = load i8, ptr %x1540, align 1
  %1763 = load i32, ptr %x1508, align 4
  %1764 = load i32, ptr %x1505, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1541, ptr noundef %x1542, i8 noundef zeroext %1762, i32 noundef %1763, i32 noundef %1764)
  %1765 = load i8, ptr %x1542, align 1
  %1766 = load i32, ptr %x1506, align 4
  %1767 = load i32, ptr %x1503, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1543, ptr noundef %x1544, i8 noundef zeroext %1765, i32 noundef %1766, i32 noundef %1767)
  %1768 = load i8, ptr %x1544, align 1
  %1769 = load i32, ptr %x1504, align 4
  %1770 = load i32, ptr %x1501, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1545, ptr noundef %x1546, i8 noundef zeroext %1768, i32 noundef %1769, i32 noundef %1770)
  %1771 = load i32, ptr %x1475, align 4
  %1772 = load i32, ptr %x1523, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1547, ptr noundef %x1548, i8 noundef zeroext 0, i32 noundef %1771, i32 noundef %1772)
  %1773 = load i8, ptr %x1548, align 1
  %1774 = load i32, ptr %x1477, align 4
  %1775 = load i32, ptr %x1525, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1549, ptr noundef %x1550, i8 noundef zeroext %1773, i32 noundef %1774, i32 noundef %1775)
  %1776 = load i8, ptr %x1550, align 1
  %1777 = load i32, ptr %x1479, align 4
  %1778 = load i32, ptr %x1527, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1551, ptr noundef %x1552, i8 noundef zeroext %1776, i32 noundef %1777, i32 noundef %1778)
  %1779 = load i8, ptr %x1552, align 1
  %1780 = load i32, ptr %x1481, align 4
  %1781 = load i32, ptr %x1529, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1553, ptr noundef %x1554, i8 noundef zeroext %1779, i32 noundef %1780, i32 noundef %1781)
  %1782 = load i8, ptr %x1554, align 1
  %1783 = load i32, ptr %x1483, align 4
  %1784 = load i32, ptr %x1531, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1555, ptr noundef %x1556, i8 noundef zeroext %1782, i32 noundef %1783, i32 noundef %1784)
  %1785 = load i8, ptr %x1556, align 1
  %1786 = load i32, ptr %x1485, align 4
  %1787 = load i32, ptr %x1533, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1557, ptr noundef %x1558, i8 noundef zeroext %1785, i32 noundef %1786, i32 noundef %1787)
  %1788 = load i8, ptr %x1558, align 1
  %1789 = load i32, ptr %x1487, align 4
  %1790 = load i32, ptr %x1535, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1559, ptr noundef %x1560, i8 noundef zeroext %1788, i32 noundef %1789, i32 noundef %1790)
  %1791 = load i8, ptr %x1560, align 1
  %1792 = load i32, ptr %x1489, align 4
  %1793 = load i32, ptr %x1537, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1561, ptr noundef %x1562, i8 noundef zeroext %1791, i32 noundef %1792, i32 noundef %1793)
  %1794 = load i8, ptr %x1562, align 1
  %1795 = load i32, ptr %x1491, align 4
  %1796 = load i32, ptr %x1539, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1563, ptr noundef %x1564, i8 noundef zeroext %1794, i32 noundef %1795, i32 noundef %1796)
  %1797 = load i8, ptr %x1564, align 1
  %1798 = load i32, ptr %x1493, align 4
  %1799 = load i32, ptr %x1541, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1565, ptr noundef %x1566, i8 noundef zeroext %1797, i32 noundef %1798, i32 noundef %1799)
  %1800 = load i8, ptr %x1566, align 1
  %1801 = load i32, ptr %x1495, align 4
  %1802 = load i32, ptr %x1543, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1567, ptr noundef %x1568, i8 noundef zeroext %1800, i32 noundef %1801, i32 noundef %1802)
  %1803 = load i8, ptr %x1568, align 1
  %1804 = load i32, ptr %x1497, align 4
  %1805 = load i32, ptr %x1545, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1569, ptr noundef %x1570, i8 noundef zeroext %1803, i32 noundef %1804, i32 noundef %1805)
  %1806 = load i8, ptr %x1570, align 1
  %1807 = load i8, ptr %x1498, align 1
  %conv86 = zext i8 %1807 to i32
  %1808 = load i8, ptr %x1428, align 1
  %conv87 = zext i8 %1808 to i32
  %add88 = add i32 %conv86, %conv87
  %1809 = load i8, ptr %x1474, align 1
  %conv89 = zext i8 %1809 to i32
  %1810 = load i32, ptr %x1430, align 4
  %add90 = add i32 %conv89, %1810
  %add91 = add i32 %add88, %add90
  %1811 = load i8, ptr %x1546, align 1
  %conv92 = zext i8 %1811 to i32
  %1812 = load i32, ptr %x1502, align 4
  %add93 = add i32 %conv92, %1812
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1571, ptr noundef %x1572, i8 noundef zeroext %1806, i32 noundef %add91, i32 noundef %add93)
  %1813 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1573, ptr noundef %x1574, i32 noundef %1813, i32 noundef 210038273)
  %1814 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1575, ptr noundef %x1576, i32 noundef %1814, i32 noundef 725204769)
  %1815 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1577, ptr noundef %x1578, i32 noundef %1815, i32 noundef 1068522362)
  %1816 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1579, ptr noundef %x1580, i32 noundef %1816, i32 noundef 673605781)
  %1817 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1581, ptr noundef %x1582, i32 noundef %1817, i32 noundef -737326825)
  %1818 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1583, ptr noundef %x1584, i32 noundef %1818, i32 noundef 1252728005)
  %1819 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1585, ptr noundef %x1586, i32 noundef %1819, i32 noundef -1136768966)
  %1820 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1587, ptr noundef %x1588, i32 noundef %1820, i32 noundef -55039673)
  %1821 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1589, ptr noundef %x1590, i32 noundef %1821, i32 noundef -12746267)
  %1822 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1591, ptr noundef %x1592, i32 noundef %1822, i32 noundef -551902183)
  %1823 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1593, ptr noundef %x1594, i32 noundef %1823, i32 noundef 758225700)
  %1824 = load i32, ptr %x11, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1595, ptr noundef %x1596, i32 noundef %1824, i32 noundef 431229353)
  %1825 = load i32, ptr %x1596, align 4
  %1826 = load i32, ptr %x1593, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1597, ptr noundef %x1598, i8 noundef zeroext 0, i32 noundef %1825, i32 noundef %1826)
  %1827 = load i8, ptr %x1598, align 1
  %1828 = load i32, ptr %x1594, align 4
  %1829 = load i32, ptr %x1591, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1599, ptr noundef %x1600, i8 noundef zeroext %1827, i32 noundef %1828, i32 noundef %1829)
  %1830 = load i8, ptr %x1600, align 1
  %1831 = load i32, ptr %x1592, align 4
  %1832 = load i32, ptr %x1589, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1601, ptr noundef %x1602, i8 noundef zeroext %1830, i32 noundef %1831, i32 noundef %1832)
  %1833 = load i8, ptr %x1602, align 1
  %1834 = load i32, ptr %x1590, align 4
  %1835 = load i32, ptr %x1587, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1603, ptr noundef %x1604, i8 noundef zeroext %1833, i32 noundef %1834, i32 noundef %1835)
  %1836 = load i8, ptr %x1604, align 1
  %1837 = load i32, ptr %x1588, align 4
  %1838 = load i32, ptr %x1585, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1605, ptr noundef %x1606, i8 noundef zeroext %1836, i32 noundef %1837, i32 noundef %1838)
  %1839 = load i8, ptr %x1606, align 1
  %1840 = load i32, ptr %x1586, align 4
  %1841 = load i32, ptr %x1583, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1607, ptr noundef %x1608, i8 noundef zeroext %1839, i32 noundef %1840, i32 noundef %1841)
  %1842 = load i8, ptr %x1608, align 1
  %1843 = load i32, ptr %x1584, align 4
  %1844 = load i32, ptr %x1581, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1609, ptr noundef %x1610, i8 noundef zeroext %1842, i32 noundef %1843, i32 noundef %1844)
  %1845 = load i8, ptr %x1610, align 1
  %1846 = load i32, ptr %x1582, align 4
  %1847 = load i32, ptr %x1579, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1611, ptr noundef %x1612, i8 noundef zeroext %1845, i32 noundef %1846, i32 noundef %1847)
  %1848 = load i8, ptr %x1612, align 1
  %1849 = load i32, ptr %x1580, align 4
  %1850 = load i32, ptr %x1577, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1613, ptr noundef %x1614, i8 noundef zeroext %1848, i32 noundef %1849, i32 noundef %1850)
  %1851 = load i8, ptr %x1614, align 1
  %1852 = load i32, ptr %x1578, align 4
  %1853 = load i32, ptr %x1575, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1615, ptr noundef %x1616, i8 noundef zeroext %1851, i32 noundef %1852, i32 noundef %1853)
  %1854 = load i8, ptr %x1616, align 1
  %1855 = load i32, ptr %x1576, align 4
  %1856 = load i32, ptr %x1573, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1617, ptr noundef %x1618, i8 noundef zeroext %1854, i32 noundef %1855, i32 noundef %1856)
  %1857 = load i32, ptr %x1549, align 4
  %1858 = load i32, ptr %x1595, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1619, ptr noundef %x1620, i8 noundef zeroext 0, i32 noundef %1857, i32 noundef %1858)
  %1859 = load i8, ptr %x1620, align 1
  %1860 = load i32, ptr %x1551, align 4
  %1861 = load i32, ptr %x1597, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1621, ptr noundef %x1622, i8 noundef zeroext %1859, i32 noundef %1860, i32 noundef %1861)
  %1862 = load i8, ptr %x1622, align 1
  %1863 = load i32, ptr %x1553, align 4
  %1864 = load i32, ptr %x1599, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1623, ptr noundef %x1624, i8 noundef zeroext %1862, i32 noundef %1863, i32 noundef %1864)
  %1865 = load i8, ptr %x1624, align 1
  %1866 = load i32, ptr %x1555, align 4
  %1867 = load i32, ptr %x1601, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1625, ptr noundef %x1626, i8 noundef zeroext %1865, i32 noundef %1866, i32 noundef %1867)
  %1868 = load i8, ptr %x1626, align 1
  %1869 = load i32, ptr %x1557, align 4
  %1870 = load i32, ptr %x1603, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1627, ptr noundef %x1628, i8 noundef zeroext %1868, i32 noundef %1869, i32 noundef %1870)
  %1871 = load i8, ptr %x1628, align 1
  %1872 = load i32, ptr %x1559, align 4
  %1873 = load i32, ptr %x1605, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1629, ptr noundef %x1630, i8 noundef zeroext %1871, i32 noundef %1872, i32 noundef %1873)
  %1874 = load i8, ptr %x1630, align 1
  %1875 = load i32, ptr %x1561, align 4
  %1876 = load i32, ptr %x1607, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1631, ptr noundef %x1632, i8 noundef zeroext %1874, i32 noundef %1875, i32 noundef %1876)
  %1877 = load i8, ptr %x1632, align 1
  %1878 = load i32, ptr %x1563, align 4
  %1879 = load i32, ptr %x1609, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1633, ptr noundef %x1634, i8 noundef zeroext %1877, i32 noundef %1878, i32 noundef %1879)
  %1880 = load i8, ptr %x1634, align 1
  %1881 = load i32, ptr %x1565, align 4
  %1882 = load i32, ptr %x1611, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1635, ptr noundef %x1636, i8 noundef zeroext %1880, i32 noundef %1881, i32 noundef %1882)
  %1883 = load i8, ptr %x1636, align 1
  %1884 = load i32, ptr %x1567, align 4
  %1885 = load i32, ptr %x1613, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1637, ptr noundef %x1638, i8 noundef zeroext %1883, i32 noundef %1884, i32 noundef %1885)
  %1886 = load i8, ptr %x1638, align 1
  %1887 = load i32, ptr %x1569, align 4
  %1888 = load i32, ptr %x1615, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1639, ptr noundef %x1640, i8 noundef zeroext %1886, i32 noundef %1887, i32 noundef %1888)
  %1889 = load i8, ptr %x1640, align 1
  %1890 = load i32, ptr %x1571, align 4
  %1891 = load i32, ptr %x1617, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1641, ptr noundef %x1642, i8 noundef zeroext %1889, i32 noundef %1890, i32 noundef %1891)
  %1892 = load i32, ptr %x1619, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1643, ptr noundef %x1644, i32 noundef %1892, i32 noundef -393225147)
  %1893 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1645, ptr noundef %x1646, i32 noundef %1893, i32 noundef -1)
  %1894 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1647, ptr noundef %x1648, i32 noundef %1894, i32 noundef -1)
  %1895 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1649, ptr noundef %x1650, i32 noundef %1895, i32 noundef -1)
  %1896 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1651, ptr noundef %x1652, i32 noundef %1896, i32 noundef -1)
  %1897 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1653, ptr noundef %x1654, i32 noundef %1897, i32 noundef -1)
  %1898 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1655, ptr noundef %x1656, i32 noundef %1898, i32 noundef -1)
  %1899 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1657, ptr noundef %x1658, i32 noundef %1899, i32 noundef -949793407)
  %1900 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1659, ptr noundef %x1660, i32 noundef %1900, i32 noundef -197710369)
  %1901 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1661, ptr noundef %x1662, i32 noundef %1901, i32 noundef 1478102450)
  %1902 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1663, ptr noundef %x1664, i32 noundef %1902, i32 noundef 1219536762)
  %1903 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1665, ptr noundef %x1666, i32 noundef %1903, i32 noundef -320071318)
  %1904 = load i32, ptr %x1643, align 4
  call void @fiat_p384_scalar_mulx_u32(ptr noundef %x1667, ptr noundef %x1668, i32 noundef %1904, i32 noundef -859494029)
  %1905 = load i32, ptr %x1668, align 4
  %1906 = load i32, ptr %x1665, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1669, ptr noundef %x1670, i8 noundef zeroext 0, i32 noundef %1905, i32 noundef %1906)
  %1907 = load i8, ptr %x1670, align 1
  %1908 = load i32, ptr %x1666, align 4
  %1909 = load i32, ptr %x1663, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1671, ptr noundef %x1672, i8 noundef zeroext %1907, i32 noundef %1908, i32 noundef %1909)
  %1910 = load i8, ptr %x1672, align 1
  %1911 = load i32, ptr %x1664, align 4
  %1912 = load i32, ptr %x1661, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1673, ptr noundef %x1674, i8 noundef zeroext %1910, i32 noundef %1911, i32 noundef %1912)
  %1913 = load i8, ptr %x1674, align 1
  %1914 = load i32, ptr %x1662, align 4
  %1915 = load i32, ptr %x1659, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1675, ptr noundef %x1676, i8 noundef zeroext %1913, i32 noundef %1914, i32 noundef %1915)
  %1916 = load i8, ptr %x1676, align 1
  %1917 = load i32, ptr %x1660, align 4
  %1918 = load i32, ptr %x1657, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1677, ptr noundef %x1678, i8 noundef zeroext %1916, i32 noundef %1917, i32 noundef %1918)
  %1919 = load i8, ptr %x1678, align 1
  %1920 = load i32, ptr %x1658, align 4
  %1921 = load i32, ptr %x1655, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1679, ptr noundef %x1680, i8 noundef zeroext %1919, i32 noundef %1920, i32 noundef %1921)
  %1922 = load i8, ptr %x1680, align 1
  %1923 = load i32, ptr %x1656, align 4
  %1924 = load i32, ptr %x1653, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1681, ptr noundef %x1682, i8 noundef zeroext %1922, i32 noundef %1923, i32 noundef %1924)
  %1925 = load i8, ptr %x1682, align 1
  %1926 = load i32, ptr %x1654, align 4
  %1927 = load i32, ptr %x1651, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1683, ptr noundef %x1684, i8 noundef zeroext %1925, i32 noundef %1926, i32 noundef %1927)
  %1928 = load i8, ptr %x1684, align 1
  %1929 = load i32, ptr %x1652, align 4
  %1930 = load i32, ptr %x1649, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1685, ptr noundef %x1686, i8 noundef zeroext %1928, i32 noundef %1929, i32 noundef %1930)
  %1931 = load i8, ptr %x1686, align 1
  %1932 = load i32, ptr %x1650, align 4
  %1933 = load i32, ptr %x1647, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1687, ptr noundef %x1688, i8 noundef zeroext %1931, i32 noundef %1932, i32 noundef %1933)
  %1934 = load i8, ptr %x1688, align 1
  %1935 = load i32, ptr %x1648, align 4
  %1936 = load i32, ptr %x1645, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1689, ptr noundef %x1690, i8 noundef zeroext %1934, i32 noundef %1935, i32 noundef %1936)
  %1937 = load i32, ptr %x1619, align 4
  %1938 = load i32, ptr %x1667, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1691, ptr noundef %x1692, i8 noundef zeroext 0, i32 noundef %1937, i32 noundef %1938)
  %1939 = load i8, ptr %x1692, align 1
  %1940 = load i32, ptr %x1621, align 4
  %1941 = load i32, ptr %x1669, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1693, ptr noundef %x1694, i8 noundef zeroext %1939, i32 noundef %1940, i32 noundef %1941)
  %1942 = load i8, ptr %x1694, align 1
  %1943 = load i32, ptr %x1623, align 4
  %1944 = load i32, ptr %x1671, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1695, ptr noundef %x1696, i8 noundef zeroext %1942, i32 noundef %1943, i32 noundef %1944)
  %1945 = load i8, ptr %x1696, align 1
  %1946 = load i32, ptr %x1625, align 4
  %1947 = load i32, ptr %x1673, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1697, ptr noundef %x1698, i8 noundef zeroext %1945, i32 noundef %1946, i32 noundef %1947)
  %1948 = load i8, ptr %x1698, align 1
  %1949 = load i32, ptr %x1627, align 4
  %1950 = load i32, ptr %x1675, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1699, ptr noundef %x1700, i8 noundef zeroext %1948, i32 noundef %1949, i32 noundef %1950)
  %1951 = load i8, ptr %x1700, align 1
  %1952 = load i32, ptr %x1629, align 4
  %1953 = load i32, ptr %x1677, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1701, ptr noundef %x1702, i8 noundef zeroext %1951, i32 noundef %1952, i32 noundef %1953)
  %1954 = load i8, ptr %x1702, align 1
  %1955 = load i32, ptr %x1631, align 4
  %1956 = load i32, ptr %x1679, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1703, ptr noundef %x1704, i8 noundef zeroext %1954, i32 noundef %1955, i32 noundef %1956)
  %1957 = load i8, ptr %x1704, align 1
  %1958 = load i32, ptr %x1633, align 4
  %1959 = load i32, ptr %x1681, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1705, ptr noundef %x1706, i8 noundef zeroext %1957, i32 noundef %1958, i32 noundef %1959)
  %1960 = load i8, ptr %x1706, align 1
  %1961 = load i32, ptr %x1635, align 4
  %1962 = load i32, ptr %x1683, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1707, ptr noundef %x1708, i8 noundef zeroext %1960, i32 noundef %1961, i32 noundef %1962)
  %1963 = load i8, ptr %x1708, align 1
  %1964 = load i32, ptr %x1637, align 4
  %1965 = load i32, ptr %x1685, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1709, ptr noundef %x1710, i8 noundef zeroext %1963, i32 noundef %1964, i32 noundef %1965)
  %1966 = load i8, ptr %x1710, align 1
  %1967 = load i32, ptr %x1639, align 4
  %1968 = load i32, ptr %x1687, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1711, ptr noundef %x1712, i8 noundef zeroext %1966, i32 noundef %1967, i32 noundef %1968)
  %1969 = load i8, ptr %x1712, align 1
  %1970 = load i32, ptr %x1641, align 4
  %1971 = load i32, ptr %x1689, align 4
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1713, ptr noundef %x1714, i8 noundef zeroext %1969, i32 noundef %1970, i32 noundef %1971)
  %1972 = load i8, ptr %x1714, align 1
  %1973 = load i8, ptr %x1642, align 1
  %conv94 = zext i8 %1973 to i32
  %1974 = load i8, ptr %x1572, align 1
  %conv95 = zext i8 %1974 to i32
  %add96 = add i32 %conv94, %conv95
  %1975 = load i8, ptr %x1618, align 1
  %conv97 = zext i8 %1975 to i32
  %1976 = load i32, ptr %x1574, align 4
  %add98 = add i32 %conv97, %1976
  %add99 = add i32 %add96, %add98
  %1977 = load i8, ptr %x1690, align 1
  %conv100 = zext i8 %1977 to i32
  %1978 = load i32, ptr %x1646, align 4
  %add101 = add i32 %conv100, %1978
  call void @fiat_p384_scalar_addcarryx_u32(ptr noundef %x1715, ptr noundef %x1716, i8 noundef zeroext %1972, i32 noundef %add99, i32 noundef %add101)
  %1979 = load i32, ptr %x1693, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1717, ptr noundef %x1718, i8 noundef zeroext 0, i32 noundef %1979, i32 noundef -859494029)
  %1980 = load i8, ptr %x1718, align 1
  %1981 = load i32, ptr %x1695, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1719, ptr noundef %x1720, i8 noundef zeroext %1980, i32 noundef %1981, i32 noundef -320071318)
  %1982 = load i8, ptr %x1720, align 1
  %1983 = load i32, ptr %x1697, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1721, ptr noundef %x1722, i8 noundef zeroext %1982, i32 noundef %1983, i32 noundef 1219536762)
  %1984 = load i8, ptr %x1722, align 1
  %1985 = load i32, ptr %x1699, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1723, ptr noundef %x1724, i8 noundef zeroext %1984, i32 noundef %1985, i32 noundef 1478102450)
  %1986 = load i8, ptr %x1724, align 1
  %1987 = load i32, ptr %x1701, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1725, ptr noundef %x1726, i8 noundef zeroext %1986, i32 noundef %1987, i32 noundef -197710369)
  %1988 = load i8, ptr %x1726, align 1
  %1989 = load i32, ptr %x1703, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1727, ptr noundef %x1728, i8 noundef zeroext %1988, i32 noundef %1989, i32 noundef -949793407)
  %1990 = load i8, ptr %x1728, align 1
  %1991 = load i32, ptr %x1705, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1729, ptr noundef %x1730, i8 noundef zeroext %1990, i32 noundef %1991, i32 noundef -1)
  %1992 = load i8, ptr %x1730, align 1
  %1993 = load i32, ptr %x1707, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1731, ptr noundef %x1732, i8 noundef zeroext %1992, i32 noundef %1993, i32 noundef -1)
  %1994 = load i8, ptr %x1732, align 1
  %1995 = load i32, ptr %x1709, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1733, ptr noundef %x1734, i8 noundef zeroext %1994, i32 noundef %1995, i32 noundef -1)
  %1996 = load i8, ptr %x1734, align 1
  %1997 = load i32, ptr %x1711, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1735, ptr noundef %x1736, i8 noundef zeroext %1996, i32 noundef %1997, i32 noundef -1)
  %1998 = load i8, ptr %x1736, align 1
  %1999 = load i32, ptr %x1713, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1737, ptr noundef %x1738, i8 noundef zeroext %1998, i32 noundef %1999, i32 noundef -1)
  %2000 = load i8, ptr %x1738, align 1
  %2001 = load i32, ptr %x1715, align 4
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1739, ptr noundef %x1740, i8 noundef zeroext %2000, i32 noundef %2001, i32 noundef -1)
  %2002 = load i8, ptr %x1740, align 1
  %2003 = load i8, ptr %x1716, align 1
  %conv102 = zext i8 %2003 to i32
  call void @fiat_p384_scalar_subborrowx_u32(ptr noundef %x1741, ptr noundef %x1742, i8 noundef zeroext %2002, i32 noundef %conv102, i32 noundef 0)
  %2004 = load i8, ptr %x1742, align 1
  %2005 = load i32, ptr %x1717, align 4
  %2006 = load i32, ptr %x1693, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1743, i8 noundef zeroext %2004, i32 noundef %2005, i32 noundef %2006)
  %2007 = load i8, ptr %x1742, align 1
  %2008 = load i32, ptr %x1719, align 4
  %2009 = load i32, ptr %x1695, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1744, i8 noundef zeroext %2007, i32 noundef %2008, i32 noundef %2009)
  %2010 = load i8, ptr %x1742, align 1
  %2011 = load i32, ptr %x1721, align 4
  %2012 = load i32, ptr %x1697, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1745, i8 noundef zeroext %2010, i32 noundef %2011, i32 noundef %2012)
  %2013 = load i8, ptr %x1742, align 1
  %2014 = load i32, ptr %x1723, align 4
  %2015 = load i32, ptr %x1699, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1746, i8 noundef zeroext %2013, i32 noundef %2014, i32 noundef %2015)
  %2016 = load i8, ptr %x1742, align 1
  %2017 = load i32, ptr %x1725, align 4
  %2018 = load i32, ptr %x1701, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1747, i8 noundef zeroext %2016, i32 noundef %2017, i32 noundef %2018)
  %2019 = load i8, ptr %x1742, align 1
  %2020 = load i32, ptr %x1727, align 4
  %2021 = load i32, ptr %x1703, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1748, i8 noundef zeroext %2019, i32 noundef %2020, i32 noundef %2021)
  %2022 = load i8, ptr %x1742, align 1
  %2023 = load i32, ptr %x1729, align 4
  %2024 = load i32, ptr %x1705, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1749, i8 noundef zeroext %2022, i32 noundef %2023, i32 noundef %2024)
  %2025 = load i8, ptr %x1742, align 1
  %2026 = load i32, ptr %x1731, align 4
  %2027 = load i32, ptr %x1707, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1750, i8 noundef zeroext %2025, i32 noundef %2026, i32 noundef %2027)
  %2028 = load i8, ptr %x1742, align 1
  %2029 = load i32, ptr %x1733, align 4
  %2030 = load i32, ptr %x1709, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1751, i8 noundef zeroext %2028, i32 noundef %2029, i32 noundef %2030)
  %2031 = load i8, ptr %x1742, align 1
  %2032 = load i32, ptr %x1735, align 4
  %2033 = load i32, ptr %x1711, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1752, i8 noundef zeroext %2031, i32 noundef %2032, i32 noundef %2033)
  %2034 = load i8, ptr %x1742, align 1
  %2035 = load i32, ptr %x1737, align 4
  %2036 = load i32, ptr %x1713, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1753, i8 noundef zeroext %2034, i32 noundef %2035, i32 noundef %2036)
  %2037 = load i8, ptr %x1742, align 1
  %2038 = load i32, ptr %x1739, align 4
  %2039 = load i32, ptr %x1715, align 4
  call void @fiat_p384_scalar_cmovznz_u32(ptr noundef %x1754, i8 noundef zeroext %2037, i32 noundef %2038, i32 noundef %2039)
  %2040 = load i32, ptr %x1743, align 4
  %2041 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %2041, i64 0
  store i32 %2040, ptr %arrayidx103, align 4
  %2042 = load i32, ptr %x1744, align 4
  %2043 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %2043, i64 1
  store i32 %2042, ptr %arrayidx104, align 4
  %2044 = load i32, ptr %x1745, align 4
  %2045 = load ptr, ptr %out1.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %2045, i64 2
  store i32 %2044, ptr %arrayidx105, align 4
  %2046 = load i32, ptr %x1746, align 4
  %2047 = load ptr, ptr %out1.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %2047, i64 3
  store i32 %2046, ptr %arrayidx106, align 4
  %2048 = load i32, ptr %x1747, align 4
  %2049 = load ptr, ptr %out1.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %2049, i64 4
  store i32 %2048, ptr %arrayidx107, align 4
  %2050 = load i32, ptr %x1748, align 4
  %2051 = load ptr, ptr %out1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %2051, i64 5
  store i32 %2050, ptr %arrayidx108, align 4
  %2052 = load i32, ptr %x1749, align 4
  %2053 = load ptr, ptr %out1.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %2053, i64 6
  store i32 %2052, ptr %arrayidx109, align 4
  %2054 = load i32, ptr %x1750, align 4
  %2055 = load ptr, ptr %out1.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %2055, i64 7
  store i32 %2054, ptr %arrayidx110, align 4
  %2056 = load i32, ptr %x1751, align 4
  %2057 = load ptr, ptr %out1.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %2057, i64 8
  store i32 %2056, ptr %arrayidx111, align 4
  %2058 = load i32, ptr %x1752, align 4
  %2059 = load ptr, ptr %out1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %2059, i64 9
  store i32 %2058, ptr %arrayidx112, align 4
  %2060 = load i32, ptr %x1753, align 4
  %2061 = load ptr, ptr %out1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %2061, i64 10
  store i32 %2060, ptr %arrayidx113, align 4
  %2062 = load i32, ptr %x1754, align 4
  %2063 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %2063, i64 11
  store i32 %2062, ptr %arrayidx114, align 4
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
