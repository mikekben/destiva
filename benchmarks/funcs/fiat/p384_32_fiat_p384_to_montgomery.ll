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
define dso_local void @fiat_p384_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
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
  %x84 = alloca i32, align 4
  %x85 = alloca i32, align 4
  %x86 = alloca i32, align 4
  %x87 = alloca i32, align 4
  %x88 = alloca i32, align 4
  %x89 = alloca i32, align 4
  %x90 = alloca i32, align 4
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
  %x118 = alloca i32, align 4
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
  %x134 = alloca i32, align 4
  %x135 = alloca i32, align 4
  %x136 = alloca i32, align 4
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
  %x180 = alloca i32, align 4
  %x181 = alloca i32, align 4
  %x182 = alloca i32, align 4
  %x183 = alloca i32, align 4
  %x184 = alloca i32, align 4
  %x185 = alloca i32, align 4
  %x186 = alloca i32, align 4
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
  %x276 = alloca i32, align 4
  %x277 = alloca i32, align 4
  %x278 = alloca i32, align 4
  %x279 = alloca i32, align 4
  %x280 = alloca i32, align 4
  %x281 = alloca i32, align 4
  %x282 = alloca i32, align 4
  %x283 = alloca i32, align 4
  %x284 = alloca i8, align 1
  %x285 = alloca i32, align 4
  %x286 = alloca i8, align 1
  %x287 = alloca i32, align 4
  %x288 = alloca i8, align 1
  %x289 = alloca i32, align 4
  %x290 = alloca i8, align 1
  %x291 = alloca i32, align 4
  %x292 = alloca i8, align 1
  %x293 = alloca i32, align 4
  %x294 = alloca i8, align 1
  %x295 = alloca i32, align 4
  %x296 = alloca i8, align 1
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
  %x323 = alloca i32, align 4
  %x324 = alloca i32, align 4
  %x325 = alloca i32, align 4
  %x326 = alloca i32, align 4
  %x327 = alloca i32, align 4
  %x328 = alloca i32, align 4
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
  %x468 = alloca i32, align 4
  %x469 = alloca i32, align 4
  %x470 = alloca i32, align 4
  %x471 = alloca i32, align 4
  %x472 = alloca i32, align 4
  %x473 = alloca i32, align 4
  %x474 = alloca i32, align 4
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
  %x498 = alloca i8, align 1
  %x499 = alloca i32, align 4
  %x500 = alloca i8, align 1
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
  %x519 = alloca i32, align 4
  %x520 = alloca i32, align 4
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
  %x564 = alloca i32, align 4
  %x565 = alloca i32, align 4
  %x566 = alloca i32, align 4
  %x567 = alloca i32, align 4
  %x568 = alloca i32, align 4
  %x569 = alloca i32, align 4
  %x570 = alloca i32, align 4
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
  %x660 = alloca i32, align 4
  %x661 = alloca i32, align 4
  %x662 = alloca i32, align 4
  %x663 = alloca i32, align 4
  %x664 = alloca i32, align 4
  %x665 = alloca i32, align 4
  %x666 = alloca i32, align 4
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
  %x714 = alloca i8, align 1
  %x715 = alloca i32, align 4
  %x716 = alloca i8, align 1
  %x717 = alloca i32, align 4
  %x718 = alloca i8, align 1
  %x719 = alloca i32, align 4
  %x720 = alloca i8, align 1
  %x721 = alloca i32, align 4
  %x722 = alloca i8, align 1
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
  %x756 = alloca i32, align 4
  %x757 = alloca i32, align 4
  %x758 = alloca i32, align 4
  %x759 = alloca i32, align 4
  %x760 = alloca i32, align 4
  %x761 = alloca i32, align 4
  %x762 = alloca i32, align 4
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
  %x780 = alloca i8, align 1
  %x781 = alloca i32, align 4
  %x782 = alloca i8, align 1
  %x783 = alloca i32, align 4
  %x784 = alloca i8, align 1
  %x785 = alloca i32, align 4
  %x786 = alloca i8, align 1
  %x787 = alloca i32, align 4
  %x788 = alloca i8, align 1
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
  %x852 = alloca i32, align 4
  %x853 = alloca i32, align 4
  %x854 = alloca i32, align 4
  %x855 = alloca i32, align 4
  %x856 = alloca i32, align 4
  %x857 = alloca i32, align 4
  %x858 = alloca i32, align 4
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
  %x882 = alloca i8, align 1
  %x883 = alloca i32, align 4
  %x884 = alloca i8, align 1
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
  %x924 = alloca i8, align 1
  %x925 = alloca i32, align 4
  %x926 = alloca i8, align 1
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
  %x948 = alloca i32, align 4
  %x949 = alloca i32, align 4
  %x950 = alloca i32, align 4
  %x951 = alloca i32, align 4
  %x952 = alloca i32, align 4
  %x953 = alloca i32, align 4
  %x954 = alloca i32, align 4
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
  %x1002 = alloca i8, align 1
  %x1003 = alloca i32, align 4
  %x1004 = alloca i8, align 1
  %x1005 = alloca i32, align 4
  %x1006 = alloca i8, align 1
  %x1007 = alloca i32, align 4
  %x1008 = alloca i8, align 1
  %x1009 = alloca i32, align 4
  %x1010 = alloca i8, align 1
  %x1011 = alloca i32, align 4
  %x1012 = alloca i8, align 1
  %x1013 = alloca i32, align 4
  %x1014 = alloca i8, align 1
  %x1015 = alloca i32, align 4
  %x1016 = alloca i8, align 1
  %x1017 = alloca i32, align 4
  %x1018 = alloca i8, align 1
  %x1019 = alloca i32, align 4
  %x1020 = alloca i8, align 1
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
  %x1044 = alloca i32, align 4
  %x1045 = alloca i32, align 4
  %x1046 = alloca i32, align 4
  %x1047 = alloca i32, align 4
  %x1048 = alloca i32, align 4
  %x1049 = alloca i32, align 4
  %x1050 = alloca i32, align 4
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
  %x1094 = alloca i32, align 4
  %x1095 = alloca i32, align 4
  %x1096 = alloca i32, align 4
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
  %x1176 = alloca i32, align 4
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
  call void @fiat_p384_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %24, i32 noundef 2)
  %25 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %25, i32 noundef -2)
  %26 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %26, i32 noundef 2)
  %27 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %27, i32 noundef -2)
  %28 = load i32, ptr %x14, align 4
  %conv = trunc i32 %28 to i8
  %conv12 = zext i8 %conv to i32
  %29 = load i32, ptr %x12, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext 0, i32 noundef %conv12, i32 noundef %29)
  %30 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %30, i32 noundef -1)
  %31 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x25, ptr noundef %x26, i32 noundef %31, i32 noundef -1)
  %32 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x27, ptr noundef %x28, i32 noundef %32, i32 noundef -1)
  %33 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x29, ptr noundef %x30, i32 noundef %33, i32 noundef -1)
  %34 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x31, ptr noundef %x32, i32 noundef %34, i32 noundef -1)
  %35 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x33, ptr noundef %x34, i32 noundef %35, i32 noundef -1)
  %36 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x35, ptr noundef %x36, i32 noundef %36, i32 noundef -1)
  %37 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x37, ptr noundef %x38, i32 noundef %37, i32 noundef -2)
  %38 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %38, i32 noundef -1)
  %39 = load i32, ptr %x12, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %39, i32 noundef -1)
  %40 = load i32, ptr %x40, align 4
  %41 = load i32, ptr %x37, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext 0, i32 noundef %40, i32 noundef %41)
  %42 = load i8, ptr %x44, align 1
  %43 = load i32, ptr %x38, align 4
  %44 = load i32, ptr %x35, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %x46, align 1
  %46 = load i32, ptr %x36, align 4
  %47 = load i32, ptr %x33, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %47)
  %48 = load i8, ptr %x48, align 1
  %49 = load i32, ptr %x34, align 4
  %50 = load i32, ptr %x31, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x50, align 1
  %52 = load i32, ptr %x32, align 4
  %53 = load i32, ptr %x29, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x52, align 1
  %55 = load i32, ptr %x30, align 4
  %56 = load i32, ptr %x27, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x54, align 1
  %58 = load i32, ptr %x28, align 4
  %59 = load i32, ptr %x25, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x56, align 1
  %61 = load i32, ptr %x26, align 4
  %62 = load i32, ptr %x23, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %60, i32 noundef %61, i32 noundef %62)
  %63 = load i32, ptr %x12, align 4
  %64 = load i32, ptr %x41, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext 0, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x60, align 1
  %66 = load i32, ptr %x19, align 4
  %67 = load i32, ptr %x42, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i32, ptr %x17, align 4
  %69 = load i32, ptr %x39, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext 0, i32 noundef %68, i32 noundef %69)
  %70 = load i8, ptr %x64, align 1
  %71 = load i32, ptr %x18, align 4
  %conv13 = trunc i32 %71 to i8
  %conv14 = zext i8 %conv13 to i32
  %72 = load i32, ptr %x43, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %70, i32 noundef %conv14, i32 noundef %72)
  %73 = load i8, ptr %x66, align 1
  %74 = load i32, ptr %x15, align 4
  %75 = load i32, ptr %x45, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %73, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x68, align 1
  %77 = load i32, ptr %x16, align 4
  %78 = load i32, ptr %x47, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %76, i32 noundef %77, i32 noundef %78)
  %79 = load i8, ptr %x70, align 1
  %80 = load i32, ptr %x13, align 4
  %81 = load i32, ptr %x49, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %79, i32 noundef %80, i32 noundef %81)
  %82 = load i8, ptr %x72, align 1
  %83 = load i32, ptr %x21, align 4
  %84 = load i32, ptr %x51, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %82, i32 noundef %83, i32 noundef %84)
  %85 = load i8, ptr %x74, align 1
  %86 = load i8, ptr %x22, align 1
  %conv15 = zext i8 %86 to i32
  %87 = load i32, ptr %x53, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %85, i32 noundef %conv15, i32 noundef %87)
  %88 = load i8, ptr %x76, align 1
  %89 = load i32, ptr %x55, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %88, i32 noundef 0, i32 noundef %89)
  %90 = load i8, ptr %x78, align 1
  %91 = load i32, ptr %x57, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %90, i32 noundef 0, i32 noundef %91)
  %92 = load i8, ptr %x80, align 1
  %93 = load i8, ptr %x58, align 1
  %conv16 = zext i8 %93 to i32
  %94 = load i32, ptr %x24, align 4
  %add = add i32 %conv16, %94
  call void @fiat_p384_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %92, i32 noundef 0, i32 noundef %add)
  %95 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x83, ptr noundef %x84, i32 noundef %95, i32 noundef 2)
  %96 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x85, ptr noundef %x86, i32 noundef %96, i32 noundef -2)
  %97 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x87, ptr noundef %x88, i32 noundef %97, i32 noundef 2)
  %98 = load i32, ptr %x1, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x89, ptr noundef %x90, i32 noundef %98, i32 noundef -2)
  %99 = load i32, ptr %x84, align 4
  %conv17 = trunc i32 %99 to i8
  %conv18 = zext i8 %conv17 to i32
  %100 = load i32, ptr %x1, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext 0, i32 noundef %conv18, i32 noundef %100)
  %101 = load i32, ptr %x61, align 4
  %102 = load i32, ptr %x1, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext 0, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x94, align 1
  %104 = load i8, ptr %x62, align 1
  %conv19 = zext i8 %104 to i32
  %105 = load i32, ptr %x20, align 4
  %add20 = add i32 %conv19, %105
  %106 = load i32, ptr %x89, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %103, i32 noundef %add20, i32 noundef %106)
  %107 = load i8, ptr %x96, align 1
  %108 = load i32, ptr %x63, align 4
  %109 = load i32, ptr %x90, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %107, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x98, align 1
  %111 = load i32, ptr %x65, align 4
  %112 = load i32, ptr %x87, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x100, align 1
  %114 = load i32, ptr %x67, align 4
  %115 = load i32, ptr %x88, align 4
  %conv21 = trunc i32 %115 to i8
  %conv22 = zext i8 %conv21 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %conv22)
  %116 = load i8, ptr %x102, align 1
  %117 = load i32, ptr %x69, align 4
  %118 = load i32, ptr %x85, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %118)
  %119 = load i8, ptr %x104, align 1
  %120 = load i32, ptr %x71, align 4
  %121 = load i32, ptr %x86, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %119, i32 noundef %120, i32 noundef %121)
  %122 = load i8, ptr %x106, align 1
  %123 = load i32, ptr %x73, align 4
  %124 = load i32, ptr %x83, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %122, i32 noundef %123, i32 noundef %124)
  %125 = load i8, ptr %x108, align 1
  %126 = load i32, ptr %x75, align 4
  %127 = load i32, ptr %x91, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %125, i32 noundef %126, i32 noundef %127)
  %128 = load i8, ptr %x110, align 1
  %129 = load i32, ptr %x77, align 4
  %130 = load i8, ptr %x92, align 1
  %conv23 = zext i8 %130 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %128, i32 noundef %129, i32 noundef %conv23)
  %131 = load i8, ptr %x112, align 1
  %132 = load i32, ptr %x79, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %131, i32 noundef %132, i32 noundef 0)
  %133 = load i8, ptr %x114, align 1
  %134 = load i32, ptr %x81, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %133, i32 noundef %134, i32 noundef 0)
  %135 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x117, ptr noundef %x118, i32 noundef %135, i32 noundef -1)
  %136 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x119, ptr noundef %x120, i32 noundef %136, i32 noundef -1)
  %137 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x121, ptr noundef %x122, i32 noundef %137, i32 noundef -1)
  %138 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x123, ptr noundef %x124, i32 noundef %138, i32 noundef -1)
  %139 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x125, ptr noundef %x126, i32 noundef %139, i32 noundef -1)
  %140 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x127, ptr noundef %x128, i32 noundef %140, i32 noundef -1)
  %141 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x129, ptr noundef %x130, i32 noundef %141, i32 noundef -1)
  %142 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x131, ptr noundef %x132, i32 noundef %142, i32 noundef -2)
  %143 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x133, ptr noundef %x134, i32 noundef %143, i32 noundef -1)
  %144 = load i32, ptr %x93, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %144, i32 noundef -1)
  %145 = load i32, ptr %x134, align 4
  %146 = load i32, ptr %x131, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext 0, i32 noundef %145, i32 noundef %146)
  %147 = load i8, ptr %x138, align 1
  %148 = load i32, ptr %x132, align 4
  %149 = load i32, ptr %x129, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %147, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x140, align 1
  %151 = load i32, ptr %x130, align 4
  %152 = load i32, ptr %x127, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x142, align 1
  %154 = load i32, ptr %x128, align 4
  %155 = load i32, ptr %x125, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i8, ptr %x144, align 1
  %157 = load i32, ptr %x126, align 4
  %158 = load i32, ptr %x123, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %156, i32 noundef %157, i32 noundef %158)
  %159 = load i8, ptr %x146, align 1
  %160 = load i32, ptr %x124, align 4
  %161 = load i32, ptr %x121, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %159, i32 noundef %160, i32 noundef %161)
  %162 = load i8, ptr %x148, align 1
  %163 = load i32, ptr %x122, align 4
  %164 = load i32, ptr %x119, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext %162, i32 noundef %163, i32 noundef %164)
  %165 = load i8, ptr %x150, align 1
  %166 = load i32, ptr %x120, align 4
  %167 = load i32, ptr %x117, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167)
  %168 = load i32, ptr %x93, align 4
  %169 = load i32, ptr %x135, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext 0, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x154, align 1
  %171 = load i32, ptr %x95, align 4
  %172 = load i32, ptr %x136, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x156, align 1
  %174 = load i32, ptr %x97, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %173, i32 noundef %174, i32 noundef 0)
  %175 = load i8, ptr %x158, align 1
  %176 = load i32, ptr %x99, align 4
  %177 = load i32, ptr %x133, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i8, ptr %x160, align 1
  %179 = load i32, ptr %x101, align 4
  %180 = load i32, ptr %x137, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180)
  %181 = load i8, ptr %x162, align 1
  %182 = load i32, ptr %x103, align 4
  %183 = load i32, ptr %x139, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %181, i32 noundef %182, i32 noundef %183)
  %184 = load i8, ptr %x164, align 1
  %185 = load i32, ptr %x105, align 4
  %186 = load i32, ptr %x141, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %184, i32 noundef %185, i32 noundef %186)
  %187 = load i8, ptr %x166, align 1
  %188 = load i32, ptr %x107, align 4
  %189 = load i32, ptr %x143, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %187, i32 noundef %188, i32 noundef %189)
  %190 = load i8, ptr %x168, align 1
  %191 = load i32, ptr %x109, align 4
  %192 = load i32, ptr %x145, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %190, i32 noundef %191, i32 noundef %192)
  %193 = load i8, ptr %x170, align 1
  %194 = load i32, ptr %x111, align 4
  %195 = load i32, ptr %x147, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %193, i32 noundef %194, i32 noundef %195)
  %196 = load i8, ptr %x172, align 1
  %197 = load i32, ptr %x113, align 4
  %198 = load i32, ptr %x149, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %196, i32 noundef %197, i32 noundef %198)
  %199 = load i8, ptr %x174, align 1
  %200 = load i32, ptr %x115, align 4
  %201 = load i32, ptr %x151, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %199, i32 noundef %200, i32 noundef %201)
  %202 = load i8, ptr %x176, align 1
  %203 = load i8, ptr %x116, align 1
  %conv24 = zext i8 %203 to i32
  %204 = load i8, ptr %x82, align 1
  %conv25 = zext i8 %204 to i32
  %add26 = add i32 %conv24, %conv25
  %205 = load i8, ptr %x152, align 1
  %conv27 = zext i8 %205 to i32
  %206 = load i32, ptr %x118, align 4
  %add28 = add i32 %conv27, %206
  call void @fiat_p384_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %202, i32 noundef %add26, i32 noundef %add28)
  %207 = load i32, ptr %x2, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x179, ptr noundef %x180, i32 noundef %207, i32 noundef 2)
  %208 = load i32, ptr %x2, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x181, ptr noundef %x182, i32 noundef %208, i32 noundef -2)
  %209 = load i32, ptr %x2, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x183, ptr noundef %x184, i32 noundef %209, i32 noundef 2)
  %210 = load i32, ptr %x2, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x185, ptr noundef %x186, i32 noundef %210, i32 noundef -2)
  %211 = load i32, ptr %x180, align 4
  %conv29 = trunc i32 %211 to i8
  %conv30 = zext i8 %conv29 to i32
  %212 = load i32, ptr %x2, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext 0, i32 noundef %conv30, i32 noundef %212)
  %213 = load i32, ptr %x155, align 4
  %214 = load i32, ptr %x2, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext 0, i32 noundef %213, i32 noundef %214)
  %215 = load i8, ptr %x190, align 1
  %216 = load i32, ptr %x157, align 4
  %217 = load i32, ptr %x185, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %215, i32 noundef %216, i32 noundef %217)
  %218 = load i8, ptr %x192, align 1
  %219 = load i32, ptr %x159, align 4
  %220 = load i32, ptr %x186, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %218, i32 noundef %219, i32 noundef %220)
  %221 = load i8, ptr %x194, align 1
  %222 = load i32, ptr %x161, align 4
  %223 = load i32, ptr %x183, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %221, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x196, align 1
  %225 = load i32, ptr %x163, align 4
  %226 = load i32, ptr %x184, align 4
  %conv31 = trunc i32 %226 to i8
  %conv32 = zext i8 %conv31 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %conv32)
  %227 = load i8, ptr %x198, align 1
  %228 = load i32, ptr %x165, align 4
  %229 = load i32, ptr %x181, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x200, align 1
  %231 = load i32, ptr %x167, align 4
  %232 = load i32, ptr %x182, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x202, align 1
  %234 = load i32, ptr %x169, align 4
  %235 = load i32, ptr %x179, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x204, align 1
  %237 = load i32, ptr %x171, align 4
  %238 = load i32, ptr %x187, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x206, align 1
  %240 = load i32, ptr %x173, align 4
  %241 = load i8, ptr %x188, align 1
  %conv33 = zext i8 %241 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %conv33)
  %242 = load i8, ptr %x208, align 1
  %243 = load i32, ptr %x175, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %242, i32 noundef %243, i32 noundef 0)
  %244 = load i8, ptr %x210, align 1
  %245 = load i32, ptr %x177, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %244, i32 noundef %245, i32 noundef 0)
  %246 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x213, ptr noundef %x214, i32 noundef %246, i32 noundef -1)
  %247 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x215, ptr noundef %x216, i32 noundef %247, i32 noundef -1)
  %248 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x217, ptr noundef %x218, i32 noundef %248, i32 noundef -1)
  %249 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x219, ptr noundef %x220, i32 noundef %249, i32 noundef -1)
  %250 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x221, ptr noundef %x222, i32 noundef %250, i32 noundef -1)
  %251 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x223, ptr noundef %x224, i32 noundef %251, i32 noundef -1)
  %252 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x225, ptr noundef %x226, i32 noundef %252, i32 noundef -1)
  %253 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x227, ptr noundef %x228, i32 noundef %253, i32 noundef -2)
  %254 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x229, ptr noundef %x230, i32 noundef %254, i32 noundef -1)
  %255 = load i32, ptr %x189, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x231, ptr noundef %x232, i32 noundef %255, i32 noundef -1)
  %256 = load i32, ptr %x230, align 4
  %257 = load i32, ptr %x227, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext 0, i32 noundef %256, i32 noundef %257)
  %258 = load i8, ptr %x234, align 1
  %259 = load i32, ptr %x228, align 4
  %260 = load i32, ptr %x225, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %258, i32 noundef %259, i32 noundef %260)
  %261 = load i8, ptr %x236, align 1
  %262 = load i32, ptr %x226, align 4
  %263 = load i32, ptr %x223, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %261, i32 noundef %262, i32 noundef %263)
  %264 = load i8, ptr %x238, align 1
  %265 = load i32, ptr %x224, align 4
  %266 = load i32, ptr %x221, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %264, i32 noundef %265, i32 noundef %266)
  %267 = load i8, ptr %x240, align 1
  %268 = load i32, ptr %x222, align 4
  %269 = load i32, ptr %x219, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %267, i32 noundef %268, i32 noundef %269)
  %270 = load i8, ptr %x242, align 1
  %271 = load i32, ptr %x220, align 4
  %272 = load i32, ptr %x217, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %270, i32 noundef %271, i32 noundef %272)
  %273 = load i8, ptr %x244, align 1
  %274 = load i32, ptr %x218, align 4
  %275 = load i32, ptr %x215, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x245, ptr noundef %x246, i8 noundef zeroext %273, i32 noundef %274, i32 noundef %275)
  %276 = load i8, ptr %x246, align 1
  %277 = load i32, ptr %x216, align 4
  %278 = load i32, ptr %x213, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x247, ptr noundef %x248, i8 noundef zeroext %276, i32 noundef %277, i32 noundef %278)
  %279 = load i32, ptr %x189, align 4
  %280 = load i32, ptr %x231, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext 0, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x250, align 1
  %282 = load i32, ptr %x191, align 4
  %283 = load i32, ptr %x232, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x252, align 1
  %285 = load i32, ptr %x193, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %284, i32 noundef %285, i32 noundef 0)
  %286 = load i8, ptr %x254, align 1
  %287 = load i32, ptr %x195, align 4
  %288 = load i32, ptr %x229, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %286, i32 noundef %287, i32 noundef %288)
  %289 = load i8, ptr %x256, align 1
  %290 = load i32, ptr %x197, align 4
  %291 = load i32, ptr %x233, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x258, align 1
  %293 = load i32, ptr %x199, align 4
  %294 = load i32, ptr %x235, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x260, align 1
  %296 = load i32, ptr %x201, align 4
  %297 = load i32, ptr %x237, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x262, align 1
  %299 = load i32, ptr %x203, align 4
  %300 = load i32, ptr %x239, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x264, align 1
  %302 = load i32, ptr %x205, align 4
  %303 = load i32, ptr %x241, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %301, i32 noundef %302, i32 noundef %303)
  %304 = load i8, ptr %x266, align 1
  %305 = load i32, ptr %x207, align 4
  %306 = load i32, ptr %x243, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %304, i32 noundef %305, i32 noundef %306)
  %307 = load i8, ptr %x268, align 1
  %308 = load i32, ptr %x209, align 4
  %309 = load i32, ptr %x245, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %307, i32 noundef %308, i32 noundef %309)
  %310 = load i8, ptr %x270, align 1
  %311 = load i32, ptr %x211, align 4
  %312 = load i32, ptr %x247, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %310, i32 noundef %311, i32 noundef %312)
  %313 = load i8, ptr %x272, align 1
  %314 = load i8, ptr %x212, align 1
  %conv34 = zext i8 %314 to i32
  %315 = load i8, ptr %x178, align 1
  %conv35 = zext i8 %315 to i32
  %add36 = add i32 %conv34, %conv35
  %316 = load i8, ptr %x248, align 1
  %conv37 = zext i8 %316 to i32
  %317 = load i32, ptr %x214, align 4
  %add38 = add i32 %conv37, %317
  call void @fiat_p384_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %313, i32 noundef %add36, i32 noundef %add38)
  %318 = load i32, ptr %x3, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x275, ptr noundef %x276, i32 noundef %318, i32 noundef 2)
  %319 = load i32, ptr %x3, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x277, ptr noundef %x278, i32 noundef %319, i32 noundef -2)
  %320 = load i32, ptr %x3, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x279, ptr noundef %x280, i32 noundef %320, i32 noundef 2)
  %321 = load i32, ptr %x3, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x281, ptr noundef %x282, i32 noundef %321, i32 noundef -2)
  %322 = load i32, ptr %x276, align 4
  %conv39 = trunc i32 %322 to i8
  %conv40 = zext i8 %conv39 to i32
  %323 = load i32, ptr %x3, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x283, ptr noundef %x284, i8 noundef zeroext 0, i32 noundef %conv40, i32 noundef %323)
  %324 = load i32, ptr %x251, align 4
  %325 = load i32, ptr %x3, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext 0, i32 noundef %324, i32 noundef %325)
  %326 = load i8, ptr %x286, align 1
  %327 = load i32, ptr %x253, align 4
  %328 = load i32, ptr %x281, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext %326, i32 noundef %327, i32 noundef %328)
  %329 = load i8, ptr %x288, align 1
  %330 = load i32, ptr %x255, align 4
  %331 = load i32, ptr %x282, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %329, i32 noundef %330, i32 noundef %331)
  %332 = load i8, ptr %x290, align 1
  %333 = load i32, ptr %x257, align 4
  %334 = load i32, ptr %x279, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %332, i32 noundef %333, i32 noundef %334)
  %335 = load i8, ptr %x292, align 1
  %336 = load i32, ptr %x259, align 4
  %337 = load i32, ptr %x280, align 4
  %conv41 = trunc i32 %337 to i8
  %conv42 = zext i8 %conv41 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %335, i32 noundef %336, i32 noundef %conv42)
  %338 = load i8, ptr %x294, align 1
  %339 = load i32, ptr %x261, align 4
  %340 = load i32, ptr %x277, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %338, i32 noundef %339, i32 noundef %340)
  %341 = load i8, ptr %x296, align 1
  %342 = load i32, ptr %x263, align 4
  %343 = load i32, ptr %x278, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext %341, i32 noundef %342, i32 noundef %343)
  %344 = load i8, ptr %x298, align 1
  %345 = load i32, ptr %x265, align 4
  %346 = load i32, ptr %x275, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %344, i32 noundef %345, i32 noundef %346)
  %347 = load i8, ptr %x300, align 1
  %348 = load i32, ptr %x267, align 4
  %349 = load i32, ptr %x283, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %347, i32 noundef %348, i32 noundef %349)
  %350 = load i8, ptr %x302, align 1
  %351 = load i32, ptr %x269, align 4
  %352 = load i8, ptr %x284, align 1
  %conv43 = zext i8 %352 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %350, i32 noundef %351, i32 noundef %conv43)
  %353 = load i8, ptr %x304, align 1
  %354 = load i32, ptr %x271, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %353, i32 noundef %354, i32 noundef 0)
  %355 = load i8, ptr %x306, align 1
  %356 = load i32, ptr %x273, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %355, i32 noundef %356, i32 noundef 0)
  %357 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x309, ptr noundef %x310, i32 noundef %357, i32 noundef -1)
  %358 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x311, ptr noundef %x312, i32 noundef %358, i32 noundef -1)
  %359 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x313, ptr noundef %x314, i32 noundef %359, i32 noundef -1)
  %360 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x315, ptr noundef %x316, i32 noundef %360, i32 noundef -1)
  %361 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x317, ptr noundef %x318, i32 noundef %361, i32 noundef -1)
  %362 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x319, ptr noundef %x320, i32 noundef %362, i32 noundef -1)
  %363 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x321, ptr noundef %x322, i32 noundef %363, i32 noundef -1)
  %364 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x323, ptr noundef %x324, i32 noundef %364, i32 noundef -2)
  %365 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x325, ptr noundef %x326, i32 noundef %365, i32 noundef -1)
  %366 = load i32, ptr %x285, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x327, ptr noundef %x328, i32 noundef %366, i32 noundef -1)
  %367 = load i32, ptr %x326, align 4
  %368 = load i32, ptr %x323, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext 0, i32 noundef %367, i32 noundef %368)
  %369 = load i8, ptr %x330, align 1
  %370 = load i32, ptr %x324, align 4
  %371 = load i32, ptr %x321, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %369, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x332, align 1
  %373 = load i32, ptr %x322, align 4
  %374 = load i32, ptr %x319, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %372, i32 noundef %373, i32 noundef %374)
  %375 = load i8, ptr %x334, align 1
  %376 = load i32, ptr %x320, align 4
  %377 = load i32, ptr %x317, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %375, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x336, align 1
  %379 = load i32, ptr %x318, align 4
  %380 = load i32, ptr %x315, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x338, align 1
  %382 = load i32, ptr %x316, align 4
  %383 = load i32, ptr %x313, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x340, align 1
  %385 = load i32, ptr %x314, align 4
  %386 = load i32, ptr %x311, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x342, align 1
  %388 = load i32, ptr %x312, align 4
  %389 = load i32, ptr %x309, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i32, ptr %x285, align 4
  %391 = load i32, ptr %x327, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext 0, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x346, align 1
  %393 = load i32, ptr %x287, align 4
  %394 = load i32, ptr %x328, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x348, align 1
  %396 = load i32, ptr %x289, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %395, i32 noundef %396, i32 noundef 0)
  %397 = load i8, ptr %x350, align 1
  %398 = load i32, ptr %x291, align 4
  %399 = load i32, ptr %x325, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %397, i32 noundef %398, i32 noundef %399)
  %400 = load i8, ptr %x352, align 1
  %401 = load i32, ptr %x293, align 4
  %402 = load i32, ptr %x329, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %400, i32 noundef %401, i32 noundef %402)
  %403 = load i8, ptr %x354, align 1
  %404 = load i32, ptr %x295, align 4
  %405 = load i32, ptr %x331, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %403, i32 noundef %404, i32 noundef %405)
  %406 = load i8, ptr %x356, align 1
  %407 = load i32, ptr %x297, align 4
  %408 = load i32, ptr %x333, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %406, i32 noundef %407, i32 noundef %408)
  %409 = load i8, ptr %x358, align 1
  %410 = load i32, ptr %x299, align 4
  %411 = load i32, ptr %x335, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %409, i32 noundef %410, i32 noundef %411)
  %412 = load i8, ptr %x360, align 1
  %413 = load i32, ptr %x301, align 4
  %414 = load i32, ptr %x337, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %412, i32 noundef %413, i32 noundef %414)
  %415 = load i8, ptr %x362, align 1
  %416 = load i32, ptr %x303, align 4
  %417 = load i32, ptr %x339, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %415, i32 noundef %416, i32 noundef %417)
  %418 = load i8, ptr %x364, align 1
  %419 = load i32, ptr %x305, align 4
  %420 = load i32, ptr %x341, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %418, i32 noundef %419, i32 noundef %420)
  %421 = load i8, ptr %x366, align 1
  %422 = load i32, ptr %x307, align 4
  %423 = load i32, ptr %x343, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %421, i32 noundef %422, i32 noundef %423)
  %424 = load i8, ptr %x368, align 1
  %425 = load i8, ptr %x308, align 1
  %conv44 = zext i8 %425 to i32
  %426 = load i8, ptr %x274, align 1
  %conv45 = zext i8 %426 to i32
  %add46 = add i32 %conv44, %conv45
  %427 = load i8, ptr %x344, align 1
  %conv47 = zext i8 %427 to i32
  %428 = load i32, ptr %x310, align 4
  %add48 = add i32 %conv47, %428
  call void @fiat_p384_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %424, i32 noundef %add46, i32 noundef %add48)
  %429 = load i32, ptr %x4, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x371, ptr noundef %x372, i32 noundef %429, i32 noundef 2)
  %430 = load i32, ptr %x4, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x373, ptr noundef %x374, i32 noundef %430, i32 noundef -2)
  %431 = load i32, ptr %x4, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x375, ptr noundef %x376, i32 noundef %431, i32 noundef 2)
  %432 = load i32, ptr %x4, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x377, ptr noundef %x378, i32 noundef %432, i32 noundef -2)
  %433 = load i32, ptr %x372, align 4
  %conv49 = trunc i32 %433 to i8
  %conv50 = zext i8 %conv49 to i32
  %434 = load i32, ptr %x4, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext 0, i32 noundef %conv50, i32 noundef %434)
  %435 = load i32, ptr %x347, align 4
  %436 = load i32, ptr %x4, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext 0, i32 noundef %435, i32 noundef %436)
  %437 = load i8, ptr %x382, align 1
  %438 = load i32, ptr %x349, align 4
  %439 = load i32, ptr %x377, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %437, i32 noundef %438, i32 noundef %439)
  %440 = load i8, ptr %x384, align 1
  %441 = load i32, ptr %x351, align 4
  %442 = load i32, ptr %x378, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %440, i32 noundef %441, i32 noundef %442)
  %443 = load i8, ptr %x386, align 1
  %444 = load i32, ptr %x353, align 4
  %445 = load i32, ptr %x375, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %443, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x388, align 1
  %447 = load i32, ptr %x355, align 4
  %448 = load i32, ptr %x376, align 4
  %conv51 = trunc i32 %448 to i8
  %conv52 = zext i8 %conv51 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %conv52)
  %449 = load i8, ptr %x390, align 1
  %450 = load i32, ptr %x357, align 4
  %451 = load i32, ptr %x373, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %449, i32 noundef %450, i32 noundef %451)
  %452 = load i8, ptr %x392, align 1
  %453 = load i32, ptr %x359, align 4
  %454 = load i32, ptr %x374, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %452, i32 noundef %453, i32 noundef %454)
  %455 = load i8, ptr %x394, align 1
  %456 = load i32, ptr %x361, align 4
  %457 = load i32, ptr %x371, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %455, i32 noundef %456, i32 noundef %457)
  %458 = load i8, ptr %x396, align 1
  %459 = load i32, ptr %x363, align 4
  %460 = load i32, ptr %x379, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %458, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x398, align 1
  %462 = load i32, ptr %x365, align 4
  %463 = load i8, ptr %x380, align 1
  %conv53 = zext i8 %463 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %conv53)
  %464 = load i8, ptr %x400, align 1
  %465 = load i32, ptr %x367, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %464, i32 noundef %465, i32 noundef 0)
  %466 = load i8, ptr %x402, align 1
  %467 = load i32, ptr %x369, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %466, i32 noundef %467, i32 noundef 0)
  %468 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x405, ptr noundef %x406, i32 noundef %468, i32 noundef -1)
  %469 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x407, ptr noundef %x408, i32 noundef %469, i32 noundef -1)
  %470 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x409, ptr noundef %x410, i32 noundef %470, i32 noundef -1)
  %471 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x411, ptr noundef %x412, i32 noundef %471, i32 noundef -1)
  %472 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x413, ptr noundef %x414, i32 noundef %472, i32 noundef -1)
  %473 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x415, ptr noundef %x416, i32 noundef %473, i32 noundef -1)
  %474 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x417, ptr noundef %x418, i32 noundef %474, i32 noundef -1)
  %475 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x419, ptr noundef %x420, i32 noundef %475, i32 noundef -2)
  %476 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x421, ptr noundef %x422, i32 noundef %476, i32 noundef -1)
  %477 = load i32, ptr %x381, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %477, i32 noundef -1)
  %478 = load i32, ptr %x422, align 4
  %479 = load i32, ptr %x419, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext 0, i32 noundef %478, i32 noundef %479)
  %480 = load i8, ptr %x426, align 1
  %481 = load i32, ptr %x420, align 4
  %482 = load i32, ptr %x417, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %480, i32 noundef %481, i32 noundef %482)
  %483 = load i8, ptr %x428, align 1
  %484 = load i32, ptr %x418, align 4
  %485 = load i32, ptr %x415, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %483, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x430, align 1
  %487 = load i32, ptr %x416, align 4
  %488 = load i32, ptr %x413, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x432, align 1
  %490 = load i32, ptr %x414, align 4
  %491 = load i32, ptr %x411, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %489, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x434, align 1
  %493 = load i32, ptr %x412, align 4
  %494 = load i32, ptr %x409, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x436, align 1
  %496 = load i32, ptr %x410, align 4
  %497 = load i32, ptr %x407, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %495, i32 noundef %496, i32 noundef %497)
  %498 = load i8, ptr %x438, align 1
  %499 = load i32, ptr %x408, align 4
  %500 = load i32, ptr %x405, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %498, i32 noundef %499, i32 noundef %500)
  %501 = load i32, ptr %x381, align 4
  %502 = load i32, ptr %x423, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext 0, i32 noundef %501, i32 noundef %502)
  %503 = load i8, ptr %x442, align 1
  %504 = load i32, ptr %x383, align 4
  %505 = load i32, ptr %x424, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %503, i32 noundef %504, i32 noundef %505)
  %506 = load i8, ptr %x444, align 1
  %507 = load i32, ptr %x385, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %506, i32 noundef %507, i32 noundef 0)
  %508 = load i8, ptr %x446, align 1
  %509 = load i32, ptr %x387, align 4
  %510 = load i32, ptr %x421, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %508, i32 noundef %509, i32 noundef %510)
  %511 = load i8, ptr %x448, align 1
  %512 = load i32, ptr %x389, align 4
  %513 = load i32, ptr %x425, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %511, i32 noundef %512, i32 noundef %513)
  %514 = load i8, ptr %x450, align 1
  %515 = load i32, ptr %x391, align 4
  %516 = load i32, ptr %x427, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %514, i32 noundef %515, i32 noundef %516)
  %517 = load i8, ptr %x452, align 1
  %518 = load i32, ptr %x393, align 4
  %519 = load i32, ptr %x429, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %517, i32 noundef %518, i32 noundef %519)
  %520 = load i8, ptr %x454, align 1
  %521 = load i32, ptr %x395, align 4
  %522 = load i32, ptr %x431, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext %520, i32 noundef %521, i32 noundef %522)
  %523 = load i8, ptr %x456, align 1
  %524 = load i32, ptr %x397, align 4
  %525 = load i32, ptr %x433, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext %523, i32 noundef %524, i32 noundef %525)
  %526 = load i8, ptr %x458, align 1
  %527 = load i32, ptr %x399, align 4
  %528 = load i32, ptr %x435, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %526, i32 noundef %527, i32 noundef %528)
  %529 = load i8, ptr %x460, align 1
  %530 = load i32, ptr %x401, align 4
  %531 = load i32, ptr %x437, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %529, i32 noundef %530, i32 noundef %531)
  %532 = load i8, ptr %x462, align 1
  %533 = load i32, ptr %x403, align 4
  %534 = load i32, ptr %x439, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %532, i32 noundef %533, i32 noundef %534)
  %535 = load i8, ptr %x464, align 1
  %536 = load i8, ptr %x404, align 1
  %conv54 = zext i8 %536 to i32
  %537 = load i8, ptr %x370, align 1
  %conv55 = zext i8 %537 to i32
  %add56 = add i32 %conv54, %conv55
  %538 = load i8, ptr %x440, align 1
  %conv57 = zext i8 %538 to i32
  %539 = load i32, ptr %x406, align 4
  %add58 = add i32 %conv57, %539
  call void @fiat_p384_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %535, i32 noundef %add56, i32 noundef %add58)
  %540 = load i32, ptr %x5, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x467, ptr noundef %x468, i32 noundef %540, i32 noundef 2)
  %541 = load i32, ptr %x5, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x469, ptr noundef %x470, i32 noundef %541, i32 noundef -2)
  %542 = load i32, ptr %x5, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x471, ptr noundef %x472, i32 noundef %542, i32 noundef 2)
  %543 = load i32, ptr %x5, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x473, ptr noundef %x474, i32 noundef %543, i32 noundef -2)
  %544 = load i32, ptr %x468, align 4
  %conv59 = trunc i32 %544 to i8
  %conv60 = zext i8 %conv59 to i32
  %545 = load i32, ptr %x5, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x475, ptr noundef %x476, i8 noundef zeroext 0, i32 noundef %conv60, i32 noundef %545)
  %546 = load i32, ptr %x443, align 4
  %547 = load i32, ptr %x5, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x477, ptr noundef %x478, i8 noundef zeroext 0, i32 noundef %546, i32 noundef %547)
  %548 = load i8, ptr %x478, align 1
  %549 = load i32, ptr %x445, align 4
  %550 = load i32, ptr %x473, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x479, ptr noundef %x480, i8 noundef zeroext %548, i32 noundef %549, i32 noundef %550)
  %551 = load i8, ptr %x480, align 1
  %552 = load i32, ptr %x447, align 4
  %553 = load i32, ptr %x474, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x481, ptr noundef %x482, i8 noundef zeroext %551, i32 noundef %552, i32 noundef %553)
  %554 = load i8, ptr %x482, align 1
  %555 = load i32, ptr %x449, align 4
  %556 = load i32, ptr %x471, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x483, ptr noundef %x484, i8 noundef zeroext %554, i32 noundef %555, i32 noundef %556)
  %557 = load i8, ptr %x484, align 1
  %558 = load i32, ptr %x451, align 4
  %559 = load i32, ptr %x472, align 4
  %conv61 = trunc i32 %559 to i8
  %conv62 = zext i8 %conv61 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x485, ptr noundef %x486, i8 noundef zeroext %557, i32 noundef %558, i32 noundef %conv62)
  %560 = load i8, ptr %x486, align 1
  %561 = load i32, ptr %x453, align 4
  %562 = load i32, ptr %x469, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x487, ptr noundef %x488, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x488, align 1
  %564 = load i32, ptr %x455, align 4
  %565 = load i32, ptr %x470, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x490, align 1
  %567 = load i32, ptr %x457, align 4
  %568 = load i32, ptr %x467, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i8, ptr %x492, align 1
  %570 = load i32, ptr %x459, align 4
  %571 = load i32, ptr %x475, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %569, i32 noundef %570, i32 noundef %571)
  %572 = load i8, ptr %x494, align 1
  %573 = load i32, ptr %x461, align 4
  %574 = load i8, ptr %x476, align 1
  %conv63 = zext i8 %574 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %572, i32 noundef %573, i32 noundef %conv63)
  %575 = load i8, ptr %x496, align 1
  %576 = load i32, ptr %x463, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext %575, i32 noundef %576, i32 noundef 0)
  %577 = load i8, ptr %x498, align 1
  %578 = load i32, ptr %x465, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %577, i32 noundef %578, i32 noundef 0)
  %579 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x501, ptr noundef %x502, i32 noundef %579, i32 noundef -1)
  %580 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x503, ptr noundef %x504, i32 noundef %580, i32 noundef -1)
  %581 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x505, ptr noundef %x506, i32 noundef %581, i32 noundef -1)
  %582 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x507, ptr noundef %x508, i32 noundef %582, i32 noundef -1)
  %583 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x509, ptr noundef %x510, i32 noundef %583, i32 noundef -1)
  %584 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x511, ptr noundef %x512, i32 noundef %584, i32 noundef -1)
  %585 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x513, ptr noundef %x514, i32 noundef %585, i32 noundef -1)
  %586 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x515, ptr noundef %x516, i32 noundef %586, i32 noundef -2)
  %587 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x517, ptr noundef %x518, i32 noundef %587, i32 noundef -1)
  %588 = load i32, ptr %x477, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x519, ptr noundef %x520, i32 noundef %588, i32 noundef -1)
  %589 = load i32, ptr %x518, align 4
  %590 = load i32, ptr %x515, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext 0, i32 noundef %589, i32 noundef %590)
  %591 = load i8, ptr %x522, align 1
  %592 = load i32, ptr %x516, align 4
  %593 = load i32, ptr %x513, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %591, i32 noundef %592, i32 noundef %593)
  %594 = load i8, ptr %x524, align 1
  %595 = load i32, ptr %x514, align 4
  %596 = load i32, ptr %x511, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x525, ptr noundef %x526, i8 noundef zeroext %594, i32 noundef %595, i32 noundef %596)
  %597 = load i8, ptr %x526, align 1
  %598 = load i32, ptr %x512, align 4
  %599 = load i32, ptr %x509, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext %597, i32 noundef %598, i32 noundef %599)
  %600 = load i8, ptr %x528, align 1
  %601 = load i32, ptr %x510, align 4
  %602 = load i32, ptr %x507, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x529, ptr noundef %x530, i8 noundef zeroext %600, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x530, align 1
  %604 = load i32, ptr %x508, align 4
  %605 = load i32, ptr %x505, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext %603, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x532, align 1
  %607 = load i32, ptr %x506, align 4
  %608 = load i32, ptr %x503, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x533, ptr noundef %x534, i8 noundef zeroext %606, i32 noundef %607, i32 noundef %608)
  %609 = load i8, ptr %x534, align 1
  %610 = load i32, ptr %x504, align 4
  %611 = load i32, ptr %x501, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext %609, i32 noundef %610, i32 noundef %611)
  %612 = load i32, ptr %x477, align 4
  %613 = load i32, ptr %x519, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext 0, i32 noundef %612, i32 noundef %613)
  %614 = load i8, ptr %x538, align 1
  %615 = load i32, ptr %x479, align 4
  %616 = load i32, ptr %x520, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext %614, i32 noundef %615, i32 noundef %616)
  %617 = load i8, ptr %x540, align 1
  %618 = load i32, ptr %x481, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %617, i32 noundef %618, i32 noundef 0)
  %619 = load i8, ptr %x542, align 1
  %620 = load i32, ptr %x483, align 4
  %621 = load i32, ptr %x517, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %619, i32 noundef %620, i32 noundef %621)
  %622 = load i8, ptr %x544, align 1
  %623 = load i32, ptr %x485, align 4
  %624 = load i32, ptr %x521, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %622, i32 noundef %623, i32 noundef %624)
  %625 = load i8, ptr %x546, align 1
  %626 = load i32, ptr %x487, align 4
  %627 = load i32, ptr %x523, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %625, i32 noundef %626, i32 noundef %627)
  %628 = load i8, ptr %x548, align 1
  %629 = load i32, ptr %x489, align 4
  %630 = load i32, ptr %x525, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %628, i32 noundef %629, i32 noundef %630)
  %631 = load i8, ptr %x550, align 1
  %632 = load i32, ptr %x491, align 4
  %633 = load i32, ptr %x527, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext %631, i32 noundef %632, i32 noundef %633)
  %634 = load i8, ptr %x552, align 1
  %635 = load i32, ptr %x493, align 4
  %636 = load i32, ptr %x529, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext %634, i32 noundef %635, i32 noundef %636)
  %637 = load i8, ptr %x554, align 1
  %638 = load i32, ptr %x495, align 4
  %639 = load i32, ptr %x531, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %637, i32 noundef %638, i32 noundef %639)
  %640 = load i8, ptr %x556, align 1
  %641 = load i32, ptr %x497, align 4
  %642 = load i32, ptr %x533, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %640, i32 noundef %641, i32 noundef %642)
  %643 = load i8, ptr %x558, align 1
  %644 = load i32, ptr %x499, align 4
  %645 = load i32, ptr %x535, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %643, i32 noundef %644, i32 noundef %645)
  %646 = load i8, ptr %x560, align 1
  %647 = load i8, ptr %x500, align 1
  %conv64 = zext i8 %647 to i32
  %648 = load i8, ptr %x466, align 1
  %conv65 = zext i8 %648 to i32
  %add66 = add i32 %conv64, %conv65
  %649 = load i8, ptr %x536, align 1
  %conv67 = zext i8 %649 to i32
  %650 = load i32, ptr %x502, align 4
  %add68 = add i32 %conv67, %650
  call void @fiat_p384_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %646, i32 noundef %add66, i32 noundef %add68)
  %651 = load i32, ptr %x6, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x563, ptr noundef %x564, i32 noundef %651, i32 noundef 2)
  %652 = load i32, ptr %x6, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x565, ptr noundef %x566, i32 noundef %652, i32 noundef -2)
  %653 = load i32, ptr %x6, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x567, ptr noundef %x568, i32 noundef %653, i32 noundef 2)
  %654 = load i32, ptr %x6, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x569, ptr noundef %x570, i32 noundef %654, i32 noundef -2)
  %655 = load i32, ptr %x564, align 4
  %conv69 = trunc i32 %655 to i8
  %conv70 = zext i8 %conv69 to i32
  %656 = load i32, ptr %x6, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x571, ptr noundef %x572, i8 noundef zeroext 0, i32 noundef %conv70, i32 noundef %656)
  %657 = load i32, ptr %x539, align 4
  %658 = load i32, ptr %x6, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x573, ptr noundef %x574, i8 noundef zeroext 0, i32 noundef %657, i32 noundef %658)
  %659 = load i8, ptr %x574, align 1
  %660 = load i32, ptr %x541, align 4
  %661 = load i32, ptr %x569, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x575, ptr noundef %x576, i8 noundef zeroext %659, i32 noundef %660, i32 noundef %661)
  %662 = load i8, ptr %x576, align 1
  %663 = load i32, ptr %x543, align 4
  %664 = load i32, ptr %x570, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext %662, i32 noundef %663, i32 noundef %664)
  %665 = load i8, ptr %x578, align 1
  %666 = load i32, ptr %x545, align 4
  %667 = load i32, ptr %x567, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x579, ptr noundef %x580, i8 noundef zeroext %665, i32 noundef %666, i32 noundef %667)
  %668 = load i8, ptr %x580, align 1
  %669 = load i32, ptr %x547, align 4
  %670 = load i32, ptr %x568, align 4
  %conv71 = trunc i32 %670 to i8
  %conv72 = zext i8 %conv71 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x581, ptr noundef %x582, i8 noundef zeroext %668, i32 noundef %669, i32 noundef %conv72)
  %671 = load i8, ptr %x582, align 1
  %672 = load i32, ptr %x549, align 4
  %673 = load i32, ptr %x565, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x583, ptr noundef %x584, i8 noundef zeroext %671, i32 noundef %672, i32 noundef %673)
  %674 = load i8, ptr %x584, align 1
  %675 = load i32, ptr %x551, align 4
  %676 = load i32, ptr %x566, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext %674, i32 noundef %675, i32 noundef %676)
  %677 = load i8, ptr %x586, align 1
  %678 = load i32, ptr %x553, align 4
  %679 = load i32, ptr %x563, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %677, i32 noundef %678, i32 noundef %679)
  %680 = load i8, ptr %x588, align 1
  %681 = load i32, ptr %x555, align 4
  %682 = load i32, ptr %x571, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %680, i32 noundef %681, i32 noundef %682)
  %683 = load i8, ptr %x590, align 1
  %684 = load i32, ptr %x557, align 4
  %685 = load i8, ptr %x572, align 1
  %conv73 = zext i8 %685 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %683, i32 noundef %684, i32 noundef %conv73)
  %686 = load i8, ptr %x592, align 1
  %687 = load i32, ptr %x559, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %686, i32 noundef %687, i32 noundef 0)
  %688 = load i8, ptr %x594, align 1
  %689 = load i32, ptr %x561, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %688, i32 noundef %689, i32 noundef 0)
  %690 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x597, ptr noundef %x598, i32 noundef %690, i32 noundef -1)
  %691 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x599, ptr noundef %x600, i32 noundef %691, i32 noundef -1)
  %692 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x601, ptr noundef %x602, i32 noundef %692, i32 noundef -1)
  %693 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x603, ptr noundef %x604, i32 noundef %693, i32 noundef -1)
  %694 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x605, ptr noundef %x606, i32 noundef %694, i32 noundef -1)
  %695 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x607, ptr noundef %x608, i32 noundef %695, i32 noundef -1)
  %696 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x609, ptr noundef %x610, i32 noundef %696, i32 noundef -1)
  %697 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x611, ptr noundef %x612, i32 noundef %697, i32 noundef -2)
  %698 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x613, ptr noundef %x614, i32 noundef %698, i32 noundef -1)
  %699 = load i32, ptr %x573, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x615, ptr noundef %x616, i32 noundef %699, i32 noundef -1)
  %700 = load i32, ptr %x614, align 4
  %701 = load i32, ptr %x611, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x617, ptr noundef %x618, i8 noundef zeroext 0, i32 noundef %700, i32 noundef %701)
  %702 = load i8, ptr %x618, align 1
  %703 = load i32, ptr %x612, align 4
  %704 = load i32, ptr %x609, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x619, ptr noundef %x620, i8 noundef zeroext %702, i32 noundef %703, i32 noundef %704)
  %705 = load i8, ptr %x620, align 1
  %706 = load i32, ptr %x610, align 4
  %707 = load i32, ptr %x607, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x621, ptr noundef %x622, i8 noundef zeroext %705, i32 noundef %706, i32 noundef %707)
  %708 = load i8, ptr %x622, align 1
  %709 = load i32, ptr %x608, align 4
  %710 = load i32, ptr %x605, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x623, ptr noundef %x624, i8 noundef zeroext %708, i32 noundef %709, i32 noundef %710)
  %711 = load i8, ptr %x624, align 1
  %712 = load i32, ptr %x606, align 4
  %713 = load i32, ptr %x603, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x625, ptr noundef %x626, i8 noundef zeroext %711, i32 noundef %712, i32 noundef %713)
  %714 = load i8, ptr %x626, align 1
  %715 = load i32, ptr %x604, align 4
  %716 = load i32, ptr %x601, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext %714, i32 noundef %715, i32 noundef %716)
  %717 = load i8, ptr %x628, align 1
  %718 = load i32, ptr %x602, align 4
  %719 = load i32, ptr %x599, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext %717, i32 noundef %718, i32 noundef %719)
  %720 = load i8, ptr %x630, align 1
  %721 = load i32, ptr %x600, align 4
  %722 = load i32, ptr %x597, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %720, i32 noundef %721, i32 noundef %722)
  %723 = load i32, ptr %x573, align 4
  %724 = load i32, ptr %x615, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext 0, i32 noundef %723, i32 noundef %724)
  %725 = load i8, ptr %x634, align 1
  %726 = load i32, ptr %x575, align 4
  %727 = load i32, ptr %x616, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %725, i32 noundef %726, i32 noundef %727)
  %728 = load i8, ptr %x636, align 1
  %729 = load i32, ptr %x577, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %728, i32 noundef %729, i32 noundef 0)
  %730 = load i8, ptr %x638, align 1
  %731 = load i32, ptr %x579, align 4
  %732 = load i32, ptr %x613, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %730, i32 noundef %731, i32 noundef %732)
  %733 = load i8, ptr %x640, align 1
  %734 = load i32, ptr %x581, align 4
  %735 = load i32, ptr %x617, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %733, i32 noundef %734, i32 noundef %735)
  %736 = load i8, ptr %x642, align 1
  %737 = load i32, ptr %x583, align 4
  %738 = load i32, ptr %x619, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %736, i32 noundef %737, i32 noundef %738)
  %739 = load i8, ptr %x644, align 1
  %740 = load i32, ptr %x585, align 4
  %741 = load i32, ptr %x621, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %739, i32 noundef %740, i32 noundef %741)
  %742 = load i8, ptr %x646, align 1
  %743 = load i32, ptr %x587, align 4
  %744 = load i32, ptr %x623, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x647, ptr noundef %x648, i8 noundef zeroext %742, i32 noundef %743, i32 noundef %744)
  %745 = load i8, ptr %x648, align 1
  %746 = load i32, ptr %x589, align 4
  %747 = load i32, ptr %x625, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x649, ptr noundef %x650, i8 noundef zeroext %745, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x650, align 1
  %749 = load i32, ptr %x591, align 4
  %750 = load i32, ptr %x627, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x651, ptr noundef %x652, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x652, align 1
  %752 = load i32, ptr %x593, align 4
  %753 = load i32, ptr %x629, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x653, ptr noundef %x654, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x654, align 1
  %755 = load i32, ptr %x595, align 4
  %756 = load i32, ptr %x631, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x655, ptr noundef %x656, i8 noundef zeroext %754, i32 noundef %755, i32 noundef %756)
  %757 = load i8, ptr %x656, align 1
  %758 = load i8, ptr %x596, align 1
  %conv74 = zext i8 %758 to i32
  %759 = load i8, ptr %x562, align 1
  %conv75 = zext i8 %759 to i32
  %add76 = add i32 %conv74, %conv75
  %760 = load i8, ptr %x632, align 1
  %conv77 = zext i8 %760 to i32
  %761 = load i32, ptr %x598, align 4
  %add78 = add i32 %conv77, %761
  call void @fiat_p384_addcarryx_u32(ptr noundef %x657, ptr noundef %x658, i8 noundef zeroext %757, i32 noundef %add76, i32 noundef %add78)
  %762 = load i32, ptr %x7, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x659, ptr noundef %x660, i32 noundef %762, i32 noundef 2)
  %763 = load i32, ptr %x7, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x661, ptr noundef %x662, i32 noundef %763, i32 noundef -2)
  %764 = load i32, ptr %x7, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x663, ptr noundef %x664, i32 noundef %764, i32 noundef 2)
  %765 = load i32, ptr %x7, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x665, ptr noundef %x666, i32 noundef %765, i32 noundef -2)
  %766 = load i32, ptr %x660, align 4
  %conv79 = trunc i32 %766 to i8
  %conv80 = zext i8 %conv79 to i32
  %767 = load i32, ptr %x7, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext 0, i32 noundef %conv80, i32 noundef %767)
  %768 = load i32, ptr %x635, align 4
  %769 = load i32, ptr %x7, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x669, ptr noundef %x670, i8 noundef zeroext 0, i32 noundef %768, i32 noundef %769)
  %770 = load i8, ptr %x670, align 1
  %771 = load i32, ptr %x637, align 4
  %772 = load i32, ptr %x665, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x671, ptr noundef %x672, i8 noundef zeroext %770, i32 noundef %771, i32 noundef %772)
  %773 = load i8, ptr %x672, align 1
  %774 = load i32, ptr %x639, align 4
  %775 = load i32, ptr %x666, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x673, ptr noundef %x674, i8 noundef zeroext %773, i32 noundef %774, i32 noundef %775)
  %776 = load i8, ptr %x674, align 1
  %777 = load i32, ptr %x641, align 4
  %778 = load i32, ptr %x663, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x675, ptr noundef %x676, i8 noundef zeroext %776, i32 noundef %777, i32 noundef %778)
  %779 = load i8, ptr %x676, align 1
  %780 = load i32, ptr %x643, align 4
  %781 = load i32, ptr %x664, align 4
  %conv81 = trunc i32 %781 to i8
  %conv82 = zext i8 %conv81 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x677, ptr noundef %x678, i8 noundef zeroext %779, i32 noundef %780, i32 noundef %conv82)
  %782 = load i8, ptr %x678, align 1
  %783 = load i32, ptr %x645, align 4
  %784 = load i32, ptr %x661, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x679, ptr noundef %x680, i8 noundef zeroext %782, i32 noundef %783, i32 noundef %784)
  %785 = load i8, ptr %x680, align 1
  %786 = load i32, ptr %x647, align 4
  %787 = load i32, ptr %x662, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext %785, i32 noundef %786, i32 noundef %787)
  %788 = load i8, ptr %x682, align 1
  %789 = load i32, ptr %x649, align 4
  %790 = load i32, ptr %x659, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext %788, i32 noundef %789, i32 noundef %790)
  %791 = load i8, ptr %x684, align 1
  %792 = load i32, ptr %x651, align 4
  %793 = load i32, ptr %x667, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext %791, i32 noundef %792, i32 noundef %793)
  %794 = load i8, ptr %x686, align 1
  %795 = load i32, ptr %x653, align 4
  %796 = load i8, ptr %x668, align 1
  %conv83 = zext i8 %796 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %794, i32 noundef %795, i32 noundef %conv83)
  %797 = load i8, ptr %x688, align 1
  %798 = load i32, ptr %x655, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %797, i32 noundef %798, i32 noundef 0)
  %799 = load i8, ptr %x690, align 1
  %800 = load i32, ptr %x657, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %799, i32 noundef %800, i32 noundef 0)
  %801 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x693, ptr noundef %x694, i32 noundef %801, i32 noundef -1)
  %802 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x695, ptr noundef %x696, i32 noundef %802, i32 noundef -1)
  %803 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x697, ptr noundef %x698, i32 noundef %803, i32 noundef -1)
  %804 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x699, ptr noundef %x700, i32 noundef %804, i32 noundef -1)
  %805 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x701, ptr noundef %x702, i32 noundef %805, i32 noundef -1)
  %806 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x703, ptr noundef %x704, i32 noundef %806, i32 noundef -1)
  %807 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x705, ptr noundef %x706, i32 noundef %807, i32 noundef -1)
  %808 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x707, ptr noundef %x708, i32 noundef %808, i32 noundef -2)
  %809 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x709, ptr noundef %x710, i32 noundef %809, i32 noundef -1)
  %810 = load i32, ptr %x669, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x711, ptr noundef %x712, i32 noundef %810, i32 noundef -1)
  %811 = load i32, ptr %x710, align 4
  %812 = load i32, ptr %x707, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x713, ptr noundef %x714, i8 noundef zeroext 0, i32 noundef %811, i32 noundef %812)
  %813 = load i8, ptr %x714, align 1
  %814 = load i32, ptr %x708, align 4
  %815 = load i32, ptr %x705, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x715, ptr noundef %x716, i8 noundef zeroext %813, i32 noundef %814, i32 noundef %815)
  %816 = load i8, ptr %x716, align 1
  %817 = load i32, ptr %x706, align 4
  %818 = load i32, ptr %x703, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x717, ptr noundef %x718, i8 noundef zeroext %816, i32 noundef %817, i32 noundef %818)
  %819 = load i8, ptr %x718, align 1
  %820 = load i32, ptr %x704, align 4
  %821 = load i32, ptr %x701, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x719, ptr noundef %x720, i8 noundef zeroext %819, i32 noundef %820, i32 noundef %821)
  %822 = load i8, ptr %x720, align 1
  %823 = load i32, ptr %x702, align 4
  %824 = load i32, ptr %x699, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x721, ptr noundef %x722, i8 noundef zeroext %822, i32 noundef %823, i32 noundef %824)
  %825 = load i8, ptr %x722, align 1
  %826 = load i32, ptr %x700, align 4
  %827 = load i32, ptr %x697, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x723, ptr noundef %x724, i8 noundef zeroext %825, i32 noundef %826, i32 noundef %827)
  %828 = load i8, ptr %x724, align 1
  %829 = load i32, ptr %x698, align 4
  %830 = load i32, ptr %x695, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x725, ptr noundef %x726, i8 noundef zeroext %828, i32 noundef %829, i32 noundef %830)
  %831 = load i8, ptr %x726, align 1
  %832 = load i32, ptr %x696, align 4
  %833 = load i32, ptr %x693, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x727, ptr noundef %x728, i8 noundef zeroext %831, i32 noundef %832, i32 noundef %833)
  %834 = load i32, ptr %x669, align 4
  %835 = load i32, ptr %x711, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x729, ptr noundef %x730, i8 noundef zeroext 0, i32 noundef %834, i32 noundef %835)
  %836 = load i8, ptr %x730, align 1
  %837 = load i32, ptr %x671, align 4
  %838 = load i32, ptr %x712, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x731, ptr noundef %x732, i8 noundef zeroext %836, i32 noundef %837, i32 noundef %838)
  %839 = load i8, ptr %x732, align 1
  %840 = load i32, ptr %x673, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x733, ptr noundef %x734, i8 noundef zeroext %839, i32 noundef %840, i32 noundef 0)
  %841 = load i8, ptr %x734, align 1
  %842 = load i32, ptr %x675, align 4
  %843 = load i32, ptr %x709, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x735, ptr noundef %x736, i8 noundef zeroext %841, i32 noundef %842, i32 noundef %843)
  %844 = load i8, ptr %x736, align 1
  %845 = load i32, ptr %x677, align 4
  %846 = load i32, ptr %x713, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x737, ptr noundef %x738, i8 noundef zeroext %844, i32 noundef %845, i32 noundef %846)
  %847 = load i8, ptr %x738, align 1
  %848 = load i32, ptr %x679, align 4
  %849 = load i32, ptr %x715, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x739, ptr noundef %x740, i8 noundef zeroext %847, i32 noundef %848, i32 noundef %849)
  %850 = load i8, ptr %x740, align 1
  %851 = load i32, ptr %x681, align 4
  %852 = load i32, ptr %x717, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x741, ptr noundef %x742, i8 noundef zeroext %850, i32 noundef %851, i32 noundef %852)
  %853 = load i8, ptr %x742, align 1
  %854 = load i32, ptr %x683, align 4
  %855 = load i32, ptr %x719, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x743, ptr noundef %x744, i8 noundef zeroext %853, i32 noundef %854, i32 noundef %855)
  %856 = load i8, ptr %x744, align 1
  %857 = load i32, ptr %x685, align 4
  %858 = load i32, ptr %x721, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x745, ptr noundef %x746, i8 noundef zeroext %856, i32 noundef %857, i32 noundef %858)
  %859 = load i8, ptr %x746, align 1
  %860 = load i32, ptr %x687, align 4
  %861 = load i32, ptr %x723, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x747, ptr noundef %x748, i8 noundef zeroext %859, i32 noundef %860, i32 noundef %861)
  %862 = load i8, ptr %x748, align 1
  %863 = load i32, ptr %x689, align 4
  %864 = load i32, ptr %x725, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x749, ptr noundef %x750, i8 noundef zeroext %862, i32 noundef %863, i32 noundef %864)
  %865 = load i8, ptr %x750, align 1
  %866 = load i32, ptr %x691, align 4
  %867 = load i32, ptr %x727, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x751, ptr noundef %x752, i8 noundef zeroext %865, i32 noundef %866, i32 noundef %867)
  %868 = load i8, ptr %x752, align 1
  %869 = load i8, ptr %x692, align 1
  %conv84 = zext i8 %869 to i32
  %870 = load i8, ptr %x658, align 1
  %conv85 = zext i8 %870 to i32
  %add86 = add i32 %conv84, %conv85
  %871 = load i8, ptr %x728, align 1
  %conv87 = zext i8 %871 to i32
  %872 = load i32, ptr %x694, align 4
  %add88 = add i32 %conv87, %872
  call void @fiat_p384_addcarryx_u32(ptr noundef %x753, ptr noundef %x754, i8 noundef zeroext %868, i32 noundef %add86, i32 noundef %add88)
  %873 = load i32, ptr %x8, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x755, ptr noundef %x756, i32 noundef %873, i32 noundef 2)
  %874 = load i32, ptr %x8, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x757, ptr noundef %x758, i32 noundef %874, i32 noundef -2)
  %875 = load i32, ptr %x8, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x759, ptr noundef %x760, i32 noundef %875, i32 noundef 2)
  %876 = load i32, ptr %x8, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x761, ptr noundef %x762, i32 noundef %876, i32 noundef -2)
  %877 = load i32, ptr %x756, align 4
  %conv89 = trunc i32 %877 to i8
  %conv90 = zext i8 %conv89 to i32
  %878 = load i32, ptr %x8, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x763, ptr noundef %x764, i8 noundef zeroext 0, i32 noundef %conv90, i32 noundef %878)
  %879 = load i32, ptr %x731, align 4
  %880 = load i32, ptr %x8, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x765, ptr noundef %x766, i8 noundef zeroext 0, i32 noundef %879, i32 noundef %880)
  %881 = load i8, ptr %x766, align 1
  %882 = load i32, ptr %x733, align 4
  %883 = load i32, ptr %x761, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x767, ptr noundef %x768, i8 noundef zeroext %881, i32 noundef %882, i32 noundef %883)
  %884 = load i8, ptr %x768, align 1
  %885 = load i32, ptr %x735, align 4
  %886 = load i32, ptr %x762, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x769, ptr noundef %x770, i8 noundef zeroext %884, i32 noundef %885, i32 noundef %886)
  %887 = load i8, ptr %x770, align 1
  %888 = load i32, ptr %x737, align 4
  %889 = load i32, ptr %x759, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x771, ptr noundef %x772, i8 noundef zeroext %887, i32 noundef %888, i32 noundef %889)
  %890 = load i8, ptr %x772, align 1
  %891 = load i32, ptr %x739, align 4
  %892 = load i32, ptr %x760, align 4
  %conv91 = trunc i32 %892 to i8
  %conv92 = zext i8 %conv91 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x773, ptr noundef %x774, i8 noundef zeroext %890, i32 noundef %891, i32 noundef %conv92)
  %893 = load i8, ptr %x774, align 1
  %894 = load i32, ptr %x741, align 4
  %895 = load i32, ptr %x757, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x775, ptr noundef %x776, i8 noundef zeroext %893, i32 noundef %894, i32 noundef %895)
  %896 = load i8, ptr %x776, align 1
  %897 = load i32, ptr %x743, align 4
  %898 = load i32, ptr %x758, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x777, ptr noundef %x778, i8 noundef zeroext %896, i32 noundef %897, i32 noundef %898)
  %899 = load i8, ptr %x778, align 1
  %900 = load i32, ptr %x745, align 4
  %901 = load i32, ptr %x755, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x779, ptr noundef %x780, i8 noundef zeroext %899, i32 noundef %900, i32 noundef %901)
  %902 = load i8, ptr %x780, align 1
  %903 = load i32, ptr %x747, align 4
  %904 = load i32, ptr %x763, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x781, ptr noundef %x782, i8 noundef zeroext %902, i32 noundef %903, i32 noundef %904)
  %905 = load i8, ptr %x782, align 1
  %906 = load i32, ptr %x749, align 4
  %907 = load i8, ptr %x764, align 1
  %conv93 = zext i8 %907 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x783, ptr noundef %x784, i8 noundef zeroext %905, i32 noundef %906, i32 noundef %conv93)
  %908 = load i8, ptr %x784, align 1
  %909 = load i32, ptr %x751, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x785, ptr noundef %x786, i8 noundef zeroext %908, i32 noundef %909, i32 noundef 0)
  %910 = load i8, ptr %x786, align 1
  %911 = load i32, ptr %x753, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x787, ptr noundef %x788, i8 noundef zeroext %910, i32 noundef %911, i32 noundef 0)
  %912 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x789, ptr noundef %x790, i32 noundef %912, i32 noundef -1)
  %913 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x791, ptr noundef %x792, i32 noundef %913, i32 noundef -1)
  %914 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x793, ptr noundef %x794, i32 noundef %914, i32 noundef -1)
  %915 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x795, ptr noundef %x796, i32 noundef %915, i32 noundef -1)
  %916 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x797, ptr noundef %x798, i32 noundef %916, i32 noundef -1)
  %917 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x799, ptr noundef %x800, i32 noundef %917, i32 noundef -1)
  %918 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x801, ptr noundef %x802, i32 noundef %918, i32 noundef -1)
  %919 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x803, ptr noundef %x804, i32 noundef %919, i32 noundef -2)
  %920 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x805, ptr noundef %x806, i32 noundef %920, i32 noundef -1)
  %921 = load i32, ptr %x765, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x807, ptr noundef %x808, i32 noundef %921, i32 noundef -1)
  %922 = load i32, ptr %x806, align 4
  %923 = load i32, ptr %x803, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x809, ptr noundef %x810, i8 noundef zeroext 0, i32 noundef %922, i32 noundef %923)
  %924 = load i8, ptr %x810, align 1
  %925 = load i32, ptr %x804, align 4
  %926 = load i32, ptr %x801, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x811, ptr noundef %x812, i8 noundef zeroext %924, i32 noundef %925, i32 noundef %926)
  %927 = load i8, ptr %x812, align 1
  %928 = load i32, ptr %x802, align 4
  %929 = load i32, ptr %x799, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x813, ptr noundef %x814, i8 noundef zeroext %927, i32 noundef %928, i32 noundef %929)
  %930 = load i8, ptr %x814, align 1
  %931 = load i32, ptr %x800, align 4
  %932 = load i32, ptr %x797, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x815, ptr noundef %x816, i8 noundef zeroext %930, i32 noundef %931, i32 noundef %932)
  %933 = load i8, ptr %x816, align 1
  %934 = load i32, ptr %x798, align 4
  %935 = load i32, ptr %x795, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x817, ptr noundef %x818, i8 noundef zeroext %933, i32 noundef %934, i32 noundef %935)
  %936 = load i8, ptr %x818, align 1
  %937 = load i32, ptr %x796, align 4
  %938 = load i32, ptr %x793, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x819, ptr noundef %x820, i8 noundef zeroext %936, i32 noundef %937, i32 noundef %938)
  %939 = load i8, ptr %x820, align 1
  %940 = load i32, ptr %x794, align 4
  %941 = load i32, ptr %x791, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x821, ptr noundef %x822, i8 noundef zeroext %939, i32 noundef %940, i32 noundef %941)
  %942 = load i8, ptr %x822, align 1
  %943 = load i32, ptr %x792, align 4
  %944 = load i32, ptr %x789, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x823, ptr noundef %x824, i8 noundef zeroext %942, i32 noundef %943, i32 noundef %944)
  %945 = load i32, ptr %x765, align 4
  %946 = load i32, ptr %x807, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x825, ptr noundef %x826, i8 noundef zeroext 0, i32 noundef %945, i32 noundef %946)
  %947 = load i8, ptr %x826, align 1
  %948 = load i32, ptr %x767, align 4
  %949 = load i32, ptr %x808, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x827, ptr noundef %x828, i8 noundef zeroext %947, i32 noundef %948, i32 noundef %949)
  %950 = load i8, ptr %x828, align 1
  %951 = load i32, ptr %x769, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x829, ptr noundef %x830, i8 noundef zeroext %950, i32 noundef %951, i32 noundef 0)
  %952 = load i8, ptr %x830, align 1
  %953 = load i32, ptr %x771, align 4
  %954 = load i32, ptr %x805, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x831, ptr noundef %x832, i8 noundef zeroext %952, i32 noundef %953, i32 noundef %954)
  %955 = load i8, ptr %x832, align 1
  %956 = load i32, ptr %x773, align 4
  %957 = load i32, ptr %x809, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x833, ptr noundef %x834, i8 noundef zeroext %955, i32 noundef %956, i32 noundef %957)
  %958 = load i8, ptr %x834, align 1
  %959 = load i32, ptr %x775, align 4
  %960 = load i32, ptr %x811, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x835, ptr noundef %x836, i8 noundef zeroext %958, i32 noundef %959, i32 noundef %960)
  %961 = load i8, ptr %x836, align 1
  %962 = load i32, ptr %x777, align 4
  %963 = load i32, ptr %x813, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x837, ptr noundef %x838, i8 noundef zeroext %961, i32 noundef %962, i32 noundef %963)
  %964 = load i8, ptr %x838, align 1
  %965 = load i32, ptr %x779, align 4
  %966 = load i32, ptr %x815, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x839, ptr noundef %x840, i8 noundef zeroext %964, i32 noundef %965, i32 noundef %966)
  %967 = load i8, ptr %x840, align 1
  %968 = load i32, ptr %x781, align 4
  %969 = load i32, ptr %x817, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x841, ptr noundef %x842, i8 noundef zeroext %967, i32 noundef %968, i32 noundef %969)
  %970 = load i8, ptr %x842, align 1
  %971 = load i32, ptr %x783, align 4
  %972 = load i32, ptr %x819, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x843, ptr noundef %x844, i8 noundef zeroext %970, i32 noundef %971, i32 noundef %972)
  %973 = load i8, ptr %x844, align 1
  %974 = load i32, ptr %x785, align 4
  %975 = load i32, ptr %x821, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x845, ptr noundef %x846, i8 noundef zeroext %973, i32 noundef %974, i32 noundef %975)
  %976 = load i8, ptr %x846, align 1
  %977 = load i32, ptr %x787, align 4
  %978 = load i32, ptr %x823, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x847, ptr noundef %x848, i8 noundef zeroext %976, i32 noundef %977, i32 noundef %978)
  %979 = load i8, ptr %x848, align 1
  %980 = load i8, ptr %x788, align 1
  %conv94 = zext i8 %980 to i32
  %981 = load i8, ptr %x754, align 1
  %conv95 = zext i8 %981 to i32
  %add96 = add i32 %conv94, %conv95
  %982 = load i8, ptr %x824, align 1
  %conv97 = zext i8 %982 to i32
  %983 = load i32, ptr %x790, align 4
  %add98 = add i32 %conv97, %983
  call void @fiat_p384_addcarryx_u32(ptr noundef %x849, ptr noundef %x850, i8 noundef zeroext %979, i32 noundef %add96, i32 noundef %add98)
  %984 = load i32, ptr %x9, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x851, ptr noundef %x852, i32 noundef %984, i32 noundef 2)
  %985 = load i32, ptr %x9, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x853, ptr noundef %x854, i32 noundef %985, i32 noundef -2)
  %986 = load i32, ptr %x9, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x855, ptr noundef %x856, i32 noundef %986, i32 noundef 2)
  %987 = load i32, ptr %x9, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x857, ptr noundef %x858, i32 noundef %987, i32 noundef -2)
  %988 = load i32, ptr %x852, align 4
  %conv99 = trunc i32 %988 to i8
  %conv100 = zext i8 %conv99 to i32
  %989 = load i32, ptr %x9, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x859, ptr noundef %x860, i8 noundef zeroext 0, i32 noundef %conv100, i32 noundef %989)
  %990 = load i32, ptr %x827, align 4
  %991 = load i32, ptr %x9, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x861, ptr noundef %x862, i8 noundef zeroext 0, i32 noundef %990, i32 noundef %991)
  %992 = load i8, ptr %x862, align 1
  %993 = load i32, ptr %x829, align 4
  %994 = load i32, ptr %x857, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x863, ptr noundef %x864, i8 noundef zeroext %992, i32 noundef %993, i32 noundef %994)
  %995 = load i8, ptr %x864, align 1
  %996 = load i32, ptr %x831, align 4
  %997 = load i32, ptr %x858, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x865, ptr noundef %x866, i8 noundef zeroext %995, i32 noundef %996, i32 noundef %997)
  %998 = load i8, ptr %x866, align 1
  %999 = load i32, ptr %x833, align 4
  %1000 = load i32, ptr %x855, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x867, ptr noundef %x868, i8 noundef zeroext %998, i32 noundef %999, i32 noundef %1000)
  %1001 = load i8, ptr %x868, align 1
  %1002 = load i32, ptr %x835, align 4
  %1003 = load i32, ptr %x856, align 4
  %conv101 = trunc i32 %1003 to i8
  %conv102 = zext i8 %conv101 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x869, ptr noundef %x870, i8 noundef zeroext %1001, i32 noundef %1002, i32 noundef %conv102)
  %1004 = load i8, ptr %x870, align 1
  %1005 = load i32, ptr %x837, align 4
  %1006 = load i32, ptr %x853, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x871, ptr noundef %x872, i8 noundef zeroext %1004, i32 noundef %1005, i32 noundef %1006)
  %1007 = load i8, ptr %x872, align 1
  %1008 = load i32, ptr %x839, align 4
  %1009 = load i32, ptr %x854, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x873, ptr noundef %x874, i8 noundef zeroext %1007, i32 noundef %1008, i32 noundef %1009)
  %1010 = load i8, ptr %x874, align 1
  %1011 = load i32, ptr %x841, align 4
  %1012 = load i32, ptr %x851, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x875, ptr noundef %x876, i8 noundef zeroext %1010, i32 noundef %1011, i32 noundef %1012)
  %1013 = load i8, ptr %x876, align 1
  %1014 = load i32, ptr %x843, align 4
  %1015 = load i32, ptr %x859, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x877, ptr noundef %x878, i8 noundef zeroext %1013, i32 noundef %1014, i32 noundef %1015)
  %1016 = load i8, ptr %x878, align 1
  %1017 = load i32, ptr %x845, align 4
  %1018 = load i8, ptr %x860, align 1
  %conv103 = zext i8 %1018 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x879, ptr noundef %x880, i8 noundef zeroext %1016, i32 noundef %1017, i32 noundef %conv103)
  %1019 = load i8, ptr %x880, align 1
  %1020 = load i32, ptr %x847, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x881, ptr noundef %x882, i8 noundef zeroext %1019, i32 noundef %1020, i32 noundef 0)
  %1021 = load i8, ptr %x882, align 1
  %1022 = load i32, ptr %x849, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x883, ptr noundef %x884, i8 noundef zeroext %1021, i32 noundef %1022, i32 noundef 0)
  %1023 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x885, ptr noundef %x886, i32 noundef %1023, i32 noundef -1)
  %1024 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x887, ptr noundef %x888, i32 noundef %1024, i32 noundef -1)
  %1025 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x889, ptr noundef %x890, i32 noundef %1025, i32 noundef -1)
  %1026 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x891, ptr noundef %x892, i32 noundef %1026, i32 noundef -1)
  %1027 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x893, ptr noundef %x894, i32 noundef %1027, i32 noundef -1)
  %1028 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x895, ptr noundef %x896, i32 noundef %1028, i32 noundef -1)
  %1029 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x897, ptr noundef %x898, i32 noundef %1029, i32 noundef -1)
  %1030 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x899, ptr noundef %x900, i32 noundef %1030, i32 noundef -2)
  %1031 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x901, ptr noundef %x902, i32 noundef %1031, i32 noundef -1)
  %1032 = load i32, ptr %x861, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x903, ptr noundef %x904, i32 noundef %1032, i32 noundef -1)
  %1033 = load i32, ptr %x902, align 4
  %1034 = load i32, ptr %x899, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x905, ptr noundef %x906, i8 noundef zeroext 0, i32 noundef %1033, i32 noundef %1034)
  %1035 = load i8, ptr %x906, align 1
  %1036 = load i32, ptr %x900, align 4
  %1037 = load i32, ptr %x897, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x907, ptr noundef %x908, i8 noundef zeroext %1035, i32 noundef %1036, i32 noundef %1037)
  %1038 = load i8, ptr %x908, align 1
  %1039 = load i32, ptr %x898, align 4
  %1040 = load i32, ptr %x895, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x909, ptr noundef %x910, i8 noundef zeroext %1038, i32 noundef %1039, i32 noundef %1040)
  %1041 = load i8, ptr %x910, align 1
  %1042 = load i32, ptr %x896, align 4
  %1043 = load i32, ptr %x893, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x911, ptr noundef %x912, i8 noundef zeroext %1041, i32 noundef %1042, i32 noundef %1043)
  %1044 = load i8, ptr %x912, align 1
  %1045 = load i32, ptr %x894, align 4
  %1046 = load i32, ptr %x891, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x913, ptr noundef %x914, i8 noundef zeroext %1044, i32 noundef %1045, i32 noundef %1046)
  %1047 = load i8, ptr %x914, align 1
  %1048 = load i32, ptr %x892, align 4
  %1049 = load i32, ptr %x889, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x915, ptr noundef %x916, i8 noundef zeroext %1047, i32 noundef %1048, i32 noundef %1049)
  %1050 = load i8, ptr %x916, align 1
  %1051 = load i32, ptr %x890, align 4
  %1052 = load i32, ptr %x887, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x917, ptr noundef %x918, i8 noundef zeroext %1050, i32 noundef %1051, i32 noundef %1052)
  %1053 = load i8, ptr %x918, align 1
  %1054 = load i32, ptr %x888, align 4
  %1055 = load i32, ptr %x885, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x919, ptr noundef %x920, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i32, ptr %x861, align 4
  %1057 = load i32, ptr %x903, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x921, ptr noundef %x922, i8 noundef zeroext 0, i32 noundef %1056, i32 noundef %1057)
  %1058 = load i8, ptr %x922, align 1
  %1059 = load i32, ptr %x863, align 4
  %1060 = load i32, ptr %x904, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x923, ptr noundef %x924, i8 noundef zeroext %1058, i32 noundef %1059, i32 noundef %1060)
  %1061 = load i8, ptr %x924, align 1
  %1062 = load i32, ptr %x865, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x925, ptr noundef %x926, i8 noundef zeroext %1061, i32 noundef %1062, i32 noundef 0)
  %1063 = load i8, ptr %x926, align 1
  %1064 = load i32, ptr %x867, align 4
  %1065 = load i32, ptr %x901, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x927, ptr noundef %x928, i8 noundef zeroext %1063, i32 noundef %1064, i32 noundef %1065)
  %1066 = load i8, ptr %x928, align 1
  %1067 = load i32, ptr %x869, align 4
  %1068 = load i32, ptr %x905, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x929, ptr noundef %x930, i8 noundef zeroext %1066, i32 noundef %1067, i32 noundef %1068)
  %1069 = load i8, ptr %x930, align 1
  %1070 = load i32, ptr %x871, align 4
  %1071 = load i32, ptr %x907, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x931, ptr noundef %x932, i8 noundef zeroext %1069, i32 noundef %1070, i32 noundef %1071)
  %1072 = load i8, ptr %x932, align 1
  %1073 = load i32, ptr %x873, align 4
  %1074 = load i32, ptr %x909, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x933, ptr noundef %x934, i8 noundef zeroext %1072, i32 noundef %1073, i32 noundef %1074)
  %1075 = load i8, ptr %x934, align 1
  %1076 = load i32, ptr %x875, align 4
  %1077 = load i32, ptr %x911, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x935, ptr noundef %x936, i8 noundef zeroext %1075, i32 noundef %1076, i32 noundef %1077)
  %1078 = load i8, ptr %x936, align 1
  %1079 = load i32, ptr %x877, align 4
  %1080 = load i32, ptr %x913, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x937, ptr noundef %x938, i8 noundef zeroext %1078, i32 noundef %1079, i32 noundef %1080)
  %1081 = load i8, ptr %x938, align 1
  %1082 = load i32, ptr %x879, align 4
  %1083 = load i32, ptr %x915, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x939, ptr noundef %x940, i8 noundef zeroext %1081, i32 noundef %1082, i32 noundef %1083)
  %1084 = load i8, ptr %x940, align 1
  %1085 = load i32, ptr %x881, align 4
  %1086 = load i32, ptr %x917, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x941, ptr noundef %x942, i8 noundef zeroext %1084, i32 noundef %1085, i32 noundef %1086)
  %1087 = load i8, ptr %x942, align 1
  %1088 = load i32, ptr %x883, align 4
  %1089 = load i32, ptr %x919, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x943, ptr noundef %x944, i8 noundef zeroext %1087, i32 noundef %1088, i32 noundef %1089)
  %1090 = load i8, ptr %x944, align 1
  %1091 = load i8, ptr %x884, align 1
  %conv104 = zext i8 %1091 to i32
  %1092 = load i8, ptr %x850, align 1
  %conv105 = zext i8 %1092 to i32
  %add106 = add i32 %conv104, %conv105
  %1093 = load i8, ptr %x920, align 1
  %conv107 = zext i8 %1093 to i32
  %1094 = load i32, ptr %x886, align 4
  %add108 = add i32 %conv107, %1094
  call void @fiat_p384_addcarryx_u32(ptr noundef %x945, ptr noundef %x946, i8 noundef zeroext %1090, i32 noundef %add106, i32 noundef %add108)
  %1095 = load i32, ptr %x10, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x947, ptr noundef %x948, i32 noundef %1095, i32 noundef 2)
  %1096 = load i32, ptr %x10, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x949, ptr noundef %x950, i32 noundef %1096, i32 noundef -2)
  %1097 = load i32, ptr %x10, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x951, ptr noundef %x952, i32 noundef %1097, i32 noundef 2)
  %1098 = load i32, ptr %x10, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x953, ptr noundef %x954, i32 noundef %1098, i32 noundef -2)
  %1099 = load i32, ptr %x948, align 4
  %conv109 = trunc i32 %1099 to i8
  %conv110 = zext i8 %conv109 to i32
  %1100 = load i32, ptr %x10, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x955, ptr noundef %x956, i8 noundef zeroext 0, i32 noundef %conv110, i32 noundef %1100)
  %1101 = load i32, ptr %x923, align 4
  %1102 = load i32, ptr %x10, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x957, ptr noundef %x958, i8 noundef zeroext 0, i32 noundef %1101, i32 noundef %1102)
  %1103 = load i8, ptr %x958, align 1
  %1104 = load i32, ptr %x925, align 4
  %1105 = load i32, ptr %x953, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x959, ptr noundef %x960, i8 noundef zeroext %1103, i32 noundef %1104, i32 noundef %1105)
  %1106 = load i8, ptr %x960, align 1
  %1107 = load i32, ptr %x927, align 4
  %1108 = load i32, ptr %x954, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x961, ptr noundef %x962, i8 noundef zeroext %1106, i32 noundef %1107, i32 noundef %1108)
  %1109 = load i8, ptr %x962, align 1
  %1110 = load i32, ptr %x929, align 4
  %1111 = load i32, ptr %x951, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x963, ptr noundef %x964, i8 noundef zeroext %1109, i32 noundef %1110, i32 noundef %1111)
  %1112 = load i8, ptr %x964, align 1
  %1113 = load i32, ptr %x931, align 4
  %1114 = load i32, ptr %x952, align 4
  %conv111 = trunc i32 %1114 to i8
  %conv112 = zext i8 %conv111 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x965, ptr noundef %x966, i8 noundef zeroext %1112, i32 noundef %1113, i32 noundef %conv112)
  %1115 = load i8, ptr %x966, align 1
  %1116 = load i32, ptr %x933, align 4
  %1117 = load i32, ptr %x949, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x967, ptr noundef %x968, i8 noundef zeroext %1115, i32 noundef %1116, i32 noundef %1117)
  %1118 = load i8, ptr %x968, align 1
  %1119 = load i32, ptr %x935, align 4
  %1120 = load i32, ptr %x950, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x969, ptr noundef %x970, i8 noundef zeroext %1118, i32 noundef %1119, i32 noundef %1120)
  %1121 = load i8, ptr %x970, align 1
  %1122 = load i32, ptr %x937, align 4
  %1123 = load i32, ptr %x947, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x971, ptr noundef %x972, i8 noundef zeroext %1121, i32 noundef %1122, i32 noundef %1123)
  %1124 = load i8, ptr %x972, align 1
  %1125 = load i32, ptr %x939, align 4
  %1126 = load i32, ptr %x955, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x973, ptr noundef %x974, i8 noundef zeroext %1124, i32 noundef %1125, i32 noundef %1126)
  %1127 = load i8, ptr %x974, align 1
  %1128 = load i32, ptr %x941, align 4
  %1129 = load i8, ptr %x956, align 1
  %conv113 = zext i8 %1129 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x975, ptr noundef %x976, i8 noundef zeroext %1127, i32 noundef %1128, i32 noundef %conv113)
  %1130 = load i8, ptr %x976, align 1
  %1131 = load i32, ptr %x943, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x977, ptr noundef %x978, i8 noundef zeroext %1130, i32 noundef %1131, i32 noundef 0)
  %1132 = load i8, ptr %x978, align 1
  %1133 = load i32, ptr %x945, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x979, ptr noundef %x980, i8 noundef zeroext %1132, i32 noundef %1133, i32 noundef 0)
  %1134 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x981, ptr noundef %x982, i32 noundef %1134, i32 noundef -1)
  %1135 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x983, ptr noundef %x984, i32 noundef %1135, i32 noundef -1)
  %1136 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x985, ptr noundef %x986, i32 noundef %1136, i32 noundef -1)
  %1137 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x987, ptr noundef %x988, i32 noundef %1137, i32 noundef -1)
  %1138 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x989, ptr noundef %x990, i32 noundef %1138, i32 noundef -1)
  %1139 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x991, ptr noundef %x992, i32 noundef %1139, i32 noundef -1)
  %1140 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x993, ptr noundef %x994, i32 noundef %1140, i32 noundef -1)
  %1141 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x995, ptr noundef %x996, i32 noundef %1141, i32 noundef -2)
  %1142 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x997, ptr noundef %x998, i32 noundef %1142, i32 noundef -1)
  %1143 = load i32, ptr %x957, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x999, ptr noundef %x1000, i32 noundef %1143, i32 noundef -1)
  %1144 = load i32, ptr %x998, align 4
  %1145 = load i32, ptr %x995, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1001, ptr noundef %x1002, i8 noundef zeroext 0, i32 noundef %1144, i32 noundef %1145)
  %1146 = load i8, ptr %x1002, align 1
  %1147 = load i32, ptr %x996, align 4
  %1148 = load i32, ptr %x993, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1003, ptr noundef %x1004, i8 noundef zeroext %1146, i32 noundef %1147, i32 noundef %1148)
  %1149 = load i8, ptr %x1004, align 1
  %1150 = load i32, ptr %x994, align 4
  %1151 = load i32, ptr %x991, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1005, ptr noundef %x1006, i8 noundef zeroext %1149, i32 noundef %1150, i32 noundef %1151)
  %1152 = load i8, ptr %x1006, align 1
  %1153 = load i32, ptr %x992, align 4
  %1154 = load i32, ptr %x989, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1007, ptr noundef %x1008, i8 noundef zeroext %1152, i32 noundef %1153, i32 noundef %1154)
  %1155 = load i8, ptr %x1008, align 1
  %1156 = load i32, ptr %x990, align 4
  %1157 = load i32, ptr %x987, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1009, ptr noundef %x1010, i8 noundef zeroext %1155, i32 noundef %1156, i32 noundef %1157)
  %1158 = load i8, ptr %x1010, align 1
  %1159 = load i32, ptr %x988, align 4
  %1160 = load i32, ptr %x985, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1011, ptr noundef %x1012, i8 noundef zeroext %1158, i32 noundef %1159, i32 noundef %1160)
  %1161 = load i8, ptr %x1012, align 1
  %1162 = load i32, ptr %x986, align 4
  %1163 = load i32, ptr %x983, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1013, ptr noundef %x1014, i8 noundef zeroext %1161, i32 noundef %1162, i32 noundef %1163)
  %1164 = load i8, ptr %x1014, align 1
  %1165 = load i32, ptr %x984, align 4
  %1166 = load i32, ptr %x981, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1015, ptr noundef %x1016, i8 noundef zeroext %1164, i32 noundef %1165, i32 noundef %1166)
  %1167 = load i32, ptr %x957, align 4
  %1168 = load i32, ptr %x999, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1017, ptr noundef %x1018, i8 noundef zeroext 0, i32 noundef %1167, i32 noundef %1168)
  %1169 = load i8, ptr %x1018, align 1
  %1170 = load i32, ptr %x959, align 4
  %1171 = load i32, ptr %x1000, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1019, ptr noundef %x1020, i8 noundef zeroext %1169, i32 noundef %1170, i32 noundef %1171)
  %1172 = load i8, ptr %x1020, align 1
  %1173 = load i32, ptr %x961, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1021, ptr noundef %x1022, i8 noundef zeroext %1172, i32 noundef %1173, i32 noundef 0)
  %1174 = load i8, ptr %x1022, align 1
  %1175 = load i32, ptr %x963, align 4
  %1176 = load i32, ptr %x997, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1023, ptr noundef %x1024, i8 noundef zeroext %1174, i32 noundef %1175, i32 noundef %1176)
  %1177 = load i8, ptr %x1024, align 1
  %1178 = load i32, ptr %x965, align 4
  %1179 = load i32, ptr %x1001, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1025, ptr noundef %x1026, i8 noundef zeroext %1177, i32 noundef %1178, i32 noundef %1179)
  %1180 = load i8, ptr %x1026, align 1
  %1181 = load i32, ptr %x967, align 4
  %1182 = load i32, ptr %x1003, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1027, ptr noundef %x1028, i8 noundef zeroext %1180, i32 noundef %1181, i32 noundef %1182)
  %1183 = load i8, ptr %x1028, align 1
  %1184 = load i32, ptr %x969, align 4
  %1185 = load i32, ptr %x1005, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1029, ptr noundef %x1030, i8 noundef zeroext %1183, i32 noundef %1184, i32 noundef %1185)
  %1186 = load i8, ptr %x1030, align 1
  %1187 = load i32, ptr %x971, align 4
  %1188 = load i32, ptr %x1007, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1031, ptr noundef %x1032, i8 noundef zeroext %1186, i32 noundef %1187, i32 noundef %1188)
  %1189 = load i8, ptr %x1032, align 1
  %1190 = load i32, ptr %x973, align 4
  %1191 = load i32, ptr %x1009, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1033, ptr noundef %x1034, i8 noundef zeroext %1189, i32 noundef %1190, i32 noundef %1191)
  %1192 = load i8, ptr %x1034, align 1
  %1193 = load i32, ptr %x975, align 4
  %1194 = load i32, ptr %x1011, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1035, ptr noundef %x1036, i8 noundef zeroext %1192, i32 noundef %1193, i32 noundef %1194)
  %1195 = load i8, ptr %x1036, align 1
  %1196 = load i32, ptr %x977, align 4
  %1197 = load i32, ptr %x1013, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1037, ptr noundef %x1038, i8 noundef zeroext %1195, i32 noundef %1196, i32 noundef %1197)
  %1198 = load i8, ptr %x1038, align 1
  %1199 = load i32, ptr %x979, align 4
  %1200 = load i32, ptr %x1015, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1039, ptr noundef %x1040, i8 noundef zeroext %1198, i32 noundef %1199, i32 noundef %1200)
  %1201 = load i8, ptr %x1040, align 1
  %1202 = load i8, ptr %x980, align 1
  %conv114 = zext i8 %1202 to i32
  %1203 = load i8, ptr %x946, align 1
  %conv115 = zext i8 %1203 to i32
  %add116 = add i32 %conv114, %conv115
  %1204 = load i8, ptr %x1016, align 1
  %conv117 = zext i8 %1204 to i32
  %1205 = load i32, ptr %x982, align 4
  %add118 = add i32 %conv117, %1205
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1041, ptr noundef %x1042, i8 noundef zeroext %1201, i32 noundef %add116, i32 noundef %add118)
  %1206 = load i32, ptr %x11, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1043, ptr noundef %x1044, i32 noundef %1206, i32 noundef 2)
  %1207 = load i32, ptr %x11, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1045, ptr noundef %x1046, i32 noundef %1207, i32 noundef -2)
  %1208 = load i32, ptr %x11, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1047, ptr noundef %x1048, i32 noundef %1208, i32 noundef 2)
  %1209 = load i32, ptr %x11, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1049, ptr noundef %x1050, i32 noundef %1209, i32 noundef -2)
  %1210 = load i32, ptr %x1044, align 4
  %conv119 = trunc i32 %1210 to i8
  %conv120 = zext i8 %conv119 to i32
  %1211 = load i32, ptr %x11, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1051, ptr noundef %x1052, i8 noundef zeroext 0, i32 noundef %conv120, i32 noundef %1211)
  %1212 = load i32, ptr %x1019, align 4
  %1213 = load i32, ptr %x11, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1053, ptr noundef %x1054, i8 noundef zeroext 0, i32 noundef %1212, i32 noundef %1213)
  %1214 = load i8, ptr %x1054, align 1
  %1215 = load i32, ptr %x1021, align 4
  %1216 = load i32, ptr %x1049, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1055, ptr noundef %x1056, i8 noundef zeroext %1214, i32 noundef %1215, i32 noundef %1216)
  %1217 = load i8, ptr %x1056, align 1
  %1218 = load i32, ptr %x1023, align 4
  %1219 = load i32, ptr %x1050, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1057, ptr noundef %x1058, i8 noundef zeroext %1217, i32 noundef %1218, i32 noundef %1219)
  %1220 = load i8, ptr %x1058, align 1
  %1221 = load i32, ptr %x1025, align 4
  %1222 = load i32, ptr %x1047, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1059, ptr noundef %x1060, i8 noundef zeroext %1220, i32 noundef %1221, i32 noundef %1222)
  %1223 = load i8, ptr %x1060, align 1
  %1224 = load i32, ptr %x1027, align 4
  %1225 = load i32, ptr %x1048, align 4
  %conv121 = trunc i32 %1225 to i8
  %conv122 = zext i8 %conv121 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1061, ptr noundef %x1062, i8 noundef zeroext %1223, i32 noundef %1224, i32 noundef %conv122)
  %1226 = load i8, ptr %x1062, align 1
  %1227 = load i32, ptr %x1029, align 4
  %1228 = load i32, ptr %x1045, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1063, ptr noundef %x1064, i8 noundef zeroext %1226, i32 noundef %1227, i32 noundef %1228)
  %1229 = load i8, ptr %x1064, align 1
  %1230 = load i32, ptr %x1031, align 4
  %1231 = load i32, ptr %x1046, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1065, ptr noundef %x1066, i8 noundef zeroext %1229, i32 noundef %1230, i32 noundef %1231)
  %1232 = load i8, ptr %x1066, align 1
  %1233 = load i32, ptr %x1033, align 4
  %1234 = load i32, ptr %x1043, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1067, ptr noundef %x1068, i8 noundef zeroext %1232, i32 noundef %1233, i32 noundef %1234)
  %1235 = load i8, ptr %x1068, align 1
  %1236 = load i32, ptr %x1035, align 4
  %1237 = load i32, ptr %x1051, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1069, ptr noundef %x1070, i8 noundef zeroext %1235, i32 noundef %1236, i32 noundef %1237)
  %1238 = load i8, ptr %x1070, align 1
  %1239 = load i32, ptr %x1037, align 4
  %1240 = load i8, ptr %x1052, align 1
  %conv123 = zext i8 %1240 to i32
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1071, ptr noundef %x1072, i8 noundef zeroext %1238, i32 noundef %1239, i32 noundef %conv123)
  %1241 = load i8, ptr %x1072, align 1
  %1242 = load i32, ptr %x1039, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1073, ptr noundef %x1074, i8 noundef zeroext %1241, i32 noundef %1242, i32 noundef 0)
  %1243 = load i8, ptr %x1074, align 1
  %1244 = load i32, ptr %x1041, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1075, ptr noundef %x1076, i8 noundef zeroext %1243, i32 noundef %1244, i32 noundef 0)
  %1245 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1077, ptr noundef %x1078, i32 noundef %1245, i32 noundef -1)
  %1246 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1079, ptr noundef %x1080, i32 noundef %1246, i32 noundef -1)
  %1247 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1081, ptr noundef %x1082, i32 noundef %1247, i32 noundef -1)
  %1248 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1083, ptr noundef %x1084, i32 noundef %1248, i32 noundef -1)
  %1249 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1085, ptr noundef %x1086, i32 noundef %1249, i32 noundef -1)
  %1250 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1087, ptr noundef %x1088, i32 noundef %1250, i32 noundef -1)
  %1251 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1089, ptr noundef %x1090, i32 noundef %1251, i32 noundef -1)
  %1252 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1091, ptr noundef %x1092, i32 noundef %1252, i32 noundef -2)
  %1253 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1093, ptr noundef %x1094, i32 noundef %1253, i32 noundef -1)
  %1254 = load i32, ptr %x1053, align 4
  call void @fiat_p384_mulx_u32(ptr noundef %x1095, ptr noundef %x1096, i32 noundef %1254, i32 noundef -1)
  %1255 = load i32, ptr %x1094, align 4
  %1256 = load i32, ptr %x1091, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1097, ptr noundef %x1098, i8 noundef zeroext 0, i32 noundef %1255, i32 noundef %1256)
  %1257 = load i8, ptr %x1098, align 1
  %1258 = load i32, ptr %x1092, align 4
  %1259 = load i32, ptr %x1089, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1099, ptr noundef %x1100, i8 noundef zeroext %1257, i32 noundef %1258, i32 noundef %1259)
  %1260 = load i8, ptr %x1100, align 1
  %1261 = load i32, ptr %x1090, align 4
  %1262 = load i32, ptr %x1087, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1101, ptr noundef %x1102, i8 noundef zeroext %1260, i32 noundef %1261, i32 noundef %1262)
  %1263 = load i8, ptr %x1102, align 1
  %1264 = load i32, ptr %x1088, align 4
  %1265 = load i32, ptr %x1085, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1103, ptr noundef %x1104, i8 noundef zeroext %1263, i32 noundef %1264, i32 noundef %1265)
  %1266 = load i8, ptr %x1104, align 1
  %1267 = load i32, ptr %x1086, align 4
  %1268 = load i32, ptr %x1083, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1105, ptr noundef %x1106, i8 noundef zeroext %1266, i32 noundef %1267, i32 noundef %1268)
  %1269 = load i8, ptr %x1106, align 1
  %1270 = load i32, ptr %x1084, align 4
  %1271 = load i32, ptr %x1081, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1107, ptr noundef %x1108, i8 noundef zeroext %1269, i32 noundef %1270, i32 noundef %1271)
  %1272 = load i8, ptr %x1108, align 1
  %1273 = load i32, ptr %x1082, align 4
  %1274 = load i32, ptr %x1079, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1109, ptr noundef %x1110, i8 noundef zeroext %1272, i32 noundef %1273, i32 noundef %1274)
  %1275 = load i8, ptr %x1110, align 1
  %1276 = load i32, ptr %x1080, align 4
  %1277 = load i32, ptr %x1077, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1111, ptr noundef %x1112, i8 noundef zeroext %1275, i32 noundef %1276, i32 noundef %1277)
  %1278 = load i32, ptr %x1053, align 4
  %1279 = load i32, ptr %x1095, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1113, ptr noundef %x1114, i8 noundef zeroext 0, i32 noundef %1278, i32 noundef %1279)
  %1280 = load i8, ptr %x1114, align 1
  %1281 = load i32, ptr %x1055, align 4
  %1282 = load i32, ptr %x1096, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1115, ptr noundef %x1116, i8 noundef zeroext %1280, i32 noundef %1281, i32 noundef %1282)
  %1283 = load i8, ptr %x1116, align 1
  %1284 = load i32, ptr %x1057, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1117, ptr noundef %x1118, i8 noundef zeroext %1283, i32 noundef %1284, i32 noundef 0)
  %1285 = load i8, ptr %x1118, align 1
  %1286 = load i32, ptr %x1059, align 4
  %1287 = load i32, ptr %x1093, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1119, ptr noundef %x1120, i8 noundef zeroext %1285, i32 noundef %1286, i32 noundef %1287)
  %1288 = load i8, ptr %x1120, align 1
  %1289 = load i32, ptr %x1061, align 4
  %1290 = load i32, ptr %x1097, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1121, ptr noundef %x1122, i8 noundef zeroext %1288, i32 noundef %1289, i32 noundef %1290)
  %1291 = load i8, ptr %x1122, align 1
  %1292 = load i32, ptr %x1063, align 4
  %1293 = load i32, ptr %x1099, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1123, ptr noundef %x1124, i8 noundef zeroext %1291, i32 noundef %1292, i32 noundef %1293)
  %1294 = load i8, ptr %x1124, align 1
  %1295 = load i32, ptr %x1065, align 4
  %1296 = load i32, ptr %x1101, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1125, ptr noundef %x1126, i8 noundef zeroext %1294, i32 noundef %1295, i32 noundef %1296)
  %1297 = load i8, ptr %x1126, align 1
  %1298 = load i32, ptr %x1067, align 4
  %1299 = load i32, ptr %x1103, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1127, ptr noundef %x1128, i8 noundef zeroext %1297, i32 noundef %1298, i32 noundef %1299)
  %1300 = load i8, ptr %x1128, align 1
  %1301 = load i32, ptr %x1069, align 4
  %1302 = load i32, ptr %x1105, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1129, ptr noundef %x1130, i8 noundef zeroext %1300, i32 noundef %1301, i32 noundef %1302)
  %1303 = load i8, ptr %x1130, align 1
  %1304 = load i32, ptr %x1071, align 4
  %1305 = load i32, ptr %x1107, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1131, ptr noundef %x1132, i8 noundef zeroext %1303, i32 noundef %1304, i32 noundef %1305)
  %1306 = load i8, ptr %x1132, align 1
  %1307 = load i32, ptr %x1073, align 4
  %1308 = load i32, ptr %x1109, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1133, ptr noundef %x1134, i8 noundef zeroext %1306, i32 noundef %1307, i32 noundef %1308)
  %1309 = load i8, ptr %x1134, align 1
  %1310 = load i32, ptr %x1075, align 4
  %1311 = load i32, ptr %x1111, align 4
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1135, ptr noundef %x1136, i8 noundef zeroext %1309, i32 noundef %1310, i32 noundef %1311)
  %1312 = load i8, ptr %x1136, align 1
  %1313 = load i8, ptr %x1076, align 1
  %conv124 = zext i8 %1313 to i32
  %1314 = load i8, ptr %x1042, align 1
  %conv125 = zext i8 %1314 to i32
  %add126 = add i32 %conv124, %conv125
  %1315 = load i8, ptr %x1112, align 1
  %conv127 = zext i8 %1315 to i32
  %1316 = load i32, ptr %x1078, align 4
  %add128 = add i32 %conv127, %1316
  call void @fiat_p384_addcarryx_u32(ptr noundef %x1137, ptr noundef %x1138, i8 noundef zeroext %1312, i32 noundef %add126, i32 noundef %add128)
  %1317 = load i32, ptr %x1115, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1139, ptr noundef %x1140, i8 noundef zeroext 0, i32 noundef %1317, i32 noundef -1)
  %1318 = load i8, ptr %x1140, align 1
  %1319 = load i32, ptr %x1117, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1141, ptr noundef %x1142, i8 noundef zeroext %1318, i32 noundef %1319, i32 noundef 0)
  %1320 = load i8, ptr %x1142, align 1
  %1321 = load i32, ptr %x1119, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1143, ptr noundef %x1144, i8 noundef zeroext %1320, i32 noundef %1321, i32 noundef 0)
  %1322 = load i8, ptr %x1144, align 1
  %1323 = load i32, ptr %x1121, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1145, ptr noundef %x1146, i8 noundef zeroext %1322, i32 noundef %1323, i32 noundef -1)
  %1324 = load i8, ptr %x1146, align 1
  %1325 = load i32, ptr %x1123, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1147, ptr noundef %x1148, i8 noundef zeroext %1324, i32 noundef %1325, i32 noundef -2)
  %1326 = load i8, ptr %x1148, align 1
  %1327 = load i32, ptr %x1125, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1149, ptr noundef %x1150, i8 noundef zeroext %1326, i32 noundef %1327, i32 noundef -1)
  %1328 = load i8, ptr %x1150, align 1
  %1329 = load i32, ptr %x1127, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1151, ptr noundef %x1152, i8 noundef zeroext %1328, i32 noundef %1329, i32 noundef -1)
  %1330 = load i8, ptr %x1152, align 1
  %1331 = load i32, ptr %x1129, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1153, ptr noundef %x1154, i8 noundef zeroext %1330, i32 noundef %1331, i32 noundef -1)
  %1332 = load i8, ptr %x1154, align 1
  %1333 = load i32, ptr %x1131, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1155, ptr noundef %x1156, i8 noundef zeroext %1332, i32 noundef %1333, i32 noundef -1)
  %1334 = load i8, ptr %x1156, align 1
  %1335 = load i32, ptr %x1133, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1157, ptr noundef %x1158, i8 noundef zeroext %1334, i32 noundef %1335, i32 noundef -1)
  %1336 = load i8, ptr %x1158, align 1
  %1337 = load i32, ptr %x1135, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1159, ptr noundef %x1160, i8 noundef zeroext %1336, i32 noundef %1337, i32 noundef -1)
  %1338 = load i8, ptr %x1160, align 1
  %1339 = load i32, ptr %x1137, align 4
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1161, ptr noundef %x1162, i8 noundef zeroext %1338, i32 noundef %1339, i32 noundef -1)
  %1340 = load i8, ptr %x1162, align 1
  %1341 = load i8, ptr %x1138, align 1
  %conv129 = zext i8 %1341 to i32
  call void @fiat_p384_subborrowx_u32(ptr noundef %x1163, ptr noundef %x1164, i8 noundef zeroext %1340, i32 noundef %conv129, i32 noundef 0)
  %1342 = load i8, ptr %x1164, align 1
  %1343 = load i32, ptr %x1139, align 4
  %1344 = load i32, ptr %x1115, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1165, i8 noundef zeroext %1342, i32 noundef %1343, i32 noundef %1344)
  %1345 = load i8, ptr %x1164, align 1
  %1346 = load i32, ptr %x1141, align 4
  %1347 = load i32, ptr %x1117, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1166, i8 noundef zeroext %1345, i32 noundef %1346, i32 noundef %1347)
  %1348 = load i8, ptr %x1164, align 1
  %1349 = load i32, ptr %x1143, align 4
  %1350 = load i32, ptr %x1119, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1167, i8 noundef zeroext %1348, i32 noundef %1349, i32 noundef %1350)
  %1351 = load i8, ptr %x1164, align 1
  %1352 = load i32, ptr %x1145, align 4
  %1353 = load i32, ptr %x1121, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1168, i8 noundef zeroext %1351, i32 noundef %1352, i32 noundef %1353)
  %1354 = load i8, ptr %x1164, align 1
  %1355 = load i32, ptr %x1147, align 4
  %1356 = load i32, ptr %x1123, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1169, i8 noundef zeroext %1354, i32 noundef %1355, i32 noundef %1356)
  %1357 = load i8, ptr %x1164, align 1
  %1358 = load i32, ptr %x1149, align 4
  %1359 = load i32, ptr %x1125, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1170, i8 noundef zeroext %1357, i32 noundef %1358, i32 noundef %1359)
  %1360 = load i8, ptr %x1164, align 1
  %1361 = load i32, ptr %x1151, align 4
  %1362 = load i32, ptr %x1127, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1171, i8 noundef zeroext %1360, i32 noundef %1361, i32 noundef %1362)
  %1363 = load i8, ptr %x1164, align 1
  %1364 = load i32, ptr %x1153, align 4
  %1365 = load i32, ptr %x1129, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1172, i8 noundef zeroext %1363, i32 noundef %1364, i32 noundef %1365)
  %1366 = load i8, ptr %x1164, align 1
  %1367 = load i32, ptr %x1155, align 4
  %1368 = load i32, ptr %x1131, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1173, i8 noundef zeroext %1366, i32 noundef %1367, i32 noundef %1368)
  %1369 = load i8, ptr %x1164, align 1
  %1370 = load i32, ptr %x1157, align 4
  %1371 = load i32, ptr %x1133, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1174, i8 noundef zeroext %1369, i32 noundef %1370, i32 noundef %1371)
  %1372 = load i8, ptr %x1164, align 1
  %1373 = load i32, ptr %x1159, align 4
  %1374 = load i32, ptr %x1135, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1175, i8 noundef zeroext %1372, i32 noundef %1373, i32 noundef %1374)
  %1375 = load i8, ptr %x1164, align 1
  %1376 = load i32, ptr %x1161, align 4
  %1377 = load i32, ptr %x1137, align 4
  call void @fiat_p384_cmovznz_u32(ptr noundef %x1176, i8 noundef zeroext %1375, i32 noundef %1376, i32 noundef %1377)
  %1378 = load i32, ptr %x1165, align 4
  %1379 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %1379, i64 0
  store i32 %1378, ptr %arrayidx130, align 4
  %1380 = load i32, ptr %x1166, align 4
  %1381 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %1381, i64 1
  store i32 %1380, ptr %arrayidx131, align 4
  %1382 = load i32, ptr %x1167, align 4
  %1383 = load ptr, ptr %out1.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %1383, i64 2
  store i32 %1382, ptr %arrayidx132, align 4
  %1384 = load i32, ptr %x1168, align 4
  %1385 = load ptr, ptr %out1.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %1385, i64 3
  store i32 %1384, ptr %arrayidx133, align 4
  %1386 = load i32, ptr %x1169, align 4
  %1387 = load ptr, ptr %out1.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %1387, i64 4
  store i32 %1386, ptr %arrayidx134, align 4
  %1388 = load i32, ptr %x1170, align 4
  %1389 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %1389, i64 5
  store i32 %1388, ptr %arrayidx135, align 4
  %1390 = load i32, ptr %x1171, align 4
  %1391 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %1391, i64 6
  store i32 %1390, ptr %arrayidx136, align 4
  %1392 = load i32, ptr %x1172, align 4
  %1393 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i32, ptr %1393, i64 7
  store i32 %1392, ptr %arrayidx137, align 4
  %1394 = load i32, ptr %x1173, align 4
  %1395 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %1395, i64 8
  store i32 %1394, ptr %arrayidx138, align 4
  %1396 = load i32, ptr %x1174, align 4
  %1397 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %1397, i64 9
  store i32 %1396, ptr %arrayidx139, align 4
  %1398 = load i32, ptr %x1175, align 4
  %1399 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %1399, i64 10
  store i32 %1398, ptr %arrayidx140, align 4
  %1400 = load i32, ptr %x1176, align 4
  %1401 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %1401, i64 11
  store i32 %1400, ptr %arrayidx141, align 4
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
