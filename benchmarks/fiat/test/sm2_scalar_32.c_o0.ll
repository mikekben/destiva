; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiat_sm2_scalar_value_barrier_u32(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #1, !srcloc !6
  store i32 %1, ptr %a.addr, align 4
  %2 = load i32, ptr %a.addr, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i64, align 8
  %x2 = alloca i32, align 4
  %x3 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %0 to i64
  %1 = load i32, ptr %arg2.addr, align 4
  %conv1 = zext i32 %1 to i64
  %add = add i64 %conv, %conv1
  %2 = load i32, ptr %arg3.addr, align 4
  %conv2 = zext i32 %2 to i64
  %add3 = add i64 %add, %conv2
  store i64 %add3, ptr %x1, align 8
  %3 = load i64, ptr %x1, align 8
  %and = and i64 %3, 4294967295
  %conv4 = trunc i64 %and to i32
  store i32 %conv4, ptr %x2, align 4
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 32
  %conv5 = trunc i64 %shr to i8
  store i8 %conv5, ptr %x3, align 1
  %5 = load i32, ptr %x2, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i8, ptr %x3, align 1
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %7, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i32, ptr %arg2.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i8, ptr %arg1.addr, align 1
  %conv1 = zext i8 %1 to i64
  %sub = sub nsw i64 %conv, %conv1
  %2 = load i32, ptr %arg3.addr, align 4
  %conv2 = zext i32 %2 to i64
  %sub3 = sub nsw i64 %sub, %conv2
  store i64 %sub3, ptr %x1, align 8
  %3 = load i64, ptr %x1, align 8
  %shr = ashr i64 %3, 32
  %conv4 = trunc i64 %shr to i8
  store i8 %conv4, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 4294967295
  %conv5 = trunc i64 %and to i32
  store i32 %conv5, ptr %x3, align 4
  %5 = load i32, ptr %x3, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i8, ptr %x2, align 1
  %conv6 = sext i8 %7 to i32
  %sub7 = sub nsw i32 0, %conv6
  %conv8 = trunc i32 %sub7 to i8
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %conv8, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_mulx_u32(ptr noundef %out1, ptr noundef %out2, i32 noundef %arg1, i32 noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %x1 = alloca i64, align 8
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i32 %arg1, ptr %arg1.addr, align 4
  store i32 %arg2, ptr %arg2.addr, align 4
  %0 = load i32, ptr %arg1.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i32, ptr %arg2.addr, align 4
  %conv1 = zext i32 %1 to i64
  %mul = mul i64 %conv, %conv1
  store i64 %mul, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %and = and i64 %2, 4294967295
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, ptr %x2, align 4
  %3 = load i64, ptr %x1, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, ptr %x3, align 4
  %4 = load i32, ptr %x2, align 4
  %5 = load ptr, ptr %out1.addr, align 8
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %x3, align 4
  %7 = load ptr, ptr %out2.addr, align 8
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %out1, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i8, align 1
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i8, ptr %arg1.addr, align 1
  %tobool = icmp ne i8 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = trunc i32 %lnot.ext to i8
  store i8 %conv, ptr %x1, align 1
  %1 = load i8, ptr %x1, align 1
  %conv2 = zext i8 %1 to i32
  %sub = sub nsw i32 0, %conv2
  %conv3 = trunc i32 %sub to i8
  %conv4 = sext i8 %conv3 to i32
  %and = and i32 %conv4, -1
  store i32 %and, ptr %x2, align 4
  %2 = load i32, ptr %x2, align 4
  %call = call i32 @fiat_sm2_scalar_value_barrier_u32(i32 noundef %2)
  %3 = load i32, ptr %arg3.addr, align 4
  %and5 = and i32 %call, %3
  %4 = load i32, ptr %x2, align 4
  %not = xor i32 %4, -1
  %call6 = call i32 @fiat_sm2_scalar_value_barrier_u32(i32 noundef %not)
  %5 = load i32, ptr %arg2.addr, align 4
  %and7 = and i32 %call6, %5
  %or = or i32 %and5, %and7
  store i32 %or, ptr %x3, align 4
  %6 = load i32, ptr %x3, align 4
  %7 = load ptr, ptr %out1.addr, align 8
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
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
  %x36 = alloca i8, align 1
  %x37 = alloca i32, align 4
  %x38 = alloca i8, align 1
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
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i8, align 1
  %x60 = alloca i32, align 4
  %x61 = alloca i8, align 1
  %x62 = alloca i32, align 4
  %x63 = alloca i8, align 1
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
  %x66 = alloca i32, align 4
  %x67 = alloca i8, align 1
  %x68 = alloca i32, align 4
  %x69 = alloca i8, align 1
  %x70 = alloca i32, align 4
  %x71 = alloca i8, align 1
  %x72 = alloca i32, align 4
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
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %x89 = alloca i32, align 4
  %x90 = alloca i8, align 1
  %x91 = alloca i32, align 4
  %x92 = alloca i32, align 4
  %x93 = alloca i32, align 4
  %x94 = alloca i32, align 4
  %x95 = alloca i32, align 4
  %x96 = alloca i32, align 4
  %x97 = alloca i32, align 4
  %x98 = alloca i32, align 4
  %x99 = alloca i32, align 4
  %x100 = alloca i32, align 4
  %x101 = alloca i32, align 4
  %x102 = alloca i32, align 4
  %x103 = alloca i32, align 4
  %x104 = alloca i32, align 4
  %x105 = alloca i32, align 4
  %x106 = alloca i32, align 4
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
  %x120 = alloca i8, align 1
  %x121 = alloca i32, align 4
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
  %x141 = alloca i32, align 4
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
  %x144 = alloca i32, align 4
  %x145 = alloca i32, align 4
  %x146 = alloca i32, align 4
  %x147 = alloca i32, align 4
  %x148 = alloca i32, align 4
  %x149 = alloca i32, align 4
  %x150 = alloca i32, align 4
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
  %x153 = alloca i32, align 4
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
  %x156 = alloca i32, align 4
  %x157 = alloca i32, align 4
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
  %x192 = alloca i32, align 4
  %x193 = alloca i32, align 4
  %x194 = alloca i32, align 4
  %x195 = alloca i32, align 4
  %x196 = alloca i32, align 4
  %x197 = alloca i32, align 4
  %x198 = alloca i32, align 4
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
  %x201 = alloca i32, align 4
  %x202 = alloca i32, align 4
  %x203 = alloca i32, align 4
  %x204 = alloca i32, align 4
  %x205 = alloca i32, align 4
  %x206 = alloca i32, align 4
  %x207 = alloca i32, align 4
  %x208 = alloca i32, align 4
  %x209 = alloca i8, align 1
  %x210 = alloca i32, align 4
  %x211 = alloca i8, align 1
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
  %x242 = alloca i32, align 4
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
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
  %x258 = alloca i32, align 4
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
  %x293 = alloca i32, align 4
  %x294 = alloca i32, align 4
  %x295 = alloca i32, align 4
  %x296 = alloca i32, align 4
  %x297 = alloca i32, align 4
  %x298 = alloca i32, align 4
  %x299 = alloca i32, align 4
  %x300 = alloca i32, align 4
  %x301 = alloca i32, align 4
  %x302 = alloca i32, align 4
  %x303 = alloca i32, align 4
  %x304 = alloca i32, align 4
  %x305 = alloca i32, align 4
  %x306 = alloca i32, align 4
  %x307 = alloca i32, align 4
  %x308 = alloca i32, align 4
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
  %x353 = alloca i32, align 4
  %x354 = alloca i32, align 4
  %x355 = alloca i32, align 4
  %x356 = alloca i32, align 4
  %x357 = alloca i32, align 4
  %x358 = alloca i32, align 4
  %x359 = alloca i32, align 4
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
  %x375 = alloca i32, align 4
  %x376 = alloca i8, align 1
  %x377 = alloca i32, align 4
  %x378 = alloca i8, align 1
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
  %x394 = alloca i32, align 4
  %x395 = alloca i32, align 4
  %x396 = alloca i32, align 4
  %x397 = alloca i32, align 4
  %x398 = alloca i32, align 4
  %x399 = alloca i32, align 4
  %x400 = alloca i32, align 4
  %x401 = alloca i32, align 4
  %x402 = alloca i32, align 4
  %x403 = alloca i32, align 4
  %x404 = alloca i32, align 4
  %x405 = alloca i32, align 4
  %x406 = alloca i32, align 4
  %x407 = alloca i32, align 4
  %x408 = alloca i32, align 4
  %x409 = alloca i32, align 4
  %x410 = alloca i32, align 4
  %x411 = alloca i8, align 1
  %x412 = alloca i32, align 4
  %x413 = alloca i8, align 1
  %x414 = alloca i32, align 4
  %x415 = alloca i8, align 1
  %x416 = alloca i32, align 4
  %x417 = alloca i8, align 1
  %x418 = alloca i32, align 4
  %x419 = alloca i8, align 1
  %x420 = alloca i32, align 4
  %x421 = alloca i8, align 1
  %x422 = alloca i32, align 4
  %x423 = alloca i8, align 1
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
  %x444 = alloca i32, align 4
  %x445 = alloca i32, align 4
  %x446 = alloca i32, align 4
  %x447 = alloca i32, align 4
  %x448 = alloca i32, align 4
  %x449 = alloca i32, align 4
  %x450 = alloca i32, align 4
  %x451 = alloca i32, align 4
  %x452 = alloca i32, align 4
  %x453 = alloca i32, align 4
  %x454 = alloca i32, align 4
  %x455 = alloca i32, align 4
  %x456 = alloca i32, align 4
  %x457 = alloca i32, align 4
  %x458 = alloca i32, align 4
  %x459 = alloca i32, align 4
  %x460 = alloca i32, align 4
  %x461 = alloca i32, align 4
  %x462 = alloca i8, align 1
  %x463 = alloca i32, align 4
  %x464 = alloca i8, align 1
  %x465 = alloca i32, align 4
  %x466 = alloca i8, align 1
  %x467 = alloca i32, align 4
  %x468 = alloca i8, align 1
  %x469 = alloca i32, align 4
  %x470 = alloca i8, align 1
  %x471 = alloca i32, align 4
  %x472 = alloca i8, align 1
  %x473 = alloca i32, align 4
  %x474 = alloca i8, align 1
  %x475 = alloca i32, align 4
  %x476 = alloca i32, align 4
  %x477 = alloca i8, align 1
  %x478 = alloca i32, align 4
  %x479 = alloca i8, align 1
  %x480 = alloca i32, align 4
  %x481 = alloca i8, align 1
  %x482 = alloca i32, align 4
  %x483 = alloca i8, align 1
  %x484 = alloca i32, align 4
  %x485 = alloca i8, align 1
  %x486 = alloca i32, align 4
  %x487 = alloca i8, align 1
  %x488 = alloca i32, align 4
  %x489 = alloca i8, align 1
  %x490 = alloca i32, align 4
  %x491 = alloca i8, align 1
  %x492 = alloca i32, align 4
  %x493 = alloca i8, align 1
  %x494 = alloca i32, align 4
  %x495 = alloca i32, align 4
  %x496 = alloca i32, align 4
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
  %x510 = alloca i32, align 4
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
  %x526 = alloca i32, align 4
  %x527 = alloca i8, align 1
  %x528 = alloca i32, align 4
  %x529 = alloca i8, align 1
  %x530 = alloca i32, align 4
  %x531 = alloca i8, align 1
  %x532 = alloca i32, align 4
  %x533 = alloca i8, align 1
  %x534 = alloca i32, align 4
  %x535 = alloca i8, align 1
  %x536 = alloca i32, align 4
  %x537 = alloca i8, align 1
  %x538 = alloca i32, align 4
  %x539 = alloca i8, align 1
  %x540 = alloca i32, align 4
  %x541 = alloca i8, align 1
  %x542 = alloca i32, align 4
  %x543 = alloca i8, align 1
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
  %x554 = alloca i32, align 4
  %x555 = alloca i32, align 4
  %x556 = alloca i32, align 4
  %x557 = alloca i32, align 4
  %x558 = alloca i32, align 4
  %x559 = alloca i32, align 4
  %x560 = alloca i32, align 4
  %x561 = alloca i32, align 4
  %x562 = alloca i32, align 4
  %x563 = alloca i8, align 1
  %x564 = alloca i32, align 4
  %x565 = alloca i8, align 1
  %x566 = alloca i32, align 4
  %x567 = alloca i8, align 1
  %x568 = alloca i32, align 4
  %x569 = alloca i8, align 1
  %x570 = alloca i32, align 4
  %x571 = alloca i8, align 1
  %x572 = alloca i32, align 4
  %x573 = alloca i8, align 1
  %x574 = alloca i32, align 4
  %x575 = alloca i8, align 1
  %x576 = alloca i32, align 4
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
  %x596 = alloca i32, align 4
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
  %x613 = alloca i8, align 1
  %x614 = alloca i32, align 4
  %x615 = alloca i8, align 1
  %x616 = alloca i32, align 4
  %x617 = alloca i8, align 1
  %x618 = alloca i32, align 4
  %x619 = alloca i8, align 1
  %x620 = alloca i32, align 4
  %x621 = alloca i8, align 1
  %x622 = alloca i32, align 4
  %x623 = alloca i8, align 1
  %x624 = alloca i32, align 4
  %x625 = alloca i8, align 1
  %x626 = alloca i32, align 4
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
  %x646 = alloca i32, align 4
  %x647 = alloca i32, align 4
  %x648 = alloca i32, align 4
  %x649 = alloca i32, align 4
  %x650 = alloca i32, align 4
  %x651 = alloca i32, align 4
  %x652 = alloca i32, align 4
  %x653 = alloca i32, align 4
  %x654 = alloca i32, align 4
  %x655 = alloca i32, align 4
  %x656 = alloca i32, align 4
  %x657 = alloca i32, align 4
  %x658 = alloca i32, align 4
  %x659 = alloca i32, align 4
  %x660 = alloca i32, align 4
  %x661 = alloca i32, align 4
  %x662 = alloca i32, align 4
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
  %x678 = alloca i32, align 4
  %x679 = alloca i8, align 1
  %x680 = alloca i32, align 4
  %x681 = alloca i8, align 1
  %x682 = alloca i32, align 4
  %x683 = alloca i8, align 1
  %x684 = alloca i32, align 4
  %x685 = alloca i8, align 1
  %x686 = alloca i32, align 4
  %x687 = alloca i8, align 1
  %x688 = alloca i32, align 4
  %x689 = alloca i8, align 1
  %x690 = alloca i32, align 4
  %x691 = alloca i8, align 1
  %x692 = alloca i32, align 4
  %x693 = alloca i8, align 1
  %x694 = alloca i32, align 4
  %x695 = alloca i8, align 1
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
  %x728 = alloca i32, align 4
  %x729 = alloca i8, align 1
  %x730 = alloca i32, align 4
  %x731 = alloca i8, align 1
  %x732 = alloca i32, align 4
  %x733 = alloca i8, align 1
  %x734 = alloca i32, align 4
  %x735 = alloca i8, align 1
  %x736 = alloca i32, align 4
  %x737 = alloca i8, align 1
  %x738 = alloca i32, align 4
  %x739 = alloca i8, align 1
  %x740 = alloca i32, align 4
  %x741 = alloca i8, align 1
  %x742 = alloca i32, align 4
  %x743 = alloca i8, align 1
  %x744 = alloca i32, align 4
  %x745 = alloca i8, align 1
  %x746 = alloca i32, align 4
  %x747 = alloca i32, align 4
  %x748 = alloca i32, align 4
  %x749 = alloca i32, align 4
  %x750 = alloca i32, align 4
  %x751 = alloca i32, align 4
  %x752 = alloca i32, align 4
  %x753 = alloca i32, align 4
  %x754 = alloca i32, align 4
  %x755 = alloca i32, align 4
  %x756 = alloca i32, align 4
  %x757 = alloca i32, align 4
  %x758 = alloca i32, align 4
  %x759 = alloca i32, align 4
  %x760 = alloca i32, align 4
  %x761 = alloca i32, align 4
  %x762 = alloca i32, align 4
  %x763 = alloca i32, align 4
  %x764 = alloca i32, align 4
  %x765 = alloca i8, align 1
  %x766 = alloca i32, align 4
  %x767 = alloca i8, align 1
  %x768 = alloca i32, align 4
  %x769 = alloca i8, align 1
  %x770 = alloca i32, align 4
  %x771 = alloca i8, align 1
  %x772 = alloca i32, align 4
  %x773 = alloca i8, align 1
  %x774 = alloca i32, align 4
  %x775 = alloca i8, align 1
  %x776 = alloca i32, align 4
  %x777 = alloca i8, align 1
  %x778 = alloca i32, align 4
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
  %x790 = alloca i8, align 1
  %x791 = alloca i32, align 4
  %x792 = alloca i8, align 1
  %x793 = alloca i32, align 4
  %x794 = alloca i8, align 1
  %x795 = alloca i32, align 4
  %x796 = alloca i8, align 1
  %x797 = alloca i32, align 4
  %x798 = alloca i32, align 4
  %x799 = alloca i8, align 1
  %x800 = alloca i32, align 4
  %x801 = alloca i8, align 1
  %x802 = alloca i32, align 4
  %x803 = alloca i8, align 1
  %x804 = alloca i32, align 4
  %x805 = alloca i8, align 1
  %x806 = alloca i32, align 4
  %x807 = alloca i8, align 1
  %x808 = alloca i32, align 4
  %x809 = alloca i8, align 1
  %x810 = alloca i32, align 4
  %x811 = alloca i8, align 1
  %x812 = alloca i32, align 4
  %x813 = alloca i8, align 1
  %x814 = alloca i32, align 4
  %x815 = alloca i8, align 1
  %x816 = alloca i32, align 4
  %x817 = alloca i32, align 4
  %x818 = alloca i32, align 4
  %x819 = alloca i32, align 4
  %x820 = alloca i32, align 4
  %x821 = alloca i32, align 4
  %x822 = alloca i32, align 4
  %x823 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
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
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 7
  %18 = load i32, ptr %arrayidx8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef %18)
  %19 = load i32, ptr %x8, align 4
  %20 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %20, i64 6
  %21 = load i32, ptr %arrayidx9, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %19, i32 noundef %21)
  %22 = load i32, ptr %x8, align 4
  %23 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %23, i64 5
  %24 = load i32, ptr %arrayidx10, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %22, i32 noundef %24)
  %25 = load i32, ptr %x8, align 4
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %26, i64 4
  %27 = load i32, ptr %arrayidx11, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %25, i32 noundef %27)
  %28 = load i32, ptr %x8, align 4
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %29, i64 3
  %30 = load i32, ptr %arrayidx12, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %28, i32 noundef %30)
  %31 = load i32, ptr %x8, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %31, i32 noundef %33)
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 1
  %36 = load i32, ptr %arrayidx14, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %34, i32 noundef %36)
  %37 = load i32, ptr %x8, align 4
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %37, i32 noundef %39)
  %40 = load i32, ptr %x24, align 4
  %41 = load i32, ptr %x21, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %40, i32 noundef %41)
  %42 = load i8, ptr %x26, align 1
  %43 = load i32, ptr %x22, align 4
  %44 = load i32, ptr %x19, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %x28, align 1
  %46 = load i32, ptr %x20, align 4
  %47 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %47)
  %48 = load i8, ptr %x30, align 1
  %49 = load i32, ptr %x18, align 4
  %50 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x32, align 1
  %52 = load i32, ptr %x16, align 4
  %53 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x34, align 1
  %55 = load i32, ptr %x14, align 4
  %56 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x36, align 1
  %58 = load i32, ptr %x12, align 4
  %59 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x38, align 1
  %conv = zext i8 %60 to i32
  %61 = load i32, ptr %x10, align 4
  %add = add i32 %conv, %61
  store i32 %add, ptr %x39, align 4
  %62 = load i32, ptr %x23, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x40, ptr noundef %x41, i32 noundef %62, i32 noundef 1916078453)
  %63 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x42, ptr noundef %x43, i32 noundef %63, i32 noundef -2)
  %64 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %64, i32 noundef -1)
  %65 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x46, ptr noundef %x47, i32 noundef %65, i32 noundef -1)
  %66 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x48, ptr noundef %x49, i32 noundef %66, i32 noundef -1)
  %67 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x50, ptr noundef %x51, i32 noundef %67, i32 noundef 1912856427)
  %68 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x52, ptr noundef %x53, i32 noundef %68, i32 noundef 566625579)
  %69 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x54, ptr noundef %x55, i32 noundef %69, i32 noundef 1404826633)
  %70 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x56, ptr noundef %x57, i32 noundef %70, i32 noundef 970277155)
  %71 = load i32, ptr %x57, align 4
  %72 = load i32, ptr %x54, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext 0, i32 noundef %71, i32 noundef %72)
  %73 = load i8, ptr %x59, align 1
  %74 = load i32, ptr %x55, align 4
  %75 = load i32, ptr %x52, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %73, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x61, align 1
  %77 = load i32, ptr %x53, align 4
  %78 = load i32, ptr %x50, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %76, i32 noundef %77, i32 noundef %78)
  %79 = load i8, ptr %x63, align 1
  %80 = load i32, ptr %x51, align 4
  %81 = load i32, ptr %x48, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %79, i32 noundef %80, i32 noundef %81)
  %82 = load i8, ptr %x65, align 1
  %83 = load i32, ptr %x49, align 4
  %84 = load i32, ptr %x46, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %82, i32 noundef %83, i32 noundef %84)
  %85 = load i8, ptr %x67, align 1
  %86 = load i32, ptr %x47, align 4
  %87 = load i32, ptr %x44, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %85, i32 noundef %86, i32 noundef %87)
  %88 = load i8, ptr %x69, align 1
  %89 = load i32, ptr %x45, align 4
  %90 = load i32, ptr %x42, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %88, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x71, align 1
  %conv16 = zext i8 %91 to i32
  %92 = load i32, ptr %x43, align 4
  %add17 = add i32 %conv16, %92
  store i32 %add17, ptr %x72, align 4
  %93 = load i32, ptr %x23, align 4
  %94 = load i32, ptr %x56, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x74, align 1
  %96 = load i32, ptr %x25, align 4
  %97 = load i32, ptr %x58, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %95, i32 noundef %96, i32 noundef %97)
  %98 = load i8, ptr %x76, align 1
  %99 = load i32, ptr %x27, align 4
  %100 = load i32, ptr %x60, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %98, i32 noundef %99, i32 noundef %100)
  %101 = load i8, ptr %x78, align 1
  %102 = load i32, ptr %x29, align 4
  %103 = load i32, ptr %x62, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %101, i32 noundef %102, i32 noundef %103)
  %104 = load i8, ptr %x80, align 1
  %105 = load i32, ptr %x31, align 4
  %106 = load i32, ptr %x64, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %104, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x82, align 1
  %108 = load i32, ptr %x33, align 4
  %109 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %107, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x84, align 1
  %111 = load i32, ptr %x35, align 4
  %112 = load i32, ptr %x68, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x86, align 1
  %114 = load i32, ptr %x37, align 4
  %115 = load i32, ptr %x70, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %115)
  %116 = load i8, ptr %x88, align 1
  %117 = load i32, ptr %x39, align 4
  %118 = load i32, ptr %x72, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %118)
  %119 = load i32, ptr %x1, align 4
  %120 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %120, i64 7
  %121 = load i32, ptr %arrayidx18, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x91, ptr noundef %x92, i32 noundef %119, i32 noundef %121)
  %122 = load i32, ptr %x1, align 4
  %123 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %123, i64 6
  %124 = load i32, ptr %arrayidx19, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x93, ptr noundef %x94, i32 noundef %122, i32 noundef %124)
  %125 = load i32, ptr %x1, align 4
  %126 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %126, i64 5
  %127 = load i32, ptr %arrayidx20, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x95, ptr noundef %x96, i32 noundef %125, i32 noundef %127)
  %128 = load i32, ptr %x1, align 4
  %129 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %129, i64 4
  %130 = load i32, ptr %arrayidx21, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x97, ptr noundef %x98, i32 noundef %128, i32 noundef %130)
  %131 = load i32, ptr %x1, align 4
  %132 = load ptr, ptr %arg2.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %132, i64 3
  %133 = load i32, ptr %arrayidx22, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x99, ptr noundef %x100, i32 noundef %131, i32 noundef %133)
  %134 = load i32, ptr %x1, align 4
  %135 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %135, i64 2
  %136 = load i32, ptr %arrayidx23, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x101, ptr noundef %x102, i32 noundef %134, i32 noundef %136)
  %137 = load i32, ptr %x1, align 4
  %138 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %138, i64 1
  %139 = load i32, ptr %arrayidx24, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x103, ptr noundef %x104, i32 noundef %137, i32 noundef %139)
  %140 = load i32, ptr %x1, align 4
  %141 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %141, i64 0
  %142 = load i32, ptr %arrayidx25, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x105, ptr noundef %x106, i32 noundef %140, i32 noundef %142)
  %143 = load i32, ptr %x106, align 4
  %144 = load i32, ptr %x103, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i32 noundef %143, i32 noundef %144)
  %145 = load i8, ptr %x108, align 1
  %146 = load i32, ptr %x104, align 4
  %147 = load i32, ptr %x101, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %145, i32 noundef %146, i32 noundef %147)
  %148 = load i8, ptr %x110, align 1
  %149 = load i32, ptr %x102, align 4
  %150 = load i32, ptr %x99, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %148, i32 noundef %149, i32 noundef %150)
  %151 = load i8, ptr %x112, align 1
  %152 = load i32, ptr %x100, align 4
  %153 = load i32, ptr %x97, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %151, i32 noundef %152, i32 noundef %153)
  %154 = load i8, ptr %x114, align 1
  %155 = load i32, ptr %x98, align 4
  %156 = load i32, ptr %x95, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %154, i32 noundef %155, i32 noundef %156)
  %157 = load i8, ptr %x116, align 1
  %158 = load i32, ptr %x96, align 4
  %159 = load i32, ptr %x93, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %157, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x118, align 1
  %161 = load i32, ptr %x94, align 4
  %162 = load i32, ptr %x91, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x120, align 1
  %conv26 = zext i8 %163 to i32
  %164 = load i32, ptr %x92, align 4
  %add27 = add i32 %conv26, %164
  store i32 %add27, ptr %x121, align 4
  %165 = load i32, ptr %x75, align 4
  %166 = load i32, ptr %x105, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext 0, i32 noundef %165, i32 noundef %166)
  %167 = load i8, ptr %x123, align 1
  %168 = load i32, ptr %x77, align 4
  %169 = load i32, ptr %x107, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x125, align 1
  %171 = load i32, ptr %x79, align 4
  %172 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x127, align 1
  %174 = load i32, ptr %x81, align 4
  %175 = load i32, ptr %x111, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x129, align 1
  %177 = load i32, ptr %x83, align 4
  %178 = load i32, ptr %x113, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x131, align 1
  %180 = load i32, ptr %x85, align 4
  %181 = load i32, ptr %x115, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %179, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x133, align 1
  %183 = load i32, ptr %x87, align 4
  %184 = load i32, ptr %x117, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x135, align 1
  %186 = load i32, ptr %x89, align 4
  %187 = load i32, ptr %x119, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x137, align 1
  %189 = load i8, ptr %x90, align 1
  %conv28 = zext i8 %189 to i32
  %190 = load i32, ptr %x121, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %188, i32 noundef %conv28, i32 noundef %190)
  %191 = load i32, ptr %x122, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x140, ptr noundef %x141, i32 noundef %191, i32 noundef 1916078453)
  %192 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x142, ptr noundef %x143, i32 noundef %192, i32 noundef -2)
  %193 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x144, ptr noundef %x145, i32 noundef %193, i32 noundef -1)
  %194 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x146, ptr noundef %x147, i32 noundef %194, i32 noundef -1)
  %195 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x148, ptr noundef %x149, i32 noundef %195, i32 noundef -1)
  %196 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x150, ptr noundef %x151, i32 noundef %196, i32 noundef 1912856427)
  %197 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x152, ptr noundef %x153, i32 noundef %197, i32 noundef 566625579)
  %198 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x154, ptr noundef %x155, i32 noundef %198, i32 noundef 1404826633)
  %199 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x156, ptr noundef %x157, i32 noundef %199, i32 noundef 970277155)
  %200 = load i32, ptr %x157, align 4
  %201 = load i32, ptr %x154, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i32 noundef %200, i32 noundef %201)
  %202 = load i8, ptr %x159, align 1
  %203 = load i32, ptr %x155, align 4
  %204 = load i32, ptr %x152, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %202, i32 noundef %203, i32 noundef %204)
  %205 = load i8, ptr %x161, align 1
  %206 = load i32, ptr %x153, align 4
  %207 = load i32, ptr %x150, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %205, i32 noundef %206, i32 noundef %207)
  %208 = load i8, ptr %x163, align 1
  %209 = load i32, ptr %x151, align 4
  %210 = load i32, ptr %x148, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %208, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x165, align 1
  %212 = load i32, ptr %x149, align 4
  %213 = load i32, ptr %x146, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %211, i32 noundef %212, i32 noundef %213)
  %214 = load i8, ptr %x167, align 1
  %215 = load i32, ptr %x147, align 4
  %216 = load i32, ptr %x144, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %214, i32 noundef %215, i32 noundef %216)
  %217 = load i8, ptr %x169, align 1
  %218 = load i32, ptr %x145, align 4
  %219 = load i32, ptr %x142, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %217, i32 noundef %218, i32 noundef %219)
  %220 = load i8, ptr %x171, align 1
  %conv29 = zext i8 %220 to i32
  %221 = load i32, ptr %x143, align 4
  %add30 = add i32 %conv29, %221
  store i32 %add30, ptr %x172, align 4
  %222 = load i32, ptr %x122, align 4
  %223 = load i32, ptr %x156, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext 0, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x174, align 1
  %225 = load i32, ptr %x124, align 4
  %226 = load i32, ptr %x158, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x176, align 1
  %228 = load i32, ptr %x126, align 4
  %229 = load i32, ptr %x160, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x178, align 1
  %231 = load i32, ptr %x128, align 4
  %232 = load i32, ptr %x162, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x180, align 1
  %234 = load i32, ptr %x130, align 4
  %235 = load i32, ptr %x164, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x182, align 1
  %237 = load i32, ptr %x132, align 4
  %238 = load i32, ptr %x166, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x184, align 1
  %240 = load i32, ptr %x134, align 4
  %241 = load i32, ptr %x168, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x186, align 1
  %243 = load i32, ptr %x136, align 4
  %244 = load i32, ptr %x170, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %242, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x188, align 1
  %246 = load i32, ptr %x138, align 4
  %247 = load i32, ptr %x172, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i8, ptr %x190, align 1
  %conv31 = zext i8 %248 to i32
  %249 = load i8, ptr %x139, align 1
  %conv32 = zext i8 %249 to i32
  %add33 = add i32 %conv31, %conv32
  store i32 %add33, ptr %x191, align 4
  %250 = load i32, ptr %x2, align 4
  %251 = load ptr, ptr %arg2.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %251, i64 7
  %252 = load i32, ptr %arrayidx34, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x192, ptr noundef %x193, i32 noundef %250, i32 noundef %252)
  %253 = load i32, ptr %x2, align 4
  %254 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %254, i64 6
  %255 = load i32, ptr %arrayidx35, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x194, ptr noundef %x195, i32 noundef %253, i32 noundef %255)
  %256 = load i32, ptr %x2, align 4
  %257 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %257, i64 5
  %258 = load i32, ptr %arrayidx36, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x196, ptr noundef %x197, i32 noundef %256, i32 noundef %258)
  %259 = load i32, ptr %x2, align 4
  %260 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %260, i64 4
  %261 = load i32, ptr %arrayidx37, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %259, i32 noundef %261)
  %262 = load i32, ptr %x2, align 4
  %263 = load ptr, ptr %arg2.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %263, i64 3
  %264 = load i32, ptr %arrayidx38, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %262, i32 noundef %264)
  %265 = load i32, ptr %x2, align 4
  %266 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %266, i64 2
  %267 = load i32, ptr %arrayidx39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %265, i32 noundef %267)
  %268 = load i32, ptr %x2, align 4
  %269 = load ptr, ptr %arg2.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %269, i64 1
  %270 = load i32, ptr %arrayidx40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %268, i32 noundef %270)
  %271 = load i32, ptr %x2, align 4
  %272 = load ptr, ptr %arg2.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %272, i64 0
  %273 = load i32, ptr %arrayidx41, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %271, i32 noundef %273)
  %274 = load i32, ptr %x207, align 4
  %275 = load i32, ptr %x204, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i32 noundef %274, i32 noundef %275)
  %276 = load i8, ptr %x209, align 1
  %277 = load i32, ptr %x205, align 4
  %278 = load i32, ptr %x202, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %276, i32 noundef %277, i32 noundef %278)
  %279 = load i8, ptr %x211, align 1
  %280 = load i32, ptr %x203, align 4
  %281 = load i32, ptr %x200, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %279, i32 noundef %280, i32 noundef %281)
  %282 = load i8, ptr %x213, align 1
  %283 = load i32, ptr %x201, align 4
  %284 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %282, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x215, align 1
  %286 = load i32, ptr %x199, align 4
  %287 = load i32, ptr %x196, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %285, i32 noundef %286, i32 noundef %287)
  %288 = load i8, ptr %x217, align 1
  %289 = load i32, ptr %x197, align 4
  %290 = load i32, ptr %x194, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %288, i32 noundef %289, i32 noundef %290)
  %291 = load i8, ptr %x219, align 1
  %292 = load i32, ptr %x195, align 4
  %293 = load i32, ptr %x192, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %291, i32 noundef %292, i32 noundef %293)
  %294 = load i8, ptr %x221, align 1
  %conv42 = zext i8 %294 to i32
  %295 = load i32, ptr %x193, align 4
  %add43 = add i32 %conv42, %295
  store i32 %add43, ptr %x222, align 4
  %296 = load i32, ptr %x175, align 4
  %297 = load i32, ptr %x206, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext 0, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x224, align 1
  %299 = load i32, ptr %x177, align 4
  %300 = load i32, ptr %x208, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x226, align 1
  %302 = load i32, ptr %x179, align 4
  %303 = load i32, ptr %x210, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %301, i32 noundef %302, i32 noundef %303)
  %304 = load i8, ptr %x228, align 1
  %305 = load i32, ptr %x181, align 4
  %306 = load i32, ptr %x212, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %304, i32 noundef %305, i32 noundef %306)
  %307 = load i8, ptr %x230, align 1
  %308 = load i32, ptr %x183, align 4
  %309 = load i32, ptr %x214, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %307, i32 noundef %308, i32 noundef %309)
  %310 = load i8, ptr %x232, align 1
  %311 = load i32, ptr %x185, align 4
  %312 = load i32, ptr %x216, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext %310, i32 noundef %311, i32 noundef %312)
  %313 = load i8, ptr %x234, align 1
  %314 = load i32, ptr %x187, align 4
  %315 = load i32, ptr %x218, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %313, i32 noundef %314, i32 noundef %315)
  %316 = load i8, ptr %x236, align 1
  %317 = load i32, ptr %x189, align 4
  %318 = load i32, ptr %x220, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %316, i32 noundef %317, i32 noundef %318)
  %319 = load i8, ptr %x238, align 1
  %320 = load i32, ptr %x191, align 4
  %321 = load i32, ptr %x222, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %319, i32 noundef %320, i32 noundef %321)
  %322 = load i32, ptr %x223, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x241, ptr noundef %x242, i32 noundef %322, i32 noundef 1916078453)
  %323 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x243, ptr noundef %x244, i32 noundef %323, i32 noundef -2)
  %324 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %324, i32 noundef -1)
  %325 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %325, i32 noundef -1)
  %326 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x249, ptr noundef %x250, i32 noundef %326, i32 noundef -1)
  %327 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x251, ptr noundef %x252, i32 noundef %327, i32 noundef 1912856427)
  %328 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x253, ptr noundef %x254, i32 noundef %328, i32 noundef 566625579)
  %329 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x255, ptr noundef %x256, i32 noundef %329, i32 noundef 1404826633)
  %330 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x257, ptr noundef %x258, i32 noundef %330, i32 noundef 970277155)
  %331 = load i32, ptr %x258, align 4
  %332 = load i32, ptr %x255, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext 0, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x260, align 1
  %334 = load i32, ptr %x256, align 4
  %335 = load i32, ptr %x253, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x262, align 1
  %337 = load i32, ptr %x254, align 4
  %338 = load i32, ptr %x251, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x264, align 1
  %340 = load i32, ptr %x252, align 4
  %341 = load i32, ptr %x249, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x266, align 1
  %343 = load i32, ptr %x250, align 4
  %344 = load i32, ptr %x247, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x268, align 1
  %346 = load i32, ptr %x248, align 4
  %347 = load i32, ptr %x245, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i8, ptr %x270, align 1
  %349 = load i32, ptr %x246, align 4
  %350 = load i32, ptr %x243, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %348, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x272, align 1
  %conv44 = zext i8 %351 to i32
  %352 = load i32, ptr %x244, align 4
  %add45 = add i32 %conv44, %352
  store i32 %add45, ptr %x273, align 4
  %353 = load i32, ptr %x223, align 4
  %354 = load i32, ptr %x257, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext 0, i32 noundef %353, i32 noundef %354)
  %355 = load i8, ptr %x275, align 1
  %356 = load i32, ptr %x225, align 4
  %357 = load i32, ptr %x259, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %355, i32 noundef %356, i32 noundef %357)
  %358 = load i8, ptr %x277, align 1
  %359 = load i32, ptr %x227, align 4
  %360 = load i32, ptr %x261, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %358, i32 noundef %359, i32 noundef %360)
  %361 = load i8, ptr %x279, align 1
  %362 = load i32, ptr %x229, align 4
  %363 = load i32, ptr %x263, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i8, ptr %x281, align 1
  %365 = load i32, ptr %x231, align 4
  %366 = load i32, ptr %x265, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %364, i32 noundef %365, i32 noundef %366)
  %367 = load i8, ptr %x283, align 1
  %368 = load i32, ptr %x233, align 4
  %369 = load i32, ptr %x267, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %367, i32 noundef %368, i32 noundef %369)
  %370 = load i8, ptr %x285, align 1
  %371 = load i32, ptr %x235, align 4
  %372 = load i32, ptr %x269, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %370, i32 noundef %371, i32 noundef %372)
  %373 = load i8, ptr %x287, align 1
  %374 = load i32, ptr %x237, align 4
  %375 = load i32, ptr %x271, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %373, i32 noundef %374, i32 noundef %375)
  %376 = load i8, ptr %x289, align 1
  %377 = load i32, ptr %x239, align 4
  %378 = load i32, ptr %x273, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %376, i32 noundef %377, i32 noundef %378)
  %379 = load i8, ptr %x291, align 1
  %conv46 = zext i8 %379 to i32
  %380 = load i8, ptr %x240, align 1
  %conv47 = zext i8 %380 to i32
  %add48 = add i32 %conv46, %conv47
  store i32 %add48, ptr %x292, align 4
  %381 = load i32, ptr %x3, align 4
  %382 = load ptr, ptr %arg2.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %382, i64 7
  %383 = load i32, ptr %arrayidx49, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x293, ptr noundef %x294, i32 noundef %381, i32 noundef %383)
  %384 = load i32, ptr %x3, align 4
  %385 = load ptr, ptr %arg2.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %385, i64 6
  %386 = load i32, ptr %arrayidx50, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x295, ptr noundef %x296, i32 noundef %384, i32 noundef %386)
  %387 = load i32, ptr %x3, align 4
  %388 = load ptr, ptr %arg2.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %388, i64 5
  %389 = load i32, ptr %arrayidx51, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x297, ptr noundef %x298, i32 noundef %387, i32 noundef %389)
  %390 = load i32, ptr %x3, align 4
  %391 = load ptr, ptr %arg2.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %391, i64 4
  %392 = load i32, ptr %arrayidx52, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x299, ptr noundef %x300, i32 noundef %390, i32 noundef %392)
  %393 = load i32, ptr %x3, align 4
  %394 = load ptr, ptr %arg2.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %394, i64 3
  %395 = load i32, ptr %arrayidx53, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x301, ptr noundef %x302, i32 noundef %393, i32 noundef %395)
  %396 = load i32, ptr %x3, align 4
  %397 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %397, i64 2
  %398 = load i32, ptr %arrayidx54, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x303, ptr noundef %x304, i32 noundef %396, i32 noundef %398)
  %399 = load i32, ptr %x3, align 4
  %400 = load ptr, ptr %arg2.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %400, i64 1
  %401 = load i32, ptr %arrayidx55, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x305, ptr noundef %x306, i32 noundef %399, i32 noundef %401)
  %402 = load i32, ptr %x3, align 4
  %403 = load ptr, ptr %arg2.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %403, i64 0
  %404 = load i32, ptr %arrayidx56, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x307, ptr noundef %x308, i32 noundef %402, i32 noundef %404)
  %405 = load i32, ptr %x308, align 4
  %406 = load i32, ptr %x305, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext 0, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x310, align 1
  %408 = load i32, ptr %x306, align 4
  %409 = load i32, ptr %x303, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x312, align 1
  %411 = load i32, ptr %x304, align 4
  %412 = load i32, ptr %x301, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x314, align 1
  %414 = load i32, ptr %x302, align 4
  %415 = load i32, ptr %x299, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x316, align 1
  %417 = load i32, ptr %x300, align 4
  %418 = load i32, ptr %x297, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %416, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x318, align 1
  %420 = load i32, ptr %x298, align 4
  %421 = load i32, ptr %x295, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x320, align 1
  %423 = load i32, ptr %x296, align 4
  %424 = load i32, ptr %x293, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x322, align 1
  %conv57 = zext i8 %425 to i32
  %426 = load i32, ptr %x294, align 4
  %add58 = add i32 %conv57, %426
  store i32 %add58, ptr %x323, align 4
  %427 = load i32, ptr %x276, align 4
  %428 = load i32, ptr %x307, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext 0, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x325, align 1
  %430 = load i32, ptr %x278, align 4
  %431 = load i32, ptr %x309, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x327, align 1
  %433 = load i32, ptr %x280, align 4
  %434 = load i32, ptr %x311, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %432, i32 noundef %433, i32 noundef %434)
  %435 = load i8, ptr %x329, align 1
  %436 = load i32, ptr %x282, align 4
  %437 = load i32, ptr %x313, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %435, i32 noundef %436, i32 noundef %437)
  %438 = load i8, ptr %x331, align 1
  %439 = load i32, ptr %x284, align 4
  %440 = load i32, ptr %x315, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %438, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x333, align 1
  %442 = load i32, ptr %x286, align 4
  %443 = load i32, ptr %x317, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x335, align 1
  %445 = load i32, ptr %x288, align 4
  %446 = load i32, ptr %x319, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x337, align 1
  %448 = load i32, ptr %x290, align 4
  %449 = load i32, ptr %x321, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x339, align 1
  %451 = load i32, ptr %x292, align 4
  %452 = load i32, ptr %x323, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i32, ptr %x324, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %453, i32 noundef 1916078453)
  %454 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %454, i32 noundef -2)
  %455 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %455, i32 noundef -1)
  %456 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x348, ptr noundef %x349, i32 noundef %456, i32 noundef -1)
  %457 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x350, ptr noundef %x351, i32 noundef %457, i32 noundef -1)
  %458 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x352, ptr noundef %x353, i32 noundef %458, i32 noundef 1912856427)
  %459 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x354, ptr noundef %x355, i32 noundef %459, i32 noundef 566625579)
  %460 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x356, ptr noundef %x357, i32 noundef %460, i32 noundef 1404826633)
  %461 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x358, ptr noundef %x359, i32 noundef %461, i32 noundef 970277155)
  %462 = load i32, ptr %x359, align 4
  %463 = load i32, ptr %x356, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext 0, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x361, align 1
  %465 = load i32, ptr %x357, align 4
  %466 = load i32, ptr %x354, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x363, align 1
  %468 = load i32, ptr %x355, align 4
  %469 = load i32, ptr %x352, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x365, align 1
  %471 = load i32, ptr %x353, align 4
  %472 = load i32, ptr %x350, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x367, align 1
  %474 = load i32, ptr %x351, align 4
  %475 = load i32, ptr %x348, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x369, align 1
  %477 = load i32, ptr %x349, align 4
  %478 = load i32, ptr %x346, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x371, align 1
  %480 = load i32, ptr %x347, align 4
  %481 = load i32, ptr %x344, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i8, ptr %x373, align 1
  %conv59 = zext i8 %482 to i32
  %483 = load i32, ptr %x345, align 4
  %add60 = add i32 %conv59, %483
  store i32 %add60, ptr %x374, align 4
  %484 = load i32, ptr %x324, align 4
  %485 = load i32, ptr %x358, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext 0, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x376, align 1
  %487 = load i32, ptr %x326, align 4
  %488 = load i32, ptr %x360, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x378, align 1
  %490 = load i32, ptr %x328, align 4
  %491 = load i32, ptr %x362, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %489, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x380, align 1
  %493 = load i32, ptr %x330, align 4
  %494 = load i32, ptr %x364, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x382, align 1
  %496 = load i32, ptr %x332, align 4
  %497 = load i32, ptr %x366, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %495, i32 noundef %496, i32 noundef %497)
  %498 = load i8, ptr %x384, align 1
  %499 = load i32, ptr %x334, align 4
  %500 = load i32, ptr %x368, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %498, i32 noundef %499, i32 noundef %500)
  %501 = load i8, ptr %x386, align 1
  %502 = load i32, ptr %x336, align 4
  %503 = load i32, ptr %x370, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %501, i32 noundef %502, i32 noundef %503)
  %504 = load i8, ptr %x388, align 1
  %505 = load i32, ptr %x338, align 4
  %506 = load i32, ptr %x372, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %504, i32 noundef %505, i32 noundef %506)
  %507 = load i8, ptr %x390, align 1
  %508 = load i32, ptr %x340, align 4
  %509 = load i32, ptr %x374, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %507, i32 noundef %508, i32 noundef %509)
  %510 = load i8, ptr %x392, align 1
  %conv61 = zext i8 %510 to i32
  %511 = load i8, ptr %x341, align 1
  %conv62 = zext i8 %511 to i32
  %add63 = add i32 %conv61, %conv62
  store i32 %add63, ptr %x393, align 4
  %512 = load i32, ptr %x4, align 4
  %513 = load ptr, ptr %arg2.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %513, i64 7
  %514 = load i32, ptr %arrayidx64, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x394, ptr noundef %x395, i32 noundef %512, i32 noundef %514)
  %515 = load i32, ptr %x4, align 4
  %516 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %516, i64 6
  %517 = load i32, ptr %arrayidx65, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x396, ptr noundef %x397, i32 noundef %515, i32 noundef %517)
  %518 = load i32, ptr %x4, align 4
  %519 = load ptr, ptr %arg2.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %519, i64 5
  %520 = load i32, ptr %arrayidx66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x398, ptr noundef %x399, i32 noundef %518, i32 noundef %520)
  %521 = load i32, ptr %x4, align 4
  %522 = load ptr, ptr %arg2.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %522, i64 4
  %523 = load i32, ptr %arrayidx67, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x400, ptr noundef %x401, i32 noundef %521, i32 noundef %523)
  %524 = load i32, ptr %x4, align 4
  %525 = load ptr, ptr %arg2.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %525, i64 3
  %526 = load i32, ptr %arrayidx68, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x402, ptr noundef %x403, i32 noundef %524, i32 noundef %526)
  %527 = load i32, ptr %x4, align 4
  %528 = load ptr, ptr %arg2.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %528, i64 2
  %529 = load i32, ptr %arrayidx69, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x404, ptr noundef %x405, i32 noundef %527, i32 noundef %529)
  %530 = load i32, ptr %x4, align 4
  %531 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %531, i64 1
  %532 = load i32, ptr %arrayidx70, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x406, ptr noundef %x407, i32 noundef %530, i32 noundef %532)
  %533 = load i32, ptr %x4, align 4
  %534 = load ptr, ptr %arg2.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %534, i64 0
  %535 = load i32, ptr %arrayidx71, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x408, ptr noundef %x409, i32 noundef %533, i32 noundef %535)
  %536 = load i32, ptr %x409, align 4
  %537 = load i32, ptr %x406, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext 0, i32 noundef %536, i32 noundef %537)
  %538 = load i8, ptr %x411, align 1
  %539 = load i32, ptr %x407, align 4
  %540 = load i32, ptr %x404, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %538, i32 noundef %539, i32 noundef %540)
  %541 = load i8, ptr %x413, align 1
  %542 = load i32, ptr %x405, align 4
  %543 = load i32, ptr %x402, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %541, i32 noundef %542, i32 noundef %543)
  %544 = load i8, ptr %x415, align 1
  %545 = load i32, ptr %x403, align 4
  %546 = load i32, ptr %x400, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %544, i32 noundef %545, i32 noundef %546)
  %547 = load i8, ptr %x417, align 1
  %548 = load i32, ptr %x401, align 4
  %549 = load i32, ptr %x398, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %547, i32 noundef %548, i32 noundef %549)
  %550 = load i8, ptr %x419, align 1
  %551 = load i32, ptr %x399, align 4
  %552 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %550, i32 noundef %551, i32 noundef %552)
  %553 = load i8, ptr %x421, align 1
  %554 = load i32, ptr %x397, align 4
  %555 = load i32, ptr %x394, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %553, i32 noundef %554, i32 noundef %555)
  %556 = load i8, ptr %x423, align 1
  %conv72 = zext i8 %556 to i32
  %557 = load i32, ptr %x395, align 4
  %add73 = add i32 %conv72, %557
  store i32 %add73, ptr %x424, align 4
  %558 = load i32, ptr %x377, align 4
  %559 = load i32, ptr %x408, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext 0, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x426, align 1
  %561 = load i32, ptr %x379, align 4
  %562 = load i32, ptr %x410, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x428, align 1
  %564 = load i32, ptr %x381, align 4
  %565 = load i32, ptr %x412, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x430, align 1
  %567 = load i32, ptr %x383, align 4
  %568 = load i32, ptr %x414, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i8, ptr %x432, align 1
  %570 = load i32, ptr %x385, align 4
  %571 = load i32, ptr %x416, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %569, i32 noundef %570, i32 noundef %571)
  %572 = load i8, ptr %x434, align 1
  %573 = load i32, ptr %x387, align 4
  %574 = load i32, ptr %x418, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %572, i32 noundef %573, i32 noundef %574)
  %575 = load i8, ptr %x436, align 1
  %576 = load i32, ptr %x389, align 4
  %577 = load i32, ptr %x420, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %575, i32 noundef %576, i32 noundef %577)
  %578 = load i8, ptr %x438, align 1
  %579 = load i32, ptr %x391, align 4
  %580 = load i32, ptr %x422, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %578, i32 noundef %579, i32 noundef %580)
  %581 = load i8, ptr %x440, align 1
  %582 = load i32, ptr %x393, align 4
  %583 = load i32, ptr %x424, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %581, i32 noundef %582, i32 noundef %583)
  %584 = load i32, ptr %x425, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x443, ptr noundef %x444, i32 noundef %584, i32 noundef 1916078453)
  %585 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x445, ptr noundef %x446, i32 noundef %585, i32 noundef -2)
  %586 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x447, ptr noundef %x448, i32 noundef %586, i32 noundef -1)
  %587 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x449, ptr noundef %x450, i32 noundef %587, i32 noundef -1)
  %588 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x451, ptr noundef %x452, i32 noundef %588, i32 noundef -1)
  %589 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x453, ptr noundef %x454, i32 noundef %589, i32 noundef 1912856427)
  %590 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %590, i32 noundef 566625579)
  %591 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x457, ptr noundef %x458, i32 noundef %591, i32 noundef 1404826633)
  %592 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x459, ptr noundef %x460, i32 noundef %592, i32 noundef 970277155)
  %593 = load i32, ptr %x460, align 4
  %594 = load i32, ptr %x457, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext 0, i32 noundef %593, i32 noundef %594)
  %595 = load i8, ptr %x462, align 1
  %596 = load i32, ptr %x458, align 4
  %597 = load i32, ptr %x455, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %595, i32 noundef %596, i32 noundef %597)
  %598 = load i8, ptr %x464, align 1
  %599 = load i32, ptr %x456, align 4
  %600 = load i32, ptr %x453, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %598, i32 noundef %599, i32 noundef %600)
  %601 = load i8, ptr %x466, align 1
  %602 = load i32, ptr %x454, align 4
  %603 = load i32, ptr %x451, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %601, i32 noundef %602, i32 noundef %603)
  %604 = load i8, ptr %x468, align 1
  %605 = load i32, ptr %x452, align 4
  %606 = load i32, ptr %x449, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %604, i32 noundef %605, i32 noundef %606)
  %607 = load i8, ptr %x470, align 1
  %608 = load i32, ptr %x450, align 4
  %609 = load i32, ptr %x447, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %607, i32 noundef %608, i32 noundef %609)
  %610 = load i8, ptr %x472, align 1
  %611 = load i32, ptr %x448, align 4
  %612 = load i32, ptr %x445, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %610, i32 noundef %611, i32 noundef %612)
  %613 = load i8, ptr %x474, align 1
  %conv74 = zext i8 %613 to i32
  %614 = load i32, ptr %x446, align 4
  %add75 = add i32 %conv74, %614
  store i32 %add75, ptr %x475, align 4
  %615 = load i32, ptr %x425, align 4
  %616 = load i32, ptr %x459, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x476, ptr noundef %x477, i8 noundef zeroext 0, i32 noundef %615, i32 noundef %616)
  %617 = load i8, ptr %x477, align 1
  %618 = load i32, ptr %x427, align 4
  %619 = load i32, ptr %x461, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x478, ptr noundef %x479, i8 noundef zeroext %617, i32 noundef %618, i32 noundef %619)
  %620 = load i8, ptr %x479, align 1
  %621 = load i32, ptr %x429, align 4
  %622 = load i32, ptr %x463, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext %620, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x481, align 1
  %624 = load i32, ptr %x431, align 4
  %625 = load i32, ptr %x465, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i8, ptr %x483, align 1
  %627 = load i32, ptr %x433, align 4
  %628 = load i32, ptr %x467, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %626, i32 noundef %627, i32 noundef %628)
  %629 = load i8, ptr %x485, align 1
  %630 = load i32, ptr %x435, align 4
  %631 = load i32, ptr %x469, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %629, i32 noundef %630, i32 noundef %631)
  %632 = load i8, ptr %x487, align 1
  %633 = load i32, ptr %x437, align 4
  %634 = load i32, ptr %x471, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %632, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x489, align 1
  %636 = load i32, ptr %x439, align 4
  %637 = load i32, ptr %x473, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x491, align 1
  %639 = load i32, ptr %x441, align 4
  %640 = load i32, ptr %x475, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x493, align 1
  %conv76 = zext i8 %641 to i32
  %642 = load i8, ptr %x442, align 1
  %conv77 = zext i8 %642 to i32
  %add78 = add i32 %conv76, %conv77
  store i32 %add78, ptr %x494, align 4
  %643 = load i32, ptr %x5, align 4
  %644 = load ptr, ptr %arg2.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %644, i64 7
  %645 = load i32, ptr %arrayidx79, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x495, ptr noundef %x496, i32 noundef %643, i32 noundef %645)
  %646 = load i32, ptr %x5, align 4
  %647 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %647, i64 6
  %648 = load i32, ptr %arrayidx80, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x497, ptr noundef %x498, i32 noundef %646, i32 noundef %648)
  %649 = load i32, ptr %x5, align 4
  %650 = load ptr, ptr %arg2.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %650, i64 5
  %651 = load i32, ptr %arrayidx81, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x499, ptr noundef %x500, i32 noundef %649, i32 noundef %651)
  %652 = load i32, ptr %x5, align 4
  %653 = load ptr, ptr %arg2.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %653, i64 4
  %654 = load i32, ptr %arrayidx82, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x501, ptr noundef %x502, i32 noundef %652, i32 noundef %654)
  %655 = load i32, ptr %x5, align 4
  %656 = load ptr, ptr %arg2.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %656, i64 3
  %657 = load i32, ptr %arrayidx83, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x503, ptr noundef %x504, i32 noundef %655, i32 noundef %657)
  %658 = load i32, ptr %x5, align 4
  %659 = load ptr, ptr %arg2.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %659, i64 2
  %660 = load i32, ptr %arrayidx84, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x505, ptr noundef %x506, i32 noundef %658, i32 noundef %660)
  %661 = load i32, ptr %x5, align 4
  %662 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %662, i64 1
  %663 = load i32, ptr %arrayidx85, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x507, ptr noundef %x508, i32 noundef %661, i32 noundef %663)
  %664 = load i32, ptr %x5, align 4
  %665 = load ptr, ptr %arg2.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %665, i64 0
  %666 = load i32, ptr %arrayidx86, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x509, ptr noundef %x510, i32 noundef %664, i32 noundef %666)
  %667 = load i32, ptr %x510, align 4
  %668 = load i32, ptr %x507, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext 0, i32 noundef %667, i32 noundef %668)
  %669 = load i8, ptr %x512, align 1
  %670 = load i32, ptr %x508, align 4
  %671 = load i32, ptr %x505, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %669, i32 noundef %670, i32 noundef %671)
  %672 = load i8, ptr %x514, align 1
  %673 = load i32, ptr %x506, align 4
  %674 = load i32, ptr %x503, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %672, i32 noundef %673, i32 noundef %674)
  %675 = load i8, ptr %x516, align 1
  %676 = load i32, ptr %x504, align 4
  %677 = load i32, ptr %x501, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %675, i32 noundef %676, i32 noundef %677)
  %678 = load i8, ptr %x518, align 1
  %679 = load i32, ptr %x502, align 4
  %680 = load i32, ptr %x499, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %678, i32 noundef %679, i32 noundef %680)
  %681 = load i8, ptr %x520, align 1
  %682 = load i32, ptr %x500, align 4
  %683 = load i32, ptr %x497, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %681, i32 noundef %682, i32 noundef %683)
  %684 = load i8, ptr %x522, align 1
  %685 = load i32, ptr %x498, align 4
  %686 = load i32, ptr %x495, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %684, i32 noundef %685, i32 noundef %686)
  %687 = load i8, ptr %x524, align 1
  %conv87 = zext i8 %687 to i32
  %688 = load i32, ptr %x496, align 4
  %add88 = add i32 %conv87, %688
  store i32 %add88, ptr %x525, align 4
  %689 = load i32, ptr %x478, align 4
  %690 = load i32, ptr %x509, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext 0, i32 noundef %689, i32 noundef %690)
  %691 = load i8, ptr %x527, align 1
  %692 = load i32, ptr %x480, align 4
  %693 = load i32, ptr %x511, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %691, i32 noundef %692, i32 noundef %693)
  %694 = load i8, ptr %x529, align 1
  %695 = load i32, ptr %x482, align 4
  %696 = load i32, ptr %x513, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %694, i32 noundef %695, i32 noundef %696)
  %697 = load i8, ptr %x531, align 1
  %698 = load i32, ptr %x484, align 4
  %699 = load i32, ptr %x515, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %697, i32 noundef %698, i32 noundef %699)
  %700 = load i8, ptr %x533, align 1
  %701 = load i32, ptr %x486, align 4
  %702 = load i32, ptr %x517, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %700, i32 noundef %701, i32 noundef %702)
  %703 = load i8, ptr %x535, align 1
  %704 = load i32, ptr %x488, align 4
  %705 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %703, i32 noundef %704, i32 noundef %705)
  %706 = load i8, ptr %x537, align 1
  %707 = load i32, ptr %x490, align 4
  %708 = load i32, ptr %x521, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %706, i32 noundef %707, i32 noundef %708)
  %709 = load i8, ptr %x539, align 1
  %710 = load i32, ptr %x492, align 4
  %711 = load i32, ptr %x523, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext %709, i32 noundef %710, i32 noundef %711)
  %712 = load i8, ptr %x541, align 1
  %713 = load i32, ptr %x494, align 4
  %714 = load i32, ptr %x525, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %712, i32 noundef %713, i32 noundef %714)
  %715 = load i32, ptr %x526, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x544, ptr noundef %x545, i32 noundef %715, i32 noundef 1916078453)
  %716 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x546, ptr noundef %x547, i32 noundef %716, i32 noundef -2)
  %717 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x548, ptr noundef %x549, i32 noundef %717, i32 noundef -1)
  %718 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x550, ptr noundef %x551, i32 noundef %718, i32 noundef -1)
  %719 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x552, ptr noundef %x553, i32 noundef %719, i32 noundef -1)
  %720 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x554, ptr noundef %x555, i32 noundef %720, i32 noundef 1912856427)
  %721 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x556, ptr noundef %x557, i32 noundef %721, i32 noundef 566625579)
  %722 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x558, ptr noundef %x559, i32 noundef %722, i32 noundef 1404826633)
  %723 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x560, ptr noundef %x561, i32 noundef %723, i32 noundef 970277155)
  %724 = load i32, ptr %x561, align 4
  %725 = load i32, ptr %x558, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x562, ptr noundef %x563, i8 noundef zeroext 0, i32 noundef %724, i32 noundef %725)
  %726 = load i8, ptr %x563, align 1
  %727 = load i32, ptr %x559, align 4
  %728 = load i32, ptr %x556, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x564, ptr noundef %x565, i8 noundef zeroext %726, i32 noundef %727, i32 noundef %728)
  %729 = load i8, ptr %x565, align 1
  %730 = load i32, ptr %x557, align 4
  %731 = load i32, ptr %x554, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x566, ptr noundef %x567, i8 noundef zeroext %729, i32 noundef %730, i32 noundef %731)
  %732 = load i8, ptr %x567, align 1
  %733 = load i32, ptr %x555, align 4
  %734 = load i32, ptr %x552, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x568, ptr noundef %x569, i8 noundef zeroext %732, i32 noundef %733, i32 noundef %734)
  %735 = load i8, ptr %x569, align 1
  %736 = load i32, ptr %x553, align 4
  %737 = load i32, ptr %x550, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x570, ptr noundef %x571, i8 noundef zeroext %735, i32 noundef %736, i32 noundef %737)
  %738 = load i8, ptr %x571, align 1
  %739 = load i32, ptr %x551, align 4
  %740 = load i32, ptr %x548, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x572, ptr noundef %x573, i8 noundef zeroext %738, i32 noundef %739, i32 noundef %740)
  %741 = load i8, ptr %x573, align 1
  %742 = load i32, ptr %x549, align 4
  %743 = load i32, ptr %x546, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x574, ptr noundef %x575, i8 noundef zeroext %741, i32 noundef %742, i32 noundef %743)
  %744 = load i8, ptr %x575, align 1
  %conv89 = zext i8 %744 to i32
  %745 = load i32, ptr %x547, align 4
  %add90 = add i32 %conv89, %745
  store i32 %add90, ptr %x576, align 4
  %746 = load i32, ptr %x526, align 4
  %747 = load i32, ptr %x560, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext 0, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x578, align 1
  %749 = load i32, ptr %x528, align 4
  %750 = load i32, ptr %x562, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x579, ptr noundef %x580, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x580, align 1
  %752 = load i32, ptr %x530, align 4
  %753 = load i32, ptr %x564, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x581, ptr noundef %x582, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x582, align 1
  %755 = load i32, ptr %x532, align 4
  %756 = load i32, ptr %x566, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x583, ptr noundef %x584, i8 noundef zeroext %754, i32 noundef %755, i32 noundef %756)
  %757 = load i8, ptr %x584, align 1
  %758 = load i32, ptr %x534, align 4
  %759 = load i32, ptr %x568, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext %757, i32 noundef %758, i32 noundef %759)
  %760 = load i8, ptr %x586, align 1
  %761 = load i32, ptr %x536, align 4
  %762 = load i32, ptr %x570, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %760, i32 noundef %761, i32 noundef %762)
  %763 = load i8, ptr %x588, align 1
  %764 = load i32, ptr %x538, align 4
  %765 = load i32, ptr %x572, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %763, i32 noundef %764, i32 noundef %765)
  %766 = load i8, ptr %x590, align 1
  %767 = load i32, ptr %x540, align 4
  %768 = load i32, ptr %x574, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %766, i32 noundef %767, i32 noundef %768)
  %769 = load i8, ptr %x592, align 1
  %770 = load i32, ptr %x542, align 4
  %771 = load i32, ptr %x576, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %769, i32 noundef %770, i32 noundef %771)
  %772 = load i8, ptr %x594, align 1
  %conv91 = zext i8 %772 to i32
  %773 = load i8, ptr %x543, align 1
  %conv92 = zext i8 %773 to i32
  %add93 = add i32 %conv91, %conv92
  store i32 %add93, ptr %x595, align 4
  %774 = load i32, ptr %x6, align 4
  %775 = load ptr, ptr %arg2.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %775, i64 7
  %776 = load i32, ptr %arrayidx94, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x596, ptr noundef %x597, i32 noundef %774, i32 noundef %776)
  %777 = load i32, ptr %x6, align 4
  %778 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %778, i64 6
  %779 = load i32, ptr %arrayidx95, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x598, ptr noundef %x599, i32 noundef %777, i32 noundef %779)
  %780 = load i32, ptr %x6, align 4
  %781 = load ptr, ptr %arg2.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %781, i64 5
  %782 = load i32, ptr %arrayidx96, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x600, ptr noundef %x601, i32 noundef %780, i32 noundef %782)
  %783 = load i32, ptr %x6, align 4
  %784 = load ptr, ptr %arg2.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %784, i64 4
  %785 = load i32, ptr %arrayidx97, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x602, ptr noundef %x603, i32 noundef %783, i32 noundef %785)
  %786 = load i32, ptr %x6, align 4
  %787 = load ptr, ptr %arg2.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %787, i64 3
  %788 = load i32, ptr %arrayidx98, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x604, ptr noundef %x605, i32 noundef %786, i32 noundef %788)
  %789 = load i32, ptr %x6, align 4
  %790 = load ptr, ptr %arg2.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %790, i64 2
  %791 = load i32, ptr %arrayidx99, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x606, ptr noundef %x607, i32 noundef %789, i32 noundef %791)
  %792 = load i32, ptr %x6, align 4
  %793 = load ptr, ptr %arg2.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %793, i64 1
  %794 = load i32, ptr %arrayidx100, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x608, ptr noundef %x609, i32 noundef %792, i32 noundef %794)
  %795 = load i32, ptr %x6, align 4
  %796 = load ptr, ptr %arg2.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %796, i64 0
  %797 = load i32, ptr %arrayidx101, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x610, ptr noundef %x611, i32 noundef %795, i32 noundef %797)
  %798 = load i32, ptr %x611, align 4
  %799 = load i32, ptr %x608, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x612, ptr noundef %x613, i8 noundef zeroext 0, i32 noundef %798, i32 noundef %799)
  %800 = load i8, ptr %x613, align 1
  %801 = load i32, ptr %x609, align 4
  %802 = load i32, ptr %x606, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x614, ptr noundef %x615, i8 noundef zeroext %800, i32 noundef %801, i32 noundef %802)
  %803 = load i8, ptr %x615, align 1
  %804 = load i32, ptr %x607, align 4
  %805 = load i32, ptr %x604, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x616, ptr noundef %x617, i8 noundef zeroext %803, i32 noundef %804, i32 noundef %805)
  %806 = load i8, ptr %x617, align 1
  %807 = load i32, ptr %x605, align 4
  %808 = load i32, ptr %x602, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x618, ptr noundef %x619, i8 noundef zeroext %806, i32 noundef %807, i32 noundef %808)
  %809 = load i8, ptr %x619, align 1
  %810 = load i32, ptr %x603, align 4
  %811 = load i32, ptr %x600, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x620, ptr noundef %x621, i8 noundef zeroext %809, i32 noundef %810, i32 noundef %811)
  %812 = load i8, ptr %x621, align 1
  %813 = load i32, ptr %x601, align 4
  %814 = load i32, ptr %x598, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x622, ptr noundef %x623, i8 noundef zeroext %812, i32 noundef %813, i32 noundef %814)
  %815 = load i8, ptr %x623, align 1
  %816 = load i32, ptr %x599, align 4
  %817 = load i32, ptr %x596, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x624, ptr noundef %x625, i8 noundef zeroext %815, i32 noundef %816, i32 noundef %817)
  %818 = load i8, ptr %x625, align 1
  %conv102 = zext i8 %818 to i32
  %819 = load i32, ptr %x597, align 4
  %add103 = add i32 %conv102, %819
  store i32 %add103, ptr %x626, align 4
  %820 = load i32, ptr %x579, align 4
  %821 = load i32, ptr %x610, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext 0, i32 noundef %820, i32 noundef %821)
  %822 = load i8, ptr %x628, align 1
  %823 = load i32, ptr %x581, align 4
  %824 = load i32, ptr %x612, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext %822, i32 noundef %823, i32 noundef %824)
  %825 = load i8, ptr %x630, align 1
  %826 = load i32, ptr %x583, align 4
  %827 = load i32, ptr %x614, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %825, i32 noundef %826, i32 noundef %827)
  %828 = load i8, ptr %x632, align 1
  %829 = load i32, ptr %x585, align 4
  %830 = load i32, ptr %x616, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext %828, i32 noundef %829, i32 noundef %830)
  %831 = load i8, ptr %x634, align 1
  %832 = load i32, ptr %x587, align 4
  %833 = load i32, ptr %x618, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %831, i32 noundef %832, i32 noundef %833)
  %834 = load i8, ptr %x636, align 1
  %835 = load i32, ptr %x589, align 4
  %836 = load i32, ptr %x620, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %834, i32 noundef %835, i32 noundef %836)
  %837 = load i8, ptr %x638, align 1
  %838 = load i32, ptr %x591, align 4
  %839 = load i32, ptr %x622, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %837, i32 noundef %838, i32 noundef %839)
  %840 = load i8, ptr %x640, align 1
  %841 = load i32, ptr %x593, align 4
  %842 = load i32, ptr %x624, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %840, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x642, align 1
  %844 = load i32, ptr %x595, align 4
  %845 = load i32, ptr %x626, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i32, ptr %x627, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x645, ptr noundef %x646, i32 noundef %846, i32 noundef 1916078453)
  %847 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x647, ptr noundef %x648, i32 noundef %847, i32 noundef -2)
  %848 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x649, ptr noundef %x650, i32 noundef %848, i32 noundef -1)
  %849 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x651, ptr noundef %x652, i32 noundef %849, i32 noundef -1)
  %850 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x653, ptr noundef %x654, i32 noundef %850, i32 noundef -1)
  %851 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x655, ptr noundef %x656, i32 noundef %851, i32 noundef 1912856427)
  %852 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x657, ptr noundef %x658, i32 noundef %852, i32 noundef 566625579)
  %853 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x659, ptr noundef %x660, i32 noundef %853, i32 noundef 1404826633)
  %854 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x661, ptr noundef %x662, i32 noundef %854, i32 noundef 970277155)
  %855 = load i32, ptr %x662, align 4
  %856 = load i32, ptr %x659, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext 0, i32 noundef %855, i32 noundef %856)
  %857 = load i8, ptr %x664, align 1
  %858 = load i32, ptr %x660, align 4
  %859 = load i32, ptr %x657, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x665, ptr noundef %x666, i8 noundef zeroext %857, i32 noundef %858, i32 noundef %859)
  %860 = load i8, ptr %x666, align 1
  %861 = load i32, ptr %x658, align 4
  %862 = load i32, ptr %x655, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext %860, i32 noundef %861, i32 noundef %862)
  %863 = load i8, ptr %x668, align 1
  %864 = load i32, ptr %x656, align 4
  %865 = load i32, ptr %x653, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x669, ptr noundef %x670, i8 noundef zeroext %863, i32 noundef %864, i32 noundef %865)
  %866 = load i8, ptr %x670, align 1
  %867 = load i32, ptr %x654, align 4
  %868 = load i32, ptr %x651, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x671, ptr noundef %x672, i8 noundef zeroext %866, i32 noundef %867, i32 noundef %868)
  %869 = load i8, ptr %x672, align 1
  %870 = load i32, ptr %x652, align 4
  %871 = load i32, ptr %x649, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x673, ptr noundef %x674, i8 noundef zeroext %869, i32 noundef %870, i32 noundef %871)
  %872 = load i8, ptr %x674, align 1
  %873 = load i32, ptr %x650, align 4
  %874 = load i32, ptr %x647, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x675, ptr noundef %x676, i8 noundef zeroext %872, i32 noundef %873, i32 noundef %874)
  %875 = load i8, ptr %x676, align 1
  %conv104 = zext i8 %875 to i32
  %876 = load i32, ptr %x648, align 4
  %add105 = add i32 %conv104, %876
  store i32 %add105, ptr %x677, align 4
  %877 = load i32, ptr %x627, align 4
  %878 = load i32, ptr %x661, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x678, ptr noundef %x679, i8 noundef zeroext 0, i32 noundef %877, i32 noundef %878)
  %879 = load i8, ptr %x679, align 1
  %880 = load i32, ptr %x629, align 4
  %881 = load i32, ptr %x663, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x680, ptr noundef %x681, i8 noundef zeroext %879, i32 noundef %880, i32 noundef %881)
  %882 = load i8, ptr %x681, align 1
  %883 = load i32, ptr %x631, align 4
  %884 = load i32, ptr %x665, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x682, ptr noundef %x683, i8 noundef zeroext %882, i32 noundef %883, i32 noundef %884)
  %885 = load i8, ptr %x683, align 1
  %886 = load i32, ptr %x633, align 4
  %887 = load i32, ptr %x667, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x684, ptr noundef %x685, i8 noundef zeroext %885, i32 noundef %886, i32 noundef %887)
  %888 = load i8, ptr %x685, align 1
  %889 = load i32, ptr %x635, align 4
  %890 = load i32, ptr %x669, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x686, ptr noundef %x687, i8 noundef zeroext %888, i32 noundef %889, i32 noundef %890)
  %891 = load i8, ptr %x687, align 1
  %892 = load i32, ptr %x637, align 4
  %893 = load i32, ptr %x671, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x688, ptr noundef %x689, i8 noundef zeroext %891, i32 noundef %892, i32 noundef %893)
  %894 = load i8, ptr %x689, align 1
  %895 = load i32, ptr %x639, align 4
  %896 = load i32, ptr %x673, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x690, ptr noundef %x691, i8 noundef zeroext %894, i32 noundef %895, i32 noundef %896)
  %897 = load i8, ptr %x691, align 1
  %898 = load i32, ptr %x641, align 4
  %899 = load i32, ptr %x675, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x692, ptr noundef %x693, i8 noundef zeroext %897, i32 noundef %898, i32 noundef %899)
  %900 = load i8, ptr %x693, align 1
  %901 = load i32, ptr %x643, align 4
  %902 = load i32, ptr %x677, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x694, ptr noundef %x695, i8 noundef zeroext %900, i32 noundef %901, i32 noundef %902)
  %903 = load i8, ptr %x695, align 1
  %conv106 = zext i8 %903 to i32
  %904 = load i8, ptr %x644, align 1
  %conv107 = zext i8 %904 to i32
  %add108 = add i32 %conv106, %conv107
  store i32 %add108, ptr %x696, align 4
  %905 = load i32, ptr %x7, align 4
  %906 = load ptr, ptr %arg2.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %906, i64 7
  %907 = load i32, ptr %arrayidx109, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x697, ptr noundef %x698, i32 noundef %905, i32 noundef %907)
  %908 = load i32, ptr %x7, align 4
  %909 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %909, i64 6
  %910 = load i32, ptr %arrayidx110, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x699, ptr noundef %x700, i32 noundef %908, i32 noundef %910)
  %911 = load i32, ptr %x7, align 4
  %912 = load ptr, ptr %arg2.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %912, i64 5
  %913 = load i32, ptr %arrayidx111, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x701, ptr noundef %x702, i32 noundef %911, i32 noundef %913)
  %914 = load i32, ptr %x7, align 4
  %915 = load ptr, ptr %arg2.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %915, i64 4
  %916 = load i32, ptr %arrayidx112, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x703, ptr noundef %x704, i32 noundef %914, i32 noundef %916)
  %917 = load i32, ptr %x7, align 4
  %918 = load ptr, ptr %arg2.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %918, i64 3
  %919 = load i32, ptr %arrayidx113, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x705, ptr noundef %x706, i32 noundef %917, i32 noundef %919)
  %920 = load i32, ptr %x7, align 4
  %921 = load ptr, ptr %arg2.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %921, i64 2
  %922 = load i32, ptr %arrayidx114, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x707, ptr noundef %x708, i32 noundef %920, i32 noundef %922)
  %923 = load i32, ptr %x7, align 4
  %924 = load ptr, ptr %arg2.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %924, i64 1
  %925 = load i32, ptr %arrayidx115, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x709, ptr noundef %x710, i32 noundef %923, i32 noundef %925)
  %926 = load i32, ptr %x7, align 4
  %927 = load ptr, ptr %arg2.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %927, i64 0
  %928 = load i32, ptr %arrayidx116, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x711, ptr noundef %x712, i32 noundef %926, i32 noundef %928)
  %929 = load i32, ptr %x712, align 4
  %930 = load i32, ptr %x709, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x713, ptr noundef %x714, i8 noundef zeroext 0, i32 noundef %929, i32 noundef %930)
  %931 = load i8, ptr %x714, align 1
  %932 = load i32, ptr %x710, align 4
  %933 = load i32, ptr %x707, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x715, ptr noundef %x716, i8 noundef zeroext %931, i32 noundef %932, i32 noundef %933)
  %934 = load i8, ptr %x716, align 1
  %935 = load i32, ptr %x708, align 4
  %936 = load i32, ptr %x705, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x717, ptr noundef %x718, i8 noundef zeroext %934, i32 noundef %935, i32 noundef %936)
  %937 = load i8, ptr %x718, align 1
  %938 = load i32, ptr %x706, align 4
  %939 = load i32, ptr %x703, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x719, ptr noundef %x720, i8 noundef zeroext %937, i32 noundef %938, i32 noundef %939)
  %940 = load i8, ptr %x720, align 1
  %941 = load i32, ptr %x704, align 4
  %942 = load i32, ptr %x701, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x721, ptr noundef %x722, i8 noundef zeroext %940, i32 noundef %941, i32 noundef %942)
  %943 = load i8, ptr %x722, align 1
  %944 = load i32, ptr %x702, align 4
  %945 = load i32, ptr %x699, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x723, ptr noundef %x724, i8 noundef zeroext %943, i32 noundef %944, i32 noundef %945)
  %946 = load i8, ptr %x724, align 1
  %947 = load i32, ptr %x700, align 4
  %948 = load i32, ptr %x697, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x725, ptr noundef %x726, i8 noundef zeroext %946, i32 noundef %947, i32 noundef %948)
  %949 = load i8, ptr %x726, align 1
  %conv117 = zext i8 %949 to i32
  %950 = load i32, ptr %x698, align 4
  %add118 = add i32 %conv117, %950
  store i32 %add118, ptr %x727, align 4
  %951 = load i32, ptr %x680, align 4
  %952 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x728, ptr noundef %x729, i8 noundef zeroext 0, i32 noundef %951, i32 noundef %952)
  %953 = load i8, ptr %x729, align 1
  %954 = load i32, ptr %x682, align 4
  %955 = load i32, ptr %x713, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x730, ptr noundef %x731, i8 noundef zeroext %953, i32 noundef %954, i32 noundef %955)
  %956 = load i8, ptr %x731, align 1
  %957 = load i32, ptr %x684, align 4
  %958 = load i32, ptr %x715, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x732, ptr noundef %x733, i8 noundef zeroext %956, i32 noundef %957, i32 noundef %958)
  %959 = load i8, ptr %x733, align 1
  %960 = load i32, ptr %x686, align 4
  %961 = load i32, ptr %x717, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x734, ptr noundef %x735, i8 noundef zeroext %959, i32 noundef %960, i32 noundef %961)
  %962 = load i8, ptr %x735, align 1
  %963 = load i32, ptr %x688, align 4
  %964 = load i32, ptr %x719, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x736, ptr noundef %x737, i8 noundef zeroext %962, i32 noundef %963, i32 noundef %964)
  %965 = load i8, ptr %x737, align 1
  %966 = load i32, ptr %x690, align 4
  %967 = load i32, ptr %x721, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x738, ptr noundef %x739, i8 noundef zeroext %965, i32 noundef %966, i32 noundef %967)
  %968 = load i8, ptr %x739, align 1
  %969 = load i32, ptr %x692, align 4
  %970 = load i32, ptr %x723, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x740, ptr noundef %x741, i8 noundef zeroext %968, i32 noundef %969, i32 noundef %970)
  %971 = load i8, ptr %x741, align 1
  %972 = load i32, ptr %x694, align 4
  %973 = load i32, ptr %x725, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x742, ptr noundef %x743, i8 noundef zeroext %971, i32 noundef %972, i32 noundef %973)
  %974 = load i8, ptr %x743, align 1
  %975 = load i32, ptr %x696, align 4
  %976 = load i32, ptr %x727, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x744, ptr noundef %x745, i8 noundef zeroext %974, i32 noundef %975, i32 noundef %976)
  %977 = load i32, ptr %x728, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x746, ptr noundef %x747, i32 noundef %977, i32 noundef 1916078453)
  %978 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x748, ptr noundef %x749, i32 noundef %978, i32 noundef -2)
  %979 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x750, ptr noundef %x751, i32 noundef %979, i32 noundef -1)
  %980 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x752, ptr noundef %x753, i32 noundef %980, i32 noundef -1)
  %981 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x754, ptr noundef %x755, i32 noundef %981, i32 noundef -1)
  %982 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x756, ptr noundef %x757, i32 noundef %982, i32 noundef 1912856427)
  %983 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x758, ptr noundef %x759, i32 noundef %983, i32 noundef 566625579)
  %984 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x760, ptr noundef %x761, i32 noundef %984, i32 noundef 1404826633)
  %985 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x762, ptr noundef %x763, i32 noundef %985, i32 noundef 970277155)
  %986 = load i32, ptr %x763, align 4
  %987 = load i32, ptr %x760, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x764, ptr noundef %x765, i8 noundef zeroext 0, i32 noundef %986, i32 noundef %987)
  %988 = load i8, ptr %x765, align 1
  %989 = load i32, ptr %x761, align 4
  %990 = load i32, ptr %x758, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x766, ptr noundef %x767, i8 noundef zeroext %988, i32 noundef %989, i32 noundef %990)
  %991 = load i8, ptr %x767, align 1
  %992 = load i32, ptr %x759, align 4
  %993 = load i32, ptr %x756, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x768, ptr noundef %x769, i8 noundef zeroext %991, i32 noundef %992, i32 noundef %993)
  %994 = load i8, ptr %x769, align 1
  %995 = load i32, ptr %x757, align 4
  %996 = load i32, ptr %x754, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x770, ptr noundef %x771, i8 noundef zeroext %994, i32 noundef %995, i32 noundef %996)
  %997 = load i8, ptr %x771, align 1
  %998 = load i32, ptr %x755, align 4
  %999 = load i32, ptr %x752, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x772, ptr noundef %x773, i8 noundef zeroext %997, i32 noundef %998, i32 noundef %999)
  %1000 = load i8, ptr %x773, align 1
  %1001 = load i32, ptr %x753, align 4
  %1002 = load i32, ptr %x750, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x774, ptr noundef %x775, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef %1002)
  %1003 = load i8, ptr %x775, align 1
  %1004 = load i32, ptr %x751, align 4
  %1005 = load i32, ptr %x748, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x776, ptr noundef %x777, i8 noundef zeroext %1003, i32 noundef %1004, i32 noundef %1005)
  %1006 = load i8, ptr %x777, align 1
  %conv119 = zext i8 %1006 to i32
  %1007 = load i32, ptr %x749, align 4
  %add120 = add i32 %conv119, %1007
  store i32 %add120, ptr %x778, align 4
  %1008 = load i32, ptr %x728, align 4
  %1009 = load i32, ptr %x762, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x779, ptr noundef %x780, i8 noundef zeroext 0, i32 noundef %1008, i32 noundef %1009)
  %1010 = load i8, ptr %x780, align 1
  %1011 = load i32, ptr %x730, align 4
  %1012 = load i32, ptr %x764, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x781, ptr noundef %x782, i8 noundef zeroext %1010, i32 noundef %1011, i32 noundef %1012)
  %1013 = load i8, ptr %x782, align 1
  %1014 = load i32, ptr %x732, align 4
  %1015 = load i32, ptr %x766, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x783, ptr noundef %x784, i8 noundef zeroext %1013, i32 noundef %1014, i32 noundef %1015)
  %1016 = load i8, ptr %x784, align 1
  %1017 = load i32, ptr %x734, align 4
  %1018 = load i32, ptr %x768, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x785, ptr noundef %x786, i8 noundef zeroext %1016, i32 noundef %1017, i32 noundef %1018)
  %1019 = load i8, ptr %x786, align 1
  %1020 = load i32, ptr %x736, align 4
  %1021 = load i32, ptr %x770, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x787, ptr noundef %x788, i8 noundef zeroext %1019, i32 noundef %1020, i32 noundef %1021)
  %1022 = load i8, ptr %x788, align 1
  %1023 = load i32, ptr %x738, align 4
  %1024 = load i32, ptr %x772, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x789, ptr noundef %x790, i8 noundef zeroext %1022, i32 noundef %1023, i32 noundef %1024)
  %1025 = load i8, ptr %x790, align 1
  %1026 = load i32, ptr %x740, align 4
  %1027 = load i32, ptr %x774, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x791, ptr noundef %x792, i8 noundef zeroext %1025, i32 noundef %1026, i32 noundef %1027)
  %1028 = load i8, ptr %x792, align 1
  %1029 = load i32, ptr %x742, align 4
  %1030 = load i32, ptr %x776, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x793, ptr noundef %x794, i8 noundef zeroext %1028, i32 noundef %1029, i32 noundef %1030)
  %1031 = load i8, ptr %x794, align 1
  %1032 = load i32, ptr %x744, align 4
  %1033 = load i32, ptr %x778, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x795, ptr noundef %x796, i8 noundef zeroext %1031, i32 noundef %1032, i32 noundef %1033)
  %1034 = load i8, ptr %x796, align 1
  %conv121 = zext i8 %1034 to i32
  %1035 = load i8, ptr %x745, align 1
  %conv122 = zext i8 %1035 to i32
  %add123 = add i32 %conv121, %conv122
  store i32 %add123, ptr %x797, align 4
  %1036 = load i32, ptr %x781, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x798, ptr noundef %x799, i8 noundef zeroext 0, i32 noundef %1036, i32 noundef 970277155)
  %1037 = load i8, ptr %x799, align 1
  %1038 = load i32, ptr %x783, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x800, ptr noundef %x801, i8 noundef zeroext %1037, i32 noundef %1038, i32 noundef 1404826633)
  %1039 = load i8, ptr %x801, align 1
  %1040 = load i32, ptr %x785, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x802, ptr noundef %x803, i8 noundef zeroext %1039, i32 noundef %1040, i32 noundef 566625579)
  %1041 = load i8, ptr %x803, align 1
  %1042 = load i32, ptr %x787, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x804, ptr noundef %x805, i8 noundef zeroext %1041, i32 noundef %1042, i32 noundef 1912856427)
  %1043 = load i8, ptr %x805, align 1
  %1044 = load i32, ptr %x789, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x806, ptr noundef %x807, i8 noundef zeroext %1043, i32 noundef %1044, i32 noundef -1)
  %1045 = load i8, ptr %x807, align 1
  %1046 = load i32, ptr %x791, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x808, ptr noundef %x809, i8 noundef zeroext %1045, i32 noundef %1046, i32 noundef -1)
  %1047 = load i8, ptr %x809, align 1
  %1048 = load i32, ptr %x793, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x810, ptr noundef %x811, i8 noundef zeroext %1047, i32 noundef %1048, i32 noundef -1)
  %1049 = load i8, ptr %x811, align 1
  %1050 = load i32, ptr %x795, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x812, ptr noundef %x813, i8 noundef zeroext %1049, i32 noundef %1050, i32 noundef -2)
  %1051 = load i8, ptr %x813, align 1
  %1052 = load i32, ptr %x797, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x814, ptr noundef %x815, i8 noundef zeroext %1051, i32 noundef %1052, i32 noundef 0)
  %1053 = load i8, ptr %x815, align 1
  %1054 = load i32, ptr %x798, align 4
  %1055 = load i32, ptr %x781, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x816, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i8, ptr %x815, align 1
  %1057 = load i32, ptr %x800, align 4
  %1058 = load i32, ptr %x783, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x817, i8 noundef zeroext %1056, i32 noundef %1057, i32 noundef %1058)
  %1059 = load i8, ptr %x815, align 1
  %1060 = load i32, ptr %x802, align 4
  %1061 = load i32, ptr %x785, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x818, i8 noundef zeroext %1059, i32 noundef %1060, i32 noundef %1061)
  %1062 = load i8, ptr %x815, align 1
  %1063 = load i32, ptr %x804, align 4
  %1064 = load i32, ptr %x787, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x819, i8 noundef zeroext %1062, i32 noundef %1063, i32 noundef %1064)
  %1065 = load i8, ptr %x815, align 1
  %1066 = load i32, ptr %x806, align 4
  %1067 = load i32, ptr %x789, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x820, i8 noundef zeroext %1065, i32 noundef %1066, i32 noundef %1067)
  %1068 = load i8, ptr %x815, align 1
  %1069 = load i32, ptr %x808, align 4
  %1070 = load i32, ptr %x791, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x821, i8 noundef zeroext %1068, i32 noundef %1069, i32 noundef %1070)
  %1071 = load i8, ptr %x815, align 1
  %1072 = load i32, ptr %x810, align 4
  %1073 = load i32, ptr %x793, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x822, i8 noundef zeroext %1071, i32 noundef %1072, i32 noundef %1073)
  %1074 = load i8, ptr %x815, align 1
  %1075 = load i32, ptr %x812, align 4
  %1076 = load i32, ptr %x795, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x823, i8 noundef zeroext %1074, i32 noundef %1075, i32 noundef %1076)
  %1077 = load i32, ptr %x816, align 4
  %1078 = load ptr, ptr %out1.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %1078, i64 0
  store i32 %1077, ptr %arrayidx124, align 4
  %1079 = load i32, ptr %x817, align 4
  %1080 = load ptr, ptr %out1.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %1080, i64 1
  store i32 %1079, ptr %arrayidx125, align 4
  %1081 = load i32, ptr %x818, align 4
  %1082 = load ptr, ptr %out1.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %1082, i64 2
  store i32 %1081, ptr %arrayidx126, align 4
  %1083 = load i32, ptr %x819, align 4
  %1084 = load ptr, ptr %out1.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %1084, i64 3
  store i32 %1083, ptr %arrayidx127, align 4
  %1085 = load i32, ptr %x820, align 4
  %1086 = load ptr, ptr %out1.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %1086, i64 4
  store i32 %1085, ptr %arrayidx128, align 4
  %1087 = load i32, ptr %x821, align 4
  %1088 = load ptr, ptr %out1.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %1088, i64 5
  store i32 %1087, ptr %arrayidx129, align 4
  %1089 = load i32, ptr %x822, align 4
  %1090 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %1090, i64 6
  store i32 %1089, ptr %arrayidx130, align 4
  %1091 = load i32, ptr %x823, align 4
  %1092 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %1092, i64 7
  store i32 %1091, ptr %arrayidx131, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
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
  %x36 = alloca i8, align 1
  %x37 = alloca i32, align 4
  %x38 = alloca i8, align 1
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
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i8, align 1
  %x60 = alloca i32, align 4
  %x61 = alloca i8, align 1
  %x62 = alloca i32, align 4
  %x63 = alloca i8, align 1
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
  %x66 = alloca i32, align 4
  %x67 = alloca i8, align 1
  %x68 = alloca i32, align 4
  %x69 = alloca i8, align 1
  %x70 = alloca i32, align 4
  %x71 = alloca i8, align 1
  %x72 = alloca i32, align 4
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
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %x89 = alloca i32, align 4
  %x90 = alloca i8, align 1
  %x91 = alloca i32, align 4
  %x92 = alloca i32, align 4
  %x93 = alloca i32, align 4
  %x94 = alloca i32, align 4
  %x95 = alloca i32, align 4
  %x96 = alloca i32, align 4
  %x97 = alloca i32, align 4
  %x98 = alloca i32, align 4
  %x99 = alloca i32, align 4
  %x100 = alloca i32, align 4
  %x101 = alloca i32, align 4
  %x102 = alloca i32, align 4
  %x103 = alloca i32, align 4
  %x104 = alloca i32, align 4
  %x105 = alloca i32, align 4
  %x106 = alloca i32, align 4
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
  %x120 = alloca i8, align 1
  %x121 = alloca i32, align 4
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
  %x141 = alloca i32, align 4
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
  %x144 = alloca i32, align 4
  %x145 = alloca i32, align 4
  %x146 = alloca i32, align 4
  %x147 = alloca i32, align 4
  %x148 = alloca i32, align 4
  %x149 = alloca i32, align 4
  %x150 = alloca i32, align 4
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
  %x153 = alloca i32, align 4
  %x154 = alloca i32, align 4
  %x155 = alloca i32, align 4
  %x156 = alloca i32, align 4
  %x157 = alloca i32, align 4
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
  %x192 = alloca i32, align 4
  %x193 = alloca i32, align 4
  %x194 = alloca i32, align 4
  %x195 = alloca i32, align 4
  %x196 = alloca i32, align 4
  %x197 = alloca i32, align 4
  %x198 = alloca i32, align 4
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
  %x201 = alloca i32, align 4
  %x202 = alloca i32, align 4
  %x203 = alloca i32, align 4
  %x204 = alloca i32, align 4
  %x205 = alloca i32, align 4
  %x206 = alloca i32, align 4
  %x207 = alloca i32, align 4
  %x208 = alloca i32, align 4
  %x209 = alloca i8, align 1
  %x210 = alloca i32, align 4
  %x211 = alloca i8, align 1
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
  %x242 = alloca i32, align 4
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
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
  %x258 = alloca i32, align 4
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
  %x293 = alloca i32, align 4
  %x294 = alloca i32, align 4
  %x295 = alloca i32, align 4
  %x296 = alloca i32, align 4
  %x297 = alloca i32, align 4
  %x298 = alloca i32, align 4
  %x299 = alloca i32, align 4
  %x300 = alloca i32, align 4
  %x301 = alloca i32, align 4
  %x302 = alloca i32, align 4
  %x303 = alloca i32, align 4
  %x304 = alloca i32, align 4
  %x305 = alloca i32, align 4
  %x306 = alloca i32, align 4
  %x307 = alloca i32, align 4
  %x308 = alloca i32, align 4
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
  %x353 = alloca i32, align 4
  %x354 = alloca i32, align 4
  %x355 = alloca i32, align 4
  %x356 = alloca i32, align 4
  %x357 = alloca i32, align 4
  %x358 = alloca i32, align 4
  %x359 = alloca i32, align 4
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
  %x375 = alloca i32, align 4
  %x376 = alloca i8, align 1
  %x377 = alloca i32, align 4
  %x378 = alloca i8, align 1
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
  %x394 = alloca i32, align 4
  %x395 = alloca i32, align 4
  %x396 = alloca i32, align 4
  %x397 = alloca i32, align 4
  %x398 = alloca i32, align 4
  %x399 = alloca i32, align 4
  %x400 = alloca i32, align 4
  %x401 = alloca i32, align 4
  %x402 = alloca i32, align 4
  %x403 = alloca i32, align 4
  %x404 = alloca i32, align 4
  %x405 = alloca i32, align 4
  %x406 = alloca i32, align 4
  %x407 = alloca i32, align 4
  %x408 = alloca i32, align 4
  %x409 = alloca i32, align 4
  %x410 = alloca i32, align 4
  %x411 = alloca i8, align 1
  %x412 = alloca i32, align 4
  %x413 = alloca i8, align 1
  %x414 = alloca i32, align 4
  %x415 = alloca i8, align 1
  %x416 = alloca i32, align 4
  %x417 = alloca i8, align 1
  %x418 = alloca i32, align 4
  %x419 = alloca i8, align 1
  %x420 = alloca i32, align 4
  %x421 = alloca i8, align 1
  %x422 = alloca i32, align 4
  %x423 = alloca i8, align 1
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
  %x444 = alloca i32, align 4
  %x445 = alloca i32, align 4
  %x446 = alloca i32, align 4
  %x447 = alloca i32, align 4
  %x448 = alloca i32, align 4
  %x449 = alloca i32, align 4
  %x450 = alloca i32, align 4
  %x451 = alloca i32, align 4
  %x452 = alloca i32, align 4
  %x453 = alloca i32, align 4
  %x454 = alloca i32, align 4
  %x455 = alloca i32, align 4
  %x456 = alloca i32, align 4
  %x457 = alloca i32, align 4
  %x458 = alloca i32, align 4
  %x459 = alloca i32, align 4
  %x460 = alloca i32, align 4
  %x461 = alloca i32, align 4
  %x462 = alloca i8, align 1
  %x463 = alloca i32, align 4
  %x464 = alloca i8, align 1
  %x465 = alloca i32, align 4
  %x466 = alloca i8, align 1
  %x467 = alloca i32, align 4
  %x468 = alloca i8, align 1
  %x469 = alloca i32, align 4
  %x470 = alloca i8, align 1
  %x471 = alloca i32, align 4
  %x472 = alloca i8, align 1
  %x473 = alloca i32, align 4
  %x474 = alloca i8, align 1
  %x475 = alloca i32, align 4
  %x476 = alloca i32, align 4
  %x477 = alloca i8, align 1
  %x478 = alloca i32, align 4
  %x479 = alloca i8, align 1
  %x480 = alloca i32, align 4
  %x481 = alloca i8, align 1
  %x482 = alloca i32, align 4
  %x483 = alloca i8, align 1
  %x484 = alloca i32, align 4
  %x485 = alloca i8, align 1
  %x486 = alloca i32, align 4
  %x487 = alloca i8, align 1
  %x488 = alloca i32, align 4
  %x489 = alloca i8, align 1
  %x490 = alloca i32, align 4
  %x491 = alloca i8, align 1
  %x492 = alloca i32, align 4
  %x493 = alloca i8, align 1
  %x494 = alloca i32, align 4
  %x495 = alloca i32, align 4
  %x496 = alloca i32, align 4
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
  %x510 = alloca i32, align 4
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
  %x526 = alloca i32, align 4
  %x527 = alloca i8, align 1
  %x528 = alloca i32, align 4
  %x529 = alloca i8, align 1
  %x530 = alloca i32, align 4
  %x531 = alloca i8, align 1
  %x532 = alloca i32, align 4
  %x533 = alloca i8, align 1
  %x534 = alloca i32, align 4
  %x535 = alloca i8, align 1
  %x536 = alloca i32, align 4
  %x537 = alloca i8, align 1
  %x538 = alloca i32, align 4
  %x539 = alloca i8, align 1
  %x540 = alloca i32, align 4
  %x541 = alloca i8, align 1
  %x542 = alloca i32, align 4
  %x543 = alloca i8, align 1
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
  %x554 = alloca i32, align 4
  %x555 = alloca i32, align 4
  %x556 = alloca i32, align 4
  %x557 = alloca i32, align 4
  %x558 = alloca i32, align 4
  %x559 = alloca i32, align 4
  %x560 = alloca i32, align 4
  %x561 = alloca i32, align 4
  %x562 = alloca i32, align 4
  %x563 = alloca i8, align 1
  %x564 = alloca i32, align 4
  %x565 = alloca i8, align 1
  %x566 = alloca i32, align 4
  %x567 = alloca i8, align 1
  %x568 = alloca i32, align 4
  %x569 = alloca i8, align 1
  %x570 = alloca i32, align 4
  %x571 = alloca i8, align 1
  %x572 = alloca i32, align 4
  %x573 = alloca i8, align 1
  %x574 = alloca i32, align 4
  %x575 = alloca i8, align 1
  %x576 = alloca i32, align 4
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
  %x596 = alloca i32, align 4
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
  %x613 = alloca i8, align 1
  %x614 = alloca i32, align 4
  %x615 = alloca i8, align 1
  %x616 = alloca i32, align 4
  %x617 = alloca i8, align 1
  %x618 = alloca i32, align 4
  %x619 = alloca i8, align 1
  %x620 = alloca i32, align 4
  %x621 = alloca i8, align 1
  %x622 = alloca i32, align 4
  %x623 = alloca i8, align 1
  %x624 = alloca i32, align 4
  %x625 = alloca i8, align 1
  %x626 = alloca i32, align 4
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
  %x646 = alloca i32, align 4
  %x647 = alloca i32, align 4
  %x648 = alloca i32, align 4
  %x649 = alloca i32, align 4
  %x650 = alloca i32, align 4
  %x651 = alloca i32, align 4
  %x652 = alloca i32, align 4
  %x653 = alloca i32, align 4
  %x654 = alloca i32, align 4
  %x655 = alloca i32, align 4
  %x656 = alloca i32, align 4
  %x657 = alloca i32, align 4
  %x658 = alloca i32, align 4
  %x659 = alloca i32, align 4
  %x660 = alloca i32, align 4
  %x661 = alloca i32, align 4
  %x662 = alloca i32, align 4
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
  %x678 = alloca i32, align 4
  %x679 = alloca i8, align 1
  %x680 = alloca i32, align 4
  %x681 = alloca i8, align 1
  %x682 = alloca i32, align 4
  %x683 = alloca i8, align 1
  %x684 = alloca i32, align 4
  %x685 = alloca i8, align 1
  %x686 = alloca i32, align 4
  %x687 = alloca i8, align 1
  %x688 = alloca i32, align 4
  %x689 = alloca i8, align 1
  %x690 = alloca i32, align 4
  %x691 = alloca i8, align 1
  %x692 = alloca i32, align 4
  %x693 = alloca i8, align 1
  %x694 = alloca i32, align 4
  %x695 = alloca i8, align 1
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
  %x728 = alloca i32, align 4
  %x729 = alloca i8, align 1
  %x730 = alloca i32, align 4
  %x731 = alloca i8, align 1
  %x732 = alloca i32, align 4
  %x733 = alloca i8, align 1
  %x734 = alloca i32, align 4
  %x735 = alloca i8, align 1
  %x736 = alloca i32, align 4
  %x737 = alloca i8, align 1
  %x738 = alloca i32, align 4
  %x739 = alloca i8, align 1
  %x740 = alloca i32, align 4
  %x741 = alloca i8, align 1
  %x742 = alloca i32, align 4
  %x743 = alloca i8, align 1
  %x744 = alloca i32, align 4
  %x745 = alloca i8, align 1
  %x746 = alloca i32, align 4
  %x747 = alloca i32, align 4
  %x748 = alloca i32, align 4
  %x749 = alloca i32, align 4
  %x750 = alloca i32, align 4
  %x751 = alloca i32, align 4
  %x752 = alloca i32, align 4
  %x753 = alloca i32, align 4
  %x754 = alloca i32, align 4
  %x755 = alloca i32, align 4
  %x756 = alloca i32, align 4
  %x757 = alloca i32, align 4
  %x758 = alloca i32, align 4
  %x759 = alloca i32, align 4
  %x760 = alloca i32, align 4
  %x761 = alloca i32, align 4
  %x762 = alloca i32, align 4
  %x763 = alloca i32, align 4
  %x764 = alloca i32, align 4
  %x765 = alloca i8, align 1
  %x766 = alloca i32, align 4
  %x767 = alloca i8, align 1
  %x768 = alloca i32, align 4
  %x769 = alloca i8, align 1
  %x770 = alloca i32, align 4
  %x771 = alloca i8, align 1
  %x772 = alloca i32, align 4
  %x773 = alloca i8, align 1
  %x774 = alloca i32, align 4
  %x775 = alloca i8, align 1
  %x776 = alloca i32, align 4
  %x777 = alloca i8, align 1
  %x778 = alloca i32, align 4
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
  %x790 = alloca i8, align 1
  %x791 = alloca i32, align 4
  %x792 = alloca i8, align 1
  %x793 = alloca i32, align 4
  %x794 = alloca i8, align 1
  %x795 = alloca i32, align 4
  %x796 = alloca i8, align 1
  %x797 = alloca i32, align 4
  %x798 = alloca i32, align 4
  %x799 = alloca i8, align 1
  %x800 = alloca i32, align 4
  %x801 = alloca i8, align 1
  %x802 = alloca i32, align 4
  %x803 = alloca i8, align 1
  %x804 = alloca i32, align 4
  %x805 = alloca i8, align 1
  %x806 = alloca i32, align 4
  %x807 = alloca i8, align 1
  %x808 = alloca i32, align 4
  %x809 = alloca i8, align 1
  %x810 = alloca i32, align 4
  %x811 = alloca i8, align 1
  %x812 = alloca i32, align 4
  %x813 = alloca i8, align 1
  %x814 = alloca i32, align 4
  %x815 = alloca i8, align 1
  %x816 = alloca i32, align 4
  %x817 = alloca i32, align 4
  %x818 = alloca i32, align 4
  %x819 = alloca i32, align 4
  %x820 = alloca i32, align 4
  %x821 = alloca i32, align 4
  %x822 = alloca i32, align 4
  %x823 = alloca i32, align 4
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
  %17 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 7
  %18 = load i32, ptr %arrayidx8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef %18)
  %19 = load i32, ptr %x8, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %20, i64 6
  %21 = load i32, ptr %arrayidx9, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %19, i32 noundef %21)
  %22 = load i32, ptr %x8, align 4
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %23, i64 5
  %24 = load i32, ptr %arrayidx10, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %22, i32 noundef %24)
  %25 = load i32, ptr %x8, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %26, i64 4
  %27 = load i32, ptr %arrayidx11, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %25, i32 noundef %27)
  %28 = load i32, ptr %x8, align 4
  %29 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %29, i64 3
  %30 = load i32, ptr %arrayidx12, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %28, i32 noundef %30)
  %31 = load i32, ptr %x8, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %31, i32 noundef %33)
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 1
  %36 = load i32, ptr %arrayidx14, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %34, i32 noundef %36)
  %37 = load i32, ptr %x8, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %37, i32 noundef %39)
  %40 = load i32, ptr %x24, align 4
  %41 = load i32, ptr %x21, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %40, i32 noundef %41)
  %42 = load i8, ptr %x26, align 1
  %43 = load i32, ptr %x22, align 4
  %44 = load i32, ptr %x19, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %44)
  %45 = load i8, ptr %x28, align 1
  %46 = load i32, ptr %x20, align 4
  %47 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %47)
  %48 = load i8, ptr %x30, align 1
  %49 = load i32, ptr %x18, align 4
  %50 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %50)
  %51 = load i8, ptr %x32, align 1
  %52 = load i32, ptr %x16, align 4
  %53 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x34, align 1
  %55 = load i32, ptr %x14, align 4
  %56 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x36, align 1
  %58 = load i32, ptr %x12, align 4
  %59 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x38, align 1
  %conv = zext i8 %60 to i32
  %61 = load i32, ptr %x10, align 4
  %add = add i32 %conv, %61
  store i32 %add, ptr %x39, align 4
  %62 = load i32, ptr %x23, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x40, ptr noundef %x41, i32 noundef %62, i32 noundef 1916078453)
  %63 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x42, ptr noundef %x43, i32 noundef %63, i32 noundef -2)
  %64 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x44, ptr noundef %x45, i32 noundef %64, i32 noundef -1)
  %65 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x46, ptr noundef %x47, i32 noundef %65, i32 noundef -1)
  %66 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x48, ptr noundef %x49, i32 noundef %66, i32 noundef -1)
  %67 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x50, ptr noundef %x51, i32 noundef %67, i32 noundef 1912856427)
  %68 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x52, ptr noundef %x53, i32 noundef %68, i32 noundef 566625579)
  %69 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x54, ptr noundef %x55, i32 noundef %69, i32 noundef 1404826633)
  %70 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x56, ptr noundef %x57, i32 noundef %70, i32 noundef 970277155)
  %71 = load i32, ptr %x57, align 4
  %72 = load i32, ptr %x54, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext 0, i32 noundef %71, i32 noundef %72)
  %73 = load i8, ptr %x59, align 1
  %74 = load i32, ptr %x55, align 4
  %75 = load i32, ptr %x52, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %73, i32 noundef %74, i32 noundef %75)
  %76 = load i8, ptr %x61, align 1
  %77 = load i32, ptr %x53, align 4
  %78 = load i32, ptr %x50, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %76, i32 noundef %77, i32 noundef %78)
  %79 = load i8, ptr %x63, align 1
  %80 = load i32, ptr %x51, align 4
  %81 = load i32, ptr %x48, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %79, i32 noundef %80, i32 noundef %81)
  %82 = load i8, ptr %x65, align 1
  %83 = load i32, ptr %x49, align 4
  %84 = load i32, ptr %x46, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %82, i32 noundef %83, i32 noundef %84)
  %85 = load i8, ptr %x67, align 1
  %86 = load i32, ptr %x47, align 4
  %87 = load i32, ptr %x44, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %85, i32 noundef %86, i32 noundef %87)
  %88 = load i8, ptr %x69, align 1
  %89 = load i32, ptr %x45, align 4
  %90 = load i32, ptr %x42, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %88, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x71, align 1
  %conv16 = zext i8 %91 to i32
  %92 = load i32, ptr %x43, align 4
  %add17 = add i32 %conv16, %92
  store i32 %add17, ptr %x72, align 4
  %93 = load i32, ptr %x23, align 4
  %94 = load i32, ptr %x56, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x74, align 1
  %96 = load i32, ptr %x25, align 4
  %97 = load i32, ptr %x58, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %95, i32 noundef %96, i32 noundef %97)
  %98 = load i8, ptr %x76, align 1
  %99 = load i32, ptr %x27, align 4
  %100 = load i32, ptr %x60, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %98, i32 noundef %99, i32 noundef %100)
  %101 = load i8, ptr %x78, align 1
  %102 = load i32, ptr %x29, align 4
  %103 = load i32, ptr %x62, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %101, i32 noundef %102, i32 noundef %103)
  %104 = load i8, ptr %x80, align 1
  %105 = load i32, ptr %x31, align 4
  %106 = load i32, ptr %x64, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %104, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x82, align 1
  %108 = load i32, ptr %x33, align 4
  %109 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %107, i32 noundef %108, i32 noundef %109)
  %110 = load i8, ptr %x84, align 1
  %111 = load i32, ptr %x35, align 4
  %112 = load i32, ptr %x68, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %110, i32 noundef %111, i32 noundef %112)
  %113 = load i8, ptr %x86, align 1
  %114 = load i32, ptr %x37, align 4
  %115 = load i32, ptr %x70, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %113, i32 noundef %114, i32 noundef %115)
  %116 = load i8, ptr %x88, align 1
  %117 = load i32, ptr %x39, align 4
  %118 = load i32, ptr %x72, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %118)
  %119 = load i32, ptr %x1, align 4
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %120, i64 7
  %121 = load i32, ptr %arrayidx18, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x91, ptr noundef %x92, i32 noundef %119, i32 noundef %121)
  %122 = load i32, ptr %x1, align 4
  %123 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %123, i64 6
  %124 = load i32, ptr %arrayidx19, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x93, ptr noundef %x94, i32 noundef %122, i32 noundef %124)
  %125 = load i32, ptr %x1, align 4
  %126 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %126, i64 5
  %127 = load i32, ptr %arrayidx20, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x95, ptr noundef %x96, i32 noundef %125, i32 noundef %127)
  %128 = load i32, ptr %x1, align 4
  %129 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %129, i64 4
  %130 = load i32, ptr %arrayidx21, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x97, ptr noundef %x98, i32 noundef %128, i32 noundef %130)
  %131 = load i32, ptr %x1, align 4
  %132 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %132, i64 3
  %133 = load i32, ptr %arrayidx22, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x99, ptr noundef %x100, i32 noundef %131, i32 noundef %133)
  %134 = load i32, ptr %x1, align 4
  %135 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %135, i64 2
  %136 = load i32, ptr %arrayidx23, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x101, ptr noundef %x102, i32 noundef %134, i32 noundef %136)
  %137 = load i32, ptr %x1, align 4
  %138 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %138, i64 1
  %139 = load i32, ptr %arrayidx24, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x103, ptr noundef %x104, i32 noundef %137, i32 noundef %139)
  %140 = load i32, ptr %x1, align 4
  %141 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %141, i64 0
  %142 = load i32, ptr %arrayidx25, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x105, ptr noundef %x106, i32 noundef %140, i32 noundef %142)
  %143 = load i32, ptr %x106, align 4
  %144 = load i32, ptr %x103, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i32 noundef %143, i32 noundef %144)
  %145 = load i8, ptr %x108, align 1
  %146 = load i32, ptr %x104, align 4
  %147 = load i32, ptr %x101, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %145, i32 noundef %146, i32 noundef %147)
  %148 = load i8, ptr %x110, align 1
  %149 = load i32, ptr %x102, align 4
  %150 = load i32, ptr %x99, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %148, i32 noundef %149, i32 noundef %150)
  %151 = load i8, ptr %x112, align 1
  %152 = load i32, ptr %x100, align 4
  %153 = load i32, ptr %x97, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %151, i32 noundef %152, i32 noundef %153)
  %154 = load i8, ptr %x114, align 1
  %155 = load i32, ptr %x98, align 4
  %156 = load i32, ptr %x95, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %154, i32 noundef %155, i32 noundef %156)
  %157 = load i8, ptr %x116, align 1
  %158 = load i32, ptr %x96, align 4
  %159 = load i32, ptr %x93, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %157, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x118, align 1
  %161 = load i32, ptr %x94, align 4
  %162 = load i32, ptr %x91, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x120, align 1
  %conv26 = zext i8 %163 to i32
  %164 = load i32, ptr %x92, align 4
  %add27 = add i32 %conv26, %164
  store i32 %add27, ptr %x121, align 4
  %165 = load i32, ptr %x75, align 4
  %166 = load i32, ptr %x105, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext 0, i32 noundef %165, i32 noundef %166)
  %167 = load i8, ptr %x123, align 1
  %168 = load i32, ptr %x77, align 4
  %169 = load i32, ptr %x107, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %167, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x125, align 1
  %171 = load i32, ptr %x79, align 4
  %172 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x127, align 1
  %174 = load i32, ptr %x81, align 4
  %175 = load i32, ptr %x111, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x129, align 1
  %177 = load i32, ptr %x83, align 4
  %178 = load i32, ptr %x113, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x131, align 1
  %180 = load i32, ptr %x85, align 4
  %181 = load i32, ptr %x115, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %179, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x133, align 1
  %183 = load i32, ptr %x87, align 4
  %184 = load i32, ptr %x117, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x135, align 1
  %186 = load i32, ptr %x89, align 4
  %187 = load i32, ptr %x119, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x137, align 1
  %189 = load i8, ptr %x90, align 1
  %conv28 = zext i8 %189 to i32
  %190 = load i32, ptr %x121, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %188, i32 noundef %conv28, i32 noundef %190)
  %191 = load i32, ptr %x122, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x140, ptr noundef %x141, i32 noundef %191, i32 noundef 1916078453)
  %192 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x142, ptr noundef %x143, i32 noundef %192, i32 noundef -2)
  %193 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x144, ptr noundef %x145, i32 noundef %193, i32 noundef -1)
  %194 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x146, ptr noundef %x147, i32 noundef %194, i32 noundef -1)
  %195 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x148, ptr noundef %x149, i32 noundef %195, i32 noundef -1)
  %196 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x150, ptr noundef %x151, i32 noundef %196, i32 noundef 1912856427)
  %197 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x152, ptr noundef %x153, i32 noundef %197, i32 noundef 566625579)
  %198 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x154, ptr noundef %x155, i32 noundef %198, i32 noundef 1404826633)
  %199 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x156, ptr noundef %x157, i32 noundef %199, i32 noundef 970277155)
  %200 = load i32, ptr %x157, align 4
  %201 = load i32, ptr %x154, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i32 noundef %200, i32 noundef %201)
  %202 = load i8, ptr %x159, align 1
  %203 = load i32, ptr %x155, align 4
  %204 = load i32, ptr %x152, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %202, i32 noundef %203, i32 noundef %204)
  %205 = load i8, ptr %x161, align 1
  %206 = load i32, ptr %x153, align 4
  %207 = load i32, ptr %x150, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %205, i32 noundef %206, i32 noundef %207)
  %208 = load i8, ptr %x163, align 1
  %209 = load i32, ptr %x151, align 4
  %210 = load i32, ptr %x148, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %208, i32 noundef %209, i32 noundef %210)
  %211 = load i8, ptr %x165, align 1
  %212 = load i32, ptr %x149, align 4
  %213 = load i32, ptr %x146, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %211, i32 noundef %212, i32 noundef %213)
  %214 = load i8, ptr %x167, align 1
  %215 = load i32, ptr %x147, align 4
  %216 = load i32, ptr %x144, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %214, i32 noundef %215, i32 noundef %216)
  %217 = load i8, ptr %x169, align 1
  %218 = load i32, ptr %x145, align 4
  %219 = load i32, ptr %x142, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %217, i32 noundef %218, i32 noundef %219)
  %220 = load i8, ptr %x171, align 1
  %conv29 = zext i8 %220 to i32
  %221 = load i32, ptr %x143, align 4
  %add30 = add i32 %conv29, %221
  store i32 %add30, ptr %x172, align 4
  %222 = load i32, ptr %x122, align 4
  %223 = load i32, ptr %x156, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext 0, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x174, align 1
  %225 = load i32, ptr %x124, align 4
  %226 = load i32, ptr %x158, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x176, align 1
  %228 = load i32, ptr %x126, align 4
  %229 = load i32, ptr %x160, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x178, align 1
  %231 = load i32, ptr %x128, align 4
  %232 = load i32, ptr %x162, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x180, align 1
  %234 = load i32, ptr %x130, align 4
  %235 = load i32, ptr %x164, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x182, align 1
  %237 = load i32, ptr %x132, align 4
  %238 = load i32, ptr %x166, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x184, align 1
  %240 = load i32, ptr %x134, align 4
  %241 = load i32, ptr %x168, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x185, ptr noundef %x186, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i8, ptr %x186, align 1
  %243 = load i32, ptr %x136, align 4
  %244 = load i32, ptr %x170, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x187, ptr noundef %x188, i8 noundef zeroext %242, i32 noundef %243, i32 noundef %244)
  %245 = load i8, ptr %x188, align 1
  %246 = load i32, ptr %x138, align 4
  %247 = load i32, ptr %x172, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x189, ptr noundef %x190, i8 noundef zeroext %245, i32 noundef %246, i32 noundef %247)
  %248 = load i8, ptr %x190, align 1
  %conv31 = zext i8 %248 to i32
  %249 = load i8, ptr %x139, align 1
  %conv32 = zext i8 %249 to i32
  %add33 = add i32 %conv31, %conv32
  store i32 %add33, ptr %x191, align 4
  %250 = load i32, ptr %x2, align 4
  %251 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %251, i64 7
  %252 = load i32, ptr %arrayidx34, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x192, ptr noundef %x193, i32 noundef %250, i32 noundef %252)
  %253 = load i32, ptr %x2, align 4
  %254 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %254, i64 6
  %255 = load i32, ptr %arrayidx35, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x194, ptr noundef %x195, i32 noundef %253, i32 noundef %255)
  %256 = load i32, ptr %x2, align 4
  %257 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %257, i64 5
  %258 = load i32, ptr %arrayidx36, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x196, ptr noundef %x197, i32 noundef %256, i32 noundef %258)
  %259 = load i32, ptr %x2, align 4
  %260 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %260, i64 4
  %261 = load i32, ptr %arrayidx37, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %259, i32 noundef %261)
  %262 = load i32, ptr %x2, align 4
  %263 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %263, i64 3
  %264 = load i32, ptr %arrayidx38, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %262, i32 noundef %264)
  %265 = load i32, ptr %x2, align 4
  %266 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %266, i64 2
  %267 = load i32, ptr %arrayidx39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %265, i32 noundef %267)
  %268 = load i32, ptr %x2, align 4
  %269 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %269, i64 1
  %270 = load i32, ptr %arrayidx40, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %268, i32 noundef %270)
  %271 = load i32, ptr %x2, align 4
  %272 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %272, i64 0
  %273 = load i32, ptr %arrayidx41, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %271, i32 noundef %273)
  %274 = load i32, ptr %x207, align 4
  %275 = load i32, ptr %x204, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i32 noundef %274, i32 noundef %275)
  %276 = load i8, ptr %x209, align 1
  %277 = load i32, ptr %x205, align 4
  %278 = load i32, ptr %x202, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %276, i32 noundef %277, i32 noundef %278)
  %279 = load i8, ptr %x211, align 1
  %280 = load i32, ptr %x203, align 4
  %281 = load i32, ptr %x200, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %279, i32 noundef %280, i32 noundef %281)
  %282 = load i8, ptr %x213, align 1
  %283 = load i32, ptr %x201, align 4
  %284 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %282, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x215, align 1
  %286 = load i32, ptr %x199, align 4
  %287 = load i32, ptr %x196, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %285, i32 noundef %286, i32 noundef %287)
  %288 = load i8, ptr %x217, align 1
  %289 = load i32, ptr %x197, align 4
  %290 = load i32, ptr %x194, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %288, i32 noundef %289, i32 noundef %290)
  %291 = load i8, ptr %x219, align 1
  %292 = load i32, ptr %x195, align 4
  %293 = load i32, ptr %x192, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %291, i32 noundef %292, i32 noundef %293)
  %294 = load i8, ptr %x221, align 1
  %conv42 = zext i8 %294 to i32
  %295 = load i32, ptr %x193, align 4
  %add43 = add i32 %conv42, %295
  store i32 %add43, ptr %x222, align 4
  %296 = load i32, ptr %x175, align 4
  %297 = load i32, ptr %x206, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext 0, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x224, align 1
  %299 = load i32, ptr %x177, align 4
  %300 = load i32, ptr %x208, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x226, align 1
  %302 = load i32, ptr %x179, align 4
  %303 = load i32, ptr %x210, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %301, i32 noundef %302, i32 noundef %303)
  %304 = load i8, ptr %x228, align 1
  %305 = load i32, ptr %x181, align 4
  %306 = load i32, ptr %x212, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %304, i32 noundef %305, i32 noundef %306)
  %307 = load i8, ptr %x230, align 1
  %308 = load i32, ptr %x183, align 4
  %309 = load i32, ptr %x214, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x231, ptr noundef %x232, i8 noundef zeroext %307, i32 noundef %308, i32 noundef %309)
  %310 = load i8, ptr %x232, align 1
  %311 = load i32, ptr %x185, align 4
  %312 = load i32, ptr %x216, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x233, ptr noundef %x234, i8 noundef zeroext %310, i32 noundef %311, i32 noundef %312)
  %313 = load i8, ptr %x234, align 1
  %314 = load i32, ptr %x187, align 4
  %315 = load i32, ptr %x218, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext %313, i32 noundef %314, i32 noundef %315)
  %316 = load i8, ptr %x236, align 1
  %317 = load i32, ptr %x189, align 4
  %318 = load i32, ptr %x220, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %316, i32 noundef %317, i32 noundef %318)
  %319 = load i8, ptr %x238, align 1
  %320 = load i32, ptr %x191, align 4
  %321 = load i32, ptr %x222, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %319, i32 noundef %320, i32 noundef %321)
  %322 = load i32, ptr %x223, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x241, ptr noundef %x242, i32 noundef %322, i32 noundef 1916078453)
  %323 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x243, ptr noundef %x244, i32 noundef %323, i32 noundef -2)
  %324 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %324, i32 noundef -1)
  %325 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %325, i32 noundef -1)
  %326 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x249, ptr noundef %x250, i32 noundef %326, i32 noundef -1)
  %327 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x251, ptr noundef %x252, i32 noundef %327, i32 noundef 1912856427)
  %328 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x253, ptr noundef %x254, i32 noundef %328, i32 noundef 566625579)
  %329 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x255, ptr noundef %x256, i32 noundef %329, i32 noundef 1404826633)
  %330 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x257, ptr noundef %x258, i32 noundef %330, i32 noundef 970277155)
  %331 = load i32, ptr %x258, align 4
  %332 = load i32, ptr %x255, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext 0, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x260, align 1
  %334 = load i32, ptr %x256, align 4
  %335 = load i32, ptr %x253, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x262, align 1
  %337 = load i32, ptr %x254, align 4
  %338 = load i32, ptr %x251, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x264, align 1
  %340 = load i32, ptr %x252, align 4
  %341 = load i32, ptr %x249, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %339, i32 noundef %340, i32 noundef %341)
  %342 = load i8, ptr %x266, align 1
  %343 = load i32, ptr %x250, align 4
  %344 = load i32, ptr %x247, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %342, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x268, align 1
  %346 = load i32, ptr %x248, align 4
  %347 = load i32, ptr %x245, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i8, ptr %x270, align 1
  %349 = load i32, ptr %x246, align 4
  %350 = load i32, ptr %x243, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %348, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x272, align 1
  %conv44 = zext i8 %351 to i32
  %352 = load i32, ptr %x244, align 4
  %add45 = add i32 %conv44, %352
  store i32 %add45, ptr %x273, align 4
  %353 = load i32, ptr %x223, align 4
  %354 = load i32, ptr %x257, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext 0, i32 noundef %353, i32 noundef %354)
  %355 = load i8, ptr %x275, align 1
  %356 = load i32, ptr %x225, align 4
  %357 = load i32, ptr %x259, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %355, i32 noundef %356, i32 noundef %357)
  %358 = load i8, ptr %x277, align 1
  %359 = load i32, ptr %x227, align 4
  %360 = load i32, ptr %x261, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %358, i32 noundef %359, i32 noundef %360)
  %361 = load i8, ptr %x279, align 1
  %362 = load i32, ptr %x229, align 4
  %363 = load i32, ptr %x263, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %361, i32 noundef %362, i32 noundef %363)
  %364 = load i8, ptr %x281, align 1
  %365 = load i32, ptr %x231, align 4
  %366 = load i32, ptr %x265, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %364, i32 noundef %365, i32 noundef %366)
  %367 = load i8, ptr %x283, align 1
  %368 = load i32, ptr %x233, align 4
  %369 = load i32, ptr %x267, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %367, i32 noundef %368, i32 noundef %369)
  %370 = load i8, ptr %x285, align 1
  %371 = load i32, ptr %x235, align 4
  %372 = load i32, ptr %x269, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %370, i32 noundef %371, i32 noundef %372)
  %373 = load i8, ptr %x287, align 1
  %374 = load i32, ptr %x237, align 4
  %375 = load i32, ptr %x271, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %373, i32 noundef %374, i32 noundef %375)
  %376 = load i8, ptr %x289, align 1
  %377 = load i32, ptr %x239, align 4
  %378 = load i32, ptr %x273, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %376, i32 noundef %377, i32 noundef %378)
  %379 = load i8, ptr %x291, align 1
  %conv46 = zext i8 %379 to i32
  %380 = load i8, ptr %x240, align 1
  %conv47 = zext i8 %380 to i32
  %add48 = add i32 %conv46, %conv47
  store i32 %add48, ptr %x292, align 4
  %381 = load i32, ptr %x3, align 4
  %382 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %382, i64 7
  %383 = load i32, ptr %arrayidx49, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x293, ptr noundef %x294, i32 noundef %381, i32 noundef %383)
  %384 = load i32, ptr %x3, align 4
  %385 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %385, i64 6
  %386 = load i32, ptr %arrayidx50, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x295, ptr noundef %x296, i32 noundef %384, i32 noundef %386)
  %387 = load i32, ptr %x3, align 4
  %388 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %388, i64 5
  %389 = load i32, ptr %arrayidx51, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x297, ptr noundef %x298, i32 noundef %387, i32 noundef %389)
  %390 = load i32, ptr %x3, align 4
  %391 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %391, i64 4
  %392 = load i32, ptr %arrayidx52, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x299, ptr noundef %x300, i32 noundef %390, i32 noundef %392)
  %393 = load i32, ptr %x3, align 4
  %394 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %394, i64 3
  %395 = load i32, ptr %arrayidx53, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x301, ptr noundef %x302, i32 noundef %393, i32 noundef %395)
  %396 = load i32, ptr %x3, align 4
  %397 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %397, i64 2
  %398 = load i32, ptr %arrayidx54, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x303, ptr noundef %x304, i32 noundef %396, i32 noundef %398)
  %399 = load i32, ptr %x3, align 4
  %400 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %400, i64 1
  %401 = load i32, ptr %arrayidx55, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x305, ptr noundef %x306, i32 noundef %399, i32 noundef %401)
  %402 = load i32, ptr %x3, align 4
  %403 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %403, i64 0
  %404 = load i32, ptr %arrayidx56, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x307, ptr noundef %x308, i32 noundef %402, i32 noundef %404)
  %405 = load i32, ptr %x308, align 4
  %406 = load i32, ptr %x305, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext 0, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x310, align 1
  %408 = load i32, ptr %x306, align 4
  %409 = load i32, ptr %x303, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x312, align 1
  %411 = load i32, ptr %x304, align 4
  %412 = load i32, ptr %x301, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x314, align 1
  %414 = load i32, ptr %x302, align 4
  %415 = load i32, ptr %x299, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %413, i32 noundef %414, i32 noundef %415)
  %416 = load i8, ptr %x316, align 1
  %417 = load i32, ptr %x300, align 4
  %418 = load i32, ptr %x297, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %416, i32 noundef %417, i32 noundef %418)
  %419 = load i8, ptr %x318, align 1
  %420 = load i32, ptr %x298, align 4
  %421 = load i32, ptr %x295, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %419, i32 noundef %420, i32 noundef %421)
  %422 = load i8, ptr %x320, align 1
  %423 = load i32, ptr %x296, align 4
  %424 = load i32, ptr %x293, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %422, i32 noundef %423, i32 noundef %424)
  %425 = load i8, ptr %x322, align 1
  %conv57 = zext i8 %425 to i32
  %426 = load i32, ptr %x294, align 4
  %add58 = add i32 %conv57, %426
  store i32 %add58, ptr %x323, align 4
  %427 = load i32, ptr %x276, align 4
  %428 = load i32, ptr %x307, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext 0, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x325, align 1
  %430 = load i32, ptr %x278, align 4
  %431 = load i32, ptr %x309, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x327, align 1
  %433 = load i32, ptr %x280, align 4
  %434 = load i32, ptr %x311, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %432, i32 noundef %433, i32 noundef %434)
  %435 = load i8, ptr %x329, align 1
  %436 = load i32, ptr %x282, align 4
  %437 = load i32, ptr %x313, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x330, ptr noundef %x331, i8 noundef zeroext %435, i32 noundef %436, i32 noundef %437)
  %438 = load i8, ptr %x331, align 1
  %439 = load i32, ptr %x284, align 4
  %440 = load i32, ptr %x315, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x332, ptr noundef %x333, i8 noundef zeroext %438, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x333, align 1
  %442 = load i32, ptr %x286, align 4
  %443 = load i32, ptr %x317, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x334, ptr noundef %x335, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x335, align 1
  %445 = load i32, ptr %x288, align 4
  %446 = load i32, ptr %x319, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x336, ptr noundef %x337, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x337, align 1
  %448 = load i32, ptr %x290, align 4
  %449 = load i32, ptr %x321, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x338, ptr noundef %x339, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x339, align 1
  %451 = load i32, ptr %x292, align 4
  %452 = load i32, ptr %x323, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x340, ptr noundef %x341, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i32, ptr %x324, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %453, i32 noundef 1916078453)
  %454 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %454, i32 noundef -2)
  %455 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %455, i32 noundef -1)
  %456 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x348, ptr noundef %x349, i32 noundef %456, i32 noundef -1)
  %457 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x350, ptr noundef %x351, i32 noundef %457, i32 noundef -1)
  %458 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x352, ptr noundef %x353, i32 noundef %458, i32 noundef 1912856427)
  %459 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x354, ptr noundef %x355, i32 noundef %459, i32 noundef 566625579)
  %460 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x356, ptr noundef %x357, i32 noundef %460, i32 noundef 1404826633)
  %461 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x358, ptr noundef %x359, i32 noundef %461, i32 noundef 970277155)
  %462 = load i32, ptr %x359, align 4
  %463 = load i32, ptr %x356, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext 0, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x361, align 1
  %465 = load i32, ptr %x357, align 4
  %466 = load i32, ptr %x354, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x363, align 1
  %468 = load i32, ptr %x355, align 4
  %469 = load i32, ptr %x352, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x365, align 1
  %471 = load i32, ptr %x353, align 4
  %472 = load i32, ptr %x350, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x367, align 1
  %474 = load i32, ptr %x351, align 4
  %475 = load i32, ptr %x348, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x369, align 1
  %477 = load i32, ptr %x349, align 4
  %478 = load i32, ptr %x346, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x371, align 1
  %480 = load i32, ptr %x347, align 4
  %481 = load i32, ptr %x344, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i8, ptr %x373, align 1
  %conv59 = zext i8 %482 to i32
  %483 = load i32, ptr %x345, align 4
  %add60 = add i32 %conv59, %483
  store i32 %add60, ptr %x374, align 4
  %484 = load i32, ptr %x324, align 4
  %485 = load i32, ptr %x358, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext 0, i32 noundef %484, i32 noundef %485)
  %486 = load i8, ptr %x376, align 1
  %487 = load i32, ptr %x326, align 4
  %488 = load i32, ptr %x360, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x377, ptr noundef %x378, i8 noundef zeroext %486, i32 noundef %487, i32 noundef %488)
  %489 = load i8, ptr %x378, align 1
  %490 = load i32, ptr %x328, align 4
  %491 = load i32, ptr %x362, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x379, ptr noundef %x380, i8 noundef zeroext %489, i32 noundef %490, i32 noundef %491)
  %492 = load i8, ptr %x380, align 1
  %493 = load i32, ptr %x330, align 4
  %494 = load i32, ptr %x364, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x381, ptr noundef %x382, i8 noundef zeroext %492, i32 noundef %493, i32 noundef %494)
  %495 = load i8, ptr %x382, align 1
  %496 = load i32, ptr %x332, align 4
  %497 = load i32, ptr %x366, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x383, ptr noundef %x384, i8 noundef zeroext %495, i32 noundef %496, i32 noundef %497)
  %498 = load i8, ptr %x384, align 1
  %499 = load i32, ptr %x334, align 4
  %500 = load i32, ptr %x368, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x385, ptr noundef %x386, i8 noundef zeroext %498, i32 noundef %499, i32 noundef %500)
  %501 = load i8, ptr %x386, align 1
  %502 = load i32, ptr %x336, align 4
  %503 = load i32, ptr %x370, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x387, ptr noundef %x388, i8 noundef zeroext %501, i32 noundef %502, i32 noundef %503)
  %504 = load i8, ptr %x388, align 1
  %505 = load i32, ptr %x338, align 4
  %506 = load i32, ptr %x372, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext %504, i32 noundef %505, i32 noundef %506)
  %507 = load i8, ptr %x390, align 1
  %508 = load i32, ptr %x340, align 4
  %509 = load i32, ptr %x374, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %507, i32 noundef %508, i32 noundef %509)
  %510 = load i8, ptr %x392, align 1
  %conv61 = zext i8 %510 to i32
  %511 = load i8, ptr %x341, align 1
  %conv62 = zext i8 %511 to i32
  %add63 = add i32 %conv61, %conv62
  store i32 %add63, ptr %x393, align 4
  %512 = load i32, ptr %x4, align 4
  %513 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %513, i64 7
  %514 = load i32, ptr %arrayidx64, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x394, ptr noundef %x395, i32 noundef %512, i32 noundef %514)
  %515 = load i32, ptr %x4, align 4
  %516 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %516, i64 6
  %517 = load i32, ptr %arrayidx65, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x396, ptr noundef %x397, i32 noundef %515, i32 noundef %517)
  %518 = load i32, ptr %x4, align 4
  %519 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %519, i64 5
  %520 = load i32, ptr %arrayidx66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x398, ptr noundef %x399, i32 noundef %518, i32 noundef %520)
  %521 = load i32, ptr %x4, align 4
  %522 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %522, i64 4
  %523 = load i32, ptr %arrayidx67, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x400, ptr noundef %x401, i32 noundef %521, i32 noundef %523)
  %524 = load i32, ptr %x4, align 4
  %525 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %525, i64 3
  %526 = load i32, ptr %arrayidx68, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x402, ptr noundef %x403, i32 noundef %524, i32 noundef %526)
  %527 = load i32, ptr %x4, align 4
  %528 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %528, i64 2
  %529 = load i32, ptr %arrayidx69, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x404, ptr noundef %x405, i32 noundef %527, i32 noundef %529)
  %530 = load i32, ptr %x4, align 4
  %531 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %531, i64 1
  %532 = load i32, ptr %arrayidx70, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x406, ptr noundef %x407, i32 noundef %530, i32 noundef %532)
  %533 = load i32, ptr %x4, align 4
  %534 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %534, i64 0
  %535 = load i32, ptr %arrayidx71, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x408, ptr noundef %x409, i32 noundef %533, i32 noundef %535)
  %536 = load i32, ptr %x409, align 4
  %537 = load i32, ptr %x406, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext 0, i32 noundef %536, i32 noundef %537)
  %538 = load i8, ptr %x411, align 1
  %539 = load i32, ptr %x407, align 4
  %540 = load i32, ptr %x404, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %538, i32 noundef %539, i32 noundef %540)
  %541 = load i8, ptr %x413, align 1
  %542 = load i32, ptr %x405, align 4
  %543 = load i32, ptr %x402, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext %541, i32 noundef %542, i32 noundef %543)
  %544 = load i8, ptr %x415, align 1
  %545 = load i32, ptr %x403, align 4
  %546 = load i32, ptr %x400, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %544, i32 noundef %545, i32 noundef %546)
  %547 = load i8, ptr %x417, align 1
  %548 = load i32, ptr %x401, align 4
  %549 = load i32, ptr %x398, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %547, i32 noundef %548, i32 noundef %549)
  %550 = load i8, ptr %x419, align 1
  %551 = load i32, ptr %x399, align 4
  %552 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %550, i32 noundef %551, i32 noundef %552)
  %553 = load i8, ptr %x421, align 1
  %554 = load i32, ptr %x397, align 4
  %555 = load i32, ptr %x394, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %553, i32 noundef %554, i32 noundef %555)
  %556 = load i8, ptr %x423, align 1
  %conv72 = zext i8 %556 to i32
  %557 = load i32, ptr %x395, align 4
  %add73 = add i32 %conv72, %557
  store i32 %add73, ptr %x424, align 4
  %558 = load i32, ptr %x377, align 4
  %559 = load i32, ptr %x408, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x425, ptr noundef %x426, i8 noundef zeroext 0, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x426, align 1
  %561 = load i32, ptr %x379, align 4
  %562 = load i32, ptr %x410, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x427, ptr noundef %x428, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x428, align 1
  %564 = load i32, ptr %x381, align 4
  %565 = load i32, ptr %x412, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x429, ptr noundef %x430, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x430, align 1
  %567 = load i32, ptr %x383, align 4
  %568 = load i32, ptr %x414, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x431, ptr noundef %x432, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i8, ptr %x432, align 1
  %570 = load i32, ptr %x385, align 4
  %571 = load i32, ptr %x416, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x433, ptr noundef %x434, i8 noundef zeroext %569, i32 noundef %570, i32 noundef %571)
  %572 = load i8, ptr %x434, align 1
  %573 = load i32, ptr %x387, align 4
  %574 = load i32, ptr %x418, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x435, ptr noundef %x436, i8 noundef zeroext %572, i32 noundef %573, i32 noundef %574)
  %575 = load i8, ptr %x436, align 1
  %576 = load i32, ptr %x389, align 4
  %577 = load i32, ptr %x420, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x437, ptr noundef %x438, i8 noundef zeroext %575, i32 noundef %576, i32 noundef %577)
  %578 = load i8, ptr %x438, align 1
  %579 = load i32, ptr %x391, align 4
  %580 = load i32, ptr %x422, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext %578, i32 noundef %579, i32 noundef %580)
  %581 = load i8, ptr %x440, align 1
  %582 = load i32, ptr %x393, align 4
  %583 = load i32, ptr %x424, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %581, i32 noundef %582, i32 noundef %583)
  %584 = load i32, ptr %x425, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x443, ptr noundef %x444, i32 noundef %584, i32 noundef 1916078453)
  %585 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x445, ptr noundef %x446, i32 noundef %585, i32 noundef -2)
  %586 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x447, ptr noundef %x448, i32 noundef %586, i32 noundef -1)
  %587 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x449, ptr noundef %x450, i32 noundef %587, i32 noundef -1)
  %588 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x451, ptr noundef %x452, i32 noundef %588, i32 noundef -1)
  %589 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x453, ptr noundef %x454, i32 noundef %589, i32 noundef 1912856427)
  %590 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x455, ptr noundef %x456, i32 noundef %590, i32 noundef 566625579)
  %591 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x457, ptr noundef %x458, i32 noundef %591, i32 noundef 1404826633)
  %592 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x459, ptr noundef %x460, i32 noundef %592, i32 noundef 970277155)
  %593 = load i32, ptr %x460, align 4
  %594 = load i32, ptr %x457, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext 0, i32 noundef %593, i32 noundef %594)
  %595 = load i8, ptr %x462, align 1
  %596 = load i32, ptr %x458, align 4
  %597 = load i32, ptr %x455, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %595, i32 noundef %596, i32 noundef %597)
  %598 = load i8, ptr %x464, align 1
  %599 = load i32, ptr %x456, align 4
  %600 = load i32, ptr %x453, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %598, i32 noundef %599, i32 noundef %600)
  %601 = load i8, ptr %x466, align 1
  %602 = load i32, ptr %x454, align 4
  %603 = load i32, ptr %x451, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %601, i32 noundef %602, i32 noundef %603)
  %604 = load i8, ptr %x468, align 1
  %605 = load i32, ptr %x452, align 4
  %606 = load i32, ptr %x449, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %604, i32 noundef %605, i32 noundef %606)
  %607 = load i8, ptr %x470, align 1
  %608 = load i32, ptr %x450, align 4
  %609 = load i32, ptr %x447, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %607, i32 noundef %608, i32 noundef %609)
  %610 = load i8, ptr %x472, align 1
  %611 = load i32, ptr %x448, align 4
  %612 = load i32, ptr %x445, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x473, ptr noundef %x474, i8 noundef zeroext %610, i32 noundef %611, i32 noundef %612)
  %613 = load i8, ptr %x474, align 1
  %conv74 = zext i8 %613 to i32
  %614 = load i32, ptr %x446, align 4
  %add75 = add i32 %conv74, %614
  store i32 %add75, ptr %x475, align 4
  %615 = load i32, ptr %x425, align 4
  %616 = load i32, ptr %x459, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x476, ptr noundef %x477, i8 noundef zeroext 0, i32 noundef %615, i32 noundef %616)
  %617 = load i8, ptr %x477, align 1
  %618 = load i32, ptr %x427, align 4
  %619 = load i32, ptr %x461, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x478, ptr noundef %x479, i8 noundef zeroext %617, i32 noundef %618, i32 noundef %619)
  %620 = load i8, ptr %x479, align 1
  %621 = load i32, ptr %x429, align 4
  %622 = load i32, ptr %x463, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext %620, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x481, align 1
  %624 = load i32, ptr %x431, align 4
  %625 = load i32, ptr %x465, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i8, ptr %x483, align 1
  %627 = load i32, ptr %x433, align 4
  %628 = load i32, ptr %x467, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %626, i32 noundef %627, i32 noundef %628)
  %629 = load i8, ptr %x485, align 1
  %630 = load i32, ptr %x435, align 4
  %631 = load i32, ptr %x469, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %629, i32 noundef %630, i32 noundef %631)
  %632 = load i8, ptr %x487, align 1
  %633 = load i32, ptr %x437, align 4
  %634 = load i32, ptr %x471, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %632, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x489, align 1
  %636 = load i32, ptr %x439, align 4
  %637 = load i32, ptr %x473, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x491, align 1
  %639 = load i32, ptr %x441, align 4
  %640 = load i32, ptr %x475, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x493, align 1
  %conv76 = zext i8 %641 to i32
  %642 = load i8, ptr %x442, align 1
  %conv77 = zext i8 %642 to i32
  %add78 = add i32 %conv76, %conv77
  store i32 %add78, ptr %x494, align 4
  %643 = load i32, ptr %x5, align 4
  %644 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, ptr %644, i64 7
  %645 = load i32, ptr %arrayidx79, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x495, ptr noundef %x496, i32 noundef %643, i32 noundef %645)
  %646 = load i32, ptr %x5, align 4
  %647 = load ptr, ptr %arg1.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %647, i64 6
  %648 = load i32, ptr %arrayidx80, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x497, ptr noundef %x498, i32 noundef %646, i32 noundef %648)
  %649 = load i32, ptr %x5, align 4
  %650 = load ptr, ptr %arg1.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %650, i64 5
  %651 = load i32, ptr %arrayidx81, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x499, ptr noundef %x500, i32 noundef %649, i32 noundef %651)
  %652 = load i32, ptr %x5, align 4
  %653 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %653, i64 4
  %654 = load i32, ptr %arrayidx82, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x501, ptr noundef %x502, i32 noundef %652, i32 noundef %654)
  %655 = load i32, ptr %x5, align 4
  %656 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %656, i64 3
  %657 = load i32, ptr %arrayidx83, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x503, ptr noundef %x504, i32 noundef %655, i32 noundef %657)
  %658 = load i32, ptr %x5, align 4
  %659 = load ptr, ptr %arg1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %659, i64 2
  %660 = load i32, ptr %arrayidx84, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x505, ptr noundef %x506, i32 noundef %658, i32 noundef %660)
  %661 = load i32, ptr %x5, align 4
  %662 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %662, i64 1
  %663 = load i32, ptr %arrayidx85, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x507, ptr noundef %x508, i32 noundef %661, i32 noundef %663)
  %664 = load i32, ptr %x5, align 4
  %665 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %665, i64 0
  %666 = load i32, ptr %arrayidx86, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x509, ptr noundef %x510, i32 noundef %664, i32 noundef %666)
  %667 = load i32, ptr %x510, align 4
  %668 = load i32, ptr %x507, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext 0, i32 noundef %667, i32 noundef %668)
  %669 = load i8, ptr %x512, align 1
  %670 = load i32, ptr %x508, align 4
  %671 = load i32, ptr %x505, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %669, i32 noundef %670, i32 noundef %671)
  %672 = load i8, ptr %x514, align 1
  %673 = load i32, ptr %x506, align 4
  %674 = load i32, ptr %x503, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %672, i32 noundef %673, i32 noundef %674)
  %675 = load i8, ptr %x516, align 1
  %676 = load i32, ptr %x504, align 4
  %677 = load i32, ptr %x501, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %675, i32 noundef %676, i32 noundef %677)
  %678 = load i8, ptr %x518, align 1
  %679 = load i32, ptr %x502, align 4
  %680 = load i32, ptr %x499, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x519, ptr noundef %x520, i8 noundef zeroext %678, i32 noundef %679, i32 noundef %680)
  %681 = load i8, ptr %x520, align 1
  %682 = load i32, ptr %x500, align 4
  %683 = load i32, ptr %x497, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x521, ptr noundef %x522, i8 noundef zeroext %681, i32 noundef %682, i32 noundef %683)
  %684 = load i8, ptr %x522, align 1
  %685 = load i32, ptr %x498, align 4
  %686 = load i32, ptr %x495, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x523, ptr noundef %x524, i8 noundef zeroext %684, i32 noundef %685, i32 noundef %686)
  %687 = load i8, ptr %x524, align 1
  %conv87 = zext i8 %687 to i32
  %688 = load i32, ptr %x496, align 4
  %add88 = add i32 %conv87, %688
  store i32 %add88, ptr %x525, align 4
  %689 = load i32, ptr %x478, align 4
  %690 = load i32, ptr %x509, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext 0, i32 noundef %689, i32 noundef %690)
  %691 = load i8, ptr %x527, align 1
  %692 = load i32, ptr %x480, align 4
  %693 = load i32, ptr %x511, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %691, i32 noundef %692, i32 noundef %693)
  %694 = load i8, ptr %x529, align 1
  %695 = load i32, ptr %x482, align 4
  %696 = load i32, ptr %x513, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x530, ptr noundef %x531, i8 noundef zeroext %694, i32 noundef %695, i32 noundef %696)
  %697 = load i8, ptr %x531, align 1
  %698 = load i32, ptr %x484, align 4
  %699 = load i32, ptr %x515, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x532, ptr noundef %x533, i8 noundef zeroext %697, i32 noundef %698, i32 noundef %699)
  %700 = load i8, ptr %x533, align 1
  %701 = load i32, ptr %x486, align 4
  %702 = load i32, ptr %x517, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x534, ptr noundef %x535, i8 noundef zeroext %700, i32 noundef %701, i32 noundef %702)
  %703 = load i8, ptr %x535, align 1
  %704 = load i32, ptr %x488, align 4
  %705 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x536, ptr noundef %x537, i8 noundef zeroext %703, i32 noundef %704, i32 noundef %705)
  %706 = load i8, ptr %x537, align 1
  %707 = load i32, ptr %x490, align 4
  %708 = load i32, ptr %x521, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x538, ptr noundef %x539, i8 noundef zeroext %706, i32 noundef %707, i32 noundef %708)
  %709 = load i8, ptr %x539, align 1
  %710 = load i32, ptr %x492, align 4
  %711 = load i32, ptr %x523, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x540, ptr noundef %x541, i8 noundef zeroext %709, i32 noundef %710, i32 noundef %711)
  %712 = load i8, ptr %x541, align 1
  %713 = load i32, ptr %x494, align 4
  %714 = load i32, ptr %x525, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x542, ptr noundef %x543, i8 noundef zeroext %712, i32 noundef %713, i32 noundef %714)
  %715 = load i32, ptr %x526, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x544, ptr noundef %x545, i32 noundef %715, i32 noundef 1916078453)
  %716 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x546, ptr noundef %x547, i32 noundef %716, i32 noundef -2)
  %717 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x548, ptr noundef %x549, i32 noundef %717, i32 noundef -1)
  %718 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x550, ptr noundef %x551, i32 noundef %718, i32 noundef -1)
  %719 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x552, ptr noundef %x553, i32 noundef %719, i32 noundef -1)
  %720 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x554, ptr noundef %x555, i32 noundef %720, i32 noundef 1912856427)
  %721 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x556, ptr noundef %x557, i32 noundef %721, i32 noundef 566625579)
  %722 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x558, ptr noundef %x559, i32 noundef %722, i32 noundef 1404826633)
  %723 = load i32, ptr %x544, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x560, ptr noundef %x561, i32 noundef %723, i32 noundef 970277155)
  %724 = load i32, ptr %x561, align 4
  %725 = load i32, ptr %x558, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x562, ptr noundef %x563, i8 noundef zeroext 0, i32 noundef %724, i32 noundef %725)
  %726 = load i8, ptr %x563, align 1
  %727 = load i32, ptr %x559, align 4
  %728 = load i32, ptr %x556, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x564, ptr noundef %x565, i8 noundef zeroext %726, i32 noundef %727, i32 noundef %728)
  %729 = load i8, ptr %x565, align 1
  %730 = load i32, ptr %x557, align 4
  %731 = load i32, ptr %x554, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x566, ptr noundef %x567, i8 noundef zeroext %729, i32 noundef %730, i32 noundef %731)
  %732 = load i8, ptr %x567, align 1
  %733 = load i32, ptr %x555, align 4
  %734 = load i32, ptr %x552, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x568, ptr noundef %x569, i8 noundef zeroext %732, i32 noundef %733, i32 noundef %734)
  %735 = load i8, ptr %x569, align 1
  %736 = load i32, ptr %x553, align 4
  %737 = load i32, ptr %x550, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x570, ptr noundef %x571, i8 noundef zeroext %735, i32 noundef %736, i32 noundef %737)
  %738 = load i8, ptr %x571, align 1
  %739 = load i32, ptr %x551, align 4
  %740 = load i32, ptr %x548, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x572, ptr noundef %x573, i8 noundef zeroext %738, i32 noundef %739, i32 noundef %740)
  %741 = load i8, ptr %x573, align 1
  %742 = load i32, ptr %x549, align 4
  %743 = load i32, ptr %x546, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x574, ptr noundef %x575, i8 noundef zeroext %741, i32 noundef %742, i32 noundef %743)
  %744 = load i8, ptr %x575, align 1
  %conv89 = zext i8 %744 to i32
  %745 = load i32, ptr %x547, align 4
  %add90 = add i32 %conv89, %745
  store i32 %add90, ptr %x576, align 4
  %746 = load i32, ptr %x526, align 4
  %747 = load i32, ptr %x560, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x577, ptr noundef %x578, i8 noundef zeroext 0, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x578, align 1
  %749 = load i32, ptr %x528, align 4
  %750 = load i32, ptr %x562, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x579, ptr noundef %x580, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x580, align 1
  %752 = load i32, ptr %x530, align 4
  %753 = load i32, ptr %x564, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x581, ptr noundef %x582, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x582, align 1
  %755 = load i32, ptr %x532, align 4
  %756 = load i32, ptr %x566, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x583, ptr noundef %x584, i8 noundef zeroext %754, i32 noundef %755, i32 noundef %756)
  %757 = load i8, ptr %x584, align 1
  %758 = load i32, ptr %x534, align 4
  %759 = load i32, ptr %x568, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext %757, i32 noundef %758, i32 noundef %759)
  %760 = load i8, ptr %x586, align 1
  %761 = load i32, ptr %x536, align 4
  %762 = load i32, ptr %x570, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %760, i32 noundef %761, i32 noundef %762)
  %763 = load i8, ptr %x588, align 1
  %764 = load i32, ptr %x538, align 4
  %765 = load i32, ptr %x572, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %763, i32 noundef %764, i32 noundef %765)
  %766 = load i8, ptr %x590, align 1
  %767 = load i32, ptr %x540, align 4
  %768 = load i32, ptr %x574, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %766, i32 noundef %767, i32 noundef %768)
  %769 = load i8, ptr %x592, align 1
  %770 = load i32, ptr %x542, align 4
  %771 = load i32, ptr %x576, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %769, i32 noundef %770, i32 noundef %771)
  %772 = load i8, ptr %x594, align 1
  %conv91 = zext i8 %772 to i32
  %773 = load i8, ptr %x543, align 1
  %conv92 = zext i8 %773 to i32
  %add93 = add i32 %conv91, %conv92
  store i32 %add93, ptr %x595, align 4
  %774 = load i32, ptr %x6, align 4
  %775 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %775, i64 7
  %776 = load i32, ptr %arrayidx94, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x596, ptr noundef %x597, i32 noundef %774, i32 noundef %776)
  %777 = load i32, ptr %x6, align 4
  %778 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %778, i64 6
  %779 = load i32, ptr %arrayidx95, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x598, ptr noundef %x599, i32 noundef %777, i32 noundef %779)
  %780 = load i32, ptr %x6, align 4
  %781 = load ptr, ptr %arg1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %781, i64 5
  %782 = load i32, ptr %arrayidx96, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x600, ptr noundef %x601, i32 noundef %780, i32 noundef %782)
  %783 = load i32, ptr %x6, align 4
  %784 = load ptr, ptr %arg1.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %784, i64 4
  %785 = load i32, ptr %arrayidx97, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x602, ptr noundef %x603, i32 noundef %783, i32 noundef %785)
  %786 = load i32, ptr %x6, align 4
  %787 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %787, i64 3
  %788 = load i32, ptr %arrayidx98, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x604, ptr noundef %x605, i32 noundef %786, i32 noundef %788)
  %789 = load i32, ptr %x6, align 4
  %790 = load ptr, ptr %arg1.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %790, i64 2
  %791 = load i32, ptr %arrayidx99, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x606, ptr noundef %x607, i32 noundef %789, i32 noundef %791)
  %792 = load i32, ptr %x6, align 4
  %793 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %793, i64 1
  %794 = load i32, ptr %arrayidx100, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x608, ptr noundef %x609, i32 noundef %792, i32 noundef %794)
  %795 = load i32, ptr %x6, align 4
  %796 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %796, i64 0
  %797 = load i32, ptr %arrayidx101, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x610, ptr noundef %x611, i32 noundef %795, i32 noundef %797)
  %798 = load i32, ptr %x611, align 4
  %799 = load i32, ptr %x608, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x612, ptr noundef %x613, i8 noundef zeroext 0, i32 noundef %798, i32 noundef %799)
  %800 = load i8, ptr %x613, align 1
  %801 = load i32, ptr %x609, align 4
  %802 = load i32, ptr %x606, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x614, ptr noundef %x615, i8 noundef zeroext %800, i32 noundef %801, i32 noundef %802)
  %803 = load i8, ptr %x615, align 1
  %804 = load i32, ptr %x607, align 4
  %805 = load i32, ptr %x604, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x616, ptr noundef %x617, i8 noundef zeroext %803, i32 noundef %804, i32 noundef %805)
  %806 = load i8, ptr %x617, align 1
  %807 = load i32, ptr %x605, align 4
  %808 = load i32, ptr %x602, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x618, ptr noundef %x619, i8 noundef zeroext %806, i32 noundef %807, i32 noundef %808)
  %809 = load i8, ptr %x619, align 1
  %810 = load i32, ptr %x603, align 4
  %811 = load i32, ptr %x600, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x620, ptr noundef %x621, i8 noundef zeroext %809, i32 noundef %810, i32 noundef %811)
  %812 = load i8, ptr %x621, align 1
  %813 = load i32, ptr %x601, align 4
  %814 = load i32, ptr %x598, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x622, ptr noundef %x623, i8 noundef zeroext %812, i32 noundef %813, i32 noundef %814)
  %815 = load i8, ptr %x623, align 1
  %816 = load i32, ptr %x599, align 4
  %817 = load i32, ptr %x596, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x624, ptr noundef %x625, i8 noundef zeroext %815, i32 noundef %816, i32 noundef %817)
  %818 = load i8, ptr %x625, align 1
  %conv102 = zext i8 %818 to i32
  %819 = load i32, ptr %x597, align 4
  %add103 = add i32 %conv102, %819
  store i32 %add103, ptr %x626, align 4
  %820 = load i32, ptr %x579, align 4
  %821 = load i32, ptr %x610, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x627, ptr noundef %x628, i8 noundef zeroext 0, i32 noundef %820, i32 noundef %821)
  %822 = load i8, ptr %x628, align 1
  %823 = load i32, ptr %x581, align 4
  %824 = load i32, ptr %x612, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x629, ptr noundef %x630, i8 noundef zeroext %822, i32 noundef %823, i32 noundef %824)
  %825 = load i8, ptr %x630, align 1
  %826 = load i32, ptr %x583, align 4
  %827 = load i32, ptr %x614, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x631, ptr noundef %x632, i8 noundef zeroext %825, i32 noundef %826, i32 noundef %827)
  %828 = load i8, ptr %x632, align 1
  %829 = load i32, ptr %x585, align 4
  %830 = load i32, ptr %x616, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext %828, i32 noundef %829, i32 noundef %830)
  %831 = load i8, ptr %x634, align 1
  %832 = load i32, ptr %x587, align 4
  %833 = load i32, ptr %x618, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %831, i32 noundef %832, i32 noundef %833)
  %834 = load i8, ptr %x636, align 1
  %835 = load i32, ptr %x589, align 4
  %836 = load i32, ptr %x620, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %834, i32 noundef %835, i32 noundef %836)
  %837 = load i8, ptr %x638, align 1
  %838 = load i32, ptr %x591, align 4
  %839 = load i32, ptr %x622, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %837, i32 noundef %838, i32 noundef %839)
  %840 = load i8, ptr %x640, align 1
  %841 = load i32, ptr %x593, align 4
  %842 = load i32, ptr %x624, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %840, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x642, align 1
  %844 = load i32, ptr %x595, align 4
  %845 = load i32, ptr %x626, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i32, ptr %x627, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x645, ptr noundef %x646, i32 noundef %846, i32 noundef 1916078453)
  %847 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x647, ptr noundef %x648, i32 noundef %847, i32 noundef -2)
  %848 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x649, ptr noundef %x650, i32 noundef %848, i32 noundef -1)
  %849 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x651, ptr noundef %x652, i32 noundef %849, i32 noundef -1)
  %850 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x653, ptr noundef %x654, i32 noundef %850, i32 noundef -1)
  %851 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x655, ptr noundef %x656, i32 noundef %851, i32 noundef 1912856427)
  %852 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x657, ptr noundef %x658, i32 noundef %852, i32 noundef 566625579)
  %853 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x659, ptr noundef %x660, i32 noundef %853, i32 noundef 1404826633)
  %854 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x661, ptr noundef %x662, i32 noundef %854, i32 noundef 970277155)
  %855 = load i32, ptr %x662, align 4
  %856 = load i32, ptr %x659, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext 0, i32 noundef %855, i32 noundef %856)
  %857 = load i8, ptr %x664, align 1
  %858 = load i32, ptr %x660, align 4
  %859 = load i32, ptr %x657, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x665, ptr noundef %x666, i8 noundef zeroext %857, i32 noundef %858, i32 noundef %859)
  %860 = load i8, ptr %x666, align 1
  %861 = load i32, ptr %x658, align 4
  %862 = load i32, ptr %x655, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x667, ptr noundef %x668, i8 noundef zeroext %860, i32 noundef %861, i32 noundef %862)
  %863 = load i8, ptr %x668, align 1
  %864 = load i32, ptr %x656, align 4
  %865 = load i32, ptr %x653, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x669, ptr noundef %x670, i8 noundef zeroext %863, i32 noundef %864, i32 noundef %865)
  %866 = load i8, ptr %x670, align 1
  %867 = load i32, ptr %x654, align 4
  %868 = load i32, ptr %x651, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x671, ptr noundef %x672, i8 noundef zeroext %866, i32 noundef %867, i32 noundef %868)
  %869 = load i8, ptr %x672, align 1
  %870 = load i32, ptr %x652, align 4
  %871 = load i32, ptr %x649, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x673, ptr noundef %x674, i8 noundef zeroext %869, i32 noundef %870, i32 noundef %871)
  %872 = load i8, ptr %x674, align 1
  %873 = load i32, ptr %x650, align 4
  %874 = load i32, ptr %x647, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x675, ptr noundef %x676, i8 noundef zeroext %872, i32 noundef %873, i32 noundef %874)
  %875 = load i8, ptr %x676, align 1
  %conv104 = zext i8 %875 to i32
  %876 = load i32, ptr %x648, align 4
  %add105 = add i32 %conv104, %876
  store i32 %add105, ptr %x677, align 4
  %877 = load i32, ptr %x627, align 4
  %878 = load i32, ptr %x661, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x678, ptr noundef %x679, i8 noundef zeroext 0, i32 noundef %877, i32 noundef %878)
  %879 = load i8, ptr %x679, align 1
  %880 = load i32, ptr %x629, align 4
  %881 = load i32, ptr %x663, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x680, ptr noundef %x681, i8 noundef zeroext %879, i32 noundef %880, i32 noundef %881)
  %882 = load i8, ptr %x681, align 1
  %883 = load i32, ptr %x631, align 4
  %884 = load i32, ptr %x665, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x682, ptr noundef %x683, i8 noundef zeroext %882, i32 noundef %883, i32 noundef %884)
  %885 = load i8, ptr %x683, align 1
  %886 = load i32, ptr %x633, align 4
  %887 = load i32, ptr %x667, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x684, ptr noundef %x685, i8 noundef zeroext %885, i32 noundef %886, i32 noundef %887)
  %888 = load i8, ptr %x685, align 1
  %889 = load i32, ptr %x635, align 4
  %890 = load i32, ptr %x669, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x686, ptr noundef %x687, i8 noundef zeroext %888, i32 noundef %889, i32 noundef %890)
  %891 = load i8, ptr %x687, align 1
  %892 = load i32, ptr %x637, align 4
  %893 = load i32, ptr %x671, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x688, ptr noundef %x689, i8 noundef zeroext %891, i32 noundef %892, i32 noundef %893)
  %894 = load i8, ptr %x689, align 1
  %895 = load i32, ptr %x639, align 4
  %896 = load i32, ptr %x673, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x690, ptr noundef %x691, i8 noundef zeroext %894, i32 noundef %895, i32 noundef %896)
  %897 = load i8, ptr %x691, align 1
  %898 = load i32, ptr %x641, align 4
  %899 = load i32, ptr %x675, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x692, ptr noundef %x693, i8 noundef zeroext %897, i32 noundef %898, i32 noundef %899)
  %900 = load i8, ptr %x693, align 1
  %901 = load i32, ptr %x643, align 4
  %902 = load i32, ptr %x677, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x694, ptr noundef %x695, i8 noundef zeroext %900, i32 noundef %901, i32 noundef %902)
  %903 = load i8, ptr %x695, align 1
  %conv106 = zext i8 %903 to i32
  %904 = load i8, ptr %x644, align 1
  %conv107 = zext i8 %904 to i32
  %add108 = add i32 %conv106, %conv107
  store i32 %add108, ptr %x696, align 4
  %905 = load i32, ptr %x7, align 4
  %906 = load ptr, ptr %arg1.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %906, i64 7
  %907 = load i32, ptr %arrayidx109, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x697, ptr noundef %x698, i32 noundef %905, i32 noundef %907)
  %908 = load i32, ptr %x7, align 4
  %909 = load ptr, ptr %arg1.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %909, i64 6
  %910 = load i32, ptr %arrayidx110, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x699, ptr noundef %x700, i32 noundef %908, i32 noundef %910)
  %911 = load i32, ptr %x7, align 4
  %912 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %912, i64 5
  %913 = load i32, ptr %arrayidx111, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x701, ptr noundef %x702, i32 noundef %911, i32 noundef %913)
  %914 = load i32, ptr %x7, align 4
  %915 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %915, i64 4
  %916 = load i32, ptr %arrayidx112, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x703, ptr noundef %x704, i32 noundef %914, i32 noundef %916)
  %917 = load i32, ptr %x7, align 4
  %918 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %918, i64 3
  %919 = load i32, ptr %arrayidx113, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x705, ptr noundef %x706, i32 noundef %917, i32 noundef %919)
  %920 = load i32, ptr %x7, align 4
  %921 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %921, i64 2
  %922 = load i32, ptr %arrayidx114, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x707, ptr noundef %x708, i32 noundef %920, i32 noundef %922)
  %923 = load i32, ptr %x7, align 4
  %924 = load ptr, ptr %arg1.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %924, i64 1
  %925 = load i32, ptr %arrayidx115, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x709, ptr noundef %x710, i32 noundef %923, i32 noundef %925)
  %926 = load i32, ptr %x7, align 4
  %927 = load ptr, ptr %arg1.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %927, i64 0
  %928 = load i32, ptr %arrayidx116, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x711, ptr noundef %x712, i32 noundef %926, i32 noundef %928)
  %929 = load i32, ptr %x712, align 4
  %930 = load i32, ptr %x709, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x713, ptr noundef %x714, i8 noundef zeroext 0, i32 noundef %929, i32 noundef %930)
  %931 = load i8, ptr %x714, align 1
  %932 = load i32, ptr %x710, align 4
  %933 = load i32, ptr %x707, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x715, ptr noundef %x716, i8 noundef zeroext %931, i32 noundef %932, i32 noundef %933)
  %934 = load i8, ptr %x716, align 1
  %935 = load i32, ptr %x708, align 4
  %936 = load i32, ptr %x705, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x717, ptr noundef %x718, i8 noundef zeroext %934, i32 noundef %935, i32 noundef %936)
  %937 = load i8, ptr %x718, align 1
  %938 = load i32, ptr %x706, align 4
  %939 = load i32, ptr %x703, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x719, ptr noundef %x720, i8 noundef zeroext %937, i32 noundef %938, i32 noundef %939)
  %940 = load i8, ptr %x720, align 1
  %941 = load i32, ptr %x704, align 4
  %942 = load i32, ptr %x701, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x721, ptr noundef %x722, i8 noundef zeroext %940, i32 noundef %941, i32 noundef %942)
  %943 = load i8, ptr %x722, align 1
  %944 = load i32, ptr %x702, align 4
  %945 = load i32, ptr %x699, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x723, ptr noundef %x724, i8 noundef zeroext %943, i32 noundef %944, i32 noundef %945)
  %946 = load i8, ptr %x724, align 1
  %947 = load i32, ptr %x700, align 4
  %948 = load i32, ptr %x697, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x725, ptr noundef %x726, i8 noundef zeroext %946, i32 noundef %947, i32 noundef %948)
  %949 = load i8, ptr %x726, align 1
  %conv117 = zext i8 %949 to i32
  %950 = load i32, ptr %x698, align 4
  %add118 = add i32 %conv117, %950
  store i32 %add118, ptr %x727, align 4
  %951 = load i32, ptr %x680, align 4
  %952 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x728, ptr noundef %x729, i8 noundef zeroext 0, i32 noundef %951, i32 noundef %952)
  %953 = load i8, ptr %x729, align 1
  %954 = load i32, ptr %x682, align 4
  %955 = load i32, ptr %x713, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x730, ptr noundef %x731, i8 noundef zeroext %953, i32 noundef %954, i32 noundef %955)
  %956 = load i8, ptr %x731, align 1
  %957 = load i32, ptr %x684, align 4
  %958 = load i32, ptr %x715, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x732, ptr noundef %x733, i8 noundef zeroext %956, i32 noundef %957, i32 noundef %958)
  %959 = load i8, ptr %x733, align 1
  %960 = load i32, ptr %x686, align 4
  %961 = load i32, ptr %x717, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x734, ptr noundef %x735, i8 noundef zeroext %959, i32 noundef %960, i32 noundef %961)
  %962 = load i8, ptr %x735, align 1
  %963 = load i32, ptr %x688, align 4
  %964 = load i32, ptr %x719, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x736, ptr noundef %x737, i8 noundef zeroext %962, i32 noundef %963, i32 noundef %964)
  %965 = load i8, ptr %x737, align 1
  %966 = load i32, ptr %x690, align 4
  %967 = load i32, ptr %x721, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x738, ptr noundef %x739, i8 noundef zeroext %965, i32 noundef %966, i32 noundef %967)
  %968 = load i8, ptr %x739, align 1
  %969 = load i32, ptr %x692, align 4
  %970 = load i32, ptr %x723, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x740, ptr noundef %x741, i8 noundef zeroext %968, i32 noundef %969, i32 noundef %970)
  %971 = load i8, ptr %x741, align 1
  %972 = load i32, ptr %x694, align 4
  %973 = load i32, ptr %x725, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x742, ptr noundef %x743, i8 noundef zeroext %971, i32 noundef %972, i32 noundef %973)
  %974 = load i8, ptr %x743, align 1
  %975 = load i32, ptr %x696, align 4
  %976 = load i32, ptr %x727, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x744, ptr noundef %x745, i8 noundef zeroext %974, i32 noundef %975, i32 noundef %976)
  %977 = load i32, ptr %x728, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x746, ptr noundef %x747, i32 noundef %977, i32 noundef 1916078453)
  %978 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x748, ptr noundef %x749, i32 noundef %978, i32 noundef -2)
  %979 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x750, ptr noundef %x751, i32 noundef %979, i32 noundef -1)
  %980 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x752, ptr noundef %x753, i32 noundef %980, i32 noundef -1)
  %981 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x754, ptr noundef %x755, i32 noundef %981, i32 noundef -1)
  %982 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x756, ptr noundef %x757, i32 noundef %982, i32 noundef 1912856427)
  %983 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x758, ptr noundef %x759, i32 noundef %983, i32 noundef 566625579)
  %984 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x760, ptr noundef %x761, i32 noundef %984, i32 noundef 1404826633)
  %985 = load i32, ptr %x746, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x762, ptr noundef %x763, i32 noundef %985, i32 noundef 970277155)
  %986 = load i32, ptr %x763, align 4
  %987 = load i32, ptr %x760, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x764, ptr noundef %x765, i8 noundef zeroext 0, i32 noundef %986, i32 noundef %987)
  %988 = load i8, ptr %x765, align 1
  %989 = load i32, ptr %x761, align 4
  %990 = load i32, ptr %x758, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x766, ptr noundef %x767, i8 noundef zeroext %988, i32 noundef %989, i32 noundef %990)
  %991 = load i8, ptr %x767, align 1
  %992 = load i32, ptr %x759, align 4
  %993 = load i32, ptr %x756, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x768, ptr noundef %x769, i8 noundef zeroext %991, i32 noundef %992, i32 noundef %993)
  %994 = load i8, ptr %x769, align 1
  %995 = load i32, ptr %x757, align 4
  %996 = load i32, ptr %x754, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x770, ptr noundef %x771, i8 noundef zeroext %994, i32 noundef %995, i32 noundef %996)
  %997 = load i8, ptr %x771, align 1
  %998 = load i32, ptr %x755, align 4
  %999 = load i32, ptr %x752, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x772, ptr noundef %x773, i8 noundef zeroext %997, i32 noundef %998, i32 noundef %999)
  %1000 = load i8, ptr %x773, align 1
  %1001 = load i32, ptr %x753, align 4
  %1002 = load i32, ptr %x750, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x774, ptr noundef %x775, i8 noundef zeroext %1000, i32 noundef %1001, i32 noundef %1002)
  %1003 = load i8, ptr %x775, align 1
  %1004 = load i32, ptr %x751, align 4
  %1005 = load i32, ptr %x748, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x776, ptr noundef %x777, i8 noundef zeroext %1003, i32 noundef %1004, i32 noundef %1005)
  %1006 = load i8, ptr %x777, align 1
  %conv119 = zext i8 %1006 to i32
  %1007 = load i32, ptr %x749, align 4
  %add120 = add i32 %conv119, %1007
  store i32 %add120, ptr %x778, align 4
  %1008 = load i32, ptr %x728, align 4
  %1009 = load i32, ptr %x762, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x779, ptr noundef %x780, i8 noundef zeroext 0, i32 noundef %1008, i32 noundef %1009)
  %1010 = load i8, ptr %x780, align 1
  %1011 = load i32, ptr %x730, align 4
  %1012 = load i32, ptr %x764, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x781, ptr noundef %x782, i8 noundef zeroext %1010, i32 noundef %1011, i32 noundef %1012)
  %1013 = load i8, ptr %x782, align 1
  %1014 = load i32, ptr %x732, align 4
  %1015 = load i32, ptr %x766, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x783, ptr noundef %x784, i8 noundef zeroext %1013, i32 noundef %1014, i32 noundef %1015)
  %1016 = load i8, ptr %x784, align 1
  %1017 = load i32, ptr %x734, align 4
  %1018 = load i32, ptr %x768, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x785, ptr noundef %x786, i8 noundef zeroext %1016, i32 noundef %1017, i32 noundef %1018)
  %1019 = load i8, ptr %x786, align 1
  %1020 = load i32, ptr %x736, align 4
  %1021 = load i32, ptr %x770, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x787, ptr noundef %x788, i8 noundef zeroext %1019, i32 noundef %1020, i32 noundef %1021)
  %1022 = load i8, ptr %x788, align 1
  %1023 = load i32, ptr %x738, align 4
  %1024 = load i32, ptr %x772, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x789, ptr noundef %x790, i8 noundef zeroext %1022, i32 noundef %1023, i32 noundef %1024)
  %1025 = load i8, ptr %x790, align 1
  %1026 = load i32, ptr %x740, align 4
  %1027 = load i32, ptr %x774, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x791, ptr noundef %x792, i8 noundef zeroext %1025, i32 noundef %1026, i32 noundef %1027)
  %1028 = load i8, ptr %x792, align 1
  %1029 = load i32, ptr %x742, align 4
  %1030 = load i32, ptr %x776, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x793, ptr noundef %x794, i8 noundef zeroext %1028, i32 noundef %1029, i32 noundef %1030)
  %1031 = load i8, ptr %x794, align 1
  %1032 = load i32, ptr %x744, align 4
  %1033 = load i32, ptr %x778, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x795, ptr noundef %x796, i8 noundef zeroext %1031, i32 noundef %1032, i32 noundef %1033)
  %1034 = load i8, ptr %x796, align 1
  %conv121 = zext i8 %1034 to i32
  %1035 = load i8, ptr %x745, align 1
  %conv122 = zext i8 %1035 to i32
  %add123 = add i32 %conv121, %conv122
  store i32 %add123, ptr %x797, align 4
  %1036 = load i32, ptr %x781, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x798, ptr noundef %x799, i8 noundef zeroext 0, i32 noundef %1036, i32 noundef 970277155)
  %1037 = load i8, ptr %x799, align 1
  %1038 = load i32, ptr %x783, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x800, ptr noundef %x801, i8 noundef zeroext %1037, i32 noundef %1038, i32 noundef 1404826633)
  %1039 = load i8, ptr %x801, align 1
  %1040 = load i32, ptr %x785, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x802, ptr noundef %x803, i8 noundef zeroext %1039, i32 noundef %1040, i32 noundef 566625579)
  %1041 = load i8, ptr %x803, align 1
  %1042 = load i32, ptr %x787, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x804, ptr noundef %x805, i8 noundef zeroext %1041, i32 noundef %1042, i32 noundef 1912856427)
  %1043 = load i8, ptr %x805, align 1
  %1044 = load i32, ptr %x789, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x806, ptr noundef %x807, i8 noundef zeroext %1043, i32 noundef %1044, i32 noundef -1)
  %1045 = load i8, ptr %x807, align 1
  %1046 = load i32, ptr %x791, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x808, ptr noundef %x809, i8 noundef zeroext %1045, i32 noundef %1046, i32 noundef -1)
  %1047 = load i8, ptr %x809, align 1
  %1048 = load i32, ptr %x793, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x810, ptr noundef %x811, i8 noundef zeroext %1047, i32 noundef %1048, i32 noundef -1)
  %1049 = load i8, ptr %x811, align 1
  %1050 = load i32, ptr %x795, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x812, ptr noundef %x813, i8 noundef zeroext %1049, i32 noundef %1050, i32 noundef -2)
  %1051 = load i8, ptr %x813, align 1
  %1052 = load i32, ptr %x797, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x814, ptr noundef %x815, i8 noundef zeroext %1051, i32 noundef %1052, i32 noundef 0)
  %1053 = load i8, ptr %x815, align 1
  %1054 = load i32, ptr %x798, align 4
  %1055 = load i32, ptr %x781, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x816, i8 noundef zeroext %1053, i32 noundef %1054, i32 noundef %1055)
  %1056 = load i8, ptr %x815, align 1
  %1057 = load i32, ptr %x800, align 4
  %1058 = load i32, ptr %x783, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x817, i8 noundef zeroext %1056, i32 noundef %1057, i32 noundef %1058)
  %1059 = load i8, ptr %x815, align 1
  %1060 = load i32, ptr %x802, align 4
  %1061 = load i32, ptr %x785, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x818, i8 noundef zeroext %1059, i32 noundef %1060, i32 noundef %1061)
  %1062 = load i8, ptr %x815, align 1
  %1063 = load i32, ptr %x804, align 4
  %1064 = load i32, ptr %x787, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x819, i8 noundef zeroext %1062, i32 noundef %1063, i32 noundef %1064)
  %1065 = load i8, ptr %x815, align 1
  %1066 = load i32, ptr %x806, align 4
  %1067 = load i32, ptr %x789, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x820, i8 noundef zeroext %1065, i32 noundef %1066, i32 noundef %1067)
  %1068 = load i8, ptr %x815, align 1
  %1069 = load i32, ptr %x808, align 4
  %1070 = load i32, ptr %x791, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x821, i8 noundef zeroext %1068, i32 noundef %1069, i32 noundef %1070)
  %1071 = load i8, ptr %x815, align 1
  %1072 = load i32, ptr %x810, align 4
  %1073 = load i32, ptr %x793, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x822, i8 noundef zeroext %1071, i32 noundef %1072, i32 noundef %1073)
  %1074 = load i8, ptr %x815, align 1
  %1075 = load i32, ptr %x812, align 4
  %1076 = load i32, ptr %x795, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x823, i8 noundef zeroext %1074, i32 noundef %1075, i32 noundef %1076)
  %1077 = load i32, ptr %x816, align 4
  %1078 = load ptr, ptr %out1.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %1078, i64 0
  store i32 %1077, ptr %arrayidx124, align 4
  %1079 = load i32, ptr %x817, align 4
  %1080 = load ptr, ptr %out1.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %1080, i64 1
  store i32 %1079, ptr %arrayidx125, align 4
  %1081 = load i32, ptr %x818, align 4
  %1082 = load ptr, ptr %out1.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %1082, i64 2
  store i32 %1081, ptr %arrayidx126, align 4
  %1083 = load i32, ptr %x819, align 4
  %1084 = load ptr, ptr %out1.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %1084, i64 3
  store i32 %1083, ptr %arrayidx127, align 4
  %1085 = load i32, ptr %x820, align 4
  %1086 = load ptr, ptr %out1.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %1086, i64 4
  store i32 %1085, ptr %arrayidx128, align 4
  %1087 = load i32, ptr %x821, align 4
  %1088 = load ptr, ptr %out1.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %1088, i64 5
  store i32 %1087, ptr %arrayidx129, align 4
  %1089 = load i32, ptr %x822, align 4
  %1090 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %1090, i64 6
  store i32 %1089, ptr %arrayidx130, align 4
  %1091 = load i32, ptr %x823, align 4
  %1092 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %1092, i64 7
  store i32 %1091, ptr %arrayidx131, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i8, align 1
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i8, align 1
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i8, align 1
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx3, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i32 noundef %6, i32 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx5, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 3
  %18 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 4
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %22, i64 4
  %23 = load i32, ptr %arrayidx9, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i32 noundef %21, i32 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %25, i64 5
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 5
  %28 = load i32, ptr %arrayidx11, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i32 noundef %26, i32 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 6
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 6
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i32 noundef %31, i32 noundef %33)
  %34 = load i8, ptr %x14, align 1
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 7
  %36 = load i32, ptr %arrayidx14, align 4
  %37 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx15, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %38)
  %39 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext 0, i32 noundef %39, i32 noundef 970277155)
  %40 = load i8, ptr %x18, align 1
  %41 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %40, i32 noundef %41, i32 noundef 1404826633)
  %42 = load i8, ptr %x20, align 1
  %43 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %42, i32 noundef %43, i32 noundef 566625579)
  %44 = load i8, ptr %x22, align 1
  %45 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %44, i32 noundef %45, i32 noundef 1912856427)
  %46 = load i8, ptr %x24, align 1
  %47 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %46, i32 noundef %47, i32 noundef -1)
  %48 = load i8, ptr %x26, align 1
  %49 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %48, i32 noundef %49, i32 noundef -1)
  %50 = load i8, ptr %x28, align 1
  %51 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %50, i32 noundef %51, i32 noundef -1)
  %52 = load i8, ptr %x30, align 1
  %53 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %52, i32 noundef %53, i32 noundef -2)
  %54 = load i8, ptr %x32, align 1
  %55 = load i8, ptr %x16, align 1
  %conv = zext i8 %55 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %54, i32 noundef %conv, i32 noundef 0)
  %56 = load i8, ptr %x34, align 1
  %57 = load i32, ptr %x17, align 4
  %58 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x35, i8 noundef zeroext %56, i32 noundef %57, i32 noundef %58)
  %59 = load i8, ptr %x34, align 1
  %60 = load i32, ptr %x19, align 4
  %61 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x36, i8 noundef zeroext %59, i32 noundef %60, i32 noundef %61)
  %62 = load i8, ptr %x34, align 1
  %63 = load i32, ptr %x21, align 4
  %64 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x37, i8 noundef zeroext %62, i32 noundef %63, i32 noundef %64)
  %65 = load i8, ptr %x34, align 1
  %66 = load i32, ptr %x23, align 4
  %67 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x38, i8 noundef zeroext %65, i32 noundef %66, i32 noundef %67)
  %68 = load i8, ptr %x34, align 1
  %69 = load i32, ptr %x25, align 4
  %70 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x39, i8 noundef zeroext %68, i32 noundef %69, i32 noundef %70)
  %71 = load i8, ptr %x34, align 1
  %72 = load i32, ptr %x27, align 4
  %73 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x40, i8 noundef zeroext %71, i32 noundef %72, i32 noundef %73)
  %74 = load i8, ptr %x34, align 1
  %75 = load i32, ptr %x29, align 4
  %76 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x41, i8 noundef zeroext %74, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x34, align 1
  %78 = load i32, ptr %x31, align 4
  %79 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x42, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i32, ptr %x35, align 4
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %81, i64 0
  store i32 %80, ptr %arrayidx16, align 4
  %82 = load i32, ptr %x36, align 4
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %83, i64 1
  store i32 %82, ptr %arrayidx17, align 4
  %84 = load i32, ptr %x37, align 4
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %85, i64 2
  store i32 %84, ptr %arrayidx18, align 4
  %86 = load i32, ptr %x38, align 4
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %87, i64 3
  store i32 %86, ptr %arrayidx19, align 4
  %88 = load i32, ptr %x39, align 4
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %89, i64 4
  store i32 %88, ptr %arrayidx20, align 4
  %90 = load i32, ptr %x40, align 4
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %91, i64 5
  store i32 %90, ptr %arrayidx21, align 4
  %92 = load i32, ptr %x41, align 4
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %93, i64 6
  store i32 %92, ptr %arrayidx22, align 4
  %94 = load i32, ptr %x42, align 4
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %95, i64 7
  store i32 %94, ptr %arrayidx23, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i8, align 1
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i8, align 1
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx3, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i32 noundef %6, i32 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx5, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 3
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 3
  %18 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i32 noundef %16, i32 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 4
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %22, i64 4
  %23 = load i32, ptr %arrayidx9, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i32 noundef %21, i32 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %25, i64 5
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 5
  %28 = load i32, ptr %arrayidx11, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i32 noundef %26, i32 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 6
  %31 = load i32, ptr %arrayidx12, align 4
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 6
  %33 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i32 noundef %31, i32 noundef %33)
  %34 = load i8, ptr %x14, align 1
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %35, i64 7
  %36 = load i32, ptr %arrayidx14, align 4
  %37 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %37, i64 7
  %38 = load i32, ptr %arrayidx15, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %38)
  %39 = load i8, ptr %x16, align 1
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x17, i8 noundef zeroext %39, i32 noundef 0, i32 noundef -1)
  %40 = load i32, ptr %x1, align 4
  %41 = load i32, ptr %x17, align 4
  %and = and i32 %41, 970277155
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i32 noundef %40, i32 noundef %and)
  %42 = load i8, ptr %x19, align 1
  %43 = load i32, ptr %x3, align 4
  %44 = load i32, ptr %x17, align 4
  %and16 = and i32 %44, 1404826633
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %42, i32 noundef %43, i32 noundef %and16)
  %45 = load i8, ptr %x21, align 1
  %46 = load i32, ptr %x5, align 4
  %47 = load i32, ptr %x17, align 4
  %and17 = and i32 %47, 566625579
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %45, i32 noundef %46, i32 noundef %and17)
  %48 = load i8, ptr %x23, align 1
  %49 = load i32, ptr %x7, align 4
  %50 = load i32, ptr %x17, align 4
  %and18 = and i32 %50, 1912856427
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %48, i32 noundef %49, i32 noundef %and18)
  %51 = load i8, ptr %x25, align 1
  %52 = load i32, ptr %x9, align 4
  %53 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %51, i32 noundef %52, i32 noundef %53)
  %54 = load i8, ptr %x27, align 1
  %55 = load i32, ptr %x11, align 4
  %56 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %54, i32 noundef %55, i32 noundef %56)
  %57 = load i8, ptr %x29, align 1
  %58 = load i32, ptr %x13, align 4
  %59 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %57, i32 noundef %58, i32 noundef %59)
  %60 = load i8, ptr %x31, align 1
  %61 = load i32, ptr %x15, align 4
  %62 = load i32, ptr %x17, align 4
  %and19 = and i32 %62, -2
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %60, i32 noundef %61, i32 noundef %and19)
  %63 = load i32, ptr %x18, align 4
  %64 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %64, i64 0
  store i32 %63, ptr %arrayidx20, align 4
  %65 = load i32, ptr %x20, align 4
  %66 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %66, i64 1
  store i32 %65, ptr %arrayidx21, align 4
  %67 = load i32, ptr %x22, align 4
  %68 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %68, i64 2
  store i32 %67, ptr %arrayidx22, align 4
  %69 = load i32, ptr %x24, align 4
  %70 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %70, i64 3
  store i32 %69, ptr %arrayidx23, align 4
  %71 = load i32, ptr %x26, align 4
  %72 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %72, i64 4
  store i32 %71, ptr %arrayidx24, align 4
  %73 = load i32, ptr %x28, align 4
  %74 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %74, i64 5
  store i32 %73, ptr %arrayidx25, align 4
  %75 = load i32, ptr %x30, align 4
  %76 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %76, i64 6
  store i32 %75, ptr %arrayidx26, align 4
  %77 = load i32, ptr %x32, align 4
  %78 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %78, i64 7
  store i32 %77, ptr %arrayidx27, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i8, align 1
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i8, align 1
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i8, align 1
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef 0, i32 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef 0, i32 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef 0, i32 noundef %10)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef 0, i32 noundef %13)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx5, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i32 noundef 0, i32 noundef %16)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx6, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i32 noundef 0, i32 noundef %19)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i32 noundef 0, i32 noundef %22)
  %23 = load i8, ptr %x16, align 1
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x17, i8 noundef zeroext %23, i32 noundef 0, i32 noundef -1)
  %24 = load i32, ptr %x1, align 4
  %25 = load i32, ptr %x17, align 4
  %and = and i32 %25, 970277155
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %and)
  %26 = load i8, ptr %x19, align 1
  %27 = load i32, ptr %x3, align 4
  %28 = load i32, ptr %x17, align 4
  %and8 = and i32 %28, 1404826633
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %and8)
  %29 = load i8, ptr %x21, align 1
  %30 = load i32, ptr %x5, align 4
  %31 = load i32, ptr %x17, align 4
  %and9 = and i32 %31, 566625579
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %and9)
  %32 = load i8, ptr %x23, align 1
  %33 = load i32, ptr %x7, align 4
  %34 = load i32, ptr %x17, align 4
  %and10 = and i32 %34, 1912856427
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %and10)
  %35 = load i8, ptr %x25, align 1
  %36 = load i32, ptr %x9, align 4
  %37 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x27, align 1
  %39 = load i32, ptr %x11, align 4
  %40 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x29, align 1
  %42 = load i32, ptr %x13, align 4
  %43 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i8, ptr %x31, align 1
  %45 = load i32, ptr %x15, align 4
  %46 = load i32, ptr %x17, align 4
  %and11 = and i32 %46, -2
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %44, i32 noundef %45, i32 noundef %and11)
  %47 = load i32, ptr %x18, align 4
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %48, i64 0
  store i32 %47, ptr %arrayidx12, align 4
  %49 = load i32, ptr %x20, align 4
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %50, i64 1
  store i32 %49, ptr %arrayidx13, align 4
  %51 = load i32, ptr %x22, align 4
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %52, i64 2
  store i32 %51, ptr %arrayidx14, align 4
  %53 = load i32, ptr %x24, align 4
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %54, i64 3
  store i32 %53, ptr %arrayidx15, align 4
  %55 = load i32, ptr %x26, align 4
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %56, i64 4
  store i32 %55, ptr %arrayidx16, align 4
  %57 = load i32, ptr %x28, align 4
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %58, i64 5
  store i32 %57, ptr %arrayidx17, align 4
  %59 = load i32, ptr %x30, align 4
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %60, i64 6
  store i32 %59, ptr %arrayidx18, align 4
  %61 = load i32, ptr %x32, align 4
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %62, i64 7
  store i32 %61, ptr %arrayidx19, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
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
  %x77 = alloca i32, align 4
  %x78 = alloca i32, align 4
  %x79 = alloca i32, align 4
  %x80 = alloca i32, align 4
  %x81 = alloca i32, align 4
  %x82 = alloca i32, align 4
  %x83 = alloca i32, align 4
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
  %x111 = alloca i8, align 1
  %x112 = alloca i32, align 4
  %x113 = alloca i8, align 1
  %x114 = alloca i32, align 4
  %x115 = alloca i8, align 1
  %x116 = alloca i32, align 4
  %x117 = alloca i8, align 1
  %x118 = alloca i32, align 4
  %x119 = alloca i8, align 1
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
  %x133 = alloca i32, align 4
  %x134 = alloca i32, align 4
  %x135 = alloca i32, align 4
  %x136 = alloca i32, align 4
  %x137 = alloca i32, align 4
  %x138 = alloca i32, align 4
  %x139 = alloca i32, align 4
  %x140 = alloca i32, align 4
  %x141 = alloca i32, align 4
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
  %x144 = alloca i32, align 4
  %x145 = alloca i32, align 4
  %x146 = alloca i32, align 4
  %x147 = alloca i32, align 4
  %x148 = alloca i32, align 4
  %x149 = alloca i32, align 4
  %x150 = alloca i32, align 4
  %x151 = alloca i8, align 1
  %x152 = alloca i32, align 4
  %x153 = alloca i8, align 1
  %x154 = alloca i32, align 4
  %x155 = alloca i8, align 1
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
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
  %x201 = alloca i32, align 4
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
  %x213 = alloca i32, align 4
  %x214 = alloca i32, align 4
  %x215 = alloca i32, align 4
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
  %x263 = alloca i8, align 1
  %x264 = alloca i32, align 4
  %x265 = alloca i32, align 4
  %x266 = alloca i32, align 4
  %x267 = alloca i32, align 4
  %x268 = alloca i32, align 4
  %x269 = alloca i32, align 4
  %x270 = alloca i32, align 4
  %x271 = alloca i32, align 4
  %x272 = alloca i32, align 4
  %x273 = alloca i32, align 4
  %x274 = alloca i32, align 4
  %x275 = alloca i32, align 4
  %x276 = alloca i32, align 4
  %x277 = alloca i32, align 4
  %x278 = alloca i32, align 4
  %x279 = alloca i32, align 4
  %x280 = alloca i32, align 4
  %x281 = alloca i32, align 4
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
  %x319 = alloca i8, align 1
  %x320 = alloca i32, align 4
  %x321 = alloca i8, align 1
  %x322 = alloca i32, align 4
  %x323 = alloca i8, align 1
  %x324 = alloca i32, align 4
  %x325 = alloca i8, align 1
  %x326 = alloca i32, align 4
  %x327 = alloca i8, align 1
  %x328 = alloca i32, align 4
  %x329 = alloca i8, align 1
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
  %x342 = alloca i32, align 4
  %x343 = alloca i32, align 4
  %x344 = alloca i32, align 4
  %x345 = alloca i32, align 4
  %x346 = alloca i32, align 4
  %x347 = alloca i32, align 4
  %x348 = alloca i32, align 4
  %x349 = alloca i8, align 1
  %x350 = alloca i32, align 4
  %x351 = alloca i8, align 1
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
  %x391 = alloca i8, align 1
  %x392 = alloca i32, align 4
  %x393 = alloca i8, align 1
  %x394 = alloca i32, align 4
  %x395 = alloca i8, align 1
  %x396 = alloca i32, align 4
  %x397 = alloca i32, align 4
  %x398 = alloca i32, align 4
  %x399 = alloca i32, align 4
  %x400 = alloca i32, align 4
  %x401 = alloca i32, align 4
  %x402 = alloca i32, align 4
  %x403 = alloca i32, align 4
  %x404 = alloca i32, align 4
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
  %x415 = alloca i8, align 1
  %x416 = alloca i32, align 4
  %x417 = alloca i8, align 1
  %x418 = alloca i32, align 4
  %x419 = alloca i8, align 1
  %x420 = alloca i32, align 4
  %x421 = alloca i8, align 1
  %x422 = alloca i32, align 4
  %x423 = alloca i8, align 1
  %x424 = alloca i32, align 4
  %x425 = alloca i8, align 1
  %x426 = alloca i32, align 4
  %x427 = alloca i8, align 1
  %x428 = alloca i32, align 4
  %x429 = alloca i8, align 1
  %x430 = alloca i32, align 4
  %x431 = alloca i8, align 1
  %x432 = alloca i32, align 4
  %x433 = alloca i8, align 1
  %x434 = alloca i32, align 4
  %x435 = alloca i8, align 1
  %x436 = alloca i32, align 4
  %x437 = alloca i8, align 1
  %x438 = alloca i32, align 4
  %x439 = alloca i8, align 1
  %x440 = alloca i32, align 4
  %x441 = alloca i8, align 1
  %x442 = alloca i32, align 4
  %x443 = alloca i8, align 1
  %x444 = alloca i32, align 4
  %x445 = alloca i8, align 1
  %x446 = alloca i32, align 4
  %x447 = alloca i8, align 1
  %x448 = alloca i32, align 4
  %x449 = alloca i8, align 1
  %x450 = alloca i32, align 4
  %x451 = alloca i8, align 1
  %x452 = alloca i32, align 4
  %x453 = alloca i8, align 1
  %x454 = alloca i32, align 4
  %x455 = alloca i8, align 1
  %x456 = alloca i32, align 4
  %x457 = alloca i8, align 1
  %x458 = alloca i32, align 4
  %x459 = alloca i8, align 1
  %x460 = alloca i32, align 4
  %x461 = alloca i8, align 1
  %x462 = alloca i32, align 4
  %x463 = alloca i32, align 4
  %x464 = alloca i32, align 4
  %x465 = alloca i32, align 4
  %x466 = alloca i32, align 4
  %x467 = alloca i32, align 4
  %x468 = alloca i32, align 4
  %x469 = alloca i32, align 4
  %x470 = alloca i32, align 4
  %x471 = alloca i32, align 4
  %x472 = alloca i32, align 4
  %x473 = alloca i32, align 4
  %x474 = alloca i32, align 4
  %x475 = alloca i32, align 4
  %x476 = alloca i32, align 4
  %x477 = alloca i32, align 4
  %x478 = alloca i32, align 4
  %x479 = alloca i32, align 4
  %x480 = alloca i32, align 4
  %x481 = alloca i8, align 1
  %x482 = alloca i32, align 4
  %x483 = alloca i8, align 1
  %x484 = alloca i32, align 4
  %x485 = alloca i8, align 1
  %x486 = alloca i32, align 4
  %x487 = alloca i8, align 1
  %x488 = alloca i32, align 4
  %x489 = alloca i8, align 1
  %x490 = alloca i32, align 4
  %x491 = alloca i8, align 1
  %x492 = alloca i32, align 4
  %x493 = alloca i8, align 1
  %x494 = alloca i32, align 4
  %x495 = alloca i8, align 1
  %x496 = alloca i32, align 4
  %x497 = alloca i8, align 1
  %x498 = alloca i32, align 4
  %x499 = alloca i8, align 1
  %x500 = alloca i32, align 4
  %x501 = alloca i8, align 1
  %x502 = alloca i32, align 4
  %x503 = alloca i8, align 1
  %x504 = alloca i32, align 4
  %x505 = alloca i8, align 1
  %x506 = alloca i32, align 4
  %x507 = alloca i8, align 1
  %x508 = alloca i32, align 4
  %x509 = alloca i8, align 1
  %x510 = alloca i32, align 4
  %x511 = alloca i8, align 1
  %x512 = alloca i32, align 4
  %x513 = alloca i8, align 1
  %x514 = alloca i32, align 4
  %x515 = alloca i8, align 1
  %x516 = alloca i32, align 4
  %x517 = alloca i8, align 1
  %x518 = alloca i32, align 4
  %x519 = alloca i8, align 1
  %x520 = alloca i32, align 4
  %x521 = alloca i8, align 1
  %x522 = alloca i32, align 4
  %x523 = alloca i8, align 1
  %x524 = alloca i32, align 4
  %x525 = alloca i8, align 1
  %x526 = alloca i32, align 4
  %x527 = alloca i8, align 1
  %x528 = alloca i32, align 4
  %x529 = alloca i8, align 1
  %x530 = alloca i32, align 4
  %x531 = alloca i32, align 4
  %x532 = alloca i32, align 4
  %x533 = alloca i32, align 4
  %x534 = alloca i32, align 4
  %x535 = alloca i32, align 4
  %x536 = alloca i32, align 4
  %x537 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x2, ptr noundef %x3, i32 noundef %2, i32 noundef 1916078453)
  %3 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x4, ptr noundef %x5, i32 noundef %3, i32 noundef -2)
  %4 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x6, ptr noundef %x7, i32 noundef %4, i32 noundef -1)
  %5 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x8, ptr noundef %x9, i32 noundef %5, i32 noundef -1)
  %6 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x10, ptr noundef %x11, i32 noundef %6, i32 noundef -1)
  %7 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x12, ptr noundef %x13, i32 noundef %7, i32 noundef 1912856427)
  %8 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x14, ptr noundef %x15, i32 noundef %8, i32 noundef 566625579)
  %9 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x16, ptr noundef %x17, i32 noundef %9, i32 noundef 1404826633)
  %10 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x18, ptr noundef %x19, i32 noundef %10, i32 noundef 970277155)
  %11 = load i32, ptr %x19, align 4
  %12 = load i32, ptr %x16, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext 0, i32 noundef %11, i32 noundef %12)
  %13 = load i8, ptr %x21, align 1
  %14 = load i32, ptr %x17, align 4
  %15 = load i32, ptr %x14, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %13, i32 noundef %14, i32 noundef %15)
  %16 = load i8, ptr %x23, align 1
  %17 = load i32, ptr %x15, align 4
  %18 = load i32, ptr %x12, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %16, i32 noundef %17, i32 noundef %18)
  %19 = load i8, ptr %x25, align 1
  %20 = load i32, ptr %x13, align 4
  %21 = load i32, ptr %x10, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %19, i32 noundef %20, i32 noundef %21)
  %22 = load i8, ptr %x27, align 1
  %23 = load i32, ptr %x11, align 4
  %24 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %22, i32 noundef %23, i32 noundef %24)
  %25 = load i8, ptr %x29, align 1
  %26 = load i32, ptr %x9, align 4
  %27 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %25, i32 noundef %26, i32 noundef %27)
  %28 = load i8, ptr %x31, align 1
  %29 = load i32, ptr %x7, align 4
  %30 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %28, i32 noundef %29, i32 noundef %30)
  %31 = load i32, ptr %x1, align 4
  %32 = load i32, ptr %x18, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext 0, i32 noundef %31, i32 noundef %32)
  %33 = load i8, ptr %x35, align 1
  %34 = load i32, ptr %x20, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %33, i32 noundef 0, i32 noundef %34)
  %35 = load i8, ptr %x37, align 1
  %36 = load i32, ptr %x22, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %35, i32 noundef 0, i32 noundef %36)
  %37 = load i8, ptr %x39, align 1
  %38 = load i32, ptr %x24, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %37, i32 noundef 0, i32 noundef %38)
  %39 = load i8, ptr %x41, align 1
  %40 = load i32, ptr %x26, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x42, ptr noundef %x43, i8 noundef zeroext %39, i32 noundef 0, i32 noundef %40)
  %41 = load i8, ptr %x43, align 1
  %42 = load i32, ptr %x28, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext %41, i32 noundef 0, i32 noundef %42)
  %43 = load i8, ptr %x45, align 1
  %44 = load i32, ptr %x30, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %43, i32 noundef 0, i32 noundef %44)
  %45 = load i8, ptr %x47, align 1
  %46 = load i32, ptr %x32, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %45, i32 noundef 0, i32 noundef %46)
  %47 = load i32, ptr %x36, align 4
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %48, i64 1
  %49 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i32 noundef %47, i32 noundef %49)
  %50 = load i8, ptr %x51, align 1
  %51 = load i32, ptr %x38, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %50, i32 noundef %51, i32 noundef 0)
  %52 = load i8, ptr %x53, align 1
  %53 = load i32, ptr %x40, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %52, i32 noundef %53, i32 noundef 0)
  %54 = load i8, ptr %x55, align 1
  %55 = load i32, ptr %x42, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %54, i32 noundef %55, i32 noundef 0)
  %56 = load i8, ptr %x57, align 1
  %57 = load i32, ptr %x44, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %56, i32 noundef %57, i32 noundef 0)
  %58 = load i8, ptr %x59, align 1
  %59 = load i32, ptr %x46, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %58, i32 noundef %59, i32 noundef 0)
  %60 = load i8, ptr %x61, align 1
  %61 = load i32, ptr %x48, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %60, i32 noundef %61, i32 noundef 0)
  %62 = load i8, ptr %x63, align 1
  %63 = load i8, ptr %x49, align 1
  %conv = zext i8 %63 to i32
  %64 = load i8, ptr %x33, align 1
  %conv2 = zext i8 %64 to i32
  %65 = load i32, ptr %x5, align 4
  %add = add i32 %conv2, %65
  %add3 = add i32 %conv, %add
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %62, i32 noundef %add3, i32 noundef 0)
  %66 = load i32, ptr %x50, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x66, ptr noundef %x67, i32 noundef %66, i32 noundef 1916078453)
  %67 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x68, ptr noundef %x69, i32 noundef %67, i32 noundef -2)
  %68 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x70, ptr noundef %x71, i32 noundef %68, i32 noundef -1)
  %69 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x72, ptr noundef %x73, i32 noundef %69, i32 noundef -1)
  %70 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x74, ptr noundef %x75, i32 noundef %70, i32 noundef -1)
  %71 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x76, ptr noundef %x77, i32 noundef %71, i32 noundef 1912856427)
  %72 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x78, ptr noundef %x79, i32 noundef %72, i32 noundef 566625579)
  %73 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x80, ptr noundef %x81, i32 noundef %73, i32 noundef 1404826633)
  %74 = load i32, ptr %x66, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x82, ptr noundef %x83, i32 noundef %74, i32 noundef 970277155)
  %75 = load i32, ptr %x83, align 4
  %76 = load i32, ptr %x80, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext 0, i32 noundef %75, i32 noundef %76)
  %77 = load i8, ptr %x85, align 1
  %78 = load i32, ptr %x81, align 4
  %79 = load i32, ptr %x78, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %77, i32 noundef %78, i32 noundef %79)
  %80 = load i8, ptr %x87, align 1
  %81 = load i32, ptr %x79, align 4
  %82 = load i32, ptr %x76, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %80, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x89, align 1
  %84 = load i32, ptr %x77, align 4
  %85 = load i32, ptr %x74, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %83, i32 noundef %84, i32 noundef %85)
  %86 = load i8, ptr %x91, align 1
  %87 = load i32, ptr %x75, align 4
  %88 = load i32, ptr %x72, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %86, i32 noundef %87, i32 noundef %88)
  %89 = load i8, ptr %x93, align 1
  %90 = load i32, ptr %x73, align 4
  %91 = load i32, ptr %x70, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %89, i32 noundef %90, i32 noundef %91)
  %92 = load i8, ptr %x95, align 1
  %93 = load i32, ptr %x71, align 4
  %94 = load i32, ptr %x68, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %92, i32 noundef %93, i32 noundef %94)
  %95 = load i32, ptr %x50, align 4
  %96 = load i32, ptr %x82, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext 0, i32 noundef %95, i32 noundef %96)
  %97 = load i8, ptr %x99, align 1
  %98 = load i32, ptr %x52, align 4
  %99 = load i32, ptr %x84, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %97, i32 noundef %98, i32 noundef %99)
  %100 = load i8, ptr %x101, align 1
  %101 = load i32, ptr %x54, align 4
  %102 = load i32, ptr %x86, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %100, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x103, align 1
  %104 = load i32, ptr %x56, align 4
  %105 = load i32, ptr %x88, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %103, i32 noundef %104, i32 noundef %105)
  %106 = load i8, ptr %x105, align 1
  %107 = load i32, ptr %x58, align 4
  %108 = load i32, ptr %x90, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %106, i32 noundef %107, i32 noundef %108)
  %109 = load i8, ptr %x107, align 1
  %110 = load i32, ptr %x60, align 4
  %111 = load i32, ptr %x92, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %109, i32 noundef %110, i32 noundef %111)
  %112 = load i8, ptr %x109, align 1
  %113 = load i32, ptr %x62, align 4
  %114 = load i32, ptr %x94, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %112, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x111, align 1
  %116 = load i32, ptr %x64, align 4
  %117 = load i32, ptr %x96, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %115, i32 noundef %116, i32 noundef %117)
  %118 = load i8, ptr %x113, align 1
  %119 = load i8, ptr %x65, align 1
  %conv4 = zext i8 %119 to i32
  %120 = load i8, ptr %x97, align 1
  %conv5 = zext i8 %120 to i32
  %121 = load i32, ptr %x69, align 4
  %add6 = add i32 %conv5, %121
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %118, i32 noundef %conv4, i32 noundef %add6)
  %122 = load i32, ptr %x100, align 4
  %123 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %123, i64 2
  %124 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext 0, i32 noundef %122, i32 noundef %124)
  %125 = load i8, ptr %x117, align 1
  %126 = load i32, ptr %x102, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %125, i32 noundef %126, i32 noundef 0)
  %127 = load i8, ptr %x119, align 1
  %128 = load i32, ptr %x104, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %127, i32 noundef %128, i32 noundef 0)
  %129 = load i8, ptr %x121, align 1
  %130 = load i32, ptr %x106, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %129, i32 noundef %130, i32 noundef 0)
  %131 = load i8, ptr %x123, align 1
  %132 = load i32, ptr %x108, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %131, i32 noundef %132, i32 noundef 0)
  %133 = load i8, ptr %x125, align 1
  %134 = load i32, ptr %x110, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %133, i32 noundef %134, i32 noundef 0)
  %135 = load i8, ptr %x127, align 1
  %136 = load i32, ptr %x112, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %135, i32 noundef %136, i32 noundef 0)
  %137 = load i8, ptr %x129, align 1
  %138 = load i32, ptr %x114, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %137, i32 noundef %138, i32 noundef 0)
  %139 = load i32, ptr %x116, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x132, ptr noundef %x133, i32 noundef %139, i32 noundef 1916078453)
  %140 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x134, ptr noundef %x135, i32 noundef %140, i32 noundef -2)
  %141 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x136, ptr noundef %x137, i32 noundef %141, i32 noundef -1)
  %142 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x138, ptr noundef %x139, i32 noundef %142, i32 noundef -1)
  %143 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x140, ptr noundef %x141, i32 noundef %143, i32 noundef -1)
  %144 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x142, ptr noundef %x143, i32 noundef %144, i32 noundef 1912856427)
  %145 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x144, ptr noundef %x145, i32 noundef %145, i32 noundef 566625579)
  %146 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x146, ptr noundef %x147, i32 noundef %146, i32 noundef 1404826633)
  %147 = load i32, ptr %x132, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x148, ptr noundef %x149, i32 noundef %147, i32 noundef 970277155)
  %148 = load i32, ptr %x149, align 4
  %149 = load i32, ptr %x146, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext 0, i32 noundef %148, i32 noundef %149)
  %150 = load i8, ptr %x151, align 1
  %151 = load i32, ptr %x147, align 4
  %152 = load i32, ptr %x144, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %150, i32 noundef %151, i32 noundef %152)
  %153 = load i8, ptr %x153, align 1
  %154 = load i32, ptr %x145, align 4
  %155 = load i32, ptr %x142, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %153, i32 noundef %154, i32 noundef %155)
  %156 = load i8, ptr %x155, align 1
  %157 = load i32, ptr %x143, align 4
  %158 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %156, i32 noundef %157, i32 noundef %158)
  %159 = load i8, ptr %x157, align 1
  %160 = load i32, ptr %x141, align 4
  %161 = load i32, ptr %x138, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %159, i32 noundef %160, i32 noundef %161)
  %162 = load i8, ptr %x159, align 1
  %163 = load i32, ptr %x139, align 4
  %164 = load i32, ptr %x136, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %162, i32 noundef %163, i32 noundef %164)
  %165 = load i8, ptr %x161, align 1
  %166 = load i32, ptr %x137, align 4
  %167 = load i32, ptr %x134, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %165, i32 noundef %166, i32 noundef %167)
  %168 = load i32, ptr %x116, align 4
  %169 = load i32, ptr %x148, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext 0, i32 noundef %168, i32 noundef %169)
  %170 = load i8, ptr %x165, align 1
  %171 = load i32, ptr %x118, align 4
  %172 = load i32, ptr %x150, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %170, i32 noundef %171, i32 noundef %172)
  %173 = load i8, ptr %x167, align 1
  %174 = load i32, ptr %x120, align 4
  %175 = load i32, ptr %x152, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext %173, i32 noundef %174, i32 noundef %175)
  %176 = load i8, ptr %x169, align 1
  %177 = load i32, ptr %x122, align 4
  %178 = load i32, ptr %x154, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext %176, i32 noundef %177, i32 noundef %178)
  %179 = load i8, ptr %x171, align 1
  %180 = load i32, ptr %x124, align 4
  %181 = load i32, ptr %x156, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %179, i32 noundef %180, i32 noundef %181)
  %182 = load i8, ptr %x173, align 1
  %183 = load i32, ptr %x126, align 4
  %184 = load i32, ptr %x158, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %182, i32 noundef %183, i32 noundef %184)
  %185 = load i8, ptr %x175, align 1
  %186 = load i32, ptr %x128, align 4
  %187 = load i32, ptr %x160, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %185, i32 noundef %186, i32 noundef %187)
  %188 = load i8, ptr %x177, align 1
  %189 = load i32, ptr %x130, align 4
  %190 = load i32, ptr %x162, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %188, i32 noundef %189, i32 noundef %190)
  %191 = load i8, ptr %x179, align 1
  %192 = load i8, ptr %x131, align 1
  %conv8 = zext i8 %192 to i32
  %193 = load i8, ptr %x115, align 1
  %conv9 = zext i8 %193 to i32
  %add10 = add i32 %conv8, %conv9
  %194 = load i8, ptr %x163, align 1
  %conv11 = zext i8 %194 to i32
  %195 = load i32, ptr %x135, align 4
  %add12 = add i32 %conv11, %195
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %191, i32 noundef %add10, i32 noundef %add12)
  %196 = load i32, ptr %x166, align 4
  %197 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %197, i64 3
  %198 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext 0, i32 noundef %196, i32 noundef %198)
  %199 = load i8, ptr %x183, align 1
  %200 = load i32, ptr %x168, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %199, i32 noundef %200, i32 noundef 0)
  %201 = load i8, ptr %x185, align 1
  %202 = load i32, ptr %x170, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %201, i32 noundef %202, i32 noundef 0)
  %203 = load i8, ptr %x187, align 1
  %204 = load i32, ptr %x172, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %203, i32 noundef %204, i32 noundef 0)
  %205 = load i8, ptr %x189, align 1
  %206 = load i32, ptr %x174, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %205, i32 noundef %206, i32 noundef 0)
  %207 = load i8, ptr %x191, align 1
  %208 = load i32, ptr %x176, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %207, i32 noundef %208, i32 noundef 0)
  %209 = load i8, ptr %x193, align 1
  %210 = load i32, ptr %x178, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %209, i32 noundef %210, i32 noundef 0)
  %211 = load i8, ptr %x195, align 1
  %212 = load i32, ptr %x180, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %211, i32 noundef %212, i32 noundef 0)
  %213 = load i32, ptr %x182, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x198, ptr noundef %x199, i32 noundef %213, i32 noundef 1916078453)
  %214 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x200, ptr noundef %x201, i32 noundef %214, i32 noundef -2)
  %215 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x202, ptr noundef %x203, i32 noundef %215, i32 noundef -1)
  %216 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x204, ptr noundef %x205, i32 noundef %216, i32 noundef -1)
  %217 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x206, ptr noundef %x207, i32 noundef %217, i32 noundef -1)
  %218 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x208, ptr noundef %x209, i32 noundef %218, i32 noundef 1912856427)
  %219 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x210, ptr noundef %x211, i32 noundef %219, i32 noundef 566625579)
  %220 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x212, ptr noundef %x213, i32 noundef %220, i32 noundef 1404826633)
  %221 = load i32, ptr %x198, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x214, ptr noundef %x215, i32 noundef %221, i32 noundef 970277155)
  %222 = load i32, ptr %x215, align 4
  %223 = load i32, ptr %x212, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext 0, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x217, align 1
  %225 = load i32, ptr %x213, align 4
  %226 = load i32, ptr %x210, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x219, align 1
  %228 = load i32, ptr %x211, align 4
  %229 = load i32, ptr %x208, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x221, align 1
  %231 = load i32, ptr %x209, align 4
  %232 = load i32, ptr %x206, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x222, ptr noundef %x223, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x223, align 1
  %234 = load i32, ptr %x207, align 4
  %235 = load i32, ptr %x204, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x224, ptr noundef %x225, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x225, align 1
  %237 = load i32, ptr %x205, align 4
  %238 = load i32, ptr %x202, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x226, ptr noundef %x227, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i8, ptr %x227, align 1
  %240 = load i32, ptr %x203, align 4
  %241 = load i32, ptr %x200, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x228, ptr noundef %x229, i8 noundef zeroext %239, i32 noundef %240, i32 noundef %241)
  %242 = load i32, ptr %x182, align 4
  %243 = load i32, ptr %x214, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x230, ptr noundef %x231, i8 noundef zeroext 0, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x231, align 1
  %245 = load i32, ptr %x184, align 4
  %246 = load i32, ptr %x216, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x232, ptr noundef %x233, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x233, align 1
  %248 = load i32, ptr %x186, align 4
  %249 = load i32, ptr %x218, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x234, ptr noundef %x235, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x235, align 1
  %251 = load i32, ptr %x188, align 4
  %252 = load i32, ptr %x220, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x236, ptr noundef %x237, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x237, align 1
  %254 = load i32, ptr %x190, align 4
  %255 = load i32, ptr %x222, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x238, ptr noundef %x239, i8 noundef zeroext %253, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x239, align 1
  %257 = load i32, ptr %x192, align 4
  %258 = load i32, ptr %x224, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x240, ptr noundef %x241, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x241, align 1
  %260 = load i32, ptr %x194, align 4
  %261 = load i32, ptr %x226, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x242, ptr noundef %x243, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x243, align 1
  %263 = load i32, ptr %x196, align 4
  %264 = load i32, ptr %x228, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x244, ptr noundef %x245, i8 noundef zeroext %262, i32 noundef %263, i32 noundef %264)
  %265 = load i8, ptr %x245, align 1
  %266 = load i8, ptr %x197, align 1
  %conv14 = zext i8 %266 to i32
  %267 = load i8, ptr %x181, align 1
  %conv15 = zext i8 %267 to i32
  %add16 = add i32 %conv14, %conv15
  %268 = load i8, ptr %x229, align 1
  %conv17 = zext i8 %268 to i32
  %269 = load i32, ptr %x201, align 4
  %add18 = add i32 %conv17, %269
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext %265, i32 noundef %add16, i32 noundef %add18)
  %270 = load i32, ptr %x232, align 4
  %271 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %271, i64 4
  %272 = load i32, ptr %arrayidx19, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext 0, i32 noundef %270, i32 noundef %272)
  %273 = load i8, ptr %x249, align 1
  %274 = load i32, ptr %x234, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %273, i32 noundef %274, i32 noundef 0)
  %275 = load i8, ptr %x251, align 1
  %276 = load i32, ptr %x236, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %275, i32 noundef %276, i32 noundef 0)
  %277 = load i8, ptr %x253, align 1
  %278 = load i32, ptr %x238, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %277, i32 noundef %278, i32 noundef 0)
  %279 = load i8, ptr %x255, align 1
  %280 = load i32, ptr %x240, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %279, i32 noundef %280, i32 noundef 0)
  %281 = load i8, ptr %x257, align 1
  %282 = load i32, ptr %x242, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %281, i32 noundef %282, i32 noundef 0)
  %283 = load i8, ptr %x259, align 1
  %284 = load i32, ptr %x244, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x260, ptr noundef %x261, i8 noundef zeroext %283, i32 noundef %284, i32 noundef 0)
  %285 = load i8, ptr %x261, align 1
  %286 = load i32, ptr %x246, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x262, ptr noundef %x263, i8 noundef zeroext %285, i32 noundef %286, i32 noundef 0)
  %287 = load i32, ptr %x248, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x264, ptr noundef %x265, i32 noundef %287, i32 noundef 1916078453)
  %288 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x266, ptr noundef %x267, i32 noundef %288, i32 noundef -2)
  %289 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x268, ptr noundef %x269, i32 noundef %289, i32 noundef -1)
  %290 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x270, ptr noundef %x271, i32 noundef %290, i32 noundef -1)
  %291 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x272, ptr noundef %x273, i32 noundef %291, i32 noundef -1)
  %292 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x274, ptr noundef %x275, i32 noundef %292, i32 noundef 1912856427)
  %293 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x276, ptr noundef %x277, i32 noundef %293, i32 noundef 566625579)
  %294 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x278, ptr noundef %x279, i32 noundef %294, i32 noundef 1404826633)
  %295 = load i32, ptr %x264, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x280, ptr noundef %x281, i32 noundef %295, i32 noundef 970277155)
  %296 = load i32, ptr %x281, align 4
  %297 = load i32, ptr %x278, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext 0, i32 noundef %296, i32 noundef %297)
  %298 = load i8, ptr %x283, align 1
  %299 = load i32, ptr %x279, align 4
  %300 = load i32, ptr %x276, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x284, ptr noundef %x285, i8 noundef zeroext %298, i32 noundef %299, i32 noundef %300)
  %301 = load i8, ptr %x285, align 1
  %302 = load i32, ptr %x277, align 4
  %303 = load i32, ptr %x274, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x286, ptr noundef %x287, i8 noundef zeroext %301, i32 noundef %302, i32 noundef %303)
  %304 = load i8, ptr %x287, align 1
  %305 = load i32, ptr %x275, align 4
  %306 = load i32, ptr %x272, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x288, ptr noundef %x289, i8 noundef zeroext %304, i32 noundef %305, i32 noundef %306)
  %307 = load i8, ptr %x289, align 1
  %308 = load i32, ptr %x273, align 4
  %309 = load i32, ptr %x270, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x290, ptr noundef %x291, i8 noundef zeroext %307, i32 noundef %308, i32 noundef %309)
  %310 = load i8, ptr %x291, align 1
  %311 = load i32, ptr %x271, align 4
  %312 = load i32, ptr %x268, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x292, ptr noundef %x293, i8 noundef zeroext %310, i32 noundef %311, i32 noundef %312)
  %313 = load i8, ptr %x293, align 1
  %314 = load i32, ptr %x269, align 4
  %315 = load i32, ptr %x266, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x294, ptr noundef %x295, i8 noundef zeroext %313, i32 noundef %314, i32 noundef %315)
  %316 = load i32, ptr %x248, align 4
  %317 = load i32, ptr %x280, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x296, ptr noundef %x297, i8 noundef zeroext 0, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x297, align 1
  %319 = load i32, ptr %x250, align 4
  %320 = load i32, ptr %x282, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x298, ptr noundef %x299, i8 noundef zeroext %318, i32 noundef %319, i32 noundef %320)
  %321 = load i8, ptr %x299, align 1
  %322 = load i32, ptr %x252, align 4
  %323 = load i32, ptr %x284, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x300, ptr noundef %x301, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x301, align 1
  %325 = load i32, ptr %x254, align 4
  %326 = load i32, ptr %x286, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x302, ptr noundef %x303, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x303, align 1
  %328 = load i32, ptr %x256, align 4
  %329 = load i32, ptr %x288, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x304, ptr noundef %x305, i8 noundef zeroext %327, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %x305, align 1
  %331 = load i32, ptr %x258, align 4
  %332 = load i32, ptr %x290, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x306, ptr noundef %x307, i8 noundef zeroext %330, i32 noundef %331, i32 noundef %332)
  %333 = load i8, ptr %x307, align 1
  %334 = load i32, ptr %x260, align 4
  %335 = load i32, ptr %x292, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x308, ptr noundef %x309, i8 noundef zeroext %333, i32 noundef %334, i32 noundef %335)
  %336 = load i8, ptr %x309, align 1
  %337 = load i32, ptr %x262, align 4
  %338 = load i32, ptr %x294, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x310, ptr noundef %x311, i8 noundef zeroext %336, i32 noundef %337, i32 noundef %338)
  %339 = load i8, ptr %x311, align 1
  %340 = load i8, ptr %x263, align 1
  %conv20 = zext i8 %340 to i32
  %341 = load i8, ptr %x247, align 1
  %conv21 = zext i8 %341 to i32
  %add22 = add i32 %conv20, %conv21
  %342 = load i8, ptr %x295, align 1
  %conv23 = zext i8 %342 to i32
  %343 = load i32, ptr %x267, align 4
  %add24 = add i32 %conv23, %343
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext %339, i32 noundef %add22, i32 noundef %add24)
  %344 = load i32, ptr %x298, align 4
  %345 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %345, i64 5
  %346 = load i32, ptr %arrayidx25, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext 0, i32 noundef %344, i32 noundef %346)
  %347 = load i8, ptr %x315, align 1
  %348 = load i32, ptr %x300, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %347, i32 noundef %348, i32 noundef 0)
  %349 = load i8, ptr %x317, align 1
  %350 = load i32, ptr %x302, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %349, i32 noundef %350, i32 noundef 0)
  %351 = load i8, ptr %x319, align 1
  %352 = load i32, ptr %x304, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %351, i32 noundef %352, i32 noundef 0)
  %353 = load i8, ptr %x321, align 1
  %354 = load i32, ptr %x306, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x322, ptr noundef %x323, i8 noundef zeroext %353, i32 noundef %354, i32 noundef 0)
  %355 = load i8, ptr %x323, align 1
  %356 = load i32, ptr %x308, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x324, ptr noundef %x325, i8 noundef zeroext %355, i32 noundef %356, i32 noundef 0)
  %357 = load i8, ptr %x325, align 1
  %358 = load i32, ptr %x310, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x326, ptr noundef %x327, i8 noundef zeroext %357, i32 noundef %358, i32 noundef 0)
  %359 = load i8, ptr %x327, align 1
  %360 = load i32, ptr %x312, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x328, ptr noundef %x329, i8 noundef zeroext %359, i32 noundef %360, i32 noundef 0)
  %361 = load i32, ptr %x314, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x330, ptr noundef %x331, i32 noundef %361, i32 noundef 1916078453)
  %362 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x332, ptr noundef %x333, i32 noundef %362, i32 noundef -2)
  %363 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x334, ptr noundef %x335, i32 noundef %363, i32 noundef -1)
  %364 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x336, ptr noundef %x337, i32 noundef %364, i32 noundef -1)
  %365 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x338, ptr noundef %x339, i32 noundef %365, i32 noundef -1)
  %366 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x340, ptr noundef %x341, i32 noundef %366, i32 noundef 1912856427)
  %367 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x342, ptr noundef %x343, i32 noundef %367, i32 noundef 566625579)
  %368 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x344, ptr noundef %x345, i32 noundef %368, i32 noundef 1404826633)
  %369 = load i32, ptr %x330, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x346, ptr noundef %x347, i32 noundef %369, i32 noundef 970277155)
  %370 = load i32, ptr %x347, align 4
  %371 = load i32, ptr %x344, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x348, ptr noundef %x349, i8 noundef zeroext 0, i32 noundef %370, i32 noundef %371)
  %372 = load i8, ptr %x349, align 1
  %373 = load i32, ptr %x345, align 4
  %374 = load i32, ptr %x342, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x350, ptr noundef %x351, i8 noundef zeroext %372, i32 noundef %373, i32 noundef %374)
  %375 = load i8, ptr %x351, align 1
  %376 = load i32, ptr %x343, align 4
  %377 = load i32, ptr %x340, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x352, ptr noundef %x353, i8 noundef zeroext %375, i32 noundef %376, i32 noundef %377)
  %378 = load i8, ptr %x353, align 1
  %379 = load i32, ptr %x341, align 4
  %380 = load i32, ptr %x338, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x354, ptr noundef %x355, i8 noundef zeroext %378, i32 noundef %379, i32 noundef %380)
  %381 = load i8, ptr %x355, align 1
  %382 = load i32, ptr %x339, align 4
  %383 = load i32, ptr %x336, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x356, ptr noundef %x357, i8 noundef zeroext %381, i32 noundef %382, i32 noundef %383)
  %384 = load i8, ptr %x357, align 1
  %385 = load i32, ptr %x337, align 4
  %386 = load i32, ptr %x334, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x358, ptr noundef %x359, i8 noundef zeroext %384, i32 noundef %385, i32 noundef %386)
  %387 = load i8, ptr %x359, align 1
  %388 = load i32, ptr %x335, align 4
  %389 = load i32, ptr %x332, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x360, ptr noundef %x361, i8 noundef zeroext %387, i32 noundef %388, i32 noundef %389)
  %390 = load i32, ptr %x314, align 4
  %391 = load i32, ptr %x346, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext 0, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x363, align 1
  %393 = load i32, ptr %x316, align 4
  %394 = load i32, ptr %x348, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x365, align 1
  %396 = load i32, ptr %x318, align 4
  %397 = load i32, ptr %x350, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x367, align 1
  %399 = load i32, ptr %x320, align 4
  %400 = load i32, ptr %x352, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %398, i32 noundef %399, i32 noundef %400)
  %401 = load i8, ptr %x369, align 1
  %402 = load i32, ptr %x322, align 4
  %403 = load i32, ptr %x354, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %401, i32 noundef %402, i32 noundef %403)
  %404 = load i8, ptr %x371, align 1
  %405 = load i32, ptr %x324, align 4
  %406 = load i32, ptr %x356, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %404, i32 noundef %405, i32 noundef %406)
  %407 = load i8, ptr %x373, align 1
  %408 = load i32, ptr %x326, align 4
  %409 = load i32, ptr %x358, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %407, i32 noundef %408, i32 noundef %409)
  %410 = load i8, ptr %x375, align 1
  %411 = load i32, ptr %x328, align 4
  %412 = load i32, ptr %x360, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x376, ptr noundef %x377, i8 noundef zeroext %410, i32 noundef %411, i32 noundef %412)
  %413 = load i8, ptr %x377, align 1
  %414 = load i8, ptr %x329, align 1
  %conv26 = zext i8 %414 to i32
  %415 = load i8, ptr %x313, align 1
  %conv27 = zext i8 %415 to i32
  %add28 = add i32 %conv26, %conv27
  %416 = load i8, ptr %x361, align 1
  %conv29 = zext i8 %416 to i32
  %417 = load i32, ptr %x333, align 4
  %add30 = add i32 %conv29, %417
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x378, ptr noundef %x379, i8 noundef zeroext %413, i32 noundef %add28, i32 noundef %add30)
  %418 = load i32, ptr %x364, align 4
  %419 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %419, i64 6
  %420 = load i32, ptr %arrayidx31, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x380, ptr noundef %x381, i8 noundef zeroext 0, i32 noundef %418, i32 noundef %420)
  %421 = load i8, ptr %x381, align 1
  %422 = load i32, ptr %x366, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x382, ptr noundef %x383, i8 noundef zeroext %421, i32 noundef %422, i32 noundef 0)
  %423 = load i8, ptr %x383, align 1
  %424 = load i32, ptr %x368, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x384, ptr noundef %x385, i8 noundef zeroext %423, i32 noundef %424, i32 noundef 0)
  %425 = load i8, ptr %x385, align 1
  %426 = load i32, ptr %x370, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x386, ptr noundef %x387, i8 noundef zeroext %425, i32 noundef %426, i32 noundef 0)
  %427 = load i8, ptr %x387, align 1
  %428 = load i32, ptr %x372, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x388, ptr noundef %x389, i8 noundef zeroext %427, i32 noundef %428, i32 noundef 0)
  %429 = load i8, ptr %x389, align 1
  %430 = load i32, ptr %x374, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x390, ptr noundef %x391, i8 noundef zeroext %429, i32 noundef %430, i32 noundef 0)
  %431 = load i8, ptr %x391, align 1
  %432 = load i32, ptr %x376, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x392, ptr noundef %x393, i8 noundef zeroext %431, i32 noundef %432, i32 noundef 0)
  %433 = load i8, ptr %x393, align 1
  %434 = load i32, ptr %x378, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x394, ptr noundef %x395, i8 noundef zeroext %433, i32 noundef %434, i32 noundef 0)
  %435 = load i32, ptr %x380, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x396, ptr noundef %x397, i32 noundef %435, i32 noundef 1916078453)
  %436 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x398, ptr noundef %x399, i32 noundef %436, i32 noundef -2)
  %437 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x400, ptr noundef %x401, i32 noundef %437, i32 noundef -1)
  %438 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x402, ptr noundef %x403, i32 noundef %438, i32 noundef -1)
  %439 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x404, ptr noundef %x405, i32 noundef %439, i32 noundef -1)
  %440 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x406, ptr noundef %x407, i32 noundef %440, i32 noundef 1912856427)
  %441 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x408, ptr noundef %x409, i32 noundef %441, i32 noundef 566625579)
  %442 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x410, ptr noundef %x411, i32 noundef %442, i32 noundef 1404826633)
  %443 = load i32, ptr %x396, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x412, ptr noundef %x413, i32 noundef %443, i32 noundef 970277155)
  %444 = load i32, ptr %x413, align 4
  %445 = load i32, ptr %x410, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x414, ptr noundef %x415, i8 noundef zeroext 0, i32 noundef %444, i32 noundef %445)
  %446 = load i8, ptr %x415, align 1
  %447 = load i32, ptr %x411, align 4
  %448 = load i32, ptr %x408, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x416, ptr noundef %x417, i8 noundef zeroext %446, i32 noundef %447, i32 noundef %448)
  %449 = load i8, ptr %x417, align 1
  %450 = load i32, ptr %x409, align 4
  %451 = load i32, ptr %x406, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x418, ptr noundef %x419, i8 noundef zeroext %449, i32 noundef %450, i32 noundef %451)
  %452 = load i8, ptr %x419, align 1
  %453 = load i32, ptr %x407, align 4
  %454 = load i32, ptr %x404, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x420, ptr noundef %x421, i8 noundef zeroext %452, i32 noundef %453, i32 noundef %454)
  %455 = load i8, ptr %x421, align 1
  %456 = load i32, ptr %x405, align 4
  %457 = load i32, ptr %x402, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x422, ptr noundef %x423, i8 noundef zeroext %455, i32 noundef %456, i32 noundef %457)
  %458 = load i8, ptr %x423, align 1
  %459 = load i32, ptr %x403, align 4
  %460 = load i32, ptr %x400, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x424, ptr noundef %x425, i8 noundef zeroext %458, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x425, align 1
  %462 = load i32, ptr %x401, align 4
  %463 = load i32, ptr %x398, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x426, ptr noundef %x427, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %463)
  %464 = load i32, ptr %x380, align 4
  %465 = load i32, ptr %x412, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext 0, i32 noundef %464, i32 noundef %465)
  %466 = load i8, ptr %x429, align 1
  %467 = load i32, ptr %x382, align 4
  %468 = load i32, ptr %x414, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %466, i32 noundef %467, i32 noundef %468)
  %469 = load i8, ptr %x431, align 1
  %470 = load i32, ptr %x384, align 4
  %471 = load i32, ptr %x416, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %469, i32 noundef %470, i32 noundef %471)
  %472 = load i8, ptr %x433, align 1
  %473 = load i32, ptr %x386, align 4
  %474 = load i32, ptr %x418, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %472, i32 noundef %473, i32 noundef %474)
  %475 = load i8, ptr %x435, align 1
  %476 = load i32, ptr %x388, align 4
  %477 = load i32, ptr %x420, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %475, i32 noundef %476, i32 noundef %477)
  %478 = load i8, ptr %x437, align 1
  %479 = load i32, ptr %x390, align 4
  %480 = load i32, ptr %x422, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x438, ptr noundef %x439, i8 noundef zeroext %478, i32 noundef %479, i32 noundef %480)
  %481 = load i8, ptr %x439, align 1
  %482 = load i32, ptr %x392, align 4
  %483 = load i32, ptr %x424, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x440, ptr noundef %x441, i8 noundef zeroext %481, i32 noundef %482, i32 noundef %483)
  %484 = load i8, ptr %x441, align 1
  %485 = load i32, ptr %x394, align 4
  %486 = load i32, ptr %x426, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x442, ptr noundef %x443, i8 noundef zeroext %484, i32 noundef %485, i32 noundef %486)
  %487 = load i8, ptr %x443, align 1
  %488 = load i8, ptr %x395, align 1
  %conv32 = zext i8 %488 to i32
  %489 = load i8, ptr %x379, align 1
  %conv33 = zext i8 %489 to i32
  %add34 = add i32 %conv32, %conv33
  %490 = load i8, ptr %x427, align 1
  %conv35 = zext i8 %490 to i32
  %491 = load i32, ptr %x399, align 4
  %add36 = add i32 %conv35, %491
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x444, ptr noundef %x445, i8 noundef zeroext %487, i32 noundef %add34, i32 noundef %add36)
  %492 = load i32, ptr %x430, align 4
  %493 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %493, i64 7
  %494 = load i32, ptr %arrayidx37, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x446, ptr noundef %x447, i8 noundef zeroext 0, i32 noundef %492, i32 noundef %494)
  %495 = load i8, ptr %x447, align 1
  %496 = load i32, ptr %x432, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x448, ptr noundef %x449, i8 noundef zeroext %495, i32 noundef %496, i32 noundef 0)
  %497 = load i8, ptr %x449, align 1
  %498 = load i32, ptr %x434, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x450, ptr noundef %x451, i8 noundef zeroext %497, i32 noundef %498, i32 noundef 0)
  %499 = load i8, ptr %x451, align 1
  %500 = load i32, ptr %x436, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x452, ptr noundef %x453, i8 noundef zeroext %499, i32 noundef %500, i32 noundef 0)
  %501 = load i8, ptr %x453, align 1
  %502 = load i32, ptr %x438, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext %501, i32 noundef %502, i32 noundef 0)
  %503 = load i8, ptr %x455, align 1
  %504 = load i32, ptr %x440, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %503, i32 noundef %504, i32 noundef 0)
  %505 = load i8, ptr %x457, align 1
  %506 = load i32, ptr %x442, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %505, i32 noundef %506, i32 noundef 0)
  %507 = load i8, ptr %x459, align 1
  %508 = load i32, ptr %x444, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %507, i32 noundef %508, i32 noundef 0)
  %509 = load i32, ptr %x446, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x462, ptr noundef %x463, i32 noundef %509, i32 noundef 1916078453)
  %510 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x464, ptr noundef %x465, i32 noundef %510, i32 noundef -2)
  %511 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x466, ptr noundef %x467, i32 noundef %511, i32 noundef -1)
  %512 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x468, ptr noundef %x469, i32 noundef %512, i32 noundef -1)
  %513 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x470, ptr noundef %x471, i32 noundef %513, i32 noundef -1)
  %514 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x472, ptr noundef %x473, i32 noundef %514, i32 noundef 1912856427)
  %515 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x474, ptr noundef %x475, i32 noundef %515, i32 noundef 566625579)
  %516 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x476, ptr noundef %x477, i32 noundef %516, i32 noundef 1404826633)
  %517 = load i32, ptr %x462, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x478, ptr noundef %x479, i32 noundef %517, i32 noundef 970277155)
  %518 = load i32, ptr %x479, align 4
  %519 = load i32, ptr %x476, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x480, ptr noundef %x481, i8 noundef zeroext 0, i32 noundef %518, i32 noundef %519)
  %520 = load i8, ptr %x481, align 1
  %521 = load i32, ptr %x477, align 4
  %522 = load i32, ptr %x474, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x482, ptr noundef %x483, i8 noundef zeroext %520, i32 noundef %521, i32 noundef %522)
  %523 = load i8, ptr %x483, align 1
  %524 = load i32, ptr %x475, align 4
  %525 = load i32, ptr %x472, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x484, ptr noundef %x485, i8 noundef zeroext %523, i32 noundef %524, i32 noundef %525)
  %526 = load i8, ptr %x485, align 1
  %527 = load i32, ptr %x473, align 4
  %528 = load i32, ptr %x470, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x486, ptr noundef %x487, i8 noundef zeroext %526, i32 noundef %527, i32 noundef %528)
  %529 = load i8, ptr %x487, align 1
  %530 = load i32, ptr %x471, align 4
  %531 = load i32, ptr %x468, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x488, ptr noundef %x489, i8 noundef zeroext %529, i32 noundef %530, i32 noundef %531)
  %532 = load i8, ptr %x489, align 1
  %533 = load i32, ptr %x469, align 4
  %534 = load i32, ptr %x466, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x490, ptr noundef %x491, i8 noundef zeroext %532, i32 noundef %533, i32 noundef %534)
  %535 = load i8, ptr %x491, align 1
  %536 = load i32, ptr %x467, align 4
  %537 = load i32, ptr %x464, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x492, ptr noundef %x493, i8 noundef zeroext %535, i32 noundef %536, i32 noundef %537)
  %538 = load i32, ptr %x446, align 4
  %539 = load i32, ptr %x478, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x494, ptr noundef %x495, i8 noundef zeroext 0, i32 noundef %538, i32 noundef %539)
  %540 = load i8, ptr %x495, align 1
  %541 = load i32, ptr %x448, align 4
  %542 = load i32, ptr %x480, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x496, ptr noundef %x497, i8 noundef zeroext %540, i32 noundef %541, i32 noundef %542)
  %543 = load i8, ptr %x497, align 1
  %544 = load i32, ptr %x450, align 4
  %545 = load i32, ptr %x482, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x498, ptr noundef %x499, i8 noundef zeroext %543, i32 noundef %544, i32 noundef %545)
  %546 = load i8, ptr %x499, align 1
  %547 = load i32, ptr %x452, align 4
  %548 = load i32, ptr %x484, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x500, ptr noundef %x501, i8 noundef zeroext %546, i32 noundef %547, i32 noundef %548)
  %549 = load i8, ptr %x501, align 1
  %550 = load i32, ptr %x454, align 4
  %551 = load i32, ptr %x486, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x502, ptr noundef %x503, i8 noundef zeroext %549, i32 noundef %550, i32 noundef %551)
  %552 = load i8, ptr %x503, align 1
  %553 = load i32, ptr %x456, align 4
  %554 = load i32, ptr %x488, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x504, ptr noundef %x505, i8 noundef zeroext %552, i32 noundef %553, i32 noundef %554)
  %555 = load i8, ptr %x505, align 1
  %556 = load i32, ptr %x458, align 4
  %557 = load i32, ptr %x490, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x506, ptr noundef %x507, i8 noundef zeroext %555, i32 noundef %556, i32 noundef %557)
  %558 = load i8, ptr %x507, align 1
  %559 = load i32, ptr %x460, align 4
  %560 = load i32, ptr %x492, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x508, ptr noundef %x509, i8 noundef zeroext %558, i32 noundef %559, i32 noundef %560)
  %561 = load i8, ptr %x509, align 1
  %562 = load i8, ptr %x461, align 1
  %conv38 = zext i8 %562 to i32
  %563 = load i8, ptr %x445, align 1
  %conv39 = zext i8 %563 to i32
  %add40 = add i32 %conv38, %conv39
  %564 = load i8, ptr %x493, align 1
  %conv41 = zext i8 %564 to i32
  %565 = load i32, ptr %x465, align 4
  %add42 = add i32 %conv41, %565
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x510, ptr noundef %x511, i8 noundef zeroext %561, i32 noundef %add40, i32 noundef %add42)
  %566 = load i32, ptr %x496, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x512, ptr noundef %x513, i8 noundef zeroext 0, i32 noundef %566, i32 noundef 970277155)
  %567 = load i8, ptr %x513, align 1
  %568 = load i32, ptr %x498, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x514, ptr noundef %x515, i8 noundef zeroext %567, i32 noundef %568, i32 noundef 1404826633)
  %569 = load i8, ptr %x515, align 1
  %570 = load i32, ptr %x500, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x516, ptr noundef %x517, i8 noundef zeroext %569, i32 noundef %570, i32 noundef 566625579)
  %571 = load i8, ptr %x517, align 1
  %572 = load i32, ptr %x502, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x518, ptr noundef %x519, i8 noundef zeroext %571, i32 noundef %572, i32 noundef 1912856427)
  %573 = load i8, ptr %x519, align 1
  %574 = load i32, ptr %x504, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x520, ptr noundef %x521, i8 noundef zeroext %573, i32 noundef %574, i32 noundef -1)
  %575 = load i8, ptr %x521, align 1
  %576 = load i32, ptr %x506, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x522, ptr noundef %x523, i8 noundef zeroext %575, i32 noundef %576, i32 noundef -1)
  %577 = load i8, ptr %x523, align 1
  %578 = load i32, ptr %x508, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x524, ptr noundef %x525, i8 noundef zeroext %577, i32 noundef %578, i32 noundef -1)
  %579 = load i8, ptr %x525, align 1
  %580 = load i32, ptr %x510, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x526, ptr noundef %x527, i8 noundef zeroext %579, i32 noundef %580, i32 noundef -2)
  %581 = load i8, ptr %x527, align 1
  %582 = load i8, ptr %x511, align 1
  %conv43 = zext i8 %582 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x528, ptr noundef %x529, i8 noundef zeroext %581, i32 noundef %conv43, i32 noundef 0)
  %583 = load i8, ptr %x529, align 1
  %584 = load i32, ptr %x512, align 4
  %585 = load i32, ptr %x496, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x530, i8 noundef zeroext %583, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x529, align 1
  %587 = load i32, ptr %x514, align 4
  %588 = load i32, ptr %x498, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x531, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x529, align 1
  %590 = load i32, ptr %x516, align 4
  %591 = load i32, ptr %x500, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x532, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i8, ptr %x529, align 1
  %593 = load i32, ptr %x518, align 4
  %594 = load i32, ptr %x502, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x533, i8 noundef zeroext %592, i32 noundef %593, i32 noundef %594)
  %595 = load i8, ptr %x529, align 1
  %596 = load i32, ptr %x520, align 4
  %597 = load i32, ptr %x504, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x534, i8 noundef zeroext %595, i32 noundef %596, i32 noundef %597)
  %598 = load i8, ptr %x529, align 1
  %599 = load i32, ptr %x522, align 4
  %600 = load i32, ptr %x506, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x535, i8 noundef zeroext %598, i32 noundef %599, i32 noundef %600)
  %601 = load i8, ptr %x529, align 1
  %602 = load i32, ptr %x524, align 4
  %603 = load i32, ptr %x508, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x536, i8 noundef zeroext %601, i32 noundef %602, i32 noundef %603)
  %604 = load i8, ptr %x529, align 1
  %605 = load i32, ptr %x526, align 4
  %606 = load i32, ptr %x510, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x537, i8 noundef zeroext %604, i32 noundef %605, i32 noundef %606)
  %607 = load i32, ptr %x530, align 4
  %608 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %608, i64 0
  store i32 %607, ptr %arrayidx44, align 4
  %609 = load i32, ptr %x531, align 4
  %610 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %610, i64 1
  store i32 %609, ptr %arrayidx45, align 4
  %611 = load i32, ptr %x532, align 4
  %612 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %612, i64 2
  store i32 %611, ptr %arrayidx46, align 4
  %613 = load i32, ptr %x533, align 4
  %614 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %614, i64 3
  store i32 %613, ptr %arrayidx47, align 4
  %615 = load i32, ptr %x534, align 4
  %616 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %616, i64 4
  store i32 %615, ptr %arrayidx48, align 4
  %617 = load i32, ptr %x535, align 4
  %618 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %618, i64 5
  store i32 %617, ptr %arrayidx49, align 4
  %619 = load i32, ptr %x536, align 4
  %620 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %620, i64 6
  store i32 %619, ptr %arrayidx50, align 4
  %621 = load i32, ptr %x537, align 4
  %622 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %622, i64 7
  store i32 %621, ptr %arrayidx51, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
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
  %x36 = alloca i8, align 1
  %x37 = alloca i32, align 4
  %x38 = alloca i8, align 1
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
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
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
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %x89 = alloca i32, align 4
  %x90 = alloca i32, align 4
  %x91 = alloca i32, align 4
  %x92 = alloca i32, align 4
  %x93 = alloca i32, align 4
  %x94 = alloca i32, align 4
  %x95 = alloca i32, align 4
  %x96 = alloca i32, align 4
  %x97 = alloca i32, align 4
  %x98 = alloca i32, align 4
  %x99 = alloca i32, align 4
  %x100 = alloca i32, align 4
  %x101 = alloca i32, align 4
  %x102 = alloca i32, align 4
  %x103 = alloca i32, align 4
  %x104 = alloca i32, align 4
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
  %x120 = alloca i8, align 1
  %x121 = alloca i32, align 4
  %x122 = alloca i8, align 1
  %x123 = alloca i32, align 4
  %x124 = alloca i8, align 1
  %x125 = alloca i32, align 4
  %x126 = alloca i8, align 1
  %x127 = alloca i32, align 4
  %x128 = alloca i8, align 1
  %x129 = alloca i32, align 4
  %x130 = alloca i8, align 1
  %x131 = alloca i32, align 4
  %x132 = alloca i8, align 1
  %x133 = alloca i32, align 4
  %x134 = alloca i8, align 1
  %x135 = alloca i32, align 4
  %x136 = alloca i32, align 4
  %x137 = alloca i32, align 4
  %x138 = alloca i32, align 4
  %x139 = alloca i32, align 4
  %x140 = alloca i32, align 4
  %x141 = alloca i32, align 4
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
  %x144 = alloca i32, align 4
  %x145 = alloca i32, align 4
  %x146 = alloca i32, align 4
  %x147 = alloca i32, align 4
  %x148 = alloca i32, align 4
  %x149 = alloca i32, align 4
  %x150 = alloca i32, align 4
  %x151 = alloca i32, align 4
  %x152 = alloca i32, align 4
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
  %x180 = alloca i8, align 1
  %x181 = alloca i32, align 4
  %x182 = alloca i8, align 1
  %x183 = alloca i32, align 4
  %x184 = alloca i8, align 1
  %x185 = alloca i32, align 4
  %x186 = alloca i32, align 4
  %x187 = alloca i32, align 4
  %x188 = alloca i32, align 4
  %x189 = alloca i32, align 4
  %x190 = alloca i32, align 4
  %x191 = alloca i32, align 4
  %x192 = alloca i32, align 4
  %x193 = alloca i32, align 4
  %x194 = alloca i32, align 4
  %x195 = alloca i32, align 4
  %x196 = alloca i32, align 4
  %x197 = alloca i32, align 4
  %x198 = alloca i32, align 4
  %x199 = alloca i32, align 4
  %x200 = alloca i32, align 4
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
  %x214 = alloca i8, align 1
  %x215 = alloca i32, align 4
  %x216 = alloca i8, align 1
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
  %x232 = alloca i32, align 4
  %x233 = alloca i32, align 4
  %x234 = alloca i32, align 4
  %x235 = alloca i32, align 4
  %x236 = alloca i32, align 4
  %x237 = alloca i32, align 4
  %x238 = alloca i32, align 4
  %x239 = alloca i32, align 4
  %x240 = alloca i32, align 4
  %x241 = alloca i32, align 4
  %x242 = alloca i32, align 4
  %x243 = alloca i32, align 4
  %x244 = alloca i32, align 4
  %x245 = alloca i32, align 4
  %x246 = alloca i32, align 4
  %x247 = alloca i32, align 4
  %x248 = alloca i32, align 4
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
  %x276 = alloca i8, align 1
  %x277 = alloca i32, align 4
  %x278 = alloca i8, align 1
  %x279 = alloca i32, align 4
  %x280 = alloca i8, align 1
  %x281 = alloca i32, align 4
  %x282 = alloca i32, align 4
  %x283 = alloca i32, align 4
  %x284 = alloca i32, align 4
  %x285 = alloca i32, align 4
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
  %x328 = alloca i32, align 4
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
  %x342 = alloca i32, align 4
  %x343 = alloca i32, align 4
  %x344 = alloca i32, align 4
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
  %x372 = alloca i8, align 1
  %x373 = alloca i32, align 4
  %x374 = alloca i8, align 1
  %x375 = alloca i32, align 4
  %x376 = alloca i8, align 1
  %x377 = alloca i32, align 4
  %x378 = alloca i32, align 4
  %x379 = alloca i32, align 4
  %x380 = alloca i32, align 4
  %x381 = alloca i32, align 4
  %x382 = alloca i32, align 4
  %x383 = alloca i32, align 4
  %x384 = alloca i32, align 4
  %x385 = alloca i32, align 4
  %x386 = alloca i32, align 4
  %x387 = alloca i32, align 4
  %x388 = alloca i32, align 4
  %x389 = alloca i32, align 4
  %x390 = alloca i32, align 4
  %x391 = alloca i32, align 4
  %x392 = alloca i32, align 4
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
  %x414 = alloca i8, align 1
  %x415 = alloca i32, align 4
  %x416 = alloca i8, align 1
  %x417 = alloca i32, align 4
  %x418 = alloca i8, align 1
  %x419 = alloca i32, align 4
  %x420 = alloca i8, align 1
  %x421 = alloca i32, align 4
  %x422 = alloca i8, align 1
  %x423 = alloca i32, align 4
  %x424 = alloca i32, align 4
  %x425 = alloca i32, align 4
  %x426 = alloca i32, align 4
  %x427 = alloca i32, align 4
  %x428 = alloca i32, align 4
  %x429 = alloca i32, align 4
  %x430 = alloca i32, align 4
  %x431 = alloca i32, align 4
  %x432 = alloca i32, align 4
  %x433 = alloca i32, align 4
  %x434 = alloca i32, align 4
  %x435 = alloca i32, align 4
  %x436 = alloca i32, align 4
  %x437 = alloca i32, align 4
  %x438 = alloca i32, align 4
  %x439 = alloca i32, align 4
  %x440 = alloca i32, align 4
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
  %x468 = alloca i8, align 1
  %x469 = alloca i32, align 4
  %x470 = alloca i8, align 1
  %x471 = alloca i32, align 4
  %x472 = alloca i8, align 1
  %x473 = alloca i32, align 4
  %x474 = alloca i32, align 4
  %x475 = alloca i32, align 4
  %x476 = alloca i32, align 4
  %x477 = alloca i32, align 4
  %x478 = alloca i32, align 4
  %x479 = alloca i32, align 4
  %x480 = alloca i32, align 4
  %x481 = alloca i32, align 4
  %x482 = alloca i32, align 4
  %x483 = alloca i32, align 4
  %x484 = alloca i32, align 4
  %x485 = alloca i32, align 4
  %x486 = alloca i32, align 4
  %x487 = alloca i32, align 4
  %x488 = alloca i32, align 4
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
  %x502 = alloca i8, align 1
  %x503 = alloca i32, align 4
  %x504 = alloca i8, align 1
  %x505 = alloca i32, align 4
  %x506 = alloca i8, align 1
  %x507 = alloca i32, align 4
  %x508 = alloca i8, align 1
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
  %x520 = alloca i32, align 4
  %x521 = alloca i32, align 4
  %x522 = alloca i32, align 4
  %x523 = alloca i32, align 4
  %x524 = alloca i32, align 4
  %x525 = alloca i32, align 4
  %x526 = alloca i32, align 4
  %x527 = alloca i32, align 4
  %x528 = alloca i32, align 4
  %x529 = alloca i32, align 4
  %x530 = alloca i32, align 4
  %x531 = alloca i32, align 4
  %x532 = alloca i32, align 4
  %x533 = alloca i32, align 4
  %x534 = alloca i32, align 4
  %x535 = alloca i32, align 4
  %x536 = alloca i32, align 4
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
  %x564 = alloca i8, align 1
  %x565 = alloca i32, align 4
  %x566 = alloca i8, align 1
  %x567 = alloca i32, align 4
  %x568 = alloca i8, align 1
  %x569 = alloca i32, align 4
  %x570 = alloca i32, align 4
  %x571 = alloca i32, align 4
  %x572 = alloca i32, align 4
  %x573 = alloca i32, align 4
  %x574 = alloca i32, align 4
  %x575 = alloca i32, align 4
  %x576 = alloca i32, align 4
  %x577 = alloca i32, align 4
  %x578 = alloca i32, align 4
  %x579 = alloca i32, align 4
  %x580 = alloca i32, align 4
  %x581 = alloca i32, align 4
  %x582 = alloca i32, align 4
  %x583 = alloca i32, align 4
  %x584 = alloca i32, align 4
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
  %x616 = alloca i32, align 4
  %x617 = alloca i32, align 4
  %x618 = alloca i32, align 4
  %x619 = alloca i32, align 4
  %x620 = alloca i32, align 4
  %x621 = alloca i32, align 4
  %x622 = alloca i32, align 4
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
  %x660 = alloca i8, align 1
  %x661 = alloca i32, align 4
  %x662 = alloca i8, align 1
  %x663 = alloca i32, align 4
  %x664 = alloca i8, align 1
  %x665 = alloca i32, align 4
  %x666 = alloca i32, align 4
  %x667 = alloca i32, align 4
  %x668 = alloca i32, align 4
  %x669 = alloca i32, align 4
  %x670 = alloca i32, align 4
  %x671 = alloca i32, align 4
  %x672 = alloca i32, align 4
  %x673 = alloca i32, align 4
  %x674 = alloca i32, align 4
  %x675 = alloca i32, align 4
  %x676 = alloca i32, align 4
  %x677 = alloca i32, align 4
  %x678 = alloca i32, align 4
  %x679 = alloca i32, align 4
  %x680 = alloca i32, align 4
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
  %x694 = alloca i8, align 1
  %x695 = alloca i32, align 4
  %x696 = alloca i8, align 1
  %x697 = alloca i32, align 4
  %x698 = alloca i8, align 1
  %x699 = alloca i32, align 4
  %x700 = alloca i8, align 1
  %x701 = alloca i32, align 4
  %x702 = alloca i8, align 1
  %x703 = alloca i32, align 4
  %x704 = alloca i8, align 1
  %x705 = alloca i32, align 4
  %x706 = alloca i8, align 1
  %x707 = alloca i32, align 4
  %x708 = alloca i8, align 1
  %x709 = alloca i32, align 4
  %x710 = alloca i8, align 1
  %x711 = alloca i32, align 4
  %x712 = alloca i32, align 4
  %x713 = alloca i32, align 4
  %x714 = alloca i32, align 4
  %x715 = alloca i32, align 4
  %x716 = alloca i32, align 4
  %x717 = alloca i32, align 4
  %x718 = alloca i32, align 4
  %x719 = alloca i32, align 4
  %x720 = alloca i32, align 4
  %x721 = alloca i32, align 4
  %x722 = alloca i32, align 4
  %x723 = alloca i32, align 4
  %x724 = alloca i32, align 4
  %x725 = alloca i32, align 4
  %x726 = alloca i32, align 4
  %x727 = alloca i32, align 4
  %x728 = alloca i32, align 4
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
  %x756 = alloca i8, align 1
  %x757 = alloca i32, align 4
  %x758 = alloca i8, align 1
  %x759 = alloca i32, align 4
  %x760 = alloca i8, align 1
  %x761 = alloca i32, align 4
  %x762 = alloca i8, align 1
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
  %x780 = alloca i32, align 4
  %x781 = alloca i32, align 4
  %x782 = alloca i32, align 4
  %x783 = alloca i32, align 4
  %x784 = alloca i32, align 4
  %x785 = alloca i32, align 4
  %x786 = alloca i32, align 4
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
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x9, ptr noundef %x10, i32 noundef %16, i32 noundef 515236882)
  %17 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x11, ptr noundef %x12, i32 noundef %17, i32 noundef -1574224581)
  %18 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x13, ptr noundef %x14, i32 noundef %18, i32 noundef 1645201484)
  %19 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x15, ptr noundef %x16, i32 noundef %19, i32 noundef 989847764)
  %20 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x17, ptr noundef %x18, i32 noundef %20, i32 noundef 878989386)
  %21 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x19, ptr noundef %x20, i32 noundef %21, i32 noundef -563109126)
  %22 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x21, ptr noundef %x22, i32 noundef %22, i32 noundef -1877896529)
  %23 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x23, ptr noundef %x24, i32 noundef %23, i32 noundef 2081509152)
  %24 = load i32, ptr %x24, align 4
  %25 = load i32, ptr %x21, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext 0, i32 noundef %24, i32 noundef %25)
  %26 = load i8, ptr %x26, align 1
  %27 = load i32, ptr %x22, align 4
  %28 = load i32, ptr %x19, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %28)
  %29 = load i8, ptr %x28, align 1
  %30 = load i32, ptr %x20, align 4
  %31 = load i32, ptr %x17, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %29, i32 noundef %30, i32 noundef %31)
  %32 = load i8, ptr %x30, align 1
  %33 = load i32, ptr %x18, align 4
  %34 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %x32, align 1
  %36 = load i32, ptr %x16, align 4
  %37 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37)
  %38 = load i8, ptr %x34, align 1
  %39 = load i32, ptr %x14, align 4
  %40 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %40)
  %41 = load i8, ptr %x36, align 1
  %42 = load i32, ptr %x12, align 4
  %43 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %43)
  %44 = load i32, ptr %x23, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x39, ptr noundef %x40, i32 noundef %44, i32 noundef 1916078453)
  %45 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x41, ptr noundef %x42, i32 noundef %45, i32 noundef -2)
  %46 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x43, ptr noundef %x44, i32 noundef %46, i32 noundef -1)
  %47 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x45, ptr noundef %x46, i32 noundef %47, i32 noundef -1)
  %48 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x47, ptr noundef %x48, i32 noundef %48, i32 noundef -1)
  %49 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x49, ptr noundef %x50, i32 noundef %49, i32 noundef 1912856427)
  %50 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x51, ptr noundef %x52, i32 noundef %50, i32 noundef 566625579)
  %51 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x53, ptr noundef %x54, i32 noundef %51, i32 noundef 1404826633)
  %52 = load i32, ptr %x39, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x55, ptr noundef %x56, i32 noundef %52, i32 noundef 970277155)
  %53 = load i32, ptr %x56, align 4
  %54 = load i32, ptr %x53, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext 0, i32 noundef %53, i32 noundef %54)
  %55 = load i8, ptr %x58, align 1
  %56 = load i32, ptr %x54, align 4
  %57 = load i32, ptr %x51, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %55, i32 noundef %56, i32 noundef %57)
  %58 = load i8, ptr %x60, align 1
  %59 = load i32, ptr %x52, align 4
  %60 = load i32, ptr %x49, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %58, i32 noundef %59, i32 noundef %60)
  %61 = load i8, ptr %x62, align 1
  %62 = load i32, ptr %x50, align 4
  %63 = load i32, ptr %x47, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %61, i32 noundef %62, i32 noundef %63)
  %64 = load i8, ptr %x64, align 1
  %65 = load i32, ptr %x48, align 4
  %66 = load i32, ptr %x45, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %64, i32 noundef %65, i32 noundef %66)
  %67 = load i8, ptr %x66, align 1
  %68 = load i32, ptr %x46, align 4
  %69 = load i32, ptr %x43, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %67, i32 noundef %68, i32 noundef %69)
  %70 = load i8, ptr %x68, align 1
  %71 = load i32, ptr %x44, align 4
  %72 = load i32, ptr %x41, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %70, i32 noundef %71, i32 noundef %72)
  %73 = load i32, ptr %x23, align 4
  %74 = load i32, ptr %x55, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext 0, i32 noundef %73, i32 noundef %74)
  %75 = load i8, ptr %x72, align 1
  %76 = load i32, ptr %x25, align 4
  %77 = load i32, ptr %x57, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8, ptr %x74, align 1
  %79 = load i32, ptr %x27, align 4
  %80 = load i32, ptr %x59, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80)
  %81 = load i8, ptr %x76, align 1
  %82 = load i32, ptr %x29, align 4
  %83 = load i32, ptr %x61, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %81, i32 noundef %82, i32 noundef %83)
  %84 = load i8, ptr %x78, align 1
  %85 = load i32, ptr %x31, align 4
  %86 = load i32, ptr %x63, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %84, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x80, align 1
  %88 = load i32, ptr %x33, align 4
  %89 = load i32, ptr %x65, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %87, i32 noundef %88, i32 noundef %89)
  %90 = load i8, ptr %x82, align 1
  %91 = load i32, ptr %x35, align 4
  %92 = load i32, ptr %x67, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92)
  %93 = load i8, ptr %x84, align 1
  %94 = load i32, ptr %x37, align 4
  %95 = load i32, ptr %x69, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %93, i32 noundef %94, i32 noundef %95)
  %96 = load i8, ptr %x86, align 1
  %97 = load i8, ptr %x38, align 1
  %conv = zext i8 %97 to i32
  %98 = load i32, ptr %x10, align 4
  %add = add i32 %conv, %98
  %99 = load i8, ptr %x70, align 1
  %conv8 = zext i8 %99 to i32
  %100 = load i32, ptr %x42, align 4
  %add9 = add i32 %conv8, %100
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %96, i32 noundef %add, i32 noundef %add9)
  %101 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x89, ptr noundef %x90, i32 noundef %101, i32 noundef 515236882)
  %102 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x91, ptr noundef %x92, i32 noundef %102, i32 noundef -1574224581)
  %103 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x93, ptr noundef %x94, i32 noundef %103, i32 noundef 1645201484)
  %104 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x95, ptr noundef %x96, i32 noundef %104, i32 noundef 989847764)
  %105 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x97, ptr noundef %x98, i32 noundef %105, i32 noundef 878989386)
  %106 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x99, ptr noundef %x100, i32 noundef %106, i32 noundef -563109126)
  %107 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x101, ptr noundef %x102, i32 noundef %107, i32 noundef -1877896529)
  %108 = load i32, ptr %x1, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x103, ptr noundef %x104, i32 noundef %108, i32 noundef 2081509152)
  %109 = load i32, ptr %x104, align 4
  %110 = load i32, ptr %x101, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext 0, i32 noundef %109, i32 noundef %110)
  %111 = load i8, ptr %x106, align 1
  %112 = load i32, ptr %x102, align 4
  %113 = load i32, ptr %x99, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %111, i32 noundef %112, i32 noundef %113)
  %114 = load i8, ptr %x108, align 1
  %115 = load i32, ptr %x100, align 4
  %116 = load i32, ptr %x97, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %114, i32 noundef %115, i32 noundef %116)
  %117 = load i8, ptr %x110, align 1
  %118 = load i32, ptr %x98, align 4
  %119 = load i32, ptr %x95, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %117, i32 noundef %118, i32 noundef %119)
  %120 = load i8, ptr %x112, align 1
  %121 = load i32, ptr %x96, align 4
  %122 = load i32, ptr %x93, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %120, i32 noundef %121, i32 noundef %122)
  %123 = load i8, ptr %x114, align 1
  %124 = load i32, ptr %x94, align 4
  %125 = load i32, ptr %x91, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %123, i32 noundef %124, i32 noundef %125)
  %126 = load i8, ptr %x116, align 1
  %127 = load i32, ptr %x92, align 4
  %128 = load i32, ptr %x89, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x117, ptr noundef %x118, i8 noundef zeroext %126, i32 noundef %127, i32 noundef %128)
  %129 = load i32, ptr %x73, align 4
  %130 = load i32, ptr %x103, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x119, ptr noundef %x120, i8 noundef zeroext 0, i32 noundef %129, i32 noundef %130)
  %131 = load i8, ptr %x120, align 1
  %132 = load i32, ptr %x75, align 4
  %133 = load i32, ptr %x105, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext %131, i32 noundef %132, i32 noundef %133)
  %134 = load i8, ptr %x122, align 1
  %135 = load i32, ptr %x77, align 4
  %136 = load i32, ptr %x107, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x123, ptr noundef %x124, i8 noundef zeroext %134, i32 noundef %135, i32 noundef %136)
  %137 = load i8, ptr %x124, align 1
  %138 = load i32, ptr %x79, align 4
  %139 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext %137, i32 noundef %138, i32 noundef %139)
  %140 = load i8, ptr %x126, align 1
  %141 = load i32, ptr %x81, align 4
  %142 = load i32, ptr %x111, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %140, i32 noundef %141, i32 noundef %142)
  %143 = load i8, ptr %x128, align 1
  %144 = load i32, ptr %x83, align 4
  %145 = load i32, ptr %x113, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %143, i32 noundef %144, i32 noundef %145)
  %146 = load i8, ptr %x130, align 1
  %147 = load i32, ptr %x85, align 4
  %148 = load i32, ptr %x115, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext %146, i32 noundef %147, i32 noundef %148)
  %149 = load i8, ptr %x132, align 1
  %150 = load i32, ptr %x87, align 4
  %151 = load i32, ptr %x117, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %149, i32 noundef %150, i32 noundef %151)
  %152 = load i32, ptr %x119, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x135, ptr noundef %x136, i32 noundef %152, i32 noundef 1916078453)
  %153 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x137, ptr noundef %x138, i32 noundef %153, i32 noundef -2)
  %154 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x139, ptr noundef %x140, i32 noundef %154, i32 noundef -1)
  %155 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x141, ptr noundef %x142, i32 noundef %155, i32 noundef -1)
  %156 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x143, ptr noundef %x144, i32 noundef %156, i32 noundef -1)
  %157 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x145, ptr noundef %x146, i32 noundef %157, i32 noundef 1912856427)
  %158 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x147, ptr noundef %x148, i32 noundef %158, i32 noundef 566625579)
  %159 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x149, ptr noundef %x150, i32 noundef %159, i32 noundef 1404826633)
  %160 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x151, ptr noundef %x152, i32 noundef %160, i32 noundef 970277155)
  %161 = load i32, ptr %x152, align 4
  %162 = load i32, ptr %x149, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext 0, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x154, align 1
  %164 = load i32, ptr %x150, align 4
  %165 = load i32, ptr %x147, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i8, ptr %x156, align 1
  %167 = load i32, ptr %x148, align 4
  %168 = load i32, ptr %x145, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %166, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x158, align 1
  %170 = load i32, ptr %x146, align 4
  %171 = load i32, ptr %x143, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x160, align 1
  %173 = load i32, ptr %x144, align 4
  %174 = load i32, ptr %x141, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x162, align 1
  %176 = load i32, ptr %x142, align 4
  %177 = load i32, ptr %x139, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i8, ptr %x164, align 1
  %179 = load i32, ptr %x140, align 4
  %180 = load i32, ptr %x137, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext %178, i32 noundef %179, i32 noundef %180)
  %181 = load i32, ptr %x119, align 4
  %182 = load i32, ptr %x151, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext 0, i32 noundef %181, i32 noundef %182)
  %183 = load i8, ptr %x168, align 1
  %184 = load i32, ptr %x121, align 4
  %185 = load i32, ptr %x153, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185)
  %186 = load i8, ptr %x170, align 1
  %187 = load i32, ptr %x123, align 4
  %188 = load i32, ptr %x155, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %186, i32 noundef %187, i32 noundef %188)
  %189 = load i8, ptr %x172, align 1
  %190 = load i32, ptr %x125, align 4
  %191 = load i32, ptr %x157, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %189, i32 noundef %190, i32 noundef %191)
  %192 = load i8, ptr %x174, align 1
  %193 = load i32, ptr %x127, align 4
  %194 = load i32, ptr %x159, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %192, i32 noundef %193, i32 noundef %194)
  %195 = load i8, ptr %x176, align 1
  %196 = load i32, ptr %x129, align 4
  %197 = load i32, ptr %x161, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %195, i32 noundef %196, i32 noundef %197)
  %198 = load i8, ptr %x178, align 1
  %199 = load i32, ptr %x131, align 4
  %200 = load i32, ptr %x163, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200)
  %201 = load i8, ptr %x180, align 1
  %202 = load i32, ptr %x133, align 4
  %203 = load i32, ptr %x165, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %201, i32 noundef %202, i32 noundef %203)
  %204 = load i8, ptr %x182, align 1
  %205 = load i8, ptr %x134, align 1
  %conv10 = zext i8 %205 to i32
  %206 = load i8, ptr %x88, align 1
  %conv11 = zext i8 %206 to i32
  %add12 = add i32 %conv10, %conv11
  %207 = load i8, ptr %x118, align 1
  %conv13 = zext i8 %207 to i32
  %208 = load i32, ptr %x90, align 4
  %add14 = add i32 %conv13, %208
  %add15 = add i32 %add12, %add14
  %209 = load i8, ptr %x166, align 1
  %conv16 = zext i8 %209 to i32
  %210 = load i32, ptr %x138, align 4
  %add17 = add i32 %conv16, %210
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x183, ptr noundef %x184, i8 noundef zeroext %204, i32 noundef %add15, i32 noundef %add17)
  %211 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x185, ptr noundef %x186, i32 noundef %211, i32 noundef 515236882)
  %212 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x187, ptr noundef %x188, i32 noundef %212, i32 noundef -1574224581)
  %213 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x189, ptr noundef %x190, i32 noundef %213, i32 noundef 1645201484)
  %214 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x191, ptr noundef %x192, i32 noundef %214, i32 noundef 989847764)
  %215 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x193, ptr noundef %x194, i32 noundef %215, i32 noundef 878989386)
  %216 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x195, ptr noundef %x196, i32 noundef %216, i32 noundef -563109126)
  %217 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x197, ptr noundef %x198, i32 noundef %217, i32 noundef -1877896529)
  %218 = load i32, ptr %x2, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x199, ptr noundef %x200, i32 noundef %218, i32 noundef 2081509152)
  %219 = load i32, ptr %x200, align 4
  %220 = load i32, ptr %x197, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext 0, i32 noundef %219, i32 noundef %220)
  %221 = load i8, ptr %x202, align 1
  %222 = load i32, ptr %x198, align 4
  %223 = load i32, ptr %x195, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %221, i32 noundef %222, i32 noundef %223)
  %224 = load i8, ptr %x204, align 1
  %225 = load i32, ptr %x196, align 4
  %226 = load i32, ptr %x193, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %224, i32 noundef %225, i32 noundef %226)
  %227 = load i8, ptr %x206, align 1
  %228 = load i32, ptr %x194, align 4
  %229 = load i32, ptr %x191, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x207, ptr noundef %x208, i8 noundef zeroext %227, i32 noundef %228, i32 noundef %229)
  %230 = load i8, ptr %x208, align 1
  %231 = load i32, ptr %x192, align 4
  %232 = load i32, ptr %x189, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x209, ptr noundef %x210, i8 noundef zeroext %230, i32 noundef %231, i32 noundef %232)
  %233 = load i8, ptr %x210, align 1
  %234 = load i32, ptr %x190, align 4
  %235 = load i32, ptr %x187, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x211, ptr noundef %x212, i8 noundef zeroext %233, i32 noundef %234, i32 noundef %235)
  %236 = load i8, ptr %x212, align 1
  %237 = load i32, ptr %x188, align 4
  %238 = load i32, ptr %x185, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x213, ptr noundef %x214, i8 noundef zeroext %236, i32 noundef %237, i32 noundef %238)
  %239 = load i32, ptr %x169, align 4
  %240 = load i32, ptr %x199, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x215, ptr noundef %x216, i8 noundef zeroext 0, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x216, align 1
  %242 = load i32, ptr %x171, align 4
  %243 = load i32, ptr %x201, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x217, ptr noundef %x218, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x218, align 1
  %245 = load i32, ptr %x173, align 4
  %246 = load i32, ptr %x203, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x219, ptr noundef %x220, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x220, align 1
  %248 = load i32, ptr %x175, align 4
  %249 = load i32, ptr %x205, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x221, ptr noundef %x222, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %249)
  %250 = load i8, ptr %x222, align 1
  %251 = load i32, ptr %x177, align 4
  %252 = load i32, ptr %x207, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x223, ptr noundef %x224, i8 noundef zeroext %250, i32 noundef %251, i32 noundef %252)
  %253 = load i8, ptr %x224, align 1
  %254 = load i32, ptr %x179, align 4
  %255 = load i32, ptr %x209, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x225, ptr noundef %x226, i8 noundef zeroext %253, i32 noundef %254, i32 noundef %255)
  %256 = load i8, ptr %x226, align 1
  %257 = load i32, ptr %x181, align 4
  %258 = load i32, ptr %x211, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x227, ptr noundef %x228, i8 noundef zeroext %256, i32 noundef %257, i32 noundef %258)
  %259 = load i8, ptr %x228, align 1
  %260 = load i32, ptr %x183, align 4
  %261 = load i32, ptr %x213, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x229, ptr noundef %x230, i8 noundef zeroext %259, i32 noundef %260, i32 noundef %261)
  %262 = load i32, ptr %x215, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x231, ptr noundef %x232, i32 noundef %262, i32 noundef 1916078453)
  %263 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x233, ptr noundef %x234, i32 noundef %263, i32 noundef -2)
  %264 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x235, ptr noundef %x236, i32 noundef %264, i32 noundef -1)
  %265 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x237, ptr noundef %x238, i32 noundef %265, i32 noundef -1)
  %266 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x239, ptr noundef %x240, i32 noundef %266, i32 noundef -1)
  %267 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x241, ptr noundef %x242, i32 noundef %267, i32 noundef 1912856427)
  %268 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x243, ptr noundef %x244, i32 noundef %268, i32 noundef 566625579)
  %269 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x245, ptr noundef %x246, i32 noundef %269, i32 noundef 1404826633)
  %270 = load i32, ptr %x231, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x247, ptr noundef %x248, i32 noundef %270, i32 noundef 970277155)
  %271 = load i32, ptr %x248, align 4
  %272 = load i32, ptr %x245, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x249, ptr noundef %x250, i8 noundef zeroext 0, i32 noundef %271, i32 noundef %272)
  %273 = load i8, ptr %x250, align 1
  %274 = load i32, ptr %x246, align 4
  %275 = load i32, ptr %x243, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x251, ptr noundef %x252, i8 noundef zeroext %273, i32 noundef %274, i32 noundef %275)
  %276 = load i8, ptr %x252, align 1
  %277 = load i32, ptr %x244, align 4
  %278 = load i32, ptr %x241, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x253, ptr noundef %x254, i8 noundef zeroext %276, i32 noundef %277, i32 noundef %278)
  %279 = load i8, ptr %x254, align 1
  %280 = load i32, ptr %x242, align 4
  %281 = load i32, ptr %x239, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x255, ptr noundef %x256, i8 noundef zeroext %279, i32 noundef %280, i32 noundef %281)
  %282 = load i8, ptr %x256, align 1
  %283 = load i32, ptr %x240, align 4
  %284 = load i32, ptr %x237, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x257, ptr noundef %x258, i8 noundef zeroext %282, i32 noundef %283, i32 noundef %284)
  %285 = load i8, ptr %x258, align 1
  %286 = load i32, ptr %x238, align 4
  %287 = load i32, ptr %x235, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x259, ptr noundef %x260, i8 noundef zeroext %285, i32 noundef %286, i32 noundef %287)
  %288 = load i8, ptr %x260, align 1
  %289 = load i32, ptr %x236, align 4
  %290 = load i32, ptr %x233, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x261, ptr noundef %x262, i8 noundef zeroext %288, i32 noundef %289, i32 noundef %290)
  %291 = load i32, ptr %x215, align 4
  %292 = load i32, ptr %x247, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x263, ptr noundef %x264, i8 noundef zeroext 0, i32 noundef %291, i32 noundef %292)
  %293 = load i8, ptr %x264, align 1
  %294 = load i32, ptr %x217, align 4
  %295 = load i32, ptr %x249, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x265, ptr noundef %x266, i8 noundef zeroext %293, i32 noundef %294, i32 noundef %295)
  %296 = load i8, ptr %x266, align 1
  %297 = load i32, ptr %x219, align 4
  %298 = load i32, ptr %x251, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x267, ptr noundef %x268, i8 noundef zeroext %296, i32 noundef %297, i32 noundef %298)
  %299 = load i8, ptr %x268, align 1
  %300 = load i32, ptr %x221, align 4
  %301 = load i32, ptr %x253, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x269, ptr noundef %x270, i8 noundef zeroext %299, i32 noundef %300, i32 noundef %301)
  %302 = load i8, ptr %x270, align 1
  %303 = load i32, ptr %x223, align 4
  %304 = load i32, ptr %x255, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x271, ptr noundef %x272, i8 noundef zeroext %302, i32 noundef %303, i32 noundef %304)
  %305 = load i8, ptr %x272, align 1
  %306 = load i32, ptr %x225, align 4
  %307 = load i32, ptr %x257, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x273, ptr noundef %x274, i8 noundef zeroext %305, i32 noundef %306, i32 noundef %307)
  %308 = load i8, ptr %x274, align 1
  %309 = load i32, ptr %x227, align 4
  %310 = load i32, ptr %x259, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x275, ptr noundef %x276, i8 noundef zeroext %308, i32 noundef %309, i32 noundef %310)
  %311 = load i8, ptr %x276, align 1
  %312 = load i32, ptr %x229, align 4
  %313 = load i32, ptr %x261, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x277, ptr noundef %x278, i8 noundef zeroext %311, i32 noundef %312, i32 noundef %313)
  %314 = load i8, ptr %x278, align 1
  %315 = load i8, ptr %x230, align 1
  %conv18 = zext i8 %315 to i32
  %316 = load i8, ptr %x184, align 1
  %conv19 = zext i8 %316 to i32
  %add20 = add i32 %conv18, %conv19
  %317 = load i8, ptr %x214, align 1
  %conv21 = zext i8 %317 to i32
  %318 = load i32, ptr %x186, align 4
  %add22 = add i32 %conv21, %318
  %add23 = add i32 %add20, %add22
  %319 = load i8, ptr %x262, align 1
  %conv24 = zext i8 %319 to i32
  %320 = load i32, ptr %x234, align 4
  %add25 = add i32 %conv24, %320
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x279, ptr noundef %x280, i8 noundef zeroext %314, i32 noundef %add23, i32 noundef %add25)
  %321 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x281, ptr noundef %x282, i32 noundef %321, i32 noundef 515236882)
  %322 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x283, ptr noundef %x284, i32 noundef %322, i32 noundef -1574224581)
  %323 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x285, ptr noundef %x286, i32 noundef %323, i32 noundef 1645201484)
  %324 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x287, ptr noundef %x288, i32 noundef %324, i32 noundef 989847764)
  %325 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x289, ptr noundef %x290, i32 noundef %325, i32 noundef 878989386)
  %326 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x291, ptr noundef %x292, i32 noundef %326, i32 noundef -563109126)
  %327 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x293, ptr noundef %x294, i32 noundef %327, i32 noundef -1877896529)
  %328 = load i32, ptr %x3, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x295, ptr noundef %x296, i32 noundef %328, i32 noundef 2081509152)
  %329 = load i32, ptr %x296, align 4
  %330 = load i32, ptr %x293, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext 0, i32 noundef %329, i32 noundef %330)
  %331 = load i8, ptr %x298, align 1
  %332 = load i32, ptr %x294, align 4
  %333 = load i32, ptr %x291, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x299, ptr noundef %x300, i8 noundef zeroext %331, i32 noundef %332, i32 noundef %333)
  %334 = load i8, ptr %x300, align 1
  %335 = load i32, ptr %x292, align 4
  %336 = load i32, ptr %x289, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x301, ptr noundef %x302, i8 noundef zeroext %334, i32 noundef %335, i32 noundef %336)
  %337 = load i8, ptr %x302, align 1
  %338 = load i32, ptr %x290, align 4
  %339 = load i32, ptr %x287, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x303, ptr noundef %x304, i8 noundef zeroext %337, i32 noundef %338, i32 noundef %339)
  %340 = load i8, ptr %x304, align 1
  %341 = load i32, ptr %x288, align 4
  %342 = load i32, ptr %x285, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x305, ptr noundef %x306, i8 noundef zeroext %340, i32 noundef %341, i32 noundef %342)
  %343 = load i8, ptr %x306, align 1
  %344 = load i32, ptr %x286, align 4
  %345 = load i32, ptr %x283, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x307, ptr noundef %x308, i8 noundef zeroext %343, i32 noundef %344, i32 noundef %345)
  %346 = load i8, ptr %x308, align 1
  %347 = load i32, ptr %x284, align 4
  %348 = load i32, ptr %x281, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x309, ptr noundef %x310, i8 noundef zeroext %346, i32 noundef %347, i32 noundef %348)
  %349 = load i32, ptr %x265, align 4
  %350 = load i32, ptr %x295, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x311, ptr noundef %x312, i8 noundef zeroext 0, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x312, align 1
  %352 = load i32, ptr %x267, align 4
  %353 = load i32, ptr %x297, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x313, ptr noundef %x314, i8 noundef zeroext %351, i32 noundef %352, i32 noundef %353)
  %354 = load i8, ptr %x314, align 1
  %355 = load i32, ptr %x269, align 4
  %356 = load i32, ptr %x299, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x315, ptr noundef %x316, i8 noundef zeroext %354, i32 noundef %355, i32 noundef %356)
  %357 = load i8, ptr %x316, align 1
  %358 = load i32, ptr %x271, align 4
  %359 = load i32, ptr %x301, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x317, ptr noundef %x318, i8 noundef zeroext %357, i32 noundef %358, i32 noundef %359)
  %360 = load i8, ptr %x318, align 1
  %361 = load i32, ptr %x273, align 4
  %362 = load i32, ptr %x303, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x319, ptr noundef %x320, i8 noundef zeroext %360, i32 noundef %361, i32 noundef %362)
  %363 = load i8, ptr %x320, align 1
  %364 = load i32, ptr %x275, align 4
  %365 = load i32, ptr %x305, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x321, ptr noundef %x322, i8 noundef zeroext %363, i32 noundef %364, i32 noundef %365)
  %366 = load i8, ptr %x322, align 1
  %367 = load i32, ptr %x277, align 4
  %368 = load i32, ptr %x307, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext %366, i32 noundef %367, i32 noundef %368)
  %369 = load i8, ptr %x324, align 1
  %370 = load i32, ptr %x279, align 4
  %371 = load i32, ptr %x309, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %369, i32 noundef %370, i32 noundef %371)
  %372 = load i32, ptr %x311, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x327, ptr noundef %x328, i32 noundef %372, i32 noundef 1916078453)
  %373 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x329, ptr noundef %x330, i32 noundef %373, i32 noundef -2)
  %374 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x331, ptr noundef %x332, i32 noundef %374, i32 noundef -1)
  %375 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x333, ptr noundef %x334, i32 noundef %375, i32 noundef -1)
  %376 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x335, ptr noundef %x336, i32 noundef %376, i32 noundef -1)
  %377 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x337, ptr noundef %x338, i32 noundef %377, i32 noundef 1912856427)
  %378 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x339, ptr noundef %x340, i32 noundef %378, i32 noundef 566625579)
  %379 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x341, ptr noundef %x342, i32 noundef %379, i32 noundef 1404826633)
  %380 = load i32, ptr %x327, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x343, ptr noundef %x344, i32 noundef %380, i32 noundef 970277155)
  %381 = load i32, ptr %x344, align 4
  %382 = load i32, ptr %x341, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x345, ptr noundef %x346, i8 noundef zeroext 0, i32 noundef %381, i32 noundef %382)
  %383 = load i8, ptr %x346, align 1
  %384 = load i32, ptr %x342, align 4
  %385 = load i32, ptr %x339, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x347, ptr noundef %x348, i8 noundef zeroext %383, i32 noundef %384, i32 noundef %385)
  %386 = load i8, ptr %x348, align 1
  %387 = load i32, ptr %x340, align 4
  %388 = load i32, ptr %x337, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x349, ptr noundef %x350, i8 noundef zeroext %386, i32 noundef %387, i32 noundef %388)
  %389 = load i8, ptr %x350, align 1
  %390 = load i32, ptr %x338, align 4
  %391 = load i32, ptr %x335, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext %389, i32 noundef %390, i32 noundef %391)
  %392 = load i8, ptr %x352, align 1
  %393 = load i32, ptr %x336, align 4
  %394 = load i32, ptr %x333, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %392, i32 noundef %393, i32 noundef %394)
  %395 = load i8, ptr %x354, align 1
  %396 = load i32, ptr %x334, align 4
  %397 = load i32, ptr %x331, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %395, i32 noundef %396, i32 noundef %397)
  %398 = load i8, ptr %x356, align 1
  %399 = load i32, ptr %x332, align 4
  %400 = load i32, ptr %x329, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %398, i32 noundef %399, i32 noundef %400)
  %401 = load i32, ptr %x311, align 4
  %402 = load i32, ptr %x343, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext 0, i32 noundef %401, i32 noundef %402)
  %403 = load i8, ptr %x360, align 1
  %404 = load i32, ptr %x313, align 4
  %405 = load i32, ptr %x345, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x361, ptr noundef %x362, i8 noundef zeroext %403, i32 noundef %404, i32 noundef %405)
  %406 = load i8, ptr %x362, align 1
  %407 = load i32, ptr %x315, align 4
  %408 = load i32, ptr %x347, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x363, ptr noundef %x364, i8 noundef zeroext %406, i32 noundef %407, i32 noundef %408)
  %409 = load i8, ptr %x364, align 1
  %410 = load i32, ptr %x317, align 4
  %411 = load i32, ptr %x349, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x365, ptr noundef %x366, i8 noundef zeroext %409, i32 noundef %410, i32 noundef %411)
  %412 = load i8, ptr %x366, align 1
  %413 = load i32, ptr %x319, align 4
  %414 = load i32, ptr %x351, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x367, ptr noundef %x368, i8 noundef zeroext %412, i32 noundef %413, i32 noundef %414)
  %415 = load i8, ptr %x368, align 1
  %416 = load i32, ptr %x321, align 4
  %417 = load i32, ptr %x353, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x369, ptr noundef %x370, i8 noundef zeroext %415, i32 noundef %416, i32 noundef %417)
  %418 = load i8, ptr %x370, align 1
  %419 = load i32, ptr %x323, align 4
  %420 = load i32, ptr %x355, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x371, ptr noundef %x372, i8 noundef zeroext %418, i32 noundef %419, i32 noundef %420)
  %421 = load i8, ptr %x372, align 1
  %422 = load i32, ptr %x325, align 4
  %423 = load i32, ptr %x357, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x373, ptr noundef %x374, i8 noundef zeroext %421, i32 noundef %422, i32 noundef %423)
  %424 = load i8, ptr %x374, align 1
  %425 = load i8, ptr %x326, align 1
  %conv26 = zext i8 %425 to i32
  %426 = load i8, ptr %x280, align 1
  %conv27 = zext i8 %426 to i32
  %add28 = add i32 %conv26, %conv27
  %427 = load i8, ptr %x310, align 1
  %conv29 = zext i8 %427 to i32
  %428 = load i32, ptr %x282, align 4
  %add30 = add i32 %conv29, %428
  %add31 = add i32 %add28, %add30
  %429 = load i8, ptr %x358, align 1
  %conv32 = zext i8 %429 to i32
  %430 = load i32, ptr %x330, align 4
  %add33 = add i32 %conv32, %430
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x375, ptr noundef %x376, i8 noundef zeroext %424, i32 noundef %add31, i32 noundef %add33)
  %431 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x377, ptr noundef %x378, i32 noundef %431, i32 noundef 515236882)
  %432 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x379, ptr noundef %x380, i32 noundef %432, i32 noundef -1574224581)
  %433 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x381, ptr noundef %x382, i32 noundef %433, i32 noundef 1645201484)
  %434 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x383, ptr noundef %x384, i32 noundef %434, i32 noundef 989847764)
  %435 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x385, ptr noundef %x386, i32 noundef %435, i32 noundef 878989386)
  %436 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x387, ptr noundef %x388, i32 noundef %436, i32 noundef -563109126)
  %437 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x389, ptr noundef %x390, i32 noundef %437, i32 noundef -1877896529)
  %438 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x391, ptr noundef %x392, i32 noundef %438, i32 noundef 2081509152)
  %439 = load i32, ptr %x392, align 4
  %440 = load i32, ptr %x389, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext 0, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x394, align 1
  %442 = load i32, ptr %x390, align 4
  %443 = load i32, ptr %x387, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x396, align 1
  %445 = load i32, ptr %x388, align 4
  %446 = load i32, ptr %x385, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x398, align 1
  %448 = load i32, ptr %x386, align 4
  %449 = load i32, ptr %x383, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x399, ptr noundef %x400, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i8, ptr %x400, align 1
  %451 = load i32, ptr %x384, align 4
  %452 = load i32, ptr %x381, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x401, ptr noundef %x402, i8 noundef zeroext %450, i32 noundef %451, i32 noundef %452)
  %453 = load i8, ptr %x402, align 1
  %454 = load i32, ptr %x382, align 4
  %455 = load i32, ptr %x379, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x403, ptr noundef %x404, i8 noundef zeroext %453, i32 noundef %454, i32 noundef %455)
  %456 = load i8, ptr %x404, align 1
  %457 = load i32, ptr %x380, align 4
  %458 = load i32, ptr %x377, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x405, ptr noundef %x406, i8 noundef zeroext %456, i32 noundef %457, i32 noundef %458)
  %459 = load i32, ptr %x361, align 4
  %460 = load i32, ptr %x391, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x407, ptr noundef %x408, i8 noundef zeroext 0, i32 noundef %459, i32 noundef %460)
  %461 = load i8, ptr %x408, align 1
  %462 = load i32, ptr %x363, align 4
  %463 = load i32, ptr %x393, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x409, ptr noundef %x410, i8 noundef zeroext %461, i32 noundef %462, i32 noundef %463)
  %464 = load i8, ptr %x410, align 1
  %465 = load i32, ptr %x365, align 4
  %466 = load i32, ptr %x395, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x411, ptr noundef %x412, i8 noundef zeroext %464, i32 noundef %465, i32 noundef %466)
  %467 = load i8, ptr %x412, align 1
  %468 = load i32, ptr %x367, align 4
  %469 = load i32, ptr %x397, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x413, ptr noundef %x414, i8 noundef zeroext %467, i32 noundef %468, i32 noundef %469)
  %470 = load i8, ptr %x414, align 1
  %471 = load i32, ptr %x369, align 4
  %472 = load i32, ptr %x399, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x415, ptr noundef %x416, i8 noundef zeroext %470, i32 noundef %471, i32 noundef %472)
  %473 = load i8, ptr %x416, align 1
  %474 = load i32, ptr %x371, align 4
  %475 = load i32, ptr %x401, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x417, ptr noundef %x418, i8 noundef zeroext %473, i32 noundef %474, i32 noundef %475)
  %476 = load i8, ptr %x418, align 1
  %477 = load i32, ptr %x373, align 4
  %478 = load i32, ptr %x403, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x419, ptr noundef %x420, i8 noundef zeroext %476, i32 noundef %477, i32 noundef %478)
  %479 = load i8, ptr %x420, align 1
  %480 = load i32, ptr %x375, align 4
  %481 = load i32, ptr %x405, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x421, ptr noundef %x422, i8 noundef zeroext %479, i32 noundef %480, i32 noundef %481)
  %482 = load i32, ptr %x407, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x423, ptr noundef %x424, i32 noundef %482, i32 noundef 1916078453)
  %483 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x425, ptr noundef %x426, i32 noundef %483, i32 noundef -2)
  %484 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x427, ptr noundef %x428, i32 noundef %484, i32 noundef -1)
  %485 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x429, ptr noundef %x430, i32 noundef %485, i32 noundef -1)
  %486 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x431, ptr noundef %x432, i32 noundef %486, i32 noundef -1)
  %487 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x433, ptr noundef %x434, i32 noundef %487, i32 noundef 1912856427)
  %488 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x435, ptr noundef %x436, i32 noundef %488, i32 noundef 566625579)
  %489 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x437, ptr noundef %x438, i32 noundef %489, i32 noundef 1404826633)
  %490 = load i32, ptr %x423, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x439, ptr noundef %x440, i32 noundef %490, i32 noundef 970277155)
  %491 = load i32, ptr %x440, align 4
  %492 = load i32, ptr %x437, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext 0, i32 noundef %491, i32 noundef %492)
  %493 = load i8, ptr %x442, align 1
  %494 = load i32, ptr %x438, align 4
  %495 = load i32, ptr %x435, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %493, i32 noundef %494, i32 noundef %495)
  %496 = load i8, ptr %x444, align 1
  %497 = load i32, ptr %x436, align 4
  %498 = load i32, ptr %x433, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %496, i32 noundef %497, i32 noundef %498)
  %499 = load i8, ptr %x446, align 1
  %500 = load i32, ptr %x434, align 4
  %501 = load i32, ptr %x431, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %499, i32 noundef %500, i32 noundef %501)
  %502 = load i8, ptr %x448, align 1
  %503 = load i32, ptr %x432, align 4
  %504 = load i32, ptr %x429, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %502, i32 noundef %503, i32 noundef %504)
  %505 = load i8, ptr %x450, align 1
  %506 = load i32, ptr %x430, align 4
  %507 = load i32, ptr %x427, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %505, i32 noundef %506, i32 noundef %507)
  %508 = load i8, ptr %x452, align 1
  %509 = load i32, ptr %x428, align 4
  %510 = load i32, ptr %x425, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x453, ptr noundef %x454, i8 noundef zeroext %508, i32 noundef %509, i32 noundef %510)
  %511 = load i32, ptr %x407, align 4
  %512 = load i32, ptr %x439, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x455, ptr noundef %x456, i8 noundef zeroext 0, i32 noundef %511, i32 noundef %512)
  %513 = load i8, ptr %x456, align 1
  %514 = load i32, ptr %x409, align 4
  %515 = load i32, ptr %x441, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x457, ptr noundef %x458, i8 noundef zeroext %513, i32 noundef %514, i32 noundef %515)
  %516 = load i8, ptr %x458, align 1
  %517 = load i32, ptr %x411, align 4
  %518 = load i32, ptr %x443, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x459, ptr noundef %x460, i8 noundef zeroext %516, i32 noundef %517, i32 noundef %518)
  %519 = load i8, ptr %x460, align 1
  %520 = load i32, ptr %x413, align 4
  %521 = load i32, ptr %x445, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x461, ptr noundef %x462, i8 noundef zeroext %519, i32 noundef %520, i32 noundef %521)
  %522 = load i8, ptr %x462, align 1
  %523 = load i32, ptr %x415, align 4
  %524 = load i32, ptr %x447, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x463, ptr noundef %x464, i8 noundef zeroext %522, i32 noundef %523, i32 noundef %524)
  %525 = load i8, ptr %x464, align 1
  %526 = load i32, ptr %x417, align 4
  %527 = load i32, ptr %x449, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x465, ptr noundef %x466, i8 noundef zeroext %525, i32 noundef %526, i32 noundef %527)
  %528 = load i8, ptr %x466, align 1
  %529 = load i32, ptr %x419, align 4
  %530 = load i32, ptr %x451, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x467, ptr noundef %x468, i8 noundef zeroext %528, i32 noundef %529, i32 noundef %530)
  %531 = load i8, ptr %x468, align 1
  %532 = load i32, ptr %x421, align 4
  %533 = load i32, ptr %x453, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x469, ptr noundef %x470, i8 noundef zeroext %531, i32 noundef %532, i32 noundef %533)
  %534 = load i8, ptr %x470, align 1
  %535 = load i8, ptr %x422, align 1
  %conv34 = zext i8 %535 to i32
  %536 = load i8, ptr %x376, align 1
  %conv35 = zext i8 %536 to i32
  %add36 = add i32 %conv34, %conv35
  %537 = load i8, ptr %x406, align 1
  %conv37 = zext i8 %537 to i32
  %538 = load i32, ptr %x378, align 4
  %add38 = add i32 %conv37, %538
  %add39 = add i32 %add36, %add38
  %539 = load i8, ptr %x454, align 1
  %conv40 = zext i8 %539 to i32
  %540 = load i32, ptr %x426, align 4
  %add41 = add i32 %conv40, %540
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x471, ptr noundef %x472, i8 noundef zeroext %534, i32 noundef %add39, i32 noundef %add41)
  %541 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x473, ptr noundef %x474, i32 noundef %541, i32 noundef 515236882)
  %542 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x475, ptr noundef %x476, i32 noundef %542, i32 noundef -1574224581)
  %543 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x477, ptr noundef %x478, i32 noundef %543, i32 noundef 1645201484)
  %544 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x479, ptr noundef %x480, i32 noundef %544, i32 noundef 989847764)
  %545 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x481, ptr noundef %x482, i32 noundef %545, i32 noundef 878989386)
  %546 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x483, ptr noundef %x484, i32 noundef %546, i32 noundef -563109126)
  %547 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x485, ptr noundef %x486, i32 noundef %547, i32 noundef -1877896529)
  %548 = load i32, ptr %x5, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x487, ptr noundef %x488, i32 noundef %548, i32 noundef 2081509152)
  %549 = load i32, ptr %x488, align 4
  %550 = load i32, ptr %x485, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x489, ptr noundef %x490, i8 noundef zeroext 0, i32 noundef %549, i32 noundef %550)
  %551 = load i8, ptr %x490, align 1
  %552 = load i32, ptr %x486, align 4
  %553 = load i32, ptr %x483, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x491, ptr noundef %x492, i8 noundef zeroext %551, i32 noundef %552, i32 noundef %553)
  %554 = load i8, ptr %x492, align 1
  %555 = load i32, ptr %x484, align 4
  %556 = load i32, ptr %x481, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x493, ptr noundef %x494, i8 noundef zeroext %554, i32 noundef %555, i32 noundef %556)
  %557 = load i8, ptr %x494, align 1
  %558 = load i32, ptr %x482, align 4
  %559 = load i32, ptr %x479, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x495, ptr noundef %x496, i8 noundef zeroext %557, i32 noundef %558, i32 noundef %559)
  %560 = load i8, ptr %x496, align 1
  %561 = load i32, ptr %x480, align 4
  %562 = load i32, ptr %x477, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x497, ptr noundef %x498, i8 noundef zeroext %560, i32 noundef %561, i32 noundef %562)
  %563 = load i8, ptr %x498, align 1
  %564 = load i32, ptr %x478, align 4
  %565 = load i32, ptr %x475, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x499, ptr noundef %x500, i8 noundef zeroext %563, i32 noundef %564, i32 noundef %565)
  %566 = load i8, ptr %x500, align 1
  %567 = load i32, ptr %x476, align 4
  %568 = load i32, ptr %x473, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x501, ptr noundef %x502, i8 noundef zeroext %566, i32 noundef %567, i32 noundef %568)
  %569 = load i32, ptr %x457, align 4
  %570 = load i32, ptr %x487, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x503, ptr noundef %x504, i8 noundef zeroext 0, i32 noundef %569, i32 noundef %570)
  %571 = load i8, ptr %x504, align 1
  %572 = load i32, ptr %x459, align 4
  %573 = load i32, ptr %x489, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x505, ptr noundef %x506, i8 noundef zeroext %571, i32 noundef %572, i32 noundef %573)
  %574 = load i8, ptr %x506, align 1
  %575 = load i32, ptr %x461, align 4
  %576 = load i32, ptr %x491, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x507, ptr noundef %x508, i8 noundef zeroext %574, i32 noundef %575, i32 noundef %576)
  %577 = load i8, ptr %x508, align 1
  %578 = load i32, ptr %x463, align 4
  %579 = load i32, ptr %x493, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x509, ptr noundef %x510, i8 noundef zeroext %577, i32 noundef %578, i32 noundef %579)
  %580 = load i8, ptr %x510, align 1
  %581 = load i32, ptr %x465, align 4
  %582 = load i32, ptr %x495, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x511, ptr noundef %x512, i8 noundef zeroext %580, i32 noundef %581, i32 noundef %582)
  %583 = load i8, ptr %x512, align 1
  %584 = load i32, ptr %x467, align 4
  %585 = load i32, ptr %x497, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x513, ptr noundef %x514, i8 noundef zeroext %583, i32 noundef %584, i32 noundef %585)
  %586 = load i8, ptr %x514, align 1
  %587 = load i32, ptr %x469, align 4
  %588 = load i32, ptr %x499, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x515, ptr noundef %x516, i8 noundef zeroext %586, i32 noundef %587, i32 noundef %588)
  %589 = load i8, ptr %x516, align 1
  %590 = load i32, ptr %x471, align 4
  %591 = load i32, ptr %x501, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x517, ptr noundef %x518, i8 noundef zeroext %589, i32 noundef %590, i32 noundef %591)
  %592 = load i32, ptr %x503, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x519, ptr noundef %x520, i32 noundef %592, i32 noundef 1916078453)
  %593 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x521, ptr noundef %x522, i32 noundef %593, i32 noundef -2)
  %594 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x523, ptr noundef %x524, i32 noundef %594, i32 noundef -1)
  %595 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x525, ptr noundef %x526, i32 noundef %595, i32 noundef -1)
  %596 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x527, ptr noundef %x528, i32 noundef %596, i32 noundef -1)
  %597 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x529, ptr noundef %x530, i32 noundef %597, i32 noundef 1912856427)
  %598 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x531, ptr noundef %x532, i32 noundef %598, i32 noundef 566625579)
  %599 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x533, ptr noundef %x534, i32 noundef %599, i32 noundef 1404826633)
  %600 = load i32, ptr %x519, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x535, ptr noundef %x536, i32 noundef %600, i32 noundef 970277155)
  %601 = load i32, ptr %x536, align 4
  %602 = load i32, ptr %x533, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x537, ptr noundef %x538, i8 noundef zeroext 0, i32 noundef %601, i32 noundef %602)
  %603 = load i8, ptr %x538, align 1
  %604 = load i32, ptr %x534, align 4
  %605 = load i32, ptr %x531, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x539, ptr noundef %x540, i8 noundef zeroext %603, i32 noundef %604, i32 noundef %605)
  %606 = load i8, ptr %x540, align 1
  %607 = load i32, ptr %x532, align 4
  %608 = load i32, ptr %x529, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x541, ptr noundef %x542, i8 noundef zeroext %606, i32 noundef %607, i32 noundef %608)
  %609 = load i8, ptr %x542, align 1
  %610 = load i32, ptr %x530, align 4
  %611 = load i32, ptr %x527, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x543, ptr noundef %x544, i8 noundef zeroext %609, i32 noundef %610, i32 noundef %611)
  %612 = load i8, ptr %x544, align 1
  %613 = load i32, ptr %x528, align 4
  %614 = load i32, ptr %x525, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x545, ptr noundef %x546, i8 noundef zeroext %612, i32 noundef %613, i32 noundef %614)
  %615 = load i8, ptr %x546, align 1
  %616 = load i32, ptr %x526, align 4
  %617 = load i32, ptr %x523, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x547, ptr noundef %x548, i8 noundef zeroext %615, i32 noundef %616, i32 noundef %617)
  %618 = load i8, ptr %x548, align 1
  %619 = load i32, ptr %x524, align 4
  %620 = load i32, ptr %x521, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x549, ptr noundef %x550, i8 noundef zeroext %618, i32 noundef %619, i32 noundef %620)
  %621 = load i32, ptr %x503, align 4
  %622 = load i32, ptr %x535, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x551, ptr noundef %x552, i8 noundef zeroext 0, i32 noundef %621, i32 noundef %622)
  %623 = load i8, ptr %x552, align 1
  %624 = load i32, ptr %x505, align 4
  %625 = load i32, ptr %x537, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x553, ptr noundef %x554, i8 noundef zeroext %623, i32 noundef %624, i32 noundef %625)
  %626 = load i8, ptr %x554, align 1
  %627 = load i32, ptr %x507, align 4
  %628 = load i32, ptr %x539, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x555, ptr noundef %x556, i8 noundef zeroext %626, i32 noundef %627, i32 noundef %628)
  %629 = load i8, ptr %x556, align 1
  %630 = load i32, ptr %x509, align 4
  %631 = load i32, ptr %x541, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x557, ptr noundef %x558, i8 noundef zeroext %629, i32 noundef %630, i32 noundef %631)
  %632 = load i8, ptr %x558, align 1
  %633 = load i32, ptr %x511, align 4
  %634 = load i32, ptr %x543, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x559, ptr noundef %x560, i8 noundef zeroext %632, i32 noundef %633, i32 noundef %634)
  %635 = load i8, ptr %x560, align 1
  %636 = load i32, ptr %x513, align 4
  %637 = load i32, ptr %x545, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x561, ptr noundef %x562, i8 noundef zeroext %635, i32 noundef %636, i32 noundef %637)
  %638 = load i8, ptr %x562, align 1
  %639 = load i32, ptr %x515, align 4
  %640 = load i32, ptr %x547, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x563, ptr noundef %x564, i8 noundef zeroext %638, i32 noundef %639, i32 noundef %640)
  %641 = load i8, ptr %x564, align 1
  %642 = load i32, ptr %x517, align 4
  %643 = load i32, ptr %x549, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x565, ptr noundef %x566, i8 noundef zeroext %641, i32 noundef %642, i32 noundef %643)
  %644 = load i8, ptr %x566, align 1
  %645 = load i8, ptr %x518, align 1
  %conv42 = zext i8 %645 to i32
  %646 = load i8, ptr %x472, align 1
  %conv43 = zext i8 %646 to i32
  %add44 = add i32 %conv42, %conv43
  %647 = load i8, ptr %x502, align 1
  %conv45 = zext i8 %647 to i32
  %648 = load i32, ptr %x474, align 4
  %add46 = add i32 %conv45, %648
  %add47 = add i32 %add44, %add46
  %649 = load i8, ptr %x550, align 1
  %conv48 = zext i8 %649 to i32
  %650 = load i32, ptr %x522, align 4
  %add49 = add i32 %conv48, %650
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x567, ptr noundef %x568, i8 noundef zeroext %644, i32 noundef %add47, i32 noundef %add49)
  %651 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x569, ptr noundef %x570, i32 noundef %651, i32 noundef 515236882)
  %652 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x571, ptr noundef %x572, i32 noundef %652, i32 noundef -1574224581)
  %653 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x573, ptr noundef %x574, i32 noundef %653, i32 noundef 1645201484)
  %654 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x575, ptr noundef %x576, i32 noundef %654, i32 noundef 989847764)
  %655 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x577, ptr noundef %x578, i32 noundef %655, i32 noundef 878989386)
  %656 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x579, ptr noundef %x580, i32 noundef %656, i32 noundef -563109126)
  %657 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x581, ptr noundef %x582, i32 noundef %657, i32 noundef -1877896529)
  %658 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x583, ptr noundef %x584, i32 noundef %658, i32 noundef 2081509152)
  %659 = load i32, ptr %x584, align 4
  %660 = load i32, ptr %x581, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x585, ptr noundef %x586, i8 noundef zeroext 0, i32 noundef %659, i32 noundef %660)
  %661 = load i8, ptr %x586, align 1
  %662 = load i32, ptr %x582, align 4
  %663 = load i32, ptr %x579, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x587, ptr noundef %x588, i8 noundef zeroext %661, i32 noundef %662, i32 noundef %663)
  %664 = load i8, ptr %x588, align 1
  %665 = load i32, ptr %x580, align 4
  %666 = load i32, ptr %x577, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x589, ptr noundef %x590, i8 noundef zeroext %664, i32 noundef %665, i32 noundef %666)
  %667 = load i8, ptr %x590, align 1
  %668 = load i32, ptr %x578, align 4
  %669 = load i32, ptr %x575, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x591, ptr noundef %x592, i8 noundef zeroext %667, i32 noundef %668, i32 noundef %669)
  %670 = load i8, ptr %x592, align 1
  %671 = load i32, ptr %x576, align 4
  %672 = load i32, ptr %x573, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x593, ptr noundef %x594, i8 noundef zeroext %670, i32 noundef %671, i32 noundef %672)
  %673 = load i8, ptr %x594, align 1
  %674 = load i32, ptr %x574, align 4
  %675 = load i32, ptr %x571, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x595, ptr noundef %x596, i8 noundef zeroext %673, i32 noundef %674, i32 noundef %675)
  %676 = load i8, ptr %x596, align 1
  %677 = load i32, ptr %x572, align 4
  %678 = load i32, ptr %x569, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x597, ptr noundef %x598, i8 noundef zeroext %676, i32 noundef %677, i32 noundef %678)
  %679 = load i32, ptr %x553, align 4
  %680 = load i32, ptr %x583, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x599, ptr noundef %x600, i8 noundef zeroext 0, i32 noundef %679, i32 noundef %680)
  %681 = load i8, ptr %x600, align 1
  %682 = load i32, ptr %x555, align 4
  %683 = load i32, ptr %x585, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x601, ptr noundef %x602, i8 noundef zeroext %681, i32 noundef %682, i32 noundef %683)
  %684 = load i8, ptr %x602, align 1
  %685 = load i32, ptr %x557, align 4
  %686 = load i32, ptr %x587, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x603, ptr noundef %x604, i8 noundef zeroext %684, i32 noundef %685, i32 noundef %686)
  %687 = load i8, ptr %x604, align 1
  %688 = load i32, ptr %x559, align 4
  %689 = load i32, ptr %x589, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x605, ptr noundef %x606, i8 noundef zeroext %687, i32 noundef %688, i32 noundef %689)
  %690 = load i8, ptr %x606, align 1
  %691 = load i32, ptr %x561, align 4
  %692 = load i32, ptr %x591, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x607, ptr noundef %x608, i8 noundef zeroext %690, i32 noundef %691, i32 noundef %692)
  %693 = load i8, ptr %x608, align 1
  %694 = load i32, ptr %x563, align 4
  %695 = load i32, ptr %x593, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x609, ptr noundef %x610, i8 noundef zeroext %693, i32 noundef %694, i32 noundef %695)
  %696 = load i8, ptr %x610, align 1
  %697 = load i32, ptr %x565, align 4
  %698 = load i32, ptr %x595, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x611, ptr noundef %x612, i8 noundef zeroext %696, i32 noundef %697, i32 noundef %698)
  %699 = load i8, ptr %x612, align 1
  %700 = load i32, ptr %x567, align 4
  %701 = load i32, ptr %x597, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x613, ptr noundef %x614, i8 noundef zeroext %699, i32 noundef %700, i32 noundef %701)
  %702 = load i32, ptr %x599, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x615, ptr noundef %x616, i32 noundef %702, i32 noundef 1916078453)
  %703 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x617, ptr noundef %x618, i32 noundef %703, i32 noundef -2)
  %704 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x619, ptr noundef %x620, i32 noundef %704, i32 noundef -1)
  %705 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x621, ptr noundef %x622, i32 noundef %705, i32 noundef -1)
  %706 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x623, ptr noundef %x624, i32 noundef %706, i32 noundef -1)
  %707 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x625, ptr noundef %x626, i32 noundef %707, i32 noundef 1912856427)
  %708 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x627, ptr noundef %x628, i32 noundef %708, i32 noundef 566625579)
  %709 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x629, ptr noundef %x630, i32 noundef %709, i32 noundef 1404826633)
  %710 = load i32, ptr %x615, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x631, ptr noundef %x632, i32 noundef %710, i32 noundef 970277155)
  %711 = load i32, ptr %x632, align 4
  %712 = load i32, ptr %x629, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x633, ptr noundef %x634, i8 noundef zeroext 0, i32 noundef %711, i32 noundef %712)
  %713 = load i8, ptr %x634, align 1
  %714 = load i32, ptr %x630, align 4
  %715 = load i32, ptr %x627, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x635, ptr noundef %x636, i8 noundef zeroext %713, i32 noundef %714, i32 noundef %715)
  %716 = load i8, ptr %x636, align 1
  %717 = load i32, ptr %x628, align 4
  %718 = load i32, ptr %x625, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x637, ptr noundef %x638, i8 noundef zeroext %716, i32 noundef %717, i32 noundef %718)
  %719 = load i8, ptr %x638, align 1
  %720 = load i32, ptr %x626, align 4
  %721 = load i32, ptr %x623, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x639, ptr noundef %x640, i8 noundef zeroext %719, i32 noundef %720, i32 noundef %721)
  %722 = load i8, ptr %x640, align 1
  %723 = load i32, ptr %x624, align 4
  %724 = load i32, ptr %x621, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x641, ptr noundef %x642, i8 noundef zeroext %722, i32 noundef %723, i32 noundef %724)
  %725 = load i8, ptr %x642, align 1
  %726 = load i32, ptr %x622, align 4
  %727 = load i32, ptr %x619, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x643, ptr noundef %x644, i8 noundef zeroext %725, i32 noundef %726, i32 noundef %727)
  %728 = load i8, ptr %x644, align 1
  %729 = load i32, ptr %x620, align 4
  %730 = load i32, ptr %x617, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x645, ptr noundef %x646, i8 noundef zeroext %728, i32 noundef %729, i32 noundef %730)
  %731 = load i32, ptr %x599, align 4
  %732 = load i32, ptr %x631, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x647, ptr noundef %x648, i8 noundef zeroext 0, i32 noundef %731, i32 noundef %732)
  %733 = load i8, ptr %x648, align 1
  %734 = load i32, ptr %x601, align 4
  %735 = load i32, ptr %x633, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x649, ptr noundef %x650, i8 noundef zeroext %733, i32 noundef %734, i32 noundef %735)
  %736 = load i8, ptr %x650, align 1
  %737 = load i32, ptr %x603, align 4
  %738 = load i32, ptr %x635, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x651, ptr noundef %x652, i8 noundef zeroext %736, i32 noundef %737, i32 noundef %738)
  %739 = load i8, ptr %x652, align 1
  %740 = load i32, ptr %x605, align 4
  %741 = load i32, ptr %x637, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x653, ptr noundef %x654, i8 noundef zeroext %739, i32 noundef %740, i32 noundef %741)
  %742 = load i8, ptr %x654, align 1
  %743 = load i32, ptr %x607, align 4
  %744 = load i32, ptr %x639, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x655, ptr noundef %x656, i8 noundef zeroext %742, i32 noundef %743, i32 noundef %744)
  %745 = load i8, ptr %x656, align 1
  %746 = load i32, ptr %x609, align 4
  %747 = load i32, ptr %x641, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x657, ptr noundef %x658, i8 noundef zeroext %745, i32 noundef %746, i32 noundef %747)
  %748 = load i8, ptr %x658, align 1
  %749 = load i32, ptr %x611, align 4
  %750 = load i32, ptr %x643, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x659, ptr noundef %x660, i8 noundef zeroext %748, i32 noundef %749, i32 noundef %750)
  %751 = load i8, ptr %x660, align 1
  %752 = load i32, ptr %x613, align 4
  %753 = load i32, ptr %x645, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x661, ptr noundef %x662, i8 noundef zeroext %751, i32 noundef %752, i32 noundef %753)
  %754 = load i8, ptr %x662, align 1
  %755 = load i8, ptr %x614, align 1
  %conv50 = zext i8 %755 to i32
  %756 = load i8, ptr %x568, align 1
  %conv51 = zext i8 %756 to i32
  %add52 = add i32 %conv50, %conv51
  %757 = load i8, ptr %x598, align 1
  %conv53 = zext i8 %757 to i32
  %758 = load i32, ptr %x570, align 4
  %add54 = add i32 %conv53, %758
  %add55 = add i32 %add52, %add54
  %759 = load i8, ptr %x646, align 1
  %conv56 = zext i8 %759 to i32
  %760 = load i32, ptr %x618, align 4
  %add57 = add i32 %conv56, %760
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x663, ptr noundef %x664, i8 noundef zeroext %754, i32 noundef %add55, i32 noundef %add57)
  %761 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x665, ptr noundef %x666, i32 noundef %761, i32 noundef 515236882)
  %762 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x667, ptr noundef %x668, i32 noundef %762, i32 noundef -1574224581)
  %763 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x669, ptr noundef %x670, i32 noundef %763, i32 noundef 1645201484)
  %764 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x671, ptr noundef %x672, i32 noundef %764, i32 noundef 989847764)
  %765 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x673, ptr noundef %x674, i32 noundef %765, i32 noundef 878989386)
  %766 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x675, ptr noundef %x676, i32 noundef %766, i32 noundef -563109126)
  %767 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x677, ptr noundef %x678, i32 noundef %767, i32 noundef -1877896529)
  %768 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x679, ptr noundef %x680, i32 noundef %768, i32 noundef 2081509152)
  %769 = load i32, ptr %x680, align 4
  %770 = load i32, ptr %x677, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x681, ptr noundef %x682, i8 noundef zeroext 0, i32 noundef %769, i32 noundef %770)
  %771 = load i8, ptr %x682, align 1
  %772 = load i32, ptr %x678, align 4
  %773 = load i32, ptr %x675, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x683, ptr noundef %x684, i8 noundef zeroext %771, i32 noundef %772, i32 noundef %773)
  %774 = load i8, ptr %x684, align 1
  %775 = load i32, ptr %x676, align 4
  %776 = load i32, ptr %x673, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x685, ptr noundef %x686, i8 noundef zeroext %774, i32 noundef %775, i32 noundef %776)
  %777 = load i8, ptr %x686, align 1
  %778 = load i32, ptr %x674, align 4
  %779 = load i32, ptr %x671, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x687, ptr noundef %x688, i8 noundef zeroext %777, i32 noundef %778, i32 noundef %779)
  %780 = load i8, ptr %x688, align 1
  %781 = load i32, ptr %x672, align 4
  %782 = load i32, ptr %x669, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x689, ptr noundef %x690, i8 noundef zeroext %780, i32 noundef %781, i32 noundef %782)
  %783 = load i8, ptr %x690, align 1
  %784 = load i32, ptr %x670, align 4
  %785 = load i32, ptr %x667, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x691, ptr noundef %x692, i8 noundef zeroext %783, i32 noundef %784, i32 noundef %785)
  %786 = load i8, ptr %x692, align 1
  %787 = load i32, ptr %x668, align 4
  %788 = load i32, ptr %x665, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x693, ptr noundef %x694, i8 noundef zeroext %786, i32 noundef %787, i32 noundef %788)
  %789 = load i32, ptr %x649, align 4
  %790 = load i32, ptr %x679, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x695, ptr noundef %x696, i8 noundef zeroext 0, i32 noundef %789, i32 noundef %790)
  %791 = load i8, ptr %x696, align 1
  %792 = load i32, ptr %x651, align 4
  %793 = load i32, ptr %x681, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x697, ptr noundef %x698, i8 noundef zeroext %791, i32 noundef %792, i32 noundef %793)
  %794 = load i8, ptr %x698, align 1
  %795 = load i32, ptr %x653, align 4
  %796 = load i32, ptr %x683, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x699, ptr noundef %x700, i8 noundef zeroext %794, i32 noundef %795, i32 noundef %796)
  %797 = load i8, ptr %x700, align 1
  %798 = load i32, ptr %x655, align 4
  %799 = load i32, ptr %x685, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x701, ptr noundef %x702, i8 noundef zeroext %797, i32 noundef %798, i32 noundef %799)
  %800 = load i8, ptr %x702, align 1
  %801 = load i32, ptr %x657, align 4
  %802 = load i32, ptr %x687, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x703, ptr noundef %x704, i8 noundef zeroext %800, i32 noundef %801, i32 noundef %802)
  %803 = load i8, ptr %x704, align 1
  %804 = load i32, ptr %x659, align 4
  %805 = load i32, ptr %x689, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x705, ptr noundef %x706, i8 noundef zeroext %803, i32 noundef %804, i32 noundef %805)
  %806 = load i8, ptr %x706, align 1
  %807 = load i32, ptr %x661, align 4
  %808 = load i32, ptr %x691, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x707, ptr noundef %x708, i8 noundef zeroext %806, i32 noundef %807, i32 noundef %808)
  %809 = load i8, ptr %x708, align 1
  %810 = load i32, ptr %x663, align 4
  %811 = load i32, ptr %x693, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x709, ptr noundef %x710, i8 noundef zeroext %809, i32 noundef %810, i32 noundef %811)
  %812 = load i32, ptr %x695, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x711, ptr noundef %x712, i32 noundef %812, i32 noundef 1916078453)
  %813 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x713, ptr noundef %x714, i32 noundef %813, i32 noundef -2)
  %814 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x715, ptr noundef %x716, i32 noundef %814, i32 noundef -1)
  %815 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x717, ptr noundef %x718, i32 noundef %815, i32 noundef -1)
  %816 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x719, ptr noundef %x720, i32 noundef %816, i32 noundef -1)
  %817 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x721, ptr noundef %x722, i32 noundef %817, i32 noundef 1912856427)
  %818 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x723, ptr noundef %x724, i32 noundef %818, i32 noundef 566625579)
  %819 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x725, ptr noundef %x726, i32 noundef %819, i32 noundef 1404826633)
  %820 = load i32, ptr %x711, align 4
  call void @fiat_sm2_scalar_mulx_u32(ptr noundef %x727, ptr noundef %x728, i32 noundef %820, i32 noundef 970277155)
  %821 = load i32, ptr %x728, align 4
  %822 = load i32, ptr %x725, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x729, ptr noundef %x730, i8 noundef zeroext 0, i32 noundef %821, i32 noundef %822)
  %823 = load i8, ptr %x730, align 1
  %824 = load i32, ptr %x726, align 4
  %825 = load i32, ptr %x723, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x731, ptr noundef %x732, i8 noundef zeroext %823, i32 noundef %824, i32 noundef %825)
  %826 = load i8, ptr %x732, align 1
  %827 = load i32, ptr %x724, align 4
  %828 = load i32, ptr %x721, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x733, ptr noundef %x734, i8 noundef zeroext %826, i32 noundef %827, i32 noundef %828)
  %829 = load i8, ptr %x734, align 1
  %830 = load i32, ptr %x722, align 4
  %831 = load i32, ptr %x719, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x735, ptr noundef %x736, i8 noundef zeroext %829, i32 noundef %830, i32 noundef %831)
  %832 = load i8, ptr %x736, align 1
  %833 = load i32, ptr %x720, align 4
  %834 = load i32, ptr %x717, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x737, ptr noundef %x738, i8 noundef zeroext %832, i32 noundef %833, i32 noundef %834)
  %835 = load i8, ptr %x738, align 1
  %836 = load i32, ptr %x718, align 4
  %837 = load i32, ptr %x715, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x739, ptr noundef %x740, i8 noundef zeroext %835, i32 noundef %836, i32 noundef %837)
  %838 = load i8, ptr %x740, align 1
  %839 = load i32, ptr %x716, align 4
  %840 = load i32, ptr %x713, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x741, ptr noundef %x742, i8 noundef zeroext %838, i32 noundef %839, i32 noundef %840)
  %841 = load i32, ptr %x695, align 4
  %842 = load i32, ptr %x727, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x743, ptr noundef %x744, i8 noundef zeroext 0, i32 noundef %841, i32 noundef %842)
  %843 = load i8, ptr %x744, align 1
  %844 = load i32, ptr %x697, align 4
  %845 = load i32, ptr %x729, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x745, ptr noundef %x746, i8 noundef zeroext %843, i32 noundef %844, i32 noundef %845)
  %846 = load i8, ptr %x746, align 1
  %847 = load i32, ptr %x699, align 4
  %848 = load i32, ptr %x731, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x747, ptr noundef %x748, i8 noundef zeroext %846, i32 noundef %847, i32 noundef %848)
  %849 = load i8, ptr %x748, align 1
  %850 = load i32, ptr %x701, align 4
  %851 = load i32, ptr %x733, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x749, ptr noundef %x750, i8 noundef zeroext %849, i32 noundef %850, i32 noundef %851)
  %852 = load i8, ptr %x750, align 1
  %853 = load i32, ptr %x703, align 4
  %854 = load i32, ptr %x735, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x751, ptr noundef %x752, i8 noundef zeroext %852, i32 noundef %853, i32 noundef %854)
  %855 = load i8, ptr %x752, align 1
  %856 = load i32, ptr %x705, align 4
  %857 = load i32, ptr %x737, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x753, ptr noundef %x754, i8 noundef zeroext %855, i32 noundef %856, i32 noundef %857)
  %858 = load i8, ptr %x754, align 1
  %859 = load i32, ptr %x707, align 4
  %860 = load i32, ptr %x739, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x755, ptr noundef %x756, i8 noundef zeroext %858, i32 noundef %859, i32 noundef %860)
  %861 = load i8, ptr %x756, align 1
  %862 = load i32, ptr %x709, align 4
  %863 = load i32, ptr %x741, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x757, ptr noundef %x758, i8 noundef zeroext %861, i32 noundef %862, i32 noundef %863)
  %864 = load i8, ptr %x758, align 1
  %865 = load i8, ptr %x710, align 1
  %conv58 = zext i8 %865 to i32
  %866 = load i8, ptr %x664, align 1
  %conv59 = zext i8 %866 to i32
  %add60 = add i32 %conv58, %conv59
  %867 = load i8, ptr %x694, align 1
  %conv61 = zext i8 %867 to i32
  %868 = load i32, ptr %x666, align 4
  %add62 = add i32 %conv61, %868
  %add63 = add i32 %add60, %add62
  %869 = load i8, ptr %x742, align 1
  %conv64 = zext i8 %869 to i32
  %870 = load i32, ptr %x714, align 4
  %add65 = add i32 %conv64, %870
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x759, ptr noundef %x760, i8 noundef zeroext %864, i32 noundef %add63, i32 noundef %add65)
  %871 = load i32, ptr %x745, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x761, ptr noundef %x762, i8 noundef zeroext 0, i32 noundef %871, i32 noundef 970277155)
  %872 = load i8, ptr %x762, align 1
  %873 = load i32, ptr %x747, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x763, ptr noundef %x764, i8 noundef zeroext %872, i32 noundef %873, i32 noundef 1404826633)
  %874 = load i8, ptr %x764, align 1
  %875 = load i32, ptr %x749, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x765, ptr noundef %x766, i8 noundef zeroext %874, i32 noundef %875, i32 noundef 566625579)
  %876 = load i8, ptr %x766, align 1
  %877 = load i32, ptr %x751, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x767, ptr noundef %x768, i8 noundef zeroext %876, i32 noundef %877, i32 noundef 1912856427)
  %878 = load i8, ptr %x768, align 1
  %879 = load i32, ptr %x753, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x769, ptr noundef %x770, i8 noundef zeroext %878, i32 noundef %879, i32 noundef -1)
  %880 = load i8, ptr %x770, align 1
  %881 = load i32, ptr %x755, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x771, ptr noundef %x772, i8 noundef zeroext %880, i32 noundef %881, i32 noundef -1)
  %882 = load i8, ptr %x772, align 1
  %883 = load i32, ptr %x757, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x773, ptr noundef %x774, i8 noundef zeroext %882, i32 noundef %883, i32 noundef -1)
  %884 = load i8, ptr %x774, align 1
  %885 = load i32, ptr %x759, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x775, ptr noundef %x776, i8 noundef zeroext %884, i32 noundef %885, i32 noundef -2)
  %886 = load i8, ptr %x776, align 1
  %887 = load i8, ptr %x760, align 1
  %conv66 = zext i8 %887 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x777, ptr noundef %x778, i8 noundef zeroext %886, i32 noundef %conv66, i32 noundef 0)
  %888 = load i8, ptr %x778, align 1
  %889 = load i32, ptr %x761, align 4
  %890 = load i32, ptr %x745, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x779, i8 noundef zeroext %888, i32 noundef %889, i32 noundef %890)
  %891 = load i8, ptr %x778, align 1
  %892 = load i32, ptr %x763, align 4
  %893 = load i32, ptr %x747, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x780, i8 noundef zeroext %891, i32 noundef %892, i32 noundef %893)
  %894 = load i8, ptr %x778, align 1
  %895 = load i32, ptr %x765, align 4
  %896 = load i32, ptr %x749, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x781, i8 noundef zeroext %894, i32 noundef %895, i32 noundef %896)
  %897 = load i8, ptr %x778, align 1
  %898 = load i32, ptr %x767, align 4
  %899 = load i32, ptr %x751, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x782, i8 noundef zeroext %897, i32 noundef %898, i32 noundef %899)
  %900 = load i8, ptr %x778, align 1
  %901 = load i32, ptr %x769, align 4
  %902 = load i32, ptr %x753, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x783, i8 noundef zeroext %900, i32 noundef %901, i32 noundef %902)
  %903 = load i8, ptr %x778, align 1
  %904 = load i32, ptr %x771, align 4
  %905 = load i32, ptr %x755, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x784, i8 noundef zeroext %903, i32 noundef %904, i32 noundef %905)
  %906 = load i8, ptr %x778, align 1
  %907 = load i32, ptr %x773, align 4
  %908 = load i32, ptr %x757, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x785, i8 noundef zeroext %906, i32 noundef %907, i32 noundef %908)
  %909 = load i8, ptr %x778, align 1
  %910 = load i32, ptr %x775, align 4
  %911 = load i32, ptr %x759, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x786, i8 noundef zeroext %909, i32 noundef %910, i32 noundef %911)
  %912 = load i32, ptr %x779, align 4
  %913 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %913, i64 0
  store i32 %912, ptr %arrayidx67, align 4
  %914 = load i32, ptr %x780, align 4
  %915 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %915, i64 1
  store i32 %914, ptr %arrayidx68, align 4
  %916 = load i32, ptr %x781, align 4
  %917 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %917, i64 2
  store i32 %916, ptr %arrayidx69, align 4
  %918 = load i32, ptr %x782, align 4
  %919 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %919, i64 3
  store i32 %918, ptr %arrayidx70, align 4
  %920 = load i32, ptr %x783, align 4
  %921 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %921, i64 4
  store i32 %920, ptr %arrayidx71, align 4
  %922 = load i32, ptr %x784, align 4
  %923 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %923, i64 5
  store i32 %922, ptr %arrayidx72, align 4
  %924 = load i32, ptr %x785, align 4
  %925 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %925, i64 6
  store i32 %924, ptr %arrayidx73, align 4
  %926 = load i32, ptr %x786, align 4
  %927 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %927, i64 7
  store i32 %926, ptr %arrayidx74, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_nonzero(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 5
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx6, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 7
  %15 = load i32, ptr %arrayidx7, align 4
  %or = or i32 %13, %15
  %or8 = or i32 %11, %or
  %or9 = or i32 %9, %or8
  %or10 = or i32 %7, %or9
  %or11 = or i32 %5, %or10
  %or12 = or i32 %3, %or11
  %or13 = or i32 %1, %or12
  store i32 %or13, ptr %x1, align 4
  %16 = load i32, ptr %x1, align 4
  %17 = load ptr, ptr %out1.addr, align 8
  store i32 %16, ptr %17, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %1 = load ptr, ptr %arg2.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load ptr, ptr %arg3.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x1, i8 noundef zeroext %0, i32 noundef %2, i32 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %arrayidx3, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x2, i8 noundef zeroext %5, i32 noundef %7, i32 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %11, i64 2
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 2
  %14 = load i32, ptr %arrayidx5, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x3, i8 noundef zeroext %10, i32 noundef %12, i32 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx6, align 4
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %18, i64 3
  %19 = load i32, ptr %arrayidx7, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x4, i8 noundef zeroext %15, i32 noundef %17, i32 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %21, i64 4
  %22 = load i32, ptr %arrayidx8, align 4
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %23, i64 4
  %24 = load i32, ptr %arrayidx9, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x5, i8 noundef zeroext %20, i32 noundef %22, i32 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %26, i64 5
  %27 = load i32, ptr %arrayidx10, align 4
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %28, i64 5
  %29 = load i32, ptr %arrayidx11, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %25, i32 noundef %27, i32 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %31, i64 6
  %32 = load i32, ptr %arrayidx12, align 4
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %33, i64 6
  %34 = load i32, ptr %arrayidx13, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %30, i32 noundef %32, i32 noundef %34)
  %35 = load i8, ptr %arg1.addr, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %36, i64 7
  %37 = load i32, ptr %arrayidx14, align 4
  %38 = load ptr, ptr %arg3.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 7
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %35, i32 noundef %37, i32 noundef %39)
  %40 = load i32, ptr %x1, align 4
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 %40, ptr %arrayidx16, align 4
  %42 = load i32, ptr %x2, align 4
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %43, i64 1
  store i32 %42, ptr %arrayidx17, align 4
  %44 = load i32, ptr %x3, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %44, ptr %arrayidx18, align 4
  %46 = load i32, ptr %x4, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %47, i64 3
  store i32 %46, ptr %arrayidx19, align 4
  %48 = load i32, ptr %x5, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %49, i64 4
  store i32 %48, ptr %arrayidx20, align 4
  %50 = load i32, ptr %x6, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %51, i64 5
  store i32 %50, ptr %arrayidx21, align 4
  %52 = load i32, ptr %x7, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %53, i64 6
  store i32 %52, ptr %arrayidx22, align 4
  %54 = load i32, ptr %x8, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %55, i64 7
  store i32 %54, ptr %arrayidx23, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x9 = alloca i8, align 1
  %x10 = alloca i32, align 4
  %x11 = alloca i8, align 1
  %x12 = alloca i32, align 4
  %x13 = alloca i8, align 1
  %x14 = alloca i8, align 1
  %x15 = alloca i8, align 1
  %x16 = alloca i32, align 4
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i8, align 1
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i8, align 1
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i8, align 1
  %x33 = alloca i8, align 1
  %x34 = alloca i32, align 4
  %x35 = alloca i8, align 1
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i8, align 1
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i8, align 1
  %x44 = alloca i8, align 1
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i8, align 1
  %x50 = alloca i8, align 1
  %x51 = alloca i8, align 1
  %x52 = alloca i32, align 4
  %x53 = alloca i8, align 1
  %x54 = alloca i32, align 4
  %x55 = alloca i8, align 1
  %x56 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 7
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 6
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 5
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 4
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 3
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 1
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 0
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load i32, ptr %x8, align 4
  %and = and i32 %16, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, ptr %x9, align 1
  %17 = load i32, ptr %x8, align 4
  %shr = lshr i32 %17, 8
  store i32 %shr, ptr %x10, align 4
  %18 = load i32, ptr %x10, align 4
  %and8 = and i32 %18, 255
  %conv9 = trunc i32 %and8 to i8
  store i8 %conv9, ptr %x11, align 1
  %19 = load i32, ptr %x10, align 4
  %shr10 = lshr i32 %19, 8
  store i32 %shr10, ptr %x12, align 4
  %20 = load i32, ptr %x12, align 4
  %and11 = and i32 %20, 255
  %conv12 = trunc i32 %and11 to i8
  store i8 %conv12, ptr %x13, align 1
  %21 = load i32, ptr %x12, align 4
  %shr13 = lshr i32 %21, 8
  %conv14 = trunc i32 %shr13 to i8
  store i8 %conv14, ptr %x14, align 1
  %22 = load i32, ptr %x7, align 4
  %and15 = and i32 %22, 255
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, ptr %x15, align 1
  %23 = load i32, ptr %x7, align 4
  %shr17 = lshr i32 %23, 8
  store i32 %shr17, ptr %x16, align 4
  %24 = load i32, ptr %x16, align 4
  %and18 = and i32 %24, 255
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, ptr %x17, align 1
  %25 = load i32, ptr %x16, align 4
  %shr20 = lshr i32 %25, 8
  store i32 %shr20, ptr %x18, align 4
  %26 = load i32, ptr %x18, align 4
  %and21 = and i32 %26, 255
  %conv22 = trunc i32 %and21 to i8
  store i8 %conv22, ptr %x19, align 1
  %27 = load i32, ptr %x18, align 4
  %shr23 = lshr i32 %27, 8
  %conv24 = trunc i32 %shr23 to i8
  store i8 %conv24, ptr %x20, align 1
  %28 = load i32, ptr %x6, align 4
  %and25 = and i32 %28, 255
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, ptr %x21, align 1
  %29 = load i32, ptr %x6, align 4
  %shr27 = lshr i32 %29, 8
  store i32 %shr27, ptr %x22, align 4
  %30 = load i32, ptr %x22, align 4
  %and28 = and i32 %30, 255
  %conv29 = trunc i32 %and28 to i8
  store i8 %conv29, ptr %x23, align 1
  %31 = load i32, ptr %x22, align 4
  %shr30 = lshr i32 %31, 8
  store i32 %shr30, ptr %x24, align 4
  %32 = load i32, ptr %x24, align 4
  %and31 = and i32 %32, 255
  %conv32 = trunc i32 %and31 to i8
  store i8 %conv32, ptr %x25, align 1
  %33 = load i32, ptr %x24, align 4
  %shr33 = lshr i32 %33, 8
  %conv34 = trunc i32 %shr33 to i8
  store i8 %conv34, ptr %x26, align 1
  %34 = load i32, ptr %x5, align 4
  %and35 = and i32 %34, 255
  %conv36 = trunc i32 %and35 to i8
  store i8 %conv36, ptr %x27, align 1
  %35 = load i32, ptr %x5, align 4
  %shr37 = lshr i32 %35, 8
  store i32 %shr37, ptr %x28, align 4
  %36 = load i32, ptr %x28, align 4
  %and38 = and i32 %36, 255
  %conv39 = trunc i32 %and38 to i8
  store i8 %conv39, ptr %x29, align 1
  %37 = load i32, ptr %x28, align 4
  %shr40 = lshr i32 %37, 8
  store i32 %shr40, ptr %x30, align 4
  %38 = load i32, ptr %x30, align 4
  %and41 = and i32 %38, 255
  %conv42 = trunc i32 %and41 to i8
  store i8 %conv42, ptr %x31, align 1
  %39 = load i32, ptr %x30, align 4
  %shr43 = lshr i32 %39, 8
  %conv44 = trunc i32 %shr43 to i8
  store i8 %conv44, ptr %x32, align 1
  %40 = load i32, ptr %x4, align 4
  %and45 = and i32 %40, 255
  %conv46 = trunc i32 %and45 to i8
  store i8 %conv46, ptr %x33, align 1
  %41 = load i32, ptr %x4, align 4
  %shr47 = lshr i32 %41, 8
  store i32 %shr47, ptr %x34, align 4
  %42 = load i32, ptr %x34, align 4
  %and48 = and i32 %42, 255
  %conv49 = trunc i32 %and48 to i8
  store i8 %conv49, ptr %x35, align 1
  %43 = load i32, ptr %x34, align 4
  %shr50 = lshr i32 %43, 8
  store i32 %shr50, ptr %x36, align 4
  %44 = load i32, ptr %x36, align 4
  %and51 = and i32 %44, 255
  %conv52 = trunc i32 %and51 to i8
  store i8 %conv52, ptr %x37, align 1
  %45 = load i32, ptr %x36, align 4
  %shr53 = lshr i32 %45, 8
  %conv54 = trunc i32 %shr53 to i8
  store i8 %conv54, ptr %x38, align 1
  %46 = load i32, ptr %x3, align 4
  %and55 = and i32 %46, 255
  %conv56 = trunc i32 %and55 to i8
  store i8 %conv56, ptr %x39, align 1
  %47 = load i32, ptr %x3, align 4
  %shr57 = lshr i32 %47, 8
  store i32 %shr57, ptr %x40, align 4
  %48 = load i32, ptr %x40, align 4
  %and58 = and i32 %48, 255
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, ptr %x41, align 1
  %49 = load i32, ptr %x40, align 4
  %shr60 = lshr i32 %49, 8
  store i32 %shr60, ptr %x42, align 4
  %50 = load i32, ptr %x42, align 4
  %and61 = and i32 %50, 255
  %conv62 = trunc i32 %and61 to i8
  store i8 %conv62, ptr %x43, align 1
  %51 = load i32, ptr %x42, align 4
  %shr63 = lshr i32 %51, 8
  %conv64 = trunc i32 %shr63 to i8
  store i8 %conv64, ptr %x44, align 1
  %52 = load i32, ptr %x2, align 4
  %and65 = and i32 %52, 255
  %conv66 = trunc i32 %and65 to i8
  store i8 %conv66, ptr %x45, align 1
  %53 = load i32, ptr %x2, align 4
  %shr67 = lshr i32 %53, 8
  store i32 %shr67, ptr %x46, align 4
  %54 = load i32, ptr %x46, align 4
  %and68 = and i32 %54, 255
  %conv69 = trunc i32 %and68 to i8
  store i8 %conv69, ptr %x47, align 1
  %55 = load i32, ptr %x46, align 4
  %shr70 = lshr i32 %55, 8
  store i32 %shr70, ptr %x48, align 4
  %56 = load i32, ptr %x48, align 4
  %and71 = and i32 %56, 255
  %conv72 = trunc i32 %and71 to i8
  store i8 %conv72, ptr %x49, align 1
  %57 = load i32, ptr %x48, align 4
  %shr73 = lshr i32 %57, 8
  %conv74 = trunc i32 %shr73 to i8
  store i8 %conv74, ptr %x50, align 1
  %58 = load i32, ptr %x1, align 4
  %and75 = and i32 %58, 255
  %conv76 = trunc i32 %and75 to i8
  store i8 %conv76, ptr %x51, align 1
  %59 = load i32, ptr %x1, align 4
  %shr77 = lshr i32 %59, 8
  store i32 %shr77, ptr %x52, align 4
  %60 = load i32, ptr %x52, align 4
  %and78 = and i32 %60, 255
  %conv79 = trunc i32 %and78 to i8
  store i8 %conv79, ptr %x53, align 1
  %61 = load i32, ptr %x52, align 4
  %shr80 = lshr i32 %61, 8
  store i32 %shr80, ptr %x54, align 4
  %62 = load i32, ptr %x54, align 4
  %and81 = and i32 %62, 255
  %conv82 = trunc i32 %and81 to i8
  store i8 %conv82, ptr %x55, align 1
  %63 = load i32, ptr %x54, align 4
  %shr83 = lshr i32 %63, 8
  %conv84 = trunc i32 %shr83 to i8
  store i8 %conv84, ptr %x56, align 1
  %64 = load i8, ptr %x9, align 1
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %65, i64 0
  store i8 %64, ptr %arrayidx85, align 1
  %66 = load i8, ptr %x11, align 1
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %66, ptr %arrayidx86, align 1
  %68 = load i8, ptr %x13, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %68, ptr %arrayidx87, align 1
  %70 = load i8, ptr %x14, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %71, i64 3
  store i8 %70, ptr %arrayidx88, align 1
  %72 = load i8, ptr %x15, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %73, i64 4
  store i8 %72, ptr %arrayidx89, align 1
  %74 = load i8, ptr %x17, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %75, i64 5
  store i8 %74, ptr %arrayidx90, align 1
  %76 = load i8, ptr %x19, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %77, i64 6
  store i8 %76, ptr %arrayidx91, align 1
  %78 = load i8, ptr %x20, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %79, i64 7
  store i8 %78, ptr %arrayidx92, align 1
  %80 = load i8, ptr %x21, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %81, i64 8
  store i8 %80, ptr %arrayidx93, align 1
  %82 = load i8, ptr %x23, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %83, i64 9
  store i8 %82, ptr %arrayidx94, align 1
  %84 = load i8, ptr %x25, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %85, i64 10
  store i8 %84, ptr %arrayidx95, align 1
  %86 = load i8, ptr %x26, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %87, i64 11
  store i8 %86, ptr %arrayidx96, align 1
  %88 = load i8, ptr %x27, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %89, i64 12
  store i8 %88, ptr %arrayidx97, align 1
  %90 = load i8, ptr %x29, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %91, i64 13
  store i8 %90, ptr %arrayidx98, align 1
  %92 = load i8, ptr %x31, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %93, i64 14
  store i8 %92, ptr %arrayidx99, align 1
  %94 = load i8, ptr %x32, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %95, i64 15
  store i8 %94, ptr %arrayidx100, align 1
  %96 = load i8, ptr %x33, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %97, i64 16
  store i8 %96, ptr %arrayidx101, align 1
  %98 = load i8, ptr %x35, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %99, i64 17
  store i8 %98, ptr %arrayidx102, align 1
  %100 = load i8, ptr %x37, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %101, i64 18
  store i8 %100, ptr %arrayidx103, align 1
  %102 = load i8, ptr %x38, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %103, i64 19
  store i8 %102, ptr %arrayidx104, align 1
  %104 = load i8, ptr %x39, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %105, i64 20
  store i8 %104, ptr %arrayidx105, align 1
  %106 = load i8, ptr %x41, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %107, i64 21
  store i8 %106, ptr %arrayidx106, align 1
  %108 = load i8, ptr %x43, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %109, i64 22
  store i8 %108, ptr %arrayidx107, align 1
  %110 = load i8, ptr %x44, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %111, i64 23
  store i8 %110, ptr %arrayidx108, align 1
  %112 = load i8, ptr %x45, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %113, i64 24
  store i8 %112, ptr %arrayidx109, align 1
  %114 = load i8, ptr %x47, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %115, i64 25
  store i8 %114, ptr %arrayidx110, align 1
  %116 = load i8, ptr %x49, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %117, i64 26
  store i8 %116, ptr %arrayidx111, align 1
  %118 = load i8, ptr %x50, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %119, i64 27
  store i8 %118, ptr %arrayidx112, align 1
  %120 = load i8, ptr %x51, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %121, i64 28
  store i8 %120, ptr %arrayidx113, align 1
  %122 = load i8, ptr %x53, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %123, i64 29
  store i8 %122, ptr %arrayidx114, align 1
  %124 = load i8, ptr %x55, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %125, i64 30
  store i8 %124, ptr %arrayidx115, align 1
  %126 = load i8, ptr %x56, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %127, i64 31
  store i8 %126, ptr %arrayidx116, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i8, align 1
  %x5 = alloca i32, align 4
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i8, align 1
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i32, align 4
  %x12 = alloca i8, align 1
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
  %x22 = alloca i32, align 4
  %x23 = alloca i32, align 4
  %x24 = alloca i8, align 1
  %x25 = alloca i32, align 4
  %x26 = alloca i32, align 4
  %x27 = alloca i32, align 4
  %x28 = alloca i8, align 1
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
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
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 31
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 30
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 29
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 28
  %7 = load i8, ptr %arrayidx7, align 1
  store i8 %7, ptr %x4, align 1
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 27
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl i32 %conv9, 24
  store i32 %shl10, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 26
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 16
  store i32 %shl13, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 25
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 8
  store i32 %shl16, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 24
  %15 = load i8, ptr %arrayidx17, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 23
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %shl20 = shl i32 %conv19, 24
  store i32 %shl20, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 22
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %shl23 = shl i32 %conv22, 16
  store i32 %shl23, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 21
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %shl26 = shl i32 %conv25, 8
  store i32 %shl26, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %22, i64 20
  %23 = load i8, ptr %arrayidx27, align 1
  store i8 %23, ptr %x12, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %24, i64 19
  %25 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %shl30 = shl i32 %conv29, 24
  store i32 %shl30, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %26, i64 18
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %shl33 = shl i32 %conv32, 16
  store i32 %shl33, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %shl36 = shl i32 %conv35, 8
  store i32 %shl36, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %30, i64 16
  %31 = load i8, ptr %arrayidx37, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %32, i64 15
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %shl40 = shl i32 %conv39, 24
  store i32 %shl40, ptr %x17, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %34, i64 14
  %35 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %35 to i32
  %shl43 = shl i32 %conv42, 16
  store i32 %shl43, ptr %x18, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %36, i64 13
  %37 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  %shl46 = shl i32 %conv45, 8
  store i32 %shl46, ptr %x19, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %38, i64 12
  %39 = load i8, ptr %arrayidx47, align 1
  store i8 %39, ptr %x20, align 1
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %40, i64 11
  %41 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %41 to i32
  %shl50 = shl i32 %conv49, 24
  store i32 %shl50, ptr %x21, align 4
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 10
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %43 to i32
  %shl53 = shl i32 %conv52, 16
  store i32 %shl53, ptr %x22, align 4
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %44, i64 9
  %45 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %45 to i32
  %shl56 = shl i32 %conv55, 8
  store i32 %shl56, ptr %x23, align 4
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 8
  %47 = load i8, ptr %arrayidx57, align 1
  store i8 %47, ptr %x24, align 1
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %48, i64 7
  %49 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %49 to i32
  %shl60 = shl i32 %conv59, 24
  store i32 %shl60, ptr %x25, align 4
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %50, i64 6
  %51 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %51 to i32
  %shl63 = shl i32 %conv62, 16
  store i32 %shl63, ptr %x26, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %52, i64 5
  %53 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %53 to i32
  %shl66 = shl i32 %conv65, 8
  store i32 %shl66, ptr %x27, align 4
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load i8, ptr %arrayidx67, align 1
  store i8 %55, ptr %x28, align 1
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %56, i64 3
  %57 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %57 to i32
  %shl70 = shl i32 %conv69, 24
  store i32 %shl70, ptr %x29, align 4
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %59 to i32
  %shl73 = shl i32 %conv72, 16
  store i32 %shl73, ptr %x30, align 4
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %60, i64 1
  %61 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %61 to i32
  %shl76 = shl i32 %conv75, 8
  store i32 %shl76, ptr %x31, align 4
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx77, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load i32, ptr %x31, align 4
  %65 = load i8, ptr %x32, align 1
  %conv78 = zext i8 %65 to i32
  %add = add i32 %64, %conv78
  store i32 %add, ptr %x33, align 4
  %66 = load i32, ptr %x30, align 4
  %67 = load i32, ptr %x33, align 4
  %add79 = add i32 %66, %67
  store i32 %add79, ptr %x34, align 4
  %68 = load i32, ptr %x29, align 4
  %69 = load i32, ptr %x34, align 4
  %add80 = add i32 %68, %69
  store i32 %add80, ptr %x35, align 4
  %70 = load i32, ptr %x27, align 4
  %71 = load i8, ptr %x28, align 1
  %conv81 = zext i8 %71 to i32
  %add82 = add i32 %70, %conv81
  store i32 %add82, ptr %x36, align 4
  %72 = load i32, ptr %x26, align 4
  %73 = load i32, ptr %x36, align 4
  %add83 = add i32 %72, %73
  store i32 %add83, ptr %x37, align 4
  %74 = load i32, ptr %x25, align 4
  %75 = load i32, ptr %x37, align 4
  %add84 = add i32 %74, %75
  store i32 %add84, ptr %x38, align 4
  %76 = load i32, ptr %x23, align 4
  %77 = load i8, ptr %x24, align 1
  %conv85 = zext i8 %77 to i32
  %add86 = add i32 %76, %conv85
  store i32 %add86, ptr %x39, align 4
  %78 = load i32, ptr %x22, align 4
  %79 = load i32, ptr %x39, align 4
  %add87 = add i32 %78, %79
  store i32 %add87, ptr %x40, align 4
  %80 = load i32, ptr %x21, align 4
  %81 = load i32, ptr %x40, align 4
  %add88 = add i32 %80, %81
  store i32 %add88, ptr %x41, align 4
  %82 = load i32, ptr %x19, align 4
  %83 = load i8, ptr %x20, align 1
  %conv89 = zext i8 %83 to i32
  %add90 = add i32 %82, %conv89
  store i32 %add90, ptr %x42, align 4
  %84 = load i32, ptr %x18, align 4
  %85 = load i32, ptr %x42, align 4
  %add91 = add i32 %84, %85
  store i32 %add91, ptr %x43, align 4
  %86 = load i32, ptr %x17, align 4
  %87 = load i32, ptr %x43, align 4
  %add92 = add i32 %86, %87
  store i32 %add92, ptr %x44, align 4
  %88 = load i32, ptr %x15, align 4
  %89 = load i8, ptr %x16, align 1
  %conv93 = zext i8 %89 to i32
  %add94 = add i32 %88, %conv93
  store i32 %add94, ptr %x45, align 4
  %90 = load i32, ptr %x14, align 4
  %91 = load i32, ptr %x45, align 4
  %add95 = add i32 %90, %91
  store i32 %add95, ptr %x46, align 4
  %92 = load i32, ptr %x13, align 4
  %93 = load i32, ptr %x46, align 4
  %add96 = add i32 %92, %93
  store i32 %add96, ptr %x47, align 4
  %94 = load i32, ptr %x11, align 4
  %95 = load i8, ptr %x12, align 1
  %conv97 = zext i8 %95 to i32
  %add98 = add i32 %94, %conv97
  store i32 %add98, ptr %x48, align 4
  %96 = load i32, ptr %x10, align 4
  %97 = load i32, ptr %x48, align 4
  %add99 = add i32 %96, %97
  store i32 %add99, ptr %x49, align 4
  %98 = load i32, ptr %x9, align 4
  %99 = load i32, ptr %x49, align 4
  %add100 = add i32 %98, %99
  store i32 %add100, ptr %x50, align 4
  %100 = load i32, ptr %x7, align 4
  %101 = load i8, ptr %x8, align 1
  %conv101 = zext i8 %101 to i32
  %add102 = add i32 %100, %conv101
  store i32 %add102, ptr %x51, align 4
  %102 = load i32, ptr %x6, align 4
  %103 = load i32, ptr %x51, align 4
  %add103 = add i32 %102, %103
  store i32 %add103, ptr %x52, align 4
  %104 = load i32, ptr %x5, align 4
  %105 = load i32, ptr %x52, align 4
  %add104 = add i32 %104, %105
  store i32 %add104, ptr %x53, align 4
  %106 = load i32, ptr %x3, align 4
  %107 = load i8, ptr %x4, align 1
  %conv105 = zext i8 %107 to i32
  %add106 = add i32 %106, %conv105
  store i32 %add106, ptr %x54, align 4
  %108 = load i32, ptr %x2, align 4
  %109 = load i32, ptr %x54, align 4
  %add107 = add i32 %108, %109
  store i32 %add107, ptr %x55, align 4
  %110 = load i32, ptr %x1, align 4
  %111 = load i32, ptr %x55, align 4
  %add108 = add i32 %110, %111
  store i32 %add108, ptr %x56, align 4
  %112 = load i32, ptr %x35, align 4
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, ptr %113, i64 0
  store i32 %112, ptr %arrayidx109, align 4
  %114 = load i32, ptr %x38, align 4
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %115, i64 1
  store i32 %114, ptr %arrayidx110, align 4
  %116 = load i32, ptr %x41, align 4
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %117, i64 2
  store i32 %116, ptr %arrayidx111, align 4
  %118 = load i32, ptr %x44, align 4
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %119, i64 3
  store i32 %118, ptr %arrayidx112, align 4
  %120 = load i32, ptr %x47, align 4
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %121, i64 4
  store i32 %120, ptr %arrayidx113, align 4
  %122 = load i32, ptr %x50, align 4
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %123, i64 5
  store i32 %122, ptr %arrayidx114, align 4
  %124 = load i32, ptr %x53, align 4
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %125, i64 6
  store i32 %124, ptr %arrayidx115, align 4
  %126 = load i32, ptr %x56, align 4
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %127, i64 7
  store i32 %126, ptr %arrayidx116, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_set_one(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  store i32 -970277155, ptr %arrayidx, align 4
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 -1404826634, ptr %arrayidx1, align 4
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 -566625580, ptr %arrayidx2, align 4
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 -1912856428, ptr %arrayidx3, align 4
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 4
  store i32 0, ptr %arrayidx4, align 4
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 5
  store i32 0, ptr %arrayidx5, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 0, ptr %arrayidx6, align 4
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %7, i64 7
  store i32 1, ptr %arrayidx7, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_msat(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  store i32 970277155, ptr %arrayidx, align 4
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 1404826633, ptr %arrayidx1, align 4
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 566625579, ptr %arrayidx2, align 4
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 1912856427, ptr %arrayidx3, align 4
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 4
  store i32 -1, ptr %arrayidx4, align 4
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 5
  store i32 -1, ptr %arrayidx5, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 -1, ptr %arrayidx6, align 4
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %7, i64 7
  store i32 -2, ptr %arrayidx7, align 4
  %8 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %8, i64 8
  store i32 0, ptr %arrayidx8, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i32 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %out3.addr = alloca ptr, align 8
  %out4.addr = alloca ptr, align 8
  %out5.addr = alloca ptr, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %arg4.addr = alloca ptr, align 8
  %arg5.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i8, align 1
  %x4 = alloca i32, align 4
  %x5 = alloca i8, align 1
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
  %x17 = alloca i8, align 1
  %x18 = alloca i32, align 4
  %x19 = alloca i8, align 1
  %x20 = alloca i32, align 4
  %x21 = alloca i8, align 1
  %x22 = alloca i32, align 4
  %x23 = alloca i8, align 1
  %x24 = alloca i32, align 4
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i32, align 4
  %x31 = alloca i8, align 1
  %x32 = alloca i32, align 4
  %x33 = alloca i8, align 1
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
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
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
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i32, align 4
  %x87 = alloca i32, align 4
  %x88 = alloca i32, align 4
  %x89 = alloca i32, align 4
  %x90 = alloca i32, align 4
  %x91 = alloca i32, align 4
  %x92 = alloca i32, align 4
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
  %x110 = alloca i32, align 4
  %x111 = alloca i8, align 1
  %x112 = alloca i32, align 4
  %x113 = alloca i8, align 1
  %x114 = alloca i32, align 4
  %x115 = alloca i8, align 1
  %x116 = alloca i32, align 4
  %x117 = alloca i8, align 1
  %x118 = alloca i32, align 4
  %x119 = alloca i8, align 1
  %x120 = alloca i32, align 4
  %x121 = alloca i8, align 1
  %x122 = alloca i32, align 4
  %x123 = alloca i8, align 1
  %x124 = alloca i32, align 4
  %x125 = alloca i8, align 1
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
  %x136 = alloca i32, align 4
  %x137 = alloca i32, align 4
  %x138 = alloca i32, align 4
  %x139 = alloca i32, align 4
  %x140 = alloca i32, align 4
  %x141 = alloca i32, align 4
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
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
  %x157 = alloca i8, align 1
  %x158 = alloca i32, align 4
  %x159 = alloca i8, align 1
  %x160 = alloca i32, align 4
  %x161 = alloca i8, align 1
  %x162 = alloca i32, align 4
  %x163 = alloca i32, align 4
  %x164 = alloca i32, align 4
  %x165 = alloca i32, align 4
  %x166 = alloca i32, align 4
  %x167 = alloca i32, align 4
  %x168 = alloca i32, align 4
  %x169 = alloca i32, align 4
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store ptr %out3, ptr %out3.addr, align 8
  store ptr %out4, ptr %out4.addr, align 8
  store ptr %out5, ptr %out5.addr, align 8
  store i32 %arg1, ptr %arg1.addr, align 4
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  store ptr %arg4, ptr %arg4.addr, align 8
  store ptr %arg5, ptr %arg5.addr, align 8
  %0 = load i32, ptr %arg1.addr, align 4
  %not = xor i32 %0, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %not, i32 noundef 1)
  %1 = load i32, ptr %x1, align 4
  %shr = lshr i32 %1, 31
  %conv = trunc i32 %shr to i8
  %conv1 = zext i8 %conv to i32
  %2 = load ptr, ptr %arg3.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 1
  %conv2 = trunc i32 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv1, %conv3
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %x3, align 1
  %4 = load i32, ptr %arg1.addr, align 4
  %not6 = xor i32 %4, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i32 noundef %not6, i32 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i32, ptr %arg1.addr, align 4
  %7 = load i32, ptr %x4, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx7, align 4
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx8, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %8, i32 noundef %10, i32 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx10, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %13, i32 noundef %15, i32 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 2
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 2
  %22 = load i32, ptr %arrayidx12, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x9, i8 noundef zeroext %18, i32 noundef %20, i32 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx14, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x10, i8 noundef zeroext %23, i32 noundef %25, i32 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %29, i64 4
  %30 = load i32, ptr %arrayidx15, align 4
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %31, i64 4
  %32 = load i32, ptr %arrayidx16, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %28, i32 noundef %30, i32 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %34, i64 5
  %35 = load i32, ptr %arrayidx17, align 4
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %36, i64 5
  %37 = load i32, ptr %arrayidx18, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x12, i8 noundef zeroext %33, i32 noundef %35, i32 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 6
  %40 = load i32, ptr %arrayidx19, align 4
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %41, i64 6
  %42 = load i32, ptr %arrayidx20, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x13, i8 noundef zeroext %38, i32 noundef %40, i32 noundef %42)
  %43 = load i8, ptr %x3, align 1
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %44, i64 7
  %45 = load i32, ptr %arrayidx21, align 4
  %46 = load ptr, ptr %arg3.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %46, i64 7
  %47 = load i32, ptr %arrayidx22, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x14, i8 noundef zeroext %43, i32 noundef %45, i32 noundef %47)
  %48 = load i8, ptr %x3, align 1
  %49 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %49, i64 8
  %50 = load i32, ptr %arrayidx23, align 4
  %51 = load ptr, ptr %arg3.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %51, i64 8
  %52 = load i32, ptr %arrayidx24, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x15, i8 noundef zeroext %48, i32 noundef %50, i32 noundef %52)
  %53 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %53, i64 0
  %54 = load i32, ptr %arrayidx25, align 4
  %not26 = xor i32 %54, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i32 noundef 1, i32 noundef %not26)
  %55 = load i8, ptr %x17, align 1
  %56 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %56, i64 1
  %57 = load i32, ptr %arrayidx27, align 4
  %not28 = xor i32 %57, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %55, i32 noundef 0, i32 noundef %not28)
  %58 = load i8, ptr %x19, align 1
  %59 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %59, i64 2
  %60 = load i32, ptr %arrayidx29, align 4
  %not30 = xor i32 %60, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %58, i32 noundef 0, i32 noundef %not30)
  %61 = load i8, ptr %x21, align 1
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %62, i64 3
  %63 = load i32, ptr %arrayidx31, align 4
  %not32 = xor i32 %63, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %61, i32 noundef 0, i32 noundef %not32)
  %64 = load i8, ptr %x23, align 1
  %65 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %65, i64 4
  %66 = load i32, ptr %arrayidx33, align 4
  %not34 = xor i32 %66, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %64, i32 noundef 0, i32 noundef %not34)
  %67 = load i8, ptr %x25, align 1
  %68 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %68, i64 5
  %69 = load i32, ptr %arrayidx35, align 4
  %not36 = xor i32 %69, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %67, i32 noundef 0, i32 noundef %not36)
  %70 = load i8, ptr %x27, align 1
  %71 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %71, i64 6
  %72 = load i32, ptr %arrayidx37, align 4
  %not38 = xor i32 %72, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %70, i32 noundef 0, i32 noundef %not38)
  %73 = load i8, ptr %x29, align 1
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %74, i64 7
  %75 = load i32, ptr %arrayidx39, align 4
  %not40 = xor i32 %75, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %73, i32 noundef 0, i32 noundef %not40)
  %76 = load i8, ptr %x31, align 1
  %77 = load ptr, ptr %arg2.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %77, i64 8
  %78 = load i32, ptr %arrayidx41, align 4
  %not42 = xor i32 %78, -1
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %76, i32 noundef 0, i32 noundef %not42)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %80, i64 0
  %81 = load i32, ptr %arrayidx43, align 4
  %82 = load i32, ptr %x16, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x34, i8 noundef zeroext %79, i32 noundef %81, i32 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %84, i64 1
  %85 = load i32, ptr %arrayidx44, align 4
  %86 = load i32, ptr %x18, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x35, i8 noundef zeroext %83, i32 noundef %85, i32 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %88, i64 2
  %89 = load i32, ptr %arrayidx45, align 4
  %90 = load i32, ptr %x20, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x36, i8 noundef zeroext %87, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg3.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %92, i64 3
  %93 = load i32, ptr %arrayidx46, align 4
  %94 = load i32, ptr %x22, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x37, i8 noundef zeroext %91, i32 noundef %93, i32 noundef %94)
  %95 = load i8, ptr %x3, align 1
  %96 = load ptr, ptr %arg3.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %96, i64 4
  %97 = load i32, ptr %arrayidx47, align 4
  %98 = load i32, ptr %x24, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x38, i8 noundef zeroext %95, i32 noundef %97, i32 noundef %98)
  %99 = load i8, ptr %x3, align 1
  %100 = load ptr, ptr %arg3.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %100, i64 5
  %101 = load i32, ptr %arrayidx48, align 4
  %102 = load i32, ptr %x26, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x39, i8 noundef zeroext %99, i32 noundef %101, i32 noundef %102)
  %103 = load i8, ptr %x3, align 1
  %104 = load ptr, ptr %arg3.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %104, i64 6
  %105 = load i32, ptr %arrayidx49, align 4
  %106 = load i32, ptr %x28, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x40, i8 noundef zeroext %103, i32 noundef %105, i32 noundef %106)
  %107 = load i8, ptr %x3, align 1
  %108 = load ptr, ptr %arg3.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %108, i64 7
  %109 = load i32, ptr %arrayidx50, align 4
  %110 = load i32, ptr %x30, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x41, i8 noundef zeroext %107, i32 noundef %109, i32 noundef %110)
  %111 = load i8, ptr %x3, align 1
  %112 = load ptr, ptr %arg3.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %112, i64 8
  %113 = load i32, ptr %arrayidx51, align 4
  %114 = load i32, ptr %x32, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x42, i8 noundef zeroext %111, i32 noundef %113, i32 noundef %114)
  %115 = load i8, ptr %x3, align 1
  %116 = load ptr, ptr %arg4.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %116, i64 0
  %117 = load i32, ptr %arrayidx52, align 4
  %118 = load ptr, ptr %arg5.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %118, i64 0
  %119 = load i32, ptr %arrayidx53, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x43, i8 noundef zeroext %115, i32 noundef %117, i32 noundef %119)
  %120 = load i8, ptr %x3, align 1
  %121 = load ptr, ptr %arg4.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %121, i64 1
  %122 = load i32, ptr %arrayidx54, align 4
  %123 = load ptr, ptr %arg5.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %123, i64 1
  %124 = load i32, ptr %arrayidx55, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x44, i8 noundef zeroext %120, i32 noundef %122, i32 noundef %124)
  %125 = load i8, ptr %x3, align 1
  %126 = load ptr, ptr %arg4.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %126, i64 2
  %127 = load i32, ptr %arrayidx56, align 4
  %128 = load ptr, ptr %arg5.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %128, i64 2
  %129 = load i32, ptr %arrayidx57, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x45, i8 noundef zeroext %125, i32 noundef %127, i32 noundef %129)
  %130 = load i8, ptr %x3, align 1
  %131 = load ptr, ptr %arg4.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %131, i64 3
  %132 = load i32, ptr %arrayidx58, align 4
  %133 = load ptr, ptr %arg5.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %133, i64 3
  %134 = load i32, ptr %arrayidx59, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x46, i8 noundef zeroext %130, i32 noundef %132, i32 noundef %134)
  %135 = load i8, ptr %x3, align 1
  %136 = load ptr, ptr %arg4.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %136, i64 4
  %137 = load i32, ptr %arrayidx60, align 4
  %138 = load ptr, ptr %arg5.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %138, i64 4
  %139 = load i32, ptr %arrayidx61, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x47, i8 noundef zeroext %135, i32 noundef %137, i32 noundef %139)
  %140 = load i8, ptr %x3, align 1
  %141 = load ptr, ptr %arg4.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %141, i64 5
  %142 = load i32, ptr %arrayidx62, align 4
  %143 = load ptr, ptr %arg5.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %143, i64 5
  %144 = load i32, ptr %arrayidx63, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x48, i8 noundef zeroext %140, i32 noundef %142, i32 noundef %144)
  %145 = load i8, ptr %x3, align 1
  %146 = load ptr, ptr %arg4.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %146, i64 6
  %147 = load i32, ptr %arrayidx64, align 4
  %148 = load ptr, ptr %arg5.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %148, i64 6
  %149 = load i32, ptr %arrayidx65, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x49, i8 noundef zeroext %145, i32 noundef %147, i32 noundef %149)
  %150 = load i8, ptr %x3, align 1
  %151 = load ptr, ptr %arg4.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %151, i64 7
  %152 = load i32, ptr %arrayidx66, align 4
  %153 = load ptr, ptr %arg5.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %153, i64 7
  %154 = load i32, ptr %arrayidx67, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x50, i8 noundef zeroext %150, i32 noundef %152, i32 noundef %154)
  %155 = load i32, ptr %x43, align 4
  %156 = load i32, ptr %x43, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i32 noundef %155, i32 noundef %156)
  %157 = load i8, ptr %x52, align 1
  %158 = load i32, ptr %x44, align 4
  %159 = load i32, ptr %x44, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %157, i32 noundef %158, i32 noundef %159)
  %160 = load i8, ptr %x54, align 1
  %161 = load i32, ptr %x45, align 4
  %162 = load i32, ptr %x45, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %160, i32 noundef %161, i32 noundef %162)
  %163 = load i8, ptr %x56, align 1
  %164 = load i32, ptr %x46, align 4
  %165 = load i32, ptr %x46, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %163, i32 noundef %164, i32 noundef %165)
  %166 = load i8, ptr %x58, align 1
  %167 = load i32, ptr %x47, align 4
  %168 = load i32, ptr %x47, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %166, i32 noundef %167, i32 noundef %168)
  %169 = load i8, ptr %x60, align 1
  %170 = load i32, ptr %x48, align 4
  %171 = load i32, ptr %x48, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %169, i32 noundef %170, i32 noundef %171)
  %172 = load i8, ptr %x62, align 1
  %173 = load i32, ptr %x49, align 4
  %174 = load i32, ptr %x49, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %172, i32 noundef %173, i32 noundef %174)
  %175 = load i8, ptr %x64, align 1
  %176 = load i32, ptr %x50, align 4
  %177 = load i32, ptr %x50, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %175, i32 noundef %176, i32 noundef %177)
  %178 = load i32, ptr %x51, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext 0, i32 noundef %178, i32 noundef 970277155)
  %179 = load i8, ptr %x68, align 1
  %180 = load i32, ptr %x53, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext %179, i32 noundef %180, i32 noundef 1404826633)
  %181 = load i8, ptr %x70, align 1
  %182 = load i32, ptr %x55, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %181, i32 noundef %182, i32 noundef 566625579)
  %183 = load i8, ptr %x72, align 1
  %184 = load i32, ptr %x57, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %183, i32 noundef %184, i32 noundef 1912856427)
  %185 = load i8, ptr %x74, align 1
  %186 = load i32, ptr %x59, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %185, i32 noundef %186, i32 noundef -1)
  %187 = load i8, ptr %x76, align 1
  %188 = load i32, ptr %x61, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %187, i32 noundef %188, i32 noundef -1)
  %189 = load i8, ptr %x78, align 1
  %190 = load i32, ptr %x63, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %189, i32 noundef %190, i32 noundef -1)
  %191 = load i8, ptr %x80, align 1
  %192 = load i32, ptr %x65, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %191, i32 noundef %192, i32 noundef -2)
  %193 = load i8, ptr %x82, align 1
  %194 = load i8, ptr %x66, align 1
  %conv68 = zext i8 %194 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %193, i32 noundef %conv68, i32 noundef 0)
  %195 = load ptr, ptr %arg4.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %195, i64 7
  %196 = load i32, ptr %arrayidx69, align 4
  store i32 %196, ptr %x85, align 4
  %197 = load ptr, ptr %arg4.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %197, i64 6
  %198 = load i32, ptr %arrayidx70, align 4
  store i32 %198, ptr %x86, align 4
  %199 = load ptr, ptr %arg4.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %199, i64 5
  %200 = load i32, ptr %arrayidx71, align 4
  store i32 %200, ptr %x87, align 4
  %201 = load ptr, ptr %arg4.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %201, i64 4
  %202 = load i32, ptr %arrayidx72, align 4
  store i32 %202, ptr %x88, align 4
  %203 = load ptr, ptr %arg4.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %203, i64 3
  %204 = load i32, ptr %arrayidx73, align 4
  store i32 %204, ptr %x89, align 4
  %205 = load ptr, ptr %arg4.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %205, i64 2
  %206 = load i32, ptr %arrayidx74, align 4
  store i32 %206, ptr %x90, align 4
  %207 = load ptr, ptr %arg4.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %207, i64 1
  %208 = load i32, ptr %arrayidx75, align 4
  store i32 %208, ptr %x91, align 4
  %209 = load ptr, ptr %arg4.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %209, i64 0
  %210 = load i32, ptr %arrayidx76, align 4
  store i32 %210, ptr %x92, align 4
  %211 = load i32, ptr %x92, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %211)
  %212 = load i8, ptr %x94, align 1
  %213 = load i32, ptr %x91, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %212, i32 noundef 0, i32 noundef %213)
  %214 = load i8, ptr %x96, align 1
  %215 = load i32, ptr %x90, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %214, i32 noundef 0, i32 noundef %215)
  %216 = load i8, ptr %x98, align 1
  %217 = load i32, ptr %x89, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x99, ptr noundef %x100, i8 noundef zeroext %216, i32 noundef 0, i32 noundef %217)
  %218 = load i8, ptr %x100, align 1
  %219 = load i32, ptr %x88, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x101, ptr noundef %x102, i8 noundef zeroext %218, i32 noundef 0, i32 noundef %219)
  %220 = load i8, ptr %x102, align 1
  %221 = load i32, ptr %x87, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext %220, i32 noundef 0, i32 noundef %221)
  %222 = load i8, ptr %x104, align 1
  %223 = load i32, ptr %x86, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %222, i32 noundef 0, i32 noundef %223)
  %224 = load i8, ptr %x106, align 1
  %225 = load i32, ptr %x85, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %224, i32 noundef 0, i32 noundef %225)
  %226 = load i8, ptr %x108, align 1
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x109, i8 noundef zeroext %226, i32 noundef 0, i32 noundef -1)
  %227 = load i32, ptr %x93, align 4
  %228 = load i32, ptr %x109, align 4
  %and77 = and i32 %228, 970277155
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext 0, i32 noundef %227, i32 noundef %and77)
  %229 = load i8, ptr %x111, align 1
  %230 = load i32, ptr %x95, align 4
  %231 = load i32, ptr %x109, align 4
  %and78 = and i32 %231, 1404826633
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext %229, i32 noundef %230, i32 noundef %and78)
  %232 = load i8, ptr %x113, align 1
  %233 = load i32, ptr %x97, align 4
  %234 = load i32, ptr %x109, align 4
  %and79 = and i32 %234, 566625579
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %232, i32 noundef %233, i32 noundef %and79)
  %235 = load i8, ptr %x115, align 1
  %236 = load i32, ptr %x99, align 4
  %237 = load i32, ptr %x109, align 4
  %and80 = and i32 %237, 1912856427
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %235, i32 noundef %236, i32 noundef %and80)
  %238 = load i8, ptr %x117, align 1
  %239 = load i32, ptr %x101, align 4
  %240 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %238, i32 noundef %239, i32 noundef %240)
  %241 = load i8, ptr %x119, align 1
  %242 = load i32, ptr %x103, align 4
  %243 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %241, i32 noundef %242, i32 noundef %243)
  %244 = load i8, ptr %x121, align 1
  %245 = load i32, ptr %x105, align 4
  %246 = load i32, ptr %x109, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %244, i32 noundef %245, i32 noundef %246)
  %247 = load i8, ptr %x123, align 1
  %248 = load i32, ptr %x107, align 4
  %249 = load i32, ptr %x109, align 4
  %and81 = and i32 %249, -2
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %247, i32 noundef %248, i32 noundef %and81)
  %250 = load i8, ptr %x3, align 1
  %251 = load ptr, ptr %arg5.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %251, i64 0
  %252 = load i32, ptr %arrayidx82, align 4
  %253 = load i32, ptr %x110, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x126, i8 noundef zeroext %250, i32 noundef %252, i32 noundef %253)
  %254 = load i8, ptr %x3, align 1
  %255 = load ptr, ptr %arg5.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %255, i64 1
  %256 = load i32, ptr %arrayidx83, align 4
  %257 = load i32, ptr %x112, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x127, i8 noundef zeroext %254, i32 noundef %256, i32 noundef %257)
  %258 = load i8, ptr %x3, align 1
  %259 = load ptr, ptr %arg5.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %259, i64 2
  %260 = load i32, ptr %arrayidx84, align 4
  %261 = load i32, ptr %x114, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x128, i8 noundef zeroext %258, i32 noundef %260, i32 noundef %261)
  %262 = load i8, ptr %x3, align 1
  %263 = load ptr, ptr %arg5.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %263, i64 3
  %264 = load i32, ptr %arrayidx85, align 4
  %265 = load i32, ptr %x116, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x129, i8 noundef zeroext %262, i32 noundef %264, i32 noundef %265)
  %266 = load i8, ptr %x3, align 1
  %267 = load ptr, ptr %arg5.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %267, i64 4
  %268 = load i32, ptr %arrayidx86, align 4
  %269 = load i32, ptr %x118, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x130, i8 noundef zeroext %266, i32 noundef %268, i32 noundef %269)
  %270 = load i8, ptr %x3, align 1
  %271 = load ptr, ptr %arg5.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, ptr %271, i64 5
  %272 = load i32, ptr %arrayidx87, align 4
  %273 = load i32, ptr %x120, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x131, i8 noundef zeroext %270, i32 noundef %272, i32 noundef %273)
  %274 = load i8, ptr %x3, align 1
  %275 = load ptr, ptr %arg5.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %275, i64 6
  %276 = load i32, ptr %arrayidx88, align 4
  %277 = load i32, ptr %x122, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x132, i8 noundef zeroext %274, i32 noundef %276, i32 noundef %277)
  %278 = load i8, ptr %x3, align 1
  %279 = load ptr, ptr %arg5.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %279, i64 7
  %280 = load i32, ptr %arrayidx89, align 4
  %281 = load i32, ptr %x124, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x133, i8 noundef zeroext %278, i32 noundef %280, i32 noundef %281)
  %282 = load i32, ptr %x34, align 4
  %and90 = and i32 %282, 1
  %conv91 = trunc i32 %and90 to i8
  store i8 %conv91, ptr %x134, align 1
  %283 = load i8, ptr %x134, align 1
  %284 = load i32, ptr %x7, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x135, i8 noundef zeroext %283, i32 noundef 0, i32 noundef %284)
  %285 = load i8, ptr %x134, align 1
  %286 = load i32, ptr %x8, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x136, i8 noundef zeroext %285, i32 noundef 0, i32 noundef %286)
  %287 = load i8, ptr %x134, align 1
  %288 = load i32, ptr %x9, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x137, i8 noundef zeroext %287, i32 noundef 0, i32 noundef %288)
  %289 = load i8, ptr %x134, align 1
  %290 = load i32, ptr %x10, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x138, i8 noundef zeroext %289, i32 noundef 0, i32 noundef %290)
  %291 = load i8, ptr %x134, align 1
  %292 = load i32, ptr %x11, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x139, i8 noundef zeroext %291, i32 noundef 0, i32 noundef %292)
  %293 = load i8, ptr %x134, align 1
  %294 = load i32, ptr %x12, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x140, i8 noundef zeroext %293, i32 noundef 0, i32 noundef %294)
  %295 = load i8, ptr %x134, align 1
  %296 = load i32, ptr %x13, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x141, i8 noundef zeroext %295, i32 noundef 0, i32 noundef %296)
  %297 = load i8, ptr %x134, align 1
  %298 = load i32, ptr %x14, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x142, i8 noundef zeroext %297, i32 noundef 0, i32 noundef %298)
  %299 = load i8, ptr %x134, align 1
  %300 = load i32, ptr %x15, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x143, i8 noundef zeroext %299, i32 noundef 0, i32 noundef %300)
  %301 = load i32, ptr %x34, align 4
  %302 = load i32, ptr %x135, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext 0, i32 noundef %301, i32 noundef %302)
  %303 = load i8, ptr %x145, align 1
  %304 = load i32, ptr %x35, align 4
  %305 = load i32, ptr %x136, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %303, i32 noundef %304, i32 noundef %305)
  %306 = load i8, ptr %x147, align 1
  %307 = load i32, ptr %x36, align 4
  %308 = load i32, ptr %x137, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %306, i32 noundef %307, i32 noundef %308)
  %309 = load i8, ptr %x149, align 1
  %310 = load i32, ptr %x37, align 4
  %311 = load i32, ptr %x138, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %309, i32 noundef %310, i32 noundef %311)
  %312 = load i8, ptr %x151, align 1
  %313 = load i32, ptr %x38, align 4
  %314 = load i32, ptr %x139, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %312, i32 noundef %313, i32 noundef %314)
  %315 = load i8, ptr %x153, align 1
  %316 = load i32, ptr %x39, align 4
  %317 = load i32, ptr %x140, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %315, i32 noundef %316, i32 noundef %317)
  %318 = load i8, ptr %x155, align 1
  %319 = load i32, ptr %x40, align 4
  %320 = load i32, ptr %x141, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %318, i32 noundef %319, i32 noundef %320)
  %321 = load i8, ptr %x157, align 1
  %322 = load i32, ptr %x41, align 4
  %323 = load i32, ptr %x142, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %321, i32 noundef %322, i32 noundef %323)
  %324 = load i8, ptr %x159, align 1
  %325 = load i32, ptr %x42, align 4
  %326 = load i32, ptr %x143, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %324, i32 noundef %325, i32 noundef %326)
  %327 = load i8, ptr %x134, align 1
  %328 = load i32, ptr %x43, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x162, i8 noundef zeroext %327, i32 noundef 0, i32 noundef %328)
  %329 = load i8, ptr %x134, align 1
  %330 = load i32, ptr %x44, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x163, i8 noundef zeroext %329, i32 noundef 0, i32 noundef %330)
  %331 = load i8, ptr %x134, align 1
  %332 = load i32, ptr %x45, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x164, i8 noundef zeroext %331, i32 noundef 0, i32 noundef %332)
  %333 = load i8, ptr %x134, align 1
  %334 = load i32, ptr %x46, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x165, i8 noundef zeroext %333, i32 noundef 0, i32 noundef %334)
  %335 = load i8, ptr %x134, align 1
  %336 = load i32, ptr %x47, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x166, i8 noundef zeroext %335, i32 noundef 0, i32 noundef %336)
  %337 = load i8, ptr %x134, align 1
  %338 = load i32, ptr %x48, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x167, i8 noundef zeroext %337, i32 noundef 0, i32 noundef %338)
  %339 = load i8, ptr %x134, align 1
  %340 = load i32, ptr %x49, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x168, i8 noundef zeroext %339, i32 noundef 0, i32 noundef %340)
  %341 = load i8, ptr %x134, align 1
  %342 = load i32, ptr %x50, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x169, i8 noundef zeroext %341, i32 noundef 0, i32 noundef %342)
  %343 = load i32, ptr %x126, align 4
  %344 = load i32, ptr %x162, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x170, ptr noundef %x171, i8 noundef zeroext 0, i32 noundef %343, i32 noundef %344)
  %345 = load i8, ptr %x171, align 1
  %346 = load i32, ptr %x127, align 4
  %347 = load i32, ptr %x163, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x172, ptr noundef %x173, i8 noundef zeroext %345, i32 noundef %346, i32 noundef %347)
  %348 = load i8, ptr %x173, align 1
  %349 = load i32, ptr %x128, align 4
  %350 = load i32, ptr %x164, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x174, ptr noundef %x175, i8 noundef zeroext %348, i32 noundef %349, i32 noundef %350)
  %351 = load i8, ptr %x175, align 1
  %352 = load i32, ptr %x129, align 4
  %353 = load i32, ptr %x165, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x176, ptr noundef %x177, i8 noundef zeroext %351, i32 noundef %352, i32 noundef %353)
  %354 = load i8, ptr %x177, align 1
  %355 = load i32, ptr %x130, align 4
  %356 = load i32, ptr %x166, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x178, ptr noundef %x179, i8 noundef zeroext %354, i32 noundef %355, i32 noundef %356)
  %357 = load i8, ptr %x179, align 1
  %358 = load i32, ptr %x131, align 4
  %359 = load i32, ptr %x167, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x180, ptr noundef %x181, i8 noundef zeroext %357, i32 noundef %358, i32 noundef %359)
  %360 = load i8, ptr %x181, align 1
  %361 = load i32, ptr %x132, align 4
  %362 = load i32, ptr %x168, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext %360, i32 noundef %361, i32 noundef %362)
  %363 = load i8, ptr %x183, align 1
  %364 = load i32, ptr %x133, align 4
  %365 = load i32, ptr %x169, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %363, i32 noundef %364, i32 noundef %365)
  %366 = load i32, ptr %x170, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext 0, i32 noundef %366, i32 noundef 970277155)
  %367 = load i8, ptr %x187, align 1
  %368 = load i32, ptr %x172, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %367, i32 noundef %368, i32 noundef 1404826633)
  %369 = load i8, ptr %x189, align 1
  %370 = load i32, ptr %x174, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %369, i32 noundef %370, i32 noundef 566625579)
  %371 = load i8, ptr %x191, align 1
  %372 = load i32, ptr %x176, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x192, ptr noundef %x193, i8 noundef zeroext %371, i32 noundef %372, i32 noundef 1912856427)
  %373 = load i8, ptr %x193, align 1
  %374 = load i32, ptr %x178, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x194, ptr noundef %x195, i8 noundef zeroext %373, i32 noundef %374, i32 noundef -1)
  %375 = load i8, ptr %x195, align 1
  %376 = load i32, ptr %x180, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x196, ptr noundef %x197, i8 noundef zeroext %375, i32 noundef %376, i32 noundef -1)
  %377 = load i8, ptr %x197, align 1
  %378 = load i32, ptr %x182, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x198, ptr noundef %x199, i8 noundef zeroext %377, i32 noundef %378, i32 noundef -1)
  %379 = load i8, ptr %x199, align 1
  %380 = load i32, ptr %x184, align 4
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x200, ptr noundef %x201, i8 noundef zeroext %379, i32 noundef %380, i32 noundef -2)
  %381 = load i8, ptr %x201, align 1
  %382 = load i8, ptr %x185, align 1
  %conv92 = zext i8 %382 to i32
  call void @fiat_sm2_scalar_subborrowx_u32(ptr noundef %x202, ptr noundef %x203, i8 noundef zeroext %381, i32 noundef %conv92, i32 noundef 0)
  %383 = load i32, ptr %x6, align 4
  call void @fiat_sm2_scalar_addcarryx_u32(ptr noundef %x204, ptr noundef %x205, i8 noundef zeroext 0, i32 noundef %383, i32 noundef 1)
  %384 = load i32, ptr %x144, align 4
  %shr93 = lshr i32 %384, 1
  %385 = load i32, ptr %x146, align 4
  %shl = shl i32 %385, 31
  %and94 = and i32 %shl, -1
  %or = or i32 %shr93, %and94
  store i32 %or, ptr %x206, align 4
  %386 = load i32, ptr %x146, align 4
  %shr95 = lshr i32 %386, 1
  %387 = load i32, ptr %x148, align 4
  %shl96 = shl i32 %387, 31
  %and97 = and i32 %shl96, -1
  %or98 = or i32 %shr95, %and97
  store i32 %or98, ptr %x207, align 4
  %388 = load i32, ptr %x148, align 4
  %shr99 = lshr i32 %388, 1
  %389 = load i32, ptr %x150, align 4
  %shl100 = shl i32 %389, 31
  %and101 = and i32 %shl100, -1
  %or102 = or i32 %shr99, %and101
  store i32 %or102, ptr %x208, align 4
  %390 = load i32, ptr %x150, align 4
  %shr103 = lshr i32 %390, 1
  %391 = load i32, ptr %x152, align 4
  %shl104 = shl i32 %391, 31
  %and105 = and i32 %shl104, -1
  %or106 = or i32 %shr103, %and105
  store i32 %or106, ptr %x209, align 4
  %392 = load i32, ptr %x152, align 4
  %shr107 = lshr i32 %392, 1
  %393 = load i32, ptr %x154, align 4
  %shl108 = shl i32 %393, 31
  %and109 = and i32 %shl108, -1
  %or110 = or i32 %shr107, %and109
  store i32 %or110, ptr %x210, align 4
  %394 = load i32, ptr %x154, align 4
  %shr111 = lshr i32 %394, 1
  %395 = load i32, ptr %x156, align 4
  %shl112 = shl i32 %395, 31
  %and113 = and i32 %shl112, -1
  %or114 = or i32 %shr111, %and113
  store i32 %or114, ptr %x211, align 4
  %396 = load i32, ptr %x156, align 4
  %shr115 = lshr i32 %396, 1
  %397 = load i32, ptr %x158, align 4
  %shl116 = shl i32 %397, 31
  %and117 = and i32 %shl116, -1
  %or118 = or i32 %shr115, %and117
  store i32 %or118, ptr %x212, align 4
  %398 = load i32, ptr %x158, align 4
  %shr119 = lshr i32 %398, 1
  %399 = load i32, ptr %x160, align 4
  %shl120 = shl i32 %399, 31
  %and121 = and i32 %shl120, -1
  %or122 = or i32 %shr119, %and121
  store i32 %or122, ptr %x213, align 4
  %400 = load i32, ptr %x160, align 4
  %and123 = and i32 %400, -2147483648
  %401 = load i32, ptr %x160, align 4
  %shr124 = lshr i32 %401, 1
  %or125 = or i32 %and123, %shr124
  store i32 %or125, ptr %x214, align 4
  %402 = load i8, ptr %x84, align 1
  %403 = load i32, ptr %x67, align 4
  %404 = load i32, ptr %x51, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x215, i8 noundef zeroext %402, i32 noundef %403, i32 noundef %404)
  %405 = load i8, ptr %x84, align 1
  %406 = load i32, ptr %x69, align 4
  %407 = load i32, ptr %x53, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x216, i8 noundef zeroext %405, i32 noundef %406, i32 noundef %407)
  %408 = load i8, ptr %x84, align 1
  %409 = load i32, ptr %x71, align 4
  %410 = load i32, ptr %x55, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x217, i8 noundef zeroext %408, i32 noundef %409, i32 noundef %410)
  %411 = load i8, ptr %x84, align 1
  %412 = load i32, ptr %x73, align 4
  %413 = load i32, ptr %x57, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x218, i8 noundef zeroext %411, i32 noundef %412, i32 noundef %413)
  %414 = load i8, ptr %x84, align 1
  %415 = load i32, ptr %x75, align 4
  %416 = load i32, ptr %x59, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x219, i8 noundef zeroext %414, i32 noundef %415, i32 noundef %416)
  %417 = load i8, ptr %x84, align 1
  %418 = load i32, ptr %x77, align 4
  %419 = load i32, ptr %x61, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x220, i8 noundef zeroext %417, i32 noundef %418, i32 noundef %419)
  %420 = load i8, ptr %x84, align 1
  %421 = load i32, ptr %x79, align 4
  %422 = load i32, ptr %x63, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x221, i8 noundef zeroext %420, i32 noundef %421, i32 noundef %422)
  %423 = load i8, ptr %x84, align 1
  %424 = load i32, ptr %x81, align 4
  %425 = load i32, ptr %x65, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x222, i8 noundef zeroext %423, i32 noundef %424, i32 noundef %425)
  %426 = load i8, ptr %x203, align 1
  %427 = load i32, ptr %x186, align 4
  %428 = load i32, ptr %x170, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x223, i8 noundef zeroext %426, i32 noundef %427, i32 noundef %428)
  %429 = load i8, ptr %x203, align 1
  %430 = load i32, ptr %x188, align 4
  %431 = load i32, ptr %x172, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x224, i8 noundef zeroext %429, i32 noundef %430, i32 noundef %431)
  %432 = load i8, ptr %x203, align 1
  %433 = load i32, ptr %x190, align 4
  %434 = load i32, ptr %x174, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x225, i8 noundef zeroext %432, i32 noundef %433, i32 noundef %434)
  %435 = load i8, ptr %x203, align 1
  %436 = load i32, ptr %x192, align 4
  %437 = load i32, ptr %x176, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x226, i8 noundef zeroext %435, i32 noundef %436, i32 noundef %437)
  %438 = load i8, ptr %x203, align 1
  %439 = load i32, ptr %x194, align 4
  %440 = load i32, ptr %x178, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x227, i8 noundef zeroext %438, i32 noundef %439, i32 noundef %440)
  %441 = load i8, ptr %x203, align 1
  %442 = load i32, ptr %x196, align 4
  %443 = load i32, ptr %x180, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x228, i8 noundef zeroext %441, i32 noundef %442, i32 noundef %443)
  %444 = load i8, ptr %x203, align 1
  %445 = load i32, ptr %x198, align 4
  %446 = load i32, ptr %x182, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x229, i8 noundef zeroext %444, i32 noundef %445, i32 noundef %446)
  %447 = load i8, ptr %x203, align 1
  %448 = load i32, ptr %x200, align 4
  %449 = load i32, ptr %x184, align 4
  call void @fiat_sm2_scalar_cmovznz_u32(ptr noundef %x230, i8 noundef zeroext %447, i32 noundef %448, i32 noundef %449)
  %450 = load i32, ptr %x204, align 4
  %451 = load ptr, ptr %out1.addr, align 8
  store i32 %450, ptr %451, align 4
  %452 = load i32, ptr %x7, align 4
  %453 = load ptr, ptr %out2.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %453, i64 0
  store i32 %452, ptr %arrayidx126, align 4
  %454 = load i32, ptr %x8, align 4
  %455 = load ptr, ptr %out2.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, ptr %455, i64 1
  store i32 %454, ptr %arrayidx127, align 4
  %456 = load i32, ptr %x9, align 4
  %457 = load ptr, ptr %out2.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %457, i64 2
  store i32 %456, ptr %arrayidx128, align 4
  %458 = load i32, ptr %x10, align 4
  %459 = load ptr, ptr %out2.addr, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %459, i64 3
  store i32 %458, ptr %arrayidx129, align 4
  %460 = load i32, ptr %x11, align 4
  %461 = load ptr, ptr %out2.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %461, i64 4
  store i32 %460, ptr %arrayidx130, align 4
  %462 = load i32, ptr %x12, align 4
  %463 = load ptr, ptr %out2.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, ptr %463, i64 5
  store i32 %462, ptr %arrayidx131, align 4
  %464 = load i32, ptr %x13, align 4
  %465 = load ptr, ptr %out2.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %465, i64 6
  store i32 %464, ptr %arrayidx132, align 4
  %466 = load i32, ptr %x14, align 4
  %467 = load ptr, ptr %out2.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, ptr %467, i64 7
  store i32 %466, ptr %arrayidx133, align 4
  %468 = load i32, ptr %x15, align 4
  %469 = load ptr, ptr %out2.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %469, i64 8
  store i32 %468, ptr %arrayidx134, align 4
  %470 = load i32, ptr %x206, align 4
  %471 = load ptr, ptr %out3.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, ptr %471, i64 0
  store i32 %470, ptr %arrayidx135, align 4
  %472 = load i32, ptr %x207, align 4
  %473 = load ptr, ptr %out3.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %473, i64 1
  store i32 %472, ptr %arrayidx136, align 4
  %474 = load i32, ptr %x208, align 4
  %475 = load ptr, ptr %out3.addr, align 8
  %arrayidx137 = getelementptr inbounds i32, ptr %475, i64 2
  store i32 %474, ptr %arrayidx137, align 4
  %476 = load i32, ptr %x209, align 4
  %477 = load ptr, ptr %out3.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %477, i64 3
  store i32 %476, ptr %arrayidx138, align 4
  %478 = load i32, ptr %x210, align 4
  %479 = load ptr, ptr %out3.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %479, i64 4
  store i32 %478, ptr %arrayidx139, align 4
  %480 = load i32, ptr %x211, align 4
  %481 = load ptr, ptr %out3.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %481, i64 5
  store i32 %480, ptr %arrayidx140, align 4
  %482 = load i32, ptr %x212, align 4
  %483 = load ptr, ptr %out3.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %483, i64 6
  store i32 %482, ptr %arrayidx141, align 4
  %484 = load i32, ptr %x213, align 4
  %485 = load ptr, ptr %out3.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %485, i64 7
  store i32 %484, ptr %arrayidx142, align 4
  %486 = load i32, ptr %x214, align 4
  %487 = load ptr, ptr %out3.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %487, i64 8
  store i32 %486, ptr %arrayidx143, align 4
  %488 = load i32, ptr %x215, align 4
  %489 = load ptr, ptr %out4.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %489, i64 0
  store i32 %488, ptr %arrayidx144, align 4
  %490 = load i32, ptr %x216, align 4
  %491 = load ptr, ptr %out4.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %491, i64 1
  store i32 %490, ptr %arrayidx145, align 4
  %492 = load i32, ptr %x217, align 4
  %493 = load ptr, ptr %out4.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %493, i64 2
  store i32 %492, ptr %arrayidx146, align 4
  %494 = load i32, ptr %x218, align 4
  %495 = load ptr, ptr %out4.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, ptr %495, i64 3
  store i32 %494, ptr %arrayidx147, align 4
  %496 = load i32, ptr %x219, align 4
  %497 = load ptr, ptr %out4.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %497, i64 4
  store i32 %496, ptr %arrayidx148, align 4
  %498 = load i32, ptr %x220, align 4
  %499 = load ptr, ptr %out4.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %499, i64 5
  store i32 %498, ptr %arrayidx149, align 4
  %500 = load i32, ptr %x221, align 4
  %501 = load ptr, ptr %out4.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %501, i64 6
  store i32 %500, ptr %arrayidx150, align 4
  %502 = load i32, ptr %x222, align 4
  %503 = load ptr, ptr %out4.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %503, i64 7
  store i32 %502, ptr %arrayidx151, align 4
  %504 = load i32, ptr %x223, align 4
  %505 = load ptr, ptr %out5.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %505, i64 0
  store i32 %504, ptr %arrayidx152, align 4
  %506 = load i32, ptr %x224, align 4
  %507 = load ptr, ptr %out5.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %507, i64 1
  store i32 %506, ptr %arrayidx153, align 4
  %508 = load i32, ptr %x225, align 4
  %509 = load ptr, ptr %out5.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %509, i64 2
  store i32 %508, ptr %arrayidx154, align 4
  %510 = load i32, ptr %x226, align 4
  %511 = load ptr, ptr %out5.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, ptr %511, i64 3
  store i32 %510, ptr %arrayidx155, align 4
  %512 = load i32, ptr %x227, align 4
  %513 = load ptr, ptr %out5.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, ptr %513, i64 4
  store i32 %512, ptr %arrayidx156, align 4
  %514 = load i32, ptr %x228, align 4
  %515 = load ptr, ptr %out5.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %515, i64 5
  store i32 %514, ptr %arrayidx157, align 4
  %516 = load i32, ptr %x229, align 4
  %517 = load ptr, ptr %out5.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %517, i64 6
  store i32 %516, ptr %arrayidx158, align 4
  %518 = load i32, ptr %x230, align 4
  %519 = load ptr, ptr %out5.addr, align 8
  %arrayidx159 = getelementptr inbounds i32, ptr %519, i64 7
  store i32 %518, ptr %arrayidx159, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_sm2_scalar_divstep_precomp(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  store i32 -1286507155, ptr %arrayidx, align 4
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 446899975, ptr %arrayidx1, align 4
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 506094330, ptr %arrayidx2, align 4
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 11263335, ptr %arrayidx3, align 4
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 4
  store i32 -738157951, ptr %arrayidx4, align 4
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 5
  store i32 1227361661, ptr %arrayidx5, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 -423917848, ptr %arrayidx6, align 4
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %7, i64 7
  store i32 -684706962, ptr %arrayidx7, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
!6 = !{i64 3367}
