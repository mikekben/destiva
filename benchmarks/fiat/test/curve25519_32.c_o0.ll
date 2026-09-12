; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiat_25519_value_barrier_u32(i32 noundef %a) #0 {
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
define dso_local void @fiat_25519_addcarryx_u26(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i32, ptr %arg2.addr, align 4
  %add = add i32 %conv, %1
  %2 = load i32, ptr %arg3.addr, align 4
  %add1 = add i32 %add, %2
  store i32 %add1, ptr %x1, align 4
  %3 = load i32, ptr %x1, align 4
  %and = and i32 %3, 67108863
  store i32 %and, ptr %x2, align 4
  %4 = load i32, ptr %x1, align 4
  %shr = lshr i32 %4, 26
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, ptr %x3, align 1
  %5 = load i32, ptr %x2, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i8, ptr %x3, align 1
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %7, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_subborrowx_u26(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i32, ptr %arg2.addr, align 4
  %1 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %1 to i32
  %sub = sub i32 %0, %conv
  %2 = load i32, ptr %arg3.addr, align 4
  %sub1 = sub nsw i32 %sub, %2
  store i32 %sub1, ptr %x1, align 4
  %3 = load i32, ptr %x1, align 4
  %shr = ashr i32 %3, 26
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i32, ptr %x1, align 4
  %and = and i32 %4, 67108863
  store i32 %and, ptr %x3, align 4
  %5 = load i32, ptr %x3, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i8, ptr %x2, align 1
  %conv3 = sext i8 %7 to i32
  %sub4 = sub nsw i32 0, %conv3
  %conv5 = trunc i32 %sub4 to i8
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %conv5, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_addcarryx_u25(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i32, ptr %arg2.addr, align 4
  %add = add i32 %conv, %1
  %2 = load i32, ptr %arg3.addr, align 4
  %add1 = add i32 %add, %2
  store i32 %add1, ptr %x1, align 4
  %3 = load i32, ptr %x1, align 4
  %and = and i32 %3, 33554431
  store i32 %and, ptr %x2, align 4
  %4 = load i32, ptr %x1, align 4
  %shr = lshr i32 %4, 25
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, ptr %x3, align 1
  %5 = load i32, ptr %x2, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i8, ptr %x3, align 1
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %7, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_subborrowx_u25(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i8, align 1
  %x3 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 %arg3, ptr %arg3.addr, align 4
  %0 = load i32, ptr %arg2.addr, align 4
  %1 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %1 to i32
  %sub = sub i32 %0, %conv
  %2 = load i32, ptr %arg3.addr, align 4
  %sub1 = sub nsw i32 %sub, %2
  store i32 %sub1, ptr %x1, align 4
  %3 = load i32, ptr %x1, align 4
  %shr = ashr i32 %3, 25
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i32, ptr %x1, align 4
  %and = and i32 %4, 33554431
  store i32 %and, ptr %x3, align 4
  %5 = load i32, ptr %x3, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load i8, ptr %x2, align 1
  %conv3 = sext i8 %7 to i32
  %sub4 = sub nsw i32 0, %conv3
  %conv5 = trunc i32 %sub4 to i8
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %conv5, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_cmovznz_u32(ptr noundef %out1, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
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
  %call = call i32 @fiat_25519_value_barrier_u32(i32 noundef %2)
  %3 = load i32, ptr %arg3.addr, align 4
  %and5 = and i32 %call, %3
  %4 = load i32, ptr %x2, align 4
  %not = xor i32 %4, -1
  %call6 = call i32 @fiat_25519_value_barrier_u32(i32 noundef %not)
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
define dso_local void @fiat_25519_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
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
  %x103 = alloca i32, align 4
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
  %x115 = alloca i32, align 4
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i32, align 4
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i32, align 4
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i32, align 4
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x127 = alloca i32, align 4
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i32, align 4
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i32, align 4
  %x134 = alloca i64, align 8
  %x135 = alloca i64, align 8
  %x136 = alloca i32, align 4
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i32, align 4
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i32, align 4
  %x143 = alloca i32, align 4
  %x144 = alloca i32, align 4
  %x145 = alloca i8, align 1
  %x146 = alloca i32, align 4
  %x147 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 9
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 9
  %3 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %3, 38
  %conv2 = zext i32 %mul to i64
  %mul3 = mul i64 %conv, %conv2
  store i64 %mul3, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 9
  %5 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %5 to i64
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 8
  %7 = load i32, ptr %arrayidx6, align 4
  %mul7 = mul i32 %7, 19
  %conv8 = zext i32 %mul7 to i64
  %mul9 = mul i64 %conv5, %conv8
  store i64 %mul9, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %8, i64 9
  %9 = load i32, ptr %arrayidx10, align 4
  %conv11 = zext i32 %9 to i64
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 7
  %11 = load i32, ptr %arrayidx12, align 4
  %mul13 = mul i32 %11, 38
  %conv14 = zext i32 %mul13 to i64
  %mul15 = mul i64 %conv11, %conv14
  store i64 %mul15, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 9
  %13 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %13 to i64
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %14, i64 6
  %15 = load i32, ptr %arrayidx18, align 4
  %mul19 = mul i32 %15, 19
  %conv20 = zext i32 %mul19 to i64
  %mul21 = mul i64 %conv17, %conv20
  store i64 %mul21, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %16, i64 9
  %17 = load i32, ptr %arrayidx22, align 4
  %conv23 = zext i32 %17 to i64
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %18, i64 5
  %19 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul i32 %19, 38
  %conv26 = zext i32 %mul25 to i64
  %mul27 = mul i64 %conv23, %conv26
  store i64 %mul27, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %20, i64 9
  %21 = load i32, ptr %arrayidx28, align 4
  %conv29 = zext i32 %21 to i64
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %22, i64 4
  %23 = load i32, ptr %arrayidx30, align 4
  %mul31 = mul i32 %23, 19
  %conv32 = zext i32 %mul31 to i64
  %mul33 = mul i64 %conv29, %conv32
  store i64 %mul33, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %24, i64 9
  %25 = load i32, ptr %arrayidx34, align 4
  %conv35 = zext i32 %25 to i64
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx36, align 4
  %mul37 = mul i32 %27, 38
  %conv38 = zext i32 %mul37 to i64
  %mul39 = mul i64 %conv35, %conv38
  store i64 %mul39, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %28, i64 9
  %29 = load i32, ptr %arrayidx40, align 4
  %conv41 = zext i32 %29 to i64
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %30, i64 2
  %31 = load i32, ptr %arrayidx42, align 4
  %mul43 = mul i32 %31, 19
  %conv44 = zext i32 %mul43 to i64
  %mul45 = mul i64 %conv41, %conv44
  store i64 %mul45, ptr %x8, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %32, i64 9
  %33 = load i32, ptr %arrayidx46, align 4
  %conv47 = zext i32 %33 to i64
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %34, i64 1
  %35 = load i32, ptr %arrayidx48, align 4
  %mul49 = mul i32 %35, 38
  %conv50 = zext i32 %mul49 to i64
  %mul51 = mul i64 %conv47, %conv50
  store i64 %mul51, ptr %x9, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %36, i64 8
  %37 = load i32, ptr %arrayidx52, align 4
  %conv53 = zext i32 %37 to i64
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %38, i64 9
  %39 = load i32, ptr %arrayidx54, align 4
  %mul55 = mul i32 %39, 19
  %conv56 = zext i32 %mul55 to i64
  %mul57 = mul i64 %conv53, %conv56
  store i64 %mul57, ptr %x10, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %40, i64 8
  %41 = load i32, ptr %arrayidx58, align 4
  %conv59 = zext i32 %41 to i64
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %42, i64 8
  %43 = load i32, ptr %arrayidx60, align 4
  %mul61 = mul i32 %43, 19
  %conv62 = zext i32 %mul61 to i64
  %mul63 = mul i64 %conv59, %conv62
  store i64 %mul63, ptr %x11, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %44, i64 8
  %45 = load i32, ptr %arrayidx64, align 4
  %conv65 = zext i32 %45 to i64
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %46, i64 7
  %47 = load i32, ptr %arrayidx66, align 4
  %mul67 = mul i32 %47, 19
  %conv68 = zext i32 %mul67 to i64
  %mul69 = mul i64 %conv65, %conv68
  store i64 %mul69, ptr %x12, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %48, i64 8
  %49 = load i32, ptr %arrayidx70, align 4
  %conv71 = zext i32 %49 to i64
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %50, i64 6
  %51 = load i32, ptr %arrayidx72, align 4
  %mul73 = mul i32 %51, 19
  %conv74 = zext i32 %mul73 to i64
  %mul75 = mul i64 %conv71, %conv74
  store i64 %mul75, ptr %x13, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, ptr %52, i64 8
  %53 = load i32, ptr %arrayidx76, align 4
  %conv77 = zext i32 %53 to i64
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %54, i64 5
  %55 = load i32, ptr %arrayidx78, align 4
  %mul79 = mul i32 %55, 19
  %conv80 = zext i32 %mul79 to i64
  %mul81 = mul i64 %conv77, %conv80
  store i64 %mul81, ptr %x14, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %56, i64 8
  %57 = load i32, ptr %arrayidx82, align 4
  %conv83 = zext i32 %57 to i64
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, ptr %58, i64 4
  %59 = load i32, ptr %arrayidx84, align 4
  %mul85 = mul i32 %59, 19
  %conv86 = zext i32 %mul85 to i64
  %mul87 = mul i64 %conv83, %conv86
  store i64 %mul87, ptr %x15, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %60, i64 8
  %61 = load i32, ptr %arrayidx88, align 4
  %conv89 = zext i32 %61 to i64
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %62, i64 3
  %63 = load i32, ptr %arrayidx90, align 4
  %mul91 = mul i32 %63, 19
  %conv92 = zext i32 %mul91 to i64
  %mul93 = mul i64 %conv89, %conv92
  store i64 %mul93, ptr %x16, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %64, i64 8
  %65 = load i32, ptr %arrayidx94, align 4
  %conv95 = zext i32 %65 to i64
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %66, i64 2
  %67 = load i32, ptr %arrayidx96, align 4
  %mul97 = mul i32 %67, 19
  %conv98 = zext i32 %mul97 to i64
  %mul99 = mul i64 %conv95, %conv98
  store i64 %mul99, ptr %x17, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %68, i64 7
  %69 = load i32, ptr %arrayidx100, align 4
  %conv101 = zext i32 %69 to i64
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, ptr %70, i64 9
  %71 = load i32, ptr %arrayidx102, align 4
  %mul103 = mul i32 %71, 38
  %conv104 = zext i32 %mul103 to i64
  %mul105 = mul i64 %conv101, %conv104
  store i64 %mul105, ptr %x18, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, ptr %72, i64 7
  %73 = load i32, ptr %arrayidx106, align 4
  %conv107 = zext i32 %73 to i64
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %74, i64 8
  %75 = load i32, ptr %arrayidx108, align 4
  %mul109 = mul i32 %75, 19
  %conv110 = zext i32 %mul109 to i64
  %mul111 = mul i64 %conv107, %conv110
  store i64 %mul111, ptr %x19, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %76, i64 7
  %77 = load i32, ptr %arrayidx112, align 4
  %conv113 = zext i32 %77 to i64
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %78, i64 7
  %79 = load i32, ptr %arrayidx114, align 4
  %mul115 = mul i32 %79, 38
  %conv116 = zext i32 %mul115 to i64
  %mul117 = mul i64 %conv113, %conv116
  store i64 %mul117, ptr %x20, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %80, i64 7
  %81 = load i32, ptr %arrayidx118, align 4
  %conv119 = zext i32 %81 to i64
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %82, i64 6
  %83 = load i32, ptr %arrayidx120, align 4
  %mul121 = mul i32 %83, 19
  %conv122 = zext i32 %mul121 to i64
  %mul123 = mul i64 %conv119, %conv122
  store i64 %mul123, ptr %x21, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %84, i64 7
  %85 = load i32, ptr %arrayidx124, align 4
  %conv125 = zext i32 %85 to i64
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %86, i64 5
  %87 = load i32, ptr %arrayidx126, align 4
  %mul127 = mul i32 %87, 38
  %conv128 = zext i32 %mul127 to i64
  %mul129 = mul i64 %conv125, %conv128
  store i64 %mul129, ptr %x22, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %88, i64 7
  %89 = load i32, ptr %arrayidx130, align 4
  %conv131 = zext i32 %89 to i64
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx132 = getelementptr inbounds i32, ptr %90, i64 4
  %91 = load i32, ptr %arrayidx132, align 4
  %mul133 = mul i32 %91, 19
  %conv134 = zext i32 %mul133 to i64
  %mul135 = mul i64 %conv131, %conv134
  store i64 %mul135, ptr %x23, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, ptr %92, i64 7
  %93 = load i32, ptr %arrayidx136, align 4
  %conv137 = zext i32 %93 to i64
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, ptr %94, i64 3
  %95 = load i32, ptr %arrayidx138, align 4
  %mul139 = mul i32 %95, 38
  %conv140 = zext i32 %mul139 to i64
  %mul141 = mul i64 %conv137, %conv140
  store i64 %mul141, ptr %x24, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, ptr %96, i64 6
  %97 = load i32, ptr %arrayidx142, align 4
  %conv143 = zext i32 %97 to i64
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, ptr %98, i64 9
  %99 = load i32, ptr %arrayidx144, align 4
  %mul145 = mul i32 %99, 19
  %conv146 = zext i32 %mul145 to i64
  %mul147 = mul i64 %conv143, %conv146
  store i64 %mul147, ptr %x25, align 8
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, ptr %100, i64 6
  %101 = load i32, ptr %arrayidx148, align 4
  %conv149 = zext i32 %101 to i64
  %102 = load ptr, ptr %arg2.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, ptr %102, i64 8
  %103 = load i32, ptr %arrayidx150, align 4
  %mul151 = mul i32 %103, 19
  %conv152 = zext i32 %mul151 to i64
  %mul153 = mul i64 %conv149, %conv152
  store i64 %mul153, ptr %x26, align 8
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %104, i64 6
  %105 = load i32, ptr %arrayidx154, align 4
  %conv155 = zext i32 %105 to i64
  %106 = load ptr, ptr %arg2.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, ptr %106, i64 7
  %107 = load i32, ptr %arrayidx156, align 4
  %mul157 = mul i32 %107, 19
  %conv158 = zext i32 %mul157 to i64
  %mul159 = mul i64 %conv155, %conv158
  store i64 %mul159, ptr %x27, align 8
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %108, i64 6
  %109 = load i32, ptr %arrayidx160, align 4
  %conv161 = zext i32 %109 to i64
  %110 = load ptr, ptr %arg2.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, ptr %110, i64 6
  %111 = load i32, ptr %arrayidx162, align 4
  %mul163 = mul i32 %111, 19
  %conv164 = zext i32 %mul163 to i64
  %mul165 = mul i64 %conv161, %conv164
  store i64 %mul165, ptr %x28, align 8
  %112 = load ptr, ptr %arg1.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, ptr %112, i64 6
  %113 = load i32, ptr %arrayidx166, align 4
  %conv167 = zext i32 %113 to i64
  %114 = load ptr, ptr %arg2.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %114, i64 5
  %115 = load i32, ptr %arrayidx168, align 4
  %mul169 = mul i32 %115, 19
  %conv170 = zext i32 %mul169 to i64
  %mul171 = mul i64 %conv167, %conv170
  store i64 %mul171, ptr %x29, align 8
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %116, i64 6
  %117 = load i32, ptr %arrayidx172, align 4
  %conv173 = zext i32 %117 to i64
  %118 = load ptr, ptr %arg2.addr, align 8
  %arrayidx174 = getelementptr inbounds i32, ptr %118, i64 4
  %119 = load i32, ptr %arrayidx174, align 4
  %mul175 = mul i32 %119, 19
  %conv176 = zext i32 %mul175 to i64
  %mul177 = mul i64 %conv173, %conv176
  store i64 %mul177, ptr %x30, align 8
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx178 = getelementptr inbounds i32, ptr %120, i64 5
  %121 = load i32, ptr %arrayidx178, align 4
  %conv179 = zext i32 %121 to i64
  %122 = load ptr, ptr %arg2.addr, align 8
  %arrayidx180 = getelementptr inbounds i32, ptr %122, i64 9
  %123 = load i32, ptr %arrayidx180, align 4
  %mul181 = mul i32 %123, 38
  %conv182 = zext i32 %mul181 to i64
  %mul183 = mul i64 %conv179, %conv182
  store i64 %mul183, ptr %x31, align 8
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %124, i64 5
  %125 = load i32, ptr %arrayidx184, align 4
  %conv185 = zext i32 %125 to i64
  %126 = load ptr, ptr %arg2.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %126, i64 8
  %127 = load i32, ptr %arrayidx186, align 4
  %mul187 = mul i32 %127, 19
  %conv188 = zext i32 %mul187 to i64
  %mul189 = mul i64 %conv185, %conv188
  store i64 %mul189, ptr %x32, align 8
  %128 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %128, i64 5
  %129 = load i32, ptr %arrayidx190, align 4
  %conv191 = zext i32 %129 to i64
  %130 = load ptr, ptr %arg2.addr, align 8
  %arrayidx192 = getelementptr inbounds i32, ptr %130, i64 7
  %131 = load i32, ptr %arrayidx192, align 4
  %mul193 = mul i32 %131, 38
  %conv194 = zext i32 %mul193 to i64
  %mul195 = mul i64 %conv191, %conv194
  store i64 %mul195, ptr %x33, align 8
  %132 = load ptr, ptr %arg1.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, ptr %132, i64 5
  %133 = load i32, ptr %arrayidx196, align 4
  %conv197 = zext i32 %133 to i64
  %134 = load ptr, ptr %arg2.addr, align 8
  %arrayidx198 = getelementptr inbounds i32, ptr %134, i64 6
  %135 = load i32, ptr %arrayidx198, align 4
  %mul199 = mul i32 %135, 19
  %conv200 = zext i32 %mul199 to i64
  %mul201 = mul i64 %conv197, %conv200
  store i64 %mul201, ptr %x34, align 8
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx202 = getelementptr inbounds i32, ptr %136, i64 5
  %137 = load i32, ptr %arrayidx202, align 4
  %conv203 = zext i32 %137 to i64
  %138 = load ptr, ptr %arg2.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %138, i64 5
  %139 = load i32, ptr %arrayidx204, align 4
  %mul205 = mul i32 %139, 38
  %conv206 = zext i32 %mul205 to i64
  %mul207 = mul i64 %conv203, %conv206
  store i64 %mul207, ptr %x35, align 8
  %140 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %140, i64 4
  %141 = load i32, ptr %arrayidx208, align 4
  %conv209 = zext i32 %141 to i64
  %142 = load ptr, ptr %arg2.addr, align 8
  %arrayidx210 = getelementptr inbounds i32, ptr %142, i64 9
  %143 = load i32, ptr %arrayidx210, align 4
  %mul211 = mul i32 %143, 19
  %conv212 = zext i32 %mul211 to i64
  %mul213 = mul i64 %conv209, %conv212
  store i64 %mul213, ptr %x36, align 8
  %144 = load ptr, ptr %arg1.addr, align 8
  %arrayidx214 = getelementptr inbounds i32, ptr %144, i64 4
  %145 = load i32, ptr %arrayidx214, align 4
  %conv215 = zext i32 %145 to i64
  %146 = load ptr, ptr %arg2.addr, align 8
  %arrayidx216 = getelementptr inbounds i32, ptr %146, i64 8
  %147 = load i32, ptr %arrayidx216, align 4
  %mul217 = mul i32 %147, 19
  %conv218 = zext i32 %mul217 to i64
  %mul219 = mul i64 %conv215, %conv218
  store i64 %mul219, ptr %x37, align 8
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %148, i64 4
  %149 = load i32, ptr %arrayidx220, align 4
  %conv221 = zext i32 %149 to i64
  %150 = load ptr, ptr %arg2.addr, align 8
  %arrayidx222 = getelementptr inbounds i32, ptr %150, i64 7
  %151 = load i32, ptr %arrayidx222, align 4
  %mul223 = mul i32 %151, 19
  %conv224 = zext i32 %mul223 to i64
  %mul225 = mul i64 %conv221, %conv224
  store i64 %mul225, ptr %x38, align 8
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx226 = getelementptr inbounds i32, ptr %152, i64 4
  %153 = load i32, ptr %arrayidx226, align 4
  %conv227 = zext i32 %153 to i64
  %154 = load ptr, ptr %arg2.addr, align 8
  %arrayidx228 = getelementptr inbounds i32, ptr %154, i64 6
  %155 = load i32, ptr %arrayidx228, align 4
  %mul229 = mul i32 %155, 19
  %conv230 = zext i32 %mul229 to i64
  %mul231 = mul i64 %conv227, %conv230
  store i64 %mul231, ptr %x39, align 8
  %156 = load ptr, ptr %arg1.addr, align 8
  %arrayidx232 = getelementptr inbounds i32, ptr %156, i64 3
  %157 = load i32, ptr %arrayidx232, align 4
  %conv233 = zext i32 %157 to i64
  %158 = load ptr, ptr %arg2.addr, align 8
  %arrayidx234 = getelementptr inbounds i32, ptr %158, i64 9
  %159 = load i32, ptr %arrayidx234, align 4
  %mul235 = mul i32 %159, 38
  %conv236 = zext i32 %mul235 to i64
  %mul237 = mul i64 %conv233, %conv236
  store i64 %mul237, ptr %x40, align 8
  %160 = load ptr, ptr %arg1.addr, align 8
  %arrayidx238 = getelementptr inbounds i32, ptr %160, i64 3
  %161 = load i32, ptr %arrayidx238, align 4
  %conv239 = zext i32 %161 to i64
  %162 = load ptr, ptr %arg2.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, ptr %162, i64 8
  %163 = load i32, ptr %arrayidx240, align 4
  %mul241 = mul i32 %163, 19
  %conv242 = zext i32 %mul241 to i64
  %mul243 = mul i64 %conv239, %conv242
  store i64 %mul243, ptr %x41, align 8
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, ptr %164, i64 3
  %165 = load i32, ptr %arrayidx244, align 4
  %conv245 = zext i32 %165 to i64
  %166 = load ptr, ptr %arg2.addr, align 8
  %arrayidx246 = getelementptr inbounds i32, ptr %166, i64 7
  %167 = load i32, ptr %arrayidx246, align 4
  %mul247 = mul i32 %167, 38
  %conv248 = zext i32 %mul247 to i64
  %mul249 = mul i64 %conv245, %conv248
  store i64 %mul249, ptr %x42, align 8
  %168 = load ptr, ptr %arg1.addr, align 8
  %arrayidx250 = getelementptr inbounds i32, ptr %168, i64 2
  %169 = load i32, ptr %arrayidx250, align 4
  %conv251 = zext i32 %169 to i64
  %170 = load ptr, ptr %arg2.addr, align 8
  %arrayidx252 = getelementptr inbounds i32, ptr %170, i64 9
  %171 = load i32, ptr %arrayidx252, align 4
  %mul253 = mul i32 %171, 19
  %conv254 = zext i32 %mul253 to i64
  %mul255 = mul i64 %conv251, %conv254
  store i64 %mul255, ptr %x43, align 8
  %172 = load ptr, ptr %arg1.addr, align 8
  %arrayidx256 = getelementptr inbounds i32, ptr %172, i64 2
  %173 = load i32, ptr %arrayidx256, align 4
  %conv257 = zext i32 %173 to i64
  %174 = load ptr, ptr %arg2.addr, align 8
  %arrayidx258 = getelementptr inbounds i32, ptr %174, i64 8
  %175 = load i32, ptr %arrayidx258, align 4
  %mul259 = mul i32 %175, 19
  %conv260 = zext i32 %mul259 to i64
  %mul261 = mul i64 %conv257, %conv260
  store i64 %mul261, ptr %x44, align 8
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx262 = getelementptr inbounds i32, ptr %176, i64 1
  %177 = load i32, ptr %arrayidx262, align 4
  %conv263 = zext i32 %177 to i64
  %178 = load ptr, ptr %arg2.addr, align 8
  %arrayidx264 = getelementptr inbounds i32, ptr %178, i64 9
  %179 = load i32, ptr %arrayidx264, align 4
  %mul265 = mul i32 %179, 38
  %conv266 = zext i32 %mul265 to i64
  %mul267 = mul i64 %conv263, %conv266
  store i64 %mul267, ptr %x45, align 8
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx268 = getelementptr inbounds i32, ptr %180, i64 9
  %181 = load i32, ptr %arrayidx268, align 4
  %conv269 = zext i32 %181 to i64
  %182 = load ptr, ptr %arg2.addr, align 8
  %arrayidx270 = getelementptr inbounds i32, ptr %182, i64 0
  %183 = load i32, ptr %arrayidx270, align 4
  %conv271 = zext i32 %183 to i64
  %mul272 = mul i64 %conv269, %conv271
  store i64 %mul272, ptr %x46, align 8
  %184 = load ptr, ptr %arg1.addr, align 8
  %arrayidx273 = getelementptr inbounds i32, ptr %184, i64 8
  %185 = load i32, ptr %arrayidx273, align 4
  %conv274 = zext i32 %185 to i64
  %186 = load ptr, ptr %arg2.addr, align 8
  %arrayidx275 = getelementptr inbounds i32, ptr %186, i64 1
  %187 = load i32, ptr %arrayidx275, align 4
  %conv276 = zext i32 %187 to i64
  %mul277 = mul i64 %conv274, %conv276
  store i64 %mul277, ptr %x47, align 8
  %188 = load ptr, ptr %arg1.addr, align 8
  %arrayidx278 = getelementptr inbounds i32, ptr %188, i64 8
  %189 = load i32, ptr %arrayidx278, align 4
  %conv279 = zext i32 %189 to i64
  %190 = load ptr, ptr %arg2.addr, align 8
  %arrayidx280 = getelementptr inbounds i32, ptr %190, i64 0
  %191 = load i32, ptr %arrayidx280, align 4
  %conv281 = zext i32 %191 to i64
  %mul282 = mul i64 %conv279, %conv281
  store i64 %mul282, ptr %x48, align 8
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx283 = getelementptr inbounds i32, ptr %192, i64 7
  %193 = load i32, ptr %arrayidx283, align 4
  %conv284 = zext i32 %193 to i64
  %194 = load ptr, ptr %arg2.addr, align 8
  %arrayidx285 = getelementptr inbounds i32, ptr %194, i64 2
  %195 = load i32, ptr %arrayidx285, align 4
  %conv286 = zext i32 %195 to i64
  %mul287 = mul i64 %conv284, %conv286
  store i64 %mul287, ptr %x49, align 8
  %196 = load ptr, ptr %arg1.addr, align 8
  %arrayidx288 = getelementptr inbounds i32, ptr %196, i64 7
  %197 = load i32, ptr %arrayidx288, align 4
  %conv289 = zext i32 %197 to i64
  %198 = load ptr, ptr %arg2.addr, align 8
  %arrayidx290 = getelementptr inbounds i32, ptr %198, i64 1
  %199 = load i32, ptr %arrayidx290, align 4
  %mul291 = mul i32 %199, 2
  %conv292 = zext i32 %mul291 to i64
  %mul293 = mul i64 %conv289, %conv292
  store i64 %mul293, ptr %x50, align 8
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx294 = getelementptr inbounds i32, ptr %200, i64 7
  %201 = load i32, ptr %arrayidx294, align 4
  %conv295 = zext i32 %201 to i64
  %202 = load ptr, ptr %arg2.addr, align 8
  %arrayidx296 = getelementptr inbounds i32, ptr %202, i64 0
  %203 = load i32, ptr %arrayidx296, align 4
  %conv297 = zext i32 %203 to i64
  %mul298 = mul i64 %conv295, %conv297
  store i64 %mul298, ptr %x51, align 8
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx299 = getelementptr inbounds i32, ptr %204, i64 6
  %205 = load i32, ptr %arrayidx299, align 4
  %conv300 = zext i32 %205 to i64
  %206 = load ptr, ptr %arg2.addr, align 8
  %arrayidx301 = getelementptr inbounds i32, ptr %206, i64 3
  %207 = load i32, ptr %arrayidx301, align 4
  %conv302 = zext i32 %207 to i64
  %mul303 = mul i64 %conv300, %conv302
  store i64 %mul303, ptr %x52, align 8
  %208 = load ptr, ptr %arg1.addr, align 8
  %arrayidx304 = getelementptr inbounds i32, ptr %208, i64 6
  %209 = load i32, ptr %arrayidx304, align 4
  %conv305 = zext i32 %209 to i64
  %210 = load ptr, ptr %arg2.addr, align 8
  %arrayidx306 = getelementptr inbounds i32, ptr %210, i64 2
  %211 = load i32, ptr %arrayidx306, align 4
  %conv307 = zext i32 %211 to i64
  %mul308 = mul i64 %conv305, %conv307
  store i64 %mul308, ptr %x53, align 8
  %212 = load ptr, ptr %arg1.addr, align 8
  %arrayidx309 = getelementptr inbounds i32, ptr %212, i64 6
  %213 = load i32, ptr %arrayidx309, align 4
  %conv310 = zext i32 %213 to i64
  %214 = load ptr, ptr %arg2.addr, align 8
  %arrayidx311 = getelementptr inbounds i32, ptr %214, i64 1
  %215 = load i32, ptr %arrayidx311, align 4
  %conv312 = zext i32 %215 to i64
  %mul313 = mul i64 %conv310, %conv312
  store i64 %mul313, ptr %x54, align 8
  %216 = load ptr, ptr %arg1.addr, align 8
  %arrayidx314 = getelementptr inbounds i32, ptr %216, i64 6
  %217 = load i32, ptr %arrayidx314, align 4
  %conv315 = zext i32 %217 to i64
  %218 = load ptr, ptr %arg2.addr, align 8
  %arrayidx316 = getelementptr inbounds i32, ptr %218, i64 0
  %219 = load i32, ptr %arrayidx316, align 4
  %conv317 = zext i32 %219 to i64
  %mul318 = mul i64 %conv315, %conv317
  store i64 %mul318, ptr %x55, align 8
  %220 = load ptr, ptr %arg1.addr, align 8
  %arrayidx319 = getelementptr inbounds i32, ptr %220, i64 5
  %221 = load i32, ptr %arrayidx319, align 4
  %conv320 = zext i32 %221 to i64
  %222 = load ptr, ptr %arg2.addr, align 8
  %arrayidx321 = getelementptr inbounds i32, ptr %222, i64 4
  %223 = load i32, ptr %arrayidx321, align 4
  %conv322 = zext i32 %223 to i64
  %mul323 = mul i64 %conv320, %conv322
  store i64 %mul323, ptr %x56, align 8
  %224 = load ptr, ptr %arg1.addr, align 8
  %arrayidx324 = getelementptr inbounds i32, ptr %224, i64 5
  %225 = load i32, ptr %arrayidx324, align 4
  %conv325 = zext i32 %225 to i64
  %226 = load ptr, ptr %arg2.addr, align 8
  %arrayidx326 = getelementptr inbounds i32, ptr %226, i64 3
  %227 = load i32, ptr %arrayidx326, align 4
  %mul327 = mul i32 %227, 2
  %conv328 = zext i32 %mul327 to i64
  %mul329 = mul i64 %conv325, %conv328
  store i64 %mul329, ptr %x57, align 8
  %228 = load ptr, ptr %arg1.addr, align 8
  %arrayidx330 = getelementptr inbounds i32, ptr %228, i64 5
  %229 = load i32, ptr %arrayidx330, align 4
  %conv331 = zext i32 %229 to i64
  %230 = load ptr, ptr %arg2.addr, align 8
  %arrayidx332 = getelementptr inbounds i32, ptr %230, i64 2
  %231 = load i32, ptr %arrayidx332, align 4
  %conv333 = zext i32 %231 to i64
  %mul334 = mul i64 %conv331, %conv333
  store i64 %mul334, ptr %x58, align 8
  %232 = load ptr, ptr %arg1.addr, align 8
  %arrayidx335 = getelementptr inbounds i32, ptr %232, i64 5
  %233 = load i32, ptr %arrayidx335, align 4
  %conv336 = zext i32 %233 to i64
  %234 = load ptr, ptr %arg2.addr, align 8
  %arrayidx337 = getelementptr inbounds i32, ptr %234, i64 1
  %235 = load i32, ptr %arrayidx337, align 4
  %mul338 = mul i32 %235, 2
  %conv339 = zext i32 %mul338 to i64
  %mul340 = mul i64 %conv336, %conv339
  store i64 %mul340, ptr %x59, align 8
  %236 = load ptr, ptr %arg1.addr, align 8
  %arrayidx341 = getelementptr inbounds i32, ptr %236, i64 5
  %237 = load i32, ptr %arrayidx341, align 4
  %conv342 = zext i32 %237 to i64
  %238 = load ptr, ptr %arg2.addr, align 8
  %arrayidx343 = getelementptr inbounds i32, ptr %238, i64 0
  %239 = load i32, ptr %arrayidx343, align 4
  %conv344 = zext i32 %239 to i64
  %mul345 = mul i64 %conv342, %conv344
  store i64 %mul345, ptr %x60, align 8
  %240 = load ptr, ptr %arg1.addr, align 8
  %arrayidx346 = getelementptr inbounds i32, ptr %240, i64 4
  %241 = load i32, ptr %arrayidx346, align 4
  %conv347 = zext i32 %241 to i64
  %242 = load ptr, ptr %arg2.addr, align 8
  %arrayidx348 = getelementptr inbounds i32, ptr %242, i64 5
  %243 = load i32, ptr %arrayidx348, align 4
  %conv349 = zext i32 %243 to i64
  %mul350 = mul i64 %conv347, %conv349
  store i64 %mul350, ptr %x61, align 8
  %244 = load ptr, ptr %arg1.addr, align 8
  %arrayidx351 = getelementptr inbounds i32, ptr %244, i64 4
  %245 = load i32, ptr %arrayidx351, align 4
  %conv352 = zext i32 %245 to i64
  %246 = load ptr, ptr %arg2.addr, align 8
  %arrayidx353 = getelementptr inbounds i32, ptr %246, i64 4
  %247 = load i32, ptr %arrayidx353, align 4
  %conv354 = zext i32 %247 to i64
  %mul355 = mul i64 %conv352, %conv354
  store i64 %mul355, ptr %x62, align 8
  %248 = load ptr, ptr %arg1.addr, align 8
  %arrayidx356 = getelementptr inbounds i32, ptr %248, i64 4
  %249 = load i32, ptr %arrayidx356, align 4
  %conv357 = zext i32 %249 to i64
  %250 = load ptr, ptr %arg2.addr, align 8
  %arrayidx358 = getelementptr inbounds i32, ptr %250, i64 3
  %251 = load i32, ptr %arrayidx358, align 4
  %conv359 = zext i32 %251 to i64
  %mul360 = mul i64 %conv357, %conv359
  store i64 %mul360, ptr %x63, align 8
  %252 = load ptr, ptr %arg1.addr, align 8
  %arrayidx361 = getelementptr inbounds i32, ptr %252, i64 4
  %253 = load i32, ptr %arrayidx361, align 4
  %conv362 = zext i32 %253 to i64
  %254 = load ptr, ptr %arg2.addr, align 8
  %arrayidx363 = getelementptr inbounds i32, ptr %254, i64 2
  %255 = load i32, ptr %arrayidx363, align 4
  %conv364 = zext i32 %255 to i64
  %mul365 = mul i64 %conv362, %conv364
  store i64 %mul365, ptr %x64, align 8
  %256 = load ptr, ptr %arg1.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %256, i64 4
  %257 = load i32, ptr %arrayidx366, align 4
  %conv367 = zext i32 %257 to i64
  %258 = load ptr, ptr %arg2.addr, align 8
  %arrayidx368 = getelementptr inbounds i32, ptr %258, i64 1
  %259 = load i32, ptr %arrayidx368, align 4
  %conv369 = zext i32 %259 to i64
  %mul370 = mul i64 %conv367, %conv369
  store i64 %mul370, ptr %x65, align 8
  %260 = load ptr, ptr %arg1.addr, align 8
  %arrayidx371 = getelementptr inbounds i32, ptr %260, i64 4
  %261 = load i32, ptr %arrayidx371, align 4
  %conv372 = zext i32 %261 to i64
  %262 = load ptr, ptr %arg2.addr, align 8
  %arrayidx373 = getelementptr inbounds i32, ptr %262, i64 0
  %263 = load i32, ptr %arrayidx373, align 4
  %conv374 = zext i32 %263 to i64
  %mul375 = mul i64 %conv372, %conv374
  store i64 %mul375, ptr %x66, align 8
  %264 = load ptr, ptr %arg1.addr, align 8
  %arrayidx376 = getelementptr inbounds i32, ptr %264, i64 3
  %265 = load i32, ptr %arrayidx376, align 4
  %conv377 = zext i32 %265 to i64
  %266 = load ptr, ptr %arg2.addr, align 8
  %arrayidx378 = getelementptr inbounds i32, ptr %266, i64 6
  %267 = load i32, ptr %arrayidx378, align 4
  %conv379 = zext i32 %267 to i64
  %mul380 = mul i64 %conv377, %conv379
  store i64 %mul380, ptr %x67, align 8
  %268 = load ptr, ptr %arg1.addr, align 8
  %arrayidx381 = getelementptr inbounds i32, ptr %268, i64 3
  %269 = load i32, ptr %arrayidx381, align 4
  %conv382 = zext i32 %269 to i64
  %270 = load ptr, ptr %arg2.addr, align 8
  %arrayidx383 = getelementptr inbounds i32, ptr %270, i64 5
  %271 = load i32, ptr %arrayidx383, align 4
  %mul384 = mul i32 %271, 2
  %conv385 = zext i32 %mul384 to i64
  %mul386 = mul i64 %conv382, %conv385
  store i64 %mul386, ptr %x68, align 8
  %272 = load ptr, ptr %arg1.addr, align 8
  %arrayidx387 = getelementptr inbounds i32, ptr %272, i64 3
  %273 = load i32, ptr %arrayidx387, align 4
  %conv388 = zext i32 %273 to i64
  %274 = load ptr, ptr %arg2.addr, align 8
  %arrayidx389 = getelementptr inbounds i32, ptr %274, i64 4
  %275 = load i32, ptr %arrayidx389, align 4
  %conv390 = zext i32 %275 to i64
  %mul391 = mul i64 %conv388, %conv390
  store i64 %mul391, ptr %x69, align 8
  %276 = load ptr, ptr %arg1.addr, align 8
  %arrayidx392 = getelementptr inbounds i32, ptr %276, i64 3
  %277 = load i32, ptr %arrayidx392, align 4
  %conv393 = zext i32 %277 to i64
  %278 = load ptr, ptr %arg2.addr, align 8
  %arrayidx394 = getelementptr inbounds i32, ptr %278, i64 3
  %279 = load i32, ptr %arrayidx394, align 4
  %mul395 = mul i32 %279, 2
  %conv396 = zext i32 %mul395 to i64
  %mul397 = mul i64 %conv393, %conv396
  store i64 %mul397, ptr %x70, align 8
  %280 = load ptr, ptr %arg1.addr, align 8
  %arrayidx398 = getelementptr inbounds i32, ptr %280, i64 3
  %281 = load i32, ptr %arrayidx398, align 4
  %conv399 = zext i32 %281 to i64
  %282 = load ptr, ptr %arg2.addr, align 8
  %arrayidx400 = getelementptr inbounds i32, ptr %282, i64 2
  %283 = load i32, ptr %arrayidx400, align 4
  %conv401 = zext i32 %283 to i64
  %mul402 = mul i64 %conv399, %conv401
  store i64 %mul402, ptr %x71, align 8
  %284 = load ptr, ptr %arg1.addr, align 8
  %arrayidx403 = getelementptr inbounds i32, ptr %284, i64 3
  %285 = load i32, ptr %arrayidx403, align 4
  %conv404 = zext i32 %285 to i64
  %286 = load ptr, ptr %arg2.addr, align 8
  %arrayidx405 = getelementptr inbounds i32, ptr %286, i64 1
  %287 = load i32, ptr %arrayidx405, align 4
  %mul406 = mul i32 %287, 2
  %conv407 = zext i32 %mul406 to i64
  %mul408 = mul i64 %conv404, %conv407
  store i64 %mul408, ptr %x72, align 8
  %288 = load ptr, ptr %arg1.addr, align 8
  %arrayidx409 = getelementptr inbounds i32, ptr %288, i64 3
  %289 = load i32, ptr %arrayidx409, align 4
  %conv410 = zext i32 %289 to i64
  %290 = load ptr, ptr %arg2.addr, align 8
  %arrayidx411 = getelementptr inbounds i32, ptr %290, i64 0
  %291 = load i32, ptr %arrayidx411, align 4
  %conv412 = zext i32 %291 to i64
  %mul413 = mul i64 %conv410, %conv412
  store i64 %mul413, ptr %x73, align 8
  %292 = load ptr, ptr %arg1.addr, align 8
  %arrayidx414 = getelementptr inbounds i32, ptr %292, i64 2
  %293 = load i32, ptr %arrayidx414, align 4
  %conv415 = zext i32 %293 to i64
  %294 = load ptr, ptr %arg2.addr, align 8
  %arrayidx416 = getelementptr inbounds i32, ptr %294, i64 7
  %295 = load i32, ptr %arrayidx416, align 4
  %conv417 = zext i32 %295 to i64
  %mul418 = mul i64 %conv415, %conv417
  store i64 %mul418, ptr %x74, align 8
  %296 = load ptr, ptr %arg1.addr, align 8
  %arrayidx419 = getelementptr inbounds i32, ptr %296, i64 2
  %297 = load i32, ptr %arrayidx419, align 4
  %conv420 = zext i32 %297 to i64
  %298 = load ptr, ptr %arg2.addr, align 8
  %arrayidx421 = getelementptr inbounds i32, ptr %298, i64 6
  %299 = load i32, ptr %arrayidx421, align 4
  %conv422 = zext i32 %299 to i64
  %mul423 = mul i64 %conv420, %conv422
  store i64 %mul423, ptr %x75, align 8
  %300 = load ptr, ptr %arg1.addr, align 8
  %arrayidx424 = getelementptr inbounds i32, ptr %300, i64 2
  %301 = load i32, ptr %arrayidx424, align 4
  %conv425 = zext i32 %301 to i64
  %302 = load ptr, ptr %arg2.addr, align 8
  %arrayidx426 = getelementptr inbounds i32, ptr %302, i64 5
  %303 = load i32, ptr %arrayidx426, align 4
  %conv427 = zext i32 %303 to i64
  %mul428 = mul i64 %conv425, %conv427
  store i64 %mul428, ptr %x76, align 8
  %304 = load ptr, ptr %arg1.addr, align 8
  %arrayidx429 = getelementptr inbounds i32, ptr %304, i64 2
  %305 = load i32, ptr %arrayidx429, align 4
  %conv430 = zext i32 %305 to i64
  %306 = load ptr, ptr %arg2.addr, align 8
  %arrayidx431 = getelementptr inbounds i32, ptr %306, i64 4
  %307 = load i32, ptr %arrayidx431, align 4
  %conv432 = zext i32 %307 to i64
  %mul433 = mul i64 %conv430, %conv432
  store i64 %mul433, ptr %x77, align 8
  %308 = load ptr, ptr %arg1.addr, align 8
  %arrayidx434 = getelementptr inbounds i32, ptr %308, i64 2
  %309 = load i32, ptr %arrayidx434, align 4
  %conv435 = zext i32 %309 to i64
  %310 = load ptr, ptr %arg2.addr, align 8
  %arrayidx436 = getelementptr inbounds i32, ptr %310, i64 3
  %311 = load i32, ptr %arrayidx436, align 4
  %conv437 = zext i32 %311 to i64
  %mul438 = mul i64 %conv435, %conv437
  store i64 %mul438, ptr %x78, align 8
  %312 = load ptr, ptr %arg1.addr, align 8
  %arrayidx439 = getelementptr inbounds i32, ptr %312, i64 2
  %313 = load i32, ptr %arrayidx439, align 4
  %conv440 = zext i32 %313 to i64
  %314 = load ptr, ptr %arg2.addr, align 8
  %arrayidx441 = getelementptr inbounds i32, ptr %314, i64 2
  %315 = load i32, ptr %arrayidx441, align 4
  %conv442 = zext i32 %315 to i64
  %mul443 = mul i64 %conv440, %conv442
  store i64 %mul443, ptr %x79, align 8
  %316 = load ptr, ptr %arg1.addr, align 8
  %arrayidx444 = getelementptr inbounds i32, ptr %316, i64 2
  %317 = load i32, ptr %arrayidx444, align 4
  %conv445 = zext i32 %317 to i64
  %318 = load ptr, ptr %arg2.addr, align 8
  %arrayidx446 = getelementptr inbounds i32, ptr %318, i64 1
  %319 = load i32, ptr %arrayidx446, align 4
  %conv447 = zext i32 %319 to i64
  %mul448 = mul i64 %conv445, %conv447
  store i64 %mul448, ptr %x80, align 8
  %320 = load ptr, ptr %arg1.addr, align 8
  %arrayidx449 = getelementptr inbounds i32, ptr %320, i64 2
  %321 = load i32, ptr %arrayidx449, align 4
  %conv450 = zext i32 %321 to i64
  %322 = load ptr, ptr %arg2.addr, align 8
  %arrayidx451 = getelementptr inbounds i32, ptr %322, i64 0
  %323 = load i32, ptr %arrayidx451, align 4
  %conv452 = zext i32 %323 to i64
  %mul453 = mul i64 %conv450, %conv452
  store i64 %mul453, ptr %x81, align 8
  %324 = load ptr, ptr %arg1.addr, align 8
  %arrayidx454 = getelementptr inbounds i32, ptr %324, i64 1
  %325 = load i32, ptr %arrayidx454, align 4
  %conv455 = zext i32 %325 to i64
  %326 = load ptr, ptr %arg2.addr, align 8
  %arrayidx456 = getelementptr inbounds i32, ptr %326, i64 8
  %327 = load i32, ptr %arrayidx456, align 4
  %conv457 = zext i32 %327 to i64
  %mul458 = mul i64 %conv455, %conv457
  store i64 %mul458, ptr %x82, align 8
  %328 = load ptr, ptr %arg1.addr, align 8
  %arrayidx459 = getelementptr inbounds i32, ptr %328, i64 1
  %329 = load i32, ptr %arrayidx459, align 4
  %conv460 = zext i32 %329 to i64
  %330 = load ptr, ptr %arg2.addr, align 8
  %arrayidx461 = getelementptr inbounds i32, ptr %330, i64 7
  %331 = load i32, ptr %arrayidx461, align 4
  %mul462 = mul i32 %331, 2
  %conv463 = zext i32 %mul462 to i64
  %mul464 = mul i64 %conv460, %conv463
  store i64 %mul464, ptr %x83, align 8
  %332 = load ptr, ptr %arg1.addr, align 8
  %arrayidx465 = getelementptr inbounds i32, ptr %332, i64 1
  %333 = load i32, ptr %arrayidx465, align 4
  %conv466 = zext i32 %333 to i64
  %334 = load ptr, ptr %arg2.addr, align 8
  %arrayidx467 = getelementptr inbounds i32, ptr %334, i64 6
  %335 = load i32, ptr %arrayidx467, align 4
  %conv468 = zext i32 %335 to i64
  %mul469 = mul i64 %conv466, %conv468
  store i64 %mul469, ptr %x84, align 8
  %336 = load ptr, ptr %arg1.addr, align 8
  %arrayidx470 = getelementptr inbounds i32, ptr %336, i64 1
  %337 = load i32, ptr %arrayidx470, align 4
  %conv471 = zext i32 %337 to i64
  %338 = load ptr, ptr %arg2.addr, align 8
  %arrayidx472 = getelementptr inbounds i32, ptr %338, i64 5
  %339 = load i32, ptr %arrayidx472, align 4
  %mul473 = mul i32 %339, 2
  %conv474 = zext i32 %mul473 to i64
  %mul475 = mul i64 %conv471, %conv474
  store i64 %mul475, ptr %x85, align 8
  %340 = load ptr, ptr %arg1.addr, align 8
  %arrayidx476 = getelementptr inbounds i32, ptr %340, i64 1
  %341 = load i32, ptr %arrayidx476, align 4
  %conv477 = zext i32 %341 to i64
  %342 = load ptr, ptr %arg2.addr, align 8
  %arrayidx478 = getelementptr inbounds i32, ptr %342, i64 4
  %343 = load i32, ptr %arrayidx478, align 4
  %conv479 = zext i32 %343 to i64
  %mul480 = mul i64 %conv477, %conv479
  store i64 %mul480, ptr %x86, align 8
  %344 = load ptr, ptr %arg1.addr, align 8
  %arrayidx481 = getelementptr inbounds i32, ptr %344, i64 1
  %345 = load i32, ptr %arrayidx481, align 4
  %conv482 = zext i32 %345 to i64
  %346 = load ptr, ptr %arg2.addr, align 8
  %arrayidx483 = getelementptr inbounds i32, ptr %346, i64 3
  %347 = load i32, ptr %arrayidx483, align 4
  %mul484 = mul i32 %347, 2
  %conv485 = zext i32 %mul484 to i64
  %mul486 = mul i64 %conv482, %conv485
  store i64 %mul486, ptr %x87, align 8
  %348 = load ptr, ptr %arg1.addr, align 8
  %arrayidx487 = getelementptr inbounds i32, ptr %348, i64 1
  %349 = load i32, ptr %arrayidx487, align 4
  %conv488 = zext i32 %349 to i64
  %350 = load ptr, ptr %arg2.addr, align 8
  %arrayidx489 = getelementptr inbounds i32, ptr %350, i64 2
  %351 = load i32, ptr %arrayidx489, align 4
  %conv490 = zext i32 %351 to i64
  %mul491 = mul i64 %conv488, %conv490
  store i64 %mul491, ptr %x88, align 8
  %352 = load ptr, ptr %arg1.addr, align 8
  %arrayidx492 = getelementptr inbounds i32, ptr %352, i64 1
  %353 = load i32, ptr %arrayidx492, align 4
  %conv493 = zext i32 %353 to i64
  %354 = load ptr, ptr %arg2.addr, align 8
  %arrayidx494 = getelementptr inbounds i32, ptr %354, i64 1
  %355 = load i32, ptr %arrayidx494, align 4
  %mul495 = mul i32 %355, 2
  %conv496 = zext i32 %mul495 to i64
  %mul497 = mul i64 %conv493, %conv496
  store i64 %mul497, ptr %x89, align 8
  %356 = load ptr, ptr %arg1.addr, align 8
  %arrayidx498 = getelementptr inbounds i32, ptr %356, i64 1
  %357 = load i32, ptr %arrayidx498, align 4
  %conv499 = zext i32 %357 to i64
  %358 = load ptr, ptr %arg2.addr, align 8
  %arrayidx500 = getelementptr inbounds i32, ptr %358, i64 0
  %359 = load i32, ptr %arrayidx500, align 4
  %conv501 = zext i32 %359 to i64
  %mul502 = mul i64 %conv499, %conv501
  store i64 %mul502, ptr %x90, align 8
  %360 = load ptr, ptr %arg1.addr, align 8
  %arrayidx503 = getelementptr inbounds i32, ptr %360, i64 0
  %361 = load i32, ptr %arrayidx503, align 4
  %conv504 = zext i32 %361 to i64
  %362 = load ptr, ptr %arg2.addr, align 8
  %arrayidx505 = getelementptr inbounds i32, ptr %362, i64 9
  %363 = load i32, ptr %arrayidx505, align 4
  %conv506 = zext i32 %363 to i64
  %mul507 = mul i64 %conv504, %conv506
  store i64 %mul507, ptr %x91, align 8
  %364 = load ptr, ptr %arg1.addr, align 8
  %arrayidx508 = getelementptr inbounds i32, ptr %364, i64 0
  %365 = load i32, ptr %arrayidx508, align 4
  %conv509 = zext i32 %365 to i64
  %366 = load ptr, ptr %arg2.addr, align 8
  %arrayidx510 = getelementptr inbounds i32, ptr %366, i64 8
  %367 = load i32, ptr %arrayidx510, align 4
  %conv511 = zext i32 %367 to i64
  %mul512 = mul i64 %conv509, %conv511
  store i64 %mul512, ptr %x92, align 8
  %368 = load ptr, ptr %arg1.addr, align 8
  %arrayidx513 = getelementptr inbounds i32, ptr %368, i64 0
  %369 = load i32, ptr %arrayidx513, align 4
  %conv514 = zext i32 %369 to i64
  %370 = load ptr, ptr %arg2.addr, align 8
  %arrayidx515 = getelementptr inbounds i32, ptr %370, i64 7
  %371 = load i32, ptr %arrayidx515, align 4
  %conv516 = zext i32 %371 to i64
  %mul517 = mul i64 %conv514, %conv516
  store i64 %mul517, ptr %x93, align 8
  %372 = load ptr, ptr %arg1.addr, align 8
  %arrayidx518 = getelementptr inbounds i32, ptr %372, i64 0
  %373 = load i32, ptr %arrayidx518, align 4
  %conv519 = zext i32 %373 to i64
  %374 = load ptr, ptr %arg2.addr, align 8
  %arrayidx520 = getelementptr inbounds i32, ptr %374, i64 6
  %375 = load i32, ptr %arrayidx520, align 4
  %conv521 = zext i32 %375 to i64
  %mul522 = mul i64 %conv519, %conv521
  store i64 %mul522, ptr %x94, align 8
  %376 = load ptr, ptr %arg1.addr, align 8
  %arrayidx523 = getelementptr inbounds i32, ptr %376, i64 0
  %377 = load i32, ptr %arrayidx523, align 4
  %conv524 = zext i32 %377 to i64
  %378 = load ptr, ptr %arg2.addr, align 8
  %arrayidx525 = getelementptr inbounds i32, ptr %378, i64 5
  %379 = load i32, ptr %arrayidx525, align 4
  %conv526 = zext i32 %379 to i64
  %mul527 = mul i64 %conv524, %conv526
  store i64 %mul527, ptr %x95, align 8
  %380 = load ptr, ptr %arg1.addr, align 8
  %arrayidx528 = getelementptr inbounds i32, ptr %380, i64 0
  %381 = load i32, ptr %arrayidx528, align 4
  %conv529 = zext i32 %381 to i64
  %382 = load ptr, ptr %arg2.addr, align 8
  %arrayidx530 = getelementptr inbounds i32, ptr %382, i64 4
  %383 = load i32, ptr %arrayidx530, align 4
  %conv531 = zext i32 %383 to i64
  %mul532 = mul i64 %conv529, %conv531
  store i64 %mul532, ptr %x96, align 8
  %384 = load ptr, ptr %arg1.addr, align 8
  %arrayidx533 = getelementptr inbounds i32, ptr %384, i64 0
  %385 = load i32, ptr %arrayidx533, align 4
  %conv534 = zext i32 %385 to i64
  %386 = load ptr, ptr %arg2.addr, align 8
  %arrayidx535 = getelementptr inbounds i32, ptr %386, i64 3
  %387 = load i32, ptr %arrayidx535, align 4
  %conv536 = zext i32 %387 to i64
  %mul537 = mul i64 %conv534, %conv536
  store i64 %mul537, ptr %x97, align 8
  %388 = load ptr, ptr %arg1.addr, align 8
  %arrayidx538 = getelementptr inbounds i32, ptr %388, i64 0
  %389 = load i32, ptr %arrayidx538, align 4
  %conv539 = zext i32 %389 to i64
  %390 = load ptr, ptr %arg2.addr, align 8
  %arrayidx540 = getelementptr inbounds i32, ptr %390, i64 2
  %391 = load i32, ptr %arrayidx540, align 4
  %conv541 = zext i32 %391 to i64
  %mul542 = mul i64 %conv539, %conv541
  store i64 %mul542, ptr %x98, align 8
  %392 = load ptr, ptr %arg1.addr, align 8
  %arrayidx543 = getelementptr inbounds i32, ptr %392, i64 0
  %393 = load i32, ptr %arrayidx543, align 4
  %conv544 = zext i32 %393 to i64
  %394 = load ptr, ptr %arg2.addr, align 8
  %arrayidx545 = getelementptr inbounds i32, ptr %394, i64 1
  %395 = load i32, ptr %arrayidx545, align 4
  %conv546 = zext i32 %395 to i64
  %mul547 = mul i64 %conv544, %conv546
  store i64 %mul547, ptr %x99, align 8
  %396 = load ptr, ptr %arg1.addr, align 8
  %arrayidx548 = getelementptr inbounds i32, ptr %396, i64 0
  %397 = load i32, ptr %arrayidx548, align 4
  %conv549 = zext i32 %397 to i64
  %398 = load ptr, ptr %arg2.addr, align 8
  %arrayidx550 = getelementptr inbounds i32, ptr %398, i64 0
  %399 = load i32, ptr %arrayidx550, align 4
  %conv551 = zext i32 %399 to i64
  %mul552 = mul i64 %conv549, %conv551
  store i64 %mul552, ptr %x100, align 8
  %400 = load i64, ptr %x100, align 8
  %401 = load i64, ptr %x45, align 8
  %402 = load i64, ptr %x44, align 8
  %403 = load i64, ptr %x42, align 8
  %404 = load i64, ptr %x39, align 8
  %405 = load i64, ptr %x35, align 8
  %406 = load i64, ptr %x30, align 8
  %407 = load i64, ptr %x24, align 8
  %408 = load i64, ptr %x17, align 8
  %409 = load i64, ptr %x9, align 8
  %add = add i64 %408, %409
  %add553 = add i64 %407, %add
  %add554 = add i64 %406, %add553
  %add555 = add i64 %405, %add554
  %add556 = add i64 %404, %add555
  %add557 = add i64 %403, %add556
  %add558 = add i64 %402, %add557
  %add559 = add i64 %401, %add558
  %add560 = add i64 %400, %add559
  store i64 %add560, ptr %x101, align 8
  %410 = load i64, ptr %x101, align 8
  %shr = lshr i64 %410, 26
  store i64 %shr, ptr %x102, align 8
  %411 = load i64, ptr %x101, align 8
  %and = and i64 %411, 67108863
  %conv561 = trunc i64 %and to i32
  store i32 %conv561, ptr %x103, align 4
  %412 = load i64, ptr %x91, align 8
  %413 = load i64, ptr %x82, align 8
  %414 = load i64, ptr %x74, align 8
  %415 = load i64, ptr %x67, align 8
  %416 = load i64, ptr %x61, align 8
  %417 = load i64, ptr %x56, align 8
  %418 = load i64, ptr %x52, align 8
  %419 = load i64, ptr %x49, align 8
  %420 = load i64, ptr %x47, align 8
  %421 = load i64, ptr %x46, align 8
  %add562 = add i64 %420, %421
  %add563 = add i64 %419, %add562
  %add564 = add i64 %418, %add563
  %add565 = add i64 %417, %add564
  %add566 = add i64 %416, %add565
  %add567 = add i64 %415, %add566
  %add568 = add i64 %414, %add567
  %add569 = add i64 %413, %add568
  %add570 = add i64 %412, %add569
  store i64 %add570, ptr %x104, align 8
  %422 = load i64, ptr %x92, align 8
  %423 = load i64, ptr %x83, align 8
  %424 = load i64, ptr %x75, align 8
  %425 = load i64, ptr %x68, align 8
  %426 = load i64, ptr %x62, align 8
  %427 = load i64, ptr %x57, align 8
  %428 = load i64, ptr %x53, align 8
  %429 = load i64, ptr %x50, align 8
  %430 = load i64, ptr %x48, align 8
  %431 = load i64, ptr %x1, align 8
  %add571 = add i64 %430, %431
  %add572 = add i64 %429, %add571
  %add573 = add i64 %428, %add572
  %add574 = add i64 %427, %add573
  %add575 = add i64 %426, %add574
  %add576 = add i64 %425, %add575
  %add577 = add i64 %424, %add576
  %add578 = add i64 %423, %add577
  %add579 = add i64 %422, %add578
  store i64 %add579, ptr %x105, align 8
  %432 = load i64, ptr %x93, align 8
  %433 = load i64, ptr %x84, align 8
  %434 = load i64, ptr %x76, align 8
  %435 = load i64, ptr %x69, align 8
  %436 = load i64, ptr %x63, align 8
  %437 = load i64, ptr %x58, align 8
  %438 = load i64, ptr %x54, align 8
  %439 = load i64, ptr %x51, align 8
  %440 = load i64, ptr %x10, align 8
  %441 = load i64, ptr %x2, align 8
  %add580 = add i64 %440, %441
  %add581 = add i64 %439, %add580
  %add582 = add i64 %438, %add581
  %add583 = add i64 %437, %add582
  %add584 = add i64 %436, %add583
  %add585 = add i64 %435, %add584
  %add586 = add i64 %434, %add585
  %add587 = add i64 %433, %add586
  %add588 = add i64 %432, %add587
  store i64 %add588, ptr %x106, align 8
  %442 = load i64, ptr %x94, align 8
  %443 = load i64, ptr %x85, align 8
  %444 = load i64, ptr %x77, align 8
  %445 = load i64, ptr %x70, align 8
  %446 = load i64, ptr %x64, align 8
  %447 = load i64, ptr %x59, align 8
  %448 = load i64, ptr %x55, align 8
  %449 = load i64, ptr %x18, align 8
  %450 = load i64, ptr %x11, align 8
  %451 = load i64, ptr %x3, align 8
  %add589 = add i64 %450, %451
  %add590 = add i64 %449, %add589
  %add591 = add i64 %448, %add590
  %add592 = add i64 %447, %add591
  %add593 = add i64 %446, %add592
  %add594 = add i64 %445, %add593
  %add595 = add i64 %444, %add594
  %add596 = add i64 %443, %add595
  %add597 = add i64 %442, %add596
  store i64 %add597, ptr %x107, align 8
  %452 = load i64, ptr %x95, align 8
  %453 = load i64, ptr %x86, align 8
  %454 = load i64, ptr %x78, align 8
  %455 = load i64, ptr %x71, align 8
  %456 = load i64, ptr %x65, align 8
  %457 = load i64, ptr %x60, align 8
  %458 = load i64, ptr %x25, align 8
  %459 = load i64, ptr %x19, align 8
  %460 = load i64, ptr %x12, align 8
  %461 = load i64, ptr %x4, align 8
  %add598 = add i64 %460, %461
  %add599 = add i64 %459, %add598
  %add600 = add i64 %458, %add599
  %add601 = add i64 %457, %add600
  %add602 = add i64 %456, %add601
  %add603 = add i64 %455, %add602
  %add604 = add i64 %454, %add603
  %add605 = add i64 %453, %add604
  %add606 = add i64 %452, %add605
  store i64 %add606, ptr %x108, align 8
  %462 = load i64, ptr %x96, align 8
  %463 = load i64, ptr %x87, align 8
  %464 = load i64, ptr %x79, align 8
  %465 = load i64, ptr %x72, align 8
  %466 = load i64, ptr %x66, align 8
  %467 = load i64, ptr %x31, align 8
  %468 = load i64, ptr %x26, align 8
  %469 = load i64, ptr %x20, align 8
  %470 = load i64, ptr %x13, align 8
  %471 = load i64, ptr %x5, align 8
  %add607 = add i64 %470, %471
  %add608 = add i64 %469, %add607
  %add609 = add i64 %468, %add608
  %add610 = add i64 %467, %add609
  %add611 = add i64 %466, %add610
  %add612 = add i64 %465, %add611
  %add613 = add i64 %464, %add612
  %add614 = add i64 %463, %add613
  %add615 = add i64 %462, %add614
  store i64 %add615, ptr %x109, align 8
  %472 = load i64, ptr %x97, align 8
  %473 = load i64, ptr %x88, align 8
  %474 = load i64, ptr %x80, align 8
  %475 = load i64, ptr %x73, align 8
  %476 = load i64, ptr %x36, align 8
  %477 = load i64, ptr %x32, align 8
  %478 = load i64, ptr %x27, align 8
  %479 = load i64, ptr %x21, align 8
  %480 = load i64, ptr %x14, align 8
  %481 = load i64, ptr %x6, align 8
  %add616 = add i64 %480, %481
  %add617 = add i64 %479, %add616
  %add618 = add i64 %478, %add617
  %add619 = add i64 %477, %add618
  %add620 = add i64 %476, %add619
  %add621 = add i64 %475, %add620
  %add622 = add i64 %474, %add621
  %add623 = add i64 %473, %add622
  %add624 = add i64 %472, %add623
  store i64 %add624, ptr %x110, align 8
  %482 = load i64, ptr %x98, align 8
  %483 = load i64, ptr %x89, align 8
  %484 = load i64, ptr %x81, align 8
  %485 = load i64, ptr %x40, align 8
  %486 = load i64, ptr %x37, align 8
  %487 = load i64, ptr %x33, align 8
  %488 = load i64, ptr %x28, align 8
  %489 = load i64, ptr %x22, align 8
  %490 = load i64, ptr %x15, align 8
  %491 = load i64, ptr %x7, align 8
  %add625 = add i64 %490, %491
  %add626 = add i64 %489, %add625
  %add627 = add i64 %488, %add626
  %add628 = add i64 %487, %add627
  %add629 = add i64 %486, %add628
  %add630 = add i64 %485, %add629
  %add631 = add i64 %484, %add630
  %add632 = add i64 %483, %add631
  %add633 = add i64 %482, %add632
  store i64 %add633, ptr %x111, align 8
  %492 = load i64, ptr %x99, align 8
  %493 = load i64, ptr %x90, align 8
  %494 = load i64, ptr %x43, align 8
  %495 = load i64, ptr %x41, align 8
  %496 = load i64, ptr %x38, align 8
  %497 = load i64, ptr %x34, align 8
  %498 = load i64, ptr %x29, align 8
  %499 = load i64, ptr %x23, align 8
  %500 = load i64, ptr %x16, align 8
  %501 = load i64, ptr %x8, align 8
  %add634 = add i64 %500, %501
  %add635 = add i64 %499, %add634
  %add636 = add i64 %498, %add635
  %add637 = add i64 %497, %add636
  %add638 = add i64 %496, %add637
  %add639 = add i64 %495, %add638
  %add640 = add i64 %494, %add639
  %add641 = add i64 %493, %add640
  %add642 = add i64 %492, %add641
  store i64 %add642, ptr %x112, align 8
  %502 = load i64, ptr %x102, align 8
  %503 = load i64, ptr %x112, align 8
  %add643 = add i64 %502, %503
  store i64 %add643, ptr %x113, align 8
  %504 = load i64, ptr %x113, align 8
  %shr644 = lshr i64 %504, 25
  store i64 %shr644, ptr %x114, align 8
  %505 = load i64, ptr %x113, align 8
  %and645 = and i64 %505, 33554431
  %conv646 = trunc i64 %and645 to i32
  store i32 %conv646, ptr %x115, align 4
  %506 = load i64, ptr %x114, align 8
  %507 = load i64, ptr %x111, align 8
  %add647 = add i64 %506, %507
  store i64 %add647, ptr %x116, align 8
  %508 = load i64, ptr %x116, align 8
  %shr648 = lshr i64 %508, 26
  store i64 %shr648, ptr %x117, align 8
  %509 = load i64, ptr %x116, align 8
  %and649 = and i64 %509, 67108863
  %conv650 = trunc i64 %and649 to i32
  store i32 %conv650, ptr %x118, align 4
  %510 = load i64, ptr %x117, align 8
  %511 = load i64, ptr %x110, align 8
  %add651 = add i64 %510, %511
  store i64 %add651, ptr %x119, align 8
  %512 = load i64, ptr %x119, align 8
  %shr652 = lshr i64 %512, 25
  store i64 %shr652, ptr %x120, align 8
  %513 = load i64, ptr %x119, align 8
  %and653 = and i64 %513, 33554431
  %conv654 = trunc i64 %and653 to i32
  store i32 %conv654, ptr %x121, align 4
  %514 = load i64, ptr %x120, align 8
  %515 = load i64, ptr %x109, align 8
  %add655 = add i64 %514, %515
  store i64 %add655, ptr %x122, align 8
  %516 = load i64, ptr %x122, align 8
  %shr656 = lshr i64 %516, 26
  store i64 %shr656, ptr %x123, align 8
  %517 = load i64, ptr %x122, align 8
  %and657 = and i64 %517, 67108863
  %conv658 = trunc i64 %and657 to i32
  store i32 %conv658, ptr %x124, align 4
  %518 = load i64, ptr %x123, align 8
  %519 = load i64, ptr %x108, align 8
  %add659 = add i64 %518, %519
  store i64 %add659, ptr %x125, align 8
  %520 = load i64, ptr %x125, align 8
  %shr660 = lshr i64 %520, 25
  store i64 %shr660, ptr %x126, align 8
  %521 = load i64, ptr %x125, align 8
  %and661 = and i64 %521, 33554431
  %conv662 = trunc i64 %and661 to i32
  store i32 %conv662, ptr %x127, align 4
  %522 = load i64, ptr %x126, align 8
  %523 = load i64, ptr %x107, align 8
  %add663 = add i64 %522, %523
  store i64 %add663, ptr %x128, align 8
  %524 = load i64, ptr %x128, align 8
  %shr664 = lshr i64 %524, 26
  store i64 %shr664, ptr %x129, align 8
  %525 = load i64, ptr %x128, align 8
  %and665 = and i64 %525, 67108863
  %conv666 = trunc i64 %and665 to i32
  store i32 %conv666, ptr %x130, align 4
  %526 = load i64, ptr %x129, align 8
  %527 = load i64, ptr %x106, align 8
  %add667 = add i64 %526, %527
  store i64 %add667, ptr %x131, align 8
  %528 = load i64, ptr %x131, align 8
  %shr668 = lshr i64 %528, 25
  store i64 %shr668, ptr %x132, align 8
  %529 = load i64, ptr %x131, align 8
  %and669 = and i64 %529, 33554431
  %conv670 = trunc i64 %and669 to i32
  store i32 %conv670, ptr %x133, align 4
  %530 = load i64, ptr %x132, align 8
  %531 = load i64, ptr %x105, align 8
  %add671 = add i64 %530, %531
  store i64 %add671, ptr %x134, align 8
  %532 = load i64, ptr %x134, align 8
  %shr672 = lshr i64 %532, 26
  store i64 %shr672, ptr %x135, align 8
  %533 = load i64, ptr %x134, align 8
  %and673 = and i64 %533, 67108863
  %conv674 = trunc i64 %and673 to i32
  store i32 %conv674, ptr %x136, align 4
  %534 = load i64, ptr %x135, align 8
  %535 = load i64, ptr %x104, align 8
  %add675 = add i64 %534, %535
  store i64 %add675, ptr %x137, align 8
  %536 = load i64, ptr %x137, align 8
  %shr676 = lshr i64 %536, 25
  store i64 %shr676, ptr %x138, align 8
  %537 = load i64, ptr %x137, align 8
  %and677 = and i64 %537, 33554431
  %conv678 = trunc i64 %and677 to i32
  store i32 %conv678, ptr %x139, align 4
  %538 = load i64, ptr %x138, align 8
  %mul679 = mul i64 %538, 19
  store i64 %mul679, ptr %x140, align 8
  %539 = load i32, ptr %x103, align 4
  %conv680 = zext i32 %539 to i64
  %540 = load i64, ptr %x140, align 8
  %add681 = add i64 %conv680, %540
  store i64 %add681, ptr %x141, align 8
  %541 = load i64, ptr %x141, align 8
  %shr682 = lshr i64 %541, 26
  %conv683 = trunc i64 %shr682 to i32
  store i32 %conv683, ptr %x142, align 4
  %542 = load i64, ptr %x141, align 8
  %and684 = and i64 %542, 67108863
  %conv685 = trunc i64 %and684 to i32
  store i32 %conv685, ptr %x143, align 4
  %543 = load i32, ptr %x142, align 4
  %544 = load i32, ptr %x115, align 4
  %add686 = add i32 %543, %544
  store i32 %add686, ptr %x144, align 4
  %545 = load i32, ptr %x144, align 4
  %shr687 = lshr i32 %545, 25
  %conv688 = trunc i32 %shr687 to i8
  store i8 %conv688, ptr %x145, align 1
  %546 = load i32, ptr %x144, align 4
  %and689 = and i32 %546, 33554431
  store i32 %and689, ptr %x146, align 4
  %547 = load i8, ptr %x145, align 1
  %conv690 = zext i8 %547 to i32
  %548 = load i32, ptr %x118, align 4
  %add691 = add i32 %conv690, %548
  store i32 %add691, ptr %x147, align 4
  %549 = load i32, ptr %x143, align 4
  %550 = load ptr, ptr %out1.addr, align 8
  %arrayidx692 = getelementptr inbounds i32, ptr %550, i64 0
  store i32 %549, ptr %arrayidx692, align 4
  %551 = load i32, ptr %x146, align 4
  %552 = load ptr, ptr %out1.addr, align 8
  %arrayidx693 = getelementptr inbounds i32, ptr %552, i64 1
  store i32 %551, ptr %arrayidx693, align 4
  %553 = load i32, ptr %x147, align 4
  %554 = load ptr, ptr %out1.addr, align 8
  %arrayidx694 = getelementptr inbounds i32, ptr %554, i64 2
  store i32 %553, ptr %arrayidx694, align 4
  %555 = load i32, ptr %x121, align 4
  %556 = load ptr, ptr %out1.addr, align 8
  %arrayidx695 = getelementptr inbounds i32, ptr %556, i64 3
  store i32 %555, ptr %arrayidx695, align 4
  %557 = load i32, ptr %x124, align 4
  %558 = load ptr, ptr %out1.addr, align 8
  %arrayidx696 = getelementptr inbounds i32, ptr %558, i64 4
  store i32 %557, ptr %arrayidx696, align 4
  %559 = load i32, ptr %x127, align 4
  %560 = load ptr, ptr %out1.addr, align 8
  %arrayidx697 = getelementptr inbounds i32, ptr %560, i64 5
  store i32 %559, ptr %arrayidx697, align 4
  %561 = load i32, ptr %x130, align 4
  %562 = load ptr, ptr %out1.addr, align 8
  %arrayidx698 = getelementptr inbounds i32, ptr %562, i64 6
  store i32 %561, ptr %arrayidx698, align 4
  %563 = load i32, ptr %x133, align 4
  %564 = load ptr, ptr %out1.addr, align 8
  %arrayidx699 = getelementptr inbounds i32, ptr %564, i64 7
  store i32 %563, ptr %arrayidx699, align 4
  %565 = load i32, ptr %x136, align 4
  %566 = load ptr, ptr %out1.addr, align 8
  %arrayidx700 = getelementptr inbounds i32, ptr %566, i64 8
  store i32 %565, ptr %arrayidx700, align 4
  %567 = load i32, ptr %x139, align 4
  %568 = load ptr, ptr %out1.addr, align 8
  %arrayidx701 = getelementptr inbounds i32, ptr %568, i64 9
  store i32 %567, ptr %arrayidx701, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i64, align 8
  %x6 = alloca i32, align 4
  %x7 = alloca i32, align 4
  %x8 = alloca i32, align 4
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
  %x11 = alloca i64, align 8
  %x12 = alloca i32, align 4
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
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
  %x76 = alloca i32, align 4
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
  %x88 = alloca i32, align 4
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i32, align 4
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i32, align 4
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i32, align 4
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i32, align 4
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i32, align 4
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
  %x106 = alloca i32, align 4
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i32, align 4
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i32, align 4
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i32, align 4
  %x116 = alloca i32, align 4
  %x117 = alloca i32, align 4
  %x118 = alloca i8, align 1
  %x119 = alloca i32, align 4
  %x120 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 9
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 19
  store i32 %mul, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  %mul1 = mul i32 %2, 2
  store i32 %mul1, ptr %x2, align 4
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 9
  %4 = load i32, ptr %arrayidx2, align 4
  %mul3 = mul i32 %4, 2
  store i32 %mul3, ptr %x3, align 4
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %5, i64 8
  %6 = load i32, ptr %arrayidx4, align 4
  %mul5 = mul i32 %6, 19
  store i32 %mul5, ptr %x4, align 4
  %7 = load i32, ptr %x4, align 4
  %conv = zext i32 %7 to i64
  %mul6 = mul i64 %conv, 2
  store i64 %mul6, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 8
  %9 = load i32, ptr %arrayidx7, align 4
  %mul8 = mul i32 %9, 2
  store i32 %mul8, ptr %x6, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 7
  %11 = load i32, ptr %arrayidx9, align 4
  %mul10 = mul i32 %11, 19
  store i32 %mul10, ptr %x7, align 4
  %12 = load i32, ptr %x7, align 4
  %mul11 = mul i32 %12, 2
  store i32 %mul11, ptr %x8, align 4
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %13, i64 7
  %14 = load i32, ptr %arrayidx12, align 4
  %mul13 = mul i32 %14, 2
  store i32 %mul13, ptr %x9, align 4
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %15, i64 6
  %16 = load i32, ptr %arrayidx14, align 4
  %mul15 = mul i32 %16, 19
  store i32 %mul15, ptr %x10, align 4
  %17 = load i32, ptr %x10, align 4
  %conv16 = zext i32 %17 to i64
  %mul17 = mul i64 %conv16, 2
  store i64 %mul17, ptr %x11, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx18, align 4
  %mul19 = mul i32 %19, 2
  store i32 %mul19, ptr %x12, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx20, align 4
  %mul21 = mul i32 %21, 19
  store i32 %mul21, ptr %x13, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %22, i64 5
  %23 = load i32, ptr %arrayidx22, align 4
  %mul23 = mul i32 %23, 2
  store i32 %mul23, ptr %x14, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %24, i64 4
  %25 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul i32 %25, 2
  store i32 %mul25, ptr %x15, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %26, i64 3
  %27 = load i32, ptr %arrayidx26, align 4
  %mul27 = mul i32 %27, 2
  store i32 %mul27, ptr %x16, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %28, i64 2
  %29 = load i32, ptr %arrayidx28, align 4
  %mul29 = mul i32 %29, 2
  store i32 %mul29, ptr %x17, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %30, i64 1
  %31 = load i32, ptr %arrayidx30, align 4
  %mul31 = mul i32 %31, 2
  store i32 %mul31, ptr %x18, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %32, i64 9
  %33 = load i32, ptr %arrayidx32, align 4
  %conv33 = zext i32 %33 to i64
  %34 = load i32, ptr %x1, align 4
  %mul34 = mul i32 %34, 2
  %conv35 = zext i32 %mul34 to i64
  %mul36 = mul i64 %conv33, %conv35
  store i64 %mul36, ptr %x19, align 8
  %35 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %35, i64 8
  %36 = load i32, ptr %arrayidx37, align 4
  %conv38 = zext i32 %36 to i64
  %37 = load i32, ptr %x2, align 4
  %conv39 = zext i32 %37 to i64
  %mul40 = mul i64 %conv38, %conv39
  store i64 %mul40, ptr %x20, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %38, i64 8
  %39 = load i32, ptr %arrayidx41, align 4
  %conv42 = zext i32 %39 to i64
  %40 = load i32, ptr %x4, align 4
  %conv43 = zext i32 %40 to i64
  %mul44 = mul i64 %conv42, %conv43
  store i64 %mul44, ptr %x21, align 8
  %41 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %41, i64 7
  %42 = load i32, ptr %arrayidx45, align 4
  %conv46 = zext i32 %42 to i64
  %43 = load i32, ptr %x2, align 4
  %conv47 = zext i32 %43 to i64
  %mul48 = mul i64 %conv47, 2
  %mul49 = mul i64 %conv46, %mul48
  store i64 %mul49, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %44, i64 7
  %45 = load i32, ptr %arrayidx50, align 4
  %conv51 = zext i32 %45 to i64
  %46 = load i64, ptr %x5, align 8
  %mul52 = mul i64 %conv51, %46
  store i64 %mul52, ptr %x23, align 8
  %47 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %47, i64 7
  %48 = load i32, ptr %arrayidx53, align 4
  %conv54 = zext i32 %48 to i64
  %49 = load i32, ptr %x7, align 4
  %mul55 = mul i32 %49, 2
  %conv56 = zext i32 %mul55 to i64
  %mul57 = mul i64 %conv54, %conv56
  store i64 %mul57, ptr %x24, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %50, i64 6
  %51 = load i32, ptr %arrayidx58, align 4
  %conv59 = zext i32 %51 to i64
  %52 = load i32, ptr %x2, align 4
  %conv60 = zext i32 %52 to i64
  %mul61 = mul i64 %conv59, %conv60
  store i64 %mul61, ptr %x25, align 8
  %53 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %53, i64 6
  %54 = load i32, ptr %arrayidx62, align 4
  %conv63 = zext i32 %54 to i64
  %55 = load i64, ptr %x5, align 8
  %mul64 = mul i64 %conv63, %55
  store i64 %mul64, ptr %x26, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %56, i64 6
  %57 = load i32, ptr %arrayidx65, align 4
  %conv66 = zext i32 %57 to i64
  %58 = load i32, ptr %x8, align 4
  %conv67 = zext i32 %58 to i64
  %mul68 = mul i64 %conv66, %conv67
  store i64 %mul68, ptr %x27, align 8
  %59 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %59, i64 6
  %60 = load i32, ptr %arrayidx69, align 4
  %conv70 = zext i32 %60 to i64
  %61 = load i32, ptr %x10, align 4
  %conv71 = zext i32 %61 to i64
  %mul72 = mul i64 %conv70, %conv71
  store i64 %mul72, ptr %x28, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %62, i64 5
  %63 = load i32, ptr %arrayidx73, align 4
  %conv74 = zext i32 %63 to i64
  %64 = load i32, ptr %x2, align 4
  %conv75 = zext i32 %64 to i64
  %mul76 = mul i64 %conv75, 2
  %mul77 = mul i64 %conv74, %mul76
  store i64 %mul77, ptr %x29, align 8
  %65 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %65, i64 5
  %66 = load i32, ptr %arrayidx78, align 4
  %conv79 = zext i32 %66 to i64
  %67 = load i64, ptr %x5, align 8
  %mul80 = mul i64 %conv79, %67
  store i64 %mul80, ptr %x30, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, ptr %68, i64 5
  %69 = load i32, ptr %arrayidx81, align 4
  %conv82 = zext i32 %69 to i64
  %70 = load i32, ptr %x8, align 4
  %conv83 = zext i32 %70 to i64
  %mul84 = mul i64 %conv83, 2
  %mul85 = mul i64 %conv82, %mul84
  store i64 %mul85, ptr %x31, align 8
  %71 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %71, i64 5
  %72 = load i32, ptr %arrayidx86, align 4
  %conv87 = zext i32 %72 to i64
  %73 = load i64, ptr %x11, align 8
  %mul88 = mul i64 %conv87, %73
  store i64 %mul88, ptr %x32, align 8
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %74, i64 5
  %75 = load i32, ptr %arrayidx89, align 4
  %conv90 = zext i32 %75 to i64
  %76 = load i32, ptr %x13, align 4
  %mul91 = mul i32 %76, 2
  %conv92 = zext i32 %mul91 to i64
  %mul93 = mul i64 %conv90, %conv92
  store i64 %mul93, ptr %x33, align 8
  %77 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i32, ptr %77, i64 4
  %78 = load i32, ptr %arrayidx94, align 4
  %conv95 = zext i32 %78 to i64
  %79 = load i32, ptr %x2, align 4
  %conv96 = zext i32 %79 to i64
  %mul97 = mul i64 %conv95, %conv96
  store i64 %mul97, ptr %x34, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %80, i64 4
  %81 = load i32, ptr %arrayidx98, align 4
  %conv99 = zext i32 %81 to i64
  %82 = load i64, ptr %x5, align 8
  %mul100 = mul i64 %conv99, %82
  store i64 %mul100, ptr %x35, align 8
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %83, i64 4
  %84 = load i32, ptr %arrayidx101, align 4
  %conv102 = zext i32 %84 to i64
  %85 = load i32, ptr %x8, align 4
  %conv103 = zext i32 %85 to i64
  %mul104 = mul i64 %conv102, %conv103
  store i64 %mul104, ptr %x36, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %86, i64 4
  %87 = load i32, ptr %arrayidx105, align 4
  %conv106 = zext i32 %87 to i64
  %88 = load i64, ptr %x11, align 8
  %mul107 = mul i64 %conv106, %88
  store i64 %mul107, ptr %x37, align 8
  %89 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %89, i64 4
  %90 = load i32, ptr %arrayidx108, align 4
  %conv109 = zext i32 %90 to i64
  %91 = load i32, ptr %x14, align 4
  %conv110 = zext i32 %91 to i64
  %mul111 = mul i64 %conv109, %conv110
  store i64 %mul111, ptr %x38, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, ptr %92, i64 4
  %93 = load i32, ptr %arrayidx112, align 4
  %conv113 = zext i32 %93 to i64
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %94, i64 4
  %95 = load i32, ptr %arrayidx114, align 4
  %conv115 = zext i32 %95 to i64
  %mul116 = mul i64 %conv113, %conv115
  store i64 %mul116, ptr %x39, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %96, i64 3
  %97 = load i32, ptr %arrayidx117, align 4
  %conv118 = zext i32 %97 to i64
  %98 = load i32, ptr %x2, align 4
  %conv119 = zext i32 %98 to i64
  %mul120 = mul i64 %conv119, 2
  %mul121 = mul i64 %conv118, %mul120
  store i64 %mul121, ptr %x40, align 8
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %99, i64 3
  %100 = load i32, ptr %arrayidx122, align 4
  %conv123 = zext i32 %100 to i64
  %101 = load i64, ptr %x5, align 8
  %mul124 = mul i64 %conv123, %101
  store i64 %mul124, ptr %x41, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %102, i64 3
  %103 = load i32, ptr %arrayidx125, align 4
  %conv126 = zext i32 %103 to i64
  %104 = load i32, ptr %x8, align 4
  %conv127 = zext i32 %104 to i64
  %mul128 = mul i64 %conv127, 2
  %mul129 = mul i64 %conv126, %mul128
  store i64 %mul129, ptr %x42, align 8
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %105, i64 3
  %106 = load i32, ptr %arrayidx130, align 4
  %conv131 = zext i32 %106 to i64
  %107 = load i32, ptr %x12, align 4
  %conv132 = zext i32 %107 to i64
  %mul133 = mul i64 %conv131, %conv132
  store i64 %mul133, ptr %x43, align 8
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx134 = getelementptr inbounds i32, ptr %108, i64 3
  %109 = load i32, ptr %arrayidx134, align 4
  %conv135 = zext i32 %109 to i64
  %110 = load i32, ptr %x14, align 4
  %mul136 = mul i32 %110, 2
  %conv137 = zext i32 %mul136 to i64
  %mul138 = mul i64 %conv135, %conv137
  store i64 %mul138, ptr %x44, align 8
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, ptr %111, i64 3
  %112 = load i32, ptr %arrayidx139, align 4
  %conv140 = zext i32 %112 to i64
  %113 = load i32, ptr %x15, align 4
  %conv141 = zext i32 %113 to i64
  %mul142 = mul i64 %conv140, %conv141
  store i64 %mul142, ptr %x45, align 8
  %114 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, ptr %114, i64 3
  %115 = load i32, ptr %arrayidx143, align 4
  %conv144 = zext i32 %115 to i64
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, ptr %116, i64 3
  %117 = load i32, ptr %arrayidx145, align 4
  %mul146 = mul i32 %117, 2
  %conv147 = zext i32 %mul146 to i64
  %mul148 = mul i64 %conv144, %conv147
  store i64 %mul148, ptr %x46, align 8
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, ptr %118, i64 2
  %119 = load i32, ptr %arrayidx149, align 4
  %conv150 = zext i32 %119 to i64
  %120 = load i32, ptr %x2, align 4
  %conv151 = zext i32 %120 to i64
  %mul152 = mul i64 %conv150, %conv151
  store i64 %mul152, ptr %x47, align 8
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %121, i64 2
  %122 = load i32, ptr %arrayidx153, align 4
  %conv154 = zext i32 %122 to i64
  %123 = load i64, ptr %x5, align 8
  %mul155 = mul i64 %conv154, %123
  store i64 %mul155, ptr %x48, align 8
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, ptr %124, i64 2
  %125 = load i32, ptr %arrayidx156, align 4
  %conv157 = zext i32 %125 to i64
  %126 = load i32, ptr %x9, align 4
  %conv158 = zext i32 %126 to i64
  %mul159 = mul i64 %conv157, %conv158
  store i64 %mul159, ptr %x49, align 8
  %127 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %127, i64 2
  %128 = load i32, ptr %arrayidx160, align 4
  %conv161 = zext i32 %128 to i64
  %129 = load i32, ptr %x12, align 4
  %conv162 = zext i32 %129 to i64
  %mul163 = mul i64 %conv161, %conv162
  store i64 %mul163, ptr %x50, align 8
  %130 = load ptr, ptr %arg1.addr, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %130, i64 2
  %131 = load i32, ptr %arrayidx164, align 4
  %conv165 = zext i32 %131 to i64
  %132 = load i32, ptr %x14, align 4
  %conv166 = zext i32 %132 to i64
  %mul167 = mul i64 %conv165, %conv166
  store i64 %mul167, ptr %x51, align 8
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, ptr %133, i64 2
  %134 = load i32, ptr %arrayidx168, align 4
  %conv169 = zext i32 %134 to i64
  %135 = load i32, ptr %x15, align 4
  %conv170 = zext i32 %135 to i64
  %mul171 = mul i64 %conv169, %conv170
  store i64 %mul171, ptr %x52, align 8
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx172 = getelementptr inbounds i32, ptr %136, i64 2
  %137 = load i32, ptr %arrayidx172, align 4
  %conv173 = zext i32 %137 to i64
  %138 = load i32, ptr %x16, align 4
  %conv174 = zext i32 %138 to i64
  %mul175 = mul i64 %conv173, %conv174
  store i64 %mul175, ptr %x53, align 8
  %139 = load ptr, ptr %arg1.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, ptr %139, i64 2
  %140 = load i32, ptr %arrayidx176, align 4
  %conv177 = zext i32 %140 to i64
  %141 = load ptr, ptr %arg1.addr, align 8
  %arrayidx178 = getelementptr inbounds i32, ptr %141, i64 2
  %142 = load i32, ptr %arrayidx178, align 4
  %conv179 = zext i32 %142 to i64
  %mul180 = mul i64 %conv177, %conv179
  store i64 %mul180, ptr %x54, align 8
  %143 = load ptr, ptr %arg1.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, ptr %143, i64 1
  %144 = load i32, ptr %arrayidx181, align 4
  %conv182 = zext i32 %144 to i64
  %145 = load i32, ptr %x2, align 4
  %conv183 = zext i32 %145 to i64
  %mul184 = mul i64 %conv183, 2
  %mul185 = mul i64 %conv182, %mul184
  store i64 %mul185, ptr %x55, align 8
  %146 = load ptr, ptr %arg1.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %146, i64 1
  %147 = load i32, ptr %arrayidx186, align 4
  %conv187 = zext i32 %147 to i64
  %148 = load i32, ptr %x6, align 4
  %conv188 = zext i32 %148 to i64
  %mul189 = mul i64 %conv187, %conv188
  store i64 %mul189, ptr %x56, align 8
  %149 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %149, i64 1
  %150 = load i32, ptr %arrayidx190, align 4
  %conv191 = zext i32 %150 to i64
  %151 = load i32, ptr %x9, align 4
  %mul192 = mul i32 %151, 2
  %conv193 = zext i32 %mul192 to i64
  %mul194 = mul i64 %conv191, %conv193
  store i64 %mul194, ptr %x57, align 8
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, ptr %152, i64 1
  %153 = load i32, ptr %arrayidx195, align 4
  %conv196 = zext i32 %153 to i64
  %154 = load i32, ptr %x12, align 4
  %conv197 = zext i32 %154 to i64
  %mul198 = mul i64 %conv196, %conv197
  store i64 %mul198, ptr %x58, align 8
  %155 = load ptr, ptr %arg1.addr, align 8
  %arrayidx199 = getelementptr inbounds i32, ptr %155, i64 1
  %156 = load i32, ptr %arrayidx199, align 4
  %conv200 = zext i32 %156 to i64
  %157 = load i32, ptr %x14, align 4
  %mul201 = mul i32 %157, 2
  %conv202 = zext i32 %mul201 to i64
  %mul203 = mul i64 %conv200, %conv202
  store i64 %mul203, ptr %x59, align 8
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, ptr %158, i64 1
  %159 = load i32, ptr %arrayidx204, align 4
  %conv205 = zext i32 %159 to i64
  %160 = load i32, ptr %x15, align 4
  %conv206 = zext i32 %160 to i64
  %mul207 = mul i64 %conv205, %conv206
  store i64 %mul207, ptr %x60, align 8
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i32, ptr %161, i64 1
  %162 = load i32, ptr %arrayidx208, align 4
  %conv209 = zext i32 %162 to i64
  %163 = load i32, ptr %x16, align 4
  %mul210 = mul i32 %163, 2
  %conv211 = zext i32 %mul210 to i64
  %mul212 = mul i64 %conv209, %conv211
  store i64 %mul212, ptr %x61, align 8
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx213 = getelementptr inbounds i32, ptr %164, i64 1
  %165 = load i32, ptr %arrayidx213, align 4
  %conv214 = zext i32 %165 to i64
  %166 = load i32, ptr %x17, align 4
  %conv215 = zext i32 %166 to i64
  %mul216 = mul i64 %conv214, %conv215
  store i64 %mul216, ptr %x62, align 8
  %167 = load ptr, ptr %arg1.addr, align 8
  %arrayidx217 = getelementptr inbounds i32, ptr %167, i64 1
  %168 = load i32, ptr %arrayidx217, align 4
  %conv218 = zext i32 %168 to i64
  %169 = load ptr, ptr %arg1.addr, align 8
  %arrayidx219 = getelementptr inbounds i32, ptr %169, i64 1
  %170 = load i32, ptr %arrayidx219, align 4
  %mul220 = mul i32 %170, 2
  %conv221 = zext i32 %mul220 to i64
  %mul222 = mul i64 %conv218, %conv221
  store i64 %mul222, ptr %x63, align 8
  %171 = load ptr, ptr %arg1.addr, align 8
  %arrayidx223 = getelementptr inbounds i32, ptr %171, i64 0
  %172 = load i32, ptr %arrayidx223, align 4
  %conv224 = zext i32 %172 to i64
  %173 = load i32, ptr %x3, align 4
  %conv225 = zext i32 %173 to i64
  %mul226 = mul i64 %conv224, %conv225
  store i64 %mul226, ptr %x64, align 8
  %174 = load ptr, ptr %arg1.addr, align 8
  %arrayidx227 = getelementptr inbounds i32, ptr %174, i64 0
  %175 = load i32, ptr %arrayidx227, align 4
  %conv228 = zext i32 %175 to i64
  %176 = load i32, ptr %x6, align 4
  %conv229 = zext i32 %176 to i64
  %mul230 = mul i64 %conv228, %conv229
  store i64 %mul230, ptr %x65, align 8
  %177 = load ptr, ptr %arg1.addr, align 8
  %arrayidx231 = getelementptr inbounds i32, ptr %177, i64 0
  %178 = load i32, ptr %arrayidx231, align 4
  %conv232 = zext i32 %178 to i64
  %179 = load i32, ptr %x9, align 4
  %conv233 = zext i32 %179 to i64
  %mul234 = mul i64 %conv232, %conv233
  store i64 %mul234, ptr %x66, align 8
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx235 = getelementptr inbounds i32, ptr %180, i64 0
  %181 = load i32, ptr %arrayidx235, align 4
  %conv236 = zext i32 %181 to i64
  %182 = load i32, ptr %x12, align 4
  %conv237 = zext i32 %182 to i64
  %mul238 = mul i64 %conv236, %conv237
  store i64 %mul238, ptr %x67, align 8
  %183 = load ptr, ptr %arg1.addr, align 8
  %arrayidx239 = getelementptr inbounds i32, ptr %183, i64 0
  %184 = load i32, ptr %arrayidx239, align 4
  %conv240 = zext i32 %184 to i64
  %185 = load i32, ptr %x14, align 4
  %conv241 = zext i32 %185 to i64
  %mul242 = mul i64 %conv240, %conv241
  store i64 %mul242, ptr %x68, align 8
  %186 = load ptr, ptr %arg1.addr, align 8
  %arrayidx243 = getelementptr inbounds i32, ptr %186, i64 0
  %187 = load i32, ptr %arrayidx243, align 4
  %conv244 = zext i32 %187 to i64
  %188 = load i32, ptr %x15, align 4
  %conv245 = zext i32 %188 to i64
  %mul246 = mul i64 %conv244, %conv245
  store i64 %mul246, ptr %x69, align 8
  %189 = load ptr, ptr %arg1.addr, align 8
  %arrayidx247 = getelementptr inbounds i32, ptr %189, i64 0
  %190 = load i32, ptr %arrayidx247, align 4
  %conv248 = zext i32 %190 to i64
  %191 = load i32, ptr %x16, align 4
  %conv249 = zext i32 %191 to i64
  %mul250 = mul i64 %conv248, %conv249
  store i64 %mul250, ptr %x70, align 8
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx251 = getelementptr inbounds i32, ptr %192, i64 0
  %193 = load i32, ptr %arrayidx251, align 4
  %conv252 = zext i32 %193 to i64
  %194 = load i32, ptr %x17, align 4
  %conv253 = zext i32 %194 to i64
  %mul254 = mul i64 %conv252, %conv253
  store i64 %mul254, ptr %x71, align 8
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx255 = getelementptr inbounds i32, ptr %195, i64 0
  %196 = load i32, ptr %arrayidx255, align 4
  %conv256 = zext i32 %196 to i64
  %197 = load i32, ptr %x18, align 4
  %conv257 = zext i32 %197 to i64
  %mul258 = mul i64 %conv256, %conv257
  store i64 %mul258, ptr %x72, align 8
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx259 = getelementptr inbounds i32, ptr %198, i64 0
  %199 = load i32, ptr %arrayidx259, align 4
  %conv260 = zext i32 %199 to i64
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx261 = getelementptr inbounds i32, ptr %200, i64 0
  %201 = load i32, ptr %arrayidx261, align 4
  %conv262 = zext i32 %201 to i64
  %mul263 = mul i64 %conv260, %conv262
  store i64 %mul263, ptr %x73, align 8
  %202 = load i64, ptr %x73, align 8
  %203 = load i64, ptr %x55, align 8
  %204 = load i64, ptr %x48, align 8
  %205 = load i64, ptr %x42, align 8
  %206 = load i64, ptr %x37, align 8
  %207 = load i64, ptr %x33, align 8
  %add = add i64 %206, %207
  %add264 = add i64 %205, %add
  %add265 = add i64 %204, %add264
  %add266 = add i64 %203, %add265
  %add267 = add i64 %202, %add266
  store i64 %add267, ptr %x74, align 8
  %208 = load i64, ptr %x74, align 8
  %shr = lshr i64 %208, 26
  store i64 %shr, ptr %x75, align 8
  %209 = load i64, ptr %x74, align 8
  %and = and i64 %209, 67108863
  %conv268 = trunc i64 %and to i32
  store i32 %conv268, ptr %x76, align 4
  %210 = load i64, ptr %x64, align 8
  %211 = load i64, ptr %x56, align 8
  %212 = load i64, ptr %x49, align 8
  %213 = load i64, ptr %x43, align 8
  %214 = load i64, ptr %x38, align 8
  %add269 = add i64 %213, %214
  %add270 = add i64 %212, %add269
  %add271 = add i64 %211, %add270
  %add272 = add i64 %210, %add271
  store i64 %add272, ptr %x77, align 8
  %215 = load i64, ptr %x65, align 8
  %216 = load i64, ptr %x57, align 8
  %217 = load i64, ptr %x50, align 8
  %218 = load i64, ptr %x44, align 8
  %219 = load i64, ptr %x39, align 8
  %220 = load i64, ptr %x19, align 8
  %add273 = add i64 %219, %220
  %add274 = add i64 %218, %add273
  %add275 = add i64 %217, %add274
  %add276 = add i64 %216, %add275
  %add277 = add i64 %215, %add276
  store i64 %add277, ptr %x78, align 8
  %221 = load i64, ptr %x66, align 8
  %222 = load i64, ptr %x58, align 8
  %223 = load i64, ptr %x51, align 8
  %224 = load i64, ptr %x45, align 8
  %225 = load i64, ptr %x20, align 8
  %add278 = add i64 %224, %225
  %add279 = add i64 %223, %add278
  %add280 = add i64 %222, %add279
  %add281 = add i64 %221, %add280
  store i64 %add281, ptr %x79, align 8
  %226 = load i64, ptr %x67, align 8
  %227 = load i64, ptr %x59, align 8
  %228 = load i64, ptr %x52, align 8
  %229 = load i64, ptr %x46, align 8
  %230 = load i64, ptr %x22, align 8
  %231 = load i64, ptr %x21, align 8
  %add282 = add i64 %230, %231
  %add283 = add i64 %229, %add282
  %add284 = add i64 %228, %add283
  %add285 = add i64 %227, %add284
  %add286 = add i64 %226, %add285
  store i64 %add286, ptr %x80, align 8
  %232 = load i64, ptr %x68, align 8
  %233 = load i64, ptr %x60, align 8
  %234 = load i64, ptr %x53, align 8
  %235 = load i64, ptr %x25, align 8
  %236 = load i64, ptr %x23, align 8
  %add287 = add i64 %235, %236
  %add288 = add i64 %234, %add287
  %add289 = add i64 %233, %add288
  %add290 = add i64 %232, %add289
  store i64 %add290, ptr %x81, align 8
  %237 = load i64, ptr %x69, align 8
  %238 = load i64, ptr %x61, align 8
  %239 = load i64, ptr %x54, align 8
  %240 = load i64, ptr %x29, align 8
  %241 = load i64, ptr %x26, align 8
  %242 = load i64, ptr %x24, align 8
  %add291 = add i64 %241, %242
  %add292 = add i64 %240, %add291
  %add293 = add i64 %239, %add292
  %add294 = add i64 %238, %add293
  %add295 = add i64 %237, %add294
  store i64 %add295, ptr %x82, align 8
  %243 = load i64, ptr %x70, align 8
  %244 = load i64, ptr %x62, align 8
  %245 = load i64, ptr %x34, align 8
  %246 = load i64, ptr %x30, align 8
  %247 = load i64, ptr %x27, align 8
  %add296 = add i64 %246, %247
  %add297 = add i64 %245, %add296
  %add298 = add i64 %244, %add297
  %add299 = add i64 %243, %add298
  store i64 %add299, ptr %x83, align 8
  %248 = load i64, ptr %x71, align 8
  %249 = load i64, ptr %x63, align 8
  %250 = load i64, ptr %x40, align 8
  %251 = load i64, ptr %x35, align 8
  %252 = load i64, ptr %x31, align 8
  %253 = load i64, ptr %x28, align 8
  %add300 = add i64 %252, %253
  %add301 = add i64 %251, %add300
  %add302 = add i64 %250, %add301
  %add303 = add i64 %249, %add302
  %add304 = add i64 %248, %add303
  store i64 %add304, ptr %x84, align 8
  %254 = load i64, ptr %x72, align 8
  %255 = load i64, ptr %x47, align 8
  %256 = load i64, ptr %x41, align 8
  %257 = load i64, ptr %x36, align 8
  %258 = load i64, ptr %x32, align 8
  %add305 = add i64 %257, %258
  %add306 = add i64 %256, %add305
  %add307 = add i64 %255, %add306
  %add308 = add i64 %254, %add307
  store i64 %add308, ptr %x85, align 8
  %259 = load i64, ptr %x75, align 8
  %260 = load i64, ptr %x85, align 8
  %add309 = add i64 %259, %260
  store i64 %add309, ptr %x86, align 8
  %261 = load i64, ptr %x86, align 8
  %shr310 = lshr i64 %261, 25
  store i64 %shr310, ptr %x87, align 8
  %262 = load i64, ptr %x86, align 8
  %and311 = and i64 %262, 33554431
  %conv312 = trunc i64 %and311 to i32
  store i32 %conv312, ptr %x88, align 4
  %263 = load i64, ptr %x87, align 8
  %264 = load i64, ptr %x84, align 8
  %add313 = add i64 %263, %264
  store i64 %add313, ptr %x89, align 8
  %265 = load i64, ptr %x89, align 8
  %shr314 = lshr i64 %265, 26
  store i64 %shr314, ptr %x90, align 8
  %266 = load i64, ptr %x89, align 8
  %and315 = and i64 %266, 67108863
  %conv316 = trunc i64 %and315 to i32
  store i32 %conv316, ptr %x91, align 4
  %267 = load i64, ptr %x90, align 8
  %268 = load i64, ptr %x83, align 8
  %add317 = add i64 %267, %268
  store i64 %add317, ptr %x92, align 8
  %269 = load i64, ptr %x92, align 8
  %shr318 = lshr i64 %269, 25
  store i64 %shr318, ptr %x93, align 8
  %270 = load i64, ptr %x92, align 8
  %and319 = and i64 %270, 33554431
  %conv320 = trunc i64 %and319 to i32
  store i32 %conv320, ptr %x94, align 4
  %271 = load i64, ptr %x93, align 8
  %272 = load i64, ptr %x82, align 8
  %add321 = add i64 %271, %272
  store i64 %add321, ptr %x95, align 8
  %273 = load i64, ptr %x95, align 8
  %shr322 = lshr i64 %273, 26
  store i64 %shr322, ptr %x96, align 8
  %274 = load i64, ptr %x95, align 8
  %and323 = and i64 %274, 67108863
  %conv324 = trunc i64 %and323 to i32
  store i32 %conv324, ptr %x97, align 4
  %275 = load i64, ptr %x96, align 8
  %276 = load i64, ptr %x81, align 8
  %add325 = add i64 %275, %276
  store i64 %add325, ptr %x98, align 8
  %277 = load i64, ptr %x98, align 8
  %shr326 = lshr i64 %277, 25
  store i64 %shr326, ptr %x99, align 8
  %278 = load i64, ptr %x98, align 8
  %and327 = and i64 %278, 33554431
  %conv328 = trunc i64 %and327 to i32
  store i32 %conv328, ptr %x100, align 4
  %279 = load i64, ptr %x99, align 8
  %280 = load i64, ptr %x80, align 8
  %add329 = add i64 %279, %280
  store i64 %add329, ptr %x101, align 8
  %281 = load i64, ptr %x101, align 8
  %shr330 = lshr i64 %281, 26
  store i64 %shr330, ptr %x102, align 8
  %282 = load i64, ptr %x101, align 8
  %and331 = and i64 %282, 67108863
  %conv332 = trunc i64 %and331 to i32
  store i32 %conv332, ptr %x103, align 4
  %283 = load i64, ptr %x102, align 8
  %284 = load i64, ptr %x79, align 8
  %add333 = add i64 %283, %284
  store i64 %add333, ptr %x104, align 8
  %285 = load i64, ptr %x104, align 8
  %shr334 = lshr i64 %285, 25
  store i64 %shr334, ptr %x105, align 8
  %286 = load i64, ptr %x104, align 8
  %and335 = and i64 %286, 33554431
  %conv336 = trunc i64 %and335 to i32
  store i32 %conv336, ptr %x106, align 4
  %287 = load i64, ptr %x105, align 8
  %288 = load i64, ptr %x78, align 8
  %add337 = add i64 %287, %288
  store i64 %add337, ptr %x107, align 8
  %289 = load i64, ptr %x107, align 8
  %shr338 = lshr i64 %289, 26
  store i64 %shr338, ptr %x108, align 8
  %290 = load i64, ptr %x107, align 8
  %and339 = and i64 %290, 67108863
  %conv340 = trunc i64 %and339 to i32
  store i32 %conv340, ptr %x109, align 4
  %291 = load i64, ptr %x108, align 8
  %292 = load i64, ptr %x77, align 8
  %add341 = add i64 %291, %292
  store i64 %add341, ptr %x110, align 8
  %293 = load i64, ptr %x110, align 8
  %shr342 = lshr i64 %293, 25
  store i64 %shr342, ptr %x111, align 8
  %294 = load i64, ptr %x110, align 8
  %and343 = and i64 %294, 33554431
  %conv344 = trunc i64 %and343 to i32
  store i32 %conv344, ptr %x112, align 4
  %295 = load i64, ptr %x111, align 8
  %mul345 = mul i64 %295, 19
  store i64 %mul345, ptr %x113, align 8
  %296 = load i32, ptr %x76, align 4
  %conv346 = zext i32 %296 to i64
  %297 = load i64, ptr %x113, align 8
  %add347 = add i64 %conv346, %297
  store i64 %add347, ptr %x114, align 8
  %298 = load i64, ptr %x114, align 8
  %shr348 = lshr i64 %298, 26
  %conv349 = trunc i64 %shr348 to i32
  store i32 %conv349, ptr %x115, align 4
  %299 = load i64, ptr %x114, align 8
  %and350 = and i64 %299, 67108863
  %conv351 = trunc i64 %and350 to i32
  store i32 %conv351, ptr %x116, align 4
  %300 = load i32, ptr %x115, align 4
  %301 = load i32, ptr %x88, align 4
  %add352 = add i32 %300, %301
  store i32 %add352, ptr %x117, align 4
  %302 = load i32, ptr %x117, align 4
  %shr353 = lshr i32 %302, 25
  %conv354 = trunc i32 %shr353 to i8
  store i8 %conv354, ptr %x118, align 1
  %303 = load i32, ptr %x117, align 4
  %and355 = and i32 %303, 33554431
  store i32 %and355, ptr %x119, align 4
  %304 = load i8, ptr %x118, align 1
  %conv356 = zext i8 %304 to i32
  %305 = load i32, ptr %x91, align 4
  %add357 = add i32 %conv356, %305
  store i32 %add357, ptr %x120, align 4
  %306 = load i32, ptr %x116, align 4
  %307 = load ptr, ptr %out1.addr, align 8
  %arrayidx358 = getelementptr inbounds i32, ptr %307, i64 0
  store i32 %306, ptr %arrayidx358, align 4
  %308 = load i32, ptr %x119, align 4
  %309 = load ptr, ptr %out1.addr, align 8
  %arrayidx359 = getelementptr inbounds i32, ptr %309, i64 1
  store i32 %308, ptr %arrayidx359, align 4
  %310 = load i32, ptr %x120, align 4
  %311 = load ptr, ptr %out1.addr, align 8
  %arrayidx360 = getelementptr inbounds i32, ptr %311, i64 2
  store i32 %310, ptr %arrayidx360, align 4
  %312 = load i32, ptr %x94, align 4
  %313 = load ptr, ptr %out1.addr, align 8
  %arrayidx361 = getelementptr inbounds i32, ptr %313, i64 3
  store i32 %312, ptr %arrayidx361, align 4
  %314 = load i32, ptr %x97, align 4
  %315 = load ptr, ptr %out1.addr, align 8
  %arrayidx362 = getelementptr inbounds i32, ptr %315, i64 4
  store i32 %314, ptr %arrayidx362, align 4
  %316 = load i32, ptr %x100, align 4
  %317 = load ptr, ptr %out1.addr, align 8
  %arrayidx363 = getelementptr inbounds i32, ptr %317, i64 5
  store i32 %316, ptr %arrayidx363, align 4
  %318 = load i32, ptr %x103, align 4
  %319 = load ptr, ptr %out1.addr, align 8
  %arrayidx364 = getelementptr inbounds i32, ptr %319, i64 6
  store i32 %318, ptr %arrayidx364, align 4
  %320 = load i32, ptr %x106, align 4
  %321 = load ptr, ptr %out1.addr, align 8
  %arrayidx365 = getelementptr inbounds i32, ptr %321, i64 7
  store i32 %320, ptr %arrayidx365, align 4
  %322 = load i32, ptr %x109, align 4
  %323 = load ptr, ptr %out1.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %323, i64 8
  store i32 %322, ptr %arrayidx366, align 4
  %324 = load i32, ptr %x112, align 4
  %325 = load ptr, ptr %out1.addr, align 8
  %arrayidx367 = getelementptr inbounds i32, ptr %325, i64 9
  store i32 %324, ptr %arrayidx367, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  %shr = lshr i32 %2, 26
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  %add = add i32 %shr, %4
  store i32 %add, ptr %x2, align 4
  %5 = load i32, ptr %x2, align 4
  %shr2 = lshr i32 %5, 25
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %shr2, %7
  store i32 %add4, ptr %x3, align 4
  %8 = load i32, ptr %x3, align 4
  %shr5 = lshr i32 %8, 26
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %shr5, %10
  store i32 %add7, ptr %x4, align 4
  %11 = load i32, ptr %x4, align 4
  %shr8 = lshr i32 %11, 25
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %shr8, %13
  store i32 %add10, ptr %x5, align 4
  %14 = load i32, ptr %x5, align 4
  %shr11 = lshr i32 %14, 26
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %shr11, %16
  store i32 %add13, ptr %x6, align 4
  %17 = load i32, ptr %x6, align 4
  %shr14 = lshr i32 %17, 25
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %shr14, %19
  store i32 %add16, ptr %x7, align 4
  %20 = load i32, ptr %x7, align 4
  %shr17 = lshr i32 %20, 26
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %shr17, %22
  store i32 %add19, ptr %x8, align 4
  %23 = load i32, ptr %x8, align 4
  %shr20 = lshr i32 %23, 25
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %shr20, %25
  store i32 %add22, ptr %x9, align 4
  %26 = load i32, ptr %x9, align 4
  %shr23 = lshr i32 %26, 26
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %27, i64 9
  %28 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %shr23, %28
  store i32 %add25, ptr %x10, align 4
  %29 = load i32, ptr %x1, align 4
  %and = and i32 %29, 67108863
  %30 = load i32, ptr %x10, align 4
  %shr26 = lshr i32 %30, 25
  %mul = mul i32 %shr26, 19
  %add27 = add i32 %and, %mul
  store i32 %add27, ptr %x11, align 4
  %31 = load i32, ptr %x11, align 4
  %shr28 = lshr i32 %31, 26
  %conv = trunc i32 %shr28 to i8
  %conv29 = zext i8 %conv to i32
  %32 = load i32, ptr %x2, align 4
  %and30 = and i32 %32, 33554431
  %add31 = add i32 %conv29, %and30
  store i32 %add31, ptr %x12, align 4
  %33 = load i32, ptr %x11, align 4
  %and32 = and i32 %33, 67108863
  store i32 %and32, ptr %x13, align 4
  %34 = load i32, ptr %x12, align 4
  %and33 = and i32 %34, 33554431
  store i32 %and33, ptr %x14, align 4
  %35 = load i32, ptr %x12, align 4
  %shr34 = lshr i32 %35, 25
  %conv35 = trunc i32 %shr34 to i8
  %conv36 = zext i8 %conv35 to i32
  %36 = load i32, ptr %x3, align 4
  %and37 = and i32 %36, 67108863
  %add38 = add i32 %conv36, %and37
  store i32 %add38, ptr %x15, align 4
  %37 = load i32, ptr %x4, align 4
  %and39 = and i32 %37, 33554431
  store i32 %and39, ptr %x16, align 4
  %38 = load i32, ptr %x5, align 4
  %and40 = and i32 %38, 67108863
  store i32 %and40, ptr %x17, align 4
  %39 = load i32, ptr %x6, align 4
  %and41 = and i32 %39, 33554431
  store i32 %and41, ptr %x18, align 4
  %40 = load i32, ptr %x7, align 4
  %and42 = and i32 %40, 67108863
  store i32 %and42, ptr %x19, align 4
  %41 = load i32, ptr %x8, align 4
  %and43 = and i32 %41, 33554431
  store i32 %and43, ptr %x20, align 4
  %42 = load i32, ptr %x9, align 4
  %and44 = and i32 %42, 67108863
  store i32 %and44, ptr %x21, align 4
  %43 = load i32, ptr %x10, align 4
  %and45 = and i32 %43, 33554431
  store i32 %and45, ptr %x22, align 4
  %44 = load i32, ptr %x13, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %45, i64 0
  store i32 %44, ptr %arrayidx46, align 4
  %46 = load i32, ptr %x14, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %47, i64 1
  store i32 %46, ptr %arrayidx47, align 4
  %48 = load i32, ptr %x15, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %49, i64 2
  store i32 %48, ptr %arrayidx48, align 4
  %50 = load i32, ptr %x16, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %51, i64 3
  store i32 %50, ptr %arrayidx49, align 4
  %52 = load i32, ptr %x17, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %53, i64 4
  store i32 %52, ptr %arrayidx50, align 4
  %54 = load i32, ptr %x18, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %55, i64 5
  store i32 %54, ptr %arrayidx51, align 4
  %56 = load i32, ptr %x19, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %57, i64 6
  store i32 %56, ptr %arrayidx52, align 4
  %58 = load i32, ptr %x20, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %59, i64 7
  store i32 %58, ptr %arrayidx53, align 4
  %60 = load i32, ptr %x21, align 4
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %61, i64 8
  store i32 %60, ptr %arrayidx54, align 4
  %62 = load i32, ptr %x22, align 4
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %63, i64 9
  store i32 %62, ptr %arrayidx55, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  %add = add i32 %1, %3
  store i32 %add, ptr %x1, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %5, %7
  store i32 %add4, ptr %x2, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 2
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %9, %11
  store i32 %add7, ptr %x3, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %12, i64 3
  %13 = load i32, ptr %arrayidx8, align 4
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 3
  %15 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %13, %15
  store i32 %add10, ptr %x4, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %16, i64 4
  %17 = load i32, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %18, i64 4
  %19 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %17, %19
  store i32 %add13, ptr %x5, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx14, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %22, i64 5
  %23 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %21, %23
  store i32 %add16, ptr %x6, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %24, i64 6
  %25 = load i32, ptr %arrayidx17, align 4
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %26, i64 6
  %27 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %25, %27
  store i32 %add19, ptr %x7, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %28, i64 7
  %29 = load i32, ptr %arrayidx20, align 4
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %30, i64 7
  %31 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %29, %31
  store i32 %add22, ptr %x8, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %32, i64 8
  %33 = load i32, ptr %arrayidx23, align 4
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %34, i64 8
  %35 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %33, %35
  store i32 %add25, ptr %x9, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %36, i64 9
  %37 = load i32, ptr %arrayidx26, align 4
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %38, i64 9
  %39 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %37, %39
  store i32 %add28, ptr %x10, align 4
  %40 = load i32, ptr %x1, align 4
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 %40, ptr %arrayidx29, align 4
  %42 = load i32, ptr %x2, align 4
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %43, i64 1
  store i32 %42, ptr %arrayidx30, align 4
  %44 = load i32, ptr %x3, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %44, ptr %arrayidx31, align 4
  %46 = load i32, ptr %x4, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %47, i64 3
  store i32 %46, ptr %arrayidx32, align 4
  %48 = load i32, ptr %x5, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %49, i64 4
  store i32 %48, ptr %arrayidx33, align 4
  %50 = load i32, ptr %x6, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %51, i64 5
  store i32 %50, ptr %arrayidx34, align 4
  %52 = load i32, ptr %x7, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %53, i64 6
  store i32 %52, ptr %arrayidx35, align 4
  %54 = load i32, ptr %x8, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %55, i64 7
  store i32 %54, ptr %arrayidx36, align 4
  %56 = load i32, ptr %x9, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %57, i64 8
  store i32 %56, ptr %arrayidx37, align 4
  %58 = load i32, ptr %x10, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %59, i64 9
  store i32 %58, ptr %arrayidx38, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 134217690, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  %sub = sub i32 %add, %3
  store i32 %sub, ptr %x1, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx2, align 4
  %add3 = add i32 67108862, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx4, align 4
  %sub5 = sub i32 %add3, %7
  store i32 %sub5, ptr %x2, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %8, i64 2
  %9 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 134217726, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx8, align 4
  %sub9 = sub i32 %add7, %11
  store i32 %sub9, ptr %x3, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %12, i64 3
  %13 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 67108862, %13
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %14, i64 3
  %15 = load i32, ptr %arrayidx12, align 4
  %sub13 = sub i32 %add11, %15
  store i32 %sub13, ptr %x4, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %16, i64 4
  %17 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 134217726, %17
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %18, i64 4
  %19 = load i32, ptr %arrayidx16, align 4
  %sub17 = sub i32 %add15, %19
  store i32 %sub17, ptr %x5, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 67108862, %21
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %22, i64 5
  %23 = load i32, ptr %arrayidx20, align 4
  %sub21 = sub i32 %add19, %23
  store i32 %sub21, ptr %x6, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %24, i64 6
  %25 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 134217726, %25
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %26, i64 6
  %27 = load i32, ptr %arrayidx24, align 4
  %sub25 = sub i32 %add23, %27
  store i32 %sub25, ptr %x7, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %28, i64 7
  %29 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 67108862, %29
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %30, i64 7
  %31 = load i32, ptr %arrayidx28, align 4
  %sub29 = sub i32 %add27, %31
  store i32 %sub29, ptr %x8, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %32, i64 8
  %33 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 134217726, %33
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %34, i64 8
  %35 = load i32, ptr %arrayidx32, align 4
  %sub33 = sub i32 %add31, %35
  store i32 %sub33, ptr %x9, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %36, i64 9
  %37 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 67108862, %37
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %38, i64 9
  %39 = load i32, ptr %arrayidx36, align 4
  %sub37 = sub i32 %add35, %39
  store i32 %sub37, ptr %x10, align 4
  %40 = load i32, ptr %x1, align 4
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 %40, ptr %arrayidx38, align 4
  %42 = load i32, ptr %x2, align 4
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %43, i64 1
  store i32 %42, ptr %arrayidx39, align 4
  %44 = load i32, ptr %x3, align 4
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %44, ptr %arrayidx40, align 4
  %46 = load i32, ptr %x4, align 4
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %47, i64 3
  store i32 %46, ptr %arrayidx41, align 4
  %48 = load i32, ptr %x5, align 4
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %49, i64 4
  store i32 %48, ptr %arrayidx42, align 4
  %50 = load i32, ptr %x6, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %51, i64 5
  store i32 %50, ptr %arrayidx43, align 4
  %52 = load i32, ptr %x7, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %53, i64 6
  store i32 %52, ptr %arrayidx44, align 4
  %54 = load i32, ptr %x8, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %55, i64 7
  store i32 %54, ptr %arrayidx45, align 4
  %56 = load i32, ptr %x9, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %57, i64 8
  store i32 %56, ptr %arrayidx46, align 4
  %58 = load i32, ptr %x10, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %59, i64 9
  store i32 %58, ptr %arrayidx47, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 134217690, %1
  store i32 %sub, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  %sub2 = sub i32 67108862, %3
  store i32 %sub2, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx3, align 4
  %sub4 = sub i32 134217726, %5
  store i32 %sub4, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx5, align 4
  %sub6 = sub i32 67108862, %7
  store i32 %sub6, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx7, align 4
  %sub8 = sub i32 134217726, %9
  store i32 %sub8, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 5
  %11 = load i32, ptr %arrayidx9, align 4
  %sub10 = sub i32 67108862, %11
  store i32 %sub10, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx11, align 4
  %sub12 = sub i32 134217726, %13
  store i32 %sub12, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 7
  %15 = load i32, ptr %arrayidx13, align 4
  %sub14 = sub i32 67108862, %15
  store i32 %sub14, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %16, i64 8
  %17 = load i32, ptr %arrayidx15, align 4
  %sub16 = sub i32 134217726, %17
  store i32 %sub16, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %18, i64 9
  %19 = load i32, ptr %arrayidx17, align 4
  %sub18 = sub i32 67108862, %19
  store i32 %sub18, ptr %x10, align 4
  %20 = load i32, ptr %x1, align 4
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %21, i64 0
  store i32 %20, ptr %arrayidx19, align 4
  %22 = load i32, ptr %x2, align 4
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %arrayidx20, align 4
  %24 = load i32, ptr %x3, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %24, ptr %arrayidx21, align 4
  %26 = load i32, ptr %x4, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %26, ptr %arrayidx22, align 4
  %28 = load i32, ptr %x5, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %28, ptr %arrayidx23, align 4
  %30 = load i32, ptr %x6, align 4
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %31, i64 5
  store i32 %30, ptr %arrayidx24, align 4
  %32 = load i32, ptr %x7, align 4
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %33, i64 6
  store i32 %32, ptr %arrayidx25, align 4
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %35, i64 7
  store i32 %34, ptr %arrayidx26, align 4
  %36 = load i32, ptr %x9, align 4
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %37, i64 8
  store i32 %36, ptr %arrayidx27, align 4
  %38 = load i32, ptr %x10, align 4
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %39, i64 9
  store i32 %38, ptr %arrayidx28, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
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
  %x9 = alloca i32, align 4
  %x10 = alloca i32, align 4
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
  call void @fiat_25519_cmovznz_u32(ptr noundef %x1, i8 noundef zeroext %0, i32 noundef %2, i32 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %arrayidx3, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x2, i8 noundef zeroext %5, i32 noundef %7, i32 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %11, i64 2
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 2
  %14 = load i32, ptr %arrayidx5, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x3, i8 noundef zeroext %10, i32 noundef %12, i32 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx6, align 4
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %18, i64 3
  %19 = load i32, ptr %arrayidx7, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x4, i8 noundef zeroext %15, i32 noundef %17, i32 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %21, i64 4
  %22 = load i32, ptr %arrayidx8, align 4
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %23, i64 4
  %24 = load i32, ptr %arrayidx9, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x5, i8 noundef zeroext %20, i32 noundef %22, i32 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %26, i64 5
  %27 = load i32, ptr %arrayidx10, align 4
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %28, i64 5
  %29 = load i32, ptr %arrayidx11, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x6, i8 noundef zeroext %25, i32 noundef %27, i32 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %31, i64 6
  %32 = load i32, ptr %arrayidx12, align 4
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %33, i64 6
  %34 = load i32, ptr %arrayidx13, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x7, i8 noundef zeroext %30, i32 noundef %32, i32 noundef %34)
  %35 = load i8, ptr %arg1.addr, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %36, i64 7
  %37 = load i32, ptr %arrayidx14, align 4
  %38 = load ptr, ptr %arg3.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %38, i64 7
  %39 = load i32, ptr %arrayidx15, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x8, i8 noundef zeroext %35, i32 noundef %37, i32 noundef %39)
  %40 = load i8, ptr %arg1.addr, align 1
  %41 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %41, i64 8
  %42 = load i32, ptr %arrayidx16, align 4
  %43 = load ptr, ptr %arg3.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %43, i64 8
  %44 = load i32, ptr %arrayidx17, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x9, i8 noundef zeroext %40, i32 noundef %42, i32 noundef %44)
  %45 = load i8, ptr %arg1.addr, align 1
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %46, i64 9
  %47 = load i32, ptr %arrayidx18, align 4
  %48 = load ptr, ptr %arg3.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %48, i64 9
  %49 = load i32, ptr %arrayidx19, align 4
  call void @fiat_25519_cmovznz_u32(ptr noundef %x10, i8 noundef zeroext %45, i32 noundef %47, i32 noundef %49)
  %50 = load i32, ptr %x1, align 4
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %51, i64 0
  store i32 %50, ptr %arrayidx20, align 4
  %52 = load i32, ptr %x2, align 4
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %53, i64 1
  store i32 %52, ptr %arrayidx21, align 4
  %54 = load i32, ptr %x3, align 4
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %55, i64 2
  store i32 %54, ptr %arrayidx22, align 4
  %56 = load i32, ptr %x4, align 4
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %57, i64 3
  store i32 %56, ptr %arrayidx23, align 4
  %58 = load i32, ptr %x5, align 4
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %59, i64 4
  store i32 %58, ptr %arrayidx24, align 4
  %60 = load i32, ptr %x6, align 4
  %61 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %61, i64 5
  store i32 %60, ptr %arrayidx25, align 4
  %62 = load i32, ptr %x7, align 4
  %63 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %63, i64 6
  store i32 %62, ptr %arrayidx26, align 4
  %64 = load i32, ptr %x8, align 4
  %65 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %65, i64 7
  store i32 %64, ptr %arrayidx27, align 4
  %66 = load i32, ptr %x9, align 4
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %67, i64 8
  store i32 %66, ptr %arrayidx28, align 4
  %68 = load i32, ptr %x10, align 4
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %69, i64 9
  store i32 %68, ptr %arrayidx29, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x18 = alloca i8, align 1
  %x19 = alloca i32, align 4
  %x20 = alloca i8, align 1
  %x21 = alloca i32, align 4
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
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i32, align 4
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i8, align 1
  %x55 = alloca i8, align 1
  %x56 = alloca i32, align 4
  %x57 = alloca i8, align 1
  %x58 = alloca i32, align 4
  %x59 = alloca i8, align 1
  %x60 = alloca i32, align 4
  %x61 = alloca i8, align 1
  %x62 = alloca i8, align 1
  %x63 = alloca i32, align 4
  %x64 = alloca i8, align 1
  %x65 = alloca i32, align 4
  %x66 = alloca i8, align 1
  %x67 = alloca i32, align 4
  %x68 = alloca i8, align 1
  %x69 = alloca i8, align 1
  %x70 = alloca i32, align 4
  %x71 = alloca i8, align 1
  %x72 = alloca i32, align 4
  %x73 = alloca i8, align 1
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
  %x76 = alloca i8, align 1
  %x77 = alloca i32, align 4
  %x78 = alloca i8, align 1
  %x79 = alloca i32, align 4
  %x80 = alloca i8, align 1
  %x81 = alloca i32, align 4
  %x82 = alloca i8, align 1
  %x83 = alloca i8, align 1
  %x84 = alloca i8, align 1
  %x85 = alloca i32, align 4
  %x86 = alloca i8, align 1
  %x87 = alloca i32, align 4
  %x88 = alloca i8, align 1
  %x89 = alloca i8, align 1
  %x90 = alloca i32, align 4
  %x91 = alloca i8, align 1
  %x92 = alloca i32, align 4
  %x93 = alloca i8, align 1
  %x94 = alloca i32, align 4
  %x95 = alloca i8, align 1
  %x96 = alloca i8, align 1
  %x97 = alloca i32, align 4
  %x98 = alloca i8, align 1
  %x99 = alloca i32, align 4
  %x100 = alloca i8, align 1
  %x101 = alloca i32, align 4
  %x102 = alloca i8, align 1
  %x103 = alloca i8, align 1
  %x104 = alloca i32, align 4
  %x105 = alloca i8, align 1
  %x106 = alloca i32, align 4
  %x107 = alloca i8, align 1
  %x108 = alloca i32, align 4
  %x109 = alloca i8, align 1
  %x110 = alloca i8, align 1
  %x111 = alloca i32, align 4
  %x112 = alloca i8, align 1
  %x113 = alloca i32, align 4
  %x114 = alloca i8, align 1
  %x115 = alloca i32, align 4
  %x116 = alloca i8, align 1
  %x117 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef 67108845)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef %4, i32 noundef 33554431)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %7, i32 noundef 67108863)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef %10, i32 noundef 33554431)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef %13, i32 noundef 67108863)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %15, i64 5
  %16 = load i32, ptr %arrayidx5, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i32 noundef %16, i32 noundef 33554431)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %18, i64 6
  %19 = load i32, ptr %arrayidx6, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i32 noundef %19, i32 noundef 67108863)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %21, i64 7
  %22 = load i32, ptr %arrayidx7, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i32 noundef %22, i32 noundef 33554431)
  %23 = load i8, ptr %x16, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %24, i64 8
  %25 = load i32, ptr %arrayidx8, align 4
  call void @fiat_25519_subborrowx_u26(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %23, i32 noundef %25, i32 noundef 67108863)
  %26 = load i8, ptr %x18, align 1
  %27 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %27, i64 9
  %28 = load i32, ptr %arrayidx9, align 4
  call void @fiat_25519_subborrowx_u25(ptr noundef %x19, ptr noundef %x20, i8 noundef zeroext %26, i32 noundef %28, i32 noundef 33554431)
  %29 = load i8, ptr %x20, align 1
  call void @fiat_25519_cmovznz_u32(ptr noundef %x21, i8 noundef zeroext %29, i32 noundef 0, i32 noundef -1)
  %30 = load i32, ptr %x1, align 4
  %31 = load i32, ptr %x21, align 4
  %and = and i32 %31, 67108845
  call void @fiat_25519_addcarryx_u26(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext 0, i32 noundef %30, i32 noundef %and)
  %32 = load i8, ptr %x23, align 1
  %33 = load i32, ptr %x3, align 4
  %34 = load i32, ptr %x21, align 4
  %and10 = and i32 %34, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %and10)
  %35 = load i8, ptr %x25, align 1
  %36 = load i32, ptr %x5, align 4
  %37 = load i32, ptr %x21, align 4
  %and11 = and i32 %37, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i32 noundef %36, i32 noundef %and11)
  %38 = load i8, ptr %x27, align 1
  %39 = load i32, ptr %x7, align 4
  %40 = load i32, ptr %x21, align 4
  %and12 = and i32 %40, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i32 noundef %39, i32 noundef %and12)
  %41 = load i8, ptr %x29, align 1
  %42 = load i32, ptr %x9, align 4
  %43 = load i32, ptr %x21, align 4
  %and13 = and i32 %43, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %41, i32 noundef %42, i32 noundef %and13)
  %44 = load i8, ptr %x31, align 1
  %45 = load i32, ptr %x11, align 4
  %46 = load i32, ptr %x21, align 4
  %and14 = and i32 %46, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %44, i32 noundef %45, i32 noundef %and14)
  %47 = load i8, ptr %x33, align 1
  %48 = load i32, ptr %x13, align 4
  %49 = load i32, ptr %x21, align 4
  %and15 = and i32 %49, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %47, i32 noundef %48, i32 noundef %and15)
  %50 = load i8, ptr %x35, align 1
  %51 = load i32, ptr %x15, align 4
  %52 = load i32, ptr %x21, align 4
  %and16 = and i32 %52, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %50, i32 noundef %51, i32 noundef %and16)
  %53 = load i8, ptr %x37, align 1
  %54 = load i32, ptr %x17, align 4
  %55 = load i32, ptr %x21, align 4
  %and17 = and i32 %55, 67108863
  call void @fiat_25519_addcarryx_u26(ptr noundef %x38, ptr noundef %x39, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %and17)
  %56 = load i8, ptr %x39, align 1
  %57 = load i32, ptr %x19, align 4
  %58 = load i32, ptr %x21, align 4
  %and18 = and i32 %58, 33554431
  call void @fiat_25519_addcarryx_u25(ptr noundef %x40, ptr noundef %x41, i8 noundef zeroext %56, i32 noundef %57, i32 noundef %and18)
  %59 = load i32, ptr %x40, align 4
  %shl = shl i32 %59, 6
  store i32 %shl, ptr %x42, align 4
  %60 = load i32, ptr %x38, align 4
  %shl19 = shl i32 %60, 4
  store i32 %shl19, ptr %x43, align 4
  %61 = load i32, ptr %x36, align 4
  %shl20 = shl i32 %61, 3
  store i32 %shl20, ptr %x44, align 4
  %62 = load i32, ptr %x34, align 4
  %mul = mul i32 %62, 2
  store i32 %mul, ptr %x45, align 4
  %63 = load i32, ptr %x30, align 4
  %shl21 = shl i32 %63, 6
  store i32 %shl21, ptr %x46, align 4
  %64 = load i32, ptr %x28, align 4
  %shl22 = shl i32 %64, 5
  store i32 %shl22, ptr %x47, align 4
  %65 = load i32, ptr %x26, align 4
  %shl23 = shl i32 %65, 3
  store i32 %shl23, ptr %x48, align 4
  %66 = load i32, ptr %x24, align 4
  %shl24 = shl i32 %66, 2
  store i32 %shl24, ptr %x49, align 4
  %67 = load i32, ptr %x22, align 4
  %and25 = and i32 %67, 255
  %conv = trunc i32 %and25 to i8
  store i8 %conv, ptr %x50, align 1
  %68 = load i32, ptr %x22, align 4
  %shr = lshr i32 %68, 8
  store i32 %shr, ptr %x51, align 4
  %69 = load i32, ptr %x51, align 4
  %and26 = and i32 %69, 255
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, ptr %x52, align 1
  %70 = load i32, ptr %x51, align 4
  %shr28 = lshr i32 %70, 8
  store i32 %shr28, ptr %x53, align 4
  %71 = load i32, ptr %x53, align 4
  %and29 = and i32 %71, 255
  %conv30 = trunc i32 %and29 to i8
  store i8 %conv30, ptr %x54, align 1
  %72 = load i32, ptr %x53, align 4
  %shr31 = lshr i32 %72, 8
  %conv32 = trunc i32 %shr31 to i8
  store i8 %conv32, ptr %x55, align 1
  %73 = load i32, ptr %x49, align 4
  %74 = load i8, ptr %x55, align 1
  %conv33 = zext i8 %74 to i32
  %add = add i32 %73, %conv33
  store i32 %add, ptr %x56, align 4
  %75 = load i32, ptr %x56, align 4
  %and34 = and i32 %75, 255
  %conv35 = trunc i32 %and34 to i8
  store i8 %conv35, ptr %x57, align 1
  %76 = load i32, ptr %x56, align 4
  %shr36 = lshr i32 %76, 8
  store i32 %shr36, ptr %x58, align 4
  %77 = load i32, ptr %x58, align 4
  %and37 = and i32 %77, 255
  %conv38 = trunc i32 %and37 to i8
  store i8 %conv38, ptr %x59, align 1
  %78 = load i32, ptr %x58, align 4
  %shr39 = lshr i32 %78, 8
  store i32 %shr39, ptr %x60, align 4
  %79 = load i32, ptr %x60, align 4
  %and40 = and i32 %79, 255
  %conv41 = trunc i32 %and40 to i8
  store i8 %conv41, ptr %x61, align 1
  %80 = load i32, ptr %x60, align 4
  %shr42 = lshr i32 %80, 8
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, ptr %x62, align 1
  %81 = load i32, ptr %x48, align 4
  %82 = load i8, ptr %x62, align 1
  %conv44 = zext i8 %82 to i32
  %add45 = add i32 %81, %conv44
  store i32 %add45, ptr %x63, align 4
  %83 = load i32, ptr %x63, align 4
  %and46 = and i32 %83, 255
  %conv47 = trunc i32 %and46 to i8
  store i8 %conv47, ptr %x64, align 1
  %84 = load i32, ptr %x63, align 4
  %shr48 = lshr i32 %84, 8
  store i32 %shr48, ptr %x65, align 4
  %85 = load i32, ptr %x65, align 4
  %and49 = and i32 %85, 255
  %conv50 = trunc i32 %and49 to i8
  store i8 %conv50, ptr %x66, align 1
  %86 = load i32, ptr %x65, align 4
  %shr51 = lshr i32 %86, 8
  store i32 %shr51, ptr %x67, align 4
  %87 = load i32, ptr %x67, align 4
  %and52 = and i32 %87, 255
  %conv53 = trunc i32 %and52 to i8
  store i8 %conv53, ptr %x68, align 1
  %88 = load i32, ptr %x67, align 4
  %shr54 = lshr i32 %88, 8
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, ptr %x69, align 1
  %89 = load i32, ptr %x47, align 4
  %90 = load i8, ptr %x69, align 1
  %conv56 = zext i8 %90 to i32
  %add57 = add i32 %89, %conv56
  store i32 %add57, ptr %x70, align 4
  %91 = load i32, ptr %x70, align 4
  %and58 = and i32 %91, 255
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, ptr %x71, align 1
  %92 = load i32, ptr %x70, align 4
  %shr60 = lshr i32 %92, 8
  store i32 %shr60, ptr %x72, align 4
  %93 = load i32, ptr %x72, align 4
  %and61 = and i32 %93, 255
  %conv62 = trunc i32 %and61 to i8
  store i8 %conv62, ptr %x73, align 1
  %94 = load i32, ptr %x72, align 4
  %shr63 = lshr i32 %94, 8
  store i32 %shr63, ptr %x74, align 4
  %95 = load i32, ptr %x74, align 4
  %and64 = and i32 %95, 255
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, ptr %x75, align 1
  %96 = load i32, ptr %x74, align 4
  %shr66 = lshr i32 %96, 8
  %conv67 = trunc i32 %shr66 to i8
  store i8 %conv67, ptr %x76, align 1
  %97 = load i32, ptr %x46, align 4
  %98 = load i8, ptr %x76, align 1
  %conv68 = zext i8 %98 to i32
  %add69 = add i32 %97, %conv68
  store i32 %add69, ptr %x77, align 4
  %99 = load i32, ptr %x77, align 4
  %and70 = and i32 %99, 255
  %conv71 = trunc i32 %and70 to i8
  store i8 %conv71, ptr %x78, align 1
  %100 = load i32, ptr %x77, align 4
  %shr72 = lshr i32 %100, 8
  store i32 %shr72, ptr %x79, align 4
  %101 = load i32, ptr %x79, align 4
  %and73 = and i32 %101, 255
  %conv74 = trunc i32 %and73 to i8
  store i8 %conv74, ptr %x80, align 1
  %102 = load i32, ptr %x79, align 4
  %shr75 = lshr i32 %102, 8
  store i32 %shr75, ptr %x81, align 4
  %103 = load i32, ptr %x81, align 4
  %and76 = and i32 %103, 255
  %conv77 = trunc i32 %and76 to i8
  store i8 %conv77, ptr %x82, align 1
  %104 = load i32, ptr %x81, align 4
  %shr78 = lshr i32 %104, 8
  %conv79 = trunc i32 %shr78 to i8
  store i8 %conv79, ptr %x83, align 1
  %105 = load i32, ptr %x32, align 4
  %and80 = and i32 %105, 255
  %conv81 = trunc i32 %and80 to i8
  store i8 %conv81, ptr %x84, align 1
  %106 = load i32, ptr %x32, align 4
  %shr82 = lshr i32 %106, 8
  store i32 %shr82, ptr %x85, align 4
  %107 = load i32, ptr %x85, align 4
  %and83 = and i32 %107, 255
  %conv84 = trunc i32 %and83 to i8
  store i8 %conv84, ptr %x86, align 1
  %108 = load i32, ptr %x85, align 4
  %shr85 = lshr i32 %108, 8
  store i32 %shr85, ptr %x87, align 4
  %109 = load i32, ptr %x87, align 4
  %and86 = and i32 %109, 255
  %conv87 = trunc i32 %and86 to i8
  store i8 %conv87, ptr %x88, align 1
  %110 = load i32, ptr %x87, align 4
  %shr88 = lshr i32 %110, 8
  %conv89 = trunc i32 %shr88 to i8
  store i8 %conv89, ptr %x89, align 1
  %111 = load i32, ptr %x45, align 4
  %112 = load i8, ptr %x89, align 1
  %conv90 = zext i8 %112 to i32
  %add91 = add i32 %111, %conv90
  store i32 %add91, ptr %x90, align 4
  %113 = load i32, ptr %x90, align 4
  %and92 = and i32 %113, 255
  %conv93 = trunc i32 %and92 to i8
  store i8 %conv93, ptr %x91, align 1
  %114 = load i32, ptr %x90, align 4
  %shr94 = lshr i32 %114, 8
  store i32 %shr94, ptr %x92, align 4
  %115 = load i32, ptr %x92, align 4
  %and95 = and i32 %115, 255
  %conv96 = trunc i32 %and95 to i8
  store i8 %conv96, ptr %x93, align 1
  %116 = load i32, ptr %x92, align 4
  %shr97 = lshr i32 %116, 8
  store i32 %shr97, ptr %x94, align 4
  %117 = load i32, ptr %x94, align 4
  %and98 = and i32 %117, 255
  %conv99 = trunc i32 %and98 to i8
  store i8 %conv99, ptr %x95, align 1
  %118 = load i32, ptr %x94, align 4
  %shr100 = lshr i32 %118, 8
  %conv101 = trunc i32 %shr100 to i8
  store i8 %conv101, ptr %x96, align 1
  %119 = load i32, ptr %x44, align 4
  %120 = load i8, ptr %x96, align 1
  %conv102 = zext i8 %120 to i32
  %add103 = add i32 %119, %conv102
  store i32 %add103, ptr %x97, align 4
  %121 = load i32, ptr %x97, align 4
  %and104 = and i32 %121, 255
  %conv105 = trunc i32 %and104 to i8
  store i8 %conv105, ptr %x98, align 1
  %122 = load i32, ptr %x97, align 4
  %shr106 = lshr i32 %122, 8
  store i32 %shr106, ptr %x99, align 4
  %123 = load i32, ptr %x99, align 4
  %and107 = and i32 %123, 255
  %conv108 = trunc i32 %and107 to i8
  store i8 %conv108, ptr %x100, align 1
  %124 = load i32, ptr %x99, align 4
  %shr109 = lshr i32 %124, 8
  store i32 %shr109, ptr %x101, align 4
  %125 = load i32, ptr %x101, align 4
  %and110 = and i32 %125, 255
  %conv111 = trunc i32 %and110 to i8
  store i8 %conv111, ptr %x102, align 1
  %126 = load i32, ptr %x101, align 4
  %shr112 = lshr i32 %126, 8
  %conv113 = trunc i32 %shr112 to i8
  store i8 %conv113, ptr %x103, align 1
  %127 = load i32, ptr %x43, align 4
  %128 = load i8, ptr %x103, align 1
  %conv114 = zext i8 %128 to i32
  %add115 = add i32 %127, %conv114
  store i32 %add115, ptr %x104, align 4
  %129 = load i32, ptr %x104, align 4
  %and116 = and i32 %129, 255
  %conv117 = trunc i32 %and116 to i8
  store i8 %conv117, ptr %x105, align 1
  %130 = load i32, ptr %x104, align 4
  %shr118 = lshr i32 %130, 8
  store i32 %shr118, ptr %x106, align 4
  %131 = load i32, ptr %x106, align 4
  %and119 = and i32 %131, 255
  %conv120 = trunc i32 %and119 to i8
  store i8 %conv120, ptr %x107, align 1
  %132 = load i32, ptr %x106, align 4
  %shr121 = lshr i32 %132, 8
  store i32 %shr121, ptr %x108, align 4
  %133 = load i32, ptr %x108, align 4
  %and122 = and i32 %133, 255
  %conv123 = trunc i32 %and122 to i8
  store i8 %conv123, ptr %x109, align 1
  %134 = load i32, ptr %x108, align 4
  %shr124 = lshr i32 %134, 8
  %conv125 = trunc i32 %shr124 to i8
  store i8 %conv125, ptr %x110, align 1
  %135 = load i32, ptr %x42, align 4
  %136 = load i8, ptr %x110, align 1
  %conv126 = zext i8 %136 to i32
  %add127 = add i32 %135, %conv126
  store i32 %add127, ptr %x111, align 4
  %137 = load i32, ptr %x111, align 4
  %and128 = and i32 %137, 255
  %conv129 = trunc i32 %and128 to i8
  store i8 %conv129, ptr %x112, align 1
  %138 = load i32, ptr %x111, align 4
  %shr130 = lshr i32 %138, 8
  store i32 %shr130, ptr %x113, align 4
  %139 = load i32, ptr %x113, align 4
  %and131 = and i32 %139, 255
  %conv132 = trunc i32 %and131 to i8
  store i8 %conv132, ptr %x114, align 1
  %140 = load i32, ptr %x113, align 4
  %shr133 = lshr i32 %140, 8
  store i32 %shr133, ptr %x115, align 4
  %141 = load i32, ptr %x115, align 4
  %and134 = and i32 %141, 255
  %conv135 = trunc i32 %and134 to i8
  store i8 %conv135, ptr %x116, align 1
  %142 = load i32, ptr %x115, align 4
  %shr136 = lshr i32 %142, 8
  %conv137 = trunc i32 %shr136 to i8
  store i8 %conv137, ptr %x117, align 1
  %143 = load i8, ptr %x50, align 1
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %144, i64 0
  store i8 %143, ptr %arrayidx138, align 1
  %145 = load i8, ptr %x52, align 1
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %146, i64 1
  store i8 %145, ptr %arrayidx139, align 1
  %147 = load i8, ptr %x54, align 1
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %148, i64 2
  store i8 %147, ptr %arrayidx140, align 1
  %149 = load i8, ptr %x57, align 1
  %150 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %150, i64 3
  store i8 %149, ptr %arrayidx141, align 1
  %151 = load i8, ptr %x59, align 1
  %152 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %152, i64 4
  store i8 %151, ptr %arrayidx142, align 1
  %153 = load i8, ptr %x61, align 1
  %154 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %154, i64 5
  store i8 %153, ptr %arrayidx143, align 1
  %155 = load i8, ptr %x64, align 1
  %156 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %156, i64 6
  store i8 %155, ptr %arrayidx144, align 1
  %157 = load i8, ptr %x66, align 1
  %158 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %158, i64 7
  store i8 %157, ptr %arrayidx145, align 1
  %159 = load i8, ptr %x68, align 1
  %160 = load ptr, ptr %out1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %160, i64 8
  store i8 %159, ptr %arrayidx146, align 1
  %161 = load i8, ptr %x71, align 1
  %162 = load ptr, ptr %out1.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %162, i64 9
  store i8 %161, ptr %arrayidx147, align 1
  %163 = load i8, ptr %x73, align 1
  %164 = load ptr, ptr %out1.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %164, i64 10
  store i8 %163, ptr %arrayidx148, align 1
  %165 = load i8, ptr %x75, align 1
  %166 = load ptr, ptr %out1.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %166, i64 11
  store i8 %165, ptr %arrayidx149, align 1
  %167 = load i8, ptr %x78, align 1
  %168 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %168, i64 12
  store i8 %167, ptr %arrayidx150, align 1
  %169 = load i8, ptr %x80, align 1
  %170 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %170, i64 13
  store i8 %169, ptr %arrayidx151, align 1
  %171 = load i8, ptr %x82, align 1
  %172 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %172, i64 14
  store i8 %171, ptr %arrayidx152, align 1
  %173 = load i8, ptr %x83, align 1
  %174 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %174, i64 15
  store i8 %173, ptr %arrayidx153, align 1
  %175 = load i8, ptr %x84, align 1
  %176 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %176, i64 16
  store i8 %175, ptr %arrayidx154, align 1
  %177 = load i8, ptr %x86, align 1
  %178 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %178, i64 17
  store i8 %177, ptr %arrayidx155, align 1
  %179 = load i8, ptr %x88, align 1
  %180 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %180, i64 18
  store i8 %179, ptr %arrayidx156, align 1
  %181 = load i8, ptr %x91, align 1
  %182 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %182, i64 19
  store i8 %181, ptr %arrayidx157, align 1
  %183 = load i8, ptr %x93, align 1
  %184 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %184, i64 20
  store i8 %183, ptr %arrayidx158, align 1
  %185 = load i8, ptr %x95, align 1
  %186 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %186, i64 21
  store i8 %185, ptr %arrayidx159, align 1
  %187 = load i8, ptr %x98, align 1
  %188 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %188, i64 22
  store i8 %187, ptr %arrayidx160, align 1
  %189 = load i8, ptr %x100, align 1
  %190 = load ptr, ptr %out1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %190, i64 23
  store i8 %189, ptr %arrayidx161, align 1
  %191 = load i8, ptr %x102, align 1
  %192 = load ptr, ptr %out1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %192, i64 24
  store i8 %191, ptr %arrayidx162, align 1
  %193 = load i8, ptr %x105, align 1
  %194 = load ptr, ptr %out1.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %194, i64 25
  store i8 %193, ptr %arrayidx163, align 1
  %195 = load i8, ptr %x107, align 1
  %196 = load ptr, ptr %out1.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %196, i64 26
  store i8 %195, ptr %arrayidx164, align 1
  %197 = load i8, ptr %x109, align 1
  %198 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %198, i64 27
  store i8 %197, ptr %arrayidx165, align 1
  %199 = load i8, ptr %x112, align 1
  %200 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %200, i64 28
  store i8 %199, ptr %arrayidx166, align 1
  %201 = load i8, ptr %x114, align 1
  %202 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %202, i64 29
  store i8 %201, ptr %arrayidx167, align 1
  %203 = load i8, ptr %x116, align 1
  %204 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %204, i64 30
  store i8 %203, ptr %arrayidx168, align 1
  %205 = load i8, ptr %x117, align 1
  %206 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %206, i64 31
  store i8 %205, ptr %arrayidx169, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x16 = alloca i8, align 1
  %x17 = alloca i32, align 4
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
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i32, align 4
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i8, align 1
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i8, align 1
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  %x51 = alloca i32, align 4
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i32, align 4
  %x55 = alloca i32, align 4
  %x56 = alloca i32, align 4
  %x57 = alloca i32, align 4
  %x58 = alloca i32, align 4
  %x59 = alloca i32, align 4
  %x60 = alloca i8, align 1
  %x61 = alloca i32, align 4
  %x62 = alloca i32, align 4
  %x63 = alloca i32, align 4
  %x64 = alloca i32, align 4
  %x65 = alloca i8, align 1
  %x66 = alloca i32, align 4
  %x67 = alloca i32, align 4
  %x68 = alloca i32, align 4
  %x69 = alloca i32, align 4
  %x70 = alloca i8, align 1
  %x71 = alloca i32, align 4
  %x72 = alloca i32, align 4
  %x73 = alloca i32, align 4
  %x74 = alloca i32, align 4
  %x75 = alloca i8, align 1
  %x76 = alloca i32, align 4
  %x77 = alloca i32, align 4
  %x78 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 31
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 18
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 30
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 10
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 29
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 2
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 28
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 20
  store i32 %shl9, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 27
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl i32 %conv11, 12
  store i32 %shl12, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 26
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl i32 %conv14, 4
  store i32 %shl15, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 25
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %shl18 = shl i32 %conv17, 21
  store i32 %shl18, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 24
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %shl21 = shl i32 %conv20, 13
  store i32 %shl21, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 23
  %17 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %shl24 = shl i32 %conv23, 5
  store i32 %shl24, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %18, i64 22
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %shl27 = shl i32 %conv26, 23
  store i32 %shl27, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %20, i64 21
  %21 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %21 to i32
  %shl30 = shl i32 %conv29, 15
  store i32 %shl30, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 20
  %23 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %23 to i32
  %shl33 = shl i32 %conv32, 7
  store i32 %shl33, ptr %x12, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 19
  %25 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %25 to i32
  %shl36 = shl i32 %conv35, 24
  store i32 %shl36, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %26, i64 18
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %27 to i32
  %shl39 = shl i32 %conv38, 16
  store i32 %shl39, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %shl42 = shl i32 %conv41, 8
  store i32 %shl42, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %30, i64 16
  %31 = load i8, ptr %arrayidx43, align 1
  store i8 %31, ptr %x16, align 1
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 15
  %33 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %33 to i32
  %shl46 = shl i32 %conv45, 18
  store i32 %shl46, ptr %x17, align 4
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 14
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %35 to i32
  %shl49 = shl i32 %conv48, 10
  store i32 %shl49, ptr %x18, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %36, i64 13
  %37 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %37 to i32
  %shl52 = shl i32 %conv51, 2
  store i32 %shl52, ptr %x19, align 4
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %38, i64 12
  %39 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %39 to i32
  %shl55 = shl i32 %conv54, 19
  store i32 %shl55, ptr %x20, align 4
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %40, i64 11
  %41 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %41 to i32
  %shl58 = shl i32 %conv57, 11
  store i32 %shl58, ptr %x21, align 4
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %42, i64 10
  %43 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %43 to i32
  %shl61 = shl i32 %conv60, 3
  store i32 %shl61, ptr %x22, align 4
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %44, i64 9
  %45 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %45 to i32
  %shl64 = shl i32 %conv63, 21
  store i32 %shl64, ptr %x23, align 4
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %46, i64 8
  %47 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %47 to i32
  %shl67 = shl i32 %conv66, 13
  store i32 %shl67, ptr %x24, align 4
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %48, i64 7
  %49 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %49 to i32
  %shl70 = shl i32 %conv69, 5
  store i32 %shl70, ptr %x25, align 4
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %50, i64 6
  %51 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %51 to i32
  %shl73 = shl i32 %conv72, 22
  store i32 %shl73, ptr %x26, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %52, i64 5
  %53 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %53 to i32
  %shl76 = shl i32 %conv75, 14
  store i32 %shl76, ptr %x27, align 4
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %55 to i32
  %shl79 = shl i32 %conv78, 6
  store i32 %shl79, ptr %x28, align 4
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %56, i64 3
  %57 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %57 to i32
  %shl82 = shl i32 %conv81, 24
  store i32 %shl82, ptr %x29, align 4
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %59 to i32
  %shl85 = shl i32 %conv84, 16
  store i32 %shl85, ptr %x30, align 4
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %60, i64 1
  %61 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %61 to i32
  %shl88 = shl i32 %conv87, 8
  store i32 %shl88, ptr %x31, align 4
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx89, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load i32, ptr %x31, align 4
  %65 = load i8, ptr %x32, align 1
  %conv90 = zext i8 %65 to i32
  %add = add i32 %64, %conv90
  store i32 %add, ptr %x33, align 4
  %66 = load i32, ptr %x30, align 4
  %67 = load i32, ptr %x33, align 4
  %add91 = add i32 %66, %67
  store i32 %add91, ptr %x34, align 4
  %68 = load i32, ptr %x29, align 4
  %69 = load i32, ptr %x34, align 4
  %add92 = add i32 %68, %69
  store i32 %add92, ptr %x35, align 4
  %70 = load i32, ptr %x35, align 4
  %and = and i32 %70, 67108863
  store i32 %and, ptr %x36, align 4
  %71 = load i32, ptr %x35, align 4
  %shr = lshr i32 %71, 26
  %conv93 = trunc i32 %shr to i8
  store i8 %conv93, ptr %x37, align 1
  %72 = load i32, ptr %x28, align 4
  %73 = load i8, ptr %x37, align 1
  %conv94 = zext i8 %73 to i32
  %add95 = add i32 %72, %conv94
  store i32 %add95, ptr %x38, align 4
  %74 = load i32, ptr %x27, align 4
  %75 = load i32, ptr %x38, align 4
  %add96 = add i32 %74, %75
  store i32 %add96, ptr %x39, align 4
  %76 = load i32, ptr %x26, align 4
  %77 = load i32, ptr %x39, align 4
  %add97 = add i32 %76, %77
  store i32 %add97, ptr %x40, align 4
  %78 = load i32, ptr %x40, align 4
  %and98 = and i32 %78, 33554431
  store i32 %and98, ptr %x41, align 4
  %79 = load i32, ptr %x40, align 4
  %shr99 = lshr i32 %79, 25
  %conv100 = trunc i32 %shr99 to i8
  store i8 %conv100, ptr %x42, align 1
  %80 = load i32, ptr %x25, align 4
  %81 = load i8, ptr %x42, align 1
  %conv101 = zext i8 %81 to i32
  %add102 = add i32 %80, %conv101
  store i32 %add102, ptr %x43, align 4
  %82 = load i32, ptr %x24, align 4
  %83 = load i32, ptr %x43, align 4
  %add103 = add i32 %82, %83
  store i32 %add103, ptr %x44, align 4
  %84 = load i32, ptr %x23, align 4
  %85 = load i32, ptr %x44, align 4
  %add104 = add i32 %84, %85
  store i32 %add104, ptr %x45, align 4
  %86 = load i32, ptr %x45, align 4
  %and105 = and i32 %86, 67108863
  store i32 %and105, ptr %x46, align 4
  %87 = load i32, ptr %x45, align 4
  %shr106 = lshr i32 %87, 26
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, ptr %x47, align 1
  %88 = load i32, ptr %x22, align 4
  %89 = load i8, ptr %x47, align 1
  %conv108 = zext i8 %89 to i32
  %add109 = add i32 %88, %conv108
  store i32 %add109, ptr %x48, align 4
  %90 = load i32, ptr %x21, align 4
  %91 = load i32, ptr %x48, align 4
  %add110 = add i32 %90, %91
  store i32 %add110, ptr %x49, align 4
  %92 = load i32, ptr %x20, align 4
  %93 = load i32, ptr %x49, align 4
  %add111 = add i32 %92, %93
  store i32 %add111, ptr %x50, align 4
  %94 = load i32, ptr %x50, align 4
  %and112 = and i32 %94, 33554431
  store i32 %and112, ptr %x51, align 4
  %95 = load i32, ptr %x50, align 4
  %shr113 = lshr i32 %95, 25
  %conv114 = trunc i32 %shr113 to i8
  store i8 %conv114, ptr %x52, align 1
  %96 = load i32, ptr %x19, align 4
  %97 = load i8, ptr %x52, align 1
  %conv115 = zext i8 %97 to i32
  %add116 = add i32 %96, %conv115
  store i32 %add116, ptr %x53, align 4
  %98 = load i32, ptr %x18, align 4
  %99 = load i32, ptr %x53, align 4
  %add117 = add i32 %98, %99
  store i32 %add117, ptr %x54, align 4
  %100 = load i32, ptr %x17, align 4
  %101 = load i32, ptr %x54, align 4
  %add118 = add i32 %100, %101
  store i32 %add118, ptr %x55, align 4
  %102 = load i32, ptr %x15, align 4
  %103 = load i8, ptr %x16, align 1
  %conv119 = zext i8 %103 to i32
  %add120 = add i32 %102, %conv119
  store i32 %add120, ptr %x56, align 4
  %104 = load i32, ptr %x14, align 4
  %105 = load i32, ptr %x56, align 4
  %add121 = add i32 %104, %105
  store i32 %add121, ptr %x57, align 4
  %106 = load i32, ptr %x13, align 4
  %107 = load i32, ptr %x57, align 4
  %add122 = add i32 %106, %107
  store i32 %add122, ptr %x58, align 4
  %108 = load i32, ptr %x58, align 4
  %and123 = and i32 %108, 33554431
  store i32 %and123, ptr %x59, align 4
  %109 = load i32, ptr %x58, align 4
  %shr124 = lshr i32 %109, 25
  %conv125 = trunc i32 %shr124 to i8
  store i8 %conv125, ptr %x60, align 1
  %110 = load i32, ptr %x12, align 4
  %111 = load i8, ptr %x60, align 1
  %conv126 = zext i8 %111 to i32
  %add127 = add i32 %110, %conv126
  store i32 %add127, ptr %x61, align 4
  %112 = load i32, ptr %x11, align 4
  %113 = load i32, ptr %x61, align 4
  %add128 = add i32 %112, %113
  store i32 %add128, ptr %x62, align 4
  %114 = load i32, ptr %x10, align 4
  %115 = load i32, ptr %x62, align 4
  %add129 = add i32 %114, %115
  store i32 %add129, ptr %x63, align 4
  %116 = load i32, ptr %x63, align 4
  %and130 = and i32 %116, 67108863
  store i32 %and130, ptr %x64, align 4
  %117 = load i32, ptr %x63, align 4
  %shr131 = lshr i32 %117, 26
  %conv132 = trunc i32 %shr131 to i8
  store i8 %conv132, ptr %x65, align 1
  %118 = load i32, ptr %x9, align 4
  %119 = load i8, ptr %x65, align 1
  %conv133 = zext i8 %119 to i32
  %add134 = add i32 %118, %conv133
  store i32 %add134, ptr %x66, align 4
  %120 = load i32, ptr %x8, align 4
  %121 = load i32, ptr %x66, align 4
  %add135 = add i32 %120, %121
  store i32 %add135, ptr %x67, align 4
  %122 = load i32, ptr %x7, align 4
  %123 = load i32, ptr %x67, align 4
  %add136 = add i32 %122, %123
  store i32 %add136, ptr %x68, align 4
  %124 = load i32, ptr %x68, align 4
  %and137 = and i32 %124, 33554431
  store i32 %and137, ptr %x69, align 4
  %125 = load i32, ptr %x68, align 4
  %shr138 = lshr i32 %125, 25
  %conv139 = trunc i32 %shr138 to i8
  store i8 %conv139, ptr %x70, align 1
  %126 = load i32, ptr %x6, align 4
  %127 = load i8, ptr %x70, align 1
  %conv140 = zext i8 %127 to i32
  %add141 = add i32 %126, %conv140
  store i32 %add141, ptr %x71, align 4
  %128 = load i32, ptr %x5, align 4
  %129 = load i32, ptr %x71, align 4
  %add142 = add i32 %128, %129
  store i32 %add142, ptr %x72, align 4
  %130 = load i32, ptr %x4, align 4
  %131 = load i32, ptr %x72, align 4
  %add143 = add i32 %130, %131
  store i32 %add143, ptr %x73, align 4
  %132 = load i32, ptr %x73, align 4
  %and144 = and i32 %132, 67108863
  store i32 %and144, ptr %x74, align 4
  %133 = load i32, ptr %x73, align 4
  %shr145 = lshr i32 %133, 26
  %conv146 = trunc i32 %shr145 to i8
  store i8 %conv146, ptr %x75, align 1
  %134 = load i32, ptr %x3, align 4
  %135 = load i8, ptr %x75, align 1
  %conv147 = zext i8 %135 to i32
  %add148 = add i32 %134, %conv147
  store i32 %add148, ptr %x76, align 4
  %136 = load i32, ptr %x2, align 4
  %137 = load i32, ptr %x76, align 4
  %add149 = add i32 %136, %137
  store i32 %add149, ptr %x77, align 4
  %138 = load i32, ptr %x1, align 4
  %139 = load i32, ptr %x77, align 4
  %add150 = add i32 %138, %139
  store i32 %add150, ptr %x78, align 4
  %140 = load i32, ptr %x36, align 4
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, ptr %141, i64 0
  store i32 %140, ptr %arrayidx151, align 4
  %142 = load i32, ptr %x41, align 4
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %143, i64 1
  store i32 %142, ptr %arrayidx152, align 4
  %144 = load i32, ptr %x46, align 4
  %145 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, ptr %145, i64 2
  store i32 %144, ptr %arrayidx153, align 4
  %146 = load i32, ptr %x51, align 4
  %147 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, ptr %147, i64 3
  store i32 %146, ptr %arrayidx154, align 4
  %148 = load i32, ptr %x55, align 4
  %149 = load ptr, ptr %out1.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, ptr %149, i64 4
  store i32 %148, ptr %arrayidx155, align 4
  %150 = load i32, ptr %x59, align 4
  %151 = load ptr, ptr %out1.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, ptr %151, i64 5
  store i32 %150, ptr %arrayidx156, align 4
  %152 = load i32, ptr %x64, align 4
  %153 = load ptr, ptr %out1.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %153, i64 6
  store i32 %152, ptr %arrayidx157, align 4
  %154 = load i32, ptr %x69, align 4
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %155, i64 7
  store i32 %154, ptr %arrayidx158, align 4
  %156 = load i32, ptr %x74, align 4
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx159 = getelementptr inbounds i32, ptr %157, i64 8
  store i32 %156, ptr %arrayidx159, align 4
  %158 = load i32, ptr %x78, align 4
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, ptr %159, i64 9
  store i32 %158, ptr %arrayidx160, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx3, align 4
  store i32 %7, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx4, align 4
  store i32 %9, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 5
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 6
  %13 = load i32, ptr %arrayidx6, align 4
  store i32 %13, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 7
  %15 = load i32, ptr %arrayidx7, align 4
  store i32 %15, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 8
  %17 = load i32, ptr %arrayidx8, align 4
  store i32 %17, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 9
  %19 = load i32, ptr %arrayidx9, align 4
  store i32 %19, ptr %x10, align 4
  %20 = load i32, ptr %x1, align 4
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %21, i64 0
  store i32 %20, ptr %arrayidx10, align 4
  %22 = load i32, ptr %x2, align 4
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %arrayidx11, align 4
  %24 = load i32, ptr %x3, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %24, ptr %arrayidx12, align 4
  %26 = load i32, ptr %x4, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %26, ptr %arrayidx13, align 4
  %28 = load i32, ptr %x5, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %28, ptr %arrayidx14, align 4
  %30 = load i32, ptr %x6, align 4
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %31, i64 5
  store i32 %30, ptr %arrayidx15, align 4
  %32 = load i32, ptr %x7, align 4
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %33, i64 6
  store i32 %32, ptr %arrayidx16, align 4
  %34 = load i32, ptr %x8, align 4
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %35, i64 7
  store i32 %34, ptr %arrayidx17, align 4
  %36 = load i32, ptr %x9, align 4
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %37, i64 8
  store i32 %36, ptr %arrayidx18, align 4
  %38 = load i32, ptr %x10, align 4
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 9
  store i32 %38, ptr %arrayidx19, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_carry_scmul_121666(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x11 = alloca i32, align 4
  %x12 = alloca i32, align 4
  %x13 = alloca i64, align 8
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i64, align 8
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i64, align 8
  %x20 = alloca i32, align 4
  %x21 = alloca i32, align 4
  %x22 = alloca i64, align 8
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i64, align 8
  %x26 = alloca i32, align 4
  %x27 = alloca i32, align 4
  %x28 = alloca i64, align 8
  %x29 = alloca i32, align 4
  %x30 = alloca i32, align 4
  %x31 = alloca i64, align 8
  %x32 = alloca i32, align 4
  %x33 = alloca i32, align 4
  %x34 = alloca i64, align 8
  %x35 = alloca i32, align 4
  %x36 = alloca i32, align 4
  %x37 = alloca i64, align 8
  %x38 = alloca i32, align 4
  %x39 = alloca i32, align 4
  %x40 = alloca i32, align 4
  %x41 = alloca i32, align 4
  %x42 = alloca i8, align 1
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i8, align 1
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 9
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 121666, %conv
  store i64 %mul, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 8
  %3 = load i32, ptr %arrayidx1, align 4
  %conv2 = zext i32 %3 to i64
  %mul3 = mul i64 121666, %conv2
  store i64 %mul3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 7
  %5 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %5 to i64
  %mul6 = mul i64 121666, %conv5
  store i64 %mul6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 6
  %7 = load i32, ptr %arrayidx7, align 4
  %conv8 = zext i32 %7 to i64
  %mul9 = mul i64 121666, %conv8
  store i64 %mul9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %8, i64 5
  %9 = load i32, ptr %arrayidx10, align 4
  %conv11 = zext i32 %9 to i64
  %mul12 = mul i64 121666, %conv11
  store i64 %mul12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 4
  %11 = load i32, ptr %arrayidx13, align 4
  %conv14 = zext i32 %11 to i64
  %mul15 = mul i64 121666, %conv14
  store i64 %mul15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 3
  %13 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %13 to i64
  %mul18 = mul i64 121666, %conv17
  store i64 %mul18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %14, i64 2
  %15 = load i32, ptr %arrayidx19, align 4
  %conv20 = zext i32 %15 to i64
  %mul21 = mul i64 121666, %conv20
  store i64 %mul21, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx22, align 4
  %conv23 = zext i32 %17 to i64
  %mul24 = mul i64 121666, %conv23
  store i64 %mul24, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %18, i64 0
  %19 = load i32, ptr %arrayidx25, align 4
  %conv26 = zext i32 %19 to i64
  %mul27 = mul i64 121666, %conv26
  store i64 %mul27, ptr %x10, align 8
  %20 = load i64, ptr %x10, align 8
  %shr = lshr i64 %20, 26
  %conv28 = trunc i64 %shr to i32
  store i32 %conv28, ptr %x11, align 4
  %21 = load i64, ptr %x10, align 8
  %and = and i64 %21, 67108863
  %conv29 = trunc i64 %and to i32
  store i32 %conv29, ptr %x12, align 4
  %22 = load i32, ptr %x11, align 4
  %conv30 = zext i32 %22 to i64
  %23 = load i64, ptr %x9, align 8
  %add = add i64 %conv30, %23
  store i64 %add, ptr %x13, align 8
  %24 = load i64, ptr %x13, align 8
  %shr31 = lshr i64 %24, 25
  %conv32 = trunc i64 %shr31 to i32
  store i32 %conv32, ptr %x14, align 4
  %25 = load i64, ptr %x13, align 8
  %and33 = and i64 %25, 33554431
  %conv34 = trunc i64 %and33 to i32
  store i32 %conv34, ptr %x15, align 4
  %26 = load i32, ptr %x14, align 4
  %conv35 = zext i32 %26 to i64
  %27 = load i64, ptr %x8, align 8
  %add36 = add i64 %conv35, %27
  store i64 %add36, ptr %x16, align 8
  %28 = load i64, ptr %x16, align 8
  %shr37 = lshr i64 %28, 26
  %conv38 = trunc i64 %shr37 to i32
  store i32 %conv38, ptr %x17, align 4
  %29 = load i64, ptr %x16, align 8
  %and39 = and i64 %29, 67108863
  %conv40 = trunc i64 %and39 to i32
  store i32 %conv40, ptr %x18, align 4
  %30 = load i32, ptr %x17, align 4
  %conv41 = zext i32 %30 to i64
  %31 = load i64, ptr %x7, align 8
  %add42 = add i64 %conv41, %31
  store i64 %add42, ptr %x19, align 8
  %32 = load i64, ptr %x19, align 8
  %shr43 = lshr i64 %32, 25
  %conv44 = trunc i64 %shr43 to i32
  store i32 %conv44, ptr %x20, align 4
  %33 = load i64, ptr %x19, align 8
  %and45 = and i64 %33, 33554431
  %conv46 = trunc i64 %and45 to i32
  store i32 %conv46, ptr %x21, align 4
  %34 = load i32, ptr %x20, align 4
  %conv47 = zext i32 %34 to i64
  %35 = load i64, ptr %x6, align 8
  %add48 = add i64 %conv47, %35
  store i64 %add48, ptr %x22, align 8
  %36 = load i64, ptr %x22, align 8
  %shr49 = lshr i64 %36, 26
  %conv50 = trunc i64 %shr49 to i32
  store i32 %conv50, ptr %x23, align 4
  %37 = load i64, ptr %x22, align 8
  %and51 = and i64 %37, 67108863
  %conv52 = trunc i64 %and51 to i32
  store i32 %conv52, ptr %x24, align 4
  %38 = load i32, ptr %x23, align 4
  %conv53 = zext i32 %38 to i64
  %39 = load i64, ptr %x5, align 8
  %add54 = add i64 %conv53, %39
  store i64 %add54, ptr %x25, align 8
  %40 = load i64, ptr %x25, align 8
  %shr55 = lshr i64 %40, 25
  %conv56 = trunc i64 %shr55 to i32
  store i32 %conv56, ptr %x26, align 4
  %41 = load i64, ptr %x25, align 8
  %and57 = and i64 %41, 33554431
  %conv58 = trunc i64 %and57 to i32
  store i32 %conv58, ptr %x27, align 4
  %42 = load i32, ptr %x26, align 4
  %conv59 = zext i32 %42 to i64
  %43 = load i64, ptr %x4, align 8
  %add60 = add i64 %conv59, %43
  store i64 %add60, ptr %x28, align 8
  %44 = load i64, ptr %x28, align 8
  %shr61 = lshr i64 %44, 26
  %conv62 = trunc i64 %shr61 to i32
  store i32 %conv62, ptr %x29, align 4
  %45 = load i64, ptr %x28, align 8
  %and63 = and i64 %45, 67108863
  %conv64 = trunc i64 %and63 to i32
  store i32 %conv64, ptr %x30, align 4
  %46 = load i32, ptr %x29, align 4
  %conv65 = zext i32 %46 to i64
  %47 = load i64, ptr %x3, align 8
  %add66 = add i64 %conv65, %47
  store i64 %add66, ptr %x31, align 8
  %48 = load i64, ptr %x31, align 8
  %shr67 = lshr i64 %48, 25
  %conv68 = trunc i64 %shr67 to i32
  store i32 %conv68, ptr %x32, align 4
  %49 = load i64, ptr %x31, align 8
  %and69 = and i64 %49, 33554431
  %conv70 = trunc i64 %and69 to i32
  store i32 %conv70, ptr %x33, align 4
  %50 = load i32, ptr %x32, align 4
  %conv71 = zext i32 %50 to i64
  %51 = load i64, ptr %x2, align 8
  %add72 = add i64 %conv71, %51
  store i64 %add72, ptr %x34, align 8
  %52 = load i64, ptr %x34, align 8
  %shr73 = lshr i64 %52, 26
  %conv74 = trunc i64 %shr73 to i32
  store i32 %conv74, ptr %x35, align 4
  %53 = load i64, ptr %x34, align 8
  %and75 = and i64 %53, 67108863
  %conv76 = trunc i64 %and75 to i32
  store i32 %conv76, ptr %x36, align 4
  %54 = load i32, ptr %x35, align 4
  %conv77 = zext i32 %54 to i64
  %55 = load i64, ptr %x1, align 8
  %add78 = add i64 %conv77, %55
  store i64 %add78, ptr %x37, align 8
  %56 = load i64, ptr %x37, align 8
  %shr79 = lshr i64 %56, 25
  %conv80 = trunc i64 %shr79 to i32
  store i32 %conv80, ptr %x38, align 4
  %57 = load i64, ptr %x37, align 8
  %and81 = and i64 %57, 33554431
  %conv82 = trunc i64 %and81 to i32
  store i32 %conv82, ptr %x39, align 4
  %58 = load i32, ptr %x38, align 4
  %mul83 = mul i32 %58, 19
  store i32 %mul83, ptr %x40, align 4
  %59 = load i32, ptr %x12, align 4
  %60 = load i32, ptr %x40, align 4
  %add84 = add i32 %59, %60
  store i32 %add84, ptr %x41, align 4
  %61 = load i32, ptr %x41, align 4
  %shr85 = lshr i32 %61, 26
  %conv86 = trunc i32 %shr85 to i8
  store i8 %conv86, ptr %x42, align 1
  %62 = load i32, ptr %x41, align 4
  %and87 = and i32 %62, 67108863
  store i32 %and87, ptr %x43, align 4
  %63 = load i8, ptr %x42, align 1
  %conv88 = zext i8 %63 to i32
  %64 = load i32, ptr %x15, align 4
  %add89 = add i32 %conv88, %64
  store i32 %add89, ptr %x44, align 4
  %65 = load i32, ptr %x44, align 4
  %shr90 = lshr i32 %65, 25
  %conv91 = trunc i32 %shr90 to i8
  store i8 %conv91, ptr %x45, align 1
  %66 = load i32, ptr %x44, align 4
  %and92 = and i32 %66, 33554431
  store i32 %and92, ptr %x46, align 4
  %67 = load i8, ptr %x45, align 1
  %conv93 = zext i8 %67 to i32
  %68 = load i32, ptr %x18, align 4
  %add94 = add i32 %conv93, %68
  store i32 %add94, ptr %x47, align 4
  %69 = load i32, ptr %x43, align 4
  %70 = load ptr, ptr %out1.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %70, i64 0
  store i32 %69, ptr %arrayidx95, align 4
  %71 = load i32, ptr %x46, align 4
  %72 = load ptr, ptr %out1.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, ptr %72, i64 1
  store i32 %71, ptr %arrayidx96, align 4
  %73 = load i32, ptr %x47, align 4
  %74 = load ptr, ptr %out1.addr, align 8
  %arrayidx97 = getelementptr inbounds i32, ptr %74, i64 2
  store i32 %73, ptr %arrayidx97, align 4
  %75 = load i32, ptr %x21, align 4
  %76 = load ptr, ptr %out1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %76, i64 3
  store i32 %75, ptr %arrayidx98, align 4
  %77 = load i32, ptr %x24, align 4
  %78 = load ptr, ptr %out1.addr, align 8
  %arrayidx99 = getelementptr inbounds i32, ptr %78, i64 4
  store i32 %77, ptr %arrayidx99, align 4
  %79 = load i32, ptr %x27, align 4
  %80 = load ptr, ptr %out1.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %80, i64 5
  store i32 %79, ptr %arrayidx100, align 4
  %81 = load i32, ptr %x30, align 4
  %82 = load ptr, ptr %out1.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %82, i64 6
  store i32 %81, ptr %arrayidx101, align 4
  %83 = load i32, ptr %x33, align 4
  %84 = load ptr, ptr %out1.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, ptr %84, i64 7
  store i32 %83, ptr %arrayidx102, align 4
  %85 = load i32, ptr %x36, align 4
  %86 = load ptr, ptr %out1.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %86, i64 8
  store i32 %85, ptr %arrayidx103, align 4
  %87 = load i32, ptr %x39, align 4
  %88 = load ptr, ptr %out1.addr, align 8
  %arrayidx104 = getelementptr inbounds i32, ptr %88, i64 9
  store i32 %87, ptr %arrayidx104, align 4
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
!6 = !{i64 2618}
