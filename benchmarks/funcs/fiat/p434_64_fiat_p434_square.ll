; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p434_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p434_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p434_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i8, align 1
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i8, align 1
  %x32 = alloca i64, align 8
  %x33 = alloca i8, align 1
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i8, align 1
  %x53 = alloca i64, align 8
  %x54 = alloca i8, align 1
  %x55 = alloca i64, align 8
  %x56 = alloca i8, align 1
  %x57 = alloca i64, align 8
  %x58 = alloca i8, align 1
  %x59 = alloca i64, align 8
  %x60 = alloca i8, align 1
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i8, align 1
  %x64 = alloca i64, align 8
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i8, align 1
  %x68 = alloca i64, align 8
  %x69 = alloca i8, align 1
  %x70 = alloca i64, align 8
  %x71 = alloca i8, align 1
  %x72 = alloca i64, align 8
  %x73 = alloca i8, align 1
  %x74 = alloca i64, align 8
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i8, align 1
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i64, align 8
  %x85 = alloca i64, align 8
  %x86 = alloca i64, align 8
  %x87 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i8, align 1
  %x94 = alloca i64, align 8
  %x95 = alloca i8, align 1
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i8, align 1
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i8, align 1
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i8, align 1
  %x115 = alloca i64, align 8
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i8, align 1
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x134 = alloca i64, align 8
  %x135 = alloca i64, align 8
  %x136 = alloca i8, align 1
  %x137 = alloca i64, align 8
  %x138 = alloca i8, align 1
  %x139 = alloca i64, align 8
  %x140 = alloca i8, align 1
  %x141 = alloca i64, align 8
  %x142 = alloca i8, align 1
  %x143 = alloca i64, align 8
  %x144 = alloca i8, align 1
  %x145 = alloca i64, align 8
  %x146 = alloca i8, align 1
  %x147 = alloca i64, align 8
  %x148 = alloca i64, align 8
  %x149 = alloca i8, align 1
  %x150 = alloca i64, align 8
  %x151 = alloca i8, align 1
  %x152 = alloca i64, align 8
  %x153 = alloca i8, align 1
  %x154 = alloca i64, align 8
  %x155 = alloca i8, align 1
  %x156 = alloca i64, align 8
  %x157 = alloca i8, align 1
  %x158 = alloca i64, align 8
  %x159 = alloca i8, align 1
  %x160 = alloca i64, align 8
  %x161 = alloca i8, align 1
  %x162 = alloca i64, align 8
  %x163 = alloca i8, align 1
  %x164 = alloca i64, align 8
  %x165 = alloca i64, align 8
  %x166 = alloca i64, align 8
  %x167 = alloca i64, align 8
  %x168 = alloca i64, align 8
  %x169 = alloca i64, align 8
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
  %x172 = alloca i64, align 8
  %x173 = alloca i64, align 8
  %x174 = alloca i64, align 8
  %x175 = alloca i64, align 8
  %x176 = alloca i64, align 8
  %x177 = alloca i64, align 8
  %x178 = alloca i64, align 8
  %x179 = alloca i64, align 8
  %x180 = alloca i8, align 1
  %x181 = alloca i64, align 8
  %x182 = alloca i8, align 1
  %x183 = alloca i64, align 8
  %x184 = alloca i8, align 1
  %x185 = alloca i64, align 8
  %x186 = alloca i8, align 1
  %x187 = alloca i64, align 8
  %x188 = alloca i8, align 1
  %x189 = alloca i64, align 8
  %x190 = alloca i8, align 1
  %x191 = alloca i64, align 8
  %x192 = alloca i64, align 8
  %x193 = alloca i8, align 1
  %x194 = alloca i64, align 8
  %x195 = alloca i8, align 1
  %x196 = alloca i64, align 8
  %x197 = alloca i8, align 1
  %x198 = alloca i64, align 8
  %x199 = alloca i8, align 1
  %x200 = alloca i64, align 8
  %x201 = alloca i8, align 1
  %x202 = alloca i64, align 8
  %x203 = alloca i8, align 1
  %x204 = alloca i64, align 8
  %x205 = alloca i8, align 1
  %x206 = alloca i64, align 8
  %x207 = alloca i8, align 1
  %x208 = alloca i64, align 8
  %x209 = alloca i64, align 8
  %x210 = alloca i64, align 8
  %x211 = alloca i64, align 8
  %x212 = alloca i64, align 8
  %x213 = alloca i64, align 8
  %x214 = alloca i64, align 8
  %x215 = alloca i64, align 8
  %x216 = alloca i64, align 8
  %x217 = alloca i64, align 8
  %x218 = alloca i64, align 8
  %x219 = alloca i64, align 8
  %x220 = alloca i64, align 8
  %x221 = alloca i64, align 8
  %x222 = alloca i64, align 8
  %x223 = alloca i8, align 1
  %x224 = alloca i64, align 8
  %x225 = alloca i8, align 1
  %x226 = alloca i64, align 8
  %x227 = alloca i8, align 1
  %x228 = alloca i64, align 8
  %x229 = alloca i8, align 1
  %x230 = alloca i64, align 8
  %x231 = alloca i8, align 1
  %x232 = alloca i64, align 8
  %x233 = alloca i8, align 1
  %x234 = alloca i64, align 8
  %x235 = alloca i64, align 8
  %x236 = alloca i8, align 1
  %x237 = alloca i64, align 8
  %x238 = alloca i8, align 1
  %x239 = alloca i64, align 8
  %x240 = alloca i8, align 1
  %x241 = alloca i64, align 8
  %x242 = alloca i8, align 1
  %x243 = alloca i64, align 8
  %x244 = alloca i8, align 1
  %x245 = alloca i64, align 8
  %x246 = alloca i8, align 1
  %x247 = alloca i64, align 8
  %x248 = alloca i8, align 1
  %x249 = alloca i64, align 8
  %x250 = alloca i8, align 1
  %x251 = alloca i64, align 8
  %x252 = alloca i64, align 8
  %x253 = alloca i64, align 8
  %x254 = alloca i64, align 8
  %x255 = alloca i64, align 8
  %x256 = alloca i64, align 8
  %x257 = alloca i64, align 8
  %x258 = alloca i64, align 8
  %x259 = alloca i64, align 8
  %x260 = alloca i64, align 8
  %x261 = alloca i64, align 8
  %x262 = alloca i64, align 8
  %x263 = alloca i64, align 8
  %x264 = alloca i64, align 8
  %x265 = alloca i64, align 8
  %x266 = alloca i64, align 8
  %x267 = alloca i8, align 1
  %x268 = alloca i64, align 8
  %x269 = alloca i8, align 1
  %x270 = alloca i64, align 8
  %x271 = alloca i8, align 1
  %x272 = alloca i64, align 8
  %x273 = alloca i8, align 1
  %x274 = alloca i64, align 8
  %x275 = alloca i8, align 1
  %x276 = alloca i64, align 8
  %x277 = alloca i8, align 1
  %x278 = alloca i64, align 8
  %x279 = alloca i64, align 8
  %x280 = alloca i8, align 1
  %x281 = alloca i64, align 8
  %x282 = alloca i8, align 1
  %x283 = alloca i64, align 8
  %x284 = alloca i8, align 1
  %x285 = alloca i64, align 8
  %x286 = alloca i8, align 1
  %x287 = alloca i64, align 8
  %x288 = alloca i8, align 1
  %x289 = alloca i64, align 8
  %x290 = alloca i8, align 1
  %x291 = alloca i64, align 8
  %x292 = alloca i8, align 1
  %x293 = alloca i64, align 8
  %x294 = alloca i8, align 1
  %x295 = alloca i64, align 8
  %x296 = alloca i64, align 8
  %x297 = alloca i64, align 8
  %x298 = alloca i64, align 8
  %x299 = alloca i64, align 8
  %x300 = alloca i64, align 8
  %x301 = alloca i64, align 8
  %x302 = alloca i64, align 8
  %x303 = alloca i64, align 8
  %x304 = alloca i64, align 8
  %x305 = alloca i64, align 8
  %x306 = alloca i64, align 8
  %x307 = alloca i64, align 8
  %x308 = alloca i64, align 8
  %x309 = alloca i64, align 8
  %x310 = alloca i8, align 1
  %x311 = alloca i64, align 8
  %x312 = alloca i8, align 1
  %x313 = alloca i64, align 8
  %x314 = alloca i8, align 1
  %x315 = alloca i64, align 8
  %x316 = alloca i8, align 1
  %x317 = alloca i64, align 8
  %x318 = alloca i8, align 1
  %x319 = alloca i64, align 8
  %x320 = alloca i8, align 1
  %x321 = alloca i64, align 8
  %x322 = alloca i64, align 8
  %x323 = alloca i8, align 1
  %x324 = alloca i64, align 8
  %x325 = alloca i8, align 1
  %x326 = alloca i64, align 8
  %x327 = alloca i8, align 1
  %x328 = alloca i64, align 8
  %x329 = alloca i8, align 1
  %x330 = alloca i64, align 8
  %x331 = alloca i8, align 1
  %x332 = alloca i64, align 8
  %x333 = alloca i8, align 1
  %x334 = alloca i64, align 8
  %x335 = alloca i8, align 1
  %x336 = alloca i64, align 8
  %x337 = alloca i8, align 1
  %x338 = alloca i64, align 8
  %x339 = alloca i64, align 8
  %x340 = alloca i64, align 8
  %x341 = alloca i64, align 8
  %x342 = alloca i64, align 8
  %x343 = alloca i64, align 8
  %x344 = alloca i64, align 8
  %x345 = alloca i64, align 8
  %x346 = alloca i64, align 8
  %x347 = alloca i64, align 8
  %x348 = alloca i64, align 8
  %x349 = alloca i64, align 8
  %x350 = alloca i64, align 8
  %x351 = alloca i64, align 8
  %x352 = alloca i64, align 8
  %x353 = alloca i64, align 8
  %x354 = alloca i8, align 1
  %x355 = alloca i64, align 8
  %x356 = alloca i8, align 1
  %x357 = alloca i64, align 8
  %x358 = alloca i8, align 1
  %x359 = alloca i64, align 8
  %x360 = alloca i8, align 1
  %x361 = alloca i64, align 8
  %x362 = alloca i8, align 1
  %x363 = alloca i64, align 8
  %x364 = alloca i8, align 1
  %x365 = alloca i64, align 8
  %x366 = alloca i64, align 8
  %x367 = alloca i8, align 1
  %x368 = alloca i64, align 8
  %x369 = alloca i8, align 1
  %x370 = alloca i64, align 8
  %x371 = alloca i8, align 1
  %x372 = alloca i64, align 8
  %x373 = alloca i8, align 1
  %x374 = alloca i64, align 8
  %x375 = alloca i8, align 1
  %x376 = alloca i64, align 8
  %x377 = alloca i8, align 1
  %x378 = alloca i64, align 8
  %x379 = alloca i8, align 1
  %x380 = alloca i64, align 8
  %x381 = alloca i8, align 1
  %x382 = alloca i64, align 8
  %x383 = alloca i64, align 8
  %x384 = alloca i64, align 8
  %x385 = alloca i64, align 8
  %x386 = alloca i64, align 8
  %x387 = alloca i64, align 8
  %x388 = alloca i64, align 8
  %x389 = alloca i64, align 8
  %x390 = alloca i64, align 8
  %x391 = alloca i64, align 8
  %x392 = alloca i64, align 8
  %x393 = alloca i64, align 8
  %x394 = alloca i64, align 8
  %x395 = alloca i64, align 8
  %x396 = alloca i64, align 8
  %x397 = alloca i8, align 1
  %x398 = alloca i64, align 8
  %x399 = alloca i8, align 1
  %x400 = alloca i64, align 8
  %x401 = alloca i8, align 1
  %x402 = alloca i64, align 8
  %x403 = alloca i8, align 1
  %x404 = alloca i64, align 8
  %x405 = alloca i8, align 1
  %x406 = alloca i64, align 8
  %x407 = alloca i8, align 1
  %x408 = alloca i64, align 8
  %x409 = alloca i64, align 8
  %x410 = alloca i8, align 1
  %x411 = alloca i64, align 8
  %x412 = alloca i8, align 1
  %x413 = alloca i64, align 8
  %x414 = alloca i8, align 1
  %x415 = alloca i64, align 8
  %x416 = alloca i8, align 1
  %x417 = alloca i64, align 8
  %x418 = alloca i8, align 1
  %x419 = alloca i64, align 8
  %x420 = alloca i8, align 1
  %x421 = alloca i64, align 8
  %x422 = alloca i8, align 1
  %x423 = alloca i64, align 8
  %x424 = alloca i8, align 1
  %x425 = alloca i64, align 8
  %x426 = alloca i64, align 8
  %x427 = alloca i64, align 8
  %x428 = alloca i64, align 8
  %x429 = alloca i64, align 8
  %x430 = alloca i64, align 8
  %x431 = alloca i64, align 8
  %x432 = alloca i64, align 8
  %x433 = alloca i64, align 8
  %x434 = alloca i64, align 8
  %x435 = alloca i64, align 8
  %x436 = alloca i64, align 8
  %x437 = alloca i64, align 8
  %x438 = alloca i64, align 8
  %x439 = alloca i64, align 8
  %x440 = alloca i64, align 8
  %x441 = alloca i8, align 1
  %x442 = alloca i64, align 8
  %x443 = alloca i8, align 1
  %x444 = alloca i64, align 8
  %x445 = alloca i8, align 1
  %x446 = alloca i64, align 8
  %x447 = alloca i8, align 1
  %x448 = alloca i64, align 8
  %x449 = alloca i8, align 1
  %x450 = alloca i64, align 8
  %x451 = alloca i8, align 1
  %x452 = alloca i64, align 8
  %x453 = alloca i64, align 8
  %x454 = alloca i8, align 1
  %x455 = alloca i64, align 8
  %x456 = alloca i8, align 1
  %x457 = alloca i64, align 8
  %x458 = alloca i8, align 1
  %x459 = alloca i64, align 8
  %x460 = alloca i8, align 1
  %x461 = alloca i64, align 8
  %x462 = alloca i8, align 1
  %x463 = alloca i64, align 8
  %x464 = alloca i8, align 1
  %x465 = alloca i64, align 8
  %x466 = alloca i8, align 1
  %x467 = alloca i64, align 8
  %x468 = alloca i8, align 1
  %x469 = alloca i64, align 8
  %x470 = alloca i64, align 8
  %x471 = alloca i64, align 8
  %x472 = alloca i64, align 8
  %x473 = alloca i64, align 8
  %x474 = alloca i64, align 8
  %x475 = alloca i64, align 8
  %x476 = alloca i64, align 8
  %x477 = alloca i64, align 8
  %x478 = alloca i64, align 8
  %x479 = alloca i64, align 8
  %x480 = alloca i64, align 8
  %x481 = alloca i64, align 8
  %x482 = alloca i64, align 8
  %x483 = alloca i64, align 8
  %x484 = alloca i8, align 1
  %x485 = alloca i64, align 8
  %x486 = alloca i8, align 1
  %x487 = alloca i64, align 8
  %x488 = alloca i8, align 1
  %x489 = alloca i64, align 8
  %x490 = alloca i8, align 1
  %x491 = alloca i64, align 8
  %x492 = alloca i8, align 1
  %x493 = alloca i64, align 8
  %x494 = alloca i8, align 1
  %x495 = alloca i64, align 8
  %x496 = alloca i64, align 8
  %x497 = alloca i8, align 1
  %x498 = alloca i64, align 8
  %x499 = alloca i8, align 1
  %x500 = alloca i64, align 8
  %x501 = alloca i8, align 1
  %x502 = alloca i64, align 8
  %x503 = alloca i8, align 1
  %x504 = alloca i64, align 8
  %x505 = alloca i8, align 1
  %x506 = alloca i64, align 8
  %x507 = alloca i8, align 1
  %x508 = alloca i64, align 8
  %x509 = alloca i8, align 1
  %x510 = alloca i64, align 8
  %x511 = alloca i8, align 1
  %x512 = alloca i64, align 8
  %x513 = alloca i64, align 8
  %x514 = alloca i64, align 8
  %x515 = alloca i64, align 8
  %x516 = alloca i64, align 8
  %x517 = alloca i64, align 8
  %x518 = alloca i64, align 8
  %x519 = alloca i64, align 8
  %x520 = alloca i64, align 8
  %x521 = alloca i64, align 8
  %x522 = alloca i64, align 8
  %x523 = alloca i64, align 8
  %x524 = alloca i64, align 8
  %x525 = alloca i64, align 8
  %x526 = alloca i64, align 8
  %x527 = alloca i64, align 8
  %x528 = alloca i8, align 1
  %x529 = alloca i64, align 8
  %x530 = alloca i8, align 1
  %x531 = alloca i64, align 8
  %x532 = alloca i8, align 1
  %x533 = alloca i64, align 8
  %x534 = alloca i8, align 1
  %x535 = alloca i64, align 8
  %x536 = alloca i8, align 1
  %x537 = alloca i64, align 8
  %x538 = alloca i8, align 1
  %x539 = alloca i64, align 8
  %x540 = alloca i64, align 8
  %x541 = alloca i8, align 1
  %x542 = alloca i64, align 8
  %x543 = alloca i8, align 1
  %x544 = alloca i64, align 8
  %x545 = alloca i8, align 1
  %x546 = alloca i64, align 8
  %x547 = alloca i8, align 1
  %x548 = alloca i64, align 8
  %x549 = alloca i8, align 1
  %x550 = alloca i64, align 8
  %x551 = alloca i8, align 1
  %x552 = alloca i64, align 8
  %x553 = alloca i8, align 1
  %x554 = alloca i64, align 8
  %x555 = alloca i8, align 1
  %x556 = alloca i64, align 8
  %x557 = alloca i64, align 8
  %x558 = alloca i64, align 8
  %x559 = alloca i64, align 8
  %x560 = alloca i64, align 8
  %x561 = alloca i64, align 8
  %x562 = alloca i64, align 8
  %x563 = alloca i64, align 8
  %x564 = alloca i64, align 8
  %x565 = alloca i64, align 8
  %x566 = alloca i64, align 8
  %x567 = alloca i64, align 8
  %x568 = alloca i64, align 8
  %x569 = alloca i64, align 8
  %x570 = alloca i64, align 8
  %x571 = alloca i8, align 1
  %x572 = alloca i64, align 8
  %x573 = alloca i8, align 1
  %x574 = alloca i64, align 8
  %x575 = alloca i8, align 1
  %x576 = alloca i64, align 8
  %x577 = alloca i8, align 1
  %x578 = alloca i64, align 8
  %x579 = alloca i8, align 1
  %x580 = alloca i64, align 8
  %x581 = alloca i8, align 1
  %x582 = alloca i64, align 8
  %x583 = alloca i64, align 8
  %x584 = alloca i8, align 1
  %x585 = alloca i64, align 8
  %x586 = alloca i8, align 1
  %x587 = alloca i64, align 8
  %x588 = alloca i8, align 1
  %x589 = alloca i64, align 8
  %x590 = alloca i8, align 1
  %x591 = alloca i64, align 8
  %x592 = alloca i8, align 1
  %x593 = alloca i64, align 8
  %x594 = alloca i8, align 1
  %x595 = alloca i64, align 8
  %x596 = alloca i8, align 1
  %x597 = alloca i64, align 8
  %x598 = alloca i8, align 1
  %x599 = alloca i64, align 8
  %x600 = alloca i64, align 8
  %x601 = alloca i8, align 1
  %x602 = alloca i64, align 8
  %x603 = alloca i8, align 1
  %x604 = alloca i64, align 8
  %x605 = alloca i8, align 1
  %x606 = alloca i64, align 8
  %x607 = alloca i8, align 1
  %x608 = alloca i64, align 8
  %x609 = alloca i8, align 1
  %x610 = alloca i64, align 8
  %x611 = alloca i8, align 1
  %x612 = alloca i64, align 8
  %x613 = alloca i8, align 1
  %x614 = alloca i64, align 8
  %x615 = alloca i8, align 1
  %x616 = alloca i64, align 8
  %x617 = alloca i64, align 8
  %x618 = alloca i64, align 8
  %x619 = alloca i64, align 8
  %x620 = alloca i64, align 8
  %x621 = alloca i64, align 8
  %x622 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 1
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 3
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 4
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 5
  %9 = load i64, ptr %arrayidx4, align 8
  store i64 %9, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 0
  %13 = load i64, ptr %arrayidx6, align 8
  store i64 %13, ptr %x7, align 8
  %14 = load i64, ptr %x7, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %15, i64 6
  %16 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x7, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %18, i64 5
  %19 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x10, ptr noundef %x11, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x7, align 8
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x12, ptr noundef %x13, i64 noundef %20, i64 noundef %22)
  %23 = load i64, ptr %x7, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x14, ptr noundef %x15, i64 noundef %23, i64 noundef %25)
  %26 = load i64, ptr %x7, align 8
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 2
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x16, ptr noundef %x17, i64 noundef %26, i64 noundef %28)
  %29 = load i64, ptr %x7, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %30, i64 1
  %31 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x18, ptr noundef %x19, i64 noundef %29, i64 noundef %31)
  %32 = load i64, ptr %x7, align 8
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 0
  %34 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %32, i64 noundef %34)
  %35 = load i64, ptr %x21, align 8
  %36 = load i64, ptr %x18, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x23, align 1
  %38 = load i64, ptr %x19, align 8
  %39 = load i64, ptr %x16, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %37, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x25, align 1
  %41 = load i64, ptr %x17, align 8
  %42 = load i64, ptr %x14, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x27, align 1
  %44 = load i64, ptr %x15, align 8
  %45 = load i64, ptr %x12, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %45)
  %46 = load i8, ptr %x29, align 1
  %47 = load i64, ptr %x13, align 8
  %48 = load i64, ptr %x10, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %48)
  %49 = load i8, ptr %x31, align 1
  %50 = load i64, ptr %x11, align 8
  %51 = load i64, ptr %x8, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %51)
  %52 = load i8, ptr %x33, align 1
  %conv = zext i8 %52 to i64
  %53 = load i64, ptr %x9, align 8
  %add = add i64 %conv, %53
  store i64 %add, ptr %x34, align 8
  %54 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x35, ptr noundef %x36, i64 noundef %54, i64 noundef 620258357900100)
  %55 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x37, ptr noundef %x38, i64 noundef %55, i64 noundef 7853257225132122198)
  %56 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x39, ptr noundef %x40, i64 noundef %56, i64 noundef 8918917783347572387)
  %57 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %57, i64 noundef -161717841442111489)
  %58 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %58, i64 noundef -1)
  %59 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %59, i64 noundef -1)
  %60 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %60, i64 noundef -1)
  %61 = load i64, ptr %x48, align 8
  %62 = load i64, ptr %x45, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext 0, i64 noundef %61, i64 noundef %62)
  %63 = load i8, ptr %x50, align 1
  %64 = load i64, ptr %x46, align 8
  %65 = load i64, ptr %x43, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %63, i64 noundef %64, i64 noundef %65)
  %66 = load i8, ptr %x52, align 1
  %67 = load i64, ptr %x44, align 8
  %68 = load i64, ptr %x41, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %66, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x54, align 1
  %70 = load i64, ptr %x42, align 8
  %71 = load i64, ptr %x39, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i8, ptr %x56, align 1
  %73 = load i64, ptr %x40, align 8
  %74 = load i64, ptr %x37, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %72, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x58, align 1
  %76 = load i64, ptr %x38, align 8
  %77 = load i64, ptr %x35, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %75, i64 noundef %76, i64 noundef %77)
  %78 = load i8, ptr %x60, align 1
  %conv14 = zext i8 %78 to i64
  %79 = load i64, ptr %x36, align 8
  %add15 = add i64 %conv14, %79
  store i64 %add15, ptr %x61, align 8
  %80 = load i64, ptr %x20, align 8
  %81 = load i64, ptr %x47, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x63, align 1
  %83 = load i64, ptr %x22, align 8
  %84 = load i64, ptr %x49, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x65, align 1
  %86 = load i64, ptr %x24, align 8
  %87 = load i64, ptr %x51, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %85, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x67, align 1
  %89 = load i64, ptr %x26, align 8
  %90 = load i64, ptr %x53, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %88, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x69, align 1
  %92 = load i64, ptr %x28, align 8
  %93 = load i64, ptr %x55, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x71, align 1
  %95 = load i64, ptr %x30, align 8
  %96 = load i64, ptr %x57, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %94, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x73, align 1
  %98 = load i64, ptr %x32, align 8
  %99 = load i64, ptr %x59, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %97, i64 noundef %98, i64 noundef %99)
  %100 = load i8, ptr %x75, align 1
  %101 = load i64, ptr %x34, align 8
  %102 = load i64, ptr %x61, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %100, i64 noundef %101, i64 noundef %102)
  %103 = load i64, ptr %x1, align 8
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %104, i64 6
  %105 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x78, ptr noundef %x79, i64 noundef %103, i64 noundef %105)
  %106 = load i64, ptr %x1, align 8
  %107 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %107, i64 5
  %108 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x80, ptr noundef %x81, i64 noundef %106, i64 noundef %108)
  %109 = load i64, ptr %x1, align 8
  %110 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %110, i64 4
  %111 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x82, ptr noundef %x83, i64 noundef %109, i64 noundef %111)
  %112 = load i64, ptr %x1, align 8
  %113 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %113, i64 3
  %114 = load i64, ptr %arrayidx19, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x84, ptr noundef %x85, i64 noundef %112, i64 noundef %114)
  %115 = load i64, ptr %x1, align 8
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x86, ptr noundef %x87, i64 noundef %115, i64 noundef %117)
  %118 = load i64, ptr %x1, align 8
  %119 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %119, i64 1
  %120 = load i64, ptr %arrayidx21, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x1, align 8
  %122 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %122, i64 0
  %123 = load i64, ptr %arrayidx22, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x90, ptr noundef %x91, i64 noundef %121, i64 noundef %123)
  %124 = load i64, ptr %x91, align 8
  %125 = load i64, ptr %x88, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext 0, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x93, align 1
  %127 = load i64, ptr %x89, align 8
  %128 = load i64, ptr %x86, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x95, align 1
  %130 = load i64, ptr %x87, align 8
  %131 = load i64, ptr %x84, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x97, align 1
  %133 = load i64, ptr %x85, align 8
  %134 = load i64, ptr %x82, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x99, align 1
  %136 = load i64, ptr %x83, align 8
  %137 = load i64, ptr %x80, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x101, align 1
  %139 = load i64, ptr %x81, align 8
  %140 = load i64, ptr %x78, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %138, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x103, align 1
  %conv23 = zext i8 %141 to i64
  %142 = load i64, ptr %x79, align 8
  %add24 = add i64 %conv23, %142
  store i64 %add24, ptr %x104, align 8
  %143 = load i64, ptr %x64, align 8
  %144 = load i64, ptr %x90, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext 0, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x106, align 1
  %146 = load i64, ptr %x66, align 8
  %147 = load i64, ptr %x92, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i8, ptr %x108, align 1
  %149 = load i64, ptr %x68, align 8
  %150 = load i64, ptr %x94, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %148, i64 noundef %149, i64 noundef %150)
  %151 = load i8, ptr %x110, align 1
  %152 = load i64, ptr %x70, align 8
  %153 = load i64, ptr %x96, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %151, i64 noundef %152, i64 noundef %153)
  %154 = load i8, ptr %x112, align 1
  %155 = load i64, ptr %x72, align 8
  %156 = load i64, ptr %x98, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %154, i64 noundef %155, i64 noundef %156)
  %157 = load i8, ptr %x114, align 1
  %158 = load i64, ptr %x74, align 8
  %159 = load i64, ptr %x100, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %157, i64 noundef %158, i64 noundef %159)
  %160 = load i8, ptr %x116, align 1
  %161 = load i64, ptr %x76, align 8
  %162 = load i64, ptr %x102, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %160, i64 noundef %161, i64 noundef %162)
  %163 = load i8, ptr %x118, align 1
  %164 = load i8, ptr %x77, align 1
  %conv25 = zext i8 %164 to i64
  %165 = load i64, ptr %x104, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %163, i64 noundef %conv25, i64 noundef %165)
  %166 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x121, ptr noundef %x122, i64 noundef %166, i64 noundef 620258357900100)
  %167 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x123, ptr noundef %x124, i64 noundef %167, i64 noundef 7853257225132122198)
  %168 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x125, ptr noundef %x126, i64 noundef %168, i64 noundef 8918917783347572387)
  %169 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x127, ptr noundef %x128, i64 noundef %169, i64 noundef -161717841442111489)
  %170 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x129, ptr noundef %x130, i64 noundef %170, i64 noundef -1)
  %171 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x131, ptr noundef %x132, i64 noundef %171, i64 noundef -1)
  %172 = load i64, ptr %x105, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x133, ptr noundef %x134, i64 noundef %172, i64 noundef -1)
  %173 = load i64, ptr %x134, align 8
  %174 = load i64, ptr %x131, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext 0, i64 noundef %173, i64 noundef %174)
  %175 = load i8, ptr %x136, align 1
  %176 = load i64, ptr %x132, align 8
  %177 = load i64, ptr %x129, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %175, i64 noundef %176, i64 noundef %177)
  %178 = load i8, ptr %x138, align 1
  %179 = load i64, ptr %x130, align 8
  %180 = load i64, ptr %x127, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %178, i64 noundef %179, i64 noundef %180)
  %181 = load i8, ptr %x140, align 1
  %182 = load i64, ptr %x128, align 8
  %183 = load i64, ptr %x125, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %181, i64 noundef %182, i64 noundef %183)
  %184 = load i8, ptr %x142, align 1
  %185 = load i64, ptr %x126, align 8
  %186 = load i64, ptr %x123, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %184, i64 noundef %185, i64 noundef %186)
  %187 = load i8, ptr %x144, align 1
  %188 = load i64, ptr %x124, align 8
  %189 = load i64, ptr %x121, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %187, i64 noundef %188, i64 noundef %189)
  %190 = load i8, ptr %x146, align 1
  %conv26 = zext i8 %190 to i64
  %191 = load i64, ptr %x122, align 8
  %add27 = add i64 %conv26, %191
  store i64 %add27, ptr %x147, align 8
  %192 = load i64, ptr %x105, align 8
  %193 = load i64, ptr %x133, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext 0, i64 noundef %192, i64 noundef %193)
  %194 = load i8, ptr %x149, align 1
  %195 = load i64, ptr %x107, align 8
  %196 = load i64, ptr %x135, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %194, i64 noundef %195, i64 noundef %196)
  %197 = load i8, ptr %x151, align 1
  %198 = load i64, ptr %x109, align 8
  %199 = load i64, ptr %x137, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %197, i64 noundef %198, i64 noundef %199)
  %200 = load i8, ptr %x153, align 1
  %201 = load i64, ptr %x111, align 8
  %202 = load i64, ptr %x139, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %200, i64 noundef %201, i64 noundef %202)
  %203 = load i8, ptr %x155, align 1
  %204 = load i64, ptr %x113, align 8
  %205 = load i64, ptr %x141, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %203, i64 noundef %204, i64 noundef %205)
  %206 = load i8, ptr %x157, align 1
  %207 = load i64, ptr %x115, align 8
  %208 = load i64, ptr %x143, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %206, i64 noundef %207, i64 noundef %208)
  %209 = load i8, ptr %x159, align 1
  %210 = load i64, ptr %x117, align 8
  %211 = load i64, ptr %x145, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %209, i64 noundef %210, i64 noundef %211)
  %212 = load i8, ptr %x161, align 1
  %213 = load i64, ptr %x119, align 8
  %214 = load i64, ptr %x147, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %212, i64 noundef %213, i64 noundef %214)
  %215 = load i8, ptr %x163, align 1
  %conv28 = zext i8 %215 to i64
  %216 = load i8, ptr %x120, align 1
  %conv29 = zext i8 %216 to i64
  %add30 = add i64 %conv28, %conv29
  store i64 %add30, ptr %x164, align 8
  %217 = load i64, ptr %x2, align 8
  %218 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %218, i64 6
  %219 = load i64, ptr %arrayidx31, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x165, ptr noundef %x166, i64 noundef %217, i64 noundef %219)
  %220 = load i64, ptr %x2, align 8
  %221 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %221, i64 5
  %222 = load i64, ptr %arrayidx32, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x167, ptr noundef %x168, i64 noundef %220, i64 noundef %222)
  %223 = load i64, ptr %x2, align 8
  %224 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %224, i64 4
  %225 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x169, ptr noundef %x170, i64 noundef %223, i64 noundef %225)
  %226 = load i64, ptr %x2, align 8
  %227 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %227, i64 3
  %228 = load i64, ptr %arrayidx34, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x171, ptr noundef %x172, i64 noundef %226, i64 noundef %228)
  %229 = load i64, ptr %x2, align 8
  %230 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %230, i64 2
  %231 = load i64, ptr %arrayidx35, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x173, ptr noundef %x174, i64 noundef %229, i64 noundef %231)
  %232 = load i64, ptr %x2, align 8
  %233 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %233, i64 1
  %234 = load i64, ptr %arrayidx36, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x175, ptr noundef %x176, i64 noundef %232, i64 noundef %234)
  %235 = load i64, ptr %x2, align 8
  %236 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %236, i64 0
  %237 = load i64, ptr %arrayidx37, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x177, ptr noundef %x178, i64 noundef %235, i64 noundef %237)
  %238 = load i64, ptr %x178, align 8
  %239 = load i64, ptr %x175, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext 0, i64 noundef %238, i64 noundef %239)
  %240 = load i8, ptr %x180, align 1
  %241 = load i64, ptr %x176, align 8
  %242 = load i64, ptr %x173, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %240, i64 noundef %241, i64 noundef %242)
  %243 = load i8, ptr %x182, align 1
  %244 = load i64, ptr %x174, align 8
  %245 = load i64, ptr %x171, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %243, i64 noundef %244, i64 noundef %245)
  %246 = load i8, ptr %x184, align 1
  %247 = load i64, ptr %x172, align 8
  %248 = load i64, ptr %x169, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %246, i64 noundef %247, i64 noundef %248)
  %249 = load i8, ptr %x186, align 1
  %250 = load i64, ptr %x170, align 8
  %251 = load i64, ptr %x167, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %249, i64 noundef %250, i64 noundef %251)
  %252 = load i8, ptr %x188, align 1
  %253 = load i64, ptr %x168, align 8
  %254 = load i64, ptr %x165, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %252, i64 noundef %253, i64 noundef %254)
  %255 = load i8, ptr %x190, align 1
  %conv38 = zext i8 %255 to i64
  %256 = load i64, ptr %x166, align 8
  %add39 = add i64 %conv38, %256
  store i64 %add39, ptr %x191, align 8
  %257 = load i64, ptr %x150, align 8
  %258 = load i64, ptr %x177, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext 0, i64 noundef %257, i64 noundef %258)
  %259 = load i8, ptr %x193, align 1
  %260 = load i64, ptr %x152, align 8
  %261 = load i64, ptr %x179, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %259, i64 noundef %260, i64 noundef %261)
  %262 = load i8, ptr %x195, align 1
  %263 = load i64, ptr %x154, align 8
  %264 = load i64, ptr %x181, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %262, i64 noundef %263, i64 noundef %264)
  %265 = load i8, ptr %x197, align 1
  %266 = load i64, ptr %x156, align 8
  %267 = load i64, ptr %x183, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %265, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x199, align 1
  %269 = load i64, ptr %x158, align 8
  %270 = load i64, ptr %x185, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i8, ptr %x201, align 1
  %272 = load i64, ptr %x160, align 8
  %273 = load i64, ptr %x187, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %271, i64 noundef %272, i64 noundef %273)
  %274 = load i8, ptr %x203, align 1
  %275 = load i64, ptr %x162, align 8
  %276 = load i64, ptr %x189, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %274, i64 noundef %275, i64 noundef %276)
  %277 = load i8, ptr %x205, align 1
  %278 = load i64, ptr %x164, align 8
  %279 = load i64, ptr %x191, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext %277, i64 noundef %278, i64 noundef %279)
  %280 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x208, ptr noundef %x209, i64 noundef %280, i64 noundef 620258357900100)
  %281 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x210, ptr noundef %x211, i64 noundef %281, i64 noundef 7853257225132122198)
  %282 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x212, ptr noundef %x213, i64 noundef %282, i64 noundef 8918917783347572387)
  %283 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x214, ptr noundef %x215, i64 noundef %283, i64 noundef -161717841442111489)
  %284 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x216, ptr noundef %x217, i64 noundef %284, i64 noundef -1)
  %285 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x218, ptr noundef %x219, i64 noundef %285, i64 noundef -1)
  %286 = load i64, ptr %x192, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x220, ptr noundef %x221, i64 noundef %286, i64 noundef -1)
  %287 = load i64, ptr %x221, align 8
  %288 = load i64, ptr %x218, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext 0, i64 noundef %287, i64 noundef %288)
  %289 = load i8, ptr %x223, align 1
  %290 = load i64, ptr %x219, align 8
  %291 = load i64, ptr %x216, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %289, i64 noundef %290, i64 noundef %291)
  %292 = load i8, ptr %x225, align 1
  %293 = load i64, ptr %x217, align 8
  %294 = load i64, ptr %x214, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %292, i64 noundef %293, i64 noundef %294)
  %295 = load i8, ptr %x227, align 1
  %296 = load i64, ptr %x215, align 8
  %297 = load i64, ptr %x212, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %295, i64 noundef %296, i64 noundef %297)
  %298 = load i8, ptr %x229, align 1
  %299 = load i64, ptr %x213, align 8
  %300 = load i64, ptr %x210, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %298, i64 noundef %299, i64 noundef %300)
  %301 = load i8, ptr %x231, align 1
  %302 = load i64, ptr %x211, align 8
  %303 = load i64, ptr %x208, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %301, i64 noundef %302, i64 noundef %303)
  %304 = load i8, ptr %x233, align 1
  %conv40 = zext i8 %304 to i64
  %305 = load i64, ptr %x209, align 8
  %add41 = add i64 %conv40, %305
  store i64 %add41, ptr %x234, align 8
  %306 = load i64, ptr %x192, align 8
  %307 = load i64, ptr %x220, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext 0, i64 noundef %306, i64 noundef %307)
  %308 = load i8, ptr %x236, align 1
  %309 = load i64, ptr %x194, align 8
  %310 = load i64, ptr %x222, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x238, align 1
  %312 = load i64, ptr %x196, align 8
  %313 = load i64, ptr %x224, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x240, align 1
  %315 = load i64, ptr %x198, align 8
  %316 = load i64, ptr %x226, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %314, i64 noundef %315, i64 noundef %316)
  %317 = load i8, ptr %x242, align 1
  %318 = load i64, ptr %x200, align 8
  %319 = load i64, ptr %x228, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %317, i64 noundef %318, i64 noundef %319)
  %320 = load i8, ptr %x244, align 1
  %321 = load i64, ptr %x202, align 8
  %322 = load i64, ptr %x230, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x245, ptr noundef %x246, i8 noundef zeroext %320, i64 noundef %321, i64 noundef %322)
  %323 = load i8, ptr %x246, align 1
  %324 = load i64, ptr %x204, align 8
  %325 = load i64, ptr %x232, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x247, ptr noundef %x248, i8 noundef zeroext %323, i64 noundef %324, i64 noundef %325)
  %326 = load i8, ptr %x248, align 1
  %327 = load i64, ptr %x206, align 8
  %328 = load i64, ptr %x234, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext %326, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x250, align 1
  %conv42 = zext i8 %329 to i64
  %330 = load i8, ptr %x207, align 1
  %conv43 = zext i8 %330 to i64
  %add44 = add i64 %conv42, %conv43
  store i64 %add44, ptr %x251, align 8
  %331 = load i64, ptr %x3, align 8
  %332 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %332, i64 6
  %333 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x252, ptr noundef %x253, i64 noundef %331, i64 noundef %333)
  %334 = load i64, ptr %x3, align 8
  %335 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %335, i64 5
  %336 = load i64, ptr %arrayidx46, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x254, ptr noundef %x255, i64 noundef %334, i64 noundef %336)
  %337 = load i64, ptr %x3, align 8
  %338 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %338, i64 4
  %339 = load i64, ptr %arrayidx47, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x256, ptr noundef %x257, i64 noundef %337, i64 noundef %339)
  %340 = load i64, ptr %x3, align 8
  %341 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %341, i64 3
  %342 = load i64, ptr %arrayidx48, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x258, ptr noundef %x259, i64 noundef %340, i64 noundef %342)
  %343 = load i64, ptr %x3, align 8
  %344 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %344, i64 2
  %345 = load i64, ptr %arrayidx49, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x260, ptr noundef %x261, i64 noundef %343, i64 noundef %345)
  %346 = load i64, ptr %x3, align 8
  %347 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %347, i64 1
  %348 = load i64, ptr %arrayidx50, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %346, i64 noundef %348)
  %349 = load i64, ptr %x3, align 8
  %350 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %350, i64 0
  %351 = load i64, ptr %arrayidx51, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x264, ptr noundef %x265, i64 noundef %349, i64 noundef %351)
  %352 = load i64, ptr %x265, align 8
  %353 = load i64, ptr %x262, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext 0, i64 noundef %352, i64 noundef %353)
  %354 = load i8, ptr %x267, align 1
  %355 = load i64, ptr %x263, align 8
  %356 = load i64, ptr %x260, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %354, i64 noundef %355, i64 noundef %356)
  %357 = load i8, ptr %x269, align 1
  %358 = load i64, ptr %x261, align 8
  %359 = load i64, ptr %x258, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %357, i64 noundef %358, i64 noundef %359)
  %360 = load i8, ptr %x271, align 1
  %361 = load i64, ptr %x259, align 8
  %362 = load i64, ptr %x256, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %360, i64 noundef %361, i64 noundef %362)
  %363 = load i8, ptr %x273, align 1
  %364 = load i64, ptr %x257, align 8
  %365 = load i64, ptr %x254, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %363, i64 noundef %364, i64 noundef %365)
  %366 = load i8, ptr %x275, align 1
  %367 = load i64, ptr %x255, align 8
  %368 = load i64, ptr %x252, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %366, i64 noundef %367, i64 noundef %368)
  %369 = load i8, ptr %x277, align 1
  %conv52 = zext i8 %369 to i64
  %370 = load i64, ptr %x253, align 8
  %add53 = add i64 %conv52, %370
  store i64 %add53, ptr %x278, align 8
  %371 = load i64, ptr %x237, align 8
  %372 = load i64, ptr %x264, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext 0, i64 noundef %371, i64 noundef %372)
  %373 = load i8, ptr %x280, align 1
  %374 = load i64, ptr %x239, align 8
  %375 = load i64, ptr %x266, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x281, ptr noundef %x282, i8 noundef zeroext %373, i64 noundef %374, i64 noundef %375)
  %376 = load i8, ptr %x282, align 1
  %377 = load i64, ptr %x241, align 8
  %378 = load i64, ptr %x268, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x283, ptr noundef %x284, i8 noundef zeroext %376, i64 noundef %377, i64 noundef %378)
  %379 = load i8, ptr %x284, align 1
  %380 = load i64, ptr %x243, align 8
  %381 = load i64, ptr %x270, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext %379, i64 noundef %380, i64 noundef %381)
  %382 = load i8, ptr %x286, align 1
  %383 = load i64, ptr %x245, align 8
  %384 = load i64, ptr %x272, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext %382, i64 noundef %383, i64 noundef %384)
  %385 = load i8, ptr %x288, align 1
  %386 = load i64, ptr %x247, align 8
  %387 = load i64, ptr %x274, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %385, i64 noundef %386, i64 noundef %387)
  %388 = load i8, ptr %x290, align 1
  %389 = load i64, ptr %x249, align 8
  %390 = load i64, ptr %x276, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %388, i64 noundef %389, i64 noundef %390)
  %391 = load i8, ptr %x292, align 1
  %392 = load i64, ptr %x251, align 8
  %393 = load i64, ptr %x278, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %391, i64 noundef %392, i64 noundef %393)
  %394 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x295, ptr noundef %x296, i64 noundef %394, i64 noundef 620258357900100)
  %395 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x297, ptr noundef %x298, i64 noundef %395, i64 noundef 7853257225132122198)
  %396 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x299, ptr noundef %x300, i64 noundef %396, i64 noundef 8918917783347572387)
  %397 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x301, ptr noundef %x302, i64 noundef %397, i64 noundef -161717841442111489)
  %398 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x303, ptr noundef %x304, i64 noundef %398, i64 noundef -1)
  %399 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x305, ptr noundef %x306, i64 noundef %399, i64 noundef -1)
  %400 = load i64, ptr %x279, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x307, ptr noundef %x308, i64 noundef %400, i64 noundef -1)
  %401 = load i64, ptr %x308, align 8
  %402 = load i64, ptr %x305, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext 0, i64 noundef %401, i64 noundef %402)
  %403 = load i8, ptr %x310, align 1
  %404 = load i64, ptr %x306, align 8
  %405 = load i64, ptr %x303, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %403, i64 noundef %404, i64 noundef %405)
  %406 = load i8, ptr %x312, align 1
  %407 = load i64, ptr %x304, align 8
  %408 = load i64, ptr %x301, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %406, i64 noundef %407, i64 noundef %408)
  %409 = load i8, ptr %x314, align 1
  %410 = load i64, ptr %x302, align 8
  %411 = load i64, ptr %x299, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %409, i64 noundef %410, i64 noundef %411)
  %412 = load i8, ptr %x316, align 1
  %413 = load i64, ptr %x300, align 8
  %414 = load i64, ptr %x297, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %412, i64 noundef %413, i64 noundef %414)
  %415 = load i8, ptr %x318, align 1
  %416 = load i64, ptr %x298, align 8
  %417 = load i64, ptr %x295, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %415, i64 noundef %416, i64 noundef %417)
  %418 = load i8, ptr %x320, align 1
  %conv54 = zext i8 %418 to i64
  %419 = load i64, ptr %x296, align 8
  %add55 = add i64 %conv54, %419
  store i64 %add55, ptr %x321, align 8
  %420 = load i64, ptr %x279, align 8
  %421 = load i64, ptr %x307, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext 0, i64 noundef %420, i64 noundef %421)
  %422 = load i8, ptr %x323, align 1
  %423 = load i64, ptr %x281, align 8
  %424 = load i64, ptr %x309, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %422, i64 noundef %423, i64 noundef %424)
  %425 = load i8, ptr %x325, align 1
  %426 = load i64, ptr %x283, align 8
  %427 = load i64, ptr %x311, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %425, i64 noundef %426, i64 noundef %427)
  %428 = load i8, ptr %x327, align 1
  %429 = load i64, ptr %x285, align 8
  %430 = load i64, ptr %x313, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %428, i64 noundef %429, i64 noundef %430)
  %431 = load i8, ptr %x329, align 1
  %432 = load i64, ptr %x287, align 8
  %433 = load i64, ptr %x315, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %431, i64 noundef %432, i64 noundef %433)
  %434 = load i8, ptr %x331, align 1
  %435 = load i64, ptr %x289, align 8
  %436 = load i64, ptr %x317, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %434, i64 noundef %435, i64 noundef %436)
  %437 = load i8, ptr %x333, align 1
  %438 = load i64, ptr %x291, align 8
  %439 = load i64, ptr %x319, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %437, i64 noundef %438, i64 noundef %439)
  %440 = load i8, ptr %x335, align 1
  %441 = load i64, ptr %x293, align 8
  %442 = load i64, ptr %x321, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %440, i64 noundef %441, i64 noundef %442)
  %443 = load i8, ptr %x337, align 1
  %conv56 = zext i8 %443 to i64
  %444 = load i8, ptr %x294, align 1
  %conv57 = zext i8 %444 to i64
  %add58 = add i64 %conv56, %conv57
  store i64 %add58, ptr %x338, align 8
  %445 = load i64, ptr %x4, align 8
  %446 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %446, i64 6
  %447 = load i64, ptr %arrayidx59, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x339, ptr noundef %x340, i64 noundef %445, i64 noundef %447)
  %448 = load i64, ptr %x4, align 8
  %449 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %449, i64 5
  %450 = load i64, ptr %arrayidx60, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x341, ptr noundef %x342, i64 noundef %448, i64 noundef %450)
  %451 = load i64, ptr %x4, align 8
  %452 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i64, ptr %452, i64 4
  %453 = load i64, ptr %arrayidx61, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x343, ptr noundef %x344, i64 noundef %451, i64 noundef %453)
  %454 = load i64, ptr %x4, align 8
  %455 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %455, i64 3
  %456 = load i64, ptr %arrayidx62, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x345, ptr noundef %x346, i64 noundef %454, i64 noundef %456)
  %457 = load i64, ptr %x4, align 8
  %458 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %458, i64 2
  %459 = load i64, ptr %arrayidx63, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x347, ptr noundef %x348, i64 noundef %457, i64 noundef %459)
  %460 = load i64, ptr %x4, align 8
  %461 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %461, i64 1
  %462 = load i64, ptr %arrayidx64, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x349, ptr noundef %x350, i64 noundef %460, i64 noundef %462)
  %463 = load i64, ptr %x4, align 8
  %464 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %464, i64 0
  %465 = load i64, ptr %arrayidx65, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x351, ptr noundef %x352, i64 noundef %463, i64 noundef %465)
  %466 = load i64, ptr %x352, align 8
  %467 = load i64, ptr %x349, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext 0, i64 noundef %466, i64 noundef %467)
  %468 = load i8, ptr %x354, align 1
  %469 = load i64, ptr %x350, align 8
  %470 = load i64, ptr %x347, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %468, i64 noundef %469, i64 noundef %470)
  %471 = load i8, ptr %x356, align 1
  %472 = load i64, ptr %x348, align 8
  %473 = load i64, ptr %x345, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %471, i64 noundef %472, i64 noundef %473)
  %474 = load i8, ptr %x358, align 1
  %475 = load i64, ptr %x346, align 8
  %476 = load i64, ptr %x343, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %474, i64 noundef %475, i64 noundef %476)
  %477 = load i8, ptr %x360, align 1
  %478 = load i64, ptr %x344, align 8
  %479 = load i64, ptr %x341, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %477, i64 noundef %478, i64 noundef %479)
  %480 = load i8, ptr %x362, align 1
  %481 = load i64, ptr %x342, align 8
  %482 = load i64, ptr %x339, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %480, i64 noundef %481, i64 noundef %482)
  %483 = load i8, ptr %x364, align 1
  %conv66 = zext i8 %483 to i64
  %484 = load i64, ptr %x340, align 8
  %add67 = add i64 %conv66, %484
  store i64 %add67, ptr %x365, align 8
  %485 = load i64, ptr %x324, align 8
  %486 = load i64, ptr %x351, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext 0, i64 noundef %485, i64 noundef %486)
  %487 = load i8, ptr %x367, align 1
  %488 = load i64, ptr %x326, align 8
  %489 = load i64, ptr %x353, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %487, i64 noundef %488, i64 noundef %489)
  %490 = load i8, ptr %x369, align 1
  %491 = load i64, ptr %x328, align 8
  %492 = load i64, ptr %x355, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %490, i64 noundef %491, i64 noundef %492)
  %493 = load i8, ptr %x371, align 1
  %494 = load i64, ptr %x330, align 8
  %495 = load i64, ptr %x357, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %493, i64 noundef %494, i64 noundef %495)
  %496 = load i8, ptr %x373, align 1
  %497 = load i64, ptr %x332, align 8
  %498 = load i64, ptr %x359, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %496, i64 noundef %497, i64 noundef %498)
  %499 = load i8, ptr %x375, align 1
  %500 = load i64, ptr %x334, align 8
  %501 = load i64, ptr %x361, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %499, i64 noundef %500, i64 noundef %501)
  %502 = load i8, ptr %x377, align 1
  %503 = load i64, ptr %x336, align 8
  %504 = load i64, ptr %x363, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %502, i64 noundef %503, i64 noundef %504)
  %505 = load i8, ptr %x379, align 1
  %506 = load i64, ptr %x338, align 8
  %507 = load i64, ptr %x365, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext %505, i64 noundef %506, i64 noundef %507)
  %508 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x382, ptr noundef %x383, i64 noundef %508, i64 noundef 620258357900100)
  %509 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x384, ptr noundef %x385, i64 noundef %509, i64 noundef 7853257225132122198)
  %510 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x386, ptr noundef %x387, i64 noundef %510, i64 noundef 8918917783347572387)
  %511 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x388, ptr noundef %x389, i64 noundef %511, i64 noundef -161717841442111489)
  %512 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x390, ptr noundef %x391, i64 noundef %512, i64 noundef -1)
  %513 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x392, ptr noundef %x393, i64 noundef %513, i64 noundef -1)
  %514 = load i64, ptr %x366, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x394, ptr noundef %x395, i64 noundef %514, i64 noundef -1)
  %515 = load i64, ptr %x395, align 8
  %516 = load i64, ptr %x392, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x396, ptr noundef %x397, i8 noundef zeroext 0, i64 noundef %515, i64 noundef %516)
  %517 = load i8, ptr %x397, align 1
  %518 = load i64, ptr %x393, align 8
  %519 = load i64, ptr %x390, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x398, ptr noundef %x399, i8 noundef zeroext %517, i64 noundef %518, i64 noundef %519)
  %520 = load i8, ptr %x399, align 1
  %521 = load i64, ptr %x391, align 8
  %522 = load i64, ptr %x388, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x400, ptr noundef %x401, i8 noundef zeroext %520, i64 noundef %521, i64 noundef %522)
  %523 = load i8, ptr %x401, align 1
  %524 = load i64, ptr %x389, align 8
  %525 = load i64, ptr %x386, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x402, ptr noundef %x403, i8 noundef zeroext %523, i64 noundef %524, i64 noundef %525)
  %526 = load i8, ptr %x403, align 1
  %527 = load i64, ptr %x387, align 8
  %528 = load i64, ptr %x384, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x404, ptr noundef %x405, i8 noundef zeroext %526, i64 noundef %527, i64 noundef %528)
  %529 = load i8, ptr %x405, align 1
  %530 = load i64, ptr %x385, align 8
  %531 = load i64, ptr %x382, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext %529, i64 noundef %530, i64 noundef %531)
  %532 = load i8, ptr %x407, align 1
  %conv68 = zext i8 %532 to i64
  %533 = load i64, ptr %x383, align 8
  %add69 = add i64 %conv68, %533
  store i64 %add69, ptr %x408, align 8
  %534 = load i64, ptr %x366, align 8
  %535 = load i64, ptr %x394, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext 0, i64 noundef %534, i64 noundef %535)
  %536 = load i8, ptr %x410, align 1
  %537 = load i64, ptr %x368, align 8
  %538 = load i64, ptr %x396, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %536, i64 noundef %537, i64 noundef %538)
  %539 = load i8, ptr %x412, align 1
  %540 = load i64, ptr %x370, align 8
  %541 = load i64, ptr %x398, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %539, i64 noundef %540, i64 noundef %541)
  %542 = load i8, ptr %x414, align 1
  %543 = load i64, ptr %x372, align 8
  %544 = load i64, ptr %x400, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %542, i64 noundef %543, i64 noundef %544)
  %545 = load i8, ptr %x416, align 1
  %546 = load i64, ptr %x374, align 8
  %547 = load i64, ptr %x402, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %545, i64 noundef %546, i64 noundef %547)
  %548 = load i8, ptr %x418, align 1
  %549 = load i64, ptr %x376, align 8
  %550 = load i64, ptr %x404, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %548, i64 noundef %549, i64 noundef %550)
  %551 = load i8, ptr %x420, align 1
  %552 = load i64, ptr %x378, align 8
  %553 = load i64, ptr %x406, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext %551, i64 noundef %552, i64 noundef %553)
  %554 = load i8, ptr %x422, align 1
  %555 = load i64, ptr %x380, align 8
  %556 = load i64, ptr %x408, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x423, ptr noundef %x424, i8 noundef zeroext %554, i64 noundef %555, i64 noundef %556)
  %557 = load i8, ptr %x424, align 1
  %conv70 = zext i8 %557 to i64
  %558 = load i8, ptr %x381, align 1
  %conv71 = zext i8 %558 to i64
  %add72 = add i64 %conv70, %conv71
  store i64 %add72, ptr %x425, align 8
  %559 = load i64, ptr %x5, align 8
  %560 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %560, i64 6
  %561 = load i64, ptr %arrayidx73, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x426, ptr noundef %x427, i64 noundef %559, i64 noundef %561)
  %562 = load i64, ptr %x5, align 8
  %563 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %563, i64 5
  %564 = load i64, ptr %arrayidx74, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x428, ptr noundef %x429, i64 noundef %562, i64 noundef %564)
  %565 = load i64, ptr %x5, align 8
  %566 = load ptr, ptr %arg1.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %566, i64 4
  %567 = load i64, ptr %arrayidx75, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x430, ptr noundef %x431, i64 noundef %565, i64 noundef %567)
  %568 = load i64, ptr %x5, align 8
  %569 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %569, i64 3
  %570 = load i64, ptr %arrayidx76, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x432, ptr noundef %x433, i64 noundef %568, i64 noundef %570)
  %571 = load i64, ptr %x5, align 8
  %572 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %572, i64 2
  %573 = load i64, ptr %arrayidx77, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x434, ptr noundef %x435, i64 noundef %571, i64 noundef %573)
  %574 = load i64, ptr %x5, align 8
  %575 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %575, i64 1
  %576 = load i64, ptr %arrayidx78, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x436, ptr noundef %x437, i64 noundef %574, i64 noundef %576)
  %577 = load i64, ptr %x5, align 8
  %578 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i64, ptr %578, i64 0
  %579 = load i64, ptr %arrayidx79, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x438, ptr noundef %x439, i64 noundef %577, i64 noundef %579)
  %580 = load i64, ptr %x439, align 8
  %581 = load i64, ptr %x436, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext 0, i64 noundef %580, i64 noundef %581)
  %582 = load i8, ptr %x441, align 1
  %583 = load i64, ptr %x437, align 8
  %584 = load i64, ptr %x434, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext %582, i64 noundef %583, i64 noundef %584)
  %585 = load i8, ptr %x443, align 1
  %586 = load i64, ptr %x435, align 8
  %587 = load i64, ptr %x432, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %585, i64 noundef %586, i64 noundef %587)
  %588 = load i8, ptr %x445, align 1
  %589 = load i64, ptr %x433, align 8
  %590 = load i64, ptr %x430, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext %588, i64 noundef %589, i64 noundef %590)
  %591 = load i8, ptr %x447, align 1
  %592 = load i64, ptr %x431, align 8
  %593 = load i64, ptr %x428, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %591, i64 noundef %592, i64 noundef %593)
  %594 = load i8, ptr %x449, align 1
  %595 = load i64, ptr %x429, align 8
  %596 = load i64, ptr %x426, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %594, i64 noundef %595, i64 noundef %596)
  %597 = load i8, ptr %x451, align 1
  %conv80 = zext i8 %597 to i64
  %598 = load i64, ptr %x427, align 8
  %add81 = add i64 %conv80, %598
  store i64 %add81, ptr %x452, align 8
  %599 = load i64, ptr %x411, align 8
  %600 = load i64, ptr %x438, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext 0, i64 noundef %599, i64 noundef %600)
  %601 = load i8, ptr %x454, align 1
  %602 = load i64, ptr %x413, align 8
  %603 = load i64, ptr %x440, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext %601, i64 noundef %602, i64 noundef %603)
  %604 = load i8, ptr %x456, align 1
  %605 = load i64, ptr %x415, align 8
  %606 = load i64, ptr %x442, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext %604, i64 noundef %605, i64 noundef %606)
  %607 = load i8, ptr %x458, align 1
  %608 = load i64, ptr %x417, align 8
  %609 = load i64, ptr %x444, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %607, i64 noundef %608, i64 noundef %609)
  %610 = load i8, ptr %x460, align 1
  %611 = load i64, ptr %x419, align 8
  %612 = load i64, ptr %x446, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %610, i64 noundef %611, i64 noundef %612)
  %613 = load i8, ptr %x462, align 1
  %614 = load i64, ptr %x421, align 8
  %615 = load i64, ptr %x448, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %613, i64 noundef %614, i64 noundef %615)
  %616 = load i8, ptr %x464, align 1
  %617 = load i64, ptr %x423, align 8
  %618 = load i64, ptr %x450, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %616, i64 noundef %617, i64 noundef %618)
  %619 = load i8, ptr %x466, align 1
  %620 = load i64, ptr %x425, align 8
  %621 = load i64, ptr %x452, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %619, i64 noundef %620, i64 noundef %621)
  %622 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x469, ptr noundef %x470, i64 noundef %622, i64 noundef 620258357900100)
  %623 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x471, ptr noundef %x472, i64 noundef %623, i64 noundef 7853257225132122198)
  %624 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x473, ptr noundef %x474, i64 noundef %624, i64 noundef 8918917783347572387)
  %625 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x475, ptr noundef %x476, i64 noundef %625, i64 noundef -161717841442111489)
  %626 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x477, ptr noundef %x478, i64 noundef %626, i64 noundef -1)
  %627 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x479, ptr noundef %x480, i64 noundef %627, i64 noundef -1)
  %628 = load i64, ptr %x453, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x481, ptr noundef %x482, i64 noundef %628, i64 noundef -1)
  %629 = load i64, ptr %x482, align 8
  %630 = load i64, ptr %x479, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x483, ptr noundef %x484, i8 noundef zeroext 0, i64 noundef %629, i64 noundef %630)
  %631 = load i8, ptr %x484, align 1
  %632 = load i64, ptr %x480, align 8
  %633 = load i64, ptr %x477, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x485, ptr noundef %x486, i8 noundef zeroext %631, i64 noundef %632, i64 noundef %633)
  %634 = load i8, ptr %x486, align 1
  %635 = load i64, ptr %x478, align 8
  %636 = load i64, ptr %x475, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x487, ptr noundef %x488, i8 noundef zeroext %634, i64 noundef %635, i64 noundef %636)
  %637 = load i8, ptr %x488, align 1
  %638 = load i64, ptr %x476, align 8
  %639 = load i64, ptr %x473, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext %637, i64 noundef %638, i64 noundef %639)
  %640 = load i8, ptr %x490, align 1
  %641 = load i64, ptr %x474, align 8
  %642 = load i64, ptr %x471, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext %640, i64 noundef %641, i64 noundef %642)
  %643 = load i8, ptr %x492, align 1
  %644 = load i64, ptr %x472, align 8
  %645 = load i64, ptr %x469, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %643, i64 noundef %644, i64 noundef %645)
  %646 = load i8, ptr %x494, align 1
  %conv82 = zext i8 %646 to i64
  %647 = load i64, ptr %x470, align 8
  %add83 = add i64 %conv82, %647
  store i64 %add83, ptr %x495, align 8
  %648 = load i64, ptr %x453, align 8
  %649 = load i64, ptr %x481, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext 0, i64 noundef %648, i64 noundef %649)
  %650 = load i8, ptr %x497, align 1
  %651 = load i64, ptr %x455, align 8
  %652 = load i64, ptr %x483, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %650, i64 noundef %651, i64 noundef %652)
  %653 = load i8, ptr %x499, align 1
  %654 = load i64, ptr %x457, align 8
  %655 = load i64, ptr %x485, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext %653, i64 noundef %654, i64 noundef %655)
  %656 = load i8, ptr %x501, align 1
  %657 = load i64, ptr %x459, align 8
  %658 = load i64, ptr %x487, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %656, i64 noundef %657, i64 noundef %658)
  %659 = load i8, ptr %x503, align 1
  %660 = load i64, ptr %x461, align 8
  %661 = load i64, ptr %x489, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %659, i64 noundef %660, i64 noundef %661)
  %662 = load i8, ptr %x505, align 1
  %663 = load i64, ptr %x463, align 8
  %664 = load i64, ptr %x491, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x506, ptr noundef %x507, i8 noundef zeroext %662, i64 noundef %663, i64 noundef %664)
  %665 = load i8, ptr %x507, align 1
  %666 = load i64, ptr %x465, align 8
  %667 = load i64, ptr %x493, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x508, ptr noundef %x509, i8 noundef zeroext %665, i64 noundef %666, i64 noundef %667)
  %668 = load i8, ptr %x509, align 1
  %669 = load i64, ptr %x467, align 8
  %670 = load i64, ptr %x495, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x510, ptr noundef %x511, i8 noundef zeroext %668, i64 noundef %669, i64 noundef %670)
  %671 = load i8, ptr %x511, align 1
  %conv84 = zext i8 %671 to i64
  %672 = load i8, ptr %x468, align 1
  %conv85 = zext i8 %672 to i64
  %add86 = add i64 %conv84, %conv85
  store i64 %add86, ptr %x512, align 8
  %673 = load i64, ptr %x6, align 8
  %674 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %674, i64 6
  %675 = load i64, ptr %arrayidx87, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x513, ptr noundef %x514, i64 noundef %673, i64 noundef %675)
  %676 = load i64, ptr %x6, align 8
  %677 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %677, i64 5
  %678 = load i64, ptr %arrayidx88, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x515, ptr noundef %x516, i64 noundef %676, i64 noundef %678)
  %679 = load i64, ptr %x6, align 8
  %680 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %680, i64 4
  %681 = load i64, ptr %arrayidx89, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x517, ptr noundef %x518, i64 noundef %679, i64 noundef %681)
  %682 = load i64, ptr %x6, align 8
  %683 = load ptr, ptr %arg1.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %683, i64 3
  %684 = load i64, ptr %arrayidx90, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x519, ptr noundef %x520, i64 noundef %682, i64 noundef %684)
  %685 = load i64, ptr %x6, align 8
  %686 = load ptr, ptr %arg1.addr, align 8
  %arrayidx91 = getelementptr inbounds i64, ptr %686, i64 2
  %687 = load i64, ptr %arrayidx91, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x521, ptr noundef %x522, i64 noundef %685, i64 noundef %687)
  %688 = load i64, ptr %x6, align 8
  %689 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i64, ptr %689, i64 1
  %690 = load i64, ptr %arrayidx92, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x523, ptr noundef %x524, i64 noundef %688, i64 noundef %690)
  %691 = load i64, ptr %x6, align 8
  %692 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i64, ptr %692, i64 0
  %693 = load i64, ptr %arrayidx93, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x525, ptr noundef %x526, i64 noundef %691, i64 noundef %693)
  %694 = load i64, ptr %x526, align 8
  %695 = load i64, ptr %x523, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x527, ptr noundef %x528, i8 noundef zeroext 0, i64 noundef %694, i64 noundef %695)
  %696 = load i8, ptr %x528, align 1
  %697 = load i64, ptr %x524, align 8
  %698 = load i64, ptr %x521, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x529, ptr noundef %x530, i8 noundef zeroext %696, i64 noundef %697, i64 noundef %698)
  %699 = load i8, ptr %x530, align 1
  %700 = load i64, ptr %x522, align 8
  %701 = load i64, ptr %x519, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x531, ptr noundef %x532, i8 noundef zeroext %699, i64 noundef %700, i64 noundef %701)
  %702 = load i8, ptr %x532, align 1
  %703 = load i64, ptr %x520, align 8
  %704 = load i64, ptr %x517, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x533, ptr noundef %x534, i8 noundef zeroext %702, i64 noundef %703, i64 noundef %704)
  %705 = load i8, ptr %x534, align 1
  %706 = load i64, ptr %x518, align 8
  %707 = load i64, ptr %x515, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x535, ptr noundef %x536, i8 noundef zeroext %705, i64 noundef %706, i64 noundef %707)
  %708 = load i8, ptr %x536, align 1
  %709 = load i64, ptr %x516, align 8
  %710 = load i64, ptr %x513, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext %708, i64 noundef %709, i64 noundef %710)
  %711 = load i8, ptr %x538, align 1
  %conv94 = zext i8 %711 to i64
  %712 = load i64, ptr %x514, align 8
  %add95 = add i64 %conv94, %712
  store i64 %add95, ptr %x539, align 8
  %713 = load i64, ptr %x498, align 8
  %714 = load i64, ptr %x525, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext 0, i64 noundef %713, i64 noundef %714)
  %715 = load i8, ptr %x541, align 1
  %716 = load i64, ptr %x500, align 8
  %717 = load i64, ptr %x527, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %715, i64 noundef %716, i64 noundef %717)
  %718 = load i8, ptr %x543, align 1
  %719 = load i64, ptr %x502, align 8
  %720 = load i64, ptr %x529, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x544, ptr noundef %x545, i8 noundef zeroext %718, i64 noundef %719, i64 noundef %720)
  %721 = load i8, ptr %x545, align 1
  %722 = load i64, ptr %x504, align 8
  %723 = load i64, ptr %x531, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x546, ptr noundef %x547, i8 noundef zeroext %721, i64 noundef %722, i64 noundef %723)
  %724 = load i8, ptr %x547, align 1
  %725 = load i64, ptr %x506, align 8
  %726 = load i64, ptr %x533, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x548, ptr noundef %x549, i8 noundef zeroext %724, i64 noundef %725, i64 noundef %726)
  %727 = load i8, ptr %x549, align 1
  %728 = load i64, ptr %x508, align 8
  %729 = load i64, ptr %x535, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x550, ptr noundef %x551, i8 noundef zeroext %727, i64 noundef %728, i64 noundef %729)
  %730 = load i8, ptr %x551, align 1
  %731 = load i64, ptr %x510, align 8
  %732 = load i64, ptr %x537, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x552, ptr noundef %x553, i8 noundef zeroext %730, i64 noundef %731, i64 noundef %732)
  %733 = load i8, ptr %x553, align 1
  %734 = load i64, ptr %x512, align 8
  %735 = load i64, ptr %x539, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x554, ptr noundef %x555, i8 noundef zeroext %733, i64 noundef %734, i64 noundef %735)
  %736 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x556, ptr noundef %x557, i64 noundef %736, i64 noundef 620258357900100)
  %737 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x558, ptr noundef %x559, i64 noundef %737, i64 noundef 7853257225132122198)
  %738 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x560, ptr noundef %x561, i64 noundef %738, i64 noundef 8918917783347572387)
  %739 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x562, ptr noundef %x563, i64 noundef %739, i64 noundef -161717841442111489)
  %740 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x564, ptr noundef %x565, i64 noundef %740, i64 noundef -1)
  %741 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x566, ptr noundef %x567, i64 noundef %741, i64 noundef -1)
  %742 = load i64, ptr %x540, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x568, ptr noundef %x569, i64 noundef %742, i64 noundef -1)
  %743 = load i64, ptr %x569, align 8
  %744 = load i64, ptr %x566, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x570, ptr noundef %x571, i8 noundef zeroext 0, i64 noundef %743, i64 noundef %744)
  %745 = load i8, ptr %x571, align 1
  %746 = load i64, ptr %x567, align 8
  %747 = load i64, ptr %x564, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x572, ptr noundef %x573, i8 noundef zeroext %745, i64 noundef %746, i64 noundef %747)
  %748 = load i8, ptr %x573, align 1
  %749 = load i64, ptr %x565, align 8
  %750 = load i64, ptr %x562, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x574, ptr noundef %x575, i8 noundef zeroext %748, i64 noundef %749, i64 noundef %750)
  %751 = load i8, ptr %x575, align 1
  %752 = load i64, ptr %x563, align 8
  %753 = load i64, ptr %x560, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x576, ptr noundef %x577, i8 noundef zeroext %751, i64 noundef %752, i64 noundef %753)
  %754 = load i8, ptr %x577, align 1
  %755 = load i64, ptr %x561, align 8
  %756 = load i64, ptr %x558, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x578, ptr noundef %x579, i8 noundef zeroext %754, i64 noundef %755, i64 noundef %756)
  %757 = load i8, ptr %x579, align 1
  %758 = load i64, ptr %x559, align 8
  %759 = load i64, ptr %x556, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x580, ptr noundef %x581, i8 noundef zeroext %757, i64 noundef %758, i64 noundef %759)
  %760 = load i8, ptr %x581, align 1
  %conv96 = zext i8 %760 to i64
  %761 = load i64, ptr %x557, align 8
  %add97 = add i64 %conv96, %761
  store i64 %add97, ptr %x582, align 8
  %762 = load i64, ptr %x540, align 8
  %763 = load i64, ptr %x568, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x583, ptr noundef %x584, i8 noundef zeroext 0, i64 noundef %762, i64 noundef %763)
  %764 = load i8, ptr %x584, align 1
  %765 = load i64, ptr %x542, align 8
  %766 = load i64, ptr %x570, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext %764, i64 noundef %765, i64 noundef %766)
  %767 = load i8, ptr %x586, align 1
  %768 = load i64, ptr %x544, align 8
  %769 = load i64, ptr %x572, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %767, i64 noundef %768, i64 noundef %769)
  %770 = load i8, ptr %x588, align 1
  %771 = load i64, ptr %x546, align 8
  %772 = load i64, ptr %x574, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %770, i64 noundef %771, i64 noundef %772)
  %773 = load i8, ptr %x590, align 1
  %774 = load i64, ptr %x548, align 8
  %775 = load i64, ptr %x576, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %773, i64 noundef %774, i64 noundef %775)
  %776 = load i8, ptr %x592, align 1
  %777 = load i64, ptr %x550, align 8
  %778 = load i64, ptr %x578, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %776, i64 noundef %777, i64 noundef %778)
  %779 = load i8, ptr %x594, align 1
  %780 = load i64, ptr %x552, align 8
  %781 = load i64, ptr %x580, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %779, i64 noundef %780, i64 noundef %781)
  %782 = load i8, ptr %x596, align 1
  %783 = load i64, ptr %x554, align 8
  %784 = load i64, ptr %x582, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %782, i64 noundef %783, i64 noundef %784)
  %785 = load i8, ptr %x598, align 1
  %conv98 = zext i8 %785 to i64
  %786 = load i8, ptr %x555, align 1
  %conv99 = zext i8 %786 to i64
  %add100 = add i64 %conv98, %conv99
  store i64 %add100, ptr %x599, align 8
  %787 = load i64, ptr %x585, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x600, ptr noundef %x601, i8 noundef zeroext 0, i64 noundef %787, i64 noundef -1)
  %788 = load i8, ptr %x601, align 1
  %789 = load i64, ptr %x587, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x602, ptr noundef %x603, i8 noundef zeroext %788, i64 noundef %789, i64 noundef -1)
  %790 = load i8, ptr %x603, align 1
  %791 = load i64, ptr %x589, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x604, ptr noundef %x605, i8 noundef zeroext %790, i64 noundef %791, i64 noundef -1)
  %792 = load i8, ptr %x605, align 1
  %793 = load i64, ptr %x591, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x606, ptr noundef %x607, i8 noundef zeroext %792, i64 noundef %793, i64 noundef -161717841442111489)
  %794 = load i8, ptr %x607, align 1
  %795 = load i64, ptr %x593, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x608, ptr noundef %x609, i8 noundef zeroext %794, i64 noundef %795, i64 noundef 8918917783347572387)
  %796 = load i8, ptr %x609, align 1
  %797 = load i64, ptr %x595, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x610, ptr noundef %x611, i8 noundef zeroext %796, i64 noundef %797, i64 noundef 7853257225132122198)
  %798 = load i8, ptr %x611, align 1
  %799 = load i64, ptr %x597, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x612, ptr noundef %x613, i8 noundef zeroext %798, i64 noundef %799, i64 noundef 620258357900100)
  %800 = load i8, ptr %x613, align 1
  %801 = load i64, ptr %x599, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x614, ptr noundef %x615, i8 noundef zeroext %800, i64 noundef %801, i64 noundef 0)
  %802 = load i8, ptr %x615, align 1
  %803 = load i64, ptr %x600, align 8
  %804 = load i64, ptr %x585, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x616, i8 noundef zeroext %802, i64 noundef %803, i64 noundef %804)
  %805 = load i8, ptr %x615, align 1
  %806 = load i64, ptr %x602, align 8
  %807 = load i64, ptr %x587, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x617, i8 noundef zeroext %805, i64 noundef %806, i64 noundef %807)
  %808 = load i8, ptr %x615, align 1
  %809 = load i64, ptr %x604, align 8
  %810 = load i64, ptr %x589, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x618, i8 noundef zeroext %808, i64 noundef %809, i64 noundef %810)
  %811 = load i8, ptr %x615, align 1
  %812 = load i64, ptr %x606, align 8
  %813 = load i64, ptr %x591, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x619, i8 noundef zeroext %811, i64 noundef %812, i64 noundef %813)
  %814 = load i8, ptr %x615, align 1
  %815 = load i64, ptr %x608, align 8
  %816 = load i64, ptr %x593, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x620, i8 noundef zeroext %814, i64 noundef %815, i64 noundef %816)
  %817 = load i8, ptr %x615, align 1
  %818 = load i64, ptr %x610, align 8
  %819 = load i64, ptr %x595, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x621, i8 noundef zeroext %817, i64 noundef %818, i64 noundef %819)
  %820 = load i8, ptr %x615, align 1
  %821 = load i64, ptr %x612, align 8
  %822 = load i64, ptr %x597, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x622, i8 noundef zeroext %820, i64 noundef %821, i64 noundef %822)
  %823 = load i64, ptr %x616, align 8
  %824 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i64, ptr %824, i64 0
  store i64 %823, ptr %arrayidx101, align 8
  %825 = load i64, ptr %x617, align 8
  %826 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %826, i64 1
  store i64 %825, ptr %arrayidx102, align 8
  %827 = load i64, ptr %x618, align 8
  %828 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %828, i64 2
  store i64 %827, ptr %arrayidx103, align 8
  %829 = load i64, ptr %x619, align 8
  %830 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i64, ptr %830, i64 3
  store i64 %829, ptr %arrayidx104, align 8
  %831 = load i64, ptr %x620, align 8
  %832 = load ptr, ptr %out1.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %832, i64 4
  store i64 %831, ptr %arrayidx105, align 8
  %833 = load i64, ptr %x621, align 8
  %834 = load ptr, ptr %out1.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %834, i64 5
  store i64 %833, ptr %arrayidx106, align 8
  %835 = load i64, ptr %x622, align 8
  %836 = load ptr, ptr %out1.addr, align 8
  %arrayidx107 = getelementptr inbounds i64, ptr %836, i64 6
  store i64 %835, ptr %arrayidx107, align 8
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
