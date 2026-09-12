; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_p521_value_barrier_u64(i64 noundef %a) #0 {
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
define dso_local void @fiat_p521_addcarryx_u58(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %0 to i64
  %1 = load i64, ptr %arg2.addr, align 8
  %add = add i64 %conv, %1
  %2 = load i64, ptr %arg3.addr, align 8
  %add1 = add i64 %add, %2
  store i64 %add1, ptr %x1, align 8
  %3 = load i64, ptr %x1, align 8
  %and = and i64 %3, 288230376151711743
  store i64 %and, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 58
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x3, align 1
  %5 = load i64, ptr %x2, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  store i64 %5, ptr %6, align 8
  %7 = load i8, ptr %x3, align 1
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %7, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_subborrowx_u58(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
  %0 = load i64, ptr %arg2.addr, align 8
  %1 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %1 to i64
  %sub = sub i64 %0, %conv
  %2 = load i64, ptr %arg3.addr, align 8
  %sub1 = sub nsw i64 %sub, %2
  store i64 %sub1, ptr %x1, align 8
  %3 = load i64, ptr %x1, align 8
  %shr = ashr i64 %3, 58
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 288230376151711743
  store i64 %and, ptr %x3, align 8
  %5 = load i64, ptr %x3, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  store i64 %5, ptr %6, align 8
  %7 = load i8, ptr %x2, align 1
  %conv3 = sext i8 %7 to i32
  %sub4 = sub nsw i32 0, %conv3
  %conv5 = trunc i32 %sub4 to i8
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %conv5, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_addcarryx_u57(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
  %0 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %0 to i64
  %1 = load i64, ptr %arg2.addr, align 8
  %add = add i64 %conv, %1
  %2 = load i64, ptr %arg3.addr, align 8
  %add1 = add i64 %add, %2
  store i64 %add1, ptr %x1, align 8
  %3 = load i64, ptr %x1, align 8
  %and = and i64 %3, 144115188075855871
  store i64 %and, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 57
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x3, align 1
  %5 = load i64, ptr %x2, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  store i64 %5, ptr %6, align 8
  %7 = load i8, ptr %x3, align 1
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %7, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_subborrowx_u57(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca i64, align 8
  %arg3.addr = alloca i64, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i8, align 1
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %out2, ptr %out2.addr, align 8
  store i8 %arg1, ptr %arg1.addr, align 1
  store i64 %arg2, ptr %arg2.addr, align 8
  store i64 %arg3, ptr %arg3.addr, align 8
  %0 = load i64, ptr %arg2.addr, align 8
  %1 = load i8, ptr %arg1.addr, align 1
  %conv = zext i8 %1 to i64
  %sub = sub i64 %0, %conv
  %2 = load i64, ptr %arg3.addr, align 8
  %sub1 = sub nsw i64 %sub, %2
  store i64 %sub1, ptr %x1, align 8
  %3 = load i64, ptr %x1, align 8
  %shr = ashr i64 %3, 57
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 144115188075855871
  store i64 %and, ptr %x3, align 8
  %5 = load i64, ptr %x3, align 8
  %6 = load ptr, ptr %out1.addr, align 8
  store i64 %5, ptr %6, align 8
  %7 = load i8, ptr %x2, align 1
  %conv3 = sext i8 %7 to i32
  %sub4 = sub nsw i32 0, %conv3
  %conv5 = trunc i32 %sub4 to i8
  %8 = load ptr, ptr %out2.addr, align 8
  store i8 %conv5, ptr %8, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %call = call i64 @fiat_p521_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_p521_value_barrier_u64(i64 noundef %not)
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
define dso_local void @fiat_p521_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i128, align 16
  %x3 = alloca i128, align 16
  %x4 = alloca i128, align 16
  %x5 = alloca i128, align 16
  %x6 = alloca i128, align 16
  %x7 = alloca i128, align 16
  %x8 = alloca i128, align 16
  %x9 = alloca i128, align 16
  %x10 = alloca i128, align 16
  %x11 = alloca i128, align 16
  %x12 = alloca i128, align 16
  %x13 = alloca i128, align 16
  %x14 = alloca i128, align 16
  %x15 = alloca i128, align 16
  %x16 = alloca i128, align 16
  %x17 = alloca i128, align 16
  %x18 = alloca i128, align 16
  %x19 = alloca i128, align 16
  %x20 = alloca i128, align 16
  %x21 = alloca i128, align 16
  %x22 = alloca i128, align 16
  %x23 = alloca i128, align 16
  %x24 = alloca i128, align 16
  %x25 = alloca i128, align 16
  %x26 = alloca i128, align 16
  %x27 = alloca i128, align 16
  %x28 = alloca i128, align 16
  %x29 = alloca i128, align 16
  %x30 = alloca i128, align 16
  %x31 = alloca i128, align 16
  %x32 = alloca i128, align 16
  %x33 = alloca i128, align 16
  %x34 = alloca i128, align 16
  %x35 = alloca i128, align 16
  %x36 = alloca i128, align 16
  %x37 = alloca i128, align 16
  %x38 = alloca i128, align 16
  %x39 = alloca i128, align 16
  %x40 = alloca i128, align 16
  %x41 = alloca i128, align 16
  %x42 = alloca i128, align 16
  %x43 = alloca i128, align 16
  %x44 = alloca i128, align 16
  %x45 = alloca i128, align 16
  %x46 = alloca i128, align 16
  %x47 = alloca i128, align 16
  %x48 = alloca i128, align 16
  %x49 = alloca i128, align 16
  %x50 = alloca i128, align 16
  %x51 = alloca i128, align 16
  %x52 = alloca i128, align 16
  %x53 = alloca i128, align 16
  %x54 = alloca i128, align 16
  %x55 = alloca i128, align 16
  %x56 = alloca i128, align 16
  %x57 = alloca i128, align 16
  %x58 = alloca i128, align 16
  %x59 = alloca i128, align 16
  %x60 = alloca i128, align 16
  %x61 = alloca i128, align 16
  %x62 = alloca i128, align 16
  %x63 = alloca i128, align 16
  %x64 = alloca i128, align 16
  %x65 = alloca i128, align 16
  %x66 = alloca i128, align 16
  %x67 = alloca i128, align 16
  %x68 = alloca i128, align 16
  %x69 = alloca i128, align 16
  %x70 = alloca i128, align 16
  %x71 = alloca i128, align 16
  %x72 = alloca i128, align 16
  %x73 = alloca i128, align 16
  %x74 = alloca i128, align 16
  %x75 = alloca i128, align 16
  %x76 = alloca i128, align 16
  %x77 = alloca i128, align 16
  %x78 = alloca i128, align 16
  %x79 = alloca i128, align 16
  %x80 = alloca i128, align 16
  %x81 = alloca i128, align 16
  %x82 = alloca i128, align 16
  %x83 = alloca i128, align 16
  %x84 = alloca i64, align 8
  %x85 = alloca i128, align 16
  %x86 = alloca i128, align 16
  %x87 = alloca i128, align 16
  %x88 = alloca i128, align 16
  %x89 = alloca i128, align 16
  %x90 = alloca i128, align 16
  %x91 = alloca i128, align 16
  %x92 = alloca i128, align 16
  %x93 = alloca i128, align 16
  %x94 = alloca i128, align 16
  %x95 = alloca i64, align 8
  %x96 = alloca i128, align 16
  %x97 = alloca i128, align 16
  %x98 = alloca i64, align 8
  %x99 = alloca i128, align 16
  %x100 = alloca i128, align 16
  %x101 = alloca i64, align 8
  %x102 = alloca i128, align 16
  %x103 = alloca i128, align 16
  %x104 = alloca i64, align 8
  %x105 = alloca i128, align 16
  %x106 = alloca i128, align 16
  %x107 = alloca i64, align 8
  %x108 = alloca i128, align 16
  %x109 = alloca i128, align 16
  %x110 = alloca i64, align 8
  %x111 = alloca i128, align 16
  %x112 = alloca i128, align 16
  %x113 = alloca i64, align 8
  %x114 = alloca i128, align 16
  %x115 = alloca i128, align 16
  %x116 = alloca i64, align 8
  %x117 = alloca i128, align 16
  %x118 = alloca i64, align 8
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 8
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 8
  %3 = load i64, ptr %arrayidx1, align 8
  %mul = mul i64 %3, 2
  %conv2 = zext i64 %mul to i128
  %mul3 = mul i128 %conv, %conv2
  store i128 %mul3, ptr %x1, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 8
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 7
  %7 = load i64, ptr %arrayidx6, align 8
  %mul7 = mul i64 %7, 2
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul i128 %conv5, %conv8
  store i128 %mul9, ptr %x2, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 8
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx12, align 8
  %mul13 = mul i64 %11, 2
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul i128 %conv11, %conv14
  store i128 %mul15, ptr %x3, align 16
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %12, i64 8
  %13 = load i64, ptr %arrayidx16, align 8
  %conv17 = zext i64 %13 to i128
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %14, i64 5
  %15 = load i64, ptr %arrayidx18, align 8
  %mul19 = mul i64 %15, 2
  %conv20 = zext i64 %mul19 to i128
  %mul21 = mul i128 %conv17, %conv20
  store i128 %mul21, ptr %x4, align 16
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %16, i64 8
  %17 = load i64, ptr %arrayidx22, align 8
  %conv23 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx24, align 8
  %mul25 = mul i64 %19, 2
  %conv26 = zext i64 %mul25 to i128
  %mul27 = mul i128 %conv23, %conv26
  store i128 %mul27, ptr %x5, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %20, i64 8
  %21 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %21 to i128
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %22, i64 3
  %23 = load i64, ptr %arrayidx30, align 8
  %mul31 = mul i64 %23, 2
  %conv32 = zext i64 %mul31 to i128
  %mul33 = mul i128 %conv29, %conv32
  store i128 %mul33, ptr %x6, align 16
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %24, i64 8
  %25 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %26, i64 2
  %27 = load i64, ptr %arrayidx36, align 8
  %mul37 = mul i64 %27, 2
  %conv38 = zext i64 %mul37 to i128
  %mul39 = mul i128 %conv35, %conv38
  store i128 %mul39, ptr %x7, align 16
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %28, i64 8
  %29 = load i64, ptr %arrayidx40, align 8
  %conv41 = zext i64 %29 to i128
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %30, i64 1
  %31 = load i64, ptr %arrayidx42, align 8
  %mul43 = mul i64 %31, 2
  %conv44 = zext i64 %mul43 to i128
  %mul45 = mul i128 %conv41, %conv44
  store i128 %mul45, ptr %x8, align 16
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %32, i64 7
  %33 = load i64, ptr %arrayidx46, align 8
  %conv47 = zext i64 %33 to i128
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %34, i64 8
  %35 = load i64, ptr %arrayidx48, align 8
  %mul49 = mul i64 %35, 2
  %conv50 = zext i64 %mul49 to i128
  %mul51 = mul i128 %conv47, %conv50
  store i128 %mul51, ptr %x9, align 16
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %37 to i128
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %38, i64 7
  %39 = load i64, ptr %arrayidx54, align 8
  %mul55 = mul i64 %39, 2
  %conv56 = zext i64 %mul55 to i128
  %mul57 = mul i128 %conv53, %conv56
  store i128 %mul57, ptr %x10, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %40, i64 7
  %41 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %42, i64 6
  %43 = load i64, ptr %arrayidx60, align 8
  %mul61 = mul i64 %43, 2
  %conv62 = zext i64 %mul61 to i128
  %mul63 = mul i128 %conv59, %conv62
  store i128 %mul63, ptr %x11, align 16
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %44, i64 7
  %45 = load i64, ptr %arrayidx64, align 8
  %conv65 = zext i64 %45 to i128
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %46, i64 5
  %47 = load i64, ptr %arrayidx66, align 8
  %mul67 = mul i64 %47, 2
  %conv68 = zext i64 %mul67 to i128
  %mul69 = mul i128 %conv65, %conv68
  store i128 %mul69, ptr %x12, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %48, i64 7
  %49 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %50, i64 4
  %51 = load i64, ptr %arrayidx72, align 8
  %mul73 = mul i64 %51, 2
  %conv74 = zext i64 %mul73 to i128
  %mul75 = mul i128 %conv71, %conv74
  store i128 %mul75, ptr %x13, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %52, i64 7
  %53 = load i64, ptr %arrayidx76, align 8
  %conv77 = zext i64 %53 to i128
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %54, i64 3
  %55 = load i64, ptr %arrayidx78, align 8
  %mul79 = mul i64 %55, 2
  %conv80 = zext i64 %mul79 to i128
  %mul81 = mul i128 %conv77, %conv80
  store i128 %mul81, ptr %x14, align 16
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %56, i64 7
  %57 = load i64, ptr %arrayidx82, align 8
  %conv83 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %58, i64 2
  %59 = load i64, ptr %arrayidx84, align 8
  %mul85 = mul i64 %59, 2
  %conv86 = zext i64 %mul85 to i128
  %mul87 = mul i128 %conv83, %conv86
  store i128 %mul87, ptr %x15, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %60, i64 6
  %61 = load i64, ptr %arrayidx88, align 8
  %conv89 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %62, i64 8
  %63 = load i64, ptr %arrayidx90, align 8
  %mul91 = mul i64 %63, 2
  %conv92 = zext i64 %mul91 to i128
  %mul93 = mul i128 %conv89, %conv92
  store i128 %mul93, ptr %x16, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, ptr %64, i64 6
  %65 = load i64, ptr %arrayidx94, align 8
  %conv95 = zext i64 %65 to i128
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx96 = getelementptr inbounds i64, ptr %66, i64 7
  %67 = load i64, ptr %arrayidx96, align 8
  %mul97 = mul i64 %67, 2
  %conv98 = zext i64 %mul97 to i128
  %mul99 = mul i128 %conv95, %conv98
  store i128 %mul99, ptr %x17, align 16
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %68, i64 6
  %69 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %69 to i128
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %70, i64 6
  %71 = load i64, ptr %arrayidx102, align 8
  %mul103 = mul i64 %71, 2
  %conv104 = zext i64 %mul103 to i128
  %mul105 = mul i128 %conv101, %conv104
  store i128 %mul105, ptr %x18, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %72, i64 6
  %73 = load i64, ptr %arrayidx106, align 8
  %conv107 = zext i64 %73 to i128
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %74, i64 5
  %75 = load i64, ptr %arrayidx108, align 8
  %mul109 = mul i64 %75, 2
  %conv110 = zext i64 %mul109 to i128
  %mul111 = mul i128 %conv107, %conv110
  store i128 %mul111, ptr %x19, align 16
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %76, i64 6
  %77 = load i64, ptr %arrayidx112, align 8
  %conv113 = zext i64 %77 to i128
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %78, i64 4
  %79 = load i64, ptr %arrayidx114, align 8
  %mul115 = mul i64 %79, 2
  %conv116 = zext i64 %mul115 to i128
  %mul117 = mul i128 %conv113, %conv116
  store i128 %mul117, ptr %x20, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %80, i64 6
  %81 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %81 to i128
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %82, i64 3
  %83 = load i64, ptr %arrayidx120, align 8
  %mul121 = mul i64 %83, 2
  %conv122 = zext i64 %mul121 to i128
  %mul123 = mul i128 %conv119, %conv122
  store i128 %mul123, ptr %x21, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx124 = getelementptr inbounds i64, ptr %84, i64 5
  %85 = load i64, ptr %arrayidx124, align 8
  %conv125 = zext i64 %85 to i128
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %86, i64 8
  %87 = load i64, ptr %arrayidx126, align 8
  %mul127 = mul i64 %87, 2
  %conv128 = zext i64 %mul127 to i128
  %mul129 = mul i128 %conv125, %conv128
  store i128 %mul129, ptr %x22, align 16
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %88, i64 5
  %89 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %89 to i128
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx132 = getelementptr inbounds i64, ptr %90, i64 7
  %91 = load i64, ptr %arrayidx132, align 8
  %mul133 = mul i64 %91, 2
  %conv134 = zext i64 %mul133 to i128
  %mul135 = mul i128 %conv131, %conv134
  store i128 %mul135, ptr %x23, align 16
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx136 = getelementptr inbounds i64, ptr %92, i64 5
  %93 = load i64, ptr %arrayidx136, align 8
  %conv137 = zext i64 %93 to i128
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %94, i64 6
  %95 = load i64, ptr %arrayidx138, align 8
  %mul139 = mul i64 %95, 2
  %conv140 = zext i64 %mul139 to i128
  %mul141 = mul i128 %conv137, %conv140
  store i128 %mul141, ptr %x24, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i64, ptr %96, i64 5
  %97 = load i64, ptr %arrayidx142, align 8
  %conv143 = zext i64 %97 to i128
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx144 = getelementptr inbounds i64, ptr %98, i64 5
  %99 = load i64, ptr %arrayidx144, align 8
  %mul145 = mul i64 %99, 2
  %conv146 = zext i64 %mul145 to i128
  %mul147 = mul i128 %conv143, %conv146
  store i128 %mul147, ptr %x25, align 16
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx148 = getelementptr inbounds i64, ptr %100, i64 5
  %101 = load i64, ptr %arrayidx148, align 8
  %conv149 = zext i64 %101 to i128
  %102 = load ptr, ptr %arg2.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %102, i64 4
  %103 = load i64, ptr %arrayidx150, align 8
  %mul151 = mul i64 %103, 2
  %conv152 = zext i64 %mul151 to i128
  %mul153 = mul i128 %conv149, %conv152
  store i128 %mul153, ptr %x26, align 16
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx154 = getelementptr inbounds i64, ptr %104, i64 4
  %105 = load i64, ptr %arrayidx154, align 8
  %conv155 = zext i64 %105 to i128
  %106 = load ptr, ptr %arg2.addr, align 8
  %arrayidx156 = getelementptr inbounds i64, ptr %106, i64 8
  %107 = load i64, ptr %arrayidx156, align 8
  %mul157 = mul i64 %107, 2
  %conv158 = zext i64 %mul157 to i128
  %mul159 = mul i128 %conv155, %conv158
  store i128 %mul159, ptr %x27, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx160 = getelementptr inbounds i64, ptr %108, i64 4
  %109 = load i64, ptr %arrayidx160, align 8
  %conv161 = zext i64 %109 to i128
  %110 = load ptr, ptr %arg2.addr, align 8
  %arrayidx162 = getelementptr inbounds i64, ptr %110, i64 7
  %111 = load i64, ptr %arrayidx162, align 8
  %mul163 = mul i64 %111, 2
  %conv164 = zext i64 %mul163 to i128
  %mul165 = mul i128 %conv161, %conv164
  store i128 %mul165, ptr %x28, align 16
  %112 = load ptr, ptr %arg1.addr, align 8
  %arrayidx166 = getelementptr inbounds i64, ptr %112, i64 4
  %113 = load i64, ptr %arrayidx166, align 8
  %conv167 = zext i64 %113 to i128
  %114 = load ptr, ptr %arg2.addr, align 8
  %arrayidx168 = getelementptr inbounds i64, ptr %114, i64 6
  %115 = load i64, ptr %arrayidx168, align 8
  %mul169 = mul i64 %115, 2
  %conv170 = zext i64 %mul169 to i128
  %mul171 = mul i128 %conv167, %conv170
  store i128 %mul171, ptr %x29, align 16
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx172 = getelementptr inbounds i64, ptr %116, i64 4
  %117 = load i64, ptr %arrayidx172, align 8
  %conv173 = zext i64 %117 to i128
  %118 = load ptr, ptr %arg2.addr, align 8
  %arrayidx174 = getelementptr inbounds i64, ptr %118, i64 5
  %119 = load i64, ptr %arrayidx174, align 8
  %mul175 = mul i64 %119, 2
  %conv176 = zext i64 %mul175 to i128
  %mul177 = mul i128 %conv173, %conv176
  store i128 %mul177, ptr %x30, align 16
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx178 = getelementptr inbounds i64, ptr %120, i64 3
  %121 = load i64, ptr %arrayidx178, align 8
  %conv179 = zext i64 %121 to i128
  %122 = load ptr, ptr %arg2.addr, align 8
  %arrayidx180 = getelementptr inbounds i64, ptr %122, i64 8
  %123 = load i64, ptr %arrayidx180, align 8
  %mul181 = mul i64 %123, 2
  %conv182 = zext i64 %mul181 to i128
  %mul183 = mul i128 %conv179, %conv182
  store i128 %mul183, ptr %x31, align 16
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx184 = getelementptr inbounds i64, ptr %124, i64 3
  %125 = load i64, ptr %arrayidx184, align 8
  %conv185 = zext i64 %125 to i128
  %126 = load ptr, ptr %arg2.addr, align 8
  %arrayidx186 = getelementptr inbounds i64, ptr %126, i64 7
  %127 = load i64, ptr %arrayidx186, align 8
  %mul187 = mul i64 %127, 2
  %conv188 = zext i64 %mul187 to i128
  %mul189 = mul i128 %conv185, %conv188
  store i128 %mul189, ptr %x32, align 16
  %128 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %128, i64 3
  %129 = load i64, ptr %arrayidx190, align 8
  %conv191 = zext i64 %129 to i128
  %130 = load ptr, ptr %arg2.addr, align 8
  %arrayidx192 = getelementptr inbounds i64, ptr %130, i64 6
  %131 = load i64, ptr %arrayidx192, align 8
  %mul193 = mul i64 %131, 2
  %conv194 = zext i64 %mul193 to i128
  %mul195 = mul i128 %conv191, %conv194
  store i128 %mul195, ptr %x33, align 16
  %132 = load ptr, ptr %arg1.addr, align 8
  %arrayidx196 = getelementptr inbounds i64, ptr %132, i64 2
  %133 = load i64, ptr %arrayidx196, align 8
  %conv197 = zext i64 %133 to i128
  %134 = load ptr, ptr %arg2.addr, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %134, i64 8
  %135 = load i64, ptr %arrayidx198, align 8
  %mul199 = mul i64 %135, 2
  %conv200 = zext i64 %mul199 to i128
  %mul201 = mul i128 %conv197, %conv200
  store i128 %mul201, ptr %x34, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx202 = getelementptr inbounds i64, ptr %136, i64 2
  %137 = load i64, ptr %arrayidx202, align 8
  %conv203 = zext i64 %137 to i128
  %138 = load ptr, ptr %arg2.addr, align 8
  %arrayidx204 = getelementptr inbounds i64, ptr %138, i64 7
  %139 = load i64, ptr %arrayidx204, align 8
  %mul205 = mul i64 %139, 2
  %conv206 = zext i64 %mul205 to i128
  %mul207 = mul i128 %conv203, %conv206
  store i128 %mul207, ptr %x35, align 16
  %140 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %140, i64 1
  %141 = load i64, ptr %arrayidx208, align 8
  %conv209 = zext i64 %141 to i128
  %142 = load ptr, ptr %arg2.addr, align 8
  %arrayidx210 = getelementptr inbounds i64, ptr %142, i64 8
  %143 = load i64, ptr %arrayidx210, align 8
  %mul211 = mul i64 %143, 2
  %conv212 = zext i64 %mul211 to i128
  %mul213 = mul i128 %conv209, %conv212
  store i128 %mul213, ptr %x36, align 16
  %144 = load ptr, ptr %arg1.addr, align 8
  %arrayidx214 = getelementptr inbounds i64, ptr %144, i64 8
  %145 = load i64, ptr %arrayidx214, align 8
  %conv215 = zext i64 %145 to i128
  %146 = load ptr, ptr %arg2.addr, align 8
  %arrayidx216 = getelementptr inbounds i64, ptr %146, i64 0
  %147 = load i64, ptr %arrayidx216, align 8
  %conv217 = zext i64 %147 to i128
  %mul218 = mul i128 %conv215, %conv217
  store i128 %mul218, ptr %x37, align 16
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx219 = getelementptr inbounds i64, ptr %148, i64 7
  %149 = load i64, ptr %arrayidx219, align 8
  %conv220 = zext i64 %149 to i128
  %150 = load ptr, ptr %arg2.addr, align 8
  %arrayidx221 = getelementptr inbounds i64, ptr %150, i64 1
  %151 = load i64, ptr %arrayidx221, align 8
  %conv222 = zext i64 %151 to i128
  %mul223 = mul i128 %conv220, %conv222
  store i128 %mul223, ptr %x38, align 16
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx224 = getelementptr inbounds i64, ptr %152, i64 7
  %153 = load i64, ptr %arrayidx224, align 8
  %conv225 = zext i64 %153 to i128
  %154 = load ptr, ptr %arg2.addr, align 8
  %arrayidx226 = getelementptr inbounds i64, ptr %154, i64 0
  %155 = load i64, ptr %arrayidx226, align 8
  %conv227 = zext i64 %155 to i128
  %mul228 = mul i128 %conv225, %conv227
  store i128 %mul228, ptr %x39, align 16
  %156 = load ptr, ptr %arg1.addr, align 8
  %arrayidx229 = getelementptr inbounds i64, ptr %156, i64 6
  %157 = load i64, ptr %arrayidx229, align 8
  %conv230 = zext i64 %157 to i128
  %158 = load ptr, ptr %arg2.addr, align 8
  %arrayidx231 = getelementptr inbounds i64, ptr %158, i64 2
  %159 = load i64, ptr %arrayidx231, align 8
  %conv232 = zext i64 %159 to i128
  %mul233 = mul i128 %conv230, %conv232
  store i128 %mul233, ptr %x40, align 16
  %160 = load ptr, ptr %arg1.addr, align 8
  %arrayidx234 = getelementptr inbounds i64, ptr %160, i64 6
  %161 = load i64, ptr %arrayidx234, align 8
  %conv235 = zext i64 %161 to i128
  %162 = load ptr, ptr %arg2.addr, align 8
  %arrayidx236 = getelementptr inbounds i64, ptr %162, i64 1
  %163 = load i64, ptr %arrayidx236, align 8
  %conv237 = zext i64 %163 to i128
  %mul238 = mul i128 %conv235, %conv237
  store i128 %mul238, ptr %x41, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx239 = getelementptr inbounds i64, ptr %164, i64 6
  %165 = load i64, ptr %arrayidx239, align 8
  %conv240 = zext i64 %165 to i128
  %166 = load ptr, ptr %arg2.addr, align 8
  %arrayidx241 = getelementptr inbounds i64, ptr %166, i64 0
  %167 = load i64, ptr %arrayidx241, align 8
  %conv242 = zext i64 %167 to i128
  %mul243 = mul i128 %conv240, %conv242
  store i128 %mul243, ptr %x42, align 16
  %168 = load ptr, ptr %arg1.addr, align 8
  %arrayidx244 = getelementptr inbounds i64, ptr %168, i64 5
  %169 = load i64, ptr %arrayidx244, align 8
  %conv245 = zext i64 %169 to i128
  %170 = load ptr, ptr %arg2.addr, align 8
  %arrayidx246 = getelementptr inbounds i64, ptr %170, i64 3
  %171 = load i64, ptr %arrayidx246, align 8
  %conv247 = zext i64 %171 to i128
  %mul248 = mul i128 %conv245, %conv247
  store i128 %mul248, ptr %x43, align 16
  %172 = load ptr, ptr %arg1.addr, align 8
  %arrayidx249 = getelementptr inbounds i64, ptr %172, i64 5
  %173 = load i64, ptr %arrayidx249, align 8
  %conv250 = zext i64 %173 to i128
  %174 = load ptr, ptr %arg2.addr, align 8
  %arrayidx251 = getelementptr inbounds i64, ptr %174, i64 2
  %175 = load i64, ptr %arrayidx251, align 8
  %conv252 = zext i64 %175 to i128
  %mul253 = mul i128 %conv250, %conv252
  store i128 %mul253, ptr %x44, align 16
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx254 = getelementptr inbounds i64, ptr %176, i64 5
  %177 = load i64, ptr %arrayidx254, align 8
  %conv255 = zext i64 %177 to i128
  %178 = load ptr, ptr %arg2.addr, align 8
  %arrayidx256 = getelementptr inbounds i64, ptr %178, i64 1
  %179 = load i64, ptr %arrayidx256, align 8
  %conv257 = zext i64 %179 to i128
  %mul258 = mul i128 %conv255, %conv257
  store i128 %mul258, ptr %x45, align 16
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx259 = getelementptr inbounds i64, ptr %180, i64 5
  %181 = load i64, ptr %arrayidx259, align 8
  %conv260 = zext i64 %181 to i128
  %182 = load ptr, ptr %arg2.addr, align 8
  %arrayidx261 = getelementptr inbounds i64, ptr %182, i64 0
  %183 = load i64, ptr %arrayidx261, align 8
  %conv262 = zext i64 %183 to i128
  %mul263 = mul i128 %conv260, %conv262
  store i128 %mul263, ptr %x46, align 16
  %184 = load ptr, ptr %arg1.addr, align 8
  %arrayidx264 = getelementptr inbounds i64, ptr %184, i64 4
  %185 = load i64, ptr %arrayidx264, align 8
  %conv265 = zext i64 %185 to i128
  %186 = load ptr, ptr %arg2.addr, align 8
  %arrayidx266 = getelementptr inbounds i64, ptr %186, i64 4
  %187 = load i64, ptr %arrayidx266, align 8
  %conv267 = zext i64 %187 to i128
  %mul268 = mul i128 %conv265, %conv267
  store i128 %mul268, ptr %x47, align 16
  %188 = load ptr, ptr %arg1.addr, align 8
  %arrayidx269 = getelementptr inbounds i64, ptr %188, i64 4
  %189 = load i64, ptr %arrayidx269, align 8
  %conv270 = zext i64 %189 to i128
  %190 = load ptr, ptr %arg2.addr, align 8
  %arrayidx271 = getelementptr inbounds i64, ptr %190, i64 3
  %191 = load i64, ptr %arrayidx271, align 8
  %conv272 = zext i64 %191 to i128
  %mul273 = mul i128 %conv270, %conv272
  store i128 %mul273, ptr %x48, align 16
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx274 = getelementptr inbounds i64, ptr %192, i64 4
  %193 = load i64, ptr %arrayidx274, align 8
  %conv275 = zext i64 %193 to i128
  %194 = load ptr, ptr %arg2.addr, align 8
  %arrayidx276 = getelementptr inbounds i64, ptr %194, i64 2
  %195 = load i64, ptr %arrayidx276, align 8
  %conv277 = zext i64 %195 to i128
  %mul278 = mul i128 %conv275, %conv277
  store i128 %mul278, ptr %x49, align 16
  %196 = load ptr, ptr %arg1.addr, align 8
  %arrayidx279 = getelementptr inbounds i64, ptr %196, i64 4
  %197 = load i64, ptr %arrayidx279, align 8
  %conv280 = zext i64 %197 to i128
  %198 = load ptr, ptr %arg2.addr, align 8
  %arrayidx281 = getelementptr inbounds i64, ptr %198, i64 1
  %199 = load i64, ptr %arrayidx281, align 8
  %conv282 = zext i64 %199 to i128
  %mul283 = mul i128 %conv280, %conv282
  store i128 %mul283, ptr %x50, align 16
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx284 = getelementptr inbounds i64, ptr %200, i64 4
  %201 = load i64, ptr %arrayidx284, align 8
  %conv285 = zext i64 %201 to i128
  %202 = load ptr, ptr %arg2.addr, align 8
  %arrayidx286 = getelementptr inbounds i64, ptr %202, i64 0
  %203 = load i64, ptr %arrayidx286, align 8
  %conv287 = zext i64 %203 to i128
  %mul288 = mul i128 %conv285, %conv287
  store i128 %mul288, ptr %x51, align 16
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx289 = getelementptr inbounds i64, ptr %204, i64 3
  %205 = load i64, ptr %arrayidx289, align 8
  %conv290 = zext i64 %205 to i128
  %206 = load ptr, ptr %arg2.addr, align 8
  %arrayidx291 = getelementptr inbounds i64, ptr %206, i64 5
  %207 = load i64, ptr %arrayidx291, align 8
  %conv292 = zext i64 %207 to i128
  %mul293 = mul i128 %conv290, %conv292
  store i128 %mul293, ptr %x52, align 16
  %208 = load ptr, ptr %arg1.addr, align 8
  %arrayidx294 = getelementptr inbounds i64, ptr %208, i64 3
  %209 = load i64, ptr %arrayidx294, align 8
  %conv295 = zext i64 %209 to i128
  %210 = load ptr, ptr %arg2.addr, align 8
  %arrayidx296 = getelementptr inbounds i64, ptr %210, i64 4
  %211 = load i64, ptr %arrayidx296, align 8
  %conv297 = zext i64 %211 to i128
  %mul298 = mul i128 %conv295, %conv297
  store i128 %mul298, ptr %x53, align 16
  %212 = load ptr, ptr %arg1.addr, align 8
  %arrayidx299 = getelementptr inbounds i64, ptr %212, i64 3
  %213 = load i64, ptr %arrayidx299, align 8
  %conv300 = zext i64 %213 to i128
  %214 = load ptr, ptr %arg2.addr, align 8
  %arrayidx301 = getelementptr inbounds i64, ptr %214, i64 3
  %215 = load i64, ptr %arrayidx301, align 8
  %conv302 = zext i64 %215 to i128
  %mul303 = mul i128 %conv300, %conv302
  store i128 %mul303, ptr %x54, align 16
  %216 = load ptr, ptr %arg1.addr, align 8
  %arrayidx304 = getelementptr inbounds i64, ptr %216, i64 3
  %217 = load i64, ptr %arrayidx304, align 8
  %conv305 = zext i64 %217 to i128
  %218 = load ptr, ptr %arg2.addr, align 8
  %arrayidx306 = getelementptr inbounds i64, ptr %218, i64 2
  %219 = load i64, ptr %arrayidx306, align 8
  %conv307 = zext i64 %219 to i128
  %mul308 = mul i128 %conv305, %conv307
  store i128 %mul308, ptr %x55, align 16
  %220 = load ptr, ptr %arg1.addr, align 8
  %arrayidx309 = getelementptr inbounds i64, ptr %220, i64 3
  %221 = load i64, ptr %arrayidx309, align 8
  %conv310 = zext i64 %221 to i128
  %222 = load ptr, ptr %arg2.addr, align 8
  %arrayidx311 = getelementptr inbounds i64, ptr %222, i64 1
  %223 = load i64, ptr %arrayidx311, align 8
  %conv312 = zext i64 %223 to i128
  %mul313 = mul i128 %conv310, %conv312
  store i128 %mul313, ptr %x56, align 16
  %224 = load ptr, ptr %arg1.addr, align 8
  %arrayidx314 = getelementptr inbounds i64, ptr %224, i64 3
  %225 = load i64, ptr %arrayidx314, align 8
  %conv315 = zext i64 %225 to i128
  %226 = load ptr, ptr %arg2.addr, align 8
  %arrayidx316 = getelementptr inbounds i64, ptr %226, i64 0
  %227 = load i64, ptr %arrayidx316, align 8
  %conv317 = zext i64 %227 to i128
  %mul318 = mul i128 %conv315, %conv317
  store i128 %mul318, ptr %x57, align 16
  %228 = load ptr, ptr %arg1.addr, align 8
  %arrayidx319 = getelementptr inbounds i64, ptr %228, i64 2
  %229 = load i64, ptr %arrayidx319, align 8
  %conv320 = zext i64 %229 to i128
  %230 = load ptr, ptr %arg2.addr, align 8
  %arrayidx321 = getelementptr inbounds i64, ptr %230, i64 6
  %231 = load i64, ptr %arrayidx321, align 8
  %conv322 = zext i64 %231 to i128
  %mul323 = mul i128 %conv320, %conv322
  store i128 %mul323, ptr %x58, align 16
  %232 = load ptr, ptr %arg1.addr, align 8
  %arrayidx324 = getelementptr inbounds i64, ptr %232, i64 2
  %233 = load i64, ptr %arrayidx324, align 8
  %conv325 = zext i64 %233 to i128
  %234 = load ptr, ptr %arg2.addr, align 8
  %arrayidx326 = getelementptr inbounds i64, ptr %234, i64 5
  %235 = load i64, ptr %arrayidx326, align 8
  %conv327 = zext i64 %235 to i128
  %mul328 = mul i128 %conv325, %conv327
  store i128 %mul328, ptr %x59, align 16
  %236 = load ptr, ptr %arg1.addr, align 8
  %arrayidx329 = getelementptr inbounds i64, ptr %236, i64 2
  %237 = load i64, ptr %arrayidx329, align 8
  %conv330 = zext i64 %237 to i128
  %238 = load ptr, ptr %arg2.addr, align 8
  %arrayidx331 = getelementptr inbounds i64, ptr %238, i64 4
  %239 = load i64, ptr %arrayidx331, align 8
  %conv332 = zext i64 %239 to i128
  %mul333 = mul i128 %conv330, %conv332
  store i128 %mul333, ptr %x60, align 16
  %240 = load ptr, ptr %arg1.addr, align 8
  %arrayidx334 = getelementptr inbounds i64, ptr %240, i64 2
  %241 = load i64, ptr %arrayidx334, align 8
  %conv335 = zext i64 %241 to i128
  %242 = load ptr, ptr %arg2.addr, align 8
  %arrayidx336 = getelementptr inbounds i64, ptr %242, i64 3
  %243 = load i64, ptr %arrayidx336, align 8
  %conv337 = zext i64 %243 to i128
  %mul338 = mul i128 %conv335, %conv337
  store i128 %mul338, ptr %x61, align 16
  %244 = load ptr, ptr %arg1.addr, align 8
  %arrayidx339 = getelementptr inbounds i64, ptr %244, i64 2
  %245 = load i64, ptr %arrayidx339, align 8
  %conv340 = zext i64 %245 to i128
  %246 = load ptr, ptr %arg2.addr, align 8
  %arrayidx341 = getelementptr inbounds i64, ptr %246, i64 2
  %247 = load i64, ptr %arrayidx341, align 8
  %conv342 = zext i64 %247 to i128
  %mul343 = mul i128 %conv340, %conv342
  store i128 %mul343, ptr %x62, align 16
  %248 = load ptr, ptr %arg1.addr, align 8
  %arrayidx344 = getelementptr inbounds i64, ptr %248, i64 2
  %249 = load i64, ptr %arrayidx344, align 8
  %conv345 = zext i64 %249 to i128
  %250 = load ptr, ptr %arg2.addr, align 8
  %arrayidx346 = getelementptr inbounds i64, ptr %250, i64 1
  %251 = load i64, ptr %arrayidx346, align 8
  %conv347 = zext i64 %251 to i128
  %mul348 = mul i128 %conv345, %conv347
  store i128 %mul348, ptr %x63, align 16
  %252 = load ptr, ptr %arg1.addr, align 8
  %arrayidx349 = getelementptr inbounds i64, ptr %252, i64 2
  %253 = load i64, ptr %arrayidx349, align 8
  %conv350 = zext i64 %253 to i128
  %254 = load ptr, ptr %arg2.addr, align 8
  %arrayidx351 = getelementptr inbounds i64, ptr %254, i64 0
  %255 = load i64, ptr %arrayidx351, align 8
  %conv352 = zext i64 %255 to i128
  %mul353 = mul i128 %conv350, %conv352
  store i128 %mul353, ptr %x64, align 16
  %256 = load ptr, ptr %arg1.addr, align 8
  %arrayidx354 = getelementptr inbounds i64, ptr %256, i64 1
  %257 = load i64, ptr %arrayidx354, align 8
  %conv355 = zext i64 %257 to i128
  %258 = load ptr, ptr %arg2.addr, align 8
  %arrayidx356 = getelementptr inbounds i64, ptr %258, i64 7
  %259 = load i64, ptr %arrayidx356, align 8
  %conv357 = zext i64 %259 to i128
  %mul358 = mul i128 %conv355, %conv357
  store i128 %mul358, ptr %x65, align 16
  %260 = load ptr, ptr %arg1.addr, align 8
  %arrayidx359 = getelementptr inbounds i64, ptr %260, i64 1
  %261 = load i64, ptr %arrayidx359, align 8
  %conv360 = zext i64 %261 to i128
  %262 = load ptr, ptr %arg2.addr, align 8
  %arrayidx361 = getelementptr inbounds i64, ptr %262, i64 6
  %263 = load i64, ptr %arrayidx361, align 8
  %conv362 = zext i64 %263 to i128
  %mul363 = mul i128 %conv360, %conv362
  store i128 %mul363, ptr %x66, align 16
  %264 = load ptr, ptr %arg1.addr, align 8
  %arrayidx364 = getelementptr inbounds i64, ptr %264, i64 1
  %265 = load i64, ptr %arrayidx364, align 8
  %conv365 = zext i64 %265 to i128
  %266 = load ptr, ptr %arg2.addr, align 8
  %arrayidx366 = getelementptr inbounds i64, ptr %266, i64 5
  %267 = load i64, ptr %arrayidx366, align 8
  %conv367 = zext i64 %267 to i128
  %mul368 = mul i128 %conv365, %conv367
  store i128 %mul368, ptr %x67, align 16
  %268 = load ptr, ptr %arg1.addr, align 8
  %arrayidx369 = getelementptr inbounds i64, ptr %268, i64 1
  %269 = load i64, ptr %arrayidx369, align 8
  %conv370 = zext i64 %269 to i128
  %270 = load ptr, ptr %arg2.addr, align 8
  %arrayidx371 = getelementptr inbounds i64, ptr %270, i64 4
  %271 = load i64, ptr %arrayidx371, align 8
  %conv372 = zext i64 %271 to i128
  %mul373 = mul i128 %conv370, %conv372
  store i128 %mul373, ptr %x68, align 16
  %272 = load ptr, ptr %arg1.addr, align 8
  %arrayidx374 = getelementptr inbounds i64, ptr %272, i64 1
  %273 = load i64, ptr %arrayidx374, align 8
  %conv375 = zext i64 %273 to i128
  %274 = load ptr, ptr %arg2.addr, align 8
  %arrayidx376 = getelementptr inbounds i64, ptr %274, i64 3
  %275 = load i64, ptr %arrayidx376, align 8
  %conv377 = zext i64 %275 to i128
  %mul378 = mul i128 %conv375, %conv377
  store i128 %mul378, ptr %x69, align 16
  %276 = load ptr, ptr %arg1.addr, align 8
  %arrayidx379 = getelementptr inbounds i64, ptr %276, i64 1
  %277 = load i64, ptr %arrayidx379, align 8
  %conv380 = zext i64 %277 to i128
  %278 = load ptr, ptr %arg2.addr, align 8
  %arrayidx381 = getelementptr inbounds i64, ptr %278, i64 2
  %279 = load i64, ptr %arrayidx381, align 8
  %conv382 = zext i64 %279 to i128
  %mul383 = mul i128 %conv380, %conv382
  store i128 %mul383, ptr %x70, align 16
  %280 = load ptr, ptr %arg1.addr, align 8
  %arrayidx384 = getelementptr inbounds i64, ptr %280, i64 1
  %281 = load i64, ptr %arrayidx384, align 8
  %conv385 = zext i64 %281 to i128
  %282 = load ptr, ptr %arg2.addr, align 8
  %arrayidx386 = getelementptr inbounds i64, ptr %282, i64 1
  %283 = load i64, ptr %arrayidx386, align 8
  %conv387 = zext i64 %283 to i128
  %mul388 = mul i128 %conv385, %conv387
  store i128 %mul388, ptr %x71, align 16
  %284 = load ptr, ptr %arg1.addr, align 8
  %arrayidx389 = getelementptr inbounds i64, ptr %284, i64 1
  %285 = load i64, ptr %arrayidx389, align 8
  %conv390 = zext i64 %285 to i128
  %286 = load ptr, ptr %arg2.addr, align 8
  %arrayidx391 = getelementptr inbounds i64, ptr %286, i64 0
  %287 = load i64, ptr %arrayidx391, align 8
  %conv392 = zext i64 %287 to i128
  %mul393 = mul i128 %conv390, %conv392
  store i128 %mul393, ptr %x72, align 16
  %288 = load ptr, ptr %arg1.addr, align 8
  %arrayidx394 = getelementptr inbounds i64, ptr %288, i64 0
  %289 = load i64, ptr %arrayidx394, align 8
  %conv395 = zext i64 %289 to i128
  %290 = load ptr, ptr %arg2.addr, align 8
  %arrayidx396 = getelementptr inbounds i64, ptr %290, i64 8
  %291 = load i64, ptr %arrayidx396, align 8
  %conv397 = zext i64 %291 to i128
  %mul398 = mul i128 %conv395, %conv397
  store i128 %mul398, ptr %x73, align 16
  %292 = load ptr, ptr %arg1.addr, align 8
  %arrayidx399 = getelementptr inbounds i64, ptr %292, i64 0
  %293 = load i64, ptr %arrayidx399, align 8
  %conv400 = zext i64 %293 to i128
  %294 = load ptr, ptr %arg2.addr, align 8
  %arrayidx401 = getelementptr inbounds i64, ptr %294, i64 7
  %295 = load i64, ptr %arrayidx401, align 8
  %conv402 = zext i64 %295 to i128
  %mul403 = mul i128 %conv400, %conv402
  store i128 %mul403, ptr %x74, align 16
  %296 = load ptr, ptr %arg1.addr, align 8
  %arrayidx404 = getelementptr inbounds i64, ptr %296, i64 0
  %297 = load i64, ptr %arrayidx404, align 8
  %conv405 = zext i64 %297 to i128
  %298 = load ptr, ptr %arg2.addr, align 8
  %arrayidx406 = getelementptr inbounds i64, ptr %298, i64 6
  %299 = load i64, ptr %arrayidx406, align 8
  %conv407 = zext i64 %299 to i128
  %mul408 = mul i128 %conv405, %conv407
  store i128 %mul408, ptr %x75, align 16
  %300 = load ptr, ptr %arg1.addr, align 8
  %arrayidx409 = getelementptr inbounds i64, ptr %300, i64 0
  %301 = load i64, ptr %arrayidx409, align 8
  %conv410 = zext i64 %301 to i128
  %302 = load ptr, ptr %arg2.addr, align 8
  %arrayidx411 = getelementptr inbounds i64, ptr %302, i64 5
  %303 = load i64, ptr %arrayidx411, align 8
  %conv412 = zext i64 %303 to i128
  %mul413 = mul i128 %conv410, %conv412
  store i128 %mul413, ptr %x76, align 16
  %304 = load ptr, ptr %arg1.addr, align 8
  %arrayidx414 = getelementptr inbounds i64, ptr %304, i64 0
  %305 = load i64, ptr %arrayidx414, align 8
  %conv415 = zext i64 %305 to i128
  %306 = load ptr, ptr %arg2.addr, align 8
  %arrayidx416 = getelementptr inbounds i64, ptr %306, i64 4
  %307 = load i64, ptr %arrayidx416, align 8
  %conv417 = zext i64 %307 to i128
  %mul418 = mul i128 %conv415, %conv417
  store i128 %mul418, ptr %x77, align 16
  %308 = load ptr, ptr %arg1.addr, align 8
  %arrayidx419 = getelementptr inbounds i64, ptr %308, i64 0
  %309 = load i64, ptr %arrayidx419, align 8
  %conv420 = zext i64 %309 to i128
  %310 = load ptr, ptr %arg2.addr, align 8
  %arrayidx421 = getelementptr inbounds i64, ptr %310, i64 3
  %311 = load i64, ptr %arrayidx421, align 8
  %conv422 = zext i64 %311 to i128
  %mul423 = mul i128 %conv420, %conv422
  store i128 %mul423, ptr %x78, align 16
  %312 = load ptr, ptr %arg1.addr, align 8
  %arrayidx424 = getelementptr inbounds i64, ptr %312, i64 0
  %313 = load i64, ptr %arrayidx424, align 8
  %conv425 = zext i64 %313 to i128
  %314 = load ptr, ptr %arg2.addr, align 8
  %arrayidx426 = getelementptr inbounds i64, ptr %314, i64 2
  %315 = load i64, ptr %arrayidx426, align 8
  %conv427 = zext i64 %315 to i128
  %mul428 = mul i128 %conv425, %conv427
  store i128 %mul428, ptr %x79, align 16
  %316 = load ptr, ptr %arg1.addr, align 8
  %arrayidx429 = getelementptr inbounds i64, ptr %316, i64 0
  %317 = load i64, ptr %arrayidx429, align 8
  %conv430 = zext i64 %317 to i128
  %318 = load ptr, ptr %arg2.addr, align 8
  %arrayidx431 = getelementptr inbounds i64, ptr %318, i64 1
  %319 = load i64, ptr %arrayidx431, align 8
  %conv432 = zext i64 %319 to i128
  %mul433 = mul i128 %conv430, %conv432
  store i128 %mul433, ptr %x80, align 16
  %320 = load ptr, ptr %arg1.addr, align 8
  %arrayidx434 = getelementptr inbounds i64, ptr %320, i64 0
  %321 = load i64, ptr %arrayidx434, align 8
  %conv435 = zext i64 %321 to i128
  %322 = load ptr, ptr %arg2.addr, align 8
  %arrayidx436 = getelementptr inbounds i64, ptr %322, i64 0
  %323 = load i64, ptr %arrayidx436, align 8
  %conv437 = zext i64 %323 to i128
  %mul438 = mul i128 %conv435, %conv437
  store i128 %mul438, ptr %x81, align 16
  %324 = load i128, ptr %x81, align 16
  %325 = load i128, ptr %x36, align 16
  %326 = load i128, ptr %x35, align 16
  %327 = load i128, ptr %x33, align 16
  %328 = load i128, ptr %x30, align 16
  %329 = load i128, ptr %x26, align 16
  %330 = load i128, ptr %x21, align 16
  %331 = load i128, ptr %x15, align 16
  %332 = load i128, ptr %x8, align 16
  %add = add i128 %331, %332
  %add439 = add i128 %330, %add
  %add440 = add i128 %329, %add439
  %add441 = add i128 %328, %add440
  %add442 = add i128 %327, %add441
  %add443 = add i128 %326, %add442
  %add444 = add i128 %325, %add443
  %add445 = add i128 %324, %add444
  store i128 %add445, ptr %x82, align 16
  %333 = load i128, ptr %x82, align 16
  %shr = lshr i128 %333, 58
  store i128 %shr, ptr %x83, align 16
  %334 = load i128, ptr %x82, align 16
  %and = and i128 %334, 288230376151711743
  %conv446 = trunc i128 %and to i64
  store i64 %conv446, ptr %x84, align 8
  %335 = load i128, ptr %x73, align 16
  %336 = load i128, ptr %x65, align 16
  %337 = load i128, ptr %x58, align 16
  %338 = load i128, ptr %x52, align 16
  %339 = load i128, ptr %x47, align 16
  %340 = load i128, ptr %x43, align 16
  %341 = load i128, ptr %x40, align 16
  %342 = load i128, ptr %x38, align 16
  %343 = load i128, ptr %x37, align 16
  %add447 = add i128 %342, %343
  %add448 = add i128 %341, %add447
  %add449 = add i128 %340, %add448
  %add450 = add i128 %339, %add449
  %add451 = add i128 %338, %add450
  %add452 = add i128 %337, %add451
  %add453 = add i128 %336, %add452
  %add454 = add i128 %335, %add453
  store i128 %add454, ptr %x85, align 16
  %344 = load i128, ptr %x74, align 16
  %345 = load i128, ptr %x66, align 16
  %346 = load i128, ptr %x59, align 16
  %347 = load i128, ptr %x53, align 16
  %348 = load i128, ptr %x48, align 16
  %349 = load i128, ptr %x44, align 16
  %350 = load i128, ptr %x41, align 16
  %351 = load i128, ptr %x39, align 16
  %352 = load i128, ptr %x1, align 16
  %add455 = add i128 %351, %352
  %add456 = add i128 %350, %add455
  %add457 = add i128 %349, %add456
  %add458 = add i128 %348, %add457
  %add459 = add i128 %347, %add458
  %add460 = add i128 %346, %add459
  %add461 = add i128 %345, %add460
  %add462 = add i128 %344, %add461
  store i128 %add462, ptr %x86, align 16
  %353 = load i128, ptr %x75, align 16
  %354 = load i128, ptr %x67, align 16
  %355 = load i128, ptr %x60, align 16
  %356 = load i128, ptr %x54, align 16
  %357 = load i128, ptr %x49, align 16
  %358 = load i128, ptr %x45, align 16
  %359 = load i128, ptr %x42, align 16
  %360 = load i128, ptr %x9, align 16
  %361 = load i128, ptr %x2, align 16
  %add463 = add i128 %360, %361
  %add464 = add i128 %359, %add463
  %add465 = add i128 %358, %add464
  %add466 = add i128 %357, %add465
  %add467 = add i128 %356, %add466
  %add468 = add i128 %355, %add467
  %add469 = add i128 %354, %add468
  %add470 = add i128 %353, %add469
  store i128 %add470, ptr %x87, align 16
  %362 = load i128, ptr %x76, align 16
  %363 = load i128, ptr %x68, align 16
  %364 = load i128, ptr %x61, align 16
  %365 = load i128, ptr %x55, align 16
  %366 = load i128, ptr %x50, align 16
  %367 = load i128, ptr %x46, align 16
  %368 = load i128, ptr %x16, align 16
  %369 = load i128, ptr %x10, align 16
  %370 = load i128, ptr %x3, align 16
  %add471 = add i128 %369, %370
  %add472 = add i128 %368, %add471
  %add473 = add i128 %367, %add472
  %add474 = add i128 %366, %add473
  %add475 = add i128 %365, %add474
  %add476 = add i128 %364, %add475
  %add477 = add i128 %363, %add476
  %add478 = add i128 %362, %add477
  store i128 %add478, ptr %x88, align 16
  %371 = load i128, ptr %x77, align 16
  %372 = load i128, ptr %x69, align 16
  %373 = load i128, ptr %x62, align 16
  %374 = load i128, ptr %x56, align 16
  %375 = load i128, ptr %x51, align 16
  %376 = load i128, ptr %x22, align 16
  %377 = load i128, ptr %x17, align 16
  %378 = load i128, ptr %x11, align 16
  %379 = load i128, ptr %x4, align 16
  %add479 = add i128 %378, %379
  %add480 = add i128 %377, %add479
  %add481 = add i128 %376, %add480
  %add482 = add i128 %375, %add481
  %add483 = add i128 %374, %add482
  %add484 = add i128 %373, %add483
  %add485 = add i128 %372, %add484
  %add486 = add i128 %371, %add485
  store i128 %add486, ptr %x89, align 16
  %380 = load i128, ptr %x78, align 16
  %381 = load i128, ptr %x70, align 16
  %382 = load i128, ptr %x63, align 16
  %383 = load i128, ptr %x57, align 16
  %384 = load i128, ptr %x27, align 16
  %385 = load i128, ptr %x23, align 16
  %386 = load i128, ptr %x18, align 16
  %387 = load i128, ptr %x12, align 16
  %388 = load i128, ptr %x5, align 16
  %add487 = add i128 %387, %388
  %add488 = add i128 %386, %add487
  %add489 = add i128 %385, %add488
  %add490 = add i128 %384, %add489
  %add491 = add i128 %383, %add490
  %add492 = add i128 %382, %add491
  %add493 = add i128 %381, %add492
  %add494 = add i128 %380, %add493
  store i128 %add494, ptr %x90, align 16
  %389 = load i128, ptr %x79, align 16
  %390 = load i128, ptr %x71, align 16
  %391 = load i128, ptr %x64, align 16
  %392 = load i128, ptr %x31, align 16
  %393 = load i128, ptr %x28, align 16
  %394 = load i128, ptr %x24, align 16
  %395 = load i128, ptr %x19, align 16
  %396 = load i128, ptr %x13, align 16
  %397 = load i128, ptr %x6, align 16
  %add495 = add i128 %396, %397
  %add496 = add i128 %395, %add495
  %add497 = add i128 %394, %add496
  %add498 = add i128 %393, %add497
  %add499 = add i128 %392, %add498
  %add500 = add i128 %391, %add499
  %add501 = add i128 %390, %add500
  %add502 = add i128 %389, %add501
  store i128 %add502, ptr %x91, align 16
  %398 = load i128, ptr %x80, align 16
  %399 = load i128, ptr %x72, align 16
  %400 = load i128, ptr %x34, align 16
  %401 = load i128, ptr %x32, align 16
  %402 = load i128, ptr %x29, align 16
  %403 = load i128, ptr %x25, align 16
  %404 = load i128, ptr %x20, align 16
  %405 = load i128, ptr %x14, align 16
  %406 = load i128, ptr %x7, align 16
  %add503 = add i128 %405, %406
  %add504 = add i128 %404, %add503
  %add505 = add i128 %403, %add504
  %add506 = add i128 %402, %add505
  %add507 = add i128 %401, %add506
  %add508 = add i128 %400, %add507
  %add509 = add i128 %399, %add508
  %add510 = add i128 %398, %add509
  store i128 %add510, ptr %x92, align 16
  %407 = load i128, ptr %x83, align 16
  %408 = load i128, ptr %x92, align 16
  %add511 = add i128 %407, %408
  store i128 %add511, ptr %x93, align 16
  %409 = load i128, ptr %x93, align 16
  %shr512 = lshr i128 %409, 58
  store i128 %shr512, ptr %x94, align 16
  %410 = load i128, ptr %x93, align 16
  %and513 = and i128 %410, 288230376151711743
  %conv514 = trunc i128 %and513 to i64
  store i64 %conv514, ptr %x95, align 8
  %411 = load i128, ptr %x94, align 16
  %412 = load i128, ptr %x91, align 16
  %add515 = add i128 %411, %412
  store i128 %add515, ptr %x96, align 16
  %413 = load i128, ptr %x96, align 16
  %shr516 = lshr i128 %413, 58
  store i128 %shr516, ptr %x97, align 16
  %414 = load i128, ptr %x96, align 16
  %and517 = and i128 %414, 288230376151711743
  %conv518 = trunc i128 %and517 to i64
  store i64 %conv518, ptr %x98, align 8
  %415 = load i128, ptr %x97, align 16
  %416 = load i128, ptr %x90, align 16
  %add519 = add i128 %415, %416
  store i128 %add519, ptr %x99, align 16
  %417 = load i128, ptr %x99, align 16
  %shr520 = lshr i128 %417, 58
  store i128 %shr520, ptr %x100, align 16
  %418 = load i128, ptr %x99, align 16
  %and521 = and i128 %418, 288230376151711743
  %conv522 = trunc i128 %and521 to i64
  store i64 %conv522, ptr %x101, align 8
  %419 = load i128, ptr %x100, align 16
  %420 = load i128, ptr %x89, align 16
  %add523 = add i128 %419, %420
  store i128 %add523, ptr %x102, align 16
  %421 = load i128, ptr %x102, align 16
  %shr524 = lshr i128 %421, 58
  store i128 %shr524, ptr %x103, align 16
  %422 = load i128, ptr %x102, align 16
  %and525 = and i128 %422, 288230376151711743
  %conv526 = trunc i128 %and525 to i64
  store i64 %conv526, ptr %x104, align 8
  %423 = load i128, ptr %x103, align 16
  %424 = load i128, ptr %x88, align 16
  %add527 = add i128 %423, %424
  store i128 %add527, ptr %x105, align 16
  %425 = load i128, ptr %x105, align 16
  %shr528 = lshr i128 %425, 58
  store i128 %shr528, ptr %x106, align 16
  %426 = load i128, ptr %x105, align 16
  %and529 = and i128 %426, 288230376151711743
  %conv530 = trunc i128 %and529 to i64
  store i64 %conv530, ptr %x107, align 8
  %427 = load i128, ptr %x106, align 16
  %428 = load i128, ptr %x87, align 16
  %add531 = add i128 %427, %428
  store i128 %add531, ptr %x108, align 16
  %429 = load i128, ptr %x108, align 16
  %shr532 = lshr i128 %429, 58
  store i128 %shr532, ptr %x109, align 16
  %430 = load i128, ptr %x108, align 16
  %and533 = and i128 %430, 288230376151711743
  %conv534 = trunc i128 %and533 to i64
  store i64 %conv534, ptr %x110, align 8
  %431 = load i128, ptr %x109, align 16
  %432 = load i128, ptr %x86, align 16
  %add535 = add i128 %431, %432
  store i128 %add535, ptr %x111, align 16
  %433 = load i128, ptr %x111, align 16
  %shr536 = lshr i128 %433, 58
  store i128 %shr536, ptr %x112, align 16
  %434 = load i128, ptr %x111, align 16
  %and537 = and i128 %434, 288230376151711743
  %conv538 = trunc i128 %and537 to i64
  store i64 %conv538, ptr %x113, align 8
  %435 = load i128, ptr %x112, align 16
  %436 = load i128, ptr %x85, align 16
  %add539 = add i128 %435, %436
  store i128 %add539, ptr %x114, align 16
  %437 = load i128, ptr %x114, align 16
  %shr540 = lshr i128 %437, 57
  store i128 %shr540, ptr %x115, align 16
  %438 = load i128, ptr %x114, align 16
  %and541 = and i128 %438, 144115188075855871
  %conv542 = trunc i128 %and541 to i64
  store i64 %conv542, ptr %x116, align 8
  %439 = load i64, ptr %x84, align 8
  %conv543 = zext i64 %439 to i128
  %440 = load i128, ptr %x115, align 16
  %add544 = add i128 %conv543, %440
  store i128 %add544, ptr %x117, align 16
  %441 = load i128, ptr %x117, align 16
  %shr545 = lshr i128 %441, 58
  %conv546 = trunc i128 %shr545 to i64
  store i64 %conv546, ptr %x118, align 8
  %442 = load i128, ptr %x117, align 16
  %and547 = and i128 %442, 288230376151711743
  %conv548 = trunc i128 %and547 to i64
  store i64 %conv548, ptr %x119, align 8
  %443 = load i64, ptr %x118, align 8
  %444 = load i64, ptr %x95, align 8
  %add549 = add i64 %443, %444
  store i64 %add549, ptr %x120, align 8
  %445 = load i64, ptr %x120, align 8
  %shr550 = lshr i64 %445, 58
  %conv551 = trunc i64 %shr550 to i8
  store i8 %conv551, ptr %x121, align 1
  %446 = load i64, ptr %x120, align 8
  %and552 = and i64 %446, 288230376151711743
  store i64 %and552, ptr %x122, align 8
  %447 = load i8, ptr %x121, align 1
  %conv553 = zext i8 %447 to i64
  %448 = load i64, ptr %x98, align 8
  %add554 = add i64 %conv553, %448
  store i64 %add554, ptr %x123, align 8
  %449 = load i64, ptr %x119, align 8
  %450 = load ptr, ptr %out1.addr, align 8
  %arrayidx555 = getelementptr inbounds i64, ptr %450, i64 0
  store i64 %449, ptr %arrayidx555, align 8
  %451 = load i64, ptr %x122, align 8
  %452 = load ptr, ptr %out1.addr, align 8
  %arrayidx556 = getelementptr inbounds i64, ptr %452, i64 1
  store i64 %451, ptr %arrayidx556, align 8
  %453 = load i64, ptr %x123, align 8
  %454 = load ptr, ptr %out1.addr, align 8
  %arrayidx557 = getelementptr inbounds i64, ptr %454, i64 2
  store i64 %453, ptr %arrayidx557, align 8
  %455 = load i64, ptr %x101, align 8
  %456 = load ptr, ptr %out1.addr, align 8
  %arrayidx558 = getelementptr inbounds i64, ptr %456, i64 3
  store i64 %455, ptr %arrayidx558, align 8
  %457 = load i64, ptr %x104, align 8
  %458 = load ptr, ptr %out1.addr, align 8
  %arrayidx559 = getelementptr inbounds i64, ptr %458, i64 4
  store i64 %457, ptr %arrayidx559, align 8
  %459 = load i64, ptr %x107, align 8
  %460 = load ptr, ptr %out1.addr, align 8
  %arrayidx560 = getelementptr inbounds i64, ptr %460, i64 5
  store i64 %459, ptr %arrayidx560, align 8
  %461 = load i64, ptr %x110, align 8
  %462 = load ptr, ptr %out1.addr, align 8
  %arrayidx561 = getelementptr inbounds i64, ptr %462, i64 6
  store i64 %461, ptr %arrayidx561, align 8
  %463 = load i64, ptr %x113, align 8
  %464 = load ptr, ptr %out1.addr, align 8
  %arrayidx562 = getelementptr inbounds i64, ptr %464, i64 7
  store i64 %463, ptr %arrayidx562, align 8
  %465 = load i64, ptr %x116, align 8
  %466 = load ptr, ptr %out1.addr, align 8
  %arrayidx563 = getelementptr inbounds i64, ptr %466, i64 8
  store i64 %465, ptr %arrayidx563, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x17 = alloca i128, align 16
  %x18 = alloca i128, align 16
  %x19 = alloca i128, align 16
  %x20 = alloca i128, align 16
  %x21 = alloca i128, align 16
  %x22 = alloca i128, align 16
  %x23 = alloca i128, align 16
  %x24 = alloca i128, align 16
  %x25 = alloca i128, align 16
  %x26 = alloca i128, align 16
  %x27 = alloca i128, align 16
  %x28 = alloca i128, align 16
  %x29 = alloca i128, align 16
  %x30 = alloca i128, align 16
  %x31 = alloca i128, align 16
  %x32 = alloca i128, align 16
  %x33 = alloca i128, align 16
  %x34 = alloca i128, align 16
  %x35 = alloca i128, align 16
  %x36 = alloca i128, align 16
  %x37 = alloca i128, align 16
  %x38 = alloca i128, align 16
  %x39 = alloca i128, align 16
  %x40 = alloca i128, align 16
  %x41 = alloca i128, align 16
  %x42 = alloca i128, align 16
  %x43 = alloca i128, align 16
  %x44 = alloca i128, align 16
  %x45 = alloca i128, align 16
  %x46 = alloca i128, align 16
  %x47 = alloca i128, align 16
  %x48 = alloca i128, align 16
  %x49 = alloca i128, align 16
  %x50 = alloca i128, align 16
  %x51 = alloca i128, align 16
  %x52 = alloca i128, align 16
  %x53 = alloca i128, align 16
  %x54 = alloca i128, align 16
  %x55 = alloca i128, align 16
  %x56 = alloca i128, align 16
  %x57 = alloca i128, align 16
  %x58 = alloca i128, align 16
  %x59 = alloca i128, align 16
  %x60 = alloca i128, align 16
  %x61 = alloca i128, align 16
  %x62 = alloca i128, align 16
  %x63 = alloca i128, align 16
  %x64 = alloca i64, align 8
  %x65 = alloca i128, align 16
  %x66 = alloca i128, align 16
  %x67 = alloca i128, align 16
  %x68 = alloca i128, align 16
  %x69 = alloca i128, align 16
  %x70 = alloca i128, align 16
  %x71 = alloca i128, align 16
  %x72 = alloca i128, align 16
  %x73 = alloca i128, align 16
  %x74 = alloca i128, align 16
  %x75 = alloca i64, align 8
  %x76 = alloca i128, align 16
  %x77 = alloca i128, align 16
  %x78 = alloca i64, align 8
  %x79 = alloca i128, align 16
  %x80 = alloca i128, align 16
  %x81 = alloca i64, align 8
  %x82 = alloca i128, align 16
  %x83 = alloca i128, align 16
  %x84 = alloca i64, align 8
  %x85 = alloca i128, align 16
  %x86 = alloca i128, align 16
  %x87 = alloca i64, align 8
  %x88 = alloca i128, align 16
  %x89 = alloca i128, align 16
  %x90 = alloca i64, align 8
  %x91 = alloca i128, align 16
  %x92 = alloca i128, align 16
  %x93 = alloca i64, align 8
  %x94 = alloca i128, align 16
  %x95 = alloca i128, align 16
  %x96 = alloca i64, align 8
  %x97 = alloca i128, align 16
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i8, align 1
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 8
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %mul = mul i64 %2, 2
  store i64 %mul, ptr %x2, align 8
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 8
  %4 = load i64, ptr %arrayidx1, align 8
  %mul2 = mul i64 %4, 2
  store i64 %mul2, ptr %x3, align 8
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %5, i64 7
  %6 = load i64, ptr %arrayidx3, align 8
  store i64 %6, ptr %x4, align 8
  %7 = load i64, ptr %x4, align 8
  %mul4 = mul i64 %7, 2
  store i64 %mul4, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 7
  %9 = load i64, ptr %arrayidx5, align 8
  %mul6 = mul i64 %9, 2
  store i64 %mul6, ptr %x6, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx7, align 8
  store i64 %11, ptr %x7, align 8
  %12 = load i64, ptr %x7, align 8
  %mul8 = mul i64 %12, 2
  store i64 %mul8, ptr %x8, align 8
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %13, i64 6
  %14 = load i64, ptr %arrayidx9, align 8
  %mul10 = mul i64 %14, 2
  store i64 %mul10, ptr %x9, align 8
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx11, align 8
  store i64 %16, ptr %x10, align 8
  %17 = load i64, ptr %x10, align 8
  %mul12 = mul i64 %17, 2
  store i64 %mul12, ptr %x11, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %18, i64 5
  %19 = load i64, ptr %arrayidx13, align 8
  %mul14 = mul i64 %19, 2
  store i64 %mul14, ptr %x12, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %20, i64 4
  %21 = load i64, ptr %arrayidx15, align 8
  %mul16 = mul i64 %21, 2
  store i64 %mul16, ptr %x13, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %22, i64 3
  %23 = load i64, ptr %arrayidx17, align 8
  %mul18 = mul i64 %23, 2
  store i64 %mul18, ptr %x14, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %24, i64 2
  %25 = load i64, ptr %arrayidx19, align 8
  %mul20 = mul i64 %25, 2
  store i64 %mul20, ptr %x15, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %26, i64 1
  %27 = load i64, ptr %arrayidx21, align 8
  %mul22 = mul i64 %27, 2
  store i64 %mul22, ptr %x16, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %28, i64 8
  %29 = load i64, ptr %arrayidx23, align 8
  %conv = zext i64 %29 to i128
  %30 = load i64, ptr %x1, align 8
  %mul24 = mul i64 %30, 2
  %conv25 = zext i64 %mul24 to i128
  %mul26 = mul i128 %conv, %conv25
  store i128 %mul26, ptr %x17, align 16
  %31 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %31, i64 7
  %32 = load i64, ptr %arrayidx27, align 8
  %conv28 = zext i64 %32 to i128
  %33 = load i64, ptr %x2, align 8
  %mul29 = mul i64 %33, 2
  %conv30 = zext i64 %mul29 to i128
  %mul31 = mul i128 %conv28, %conv30
  store i128 %mul31, ptr %x18, align 16
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %34, i64 7
  %35 = load i64, ptr %arrayidx32, align 8
  %conv33 = zext i64 %35 to i128
  %36 = load i64, ptr %x4, align 8
  %mul34 = mul i64 %36, 2
  %conv35 = zext i64 %mul34 to i128
  %mul36 = mul i128 %conv33, %conv35
  store i128 %mul36, ptr %x19, align 16
  %37 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %37, i64 6
  %38 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %38 to i128
  %39 = load i64, ptr %x2, align 8
  %mul39 = mul i64 %39, 2
  %conv40 = zext i64 %mul39 to i128
  %mul41 = mul i128 %conv38, %conv40
  store i128 %mul41, ptr %x20, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %40, i64 6
  %41 = load i64, ptr %arrayidx42, align 8
  %conv43 = zext i64 %41 to i128
  %42 = load i64, ptr %x5, align 8
  %mul44 = mul i64 %42, 2
  %conv45 = zext i64 %mul44 to i128
  %mul46 = mul i128 %conv43, %conv45
  store i128 %mul46, ptr %x21, align 16
  %43 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %43, i64 6
  %44 = load i64, ptr %arrayidx47, align 8
  %conv48 = zext i64 %44 to i128
  %45 = load i64, ptr %x7, align 8
  %mul49 = mul i64 %45, 2
  %conv50 = zext i64 %mul49 to i128
  %mul51 = mul i128 %conv48, %conv50
  store i128 %mul51, ptr %x22, align 16
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %46, i64 5
  %47 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %47 to i128
  %48 = load i64, ptr %x2, align 8
  %mul54 = mul i64 %48, 2
  %conv55 = zext i64 %mul54 to i128
  %mul56 = mul i128 %conv53, %conv55
  store i128 %mul56, ptr %x23, align 16
  %49 = load ptr, ptr %arg1.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %49, i64 5
  %50 = load i64, ptr %arrayidx57, align 8
  %conv58 = zext i64 %50 to i128
  %51 = load i64, ptr %x5, align 8
  %mul59 = mul i64 %51, 2
  %conv60 = zext i64 %mul59 to i128
  %mul61 = mul i128 %conv58, %conv60
  store i128 %mul61, ptr %x24, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %52, i64 5
  %53 = load i64, ptr %arrayidx62, align 8
  %conv63 = zext i64 %53 to i128
  %54 = load i64, ptr %x8, align 8
  %mul64 = mul i64 %54, 2
  %conv65 = zext i64 %mul64 to i128
  %mul66 = mul i128 %conv63, %conv65
  store i128 %mul66, ptr %x25, align 16
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i64, ptr %55, i64 5
  %56 = load i64, ptr %arrayidx67, align 8
  %conv68 = zext i64 %56 to i128
  %57 = load i64, ptr %x10, align 8
  %mul69 = mul i64 %57, 2
  %conv70 = zext i64 %mul69 to i128
  %mul71 = mul i128 %conv68, %conv70
  store i128 %mul71, ptr %x26, align 16
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %58, i64 4
  %59 = load i64, ptr %arrayidx72, align 8
  %conv73 = zext i64 %59 to i128
  %60 = load i64, ptr %x2, align 8
  %mul74 = mul i64 %60, 2
  %conv75 = zext i64 %mul74 to i128
  %mul76 = mul i128 %conv73, %conv75
  store i128 %mul76, ptr %x27, align 16
  %61 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %61, i64 4
  %62 = load i64, ptr %arrayidx77, align 8
  %conv78 = zext i64 %62 to i128
  %63 = load i64, ptr %x5, align 8
  %mul79 = mul i64 %63, 2
  %conv80 = zext i64 %mul79 to i128
  %mul81 = mul i128 %conv78, %conv80
  store i128 %mul81, ptr %x28, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %64, i64 4
  %65 = load i64, ptr %arrayidx82, align 8
  %conv83 = zext i64 %65 to i128
  %66 = load i64, ptr %x8, align 8
  %mul84 = mul i64 %66, 2
  %conv85 = zext i64 %mul84 to i128
  %mul86 = mul i128 %conv83, %conv85
  store i128 %mul86, ptr %x29, align 16
  %67 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %67, i64 4
  %68 = load i64, ptr %arrayidx87, align 8
  %conv88 = zext i64 %68 to i128
  %69 = load i64, ptr %x11, align 8
  %mul89 = mul i64 %69, 2
  %conv90 = zext i64 %mul89 to i128
  %mul91 = mul i128 %conv88, %conv90
  store i128 %mul91, ptr %x30, align 16
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i64, ptr %70, i64 4
  %71 = load i64, ptr %arrayidx92, align 8
  %conv93 = zext i64 %71 to i128
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, ptr %72, i64 4
  %73 = load i64, ptr %arrayidx94, align 8
  %conv95 = zext i64 %73 to i128
  %mul96 = mul i128 %conv93, %conv95
  store i128 %mul96, ptr %x31, align 16
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx97 = getelementptr inbounds i64, ptr %74, i64 3
  %75 = load i64, ptr %arrayidx97, align 8
  %conv98 = zext i64 %75 to i128
  %76 = load i64, ptr %x2, align 8
  %mul99 = mul i64 %76, 2
  %conv100 = zext i64 %mul99 to i128
  %mul101 = mul i128 %conv98, %conv100
  store i128 %mul101, ptr %x32, align 16
  %77 = load ptr, ptr %arg1.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %77, i64 3
  %78 = load i64, ptr %arrayidx102, align 8
  %conv103 = zext i64 %78 to i128
  %79 = load i64, ptr %x5, align 8
  %mul104 = mul i64 %79, 2
  %conv105 = zext i64 %mul104 to i128
  %mul106 = mul i128 %conv103, %conv105
  store i128 %mul106, ptr %x33, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx107 = getelementptr inbounds i64, ptr %80, i64 3
  %81 = load i64, ptr %arrayidx107, align 8
  %conv108 = zext i64 %81 to i128
  %82 = load i64, ptr %x8, align 8
  %mul109 = mul i64 %82, 2
  %conv110 = zext i64 %mul109 to i128
  %mul111 = mul i128 %conv108, %conv110
  store i128 %mul111, ptr %x34, align 16
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i64, ptr %83, i64 3
  %84 = load i64, ptr %arrayidx112, align 8
  %conv113 = zext i64 %84 to i128
  %85 = load i64, ptr %x12, align 8
  %conv114 = zext i64 %85 to i128
  %mul115 = mul i128 %conv113, %conv114
  store i128 %mul115, ptr %x35, align 16
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx116 = getelementptr inbounds i64, ptr %86, i64 3
  %87 = load i64, ptr %arrayidx116, align 8
  %conv117 = zext i64 %87 to i128
  %88 = load i64, ptr %x13, align 8
  %conv118 = zext i64 %88 to i128
  %mul119 = mul i128 %conv117, %conv118
  store i128 %mul119, ptr %x36, align 16
  %89 = load ptr, ptr %arg1.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %89, i64 3
  %90 = load i64, ptr %arrayidx120, align 8
  %conv121 = zext i64 %90 to i128
  %91 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %91, i64 3
  %92 = load i64, ptr %arrayidx122, align 8
  %conv123 = zext i64 %92 to i128
  %mul124 = mul i128 %conv121, %conv123
  store i128 %mul124, ptr %x37, align 16
  %93 = load ptr, ptr %arg1.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %93, i64 2
  %94 = load i64, ptr %arrayidx125, align 8
  %conv126 = zext i64 %94 to i128
  %95 = load i64, ptr %x2, align 8
  %mul127 = mul i64 %95, 2
  %conv128 = zext i64 %mul127 to i128
  %mul129 = mul i128 %conv126, %conv128
  store i128 %mul129, ptr %x38, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %96, i64 2
  %97 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %97 to i128
  %98 = load i64, ptr %x5, align 8
  %mul132 = mul i64 %98, 2
  %conv133 = zext i64 %mul132 to i128
  %mul134 = mul i128 %conv131, %conv133
  store i128 %mul134, ptr %x39, align 16
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx135 = getelementptr inbounds i64, ptr %99, i64 2
  %100 = load i64, ptr %arrayidx135, align 8
  %conv136 = zext i64 %100 to i128
  %101 = load i64, ptr %x9, align 8
  %conv137 = zext i64 %101 to i128
  %mul138 = mul i128 %conv136, %conv137
  store i128 %mul138, ptr %x40, align 16
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx139 = getelementptr inbounds i64, ptr %102, i64 2
  %103 = load i64, ptr %arrayidx139, align 8
  %conv140 = zext i64 %103 to i128
  %104 = load i64, ptr %x12, align 8
  %conv141 = zext i64 %104 to i128
  %mul142 = mul i128 %conv140, %conv141
  store i128 %mul142, ptr %x41, align 16
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i64, ptr %105, i64 2
  %106 = load i64, ptr %arrayidx143, align 8
  %conv144 = zext i64 %106 to i128
  %107 = load i64, ptr %x13, align 8
  %conv145 = zext i64 %107 to i128
  %mul146 = mul i128 %conv144, %conv145
  store i128 %mul146, ptr %x42, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx147 = getelementptr inbounds i64, ptr %108, i64 2
  %109 = load i64, ptr %arrayidx147, align 8
  %conv148 = zext i64 %109 to i128
  %110 = load i64, ptr %x14, align 8
  %conv149 = zext i64 %110 to i128
  %mul150 = mul i128 %conv148, %conv149
  store i128 %mul150, ptr %x43, align 16
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx151 = getelementptr inbounds i64, ptr %111, i64 2
  %112 = load i64, ptr %arrayidx151, align 8
  %conv152 = zext i64 %112 to i128
  %113 = load ptr, ptr %arg1.addr, align 8
  %arrayidx153 = getelementptr inbounds i64, ptr %113, i64 2
  %114 = load i64, ptr %arrayidx153, align 8
  %conv154 = zext i64 %114 to i128
  %mul155 = mul i128 %conv152, %conv154
  store i128 %mul155, ptr %x44, align 16
  %115 = load ptr, ptr %arg1.addr, align 8
  %arrayidx156 = getelementptr inbounds i64, ptr %115, i64 1
  %116 = load i64, ptr %arrayidx156, align 8
  %conv157 = zext i64 %116 to i128
  %117 = load i64, ptr %x2, align 8
  %mul158 = mul i64 %117, 2
  %conv159 = zext i64 %mul158 to i128
  %mul160 = mul i128 %conv157, %conv159
  store i128 %mul160, ptr %x45, align 16
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx161 = getelementptr inbounds i64, ptr %118, i64 1
  %119 = load i64, ptr %arrayidx161, align 8
  %conv162 = zext i64 %119 to i128
  %120 = load i64, ptr %x6, align 8
  %conv163 = zext i64 %120 to i128
  %mul164 = mul i128 %conv162, %conv163
  store i128 %mul164, ptr %x46, align 16
  %121 = load ptr, ptr %arg1.addr, align 8
  %arrayidx165 = getelementptr inbounds i64, ptr %121, i64 1
  %122 = load i64, ptr %arrayidx165, align 8
  %conv166 = zext i64 %122 to i128
  %123 = load i64, ptr %x9, align 8
  %conv167 = zext i64 %123 to i128
  %mul168 = mul i128 %conv166, %conv167
  store i128 %mul168, ptr %x47, align 16
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx169 = getelementptr inbounds i64, ptr %124, i64 1
  %125 = load i64, ptr %arrayidx169, align 8
  %conv170 = zext i64 %125 to i128
  %126 = load i64, ptr %x12, align 8
  %conv171 = zext i64 %126 to i128
  %mul172 = mul i128 %conv170, %conv171
  store i128 %mul172, ptr %x48, align 16
  %127 = load ptr, ptr %arg1.addr, align 8
  %arrayidx173 = getelementptr inbounds i64, ptr %127, i64 1
  %128 = load i64, ptr %arrayidx173, align 8
  %conv174 = zext i64 %128 to i128
  %129 = load i64, ptr %x13, align 8
  %conv175 = zext i64 %129 to i128
  %mul176 = mul i128 %conv174, %conv175
  store i128 %mul176, ptr %x49, align 16
  %130 = load ptr, ptr %arg1.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, ptr %130, i64 1
  %131 = load i64, ptr %arrayidx177, align 8
  %conv178 = zext i64 %131 to i128
  %132 = load i64, ptr %x14, align 8
  %conv179 = zext i64 %132 to i128
  %mul180 = mul i128 %conv178, %conv179
  store i128 %mul180, ptr %x50, align 16
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx181 = getelementptr inbounds i64, ptr %133, i64 1
  %134 = load i64, ptr %arrayidx181, align 8
  %conv182 = zext i64 %134 to i128
  %135 = load i64, ptr %x15, align 8
  %conv183 = zext i64 %135 to i128
  %mul184 = mul i128 %conv182, %conv183
  store i128 %mul184, ptr %x51, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx185 = getelementptr inbounds i64, ptr %136, i64 1
  %137 = load i64, ptr %arrayidx185, align 8
  %conv186 = zext i64 %137 to i128
  %138 = load ptr, ptr %arg1.addr, align 8
  %arrayidx187 = getelementptr inbounds i64, ptr %138, i64 1
  %139 = load i64, ptr %arrayidx187, align 8
  %conv188 = zext i64 %139 to i128
  %mul189 = mul i128 %conv186, %conv188
  store i128 %mul189, ptr %x52, align 16
  %140 = load ptr, ptr %arg1.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %140, i64 0
  %141 = load i64, ptr %arrayidx190, align 8
  %conv191 = zext i64 %141 to i128
  %142 = load i64, ptr %x3, align 8
  %conv192 = zext i64 %142 to i128
  %mul193 = mul i128 %conv191, %conv192
  store i128 %mul193, ptr %x53, align 16
  %143 = load ptr, ptr %arg1.addr, align 8
  %arrayidx194 = getelementptr inbounds i64, ptr %143, i64 0
  %144 = load i64, ptr %arrayidx194, align 8
  %conv195 = zext i64 %144 to i128
  %145 = load i64, ptr %x6, align 8
  %conv196 = zext i64 %145 to i128
  %mul197 = mul i128 %conv195, %conv196
  store i128 %mul197, ptr %x54, align 16
  %146 = load ptr, ptr %arg1.addr, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %146, i64 0
  %147 = load i64, ptr %arrayidx198, align 8
  %conv199 = zext i64 %147 to i128
  %148 = load i64, ptr %x9, align 8
  %conv200 = zext i64 %148 to i128
  %mul201 = mul i128 %conv199, %conv200
  store i128 %mul201, ptr %x55, align 16
  %149 = load ptr, ptr %arg1.addr, align 8
  %arrayidx202 = getelementptr inbounds i64, ptr %149, i64 0
  %150 = load i64, ptr %arrayidx202, align 8
  %conv203 = zext i64 %150 to i128
  %151 = load i64, ptr %x12, align 8
  %conv204 = zext i64 %151 to i128
  %mul205 = mul i128 %conv203, %conv204
  store i128 %mul205, ptr %x56, align 16
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx206 = getelementptr inbounds i64, ptr %152, i64 0
  %153 = load i64, ptr %arrayidx206, align 8
  %conv207 = zext i64 %153 to i128
  %154 = load i64, ptr %x13, align 8
  %conv208 = zext i64 %154 to i128
  %mul209 = mul i128 %conv207, %conv208
  store i128 %mul209, ptr %x57, align 16
  %155 = load ptr, ptr %arg1.addr, align 8
  %arrayidx210 = getelementptr inbounds i64, ptr %155, i64 0
  %156 = load i64, ptr %arrayidx210, align 8
  %conv211 = zext i64 %156 to i128
  %157 = load i64, ptr %x14, align 8
  %conv212 = zext i64 %157 to i128
  %mul213 = mul i128 %conv211, %conv212
  store i128 %mul213, ptr %x58, align 16
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx214 = getelementptr inbounds i64, ptr %158, i64 0
  %159 = load i64, ptr %arrayidx214, align 8
  %conv215 = zext i64 %159 to i128
  %160 = load i64, ptr %x15, align 8
  %conv216 = zext i64 %160 to i128
  %mul217 = mul i128 %conv215, %conv216
  store i128 %mul217, ptr %x59, align 16
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx218 = getelementptr inbounds i64, ptr %161, i64 0
  %162 = load i64, ptr %arrayidx218, align 8
  %conv219 = zext i64 %162 to i128
  %163 = load i64, ptr %x16, align 8
  %conv220 = zext i64 %163 to i128
  %mul221 = mul i128 %conv219, %conv220
  store i128 %mul221, ptr %x60, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx222 = getelementptr inbounds i64, ptr %164, i64 0
  %165 = load i64, ptr %arrayidx222, align 8
  %conv223 = zext i64 %165 to i128
  %166 = load ptr, ptr %arg1.addr, align 8
  %arrayidx224 = getelementptr inbounds i64, ptr %166, i64 0
  %167 = load i64, ptr %arrayidx224, align 8
  %conv225 = zext i64 %167 to i128
  %mul226 = mul i128 %conv223, %conv225
  store i128 %mul226, ptr %x61, align 16
  %168 = load i128, ptr %x61, align 16
  %169 = load i128, ptr %x45, align 16
  %170 = load i128, ptr %x39, align 16
  %171 = load i128, ptr %x34, align 16
  %172 = load i128, ptr %x30, align 16
  %add = add i128 %171, %172
  %add227 = add i128 %170, %add
  %add228 = add i128 %169, %add227
  %add229 = add i128 %168, %add228
  store i128 %add229, ptr %x62, align 16
  %173 = load i128, ptr %x62, align 16
  %shr = lshr i128 %173, 58
  store i128 %shr, ptr %x63, align 16
  %174 = load i128, ptr %x62, align 16
  %and = and i128 %174, 288230376151711743
  %conv230 = trunc i128 %and to i64
  store i64 %conv230, ptr %x64, align 8
  %175 = load i128, ptr %x53, align 16
  %176 = load i128, ptr %x46, align 16
  %177 = load i128, ptr %x40, align 16
  %178 = load i128, ptr %x35, align 16
  %179 = load i128, ptr %x31, align 16
  %add231 = add i128 %178, %179
  %add232 = add i128 %177, %add231
  %add233 = add i128 %176, %add232
  %add234 = add i128 %175, %add233
  store i128 %add234, ptr %x65, align 16
  %180 = load i128, ptr %x54, align 16
  %181 = load i128, ptr %x47, align 16
  %182 = load i128, ptr %x41, align 16
  %183 = load i128, ptr %x36, align 16
  %184 = load i128, ptr %x17, align 16
  %add235 = add i128 %183, %184
  %add236 = add i128 %182, %add235
  %add237 = add i128 %181, %add236
  %add238 = add i128 %180, %add237
  store i128 %add238, ptr %x66, align 16
  %185 = load i128, ptr %x55, align 16
  %186 = load i128, ptr %x48, align 16
  %187 = load i128, ptr %x42, align 16
  %188 = load i128, ptr %x37, align 16
  %189 = load i128, ptr %x18, align 16
  %add239 = add i128 %188, %189
  %add240 = add i128 %187, %add239
  %add241 = add i128 %186, %add240
  %add242 = add i128 %185, %add241
  store i128 %add242, ptr %x67, align 16
  %190 = load i128, ptr %x56, align 16
  %191 = load i128, ptr %x49, align 16
  %192 = load i128, ptr %x43, align 16
  %193 = load i128, ptr %x20, align 16
  %194 = load i128, ptr %x19, align 16
  %add243 = add i128 %193, %194
  %add244 = add i128 %192, %add243
  %add245 = add i128 %191, %add244
  %add246 = add i128 %190, %add245
  store i128 %add246, ptr %x68, align 16
  %195 = load i128, ptr %x57, align 16
  %196 = load i128, ptr %x50, align 16
  %197 = load i128, ptr %x44, align 16
  %198 = load i128, ptr %x23, align 16
  %199 = load i128, ptr %x21, align 16
  %add247 = add i128 %198, %199
  %add248 = add i128 %197, %add247
  %add249 = add i128 %196, %add248
  %add250 = add i128 %195, %add249
  store i128 %add250, ptr %x69, align 16
  %200 = load i128, ptr %x58, align 16
  %201 = load i128, ptr %x51, align 16
  %202 = load i128, ptr %x27, align 16
  %203 = load i128, ptr %x24, align 16
  %204 = load i128, ptr %x22, align 16
  %add251 = add i128 %203, %204
  %add252 = add i128 %202, %add251
  %add253 = add i128 %201, %add252
  %add254 = add i128 %200, %add253
  store i128 %add254, ptr %x70, align 16
  %205 = load i128, ptr %x59, align 16
  %206 = load i128, ptr %x52, align 16
  %207 = load i128, ptr %x32, align 16
  %208 = load i128, ptr %x28, align 16
  %209 = load i128, ptr %x25, align 16
  %add255 = add i128 %208, %209
  %add256 = add i128 %207, %add255
  %add257 = add i128 %206, %add256
  %add258 = add i128 %205, %add257
  store i128 %add258, ptr %x71, align 16
  %210 = load i128, ptr %x60, align 16
  %211 = load i128, ptr %x38, align 16
  %212 = load i128, ptr %x33, align 16
  %213 = load i128, ptr %x29, align 16
  %214 = load i128, ptr %x26, align 16
  %add259 = add i128 %213, %214
  %add260 = add i128 %212, %add259
  %add261 = add i128 %211, %add260
  %add262 = add i128 %210, %add261
  store i128 %add262, ptr %x72, align 16
  %215 = load i128, ptr %x63, align 16
  %216 = load i128, ptr %x72, align 16
  %add263 = add i128 %215, %216
  store i128 %add263, ptr %x73, align 16
  %217 = load i128, ptr %x73, align 16
  %shr264 = lshr i128 %217, 58
  store i128 %shr264, ptr %x74, align 16
  %218 = load i128, ptr %x73, align 16
  %and265 = and i128 %218, 288230376151711743
  %conv266 = trunc i128 %and265 to i64
  store i64 %conv266, ptr %x75, align 8
  %219 = load i128, ptr %x74, align 16
  %220 = load i128, ptr %x71, align 16
  %add267 = add i128 %219, %220
  store i128 %add267, ptr %x76, align 16
  %221 = load i128, ptr %x76, align 16
  %shr268 = lshr i128 %221, 58
  store i128 %shr268, ptr %x77, align 16
  %222 = load i128, ptr %x76, align 16
  %and269 = and i128 %222, 288230376151711743
  %conv270 = trunc i128 %and269 to i64
  store i64 %conv270, ptr %x78, align 8
  %223 = load i128, ptr %x77, align 16
  %224 = load i128, ptr %x70, align 16
  %add271 = add i128 %223, %224
  store i128 %add271, ptr %x79, align 16
  %225 = load i128, ptr %x79, align 16
  %shr272 = lshr i128 %225, 58
  store i128 %shr272, ptr %x80, align 16
  %226 = load i128, ptr %x79, align 16
  %and273 = and i128 %226, 288230376151711743
  %conv274 = trunc i128 %and273 to i64
  store i64 %conv274, ptr %x81, align 8
  %227 = load i128, ptr %x80, align 16
  %228 = load i128, ptr %x69, align 16
  %add275 = add i128 %227, %228
  store i128 %add275, ptr %x82, align 16
  %229 = load i128, ptr %x82, align 16
  %shr276 = lshr i128 %229, 58
  store i128 %shr276, ptr %x83, align 16
  %230 = load i128, ptr %x82, align 16
  %and277 = and i128 %230, 288230376151711743
  %conv278 = trunc i128 %and277 to i64
  store i64 %conv278, ptr %x84, align 8
  %231 = load i128, ptr %x83, align 16
  %232 = load i128, ptr %x68, align 16
  %add279 = add i128 %231, %232
  store i128 %add279, ptr %x85, align 16
  %233 = load i128, ptr %x85, align 16
  %shr280 = lshr i128 %233, 58
  store i128 %shr280, ptr %x86, align 16
  %234 = load i128, ptr %x85, align 16
  %and281 = and i128 %234, 288230376151711743
  %conv282 = trunc i128 %and281 to i64
  store i64 %conv282, ptr %x87, align 8
  %235 = load i128, ptr %x86, align 16
  %236 = load i128, ptr %x67, align 16
  %add283 = add i128 %235, %236
  store i128 %add283, ptr %x88, align 16
  %237 = load i128, ptr %x88, align 16
  %shr284 = lshr i128 %237, 58
  store i128 %shr284, ptr %x89, align 16
  %238 = load i128, ptr %x88, align 16
  %and285 = and i128 %238, 288230376151711743
  %conv286 = trunc i128 %and285 to i64
  store i64 %conv286, ptr %x90, align 8
  %239 = load i128, ptr %x89, align 16
  %240 = load i128, ptr %x66, align 16
  %add287 = add i128 %239, %240
  store i128 %add287, ptr %x91, align 16
  %241 = load i128, ptr %x91, align 16
  %shr288 = lshr i128 %241, 58
  store i128 %shr288, ptr %x92, align 16
  %242 = load i128, ptr %x91, align 16
  %and289 = and i128 %242, 288230376151711743
  %conv290 = trunc i128 %and289 to i64
  store i64 %conv290, ptr %x93, align 8
  %243 = load i128, ptr %x92, align 16
  %244 = load i128, ptr %x65, align 16
  %add291 = add i128 %243, %244
  store i128 %add291, ptr %x94, align 16
  %245 = load i128, ptr %x94, align 16
  %shr292 = lshr i128 %245, 57
  store i128 %shr292, ptr %x95, align 16
  %246 = load i128, ptr %x94, align 16
  %and293 = and i128 %246, 144115188075855871
  %conv294 = trunc i128 %and293 to i64
  store i64 %conv294, ptr %x96, align 8
  %247 = load i64, ptr %x64, align 8
  %conv295 = zext i64 %247 to i128
  %248 = load i128, ptr %x95, align 16
  %add296 = add i128 %conv295, %248
  store i128 %add296, ptr %x97, align 16
  %249 = load i128, ptr %x97, align 16
  %shr297 = lshr i128 %249, 58
  %conv298 = trunc i128 %shr297 to i64
  store i64 %conv298, ptr %x98, align 8
  %250 = load i128, ptr %x97, align 16
  %and299 = and i128 %250, 288230376151711743
  %conv300 = trunc i128 %and299 to i64
  store i64 %conv300, ptr %x99, align 8
  %251 = load i64, ptr %x98, align 8
  %252 = load i64, ptr %x75, align 8
  %add301 = add i64 %251, %252
  store i64 %add301, ptr %x100, align 8
  %253 = load i64, ptr %x100, align 8
  %shr302 = lshr i64 %253, 58
  %conv303 = trunc i64 %shr302 to i8
  store i8 %conv303, ptr %x101, align 1
  %254 = load i64, ptr %x100, align 8
  %and304 = and i64 %254, 288230376151711743
  store i64 %and304, ptr %x102, align 8
  %255 = load i8, ptr %x101, align 1
  %conv305 = zext i8 %255 to i64
  %256 = load i64, ptr %x78, align 8
  %add306 = add i64 %conv305, %256
  store i64 %add306, ptr %x103, align 8
  %257 = load i64, ptr %x99, align 8
  %258 = load ptr, ptr %out1.addr, align 8
  %arrayidx307 = getelementptr inbounds i64, ptr %258, i64 0
  store i64 %257, ptr %arrayidx307, align 8
  %259 = load i64, ptr %x102, align 8
  %260 = load ptr, ptr %out1.addr, align 8
  %arrayidx308 = getelementptr inbounds i64, ptr %260, i64 1
  store i64 %259, ptr %arrayidx308, align 8
  %261 = load i64, ptr %x103, align 8
  %262 = load ptr, ptr %out1.addr, align 8
  %arrayidx309 = getelementptr inbounds i64, ptr %262, i64 2
  store i64 %261, ptr %arrayidx309, align 8
  %263 = load i64, ptr %x81, align 8
  %264 = load ptr, ptr %out1.addr, align 8
  %arrayidx310 = getelementptr inbounds i64, ptr %264, i64 3
  store i64 %263, ptr %arrayidx310, align 8
  %265 = load i64, ptr %x84, align 8
  %266 = load ptr, ptr %out1.addr, align 8
  %arrayidx311 = getelementptr inbounds i64, ptr %266, i64 4
  store i64 %265, ptr %arrayidx311, align 8
  %267 = load i64, ptr %x87, align 8
  %268 = load ptr, ptr %out1.addr, align 8
  %arrayidx312 = getelementptr inbounds i64, ptr %268, i64 5
  store i64 %267, ptr %arrayidx312, align 8
  %269 = load i64, ptr %x90, align 8
  %270 = load ptr, ptr %out1.addr, align 8
  %arrayidx313 = getelementptr inbounds i64, ptr %270, i64 6
  store i64 %269, ptr %arrayidx313, align 8
  %271 = load i64, ptr %x93, align 8
  %272 = load ptr, ptr %out1.addr, align 8
  %arrayidx314 = getelementptr inbounds i64, ptr %272, i64 7
  store i64 %271, ptr %arrayidx314, align 8
  %273 = load i64, ptr %x96, align 8
  %274 = load ptr, ptr %out1.addr, align 8
  %arrayidx315 = getelementptr inbounds i64, ptr %274, i64 8
  store i64 %273, ptr %arrayidx315, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %shr = lshr i64 %2, 58
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  %add = add i64 %shr, %4
  store i64 %add, ptr %x2, align 8
  %5 = load i64, ptr %x2, align 8
  %shr2 = lshr i64 %5, 58
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %shr2, %7
  store i64 %add4, ptr %x3, align 8
  %8 = load i64, ptr %x3, align 8
  %shr5 = lshr i64 %8, 58
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %shr5, %10
  store i64 %add7, ptr %x4, align 8
  %11 = load i64, ptr %x4, align 8
  %shr8 = lshr i64 %11, 58
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %shr8, %13
  store i64 %add10, ptr %x5, align 8
  %14 = load i64, ptr %x5, align 8
  %shr11 = lshr i64 %14, 58
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %shr11, %16
  store i64 %add13, ptr %x6, align 8
  %17 = load i64, ptr %x6, align 8
  %shr14 = lshr i64 %17, 58
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %shr14, %19
  store i64 %add16, ptr %x7, align 8
  %20 = load i64, ptr %x7, align 8
  %shr17 = lshr i64 %20, 58
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 7
  %22 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %shr17, %22
  store i64 %add19, ptr %x8, align 8
  %23 = load i64, ptr %x8, align 8
  %shr20 = lshr i64 %23, 58
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %24, i64 8
  %25 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %shr20, %25
  store i64 %add22, ptr %x9, align 8
  %26 = load i64, ptr %x1, align 8
  %and = and i64 %26, 288230376151711743
  %27 = load i64, ptr %x9, align 8
  %shr23 = lshr i64 %27, 57
  %add24 = add i64 %and, %shr23
  store i64 %add24, ptr %x10, align 8
  %28 = load i64, ptr %x10, align 8
  %shr25 = lshr i64 %28, 58
  %conv = trunc i64 %shr25 to i8
  %conv26 = zext i8 %conv to i64
  %29 = load i64, ptr %x2, align 8
  %and27 = and i64 %29, 288230376151711743
  %add28 = add i64 %conv26, %and27
  store i64 %add28, ptr %x11, align 8
  %30 = load i64, ptr %x10, align 8
  %and29 = and i64 %30, 288230376151711743
  store i64 %and29, ptr %x12, align 8
  %31 = load i64, ptr %x11, align 8
  %and30 = and i64 %31, 288230376151711743
  store i64 %and30, ptr %x13, align 8
  %32 = load i64, ptr %x11, align 8
  %shr31 = lshr i64 %32, 58
  %conv32 = trunc i64 %shr31 to i8
  %conv33 = zext i8 %conv32 to i64
  %33 = load i64, ptr %x3, align 8
  %and34 = and i64 %33, 288230376151711743
  %add35 = add i64 %conv33, %and34
  store i64 %add35, ptr %x14, align 8
  %34 = load i64, ptr %x4, align 8
  %and36 = and i64 %34, 288230376151711743
  store i64 %and36, ptr %x15, align 8
  %35 = load i64, ptr %x5, align 8
  %and37 = and i64 %35, 288230376151711743
  store i64 %and37, ptr %x16, align 8
  %36 = load i64, ptr %x6, align 8
  %and38 = and i64 %36, 288230376151711743
  store i64 %and38, ptr %x17, align 8
  %37 = load i64, ptr %x7, align 8
  %and39 = and i64 %37, 288230376151711743
  store i64 %and39, ptr %x18, align 8
  %38 = load i64, ptr %x8, align 8
  %and40 = and i64 %38, 288230376151711743
  store i64 %and40, ptr %x19, align 8
  %39 = load i64, ptr %x9, align 8
  %and41 = and i64 %39, 144115188075855871
  store i64 %and41, ptr %x20, align 8
  %40 = load i64, ptr %x12, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %40, ptr %arrayidx42, align 8
  %42 = load i64, ptr %x13, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %arrayidx43, align 8
  %44 = load i64, ptr %x14, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %arrayidx44, align 8
  %46 = load i64, ptr %x15, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 %46, ptr %arrayidx45, align 8
  %48 = load i64, ptr %x16, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %49, i64 4
  store i64 %48, ptr %arrayidx46, align 8
  %50 = load i64, ptr %x17, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %51, i64 5
  store i64 %50, ptr %arrayidx47, align 8
  %52 = load i64, ptr %x18, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %53, i64 6
  store i64 %52, ptr %arrayidx48, align 8
  %54 = load i64, ptr %x19, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %55, i64 7
  store i64 %54, ptr %arrayidx49, align 8
  %56 = load i64, ptr %x20, align 8
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %57, i64 8
  store i64 %56, ptr %arrayidx50, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %add = add i64 %1, %3
  store i64 %add, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %5, %7
  store i64 %add4, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx5, align 8
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %9, %11
  store i64 %add7, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx8, align 8
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 3
  %15 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %13, %15
  store i64 %add10, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx11, align 8
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %17, %19
  store i64 %add13, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %20, i64 5
  %21 = load i64, ptr %arrayidx14, align 8
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %22, i64 5
  %23 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %21, %23
  store i64 %add16, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %24, i64 6
  %25 = load i64, ptr %arrayidx17, align 8
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %26, i64 6
  %27 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %25, %27
  store i64 %add19, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %28, i64 7
  %29 = load i64, ptr %arrayidx20, align 8
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %30, i64 7
  %31 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %29, %31
  store i64 %add22, ptr %x8, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %32, i64 8
  %33 = load i64, ptr %arrayidx23, align 8
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %34, i64 8
  %35 = load i64, ptr %arrayidx24, align 8
  %add25 = add i64 %33, %35
  store i64 %add25, ptr %x9, align 8
  %36 = load i64, ptr %x1, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %37, i64 0
  store i64 %36, ptr %arrayidx26, align 8
  %38 = load i64, ptr %x2, align 8
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %39, i64 1
  store i64 %38, ptr %arrayidx27, align 8
  %40 = load i64, ptr %x3, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %41, i64 2
  store i64 %40, ptr %arrayidx28, align 8
  %42 = load i64, ptr %x4, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %43, i64 3
  store i64 %42, ptr %arrayidx29, align 8
  %44 = load i64, ptr %x5, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %45, i64 4
  store i64 %44, ptr %arrayidx30, align 8
  %46 = load i64, ptr %x6, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %47, i64 5
  store i64 %46, ptr %arrayidx31, align 8
  %48 = load i64, ptr %x7, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %49, i64 6
  store i64 %48, ptr %arrayidx32, align 8
  %50 = load i64, ptr %x8, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %51, i64 7
  store i64 %50, ptr %arrayidx33, align 8
  %52 = load i64, ptr %x9, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %53, i64 8
  store i64 %52, ptr %arrayidx34, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %add = add i64 576460752303423486, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %sub = sub i64 %add, %3
  store i64 %sub, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %add3 = add i64 576460752303423486, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx4, align 8
  %sub5 = sub i64 %add3, %7
  store i64 %sub5, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 576460752303423486, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx8, align 8
  %sub9 = sub i64 %add7, %11
  store i64 %sub9, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 576460752303423486, %13
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %14, i64 3
  %15 = load i64, ptr %arrayidx12, align 8
  %sub13 = sub i64 %add11, %15
  store i64 %sub13, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 576460752303423486, %17
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx16, align 8
  %sub17 = sub i64 %add15, %19
  store i64 %sub17, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %20, i64 5
  %21 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 576460752303423486, %21
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %22, i64 5
  %23 = load i64, ptr %arrayidx20, align 8
  %sub21 = sub i64 %add19, %23
  store i64 %sub21, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %24, i64 6
  %25 = load i64, ptr %arrayidx22, align 8
  %add23 = add i64 576460752303423486, %25
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %26, i64 6
  %27 = load i64, ptr %arrayidx24, align 8
  %sub25 = sub i64 %add23, %27
  store i64 %sub25, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %28, i64 7
  %29 = load i64, ptr %arrayidx26, align 8
  %add27 = add i64 576460752303423486, %29
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %30, i64 7
  %31 = load i64, ptr %arrayidx28, align 8
  %sub29 = sub i64 %add27, %31
  store i64 %sub29, ptr %x8, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %32, i64 8
  %33 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 288230376151711742, %33
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %34, i64 8
  %35 = load i64, ptr %arrayidx32, align 8
  %sub33 = sub i64 %add31, %35
  store i64 %sub33, ptr %x9, align 8
  %36 = load i64, ptr %x1, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %37, i64 0
  store i64 %36, ptr %arrayidx34, align 8
  %38 = load i64, ptr %x2, align 8
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %39, i64 1
  store i64 %38, ptr %arrayidx35, align 8
  %40 = load i64, ptr %x3, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %41, i64 2
  store i64 %40, ptr %arrayidx36, align 8
  %42 = load i64, ptr %x4, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %43, i64 3
  store i64 %42, ptr %arrayidx37, align 8
  %44 = load i64, ptr %x5, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %45, i64 4
  store i64 %44, ptr %arrayidx38, align 8
  %46 = load i64, ptr %x6, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %47, i64 5
  store i64 %46, ptr %arrayidx39, align 8
  %48 = load i64, ptr %x7, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %49, i64 6
  store i64 %48, ptr %arrayidx40, align 8
  %50 = load i64, ptr %x8, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %51, i64 7
  store i64 %50, ptr %arrayidx41, align 8
  %52 = load i64, ptr %x9, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %53, i64 8
  store i64 %52, ptr %arrayidx42, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %sub = sub i64 576460752303423486, %1
  store i64 %sub, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %sub2 = sub i64 576460752303423486, %3
  store i64 %sub2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx3, align 8
  %sub4 = sub i64 576460752303423486, %5
  store i64 %sub4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx5, align 8
  %sub6 = sub i64 576460752303423486, %7
  store i64 %sub6, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx7, align 8
  %sub8 = sub i64 576460752303423486, %9
  store i64 %sub8, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx9, align 8
  %sub10 = sub i64 576460752303423486, %11
  store i64 %sub10, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx11, align 8
  %sub12 = sub i64 576460752303423486, %13
  store i64 %sub12, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %14, i64 7
  %15 = load i64, ptr %arrayidx13, align 8
  %sub14 = sub i64 576460752303423486, %15
  store i64 %sub14, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %16, i64 8
  %17 = load i64, ptr %arrayidx15, align 8
  %sub16 = sub i64 288230376151711742, %17
  store i64 %sub16, ptr %x9, align 8
  %18 = load i64, ptr %x1, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 %18, ptr %arrayidx17, align 8
  %20 = load i64, ptr %x2, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 1
  store i64 %20, ptr %arrayidx18, align 8
  %22 = load i64, ptr %x3, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 2
  store i64 %22, ptr %arrayidx19, align 8
  %24 = load i64, ptr %x4, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %25, i64 3
  store i64 %24, ptr %arrayidx20, align 8
  %26 = load i64, ptr %x5, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %27, i64 4
  store i64 %26, ptr %arrayidx21, align 8
  %28 = load i64, ptr %x6, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %29, i64 5
  store i64 %28, ptr %arrayidx22, align 8
  %30 = load i64, ptr %x7, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %31, i64 6
  store i64 %30, ptr %arrayidx23, align 8
  %32 = load i64, ptr %x8, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %33, i64 7
  store i64 %32, ptr %arrayidx24, align 8
  %34 = load i64, ptr %x9, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %35, i64 8
  store i64 %34, ptr %arrayidx25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
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
  %x8 = alloca i64, align 8
  %x9 = alloca i64, align 8
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
  call void @fiat_p521_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 4
  %24 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x5, i8 noundef zeroext %20, i64 noundef %22, i64 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %26, i64 5
  %27 = load i64, ptr %arrayidx10, align 8
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 5
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %25, i64 noundef %27, i64 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %31, i64 6
  %32 = load i64, ptr %arrayidx12, align 8
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 6
  %34 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %30, i64 noundef %32, i64 noundef %34)
  %35 = load i8, ptr %arg1.addr, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx14, align 8
  %38 = load ptr, ptr %arg3.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %38, i64 7
  %39 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %35, i64 noundef %37, i64 noundef %39)
  %40 = load i8, ptr %arg1.addr, align 1
  %41 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %41, i64 8
  %42 = load i64, ptr %arrayidx16, align 8
  %43 = load ptr, ptr %arg3.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %43, i64 8
  %44 = load i64, ptr %arrayidx17, align 8
  call void @fiat_p521_cmovznz_u64(ptr noundef %x9, i8 noundef zeroext %40, i64 noundef %42, i64 noundef %44)
  %45 = load i64, ptr %x1, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %46, i64 0
  store i64 %45, ptr %arrayidx18, align 8
  %47 = load i64, ptr %x2, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %48, i64 1
  store i64 %47, ptr %arrayidx19, align 8
  %49 = load i64, ptr %x3, align 8
  %50 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %50, i64 2
  store i64 %49, ptr %arrayidx20, align 8
  %51 = load i64, ptr %x4, align 8
  %52 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %52, i64 3
  store i64 %51, ptr %arrayidx21, align 8
  %53 = load i64, ptr %x5, align 8
  %54 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %54, i64 4
  store i64 %53, ptr %arrayidx22, align 8
  %55 = load i64, ptr %x6, align 8
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %56, i64 5
  store i64 %55, ptr %arrayidx23, align 8
  %57 = load i64, ptr %x7, align 8
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %58, i64 6
  store i64 %57, ptr %arrayidx24, align 8
  %59 = load i64, ptr %x8, align 8
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %60, i64 7
  store i64 %59, ptr %arrayidx25, align 8
  %61 = load i64, ptr %x9, align 8
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %62, i64 8
  store i64 %61, ptr %arrayidx26, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x16 = alloca i8, align 1
  %x17 = alloca i64, align 8
  %x18 = alloca i8, align 1
  %x19 = alloca i64, align 8
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
  %x72 = alloca i8, align 1
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
  %x86 = alloca i8, align 1
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
  %x102 = alloca i8, align 1
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
  %x115 = alloca i8, align 1
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
  %x146 = alloca i8, align 1
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
  %x158 = alloca i8, align 1
  %x159 = alloca i64, align 8
  %x160 = alloca i8, align 1
  %x161 = alloca i8, align 1
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
  %x175 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef 288230376151711743)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef %4, i64 noundef 288230376151711743)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %7, i64 noundef 288230376151711743)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef %10, i64 noundef 288230376151711743)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef %13, i64 noundef 288230376151711743)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i64 noundef %16, i64 noundef 288230376151711743)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i64 noundef %19, i64 noundef 288230376151711743)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %21, i64 7
  %22 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p521_subborrowx_u58(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i64 noundef %22, i64 noundef 288230376151711743)
  %23 = load i8, ptr %x16, align 1
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %24, i64 8
  %25 = load i64, ptr %arrayidx8, align 8
  call void @fiat_p521_subborrowx_u57(ptr noundef %x17, ptr noundef %x18, i8 noundef zeroext %23, i64 noundef %25, i64 noundef 144115188075855871)
  %26 = load i8, ptr %x18, align 1
  call void @fiat_p521_cmovznz_u64(ptr noundef %x19, i8 noundef zeroext %26, i64 noundef 0, i64 noundef -1)
  %27 = load i64, ptr %x1, align 8
  %28 = load i64, ptr %x19, align 8
  %and = and i64 %28, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext 0, i64 noundef %27, i64 noundef %and)
  %29 = load i8, ptr %x21, align 1
  %30 = load i64, ptr %x3, align 8
  %31 = load i64, ptr %x19, align 8
  %and9 = and i64 %31, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %and9)
  %32 = load i8, ptr %x23, align 1
  %33 = load i64, ptr %x5, align 8
  %34 = load i64, ptr %x19, align 8
  %and10 = and i64 %34, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %and10)
  %35 = load i8, ptr %x25, align 1
  %36 = load i64, ptr %x7, align 8
  %37 = load i64, ptr %x19, align 8
  %and11 = and i64 %37, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %and11)
  %38 = load i8, ptr %x27, align 1
  %39 = load i64, ptr %x9, align 8
  %40 = load i64, ptr %x19, align 8
  %and12 = and i64 %40, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %and12)
  %41 = load i8, ptr %x29, align 1
  %42 = load i64, ptr %x11, align 8
  %43 = load i64, ptr %x19, align 8
  %and13 = and i64 %43, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %and13)
  %44 = load i8, ptr %x31, align 1
  %45 = load i64, ptr %x13, align 8
  %46 = load i64, ptr %x19, align 8
  %and14 = and i64 %46, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %44, i64 noundef %45, i64 noundef %and14)
  %47 = load i8, ptr %x33, align 1
  %48 = load i64, ptr %x15, align 8
  %49 = load i64, ptr %x19, align 8
  %and15 = and i64 %49, 288230376151711743
  call void @fiat_p521_addcarryx_u58(ptr noundef %x34, ptr noundef %x35, i8 noundef zeroext %47, i64 noundef %48, i64 noundef %and15)
  %50 = load i8, ptr %x35, align 1
  %51 = load i64, ptr %x17, align 8
  %52 = load i64, ptr %x19, align 8
  %and16 = and i64 %52, 144115188075855871
  call void @fiat_p521_addcarryx_u57(ptr noundef %x36, ptr noundef %x37, i8 noundef zeroext %50, i64 noundef %51, i64 noundef %and16)
  %53 = load i64, ptr %x34, align 8
  %shl = shl i64 %53, 6
  store i64 %shl, ptr %x38, align 8
  %54 = load i64, ptr %x32, align 8
  %shl17 = shl i64 %54, 4
  store i64 %shl17, ptr %x39, align 8
  %55 = load i64, ptr %x30, align 8
  %shl18 = shl i64 %55, 2
  store i64 %shl18, ptr %x40, align 8
  %56 = load i64, ptr %x26, align 8
  %shl19 = shl i64 %56, 6
  store i64 %shl19, ptr %x41, align 8
  %57 = load i64, ptr %x24, align 8
  %shl20 = shl i64 %57, 4
  store i64 %shl20, ptr %x42, align 8
  %58 = load i64, ptr %x22, align 8
  %shl21 = shl i64 %58, 2
  store i64 %shl21, ptr %x43, align 8
  %59 = load i64, ptr %x20, align 8
  %and22 = and i64 %59, 255
  %conv = trunc i64 %and22 to i8
  store i8 %conv, ptr %x44, align 1
  %60 = load i64, ptr %x20, align 8
  %shr = lshr i64 %60, 8
  store i64 %shr, ptr %x45, align 8
  %61 = load i64, ptr %x45, align 8
  %and23 = and i64 %61, 255
  %conv24 = trunc i64 %and23 to i8
  store i8 %conv24, ptr %x46, align 1
  %62 = load i64, ptr %x45, align 8
  %shr25 = lshr i64 %62, 8
  store i64 %shr25, ptr %x47, align 8
  %63 = load i64, ptr %x47, align 8
  %and26 = and i64 %63, 255
  %conv27 = trunc i64 %and26 to i8
  store i8 %conv27, ptr %x48, align 1
  %64 = load i64, ptr %x47, align 8
  %shr28 = lshr i64 %64, 8
  store i64 %shr28, ptr %x49, align 8
  %65 = load i64, ptr %x49, align 8
  %and29 = and i64 %65, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, ptr %x50, align 1
  %66 = load i64, ptr %x49, align 8
  %shr31 = lshr i64 %66, 8
  store i64 %shr31, ptr %x51, align 8
  %67 = load i64, ptr %x51, align 8
  %and32 = and i64 %67, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x52, align 1
  %68 = load i64, ptr %x51, align 8
  %shr34 = lshr i64 %68, 8
  store i64 %shr34, ptr %x53, align 8
  %69 = load i64, ptr %x53, align 8
  %and35 = and i64 %69, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x54, align 1
  %70 = load i64, ptr %x53, align 8
  %shr37 = lshr i64 %70, 8
  store i64 %shr37, ptr %x55, align 8
  %71 = load i64, ptr %x55, align 8
  %and38 = and i64 %71, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x56, align 1
  %72 = load i64, ptr %x55, align 8
  %shr40 = lshr i64 %72, 8
  %conv41 = trunc i64 %shr40 to i8
  store i8 %conv41, ptr %x57, align 1
  %73 = load i64, ptr %x43, align 8
  %74 = load i8, ptr %x57, align 1
  %conv42 = zext i8 %74 to i64
  %add = add i64 %73, %conv42
  store i64 %add, ptr %x58, align 8
  %75 = load i64, ptr %x58, align 8
  %and43 = and i64 %75, 255
  %conv44 = trunc i64 %and43 to i8
  store i8 %conv44, ptr %x59, align 1
  %76 = load i64, ptr %x58, align 8
  %shr45 = lshr i64 %76, 8
  store i64 %shr45, ptr %x60, align 8
  %77 = load i64, ptr %x60, align 8
  %and46 = and i64 %77, 255
  %conv47 = trunc i64 %and46 to i8
  store i8 %conv47, ptr %x61, align 1
  %78 = load i64, ptr %x60, align 8
  %shr48 = lshr i64 %78, 8
  store i64 %shr48, ptr %x62, align 8
  %79 = load i64, ptr %x62, align 8
  %and49 = and i64 %79, 255
  %conv50 = trunc i64 %and49 to i8
  store i8 %conv50, ptr %x63, align 1
  %80 = load i64, ptr %x62, align 8
  %shr51 = lshr i64 %80, 8
  store i64 %shr51, ptr %x64, align 8
  %81 = load i64, ptr %x64, align 8
  %and52 = and i64 %81, 255
  %conv53 = trunc i64 %and52 to i8
  store i8 %conv53, ptr %x65, align 1
  %82 = load i64, ptr %x64, align 8
  %shr54 = lshr i64 %82, 8
  store i64 %shr54, ptr %x66, align 8
  %83 = load i64, ptr %x66, align 8
  %and55 = and i64 %83, 255
  %conv56 = trunc i64 %and55 to i8
  store i8 %conv56, ptr %x67, align 1
  %84 = load i64, ptr %x66, align 8
  %shr57 = lshr i64 %84, 8
  store i64 %shr57, ptr %x68, align 8
  %85 = load i64, ptr %x68, align 8
  %and58 = and i64 %85, 255
  %conv59 = trunc i64 %and58 to i8
  store i8 %conv59, ptr %x69, align 1
  %86 = load i64, ptr %x68, align 8
  %shr60 = lshr i64 %86, 8
  store i64 %shr60, ptr %x70, align 8
  %87 = load i64, ptr %x70, align 8
  %and61 = and i64 %87, 255
  %conv62 = trunc i64 %and61 to i8
  store i8 %conv62, ptr %x71, align 1
  %88 = load i64, ptr %x70, align 8
  %shr63 = lshr i64 %88, 8
  %conv64 = trunc i64 %shr63 to i8
  store i8 %conv64, ptr %x72, align 1
  %89 = load i64, ptr %x42, align 8
  %90 = load i8, ptr %x72, align 1
  %conv65 = zext i8 %90 to i64
  %add66 = add i64 %89, %conv65
  store i64 %add66, ptr %x73, align 8
  %91 = load i64, ptr %x73, align 8
  %and67 = and i64 %91, 255
  %conv68 = trunc i64 %and67 to i8
  store i8 %conv68, ptr %x74, align 1
  %92 = load i64, ptr %x73, align 8
  %shr69 = lshr i64 %92, 8
  store i64 %shr69, ptr %x75, align 8
  %93 = load i64, ptr %x75, align 8
  %and70 = and i64 %93, 255
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x76, align 1
  %94 = load i64, ptr %x75, align 8
  %shr72 = lshr i64 %94, 8
  store i64 %shr72, ptr %x77, align 8
  %95 = load i64, ptr %x77, align 8
  %and73 = and i64 %95, 255
  %conv74 = trunc i64 %and73 to i8
  store i8 %conv74, ptr %x78, align 1
  %96 = load i64, ptr %x77, align 8
  %shr75 = lshr i64 %96, 8
  store i64 %shr75, ptr %x79, align 8
  %97 = load i64, ptr %x79, align 8
  %and76 = and i64 %97, 255
  %conv77 = trunc i64 %and76 to i8
  store i8 %conv77, ptr %x80, align 1
  %98 = load i64, ptr %x79, align 8
  %shr78 = lshr i64 %98, 8
  store i64 %shr78, ptr %x81, align 8
  %99 = load i64, ptr %x81, align 8
  %and79 = and i64 %99, 255
  %conv80 = trunc i64 %and79 to i8
  store i8 %conv80, ptr %x82, align 1
  %100 = load i64, ptr %x81, align 8
  %shr81 = lshr i64 %100, 8
  store i64 %shr81, ptr %x83, align 8
  %101 = load i64, ptr %x83, align 8
  %and82 = and i64 %101, 255
  %conv83 = trunc i64 %and82 to i8
  store i8 %conv83, ptr %x84, align 1
  %102 = load i64, ptr %x83, align 8
  %shr84 = lshr i64 %102, 8
  store i64 %shr84, ptr %x85, align 8
  %103 = load i64, ptr %x85, align 8
  %and85 = and i64 %103, 255
  %conv86 = trunc i64 %and85 to i8
  store i8 %conv86, ptr %x86, align 1
  %104 = load i64, ptr %x85, align 8
  %shr87 = lshr i64 %104, 8
  %conv88 = trunc i64 %shr87 to i8
  store i8 %conv88, ptr %x87, align 1
  %105 = load i64, ptr %x41, align 8
  %106 = load i8, ptr %x87, align 1
  %conv89 = zext i8 %106 to i64
  %add90 = add i64 %105, %conv89
  store i64 %add90, ptr %x88, align 8
  %107 = load i64, ptr %x88, align 8
  %and91 = and i64 %107, 255
  %conv92 = trunc i64 %and91 to i8
  store i8 %conv92, ptr %x89, align 1
  %108 = load i64, ptr %x88, align 8
  %shr93 = lshr i64 %108, 8
  store i64 %shr93, ptr %x90, align 8
  %109 = load i64, ptr %x90, align 8
  %and94 = and i64 %109, 255
  %conv95 = trunc i64 %and94 to i8
  store i8 %conv95, ptr %x91, align 1
  %110 = load i64, ptr %x90, align 8
  %shr96 = lshr i64 %110, 8
  store i64 %shr96, ptr %x92, align 8
  %111 = load i64, ptr %x92, align 8
  %and97 = and i64 %111, 255
  %conv98 = trunc i64 %and97 to i8
  store i8 %conv98, ptr %x93, align 1
  %112 = load i64, ptr %x92, align 8
  %shr99 = lshr i64 %112, 8
  store i64 %shr99, ptr %x94, align 8
  %113 = load i64, ptr %x94, align 8
  %and100 = and i64 %113, 255
  %conv101 = trunc i64 %and100 to i8
  store i8 %conv101, ptr %x95, align 1
  %114 = load i64, ptr %x94, align 8
  %shr102 = lshr i64 %114, 8
  store i64 %shr102, ptr %x96, align 8
  %115 = load i64, ptr %x96, align 8
  %and103 = and i64 %115, 255
  %conv104 = trunc i64 %and103 to i8
  store i8 %conv104, ptr %x97, align 1
  %116 = load i64, ptr %x96, align 8
  %shr105 = lshr i64 %116, 8
  store i64 %shr105, ptr %x98, align 8
  %117 = load i64, ptr %x98, align 8
  %and106 = and i64 %117, 255
  %conv107 = trunc i64 %and106 to i8
  store i8 %conv107, ptr %x99, align 1
  %118 = load i64, ptr %x98, align 8
  %shr108 = lshr i64 %118, 8
  store i64 %shr108, ptr %x100, align 8
  %119 = load i64, ptr %x100, align 8
  %and109 = and i64 %119, 255
  %conv110 = trunc i64 %and109 to i8
  store i8 %conv110, ptr %x101, align 1
  %120 = load i64, ptr %x100, align 8
  %shr111 = lshr i64 %120, 8
  %conv112 = trunc i64 %shr111 to i8
  store i8 %conv112, ptr %x102, align 1
  %121 = load i64, ptr %x28, align 8
  %and113 = and i64 %121, 255
  %conv114 = trunc i64 %and113 to i8
  store i8 %conv114, ptr %x103, align 1
  %122 = load i64, ptr %x28, align 8
  %shr115 = lshr i64 %122, 8
  store i64 %shr115, ptr %x104, align 8
  %123 = load i64, ptr %x104, align 8
  %and116 = and i64 %123, 255
  %conv117 = trunc i64 %and116 to i8
  store i8 %conv117, ptr %x105, align 1
  %124 = load i64, ptr %x104, align 8
  %shr118 = lshr i64 %124, 8
  store i64 %shr118, ptr %x106, align 8
  %125 = load i64, ptr %x106, align 8
  %and119 = and i64 %125, 255
  %conv120 = trunc i64 %and119 to i8
  store i8 %conv120, ptr %x107, align 1
  %126 = load i64, ptr %x106, align 8
  %shr121 = lshr i64 %126, 8
  store i64 %shr121, ptr %x108, align 8
  %127 = load i64, ptr %x108, align 8
  %and122 = and i64 %127, 255
  %conv123 = trunc i64 %and122 to i8
  store i8 %conv123, ptr %x109, align 1
  %128 = load i64, ptr %x108, align 8
  %shr124 = lshr i64 %128, 8
  store i64 %shr124, ptr %x110, align 8
  %129 = load i64, ptr %x110, align 8
  %and125 = and i64 %129, 255
  %conv126 = trunc i64 %and125 to i8
  store i8 %conv126, ptr %x111, align 1
  %130 = load i64, ptr %x110, align 8
  %shr127 = lshr i64 %130, 8
  store i64 %shr127, ptr %x112, align 8
  %131 = load i64, ptr %x112, align 8
  %and128 = and i64 %131, 255
  %conv129 = trunc i64 %and128 to i8
  store i8 %conv129, ptr %x113, align 1
  %132 = load i64, ptr %x112, align 8
  %shr130 = lshr i64 %132, 8
  store i64 %shr130, ptr %x114, align 8
  %133 = load i64, ptr %x114, align 8
  %and131 = and i64 %133, 255
  %conv132 = trunc i64 %and131 to i8
  store i8 %conv132, ptr %x115, align 1
  %134 = load i64, ptr %x114, align 8
  %shr133 = lshr i64 %134, 8
  %conv134 = trunc i64 %shr133 to i8
  store i8 %conv134, ptr %x116, align 1
  %135 = load i64, ptr %x40, align 8
  %136 = load i8, ptr %x116, align 1
  %conv135 = zext i8 %136 to i64
  %add136 = add i64 %135, %conv135
  store i64 %add136, ptr %x117, align 8
  %137 = load i64, ptr %x117, align 8
  %and137 = and i64 %137, 255
  %conv138 = trunc i64 %and137 to i8
  store i8 %conv138, ptr %x118, align 1
  %138 = load i64, ptr %x117, align 8
  %shr139 = lshr i64 %138, 8
  store i64 %shr139, ptr %x119, align 8
  %139 = load i64, ptr %x119, align 8
  %and140 = and i64 %139, 255
  %conv141 = trunc i64 %and140 to i8
  store i8 %conv141, ptr %x120, align 1
  %140 = load i64, ptr %x119, align 8
  %shr142 = lshr i64 %140, 8
  store i64 %shr142, ptr %x121, align 8
  %141 = load i64, ptr %x121, align 8
  %and143 = and i64 %141, 255
  %conv144 = trunc i64 %and143 to i8
  store i8 %conv144, ptr %x122, align 1
  %142 = load i64, ptr %x121, align 8
  %shr145 = lshr i64 %142, 8
  store i64 %shr145, ptr %x123, align 8
  %143 = load i64, ptr %x123, align 8
  %and146 = and i64 %143, 255
  %conv147 = trunc i64 %and146 to i8
  store i8 %conv147, ptr %x124, align 1
  %144 = load i64, ptr %x123, align 8
  %shr148 = lshr i64 %144, 8
  store i64 %shr148, ptr %x125, align 8
  %145 = load i64, ptr %x125, align 8
  %and149 = and i64 %145, 255
  %conv150 = trunc i64 %and149 to i8
  store i8 %conv150, ptr %x126, align 1
  %146 = load i64, ptr %x125, align 8
  %shr151 = lshr i64 %146, 8
  store i64 %shr151, ptr %x127, align 8
  %147 = load i64, ptr %x127, align 8
  %and152 = and i64 %147, 255
  %conv153 = trunc i64 %and152 to i8
  store i8 %conv153, ptr %x128, align 1
  %148 = load i64, ptr %x127, align 8
  %shr154 = lshr i64 %148, 8
  store i64 %shr154, ptr %x129, align 8
  %149 = load i64, ptr %x129, align 8
  %and155 = and i64 %149, 255
  %conv156 = trunc i64 %and155 to i8
  store i8 %conv156, ptr %x130, align 1
  %150 = load i64, ptr %x129, align 8
  %shr157 = lshr i64 %150, 8
  %conv158 = trunc i64 %shr157 to i8
  store i8 %conv158, ptr %x131, align 1
  %151 = load i64, ptr %x39, align 8
  %152 = load i8, ptr %x131, align 1
  %conv159 = zext i8 %152 to i64
  %add160 = add i64 %151, %conv159
  store i64 %add160, ptr %x132, align 8
  %153 = load i64, ptr %x132, align 8
  %and161 = and i64 %153, 255
  %conv162 = trunc i64 %and161 to i8
  store i8 %conv162, ptr %x133, align 1
  %154 = load i64, ptr %x132, align 8
  %shr163 = lshr i64 %154, 8
  store i64 %shr163, ptr %x134, align 8
  %155 = load i64, ptr %x134, align 8
  %and164 = and i64 %155, 255
  %conv165 = trunc i64 %and164 to i8
  store i8 %conv165, ptr %x135, align 1
  %156 = load i64, ptr %x134, align 8
  %shr166 = lshr i64 %156, 8
  store i64 %shr166, ptr %x136, align 8
  %157 = load i64, ptr %x136, align 8
  %and167 = and i64 %157, 255
  %conv168 = trunc i64 %and167 to i8
  store i8 %conv168, ptr %x137, align 1
  %158 = load i64, ptr %x136, align 8
  %shr169 = lshr i64 %158, 8
  store i64 %shr169, ptr %x138, align 8
  %159 = load i64, ptr %x138, align 8
  %and170 = and i64 %159, 255
  %conv171 = trunc i64 %and170 to i8
  store i8 %conv171, ptr %x139, align 1
  %160 = load i64, ptr %x138, align 8
  %shr172 = lshr i64 %160, 8
  store i64 %shr172, ptr %x140, align 8
  %161 = load i64, ptr %x140, align 8
  %and173 = and i64 %161, 255
  %conv174 = trunc i64 %and173 to i8
  store i8 %conv174, ptr %x141, align 1
  %162 = load i64, ptr %x140, align 8
  %shr175 = lshr i64 %162, 8
  store i64 %shr175, ptr %x142, align 8
  %163 = load i64, ptr %x142, align 8
  %and176 = and i64 %163, 255
  %conv177 = trunc i64 %and176 to i8
  store i8 %conv177, ptr %x143, align 1
  %164 = load i64, ptr %x142, align 8
  %shr178 = lshr i64 %164, 8
  store i64 %shr178, ptr %x144, align 8
  %165 = load i64, ptr %x144, align 8
  %and179 = and i64 %165, 255
  %conv180 = trunc i64 %and179 to i8
  store i8 %conv180, ptr %x145, align 1
  %166 = load i64, ptr %x144, align 8
  %shr181 = lshr i64 %166, 8
  %conv182 = trunc i64 %shr181 to i8
  store i8 %conv182, ptr %x146, align 1
  %167 = load i64, ptr %x38, align 8
  %168 = load i8, ptr %x146, align 1
  %conv183 = zext i8 %168 to i64
  %add184 = add i64 %167, %conv183
  store i64 %add184, ptr %x147, align 8
  %169 = load i64, ptr %x147, align 8
  %and185 = and i64 %169, 255
  %conv186 = trunc i64 %and185 to i8
  store i8 %conv186, ptr %x148, align 1
  %170 = load i64, ptr %x147, align 8
  %shr187 = lshr i64 %170, 8
  store i64 %shr187, ptr %x149, align 8
  %171 = load i64, ptr %x149, align 8
  %and188 = and i64 %171, 255
  %conv189 = trunc i64 %and188 to i8
  store i8 %conv189, ptr %x150, align 1
  %172 = load i64, ptr %x149, align 8
  %shr190 = lshr i64 %172, 8
  store i64 %shr190, ptr %x151, align 8
  %173 = load i64, ptr %x151, align 8
  %and191 = and i64 %173, 255
  %conv192 = trunc i64 %and191 to i8
  store i8 %conv192, ptr %x152, align 1
  %174 = load i64, ptr %x151, align 8
  %shr193 = lshr i64 %174, 8
  store i64 %shr193, ptr %x153, align 8
  %175 = load i64, ptr %x153, align 8
  %and194 = and i64 %175, 255
  %conv195 = trunc i64 %and194 to i8
  store i8 %conv195, ptr %x154, align 1
  %176 = load i64, ptr %x153, align 8
  %shr196 = lshr i64 %176, 8
  store i64 %shr196, ptr %x155, align 8
  %177 = load i64, ptr %x155, align 8
  %and197 = and i64 %177, 255
  %conv198 = trunc i64 %and197 to i8
  store i8 %conv198, ptr %x156, align 1
  %178 = load i64, ptr %x155, align 8
  %shr199 = lshr i64 %178, 8
  store i64 %shr199, ptr %x157, align 8
  %179 = load i64, ptr %x157, align 8
  %and200 = and i64 %179, 255
  %conv201 = trunc i64 %and200 to i8
  store i8 %conv201, ptr %x158, align 1
  %180 = load i64, ptr %x157, align 8
  %shr202 = lshr i64 %180, 8
  store i64 %shr202, ptr %x159, align 8
  %181 = load i64, ptr %x159, align 8
  %and203 = and i64 %181, 255
  %conv204 = trunc i64 %and203 to i8
  store i8 %conv204, ptr %x160, align 1
  %182 = load i64, ptr %x159, align 8
  %shr205 = lshr i64 %182, 8
  %conv206 = trunc i64 %shr205 to i8
  store i8 %conv206, ptr %x161, align 1
  %183 = load i64, ptr %x36, align 8
  %and207 = and i64 %183, 255
  %conv208 = trunc i64 %and207 to i8
  store i8 %conv208, ptr %x162, align 1
  %184 = load i64, ptr %x36, align 8
  %shr209 = lshr i64 %184, 8
  store i64 %shr209, ptr %x163, align 8
  %185 = load i64, ptr %x163, align 8
  %and210 = and i64 %185, 255
  %conv211 = trunc i64 %and210 to i8
  store i8 %conv211, ptr %x164, align 1
  %186 = load i64, ptr %x163, align 8
  %shr212 = lshr i64 %186, 8
  store i64 %shr212, ptr %x165, align 8
  %187 = load i64, ptr %x165, align 8
  %and213 = and i64 %187, 255
  %conv214 = trunc i64 %and213 to i8
  store i8 %conv214, ptr %x166, align 1
  %188 = load i64, ptr %x165, align 8
  %shr215 = lshr i64 %188, 8
  store i64 %shr215, ptr %x167, align 8
  %189 = load i64, ptr %x167, align 8
  %and216 = and i64 %189, 255
  %conv217 = trunc i64 %and216 to i8
  store i8 %conv217, ptr %x168, align 1
  %190 = load i64, ptr %x167, align 8
  %shr218 = lshr i64 %190, 8
  store i64 %shr218, ptr %x169, align 8
  %191 = load i64, ptr %x169, align 8
  %and219 = and i64 %191, 255
  %conv220 = trunc i64 %and219 to i8
  store i8 %conv220, ptr %x170, align 1
  %192 = load i64, ptr %x169, align 8
  %shr221 = lshr i64 %192, 8
  store i64 %shr221, ptr %x171, align 8
  %193 = load i64, ptr %x171, align 8
  %and222 = and i64 %193, 255
  %conv223 = trunc i64 %and222 to i8
  store i8 %conv223, ptr %x172, align 1
  %194 = load i64, ptr %x171, align 8
  %shr224 = lshr i64 %194, 8
  store i64 %shr224, ptr %x173, align 8
  %195 = load i64, ptr %x173, align 8
  %and225 = and i64 %195, 255
  %conv226 = trunc i64 %and225 to i8
  store i8 %conv226, ptr %x174, align 1
  %196 = load i64, ptr %x173, align 8
  %shr227 = lshr i64 %196, 8
  %conv228 = trunc i64 %shr227 to i8
  store i8 %conv228, ptr %x175, align 1
  %197 = load i8, ptr %x44, align 1
  %198 = load ptr, ptr %out1.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %198, i64 0
  store i8 %197, ptr %arrayidx229, align 1
  %199 = load i8, ptr %x46, align 1
  %200 = load ptr, ptr %out1.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, ptr %200, i64 1
  store i8 %199, ptr %arrayidx230, align 1
  %201 = load i8, ptr %x48, align 1
  %202 = load ptr, ptr %out1.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, ptr %202, i64 2
  store i8 %201, ptr %arrayidx231, align 1
  %203 = load i8, ptr %x50, align 1
  %204 = load ptr, ptr %out1.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %204, i64 3
  store i8 %203, ptr %arrayidx232, align 1
  %205 = load i8, ptr %x52, align 1
  %206 = load ptr, ptr %out1.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, ptr %206, i64 4
  store i8 %205, ptr %arrayidx233, align 1
  %207 = load i8, ptr %x54, align 1
  %208 = load ptr, ptr %out1.addr, align 8
  %arrayidx234 = getelementptr inbounds i8, ptr %208, i64 5
  store i8 %207, ptr %arrayidx234, align 1
  %209 = load i8, ptr %x56, align 1
  %210 = load ptr, ptr %out1.addr, align 8
  %arrayidx235 = getelementptr inbounds i8, ptr %210, i64 6
  store i8 %209, ptr %arrayidx235, align 1
  %211 = load i8, ptr %x59, align 1
  %212 = load ptr, ptr %out1.addr, align 8
  %arrayidx236 = getelementptr inbounds i8, ptr %212, i64 7
  store i8 %211, ptr %arrayidx236, align 1
  %213 = load i8, ptr %x61, align 1
  %214 = load ptr, ptr %out1.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, ptr %214, i64 8
  store i8 %213, ptr %arrayidx237, align 1
  %215 = load i8, ptr %x63, align 1
  %216 = load ptr, ptr %out1.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, ptr %216, i64 9
  store i8 %215, ptr %arrayidx238, align 1
  %217 = load i8, ptr %x65, align 1
  %218 = load ptr, ptr %out1.addr, align 8
  %arrayidx239 = getelementptr inbounds i8, ptr %218, i64 10
  store i8 %217, ptr %arrayidx239, align 1
  %219 = load i8, ptr %x67, align 1
  %220 = load ptr, ptr %out1.addr, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %220, i64 11
  store i8 %219, ptr %arrayidx240, align 1
  %221 = load i8, ptr %x69, align 1
  %222 = load ptr, ptr %out1.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, ptr %222, i64 12
  store i8 %221, ptr %arrayidx241, align 1
  %223 = load i8, ptr %x71, align 1
  %224 = load ptr, ptr %out1.addr, align 8
  %arrayidx242 = getelementptr inbounds i8, ptr %224, i64 13
  store i8 %223, ptr %arrayidx242, align 1
  %225 = load i8, ptr %x74, align 1
  %226 = load ptr, ptr %out1.addr, align 8
  %arrayidx243 = getelementptr inbounds i8, ptr %226, i64 14
  store i8 %225, ptr %arrayidx243, align 1
  %227 = load i8, ptr %x76, align 1
  %228 = load ptr, ptr %out1.addr, align 8
  %arrayidx244 = getelementptr inbounds i8, ptr %228, i64 15
  store i8 %227, ptr %arrayidx244, align 1
  %229 = load i8, ptr %x78, align 1
  %230 = load ptr, ptr %out1.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, ptr %230, i64 16
  store i8 %229, ptr %arrayidx245, align 1
  %231 = load i8, ptr %x80, align 1
  %232 = load ptr, ptr %out1.addr, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %232, i64 17
  store i8 %231, ptr %arrayidx246, align 1
  %233 = load i8, ptr %x82, align 1
  %234 = load ptr, ptr %out1.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %234, i64 18
  store i8 %233, ptr %arrayidx247, align 1
  %235 = load i8, ptr %x84, align 1
  %236 = load ptr, ptr %out1.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, ptr %236, i64 19
  store i8 %235, ptr %arrayidx248, align 1
  %237 = load i8, ptr %x86, align 1
  %238 = load ptr, ptr %out1.addr, align 8
  %arrayidx249 = getelementptr inbounds i8, ptr %238, i64 20
  store i8 %237, ptr %arrayidx249, align 1
  %239 = load i8, ptr %x89, align 1
  %240 = load ptr, ptr %out1.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, ptr %240, i64 21
  store i8 %239, ptr %arrayidx250, align 1
  %241 = load i8, ptr %x91, align 1
  %242 = load ptr, ptr %out1.addr, align 8
  %arrayidx251 = getelementptr inbounds i8, ptr %242, i64 22
  store i8 %241, ptr %arrayidx251, align 1
  %243 = load i8, ptr %x93, align 1
  %244 = load ptr, ptr %out1.addr, align 8
  %arrayidx252 = getelementptr inbounds i8, ptr %244, i64 23
  store i8 %243, ptr %arrayidx252, align 1
  %245 = load i8, ptr %x95, align 1
  %246 = load ptr, ptr %out1.addr, align 8
  %arrayidx253 = getelementptr inbounds i8, ptr %246, i64 24
  store i8 %245, ptr %arrayidx253, align 1
  %247 = load i8, ptr %x97, align 1
  %248 = load ptr, ptr %out1.addr, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %248, i64 25
  store i8 %247, ptr %arrayidx254, align 1
  %249 = load i8, ptr %x99, align 1
  %250 = load ptr, ptr %out1.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, ptr %250, i64 26
  store i8 %249, ptr %arrayidx255, align 1
  %251 = load i8, ptr %x101, align 1
  %252 = load ptr, ptr %out1.addr, align 8
  %arrayidx256 = getelementptr inbounds i8, ptr %252, i64 27
  store i8 %251, ptr %arrayidx256, align 1
  %253 = load i8, ptr %x102, align 1
  %254 = load ptr, ptr %out1.addr, align 8
  %arrayidx257 = getelementptr inbounds i8, ptr %254, i64 28
  store i8 %253, ptr %arrayidx257, align 1
  %255 = load i8, ptr %x103, align 1
  %256 = load ptr, ptr %out1.addr, align 8
  %arrayidx258 = getelementptr inbounds i8, ptr %256, i64 29
  store i8 %255, ptr %arrayidx258, align 1
  %257 = load i8, ptr %x105, align 1
  %258 = load ptr, ptr %out1.addr, align 8
  %arrayidx259 = getelementptr inbounds i8, ptr %258, i64 30
  store i8 %257, ptr %arrayidx259, align 1
  %259 = load i8, ptr %x107, align 1
  %260 = load ptr, ptr %out1.addr, align 8
  %arrayidx260 = getelementptr inbounds i8, ptr %260, i64 31
  store i8 %259, ptr %arrayidx260, align 1
  %261 = load i8, ptr %x109, align 1
  %262 = load ptr, ptr %out1.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, ptr %262, i64 32
  store i8 %261, ptr %arrayidx261, align 1
  %263 = load i8, ptr %x111, align 1
  %264 = load ptr, ptr %out1.addr, align 8
  %arrayidx262 = getelementptr inbounds i8, ptr %264, i64 33
  store i8 %263, ptr %arrayidx262, align 1
  %265 = load i8, ptr %x113, align 1
  %266 = load ptr, ptr %out1.addr, align 8
  %arrayidx263 = getelementptr inbounds i8, ptr %266, i64 34
  store i8 %265, ptr %arrayidx263, align 1
  %267 = load i8, ptr %x115, align 1
  %268 = load ptr, ptr %out1.addr, align 8
  %arrayidx264 = getelementptr inbounds i8, ptr %268, i64 35
  store i8 %267, ptr %arrayidx264, align 1
  %269 = load i8, ptr %x118, align 1
  %270 = load ptr, ptr %out1.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, ptr %270, i64 36
  store i8 %269, ptr %arrayidx265, align 1
  %271 = load i8, ptr %x120, align 1
  %272 = load ptr, ptr %out1.addr, align 8
  %arrayidx266 = getelementptr inbounds i8, ptr %272, i64 37
  store i8 %271, ptr %arrayidx266, align 1
  %273 = load i8, ptr %x122, align 1
  %274 = load ptr, ptr %out1.addr, align 8
  %arrayidx267 = getelementptr inbounds i8, ptr %274, i64 38
  store i8 %273, ptr %arrayidx267, align 1
  %275 = load i8, ptr %x124, align 1
  %276 = load ptr, ptr %out1.addr, align 8
  %arrayidx268 = getelementptr inbounds i8, ptr %276, i64 39
  store i8 %275, ptr %arrayidx268, align 1
  %277 = load i8, ptr %x126, align 1
  %278 = load ptr, ptr %out1.addr, align 8
  %arrayidx269 = getelementptr inbounds i8, ptr %278, i64 40
  store i8 %277, ptr %arrayidx269, align 1
  %279 = load i8, ptr %x128, align 1
  %280 = load ptr, ptr %out1.addr, align 8
  %arrayidx270 = getelementptr inbounds i8, ptr %280, i64 41
  store i8 %279, ptr %arrayidx270, align 1
  %281 = load i8, ptr %x130, align 1
  %282 = load ptr, ptr %out1.addr, align 8
  %arrayidx271 = getelementptr inbounds i8, ptr %282, i64 42
  store i8 %281, ptr %arrayidx271, align 1
  %283 = load i8, ptr %x133, align 1
  %284 = load ptr, ptr %out1.addr, align 8
  %arrayidx272 = getelementptr inbounds i8, ptr %284, i64 43
  store i8 %283, ptr %arrayidx272, align 1
  %285 = load i8, ptr %x135, align 1
  %286 = load ptr, ptr %out1.addr, align 8
  %arrayidx273 = getelementptr inbounds i8, ptr %286, i64 44
  store i8 %285, ptr %arrayidx273, align 1
  %287 = load i8, ptr %x137, align 1
  %288 = load ptr, ptr %out1.addr, align 8
  %arrayidx274 = getelementptr inbounds i8, ptr %288, i64 45
  store i8 %287, ptr %arrayidx274, align 1
  %289 = load i8, ptr %x139, align 1
  %290 = load ptr, ptr %out1.addr, align 8
  %arrayidx275 = getelementptr inbounds i8, ptr %290, i64 46
  store i8 %289, ptr %arrayidx275, align 1
  %291 = load i8, ptr %x141, align 1
  %292 = load ptr, ptr %out1.addr, align 8
  %arrayidx276 = getelementptr inbounds i8, ptr %292, i64 47
  store i8 %291, ptr %arrayidx276, align 1
  %293 = load i8, ptr %x143, align 1
  %294 = load ptr, ptr %out1.addr, align 8
  %arrayidx277 = getelementptr inbounds i8, ptr %294, i64 48
  store i8 %293, ptr %arrayidx277, align 1
  %295 = load i8, ptr %x145, align 1
  %296 = load ptr, ptr %out1.addr, align 8
  %arrayidx278 = getelementptr inbounds i8, ptr %296, i64 49
  store i8 %295, ptr %arrayidx278, align 1
  %297 = load i8, ptr %x148, align 1
  %298 = load ptr, ptr %out1.addr, align 8
  %arrayidx279 = getelementptr inbounds i8, ptr %298, i64 50
  store i8 %297, ptr %arrayidx279, align 1
  %299 = load i8, ptr %x150, align 1
  %300 = load ptr, ptr %out1.addr, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %300, i64 51
  store i8 %299, ptr %arrayidx280, align 1
  %301 = load i8, ptr %x152, align 1
  %302 = load ptr, ptr %out1.addr, align 8
  %arrayidx281 = getelementptr inbounds i8, ptr %302, i64 52
  store i8 %301, ptr %arrayidx281, align 1
  %303 = load i8, ptr %x154, align 1
  %304 = load ptr, ptr %out1.addr, align 8
  %arrayidx282 = getelementptr inbounds i8, ptr %304, i64 53
  store i8 %303, ptr %arrayidx282, align 1
  %305 = load i8, ptr %x156, align 1
  %306 = load ptr, ptr %out1.addr, align 8
  %arrayidx283 = getelementptr inbounds i8, ptr %306, i64 54
  store i8 %305, ptr %arrayidx283, align 1
  %307 = load i8, ptr %x158, align 1
  %308 = load ptr, ptr %out1.addr, align 8
  %arrayidx284 = getelementptr inbounds i8, ptr %308, i64 55
  store i8 %307, ptr %arrayidx284, align 1
  %309 = load i8, ptr %x160, align 1
  %310 = load ptr, ptr %out1.addr, align 8
  %arrayidx285 = getelementptr inbounds i8, ptr %310, i64 56
  store i8 %309, ptr %arrayidx285, align 1
  %311 = load i8, ptr %x161, align 1
  %312 = load ptr, ptr %out1.addr, align 8
  %arrayidx286 = getelementptr inbounds i8, ptr %312, i64 57
  store i8 %311, ptr %arrayidx286, align 1
  %313 = load i8, ptr %x162, align 1
  %314 = load ptr, ptr %out1.addr, align 8
  %arrayidx287 = getelementptr inbounds i8, ptr %314, i64 58
  store i8 %313, ptr %arrayidx287, align 1
  %315 = load i8, ptr %x164, align 1
  %316 = load ptr, ptr %out1.addr, align 8
  %arrayidx288 = getelementptr inbounds i8, ptr %316, i64 59
  store i8 %315, ptr %arrayidx288, align 1
  %317 = load i8, ptr %x166, align 1
  %318 = load ptr, ptr %out1.addr, align 8
  %arrayidx289 = getelementptr inbounds i8, ptr %318, i64 60
  store i8 %317, ptr %arrayidx289, align 1
  %319 = load i8, ptr %x168, align 1
  %320 = load ptr, ptr %out1.addr, align 8
  %arrayidx290 = getelementptr inbounds i8, ptr %320, i64 61
  store i8 %319, ptr %arrayidx290, align 1
  %321 = load i8, ptr %x170, align 1
  %322 = load ptr, ptr %out1.addr, align 8
  %arrayidx291 = getelementptr inbounds i8, ptr %322, i64 62
  store i8 %321, ptr %arrayidx291, align 1
  %323 = load i8, ptr %x172, align 1
  %324 = load ptr, ptr %out1.addr, align 8
  %arrayidx292 = getelementptr inbounds i8, ptr %324, i64 63
  store i8 %323, ptr %arrayidx292, align 1
  %325 = load i8, ptr %x174, align 1
  %326 = load ptr, ptr %out1.addr, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %326, i64 64
  store i8 %325, ptr %arrayidx293, align 1
  %327 = load i8, ptr %x175, align 1
  %328 = load ptr, ptr %out1.addr, align 8
  %arrayidx294 = getelementptr inbounds i8, ptr %328, i64 65
  store i8 %327, ptr %arrayidx294, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x37 = alloca i8, align 1
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
  %x66 = alloca i8, align 1
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
  %x78 = alloca i64, align 8
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i64, align 8
  %x82 = alloca i64, align 8
  %x83 = alloca i64, align 8
  %x84 = alloca i8, align 1
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
  %x95 = alloca i64, align 8
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i64, align 8
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i64, align 8
  %x105 = alloca i64, align 8
  %x106 = alloca i64, align 8
  %x107 = alloca i64, align 8
  %x108 = alloca i64, align 8
  %x109 = alloca i8, align 1
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i64, align 8
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i64, align 8
  %x116 = alloca i64, align 8
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i64, align 8
  %x126 = alloca i64, align 8
  %x127 = alloca i8, align 1
  %x128 = alloca i64, align 8
  %x129 = alloca i64, align 8
  %x130 = alloca i64, align 8
  %x131 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %x133 = alloca i64, align 8
  %x134 = alloca i64, align 8
  %x135 = alloca i64, align 8
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i64, align 8
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 65
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 56
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 64
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 48
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 63
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 40
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 62
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 32
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 61
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 24
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 60
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 16
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 59
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %shl18 = shl i64 %conv17, 8
  store i64 %shl18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 58
  %15 = load i8, ptr %arrayidx19, align 1
  store i8 %15, ptr %x8, align 1
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 57
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 50
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 56
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 42
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 55
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 34
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 54
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i64
  %shl31 = shl i64 %conv30, 26
  store i64 %shl31, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 53
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i64
  %shl34 = shl i64 %conv33, 18
  store i64 %shl34, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 52
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i64
  %shl37 = shl i64 %conv36, 10
  store i64 %shl37, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 51
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i64
  %shl40 = shl i64 %conv39, 2
  store i64 %shl40, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 50
  %31 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %31 to i64
  %shl43 = shl i64 %conv42, 52
  store i64 %shl43, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 49
  %33 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %33 to i64
  %shl46 = shl i64 %conv45, 44
  store i64 %shl46, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 48
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %35 to i64
  %shl49 = shl i64 %conv48, 36
  store i64 %shl49, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %36, i64 47
  %37 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %37 to i64
  %shl52 = shl i64 %conv51, 28
  store i64 %shl52, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %38, i64 46
  %39 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %39 to i64
  %shl55 = shl i64 %conv54, 20
  store i64 %shl55, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %40, i64 45
  %41 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %41 to i64
  %shl58 = shl i64 %conv57, 12
  store i64 %shl58, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %42, i64 44
  %43 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %43 to i64
  %shl61 = shl i64 %conv60, 4
  store i64 %shl61, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %44, i64 43
  %45 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %45 to i64
  %shl64 = shl i64 %conv63, 54
  store i64 %shl64, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %46, i64 42
  %47 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %47 to i64
  %shl67 = shl i64 %conv66, 46
  store i64 %shl67, ptr %x24, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %48, i64 41
  %49 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %49 to i64
  %shl70 = shl i64 %conv69, 38
  store i64 %shl70, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %50, i64 40
  %51 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %51 to i64
  %shl73 = shl i64 %conv72, 30
  store i64 %shl73, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %52, i64 39
  %53 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %53 to i64
  %shl76 = shl i64 %conv75, 22
  store i64 %shl76, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %54, i64 38
  %55 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %55 to i64
  %shl79 = shl i64 %conv78, 14
  store i64 %shl79, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %56, i64 37
  %57 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %57 to i64
  %shl82 = shl i64 %conv81, 6
  store i64 %shl82, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %58, i64 36
  %59 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %59 to i64
  %shl85 = shl i64 %conv84, 56
  store i64 %shl85, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %60, i64 35
  %61 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %61 to i64
  %shl88 = shl i64 %conv87, 48
  store i64 %shl88, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %62, i64 34
  %63 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %63 to i64
  %shl91 = shl i64 %conv90, 40
  store i64 %shl91, ptr %x32, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %64, i64 33
  %65 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %65 to i64
  %shl94 = shl i64 %conv93, 32
  store i64 %shl94, ptr %x33, align 8
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %66, i64 32
  %67 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %67 to i64
  %shl97 = shl i64 %conv96, 24
  store i64 %shl97, ptr %x34, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %68, i64 31
  %69 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %69 to i64
  %shl100 = shl i64 %conv99, 16
  store i64 %shl100, ptr %x35, align 8
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %70, i64 30
  %71 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %71 to i64
  %shl103 = shl i64 %conv102, 8
  store i64 %shl103, ptr %x36, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %72, i64 29
  %73 = load i8, ptr %arrayidx104, align 1
  store i8 %73, ptr %x37, align 1
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %74, i64 28
  %75 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %75 to i64
  %shl107 = shl i64 %conv106, 50
  store i64 %shl107, ptr %x38, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %76, i64 27
  %77 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %77 to i64
  %shl110 = shl i64 %conv109, 42
  store i64 %shl110, ptr %x39, align 8
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %78, i64 26
  %79 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %79 to i64
  %shl113 = shl i64 %conv112, 34
  store i64 %shl113, ptr %x40, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %80, i64 25
  %81 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %81 to i64
  %shl116 = shl i64 %conv115, 26
  store i64 %shl116, ptr %x41, align 8
  %82 = load ptr, ptr %arg1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %82, i64 24
  %83 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %83 to i64
  %shl119 = shl i64 %conv118, 18
  store i64 %shl119, ptr %x42, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %84, i64 23
  %85 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %85 to i64
  %shl122 = shl i64 %conv121, 10
  store i64 %shl122, ptr %x43, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %86, i64 22
  %87 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %87 to i64
  %shl125 = shl i64 %conv124, 2
  store i64 %shl125, ptr %x44, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %88, i64 21
  %89 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %89 to i64
  %shl128 = shl i64 %conv127, 52
  store i64 %shl128, ptr %x45, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %90, i64 20
  %91 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %91 to i64
  %shl131 = shl i64 %conv130, 44
  store i64 %shl131, ptr %x46, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %92, i64 19
  %93 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %93 to i64
  %shl134 = shl i64 %conv133, 36
  store i64 %shl134, ptr %x47, align 8
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %94, i64 18
  %95 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %95 to i64
  %shl137 = shl i64 %conv136, 28
  store i64 %shl137, ptr %x48, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %96, i64 17
  %97 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %97 to i64
  %shl140 = shl i64 %conv139, 20
  store i64 %shl140, ptr %x49, align 8
  %98 = load ptr, ptr %arg1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %98, i64 16
  %99 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %99 to i64
  %shl143 = shl i64 %conv142, 12
  store i64 %shl143, ptr %x50, align 8
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %100, i64 15
  %101 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %101 to i64
  %shl146 = shl i64 %conv145, 4
  store i64 %shl146, ptr %x51, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %102, i64 14
  %103 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %103 to i64
  %shl149 = shl i64 %conv148, 54
  store i64 %shl149, ptr %x52, align 8
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %104, i64 13
  %105 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %105 to i64
  %shl152 = shl i64 %conv151, 46
  store i64 %shl152, ptr %x53, align 8
  %106 = load ptr, ptr %arg1.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %106, i64 12
  %107 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %107 to i64
  %shl155 = shl i64 %conv154, 38
  store i64 %shl155, ptr %x54, align 8
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, ptr %108, i64 11
  %109 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %109 to i64
  %shl158 = shl i64 %conv157, 30
  store i64 %shl158, ptr %x55, align 8
  %110 = load ptr, ptr %arg1.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %110, i64 10
  %111 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %111 to i64
  %shl161 = shl i64 %conv160, 22
  store i64 %shl161, ptr %x56, align 8
  %112 = load ptr, ptr %arg1.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %112, i64 9
  %113 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %113 to i64
  %shl164 = shl i64 %conv163, 14
  store i64 %shl164, ptr %x57, align 8
  %114 = load ptr, ptr %arg1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %114, i64 8
  %115 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %115 to i64
  %shl167 = shl i64 %conv166, 6
  store i64 %shl167, ptr %x58, align 8
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %116, i64 7
  %117 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %117 to i64
  %shl170 = shl i64 %conv169, 56
  store i64 %shl170, ptr %x59, align 8
  %118 = load ptr, ptr %arg1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %118, i64 6
  %119 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %119 to i64
  %shl173 = shl i64 %conv172, 48
  store i64 %shl173, ptr %x60, align 8
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %120, i64 5
  %121 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %121 to i64
  %shl176 = shl i64 %conv175, 40
  store i64 %shl176, ptr %x61, align 8
  %122 = load ptr, ptr %arg1.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %122, i64 4
  %123 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %123 to i64
  %shl179 = shl i64 %conv178, 32
  store i64 %shl179, ptr %x62, align 8
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %124, i64 3
  %125 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %125 to i64
  %shl182 = shl i64 %conv181, 24
  store i64 %shl182, ptr %x63, align 8
  %126 = load ptr, ptr %arg1.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %126, i64 2
  %127 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %127 to i64
  %shl185 = shl i64 %conv184, 16
  store i64 %shl185, ptr %x64, align 8
  %128 = load ptr, ptr %arg1.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %128, i64 1
  %129 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %129 to i64
  %shl188 = shl i64 %conv187, 8
  store i64 %shl188, ptr %x65, align 8
  %130 = load ptr, ptr %arg1.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %130, i64 0
  %131 = load i8, ptr %arrayidx189, align 1
  store i8 %131, ptr %x66, align 1
  %132 = load i64, ptr %x65, align 8
  %133 = load i8, ptr %x66, align 1
  %conv190 = zext i8 %133 to i64
  %add = add i64 %132, %conv190
  store i64 %add, ptr %x67, align 8
  %134 = load i64, ptr %x64, align 8
  %135 = load i64, ptr %x67, align 8
  %add191 = add i64 %134, %135
  store i64 %add191, ptr %x68, align 8
  %136 = load i64, ptr %x63, align 8
  %137 = load i64, ptr %x68, align 8
  %add192 = add i64 %136, %137
  store i64 %add192, ptr %x69, align 8
  %138 = load i64, ptr %x62, align 8
  %139 = load i64, ptr %x69, align 8
  %add193 = add i64 %138, %139
  store i64 %add193, ptr %x70, align 8
  %140 = load i64, ptr %x61, align 8
  %141 = load i64, ptr %x70, align 8
  %add194 = add i64 %140, %141
  store i64 %add194, ptr %x71, align 8
  %142 = load i64, ptr %x60, align 8
  %143 = load i64, ptr %x71, align 8
  %add195 = add i64 %142, %143
  store i64 %add195, ptr %x72, align 8
  %144 = load i64, ptr %x59, align 8
  %145 = load i64, ptr %x72, align 8
  %add196 = add i64 %144, %145
  store i64 %add196, ptr %x73, align 8
  %146 = load i64, ptr %x73, align 8
  %and = and i64 %146, 288230376151711743
  store i64 %and, ptr %x74, align 8
  %147 = load i64, ptr %x73, align 8
  %shr = lshr i64 %147, 58
  %conv197 = trunc i64 %shr to i8
  store i8 %conv197, ptr %x75, align 1
  %148 = load i64, ptr %x58, align 8
  %149 = load i8, ptr %x75, align 1
  %conv198 = zext i8 %149 to i64
  %add199 = add i64 %148, %conv198
  store i64 %add199, ptr %x76, align 8
  %150 = load i64, ptr %x57, align 8
  %151 = load i64, ptr %x76, align 8
  %add200 = add i64 %150, %151
  store i64 %add200, ptr %x77, align 8
  %152 = load i64, ptr %x56, align 8
  %153 = load i64, ptr %x77, align 8
  %add201 = add i64 %152, %153
  store i64 %add201, ptr %x78, align 8
  %154 = load i64, ptr %x55, align 8
  %155 = load i64, ptr %x78, align 8
  %add202 = add i64 %154, %155
  store i64 %add202, ptr %x79, align 8
  %156 = load i64, ptr %x54, align 8
  %157 = load i64, ptr %x79, align 8
  %add203 = add i64 %156, %157
  store i64 %add203, ptr %x80, align 8
  %158 = load i64, ptr %x53, align 8
  %159 = load i64, ptr %x80, align 8
  %add204 = add i64 %158, %159
  store i64 %add204, ptr %x81, align 8
  %160 = load i64, ptr %x52, align 8
  %161 = load i64, ptr %x81, align 8
  %add205 = add i64 %160, %161
  store i64 %add205, ptr %x82, align 8
  %162 = load i64, ptr %x82, align 8
  %and206 = and i64 %162, 288230376151711743
  store i64 %and206, ptr %x83, align 8
  %163 = load i64, ptr %x82, align 8
  %shr207 = lshr i64 %163, 58
  %conv208 = trunc i64 %shr207 to i8
  store i8 %conv208, ptr %x84, align 1
  %164 = load i64, ptr %x51, align 8
  %165 = load i8, ptr %x84, align 1
  %conv209 = zext i8 %165 to i64
  %add210 = add i64 %164, %conv209
  store i64 %add210, ptr %x85, align 8
  %166 = load i64, ptr %x50, align 8
  %167 = load i64, ptr %x85, align 8
  %add211 = add i64 %166, %167
  store i64 %add211, ptr %x86, align 8
  %168 = load i64, ptr %x49, align 8
  %169 = load i64, ptr %x86, align 8
  %add212 = add i64 %168, %169
  store i64 %add212, ptr %x87, align 8
  %170 = load i64, ptr %x48, align 8
  %171 = load i64, ptr %x87, align 8
  %add213 = add i64 %170, %171
  store i64 %add213, ptr %x88, align 8
  %172 = load i64, ptr %x47, align 8
  %173 = load i64, ptr %x88, align 8
  %add214 = add i64 %172, %173
  store i64 %add214, ptr %x89, align 8
  %174 = load i64, ptr %x46, align 8
  %175 = load i64, ptr %x89, align 8
  %add215 = add i64 %174, %175
  store i64 %add215, ptr %x90, align 8
  %176 = load i64, ptr %x45, align 8
  %177 = load i64, ptr %x90, align 8
  %add216 = add i64 %176, %177
  store i64 %add216, ptr %x91, align 8
  %178 = load i64, ptr %x91, align 8
  %and217 = and i64 %178, 288230376151711743
  store i64 %and217, ptr %x92, align 8
  %179 = load i64, ptr %x91, align 8
  %shr218 = lshr i64 %179, 58
  %conv219 = trunc i64 %shr218 to i8
  store i8 %conv219, ptr %x93, align 1
  %180 = load i64, ptr %x44, align 8
  %181 = load i8, ptr %x93, align 1
  %conv220 = zext i8 %181 to i64
  %add221 = add i64 %180, %conv220
  store i64 %add221, ptr %x94, align 8
  %182 = load i64, ptr %x43, align 8
  %183 = load i64, ptr %x94, align 8
  %add222 = add i64 %182, %183
  store i64 %add222, ptr %x95, align 8
  %184 = load i64, ptr %x42, align 8
  %185 = load i64, ptr %x95, align 8
  %add223 = add i64 %184, %185
  store i64 %add223, ptr %x96, align 8
  %186 = load i64, ptr %x41, align 8
  %187 = load i64, ptr %x96, align 8
  %add224 = add i64 %186, %187
  store i64 %add224, ptr %x97, align 8
  %188 = load i64, ptr %x40, align 8
  %189 = load i64, ptr %x97, align 8
  %add225 = add i64 %188, %189
  store i64 %add225, ptr %x98, align 8
  %190 = load i64, ptr %x39, align 8
  %191 = load i64, ptr %x98, align 8
  %add226 = add i64 %190, %191
  store i64 %add226, ptr %x99, align 8
  %192 = load i64, ptr %x38, align 8
  %193 = load i64, ptr %x99, align 8
  %add227 = add i64 %192, %193
  store i64 %add227, ptr %x100, align 8
  %194 = load i64, ptr %x36, align 8
  %195 = load i8, ptr %x37, align 1
  %conv228 = zext i8 %195 to i64
  %add229 = add i64 %194, %conv228
  store i64 %add229, ptr %x101, align 8
  %196 = load i64, ptr %x35, align 8
  %197 = load i64, ptr %x101, align 8
  %add230 = add i64 %196, %197
  store i64 %add230, ptr %x102, align 8
  %198 = load i64, ptr %x34, align 8
  %199 = load i64, ptr %x102, align 8
  %add231 = add i64 %198, %199
  store i64 %add231, ptr %x103, align 8
  %200 = load i64, ptr %x33, align 8
  %201 = load i64, ptr %x103, align 8
  %add232 = add i64 %200, %201
  store i64 %add232, ptr %x104, align 8
  %202 = load i64, ptr %x32, align 8
  %203 = load i64, ptr %x104, align 8
  %add233 = add i64 %202, %203
  store i64 %add233, ptr %x105, align 8
  %204 = load i64, ptr %x31, align 8
  %205 = load i64, ptr %x105, align 8
  %add234 = add i64 %204, %205
  store i64 %add234, ptr %x106, align 8
  %206 = load i64, ptr %x30, align 8
  %207 = load i64, ptr %x106, align 8
  %add235 = add i64 %206, %207
  store i64 %add235, ptr %x107, align 8
  %208 = load i64, ptr %x107, align 8
  %and236 = and i64 %208, 288230376151711743
  store i64 %and236, ptr %x108, align 8
  %209 = load i64, ptr %x107, align 8
  %shr237 = lshr i64 %209, 58
  %conv238 = trunc i64 %shr237 to i8
  store i8 %conv238, ptr %x109, align 1
  %210 = load i64, ptr %x29, align 8
  %211 = load i8, ptr %x109, align 1
  %conv239 = zext i8 %211 to i64
  %add240 = add i64 %210, %conv239
  store i64 %add240, ptr %x110, align 8
  %212 = load i64, ptr %x28, align 8
  %213 = load i64, ptr %x110, align 8
  %add241 = add i64 %212, %213
  store i64 %add241, ptr %x111, align 8
  %214 = load i64, ptr %x27, align 8
  %215 = load i64, ptr %x111, align 8
  %add242 = add i64 %214, %215
  store i64 %add242, ptr %x112, align 8
  %216 = load i64, ptr %x26, align 8
  %217 = load i64, ptr %x112, align 8
  %add243 = add i64 %216, %217
  store i64 %add243, ptr %x113, align 8
  %218 = load i64, ptr %x25, align 8
  %219 = load i64, ptr %x113, align 8
  %add244 = add i64 %218, %219
  store i64 %add244, ptr %x114, align 8
  %220 = load i64, ptr %x24, align 8
  %221 = load i64, ptr %x114, align 8
  %add245 = add i64 %220, %221
  store i64 %add245, ptr %x115, align 8
  %222 = load i64, ptr %x23, align 8
  %223 = load i64, ptr %x115, align 8
  %add246 = add i64 %222, %223
  store i64 %add246, ptr %x116, align 8
  %224 = load i64, ptr %x116, align 8
  %and247 = and i64 %224, 288230376151711743
  store i64 %and247, ptr %x117, align 8
  %225 = load i64, ptr %x116, align 8
  %shr248 = lshr i64 %225, 58
  %conv249 = trunc i64 %shr248 to i8
  store i8 %conv249, ptr %x118, align 1
  %226 = load i64, ptr %x22, align 8
  %227 = load i8, ptr %x118, align 1
  %conv250 = zext i8 %227 to i64
  %add251 = add i64 %226, %conv250
  store i64 %add251, ptr %x119, align 8
  %228 = load i64, ptr %x21, align 8
  %229 = load i64, ptr %x119, align 8
  %add252 = add i64 %228, %229
  store i64 %add252, ptr %x120, align 8
  %230 = load i64, ptr %x20, align 8
  %231 = load i64, ptr %x120, align 8
  %add253 = add i64 %230, %231
  store i64 %add253, ptr %x121, align 8
  %232 = load i64, ptr %x19, align 8
  %233 = load i64, ptr %x121, align 8
  %add254 = add i64 %232, %233
  store i64 %add254, ptr %x122, align 8
  %234 = load i64, ptr %x18, align 8
  %235 = load i64, ptr %x122, align 8
  %add255 = add i64 %234, %235
  store i64 %add255, ptr %x123, align 8
  %236 = load i64, ptr %x17, align 8
  %237 = load i64, ptr %x123, align 8
  %add256 = add i64 %236, %237
  store i64 %add256, ptr %x124, align 8
  %238 = load i64, ptr %x16, align 8
  %239 = load i64, ptr %x124, align 8
  %add257 = add i64 %238, %239
  store i64 %add257, ptr %x125, align 8
  %240 = load i64, ptr %x125, align 8
  %and258 = and i64 %240, 288230376151711743
  store i64 %and258, ptr %x126, align 8
  %241 = load i64, ptr %x125, align 8
  %shr259 = lshr i64 %241, 58
  %conv260 = trunc i64 %shr259 to i8
  store i8 %conv260, ptr %x127, align 1
  %242 = load i64, ptr %x15, align 8
  %243 = load i8, ptr %x127, align 1
  %conv261 = zext i8 %243 to i64
  %add262 = add i64 %242, %conv261
  store i64 %add262, ptr %x128, align 8
  %244 = load i64, ptr %x14, align 8
  %245 = load i64, ptr %x128, align 8
  %add263 = add i64 %244, %245
  store i64 %add263, ptr %x129, align 8
  %246 = load i64, ptr %x13, align 8
  %247 = load i64, ptr %x129, align 8
  %add264 = add i64 %246, %247
  store i64 %add264, ptr %x130, align 8
  %248 = load i64, ptr %x12, align 8
  %249 = load i64, ptr %x130, align 8
  %add265 = add i64 %248, %249
  store i64 %add265, ptr %x131, align 8
  %250 = load i64, ptr %x11, align 8
  %251 = load i64, ptr %x131, align 8
  %add266 = add i64 %250, %251
  store i64 %add266, ptr %x132, align 8
  %252 = load i64, ptr %x10, align 8
  %253 = load i64, ptr %x132, align 8
  %add267 = add i64 %252, %253
  store i64 %add267, ptr %x133, align 8
  %254 = load i64, ptr %x9, align 8
  %255 = load i64, ptr %x133, align 8
  %add268 = add i64 %254, %255
  store i64 %add268, ptr %x134, align 8
  %256 = load i64, ptr %x7, align 8
  %257 = load i8, ptr %x8, align 1
  %conv269 = zext i8 %257 to i64
  %add270 = add i64 %256, %conv269
  store i64 %add270, ptr %x135, align 8
  %258 = load i64, ptr %x6, align 8
  %259 = load i64, ptr %x135, align 8
  %add271 = add i64 %258, %259
  store i64 %add271, ptr %x136, align 8
  %260 = load i64, ptr %x5, align 8
  %261 = load i64, ptr %x136, align 8
  %add272 = add i64 %260, %261
  store i64 %add272, ptr %x137, align 8
  %262 = load i64, ptr %x4, align 8
  %263 = load i64, ptr %x137, align 8
  %add273 = add i64 %262, %263
  store i64 %add273, ptr %x138, align 8
  %264 = load i64, ptr %x3, align 8
  %265 = load i64, ptr %x138, align 8
  %add274 = add i64 %264, %265
  store i64 %add274, ptr %x139, align 8
  %266 = load i64, ptr %x2, align 8
  %267 = load i64, ptr %x139, align 8
  %add275 = add i64 %266, %267
  store i64 %add275, ptr %x140, align 8
  %268 = load i64, ptr %x1, align 8
  %269 = load i64, ptr %x140, align 8
  %add276 = add i64 %268, %269
  store i64 %add276, ptr %x141, align 8
  %270 = load i64, ptr %x74, align 8
  %271 = load ptr, ptr %out1.addr, align 8
  %arrayidx277 = getelementptr inbounds i64, ptr %271, i64 0
  store i64 %270, ptr %arrayidx277, align 8
  %272 = load i64, ptr %x83, align 8
  %273 = load ptr, ptr %out1.addr, align 8
  %arrayidx278 = getelementptr inbounds i64, ptr %273, i64 1
  store i64 %272, ptr %arrayidx278, align 8
  %274 = load i64, ptr %x92, align 8
  %275 = load ptr, ptr %out1.addr, align 8
  %arrayidx279 = getelementptr inbounds i64, ptr %275, i64 2
  store i64 %274, ptr %arrayidx279, align 8
  %276 = load i64, ptr %x100, align 8
  %277 = load ptr, ptr %out1.addr, align 8
  %arrayidx280 = getelementptr inbounds i64, ptr %277, i64 3
  store i64 %276, ptr %arrayidx280, align 8
  %278 = load i64, ptr %x108, align 8
  %279 = load ptr, ptr %out1.addr, align 8
  %arrayidx281 = getelementptr inbounds i64, ptr %279, i64 4
  store i64 %278, ptr %arrayidx281, align 8
  %280 = load i64, ptr %x117, align 8
  %281 = load ptr, ptr %out1.addr, align 8
  %arrayidx282 = getelementptr inbounds i64, ptr %281, i64 5
  store i64 %280, ptr %arrayidx282, align 8
  %282 = load i64, ptr %x126, align 8
  %283 = load ptr, ptr %out1.addr, align 8
  %arrayidx283 = getelementptr inbounds i64, ptr %283, i64 6
  store i64 %282, ptr %arrayidx283, align 8
  %284 = load i64, ptr %x134, align 8
  %285 = load ptr, ptr %out1.addr, align 8
  %arrayidx284 = getelementptr inbounds i64, ptr %285, i64 7
  store i64 %284, ptr %arrayidx284, align 8
  %286 = load i64, ptr %x141, align 8
  %287 = load ptr, ptr %out1.addr, align 8
  %arrayidx285 = getelementptr inbounds i64, ptr %287, i64 8
  store i64 %286, ptr %arrayidx285, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p521_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx2, align 8
  store i64 %5, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx3, align 8
  store i64 %7, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx4, align 8
  store i64 %9, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx5, align 8
  store i64 %11, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx6, align 8
  store i64 %13, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %14, i64 7
  %15 = load i64, ptr %arrayidx7, align 8
  store i64 %15, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %16, i64 8
  %17 = load i64, ptr %arrayidx8, align 8
  store i64 %17, ptr %x9, align 8
  %18 = load i64, ptr %x1, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 %18, ptr %arrayidx9, align 8
  %20 = load i64, ptr %x2, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %21, i64 1
  store i64 %20, ptr %arrayidx10, align 8
  %22 = load i64, ptr %x3, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %23, i64 2
  store i64 %22, ptr %arrayidx11, align 8
  %24 = load i64, ptr %x4, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %25, i64 3
  store i64 %24, ptr %arrayidx12, align 8
  %26 = load i64, ptr %x5, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %27, i64 4
  store i64 %26, ptr %arrayidx13, align 8
  %28 = load i64, ptr %x6, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %29, i64 5
  store i64 %28, ptr %arrayidx14, align 8
  %30 = load i64, ptr %x7, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %31, i64 6
  store i64 %30, ptr %arrayidx15, align 8
  %32 = load i64, ptr %x8, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %33, i64 7
  store i64 %32, ptr %arrayidx16, align 8
  %34 = load i64, ptr %x9, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %35, i64 8
  store i64 %34, ptr %arrayidx17, align 8
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
!6 = !{i64 3583}
