; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_p434_value_barrier_u64(i64 noundef %a) #0 {
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
define dso_local void @fiat_p434_addcarryx_u64(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
define dso_local void @fiat_p434_subborrowx_u64(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
define dso_local void @fiat_p434_mulx_u64(ptr noundef %out1, ptr noundef %out2, i64 noundef %arg1, i64 noundef %arg2) #0 {
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
define dso_local void @fiat_p434_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %call = call i64 @fiat_p434_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_p434_value_barrier_u64(i64 noundef %not)
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
define dso_local void @fiat_p434_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 0
  %13 = load i64, ptr %arrayidx6, align 8
  store i64 %13, ptr %x7, align 8
  %14 = load i64, ptr %x7, align 8
  %15 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %15, i64 6
  %16 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x7, align 8
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %18, i64 5
  %19 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x10, ptr noundef %x11, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x7, align 8
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x12, ptr noundef %x13, i64 noundef %20, i64 noundef %22)
  %23 = load i64, ptr %x7, align 8
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x14, ptr noundef %x15, i64 noundef %23, i64 noundef %25)
  %26 = load i64, ptr %x7, align 8
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 2
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x16, ptr noundef %x17, i64 noundef %26, i64 noundef %28)
  %29 = load i64, ptr %x7, align 8
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %30, i64 1
  %31 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x18, ptr noundef %x19, i64 noundef %29, i64 noundef %31)
  %32 = load i64, ptr %x7, align 8
  %33 = load ptr, ptr %arg2.addr, align 8
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
  %104 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %104, i64 6
  %105 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x78, ptr noundef %x79, i64 noundef %103, i64 noundef %105)
  %106 = load i64, ptr %x1, align 8
  %107 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %107, i64 5
  %108 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x80, ptr noundef %x81, i64 noundef %106, i64 noundef %108)
  %109 = load i64, ptr %x1, align 8
  %110 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %110, i64 4
  %111 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x82, ptr noundef %x83, i64 noundef %109, i64 noundef %111)
  %112 = load i64, ptr %x1, align 8
  %113 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %113, i64 3
  %114 = load i64, ptr %arrayidx19, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x84, ptr noundef %x85, i64 noundef %112, i64 noundef %114)
  %115 = load i64, ptr %x1, align 8
  %116 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x86, ptr noundef %x87, i64 noundef %115, i64 noundef %117)
  %118 = load i64, ptr %x1, align 8
  %119 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %119, i64 1
  %120 = load i64, ptr %arrayidx21, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x1, align 8
  %122 = load ptr, ptr %arg2.addr, align 8
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
  %218 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %218, i64 6
  %219 = load i64, ptr %arrayidx31, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x165, ptr noundef %x166, i64 noundef %217, i64 noundef %219)
  %220 = load i64, ptr %x2, align 8
  %221 = load ptr, ptr %arg2.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %221, i64 5
  %222 = load i64, ptr %arrayidx32, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x167, ptr noundef %x168, i64 noundef %220, i64 noundef %222)
  %223 = load i64, ptr %x2, align 8
  %224 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %224, i64 4
  %225 = load i64, ptr %arrayidx33, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x169, ptr noundef %x170, i64 noundef %223, i64 noundef %225)
  %226 = load i64, ptr %x2, align 8
  %227 = load ptr, ptr %arg2.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %227, i64 3
  %228 = load i64, ptr %arrayidx34, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x171, ptr noundef %x172, i64 noundef %226, i64 noundef %228)
  %229 = load i64, ptr %x2, align 8
  %230 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %230, i64 2
  %231 = load i64, ptr %arrayidx35, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x173, ptr noundef %x174, i64 noundef %229, i64 noundef %231)
  %232 = load i64, ptr %x2, align 8
  %233 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %233, i64 1
  %234 = load i64, ptr %arrayidx36, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x175, ptr noundef %x176, i64 noundef %232, i64 noundef %234)
  %235 = load i64, ptr %x2, align 8
  %236 = load ptr, ptr %arg2.addr, align 8
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
  %332 = load ptr, ptr %arg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %332, i64 6
  %333 = load i64, ptr %arrayidx45, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x252, ptr noundef %x253, i64 noundef %331, i64 noundef %333)
  %334 = load i64, ptr %x3, align 8
  %335 = load ptr, ptr %arg2.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %335, i64 5
  %336 = load i64, ptr %arrayidx46, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x254, ptr noundef %x255, i64 noundef %334, i64 noundef %336)
  %337 = load i64, ptr %x3, align 8
  %338 = load ptr, ptr %arg2.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %338, i64 4
  %339 = load i64, ptr %arrayidx47, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x256, ptr noundef %x257, i64 noundef %337, i64 noundef %339)
  %340 = load i64, ptr %x3, align 8
  %341 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %341, i64 3
  %342 = load i64, ptr %arrayidx48, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x258, ptr noundef %x259, i64 noundef %340, i64 noundef %342)
  %343 = load i64, ptr %x3, align 8
  %344 = load ptr, ptr %arg2.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %344, i64 2
  %345 = load i64, ptr %arrayidx49, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x260, ptr noundef %x261, i64 noundef %343, i64 noundef %345)
  %346 = load i64, ptr %x3, align 8
  %347 = load ptr, ptr %arg2.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %347, i64 1
  %348 = load i64, ptr %arrayidx50, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x262, ptr noundef %x263, i64 noundef %346, i64 noundef %348)
  %349 = load i64, ptr %x3, align 8
  %350 = load ptr, ptr %arg2.addr, align 8
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
  %446 = load ptr, ptr %arg2.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %446, i64 6
  %447 = load i64, ptr %arrayidx59, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x339, ptr noundef %x340, i64 noundef %445, i64 noundef %447)
  %448 = load i64, ptr %x4, align 8
  %449 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %449, i64 5
  %450 = load i64, ptr %arrayidx60, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x341, ptr noundef %x342, i64 noundef %448, i64 noundef %450)
  %451 = load i64, ptr %x4, align 8
  %452 = load ptr, ptr %arg2.addr, align 8
  %arrayidx61 = getelementptr inbounds i64, ptr %452, i64 4
  %453 = load i64, ptr %arrayidx61, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x343, ptr noundef %x344, i64 noundef %451, i64 noundef %453)
  %454 = load i64, ptr %x4, align 8
  %455 = load ptr, ptr %arg2.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %455, i64 3
  %456 = load i64, ptr %arrayidx62, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x345, ptr noundef %x346, i64 noundef %454, i64 noundef %456)
  %457 = load i64, ptr %x4, align 8
  %458 = load ptr, ptr %arg2.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %458, i64 2
  %459 = load i64, ptr %arrayidx63, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x347, ptr noundef %x348, i64 noundef %457, i64 noundef %459)
  %460 = load i64, ptr %x4, align 8
  %461 = load ptr, ptr %arg2.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %461, i64 1
  %462 = load i64, ptr %arrayidx64, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x349, ptr noundef %x350, i64 noundef %460, i64 noundef %462)
  %463 = load i64, ptr %x4, align 8
  %464 = load ptr, ptr %arg2.addr, align 8
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
  %560 = load ptr, ptr %arg2.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %560, i64 6
  %561 = load i64, ptr %arrayidx73, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x426, ptr noundef %x427, i64 noundef %559, i64 noundef %561)
  %562 = load i64, ptr %x5, align 8
  %563 = load ptr, ptr %arg2.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %563, i64 5
  %564 = load i64, ptr %arrayidx74, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x428, ptr noundef %x429, i64 noundef %562, i64 noundef %564)
  %565 = load i64, ptr %x5, align 8
  %566 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %566, i64 4
  %567 = load i64, ptr %arrayidx75, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x430, ptr noundef %x431, i64 noundef %565, i64 noundef %567)
  %568 = load i64, ptr %x5, align 8
  %569 = load ptr, ptr %arg2.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %569, i64 3
  %570 = load i64, ptr %arrayidx76, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x432, ptr noundef %x433, i64 noundef %568, i64 noundef %570)
  %571 = load i64, ptr %x5, align 8
  %572 = load ptr, ptr %arg2.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %572, i64 2
  %573 = load i64, ptr %arrayidx77, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x434, ptr noundef %x435, i64 noundef %571, i64 noundef %573)
  %574 = load i64, ptr %x5, align 8
  %575 = load ptr, ptr %arg2.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %575, i64 1
  %576 = load i64, ptr %arrayidx78, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x436, ptr noundef %x437, i64 noundef %574, i64 noundef %576)
  %577 = load i64, ptr %x5, align 8
  %578 = load ptr, ptr %arg2.addr, align 8
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
  %674 = load ptr, ptr %arg2.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %674, i64 6
  %675 = load i64, ptr %arrayidx87, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x513, ptr noundef %x514, i64 noundef %673, i64 noundef %675)
  %676 = load i64, ptr %x6, align 8
  %677 = load ptr, ptr %arg2.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %677, i64 5
  %678 = load i64, ptr %arrayidx88, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x515, ptr noundef %x516, i64 noundef %676, i64 noundef %678)
  %679 = load i64, ptr %x6, align 8
  %680 = load ptr, ptr %arg2.addr, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %680, i64 4
  %681 = load i64, ptr %arrayidx89, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x517, ptr noundef %x518, i64 noundef %679, i64 noundef %681)
  %682 = load i64, ptr %x6, align 8
  %683 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %683, i64 3
  %684 = load i64, ptr %arrayidx90, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x519, ptr noundef %x520, i64 noundef %682, i64 noundef %684)
  %685 = load i64, ptr %x6, align 8
  %686 = load ptr, ptr %arg2.addr, align 8
  %arrayidx91 = getelementptr inbounds i64, ptr %686, i64 2
  %687 = load i64, ptr %arrayidx91, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x521, ptr noundef %x522, i64 noundef %685, i64 noundef %687)
  %688 = load i64, ptr %x6, align 8
  %689 = load ptr, ptr %arg2.addr, align 8
  %arrayidx92 = getelementptr inbounds i64, ptr %689, i64 1
  %690 = load i64, ptr %arrayidx92, align 8
  call void @fiat_p434_mulx_u64(ptr noundef %x523, ptr noundef %x524, i64 noundef %688, i64 noundef %690)
  %691 = load i64, ptr %x6, align 8
  %692 = load ptr, ptr %arg2.addr, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx8, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 4
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i64 noundef %21, i64 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 5
  %26 = load i64, ptr %arrayidx10, align 8
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 5
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i64 noundef %26, i64 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %30, i64 6
  %31 = load i64, ptr %arrayidx12, align 8
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %32, i64 6
  %33 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i64 noundef %31, i64 noundef %33)
  %34 = load i64, ptr %x1, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext 0, i64 noundef %34, i64 noundef -1)
  %35 = load i8, ptr %x16, align 1
  %36 = load i64, ptr %x3, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %35, i64 noundef %36, i64 noundef -1)
  %37 = load i8, ptr %x18, align 1
  %38 = load i64, ptr %x5, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %37, i64 noundef %38, i64 noundef -1)
  %39 = load i8, ptr %x20, align 1
  %40 = load i64, ptr %x7, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %39, i64 noundef %40, i64 noundef -161717841442111489)
  %41 = load i8, ptr %x22, align 1
  %42 = load i64, ptr %x9, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %41, i64 noundef %42, i64 noundef 8918917783347572387)
  %43 = load i8, ptr %x24, align 1
  %44 = load i64, ptr %x11, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %43, i64 noundef %44, i64 noundef 7853257225132122198)
  %45 = load i8, ptr %x26, align 1
  %46 = load i64, ptr %x13, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %45, i64 noundef %46, i64 noundef 620258357900100)
  %47 = load i8, ptr %x28, align 1
  %48 = load i8, ptr %x14, align 1
  %conv = zext i8 %48 to i64
  call void @fiat_p434_subborrowx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %47, i64 noundef %conv, i64 noundef 0)
  %49 = load i8, ptr %x30, align 1
  %50 = load i64, ptr %x15, align 8
  %51 = load i64, ptr %x1, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x31, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %51)
  %52 = load i8, ptr %x30, align 1
  %53 = load i64, ptr %x17, align 8
  %54 = load i64, ptr %x3, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x32, i8 noundef zeroext %52, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x30, align 1
  %56 = load i64, ptr %x19, align 8
  %57 = load i64, ptr %x5, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x33, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x30, align 1
  %59 = load i64, ptr %x21, align 8
  %60 = load i64, ptr %x7, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x34, i8 noundef zeroext %58, i64 noundef %59, i64 noundef %60)
  %61 = load i8, ptr %x30, align 1
  %62 = load i64, ptr %x23, align 8
  %63 = load i64, ptr %x9, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x35, i8 noundef zeroext %61, i64 noundef %62, i64 noundef %63)
  %64 = load i8, ptr %x30, align 1
  %65 = load i64, ptr %x25, align 8
  %66 = load i64, ptr %x11, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x36, i8 noundef zeroext %64, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x30, align 1
  %68 = load i64, ptr %x27, align 8
  %69 = load i64, ptr %x13, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x37, i8 noundef zeroext %67, i64 noundef %68, i64 noundef %69)
  %70 = load i64, ptr %x31, align 8
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %arrayidx14, align 8
  %72 = load i64, ptr %x32, align 8
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %arrayidx15, align 8
  %74 = load i64, ptr %x33, align 8
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %arrayidx16, align 8
  %76 = load i64, ptr %x34, align 8
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %77, i64 3
  store i64 %76, ptr %arrayidx17, align 8
  %78 = load i64, ptr %x35, align 8
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %79, i64 4
  store i64 %78, ptr %arrayidx18, align 8
  %80 = load i64, ptr %x36, align 8
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %81, i64 5
  store i64 %80, ptr %arrayidx19, align 8
  %82 = load i64, ptr %x37, align 8
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %83, i64 6
  store i64 %82, ptr %arrayidx20, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i8, ptr %x8, align 1
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx8, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %22, i64 4
  %23 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %19, i64 noundef %21, i64 noundef %23)
  %24 = load i8, ptr %x10, align 1
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 5
  %26 = load i64, ptr %arrayidx10, align 8
  %27 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 5
  %28 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %24, i64 noundef %26, i64 noundef %28)
  %29 = load i8, ptr %x12, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %30, i64 6
  %31 = load i64, ptr %arrayidx12, align 8
  %32 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %32, i64 6
  %33 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %29, i64 noundef %31, i64 noundef %33)
  %34 = load i8, ptr %x14, align 1
  call void @fiat_p434_cmovznz_u64(ptr noundef %x15, i8 noundef zeroext %34, i64 noundef 0, i64 noundef -1)
  %35 = load i64, ptr %x1, align 8
  %36 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x17, align 1
  %38 = load i64, ptr %x3, align 8
  %39 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %37, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x19, align 1
  %41 = load i64, ptr %x5, align 8
  %42 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x21, align 1
  %44 = load i64, ptr %x7, align 8
  %45 = load i64, ptr %x15, align 8
  %and = and i64 %45, -161717841442111489
  call void @fiat_p434_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %and)
  %46 = load i8, ptr %x23, align 1
  %47 = load i64, ptr %x9, align 8
  %48 = load i64, ptr %x15, align 8
  %and14 = and i64 %48, 8918917783347572387
  call void @fiat_p434_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %and14)
  %49 = load i8, ptr %x25, align 1
  %50 = load i64, ptr %x11, align 8
  %51 = load i64, ptr %x15, align 8
  %and15 = and i64 %51, 7853257225132122198
  call void @fiat_p434_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %and15)
  %52 = load i8, ptr %x27, align 1
  %53 = load i64, ptr %x13, align 8
  %54 = load i64, ptr %x15, align 8
  %and16 = and i64 %54, 620258357900100
  call void @fiat_p434_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %52, i64 noundef %53, i64 noundef %and16)
  %55 = load i64, ptr %x16, align 8
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %56, i64 0
  store i64 %55, ptr %arrayidx17, align 8
  %57 = load i64, ptr %x18, align 8
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %58, i64 1
  store i64 %57, ptr %arrayidx18, align 8
  %59 = load i64, ptr %x20, align 8
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %60, i64 2
  store i64 %59, ptr %arrayidx19, align 8
  %61 = load i64, ptr %x22, align 8
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %62, i64 3
  store i64 %61, ptr %arrayidx20, align 8
  %63 = load i64, ptr %x24, align 8
  %64 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %64, i64 4
  store i64 %63, ptr %arrayidx21, align 8
  %65 = load i64, ptr %x26, align 8
  %66 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %66, i64 5
  store i64 %65, ptr %arrayidx22, align 8
  %67 = load i64, ptr %x28, align 8
  %68 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %68, i64 6
  store i64 %67, ptr %arrayidx23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x14 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef 0, i64 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef 0, i64 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef 0, i64 noundef %10)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef 0, i64 noundef %13)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i64 noundef 0, i64 noundef %16)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i64 noundef 0, i64 noundef %19)
  %20 = load i8, ptr %x14, align 1
  call void @fiat_p434_cmovznz_u64(ptr noundef %x15, i8 noundef zeroext %20, i64 noundef 0, i64 noundef -1)
  %21 = load i64, ptr %x1, align 8
  %22 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x17, align 1
  %24 = load i64, ptr %x3, align 8
  %25 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %25)
  %26 = load i8, ptr %x19, align 1
  %27 = load i64, ptr %x5, align 8
  %28 = load i64, ptr %x15, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %28)
  %29 = load i8, ptr %x21, align 1
  %30 = load i64, ptr %x7, align 8
  %31 = load i64, ptr %x15, align 8
  %and = and i64 %31, -161717841442111489
  call void @fiat_p434_addcarryx_u64(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %and)
  %32 = load i8, ptr %x23, align 1
  %33 = load i64, ptr %x9, align 8
  %34 = load i64, ptr %x15, align 8
  %and7 = and i64 %34, 8918917783347572387
  call void @fiat_p434_addcarryx_u64(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %and7)
  %35 = load i8, ptr %x25, align 1
  %36 = load i64, ptr %x11, align 8
  %37 = load i64, ptr %x15, align 8
  %and8 = and i64 %37, 7853257225132122198
  call void @fiat_p434_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %and8)
  %38 = load i8, ptr %x27, align 1
  %39 = load i64, ptr %x13, align 8
  %40 = load i64, ptr %x15, align 8
  %and9 = and i64 %40, 620258357900100
  call void @fiat_p434_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %and9)
  %41 = load i64, ptr %x16, align 8
  %42 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 %41, ptr %arrayidx10, align 8
  %43 = load i64, ptr %x18, align 8
  %44 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %44, i64 1
  store i64 %43, ptr %arrayidx11, align 8
  %45 = load i64, ptr %x20, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %46, i64 2
  store i64 %45, ptr %arrayidx12, align 8
  %47 = load i64, ptr %x22, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %48, i64 3
  store i64 %47, ptr %arrayidx13, align 8
  %49 = load i64, ptr %x24, align 8
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %50, i64 4
  store i64 %49, ptr %arrayidx14, align 8
  %51 = load i64, ptr %x26, align 8
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %52, i64 5
  store i64 %51, ptr %arrayidx15, align 8
  %53 = load i64, ptr %x28, align 8
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %54, i64 6
  store i64 %53, ptr %arrayidx16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_nonzero(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx6, align 8
  %or = or i64 %11, %13
  %or7 = or i64 %9, %or
  %or8 = or i64 %7, %or7
  %or9 = or i64 %5, %or8
  %or10 = or i64 %3, %or9
  %or11 = or i64 %1, %or10
  store i64 %or11, ptr %x1, align 8
  %14 = load i64, ptr %x1, align 8
  %15 = load ptr, ptr %out1.addr, align 8
  store i64 %14, ptr %15, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
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
  %x7 = alloca i64, align 8
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
  call void @fiat_p434_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 4
  %24 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x5, i8 noundef zeroext %20, i64 noundef %22, i64 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %26, i64 5
  %27 = load i64, ptr %arrayidx10, align 8
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 5
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %25, i64 noundef %27, i64 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %31, i64 6
  %32 = load i64, ptr %arrayidx12, align 8
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 6
  %34 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %30, i64 noundef %32, i64 noundef %34)
  %35 = load i64, ptr %x1, align 8
  %36 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %36, i64 0
  store i64 %35, ptr %arrayidx14, align 8
  %37 = load i64, ptr %x2, align 8
  %38 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %38, i64 1
  store i64 %37, ptr %arrayidx15, align 8
  %39 = load i64, ptr %x3, align 8
  %40 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %40, i64 2
  store i64 %39, ptr %arrayidx16, align 8
  %41 = load i64, ptr %x4, align 8
  %42 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %42, i64 3
  store i64 %41, ptr %arrayidx17, align 8
  %43 = load i64, ptr %x5, align 8
  %44 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %44, i64 4
  store i64 %43, ptr %arrayidx18, align 8
  %45 = load i64, ptr %x6, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %46, i64 5
  store i64 %45, ptr %arrayidx19, align 8
  %47 = load i64, ptr %x7, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %48, i64 6
  store i64 %47, ptr %arrayidx20, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x21 = alloca i8, align 1
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i8, align 1
  %x25 = alloca i64, align 8
  %x26 = alloca i8, align 1
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i8, align 1
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
  %x41 = alloca i64, align 8
  %x42 = alloca i8, align 1
  %x43 = alloca i64, align 8
  %x44 = alloca i8, align 1
  %x45 = alloca i64, align 8
  %x46 = alloca i8, align 1
  %x47 = alloca i64, align 8
  %x48 = alloca i8, align 1
  %x49 = alloca i8, align 1
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
  %x63 = alloca i8, align 1
  %x64 = alloca i8, align 1
  %x65 = alloca i64, align 8
  %x66 = alloca i8, align 1
  %x67 = alloca i64, align 8
  %x68 = alloca i8, align 1
  %x69 = alloca i64, align 8
  %x70 = alloca i8, align 1
  %x71 = alloca i64, align 8
  %x72 = alloca i8, align 1
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i8, align 1
  %x77 = alloca i8, align 1
  %x78 = alloca i8, align 1
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
  %x91 = alloca i8, align 1
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
  %x102 = alloca i8, align 1
  %x103 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 6
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 5
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 4
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx4, align 8
  store i64 %9, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 1
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 0
  %13 = load i64, ptr %arrayidx6, align 8
  store i64 %13, ptr %x7, align 8
  %14 = load i64, ptr %x7, align 8
  %and = and i64 %14, 255
  %conv = trunc i64 %and to i8
  store i8 %conv, ptr %x8, align 1
  %15 = load i64, ptr %x7, align 8
  %shr = lshr i64 %15, 8
  store i64 %shr, ptr %x9, align 8
  %16 = load i64, ptr %x9, align 8
  %and7 = and i64 %16, 255
  %conv8 = trunc i64 %and7 to i8
  store i8 %conv8, ptr %x10, align 1
  %17 = load i64, ptr %x9, align 8
  %shr9 = lshr i64 %17, 8
  store i64 %shr9, ptr %x11, align 8
  %18 = load i64, ptr %x11, align 8
  %and10 = and i64 %18, 255
  %conv11 = trunc i64 %and10 to i8
  store i8 %conv11, ptr %x12, align 1
  %19 = load i64, ptr %x11, align 8
  %shr12 = lshr i64 %19, 8
  store i64 %shr12, ptr %x13, align 8
  %20 = load i64, ptr %x13, align 8
  %and13 = and i64 %20, 255
  %conv14 = trunc i64 %and13 to i8
  store i8 %conv14, ptr %x14, align 1
  %21 = load i64, ptr %x13, align 8
  %shr15 = lshr i64 %21, 8
  store i64 %shr15, ptr %x15, align 8
  %22 = load i64, ptr %x15, align 8
  %and16 = and i64 %22, 255
  %conv17 = trunc i64 %and16 to i8
  store i8 %conv17, ptr %x16, align 1
  %23 = load i64, ptr %x15, align 8
  %shr18 = lshr i64 %23, 8
  store i64 %shr18, ptr %x17, align 8
  %24 = load i64, ptr %x17, align 8
  %and19 = and i64 %24, 255
  %conv20 = trunc i64 %and19 to i8
  store i8 %conv20, ptr %x18, align 1
  %25 = load i64, ptr %x17, align 8
  %shr21 = lshr i64 %25, 8
  store i64 %shr21, ptr %x19, align 8
  %26 = load i64, ptr %x19, align 8
  %and22 = and i64 %26, 255
  %conv23 = trunc i64 %and22 to i8
  store i8 %conv23, ptr %x20, align 1
  %27 = load i64, ptr %x19, align 8
  %shr24 = lshr i64 %27, 8
  %conv25 = trunc i64 %shr24 to i8
  store i8 %conv25, ptr %x21, align 1
  %28 = load i64, ptr %x6, align 8
  %and26 = and i64 %28, 255
  %conv27 = trunc i64 %and26 to i8
  store i8 %conv27, ptr %x22, align 1
  %29 = load i64, ptr %x6, align 8
  %shr28 = lshr i64 %29, 8
  store i64 %shr28, ptr %x23, align 8
  %30 = load i64, ptr %x23, align 8
  %and29 = and i64 %30, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, ptr %x24, align 1
  %31 = load i64, ptr %x23, align 8
  %shr31 = lshr i64 %31, 8
  store i64 %shr31, ptr %x25, align 8
  %32 = load i64, ptr %x25, align 8
  %and32 = and i64 %32, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x26, align 1
  %33 = load i64, ptr %x25, align 8
  %shr34 = lshr i64 %33, 8
  store i64 %shr34, ptr %x27, align 8
  %34 = load i64, ptr %x27, align 8
  %and35 = and i64 %34, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x28, align 1
  %35 = load i64, ptr %x27, align 8
  %shr37 = lshr i64 %35, 8
  store i64 %shr37, ptr %x29, align 8
  %36 = load i64, ptr %x29, align 8
  %and38 = and i64 %36, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x30, align 1
  %37 = load i64, ptr %x29, align 8
  %shr40 = lshr i64 %37, 8
  store i64 %shr40, ptr %x31, align 8
  %38 = load i64, ptr %x31, align 8
  %and41 = and i64 %38, 255
  %conv42 = trunc i64 %and41 to i8
  store i8 %conv42, ptr %x32, align 1
  %39 = load i64, ptr %x31, align 8
  %shr43 = lshr i64 %39, 8
  store i64 %shr43, ptr %x33, align 8
  %40 = load i64, ptr %x33, align 8
  %and44 = and i64 %40, 255
  %conv45 = trunc i64 %and44 to i8
  store i8 %conv45, ptr %x34, align 1
  %41 = load i64, ptr %x33, align 8
  %shr46 = lshr i64 %41, 8
  %conv47 = trunc i64 %shr46 to i8
  store i8 %conv47, ptr %x35, align 1
  %42 = load i64, ptr %x5, align 8
  %and48 = and i64 %42, 255
  %conv49 = trunc i64 %and48 to i8
  store i8 %conv49, ptr %x36, align 1
  %43 = load i64, ptr %x5, align 8
  %shr50 = lshr i64 %43, 8
  store i64 %shr50, ptr %x37, align 8
  %44 = load i64, ptr %x37, align 8
  %and51 = and i64 %44, 255
  %conv52 = trunc i64 %and51 to i8
  store i8 %conv52, ptr %x38, align 1
  %45 = load i64, ptr %x37, align 8
  %shr53 = lshr i64 %45, 8
  store i64 %shr53, ptr %x39, align 8
  %46 = load i64, ptr %x39, align 8
  %and54 = and i64 %46, 255
  %conv55 = trunc i64 %and54 to i8
  store i8 %conv55, ptr %x40, align 1
  %47 = load i64, ptr %x39, align 8
  %shr56 = lshr i64 %47, 8
  store i64 %shr56, ptr %x41, align 8
  %48 = load i64, ptr %x41, align 8
  %and57 = and i64 %48, 255
  %conv58 = trunc i64 %and57 to i8
  store i8 %conv58, ptr %x42, align 1
  %49 = load i64, ptr %x41, align 8
  %shr59 = lshr i64 %49, 8
  store i64 %shr59, ptr %x43, align 8
  %50 = load i64, ptr %x43, align 8
  %and60 = and i64 %50, 255
  %conv61 = trunc i64 %and60 to i8
  store i8 %conv61, ptr %x44, align 1
  %51 = load i64, ptr %x43, align 8
  %shr62 = lshr i64 %51, 8
  store i64 %shr62, ptr %x45, align 8
  %52 = load i64, ptr %x45, align 8
  %and63 = and i64 %52, 255
  %conv64 = trunc i64 %and63 to i8
  store i8 %conv64, ptr %x46, align 1
  %53 = load i64, ptr %x45, align 8
  %shr65 = lshr i64 %53, 8
  store i64 %shr65, ptr %x47, align 8
  %54 = load i64, ptr %x47, align 8
  %and66 = and i64 %54, 255
  %conv67 = trunc i64 %and66 to i8
  store i8 %conv67, ptr %x48, align 1
  %55 = load i64, ptr %x47, align 8
  %shr68 = lshr i64 %55, 8
  %conv69 = trunc i64 %shr68 to i8
  store i8 %conv69, ptr %x49, align 1
  %56 = load i64, ptr %x4, align 8
  %and70 = and i64 %56, 255
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x50, align 1
  %57 = load i64, ptr %x4, align 8
  %shr72 = lshr i64 %57, 8
  store i64 %shr72, ptr %x51, align 8
  %58 = load i64, ptr %x51, align 8
  %and73 = and i64 %58, 255
  %conv74 = trunc i64 %and73 to i8
  store i8 %conv74, ptr %x52, align 1
  %59 = load i64, ptr %x51, align 8
  %shr75 = lshr i64 %59, 8
  store i64 %shr75, ptr %x53, align 8
  %60 = load i64, ptr %x53, align 8
  %and76 = and i64 %60, 255
  %conv77 = trunc i64 %and76 to i8
  store i8 %conv77, ptr %x54, align 1
  %61 = load i64, ptr %x53, align 8
  %shr78 = lshr i64 %61, 8
  store i64 %shr78, ptr %x55, align 8
  %62 = load i64, ptr %x55, align 8
  %and79 = and i64 %62, 255
  %conv80 = trunc i64 %and79 to i8
  store i8 %conv80, ptr %x56, align 1
  %63 = load i64, ptr %x55, align 8
  %shr81 = lshr i64 %63, 8
  store i64 %shr81, ptr %x57, align 8
  %64 = load i64, ptr %x57, align 8
  %and82 = and i64 %64, 255
  %conv83 = trunc i64 %and82 to i8
  store i8 %conv83, ptr %x58, align 1
  %65 = load i64, ptr %x57, align 8
  %shr84 = lshr i64 %65, 8
  store i64 %shr84, ptr %x59, align 8
  %66 = load i64, ptr %x59, align 8
  %and85 = and i64 %66, 255
  %conv86 = trunc i64 %and85 to i8
  store i8 %conv86, ptr %x60, align 1
  %67 = load i64, ptr %x59, align 8
  %shr87 = lshr i64 %67, 8
  store i64 %shr87, ptr %x61, align 8
  %68 = load i64, ptr %x61, align 8
  %and88 = and i64 %68, 255
  %conv89 = trunc i64 %and88 to i8
  store i8 %conv89, ptr %x62, align 1
  %69 = load i64, ptr %x61, align 8
  %shr90 = lshr i64 %69, 8
  %conv91 = trunc i64 %shr90 to i8
  store i8 %conv91, ptr %x63, align 1
  %70 = load i64, ptr %x3, align 8
  %and92 = and i64 %70, 255
  %conv93 = trunc i64 %and92 to i8
  store i8 %conv93, ptr %x64, align 1
  %71 = load i64, ptr %x3, align 8
  %shr94 = lshr i64 %71, 8
  store i64 %shr94, ptr %x65, align 8
  %72 = load i64, ptr %x65, align 8
  %and95 = and i64 %72, 255
  %conv96 = trunc i64 %and95 to i8
  store i8 %conv96, ptr %x66, align 1
  %73 = load i64, ptr %x65, align 8
  %shr97 = lshr i64 %73, 8
  store i64 %shr97, ptr %x67, align 8
  %74 = load i64, ptr %x67, align 8
  %and98 = and i64 %74, 255
  %conv99 = trunc i64 %and98 to i8
  store i8 %conv99, ptr %x68, align 1
  %75 = load i64, ptr %x67, align 8
  %shr100 = lshr i64 %75, 8
  store i64 %shr100, ptr %x69, align 8
  %76 = load i64, ptr %x69, align 8
  %and101 = and i64 %76, 255
  %conv102 = trunc i64 %and101 to i8
  store i8 %conv102, ptr %x70, align 1
  %77 = load i64, ptr %x69, align 8
  %shr103 = lshr i64 %77, 8
  store i64 %shr103, ptr %x71, align 8
  %78 = load i64, ptr %x71, align 8
  %and104 = and i64 %78, 255
  %conv105 = trunc i64 %and104 to i8
  store i8 %conv105, ptr %x72, align 1
  %79 = load i64, ptr %x71, align 8
  %shr106 = lshr i64 %79, 8
  store i64 %shr106, ptr %x73, align 8
  %80 = load i64, ptr %x73, align 8
  %and107 = and i64 %80, 255
  %conv108 = trunc i64 %and107 to i8
  store i8 %conv108, ptr %x74, align 1
  %81 = load i64, ptr %x73, align 8
  %shr109 = lshr i64 %81, 8
  store i64 %shr109, ptr %x75, align 8
  %82 = load i64, ptr %x75, align 8
  %and110 = and i64 %82, 255
  %conv111 = trunc i64 %and110 to i8
  store i8 %conv111, ptr %x76, align 1
  %83 = load i64, ptr %x75, align 8
  %shr112 = lshr i64 %83, 8
  %conv113 = trunc i64 %shr112 to i8
  store i8 %conv113, ptr %x77, align 1
  %84 = load i64, ptr %x2, align 8
  %and114 = and i64 %84, 255
  %conv115 = trunc i64 %and114 to i8
  store i8 %conv115, ptr %x78, align 1
  %85 = load i64, ptr %x2, align 8
  %shr116 = lshr i64 %85, 8
  store i64 %shr116, ptr %x79, align 8
  %86 = load i64, ptr %x79, align 8
  %and117 = and i64 %86, 255
  %conv118 = trunc i64 %and117 to i8
  store i8 %conv118, ptr %x80, align 1
  %87 = load i64, ptr %x79, align 8
  %shr119 = lshr i64 %87, 8
  store i64 %shr119, ptr %x81, align 8
  %88 = load i64, ptr %x81, align 8
  %and120 = and i64 %88, 255
  %conv121 = trunc i64 %and120 to i8
  store i8 %conv121, ptr %x82, align 1
  %89 = load i64, ptr %x81, align 8
  %shr122 = lshr i64 %89, 8
  store i64 %shr122, ptr %x83, align 8
  %90 = load i64, ptr %x83, align 8
  %and123 = and i64 %90, 255
  %conv124 = trunc i64 %and123 to i8
  store i8 %conv124, ptr %x84, align 1
  %91 = load i64, ptr %x83, align 8
  %shr125 = lshr i64 %91, 8
  store i64 %shr125, ptr %x85, align 8
  %92 = load i64, ptr %x85, align 8
  %and126 = and i64 %92, 255
  %conv127 = trunc i64 %and126 to i8
  store i8 %conv127, ptr %x86, align 1
  %93 = load i64, ptr %x85, align 8
  %shr128 = lshr i64 %93, 8
  store i64 %shr128, ptr %x87, align 8
  %94 = load i64, ptr %x87, align 8
  %and129 = and i64 %94, 255
  %conv130 = trunc i64 %and129 to i8
  store i8 %conv130, ptr %x88, align 1
  %95 = load i64, ptr %x87, align 8
  %shr131 = lshr i64 %95, 8
  store i64 %shr131, ptr %x89, align 8
  %96 = load i64, ptr %x89, align 8
  %and132 = and i64 %96, 255
  %conv133 = trunc i64 %and132 to i8
  store i8 %conv133, ptr %x90, align 1
  %97 = load i64, ptr %x89, align 8
  %shr134 = lshr i64 %97, 8
  %conv135 = trunc i64 %shr134 to i8
  store i8 %conv135, ptr %x91, align 1
  %98 = load i64, ptr %x1, align 8
  %and136 = and i64 %98, 255
  %conv137 = trunc i64 %and136 to i8
  store i8 %conv137, ptr %x92, align 1
  %99 = load i64, ptr %x1, align 8
  %shr138 = lshr i64 %99, 8
  store i64 %shr138, ptr %x93, align 8
  %100 = load i64, ptr %x93, align 8
  %and139 = and i64 %100, 255
  %conv140 = trunc i64 %and139 to i8
  store i8 %conv140, ptr %x94, align 1
  %101 = load i64, ptr %x93, align 8
  %shr141 = lshr i64 %101, 8
  store i64 %shr141, ptr %x95, align 8
  %102 = load i64, ptr %x95, align 8
  %and142 = and i64 %102, 255
  %conv143 = trunc i64 %and142 to i8
  store i8 %conv143, ptr %x96, align 1
  %103 = load i64, ptr %x95, align 8
  %shr144 = lshr i64 %103, 8
  store i64 %shr144, ptr %x97, align 8
  %104 = load i64, ptr %x97, align 8
  %and145 = and i64 %104, 255
  %conv146 = trunc i64 %and145 to i8
  store i8 %conv146, ptr %x98, align 1
  %105 = load i64, ptr %x97, align 8
  %shr147 = lshr i64 %105, 8
  store i64 %shr147, ptr %x99, align 8
  %106 = load i64, ptr %x99, align 8
  %and148 = and i64 %106, 255
  %conv149 = trunc i64 %and148 to i8
  store i8 %conv149, ptr %x100, align 1
  %107 = load i64, ptr %x99, align 8
  %shr150 = lshr i64 %107, 8
  store i64 %shr150, ptr %x101, align 8
  %108 = load i64, ptr %x101, align 8
  %and151 = and i64 %108, 255
  %conv152 = trunc i64 %and151 to i8
  store i8 %conv152, ptr %x102, align 1
  %109 = load i64, ptr %x101, align 8
  %shr153 = lshr i64 %109, 8
  %conv154 = trunc i64 %shr153 to i8
  store i8 %conv154, ptr %x103, align 1
  %110 = load i8, ptr %x8, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %111, i64 0
  store i8 %110, ptr %arrayidx155, align 1
  %112 = load i8, ptr %x10, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %113, i64 1
  store i8 %112, ptr %arrayidx156, align 1
  %114 = load i8, ptr %x12, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %115, i64 2
  store i8 %114, ptr %arrayidx157, align 1
  %116 = load i8, ptr %x14, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 %116, ptr %arrayidx158, align 1
  %118 = load i8, ptr %x16, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %119, i64 4
  store i8 %118, ptr %arrayidx159, align 1
  %120 = load i8, ptr %x18, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %121, i64 5
  store i8 %120, ptr %arrayidx160, align 1
  %122 = load i8, ptr %x20, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %123, i64 6
  store i8 %122, ptr %arrayidx161, align 1
  %124 = load i8, ptr %x21, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %125, i64 7
  store i8 %124, ptr %arrayidx162, align 1
  %126 = load i8, ptr %x22, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %127, i64 8
  store i8 %126, ptr %arrayidx163, align 1
  %128 = load i8, ptr %x24, align 1
  %129 = load ptr, ptr %out1.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %129, i64 9
  store i8 %128, ptr %arrayidx164, align 1
  %130 = load i8, ptr %x26, align 1
  %131 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %131, i64 10
  store i8 %130, ptr %arrayidx165, align 1
  %132 = load i8, ptr %x28, align 1
  %133 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %133, i64 11
  store i8 %132, ptr %arrayidx166, align 1
  %134 = load i8, ptr %x30, align 1
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %135, i64 12
  store i8 %134, ptr %arrayidx167, align 1
  %136 = load i8, ptr %x32, align 1
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %137, i64 13
  store i8 %136, ptr %arrayidx168, align 1
  %138 = load i8, ptr %x34, align 1
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %139, i64 14
  store i8 %138, ptr %arrayidx169, align 1
  %140 = load i8, ptr %x35, align 1
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %141, i64 15
  store i8 %140, ptr %arrayidx170, align 1
  %142 = load i8, ptr %x36, align 1
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %143, i64 16
  store i8 %142, ptr %arrayidx171, align 1
  %144 = load i8, ptr %x38, align 1
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %145, i64 17
  store i8 %144, ptr %arrayidx172, align 1
  %146 = load i8, ptr %x40, align 1
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %147, i64 18
  store i8 %146, ptr %arrayidx173, align 1
  %148 = load i8, ptr %x42, align 1
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %149, i64 19
  store i8 %148, ptr %arrayidx174, align 1
  %150 = load i8, ptr %x44, align 1
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %151, i64 20
  store i8 %150, ptr %arrayidx175, align 1
  %152 = load i8, ptr %x46, align 1
  %153 = load ptr, ptr %out1.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %153, i64 21
  store i8 %152, ptr %arrayidx176, align 1
  %154 = load i8, ptr %x48, align 1
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %155, i64 22
  store i8 %154, ptr %arrayidx177, align 1
  %156 = load i8, ptr %x49, align 1
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %157, i64 23
  store i8 %156, ptr %arrayidx178, align 1
  %158 = load i8, ptr %x50, align 1
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %159, i64 24
  store i8 %158, ptr %arrayidx179, align 1
  %160 = load i8, ptr %x52, align 1
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %161, i64 25
  store i8 %160, ptr %arrayidx180, align 1
  %162 = load i8, ptr %x54, align 1
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx181 = getelementptr inbounds i8, ptr %163, i64 26
  store i8 %162, ptr %arrayidx181, align 1
  %164 = load i8, ptr %x56, align 1
  %165 = load ptr, ptr %out1.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %165, i64 27
  store i8 %164, ptr %arrayidx182, align 1
  %166 = load i8, ptr %x58, align 1
  %167 = load ptr, ptr %out1.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %167, i64 28
  store i8 %166, ptr %arrayidx183, align 1
  %168 = load i8, ptr %x60, align 1
  %169 = load ptr, ptr %out1.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, ptr %169, i64 29
  store i8 %168, ptr %arrayidx184, align 1
  %170 = load i8, ptr %x62, align 1
  %171 = load ptr, ptr %out1.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %171, i64 30
  store i8 %170, ptr %arrayidx185, align 1
  %172 = load i8, ptr %x63, align 1
  %173 = load ptr, ptr %out1.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %173, i64 31
  store i8 %172, ptr %arrayidx186, align 1
  %174 = load i8, ptr %x64, align 1
  %175 = load ptr, ptr %out1.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %175, i64 32
  store i8 %174, ptr %arrayidx187, align 1
  %176 = load i8, ptr %x66, align 1
  %177 = load ptr, ptr %out1.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %177, i64 33
  store i8 %176, ptr %arrayidx188, align 1
  %178 = load i8, ptr %x68, align 1
  %179 = load ptr, ptr %out1.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %179, i64 34
  store i8 %178, ptr %arrayidx189, align 1
  %180 = load i8, ptr %x70, align 1
  %181 = load ptr, ptr %out1.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %181, i64 35
  store i8 %180, ptr %arrayidx190, align 1
  %182 = load i8, ptr %x72, align 1
  %183 = load ptr, ptr %out1.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %183, i64 36
  store i8 %182, ptr %arrayidx191, align 1
  %184 = load i8, ptr %x74, align 1
  %185 = load ptr, ptr %out1.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %185, i64 37
  store i8 %184, ptr %arrayidx192, align 1
  %186 = load i8, ptr %x76, align 1
  %187 = load ptr, ptr %out1.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %187, i64 38
  store i8 %186, ptr %arrayidx193, align 1
  %188 = load i8, ptr %x77, align 1
  %189 = load ptr, ptr %out1.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, ptr %189, i64 39
  store i8 %188, ptr %arrayidx194, align 1
  %190 = load i8, ptr %x78, align 1
  %191 = load ptr, ptr %out1.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %191, i64 40
  store i8 %190, ptr %arrayidx195, align 1
  %192 = load i8, ptr %x80, align 1
  %193 = load ptr, ptr %out1.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, ptr %193, i64 41
  store i8 %192, ptr %arrayidx196, align 1
  %194 = load i8, ptr %x82, align 1
  %195 = load ptr, ptr %out1.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %195, i64 42
  store i8 %194, ptr %arrayidx197, align 1
  %196 = load i8, ptr %x84, align 1
  %197 = load ptr, ptr %out1.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %197, i64 43
  store i8 %196, ptr %arrayidx198, align 1
  %198 = load i8, ptr %x86, align 1
  %199 = load ptr, ptr %out1.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, ptr %199, i64 44
  store i8 %198, ptr %arrayidx199, align 1
  %200 = load i8, ptr %x88, align 1
  %201 = load ptr, ptr %out1.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %201, i64 45
  store i8 %200, ptr %arrayidx200, align 1
  %202 = load i8, ptr %x90, align 1
  %203 = load ptr, ptr %out1.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, ptr %203, i64 46
  store i8 %202, ptr %arrayidx201, align 1
  %204 = load i8, ptr %x91, align 1
  %205 = load ptr, ptr %out1.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, ptr %205, i64 47
  store i8 %204, ptr %arrayidx202, align 1
  %206 = load i8, ptr %x92, align 1
  %207 = load ptr, ptr %out1.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, ptr %207, i64 48
  store i8 %206, ptr %arrayidx203, align 1
  %208 = load i8, ptr %x94, align 1
  %209 = load ptr, ptr %out1.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %209, i64 49
  store i8 %208, ptr %arrayidx204, align 1
  %210 = load i8, ptr %x96, align 1
  %211 = load ptr, ptr %out1.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %211, i64 50
  store i8 %210, ptr %arrayidx205, align 1
  %212 = load i8, ptr %x98, align 1
  %213 = load ptr, ptr %out1.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, ptr %213, i64 51
  store i8 %212, ptr %arrayidx206, align 1
  %214 = load i8, ptr %x100, align 1
  %215 = load ptr, ptr %out1.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, ptr %215, i64 52
  store i8 %214, ptr %arrayidx207, align 1
  %216 = load i8, ptr %x102, align 1
  %217 = load ptr, ptr %out1.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, ptr %217, i64 53
  store i8 %216, ptr %arrayidx208, align 1
  %218 = load i8, ptr %x103, align 1
  %219 = load ptr, ptr %out1.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %219, i64 54
  store i8 %218, ptr %arrayidx209, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i8, align 1
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i8, align 1
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i8, align 1
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i8, align 1
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  %x53 = alloca i64, align 8
  %x54 = alloca i64, align 8
  %x55 = alloca i8, align 1
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
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 54
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 48
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 53
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 40
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 52
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 32
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 51
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 24
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 50
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 16
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 49
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 8
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 48
  %13 = load i8, ptr %arrayidx16, align 1
  store i8 %13, ptr %x7, align 1
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 47
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %shl19 = shl i64 %conv18, 56
  store i64 %shl19, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 46
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 48
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 45
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 40
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 44
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 32
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 43
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i64
  %shl31 = shl i64 %conv30, 24
  store i64 %shl31, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 42
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i64
  %shl34 = shl i64 %conv33, 16
  store i64 %shl34, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 41
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i64
  %shl37 = shl i64 %conv36, 8
  store i64 %shl37, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 40
  %29 = load i8, ptr %arrayidx38, align 1
  store i8 %29, ptr %x15, align 1
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %30, i64 39
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %31 to i64
  %shl41 = shl i64 %conv40, 56
  store i64 %shl41, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 38
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i64
  %shl44 = shl i64 %conv43, 48
  store i64 %shl44, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 37
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i64
  %shl47 = shl i64 %conv46, 40
  store i64 %shl47, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 36
  %37 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %37 to i64
  %shl50 = shl i64 %conv49, 32
  store i64 %shl50, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 35
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i64
  %shl53 = shl i64 %conv52, 24
  store i64 %shl53, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 34
  %41 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %41 to i64
  %shl56 = shl i64 %conv55, 16
  store i64 %shl56, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %42, i64 33
  %43 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %43 to i64
  %shl59 = shl i64 %conv58, 8
  store i64 %shl59, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %44, i64 32
  %45 = load i8, ptr %arrayidx60, align 1
  store i8 %45, ptr %x23, align 1
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %46, i64 31
  %47 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %47 to i64
  %shl63 = shl i64 %conv62, 56
  store i64 %shl63, ptr %x24, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %48, i64 30
  %49 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %49 to i64
  %shl66 = shl i64 %conv65, 48
  store i64 %shl66, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 29
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i64
  %shl69 = shl i64 %conv68, 40
  store i64 %shl69, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 28
  %53 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %53 to i64
  %shl72 = shl i64 %conv71, 32
  store i64 %shl72, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 27
  %55 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %55 to i64
  %shl75 = shl i64 %conv74, 24
  store i64 %shl75, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %56, i64 26
  %57 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %57 to i64
  %shl78 = shl i64 %conv77, 16
  store i64 %shl78, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %58, i64 25
  %59 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %59 to i64
  %shl81 = shl i64 %conv80, 8
  store i64 %shl81, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %60, i64 24
  %61 = load i8, ptr %arrayidx82, align 1
  store i8 %61, ptr %x31, align 1
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %62, i64 23
  %63 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %63 to i64
  %shl85 = shl i64 %conv84, 56
  store i64 %shl85, ptr %x32, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %64, i64 22
  %65 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %65 to i64
  %shl88 = shl i64 %conv87, 48
  store i64 %shl88, ptr %x33, align 8
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %66, i64 21
  %67 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %67 to i64
  %shl91 = shl i64 %conv90, 40
  store i64 %shl91, ptr %x34, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %68, i64 20
  %69 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %69 to i64
  %shl94 = shl i64 %conv93, 32
  store i64 %shl94, ptr %x35, align 8
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %70, i64 19
  %71 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %71 to i64
  %shl97 = shl i64 %conv96, 24
  store i64 %shl97, ptr %x36, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %72, i64 18
  %73 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %73 to i64
  %shl100 = shl i64 %conv99, 16
  store i64 %shl100, ptr %x37, align 8
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %74, i64 17
  %75 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %75 to i64
  %shl103 = shl i64 %conv102, 8
  store i64 %shl103, ptr %x38, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %76, i64 16
  %77 = load i8, ptr %arrayidx104, align 1
  store i8 %77, ptr %x39, align 1
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %78, i64 15
  %79 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %79 to i64
  %shl107 = shl i64 %conv106, 56
  store i64 %shl107, ptr %x40, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %80, i64 14
  %81 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %81 to i64
  %shl110 = shl i64 %conv109, 48
  store i64 %shl110, ptr %x41, align 8
  %82 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %82, i64 13
  %83 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %83 to i64
  %shl113 = shl i64 %conv112, 40
  store i64 %shl113, ptr %x42, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %84, i64 12
  %85 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %85 to i64
  %shl116 = shl i64 %conv115, 32
  store i64 %shl116, ptr %x43, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %86, i64 11
  %87 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %87 to i64
  %shl119 = shl i64 %conv118, 24
  store i64 %shl119, ptr %x44, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %88, i64 10
  %89 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %89 to i64
  %shl122 = shl i64 %conv121, 16
  store i64 %shl122, ptr %x45, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %90, i64 9
  %91 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %91 to i64
  %shl125 = shl i64 %conv124, 8
  store i64 %shl125, ptr %x46, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %92, i64 8
  %93 = load i8, ptr %arrayidx126, align 1
  store i8 %93, ptr %x47, align 1
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %94, i64 7
  %95 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %95 to i64
  %shl129 = shl i64 %conv128, 56
  store i64 %shl129, ptr %x48, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %96, i64 6
  %97 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %97 to i64
  %shl132 = shl i64 %conv131, 48
  store i64 %shl132, ptr %x49, align 8
  %98 = load ptr, ptr %arg1.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %98, i64 5
  %99 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %99 to i64
  %shl135 = shl i64 %conv134, 40
  store i64 %shl135, ptr %x50, align 8
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %100, i64 4
  %101 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %101 to i64
  %shl138 = shl i64 %conv137, 32
  store i64 %shl138, ptr %x51, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %102, i64 3
  %103 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %103 to i64
  %shl141 = shl i64 %conv140, 24
  store i64 %shl141, ptr %x52, align 8
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %104, i64 2
  %105 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %105 to i64
  %shl144 = shl i64 %conv143, 16
  store i64 %shl144, ptr %x53, align 8
  %106 = load ptr, ptr %arg1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %106, i64 1
  %107 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %107 to i64
  %shl147 = shl i64 %conv146, 8
  store i64 %shl147, ptr %x54, align 8
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %108, i64 0
  %109 = load i8, ptr %arrayidx148, align 1
  store i8 %109, ptr %x55, align 1
  %110 = load i64, ptr %x54, align 8
  %111 = load i8, ptr %x55, align 1
  %conv149 = zext i8 %111 to i64
  %add = add i64 %110, %conv149
  store i64 %add, ptr %x56, align 8
  %112 = load i64, ptr %x53, align 8
  %113 = load i64, ptr %x56, align 8
  %add150 = add i64 %112, %113
  store i64 %add150, ptr %x57, align 8
  %114 = load i64, ptr %x52, align 8
  %115 = load i64, ptr %x57, align 8
  %add151 = add i64 %114, %115
  store i64 %add151, ptr %x58, align 8
  %116 = load i64, ptr %x51, align 8
  %117 = load i64, ptr %x58, align 8
  %add152 = add i64 %116, %117
  store i64 %add152, ptr %x59, align 8
  %118 = load i64, ptr %x50, align 8
  %119 = load i64, ptr %x59, align 8
  %add153 = add i64 %118, %119
  store i64 %add153, ptr %x60, align 8
  %120 = load i64, ptr %x49, align 8
  %121 = load i64, ptr %x60, align 8
  %add154 = add i64 %120, %121
  store i64 %add154, ptr %x61, align 8
  %122 = load i64, ptr %x48, align 8
  %123 = load i64, ptr %x61, align 8
  %add155 = add i64 %122, %123
  store i64 %add155, ptr %x62, align 8
  %124 = load i64, ptr %x46, align 8
  %125 = load i8, ptr %x47, align 1
  %conv156 = zext i8 %125 to i64
  %add157 = add i64 %124, %conv156
  store i64 %add157, ptr %x63, align 8
  %126 = load i64, ptr %x45, align 8
  %127 = load i64, ptr %x63, align 8
  %add158 = add i64 %126, %127
  store i64 %add158, ptr %x64, align 8
  %128 = load i64, ptr %x44, align 8
  %129 = load i64, ptr %x64, align 8
  %add159 = add i64 %128, %129
  store i64 %add159, ptr %x65, align 8
  %130 = load i64, ptr %x43, align 8
  %131 = load i64, ptr %x65, align 8
  %add160 = add i64 %130, %131
  store i64 %add160, ptr %x66, align 8
  %132 = load i64, ptr %x42, align 8
  %133 = load i64, ptr %x66, align 8
  %add161 = add i64 %132, %133
  store i64 %add161, ptr %x67, align 8
  %134 = load i64, ptr %x41, align 8
  %135 = load i64, ptr %x67, align 8
  %add162 = add i64 %134, %135
  store i64 %add162, ptr %x68, align 8
  %136 = load i64, ptr %x40, align 8
  %137 = load i64, ptr %x68, align 8
  %add163 = add i64 %136, %137
  store i64 %add163, ptr %x69, align 8
  %138 = load i64, ptr %x38, align 8
  %139 = load i8, ptr %x39, align 1
  %conv164 = zext i8 %139 to i64
  %add165 = add i64 %138, %conv164
  store i64 %add165, ptr %x70, align 8
  %140 = load i64, ptr %x37, align 8
  %141 = load i64, ptr %x70, align 8
  %add166 = add i64 %140, %141
  store i64 %add166, ptr %x71, align 8
  %142 = load i64, ptr %x36, align 8
  %143 = load i64, ptr %x71, align 8
  %add167 = add i64 %142, %143
  store i64 %add167, ptr %x72, align 8
  %144 = load i64, ptr %x35, align 8
  %145 = load i64, ptr %x72, align 8
  %add168 = add i64 %144, %145
  store i64 %add168, ptr %x73, align 8
  %146 = load i64, ptr %x34, align 8
  %147 = load i64, ptr %x73, align 8
  %add169 = add i64 %146, %147
  store i64 %add169, ptr %x74, align 8
  %148 = load i64, ptr %x33, align 8
  %149 = load i64, ptr %x74, align 8
  %add170 = add i64 %148, %149
  store i64 %add170, ptr %x75, align 8
  %150 = load i64, ptr %x32, align 8
  %151 = load i64, ptr %x75, align 8
  %add171 = add i64 %150, %151
  store i64 %add171, ptr %x76, align 8
  %152 = load i64, ptr %x30, align 8
  %153 = load i8, ptr %x31, align 1
  %conv172 = zext i8 %153 to i64
  %add173 = add i64 %152, %conv172
  store i64 %add173, ptr %x77, align 8
  %154 = load i64, ptr %x29, align 8
  %155 = load i64, ptr %x77, align 8
  %add174 = add i64 %154, %155
  store i64 %add174, ptr %x78, align 8
  %156 = load i64, ptr %x28, align 8
  %157 = load i64, ptr %x78, align 8
  %add175 = add i64 %156, %157
  store i64 %add175, ptr %x79, align 8
  %158 = load i64, ptr %x27, align 8
  %159 = load i64, ptr %x79, align 8
  %add176 = add i64 %158, %159
  store i64 %add176, ptr %x80, align 8
  %160 = load i64, ptr %x26, align 8
  %161 = load i64, ptr %x80, align 8
  %add177 = add i64 %160, %161
  store i64 %add177, ptr %x81, align 8
  %162 = load i64, ptr %x25, align 8
  %163 = load i64, ptr %x81, align 8
  %add178 = add i64 %162, %163
  store i64 %add178, ptr %x82, align 8
  %164 = load i64, ptr %x24, align 8
  %165 = load i64, ptr %x82, align 8
  %add179 = add i64 %164, %165
  store i64 %add179, ptr %x83, align 8
  %166 = load i64, ptr %x22, align 8
  %167 = load i8, ptr %x23, align 1
  %conv180 = zext i8 %167 to i64
  %add181 = add i64 %166, %conv180
  store i64 %add181, ptr %x84, align 8
  %168 = load i64, ptr %x21, align 8
  %169 = load i64, ptr %x84, align 8
  %add182 = add i64 %168, %169
  store i64 %add182, ptr %x85, align 8
  %170 = load i64, ptr %x20, align 8
  %171 = load i64, ptr %x85, align 8
  %add183 = add i64 %170, %171
  store i64 %add183, ptr %x86, align 8
  %172 = load i64, ptr %x19, align 8
  %173 = load i64, ptr %x86, align 8
  %add184 = add i64 %172, %173
  store i64 %add184, ptr %x87, align 8
  %174 = load i64, ptr %x18, align 8
  %175 = load i64, ptr %x87, align 8
  %add185 = add i64 %174, %175
  store i64 %add185, ptr %x88, align 8
  %176 = load i64, ptr %x17, align 8
  %177 = load i64, ptr %x88, align 8
  %add186 = add i64 %176, %177
  store i64 %add186, ptr %x89, align 8
  %178 = load i64, ptr %x16, align 8
  %179 = load i64, ptr %x89, align 8
  %add187 = add i64 %178, %179
  store i64 %add187, ptr %x90, align 8
  %180 = load i64, ptr %x14, align 8
  %181 = load i8, ptr %x15, align 1
  %conv188 = zext i8 %181 to i64
  %add189 = add i64 %180, %conv188
  store i64 %add189, ptr %x91, align 8
  %182 = load i64, ptr %x13, align 8
  %183 = load i64, ptr %x91, align 8
  %add190 = add i64 %182, %183
  store i64 %add190, ptr %x92, align 8
  %184 = load i64, ptr %x12, align 8
  %185 = load i64, ptr %x92, align 8
  %add191 = add i64 %184, %185
  store i64 %add191, ptr %x93, align 8
  %186 = load i64, ptr %x11, align 8
  %187 = load i64, ptr %x93, align 8
  %add192 = add i64 %186, %187
  store i64 %add192, ptr %x94, align 8
  %188 = load i64, ptr %x10, align 8
  %189 = load i64, ptr %x94, align 8
  %add193 = add i64 %188, %189
  store i64 %add193, ptr %x95, align 8
  %190 = load i64, ptr %x9, align 8
  %191 = load i64, ptr %x95, align 8
  %add194 = add i64 %190, %191
  store i64 %add194, ptr %x96, align 8
  %192 = load i64, ptr %x8, align 8
  %193 = load i64, ptr %x96, align 8
  %add195 = add i64 %192, %193
  store i64 %add195, ptr %x97, align 8
  %194 = load i64, ptr %x6, align 8
  %195 = load i8, ptr %x7, align 1
  %conv196 = zext i8 %195 to i64
  %add197 = add i64 %194, %conv196
  store i64 %add197, ptr %x98, align 8
  %196 = load i64, ptr %x5, align 8
  %197 = load i64, ptr %x98, align 8
  %add198 = add i64 %196, %197
  store i64 %add198, ptr %x99, align 8
  %198 = load i64, ptr %x4, align 8
  %199 = load i64, ptr %x99, align 8
  %add199 = add i64 %198, %199
  store i64 %add199, ptr %x100, align 8
  %200 = load i64, ptr %x3, align 8
  %201 = load i64, ptr %x100, align 8
  %add200 = add i64 %200, %201
  store i64 %add200, ptr %x101, align 8
  %202 = load i64, ptr %x2, align 8
  %203 = load i64, ptr %x101, align 8
  %add201 = add i64 %202, %203
  store i64 %add201, ptr %x102, align 8
  %204 = load i64, ptr %x1, align 8
  %205 = load i64, ptr %x102, align 8
  %add202 = add i64 %204, %205
  store i64 %add202, ptr %x103, align 8
  %206 = load i64, ptr %x62, align 8
  %207 = load ptr, ptr %out1.addr, align 8
  %arrayidx203 = getelementptr inbounds i64, ptr %207, i64 0
  store i64 %206, ptr %arrayidx203, align 8
  %208 = load i64, ptr %x69, align 8
  %209 = load ptr, ptr %out1.addr, align 8
  %arrayidx204 = getelementptr inbounds i64, ptr %209, i64 1
  store i64 %208, ptr %arrayidx204, align 8
  %210 = load i64, ptr %x76, align 8
  %211 = load ptr, ptr %out1.addr, align 8
  %arrayidx205 = getelementptr inbounds i64, ptr %211, i64 2
  store i64 %210, ptr %arrayidx205, align 8
  %212 = load i64, ptr %x83, align 8
  %213 = load ptr, ptr %out1.addr, align 8
  %arrayidx206 = getelementptr inbounds i64, ptr %213, i64 3
  store i64 %212, ptr %arrayidx206, align 8
  %214 = load i64, ptr %x90, align 8
  %215 = load ptr, ptr %out1.addr, align 8
  %arrayidx207 = getelementptr inbounds i64, ptr %215, i64 4
  store i64 %214, ptr %arrayidx207, align 8
  %216 = load i64, ptr %x97, align 8
  %217 = load ptr, ptr %out1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %217, i64 5
  store i64 %216, ptr %arrayidx208, align 8
  %218 = load i64, ptr %x103, align 8
  %219 = load ptr, ptr %out1.addr, align 8
  %arrayidx209 = getelementptr inbounds i64, ptr %219, i64 6
  store i64 %218, ptr %arrayidx209, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_set_one(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 29740, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 0, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 0, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 -5111598749797318656, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 -2881840887160132396, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 -1643158192681172724, ptr %arrayidx5, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 6
  store i64 260509760564954, ptr %arrayidx6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_msat(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 -1, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 -1, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 -1, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 -161717841442111489, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 8918917783347572387, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 7853257225132122198, ptr %arrayidx5, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 6
  store i64 620258357900100, ptr %arrayidx6, align 8
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %7, i64 7
  store i64 0, ptr %arrayidx7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i64 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
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
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
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
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i8, align 1
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
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
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
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i8, align 1
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
  %x198 = alloca i64, align 8
  %x199 = alloca i64, align 8
  %x200 = alloca i64, align 8
  %x201 = alloca i64, align 8
  %x202 = alloca i64, align 8
  %x203 = alloca i64, align 8
  %x204 = alloca i64, align 8
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
  call void @fiat_p434_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %not, i64 noundef 1)
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
  call void @fiat_p434_addcarryx_u64(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i64 noundef %not6, i64 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i64, ptr %arg1.addr, align 8
  %7 = load i64, ptr %x4, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef %10, i64 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx10, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %13, i64 noundef %15, i64 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx12, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %18, i64 noundef %20, i64 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx13, align 8
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 3
  %27 = load i64, ptr %arrayidx14, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x10, i8 noundef zeroext %23, i64 noundef %25, i64 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 4
  %30 = load i64, ptr %arrayidx15, align 8
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 4
  %32 = load i64, ptr %arrayidx16, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %28, i64 noundef %30, i64 noundef %32)
  %33 = load i8, ptr %x3, align 1
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 5
  %35 = load i64, ptr %arrayidx17, align 8
  %36 = load ptr, ptr %arg3.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %36, i64 5
  %37 = load i64, ptr %arrayidx18, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x12, i8 noundef zeroext %33, i64 noundef %35, i64 noundef %37)
  %38 = load i8, ptr %x3, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %39, i64 6
  %40 = load i64, ptr %arrayidx19, align 8
  %41 = load ptr, ptr %arg3.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %41, i64 6
  %42 = load i64, ptr %arrayidx20, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x13, i8 noundef zeroext %38, i64 noundef %40, i64 noundef %42)
  %43 = load i8, ptr %x3, align 1
  %44 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %44, i64 7
  %45 = load i64, ptr %arrayidx21, align 8
  %46 = load ptr, ptr %arg3.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %46, i64 7
  %47 = load i64, ptr %arrayidx22, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x14, i8 noundef zeroext %43, i64 noundef %45, i64 noundef %47)
  %48 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %48, i64 0
  %49 = load i64, ptr %arrayidx23, align 8
  %not24 = xor i64 %49, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext 0, i64 noundef 1, i64 noundef %not24)
  %50 = load i8, ptr %x16, align 1
  %51 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %51, i64 1
  %52 = load i64, ptr %arrayidx25, align 8
  %not26 = xor i64 %52, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %50, i64 noundef 0, i64 noundef %not26)
  %53 = load i8, ptr %x18, align 1
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %54, i64 2
  %55 = load i64, ptr %arrayidx27, align 8
  %not28 = xor i64 %55, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %53, i64 noundef 0, i64 noundef %not28)
  %56 = load i8, ptr %x20, align 1
  %57 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %57, i64 3
  %58 = load i64, ptr %arrayidx29, align 8
  %not30 = xor i64 %58, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x21, ptr noundef %x22, i8 noundef zeroext %56, i64 noundef 0, i64 noundef %not30)
  %59 = load i8, ptr %x22, align 1
  %60 = load ptr, ptr %arg2.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %60, i64 4
  %61 = load i64, ptr %arrayidx31, align 8
  %not32 = xor i64 %61, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x23, ptr noundef %x24, i8 noundef zeroext %59, i64 noundef 0, i64 noundef %not32)
  %62 = load i8, ptr %x24, align 1
  %63 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %63, i64 5
  %64 = load i64, ptr %arrayidx33, align 8
  %not34 = xor i64 %64, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x25, ptr noundef %x26, i8 noundef zeroext %62, i64 noundef 0, i64 noundef %not34)
  %65 = load i8, ptr %x26, align 1
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %66, i64 6
  %67 = load i64, ptr %arrayidx35, align 8
  %not36 = xor i64 %67, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext %65, i64 noundef 0, i64 noundef %not36)
  %68 = load i8, ptr %x28, align 1
  %69 = load ptr, ptr %arg2.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %69, i64 7
  %70 = load i64, ptr %arrayidx37, align 8
  %not38 = xor i64 %70, -1
  call void @fiat_p434_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext %68, i64 noundef 0, i64 noundef %not38)
  %71 = load i8, ptr %x3, align 1
  %72 = load ptr, ptr %arg3.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %72, i64 0
  %73 = load i64, ptr %arrayidx39, align 8
  %74 = load i64, ptr %x15, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x31, i8 noundef zeroext %71, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x3, align 1
  %76 = load ptr, ptr %arg3.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %76, i64 1
  %77 = load i64, ptr %arrayidx40, align 8
  %78 = load i64, ptr %x17, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x32, i8 noundef zeroext %75, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x3, align 1
  %80 = load ptr, ptr %arg3.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %80, i64 2
  %81 = load i64, ptr %arrayidx41, align 8
  %82 = load i64, ptr %x19, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x33, i8 noundef zeroext %79, i64 noundef %81, i64 noundef %82)
  %83 = load i8, ptr %x3, align 1
  %84 = load ptr, ptr %arg3.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %84, i64 3
  %85 = load i64, ptr %arrayidx42, align 8
  %86 = load i64, ptr %x21, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x34, i8 noundef zeroext %83, i64 noundef %85, i64 noundef %86)
  %87 = load i8, ptr %x3, align 1
  %88 = load ptr, ptr %arg3.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %88, i64 4
  %89 = load i64, ptr %arrayidx43, align 8
  %90 = load i64, ptr %x23, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x35, i8 noundef zeroext %87, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x3, align 1
  %92 = load ptr, ptr %arg3.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %92, i64 5
  %93 = load i64, ptr %arrayidx44, align 8
  %94 = load i64, ptr %x25, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x36, i8 noundef zeroext %91, i64 noundef %93, i64 noundef %94)
  %95 = load i8, ptr %x3, align 1
  %96 = load ptr, ptr %arg3.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %96, i64 6
  %97 = load i64, ptr %arrayidx45, align 8
  %98 = load i64, ptr %x27, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x37, i8 noundef zeroext %95, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x3, align 1
  %100 = load ptr, ptr %arg3.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %100, i64 7
  %101 = load i64, ptr %arrayidx46, align 8
  %102 = load i64, ptr %x29, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x38, i8 noundef zeroext %99, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x3, align 1
  %104 = load ptr, ptr %arg4.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %104, i64 0
  %105 = load i64, ptr %arrayidx47, align 8
  %106 = load ptr, ptr %arg5.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %106, i64 0
  %107 = load i64, ptr %arrayidx48, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x39, i8 noundef zeroext %103, i64 noundef %105, i64 noundef %107)
  %108 = load i8, ptr %x3, align 1
  %109 = load ptr, ptr %arg4.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %109, i64 1
  %110 = load i64, ptr %arrayidx49, align 8
  %111 = load ptr, ptr %arg5.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %111, i64 1
  %112 = load i64, ptr %arrayidx50, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x40, i8 noundef zeroext %108, i64 noundef %110, i64 noundef %112)
  %113 = load i8, ptr %x3, align 1
  %114 = load ptr, ptr %arg4.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %114, i64 2
  %115 = load i64, ptr %arrayidx51, align 8
  %116 = load ptr, ptr %arg5.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx52, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x41, i8 noundef zeroext %113, i64 noundef %115, i64 noundef %117)
  %118 = load i8, ptr %x3, align 1
  %119 = load ptr, ptr %arg4.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %119, i64 3
  %120 = load i64, ptr %arrayidx53, align 8
  %121 = load ptr, ptr %arg5.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %121, i64 3
  %122 = load i64, ptr %arrayidx54, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x42, i8 noundef zeroext %118, i64 noundef %120, i64 noundef %122)
  %123 = load i8, ptr %x3, align 1
  %124 = load ptr, ptr %arg4.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %124, i64 4
  %125 = load i64, ptr %arrayidx55, align 8
  %126 = load ptr, ptr %arg5.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %126, i64 4
  %127 = load i64, ptr %arrayidx56, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x43, i8 noundef zeroext %123, i64 noundef %125, i64 noundef %127)
  %128 = load i8, ptr %x3, align 1
  %129 = load ptr, ptr %arg4.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %129, i64 5
  %130 = load i64, ptr %arrayidx57, align 8
  %131 = load ptr, ptr %arg5.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %131, i64 5
  %132 = load i64, ptr %arrayidx58, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x44, i8 noundef zeroext %128, i64 noundef %130, i64 noundef %132)
  %133 = load i8, ptr %x3, align 1
  %134 = load ptr, ptr %arg4.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %134, i64 6
  %135 = load i64, ptr %arrayidx59, align 8
  %136 = load ptr, ptr %arg5.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %136, i64 6
  %137 = load i64, ptr %arrayidx60, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x45, i8 noundef zeroext %133, i64 noundef %135, i64 noundef %137)
  %138 = load i64, ptr %x39, align 8
  %139 = load i64, ptr %x39, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x46, ptr noundef %x47, i8 noundef zeroext 0, i64 noundef %138, i64 noundef %139)
  %140 = load i8, ptr %x47, align 1
  %141 = load i64, ptr %x40, align 8
  %142 = load i64, ptr %x40, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x48, ptr noundef %x49, i8 noundef zeroext %140, i64 noundef %141, i64 noundef %142)
  %143 = load i8, ptr %x49, align 1
  %144 = load i64, ptr %x41, align 8
  %145 = load i64, ptr %x41, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext %143, i64 noundef %144, i64 noundef %145)
  %146 = load i8, ptr %x51, align 1
  %147 = load i64, ptr %x42, align 8
  %148 = load i64, ptr %x42, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext %146, i64 noundef %147, i64 noundef %148)
  %149 = load i8, ptr %x53, align 1
  %150 = load i64, ptr %x43, align 8
  %151 = load i64, ptr %x43, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %149, i64 noundef %150, i64 noundef %151)
  %152 = load i8, ptr %x55, align 1
  %153 = load i64, ptr %x44, align 8
  %154 = load i64, ptr %x44, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %152, i64 noundef %153, i64 noundef %154)
  %155 = load i8, ptr %x57, align 1
  %156 = load i64, ptr %x45, align 8
  %157 = load i64, ptr %x45, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %155, i64 noundef %156, i64 noundef %157)
  %158 = load i64, ptr %x46, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i64 noundef %158, i64 noundef -1)
  %159 = load i8, ptr %x61, align 1
  %160 = load i64, ptr %x48, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %159, i64 noundef %160, i64 noundef -1)
  %161 = load i8, ptr %x63, align 1
  %162 = load i64, ptr %x50, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %161, i64 noundef %162, i64 noundef -1)
  %163 = load i8, ptr %x65, align 1
  %164 = load i64, ptr %x52, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %163, i64 noundef %164, i64 noundef -161717841442111489)
  %165 = load i8, ptr %x67, align 1
  %166 = load i64, ptr %x54, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %165, i64 noundef %166, i64 noundef 8918917783347572387)
  %167 = load i8, ptr %x69, align 1
  %168 = load i64, ptr %x56, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x70, ptr noundef %x71, i8 noundef zeroext %167, i64 noundef %168, i64 noundef 7853257225132122198)
  %169 = load i8, ptr %x71, align 1
  %170 = load i64, ptr %x58, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x72, ptr noundef %x73, i8 noundef zeroext %169, i64 noundef %170, i64 noundef 620258357900100)
  %171 = load i8, ptr %x73, align 1
  %172 = load i8, ptr %x59, align 1
  %conv61 = zext i8 %172 to i64
  call void @fiat_p434_subborrowx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext %171, i64 noundef %conv61, i64 noundef 0)
  %173 = load ptr, ptr %arg4.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %173, i64 6
  %174 = load i64, ptr %arrayidx62, align 8
  store i64 %174, ptr %x76, align 8
  %175 = load ptr, ptr %arg4.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %175, i64 5
  %176 = load i64, ptr %arrayidx63, align 8
  store i64 %176, ptr %x77, align 8
  %177 = load ptr, ptr %arg4.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %177, i64 4
  %178 = load i64, ptr %arrayidx64, align 8
  store i64 %178, ptr %x78, align 8
  %179 = load ptr, ptr %arg4.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %179, i64 3
  %180 = load i64, ptr %arrayidx65, align 8
  store i64 %180, ptr %x79, align 8
  %181 = load ptr, ptr %arg4.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %181, i64 2
  %182 = load i64, ptr %arrayidx66, align 8
  store i64 %182, ptr %x80, align 8
  %183 = load ptr, ptr %arg4.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %183, i64 1
  %184 = load i64, ptr %arrayidx67, align 8
  store i64 %184, ptr %x81, align 8
  %185 = load ptr, ptr %arg4.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %185, i64 0
  %186 = load i64, ptr %arrayidx68, align 8
  store i64 %186, ptr %x82, align 8
  %187 = load i64, ptr %x82, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %187)
  %188 = load i8, ptr %x84, align 1
  %189 = load i64, ptr %x81, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %188, i64 noundef 0, i64 noundef %189)
  %190 = load i8, ptr %x86, align 1
  %191 = load i64, ptr %x80, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %190, i64 noundef 0, i64 noundef %191)
  %192 = load i8, ptr %x88, align 1
  %193 = load i64, ptr %x79, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %192, i64 noundef 0, i64 noundef %193)
  %194 = load i8, ptr %x90, align 1
  %195 = load i64, ptr %x78, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %194, i64 noundef 0, i64 noundef %195)
  %196 = load i8, ptr %x92, align 1
  %197 = load i64, ptr %x77, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %196, i64 noundef 0, i64 noundef %197)
  %198 = load i8, ptr %x94, align 1
  %199 = load i64, ptr %x76, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %198, i64 noundef 0, i64 noundef %199)
  %200 = load i8, ptr %x96, align 1
  call void @fiat_p434_cmovznz_u64(ptr noundef %x97, i8 noundef zeroext %200, i64 noundef 0, i64 noundef -1)
  %201 = load i64, ptr %x83, align 8
  %202 = load i64, ptr %x97, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext 0, i64 noundef %201, i64 noundef %202)
  %203 = load i8, ptr %x99, align 1
  %204 = load i64, ptr %x85, align 8
  %205 = load i64, ptr %x97, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %203, i64 noundef %204, i64 noundef %205)
  %206 = load i8, ptr %x101, align 1
  %207 = load i64, ptr %x87, align 8
  %208 = load i64, ptr %x97, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext %206, i64 noundef %207, i64 noundef %208)
  %209 = load i8, ptr %x103, align 1
  %210 = load i64, ptr %x89, align 8
  %211 = load i64, ptr %x97, align 8
  %and69 = and i64 %211, -161717841442111489
  call void @fiat_p434_addcarryx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %209, i64 noundef %210, i64 noundef %and69)
  %212 = load i8, ptr %x105, align 1
  %213 = load i64, ptr %x91, align 8
  %214 = load i64, ptr %x97, align 8
  %and70 = and i64 %214, 8918917783347572387
  call void @fiat_p434_addcarryx_u64(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %212, i64 noundef %213, i64 noundef %and70)
  %215 = load i8, ptr %x107, align 1
  %216 = load i64, ptr %x93, align 8
  %217 = load i64, ptr %x97, align 8
  %and71 = and i64 %217, 7853257225132122198
  call void @fiat_p434_addcarryx_u64(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %215, i64 noundef %216, i64 noundef %and71)
  %218 = load i8, ptr %x109, align 1
  %219 = load i64, ptr %x95, align 8
  %220 = load i64, ptr %x97, align 8
  %and72 = and i64 %220, 620258357900100
  call void @fiat_p434_addcarryx_u64(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %218, i64 noundef %219, i64 noundef %and72)
  %221 = load i8, ptr %x3, align 1
  %222 = load ptr, ptr %arg5.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %222, i64 0
  %223 = load i64, ptr %arrayidx73, align 8
  %224 = load i64, ptr %x98, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x112, i8 noundef zeroext %221, i64 noundef %223, i64 noundef %224)
  %225 = load i8, ptr %x3, align 1
  %226 = load ptr, ptr %arg5.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %226, i64 1
  %227 = load i64, ptr %arrayidx74, align 8
  %228 = load i64, ptr %x100, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x113, i8 noundef zeroext %225, i64 noundef %227, i64 noundef %228)
  %229 = load i8, ptr %x3, align 1
  %230 = load ptr, ptr %arg5.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %230, i64 2
  %231 = load i64, ptr %arrayidx75, align 8
  %232 = load i64, ptr %x102, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x114, i8 noundef zeroext %229, i64 noundef %231, i64 noundef %232)
  %233 = load i8, ptr %x3, align 1
  %234 = load ptr, ptr %arg5.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %234, i64 3
  %235 = load i64, ptr %arrayidx76, align 8
  %236 = load i64, ptr %x104, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x115, i8 noundef zeroext %233, i64 noundef %235, i64 noundef %236)
  %237 = load i8, ptr %x3, align 1
  %238 = load ptr, ptr %arg5.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %238, i64 4
  %239 = load i64, ptr %arrayidx77, align 8
  %240 = load i64, ptr %x106, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x116, i8 noundef zeroext %237, i64 noundef %239, i64 noundef %240)
  %241 = load i8, ptr %x3, align 1
  %242 = load ptr, ptr %arg5.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %242, i64 5
  %243 = load i64, ptr %arrayidx78, align 8
  %244 = load i64, ptr %x108, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x117, i8 noundef zeroext %241, i64 noundef %243, i64 noundef %244)
  %245 = load i8, ptr %x3, align 1
  %246 = load ptr, ptr %arg5.addr, align 8
  %arrayidx79 = getelementptr inbounds i64, ptr %246, i64 6
  %247 = load i64, ptr %arrayidx79, align 8
  %248 = load i64, ptr %x110, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x118, i8 noundef zeroext %245, i64 noundef %247, i64 noundef %248)
  %249 = load i64, ptr %x31, align 8
  %and80 = and i64 %249, 1
  %conv81 = trunc i64 %and80 to i8
  store i8 %conv81, ptr %x119, align 1
  %250 = load i8, ptr %x119, align 1
  %251 = load i64, ptr %x7, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x120, i8 noundef zeroext %250, i64 noundef 0, i64 noundef %251)
  %252 = load i8, ptr %x119, align 1
  %253 = load i64, ptr %x8, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x121, i8 noundef zeroext %252, i64 noundef 0, i64 noundef %253)
  %254 = load i8, ptr %x119, align 1
  %255 = load i64, ptr %x9, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x122, i8 noundef zeroext %254, i64 noundef 0, i64 noundef %255)
  %256 = load i8, ptr %x119, align 1
  %257 = load i64, ptr %x10, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x123, i8 noundef zeroext %256, i64 noundef 0, i64 noundef %257)
  %258 = load i8, ptr %x119, align 1
  %259 = load i64, ptr %x11, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x124, i8 noundef zeroext %258, i64 noundef 0, i64 noundef %259)
  %260 = load i8, ptr %x119, align 1
  %261 = load i64, ptr %x12, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x125, i8 noundef zeroext %260, i64 noundef 0, i64 noundef %261)
  %262 = load i8, ptr %x119, align 1
  %263 = load i64, ptr %x13, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x126, i8 noundef zeroext %262, i64 noundef 0, i64 noundef %263)
  %264 = load i8, ptr %x119, align 1
  %265 = load i64, ptr %x14, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x127, i8 noundef zeroext %264, i64 noundef 0, i64 noundef %265)
  %266 = load i64, ptr %x31, align 8
  %267 = load i64, ptr %x120, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext 0, i64 noundef %266, i64 noundef %267)
  %268 = load i8, ptr %x129, align 1
  %269 = load i64, ptr %x32, align 8
  %270 = load i64, ptr %x121, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %268, i64 noundef %269, i64 noundef %270)
  %271 = load i8, ptr %x131, align 1
  %272 = load i64, ptr %x33, align 8
  %273 = load i64, ptr %x122, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %271, i64 noundef %272, i64 noundef %273)
  %274 = load i8, ptr %x133, align 1
  %275 = load i64, ptr %x34, align 8
  %276 = load i64, ptr %x123, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x134, ptr noundef %x135, i8 noundef zeroext %274, i64 noundef %275, i64 noundef %276)
  %277 = load i8, ptr %x135, align 1
  %278 = load i64, ptr %x35, align 8
  %279 = load i64, ptr %x124, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x136, ptr noundef %x137, i8 noundef zeroext %277, i64 noundef %278, i64 noundef %279)
  %280 = load i8, ptr %x137, align 1
  %281 = load i64, ptr %x36, align 8
  %282 = load i64, ptr %x125, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x138, ptr noundef %x139, i8 noundef zeroext %280, i64 noundef %281, i64 noundef %282)
  %283 = load i8, ptr %x139, align 1
  %284 = load i64, ptr %x37, align 8
  %285 = load i64, ptr %x126, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x140, ptr noundef %x141, i8 noundef zeroext %283, i64 noundef %284, i64 noundef %285)
  %286 = load i8, ptr %x141, align 1
  %287 = load i64, ptr %x38, align 8
  %288 = load i64, ptr %x127, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x142, ptr noundef %x143, i8 noundef zeroext %286, i64 noundef %287, i64 noundef %288)
  %289 = load i8, ptr %x119, align 1
  %290 = load i64, ptr %x39, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x144, i8 noundef zeroext %289, i64 noundef 0, i64 noundef %290)
  %291 = load i8, ptr %x119, align 1
  %292 = load i64, ptr %x40, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x145, i8 noundef zeroext %291, i64 noundef 0, i64 noundef %292)
  %293 = load i8, ptr %x119, align 1
  %294 = load i64, ptr %x41, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x146, i8 noundef zeroext %293, i64 noundef 0, i64 noundef %294)
  %295 = load i8, ptr %x119, align 1
  %296 = load i64, ptr %x42, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x147, i8 noundef zeroext %295, i64 noundef 0, i64 noundef %296)
  %297 = load i8, ptr %x119, align 1
  %298 = load i64, ptr %x43, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x148, i8 noundef zeroext %297, i64 noundef 0, i64 noundef %298)
  %299 = load i8, ptr %x119, align 1
  %300 = load i64, ptr %x44, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x149, i8 noundef zeroext %299, i64 noundef 0, i64 noundef %300)
  %301 = load i8, ptr %x119, align 1
  %302 = load i64, ptr %x45, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x150, i8 noundef zeroext %301, i64 noundef 0, i64 noundef %302)
  %303 = load i64, ptr %x112, align 8
  %304 = load i64, ptr %x144, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext 0, i64 noundef %303, i64 noundef %304)
  %305 = load i8, ptr %x152, align 1
  %306 = load i64, ptr %x113, align 8
  %307 = load i64, ptr %x145, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %305, i64 noundef %306, i64 noundef %307)
  %308 = load i8, ptr %x154, align 1
  %309 = load i64, ptr %x114, align 8
  %310 = load i64, ptr %x146, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %308, i64 noundef %309, i64 noundef %310)
  %311 = load i8, ptr %x156, align 1
  %312 = load i64, ptr %x115, align 8
  %313 = load i64, ptr %x147, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x157, ptr noundef %x158, i8 noundef zeroext %311, i64 noundef %312, i64 noundef %313)
  %314 = load i8, ptr %x158, align 1
  %315 = load i64, ptr %x116, align 8
  %316 = load i64, ptr %x148, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x159, ptr noundef %x160, i8 noundef zeroext %314, i64 noundef %315, i64 noundef %316)
  %317 = load i8, ptr %x160, align 1
  %318 = load i64, ptr %x117, align 8
  %319 = load i64, ptr %x149, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x161, ptr noundef %x162, i8 noundef zeroext %317, i64 noundef %318, i64 noundef %319)
  %320 = load i8, ptr %x162, align 1
  %321 = load i64, ptr %x118, align 8
  %322 = load i64, ptr %x150, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x163, ptr noundef %x164, i8 noundef zeroext %320, i64 noundef %321, i64 noundef %322)
  %323 = load i64, ptr %x151, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x165, ptr noundef %x166, i8 noundef zeroext 0, i64 noundef %323, i64 noundef -1)
  %324 = load i8, ptr %x166, align 1
  %325 = load i64, ptr %x153, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x167, ptr noundef %x168, i8 noundef zeroext %324, i64 noundef %325, i64 noundef -1)
  %326 = load i8, ptr %x168, align 1
  %327 = load i64, ptr %x155, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x169, ptr noundef %x170, i8 noundef zeroext %326, i64 noundef %327, i64 noundef -1)
  %328 = load i8, ptr %x170, align 1
  %329 = load i64, ptr %x157, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext %328, i64 noundef %329, i64 noundef -161717841442111489)
  %330 = load i8, ptr %x172, align 1
  %331 = load i64, ptr %x159, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %330, i64 noundef %331, i64 noundef 8918917783347572387)
  %332 = load i8, ptr %x174, align 1
  %333 = load i64, ptr %x161, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %332, i64 noundef %333, i64 noundef 7853257225132122198)
  %334 = load i8, ptr %x176, align 1
  %335 = load i64, ptr %x163, align 8
  call void @fiat_p434_subborrowx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %334, i64 noundef %335, i64 noundef 620258357900100)
  %336 = load i8, ptr %x178, align 1
  %337 = load i8, ptr %x164, align 1
  %conv82 = zext i8 %337 to i64
  call void @fiat_p434_subborrowx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %336, i64 noundef %conv82, i64 noundef 0)
  %338 = load i64, ptr %x6, align 8
  call void @fiat_p434_addcarryx_u64(ptr noundef %x181, ptr noundef %x182, i8 noundef zeroext 0, i64 noundef %338, i64 noundef 1)
  %339 = load i64, ptr %x128, align 8
  %shr83 = lshr i64 %339, 1
  %340 = load i64, ptr %x130, align 8
  %shl = shl i64 %340, 63
  %and84 = and i64 %shl, -1
  %or = or i64 %shr83, %and84
  store i64 %or, ptr %x183, align 8
  %341 = load i64, ptr %x130, align 8
  %shr85 = lshr i64 %341, 1
  %342 = load i64, ptr %x132, align 8
  %shl86 = shl i64 %342, 63
  %and87 = and i64 %shl86, -1
  %or88 = or i64 %shr85, %and87
  store i64 %or88, ptr %x184, align 8
  %343 = load i64, ptr %x132, align 8
  %shr89 = lshr i64 %343, 1
  %344 = load i64, ptr %x134, align 8
  %shl90 = shl i64 %344, 63
  %and91 = and i64 %shl90, -1
  %or92 = or i64 %shr89, %and91
  store i64 %or92, ptr %x185, align 8
  %345 = load i64, ptr %x134, align 8
  %shr93 = lshr i64 %345, 1
  %346 = load i64, ptr %x136, align 8
  %shl94 = shl i64 %346, 63
  %and95 = and i64 %shl94, -1
  %or96 = or i64 %shr93, %and95
  store i64 %or96, ptr %x186, align 8
  %347 = load i64, ptr %x136, align 8
  %shr97 = lshr i64 %347, 1
  %348 = load i64, ptr %x138, align 8
  %shl98 = shl i64 %348, 63
  %and99 = and i64 %shl98, -1
  %or100 = or i64 %shr97, %and99
  store i64 %or100, ptr %x187, align 8
  %349 = load i64, ptr %x138, align 8
  %shr101 = lshr i64 %349, 1
  %350 = load i64, ptr %x140, align 8
  %shl102 = shl i64 %350, 63
  %and103 = and i64 %shl102, -1
  %or104 = or i64 %shr101, %and103
  store i64 %or104, ptr %x188, align 8
  %351 = load i64, ptr %x140, align 8
  %shr105 = lshr i64 %351, 1
  %352 = load i64, ptr %x142, align 8
  %shl106 = shl i64 %352, 63
  %and107 = and i64 %shl106, -1
  %or108 = or i64 %shr105, %and107
  store i64 %or108, ptr %x189, align 8
  %353 = load i64, ptr %x142, align 8
  %and109 = and i64 %353, -9223372036854775808
  %354 = load i64, ptr %x142, align 8
  %shr110 = lshr i64 %354, 1
  %or111 = or i64 %and109, %shr110
  store i64 %or111, ptr %x190, align 8
  %355 = load i8, ptr %x75, align 1
  %356 = load i64, ptr %x60, align 8
  %357 = load i64, ptr %x46, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x191, i8 noundef zeroext %355, i64 noundef %356, i64 noundef %357)
  %358 = load i8, ptr %x75, align 1
  %359 = load i64, ptr %x62, align 8
  %360 = load i64, ptr %x48, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x192, i8 noundef zeroext %358, i64 noundef %359, i64 noundef %360)
  %361 = load i8, ptr %x75, align 1
  %362 = load i64, ptr %x64, align 8
  %363 = load i64, ptr %x50, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x193, i8 noundef zeroext %361, i64 noundef %362, i64 noundef %363)
  %364 = load i8, ptr %x75, align 1
  %365 = load i64, ptr %x66, align 8
  %366 = load i64, ptr %x52, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x194, i8 noundef zeroext %364, i64 noundef %365, i64 noundef %366)
  %367 = load i8, ptr %x75, align 1
  %368 = load i64, ptr %x68, align 8
  %369 = load i64, ptr %x54, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x195, i8 noundef zeroext %367, i64 noundef %368, i64 noundef %369)
  %370 = load i8, ptr %x75, align 1
  %371 = load i64, ptr %x70, align 8
  %372 = load i64, ptr %x56, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x196, i8 noundef zeroext %370, i64 noundef %371, i64 noundef %372)
  %373 = load i8, ptr %x75, align 1
  %374 = load i64, ptr %x72, align 8
  %375 = load i64, ptr %x58, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x197, i8 noundef zeroext %373, i64 noundef %374, i64 noundef %375)
  %376 = load i8, ptr %x180, align 1
  %377 = load i64, ptr %x165, align 8
  %378 = load i64, ptr %x151, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x198, i8 noundef zeroext %376, i64 noundef %377, i64 noundef %378)
  %379 = load i8, ptr %x180, align 1
  %380 = load i64, ptr %x167, align 8
  %381 = load i64, ptr %x153, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x199, i8 noundef zeroext %379, i64 noundef %380, i64 noundef %381)
  %382 = load i8, ptr %x180, align 1
  %383 = load i64, ptr %x169, align 8
  %384 = load i64, ptr %x155, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x200, i8 noundef zeroext %382, i64 noundef %383, i64 noundef %384)
  %385 = load i8, ptr %x180, align 1
  %386 = load i64, ptr %x171, align 8
  %387 = load i64, ptr %x157, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x201, i8 noundef zeroext %385, i64 noundef %386, i64 noundef %387)
  %388 = load i8, ptr %x180, align 1
  %389 = load i64, ptr %x173, align 8
  %390 = load i64, ptr %x159, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x202, i8 noundef zeroext %388, i64 noundef %389, i64 noundef %390)
  %391 = load i8, ptr %x180, align 1
  %392 = load i64, ptr %x175, align 8
  %393 = load i64, ptr %x161, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x203, i8 noundef zeroext %391, i64 noundef %392, i64 noundef %393)
  %394 = load i8, ptr %x180, align 1
  %395 = load i64, ptr %x177, align 8
  %396 = load i64, ptr %x163, align 8
  call void @fiat_p434_cmovznz_u64(ptr noundef %x204, i8 noundef zeroext %394, i64 noundef %395, i64 noundef %396)
  %397 = load i64, ptr %x181, align 8
  %398 = load ptr, ptr %out1.addr, align 8
  store i64 %397, ptr %398, align 8
  %399 = load i64, ptr %x7, align 8
  %400 = load ptr, ptr %out2.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %400, i64 0
  store i64 %399, ptr %arrayidx112, align 8
  %401 = load i64, ptr %x8, align 8
  %402 = load ptr, ptr %out2.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %402, i64 1
  store i64 %401, ptr %arrayidx113, align 8
  %403 = load i64, ptr %x9, align 8
  %404 = load ptr, ptr %out2.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %404, i64 2
  store i64 %403, ptr %arrayidx114, align 8
  %405 = load i64, ptr %x10, align 8
  %406 = load ptr, ptr %out2.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %406, i64 3
  store i64 %405, ptr %arrayidx115, align 8
  %407 = load i64, ptr %x11, align 8
  %408 = load ptr, ptr %out2.addr, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %408, i64 4
  store i64 %407, ptr %arrayidx116, align 8
  %409 = load i64, ptr %x12, align 8
  %410 = load ptr, ptr %out2.addr, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %410, i64 5
  store i64 %409, ptr %arrayidx117, align 8
  %411 = load i64, ptr %x13, align 8
  %412 = load ptr, ptr %out2.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %412, i64 6
  store i64 %411, ptr %arrayidx118, align 8
  %413 = load i64, ptr %x14, align 8
  %414 = load ptr, ptr %out2.addr, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %414, i64 7
  store i64 %413, ptr %arrayidx119, align 8
  %415 = load i64, ptr %x183, align 8
  %416 = load ptr, ptr %out3.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %416, i64 0
  store i64 %415, ptr %arrayidx120, align 8
  %417 = load i64, ptr %x184, align 8
  %418 = load ptr, ptr %out3.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, ptr %418, i64 1
  store i64 %417, ptr %arrayidx121, align 8
  %419 = load i64, ptr %x185, align 8
  %420 = load ptr, ptr %out3.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %420, i64 2
  store i64 %419, ptr %arrayidx122, align 8
  %421 = load i64, ptr %x186, align 8
  %422 = load ptr, ptr %out3.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %422, i64 3
  store i64 %421, ptr %arrayidx123, align 8
  %423 = load i64, ptr %x187, align 8
  %424 = load ptr, ptr %out3.addr, align 8
  %arrayidx124 = getelementptr inbounds i64, ptr %424, i64 4
  store i64 %423, ptr %arrayidx124, align 8
  %425 = load i64, ptr %x188, align 8
  %426 = load ptr, ptr %out3.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %426, i64 5
  store i64 %425, ptr %arrayidx125, align 8
  %427 = load i64, ptr %x189, align 8
  %428 = load ptr, ptr %out3.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %428, i64 6
  store i64 %427, ptr %arrayidx126, align 8
  %429 = load i64, ptr %x190, align 8
  %430 = load ptr, ptr %out3.addr, align 8
  %arrayidx127 = getelementptr inbounds i64, ptr %430, i64 7
  store i64 %429, ptr %arrayidx127, align 8
  %431 = load i64, ptr %x191, align 8
  %432 = load ptr, ptr %out4.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %432, i64 0
  store i64 %431, ptr %arrayidx128, align 8
  %433 = load i64, ptr %x192, align 8
  %434 = load ptr, ptr %out4.addr, align 8
  %arrayidx129 = getelementptr inbounds i64, ptr %434, i64 1
  store i64 %433, ptr %arrayidx129, align 8
  %435 = load i64, ptr %x193, align 8
  %436 = load ptr, ptr %out4.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %436, i64 2
  store i64 %435, ptr %arrayidx130, align 8
  %437 = load i64, ptr %x194, align 8
  %438 = load ptr, ptr %out4.addr, align 8
  %arrayidx131 = getelementptr inbounds i64, ptr %438, i64 3
  store i64 %437, ptr %arrayidx131, align 8
  %439 = load i64, ptr %x195, align 8
  %440 = load ptr, ptr %out4.addr, align 8
  %arrayidx132 = getelementptr inbounds i64, ptr %440, i64 4
  store i64 %439, ptr %arrayidx132, align 8
  %441 = load i64, ptr %x196, align 8
  %442 = load ptr, ptr %out4.addr, align 8
  %arrayidx133 = getelementptr inbounds i64, ptr %442, i64 5
  store i64 %441, ptr %arrayidx133, align 8
  %443 = load i64, ptr %x197, align 8
  %444 = load ptr, ptr %out4.addr, align 8
  %arrayidx134 = getelementptr inbounds i64, ptr %444, i64 6
  store i64 %443, ptr %arrayidx134, align 8
  %445 = load i64, ptr %x198, align 8
  %446 = load ptr, ptr %out5.addr, align 8
  %arrayidx135 = getelementptr inbounds i64, ptr %446, i64 0
  store i64 %445, ptr %arrayidx135, align 8
  %447 = load i64, ptr %x199, align 8
  %448 = load ptr, ptr %out5.addr, align 8
  %arrayidx136 = getelementptr inbounds i64, ptr %448, i64 1
  store i64 %447, ptr %arrayidx136, align 8
  %449 = load i64, ptr %x200, align 8
  %450 = load ptr, ptr %out5.addr, align 8
  %arrayidx137 = getelementptr inbounds i64, ptr %450, i64 2
  store i64 %449, ptr %arrayidx137, align 8
  %451 = load i64, ptr %x201, align 8
  %452 = load ptr, ptr %out5.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %452, i64 3
  store i64 %451, ptr %arrayidx138, align 8
  %453 = load i64, ptr %x202, align 8
  %454 = load ptr, ptr %out5.addr, align 8
  %arrayidx139 = getelementptr inbounds i64, ptr %454, i64 4
  store i64 %453, ptr %arrayidx139, align 8
  %455 = load i64, ptr %x203, align 8
  %456 = load ptr, ptr %out5.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %456, i64 5
  store i64 %455, ptr %arrayidx140, align 8
  %457 = load i64, ptr %x204, align 8
  %458 = load ptr, ptr %out5.addr, align 8
  %arrayidx141 = getelementptr inbounds i64, ptr %458, i64 6
  store i64 %457, ptr %arrayidx141, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p434_divstep_precomp(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 -6946953185045369998, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 2933425582536627152, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 -3516910118913778348, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 3543358077896174639, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 -7089603517894044852, ptr %arrayidx4, align 8
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %5, i64 5
  store i64 7934738782046165729, ptr %arrayidx5, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 6
  store i64 120912498519750, ptr %arrayidx6, align 8
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
!6 = !{i64 3971}
