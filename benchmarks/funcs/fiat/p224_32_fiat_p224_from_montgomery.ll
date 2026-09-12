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
define dso_local void @fiat_p224_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x13 = alloca i8, align 1
  %x14 = alloca i32, align 4
  %x15 = alloca i8, align 1
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
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
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
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
  %x65 = alloca i32, align 4
  %x66 = alloca i32, align 4
  %x67 = alloca i32, align 4
  %x68 = alloca i32, align 4
  %x69 = alloca i32, align 4
  %x70 = alloca i32, align 4
  %x71 = alloca i32, align 4
  %x72 = alloca i32, align 4
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
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
  %x93 = alloca i8, align 1
  %x94 = alloca i32, align 4
  %x95 = alloca i8, align 1
  %x96 = alloca i32, align 4
  %x97 = alloca i8, align 1
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
  %x121 = alloca i8, align 1
  %x122 = alloca i32, align 4
  %x123 = alloca i8, align 1
  %x124 = alloca i32, align 4
  %x125 = alloca i8, align 1
  %x126 = alloca i32, align 4
  %x127 = alloca i8, align 1
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
  %x151 = alloca i8, align 1
  %x152 = alloca i32, align 4
  %x153 = alloca i8, align 1
  %x154 = alloca i32, align 4
  %x155 = alloca i8, align 1
  %x156 = alloca i32, align 4
  %x157 = alloca i32, align 4
  %x158 = alloca i32, align 4
  %x159 = alloca i32, align 4
  %x160 = alloca i32, align 4
  %x161 = alloca i32, align 4
  %x162 = alloca i32, align 4
  %x163 = alloca i32, align 4
  %x164 = alloca i32, align 4
  %x165 = alloca i32, align 4
  %x166 = alloca i32, align 4
  %x167 = alloca i8, align 1
  %x168 = alloca i32, align 4
  %x169 = alloca i8, align 1
  %x170 = alloca i32, align 4
  %x171 = alloca i8, align 1
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
  %x231 = alloca i8, align 1
  %x232 = alloca i32, align 4
  %x233 = alloca i8, align 1
  %x234 = alloca i32, align 4
  %x235 = alloca i8, align 1
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
  %x250 = alloca i32, align 4
  %x251 = alloca i32, align 4
  %x252 = alloca i32, align 4
  %x253 = alloca i32, align 4
  %x254 = alloca i32, align 4
  %x255 = alloca i32, align 4
  %x256 = alloca i32, align 4
  %x257 = alloca i32, align 4
  %x258 = alloca i32, align 4
  %x259 = alloca i8, align 1
  %x260 = alloca i32, align 4
  %x261 = alloca i8, align 1
  %x262 = alloca i32, align 4
  %x263 = alloca i8, align 1
  %x264 = alloca i32, align 4
  %x265 = alloca i8, align 1
  %x266 = alloca i32, align 4
  %x267 = alloca i8, align 1
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
  %x297 = alloca i32, align 4
  %x298 = alloca i32, align 4
  %x299 = alloca i32, align 4
  %x300 = alloca i32, align 4
  %x301 = alloca i32, align 4
  %x302 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef -1)
  %3 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -1)
  %4 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x2, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef -1)
  %7 = load i32, ptr %x11, align 4
  %8 = load i32, ptr %x8, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i32 noundef %7, i32 noundef %8)
  %9 = load i8, ptr %x13, align 1
  %10 = load i32, ptr %x9, align 4
  %11 = load i32, ptr %x6, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %9, i32 noundef %10, i32 noundef %11)
  %12 = load i8, ptr %x15, align 1
  %13 = load i32, ptr %x7, align 4
  %14 = load i32, ptr %x4, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %12, i32 noundef %13, i32 noundef %14)
  %15 = load i32, ptr %x1, align 4
  %16 = load i32, ptr %x2, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i32 noundef %15, i32 noundef %16)
  %17 = load i8, ptr %x19, align 1
  %conv = zext i8 %17 to i32
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %18, i64 1
  %19 = load i32, ptr %arrayidx1, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext 0, i32 noundef %conv, i32 noundef %19)
  %20 = load i32, ptr %x20, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x22, ptr noundef %x23, i32 noundef %20, i32 noundef -1)
  %21 = load i32, ptr %x22, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x24, ptr noundef %x25, i32 noundef %21, i32 noundef -1)
  %22 = load i32, ptr %x22, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x26, ptr noundef %x27, i32 noundef %22, i32 noundef -1)
  %23 = load i32, ptr %x22, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x28, ptr noundef %x29, i32 noundef %23, i32 noundef -1)
  %24 = load i32, ptr %x22, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x30, ptr noundef %x31, i32 noundef %24, i32 noundef -1)
  %25 = load i32, ptr %x31, align 4
  %26 = load i32, ptr %x28, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext 0, i32 noundef %25, i32 noundef %26)
  %27 = load i8, ptr %x33, align 1
  %28 = load i32, ptr %x29, align 4
  %29 = load i32, ptr %x26, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %27, i32 noundef %28, i32 noundef %29)
  %30 = load i8, ptr %x35, align 1
  %31 = load i32, ptr %x27, align 4
  %32 = load i32, ptr %x24, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %30, i32 noundef %31, i32 noundef %32)
  %33 = load i32, ptr %x12, align 4
  %34 = load i32, ptr %x30, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext 0, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %x39, align 1
  %36 = load i32, ptr %x14, align 4
  %37 = load i32, ptr %x32, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x41, align 1
  %39 = load i32, ptr %x16, align 4
  %40 = load i32, ptr %x34, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x43, align 1
  %42 = load i8, ptr %x17, align 1
  %conv2 = zext i8 %42 to i32
  %43 = load i32, ptr %x5, align 4
  %add = add i32 %conv2, %43
  %44 = load i32, ptr %x36, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %41, i32 noundef %add, i32 noundef %44)
  %45 = load i8, ptr %x45, align 1
  %46 = load i8, ptr %x37, align 1
  %conv3 = zext i8 %46 to i32
  %47 = load i32, ptr %x25, align 4
  %add4 = add i32 %conv3, %47
  call void @fiat_p224_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %45, i32 noundef 0, i32 noundef %add4)
  %48 = load i32, ptr %x20, align 4
  %49 = load i32, ptr %x22, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext 0, i32 noundef %48, i32 noundef %49)
  %50 = load i8, ptr %x49, align 1
  %conv5 = zext i8 %50 to i32
  %51 = load i8, ptr %x21, align 1
  %conv6 = zext i8 %51 to i32
  %add7 = add i32 %conv5, %conv6
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %52, i64 2
  %53 = load i32, ptr %arrayidx8, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i32 noundef %add7, i32 noundef %53)
  %54 = load i8, ptr %x51, align 1
  %55 = load i32, ptr %x10, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %54, i32 noundef %55, i32 noundef 0)
  %56 = load i8, ptr %x53, align 1
  %57 = load i32, ptr %x38, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %56, i32 noundef %57, i32 noundef 0)
  %58 = load i8, ptr %x55, align 1
  %59 = load i32, ptr %x40, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %58, i32 noundef %59, i32 noundef 0)
  %60 = load i8, ptr %x57, align 1
  %61 = load i32, ptr %x42, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %60, i32 noundef %61, i32 noundef 0)
  %62 = load i8, ptr %x59, align 1
  %63 = load i32, ptr %x44, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %62, i32 noundef %63, i32 noundef 0)
  %64 = load i8, ptr %x61, align 1
  %65 = load i32, ptr %x46, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %64, i32 noundef %65, i32 noundef 0)
  %66 = load i32, ptr %x50, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x64, ptr noundef %x65, i32 noundef %66, i32 noundef -1)
  %67 = load i32, ptr %x64, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %67, i32 noundef -1)
  %68 = load i32, ptr %x64, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %68, i32 noundef -1)
  %69 = load i32, ptr %x64, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %69, i32 noundef -1)
  %70 = load i32, ptr %x64, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %70, i32 noundef -1)
  %71 = load i32, ptr %x73, align 4
  %72 = load i32, ptr %x70, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i32 noundef %71, i32 noundef %72)
  %73 = load i8, ptr %x75, align 1
  %74 = load i32, ptr %x71, align 4
  %75 = load i32, ptr %x68, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext %73, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x77, align 1
  %77 = load i32, ptr %x69, align 4
  %78 = load i32, ptr %x66, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %76, i32 noundef %77, i32 noundef %78)
  %79 = load i32, ptr %x50, align 4
  %80 = load i32, ptr %x64, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x81, align 1
  %82 = load i32, ptr %x52, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %81, i32 noundef %82, i32 noundef 0)
  %83 = load i8, ptr %x83, align 1
  %84 = load i32, ptr %x54, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %83, i32 noundef %84, i32 noundef 0)
  %85 = load i8, ptr %x85, align 1
  %86 = load i32, ptr %x56, align 4
  %87 = load i32, ptr %x72, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %85, i32 noundef %86, i32 noundef %87)
  %88 = load i8, ptr %x87, align 1
  %89 = load i32, ptr %x58, align 4
  %90 = load i32, ptr %x74, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %88, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x89, align 1
  %92 = load i32, ptr %x60, align 4
  %93 = load i32, ptr %x76, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %91, i32 noundef %92, i32 noundef %93)
  %94 = load i8, ptr %x91, align 1
  %95 = load i32, ptr %x62, align 4
  %96 = load i32, ptr %x78, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %94, i32 noundef %95, i32 noundef %96)
  %97 = load i8, ptr %x93, align 1
  %98 = load i8, ptr %x63, align 1
  %conv9 = zext i8 %98 to i32
  %99 = load i8, ptr %x47, align 1
  %conv10 = zext i8 %99 to i32
  %add11 = add i32 %conv9, %conv10
  %100 = load i8, ptr %x79, align 1
  %conv12 = zext i8 %100 to i32
  %101 = load i32, ptr %x67, align 4
  %add13 = add i32 %conv12, %101
  call void @fiat_p224_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %97, i32 noundef %add11, i32 noundef %add13)
  %102 = load i32, ptr %x82, align 4
  %103 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %103, i64 3
  %104 = load i32, ptr %arrayidx14, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext 0, i32 noundef %102, i32 noundef %104)
  %105 = load i8, ptr %x97, align 1
  %106 = load i32, ptr %x84, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %105, i32 noundef %106, i32 noundef 0)
  %107 = load i8, ptr %x99, align 1
  %108 = load i32, ptr %x86, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %107, i32 noundef %108, i32 noundef 0)
  %109 = load i8, ptr %x101, align 1
  %110 = load i32, ptr %x88, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %109, i32 noundef %110, i32 noundef 0)
  %111 = load i8, ptr %x103, align 1
  %112 = load i32, ptr %x90, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %111, i32 noundef %112, i32 noundef 0)
  %113 = load i8, ptr %x105, align 1
  %114 = load i32, ptr %x92, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %113, i32 noundef %114, i32 noundef 0)
  %115 = load i8, ptr %x107, align 1
  %116 = load i32, ptr %x94, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %115, i32 noundef %116, i32 noundef 0)
  %117 = load i32, ptr %x96, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x110, ptr noundef %x111, i32 noundef %117, i32 noundef -1)
  %118 = load i32, ptr %x110, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x112, ptr noundef %x113, i32 noundef %118, i32 noundef -1)
  %119 = load i32, ptr %x110, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x114, ptr noundef %x115, i32 noundef %119, i32 noundef -1)
  %120 = load i32, ptr %x110, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x116, ptr noundef %x117, i32 noundef %120, i32 noundef -1)
  %121 = load i32, ptr %x110, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x118, ptr noundef %x119, i32 noundef %121, i32 noundef -1)
  %122 = load i32, ptr %x119, align 4
  %123 = load i32, ptr %x116, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i32 noundef %122, i32 noundef %123)
  %124 = load i8, ptr %x121, align 1
  %125 = load i32, ptr %x117, align 4
  %126 = load i32, ptr %x114, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %124, i32 noundef %125, i32 noundef %126)
  %127 = load i8, ptr %x123, align 1
  %128 = load i32, ptr %x115, align 4
  %129 = load i32, ptr %x112, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %127, i32 noundef %128, i32 noundef %129)
  %130 = load i32, ptr %x96, align 4
  %131 = load i32, ptr %x110, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext 0, i32 noundef %130, i32 noundef %131)
  %132 = load i8, ptr %x127, align 1
  %133 = load i32, ptr %x98, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %132, i32 noundef %133, i32 noundef 0)
  %134 = load i8, ptr %x129, align 1
  %135 = load i32, ptr %x100, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %134, i32 noundef %135, i32 noundef 0)
  %136 = load i8, ptr %x131, align 1
  %137 = load i32, ptr %x102, align 4
  %138 = load i32, ptr %x118, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %136, i32 noundef %137, i32 noundef %138)
  %139 = load i8, ptr %x133, align 1
  %140 = load i32, ptr %x104, align 4
  %141 = load i32, ptr %x120, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %139, i32 noundef %140, i32 noundef %141)
  %142 = load i8, ptr %x135, align 1
  %143 = load i32, ptr %x106, align 4
  %144 = load i32, ptr %x122, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %142, i32 noundef %143, i32 noundef %144)
  %145 = load i8, ptr %x137, align 1
  %146 = load i32, ptr %x108, align 4
  %147 = load i32, ptr %x124, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %145, i32 noundef %146, i32 noundef %147)
  %148 = load i8, ptr %x139, align 1
  %149 = load i8, ptr %x109, align 1
  %conv15 = zext i8 %149 to i32
  %150 = load i8, ptr %x95, align 1
  %conv16 = zext i8 %150 to i32
  %add17 = add i32 %conv15, %conv16
  %151 = load i8, ptr %x125, align 1
  %conv18 = zext i8 %151 to i32
  %152 = load i32, ptr %x113, align 4
  %add19 = add i32 %conv18, %152
  call void @fiat_p224_addcarryx_u32(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %148, i32 noundef %add17, i32 noundef %add19)
  %153 = load i32, ptr %x128, align 4
  %154 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %154, i64 4
  %155 = load i32, ptr %arrayidx20, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext 0, i32 noundef %153, i32 noundef %155)
  %156 = load i8, ptr %x143, align 1
  %157 = load i32, ptr %x130, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext %156, i32 noundef %157, i32 noundef 0)
  %158 = load i8, ptr %x145, align 1
  %159 = load i32, ptr %x132, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %158, i32 noundef %159, i32 noundef 0)
  %160 = load i8, ptr %x147, align 1
  %161 = load i32, ptr %x134, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %160, i32 noundef %161, i32 noundef 0)
  %162 = load i8, ptr %x149, align 1
  %163 = load i32, ptr %x136, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %162, i32 noundef %163, i32 noundef 0)
  %164 = load i8, ptr %x151, align 1
  %165 = load i32, ptr %x138, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %164, i32 noundef %165, i32 noundef 0)
  %166 = load i8, ptr %x153, align 1
  %167 = load i32, ptr %x140, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %166, i32 noundef %167, i32 noundef 0)
  %168 = load i32, ptr %x142, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x156, ptr noundef %x157, i32 noundef %168, i32 noundef -1)
  %169 = load i32, ptr %x156, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x158, ptr noundef %x159, i32 noundef %169, i32 noundef -1)
  %170 = load i32, ptr %x156, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x160, ptr noundef %x161, i32 noundef %170, i32 noundef -1)
  %171 = load i32, ptr %x156, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x162, ptr noundef %x163, i32 noundef %171, i32 noundef -1)
  %172 = load i32, ptr %x156, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x164, ptr noundef %x165, i32 noundef %172, i32 noundef -1)
  %173 = load i32, ptr %x165, align 4
  %174 = load i32, ptr %x162, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext 0, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x167, align 1
  %176 = load i32, ptr %x163, align 4
  %177 = load i32, ptr %x160, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i8, ptr %x169, align 1
  %179 = load i32, ptr %x161, align 4
  %180 = load i32, ptr %x158, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180)
  %181 = load i32, ptr %x142, align 4
  %182 = load i32, ptr %x156, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext 0, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x173, align 1
  %184 = load i32, ptr %x144, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %183, i32 noundef %184, i32 noundef 0)
  %185 = load i8, ptr %x175, align 1
  %186 = load i32, ptr %x146, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %185, i32 noundef %186, i32 noundef 0)
  %187 = load i8, ptr %x177, align 1
  %188 = load i32, ptr %x148, align 4
  %189 = load i32, ptr %x164, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %187, i32 noundef %188, i32 noundef %189)
  %190 = load i8, ptr %x179, align 1
  %191 = load i32, ptr %x150, align 4
  %192 = load i32, ptr %x166, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %190, i32 noundef %191, i32 noundef %192)
  %193 = load i8, ptr %x181, align 1
  %194 = load i32, ptr %x152, align 4
  %195 = load i32, ptr %x168, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %193, i32 noundef %194, i32 noundef %195)
  %196 = load i8, ptr %x183, align 1
  %197 = load i32, ptr %x154, align 4
  %198 = load i32, ptr %x170, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %196, i32 noundef %197, i32 noundef %198)
  %199 = load i8, ptr %x185, align 1
  %200 = load i8, ptr %x155, align 1
  %conv21 = zext i8 %200 to i32
  %201 = load i8, ptr %x141, align 1
  %conv22 = zext i8 %201 to i32
  %add23 = add i32 %conv21, %conv22
  %202 = load i8, ptr %x171, align 1
  %conv24 = zext i8 %202 to i32
  %203 = load i32, ptr %x159, align 4
  %add25 = add i32 %conv24, %203
  call void @fiat_p224_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %199, i32 noundef %add23, i32 noundef %add25)
  %204 = load i32, ptr %x174, align 4
  %205 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %205, i64 5
  %206 = load i32, ptr %arrayidx26, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext 0, i32 noundef %204, i32 noundef %206)
  %207 = load i8, ptr %x189, align 1
  %208 = load i32, ptr %x176, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %207, i32 noundef %208, i32 noundef 0)
  %209 = load i8, ptr %x191, align 1
  %210 = load i32, ptr %x178, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %209, i32 noundef %210, i32 noundef 0)
  %211 = load i8, ptr %x193, align 1
  %212 = load i32, ptr %x180, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %211, i32 noundef %212, i32 noundef 0)
  %213 = load i8, ptr %x195, align 1
  %214 = load i32, ptr %x182, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %213, i32 noundef %214, i32 noundef 0)
  %215 = load i8, ptr %x197, align 1
  %216 = load i32, ptr %x184, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %215, i32 noundef %216, i32 noundef 0)
  %217 = load i8, ptr %x199, align 1
  %218 = load i32, ptr %x186, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %217, i32 noundef %218, i32 noundef 0)
  %219 = load i32, ptr %x188, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %219, i32 noundef -1)
  %220 = load i32, ptr %x202, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %220, i32 noundef -1)
  %221 = load i32, ptr %x202, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %221, i32 noundef -1)
  %222 = load i32, ptr %x202, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %222, i32 noundef -1)
  %223 = load i32, ptr %x202, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %223, i32 noundef -1)
  %224 = load i32, ptr %x211, align 4
  %225 = load i32, ptr %x208, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext 0, i32 noundef %224, i32 noundef %225)
  %226 = load i8, ptr %x213, align 1
  %227 = load i32, ptr %x209, align 4
  %228 = load i32, ptr %x206, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %226, i32 noundef %227, i32 noundef %228)
  %229 = load i8, ptr %x215, align 1
  %230 = load i32, ptr %x207, align 4
  %231 = load i32, ptr %x204, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %229, i32 noundef %230, i32 noundef %231)
  %232 = load i32, ptr %x188, align 4
  %233 = load i32, ptr %x202, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext 0, i32 noundef %232, i32 noundef %233)
  %234 = load i8, ptr %x219, align 1
  %235 = load i32, ptr %x190, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %234, i32 noundef %235, i32 noundef 0)
  %236 = load i8, ptr %x221, align 1
  %237 = load i32, ptr %x192, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %236, i32 noundef %237, i32 noundef 0)
  %238 = load i8, ptr %x223, align 1
  %239 = load i32, ptr %x194, align 4
  %240 = load i32, ptr %x210, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %238, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x225, align 1
  %242 = load i32, ptr %x196, align 4
  %243 = load i32, ptr %x212, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x227, align 1
  %245 = load i32, ptr %x198, align 4
  %246 = load i32, ptr %x214, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x229, align 1
  %248 = load i32, ptr %x200, align 4
  %249 = load i32, ptr %x216, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x231, align 1
  %251 = load i8, ptr %x201, align 1
  %conv27 = zext i8 %251 to i32
  %252 = load i8, ptr %x187, align 1
  %conv28 = zext i8 %252 to i32
  %add29 = add i32 %conv27, %conv28
  %253 = load i8, ptr %x217, align 1
  %conv30 = zext i8 %253 to i32
  %254 = load i32, ptr %x205, align 4
  %add31 = add i32 %conv30, %254
  call void @fiat_p224_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %250, i32 noundef %add29, i32 noundef %add31)
  %255 = load i32, ptr %x220, align 4
  %256 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %256, i64 6
  %257 = load i32, ptr %arrayidx32, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext 0, i32 noundef %255, i32 noundef %257)
  %258 = load i8, ptr %x235, align 1
  %259 = load i32, ptr %x222, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %258, i32 noundef %259, i32 noundef 0)
  %260 = load i8, ptr %x237, align 1
  %261 = load i32, ptr %x224, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %260, i32 noundef %261, i32 noundef 0)
  %262 = load i8, ptr %x239, align 1
  %263 = load i32, ptr %x226, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %262, i32 noundef %263, i32 noundef 0)
  %264 = load i8, ptr %x241, align 1
  %265 = load i32, ptr %x228, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %264, i32 noundef %265, i32 noundef 0)
  %266 = load i8, ptr %x243, align 1
  %267 = load i32, ptr %x230, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %266, i32 noundef %267, i32 noundef 0)
  %268 = load i8, ptr %x245, align 1
  %269 = load i32, ptr %x232, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %268, i32 noundef %269, i32 noundef 0)
  %270 = load i32, ptr %x234, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x248, ptr noundef %x249, i32 noundef %270, i32 noundef -1)
  %271 = load i32, ptr %x248, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x250, ptr noundef %x251, i32 noundef %271, i32 noundef -1)
  %272 = load i32, ptr %x248, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x252, ptr noundef %x253, i32 noundef %272, i32 noundef -1)
  %273 = load i32, ptr %x248, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x254, ptr noundef %x255, i32 noundef %273, i32 noundef -1)
  %274 = load i32, ptr %x248, align 4
  call void @fiat_p224_mulx_u32(ptr noundef %x256, ptr noundef %x257, i32 noundef %274, i32 noundef -1)
  %275 = load i32, ptr %x257, align 4
  %276 = load i32, ptr %x254, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext 0, i32 noundef %275, i32 noundef %276)
  %277 = load i8, ptr %x259, align 1
  %278 = load i32, ptr %x255, align 4
  %279 = load i32, ptr %x252, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %277, i32 noundef %278, i32 noundef %279)
  %280 = load i8, ptr %x261, align 1
  %281 = load i32, ptr %x253, align 4
  %282 = load i32, ptr %x250, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %280, i32 noundef %281, i32 noundef %282)
  %283 = load i32, ptr %x234, align 4
  %284 = load i32, ptr %x248, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x264, ptr noundef %x265, i8 noundef zeroext 0, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x265, align 1
  %286 = load i32, ptr %x236, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x266, ptr noundef %x267, i8 noundef zeroext %285, i32 noundef %286, i32 noundef 0)
  %287 = load i8, ptr %x267, align 1
  %288 = load i32, ptr %x238, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x268, ptr noundef %x269, i8 noundef zeroext %287, i32 noundef %288, i32 noundef 0)
  %289 = load i8, ptr %x269, align 1
  %290 = load i32, ptr %x240, align 4
  %291 = load i32, ptr %x256, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x270, ptr noundef %x271, i8 noundef zeroext %289, i32 noundef %290, i32 noundef %291)
  %292 = load i8, ptr %x271, align 1
  %293 = load i32, ptr %x242, align 4
  %294 = load i32, ptr %x258, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x272, ptr noundef %x273, i8 noundef zeroext %292, i32 noundef %293, i32 noundef %294)
  %295 = load i8, ptr %x273, align 1
  %296 = load i32, ptr %x244, align 4
  %297 = load i32, ptr %x260, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext %295, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x275, align 1
  %299 = load i32, ptr %x246, align 4
  %300 = load i32, ptr %x262, align 4
  call void @fiat_p224_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x277, align 1
  %302 = load i8, ptr %x247, align 1
  %conv33 = zext i8 %302 to i32
  %303 = load i8, ptr %x233, align 1
  %conv34 = zext i8 %303 to i32
  %add35 = add i32 %conv33, %conv34
  %304 = load i8, ptr %x263, align 1
  %conv36 = zext i8 %304 to i32
  %305 = load i32, ptr %x251, align 4
  %add37 = add i32 %conv36, %305
  call void @fiat_p224_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %301, i32 noundef %add35, i32 noundef %add37)
  %306 = load i32, ptr %x266, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext 0, i32 noundef %306, i32 noundef 1)
  %307 = load i8, ptr %x281, align 1
  %308 = load i32, ptr %x268, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %307, i32 noundef %308, i32 noundef 0)
  %309 = load i8, ptr %x283, align 1
  %310 = load i32, ptr %x270, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %309, i32 noundef %310, i32 noundef 0)
  %311 = load i8, ptr %x285, align 1
  %312 = load i32, ptr %x272, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %311, i32 noundef %312, i32 noundef -1)
  %313 = load i8, ptr %x287, align 1
  %314 = load i32, ptr %x274, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %313, i32 noundef %314, i32 noundef -1)
  %315 = load i8, ptr %x289, align 1
  %316 = load i32, ptr %x276, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %315, i32 noundef %316, i32 noundef -1)
  %317 = load i8, ptr %x291, align 1
  %318 = load i32, ptr %x278, align 4
  call void @fiat_p224_subborrowx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %317, i32 noundef %318, i32 noundef -1)
  %319 = load i8, ptr %x293, align 1
  %320 = load i8, ptr %x279, align 1
  %conv38 = zext i8 %320 to i32
  call void @fiat_p224_subborrowx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %319, i32 noundef %conv38, i32 noundef 0)
  %321 = load i8, ptr %x295, align 1
  %322 = load i32, ptr %x280, align 4
  %323 = load i32, ptr %x266, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x296, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x295, align 1
  %325 = load i32, ptr %x282, align 4
  %326 = load i32, ptr %x268, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x297, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x295, align 1
  %328 = load i32, ptr %x284, align 4
  %329 = load i32, ptr %x270, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x298, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x295, align 1
  %331 = load i32, ptr %x286, align 4
  %332 = load i32, ptr %x272, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x299, i8 noundef zeroext %330, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x295, align 1
  %334 = load i32, ptr %x288, align 4
  %335 = load i32, ptr %x274, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x300, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x295, align 1
  %337 = load i32, ptr %x290, align 4
  %338 = load i32, ptr %x276, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x301, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x295, align 1
  %340 = load i32, ptr %x292, align 4
  %341 = load i32, ptr %x278, align 4
  call void @fiat_p224_cmovznz_u32(ptr noundef %x302, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i32, ptr %x296, align 4
  %343 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %343, i64 0
  store i32 %342, ptr %arrayidx39, align 4
  %344 = load i32, ptr %x297, align 4
  %345 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %345, i64 1
  store i32 %344, ptr %arrayidx40, align 4
  %346 = load i32, ptr %x298, align 4
  %347 = load ptr, ptr %out1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %347, i64 2
  store i32 %346, ptr %arrayidx41, align 4
  %348 = load i32, ptr %x299, align 4
  %349 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %349, i64 3
  store i32 %348, ptr %arrayidx42, align 4
  %350 = load i32, ptr %x300, align 4
  %351 = load ptr, ptr %out1.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %351, i64 4
  store i32 %350, ptr %arrayidx43, align 4
  %352 = load i32, ptr %x301, align 4
  %353 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %353, i64 5
  store i32 %352, ptr %arrayidx44, align 4
  %354 = load i32, ptr %x302, align 4
  %355 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %355, i64 6
  store i32 %354, ptr %arrayidx45, align 4
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
