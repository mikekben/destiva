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
define dso_local void @fiat_sm2_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x22 = alloca i8, align 1
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
  %x34 = alloca i8, align 1
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
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
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
  %x78 = alloca i32, align 4
  %x79 = alloca i32, align 4
  %x80 = alloca i32, align 4
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
  %x83 = alloca i32, align 4
  %x84 = alloca i32, align 4
  %x85 = alloca i32, align 4
  %x86 = alloca i32, align 4
  %x87 = alloca i32, align 4
  %x88 = alloca i32, align 4
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
  %x120 = alloca i32, align 4
  %x121 = alloca i32, align 4
  %x122 = alloca i32, align 4
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
  %x134 = alloca i8, align 1
  %x135 = alloca i32, align 4
  %x136 = alloca i8, align 1
  %x137 = alloca i32, align 4
  %x138 = alloca i8, align 1
  %x139 = alloca i32, align 4
  %x140 = alloca i8, align 1
  %x141 = alloca i32, align 4
  %x142 = alloca i8, align 1
  %x143 = alloca i32, align 4
  %x144 = alloca i8, align 1
  %x145 = alloca i32, align 4
  %x146 = alloca i8, align 1
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
  %x162 = alloca i32, align 4
  %x163 = alloca i32, align 4
  %x164 = alloca i32, align 4
  %x165 = alloca i32, align 4
  %x166 = alloca i32, align 4
  %x167 = alloca i32, align 4
  %x168 = alloca i32, align 4
  %x169 = alloca i32, align 4
  %x170 = alloca i32, align 4
  %x171 = alloca i32, align 4
  %x172 = alloca i32, align 4
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
  %x244 = alloca i8, align 1
  %x245 = alloca i32, align 4
  %x246 = alloca i32, align 4
  %x247 = alloca i32, align 4
  %x248 = alloca i32, align 4
  %x249 = alloca i32, align 4
  %x250 = alloca i32, align 4
  %x251 = alloca i32, align 4
  %x252 = alloca i32, align 4
  %x253 = alloca i32, align 4
  %x254 = alloca i32, align 4
  %x255 = alloca i32, align 4
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
  %x284 = alloca i8, align 1
  %x285 = alloca i32, align 4
  %x286 = alloca i8, align 1
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
  %x384 = alloca i32, align 4
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
  %x468 = alloca i32, align 4
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
  %x492 = alloca i8, align 1
  %x493 = alloca i32, align 4
  %x494 = alloca i8, align 1
  %x495 = alloca i32, align 4
  %x496 = alloca i8, align 1
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
  %x534 = alloca i8, align 1
  %x535 = alloca i32, align 4
  %x536 = alloca i8, align 1
  %x537 = alloca i32, align 4
  %x538 = alloca i8, align 1
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
  %x634 = alloca i32, align 4
  %x635 = alloca i32, align 4
  %x636 = alloca i32, align 4
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
  %x684 = alloca i32, align 4
  %x685 = alloca i32, align 4
  %x686 = alloca i32, align 4
  %x687 = alloca i32, align 4
  %x688 = alloca i32, align 4
  %x689 = alloca i32, align 4
  %x690 = alloca i32, align 4
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
  call void @fiat_sm2_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef 4)
  %17 = load i32, ptr %x8, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %17, i32 noundef 2)
  %18 = load i32, ptr %x8, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %18, i32 noundef 2)
  %19 = load i32, ptr %x8, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %19, i32 noundef -1)
  %20 = load i32, ptr %x8, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %20, i32 noundef 2)
  %21 = load i32, ptr %x8, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %21, i32 noundef 3)
  %22 = load i32, ptr %x20, align 4
  %23 = load i32, ptr %x17, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext 0, i32 noundef %22, i32 noundef %23)
  %24 = load i8, ptr %x22, align 1
  %25 = load i32, ptr %x18, align 4
  %conv = trunc i32 %25 to i8
  %conv8 = zext i8 %conv to i32
  %26 = load i32, ptr %x15, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %24, i32 noundef %conv8, i32 noundef %26)
  %27 = load i8, ptr %x24, align 1
  %28 = load i32, ptr %x16, align 4
  %29 = load i32, ptr %x13, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %27, i32 noundef %28, i32 noundef %29)
  %30 = load i8, ptr %x26, align 1
  %31 = load i32, ptr %x14, align 4
  %conv9 = trunc i32 %31 to i8
  %conv10 = zext i8 %conv9 to i32
  %32 = load i32, ptr %x8, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %30, i32 noundef %conv10, i32 noundef %32)
  %33 = load i8, ptr %x28, align 1
  %34 = load i32, ptr %x8, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %33, i32 noundef 0, i32 noundef %34)
  %35 = load i8, ptr %x30, align 1
  %36 = load i32, ptr %x11, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %35, i32 noundef 0, i32 noundef %36)
  %37 = load i8, ptr %x32, align 1
  %38 = load i32, ptr %x12, align 4
  %conv11 = trunc i32 %38 to i8
  %conv12 = zext i8 %conv11 to i32
  %39 = load i32, ptr %x9, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %37, i32 noundef %conv12, i32 noundef %39)
  %40 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %40, i32 noundef -2)
  %41 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x37, ptr noundef %x38, i32 noundef %41, i32 noundef -1)
  %42 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %42, i32 noundef -1)
  %43 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %43, i32 noundef -1)
  %44 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x43, ptr noundef %x44, i32 noundef %44, i32 noundef -1)
  %45 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x45, ptr noundef %x46, i32 noundef %45, i32 noundef -1)
  %46 = load i32, ptr %x19, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x47, ptr noundef %x48, i32 noundef %46, i32 noundef -1)
  %47 = load i32, ptr %x48, align 4
  %48 = load i32, ptr %x45, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext 0, i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %x44, align 4
  %50 = load i32, ptr %x41, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x52, align 1
  %52 = load i32, ptr %x42, align 4
  %53 = load i32, ptr %x39, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x54, align 1
  %55 = load i32, ptr %x40, align 4
  %56 = load i32, ptr %x37, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x56, align 1
  %58 = load i32, ptr %x38, align 4
  %59 = load i32, ptr %x35, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i32, ptr %x19, align 4
  %61 = load i32, ptr %x47, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext 0, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x60, align 1
  %63 = load i32, ptr %x21, align 4
  %64 = load i32, ptr %x49, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x62, align 1
  %66 = load i32, ptr %x23, align 4
  %67 = load i8, ptr %x50, align 1
  %conv13 = zext i8 %67 to i32
  %68 = load i32, ptr %x46, align 4
  %add = add i32 %conv13, %68
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %add)
  %69 = load i8, ptr %x64, align 1
  %70 = load i32, ptr %x25, align 4
  %71 = load i32, ptr %x43, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %69, i32 noundef %70, i32 noundef %71)
  %72 = load i8, ptr %x66, align 1
  %73 = load i32, ptr %x27, align 4
  %74 = load i32, ptr %x51, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %72, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x68, align 1
  %76 = load i32, ptr %x29, align 4
  %77 = load i32, ptr %x53, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x70, align 1
  %79 = load i32, ptr %x31, align 4
  %80 = load i32, ptr %x55, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x72, align 1
  %82 = load i32, ptr %x33, align 4
  %83 = load i32, ptr %x57, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x74, align 1
  %85 = load i8, ptr %x34, align 1
  %conv14 = zext i8 %85 to i32
  %86 = load i32, ptr %x10, align 4
  %add15 = add i32 %conv14, %86
  %87 = load i8, ptr %x58, align 1
  %conv16 = zext i8 %87 to i32
  %88 = load i32, ptr %x36, align 4
  %add17 = add i32 %conv16, %88
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %84, i32 noundef %add15, i32 noundef %add17)
  %89 = load i32, ptr %x1, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x77, ptr noundef %x78, i32 noundef %89, i32 noundef 4)
  %90 = load i32, ptr %x1, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x79, ptr noundef %x80, i32 noundef %90, i32 noundef 2)
  %91 = load i32, ptr %x1, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x81, ptr noundef %x82, i32 noundef %91, i32 noundef 2)
  %92 = load i32, ptr %x1, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x83, ptr noundef %x84, i32 noundef %92, i32 noundef -1)
  %93 = load i32, ptr %x1, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x85, ptr noundef %x86, i32 noundef %93, i32 noundef 2)
  %94 = load i32, ptr %x1, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x87, ptr noundef %x88, i32 noundef %94, i32 noundef 3)
  %95 = load i32, ptr %x88, align 4
  %96 = load i32, ptr %x85, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext 0, i32 noundef %95, i32 noundef %96)
  %97 = load i8, ptr %x90, align 1
  %98 = load i32, ptr %x86, align 4
  %conv18 = trunc i32 %98 to i8
  %conv19 = zext i8 %conv18 to i32
  %99 = load i32, ptr %x83, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %97, i32 noundef %conv19, i32 noundef %99)
  %100 = load i8, ptr %x92, align 1
  %101 = load i32, ptr %x84, align 4
  %102 = load i32, ptr %x81, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %100, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x94, align 1
  %104 = load i32, ptr %x82, align 4
  %conv20 = trunc i32 %104 to i8
  %conv21 = zext i8 %conv20 to i32
  %105 = load i32, ptr %x1, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %103, i32 noundef %conv21, i32 noundef %105)
  %106 = load i8, ptr %x96, align 1
  %107 = load i32, ptr %x1, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %106, i32 noundef 0, i32 noundef %107)
  %108 = load i8, ptr %x98, align 1
  %109 = load i32, ptr %x79, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %108, i32 noundef 0, i32 noundef %109)
  %110 = load i8, ptr %x100, align 1
  %111 = load i32, ptr %x80, align 4
  %conv22 = trunc i32 %111 to i8
  %conv23 = zext i8 %conv22 to i32
  %112 = load i32, ptr %x77, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %110, i32 noundef %conv23, i32 noundef %112)
  %113 = load i32, ptr %x61, align 4
  %114 = load i32, ptr %x87, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x104, align 1
  %116 = load i32, ptr %x63, align 4
  %117 = load i32, ptr %x89, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %115, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x106, align 1
  %119 = load i32, ptr %x65, align 4
  %120 = load i32, ptr %x91, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %118, i32 noundef %119, i32 noundef %120)
  %121 = load i8, ptr %x108, align 1
  %122 = load i32, ptr %x67, align 4
  %123 = load i32, ptr %x93, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %121, i32 noundef %122, i32 noundef %123)
  %124 = load i8, ptr %x110, align 1
  %125 = load i32, ptr %x69, align 4
  %126 = load i32, ptr %x95, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %124, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x112, align 1
  %128 = load i32, ptr %x71, align 4
  %129 = load i32, ptr %x97, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %127, i32 noundef %128, i32 noundef %129)
  %130 = load i8, ptr %x114, align 1
  %131 = load i32, ptr %x73, align 4
  %132 = load i32, ptr %x99, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %130, i32 noundef %131, i32 noundef %132)
  %133 = load i8, ptr %x116, align 1
  %134 = load i32, ptr %x75, align 4
  %135 = load i32, ptr %x101, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %133, i32 noundef %134, i32 noundef %135)
  %136 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x119, ptr noundef %x120, i32 noundef %136, i32 noundef -2)
  %137 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x121, ptr noundef %x122, i32 noundef %137, i32 noundef -1)
  %138 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x123, ptr noundef %x124, i32 noundef %138, i32 noundef -1)
  %139 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x125, ptr noundef %x126, i32 noundef %139, i32 noundef -1)
  %140 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x127, ptr noundef %x128, i32 noundef %140, i32 noundef -1)
  %141 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x129, ptr noundef %x130, i32 noundef %141, i32 noundef -1)
  %142 = load i32, ptr %x103, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x131, ptr noundef %x132, i32 noundef %142, i32 noundef -1)
  %143 = load i32, ptr %x132, align 4
  %144 = load i32, ptr %x129, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext 0, i32 noundef %143, i32 noundef %144)
  %145 = load i32, ptr %x128, align 4
  %146 = load i32, ptr %x125, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext 0, i32 noundef %145, i32 noundef %146)
  %147 = load i8, ptr %x136, align 1
  %148 = load i32, ptr %x126, align 4
  %149 = load i32, ptr %x123, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %147, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x138, align 1
  %151 = load i32, ptr %x124, align 4
  %152 = load i32, ptr %x121, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x140, align 1
  %154 = load i32, ptr %x122, align 4
  %155 = load i32, ptr %x119, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i32, ptr %x103, align 4
  %157 = load i32, ptr %x131, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext 0, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x144, align 1
  %159 = load i32, ptr %x105, align 4
  %160 = load i32, ptr %x133, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x146, align 1
  %162 = load i32, ptr %x107, align 4
  %163 = load i8, ptr %x134, align 1
  %conv24 = zext i8 %163 to i32
  %164 = load i32, ptr %x130, align 4
  %add25 = add i32 %conv24, %164
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %add25)
  %165 = load i8, ptr %x148, align 1
  %166 = load i32, ptr %x109, align 4
  %167 = load i32, ptr %x127, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167)
  %168 = load i8, ptr %x150, align 1
  %169 = load i32, ptr %x111, align 4
  %170 = load i32, ptr %x135, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %168, i32 noundef %169, i32 noundef %170)
  %171 = load i8, ptr %x152, align 1
  %172 = load i32, ptr %x113, align 4
  %173 = load i32, ptr %x137, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %171, i32 noundef %172, i32 noundef %173)
  %174 = load i8, ptr %x154, align 1
  %175 = load i32, ptr %x115, align 4
  %176 = load i32, ptr %x139, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %174, i32 noundef %175, i32 noundef %176)
  %177 = load i8, ptr %x156, align 1
  %178 = load i32, ptr %x117, align 4
  %179 = load i32, ptr %x141, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %177, i32 noundef %178, i32 noundef %179)
  %180 = load i8, ptr %x158, align 1
  %181 = load i8, ptr %x118, align 1
  %conv26 = zext i8 %181 to i32
  %182 = load i8, ptr %x76, align 1
  %conv27 = zext i8 %182 to i32
  %add28 = add i32 %conv26, %conv27
  %183 = load i8, ptr %x102, align 1
  %conv29 = zext i8 %183 to i32
  %184 = load i32, ptr %x78, align 4
  %add30 = add i32 %conv29, %184
  %add31 = add i32 %add28, %add30
  %185 = load i8, ptr %x142, align 1
  %conv32 = zext i8 %185 to i32
  %186 = load i32, ptr %x120, align 4
  %add33 = add i32 %conv32, %186
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %180, i32 noundef %add31, i32 noundef %add33)
  %187 = load i32, ptr %x2, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x161, ptr noundef %x162, i32 noundef %187, i32 noundef 4)
  %188 = load i32, ptr %x2, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x163, ptr noundef %x164, i32 noundef %188, i32 noundef 2)
  %189 = load i32, ptr %x2, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x165, ptr noundef %x166, i32 noundef %189, i32 noundef 2)
  %190 = load i32, ptr %x2, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x167, ptr noundef %x168, i32 noundef %190, i32 noundef -1)
  %191 = load i32, ptr %x2, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x169, ptr noundef %x170, i32 noundef %191, i32 noundef 2)
  %192 = load i32, ptr %x2, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x171, ptr noundef %x172, i32 noundef %192, i32 noundef 3)
  %193 = load i32, ptr %x172, align 4
  %194 = load i32, ptr %x169, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext 0, i32 noundef %193, i32 noundef %194)
  %195 = load i8, ptr %x174, align 1
  %196 = load i32, ptr %x170, align 4
  %conv34 = trunc i32 %196 to i8
  %conv35 = zext i8 %conv34 to i32
  %197 = load i32, ptr %x167, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %195, i32 noundef %conv35, i32 noundef %197)
  %198 = load i8, ptr %x176, align 1
  %199 = load i32, ptr %x168, align 4
  %200 = load i32, ptr %x165, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200)
  %201 = load i8, ptr %x178, align 1
  %202 = load i32, ptr %x166, align 4
  %conv36 = trunc i32 %202 to i8
  %conv37 = zext i8 %conv36 to i32
  %203 = load i32, ptr %x2, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %201, i32 noundef %conv37, i32 noundef %203)
  %204 = load i8, ptr %x180, align 1
  %205 = load i32, ptr %x2, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %204, i32 noundef 0, i32 noundef %205)
  %206 = load i8, ptr %x182, align 1
  %207 = load i32, ptr %x163, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %206, i32 noundef 0, i32 noundef %207)
  %208 = load i8, ptr %x184, align 1
  %209 = load i32, ptr %x164, align 4
  %conv38 = trunc i32 %209 to i8
  %conv39 = zext i8 %conv38 to i32
  %210 = load i32, ptr %x161, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %208, i32 noundef %conv39, i32 noundef %210)
  %211 = load i32, ptr %x145, align 4
  %212 = load i32, ptr %x171, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext 0, i32 noundef %211, i32 noundef %212)
  %213 = load i8, ptr %x188, align 1
  %214 = load i32, ptr %x147, align 4
  %215 = load i32, ptr %x173, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %213, i32 noundef %214, i32 noundef %215)
  %216 = load i8, ptr %x190, align 1
  %217 = load i32, ptr %x149, align 4
  %218 = load i32, ptr %x175, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %216, i32 noundef %217, i32 noundef %218)
  %219 = load i8, ptr %x192, align 1
  %220 = load i32, ptr %x151, align 4
  %221 = load i32, ptr %x177, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %219, i32 noundef %220, i32 noundef %221)
  %222 = load i8, ptr %x194, align 1
  %223 = load i32, ptr %x153, align 4
  %224 = load i32, ptr %x179, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %222, i32 noundef %223, i32 noundef %224)
  %225 = load i8, ptr %x196, align 1
  %226 = load i32, ptr %x155, align 4
  %227 = load i32, ptr %x181, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %225, i32 noundef %226, i32 noundef %227)
  %228 = load i8, ptr %x198, align 1
  %229 = load i32, ptr %x157, align 4
  %230 = load i32, ptr %x183, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %228, i32 noundef %229, i32 noundef %230)
  %231 = load i8, ptr %x200, align 1
  %232 = load i32, ptr %x159, align 4
  %233 = load i32, ptr %x185, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %231, i32 noundef %232, i32 noundef %233)
  %234 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x203, ptr noundef %x204, i32 noundef %234, i32 noundef -2)
  %235 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x205, ptr noundef %x206, i32 noundef %235, i32 noundef -1)
  %236 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x207, ptr noundef %x208, i32 noundef %236, i32 noundef -1)
  %237 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x209, ptr noundef %x210, i32 noundef %237, i32 noundef -1)
  %238 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x211, ptr noundef %x212, i32 noundef %238, i32 noundef -1)
  %239 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x213, ptr noundef %x214, i32 noundef %239, i32 noundef -1)
  %240 = load i32, ptr %x187, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x215, ptr noundef %x216, i32 noundef %240, i32 noundef -1)
  %241 = load i32, ptr %x216, align 4
  %242 = load i32, ptr %x213, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext 0, i32 noundef %241, i32 noundef %242)
  %243 = load i32, ptr %x212, align 4
  %244 = load i32, ptr %x209, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext 0, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x220, align 1
  %246 = load i32, ptr %x210, align 4
  %247 = load i32, ptr %x207, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x221, ptr noundef %x222, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i8, ptr %x222, align 1
  %249 = load i32, ptr %x208, align 4
  %250 = load i32, ptr %x205, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext %248, i32 noundef %249, i32 noundef %250)
  %251 = load i8, ptr %x224, align 1
  %252 = load i32, ptr %x206, align 4
  %253 = load i32, ptr %x203, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %251, i32 noundef %252, i32 noundef %253)
  %254 = load i32, ptr %x187, align 4
  %255 = load i32, ptr %x215, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext 0, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x228, align 1
  %257 = load i32, ptr %x189, align 4
  %258 = load i32, ptr %x217, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x230, align 1
  %260 = load i32, ptr %x191, align 4
  %261 = load i8, ptr %x218, align 1
  %conv40 = zext i8 %261 to i32
  %262 = load i32, ptr %x214, align 4
  %add41 = add i32 %conv40, %262
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %add41)
  %263 = load i8, ptr %x232, align 1
  %264 = load i32, ptr %x193, align 4
  %265 = load i32, ptr %x211, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext %263, i32 noundef %264, i32 noundef %265)
  %266 = load i8, ptr %x234, align 1
  %267 = load i32, ptr %x195, align 4
  %268 = load i32, ptr %x219, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %266, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x236, align 1
  %270 = load i32, ptr %x197, align 4
  %271 = load i32, ptr %x221, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i8, ptr %x238, align 1
  %273 = load i32, ptr %x199, align 4
  %274 = load i32, ptr %x223, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %272, i32 noundef %273, i32 noundef %274)
  %275 = load i8, ptr %x240, align 1
  %276 = load i32, ptr %x201, align 4
  %277 = load i32, ptr %x225, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %275, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x242, align 1
  %279 = load i8, ptr %x202, align 1
  %conv42 = zext i8 %279 to i32
  %280 = load i8, ptr %x160, align 1
  %conv43 = zext i8 %280 to i32
  %add44 = add i32 %conv42, %conv43
  %281 = load i8, ptr %x186, align 1
  %conv45 = zext i8 %281 to i32
  %282 = load i32, ptr %x162, align 4
  %add46 = add i32 %conv45, %282
  %add47 = add i32 %add44, %add46
  %283 = load i8, ptr %x226, align 1
  %conv48 = zext i8 %283 to i32
  %284 = load i32, ptr %x204, align 4
  %add49 = add i32 %conv48, %284
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %278, i32 noundef %add47, i32 noundef %add49)
  %285 = load i32, ptr %x3, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %285, i32 noundef 4)
  %286 = load i32, ptr %x3, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %286, i32 noundef 2)
  %287 = load i32, ptr %x3, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x249, ptr noundef %x250, i32 noundef %287, i32 noundef 2)
  %288 = load i32, ptr %x3, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x251, ptr noundef %x252, i32 noundef %288, i32 noundef -1)
  %289 = load i32, ptr %x3, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x253, ptr noundef %x254, i32 noundef %289, i32 noundef 2)
  %290 = load i32, ptr %x3, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x255, ptr noundef %x256, i32 noundef %290, i32 noundef 3)
  %291 = load i32, ptr %x256, align 4
  %292 = load i32, ptr %x253, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext 0, i32 noundef %291, i32 noundef %292)
  %293 = load i8, ptr %x258, align 1
  %294 = load i32, ptr %x254, align 4
  %conv50 = trunc i32 %294 to i8
  %conv51 = zext i8 %conv50 to i32
  %295 = load i32, ptr %x251, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %293, i32 noundef %conv51, i32 noundef %295)
  %296 = load i8, ptr %x260, align 1
  %297 = load i32, ptr %x252, align 4
  %298 = load i32, ptr %x249, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %296, i32 noundef %297, i32 noundef %298)
  %299 = load i8, ptr %x262, align 1
  %300 = load i32, ptr %x250, align 4
  %conv52 = trunc i32 %300 to i8
  %conv53 = zext i8 %conv52 to i32
  %301 = load i32, ptr %x3, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %299, i32 noundef %conv53, i32 noundef %301)
  %302 = load i8, ptr %x264, align 1
  %303 = load i32, ptr %x3, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %302, i32 noundef 0, i32 noundef %303)
  %304 = load i8, ptr %x266, align 1
  %305 = load i32, ptr %x247, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %304, i32 noundef 0, i32 noundef %305)
  %306 = load i8, ptr %x268, align 1
  %307 = load i32, ptr %x248, align 4
  %conv54 = trunc i32 %307 to i8
  %conv55 = zext i8 %conv54 to i32
  %308 = load i32, ptr %x245, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %306, i32 noundef %conv55, i32 noundef %308)
  %309 = load i32, ptr %x229, align 4
  %310 = load i32, ptr %x255, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext 0, i32 noundef %309, i32 noundef %310)
  %311 = load i8, ptr %x272, align 1
  %312 = load i32, ptr %x231, align 4
  %313 = load i32, ptr %x257, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %311, i32 noundef %312, i32 noundef %313)
  %314 = load i8, ptr %x274, align 1
  %315 = load i32, ptr %x233, align 4
  %316 = load i32, ptr %x259, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %314, i32 noundef %315, i32 noundef %316)
  %317 = load i8, ptr %x276, align 1
  %318 = load i32, ptr %x235, align 4
  %319 = load i32, ptr %x261, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %317, i32 noundef %318, i32 noundef %319)
  %320 = load i8, ptr %x278, align 1
  %321 = load i32, ptr %x237, align 4
  %322 = load i32, ptr %x263, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %320, i32 noundef %321, i32 noundef %322)
  %323 = load i8, ptr %x280, align 1
  %324 = load i32, ptr %x239, align 4
  %325 = load i32, ptr %x265, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x281, ptr noundef %x282, i8 noundef zeroext %323, i32 noundef %324, i32 noundef %325)
  %326 = load i8, ptr %x282, align 1
  %327 = load i32, ptr %x241, align 4
  %328 = load i32, ptr %x267, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x283, ptr noundef %x284, i8 noundef zeroext %326, i32 noundef %327, i32 noundef %328)
  %329 = load i8, ptr %x284, align 1
  %330 = load i32, ptr %x243, align 4
  %331 = load i32, ptr %x269, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext %329, i32 noundef %330, i32 noundef %331)
  %332 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x287, ptr noundef %x288, i32 noundef %332, i32 noundef -2)
  %333 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x289, ptr noundef %x290, i32 noundef %333, i32 noundef -1)
  %334 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x291, ptr noundef %x292, i32 noundef %334, i32 noundef -1)
  %335 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x293, ptr noundef %x294, i32 noundef %335, i32 noundef -1)
  %336 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x295, ptr noundef %x296, i32 noundef %336, i32 noundef -1)
  %337 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x297, ptr noundef %x298, i32 noundef %337, i32 noundef -1)
  %338 = load i32, ptr %x271, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x299, ptr noundef %x300, i32 noundef %338, i32 noundef -1)
  %339 = load i32, ptr %x300, align 4
  %340 = load i32, ptr %x297, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext 0, i32 noundef %339, i32 noundef %340)
  %341 = load i32, ptr %x296, align 4
  %342 = load i32, ptr %x293, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext 0, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x304, align 1
  %344 = load i32, ptr %x294, align 4
  %345 = load i32, ptr %x291, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x306, align 1
  %347 = load i32, ptr %x292, align 4
  %348 = load i32, ptr %x289, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i8, ptr %x308, align 1
  %350 = load i32, ptr %x290, align 4
  %351 = load i32, ptr %x287, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %349, i32 noundef %350, i32 noundef %351)
  %352 = load i32, ptr %x271, align 4
  %353 = load i32, ptr %x299, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext 0, i32 noundef %352, i32 noundef %353)
  %354 = load i8, ptr %x312, align 1
  %355 = load i32, ptr %x273, align 4
  %356 = load i32, ptr %x301, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %354, i32 noundef %355, i32 noundef %356)
  %357 = load i8, ptr %x314, align 1
  %358 = load i32, ptr %x275, align 4
  %359 = load i8, ptr %x302, align 1
  %conv56 = zext i8 %359 to i32
  %360 = load i32, ptr %x298, align 4
  %add57 = add i32 %conv56, %360
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %357, i32 noundef %358, i32 noundef %add57)
  %361 = load i8, ptr %x316, align 1
  %362 = load i32, ptr %x277, align 4
  %363 = load i32, ptr %x295, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i8, ptr %x318, align 1
  %365 = load i32, ptr %x279, align 4
  %366 = load i32, ptr %x303, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %364, i32 noundef %365, i32 noundef %366)
  %367 = load i8, ptr %x320, align 1
  %368 = load i32, ptr %x281, align 4
  %369 = load i32, ptr %x305, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %367, i32 noundef %368, i32 noundef %369)
  %370 = load i8, ptr %x322, align 1
  %371 = load i32, ptr %x283, align 4
  %372 = load i32, ptr %x307, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %370, i32 noundef %371, i32 noundef %372)
  %373 = load i8, ptr %x324, align 1
  %374 = load i32, ptr %x285, align 4
  %375 = load i32, ptr %x309, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %373, i32 noundef %374, i32 noundef %375)
  %376 = load i8, ptr %x326, align 1
  %377 = load i8, ptr %x286, align 1
  %conv58 = zext i8 %377 to i32
  %378 = load i8, ptr %x244, align 1
  %conv59 = zext i8 %378 to i32
  %add60 = add i32 %conv58, %conv59
  %379 = load i8, ptr %x270, align 1
  %conv61 = zext i8 %379 to i32
  %380 = load i32, ptr %x246, align 4
  %add62 = add i32 %conv61, %380
  %add63 = add i32 %add60, %add62
  %381 = load i8, ptr %x310, align 1
  %conv64 = zext i8 %381 to i32
  %382 = load i32, ptr %x288, align 4
  %add65 = add i32 %conv64, %382
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %376, i32 noundef %add63, i32 noundef %add65)
  %383 = load i32, ptr %x4, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x329, ptr noundef %x330, i32 noundef %383, i32 noundef 4)
  %384 = load i32, ptr %x4, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x331, ptr noundef %x332, i32 noundef %384, i32 noundef 2)
  %385 = load i32, ptr %x4, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x333, ptr noundef %x334, i32 noundef %385, i32 noundef 2)
  %386 = load i32, ptr %x4, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x335, ptr noundef %x336, i32 noundef %386, i32 noundef -1)
  %387 = load i32, ptr %x4, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x337, ptr noundef %x338, i32 noundef %387, i32 noundef 2)
  %388 = load i32, ptr %x4, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x339, ptr noundef %x340, i32 noundef %388, i32 noundef 3)
  %389 = load i32, ptr %x340, align 4
  %390 = load i32, ptr %x337, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext 0, i32 noundef %389, i32 noundef %390)
  %391 = load i8, ptr %x342, align 1
  %392 = load i32, ptr %x338, align 4
  %conv66 = trunc i32 %392 to i8
  %conv67 = zext i8 %conv66 to i32
  %393 = load i32, ptr %x335, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %391, i32 noundef %conv67, i32 noundef %393)
  %394 = load i8, ptr %x344, align 1
  %395 = load i32, ptr %x336, align 4
  %396 = load i32, ptr %x333, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %394, i32 noundef %395, i32 noundef %396)
  %397 = load i8, ptr %x346, align 1
  %398 = load i32, ptr %x334, align 4
  %conv68 = trunc i32 %398 to i8
  %conv69 = zext i8 %conv68 to i32
  %399 = load i32, ptr %x4, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %397, i32 noundef %conv69, i32 noundef %399)
  %400 = load i8, ptr %x348, align 1
  %401 = load i32, ptr %x4, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %400, i32 noundef 0, i32 noundef %401)
  %402 = load i8, ptr %x350, align 1
  %403 = load i32, ptr %x331, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %402, i32 noundef 0, i32 noundef %403)
  %404 = load i8, ptr %x352, align 1
  %405 = load i32, ptr %x332, align 4
  %conv70 = trunc i32 %405 to i8
  %conv71 = zext i8 %conv70 to i32
  %406 = load i32, ptr %x329, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %404, i32 noundef %conv71, i32 noundef %406)
  %407 = load i32, ptr %x313, align 4
  %408 = load i32, ptr %x339, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext 0, i32 noundef %407, i32 noundef %408)
  %409 = load i8, ptr %x356, align 1
  %410 = load i32, ptr %x315, align 4
  %411 = load i32, ptr %x341, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %409, i32 noundef %410, i32 noundef %411)
  %412 = load i8, ptr %x358, align 1
  %413 = load i32, ptr %x317, align 4
  %414 = load i32, ptr %x343, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %412, i32 noundef %413, i32 noundef %414)
  %415 = load i8, ptr %x360, align 1
  %416 = load i32, ptr %x319, align 4
  %417 = load i32, ptr %x345, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %415, i32 noundef %416, i32 noundef %417)
  %418 = load i8, ptr %x362, align 1
  %419 = load i32, ptr %x321, align 4
  %420 = load i32, ptr %x347, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %418, i32 noundef %419, i32 noundef %420)
  %421 = load i8, ptr %x364, align 1
  %422 = load i32, ptr %x323, align 4
  %423 = load i32, ptr %x349, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %421, i32 noundef %422, i32 noundef %423)
  %424 = load i8, ptr %x366, align 1
  %425 = load i32, ptr %x325, align 4
  %426 = load i32, ptr %x351, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %424, i32 noundef %425, i32 noundef %426)
  %427 = load i8, ptr %x368, align 1
  %428 = load i32, ptr %x327, align 4
  %429 = load i32, ptr %x353, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %427, i32 noundef %428, i32 noundef %429)
  %430 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x371, ptr noundef %x372, i32 noundef %430, i32 noundef -2)
  %431 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x373, ptr noundef %x374, i32 noundef %431, i32 noundef -1)
  %432 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x375, ptr noundef %x376, i32 noundef %432, i32 noundef -1)
  %433 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x377, ptr noundef %x378, i32 noundef %433, i32 noundef -1)
  %434 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x379, ptr noundef %x380, i32 noundef %434, i32 noundef -1)
  %435 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x381, ptr noundef %x382, i32 noundef %435, i32 noundef -1)
  %436 = load i32, ptr %x355, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x383, ptr noundef %x384, i32 noundef %436, i32 noundef -1)
  %437 = load i32, ptr %x384, align 4
  %438 = load i32, ptr %x381, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext 0, i32 noundef %437, i32 noundef %438)
  %439 = load i32, ptr %x380, align 4
  %440 = load i32, ptr %x377, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext 0, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x388, align 1
  %442 = load i32, ptr %x378, align 4
  %443 = load i32, ptr %x375, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x390, align 1
  %445 = load i32, ptr %x376, align 4
  %446 = load i32, ptr %x373, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x392, align 1
  %448 = load i32, ptr %x374, align 4
  %449 = load i32, ptr %x371, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i32, ptr %x355, align 4
  %451 = load i32, ptr %x383, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext 0, i32 noundef %450, i32 noundef %451)
  %452 = load i8, ptr %x396, align 1
  %453 = load i32, ptr %x357, align 4
  %454 = load i32, ptr %x385, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %452, i32 noundef %453, i32 noundef %454)
  %455 = load i8, ptr %x398, align 1
  %456 = load i32, ptr %x359, align 4
  %457 = load i8, ptr %x386, align 1
  %conv72 = zext i8 %457 to i32
  %458 = load i32, ptr %x382, align 4
  %add73 = add i32 %conv72, %458
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %455, i32 noundef %456, i32 noundef %add73)
  %459 = load i8, ptr %x400, align 1
  %460 = load i32, ptr %x361, align 4
  %461 = load i32, ptr %x379, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %459, i32 noundef %460, i32 noundef %461)
  %462 = load i8, ptr %x402, align 1
  %463 = load i32, ptr %x363, align 4
  %464 = load i32, ptr %x387, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %462, i32 noundef %463, i32 noundef %464)
  %465 = load i8, ptr %x404, align 1
  %466 = load i32, ptr %x365, align 4
  %467 = load i32, ptr %x389, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %465, i32 noundef %466, i32 noundef %467)
  %468 = load i8, ptr %x406, align 1
  %469 = load i32, ptr %x367, align 4
  %470 = load i32, ptr %x391, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext %468, i32 noundef %469, i32 noundef %470)
  %471 = load i8, ptr %x408, align 1
  %472 = load i32, ptr %x369, align 4
  %473 = load i32, ptr %x393, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %471, i32 noundef %472, i32 noundef %473)
  %474 = load i8, ptr %x410, align 1
  %475 = load i8, ptr %x370, align 1
  %conv74 = zext i8 %475 to i32
  %476 = load i8, ptr %x328, align 1
  %conv75 = zext i8 %476 to i32
  %add76 = add i32 %conv74, %conv75
  %477 = load i8, ptr %x354, align 1
  %conv77 = zext i8 %477 to i32
  %478 = load i32, ptr %x330, align 4
  %add78 = add i32 %conv77, %478
  %add79 = add i32 %add76, %add78
  %479 = load i8, ptr %x394, align 1
  %conv80 = zext i8 %479 to i32
  %480 = load i32, ptr %x372, align 4
  %add81 = add i32 %conv80, %480
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %474, i32 noundef %add79, i32 noundef %add81)
  %481 = load i32, ptr %x5, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x413, ptr noundef %x414, i32 noundef %481, i32 noundef 4)
  %482 = load i32, ptr %x5, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x415, ptr noundef %x416, i32 noundef %482, i32 noundef 2)
  %483 = load i32, ptr %x5, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x417, ptr noundef %x418, i32 noundef %483, i32 noundef 2)
  %484 = load i32, ptr %x5, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x419, ptr noundef %x420, i32 noundef %484, i32 noundef -1)
  %485 = load i32, ptr %x5, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x421, ptr noundef %x422, i32 noundef %485, i32 noundef 2)
  %486 = load i32, ptr %x5, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %486, i32 noundef 3)
  %487 = load i32, ptr %x424, align 4
  %488 = load i32, ptr %x421, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext 0, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x426, align 1
  %490 = load i32, ptr %x422, align 4
  %conv82 = trunc i32 %490 to i8
  %conv83 = zext i8 %conv82 to i32
  %491 = load i32, ptr %x419, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %489, i32 noundef %conv83, i32 noundef %491)
  %492 = load i8, ptr %x428, align 1
  %493 = load i32, ptr %x420, align 4
  %494 = load i32, ptr %x417, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x430, align 1
  %496 = load i32, ptr %x418, align 4
  %conv84 = trunc i32 %496 to i8
  %conv85 = zext i8 %conv84 to i32
  %497 = load i32, ptr %x5, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %495, i32 noundef %conv85, i32 noundef %497)
  %498 = load i8, ptr %x432, align 1
  %499 = load i32, ptr %x5, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %498, i32 noundef 0, i32 noundef %499)
  %500 = load i8, ptr %x434, align 1
  %501 = load i32, ptr %x415, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %500, i32 noundef 0, i32 noundef %501)
  %502 = load i8, ptr %x436, align 1
  %503 = load i32, ptr %x416, align 4
  %conv86 = trunc i32 %503 to i8
  %conv87 = zext i8 %conv86 to i32
  %504 = load i32, ptr %x413, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %502, i32 noundef %conv87, i32 noundef %504)
  %505 = load i32, ptr %x397, align 4
  %506 = load i32, ptr %x423, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext 0, i32 noundef %505, i32 noundef %506)
  %507 = load i8, ptr %x440, align 1
  %508 = load i32, ptr %x399, align 4
  %509 = load i32, ptr %x425, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %507, i32 noundef %508, i32 noundef %509)
  %510 = load i8, ptr %x442, align 1
  %511 = load i32, ptr %x401, align 4
  %512 = load i32, ptr %x427, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %510, i32 noundef %511, i32 noundef %512)
  %513 = load i8, ptr %x444, align 1
  %514 = load i32, ptr %x403, align 4
  %515 = load i32, ptr %x429, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %513, i32 noundef %514, i32 noundef %515)
  %516 = load i8, ptr %x446, align 1
  %517 = load i32, ptr %x405, align 4
  %518 = load i32, ptr %x431, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %516, i32 noundef %517, i32 noundef %518)
  %519 = load i8, ptr %x448, align 1
  %520 = load i32, ptr %x407, align 4
  %521 = load i32, ptr %x433, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %519, i32 noundef %520, i32 noundef %521)
  %522 = load i8, ptr %x450, align 1
  %523 = load i32, ptr %x409, align 4
  %524 = load i32, ptr %x435, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %522, i32 noundef %523, i32 noundef %524)
  %525 = load i8, ptr %x452, align 1
  %526 = load i32, ptr %x411, align 4
  %527 = load i32, ptr %x437, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %525, i32 noundef %526, i32 noundef %527)
  %528 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %528, i32 noundef -2)
  %529 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x457, ptr noundef %x458, i32 noundef %529, i32 noundef -1)
  %530 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x459, ptr noundef %x460, i32 noundef %530, i32 noundef -1)
  %531 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x461, ptr noundef %x462, i32 noundef %531, i32 noundef -1)
  %532 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x463, ptr noundef %x464, i32 noundef %532, i32 noundef -1)
  %533 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x465, ptr noundef %x466, i32 noundef %533, i32 noundef -1)
  %534 = load i32, ptr %x439, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x467, ptr noundef %x468, i32 noundef %534, i32 noundef -1)
  %535 = load i32, ptr %x468, align 4
  %536 = load i32, ptr %x465, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext 0, i32 noundef %535, i32 noundef %536)
  %537 = load i32, ptr %x464, align 4
  %538 = load i32, ptr %x461, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext 0, i32 noundef %537, i32 noundef %538)
  %539 = load i8, ptr %x472, align 1
  %540 = load i32, ptr %x462, align 4
  %541 = load i32, ptr %x459, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %539, i32 noundef %540, i32 noundef %541)
  %542 = load i8, ptr %x474, align 1
  %543 = load i32, ptr %x460, align 4
  %544 = load i32, ptr %x457, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext %542, i32 noundef %543, i32 noundef %544)
  %545 = load i8, ptr %x476, align 1
  %546 = load i32, ptr %x458, align 4
  %547 = load i32, ptr %x455, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext %545, i32 noundef %546, i32 noundef %547)
  %548 = load i32, ptr %x439, align 4
  %549 = load i32, ptr %x467, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x479, ptr noundef %x480, i8 noundef zeroext 0, i32 noundef %548, i32 noundef %549)
  %550 = load i8, ptr %x480, align 1
  %551 = load i32, ptr %x441, align 4
  %552 = load i32, ptr %x469, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x481, ptr noundef %x482, i8 noundef zeroext %550, i32 noundef %551, i32 noundef %552)
  %553 = load i8, ptr %x482, align 1
  %554 = load i32, ptr %x443, align 4
  %555 = load i8, ptr %x470, align 1
  %conv88 = zext i8 %555 to i32
  %556 = load i32, ptr %x466, align 4
  %add89 = add i32 %conv88, %556
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x483, ptr noundef %x484, i8 noundef zeroext %553, i32 noundef %554, i32 noundef %add89)
  %557 = load i8, ptr %x484, align 1
  %558 = load i32, ptr %x445, align 4
  %559 = load i32, ptr %x463, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x485, ptr noundef %x486, i8 noundef zeroext %557, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x486, align 1
  %561 = load i32, ptr %x447, align 4
  %562 = load i32, ptr %x471, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x487, ptr noundef %x488, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x488, align 1
  %564 = load i32, ptr %x449, align 4
  %565 = load i32, ptr %x473, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x490, align 1
  %567 = load i32, ptr %x451, align 4
  %568 = load i32, ptr %x475, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i8, ptr %x492, align 1
  %570 = load i32, ptr %x453, align 4
  %571 = load i32, ptr %x477, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %569, i32 noundef %570, i32 noundef %571)
  %572 = load i8, ptr %x494, align 1
  %573 = load i8, ptr %x454, align 1
  %conv90 = zext i8 %573 to i32
  %574 = load i8, ptr %x412, align 1
  %conv91 = zext i8 %574 to i32
  %add92 = add i32 %conv90, %conv91
  %575 = load i8, ptr %x438, align 1
  %conv93 = zext i8 %575 to i32
  %576 = load i32, ptr %x414, align 4
  %add94 = add i32 %conv93, %576
  %add95 = add i32 %add92, %add94
  %577 = load i8, ptr %x478, align 1
  %conv96 = zext i8 %577 to i32
  %578 = load i32, ptr %x456, align 4
  %add97 = add i32 %conv96, %578
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %572, i32 noundef %add95, i32 noundef %add97)
  %579 = load i32, ptr %x6, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x497, ptr noundef %x498, i32 noundef %579, i32 noundef 4)
  %580 = load i32, ptr %x6, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x499, ptr noundef %x500, i32 noundef %580, i32 noundef 2)
  %581 = load i32, ptr %x6, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x501, ptr noundef %x502, i32 noundef %581, i32 noundef 2)
  %582 = load i32, ptr %x6, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x503, ptr noundef %x504, i32 noundef %582, i32 noundef -1)
  %583 = load i32, ptr %x6, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x505, ptr noundef %x506, i32 noundef %583, i32 noundef 2)
  %584 = load i32, ptr %x6, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x507, ptr noundef %x508, i32 noundef %584, i32 noundef 3)
  %585 = load i32, ptr %x508, align 4
  %586 = load i32, ptr %x505, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext 0, i32 noundef %585, i32 noundef %586)
  %587 = load i8, ptr %x510, align 1
  %588 = load i32, ptr %x506, align 4
  %conv98 = trunc i32 %588 to i8
  %conv99 = zext i8 %conv98 to i32
  %589 = load i32, ptr %x503, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %587, i32 noundef %conv99, i32 noundef %589)
  %590 = load i8, ptr %x512, align 1
  %591 = load i32, ptr %x504, align 4
  %592 = load i32, ptr %x501, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %590, i32 noundef %591, i32 noundef %592)
  %593 = load i8, ptr %x514, align 1
  %594 = load i32, ptr %x502, align 4
  %conv100 = trunc i32 %594 to i8
  %conv101 = zext i8 %conv100 to i32
  %595 = load i32, ptr %x6, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %593, i32 noundef %conv101, i32 noundef %595)
  %596 = load i8, ptr %x516, align 1
  %597 = load i32, ptr %x6, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %596, i32 noundef 0, i32 noundef %597)
  %598 = load i8, ptr %x518, align 1
  %599 = load i32, ptr %x499, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %598, i32 noundef 0, i32 noundef %599)
  %600 = load i8, ptr %x520, align 1
  %601 = load i32, ptr %x500, align 4
  %conv102 = trunc i32 %601 to i8
  %conv103 = zext i8 %conv102 to i32
  %602 = load i32, ptr %x497, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %600, i32 noundef %conv103, i32 noundef %602)
  %603 = load i32, ptr %x481, align 4
  %604 = load i32, ptr %x507, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext 0, i32 noundef %603, i32 noundef %604)
  %605 = load i8, ptr %x524, align 1
  %606 = load i32, ptr %x483, align 4
  %607 = load i32, ptr %x509, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x525, ptr noundef %x526, i8 noundef zeroext %605, i32 noundef %606, i32 noundef %607)
  %608 = load i8, ptr %x526, align 1
  %609 = load i32, ptr %x485, align 4
  %610 = load i32, ptr %x511, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext %608, i32 noundef %609, i32 noundef %610)
  %611 = load i8, ptr %x528, align 1
  %612 = load i32, ptr %x487, align 4
  %613 = load i32, ptr %x513, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x529, ptr noundef %x530, i8 noundef zeroext %611, i32 noundef %612, i32 noundef %613)
  %614 = load i8, ptr %x530, align 1
  %615 = load i32, ptr %x489, align 4
  %616 = load i32, ptr %x515, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext %614, i32 noundef %615, i32 noundef %616)
  %617 = load i8, ptr %x532, align 1
  %618 = load i32, ptr %x491, align 4
  %619 = load i32, ptr %x517, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x533, ptr noundef %x534, i8 noundef zeroext %617, i32 noundef %618, i32 noundef %619)
  %620 = load i8, ptr %x534, align 1
  %621 = load i32, ptr %x493, align 4
  %622 = load i32, ptr %x519, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext %620, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x536, align 1
  %624 = load i32, ptr %x495, align 4
  %625 = load i32, ptr %x521, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x539, ptr noundef %x540, i32 noundef %626, i32 noundef -2)
  %627 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x541, ptr noundef %x542, i32 noundef %627, i32 noundef -1)
  %628 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x543, ptr noundef %x544, i32 noundef %628, i32 noundef -1)
  %629 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x545, ptr noundef %x546, i32 noundef %629, i32 noundef -1)
  %630 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x547, ptr noundef %x548, i32 noundef %630, i32 noundef -1)
  %631 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x549, ptr noundef %x550, i32 noundef %631, i32 noundef -1)
  %632 = load i32, ptr %x523, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x551, ptr noundef %x552, i32 noundef %632, i32 noundef -1)
  %633 = load i32, ptr %x552, align 4
  %634 = load i32, ptr %x549, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext 0, i32 noundef %633, i32 noundef %634)
  %635 = load i32, ptr %x548, align 4
  %636 = load i32, ptr %x545, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext 0, i32 noundef %635, i32 noundef %636)
  %637 = load i8, ptr %x556, align 1
  %638 = load i32, ptr %x546, align 4
  %639 = load i32, ptr %x543, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %637, i32 noundef %638, i32 noundef %639)
  %640 = load i8, ptr %x558, align 1
  %641 = load i32, ptr %x544, align 4
  %642 = load i32, ptr %x541, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %640, i32 noundef %641, i32 noundef %642)
  %643 = load i8, ptr %x560, align 1
  %644 = load i32, ptr %x542, align 4
  %645 = load i32, ptr %x539, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %643, i32 noundef %644, i32 noundef %645)
  %646 = load i32, ptr %x523, align 4
  %647 = load i32, ptr %x551, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext 0, i32 noundef %646, i32 noundef %647)
  %648 = load i8, ptr %x564, align 1
  %649 = load i32, ptr %x525, align 4
  %650 = load i32, ptr %x553, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %648, i32 noundef %649, i32 noundef %650)
  %651 = load i8, ptr %x566, align 1
  %652 = load i32, ptr %x527, align 4
  %653 = load i8, ptr %x554, align 1
  %conv104 = zext i8 %653 to i32
  %654 = load i32, ptr %x550, align 4
  %add105 = add i32 %conv104, %654
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %651, i32 noundef %652, i32 noundef %add105)
  %655 = load i8, ptr %x568, align 1
  %656 = load i32, ptr %x529, align 4
  %657 = load i32, ptr %x547, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x569, ptr noundef %x570, i8 noundef zeroext %655, i32 noundef %656, i32 noundef %657)
  %658 = load i8, ptr %x570, align 1
  %659 = load i32, ptr %x531, align 4
  %660 = load i32, ptr %x555, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x571, ptr noundef %x572, i8 noundef zeroext %658, i32 noundef %659, i32 noundef %660)
  %661 = load i8, ptr %x572, align 1
  %662 = load i32, ptr %x533, align 4
  %663 = load i32, ptr %x557, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x573, ptr noundef %x574, i8 noundef zeroext %661, i32 noundef %662, i32 noundef %663)
  %664 = load i8, ptr %x574, align 1
  %665 = load i32, ptr %x535, align 4
  %666 = load i32, ptr %x559, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x575, ptr noundef %x576, i8 noundef zeroext %664, i32 noundef %665, i32 noundef %666)
  %667 = load i8, ptr %x576, align 1
  %668 = load i32, ptr %x537, align 4
  %669 = load i32, ptr %x561, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext %667, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x578, align 1
  %671 = load i8, ptr %x538, align 1
  %conv106 = zext i8 %671 to i32
  %672 = load i8, ptr %x496, align 1
  %conv107 = zext i8 %672 to i32
  %add108 = add i32 %conv106, %conv107
  %673 = load i8, ptr %x522, align 1
  %conv109 = zext i8 %673 to i32
  %674 = load i32, ptr %x498, align 4
  %add110 = add i32 %conv109, %674
  %add111 = add i32 %add108, %add110
  %675 = load i8, ptr %x562, align 1
  %conv112 = zext i8 %675 to i32
  %676 = load i32, ptr %x540, align 4
  %add113 = add i32 %conv112, %676
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x579, ptr noundef %x580, i8 noundef zeroext %670, i32 noundef %add111, i32 noundef %add113)
  %677 = load i32, ptr %x7, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x581, ptr noundef %x582, i32 noundef %677, i32 noundef 4)
  %678 = load i32, ptr %x7, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x583, ptr noundef %x584, i32 noundef %678, i32 noundef 2)
  %679 = load i32, ptr %x7, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x585, ptr noundef %x586, i32 noundef %679, i32 noundef 2)
  %680 = load i32, ptr %x7, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x587, ptr noundef %x588, i32 noundef %680, i32 noundef -1)
  %681 = load i32, ptr %x7, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x589, ptr noundef %x590, i32 noundef %681, i32 noundef 2)
  %682 = load i32, ptr %x7, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x591, ptr noundef %x592, i32 noundef %682, i32 noundef 3)
  %683 = load i32, ptr %x592, align 4
  %684 = load i32, ptr %x589, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext 0, i32 noundef %683, i32 noundef %684)
  %685 = load i8, ptr %x594, align 1
  %686 = load i32, ptr %x590, align 4
  %conv114 = trunc i32 %686 to i8
  %conv115 = zext i8 %conv114 to i32
  %687 = load i32, ptr %x587, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %685, i32 noundef %conv115, i32 noundef %687)
  %688 = load i8, ptr %x596, align 1
  %689 = load i32, ptr %x588, align 4
  %690 = load i32, ptr %x585, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %688, i32 noundef %689, i32 noundef %690)
  %691 = load i8, ptr %x598, align 1
  %692 = load i32, ptr %x586, align 4
  %conv116 = trunc i32 %692 to i8
  %conv117 = zext i8 %conv116 to i32
  %693 = load i32, ptr %x7, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext %691, i32 noundef %conv117, i32 noundef %693)
  %694 = load i8, ptr %x600, align 1
  %695 = load i32, ptr %x7, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %694, i32 noundef 0, i32 noundef %695)
  %696 = load i8, ptr %x602, align 1
  %697 = load i32, ptr %x583, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x603, ptr noundef %x604, i8 noundef zeroext %696, i32 noundef 0, i32 noundef %697)
  %698 = load i8, ptr %x604, align 1
  %699 = load i32, ptr %x584, align 4
  %conv118 = trunc i32 %699 to i8
  %conv119 = zext i8 %conv118 to i32
  %700 = load i32, ptr %x581, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x605, ptr noundef %x606, i8 noundef zeroext %698, i32 noundef %conv119, i32 noundef %700)
  %701 = load i32, ptr %x565, align 4
  %702 = load i32, ptr %x591, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x607, ptr noundef %x608, i8 noundef zeroext 0, i32 noundef %701, i32 noundef %702)
  %703 = load i8, ptr %x608, align 1
  %704 = load i32, ptr %x567, align 4
  %705 = load i32, ptr %x593, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x609, ptr noundef %x610, i8 noundef zeroext %703, i32 noundef %704, i32 noundef %705)
  %706 = load i8, ptr %x610, align 1
  %707 = load i32, ptr %x569, align 4
  %708 = load i32, ptr %x595, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x611, ptr noundef %x612, i8 noundef zeroext %706, i32 noundef %707, i32 noundef %708)
  %709 = load i8, ptr %x612, align 1
  %710 = load i32, ptr %x571, align 4
  %711 = load i32, ptr %x597, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x613, ptr noundef %x614, i8 noundef zeroext %709, i32 noundef %710, i32 noundef %711)
  %712 = load i8, ptr %x614, align 1
  %713 = load i32, ptr %x573, align 4
  %714 = load i32, ptr %x599, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x615, ptr noundef %x616, i8 noundef zeroext %712, i32 noundef %713, i32 noundef %714)
  %715 = load i8, ptr %x616, align 1
  %716 = load i32, ptr %x575, align 4
  %717 = load i32, ptr %x601, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext %715, i32 noundef %716, i32 noundef %717)
  %718 = load i8, ptr %x618, align 1
  %719 = load i32, ptr %x577, align 4
  %720 = load i32, ptr %x603, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x619, ptr noundef %x620, i8 noundef zeroext %718, i32 noundef %719, i32 noundef %720)
  %721 = load i8, ptr %x620, align 1
  %722 = load i32, ptr %x579, align 4
  %723 = load i32, ptr %x605, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x621, ptr noundef %x622, i8 noundef zeroext %721, i32 noundef %722, i32 noundef %723)
  %724 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x623, ptr noundef %x624, i32 noundef %724, i32 noundef -2)
  %725 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x625, ptr noundef %x626, i32 noundef %725, i32 noundef -1)
  %726 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x627, ptr noundef %x628, i32 noundef %726, i32 noundef -1)
  %727 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x629, ptr noundef %x630, i32 noundef %727, i32 noundef -1)
  %728 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x631, ptr noundef %x632, i32 noundef %728, i32 noundef -1)
  %729 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x633, ptr noundef %x634, i32 noundef %729, i32 noundef -1)
  %730 = load i32, ptr %x607, align 4
  call void @fiat_sm2_mulx_u32(ptr noundef %x635, ptr noundef %x636, i32 noundef %730, i32 noundef -1)
  %731 = load i32, ptr %x636, align 4
  %732 = load i32, ptr %x633, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext 0, i32 noundef %731, i32 noundef %732)
  %733 = load i32, ptr %x632, align 4
  %734 = load i32, ptr %x629, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext 0, i32 noundef %733, i32 noundef %734)
  %735 = load i8, ptr %x640, align 1
  %736 = load i32, ptr %x630, align 4
  %737 = load i32, ptr %x627, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %735, i32 noundef %736, i32 noundef %737)
  %738 = load i8, ptr %x642, align 1
  %739 = load i32, ptr %x628, align 4
  %740 = load i32, ptr %x625, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %738, i32 noundef %739, i32 noundef %740)
  %741 = load i8, ptr %x644, align 1
  %742 = load i32, ptr %x626, align 4
  %743 = load i32, ptr %x623, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %741, i32 noundef %742, i32 noundef %743)
  %744 = load i32, ptr %x607, align 4
  %745 = load i32, ptr %x635, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x647, ptr noundef %x648, i8 noundef zeroext 0, i32 noundef %744, i32 noundef %745)
  %746 = load i8, ptr %x648, align 1
  %747 = load i32, ptr %x609, align 4
  %748 = load i32, ptr %x637, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x649, ptr noundef %x650, i8 noundef zeroext %746, i32 noundef %747, i32 noundef %748)
  %749 = load i8, ptr %x650, align 1
  %750 = load i32, ptr %x611, align 4
  %751 = load i8, ptr %x638, align 1
  %conv120 = zext i8 %751 to i32
  %752 = load i32, ptr %x634, align 4
  %add121 = add i32 %conv120, %752
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x651, ptr noundef %x652, i8 noundef zeroext %749, i32 noundef %750, i32 noundef %add121)
  %753 = load i8, ptr %x652, align 1
  %754 = load i32, ptr %x613, align 4
  %755 = load i32, ptr %x631, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x653, ptr noundef %x654, i8 noundef zeroext %753, i32 noundef %754, i32 noundef %755)
  %756 = load i8, ptr %x654, align 1
  %757 = load i32, ptr %x615, align 4
  %758 = load i32, ptr %x639, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x655, ptr noundef %x656, i8 noundef zeroext %756, i32 noundef %757, i32 noundef %758)
  %759 = load i8, ptr %x656, align 1
  %760 = load i32, ptr %x617, align 4
  %761 = load i32, ptr %x641, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x657, ptr noundef %x658, i8 noundef zeroext %759, i32 noundef %760, i32 noundef %761)
  %762 = load i8, ptr %x658, align 1
  %763 = load i32, ptr %x619, align 4
  %764 = load i32, ptr %x643, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x659, ptr noundef %x660, i8 noundef zeroext %762, i32 noundef %763, i32 noundef %764)
  %765 = load i8, ptr %x660, align 1
  %766 = load i32, ptr %x621, align 4
  %767 = load i32, ptr %x645, align 4
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x661, ptr noundef %x662, i8 noundef zeroext %765, i32 noundef %766, i32 noundef %767)
  %768 = load i8, ptr %x662, align 1
  %769 = load i8, ptr %x622, align 1
  %conv122 = zext i8 %769 to i32
  %770 = load i8, ptr %x580, align 1
  %conv123 = zext i8 %770 to i32
  %add124 = add i32 %conv122, %conv123
  %771 = load i8, ptr %x606, align 1
  %conv125 = zext i8 %771 to i32
  %772 = load i32, ptr %x582, align 4
  %add126 = add i32 %conv125, %772
  %add127 = add i32 %add124, %add126
  %773 = load i8, ptr %x646, align 1
  %conv128 = zext i8 %773 to i32
  %774 = load i32, ptr %x624, align 4
  %add129 = add i32 %conv128, %774
  call void @fiat_sm2_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext %768, i32 noundef %add127, i32 noundef %add129)
  %775 = load i32, ptr %x649, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x665, ptr noundef %x666, i8 noundef zeroext 0, i32 noundef %775, i32 noundef -1)
  %776 = load i8, ptr %x666, align 1
  %777 = load i32, ptr %x651, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext %776, i32 noundef %777, i32 noundef -1)
  %778 = load i8, ptr %x668, align 1
  %779 = load i32, ptr %x653, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x669, ptr noundef %x670, i8 noundef zeroext %778, i32 noundef %779, i32 noundef 0)
  %780 = load i8, ptr %x670, align 1
  %781 = load i32, ptr %x655, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x671, ptr noundef %x672, i8 noundef zeroext %780, i32 noundef %781, i32 noundef -1)
  %782 = load i8, ptr %x672, align 1
  %783 = load i32, ptr %x657, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x673, ptr noundef %x674, i8 noundef zeroext %782, i32 noundef %783, i32 noundef -1)
  %784 = load i8, ptr %x674, align 1
  %785 = load i32, ptr %x659, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x675, ptr noundef %x676, i8 noundef zeroext %784, i32 noundef %785, i32 noundef -1)
  %786 = load i8, ptr %x676, align 1
  %787 = load i32, ptr %x661, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x677, ptr noundef %x678, i8 noundef zeroext %786, i32 noundef %787, i32 noundef -1)
  %788 = load i8, ptr %x678, align 1
  %789 = load i32, ptr %x663, align 4
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x679, ptr noundef %x680, i8 noundef zeroext %788, i32 noundef %789, i32 noundef -2)
  %790 = load i8, ptr %x680, align 1
  %791 = load i8, ptr %x664, align 1
  %conv130 = zext i8 %791 to i32
  call void @fiat_sm2_subborrowx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext %790, i32 noundef %conv130, i32 noundef 0)
  %792 = load i8, ptr %x682, align 1
  %793 = load i32, ptr %x665, align 4
  %794 = load i32, ptr %x649, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x683, i8 noundef zeroext %792, i32 noundef %793, i32 noundef %794)
  %795 = load i8, ptr %x682, align 1
  %796 = load i32, ptr %x667, align 4
  %797 = load i32, ptr %x651, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x684, i8 noundef zeroext %795, i32 noundef %796, i32 noundef %797)
  %798 = load i8, ptr %x682, align 1
  %799 = load i32, ptr %x669, align 4
  %800 = load i32, ptr %x653, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x685, i8 noundef zeroext %798, i32 noundef %799, i32 noundef %800)
  %801 = load i8, ptr %x682, align 1
  %802 = load i32, ptr %x671, align 4
  %803 = load i32, ptr %x655, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x686, i8 noundef zeroext %801, i32 noundef %802, i32 noundef %803)
  %804 = load i8, ptr %x682, align 1
  %805 = load i32, ptr %x673, align 4
  %806 = load i32, ptr %x657, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x687, i8 noundef zeroext %804, i32 noundef %805, i32 noundef %806)
  %807 = load i8, ptr %x682, align 1
  %808 = load i32, ptr %x675, align 4
  %809 = load i32, ptr %x659, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x688, i8 noundef zeroext %807, i32 noundef %808, i32 noundef %809)
  %810 = load i8, ptr %x682, align 1
  %811 = load i32, ptr %x677, align 4
  %812 = load i32, ptr %x661, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x689, i8 noundef zeroext %810, i32 noundef %811, i32 noundef %812)
  %813 = load i8, ptr %x682, align 1
  %814 = load i32, ptr %x679, align 4
  %815 = load i32, ptr %x663, align 4
  call void @fiat_sm2_cmovznz_u32(ptr noundef %x690, i8 noundef zeroext %813, i32 noundef %814, i32 noundef %815)
  %816 = load i32, ptr %x683, align 4
  %817 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %817, i64 0
  store i32 %816, ptr %arrayidx131, align 4
  %818 = load i32, ptr %x684, align 4
  %819 = load ptr, ptr %out1.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %819, i64 1
  store i32 %818, ptr %arrayidx132, align 4
  %820 = load i32, ptr %x685, align 4
  %821 = load ptr, ptr %out1.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %821, i64 2
  store i32 %820, ptr %arrayidx133, align 4
  %822 = load i32, ptr %x686, align 4
  %823 = load ptr, ptr %out1.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %823, i64 3
  store i32 %822, ptr %arrayidx134, align 4
  %824 = load i32, ptr %x687, align 4
  %825 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %825, i64 4
  store i32 %824, ptr %arrayidx135, align 4
  %826 = load i32, ptr %x688, align 4
  %827 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %827, i64 5
  store i32 %826, ptr %arrayidx136, align 4
  %828 = load i32, ptr %x689, align 4
  %829 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i32, ptr %829, i64 6
  store i32 %828, ptr %arrayidx137, align 4
  %830 = load i32, ptr %x690, align 4
  %831 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %831, i64 7
  store i32 %830, ptr %arrayidx138, align 4
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
