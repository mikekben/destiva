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
define dso_local void @fiat_p384_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x53 = alloca i64, align 8
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
  %x116 = alloca i64, align 8
  %x117 = alloca i8, align 1
  %x118 = alloca i64, align 8
  %x119 = alloca i8, align 1
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
  %x153 = alloca i64, align 8
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
  %x167 = alloca i8, align 1
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
  %x195 = alloca i8, align 1
  %x196 = alloca i64, align 8
  %x197 = alloca i8, align 1
  %x198 = alloca i64, align 8
  %x199 = alloca i8, align 1
  %x200 = alloca i64, align 8
  %x201 = alloca i8, align 1
  %x202 = alloca i64, align 8
  %x203 = alloca i64, align 8
  %x204 = alloca i64, align 8
  %x205 = alloca i64, align 8
  %x206 = alloca i64, align 8
  %x207 = alloca i64, align 8
  %x208 = alloca i64, align 8
  %x209 = alloca i64, align 8
  %x210 = alloca i64, align 8
  %x211 = alloca i64, align 8
  %x212 = alloca i64, align 8
  %x213 = alloca i64, align 8
  %x214 = alloca i64, align 8
  %x215 = alloca i64, align 8
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
  %x305 = alloca i64, align 8
  %x306 = alloca i64, align 8
  %x307 = alloca i64, align 8
  %x308 = alloca i64, align 8
  %x309 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef 7986114184663260229)
  %3 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef -1)
  %4 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef -1)
  %5 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef -1)
  %6 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x10, ptr noundef %x11, i64 noundef %6, i64 noundef -4079331616924160545)
  %7 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x12, ptr noundef %x13, i64 noundef %7, i64 noundef 6348401684107011962)
  %8 = load i64, ptr %x2, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x14, ptr noundef %x15, i64 noundef %8, i64 noundef -1374695839762142861)
  %9 = load i64, ptr %x15, align 8
  %10 = load i64, ptr %x12, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %9, i64 noundef %10)
  %11 = load i8, ptr %x17, align 1
  %12 = load i64, ptr %x13, align 8
  %13 = load i64, ptr %x10, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %11, i64 noundef %12, i64 noundef %13)
  %14 = load i8, ptr %x19, align 1
  %15 = load i64, ptr %x11, align 8
  %16 = load i64, ptr %x8, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x21, align 1
  %18 = load i64, ptr %x9, align 8
  %19 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %19)
  %20 = load i8, ptr %x23, align 1
  %21 = load i64, ptr %x7, align 8
  %22 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %20, i64 noundef %21, i64 noundef %22)
  %23 = load i64, ptr %x1, align 8
  %24 = load i64, ptr %x14, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext 0, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x27, align 1
  %26 = load i64, ptr %x16, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %25, i64 noundef 0, i64 noundef %26)
  %27 = load i8, ptr %x29, align 1
  %28 = load i64, ptr %x18, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %27, i64 noundef 0, i64 noundef %28)
  %29 = load i8, ptr %x31, align 1
  %30 = load i64, ptr %x20, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %29, i64 noundef 0, i64 noundef %30)
  %31 = load i8, ptr %x33, align 1
  %32 = load i64, ptr %x22, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %31, i64 noundef 0, i64 noundef %32)
  %33 = load i8, ptr %x35, align 1
  %34 = load i64, ptr %x24, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %33, i64 noundef 0, i64 noundef %34)
  %35 = load i8, ptr %x37, align 1
  %36 = load i8, ptr %x25, align 1
  %conv = zext i8 %36 to i64
  %37 = load i64, ptr %x5, align 8
  %add = add i64 %conv, %37
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %35, i64 noundef 0, i64 noundef %add)
  %38 = load i64, ptr %x28, align 8
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %39, i64 1
  %40 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext 0, i64 noundef %38, i64 noundef %40)
  %41 = load i8, ptr %x41, align 1
  %42 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %41, i64 noundef %42, i64 noundef 0)
  %43 = load i8, ptr %x43, align 1
  %44 = load i64, ptr %x32, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %43, i64 noundef %44, i64 noundef 0)
  %45 = load i8, ptr %x45, align 1
  %46 = load i64, ptr %x34, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %45, i64 noundef %46, i64 noundef 0)
  %47 = load i8, ptr %x47, align 1
  %48 = load i64, ptr %x36, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %47, i64 noundef %48, i64 noundef 0)
  %49 = load i8, ptr %x49, align 1
  %50 = load i64, ptr %x38, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %49, i64 noundef %50, i64 noundef 0)
  %51 = load i64, ptr %x40, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x52, ptr noundef %x53, i64 noundef %51, i64 noundef 7986114184663260229)
  %52 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x54, ptr noundef %x55, i64 noundef %52, i64 noundef -1)
  %53 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x56, ptr noundef %x57, i64 noundef %53, i64 noundef -1)
  %54 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x58, ptr noundef %x59, i64 noundef %54, i64 noundef -1)
  %55 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x60, ptr noundef %x61, i64 noundef %55, i64 noundef -4079331616924160545)
  %56 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x62, ptr noundef %x63, i64 noundef %56, i64 noundef 6348401684107011962)
  %57 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x64, ptr noundef %x65, i64 noundef %57, i64 noundef -1374695839762142861)
  %58 = load i64, ptr %x65, align 8
  %59 = load i64, ptr %x62, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext 0, i64 noundef %58, i64 noundef %59)
  %60 = load i8, ptr %x67, align 1
  %61 = load i64, ptr %x63, align 8
  %62 = load i64, ptr %x60, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %60, i64 noundef %61, i64 noundef %62)
  %63 = load i8, ptr %x69, align 1
  %64 = load i64, ptr %x61, align 8
  %65 = load i64, ptr %x58, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %63, i64 noundef %64, i64 noundef %65)
  %66 = load i8, ptr %x71, align 1
  %67 = load i64, ptr %x59, align 8
  %68 = load i64, ptr %x56, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %66, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x73, align 1
  %70 = load i64, ptr %x57, align 8
  %71 = load i64, ptr %x54, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i64, ptr %x40, align 8
  %73 = load i64, ptr %x64, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x77, align 1
  %75 = load i64, ptr %x42, align 8
  %76 = load i64, ptr %x66, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x79, align 1
  %78 = load i64, ptr %x44, align 8
  %79 = load i64, ptr %x68, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x81, align 1
  %81 = load i64, ptr %x46, align 8
  %82 = load i64, ptr %x70, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x83, align 1
  %84 = load i64, ptr %x48, align 8
  %85 = load i64, ptr %x72, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %83, i64 noundef %84, i64 noundef %85)
  %86 = load i8, ptr %x85, align 1
  %87 = load i64, ptr %x50, align 8
  %88 = load i64, ptr %x74, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %86, i64 noundef %87, i64 noundef %88)
  %89 = load i8, ptr %x87, align 1
  %90 = load i8, ptr %x51, align 1
  %conv2 = zext i8 %90 to i64
  %91 = load i8, ptr %x39, align 1
  %conv3 = zext i8 %91 to i64
  %add4 = add i64 %conv2, %conv3
  %92 = load i8, ptr %x75, align 1
  %conv5 = zext i8 %92 to i64
  %93 = load i64, ptr %x55, align 8
  %add6 = add i64 %conv5, %93
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %89, i64 noundef %add4, i64 noundef %add6)
  %94 = load i64, ptr %x78, align 8
  %95 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %95, i64 2
  %96 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext 0, i64 noundef %94, i64 noundef %96)
  %97 = load i8, ptr %x91, align 1
  %98 = load i64, ptr %x80, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %97, i64 noundef %98, i64 noundef 0)
  %99 = load i8, ptr %x93, align 1
  %100 = load i64, ptr %x82, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %99, i64 noundef %100, i64 noundef 0)
  %101 = load i8, ptr %x95, align 1
  %102 = load i64, ptr %x84, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %101, i64 noundef %102, i64 noundef 0)
  %103 = load i8, ptr %x97, align 1
  %104 = load i64, ptr %x86, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %103, i64 noundef %104, i64 noundef 0)
  %105 = load i8, ptr %x99, align 1
  %106 = load i64, ptr %x88, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %105, i64 noundef %106, i64 noundef 0)
  %107 = load i64, ptr %x90, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x102, ptr noundef %x103, i64 noundef %107, i64 noundef 7986114184663260229)
  %108 = load i64, ptr %x102, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x104, ptr noundef %x105, i64 noundef %108, i64 noundef -1)
  %109 = load i64, ptr %x102, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x106, ptr noundef %x107, i64 noundef %109, i64 noundef -1)
  %110 = load i64, ptr %x102, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x108, ptr noundef %x109, i64 noundef %110, i64 noundef -1)
  %111 = load i64, ptr %x102, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x110, ptr noundef %x111, i64 noundef %111, i64 noundef -4079331616924160545)
  %112 = load i64, ptr %x102, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x112, ptr noundef %x113, i64 noundef %112, i64 noundef 6348401684107011962)
  %113 = load i64, ptr %x102, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x114, ptr noundef %x115, i64 noundef %113, i64 noundef -1374695839762142861)
  %114 = load i64, ptr %x115, align 8
  %115 = load i64, ptr %x112, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext 0, i64 noundef %114, i64 noundef %115)
  %116 = load i8, ptr %x117, align 1
  %117 = load i64, ptr %x113, align 8
  %118 = load i64, ptr %x110, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %116, i64 noundef %117, i64 noundef %118)
  %119 = load i8, ptr %x119, align 1
  %120 = load i64, ptr %x111, align 8
  %121 = load i64, ptr %x108, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %119, i64 noundef %120, i64 noundef %121)
  %122 = load i8, ptr %x121, align 1
  %123 = load i64, ptr %x109, align 8
  %124 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %122, i64 noundef %123, i64 noundef %124)
  %125 = load i8, ptr %x123, align 1
  %126 = load i64, ptr %x107, align 8
  %127 = load i64, ptr %x104, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %127)
  %128 = load i64, ptr %x90, align 8
  %129 = load i64, ptr %x114, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext 0, i64 noundef %128, i64 noundef %129)
  %130 = load i8, ptr %x127, align 1
  %131 = load i64, ptr %x92, align 8
  %132 = load i64, ptr %x116, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %130, i64 noundef %131, i64 noundef %132)
  %133 = load i8, ptr %x129, align 1
  %134 = load i64, ptr %x94, align 8
  %135 = load i64, ptr %x118, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %133, i64 noundef %134, i64 noundef %135)
  %136 = load i8, ptr %x131, align 1
  %137 = load i64, ptr %x96, align 8
  %138 = load i64, ptr %x120, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %136, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x133, align 1
  %140 = load i64, ptr %x98, align 8
  %141 = load i64, ptr %x122, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x135, align 1
  %143 = load i64, ptr %x100, align 8
  %144 = load i64, ptr %x124, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x137, align 1
  %146 = load i8, ptr %x101, align 1
  %conv8 = zext i8 %146 to i64
  %147 = load i8, ptr %x89, align 1
  %conv9 = zext i8 %147 to i64
  %add10 = add i64 %conv8, %conv9
  %148 = load i8, ptr %x125, align 1
  %conv11 = zext i8 %148 to i64
  %149 = load i64, ptr %x105, align 8
  %add12 = add i64 %conv11, %149
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %145, i64 noundef %add10, i64 noundef %add12)
  %150 = load i64, ptr %x128, align 8
  %151 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %151, i64 3
  %152 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext 0, i64 noundef %150, i64 noundef %152)
  %153 = load i8, ptr %x141, align 1
  %154 = load i64, ptr %x130, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %153, i64 noundef %154, i64 noundef 0)
  %155 = load i8, ptr %x143, align 1
  %156 = load i64, ptr %x132, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %155, i64 noundef %156, i64 noundef 0)
  %157 = load i8, ptr %x145, align 1
  %158 = load i64, ptr %x134, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %157, i64 noundef %158, i64 noundef 0)
  %159 = load i8, ptr %x147, align 1
  %160 = load i64, ptr %x136, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %159, i64 noundef %160, i64 noundef 0)
  %161 = load i8, ptr %x149, align 1
  %162 = load i64, ptr %x138, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %161, i64 noundef %162, i64 noundef 0)
  %163 = load i64, ptr %x140, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x152, ptr noundef %x153, i64 noundef %163, i64 noundef 7986114184663260229)
  %164 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x154, ptr noundef %x155, i64 noundef %164, i64 noundef -1)
  %165 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x156, ptr noundef %x157, i64 noundef %165, i64 noundef -1)
  %166 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x158, ptr noundef %x159, i64 noundef %166, i64 noundef -1)
  %167 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x160, ptr noundef %x161, i64 noundef %167, i64 noundef -4079331616924160545)
  %168 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x162, ptr noundef %x163, i64 noundef %168, i64 noundef 6348401684107011962)
  %169 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x164, ptr noundef %x165, i64 noundef %169, i64 noundef -1374695839762142861)
  %170 = load i64, ptr %x165, align 8
  %171 = load i64, ptr %x162, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext 0, i64 noundef %170, i64 noundef %171)
  %172 = load i8, ptr %x167, align 1
  %173 = load i64, ptr %x163, align 8
  %174 = load i64, ptr %x160, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %172, i64 noundef %173, i64 noundef %174)
  %175 = load i8, ptr %x169, align 1
  %176 = load i64, ptr %x161, align 8
  %177 = load i64, ptr %x158, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %175, i64 noundef %176, i64 noundef %177)
  %178 = load i8, ptr %x171, align 1
  %179 = load i64, ptr %x159, align 8
  %180 = load i64, ptr %x156, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %178, i64 noundef %179, i64 noundef %180)
  %181 = load i8, ptr %x173, align 1
  %182 = load i64, ptr %x157, align 8
  %183 = load i64, ptr %x154, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %181, i64 noundef %182, i64 noundef %183)
  %184 = load i64, ptr %x140, align 8
  %185 = load i64, ptr %x164, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext 0, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x177, align 1
  %187 = load i64, ptr %x142, align 8
  %188 = load i64, ptr %x166, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x179, align 1
  %190 = load i64, ptr %x144, align 8
  %191 = load i64, ptr %x168, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x181, align 1
  %193 = load i64, ptr %x146, align 8
  %194 = load i64, ptr %x170, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %192, i64 noundef %193, i64 noundef %194)
  %195 = load i8, ptr %x183, align 1
  %196 = load i64, ptr %x148, align 8
  %197 = load i64, ptr %x172, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %195, i64 noundef %196, i64 noundef %197)
  %198 = load i8, ptr %x185, align 1
  %199 = load i64, ptr %x150, align 8
  %200 = load i64, ptr %x174, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %198, i64 noundef %199, i64 noundef %200)
  %201 = load i8, ptr %x187, align 1
  %202 = load i8, ptr %x151, align 1
  %conv14 = zext i8 %202 to i64
  %203 = load i8, ptr %x139, align 1
  %conv15 = zext i8 %203 to i64
  %add16 = add i64 %conv14, %conv15
  %204 = load i8, ptr %x175, align 1
  %conv17 = zext i8 %204 to i64
  %205 = load i64, ptr %x155, align 8
  %add18 = add i64 %conv17, %205
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %201, i64 noundef %add16, i64 noundef %add18)
  %206 = load i64, ptr %x178, align 8
  %207 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %207, i64 4
  %208 = load i64, ptr %arrayidx19, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext 0, i64 noundef %206, i64 noundef %208)
  %209 = load i8, ptr %x191, align 1
  %210 = load i64, ptr %x180, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %209, i64 noundef %210, i64 noundef 0)
  %211 = load i8, ptr %x193, align 1
  %212 = load i64, ptr %x182, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %211, i64 noundef %212, i64 noundef 0)
  %213 = load i8, ptr %x195, align 1
  %214 = load i64, ptr %x184, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %213, i64 noundef %214, i64 noundef 0)
  %215 = load i8, ptr %x197, align 1
  %216 = load i64, ptr %x186, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %215, i64 noundef %216, i64 noundef 0)
  %217 = load i8, ptr %x199, align 1
  %218 = load i64, ptr %x188, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %217, i64 noundef %218, i64 noundef 0)
  %219 = load i64, ptr %x190, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x202, ptr noundef %x203, i64 noundef %219, i64 noundef 7986114184663260229)
  %220 = load i64, ptr %x202, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x204, ptr noundef %x205, i64 noundef %220, i64 noundef -1)
  %221 = load i64, ptr %x202, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x206, ptr noundef %x207, i64 noundef %221, i64 noundef -1)
  %222 = load i64, ptr %x202, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x208, ptr noundef %x209, i64 noundef %222, i64 noundef -1)
  %223 = load i64, ptr %x202, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x210, ptr noundef %x211, i64 noundef %223, i64 noundef -4079331616924160545)
  %224 = load i64, ptr %x202, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x212, ptr noundef %x213, i64 noundef %224, i64 noundef 6348401684107011962)
  %225 = load i64, ptr %x202, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x214, ptr noundef %x215, i64 noundef %225, i64 noundef -1374695839762142861)
  %226 = load i64, ptr %x215, align 8
  %227 = load i64, ptr %x212, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext 0, i64 noundef %226, i64 noundef %227)
  %228 = load i8, ptr %x217, align 1
  %229 = load i64, ptr %x213, align 8
  %230 = load i64, ptr %x210, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %228, i64 noundef %229, i64 noundef %230)
  %231 = load i8, ptr %x219, align 1
  %232 = load i64, ptr %x211, align 8
  %233 = load i64, ptr %x208, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %231, i64 noundef %232, i64 noundef %233)
  %234 = load i8, ptr %x221, align 1
  %235 = load i64, ptr %x209, align 8
  %236 = load i64, ptr %x206, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %234, i64 noundef %235, i64 noundef %236)
  %237 = load i8, ptr %x223, align 1
  %238 = load i64, ptr %x207, align 8
  %239 = load i64, ptr %x204, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %237, i64 noundef %238, i64 noundef %239)
  %240 = load i64, ptr %x190, align 8
  %241 = load i64, ptr %x214, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext 0, i64 noundef %240, i64 noundef %241)
  %242 = load i8, ptr %x227, align 1
  %243 = load i64, ptr %x192, align 8
  %244 = load i64, ptr %x216, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %242, i64 noundef %243, i64 noundef %244)
  %245 = load i8, ptr %x229, align 1
  %246 = load i64, ptr %x194, align 8
  %247 = load i64, ptr %x218, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %245, i64 noundef %246, i64 noundef %247)
  %248 = load i8, ptr %x231, align 1
  %249 = load i64, ptr %x196, align 8
  %250 = load i64, ptr %x220, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %248, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x233, align 1
  %252 = load i64, ptr %x198, align 8
  %253 = load i64, ptr %x222, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %251, i64 noundef %252, i64 noundef %253)
  %254 = load i8, ptr %x235, align 1
  %255 = load i64, ptr %x200, align 8
  %256 = load i64, ptr %x224, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %254, i64 noundef %255, i64 noundef %256)
  %257 = load i8, ptr %x237, align 1
  %258 = load i8, ptr %x201, align 1
  %conv20 = zext i8 %258 to i64
  %259 = load i8, ptr %x189, align 1
  %conv21 = zext i8 %259 to i64
  %add22 = add i64 %conv20, %conv21
  %260 = load i8, ptr %x225, align 1
  %conv23 = zext i8 %260 to i64
  %261 = load i64, ptr %x205, align 8
  %add24 = add i64 %conv23, %261
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %257, i64 noundef %add22, i64 noundef %add24)
  %262 = load i64, ptr %x228, align 8
  %263 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %263, i64 5
  %264 = load i64, ptr %arrayidx25, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext 0, i64 noundef %262, i64 noundef %264)
  %265 = load i8, ptr %x241, align 1
  %266 = load i64, ptr %x230, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %265, i64 noundef %266, i64 noundef 0)
  %267 = load i8, ptr %x243, align 1
  %268 = load i64, ptr %x232, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %267, i64 noundef %268, i64 noundef 0)
  %269 = load i8, ptr %x245, align 1
  %270 = load i64, ptr %x234, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %269, i64 noundef %270, i64 noundef 0)
  %271 = load i8, ptr %x247, align 1
  %272 = load i64, ptr %x236, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %271, i64 noundef %272, i64 noundef 0)
  %273 = load i8, ptr %x249, align 1
  %274 = load i64, ptr %x238, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %273, i64 noundef %274, i64 noundef 0)
  %275 = load i64, ptr %x240, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x252, ptr noundef %x253, i64 noundef %275, i64 noundef 7986114184663260229)
  %276 = load i64, ptr %x252, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x254, ptr noundef %x255, i64 noundef %276, i64 noundef -1)
  %277 = load i64, ptr %x252, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x256, ptr noundef %x257, i64 noundef %277, i64 noundef -1)
  %278 = load i64, ptr %x252, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x258, ptr noundef %x259, i64 noundef %278, i64 noundef -1)
  %279 = load i64, ptr %x252, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x260, ptr noundef %x261, i64 noundef %279, i64 noundef -4079331616924160545)
  %280 = load i64, ptr %x252, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %280, i64 noundef 6348401684107011962)
  %281 = load i64, ptr %x252, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x264, ptr noundef %x265, i64 noundef %281, i64 noundef -1374695839762142861)
  %282 = load i64, ptr %x265, align 8
  %283 = load i64, ptr %x262, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext 0, i64 noundef %282, i64 noundef %283)
  %284 = load i8, ptr %x267, align 1
  %285 = load i64, ptr %x263, align 8
  %286 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %284, i64 noundef %285, i64 noundef %286)
  %287 = load i8, ptr %x269, align 1
  %288 = load i64, ptr %x261, align 8
  %289 = load i64, ptr %x258, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %287, i64 noundef %288, i64 noundef %289)
  %290 = load i8, ptr %x271, align 1
  %291 = load i64, ptr %x259, align 8
  %292 = load i64, ptr %x256, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %290, i64 noundef %291, i64 noundef %292)
  %293 = load i8, ptr %x273, align 1
  %294 = load i64, ptr %x257, align 8
  %295 = load i64, ptr %x254, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %293, i64 noundef %294, i64 noundef %295)
  %296 = load i64, ptr %x240, align 8
  %297 = load i64, ptr %x264, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext 0, i64 noundef %296, i64 noundef %297)
  %298 = load i8, ptr %x277, align 1
  %299 = load i64, ptr %x242, align 8
  %300 = load i64, ptr %x266, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %298, i64 noundef %299, i64 noundef %300)
  %301 = load i8, ptr %x279, align 1
  %302 = load i64, ptr %x244, align 8
  %303 = load i64, ptr %x268, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %301, i64 noundef %302, i64 noundef %303)
  %304 = load i8, ptr %x281, align 1
  %305 = load i64, ptr %x246, align 8
  %306 = load i64, ptr %x270, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %304, i64 noundef %305, i64 noundef %306)
  %307 = load i8, ptr %x283, align 1
  %308 = load i64, ptr %x248, align 8
  %309 = load i64, ptr %x272, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %307, i64 noundef %308, i64 noundef %309)
  %310 = load i8, ptr %x285, align 1
  %311 = load i64, ptr %x250, align 8
  %312 = load i64, ptr %x274, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %310, i64 noundef %311, i64 noundef %312)
  %313 = load i8, ptr %x287, align 1
  %314 = load i8, ptr %x251, align 1
  %conv26 = zext i8 %314 to i64
  %315 = load i8, ptr %x239, align 1
  %conv27 = zext i8 %315 to i64
  %add28 = add i64 %conv26, %conv27
  %316 = load i8, ptr %x275, align 1
  %conv29 = zext i8 %316 to i64
  %317 = load i64, ptr %x255, align 8
  %add30 = add i64 %conv29, %317
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %313, i64 noundef %add28, i64 noundef %add30)
  %318 = load i64, ptr %x278, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext 0, i64 noundef %318, i64 noundef -1374695839762142861)
  %319 = load i8, ptr %x291, align 1
  %320 = load i64, ptr %x280, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %319, i64 noundef %320, i64 noundef 6348401684107011962)
  %321 = load i8, ptr %x293, align 1
  %322 = load i64, ptr %x282, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %321, i64 noundef %322, i64 noundef -4079331616924160545)
  %323 = load i8, ptr %x295, align 1
  %324 = load i64, ptr %x284, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext %323, i64 noundef %324, i64 noundef -1)
  %325 = load i8, ptr %x297, align 1
  %326 = load i64, ptr %x286, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %325, i64 noundef %326, i64 noundef -1)
  %327 = load i8, ptr %x299, align 1
  %328 = load i64, ptr %x288, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %327, i64 noundef %328, i64 noundef -1)
  %329 = load i8, ptr %x301, align 1
  %330 = load i8, ptr %x289, align 1
  %conv31 = zext i8 %330 to i64
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext %329, i64 noundef %conv31, i64 noundef 0)
  %331 = load i8, ptr %x303, align 1
  %332 = load i64, ptr %x290, align 8
  %333 = load i64, ptr %x278, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x304, i8 noundef zeroext %331, i64 noundef %332, i64 noundef %333)
  %334 = load i8, ptr %x303, align 1
  %335 = load i64, ptr %x292, align 8
  %336 = load i64, ptr %x280, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x305, i8 noundef zeroext %334, i64 noundef %335, i64 noundef %336)
  %337 = load i8, ptr %x303, align 1
  %338 = load i64, ptr %x294, align 8
  %339 = load i64, ptr %x282, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x306, i8 noundef zeroext %337, i64 noundef %338, i64 noundef %339)
  %340 = load i8, ptr %x303, align 1
  %341 = load i64, ptr %x296, align 8
  %342 = load i64, ptr %x284, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x307, i8 noundef zeroext %340, i64 noundef %341, i64 noundef %342)
  %343 = load i8, ptr %x303, align 1
  %344 = load i64, ptr %x298, align 8
  %345 = load i64, ptr %x286, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x308, i8 noundef zeroext %343, i64 noundef %344, i64 noundef %345)
  %346 = load i8, ptr %x303, align 1
  %347 = load i64, ptr %x300, align 8
  %348 = load i64, ptr %x288, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x309, i8 noundef zeroext %346, i64 noundef %347, i64 noundef %348)
  %349 = load i64, ptr %x304, align 8
  %350 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %350, i64 0
  store i64 %349, ptr %arrayidx32, align 8
  %351 = load i64, ptr %x305, align 8
  %352 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %352, i64 1
  store i64 %351, ptr %arrayidx33, align 8
  %353 = load i64, ptr %x306, align 8
  %354 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %354, i64 2
  store i64 %353, ptr %arrayidx34, align 8
  %355 = load i64, ptr %x307, align 8
  %356 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %356, i64 3
  store i64 %355, ptr %arrayidx35, align 8
  %357 = load i64, ptr %x308, align 8
  %358 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %358, i64 4
  store i64 %357, ptr %arrayidx36, align 8
  %359 = load i64, ptr %x309, align 8
  %360 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %360, i64 5
  store i64 %359, ptr %arrayidx37, align 8
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
