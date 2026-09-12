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
define dso_local void @fiat_p384_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i32, align 4
  %x61 = alloca i32, align 4
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
  %x209 = alloca i8, align 1
  %x210 = alloca i32, align 4
  %x211 = alloca i8, align 1
  %x212 = alloca i32, align 4
  %x213 = alloca i8, align 1
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
  %x313 = alloca i32, align 4
  %x314 = alloca i32, align 4
  %x315 = alloca i32, align 4
  %x316 = alloca i32, align 4
  %x317 = alloca i32, align 4
  %x318 = alloca i32, align 4
  %x319 = alloca i32, align 4
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
  %x400 = alloca i32, align 4
  %x401 = alloca i32, align 4
  %x402 = alloca i32, align 4
  %x403 = alloca i32, align 4
  %x404 = alloca i32, align 4
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
  %x491 = alloca i32, align 4
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
  %x571 = alloca i32, align 4
  %x572 = alloca i32, align 4
  %x573 = alloca i32, align 4
  %x574 = alloca i32, align 4
  %x575 = alloca i32, align 4
  %x576 = alloca i32, align 4
  %x577 = alloca i32, align 4
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
  %x591 = alloca i8, align 1
  %x592 = alloca i32, align 4
  %x593 = alloca i8, align 1
  %x594 = alloca i32, align 4
  %x595 = alloca i8, align 1
  %x596 = alloca i32, align 4
  %x597 = alloca i8, align 1
  %x598 = alloca i32, align 4
  %x599 = alloca i8, align 1
  %x600 = alloca i32, align 4
  %x601 = alloca i8, align 1
  %x602 = alloca i32, align 4
  %x603 = alloca i8, align 1
  %x604 = alloca i32, align 4
  %x605 = alloca i8, align 1
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
  %x805 = alloca i8, align 1
  %x806 = alloca i32, align 4
  %x807 = alloca i8, align 1
  %x808 = alloca i32, align 4
  %x809 = alloca i8, align 1
  %x810 = alloca i32, align 4
  %x811 = alloca i8, align 1
  %x812 = alloca i32, align 4
  %x813 = alloca i8, align 1
  %x814 = alloca i32, align 4
  %x815 = alloca i8, align 1
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
  %x833 = alloca i32, align 4
  %x834 = alloca i32, align 4
  %x835 = alloca i32, align 4
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
  %x885 = alloca i8, align 1
  %x886 = alloca i32, align 4
  %x887 = alloca i8, align 1
  %x888 = alloca i32, align 4
  %x889 = alloca i8, align 1
  %x890 = alloca i32, align 4
  %x891 = alloca i8, align 1
  %x892 = alloca i32, align 4
  %x893 = alloca i8, align 1
  %x894 = alloca i32, align 4
  %x895 = alloca i8, align 1
  %x896 = alloca i32, align 4
  %x897 = alloca i8, align 1
  %x898 = alloca i32, align 4
  %x899 = alloca i8, align 1
  %x900 = alloca i32, align 4
  %x901 = alloca i8, align 1
  %x902 = alloca i32, align 4
  %x903 = alloca i32, align 4
  %x904 = alloca i32, align 4
  %x905 = alloca i32, align 4
  %x906 = alloca i32, align 4
  %x907 = alloca i32, align 4
  %x908 = alloca i32, align 4
  %x909 = alloca i32, align 4
  %x910 = alloca i32, align 4
  %x911 = alloca i32, align 4
  %x912 = alloca i32, align 4
  %x913 = alloca i32, align 4
  %x914 = alloca i32, align 4
  %x915 = alloca i32, align 4
  %x916 = alloca i32, align 4
  %x917 = alloca i32, align 4
  %x918 = alloca i32, align 4
  %x919 = alloca i32, align 4
  %x920 = alloca i32, align 4
  %x921 = alloca i32, align 4
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
  %x983 = alloca i8, align 1
  %x984 = alloca i32, align 4
  %x985 = alloca i8, align 1
  %x986 = alloca i32, align 4
  %x987 = alloca i8, align 1
  %x988 = alloca i32, align 4
  %x989 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef -1)
  %3 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -1)
  %4 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef -1)
  %7 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %7, i32 noundef -1)
  %8 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x14, ptr noundef %x15, i32 noundef %8, i32 noundef -1)
  %9 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x16, ptr noundef %x17, i32 noundef %9, i32 noundef -2)
  %10 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x18, ptr noundef %x19, i32 noundef %10, i32 noundef -1)
  %11 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x20, ptr noundef %x21, i32 noundef %11, i32 noundef -1)
  %12 = load i32, ptr %x19, align 4
  %13 = load i32, ptr %x16, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i32 noundef %12, i32 noundef %13)
  %14 = load i8, ptr %x23, align 1
  %15 = load i32, ptr %x17, align 4
  %16 = load i32, ptr %x14, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %14, i32 noundef %15, i32 noundef %16)
  %17 = load i8, ptr %x25, align 1
  %18 = load i32, ptr %x15, align 4
  %19 = load i32, ptr %x12, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %17, i32 noundef %18, i32 noundef %19)
  %20 = load i8, ptr %x27, align 1
  %21 = load i32, ptr %x13, align 4
  %22 = load i32, ptr %x10, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %20, i32 noundef %21, i32 noundef %22)
  %23 = load i8, ptr %x29, align 1
  %24 = load i32, ptr %x11, align 4
  %25 = load i32, ptr %x8, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %23, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x31, align 1
  %27 = load i32, ptr %x9, align 4
  %28 = load i32, ptr %x6, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x33, align 1
  %30 = load i32, ptr %x7, align 4
  %31 = load i32, ptr %x4, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x35, align 1
  %33 = load i32, ptr %x5, align 4
  %34 = load i32, ptr %x2, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i32, ptr %x1, align 4
  %36 = load i32, ptr %x20, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext 0, i32 noundef %35, i32 noundef %36)
  %37 = load i8, ptr %x39, align 1
  %conv = zext i8 %37 to i32
  %38 = load i32, ptr %x21, align 4
  %add = add i32 %conv, %38
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %39, i64 1
  %40 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext 0, i32 noundef %add, i32 noundef %40)
  %41 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x42, ptr noundef %x43, i32 noundef %41, i32 noundef -1)
  %42 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %42, i32 noundef -1)
  %43 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x46, ptr noundef %x47, i32 noundef %43, i32 noundef -1)
  %44 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x48, ptr noundef %x49, i32 noundef %44, i32 noundef -1)
  %45 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x50, ptr noundef %x51, i32 noundef %45, i32 noundef -1)
  %46 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x52, ptr noundef %x53, i32 noundef %46, i32 noundef -1)
  %47 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x54, ptr noundef %x55, i32 noundef %47, i32 noundef -1)
  %48 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x56, ptr noundef %x57, i32 noundef %48, i32 noundef -2)
  %49 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x58, ptr noundef %x59, i32 noundef %49, i32 noundef -1)
  %50 = load i32, ptr %x40, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x60, ptr noundef %x61, i32 noundef %50, i32 noundef -1)
  %51 = load i32, ptr %x59, align 4
  %52 = load i32, ptr %x56, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i32 noundef %51, i32 noundef %52)
  %53 = load i8, ptr %x63, align 1
  %54 = load i32, ptr %x57, align 4
  %55 = load i32, ptr %x54, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55)
  %56 = load i8, ptr %x65, align 1
  %57 = load i32, ptr %x55, align 4
  %58 = load i32, ptr %x52, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %56, i32 noundef %57, i32 noundef %58)
  %59 = load i8, ptr %x67, align 1
  %60 = load i32, ptr %x53, align 4
  %61 = load i32, ptr %x50, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %59, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x69, align 1
  %63 = load i32, ptr %x51, align 4
  %64 = load i32, ptr %x48, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x71, align 1
  %66 = load i32, ptr %x49, align 4
  %67 = load i32, ptr %x46, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x73, align 1
  %69 = load i32, ptr %x47, align 4
  %70 = load i32, ptr %x44, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x75, align 1
  %72 = load i32, ptr %x45, align 4
  %73 = load i32, ptr %x42, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %73)
  %74 = load i32, ptr %x40, align 4
  %75 = load i32, ptr %x60, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext 0, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x79, align 1
  %77 = load i8, ptr %x41, align 1
  %conv2 = zext i8 %77 to i32
  %78 = load i32, ptr %x61, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %76, i32 noundef %conv2, i32 noundef %78)
  %79 = load i8, ptr %x81, align 1
  %80 = load i32, ptr %x18, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %79, i32 noundef %80, i32 noundef 0)
  %81 = load i8, ptr %x83, align 1
  %82 = load i32, ptr %x22, align 4
  %83 = load i32, ptr %x58, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x85, align 1
  %85 = load i32, ptr %x24, align 4
  %86 = load i32, ptr %x62, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x87, align 1
  %88 = load i32, ptr %x26, align 4
  %89 = load i32, ptr %x64, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x89, align 1
  %91 = load i32, ptr %x28, align 4
  %92 = load i32, ptr %x66, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92)
  %93 = load i8, ptr %x91, align 1
  %94 = load i32, ptr %x30, align 4
  %95 = load i32, ptr %x68, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %93, i32 noundef %94, i32 noundef %95)
  %96 = load i8, ptr %x93, align 1
  %97 = load i32, ptr %x32, align 4
  %98 = load i32, ptr %x70, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %96, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x95, align 1
  %100 = load i32, ptr %x34, align 4
  %101 = load i32, ptr %x72, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %99, i32 noundef %100, i32 noundef %101)
  %102 = load i8, ptr %x97, align 1
  %103 = load i32, ptr %x36, align 4
  %104 = load i32, ptr %x74, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %102, i32 noundef %103, i32 noundef %104)
  %105 = load i8, ptr %x99, align 1
  %106 = load i8, ptr %x37, align 1
  %conv3 = zext i8 %106 to i32
  %107 = load i32, ptr %x3, align 4
  %add4 = add i32 %conv3, %107
  %108 = load i32, ptr %x76, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %105, i32 noundef %add4, i32 noundef %108)
  %109 = load i8, ptr %x101, align 1
  %110 = load i8, ptr %x77, align 1
  %conv5 = zext i8 %110 to i32
  %111 = load i32, ptr %x43, align 4
  %add6 = add i32 %conv5, %111
  call void @fiat_p384_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %109, i32 noundef 0, i32 noundef %add6)
  %112 = load i32, ptr %x80, align 4
  %113 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %113, i64 2
  %114 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext 0, i32 noundef %112, i32 noundef %114)
  %115 = load i8, ptr %x105, align 1
  %116 = load i32, ptr %x82, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %115, i32 noundef %116, i32 noundef 0)
  %117 = load i8, ptr %x107, align 1
  %118 = load i32, ptr %x84, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %117, i32 noundef %118, i32 noundef 0)
  %119 = load i8, ptr %x109, align 1
  %120 = load i32, ptr %x86, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %119, i32 noundef %120, i32 noundef 0)
  %121 = load i8, ptr %x111, align 1
  %122 = load i32, ptr %x88, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %121, i32 noundef %122, i32 noundef 0)
  %123 = load i8, ptr %x113, align 1
  %124 = load i32, ptr %x90, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %123, i32 noundef %124, i32 noundef 0)
  %125 = load i8, ptr %x115, align 1
  %126 = load i32, ptr %x92, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %125, i32 noundef %126, i32 noundef 0)
  %127 = load i8, ptr %x117, align 1
  %128 = load i32, ptr %x94, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %127, i32 noundef %128, i32 noundef 0)
  %129 = load i8, ptr %x119, align 1
  %130 = load i32, ptr %x96, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %129, i32 noundef %130, i32 noundef 0)
  %131 = load i8, ptr %x121, align 1
  %132 = load i32, ptr %x98, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %131, i32 noundef %132, i32 noundef 0)
  %133 = load i8, ptr %x123, align 1
  %134 = load i32, ptr %x100, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %133, i32 noundef %134, i32 noundef 0)
  %135 = load i8, ptr %x125, align 1
  %136 = load i32, ptr %x102, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %135, i32 noundef %136, i32 noundef 0)
  %137 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x128, ptr noundef %x129, i32 noundef %137, i32 noundef -1)
  %138 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x130, ptr noundef %x131, i32 noundef %138, i32 noundef -1)
  %139 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x132, ptr noundef %x133, i32 noundef %139, i32 noundef -1)
  %140 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x134, ptr noundef %x135, i32 noundef %140, i32 noundef -1)
  %141 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x136, ptr noundef %x137, i32 noundef %141, i32 noundef -1)
  %142 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x138, ptr noundef %x139, i32 noundef %142, i32 noundef -1)
  %143 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x140, ptr noundef %x141, i32 noundef %143, i32 noundef -1)
  %144 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x142, ptr noundef %x143, i32 noundef %144, i32 noundef -2)
  %145 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x144, ptr noundef %x145, i32 noundef %145, i32 noundef -1)
  %146 = load i32, ptr %x104, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x146, ptr noundef %x147, i32 noundef %146, i32 noundef -1)
  %147 = load i32, ptr %x145, align 4
  %148 = load i32, ptr %x142, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext 0, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x149, align 1
  %150 = load i32, ptr %x143, align 4
  %151 = load i32, ptr %x140, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i8, ptr %x151, align 1
  %153 = load i32, ptr %x141, align 4
  %154 = load i32, ptr %x138, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %152, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x153, align 1
  %156 = load i32, ptr %x139, align 4
  %157 = load i32, ptr %x136, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x155, align 1
  %159 = load i32, ptr %x137, align 4
  %160 = load i32, ptr %x134, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x157, align 1
  %162 = load i32, ptr %x135, align 4
  %163 = load i32, ptr %x132, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %163)
  %164 = load i8, ptr %x159, align 1
  %165 = load i32, ptr %x133, align 4
  %166 = load i32, ptr %x130, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %164, i32 noundef %165, i32 noundef %166)
  %167 = load i8, ptr %x161, align 1
  %168 = load i32, ptr %x131, align 4
  %169 = load i32, ptr %x128, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i32, ptr %x104, align 4
  %171 = load i32, ptr %x146, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext 0, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x165, align 1
  %173 = load i32, ptr %x106, align 4
  %174 = load i32, ptr %x147, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x167, align 1
  %176 = load i32, ptr %x108, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %175, i32 noundef %176, i32 noundef 0)
  %177 = load i8, ptr %x169, align 1
  %178 = load i32, ptr %x110, align 4
  %179 = load i32, ptr %x144, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %177, i32 noundef %178, i32 noundef %179)
  %180 = load i8, ptr %x171, align 1
  %181 = load i32, ptr %x112, align 4
  %182 = load i32, ptr %x148, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %180, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x173, align 1
  %184 = load i32, ptr %x114, align 4
  %185 = load i32, ptr %x150, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x175, align 1
  %187 = load i32, ptr %x116, align 4
  %188 = load i32, ptr %x152, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188)
  %189 = load i8, ptr %x177, align 1
  %190 = load i32, ptr %x118, align 4
  %191 = load i32, ptr %x154, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %189, i32 noundef %190, i32 noundef %191)
  %192 = load i8, ptr %x179, align 1
  %193 = load i32, ptr %x120, align 4
  %194 = load i32, ptr %x156, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %192, i32 noundef %193, i32 noundef %194)
  %195 = load i8, ptr %x181, align 1
  %196 = load i32, ptr %x122, align 4
  %197 = load i32, ptr %x158, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %195, i32 noundef %196, i32 noundef %197)
  %198 = load i8, ptr %x183, align 1
  %199 = load i32, ptr %x124, align 4
  %200 = load i32, ptr %x160, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200)
  %201 = load i8, ptr %x185, align 1
  %202 = load i32, ptr %x126, align 4
  %203 = load i32, ptr %x162, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %201, i32 noundef %202, i32 noundef %203)
  %204 = load i8, ptr %x187, align 1
  %205 = load i8, ptr %x127, align 1
  %conv8 = zext i8 %205 to i32
  %206 = load i8, ptr %x103, align 1
  %conv9 = zext i8 %206 to i32
  %add10 = add i32 %conv8, %conv9
  %207 = load i8, ptr %x163, align 1
  %conv11 = zext i8 %207 to i32
  %208 = load i32, ptr %x129, align 4
  %add12 = add i32 %conv11, %208
  call void @fiat_p384_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %204, i32 noundef %add10, i32 noundef %add12)
  %209 = load i32, ptr %x166, align 4
  %210 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %210, i64 3
  %211 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext 0, i32 noundef %209, i32 noundef %211)
  %212 = load i8, ptr %x191, align 1
  %213 = load i32, ptr %x168, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %212, i32 noundef %213, i32 noundef 0)
  %214 = load i8, ptr %x193, align 1
  %215 = load i32, ptr %x170, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %214, i32 noundef %215, i32 noundef 0)
  %216 = load i8, ptr %x195, align 1
  %217 = load i32, ptr %x172, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %216, i32 noundef %217, i32 noundef 0)
  %218 = load i8, ptr %x197, align 1
  %219 = load i32, ptr %x174, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %218, i32 noundef %219, i32 noundef 0)
  %220 = load i8, ptr %x199, align 1
  %221 = load i32, ptr %x176, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %220, i32 noundef %221, i32 noundef 0)
  %222 = load i8, ptr %x201, align 1
  %223 = load i32, ptr %x178, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %222, i32 noundef %223, i32 noundef 0)
  %224 = load i8, ptr %x203, align 1
  %225 = load i32, ptr %x180, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %224, i32 noundef %225, i32 noundef 0)
  %226 = load i8, ptr %x205, align 1
  %227 = load i32, ptr %x182, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext %226, i32 noundef %227, i32 noundef 0)
  %228 = load i8, ptr %x207, align 1
  %229 = load i32, ptr %x184, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext %228, i32 noundef %229, i32 noundef 0)
  %230 = load i8, ptr %x209, align 1
  %231 = load i32, ptr %x186, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %230, i32 noundef %231, i32 noundef 0)
  %232 = load i8, ptr %x211, align 1
  %233 = load i32, ptr %x188, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %232, i32 noundef %233, i32 noundef 0)
  %234 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x214, ptr noundef %x215, i32 noundef %234, i32 noundef -1)
  %235 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x216, ptr noundef %x217, i32 noundef %235, i32 noundef -1)
  %236 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x218, ptr noundef %x219, i32 noundef %236, i32 noundef -1)
  %237 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x220, ptr noundef %x221, i32 noundef %237, i32 noundef -1)
  %238 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x222, ptr noundef %x223, i32 noundef %238, i32 noundef -1)
  %239 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x224, ptr noundef %x225, i32 noundef %239, i32 noundef -1)
  %240 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x226, ptr noundef %x227, i32 noundef %240, i32 noundef -1)
  %241 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x228, ptr noundef %x229, i32 noundef %241, i32 noundef -2)
  %242 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x230, ptr noundef %x231, i32 noundef %242, i32 noundef -1)
  %243 = load i32, ptr %x190, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x232, ptr noundef %x233, i32 noundef %243, i32 noundef -1)
  %244 = load i32, ptr %x231, align 4
  %245 = load i32, ptr %x228, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext 0, i32 noundef %244, i32 noundef %245)
  %246 = load i8, ptr %x235, align 1
  %247 = load i32, ptr %x229, align 4
  %248 = load i32, ptr %x226, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %246, i32 noundef %247, i32 noundef %248)
  %249 = load i8, ptr %x237, align 1
  %250 = load i32, ptr %x227, align 4
  %251 = load i32, ptr %x224, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %249, i32 noundef %250, i32 noundef %251)
  %252 = load i8, ptr %x239, align 1
  %253 = load i32, ptr %x225, align 4
  %254 = load i32, ptr %x222, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %252, i32 noundef %253, i32 noundef %254)
  %255 = load i8, ptr %x241, align 1
  %256 = load i32, ptr %x223, align 4
  %257 = load i32, ptr %x220, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %255, i32 noundef %256, i32 noundef %257)
  %258 = load i8, ptr %x243, align 1
  %259 = load i32, ptr %x221, align 4
  %260 = load i32, ptr %x218, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %258, i32 noundef %259, i32 noundef %260)
  %261 = load i8, ptr %x245, align 1
  %262 = load i32, ptr %x219, align 4
  %263 = load i32, ptr %x216, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %261, i32 noundef %262, i32 noundef %263)
  %264 = load i8, ptr %x247, align 1
  %265 = load i32, ptr %x217, align 4
  %266 = load i32, ptr %x214, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %264, i32 noundef %265, i32 noundef %266)
  %267 = load i32, ptr %x190, align 4
  %268 = load i32, ptr %x232, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext 0, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x251, align 1
  %270 = load i32, ptr %x192, align 4
  %271 = load i32, ptr %x233, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x253, align 1
  %273 = load i32, ptr %x194, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %272, i32 noundef %273, i32 noundef 0)
  %274 = load i8, ptr %x255, align 1
  %275 = load i32, ptr %x196, align 4
  %276 = load i32, ptr %x230, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %274, i32 noundef %275, i32 noundef %276)
  %277 = load i8, ptr %x257, align 1
  %278 = load i32, ptr %x198, align 4
  %279 = load i32, ptr %x234, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %277, i32 noundef %278, i32 noundef %279)
  %280 = load i8, ptr %x259, align 1
  %281 = load i32, ptr %x200, align 4
  %282 = load i32, ptr %x236, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %280, i32 noundef %281, i32 noundef %282)
  %283 = load i8, ptr %x261, align 1
  %284 = load i32, ptr %x202, align 4
  %285 = load i32, ptr %x238, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %283, i32 noundef %284, i32 noundef %285)
  %286 = load i8, ptr %x263, align 1
  %287 = load i32, ptr %x204, align 4
  %288 = load i32, ptr %x240, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x265, align 1
  %290 = load i32, ptr %x206, align 4
  %291 = load i32, ptr %x242, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x267, align 1
  %293 = load i32, ptr %x208, align 4
  %294 = load i32, ptr %x244, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x269, align 1
  %296 = load i32, ptr %x210, align 4
  %297 = load i32, ptr %x246, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x271, align 1
  %299 = load i32, ptr %x212, align 4
  %300 = load i32, ptr %x248, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x273, align 1
  %302 = load i8, ptr %x213, align 1
  %conv14 = zext i8 %302 to i32
  %303 = load i8, ptr %x189, align 1
  %conv15 = zext i8 %303 to i32
  %add16 = add i32 %conv14, %conv15
  %304 = load i8, ptr %x249, align 1
  %conv17 = zext i8 %304 to i32
  %305 = load i32, ptr %x215, align 4
  %add18 = add i32 %conv17, %305
  call void @fiat_p384_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %301, i32 noundef %add16, i32 noundef %add18)
  %306 = load i32, ptr %x252, align 4
  %307 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %307, i64 4
  %308 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext 0, i32 noundef %306, i32 noundef %308)
  %309 = load i8, ptr %x277, align 1
  %310 = load i32, ptr %x254, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %309, i32 noundef %310, i32 noundef 0)
  %311 = load i8, ptr %x279, align 1
  %312 = load i32, ptr %x256, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %311, i32 noundef %312, i32 noundef 0)
  %313 = load i8, ptr %x281, align 1
  %314 = load i32, ptr %x258, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %313, i32 noundef %314, i32 noundef 0)
  %315 = load i8, ptr %x283, align 1
  %316 = load i32, ptr %x260, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %315, i32 noundef %316, i32 noundef 0)
  %317 = load i8, ptr %x285, align 1
  %318 = load i32, ptr %x262, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %317, i32 noundef %318, i32 noundef 0)
  %319 = load i8, ptr %x287, align 1
  %320 = load i32, ptr %x264, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %319, i32 noundef %320, i32 noundef 0)
  %321 = load i8, ptr %x289, align 1
  %322 = load i32, ptr %x266, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %321, i32 noundef %322, i32 noundef 0)
  %323 = load i8, ptr %x291, align 1
  %324 = load i32, ptr %x268, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %323, i32 noundef %324, i32 noundef 0)
  %325 = load i8, ptr %x293, align 1
  %326 = load i32, ptr %x270, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %325, i32 noundef %326, i32 noundef 0)
  %327 = load i8, ptr %x295, align 1
  %328 = load i32, ptr %x272, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %327, i32 noundef %328, i32 noundef 0)
  %329 = load i8, ptr %x297, align 1
  %330 = load i32, ptr %x274, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %329, i32 noundef %330, i32 noundef 0)
  %331 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x300, ptr noundef %x301, i32 noundef %331, i32 noundef -1)
  %332 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x302, ptr noundef %x303, i32 noundef %332, i32 noundef -1)
  %333 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x304, ptr noundef %x305, i32 noundef %333, i32 noundef -1)
  %334 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x306, ptr noundef %x307, i32 noundef %334, i32 noundef -1)
  %335 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x308, ptr noundef %x309, i32 noundef %335, i32 noundef -1)
  %336 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x310, ptr noundef %x311, i32 noundef %336, i32 noundef -1)
  %337 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x312, ptr noundef %x313, i32 noundef %337, i32 noundef -1)
  %338 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x314, ptr noundef %x315, i32 noundef %338, i32 noundef -2)
  %339 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x316, ptr noundef %x317, i32 noundef %339, i32 noundef -1)
  %340 = load i32, ptr %x276, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x318, ptr noundef %x319, i32 noundef %340, i32 noundef -1)
  %341 = load i32, ptr %x317, align 4
  %342 = load i32, ptr %x314, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext 0, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x321, align 1
  %344 = load i32, ptr %x315, align 4
  %345 = load i32, ptr %x312, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x323, align 1
  %347 = load i32, ptr %x313, align 4
  %348 = load i32, ptr %x310, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i8, ptr %x325, align 1
  %350 = load i32, ptr %x311, align 4
  %351 = load i32, ptr %x308, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i8, ptr %x327, align 1
  %353 = load i32, ptr %x309, align 4
  %354 = load i32, ptr %x306, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %352, i32 noundef %353, i32 noundef %354)
  %355 = load i8, ptr %x329, align 1
  %356 = load i32, ptr %x307, align 4
  %357 = load i32, ptr %x304, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %355, i32 noundef %356, i32 noundef %357)
  %358 = load i8, ptr %x331, align 1
  %359 = load i32, ptr %x305, align 4
  %360 = load i32, ptr %x302, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %358, i32 noundef %359, i32 noundef %360)
  %361 = load i8, ptr %x333, align 1
  %362 = load i32, ptr %x303, align 4
  %363 = load i32, ptr %x300, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i32, ptr %x276, align 4
  %365 = load i32, ptr %x318, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext 0, i32 noundef %364, i32 noundef %365)
  %366 = load i8, ptr %x337, align 1
  %367 = load i32, ptr %x278, align 4
  %368 = load i32, ptr %x319, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %366, i32 noundef %367, i32 noundef %368)
  %369 = load i8, ptr %x339, align 1
  %370 = load i32, ptr %x280, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %369, i32 noundef %370, i32 noundef 0)
  %371 = load i8, ptr %x341, align 1
  %372 = load i32, ptr %x282, align 4
  %373 = load i32, ptr %x316, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x342, ptr noundef %x343, i8 noundef zeroext %371, i32 noundef %372, i32 noundef %373)
  %374 = load i8, ptr %x343, align 1
  %375 = load i32, ptr %x284, align 4
  %376 = load i32, ptr %x320, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x344, ptr noundef %x345, i8 noundef zeroext %374, i32 noundef %375, i32 noundef %376)
  %377 = load i8, ptr %x345, align 1
  %378 = load i32, ptr %x286, align 4
  %379 = load i32, ptr %x322, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x346, ptr noundef %x347, i8 noundef zeroext %377, i32 noundef %378, i32 noundef %379)
  %380 = load i8, ptr %x347, align 1
  %381 = load i32, ptr %x288, align 4
  %382 = load i32, ptr %x324, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext %380, i32 noundef %381, i32 noundef %382)
  %383 = load i8, ptr %x349, align 1
  %384 = load i32, ptr %x290, align 4
  %385 = load i32, ptr %x326, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %383, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x351, align 1
  %387 = load i32, ptr %x292, align 4
  %388 = load i32, ptr %x328, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x353, align 1
  %390 = load i32, ptr %x294, align 4
  %391 = load i32, ptr %x330, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x355, align 1
  %393 = load i32, ptr %x296, align 4
  %394 = load i32, ptr %x332, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x357, align 1
  %396 = load i32, ptr %x298, align 4
  %397 = load i32, ptr %x334, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x359, align 1
  %399 = load i8, ptr %x299, align 1
  %conv20 = zext i8 %399 to i32
  %400 = load i8, ptr %x275, align 1
  %conv21 = zext i8 %400 to i32
  %add22 = add i32 %conv20, %conv21
  %401 = load i8, ptr %x335, align 1
  %conv23 = zext i8 %401 to i32
  %402 = load i32, ptr %x301, align 4
  %add24 = add i32 %conv23, %402
  call void @fiat_p384_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext %398, i32 noundef %add22, i32 noundef %add24)
  %403 = load i32, ptr %x338, align 4
  %404 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %404, i64 5
  %405 = load i32, ptr %arrayidx25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext 0, i32 noundef %403, i32 noundef %405)
  %406 = load i8, ptr %x363, align 1
  %407 = load i32, ptr %x340, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %406, i32 noundef %407, i32 noundef 0)
  %408 = load i8, ptr %x365, align 1
  %409 = load i32, ptr %x342, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %408, i32 noundef %409, i32 noundef 0)
  %410 = load i8, ptr %x367, align 1
  %411 = load i32, ptr %x344, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %410, i32 noundef %411, i32 noundef 0)
  %412 = load i8, ptr %x369, align 1
  %413 = load i32, ptr %x346, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %412, i32 noundef %413, i32 noundef 0)
  %414 = load i8, ptr %x371, align 1
  %415 = load i32, ptr %x348, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %414, i32 noundef %415, i32 noundef 0)
  %416 = load i8, ptr %x373, align 1
  %417 = load i32, ptr %x350, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %416, i32 noundef %417, i32 noundef 0)
  %418 = load i8, ptr %x375, align 1
  %419 = load i32, ptr %x352, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %418, i32 noundef %419, i32 noundef 0)
  %420 = load i8, ptr %x377, align 1
  %421 = load i32, ptr %x354, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %420, i32 noundef %421, i32 noundef 0)
  %422 = load i8, ptr %x379, align 1
  %423 = load i32, ptr %x356, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext %422, i32 noundef %423, i32 noundef 0)
  %424 = load i8, ptr %x381, align 1
  %425 = load i32, ptr %x358, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %424, i32 noundef %425, i32 noundef 0)
  %426 = load i8, ptr %x383, align 1
  %427 = load i32, ptr %x360, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %426, i32 noundef %427, i32 noundef 0)
  %428 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x386, ptr noundef %x387, i32 noundef %428, i32 noundef -1)
  %429 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x388, ptr noundef %x389, i32 noundef %429, i32 noundef -1)
  %430 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x390, ptr noundef %x391, i32 noundef %430, i32 noundef -1)
  %431 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x392, ptr noundef %x393, i32 noundef %431, i32 noundef -1)
  %432 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x394, ptr noundef %x395, i32 noundef %432, i32 noundef -1)
  %433 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x396, ptr noundef %x397, i32 noundef %433, i32 noundef -1)
  %434 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x398, ptr noundef %x399, i32 noundef %434, i32 noundef -1)
  %435 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x400, ptr noundef %x401, i32 noundef %435, i32 noundef -2)
  %436 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x402, ptr noundef %x403, i32 noundef %436, i32 noundef -1)
  %437 = load i32, ptr %x362, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x404, ptr noundef %x405, i32 noundef %437, i32 noundef -1)
  %438 = load i32, ptr %x403, align 4
  %439 = load i32, ptr %x400, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext 0, i32 noundef %438, i32 noundef %439)
  %440 = load i8, ptr %x407, align 1
  %441 = load i32, ptr %x401, align 4
  %442 = load i32, ptr %x398, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %440, i32 noundef %441, i32 noundef %442)
  %443 = load i8, ptr %x409, align 1
  %444 = load i32, ptr %x399, align 4
  %445 = load i32, ptr %x396, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %443, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x411, align 1
  %447 = load i32, ptr %x397, align 4
  %448 = load i32, ptr %x394, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %448)
  %449 = load i8, ptr %x413, align 1
  %450 = load i32, ptr %x395, align 4
  %451 = load i32, ptr %x392, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %449, i32 noundef %450, i32 noundef %451)
  %452 = load i8, ptr %x415, align 1
  %453 = load i32, ptr %x393, align 4
  %454 = load i32, ptr %x390, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %452, i32 noundef %453, i32 noundef %454)
  %455 = load i8, ptr %x417, align 1
  %456 = load i32, ptr %x391, align 4
  %457 = load i32, ptr %x388, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %455, i32 noundef %456, i32 noundef %457)
  %458 = load i8, ptr %x419, align 1
  %459 = load i32, ptr %x389, align 4
  %460 = load i32, ptr %x386, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %458, i32 noundef %459, i32 noundef %460)
  %461 = load i32, ptr %x362, align 4
  %462 = load i32, ptr %x404, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext 0, i32 noundef %461, i32 noundef %462)
  %463 = load i8, ptr %x423, align 1
  %464 = load i32, ptr %x364, align 4
  %465 = load i32, ptr %x405, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x424, ptr noundef %x425, i8 noundef zeroext %463, i32 noundef %464, i32 noundef %465)
  %466 = load i8, ptr %x425, align 1
  %467 = load i32, ptr %x366, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x426, ptr noundef %x427, i8 noundef zeroext %466, i32 noundef %467, i32 noundef 0)
  %468 = load i8, ptr %x427, align 1
  %469 = load i32, ptr %x368, align 4
  %470 = load i32, ptr %x402, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i8, ptr %x429, align 1
  %472 = load i32, ptr %x370, align 4
  %473 = load i32, ptr %x406, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %471, i32 noundef %472, i32 noundef %473)
  %474 = load i8, ptr %x431, align 1
  %475 = load i32, ptr %x372, align 4
  %476 = load i32, ptr %x408, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %474, i32 noundef %475, i32 noundef %476)
  %477 = load i8, ptr %x433, align 1
  %478 = load i32, ptr %x374, align 4
  %479 = load i32, ptr %x410, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %477, i32 noundef %478, i32 noundef %479)
  %480 = load i8, ptr %x435, align 1
  %481 = load i32, ptr %x376, align 4
  %482 = load i32, ptr %x412, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %480, i32 noundef %481, i32 noundef %482)
  %483 = load i8, ptr %x437, align 1
  %484 = load i32, ptr %x378, align 4
  %485 = load i32, ptr %x414, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %483, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x439, align 1
  %487 = load i32, ptr %x380, align 4
  %488 = load i32, ptr %x416, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x441, align 1
  %490 = load i32, ptr %x382, align 4
  %491 = load i32, ptr %x418, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext %489, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x443, align 1
  %493 = load i32, ptr %x384, align 4
  %494 = load i32, ptr %x420, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x445, align 1
  %496 = load i8, ptr %x385, align 1
  %conv26 = zext i8 %496 to i32
  %497 = load i8, ptr %x361, align 1
  %conv27 = zext i8 %497 to i32
  %add28 = add i32 %conv26, %conv27
  %498 = load i8, ptr %x421, align 1
  %conv29 = zext i8 %498 to i32
  %499 = load i32, ptr %x387, align 4
  %add30 = add i32 %conv29, %499
  call void @fiat_p384_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext %495, i32 noundef %add28, i32 noundef %add30)
  %500 = load i32, ptr %x424, align 4
  %501 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %501, i64 6
  %502 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext 0, i32 noundef %500, i32 noundef %502)
  %503 = load i8, ptr %x449, align 1
  %504 = load i32, ptr %x426, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %503, i32 noundef %504, i32 noundef 0)
  %505 = load i8, ptr %x451, align 1
  %506 = load i32, ptr %x428, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %505, i32 noundef %506, i32 noundef 0)
  %507 = load i8, ptr %x453, align 1
  %508 = load i32, ptr %x430, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %507, i32 noundef %508, i32 noundef 0)
  %509 = load i8, ptr %x455, align 1
  %510 = load i32, ptr %x432, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %509, i32 noundef %510, i32 noundef 0)
  %511 = load i8, ptr %x457, align 1
  %512 = load i32, ptr %x434, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %511, i32 noundef %512, i32 noundef 0)
  %513 = load i8, ptr %x459, align 1
  %514 = load i32, ptr %x436, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %513, i32 noundef %514, i32 noundef 0)
  %515 = load i8, ptr %x461, align 1
  %516 = load i32, ptr %x438, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %515, i32 noundef %516, i32 noundef 0)
  %517 = load i8, ptr %x463, align 1
  %518 = load i32, ptr %x440, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %517, i32 noundef %518, i32 noundef 0)
  %519 = load i8, ptr %x465, align 1
  %520 = load i32, ptr %x442, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %519, i32 noundef %520, i32 noundef 0)
  %521 = load i8, ptr %x467, align 1
  %522 = load i32, ptr %x444, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x468, ptr noundef %x469, i8 noundef zeroext %521, i32 noundef %522, i32 noundef 0)
  %523 = load i8, ptr %x469, align 1
  %524 = load i32, ptr %x446, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x470, ptr noundef %x471, i8 noundef zeroext %523, i32 noundef %524, i32 noundef 0)
  %525 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x472, ptr noundef %x473, i32 noundef %525, i32 noundef -1)
  %526 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x474, ptr noundef %x475, i32 noundef %526, i32 noundef -1)
  %527 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x476, ptr noundef %x477, i32 noundef %527, i32 noundef -1)
  %528 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x478, ptr noundef %x479, i32 noundef %528, i32 noundef -1)
  %529 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x480, ptr noundef %x481, i32 noundef %529, i32 noundef -1)
  %530 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x482, ptr noundef %x483, i32 noundef %530, i32 noundef -1)
  %531 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x484, ptr noundef %x485, i32 noundef %531, i32 noundef -1)
  %532 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x486, ptr noundef %x487, i32 noundef %532, i32 noundef -2)
  %533 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x488, ptr noundef %x489, i32 noundef %533, i32 noundef -1)
  %534 = load i32, ptr %x448, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x490, ptr noundef %x491, i32 noundef %534, i32 noundef -1)
  %535 = load i32, ptr %x489, align 4
  %536 = load i32, ptr %x486, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext 0, i32 noundef %535, i32 noundef %536)
  %537 = load i8, ptr %x493, align 1
  %538 = load i32, ptr %x487, align 4
  %539 = load i32, ptr %x484, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext %537, i32 noundef %538, i32 noundef %539)
  %540 = load i8, ptr %x495, align 1
  %541 = load i32, ptr %x485, align 4
  %542 = load i32, ptr %x482, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext %540, i32 noundef %541, i32 noundef %542)
  %543 = load i8, ptr %x497, align 1
  %544 = load i32, ptr %x483, align 4
  %545 = load i32, ptr %x480, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %543, i32 noundef %544, i32 noundef %545)
  %546 = load i8, ptr %x499, align 1
  %547 = load i32, ptr %x481, align 4
  %548 = load i32, ptr %x478, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext %546, i32 noundef %547, i32 noundef %548)
  %549 = load i8, ptr %x501, align 1
  %550 = load i32, ptr %x479, align 4
  %551 = load i32, ptr %x476, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %549, i32 noundef %550, i32 noundef %551)
  %552 = load i8, ptr %x503, align 1
  %553 = load i32, ptr %x477, align 4
  %554 = load i32, ptr %x474, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %552, i32 noundef %553, i32 noundef %554)
  %555 = load i8, ptr %x505, align 1
  %556 = load i32, ptr %x475, align 4
  %557 = load i32, ptr %x472, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x506, ptr noundef %x507, i8 noundef zeroext %555, i32 noundef %556, i32 noundef %557)
  %558 = load i32, ptr %x448, align 4
  %559 = load i32, ptr %x490, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x508, ptr noundef %x509, i8 noundef zeroext 0, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x509, align 1
  %561 = load i32, ptr %x450, align 4
  %562 = load i32, ptr %x491, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x510, ptr noundef %x511, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x511, align 1
  %564 = load i32, ptr %x452, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x512, ptr noundef %x513, i8 noundef zeroext %563, i32 noundef %564, i32 noundef 0)
  %565 = load i8, ptr %x513, align 1
  %566 = load i32, ptr %x454, align 4
  %567 = load i32, ptr %x488, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x514, ptr noundef %x515, i8 noundef zeroext %565, i32 noundef %566, i32 noundef %567)
  %568 = load i8, ptr %x515, align 1
  %569 = load i32, ptr %x456, align 4
  %570 = load i32, ptr %x492, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x516, ptr noundef %x517, i8 noundef zeroext %568, i32 noundef %569, i32 noundef %570)
  %571 = load i8, ptr %x517, align 1
  %572 = load i32, ptr %x458, align 4
  %573 = load i32, ptr %x494, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x518, ptr noundef %x519, i8 noundef zeroext %571, i32 noundef %572, i32 noundef %573)
  %574 = load i8, ptr %x519, align 1
  %575 = load i32, ptr %x460, align 4
  %576 = load i32, ptr %x496, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x520, ptr noundef %x521, i8 noundef zeroext %574, i32 noundef %575, i32 noundef %576)
  %577 = load i8, ptr %x521, align 1
  %578 = load i32, ptr %x462, align 4
  %579 = load i32, ptr %x498, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x522, ptr noundef %x523, i8 noundef zeroext %577, i32 noundef %578, i32 noundef %579)
  %580 = load i8, ptr %x523, align 1
  %581 = load i32, ptr %x464, align 4
  %582 = load i32, ptr %x500, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x524, ptr noundef %x525, i8 noundef zeroext %580, i32 noundef %581, i32 noundef %582)
  %583 = load i8, ptr %x525, align 1
  %584 = load i32, ptr %x466, align 4
  %585 = load i32, ptr %x502, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext %583, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x527, align 1
  %587 = load i32, ptr %x468, align 4
  %588 = load i32, ptr %x504, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x529, align 1
  %590 = load i32, ptr %x470, align 4
  %591 = load i32, ptr %x506, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i8, ptr %x531, align 1
  %593 = load i8, ptr %x471, align 1
  %conv32 = zext i8 %593 to i32
  %594 = load i8, ptr %x447, align 1
  %conv33 = zext i8 %594 to i32
  %add34 = add i32 %conv32, %conv33
  %595 = load i8, ptr %x507, align 1
  %conv35 = zext i8 %595 to i32
  %596 = load i32, ptr %x473, align 4
  %add36 = add i32 %conv35, %596
  call void @fiat_p384_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %592, i32 noundef %add34, i32 noundef %add36)
  %597 = load i32, ptr %x510, align 4
  %598 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %598, i64 7
  %599 = load i32, ptr %arrayidx37, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext 0, i32 noundef %597, i32 noundef %599)
  %600 = load i8, ptr %x535, align 1
  %601 = load i32, ptr %x512, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %600, i32 noundef %601, i32 noundef 0)
  %602 = load i8, ptr %x537, align 1
  %603 = load i32, ptr %x514, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %602, i32 noundef %603, i32 noundef 0)
  %604 = load i8, ptr %x539, align 1
  %605 = load i32, ptr %x516, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext %604, i32 noundef %605, i32 noundef 0)
  %606 = load i8, ptr %x541, align 1
  %607 = load i32, ptr %x518, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %606, i32 noundef %607, i32 noundef 0)
  %608 = load i8, ptr %x543, align 1
  %609 = load i32, ptr %x520, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x544, ptr noundef %x545, i8 noundef zeroext %608, i32 noundef %609, i32 noundef 0)
  %610 = load i8, ptr %x545, align 1
  %611 = load i32, ptr %x522, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x546, ptr noundef %x547, i8 noundef zeroext %610, i32 noundef %611, i32 noundef 0)
  %612 = load i8, ptr %x547, align 1
  %613 = load i32, ptr %x524, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x548, ptr noundef %x549, i8 noundef zeroext %612, i32 noundef %613, i32 noundef 0)
  %614 = load i8, ptr %x549, align 1
  %615 = load i32, ptr %x526, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x550, ptr noundef %x551, i8 noundef zeroext %614, i32 noundef %615, i32 noundef 0)
  %616 = load i8, ptr %x551, align 1
  %617 = load i32, ptr %x528, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x552, ptr noundef %x553, i8 noundef zeroext %616, i32 noundef %617, i32 noundef 0)
  %618 = load i8, ptr %x553, align 1
  %619 = load i32, ptr %x530, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x554, ptr noundef %x555, i8 noundef zeroext %618, i32 noundef %619, i32 noundef 0)
  %620 = load i8, ptr %x555, align 1
  %621 = load i32, ptr %x532, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x556, ptr noundef %x557, i8 noundef zeroext %620, i32 noundef %621, i32 noundef 0)
  %622 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x558, ptr noundef %x559, i32 noundef %622, i32 noundef -1)
  %623 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x560, ptr noundef %x561, i32 noundef %623, i32 noundef -1)
  %624 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x562, ptr noundef %x563, i32 noundef %624, i32 noundef -1)
  %625 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x564, ptr noundef %x565, i32 noundef %625, i32 noundef -1)
  %626 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x566, ptr noundef %x567, i32 noundef %626, i32 noundef -1)
  %627 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x568, ptr noundef %x569, i32 noundef %627, i32 noundef -1)
  %628 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x570, ptr noundef %x571, i32 noundef %628, i32 noundef -1)
  %629 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x572, ptr noundef %x573, i32 noundef %629, i32 noundef -2)
  %630 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x574, ptr noundef %x575, i32 noundef %630, i32 noundef -1)
  %631 = load i32, ptr %x534, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x576, ptr noundef %x577, i32 noundef %631, i32 noundef -1)
  %632 = load i32, ptr %x575, align 4
  %633 = load i32, ptr %x572, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x578, ptr noundef %x579, i8 noundef zeroext 0, i32 noundef %632, i32 noundef %633)
  %634 = load i8, ptr %x579, align 1
  %635 = load i32, ptr %x573, align 4
  %636 = load i32, ptr %x570, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x580, ptr noundef %x581, i8 noundef zeroext %634, i32 noundef %635, i32 noundef %636)
  %637 = load i8, ptr %x581, align 1
  %638 = load i32, ptr %x571, align 4
  %639 = load i32, ptr %x568, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x582, ptr noundef %x583, i8 noundef zeroext %637, i32 noundef %638, i32 noundef %639)
  %640 = load i8, ptr %x583, align 1
  %641 = load i32, ptr %x569, align 4
  %642 = load i32, ptr %x566, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x584, ptr noundef %x585, i8 noundef zeroext %640, i32 noundef %641, i32 noundef %642)
  %643 = load i8, ptr %x585, align 1
  %644 = load i32, ptr %x567, align 4
  %645 = load i32, ptr %x564, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x586, ptr noundef %x587, i8 noundef zeroext %643, i32 noundef %644, i32 noundef %645)
  %646 = load i8, ptr %x587, align 1
  %647 = load i32, ptr %x565, align 4
  %648 = load i32, ptr %x562, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x588, ptr noundef %x589, i8 noundef zeroext %646, i32 noundef %647, i32 noundef %648)
  %649 = load i8, ptr %x589, align 1
  %650 = load i32, ptr %x563, align 4
  %651 = load i32, ptr %x560, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x590, ptr noundef %x591, i8 noundef zeroext %649, i32 noundef %650, i32 noundef %651)
  %652 = load i8, ptr %x591, align 1
  %653 = load i32, ptr %x561, align 4
  %654 = load i32, ptr %x558, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x592, ptr noundef %x593, i8 noundef zeroext %652, i32 noundef %653, i32 noundef %654)
  %655 = load i32, ptr %x534, align 4
  %656 = load i32, ptr %x576, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x594, ptr noundef %x595, i8 noundef zeroext 0, i32 noundef %655, i32 noundef %656)
  %657 = load i8, ptr %x595, align 1
  %658 = load i32, ptr %x536, align 4
  %659 = load i32, ptr %x577, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x596, ptr noundef %x597, i8 noundef zeroext %657, i32 noundef %658, i32 noundef %659)
  %660 = load i8, ptr %x597, align 1
  %661 = load i32, ptr %x538, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x598, ptr noundef %x599, i8 noundef zeroext %660, i32 noundef %661, i32 noundef 0)
  %662 = load i8, ptr %x599, align 1
  %663 = load i32, ptr %x540, align 4
  %664 = load i32, ptr %x574, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x600, ptr noundef %x601, i8 noundef zeroext %662, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x601, align 1
  %666 = load i32, ptr %x542, align 4
  %667 = load i32, ptr %x578, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x602, ptr noundef %x603, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x603, align 1
  %669 = load i32, ptr %x544, align 4
  %670 = load i32, ptr %x580, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x604, ptr noundef %x605, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x605, align 1
  %672 = load i32, ptr %x546, align 4
  %673 = load i32, ptr %x582, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x606, ptr noundef %x607, i8 noundef zeroext %671, i32 noundef %672, i32 noundef %673)
  %674 = load i8, ptr %x607, align 1
  %675 = load i32, ptr %x548, align 4
  %676 = load i32, ptr %x584, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x608, ptr noundef %x609, i8 noundef zeroext %674, i32 noundef %675, i32 noundef %676)
  %677 = load i8, ptr %x609, align 1
  %678 = load i32, ptr %x550, align 4
  %679 = load i32, ptr %x586, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x610, ptr noundef %x611, i8 noundef zeroext %677, i32 noundef %678, i32 noundef %679)
  %680 = load i8, ptr %x611, align 1
  %681 = load i32, ptr %x552, align 4
  %682 = load i32, ptr %x588, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x612, ptr noundef %x613, i8 noundef zeroext %680, i32 noundef %681, i32 noundef %682)
  %683 = load i8, ptr %x613, align 1
  %684 = load i32, ptr %x554, align 4
  %685 = load i32, ptr %x590, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x614, ptr noundef %x615, i8 noundef zeroext %683, i32 noundef %684, i32 noundef %685)
  %686 = load i8, ptr %x615, align 1
  %687 = load i32, ptr %x556, align 4
  %688 = load i32, ptr %x592, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x616, ptr noundef %x617, i8 noundef zeroext %686, i32 noundef %687, i32 noundef %688)
  %689 = load i8, ptr %x617, align 1
  %690 = load i8, ptr %x557, align 1
  %conv38 = zext i8 %690 to i32
  %691 = load i8, ptr %x533, align 1
  %conv39 = zext i8 %691 to i32
  %add40 = add i32 %conv38, %conv39
  %692 = load i8, ptr %x593, align 1
  %conv41 = zext i8 %692 to i32
  %693 = load i32, ptr %x559, align 4
  %add42 = add i32 %conv41, %693
  call void @fiat_p384_addcarryx_u32(ptr noundef %x618, ptr noundef %x619, i8 noundef zeroext %689, i32 noundef %add40, i32 noundef %add42)
  %694 = load i32, ptr %x596, align 4
  %695 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %695, i64 8
  %696 = load i32, ptr %arrayidx43, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x620, ptr noundef %x621, i8 noundef zeroext 0, i32 noundef %694, i32 noundef %696)
  %697 = load i8, ptr %x621, align 1
  %698 = load i32, ptr %x598, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x622, ptr noundef %x623, i8 noundef zeroext %697, i32 noundef %698, i32 noundef 0)
  %699 = load i8, ptr %x623, align 1
  %700 = load i32, ptr %x600, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x624, ptr noundef %x625, i8 noundef zeroext %699, i32 noundef %700, i32 noundef 0)
  %701 = load i8, ptr %x625, align 1
  %702 = load i32, ptr %x602, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x626, ptr noundef %x627, i8 noundef zeroext %701, i32 noundef %702, i32 noundef 0)
  %703 = load i8, ptr %x627, align 1
  %704 = load i32, ptr %x604, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x628, ptr noundef %x629, i8 noundef zeroext %703, i32 noundef %704, i32 noundef 0)
  %705 = load i8, ptr %x629, align 1
  %706 = load i32, ptr %x606, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x630, ptr noundef %x631, i8 noundef zeroext %705, i32 noundef %706, i32 noundef 0)
  %707 = load i8, ptr %x631, align 1
  %708 = load i32, ptr %x608, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x632, ptr noundef %x633, i8 noundef zeroext %707, i32 noundef %708, i32 noundef 0)
  %709 = load i8, ptr %x633, align 1
  %710 = load i32, ptr %x610, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x634, ptr noundef %x635, i8 noundef zeroext %709, i32 noundef %710, i32 noundef 0)
  %711 = load i8, ptr %x635, align 1
  %712 = load i32, ptr %x612, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x636, ptr noundef %x637, i8 noundef zeroext %711, i32 noundef %712, i32 noundef 0)
  %713 = load i8, ptr %x637, align 1
  %714 = load i32, ptr %x614, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x638, ptr noundef %x639, i8 noundef zeroext %713, i32 noundef %714, i32 noundef 0)
  %715 = load i8, ptr %x639, align 1
  %716 = load i32, ptr %x616, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x640, ptr noundef %x641, i8 noundef zeroext %715, i32 noundef %716, i32 noundef 0)
  %717 = load i8, ptr %x641, align 1
  %718 = load i32, ptr %x618, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x642, ptr noundef %x643, i8 noundef zeroext %717, i32 noundef %718, i32 noundef 0)
  %719 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x644, ptr noundef %x645, i32 noundef %719, i32 noundef -1)
  %720 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x646, ptr noundef %x647, i32 noundef %720, i32 noundef -1)
  %721 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x648, ptr noundef %x649, i32 noundef %721, i32 noundef -1)
  %722 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x650, ptr noundef %x651, i32 noundef %722, i32 noundef -1)
  %723 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x652, ptr noundef %x653, i32 noundef %723, i32 noundef -1)
  %724 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x654, ptr noundef %x655, i32 noundef %724, i32 noundef -1)
  %725 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x656, ptr noundef %x657, i32 noundef %725, i32 noundef -1)
  %726 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x658, ptr noundef %x659, i32 noundef %726, i32 noundef -2)
  %727 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x660, ptr noundef %x661, i32 noundef %727, i32 noundef -1)
  %728 = load i32, ptr %x620, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x662, ptr noundef %x663, i32 noundef %728, i32 noundef -1)
  %729 = load i32, ptr %x661, align 4
  %730 = load i32, ptr %x658, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x664, ptr noundef %x665, i8 noundef zeroext 0, i32 noundef %729, i32 noundef %730)
  %731 = load i8, ptr %x665, align 1
  %732 = load i32, ptr %x659, align 4
  %733 = load i32, ptr %x656, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x666, ptr noundef %x667, i8 noundef zeroext %731, i32 noundef %732, i32 noundef %733)
  %734 = load i8, ptr %x667, align 1
  %735 = load i32, ptr %x657, align 4
  %736 = load i32, ptr %x654, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x668, ptr noundef %x669, i8 noundef zeroext %734, i32 noundef %735, i32 noundef %736)
  %737 = load i8, ptr %x669, align 1
  %738 = load i32, ptr %x655, align 4
  %739 = load i32, ptr %x652, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x670, ptr noundef %x671, i8 noundef zeroext %737, i32 noundef %738, i32 noundef %739)
  %740 = load i8, ptr %x671, align 1
  %741 = load i32, ptr %x653, align 4
  %742 = load i32, ptr %x650, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x672, ptr noundef %x673, i8 noundef zeroext %740, i32 noundef %741, i32 noundef %742)
  %743 = load i8, ptr %x673, align 1
  %744 = load i32, ptr %x651, align 4
  %745 = load i32, ptr %x648, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x674, ptr noundef %x675, i8 noundef zeroext %743, i32 noundef %744, i32 noundef %745)
  %746 = load i8, ptr %x675, align 1
  %747 = load i32, ptr %x649, align 4
  %748 = load i32, ptr %x646, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x676, ptr noundef %x677, i8 noundef zeroext %746, i32 noundef %747, i32 noundef %748)
  %749 = load i8, ptr %x677, align 1
  %750 = load i32, ptr %x647, align 4
  %751 = load i32, ptr %x644, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x678, ptr noundef %x679, i8 noundef zeroext %749, i32 noundef %750, i32 noundef %751)
  %752 = load i32, ptr %x620, align 4
  %753 = load i32, ptr %x662, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x680, ptr noundef %x681, i8 noundef zeroext 0, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x681, align 1
  %755 = load i32, ptr %x622, align 4
  %756 = load i32, ptr %x663, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x682, ptr noundef %x683, i8 noundef zeroext %754, i32 noundef %755, i32 noundef %756)
  %757 = load i8, ptr %x683, align 1
  %758 = load i32, ptr %x624, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x684, ptr noundef %x685, i8 noundef zeroext %757, i32 noundef %758, i32 noundef 0)
  %759 = load i8, ptr %x685, align 1
  %760 = load i32, ptr %x626, align 4
  %761 = load i32, ptr %x660, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x686, ptr noundef %x687, i8 noundef zeroext %759, i32 noundef %760, i32 noundef %761)
  %762 = load i8, ptr %x687, align 1
  %763 = load i32, ptr %x628, align 4
  %764 = load i32, ptr %x664, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x688, ptr noundef %x689, i8 noundef zeroext %762, i32 noundef %763, i32 noundef %764)
  %765 = load i8, ptr %x689, align 1
  %766 = load i32, ptr %x630, align 4
  %767 = load i32, ptr %x666, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x690, ptr noundef %x691, i8 noundef zeroext %765, i32 noundef %766, i32 noundef %767)
  %768 = load i8, ptr %x691, align 1
  %769 = load i32, ptr %x632, align 4
  %770 = load i32, ptr %x668, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x692, ptr noundef %x693, i8 noundef zeroext %768, i32 noundef %769, i32 noundef %770)
  %771 = load i8, ptr %x693, align 1
  %772 = load i32, ptr %x634, align 4
  %773 = load i32, ptr %x670, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x694, ptr noundef %x695, i8 noundef zeroext %771, i32 noundef %772, i32 noundef %773)
  %774 = load i8, ptr %x695, align 1
  %775 = load i32, ptr %x636, align 4
  %776 = load i32, ptr %x672, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x696, ptr noundef %x697, i8 noundef zeroext %774, i32 noundef %775, i32 noundef %776)
  %777 = load i8, ptr %x697, align 1
  %778 = load i32, ptr %x638, align 4
  %779 = load i32, ptr %x674, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x698, ptr noundef %x699, i8 noundef zeroext %777, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x699, align 1
  %781 = load i32, ptr %x640, align 4
  %782 = load i32, ptr %x676, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x700, ptr noundef %x701, i8 noundef zeroext %780, i32 noundef %781, i32 noundef %782)
  %783 = load i8, ptr %x701, align 1
  %784 = load i32, ptr %x642, align 4
  %785 = load i32, ptr %x678, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x702, ptr noundef %x703, i8 noundef zeroext %783, i32 noundef %784, i32 noundef %785)
  %786 = load i8, ptr %x703, align 1
  %787 = load i8, ptr %x643, align 1
  %conv44 = zext i8 %787 to i32
  %788 = load i8, ptr %x619, align 1
  %conv45 = zext i8 %788 to i32
  %add46 = add i32 %conv44, %conv45
  %789 = load i8, ptr %x679, align 1
  %conv47 = zext i8 %789 to i32
  %790 = load i32, ptr %x645, align 4
  %add48 = add i32 %conv47, %790
  call void @fiat_p384_addcarryx_u32(ptr noundef %x704, ptr noundef %x705, i8 noundef zeroext %786, i32 noundef %add46, i32 noundef %add48)
  %791 = load i32, ptr %x682, align 4
  %792 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %792, i64 9
  %793 = load i32, ptr %arrayidx49, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x706, ptr noundef %x707, i8 noundef zeroext 0, i32 noundef %791, i32 noundef %793)
  %794 = load i8, ptr %x707, align 1
  %795 = load i32, ptr %x684, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x708, ptr noundef %x709, i8 noundef zeroext %794, i32 noundef %795, i32 noundef 0)
  %796 = load i8, ptr %x709, align 1
  %797 = load i32, ptr %x686, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x710, ptr noundef %x711, i8 noundef zeroext %796, i32 noundef %797, i32 noundef 0)
  %798 = load i8, ptr %x711, align 1
  %799 = load i32, ptr %x688, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x712, ptr noundef %x713, i8 noundef zeroext %798, i32 noundef %799, i32 noundef 0)
  %800 = load i8, ptr %x713, align 1
  %801 = load i32, ptr %x690, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x714, ptr noundef %x715, i8 noundef zeroext %800, i32 noundef %801, i32 noundef 0)
  %802 = load i8, ptr %x715, align 1
  %803 = load i32, ptr %x692, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x716, ptr noundef %x717, i8 noundef zeroext %802, i32 noundef %803, i32 noundef 0)
  %804 = load i8, ptr %x717, align 1
  %805 = load i32, ptr %x694, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x718, ptr noundef %x719, i8 noundef zeroext %804, i32 noundef %805, i32 noundef 0)
  %806 = load i8, ptr %x719, align 1
  %807 = load i32, ptr %x696, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x720, ptr noundef %x721, i8 noundef zeroext %806, i32 noundef %807, i32 noundef 0)
  %808 = load i8, ptr %x721, align 1
  %809 = load i32, ptr %x698, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x722, ptr noundef %x723, i8 noundef zeroext %808, i32 noundef %809, i32 noundef 0)
  %810 = load i8, ptr %x723, align 1
  %811 = load i32, ptr %x700, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x724, ptr noundef %x725, i8 noundef zeroext %810, i32 noundef %811, i32 noundef 0)
  %812 = load i8, ptr %x725, align 1
  %813 = load i32, ptr %x702, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x726, ptr noundef %x727, i8 noundef zeroext %812, i32 noundef %813, i32 noundef 0)
  %814 = load i8, ptr %x727, align 1
  %815 = load i32, ptr %x704, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x728, ptr noundef %x729, i8 noundef zeroext %814, i32 noundef %815, i32 noundef 0)
  %816 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x730, ptr noundef %x731, i32 noundef %816, i32 noundef -1)
  %817 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x732, ptr noundef %x733, i32 noundef %817, i32 noundef -1)
  %818 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x734, ptr noundef %x735, i32 noundef %818, i32 noundef -1)
  %819 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x736, ptr noundef %x737, i32 noundef %819, i32 noundef -1)
  %820 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x738, ptr noundef %x739, i32 noundef %820, i32 noundef -1)
  %821 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x740, ptr noundef %x741, i32 noundef %821, i32 noundef -1)
  %822 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x742, ptr noundef %x743, i32 noundef %822, i32 noundef -1)
  %823 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x744, ptr noundef %x745, i32 noundef %823, i32 noundef -2)
  %824 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x746, ptr noundef %x747, i32 noundef %824, i32 noundef -1)
  %825 = load i32, ptr %x706, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x748, ptr noundef %x749, i32 noundef %825, i32 noundef -1)
  %826 = load i32, ptr %x747, align 4
  %827 = load i32, ptr %x744, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x750, ptr noundef %x751, i8 noundef zeroext 0, i32 noundef %826, i32 noundef %827)
  %828 = load i8, ptr %x751, align 1
  %829 = load i32, ptr %x745, align 4
  %830 = load i32, ptr %x742, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x752, ptr noundef %x753, i8 noundef zeroext %828, i32 noundef %829, i32 noundef %830)
  %831 = load i8, ptr %x753, align 1
  %832 = load i32, ptr %x743, align 4
  %833 = load i32, ptr %x740, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x754, ptr noundef %x755, i8 noundef zeroext %831, i32 noundef %832, i32 noundef %833)
  %834 = load i8, ptr %x755, align 1
  %835 = load i32, ptr %x741, align 4
  %836 = load i32, ptr %x738, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x756, ptr noundef %x757, i8 noundef zeroext %834, i32 noundef %835, i32 noundef %836)
  %837 = load i8, ptr %x757, align 1
  %838 = load i32, ptr %x739, align 4
  %839 = load i32, ptr %x736, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x758, ptr noundef %x759, i8 noundef zeroext %837, i32 noundef %838, i32 noundef %839)
  %840 = load i8, ptr %x759, align 1
  %841 = load i32, ptr %x737, align 4
  %842 = load i32, ptr %x734, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x760, ptr noundef %x761, i8 noundef zeroext %840, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x761, align 1
  %844 = load i32, ptr %x735, align 4
  %845 = load i32, ptr %x732, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x762, ptr noundef %x763, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i8, ptr %x763, align 1
  %847 = load i32, ptr %x733, align 4
  %848 = load i32, ptr %x730, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x764, ptr noundef %x765, i8 noundef zeroext %846, i32 noundef %847, i32 noundef %848)
  %849 = load i32, ptr %x706, align 4
  %850 = load i32, ptr %x748, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x766, ptr noundef %x767, i8 noundef zeroext 0, i32 noundef %849, i32 noundef %850)
  %851 = load i8, ptr %x767, align 1
  %852 = load i32, ptr %x708, align 4
  %853 = load i32, ptr %x749, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x768, ptr noundef %x769, i8 noundef zeroext %851, i32 noundef %852, i32 noundef %853)
  %854 = load i8, ptr %x769, align 1
  %855 = load i32, ptr %x710, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x770, ptr noundef %x771, i8 noundef zeroext %854, i32 noundef %855, i32 noundef 0)
  %856 = load i8, ptr %x771, align 1
  %857 = load i32, ptr %x712, align 4
  %858 = load i32, ptr %x746, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x772, ptr noundef %x773, i8 noundef zeroext %856, i32 noundef %857, i32 noundef %858)
  %859 = load i8, ptr %x773, align 1
  %860 = load i32, ptr %x714, align 4
  %861 = load i32, ptr %x750, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x774, ptr noundef %x775, i8 noundef zeroext %859, i32 noundef %860, i32 noundef %861)
  %862 = load i8, ptr %x775, align 1
  %863 = load i32, ptr %x716, align 4
  %864 = load i32, ptr %x752, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x776, ptr noundef %x777, i8 noundef zeroext %862, i32 noundef %863, i32 noundef %864)
  %865 = load i8, ptr %x777, align 1
  %866 = load i32, ptr %x718, align 4
  %867 = load i32, ptr %x754, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x778, ptr noundef %x779, i8 noundef zeroext %865, i32 noundef %866, i32 noundef %867)
  %868 = load i8, ptr %x779, align 1
  %869 = load i32, ptr %x720, align 4
  %870 = load i32, ptr %x756, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x780, ptr noundef %x781, i8 noundef zeroext %868, i32 noundef %869, i32 noundef %870)
  %871 = load i8, ptr %x781, align 1
  %872 = load i32, ptr %x722, align 4
  %873 = load i32, ptr %x758, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x782, ptr noundef %x783, i8 noundef zeroext %871, i32 noundef %872, i32 noundef %873)
  %874 = load i8, ptr %x783, align 1
  %875 = load i32, ptr %x724, align 4
  %876 = load i32, ptr %x760, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x784, ptr noundef %x785, i8 noundef zeroext %874, i32 noundef %875, i32 noundef %876)
  %877 = load i8, ptr %x785, align 1
  %878 = load i32, ptr %x726, align 4
  %879 = load i32, ptr %x762, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x786, ptr noundef %x787, i8 noundef zeroext %877, i32 noundef %878, i32 noundef %879)
  %880 = load i8, ptr %x787, align 1
  %881 = load i32, ptr %x728, align 4
  %882 = load i32, ptr %x764, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x788, ptr noundef %x789, i8 noundef zeroext %880, i32 noundef %881, i32 noundef %882)
  %883 = load i8, ptr %x789, align 1
  %884 = load i8, ptr %x729, align 1
  %conv50 = zext i8 %884 to i32
  %885 = load i8, ptr %x705, align 1
  %conv51 = zext i8 %885 to i32
  %add52 = add i32 %conv50, %conv51
  %886 = load i8, ptr %x765, align 1
  %conv53 = zext i8 %886 to i32
  %887 = load i32, ptr %x731, align 4
  %add54 = add i32 %conv53, %887
  call void @fiat_p384_addcarryx_u32(ptr noundef %x790, ptr noundef %x791, i8 noundef zeroext %883, i32 noundef %add52, i32 noundef %add54)
  %888 = load i32, ptr %x768, align 4
  %889 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %889, i64 10
  %890 = load i32, ptr %arrayidx55, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x792, ptr noundef %x793, i8 noundef zeroext 0, i32 noundef %888, i32 noundef %890)
  %891 = load i8, ptr %x793, align 1
  %892 = load i32, ptr %x770, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x794, ptr noundef %x795, i8 noundef zeroext %891, i32 noundef %892, i32 noundef 0)
  %893 = load i8, ptr %x795, align 1
  %894 = load i32, ptr %x772, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x796, ptr noundef %x797, i8 noundef zeroext %893, i32 noundef %894, i32 noundef 0)
  %895 = load i8, ptr %x797, align 1
  %896 = load i32, ptr %x774, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x798, ptr noundef %x799, i8 noundef zeroext %895, i32 noundef %896, i32 noundef 0)
  %897 = load i8, ptr %x799, align 1
  %898 = load i32, ptr %x776, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x800, ptr noundef %x801, i8 noundef zeroext %897, i32 noundef %898, i32 noundef 0)
  %899 = load i8, ptr %x801, align 1
  %900 = load i32, ptr %x778, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x802, ptr noundef %x803, i8 noundef zeroext %899, i32 noundef %900, i32 noundef 0)
  %901 = load i8, ptr %x803, align 1
  %902 = load i32, ptr %x780, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x804, ptr noundef %x805, i8 noundef zeroext %901, i32 noundef %902, i32 noundef 0)
  %903 = load i8, ptr %x805, align 1
  %904 = load i32, ptr %x782, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x806, ptr noundef %x807, i8 noundef zeroext %903, i32 noundef %904, i32 noundef 0)
  %905 = load i8, ptr %x807, align 1
  %906 = load i32, ptr %x784, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x808, ptr noundef %x809, i8 noundef zeroext %905, i32 noundef %906, i32 noundef 0)
  %907 = load i8, ptr %x809, align 1
  %908 = load i32, ptr %x786, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x810, ptr noundef %x811, i8 noundef zeroext %907, i32 noundef %908, i32 noundef 0)
  %909 = load i8, ptr %x811, align 1
  %910 = load i32, ptr %x788, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x812, ptr noundef %x813, i8 noundef zeroext %909, i32 noundef %910, i32 noundef 0)
  %911 = load i8, ptr %x813, align 1
  %912 = load i32, ptr %x790, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x814, ptr noundef %x815, i8 noundef zeroext %911, i32 noundef %912, i32 noundef 0)
  %913 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x816, ptr noundef %x817, i32 noundef %913, i32 noundef -1)
  %914 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x818, ptr noundef %x819, i32 noundef %914, i32 noundef -1)
  %915 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x820, ptr noundef %x821, i32 noundef %915, i32 noundef -1)
  %916 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x822, ptr noundef %x823, i32 noundef %916, i32 noundef -1)
  %917 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x824, ptr noundef %x825, i32 noundef %917, i32 noundef -1)
  %918 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x826, ptr noundef %x827, i32 noundef %918, i32 noundef -1)
  %919 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x828, ptr noundef %x829, i32 noundef %919, i32 noundef -1)
  %920 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x830, ptr noundef %x831, i32 noundef %920, i32 noundef -2)
  %921 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x832, ptr noundef %x833, i32 noundef %921, i32 noundef -1)
  %922 = load i32, ptr %x792, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x834, ptr noundef %x835, i32 noundef %922, i32 noundef -1)
  %923 = load i32, ptr %x833, align 4
  %924 = load i32, ptr %x830, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x836, ptr noundef %x837, i8 noundef zeroext 0, i32 noundef %923, i32 noundef %924)
  %925 = load i8, ptr %x837, align 1
  %926 = load i32, ptr %x831, align 4
  %927 = load i32, ptr %x828, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x838, ptr noundef %x839, i8 noundef zeroext %925, i32 noundef %926, i32 noundef %927)
  %928 = load i8, ptr %x839, align 1
  %929 = load i32, ptr %x829, align 4
  %930 = load i32, ptr %x826, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x840, ptr noundef %x841, i8 noundef zeroext %928, i32 noundef %929, i32 noundef %930)
  %931 = load i8, ptr %x841, align 1
  %932 = load i32, ptr %x827, align 4
  %933 = load i32, ptr %x824, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x842, ptr noundef %x843, i8 noundef zeroext %931, i32 noundef %932, i32 noundef %933)
  %934 = load i8, ptr %x843, align 1
  %935 = load i32, ptr %x825, align 4
  %936 = load i32, ptr %x822, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x844, ptr noundef %x845, i8 noundef zeroext %934, i32 noundef %935, i32 noundef %936)
  %937 = load i8, ptr %x845, align 1
  %938 = load i32, ptr %x823, align 4
  %939 = load i32, ptr %x820, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x846, ptr noundef %x847, i8 noundef zeroext %937, i32 noundef %938, i32 noundef %939)
  %940 = load i8, ptr %x847, align 1
  %941 = load i32, ptr %x821, align 4
  %942 = load i32, ptr %x818, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x848, ptr noundef %x849, i8 noundef zeroext %940, i32 noundef %941, i32 noundef %942)
  %943 = load i8, ptr %x849, align 1
  %944 = load i32, ptr %x819, align 4
  %945 = load i32, ptr %x816, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x850, ptr noundef %x851, i8 noundef zeroext %943, i32 noundef %944, i32 noundef %945)
  %946 = load i32, ptr %x792, align 4
  %947 = load i32, ptr %x834, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x852, ptr noundef %x853, i8 noundef zeroext 0, i32 noundef %946, i32 noundef %947)
  %948 = load i8, ptr %x853, align 1
  %949 = load i32, ptr %x794, align 4
  %950 = load i32, ptr %x835, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x854, ptr noundef %x855, i8 noundef zeroext %948, i32 noundef %949, i32 noundef %950)
  %951 = load i8, ptr %x855, align 1
  %952 = load i32, ptr %x796, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x856, ptr noundef %x857, i8 noundef zeroext %951, i32 noundef %952, i32 noundef 0)
  %953 = load i8, ptr %x857, align 1
  %954 = load i32, ptr %x798, align 4
  %955 = load i32, ptr %x832, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x858, ptr noundef %x859, i8 noundef zeroext %953, i32 noundef %954, i32 noundef %955)
  %956 = load i8, ptr %x859, align 1
  %957 = load i32, ptr %x800, align 4
  %958 = load i32, ptr %x836, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x860, ptr noundef %x861, i8 noundef zeroext %956, i32 noundef %957, i32 noundef %958)
  %959 = load i8, ptr %x861, align 1
  %960 = load i32, ptr %x802, align 4
  %961 = load i32, ptr %x838, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x862, ptr noundef %x863, i8 noundef zeroext %959, i32 noundef %960, i32 noundef %961)
  %962 = load i8, ptr %x863, align 1
  %963 = load i32, ptr %x804, align 4
  %964 = load i32, ptr %x840, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x864, ptr noundef %x865, i8 noundef zeroext %962, i32 noundef %963, i32 noundef %964)
  %965 = load i8, ptr %x865, align 1
  %966 = load i32, ptr %x806, align 4
  %967 = load i32, ptr %x842, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x866, ptr noundef %x867, i8 noundef zeroext %965, i32 noundef %966, i32 noundef %967)
  %968 = load i8, ptr %x867, align 1
  %969 = load i32, ptr %x808, align 4
  %970 = load i32, ptr %x844, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x868, ptr noundef %x869, i8 noundef zeroext %968, i32 noundef %969, i32 noundef %970)
  %971 = load i8, ptr %x869, align 1
  %972 = load i32, ptr %x810, align 4
  %973 = load i32, ptr %x846, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x870, ptr noundef %x871, i8 noundef zeroext %971, i32 noundef %972, i32 noundef %973)
  %974 = load i8, ptr %x871, align 1
  %975 = load i32, ptr %x812, align 4
  %976 = load i32, ptr %x848, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x872, ptr noundef %x873, i8 noundef zeroext %974, i32 noundef %975, i32 noundef %976)
  %977 = load i8, ptr %x873, align 1
  %978 = load i32, ptr %x814, align 4
  %979 = load i32, ptr %x850, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x874, ptr noundef %x875, i8 noundef zeroext %977, i32 noundef %978, i32 noundef %979)
  %980 = load i8, ptr %x875, align 1
  %981 = load i8, ptr %x815, align 1
  %conv56 = zext i8 %981 to i32
  %982 = load i8, ptr %x791, align 1
  %conv57 = zext i8 %982 to i32
  %add58 = add i32 %conv56, %conv57
  %983 = load i8, ptr %x851, align 1
  %conv59 = zext i8 %983 to i32
  %984 = load i32, ptr %x817, align 4
  %add60 = add i32 %conv59, %984
  call void @fiat_p384_addcarryx_u32(ptr noundef %x876, ptr noundef %x877, i8 noundef zeroext %980, i32 noundef %add58, i32 noundef %add60)
  %985 = load i32, ptr %x854, align 4
  %986 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %986, i64 11
  %987 = load i32, ptr %arrayidx61, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x878, ptr noundef %x879, i8 noundef zeroext 0, i32 noundef %985, i32 noundef %987)
  %988 = load i8, ptr %x879, align 1
  %989 = load i32, ptr %x856, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x880, ptr noundef %x881, i8 noundef zeroext %988, i32 noundef %989, i32 noundef 0)
  %990 = load i8, ptr %x881, align 1
  %991 = load i32, ptr %x858, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x882, ptr noundef %x883, i8 noundef zeroext %990, i32 noundef %991, i32 noundef 0)
  %992 = load i8, ptr %x883, align 1
  %993 = load i32, ptr %x860, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x884, ptr noundef %x885, i8 noundef zeroext %992, i32 noundef %993, i32 noundef 0)
  %994 = load i8, ptr %x885, align 1
  %995 = load i32, ptr %x862, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x886, ptr noundef %x887, i8 noundef zeroext %994, i32 noundef %995, i32 noundef 0)
  %996 = load i8, ptr %x887, align 1
  %997 = load i32, ptr %x864, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x888, ptr noundef %x889, i8 noundef zeroext %996, i32 noundef %997, i32 noundef 0)
  %998 = load i8, ptr %x889, align 1
  %999 = load i32, ptr %x866, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x890, ptr noundef %x891, i8 noundef zeroext %998, i32 noundef %999, i32 noundef 0)
  %1000 = load i8, ptr %x891, align 1
  %1001 = load i32, ptr %x868, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x892, ptr noundef %x893, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef 0)
  %1002 = load i8, ptr %x893, align 1
  %1003 = load i32, ptr %x870, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x894, ptr noundef %x895, i8 noundef zeroext %1002, i32 noundef %1003, i32 noundef 0)
  %1004 = load i8, ptr %x895, align 1
  %1005 = load i32, ptr %x872, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x896, ptr noundef %x897, i8 noundef zeroext %1004, i32 noundef %1005, i32 noundef 0)
  %1006 = load i8, ptr %x897, align 1
  %1007 = load i32, ptr %x874, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x898, ptr noundef %x899, i8 noundef zeroext %1006, i32 noundef %1007, i32 noundef 0)
  %1008 = load i8, ptr %x899, align 1
  %1009 = load i32, ptr %x876, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x900, ptr noundef %x901, i8 noundef zeroext %1008, i32 noundef %1009, i32 noundef 0)
  %1010 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x902, ptr noundef %x903, i32 noundef %1010, i32 noundef -1)
  %1011 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x904, ptr noundef %x905, i32 noundef %1011, i32 noundef -1)
  %1012 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x906, ptr noundef %x907, i32 noundef %1012, i32 noundef -1)
  %1013 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x908, ptr noundef %x909, i32 noundef %1013, i32 noundef -1)
  %1014 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x910, ptr noundef %x911, i32 noundef %1014, i32 noundef -1)
  %1015 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x912, ptr noundef %x913, i32 noundef %1015, i32 noundef -1)
  %1016 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x914, ptr noundef %x915, i32 noundef %1016, i32 noundef -1)
  %1017 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x916, ptr noundef %x917, i32 noundef %1017, i32 noundef -2)
  %1018 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x918, ptr noundef %x919, i32 noundef %1018, i32 noundef -1)
  %1019 = load i32, ptr %x878, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x920, ptr noundef %x921, i32 noundef %1019, i32 noundef -1)
  %1020 = load i32, ptr %x919, align 4
  %1021 = load i32, ptr %x916, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x922, ptr noundef %x923, i8 noundef zeroext 0, i32 noundef %1020, i32 noundef %1021)
  %1022 = load i8, ptr %x923, align 1
  %1023 = load i32, ptr %x917, align 4
  %1024 = load i32, ptr %x914, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x924, ptr noundef %x925, i8 noundef zeroext %1022, i32 noundef %1023, i32 noundef %1024)
  %1025 = load i8, ptr %x925, align 1
  %1026 = load i32, ptr %x915, align 4
  %1027 = load i32, ptr %x912, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x926, ptr noundef %x927, i8 noundef zeroext %1025, i32 noundef %1026, i32 noundef %1027)
  %1028 = load i8, ptr %x927, align 1
  %1029 = load i32, ptr %x913, align 4
  %1030 = load i32, ptr %x910, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x928, ptr noundef %x929, i8 noundef zeroext %1028, i32 noundef %1029, i32 noundef %1030)
  %1031 = load i8, ptr %x929, align 1
  %1032 = load i32, ptr %x911, align 4
  %1033 = load i32, ptr %x908, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x930, ptr noundef %x931, i8 noundef zeroext %1031, i32 noundef %1032, i32 noundef %1033)
  %1034 = load i8, ptr %x931, align 1
  %1035 = load i32, ptr %x909, align 4
  %1036 = load i32, ptr %x906, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x932, ptr noundef %x933, i8 noundef zeroext %1034, i32 noundef %1035, i32 noundef %1036)
  %1037 = load i8, ptr %x933, align 1
  %1038 = load i32, ptr %x907, align 4
  %1039 = load i32, ptr %x904, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x934, ptr noundef %x935, i8 noundef zeroext %1037, i32 noundef %1038, i32 noundef %1039)
  %1040 = load i8, ptr %x935, align 1
  %1041 = load i32, ptr %x905, align 4
  %1042 = load i32, ptr %x902, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x936, ptr noundef %x937, i8 noundef zeroext %1040, i32 noundef %1041, i32 noundef %1042)
  %1043 = load i32, ptr %x878, align 4
  %1044 = load i32, ptr %x920, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x938, ptr noundef %x939, i8 noundef zeroext 0, i32 noundef %1043, i32 noundef %1044)
  %1045 = load i8, ptr %x939, align 1
  %1046 = load i32, ptr %x880, align 4
  %1047 = load i32, ptr %x921, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x940, ptr noundef %x941, i8 noundef zeroext %1045, i32 noundef %1046, i32 noundef %1047)
  %1048 = load i8, ptr %x941, align 1
  %1049 = load i32, ptr %x882, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x942, ptr noundef %x943, i8 noundef zeroext %1048, i32 noundef %1049, i32 noundef 0)
  %1050 = load i8, ptr %x943, align 1
  %1051 = load i32, ptr %x884, align 4
  %1052 = load i32, ptr %x918, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x944, ptr noundef %x945, i8 noundef zeroext %1050, i32 noundef %1051, i32 noundef %1052)
  %1053 = load i8, ptr %x945, align 1
  %1054 = load i32, ptr %x886, align 4
  %1055 = load i32, ptr %x922, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x946, ptr noundef %x947, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i8, ptr %x947, align 1
  %1057 = load i32, ptr %x888, align 4
  %1058 = load i32, ptr %x924, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x948, ptr noundef %x949, i8 noundef zeroext %1056, i32 noundef %1057, i32 noundef %1058)
  %1059 = load i8, ptr %x949, align 1
  %1060 = load i32, ptr %x890, align 4
  %1061 = load i32, ptr %x926, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x950, ptr noundef %x951, i8 noundef zeroext %1059, i32 noundef %1060, i32 noundef %1061)
  %1062 = load i8, ptr %x951, align 1
  %1063 = load i32, ptr %x892, align 4
  %1064 = load i32, ptr %x928, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x952, ptr noundef %x953, i8 noundef zeroext %1062, i32 noundef %1063, i32 noundef %1064)
  %1065 = load i8, ptr %x953, align 1
  %1066 = load i32, ptr %x894, align 4
  %1067 = load i32, ptr %x930, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x954, ptr noundef %x955, i8 noundef zeroext %1065, i32 noundef %1066, i32 noundef %1067)
  %1068 = load i8, ptr %x955, align 1
  %1069 = load i32, ptr %x896, align 4
  %1070 = load i32, ptr %x932, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x956, ptr noundef %x957, i8 noundef zeroext %1068, i32 noundef %1069, i32 noundef %1070)
  %1071 = load i8, ptr %x957, align 1
  %1072 = load i32, ptr %x898, align 4
  %1073 = load i32, ptr %x934, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x958, ptr noundef %x959, i8 noundef zeroext %1071, i32 noundef %1072, i32 noundef %1073)
  %1074 = load i8, ptr %x959, align 1
  %1075 = load i32, ptr %x900, align 4
  %1076 = load i32, ptr %x936, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x960, ptr noundef %x961, i8 noundef zeroext %1074, i32 noundef %1075, i32 noundef %1076)
  %1077 = load i8, ptr %x961, align 1
  %1078 = load i8, ptr %x901, align 1
  %conv62 = zext i8 %1078 to i32
  %1079 = load i8, ptr %x877, align 1
  %conv63 = zext i8 %1079 to i32
  %add64 = add i32 %conv62, %conv63
  %1080 = load i8, ptr %x937, align 1
  %conv65 = zext i8 %1080 to i32
  %1081 = load i32, ptr %x903, align 4
  %add66 = add i32 %conv65, %1081
  call void @fiat_p384_addcarryx_u32(ptr noundef %x962, ptr noundef %x963, i8 noundef zeroext %1077, i32 noundef %add64, i32 noundef %add66)
  %1082 = load i32, ptr %x940, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x964, ptr noundef %x965, i8 noundef zeroext 0, i32 noundef %1082, i32 noundef -1)
  %1083 = load i8, ptr %x965, align 1
  %1084 = load i32, ptr %x942, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x966, ptr noundef %x967, i8 noundef zeroext %1083, i32 noundef %1084, i32 noundef 0)
  %1085 = load i8, ptr %x967, align 1
  %1086 = load i32, ptr %x944, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x968, ptr noundef %x969, i8 noundef zeroext %1085, i32 noundef %1086, i32 noundef 0)
  %1087 = load i8, ptr %x969, align 1
  %1088 = load i32, ptr %x946, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x970, ptr noundef %x971, i8 noundef zeroext %1087, i32 noundef %1088, i32 noundef -1)
  %1089 = load i8, ptr %x971, align 1
  %1090 = load i32, ptr %x948, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x972, ptr noundef %x973, i8 noundef zeroext %1089, i32 noundef %1090, i32 noundef -2)
  %1091 = load i8, ptr %x973, align 1
  %1092 = load i32, ptr %x950, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x974, ptr noundef %x975, i8 noundef zeroext %1091, i32 noundef %1092, i32 noundef -1)
  %1093 = load i8, ptr %x975, align 1
  %1094 = load i32, ptr %x952, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x976, ptr noundef %x977, i8 noundef zeroext %1093, i32 noundef %1094, i32 noundef -1)
  %1095 = load i8, ptr %x977, align 1
  %1096 = load i32, ptr %x954, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x978, ptr noundef %x979, i8 noundef zeroext %1095, i32 noundef %1096, i32 noundef -1)
  %1097 = load i8, ptr %x979, align 1
  %1098 = load i32, ptr %x956, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x980, ptr noundef %x981, i8 noundef zeroext %1097, i32 noundef %1098, i32 noundef -1)
  %1099 = load i8, ptr %x981, align 1
  %1100 = load i32, ptr %x958, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x982, ptr noundef %x983, i8 noundef zeroext %1099, i32 noundef %1100, i32 noundef -1)
  %1101 = load i8, ptr %x983, align 1
  %1102 = load i32, ptr %x960, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x984, ptr noundef %x985, i8 noundef zeroext %1101, i32 noundef %1102, i32 noundef -1)
  %1103 = load i8, ptr %x985, align 1
  %1104 = load i32, ptr %x962, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x986, ptr noundef %x987, i8 noundef zeroext %1103, i32 noundef %1104, i32 noundef -1)
  %1105 = load i8, ptr %x987, align 1
  %1106 = load i8, ptr %x963, align 1
  %conv67 = zext i8 %1106 to i32
  call void @fiat_p384_subborrowx_u32(ptr noundef %x988, ptr noundef %x989, i8 noundef zeroext %1105, i32 noundef %conv67, i32 noundef 0)
  %1107 = load i8, ptr %x989, align 1
  %1108 = load i32, ptr %x964, align 4
  %1109 = load i32, ptr %x940, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x990, i8 noundef zeroext %1107, i32 noundef %1108, i32 noundef %1109)
  %1110 = load i8, ptr %x989, align 1
  %1111 = load i32, ptr %x966, align 4
  %1112 = load i32, ptr %x942, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x991, i8 noundef zeroext %1110, i32 noundef %1111, i32 noundef %1112)
  %1113 = load i8, ptr %x989, align 1
  %1114 = load i32, ptr %x968, align 4
  %1115 = load i32, ptr %x944, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x992, i8 noundef zeroext %1113, i32 noundef %1114, i32 noundef %1115)
  %1116 = load i8, ptr %x989, align 1
  %1117 = load i32, ptr %x970, align 4
  %1118 = load i32, ptr %x946, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x993, i8 noundef zeroext %1116, i32 noundef %1117, i32 noundef %1118)
  %1119 = load i8, ptr %x989, align 1
  %1120 = load i32, ptr %x972, align 4
  %1121 = load i32, ptr %x948, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x994, i8 noundef zeroext %1119, i32 noundef %1120, i32 noundef %1121)
  %1122 = load i8, ptr %x989, align 1
  %1123 = load i32, ptr %x974, align 4
  %1124 = load i32, ptr %x950, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x995, i8 noundef zeroext %1122, i32 noundef %1123, i32 noundef %1124)
  %1125 = load i8, ptr %x989, align 1
  %1126 = load i32, ptr %x976, align 4
  %1127 = load i32, ptr %x952, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x996, i8 noundef zeroext %1125, i32 noundef %1126, i32 noundef %1127)
  %1128 = load i8, ptr %x989, align 1
  %1129 = load i32, ptr %x978, align 4
  %1130 = load i32, ptr %x954, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x997, i8 noundef zeroext %1128, i32 noundef %1129, i32 noundef %1130)
  %1131 = load i8, ptr %x989, align 1
  %1132 = load i32, ptr %x980, align 4
  %1133 = load i32, ptr %x956, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x998, i8 noundef zeroext %1131, i32 noundef %1132, i32 noundef %1133)
  %1134 = load i8, ptr %x989, align 1
  %1135 = load i32, ptr %x982, align 4
  %1136 = load i32, ptr %x958, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x999, i8 noundef zeroext %1134, i32 noundef %1135, i32 noundef %1136)
  %1137 = load i8, ptr %x989, align 1
  %1138 = load i32, ptr %x984, align 4
  %1139 = load i32, ptr %x960, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1000, i8 noundef zeroext %1137, i32 noundef %1138, i32 noundef %1139)
  %1140 = load i8, ptr %x989, align 1
  %1141 = load i32, ptr %x986, align 4
  %1142 = load i32, ptr %x962, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1001, i8 noundef zeroext %1140, i32 noundef %1141, i32 noundef %1142)
  %1143 = load i32, ptr %x990, align 4
  %1144 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %1144, i64 0
  store i32 %1143, ptr %arrayidx68, align 4
  %1145 = load i32, ptr %x991, align 4
  %1146 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %1146, i64 1
  store i32 %1145, ptr %arrayidx69, align 4
  %1147 = load i32, ptr %x992, align 4
  %1148 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %1148, i64 2
  store i32 %1147, ptr %arrayidx70, align 4
  %1149 = load i32, ptr %x993, align 4
  %1150 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %1150, i64 3
  store i32 %1149, ptr %arrayidx71, align 4
  %1151 = load i32, ptr %x994, align 4
  %1152 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %1152, i64 4
  store i32 %1151, ptr %arrayidx72, align 4
  %1153 = load i32, ptr %x995, align 4
  %1154 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %1154, i64 5
  store i32 %1153, ptr %arrayidx73, align 4
  %1155 = load i32, ptr %x996, align 4
  %1156 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %1156, i64 6
  store i32 %1155, ptr %arrayidx74, align 4
  %1157 = load i32, ptr %x997, align 4
  %1158 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %1158, i64 7
  store i32 %1157, ptr %arrayidx75, align 4
  %1159 = load i32, ptr %x998, align 4
  %1160 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %1160, i64 8
  store i32 %1159, ptr %arrayidx76, align 4
  %1161 = load i32, ptr %x999, align 4
  %1162 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %1162, i64 9
  store i32 %1161, ptr %arrayidx77, align 4
  %1163 = load i32, ptr %x1000, align 4
  %1164 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %1164, i64 10
  store i32 %1163, ptr %arrayidx78, align 4
  %1165 = load i32, ptr %x1001, align 4
  %1166 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %1166, i64 11
  store i32 %1165, ptr %arrayidx79, align 4
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
