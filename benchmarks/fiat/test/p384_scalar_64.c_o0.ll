; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_p384_scalar_value_barrier_u64(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %1 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #1, !srcloc !6
  store i64 %1, ptr %a.addr, align 8
  %2 = load i64, ptr %a.addr, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_addcarryx_u64(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i64, align 8
  %x3 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %0 to i128
  %1 = load i64, ptr %arg2.addr, align 8
  %conv1 = zext i64 %1 to i128
  %add = add i128 %conv, %conv1
  %2 = load i64, ptr %arg3.addr, align 8
  %conv2 = zext i64 %2 to i128
  %add3 = add i128 %add, %conv2
  store i128 %add3, ptr %x1, align 16
  %3 = load i128, ptr %x1, align 16
  %and = and i128 %3, 18446744073709551615
  %conv4 = trunc i128 %and to i64
  store i64 %conv4, ptr %x2, align 8
  %4 = load i128, ptr %x1, align 16
  %shr = lshr i128 %4, 64
  %conv5 = trunc i128 %shr to i8
  store i8 %conv5, ptr %x3, align 1
  %5 = load i64, ptr %x2, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  store i64 %5, ptr %6, align 8
  %7 = load i8, ptr %x3, align 1
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %7, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_subborrowx_u64(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
  %0 = load i64, ptr %arg2.addr, align 8
  %conv = zext i64 %0 to i128
  %1 = load i8, ptr %arg1.addr, align 1
  %conv1 = zext i8 %1 to i128
  %sub = sub nsw i128 %conv, %conv1
  %2 = load i64, ptr %arg3.addr, align 8
  %conv2 = zext i64 %2 to i128
  %sub3 = sub nsw i128 %sub, %conv2
  store i128 %sub3, ptr %x1, align 16
  %3 = load i128, ptr %x1, align 16
  %shr = ashr i128 %3, 64
  %conv4 = trunc i128 %shr to i8
  store i8 %conv4, ptr %x2, align 1
  %4 = load i128, ptr %x1, align 16
  %and = and i128 %4, 18446744073709551615
  %conv5 = trunc i128 %and to i64
  store i64 %conv5, ptr %x3, align 8
  %5 = load i64, ptr %x3, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  store i64 %5, ptr %6, align 8
  %7 = load i8, ptr %x2, align 1
  %conv6 = sext i8 %7 to i32
  %sub7 = sub nsw i32 0, %conv6
  %conv8 = trunc i32 %sub7 to i8
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %conv8, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_mulx_u64(ptr noundef %out1, ptr noundef %out2, i64 noundef %arg1, i64 noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i64, align 8
  %arg2.addr = alloca i64, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i64 %arg1, ptr %arg1.addr, align 8
  store i64 %arg2, ptr %arg2.addr, align 8
  %0 = load i64, ptr %arg1.addr, align 8
  %conv = zext i64 %0 to i128
  %1 = load i64, ptr %arg2.addr, align 8
  %conv1 = zext i64 %1 to i128
  %mul = mul i128 %conv, %conv1
  store i128 %mul, ptr %x1, align 16
  %2 = load i128, ptr %x1, align 16
  %and = and i128 %2, 18446744073709551615
  %conv2 = trunc i128 %and to i64
  store i64 %conv2, ptr %x2, align 8
  %3 = load i128, ptr %x1, align 16
  %shr = lshr i128 %3, 64
  %conv3 = trunc i128 %shr to i64
  store i64 %conv3, ptr %x3, align 8
  %4 = load i64, ptr %x2, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  store i64 %4, ptr %5, align 8
  %6 = load i64, ptr %x3, align 8
  %7 = load ptr, ptr %out2.addr, align 8
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i8, align 1
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
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
  %conv4 = sext i8 %conv3 to i64
  %and = and i64 %conv4, -1
  store i64 %and, ptr %x2, align 8
  %2 = load i64, ptr %x2, align 8
  %call = call i64 @fiat_p384_scalar_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_p384_scalar_value_barrier_u64(i64 noundef %not)
  %5 = load i64, ptr %arg2.addr, align 8
  %and7 = and i64 %call6, %5
  %or = or i64 %and5, %and7
  store i64 %or, ptr %x3, align 8
  %6 = load i64, ptr %x3, align 8
  %7 = load ptr, ptr %out1.addr, align 8
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  store ptr %arg2, ptr %arg2.addr, align 8
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
  %13 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %13, i64 5
  %14 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %12, i64 noundef %14)
  %15 = load i64, ptr %x6, align 8
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %15, i64 noundef %17)
  %18 = load i64, ptr %x6, align 8
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %19, i64 3
  %20 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %18, i64 noundef %20)
  %21 = load i64, ptr %x6, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 2
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x13, ptr noundef %x14, i64 noundef %21, i64 noundef %23)
  %24 = load i64, ptr %x6, align 8
  %25 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 1
  %26 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x15, ptr noundef %x16, i64 noundef %24, i64 noundef %26)
  %27 = load i64, ptr %x6, align 8
  %28 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 0
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x17, ptr noundef %x18, i64 noundef %27, i64 noundef %29)
  %30 = load i64, ptr %x18, align 8
  %31 = load i64, ptr %x15, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext 0, i64 noundef %30, i64 noundef %31)
  %32 = load i8, ptr %x20, align 1
  %33 = load i64, ptr %x16, align 8
  %34 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x22, align 1
  %36 = load i64, ptr %x14, align 8
  %37 = load i64, ptr %x11, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i8, ptr %x24, align 1
  %39 = load i64, ptr %x12, align 8
  %40 = load i64, ptr %x9, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x26, align 1
  %42 = load i64, ptr %x10, align 8
  %43 = load i64, ptr %x7, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x28, align 1
  %conv = zext i8 %44 to i64
  %45 = load i64, ptr %x8, align 8
  %add = add i64 %conv, %45
  store i64 %add, ptr %x29, align 8
  %46 = load i64, ptr %x17, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x30, ptr noundef %x31, i64 noundef %46, i64 noundef 7986114184663260229)
  %47 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x32, ptr noundef %x33, i64 noundef %47, i64 noundef -1)
  %48 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x34, ptr noundef %x35, i64 noundef %48, i64 noundef -1)
  %49 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x36, ptr noundef %x37, i64 noundef %49, i64 noundef -1)
  %50 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x38, ptr noundef %x39, i64 noundef %50, i64 noundef -4079331616924160545)
  %51 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x40, ptr noundef %x41, i64 noundef %51, i64 noundef 6348401684107011962)
  %52 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %52, i64 noundef -1374695839762142861)
  %53 = load i64, ptr %x43, align 8
  %54 = load i64, ptr %x40, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext 0, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x45, align 1
  %56 = load i64, ptr %x41, align 8
  %57 = load i64, ptr %x38, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x47, align 1
  %59 = load i64, ptr %x39, align 8
  %60 = load i64, ptr %x36, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i8, ptr %x49, align 1
  %62 = load i64, ptr %x37, align 8
  %63 = load i64, ptr %x34, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %61, i64 noundef %62, i64 noundef %63)
  %64 = load i8, ptr %x51, align 1
  %65 = load i64, ptr %x35, align 8
  %66 = load i64, ptr %x32, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %64, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x53, align 1
  %conv12 = zext i8 %67 to i64
  %68 = load i64, ptr %x33, align 8
  %add13 = add i64 %conv12, %68
  store i64 %add13, ptr %x54, align 8
  %69 = load i64, ptr %x17, align 8
  %70 = load i64, ptr %x42, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext 0, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x56, align 1
  %72 = load i64, ptr %x19, align 8
  %73 = load i64, ptr %x44, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x58, align 1
  %75 = load i64, ptr %x21, align 8
  %76 = load i64, ptr %x46, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x60, align 1
  %78 = load i64, ptr %x23, align 8
  %79 = load i64, ptr %x48, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x62, align 1
  %81 = load i64, ptr %x25, align 8
  %82 = load i64, ptr %x50, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x64, align 1
  %84 = load i64, ptr %x27, align 8
  %85 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %83, i64 noundef %84, i64 noundef %85)
  %86 = load i8, ptr %x66, align 1
  %87 = load i64, ptr %x29, align 8
  %88 = load i64, ptr %x54, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %86, i64 noundef %87, i64 noundef %88)
  %89 = load i64, ptr %x1, align 8
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %90, i64 5
  %91 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef %89, i64 noundef %91)
  %92 = load i64, ptr %x1, align 8
  %93 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %93, i64 4
  %94 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef %92, i64 noundef %94)
  %95 = load i64, ptr %x1, align 8
  %96 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %96, i64 3
  %97 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x73, ptr noundef %x74, i64 noundef %95, i64 noundef %97)
  %98 = load i64, ptr %x1, align 8
  %99 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %99, i64 2
  %100 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x75, ptr noundef %x76, i64 noundef %98, i64 noundef %100)
  %101 = load i64, ptr %x1, align 8
  %102 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %102, i64 1
  %103 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x77, ptr noundef %x78, i64 noundef %101, i64 noundef %103)
  %104 = load i64, ptr %x1, align 8
  %105 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %105, i64 0
  %106 = load i64, ptr %arrayidx19, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x79, ptr noundef %x80, i64 noundef %104, i64 noundef %106)
  %107 = load i64, ptr %x80, align 8
  %108 = load i64, ptr %x77, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext 0, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x82, align 1
  %110 = load i64, ptr %x78, align 8
  %111 = load i64, ptr %x75, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i8, ptr %x84, align 1
  %113 = load i64, ptr %x76, align 8
  %114 = load i64, ptr %x73, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %112, i64 noundef %113, i64 noundef %114)
  %115 = load i8, ptr %x86, align 1
  %116 = load i64, ptr %x74, align 8
  %117 = load i64, ptr %x71, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %115, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x88, align 1
  %119 = load i64, ptr %x72, align 8
  %120 = load i64, ptr %x69, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x90, align 1
  %conv20 = zext i8 %121 to i64
  %122 = load i64, ptr %x70, align 8
  %add21 = add i64 %conv20, %122
  store i64 %add21, ptr %x91, align 8
  %123 = load i64, ptr %x57, align 8
  %124 = load i64, ptr %x79, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext 0, i64 noundef %123, i64 noundef %124)
  %125 = load i8, ptr %x93, align 1
  %126 = load i64, ptr %x59, align 8
  %127 = load i64, ptr %x81, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %127)
  %128 = load i8, ptr %x95, align 1
  %129 = load i64, ptr %x61, align 8
  %130 = load i64, ptr %x83, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %128, i64 noundef %129, i64 noundef %130)
  %131 = load i8, ptr %x97, align 1
  %132 = load i64, ptr %x63, align 8
  %133 = load i64, ptr %x85, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %131, i64 noundef %132, i64 noundef %133)
  %134 = load i8, ptr %x99, align 1
  %135 = load i64, ptr %x65, align 8
  %136 = load i64, ptr %x87, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %134, i64 noundef %135, i64 noundef %136)
  %137 = load i8, ptr %x101, align 1
  %138 = load i64, ptr %x67, align 8
  %139 = load i64, ptr %x89, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %137, i64 noundef %138, i64 noundef %139)
  %140 = load i8, ptr %x103, align 1
  %141 = load i8, ptr %x68, align 1
  %conv22 = zext i8 %141 to i64
  %142 = load i64, ptr %x91, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %140, i64 noundef %conv22, i64 noundef %142)
  %143 = load i64, ptr %x92, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x106, ptr noundef %x107, i64 noundef %143, i64 noundef 7986114184663260229)
  %144 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x108, ptr noundef %x109, i64 noundef %144, i64 noundef -1)
  %145 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x110, ptr noundef %x111, i64 noundef %145, i64 noundef -1)
  %146 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x112, ptr noundef %x113, i64 noundef %146, i64 noundef -1)
  %147 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x114, ptr noundef %x115, i64 noundef %147, i64 noundef -4079331616924160545)
  %148 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x116, ptr noundef %x117, i64 noundef %148, i64 noundef 6348401684107011962)
  %149 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x118, ptr noundef %x119, i64 noundef %149, i64 noundef -1374695839762142861)
  %150 = load i64, ptr %x119, align 8
  %151 = load i64, ptr %x116, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x121, align 1
  %153 = load i64, ptr %x117, align 8
  %154 = load i64, ptr %x114, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x123, align 1
  %156 = load i64, ptr %x115, align 8
  %157 = load i64, ptr %x112, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x125, align 1
  %159 = load i64, ptr %x113, align 8
  %160 = load i64, ptr %x110, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x127, align 1
  %162 = load i64, ptr %x111, align 8
  %163 = load i64, ptr %x108, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x129, align 1
  %conv23 = zext i8 %164 to i64
  %165 = load i64, ptr %x109, align 8
  %add24 = add i64 %conv23, %165
  store i64 %add24, ptr %x130, align 8
  %166 = load i64, ptr %x92, align 8
  %167 = load i64, ptr %x118, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x132, align 1
  %169 = load i64, ptr %x94, align 8
  %170 = load i64, ptr %x120, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x134, align 1
  %172 = load i64, ptr %x96, align 8
  %173 = load i64, ptr %x122, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x136, align 1
  %175 = load i64, ptr %x98, align 8
  %176 = load i64, ptr %x124, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %174, i64 noundef %175, i64 noundef %176)
  %177 = load i8, ptr %x138, align 1
  %178 = load i64, ptr %x100, align 8
  %179 = load i64, ptr %x126, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %177, i64 noundef %178, i64 noundef %179)
  %180 = load i8, ptr %x140, align 1
  %181 = load i64, ptr %x102, align 8
  %182 = load i64, ptr %x128, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %180, i64 noundef %181, i64 noundef %182)
  %183 = load i8, ptr %x142, align 1
  %184 = load i64, ptr %x104, align 8
  %185 = load i64, ptr %x130, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x144, align 1
  %conv25 = zext i8 %186 to i64
  %187 = load i8, ptr %x105, align 1
  %conv26 = zext i8 %187 to i64
  %add27 = add i64 %conv25, %conv26
  store i64 %add27, ptr %x145, align 8
  %188 = load i64, ptr %x2, align 8
  %189 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %189, i64 5
  %190 = load i64, ptr %arrayidx28, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x146, ptr noundef %x147, i64 noundef %188, i64 noundef %190)
  %191 = load i64, ptr %x2, align 8
  %192 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %192, i64 4
  %193 = load i64, ptr %arrayidx29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x148, ptr noundef %x149, i64 noundef %191, i64 noundef %193)
  %194 = load i64, ptr %x2, align 8
  %195 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %195, i64 3
  %196 = load i64, ptr %arrayidx30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x150, ptr noundef %x151, i64 noundef %194, i64 noundef %196)
  %197 = load i64, ptr %x2, align 8
  %198 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %198, i64 2
  %199 = load i64, ptr %arrayidx31, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x152, ptr noundef %x153, i64 noundef %197, i64 noundef %199)
  %200 = load i64, ptr %x2, align 8
  %201 = load ptr, ptr %arg2.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %201, i64 1
  %202 = load i64, ptr %arrayidx32, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x154, ptr noundef %x155, i64 noundef %200, i64 noundef %202)
  %203 = load i64, ptr %x2, align 8
  %204 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %204, i64 0
  %205 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x156, ptr noundef %x157, i64 noundef %203, i64 noundef %205)
  %206 = load i64, ptr %x157, align 8
  %207 = load i64, ptr %x154, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x159, align 1
  %209 = load i64, ptr %x155, align 8
  %210 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %208, i64 noundef %209, i64 noundef %210)
  %211 = load i8, ptr %x161, align 1
  %212 = load i64, ptr %x153, align 8
  %213 = load i64, ptr %x150, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %211, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x163, align 1
  %215 = load i64, ptr %x151, align 8
  %216 = load i64, ptr %x148, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %214, i64 noundef %215, i64 noundef %216)
  %217 = load i8, ptr %x165, align 1
  %218 = load i64, ptr %x149, align 8
  %219 = load i64, ptr %x146, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %217, i64 noundef %218, i64 noundef %219)
  %220 = load i8, ptr %x167, align 1
  %conv34 = zext i8 %220 to i64
  %221 = load i64, ptr %x147, align 8
  %add35 = add i64 %conv34, %221
  store i64 %add35, ptr %x168, align 8
  %222 = load i64, ptr %x133, align 8
  %223 = load i64, ptr %x156, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext 0, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x170, align 1
  %225 = load i64, ptr %x135, align 8
  %226 = load i64, ptr %x158, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x172, align 1
  %228 = load i64, ptr %x137, align 8
  %229 = load i64, ptr %x160, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x174, align 1
  %231 = load i64, ptr %x139, align 8
  %232 = load i64, ptr %x162, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %230, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x176, align 1
  %234 = load i64, ptr %x141, align 8
  %235 = load i64, ptr %x164, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %233, i64 noundef %234, i64 noundef %235)
  %236 = load i8, ptr %x178, align 1
  %237 = load i64, ptr %x143, align 8
  %238 = load i64, ptr %x166, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %236, i64 noundef %237, i64 noundef %238)
  %239 = load i8, ptr %x180, align 1
  %240 = load i64, ptr %x145, align 8
  %241 = load i64, ptr %x168, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %239, i64 noundef %240, i64 noundef %241)
  %242 = load i64, ptr %x169, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x183, ptr noundef %x184, i64 noundef %242, i64 noundef 7986114184663260229)
  %243 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x185, ptr noundef %x186, i64 noundef %243, i64 noundef -1)
  %244 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x187, ptr noundef %x188, i64 noundef %244, i64 noundef -1)
  %245 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x189, ptr noundef %x190, i64 noundef %245, i64 noundef -1)
  %246 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x191, ptr noundef %x192, i64 noundef %246, i64 noundef -4079331616924160545)
  %247 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x193, ptr noundef %x194, i64 noundef %247, i64 noundef 6348401684107011962)
  %248 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x195, ptr noundef %x196, i64 noundef %248, i64 noundef -1374695839762142861)
  %249 = load i64, ptr %x196, align 8
  %250 = load i64, ptr %x193, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext 0, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x198, align 1
  %252 = load i64, ptr %x194, align 8
  %253 = load i64, ptr %x191, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %251, i64 noundef %252, i64 noundef %253)
  %254 = load i8, ptr %x200, align 1
  %255 = load i64, ptr %x192, align 8
  %256 = load i64, ptr %x189, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %254, i64 noundef %255, i64 noundef %256)
  %257 = load i8, ptr %x202, align 1
  %258 = load i64, ptr %x190, align 8
  %259 = load i64, ptr %x187, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %257, i64 noundef %258, i64 noundef %259)
  %260 = load i8, ptr %x204, align 1
  %261 = load i64, ptr %x188, align 8
  %262 = load i64, ptr %x185, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %260, i64 noundef %261, i64 noundef %262)
  %263 = load i8, ptr %x206, align 1
  %conv36 = zext i8 %263 to i64
  %264 = load i64, ptr %x186, align 8
  %add37 = add i64 %conv36, %264
  store i64 %add37, ptr %x207, align 8
  %265 = load i64, ptr %x169, align 8
  %266 = load i64, ptr %x195, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i64 noundef %265, i64 noundef %266)
  %267 = load i8, ptr %x209, align 1
  %268 = load i64, ptr %x171, align 8
  %269 = load i64, ptr %x197, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %267, i64 noundef %268, i64 noundef %269)
  %270 = load i8, ptr %x211, align 1
  %271 = load i64, ptr %x173, align 8
  %272 = load i64, ptr %x199, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %270, i64 noundef %271, i64 noundef %272)
  %273 = load i8, ptr %x213, align 1
  %274 = load i64, ptr %x175, align 8
  %275 = load i64, ptr %x201, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %273, i64 noundef %274, i64 noundef %275)
  %276 = load i8, ptr %x215, align 1
  %277 = load i64, ptr %x177, align 8
  %278 = load i64, ptr %x203, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %276, i64 noundef %277, i64 noundef %278)
  %279 = load i8, ptr %x217, align 1
  %280 = load i64, ptr %x179, align 8
  %281 = load i64, ptr %x205, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %279, i64 noundef %280, i64 noundef %281)
  %282 = load i8, ptr %x219, align 1
  %283 = load i64, ptr %x181, align 8
  %284 = load i64, ptr %x207, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %282, i64 noundef %283, i64 noundef %284)
  %285 = load i8, ptr %x221, align 1
  %conv38 = zext i8 %285 to i64
  %286 = load i8, ptr %x182, align 1
  %conv39 = zext i8 %286 to i64
  %add40 = add i64 %conv38, %conv39
  store i64 %add40, ptr %x222, align 8
  %287 = load i64, ptr %x3, align 8
  %288 = load ptr, ptr %arg2.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %288, i64 5
  %289 = load i64, ptr %arrayidx41, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x223, ptr noundef %x224, i64 noundef %287, i64 noundef %289)
  %290 = load i64, ptr %x3, align 8
  %291 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %291, i64 4
  %292 = load i64, ptr %arrayidx42, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x225, ptr noundef %x226, i64 noundef %290, i64 noundef %292)
  %293 = load i64, ptr %x3, align 8
  %294 = load ptr, ptr %arg2.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %294, i64 3
  %295 = load i64, ptr %arrayidx43, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x227, ptr noundef %x228, i64 noundef %293, i64 noundef %295)
  %296 = load i64, ptr %x3, align 8
  %297 = load ptr, ptr %arg2.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %297, i64 2
  %298 = load i64, ptr %arrayidx44, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x229, ptr noundef %x230, i64 noundef %296, i64 noundef %298)
  %299 = load i64, ptr %x3, align 8
  %300 = load ptr, ptr %arg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %300, i64 1
  %301 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x231, ptr noundef %x232, i64 noundef %299, i64 noundef %301)
  %302 = load i64, ptr %x3, align 8
  %303 = load ptr, ptr %arg2.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %303, i64 0
  %304 = load i64, ptr %arrayidx46, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x233, ptr noundef %x234, i64 noundef %302, i64 noundef %304)
  %305 = load i64, ptr %x234, align 8
  %306 = load i64, ptr %x231, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext 0, i64 noundef %305, i64 noundef %306)
  %307 = load i8, ptr %x236, align 1
  %308 = load i64, ptr %x232, align 8
  %309 = load i64, ptr %x229, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %307, i64 noundef %308, i64 noundef %309)
  %310 = load i8, ptr %x238, align 1
  %311 = load i64, ptr %x230, align 8
  %312 = load i64, ptr %x227, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %310, i64 noundef %311, i64 noundef %312)
  %313 = load i8, ptr %x240, align 1
  %314 = load i64, ptr %x228, align 8
  %315 = load i64, ptr %x225, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %313, i64 noundef %314, i64 noundef %315)
  %316 = load i8, ptr %x242, align 1
  %317 = load i64, ptr %x226, align 8
  %318 = load i64, ptr %x223, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %316, i64 noundef %317, i64 noundef %318)
  %319 = load i8, ptr %x244, align 1
  %conv47 = zext i8 %319 to i64
  %320 = load i64, ptr %x224, align 8
  %add48 = add i64 %conv47, %320
  store i64 %add48, ptr %x245, align 8
  %321 = load i64, ptr %x210, align 8
  %322 = load i64, ptr %x233, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext 0, i64 noundef %321, i64 noundef %322)
  %323 = load i8, ptr %x247, align 1
  %324 = load i64, ptr %x212, align 8
  %325 = load i64, ptr %x235, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %323, i64 noundef %324, i64 noundef %325)
  %326 = load i8, ptr %x249, align 1
  %327 = load i64, ptr %x214, align 8
  %328 = load i64, ptr %x237, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %326, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x251, align 1
  %330 = load i64, ptr %x216, align 8
  %331 = load i64, ptr %x239, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %329, i64 noundef %330, i64 noundef %331)
  %332 = load i8, ptr %x253, align 1
  %333 = load i64, ptr %x218, align 8
  %334 = load i64, ptr %x241, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %332, i64 noundef %333, i64 noundef %334)
  %335 = load i8, ptr %x255, align 1
  %336 = load i64, ptr %x220, align 8
  %337 = load i64, ptr %x243, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %335, i64 noundef %336, i64 noundef %337)
  %338 = load i8, ptr %x257, align 1
  %339 = load i64, ptr %x222, align 8
  %340 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %338, i64 noundef %339, i64 noundef %340)
  %341 = load i64, ptr %x246, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x260, ptr noundef %x261, i64 noundef %341, i64 noundef 7986114184663260229)
  %342 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %342, i64 noundef -1)
  %343 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x264, ptr noundef %x265, i64 noundef %343, i64 noundef -1)
  %344 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x266, ptr noundef %x267, i64 noundef %344, i64 noundef -1)
  %345 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x268, ptr noundef %x269, i64 noundef %345, i64 noundef -4079331616924160545)
  %346 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x270, ptr noundef %x271, i64 noundef %346, i64 noundef 6348401684107011962)
  %347 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x272, ptr noundef %x273, i64 noundef %347, i64 noundef -1374695839762142861)
  %348 = load i64, ptr %x273, align 8
  %349 = load i64, ptr %x270, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext 0, i64 noundef %348, i64 noundef %349)
  %350 = load i8, ptr %x275, align 1
  %351 = load i64, ptr %x271, align 8
  %352 = load i64, ptr %x268, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %350, i64 noundef %351, i64 noundef %352)
  %353 = load i8, ptr %x277, align 1
  %354 = load i64, ptr %x269, align 8
  %355 = load i64, ptr %x266, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %353, i64 noundef %354, i64 noundef %355)
  %356 = load i8, ptr %x279, align 1
  %357 = load i64, ptr %x267, align 8
  %358 = load i64, ptr %x264, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %356, i64 noundef %357, i64 noundef %358)
  %359 = load i8, ptr %x281, align 1
  %360 = load i64, ptr %x265, align 8
  %361 = load i64, ptr %x262, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %359, i64 noundef %360, i64 noundef %361)
  %362 = load i8, ptr %x283, align 1
  %conv49 = zext i8 %362 to i64
  %363 = load i64, ptr %x263, align 8
  %add50 = add i64 %conv49, %363
  store i64 %add50, ptr %x284, align 8
  %364 = load i64, ptr %x246, align 8
  %365 = load i64, ptr %x272, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext 0, i64 noundef %364, i64 noundef %365)
  %366 = load i8, ptr %x286, align 1
  %367 = load i64, ptr %x248, align 8
  %368 = load i64, ptr %x274, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext %366, i64 noundef %367, i64 noundef %368)
  %369 = load i8, ptr %x288, align 1
  %370 = load i64, ptr %x250, align 8
  %371 = load i64, ptr %x276, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %369, i64 noundef %370, i64 noundef %371)
  %372 = load i8, ptr %x290, align 1
  %373 = load i64, ptr %x252, align 8
  %374 = load i64, ptr %x278, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %372, i64 noundef %373, i64 noundef %374)
  %375 = load i8, ptr %x292, align 1
  %376 = load i64, ptr %x254, align 8
  %377 = load i64, ptr %x280, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %375, i64 noundef %376, i64 noundef %377)
  %378 = load i8, ptr %x294, align 1
  %379 = load i64, ptr %x256, align 8
  %380 = load i64, ptr %x282, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %378, i64 noundef %379, i64 noundef %380)
  %381 = load i8, ptr %x296, align 1
  %382 = load i64, ptr %x258, align 8
  %383 = load i64, ptr %x284, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext %381, i64 noundef %382, i64 noundef %383)
  %384 = load i8, ptr %x298, align 1
  %conv51 = zext i8 %384 to i64
  %385 = load i8, ptr %x259, align 1
  %conv52 = zext i8 %385 to i64
  %add53 = add i64 %conv51, %conv52
  store i64 %add53, ptr %x299, align 8
  %386 = load i64, ptr %x4, align 8
  %387 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %387, i64 5
  %388 = load i64, ptr %arrayidx54, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x300, ptr noundef %x301, i64 noundef %386, i64 noundef %388)
  %389 = load i64, ptr %x4, align 8
  %390 = load ptr, ptr %arg2.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %390, i64 4
  %391 = load i64, ptr %arrayidx55, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x302, ptr noundef %x303, i64 noundef %389, i64 noundef %391)
  %392 = load i64, ptr %x4, align 8
  %393 = load ptr, ptr %arg2.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %393, i64 3
  %394 = load i64, ptr %arrayidx56, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x304, ptr noundef %x305, i64 noundef %392, i64 noundef %394)
  %395 = load i64, ptr %x4, align 8
  %396 = load ptr, ptr %arg2.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %396, i64 2
  %397 = load i64, ptr %arrayidx57, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x306, ptr noundef %x307, i64 noundef %395, i64 noundef %397)
  %398 = load i64, ptr %x4, align 8
  %399 = load ptr, ptr %arg2.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %399, i64 1
  %400 = load i64, ptr %arrayidx58, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x308, ptr noundef %x309, i64 noundef %398, i64 noundef %400)
  %401 = load i64, ptr %x4, align 8
  %402 = load ptr, ptr %arg2.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %402, i64 0
  %403 = load i64, ptr %arrayidx59, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x310, ptr noundef %x311, i64 noundef %401, i64 noundef %403)
  %404 = load i64, ptr %x311, align 8
  %405 = load i64, ptr %x308, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext 0, i64 noundef %404, i64 noundef %405)
  %406 = load i8, ptr %x313, align 1
  %407 = load i64, ptr %x309, align 8
  %408 = load i64, ptr %x306, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %406, i64 noundef %407, i64 noundef %408)
  %409 = load i8, ptr %x315, align 1
  %410 = load i64, ptr %x307, align 8
  %411 = load i64, ptr %x304, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %409, i64 noundef %410, i64 noundef %411)
  %412 = load i8, ptr %x317, align 1
  %413 = load i64, ptr %x305, align 8
  %414 = load i64, ptr %x302, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %412, i64 noundef %413, i64 noundef %414)
  %415 = load i8, ptr %x319, align 1
  %416 = load i64, ptr %x303, align 8
  %417 = load i64, ptr %x300, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %415, i64 noundef %416, i64 noundef %417)
  %418 = load i8, ptr %x321, align 1
  %conv60 = zext i8 %418 to i64
  %419 = load i64, ptr %x301, align 8
  %add61 = add i64 %conv60, %419
  store i64 %add61, ptr %x322, align 8
  %420 = load i64, ptr %x287, align 8
  %421 = load i64, ptr %x310, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext 0, i64 noundef %420, i64 noundef %421)
  %422 = load i8, ptr %x324, align 1
  %423 = load i64, ptr %x289, align 8
  %424 = load i64, ptr %x312, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %422, i64 noundef %423, i64 noundef %424)
  %425 = load i8, ptr %x326, align 1
  %426 = load i64, ptr %x291, align 8
  %427 = load i64, ptr %x314, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %425, i64 noundef %426, i64 noundef %427)
  %428 = load i8, ptr %x328, align 1
  %429 = load i64, ptr %x293, align 8
  %430 = load i64, ptr %x316, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %428, i64 noundef %429, i64 noundef %430)
  %431 = load i8, ptr %x330, align 1
  %432 = load i64, ptr %x295, align 8
  %433 = load i64, ptr %x318, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %431, i64 noundef %432, i64 noundef %433)
  %434 = load i8, ptr %x332, align 1
  %435 = load i64, ptr %x297, align 8
  %436 = load i64, ptr %x320, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %434, i64 noundef %435, i64 noundef %436)
  %437 = load i8, ptr %x334, align 1
  %438 = load i64, ptr %x299, align 8
  %439 = load i64, ptr %x322, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %437, i64 noundef %438, i64 noundef %439)
  %440 = load i64, ptr %x323, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x337, ptr noundef %x338, i64 noundef %440, i64 noundef 7986114184663260229)
  %441 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x339, ptr noundef %x340, i64 noundef %441, i64 noundef -1)
  %442 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x341, ptr noundef %x342, i64 noundef %442, i64 noundef -1)
  %443 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x343, ptr noundef %x344, i64 noundef %443, i64 noundef -1)
  %444 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x345, ptr noundef %x346, i64 noundef %444, i64 noundef -4079331616924160545)
  %445 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x347, ptr noundef %x348, i64 noundef %445, i64 noundef 6348401684107011962)
  %446 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x349, ptr noundef %x350, i64 noundef %446, i64 noundef -1374695839762142861)
  %447 = load i64, ptr %x350, align 8
  %448 = load i64, ptr %x347, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext 0, i64 noundef %447, i64 noundef %448)
  %449 = load i8, ptr %x352, align 1
  %450 = load i64, ptr %x348, align 8
  %451 = load i64, ptr %x345, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %449, i64 noundef %450, i64 noundef %451)
  %452 = load i8, ptr %x354, align 1
  %453 = load i64, ptr %x346, align 8
  %454 = load i64, ptr %x343, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %452, i64 noundef %453, i64 noundef %454)
  %455 = load i8, ptr %x356, align 1
  %456 = load i64, ptr %x344, align 8
  %457 = load i64, ptr %x341, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %455, i64 noundef %456, i64 noundef %457)
  %458 = load i8, ptr %x358, align 1
  %459 = load i64, ptr %x342, align 8
  %460 = load i64, ptr %x339, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %458, i64 noundef %459, i64 noundef %460)
  %461 = load i8, ptr %x360, align 1
  %conv62 = zext i8 %461 to i64
  %462 = load i64, ptr %x340, align 8
  %add63 = add i64 %conv62, %462
  store i64 %add63, ptr %x361, align 8
  %463 = load i64, ptr %x323, align 8
  %464 = load i64, ptr %x349, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext 0, i64 noundef %463, i64 noundef %464)
  %465 = load i8, ptr %x363, align 1
  %466 = load i64, ptr %x325, align 8
  %467 = load i64, ptr %x351, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %465, i64 noundef %466, i64 noundef %467)
  %468 = load i8, ptr %x365, align 1
  %469 = load i64, ptr %x327, align 8
  %470 = load i64, ptr %x353, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %468, i64 noundef %469, i64 noundef %470)
  %471 = load i8, ptr %x367, align 1
  %472 = load i64, ptr %x329, align 8
  %473 = load i64, ptr %x355, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %471, i64 noundef %472, i64 noundef %473)
  %474 = load i8, ptr %x369, align 1
  %475 = load i64, ptr %x331, align 8
  %476 = load i64, ptr %x357, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %474, i64 noundef %475, i64 noundef %476)
  %477 = load i8, ptr %x371, align 1
  %478 = load i64, ptr %x333, align 8
  %479 = load i64, ptr %x359, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %477, i64 noundef %478, i64 noundef %479)
  %480 = load i8, ptr %x373, align 1
  %481 = load i64, ptr %x335, align 8
  %482 = load i64, ptr %x361, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %480, i64 noundef %481, i64 noundef %482)
  %483 = load i8, ptr %x375, align 1
  %conv64 = zext i8 %483 to i64
  %484 = load i8, ptr %x336, align 1
  %conv65 = zext i8 %484 to i64
  %add66 = add i64 %conv64, %conv65
  store i64 %add66, ptr %x376, align 8
  %485 = load i64, ptr %x5, align 8
  %486 = load ptr, ptr %arg2.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %486, i64 5
  %487 = load i64, ptr %arrayidx67, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x377, ptr noundef %x378, i64 noundef %485, i64 noundef %487)
  %488 = load i64, ptr %x5, align 8
  %489 = load ptr, ptr %arg2.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %489, i64 4
  %490 = load i64, ptr %arrayidx68, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x379, ptr noundef %x380, i64 noundef %488, i64 noundef %490)
  %491 = load i64, ptr %x5, align 8
  %492 = load ptr, ptr %arg2.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %492, i64 3
  %493 = load i64, ptr %arrayidx69, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x381, ptr noundef %x382, i64 noundef %491, i64 noundef %493)
  %494 = load i64, ptr %x5, align 8
  %495 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %495, i64 2
  %496 = load i64, ptr %arrayidx70, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x383, ptr noundef %x384, i64 noundef %494, i64 noundef %496)
  %497 = load i64, ptr %x5, align 8
  %498 = load ptr, ptr %arg2.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, ptr %498, i64 1
  %499 = load i64, ptr %arrayidx71, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x385, ptr noundef %x386, i64 noundef %497, i64 noundef %499)
  %500 = load i64, ptr %x5, align 8
  %501 = load ptr, ptr %arg2.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %501, i64 0
  %502 = load i64, ptr %arrayidx72, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x387, ptr noundef %x388, i64 noundef %500, i64 noundef %502)
  %503 = load i64, ptr %x388, align 8
  %504 = load i64, ptr %x385, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext 0, i64 noundef %503, i64 noundef %504)
  %505 = load i8, ptr %x390, align 1
  %506 = load i64, ptr %x386, align 8
  %507 = load i64, ptr %x383, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %505, i64 noundef %506, i64 noundef %507)
  %508 = load i8, ptr %x392, align 1
  %509 = load i64, ptr %x384, align 8
  %510 = load i64, ptr %x381, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %508, i64 noundef %509, i64 noundef %510)
  %511 = load i8, ptr %x394, align 1
  %512 = load i64, ptr %x382, align 8
  %513 = load i64, ptr %x379, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %511, i64 noundef %512, i64 noundef %513)
  %514 = load i8, ptr %x396, align 1
  %515 = load i64, ptr %x380, align 8
  %516 = load i64, ptr %x377, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %514, i64 noundef %515, i64 noundef %516)
  %517 = load i8, ptr %x398, align 1
  %conv73 = zext i8 %517 to i64
  %518 = load i64, ptr %x378, align 8
  %add74 = add i64 %conv73, %518
  store i64 %add74, ptr %x399, align 8
  %519 = load i64, ptr %x364, align 8
  %520 = load i64, ptr %x387, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x400, ptr noundef %x401, i8 noundef zeroext 0, i64 noundef %519, i64 noundef %520)
  %521 = load i8, ptr %x401, align 1
  %522 = load i64, ptr %x366, align 8
  %523 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x402, ptr noundef %x403, i8 noundef zeroext %521, i64 noundef %522, i64 noundef %523)
  %524 = load i8, ptr %x403, align 1
  %525 = load i64, ptr %x368, align 8
  %526 = load i64, ptr %x391, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x404, ptr noundef %x405, i8 noundef zeroext %524, i64 noundef %525, i64 noundef %526)
  %527 = load i8, ptr %x405, align 1
  %528 = load i64, ptr %x370, align 8
  %529 = load i64, ptr %x393, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext %527, i64 noundef %528, i64 noundef %529)
  %530 = load i8, ptr %x407, align 1
  %531 = load i64, ptr %x372, align 8
  %532 = load i64, ptr %x395, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %530, i64 noundef %531, i64 noundef %532)
  %533 = load i8, ptr %x409, align 1
  %534 = load i64, ptr %x374, align 8
  %535 = load i64, ptr %x397, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %533, i64 noundef %534, i64 noundef %535)
  %536 = load i8, ptr %x411, align 1
  %537 = load i64, ptr %x376, align 8
  %538 = load i64, ptr %x399, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %536, i64 noundef %537, i64 noundef %538)
  %539 = load i64, ptr %x400, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x414, ptr noundef %x415, i64 noundef %539, i64 noundef 7986114184663260229)
  %540 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x416, ptr noundef %x417, i64 noundef %540, i64 noundef -1)
  %541 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x418, ptr noundef %x419, i64 noundef %541, i64 noundef -1)
  %542 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x420, ptr noundef %x421, i64 noundef %542, i64 noundef -1)
  %543 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x422, ptr noundef %x423, i64 noundef %543, i64 noundef -4079331616924160545)
  %544 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x424, ptr noundef %x425, i64 noundef %544, i64 noundef 6348401684107011962)
  %545 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x426, ptr noundef %x427, i64 noundef %545, i64 noundef -1374695839762142861)
  %546 = load i64, ptr %x427, align 8
  %547 = load i64, ptr %x424, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext 0, i64 noundef %546, i64 noundef %547)
  %548 = load i8, ptr %x429, align 1
  %549 = load i64, ptr %x425, align 8
  %550 = load i64, ptr %x422, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %548, i64 noundef %549, i64 noundef %550)
  %551 = load i8, ptr %x431, align 1
  %552 = load i64, ptr %x423, align 8
  %553 = load i64, ptr %x420, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %551, i64 noundef %552, i64 noundef %553)
  %554 = load i8, ptr %x433, align 1
  %555 = load i64, ptr %x421, align 8
  %556 = load i64, ptr %x418, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %554, i64 noundef %555, i64 noundef %556)
  %557 = load i8, ptr %x435, align 1
  %558 = load i64, ptr %x419, align 8
  %559 = load i64, ptr %x416, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %557, i64 noundef %558, i64 noundef %559)
  %560 = load i8, ptr %x437, align 1
  %conv75 = zext i8 %560 to i64
  %561 = load i64, ptr %x417, align 8
  %add76 = add i64 %conv75, %561
  store i64 %add76, ptr %x438, align 8
  %562 = load i64, ptr %x400, align 8
  %563 = load i64, ptr %x426, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext 0, i64 noundef %562, i64 noundef %563)
  %564 = load i8, ptr %x440, align 1
  %565 = load i64, ptr %x402, align 8
  %566 = load i64, ptr %x428, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %564, i64 noundef %565, i64 noundef %566)
  %567 = load i8, ptr %x442, align 1
  %568 = load i64, ptr %x404, align 8
  %569 = load i64, ptr %x430, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %567, i64 noundef %568, i64 noundef %569)
  %570 = load i8, ptr %x444, align 1
  %571 = load i64, ptr %x406, align 8
  %572 = load i64, ptr %x432, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %570, i64 noundef %571, i64 noundef %572)
  %573 = load i8, ptr %x446, align 1
  %574 = load i64, ptr %x408, align 8
  %575 = load i64, ptr %x434, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %573, i64 noundef %574, i64 noundef %575)
  %576 = load i8, ptr %x448, align 1
  %577 = load i64, ptr %x410, align 8
  %578 = load i64, ptr %x436, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %576, i64 noundef %577, i64 noundef %578)
  %579 = load i8, ptr %x450, align 1
  %580 = load i64, ptr %x412, align 8
  %581 = load i64, ptr %x438, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %579, i64 noundef %580, i64 noundef %581)
  %582 = load i8, ptr %x452, align 1
  %conv77 = zext i8 %582 to i64
  %583 = load i8, ptr %x413, align 1
  %conv78 = zext i8 %583 to i64
  %add79 = add i64 %conv77, %conv78
  store i64 %add79, ptr %x453, align 8
  %584 = load i64, ptr %x441, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext 0, i64 noundef %584, i64 noundef -1374695839762142861)
  %585 = load i8, ptr %x455, align 1
  %586 = load i64, ptr %x443, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %585, i64 noundef %586, i64 noundef 6348401684107011962)
  %587 = load i8, ptr %x457, align 1
  %588 = load i64, ptr %x445, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %587, i64 noundef %588, i64 noundef -4079331616924160545)
  %589 = load i8, ptr %x459, align 1
  %590 = load i64, ptr %x447, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %589, i64 noundef %590, i64 noundef -1)
  %591 = load i8, ptr %x461, align 1
  %592 = load i64, ptr %x449, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %591, i64 noundef %592, i64 noundef -1)
  %593 = load i8, ptr %x463, align 1
  %594 = load i64, ptr %x451, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %593, i64 noundef %594, i64 noundef -1)
  %595 = load i8, ptr %x465, align 1
  %596 = load i64, ptr %x453, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %595, i64 noundef %596, i64 noundef 0)
  %597 = load i8, ptr %x467, align 1
  %598 = load i64, ptr %x454, align 8
  %599 = load i64, ptr %x441, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x468, i8 noundef zeroext %597, i64 noundef %598, i64 noundef %599)
  %600 = load i8, ptr %x467, align 1
  %601 = load i64, ptr %x456, align 8
  %602 = load i64, ptr %x443, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x469, i8 noundef zeroext %600, i64 noundef %601, i64 noundef %602)
  %603 = load i8, ptr %x467, align 1
  %604 = load i64, ptr %x458, align 8
  %605 = load i64, ptr %x445, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x470, i8 noundef zeroext %603, i64 noundef %604, i64 noundef %605)
  %606 = load i8, ptr %x467, align 1
  %607 = load i64, ptr %x460, align 8
  %608 = load i64, ptr %x447, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x471, i8 noundef zeroext %606, i64 noundef %607, i64 noundef %608)
  %609 = load i8, ptr %x467, align 1
  %610 = load i64, ptr %x462, align 8
  %611 = load i64, ptr %x449, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x472, i8 noundef zeroext %609, i64 noundef %610, i64 noundef %611)
  %612 = load i8, ptr %x467, align 1
  %613 = load i64, ptr %x464, align 8
  %614 = load i64, ptr %x451, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x473, i8 noundef zeroext %612, i64 noundef %613, i64 noundef %614)
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %12, i64 noundef %14)
  %15 = load i64, ptr %x6, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %15, i64 noundef %17)
  %18 = load i64, ptr %x6, align 8
  %19 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %19, i64 3
  %20 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %18, i64 noundef %20)
  %21 = load i64, ptr %x6, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 2
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x13, ptr noundef %x14, i64 noundef %21, i64 noundef %23)
  %24 = load i64, ptr %x6, align 8
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 1
  %26 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x15, ptr noundef %x16, i64 noundef %24, i64 noundef %26)
  %27 = load i64, ptr %x6, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 0
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x17, ptr noundef %x18, i64 noundef %27, i64 noundef %29)
  %30 = load i64, ptr %x18, align 8
  %31 = load i64, ptr %x15, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext 0, i64 noundef %30, i64 noundef %31)
  %32 = load i8, ptr %x20, align 1
  %33 = load i64, ptr %x16, align 8
  %34 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %34)
  %35 = load i8, ptr %x22, align 1
  %36 = load i64, ptr %x14, align 8
  %37 = load i64, ptr %x11, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i8, ptr %x24, align 1
  %39 = load i64, ptr %x12, align 8
  %40 = load i64, ptr %x9, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x26, align 1
  %42 = load i64, ptr %x10, align 8
  %43 = load i64, ptr %x7, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x28, align 1
  %conv = zext i8 %44 to i64
  %45 = load i64, ptr %x8, align 8
  %add = add i64 %conv, %45
  store i64 %add, ptr %x29, align 8
  %46 = load i64, ptr %x17, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x30, ptr noundef %x31, i64 noundef %46, i64 noundef 7986114184663260229)
  %47 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x32, ptr noundef %x33, i64 noundef %47, i64 noundef -1)
  %48 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x34, ptr noundef %x35, i64 noundef %48, i64 noundef -1)
  %49 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x36, ptr noundef %x37, i64 noundef %49, i64 noundef -1)
  %50 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x38, ptr noundef %x39, i64 noundef %50, i64 noundef -4079331616924160545)
  %51 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x40, ptr noundef %x41, i64 noundef %51, i64 noundef 6348401684107011962)
  %52 = load i64, ptr %x30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %52, i64 noundef -1374695839762142861)
  %53 = load i64, ptr %x43, align 8
  %54 = load i64, ptr %x40, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x44, ptr noundef %x45, i8 noundef zeroext 0, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x45, align 1
  %56 = load i64, ptr %x41, align 8
  %57 = load i64, ptr %x38, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x47, align 1
  %59 = load i64, ptr %x39, align 8
  %60 = load i64, ptr %x36, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i8, ptr %x49, align 1
  %62 = load i64, ptr %x37, align 8
  %63 = load i64, ptr %x34, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %61, i64 noundef %62, i64 noundef %63)
  %64 = load i8, ptr %x51, align 1
  %65 = load i64, ptr %x35, align 8
  %66 = load i64, ptr %x32, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %64, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x53, align 1
  %conv12 = zext i8 %67 to i64
  %68 = load i64, ptr %x33, align 8
  %add13 = add i64 %conv12, %68
  store i64 %add13, ptr %x54, align 8
  %69 = load i64, ptr %x17, align 8
  %70 = load i64, ptr %x42, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext 0, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x56, align 1
  %72 = load i64, ptr %x19, align 8
  %73 = load i64, ptr %x44, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %71, i64 noundef %72, i64 noundef %73)
  %74 = load i8, ptr %x58, align 1
  %75 = load i64, ptr %x21, align 8
  %76 = load i64, ptr %x46, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %74, i64 noundef %75, i64 noundef %76)
  %77 = load i8, ptr %x60, align 1
  %78 = load i64, ptr %x23, align 8
  %79 = load i64, ptr %x48, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %77, i64 noundef %78, i64 noundef %79)
  %80 = load i8, ptr %x62, align 1
  %81 = load i64, ptr %x25, align 8
  %82 = load i64, ptr %x50, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %80, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x64, align 1
  %84 = load i64, ptr %x27, align 8
  %85 = load i64, ptr %x52, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %83, i64 noundef %84, i64 noundef %85)
  %86 = load i8, ptr %x66, align 1
  %87 = load i64, ptr %x29, align 8
  %88 = load i64, ptr %x54, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext %86, i64 noundef %87, i64 noundef %88)
  %89 = load i64, ptr %x1, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %90, i64 5
  %91 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x69, ptr noundef %x70, i64 noundef %89, i64 noundef %91)
  %92 = load i64, ptr %x1, align 8
  %93 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %93, i64 4
  %94 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x71, ptr noundef %x72, i64 noundef %92, i64 noundef %94)
  %95 = load i64, ptr %x1, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %96, i64 3
  %97 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x73, ptr noundef %x74, i64 noundef %95, i64 noundef %97)
  %98 = load i64, ptr %x1, align 8
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %99, i64 2
  %100 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x75, ptr noundef %x76, i64 noundef %98, i64 noundef %100)
  %101 = load i64, ptr %x1, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %102, i64 1
  %103 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x77, ptr noundef %x78, i64 noundef %101, i64 noundef %103)
  %104 = load i64, ptr %x1, align 8
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %105, i64 0
  %106 = load i64, ptr %arrayidx19, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x79, ptr noundef %x80, i64 noundef %104, i64 noundef %106)
  %107 = load i64, ptr %x80, align 8
  %108 = load i64, ptr %x77, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext 0, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x82, align 1
  %110 = load i64, ptr %x78, align 8
  %111 = load i64, ptr %x75, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i8, ptr %x84, align 1
  %113 = load i64, ptr %x76, align 8
  %114 = load i64, ptr %x73, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %112, i64 noundef %113, i64 noundef %114)
  %115 = load i8, ptr %x86, align 1
  %116 = load i64, ptr %x74, align 8
  %117 = load i64, ptr %x71, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %115, i64 noundef %116, i64 noundef %117)
  %118 = load i8, ptr %x88, align 1
  %119 = load i64, ptr %x72, align 8
  %120 = load i64, ptr %x69, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %118, i64 noundef %119, i64 noundef %120)
  %121 = load i8, ptr %x90, align 1
  %conv20 = zext i8 %121 to i64
  %122 = load i64, ptr %x70, align 8
  %add21 = add i64 %conv20, %122
  store i64 %add21, ptr %x91, align 8
  %123 = load i64, ptr %x57, align 8
  %124 = load i64, ptr %x79, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext 0, i64 noundef %123, i64 noundef %124)
  %125 = load i8, ptr %x93, align 1
  %126 = load i64, ptr %x59, align 8
  %127 = load i64, ptr %x81, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %127)
  %128 = load i8, ptr %x95, align 1
  %129 = load i64, ptr %x61, align 8
  %130 = load i64, ptr %x83, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %128, i64 noundef %129, i64 noundef %130)
  %131 = load i8, ptr %x97, align 1
  %132 = load i64, ptr %x63, align 8
  %133 = load i64, ptr %x85, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %131, i64 noundef %132, i64 noundef %133)
  %134 = load i8, ptr %x99, align 1
  %135 = load i64, ptr %x65, align 8
  %136 = load i64, ptr %x87, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %134, i64 noundef %135, i64 noundef %136)
  %137 = load i8, ptr %x101, align 1
  %138 = load i64, ptr %x67, align 8
  %139 = load i64, ptr %x89, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %137, i64 noundef %138, i64 noundef %139)
  %140 = load i8, ptr %x103, align 1
  %141 = load i8, ptr %x68, align 1
  %conv22 = zext i8 %141 to i64
  %142 = load i64, ptr %x91, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %140, i64 noundef %conv22, i64 noundef %142)
  %143 = load i64, ptr %x92, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x106, ptr noundef %x107, i64 noundef %143, i64 noundef 7986114184663260229)
  %144 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x108, ptr noundef %x109, i64 noundef %144, i64 noundef -1)
  %145 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x110, ptr noundef %x111, i64 noundef %145, i64 noundef -1)
  %146 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x112, ptr noundef %x113, i64 noundef %146, i64 noundef -1)
  %147 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x114, ptr noundef %x115, i64 noundef %147, i64 noundef -4079331616924160545)
  %148 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x116, ptr noundef %x117, i64 noundef %148, i64 noundef 6348401684107011962)
  %149 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x118, ptr noundef %x119, i64 noundef %149, i64 noundef -1374695839762142861)
  %150 = load i64, ptr %x119, align 8
  %151 = load i64, ptr %x116, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext 0, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x121, align 1
  %153 = load i64, ptr %x117, align 8
  %154 = load i64, ptr %x114, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x123, align 1
  %156 = load i64, ptr %x115, align 8
  %157 = load i64, ptr %x112, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x125, align 1
  %159 = load i64, ptr %x113, align 8
  %160 = load i64, ptr %x110, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x127, align 1
  %162 = load i64, ptr %x111, align 8
  %163 = load i64, ptr %x108, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x129, align 1
  %conv23 = zext i8 %164 to i64
  %165 = load i64, ptr %x109, align 8
  %add24 = add i64 %conv23, %165
  store i64 %add24, ptr %x130, align 8
  %166 = load i64, ptr %x92, align 8
  %167 = load i64, ptr %x118, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x132, align 1
  %169 = load i64, ptr %x94, align 8
  %170 = load i64, ptr %x120, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x134, align 1
  %172 = load i64, ptr %x96, align 8
  %173 = load i64, ptr %x122, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x136, align 1
  %175 = load i64, ptr %x98, align 8
  %176 = load i64, ptr %x124, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %174, i64 noundef %175, i64 noundef %176)
  %177 = load i8, ptr %x138, align 1
  %178 = load i64, ptr %x100, align 8
  %179 = load i64, ptr %x126, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x139, ptr noundef %x140, i8 noundef zeroext %177, i64 noundef %178, i64 noundef %179)
  %180 = load i8, ptr %x140, align 1
  %181 = load i64, ptr %x102, align 8
  %182 = load i64, ptr %x128, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x141, ptr noundef %x142, i8 noundef zeroext %180, i64 noundef %181, i64 noundef %182)
  %183 = load i8, ptr %x142, align 1
  %184 = load i64, ptr %x104, align 8
  %185 = load i64, ptr %x130, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
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
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x146, ptr noundef %x147, i64 noundef %188, i64 noundef %190)
  %191 = load i64, ptr %x2, align 8
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %192, i64 4
  %193 = load i64, ptr %arrayidx29, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x148, ptr noundef %x149, i64 noundef %191, i64 noundef %193)
  %194 = load i64, ptr %x2, align 8
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %195, i64 3
  %196 = load i64, ptr %arrayidx30, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x150, ptr noundef %x151, i64 noundef %194, i64 noundef %196)
  %197 = load i64, ptr %x2, align 8
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %198, i64 2
  %199 = load i64, ptr %arrayidx31, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x152, ptr noundef %x153, i64 noundef %197, i64 noundef %199)
  %200 = load i64, ptr %x2, align 8
  %201 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %201, i64 1
  %202 = load i64, ptr %arrayidx32, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x154, ptr noundef %x155, i64 noundef %200, i64 noundef %202)
  %203 = load i64, ptr %x2, align 8
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %204, i64 0
  %205 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x156, ptr noundef %x157, i64 noundef %203, i64 noundef %205)
  %206 = load i64, ptr %x157, align 8
  %207 = load i64, ptr %x154, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x159, align 1
  %209 = load i64, ptr %x155, align 8
  %210 = load i64, ptr %x152, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %208, i64 noundef %209, i64 noundef %210)
  %211 = load i8, ptr %x161, align 1
  %212 = load i64, ptr %x153, align 8
  %213 = load i64, ptr %x150, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %211, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x163, align 1
  %215 = load i64, ptr %x151, align 8
  %216 = load i64, ptr %x148, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %214, i64 noundef %215, i64 noundef %216)
  %217 = load i8, ptr %x165, align 1
  %218 = load i64, ptr %x149, align 8
  %219 = load i64, ptr %x146, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %217, i64 noundef %218, i64 noundef %219)
  %220 = load i8, ptr %x167, align 1
  %conv34 = zext i8 %220 to i64
  %221 = load i64, ptr %x147, align 8
  %add35 = add i64 %conv34, %221
  store i64 %add35, ptr %x168, align 8
  %222 = load i64, ptr %x133, align 8
  %223 = load i64, ptr %x156, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext 0, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x170, align 1
  %225 = load i64, ptr %x135, align 8
  %226 = load i64, ptr %x158, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x172, align 1
  %228 = load i64, ptr %x137, align 8
  %229 = load i64, ptr %x160, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x174, align 1
  %231 = load i64, ptr %x139, align 8
  %232 = load i64, ptr %x162, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %230, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x176, align 1
  %234 = load i64, ptr %x141, align 8
  %235 = load i64, ptr %x164, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %233, i64 noundef %234, i64 noundef %235)
  %236 = load i8, ptr %x178, align 1
  %237 = load i64, ptr %x143, align 8
  %238 = load i64, ptr %x166, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %236, i64 noundef %237, i64 noundef %238)
  %239 = load i8, ptr %x180, align 1
  %240 = load i64, ptr %x145, align 8
  %241 = load i64, ptr %x168, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext %239, i64 noundef %240, i64 noundef %241)
  %242 = load i64, ptr %x169, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x183, ptr noundef %x184, i64 noundef %242, i64 noundef 7986114184663260229)
  %243 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x185, ptr noundef %x186, i64 noundef %243, i64 noundef -1)
  %244 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x187, ptr noundef %x188, i64 noundef %244, i64 noundef -1)
  %245 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x189, ptr noundef %x190, i64 noundef %245, i64 noundef -1)
  %246 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x191, ptr noundef %x192, i64 noundef %246, i64 noundef -4079331616924160545)
  %247 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x193, ptr noundef %x194, i64 noundef %247, i64 noundef 6348401684107011962)
  %248 = load i64, ptr %x183, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x195, ptr noundef %x196, i64 noundef %248, i64 noundef -1374695839762142861)
  %249 = load i64, ptr %x196, align 8
  %250 = load i64, ptr %x193, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x197, ptr noundef %x198, i8 noundef zeroext 0, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x198, align 1
  %252 = load i64, ptr %x194, align 8
  %253 = load i64, ptr %x191, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x199, ptr noundef %x200, i8 noundef zeroext %251, i64 noundef %252, i64 noundef %253)
  %254 = load i8, ptr %x200, align 1
  %255 = load i64, ptr %x192, align 8
  %256 = load i64, ptr %x189, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x201, ptr noundef %x202, i8 noundef zeroext %254, i64 noundef %255, i64 noundef %256)
  %257 = load i8, ptr %x202, align 1
  %258 = load i64, ptr %x190, align 8
  %259 = load i64, ptr %x187, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x203, ptr noundef %x204, i8 noundef zeroext %257, i64 noundef %258, i64 noundef %259)
  %260 = load i8, ptr %x204, align 1
  %261 = load i64, ptr %x188, align 8
  %262 = load i64, ptr %x185, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x205, ptr noundef %x206, i8 noundef zeroext %260, i64 noundef %261, i64 noundef %262)
  %263 = load i8, ptr %x206, align 1
  %conv36 = zext i8 %263 to i64
  %264 = load i64, ptr %x186, align 8
  %add37 = add i64 %conv36, %264
  store i64 %add37, ptr %x207, align 8
  %265 = load i64, ptr %x169, align 8
  %266 = load i64, ptr %x195, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x208, ptr noundef %x209, i8 noundef zeroext 0, i64 noundef %265, i64 noundef %266)
  %267 = load i8, ptr %x209, align 1
  %268 = load i64, ptr %x171, align 8
  %269 = load i64, ptr %x197, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x210, ptr noundef %x211, i8 noundef zeroext %267, i64 noundef %268, i64 noundef %269)
  %270 = load i8, ptr %x211, align 1
  %271 = load i64, ptr %x173, align 8
  %272 = load i64, ptr %x199, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x212, ptr noundef %x213, i8 noundef zeroext %270, i64 noundef %271, i64 noundef %272)
  %273 = load i8, ptr %x213, align 1
  %274 = load i64, ptr %x175, align 8
  %275 = load i64, ptr %x201, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x214, ptr noundef %x215, i8 noundef zeroext %273, i64 noundef %274, i64 noundef %275)
  %276 = load i8, ptr %x215, align 1
  %277 = load i64, ptr %x177, align 8
  %278 = load i64, ptr %x203, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x216, ptr noundef %x217, i8 noundef zeroext %276, i64 noundef %277, i64 noundef %278)
  %279 = load i8, ptr %x217, align 1
  %280 = load i64, ptr %x179, align 8
  %281 = load i64, ptr %x205, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x218, ptr noundef %x219, i8 noundef zeroext %279, i64 noundef %280, i64 noundef %281)
  %282 = load i8, ptr %x219, align 1
  %283 = load i64, ptr %x181, align 8
  %284 = load i64, ptr %x207, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x220, ptr noundef %x221, i8 noundef zeroext %282, i64 noundef %283, i64 noundef %284)
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
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x223, ptr noundef %x224, i64 noundef %287, i64 noundef %289)
  %290 = load i64, ptr %x3, align 8
  %291 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %291, i64 4
  %292 = load i64, ptr %arrayidx42, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x225, ptr noundef %x226, i64 noundef %290, i64 noundef %292)
  %293 = load i64, ptr %x3, align 8
  %294 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %294, i64 3
  %295 = load i64, ptr %arrayidx43, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x227, ptr noundef %x228, i64 noundef %293, i64 noundef %295)
  %296 = load i64, ptr %x3, align 8
  %297 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %297, i64 2
  %298 = load i64, ptr %arrayidx44, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x229, ptr noundef %x230, i64 noundef %296, i64 noundef %298)
  %299 = load i64, ptr %x3, align 8
  %300 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %300, i64 1
  %301 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x231, ptr noundef %x232, i64 noundef %299, i64 noundef %301)
  %302 = load i64, ptr %x3, align 8
  %303 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %303, i64 0
  %304 = load i64, ptr %arrayidx46, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x233, ptr noundef %x234, i64 noundef %302, i64 noundef %304)
  %305 = load i64, ptr %x234, align 8
  %306 = load i64, ptr %x231, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x235, ptr noundef %x236, i8 noundef zeroext 0, i64 noundef %305, i64 noundef %306)
  %307 = load i8, ptr %x236, align 1
  %308 = load i64, ptr %x232, align 8
  %309 = load i64, ptr %x229, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x237, ptr noundef %x238, i8 noundef zeroext %307, i64 noundef %308, i64 noundef %309)
  %310 = load i8, ptr %x238, align 1
  %311 = load i64, ptr %x230, align 8
  %312 = load i64, ptr %x227, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x239, ptr noundef %x240, i8 noundef zeroext %310, i64 noundef %311, i64 noundef %312)
  %313 = load i8, ptr %x240, align 1
  %314 = load i64, ptr %x228, align 8
  %315 = load i64, ptr %x225, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x241, ptr noundef %x242, i8 noundef zeroext %313, i64 noundef %314, i64 noundef %315)
  %316 = load i8, ptr %x242, align 1
  %317 = load i64, ptr %x226, align 8
  %318 = load i64, ptr %x223, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x243, ptr noundef %x244, i8 noundef zeroext %316, i64 noundef %317, i64 noundef %318)
  %319 = load i8, ptr %x244, align 1
  %conv47 = zext i8 %319 to i64
  %320 = load i64, ptr %x224, align 8
  %add48 = add i64 %conv47, %320
  store i64 %add48, ptr %x245, align 8
  %321 = load i64, ptr %x210, align 8
  %322 = load i64, ptr %x233, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x246, ptr noundef %x247, i8 noundef zeroext 0, i64 noundef %321, i64 noundef %322)
  %323 = load i8, ptr %x247, align 1
  %324 = load i64, ptr %x212, align 8
  %325 = load i64, ptr %x235, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x248, ptr noundef %x249, i8 noundef zeroext %323, i64 noundef %324, i64 noundef %325)
  %326 = load i8, ptr %x249, align 1
  %327 = load i64, ptr %x214, align 8
  %328 = load i64, ptr %x237, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x250, ptr noundef %x251, i8 noundef zeroext %326, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x251, align 1
  %330 = load i64, ptr %x216, align 8
  %331 = load i64, ptr %x239, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x252, ptr noundef %x253, i8 noundef zeroext %329, i64 noundef %330, i64 noundef %331)
  %332 = load i8, ptr %x253, align 1
  %333 = load i64, ptr %x218, align 8
  %334 = load i64, ptr %x241, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x254, ptr noundef %x255, i8 noundef zeroext %332, i64 noundef %333, i64 noundef %334)
  %335 = load i8, ptr %x255, align 1
  %336 = load i64, ptr %x220, align 8
  %337 = load i64, ptr %x243, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x256, ptr noundef %x257, i8 noundef zeroext %335, i64 noundef %336, i64 noundef %337)
  %338 = load i8, ptr %x257, align 1
  %339 = load i64, ptr %x222, align 8
  %340 = load i64, ptr %x245, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x258, ptr noundef %x259, i8 noundef zeroext %338, i64 noundef %339, i64 noundef %340)
  %341 = load i64, ptr %x246, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x260, ptr noundef %x261, i64 noundef %341, i64 noundef 7986114184663260229)
  %342 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %342, i64 noundef -1)
  %343 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x264, ptr noundef %x265, i64 noundef %343, i64 noundef -1)
  %344 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x266, ptr noundef %x267, i64 noundef %344, i64 noundef -1)
  %345 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x268, ptr noundef %x269, i64 noundef %345, i64 noundef -4079331616924160545)
  %346 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x270, ptr noundef %x271, i64 noundef %346, i64 noundef 6348401684107011962)
  %347 = load i64, ptr %x260, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x272, ptr noundef %x273, i64 noundef %347, i64 noundef -1374695839762142861)
  %348 = load i64, ptr %x273, align 8
  %349 = load i64, ptr %x270, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x274, ptr noundef %x275, i8 noundef zeroext 0, i64 noundef %348, i64 noundef %349)
  %350 = load i8, ptr %x275, align 1
  %351 = load i64, ptr %x271, align 8
  %352 = load i64, ptr %x268, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x276, ptr noundef %x277, i8 noundef zeroext %350, i64 noundef %351, i64 noundef %352)
  %353 = load i8, ptr %x277, align 1
  %354 = load i64, ptr %x269, align 8
  %355 = load i64, ptr %x266, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x278, ptr noundef %x279, i8 noundef zeroext %353, i64 noundef %354, i64 noundef %355)
  %356 = load i8, ptr %x279, align 1
  %357 = load i64, ptr %x267, align 8
  %358 = load i64, ptr %x264, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x280, ptr noundef %x281, i8 noundef zeroext %356, i64 noundef %357, i64 noundef %358)
  %359 = load i8, ptr %x281, align 1
  %360 = load i64, ptr %x265, align 8
  %361 = load i64, ptr %x262, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x282, ptr noundef %x283, i8 noundef zeroext %359, i64 noundef %360, i64 noundef %361)
  %362 = load i8, ptr %x283, align 1
  %conv49 = zext i8 %362 to i64
  %363 = load i64, ptr %x263, align 8
  %add50 = add i64 %conv49, %363
  store i64 %add50, ptr %x284, align 8
  %364 = load i64, ptr %x246, align 8
  %365 = load i64, ptr %x272, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x285, ptr noundef %x286, i8 noundef zeroext 0, i64 noundef %364, i64 noundef %365)
  %366 = load i8, ptr %x286, align 1
  %367 = load i64, ptr %x248, align 8
  %368 = load i64, ptr %x274, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x287, ptr noundef %x288, i8 noundef zeroext %366, i64 noundef %367, i64 noundef %368)
  %369 = load i8, ptr %x288, align 1
  %370 = load i64, ptr %x250, align 8
  %371 = load i64, ptr %x276, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x289, ptr noundef %x290, i8 noundef zeroext %369, i64 noundef %370, i64 noundef %371)
  %372 = load i8, ptr %x290, align 1
  %373 = load i64, ptr %x252, align 8
  %374 = load i64, ptr %x278, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x291, ptr noundef %x292, i8 noundef zeroext %372, i64 noundef %373, i64 noundef %374)
  %375 = load i8, ptr %x292, align 1
  %376 = load i64, ptr %x254, align 8
  %377 = load i64, ptr %x280, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x293, ptr noundef %x294, i8 noundef zeroext %375, i64 noundef %376, i64 noundef %377)
  %378 = load i8, ptr %x294, align 1
  %379 = load i64, ptr %x256, align 8
  %380 = load i64, ptr %x282, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x295, ptr noundef %x296, i8 noundef zeroext %378, i64 noundef %379, i64 noundef %380)
  %381 = load i8, ptr %x296, align 1
  %382 = load i64, ptr %x258, align 8
  %383 = load i64, ptr %x284, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x297, ptr noundef %x298, i8 noundef zeroext %381, i64 noundef %382, i64 noundef %383)
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
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x300, ptr noundef %x301, i64 noundef %386, i64 noundef %388)
  %389 = load i64, ptr %x4, align 8
  %390 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %390, i64 4
  %391 = load i64, ptr %arrayidx55, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x302, ptr noundef %x303, i64 noundef %389, i64 noundef %391)
  %392 = load i64, ptr %x4, align 8
  %393 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %393, i64 3
  %394 = load i64, ptr %arrayidx56, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x304, ptr noundef %x305, i64 noundef %392, i64 noundef %394)
  %395 = load i64, ptr %x4, align 8
  %396 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %396, i64 2
  %397 = load i64, ptr %arrayidx57, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x306, ptr noundef %x307, i64 noundef %395, i64 noundef %397)
  %398 = load i64, ptr %x4, align 8
  %399 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %399, i64 1
  %400 = load i64, ptr %arrayidx58, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x308, ptr noundef %x309, i64 noundef %398, i64 noundef %400)
  %401 = load i64, ptr %x4, align 8
  %402 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %402, i64 0
  %403 = load i64, ptr %arrayidx59, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x310, ptr noundef %x311, i64 noundef %401, i64 noundef %403)
  %404 = load i64, ptr %x311, align 8
  %405 = load i64, ptr %x308, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x312, ptr noundef %x313, i8 noundef zeroext 0, i64 noundef %404, i64 noundef %405)
  %406 = load i8, ptr %x313, align 1
  %407 = load i64, ptr %x309, align 8
  %408 = load i64, ptr %x306, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x314, ptr noundef %x315, i8 noundef zeroext %406, i64 noundef %407, i64 noundef %408)
  %409 = load i8, ptr %x315, align 1
  %410 = load i64, ptr %x307, align 8
  %411 = load i64, ptr %x304, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x316, ptr noundef %x317, i8 noundef zeroext %409, i64 noundef %410, i64 noundef %411)
  %412 = load i8, ptr %x317, align 1
  %413 = load i64, ptr %x305, align 8
  %414 = load i64, ptr %x302, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x318, ptr noundef %x319, i8 noundef zeroext %412, i64 noundef %413, i64 noundef %414)
  %415 = load i8, ptr %x319, align 1
  %416 = load i64, ptr %x303, align 8
  %417 = load i64, ptr %x300, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x320, ptr noundef %x321, i8 noundef zeroext %415, i64 noundef %416, i64 noundef %417)
  %418 = load i8, ptr %x321, align 1
  %conv60 = zext i8 %418 to i64
  %419 = load i64, ptr %x301, align 8
  %add61 = add i64 %conv60, %419
  store i64 %add61, ptr %x322, align 8
  %420 = load i64, ptr %x287, align 8
  %421 = load i64, ptr %x310, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x323, ptr noundef %x324, i8 noundef zeroext 0, i64 noundef %420, i64 noundef %421)
  %422 = load i8, ptr %x324, align 1
  %423 = load i64, ptr %x289, align 8
  %424 = load i64, ptr %x312, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x325, ptr noundef %x326, i8 noundef zeroext %422, i64 noundef %423, i64 noundef %424)
  %425 = load i8, ptr %x326, align 1
  %426 = load i64, ptr %x291, align 8
  %427 = load i64, ptr %x314, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x327, ptr noundef %x328, i8 noundef zeroext %425, i64 noundef %426, i64 noundef %427)
  %428 = load i8, ptr %x328, align 1
  %429 = load i64, ptr %x293, align 8
  %430 = load i64, ptr %x316, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x329, ptr noundef %x330, i8 noundef zeroext %428, i64 noundef %429, i64 noundef %430)
  %431 = load i8, ptr %x330, align 1
  %432 = load i64, ptr %x295, align 8
  %433 = load i64, ptr %x318, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x331, ptr noundef %x332, i8 noundef zeroext %431, i64 noundef %432, i64 noundef %433)
  %434 = load i8, ptr %x332, align 1
  %435 = load i64, ptr %x297, align 8
  %436 = load i64, ptr %x320, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x333, ptr noundef %x334, i8 noundef zeroext %434, i64 noundef %435, i64 noundef %436)
  %437 = load i8, ptr %x334, align 1
  %438 = load i64, ptr %x299, align 8
  %439 = load i64, ptr %x322, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x335, ptr noundef %x336, i8 noundef zeroext %437, i64 noundef %438, i64 noundef %439)
  %440 = load i64, ptr %x323, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x337, ptr noundef %x338, i64 noundef %440, i64 noundef 7986114184663260229)
  %441 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x339, ptr noundef %x340, i64 noundef %441, i64 noundef -1)
  %442 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x341, ptr noundef %x342, i64 noundef %442, i64 noundef -1)
  %443 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x343, ptr noundef %x344, i64 noundef %443, i64 noundef -1)
  %444 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x345, ptr noundef %x346, i64 noundef %444, i64 noundef -4079331616924160545)
  %445 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x347, ptr noundef %x348, i64 noundef %445, i64 noundef 6348401684107011962)
  %446 = load i64, ptr %x337, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x349, ptr noundef %x350, i64 noundef %446, i64 noundef -1374695839762142861)
  %447 = load i64, ptr %x350, align 8
  %448 = load i64, ptr %x347, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x351, ptr noundef %x352, i8 noundef zeroext 0, i64 noundef %447, i64 noundef %448)
  %449 = load i8, ptr %x352, align 1
  %450 = load i64, ptr %x348, align 8
  %451 = load i64, ptr %x345, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x353, ptr noundef %x354, i8 noundef zeroext %449, i64 noundef %450, i64 noundef %451)
  %452 = load i8, ptr %x354, align 1
  %453 = load i64, ptr %x346, align 8
  %454 = load i64, ptr %x343, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x355, ptr noundef %x356, i8 noundef zeroext %452, i64 noundef %453, i64 noundef %454)
  %455 = load i8, ptr %x356, align 1
  %456 = load i64, ptr %x344, align 8
  %457 = load i64, ptr %x341, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x357, ptr noundef %x358, i8 noundef zeroext %455, i64 noundef %456, i64 noundef %457)
  %458 = load i8, ptr %x358, align 1
  %459 = load i64, ptr %x342, align 8
  %460 = load i64, ptr %x339, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x359, ptr noundef %x360, i8 noundef zeroext %458, i64 noundef %459, i64 noundef %460)
  %461 = load i8, ptr %x360, align 1
  %conv62 = zext i8 %461 to i64
  %462 = load i64, ptr %x340, align 8
  %add63 = add i64 %conv62, %462
  store i64 %add63, ptr %x361, align 8
  %463 = load i64, ptr %x323, align 8
  %464 = load i64, ptr %x349, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x362, ptr noundef %x363, i8 noundef zeroext 0, i64 noundef %463, i64 noundef %464)
  %465 = load i8, ptr %x363, align 1
  %466 = load i64, ptr %x325, align 8
  %467 = load i64, ptr %x351, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x364, ptr noundef %x365, i8 noundef zeroext %465, i64 noundef %466, i64 noundef %467)
  %468 = load i8, ptr %x365, align 1
  %469 = load i64, ptr %x327, align 8
  %470 = load i64, ptr %x353, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x366, ptr noundef %x367, i8 noundef zeroext %468, i64 noundef %469, i64 noundef %470)
  %471 = load i8, ptr %x367, align 1
  %472 = load i64, ptr %x329, align 8
  %473 = load i64, ptr %x355, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x368, ptr noundef %x369, i8 noundef zeroext %471, i64 noundef %472, i64 noundef %473)
  %474 = load i8, ptr %x369, align 1
  %475 = load i64, ptr %x331, align 8
  %476 = load i64, ptr %x357, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x370, ptr noundef %x371, i8 noundef zeroext %474, i64 noundef %475, i64 noundef %476)
  %477 = load i8, ptr %x371, align 1
  %478 = load i64, ptr %x333, align 8
  %479 = load i64, ptr %x359, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x372, ptr noundef %x373, i8 noundef zeroext %477, i64 noundef %478, i64 noundef %479)
  %480 = load i8, ptr %x373, align 1
  %481 = load i64, ptr %x335, align 8
  %482 = load i64, ptr %x361, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x374, ptr noundef %x375, i8 noundef zeroext %480, i64 noundef %481, i64 noundef %482)
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
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x377, ptr noundef %x378, i64 noundef %485, i64 noundef %487)
  %488 = load i64, ptr %x5, align 8
  %489 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %489, i64 4
  %490 = load i64, ptr %arrayidx68, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x379, ptr noundef %x380, i64 noundef %488, i64 noundef %490)
  %491 = load i64, ptr %x5, align 8
  %492 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %492, i64 3
  %493 = load i64, ptr %arrayidx69, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x381, ptr noundef %x382, i64 noundef %491, i64 noundef %493)
  %494 = load i64, ptr %x5, align 8
  %495 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %495, i64 2
  %496 = load i64, ptr %arrayidx70, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x383, ptr noundef %x384, i64 noundef %494, i64 noundef %496)
  %497 = load i64, ptr %x5, align 8
  %498 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, ptr %498, i64 1
  %499 = load i64, ptr %arrayidx71, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x385, ptr noundef %x386, i64 noundef %497, i64 noundef %499)
  %500 = load i64, ptr %x5, align 8
  %501 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %501, i64 0
  %502 = load i64, ptr %arrayidx72, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x387, ptr noundef %x388, i64 noundef %500, i64 noundef %502)
  %503 = load i64, ptr %x388, align 8
  %504 = load i64, ptr %x385, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x389, ptr noundef %x390, i8 noundef zeroext 0, i64 noundef %503, i64 noundef %504)
  %505 = load i8, ptr %x390, align 1
  %506 = load i64, ptr %x386, align 8
  %507 = load i64, ptr %x383, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x391, ptr noundef %x392, i8 noundef zeroext %505, i64 noundef %506, i64 noundef %507)
  %508 = load i8, ptr %x392, align 1
  %509 = load i64, ptr %x384, align 8
  %510 = load i64, ptr %x381, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x393, ptr noundef %x394, i8 noundef zeroext %508, i64 noundef %509, i64 noundef %510)
  %511 = load i8, ptr %x394, align 1
  %512 = load i64, ptr %x382, align 8
  %513 = load i64, ptr %x379, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x395, ptr noundef %x396, i8 noundef zeroext %511, i64 noundef %512, i64 noundef %513)
  %514 = load i8, ptr %x396, align 1
  %515 = load i64, ptr %x380, align 8
  %516 = load i64, ptr %x377, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x397, ptr noundef %x398, i8 noundef zeroext %514, i64 noundef %515, i64 noundef %516)
  %517 = load i8, ptr %x398, align 1
  %conv73 = zext i8 %517 to i64
  %518 = load i64, ptr %x378, align 8
  %add74 = add i64 %conv73, %518
  store i64 %add74, ptr %x399, align 8
  %519 = load i64, ptr %x364, align 8
  %520 = load i64, ptr %x387, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x400, ptr noundef %x401, i8 noundef zeroext 0, i64 noundef %519, i64 noundef %520)
  %521 = load i8, ptr %x401, align 1
  %522 = load i64, ptr %x366, align 8
  %523 = load i64, ptr %x389, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x402, ptr noundef %x403, i8 noundef zeroext %521, i64 noundef %522, i64 noundef %523)
  %524 = load i8, ptr %x403, align 1
  %525 = load i64, ptr %x368, align 8
  %526 = load i64, ptr %x391, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x404, ptr noundef %x405, i8 noundef zeroext %524, i64 noundef %525, i64 noundef %526)
  %527 = load i8, ptr %x405, align 1
  %528 = load i64, ptr %x370, align 8
  %529 = load i64, ptr %x393, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x406, ptr noundef %x407, i8 noundef zeroext %527, i64 noundef %528, i64 noundef %529)
  %530 = load i8, ptr %x407, align 1
  %531 = load i64, ptr %x372, align 8
  %532 = load i64, ptr %x395, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x408, ptr noundef %x409, i8 noundef zeroext %530, i64 noundef %531, i64 noundef %532)
  %533 = load i8, ptr %x409, align 1
  %534 = load i64, ptr %x374, align 8
  %535 = load i64, ptr %x397, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x410, ptr noundef %x411, i8 noundef zeroext %533, i64 noundef %534, i64 noundef %535)
  %536 = load i8, ptr %x411, align 1
  %537 = load i64, ptr %x376, align 8
  %538 = load i64, ptr %x399, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x412, ptr noundef %x413, i8 noundef zeroext %536, i64 noundef %537, i64 noundef %538)
  %539 = load i64, ptr %x400, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x414, ptr noundef %x415, i64 noundef %539, i64 noundef 7986114184663260229)
  %540 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x416, ptr noundef %x417, i64 noundef %540, i64 noundef -1)
  %541 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x418, ptr noundef %x419, i64 noundef %541, i64 noundef -1)
  %542 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x420, ptr noundef %x421, i64 noundef %542, i64 noundef -1)
  %543 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x422, ptr noundef %x423, i64 noundef %543, i64 noundef -4079331616924160545)
  %544 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x424, ptr noundef %x425, i64 noundef %544, i64 noundef 6348401684107011962)
  %545 = load i64, ptr %x414, align 8
  call void @fiat_p384_scalar_mulx_u64(ptr noundef %x426, ptr noundef %x427, i64 noundef %545, i64 noundef -1374695839762142861)
  %546 = load i64, ptr %x427, align 8
  %547 = load i64, ptr %x424, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x428, ptr noundef %x429, i8 noundef zeroext 0, i64 noundef %546, i64 noundef %547)
  %548 = load i8, ptr %x429, align 1
  %549 = load i64, ptr %x425, align 8
  %550 = load i64, ptr %x422, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x430, ptr noundef %x431, i8 noundef zeroext %548, i64 noundef %549, i64 noundef %550)
  %551 = load i8, ptr %x431, align 1
  %552 = load i64, ptr %x423, align 8
  %553 = load i64, ptr %x420, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x432, ptr noundef %x433, i8 noundef zeroext %551, i64 noundef %552, i64 noundef %553)
  %554 = load i8, ptr %x433, align 1
  %555 = load i64, ptr %x421, align 8
  %556 = load i64, ptr %x418, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x434, ptr noundef %x435, i8 noundef zeroext %554, i64 noundef %555, i64 noundef %556)
  %557 = load i8, ptr %x435, align 1
  %558 = load i64, ptr %x419, align 8
  %559 = load i64, ptr %x416, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x436, ptr noundef %x437, i8 noundef zeroext %557, i64 noundef %558, i64 noundef %559)
  %560 = load i8, ptr %x437, align 1
  %conv75 = zext i8 %560 to i64
  %561 = load i64, ptr %x417, align 8
  %add76 = add i64 %conv75, %561
  store i64 %add76, ptr %x438, align 8
  %562 = load i64, ptr %x400, align 8
  %563 = load i64, ptr %x426, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x439, ptr noundef %x440, i8 noundef zeroext 0, i64 noundef %562, i64 noundef %563)
  %564 = load i8, ptr %x440, align 1
  %565 = load i64, ptr %x402, align 8
  %566 = load i64, ptr %x428, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x441, ptr noundef %x442, i8 noundef zeroext %564, i64 noundef %565, i64 noundef %566)
  %567 = load i8, ptr %x442, align 1
  %568 = load i64, ptr %x404, align 8
  %569 = load i64, ptr %x430, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x443, ptr noundef %x444, i8 noundef zeroext %567, i64 noundef %568, i64 noundef %569)
  %570 = load i8, ptr %x444, align 1
  %571 = load i64, ptr %x406, align 8
  %572 = load i64, ptr %x432, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x445, ptr noundef %x446, i8 noundef zeroext %570, i64 noundef %571, i64 noundef %572)
  %573 = load i8, ptr %x446, align 1
  %574 = load i64, ptr %x408, align 8
  %575 = load i64, ptr %x434, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x447, ptr noundef %x448, i8 noundef zeroext %573, i64 noundef %574, i64 noundef %575)
  %576 = load i8, ptr %x448, align 1
  %577 = load i64, ptr %x410, align 8
  %578 = load i64, ptr %x436, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x449, ptr noundef %x450, i8 noundef zeroext %576, i64 noundef %577, i64 noundef %578)
  %579 = load i8, ptr %x450, align 1
  %580 = load i64, ptr %x412, align 8
  %581 = load i64, ptr %x438, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x451, ptr noundef %x452, i8 noundef zeroext %579, i64 noundef %580, i64 noundef %581)
  %582 = load i8, ptr %x452, align 1
  %conv77 = zext i8 %582 to i64
  %583 = load i8, ptr %x413, align 1
  %conv78 = zext i8 %583 to i64
  %add79 = add i64 %conv77, %conv78
  store i64 %add79, ptr %x453, align 8
  %584 = load i64, ptr %x441, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x454, ptr noundef %x455, i8 noundef zeroext 0, i64 noundef %584, i64 noundef -1374695839762142861)
  %585 = load i8, ptr %x455, align 1
  %586 = load i64, ptr %x443, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x456, ptr noundef %x457, i8 noundef zeroext %585, i64 noundef %586, i64 noundef 6348401684107011962)
  %587 = load i8, ptr %x457, align 1
  %588 = load i64, ptr %x445, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x458, ptr noundef %x459, i8 noundef zeroext %587, i64 noundef %588, i64 noundef -4079331616924160545)
  %589 = load i8, ptr %x459, align 1
  %590 = load i64, ptr %x447, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x460, ptr noundef %x461, i8 noundef zeroext %589, i64 noundef %590, i64 noundef -1)
  %591 = load i8, ptr %x461, align 1
  %592 = load i64, ptr %x449, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x462, ptr noundef %x463, i8 noundef zeroext %591, i64 noundef %592, i64 noundef -1)
  %593 = load i8, ptr %x463, align 1
  %594 = load i64, ptr %x451, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x464, ptr noundef %x465, i8 noundef zeroext %593, i64 noundef %594, i64 noundef -1)
  %595 = load i8, ptr %x465, align 1
  %596 = load i64, ptr %x453, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x466, ptr noundef %x467, i8 noundef zeroext %595, i64 noundef %596, i64 noundef 0)
  %597 = load i8, ptr %x467, align 1
  %598 = load i64, ptr %x454, align 8
  %599 = load i64, ptr %x441, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x468, i8 noundef zeroext %597, i64 noundef %598, i64 noundef %599)
  %600 = load i8, ptr %x467, align 1
  %601 = load i64, ptr %x456, align 8
  %602 = load i64, ptr %x443, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x469, i8 noundef zeroext %600, i64 noundef %601, i64 noundef %602)
  %603 = load i8, ptr %x467, align 1
  %604 = load i64, ptr %x458, align 8
  %605 = load i64, ptr %x445, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x470, i8 noundef zeroext %603, i64 noundef %604, i64 noundef %605)
  %606 = load i8, ptr %x467, align 1
  %607 = load i64, ptr %x460, align 8
  %608 = load i64, ptr %x447, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x471, i8 noundef zeroext %606, i64 noundef %607, i64 noundef %608)
  %609 = load i8, ptr %x467, align 1
  %610 = load i64, ptr %x462, align 8
  %611 = load i64, ptr %x449, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x472, i8 noundef zeroext %609, i64 noundef %610, i64 noundef %611)
  %612 = load i8, ptr %x467, align 1
  %613 = load i64, ptr %x464, align 8
  %614 = load i64, ptr %x451, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x473, i8 noundef zeroext %612, i64 noundef %613, i64 noundef %614)
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i8, align 1
  %x7 = alloca i64, align 8
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i8, align 1
  %x11 = alloca i64, align 8
  %x12 = alloca i8, align 1
  %x13 = alloca i64, align 8
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i8, align 1
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i8, align 1
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx8, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 4
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i64 noundef %21, i64 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 5
  %26 = load i64, ptr %arrayidx10, align 8
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 5
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i64 noundef %26, i64 noundef %28)
  %29 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %29, i64 noundef -1374695839762142861)
  %30 = load i8, ptr %x14, align 1
  %31 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %30, i64 noundef %31, i64 noundef 6348401684107011962)
  %32 = load i8, ptr %x16, align 1
  %33 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %32, i64 noundef %33, i64 noundef -4079331616924160545)
  %34 = load i8, ptr %x18, align 1
  %35 = load i64, ptr %x7, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %34, i64 noundef %35, i64 noundef -1)
  %36 = load i8, ptr %x20, align 1
  %37 = load i64, ptr %x9, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %36, i64 noundef %37, i64 noundef -1)
  %38 = load i8, ptr %x22, align 1
  %39 = load i64, ptr %x11, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %38, i64 noundef %39, i64 noundef -1)
  %40 = load i8, ptr %x24, align 1
  %41 = load i8, ptr %x12, align 1
  %conv = zext i8 %41 to i64
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %40, i64 noundef %conv, i64 noundef 0)
  %42 = load i8, ptr %x26, align 1
  %43 = load i64, ptr %x13, align 8
  %44 = load i64, ptr %x1, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x27, i8 noundef zeroext %42, i64 noundef %43, i64 noundef %44)
  %45 = load i8, ptr %x26, align 1
  %46 = load i64, ptr %x15, align 8
  %47 = load i64, ptr %x3, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x28, i8 noundef zeroext %45, i64 noundef %46, i64 noundef %47)
  %48 = load i8, ptr %x26, align 1
  %49 = load i64, ptr %x17, align 8
  %50 = load i64, ptr %x5, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x29, i8 noundef zeroext %48, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x26, align 1
  %52 = load i64, ptr %x19, align 8
  %53 = load i64, ptr %x7, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x30, i8 noundef zeroext %51, i64 noundef %52, i64 noundef %53)
  %54 = load i8, ptr %x26, align 1
  %55 = load i64, ptr %x21, align 8
  %56 = load i64, ptr %x9, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x31, i8 noundef zeroext %54, i64 noundef %55, i64 noundef %56)
  %57 = load i8, ptr %x26, align 1
  %58 = load i64, ptr %x23, align 8
  %59 = load i64, ptr %x11, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x32, i8 noundef zeroext %57, i64 noundef %58, i64 noundef %59)
  %60 = load i64, ptr %x27, align 8
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %61, i64 0
  store i64 %60, ptr %arrayidx12, align 8
  %62 = load i64, ptr %x28, align 8
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %63, i64 1
  store i64 %62, ptr %arrayidx13, align 8
  %64 = load i64, ptr %x29, align 8
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %65, i64 2
  store i64 %64, ptr %arrayidx14, align 8
  %66 = load i64, ptr %x30, align 8
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %67, i64 3
  store i64 %66, ptr %arrayidx15, align 8
  %68 = load i64, ptr %x31, align 8
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %69, i64 4
  store i64 %68, ptr %arrayidx16, align 8
  %70 = load i64, ptr %x32, align 8
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %71, i64 5
  store i64 %70, ptr %arrayidx17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i8, align 1
  %x7 = alloca i64, align 8
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i8, align 1
  %x11 = alloca i64, align 8
  %x12 = alloca i8, align 1
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx8, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 4
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i64 noundef %21, i64 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 5
  %26 = load i64, ptr %arrayidx10, align 8
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 5
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i64 noundef %26, i64 noundef %28)
  %29 = load i8, ptr %x12, align 1
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %29, i64 noundef 0, i64 noundef -1)
  %30 = load i64, ptr %x1, align 8
  %31 = load i64, ptr %x13, align 8
  %and = and i64 %31, -1374695839762142861
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef %30, i64 noundef %and)
  %32 = load i8, ptr %x15, align 1
  %33 = load i64, ptr %x3, align 8
  %34 = load i64, ptr %x13, align 8
  %and12 = and i64 %34, 6348401684107011962
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %and12)
  %35 = load i8, ptr %x17, align 1
  %36 = load i64, ptr %x5, align 8
  %37 = load i64, ptr %x13, align 8
  %and13 = and i64 %37, -4079331616924160545
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %and13)
  %38 = load i8, ptr %x19, align 1
  %39 = load i64, ptr %x7, align 8
  %40 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %40)
  %41 = load i8, ptr %x21, align 1
  %42 = load i64, ptr %x9, align 8
  %43 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x23, align 1
  %45 = load i64, ptr %x11, align 8
  %46 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %44, i64 noundef %45, i64 noundef %46)
  %47 = load i64, ptr %x14, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %48, i64 0
  store i64 %47, ptr %arrayidx14, align 8
  %49 = load i64, ptr %x16, align 8
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %50, i64 1
  store i64 %49, ptr %arrayidx15, align 8
  %51 = load i64, ptr %x18, align 8
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %52, i64 2
  store i64 %51, ptr %arrayidx16, align 8
  %53 = load i64, ptr %x20, align 8
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %54, i64 3
  store i64 %53, ptr %arrayidx17, align 8
  %55 = load i64, ptr %x22, align 8
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %56, i64 4
  store i64 %55, ptr %arrayidx18, align 8
  %57 = load i64, ptr %x24, align 8
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %58, i64 5
  store i64 %57, ptr %arrayidx19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  %x4 = alloca i8, align 1
  %x5 = alloca i64, align 8
  %x6 = alloca i8, align 1
  %x7 = alloca i64, align 8
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i8, align 1
  %x11 = alloca i64, align 8
  %x12 = alloca i8, align 1
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef 0, i64 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef 0, i64 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef 0, i64 noundef %10)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef 0, i64 noundef %13)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i64 noundef 0, i64 noundef %16)
  %17 = load i8, ptr %x12, align 1
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %17, i64 noundef 0, i64 noundef -1)
  %18 = load i64, ptr %x1, align 8
  %19 = load i64, ptr %x13, align 8
  %and = and i64 %19, -1374695839762142861
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef %18, i64 noundef %and)
  %20 = load i8, ptr %x15, align 1
  %21 = load i64, ptr %x3, align 8
  %22 = load i64, ptr %x13, align 8
  %and6 = and i64 %22, 6348401684107011962
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %20, i64 noundef %21, i64 noundef %and6)
  %23 = load i8, ptr %x17, align 1
  %24 = load i64, ptr %x5, align 8
  %25 = load i64, ptr %x13, align 8
  %and7 = and i64 %25, -4079331616924160545
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %and7)
  %26 = load i8, ptr %x19, align 1
  %27 = load i64, ptr %x7, align 8
  %28 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x21, align 1
  %30 = load i64, ptr %x9, align 8
  %31 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %31)
  %32 = load i8, ptr %x23, align 1
  %33 = load i64, ptr %x11, align 8
  %34 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %34)
  %35 = load i64, ptr %x14, align 8
  %36 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %36, i64 0
  store i64 %35, ptr %arrayidx8, align 8
  %37 = load i64, ptr %x16, align 8
  %38 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %38, i64 1
  store i64 %37, ptr %arrayidx9, align 8
  %39 = load i64, ptr %x18, align 8
  %40 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %40, i64 2
  store i64 %39, ptr %arrayidx10, align 8
  %41 = load i64, ptr %x20, align 8
  %42 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %42, i64 3
  store i64 %41, ptr %arrayidx11, align 8
  %43 = load i64, ptr %x22, align 8
  %44 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %44, i64 4
  store i64 %43, ptr %arrayidx12, align 8
  %45 = load i64, ptr %x24, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %46, i64 5
  store i64 %45, ptr %arrayidx13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_nonzero(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx2, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx3, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx4, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx5, align 8
  %or = or i64 %9, %11
  %or6 = or i64 %7, %or
  %or7 = or i64 %5, %or6
  %or8 = or i64 %3, %or7
  %or9 = or i64 %1, %or8
  store i64 %or9, ptr %x1, align 8
  %12 = load i64, ptr %x1, align 8
  %13 = load ptr, ptr %out1.addr, align 8
  store i64 %12, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %1 = load ptr, ptr %arg2.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 0
  %2 = load i64, ptr %arrayidx, align 8
  %3 = load ptr, ptr %arg3.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 0
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 4
  %24 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x5, i8 noundef zeroext %20, i64 noundef %22, i64 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %26, i64 5
  %27 = load i64, ptr %arrayidx10, align 8
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 5
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %25, i64 noundef %27, i64 noundef %29)
  %30 = load i64, ptr %x1, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %31, i64 0
  store i64 %30, ptr %arrayidx12, align 8
  %32 = load i64, ptr %x2, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 1
  store i64 %32, ptr %arrayidx13, align 8
  %34 = load i64, ptr %x3, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %35, i64 2
  store i64 %34, ptr %arrayidx14, align 8
  %36 = load i64, ptr %x4, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %37, i64 3
  store i64 %36, ptr %arrayidx15, align 8
  %38 = load i64, ptr %x5, align 8
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %39, i64 4
  store i64 %38, ptr %arrayidx16, align 8
  %40 = load i64, ptr %x6, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %41, i64 5
  store i64 %40, ptr %arrayidx17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  %x6 = alloca i64, align 8
  %x7 = alloca i8, align 1
  %x8 = alloca i64, align 8
  %x9 = alloca i8, align 1
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i8, align 1
  %x20 = alloca i8, align 1
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
  %x34 = alloca i8, align 1
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
  %x48 = alloca i8, align 1
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
  %x62 = alloca i8, align 1
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
  %x76 = alloca i8, align 1
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
  %x90 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 5
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 4
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 3
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx4, align 8
  store i64 %9, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 0
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load i64, ptr %x6, align 8
  %and = and i64 %12, 255
  %conv = trunc i64 %and to i8
  store i8 %conv, ptr %x7, align 1
  %13 = load i64, ptr %x6, align 8
  %shr = lshr i64 %13, 8
  store i64 %shr, ptr %x8, align 8
  %14 = load i64, ptr %x8, align 8
  %and6 = and i64 %14, 255
  %conv7 = trunc i64 %and6 to i8
  store i8 %conv7, ptr %x9, align 1
  %15 = load i64, ptr %x8, align 8
  %shr8 = lshr i64 %15, 8
  store i64 %shr8, ptr %x10, align 8
  %16 = load i64, ptr %x10, align 8
  %and9 = and i64 %16, 255
  %conv10 = trunc i64 %and9 to i8
  store i8 %conv10, ptr %x11, align 1
  %17 = load i64, ptr %x10, align 8
  %shr11 = lshr i64 %17, 8
  store i64 %shr11, ptr %x12, align 8
  %18 = load i64, ptr %x12, align 8
  %and12 = and i64 %18, 255
  %conv13 = trunc i64 %and12 to i8
  store i8 %conv13, ptr %x13, align 1
  %19 = load i64, ptr %x12, align 8
  %shr14 = lshr i64 %19, 8
  store i64 %shr14, ptr %x14, align 8
  %20 = load i64, ptr %x14, align 8
  %and15 = and i64 %20, 255
  %conv16 = trunc i64 %and15 to i8
  store i8 %conv16, ptr %x15, align 1
  %21 = load i64, ptr %x14, align 8
  %shr17 = lshr i64 %21, 8
  store i64 %shr17, ptr %x16, align 8
  %22 = load i64, ptr %x16, align 8
  %and18 = and i64 %22, 255
  %conv19 = trunc i64 %and18 to i8
  store i8 %conv19, ptr %x17, align 1
  %23 = load i64, ptr %x16, align 8
  %shr20 = lshr i64 %23, 8
  store i64 %shr20, ptr %x18, align 8
  %24 = load i64, ptr %x18, align 8
  %and21 = and i64 %24, 255
  %conv22 = trunc i64 %and21 to i8
  store i8 %conv22, ptr %x19, align 1
  %25 = load i64, ptr %x18, align 8
  %shr23 = lshr i64 %25, 8
  %conv24 = trunc i64 %shr23 to i8
  store i8 %conv24, ptr %x20, align 1
  %26 = load i64, ptr %x5, align 8
  %and25 = and i64 %26, 255
  %conv26 = trunc i64 %and25 to i8
  store i8 %conv26, ptr %x21, align 1
  %27 = load i64, ptr %x5, align 8
  %shr27 = lshr i64 %27, 8
  store i64 %shr27, ptr %x22, align 8
  %28 = load i64, ptr %x22, align 8
  %and28 = and i64 %28, 255
  %conv29 = trunc i64 %and28 to i8
  store i8 %conv29, ptr %x23, align 1
  %29 = load i64, ptr %x22, align 8
  %shr30 = lshr i64 %29, 8
  store i64 %shr30, ptr %x24, align 8
  %30 = load i64, ptr %x24, align 8
  %and31 = and i64 %30, 255
  %conv32 = trunc i64 %and31 to i8
  store i8 %conv32, ptr %x25, align 1
  %31 = load i64, ptr %x24, align 8
  %shr33 = lshr i64 %31, 8
  store i64 %shr33, ptr %x26, align 8
  %32 = load i64, ptr %x26, align 8
  %and34 = and i64 %32, 255
  %conv35 = trunc i64 %and34 to i8
  store i8 %conv35, ptr %x27, align 1
  %33 = load i64, ptr %x26, align 8
  %shr36 = lshr i64 %33, 8
  store i64 %shr36, ptr %x28, align 8
  %34 = load i64, ptr %x28, align 8
  %and37 = and i64 %34, 255
  %conv38 = trunc i64 %and37 to i8
  store i8 %conv38, ptr %x29, align 1
  %35 = load i64, ptr %x28, align 8
  %shr39 = lshr i64 %35, 8
  store i64 %shr39, ptr %x30, align 8
  %36 = load i64, ptr %x30, align 8
  %and40 = and i64 %36, 255
  %conv41 = trunc i64 %and40 to i8
  store i8 %conv41, ptr %x31, align 1
  %37 = load i64, ptr %x30, align 8
  %shr42 = lshr i64 %37, 8
  store i64 %shr42, ptr %x32, align 8
  %38 = load i64, ptr %x32, align 8
  %and43 = and i64 %38, 255
  %conv44 = trunc i64 %and43 to i8
  store i8 %conv44, ptr %x33, align 1
  %39 = load i64, ptr %x32, align 8
  %shr45 = lshr i64 %39, 8
  %conv46 = trunc i64 %shr45 to i8
  store i8 %conv46, ptr %x34, align 1
  %40 = load i64, ptr %x4, align 8
  %and47 = and i64 %40, 255
  %conv48 = trunc i64 %and47 to i8
  store i8 %conv48, ptr %x35, align 1
  %41 = load i64, ptr %x4, align 8
  %shr49 = lshr i64 %41, 8
  store i64 %shr49, ptr %x36, align 8
  %42 = load i64, ptr %x36, align 8
  %and50 = and i64 %42, 255
  %conv51 = trunc i64 %and50 to i8
  store i8 %conv51, ptr %x37, align 1
  %43 = load i64, ptr %x36, align 8
  %shr52 = lshr i64 %43, 8
  store i64 %shr52, ptr %x38, align 8
  %44 = load i64, ptr %x38, align 8
  %and53 = and i64 %44, 255
  %conv54 = trunc i64 %and53 to i8
  store i8 %conv54, ptr %x39, align 1
  %45 = load i64, ptr %x38, align 8
  %shr55 = lshr i64 %45, 8
  store i64 %shr55, ptr %x40, align 8
  %46 = load i64, ptr %x40, align 8
  %and56 = and i64 %46, 255
  %conv57 = trunc i64 %and56 to i8
  store i8 %conv57, ptr %x41, align 1
  %47 = load i64, ptr %x40, align 8
  %shr58 = lshr i64 %47, 8
  store i64 %shr58, ptr %x42, align 8
  %48 = load i64, ptr %x42, align 8
  %and59 = and i64 %48, 255
  %conv60 = trunc i64 %and59 to i8
  store i8 %conv60, ptr %x43, align 1
  %49 = load i64, ptr %x42, align 8
  %shr61 = lshr i64 %49, 8
  store i64 %shr61, ptr %x44, align 8
  %50 = load i64, ptr %x44, align 8
  %and62 = and i64 %50, 255
  %conv63 = trunc i64 %and62 to i8
  store i8 %conv63, ptr %x45, align 1
  %51 = load i64, ptr %x44, align 8
  %shr64 = lshr i64 %51, 8
  store i64 %shr64, ptr %x46, align 8
  %52 = load i64, ptr %x46, align 8
  %and65 = and i64 %52, 255
  %conv66 = trunc i64 %and65 to i8
  store i8 %conv66, ptr %x47, align 1
  %53 = load i64, ptr %x46, align 8
  %shr67 = lshr i64 %53, 8
  %conv68 = trunc i64 %shr67 to i8
  store i8 %conv68, ptr %x48, align 1
  %54 = load i64, ptr %x3, align 8
  %and69 = and i64 %54, 255
  %conv70 = trunc i64 %and69 to i8
  store i8 %conv70, ptr %x49, align 1
  %55 = load i64, ptr %x3, align 8
  %shr71 = lshr i64 %55, 8
  store i64 %shr71, ptr %x50, align 8
  %56 = load i64, ptr %x50, align 8
  %and72 = and i64 %56, 255
  %conv73 = trunc i64 %and72 to i8
  store i8 %conv73, ptr %x51, align 1
  %57 = load i64, ptr %x50, align 8
  %shr74 = lshr i64 %57, 8
  store i64 %shr74, ptr %x52, align 8
  %58 = load i64, ptr %x52, align 8
  %and75 = and i64 %58, 255
  %conv76 = trunc i64 %and75 to i8
  store i8 %conv76, ptr %x53, align 1
  %59 = load i64, ptr %x52, align 8
  %shr77 = lshr i64 %59, 8
  store i64 %shr77, ptr %x54, align 8
  %60 = load i64, ptr %x54, align 8
  %and78 = and i64 %60, 255
  %conv79 = trunc i64 %and78 to i8
  store i8 %conv79, ptr %x55, align 1
  %61 = load i64, ptr %x54, align 8
  %shr80 = lshr i64 %61, 8
  store i64 %shr80, ptr %x56, align 8
  %62 = load i64, ptr %x56, align 8
  %and81 = and i64 %62, 255
  %conv82 = trunc i64 %and81 to i8
  store i8 %conv82, ptr %x57, align 1
  %63 = load i64, ptr %x56, align 8
  %shr83 = lshr i64 %63, 8
  store i64 %shr83, ptr %x58, align 8
  %64 = load i64, ptr %x58, align 8
  %and84 = and i64 %64, 255
  %conv85 = trunc i64 %and84 to i8
  store i8 %conv85, ptr %x59, align 1
  %65 = load i64, ptr %x58, align 8
  %shr86 = lshr i64 %65, 8
  store i64 %shr86, ptr %x60, align 8
  %66 = load i64, ptr %x60, align 8
  %and87 = and i64 %66, 255
  %conv88 = trunc i64 %and87 to i8
  store i8 %conv88, ptr %x61, align 1
  %67 = load i64, ptr %x60, align 8
  %shr89 = lshr i64 %67, 8
  %conv90 = trunc i64 %shr89 to i8
  store i8 %conv90, ptr %x62, align 1
  %68 = load i64, ptr %x2, align 8
  %and91 = and i64 %68, 255
  %conv92 = trunc i64 %and91 to i8
  store i8 %conv92, ptr %x63, align 1
  %69 = load i64, ptr %x2, align 8
  %shr93 = lshr i64 %69, 8
  store i64 %shr93, ptr %x64, align 8
  %70 = load i64, ptr %x64, align 8
  %and94 = and i64 %70, 255
  %conv95 = trunc i64 %and94 to i8
  store i8 %conv95, ptr %x65, align 1
  %71 = load i64, ptr %x64, align 8
  %shr96 = lshr i64 %71, 8
  store i64 %shr96, ptr %x66, align 8
  %72 = load i64, ptr %x66, align 8
  %and97 = and i64 %72, 255
  %conv98 = trunc i64 %and97 to i8
  store i8 %conv98, ptr %x67, align 1
  %73 = load i64, ptr %x66, align 8
  %shr99 = lshr i64 %73, 8
  store i64 %shr99, ptr %x68, align 8
  %74 = load i64, ptr %x68, align 8
  %and100 = and i64 %74, 255
  %conv101 = trunc i64 %and100 to i8
  store i8 %conv101, ptr %x69, align 1
  %75 = load i64, ptr %x68, align 8
  %shr102 = lshr i64 %75, 8
  store i64 %shr102, ptr %x70, align 8
  %76 = load i64, ptr %x70, align 8
  %and103 = and i64 %76, 255
  %conv104 = trunc i64 %and103 to i8
  store i8 %conv104, ptr %x71, align 1
  %77 = load i64, ptr %x70, align 8
  %shr105 = lshr i64 %77, 8
  store i64 %shr105, ptr %x72, align 8
  %78 = load i64, ptr %x72, align 8
  %and106 = and i64 %78, 255
  %conv107 = trunc i64 %and106 to i8
  store i8 %conv107, ptr %x73, align 1
  %79 = load i64, ptr %x72, align 8
  %shr108 = lshr i64 %79, 8
  store i64 %shr108, ptr %x74, align 8
  %80 = load i64, ptr %x74, align 8
  %and109 = and i64 %80, 255
  %conv110 = trunc i64 %and109 to i8
  store i8 %conv110, ptr %x75, align 1
  %81 = load i64, ptr %x74, align 8
  %shr111 = lshr i64 %81, 8
  %conv112 = trunc i64 %shr111 to i8
  store i8 %conv112, ptr %x76, align 1
  %82 = load i64, ptr %x1, align 8
  %and113 = and i64 %82, 255
  %conv114 = trunc i64 %and113 to i8
  store i8 %conv114, ptr %x77, align 1
  %83 = load i64, ptr %x1, align 8
  %shr115 = lshr i64 %83, 8
  store i64 %shr115, ptr %x78, align 8
  %84 = load i64, ptr %x78, align 8
  %and116 = and i64 %84, 255
  %conv117 = trunc i64 %and116 to i8
  store i8 %conv117, ptr %x79, align 1
  %85 = load i64, ptr %x78, align 8
  %shr118 = lshr i64 %85, 8
  store i64 %shr118, ptr %x80, align 8
  %86 = load i64, ptr %x80, align 8
  %and119 = and i64 %86, 255
  %conv120 = trunc i64 %and119 to i8
  store i8 %conv120, ptr %x81, align 1
  %87 = load i64, ptr %x80, align 8
  %shr121 = lshr i64 %87, 8
  store i64 %shr121, ptr %x82, align 8
  %88 = load i64, ptr %x82, align 8
  %and122 = and i64 %88, 255
  %conv123 = trunc i64 %and122 to i8
  store i8 %conv123, ptr %x83, align 1
  %89 = load i64, ptr %x82, align 8
  %shr124 = lshr i64 %89, 8
  store i64 %shr124, ptr %x84, align 8
  %90 = load i64, ptr %x84, align 8
  %and125 = and i64 %90, 255
  %conv126 = trunc i64 %and125 to i8
  store i8 %conv126, ptr %x85, align 1
  %91 = load i64, ptr %x84, align 8
  %shr127 = lshr i64 %91, 8
  store i64 %shr127, ptr %x86, align 8
  %92 = load i64, ptr %x86, align 8
  %and128 = and i64 %92, 255
  %conv129 = trunc i64 %and128 to i8
  store i8 %conv129, ptr %x87, align 1
  %93 = load i64, ptr %x86, align 8
  %shr130 = lshr i64 %93, 8
  store i64 %shr130, ptr %x88, align 8
  %94 = load i64, ptr %x88, align 8
  %and131 = and i64 %94, 255
  %conv132 = trunc i64 %and131 to i8
  store i8 %conv132, ptr %x89, align 1
  %95 = load i64, ptr %x88, align 8
  %shr133 = lshr i64 %95, 8
  %conv134 = trunc i64 %shr133 to i8
  store i8 %conv134, ptr %x90, align 1
  %96 = load i8, ptr %x7, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %97, i64 0
  store i8 %96, ptr %arrayidx135, align 1
  %98 = load i8, ptr %x9, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %98, ptr %arrayidx136, align 1
  %100 = load i8, ptr %x11, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %101, i64 2
  store i8 %100, ptr %arrayidx137, align 1
  %102 = load i8, ptr %x13, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %103, i64 3
  store i8 %102, ptr %arrayidx138, align 1
  %104 = load i8, ptr %x15, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %105, i64 4
  store i8 %104, ptr %arrayidx139, align 1
  %106 = load i8, ptr %x17, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %107, i64 5
  store i8 %106, ptr %arrayidx140, align 1
  %108 = load i8, ptr %x19, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %109, i64 6
  store i8 %108, ptr %arrayidx141, align 1
  %110 = load i8, ptr %x20, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %111, i64 7
  store i8 %110, ptr %arrayidx142, align 1
  %112 = load i8, ptr %x21, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %113, i64 8
  store i8 %112, ptr %arrayidx143, align 1
  %114 = load i8, ptr %x23, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %115, i64 9
  store i8 %114, ptr %arrayidx144, align 1
  %116 = load i8, ptr %x25, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %117, i64 10
  store i8 %116, ptr %arrayidx145, align 1
  %118 = load i8, ptr %x27, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %119, i64 11
  store i8 %118, ptr %arrayidx146, align 1
  %120 = load i8, ptr %x29, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %121, i64 12
  store i8 %120, ptr %arrayidx147, align 1
  %122 = load i8, ptr %x31, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %123, i64 13
  store i8 %122, ptr %arrayidx148, align 1
  %124 = load i8, ptr %x33, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %125, i64 14
  store i8 %124, ptr %arrayidx149, align 1
  %126 = load i8, ptr %x34, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %127, i64 15
  store i8 %126, ptr %arrayidx150, align 1
  %128 = load i8, ptr %x35, align 1
  %129 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %129, i64 16
  store i8 %128, ptr %arrayidx151, align 1
  %130 = load i8, ptr %x37, align 1
  %131 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %131, i64 17
  store i8 %130, ptr %arrayidx152, align 1
  %132 = load i8, ptr %x39, align 1
  %133 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %133, i64 18
  store i8 %132, ptr %arrayidx153, align 1
  %134 = load i8, ptr %x41, align 1
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %135, i64 19
  store i8 %134, ptr %arrayidx154, align 1
  %136 = load i8, ptr %x43, align 1
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %137, i64 20
  store i8 %136, ptr %arrayidx155, align 1
  %138 = load i8, ptr %x45, align 1
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %139, i64 21
  store i8 %138, ptr %arrayidx156, align 1
  %140 = load i8, ptr %x47, align 1
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %141, i64 22
  store i8 %140, ptr %arrayidx157, align 1
  %142 = load i8, ptr %x48, align 1
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %143, i64 23
  store i8 %142, ptr %arrayidx158, align 1
  %144 = load i8, ptr %x49, align 1
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %145, i64 24
  store i8 %144, ptr %arrayidx159, align 1
  %146 = load i8, ptr %x51, align 1
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %147, i64 25
  store i8 %146, ptr %arrayidx160, align 1
  %148 = load i8, ptr %x53, align 1
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %149, i64 26
  store i8 %148, ptr %arrayidx161, align 1
  %150 = load i8, ptr %x55, align 1
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %151, i64 27
  store i8 %150, ptr %arrayidx162, align 1
  %152 = load i8, ptr %x57, align 1
  %153 = load ptr, ptr %out1.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %153, i64 28
  store i8 %152, ptr %arrayidx163, align 1
  %154 = load i8, ptr %x59, align 1
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %155, i64 29
  store i8 %154, ptr %arrayidx164, align 1
  %156 = load i8, ptr %x61, align 1
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %157, i64 30
  store i8 %156, ptr %arrayidx165, align 1
  %158 = load i8, ptr %x62, align 1
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %159, i64 31
  store i8 %158, ptr %arrayidx166, align 1
  %160 = load i8, ptr %x63, align 1
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %161, i64 32
  store i8 %160, ptr %arrayidx167, align 1
  %162 = load i8, ptr %x65, align 1
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %163, i64 33
  store i8 %162, ptr %arrayidx168, align 1
  %164 = load i8, ptr %x67, align 1
  %165 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %165, i64 34
  store i8 %164, ptr %arrayidx169, align 1
  %166 = load i8, ptr %x69, align 1
  %167 = load ptr, ptr %out1.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %167, i64 35
  store i8 %166, ptr %arrayidx170, align 1
  %168 = load i8, ptr %x71, align 1
  %169 = load ptr, ptr %out1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %169, i64 36
  store i8 %168, ptr %arrayidx171, align 1
  %170 = load i8, ptr %x73, align 1
  %171 = load ptr, ptr %out1.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %171, i64 37
  store i8 %170, ptr %arrayidx172, align 1
  %172 = load i8, ptr %x75, align 1
  %173 = load ptr, ptr %out1.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %173, i64 38
  store i8 %172, ptr %arrayidx173, align 1
  %174 = load i8, ptr %x76, align 1
  %175 = load ptr, ptr %out1.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %175, i64 39
  store i8 %174, ptr %arrayidx174, align 1
  %176 = load i8, ptr %x77, align 1
  %177 = load ptr, ptr %out1.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %177, i64 40
  store i8 %176, ptr %arrayidx175, align 1
  %178 = load i8, ptr %x79, align 1
  %179 = load ptr, ptr %out1.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %179, i64 41
  store i8 %178, ptr %arrayidx176, align 1
  %180 = load i8, ptr %x81, align 1
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %181, i64 42
  store i8 %180, ptr %arrayidx177, align 1
  %182 = load i8, ptr %x83, align 1
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %183, i64 43
  store i8 %182, ptr %arrayidx178, align 1
  %184 = load i8, ptr %x85, align 1
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %185, i64 44
  store i8 %184, ptr %arrayidx179, align 1
  %186 = load i8, ptr %x87, align 1
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %187, i64 45
  store i8 %186, ptr %arrayidx180, align 1
  %188 = load i8, ptr %x89, align 1
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx181 = getelementptr inbounds i8, ptr %189, i64 46
  store i8 %188, ptr %arrayidx181, align 1
  %190 = load i8, ptr %x90, align 1
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %191, i64 47
  store i8 %190, ptr %arrayidx182, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i8, align 1
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 47
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 56
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 46
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 48
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 45
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 40
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 44
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 32
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 43
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 24
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 42
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 16
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 41
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %shl18 = shl i64 %conv17, 8
  store i64 %shl18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 40
  %15 = load i8, ptr %arrayidx19, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 39
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 56
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 38
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 48
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 37
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 40
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 36
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i64
  %shl31 = shl i64 %conv30, 32
  store i64 %shl31, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 35
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i64
  %shl34 = shl i64 %conv33, 24
  store i64 %shl34, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 34
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i64
  %shl37 = shl i64 %conv36, 16
  store i64 %shl37, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 33
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i64
  %shl40 = shl i64 %conv39, 8
  store i64 %shl40, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 32
  %31 = load i8, ptr %arrayidx41, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 31
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i64
  %shl44 = shl i64 %conv43, 56
  store i64 %shl44, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 30
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i64
  %shl47 = shl i64 %conv46, 48
  store i64 %shl47, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 29
  %37 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %37 to i64
  %shl50 = shl i64 %conv49, 40
  store i64 %shl50, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 28
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i64
  %shl53 = shl i64 %conv52, 32
  store i64 %shl53, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 27
  %41 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %41 to i64
  %shl56 = shl i64 %conv55, 24
  store i64 %shl56, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %42, i64 26
  %43 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %43 to i64
  %shl59 = shl i64 %conv58, 16
  store i64 %shl59, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %44, i64 25
  %45 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %45 to i64
  %shl62 = shl i64 %conv61, 8
  store i64 %shl62, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %46, i64 24
  %47 = load i8, ptr %arrayidx63, align 1
  store i8 %47, ptr %x24, align 1
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %48, i64 23
  %49 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %49 to i64
  %shl66 = shl i64 %conv65, 56
  store i64 %shl66, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 22
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i64
  %shl69 = shl i64 %conv68, 48
  store i64 %shl69, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 21
  %53 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %53 to i64
  %shl72 = shl i64 %conv71, 40
  store i64 %shl72, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 20
  %55 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %55 to i64
  %shl75 = shl i64 %conv74, 32
  store i64 %shl75, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %56, i64 19
  %57 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %57 to i64
  %shl78 = shl i64 %conv77, 24
  store i64 %shl78, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %58, i64 18
  %59 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %59 to i64
  %shl81 = shl i64 %conv80, 16
  store i64 %shl81, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %60, i64 17
  %61 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %61 to i64
  %shl84 = shl i64 %conv83, 8
  store i64 %shl84, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %62, i64 16
  %63 = load i8, ptr %arrayidx85, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %64, i64 15
  %65 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %65 to i64
  %shl88 = shl i64 %conv87, 56
  store i64 %shl88, ptr %x33, align 8
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %66, i64 14
  %67 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %67 to i64
  %shl91 = shl i64 %conv90, 48
  store i64 %shl91, ptr %x34, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %68, i64 13
  %69 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %69 to i64
  %shl94 = shl i64 %conv93, 40
  store i64 %shl94, ptr %x35, align 8
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %70, i64 12
  %71 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %71 to i64
  %shl97 = shl i64 %conv96, 32
  store i64 %shl97, ptr %x36, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %72, i64 11
  %73 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %73 to i64
  %shl100 = shl i64 %conv99, 24
  store i64 %shl100, ptr %x37, align 8
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %74, i64 10
  %75 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %75 to i64
  %shl103 = shl i64 %conv102, 16
  store i64 %shl103, ptr %x38, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %76, i64 9
  %77 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %77 to i64
  %shl106 = shl i64 %conv105, 8
  store i64 %shl106, ptr %x39, align 8
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %78, i64 8
  %79 = load i8, ptr %arrayidx107, align 1
  store i8 %79, ptr %x40, align 1
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %80, i64 7
  %81 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %81 to i64
  %shl110 = shl i64 %conv109, 56
  store i64 %shl110, ptr %x41, align 8
  %82 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %82, i64 6
  %83 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %83 to i64
  %shl113 = shl i64 %conv112, 48
  store i64 %shl113, ptr %x42, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %84, i64 5
  %85 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %85 to i64
  %shl116 = shl i64 %conv115, 40
  store i64 %shl116, ptr %x43, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %86, i64 4
  %87 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %87 to i64
  %shl119 = shl i64 %conv118, 32
  store i64 %shl119, ptr %x44, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %88, i64 3
  %89 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %89 to i64
  %shl122 = shl i64 %conv121, 24
  store i64 %shl122, ptr %x45, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %90, i64 2
  %91 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %91 to i64
  %shl125 = shl i64 %conv124, 16
  store i64 %shl125, ptr %x46, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %92, i64 1
  %93 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %93 to i64
  %shl128 = shl i64 %conv127, 8
  store i64 %shl128, ptr %x47, align 8
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx129, align 1
  store i8 %95, ptr %x48, align 1
  %96 = load i64, ptr %x47, align 8
  %97 = load i8, ptr %x48, align 1
  %conv130 = zext i8 %97 to i64
  %add = add i64 %96, %conv130
  store i64 %add, ptr %x49, align 8
  %98 = load i64, ptr %x46, align 8
  %99 = load i64, ptr %x49, align 8
  %add131 = add i64 %98, %99
  store i64 %add131, ptr %x50, align 8
  %100 = load i64, ptr %x45, align 8
  %101 = load i64, ptr %x50, align 8
  %add132 = add i64 %100, %101
  store i64 %add132, ptr %x51, align 8
  %102 = load i64, ptr %x44, align 8
  %103 = load i64, ptr %x51, align 8
  %add133 = add i64 %102, %103
  store i64 %add133, ptr %x52, align 8
  %104 = load i64, ptr %x43, align 8
  %105 = load i64, ptr %x52, align 8
  %add134 = add i64 %104, %105
  store i64 %add134, ptr %x53, align 8
  %106 = load i64, ptr %x42, align 8
  %107 = load i64, ptr %x53, align 8
  %add135 = add i64 %106, %107
  store i64 %add135, ptr %x54, align 8
  %108 = load i64, ptr %x41, align 8
  %109 = load i64, ptr %x54, align 8
  %add136 = add i64 %108, %109
  store i64 %add136, ptr %x55, align 8
  %110 = load i64, ptr %x39, align 8
  %111 = load i8, ptr %x40, align 1
  %conv137 = zext i8 %111 to i64
  %add138 = add i64 %110, %conv137
  store i64 %add138, ptr %x56, align 8
  %112 = load i64, ptr %x38, align 8
  %113 = load i64, ptr %x56, align 8
  %add139 = add i64 %112, %113
  store i64 %add139, ptr %x57, align 8
  %114 = load i64, ptr %x37, align 8
  %115 = load i64, ptr %x57, align 8
  %add140 = add i64 %114, %115
  store i64 %add140, ptr %x58, align 8
  %116 = load i64, ptr %x36, align 8
  %117 = load i64, ptr %x58, align 8
  %add141 = add i64 %116, %117
  store i64 %add141, ptr %x59, align 8
  %118 = load i64, ptr %x35, align 8
  %119 = load i64, ptr %x59, align 8
  %add142 = add i64 %118, %119
  store i64 %add142, ptr %x60, align 8
  %120 = load i64, ptr %x34, align 8
  %121 = load i64, ptr %x60, align 8
  %add143 = add i64 %120, %121
  store i64 %add143, ptr %x61, align 8
  %122 = load i64, ptr %x33, align 8
  %123 = load i64, ptr %x61, align 8
  %add144 = add i64 %122, %123
  store i64 %add144, ptr %x62, align 8
  %124 = load i64, ptr %x31, align 8
  %125 = load i8, ptr %x32, align 1
  %conv145 = zext i8 %125 to i64
  %add146 = add i64 %124, %conv145
  store i64 %add146, ptr %x63, align 8
  %126 = load i64, ptr %x30, align 8
  %127 = load i64, ptr %x63, align 8
  %add147 = add i64 %126, %127
  store i64 %add147, ptr %x64, align 8
  %128 = load i64, ptr %x29, align 8
  %129 = load i64, ptr %x64, align 8
  %add148 = add i64 %128, %129
  store i64 %add148, ptr %x65, align 8
  %130 = load i64, ptr %x28, align 8
  %131 = load i64, ptr %x65, align 8
  %add149 = add i64 %130, %131
  store i64 %add149, ptr %x66, align 8
  %132 = load i64, ptr %x27, align 8
  %133 = load i64, ptr %x66, align 8
  %add150 = add i64 %132, %133
  store i64 %add150, ptr %x67, align 8
  %134 = load i64, ptr %x26, align 8
  %135 = load i64, ptr %x67, align 8
  %add151 = add i64 %134, %135
  store i64 %add151, ptr %x68, align 8
  %136 = load i64, ptr %x25, align 8
  %137 = load i64, ptr %x68, align 8
  %add152 = add i64 %136, %137
  store i64 %add152, ptr %x69, align 8
  %138 = load i64, ptr %x23, align 8
  %139 = load i8, ptr %x24, align 1
  %conv153 = zext i8 %139 to i64
  %add154 = add i64 %138, %conv153
  store i64 %add154, ptr %x70, align 8
  %140 = load i64, ptr %x22, align 8
  %141 = load i64, ptr %x70, align 8
  %add155 = add i64 %140, %141
  store i64 %add155, ptr %x71, align 8
  %142 = load i64, ptr %x21, align 8
  %143 = load i64, ptr %x71, align 8
  %add156 = add i64 %142, %143
  store i64 %add156, ptr %x72, align 8
  %144 = load i64, ptr %x20, align 8
  %145 = load i64, ptr %x72, align 8
  %add157 = add i64 %144, %145
  store i64 %add157, ptr %x73, align 8
  %146 = load i64, ptr %x19, align 8
  %147 = load i64, ptr %x73, align 8
  %add158 = add i64 %146, %147
  store i64 %add158, ptr %x74, align 8
  %148 = load i64, ptr %x18, align 8
  %149 = load i64, ptr %x74, align 8
  %add159 = add i64 %148, %149
  store i64 %add159, ptr %x75, align 8
  %150 = load i64, ptr %x17, align 8
  %151 = load i64, ptr %x75, align 8
  %add160 = add i64 %150, %151
  store i64 %add160, ptr %x76, align 8
  %152 = load i64, ptr %x15, align 8
  %153 = load i8, ptr %x16, align 1
  %conv161 = zext i8 %153 to i64
  %add162 = add i64 %152, %conv161
  store i64 %add162, ptr %x77, align 8
  %154 = load i64, ptr %x14, align 8
  %155 = load i64, ptr %x77, align 8
  %add163 = add i64 %154, %155
  store i64 %add163, ptr %x78, align 8
  %156 = load i64, ptr %x13, align 8
  %157 = load i64, ptr %x78, align 8
  %add164 = add i64 %156, %157
  store i64 %add164, ptr %x79, align 8
  %158 = load i64, ptr %x12, align 8
  %159 = load i64, ptr %x79, align 8
  %add165 = add i64 %158, %159
  store i64 %add165, ptr %x80, align 8
  %160 = load i64, ptr %x11, align 8
  %161 = load i64, ptr %x80, align 8
  %add166 = add i64 %160, %161
  store i64 %add166, ptr %x81, align 8
  %162 = load i64, ptr %x10, align 8
  %163 = load i64, ptr %x81, align 8
  %add167 = add i64 %162, %163
  store i64 %add167, ptr %x82, align 8
  %164 = load i64, ptr %x9, align 8
  %165 = load i64, ptr %x82, align 8
  %add168 = add i64 %164, %165
  store i64 %add168, ptr %x83, align 8
  %166 = load i64, ptr %x7, align 8
  %167 = load i8, ptr %x8, align 1
  %conv169 = zext i8 %167 to i64
  %add170 = add i64 %166, %conv169
  store i64 %add170, ptr %x84, align 8
  %168 = load i64, ptr %x6, align 8
  %169 = load i64, ptr %x84, align 8
  %add171 = add i64 %168, %169
  store i64 %add171, ptr %x85, align 8
  %170 = load i64, ptr %x5, align 8
  %171 = load i64, ptr %x85, align 8
  %add172 = add i64 %170, %171
  store i64 %add172, ptr %x86, align 8
  %172 = load i64, ptr %x4, align 8
  %173 = load i64, ptr %x86, align 8
  %add173 = add i64 %172, %173
  store i64 %add173, ptr %x87, align 8
  %174 = load i64, ptr %x3, align 8
  %175 = load i64, ptr %x87, align 8
  %add174 = add i64 %174, %175
  store i64 %add174, ptr %x88, align 8
  %176 = load i64, ptr %x2, align 8
  %177 = load i64, ptr %x88, align 8
  %add175 = add i64 %176, %177
  store i64 %add175, ptr %x89, align 8
  %178 = load i64, ptr %x1, align 8
  %179 = load i64, ptr %x89, align 8
  %add176 = add i64 %178, %179
  store i64 %add176, ptr %x90, align 8
  %180 = load i64, ptr %x55, align 8
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, ptr %181, i64 0
  store i64 %180, ptr %arrayidx177, align 8
  %182 = load i64, ptr %x62, align 8
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx178 = getelementptr inbounds i64, ptr %183, i64 1
  store i64 %182, ptr %arrayidx178, align 8
  %184 = load i64, ptr %x69, align 8
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx179 = getelementptr inbounds i64, ptr %185, i64 2
  store i64 %184, ptr %arrayidx179, align 8
  %186 = load i64, ptr %x76, align 8
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx180 = getelementptr inbounds i64, ptr %187, i64 3
  store i64 %186, ptr %arrayidx180, align 8
  %188 = load i64, ptr %x83, align 8
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx181 = getelementptr inbounds i64, ptr %189, i64 4
  store i64 %188, ptr %arrayidx181, align 8
  %190 = load i64, ptr %x90, align 8
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx182 = getelementptr inbounds i64, ptr %191, i64 5
  store i64 %190, ptr %arrayidx182, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_set_one(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1374695839762142861, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 -6348401684107011963, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 4079331616924160544, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 0, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 0, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 0, ptr %arrayidx5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_msat(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 -1374695839762142861, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 6348401684107011962, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 -4079331616924160545, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 -1, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 -1, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 -1, ptr %arrayidx5, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 6
  store i64 0, ptr %arrayidx6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i64 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %out3.addr = alloca ptr, align 8
  %out4.addr = alloca ptr, align 8
  %out5.addr = alloca ptr, align 8
  %arg1.addr = alloca i64, align 8
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %arg4.addr = alloca ptr, align 8
  %arg5.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i8, align 1
  %x4 = alloca i64, align 8
  %x5 = alloca i8, align 1
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
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
  %x42 = alloca i8, align 1
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
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i8, align 1
  %x77 = alloca i64, align 8
  %x78 = alloca i8, align 1
  %x79 = alloca i64, align 8
  %x80 = alloca i8, align 1
  %x81 = alloca i64, align 8
  %x82 = alloca i8, align 1
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
  %x85 = alloca i64, align 8
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
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i64, align 8
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i8, align 1
  %x114 = alloca i64, align 8
  %x115 = alloca i8, align 1
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
  %x127 = alloca i64, align 8
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
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
  %x159 = alloca i8, align 1
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
  %x173 = alloca i64, align 8
  %x174 = alloca i64, align 8
  %x175 = alloca i64, align 8
  %x176 = alloca i64, align 8
  %x177 = alloca i64, align 8
  %x178 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store ptr %out3, ptr %out3.addr, align 8
  store ptr %out4, ptr %out4.addr, align 8
  store ptr %out5, ptr %out5.addr, align 8
  store i64 %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  store ptr %arg3, ptr %arg3.addr, align 8
  store ptr %arg4, ptr %arg4.addr, align 8
  store ptr %arg5, ptr %arg5.addr, align 8
  %0 = load i64, ptr %arg1.addr, align 8
  %not = xor i64 %0, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %not, i64 noundef 1)
  %1 = load i64, ptr %x1, align 8
  %shr = lshr i64 %1, 63
  %conv = trunc i64 %shr to i8
  %conv1 = zext i8 %conv to i32
  %2 = load ptr, ptr %arg3.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx, align 8
  %and = and i64 %3, 1
  %conv2 = trunc i64 %and to i8
  %conv3 = zext i8 %conv2 to i32
  %and4 = and i32 %conv1, %conv3
  %conv5 = trunc i32 %and4 to i8
  store i8 %conv5, ptr %x3, align 1
  %4 = load i64, ptr %arg1.addr, align 8
  %not6 = xor i64 %4, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i64 noundef %not6, i64 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i64, ptr %arg1.addr, align 8
  %7 = load i64, ptr %x4, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef %10, i64 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %13, i64 noundef %15, i64 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %18, i64 noundef %20, i64 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx13, align 8
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 3
  %27 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x10, i8 noundef zeroext %23, i64 noundef %25, i64 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 4
  %30 = load i64, ptr %arrayidx15, align 8
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 4
  %32 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %28, i64 noundef %30, i64 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 5
  %35 = load i64, ptr %arrayidx17, align 8
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %36, i64 5
  %37 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x12, i8 noundef zeroext %33, i64 noundef %35, i64 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %39, i64 6
  %40 = load i64, ptr %arrayidx19, align 8
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %41, i64 6
  %42 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %38, i64 noundef %40, i64 noundef %42)
  %43 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %43, i64 0
  %44 = load i64, ptr %arrayidx21, align 8
  %not22 = xor i64 %44, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext 0, i64 noundef 1, i64 noundef %not22)
  %45 = load i8, ptr %x15, align 1
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %46, i64 1
  %47 = load i64, ptr %arrayidx23, align 8
  %not24 = xor i64 %47, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %45, i64 noundef 0, i64 noundef %not24)
  %48 = load i8, ptr %x17, align 1
  %49 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %49, i64 2
  %50 = load i64, ptr %arrayidx25, align 8
  %not26 = xor i64 %50, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %48, i64 noundef 0, i64 noundef %not26)
  %51 = load i8, ptr %x19, align 1
  %52 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %52, i64 3
  %53 = load i64, ptr %arrayidx27, align 8
  %not28 = xor i64 %53, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %51, i64 noundef 0, i64 noundef %not28)
  %54 = load i8, ptr %x21, align 1
  %55 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %55, i64 4
  %56 = load i64, ptr %arrayidx29, align 8
  %not30 = xor i64 %56, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %54, i64 noundef 0, i64 noundef %not30)
  %57 = load i8, ptr %x23, align 1
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %58, i64 5
  %59 = load i64, ptr %arrayidx31, align 8
  %not32 = xor i64 %59, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %57, i64 noundef 0, i64 noundef %not32)
  %60 = load i8, ptr %x25, align 1
  %61 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %61, i64 6
  %62 = load i64, ptr %arrayidx33, align 8
  %not34 = xor i64 %62, -1
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %60, i64 noundef 0, i64 noundef %not34)
  %63 = load i8, ptr %x3, align 1
  %64 = load ptr, ptr %arg3.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %64, i64 0
  %65 = load i64, ptr %arrayidx35, align 8
  %66 = load i64, ptr %x14, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x28, i8 noundef zeroext %63, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x3, align 1
  %68 = load ptr, ptr %arg3.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %68, i64 1
  %69 = load i64, ptr %arrayidx36, align 8
  %70 = load i64, ptr %x16, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x29, i8 noundef zeroext %67, i64 noundef %69, i64 noundef %70)
  %71 = load i8, ptr %x3, align 1
  %72 = load ptr, ptr %arg3.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %72, i64 2
  %73 = load i64, ptr %arrayidx37, align 8
  %74 = load i64, ptr %x18, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x30, i8 noundef zeroext %71, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x3, align 1
  %76 = load ptr, ptr %arg3.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %76, i64 3
  %77 = load i64, ptr %arrayidx38, align 8
  %78 = load i64, ptr %x20, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x31, i8 noundef zeroext %75, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %80, i64 4
  %81 = load i64, ptr %arrayidx39, align 8
  %82 = load i64, ptr %x22, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x32, i8 noundef zeroext %79, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %84, i64 5
  %85 = load i64, ptr %arrayidx40, align 8
  %86 = load i64, ptr %x24, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x33, i8 noundef zeroext %83, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %88, i64 6
  %89 = load i64, ptr %arrayidx41, align 8
  %90 = load i64, ptr %x26, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x34, i8 noundef zeroext %87, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg4.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %92, i64 0
  %93 = load i64, ptr %arrayidx42, align 8
  %94 = load ptr, ptr %arg5.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %94, i64 0
  %95 = load i64, ptr %arrayidx43, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x35, i8 noundef zeroext %91, i64 noundef %93, i64 noundef %95)
  %96 = load i8, ptr %x3, align 1
  %97 = load ptr, ptr %arg4.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %97, i64 1
  %98 = load i64, ptr %arrayidx44, align 8
  %99 = load ptr, ptr %arg5.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %99, i64 1
  %100 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x36, i8 noundef zeroext %96, i64 noundef %98, i64 noundef %100)
  %101 = load i8, ptr %x3, align 1
  %102 = load ptr, ptr %arg4.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %102, i64 2
  %103 = load i64, ptr %arrayidx46, align 8
  %104 = load ptr, ptr %arg5.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %104, i64 2
  %105 = load i64, ptr %arrayidx47, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x37, i8 noundef zeroext %101, i64 noundef %103, i64 noundef %105)
  %106 = load i8, ptr %x3, align 1
  %107 = load ptr, ptr %arg4.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %107, i64 3
  %108 = load i64, ptr %arrayidx48, align 8
  %109 = load ptr, ptr %arg5.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %109, i64 3
  %110 = load i64, ptr %arrayidx49, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x38, i8 noundef zeroext %106, i64 noundef %108, i64 noundef %110)
  %111 = load i8, ptr %x3, align 1
  %112 = load ptr, ptr %arg4.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %112, i64 4
  %113 = load i64, ptr %arrayidx50, align 8
  %114 = load ptr, ptr %arg5.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %114, i64 4
  %115 = load i64, ptr %arrayidx51, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x39, i8 noundef zeroext %111, i64 noundef %113, i64 noundef %115)
  %116 = load i8, ptr %x3, align 1
  %117 = load ptr, ptr %arg4.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %117, i64 5
  %118 = load i64, ptr %arrayidx52, align 8
  %119 = load ptr, ptr %arg5.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %119, i64 5
  %120 = load i64, ptr %arrayidx53, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x40, i8 noundef zeroext %116, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x35, align 8
  %122 = load i64, ptr %x35, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext 0, i64 noundef %121, i64 noundef %122)
  %123 = load i8, ptr %x42, align 1
  %124 = load i64, ptr %x36, align 8
  %125 = load i64, ptr %x36, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %123, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x44, align 1
  %127 = load i64, ptr %x37, align 8
  %128 = load i64, ptr %x37, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x46, align 1
  %130 = load i64, ptr %x38, align 8
  %131 = load i64, ptr %x38, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x48, align 1
  %133 = load i64, ptr %x39, align 8
  %134 = load i64, ptr %x39, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %132, i64 noundef %133, i64 noundef %134)
  %135 = load i8, ptr %x50, align 1
  %136 = load i64, ptr %x40, align 8
  %137 = load i64, ptr %x40, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %135, i64 noundef %136, i64 noundef %137)
  %138 = load i64, ptr %x41, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext 0, i64 noundef %138, i64 noundef -1374695839762142861)
  %139 = load i8, ptr %x54, align 1
  %140 = load i64, ptr %x43, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %139, i64 noundef %140, i64 noundef 6348401684107011962)
  %141 = load i8, ptr %x56, align 1
  %142 = load i64, ptr %x45, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %141, i64 noundef %142, i64 noundef -4079331616924160545)
  %143 = load i8, ptr %x58, align 1
  %144 = load i64, ptr %x47, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %143, i64 noundef %144, i64 noundef -1)
  %145 = load i8, ptr %x60, align 1
  %146 = load i64, ptr %x49, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x61, ptr noundef %x62, i8 noundef zeroext %145, i64 noundef %146, i64 noundef -1)
  %147 = load i8, ptr %x62, align 1
  %148 = load i64, ptr %x51, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x63, ptr noundef %x64, i8 noundef zeroext %147, i64 noundef %148, i64 noundef -1)
  %149 = load i8, ptr %x64, align 1
  %150 = load i8, ptr %x52, align 1
  %conv54 = zext i8 %150 to i64
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x65, ptr noundef %x66, i8 noundef zeroext %149, i64 noundef %conv54, i64 noundef 0)
  %151 = load ptr, ptr %arg4.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %151, i64 5
  %152 = load i64, ptr %arrayidx55, align 8
  store i64 %152, ptr %x67, align 8
  %153 = load ptr, ptr %arg4.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %153, i64 4
  %154 = load i64, ptr %arrayidx56, align 8
  store i64 %154, ptr %x68, align 8
  %155 = load ptr, ptr %arg4.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %155, i64 3
  %156 = load i64, ptr %arrayidx57, align 8
  store i64 %156, ptr %x69, align 8
  %157 = load ptr, ptr %arg4.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %157, i64 2
  %158 = load i64, ptr %arrayidx58, align 8
  store i64 %158, ptr %x70, align 8
  %159 = load ptr, ptr %arg4.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %159, i64 1
  %160 = load i64, ptr %arrayidx59, align 8
  store i64 %160, ptr %x71, align 8
  %161 = load ptr, ptr %arg4.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %161, i64 0
  %162 = load i64, ptr %arrayidx60, align 8
  store i64 %162, ptr %x72, align 8
  %163 = load i64, ptr %x72, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %163)
  %164 = load i8, ptr %x74, align 1
  %165 = load i64, ptr %x71, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %164, i64 noundef 0, i64 noundef %165)
  %166 = load i8, ptr %x76, align 1
  %167 = load i64, ptr %x70, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext %166, i64 noundef 0, i64 noundef %167)
  %168 = load i8, ptr %x78, align 1
  %169 = load i64, ptr %x69, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %168, i64 noundef 0, i64 noundef %169)
  %170 = load i8, ptr %x80, align 1
  %171 = load i64, ptr %x68, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %170, i64 noundef 0, i64 noundef %171)
  %172 = load i8, ptr %x82, align 1
  %173 = load i64, ptr %x67, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %172, i64 noundef 0, i64 noundef %173)
  %174 = load i8, ptr %x84, align 1
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x85, i8 noundef zeroext %174, i64 noundef 0, i64 noundef -1)
  %175 = load i64, ptr %x73, align 8
  %176 = load i64, ptr %x85, align 8
  %and61 = and i64 %176, -1374695839762142861
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext 0, i64 noundef %175, i64 noundef %and61)
  %177 = load i8, ptr %x87, align 1
  %178 = load i64, ptr %x75, align 8
  %179 = load i64, ptr %x85, align 8
  %and62 = and i64 %179, 6348401684107011962
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %177, i64 noundef %178, i64 noundef %and62)
  %180 = load i8, ptr %x89, align 1
  %181 = load i64, ptr %x77, align 8
  %182 = load i64, ptr %x85, align 8
  %and63 = and i64 %182, -4079331616924160545
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x90, ptr noundef %x91, i8 noundef zeroext %180, i64 noundef %181, i64 noundef %and63)
  %183 = load i8, ptr %x91, align 1
  %184 = load i64, ptr %x79, align 8
  %185 = load i64, ptr %x85, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x92, ptr noundef %x93, i8 noundef zeroext %183, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x93, align 1
  %187 = load i64, ptr %x81, align 8
  %188 = load i64, ptr %x85, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x95, align 1
  %190 = load i64, ptr %x83, align 8
  %191 = load i64, ptr %x85, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x3, align 1
  %193 = load ptr, ptr %arg5.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %193, i64 0
  %194 = load i64, ptr %arrayidx64, align 8
  %195 = load i64, ptr %x86, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x98, i8 noundef zeroext %192, i64 noundef %194, i64 noundef %195)
  %196 = load i8, ptr %x3, align 1
  %197 = load ptr, ptr %arg5.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %197, i64 1
  %198 = load i64, ptr %arrayidx65, align 8
  %199 = load i64, ptr %x88, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x99, i8 noundef zeroext %196, i64 noundef %198, i64 noundef %199)
  %200 = load i8, ptr %x3, align 1
  %201 = load ptr, ptr %arg5.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %201, i64 2
  %202 = load i64, ptr %arrayidx66, align 8
  %203 = load i64, ptr %x90, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x100, i8 noundef zeroext %200, i64 noundef %202, i64 noundef %203)
  %204 = load i8, ptr %x3, align 1
  %205 = load ptr, ptr %arg5.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %205, i64 3
  %206 = load i64, ptr %arrayidx67, align 8
  %207 = load i64, ptr %x92, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x101, i8 noundef zeroext %204, i64 noundef %206, i64 noundef %207)
  %208 = load i8, ptr %x3, align 1
  %209 = load ptr, ptr %arg5.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %209, i64 4
  %210 = load i64, ptr %arrayidx68, align 8
  %211 = load i64, ptr %x94, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x102, i8 noundef zeroext %208, i64 noundef %210, i64 noundef %211)
  %212 = load i8, ptr %x3, align 1
  %213 = load ptr, ptr %arg5.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %213, i64 5
  %214 = load i64, ptr %arrayidx69, align 8
  %215 = load i64, ptr %x96, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x103, i8 noundef zeroext %212, i64 noundef %214, i64 noundef %215)
  %216 = load i64, ptr %x28, align 8
  %and70 = and i64 %216, 1
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x104, align 1
  %217 = load i8, ptr %x104, align 1
  %218 = load i64, ptr %x7, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x105, i8 noundef zeroext %217, i64 noundef 0, i64 noundef %218)
  %219 = load i8, ptr %x104, align 1
  %220 = load i64, ptr %x8, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x106, i8 noundef zeroext %219, i64 noundef 0, i64 noundef %220)
  %221 = load i8, ptr %x104, align 1
  %222 = load i64, ptr %x9, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x107, i8 noundef zeroext %221, i64 noundef 0, i64 noundef %222)
  %223 = load i8, ptr %x104, align 1
  %224 = load i64, ptr %x10, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x108, i8 noundef zeroext %223, i64 noundef 0, i64 noundef %224)
  %225 = load i8, ptr %x104, align 1
  %226 = load i64, ptr %x11, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x109, i8 noundef zeroext %225, i64 noundef 0, i64 noundef %226)
  %227 = load i8, ptr %x104, align 1
  %228 = load i64, ptr %x12, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x110, i8 noundef zeroext %227, i64 noundef 0, i64 noundef %228)
  %229 = load i8, ptr %x104, align 1
  %230 = load i64, ptr %x13, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x111, i8 noundef zeroext %229, i64 noundef 0, i64 noundef %230)
  %231 = load i64, ptr %x28, align 8
  %232 = load i64, ptr %x105, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext 0, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x113, align 1
  %234 = load i64, ptr %x29, align 8
  %235 = load i64, ptr %x106, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x114, ptr noundef %x115, i8 noundef zeroext %233, i64 noundef %234, i64 noundef %235)
  %236 = load i8, ptr %x115, align 1
  %237 = load i64, ptr %x30, align 8
  %238 = load i64, ptr %x107, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x116, ptr noundef %x117, i8 noundef zeroext %236, i64 noundef %237, i64 noundef %238)
  %239 = load i8, ptr %x117, align 1
  %240 = load i64, ptr %x31, align 8
  %241 = load i64, ptr %x108, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x118, ptr noundef %x119, i8 noundef zeroext %239, i64 noundef %240, i64 noundef %241)
  %242 = load i8, ptr %x119, align 1
  %243 = load i64, ptr %x32, align 8
  %244 = load i64, ptr %x109, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x120, ptr noundef %x121, i8 noundef zeroext %242, i64 noundef %243, i64 noundef %244)
  %245 = load i8, ptr %x121, align 1
  %246 = load i64, ptr %x33, align 8
  %247 = load i64, ptr %x110, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x122, ptr noundef %x123, i8 noundef zeroext %245, i64 noundef %246, i64 noundef %247)
  %248 = load i8, ptr %x123, align 1
  %249 = load i64, ptr %x34, align 8
  %250 = load i64, ptr %x111, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext %248, i64 noundef %249, i64 noundef %250)
  %251 = load i8, ptr %x104, align 1
  %252 = load i64, ptr %x35, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x126, i8 noundef zeroext %251, i64 noundef 0, i64 noundef %252)
  %253 = load i8, ptr %x104, align 1
  %254 = load i64, ptr %x36, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x127, i8 noundef zeroext %253, i64 noundef 0, i64 noundef %254)
  %255 = load i8, ptr %x104, align 1
  %256 = load i64, ptr %x37, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x128, i8 noundef zeroext %255, i64 noundef 0, i64 noundef %256)
  %257 = load i8, ptr %x104, align 1
  %258 = load i64, ptr %x38, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x129, i8 noundef zeroext %257, i64 noundef 0, i64 noundef %258)
  %259 = load i8, ptr %x104, align 1
  %260 = load i64, ptr %x39, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x130, i8 noundef zeroext %259, i64 noundef 0, i64 noundef %260)
  %261 = load i8, ptr %x104, align 1
  %262 = load i64, ptr %x40, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x131, i8 noundef zeroext %261, i64 noundef 0, i64 noundef %262)
  %263 = load i64, ptr %x98, align 8
  %264 = load i64, ptr %x126, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext 0, i64 noundef %263, i64 noundef %264)
  %265 = load i8, ptr %x133, align 1
  %266 = load i64, ptr %x99, align 8
  %267 = load i64, ptr %x127, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %265, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x135, align 1
  %269 = load i64, ptr %x100, align 8
  %270 = load i64, ptr %x128, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i8, ptr %x137, align 1
  %272 = load i64, ptr %x101, align 8
  %273 = load i64, ptr %x129, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %271, i64 noundef %272, i64 noundef %273)
  %274 = load i8, ptr %x139, align 1
  %275 = load i64, ptr %x102, align 8
  %276 = load i64, ptr %x130, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %274, i64 noundef %275, i64 noundef %276)
  %277 = load i8, ptr %x141, align 1
  %278 = load i64, ptr %x103, align 8
  %279 = load i64, ptr %x131, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %277, i64 noundef %278, i64 noundef %279)
  %280 = load i64, ptr %x132, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x144, ptr noundef %x145, i8 noundef zeroext 0, i64 noundef %280, i64 noundef -1374695839762142861)
  %281 = load i8, ptr %x145, align 1
  %282 = load i64, ptr %x134, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x146, ptr noundef %x147, i8 noundef zeroext %281, i64 noundef %282, i64 noundef 6348401684107011962)
  %283 = load i8, ptr %x147, align 1
  %284 = load i64, ptr %x136, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x148, ptr noundef %x149, i8 noundef zeroext %283, i64 noundef %284, i64 noundef -4079331616924160545)
  %285 = load i8, ptr %x149, align 1
  %286 = load i64, ptr %x138, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext %285, i64 noundef %286, i64 noundef -1)
  %287 = load i8, ptr %x151, align 1
  %288 = load i64, ptr %x140, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %287, i64 noundef %288, i64 noundef -1)
  %289 = load i8, ptr %x153, align 1
  %290 = load i64, ptr %x142, align 8
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %289, i64 noundef %290, i64 noundef -1)
  %291 = load i8, ptr %x155, align 1
  %292 = load i8, ptr %x143, align 1
  %conv72 = zext i8 %292 to i64
  call void @fiat_p384_scalar_subborrowx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %291, i64 noundef %conv72, i64 noundef 0)
  %293 = load i64, ptr %x6, align 8
  call void @fiat_p384_scalar_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i64 noundef %293, i64 noundef 1)
  %294 = load i64, ptr %x112, align 8
  %shr73 = lshr i64 %294, 1
  %295 = load i64, ptr %x114, align 8
  %shl = shl i64 %295, 63
  %and74 = and i64 %shl, -1
  %or = or i64 %shr73, %and74
  store i64 %or, ptr %x160, align 8
  %296 = load i64, ptr %x114, align 8
  %shr75 = lshr i64 %296, 1
  %297 = load i64, ptr %x116, align 8
  %shl76 = shl i64 %297, 63
  %and77 = and i64 %shl76, -1
  %or78 = or i64 %shr75, %and77
  store i64 %or78, ptr %x161, align 8
  %298 = load i64, ptr %x116, align 8
  %shr79 = lshr i64 %298, 1
  %299 = load i64, ptr %x118, align 8
  %shl80 = shl i64 %299, 63
  %and81 = and i64 %shl80, -1
  %or82 = or i64 %shr79, %and81
  store i64 %or82, ptr %x162, align 8
  %300 = load i64, ptr %x118, align 8
  %shr83 = lshr i64 %300, 1
  %301 = load i64, ptr %x120, align 8
  %shl84 = shl i64 %301, 63
  %and85 = and i64 %shl84, -1
  %or86 = or i64 %shr83, %and85
  store i64 %or86, ptr %x163, align 8
  %302 = load i64, ptr %x120, align 8
  %shr87 = lshr i64 %302, 1
  %303 = load i64, ptr %x122, align 8
  %shl88 = shl i64 %303, 63
  %and89 = and i64 %shl88, -1
  %or90 = or i64 %shr87, %and89
  store i64 %or90, ptr %x164, align 8
  %304 = load i64, ptr %x122, align 8
  %shr91 = lshr i64 %304, 1
  %305 = load i64, ptr %x124, align 8
  %shl92 = shl i64 %305, 63
  %and93 = and i64 %shl92, -1
  %or94 = or i64 %shr91, %and93
  store i64 %or94, ptr %x165, align 8
  %306 = load i64, ptr %x124, align 8
  %and95 = and i64 %306, -9223372036854775808
  %307 = load i64, ptr %x124, align 8
  %shr96 = lshr i64 %307, 1
  %or97 = or i64 %and95, %shr96
  store i64 %or97, ptr %x166, align 8
  %308 = load i8, ptr %x66, align 1
  %309 = load i64, ptr %x53, align 8
  %310 = load i64, ptr %x41, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x167, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x66, align 1
  %312 = load i64, ptr %x55, align 8
  %313 = load i64, ptr %x43, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x168, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x66, align 1
  %315 = load i64, ptr %x57, align 8
  %316 = load i64, ptr %x45, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x169, i8 noundef zeroext %314, i64 noundef %315, i64 noundef %316)
  %317 = load i8, ptr %x66, align 1
  %318 = load i64, ptr %x59, align 8
  %319 = load i64, ptr %x47, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x170, i8 noundef zeroext %317, i64 noundef %318, i64 noundef %319)
  %320 = load i8, ptr %x66, align 1
  %321 = load i64, ptr %x61, align 8
  %322 = load i64, ptr %x49, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x171, i8 noundef zeroext %320, i64 noundef %321, i64 noundef %322)
  %323 = load i8, ptr %x66, align 1
  %324 = load i64, ptr %x63, align 8
  %325 = load i64, ptr %x51, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x172, i8 noundef zeroext %323, i64 noundef %324, i64 noundef %325)
  %326 = load i8, ptr %x157, align 1
  %327 = load i64, ptr %x144, align 8
  %328 = load i64, ptr %x132, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x173, i8 noundef zeroext %326, i64 noundef %327, i64 noundef %328)
  %329 = load i8, ptr %x157, align 1
  %330 = load i64, ptr %x146, align 8
  %331 = load i64, ptr %x134, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x174, i8 noundef zeroext %329, i64 noundef %330, i64 noundef %331)
  %332 = load i8, ptr %x157, align 1
  %333 = load i64, ptr %x148, align 8
  %334 = load i64, ptr %x136, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x175, i8 noundef zeroext %332, i64 noundef %333, i64 noundef %334)
  %335 = load i8, ptr %x157, align 1
  %336 = load i64, ptr %x150, align 8
  %337 = load i64, ptr %x138, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x176, i8 noundef zeroext %335, i64 noundef %336, i64 noundef %337)
  %338 = load i8, ptr %x157, align 1
  %339 = load i64, ptr %x152, align 8
  %340 = load i64, ptr %x140, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x177, i8 noundef zeroext %338, i64 noundef %339, i64 noundef %340)
  %341 = load i8, ptr %x157, align 1
  %342 = load i64, ptr %x154, align 8
  %343 = load i64, ptr %x142, align 8
  call void @fiat_p384_scalar_cmovznz_u64(ptr noundef %x178, i8 noundef zeroext %341, i64 noundef %342, i64 noundef %343)
  %344 = load i64, ptr %x158, align 8
  %345 = load ptr, ptr %out1.addr, align 8
  store i64 %344, ptr %345, align 8
  %346 = load i64, ptr %x7, align 8
  %347 = load ptr, ptr %out2.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %347, i64 0
  store i64 %346, ptr %arrayidx98, align 8
  %348 = load i64, ptr %x8, align 8
  %349 = load ptr, ptr %out2.addr, align 8
  %arrayidx99 = getelementptr inbounds i64, ptr %349, i64 1
  store i64 %348, ptr %arrayidx99, align 8
  %350 = load i64, ptr %x9, align 8
  %351 = load ptr, ptr %out2.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %351, i64 2
  store i64 %350, ptr %arrayidx100, align 8
  %352 = load i64, ptr %x10, align 8
  %353 = load ptr, ptr %out2.addr, align 8
  %arrayidx101 = getelementptr inbounds i64, ptr %353, i64 3
  store i64 %352, ptr %arrayidx101, align 8
  %354 = load i64, ptr %x11, align 8
  %355 = load ptr, ptr %out2.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %355, i64 4
  store i64 %354, ptr %arrayidx102, align 8
  %356 = load i64, ptr %x12, align 8
  %357 = load ptr, ptr %out2.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %357, i64 5
  store i64 %356, ptr %arrayidx103, align 8
  %358 = load i64, ptr %x13, align 8
  %359 = load ptr, ptr %out2.addr, align 8
  %arrayidx104 = getelementptr inbounds i64, ptr %359, i64 6
  store i64 %358, ptr %arrayidx104, align 8
  %360 = load i64, ptr %x160, align 8
  %361 = load ptr, ptr %out3.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %361, i64 0
  store i64 %360, ptr %arrayidx105, align 8
  %362 = load i64, ptr %x161, align 8
  %363 = load ptr, ptr %out3.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %363, i64 1
  store i64 %362, ptr %arrayidx106, align 8
  %364 = load i64, ptr %x162, align 8
  %365 = load ptr, ptr %out3.addr, align 8
  %arrayidx107 = getelementptr inbounds i64, ptr %365, i64 2
  store i64 %364, ptr %arrayidx107, align 8
  %366 = load i64, ptr %x163, align 8
  %367 = load ptr, ptr %out3.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %367, i64 3
  store i64 %366, ptr %arrayidx108, align 8
  %368 = load i64, ptr %x164, align 8
  %369 = load ptr, ptr %out3.addr, align 8
  %arrayidx109 = getelementptr inbounds i64, ptr %369, i64 4
  store i64 %368, ptr %arrayidx109, align 8
  %370 = load i64, ptr %x165, align 8
  %371 = load ptr, ptr %out3.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %371, i64 5
  store i64 %370, ptr %arrayidx110, align 8
  %372 = load i64, ptr %x166, align 8
  %373 = load ptr, ptr %out3.addr, align 8
  %arrayidx111 = getelementptr inbounds i64, ptr %373, i64 6
  store i64 %372, ptr %arrayidx111, align 8
  %374 = load i64, ptr %x167, align 8
  %375 = load ptr, ptr %out4.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %375, i64 0
  store i64 %374, ptr %arrayidx112, align 8
  %376 = load i64, ptr %x168, align 8
  %377 = load ptr, ptr %out4.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %377, i64 1
  store i64 %376, ptr %arrayidx113, align 8
  %378 = load i64, ptr %x169, align 8
  %379 = load ptr, ptr %out4.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %379, i64 2
  store i64 %378, ptr %arrayidx114, align 8
  %380 = load i64, ptr %x170, align 8
  %381 = load ptr, ptr %out4.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %381, i64 3
  store i64 %380, ptr %arrayidx115, align 8
  %382 = load i64, ptr %x171, align 8
  %383 = load ptr, ptr %out4.addr, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %383, i64 4
  store i64 %382, ptr %arrayidx116, align 8
  %384 = load i64, ptr %x172, align 8
  %385 = load ptr, ptr %out4.addr, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %385, i64 5
  store i64 %384, ptr %arrayidx117, align 8
  %386 = load i64, ptr %x173, align 8
  %387 = load ptr, ptr %out5.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %387, i64 0
  store i64 %386, ptr %arrayidx118, align 8
  %388 = load i64, ptr %x174, align 8
  %389 = load ptr, ptr %out5.addr, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %389, i64 1
  store i64 %388, ptr %arrayidx119, align 8
  %390 = load i64, ptr %x175, align 8
  %391 = load ptr, ptr %out5.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %391, i64 2
  store i64 %390, ptr %arrayidx120, align 8
  %392 = load i64, ptr %x176, align 8
  %393 = load ptr, ptr %out5.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, ptr %393, i64 3
  store i64 %392, ptr %arrayidx121, align 8
  %394 = load i64, ptr %x177, align 8
  %395 = load ptr, ptr %out5.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %395, i64 4
  store i64 %394, ptr %arrayidx122, align 8
  %396 = load i64, ptr %x178, align 8
  %397 = load ptr, ptr %out5.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %397, i64 5
  store i64 %396, ptr %arrayidx123, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p384_scalar_divstep_precomp(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 5285144453441674090, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 4366894402606481645, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 -2681038713856867774, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 -5356133838782415306, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 -7505353197727934093, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 3143533399796454076, ptr %arrayidx5, align 8
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
!6 = !{i64 3955}
