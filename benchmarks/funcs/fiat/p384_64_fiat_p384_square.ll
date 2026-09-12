; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x20 = alloca i8, align 1
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i8, align 1
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
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
  %x45 = alloca i8, align 1
  %x46 = alloca i64, align 8
  %x47 = alloca i8, align 1
  %x48 = alloca i64, align 8
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i8, align 1
  %x52 = alloca i64, align 8
  %x53 = alloca i8, align 1
  %x54 = alloca i64, align 8
  %x55 = alloca i64, align 8
  %x56 = alloca i8, align 1
  %x57 = alloca i64, align 8
  %x58 = alloca i8, align 1
  %x59 = alloca i64, align 8
  %x60 = alloca i8, align 1
  %x61 = alloca i64, align 8
  %x62 = alloca i8, align 1
  %x63 = alloca i64, align 8
  %x64 = alloca i8, align 1
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i8, align 1
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i8, align 1
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
  %x86 = alloca i8, align 1
  %x87 = alloca i64, align 8
  %x88 = alloca i8, align 1
  %x89 = alloca i64, align 8
  %x90 = alloca i8, align 1
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
  %x105 = alloca i8, align 1
  %x106 = alloca i64, align 8
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i8, align 1
  %x124 = alloca i64, align 8
  %x125 = alloca i8, align 1
  %x126 = alloca i64, align 8
  %x127 = alloca i8, align 1
  %x128 = alloca i64, align 8
  %x129 = alloca i8, align 1
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i8, align 1
  %x133 = alloca i64, align 8
  %x134 = alloca i8, align 1
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
  %x146 = alloca i64, align 8
  %x147 = alloca i64, align 8
  %x148 = alloca i64, align 8
  %x149 = alloca i64, align 8
  %x150 = alloca i64, align 8
  %x151 = alloca i64, align 8
  %x152 = alloca i64, align 8
  %x153 = alloca i64, align 8
  %x154 = alloca i64, align 8
  %x155 = alloca i64, align 8
  %x156 = alloca i64, align 8
  %x157 = alloca i64, align 8
  %x158 = alloca i64, align 8
  %x159 = alloca i8, align 1
  %x160 = alloca i64, align 8
  %x161 = alloca i8, align 1
  %x162 = alloca i64, align 8
  %x163 = alloca i8, align 1
  %x164 = alloca i64, align 8
  %x165 = alloca i8, align 1
  %x166 = alloca i64, align 8
  %x167 = alloca i8, align 1
  %x168 = alloca i64, align 8
  %x169 = alloca i64, align 8
  %x170 = alloca i8, align 1
  %x171 = alloca i64, align 8
  %x172 = alloca i8, align 1
  %x173 = alloca i64, align 8
  %x174 = alloca i8, align 1
  %x175 = alloca i64, align 8
  %x176 = alloca i8, align 1
  %x177 = alloca i64, align 8
  %x178 = alloca i8, align 1
  %x179 = alloca i64, align 8
  %x180 = alloca i8, align 1
  %x181 = alloca i64, align 8
  %x182 = alloca i8, align 1
  %x183 = alloca i64, align 8
  %x184 = alloca i64, align 8
  %x185 = alloca i64, align 8
  %x186 = alloca i64, align 8
  %x187 = alloca i64, align 8
  %x188 = alloca i64, align 8
  %x189 = alloca i64, align 8
  %x190 = alloca i64, align 8
  %x191 = alloca i64, align 8
  %x192 = alloca i64, align 8
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
  %x196 = alloca i64, align 8
  %x197 = alloca i64, align 8
  %x198 = alloca i8, align 1
  %x199 = alloca i64, align 8
  %x200 = alloca i8, align 1
  %x201 = alloca i64, align 8
  %x202 = alloca i8, align 1
  %x203 = alloca i64, align 8
  %x204 = alloca i8, align 1
  %x205 = alloca i64, align 8
  %x206 = alloca i8, align 1
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
  %x223 = alloca i64, align 8
  %x224 = alloca i64, align 8
  %x225 = alloca i64, align 8
  %x226 = alloca i64, align 8
  %x227 = alloca i64, align 8
  %x228 = alloca i64, align 8
  %x229 = alloca i64, align 8
  %x230 = alloca i64, align 8
  %x231 = alloca i64, align 8
  %x232 = alloca i64, align 8
  %x233 = alloca i64, align 8
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
  %x246 = alloca i64, align 8
  %x247 = alloca i8, align 1
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
  %x261 = alloca i64, align 8
  %x262 = alloca i64, align 8
  %x263 = alloca i64, align 8
  %x264 = alloca i64, align 8
  %x265 = alloca i64, align 8
  %x266 = alloca i64, align 8
  %x267 = alloca i64, align 8
  %x268 = alloca i64, align 8
  %x269 = alloca i64, align 8
  %x270 = alloca i64, align 8
  %x271 = alloca i64, align 8
  %x272 = alloca i64, align 8
  %x273 = alloca i64, align 8
  %x274 = alloca i64, align 8
  %x275 = alloca i8, align 1
  %x276 = alloca i64, align 8
  %x277 = alloca i8, align 1
  %x278 = alloca i64, align 8
  %x279 = alloca i8, align 1
  %x280 = alloca i64, align 8
  %x281 = alloca i8, align 1
  %x282 = alloca i64, align 8
  %x283 = alloca i8, align 1
  %x284 = alloca i64, align 8
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
  %x296 = alloca i8, align 1
  %x297 = alloca i64, align 8
  %x298 = alloca i8, align 1
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
  %x310 = alloca i64, align 8
  %x311 = alloca i64, align 8
  %x312 = alloca i64, align 8
  %x313 = alloca i8, align 1
  %x314 = alloca i64, align 8
  %x315 = alloca i8, align 1
  %x316 = alloca i64, align 8
  %x317 = alloca i8, align 1
  %x318 = alloca i64, align 8
  %x319 = alloca i8, align 1
  %x320 = alloca i64, align 8
  %x321 = alloca i8, align 1
  %x322 = alloca i64, align 8
  %x323 = alloca i64, align 8
  %x324 = alloca i8, align 1
  %x325 = alloca i64, align 8
  %x326 = alloca i8, align 1
  %x327 = alloca i64, align 8
  %x328 = alloca i8, align 1
  %x329 = alloca i64, align 8
  %x330 = alloca i8, align 1
  %x331 = alloca i64, align 8
  %x332 = alloca i8, align 1
  %x333 = alloca i64, align 8
  %x334 = alloca i8, align 1
  %x335 = alloca i64, align 8
  %x336 = alloca i8, align 1
  %x337 = alloca i64, align 8
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
  %x352 = alloca i8, align 1
  %x353 = alloca i64, align 8
  %x354 = alloca i8, align 1
  %x355 = alloca i64, align 8
  %x356 = alloca i8, align 1
  %x357 = alloca i64, align 8
  %x358 = alloca i8, align 1
  %x359 = alloca i64, align 8
  %x360 = alloca i8, align 1
  %x361 = alloca i64, align 8
  %x362 = alloca i64, align 8
  %x363 = alloca i8, align 1
  %x364 = alloca i64, align 8
  %x365 = alloca i8, align 1
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
  %x377 = alloca i64, align 8
  %x378 = alloca i64, align 8
  %x379 = alloca i64, align 8
  %x380 = alloca i64, align 8
  %x381 = alloca i64, align 8
  %x382 = alloca i64, align 8
  %x383 = alloca i64, align 8
  %x384 = alloca i64, align 8
  %x385 = alloca i64, align 8
  %x386 = alloca i64, align 8
  %x387 = alloca i64, align 8
  %x388 = alloca i64, align 8
  %x389 = alloca i64, align 8
  %x390 = alloca i8, align 1
  %x391 = alloca i64, align 8
  %x392 = alloca i8, align 1
  %x393 = alloca i64, align 8
  %x394 = alloca i8, align 1
  %x395 = alloca i64, align 8
  %x396 = alloca i8, align 1
  %x397 = alloca i64, align 8
  %x398 = alloca i8, align 1
  %x399 = alloca i64, align 8
  %x400 = alloca i64, align 8
  %x401 = alloca i8, align 1
  %x402 = alloca i64, align 8
  %x403 = alloca i8, align 1
  %x404 = alloca i64, align 8
  %x405 = alloca i8, align 1
  %x406 = alloca i64, align 8
  %x407 = alloca i8, align 1
  %x408 = alloca i64, align 8
  %x409 = alloca i8, align 1
  %x410 = alloca i64, align 8
  %x411 = alloca i8, align 1
  %x412 = alloca i64, align 8
  %x413 = alloca i8, align 1
  %x414 = alloca i64, align 8
  %x415 = alloca i64, align 8
  %x416 = alloca i64, align 8
  %x417 = alloca i64, align 8
  %x418 = alloca i64, align 8
  %x419 = alloca i64, align 8
  %x420 = alloca i64, align 8
  %x421 = alloca i64, align 8
  %x422 = alloca i64, align 8
  %x423 = alloca i64, align 8
  %x424 = alloca i64, align 8
  %x425 = alloca i64, align 8
  %x426 = alloca i64, align 8
  %x427 = alloca i64, align 8
  %x428 = alloca i64, align 8
  %x429 = alloca i8, align 1
  %x430 = alloca i64, align 8
  %x431 = alloca i8, align 1
  %x432 = alloca i64, align 8
  %x433 = alloca i8, align 1
  %x434 = alloca i64, align 8
  %x435 = alloca i8, align 1
  %x436 = alloca i64, align 8
  %x437 = alloca i8, align 1
  %x438 = alloca i64, align 8
  %x439 = alloca i64, align 8
  %x440 = alloca i8, align 1
  %x441 = alloca i64, align 8
  %x442 = alloca i8, align 1
  %x443 = alloca i64, align 8
  %x444 = alloca i8, align 1
  %x445 = alloca i64, align 8
  %x446 = alloca i8, align 1
  %x447 = alloca i64, align 8
  %x448 = alloca i8, align 1
  %x449 = alloca i64, align 8
  %x450 = alloca i8, align 1
  %x451 = alloca i64, align 8
  %x452 = alloca i8, align 1
  %x453 = alloca i64, align 8
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
  %x469 = alloca i64, align 8
  %x470 = alloca i64, align 8
  %x471 = alloca i64, align 8
  %x472 = alloca i64, align 8
  %x473 = alloca i64, align 8
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
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 0
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load i64, ptr %x6, align 8
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %13, i64 5
  %14 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %12, i64 noundef %14)
  %15 = load i64, ptr %x6, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %15, i64 noundef %17)
  %18 = load i64, ptr %x6, align 8
  %19 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %19, i64 3
  %20 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %18, i64 noundef %20)
  %21 = load i64, ptr %x6, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 2
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x13, ptr noundef %x14, i64 noundef %21, i64 noundef %23)
  %24 = load i64, ptr %x6, align 8
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 1
  %26 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x15, ptr noundef %x16, i64 noundef %24, i64 noundef %26)
  %27 = load i64, ptr %x6, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 0
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x17, ptr noundef %x18, i64 noundef %27, i64 noundef %29)
  %30 = load i64, ptr %x18, align 8
  %31 = load i64, ptr %x15, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext 0, i64 noundef %30, i64 noundef %31)
  %32 = load i8, ptr %x20, align 1
  %33 = load i64, ptr %x16, align 8
  %34 = load i64, ptr %x13, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x22, align 1
  %36 = load i64, ptr %x14, align 8
  %37 = load i64, ptr %x11, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i8, ptr %x24, align 1
  %39 = load i64, ptr %x12, align 8
  %40 = load i64, ptr %x9, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x26, align 1
  %42 = load i64, ptr %x10, align 8
  %43 = load i64, ptr %x7, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x28, align 1
  %conv = zext i8 %44 to i64
  %45 = load i64, ptr %x8, align 8
  %add = add i64 %conv, %45
  store i64 %add, ptr %x29, align 8
  %46 = load i64, ptr %x17, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x30, ptr noundef %x31, i64 noundef %46, i64 noundef 4294967297)
  %47 = load i64, ptr %x30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x32, ptr noundef %x33, i64 noundef %47, i64 noundef -1)
  %48 = load i64, ptr %x30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x34, ptr noundef %x35, i64 noundef %48, i64 noundef -1)
  %49 = load i64, ptr %x30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x36, ptr noundef %x37, i64 noundef %49, i64 noundef -1)
  %50 = load i64, ptr %x30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x38, ptr noundef %x39, i64 noundef %50, i64 noundef -2)
  %51 = load i64, ptr %x30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x40, ptr noundef %x41, i64 noundef %51, i64 noundef -4294967296)
  %52 = load i64, ptr %x30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %52, i64 noundef 4294967295)
  %53 = load i64, ptr %x43, align 8
  %54 = load i64, ptr %x40, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext 0, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x45, align 1
  %56 = load i64, ptr %x41, align 8
  %57 = load i64, ptr %x38, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x47, align 1
  %59 = load i64, ptr %x39, align 8
  %60 = load i64, ptr %x36, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i8, ptr %x49, align 1
  %62 = load i64, ptr %x37, align 8
  %63 = load i64, ptr %x34, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %61, i64 noundef %62, i64 noundef %63)
  %64 = load i8, ptr %x51, align 1
  %65 = load i64, ptr %x35, align 8
  %66 = load i64, ptr %x32, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %64, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x53, align 1
  %conv12 = zext i8 %67 to i64
  %68 = load i64, ptr %x33, align 8
  %add13 = add i64 %conv12, %68
  store i64 %add13, ptr %x54, align 8
  %69 = load i64, ptr %x17, align 8
  %70 = load i64, ptr %x42, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext 0, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x56, align 1
  %72 = load i64, ptr %x19, align 8
  %73 = load i64, ptr %x44, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x58, align 1
  %75 = load i64, ptr %x21, align 8
  %76 = load i64, ptr %x46, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x60, align 1
  %78 = load i64, ptr %x23, align 8
  %79 = load i64, ptr %x48, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x62, align 1
  %81 = load i64, ptr %x25, align 8
  %82 = load i64, ptr %x50, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x64, align 1
  %84 = load i64, ptr %x27, align 8
  %85 = load i64, ptr %x52, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %83, i64 noundef %84, i64 noundef %85)
  %86 = load i8, ptr %x66, align 1
  %87 = load i64, ptr %x29, align 8
  %88 = load i64, ptr %x54, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %86, i64 noundef %87, i64 noundef %88)
  %89 = load i64, ptr %x1, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %90, i64 5
  %91 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef %89, i64 noundef %91)
  %92 = load i64, ptr %x1, align 8
  %93 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %93, i64 4
  %94 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef %92, i64 noundef %94)
  %95 = load i64, ptr %x1, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %96, i64 3
  %97 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x73, ptr noundef %x74, i64 noundef %95, i64 noundef %97)
  %98 = load i64, ptr %x1, align 8
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %99, i64 2
  %100 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x75, ptr noundef %x76, i64 noundef %98, i64 noundef %100)
  %101 = load i64, ptr %x1, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %102, i64 1
  %103 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x77, ptr noundef %x78, i64 noundef %101, i64 noundef %103)
  %104 = load i64, ptr %x1, align 8
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %105, i64 0
  %106 = load i64, ptr %arrayidx19, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x79, ptr noundef %x80, i64 noundef %104, i64 noundef %106)
  %107 = load i64, ptr %x80, align 8
  %108 = load i64, ptr %x77, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext 0, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x82, align 1
  %110 = load i64, ptr %x78, align 8
  %111 = load i64, ptr %x75, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i8, ptr %x84, align 1
  %113 = load i64, ptr %x76, align 8
  %114 = load i64, ptr %x73, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %112, i64 noundef %113, i64 noundef %114)
  %115 = load i8, ptr %x86, align 1
  %116 = load i64, ptr %x74, align 8
  %117 = load i64, ptr %x71, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %115, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x88, align 1
  %119 = load i64, ptr %x72, align 8
  %120 = load i64, ptr %x69, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x90, align 1
  %conv20 = zext i8 %121 to i64
  %122 = load i64, ptr %x70, align 8
  %add21 = add i64 %conv20, %122
  store i64 %add21, ptr %x91, align 8
  %123 = load i64, ptr %x57, align 8
  %124 = load i64, ptr %x79, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext 0, i64 noundef %123, i64 noundef %124)
  %125 = load i8, ptr %x93, align 1
  %126 = load i64, ptr %x59, align 8
  %127 = load i64, ptr %x81, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %127)
  %128 = load i8, ptr %x95, align 1
  %129 = load i64, ptr %x61, align 8
  %130 = load i64, ptr %x83, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %128, i64 noundef %129, i64 noundef %130)
  %131 = load i8, ptr %x97, align 1
  %132 = load i64, ptr %x63, align 8
  %133 = load i64, ptr %x85, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %131, i64 noundef %132, i64 noundef %133)
  %134 = load i8, ptr %x99, align 1
  %135 = load i64, ptr %x65, align 8
  %136 = load i64, ptr %x87, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %134, i64 noundef %135, i64 noundef %136)
  %137 = load i8, ptr %x101, align 1
  %138 = load i64, ptr %x67, align 8
  %139 = load i64, ptr %x89, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %137, i64 noundef %138, i64 noundef %139)
  %140 = load i8, ptr %x103, align 1
  %141 = load i8, ptr %x68, align 1
  %conv22 = zext i8 %141 to i64
  %142 = load i64, ptr %x91, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %140, i64 noundef %conv22, i64 noundef %142)
  %143 = load i64, ptr %x92, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x106, ptr noundef %x107, i64 noundef %143, i64 noundef 4294967297)
  %144 = load i64, ptr %x106, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x108, ptr noundef %x109, i64 noundef %144, i64 noundef -1)
  %145 = load i64, ptr %x106, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x110, ptr noundef %x111, i64 noundef %145, i64 noundef -1)
  %146 = load i64, ptr %x106, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x112, ptr noundef %x113, i64 noundef %146, i64 noundef -1)
  %147 = load i64, ptr %x106, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x114, ptr noundef %x115, i64 noundef %147, i64 noundef -2)
  %148 = load i64, ptr %x106, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x116, ptr noundef %x117, i64 noundef %148, i64 noundef -4294967296)
  %149 = load i64, ptr %x106, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x118, ptr noundef %x119, i64 noundef %149, i64 noundef 4294967295)
  %150 = load i64, ptr %x119, align 8
  %151 = load i64, ptr %x116, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x121, align 1
  %153 = load i64, ptr %x117, align 8
  %154 = load i64, ptr %x114, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x123, align 1
  %156 = load i64, ptr %x115, align 8
  %157 = load i64, ptr %x112, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x125, align 1
  %159 = load i64, ptr %x113, align 8
  %160 = load i64, ptr %x110, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x127, align 1
  %162 = load i64, ptr %x111, align 8
  %163 = load i64, ptr %x108, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x129, align 1
  %conv23 = zext i8 %164 to i64
  %165 = load i64, ptr %x109, align 8
  %add24 = add i64 %conv23, %165
  store i64 %add24, ptr %x130, align 8
  %166 = load i64, ptr %x92, align 8
  %167 = load i64, ptr %x118, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x132, align 1
  %169 = load i64, ptr %x94, align 8
  %170 = load i64, ptr %x120, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x134, align 1
  %172 = load i64, ptr %x96, align 8
  %173 = load i64, ptr %x122, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x136, align 1
  %175 = load i64, ptr %x98, align 8
  %176 = load i64, ptr %x124, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %174, i64 noundef %175, i64 noundef %176)
  %177 = load i8, ptr %x138, align 1
  %178 = load i64, ptr %x100, align 8
  %179 = load i64, ptr %x126, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %177, i64 noundef %178, i64 noundef %179)
  %180 = load i8, ptr %x140, align 1
  %181 = load i64, ptr %x102, align 8
  %182 = load i64, ptr %x128, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %180, i64 noundef %181, i64 noundef %182)
  %183 = load i8, ptr %x142, align 1
  %184 = load i64, ptr %x104, align 8
  %185 = load i64, ptr %x130, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x144, align 1
  %conv25 = zext i8 %186 to i64
  %187 = load i8, ptr %x105, align 1
  %conv26 = zext i8 %187 to i64
  %add27 = add i64 %conv25, %conv26
  store i64 %add27, ptr %x145, align 8
  %188 = load i64, ptr %x2, align 8
  %189 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %189, i64 5
  %190 = load i64, ptr %arrayidx28, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x146, ptr noundef %x147, i64 noundef %188, i64 noundef %190)
  %191 = load i64, ptr %x2, align 8
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %192, i64 4
  %193 = load i64, ptr %arrayidx29, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x148, ptr noundef %x149, i64 noundef %191, i64 noundef %193)
  %194 = load i64, ptr %x2, align 8
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %195, i64 3
  %196 = load i64, ptr %arrayidx30, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x150, ptr noundef %x151, i64 noundef %194, i64 noundef %196)
  %197 = load i64, ptr %x2, align 8
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %198, i64 2
  %199 = load i64, ptr %arrayidx31, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x152, ptr noundef %x153, i64 noundef %197, i64 noundef %199)
  %200 = load i64, ptr %x2, align 8
  %201 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %201, i64 1
  %202 = load i64, ptr %arrayidx32, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x154, ptr noundef %x155, i64 noundef %200, i64 noundef %202)
  %203 = load i64, ptr %x2, align 8
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %204, i64 0
  %205 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x156, ptr noundef %x157, i64 noundef %203, i64 noundef %205)
  %206 = load i64, ptr %x157, align 8
  %207 = load i64, ptr %x154, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x159, align 1
  %209 = load i64, ptr %x155, align 8
  %210 = load i64, ptr %x152, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %208, i64 noundef %209, i64 noundef %210)
  %211 = load i8, ptr %x161, align 1
  %212 = load i64, ptr %x153, align 8
  %213 = load i64, ptr %x150, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %211, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x163, align 1
  %215 = load i64, ptr %x151, align 8
  %216 = load i64, ptr %x148, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %214, i64 noundef %215, i64 noundef %216)
  %217 = load i8, ptr %x165, align 1
  %218 = load i64, ptr %x149, align 8
  %219 = load i64, ptr %x146, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %217, i64 noundef %218, i64 noundef %219)
  %220 = load i8, ptr %x167, align 1
  %conv34 = zext i8 %220 to i64
  %221 = load i64, ptr %x147, align 8
  %add35 = add i64 %conv34, %221
  store i64 %add35, ptr %x168, align 8
  %222 = load i64, ptr %x133, align 8
  %223 = load i64, ptr %x156, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext 0, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x170, align 1
  %225 = load i64, ptr %x135, align 8
  %226 = load i64, ptr %x158, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x172, align 1
  %228 = load i64, ptr %x137, align 8
  %229 = load i64, ptr %x160, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x174, align 1
  %231 = load i64, ptr %x139, align 8
  %232 = load i64, ptr %x162, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %230, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x176, align 1
  %234 = load i64, ptr %x141, align 8
  %235 = load i64, ptr %x164, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %233, i64 noundef %234, i64 noundef %235)
  %236 = load i8, ptr %x178, align 1
  %237 = load i64, ptr %x143, align 8
  %238 = load i64, ptr %x166, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %236, i64 noundef %237, i64 noundef %238)
  %239 = load i8, ptr %x180, align 1
  %240 = load i64, ptr %x145, align 8
  %241 = load i64, ptr %x168, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %239, i64 noundef %240, i64 noundef %241)
  %242 = load i64, ptr %x169, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x183, ptr noundef %x184, i64 noundef %242, i64 noundef 4294967297)
  %243 = load i64, ptr %x183, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x185, ptr noundef %x186, i64 noundef %243, i64 noundef -1)
  %244 = load i64, ptr %x183, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x187, ptr noundef %x188, i64 noundef %244, i64 noundef -1)
  %245 = load i64, ptr %x183, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x189, ptr noundef %x190, i64 noundef %245, i64 noundef -1)
  %246 = load i64, ptr %x183, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x191, ptr noundef %x192, i64 noundef %246, i64 noundef -2)
  %247 = load i64, ptr %x183, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x193, ptr noundef %x194, i64 noundef %247, i64 noundef -4294967296)
  %248 = load i64, ptr %x183, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x195, ptr noundef %x196, i64 noundef %248, i64 noundef 4294967295)
  %249 = load i64, ptr %x196, align 8
  %250 = load i64, ptr %x193, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext 0, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x198, align 1
  %252 = load i64, ptr %x194, align 8
  %253 = load i64, ptr %x191, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %251, i64 noundef %252, i64 noundef %253)
  %254 = load i8, ptr %x200, align 1
  %255 = load i64, ptr %x192, align 8
  %256 = load i64, ptr %x189, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %254, i64 noundef %255, i64 noundef %256)
  %257 = load i8, ptr %x202, align 1
  %258 = load i64, ptr %x190, align 8
  %259 = load i64, ptr %x187, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %257, i64 noundef %258, i64 noundef %259)
  %260 = load i8, ptr %x204, align 1
  %261 = load i64, ptr %x188, align 8
  %262 = load i64, ptr %x185, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %260, i64 noundef %261, i64 noundef %262)
  %263 = load i8, ptr %x206, align 1
  %conv36 = zext i8 %263 to i64
  %264 = load i64, ptr %x186, align 8
  %add37 = add i64 %conv36, %264
  store i64 %add37, ptr %x207, align 8
  %265 = load i64, ptr %x169, align 8
  %266 = load i64, ptr %x195, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i64 noundef %265, i64 noundef %266)
  %267 = load i8, ptr %x209, align 1
  %268 = load i64, ptr %x171, align 8
  %269 = load i64, ptr %x197, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %267, i64 noundef %268, i64 noundef %269)
  %270 = load i8, ptr %x211, align 1
  %271 = load i64, ptr %x173, align 8
  %272 = load i64, ptr %x199, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %270, i64 noundef %271, i64 noundef %272)
  %273 = load i8, ptr %x213, align 1
  %274 = load i64, ptr %x175, align 8
  %275 = load i64, ptr %x201, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %273, i64 noundef %274, i64 noundef %275)
  %276 = load i8, ptr %x215, align 1
  %277 = load i64, ptr %x177, align 8
  %278 = load i64, ptr %x203, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %276, i64 noundef %277, i64 noundef %278)
  %279 = load i8, ptr %x217, align 1
  %280 = load i64, ptr %x179, align 8
  %281 = load i64, ptr %x205, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %279, i64 noundef %280, i64 noundef %281)
  %282 = load i8, ptr %x219, align 1
  %283 = load i64, ptr %x181, align 8
  %284 = load i64, ptr %x207, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %282, i64 noundef %283, i64 noundef %284)
  %285 = load i8, ptr %x221, align 1
  %conv38 = zext i8 %285 to i64
  %286 = load i8, ptr %x182, align 1
  %conv39 = zext i8 %286 to i64
  %add40 = add i64 %conv38, %conv39
  store i64 %add40, ptr %x222, align 8
  %287 = load i64, ptr %x3, align 8
  %288 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %288, i64 5
  %289 = load i64, ptr %arrayidx41, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x223, ptr noundef %x224, i64 noundef %287, i64 noundef %289)
  %290 = load i64, ptr %x3, align 8
  %291 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %291, i64 4
  %292 = load i64, ptr %arrayidx42, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x225, ptr noundef %x226, i64 noundef %290, i64 noundef %292)
  %293 = load i64, ptr %x3, align 8
  %294 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %294, i64 3
  %295 = load i64, ptr %arrayidx43, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x227, ptr noundef %x228, i64 noundef %293, i64 noundef %295)
  %296 = load i64, ptr %x3, align 8
  %297 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %297, i64 2
  %298 = load i64, ptr %arrayidx44, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x229, ptr noundef %x230, i64 noundef %296, i64 noundef %298)
  %299 = load i64, ptr %x3, align 8
  %300 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %300, i64 1
  %301 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x231, ptr noundef %x232, i64 noundef %299, i64 noundef %301)
  %302 = load i64, ptr %x3, align 8
  %303 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %303, i64 0
  %304 = load i64, ptr %arrayidx46, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x233, ptr noundef %x234, i64 noundef %302, i64 noundef %304)
  %305 = load i64, ptr %x234, align 8
  %306 = load i64, ptr %x231, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext 0, i64 noundef %305, i64 noundef %306)
  %307 = load i8, ptr %x236, align 1
  %308 = load i64, ptr %x232, align 8
  %309 = load i64, ptr %x229, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %307, i64 noundef %308, i64 noundef %309)
  %310 = load i8, ptr %x238, align 1
  %311 = load i64, ptr %x230, align 8
  %312 = load i64, ptr %x227, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %310, i64 noundef %311, i64 noundef %312)
  %313 = load i8, ptr %x240, align 1
  %314 = load i64, ptr %x228, align 8
  %315 = load i64, ptr %x225, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %313, i64 noundef %314, i64 noundef %315)
  %316 = load i8, ptr %x242, align 1
  %317 = load i64, ptr %x226, align 8
  %318 = load i64, ptr %x223, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %316, i64 noundef %317, i64 noundef %318)
  %319 = load i8, ptr %x244, align 1
  %conv47 = zext i8 %319 to i64
  %320 = load i64, ptr %x224, align 8
  %add48 = add i64 %conv47, %320
  store i64 %add48, ptr %x245, align 8
  %321 = load i64, ptr %x210, align 8
  %322 = load i64, ptr %x233, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext 0, i64 noundef %321, i64 noundef %322)
  %323 = load i8, ptr %x247, align 1
  %324 = load i64, ptr %x212, align 8
  %325 = load i64, ptr %x235, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %323, i64 noundef %324, i64 noundef %325)
  %326 = load i8, ptr %x249, align 1
  %327 = load i64, ptr %x214, align 8
  %328 = load i64, ptr %x237, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %326, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x251, align 1
  %330 = load i64, ptr %x216, align 8
  %331 = load i64, ptr %x239, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %329, i64 noundef %330, i64 noundef %331)
  %332 = load i8, ptr %x253, align 1
  %333 = load i64, ptr %x218, align 8
  %334 = load i64, ptr %x241, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %332, i64 noundef %333, i64 noundef %334)
  %335 = load i8, ptr %x255, align 1
  %336 = load i64, ptr %x220, align 8
  %337 = load i64, ptr %x243, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %335, i64 noundef %336, i64 noundef %337)
  %338 = load i8, ptr %x257, align 1
  %339 = load i64, ptr %x222, align 8
  %340 = load i64, ptr %x245, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %338, i64 noundef %339, i64 noundef %340)
  %341 = load i64, ptr %x246, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x260, ptr noundef %x261, i64 noundef %341, i64 noundef 4294967297)
  %342 = load i64, ptr %x260, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %342, i64 noundef -1)
  %343 = load i64, ptr %x260, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x264, ptr noundef %x265, i64 noundef %343, i64 noundef -1)
  %344 = load i64, ptr %x260, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x266, ptr noundef %x267, i64 noundef %344, i64 noundef -1)
  %345 = load i64, ptr %x260, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x268, ptr noundef %x269, i64 noundef %345, i64 noundef -2)
  %346 = load i64, ptr %x260, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x270, ptr noundef %x271, i64 noundef %346, i64 noundef -4294967296)
  %347 = load i64, ptr %x260, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x272, ptr noundef %x273, i64 noundef %347, i64 noundef 4294967295)
  %348 = load i64, ptr %x273, align 8
  %349 = load i64, ptr %x270, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext 0, i64 noundef %348, i64 noundef %349)
  %350 = load i8, ptr %x275, align 1
  %351 = load i64, ptr %x271, align 8
  %352 = load i64, ptr %x268, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %350, i64 noundef %351, i64 noundef %352)
  %353 = load i8, ptr %x277, align 1
  %354 = load i64, ptr %x269, align 8
  %355 = load i64, ptr %x266, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %353, i64 noundef %354, i64 noundef %355)
  %356 = load i8, ptr %x279, align 1
  %357 = load i64, ptr %x267, align 8
  %358 = load i64, ptr %x264, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %356, i64 noundef %357, i64 noundef %358)
  %359 = load i8, ptr %x281, align 1
  %360 = load i64, ptr %x265, align 8
  %361 = load i64, ptr %x262, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %359, i64 noundef %360, i64 noundef %361)
  %362 = load i8, ptr %x283, align 1
  %conv49 = zext i8 %362 to i64
  %363 = load i64, ptr %x263, align 8
  %add50 = add i64 %conv49, %363
  store i64 %add50, ptr %x284, align 8
  %364 = load i64, ptr %x246, align 8
  %365 = load i64, ptr %x272, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext 0, i64 noundef %364, i64 noundef %365)
  %366 = load i8, ptr %x286, align 1
  %367 = load i64, ptr %x248, align 8
  %368 = load i64, ptr %x274, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext %366, i64 noundef %367, i64 noundef %368)
  %369 = load i8, ptr %x288, align 1
  %370 = load i64, ptr %x250, align 8
  %371 = load i64, ptr %x276, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %369, i64 noundef %370, i64 noundef %371)
  %372 = load i8, ptr %x290, align 1
  %373 = load i64, ptr %x252, align 8
  %374 = load i64, ptr %x278, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %372, i64 noundef %373, i64 noundef %374)
  %375 = load i8, ptr %x292, align 1
  %376 = load i64, ptr %x254, align 8
  %377 = load i64, ptr %x280, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %375, i64 noundef %376, i64 noundef %377)
  %378 = load i8, ptr %x294, align 1
  %379 = load i64, ptr %x256, align 8
  %380 = load i64, ptr %x282, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %378, i64 noundef %379, i64 noundef %380)
  %381 = load i8, ptr %x296, align 1
  %382 = load i64, ptr %x258, align 8
  %383 = load i64, ptr %x284, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext %381, i64 noundef %382, i64 noundef %383)
  %384 = load i8, ptr %x298, align 1
  %conv51 = zext i8 %384 to i64
  %385 = load i8, ptr %x259, align 1
  %conv52 = zext i8 %385 to i64
  %add53 = add i64 %conv51, %conv52
  store i64 %add53, ptr %x299, align 8
  %386 = load i64, ptr %x4, align 8
  %387 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %387, i64 5
  %388 = load i64, ptr %arrayidx54, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x300, ptr noundef %x301, i64 noundef %386, i64 noundef %388)
  %389 = load i64, ptr %x4, align 8
  %390 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %390, i64 4
  %391 = load i64, ptr %arrayidx55, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x302, ptr noundef %x303, i64 noundef %389, i64 noundef %391)
  %392 = load i64, ptr %x4, align 8
  %393 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %393, i64 3
  %394 = load i64, ptr %arrayidx56, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x304, ptr noundef %x305, i64 noundef %392, i64 noundef %394)
  %395 = load i64, ptr %x4, align 8
  %396 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %396, i64 2
  %397 = load i64, ptr %arrayidx57, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x306, ptr noundef %x307, i64 noundef %395, i64 noundef %397)
  %398 = load i64, ptr %x4, align 8
  %399 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %399, i64 1
  %400 = load i64, ptr %arrayidx58, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x308, ptr noundef %x309, i64 noundef %398, i64 noundef %400)
  %401 = load i64, ptr %x4, align 8
  %402 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %402, i64 0
  %403 = load i64, ptr %arrayidx59, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x310, ptr noundef %x311, i64 noundef %401, i64 noundef %403)
  %404 = load i64, ptr %x311, align 8
  %405 = load i64, ptr %x308, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext 0, i64 noundef %404, i64 noundef %405)
  %406 = load i8, ptr %x313, align 1
  %407 = load i64, ptr %x309, align 8
  %408 = load i64, ptr %x306, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %406, i64 noundef %407, i64 noundef %408)
  %409 = load i8, ptr %x315, align 1
  %410 = load i64, ptr %x307, align 8
  %411 = load i64, ptr %x304, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %409, i64 noundef %410, i64 noundef %411)
  %412 = load i8, ptr %x317, align 1
  %413 = load i64, ptr %x305, align 8
  %414 = load i64, ptr %x302, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %412, i64 noundef %413, i64 noundef %414)
  %415 = load i8, ptr %x319, align 1
  %416 = load i64, ptr %x303, align 8
  %417 = load i64, ptr %x300, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %415, i64 noundef %416, i64 noundef %417)
  %418 = load i8, ptr %x321, align 1
  %conv60 = zext i8 %418 to i64
  %419 = load i64, ptr %x301, align 8
  %add61 = add i64 %conv60, %419
  store i64 %add61, ptr %x322, align 8
  %420 = load i64, ptr %x287, align 8
  %421 = load i64, ptr %x310, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext 0, i64 noundef %420, i64 noundef %421)
  %422 = load i8, ptr %x324, align 1
  %423 = load i64, ptr %x289, align 8
  %424 = load i64, ptr %x312, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %422, i64 noundef %423, i64 noundef %424)
  %425 = load i8, ptr %x326, align 1
  %426 = load i64, ptr %x291, align 8
  %427 = load i64, ptr %x314, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %425, i64 noundef %426, i64 noundef %427)
  %428 = load i8, ptr %x328, align 1
  %429 = load i64, ptr %x293, align 8
  %430 = load i64, ptr %x316, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %428, i64 noundef %429, i64 noundef %430)
  %431 = load i8, ptr %x330, align 1
  %432 = load i64, ptr %x295, align 8
  %433 = load i64, ptr %x318, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %431, i64 noundef %432, i64 noundef %433)
  %434 = load i8, ptr %x332, align 1
  %435 = load i64, ptr %x297, align 8
  %436 = load i64, ptr %x320, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %434, i64 noundef %435, i64 noundef %436)
  %437 = load i8, ptr %x334, align 1
  %438 = load i64, ptr %x299, align 8
  %439 = load i64, ptr %x322, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %437, i64 noundef %438, i64 noundef %439)
  %440 = load i64, ptr %x323, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x337, ptr noundef %x338, i64 noundef %440, i64 noundef 4294967297)
  %441 = load i64, ptr %x337, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x339, ptr noundef %x340, i64 noundef %441, i64 noundef -1)
  %442 = load i64, ptr %x337, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x341, ptr noundef %x342, i64 noundef %442, i64 noundef -1)
  %443 = load i64, ptr %x337, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x343, ptr noundef %x344, i64 noundef %443, i64 noundef -1)
  %444 = load i64, ptr %x337, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x345, ptr noundef %x346, i64 noundef %444, i64 noundef -2)
  %445 = load i64, ptr %x337, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x347, ptr noundef %x348, i64 noundef %445, i64 noundef -4294967296)
  %446 = load i64, ptr %x337, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x349, ptr noundef %x350, i64 noundef %446, i64 noundef 4294967295)
  %447 = load i64, ptr %x350, align 8
  %448 = load i64, ptr %x347, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext 0, i64 noundef %447, i64 noundef %448)
  %449 = load i8, ptr %x352, align 1
  %450 = load i64, ptr %x348, align 8
  %451 = load i64, ptr %x345, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %449, i64 noundef %450, i64 noundef %451)
  %452 = load i8, ptr %x354, align 1
  %453 = load i64, ptr %x346, align 8
  %454 = load i64, ptr %x343, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %452, i64 noundef %453, i64 noundef %454)
  %455 = load i8, ptr %x356, align 1
  %456 = load i64, ptr %x344, align 8
  %457 = load i64, ptr %x341, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %455, i64 noundef %456, i64 noundef %457)
  %458 = load i8, ptr %x358, align 1
  %459 = load i64, ptr %x342, align 8
  %460 = load i64, ptr %x339, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %458, i64 noundef %459, i64 noundef %460)
  %461 = load i8, ptr %x360, align 1
  %conv62 = zext i8 %461 to i64
  %462 = load i64, ptr %x340, align 8
  %add63 = add i64 %conv62, %462
  store i64 %add63, ptr %x361, align 8
  %463 = load i64, ptr %x323, align 8
  %464 = load i64, ptr %x349, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext 0, i64 noundef %463, i64 noundef %464)
  %465 = load i8, ptr %x363, align 1
  %466 = load i64, ptr %x325, align 8
  %467 = load i64, ptr %x351, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %465, i64 noundef %466, i64 noundef %467)
  %468 = load i8, ptr %x365, align 1
  %469 = load i64, ptr %x327, align 8
  %470 = load i64, ptr %x353, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %468, i64 noundef %469, i64 noundef %470)
  %471 = load i8, ptr %x367, align 1
  %472 = load i64, ptr %x329, align 8
  %473 = load i64, ptr %x355, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %471, i64 noundef %472, i64 noundef %473)
  %474 = load i8, ptr %x369, align 1
  %475 = load i64, ptr %x331, align 8
  %476 = load i64, ptr %x357, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %474, i64 noundef %475, i64 noundef %476)
  %477 = load i8, ptr %x371, align 1
  %478 = load i64, ptr %x333, align 8
  %479 = load i64, ptr %x359, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %477, i64 noundef %478, i64 noundef %479)
  %480 = load i8, ptr %x373, align 1
  %481 = load i64, ptr %x335, align 8
  %482 = load i64, ptr %x361, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %480, i64 noundef %481, i64 noundef %482)
  %483 = load i8, ptr %x375, align 1
  %conv64 = zext i8 %483 to i64
  %484 = load i8, ptr %x336, align 1
  %conv65 = zext i8 %484 to i64
  %add66 = add i64 %conv64, %conv65
  store i64 %add66, ptr %x376, align 8
  %485 = load i64, ptr %x5, align 8
  %486 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %486, i64 5
  %487 = load i64, ptr %arrayidx67, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x377, ptr noundef %x378, i64 noundef %485, i64 noundef %487)
  %488 = load i64, ptr %x5, align 8
  %489 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %489, i64 4
  %490 = load i64, ptr %arrayidx68, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x379, ptr noundef %x380, i64 noundef %488, i64 noundef %490)
  %491 = load i64, ptr %x5, align 8
  %492 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %492, i64 3
  %493 = load i64, ptr %arrayidx69, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x381, ptr noundef %x382, i64 noundef %491, i64 noundef %493)
  %494 = load i64, ptr %x5, align 8
  %495 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %495, i64 2
  %496 = load i64, ptr %arrayidx70, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x383, ptr noundef %x384, i64 noundef %494, i64 noundef %496)
  %497 = load i64, ptr %x5, align 8
  %498 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, ptr %498, i64 1
  %499 = load i64, ptr %arrayidx71, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x385, ptr noundef %x386, i64 noundef %497, i64 noundef %499)
  %500 = load i64, ptr %x5, align 8
  %501 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %501, i64 0
  %502 = load i64, ptr %arrayidx72, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x387, ptr noundef %x388, i64 noundef %500, i64 noundef %502)
  %503 = load i64, ptr %x388, align 8
  %504 = load i64, ptr %x385, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext 0, i64 noundef %503, i64 noundef %504)
  %505 = load i8, ptr %x390, align 1
  %506 = load i64, ptr %x386, align 8
  %507 = load i64, ptr %x383, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %505, i64 noundef %506, i64 noundef %507)
  %508 = load i8, ptr %x392, align 1
  %509 = load i64, ptr %x384, align 8
  %510 = load i64, ptr %x381, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %508, i64 noundef %509, i64 noundef %510)
  %511 = load i8, ptr %x394, align 1
  %512 = load i64, ptr %x382, align 8
  %513 = load i64, ptr %x379, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %511, i64 noundef %512, i64 noundef %513)
  %514 = load i8, ptr %x396, align 1
  %515 = load i64, ptr %x380, align 8
  %516 = load i64, ptr %x377, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %514, i64 noundef %515, i64 noundef %516)
  %517 = load i8, ptr %x398, align 1
  %conv73 = zext i8 %517 to i64
  %518 = load i64, ptr %x378, align 8
  %add74 = add i64 %conv73, %518
  store i64 %add74, ptr %x399, align 8
  %519 = load i64, ptr %x364, align 8
  %520 = load i64, ptr %x387, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x400, ptr noundef %x401, i8 noundef zeroext 0, i64 noundef %519, i64 noundef %520)
  %521 = load i8, ptr %x401, align 1
  %522 = load i64, ptr %x366, align 8
  %523 = load i64, ptr %x389, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x402, ptr noundef %x403, i8 noundef zeroext %521, i64 noundef %522, i64 noundef %523)
  %524 = load i8, ptr %x403, align 1
  %525 = load i64, ptr %x368, align 8
  %526 = load i64, ptr %x391, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x404, ptr noundef %x405, i8 noundef zeroext %524, i64 noundef %525, i64 noundef %526)
  %527 = load i8, ptr %x405, align 1
  %528 = load i64, ptr %x370, align 8
  %529 = load i64, ptr %x393, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext %527, i64 noundef %528, i64 noundef %529)
  %530 = load i8, ptr %x407, align 1
  %531 = load i64, ptr %x372, align 8
  %532 = load i64, ptr %x395, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %530, i64 noundef %531, i64 noundef %532)
  %533 = load i8, ptr %x409, align 1
  %534 = load i64, ptr %x374, align 8
  %535 = load i64, ptr %x397, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %533, i64 noundef %534, i64 noundef %535)
  %536 = load i8, ptr %x411, align 1
  %537 = load i64, ptr %x376, align 8
  %538 = load i64, ptr %x399, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %536, i64 noundef %537, i64 noundef %538)
  %539 = load i64, ptr %x400, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x414, ptr noundef %x415, i64 noundef %539, i64 noundef 4294967297)
  %540 = load i64, ptr %x414, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x416, ptr noundef %x417, i64 noundef %540, i64 noundef -1)
  %541 = load i64, ptr %x414, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x418, ptr noundef %x419, i64 noundef %541, i64 noundef -1)
  %542 = load i64, ptr %x414, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x420, ptr noundef %x421, i64 noundef %542, i64 noundef -1)
  %543 = load i64, ptr %x414, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x422, ptr noundef %x423, i64 noundef %543, i64 noundef -2)
  %544 = load i64, ptr %x414, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x424, ptr noundef %x425, i64 noundef %544, i64 noundef -4294967296)
  %545 = load i64, ptr %x414, align 8
  call void @fiat_p384_mulx_u64(ptr noundef %x426, ptr noundef %x427, i64 noundef %545, i64 noundef 4294967295)
  %546 = load i64, ptr %x427, align 8
  %547 = load i64, ptr %x424, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext 0, i64 noundef %546, i64 noundef %547)
  %548 = load i8, ptr %x429, align 1
  %549 = load i64, ptr %x425, align 8
  %550 = load i64, ptr %x422, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %548, i64 noundef %549, i64 noundef %550)
  %551 = load i8, ptr %x431, align 1
  %552 = load i64, ptr %x423, align 8
  %553 = load i64, ptr %x420, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %551, i64 noundef %552, i64 noundef %553)
  %554 = load i8, ptr %x433, align 1
  %555 = load i64, ptr %x421, align 8
  %556 = load i64, ptr %x418, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %554, i64 noundef %555, i64 noundef %556)
  %557 = load i8, ptr %x435, align 1
  %558 = load i64, ptr %x419, align 8
  %559 = load i64, ptr %x416, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %557, i64 noundef %558, i64 noundef %559)
  %560 = load i8, ptr %x437, align 1
  %conv75 = zext i8 %560 to i64
  %561 = load i64, ptr %x417, align 8
  %add76 = add i64 %conv75, %561
  store i64 %add76, ptr %x438, align 8
  %562 = load i64, ptr %x400, align 8
  %563 = load i64, ptr %x426, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext 0, i64 noundef %562, i64 noundef %563)
  %564 = load i8, ptr %x440, align 1
  %565 = load i64, ptr %x402, align 8
  %566 = load i64, ptr %x428, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %564, i64 noundef %565, i64 noundef %566)
  %567 = load i8, ptr %x442, align 1
  %568 = load i64, ptr %x404, align 8
  %569 = load i64, ptr %x430, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %567, i64 noundef %568, i64 noundef %569)
  %570 = load i8, ptr %x444, align 1
  %571 = load i64, ptr %x406, align 8
  %572 = load i64, ptr %x432, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %570, i64 noundef %571, i64 noundef %572)
  %573 = load i8, ptr %x446, align 1
  %574 = load i64, ptr %x408, align 8
  %575 = load i64, ptr %x434, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %573, i64 noundef %574, i64 noundef %575)
  %576 = load i8, ptr %x448, align 1
  %577 = load i64, ptr %x410, align 8
  %578 = load i64, ptr %x436, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %576, i64 noundef %577, i64 noundef %578)
  %579 = load i8, ptr %x450, align 1
  %580 = load i64, ptr %x412, align 8
  %581 = load i64, ptr %x438, align 8
  call void @fiat_p384_addcarryx_u64(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %579, i64 noundef %580, i64 noundef %581)
  %582 = load i8, ptr %x452, align 1
  %conv77 = zext i8 %582 to i64
  %583 = load i8, ptr %x413, align 1
  %conv78 = zext i8 %583 to i64
  %add79 = add i64 %conv77, %conv78
  store i64 %add79, ptr %x453, align 8
  %584 = load i64, ptr %x441, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext 0, i64 noundef %584, i64 noundef 4294967295)
  %585 = load i8, ptr %x455, align 1
  %586 = load i64, ptr %x443, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %585, i64 noundef %586, i64 noundef -4294967296)
  %587 = load i8, ptr %x457, align 1
  %588 = load i64, ptr %x445, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %587, i64 noundef %588, i64 noundef -2)
  %589 = load i8, ptr %x459, align 1
  %590 = load i64, ptr %x447, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %589, i64 noundef %590, i64 noundef -1)
  %591 = load i8, ptr %x461, align 1
  %592 = load i64, ptr %x449, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %591, i64 noundef %592, i64 noundef -1)
  %593 = load i8, ptr %x463, align 1
  %594 = load i64, ptr %x451, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %593, i64 noundef %594, i64 noundef -1)
  %595 = load i8, ptr %x465, align 1
  %596 = load i64, ptr %x453, align 8
  call void @fiat_p384_subborrowx_u64(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %595, i64 noundef %596, i64 noundef 0)
  %597 = load i8, ptr %x467, align 1
  %598 = load i64, ptr %x454, align 8
  %599 = load i64, ptr %x441, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x468, i8 noundef zeroext %597, i64 noundef %598, i64 noundef %599)
  %600 = load i8, ptr %x467, align 1
  %601 = load i64, ptr %x456, align 8
  %602 = load i64, ptr %x443, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x469, i8 noundef zeroext %600, i64 noundef %601, i64 noundef %602)
  %603 = load i8, ptr %x467, align 1
  %604 = load i64, ptr %x458, align 8
  %605 = load i64, ptr %x445, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x470, i8 noundef zeroext %603, i64 noundef %604, i64 noundef %605)
  %606 = load i8, ptr %x467, align 1
  %607 = load i64, ptr %x460, align 8
  %608 = load i64, ptr %x447, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x471, i8 noundef zeroext %606, i64 noundef %607, i64 noundef %608)
  %609 = load i8, ptr %x467, align 1
  %610 = load i64, ptr %x462, align 8
  %611 = load i64, ptr %x449, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x472, i8 noundef zeroext %609, i64 noundef %610, i64 noundef %611)
  %612 = load i8, ptr %x467, align 1
  %613 = load i64, ptr %x464, align 8
  %614 = load i64, ptr %x451, align 8
  call void @fiat_p384_cmovznz_u64(ptr noundef %x473, i8 noundef zeroext %612, i64 noundef %613, i64 noundef %614)
  %615 = load i64, ptr %x468, align 8
  %616 = load ptr, ptr %out1.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %616, i64 0
  store i64 %615, ptr %arrayidx80, align 8
  %617 = load i64, ptr %x469, align 8
  %618 = load ptr, ptr %out1.addr, align 8
  %arrayidx81 = getelementptr inbounds i64, ptr %618, i64 1
  store i64 %617, ptr %arrayidx81, align 8
  %619 = load i64, ptr %x470, align 8
  %620 = load ptr, ptr %out1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %620, i64 2
  store i64 %619, ptr %arrayidx82, align 8
  %621 = load i64, ptr %x471, align 8
  %622 = load ptr, ptr %out1.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %622, i64 3
  store i64 %621, ptr %arrayidx83, align 8
  %623 = load i64, ptr %x472, align 8
  %624 = load ptr, ptr %out1.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %624, i64 4
  store i64 %623, ptr %arrayidx84, align 8
  %625 = load i64, ptr %x473, align 8
  %626 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %626, i64 5
  store i64 %625, ptr %arrayidx85, align 8
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
