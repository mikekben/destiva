; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_25519_scalar_value_barrier_u64(i64 noundef %a) #0 {
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
define dso_local void @fiat_25519_scalar_addcarryx_u64(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
define dso_local void @fiat_25519_scalar_subborrowx_u64(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
define dso_local void @fiat_25519_scalar_mulx_u64(ptr noundef %out1, ptr noundef %out2, i64 noundef %arg1, i64 noundef %arg2) #0 {
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
define dso_local void @fiat_25519_scalar_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %call = call i64 @fiat_25519_scalar_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_25519_scalar_value_barrier_u64(i64 noundef %not)
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
define dso_local void @fiat_25519_scalar_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
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
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
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
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i8, align 1
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
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
  %x135 = alloca i64, align 8
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  %x144 = alloca i8, align 1
  %x145 = alloca i64, align 8
  %x146 = alloca i8, align 1
  %x147 = alloca i64, align 8
  %x148 = alloca i8, align 1
  %x149 = alloca i64, align 8
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
  %x169 = alloca i8, align 1
  %x170 = alloca i64, align 8
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
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
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
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx4, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef %10)
  %11 = load i64, ptr %x4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %11, i64 noundef %13)
  %14 = load i64, ptr %x4, align 8
  %15 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx6, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x4, align 8
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 0
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x12, align 8
  %21 = load i64, ptr %x9, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %21)
  %22 = load i8, ptr %x14, align 1
  %23 = load i64, ptr %x10, align 8
  %24 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x16, align 1
  %26 = load i64, ptr %x8, align 8
  %27 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %25, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x18, align 1
  %conv = zext i8 %28 to i64
  %29 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %29
  store i64 %add, ptr %x19, align 8
  %30 = load i64, ptr %x11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %30, i64 noundef -3263669768735654373)
  %31 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %31, i64 noundef 1152921504606846976)
  %32 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %32, i64 noundef 1503914060200516822)
  %33 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x26, ptr noundef %x27, i64 noundef %33, i64 noundef 6346243789798364141)
  %34 = load i64, ptr %x27, align 8
  %35 = load i64, ptr %x24, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %34, i64 noundef %35)
  %36 = load i8, ptr %x29, align 1
  %conv8 = zext i8 %36 to i64
  %37 = load i64, ptr %x25, align 8
  %add9 = add i64 %conv8, %37
  store i64 %add9, ptr %x30, align 8
  %38 = load i64, ptr %x11, align 8
  %39 = load i64, ptr %x26, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext 0, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x32, align 1
  %41 = load i64, ptr %x13, align 8
  %42 = load i64, ptr %x28, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x34, align 1
  %44 = load i64, ptr %x15, align 8
  %45 = load i64, ptr %x30, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %45)
  %46 = load i8, ptr %x36, align 1
  %47 = load i64, ptr %x17, align 8
  %48 = load i64, ptr %x22, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %48)
  %49 = load i8, ptr %x38, align 1
  %50 = load i64, ptr %x19, align 8
  %51 = load i64, ptr %x23, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %51)
  %52 = load i64, ptr %x1, align 8
  %53 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %53, i64 3
  %54 = load i64, ptr %arrayidx10, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %52, i64 noundef %54)
  %55 = load i64, ptr %x1, align 8
  %56 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %55, i64 noundef %57)
  %58 = load i64, ptr %x1, align 8
  %59 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %59, i64 1
  %60 = load i64, ptr %arrayidx12, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %58, i64 noundef %60)
  %61 = load i64, ptr %x1, align 8
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %62, i64 0
  %63 = load i64, ptr %arrayidx13, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %61, i64 noundef %63)
  %64 = load i64, ptr %x48, align 8
  %65 = load i64, ptr %x45, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext 0, i64 noundef %64, i64 noundef %65)
  %66 = load i8, ptr %x50, align 1
  %67 = load i64, ptr %x46, align 8
  %68 = load i64, ptr %x43, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %66, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x52, align 1
  %70 = load i64, ptr %x44, align 8
  %71 = load i64, ptr %x41, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i8, ptr %x54, align 1
  %conv14 = zext i8 %72 to i64
  %73 = load i64, ptr %x42, align 8
  %add15 = add i64 %conv14, %73
  store i64 %add15, ptr %x55, align 8
  %74 = load i64, ptr %x33, align 8
  %75 = load i64, ptr %x47, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext 0, i64 noundef %74, i64 noundef %75)
  %76 = load i8, ptr %x57, align 1
  %77 = load i64, ptr %x35, align 8
  %78 = load i64, ptr %x49, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %76, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x59, align 1
  %80 = load i64, ptr %x37, align 8
  %81 = load i64, ptr %x51, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x61, align 1
  %83 = load i64, ptr %x39, align 8
  %84 = load i64, ptr %x53, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x63, align 1
  %86 = load i8, ptr %x40, align 1
  %conv16 = zext i8 %86 to i64
  %87 = load i64, ptr %x55, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %85, i64 noundef %conv16, i64 noundef %87)
  %88 = load i64, ptr %x56, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %88, i64 noundef -3263669768735654373)
  %89 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %89, i64 noundef 1152921504606846976)
  %90 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %90, i64 noundef 1503914060200516822)
  %91 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %91, i64 noundef 6346243789798364141)
  %92 = load i64, ptr %x73, align 8
  %93 = load i64, ptr %x70, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x75, align 1
  %conv17 = zext i8 %94 to i64
  %95 = load i64, ptr %x71, align 8
  %add18 = add i64 %conv17, %95
  store i64 %add18, ptr %x76, align 8
  %96 = load i64, ptr %x56, align 8
  %97 = load i64, ptr %x72, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %96, i64 noundef %97)
  %98 = load i8, ptr %x78, align 1
  %99 = load i64, ptr %x58, align 8
  %100 = load i64, ptr %x74, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %98, i64 noundef %99, i64 noundef %100)
  %101 = load i8, ptr %x80, align 1
  %102 = load i64, ptr %x60, align 8
  %103 = load i64, ptr %x76, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %101, i64 noundef %102, i64 noundef %103)
  %104 = load i8, ptr %x82, align 1
  %105 = load i64, ptr %x62, align 8
  %106 = load i64, ptr %x68, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %104, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x84, align 1
  %108 = load i64, ptr %x64, align 8
  %109 = load i64, ptr %x69, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i8, ptr %x86, align 1
  %conv19 = zext i8 %110 to i64
  %111 = load i8, ptr %x65, align 1
  %conv20 = zext i8 %111 to i64
  %add21 = add i64 %conv19, %conv20
  store i64 %add21, ptr %x87, align 8
  %112 = load i64, ptr %x2, align 8
  %113 = load ptr, ptr %arg2.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %113, i64 3
  %114 = load i64, ptr %arrayidx22, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %112, i64 noundef %114)
  %115 = load i64, ptr %x2, align 8
  %116 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx23, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x90, ptr noundef %x91, i64 noundef %115, i64 noundef %117)
  %118 = load i64, ptr %x2, align 8
  %119 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %119, i64 1
  %120 = load i64, ptr %arrayidx24, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x92, ptr noundef %x93, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x2, align 8
  %122 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %122, i64 0
  %123 = load i64, ptr %arrayidx25, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x94, ptr noundef %x95, i64 noundef %121, i64 noundef %123)
  %124 = load i64, ptr %x95, align 8
  %125 = load i64, ptr %x92, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext 0, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x97, align 1
  %127 = load i64, ptr %x93, align 8
  %128 = load i64, ptr %x90, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x99, align 1
  %130 = load i64, ptr %x91, align 8
  %131 = load i64, ptr %x88, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x101, align 1
  %conv26 = zext i8 %132 to i64
  %133 = load i64, ptr %x89, align 8
  %add27 = add i64 %conv26, %133
  store i64 %add27, ptr %x102, align 8
  %134 = load i64, ptr %x79, align 8
  %135 = load i64, ptr %x94, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i64 noundef %134, i64 noundef %135)
  %136 = load i8, ptr %x104, align 1
  %137 = load i64, ptr %x81, align 8
  %138 = load i64, ptr %x96, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %136, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x106, align 1
  %140 = load i64, ptr %x83, align 8
  %141 = load i64, ptr %x98, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x108, align 1
  %143 = load i64, ptr %x85, align 8
  %144 = load i64, ptr %x100, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x110, align 1
  %146 = load i64, ptr %x87, align 8
  %147 = load i64, ptr %x102, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i64, ptr %x103, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x113, ptr noundef %x114, i64 noundef %148, i64 noundef -3263669768735654373)
  %149 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x115, ptr noundef %x116, i64 noundef %149, i64 noundef 1152921504606846976)
  %150 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %150, i64 noundef 1503914060200516822)
  %151 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %151, i64 noundef 6346243789798364141)
  %152 = load i64, ptr %x120, align 8
  %153 = load i64, ptr %x117, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext 0, i64 noundef %152, i64 noundef %153)
  %154 = load i8, ptr %x122, align 1
  %conv28 = zext i8 %154 to i64
  %155 = load i64, ptr %x118, align 8
  %add29 = add i64 %conv28, %155
  store i64 %add29, ptr %x123, align 8
  %156 = load i64, ptr %x103, align 8
  %157 = load i64, ptr %x119, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext 0, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x125, align 1
  %159 = load i64, ptr %x105, align 8
  %160 = load i64, ptr %x121, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x127, align 1
  %162 = load i64, ptr %x107, align 8
  %163 = load i64, ptr %x123, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x129, align 1
  %165 = load i64, ptr %x109, align 8
  %166 = load i64, ptr %x115, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %164, i64 noundef %165, i64 noundef %166)
  %167 = load i8, ptr %x131, align 1
  %168 = load i64, ptr %x111, align 8
  %169 = load i64, ptr %x116, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %167, i64 noundef %168, i64 noundef %169)
  %170 = load i8, ptr %x133, align 1
  %conv30 = zext i8 %170 to i64
  %171 = load i8, ptr %x112, align 1
  %conv31 = zext i8 %171 to i64
  %add32 = add i64 %conv30, %conv31
  store i64 %add32, ptr %x134, align 8
  %172 = load i64, ptr %x3, align 8
  %173 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %173, i64 3
  %174 = load i64, ptr %arrayidx33, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x135, ptr noundef %x136, i64 noundef %172, i64 noundef %174)
  %175 = load i64, ptr %x3, align 8
  %176 = load ptr, ptr %arg2.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %176, i64 2
  %177 = load i64, ptr %arrayidx34, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x137, ptr noundef %x138, i64 noundef %175, i64 noundef %177)
  %178 = load i64, ptr %x3, align 8
  %179 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %179, i64 1
  %180 = load i64, ptr %arrayidx35, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %178, i64 noundef %180)
  %181 = load i64, ptr %x3, align 8
  %182 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %182, i64 0
  %183 = load i64, ptr %arrayidx36, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %181, i64 noundef %183)
  %184 = load i64, ptr %x142, align 8
  %185 = load i64, ptr %x139, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext 0, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x144, align 1
  %187 = load i64, ptr %x140, align 8
  %188 = load i64, ptr %x137, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x146, align 1
  %190 = load i64, ptr %x138, align 8
  %191 = load i64, ptr %x135, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x148, align 1
  %conv37 = zext i8 %192 to i64
  %193 = load i64, ptr %x136, align 8
  %add38 = add i64 %conv37, %193
  store i64 %add38, ptr %x149, align 8
  %194 = load i64, ptr %x126, align 8
  %195 = load i64, ptr %x141, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext 0, i64 noundef %194, i64 noundef %195)
  %196 = load i8, ptr %x151, align 1
  %197 = load i64, ptr %x128, align 8
  %198 = load i64, ptr %x143, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %196, i64 noundef %197, i64 noundef %198)
  %199 = load i8, ptr %x153, align 1
  %200 = load i64, ptr %x130, align 8
  %201 = load i64, ptr %x145, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %199, i64 noundef %200, i64 noundef %201)
  %202 = load i8, ptr %x155, align 1
  %203 = load i64, ptr %x132, align 8
  %204 = load i64, ptr %x147, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %202, i64 noundef %203, i64 noundef %204)
  %205 = load i8, ptr %x157, align 1
  %206 = load i64, ptr %x134, align 8
  %207 = load i64, ptr %x149, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %205, i64 noundef %206, i64 noundef %207)
  %208 = load i64, ptr %x150, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x160, ptr noundef %x161, i64 noundef %208, i64 noundef -3263669768735654373)
  %209 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x162, ptr noundef %x163, i64 noundef %209, i64 noundef 1152921504606846976)
  %210 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x164, ptr noundef %x165, i64 noundef %210, i64 noundef 1503914060200516822)
  %211 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x166, ptr noundef %x167, i64 noundef %211, i64 noundef 6346243789798364141)
  %212 = load i64, ptr %x167, align 8
  %213 = load i64, ptr %x164, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext 0, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x169, align 1
  %conv39 = zext i8 %214 to i64
  %215 = load i64, ptr %x165, align 8
  %add40 = add i64 %conv39, %215
  store i64 %add40, ptr %x170, align 8
  %216 = load i64, ptr %x150, align 8
  %217 = load i64, ptr %x166, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext 0, i64 noundef %216, i64 noundef %217)
  %218 = load i8, ptr %x172, align 1
  %219 = load i64, ptr %x152, align 8
  %220 = load i64, ptr %x168, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %218, i64 noundef %219, i64 noundef %220)
  %221 = load i8, ptr %x174, align 1
  %222 = load i64, ptr %x154, align 8
  %223 = load i64, ptr %x170, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %221, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x176, align 1
  %225 = load i64, ptr %x156, align 8
  %226 = load i64, ptr %x162, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x178, align 1
  %228 = load i64, ptr %x158, align 8
  %229 = load i64, ptr %x163, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x180, align 1
  %conv41 = zext i8 %230 to i64
  %231 = load i8, ptr %x159, align 1
  %conv42 = zext i8 %231 to i64
  %add43 = add i64 %conv41, %conv42
  store i64 %add43, ptr %x181, align 8
  %232 = load i64, ptr %x173, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext 0, i64 noundef %232, i64 noundef 6346243789798364141)
  %233 = load i8, ptr %x183, align 1
  %234 = load i64, ptr %x175, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %233, i64 noundef %234, i64 noundef 1503914060200516822)
  %235 = load i8, ptr %x185, align 1
  %236 = load i64, ptr %x177, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %235, i64 noundef %236, i64 noundef 0)
  %237 = load i8, ptr %x187, align 1
  %238 = load i64, ptr %x179, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %237, i64 noundef %238, i64 noundef 1152921504606846976)
  %239 = load i8, ptr %x189, align 1
  %240 = load i64, ptr %x181, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %239, i64 noundef %240, i64 noundef 0)
  %241 = load i8, ptr %x191, align 1
  %242 = load i64, ptr %x182, align 8
  %243 = load i64, ptr %x173, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x192, i8 noundef zeroext %241, i64 noundef %242, i64 noundef %243)
  %244 = load i8, ptr %x191, align 1
  %245 = load i64, ptr %x184, align 8
  %246 = load i64, ptr %x175, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x193, i8 noundef zeroext %244, i64 noundef %245, i64 noundef %246)
  %247 = load i8, ptr %x191, align 1
  %248 = load i64, ptr %x186, align 8
  %249 = load i64, ptr %x177, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x194, i8 noundef zeroext %247, i64 noundef %248, i64 noundef %249)
  %250 = load i8, ptr %x191, align 1
  %251 = load i64, ptr %x188, align 8
  %252 = load i64, ptr %x179, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x195, i8 noundef zeroext %250, i64 noundef %251, i64 noundef %252)
  %253 = load i64, ptr %x192, align 8
  %254 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %254, i64 0
  store i64 %253, ptr %arrayidx44, align 8
  %255 = load i64, ptr %x193, align 8
  %256 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %256, i64 1
  store i64 %255, ptr %arrayidx45, align 8
  %257 = load i64, ptr %x194, align 8
  %258 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %258, i64 2
  store i64 %257, ptr %arrayidx46, align 8
  %259 = load i64, ptr %x195, align 8
  %260 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %260, i64 3
  store i64 %259, ptr %arrayidx47, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i8, align 1
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i8, align 1
  %x39 = alloca i64, align 8
  %x40 = alloca i8, align 1
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
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i64, align 8
  %x75 = alloca i8, align 1
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
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
  %x88 = alloca i64, align 8
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i64, align 8
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i8, align 1
  %x98 = alloca i64, align 8
  %x99 = alloca i8, align 1
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i64, align 8
  %x106 = alloca i8, align 1
  %x107 = alloca i64, align 8
  %x108 = alloca i8, align 1
  %x109 = alloca i64, align 8
  %x110 = alloca i8, align 1
  %x111 = alloca i64, align 8
  %x112 = alloca i8, align 1
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i8, align 1
  %x123 = alloca i64, align 8
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
  %x135 = alloca i64, align 8
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i64, align 8
  %x143 = alloca i64, align 8
  %x144 = alloca i8, align 1
  %x145 = alloca i64, align 8
  %x146 = alloca i8, align 1
  %x147 = alloca i64, align 8
  %x148 = alloca i8, align 1
  %x149 = alloca i64, align 8
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
  %x169 = alloca i8, align 1
  %x170 = alloca i64, align 8
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
  %x193 = alloca i64, align 8
  %x194 = alloca i64, align 8
  %x195 = alloca i64, align 8
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
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx4, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef %10)
  %11 = load i64, ptr %x4, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %11, i64 noundef %13)
  %14 = load i64, ptr %x4, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx6, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %14, i64 noundef %16)
  %17 = load i64, ptr %x4, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 0
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x12, align 8
  %21 = load i64, ptr %x9, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %21)
  %22 = load i8, ptr %x14, align 1
  %23 = load i64, ptr %x10, align 8
  %24 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %24)
  %25 = load i8, ptr %x16, align 1
  %26 = load i64, ptr %x8, align 8
  %27 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %25, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x18, align 1
  %conv = zext i8 %28 to i64
  %29 = load i64, ptr %x6, align 8
  %add = add i64 %conv, %29
  store i64 %add, ptr %x19, align 8
  %30 = load i64, ptr %x11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %30, i64 noundef -3263669768735654373)
  %31 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %31, i64 noundef 1152921504606846976)
  %32 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %32, i64 noundef 1503914060200516822)
  %33 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x26, ptr noundef %x27, i64 noundef %33, i64 noundef 6346243789798364141)
  %34 = load i64, ptr %x27, align 8
  %35 = load i64, ptr %x24, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %34, i64 noundef %35)
  %36 = load i8, ptr %x29, align 1
  %conv8 = zext i8 %36 to i64
  %37 = load i64, ptr %x25, align 8
  %add9 = add i64 %conv8, %37
  store i64 %add9, ptr %x30, align 8
  %38 = load i64, ptr %x11, align 8
  %39 = load i64, ptr %x26, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext 0, i64 noundef %38, i64 noundef %39)
  %40 = load i8, ptr %x32, align 1
  %41 = load i64, ptr %x13, align 8
  %42 = load i64, ptr %x28, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %40, i64 noundef %41, i64 noundef %42)
  %43 = load i8, ptr %x34, align 1
  %44 = load i64, ptr %x15, align 8
  %45 = load i64, ptr %x30, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %43, i64 noundef %44, i64 noundef %45)
  %46 = load i8, ptr %x36, align 1
  %47 = load i64, ptr %x17, align 8
  %48 = load i64, ptr %x22, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %46, i64 noundef %47, i64 noundef %48)
  %49 = load i8, ptr %x38, align 1
  %50 = load i64, ptr %x19, align 8
  %51 = load i64, ptr %x23, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext %49, i64 noundef %50, i64 noundef %51)
  %52 = load i64, ptr %x1, align 8
  %53 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %53, i64 3
  %54 = load i64, ptr %arrayidx10, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %52, i64 noundef %54)
  %55 = load i64, ptr %x1, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %55, i64 noundef %57)
  %58 = load i64, ptr %x1, align 8
  %59 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %59, i64 1
  %60 = load i64, ptr %arrayidx12, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x45, ptr noundef %x46, i64 noundef %58, i64 noundef %60)
  %61 = load i64, ptr %x1, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %62, i64 0
  %63 = load i64, ptr %arrayidx13, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x47, ptr noundef %x48, i64 noundef %61, i64 noundef %63)
  %64 = load i64, ptr %x48, align 8
  %65 = load i64, ptr %x45, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext 0, i64 noundef %64, i64 noundef %65)
  %66 = load i8, ptr %x50, align 1
  %67 = load i64, ptr %x46, align 8
  %68 = load i64, ptr %x43, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext %66, i64 noundef %67, i64 noundef %68)
  %69 = load i8, ptr %x52, align 1
  %70 = load i64, ptr %x44, align 8
  %71 = load i64, ptr %x41, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %69, i64 noundef %70, i64 noundef %71)
  %72 = load i8, ptr %x54, align 1
  %conv14 = zext i8 %72 to i64
  %73 = load i64, ptr %x42, align 8
  %add15 = add i64 %conv14, %73
  store i64 %add15, ptr %x55, align 8
  %74 = load i64, ptr %x33, align 8
  %75 = load i64, ptr %x47, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext 0, i64 noundef %74, i64 noundef %75)
  %76 = load i8, ptr %x57, align 1
  %77 = load i64, ptr %x35, align 8
  %78 = load i64, ptr %x49, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %76, i64 noundef %77, i64 noundef %78)
  %79 = load i8, ptr %x59, align 1
  %80 = load i64, ptr %x37, align 8
  %81 = load i64, ptr %x51, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i8, ptr %x61, align 1
  %83 = load i64, ptr %x39, align 8
  %84 = load i64, ptr %x53, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %82, i64 noundef %83, i64 noundef %84)
  %85 = load i8, ptr %x63, align 1
  %86 = load i8, ptr %x40, align 1
  %conv16 = zext i8 %86 to i64
  %87 = load i64, ptr %x55, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %85, i64 noundef %conv16, i64 noundef %87)
  %88 = load i64, ptr %x56, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %88, i64 noundef -3263669768735654373)
  %89 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %89, i64 noundef 1152921504606846976)
  %90 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %90, i64 noundef 1503914060200516822)
  %91 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %91, i64 noundef 6346243789798364141)
  %92 = load i64, ptr %x73, align 8
  %93 = load i64, ptr %x70, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i64 noundef %92, i64 noundef %93)
  %94 = load i8, ptr %x75, align 1
  %conv17 = zext i8 %94 to i64
  %95 = load i64, ptr %x71, align 8
  %add18 = add i64 %conv17, %95
  store i64 %add18, ptr %x76, align 8
  %96 = load i64, ptr %x56, align 8
  %97 = load i64, ptr %x72, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x77, ptr noundef %x78, i8 noundef zeroext 0, i64 noundef %96, i64 noundef %97)
  %98 = load i8, ptr %x78, align 1
  %99 = load i64, ptr %x58, align 8
  %100 = load i64, ptr %x74, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x79, ptr noundef %x80, i8 noundef zeroext %98, i64 noundef %99, i64 noundef %100)
  %101 = load i8, ptr %x80, align 1
  %102 = load i64, ptr %x60, align 8
  %103 = load i64, ptr %x76, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x81, ptr noundef %x82, i8 noundef zeroext %101, i64 noundef %102, i64 noundef %103)
  %104 = load i8, ptr %x82, align 1
  %105 = load i64, ptr %x62, align 8
  %106 = load i64, ptr %x68, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x83, ptr noundef %x84, i8 noundef zeroext %104, i64 noundef %105, i64 noundef %106)
  %107 = load i8, ptr %x84, align 1
  %108 = load i64, ptr %x64, align 8
  %109 = load i64, ptr %x69, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext %107, i64 noundef %108, i64 noundef %109)
  %110 = load i8, ptr %x86, align 1
  %conv19 = zext i8 %110 to i64
  %111 = load i8, ptr %x65, align 1
  %conv20 = zext i8 %111 to i64
  %add21 = add i64 %conv19, %conv20
  store i64 %add21, ptr %x87, align 8
  %112 = load i64, ptr %x2, align 8
  %113 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %113, i64 3
  %114 = load i64, ptr %arrayidx22, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x88, ptr noundef %x89, i64 noundef %112, i64 noundef %114)
  %115 = load i64, ptr %x2, align 8
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %116, i64 2
  %117 = load i64, ptr %arrayidx23, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x90, ptr noundef %x91, i64 noundef %115, i64 noundef %117)
  %118 = load i64, ptr %x2, align 8
  %119 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %119, i64 1
  %120 = load i64, ptr %arrayidx24, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x92, ptr noundef %x93, i64 noundef %118, i64 noundef %120)
  %121 = load i64, ptr %x2, align 8
  %122 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %122, i64 0
  %123 = load i64, ptr %arrayidx25, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x94, ptr noundef %x95, i64 noundef %121, i64 noundef %123)
  %124 = load i64, ptr %x95, align 8
  %125 = load i64, ptr %x92, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext 0, i64 noundef %124, i64 noundef %125)
  %126 = load i8, ptr %x97, align 1
  %127 = load i64, ptr %x93, align 8
  %128 = load i64, ptr %x90, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %126, i64 noundef %127, i64 noundef %128)
  %129 = load i8, ptr %x99, align 1
  %130 = load i64, ptr %x91, align 8
  %131 = load i64, ptr %x88, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %129, i64 noundef %130, i64 noundef %131)
  %132 = load i8, ptr %x101, align 1
  %conv26 = zext i8 %132 to i64
  %133 = load i64, ptr %x89, align 8
  %add27 = add i64 %conv26, %133
  store i64 %add27, ptr %x102, align 8
  %134 = load i64, ptr %x79, align 8
  %135 = load i64, ptr %x94, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x103, ptr noundef %x104, i8 noundef zeroext 0, i64 noundef %134, i64 noundef %135)
  %136 = load i8, ptr %x104, align 1
  %137 = load i64, ptr %x81, align 8
  %138 = load i64, ptr %x96, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x105, ptr noundef %x106, i8 noundef zeroext %136, i64 noundef %137, i64 noundef %138)
  %139 = load i8, ptr %x106, align 1
  %140 = load i64, ptr %x83, align 8
  %141 = load i64, ptr %x98, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext %139, i64 noundef %140, i64 noundef %141)
  %142 = load i8, ptr %x108, align 1
  %143 = load i64, ptr %x85, align 8
  %144 = load i64, ptr %x100, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext %142, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x110, align 1
  %146 = load i64, ptr %x87, align 8
  %147 = load i64, ptr %x102, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %145, i64 noundef %146, i64 noundef %147)
  %148 = load i64, ptr %x103, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x113, ptr noundef %x114, i64 noundef %148, i64 noundef -3263669768735654373)
  %149 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x115, ptr noundef %x116, i64 noundef %149, i64 noundef 1152921504606846976)
  %150 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %150, i64 noundef 1503914060200516822)
  %151 = load i64, ptr %x113, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %151, i64 noundef 6346243789798364141)
  %152 = load i64, ptr %x120, align 8
  %153 = load i64, ptr %x117, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x121, ptr noundef %x122, i8 noundef zeroext 0, i64 noundef %152, i64 noundef %153)
  %154 = load i8, ptr %x122, align 1
  %conv28 = zext i8 %154 to i64
  %155 = load i64, ptr %x118, align 8
  %add29 = add i64 %conv28, %155
  store i64 %add29, ptr %x123, align 8
  %156 = load i64, ptr %x103, align 8
  %157 = load i64, ptr %x119, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x124, ptr noundef %x125, i8 noundef zeroext 0, i64 noundef %156, i64 noundef %157)
  %158 = load i8, ptr %x125, align 1
  %159 = load i64, ptr %x105, align 8
  %160 = load i64, ptr %x121, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x126, ptr noundef %x127, i8 noundef zeroext %158, i64 noundef %159, i64 noundef %160)
  %161 = load i8, ptr %x127, align 1
  %162 = load i64, ptr %x107, align 8
  %163 = load i64, ptr %x123, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x128, ptr noundef %x129, i8 noundef zeroext %161, i64 noundef %162, i64 noundef %163)
  %164 = load i8, ptr %x129, align 1
  %165 = load i64, ptr %x109, align 8
  %166 = load i64, ptr %x115, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x130, ptr noundef %x131, i8 noundef zeroext %164, i64 noundef %165, i64 noundef %166)
  %167 = load i8, ptr %x131, align 1
  %168 = load i64, ptr %x111, align 8
  %169 = load i64, ptr %x116, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x132, ptr noundef %x133, i8 noundef zeroext %167, i64 noundef %168, i64 noundef %169)
  %170 = load i8, ptr %x133, align 1
  %conv30 = zext i8 %170 to i64
  %171 = load i8, ptr %x112, align 1
  %conv31 = zext i8 %171 to i64
  %add32 = add i64 %conv30, %conv31
  store i64 %add32, ptr %x134, align 8
  %172 = load i64, ptr %x3, align 8
  %173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %173, i64 3
  %174 = load i64, ptr %arrayidx33, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x135, ptr noundef %x136, i64 noundef %172, i64 noundef %174)
  %175 = load i64, ptr %x3, align 8
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %176, i64 2
  %177 = load i64, ptr %arrayidx34, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x137, ptr noundef %x138, i64 noundef %175, i64 noundef %177)
  %178 = load i64, ptr %x3, align 8
  %179 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %179, i64 1
  %180 = load i64, ptr %arrayidx35, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %178, i64 noundef %180)
  %181 = load i64, ptr %x3, align 8
  %182 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %182, i64 0
  %183 = load i64, ptr %arrayidx36, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %181, i64 noundef %183)
  %184 = load i64, ptr %x142, align 8
  %185 = load i64, ptr %x139, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x143, ptr noundef %x144, i8 noundef zeroext 0, i64 noundef %184, i64 noundef %185)
  %186 = load i8, ptr %x144, align 1
  %187 = load i64, ptr %x140, align 8
  %188 = load i64, ptr %x137, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x145, ptr noundef %x146, i8 noundef zeroext %186, i64 noundef %187, i64 noundef %188)
  %189 = load i8, ptr %x146, align 1
  %190 = load i64, ptr %x138, align 8
  %191 = load i64, ptr %x135, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext %189, i64 noundef %190, i64 noundef %191)
  %192 = load i8, ptr %x148, align 1
  %conv37 = zext i8 %192 to i64
  %193 = load i64, ptr %x136, align 8
  %add38 = add i64 %conv37, %193
  store i64 %add38, ptr %x149, align 8
  %194 = load i64, ptr %x126, align 8
  %195 = load i64, ptr %x141, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x150, ptr noundef %x151, i8 noundef zeroext 0, i64 noundef %194, i64 noundef %195)
  %196 = load i8, ptr %x151, align 1
  %197 = load i64, ptr %x128, align 8
  %198 = load i64, ptr %x143, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x152, ptr noundef %x153, i8 noundef zeroext %196, i64 noundef %197, i64 noundef %198)
  %199 = load i8, ptr %x153, align 1
  %200 = load i64, ptr %x130, align 8
  %201 = load i64, ptr %x145, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x154, ptr noundef %x155, i8 noundef zeroext %199, i64 noundef %200, i64 noundef %201)
  %202 = load i8, ptr %x155, align 1
  %203 = load i64, ptr %x132, align 8
  %204 = load i64, ptr %x147, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x156, ptr noundef %x157, i8 noundef zeroext %202, i64 noundef %203, i64 noundef %204)
  %205 = load i8, ptr %x157, align 1
  %206 = load i64, ptr %x134, align 8
  %207 = load i64, ptr %x149, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext %205, i64 noundef %206, i64 noundef %207)
  %208 = load i64, ptr %x150, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x160, ptr noundef %x161, i64 noundef %208, i64 noundef -3263669768735654373)
  %209 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x162, ptr noundef %x163, i64 noundef %209, i64 noundef 1152921504606846976)
  %210 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x164, ptr noundef %x165, i64 noundef %210, i64 noundef 1503914060200516822)
  %211 = load i64, ptr %x160, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x166, ptr noundef %x167, i64 noundef %211, i64 noundef 6346243789798364141)
  %212 = load i64, ptr %x167, align 8
  %213 = load i64, ptr %x164, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x168, ptr noundef %x169, i8 noundef zeroext 0, i64 noundef %212, i64 noundef %213)
  %214 = load i8, ptr %x169, align 1
  %conv39 = zext i8 %214 to i64
  %215 = load i64, ptr %x165, align 8
  %add40 = add i64 %conv39, %215
  store i64 %add40, ptr %x170, align 8
  %216 = load i64, ptr %x150, align 8
  %217 = load i64, ptr %x166, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x171, ptr noundef %x172, i8 noundef zeroext 0, i64 noundef %216, i64 noundef %217)
  %218 = load i8, ptr %x172, align 1
  %219 = load i64, ptr %x152, align 8
  %220 = load i64, ptr %x168, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x173, ptr noundef %x174, i8 noundef zeroext %218, i64 noundef %219, i64 noundef %220)
  %221 = load i8, ptr %x174, align 1
  %222 = load i64, ptr %x154, align 8
  %223 = load i64, ptr %x170, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x175, ptr noundef %x176, i8 noundef zeroext %221, i64 noundef %222, i64 noundef %223)
  %224 = load i8, ptr %x176, align 1
  %225 = load i64, ptr %x156, align 8
  %226 = load i64, ptr %x162, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x177, ptr noundef %x178, i8 noundef zeroext %224, i64 noundef %225, i64 noundef %226)
  %227 = load i8, ptr %x178, align 1
  %228 = load i64, ptr %x158, align 8
  %229 = load i64, ptr %x163, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x179, ptr noundef %x180, i8 noundef zeroext %227, i64 noundef %228, i64 noundef %229)
  %230 = load i8, ptr %x180, align 1
  %conv41 = zext i8 %230 to i64
  %231 = load i8, ptr %x159, align 1
  %conv42 = zext i8 %231 to i64
  %add43 = add i64 %conv41, %conv42
  store i64 %add43, ptr %x181, align 8
  %232 = load i64, ptr %x173, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x182, ptr noundef %x183, i8 noundef zeroext 0, i64 noundef %232, i64 noundef 6346243789798364141)
  %233 = load i8, ptr %x183, align 1
  %234 = load i64, ptr %x175, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x184, ptr noundef %x185, i8 noundef zeroext %233, i64 noundef %234, i64 noundef 1503914060200516822)
  %235 = load i8, ptr %x185, align 1
  %236 = load i64, ptr %x177, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x186, ptr noundef %x187, i8 noundef zeroext %235, i64 noundef %236, i64 noundef 0)
  %237 = load i8, ptr %x187, align 1
  %238 = load i64, ptr %x179, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x188, ptr noundef %x189, i8 noundef zeroext %237, i64 noundef %238, i64 noundef 1152921504606846976)
  %239 = load i8, ptr %x189, align 1
  %240 = load i64, ptr %x181, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x190, ptr noundef %x191, i8 noundef zeroext %239, i64 noundef %240, i64 noundef 0)
  %241 = load i8, ptr %x191, align 1
  %242 = load i64, ptr %x182, align 8
  %243 = load i64, ptr %x173, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x192, i8 noundef zeroext %241, i64 noundef %242, i64 noundef %243)
  %244 = load i8, ptr %x191, align 1
  %245 = load i64, ptr %x184, align 8
  %246 = load i64, ptr %x175, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x193, i8 noundef zeroext %244, i64 noundef %245, i64 noundef %246)
  %247 = load i8, ptr %x191, align 1
  %248 = load i64, ptr %x186, align 8
  %249 = load i64, ptr %x177, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x194, i8 noundef zeroext %247, i64 noundef %248, i64 noundef %249)
  %250 = load i8, ptr %x191, align 1
  %251 = load i64, ptr %x188, align 8
  %252 = load i64, ptr %x179, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x195, i8 noundef zeroext %250, i64 noundef %251, i64 noundef %252)
  %253 = load i64, ptr %x192, align 8
  %254 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %254, i64 0
  store i64 %253, ptr %arrayidx44, align 8
  %255 = load i64, ptr %x193, align 8
  %256 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %256, i64 1
  store i64 %255, ptr %arrayidx45, align 8
  %257 = load i64, ptr %x194, align 8
  %258 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %258, i64 2
  store i64 %257, ptr %arrayidx46, align 8
  %259 = load i64, ptr %x195, align 8
  %260 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %260, i64 3
  store i64 %259, ptr %arrayidx47, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext 0, i64 noundef %19, i64 noundef 6346243789798364141)
  %20 = load i8, ptr %x10, align 1
  %21 = load i64, ptr %x3, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %20, i64 noundef %21, i64 noundef 1503914060200516822)
  %22 = load i8, ptr %x12, align 1
  %23 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %22, i64 noundef %23, i64 noundef 0)
  %24 = load i8, ptr %x14, align 1
  %25 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %24, i64 noundef %25, i64 noundef 1152921504606846976)
  %26 = load i8, ptr %x16, align 1
  %27 = load i8, ptr %x8, align 1
  %conv = zext i8 %27 to i64
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %26, i64 noundef %conv, i64 noundef 0)
  %28 = load i8, ptr %x18, align 1
  %29 = load i64, ptr %x9, align 8
  %30 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x19, i8 noundef zeroext %28, i64 noundef %29, i64 noundef %30)
  %31 = load i8, ptr %x18, align 1
  %32 = load i64, ptr %x11, align 8
  %33 = load i64, ptr %x3, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x20, i8 noundef zeroext %31, i64 noundef %32, i64 noundef %33)
  %34 = load i8, ptr %x18, align 1
  %35 = load i64, ptr %x13, align 8
  %36 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x21, i8 noundef zeroext %34, i64 noundef %35, i64 noundef %36)
  %37 = load i8, ptr %x18, align 1
  %38 = load i64, ptr %x15, align 8
  %39 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x22, i8 noundef zeroext %37, i64 noundef %38, i64 noundef %39)
  %40 = load i64, ptr %x19, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %40, ptr %arrayidx8, align 8
  %42 = load i64, ptr %x20, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %arrayidx9, align 8
  %44 = load i64, ptr %x21, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %arrayidx10, align 8
  %46 = load i64, ptr %x22, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 %46, ptr %arrayidx11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef %3)
  %4 = load i8, ptr %x2, align 1
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx2, align 8
  %7 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %4, i64 noundef %6, i64 noundef %8)
  %9 = load i8, ptr %x4, align 1
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx4, align 8
  %12 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %9, i64 noundef %11, i64 noundef %13)
  %14 = load i8, ptr %x6, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx6, align 8
  %17 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %14, i64 noundef %16, i64 noundef %18)
  %19 = load i8, ptr %x8, align 1
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %19, i64 noundef 0, i64 noundef -1)
  %20 = load i64, ptr %x1, align 8
  %21 = load i64, ptr %x9, align 8
  %and = and i64 %21, 6346243789798364141
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %20, i64 noundef %and)
  %22 = load i8, ptr %x11, align 1
  %23 = load i64, ptr %x3, align 8
  %24 = load i64, ptr %x9, align 8
  %and8 = and i64 %24, 1503914060200516822
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %22, i64 noundef %23, i64 noundef %and8)
  %25 = load i8, ptr %x13, align 1
  %26 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %25, i64 noundef %26, i64 noundef 0)
  %27 = load i8, ptr %x15, align 1
  %28 = load i64, ptr %x7, align 8
  %29 = load i64, ptr %x9, align 8
  %and9 = and i64 %29, 1152921504606846976
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %27, i64 noundef %28, i64 noundef %and9)
  %30 = load i64, ptr %x10, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %31, i64 0
  store i64 %30, ptr %arrayidx10, align 8
  %32 = load i64, ptr %x12, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %33, i64 1
  store i64 %32, ptr %arrayidx11, align 8
  %34 = load i64, ptr %x14, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %35, i64 2
  store i64 %34, ptr %arrayidx12, align 8
  %36 = load i64, ptr %x16, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %37, i64 3
  store i64 %36, ptr %arrayidx13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %1)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef 0, i64 noundef %4)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef 0, i64 noundef %7)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef 0, i64 noundef %10)
  %11 = load i8, ptr %x8, align 1
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %11, i64 noundef 0, i64 noundef -1)
  %12 = load i64, ptr %x1, align 8
  %13 = load i64, ptr %x9, align 8
  %and = and i64 %13, 6346243789798364141
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %and)
  %14 = load i8, ptr %x11, align 1
  %15 = load i64, ptr %x3, align 8
  %16 = load i64, ptr %x9, align 8
  %and4 = and i64 %16, 1503914060200516822
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %and4)
  %17 = load i8, ptr %x13, align 1
  %18 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %17, i64 noundef %18, i64 noundef 0)
  %19 = load i8, ptr %x15, align 1
  %20 = load i64, ptr %x7, align 8
  %21 = load i64, ptr %x9, align 8
  %and5 = and i64 %21, 1152921504606846976
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %19, i64 noundef %20, i64 noundef %and5)
  %22 = load i64, ptr %x10, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %23, i64 0
  store i64 %22, ptr %arrayidx6, align 8
  %24 = load i64, ptr %x12, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 %24, ptr %arrayidx7, align 8
  %26 = load i64, ptr %x14, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %27, i64 2
  store i64 %26, ptr %arrayidx8, align 8
  %28 = load i64, ptr %x16, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %29, i64 3
  store i64 %28, ptr %arrayidx9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_from_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
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
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
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
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
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
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x2, ptr noundef %x3, i64 noundef %2, i64 noundef -3263669768735654373)
  %3 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x4, ptr noundef %x5, i64 noundef %3, i64 noundef 1152921504606846976)
  %4 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x6, ptr noundef %x7, i64 noundef %4, i64 noundef 1503914060200516822)
  %5 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x8, ptr noundef %x9, i64 noundef %5, i64 noundef 6346243789798364141)
  %6 = load i64, ptr %x9, align 8
  %7 = load i64, ptr %x6, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext 0, i64 noundef %6, i64 noundef %7)
  %8 = load i64, ptr %x1, align 8
  %9 = load i64, ptr %x8, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef %8, i64 noundef %9)
  %10 = load i8, ptr %x13, align 1
  %11 = load i64, ptr %x10, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %10, i64 noundef 0, i64 noundef %11)
  %12 = load i64, ptr %x14, align 8
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %13, i64 1
  %14 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %14)
  %15 = load i64, ptr %x16, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x18, ptr noundef %x19, i64 noundef %15, i64 noundef -3263669768735654373)
  %16 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x20, ptr noundef %x21, i64 noundef %16, i64 noundef 1152921504606846976)
  %17 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x22, ptr noundef %x23, i64 noundef %17, i64 noundef 1503914060200516822)
  %18 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x24, ptr noundef %x25, i64 noundef %18, i64 noundef 6346243789798364141)
  %19 = load i64, ptr %x25, align 8
  %20 = load i64, ptr %x22, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext 0, i64 noundef %19, i64 noundef %20)
  %21 = load i64, ptr %x16, align 8
  %22 = load i64, ptr %x24, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext 0, i64 noundef %21, i64 noundef %22)
  %23 = load i8, ptr %x29, align 1
  %24 = load i8, ptr %x17, align 1
  %conv = zext i8 %24 to i64
  %25 = load i8, ptr %x15, align 1
  %conv2 = zext i8 %25 to i64
  %26 = load i8, ptr %x11, align 1
  %conv3 = zext i8 %26 to i64
  %27 = load i64, ptr %x7, align 8
  %add = add i64 %conv3, %27
  %add4 = add i64 %conv2, %add
  %add5 = add i64 %conv, %add4
  %28 = load i64, ptr %x26, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %23, i64 noundef %add5, i64 noundef %28)
  %29 = load i8, ptr %x31, align 1
  %30 = load i64, ptr %x4, align 8
  %31 = load i8, ptr %x27, align 1
  %conv6 = zext i8 %31 to i64
  %32 = load i64, ptr %x23, align 8
  %add7 = add i64 %conv6, %32
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %add7)
  %33 = load i8, ptr %x33, align 1
  %34 = load i64, ptr %x5, align 8
  %35 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %33, i64 noundef %34, i64 noundef %35)
  %36 = load i64, ptr %x30, align 8
  %37 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %37, i64 2
  %38 = load i64, ptr %arrayidx8, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext 0, i64 noundef %36, i64 noundef %38)
  %39 = load i8, ptr %x37, align 1
  %40 = load i64, ptr %x32, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %39, i64 noundef %40, i64 noundef 0)
  %41 = load i8, ptr %x39, align 1
  %42 = load i64, ptr %x34, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %41, i64 noundef %42, i64 noundef 0)
  %43 = load i64, ptr %x36, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x42, ptr noundef %x43, i64 noundef %43, i64 noundef -3263669768735654373)
  %44 = load i64, ptr %x42, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x44, ptr noundef %x45, i64 noundef %44, i64 noundef 1152921504606846976)
  %45 = load i64, ptr %x42, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x46, ptr noundef %x47, i64 noundef %45, i64 noundef 1503914060200516822)
  %46 = load i64, ptr %x42, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x48, ptr noundef %x49, i64 noundef %46, i64 noundef 6346243789798364141)
  %47 = load i64, ptr %x49, align 8
  %48 = load i64, ptr %x46, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x50, ptr noundef %x51, i8 noundef zeroext 0, i64 noundef %47, i64 noundef %48)
  %49 = load i64, ptr %x36, align 8
  %50 = load i64, ptr %x48, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x52, ptr noundef %x53, i8 noundef zeroext 0, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x53, align 1
  %52 = load i64, ptr %x38, align 8
  %53 = load i64, ptr %x50, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x54, ptr noundef %x55, i8 noundef zeroext %51, i64 noundef %52, i64 noundef %53)
  %54 = load i8, ptr %x55, align 1
  %55 = load i64, ptr %x40, align 8
  %56 = load i8, ptr %x51, align 1
  %conv9 = zext i8 %56 to i64
  %57 = load i64, ptr %x47, align 8
  %add10 = add i64 %conv9, %57
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x56, ptr noundef %x57, i8 noundef zeroext %54, i64 noundef %55, i64 noundef %add10)
  %58 = load i8, ptr %x57, align 1
  %59 = load i8, ptr %x41, align 1
  %conv11 = zext i8 %59 to i64
  %60 = load i8, ptr %x35, align 1
  %conv12 = zext i8 %60 to i64
  %61 = load i64, ptr %x21, align 8
  %add13 = add i64 %conv12, %61
  %add14 = add i64 %conv11, %add13
  %62 = load i64, ptr %x44, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x58, ptr noundef %x59, i8 noundef zeroext %58, i64 noundef %add14, i64 noundef %62)
  %63 = load i64, ptr %x54, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %64, i64 3
  %65 = load i64, ptr %arrayidx15, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x60, ptr noundef %x61, i8 noundef zeroext 0, i64 noundef %63, i64 noundef %65)
  %66 = load i8, ptr %x61, align 1
  %67 = load i64, ptr %x56, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext %66, i64 noundef %67, i64 noundef 0)
  %68 = load i8, ptr %x63, align 1
  %69 = load i64, ptr %x58, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %68, i64 noundef %69, i64 noundef 0)
  %70 = load i64, ptr %x60, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x66, ptr noundef %x67, i64 noundef %70, i64 noundef -3263669768735654373)
  %71 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x68, ptr noundef %x69, i64 noundef %71, i64 noundef 1152921504606846976)
  %72 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x70, ptr noundef %x71, i64 noundef %72, i64 noundef 1503914060200516822)
  %73 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x72, ptr noundef %x73, i64 noundef %73, i64 noundef 6346243789798364141)
  %74 = load i64, ptr %x73, align 8
  %75 = load i64, ptr %x70, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x74, ptr noundef %x75, i8 noundef zeroext 0, i64 noundef %74, i64 noundef %75)
  %76 = load i64, ptr %x60, align 8
  %77 = load i64, ptr %x72, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x76, ptr noundef %x77, i8 noundef zeroext 0, i64 noundef %76, i64 noundef %77)
  %78 = load i8, ptr %x77, align 1
  %79 = load i64, ptr %x62, align 8
  %80 = load i64, ptr %x74, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x78, ptr noundef %x79, i8 noundef zeroext %78, i64 noundef %79, i64 noundef %80)
  %81 = load i8, ptr %x79, align 1
  %82 = load i64, ptr %x64, align 8
  %83 = load i8, ptr %x75, align 1
  %conv16 = zext i8 %83 to i64
  %84 = load i64, ptr %x71, align 8
  %add17 = add i64 %conv16, %84
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext %81, i64 noundef %82, i64 noundef %add17)
  %85 = load i8, ptr %x81, align 1
  %86 = load i8, ptr %x65, align 1
  %conv18 = zext i8 %86 to i64
  %87 = load i8, ptr %x59, align 1
  %conv19 = zext i8 %87 to i64
  %88 = load i64, ptr %x45, align 8
  %add20 = add i64 %conv19, %88
  %add21 = add i64 %conv18, %add20
  %89 = load i64, ptr %x68, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %85, i64 noundef %add21, i64 noundef %89)
  %90 = load i8, ptr %x83, align 1
  %conv22 = zext i8 %90 to i64
  %91 = load i64, ptr %x69, align 8
  %add23 = add i64 %conv22, %91
  store i64 %add23, ptr %x84, align 8
  %92 = load i64, ptr %x78, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext 0, i64 noundef %92, i64 noundef 6346243789798364141)
  %93 = load i8, ptr %x86, align 1
  %94 = load i64, ptr %x80, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %93, i64 noundef %94, i64 noundef 1503914060200516822)
  %95 = load i8, ptr %x88, align 1
  %96 = load i64, ptr %x82, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %95, i64 noundef %96, i64 noundef 0)
  %97 = load i8, ptr %x90, align 1
  %98 = load i64, ptr %x84, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext %97, i64 noundef %98, i64 noundef 1152921504606846976)
  %99 = load i8, ptr %x92, align 1
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %99, i64 noundef 0, i64 noundef 0)
  %100 = load i8, ptr %x94, align 1
  %101 = load i64, ptr %x85, align 8
  %102 = load i64, ptr %x78, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x95, i8 noundef zeroext %100, i64 noundef %101, i64 noundef %102)
  %103 = load i8, ptr %x94, align 1
  %104 = load i64, ptr %x87, align 8
  %105 = load i64, ptr %x80, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x96, i8 noundef zeroext %103, i64 noundef %104, i64 noundef %105)
  %106 = load i8, ptr %x94, align 1
  %107 = load i64, ptr %x89, align 8
  %108 = load i64, ptr %x82, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x97, i8 noundef zeroext %106, i64 noundef %107, i64 noundef %108)
  %109 = load i8, ptr %x94, align 1
  %110 = load i64, ptr %x91, align 8
  %111 = load i64, ptr %x84, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x98, i8 noundef zeroext %109, i64 noundef %110, i64 noundef %111)
  %112 = load i64, ptr %x95, align 8
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %113, i64 0
  store i64 %112, ptr %arrayidx24, align 8
  %114 = load i64, ptr %x96, align 8
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %115, i64 1
  store i64 %114, ptr %arrayidx25, align 8
  %116 = load i64, ptr %x97, align 8
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %117, i64 2
  store i64 %116, ptr %arrayidx26, align 8
  %118 = load i64, ptr %x98, align 8
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %119, i64 3
  store i64 %118, ptr %arrayidx27, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_to_montgomery(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i8, align 1
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
  %x36 = alloca i8, align 1
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i64, align 8
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
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
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i64, align 8
  %x66 = alloca i64, align 8
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
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i64, align 8
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
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
  %x106 = alloca i64, align 8
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
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
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
  %x148 = alloca i8, align 1
  %x149 = alloca i64, align 8
  %x150 = alloca i8, align 1
  %x151 = alloca i64, align 8
  %x152 = alloca i8, align 1
  %x153 = alloca i64, align 8
  %x154 = alloca i8, align 1
  %x155 = alloca i64, align 8
  %x156 = alloca i8, align 1
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
  %x170 = alloca i64, align 8
  %x171 = alloca i64, align 8
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
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x5, ptr noundef %x6, i64 noundef %8, i64 noundef 259310039853996605)
  %9 = load i64, ptr %x4, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x7, ptr noundef %x8, i64 noundef %9, i64 noundef -3536324261210374555)
  %10 = load i64, ptr %x4, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x9, ptr noundef %x10, i64 noundef %10, i64 noundef -3454793458319518905)
  %11 = load i64, ptr %x4, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x11, ptr noundef %x12, i64 noundef %11, i64 noundef -6627590133822779647)
  %12 = load i64, ptr %x12, align 8
  %13 = load i64, ptr %x9, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext 0, i64 noundef %12, i64 noundef %13)
  %14 = load i8, ptr %x14, align 1
  %15 = load i64, ptr %x10, align 8
  %16 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %16)
  %17 = load i8, ptr %x16, align 1
  %18 = load i64, ptr %x8, align 8
  %19 = load i64, ptr %x5, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %19)
  %20 = load i64, ptr %x11, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x19, ptr noundef %x20, i64 noundef %20, i64 noundef -3263669768735654373)
  %21 = load i64, ptr %x19, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x21, ptr noundef %x22, i64 noundef %21, i64 noundef 1152921504606846976)
  %22 = load i64, ptr %x19, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x23, ptr noundef %x24, i64 noundef %22, i64 noundef 1503914060200516822)
  %23 = load i64, ptr %x19, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x25, ptr noundef %x26, i64 noundef %23, i64 noundef 6346243789798364141)
  %24 = load i64, ptr %x26, align 8
  %25 = load i64, ptr %x23, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x27, ptr noundef %x28, i8 noundef zeroext 0, i64 noundef %24, i64 noundef %25)
  %26 = load i64, ptr %x11, align 8
  %27 = load i64, ptr %x25, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x29, ptr noundef %x30, i8 noundef zeroext 0, i64 noundef %26, i64 noundef %27)
  %28 = load i8, ptr %x30, align 1
  %29 = load i64, ptr %x13, align 8
  %30 = load i64, ptr %x27, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext %28, i64 noundef %29, i64 noundef %30)
  %31 = load i8, ptr %x32, align 1
  %32 = load i64, ptr %x15, align 8
  %33 = load i8, ptr %x28, align 1
  %conv = zext i8 %33 to i64
  %34 = load i64, ptr %x24, align 8
  %add = add i64 %conv, %34
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %31, i64 noundef %32, i64 noundef %add)
  %35 = load i8, ptr %x34, align 1
  %36 = load i64, ptr %x17, align 8
  %37 = load i64, ptr %x21, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %37)
  %38 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x37, ptr noundef %x38, i64 noundef %38, i64 noundef 259310039853996605)
  %39 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x39, ptr noundef %x40, i64 noundef %39, i64 noundef -3536324261210374555)
  %40 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x41, ptr noundef %x42, i64 noundef %40, i64 noundef -3454793458319518905)
  %41 = load i64, ptr %x1, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x43, ptr noundef %x44, i64 noundef %41, i64 noundef -6627590133822779647)
  %42 = load i64, ptr %x44, align 8
  %43 = load i64, ptr %x41, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext 0, i64 noundef %42, i64 noundef %43)
  %44 = load i8, ptr %x46, align 1
  %45 = load i64, ptr %x42, align 8
  %46 = load i64, ptr %x39, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %44, i64 noundef %45, i64 noundef %46)
  %47 = load i8, ptr %x48, align 1
  %48 = load i64, ptr %x40, align 8
  %49 = load i64, ptr %x37, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x49, ptr noundef %x50, i8 noundef zeroext %47, i64 noundef %48, i64 noundef %49)
  %50 = load i64, ptr %x31, align 8
  %51 = load i64, ptr %x43, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x51, ptr noundef %x52, i8 noundef zeroext 0, i64 noundef %50, i64 noundef %51)
  %52 = load i8, ptr %x52, align 1
  %53 = load i64, ptr %x33, align 8
  %54 = load i64, ptr %x45, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext %52, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x54, align 1
  %56 = load i64, ptr %x35, align 8
  %57 = load i64, ptr %x47, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %55, i64 noundef %56, i64 noundef %57)
  %58 = load i8, ptr %x56, align 1
  %59 = load i8, ptr %x36, align 1
  %conv4 = zext i8 %59 to i64
  %60 = load i8, ptr %x18, align 1
  %conv5 = zext i8 %60 to i64
  %61 = load i64, ptr %x6, align 8
  %add6 = add i64 %conv5, %61
  %add7 = add i64 %conv4, %add6
  %62 = load i64, ptr %x22, align 8
  %add8 = add i64 %add7, %62
  %63 = load i64, ptr %x49, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %58, i64 noundef %add8, i64 noundef %63)
  %64 = load i64, ptr %x51, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x59, ptr noundef %x60, i64 noundef %64, i64 noundef -3263669768735654373)
  %65 = load i64, ptr %x59, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x61, ptr noundef %x62, i64 noundef %65, i64 noundef 1152921504606846976)
  %66 = load i64, ptr %x59, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x63, ptr noundef %x64, i64 noundef %66, i64 noundef 1503914060200516822)
  %67 = load i64, ptr %x59, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x65, ptr noundef %x66, i64 noundef %67, i64 noundef 6346243789798364141)
  %68 = load i64, ptr %x66, align 8
  %69 = load i64, ptr %x63, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x67, ptr noundef %x68, i8 noundef zeroext 0, i64 noundef %68, i64 noundef %69)
  %70 = load i64, ptr %x51, align 8
  %71 = load i64, ptr %x65, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x69, ptr noundef %x70, i8 noundef zeroext 0, i64 noundef %70, i64 noundef %71)
  %72 = load i8, ptr %x70, align 1
  %73 = load i64, ptr %x53, align 8
  %74 = load i64, ptr %x67, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x71, ptr noundef %x72, i8 noundef zeroext %72, i64 noundef %73, i64 noundef %74)
  %75 = load i8, ptr %x72, align 1
  %76 = load i64, ptr %x55, align 8
  %77 = load i8, ptr %x68, align 1
  %conv9 = zext i8 %77 to i64
  %78 = load i64, ptr %x64, align 8
  %add10 = add i64 %conv9, %78
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x73, ptr noundef %x74, i8 noundef zeroext %75, i64 noundef %76, i64 noundef %add10)
  %79 = load i8, ptr %x74, align 1
  %80 = load i64, ptr %x57, align 8
  %81 = load i64, ptr %x61, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x75, ptr noundef %x76, i8 noundef zeroext %79, i64 noundef %80, i64 noundef %81)
  %82 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x77, ptr noundef %x78, i64 noundef %82, i64 noundef 259310039853996605)
  %83 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x79, ptr noundef %x80, i64 noundef %83, i64 noundef -3536324261210374555)
  %84 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x81, ptr noundef %x82, i64 noundef %84, i64 noundef -3454793458319518905)
  %85 = load i64, ptr %x2, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x83, ptr noundef %x84, i64 noundef %85, i64 noundef -6627590133822779647)
  %86 = load i64, ptr %x84, align 8
  %87 = load i64, ptr %x81, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x85, ptr noundef %x86, i8 noundef zeroext 0, i64 noundef %86, i64 noundef %87)
  %88 = load i8, ptr %x86, align 1
  %89 = load i64, ptr %x82, align 8
  %90 = load i64, ptr %x79, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x87, ptr noundef %x88, i8 noundef zeroext %88, i64 noundef %89, i64 noundef %90)
  %91 = load i8, ptr %x88, align 1
  %92 = load i64, ptr %x80, align 8
  %93 = load i64, ptr %x77, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x89, ptr noundef %x90, i8 noundef zeroext %91, i64 noundef %92, i64 noundef %93)
  %94 = load i64, ptr %x71, align 8
  %95 = load i64, ptr %x83, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x91, ptr noundef %x92, i8 noundef zeroext 0, i64 noundef %94, i64 noundef %95)
  %96 = load i8, ptr %x92, align 1
  %97 = load i64, ptr %x73, align 8
  %98 = load i64, ptr %x85, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x93, ptr noundef %x94, i8 noundef zeroext %96, i64 noundef %97, i64 noundef %98)
  %99 = load i8, ptr %x94, align 1
  %100 = load i64, ptr %x75, align 8
  %101 = load i64, ptr %x87, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x95, ptr noundef %x96, i8 noundef zeroext %99, i64 noundef %100, i64 noundef %101)
  %102 = load i8, ptr %x96, align 1
  %103 = load i8, ptr %x76, align 1
  %conv11 = zext i8 %103 to i64
  %104 = load i8, ptr %x58, align 1
  %conv12 = zext i8 %104 to i64
  %105 = load i8, ptr %x50, align 1
  %conv13 = zext i8 %105 to i64
  %106 = load i64, ptr %x38, align 8
  %add14 = add i64 %conv13, %106
  %add15 = add i64 %conv12, %add14
  %add16 = add i64 %conv11, %add15
  %107 = load i64, ptr %x62, align 8
  %add17 = add i64 %add16, %107
  %108 = load i64, ptr %x89, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x97, ptr noundef %x98, i8 noundef zeroext %102, i64 noundef %add17, i64 noundef %108)
  %109 = load i64, ptr %x91, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x99, ptr noundef %x100, i64 noundef %109, i64 noundef -3263669768735654373)
  %110 = load i64, ptr %x99, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x101, ptr noundef %x102, i64 noundef %110, i64 noundef 1152921504606846976)
  %111 = load i64, ptr %x99, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x103, ptr noundef %x104, i64 noundef %111, i64 noundef 1503914060200516822)
  %112 = load i64, ptr %x99, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x105, ptr noundef %x106, i64 noundef %112, i64 noundef 6346243789798364141)
  %113 = load i64, ptr %x106, align 8
  %114 = load i64, ptr %x103, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x107, ptr noundef %x108, i8 noundef zeroext 0, i64 noundef %113, i64 noundef %114)
  %115 = load i64, ptr %x91, align 8
  %116 = load i64, ptr %x105, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x109, ptr noundef %x110, i8 noundef zeroext 0, i64 noundef %115, i64 noundef %116)
  %117 = load i8, ptr %x110, align 1
  %118 = load i64, ptr %x93, align 8
  %119 = load i64, ptr %x107, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x111, ptr noundef %x112, i8 noundef zeroext %117, i64 noundef %118, i64 noundef %119)
  %120 = load i8, ptr %x112, align 1
  %121 = load i64, ptr %x95, align 8
  %122 = load i8, ptr %x108, align 1
  %conv18 = zext i8 %122 to i64
  %123 = load i64, ptr %x104, align 8
  %add19 = add i64 %conv18, %123
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x113, ptr noundef %x114, i8 noundef zeroext %120, i64 noundef %121, i64 noundef %add19)
  %124 = load i8, ptr %x114, align 1
  %125 = load i64, ptr %x97, align 8
  %126 = load i64, ptr %x101, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x115, ptr noundef %x116, i8 noundef zeroext %124, i64 noundef %125, i64 noundef %126)
  %127 = load i64, ptr %x3, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x117, ptr noundef %x118, i64 noundef %127, i64 noundef 259310039853996605)
  %128 = load i64, ptr %x3, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x119, ptr noundef %x120, i64 noundef %128, i64 noundef -3536324261210374555)
  %129 = load i64, ptr %x3, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x121, ptr noundef %x122, i64 noundef %129, i64 noundef -3454793458319518905)
  %130 = load i64, ptr %x3, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x123, ptr noundef %x124, i64 noundef %130, i64 noundef -6627590133822779647)
  %131 = load i64, ptr %x124, align 8
  %132 = load i64, ptr %x121, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x125, ptr noundef %x126, i8 noundef zeroext 0, i64 noundef %131, i64 noundef %132)
  %133 = load i8, ptr %x126, align 1
  %134 = load i64, ptr %x122, align 8
  %135 = load i64, ptr %x119, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x127, ptr noundef %x128, i8 noundef zeroext %133, i64 noundef %134, i64 noundef %135)
  %136 = load i8, ptr %x128, align 1
  %137 = load i64, ptr %x120, align 8
  %138 = load i64, ptr %x117, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x129, ptr noundef %x130, i8 noundef zeroext %136, i64 noundef %137, i64 noundef %138)
  %139 = load i64, ptr %x111, align 8
  %140 = load i64, ptr %x123, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x131, ptr noundef %x132, i8 noundef zeroext 0, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x132, align 1
  %142 = load i64, ptr %x113, align 8
  %143 = load i64, ptr %x125, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x133, ptr noundef %x134, i8 noundef zeroext %141, i64 noundef %142, i64 noundef %143)
  %144 = load i8, ptr %x134, align 1
  %145 = load i64, ptr %x115, align 8
  %146 = load i64, ptr %x127, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x135, ptr noundef %x136, i8 noundef zeroext %144, i64 noundef %145, i64 noundef %146)
  %147 = load i8, ptr %x136, align 1
  %148 = load i8, ptr %x116, align 1
  %conv20 = zext i8 %148 to i64
  %149 = load i8, ptr %x98, align 1
  %conv21 = zext i8 %149 to i64
  %150 = load i8, ptr %x90, align 1
  %conv22 = zext i8 %150 to i64
  %151 = load i64, ptr %x78, align 8
  %add23 = add i64 %conv22, %151
  %add24 = add i64 %conv21, %add23
  %add25 = add i64 %conv20, %add24
  %152 = load i64, ptr %x102, align 8
  %add26 = add i64 %add25, %152
  %153 = load i64, ptr %x129, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x137, ptr noundef %x138, i8 noundef zeroext %147, i64 noundef %add26, i64 noundef %153)
  %154 = load i64, ptr %x131, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x139, ptr noundef %x140, i64 noundef %154, i64 noundef -3263669768735654373)
  %155 = load i64, ptr %x139, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x141, ptr noundef %x142, i64 noundef %155, i64 noundef 1152921504606846976)
  %156 = load i64, ptr %x139, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x143, ptr noundef %x144, i64 noundef %156, i64 noundef 1503914060200516822)
  %157 = load i64, ptr %x139, align 8
  call void @fiat_25519_scalar_mulx_u64(ptr noundef %x145, ptr noundef %x146, i64 noundef %157, i64 noundef 6346243789798364141)
  %158 = load i64, ptr %x146, align 8
  %159 = load i64, ptr %x143, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x147, ptr noundef %x148, i8 noundef zeroext 0, i64 noundef %158, i64 noundef %159)
  %160 = load i64, ptr %x131, align 8
  %161 = load i64, ptr %x145, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x149, ptr noundef %x150, i8 noundef zeroext 0, i64 noundef %160, i64 noundef %161)
  %162 = load i8, ptr %x150, align 1
  %163 = load i64, ptr %x133, align 8
  %164 = load i64, ptr %x147, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x151, ptr noundef %x152, i8 noundef zeroext %162, i64 noundef %163, i64 noundef %164)
  %165 = load i8, ptr %x152, align 1
  %166 = load i64, ptr %x135, align 8
  %167 = load i8, ptr %x148, align 1
  %conv27 = zext i8 %167 to i64
  %168 = load i64, ptr %x144, align 8
  %add28 = add i64 %conv27, %168
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x153, ptr noundef %x154, i8 noundef zeroext %165, i64 noundef %166, i64 noundef %add28)
  %169 = load i8, ptr %x154, align 1
  %170 = load i64, ptr %x137, align 8
  %171 = load i64, ptr %x141, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x155, ptr noundef %x156, i8 noundef zeroext %169, i64 noundef %170, i64 noundef %171)
  %172 = load i8, ptr %x156, align 1
  %conv29 = zext i8 %172 to i64
  %173 = load i8, ptr %x138, align 1
  %conv30 = zext i8 %173 to i64
  %174 = load i8, ptr %x130, align 1
  %conv31 = zext i8 %174 to i64
  %175 = load i64, ptr %x118, align 8
  %add32 = add i64 %conv31, %175
  %add33 = add i64 %conv30, %add32
  %add34 = add i64 %conv29, %add33
  %176 = load i64, ptr %x142, align 8
  %add35 = add i64 %add34, %176
  store i64 %add35, ptr %x157, align 8
  %177 = load i64, ptr %x151, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x158, ptr noundef %x159, i8 noundef zeroext 0, i64 noundef %177, i64 noundef 6346243789798364141)
  %178 = load i8, ptr %x159, align 1
  %179 = load i64, ptr %x153, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x160, ptr noundef %x161, i8 noundef zeroext %178, i64 noundef %179, i64 noundef 1503914060200516822)
  %180 = load i8, ptr %x161, align 1
  %181 = load i64, ptr %x155, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x162, ptr noundef %x163, i8 noundef zeroext %180, i64 noundef %181, i64 noundef 0)
  %182 = load i8, ptr %x163, align 1
  %183 = load i64, ptr %x157, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x164, ptr noundef %x165, i8 noundef zeroext %182, i64 noundef %183, i64 noundef 1152921504606846976)
  %184 = load i8, ptr %x165, align 1
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x166, ptr noundef %x167, i8 noundef zeroext %184, i64 noundef 0, i64 noundef 0)
  %185 = load i8, ptr %x167, align 1
  %186 = load i64, ptr %x158, align 8
  %187 = load i64, ptr %x151, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x168, i8 noundef zeroext %185, i64 noundef %186, i64 noundef %187)
  %188 = load i8, ptr %x167, align 1
  %189 = load i64, ptr %x160, align 8
  %190 = load i64, ptr %x153, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x169, i8 noundef zeroext %188, i64 noundef %189, i64 noundef %190)
  %191 = load i8, ptr %x167, align 1
  %192 = load i64, ptr %x162, align 8
  %193 = load i64, ptr %x155, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x170, i8 noundef zeroext %191, i64 noundef %192, i64 noundef %193)
  %194 = load i8, ptr %x167, align 1
  %195 = load i64, ptr %x164, align 8
  %196 = load i64, ptr %x157, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x171, i8 noundef zeroext %194, i64 noundef %195, i64 noundef %196)
  %197 = load i64, ptr %x168, align 8
  %198 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %198, i64 0
  store i64 %197, ptr %arrayidx36, align 8
  %199 = load i64, ptr %x169, align 8
  %200 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %200, i64 1
  store i64 %199, ptr %arrayidx37, align 8
  %201 = load i64, ptr %x170, align 8
  %202 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %202, i64 2
  store i64 %201, ptr %arrayidx38, align 8
  %203 = load i64, ptr %x171, align 8
  %204 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %204, i64 3
  store i64 %203, ptr %arrayidx39, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_nonzero(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %or = or i64 %5, %7
  %or4 = or i64 %3, %or
  %or5 = or i64 %1, %or4
  store i64 %or5, ptr %x1, align 8
  %8 = load i64, ptr %x1, align 8
  %9 = load ptr, ptr %out1.addr, align 8
  store i64 %8, ptr %9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
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
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i64, ptr %x1, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 0
  store i64 %20, ptr %arrayidx8, align 8
  %22 = load i64, ptr %x2, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 %22, ptr %arrayidx9, align 8
  %24 = load i64, ptr %x3, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %25, i64 2
  store i64 %24, ptr %arrayidx10, align 8
  %26 = load i64, ptr %x4, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %27, i64 3
  store i64 %26, ptr %arrayidx11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i8, align 1
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
  %x18 = alloca i8, align 1
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
  %x32 = alloca i8, align 1
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
  %x46 = alloca i8, align 1
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
  %x60 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 3
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load i64, ptr %x4, align 8
  %and = and i64 %8, 255
  %conv = trunc i64 %and to i8
  store i8 %conv, ptr %x5, align 1
  %9 = load i64, ptr %x4, align 8
  %shr = lshr i64 %9, 8
  store i64 %shr, ptr %x6, align 8
  %10 = load i64, ptr %x6, align 8
  %and4 = and i64 %10, 255
  %conv5 = trunc i64 %and4 to i8
  store i8 %conv5, ptr %x7, align 1
  %11 = load i64, ptr %x6, align 8
  %shr6 = lshr i64 %11, 8
  store i64 %shr6, ptr %x8, align 8
  %12 = load i64, ptr %x8, align 8
  %and7 = and i64 %12, 255
  %conv8 = trunc i64 %and7 to i8
  store i8 %conv8, ptr %x9, align 1
  %13 = load i64, ptr %x8, align 8
  %shr9 = lshr i64 %13, 8
  store i64 %shr9, ptr %x10, align 8
  %14 = load i64, ptr %x10, align 8
  %and10 = and i64 %14, 255
  %conv11 = trunc i64 %and10 to i8
  store i8 %conv11, ptr %x11, align 1
  %15 = load i64, ptr %x10, align 8
  %shr12 = lshr i64 %15, 8
  store i64 %shr12, ptr %x12, align 8
  %16 = load i64, ptr %x12, align 8
  %and13 = and i64 %16, 255
  %conv14 = trunc i64 %and13 to i8
  store i8 %conv14, ptr %x13, align 1
  %17 = load i64, ptr %x12, align 8
  %shr15 = lshr i64 %17, 8
  store i64 %shr15, ptr %x14, align 8
  %18 = load i64, ptr %x14, align 8
  %and16 = and i64 %18, 255
  %conv17 = trunc i64 %and16 to i8
  store i8 %conv17, ptr %x15, align 1
  %19 = load i64, ptr %x14, align 8
  %shr18 = lshr i64 %19, 8
  store i64 %shr18, ptr %x16, align 8
  %20 = load i64, ptr %x16, align 8
  %and19 = and i64 %20, 255
  %conv20 = trunc i64 %and19 to i8
  store i8 %conv20, ptr %x17, align 1
  %21 = load i64, ptr %x16, align 8
  %shr21 = lshr i64 %21, 8
  %conv22 = trunc i64 %shr21 to i8
  store i8 %conv22, ptr %x18, align 1
  %22 = load i64, ptr %x3, align 8
  %and23 = and i64 %22, 255
  %conv24 = trunc i64 %and23 to i8
  store i8 %conv24, ptr %x19, align 1
  %23 = load i64, ptr %x3, align 8
  %shr25 = lshr i64 %23, 8
  store i64 %shr25, ptr %x20, align 8
  %24 = load i64, ptr %x20, align 8
  %and26 = and i64 %24, 255
  %conv27 = trunc i64 %and26 to i8
  store i8 %conv27, ptr %x21, align 1
  %25 = load i64, ptr %x20, align 8
  %shr28 = lshr i64 %25, 8
  store i64 %shr28, ptr %x22, align 8
  %26 = load i64, ptr %x22, align 8
  %and29 = and i64 %26, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, ptr %x23, align 1
  %27 = load i64, ptr %x22, align 8
  %shr31 = lshr i64 %27, 8
  store i64 %shr31, ptr %x24, align 8
  %28 = load i64, ptr %x24, align 8
  %and32 = and i64 %28, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x25, align 1
  %29 = load i64, ptr %x24, align 8
  %shr34 = lshr i64 %29, 8
  store i64 %shr34, ptr %x26, align 8
  %30 = load i64, ptr %x26, align 8
  %and35 = and i64 %30, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x27, align 1
  %31 = load i64, ptr %x26, align 8
  %shr37 = lshr i64 %31, 8
  store i64 %shr37, ptr %x28, align 8
  %32 = load i64, ptr %x28, align 8
  %and38 = and i64 %32, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x29, align 1
  %33 = load i64, ptr %x28, align 8
  %shr40 = lshr i64 %33, 8
  store i64 %shr40, ptr %x30, align 8
  %34 = load i64, ptr %x30, align 8
  %and41 = and i64 %34, 255
  %conv42 = trunc i64 %and41 to i8
  store i8 %conv42, ptr %x31, align 1
  %35 = load i64, ptr %x30, align 8
  %shr43 = lshr i64 %35, 8
  %conv44 = trunc i64 %shr43 to i8
  store i8 %conv44, ptr %x32, align 1
  %36 = load i64, ptr %x2, align 8
  %and45 = and i64 %36, 255
  %conv46 = trunc i64 %and45 to i8
  store i8 %conv46, ptr %x33, align 1
  %37 = load i64, ptr %x2, align 8
  %shr47 = lshr i64 %37, 8
  store i64 %shr47, ptr %x34, align 8
  %38 = load i64, ptr %x34, align 8
  %and48 = and i64 %38, 255
  %conv49 = trunc i64 %and48 to i8
  store i8 %conv49, ptr %x35, align 1
  %39 = load i64, ptr %x34, align 8
  %shr50 = lshr i64 %39, 8
  store i64 %shr50, ptr %x36, align 8
  %40 = load i64, ptr %x36, align 8
  %and51 = and i64 %40, 255
  %conv52 = trunc i64 %and51 to i8
  store i8 %conv52, ptr %x37, align 1
  %41 = load i64, ptr %x36, align 8
  %shr53 = lshr i64 %41, 8
  store i64 %shr53, ptr %x38, align 8
  %42 = load i64, ptr %x38, align 8
  %and54 = and i64 %42, 255
  %conv55 = trunc i64 %and54 to i8
  store i8 %conv55, ptr %x39, align 1
  %43 = load i64, ptr %x38, align 8
  %shr56 = lshr i64 %43, 8
  store i64 %shr56, ptr %x40, align 8
  %44 = load i64, ptr %x40, align 8
  %and57 = and i64 %44, 255
  %conv58 = trunc i64 %and57 to i8
  store i8 %conv58, ptr %x41, align 1
  %45 = load i64, ptr %x40, align 8
  %shr59 = lshr i64 %45, 8
  store i64 %shr59, ptr %x42, align 8
  %46 = load i64, ptr %x42, align 8
  %and60 = and i64 %46, 255
  %conv61 = trunc i64 %and60 to i8
  store i8 %conv61, ptr %x43, align 1
  %47 = load i64, ptr %x42, align 8
  %shr62 = lshr i64 %47, 8
  store i64 %shr62, ptr %x44, align 8
  %48 = load i64, ptr %x44, align 8
  %and63 = and i64 %48, 255
  %conv64 = trunc i64 %and63 to i8
  store i8 %conv64, ptr %x45, align 1
  %49 = load i64, ptr %x44, align 8
  %shr65 = lshr i64 %49, 8
  %conv66 = trunc i64 %shr65 to i8
  store i8 %conv66, ptr %x46, align 1
  %50 = load i64, ptr %x1, align 8
  %and67 = and i64 %50, 255
  %conv68 = trunc i64 %and67 to i8
  store i8 %conv68, ptr %x47, align 1
  %51 = load i64, ptr %x1, align 8
  %shr69 = lshr i64 %51, 8
  store i64 %shr69, ptr %x48, align 8
  %52 = load i64, ptr %x48, align 8
  %and70 = and i64 %52, 255
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x49, align 1
  %53 = load i64, ptr %x48, align 8
  %shr72 = lshr i64 %53, 8
  store i64 %shr72, ptr %x50, align 8
  %54 = load i64, ptr %x50, align 8
  %and73 = and i64 %54, 255
  %conv74 = trunc i64 %and73 to i8
  store i8 %conv74, ptr %x51, align 1
  %55 = load i64, ptr %x50, align 8
  %shr75 = lshr i64 %55, 8
  store i64 %shr75, ptr %x52, align 8
  %56 = load i64, ptr %x52, align 8
  %and76 = and i64 %56, 255
  %conv77 = trunc i64 %and76 to i8
  store i8 %conv77, ptr %x53, align 1
  %57 = load i64, ptr %x52, align 8
  %shr78 = lshr i64 %57, 8
  store i64 %shr78, ptr %x54, align 8
  %58 = load i64, ptr %x54, align 8
  %and79 = and i64 %58, 255
  %conv80 = trunc i64 %and79 to i8
  store i8 %conv80, ptr %x55, align 1
  %59 = load i64, ptr %x54, align 8
  %shr81 = lshr i64 %59, 8
  store i64 %shr81, ptr %x56, align 8
  %60 = load i64, ptr %x56, align 8
  %and82 = and i64 %60, 255
  %conv83 = trunc i64 %and82 to i8
  store i8 %conv83, ptr %x57, align 1
  %61 = load i64, ptr %x56, align 8
  %shr84 = lshr i64 %61, 8
  store i64 %shr84, ptr %x58, align 8
  %62 = load i64, ptr %x58, align 8
  %and85 = and i64 %62, 255
  %conv86 = trunc i64 %and85 to i8
  store i8 %conv86, ptr %x59, align 1
  %63 = load i64, ptr %x58, align 8
  %shr87 = lshr i64 %63, 8
  %conv88 = trunc i64 %shr87 to i8
  store i8 %conv88, ptr %x60, align 1
  %64 = load i8, ptr %x5, align 1
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %65, i64 0
  store i8 %64, ptr %arrayidx89, align 1
  %66 = load i8, ptr %x7, align 1
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %66, ptr %arrayidx90, align 1
  %68 = load i8, ptr %x9, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %68, ptr %arrayidx91, align 1
  %70 = load i8, ptr %x11, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %71, i64 3
  store i8 %70, ptr %arrayidx92, align 1
  %72 = load i8, ptr %x13, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %73, i64 4
  store i8 %72, ptr %arrayidx93, align 1
  %74 = load i8, ptr %x15, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %75, i64 5
  store i8 %74, ptr %arrayidx94, align 1
  %76 = load i8, ptr %x17, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %77, i64 6
  store i8 %76, ptr %arrayidx95, align 1
  %78 = load i8, ptr %x18, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %79, i64 7
  store i8 %78, ptr %arrayidx96, align 1
  %80 = load i8, ptr %x19, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, ptr %81, i64 8
  store i8 %80, ptr %arrayidx97, align 1
  %82 = load i8, ptr %x21, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %83, i64 9
  store i8 %82, ptr %arrayidx98, align 1
  %84 = load i8, ptr %x23, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %85, i64 10
  store i8 %84, ptr %arrayidx99, align 1
  %86 = load i8, ptr %x25, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %87, i64 11
  store i8 %86, ptr %arrayidx100, align 1
  %88 = load i8, ptr %x27, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %89, i64 12
  store i8 %88, ptr %arrayidx101, align 1
  %90 = load i8, ptr %x29, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %91, i64 13
  store i8 %90, ptr %arrayidx102, align 1
  %92 = load i8, ptr %x31, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %93, i64 14
  store i8 %92, ptr %arrayidx103, align 1
  %94 = load i8, ptr %x32, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %95, i64 15
  store i8 %94, ptr %arrayidx104, align 1
  %96 = load i8, ptr %x33, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %97, i64 16
  store i8 %96, ptr %arrayidx105, align 1
  %98 = load i8, ptr %x35, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %99, i64 17
  store i8 %98, ptr %arrayidx106, align 1
  %100 = load i8, ptr %x37, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %101, i64 18
  store i8 %100, ptr %arrayidx107, align 1
  %102 = load i8, ptr %x39, align 1
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %103, i64 19
  store i8 %102, ptr %arrayidx108, align 1
  %104 = load i8, ptr %x41, align 1
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %105, i64 20
  store i8 %104, ptr %arrayidx109, align 1
  %106 = load i8, ptr %x43, align 1
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %107, i64 21
  store i8 %106, ptr %arrayidx110, align 1
  %108 = load i8, ptr %x45, align 1
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %109, i64 22
  store i8 %108, ptr %arrayidx111, align 1
  %110 = load i8, ptr %x46, align 1
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %111, i64 23
  store i8 %110, ptr %arrayidx112, align 1
  %112 = load i8, ptr %x47, align 1
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %113, i64 24
  store i8 %112, ptr %arrayidx113, align 1
  %114 = load i8, ptr %x49, align 1
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %115, i64 25
  store i8 %114, ptr %arrayidx114, align 1
  %116 = load i8, ptr %x51, align 1
  %117 = load ptr, ptr %out1.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %117, i64 26
  store i8 %116, ptr %arrayidx115, align 1
  %118 = load i8, ptr %x53, align 1
  %119 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %119, i64 27
  store i8 %118, ptr %arrayidx116, align 1
  %120 = load i8, ptr %x55, align 1
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %121, i64 28
  store i8 %120, ptr %arrayidx117, align 1
  %122 = load i8, ptr %x57, align 1
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %123, i64 29
  store i8 %122, ptr %arrayidx118, align 1
  %124 = load i8, ptr %x59, align 1
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %125, i64 30
  store i8 %124, ptr %arrayidx119, align 1
  %126 = load i8, ptr %x60, align 1
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %127, i64 31
  store i8 %126, ptr %arrayidx120, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 31
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 56
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 30
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 48
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 29
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 40
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 28
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 32
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 27
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 24
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 26
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 16
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 25
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %shl18 = shl i64 %conv17, 8
  store i64 %shl18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 24
  %15 = load i8, ptr %arrayidx19, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 23
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 56
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 22
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 48
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 21
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 40
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 20
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i64
  %shl31 = shl i64 %conv30, 32
  store i64 %shl31, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 19
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i64
  %shl34 = shl i64 %conv33, 24
  store i64 %shl34, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 18
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i64
  %shl37 = shl i64 %conv36, 16
  store i64 %shl37, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i64
  %shl40 = shl i64 %conv39, 8
  store i64 %shl40, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 16
  %31 = load i8, ptr %arrayidx41, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 15
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i64
  %shl44 = shl i64 %conv43, 56
  store i64 %shl44, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 14
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i64
  %shl47 = shl i64 %conv46, 48
  store i64 %shl47, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 13
  %37 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %37 to i64
  %shl50 = shl i64 %conv49, 40
  store i64 %shl50, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 12
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i64
  %shl53 = shl i64 %conv52, 32
  store i64 %shl53, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 11
  %41 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %41 to i64
  %shl56 = shl i64 %conv55, 24
  store i64 %shl56, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %42, i64 10
  %43 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %43 to i64
  %shl59 = shl i64 %conv58, 16
  store i64 %shl59, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %44, i64 9
  %45 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %45 to i64
  %shl62 = shl i64 %conv61, 8
  store i64 %shl62, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %46, i64 8
  %47 = load i8, ptr %arrayidx63, align 1
  store i8 %47, ptr %x24, align 1
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %48, i64 7
  %49 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %49 to i64
  %shl66 = shl i64 %conv65, 56
  store i64 %shl66, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 6
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i64
  %shl69 = shl i64 %conv68, 48
  store i64 %shl69, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 5
  %53 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %53 to i64
  %shl72 = shl i64 %conv71, 40
  store i64 %shl72, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %55 to i64
  %shl75 = shl i64 %conv74, 32
  store i64 %shl75, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %56, i64 3
  %57 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %57 to i64
  %shl78 = shl i64 %conv77, 24
  store i64 %shl78, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %59 to i64
  %shl81 = shl i64 %conv80, 16
  store i64 %shl81, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %60, i64 1
  %61 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %61 to i64
  %shl84 = shl i64 %conv83, 8
  store i64 %shl84, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx85, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load i64, ptr %x31, align 8
  %65 = load i8, ptr %x32, align 1
  %conv86 = zext i8 %65 to i64
  %add = add i64 %64, %conv86
  store i64 %add, ptr %x33, align 8
  %66 = load i64, ptr %x30, align 8
  %67 = load i64, ptr %x33, align 8
  %add87 = add i64 %66, %67
  store i64 %add87, ptr %x34, align 8
  %68 = load i64, ptr %x29, align 8
  %69 = load i64, ptr %x34, align 8
  %add88 = add i64 %68, %69
  store i64 %add88, ptr %x35, align 8
  %70 = load i64, ptr %x28, align 8
  %71 = load i64, ptr %x35, align 8
  %add89 = add i64 %70, %71
  store i64 %add89, ptr %x36, align 8
  %72 = load i64, ptr %x27, align 8
  %73 = load i64, ptr %x36, align 8
  %add90 = add i64 %72, %73
  store i64 %add90, ptr %x37, align 8
  %74 = load i64, ptr %x26, align 8
  %75 = load i64, ptr %x37, align 8
  %add91 = add i64 %74, %75
  store i64 %add91, ptr %x38, align 8
  %76 = load i64, ptr %x25, align 8
  %77 = load i64, ptr %x38, align 8
  %add92 = add i64 %76, %77
  store i64 %add92, ptr %x39, align 8
  %78 = load i64, ptr %x23, align 8
  %79 = load i8, ptr %x24, align 1
  %conv93 = zext i8 %79 to i64
  %add94 = add i64 %78, %conv93
  store i64 %add94, ptr %x40, align 8
  %80 = load i64, ptr %x22, align 8
  %81 = load i64, ptr %x40, align 8
  %add95 = add i64 %80, %81
  store i64 %add95, ptr %x41, align 8
  %82 = load i64, ptr %x21, align 8
  %83 = load i64, ptr %x41, align 8
  %add96 = add i64 %82, %83
  store i64 %add96, ptr %x42, align 8
  %84 = load i64, ptr %x20, align 8
  %85 = load i64, ptr %x42, align 8
  %add97 = add i64 %84, %85
  store i64 %add97, ptr %x43, align 8
  %86 = load i64, ptr %x19, align 8
  %87 = load i64, ptr %x43, align 8
  %add98 = add i64 %86, %87
  store i64 %add98, ptr %x44, align 8
  %88 = load i64, ptr %x18, align 8
  %89 = load i64, ptr %x44, align 8
  %add99 = add i64 %88, %89
  store i64 %add99, ptr %x45, align 8
  %90 = load i64, ptr %x17, align 8
  %91 = load i64, ptr %x45, align 8
  %add100 = add i64 %90, %91
  store i64 %add100, ptr %x46, align 8
  %92 = load i64, ptr %x15, align 8
  %93 = load i8, ptr %x16, align 1
  %conv101 = zext i8 %93 to i64
  %add102 = add i64 %92, %conv101
  store i64 %add102, ptr %x47, align 8
  %94 = load i64, ptr %x14, align 8
  %95 = load i64, ptr %x47, align 8
  %add103 = add i64 %94, %95
  store i64 %add103, ptr %x48, align 8
  %96 = load i64, ptr %x13, align 8
  %97 = load i64, ptr %x48, align 8
  %add104 = add i64 %96, %97
  store i64 %add104, ptr %x49, align 8
  %98 = load i64, ptr %x12, align 8
  %99 = load i64, ptr %x49, align 8
  %add105 = add i64 %98, %99
  store i64 %add105, ptr %x50, align 8
  %100 = load i64, ptr %x11, align 8
  %101 = load i64, ptr %x50, align 8
  %add106 = add i64 %100, %101
  store i64 %add106, ptr %x51, align 8
  %102 = load i64, ptr %x10, align 8
  %103 = load i64, ptr %x51, align 8
  %add107 = add i64 %102, %103
  store i64 %add107, ptr %x52, align 8
  %104 = load i64, ptr %x9, align 8
  %105 = load i64, ptr %x52, align 8
  %add108 = add i64 %104, %105
  store i64 %add108, ptr %x53, align 8
  %106 = load i64, ptr %x7, align 8
  %107 = load i8, ptr %x8, align 1
  %conv109 = zext i8 %107 to i64
  %add110 = add i64 %106, %conv109
  store i64 %add110, ptr %x54, align 8
  %108 = load i64, ptr %x6, align 8
  %109 = load i64, ptr %x54, align 8
  %add111 = add i64 %108, %109
  store i64 %add111, ptr %x55, align 8
  %110 = load i64, ptr %x5, align 8
  %111 = load i64, ptr %x55, align 8
  %add112 = add i64 %110, %111
  store i64 %add112, ptr %x56, align 8
  %112 = load i64, ptr %x4, align 8
  %113 = load i64, ptr %x56, align 8
  %add113 = add i64 %112, %113
  store i64 %add113, ptr %x57, align 8
  %114 = load i64, ptr %x3, align 8
  %115 = load i64, ptr %x57, align 8
  %add114 = add i64 %114, %115
  store i64 %add114, ptr %x58, align 8
  %116 = load i64, ptr %x2, align 8
  %117 = load i64, ptr %x58, align 8
  %add115 = add i64 %116, %117
  store i64 %add115, ptr %x59, align 8
  %118 = load i64, ptr %x1, align 8
  %119 = load i64, ptr %x59, align 8
  %add116 = add i64 %118, %119
  store i64 %add116, ptr %x60, align 8
  %120 = load i64, ptr %x39, align 8
  %121 = load ptr, ptr %out1.addr, align 8
  %arrayidx117 = getelementptr inbounds i64, ptr %121, i64 0
  store i64 %120, ptr %arrayidx117, align 8
  %122 = load i64, ptr %x46, align 8
  %123 = load ptr, ptr %out1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %123, i64 1
  store i64 %122, ptr %arrayidx118, align 8
  %124 = load i64, ptr %x53, align 8
  %125 = load ptr, ptr %out1.addr, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %125, i64 2
  store i64 %124, ptr %arrayidx119, align 8
  %126 = load i64, ptr %x60, align 8
  %127 = load ptr, ptr %out1.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %127, i64 3
  store i64 %126, ptr %arrayidx120, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_set_one(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 -2959936478427704035, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 -4111966829298200720, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 -2, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 1152921504606846975, ptr %arrayidx3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_msat(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 6346243789798364141, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 1503914060200516822, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 0, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 1152921504606846976, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  store i64 0, ptr %arrayidx4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_divstep(ptr noundef %out1, ptr noundef %out2, ptr noundef %out3, ptr noundef %out4, ptr noundef %out5, i64 noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %arg4, ptr noundef %arg5) #0 {
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
  %x13 = alloca i8, align 1
  %x14 = alloca i64, align 8
  %x15 = alloca i8, align 1
  %x16 = alloca i64, align 8
  %x17 = alloca i8, align 1
  %x18 = alloca i64, align 8
  %x19 = alloca i8, align 1
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i8, align 1
  %x33 = alloca i64, align 8
  %x34 = alloca i8, align 1
  %x35 = alloca i64, align 8
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
  %x49 = alloca i64, align 8
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
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
  %x71 = alloca i64, align 8
  %x72 = alloca i64, align 8
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i64, align 8
  %x77 = alloca i64, align 8
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
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
  %x91 = alloca i64, align 8
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
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
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %not, i64 noundef 1)
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
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x4, ptr noundef %x5, i8 noundef zeroext 0, i64 noundef %not6, i64 noundef 1)
  %5 = load i8, ptr %x3, align 1
  %6 = load i64, ptr %arg1.addr, align 8
  %7 = load i64, ptr %x4, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %6, i64 noundef %7)
  %8 = load i8, ptr %x3, align 1
  %9 = load ptr, ptr %arg2.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %arg3.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %11, i64 0
  %12 = load i64, ptr %arrayidx8, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef %10, i64 noundef %12)
  %13 = load i8, ptr %x3, align 1
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %arg3.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx10, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %13, i64 noundef %15, i64 noundef %17)
  %18 = load i8, ptr %x3, align 1
  %19 = load ptr, ptr %arg2.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx11, align 8
  %21 = load ptr, ptr %arg3.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx12, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %18, i64 noundef %20, i64 noundef %22)
  %23 = load i8, ptr %x3, align 1
  %24 = load ptr, ptr %arg2.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx13, align 8
  %26 = load ptr, ptr %arg3.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %26, i64 3
  %27 = load i64, ptr %arrayidx14, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x10, i8 noundef zeroext %23, i64 noundef %25, i64 noundef %27)
  %28 = load i8, ptr %x3, align 1
  %29 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 4
  %30 = load i64, ptr %arrayidx15, align 8
  %31 = load ptr, ptr %arg3.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 4
  %32 = load i64, ptr %arrayidx16, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %28, i64 noundef %30, i64 noundef %32)
  %33 = load ptr, ptr %arg2.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %33, i64 0
  %34 = load i64, ptr %arrayidx17, align 8
  %not18 = xor i64 %34, -1
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef 1, i64 noundef %not18)
  %35 = load i8, ptr %x13, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %36, i64 1
  %37 = load i64, ptr %arrayidx19, align 8
  %not20 = xor i64 %37, -1
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %35, i64 noundef 0, i64 noundef %not20)
  %38 = load i8, ptr %x15, align 1
  %39 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %39, i64 2
  %40 = load i64, ptr %arrayidx21, align 8
  %not22 = xor i64 %40, -1
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %38, i64 noundef 0, i64 noundef %not22)
  %41 = load i8, ptr %x17, align 1
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %42, i64 3
  %43 = load i64, ptr %arrayidx23, align 8
  %not24 = xor i64 %43, -1
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %41, i64 noundef 0, i64 noundef %not24)
  %44 = load i8, ptr %x19, align 1
  %45 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %45, i64 4
  %46 = load i64, ptr %arrayidx25, align 8
  %not26 = xor i64 %46, -1
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %44, i64 noundef 0, i64 noundef %not26)
  %47 = load i8, ptr %x3, align 1
  %48 = load ptr, ptr %arg3.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %48, i64 0
  %49 = load i64, ptr %arrayidx27, align 8
  %50 = load i64, ptr %x12, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x22, i8 noundef zeroext %47, i64 noundef %49, i64 noundef %50)
  %51 = load i8, ptr %x3, align 1
  %52 = load ptr, ptr %arg3.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %52, i64 1
  %53 = load i64, ptr %arrayidx28, align 8
  %54 = load i64, ptr %x14, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x23, i8 noundef zeroext %51, i64 noundef %53, i64 noundef %54)
  %55 = load i8, ptr %x3, align 1
  %56 = load ptr, ptr %arg3.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx29, align 8
  %58 = load i64, ptr %x16, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x24, i8 noundef zeroext %55, i64 noundef %57, i64 noundef %58)
  %59 = load i8, ptr %x3, align 1
  %60 = load ptr, ptr %arg3.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %60, i64 3
  %61 = load i64, ptr %arrayidx30, align 8
  %62 = load i64, ptr %x18, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x25, i8 noundef zeroext %59, i64 noundef %61, i64 noundef %62)
  %63 = load i8, ptr %x3, align 1
  %64 = load ptr, ptr %arg3.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %64, i64 4
  %65 = load i64, ptr %arrayidx31, align 8
  %66 = load i64, ptr %x20, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x26, i8 noundef zeroext %63, i64 noundef %65, i64 noundef %66)
  %67 = load i8, ptr %x3, align 1
  %68 = load ptr, ptr %arg4.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %68, i64 0
  %69 = load i64, ptr %arrayidx32, align 8
  %70 = load ptr, ptr %arg5.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %70, i64 0
  %71 = load i64, ptr %arrayidx33, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x27, i8 noundef zeroext %67, i64 noundef %69, i64 noundef %71)
  %72 = load i8, ptr %x3, align 1
  %73 = load ptr, ptr %arg4.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %73, i64 1
  %74 = load i64, ptr %arrayidx34, align 8
  %75 = load ptr, ptr %arg5.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %75, i64 1
  %76 = load i64, ptr %arrayidx35, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x28, i8 noundef zeroext %72, i64 noundef %74, i64 noundef %76)
  %77 = load i8, ptr %x3, align 1
  %78 = load ptr, ptr %arg4.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %78, i64 2
  %79 = load i64, ptr %arrayidx36, align 8
  %80 = load ptr, ptr %arg5.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %80, i64 2
  %81 = load i64, ptr %arrayidx37, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x29, i8 noundef zeroext %77, i64 noundef %79, i64 noundef %81)
  %82 = load i8, ptr %x3, align 1
  %83 = load ptr, ptr %arg4.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %83, i64 3
  %84 = load i64, ptr %arrayidx38, align 8
  %85 = load ptr, ptr %arg5.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %85, i64 3
  %86 = load i64, ptr %arrayidx39, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x30, i8 noundef zeroext %82, i64 noundef %84, i64 noundef %86)
  %87 = load i64, ptr %x27, align 8
  %88 = load i64, ptr %x27, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x31, ptr noundef %x32, i8 noundef zeroext 0, i64 noundef %87, i64 noundef %88)
  %89 = load i8, ptr %x32, align 1
  %90 = load i64, ptr %x28, align 8
  %91 = load i64, ptr %x28, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x33, ptr noundef %x34, i8 noundef zeroext %89, i64 noundef %90, i64 noundef %91)
  %92 = load i8, ptr %x34, align 1
  %93 = load i64, ptr %x29, align 8
  %94 = load i64, ptr %x29, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x35, ptr noundef %x36, i8 noundef zeroext %92, i64 noundef %93, i64 noundef %94)
  %95 = load i8, ptr %x36, align 1
  %96 = load i64, ptr %x30, align 8
  %97 = load i64, ptr %x30, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x37, ptr noundef %x38, i8 noundef zeroext %95, i64 noundef %96, i64 noundef %97)
  %98 = load i64, ptr %x31, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x39, ptr noundef %x40, i8 noundef zeroext 0, i64 noundef %98, i64 noundef 6346243789798364141)
  %99 = load i8, ptr %x40, align 1
  %100 = load i64, ptr %x33, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x41, ptr noundef %x42, i8 noundef zeroext %99, i64 noundef %100, i64 noundef 1503914060200516822)
  %101 = load i8, ptr %x42, align 1
  %102 = load i64, ptr %x35, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x43, ptr noundef %x44, i8 noundef zeroext %101, i64 noundef %102, i64 noundef 0)
  %103 = load i8, ptr %x44, align 1
  %104 = load i64, ptr %x37, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x45, ptr noundef %x46, i8 noundef zeroext %103, i64 noundef %104, i64 noundef 1152921504606846976)
  %105 = load i8, ptr %x46, align 1
  %106 = load i8, ptr %x38, align 1
  %conv40 = zext i8 %106 to i64
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x47, ptr noundef %x48, i8 noundef zeroext %105, i64 noundef %conv40, i64 noundef 0)
  %107 = load ptr, ptr %arg4.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %107, i64 3
  %108 = load i64, ptr %arrayidx41, align 8
  store i64 %108, ptr %x49, align 8
  %109 = load ptr, ptr %arg4.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %109, i64 2
  %110 = load i64, ptr %arrayidx42, align 8
  store i64 %110, ptr %x50, align 8
  %111 = load ptr, ptr %arg4.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %111, i64 1
  %112 = load i64, ptr %arrayidx43, align 8
  store i64 %112, ptr %x51, align 8
  %113 = load ptr, ptr %arg4.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %113, i64 0
  %114 = load i64, ptr %arrayidx44, align 8
  store i64 %114, ptr %x52, align 8
  %115 = load i64, ptr %x52, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x53, ptr noundef %x54, i8 noundef zeroext 0, i64 noundef 0, i64 noundef %115)
  %116 = load i8, ptr %x54, align 1
  %117 = load i64, ptr %x51, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x55, ptr noundef %x56, i8 noundef zeroext %116, i64 noundef 0, i64 noundef %117)
  %118 = load i8, ptr %x56, align 1
  %119 = load i64, ptr %x50, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x57, ptr noundef %x58, i8 noundef zeroext %118, i64 noundef 0, i64 noundef %119)
  %120 = load i8, ptr %x58, align 1
  %121 = load i64, ptr %x49, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x59, ptr noundef %x60, i8 noundef zeroext %120, i64 noundef 0, i64 noundef %121)
  %122 = load i8, ptr %x60, align 1
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x61, i8 noundef zeroext %122, i64 noundef 0, i64 noundef -1)
  %123 = load i64, ptr %x53, align 8
  %124 = load i64, ptr %x61, align 8
  %and45 = and i64 %124, 6346243789798364141
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x62, ptr noundef %x63, i8 noundef zeroext 0, i64 noundef %123, i64 noundef %and45)
  %125 = load i8, ptr %x63, align 1
  %126 = load i64, ptr %x55, align 8
  %127 = load i64, ptr %x61, align 8
  %and46 = and i64 %127, 1503914060200516822
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x64, ptr noundef %x65, i8 noundef zeroext %125, i64 noundef %126, i64 noundef %and46)
  %128 = load i8, ptr %x65, align 1
  %129 = load i64, ptr %x57, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x66, ptr noundef %x67, i8 noundef zeroext %128, i64 noundef %129, i64 noundef 0)
  %130 = load i8, ptr %x67, align 1
  %131 = load i64, ptr %x59, align 8
  %132 = load i64, ptr %x61, align 8
  %and47 = and i64 %132, 1152921504606846976
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x68, ptr noundef %x69, i8 noundef zeroext %130, i64 noundef %131, i64 noundef %and47)
  %133 = load i8, ptr %x3, align 1
  %134 = load ptr, ptr %arg5.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %134, i64 0
  %135 = load i64, ptr %arrayidx48, align 8
  %136 = load i64, ptr %x62, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x70, i8 noundef zeroext %133, i64 noundef %135, i64 noundef %136)
  %137 = load i8, ptr %x3, align 1
  %138 = load ptr, ptr %arg5.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %138, i64 1
  %139 = load i64, ptr %arrayidx49, align 8
  %140 = load i64, ptr %x64, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x71, i8 noundef zeroext %137, i64 noundef %139, i64 noundef %140)
  %141 = load i8, ptr %x3, align 1
  %142 = load ptr, ptr %arg5.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %142, i64 2
  %143 = load i64, ptr %arrayidx50, align 8
  %144 = load i64, ptr %x66, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x72, i8 noundef zeroext %141, i64 noundef %143, i64 noundef %144)
  %145 = load i8, ptr %x3, align 1
  %146 = load ptr, ptr %arg5.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %146, i64 3
  %147 = load i64, ptr %arrayidx51, align 8
  %148 = load i64, ptr %x68, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x73, i8 noundef zeroext %145, i64 noundef %147, i64 noundef %148)
  %149 = load i64, ptr %x22, align 8
  %and52 = and i64 %149, 1
  %conv53 = trunc i64 %and52 to i8
  store i8 %conv53, ptr %x74, align 1
  %150 = load i8, ptr %x74, align 1
  %151 = load i64, ptr %x7, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x75, i8 noundef zeroext %150, i64 noundef 0, i64 noundef %151)
  %152 = load i8, ptr %x74, align 1
  %153 = load i64, ptr %x8, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x76, i8 noundef zeroext %152, i64 noundef 0, i64 noundef %153)
  %154 = load i8, ptr %x74, align 1
  %155 = load i64, ptr %x9, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x77, i8 noundef zeroext %154, i64 noundef 0, i64 noundef %155)
  %156 = load i8, ptr %x74, align 1
  %157 = load i64, ptr %x10, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x78, i8 noundef zeroext %156, i64 noundef 0, i64 noundef %157)
  %158 = load i8, ptr %x74, align 1
  %159 = load i64, ptr %x11, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x79, i8 noundef zeroext %158, i64 noundef 0, i64 noundef %159)
  %160 = load i64, ptr %x22, align 8
  %161 = load i64, ptr %x75, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x80, ptr noundef %x81, i8 noundef zeroext 0, i64 noundef %160, i64 noundef %161)
  %162 = load i8, ptr %x81, align 1
  %163 = load i64, ptr %x23, align 8
  %164 = load i64, ptr %x76, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x82, ptr noundef %x83, i8 noundef zeroext %162, i64 noundef %163, i64 noundef %164)
  %165 = load i8, ptr %x83, align 1
  %166 = load i64, ptr %x24, align 8
  %167 = load i64, ptr %x77, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x84, ptr noundef %x85, i8 noundef zeroext %165, i64 noundef %166, i64 noundef %167)
  %168 = load i8, ptr %x85, align 1
  %169 = load i64, ptr %x25, align 8
  %170 = load i64, ptr %x78, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x86, ptr noundef %x87, i8 noundef zeroext %168, i64 noundef %169, i64 noundef %170)
  %171 = load i8, ptr %x87, align 1
  %172 = load i64, ptr %x26, align 8
  %173 = load i64, ptr %x79, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x88, ptr noundef %x89, i8 noundef zeroext %171, i64 noundef %172, i64 noundef %173)
  %174 = load i8, ptr %x74, align 1
  %175 = load i64, ptr %x27, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x90, i8 noundef zeroext %174, i64 noundef 0, i64 noundef %175)
  %176 = load i8, ptr %x74, align 1
  %177 = load i64, ptr %x28, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x91, i8 noundef zeroext %176, i64 noundef 0, i64 noundef %177)
  %178 = load i8, ptr %x74, align 1
  %179 = load i64, ptr %x29, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x92, i8 noundef zeroext %178, i64 noundef 0, i64 noundef %179)
  %180 = load i8, ptr %x74, align 1
  %181 = load i64, ptr %x30, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x93, i8 noundef zeroext %180, i64 noundef 0, i64 noundef %181)
  %182 = load i64, ptr %x70, align 8
  %183 = load i64, ptr %x90, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x94, ptr noundef %x95, i8 noundef zeroext 0, i64 noundef %182, i64 noundef %183)
  %184 = load i8, ptr %x95, align 1
  %185 = load i64, ptr %x71, align 8
  %186 = load i64, ptr %x91, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x96, ptr noundef %x97, i8 noundef zeroext %184, i64 noundef %185, i64 noundef %186)
  %187 = load i8, ptr %x97, align 1
  %188 = load i64, ptr %x72, align 8
  %189 = load i64, ptr %x92, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x98, ptr noundef %x99, i8 noundef zeroext %187, i64 noundef %188, i64 noundef %189)
  %190 = load i8, ptr %x99, align 1
  %191 = load i64, ptr %x73, align 8
  %192 = load i64, ptr %x93, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x100, ptr noundef %x101, i8 noundef zeroext %190, i64 noundef %191, i64 noundef %192)
  %193 = load i64, ptr %x94, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x102, ptr noundef %x103, i8 noundef zeroext 0, i64 noundef %193, i64 noundef 6346243789798364141)
  %194 = load i8, ptr %x103, align 1
  %195 = load i64, ptr %x96, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x104, ptr noundef %x105, i8 noundef zeroext %194, i64 noundef %195, i64 noundef 1503914060200516822)
  %196 = load i8, ptr %x105, align 1
  %197 = load i64, ptr %x98, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x106, ptr noundef %x107, i8 noundef zeroext %196, i64 noundef %197, i64 noundef 0)
  %198 = load i8, ptr %x107, align 1
  %199 = load i64, ptr %x100, align 8
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x108, ptr noundef %x109, i8 noundef zeroext %198, i64 noundef %199, i64 noundef 1152921504606846976)
  %200 = load i8, ptr %x109, align 1
  %201 = load i8, ptr %x101, align 1
  %conv54 = zext i8 %201 to i64
  call void @fiat_25519_scalar_subborrowx_u64(ptr noundef %x110, ptr noundef %x111, i8 noundef zeroext %200, i64 noundef %conv54, i64 noundef 0)
  %202 = load i64, ptr %x6, align 8
  call void @fiat_25519_scalar_addcarryx_u64(ptr noundef %x112, ptr noundef %x113, i8 noundef zeroext 0, i64 noundef %202, i64 noundef 1)
  %203 = load i64, ptr %x80, align 8
  %shr55 = lshr i64 %203, 1
  %204 = load i64, ptr %x82, align 8
  %shl = shl i64 %204, 63
  %and56 = and i64 %shl, -1
  %or = or i64 %shr55, %and56
  store i64 %or, ptr %x114, align 8
  %205 = load i64, ptr %x82, align 8
  %shr57 = lshr i64 %205, 1
  %206 = load i64, ptr %x84, align 8
  %shl58 = shl i64 %206, 63
  %and59 = and i64 %shl58, -1
  %or60 = or i64 %shr57, %and59
  store i64 %or60, ptr %x115, align 8
  %207 = load i64, ptr %x84, align 8
  %shr61 = lshr i64 %207, 1
  %208 = load i64, ptr %x86, align 8
  %shl62 = shl i64 %208, 63
  %and63 = and i64 %shl62, -1
  %or64 = or i64 %shr61, %and63
  store i64 %or64, ptr %x116, align 8
  %209 = load i64, ptr %x86, align 8
  %shr65 = lshr i64 %209, 1
  %210 = load i64, ptr %x88, align 8
  %shl66 = shl i64 %210, 63
  %and67 = and i64 %shl66, -1
  %or68 = or i64 %shr65, %and67
  store i64 %or68, ptr %x117, align 8
  %211 = load i64, ptr %x88, align 8
  %and69 = and i64 %211, -9223372036854775808
  %212 = load i64, ptr %x88, align 8
  %shr70 = lshr i64 %212, 1
  %or71 = or i64 %and69, %shr70
  store i64 %or71, ptr %x118, align 8
  %213 = load i8, ptr %x48, align 1
  %214 = load i64, ptr %x39, align 8
  %215 = load i64, ptr %x31, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x119, i8 noundef zeroext %213, i64 noundef %214, i64 noundef %215)
  %216 = load i8, ptr %x48, align 1
  %217 = load i64, ptr %x41, align 8
  %218 = load i64, ptr %x33, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x120, i8 noundef zeroext %216, i64 noundef %217, i64 noundef %218)
  %219 = load i8, ptr %x48, align 1
  %220 = load i64, ptr %x43, align 8
  %221 = load i64, ptr %x35, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x121, i8 noundef zeroext %219, i64 noundef %220, i64 noundef %221)
  %222 = load i8, ptr %x48, align 1
  %223 = load i64, ptr %x45, align 8
  %224 = load i64, ptr %x37, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x122, i8 noundef zeroext %222, i64 noundef %223, i64 noundef %224)
  %225 = load i8, ptr %x111, align 1
  %226 = load i64, ptr %x102, align 8
  %227 = load i64, ptr %x94, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x123, i8 noundef zeroext %225, i64 noundef %226, i64 noundef %227)
  %228 = load i8, ptr %x111, align 1
  %229 = load i64, ptr %x104, align 8
  %230 = load i64, ptr %x96, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x124, i8 noundef zeroext %228, i64 noundef %229, i64 noundef %230)
  %231 = load i8, ptr %x111, align 1
  %232 = load i64, ptr %x106, align 8
  %233 = load i64, ptr %x98, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x125, i8 noundef zeroext %231, i64 noundef %232, i64 noundef %233)
  %234 = load i8, ptr %x111, align 1
  %235 = load i64, ptr %x108, align 8
  %236 = load i64, ptr %x100, align 8
  call void @fiat_25519_scalar_cmovznz_u64(ptr noundef %x126, i8 noundef zeroext %234, i64 noundef %235, i64 noundef %236)
  %237 = load i64, ptr %x112, align 8
  %238 = load ptr, ptr %out1.addr, align 8
  store i64 %237, ptr %238, align 8
  %239 = load i64, ptr %x7, align 8
  %240 = load ptr, ptr %out2.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %240, i64 0
  store i64 %239, ptr %arrayidx72, align 8
  %241 = load i64, ptr %x8, align 8
  %242 = load ptr, ptr %out2.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %242, i64 1
  store i64 %241, ptr %arrayidx73, align 8
  %243 = load i64, ptr %x9, align 8
  %244 = load ptr, ptr %out2.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %244, i64 2
  store i64 %243, ptr %arrayidx74, align 8
  %245 = load i64, ptr %x10, align 8
  %246 = load ptr, ptr %out2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %246, i64 3
  store i64 %245, ptr %arrayidx75, align 8
  %247 = load i64, ptr %x11, align 8
  %248 = load ptr, ptr %out2.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %248, i64 4
  store i64 %247, ptr %arrayidx76, align 8
  %249 = load i64, ptr %x114, align 8
  %250 = load ptr, ptr %out3.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %250, i64 0
  store i64 %249, ptr %arrayidx77, align 8
  %251 = load i64, ptr %x115, align 8
  %252 = load ptr, ptr %out3.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %252, i64 1
  store i64 %251, ptr %arrayidx78, align 8
  %253 = load i64, ptr %x116, align 8
  %254 = load ptr, ptr %out3.addr, align 8
  %arrayidx79 = getelementptr inbounds i64, ptr %254, i64 2
  store i64 %253, ptr %arrayidx79, align 8
  %255 = load i64, ptr %x117, align 8
  %256 = load ptr, ptr %out3.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %256, i64 3
  store i64 %255, ptr %arrayidx80, align 8
  %257 = load i64, ptr %x118, align 8
  %258 = load ptr, ptr %out3.addr, align 8
  %arrayidx81 = getelementptr inbounds i64, ptr %258, i64 4
  store i64 %257, ptr %arrayidx81, align 8
  %259 = load i64, ptr %x119, align 8
  %260 = load ptr, ptr %out4.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %260, i64 0
  store i64 %259, ptr %arrayidx82, align 8
  %261 = load i64, ptr %x120, align 8
  %262 = load ptr, ptr %out4.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %262, i64 1
  store i64 %261, ptr %arrayidx83, align 8
  %263 = load i64, ptr %x121, align 8
  %264 = load ptr, ptr %out4.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %264, i64 2
  store i64 %263, ptr %arrayidx84, align 8
  %265 = load i64, ptr %x122, align 8
  %266 = load ptr, ptr %out4.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %266, i64 3
  store i64 %265, ptr %arrayidx85, align 8
  %267 = load i64, ptr %x123, align 8
  %268 = load ptr, ptr %out5.addr, align 8
  %arrayidx86 = getelementptr inbounds i64, ptr %268, i64 0
  store i64 %267, ptr %arrayidx86, align 8
  %269 = load i64, ptr %x124, align 8
  %270 = load ptr, ptr %out5.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %270, i64 1
  store i64 %269, ptr %arrayidx87, align 8
  %271 = load i64, ptr %x125, align 8
  %272 = load ptr, ptr %out5.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %272, i64 2
  store i64 %271, ptr %arrayidx88, align 8
  %273 = load i64, ptr %x126, align 8
  %274 = load ptr, ptr %out5.addr, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %274, i64 3
  store i64 %273, ptr %arrayidx89, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_scalar_divstep_precomp(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  store i64 -2951273633929507950, ptr %arrayidx, align 8
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 6877499626169610585, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 -1770616788559298790, ptr %arrayidx2, align 8
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 115454454455854335, ptr %arrayidx3, align 8
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
!6 = !{i64 3415}
