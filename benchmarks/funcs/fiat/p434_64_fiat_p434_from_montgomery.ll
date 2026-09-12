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
define dso_local void @fiat_p434_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i8, align 1
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
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
  %x35 = alloca i8, align 1
  %x36 = alloca i64, align 8
  %x37 = alloca i8, align 1
  %x38 = alloca i64, align 8
  %x39 = alloca i8, align 1
  %x40 = alloca i64, align 8
  %x41 = alloca i8, align 1
  %x42 = alloca i64, align 8
  %x43 = alloca i8, align 1
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
  %x56 = alloca i64, align 8
  %x57 = alloca i64, align 8
  %x58 = alloca i64, align 8
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
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
  %x79 = alloca i8, align 1
  %x80 = alloca i64, align 8
  %x81 = alloca i8, align 1
  %x82 = alloca i64, align 8
  %x83 = alloca i8, align 1
  %x84 = alloca i64, align 8
  %x85 = alloca i8, align 1
  %x86 = alloca i64, align 8
  %x87 = alloca i8, align 1
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
  %x155 = alloca i8, align 1
  %x156 = alloca i64, align 8
  %x157 = alloca i8, align 1
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
  %x169 = alloca i64, align 8
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
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
  %x209 = alloca i8, align 1
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
  %x223 = alloca i64, align 8
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
  %x235 = alloca i8, align 1
  %x236 = alloca i64, align 8
  %x237 = alloca i8, align 1
  %x238 = alloca i64, align 8
  %x239 = alloca i8, align 1
  %x240 = alloca i64, align 8
  %x241 = alloca i8, align 1
  %x242 = alloca i64, align 8
  %x243 = alloca i8, align 1
  %x244 = alloca i64, align 8
  %x245 = alloca i8, align 1
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
  %x261 = alloca i8, align 1
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
  %x275 = alloca i64, align 8
  %x276 = alloca i64, align 8
  %x277 = alloca i8, align 1
  %x278 = alloca i64, align 8
  %x279 = alloca i8, align 1
  %x280 = alloca i64, align 8
  %x281 = alloca i8, align 1
  %x282 = alloca i64, align 8
  %x283 = alloca i8, align 1
  %x284 = alloca i64, align 8
  %x285 = alloca i8, align 1
  %x286 = alloca i64, align 8
  %x287 = alloca i8, align 1
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
  %x366 = alloca i8, align 1
  %x367 = alloca i64, align 8
  %x368 = alloca i8, align 1
  %x369 = alloca i64, align 8
  %x370 = alloca i8, align 1
  %x371 = alloca i64, align 8
  %x372 = alloca i64, align 8
  %x373 = alloca i64, align 8
  %x374 = alloca i64, align 8
  %x375 = alloca i64, align 8
  %x376 = alloca i64, align 8
  %x377 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef 620258357900100)
  %3 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef 7853257225132122198)
  %4 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef 8918917783347572387)
  %5 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef -161717841442111489)
  %6 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x10, ptr noundef %x11, i64 noundef %6, i64 noundef -1)
  %7 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x12, ptr noundef %x13, i64 noundef %7, i64 noundef -1)
  %8 = load i64, ptr %x1, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x14, ptr noundef %x15, i64 noundef %8, i64 noundef -1)
  %9 = load i64, ptr %x15, align 8
  %10 = load i64, ptr %x12, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %9, i64 noundef %10)
  %11 = load i8, ptr %x17, align 1
  %12 = load i64, ptr %x13, align 8
  %13 = load i64, ptr %x10, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %11, i64 noundef %12, i64 noundef %13)
  %14 = load i8, ptr %x19, align 1
  %15 = load i64, ptr %x11, align 8
  %16 = load i64, ptr %x8, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x21, align 1
  %18 = load i64, ptr %x9, align 8
  %19 = load i64, ptr %x6, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %19)
  %20 = load i8, ptr %x23, align 1
  %21 = load i64, ptr %x7, align 8
  %22 = load i64, ptr %x4, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %20, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x25, align 1
  %24 = load i64, ptr %x5, align 8
  %25 = load i64, ptr %x2, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %25)
  %26 = load i64, ptr %x1, align 8
  %27 = load i64, ptr %x14, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x29, align 1
  %29 = load i64, ptr %x16, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %28, i64 noundef 0, i64 noundef %29)
  %30 = load i8, ptr %x31, align 1
  %31 = load i64, ptr %x18, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %30, i64 noundef 0, i64 noundef %31)
  %32 = load i8, ptr %x33, align 1
  %33 = load i64, ptr %x20, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %32, i64 noundef 0, i64 noundef %33)
  %34 = load i8, ptr %x35, align 1
  %35 = load i64, ptr %x22, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %34, i64 noundef 0, i64 noundef %35)
  %36 = load i8, ptr %x37, align 1
  %37 = load i64, ptr %x24, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %36, i64 noundef 0, i64 noundef %37)
  %38 = load i8, ptr %x39, align 1
  %39 = load i64, ptr %x26, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %38, i64 noundef 0, i64 noundef %39)
  %40 = load i64, ptr %x30, align 8
  %41 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %41, i64 1
  %42 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext 0, i64 noundef %40, i64 noundef %42)
  %43 = load i8, ptr %x43, align 1
  %44 = load i64, ptr %x32, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %43, i64 noundef %44, i64 noundef 0)
  %45 = load i8, ptr %x45, align 1
  %46 = load i64, ptr %x34, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %45, i64 noundef %46, i64 noundef 0)
  %47 = load i8, ptr %x47, align 1
  %48 = load i64, ptr %x36, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %47, i64 noundef %48, i64 noundef 0)
  %49 = load i8, ptr %x49, align 1
  %50 = load i64, ptr %x38, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %49, i64 noundef %50, i64 noundef 0)
  %51 = load i8, ptr %x51, align 1
  %52 = load i64, ptr %x40, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %51, i64 noundef %52, i64 noundef 0)
  %53 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x54, ptr noundef %x55, i64 noundef %53, i64 noundef 620258357900100)
  %54 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x56, ptr noundef %x57, i64 noundef %54, i64 noundef 7853257225132122198)
  %55 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x58, ptr noundef %x59, i64 noundef %55, i64 noundef 8918917783347572387)
  %56 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x60, ptr noundef %x61, i64 noundef %56, i64 noundef -161717841442111489)
  %57 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x62, ptr noundef %x63, i64 noundef %57, i64 noundef -1)
  %58 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x64, ptr noundef %x65, i64 noundef %58, i64 noundef -1)
  %59 = load i64, ptr %x42, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %59, i64 noundef -1)
  %60 = load i64, ptr %x67, align 8
  %61 = load i64, ptr %x64, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext 0, i64 noundef %60, i64 noundef %61)
  %62 = load i8, ptr %x69, align 1
  %63 = load i64, ptr %x65, align 8
  %64 = load i64, ptr %x62, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %62, i64 noundef %63, i64 noundef %64)
  %65 = load i8, ptr %x71, align 1
  %66 = load i64, ptr %x63, align 8
  %67 = load i64, ptr %x60, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %65, i64 noundef %66, i64 noundef %67)
  %68 = load i8, ptr %x73, align 1
  %69 = load i64, ptr %x61, align 8
  %70 = load i64, ptr %x58, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %68, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x75, align 1
  %72 = load i64, ptr %x59, align 8
  %73 = load i64, ptr %x56, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x77, align 1
  %75 = load i64, ptr %x57, align 8
  %76 = load i64, ptr %x54, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i64, ptr %x42, align 8
  %78 = load i64, ptr %x66, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x81, align 1
  %80 = load i64, ptr %x44, align 8
  %81 = load i64, ptr %x68, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x83, align 1
  %83 = load i64, ptr %x46, align 8
  %84 = load i64, ptr %x70, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x85, align 1
  %86 = load i64, ptr %x48, align 8
  %87 = load i64, ptr %x72, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %85, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x87, align 1
  %89 = load i64, ptr %x50, align 8
  %90 = load i64, ptr %x74, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %88, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x89, align 1
  %92 = load i64, ptr %x52, align 8
  %93 = load i64, ptr %x76, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x91, align 1
  %95 = load i8, ptr %x53, align 1
  %conv = zext i8 %95 to i64
  %96 = load i8, ptr %x41, align 1
  %conv2 = zext i8 %96 to i64
  %97 = load i8, ptr %x27, align 1
  %conv3 = zext i8 %97 to i64
  %98 = load i64, ptr %x3, align 8
  %add = add i64 %conv3, %98
  %add4 = add i64 %conv2, %add
  %add5 = add i64 %conv, %add4
  %99 = load i64, ptr %x78, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %94, i64 noundef %add5, i64 noundef %99)
  %100 = load i64, ptr %x82, align 8
  %101 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %101, i64 2
  %102 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext 0, i64 noundef %100, i64 noundef %102)
  %103 = load i8, ptr %x95, align 1
  %104 = load i64, ptr %x84, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %103, i64 noundef %104, i64 noundef 0)
  %105 = load i8, ptr %x97, align 1
  %106 = load i64, ptr %x86, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %105, i64 noundef %106, i64 noundef 0)
  %107 = load i8, ptr %x99, align 1
  %108 = load i64, ptr %x88, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %107, i64 noundef %108, i64 noundef 0)
  %109 = load i8, ptr %x101, align 1
  %110 = load i64, ptr %x90, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %109, i64 noundef %110, i64 noundef 0)
  %111 = load i8, ptr %x103, align 1
  %112 = load i64, ptr %x92, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %111, i64 noundef %112, i64 noundef 0)
  %113 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x106, ptr noundef %x107, i64 noundef %113, i64 noundef 620258357900100)
  %114 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x108, ptr noundef %x109, i64 noundef %114, i64 noundef 7853257225132122198)
  %115 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x110, ptr noundef %x111, i64 noundef %115, i64 noundef 8918917783347572387)
  %116 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x112, ptr noundef %x113, i64 noundef %116, i64 noundef -161717841442111489)
  %117 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x114, ptr noundef %x115, i64 noundef %117, i64 noundef -1)
  %118 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x116, ptr noundef %x117, i64 noundef %118, i64 noundef -1)
  %119 = load i64, ptr %x94, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x118, ptr noundef %x119, i64 noundef %119, i64 noundef -1)
  %120 = load i64, ptr %x119, align 8
  %121 = load i64, ptr %x116, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i64 noundef %120, i64 noundef %121)
  %122 = load i8, ptr %x121, align 1
  %123 = load i64, ptr %x117, align 8
  %124 = load i64, ptr %x114, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %122, i64 noundef %123, i64 noundef %124)
  %125 = load i8, ptr %x123, align 1
  %126 = load i64, ptr %x115, align 8
  %127 = load i64, ptr %x112, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %127)
  %128 = load i8, ptr %x125, align 1
  %129 = load i64, ptr %x113, align 8
  %130 = load i64, ptr %x110, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %128, i64 noundef %129, i64 noundef %130)
  %131 = load i8, ptr %x127, align 1
  %132 = load i64, ptr %x111, align 8
  %133 = load i64, ptr %x108, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %131, i64 noundef %132, i64 noundef %133)
  %134 = load i8, ptr %x129, align 1
  %135 = load i64, ptr %x109, align 8
  %136 = load i64, ptr %x106, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %134, i64 noundef %135, i64 noundef %136)
  %137 = load i64, ptr %x94, align 8
  %138 = load i64, ptr %x118, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext 0, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x133, align 1
  %140 = load i64, ptr %x96, align 8
  %141 = load i64, ptr %x120, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x135, align 1
  %143 = load i64, ptr %x98, align 8
  %144 = load i64, ptr %x122, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x137, align 1
  %146 = load i64, ptr %x100, align 8
  %147 = load i64, ptr %x124, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i8, ptr %x139, align 1
  %149 = load i64, ptr %x102, align 8
  %150 = load i64, ptr %x126, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %148, i64 noundef %149, i64 noundef %150)
  %151 = load i8, ptr %x141, align 1
  %152 = load i64, ptr %x104, align 8
  %153 = load i64, ptr %x128, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %151, i64 noundef %152, i64 noundef %153)
  %154 = load i8, ptr %x143, align 1
  %155 = load i8, ptr %x105, align 1
  %conv7 = zext i8 %155 to i64
  %156 = load i8, ptr %x93, align 1
  %conv8 = zext i8 %156 to i64
  %157 = load i8, ptr %x79, align 1
  %conv9 = zext i8 %157 to i64
  %158 = load i64, ptr %x55, align 8
  %add10 = add i64 %conv9, %158
  %add11 = add i64 %conv8, %add10
  %add12 = add i64 %conv7, %add11
  %159 = load i64, ptr %x130, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %154, i64 noundef %add12, i64 noundef %159)
  %160 = load i64, ptr %x134, align 8
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %161, i64 3
  %162 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext 0, i64 noundef %160, i64 noundef %162)
  %163 = load i8, ptr %x147, align 1
  %164 = load i64, ptr %x136, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %163, i64 noundef %164, i64 noundef 0)
  %165 = load i8, ptr %x149, align 1
  %166 = load i64, ptr %x138, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %165, i64 noundef %166, i64 noundef 0)
  %167 = load i8, ptr %x151, align 1
  %168 = load i64, ptr %x140, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %167, i64 noundef %168, i64 noundef 0)
  %169 = load i8, ptr %x153, align 1
  %170 = load i64, ptr %x142, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %169, i64 noundef %170, i64 noundef 0)
  %171 = load i8, ptr %x155, align 1
  %172 = load i64, ptr %x144, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %171, i64 noundef %172, i64 noundef 0)
  %173 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x158, ptr noundef %x159, i64 noundef %173, i64 noundef 620258357900100)
  %174 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x160, ptr noundef %x161, i64 noundef %174, i64 noundef 7853257225132122198)
  %175 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x162, ptr noundef %x163, i64 noundef %175, i64 noundef 8918917783347572387)
  %176 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x164, ptr noundef %x165, i64 noundef %176, i64 noundef -161717841442111489)
  %177 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x166, ptr noundef %x167, i64 noundef %177, i64 noundef -1)
  %178 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x168, ptr noundef %x169, i64 noundef %178, i64 noundef -1)
  %179 = load i64, ptr %x146, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x170, ptr noundef %x171, i64 noundef %179, i64 noundef -1)
  %180 = load i64, ptr %x171, align 8
  %181 = load i64, ptr %x168, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext 0, i64 noundef %180, i64 noundef %181)
  %182 = load i8, ptr %x173, align 1
  %183 = load i64, ptr %x169, align 8
  %184 = load i64, ptr %x166, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %182, i64 noundef %183, i64 noundef %184)
  %185 = load i8, ptr %x175, align 1
  %186 = load i64, ptr %x167, align 8
  %187 = load i64, ptr %x164, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %185, i64 noundef %186, i64 noundef %187)
  %188 = load i8, ptr %x177, align 1
  %189 = load i64, ptr %x165, align 8
  %190 = load i64, ptr %x162, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %188, i64 noundef %189, i64 noundef %190)
  %191 = load i8, ptr %x179, align 1
  %192 = load i64, ptr %x163, align 8
  %193 = load i64, ptr %x160, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %191, i64 noundef %192, i64 noundef %193)
  %194 = load i8, ptr %x181, align 1
  %195 = load i64, ptr %x161, align 8
  %196 = load i64, ptr %x158, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %194, i64 noundef %195, i64 noundef %196)
  %197 = load i64, ptr %x146, align 8
  %198 = load i64, ptr %x170, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext 0, i64 noundef %197, i64 noundef %198)
  %199 = load i8, ptr %x185, align 1
  %200 = load i64, ptr %x148, align 8
  %201 = load i64, ptr %x172, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %199, i64 noundef %200, i64 noundef %201)
  %202 = load i8, ptr %x187, align 1
  %203 = load i64, ptr %x150, align 8
  %204 = load i64, ptr %x174, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %202, i64 noundef %203, i64 noundef %204)
  %205 = load i8, ptr %x189, align 1
  %206 = load i64, ptr %x152, align 8
  %207 = load i64, ptr %x176, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %205, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x191, align 1
  %209 = load i64, ptr %x154, align 8
  %210 = load i64, ptr %x178, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %208, i64 noundef %209, i64 noundef %210)
  %211 = load i8, ptr %x193, align 1
  %212 = load i64, ptr %x156, align 8
  %213 = load i64, ptr %x180, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %211, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x195, align 1
  %215 = load i8, ptr %x157, align 1
  %conv14 = zext i8 %215 to i64
  %216 = load i8, ptr %x145, align 1
  %conv15 = zext i8 %216 to i64
  %217 = load i8, ptr %x131, align 1
  %conv16 = zext i8 %217 to i64
  %218 = load i64, ptr %x107, align 8
  %add17 = add i64 %conv16, %218
  %add18 = add i64 %conv15, %add17
  %add19 = add i64 %conv14, %add18
  %219 = load i64, ptr %x182, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %214, i64 noundef %add19, i64 noundef %219)
  %220 = load i64, ptr %x186, align 8
  %221 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %221, i64 4
  %222 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext 0, i64 noundef %220, i64 noundef %222)
  %223 = load i8, ptr %x199, align 1
  %224 = load i64, ptr %x188, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %223, i64 noundef %224, i64 noundef 0)
  %225 = load i8, ptr %x201, align 1
  %226 = load i64, ptr %x190, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %225, i64 noundef %226, i64 noundef 0)
  %227 = load i8, ptr %x203, align 1
  %228 = load i64, ptr %x192, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext %227, i64 noundef %228, i64 noundef 0)
  %229 = load i8, ptr %x205, align 1
  %230 = load i64, ptr %x194, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x206, ptr noundef %x207, i8 noundef zeroext %229, i64 noundef %230, i64 noundef 0)
  %231 = load i8, ptr %x207, align 1
  %232 = load i64, ptr %x196, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext %231, i64 noundef %232, i64 noundef 0)
  %233 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x210, ptr noundef %x211, i64 noundef %233, i64 noundef 620258357900100)
  %234 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x212, ptr noundef %x213, i64 noundef %234, i64 noundef 7853257225132122198)
  %235 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x214, ptr noundef %x215, i64 noundef %235, i64 noundef 8918917783347572387)
  %236 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x216, ptr noundef %x217, i64 noundef %236, i64 noundef -161717841442111489)
  %237 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x218, ptr noundef %x219, i64 noundef %237, i64 noundef -1)
  %238 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x220, ptr noundef %x221, i64 noundef %238, i64 noundef -1)
  %239 = load i64, ptr %x198, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x222, ptr noundef %x223, i64 noundef %239, i64 noundef -1)
  %240 = load i64, ptr %x223, align 8
  %241 = load i64, ptr %x220, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext 0, i64 noundef %240, i64 noundef %241)
  %242 = load i8, ptr %x225, align 1
  %243 = load i64, ptr %x221, align 8
  %244 = load i64, ptr %x218, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %242, i64 noundef %243, i64 noundef %244)
  %245 = load i8, ptr %x227, align 1
  %246 = load i64, ptr %x219, align 8
  %247 = load i64, ptr %x216, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %245, i64 noundef %246, i64 noundef %247)
  %248 = load i8, ptr %x229, align 1
  %249 = load i64, ptr %x217, align 8
  %250 = load i64, ptr %x214, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %248, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x231, align 1
  %252 = load i64, ptr %x215, align 8
  %253 = load i64, ptr %x212, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %251, i64 noundef %252, i64 noundef %253)
  %254 = load i8, ptr %x233, align 1
  %255 = load i64, ptr %x213, align 8
  %256 = load i64, ptr %x210, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %254, i64 noundef %255, i64 noundef %256)
  %257 = load i64, ptr %x198, align 8
  %258 = load i64, ptr %x222, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext 0, i64 noundef %257, i64 noundef %258)
  %259 = load i8, ptr %x237, align 1
  %260 = load i64, ptr %x200, align 8
  %261 = load i64, ptr %x224, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %259, i64 noundef %260, i64 noundef %261)
  %262 = load i8, ptr %x239, align 1
  %263 = load i64, ptr %x202, align 8
  %264 = load i64, ptr %x226, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %262, i64 noundef %263, i64 noundef %264)
  %265 = load i8, ptr %x241, align 1
  %266 = load i64, ptr %x204, align 8
  %267 = load i64, ptr %x228, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %265, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x243, align 1
  %269 = load i64, ptr %x206, align 8
  %270 = load i64, ptr %x230, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i8, ptr %x245, align 1
  %272 = load i64, ptr %x208, align 8
  %273 = load i64, ptr %x232, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %271, i64 noundef %272, i64 noundef %273)
  %274 = load i8, ptr %x247, align 1
  %275 = load i8, ptr %x209, align 1
  %conv21 = zext i8 %275 to i64
  %276 = load i8, ptr %x197, align 1
  %conv22 = zext i8 %276 to i64
  %277 = load i8, ptr %x183, align 1
  %conv23 = zext i8 %277 to i64
  %278 = load i64, ptr %x159, align 8
  %add24 = add i64 %conv23, %278
  %add25 = add i64 %conv22, %add24
  %add26 = add i64 %conv21, %add25
  %279 = load i64, ptr %x234, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %274, i64 noundef %add26, i64 noundef %279)
  %280 = load i64, ptr %x238, align 8
  %281 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %281, i64 5
  %282 = load i64, ptr %arrayidx27, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext 0, i64 noundef %280, i64 noundef %282)
  %283 = load i8, ptr %x251, align 1
  %284 = load i64, ptr %x240, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %283, i64 noundef %284, i64 noundef 0)
  %285 = load i8, ptr %x253, align 1
  %286 = load i64, ptr %x242, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %285, i64 noundef %286, i64 noundef 0)
  %287 = load i8, ptr %x255, align 1
  %288 = load i64, ptr %x244, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %287, i64 noundef %288, i64 noundef 0)
  %289 = load i8, ptr %x257, align 1
  %290 = load i64, ptr %x246, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %289, i64 noundef %290, i64 noundef 0)
  %291 = load i8, ptr %x259, align 1
  %292 = load i64, ptr %x248, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %291, i64 noundef %292, i64 noundef 0)
  %293 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %293, i64 noundef 620258357900100)
  %294 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x264, ptr noundef %x265, i64 noundef %294, i64 noundef 7853257225132122198)
  %295 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x266, ptr noundef %x267, i64 noundef %295, i64 noundef 8918917783347572387)
  %296 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x268, ptr noundef %x269, i64 noundef %296, i64 noundef -161717841442111489)
  %297 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x270, ptr noundef %x271, i64 noundef %297, i64 noundef -1)
  %298 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x272, ptr noundef %x273, i64 noundef %298, i64 noundef -1)
  %299 = load i64, ptr %x250, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x274, ptr noundef %x275, i64 noundef %299, i64 noundef -1)
  %300 = load i64, ptr %x275, align 8
  %301 = load i64, ptr %x272, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext 0, i64 noundef %300, i64 noundef %301)
  %302 = load i8, ptr %x277, align 1
  %303 = load i64, ptr %x273, align 8
  %304 = load i64, ptr %x270, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %302, i64 noundef %303, i64 noundef %304)
  %305 = load i8, ptr %x279, align 1
  %306 = load i64, ptr %x271, align 8
  %307 = load i64, ptr %x268, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %305, i64 noundef %306, i64 noundef %307)
  %308 = load i8, ptr %x281, align 1
  %309 = load i64, ptr %x269, align 8
  %310 = load i64, ptr %x266, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x283, align 1
  %312 = load i64, ptr %x267, align 8
  %313 = load i64, ptr %x264, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x285, align 1
  %315 = load i64, ptr %x265, align 8
  %316 = load i64, ptr %x262, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %314, i64 noundef %315, i64 noundef %316)
  %317 = load i64, ptr %x250, align 8
  %318 = load i64, ptr %x274, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext 0, i64 noundef %317, i64 noundef %318)
  %319 = load i8, ptr %x289, align 1
  %320 = load i64, ptr %x252, align 8
  %321 = load i64, ptr %x276, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %319, i64 noundef %320, i64 noundef %321)
  %322 = load i8, ptr %x291, align 1
  %323 = load i64, ptr %x254, align 8
  %324 = load i64, ptr %x278, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %322, i64 noundef %323, i64 noundef %324)
  %325 = load i8, ptr %x293, align 1
  %326 = load i64, ptr %x256, align 8
  %327 = load i64, ptr %x280, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %325, i64 noundef %326, i64 noundef %327)
  %328 = load i8, ptr %x295, align 1
  %329 = load i64, ptr %x258, align 8
  %330 = load i64, ptr %x282, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %328, i64 noundef %329, i64 noundef %330)
  %331 = load i8, ptr %x297, align 1
  %332 = load i64, ptr %x260, align 8
  %333 = load i64, ptr %x284, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %331, i64 noundef %332, i64 noundef %333)
  %334 = load i8, ptr %x299, align 1
  %335 = load i8, ptr %x261, align 1
  %conv28 = zext i8 %335 to i64
  %336 = load i8, ptr %x249, align 1
  %conv29 = zext i8 %336 to i64
  %337 = load i8, ptr %x235, align 1
  %conv30 = zext i8 %337 to i64
  %338 = load i64, ptr %x211, align 8
  %add31 = add i64 %conv30, %338
  %add32 = add i64 %conv29, %add31
  %add33 = add i64 %conv28, %add32
  %339 = load i64, ptr %x286, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %334, i64 noundef %add33, i64 noundef %339)
  %340 = load i64, ptr %x290, align 8
  %341 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %341, i64 6
  %342 = load i64, ptr %arrayidx34, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext 0, i64 noundef %340, i64 noundef %342)
  %343 = load i8, ptr %x303, align 1
  %344 = load i64, ptr %x292, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %343, i64 noundef %344, i64 noundef 0)
  %345 = load i8, ptr %x305, align 1
  %346 = load i64, ptr %x294, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext %345, i64 noundef %346, i64 noundef 0)
  %347 = load i8, ptr %x307, align 1
  %348 = load i64, ptr %x296, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %347, i64 noundef %348, i64 noundef 0)
  %349 = load i8, ptr %x309, align 1
  %350 = load i64, ptr %x298, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %349, i64 noundef %350, i64 noundef 0)
  %351 = load i8, ptr %x311, align 1
  %352 = load i64, ptr %x300, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %351, i64 noundef %352, i64 noundef 0)
  %353 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x314, ptr noundef %x315, i64 noundef %353, i64 noundef 620258357900100)
  %354 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x316, ptr noundef %x317, i64 noundef %354, i64 noundef 7853257225132122198)
  %355 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x318, ptr noundef %x319, i64 noundef %355, i64 noundef 8918917783347572387)
  %356 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x320, ptr noundef %x321, i64 noundef %356, i64 noundef -161717841442111489)
  %357 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x322, ptr noundef %x323, i64 noundef %357, i64 noundef -1)
  %358 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x324, ptr noundef %x325, i64 noundef %358, i64 noundef -1)
  %359 = load i64, ptr %x302, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x326, ptr noundef %x327, i64 noundef %359, i64 noundef -1)
  %360 = load i64, ptr %x327, align 8
  %361 = load i64, ptr %x324, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext 0, i64 noundef %360, i64 noundef %361)
  %362 = load i8, ptr %x329, align 1
  %363 = load i64, ptr %x325, align 8
  %364 = load i64, ptr %x322, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %362, i64 noundef %363, i64 noundef %364)
  %365 = load i8, ptr %x331, align 1
  %366 = load i64, ptr %x323, align 8
  %367 = load i64, ptr %x320, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %365, i64 noundef %366, i64 noundef %367)
  %368 = load i8, ptr %x333, align 1
  %369 = load i64, ptr %x321, align 8
  %370 = load i64, ptr %x318, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %368, i64 noundef %369, i64 noundef %370)
  %371 = load i8, ptr %x335, align 1
  %372 = load i64, ptr %x319, align 8
  %373 = load i64, ptr %x316, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %371, i64 noundef %372, i64 noundef %373)
  %374 = load i8, ptr %x337, align 1
  %375 = load i64, ptr %x317, align 8
  %376 = load i64, ptr %x314, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %374, i64 noundef %375, i64 noundef %376)
  %377 = load i64, ptr %x302, align 8
  %378 = load i64, ptr %x326, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext 0, i64 noundef %377, i64 noundef %378)
  %379 = load i8, ptr %x341, align 1
  %380 = load i64, ptr %x304, align 8
  %381 = load i64, ptr %x328, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x342, ptr noundef %x343, i8 noundef zeroext %379, i64 noundef %380, i64 noundef %381)
  %382 = load i8, ptr %x343, align 1
  %383 = load i64, ptr %x306, align 8
  %384 = load i64, ptr %x330, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x344, ptr noundef %x345, i8 noundef zeroext %382, i64 noundef %383, i64 noundef %384)
  %385 = load i8, ptr %x345, align 1
  %386 = load i64, ptr %x308, align 8
  %387 = load i64, ptr %x332, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x346, ptr noundef %x347, i8 noundef zeroext %385, i64 noundef %386, i64 noundef %387)
  %388 = load i8, ptr %x347, align 1
  %389 = load i64, ptr %x310, align 8
  %390 = load i64, ptr %x334, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext %388, i64 noundef %389, i64 noundef %390)
  %391 = load i8, ptr %x349, align 1
  %392 = load i64, ptr %x312, align 8
  %393 = load i64, ptr %x336, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %391, i64 noundef %392, i64 noundef %393)
  %394 = load i8, ptr %x351, align 1
  %395 = load i8, ptr %x313, align 1
  %conv35 = zext i8 %395 to i64
  %396 = load i8, ptr %x301, align 1
  %conv36 = zext i8 %396 to i64
  %397 = load i8, ptr %x287, align 1
  %conv37 = zext i8 %397 to i64
  %398 = load i64, ptr %x263, align 8
  %add38 = add i64 %conv37, %398
  %add39 = add i64 %conv36, %add38
  %add40 = add i64 %conv35, %add39
  %399 = load i64, ptr %x338, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %394, i64 noundef %add40, i64 noundef %399)
  %400 = load i8, ptr %x353, align 1
  %conv41 = zext i8 %400 to i64
  %401 = load i8, ptr %x339, align 1
  %conv42 = zext i8 %401 to i64
  %402 = load i64, ptr %x315, align 8
  %add43 = add i64 %conv42, %402
  %add44 = add i64 %conv41, %add43
  store i64 %add44, ptr %x354, align 8
  %403 = load i64, ptr %x342, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext 0, i64 noundef %403, i64 noundef -1)
  %404 = load i8, ptr %x356, align 1
  %405 = load i64, ptr %x344, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %404, i64 noundef %405, i64 noundef -1)
  %406 = load i8, ptr %x358, align 1
  %407 = load i64, ptr %x346, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %406, i64 noundef %407, i64 noundef -1)
  %408 = load i8, ptr %x360, align 1
  %409 = load i64, ptr %x348, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %408, i64 noundef %409, i64 noundef -161717841442111489)
  %410 = load i8, ptr %x362, align 1
  %411 = load i64, ptr %x350, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %410, i64 noundef %411, i64 noundef 8918917783347572387)
  %412 = load i8, ptr %x364, align 1
  %413 = load i64, ptr %x352, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %412, i64 noundef %413, i64 noundef 7853257225132122198)
  %414 = load i8, ptr %x366, align 1
  %415 = load i64, ptr %x354, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %414, i64 noundef %415, i64 noundef 620258357900100)
  %416 = load i8, ptr %x368, align 1
  call void @fiat_p434_subborrowx_u64(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %416, i64 noundef 0, i64 noundef 0)
  %417 = load i8, ptr %x370, align 1
  %418 = load i64, ptr %x355, align 8
  %419 = load i64, ptr %x342, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x371, i8 noundef zeroext %417, i64 noundef %418, i64 noundef %419)
  %420 = load i8, ptr %x370, align 1
  %421 = load i64, ptr %x357, align 8
  %422 = load i64, ptr %x344, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x372, i8 noundef zeroext %420, i64 noundef %421, i64 noundef %422)
  %423 = load i8, ptr %x370, align 1
  %424 = load i64, ptr %x359, align 8
  %425 = load i64, ptr %x346, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x373, i8 noundef zeroext %423, i64 noundef %424, i64 noundef %425)
  %426 = load i8, ptr %x370, align 1
  %427 = load i64, ptr %x361, align 8
  %428 = load i64, ptr %x348, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x374, i8 noundef zeroext %426, i64 noundef %427, i64 noundef %428)
  %429 = load i8, ptr %x370, align 1
  %430 = load i64, ptr %x363, align 8
  %431 = load i64, ptr %x350, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x375, i8 noundef zeroext %429, i64 noundef %430, i64 noundef %431)
  %432 = load i8, ptr %x370, align 1
  %433 = load i64, ptr %x365, align 8
  %434 = load i64, ptr %x352, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x376, i8 noundef zeroext %432, i64 noundef %433, i64 noundef %434)
  %435 = load i8, ptr %x370, align 1
  %436 = load i64, ptr %x367, align 8
  %437 = load i64, ptr %x354, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x377, i8 noundef zeroext %435, i64 noundef %436, i64 noundef %437)
  %438 = load i64, ptr %x371, align 8
  %439 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %439, i64 0
  store i64 %438, ptr %arrayidx45, align 8
  %440 = load i64, ptr %x372, align 8
  %441 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %441, i64 1
  store i64 %440, ptr %arrayidx46, align 8
  %442 = load i64, ptr %x373, align 8
  %443 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %443, i64 2
  store i64 %442, ptr %arrayidx47, align 8
  %444 = load i64, ptr %x374, align 8
  %445 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %445, i64 3
  store i64 %444, ptr %arrayidx48, align 8
  %446 = load i64, ptr %x375, align 8
  %447 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %447, i64 4
  store i64 %446, ptr %arrayidx49, align 8
  %448 = load i64, ptr %x376, align 8
  %449 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %449, i64 5
  store i64 %448, ptr %arrayidx50, align 8
  %450 = load i64, ptr %x377, align 8
  %451 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %451, i64 6
  store i64 %450, ptr %arrayidx51, align 8
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
