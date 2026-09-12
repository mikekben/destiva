; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p224_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_addcarryx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_subborrowx_u32(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_mulx_u32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p224_cmovznz_u32(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p224_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i32, align 4
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i8, align 1
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i32, align 4
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
  %x122 = alloca i8, align 1
  %x123 = alloca i32, align 4
  %x124 = alloca i8, align 1
  %x125 = alloca i32, align 4
  %x126 = alloca i8, align 1
  %x127 = alloca i32, align 4
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
  %x199 = alloca i8, align 1
  %x200 = alloca i32, align 4
  %x201 = alloca i8, align 1
  %x202 = alloca i32, align 4
  %x203 = alloca i8, align 1
  %x204 = alloca i32, align 4
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
  %x235 = alloca i32, align 4
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
  %x276 = alloca i8, align 1
  %x277 = alloca i32, align 4
  %x278 = alloca i8, align 1
  %x279 = alloca i32, align 4
  %x280 = alloca i8, align 1
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
  %x353 = alloca i8, align 1
  %x354 = alloca i32, align 4
  %x355 = alloca i8, align 1
  %x356 = alloca i32, align 4
  %x357 = alloca i8, align 1
  %x358 = alloca i32, align 4
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
  %x376 = alloca i32, align 4
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
  %x391 = alloca i8, align 1
  %x392 = alloca i32, align 4
  %x393 = alloca i8, align 1
  %x394 = alloca i32, align 4
  %x395 = alloca i8, align 1
  %x396 = alloca i32, align 4
  %x397 = alloca i8, align 1
  %x398 = alloca i32, align 4
  %x399 = alloca i8, align 1
  %x400 = alloca i32, align 4
  %x401 = alloca i8, align 1
  %x402 = alloca i32, align 4
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
  %x432 = alloca i8, align 1
  %x433 = alloca i32, align 4
  %x434 = alloca i8, align 1
  %x435 = alloca i32, align 4
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
  %x453 = alloca i32, align 4
  %x454 = alloca i32, align 4
  %x455 = alloca i32, align 4
  %x456 = alloca i32, align 4
  %x457 = alloca i32, align 4
  %x458 = alloca i32, align 4
  %x459 = alloca i32, align 4
  %x460 = alloca i32, align 4
  %x461 = alloca i32, align 4
  %x462 = alloca i32, align 4
  %x463 = alloca i32, align 4
  %x464 = alloca i32, align 4
  %x465 = alloca i32, align 4
  %x466 = alloca i32, align 4
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
  %x507 = alloca i8, align 1
  %x508 = alloca i32, align 4
  %x509 = alloca i8, align 1
  %x510 = alloca i32, align 4
  %x511 = alloca i8, align 1
  %x512 = alloca i32, align 4
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
  %x547 = alloca i32, align 4
  %x548 = alloca i32, align 4
  %x549 = alloca i32, align 4
  %x550 = alloca i32, align 4
  %x551 = alloca i32, align 4
  %x552 = alloca i32, align 4
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
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 0
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load i32, ptr %x7, align 4
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i64 6
  %16 = load i32, ptr %arrayidx7, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %14, i32 noundef %16)
  %17 = load i32, ptr %x7, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %18, i64 5
  %19 = load i32, ptr %arrayidx8, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %17, i32 noundef %19)
  %20 = load i32, ptr %x7, align 4
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %21, i64 4
  %22 = load i32, ptr %arrayidx9, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %20, i32 noundef %22)
  %23 = load i32, ptr %x7, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx10, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x14, ptr noundef %x15, i32 noundef %23, i32 noundef %25)
  %26 = load i32, ptr %x7, align 4
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 2
  %28 = load i32, ptr %arrayidx11, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x16, ptr noundef %x17, i32 noundef %26, i32 noundef %28)
  %29 = load i32, ptr %x7, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 1
  %31 = load i32, ptr %arrayidx12, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x18, ptr noundef %x19, i32 noundef %29, i32 noundef %31)
  %32 = load i32, ptr %x7, align 4
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %33, i64 0
  %34 = load i32, ptr %arrayidx13, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x20, ptr noundef %x21, i32 noundef %32, i32 noundef %34)
  %35 = load i32, ptr %x21, align 4
  %36 = load i32, ptr %x18, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i32 noundef %35, i32 noundef %36)
  %37 = load i8, ptr %x23, align 1
  %38 = load i32, ptr %x19, align 4
  %39 = load i32, ptr %x16, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %37, i32 noundef %38, i32 noundef %39)
  %40 = load i8, ptr %x25, align 1
  %41 = load i32, ptr %x17, align 4
  %42 = load i32, ptr %x14, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %40, i32 noundef %41, i32 noundef %42)
  %43 = load i8, ptr %x27, align 1
  %44 = load i32, ptr %x15, align 4
  %45 = load i32, ptr %x12, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %43, i32 noundef %44, i32 noundef %45)
  %46 = load i8, ptr %x29, align 1
  %47 = load i32, ptr %x13, align 4
  %48 = load i32, ptr %x10, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %46, i32 noundef %47, i32 noundef %48)
  %49 = load i8, ptr %x31, align 1
  %50 = load i32, ptr %x11, align 4
  %51 = load i32, ptr %x8, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %49, i32 noundef %50, i32 noundef %51)
  %52 = load i8, ptr %x33, align 1
  %conv = zext i8 %52 to i32
  %53 = load i32, ptr %x9, align 4
  %add = add i32 %conv, %53
  store i32 %add, ptr %x34, align 4
  %54 = load i32, ptr %x20, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %54, i32 noundef -1)
  %55 = load i32, ptr %x35, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x37, ptr noundef %x38, i32 noundef %55, i32 noundef -1)
  %56 = load i32, ptr %x35, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %56, i32 noundef -1)
  %57 = load i32, ptr %x35, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %57, i32 noundef -1)
  %58 = load i32, ptr %x35, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x43, ptr noundef %x44, i32 noundef %58, i32 noundef -1)
  %59 = load i32, ptr %x44, align 4
  %60 = load i32, ptr %x41, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext 0, i32 noundef %59, i32 noundef %60)
  %61 = load i8, ptr %x46, align 1
  %62 = load i32, ptr %x42, align 4
  %63 = load i32, ptr %x39, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %61, i32 noundef %62, i32 noundef %63)
  %64 = load i8, ptr %x48, align 1
  %65 = load i32, ptr %x40, align 4
  %66 = load i32, ptr %x37, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %64, i32 noundef %65, i32 noundef %66)
  %67 = load i8, ptr %x50, align 1
  %conv14 = zext i8 %67 to i32
  %68 = load i32, ptr %x38, align 4
  %add15 = add i32 %conv14, %68
  store i32 %add15, ptr %x51, align 4
  %69 = load i32, ptr %x20, align 4
  %70 = load i32, ptr %x35, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x53, align 1
  %72 = load i32, ptr %x22, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %71, i32 noundef %72, i32 noundef 0)
  %73 = load i8, ptr %x55, align 1
  %74 = load i32, ptr %x24, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %73, i32 noundef %74, i32 noundef 0)
  %75 = load i8, ptr %x57, align 1
  %76 = load i32, ptr %x26, align 4
  %77 = load i32, ptr %x43, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x59, align 1
  %79 = load i32, ptr %x28, align 4
  %80 = load i32, ptr %x45, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x61, align 1
  %82 = load i32, ptr %x30, align 4
  %83 = load i32, ptr %x47, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x63, align 1
  %85 = load i32, ptr %x32, align 4
  %86 = load i32, ptr %x49, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x65, align 1
  %88 = load i32, ptr %x34, align 4
  %89 = load i32, ptr %x51, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i32, ptr %x1, align 4
  %91 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %91, i64 6
  %92 = load i32, ptr %arrayidx16, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %90, i32 noundef %92)
  %93 = load i32, ptr %x1, align 4
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %94, i64 5
  %95 = load i32, ptr %arrayidx17, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %93, i32 noundef %95)
  %96 = load i32, ptr %x1, align 4
  %97 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %97, i64 4
  %98 = load i32, ptr %arrayidx18, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %96, i32 noundef %98)
  %99 = load i32, ptr %x1, align 4
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %100, i64 3
  %101 = load i32, ptr %arrayidx19, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %99, i32 noundef %101)
  %102 = load i32, ptr %x1, align 4
  %103 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %103, i64 2
  %104 = load i32, ptr %arrayidx20, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x76, ptr noundef %x77, i32 noundef %102, i32 noundef %104)
  %105 = load i32, ptr %x1, align 4
  %106 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %106, i64 1
  %107 = load i32, ptr %arrayidx21, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x78, ptr noundef %x79, i32 noundef %105, i32 noundef %107)
  %108 = load i32, ptr %x1, align 4
  %109 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %109, i64 0
  %110 = load i32, ptr %arrayidx22, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x80, ptr noundef %x81, i32 noundef %108, i32 noundef %110)
  %111 = load i32, ptr %x81, align 4
  %112 = load i32, ptr %x78, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext 0, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x83, align 1
  %114 = load i32, ptr %x79, align 4
  %115 = load i32, ptr %x76, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %115)
  %116 = load i8, ptr %x85, align 1
  %117 = load i32, ptr %x77, align 4
  %118 = load i32, ptr %x74, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %118)
  %119 = load i8, ptr %x87, align 1
  %120 = load i32, ptr %x75, align 4
  %121 = load i32, ptr %x72, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %119, i32 noundef %120, i32 noundef %121)
  %122 = load i8, ptr %x89, align 1
  %123 = load i32, ptr %x73, align 4
  %124 = load i32, ptr %x70, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %122, i32 noundef %123, i32 noundef %124)
  %125 = load i8, ptr %x91, align 1
  %126 = load i32, ptr %x71, align 4
  %127 = load i32, ptr %x68, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %125, i32 noundef %126, i32 noundef %127)
  %128 = load i8, ptr %x93, align 1
  %conv23 = zext i8 %128 to i32
  %129 = load i32, ptr %x69, align 4
  %add24 = add i32 %conv23, %129
  store i32 %add24, ptr %x94, align 4
  %130 = load i32, ptr %x54, align 4
  %131 = load i32, ptr %x80, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext 0, i32 noundef %130, i32 noundef %131)
  %132 = load i8, ptr %x96, align 1
  %133 = load i32, ptr %x56, align 4
  %134 = load i32, ptr %x82, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %132, i32 noundef %133, i32 noundef %134)
  %135 = load i8, ptr %x98, align 1
  %136 = load i32, ptr %x58, align 4
  %137 = load i32, ptr %x84, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %135, i32 noundef %136, i32 noundef %137)
  %138 = load i8, ptr %x100, align 1
  %139 = load i32, ptr %x60, align 4
  %140 = load i32, ptr %x86, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %138, i32 noundef %139, i32 noundef %140)
  %141 = load i8, ptr %x102, align 1
  %142 = load i32, ptr %x62, align 4
  %143 = load i32, ptr %x88, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %141, i32 noundef %142, i32 noundef %143)
  %144 = load i8, ptr %x104, align 1
  %145 = load i32, ptr %x64, align 4
  %146 = load i32, ptr %x90, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %144, i32 noundef %145, i32 noundef %146)
  %147 = load i8, ptr %x106, align 1
  %148 = load i32, ptr %x66, align 4
  %149 = load i32, ptr %x92, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %147, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x108, align 1
  %151 = load i8, ptr %x67, align 1
  %conv25 = zext i8 %151 to i32
  %152 = load i32, ptr %x94, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %150, i32 noundef %conv25, i32 noundef %152)
  %153 = load i32, ptr %x95, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x111, ptr noundef %x112, i32 noundef %153, i32 noundef -1)
  %154 = load i32, ptr %x111, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x113, ptr noundef %x114, i32 noundef %154, i32 noundef -1)
  %155 = load i32, ptr %x111, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x115, ptr noundef %x116, i32 noundef %155, i32 noundef -1)
  %156 = load i32, ptr %x111, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x117, ptr noundef %x118, i32 noundef %156, i32 noundef -1)
  %157 = load i32, ptr %x111, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x119, ptr noundef %x120, i32 noundef %157, i32 noundef -1)
  %158 = load i32, ptr %x120, align 4
  %159 = load i32, ptr %x117, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext 0, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x122, align 1
  %161 = load i32, ptr %x118, align 4
  %162 = load i32, ptr %x115, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x124, align 1
  %164 = load i32, ptr %x116, align 4
  %165 = load i32, ptr %x113, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i8, ptr %x126, align 1
  %conv26 = zext i8 %166 to i32
  %167 = load i32, ptr %x114, align 4
  %add27 = add i32 %conv26, %167
  store i32 %add27, ptr %x127, align 4
  %168 = load i32, ptr %x95, align 4
  %169 = load i32, ptr %x111, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext 0, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x129, align 1
  %171 = load i32, ptr %x97, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %170, i32 noundef %171, i32 noundef 0)
  %172 = load i8, ptr %x131, align 1
  %173 = load i32, ptr %x99, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %172, i32 noundef %173, i32 noundef 0)
  %174 = load i8, ptr %x133, align 1
  %175 = load i32, ptr %x101, align 4
  %176 = load i32, ptr %x119, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %174, i32 noundef %175, i32 noundef %176)
  %177 = load i8, ptr %x135, align 1
  %178 = load i32, ptr %x103, align 4
  %179 = load i32, ptr %x121, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %177, i32 noundef %178, i32 noundef %179)
  %180 = load i8, ptr %x137, align 1
  %181 = load i32, ptr %x105, align 4
  %182 = load i32, ptr %x123, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %180, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x139, align 1
  %184 = load i32, ptr %x107, align 4
  %185 = load i32, ptr %x125, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x141, align 1
  %187 = load i32, ptr %x109, align 4
  %188 = load i32, ptr %x127, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188)
  %189 = load i8, ptr %x143, align 1
  %conv28 = zext i8 %189 to i32
  %190 = load i8, ptr %x110, align 1
  %conv29 = zext i8 %190 to i32
  %add30 = add i32 %conv28, %conv29
  store i32 %add30, ptr %x144, align 4
  %191 = load i32, ptr %x2, align 4
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %192, i64 6
  %193 = load i32, ptr %arrayidx31, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %191, i32 noundef %193)
  %194 = load i32, ptr %x2, align 4
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %195, i64 5
  %196 = load i32, ptr %arrayidx32, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x147, ptr noundef %x148, i32 noundef %194, i32 noundef %196)
  %197 = load i32, ptr %x2, align 4
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %198, i64 4
  %199 = load i32, ptr %arrayidx33, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x149, ptr noundef %x150, i32 noundef %197, i32 noundef %199)
  %200 = load i32, ptr %x2, align 4
  %201 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %201, i64 3
  %202 = load i32, ptr %arrayidx34, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x151, ptr noundef %x152, i32 noundef %200, i32 noundef %202)
  %203 = load i32, ptr %x2, align 4
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %204, i64 2
  %205 = load i32, ptr %arrayidx35, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x153, ptr noundef %x154, i32 noundef %203, i32 noundef %205)
  %206 = load i32, ptr %x2, align 4
  %207 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %207, i64 1
  %208 = load i32, ptr %arrayidx36, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x155, ptr noundef %x156, i32 noundef %206, i32 noundef %208)
  %209 = load i32, ptr %x2, align 4
  %210 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %210, i64 0
  %211 = load i32, ptr %arrayidx37, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x157, ptr noundef %x158, i32 noundef %209, i32 noundef %211)
  %212 = load i32, ptr %x158, align 4
  %213 = load i32, ptr %x155, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext 0, i32 noundef %212, i32 noundef %213)
  %214 = load i8, ptr %x160, align 1
  %215 = load i32, ptr %x156, align 4
  %216 = load i32, ptr %x153, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %214, i32 noundef %215, i32 noundef %216)
  %217 = load i8, ptr %x162, align 1
  %218 = load i32, ptr %x154, align 4
  %219 = load i32, ptr %x151, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %217, i32 noundef %218, i32 noundef %219)
  %220 = load i8, ptr %x164, align 1
  %221 = load i32, ptr %x152, align 4
  %222 = load i32, ptr %x149, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %220, i32 noundef %221, i32 noundef %222)
  %223 = load i8, ptr %x166, align 1
  %224 = load i32, ptr %x150, align 4
  %225 = load i32, ptr %x147, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %223, i32 noundef %224, i32 noundef %225)
  %226 = load i8, ptr %x168, align 1
  %227 = load i32, ptr %x148, align 4
  %228 = load i32, ptr %x145, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %226, i32 noundef %227, i32 noundef %228)
  %229 = load i8, ptr %x170, align 1
  %conv38 = zext i8 %229 to i32
  %230 = load i32, ptr %x146, align 4
  %add39 = add i32 %conv38, %230
  store i32 %add39, ptr %x171, align 4
  %231 = load i32, ptr %x130, align 4
  %232 = load i32, ptr %x157, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext 0, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x173, align 1
  %234 = load i32, ptr %x132, align 4
  %235 = load i32, ptr %x159, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x175, align 1
  %237 = load i32, ptr %x134, align 4
  %238 = load i32, ptr %x161, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x177, align 1
  %240 = load i32, ptr %x136, align 4
  %241 = load i32, ptr %x163, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x179, align 1
  %243 = load i32, ptr %x138, align 4
  %244 = load i32, ptr %x165, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %242, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x181, align 1
  %246 = load i32, ptr %x140, align 4
  %247 = load i32, ptr %x167, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i8, ptr %x183, align 1
  %249 = load i32, ptr %x142, align 4
  %250 = load i32, ptr %x169, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %248, i32 noundef %249, i32 noundef %250)
  %251 = load i8, ptr %x185, align 1
  %252 = load i32, ptr %x144, align 4
  %253 = load i32, ptr %x171, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %251, i32 noundef %252, i32 noundef %253)
  %254 = load i32, ptr %x172, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x188, ptr noundef %x189, i32 noundef %254, i32 noundef -1)
  %255 = load i32, ptr %x188, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x190, ptr noundef %x191, i32 noundef %255, i32 noundef -1)
  %256 = load i32, ptr %x188, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x192, ptr noundef %x193, i32 noundef %256, i32 noundef -1)
  %257 = load i32, ptr %x188, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x194, ptr noundef %x195, i32 noundef %257, i32 noundef -1)
  %258 = load i32, ptr %x188, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x196, ptr noundef %x197, i32 noundef %258, i32 noundef -1)
  %259 = load i32, ptr %x197, align 4
  %260 = load i32, ptr %x194, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext 0, i32 noundef %259, i32 noundef %260)
  %261 = load i8, ptr %x199, align 1
  %262 = load i32, ptr %x195, align 4
  %263 = load i32, ptr %x192, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %261, i32 noundef %262, i32 noundef %263)
  %264 = load i8, ptr %x201, align 1
  %265 = load i32, ptr %x193, align 4
  %266 = load i32, ptr %x190, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %264, i32 noundef %265, i32 noundef %266)
  %267 = load i8, ptr %x203, align 1
  %conv40 = zext i8 %267 to i32
  %268 = load i32, ptr %x191, align 4
  %add41 = add i32 %conv40, %268
  store i32 %add41, ptr %x204, align 4
  %269 = load i32, ptr %x172, align 4
  %270 = load i32, ptr %x188, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext 0, i32 noundef %269, i32 noundef %270)
  %271 = load i8, ptr %x206, align 1
  %272 = load i32, ptr %x174, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %271, i32 noundef %272, i32 noundef 0)
  %273 = load i8, ptr %x208, align 1
  %274 = load i32, ptr %x176, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %273, i32 noundef %274, i32 noundef 0)
  %275 = load i8, ptr %x210, align 1
  %276 = load i32, ptr %x178, align 4
  %277 = load i32, ptr %x196, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x212, align 1
  %279 = load i32, ptr %x180, align 4
  %280 = load i32, ptr %x198, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x214, align 1
  %282 = load i32, ptr %x182, align 4
  %283 = load i32, ptr %x200, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x216, align 1
  %285 = load i32, ptr %x184, align 4
  %286 = load i32, ptr %x202, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %286)
  %287 = load i8, ptr %x218, align 1
  %288 = load i32, ptr %x186, align 4
  %289 = load i32, ptr %x204, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %287, i32 noundef %288, i32 noundef %289)
  %290 = load i8, ptr %x220, align 1
  %conv42 = zext i8 %290 to i32
  %291 = load i8, ptr %x187, align 1
  %conv43 = zext i8 %291 to i32
  %add44 = add i32 %conv42, %conv43
  store i32 %add44, ptr %x221, align 4
  %292 = load i32, ptr %x3, align 4
  %293 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %293, i64 6
  %294 = load i32, ptr %arrayidx45, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x222, ptr noundef %x223, i32 noundef %292, i32 noundef %294)
  %295 = load i32, ptr %x3, align 4
  %296 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %296, i64 5
  %297 = load i32, ptr %arrayidx46, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x224, ptr noundef %x225, i32 noundef %295, i32 noundef %297)
  %298 = load i32, ptr %x3, align 4
  %299 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %299, i64 4
  %300 = load i32, ptr %arrayidx47, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x226, ptr noundef %x227, i32 noundef %298, i32 noundef %300)
  %301 = load i32, ptr %x3, align 4
  %302 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %302, i64 3
  %303 = load i32, ptr %arrayidx48, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x228, ptr noundef %x229, i32 noundef %301, i32 noundef %303)
  %304 = load i32, ptr %x3, align 4
  %305 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %305, i64 2
  %306 = load i32, ptr %arrayidx49, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x230, ptr noundef %x231, i32 noundef %304, i32 noundef %306)
  %307 = load i32, ptr %x3, align 4
  %308 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %308, i64 1
  %309 = load i32, ptr %arrayidx50, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x232, ptr noundef %x233, i32 noundef %307, i32 noundef %309)
  %310 = load i32, ptr %x3, align 4
  %311 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %311, i64 0
  %312 = load i32, ptr %arrayidx51, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x234, ptr noundef %x235, i32 noundef %310, i32 noundef %312)
  %313 = load i32, ptr %x235, align 4
  %314 = load i32, ptr %x232, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext 0, i32 noundef %313, i32 noundef %314)
  %315 = load i8, ptr %x237, align 1
  %316 = load i32, ptr %x233, align 4
  %317 = load i32, ptr %x230, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %315, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x239, align 1
  %319 = load i32, ptr %x231, align 4
  %320 = load i32, ptr %x228, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %318, i32 noundef %319, i32 noundef %320)
  %321 = load i8, ptr %x241, align 1
  %322 = load i32, ptr %x229, align 4
  %323 = load i32, ptr %x226, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x243, align 1
  %325 = load i32, ptr %x227, align 4
  %326 = load i32, ptr %x224, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x245, align 1
  %328 = load i32, ptr %x225, align 4
  %329 = load i32, ptr %x222, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x247, align 1
  %conv52 = zext i8 %330 to i32
  %331 = load i32, ptr %x223, align 4
  %add53 = add i32 %conv52, %331
  store i32 %add53, ptr %x248, align 4
  %332 = load i32, ptr %x207, align 4
  %333 = load i32, ptr %x234, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext 0, i32 noundef %332, i32 noundef %333)
  %334 = load i8, ptr %x250, align 1
  %335 = load i32, ptr %x209, align 4
  %336 = load i32, ptr %x236, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %334, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x252, align 1
  %338 = load i32, ptr %x211, align 4
  %339 = load i32, ptr %x238, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x254, align 1
  %341 = load i32, ptr %x213, align 4
  %342 = load i32, ptr %x240, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x256, align 1
  %344 = load i32, ptr %x215, align 4
  %345 = load i32, ptr %x242, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x258, align 1
  %347 = load i32, ptr %x217, align 4
  %348 = load i32, ptr %x244, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i8, ptr %x260, align 1
  %350 = load i32, ptr %x219, align 4
  %351 = load i32, ptr %x246, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i8, ptr %x262, align 1
  %353 = load i32, ptr %x221, align 4
  %354 = load i32, ptr %x248, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %352, i32 noundef %353, i32 noundef %354)
  %355 = load i32, ptr %x249, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x265, ptr noundef %x266, i32 noundef %355, i32 noundef -1)
  %356 = load i32, ptr %x265, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x267, ptr noundef %x268, i32 noundef %356, i32 noundef -1)
  %357 = load i32, ptr %x265, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x269, ptr noundef %x270, i32 noundef %357, i32 noundef -1)
  %358 = load i32, ptr %x265, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x271, ptr noundef %x272, i32 noundef %358, i32 noundef -1)
  %359 = load i32, ptr %x265, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x273, ptr noundef %x274, i32 noundef %359, i32 noundef -1)
  %360 = load i32, ptr %x274, align 4
  %361 = load i32, ptr %x271, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext 0, i32 noundef %360, i32 noundef %361)
  %362 = load i8, ptr %x276, align 1
  %363 = load i32, ptr %x272, align 4
  %364 = load i32, ptr %x269, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %362, i32 noundef %363, i32 noundef %364)
  %365 = load i8, ptr %x278, align 1
  %366 = load i32, ptr %x270, align 4
  %367 = load i32, ptr %x267, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %365, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x280, align 1
  %conv54 = zext i8 %368 to i32
  %369 = load i32, ptr %x268, align 4
  %add55 = add i32 %conv54, %369
  store i32 %add55, ptr %x281, align 4
  %370 = load i32, ptr %x249, align 4
  %371 = load i32, ptr %x265, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext 0, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x283, align 1
  %373 = load i32, ptr %x251, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %372, i32 noundef %373, i32 noundef 0)
  %374 = load i8, ptr %x285, align 1
  %375 = load i32, ptr %x253, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %374, i32 noundef %375, i32 noundef 0)
  %376 = load i8, ptr %x287, align 1
  %377 = load i32, ptr %x255, align 4
  %378 = load i32, ptr %x273, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %376, i32 noundef %377, i32 noundef %378)
  %379 = load i8, ptr %x289, align 1
  %380 = load i32, ptr %x257, align 4
  %381 = load i32, ptr %x275, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %379, i32 noundef %380, i32 noundef %381)
  %382 = load i8, ptr %x291, align 1
  %383 = load i32, ptr %x259, align 4
  %384 = load i32, ptr %x277, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %382, i32 noundef %383, i32 noundef %384)
  %385 = load i8, ptr %x293, align 1
  %386 = load i32, ptr %x261, align 4
  %387 = load i32, ptr %x279, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %385, i32 noundef %386, i32 noundef %387)
  %388 = load i8, ptr %x295, align 1
  %389 = load i32, ptr %x263, align 4
  %390 = load i32, ptr %x281, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %388, i32 noundef %389, i32 noundef %390)
  %391 = load i8, ptr %x297, align 1
  %conv56 = zext i8 %391 to i32
  %392 = load i8, ptr %x264, align 1
  %conv57 = zext i8 %392 to i32
  %add58 = add i32 %conv56, %conv57
  store i32 %add58, ptr %x298, align 4
  %393 = load i32, ptr %x4, align 4
  %394 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %394, i64 6
  %395 = load i32, ptr %arrayidx59, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x299, ptr noundef %x300, i32 noundef %393, i32 noundef %395)
  %396 = load i32, ptr %x4, align 4
  %397 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %397, i64 5
  %398 = load i32, ptr %arrayidx60, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x301, ptr noundef %x302, i32 noundef %396, i32 noundef %398)
  %399 = load i32, ptr %x4, align 4
  %400 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %400, i64 4
  %401 = load i32, ptr %arrayidx61, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x303, ptr noundef %x304, i32 noundef %399, i32 noundef %401)
  %402 = load i32, ptr %x4, align 4
  %403 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %403, i64 3
  %404 = load i32, ptr %arrayidx62, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x305, ptr noundef %x306, i32 noundef %402, i32 noundef %404)
  %405 = load i32, ptr %x4, align 4
  %406 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %406, i64 2
  %407 = load i32, ptr %arrayidx63, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x307, ptr noundef %x308, i32 noundef %405, i32 noundef %407)
  %408 = load i32, ptr %x4, align 4
  %409 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %409, i64 1
  %410 = load i32, ptr %arrayidx64, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x309, ptr noundef %x310, i32 noundef %408, i32 noundef %410)
  %411 = load i32, ptr %x4, align 4
  %412 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %412, i64 0
  %413 = load i32, ptr %arrayidx65, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x311, ptr noundef %x312, i32 noundef %411, i32 noundef %413)
  %414 = load i32, ptr %x312, align 4
  %415 = load i32, ptr %x309, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext 0, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x314, align 1
  %417 = load i32, ptr %x310, align 4
  %418 = load i32, ptr %x307, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %416, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x316, align 1
  %420 = load i32, ptr %x308, align 4
  %421 = load i32, ptr %x305, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x318, align 1
  %423 = load i32, ptr %x306, align 4
  %424 = load i32, ptr %x303, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x320, align 1
  %426 = load i32, ptr %x304, align 4
  %427 = load i32, ptr %x301, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %425, i32 noundef %426, i32 noundef %427)
  %428 = load i8, ptr %x322, align 1
  %429 = load i32, ptr %x302, align 4
  %430 = load i32, ptr %x299, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %428, i32 noundef %429, i32 noundef %430)
  %431 = load i8, ptr %x324, align 1
  %conv66 = zext i8 %431 to i32
  %432 = load i32, ptr %x300, align 4
  %add67 = add i32 %conv66, %432
  store i32 %add67, ptr %x325, align 4
  %433 = load i32, ptr %x284, align 4
  %434 = load i32, ptr %x311, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext 0, i32 noundef %433, i32 noundef %434)
  %435 = load i8, ptr %x327, align 1
  %436 = load i32, ptr %x286, align 4
  %437 = load i32, ptr %x313, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %435, i32 noundef %436, i32 noundef %437)
  %438 = load i8, ptr %x329, align 1
  %439 = load i32, ptr %x288, align 4
  %440 = load i32, ptr %x315, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %438, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x331, align 1
  %442 = load i32, ptr %x290, align 4
  %443 = load i32, ptr %x317, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x333, align 1
  %445 = load i32, ptr %x292, align 4
  %446 = load i32, ptr %x319, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x335, align 1
  %448 = load i32, ptr %x294, align 4
  %449 = load i32, ptr %x321, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x337, align 1
  %451 = load i32, ptr %x296, align 4
  %452 = load i32, ptr %x323, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x339, align 1
  %454 = load i32, ptr %x298, align 4
  %455 = load i32, ptr %x325, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i32, ptr %x326, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %456, i32 noundef -1)
  %457 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %457, i32 noundef -1)
  %458 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %458, i32 noundef -1)
  %459 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x348, ptr noundef %x349, i32 noundef %459, i32 noundef -1)
  %460 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x350, ptr noundef %x351, i32 noundef %460, i32 noundef -1)
  %461 = load i32, ptr %x351, align 4
  %462 = load i32, ptr %x348, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext 0, i32 noundef %461, i32 noundef %462)
  %463 = load i8, ptr %x353, align 1
  %464 = load i32, ptr %x349, align 4
  %465 = load i32, ptr %x346, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %463, i32 noundef %464, i32 noundef %465)
  %466 = load i8, ptr %x355, align 1
  %467 = load i32, ptr %x347, align 4
  %468 = load i32, ptr %x344, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %466, i32 noundef %467, i32 noundef %468)
  %469 = load i8, ptr %x357, align 1
  %conv68 = zext i8 %469 to i32
  %470 = load i32, ptr %x345, align 4
  %add69 = add i32 %conv68, %470
  store i32 %add69, ptr %x358, align 4
  %471 = load i32, ptr %x326, align 4
  %472 = load i32, ptr %x342, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext 0, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x360, align 1
  %474 = load i32, ptr %x328, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %473, i32 noundef %474, i32 noundef 0)
  %475 = load i8, ptr %x362, align 1
  %476 = load i32, ptr %x330, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %475, i32 noundef %476, i32 noundef 0)
  %477 = load i8, ptr %x364, align 1
  %478 = load i32, ptr %x332, align 4
  %479 = load i32, ptr %x350, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %477, i32 noundef %478, i32 noundef %479)
  %480 = load i8, ptr %x366, align 1
  %481 = load i32, ptr %x334, align 4
  %482 = load i32, ptr %x352, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %480, i32 noundef %481, i32 noundef %482)
  %483 = load i8, ptr %x368, align 1
  %484 = load i32, ptr %x336, align 4
  %485 = load i32, ptr %x354, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %483, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x370, align 1
  %487 = load i32, ptr %x338, align 4
  %488 = load i32, ptr %x356, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x372, align 1
  %490 = load i32, ptr %x340, align 4
  %491 = load i32, ptr %x358, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %489, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x374, align 1
  %conv70 = zext i8 %492 to i32
  %493 = load i8, ptr %x341, align 1
  %conv71 = zext i8 %493 to i32
  %add72 = add i32 %conv70, %conv71
  store i32 %add72, ptr %x375, align 4
  %494 = load i32, ptr %x5, align 4
  %495 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %495, i64 6
  %496 = load i32, ptr %arrayidx73, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x376, ptr noundef %x377, i32 noundef %494, i32 noundef %496)
  %497 = load i32, ptr %x5, align 4
  %498 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %498, i64 5
  %499 = load i32, ptr %arrayidx74, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x378, ptr noundef %x379, i32 noundef %497, i32 noundef %499)
  %500 = load i32, ptr %x5, align 4
  %501 = load ptr, ptr %arg1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %501, i64 4
  %502 = load i32, ptr %arrayidx75, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x380, ptr noundef %x381, i32 noundef %500, i32 noundef %502)
  %503 = load i32, ptr %x5, align 4
  %504 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %504, i64 3
  %505 = load i32, ptr %arrayidx76, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x382, ptr noundef %x383, i32 noundef %503, i32 noundef %505)
  %506 = load i32, ptr %x5, align 4
  %507 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %507, i64 2
  %508 = load i32, ptr %arrayidx77, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x384, ptr noundef %x385, i32 noundef %506, i32 noundef %508)
  %509 = load i32, ptr %x5, align 4
  %510 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %510, i64 1
  %511 = load i32, ptr %arrayidx78, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x386, ptr noundef %x387, i32 noundef %509, i32 noundef %511)
  %512 = load i32, ptr %x5, align 4
  %513 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %513, i64 0
  %514 = load i32, ptr %arrayidx79, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x388, ptr noundef %x389, i32 noundef %512, i32 noundef %514)
  %515 = load i32, ptr %x389, align 4
  %516 = load i32, ptr %x386, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext 0, i32 noundef %515, i32 noundef %516)
  %517 = load i8, ptr %x391, align 1
  %518 = load i32, ptr %x387, align 4
  %519 = load i32, ptr %x384, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %517, i32 noundef %518, i32 noundef %519)
  %520 = load i8, ptr %x393, align 1
  %521 = load i32, ptr %x385, align 4
  %522 = load i32, ptr %x382, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x394, ptr noundef %x395, i8 noundef zeroext %520, i32 noundef %521, i32 noundef %522)
  %523 = load i8, ptr %x395, align 1
  %524 = load i32, ptr %x383, align 4
  %525 = load i32, ptr %x380, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x396, ptr noundef %x397, i8 noundef zeroext %523, i32 noundef %524, i32 noundef %525)
  %526 = load i8, ptr %x397, align 1
  %527 = load i32, ptr %x381, align 4
  %528 = load i32, ptr %x378, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x398, ptr noundef %x399, i8 noundef zeroext %526, i32 noundef %527, i32 noundef %528)
  %529 = load i8, ptr %x399, align 1
  %530 = load i32, ptr %x379, align 4
  %531 = load i32, ptr %x376, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x400, ptr noundef %x401, i8 noundef zeroext %529, i32 noundef %530, i32 noundef %531)
  %532 = load i8, ptr %x401, align 1
  %conv80 = zext i8 %532 to i32
  %533 = load i32, ptr %x377, align 4
  %add81 = add i32 %conv80, %533
  store i32 %add81, ptr %x402, align 4
  %534 = load i32, ptr %x361, align 4
  %535 = load i32, ptr %x388, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext 0, i32 noundef %534, i32 noundef %535)
  %536 = load i8, ptr %x404, align 1
  %537 = load i32, ptr %x363, align 4
  %538 = load i32, ptr %x390, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %536, i32 noundef %537, i32 noundef %538)
  %539 = load i8, ptr %x406, align 1
  %540 = load i32, ptr %x365, align 4
  %541 = load i32, ptr %x392, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext %539, i32 noundef %540, i32 noundef %541)
  %542 = load i8, ptr %x408, align 1
  %543 = load i32, ptr %x367, align 4
  %544 = load i32, ptr %x394, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %542, i32 noundef %543, i32 noundef %544)
  %545 = load i8, ptr %x410, align 1
  %546 = load i32, ptr %x369, align 4
  %547 = load i32, ptr %x396, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %545, i32 noundef %546, i32 noundef %547)
  %548 = load i8, ptr %x412, align 1
  %549 = load i32, ptr %x371, align 4
  %550 = load i32, ptr %x398, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %548, i32 noundef %549, i32 noundef %550)
  %551 = load i8, ptr %x414, align 1
  %552 = load i32, ptr %x373, align 4
  %553 = load i32, ptr %x400, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %551, i32 noundef %552, i32 noundef %553)
  %554 = load i8, ptr %x416, align 1
  %555 = load i32, ptr %x375, align 4
  %556 = load i32, ptr %x402, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %554, i32 noundef %555, i32 noundef %556)
  %557 = load i32, ptr %x403, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x419, ptr noundef %x420, i32 noundef %557, i32 noundef -1)
  %558 = load i32, ptr %x419, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x421, ptr noundef %x422, i32 noundef %558, i32 noundef -1)
  %559 = load i32, ptr %x419, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %559, i32 noundef -1)
  %560 = load i32, ptr %x419, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %560, i32 noundef -1)
  %561 = load i32, ptr %x419, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x427, ptr noundef %x428, i32 noundef %561, i32 noundef -1)
  %562 = load i32, ptr %x428, align 4
  %563 = load i32, ptr %x425, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext 0, i32 noundef %562, i32 noundef %563)
  %564 = load i8, ptr %x430, align 1
  %565 = load i32, ptr %x426, align 4
  %566 = load i32, ptr %x423, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %564, i32 noundef %565, i32 noundef %566)
  %567 = load i8, ptr %x432, align 1
  %568 = load i32, ptr %x424, align 4
  %569 = load i32, ptr %x421, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %567, i32 noundef %568, i32 noundef %569)
  %570 = load i8, ptr %x434, align 1
  %conv82 = zext i8 %570 to i32
  %571 = load i32, ptr %x422, align 4
  %add83 = add i32 %conv82, %571
  store i32 %add83, ptr %x435, align 4
  %572 = load i32, ptr %x403, align 4
  %573 = load i32, ptr %x419, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext 0, i32 noundef %572, i32 noundef %573)
  %574 = load i8, ptr %x437, align 1
  %575 = load i32, ptr %x405, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %574, i32 noundef %575, i32 noundef 0)
  %576 = load i8, ptr %x439, align 1
  %577 = load i32, ptr %x407, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext %576, i32 noundef %577, i32 noundef 0)
  %578 = load i8, ptr %x441, align 1
  %579 = load i32, ptr %x409, align 4
  %580 = load i32, ptr %x427, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext %578, i32 noundef %579, i32 noundef %580)
  %581 = load i8, ptr %x443, align 1
  %582 = load i32, ptr %x411, align 4
  %583 = load i32, ptr %x429, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %581, i32 noundef %582, i32 noundef %583)
  %584 = load i8, ptr %x445, align 1
  %585 = load i32, ptr %x413, align 4
  %586 = load i32, ptr %x431, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext %584, i32 noundef %585, i32 noundef %586)
  %587 = load i8, ptr %x447, align 1
  %588 = load i32, ptr %x415, align 4
  %589 = load i32, ptr %x433, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %587, i32 noundef %588, i32 noundef %589)
  %590 = load i8, ptr %x449, align 1
  %591 = load i32, ptr %x417, align 4
  %592 = load i32, ptr %x435, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %590, i32 noundef %591, i32 noundef %592)
  %593 = load i8, ptr %x451, align 1
  %conv84 = zext i8 %593 to i32
  %594 = load i8, ptr %x418, align 1
  %conv85 = zext i8 %594 to i32
  %add86 = add i32 %conv84, %conv85
  store i32 %add86, ptr %x452, align 4
  %595 = load i32, ptr %x6, align 4
  %596 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %596, i64 6
  %597 = load i32, ptr %arrayidx87, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x453, ptr noundef %x454, i32 noundef %595, i32 noundef %597)
  %598 = load i32, ptr %x6, align 4
  %599 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %599, i64 5
  %600 = load i32, ptr %arrayidx88, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %598, i32 noundef %600)
  %601 = load i32, ptr %x6, align 4
  %602 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %602, i64 4
  %603 = load i32, ptr %arrayidx89, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x457, ptr noundef %x458, i32 noundef %601, i32 noundef %603)
  %604 = load i32, ptr %x6, align 4
  %605 = load ptr, ptr %arg1.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %605, i64 3
  %606 = load i32, ptr %arrayidx90, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x459, ptr noundef %x460, i32 noundef %604, i32 noundef %606)
  %607 = load i32, ptr %x6, align 4
  %608 = load ptr, ptr %arg1.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %608, i64 2
  %609 = load i32, ptr %arrayidx91, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x461, ptr noundef %x462, i32 noundef %607, i32 noundef %609)
  %610 = load i32, ptr %x6, align 4
  %611 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %611, i64 1
  %612 = load i32, ptr %arrayidx92, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x463, ptr noundef %x464, i32 noundef %610, i32 noundef %612)
  %613 = load i32, ptr %x6, align 4
  %614 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %614, i64 0
  %615 = load i32, ptr %arrayidx93, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x465, ptr noundef %x466, i32 noundef %613, i32 noundef %615)
  %616 = load i32, ptr %x466, align 4
  %617 = load i32, ptr %x463, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext 0, i32 noundef %616, i32 noundef %617)
  %618 = load i8, ptr %x468, align 1
  %619 = load i32, ptr %x464, align 4
  %620 = load i32, ptr %x461, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %618, i32 noundef %619, i32 noundef %620)
  %621 = load i8, ptr %x470, align 1
  %622 = load i32, ptr %x462, align 4
  %623 = load i32, ptr %x459, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %621, i32 noundef %622, i32 noundef %623)
  %624 = load i8, ptr %x472, align 1
  %625 = load i32, ptr %x460, align 4
  %626 = load i32, ptr %x457, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %624, i32 noundef %625, i32 noundef %626)
  %627 = load i8, ptr %x474, align 1
  %628 = load i32, ptr %x458, align 4
  %629 = load i32, ptr %x455, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext %627, i32 noundef %628, i32 noundef %629)
  %630 = load i8, ptr %x476, align 1
  %631 = load i32, ptr %x456, align 4
  %632 = load i32, ptr %x453, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext %630, i32 noundef %631, i32 noundef %632)
  %633 = load i8, ptr %x478, align 1
  %conv94 = zext i8 %633 to i32
  %634 = load i32, ptr %x454, align 4
  %add95 = add i32 %conv94, %634
  store i32 %add95, ptr %x479, align 4
  %635 = load i32, ptr %x438, align 4
  %636 = load i32, ptr %x465, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext 0, i32 noundef %635, i32 noundef %636)
  %637 = load i8, ptr %x481, align 1
  %638 = load i32, ptr %x440, align 4
  %639 = load i32, ptr %x467, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %637, i32 noundef %638, i32 noundef %639)
  %640 = load i8, ptr %x483, align 1
  %641 = load i32, ptr %x442, align 4
  %642 = load i32, ptr %x469, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %640, i32 noundef %641, i32 noundef %642)
  %643 = load i8, ptr %x485, align 1
  %644 = load i32, ptr %x444, align 4
  %645 = load i32, ptr %x471, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %643, i32 noundef %644, i32 noundef %645)
  %646 = load i8, ptr %x487, align 1
  %647 = load i32, ptr %x446, align 4
  %648 = load i32, ptr %x473, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %646, i32 noundef %647, i32 noundef %648)
  %649 = load i8, ptr %x489, align 1
  %650 = load i32, ptr %x448, align 4
  %651 = load i32, ptr %x475, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %649, i32 noundef %650, i32 noundef %651)
  %652 = load i8, ptr %x491, align 1
  %653 = load i32, ptr %x450, align 4
  %654 = load i32, ptr %x477, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %652, i32 noundef %653, i32 noundef %654)
  %655 = load i8, ptr %x493, align 1
  %656 = load i32, ptr %x452, align 4
  %657 = load i32, ptr %x479, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext %655, i32 noundef %656, i32 noundef %657)
  %658 = load i32, ptr %x480, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x496, ptr noundef %x497, i32 noundef %658, i32 noundef -1)
  %659 = load i32, ptr %x496, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x498, ptr noundef %x499, i32 noundef %659, i32 noundef -1)
  %660 = load i32, ptr %x496, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x500, ptr noundef %x501, i32 noundef %660, i32 noundef -1)
  %661 = load i32, ptr %x496, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x502, ptr noundef %x503, i32 noundef %661, i32 noundef -1)
  %662 = load i32, ptr %x496, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x504, ptr noundef %x505, i32 noundef %662, i32 noundef -1)
  %663 = load i32, ptr %x505, align 4
  %664 = load i32, ptr %x502, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x506, ptr noundef %x507, i8 noundef zeroext 0, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x507, align 1
  %666 = load i32, ptr %x503, align 4
  %667 = load i32, ptr %x500, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x508, ptr noundef %x509, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x509, align 1
  %669 = load i32, ptr %x501, align 4
  %670 = load i32, ptr %x498, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x510, ptr noundef %x511, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %670)
  %671 = load i8, ptr %x511, align 1
  %conv96 = zext i8 %671 to i32
  %672 = load i32, ptr %x499, align 4
  %add97 = add i32 %conv96, %672
  store i32 %add97, ptr %x512, align 4
  %673 = load i32, ptr %x480, align 4
  %674 = load i32, ptr %x496, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext 0, i32 noundef %673, i32 noundef %674)
  %675 = load i8, ptr %x514, align 1
  %676 = load i32, ptr %x482, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %675, i32 noundef %676, i32 noundef 0)
  %677 = load i8, ptr %x516, align 1
  %678 = load i32, ptr %x484, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %677, i32 noundef %678, i32 noundef 0)
  %679 = load i8, ptr %x518, align 1
  %680 = load i32, ptr %x486, align 4
  %681 = load i32, ptr %x504, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %679, i32 noundef %680, i32 noundef %681)
  %682 = load i8, ptr %x520, align 1
  %683 = load i32, ptr %x488, align 4
  %684 = load i32, ptr %x506, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %682, i32 noundef %683, i32 noundef %684)
  %685 = load i8, ptr %x522, align 1
  %686 = load i32, ptr %x490, align 4
  %687 = load i32, ptr %x508, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %685, i32 noundef %686, i32 noundef %687)
  %688 = load i8, ptr %x524, align 1
  %689 = load i32, ptr %x492, align 4
  %690 = load i32, ptr %x510, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x525, ptr noundef %x526, i8 noundef zeroext %688, i32 noundef %689, i32 noundef %690)
  %691 = load i8, ptr %x526, align 1
  %692 = load i32, ptr %x494, align 4
  %693 = load i32, ptr %x512, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext %691, i32 noundef %692, i32 noundef %693)
  %694 = load i8, ptr %x528, align 1
  %conv98 = zext i8 %694 to i32
  %695 = load i8, ptr %x495, align 1
  %conv99 = zext i8 %695 to i32
  %add100 = add i32 %conv98, %conv99
  store i32 %add100, ptr %x529, align 4
  %696 = load i32, ptr %x515, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext 0, i32 noundef %696, i32 noundef 1)
  %697 = load i8, ptr %x531, align 1
  %698 = load i32, ptr %x517, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %697, i32 noundef %698, i32 noundef 0)
  %699 = load i8, ptr %x533, align 1
  %700 = load i32, ptr %x519, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %699, i32 noundef %700, i32 noundef 0)
  %701 = load i8, ptr %x535, align 1
  %702 = load i32, ptr %x521, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %701, i32 noundef %702, i32 noundef -1)
  %703 = load i8, ptr %x537, align 1
  %704 = load i32, ptr %x523, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %703, i32 noundef %704, i32 noundef -1)
  %705 = load i8, ptr %x539, align 1
  %706 = load i32, ptr %x525, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext %705, i32 noundef %706, i32 noundef -1)
  %707 = load i8, ptr %x541, align 1
  %708 = load i32, ptr %x527, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %707, i32 noundef %708, i32 noundef -1)
  %709 = load i8, ptr %x543, align 1
  %710 = load i32, ptr %x529, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x544, ptr noundef %x545, i8 noundef zeroext %709, i32 noundef %710, i32 noundef 0)
  %711 = load i8, ptr %x545, align 1
  %712 = load i32, ptr %x530, align 4
  %713 = load i32, ptr %x515, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x546, i8 noundef zeroext %711, i32 noundef %712, i32 noundef %713)
  %714 = load i8, ptr %x545, align 1
  %715 = load i32, ptr %x532, align 4
  %716 = load i32, ptr %x517, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x547, i8 noundef zeroext %714, i32 noundef %715, i32 noundef %716)
  %717 = load i8, ptr %x545, align 1
  %718 = load i32, ptr %x534, align 4
  %719 = load i32, ptr %x519, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x548, i8 noundef zeroext %717, i32 noundef %718, i32 noundef %719)
  %720 = load i8, ptr %x545, align 1
  %721 = load i32, ptr %x536, align 4
  %722 = load i32, ptr %x521, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x549, i8 noundef zeroext %720, i32 noundef %721, i32 noundef %722)
  %723 = load i8, ptr %x545, align 1
  %724 = load i32, ptr %x538, align 4
  %725 = load i32, ptr %x523, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x550, i8 noundef zeroext %723, i32 noundef %724, i32 noundef %725)
  %726 = load i8, ptr %x545, align 1
  %727 = load i32, ptr %x540, align 4
  %728 = load i32, ptr %x525, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x551, i8 noundef zeroext %726, i32 noundef %727, i32 noundef %728)
  %729 = load i8, ptr %x545, align 1
  %730 = load i32, ptr %x542, align 4
  %731 = load i32, ptr %x527, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x552, i8 noundef zeroext %729, i32 noundef %730, i32 noundef %731)
  %732 = load i32, ptr %x546, align 4
  %733 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %733, i64 0
  store i32 %732, ptr %arrayidx101, align 4
  %734 = load i32, ptr %x547, align 4
  %735 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, ptr %735, i64 1
  store i32 %734, ptr %arrayidx102, align 4
  %736 = load i32, ptr %x548, align 4
  %737 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %737, i64 2
  store i32 %736, ptr %arrayidx103, align 4
  %738 = load i32, ptr %x549, align 4
  %739 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %739, i64 3
  store i32 %738, ptr %arrayidx104, align 4
  %740 = load i32, ptr %x550, align 4
  %741 = load ptr, ptr %out1.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %741, i64 4
  store i32 %740, ptr %arrayidx105, align 4
  %742 = load i32, ptr %x551, align 4
  %743 = load ptr, ptr %out1.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %743, i64 5
  store i32 %742, ptr %arrayidx106, align 4
  %744 = load i32, ptr %x552, align 4
  %745 = load ptr, ptr %out1.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, ptr %745, i64 6
  store i32 %744, ptr %arrayidx107, align 4
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
