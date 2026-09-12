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
define dso_local void @fiat_p434_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i8, align 1
  %x52 = alloca i64, align 8
  %x53 = alloca i8, align 1
  %x54 = alloca i64, align 8
  %x55 = alloca i8, align 1
  %x56 = alloca i64, align 8
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i8, align 1
  %x60 = alloca i64, align 8
  %x61 = alloca i8, align 1
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
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
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
  %x89 = alloca i8, align 1
  %x90 = alloca i64, align 8
  %x91 = alloca i8, align 1
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
  %x105 = alloca i8, align 1
  %x106 = alloca i64, align 8
  %x107 = alloca i8, align 1
  %x108 = alloca i64, align 8
  %x109 = alloca i8, align 1
  %x110 = alloca i64, align 8
  %x111 = alloca i8, align 1
  %x112 = alloca i64, align 8
  %x113 = alloca i8, align 1
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i8, align 1
  %x130 = alloca i64, align 8
  %x131 = alloca i8, align 1
  %x132 = alloca i64, align 8
  %x133 = alloca i8, align 1
  %x134 = alloca i64, align 8
  %x135 = alloca i8, align 1
  %x136 = alloca i64, align 8
  %x137 = alloca i8, align 1
  %x138 = alloca i64, align 8
  %x139 = alloca i8, align 1
  %x140 = alloca i64, align 8
  %x141 = alloca i8, align 1
  %x142 = alloca i64, align 8
  %x143 = alloca i8, align 1
  %x144 = alloca i64, align 8
  %x145 = alloca i8, align 1
  %x146 = alloca i64, align 8
  %x147 = alloca i8, align 1
  %x148 = alloca i64, align 8
  %x149 = alloca i8, align 1
  %x150 = alloca i64, align 8
  %x151 = alloca i8, align 1
  %x152 = alloca i64, align 8
  %x153 = alloca i8, align 1
  %x154 = alloca i64, align 8
  %x155 = alloca i64, align 8
  %x156 = alloca i64, align 8
  %x157 = alloca i64, align 8
  %x158 = alloca i64, align 8
  %x159 = alloca i64, align 8
  %x160 = alloca i64, align 8
  %x161 = alloca i64, align 8
  %x162 = alloca i64, align 8
  %x163 = alloca i64, align 8
  %x164 = alloca i64, align 8
  %x165 = alloca i64, align 8
  %x166 = alloca i64, align 8
  %x167 = alloca i64, align 8
  %x168 = alloca i64, align 8
  %x169 = alloca i8, align 1
  %x170 = alloca i64, align 8
  %x171 = alloca i8, align 1
  %x172 = alloca i64, align 8
  %x173 = alloca i8, align 1
  %x174 = alloca i64, align 8
  %x175 = alloca i8, align 1
  %x176 = alloca i64, align 8
  %x177 = alloca i8, align 1
  %x178 = alloca i64, align 8
  %x179 = alloca i8, align 1
  %x180 = alloca i64, align 8
  %x181 = alloca i8, align 1
  %x182 = alloca i64, align 8
  %x183 = alloca i8, align 1
  %x184 = alloca i64, align 8
  %x185 = alloca i8, align 1
  %x186 = alloca i64, align 8
  %x187 = alloca i8, align 1
  %x188 = alloca i64, align 8
  %x189 = alloca i8, align 1
  %x190 = alloca i64, align 8
  %x191 = alloca i8, align 1
  %x192 = alloca i64, align 8
  %x193 = alloca i8, align 1
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
  %x196 = alloca i64, align 8
  %x197 = alloca i64, align 8
  %x198 = alloca i64, align 8
  %x199 = alloca i64, align 8
  %x200 = alloca i64, align 8
  %x201 = alloca i64, align 8
  %x202 = alloca i64, align 8
  %x203 = alloca i64, align 8
  %x204 = alloca i64, align 8
  %x205 = alloca i64, align 8
  %x206 = alloca i64, align 8
  %x207 = alloca i64, align 8
  %x208 = alloca i64, align 8
  %x209 = alloca i8, align 1
  %x210 = alloca i64, align 8
  %x211 = alloca i8, align 1
  %x212 = alloca i64, align 8
  %x213 = alloca i8, align 1
  %x214 = alloca i64, align 8
  %x215 = alloca i8, align 1
  %x216 = alloca i64, align 8
  %x217 = alloca i8, align 1
  %x218 = alloca i64, align 8
  %x219 = alloca i8, align 1
  %x220 = alloca i64, align 8
  %x221 = alloca i8, align 1
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
  %x236 = alloca i64, align 8
  %x237 = alloca i64, align 8
  %x238 = alloca i64, align 8
  %x239 = alloca i64, align 8
  %x240 = alloca i64, align 8
  %x241 = alloca i64, align 8
  %x242 = alloca i64, align 8
  %x243 = alloca i64, align 8
  %x244 = alloca i64, align 8
  %x245 = alloca i64, align 8
  %x246 = alloca i64, align 8
  %x247 = alloca i64, align 8
  %x248 = alloca i64, align 8
  %x249 = alloca i8, align 1
  %x250 = alloca i64, align 8
  %x251 = alloca i8, align 1
  %x252 = alloca i64, align 8
  %x253 = alloca i8, align 1
  %x254 = alloca i64, align 8
  %x255 = alloca i8, align 1
  %x256 = alloca i64, align 8
  %x257 = alloca i8, align 1
  %x258 = alloca i64, align 8
  %x259 = alloca i8, align 1
  %x260 = alloca i64, align 8
  %x261 = alloca i8, align 1
  %x262 = alloca i64, align 8
  %x263 = alloca i8, align 1
  %x264 = alloca i64, align 8
  %x265 = alloca i8, align 1
  %x266 = alloca i64, align 8
  %x267 = alloca i8, align 1
  %x268 = alloca i64, align 8
  %x269 = alloca i8, align 1
  %x270 = alloca i64, align 8
  %x271 = alloca i8, align 1
  %x272 = alloca i64, align 8
  %x273 = alloca i8, align 1
  %x274 = alloca i64, align 8
  %x275 = alloca i64, align 8
  %x276 = alloca i64, align 8
  %x277 = alloca i64, align 8
  %x278 = alloca i64, align 8
  %x279 = alloca i64, align 8
  %x280 = alloca i64, align 8
  %x281 = alloca i64, align 8
  %x282 = alloca i64, align 8
  %x283 = alloca i64, align 8
  %x284 = alloca i64, align 8
  %x285 = alloca i64, align 8
  %x286 = alloca i64, align 8
  %x287 = alloca i64, align 8
  %x288 = alloca i64, align 8
  %x289 = alloca i8, align 1
  %x290 = alloca i64, align 8
  %x291 = alloca i8, align 1
  %x292 = alloca i64, align 8
  %x293 = alloca i8, align 1
  %x294 = alloca i64, align 8
  %x295 = alloca i8, align 1
  %x296 = alloca i64, align 8
  %x297 = alloca i8, align 1
  %x298 = alloca i64, align 8
  %x299 = alloca i8, align 1
  %x300 = alloca i64, align 8
  %x301 = alloca i8, align 1
  %x302 = alloca i64, align 8
  %x303 = alloca i8, align 1
  %x304 = alloca i64, align 8
  %x305 = alloca i8, align 1
  %x306 = alloca i64, align 8
  %x307 = alloca i8, align 1
  %x308 = alloca i64, align 8
  %x309 = alloca i8, align 1
  %x310 = alloca i64, align 8
  %x311 = alloca i8, align 1
  %x312 = alloca i64, align 8
  %x313 = alloca i8, align 1
  %x314 = alloca i64, align 8
  %x315 = alloca i64, align 8
  %x316 = alloca i64, align 8
  %x317 = alloca i64, align 8
  %x318 = alloca i64, align 8
  %x319 = alloca i64, align 8
  %x320 = alloca i64, align 8
  %x321 = alloca i64, align 8
  %x322 = alloca i64, align 8
  %x323 = alloca i64, align 8
  %x324 = alloca i64, align 8
  %x325 = alloca i64, align 8
  %x326 = alloca i64, align 8
  %x327 = alloca i64, align 8
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
  %x339 = alloca i8, align 1
  %x340 = alloca i64, align 8
  %x341 = alloca i8, align 1
  %x342 = alloca i64, align 8
  %x343 = alloca i8, align 1
  %x344 = alloca i64, align 8
  %x345 = alloca i8, align 1
  %x346 = alloca i64, align 8
  %x347 = alloca i8, align 1
  %x348 = alloca i64, align 8
  %x349 = alloca i8, align 1
  %x350 = alloca i64, align 8
  %x351 = alloca i8, align 1
  %x352 = alloca i64, align 8
  %x353 = alloca i8, align 1
  %x354 = alloca i64, align 8
  %x355 = alloca i64, align 8
  %x356 = alloca i64, align 8
  %x357 = alloca i64, align 8
  %x358 = alloca i64, align 8
  %x359 = alloca i64, align 8
  %x360 = alloca i64, align 8
  %x361 = alloca i64, align 8
  %x362 = alloca i64, align 8
  %x363 = alloca i64, align 8
  %x364 = alloca i64, align 8
  %x365 = alloca i64, align 8
  %x366 = alloca i64, align 8
  %x367 = alloca i64, align 8
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
  %x383 = alloca i8, align 1
  %x384 = alloca i64, align 8
  %x385 = alloca i8, align 1
  %x386 = alloca i64, align 8
  %x387 = alloca i8, align 1
  %x388 = alloca i64, align 8
  %x389 = alloca i8, align 1
  %x390 = alloca i64, align 8
  %x391 = alloca i8, align 1
  %x392 = alloca i64, align 8
  %x393 = alloca i8, align 1
  %x394 = alloca i64, align 8
  %x395 = alloca i64, align 8
  %x396 = alloca i64, align 8
  %x397 = alloca i64, align 8
  %x398 = alloca i64, align 8
  %x399 = alloca i64, align 8
  %x400 = alloca i64, align 8
  %x401 = alloca i64, align 8
  %x402 = alloca i64, align 8
  %x403 = alloca i64, align 8
  %x404 = alloca i64, align 8
  %x405 = alloca i64, align 8
  %x406 = alloca i64, align 8
  %x407 = alloca i64, align 8
  %x408 = alloca i64, align 8
  %x409 = alloca i8, align 1
  %x410 = alloca i64, align 8
  %x411 = alloca i8, align 1
  %x412 = alloca i64, align 8
  %x413 = alloca i8, align 1
  %x414 = alloca i64, align 8
  %x415 = alloca i8, align 1
  %x416 = alloca i64, align 8
  %x417 = alloca i8, align 1
  %x418 = alloca i64, align 8
  %x419 = alloca i8, align 1
  %x420 = alloca i64, align 8
  %x421 = alloca i8, align 1
  %x422 = alloca i64, align 8
  %x423 = alloca i8, align 1
  %x424 = alloca i64, align 8
  %x425 = alloca i8, align 1
  %x426 = alloca i64, align 8
  %x427 = alloca i8, align 1
  %x428 = alloca i64, align 8
  %x429 = alloca i8, align 1
  %x430 = alloca i64, align 8
  %x431 = alloca i8, align 1
  %x432 = alloca i64, align 8
  %x433 = alloca i8, align 1
  %x434 = alloca i64, align 8
  %x435 = alloca i64, align 8
  %x436 = alloca i64, align 8
  %x437 = alloca i64, align 8
  %x438 = alloca i64, align 8
  %x439 = alloca i64, align 8
  %x440 = alloca i64, align 8
  %x441 = alloca i64, align 8
  %x442 = alloca i64, align 8
  %x443 = alloca i64, align 8
  %x444 = alloca i64, align 8
  %x445 = alloca i64, align 8
  %x446 = alloca i64, align 8
  %x447 = alloca i64, align 8
  %x448 = alloca i64, align 8
  %x449 = alloca i8, align 1
  %x450 = alloca i64, align 8
  %x451 = alloca i8, align 1
  %x452 = alloca i64, align 8
  %x453 = alloca i8, align 1
  %x454 = alloca i64, align 8
  %x455 = alloca i8, align 1
  %x456 = alloca i64, align 8
  %x457 = alloca i8, align 1
  %x458 = alloca i64, align 8
  %x459 = alloca i8, align 1
  %x460 = alloca i64, align 8
  %x461 = alloca i8, align 1
  %x462 = alloca i64, align 8
  %x463 = alloca i8, align 1
  %x464 = alloca i64, align 8
  %x465 = alloca i8, align 1
  %x466 = alloca i64, align 8
  %x467 = alloca i8, align 1
  %x468 = alloca i64, align 8
  %x469 = alloca i8, align 1
  %x470 = alloca i64, align 8
  %x471 = alloca i8, align 1
  %x472 = alloca i64, align 8
  %x473 = alloca i8, align 1
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
  %x484 = alloca i64, align 8
  %x485 = alloca i64, align 8
  %x486 = alloca i64, align 8
  %x487 = alloca i64, align 8
  %x488 = alloca i64, align 8
  %x489 = alloca i8, align 1
  %x490 = alloca i64, align 8
  %x491 = alloca i8, align 1
  %x492 = alloca i64, align 8
  %x493 = alloca i8, align 1
  %x494 = alloca i64, align 8
  %x495 = alloca i8, align 1
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
  %x513 = alloca i8, align 1
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
  %x528 = alloca i64, align 8
  %x529 = alloca i8, align 1
  %x530 = alloca i64, align 8
  %x531 = alloca i8, align 1
  %x532 = alloca i64, align 8
  %x533 = alloca i8, align 1
  %x534 = alloca i64, align 8
  %x535 = alloca i8, align 1
  %x536 = alloca i64, align 8
  %x537 = alloca i8, align 1
  %x538 = alloca i64, align 8
  %x539 = alloca i8, align 1
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
  %x555 = alloca i64, align 8
  %x556 = alloca i8, align 1
  %x557 = alloca i64, align 8
  %x558 = alloca i8, align 1
  %x559 = alloca i64, align 8
  %x560 = alloca i8, align 1
  %x561 = alloca i64, align 8
  %x562 = alloca i8, align 1
  %x563 = alloca i64, align 8
  %x564 = alloca i8, align 1
  %x565 = alloca i64, align 8
  %x566 = alloca i8, align 1
  %x567 = alloca i64, align 8
  %x568 = alloca i8, align 1
  %x569 = alloca i64, align 8
  %x570 = alloca i8, align 1
  %x571 = alloca i64, align 8
  %x572 = alloca i64, align 8
  %x573 = alloca i64, align 8
  %x574 = alloca i64, align 8
  %x575 = alloca i64, align 8
  %x576 = alloca i64, align 8
  %x577 = alloca i64, align 8
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
  call void @fiat_p434_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %14, i64 noundef 41406098690346)
  %15 = load i64, ptr %x7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x10, ptr noundef %x11, i64 noundef %15, i64 noundef 7629496211932212634)
  %16 = load i64, ptr %x7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x12, ptr noundef %x13, i64 noundef %16, i64 noundef -6067031773192244098)
  %17 = load i64, ptr %x7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x14, ptr noundef %x15, i64 noundef %17, i64 noundef 1683438818023996427)
  %18 = load i64, ptr %x7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x16, ptr noundef %x17, i64 noundef %18, i64 noundef -6113751670094468979)
  %19 = load i64, ptr %x7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x18, ptr noundef %x19, i64 noundef %19, i64 noundef -5986282916474808126)
  %20 = load i64, ptr %x7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %20, i64 noundef 2946862024238734128)
  %21 = load i64, ptr %x21, align 8
  %22 = load i64, ptr %x18, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x23, align 1
  %24 = load i64, ptr %x19, align 8
  %25 = load i64, ptr %x16, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %25)
  %26 = load i8, ptr %x25, align 1
  %27 = load i64, ptr %x17, align 8
  %28 = load i64, ptr %x14, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x27, align 1
  %30 = load i64, ptr %x15, align 8
  %31 = load i64, ptr %x12, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %31)
  %32 = load i8, ptr %x29, align 1
  %33 = load i64, ptr %x13, align 8
  %34 = load i64, ptr %x10, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x31, align 1
  %36 = load i64, ptr %x11, align 8
  %37 = load i64, ptr %x8, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x34, ptr noundef %x35, i64 noundef %38, i64 noundef 620258357900100)
  %39 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x36, ptr noundef %x37, i64 noundef %39, i64 noundef 7853257225132122198)
  %40 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x38, ptr noundef %x39, i64 noundef %40, i64 noundef 8918917783347572387)
  %41 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x40, ptr noundef %x41, i64 noundef %41, i64 noundef -161717841442111489)
  %42 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %42, i64 noundef -1)
  %43 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x44, ptr noundef %x45, i64 noundef %43, i64 noundef -1)
  %44 = load i64, ptr %x20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x46, ptr noundef %x47, i64 noundef %44, i64 noundef -1)
  %45 = load i64, ptr %x47, align 8
  %46 = load i64, ptr %x44, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext 0, i64 noundef %45, i64 noundef %46)
  %47 = load i8, ptr %x49, align 1
  %48 = load i64, ptr %x45, align 8
  %49 = load i64, ptr %x42, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %47, i64 noundef %48, i64 noundef %49)
  %50 = load i8, ptr %x51, align 1
  %51 = load i64, ptr %x43, align 8
  %52 = load i64, ptr %x40, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %50, i64 noundef %51, i64 noundef %52)
  %53 = load i8, ptr %x53, align 1
  %54 = load i64, ptr %x41, align 8
  %55 = load i64, ptr %x38, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %53, i64 noundef %54, i64 noundef %55)
  %56 = load i8, ptr %x55, align 1
  %57 = load i64, ptr %x39, align 8
  %58 = load i64, ptr %x36, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %56, i64 noundef %57, i64 noundef %58)
  %59 = load i8, ptr %x57, align 1
  %60 = load i64, ptr %x37, align 8
  %61 = load i64, ptr %x34, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %59, i64 noundef %60, i64 noundef %61)
  %62 = load i64, ptr %x20, align 8
  %63 = load i64, ptr %x46, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i64 noundef %62, i64 noundef %63)
  %64 = load i8, ptr %x61, align 1
  %65 = load i64, ptr %x22, align 8
  %66 = load i64, ptr %x48, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %64, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x63, align 1
  %68 = load i64, ptr %x24, align 8
  %69 = load i64, ptr %x50, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %67, i64 noundef %68, i64 noundef %69)
  %70 = load i8, ptr %x65, align 1
  %71 = load i64, ptr %x26, align 8
  %72 = load i64, ptr %x52, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %70, i64 noundef %71, i64 noundef %72)
  %73 = load i8, ptr %x67, align 1
  %74 = load i64, ptr %x28, align 8
  %75 = load i64, ptr %x54, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %73, i64 noundef %74, i64 noundef %75)
  %76 = load i8, ptr %x69, align 1
  %77 = load i64, ptr %x30, align 8
  %78 = load i64, ptr %x56, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %76, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x71, align 1
  %80 = load i64, ptr %x32, align 8
  %81 = load i64, ptr %x58, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x74, ptr noundef %x75, i64 noundef %82, i64 noundef 41406098690346)
  %83 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x76, ptr noundef %x77, i64 noundef %83, i64 noundef 7629496211932212634)
  %84 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x78, ptr noundef %x79, i64 noundef %84, i64 noundef -6067031773192244098)
  %85 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x80, ptr noundef %x81, i64 noundef %85, i64 noundef 1683438818023996427)
  %86 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x82, ptr noundef %x83, i64 noundef %86, i64 noundef -6113751670094468979)
  %87 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x84, ptr noundef %x85, i64 noundef %87, i64 noundef -5986282916474808126)
  %88 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x86, ptr noundef %x87, i64 noundef %88, i64 noundef 2946862024238734128)
  %89 = load i64, ptr %x87, align 8
  %90 = load i64, ptr %x84, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext 0, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x89, align 1
  %92 = load i64, ptr %x85, align 8
  %93 = load i64, ptr %x82, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x91, align 1
  %95 = load i64, ptr %x83, align 8
  %96 = load i64, ptr %x80, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %94, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x93, align 1
  %98 = load i64, ptr %x81, align 8
  %99 = load i64, ptr %x78, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %97, i64 noundef %98, i64 noundef %99)
  %100 = load i8, ptr %x95, align 1
  %101 = load i64, ptr %x79, align 8
  %102 = load i64, ptr %x76, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %100, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x97, align 1
  %104 = load i64, ptr %x77, align 8
  %105 = load i64, ptr %x74, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %103, i64 noundef %104, i64 noundef %105)
  %106 = load i64, ptr %x62, align 8
  %107 = load i64, ptr %x86, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext 0, i64 noundef %106, i64 noundef %107)
  %108 = load i8, ptr %x101, align 1
  %109 = load i64, ptr %x64, align 8
  %110 = load i64, ptr %x88, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %108, i64 noundef %109, i64 noundef %110)
  %111 = load i8, ptr %x103, align 1
  %112 = load i64, ptr %x66, align 8
  %113 = load i64, ptr %x90, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %111, i64 noundef %112, i64 noundef %113)
  %114 = load i8, ptr %x105, align 1
  %115 = load i64, ptr %x68, align 8
  %116 = load i64, ptr %x92, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %114, i64 noundef %115, i64 noundef %116)
  %117 = load i8, ptr %x107, align 1
  %118 = load i64, ptr %x70, align 8
  %119 = load i64, ptr %x94, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %117, i64 noundef %118, i64 noundef %119)
  %120 = load i8, ptr %x109, align 1
  %121 = load i64, ptr %x72, align 8
  %122 = load i64, ptr %x96, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %120, i64 noundef %121, i64 noundef %122)
  %123 = load i8, ptr %x111, align 1
  %124 = load i8, ptr %x73, align 1
  %conv = zext i8 %124 to i64
  %125 = load i8, ptr %x33, align 1
  %conv7 = zext i8 %125 to i64
  %126 = load i64, ptr %x9, align 8
  %add = add i64 %conv7, %126
  %add8 = add i64 %conv, %add
  %127 = load i8, ptr %x59, align 1
  %conv9 = zext i8 %127 to i64
  %128 = load i64, ptr %x35, align 8
  %add10 = add i64 %conv9, %128
  %add11 = add i64 %add8, %add10
  %129 = load i64, ptr %x98, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %123, i64 noundef %add11, i64 noundef %129)
  %130 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x114, ptr noundef %x115, i64 noundef %130, i64 noundef 620258357900100)
  %131 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x116, ptr noundef %x117, i64 noundef %131, i64 noundef 7853257225132122198)
  %132 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x118, ptr noundef %x119, i64 noundef %132, i64 noundef 8918917783347572387)
  %133 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x120, ptr noundef %x121, i64 noundef %133, i64 noundef -161717841442111489)
  %134 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x122, ptr noundef %x123, i64 noundef %134, i64 noundef -1)
  %135 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x124, ptr noundef %x125, i64 noundef %135, i64 noundef -1)
  %136 = load i64, ptr %x100, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x126, ptr noundef %x127, i64 noundef %136, i64 noundef -1)
  %137 = load i64, ptr %x127, align 8
  %138 = load i64, ptr %x124, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext 0, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x129, align 1
  %140 = load i64, ptr %x125, align 8
  %141 = load i64, ptr %x122, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x131, align 1
  %143 = load i64, ptr %x123, align 8
  %144 = load i64, ptr %x120, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x133, align 1
  %146 = load i64, ptr %x121, align 8
  %147 = load i64, ptr %x118, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i8, ptr %x135, align 1
  %149 = load i64, ptr %x119, align 8
  %150 = load i64, ptr %x116, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %148, i64 noundef %149, i64 noundef %150)
  %151 = load i8, ptr %x137, align 1
  %152 = load i64, ptr %x117, align 8
  %153 = load i64, ptr %x114, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %151, i64 noundef %152, i64 noundef %153)
  %154 = load i64, ptr %x100, align 8
  %155 = load i64, ptr %x126, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext 0, i64 noundef %154, i64 noundef %155)
  %156 = load i8, ptr %x141, align 1
  %157 = load i64, ptr %x102, align 8
  %158 = load i64, ptr %x128, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %156, i64 noundef %157, i64 noundef %158)
  %159 = load i8, ptr %x143, align 1
  %160 = load i64, ptr %x104, align 8
  %161 = load i64, ptr %x130, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %159, i64 noundef %160, i64 noundef %161)
  %162 = load i8, ptr %x145, align 1
  %163 = load i64, ptr %x106, align 8
  %164 = load i64, ptr %x132, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %162, i64 noundef %163, i64 noundef %164)
  %165 = load i8, ptr %x147, align 1
  %166 = load i64, ptr %x108, align 8
  %167 = load i64, ptr %x134, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %165, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x149, align 1
  %169 = load i64, ptr %x110, align 8
  %170 = load i64, ptr %x136, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x151, align 1
  %172 = load i64, ptr %x112, align 8
  %173 = load i64, ptr %x138, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x154, ptr noundef %x155, i64 noundef %174, i64 noundef 41406098690346)
  %175 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x156, ptr noundef %x157, i64 noundef %175, i64 noundef 7629496211932212634)
  %176 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x158, ptr noundef %x159, i64 noundef %176, i64 noundef -6067031773192244098)
  %177 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x160, ptr noundef %x161, i64 noundef %177, i64 noundef 1683438818023996427)
  %178 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x162, ptr noundef %x163, i64 noundef %178, i64 noundef -6113751670094468979)
  %179 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x164, ptr noundef %x165, i64 noundef %179, i64 noundef -5986282916474808126)
  %180 = load i64, ptr %x2, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x166, ptr noundef %x167, i64 noundef %180, i64 noundef 2946862024238734128)
  %181 = load i64, ptr %x167, align 8
  %182 = load i64, ptr %x164, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext 0, i64 noundef %181, i64 noundef %182)
  %183 = load i8, ptr %x169, align 1
  %184 = load i64, ptr %x165, align 8
  %185 = load i64, ptr %x162, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x171, align 1
  %187 = load i64, ptr %x163, align 8
  %188 = load i64, ptr %x160, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x173, align 1
  %190 = load i64, ptr %x161, align 8
  %191 = load i64, ptr %x158, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x175, align 1
  %193 = load i64, ptr %x159, align 8
  %194 = load i64, ptr %x156, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %192, i64 noundef %193, i64 noundef %194)
  %195 = load i8, ptr %x177, align 1
  %196 = load i64, ptr %x157, align 8
  %197 = load i64, ptr %x154, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %195, i64 noundef %196, i64 noundef %197)
  %198 = load i64, ptr %x142, align 8
  %199 = load i64, ptr %x166, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext 0, i64 noundef %198, i64 noundef %199)
  %200 = load i8, ptr %x181, align 1
  %201 = load i64, ptr %x144, align 8
  %202 = load i64, ptr %x168, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %200, i64 noundef %201, i64 noundef %202)
  %203 = load i8, ptr %x183, align 1
  %204 = load i64, ptr %x146, align 8
  %205 = load i64, ptr %x170, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %203, i64 noundef %204, i64 noundef %205)
  %206 = load i8, ptr %x185, align 1
  %207 = load i64, ptr %x148, align 8
  %208 = load i64, ptr %x172, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %206, i64 noundef %207, i64 noundef %208)
  %209 = load i8, ptr %x187, align 1
  %210 = load i64, ptr %x150, align 8
  %211 = load i64, ptr %x174, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %209, i64 noundef %210, i64 noundef %211)
  %212 = load i8, ptr %x189, align 1
  %213 = load i64, ptr %x152, align 8
  %214 = load i64, ptr %x176, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %212, i64 noundef %213, i64 noundef %214)
  %215 = load i8, ptr %x191, align 1
  %216 = load i8, ptr %x153, align 1
  %conv12 = zext i8 %216 to i64
  %217 = load i8, ptr %x113, align 1
  %conv13 = zext i8 %217 to i64
  %218 = load i8, ptr %x99, align 1
  %conv14 = zext i8 %218 to i64
  %219 = load i64, ptr %x75, align 8
  %add15 = add i64 %conv14, %219
  %add16 = add i64 %conv13, %add15
  %add17 = add i64 %conv12, %add16
  %220 = load i8, ptr %x139, align 1
  %conv18 = zext i8 %220 to i64
  %221 = load i64, ptr %x115, align 8
  %add19 = add i64 %conv18, %221
  %add20 = add i64 %add17, %add19
  %222 = load i64, ptr %x178, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %215, i64 noundef %add20, i64 noundef %222)
  %223 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x194, ptr noundef %x195, i64 noundef %223, i64 noundef 620258357900100)
  %224 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x196, ptr noundef %x197, i64 noundef %224, i64 noundef 7853257225132122198)
  %225 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x198, ptr noundef %x199, i64 noundef %225, i64 noundef 8918917783347572387)
  %226 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x200, ptr noundef %x201, i64 noundef %226, i64 noundef -161717841442111489)
  %227 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x202, ptr noundef %x203, i64 noundef %227, i64 noundef -1)
  %228 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x204, ptr noundef %x205, i64 noundef %228, i64 noundef -1)
  %229 = load i64, ptr %x180, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x206, ptr noundef %x207, i64 noundef %229, i64 noundef -1)
  %230 = load i64, ptr %x207, align 8
  %231 = load i64, ptr %x204, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i64 noundef %230, i64 noundef %231)
  %232 = load i8, ptr %x209, align 1
  %233 = load i64, ptr %x205, align 8
  %234 = load i64, ptr %x202, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %232, i64 noundef %233, i64 noundef %234)
  %235 = load i8, ptr %x211, align 1
  %236 = load i64, ptr %x203, align 8
  %237 = load i64, ptr %x200, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %235, i64 noundef %236, i64 noundef %237)
  %238 = load i8, ptr %x213, align 1
  %239 = load i64, ptr %x201, align 8
  %240 = load i64, ptr %x198, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %238, i64 noundef %239, i64 noundef %240)
  %241 = load i8, ptr %x215, align 1
  %242 = load i64, ptr %x199, align 8
  %243 = load i64, ptr %x196, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %241, i64 noundef %242, i64 noundef %243)
  %244 = load i8, ptr %x217, align 1
  %245 = load i64, ptr %x197, align 8
  %246 = load i64, ptr %x194, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %244, i64 noundef %245, i64 noundef %246)
  %247 = load i64, ptr %x180, align 8
  %248 = load i64, ptr %x206, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext 0, i64 noundef %247, i64 noundef %248)
  %249 = load i8, ptr %x221, align 1
  %250 = load i64, ptr %x182, align 8
  %251 = load i64, ptr %x208, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %249, i64 noundef %250, i64 noundef %251)
  %252 = load i8, ptr %x223, align 1
  %253 = load i64, ptr %x184, align 8
  %254 = load i64, ptr %x210, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %252, i64 noundef %253, i64 noundef %254)
  %255 = load i8, ptr %x225, align 1
  %256 = load i64, ptr %x186, align 8
  %257 = load i64, ptr %x212, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %255, i64 noundef %256, i64 noundef %257)
  %258 = load i8, ptr %x227, align 1
  %259 = load i64, ptr %x188, align 8
  %260 = load i64, ptr %x214, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %258, i64 noundef %259, i64 noundef %260)
  %261 = load i8, ptr %x229, align 1
  %262 = load i64, ptr %x190, align 8
  %263 = load i64, ptr %x216, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %261, i64 noundef %262, i64 noundef %263)
  %264 = load i8, ptr %x231, align 1
  %265 = load i64, ptr %x192, align 8
  %266 = load i64, ptr %x218, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %264, i64 noundef %265, i64 noundef %266)
  %267 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x234, ptr noundef %x235, i64 noundef %267, i64 noundef 41406098690346)
  %268 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x236, ptr noundef %x237, i64 noundef %268, i64 noundef 7629496211932212634)
  %269 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x238, ptr noundef %x239, i64 noundef %269, i64 noundef -6067031773192244098)
  %270 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x240, ptr noundef %x241, i64 noundef %270, i64 noundef 1683438818023996427)
  %271 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x242, ptr noundef %x243, i64 noundef %271, i64 noundef -6113751670094468979)
  %272 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x244, ptr noundef %x245, i64 noundef %272, i64 noundef -5986282916474808126)
  %273 = load i64, ptr %x3, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x246, ptr noundef %x247, i64 noundef %273, i64 noundef 2946862024238734128)
  %274 = load i64, ptr %x247, align 8
  %275 = load i64, ptr %x244, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext 0, i64 noundef %274, i64 noundef %275)
  %276 = load i8, ptr %x249, align 1
  %277 = load i64, ptr %x245, align 8
  %278 = load i64, ptr %x242, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %276, i64 noundef %277, i64 noundef %278)
  %279 = load i8, ptr %x251, align 1
  %280 = load i64, ptr %x243, align 8
  %281 = load i64, ptr %x240, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %279, i64 noundef %280, i64 noundef %281)
  %282 = load i8, ptr %x253, align 1
  %283 = load i64, ptr %x241, align 8
  %284 = load i64, ptr %x238, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %282, i64 noundef %283, i64 noundef %284)
  %285 = load i8, ptr %x255, align 1
  %286 = load i64, ptr %x239, align 8
  %287 = load i64, ptr %x236, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %285, i64 noundef %286, i64 noundef %287)
  %288 = load i8, ptr %x257, align 1
  %289 = load i64, ptr %x237, align 8
  %290 = load i64, ptr %x234, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %288, i64 noundef %289, i64 noundef %290)
  %291 = load i64, ptr %x222, align 8
  %292 = load i64, ptr %x246, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext 0, i64 noundef %291, i64 noundef %292)
  %293 = load i8, ptr %x261, align 1
  %294 = load i64, ptr %x224, align 8
  %295 = load i64, ptr %x248, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %293, i64 noundef %294, i64 noundef %295)
  %296 = load i8, ptr %x263, align 1
  %297 = load i64, ptr %x226, align 8
  %298 = load i64, ptr %x250, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext %296, i64 noundef %297, i64 noundef %298)
  %299 = load i8, ptr %x265, align 1
  %300 = load i64, ptr %x228, align 8
  %301 = load i64, ptr %x252, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %299, i64 noundef %300, i64 noundef %301)
  %302 = load i8, ptr %x267, align 1
  %303 = load i64, ptr %x230, align 8
  %304 = load i64, ptr %x254, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %302, i64 noundef %303, i64 noundef %304)
  %305 = load i8, ptr %x269, align 1
  %306 = load i64, ptr %x232, align 8
  %307 = load i64, ptr %x256, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %305, i64 noundef %306, i64 noundef %307)
  %308 = load i8, ptr %x271, align 1
  %309 = load i8, ptr %x233, align 1
  %conv21 = zext i8 %309 to i64
  %310 = load i8, ptr %x193, align 1
  %conv22 = zext i8 %310 to i64
  %311 = load i8, ptr %x179, align 1
  %conv23 = zext i8 %311 to i64
  %312 = load i64, ptr %x155, align 8
  %add24 = add i64 %conv23, %312
  %add25 = add i64 %conv22, %add24
  %add26 = add i64 %conv21, %add25
  %313 = load i8, ptr %x219, align 1
  %conv27 = zext i8 %313 to i64
  %314 = load i64, ptr %x195, align 8
  %add28 = add i64 %conv27, %314
  %add29 = add i64 %add26, %add28
  %315 = load i64, ptr %x258, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %308, i64 noundef %add29, i64 noundef %315)
  %316 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x274, ptr noundef %x275, i64 noundef %316, i64 noundef 620258357900100)
  %317 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x276, ptr noundef %x277, i64 noundef %317, i64 noundef 7853257225132122198)
  %318 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x278, ptr noundef %x279, i64 noundef %318, i64 noundef 8918917783347572387)
  %319 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x280, ptr noundef %x281, i64 noundef %319, i64 noundef -161717841442111489)
  %320 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x282, ptr noundef %x283, i64 noundef %320, i64 noundef -1)
  %321 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x284, ptr noundef %x285, i64 noundef %321, i64 noundef -1)
  %322 = load i64, ptr %x260, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x286, ptr noundef %x287, i64 noundef %322, i64 noundef -1)
  %323 = load i64, ptr %x287, align 8
  %324 = load i64, ptr %x284, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext 0, i64 noundef %323, i64 noundef %324)
  %325 = load i8, ptr %x289, align 1
  %326 = load i64, ptr %x285, align 8
  %327 = load i64, ptr %x282, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %325, i64 noundef %326, i64 noundef %327)
  %328 = load i8, ptr %x291, align 1
  %329 = load i64, ptr %x283, align 8
  %330 = load i64, ptr %x280, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %328, i64 noundef %329, i64 noundef %330)
  %331 = load i8, ptr %x293, align 1
  %332 = load i64, ptr %x281, align 8
  %333 = load i64, ptr %x278, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %331, i64 noundef %332, i64 noundef %333)
  %334 = load i8, ptr %x295, align 1
  %335 = load i64, ptr %x279, align 8
  %336 = load i64, ptr %x276, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %334, i64 noundef %335, i64 noundef %336)
  %337 = load i8, ptr %x297, align 1
  %338 = load i64, ptr %x277, align 8
  %339 = load i64, ptr %x274, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %337, i64 noundef %338, i64 noundef %339)
  %340 = load i64, ptr %x260, align 8
  %341 = load i64, ptr %x286, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext 0, i64 noundef %340, i64 noundef %341)
  %342 = load i8, ptr %x301, align 1
  %343 = load i64, ptr %x262, align 8
  %344 = load i64, ptr %x288, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext %342, i64 noundef %343, i64 noundef %344)
  %345 = load i8, ptr %x303, align 1
  %346 = load i64, ptr %x264, align 8
  %347 = load i64, ptr %x290, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %345, i64 noundef %346, i64 noundef %347)
  %348 = load i8, ptr %x305, align 1
  %349 = load i64, ptr %x266, align 8
  %350 = load i64, ptr %x292, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext %348, i64 noundef %349, i64 noundef %350)
  %351 = load i8, ptr %x307, align 1
  %352 = load i64, ptr %x268, align 8
  %353 = load i64, ptr %x294, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %351, i64 noundef %352, i64 noundef %353)
  %354 = load i8, ptr %x309, align 1
  %355 = load i64, ptr %x270, align 8
  %356 = load i64, ptr %x296, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %354, i64 noundef %355, i64 noundef %356)
  %357 = load i8, ptr %x311, align 1
  %358 = load i64, ptr %x272, align 8
  %359 = load i64, ptr %x298, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %357, i64 noundef %358, i64 noundef %359)
  %360 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x314, ptr noundef %x315, i64 noundef %360, i64 noundef 41406098690346)
  %361 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x316, ptr noundef %x317, i64 noundef %361, i64 noundef 7629496211932212634)
  %362 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x318, ptr noundef %x319, i64 noundef %362, i64 noundef -6067031773192244098)
  %363 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x320, ptr noundef %x321, i64 noundef %363, i64 noundef 1683438818023996427)
  %364 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x322, ptr noundef %x323, i64 noundef %364, i64 noundef -6113751670094468979)
  %365 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x324, ptr noundef %x325, i64 noundef %365, i64 noundef -5986282916474808126)
  %366 = load i64, ptr %x4, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x326, ptr noundef %x327, i64 noundef %366, i64 noundef 2946862024238734128)
  %367 = load i64, ptr %x327, align 8
  %368 = load i64, ptr %x324, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext 0, i64 noundef %367, i64 noundef %368)
  %369 = load i8, ptr %x329, align 1
  %370 = load i64, ptr %x325, align 8
  %371 = load i64, ptr %x322, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %369, i64 noundef %370, i64 noundef %371)
  %372 = load i8, ptr %x331, align 1
  %373 = load i64, ptr %x323, align 8
  %374 = load i64, ptr %x320, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %372, i64 noundef %373, i64 noundef %374)
  %375 = load i8, ptr %x333, align 1
  %376 = load i64, ptr %x321, align 8
  %377 = load i64, ptr %x318, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %375, i64 noundef %376, i64 noundef %377)
  %378 = load i8, ptr %x335, align 1
  %379 = load i64, ptr %x319, align 8
  %380 = load i64, ptr %x316, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %378, i64 noundef %379, i64 noundef %380)
  %381 = load i8, ptr %x337, align 1
  %382 = load i64, ptr %x317, align 8
  %383 = load i64, ptr %x314, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %381, i64 noundef %382, i64 noundef %383)
  %384 = load i64, ptr %x302, align 8
  %385 = load i64, ptr %x326, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext 0, i64 noundef %384, i64 noundef %385)
  %386 = load i8, ptr %x341, align 1
  %387 = load i64, ptr %x304, align 8
  %388 = load i64, ptr %x328, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x342, ptr noundef %x343, i8 noundef zeroext %386, i64 noundef %387, i64 noundef %388)
  %389 = load i8, ptr %x343, align 1
  %390 = load i64, ptr %x306, align 8
  %391 = load i64, ptr %x330, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x344, ptr noundef %x345, i8 noundef zeroext %389, i64 noundef %390, i64 noundef %391)
  %392 = load i8, ptr %x345, align 1
  %393 = load i64, ptr %x308, align 8
  %394 = load i64, ptr %x332, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x346, ptr noundef %x347, i8 noundef zeroext %392, i64 noundef %393, i64 noundef %394)
  %395 = load i8, ptr %x347, align 1
  %396 = load i64, ptr %x310, align 8
  %397 = load i64, ptr %x334, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext %395, i64 noundef %396, i64 noundef %397)
  %398 = load i8, ptr %x349, align 1
  %399 = load i64, ptr %x312, align 8
  %400 = load i64, ptr %x336, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %398, i64 noundef %399, i64 noundef %400)
  %401 = load i8, ptr %x351, align 1
  %402 = load i8, ptr %x313, align 1
  %conv30 = zext i8 %402 to i64
  %403 = load i8, ptr %x273, align 1
  %conv31 = zext i8 %403 to i64
  %404 = load i8, ptr %x259, align 1
  %conv32 = zext i8 %404 to i64
  %405 = load i64, ptr %x235, align 8
  %add33 = add i64 %conv32, %405
  %add34 = add i64 %conv31, %add33
  %add35 = add i64 %conv30, %add34
  %406 = load i8, ptr %x299, align 1
  %conv36 = zext i8 %406 to i64
  %407 = load i64, ptr %x275, align 8
  %add37 = add i64 %conv36, %407
  %add38 = add i64 %add35, %add37
  %408 = load i64, ptr %x338, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %401, i64 noundef %add38, i64 noundef %408)
  %409 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x354, ptr noundef %x355, i64 noundef %409, i64 noundef 620258357900100)
  %410 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x356, ptr noundef %x357, i64 noundef %410, i64 noundef 7853257225132122198)
  %411 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x358, ptr noundef %x359, i64 noundef %411, i64 noundef 8918917783347572387)
  %412 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x360, ptr noundef %x361, i64 noundef %412, i64 noundef -161717841442111489)
  %413 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x362, ptr noundef %x363, i64 noundef %413, i64 noundef -1)
  %414 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x364, ptr noundef %x365, i64 noundef %414, i64 noundef -1)
  %415 = load i64, ptr %x340, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x366, ptr noundef %x367, i64 noundef %415, i64 noundef -1)
  %416 = load i64, ptr %x367, align 8
  %417 = load i64, ptr %x364, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext 0, i64 noundef %416, i64 noundef %417)
  %418 = load i8, ptr %x369, align 1
  %419 = load i64, ptr %x365, align 8
  %420 = load i64, ptr %x362, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %418, i64 noundef %419, i64 noundef %420)
  %421 = load i8, ptr %x371, align 1
  %422 = load i64, ptr %x363, align 8
  %423 = load i64, ptr %x360, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %421, i64 noundef %422, i64 noundef %423)
  %424 = load i8, ptr %x373, align 1
  %425 = load i64, ptr %x361, align 8
  %426 = load i64, ptr %x358, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %424, i64 noundef %425, i64 noundef %426)
  %427 = load i8, ptr %x375, align 1
  %428 = load i64, ptr %x359, align 8
  %429 = load i64, ptr %x356, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %427, i64 noundef %428, i64 noundef %429)
  %430 = load i8, ptr %x377, align 1
  %431 = load i64, ptr %x357, align 8
  %432 = load i64, ptr %x354, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %430, i64 noundef %431, i64 noundef %432)
  %433 = load i64, ptr %x340, align 8
  %434 = load i64, ptr %x366, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext 0, i64 noundef %433, i64 noundef %434)
  %435 = load i8, ptr %x381, align 1
  %436 = load i64, ptr %x342, align 8
  %437 = load i64, ptr %x368, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %435, i64 noundef %436, i64 noundef %437)
  %438 = load i8, ptr %x383, align 1
  %439 = load i64, ptr %x344, align 8
  %440 = load i64, ptr %x370, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %438, i64 noundef %439, i64 noundef %440)
  %441 = load i8, ptr %x385, align 1
  %442 = load i64, ptr %x346, align 8
  %443 = load i64, ptr %x372, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %441, i64 noundef %442, i64 noundef %443)
  %444 = load i8, ptr %x387, align 1
  %445 = load i64, ptr %x348, align 8
  %446 = load i64, ptr %x374, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %444, i64 noundef %445, i64 noundef %446)
  %447 = load i8, ptr %x389, align 1
  %448 = load i64, ptr %x350, align 8
  %449 = load i64, ptr %x376, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %447, i64 noundef %448, i64 noundef %449)
  %450 = load i8, ptr %x391, align 1
  %451 = load i64, ptr %x352, align 8
  %452 = load i64, ptr %x378, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %450, i64 noundef %451, i64 noundef %452)
  %453 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x394, ptr noundef %x395, i64 noundef %453, i64 noundef 41406098690346)
  %454 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x396, ptr noundef %x397, i64 noundef %454, i64 noundef 7629496211932212634)
  %455 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x398, ptr noundef %x399, i64 noundef %455, i64 noundef -6067031773192244098)
  %456 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x400, ptr noundef %x401, i64 noundef %456, i64 noundef 1683438818023996427)
  %457 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x402, ptr noundef %x403, i64 noundef %457, i64 noundef -6113751670094468979)
  %458 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x404, ptr noundef %x405, i64 noundef %458, i64 noundef -5986282916474808126)
  %459 = load i64, ptr %x5, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x406, ptr noundef %x407, i64 noundef %459, i64 noundef 2946862024238734128)
  %460 = load i64, ptr %x407, align 8
  %461 = load i64, ptr %x404, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext 0, i64 noundef %460, i64 noundef %461)
  %462 = load i8, ptr %x409, align 1
  %463 = load i64, ptr %x405, align 8
  %464 = load i64, ptr %x402, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %462, i64 noundef %463, i64 noundef %464)
  %465 = load i8, ptr %x411, align 1
  %466 = load i64, ptr %x403, align 8
  %467 = load i64, ptr %x400, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %465, i64 noundef %466, i64 noundef %467)
  %468 = load i8, ptr %x413, align 1
  %469 = load i64, ptr %x401, align 8
  %470 = load i64, ptr %x398, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %468, i64 noundef %469, i64 noundef %470)
  %471 = load i8, ptr %x415, align 1
  %472 = load i64, ptr %x399, align 8
  %473 = load i64, ptr %x396, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %471, i64 noundef %472, i64 noundef %473)
  %474 = load i8, ptr %x417, align 1
  %475 = load i64, ptr %x397, align 8
  %476 = load i64, ptr %x394, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %474, i64 noundef %475, i64 noundef %476)
  %477 = load i64, ptr %x382, align 8
  %478 = load i64, ptr %x406, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext 0, i64 noundef %477, i64 noundef %478)
  %479 = load i8, ptr %x421, align 1
  %480 = load i64, ptr %x384, align 8
  %481 = load i64, ptr %x408, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %479, i64 noundef %480, i64 noundef %481)
  %482 = load i8, ptr %x423, align 1
  %483 = load i64, ptr %x386, align 8
  %484 = load i64, ptr %x410, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x424, ptr noundef %x425, i8 noundef zeroext %482, i64 noundef %483, i64 noundef %484)
  %485 = load i8, ptr %x425, align 1
  %486 = load i64, ptr %x388, align 8
  %487 = load i64, ptr %x412, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x426, ptr noundef %x427, i8 noundef zeroext %485, i64 noundef %486, i64 noundef %487)
  %488 = load i8, ptr %x427, align 1
  %489 = load i64, ptr %x390, align 8
  %490 = load i64, ptr %x414, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext %488, i64 noundef %489, i64 noundef %490)
  %491 = load i8, ptr %x429, align 1
  %492 = load i64, ptr %x392, align 8
  %493 = load i64, ptr %x416, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %491, i64 noundef %492, i64 noundef %493)
  %494 = load i8, ptr %x431, align 1
  %495 = load i8, ptr %x393, align 1
  %conv39 = zext i8 %495 to i64
  %496 = load i8, ptr %x353, align 1
  %conv40 = zext i8 %496 to i64
  %497 = load i8, ptr %x339, align 1
  %conv41 = zext i8 %497 to i64
  %498 = load i64, ptr %x315, align 8
  %add42 = add i64 %conv41, %498
  %add43 = add i64 %conv40, %add42
  %add44 = add i64 %conv39, %add43
  %499 = load i8, ptr %x379, align 1
  %conv45 = zext i8 %499 to i64
  %500 = load i64, ptr %x355, align 8
  %add46 = add i64 %conv45, %500
  %add47 = add i64 %add44, %add46
  %501 = load i64, ptr %x418, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %494, i64 noundef %add47, i64 noundef %501)
  %502 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x434, ptr noundef %x435, i64 noundef %502, i64 noundef 620258357900100)
  %503 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x436, ptr noundef %x437, i64 noundef %503, i64 noundef 7853257225132122198)
  %504 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x438, ptr noundef %x439, i64 noundef %504, i64 noundef 8918917783347572387)
  %505 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x440, ptr noundef %x441, i64 noundef %505, i64 noundef -161717841442111489)
  %506 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x442, ptr noundef %x443, i64 noundef %506, i64 noundef -1)
  %507 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x444, ptr noundef %x445, i64 noundef %507, i64 noundef -1)
  %508 = load i64, ptr %x420, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x446, ptr noundef %x447, i64 noundef %508, i64 noundef -1)
  %509 = load i64, ptr %x447, align 8
  %510 = load i64, ptr %x444, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext 0, i64 noundef %509, i64 noundef %510)
  %511 = load i8, ptr %x449, align 1
  %512 = load i64, ptr %x445, align 8
  %513 = load i64, ptr %x442, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %511, i64 noundef %512, i64 noundef %513)
  %514 = load i8, ptr %x451, align 1
  %515 = load i64, ptr %x443, align 8
  %516 = load i64, ptr %x440, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %514, i64 noundef %515, i64 noundef %516)
  %517 = load i8, ptr %x453, align 1
  %518 = load i64, ptr %x441, align 8
  %519 = load i64, ptr %x438, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %517, i64 noundef %518, i64 noundef %519)
  %520 = load i8, ptr %x455, align 1
  %521 = load i64, ptr %x439, align 8
  %522 = load i64, ptr %x436, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %520, i64 noundef %521, i64 noundef %522)
  %523 = load i8, ptr %x457, align 1
  %524 = load i64, ptr %x437, align 8
  %525 = load i64, ptr %x434, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %523, i64 noundef %524, i64 noundef %525)
  %526 = load i64, ptr %x420, align 8
  %527 = load i64, ptr %x446, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext 0, i64 noundef %526, i64 noundef %527)
  %528 = load i8, ptr %x461, align 1
  %529 = load i64, ptr %x422, align 8
  %530 = load i64, ptr %x448, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %528, i64 noundef %529, i64 noundef %530)
  %531 = load i8, ptr %x463, align 1
  %532 = load i64, ptr %x424, align 8
  %533 = load i64, ptr %x450, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %531, i64 noundef %532, i64 noundef %533)
  %534 = load i8, ptr %x465, align 1
  %535 = load i64, ptr %x426, align 8
  %536 = load i64, ptr %x452, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %534, i64 noundef %535, i64 noundef %536)
  %537 = load i8, ptr %x467, align 1
  %538 = load i64, ptr %x428, align 8
  %539 = load i64, ptr %x454, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x468, ptr noundef %x469, i8 noundef zeroext %537, i64 noundef %538, i64 noundef %539)
  %540 = load i8, ptr %x469, align 1
  %541 = load i64, ptr %x430, align 8
  %542 = load i64, ptr %x456, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x470, ptr noundef %x471, i8 noundef zeroext %540, i64 noundef %541, i64 noundef %542)
  %543 = load i8, ptr %x471, align 1
  %544 = load i64, ptr %x432, align 8
  %545 = load i64, ptr %x458, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x472, ptr noundef %x473, i8 noundef zeroext %543, i64 noundef %544, i64 noundef %545)
  %546 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x474, ptr noundef %x475, i64 noundef %546, i64 noundef 41406098690346)
  %547 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x476, ptr noundef %x477, i64 noundef %547, i64 noundef 7629496211932212634)
  %548 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x478, ptr noundef %x479, i64 noundef %548, i64 noundef -6067031773192244098)
  %549 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x480, ptr noundef %x481, i64 noundef %549, i64 noundef 1683438818023996427)
  %550 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x482, ptr noundef %x483, i64 noundef %550, i64 noundef -6113751670094468979)
  %551 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x484, ptr noundef %x485, i64 noundef %551, i64 noundef -5986282916474808126)
  %552 = load i64, ptr %x6, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x486, ptr noundef %x487, i64 noundef %552, i64 noundef 2946862024238734128)
  %553 = load i64, ptr %x487, align 8
  %554 = load i64, ptr %x484, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext 0, i64 noundef %553, i64 noundef %554)
  %555 = load i8, ptr %x489, align 1
  %556 = load i64, ptr %x485, align 8
  %557 = load i64, ptr %x482, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %555, i64 noundef %556, i64 noundef %557)
  %558 = load i8, ptr %x491, align 1
  %559 = load i64, ptr %x483, align 8
  %560 = load i64, ptr %x480, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %558, i64 noundef %559, i64 noundef %560)
  %561 = load i8, ptr %x493, align 1
  %562 = load i64, ptr %x481, align 8
  %563 = load i64, ptr %x478, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext %561, i64 noundef %562, i64 noundef %563)
  %564 = load i8, ptr %x495, align 1
  %565 = load i64, ptr %x479, align 8
  %566 = load i64, ptr %x476, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext %564, i64 noundef %565, i64 noundef %566)
  %567 = load i8, ptr %x497, align 1
  %568 = load i64, ptr %x477, align 8
  %569 = load i64, ptr %x474, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %567, i64 noundef %568, i64 noundef %569)
  %570 = load i64, ptr %x462, align 8
  %571 = load i64, ptr %x486, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext 0, i64 noundef %570, i64 noundef %571)
  %572 = load i8, ptr %x501, align 1
  %573 = load i64, ptr %x464, align 8
  %574 = load i64, ptr %x488, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %572, i64 noundef %573, i64 noundef %574)
  %575 = load i8, ptr %x503, align 1
  %576 = load i64, ptr %x466, align 8
  %577 = load i64, ptr %x490, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %575, i64 noundef %576, i64 noundef %577)
  %578 = load i8, ptr %x505, align 1
  %579 = load i64, ptr %x468, align 8
  %580 = load i64, ptr %x492, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x506, ptr noundef %x507, i8 noundef zeroext %578, i64 noundef %579, i64 noundef %580)
  %581 = load i8, ptr %x507, align 1
  %582 = load i64, ptr %x470, align 8
  %583 = load i64, ptr %x494, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x508, ptr noundef %x509, i8 noundef zeroext %581, i64 noundef %582, i64 noundef %583)
  %584 = load i8, ptr %x509, align 1
  %585 = load i64, ptr %x472, align 8
  %586 = load i64, ptr %x496, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x510, ptr noundef %x511, i8 noundef zeroext %584, i64 noundef %585, i64 noundef %586)
  %587 = load i8, ptr %x511, align 1
  %588 = load i8, ptr %x473, align 1
  %conv48 = zext i8 %588 to i64
  %589 = load i8, ptr %x433, align 1
  %conv49 = zext i8 %589 to i64
  %590 = load i8, ptr %x419, align 1
  %conv50 = zext i8 %590 to i64
  %591 = load i64, ptr %x395, align 8
  %add51 = add i64 %conv50, %591
  %add52 = add i64 %conv49, %add51
  %add53 = add i64 %conv48, %add52
  %592 = load i8, ptr %x459, align 1
  %conv54 = zext i8 %592 to i64
  %593 = load i64, ptr %x435, align 8
  %add55 = add i64 %conv54, %593
  %add56 = add i64 %add53, %add55
  %594 = load i64, ptr %x498, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x512, ptr noundef %x513, i8 noundef zeroext %587, i64 noundef %add56, i64 noundef %594)
  %595 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x514, ptr noundef %x515, i64 noundef %595, i64 noundef 620258357900100)
  %596 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x516, ptr noundef %x517, i64 noundef %596, i64 noundef 7853257225132122198)
  %597 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x518, ptr noundef %x519, i64 noundef %597, i64 noundef 8918917783347572387)
  %598 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x520, ptr noundef %x521, i64 noundef %598, i64 noundef -161717841442111489)
  %599 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x522, ptr noundef %x523, i64 noundef %599, i64 noundef -1)
  %600 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x524, ptr noundef %x525, i64 noundef %600, i64 noundef -1)
  %601 = load i64, ptr %x500, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x526, ptr noundef %x527, i64 noundef %601, i64 noundef -1)
  %602 = load i64, ptr %x527, align 8
  %603 = load i64, ptr %x524, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext 0, i64 noundef %602, i64 noundef %603)
  %604 = load i8, ptr %x529, align 1
  %605 = load i64, ptr %x525, align 8
  %606 = load i64, ptr %x522, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %604, i64 noundef %605, i64 noundef %606)
  %607 = load i8, ptr %x531, align 1
  %608 = load i64, ptr %x523, align 8
  %609 = load i64, ptr %x520, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %607, i64 noundef %608, i64 noundef %609)
  %610 = load i8, ptr %x533, align 1
  %611 = load i64, ptr %x521, align 8
  %612 = load i64, ptr %x518, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %610, i64 noundef %611, i64 noundef %612)
  %613 = load i8, ptr %x535, align 1
  %614 = load i64, ptr %x519, align 8
  %615 = load i64, ptr %x516, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %613, i64 noundef %614, i64 noundef %615)
  %616 = load i8, ptr %x537, align 1
  %617 = load i64, ptr %x517, align 8
  %618 = load i64, ptr %x514, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %616, i64 noundef %617, i64 noundef %618)
  %619 = load i64, ptr %x500, align 8
  %620 = load i64, ptr %x526, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext 0, i64 noundef %619, i64 noundef %620)
  %621 = load i8, ptr %x541, align 1
  %622 = load i64, ptr %x502, align 8
  %623 = load i64, ptr %x528, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %621, i64 noundef %622, i64 noundef %623)
  %624 = load i8, ptr %x543, align 1
  %625 = load i64, ptr %x504, align 8
  %626 = load i64, ptr %x530, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x544, ptr noundef %x545, i8 noundef zeroext %624, i64 noundef %625, i64 noundef %626)
  %627 = load i8, ptr %x545, align 1
  %628 = load i64, ptr %x506, align 8
  %629 = load i64, ptr %x532, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x546, ptr noundef %x547, i8 noundef zeroext %627, i64 noundef %628, i64 noundef %629)
  %630 = load i8, ptr %x547, align 1
  %631 = load i64, ptr %x508, align 8
  %632 = load i64, ptr %x534, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x548, ptr noundef %x549, i8 noundef zeroext %630, i64 noundef %631, i64 noundef %632)
  %633 = load i8, ptr %x549, align 1
  %634 = load i64, ptr %x510, align 8
  %635 = load i64, ptr %x536, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x550, ptr noundef %x551, i8 noundef zeroext %633, i64 noundef %634, i64 noundef %635)
  %636 = load i8, ptr %x551, align 1
  %637 = load i64, ptr %x512, align 8
  %638 = load i64, ptr %x538, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x552, ptr noundef %x553, i8 noundef zeroext %636, i64 noundef %637, i64 noundef %638)
  %639 = load i8, ptr %x553, align 1
  %conv57 = zext i8 %639 to i64
  %640 = load i8, ptr %x513, align 1
  %conv58 = zext i8 %640 to i64
  %641 = load i8, ptr %x499, align 1
  %conv59 = zext i8 %641 to i64
  %642 = load i64, ptr %x475, align 8
  %add60 = add i64 %conv59, %642
  %add61 = add i64 %conv58, %add60
  %add62 = add i64 %conv57, %add61
  %643 = load i8, ptr %x539, align 1
  %conv63 = zext i8 %643 to i64
  %644 = load i64, ptr %x515, align 8
  %add64 = add i64 %conv63, %644
  %add65 = add i64 %add62, %add64
  store i64 %add65, ptr %x554, align 8
  %645 = load i64, ptr %x542, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext 0, i64 noundef %645, i64 noundef -1)
  %646 = load i8, ptr %x556, align 1
  %647 = load i64, ptr %x544, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %646, i64 noundef %647, i64 noundef -1)
  %648 = load i8, ptr %x558, align 1
  %649 = load i64, ptr %x546, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %648, i64 noundef %649, i64 noundef -1)
  %650 = load i8, ptr %x560, align 1
  %651 = load i64, ptr %x548, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %650, i64 noundef %651, i64 noundef -161717841442111489)
  %652 = load i8, ptr %x562, align 1
  %653 = load i64, ptr %x550, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext %652, i64 noundef %653, i64 noundef 8918917783347572387)
  %654 = load i8, ptr %x564, align 1
  %655 = load i64, ptr %x552, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %654, i64 noundef %655, i64 noundef 7853257225132122198)
  %656 = load i8, ptr %x566, align 1
  %657 = load i64, ptr %x554, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %656, i64 noundef %657, i64 noundef 620258357900100)
  %658 = load i8, ptr %x568, align 1
  call void @fiat_p434_subborrowx_u64(ptr noundef %x569, ptr noundef %x570, i8 noundef zeroext %658, i64 noundef 0, i64 noundef 0)
  %659 = load i8, ptr %x570, align 1
  %660 = load i64, ptr %x555, align 8
  %661 = load i64, ptr %x542, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x571, i8 noundef zeroext %659, i64 noundef %660, i64 noundef %661)
  %662 = load i8, ptr %x570, align 1
  %663 = load i64, ptr %x557, align 8
  %664 = load i64, ptr %x544, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x572, i8 noundef zeroext %662, i64 noundef %663, i64 noundef %664)
  %665 = load i8, ptr %x570, align 1
  %666 = load i64, ptr %x559, align 8
  %667 = load i64, ptr %x546, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x573, i8 noundef zeroext %665, i64 noundef %666, i64 noundef %667)
  %668 = load i8, ptr %x570, align 1
  %669 = load i64, ptr %x561, align 8
  %670 = load i64, ptr %x548, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x574, i8 noundef zeroext %668, i64 noundef %669, i64 noundef %670)
  %671 = load i8, ptr %x570, align 1
  %672 = load i64, ptr %x563, align 8
  %673 = load i64, ptr %x550, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x575, i8 noundef zeroext %671, i64 noundef %672, i64 noundef %673)
  %674 = load i8, ptr %x570, align 1
  %675 = load i64, ptr %x565, align 8
  %676 = load i64, ptr %x552, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x576, i8 noundef zeroext %674, i64 noundef %675, i64 noundef %676)
  %677 = load i8, ptr %x570, align 1
  %678 = load i64, ptr %x567, align 8
  %679 = load i64, ptr %x554, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x577, i8 noundef zeroext %677, i64 noundef %678, i64 noundef %679)
  %680 = load i64, ptr %x571, align 8
  %681 = load ptr, ptr %out1.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %681, i64 0
  store i64 %680, ptr %arrayidx66, align 8
  %682 = load i64, ptr %x572, align 8
  %683 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %683, i64 1
  store i64 %682, ptr %arrayidx67, align 8
  %684 = load i64, ptr %x573, align 8
  %685 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %685, i64 2
  store i64 %684, ptr %arrayidx68, align 8
  %686 = load i64, ptr %x574, align 8
  %687 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %687, i64 3
  store i64 %686, ptr %arrayidx69, align 8
  %688 = load i64, ptr %x575, align 8
  %689 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %689, i64 4
  store i64 %688, ptr %arrayidx70, align 8
  %690 = load i64, ptr %x576, align 8
  %691 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, ptr %691, i64 5
  store i64 %690, ptr %arrayidx71, align 8
  %692 = load i64, ptr %x577, align 8
  %693 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %693, i64 6
  store i64 %692, ptr %arrayidx72, align 8
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
