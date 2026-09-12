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
define dso_local void @fiat_p224_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x15 = alloca i8, align 1
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
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
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
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
  %x93 = alloca i32, align 4
  %x94 = alloca i32, align 4
  %x95 = alloca i32, align 4
  %x96 = alloca i32, align 4
  %x97 = alloca i32, align 4
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
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
  %x153 = alloca i32, align 4
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
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
  %x175 = alloca i32, align 4
  %x176 = alloca i32, align 4
  %x177 = alloca i32, align 4
  %x178 = alloca i32, align 4
  %x179 = alloca i32, align 4
  %x180 = alloca i32, align 4
  %x181 = alloca i32, align 4
  %x182 = alloca i32, align 4
  %x183 = alloca i32, align 4
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
  %x207 = alloca i32, align 4
  %x208 = alloca i32, align 4
  %x209 = alloca i32, align 4
  %x210 = alloca i32, align 4
  %x211 = alloca i32, align 4
  %x212 = alloca i32, align 4
  %x213 = alloca i8, align 1
  %x214 = alloca i32, align 4
  %x215 = alloca i8, align 1
  %x216 = alloca i32, align 4
  %x217 = alloca i8, align 1
  %x218 = alloca i32, align 4
  %x219 = alloca i8, align 1
  %x220 = alloca i32, align 4
  %x221 = alloca i8, align 1
  %x222 = alloca i32, align 4
  %x223 = alloca i8, align 1
  %x224 = alloca i32, align 4
  %x225 = alloca i8, align 1
  %x226 = alloca i32, align 4
  %x227 = alloca i8, align 1
  %x228 = alloca i32, align 4
  %x229 = alloca i8, align 1
  %x230 = alloca i32, align 4
  %x231 = alloca i32, align 4
  %x232 = alloca i32, align 4
  %x233 = alloca i32, align 4
  %x234 = alloca i32, align 4
  %x235 = alloca i32, align 4
  %x236 = alloca i32, align 4
  %x237 = alloca i32, align 4
  %x238 = alloca i32, align 4
  %x239 = alloca i32, align 4
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
  %x263 = alloca i32, align 4
  %x264 = alloca i32, align 4
  %x265 = alloca i32, align 4
  %x266 = alloca i32, align 4
  %x267 = alloca i32, align 4
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
  %x297 = alloca i8, align 1
  %x298 = alloca i32, align 4
  %x299 = alloca i8, align 1
  %x300 = alloca i32, align 4
  %x301 = alloca i8, align 1
  %x302 = alloca i32, align 4
  %x303 = alloca i8, align 1
  %x304 = alloca i32, align 4
  %x305 = alloca i8, align 1
  %x306 = alloca i32, align 4
  %x307 = alloca i8, align 1
  %x308 = alloca i32, align 4
  %x309 = alloca i8, align 1
  %x310 = alloca i32, align 4
  %x311 = alloca i8, align 1
  %x312 = alloca i32, align 4
  %x313 = alloca i8, align 1
  %x314 = alloca i32, align 4
  %x315 = alloca i8, align 1
  %x316 = alloca i32, align 4
  %x317 = alloca i8, align 1
  %x318 = alloca i32, align 4
  %x319 = alloca i32, align 4
  %x320 = alloca i32, align 4
  %x321 = alloca i32, align 4
  %x322 = alloca i32, align 4
  %x323 = alloca i32, align 4
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
  %x391 = alloca i32, align 4
  %x392 = alloca i32, align 4
  %x393 = alloca i32, align 4
  %x394 = alloca i32, align 4
  %x395 = alloca i32, align 4
  %x396 = alloca i32, align 4
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
  call void @fiat_p224_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %14, i32 noundef -1)
  %15 = load i32, ptr %x7, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %15, i32 noundef -1)
  %16 = load i32, ptr %x7, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %16, i32 noundef -2)
  %17 = load i32, ptr %x13, align 4
  %18 = load i32, ptr %x10, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i32 noundef %17, i32 noundef %18)
  %19 = load i8, ptr %x15, align 1
  %20 = load i32, ptr %x11, align 4
  %21 = load i32, ptr %x8, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %19, i32 noundef %20, i32 noundef %21)
  %22 = load i32, ptr %x7, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x18, ptr noundef %x19, i32 noundef %22, i32 noundef -1)
  %23 = load i32, ptr %x18, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x20, ptr noundef %x21, i32 noundef %23, i32 noundef -1)
  %24 = load i32, ptr %x18, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x22, ptr noundef %x23, i32 noundef %24, i32 noundef -1)
  %25 = load i32, ptr %x18, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x24, ptr noundef %x25, i32 noundef %25, i32 noundef -1)
  %26 = load i32, ptr %x18, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x26, ptr noundef %x27, i32 noundef %26, i32 noundef -1)
  %27 = load i32, ptr %x27, align 4
  %28 = load i32, ptr %x24, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x29, align 1
  %30 = load i32, ptr %x25, align 4
  %31 = load i32, ptr %x22, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x31, align 1
  %33 = load i32, ptr %x23, align 4
  %34 = load i32, ptr %x20, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i32, ptr %x12, align 4
  %36 = load i32, ptr %x26, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext 0, i32 noundef %35, i32 noundef %36)
  %37 = load i8, ptr %x35, align 1
  %38 = load i32, ptr %x14, align 4
  %39 = load i32, ptr %x28, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %37, i32 noundef %38, i32 noundef %39)
  %40 = load i8, ptr %x37, align 1
  %41 = load i32, ptr %x16, align 4
  %42 = load i32, ptr %x30, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %40, i32 noundef %41, i32 noundef %42)
  %43 = load i8, ptr %x39, align 1
  %44 = load i8, ptr %x17, align 1
  %conv = zext i8 %44 to i32
  %45 = load i32, ptr %x9, align 4
  %add = add i32 %conv, %45
  %46 = load i32, ptr %x32, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %43, i32 noundef %add, i32 noundef %46)
  %47 = load i8, ptr %x41, align 1
  %48 = load i8, ptr %x33, align 1
  %conv7 = zext i8 %48 to i32
  %49 = load i32, ptr %x21, align 4
  %add8 = add i32 %conv7, %49
  call void @fiat_p224_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %47, i32 noundef 0, i32 noundef %add8)
  %50 = load i32, ptr %x1, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %50, i32 noundef -1)
  %51 = load i32, ptr %x1, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x46, ptr noundef %x47, i32 noundef %51, i32 noundef -1)
  %52 = load i32, ptr %x1, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x48, ptr noundef %x49, i32 noundef %52, i32 noundef -2)
  %53 = load i32, ptr %x49, align 4
  %54 = load i32, ptr %x46, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i32 noundef %53, i32 noundef %54)
  %55 = load i8, ptr %x51, align 1
  %56 = load i32, ptr %x47, align 4
  %57 = load i32, ptr %x44, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %55, i32 noundef %56, i32 noundef %57)
  %58 = load i32, ptr %x7, align 4
  %59 = load i32, ptr %x18, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext 0, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x55, align 1
  %conv9 = zext i8 %60 to i32
  %61 = load i32, ptr %x1, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext 0, i32 noundef %conv9, i32 noundef %61)
  %62 = load i32, ptr %x36, align 4
  %63 = load i32, ptr %x48, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext 0, i32 noundef %62, i32 noundef %63)
  %64 = load i8, ptr %x59, align 1
  %65 = load i32, ptr %x38, align 4
  %66 = load i32, ptr %x50, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %64, i32 noundef %65, i32 noundef %66)
  %67 = load i8, ptr %x61, align 1
  %68 = load i32, ptr %x40, align 4
  %69 = load i32, ptr %x52, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %67, i32 noundef %68, i32 noundef %69)
  %70 = load i8, ptr %x63, align 1
  %71 = load i32, ptr %x42, align 4
  %72 = load i8, ptr %x53, align 1
  %conv10 = zext i8 %72 to i32
  %73 = load i32, ptr %x45, align 4
  %add11 = add i32 %conv10, %73
  call void @fiat_p224_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %70, i32 noundef %71, i32 noundef %add11)
  %74 = load i32, ptr %x56, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %74, i32 noundef -1)
  %75 = load i32, ptr %x66, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %75, i32 noundef -1)
  %76 = load i32, ptr %x66, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %76, i32 noundef -1)
  %77 = load i32, ptr %x66, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %77, i32 noundef -1)
  %78 = load i32, ptr %x66, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %78, i32 noundef -1)
  %79 = load i32, ptr %x75, align 4
  %80 = load i32, ptr %x72, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x77, align 1
  %82 = load i32, ptr %x73, align 4
  %83 = load i32, ptr %x70, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x79, align 1
  %85 = load i32, ptr %x71, align 4
  %86 = load i32, ptr %x68, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i32, ptr %x58, align 4
  %88 = load i32, ptr %x74, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext 0, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x83, align 1
  %90 = load i32, ptr %x60, align 4
  %91 = load i32, ptr %x76, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x85, align 1
  %93 = load i32, ptr %x62, align 4
  %94 = load i32, ptr %x78, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %92, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x87, align 1
  %96 = load i32, ptr %x64, align 4
  %97 = load i32, ptr %x80, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %95, i32 noundef %96, i32 noundef %97)
  %98 = load i8, ptr %x89, align 1
  %99 = load i8, ptr %x65, align 1
  %conv12 = zext i8 %99 to i32
  %100 = load i8, ptr %x43, align 1
  %conv13 = zext i8 %100 to i32
  %add14 = add i32 %conv12, %conv13
  %101 = load i8, ptr %x81, align 1
  %conv15 = zext i8 %101 to i32
  %102 = load i32, ptr %x69, align 4
  %add16 = add i32 %conv15, %102
  call void @fiat_p224_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %98, i32 noundef %add14, i32 noundef %add16)
  %103 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x92, ptr noundef %x93, i32 noundef %103, i32 noundef -1)
  %104 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x94, ptr noundef %x95, i32 noundef %104, i32 noundef -1)
  %105 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x96, ptr noundef %x97, i32 noundef %105, i32 noundef -2)
  %106 = load i32, ptr %x97, align 4
  %107 = load i32, ptr %x94, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext 0, i32 noundef %106, i32 noundef %107)
  %108 = load i8, ptr %x99, align 1
  %109 = load i32, ptr %x95, align 4
  %110 = load i32, ptr %x92, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %108, i32 noundef %109, i32 noundef %110)
  %111 = load i32, ptr %x56, align 4
  %112 = load i32, ptr %x66, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext 0, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x103, align 1
  %conv17 = zext i8 %113 to i32
  %114 = load i8, ptr %x57, align 1
  %conv18 = zext i8 %114 to i32
  %add19 = add i32 %conv17, %conv18
  %115 = load i32, ptr %x2, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext 0, i32 noundef %add19, i32 noundef %115)
  %116 = load i8, ptr %x105, align 1
  %117 = load i32, ptr %x34, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %116, i32 noundef %117, i32 noundef 0)
  %118 = load i8, ptr %x107, align 1
  %119 = load i32, ptr %x82, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %118, i32 noundef %119, i32 noundef 0)
  %120 = load i8, ptr %x109, align 1
  %121 = load i32, ptr %x84, align 4
  %122 = load i32, ptr %x96, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %120, i32 noundef %121, i32 noundef %122)
  %123 = load i8, ptr %x111, align 1
  %124 = load i32, ptr %x86, align 4
  %125 = load i32, ptr %x98, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %123, i32 noundef %124, i32 noundef %125)
  %126 = load i8, ptr %x113, align 1
  %127 = load i32, ptr %x88, align 4
  %128 = load i32, ptr %x100, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %126, i32 noundef %127, i32 noundef %128)
  %129 = load i8, ptr %x115, align 1
  %130 = load i32, ptr %x90, align 4
  %131 = load i8, ptr %x101, align 1
  %conv20 = zext i8 %131 to i32
  %132 = load i32, ptr %x93, align 4
  %add21 = add i32 %conv20, %132
  call void @fiat_p224_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %129, i32 noundef %130, i32 noundef %add21)
  %133 = load i32, ptr %x104, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x118, ptr noundef %x119, i32 noundef %133, i32 noundef -1)
  %134 = load i32, ptr %x118, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x120, ptr noundef %x121, i32 noundef %134, i32 noundef -1)
  %135 = load i32, ptr %x118, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x122, ptr noundef %x123, i32 noundef %135, i32 noundef -1)
  %136 = load i32, ptr %x118, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x124, ptr noundef %x125, i32 noundef %136, i32 noundef -1)
  %137 = load i32, ptr %x118, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x126, ptr noundef %x127, i32 noundef %137, i32 noundef -1)
  %138 = load i32, ptr %x127, align 4
  %139 = load i32, ptr %x124, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext 0, i32 noundef %138, i32 noundef %139)
  %140 = load i8, ptr %x129, align 1
  %141 = load i32, ptr %x125, align 4
  %142 = load i32, ptr %x122, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %140, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x131, align 1
  %144 = load i32, ptr %x123, align 4
  %145 = load i32, ptr %x120, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %143, i32 noundef %144, i32 noundef %145)
  %146 = load i32, ptr %x104, align 4
  %147 = load i32, ptr %x118, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext 0, i32 noundef %146, i32 noundef %147)
  %148 = load i8, ptr %x135, align 1
  %149 = load i32, ptr %x106, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %148, i32 noundef %149, i32 noundef 0)
  %150 = load i8, ptr %x137, align 1
  %151 = load i32, ptr %x108, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %150, i32 noundef %151, i32 noundef 0)
  %152 = load i8, ptr %x139, align 1
  %153 = load i32, ptr %x110, align 4
  %154 = load i32, ptr %x126, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %152, i32 noundef %153, i32 noundef %154)
  %155 = load i8, ptr %x141, align 1
  %156 = load i32, ptr %x112, align 4
  %157 = load i32, ptr %x128, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %155, i32 noundef %156, i32 noundef %157)
  %158 = load i8, ptr %x143, align 1
  %159 = load i32, ptr %x114, align 4
  %160 = load i32, ptr %x130, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %158, i32 noundef %159, i32 noundef %160)
  %161 = load i8, ptr %x145, align 1
  %162 = load i32, ptr %x116, align 4
  %163 = load i32, ptr %x132, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %161, i32 noundef %162, i32 noundef %163)
  %164 = load i8, ptr %x147, align 1
  %165 = load i8, ptr %x117, align 1
  %conv22 = zext i8 %165 to i32
  %166 = load i8, ptr %x91, align 1
  %conv23 = zext i8 %166 to i32
  %add24 = add i32 %conv22, %conv23
  %167 = load i8, ptr %x133, align 1
  %conv25 = zext i8 %167 to i32
  %168 = load i32, ptr %x121, align 4
  %add26 = add i32 %conv25, %168
  call void @fiat_p224_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %164, i32 noundef %add24, i32 noundef %add26)
  %169 = load i32, ptr %x3, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x150, ptr noundef %x151, i32 noundef %169, i32 noundef -1)
  %170 = load i32, ptr %x3, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x152, ptr noundef %x153, i32 noundef %170, i32 noundef -1)
  %171 = load i32, ptr %x3, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x154, ptr noundef %x155, i32 noundef %171, i32 noundef -2)
  %172 = load i32, ptr %x155, align 4
  %173 = load i32, ptr %x152, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext 0, i32 noundef %172, i32 noundef %173)
  %174 = load i8, ptr %x157, align 1
  %175 = load i32, ptr %x153, align 4
  %176 = load i32, ptr %x150, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %174, i32 noundef %175, i32 noundef %176)
  %177 = load i32, ptr %x136, align 4
  %178 = load i32, ptr %x3, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext 0, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x161, align 1
  %180 = load i32, ptr %x138, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %179, i32 noundef %180, i32 noundef 0)
  %181 = load i8, ptr %x163, align 1
  %182 = load i32, ptr %x140, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %181, i32 noundef %182, i32 noundef 0)
  %183 = load i8, ptr %x165, align 1
  %184 = load i32, ptr %x142, align 4
  %185 = load i32, ptr %x154, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x167, align 1
  %187 = load i32, ptr %x144, align 4
  %188 = load i32, ptr %x156, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188)
  %189 = load i8, ptr %x169, align 1
  %190 = load i32, ptr %x146, align 4
  %191 = load i32, ptr %x158, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %189, i32 noundef %190, i32 noundef %191)
  %192 = load i8, ptr %x171, align 1
  %193 = load i32, ptr %x148, align 4
  %194 = load i8, ptr %x159, align 1
  %conv27 = zext i8 %194 to i32
  %195 = load i32, ptr %x151, align 4
  %add28 = add i32 %conv27, %195
  call void @fiat_p224_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %192, i32 noundef %193, i32 noundef %add28)
  %196 = load i32, ptr %x160, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x174, ptr noundef %x175, i32 noundef %196, i32 noundef -1)
  %197 = load i32, ptr %x174, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x176, ptr noundef %x177, i32 noundef %197, i32 noundef -1)
  %198 = load i32, ptr %x174, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x178, ptr noundef %x179, i32 noundef %198, i32 noundef -1)
  %199 = load i32, ptr %x174, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x180, ptr noundef %x181, i32 noundef %199, i32 noundef -1)
  %200 = load i32, ptr %x174, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x182, ptr noundef %x183, i32 noundef %200, i32 noundef -1)
  %201 = load i32, ptr %x183, align 4
  %202 = load i32, ptr %x180, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext 0, i32 noundef %201, i32 noundef %202)
  %203 = load i8, ptr %x185, align 1
  %204 = load i32, ptr %x181, align 4
  %205 = load i32, ptr %x178, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %203, i32 noundef %204, i32 noundef %205)
  %206 = load i8, ptr %x187, align 1
  %207 = load i32, ptr %x179, align 4
  %208 = load i32, ptr %x176, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %206, i32 noundef %207, i32 noundef %208)
  %209 = load i32, ptr %x160, align 4
  %210 = load i32, ptr %x174, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext 0, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x191, align 1
  %212 = load i32, ptr %x162, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %211, i32 noundef %212, i32 noundef 0)
  %213 = load i8, ptr %x193, align 1
  %214 = load i32, ptr %x164, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %213, i32 noundef %214, i32 noundef 0)
  %215 = load i8, ptr %x195, align 1
  %216 = load i32, ptr %x166, align 4
  %217 = load i32, ptr %x182, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %215, i32 noundef %216, i32 noundef %217)
  %218 = load i8, ptr %x197, align 1
  %219 = load i32, ptr %x168, align 4
  %220 = load i32, ptr %x184, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %218, i32 noundef %219, i32 noundef %220)
  %221 = load i8, ptr %x199, align 1
  %222 = load i32, ptr %x170, align 4
  %223 = load i32, ptr %x186, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %221, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x201, align 1
  %225 = load i32, ptr %x172, align 4
  %226 = load i32, ptr %x188, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x203, align 1
  %228 = load i8, ptr %x173, align 1
  %conv29 = zext i8 %228 to i32
  %229 = load i8, ptr %x149, align 1
  %conv30 = zext i8 %229 to i32
  %add31 = add i32 %conv29, %conv30
  %230 = load i8, ptr %x189, align 1
  %conv32 = zext i8 %230 to i32
  %231 = load i32, ptr %x177, align 4
  %add33 = add i32 %conv32, %231
  call void @fiat_p224_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %227, i32 noundef %add31, i32 noundef %add33)
  %232 = load i32, ptr %x4, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %232, i32 noundef -1)
  %233 = load i32, ptr %x4, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %233, i32 noundef -1)
  %234 = load i32, ptr %x4, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %234, i32 noundef -2)
  %235 = load i32, ptr %x211, align 4
  %236 = load i32, ptr %x208, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext 0, i32 noundef %235, i32 noundef %236)
  %237 = load i8, ptr %x213, align 1
  %238 = load i32, ptr %x209, align 4
  %239 = load i32, ptr %x206, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %237, i32 noundef %238, i32 noundef %239)
  %240 = load i32, ptr %x192, align 4
  %241 = load i32, ptr %x4, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext 0, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x217, align 1
  %243 = load i32, ptr %x194, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %242, i32 noundef %243, i32 noundef 0)
  %244 = load i8, ptr %x219, align 1
  %245 = load i32, ptr %x196, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %244, i32 noundef %245, i32 noundef 0)
  %246 = load i8, ptr %x221, align 1
  %247 = load i32, ptr %x198, align 4
  %248 = load i32, ptr %x210, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %246, i32 noundef %247, i32 noundef %248)
  %249 = load i8, ptr %x223, align 1
  %250 = load i32, ptr %x200, align 4
  %251 = load i32, ptr %x212, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %249, i32 noundef %250, i32 noundef %251)
  %252 = load i8, ptr %x225, align 1
  %253 = load i32, ptr %x202, align 4
  %254 = load i32, ptr %x214, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %252, i32 noundef %253, i32 noundef %254)
  %255 = load i8, ptr %x227, align 1
  %256 = load i32, ptr %x204, align 4
  %257 = load i8, ptr %x215, align 1
  %conv34 = zext i8 %257 to i32
  %258 = load i32, ptr %x207, align 4
  %add35 = add i32 %conv34, %258
  call void @fiat_p224_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %255, i32 noundef %256, i32 noundef %add35)
  %259 = load i32, ptr %x216, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x230, ptr noundef %x231, i32 noundef %259, i32 noundef -1)
  %260 = load i32, ptr %x230, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x232, ptr noundef %x233, i32 noundef %260, i32 noundef -1)
  %261 = load i32, ptr %x230, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x234, ptr noundef %x235, i32 noundef %261, i32 noundef -1)
  %262 = load i32, ptr %x230, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x236, ptr noundef %x237, i32 noundef %262, i32 noundef -1)
  %263 = load i32, ptr %x230, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x238, ptr noundef %x239, i32 noundef %263, i32 noundef -1)
  %264 = load i32, ptr %x239, align 4
  %265 = load i32, ptr %x236, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext 0, i32 noundef %264, i32 noundef %265)
  %266 = load i8, ptr %x241, align 1
  %267 = load i32, ptr %x237, align 4
  %268 = load i32, ptr %x234, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %266, i32 noundef %267, i32 noundef %268)
  %269 = load i8, ptr %x243, align 1
  %270 = load i32, ptr %x235, align 4
  %271 = load i32, ptr %x232, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %269, i32 noundef %270, i32 noundef %271)
  %272 = load i32, ptr %x216, align 4
  %273 = load i32, ptr %x230, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext 0, i32 noundef %272, i32 noundef %273)
  %274 = load i8, ptr %x247, align 1
  %275 = load i32, ptr %x218, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %274, i32 noundef %275, i32 noundef 0)
  %276 = load i8, ptr %x249, align 1
  %277 = load i32, ptr %x220, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %276, i32 noundef %277, i32 noundef 0)
  %278 = load i8, ptr %x251, align 1
  %279 = load i32, ptr %x222, align 4
  %280 = load i32, ptr %x238, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %278, i32 noundef %279, i32 noundef %280)
  %281 = load i8, ptr %x253, align 1
  %282 = load i32, ptr %x224, align 4
  %283 = load i32, ptr %x240, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %281, i32 noundef %282, i32 noundef %283)
  %284 = load i8, ptr %x255, align 1
  %285 = load i32, ptr %x226, align 4
  %286 = load i32, ptr %x242, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %284, i32 noundef %285, i32 noundef %286)
  %287 = load i8, ptr %x257, align 1
  %288 = load i32, ptr %x228, align 4
  %289 = load i32, ptr %x244, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %287, i32 noundef %288, i32 noundef %289)
  %290 = load i8, ptr %x259, align 1
  %291 = load i8, ptr %x229, align 1
  %conv36 = zext i8 %291 to i32
  %292 = load i8, ptr %x205, align 1
  %conv37 = zext i8 %292 to i32
  %add38 = add i32 %conv36, %conv37
  %293 = load i8, ptr %x245, align 1
  %conv39 = zext i8 %293 to i32
  %294 = load i32, ptr %x233, align 4
  %add40 = add i32 %conv39, %294
  call void @fiat_p224_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %290, i32 noundef %add38, i32 noundef %add40)
  %295 = load i32, ptr %x5, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x262, ptr noundef %x263, i32 noundef %295, i32 noundef -1)
  %296 = load i32, ptr %x5, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x264, ptr noundef %x265, i32 noundef %296, i32 noundef -1)
  %297 = load i32, ptr %x5, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x266, ptr noundef %x267, i32 noundef %297, i32 noundef -2)
  %298 = load i32, ptr %x267, align 4
  %299 = load i32, ptr %x264, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext 0, i32 noundef %298, i32 noundef %299)
  %300 = load i8, ptr %x269, align 1
  %301 = load i32, ptr %x265, align 4
  %302 = load i32, ptr %x262, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %300, i32 noundef %301, i32 noundef %302)
  %303 = load i32, ptr %x248, align 4
  %304 = load i32, ptr %x5, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext 0, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x273, align 1
  %306 = load i32, ptr %x250, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %305, i32 noundef %306, i32 noundef 0)
  %307 = load i8, ptr %x275, align 1
  %308 = load i32, ptr %x252, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %307, i32 noundef %308, i32 noundef 0)
  %309 = load i8, ptr %x277, align 1
  %310 = load i32, ptr %x254, align 4
  %311 = load i32, ptr %x266, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %309, i32 noundef %310, i32 noundef %311)
  %312 = load i8, ptr %x279, align 1
  %313 = load i32, ptr %x256, align 4
  %314 = load i32, ptr %x268, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %312, i32 noundef %313, i32 noundef %314)
  %315 = load i8, ptr %x281, align 1
  %316 = load i32, ptr %x258, align 4
  %317 = load i32, ptr %x270, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %315, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x283, align 1
  %319 = load i32, ptr %x260, align 4
  %320 = load i8, ptr %x271, align 1
  %conv41 = zext i8 %320 to i32
  %321 = load i32, ptr %x263, align 4
  %add42 = add i32 %conv41, %321
  call void @fiat_p224_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %318, i32 noundef %319, i32 noundef %add42)
  %322 = load i32, ptr %x272, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x286, ptr noundef %x287, i32 noundef %322, i32 noundef -1)
  %323 = load i32, ptr %x286, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x288, ptr noundef %x289, i32 noundef %323, i32 noundef -1)
  %324 = load i32, ptr %x286, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x290, ptr noundef %x291, i32 noundef %324, i32 noundef -1)
  %325 = load i32, ptr %x286, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x292, ptr noundef %x293, i32 noundef %325, i32 noundef -1)
  %326 = load i32, ptr %x286, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x294, ptr noundef %x295, i32 noundef %326, i32 noundef -1)
  %327 = load i32, ptr %x295, align 4
  %328 = load i32, ptr %x292, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext 0, i32 noundef %327, i32 noundef %328)
  %329 = load i8, ptr %x297, align 1
  %330 = load i32, ptr %x293, align 4
  %331 = load i32, ptr %x290, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %329, i32 noundef %330, i32 noundef %331)
  %332 = load i8, ptr %x299, align 1
  %333 = load i32, ptr %x291, align 4
  %334 = load i32, ptr %x288, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %332, i32 noundef %333, i32 noundef %334)
  %335 = load i32, ptr %x272, align 4
  %336 = load i32, ptr %x286, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext 0, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x303, align 1
  %338 = load i32, ptr %x274, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %337, i32 noundef %338, i32 noundef 0)
  %339 = load i8, ptr %x305, align 1
  %340 = load i32, ptr %x276, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext %339, i32 noundef %340, i32 noundef 0)
  %341 = load i8, ptr %x307, align 1
  %342 = load i32, ptr %x278, align 4
  %343 = load i32, ptr %x294, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %341, i32 noundef %342, i32 noundef %343)
  %344 = load i8, ptr %x309, align 1
  %345 = load i32, ptr %x280, align 4
  %346 = load i32, ptr %x296, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %344, i32 noundef %345, i32 noundef %346)
  %347 = load i8, ptr %x311, align 1
  %348 = load i32, ptr %x282, align 4
  %349 = load i32, ptr %x298, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %347, i32 noundef %348, i32 noundef %349)
  %350 = load i8, ptr %x313, align 1
  %351 = load i32, ptr %x284, align 4
  %352 = load i32, ptr %x300, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %350, i32 noundef %351, i32 noundef %352)
  %353 = load i8, ptr %x315, align 1
  %354 = load i8, ptr %x285, align 1
  %conv43 = zext i8 %354 to i32
  %355 = load i8, ptr %x261, align 1
  %conv44 = zext i8 %355 to i32
  %add45 = add i32 %conv43, %conv44
  %356 = load i8, ptr %x301, align 1
  %conv46 = zext i8 %356 to i32
  %357 = load i32, ptr %x289, align 4
  %add47 = add i32 %conv46, %357
  call void @fiat_p224_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %353, i32 noundef %add45, i32 noundef %add47)
  %358 = load i32, ptr %x6, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x318, ptr noundef %x319, i32 noundef %358, i32 noundef -1)
  %359 = load i32, ptr %x6, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x320, ptr noundef %x321, i32 noundef %359, i32 noundef -1)
  %360 = load i32, ptr %x6, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x322, ptr noundef %x323, i32 noundef %360, i32 noundef -2)
  %361 = load i32, ptr %x323, align 4
  %362 = load i32, ptr %x320, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext 0, i32 noundef %361, i32 noundef %362)
  %363 = load i8, ptr %x325, align 1
  %364 = load i32, ptr %x321, align 4
  %365 = load i32, ptr %x318, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %363, i32 noundef %364, i32 noundef %365)
  %366 = load i32, ptr %x304, align 4
  %367 = load i32, ptr %x6, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext 0, i32 noundef %366, i32 noundef %367)
  %368 = load i8, ptr %x329, align 1
  %369 = load i32, ptr %x306, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %368, i32 noundef %369, i32 noundef 0)
  %370 = load i8, ptr %x331, align 1
  %371 = load i32, ptr %x308, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %370, i32 noundef %371, i32 noundef 0)
  %372 = load i8, ptr %x333, align 1
  %373 = load i32, ptr %x310, align 4
  %374 = load i32, ptr %x322, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %372, i32 noundef %373, i32 noundef %374)
  %375 = load i8, ptr %x335, align 1
  %376 = load i32, ptr %x312, align 4
  %377 = load i32, ptr %x324, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %375, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x337, align 1
  %379 = load i32, ptr %x314, align 4
  %380 = load i32, ptr %x326, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x339, align 1
  %382 = load i32, ptr %x316, align 4
  %383 = load i8, ptr %x327, align 1
  %conv48 = zext i8 %383 to i32
  %384 = load i32, ptr %x319, align 4
  %add49 = add i32 %conv48, %384
  call void @fiat_p224_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %add49)
  %385 = load i32, ptr %x328, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %385, i32 noundef -1)
  %386 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %386, i32 noundef -1)
  %387 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %387, i32 noundef -1)
  %388 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x348, ptr noundef %x349, i32 noundef %388, i32 noundef -1)
  %389 = load i32, ptr %x342, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x350, ptr noundef %x351, i32 noundef %389, i32 noundef -1)
  %390 = load i32, ptr %x351, align 4
  %391 = load i32, ptr %x348, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext 0, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x353, align 1
  %393 = load i32, ptr %x349, align 4
  %394 = load i32, ptr %x346, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x355, align 1
  %396 = load i32, ptr %x347, align 4
  %397 = load i32, ptr %x344, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i32, ptr %x328, align 4
  %399 = load i32, ptr %x342, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext 0, i32 noundef %398, i32 noundef %399)
  %400 = load i8, ptr %x359, align 1
  %401 = load i32, ptr %x330, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext %400, i32 noundef %401, i32 noundef 0)
  %402 = load i8, ptr %x361, align 1
  %403 = load i32, ptr %x332, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext %402, i32 noundef %403, i32 noundef 0)
  %404 = load i8, ptr %x363, align 1
  %405 = load i32, ptr %x334, align 4
  %406 = load i32, ptr %x350, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %404, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x365, align 1
  %408 = load i32, ptr %x336, align 4
  %409 = load i32, ptr %x352, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x367, align 1
  %411 = load i32, ptr %x338, align 4
  %412 = load i32, ptr %x354, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x369, align 1
  %414 = load i32, ptr %x340, align 4
  %415 = load i32, ptr %x356, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x371, align 1
  %417 = load i8, ptr %x341, align 1
  %conv50 = zext i8 %417 to i32
  %418 = load i8, ptr %x317, align 1
  %conv51 = zext i8 %418 to i32
  %add52 = add i32 %conv50, %conv51
  %419 = load i8, ptr %x357, align 1
  %conv53 = zext i8 %419 to i32
  %420 = load i32, ptr %x345, align 4
  %add54 = add i32 %conv53, %420
  call void @fiat_p224_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %416, i32 noundef %add52, i32 noundef %add54)
  %421 = load i32, ptr %x360, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext 0, i32 noundef %421, i32 noundef 1)
  %422 = load i8, ptr %x375, align 1
  %423 = load i32, ptr %x362, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %422, i32 noundef %423, i32 noundef 0)
  %424 = load i8, ptr %x377, align 1
  %425 = load i32, ptr %x364, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %424, i32 noundef %425, i32 noundef 0)
  %426 = load i8, ptr %x379, align 1
  %427 = load i32, ptr %x366, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext %426, i32 noundef %427, i32 noundef -1)
  %428 = load i8, ptr %x381, align 1
  %429 = load i32, ptr %x368, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %428, i32 noundef %429, i32 noundef -1)
  %430 = load i8, ptr %x383, align 1
  %431 = load i32, ptr %x370, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %430, i32 noundef %431, i32 noundef -1)
  %432 = load i8, ptr %x385, align 1
  %433 = load i32, ptr %x372, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %432, i32 noundef %433, i32 noundef -1)
  %434 = load i8, ptr %x387, align 1
  %435 = load i8, ptr %x373, align 1
  %conv55 = zext i8 %435 to i32
  call void @fiat_p224_subborrowx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %434, i32 noundef %conv55, i32 noundef 0)
  %436 = load i8, ptr %x389, align 1
  %437 = load i32, ptr %x374, align 4
  %438 = load i32, ptr %x360, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x390, i8 noundef zeroext %436, i32 noundef %437, i32 noundef %438)
  %439 = load i8, ptr %x389, align 1
  %440 = load i32, ptr %x376, align 4
  %441 = load i32, ptr %x362, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x391, i8 noundef zeroext %439, i32 noundef %440, i32 noundef %441)
  %442 = load i8, ptr %x389, align 1
  %443 = load i32, ptr %x378, align 4
  %444 = load i32, ptr %x364, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x392, i8 noundef zeroext %442, i32 noundef %443, i32 noundef %444)
  %445 = load i8, ptr %x389, align 1
  %446 = load i32, ptr %x380, align 4
  %447 = load i32, ptr %x366, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x393, i8 noundef zeroext %445, i32 noundef %446, i32 noundef %447)
  %448 = load i8, ptr %x389, align 1
  %449 = load i32, ptr %x382, align 4
  %450 = load i32, ptr %x368, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x394, i8 noundef zeroext %448, i32 noundef %449, i32 noundef %450)
  %451 = load i8, ptr %x389, align 1
  %452 = load i32, ptr %x384, align 4
  %453 = load i32, ptr %x370, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x395, i8 noundef zeroext %451, i32 noundef %452, i32 noundef %453)
  %454 = load i8, ptr %x389, align 1
  %455 = load i32, ptr %x386, align 4
  %456 = load i32, ptr %x372, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x396, i8 noundef zeroext %454, i32 noundef %455, i32 noundef %456)
  %457 = load i32, ptr %x390, align 4
  %458 = load ptr, ptr %out1.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %458, i64 0
  store i32 %457, ptr %arrayidx56, align 4
  %459 = load i32, ptr %x391, align 4
  %460 = load ptr, ptr %out1.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %460, i64 1
  store i32 %459, ptr %arrayidx57, align 4
  %461 = load i32, ptr %x392, align 4
  %462 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %462, i64 2
  store i32 %461, ptr %arrayidx58, align 4
  %463 = load i32, ptr %x393, align 4
  %464 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %464, i64 3
  store i32 %463, ptr %arrayidx59, align 4
  %465 = load i32, ptr %x394, align 4
  %466 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %466, i64 4
  store i32 %465, ptr %arrayidx60, align 4
  %467 = load i32, ptr %x395, align 4
  %468 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %468, i64 5
  store i32 %467, ptr %arrayidx61, align 4
  %469 = load i32, ptr %x396, align 4
  %470 = load ptr, ptr %out1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %470, i64 6
  store i32 %469, ptr %arrayidx62, align 4
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
