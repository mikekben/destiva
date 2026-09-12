; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p384_scalar_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_addcarryx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_subborrowx_u64(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_mulx_u64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @fiat_p384_scalar_cmovznz_u64(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p384_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x44 = alloca i8, align 1
  %x45 = alloca i64, align 8
  %x46 = alloca i8, align 1
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
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
  %x62 = alloca i8, align 1
  %x63 = alloca i64, align 8
  %x64 = alloca i8, align 1
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
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
  %x80 = alloca i8, align 1
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
  %x92 = alloca i8, align 1
  %x93 = alloca i64, align 8
  %x94 = alloca i8, align 1
  %x95 = alloca i64, align 8
  %x96 = alloca i8, align 1
  %x97 = alloca i64, align 8
  %x98 = alloca i8, align 1
  %x99 = alloca i64, align 8
  %x100 = alloca i8, align 1
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
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
  %x116 = alloca i8, align 1
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i8, align 1
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
  %x124 = alloca i8, align 1
  %x125 = alloca i64, align 8
  %x126 = alloca i8, align 1
  %x127 = alloca i64, align 8
  %x128 = alloca i8, align 1
  %x129 = alloca i64, align 8
  %x130 = alloca i8, align 1
  %x131 = alloca i64, align 8
  %x132 = alloca i8, align 1
  %x133 = alloca i64, align 8
  %x134 = alloca i8, align 1
  %x135 = alloca i64, align 8
  %x136 = alloca i8, align 1
  %x137 = alloca i64, align 8
  %x138 = alloca i8, align 1
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  %x144 = alloca i64, align 8
  %x145 = alloca i64, align 8
  %x146 = alloca i64, align 8
  %x147 = alloca i64, align 8
  %x148 = alloca i64, align 8
  %x149 = alloca i64, align 8
  %x150 = alloca i64, align 8
  %x151 = alloca i64, align 8
  %x152 = alloca i8, align 1
  %x153 = alloca i64, align 8
  %x154 = alloca i8, align 1
  %x155 = alloca i64, align 8
  %x156 = alloca i8, align 1
  %x157 = alloca i64, align 8
  %x158 = alloca i8, align 1
  %x159 = alloca i64, align 8
  %x160 = alloca i8, align 1
  %x161 = alloca i64, align 8
  %x162 = alloca i8, align 1
  %x163 = alloca i64, align 8
  %x164 = alloca i8, align 1
  %x165 = alloca i64, align 8
  %x166 = alloca i8, align 1
  %x167 = alloca i64, align 8
  %x168 = alloca i8, align 1
  %x169 = alloca i64, align 8
  %x170 = alloca i8, align 1
  %x171 = alloca i64, align 8
  %x172 = alloca i8, align 1
  %x173 = alloca i64, align 8
  %x174 = alloca i64, align 8
  %x175 = alloca i64, align 8
  %x176 = alloca i64, align 8
  %x177 = alloca i64, align 8
  %x178 = alloca i64, align 8
  %x179 = alloca i64, align 8
  %x180 = alloca i64, align 8
  %x181 = alloca i64, align 8
  %x182 = alloca i64, align 8
  %x183 = alloca i64, align 8
  %x184 = alloca i64, align 8
  %x185 = alloca i64, align 8
  %x186 = alloca i64, align 8
  %x187 = alloca i64, align 8
  %x188 = alloca i8, align 1
  %x189 = alloca i64, align 8
  %x190 = alloca i8, align 1
  %x191 = alloca i64, align 8
  %x192 = alloca i8, align 1
  %x193 = alloca i64, align 8
  %x194 = alloca i8, align 1
  %x195 = alloca i64, align 8
  %x196 = alloca i8, align 1
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
  %x208 = alloca i8, align 1
  %x209 = alloca i64, align 8
  %x210 = alloca i8, align 1
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
  %x223 = alloca i64, align 8
  %x224 = alloca i8, align 1
  %x225 = alloca i64, align 8
  %x226 = alloca i8, align 1
  %x227 = alloca i64, align 8
  %x228 = alloca i8, align 1
  %x229 = alloca i64, align 8
  %x230 = alloca i8, align 1
  %x231 = alloca i64, align 8
  %x232 = alloca i8, align 1
  %x233 = alloca i64, align 8
  %x234 = alloca i8, align 1
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
  %x247 = alloca i64, align 8
  %x248 = alloca i64, align 8
  %x249 = alloca i64, align 8
  %x250 = alloca i64, align 8
  %x251 = alloca i64, align 8
  %x252 = alloca i64, align 8
  %x253 = alloca i64, align 8
  %x254 = alloca i64, align 8
  %x255 = alloca i64, align 8
  %x256 = alloca i64, align 8
  %x257 = alloca i64, align 8
  %x258 = alloca i64, align 8
  %x259 = alloca i64, align 8
  %x260 = alloca i8, align 1
  %x261 = alloca i64, align 8
  %x262 = alloca i8, align 1
  %x263 = alloca i64, align 8
  %x264 = alloca i8, align 1
  %x265 = alloca i64, align 8
  %x266 = alloca i8, align 1
  %x267 = alloca i64, align 8
  %x268 = alloca i8, align 1
  %x269 = alloca i64, align 8
  %x270 = alloca i8, align 1
  %x271 = alloca i64, align 8
  %x272 = alloca i8, align 1
  %x273 = alloca i64, align 8
  %x274 = alloca i8, align 1
  %x275 = alloca i64, align 8
  %x276 = alloca i8, align 1
  %x277 = alloca i64, align 8
  %x278 = alloca i8, align 1
  %x279 = alloca i64, align 8
  %x280 = alloca i8, align 1
  %x281 = alloca i64, align 8
  %x282 = alloca i8, align 1
  %x283 = alloca i64, align 8
  %x284 = alloca i64, align 8
  %x285 = alloca i64, align 8
  %x286 = alloca i64, align 8
  %x287 = alloca i64, align 8
  %x288 = alloca i64, align 8
  %x289 = alloca i64, align 8
  %x290 = alloca i64, align 8
  %x291 = alloca i64, align 8
  %x292 = alloca i64, align 8
  %x293 = alloca i64, align 8
  %x294 = alloca i64, align 8
  %x295 = alloca i64, align 8
  %x296 = alloca i8, align 1
  %x297 = alloca i64, align 8
  %x298 = alloca i8, align 1
  %x299 = alloca i64, align 8
  %x300 = alloca i8, align 1
  %x301 = alloca i64, align 8
  %x302 = alloca i8, align 1
  %x303 = alloca i64, align 8
  %x304 = alloca i8, align 1
  %x305 = alloca i64, align 8
  %x306 = alloca i8, align 1
  %x307 = alloca i64, align 8
  %x308 = alloca i8, align 1
  %x309 = alloca i64, align 8
  %x310 = alloca i8, align 1
  %x311 = alloca i64, align 8
  %x312 = alloca i8, align 1
  %x313 = alloca i64, align 8
  %x314 = alloca i8, align 1
  %x315 = alloca i64, align 8
  %x316 = alloca i8, align 1
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
  %x329 = alloca i64, align 8
  %x330 = alloca i64, align 8
  %x331 = alloca i64, align 8
  %x332 = alloca i8, align 1
  %x333 = alloca i64, align 8
  %x334 = alloca i8, align 1
  %x335 = alloca i64, align 8
  %x336 = alloca i8, align 1
  %x337 = alloca i64, align 8
  %x338 = alloca i8, align 1
  %x339 = alloca i64, align 8
  %x340 = alloca i8, align 1
  %x341 = alloca i64, align 8
  %x342 = alloca i8, align 1
  %x343 = alloca i64, align 8
  %x344 = alloca i8, align 1
  %x345 = alloca i64, align 8
  %x346 = alloca i8, align 1
  %x347 = alloca i64, align 8
  %x348 = alloca i8, align 1
  %x349 = alloca i64, align 8
  %x350 = alloca i8, align 1
  %x351 = alloca i64, align 8
  %x352 = alloca i8, align 1
  %x353 = alloca i64, align 8
  %x354 = alloca i8, align 1
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
  %x368 = alloca i8, align 1
  %x369 = alloca i64, align 8
  %x370 = alloca i8, align 1
  %x371 = alloca i64, align 8
  %x372 = alloca i8, align 1
  %x373 = alloca i64, align 8
  %x374 = alloca i8, align 1
  %x375 = alloca i64, align 8
  %x376 = alloca i8, align 1
  %x377 = alloca i64, align 8
  %x378 = alloca i8, align 1
  %x379 = alloca i64, align 8
  %x380 = alloca i8, align 1
  %x381 = alloca i64, align 8
  %x382 = alloca i8, align 1
  %x383 = alloca i64, align 8
  %x384 = alloca i8, align 1
  %x385 = alloca i64, align 8
  %x386 = alloca i8, align 1
  %x387 = alloca i64, align 8
  %x388 = alloca i8, align 1
  %x389 = alloca i64, align 8
  %x390 = alloca i64, align 8
  %x391 = alloca i64, align 8
  %x392 = alloca i64, align 8
  %x393 = alloca i64, align 8
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
  %x404 = alloca i8, align 1
  %x405 = alloca i64, align 8
  %x406 = alloca i8, align 1
  %x407 = alloca i64, align 8
  %x408 = alloca i8, align 1
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
  %x426 = alloca i8, align 1
  %x427 = alloca i64, align 8
  %x428 = alloca i8, align 1
  %x429 = alloca i64, align 8
  %x430 = alloca i8, align 1
  %x431 = alloca i64, align 8
  %x432 = alloca i8, align 1
  %x433 = alloca i64, align 8
  %x434 = alloca i8, align 1
  %x435 = alloca i64, align 8
  %x436 = alloca i8, align 1
  %x437 = alloca i64, align 8
  %x438 = alloca i8, align 1
  %x439 = alloca i64, align 8
  %x440 = alloca i8, align 1
  %x441 = alloca i64, align 8
  %x442 = alloca i64, align 8
  %x443 = alloca i64, align 8
  %x444 = alloca i64, align 8
  %x445 = alloca i64, align 8
  %x446 = alloca i64, align 8
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
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %12, i64 noundef 902107514168524577)
  %13 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %13, i64 noundef 4589268600508278933)
  %14 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %14, i64 noundef -3166794598585787195)
  %15 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x13, ptr noundef %x14, i64 noundef %15, i64 noundef -4882385527837808313)
  %16 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x15, ptr noundef %x16, i64 noundef %16, i64 noundef -54744796168018919)
  %17 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x17, ptr noundef %x18, i64 noundef %17, i64 noundef 3256554584917936553)
  %18 = load i64, ptr %x18, align 8
  %19 = load i64, ptr %x15, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext 0, i64 noundef %18, i64 noundef %19)
  %20 = load i8, ptr %x20, align 1
  %21 = load i64, ptr %x16, align 8
  %22 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %20, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x22, align 1
  %24 = load i64, ptr %x14, align 8
  %25 = load i64, ptr %x11, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %25)
  %26 = load i8, ptr %x24, align 1
  %27 = load i64, ptr %x12, align 8
  %28 = load i64, ptr %x9, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x26, align 1
  %30 = load i64, ptr %x10, align 8
  %31 = load i64, ptr %x7, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %31)
  %32 = load i64, ptr %x17, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x29, ptr noundef %x30, i64 noundef %32, i64 noundef 7986114184663260229)
  %33 = load i64, ptr %x29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x31, ptr noundef %x32, i64 noundef %33, i64 noundef -1)
  %34 = load i64, ptr %x29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x33, ptr noundef %x34, i64 noundef %34, i64 noundef -1)
  %35 = load i64, ptr %x29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x35, ptr noundef %x36, i64 noundef %35, i64 noundef -1)
  %36 = load i64, ptr %x29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x37, ptr noundef %x38, i64 noundef %36, i64 noundef -4079331616924160545)
  %37 = load i64, ptr %x29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x39, ptr noundef %x40, i64 noundef %37, i64 noundef 6348401684107011962)
  %38 = load i64, ptr %x29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %38, i64 noundef -1374695839762142861)
  %39 = load i64, ptr %x42, align 8
  %40 = load i64, ptr %x39, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext 0, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x44, align 1
  %42 = load i64, ptr %x40, align 8
  %43 = load i64, ptr %x37, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x46, align 1
  %45 = load i64, ptr %x38, align 8
  %46 = load i64, ptr %x35, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %44, i64 noundef %45, i64 noundef %46)
  %47 = load i8, ptr %x48, align 1
  %48 = load i64, ptr %x36, align 8
  %49 = load i64, ptr %x33, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %47, i64 noundef %48, i64 noundef %49)
  %50 = load i8, ptr %x50, align 1
  %51 = load i64, ptr %x34, align 8
  %52 = load i64, ptr %x31, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %50, i64 noundef %51, i64 noundef %52)
  %53 = load i64, ptr %x17, align 8
  %54 = load i64, ptr %x41, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext 0, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x54, align 1
  %56 = load i64, ptr %x19, align 8
  %57 = load i64, ptr %x43, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x56, align 1
  %59 = load i64, ptr %x21, align 8
  %60 = load i64, ptr %x45, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i8, ptr %x58, align 1
  %62 = load i64, ptr %x23, align 8
  %63 = load i64, ptr %x47, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %61, i64 noundef %62, i64 noundef %63)
  %64 = load i8, ptr %x60, align 1
  %65 = load i64, ptr %x25, align 8
  %66 = load i64, ptr %x49, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %64, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x62, align 1
  %68 = load i64, ptr %x27, align 8
  %69 = load i64, ptr %x51, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %67, i64 noundef %68, i64 noundef %69)
  %70 = load i8, ptr %x64, align 1
  %71 = load i8, ptr %x28, align 1
  %conv = zext i8 %71 to i64
  %72 = load i64, ptr %x8, align 8
  %add = add i64 %conv, %72
  %73 = load i8, ptr %x52, align 1
  %conv6 = zext i8 %73 to i64
  %74 = load i64, ptr %x32, align 8
  %add7 = add i64 %conv6, %74
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %70, i64 noundef %add, i64 noundef %add7)
  %75 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x67, ptr noundef %x68, i64 noundef %75, i64 noundef 902107514168524577)
  %76 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef %76, i64 noundef 4589268600508278933)
  %77 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef %77, i64 noundef -3166794598585787195)
  %78 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x73, ptr noundef %x74, i64 noundef %78, i64 noundef -4882385527837808313)
  %79 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x75, ptr noundef %x76, i64 noundef %79, i64 noundef -54744796168018919)
  %80 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x77, ptr noundef %x78, i64 noundef %80, i64 noundef 3256554584917936553)
  %81 = load i64, ptr %x78, align 8
  %82 = load i64, ptr %x75, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext 0, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x80, align 1
  %84 = load i64, ptr %x76, align 8
  %85 = load i64, ptr %x73, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %83, i64 noundef %84, i64 noundef %85)
  %86 = load i8, ptr %x82, align 1
  %87 = load i64, ptr %x74, align 8
  %88 = load i64, ptr %x71, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %86, i64 noundef %87, i64 noundef %88)
  %89 = load i8, ptr %x84, align 1
  %90 = load i64, ptr %x72, align 8
  %91 = load i64, ptr %x69, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %89, i64 noundef %90, i64 noundef %91)
  %92 = load i8, ptr %x86, align 1
  %93 = load i64, ptr %x70, align 8
  %94 = load i64, ptr %x67, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %92, i64 noundef %93, i64 noundef %94)
  %95 = load i64, ptr %x55, align 8
  %96 = load i64, ptr %x77, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext 0, i64 noundef %95, i64 noundef %96)
  %97 = load i8, ptr %x90, align 1
  %98 = load i64, ptr %x57, align 8
  %99 = load i64, ptr %x79, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %97, i64 noundef %98, i64 noundef %99)
  %100 = load i8, ptr %x92, align 1
  %101 = load i64, ptr %x59, align 8
  %102 = load i64, ptr %x81, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %100, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x94, align 1
  %104 = load i64, ptr %x61, align 8
  %105 = load i64, ptr %x83, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %103, i64 noundef %104, i64 noundef %105)
  %106 = load i8, ptr %x96, align 1
  %107 = load i64, ptr %x63, align 8
  %108 = load i64, ptr %x85, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %106, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x98, align 1
  %110 = load i64, ptr %x65, align 8
  %111 = load i64, ptr %x87, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i64, ptr %x89, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x101, ptr noundef %x102, i64 noundef %112, i64 noundef 7986114184663260229)
  %113 = load i64, ptr %x101, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x103, ptr noundef %x104, i64 noundef %113, i64 noundef -1)
  %114 = load i64, ptr %x101, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x105, ptr noundef %x106, i64 noundef %114, i64 noundef -1)
  %115 = load i64, ptr %x101, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x107, ptr noundef %x108, i64 noundef %115, i64 noundef -1)
  %116 = load i64, ptr %x101, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x109, ptr noundef %x110, i64 noundef %116, i64 noundef -4079331616924160545)
  %117 = load i64, ptr %x101, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x111, ptr noundef %x112, i64 noundef %117, i64 noundef 6348401684107011962)
  %118 = load i64, ptr %x101, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x113, ptr noundef %x114, i64 noundef %118, i64 noundef -1374695839762142861)
  %119 = load i64, ptr %x114, align 8
  %120 = load i64, ptr %x111, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext 0, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x116, align 1
  %122 = load i64, ptr %x112, align 8
  %123 = load i64, ptr %x109, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %121, i64 noundef %122, i64 noundef %123)
  %124 = load i8, ptr %x118, align 1
  %125 = load i64, ptr %x110, align 8
  %126 = load i64, ptr %x107, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %124, i64 noundef %125, i64 noundef %126)
  %127 = load i8, ptr %x120, align 1
  %128 = load i64, ptr %x108, align 8
  %129 = load i64, ptr %x105, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %127, i64 noundef %128, i64 noundef %129)
  %130 = load i8, ptr %x122, align 1
  %131 = load i64, ptr %x106, align 8
  %132 = load i64, ptr %x103, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %130, i64 noundef %131, i64 noundef %132)
  %133 = load i64, ptr %x89, align 8
  %134 = load i64, ptr %x113, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext 0, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x126, align 1
  %136 = load i64, ptr %x91, align 8
  %137 = load i64, ptr %x115, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i8, ptr %x128, align 1
  %139 = load i64, ptr %x93, align 8
  %140 = load i64, ptr %x117, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %138, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x130, align 1
  %142 = load i64, ptr %x95, align 8
  %143 = load i64, ptr %x119, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %141, i64 noundef %142, i64 noundef %143)
  %144 = load i8, ptr %x132, align 1
  %145 = load i64, ptr %x97, align 8
  %146 = load i64, ptr %x121, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %144, i64 noundef %145, i64 noundef %146)
  %147 = load i8, ptr %x134, align 1
  %148 = load i64, ptr %x99, align 8
  %149 = load i64, ptr %x123, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %147, i64 noundef %148, i64 noundef %149)
  %150 = load i8, ptr %x136, align 1
  %151 = load i8, ptr %x100, align 1
  %conv8 = zext i8 %151 to i64
  %152 = load i8, ptr %x66, align 1
  %conv9 = zext i8 %152 to i64
  %add10 = add i64 %conv8, %conv9
  %153 = load i8, ptr %x88, align 1
  %conv11 = zext i8 %153 to i64
  %154 = load i64, ptr %x68, align 8
  %add12 = add i64 %conv11, %154
  %add13 = add i64 %add10, %add12
  %155 = load i8, ptr %x124, align 1
  %conv14 = zext i8 %155 to i64
  %156 = load i64, ptr %x104, align 8
  %add15 = add i64 %conv14, %156
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %150, i64 noundef %add13, i64 noundef %add15)
  %157 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %157, i64 noundef 902107514168524577)
  %158 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %158, i64 noundef 4589268600508278933)
  %159 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x143, ptr noundef %x144, i64 noundef %159, i64 noundef -3166794598585787195)
  %160 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x145, ptr noundef %x146, i64 noundef %160, i64 noundef -4882385527837808313)
  %161 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x147, ptr noundef %x148, i64 noundef %161, i64 noundef -54744796168018919)
  %162 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x149, ptr noundef %x150, i64 noundef %162, i64 noundef 3256554584917936553)
  %163 = load i64, ptr %x150, align 8
  %164 = load i64, ptr %x147, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext 0, i64 noundef %163, i64 noundef %164)
  %165 = load i8, ptr %x152, align 1
  %166 = load i64, ptr %x148, align 8
  %167 = load i64, ptr %x145, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %165, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x154, align 1
  %169 = load i64, ptr %x146, align 8
  %170 = load i64, ptr %x143, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x156, align 1
  %172 = load i64, ptr %x144, align 8
  %173 = load i64, ptr %x141, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x158, align 1
  %175 = load i64, ptr %x142, align 8
  %176 = load i64, ptr %x139, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %174, i64 noundef %175, i64 noundef %176)
  %177 = load i64, ptr %x127, align 8
  %178 = load i64, ptr %x149, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext 0, i64 noundef %177, i64 noundef %178)
  %179 = load i8, ptr %x162, align 1
  %180 = load i64, ptr %x129, align 8
  %181 = load i64, ptr %x151, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %179, i64 noundef %180, i64 noundef %181)
  %182 = load i8, ptr %x164, align 1
  %183 = load i64, ptr %x131, align 8
  %184 = load i64, ptr %x153, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %182, i64 noundef %183, i64 noundef %184)
  %185 = load i8, ptr %x166, align 1
  %186 = load i64, ptr %x133, align 8
  %187 = load i64, ptr %x155, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %185, i64 noundef %186, i64 noundef %187)
  %188 = load i8, ptr %x168, align 1
  %189 = load i64, ptr %x135, align 8
  %190 = load i64, ptr %x157, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %188, i64 noundef %189, i64 noundef %190)
  %191 = load i8, ptr %x170, align 1
  %192 = load i64, ptr %x137, align 8
  %193 = load i64, ptr %x159, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %191, i64 noundef %192, i64 noundef %193)
  %194 = load i64, ptr %x161, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x173, ptr noundef %x174, i64 noundef %194, i64 noundef 7986114184663260229)
  %195 = load i64, ptr %x173, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x175, ptr noundef %x176, i64 noundef %195, i64 noundef -1)
  %196 = load i64, ptr %x173, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x177, ptr noundef %x178, i64 noundef %196, i64 noundef -1)
  %197 = load i64, ptr %x173, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x179, ptr noundef %x180, i64 noundef %197, i64 noundef -1)
  %198 = load i64, ptr %x173, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x181, ptr noundef %x182, i64 noundef %198, i64 noundef -4079331616924160545)
  %199 = load i64, ptr %x173, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x183, ptr noundef %x184, i64 noundef %199, i64 noundef 6348401684107011962)
  %200 = load i64, ptr %x173, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x185, ptr noundef %x186, i64 noundef %200, i64 noundef -1374695839762142861)
  %201 = load i64, ptr %x186, align 8
  %202 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext 0, i64 noundef %201, i64 noundef %202)
  %203 = load i8, ptr %x188, align 1
  %204 = load i64, ptr %x184, align 8
  %205 = load i64, ptr %x181, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %203, i64 noundef %204, i64 noundef %205)
  %206 = load i8, ptr %x190, align 1
  %207 = load i64, ptr %x182, align 8
  %208 = load i64, ptr %x179, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x191, ptr noundef %x192, i8 noundef zeroext %206, i64 noundef %207, i64 noundef %208)
  %209 = load i8, ptr %x192, align 1
  %210 = load i64, ptr %x180, align 8
  %211 = load i64, ptr %x177, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x193, ptr noundef %x194, i8 noundef zeroext %209, i64 noundef %210, i64 noundef %211)
  %212 = load i8, ptr %x194, align 1
  %213 = load i64, ptr %x178, align 8
  %214 = load i64, ptr %x175, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x195, ptr noundef %x196, i8 noundef zeroext %212, i64 noundef %213, i64 noundef %214)
  %215 = load i64, ptr %x161, align 8
  %216 = load i64, ptr %x185, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext 0, i64 noundef %215, i64 noundef %216)
  %217 = load i8, ptr %x198, align 1
  %218 = load i64, ptr %x163, align 8
  %219 = load i64, ptr %x187, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %217, i64 noundef %218, i64 noundef %219)
  %220 = load i8, ptr %x200, align 1
  %221 = load i64, ptr %x165, align 8
  %222 = load i64, ptr %x189, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %220, i64 noundef %221, i64 noundef %222)
  %223 = load i8, ptr %x202, align 1
  %224 = load i64, ptr %x167, align 8
  %225 = load i64, ptr %x191, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %223, i64 noundef %224, i64 noundef %225)
  %226 = load i8, ptr %x204, align 1
  %227 = load i64, ptr %x169, align 8
  %228 = load i64, ptr %x193, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %226, i64 noundef %227, i64 noundef %228)
  %229 = load i8, ptr %x206, align 1
  %230 = load i64, ptr %x171, align 8
  %231 = load i64, ptr %x195, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %229, i64 noundef %230, i64 noundef %231)
  %232 = load i8, ptr %x208, align 1
  %233 = load i8, ptr %x172, align 1
  %conv16 = zext i8 %233 to i64
  %234 = load i8, ptr %x138, align 1
  %conv17 = zext i8 %234 to i64
  %add18 = add i64 %conv16, %conv17
  %235 = load i8, ptr %x160, align 1
  %conv19 = zext i8 %235 to i64
  %236 = load i64, ptr %x140, align 8
  %add20 = add i64 %conv19, %236
  %add21 = add i64 %add18, %add20
  %237 = load i8, ptr %x196, align 1
  %conv22 = zext i8 %237 to i64
  %238 = load i64, ptr %x176, align 8
  %add23 = add i64 %conv22, %238
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %232, i64 noundef %add21, i64 noundef %add23)
  %239 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x211, ptr noundef %x212, i64 noundef %239, i64 noundef 902107514168524577)
  %240 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x213, ptr noundef %x214, i64 noundef %240, i64 noundef 4589268600508278933)
  %241 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x215, ptr noundef %x216, i64 noundef %241, i64 noundef -3166794598585787195)
  %242 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x217, ptr noundef %x218, i64 noundef %242, i64 noundef -4882385527837808313)
  %243 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x219, ptr noundef %x220, i64 noundef %243, i64 noundef -54744796168018919)
  %244 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x221, ptr noundef %x222, i64 noundef %244, i64 noundef 3256554584917936553)
  %245 = load i64, ptr %x222, align 8
  %246 = load i64, ptr %x219, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext 0, i64 noundef %245, i64 noundef %246)
  %247 = load i8, ptr %x224, align 1
  %248 = load i64, ptr %x220, align 8
  %249 = load i64, ptr %x217, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %247, i64 noundef %248, i64 noundef %249)
  %250 = load i8, ptr %x226, align 1
  %251 = load i64, ptr %x218, align 8
  %252 = load i64, ptr %x215, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %250, i64 noundef %251, i64 noundef %252)
  %253 = load i8, ptr %x228, align 1
  %254 = load i64, ptr %x216, align 8
  %255 = load i64, ptr %x213, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %253, i64 noundef %254, i64 noundef %255)
  %256 = load i8, ptr %x230, align 1
  %257 = load i64, ptr %x214, align 8
  %258 = load i64, ptr %x211, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %256, i64 noundef %257, i64 noundef %258)
  %259 = load i64, ptr %x199, align 8
  %260 = load i64, ptr %x221, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext 0, i64 noundef %259, i64 noundef %260)
  %261 = load i8, ptr %x234, align 1
  %262 = load i64, ptr %x201, align 8
  %263 = load i64, ptr %x223, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %261, i64 noundef %262, i64 noundef %263)
  %264 = load i8, ptr %x236, align 1
  %265 = load i64, ptr %x203, align 8
  %266 = load i64, ptr %x225, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %264, i64 noundef %265, i64 noundef %266)
  %267 = load i8, ptr %x238, align 1
  %268 = load i64, ptr %x205, align 8
  %269 = load i64, ptr %x227, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %267, i64 noundef %268, i64 noundef %269)
  %270 = load i8, ptr %x240, align 1
  %271 = load i64, ptr %x207, align 8
  %272 = load i64, ptr %x229, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %270, i64 noundef %271, i64 noundef %272)
  %273 = load i8, ptr %x242, align 1
  %274 = load i64, ptr %x209, align 8
  %275 = load i64, ptr %x231, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %273, i64 noundef %274, i64 noundef %275)
  %276 = load i64, ptr %x233, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x245, ptr noundef %x246, i64 noundef %276, i64 noundef 7986114184663260229)
  %277 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x247, ptr noundef %x248, i64 noundef %277, i64 noundef -1)
  %278 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x249, ptr noundef %x250, i64 noundef %278, i64 noundef -1)
  %279 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x251, ptr noundef %x252, i64 noundef %279, i64 noundef -1)
  %280 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x253, ptr noundef %x254, i64 noundef %280, i64 noundef -4079331616924160545)
  %281 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x255, ptr noundef %x256, i64 noundef %281, i64 noundef 6348401684107011962)
  %282 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x257, ptr noundef %x258, i64 noundef %282, i64 noundef -1374695839762142861)
  %283 = load i64, ptr %x258, align 8
  %284 = load i64, ptr %x255, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext 0, i64 noundef %283, i64 noundef %284)
  %285 = load i8, ptr %x260, align 1
  %286 = load i64, ptr %x256, align 8
  %287 = load i64, ptr %x253, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %285, i64 noundef %286, i64 noundef %287)
  %288 = load i8, ptr %x262, align 1
  %289 = load i64, ptr %x254, align 8
  %290 = load i64, ptr %x251, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %288, i64 noundef %289, i64 noundef %290)
  %291 = load i8, ptr %x264, align 1
  %292 = load i64, ptr %x252, align 8
  %293 = load i64, ptr %x249, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %291, i64 noundef %292, i64 noundef %293)
  %294 = load i8, ptr %x266, align 1
  %295 = load i64, ptr %x250, align 8
  %296 = load i64, ptr %x247, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %294, i64 noundef %295, i64 noundef %296)
  %297 = load i64, ptr %x233, align 8
  %298 = load i64, ptr %x257, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext 0, i64 noundef %297, i64 noundef %298)
  %299 = load i8, ptr %x270, align 1
  %300 = load i64, ptr %x235, align 8
  %301 = load i64, ptr %x259, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %299, i64 noundef %300, i64 noundef %301)
  %302 = load i8, ptr %x272, align 1
  %303 = load i64, ptr %x237, align 8
  %304 = load i64, ptr %x261, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %302, i64 noundef %303, i64 noundef %304)
  %305 = load i8, ptr %x274, align 1
  %306 = load i64, ptr %x239, align 8
  %307 = load i64, ptr %x263, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %305, i64 noundef %306, i64 noundef %307)
  %308 = load i8, ptr %x276, align 1
  %309 = load i64, ptr %x241, align 8
  %310 = load i64, ptr %x265, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x278, align 1
  %312 = load i64, ptr %x243, align 8
  %313 = load i64, ptr %x267, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x280, align 1
  %315 = load i8, ptr %x244, align 1
  %conv24 = zext i8 %315 to i64
  %316 = load i8, ptr %x210, align 1
  %conv25 = zext i8 %316 to i64
  %add26 = add i64 %conv24, %conv25
  %317 = load i8, ptr %x232, align 1
  %conv27 = zext i8 %317 to i64
  %318 = load i64, ptr %x212, align 8
  %add28 = add i64 %conv27, %318
  %add29 = add i64 %add26, %add28
  %319 = load i8, ptr %x268, align 1
  %conv30 = zext i8 %319 to i64
  %320 = load i64, ptr %x248, align 8
  %add31 = add i64 %conv30, %320
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x281, ptr noundef %x282, i8 noundef zeroext %314, i64 noundef %add29, i64 noundef %add31)
  %321 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x283, ptr noundef %x284, i64 noundef %321, i64 noundef 902107514168524577)
  %322 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x285, ptr noundef %x286, i64 noundef %322, i64 noundef 4589268600508278933)
  %323 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x287, ptr noundef %x288, i64 noundef %323, i64 noundef -3166794598585787195)
  %324 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x289, ptr noundef %x290, i64 noundef %324, i64 noundef -4882385527837808313)
  %325 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x291, ptr noundef %x292, i64 noundef %325, i64 noundef -54744796168018919)
  %326 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x293, ptr noundef %x294, i64 noundef %326, i64 noundef 3256554584917936553)
  %327 = load i64, ptr %x294, align 8
  %328 = load i64, ptr %x291, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext 0, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x296, align 1
  %330 = load i64, ptr %x292, align 8
  %331 = load i64, ptr %x289, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext %329, i64 noundef %330, i64 noundef %331)
  %332 = load i8, ptr %x298, align 1
  %333 = load i64, ptr %x290, align 8
  %334 = load i64, ptr %x287, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %332, i64 noundef %333, i64 noundef %334)
  %335 = load i8, ptr %x300, align 1
  %336 = load i64, ptr %x288, align 8
  %337 = load i64, ptr %x285, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %335, i64 noundef %336, i64 noundef %337)
  %338 = load i8, ptr %x302, align 1
  %339 = load i64, ptr %x286, align 8
  %340 = load i64, ptr %x283, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %338, i64 noundef %339, i64 noundef %340)
  %341 = load i64, ptr %x271, align 8
  %342 = load i64, ptr %x293, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext 0, i64 noundef %341, i64 noundef %342)
  %343 = load i8, ptr %x306, align 1
  %344 = load i64, ptr %x273, align 8
  %345 = load i64, ptr %x295, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %343, i64 noundef %344, i64 noundef %345)
  %346 = load i8, ptr %x308, align 1
  %347 = load i64, ptr %x275, align 8
  %348 = load i64, ptr %x297, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %346, i64 noundef %347, i64 noundef %348)
  %349 = load i8, ptr %x310, align 1
  %350 = load i64, ptr %x277, align 8
  %351 = load i64, ptr %x299, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %349, i64 noundef %350, i64 noundef %351)
  %352 = load i8, ptr %x312, align 1
  %353 = load i64, ptr %x279, align 8
  %354 = load i64, ptr %x301, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %352, i64 noundef %353, i64 noundef %354)
  %355 = load i8, ptr %x314, align 1
  %356 = load i64, ptr %x281, align 8
  %357 = load i64, ptr %x303, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %355, i64 noundef %356, i64 noundef %357)
  %358 = load i64, ptr %x305, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x317, ptr noundef %x318, i64 noundef %358, i64 noundef 7986114184663260229)
  %359 = load i64, ptr %x317, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x319, ptr noundef %x320, i64 noundef %359, i64 noundef -1)
  %360 = load i64, ptr %x317, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x321, ptr noundef %x322, i64 noundef %360, i64 noundef -1)
  %361 = load i64, ptr %x317, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x323, ptr noundef %x324, i64 noundef %361, i64 noundef -1)
  %362 = load i64, ptr %x317, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x325, ptr noundef %x326, i64 noundef %362, i64 noundef -4079331616924160545)
  %363 = load i64, ptr %x317, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x327, ptr noundef %x328, i64 noundef %363, i64 noundef 6348401684107011962)
  %364 = load i64, ptr %x317, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x329, ptr noundef %x330, i64 noundef %364, i64 noundef -1374695839762142861)
  %365 = load i64, ptr %x330, align 8
  %366 = load i64, ptr %x327, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext 0, i64 noundef %365, i64 noundef %366)
  %367 = load i8, ptr %x332, align 1
  %368 = load i64, ptr %x328, align 8
  %369 = load i64, ptr %x325, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %367, i64 noundef %368, i64 noundef %369)
  %370 = load i8, ptr %x334, align 1
  %371 = load i64, ptr %x326, align 8
  %372 = load i64, ptr %x323, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %370, i64 noundef %371, i64 noundef %372)
  %373 = load i8, ptr %x336, align 1
  %374 = load i64, ptr %x324, align 8
  %375 = load i64, ptr %x321, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x337, ptr noundef %x338, i8 noundef zeroext %373, i64 noundef %374, i64 noundef %375)
  %376 = load i8, ptr %x338, align 1
  %377 = load i64, ptr %x322, align 8
  %378 = load i64, ptr %x319, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x339, ptr noundef %x340, i8 noundef zeroext %376, i64 noundef %377, i64 noundef %378)
  %379 = load i64, ptr %x305, align 8
  %380 = load i64, ptr %x329, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x341, ptr noundef %x342, i8 noundef zeroext 0, i64 noundef %379, i64 noundef %380)
  %381 = load i8, ptr %x342, align 1
  %382 = load i64, ptr %x307, align 8
  %383 = load i64, ptr %x331, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x343, ptr noundef %x344, i8 noundef zeroext %381, i64 noundef %382, i64 noundef %383)
  %384 = load i8, ptr %x344, align 1
  %385 = load i64, ptr %x309, align 8
  %386 = load i64, ptr %x333, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext %384, i64 noundef %385, i64 noundef %386)
  %387 = load i8, ptr %x346, align 1
  %388 = load i64, ptr %x311, align 8
  %389 = load i64, ptr %x335, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %387, i64 noundef %388, i64 noundef %389)
  %390 = load i8, ptr %x348, align 1
  %391 = load i64, ptr %x313, align 8
  %392 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %390, i64 noundef %391, i64 noundef %392)
  %393 = load i8, ptr %x350, align 1
  %394 = load i64, ptr %x315, align 8
  %395 = load i64, ptr %x339, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %393, i64 noundef %394, i64 noundef %395)
  %396 = load i8, ptr %x352, align 1
  %397 = load i8, ptr %x316, align 1
  %conv32 = zext i8 %397 to i64
  %398 = load i8, ptr %x282, align 1
  %conv33 = zext i8 %398 to i64
  %add34 = add i64 %conv32, %conv33
  %399 = load i8, ptr %x304, align 1
  %conv35 = zext i8 %399 to i64
  %400 = load i64, ptr %x284, align 8
  %add36 = add i64 %conv35, %400
  %add37 = add i64 %add34, %add36
  %401 = load i8, ptr %x340, align 1
  %conv38 = zext i8 %401 to i64
  %402 = load i64, ptr %x320, align 8
  %add39 = add i64 %conv38, %402
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %396, i64 noundef %add37, i64 noundef %add39)
  %403 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x355, ptr noundef %x356, i64 noundef %403, i64 noundef 902107514168524577)
  %404 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x357, ptr noundef %x358, i64 noundef %404, i64 noundef 4589268600508278933)
  %405 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x359, ptr noundef %x360, i64 noundef %405, i64 noundef -3166794598585787195)
  %406 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x361, ptr noundef %x362, i64 noundef %406, i64 noundef -4882385527837808313)
  %407 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x363, ptr noundef %x364, i64 noundef %407, i64 noundef -54744796168018919)
  %408 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x365, ptr noundef %x366, i64 noundef %408, i64 noundef 3256554584917936553)
  %409 = load i64, ptr %x366, align 8
  %410 = load i64, ptr %x363, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext 0, i64 noundef %409, i64 noundef %410)
  %411 = load i8, ptr %x368, align 1
  %412 = load i64, ptr %x364, align 8
  %413 = load i64, ptr %x361, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %411, i64 noundef %412, i64 noundef %413)
  %414 = load i8, ptr %x370, align 1
  %415 = load i64, ptr %x362, align 8
  %416 = load i64, ptr %x359, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %414, i64 noundef %415, i64 noundef %416)
  %417 = load i8, ptr %x372, align 1
  %418 = load i64, ptr %x360, align 8
  %419 = load i64, ptr %x357, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %417, i64 noundef %418, i64 noundef %419)
  %420 = load i8, ptr %x374, align 1
  %421 = load i64, ptr %x358, align 8
  %422 = load i64, ptr %x355, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %420, i64 noundef %421, i64 noundef %422)
  %423 = load i64, ptr %x343, align 8
  %424 = load i64, ptr %x365, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext 0, i64 noundef %423, i64 noundef %424)
  %425 = load i8, ptr %x378, align 1
  %426 = load i64, ptr %x345, align 8
  %427 = load i64, ptr %x367, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %425, i64 noundef %426, i64 noundef %427)
  %428 = load i8, ptr %x380, align 1
  %429 = load i64, ptr %x347, align 8
  %430 = load i64, ptr %x369, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %428, i64 noundef %429, i64 noundef %430)
  %431 = load i8, ptr %x382, align 1
  %432 = load i64, ptr %x349, align 8
  %433 = load i64, ptr %x371, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %431, i64 noundef %432, i64 noundef %433)
  %434 = load i8, ptr %x384, align 1
  %435 = load i64, ptr %x351, align 8
  %436 = load i64, ptr %x373, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %434, i64 noundef %435, i64 noundef %436)
  %437 = load i8, ptr %x386, align 1
  %438 = load i64, ptr %x353, align 8
  %439 = load i64, ptr %x375, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %437, i64 noundef %438, i64 noundef %439)
  %440 = load i64, ptr %x377, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x389, ptr noundef %x390, i64 noundef %440, i64 noundef 7986114184663260229)
  %441 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x391, ptr noundef %x392, i64 noundef %441, i64 noundef -1)
  %442 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x393, ptr noundef %x394, i64 noundef %442, i64 noundef -1)
  %443 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x395, ptr noundef %x396, i64 noundef %443, i64 noundef -1)
  %444 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x397, ptr noundef %x398, i64 noundef %444, i64 noundef -4079331616924160545)
  %445 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x399, ptr noundef %x400, i64 noundef %445, i64 noundef 6348401684107011962)
  %446 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x401, ptr noundef %x402, i64 noundef %446, i64 noundef -1374695839762142861)
  %447 = load i64, ptr %x402, align 8
  %448 = load i64, ptr %x399, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext 0, i64 noundef %447, i64 noundef %448)
  %449 = load i8, ptr %x404, align 1
  %450 = load i64, ptr %x400, align 8
  %451 = load i64, ptr %x397, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %449, i64 noundef %450, i64 noundef %451)
  %452 = load i8, ptr %x406, align 1
  %453 = load i64, ptr %x398, align 8
  %454 = load i64, ptr %x395, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext %452, i64 noundef %453, i64 noundef %454)
  %455 = load i8, ptr %x408, align 1
  %456 = load i64, ptr %x396, align 8
  %457 = load i64, ptr %x393, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %455, i64 noundef %456, i64 noundef %457)
  %458 = load i8, ptr %x410, align 1
  %459 = load i64, ptr %x394, align 8
  %460 = load i64, ptr %x391, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %458, i64 noundef %459, i64 noundef %460)
  %461 = load i64, ptr %x377, align 8
  %462 = load i64, ptr %x401, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext 0, i64 noundef %461, i64 noundef %462)
  %463 = load i8, ptr %x414, align 1
  %464 = load i64, ptr %x379, align 8
  %465 = load i64, ptr %x403, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %463, i64 noundef %464, i64 noundef %465)
  %466 = load i8, ptr %x416, align 1
  %467 = load i64, ptr %x381, align 8
  %468 = load i64, ptr %x405, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %466, i64 noundef %467, i64 noundef %468)
  %469 = load i8, ptr %x418, align 1
  %470 = load i64, ptr %x383, align 8
  %471 = load i64, ptr %x407, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %469, i64 noundef %470, i64 noundef %471)
  %472 = load i8, ptr %x420, align 1
  %473 = load i64, ptr %x385, align 8
  %474 = load i64, ptr %x409, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext %472, i64 noundef %473, i64 noundef %474)
  %475 = load i8, ptr %x422, align 1
  %476 = load i64, ptr %x387, align 8
  %477 = load i64, ptr %x411, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x423, ptr noundef %x424, i8 noundef zeroext %475, i64 noundef %476, i64 noundef %477)
  %478 = load i8, ptr %x424, align 1
  %479 = load i8, ptr %x388, align 1
  %conv40 = zext i8 %479 to i64
  %480 = load i8, ptr %x354, align 1
  %conv41 = zext i8 %480 to i64
  %add42 = add i64 %conv40, %conv41
  %481 = load i8, ptr %x376, align 1
  %conv43 = zext i8 %481 to i64
  %482 = load i64, ptr %x356, align 8
  %add44 = add i64 %conv43, %482
  %add45 = add i64 %add42, %add44
  %483 = load i8, ptr %x412, align 1
  %conv46 = zext i8 %483 to i64
  %484 = load i64, ptr %x392, align 8
  %add47 = add i64 %conv46, %484
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext %478, i64 noundef %add45, i64 noundef %add47)
  %485 = load i64, ptr %x415, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext 0, i64 noundef %485, i64 noundef -1374695839762142861)
  %486 = load i8, ptr %x428, align 1
  %487 = load i64, ptr %x417, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %486, i64 noundef %487, i64 noundef 6348401684107011962)
  %488 = load i8, ptr %x430, align 1
  %489 = load i64, ptr %x419, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %488, i64 noundef %489, i64 noundef -4079331616924160545)
  %490 = load i8, ptr %x432, align 1
  %491 = load i64, ptr %x421, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %490, i64 noundef %491, i64 noundef -1)
  %492 = load i8, ptr %x434, align 1
  %493 = load i64, ptr %x423, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %492, i64 noundef %493, i64 noundef -1)
  %494 = load i8, ptr %x436, align 1
  %495 = load i64, ptr %x425, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %494, i64 noundef %495, i64 noundef -1)
  %496 = load i8, ptr %x438, align 1
  %497 = load i8, ptr %x426, align 1
  %conv48 = zext i8 %497 to i64
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %496, i64 noundef %conv48, i64 noundef 0)
  %498 = load i8, ptr %x440, align 1
  %499 = load i64, ptr %x427, align 8
  %500 = load i64, ptr %x415, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x441, i8 noundef zeroext %498, i64 noundef %499, i64 noundef %500)
  %501 = load i8, ptr %x440, align 1
  %502 = load i64, ptr %x429, align 8
  %503 = load i64, ptr %x417, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x442, i8 noundef zeroext %501, i64 noundef %502, i64 noundef %503)
  %504 = load i8, ptr %x440, align 1
  %505 = load i64, ptr %x431, align 8
  %506 = load i64, ptr %x419, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x443, i8 noundef zeroext %504, i64 noundef %505, i64 noundef %506)
  %507 = load i8, ptr %x440, align 1
  %508 = load i64, ptr %x433, align 8
  %509 = load i64, ptr %x421, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x444, i8 noundef zeroext %507, i64 noundef %508, i64 noundef %509)
  %510 = load i8, ptr %x440, align 1
  %511 = load i64, ptr %x435, align 8
  %512 = load i64, ptr %x423, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x445, i8 noundef zeroext %510, i64 noundef %511, i64 noundef %512)
  %513 = load i8, ptr %x440, align 1
  %514 = load i64, ptr %x437, align 8
  %515 = load i64, ptr %x425, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x446, i8 noundef zeroext %513, i64 noundef %514, i64 noundef %515)
  %516 = load i64, ptr %x441, align 8
  %517 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %517, i64 0
  store i64 %516, ptr %arrayidx49, align 8
  %518 = load i64, ptr %x442, align 8
  %519 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %519, i64 1
  store i64 %518, ptr %arrayidx50, align 8
  %520 = load i64, ptr %x443, align 8
  %521 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %521, i64 2
  store i64 %520, ptr %arrayidx51, align 8
  %522 = load i64, ptr %x444, align 8
  %523 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %523, i64 3
  store i64 %522, ptr %arrayidx52, align 8
  %524 = load i64, ptr %x445, align 8
  %525 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %525, i64 4
  store i64 %524, ptr %arrayidx53, align 8
  %526 = load i64, ptr %x446, align 8
  %527 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %527, i64 5
  store i64 %526, ptr %arrayidx54, align 8
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
