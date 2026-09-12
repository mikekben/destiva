; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_p448_value_barrier_u64(i64 noundef %a) #0 {
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
define dso_local void @fiat_p448_addcarryx_u56(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %and = and i64 %3, 72057594037927935
  store i64 %and, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 56
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
define dso_local void @fiat_p448_subborrowx_u56(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %shr = ashr i64 %3, 56
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 72057594037927935
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
define dso_local void @fiat_p448_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %call = call i64 @fiat_p448_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_p448_value_barrier_u64(i64 noundef %not)
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
define dso_local void @fiat_p448_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x84 = alloca i128, align 16
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
  %x95 = alloca i128, align 16
  %x96 = alloca i128, align 16
  %x97 = alloca i128, align 16
  %x98 = alloca i128, align 16
  %x99 = alloca i128, align 16
  %x100 = alloca i64, align 8
  %x101 = alloca i64, align 8
  %x102 = alloca i128, align 16
  %x103 = alloca i128, align 16
  %x104 = alloca i128, align 16
  %x105 = alloca i128, align 16
  %x106 = alloca i128, align 16
  %x107 = alloca i128, align 16
  %x108 = alloca i128, align 16
  %x109 = alloca i128, align 16
  %x110 = alloca i64, align 8
  %x111 = alloca i64, align 8
  %x112 = alloca i128, align 16
  %x113 = alloca i64, align 8
  %x114 = alloca i64, align 8
  %x115 = alloca i128, align 16
  %x116 = alloca i128, align 16
  %x117 = alloca i64, align 8
  %x118 = alloca i64, align 8
  %x119 = alloca i128, align 16
  %x120 = alloca i64, align 8
  %x121 = alloca i64, align 8
  %x122 = alloca i128, align 16
  %x123 = alloca i64, align 8
  %x124 = alloca i64, align 8
  %x125 = alloca i128, align 16
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
  %x136 = alloca i64, align 8
  %x137 = alloca i64, align 8
  %x138 = alloca i64, align 8
  %x139 = alloca i8, align 1
  %x140 = alloca i64, align 8
  %x141 = alloca i64, align 8
  %x142 = alloca i8, align 1
  %x143 = alloca i64, align 8
  %x144 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 7
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 7
  %3 = load i64, ptr %arrayidx1, align 8
  %conv2 = zext i64 %3 to i128
  %mul = mul i128 %conv, %conv2
  store i128 %mul, ptr %x1, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 7
  %5 = load i64, ptr %arrayidx3, align 8
  %conv4 = zext i64 %5 to i128
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 6
  %7 = load i64, ptr %arrayidx5, align 8
  %conv6 = zext i64 %7 to i128
  %mul7 = mul i128 %conv4, %conv6
  store i128 %mul7, ptr %x2, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %8, i64 7
  %9 = load i64, ptr %arrayidx8, align 8
  %conv9 = zext i64 %9 to i128
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %11 to i128
  %mul12 = mul i128 %conv9, %conv11
  store i128 %mul12, ptr %x3, align 16
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx13, align 8
  %conv14 = zext i64 %13 to i128
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %14, i64 7
  %15 = load i64, ptr %arrayidx15, align 8
  %conv16 = zext i64 %15 to i128
  %mul17 = mul i128 %conv14, %conv16
  store i128 %mul17, ptr %x4, align 16
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %16, i64 6
  %17 = load i64, ptr %arrayidx18, align 8
  %conv19 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx20, align 8
  %conv21 = zext i64 %19 to i128
  %mul22 = mul i128 %conv19, %conv21
  store i128 %mul22, ptr %x5, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %20, i64 5
  %21 = load i64, ptr %arrayidx23, align 8
  %conv24 = zext i64 %21 to i128
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %22, i64 7
  %23 = load i64, ptr %arrayidx25, align 8
  %conv26 = zext i64 %23 to i128
  %mul27 = mul i128 %conv24, %conv26
  store i128 %mul27, ptr %x6, align 16
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %24, i64 7
  %25 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %26, i64 7
  %27 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %27 to i128
  %mul32 = mul i128 %conv29, %conv31
  store i128 %mul32, ptr %x7, align 16
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %28, i64 7
  %29 = load i64, ptr %arrayidx33, align 8
  %conv34 = zext i64 %29 to i128
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %30, i64 6
  %31 = load i64, ptr %arrayidx35, align 8
  %conv36 = zext i64 %31 to i128
  %mul37 = mul i128 %conv34, %conv36
  store i128 %mul37, ptr %x8, align 16
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %32, i64 7
  %33 = load i64, ptr %arrayidx38, align 8
  %conv39 = zext i64 %33 to i128
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %34, i64 5
  %35 = load i64, ptr %arrayidx40, align 8
  %conv41 = zext i64 %35 to i128
  %mul42 = mul i128 %conv39, %conv41
  store i128 %mul42, ptr %x9, align 16
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %36, i64 6
  %37 = load i64, ptr %arrayidx43, align 8
  %conv44 = zext i64 %37 to i128
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %38, i64 7
  %39 = load i64, ptr %arrayidx45, align 8
  %conv46 = zext i64 %39 to i128
  %mul47 = mul i128 %conv44, %conv46
  store i128 %mul47, ptr %x10, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %40, i64 6
  %41 = load i64, ptr %arrayidx48, align 8
  %conv49 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %42, i64 6
  %43 = load i64, ptr %arrayidx50, align 8
  %conv51 = zext i64 %43 to i128
  %mul52 = mul i128 %conv49, %conv51
  store i128 %mul52, ptr %x11, align 16
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %44, i64 5
  %45 = load i64, ptr %arrayidx53, align 8
  %conv54 = zext i64 %45 to i128
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %46, i64 7
  %47 = load i64, ptr %arrayidx55, align 8
  %conv56 = zext i64 %47 to i128
  %mul57 = mul i128 %conv54, %conv56
  store i128 %mul57, ptr %x12, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %48, i64 7
  %49 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %50, i64 7
  %51 = load i64, ptr %arrayidx60, align 8
  %conv61 = zext i64 %51 to i128
  %mul62 = mul i128 %conv59, %conv61
  store i128 %mul62, ptr %x13, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %52, i64 7
  %53 = load i64, ptr %arrayidx63, align 8
  %conv64 = zext i64 %53 to i128
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %54, i64 6
  %55 = load i64, ptr %arrayidx65, align 8
  %conv66 = zext i64 %55 to i128
  %mul67 = mul i128 %conv64, %conv66
  store i128 %mul67, ptr %x14, align 16
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %56, i64 7
  %57 = load i64, ptr %arrayidx68, align 8
  %conv69 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %58, i64 5
  %59 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %59 to i128
  %mul72 = mul i128 %conv69, %conv71
  store i128 %mul72, ptr %x15, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %60, i64 7
  %61 = load i64, ptr %arrayidx73, align 8
  %conv74 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %62, i64 4
  %63 = load i64, ptr %arrayidx75, align 8
  %conv76 = zext i64 %63 to i128
  %mul77 = mul i128 %conv74, %conv76
  store i128 %mul77, ptr %x16, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %64, i64 7
  %65 = load i64, ptr %arrayidx78, align 8
  %conv79 = zext i64 %65 to i128
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %66, i64 3
  %67 = load i64, ptr %arrayidx80, align 8
  %conv81 = zext i64 %67 to i128
  %mul82 = mul i128 %conv79, %conv81
  store i128 %mul82, ptr %x17, align 16
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %68, i64 7
  %69 = load i64, ptr %arrayidx83, align 8
  %conv84 = zext i64 %69 to i128
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %70, i64 2
  %71 = load i64, ptr %arrayidx85, align 8
  %conv86 = zext i64 %71 to i128
  %mul87 = mul i128 %conv84, %conv86
  store i128 %mul87, ptr %x18, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %72, i64 7
  %73 = load i64, ptr %arrayidx88, align 8
  %conv89 = zext i64 %73 to i128
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %74, i64 1
  %75 = load i64, ptr %arrayidx90, align 8
  %conv91 = zext i64 %75 to i128
  %mul92 = mul i128 %conv89, %conv91
  store i128 %mul92, ptr %x19, align 16
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i64, ptr %76, i64 6
  %77 = load i64, ptr %arrayidx93, align 8
  %conv94 = zext i64 %77 to i128
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i64, ptr %78, i64 7
  %79 = load i64, ptr %arrayidx95, align 8
  %conv96 = zext i64 %79 to i128
  %mul97 = mul i128 %conv94, %conv96
  store i128 %mul97, ptr %x20, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %80, i64 6
  %81 = load i64, ptr %arrayidx98, align 8
  %conv99 = zext i64 %81 to i128
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %82, i64 6
  %83 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %83 to i128
  %mul102 = mul i128 %conv99, %conv101
  store i128 %mul102, ptr %x21, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %84, i64 6
  %85 = load i64, ptr %arrayidx103, align 8
  %conv104 = zext i64 %85 to i128
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %86, i64 5
  %87 = load i64, ptr %arrayidx105, align 8
  %conv106 = zext i64 %87 to i128
  %mul107 = mul i128 %conv104, %conv106
  store i128 %mul107, ptr %x22, align 16
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %88, i64 6
  %89 = load i64, ptr %arrayidx108, align 8
  %conv109 = zext i64 %89 to i128
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %90, i64 4
  %91 = load i64, ptr %arrayidx110, align 8
  %conv111 = zext i64 %91 to i128
  %mul112 = mul i128 %conv109, %conv111
  store i128 %mul112, ptr %x23, align 16
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %92, i64 6
  %93 = load i64, ptr %arrayidx113, align 8
  %conv114 = zext i64 %93 to i128
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %94, i64 3
  %95 = load i64, ptr %arrayidx115, align 8
  %conv116 = zext i64 %95 to i128
  %mul117 = mul i128 %conv114, %conv116
  store i128 %mul117, ptr %x24, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %96, i64 6
  %97 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %97 to i128
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %98, i64 2
  %99 = load i64, ptr %arrayidx120, align 8
  %conv121 = zext i64 %99 to i128
  %mul122 = mul i128 %conv119, %conv121
  store i128 %mul122, ptr %x25, align 16
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %100, i64 5
  %101 = load i64, ptr %arrayidx123, align 8
  %conv124 = zext i64 %101 to i128
  %102 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %102, i64 7
  %103 = load i64, ptr %arrayidx125, align 8
  %conv126 = zext i64 %103 to i128
  %mul127 = mul i128 %conv124, %conv126
  store i128 %mul127, ptr %x26, align 16
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %104, i64 5
  %105 = load i64, ptr %arrayidx128, align 8
  %conv129 = zext i64 %105 to i128
  %106 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %106, i64 6
  %107 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %107 to i128
  %mul132 = mul i128 %conv129, %conv131
  store i128 %mul132, ptr %x27, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx133 = getelementptr inbounds i64, ptr %108, i64 5
  %109 = load i64, ptr %arrayidx133, align 8
  %conv134 = zext i64 %109 to i128
  %110 = load ptr, ptr %arg2.addr, align 8
  %arrayidx135 = getelementptr inbounds i64, ptr %110, i64 5
  %111 = load i64, ptr %arrayidx135, align 8
  %conv136 = zext i64 %111 to i128
  %mul137 = mul i128 %conv134, %conv136
  store i128 %mul137, ptr %x28, align 16
  %112 = load ptr, ptr %arg1.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %112, i64 5
  %113 = load i64, ptr %arrayidx138, align 8
  %conv139 = zext i64 %113 to i128
  %114 = load ptr, ptr %arg2.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %114, i64 4
  %115 = load i64, ptr %arrayidx140, align 8
  %conv141 = zext i64 %115 to i128
  %mul142 = mul i128 %conv139, %conv141
  store i128 %mul142, ptr %x29, align 16
  %116 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i64, ptr %116, i64 5
  %117 = load i64, ptr %arrayidx143, align 8
  %conv144 = zext i64 %117 to i128
  %118 = load ptr, ptr %arg2.addr, align 8
  %arrayidx145 = getelementptr inbounds i64, ptr %118, i64 3
  %119 = load i64, ptr %arrayidx145, align 8
  %conv146 = zext i64 %119 to i128
  %mul147 = mul i128 %conv144, %conv146
  store i128 %mul147, ptr %x30, align 16
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx148 = getelementptr inbounds i64, ptr %120, i64 4
  %121 = load i64, ptr %arrayidx148, align 8
  %conv149 = zext i64 %121 to i128
  %122 = load ptr, ptr %arg2.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %122, i64 7
  %123 = load i64, ptr %arrayidx150, align 8
  %conv151 = zext i64 %123 to i128
  %mul152 = mul i128 %conv149, %conv151
  store i128 %mul152, ptr %x31, align 16
  %124 = load ptr, ptr %arg1.addr, align 8
  %arrayidx153 = getelementptr inbounds i64, ptr %124, i64 4
  %125 = load i64, ptr %arrayidx153, align 8
  %conv154 = zext i64 %125 to i128
  %126 = load ptr, ptr %arg2.addr, align 8
  %arrayidx155 = getelementptr inbounds i64, ptr %126, i64 6
  %127 = load i64, ptr %arrayidx155, align 8
  %conv156 = zext i64 %127 to i128
  %mul157 = mul i128 %conv154, %conv156
  store i128 %mul157, ptr %x32, align 16
  %128 = load ptr, ptr %arg1.addr, align 8
  %arrayidx158 = getelementptr inbounds i64, ptr %128, i64 4
  %129 = load i64, ptr %arrayidx158, align 8
  %conv159 = zext i64 %129 to i128
  %130 = load ptr, ptr %arg2.addr, align 8
  %arrayidx160 = getelementptr inbounds i64, ptr %130, i64 5
  %131 = load i64, ptr %arrayidx160, align 8
  %conv161 = zext i64 %131 to i128
  %mul162 = mul i128 %conv159, %conv161
  store i128 %mul162, ptr %x33, align 16
  %132 = load ptr, ptr %arg1.addr, align 8
  %arrayidx163 = getelementptr inbounds i64, ptr %132, i64 4
  %133 = load i64, ptr %arrayidx163, align 8
  %conv164 = zext i64 %133 to i128
  %134 = load ptr, ptr %arg2.addr, align 8
  %arrayidx165 = getelementptr inbounds i64, ptr %134, i64 4
  %135 = load i64, ptr %arrayidx165, align 8
  %conv166 = zext i64 %135 to i128
  %mul167 = mul i128 %conv164, %conv166
  store i128 %mul167, ptr %x34, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx168 = getelementptr inbounds i64, ptr %136, i64 3
  %137 = load i64, ptr %arrayidx168, align 8
  %conv169 = zext i64 %137 to i128
  %138 = load ptr, ptr %arg2.addr, align 8
  %arrayidx170 = getelementptr inbounds i64, ptr %138, i64 7
  %139 = load i64, ptr %arrayidx170, align 8
  %conv171 = zext i64 %139 to i128
  %mul172 = mul i128 %conv169, %conv171
  store i128 %mul172, ptr %x35, align 16
  %140 = load ptr, ptr %arg1.addr, align 8
  %arrayidx173 = getelementptr inbounds i64, ptr %140, i64 3
  %141 = load i64, ptr %arrayidx173, align 8
  %conv174 = zext i64 %141 to i128
  %142 = load ptr, ptr %arg2.addr, align 8
  %arrayidx175 = getelementptr inbounds i64, ptr %142, i64 6
  %143 = load i64, ptr %arrayidx175, align 8
  %conv176 = zext i64 %143 to i128
  %mul177 = mul i128 %conv174, %conv176
  store i128 %mul177, ptr %x36, align 16
  %144 = load ptr, ptr %arg1.addr, align 8
  %arrayidx178 = getelementptr inbounds i64, ptr %144, i64 3
  %145 = load i64, ptr %arrayidx178, align 8
  %conv179 = zext i64 %145 to i128
  %146 = load ptr, ptr %arg2.addr, align 8
  %arrayidx180 = getelementptr inbounds i64, ptr %146, i64 5
  %147 = load i64, ptr %arrayidx180, align 8
  %conv181 = zext i64 %147 to i128
  %mul182 = mul i128 %conv179, %conv181
  store i128 %mul182, ptr %x37, align 16
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx183 = getelementptr inbounds i64, ptr %148, i64 2
  %149 = load i64, ptr %arrayidx183, align 8
  %conv184 = zext i64 %149 to i128
  %150 = load ptr, ptr %arg2.addr, align 8
  %arrayidx185 = getelementptr inbounds i64, ptr %150, i64 7
  %151 = load i64, ptr %arrayidx185, align 8
  %conv186 = zext i64 %151 to i128
  %mul187 = mul i128 %conv184, %conv186
  store i128 %mul187, ptr %x38, align 16
  %152 = load ptr, ptr %arg1.addr, align 8
  %arrayidx188 = getelementptr inbounds i64, ptr %152, i64 2
  %153 = load i64, ptr %arrayidx188, align 8
  %conv189 = zext i64 %153 to i128
  %154 = load ptr, ptr %arg2.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %154, i64 6
  %155 = load i64, ptr %arrayidx190, align 8
  %conv191 = zext i64 %155 to i128
  %mul192 = mul i128 %conv189, %conv191
  store i128 %mul192, ptr %x39, align 16
  %156 = load ptr, ptr %arg1.addr, align 8
  %arrayidx193 = getelementptr inbounds i64, ptr %156, i64 1
  %157 = load i64, ptr %arrayidx193, align 8
  %conv194 = zext i64 %157 to i128
  %158 = load ptr, ptr %arg2.addr, align 8
  %arrayidx195 = getelementptr inbounds i64, ptr %158, i64 7
  %159 = load i64, ptr %arrayidx195, align 8
  %conv196 = zext i64 %159 to i128
  %mul197 = mul i128 %conv194, %conv196
  store i128 %mul197, ptr %x40, align 16
  %160 = load ptr, ptr %arg1.addr, align 8
  %arrayidx198 = getelementptr inbounds i64, ptr %160, i64 7
  %161 = load i64, ptr %arrayidx198, align 8
  %conv199 = zext i64 %161 to i128
  %162 = load ptr, ptr %arg2.addr, align 8
  %arrayidx200 = getelementptr inbounds i64, ptr %162, i64 4
  %163 = load i64, ptr %arrayidx200, align 8
  %conv201 = zext i64 %163 to i128
  %mul202 = mul i128 %conv199, %conv201
  store i128 %mul202, ptr %x41, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx203 = getelementptr inbounds i64, ptr %164, i64 7
  %165 = load i64, ptr %arrayidx203, align 8
  %conv204 = zext i64 %165 to i128
  %166 = load ptr, ptr %arg2.addr, align 8
  %arrayidx205 = getelementptr inbounds i64, ptr %166, i64 3
  %167 = load i64, ptr %arrayidx205, align 8
  %conv206 = zext i64 %167 to i128
  %mul207 = mul i128 %conv204, %conv206
  store i128 %mul207, ptr %x42, align 16
  %168 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %168, i64 7
  %169 = load i64, ptr %arrayidx208, align 8
  %conv209 = zext i64 %169 to i128
  %170 = load ptr, ptr %arg2.addr, align 8
  %arrayidx210 = getelementptr inbounds i64, ptr %170, i64 2
  %171 = load i64, ptr %arrayidx210, align 8
  %conv211 = zext i64 %171 to i128
  %mul212 = mul i128 %conv209, %conv211
  store i128 %mul212, ptr %x43, align 16
  %172 = load ptr, ptr %arg1.addr, align 8
  %arrayidx213 = getelementptr inbounds i64, ptr %172, i64 7
  %173 = load i64, ptr %arrayidx213, align 8
  %conv214 = zext i64 %173 to i128
  %174 = load ptr, ptr %arg2.addr, align 8
  %arrayidx215 = getelementptr inbounds i64, ptr %174, i64 1
  %175 = load i64, ptr %arrayidx215, align 8
  %conv216 = zext i64 %175 to i128
  %mul217 = mul i128 %conv214, %conv216
  store i128 %mul217, ptr %x44, align 16
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx218 = getelementptr inbounds i64, ptr %176, i64 6
  %177 = load i64, ptr %arrayidx218, align 8
  %conv219 = zext i64 %177 to i128
  %178 = load ptr, ptr %arg2.addr, align 8
  %arrayidx220 = getelementptr inbounds i64, ptr %178, i64 5
  %179 = load i64, ptr %arrayidx220, align 8
  %conv221 = zext i64 %179 to i128
  %mul222 = mul i128 %conv219, %conv221
  store i128 %mul222, ptr %x45, align 16
  %180 = load ptr, ptr %arg1.addr, align 8
  %arrayidx223 = getelementptr inbounds i64, ptr %180, i64 6
  %181 = load i64, ptr %arrayidx223, align 8
  %conv224 = zext i64 %181 to i128
  %182 = load ptr, ptr %arg2.addr, align 8
  %arrayidx225 = getelementptr inbounds i64, ptr %182, i64 4
  %183 = load i64, ptr %arrayidx225, align 8
  %conv226 = zext i64 %183 to i128
  %mul227 = mul i128 %conv224, %conv226
  store i128 %mul227, ptr %x46, align 16
  %184 = load ptr, ptr %arg1.addr, align 8
  %arrayidx228 = getelementptr inbounds i64, ptr %184, i64 6
  %185 = load i64, ptr %arrayidx228, align 8
  %conv229 = zext i64 %185 to i128
  %186 = load ptr, ptr %arg2.addr, align 8
  %arrayidx230 = getelementptr inbounds i64, ptr %186, i64 3
  %187 = load i64, ptr %arrayidx230, align 8
  %conv231 = zext i64 %187 to i128
  %mul232 = mul i128 %conv229, %conv231
  store i128 %mul232, ptr %x47, align 16
  %188 = load ptr, ptr %arg1.addr, align 8
  %arrayidx233 = getelementptr inbounds i64, ptr %188, i64 6
  %189 = load i64, ptr %arrayidx233, align 8
  %conv234 = zext i64 %189 to i128
  %190 = load ptr, ptr %arg2.addr, align 8
  %arrayidx235 = getelementptr inbounds i64, ptr %190, i64 2
  %191 = load i64, ptr %arrayidx235, align 8
  %conv236 = zext i64 %191 to i128
  %mul237 = mul i128 %conv234, %conv236
  store i128 %mul237, ptr %x48, align 16
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx238 = getelementptr inbounds i64, ptr %192, i64 5
  %193 = load i64, ptr %arrayidx238, align 8
  %conv239 = zext i64 %193 to i128
  %194 = load ptr, ptr %arg2.addr, align 8
  %arrayidx240 = getelementptr inbounds i64, ptr %194, i64 6
  %195 = load i64, ptr %arrayidx240, align 8
  %conv241 = zext i64 %195 to i128
  %mul242 = mul i128 %conv239, %conv241
  store i128 %mul242, ptr %x49, align 16
  %196 = load ptr, ptr %arg1.addr, align 8
  %arrayidx243 = getelementptr inbounds i64, ptr %196, i64 5
  %197 = load i64, ptr %arrayidx243, align 8
  %conv244 = zext i64 %197 to i128
  %198 = load ptr, ptr %arg2.addr, align 8
  %arrayidx245 = getelementptr inbounds i64, ptr %198, i64 5
  %199 = load i64, ptr %arrayidx245, align 8
  %conv246 = zext i64 %199 to i128
  %mul247 = mul i128 %conv244, %conv246
  store i128 %mul247, ptr %x50, align 16
  %200 = load ptr, ptr %arg1.addr, align 8
  %arrayidx248 = getelementptr inbounds i64, ptr %200, i64 5
  %201 = load i64, ptr %arrayidx248, align 8
  %conv249 = zext i64 %201 to i128
  %202 = load ptr, ptr %arg2.addr, align 8
  %arrayidx250 = getelementptr inbounds i64, ptr %202, i64 4
  %203 = load i64, ptr %arrayidx250, align 8
  %conv251 = zext i64 %203 to i128
  %mul252 = mul i128 %conv249, %conv251
  store i128 %mul252, ptr %x51, align 16
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx253 = getelementptr inbounds i64, ptr %204, i64 5
  %205 = load i64, ptr %arrayidx253, align 8
  %conv254 = zext i64 %205 to i128
  %206 = load ptr, ptr %arg2.addr, align 8
  %arrayidx255 = getelementptr inbounds i64, ptr %206, i64 3
  %207 = load i64, ptr %arrayidx255, align 8
  %conv256 = zext i64 %207 to i128
  %mul257 = mul i128 %conv254, %conv256
  store i128 %mul257, ptr %x52, align 16
  %208 = load ptr, ptr %arg1.addr, align 8
  %arrayidx258 = getelementptr inbounds i64, ptr %208, i64 4
  %209 = load i64, ptr %arrayidx258, align 8
  %conv259 = zext i64 %209 to i128
  %210 = load ptr, ptr %arg2.addr, align 8
  %arrayidx260 = getelementptr inbounds i64, ptr %210, i64 7
  %211 = load i64, ptr %arrayidx260, align 8
  %conv261 = zext i64 %211 to i128
  %mul262 = mul i128 %conv259, %conv261
  store i128 %mul262, ptr %x53, align 16
  %212 = load ptr, ptr %arg1.addr, align 8
  %arrayidx263 = getelementptr inbounds i64, ptr %212, i64 4
  %213 = load i64, ptr %arrayidx263, align 8
  %conv264 = zext i64 %213 to i128
  %214 = load ptr, ptr %arg2.addr, align 8
  %arrayidx265 = getelementptr inbounds i64, ptr %214, i64 6
  %215 = load i64, ptr %arrayidx265, align 8
  %conv266 = zext i64 %215 to i128
  %mul267 = mul i128 %conv264, %conv266
  store i128 %mul267, ptr %x54, align 16
  %216 = load ptr, ptr %arg1.addr, align 8
  %arrayidx268 = getelementptr inbounds i64, ptr %216, i64 4
  %217 = load i64, ptr %arrayidx268, align 8
  %conv269 = zext i64 %217 to i128
  %218 = load ptr, ptr %arg2.addr, align 8
  %arrayidx270 = getelementptr inbounds i64, ptr %218, i64 5
  %219 = load i64, ptr %arrayidx270, align 8
  %conv271 = zext i64 %219 to i128
  %mul272 = mul i128 %conv269, %conv271
  store i128 %mul272, ptr %x55, align 16
  %220 = load ptr, ptr %arg1.addr, align 8
  %arrayidx273 = getelementptr inbounds i64, ptr %220, i64 4
  %221 = load i64, ptr %arrayidx273, align 8
  %conv274 = zext i64 %221 to i128
  %222 = load ptr, ptr %arg2.addr, align 8
  %arrayidx275 = getelementptr inbounds i64, ptr %222, i64 4
  %223 = load i64, ptr %arrayidx275, align 8
  %conv276 = zext i64 %223 to i128
  %mul277 = mul i128 %conv274, %conv276
  store i128 %mul277, ptr %x56, align 16
  %224 = load ptr, ptr %arg1.addr, align 8
  %arrayidx278 = getelementptr inbounds i64, ptr %224, i64 3
  %225 = load i64, ptr %arrayidx278, align 8
  %conv279 = zext i64 %225 to i128
  %226 = load ptr, ptr %arg2.addr, align 8
  %arrayidx280 = getelementptr inbounds i64, ptr %226, i64 7
  %227 = load i64, ptr %arrayidx280, align 8
  %conv281 = zext i64 %227 to i128
  %mul282 = mul i128 %conv279, %conv281
  store i128 %mul282, ptr %x57, align 16
  %228 = load ptr, ptr %arg1.addr, align 8
  %arrayidx283 = getelementptr inbounds i64, ptr %228, i64 3
  %229 = load i64, ptr %arrayidx283, align 8
  %conv284 = zext i64 %229 to i128
  %230 = load ptr, ptr %arg2.addr, align 8
  %arrayidx285 = getelementptr inbounds i64, ptr %230, i64 6
  %231 = load i64, ptr %arrayidx285, align 8
  %conv286 = zext i64 %231 to i128
  %mul287 = mul i128 %conv284, %conv286
  store i128 %mul287, ptr %x58, align 16
  %232 = load ptr, ptr %arg1.addr, align 8
  %arrayidx288 = getelementptr inbounds i64, ptr %232, i64 3
  %233 = load i64, ptr %arrayidx288, align 8
  %conv289 = zext i64 %233 to i128
  %234 = load ptr, ptr %arg2.addr, align 8
  %arrayidx290 = getelementptr inbounds i64, ptr %234, i64 5
  %235 = load i64, ptr %arrayidx290, align 8
  %conv291 = zext i64 %235 to i128
  %mul292 = mul i128 %conv289, %conv291
  store i128 %mul292, ptr %x59, align 16
  %236 = load ptr, ptr %arg1.addr, align 8
  %arrayidx293 = getelementptr inbounds i64, ptr %236, i64 2
  %237 = load i64, ptr %arrayidx293, align 8
  %conv294 = zext i64 %237 to i128
  %238 = load ptr, ptr %arg2.addr, align 8
  %arrayidx295 = getelementptr inbounds i64, ptr %238, i64 7
  %239 = load i64, ptr %arrayidx295, align 8
  %conv296 = zext i64 %239 to i128
  %mul297 = mul i128 %conv294, %conv296
  store i128 %mul297, ptr %x60, align 16
  %240 = load ptr, ptr %arg1.addr, align 8
  %arrayidx298 = getelementptr inbounds i64, ptr %240, i64 2
  %241 = load i64, ptr %arrayidx298, align 8
  %conv299 = zext i64 %241 to i128
  %242 = load ptr, ptr %arg2.addr, align 8
  %arrayidx300 = getelementptr inbounds i64, ptr %242, i64 6
  %243 = load i64, ptr %arrayidx300, align 8
  %conv301 = zext i64 %243 to i128
  %mul302 = mul i128 %conv299, %conv301
  store i128 %mul302, ptr %x61, align 16
  %244 = load ptr, ptr %arg1.addr, align 8
  %arrayidx303 = getelementptr inbounds i64, ptr %244, i64 1
  %245 = load i64, ptr %arrayidx303, align 8
  %conv304 = zext i64 %245 to i128
  %246 = load ptr, ptr %arg2.addr, align 8
  %arrayidx305 = getelementptr inbounds i64, ptr %246, i64 7
  %247 = load i64, ptr %arrayidx305, align 8
  %conv306 = zext i64 %247 to i128
  %mul307 = mul i128 %conv304, %conv306
  store i128 %mul307, ptr %x62, align 16
  %248 = load ptr, ptr %arg1.addr, align 8
  %arrayidx308 = getelementptr inbounds i64, ptr %248, i64 7
  %249 = load i64, ptr %arrayidx308, align 8
  %conv309 = zext i64 %249 to i128
  %250 = load ptr, ptr %arg2.addr, align 8
  %arrayidx310 = getelementptr inbounds i64, ptr %250, i64 0
  %251 = load i64, ptr %arrayidx310, align 8
  %conv311 = zext i64 %251 to i128
  %mul312 = mul i128 %conv309, %conv311
  store i128 %mul312, ptr %x63, align 16
  %252 = load ptr, ptr %arg1.addr, align 8
  %arrayidx313 = getelementptr inbounds i64, ptr %252, i64 6
  %253 = load i64, ptr %arrayidx313, align 8
  %conv314 = zext i64 %253 to i128
  %254 = load ptr, ptr %arg2.addr, align 8
  %arrayidx315 = getelementptr inbounds i64, ptr %254, i64 1
  %255 = load i64, ptr %arrayidx315, align 8
  %conv316 = zext i64 %255 to i128
  %mul317 = mul i128 %conv314, %conv316
  store i128 %mul317, ptr %x64, align 16
  %256 = load ptr, ptr %arg1.addr, align 8
  %arrayidx318 = getelementptr inbounds i64, ptr %256, i64 6
  %257 = load i64, ptr %arrayidx318, align 8
  %conv319 = zext i64 %257 to i128
  %258 = load ptr, ptr %arg2.addr, align 8
  %arrayidx320 = getelementptr inbounds i64, ptr %258, i64 0
  %259 = load i64, ptr %arrayidx320, align 8
  %conv321 = zext i64 %259 to i128
  %mul322 = mul i128 %conv319, %conv321
  store i128 %mul322, ptr %x65, align 16
  %260 = load ptr, ptr %arg1.addr, align 8
  %arrayidx323 = getelementptr inbounds i64, ptr %260, i64 5
  %261 = load i64, ptr %arrayidx323, align 8
  %conv324 = zext i64 %261 to i128
  %262 = load ptr, ptr %arg2.addr, align 8
  %arrayidx325 = getelementptr inbounds i64, ptr %262, i64 2
  %263 = load i64, ptr %arrayidx325, align 8
  %conv326 = zext i64 %263 to i128
  %mul327 = mul i128 %conv324, %conv326
  store i128 %mul327, ptr %x66, align 16
  %264 = load ptr, ptr %arg1.addr, align 8
  %arrayidx328 = getelementptr inbounds i64, ptr %264, i64 5
  %265 = load i64, ptr %arrayidx328, align 8
  %conv329 = zext i64 %265 to i128
  %266 = load ptr, ptr %arg2.addr, align 8
  %arrayidx330 = getelementptr inbounds i64, ptr %266, i64 1
  %267 = load i64, ptr %arrayidx330, align 8
  %conv331 = zext i64 %267 to i128
  %mul332 = mul i128 %conv329, %conv331
  store i128 %mul332, ptr %x67, align 16
  %268 = load ptr, ptr %arg1.addr, align 8
  %arrayidx333 = getelementptr inbounds i64, ptr %268, i64 5
  %269 = load i64, ptr %arrayidx333, align 8
  %conv334 = zext i64 %269 to i128
  %270 = load ptr, ptr %arg2.addr, align 8
  %arrayidx335 = getelementptr inbounds i64, ptr %270, i64 0
  %271 = load i64, ptr %arrayidx335, align 8
  %conv336 = zext i64 %271 to i128
  %mul337 = mul i128 %conv334, %conv336
  store i128 %mul337, ptr %x68, align 16
  %272 = load ptr, ptr %arg1.addr, align 8
  %arrayidx338 = getelementptr inbounds i64, ptr %272, i64 4
  %273 = load i64, ptr %arrayidx338, align 8
  %conv339 = zext i64 %273 to i128
  %274 = load ptr, ptr %arg2.addr, align 8
  %arrayidx340 = getelementptr inbounds i64, ptr %274, i64 3
  %275 = load i64, ptr %arrayidx340, align 8
  %conv341 = zext i64 %275 to i128
  %mul342 = mul i128 %conv339, %conv341
  store i128 %mul342, ptr %x69, align 16
  %276 = load ptr, ptr %arg1.addr, align 8
  %arrayidx343 = getelementptr inbounds i64, ptr %276, i64 4
  %277 = load i64, ptr %arrayidx343, align 8
  %conv344 = zext i64 %277 to i128
  %278 = load ptr, ptr %arg2.addr, align 8
  %arrayidx345 = getelementptr inbounds i64, ptr %278, i64 2
  %279 = load i64, ptr %arrayidx345, align 8
  %conv346 = zext i64 %279 to i128
  %mul347 = mul i128 %conv344, %conv346
  store i128 %mul347, ptr %x70, align 16
  %280 = load ptr, ptr %arg1.addr, align 8
  %arrayidx348 = getelementptr inbounds i64, ptr %280, i64 4
  %281 = load i64, ptr %arrayidx348, align 8
  %conv349 = zext i64 %281 to i128
  %282 = load ptr, ptr %arg2.addr, align 8
  %arrayidx350 = getelementptr inbounds i64, ptr %282, i64 1
  %283 = load i64, ptr %arrayidx350, align 8
  %conv351 = zext i64 %283 to i128
  %mul352 = mul i128 %conv349, %conv351
  store i128 %mul352, ptr %x71, align 16
  %284 = load ptr, ptr %arg1.addr, align 8
  %arrayidx353 = getelementptr inbounds i64, ptr %284, i64 4
  %285 = load i64, ptr %arrayidx353, align 8
  %conv354 = zext i64 %285 to i128
  %286 = load ptr, ptr %arg2.addr, align 8
  %arrayidx355 = getelementptr inbounds i64, ptr %286, i64 0
  %287 = load i64, ptr %arrayidx355, align 8
  %conv356 = zext i64 %287 to i128
  %mul357 = mul i128 %conv354, %conv356
  store i128 %mul357, ptr %x72, align 16
  %288 = load ptr, ptr %arg1.addr, align 8
  %arrayidx358 = getelementptr inbounds i64, ptr %288, i64 3
  %289 = load i64, ptr %arrayidx358, align 8
  %conv359 = zext i64 %289 to i128
  %290 = load ptr, ptr %arg2.addr, align 8
  %arrayidx360 = getelementptr inbounds i64, ptr %290, i64 4
  %291 = load i64, ptr %arrayidx360, align 8
  %conv361 = zext i64 %291 to i128
  %mul362 = mul i128 %conv359, %conv361
  store i128 %mul362, ptr %x73, align 16
  %292 = load ptr, ptr %arg1.addr, align 8
  %arrayidx363 = getelementptr inbounds i64, ptr %292, i64 3
  %293 = load i64, ptr %arrayidx363, align 8
  %conv364 = zext i64 %293 to i128
  %294 = load ptr, ptr %arg2.addr, align 8
  %arrayidx365 = getelementptr inbounds i64, ptr %294, i64 3
  %295 = load i64, ptr %arrayidx365, align 8
  %conv366 = zext i64 %295 to i128
  %mul367 = mul i128 %conv364, %conv366
  store i128 %mul367, ptr %x74, align 16
  %296 = load ptr, ptr %arg1.addr, align 8
  %arrayidx368 = getelementptr inbounds i64, ptr %296, i64 3
  %297 = load i64, ptr %arrayidx368, align 8
  %conv369 = zext i64 %297 to i128
  %298 = load ptr, ptr %arg2.addr, align 8
  %arrayidx370 = getelementptr inbounds i64, ptr %298, i64 2
  %299 = load i64, ptr %arrayidx370, align 8
  %conv371 = zext i64 %299 to i128
  %mul372 = mul i128 %conv369, %conv371
  store i128 %mul372, ptr %x75, align 16
  %300 = load ptr, ptr %arg1.addr, align 8
  %arrayidx373 = getelementptr inbounds i64, ptr %300, i64 3
  %301 = load i64, ptr %arrayidx373, align 8
  %conv374 = zext i64 %301 to i128
  %302 = load ptr, ptr %arg2.addr, align 8
  %arrayidx375 = getelementptr inbounds i64, ptr %302, i64 1
  %303 = load i64, ptr %arrayidx375, align 8
  %conv376 = zext i64 %303 to i128
  %mul377 = mul i128 %conv374, %conv376
  store i128 %mul377, ptr %x76, align 16
  %304 = load ptr, ptr %arg1.addr, align 8
  %arrayidx378 = getelementptr inbounds i64, ptr %304, i64 3
  %305 = load i64, ptr %arrayidx378, align 8
  %conv379 = zext i64 %305 to i128
  %306 = load ptr, ptr %arg2.addr, align 8
  %arrayidx380 = getelementptr inbounds i64, ptr %306, i64 0
  %307 = load i64, ptr %arrayidx380, align 8
  %conv381 = zext i64 %307 to i128
  %mul382 = mul i128 %conv379, %conv381
  store i128 %mul382, ptr %x77, align 16
  %308 = load ptr, ptr %arg1.addr, align 8
  %arrayidx383 = getelementptr inbounds i64, ptr %308, i64 2
  %309 = load i64, ptr %arrayidx383, align 8
  %conv384 = zext i64 %309 to i128
  %310 = load ptr, ptr %arg2.addr, align 8
  %arrayidx385 = getelementptr inbounds i64, ptr %310, i64 5
  %311 = load i64, ptr %arrayidx385, align 8
  %conv386 = zext i64 %311 to i128
  %mul387 = mul i128 %conv384, %conv386
  store i128 %mul387, ptr %x78, align 16
  %312 = load ptr, ptr %arg1.addr, align 8
  %arrayidx388 = getelementptr inbounds i64, ptr %312, i64 2
  %313 = load i64, ptr %arrayidx388, align 8
  %conv389 = zext i64 %313 to i128
  %314 = load ptr, ptr %arg2.addr, align 8
  %arrayidx390 = getelementptr inbounds i64, ptr %314, i64 4
  %315 = load i64, ptr %arrayidx390, align 8
  %conv391 = zext i64 %315 to i128
  %mul392 = mul i128 %conv389, %conv391
  store i128 %mul392, ptr %x79, align 16
  %316 = load ptr, ptr %arg1.addr, align 8
  %arrayidx393 = getelementptr inbounds i64, ptr %316, i64 2
  %317 = load i64, ptr %arrayidx393, align 8
  %conv394 = zext i64 %317 to i128
  %318 = load ptr, ptr %arg2.addr, align 8
  %arrayidx395 = getelementptr inbounds i64, ptr %318, i64 3
  %319 = load i64, ptr %arrayidx395, align 8
  %conv396 = zext i64 %319 to i128
  %mul397 = mul i128 %conv394, %conv396
  store i128 %mul397, ptr %x80, align 16
  %320 = load ptr, ptr %arg1.addr, align 8
  %arrayidx398 = getelementptr inbounds i64, ptr %320, i64 2
  %321 = load i64, ptr %arrayidx398, align 8
  %conv399 = zext i64 %321 to i128
  %322 = load ptr, ptr %arg2.addr, align 8
  %arrayidx400 = getelementptr inbounds i64, ptr %322, i64 2
  %323 = load i64, ptr %arrayidx400, align 8
  %conv401 = zext i64 %323 to i128
  %mul402 = mul i128 %conv399, %conv401
  store i128 %mul402, ptr %x81, align 16
  %324 = load ptr, ptr %arg1.addr, align 8
  %arrayidx403 = getelementptr inbounds i64, ptr %324, i64 2
  %325 = load i64, ptr %arrayidx403, align 8
  %conv404 = zext i64 %325 to i128
  %326 = load ptr, ptr %arg2.addr, align 8
  %arrayidx405 = getelementptr inbounds i64, ptr %326, i64 1
  %327 = load i64, ptr %arrayidx405, align 8
  %conv406 = zext i64 %327 to i128
  %mul407 = mul i128 %conv404, %conv406
  store i128 %mul407, ptr %x82, align 16
  %328 = load ptr, ptr %arg1.addr, align 8
  %arrayidx408 = getelementptr inbounds i64, ptr %328, i64 2
  %329 = load i64, ptr %arrayidx408, align 8
  %conv409 = zext i64 %329 to i128
  %330 = load ptr, ptr %arg2.addr, align 8
  %arrayidx410 = getelementptr inbounds i64, ptr %330, i64 0
  %331 = load i64, ptr %arrayidx410, align 8
  %conv411 = zext i64 %331 to i128
  %mul412 = mul i128 %conv409, %conv411
  store i128 %mul412, ptr %x83, align 16
  %332 = load ptr, ptr %arg1.addr, align 8
  %arrayidx413 = getelementptr inbounds i64, ptr %332, i64 1
  %333 = load i64, ptr %arrayidx413, align 8
  %conv414 = zext i64 %333 to i128
  %334 = load ptr, ptr %arg2.addr, align 8
  %arrayidx415 = getelementptr inbounds i64, ptr %334, i64 6
  %335 = load i64, ptr %arrayidx415, align 8
  %conv416 = zext i64 %335 to i128
  %mul417 = mul i128 %conv414, %conv416
  store i128 %mul417, ptr %x84, align 16
  %336 = load ptr, ptr %arg1.addr, align 8
  %arrayidx418 = getelementptr inbounds i64, ptr %336, i64 1
  %337 = load i64, ptr %arrayidx418, align 8
  %conv419 = zext i64 %337 to i128
  %338 = load ptr, ptr %arg2.addr, align 8
  %arrayidx420 = getelementptr inbounds i64, ptr %338, i64 5
  %339 = load i64, ptr %arrayidx420, align 8
  %conv421 = zext i64 %339 to i128
  %mul422 = mul i128 %conv419, %conv421
  store i128 %mul422, ptr %x85, align 16
  %340 = load ptr, ptr %arg1.addr, align 8
  %arrayidx423 = getelementptr inbounds i64, ptr %340, i64 1
  %341 = load i64, ptr %arrayidx423, align 8
  %conv424 = zext i64 %341 to i128
  %342 = load ptr, ptr %arg2.addr, align 8
  %arrayidx425 = getelementptr inbounds i64, ptr %342, i64 4
  %343 = load i64, ptr %arrayidx425, align 8
  %conv426 = zext i64 %343 to i128
  %mul427 = mul i128 %conv424, %conv426
  store i128 %mul427, ptr %x86, align 16
  %344 = load ptr, ptr %arg1.addr, align 8
  %arrayidx428 = getelementptr inbounds i64, ptr %344, i64 1
  %345 = load i64, ptr %arrayidx428, align 8
  %conv429 = zext i64 %345 to i128
  %346 = load ptr, ptr %arg2.addr, align 8
  %arrayidx430 = getelementptr inbounds i64, ptr %346, i64 3
  %347 = load i64, ptr %arrayidx430, align 8
  %conv431 = zext i64 %347 to i128
  %mul432 = mul i128 %conv429, %conv431
  store i128 %mul432, ptr %x87, align 16
  %348 = load ptr, ptr %arg1.addr, align 8
  %arrayidx433 = getelementptr inbounds i64, ptr %348, i64 1
  %349 = load i64, ptr %arrayidx433, align 8
  %conv434 = zext i64 %349 to i128
  %350 = load ptr, ptr %arg2.addr, align 8
  %arrayidx435 = getelementptr inbounds i64, ptr %350, i64 2
  %351 = load i64, ptr %arrayidx435, align 8
  %conv436 = zext i64 %351 to i128
  %mul437 = mul i128 %conv434, %conv436
  store i128 %mul437, ptr %x88, align 16
  %352 = load ptr, ptr %arg1.addr, align 8
  %arrayidx438 = getelementptr inbounds i64, ptr %352, i64 1
  %353 = load i64, ptr %arrayidx438, align 8
  %conv439 = zext i64 %353 to i128
  %354 = load ptr, ptr %arg2.addr, align 8
  %arrayidx440 = getelementptr inbounds i64, ptr %354, i64 1
  %355 = load i64, ptr %arrayidx440, align 8
  %conv441 = zext i64 %355 to i128
  %mul442 = mul i128 %conv439, %conv441
  store i128 %mul442, ptr %x89, align 16
  %356 = load ptr, ptr %arg1.addr, align 8
  %arrayidx443 = getelementptr inbounds i64, ptr %356, i64 1
  %357 = load i64, ptr %arrayidx443, align 8
  %conv444 = zext i64 %357 to i128
  %358 = load ptr, ptr %arg2.addr, align 8
  %arrayidx445 = getelementptr inbounds i64, ptr %358, i64 0
  %359 = load i64, ptr %arrayidx445, align 8
  %conv446 = zext i64 %359 to i128
  %mul447 = mul i128 %conv444, %conv446
  store i128 %mul447, ptr %x90, align 16
  %360 = load ptr, ptr %arg1.addr, align 8
  %arrayidx448 = getelementptr inbounds i64, ptr %360, i64 0
  %361 = load i64, ptr %arrayidx448, align 8
  %conv449 = zext i64 %361 to i128
  %362 = load ptr, ptr %arg2.addr, align 8
  %arrayidx450 = getelementptr inbounds i64, ptr %362, i64 7
  %363 = load i64, ptr %arrayidx450, align 8
  %conv451 = zext i64 %363 to i128
  %mul452 = mul i128 %conv449, %conv451
  store i128 %mul452, ptr %x91, align 16
  %364 = load ptr, ptr %arg1.addr, align 8
  %arrayidx453 = getelementptr inbounds i64, ptr %364, i64 0
  %365 = load i64, ptr %arrayidx453, align 8
  %conv454 = zext i64 %365 to i128
  %366 = load ptr, ptr %arg2.addr, align 8
  %arrayidx455 = getelementptr inbounds i64, ptr %366, i64 6
  %367 = load i64, ptr %arrayidx455, align 8
  %conv456 = zext i64 %367 to i128
  %mul457 = mul i128 %conv454, %conv456
  store i128 %mul457, ptr %x92, align 16
  %368 = load ptr, ptr %arg1.addr, align 8
  %arrayidx458 = getelementptr inbounds i64, ptr %368, i64 0
  %369 = load i64, ptr %arrayidx458, align 8
  %conv459 = zext i64 %369 to i128
  %370 = load ptr, ptr %arg2.addr, align 8
  %arrayidx460 = getelementptr inbounds i64, ptr %370, i64 5
  %371 = load i64, ptr %arrayidx460, align 8
  %conv461 = zext i64 %371 to i128
  %mul462 = mul i128 %conv459, %conv461
  store i128 %mul462, ptr %x93, align 16
  %372 = load ptr, ptr %arg1.addr, align 8
  %arrayidx463 = getelementptr inbounds i64, ptr %372, i64 0
  %373 = load i64, ptr %arrayidx463, align 8
  %conv464 = zext i64 %373 to i128
  %374 = load ptr, ptr %arg2.addr, align 8
  %arrayidx465 = getelementptr inbounds i64, ptr %374, i64 4
  %375 = load i64, ptr %arrayidx465, align 8
  %conv466 = zext i64 %375 to i128
  %mul467 = mul i128 %conv464, %conv466
  store i128 %mul467, ptr %x94, align 16
  %376 = load ptr, ptr %arg1.addr, align 8
  %arrayidx468 = getelementptr inbounds i64, ptr %376, i64 0
  %377 = load i64, ptr %arrayidx468, align 8
  %conv469 = zext i64 %377 to i128
  %378 = load ptr, ptr %arg2.addr, align 8
  %arrayidx470 = getelementptr inbounds i64, ptr %378, i64 3
  %379 = load i64, ptr %arrayidx470, align 8
  %conv471 = zext i64 %379 to i128
  %mul472 = mul i128 %conv469, %conv471
  store i128 %mul472, ptr %x95, align 16
  %380 = load ptr, ptr %arg1.addr, align 8
  %arrayidx473 = getelementptr inbounds i64, ptr %380, i64 0
  %381 = load i64, ptr %arrayidx473, align 8
  %conv474 = zext i64 %381 to i128
  %382 = load ptr, ptr %arg2.addr, align 8
  %arrayidx475 = getelementptr inbounds i64, ptr %382, i64 2
  %383 = load i64, ptr %arrayidx475, align 8
  %conv476 = zext i64 %383 to i128
  %mul477 = mul i128 %conv474, %conv476
  store i128 %mul477, ptr %x96, align 16
  %384 = load ptr, ptr %arg1.addr, align 8
  %arrayidx478 = getelementptr inbounds i64, ptr %384, i64 0
  %385 = load i64, ptr %arrayidx478, align 8
  %conv479 = zext i64 %385 to i128
  %386 = load ptr, ptr %arg2.addr, align 8
  %arrayidx480 = getelementptr inbounds i64, ptr %386, i64 1
  %387 = load i64, ptr %arrayidx480, align 8
  %conv481 = zext i64 %387 to i128
  %mul482 = mul i128 %conv479, %conv481
  store i128 %mul482, ptr %x97, align 16
  %388 = load ptr, ptr %arg1.addr, align 8
  %arrayidx483 = getelementptr inbounds i64, ptr %388, i64 0
  %389 = load i64, ptr %arrayidx483, align 8
  %conv484 = zext i64 %389 to i128
  %390 = load ptr, ptr %arg2.addr, align 8
  %arrayidx485 = getelementptr inbounds i64, ptr %390, i64 0
  %391 = load i64, ptr %arrayidx485, align 8
  %conv486 = zext i64 %391 to i128
  %mul487 = mul i128 %conv484, %conv486
  store i128 %mul487, ptr %x98, align 16
  %392 = load i128, ptr %x95, align 16
  %393 = load i128, ptr %x88, align 16
  %394 = load i128, ptr %x82, align 16
  %395 = load i128, ptr %x77, align 16
  %396 = load i128, ptr %x31, align 16
  %397 = load i128, ptr %x27, align 16
  %398 = load i128, ptr %x22, align 16
  %399 = load i128, ptr %x16, align 16
  %add = add i128 %398, %399
  %add488 = add i128 %397, %add
  %add489 = add i128 %396, %add488
  %add490 = add i128 %395, %add489
  %add491 = add i128 %394, %add490
  %add492 = add i128 %393, %add491
  %add493 = add i128 %392, %add492
  store i128 %add493, ptr %x99, align 16
  %400 = load i128, ptr %x99, align 16
  %shr = lshr i128 %400, 56
  %conv494 = trunc i128 %shr to i64
  store i64 %conv494, ptr %x100, align 8
  %401 = load i128, ptr %x99, align 16
  %and = and i128 %401, 72057594037927935
  %conv495 = trunc i128 %and to i64
  store i64 %conv495, ptr %x101, align 8
  %402 = load i128, ptr %x91, align 16
  %403 = load i128, ptr %x84, align 16
  %404 = load i128, ptr %x78, align 16
  %405 = load i128, ptr %x73, align 16
  %406 = load i128, ptr %x69, align 16
  %407 = load i128, ptr %x66, align 16
  %408 = load i128, ptr %x64, align 16
  %409 = load i128, ptr %x63, align 16
  %410 = load i128, ptr %x53, align 16
  %411 = load i128, ptr %x49, align 16
  %412 = load i128, ptr %x45, align 16
  %413 = load i128, ptr %x41, align 16
  %add496 = add i128 %412, %413
  %add497 = add i128 %411, %add496
  %add498 = add i128 %410, %add497
  %add499 = add i128 %409, %add498
  %add500 = add i128 %408, %add499
  %add501 = add i128 %407, %add500
  %add502 = add i128 %406, %add501
  %add503 = add i128 %405, %add502
  %add504 = add i128 %404, %add503
  %add505 = add i128 %403, %add504
  %add506 = add i128 %402, %add505
  store i128 %add506, ptr %x102, align 16
  %414 = load i128, ptr %x92, align 16
  %415 = load i128, ptr %x85, align 16
  %416 = load i128, ptr %x79, align 16
  %417 = load i128, ptr %x74, align 16
  %418 = load i128, ptr %x70, align 16
  %419 = load i128, ptr %x67, align 16
  %420 = load i128, ptr %x65, align 16
  %421 = load i128, ptr %x57, align 16
  %422 = load i128, ptr %x54, align 16
  %423 = load i128, ptr %x50, align 16
  %424 = load i128, ptr %x46, align 16
  %425 = load i128, ptr %x42, align 16
  %426 = load i128, ptr %x13, align 16
  %427 = load i128, ptr %x7, align 16
  %add507 = add i128 %426, %427
  %add508 = add i128 %425, %add507
  %add509 = add i128 %424, %add508
  %add510 = add i128 %423, %add509
  %add511 = add i128 %422, %add510
  %add512 = add i128 %421, %add511
  %add513 = add i128 %420, %add512
  %add514 = add i128 %419, %add513
  %add515 = add i128 %418, %add514
  %add516 = add i128 %417, %add515
  %add517 = add i128 %416, %add516
  %add518 = add i128 %415, %add517
  %add519 = add i128 %414, %add518
  store i128 %add519, ptr %x103, align 16
  %428 = load i128, ptr %x93, align 16
  %429 = load i128, ptr %x86, align 16
  %430 = load i128, ptr %x80, align 16
  %431 = load i128, ptr %x75, align 16
  %432 = load i128, ptr %x71, align 16
  %433 = load i128, ptr %x68, align 16
  %434 = load i128, ptr %x60, align 16
  %435 = load i128, ptr %x58, align 16
  %436 = load i128, ptr %x55, align 16
  %437 = load i128, ptr %x51, align 16
  %438 = load i128, ptr %x47, align 16
  %439 = load i128, ptr %x43, align 16
  %440 = load i128, ptr %x20, align 16
  %441 = load i128, ptr %x14, align 16
  %442 = load i128, ptr %x10, align 16
  %443 = load i128, ptr %x8, align 16
  %add520 = add i128 %442, %443
  %add521 = add i128 %441, %add520
  %add522 = add i128 %440, %add521
  %add523 = add i128 %439, %add522
  %add524 = add i128 %438, %add523
  %add525 = add i128 %437, %add524
  %add526 = add i128 %436, %add525
  %add527 = add i128 %435, %add526
  %add528 = add i128 %434, %add527
  %add529 = add i128 %433, %add528
  %add530 = add i128 %432, %add529
  %add531 = add i128 %431, %add530
  %add532 = add i128 %430, %add531
  %add533 = add i128 %429, %add532
  %add534 = add i128 %428, %add533
  store i128 %add534, ptr %x104, align 16
  %444 = load i128, ptr %x94, align 16
  %445 = load i128, ptr %x87, align 16
  %446 = load i128, ptr %x81, align 16
  %447 = load i128, ptr %x76, align 16
  %448 = load i128, ptr %x72, align 16
  %449 = load i128, ptr %x62, align 16
  %450 = load i128, ptr %x61, align 16
  %451 = load i128, ptr %x59, align 16
  %452 = load i128, ptr %x56, align 16
  %453 = load i128, ptr %x52, align 16
  %454 = load i128, ptr %x48, align 16
  %455 = load i128, ptr %x44, align 16
  %456 = load i128, ptr %x26, align 16
  %457 = load i128, ptr %x21, align 16
  %458 = load i128, ptr %x15, align 16
  %459 = load i128, ptr %x12, align 16
  %460 = load i128, ptr %x11, align 16
  %461 = load i128, ptr %x9, align 16
  %add535 = add i128 %460, %461
  %add536 = add i128 %459, %add535
  %add537 = add i128 %458, %add536
  %add538 = add i128 %457, %add537
  %add539 = add i128 %456, %add538
  %add540 = add i128 %455, %add539
  %add541 = add i128 %454, %add540
  %add542 = add i128 %453, %add541
  %add543 = add i128 %452, %add542
  %add544 = add i128 %451, %add543
  %add545 = add i128 %450, %add544
  %add546 = add i128 %449, %add545
  %add547 = add i128 %448, %add546
  %add548 = add i128 %447, %add547
  %add549 = add i128 %446, %add548
  %add550 = add i128 %445, %add549
  %add551 = add i128 %444, %add550
  store i128 %add551, ptr %x105, align 16
  %462 = load i128, ptr %x96, align 16
  %463 = load i128, ptr %x89, align 16
  %464 = load i128, ptr %x83, align 16
  %465 = load i128, ptr %x35, align 16
  %466 = load i128, ptr %x32, align 16
  %467 = load i128, ptr %x28, align 16
  %468 = load i128, ptr %x23, align 16
  %469 = load i128, ptr %x17, align 16
  %470 = load i128, ptr %x1, align 16
  %add552 = add i128 %469, %470
  %add553 = add i128 %468, %add552
  %add554 = add i128 %467, %add553
  %add555 = add i128 %466, %add554
  %add556 = add i128 %465, %add555
  %add557 = add i128 %464, %add556
  %add558 = add i128 %463, %add557
  %add559 = add i128 %462, %add558
  store i128 %add559, ptr %x106, align 16
  %471 = load i128, ptr %x97, align 16
  %472 = load i128, ptr %x90, align 16
  %473 = load i128, ptr %x38, align 16
  %474 = load i128, ptr %x36, align 16
  %475 = load i128, ptr %x33, align 16
  %476 = load i128, ptr %x29, align 16
  %477 = load i128, ptr %x24, align 16
  %478 = load i128, ptr %x18, align 16
  %479 = load i128, ptr %x4, align 16
  %480 = load i128, ptr %x2, align 16
  %add560 = add i128 %479, %480
  %add561 = add i128 %478, %add560
  %add562 = add i128 %477, %add561
  %add563 = add i128 %476, %add562
  %add564 = add i128 %475, %add563
  %add565 = add i128 %474, %add564
  %add566 = add i128 %473, %add565
  %add567 = add i128 %472, %add566
  %add568 = add i128 %471, %add567
  store i128 %add568, ptr %x107, align 16
  %481 = load i128, ptr %x98, align 16
  %482 = load i128, ptr %x40, align 16
  %483 = load i128, ptr %x39, align 16
  %484 = load i128, ptr %x37, align 16
  %485 = load i128, ptr %x34, align 16
  %486 = load i128, ptr %x30, align 16
  %487 = load i128, ptr %x25, align 16
  %488 = load i128, ptr %x19, align 16
  %489 = load i128, ptr %x6, align 16
  %490 = load i128, ptr %x5, align 16
  %491 = load i128, ptr %x3, align 16
  %add569 = add i128 %490, %491
  %add570 = add i128 %489, %add569
  %add571 = add i128 %488, %add570
  %add572 = add i128 %487, %add571
  %add573 = add i128 %486, %add572
  %add574 = add i128 %485, %add573
  %add575 = add i128 %484, %add574
  %add576 = add i128 %483, %add575
  %add577 = add i128 %482, %add576
  %add578 = add i128 %481, %add577
  store i128 %add578, ptr %x108, align 16
  %492 = load i64, ptr %x100, align 8
  %conv579 = zext i64 %492 to i128
  %493 = load i128, ptr %x105, align 16
  %add580 = add i128 %conv579, %493
  store i128 %add580, ptr %x109, align 16
  %494 = load i128, ptr %x102, align 16
  %shr581 = lshr i128 %494, 56
  %conv582 = trunc i128 %shr581 to i64
  store i64 %conv582, ptr %x110, align 8
  %495 = load i128, ptr %x102, align 16
  %and583 = and i128 %495, 72057594037927935
  %conv584 = trunc i128 %and583 to i64
  store i64 %conv584, ptr %x111, align 8
  %496 = load i128, ptr %x109, align 16
  %497 = load i64, ptr %x110, align 8
  %conv585 = zext i64 %497 to i128
  %add586 = add i128 %496, %conv585
  store i128 %add586, ptr %x112, align 16
  %498 = load i128, ptr %x112, align 16
  %shr587 = lshr i128 %498, 56
  %conv588 = trunc i128 %shr587 to i64
  store i64 %conv588, ptr %x113, align 8
  %499 = load i128, ptr %x112, align 16
  %and589 = and i128 %499, 72057594037927935
  %conv590 = trunc i128 %and589 to i64
  store i64 %conv590, ptr %x114, align 8
  %500 = load i128, ptr %x108, align 16
  %501 = load i64, ptr %x110, align 8
  %conv591 = zext i64 %501 to i128
  %add592 = add i128 %500, %conv591
  store i128 %add592, ptr %x115, align 16
  %502 = load i64, ptr %x113, align 8
  %conv593 = zext i64 %502 to i128
  %503 = load i128, ptr %x104, align 16
  %add594 = add i128 %conv593, %503
  store i128 %add594, ptr %x116, align 16
  %504 = load i128, ptr %x115, align 16
  %shr595 = lshr i128 %504, 56
  %conv596 = trunc i128 %shr595 to i64
  store i64 %conv596, ptr %x117, align 8
  %505 = load i128, ptr %x115, align 16
  %and597 = and i128 %505, 72057594037927935
  %conv598 = trunc i128 %and597 to i64
  store i64 %conv598, ptr %x118, align 8
  %506 = load i64, ptr %x117, align 8
  %conv599 = zext i64 %506 to i128
  %507 = load i128, ptr %x107, align 16
  %add600 = add i128 %conv599, %507
  store i128 %add600, ptr %x119, align 16
  %508 = load i128, ptr %x116, align 16
  %shr601 = lshr i128 %508, 56
  %conv602 = trunc i128 %shr601 to i64
  store i64 %conv602, ptr %x120, align 8
  %509 = load i128, ptr %x116, align 16
  %and603 = and i128 %509, 72057594037927935
  %conv604 = trunc i128 %and603 to i64
  store i64 %conv604, ptr %x121, align 8
  %510 = load i64, ptr %x120, align 8
  %conv605 = zext i64 %510 to i128
  %511 = load i128, ptr %x103, align 16
  %add606 = add i128 %conv605, %511
  store i128 %add606, ptr %x122, align 16
  %512 = load i128, ptr %x119, align 16
  %shr607 = lshr i128 %512, 56
  %conv608 = trunc i128 %shr607 to i64
  store i64 %conv608, ptr %x123, align 8
  %513 = load i128, ptr %x119, align 16
  %and609 = and i128 %513, 72057594037927935
  %conv610 = trunc i128 %and609 to i64
  store i64 %conv610, ptr %x124, align 8
  %514 = load i64, ptr %x123, align 8
  %conv611 = zext i64 %514 to i128
  %515 = load i128, ptr %x106, align 16
  %add612 = add i128 %conv611, %515
  store i128 %add612, ptr %x125, align 16
  %516 = load i128, ptr %x122, align 16
  %shr613 = lshr i128 %516, 56
  %conv614 = trunc i128 %shr613 to i64
  store i64 %conv614, ptr %x126, align 8
  %517 = load i128, ptr %x122, align 16
  %and615 = and i128 %517, 72057594037927935
  %conv616 = trunc i128 %and615 to i64
  store i64 %conv616, ptr %x127, align 8
  %518 = load i64, ptr %x126, align 8
  %519 = load i64, ptr %x111, align 8
  %add617 = add i64 %518, %519
  store i64 %add617, ptr %x128, align 8
  %520 = load i128, ptr %x125, align 16
  %shr618 = lshr i128 %520, 56
  %conv619 = trunc i128 %shr618 to i64
  store i64 %conv619, ptr %x129, align 8
  %521 = load i128, ptr %x125, align 16
  %and620 = and i128 %521, 72057594037927935
  %conv621 = trunc i128 %and620 to i64
  store i64 %conv621, ptr %x130, align 8
  %522 = load i64, ptr %x129, align 8
  %523 = load i64, ptr %x101, align 8
  %add622 = add i64 %522, %523
  store i64 %add622, ptr %x131, align 8
  %524 = load i64, ptr %x128, align 8
  %shr623 = lshr i64 %524, 56
  store i64 %shr623, ptr %x132, align 8
  %525 = load i64, ptr %x128, align 8
  %and624 = and i64 %525, 72057594037927935
  store i64 %and624, ptr %x133, align 8
  %526 = load i64, ptr %x131, align 8
  %shr625 = lshr i64 %526, 56
  store i64 %shr625, ptr %x134, align 8
  %527 = load i64, ptr %x131, align 8
  %and626 = and i64 %527, 72057594037927935
  store i64 %and626, ptr %x135, align 8
  %528 = load i64, ptr %x114, align 8
  %529 = load i64, ptr %x132, align 8
  %add627 = add i64 %528, %529
  store i64 %add627, ptr %x136, align 8
  %530 = load i64, ptr %x118, align 8
  %531 = load i64, ptr %x132, align 8
  %add628 = add i64 %530, %531
  store i64 %add628, ptr %x137, align 8
  %532 = load i64, ptr %x134, align 8
  %533 = load i64, ptr %x136, align 8
  %add629 = add i64 %532, %533
  store i64 %add629, ptr %x138, align 8
  %534 = load i64, ptr %x138, align 8
  %shr630 = lshr i64 %534, 56
  %conv631 = trunc i64 %shr630 to i8
  store i8 %conv631, ptr %x139, align 1
  %535 = load i64, ptr %x138, align 8
  %and632 = and i64 %535, 72057594037927935
  store i64 %and632, ptr %x140, align 8
  %536 = load i8, ptr %x139, align 1
  %conv633 = zext i8 %536 to i64
  %537 = load i64, ptr %x121, align 8
  %add634 = add i64 %conv633, %537
  store i64 %add634, ptr %x141, align 8
  %538 = load i64, ptr %x137, align 8
  %shr635 = lshr i64 %538, 56
  %conv636 = trunc i64 %shr635 to i8
  store i8 %conv636, ptr %x142, align 1
  %539 = load i64, ptr %x137, align 8
  %and637 = and i64 %539, 72057594037927935
  store i64 %and637, ptr %x143, align 8
  %540 = load i8, ptr %x142, align 1
  %conv638 = zext i8 %540 to i64
  %541 = load i64, ptr %x124, align 8
  %add639 = add i64 %conv638, %541
  store i64 %add639, ptr %x144, align 8
  %542 = load i64, ptr %x143, align 8
  %543 = load ptr, ptr %out1.addr, align 8
  %arrayidx640 = getelementptr inbounds i64, ptr %543, i64 0
  store i64 %542, ptr %arrayidx640, align 8
  %544 = load i64, ptr %x144, align 8
  %545 = load ptr, ptr %out1.addr, align 8
  %arrayidx641 = getelementptr inbounds i64, ptr %545, i64 1
  store i64 %544, ptr %arrayidx641, align 8
  %546 = load i64, ptr %x130, align 8
  %547 = load ptr, ptr %out1.addr, align 8
  %arrayidx642 = getelementptr inbounds i64, ptr %547, i64 2
  store i64 %546, ptr %arrayidx642, align 8
  %548 = load i64, ptr %x135, align 8
  %549 = load ptr, ptr %out1.addr, align 8
  %arrayidx643 = getelementptr inbounds i64, ptr %549, i64 3
  store i64 %548, ptr %arrayidx643, align 8
  %550 = load i64, ptr %x140, align 8
  %551 = load ptr, ptr %out1.addr, align 8
  %arrayidx644 = getelementptr inbounds i64, ptr %551, i64 4
  store i64 %550, ptr %arrayidx644, align 8
  %552 = load i64, ptr %x141, align 8
  %553 = load ptr, ptr %out1.addr, align 8
  %arrayidx645 = getelementptr inbounds i64, ptr %553, i64 5
  store i64 %552, ptr %arrayidx645, align 8
  %554 = load i64, ptr %x127, align 8
  %555 = load ptr, ptr %out1.addr, align 8
  %arrayidx646 = getelementptr inbounds i64, ptr %555, i64 6
  store i64 %554, ptr %arrayidx646, align 8
  %556 = load i64, ptr %x133, align 8
  %557 = load ptr, ptr %out1.addr, align 8
  %arrayidx647 = getelementptr inbounds i64, ptr %557, i64 7
  store i64 %556, ptr %arrayidx647, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x79 = alloca i64, align 8
  %x80 = alloca i64, align 8
  %x81 = alloca i128, align 16
  %x82 = alloca i128, align 16
  %x83 = alloca i128, align 16
  %x84 = alloca i128, align 16
  %x85 = alloca i128, align 16
  %x86 = alloca i128, align 16
  %x87 = alloca i128, align 16
  %x88 = alloca i128, align 16
  %x89 = alloca i64, align 8
  %x90 = alloca i64, align 8
  %x91 = alloca i128, align 16
  %x92 = alloca i64, align 8
  %x93 = alloca i64, align 8
  %x94 = alloca i128, align 16
  %x95 = alloca i128, align 16
  %x96 = alloca i64, align 8
  %x97 = alloca i64, align 8
  %x98 = alloca i128, align 16
  %x99 = alloca i64, align 8
  %x100 = alloca i64, align 8
  %x101 = alloca i128, align 16
  %x102 = alloca i64, align 8
  %x103 = alloca i64, align 8
  %x104 = alloca i128, align 16
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
  %x117 = alloca i64, align 8
  %x118 = alloca i8, align 1
  %x119 = alloca i64, align 8
  %x120 = alloca i64, align 8
  %x121 = alloca i8, align 1
  %x122 = alloca i64, align 8
  %x123 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 7
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 7
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %mul = mul i64 %4, 2
  store i64 %mul, ptr %x3, align 8
  %5 = load i64, ptr %x2, align 8
  %mul2 = mul i64 %5, 2
  store i64 %mul2, ptr %x4, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 7
  %7 = load i64, ptr %arrayidx3, align 8
  %mul4 = mul i64 %7, 2
  store i64 %mul4, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %8, i64 6
  %9 = load i64, ptr %arrayidx5, align 8
  store i64 %9, ptr %x6, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %10, i64 6
  %11 = load i64, ptr %arrayidx6, align 8
  store i64 %11, ptr %x7, align 8
  %12 = load i64, ptr %x6, align 8
  %mul7 = mul i64 %12, 2
  store i64 %mul7, ptr %x8, align 8
  %13 = load i64, ptr %x7, align 8
  %mul8 = mul i64 %13, 2
  store i64 %mul8, ptr %x9, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 6
  %15 = load i64, ptr %arrayidx9, align 8
  %mul10 = mul i64 %15, 2
  store i64 %mul10, ptr %x10, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %16, i64 5
  %17 = load i64, ptr %arrayidx11, align 8
  store i64 %17, ptr %x11, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %18, i64 5
  %19 = load i64, ptr %arrayidx12, align 8
  store i64 %19, ptr %x12, align 8
  %20 = load i64, ptr %x11, align 8
  %mul13 = mul i64 %20, 2
  store i64 %mul13, ptr %x13, align 8
  %21 = load i64, ptr %x12, align 8
  %mul14 = mul i64 %21, 2
  store i64 %mul14, ptr %x14, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %22, i64 5
  %23 = load i64, ptr %arrayidx15, align 8
  %mul16 = mul i64 %23, 2
  store i64 %mul16, ptr %x15, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %24, i64 4
  %25 = load i64, ptr %arrayidx17, align 8
  store i64 %25, ptr %x16, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %26, i64 4
  %27 = load i64, ptr %arrayidx18, align 8
  store i64 %27, ptr %x17, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %28, i64 4
  %29 = load i64, ptr %arrayidx19, align 8
  %mul20 = mul i64 %29, 2
  store i64 %mul20, ptr %x18, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %30, i64 3
  %31 = load i64, ptr %arrayidx21, align 8
  %mul22 = mul i64 %31, 2
  store i64 %mul22, ptr %x19, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %32, i64 2
  %33 = load i64, ptr %arrayidx23, align 8
  %mul24 = mul i64 %33, 2
  store i64 %mul24, ptr %x20, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %34, i64 1
  %35 = load i64, ptr %arrayidx25, align 8
  %mul26 = mul i64 %35, 2
  store i64 %mul26, ptr %x21, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx27, align 8
  %conv = zext i64 %37 to i128
  %38 = load i64, ptr %x1, align 8
  %conv28 = zext i64 %38 to i128
  %mul29 = mul i128 %conv, %conv28
  store i128 %mul29, ptr %x22, align 16
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %39, i64 6
  %40 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %40 to i128
  %41 = load i64, ptr %x3, align 8
  %conv32 = zext i64 %41 to i128
  %mul33 = mul i128 %conv31, %conv32
  store i128 %mul33, ptr %x23, align 16
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %42, i64 6
  %43 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %43 to i128
  %44 = load i64, ptr %x6, align 8
  %conv36 = zext i64 %44 to i128
  %mul37 = mul i128 %conv35, %conv36
  store i128 %mul37, ptr %x24, align 16
  %45 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, ptr %45, i64 5
  %46 = load i64, ptr %arrayidx38, align 8
  %conv39 = zext i64 %46 to i128
  %47 = load i64, ptr %x3, align 8
  %conv40 = zext i64 %47 to i128
  %mul41 = mul i128 %conv39, %conv40
  store i128 %mul41, ptr %x25, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %48, i64 7
  %49 = load i64, ptr %arrayidx42, align 8
  %conv43 = zext i64 %49 to i128
  %50 = load i64, ptr %x1, align 8
  %conv44 = zext i64 %50 to i128
  %mul45 = mul i128 %conv43, %conv44
  store i128 %mul45, ptr %x26, align 16
  %51 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %51, i64 6
  %52 = load i64, ptr %arrayidx46, align 8
  %conv47 = zext i64 %52 to i128
  %53 = load i64, ptr %x3, align 8
  %conv48 = zext i64 %53 to i128
  %mul49 = mul i128 %conv47, %conv48
  store i128 %mul49, ptr %x27, align 16
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %54, i64 6
  %55 = load i64, ptr %arrayidx50, align 8
  %conv51 = zext i64 %55 to i128
  %56 = load i64, ptr %x6, align 8
  %conv52 = zext i64 %56 to i128
  %mul53 = mul i128 %conv51, %conv52
  store i128 %mul53, ptr %x28, align 16
  %57 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %57, i64 5
  %58 = load i64, ptr %arrayidx54, align 8
  %conv55 = zext i64 %58 to i128
  %59 = load i64, ptr %x3, align 8
  %conv56 = zext i64 %59 to i128
  %mul57 = mul i128 %conv55, %conv56
  store i128 %mul57, ptr %x29, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %60, i64 7
  %61 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %61 to i128
  %62 = load i64, ptr %x2, align 8
  %conv60 = zext i64 %62 to i128
  %mul61 = mul i128 %conv59, %conv60
  store i128 %mul61, ptr %x30, align 16
  %63 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %63, i64 6
  %64 = load i64, ptr %arrayidx62, align 8
  %conv63 = zext i64 %64 to i128
  %65 = load i64, ptr %x4, align 8
  %conv64 = zext i64 %65 to i128
  %mul65 = mul i128 %conv63, %conv64
  store i128 %mul65, ptr %x31, align 16
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %66, i64 6
  %67 = load i64, ptr %arrayidx66, align 8
  %conv67 = zext i64 %67 to i128
  %68 = load i64, ptr %x7, align 8
  %conv68 = zext i64 %68 to i128
  %mul69 = mul i128 %conv67, %conv68
  store i128 %mul69, ptr %x32, align 16
  %69 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %69, i64 5
  %70 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %70 to i128
  %71 = load i64, ptr %x4, align 8
  %conv72 = zext i64 %71 to i128
  %mul73 = mul i128 %conv71, %conv72
  store i128 %mul73, ptr %x33, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i64, ptr %72, i64 5
  %73 = load i64, ptr %arrayidx74, align 8
  %conv75 = zext i64 %73 to i128
  %74 = load i64, ptr %x9, align 8
  %conv76 = zext i64 %74 to i128
  %mul77 = mul i128 %conv75, %conv76
  store i128 %mul77, ptr %x34, align 16
  %75 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %75, i64 5
  %76 = load i64, ptr %arrayidx78, align 8
  %conv79 = zext i64 %76 to i128
  %77 = load i64, ptr %x8, align 8
  %conv80 = zext i64 %77 to i128
  %mul81 = mul i128 %conv79, %conv80
  store i128 %mul81, ptr %x35, align 16
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %78, i64 5
  %79 = load i64, ptr %arrayidx82, align 8
  %conv83 = zext i64 %79 to i128
  %80 = load i64, ptr %x12, align 8
  %conv84 = zext i64 %80 to i128
  %mul85 = mul i128 %conv83, %conv84
  store i128 %mul85, ptr %x36, align 16
  %81 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i64, ptr %81, i64 5
  %82 = load i64, ptr %arrayidx86, align 8
  %conv87 = zext i64 %82 to i128
  %83 = load i64, ptr %x11, align 8
  %conv88 = zext i64 %83 to i128
  %mul89 = mul i128 %conv87, %conv88
  store i128 %mul89, ptr %x37, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %84, i64 4
  %85 = load i64, ptr %arrayidx90, align 8
  %conv91 = zext i64 %85 to i128
  %86 = load i64, ptr %x4, align 8
  %conv92 = zext i64 %86 to i128
  %mul93 = mul i128 %conv91, %conv92
  store i128 %mul93, ptr %x38, align 16
  %87 = load ptr, ptr %arg1.addr, align 8
  %arrayidx94 = getelementptr inbounds i64, ptr %87, i64 4
  %88 = load i64, ptr %arrayidx94, align 8
  %conv95 = zext i64 %88 to i128
  %89 = load i64, ptr %x3, align 8
  %conv96 = zext i64 %89 to i128
  %mul97 = mul i128 %conv95, %conv96
  store i128 %mul97, ptr %x39, align 16
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %90, i64 4
  %91 = load i64, ptr %arrayidx98, align 8
  %conv99 = zext i64 %91 to i128
  %92 = load i64, ptr %x9, align 8
  %conv100 = zext i64 %92 to i128
  %mul101 = mul i128 %conv99, %conv100
  store i128 %mul101, ptr %x40, align 16
  %93 = load ptr, ptr %arg1.addr, align 8
  %arrayidx102 = getelementptr inbounds i64, ptr %93, i64 4
  %94 = load i64, ptr %arrayidx102, align 8
  %conv103 = zext i64 %94 to i128
  %95 = load i64, ptr %x8, align 8
  %conv104 = zext i64 %95 to i128
  %mul105 = mul i128 %conv103, %conv104
  store i128 %mul105, ptr %x41, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx106 = getelementptr inbounds i64, ptr %96, i64 4
  %97 = load i64, ptr %arrayidx106, align 8
  %conv107 = zext i64 %97 to i128
  %98 = load i64, ptr %x14, align 8
  %conv108 = zext i64 %98 to i128
  %mul109 = mul i128 %conv107, %conv108
  store i128 %mul109, ptr %x42, align 16
  %99 = load ptr, ptr %arg1.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %99, i64 4
  %100 = load i64, ptr %arrayidx110, align 8
  %conv111 = zext i64 %100 to i128
  %101 = load i64, ptr %x13, align 8
  %conv112 = zext i64 %101 to i128
  %mul113 = mul i128 %conv111, %conv112
  store i128 %mul113, ptr %x43, align 16
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx114 = getelementptr inbounds i64, ptr %102, i64 4
  %103 = load i64, ptr %arrayidx114, align 8
  %conv115 = zext i64 %103 to i128
  %104 = load i64, ptr %x17, align 8
  %conv116 = zext i64 %104 to i128
  %mul117 = mul i128 %conv115, %conv116
  store i128 %mul117, ptr %x44, align 16
  %105 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %105, i64 4
  %106 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %106 to i128
  %107 = load i64, ptr %x16, align 8
  %conv120 = zext i64 %107 to i128
  %mul121 = mul i128 %conv119, %conv120
  store i128 %mul121, ptr %x45, align 16
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %108, i64 3
  %109 = load i64, ptr %arrayidx122, align 8
  %conv123 = zext i64 %109 to i128
  %110 = load i64, ptr %x4, align 8
  %conv124 = zext i64 %110 to i128
  %mul125 = mul i128 %conv123, %conv124
  store i128 %mul125, ptr %x46, align 16
  %111 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %111, i64 3
  %112 = load i64, ptr %arrayidx126, align 8
  %conv127 = zext i64 %112 to i128
  %113 = load i64, ptr %x3, align 8
  %conv128 = zext i64 %113 to i128
  %mul129 = mul i128 %conv127, %conv128
  store i128 %mul129, ptr %x47, align 16
  %114 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %114, i64 3
  %115 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %115 to i128
  %116 = load i64, ptr %x9, align 8
  %conv132 = zext i64 %116 to i128
  %mul133 = mul i128 %conv131, %conv132
  store i128 %mul133, ptr %x48, align 16
  %117 = load ptr, ptr %arg1.addr, align 8
  %arrayidx134 = getelementptr inbounds i64, ptr %117, i64 3
  %118 = load i64, ptr %arrayidx134, align 8
  %conv135 = zext i64 %118 to i128
  %119 = load i64, ptr %x8, align 8
  %conv136 = zext i64 %119 to i128
  %mul137 = mul i128 %conv135, %conv136
  store i128 %mul137, ptr %x49, align 16
  %120 = load ptr, ptr %arg1.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %120, i64 3
  %121 = load i64, ptr %arrayidx138, align 8
  %conv139 = zext i64 %121 to i128
  %122 = load i64, ptr %x14, align 8
  %conv140 = zext i64 %122 to i128
  %mul141 = mul i128 %conv139, %conv140
  store i128 %mul141, ptr %x50, align 16
  %123 = load ptr, ptr %arg1.addr, align 8
  %arrayidx142 = getelementptr inbounds i64, ptr %123, i64 3
  %124 = load i64, ptr %arrayidx142, align 8
  %conv143 = zext i64 %124 to i128
  %125 = load i64, ptr %x13, align 8
  %conv144 = zext i64 %125 to i128
  %mul145 = mul i128 %conv143, %conv144
  store i128 %mul145, ptr %x51, align 16
  %126 = load ptr, ptr %arg1.addr, align 8
  %arrayidx146 = getelementptr inbounds i64, ptr %126, i64 3
  %127 = load i64, ptr %arrayidx146, align 8
  %conv147 = zext i64 %127 to i128
  %128 = load i64, ptr %x18, align 8
  %conv148 = zext i64 %128 to i128
  %mul149 = mul i128 %conv147, %conv148
  store i128 %mul149, ptr %x52, align 16
  %129 = load ptr, ptr %arg1.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %129, i64 3
  %130 = load i64, ptr %arrayidx150, align 8
  %conv151 = zext i64 %130 to i128
  %131 = load ptr, ptr %arg1.addr, align 8
  %arrayidx152 = getelementptr inbounds i64, ptr %131, i64 3
  %132 = load i64, ptr %arrayidx152, align 8
  %conv153 = zext i64 %132 to i128
  %mul154 = mul i128 %conv151, %conv153
  store i128 %mul154, ptr %x53, align 16
  %133 = load ptr, ptr %arg1.addr, align 8
  %arrayidx155 = getelementptr inbounds i64, ptr %133, i64 2
  %134 = load i64, ptr %arrayidx155, align 8
  %conv156 = zext i64 %134 to i128
  %135 = load i64, ptr %x4, align 8
  %conv157 = zext i64 %135 to i128
  %mul158 = mul i128 %conv156, %conv157
  store i128 %mul158, ptr %x54, align 16
  %136 = load ptr, ptr %arg1.addr, align 8
  %arrayidx159 = getelementptr inbounds i64, ptr %136, i64 2
  %137 = load i64, ptr %arrayidx159, align 8
  %conv160 = zext i64 %137 to i128
  %138 = load i64, ptr %x3, align 8
  %conv161 = zext i64 %138 to i128
  %mul162 = mul i128 %conv160, %conv161
  store i128 %mul162, ptr %x55, align 16
  %139 = load ptr, ptr %arg1.addr, align 8
  %arrayidx163 = getelementptr inbounds i64, ptr %139, i64 2
  %140 = load i64, ptr %arrayidx163, align 8
  %conv164 = zext i64 %140 to i128
  %141 = load i64, ptr %x9, align 8
  %conv165 = zext i64 %141 to i128
  %mul166 = mul i128 %conv164, %conv165
  store i128 %mul166, ptr %x56, align 16
  %142 = load ptr, ptr %arg1.addr, align 8
  %arrayidx167 = getelementptr inbounds i64, ptr %142, i64 2
  %143 = load i64, ptr %arrayidx167, align 8
  %conv168 = zext i64 %143 to i128
  %144 = load i64, ptr %x8, align 8
  %conv169 = zext i64 %144 to i128
  %mul170 = mul i128 %conv168, %conv169
  store i128 %mul170, ptr %x57, align 16
  %145 = load ptr, ptr %arg1.addr, align 8
  %arrayidx171 = getelementptr inbounds i64, ptr %145, i64 2
  %146 = load i64, ptr %arrayidx171, align 8
  %conv172 = zext i64 %146 to i128
  %147 = load i64, ptr %x15, align 8
  %conv173 = zext i64 %147 to i128
  %mul174 = mul i128 %conv172, %conv173
  store i128 %mul174, ptr %x58, align 16
  %148 = load ptr, ptr %arg1.addr, align 8
  %arrayidx175 = getelementptr inbounds i64, ptr %148, i64 2
  %149 = load i64, ptr %arrayidx175, align 8
  %conv176 = zext i64 %149 to i128
  %150 = load i64, ptr %x18, align 8
  %conv177 = zext i64 %150 to i128
  %mul178 = mul i128 %conv176, %conv177
  store i128 %mul178, ptr %x59, align 16
  %151 = load ptr, ptr %arg1.addr, align 8
  %arrayidx179 = getelementptr inbounds i64, ptr %151, i64 2
  %152 = load i64, ptr %arrayidx179, align 8
  %conv180 = zext i64 %152 to i128
  %153 = load i64, ptr %x19, align 8
  %conv181 = zext i64 %153 to i128
  %mul182 = mul i128 %conv180, %conv181
  store i128 %mul182, ptr %x60, align 16
  %154 = load ptr, ptr %arg1.addr, align 8
  %arrayidx183 = getelementptr inbounds i64, ptr %154, i64 2
  %155 = load i64, ptr %arrayidx183, align 8
  %conv184 = zext i64 %155 to i128
  %156 = load ptr, ptr %arg1.addr, align 8
  %arrayidx185 = getelementptr inbounds i64, ptr %156, i64 2
  %157 = load i64, ptr %arrayidx185, align 8
  %conv186 = zext i64 %157 to i128
  %mul187 = mul i128 %conv184, %conv186
  store i128 %mul187, ptr %x61, align 16
  %158 = load ptr, ptr %arg1.addr, align 8
  %arrayidx188 = getelementptr inbounds i64, ptr %158, i64 1
  %159 = load i64, ptr %arrayidx188, align 8
  %conv189 = zext i64 %159 to i128
  %160 = load i64, ptr %x4, align 8
  %conv190 = zext i64 %160 to i128
  %mul191 = mul i128 %conv189, %conv190
  store i128 %mul191, ptr %x62, align 16
  %161 = load ptr, ptr %arg1.addr, align 8
  %arrayidx192 = getelementptr inbounds i64, ptr %161, i64 1
  %162 = load i64, ptr %arrayidx192, align 8
  %conv193 = zext i64 %162 to i128
  %163 = load i64, ptr %x3, align 8
  %conv194 = zext i64 %163 to i128
  %mul195 = mul i128 %conv193, %conv194
  store i128 %mul195, ptr %x63, align 16
  %164 = load ptr, ptr %arg1.addr, align 8
  %arrayidx196 = getelementptr inbounds i64, ptr %164, i64 1
  %165 = load i64, ptr %arrayidx196, align 8
  %conv197 = zext i64 %165 to i128
  %166 = load i64, ptr %x10, align 8
  %conv198 = zext i64 %166 to i128
  %mul199 = mul i128 %conv197, %conv198
  store i128 %mul199, ptr %x64, align 16
  %167 = load ptr, ptr %arg1.addr, align 8
  %arrayidx200 = getelementptr inbounds i64, ptr %167, i64 1
  %168 = load i64, ptr %arrayidx200, align 8
  %conv201 = zext i64 %168 to i128
  %169 = load i64, ptr %x15, align 8
  %conv202 = zext i64 %169 to i128
  %mul203 = mul i128 %conv201, %conv202
  store i128 %mul203, ptr %x65, align 16
  %170 = load ptr, ptr %arg1.addr, align 8
  %arrayidx204 = getelementptr inbounds i64, ptr %170, i64 1
  %171 = load i64, ptr %arrayidx204, align 8
  %conv205 = zext i64 %171 to i128
  %172 = load i64, ptr %x18, align 8
  %conv206 = zext i64 %172 to i128
  %mul207 = mul i128 %conv205, %conv206
  store i128 %mul207, ptr %x66, align 16
  %173 = load ptr, ptr %arg1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %173, i64 1
  %174 = load i64, ptr %arrayidx208, align 8
  %conv209 = zext i64 %174 to i128
  %175 = load i64, ptr %x19, align 8
  %conv210 = zext i64 %175 to i128
  %mul211 = mul i128 %conv209, %conv210
  store i128 %mul211, ptr %x67, align 16
  %176 = load ptr, ptr %arg1.addr, align 8
  %arrayidx212 = getelementptr inbounds i64, ptr %176, i64 1
  %177 = load i64, ptr %arrayidx212, align 8
  %conv213 = zext i64 %177 to i128
  %178 = load i64, ptr %x20, align 8
  %conv214 = zext i64 %178 to i128
  %mul215 = mul i128 %conv213, %conv214
  store i128 %mul215, ptr %x68, align 16
  %179 = load ptr, ptr %arg1.addr, align 8
  %arrayidx216 = getelementptr inbounds i64, ptr %179, i64 1
  %180 = load i64, ptr %arrayidx216, align 8
  %conv217 = zext i64 %180 to i128
  %181 = load ptr, ptr %arg1.addr, align 8
  %arrayidx218 = getelementptr inbounds i64, ptr %181, i64 1
  %182 = load i64, ptr %arrayidx218, align 8
  %conv219 = zext i64 %182 to i128
  %mul220 = mul i128 %conv217, %conv219
  store i128 %mul220, ptr %x69, align 16
  %183 = load ptr, ptr %arg1.addr, align 8
  %arrayidx221 = getelementptr inbounds i64, ptr %183, i64 0
  %184 = load i64, ptr %arrayidx221, align 8
  %conv222 = zext i64 %184 to i128
  %185 = load i64, ptr %x5, align 8
  %conv223 = zext i64 %185 to i128
  %mul224 = mul i128 %conv222, %conv223
  store i128 %mul224, ptr %x70, align 16
  %186 = load ptr, ptr %arg1.addr, align 8
  %arrayidx225 = getelementptr inbounds i64, ptr %186, i64 0
  %187 = load i64, ptr %arrayidx225, align 8
  %conv226 = zext i64 %187 to i128
  %188 = load i64, ptr %x10, align 8
  %conv227 = zext i64 %188 to i128
  %mul228 = mul i128 %conv226, %conv227
  store i128 %mul228, ptr %x71, align 16
  %189 = load ptr, ptr %arg1.addr, align 8
  %arrayidx229 = getelementptr inbounds i64, ptr %189, i64 0
  %190 = load i64, ptr %arrayidx229, align 8
  %conv230 = zext i64 %190 to i128
  %191 = load i64, ptr %x15, align 8
  %conv231 = zext i64 %191 to i128
  %mul232 = mul i128 %conv230, %conv231
  store i128 %mul232, ptr %x72, align 16
  %192 = load ptr, ptr %arg1.addr, align 8
  %arrayidx233 = getelementptr inbounds i64, ptr %192, i64 0
  %193 = load i64, ptr %arrayidx233, align 8
  %conv234 = zext i64 %193 to i128
  %194 = load i64, ptr %x18, align 8
  %conv235 = zext i64 %194 to i128
  %mul236 = mul i128 %conv234, %conv235
  store i128 %mul236, ptr %x73, align 16
  %195 = load ptr, ptr %arg1.addr, align 8
  %arrayidx237 = getelementptr inbounds i64, ptr %195, i64 0
  %196 = load i64, ptr %arrayidx237, align 8
  %conv238 = zext i64 %196 to i128
  %197 = load i64, ptr %x19, align 8
  %conv239 = zext i64 %197 to i128
  %mul240 = mul i128 %conv238, %conv239
  store i128 %mul240, ptr %x74, align 16
  %198 = load ptr, ptr %arg1.addr, align 8
  %arrayidx241 = getelementptr inbounds i64, ptr %198, i64 0
  %199 = load i64, ptr %arrayidx241, align 8
  %conv242 = zext i64 %199 to i128
  %200 = load i64, ptr %x20, align 8
  %conv243 = zext i64 %200 to i128
  %mul244 = mul i128 %conv242, %conv243
  store i128 %mul244, ptr %x75, align 16
  %201 = load ptr, ptr %arg1.addr, align 8
  %arrayidx245 = getelementptr inbounds i64, ptr %201, i64 0
  %202 = load i64, ptr %arrayidx245, align 8
  %conv246 = zext i64 %202 to i128
  %203 = load i64, ptr %x21, align 8
  %conv247 = zext i64 %203 to i128
  %mul248 = mul i128 %conv246, %conv247
  store i128 %mul248, ptr %x76, align 16
  %204 = load ptr, ptr %arg1.addr, align 8
  %arrayidx249 = getelementptr inbounds i64, ptr %204, i64 0
  %205 = load i64, ptr %arrayidx249, align 8
  %conv250 = zext i64 %205 to i128
  %206 = load ptr, ptr %arg1.addr, align 8
  %arrayidx251 = getelementptr inbounds i64, ptr %206, i64 0
  %207 = load i64, ptr %arrayidx251, align 8
  %conv252 = zext i64 %207 to i128
  %mul253 = mul i128 %conv250, %conv252
  store i128 %mul253, ptr %x77, align 16
  %208 = load i128, ptr %x74, align 16
  %209 = load i128, ptr %x68, align 16
  %210 = load i128, ptr %x38, align 16
  %211 = load i128, ptr %x34, align 16
  %add = add i128 %210, %211
  %add254 = add i128 %209, %add
  %add255 = add i128 %208, %add254
  store i128 %add255, ptr %x78, align 16
  %212 = load i128, ptr %x78, align 16
  %shr = lshr i128 %212, 56
  %conv256 = trunc i128 %shr to i64
  store i64 %conv256, ptr %x79, align 8
  %213 = load i128, ptr %x78, align 16
  %and = and i128 %213, 72057594037927935
  %conv257 = trunc i128 %and to i64
  store i64 %conv257, ptr %x80, align 8
  %214 = load i128, ptr %x70, align 16
  %215 = load i128, ptr %x64, align 16
  %216 = load i128, ptr %x58, align 16
  %217 = load i128, ptr %x52, align 16
  %218 = load i128, ptr %x39, align 16
  %219 = load i128, ptr %x35, align 16
  %add258 = add i128 %218, %219
  %add259 = add i128 %217, %add258
  %add260 = add i128 %216, %add259
  %add261 = add i128 %215, %add260
  %add262 = add i128 %214, %add261
  store i128 %add262, ptr %x81, align 16
  %220 = load i128, ptr %x71, align 16
  %221 = load i128, ptr %x65, align 16
  %222 = load i128, ptr %x59, align 16
  %223 = load i128, ptr %x53, align 16
  %224 = load i128, ptr %x47, align 16
  %225 = load i128, ptr %x41, align 16
  %226 = load i128, ptr %x37, align 16
  %227 = load i128, ptr %x30, align 16
  %228 = load i128, ptr %x26, align 16
  %add263 = add i128 %227, %228
  %add264 = add i128 %226, %add263
  %add265 = add i128 %225, %add264
  %add266 = add i128 %224, %add265
  %add267 = add i128 %223, %add266
  %add268 = add i128 %222, %add267
  %add269 = add i128 %221, %add268
  %add270 = add i128 %220, %add269
  store i128 %add270, ptr %x82, align 16
  %229 = load i128, ptr %x72, align 16
  %230 = load i128, ptr %x66, align 16
  %231 = load i128, ptr %x60, align 16
  %232 = load i128, ptr %x55, align 16
  %233 = load i128, ptr %x49, align 16
  %234 = load i128, ptr %x43, align 16
  %235 = load i128, ptr %x31, align 16
  %236 = load i128, ptr %x27, align 16
  %add271 = add i128 %235, %236
  %add272 = add i128 %234, %add271
  %add273 = add i128 %233, %add272
  %add274 = add i128 %232, %add273
  %add275 = add i128 %231, %add274
  %add276 = add i128 %230, %add275
  %add277 = add i128 %229, %add276
  store i128 %add277, ptr %x83, align 16
  %237 = load i128, ptr %x73, align 16
  %238 = load i128, ptr %x67, align 16
  %239 = load i128, ptr %x63, align 16
  %240 = load i128, ptr %x61, align 16
  %241 = load i128, ptr %x57, align 16
  %242 = load i128, ptr %x51, align 16
  %243 = load i128, ptr %x45, align 16
  %244 = load i128, ptr %x33, align 16
  %245 = load i128, ptr %x32, align 16
  %246 = load i128, ptr %x29, align 16
  %247 = load i128, ptr %x28, align 16
  %add278 = add i128 %246, %247
  %add279 = add i128 %245, %add278
  %add280 = add i128 %244, %add279
  %add281 = add i128 %243, %add280
  %add282 = add i128 %242, %add281
  %add283 = add i128 %241, %add282
  %add284 = add i128 %240, %add283
  %add285 = add i128 %239, %add284
  %add286 = add i128 %238, %add285
  %add287 = add i128 %237, %add286
  store i128 %add287, ptr %x84, align 16
  %248 = load i128, ptr %x75, align 16
  %249 = load i128, ptr %x69, align 16
  %250 = load i128, ptr %x46, align 16
  %251 = load i128, ptr %x40, align 16
  %252 = load i128, ptr %x36, align 16
  %253 = load i128, ptr %x22, align 16
  %add288 = add i128 %252, %253
  %add289 = add i128 %251, %add288
  %add290 = add i128 %250, %add289
  %add291 = add i128 %249, %add290
  %add292 = add i128 %248, %add291
  store i128 %add292, ptr %x85, align 16
  %254 = load i128, ptr %x76, align 16
  %255 = load i128, ptr %x54, align 16
  %256 = load i128, ptr %x48, align 16
  %257 = load i128, ptr %x42, align 16
  %258 = load i128, ptr %x23, align 16
  %add293 = add i128 %257, %258
  %add294 = add i128 %256, %add293
  %add295 = add i128 %255, %add294
  %add296 = add i128 %254, %add295
  store i128 %add296, ptr %x86, align 16
  %259 = load i128, ptr %x77, align 16
  %260 = load i128, ptr %x62, align 16
  %261 = load i128, ptr %x56, align 16
  %262 = load i128, ptr %x50, align 16
  %263 = load i128, ptr %x44, align 16
  %264 = load i128, ptr %x25, align 16
  %265 = load i128, ptr %x24, align 16
  %add297 = add i128 %264, %265
  %add298 = add i128 %263, %add297
  %add299 = add i128 %262, %add298
  %add300 = add i128 %261, %add299
  %add301 = add i128 %260, %add300
  %add302 = add i128 %259, %add301
  store i128 %add302, ptr %x87, align 16
  %266 = load i64, ptr %x79, align 8
  %conv303 = zext i64 %266 to i128
  %267 = load i128, ptr %x84, align 16
  %add304 = add i128 %conv303, %267
  store i128 %add304, ptr %x88, align 16
  %268 = load i128, ptr %x81, align 16
  %shr305 = lshr i128 %268, 56
  %conv306 = trunc i128 %shr305 to i64
  store i64 %conv306, ptr %x89, align 8
  %269 = load i128, ptr %x81, align 16
  %and307 = and i128 %269, 72057594037927935
  %conv308 = trunc i128 %and307 to i64
  store i64 %conv308, ptr %x90, align 8
  %270 = load i128, ptr %x88, align 16
  %271 = load i64, ptr %x89, align 8
  %conv309 = zext i64 %271 to i128
  %add310 = add i128 %270, %conv309
  store i128 %add310, ptr %x91, align 16
  %272 = load i128, ptr %x91, align 16
  %shr311 = lshr i128 %272, 56
  %conv312 = trunc i128 %shr311 to i64
  store i64 %conv312, ptr %x92, align 8
  %273 = load i128, ptr %x91, align 16
  %and313 = and i128 %273, 72057594037927935
  %conv314 = trunc i128 %and313 to i64
  store i64 %conv314, ptr %x93, align 8
  %274 = load i128, ptr %x87, align 16
  %275 = load i64, ptr %x89, align 8
  %conv315 = zext i64 %275 to i128
  %add316 = add i128 %274, %conv315
  store i128 %add316, ptr %x94, align 16
  %276 = load i64, ptr %x92, align 8
  %conv317 = zext i64 %276 to i128
  %277 = load i128, ptr %x83, align 16
  %add318 = add i128 %conv317, %277
  store i128 %add318, ptr %x95, align 16
  %278 = load i128, ptr %x94, align 16
  %shr319 = lshr i128 %278, 56
  %conv320 = trunc i128 %shr319 to i64
  store i64 %conv320, ptr %x96, align 8
  %279 = load i128, ptr %x94, align 16
  %and321 = and i128 %279, 72057594037927935
  %conv322 = trunc i128 %and321 to i64
  store i64 %conv322, ptr %x97, align 8
  %280 = load i64, ptr %x96, align 8
  %conv323 = zext i64 %280 to i128
  %281 = load i128, ptr %x86, align 16
  %add324 = add i128 %conv323, %281
  store i128 %add324, ptr %x98, align 16
  %282 = load i128, ptr %x95, align 16
  %shr325 = lshr i128 %282, 56
  %conv326 = trunc i128 %shr325 to i64
  store i64 %conv326, ptr %x99, align 8
  %283 = load i128, ptr %x95, align 16
  %and327 = and i128 %283, 72057594037927935
  %conv328 = trunc i128 %and327 to i64
  store i64 %conv328, ptr %x100, align 8
  %284 = load i64, ptr %x99, align 8
  %conv329 = zext i64 %284 to i128
  %285 = load i128, ptr %x82, align 16
  %add330 = add i128 %conv329, %285
  store i128 %add330, ptr %x101, align 16
  %286 = load i128, ptr %x98, align 16
  %shr331 = lshr i128 %286, 56
  %conv332 = trunc i128 %shr331 to i64
  store i64 %conv332, ptr %x102, align 8
  %287 = load i128, ptr %x98, align 16
  %and333 = and i128 %287, 72057594037927935
  %conv334 = trunc i128 %and333 to i64
  store i64 %conv334, ptr %x103, align 8
  %288 = load i64, ptr %x102, align 8
  %conv335 = zext i64 %288 to i128
  %289 = load i128, ptr %x85, align 16
  %add336 = add i128 %conv335, %289
  store i128 %add336, ptr %x104, align 16
  %290 = load i128, ptr %x101, align 16
  %shr337 = lshr i128 %290, 56
  %conv338 = trunc i128 %shr337 to i64
  store i64 %conv338, ptr %x105, align 8
  %291 = load i128, ptr %x101, align 16
  %and339 = and i128 %291, 72057594037927935
  %conv340 = trunc i128 %and339 to i64
  store i64 %conv340, ptr %x106, align 8
  %292 = load i64, ptr %x105, align 8
  %293 = load i64, ptr %x90, align 8
  %add341 = add i64 %292, %293
  store i64 %add341, ptr %x107, align 8
  %294 = load i128, ptr %x104, align 16
  %shr342 = lshr i128 %294, 56
  %conv343 = trunc i128 %shr342 to i64
  store i64 %conv343, ptr %x108, align 8
  %295 = load i128, ptr %x104, align 16
  %and344 = and i128 %295, 72057594037927935
  %conv345 = trunc i128 %and344 to i64
  store i64 %conv345, ptr %x109, align 8
  %296 = load i64, ptr %x108, align 8
  %297 = load i64, ptr %x80, align 8
  %add346 = add i64 %296, %297
  store i64 %add346, ptr %x110, align 8
  %298 = load i64, ptr %x107, align 8
  %shr347 = lshr i64 %298, 56
  store i64 %shr347, ptr %x111, align 8
  %299 = load i64, ptr %x107, align 8
  %and348 = and i64 %299, 72057594037927935
  store i64 %and348, ptr %x112, align 8
  %300 = load i64, ptr %x110, align 8
  %shr349 = lshr i64 %300, 56
  store i64 %shr349, ptr %x113, align 8
  %301 = load i64, ptr %x110, align 8
  %and350 = and i64 %301, 72057594037927935
  store i64 %and350, ptr %x114, align 8
  %302 = load i64, ptr %x93, align 8
  %303 = load i64, ptr %x111, align 8
  %add351 = add i64 %302, %303
  store i64 %add351, ptr %x115, align 8
  %304 = load i64, ptr %x97, align 8
  %305 = load i64, ptr %x111, align 8
  %add352 = add i64 %304, %305
  store i64 %add352, ptr %x116, align 8
  %306 = load i64, ptr %x113, align 8
  %307 = load i64, ptr %x115, align 8
  %add353 = add i64 %306, %307
  store i64 %add353, ptr %x117, align 8
  %308 = load i64, ptr %x117, align 8
  %shr354 = lshr i64 %308, 56
  %conv355 = trunc i64 %shr354 to i8
  store i8 %conv355, ptr %x118, align 1
  %309 = load i64, ptr %x117, align 8
  %and356 = and i64 %309, 72057594037927935
  store i64 %and356, ptr %x119, align 8
  %310 = load i8, ptr %x118, align 1
  %conv357 = zext i8 %310 to i64
  %311 = load i64, ptr %x100, align 8
  %add358 = add i64 %conv357, %311
  store i64 %add358, ptr %x120, align 8
  %312 = load i64, ptr %x116, align 8
  %shr359 = lshr i64 %312, 56
  %conv360 = trunc i64 %shr359 to i8
  store i8 %conv360, ptr %x121, align 1
  %313 = load i64, ptr %x116, align 8
  %and361 = and i64 %313, 72057594037927935
  store i64 %and361, ptr %x122, align 8
  %314 = load i8, ptr %x121, align 1
  %conv362 = zext i8 %314 to i64
  %315 = load i64, ptr %x103, align 8
  %add363 = add i64 %conv362, %315
  store i64 %add363, ptr %x123, align 8
  %316 = load i64, ptr %x122, align 8
  %317 = load ptr, ptr %out1.addr, align 8
  %arrayidx364 = getelementptr inbounds i64, ptr %317, i64 0
  store i64 %316, ptr %arrayidx364, align 8
  %318 = load i64, ptr %x123, align 8
  %319 = load ptr, ptr %out1.addr, align 8
  %arrayidx365 = getelementptr inbounds i64, ptr %319, i64 1
  store i64 %318, ptr %arrayidx365, align 8
  %320 = load i64, ptr %x109, align 8
  %321 = load ptr, ptr %out1.addr, align 8
  %arrayidx366 = getelementptr inbounds i64, ptr %321, i64 2
  store i64 %320, ptr %arrayidx366, align 8
  %322 = load i64, ptr %x114, align 8
  %323 = load ptr, ptr %out1.addr, align 8
  %arrayidx367 = getelementptr inbounds i64, ptr %323, i64 3
  store i64 %322, ptr %arrayidx367, align 8
  %324 = load i64, ptr %x119, align 8
  %325 = load ptr, ptr %out1.addr, align 8
  %arrayidx368 = getelementptr inbounds i64, ptr %325, i64 4
  store i64 %324, ptr %arrayidx368, align 8
  %326 = load i64, ptr %x120, align 8
  %327 = load ptr, ptr %out1.addr, align 8
  %arrayidx369 = getelementptr inbounds i64, ptr %327, i64 5
  store i64 %326, ptr %arrayidx369, align 8
  %328 = load i64, ptr %x106, align 8
  %329 = load ptr, ptr %out1.addr, align 8
  %arrayidx370 = getelementptr inbounds i64, ptr %329, i64 6
  store i64 %328, ptr %arrayidx370, align 8
  %330 = load i64, ptr %x112, align 8
  %331 = load ptr, ptr %out1.addr, align 8
  %arrayidx371 = getelementptr inbounds i64, ptr %331, i64 7
  store i64 %330, ptr %arrayidx371, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x12 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 3
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 7
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %x2, align 8
  %4 = load i64, ptr %x2, align 8
  %shr = lshr i64 %4, 56
  store i64 %shr, ptr %x3, align 8
  %5 = load i64, ptr %x1, align 8
  %shr2 = lshr i64 %5, 56
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 4
  %7 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %shr2, %7
  %8 = load i64, ptr %x3, align 8
  %add4 = add i64 %add, %8
  store i64 %add4, ptr %x4, align 8
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx5, align 8
  %11 = load i64, ptr %x3, align 8
  %add6 = add i64 %10, %11
  store i64 %add6, ptr %x5, align 8
  %12 = load i64, ptr %x4, align 8
  %shr7 = lshr i64 %12, 56
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %13, i64 5
  %14 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %shr7, %14
  store i64 %add9, ptr %x6, align 8
  %15 = load i64, ptr %x5, align 8
  %shr10 = lshr i64 %15, 56
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx11, align 8
  %add12 = add i64 %shr10, %17
  store i64 %add12, ptr %x7, align 8
  %18 = load i64, ptr %x6, align 8
  %shr13 = lshr i64 %18, 56
  %19 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %19, i64 6
  %20 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 %shr13, %20
  store i64 %add15, ptr %x8, align 8
  %21 = load i64, ptr %x7, align 8
  %shr16 = lshr i64 %21, 56
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %22, i64 2
  %23 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %shr16, %23
  store i64 %add18, ptr %x9, align 8
  %24 = load i64, ptr %x8, align 8
  %shr19 = lshr i64 %24, 56
  %25 = load i64, ptr %x2, align 8
  %and = and i64 %25, 72057594037927935
  %add20 = add i64 %shr19, %and
  store i64 %add20, ptr %x10, align 8
  %26 = load i64, ptr %x9, align 8
  %shr21 = lshr i64 %26, 56
  %27 = load i64, ptr %x1, align 8
  %and22 = and i64 %27, 72057594037927935
  %add23 = add i64 %shr21, %and22
  store i64 %add23, ptr %x11, align 8
  %28 = load i64, ptr %x10, align 8
  %shr24 = lshr i64 %28, 56
  %conv = trunc i64 %shr24 to i8
  store i8 %conv, ptr %x12, align 1
  %29 = load i64, ptr %x5, align 8
  %and25 = and i64 %29, 72057594037927935
  %30 = load i8, ptr %x12, align 1
  %conv26 = zext i8 %30 to i64
  %add27 = add i64 %and25, %conv26
  store i64 %add27, ptr %x13, align 8
  %31 = load i64, ptr %x11, align 8
  %shr28 = lshr i64 %31, 56
  %conv29 = trunc i64 %shr28 to i8
  %conv30 = zext i8 %conv29 to i64
  %32 = load i64, ptr %x4, align 8
  %and31 = and i64 %32, 72057594037927935
  %33 = load i8, ptr %x12, align 1
  %conv32 = zext i8 %33 to i64
  %add33 = add i64 %and31, %conv32
  %add34 = add i64 %conv30, %add33
  store i64 %add34, ptr %x14, align 8
  %34 = load i64, ptr %x13, align 8
  %and35 = and i64 %34, 72057594037927935
  store i64 %and35, ptr %x15, align 8
  %35 = load i64, ptr %x13, align 8
  %shr36 = lshr i64 %35, 56
  %conv37 = trunc i64 %shr36 to i8
  %conv38 = zext i8 %conv37 to i64
  %36 = load i64, ptr %x7, align 8
  %and39 = and i64 %36, 72057594037927935
  %add40 = add i64 %conv38, %and39
  store i64 %add40, ptr %x16, align 8
  %37 = load i64, ptr %x9, align 8
  %and41 = and i64 %37, 72057594037927935
  store i64 %and41, ptr %x17, align 8
  %38 = load i64, ptr %x11, align 8
  %and42 = and i64 %38, 72057594037927935
  store i64 %and42, ptr %x18, align 8
  %39 = load i64, ptr %x14, align 8
  %and43 = and i64 %39, 72057594037927935
  store i64 %and43, ptr %x19, align 8
  %40 = load i64, ptr %x14, align 8
  %shr44 = lshr i64 %40, 56
  %conv45 = trunc i64 %shr44 to i8
  %conv46 = zext i8 %conv45 to i64
  %41 = load i64, ptr %x6, align 8
  %and47 = and i64 %41, 72057594037927935
  %add48 = add i64 %conv46, %and47
  store i64 %add48, ptr %x20, align 8
  %42 = load i64, ptr %x8, align 8
  %and49 = and i64 %42, 72057594037927935
  store i64 %and49, ptr %x21, align 8
  %43 = load i64, ptr %x10, align 8
  %and50 = and i64 %43, 72057594037927935
  store i64 %and50, ptr %x22, align 8
  %44 = load i64, ptr %x15, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %45, i64 0
  store i64 %44, ptr %arrayidx51, align 8
  %46 = load i64, ptr %x16, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %47, i64 1
  store i64 %46, ptr %arrayidx52, align 8
  %48 = load i64, ptr %x17, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %49, i64 2
  store i64 %48, ptr %arrayidx53, align 8
  %50 = load i64, ptr %x18, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %51, i64 3
  store i64 %50, ptr %arrayidx54, align 8
  %52 = load i64, ptr %x19, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %53, i64 4
  store i64 %52, ptr %arrayidx55, align 8
  %54 = load i64, ptr %x20, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %55, i64 5
  store i64 %54, ptr %arrayidx56, align 8
  %56 = load i64, ptr %x21, align 8
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx57 = getelementptr inbounds i64, ptr %57, i64 6
  store i64 %56, ptr %arrayidx57, align 8
  %58 = load i64, ptr %x22, align 8
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %59, i64 7
  store i64 %58, ptr %arrayidx58, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %32 = load i64, ptr %x1, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %33, i64 0
  store i64 %32, ptr %arrayidx23, align 8
  %34 = load i64, ptr %x2, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %35, i64 1
  store i64 %34, ptr %arrayidx24, align 8
  %36 = load i64, ptr %x3, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, ptr %37, i64 2
  store i64 %36, ptr %arrayidx25, align 8
  %38 = load i64, ptr %x4, align 8
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %39, i64 3
  store i64 %38, ptr %arrayidx26, align 8
  %40 = load i64, ptr %x5, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %41, i64 4
  store i64 %40, ptr %arrayidx27, align 8
  %42 = load i64, ptr %x6, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %43, i64 5
  store i64 %42, ptr %arrayidx28, align 8
  %44 = load i64, ptr %x7, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %45, i64 6
  store i64 %44, ptr %arrayidx29, align 8
  %46 = load i64, ptr %x8, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %47, i64 7
  store i64 %46, ptr %arrayidx30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %add = add i64 144115188075855870, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %sub = sub i64 %add, %3
  store i64 %sub, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %add3 = add i64 144115188075855870, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx4, align 8
  %sub5 = sub i64 %add3, %7
  store i64 %sub5, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 144115188075855870, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx8, align 8
  %sub9 = sub i64 %add7, %11
  store i64 %sub9, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 144115188075855870, %13
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %14, i64 3
  %15 = load i64, ptr %arrayidx12, align 8
  %sub13 = sub i64 %add11, %15
  store i64 %sub13, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 144115188075855868, %17
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx16, align 8
  %sub17 = sub i64 %add15, %19
  store i64 %sub17, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %20, i64 5
  %21 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 144115188075855870, %21
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %22, i64 5
  %23 = load i64, ptr %arrayidx20, align 8
  %sub21 = sub i64 %add19, %23
  store i64 %sub21, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %24, i64 6
  %25 = load i64, ptr %arrayidx22, align 8
  %add23 = add i64 144115188075855870, %25
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %26, i64 6
  %27 = load i64, ptr %arrayidx24, align 8
  %sub25 = sub i64 %add23, %27
  store i64 %sub25, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %28, i64 7
  %29 = load i64, ptr %arrayidx26, align 8
  %add27 = add i64 144115188075855870, %29
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %30, i64 7
  %31 = load i64, ptr %arrayidx28, align 8
  %sub29 = sub i64 %add27, %31
  store i64 %sub29, ptr %x8, align 8
  %32 = load i64, ptr %x1, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %33, i64 0
  store i64 %32, ptr %arrayidx30, align 8
  %34 = load i64, ptr %x2, align 8
  %35 = load ptr, ptr %out1.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %35, i64 1
  store i64 %34, ptr %arrayidx31, align 8
  %36 = load i64, ptr %x3, align 8
  %37 = load ptr, ptr %out1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %37, i64 2
  store i64 %36, ptr %arrayidx32, align 8
  %38 = load i64, ptr %x4, align 8
  %39 = load ptr, ptr %out1.addr, align 8
  %arrayidx33 = getelementptr inbounds i64, ptr %39, i64 3
  store i64 %38, ptr %arrayidx33, align 8
  %40 = load i64, ptr %x5, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %41, i64 4
  store i64 %40, ptr %arrayidx34, align 8
  %42 = load i64, ptr %x6, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx35 = getelementptr inbounds i64, ptr %43, i64 5
  store i64 %42, ptr %arrayidx35, align 8
  %44 = load i64, ptr %x7, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %45, i64 6
  store i64 %44, ptr %arrayidx36, align 8
  %46 = load i64, ptr %x8, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %47, i64 7
  store i64 %46, ptr %arrayidx37, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %sub = sub i64 144115188075855870, %1
  store i64 %sub, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %sub2 = sub i64 144115188075855870, %3
  store i64 %sub2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx3, align 8
  %sub4 = sub i64 144115188075855870, %5
  store i64 %sub4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx5, align 8
  %sub6 = sub i64 144115188075855870, %7
  store i64 %sub6, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx7, align 8
  %sub8 = sub i64 144115188075855868, %9
  store i64 %sub8, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx9, align 8
  %sub10 = sub i64 144115188075855870, %11
  store i64 %sub10, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx11, align 8
  %sub12 = sub i64 144115188075855870, %13
  store i64 %sub12, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %14, i64 7
  %15 = load i64, ptr %arrayidx13, align 8
  %sub14 = sub i64 144115188075855870, %15
  store i64 %sub14, ptr %x8, align 8
  %16 = load i64, ptr %x1, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %17, i64 0
  store i64 %16, ptr %arrayidx15, align 8
  %18 = load i64, ptr %x2, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %18, ptr %arrayidx16, align 8
  %20 = load i64, ptr %x3, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %21, i64 2
  store i64 %20, ptr %arrayidx17, align 8
  %22 = load i64, ptr %x4, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %23, i64 3
  store i64 %22, ptr %arrayidx18, align 8
  %24 = load i64, ptr %x5, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %25, i64 4
  store i64 %24, ptr %arrayidx19, align 8
  %26 = load i64, ptr %x6, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %27, i64 5
  store i64 %26, ptr %arrayidx20, align 8
  %28 = load i64, ptr %x7, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %29, i64 6
  store i64 %28, ptr %arrayidx21, align 8
  %30 = load i64, ptr %x8, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %31, i64 7
  store i64 %30, ptr %arrayidx22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
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
  call void @fiat_p448_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 4
  %24 = load i64, ptr %arrayidx9, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x5, i8 noundef zeroext %20, i64 noundef %22, i64 noundef %24)
  %25 = load i8, ptr %arg1.addr, align 1
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %26, i64 5
  %27 = load i64, ptr %arrayidx10, align 8
  %28 = load ptr, ptr %arg3.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 5
  %29 = load i64, ptr %arrayidx11, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x6, i8 noundef zeroext %25, i64 noundef %27, i64 noundef %29)
  %30 = load i8, ptr %arg1.addr, align 1
  %31 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %31, i64 6
  %32 = load i64, ptr %arrayidx12, align 8
  %33 = load ptr, ptr %arg3.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 6
  %34 = load i64, ptr %arrayidx13, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %30, i64 noundef %32, i64 noundef %34)
  %35 = load i8, ptr %arg1.addr, align 1
  %36 = load ptr, ptr %arg2.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %36, i64 7
  %37 = load i64, ptr %arrayidx14, align 8
  %38 = load ptr, ptr %arg3.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %38, i64 7
  %39 = load i64, ptr %arrayidx15, align 8
  call void @fiat_p448_cmovznz_u64(ptr noundef %x8, i8 noundef zeroext %35, i64 noundef %37, i64 noundef %39)
  %40 = load i64, ptr %x1, align 8
  %41 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %41, i64 0
  store i64 %40, ptr %arrayidx16, align 8
  %42 = load i64, ptr %x2, align 8
  %43 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 %42, ptr %arrayidx17, align 8
  %44 = load i64, ptr %x3, align 8
  %45 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %45, i64 2
  store i64 %44, ptr %arrayidx18, align 8
  %46 = load i64, ptr %x4, align 8
  %47 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %47, i64 3
  store i64 %46, ptr %arrayidx19, align 8
  %48 = load i64, ptr %x5, align 8
  %49 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %49, i64 4
  store i64 %48, ptr %arrayidx20, align 8
  %50 = load i64, ptr %x6, align 8
  %51 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %51, i64 5
  store i64 %50, ptr %arrayidx21, align 8
  %52 = load i64, ptr %x7, align 8
  %53 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %53, i64 6
  store i64 %52, ptr %arrayidx22, align 8
  %54 = load i64, ptr %x8, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %55, i64 7
  store i64 %54, ptr %arrayidx23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x45 = alloca i8, align 1
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
  %x69 = alloca i8, align 1
  %x70 = alloca i8, align 1
  %x71 = alloca i64, align 8
  %x72 = alloca i8, align 1
  %x73 = alloca i64, align 8
  %x74 = alloca i8, align 1
  %x75 = alloca i64, align 8
  %x76 = alloca i8, align 1
  %x77 = alloca i64, align 8
  %x78 = alloca i8, align 1
  %x79 = alloca i64, align 8
  %x80 = alloca i8, align 1
  %x81 = alloca i8, align 1
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
  %x93 = alloca i8, align 1
  %x94 = alloca i8, align 1
  %x95 = alloca i64, align 8
  %x96 = alloca i8, align 1
  %x97 = alloca i64, align 8
  %x98 = alloca i8, align 1
  %x99 = alloca i64, align 8
  %x100 = alloca i8, align 1
  %x101 = alloca i64, align 8
  %x102 = alloca i8, align 1
  %x103 = alloca i64, align 8
  %x104 = alloca i8, align 1
  %x105 = alloca i8, align 1
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
  %x117 = alloca i8, align 1
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
  %x129 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef 72057594037927935)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef %4, i64 noundef 72057594037927935)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %7, i64 noundef 72057594037927935)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef %10, i64 noundef 72057594037927935)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef %13, i64 noundef 72057594037927934)
  %14 = load i8, ptr %x10, align 1
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 5
  %16 = load i64, ptr %arrayidx5, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x11, ptr noundef %x12, i8 noundef zeroext %14, i64 noundef %16, i64 noundef 72057594037927935)
  %17 = load i8, ptr %x12, align 1
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %18, i64 6
  %19 = load i64, ptr %arrayidx6, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x13, ptr noundef %x14, i8 noundef zeroext %17, i64 noundef %19, i64 noundef 72057594037927935)
  %20 = load i8, ptr %x14, align 1
  %21 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %21, i64 7
  %22 = load i64, ptr %arrayidx7, align 8
  call void @fiat_p448_subborrowx_u56(ptr noundef %x15, ptr noundef %x16, i8 noundef zeroext %20, i64 noundef %22, i64 noundef 72057594037927935)
  %23 = load i8, ptr %x16, align 1
  call void @fiat_p448_cmovznz_u64(ptr noundef %x17, i8 noundef zeroext %23, i64 noundef 0, i64 noundef -1)
  %24 = load i64, ptr %x1, align 8
  %25 = load i64, ptr %x17, align 8
  %and = and i64 %25, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext 0, i64 noundef %24, i64 noundef %and)
  %26 = load i8, ptr %x19, align 1
  %27 = load i64, ptr %x3, align 8
  %28 = load i64, ptr %x17, align 8
  %and8 = and i64 %28, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %and8)
  %29 = load i8, ptr %x21, align 1
  %30 = load i64, ptr %x5, align 8
  %31 = load i64, ptr %x17, align 8
  %and9 = and i64 %31, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x22, ptr noundef %x23, i8 noundef zeroext %29, i64 noundef %30, i64 noundef %and9)
  %32 = load i8, ptr %x23, align 1
  %33 = load i64, ptr %x7, align 8
  %34 = load i64, ptr %x17, align 8
  %and10 = and i64 %34, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x24, ptr noundef %x25, i8 noundef zeroext %32, i64 noundef %33, i64 noundef %and10)
  %35 = load i8, ptr %x25, align 1
  %36 = load i64, ptr %x9, align 8
  %37 = load i64, ptr %x17, align 8
  %and11 = and i64 %37, 72057594037927934
  call void @fiat_p448_addcarryx_u56(ptr noundef %x26, ptr noundef %x27, i8 noundef zeroext %35, i64 noundef %36, i64 noundef %and11)
  %38 = load i8, ptr %x27, align 1
  %39 = load i64, ptr %x11, align 8
  %40 = load i64, ptr %x17, align 8
  %and12 = and i64 %40, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x28, ptr noundef %x29, i8 noundef zeroext %38, i64 noundef %39, i64 noundef %and12)
  %41 = load i8, ptr %x29, align 1
  %42 = load i64, ptr %x13, align 8
  %43 = load i64, ptr %x17, align 8
  %and13 = and i64 %43, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x30, ptr noundef %x31, i8 noundef zeroext %41, i64 noundef %42, i64 noundef %and13)
  %44 = load i8, ptr %x31, align 1
  %45 = load i64, ptr %x15, align 8
  %46 = load i64, ptr %x17, align 8
  %and14 = and i64 %46, 72057594037927935
  call void @fiat_p448_addcarryx_u56(ptr noundef %x32, ptr noundef %x33, i8 noundef zeroext %44, i64 noundef %45, i64 noundef %and14)
  %47 = load i64, ptr %x18, align 8
  %and15 = and i64 %47, 255
  %conv = trunc i64 %and15 to i8
  store i8 %conv, ptr %x34, align 1
  %48 = load i64, ptr %x18, align 8
  %shr = lshr i64 %48, 8
  store i64 %shr, ptr %x35, align 8
  %49 = load i64, ptr %x35, align 8
  %and16 = and i64 %49, 255
  %conv17 = trunc i64 %and16 to i8
  store i8 %conv17, ptr %x36, align 1
  %50 = load i64, ptr %x35, align 8
  %shr18 = lshr i64 %50, 8
  store i64 %shr18, ptr %x37, align 8
  %51 = load i64, ptr %x37, align 8
  %and19 = and i64 %51, 255
  %conv20 = trunc i64 %and19 to i8
  store i8 %conv20, ptr %x38, align 1
  %52 = load i64, ptr %x37, align 8
  %shr21 = lshr i64 %52, 8
  store i64 %shr21, ptr %x39, align 8
  %53 = load i64, ptr %x39, align 8
  %and22 = and i64 %53, 255
  %conv23 = trunc i64 %and22 to i8
  store i8 %conv23, ptr %x40, align 1
  %54 = load i64, ptr %x39, align 8
  %shr24 = lshr i64 %54, 8
  store i64 %shr24, ptr %x41, align 8
  %55 = load i64, ptr %x41, align 8
  %and25 = and i64 %55, 255
  %conv26 = trunc i64 %and25 to i8
  store i8 %conv26, ptr %x42, align 1
  %56 = load i64, ptr %x41, align 8
  %shr27 = lshr i64 %56, 8
  store i64 %shr27, ptr %x43, align 8
  %57 = load i64, ptr %x43, align 8
  %and28 = and i64 %57, 255
  %conv29 = trunc i64 %and28 to i8
  store i8 %conv29, ptr %x44, align 1
  %58 = load i64, ptr %x43, align 8
  %shr30 = lshr i64 %58, 8
  %conv31 = trunc i64 %shr30 to i8
  store i8 %conv31, ptr %x45, align 1
  %59 = load i64, ptr %x20, align 8
  %and32 = and i64 %59, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x46, align 1
  %60 = load i64, ptr %x20, align 8
  %shr34 = lshr i64 %60, 8
  store i64 %shr34, ptr %x47, align 8
  %61 = load i64, ptr %x47, align 8
  %and35 = and i64 %61, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x48, align 1
  %62 = load i64, ptr %x47, align 8
  %shr37 = lshr i64 %62, 8
  store i64 %shr37, ptr %x49, align 8
  %63 = load i64, ptr %x49, align 8
  %and38 = and i64 %63, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x50, align 1
  %64 = load i64, ptr %x49, align 8
  %shr40 = lshr i64 %64, 8
  store i64 %shr40, ptr %x51, align 8
  %65 = load i64, ptr %x51, align 8
  %and41 = and i64 %65, 255
  %conv42 = trunc i64 %and41 to i8
  store i8 %conv42, ptr %x52, align 1
  %66 = load i64, ptr %x51, align 8
  %shr43 = lshr i64 %66, 8
  store i64 %shr43, ptr %x53, align 8
  %67 = load i64, ptr %x53, align 8
  %and44 = and i64 %67, 255
  %conv45 = trunc i64 %and44 to i8
  store i8 %conv45, ptr %x54, align 1
  %68 = load i64, ptr %x53, align 8
  %shr46 = lshr i64 %68, 8
  store i64 %shr46, ptr %x55, align 8
  %69 = load i64, ptr %x55, align 8
  %and47 = and i64 %69, 255
  %conv48 = trunc i64 %and47 to i8
  store i8 %conv48, ptr %x56, align 1
  %70 = load i64, ptr %x55, align 8
  %shr49 = lshr i64 %70, 8
  %conv50 = trunc i64 %shr49 to i8
  store i8 %conv50, ptr %x57, align 1
  %71 = load i64, ptr %x22, align 8
  %and51 = and i64 %71, 255
  %conv52 = trunc i64 %and51 to i8
  store i8 %conv52, ptr %x58, align 1
  %72 = load i64, ptr %x22, align 8
  %shr53 = lshr i64 %72, 8
  store i64 %shr53, ptr %x59, align 8
  %73 = load i64, ptr %x59, align 8
  %and54 = and i64 %73, 255
  %conv55 = trunc i64 %and54 to i8
  store i8 %conv55, ptr %x60, align 1
  %74 = load i64, ptr %x59, align 8
  %shr56 = lshr i64 %74, 8
  store i64 %shr56, ptr %x61, align 8
  %75 = load i64, ptr %x61, align 8
  %and57 = and i64 %75, 255
  %conv58 = trunc i64 %and57 to i8
  store i8 %conv58, ptr %x62, align 1
  %76 = load i64, ptr %x61, align 8
  %shr59 = lshr i64 %76, 8
  store i64 %shr59, ptr %x63, align 8
  %77 = load i64, ptr %x63, align 8
  %and60 = and i64 %77, 255
  %conv61 = trunc i64 %and60 to i8
  store i8 %conv61, ptr %x64, align 1
  %78 = load i64, ptr %x63, align 8
  %shr62 = lshr i64 %78, 8
  store i64 %shr62, ptr %x65, align 8
  %79 = load i64, ptr %x65, align 8
  %and63 = and i64 %79, 255
  %conv64 = trunc i64 %and63 to i8
  store i8 %conv64, ptr %x66, align 1
  %80 = load i64, ptr %x65, align 8
  %shr65 = lshr i64 %80, 8
  store i64 %shr65, ptr %x67, align 8
  %81 = load i64, ptr %x67, align 8
  %and66 = and i64 %81, 255
  %conv67 = trunc i64 %and66 to i8
  store i8 %conv67, ptr %x68, align 1
  %82 = load i64, ptr %x67, align 8
  %shr68 = lshr i64 %82, 8
  %conv69 = trunc i64 %shr68 to i8
  store i8 %conv69, ptr %x69, align 1
  %83 = load i64, ptr %x24, align 8
  %and70 = and i64 %83, 255
  %conv71 = trunc i64 %and70 to i8
  store i8 %conv71, ptr %x70, align 1
  %84 = load i64, ptr %x24, align 8
  %shr72 = lshr i64 %84, 8
  store i64 %shr72, ptr %x71, align 8
  %85 = load i64, ptr %x71, align 8
  %and73 = and i64 %85, 255
  %conv74 = trunc i64 %and73 to i8
  store i8 %conv74, ptr %x72, align 1
  %86 = load i64, ptr %x71, align 8
  %shr75 = lshr i64 %86, 8
  store i64 %shr75, ptr %x73, align 8
  %87 = load i64, ptr %x73, align 8
  %and76 = and i64 %87, 255
  %conv77 = trunc i64 %and76 to i8
  store i8 %conv77, ptr %x74, align 1
  %88 = load i64, ptr %x73, align 8
  %shr78 = lshr i64 %88, 8
  store i64 %shr78, ptr %x75, align 8
  %89 = load i64, ptr %x75, align 8
  %and79 = and i64 %89, 255
  %conv80 = trunc i64 %and79 to i8
  store i8 %conv80, ptr %x76, align 1
  %90 = load i64, ptr %x75, align 8
  %shr81 = lshr i64 %90, 8
  store i64 %shr81, ptr %x77, align 8
  %91 = load i64, ptr %x77, align 8
  %and82 = and i64 %91, 255
  %conv83 = trunc i64 %and82 to i8
  store i8 %conv83, ptr %x78, align 1
  %92 = load i64, ptr %x77, align 8
  %shr84 = lshr i64 %92, 8
  store i64 %shr84, ptr %x79, align 8
  %93 = load i64, ptr %x79, align 8
  %and85 = and i64 %93, 255
  %conv86 = trunc i64 %and85 to i8
  store i8 %conv86, ptr %x80, align 1
  %94 = load i64, ptr %x79, align 8
  %shr87 = lshr i64 %94, 8
  %conv88 = trunc i64 %shr87 to i8
  store i8 %conv88, ptr %x81, align 1
  %95 = load i64, ptr %x26, align 8
  %and89 = and i64 %95, 255
  %conv90 = trunc i64 %and89 to i8
  store i8 %conv90, ptr %x82, align 1
  %96 = load i64, ptr %x26, align 8
  %shr91 = lshr i64 %96, 8
  store i64 %shr91, ptr %x83, align 8
  %97 = load i64, ptr %x83, align 8
  %and92 = and i64 %97, 255
  %conv93 = trunc i64 %and92 to i8
  store i8 %conv93, ptr %x84, align 1
  %98 = load i64, ptr %x83, align 8
  %shr94 = lshr i64 %98, 8
  store i64 %shr94, ptr %x85, align 8
  %99 = load i64, ptr %x85, align 8
  %and95 = and i64 %99, 255
  %conv96 = trunc i64 %and95 to i8
  store i8 %conv96, ptr %x86, align 1
  %100 = load i64, ptr %x85, align 8
  %shr97 = lshr i64 %100, 8
  store i64 %shr97, ptr %x87, align 8
  %101 = load i64, ptr %x87, align 8
  %and98 = and i64 %101, 255
  %conv99 = trunc i64 %and98 to i8
  store i8 %conv99, ptr %x88, align 1
  %102 = load i64, ptr %x87, align 8
  %shr100 = lshr i64 %102, 8
  store i64 %shr100, ptr %x89, align 8
  %103 = load i64, ptr %x89, align 8
  %and101 = and i64 %103, 255
  %conv102 = trunc i64 %and101 to i8
  store i8 %conv102, ptr %x90, align 1
  %104 = load i64, ptr %x89, align 8
  %shr103 = lshr i64 %104, 8
  store i64 %shr103, ptr %x91, align 8
  %105 = load i64, ptr %x91, align 8
  %and104 = and i64 %105, 255
  %conv105 = trunc i64 %and104 to i8
  store i8 %conv105, ptr %x92, align 1
  %106 = load i64, ptr %x91, align 8
  %shr106 = lshr i64 %106, 8
  %conv107 = trunc i64 %shr106 to i8
  store i8 %conv107, ptr %x93, align 1
  %107 = load i64, ptr %x28, align 8
  %and108 = and i64 %107, 255
  %conv109 = trunc i64 %and108 to i8
  store i8 %conv109, ptr %x94, align 1
  %108 = load i64, ptr %x28, align 8
  %shr110 = lshr i64 %108, 8
  store i64 %shr110, ptr %x95, align 8
  %109 = load i64, ptr %x95, align 8
  %and111 = and i64 %109, 255
  %conv112 = trunc i64 %and111 to i8
  store i8 %conv112, ptr %x96, align 1
  %110 = load i64, ptr %x95, align 8
  %shr113 = lshr i64 %110, 8
  store i64 %shr113, ptr %x97, align 8
  %111 = load i64, ptr %x97, align 8
  %and114 = and i64 %111, 255
  %conv115 = trunc i64 %and114 to i8
  store i8 %conv115, ptr %x98, align 1
  %112 = load i64, ptr %x97, align 8
  %shr116 = lshr i64 %112, 8
  store i64 %shr116, ptr %x99, align 8
  %113 = load i64, ptr %x99, align 8
  %and117 = and i64 %113, 255
  %conv118 = trunc i64 %and117 to i8
  store i8 %conv118, ptr %x100, align 1
  %114 = load i64, ptr %x99, align 8
  %shr119 = lshr i64 %114, 8
  store i64 %shr119, ptr %x101, align 8
  %115 = load i64, ptr %x101, align 8
  %and120 = and i64 %115, 255
  %conv121 = trunc i64 %and120 to i8
  store i8 %conv121, ptr %x102, align 1
  %116 = load i64, ptr %x101, align 8
  %shr122 = lshr i64 %116, 8
  store i64 %shr122, ptr %x103, align 8
  %117 = load i64, ptr %x103, align 8
  %and123 = and i64 %117, 255
  %conv124 = trunc i64 %and123 to i8
  store i8 %conv124, ptr %x104, align 1
  %118 = load i64, ptr %x103, align 8
  %shr125 = lshr i64 %118, 8
  %conv126 = trunc i64 %shr125 to i8
  store i8 %conv126, ptr %x105, align 1
  %119 = load i64, ptr %x30, align 8
  %and127 = and i64 %119, 255
  %conv128 = trunc i64 %and127 to i8
  store i8 %conv128, ptr %x106, align 1
  %120 = load i64, ptr %x30, align 8
  %shr129 = lshr i64 %120, 8
  store i64 %shr129, ptr %x107, align 8
  %121 = load i64, ptr %x107, align 8
  %and130 = and i64 %121, 255
  %conv131 = trunc i64 %and130 to i8
  store i8 %conv131, ptr %x108, align 1
  %122 = load i64, ptr %x107, align 8
  %shr132 = lshr i64 %122, 8
  store i64 %shr132, ptr %x109, align 8
  %123 = load i64, ptr %x109, align 8
  %and133 = and i64 %123, 255
  %conv134 = trunc i64 %and133 to i8
  store i8 %conv134, ptr %x110, align 1
  %124 = load i64, ptr %x109, align 8
  %shr135 = lshr i64 %124, 8
  store i64 %shr135, ptr %x111, align 8
  %125 = load i64, ptr %x111, align 8
  %and136 = and i64 %125, 255
  %conv137 = trunc i64 %and136 to i8
  store i8 %conv137, ptr %x112, align 1
  %126 = load i64, ptr %x111, align 8
  %shr138 = lshr i64 %126, 8
  store i64 %shr138, ptr %x113, align 8
  %127 = load i64, ptr %x113, align 8
  %and139 = and i64 %127, 255
  %conv140 = trunc i64 %and139 to i8
  store i8 %conv140, ptr %x114, align 1
  %128 = load i64, ptr %x113, align 8
  %shr141 = lshr i64 %128, 8
  store i64 %shr141, ptr %x115, align 8
  %129 = load i64, ptr %x115, align 8
  %and142 = and i64 %129, 255
  %conv143 = trunc i64 %and142 to i8
  store i8 %conv143, ptr %x116, align 1
  %130 = load i64, ptr %x115, align 8
  %shr144 = lshr i64 %130, 8
  %conv145 = trunc i64 %shr144 to i8
  store i8 %conv145, ptr %x117, align 1
  %131 = load i64, ptr %x32, align 8
  %and146 = and i64 %131, 255
  %conv147 = trunc i64 %and146 to i8
  store i8 %conv147, ptr %x118, align 1
  %132 = load i64, ptr %x32, align 8
  %shr148 = lshr i64 %132, 8
  store i64 %shr148, ptr %x119, align 8
  %133 = load i64, ptr %x119, align 8
  %and149 = and i64 %133, 255
  %conv150 = trunc i64 %and149 to i8
  store i8 %conv150, ptr %x120, align 1
  %134 = load i64, ptr %x119, align 8
  %shr151 = lshr i64 %134, 8
  store i64 %shr151, ptr %x121, align 8
  %135 = load i64, ptr %x121, align 8
  %and152 = and i64 %135, 255
  %conv153 = trunc i64 %and152 to i8
  store i8 %conv153, ptr %x122, align 1
  %136 = load i64, ptr %x121, align 8
  %shr154 = lshr i64 %136, 8
  store i64 %shr154, ptr %x123, align 8
  %137 = load i64, ptr %x123, align 8
  %and155 = and i64 %137, 255
  %conv156 = trunc i64 %and155 to i8
  store i8 %conv156, ptr %x124, align 1
  %138 = load i64, ptr %x123, align 8
  %shr157 = lshr i64 %138, 8
  store i64 %shr157, ptr %x125, align 8
  %139 = load i64, ptr %x125, align 8
  %and158 = and i64 %139, 255
  %conv159 = trunc i64 %and158 to i8
  store i8 %conv159, ptr %x126, align 1
  %140 = load i64, ptr %x125, align 8
  %shr160 = lshr i64 %140, 8
  store i64 %shr160, ptr %x127, align 8
  %141 = load i64, ptr %x127, align 8
  %and161 = and i64 %141, 255
  %conv162 = trunc i64 %and161 to i8
  store i8 %conv162, ptr %x128, align 1
  %142 = load i64, ptr %x127, align 8
  %shr163 = lshr i64 %142, 8
  %conv164 = trunc i64 %shr163 to i8
  store i8 %conv164, ptr %x129, align 1
  %143 = load i8, ptr %x34, align 1
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %144, i64 0
  store i8 %143, ptr %arrayidx165, align 1
  %145 = load i8, ptr %x36, align 1
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %146, i64 1
  store i8 %145, ptr %arrayidx166, align 1
  %147 = load i8, ptr %x38, align 1
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %148, i64 2
  store i8 %147, ptr %arrayidx167, align 1
  %149 = load i8, ptr %x40, align 1
  %150 = load ptr, ptr %out1.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %150, i64 3
  store i8 %149, ptr %arrayidx168, align 1
  %151 = load i8, ptr %x42, align 1
  %152 = load ptr, ptr %out1.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %152, i64 4
  store i8 %151, ptr %arrayidx169, align 1
  %153 = load i8, ptr %x44, align 1
  %154 = load ptr, ptr %out1.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %154, i64 5
  store i8 %153, ptr %arrayidx170, align 1
  %155 = load i8, ptr %x45, align 1
  %156 = load ptr, ptr %out1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %156, i64 6
  store i8 %155, ptr %arrayidx171, align 1
  %157 = load i8, ptr %x46, align 1
  %158 = load ptr, ptr %out1.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %158, i64 7
  store i8 %157, ptr %arrayidx172, align 1
  %159 = load i8, ptr %x48, align 1
  %160 = load ptr, ptr %out1.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, ptr %160, i64 8
  store i8 %159, ptr %arrayidx173, align 1
  %161 = load i8, ptr %x50, align 1
  %162 = load ptr, ptr %out1.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %162, i64 9
  store i8 %161, ptr %arrayidx174, align 1
  %163 = load i8, ptr %x52, align 1
  %164 = load ptr, ptr %out1.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, ptr %164, i64 10
  store i8 %163, ptr %arrayidx175, align 1
  %165 = load i8, ptr %x54, align 1
  %166 = load ptr, ptr %out1.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %166, i64 11
  store i8 %165, ptr %arrayidx176, align 1
  %167 = load i8, ptr %x56, align 1
  %168 = load ptr, ptr %out1.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %168, i64 12
  store i8 %167, ptr %arrayidx177, align 1
  %169 = load i8, ptr %x57, align 1
  %170 = load ptr, ptr %out1.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, ptr %170, i64 13
  store i8 %169, ptr %arrayidx178, align 1
  %171 = load i8, ptr %x58, align 1
  %172 = load ptr, ptr %out1.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %172, i64 14
  store i8 %171, ptr %arrayidx179, align 1
  %173 = load i8, ptr %x60, align 1
  %174 = load ptr, ptr %out1.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %174, i64 15
  store i8 %173, ptr %arrayidx180, align 1
  %175 = load i8, ptr %x62, align 1
  %176 = load ptr, ptr %out1.addr, align 8
  %arrayidx181 = getelementptr inbounds i8, ptr %176, i64 16
  store i8 %175, ptr %arrayidx181, align 1
  %177 = load i8, ptr %x64, align 1
  %178 = load ptr, ptr %out1.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %178, i64 17
  store i8 %177, ptr %arrayidx182, align 1
  %179 = load i8, ptr %x66, align 1
  %180 = load ptr, ptr %out1.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %180, i64 18
  store i8 %179, ptr %arrayidx183, align 1
  %181 = load i8, ptr %x68, align 1
  %182 = load ptr, ptr %out1.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, ptr %182, i64 19
  store i8 %181, ptr %arrayidx184, align 1
  %183 = load i8, ptr %x69, align 1
  %184 = load ptr, ptr %out1.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %184, i64 20
  store i8 %183, ptr %arrayidx185, align 1
  %185 = load i8, ptr %x70, align 1
  %186 = load ptr, ptr %out1.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %186, i64 21
  store i8 %185, ptr %arrayidx186, align 1
  %187 = load i8, ptr %x72, align 1
  %188 = load ptr, ptr %out1.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %188, i64 22
  store i8 %187, ptr %arrayidx187, align 1
  %189 = load i8, ptr %x74, align 1
  %190 = load ptr, ptr %out1.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %190, i64 23
  store i8 %189, ptr %arrayidx188, align 1
  %191 = load i8, ptr %x76, align 1
  %192 = load ptr, ptr %out1.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %192, i64 24
  store i8 %191, ptr %arrayidx189, align 1
  %193 = load i8, ptr %x78, align 1
  %194 = load ptr, ptr %out1.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, ptr %194, i64 25
  store i8 %193, ptr %arrayidx190, align 1
  %195 = load i8, ptr %x80, align 1
  %196 = load ptr, ptr %out1.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %196, i64 26
  store i8 %195, ptr %arrayidx191, align 1
  %197 = load i8, ptr %x81, align 1
  %198 = load ptr, ptr %out1.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %198, i64 27
  store i8 %197, ptr %arrayidx192, align 1
  %199 = load i8, ptr %x82, align 1
  %200 = load ptr, ptr %out1.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %200, i64 28
  store i8 %199, ptr %arrayidx193, align 1
  %201 = load i8, ptr %x84, align 1
  %202 = load ptr, ptr %out1.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, ptr %202, i64 29
  store i8 %201, ptr %arrayidx194, align 1
  %203 = load i8, ptr %x86, align 1
  %204 = load ptr, ptr %out1.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, ptr %204, i64 30
  store i8 %203, ptr %arrayidx195, align 1
  %205 = load i8, ptr %x88, align 1
  %206 = load ptr, ptr %out1.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, ptr %206, i64 31
  store i8 %205, ptr %arrayidx196, align 1
  %207 = load i8, ptr %x90, align 1
  %208 = load ptr, ptr %out1.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %208, i64 32
  store i8 %207, ptr %arrayidx197, align 1
  %209 = load i8, ptr %x92, align 1
  %210 = load ptr, ptr %out1.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %210, i64 33
  store i8 %209, ptr %arrayidx198, align 1
  %211 = load i8, ptr %x93, align 1
  %212 = load ptr, ptr %out1.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, ptr %212, i64 34
  store i8 %211, ptr %arrayidx199, align 1
  %213 = load i8, ptr %x94, align 1
  %214 = load ptr, ptr %out1.addr, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %214, i64 35
  store i8 %213, ptr %arrayidx200, align 1
  %215 = load i8, ptr %x96, align 1
  %216 = load ptr, ptr %out1.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, ptr %216, i64 36
  store i8 %215, ptr %arrayidx201, align 1
  %217 = load i8, ptr %x98, align 1
  %218 = load ptr, ptr %out1.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, ptr %218, i64 37
  store i8 %217, ptr %arrayidx202, align 1
  %219 = load i8, ptr %x100, align 1
  %220 = load ptr, ptr %out1.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, ptr %220, i64 38
  store i8 %219, ptr %arrayidx203, align 1
  %221 = load i8, ptr %x102, align 1
  %222 = load ptr, ptr %out1.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %222, i64 39
  store i8 %221, ptr %arrayidx204, align 1
  %223 = load i8, ptr %x104, align 1
  %224 = load ptr, ptr %out1.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %224, i64 40
  store i8 %223, ptr %arrayidx205, align 1
  %225 = load i8, ptr %x105, align 1
  %226 = load ptr, ptr %out1.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, ptr %226, i64 41
  store i8 %225, ptr %arrayidx206, align 1
  %227 = load i8, ptr %x106, align 1
  %228 = load ptr, ptr %out1.addr, align 8
  %arrayidx207 = getelementptr inbounds i8, ptr %228, i64 42
  store i8 %227, ptr %arrayidx207, align 1
  %229 = load i8, ptr %x108, align 1
  %230 = load ptr, ptr %out1.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, ptr %230, i64 43
  store i8 %229, ptr %arrayidx208, align 1
  %231 = load i8, ptr %x110, align 1
  %232 = load ptr, ptr %out1.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %232, i64 44
  store i8 %231, ptr %arrayidx209, align 1
  %233 = load i8, ptr %x112, align 1
  %234 = load ptr, ptr %out1.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %234, i64 45
  store i8 %233, ptr %arrayidx210, align 1
  %235 = load i8, ptr %x114, align 1
  %236 = load ptr, ptr %out1.addr, align 8
  %arrayidx211 = getelementptr inbounds i8, ptr %236, i64 46
  store i8 %235, ptr %arrayidx211, align 1
  %237 = load i8, ptr %x116, align 1
  %238 = load ptr, ptr %out1.addr, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %238, i64 47
  store i8 %237, ptr %arrayidx212, align 1
  %239 = load i8, ptr %x117, align 1
  %240 = load ptr, ptr %out1.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %240, i64 48
  store i8 %239, ptr %arrayidx213, align 1
  %241 = load i8, ptr %x118, align 1
  %242 = load ptr, ptr %out1.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %242, i64 49
  store i8 %241, ptr %arrayidx214, align 1
  %243 = load i8, ptr %x120, align 1
  %244 = load ptr, ptr %out1.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %244, i64 50
  store i8 %243, ptr %arrayidx215, align 1
  %245 = load i8, ptr %x122, align 1
  %246 = load ptr, ptr %out1.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %246, i64 51
  store i8 %245, ptr %arrayidx216, align 1
  %247 = load i8, ptr %x124, align 1
  %248 = load ptr, ptr %out1.addr, align 8
  %arrayidx217 = getelementptr inbounds i8, ptr %248, i64 52
  store i8 %247, ptr %arrayidx217, align 1
  %249 = load i8, ptr %x126, align 1
  %250 = load ptr, ptr %out1.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, ptr %250, i64 53
  store i8 %249, ptr %arrayidx218, align 1
  %251 = load i8, ptr %x128, align 1
  %252 = load ptr, ptr %out1.addr, align 8
  %arrayidx219 = getelementptr inbounds i8, ptr %252, i64 54
  store i8 %251, ptr %arrayidx219, align 1
  %253 = load i8, ptr %x129, align 1
  %254 = load ptr, ptr %out1.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, ptr %254, i64 55
  store i8 %253, ptr %arrayidx220, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x14 = alloca i8, align 1
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i8, align 1
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i8, align 1
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i8, align 1
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i8, align 1
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i8, align 1
  %x50 = alloca i64, align 8
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  %x53 = alloca i64, align 8
  %x54 = alloca i64, align 8
  %x55 = alloca i64, align 8
  %x56 = alloca i8, align 1
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
  %x104 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 55
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 48
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 54
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 40
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 53
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 32
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 52
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 24
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 51
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 16
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 50
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 8
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 49
  %13 = load i8, ptr %arrayidx16, align 1
  store i8 %13, ptr %x7, align 1
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 48
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %shl19 = shl i64 %conv18, 48
  store i64 %shl19, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 47
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i64
  %shl22 = shl i64 %conv21, 40
  store i64 %shl22, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 46
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i64
  %shl25 = shl i64 %conv24, 32
  store i64 %shl25, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 45
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i64
  %shl28 = shl i64 %conv27, 24
  store i64 %shl28, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 44
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i64
  %shl31 = shl i64 %conv30, 16
  store i64 %shl31, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 43
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i64
  %shl34 = shl i64 %conv33, 8
  store i64 %shl34, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 42
  %27 = load i8, ptr %arrayidx35, align 1
  store i8 %27, ptr %x14, align 1
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %28, i64 41
  %29 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %29 to i64
  %shl38 = shl i64 %conv37, 48
  store i64 %shl38, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %30, i64 40
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %31 to i64
  %shl41 = shl i64 %conv40, 40
  store i64 %shl41, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %32, i64 39
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i64
  %shl44 = shl i64 %conv43, 32
  store i64 %shl44, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 38
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i64
  %shl47 = shl i64 %conv46, 24
  store i64 %shl47, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %36, i64 37
  %37 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %37 to i64
  %shl50 = shl i64 %conv49, 16
  store i64 %shl50, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 36
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i64
  %shl53 = shl i64 %conv52, 8
  store i64 %shl53, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %40, i64 35
  %41 = load i8, ptr %arrayidx54, align 1
  store i8 %41, ptr %x21, align 1
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %42, i64 34
  %43 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %43 to i64
  %shl57 = shl i64 %conv56, 48
  store i64 %shl57, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %44, i64 33
  %45 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %45 to i64
  %shl60 = shl i64 %conv59, 40
  store i64 %shl60, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %46, i64 32
  %47 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %47 to i64
  %shl63 = shl i64 %conv62, 32
  store i64 %shl63, ptr %x24, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %48, i64 31
  %49 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %49 to i64
  %shl66 = shl i64 %conv65, 24
  store i64 %shl66, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %50, i64 30
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i64
  %shl69 = shl i64 %conv68, 16
  store i64 %shl69, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 29
  %53 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %53 to i64
  %shl72 = shl i64 %conv71, 8
  store i64 %shl72, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %54, i64 28
  %55 = load i8, ptr %arrayidx73, align 1
  store i8 %55, ptr %x28, align 1
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %56, i64 27
  %57 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %57 to i64
  %shl76 = shl i64 %conv75, 48
  store i64 %shl76, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %58, i64 26
  %59 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %59 to i64
  %shl79 = shl i64 %conv78, 40
  store i64 %shl79, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %60, i64 25
  %61 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %61 to i64
  %shl82 = shl i64 %conv81, 32
  store i64 %shl82, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %62, i64 24
  %63 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %63 to i64
  %shl85 = shl i64 %conv84, 24
  store i64 %shl85, ptr %x32, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %64, i64 23
  %65 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %65 to i64
  %shl88 = shl i64 %conv87, 16
  store i64 %shl88, ptr %x33, align 8
  %66 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %66, i64 22
  %67 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %67 to i64
  %shl91 = shl i64 %conv90, 8
  store i64 %shl91, ptr %x34, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %68, i64 21
  %69 = load i8, ptr %arrayidx92, align 1
  store i8 %69, ptr %x35, align 1
  %70 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %70, i64 20
  %71 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %71 to i64
  %shl95 = shl i64 %conv94, 48
  store i64 %shl95, ptr %x36, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %72, i64 19
  %73 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %73 to i64
  %shl98 = shl i64 %conv97, 40
  store i64 %shl98, ptr %x37, align 8
  %74 = load ptr, ptr %arg1.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %74, i64 18
  %75 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %75 to i64
  %shl101 = shl i64 %conv100, 32
  store i64 %shl101, ptr %x38, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %76, i64 17
  %77 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %77 to i64
  %shl104 = shl i64 %conv103, 24
  store i64 %shl104, ptr %x39, align 8
  %78 = load ptr, ptr %arg1.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %78, i64 16
  %79 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %79 to i64
  %shl107 = shl i64 %conv106, 16
  store i64 %shl107, ptr %x40, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %80, i64 15
  %81 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %81 to i64
  %shl110 = shl i64 %conv109, 8
  store i64 %shl110, ptr %x41, align 8
  %82 = load ptr, ptr %arg1.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %82, i64 14
  %83 = load i8, ptr %arrayidx111, align 1
  store i8 %83, ptr %x42, align 1
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %84, i64 13
  %85 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %85 to i64
  %shl114 = shl i64 %conv113, 48
  store i64 %shl114, ptr %x43, align 8
  %86 = load ptr, ptr %arg1.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %86, i64 12
  %87 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %87 to i64
  %shl117 = shl i64 %conv116, 40
  store i64 %shl117, ptr %x44, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %88, i64 11
  %89 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %89 to i64
  %shl120 = shl i64 %conv119, 32
  store i64 %shl120, ptr %x45, align 8
  %90 = load ptr, ptr %arg1.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %90, i64 10
  %91 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %91 to i64
  %shl123 = shl i64 %conv122, 24
  store i64 %shl123, ptr %x46, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %92, i64 9
  %93 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %93 to i64
  %shl126 = shl i64 %conv125, 16
  store i64 %shl126, ptr %x47, align 8
  %94 = load ptr, ptr %arg1.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %94, i64 8
  %95 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %95 to i64
  %shl129 = shl i64 %conv128, 8
  store i64 %shl129, ptr %x48, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %96, i64 7
  %97 = load i8, ptr %arrayidx130, align 1
  store i8 %97, ptr %x49, align 1
  %98 = load ptr, ptr %arg1.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %98, i64 6
  %99 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %99 to i64
  %shl133 = shl i64 %conv132, 48
  store i64 %shl133, ptr %x50, align 8
  %100 = load ptr, ptr %arg1.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %100, i64 5
  %101 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %101 to i64
  %shl136 = shl i64 %conv135, 40
  store i64 %shl136, ptr %x51, align 8
  %102 = load ptr, ptr %arg1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %102, i64 4
  %103 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %103 to i64
  %shl139 = shl i64 %conv138, 32
  store i64 %shl139, ptr %x52, align 8
  %104 = load ptr, ptr %arg1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %104, i64 3
  %105 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %105 to i64
  %shl142 = shl i64 %conv141, 24
  store i64 %shl142, ptr %x53, align 8
  %106 = load ptr, ptr %arg1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %106, i64 2
  %107 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %107 to i64
  %shl145 = shl i64 %conv144, 16
  store i64 %shl145, ptr %x54, align 8
  %108 = load ptr, ptr %arg1.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %108, i64 1
  %109 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %109 to i64
  %shl148 = shl i64 %conv147, 8
  store i64 %shl148, ptr %x55, align 8
  %110 = load ptr, ptr %arg1.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %110, i64 0
  %111 = load i8, ptr %arrayidx149, align 1
  store i8 %111, ptr %x56, align 1
  %112 = load i64, ptr %x55, align 8
  %113 = load i8, ptr %x56, align 1
  %conv150 = zext i8 %113 to i64
  %add = add i64 %112, %conv150
  store i64 %add, ptr %x57, align 8
  %114 = load i64, ptr %x54, align 8
  %115 = load i64, ptr %x57, align 8
  %add151 = add i64 %114, %115
  store i64 %add151, ptr %x58, align 8
  %116 = load i64, ptr %x53, align 8
  %117 = load i64, ptr %x58, align 8
  %add152 = add i64 %116, %117
  store i64 %add152, ptr %x59, align 8
  %118 = load i64, ptr %x52, align 8
  %119 = load i64, ptr %x59, align 8
  %add153 = add i64 %118, %119
  store i64 %add153, ptr %x60, align 8
  %120 = load i64, ptr %x51, align 8
  %121 = load i64, ptr %x60, align 8
  %add154 = add i64 %120, %121
  store i64 %add154, ptr %x61, align 8
  %122 = load i64, ptr %x50, align 8
  %123 = load i64, ptr %x61, align 8
  %add155 = add i64 %122, %123
  store i64 %add155, ptr %x62, align 8
  %124 = load i64, ptr %x48, align 8
  %125 = load i8, ptr %x49, align 1
  %conv156 = zext i8 %125 to i64
  %add157 = add i64 %124, %conv156
  store i64 %add157, ptr %x63, align 8
  %126 = load i64, ptr %x47, align 8
  %127 = load i64, ptr %x63, align 8
  %add158 = add i64 %126, %127
  store i64 %add158, ptr %x64, align 8
  %128 = load i64, ptr %x46, align 8
  %129 = load i64, ptr %x64, align 8
  %add159 = add i64 %128, %129
  store i64 %add159, ptr %x65, align 8
  %130 = load i64, ptr %x45, align 8
  %131 = load i64, ptr %x65, align 8
  %add160 = add i64 %130, %131
  store i64 %add160, ptr %x66, align 8
  %132 = load i64, ptr %x44, align 8
  %133 = load i64, ptr %x66, align 8
  %add161 = add i64 %132, %133
  store i64 %add161, ptr %x67, align 8
  %134 = load i64, ptr %x43, align 8
  %135 = load i64, ptr %x67, align 8
  %add162 = add i64 %134, %135
  store i64 %add162, ptr %x68, align 8
  %136 = load i64, ptr %x41, align 8
  %137 = load i8, ptr %x42, align 1
  %conv163 = zext i8 %137 to i64
  %add164 = add i64 %136, %conv163
  store i64 %add164, ptr %x69, align 8
  %138 = load i64, ptr %x40, align 8
  %139 = load i64, ptr %x69, align 8
  %add165 = add i64 %138, %139
  store i64 %add165, ptr %x70, align 8
  %140 = load i64, ptr %x39, align 8
  %141 = load i64, ptr %x70, align 8
  %add166 = add i64 %140, %141
  store i64 %add166, ptr %x71, align 8
  %142 = load i64, ptr %x38, align 8
  %143 = load i64, ptr %x71, align 8
  %add167 = add i64 %142, %143
  store i64 %add167, ptr %x72, align 8
  %144 = load i64, ptr %x37, align 8
  %145 = load i64, ptr %x72, align 8
  %add168 = add i64 %144, %145
  store i64 %add168, ptr %x73, align 8
  %146 = load i64, ptr %x36, align 8
  %147 = load i64, ptr %x73, align 8
  %add169 = add i64 %146, %147
  store i64 %add169, ptr %x74, align 8
  %148 = load i64, ptr %x34, align 8
  %149 = load i8, ptr %x35, align 1
  %conv170 = zext i8 %149 to i64
  %add171 = add i64 %148, %conv170
  store i64 %add171, ptr %x75, align 8
  %150 = load i64, ptr %x33, align 8
  %151 = load i64, ptr %x75, align 8
  %add172 = add i64 %150, %151
  store i64 %add172, ptr %x76, align 8
  %152 = load i64, ptr %x32, align 8
  %153 = load i64, ptr %x76, align 8
  %add173 = add i64 %152, %153
  store i64 %add173, ptr %x77, align 8
  %154 = load i64, ptr %x31, align 8
  %155 = load i64, ptr %x77, align 8
  %add174 = add i64 %154, %155
  store i64 %add174, ptr %x78, align 8
  %156 = load i64, ptr %x30, align 8
  %157 = load i64, ptr %x78, align 8
  %add175 = add i64 %156, %157
  store i64 %add175, ptr %x79, align 8
  %158 = load i64, ptr %x29, align 8
  %159 = load i64, ptr %x79, align 8
  %add176 = add i64 %158, %159
  store i64 %add176, ptr %x80, align 8
  %160 = load i64, ptr %x27, align 8
  %161 = load i8, ptr %x28, align 1
  %conv177 = zext i8 %161 to i64
  %add178 = add i64 %160, %conv177
  store i64 %add178, ptr %x81, align 8
  %162 = load i64, ptr %x26, align 8
  %163 = load i64, ptr %x81, align 8
  %add179 = add i64 %162, %163
  store i64 %add179, ptr %x82, align 8
  %164 = load i64, ptr %x25, align 8
  %165 = load i64, ptr %x82, align 8
  %add180 = add i64 %164, %165
  store i64 %add180, ptr %x83, align 8
  %166 = load i64, ptr %x24, align 8
  %167 = load i64, ptr %x83, align 8
  %add181 = add i64 %166, %167
  store i64 %add181, ptr %x84, align 8
  %168 = load i64, ptr %x23, align 8
  %169 = load i64, ptr %x84, align 8
  %add182 = add i64 %168, %169
  store i64 %add182, ptr %x85, align 8
  %170 = load i64, ptr %x22, align 8
  %171 = load i64, ptr %x85, align 8
  %add183 = add i64 %170, %171
  store i64 %add183, ptr %x86, align 8
  %172 = load i64, ptr %x20, align 8
  %173 = load i8, ptr %x21, align 1
  %conv184 = zext i8 %173 to i64
  %add185 = add i64 %172, %conv184
  store i64 %add185, ptr %x87, align 8
  %174 = load i64, ptr %x19, align 8
  %175 = load i64, ptr %x87, align 8
  %add186 = add i64 %174, %175
  store i64 %add186, ptr %x88, align 8
  %176 = load i64, ptr %x18, align 8
  %177 = load i64, ptr %x88, align 8
  %add187 = add i64 %176, %177
  store i64 %add187, ptr %x89, align 8
  %178 = load i64, ptr %x17, align 8
  %179 = load i64, ptr %x89, align 8
  %add188 = add i64 %178, %179
  store i64 %add188, ptr %x90, align 8
  %180 = load i64, ptr %x16, align 8
  %181 = load i64, ptr %x90, align 8
  %add189 = add i64 %180, %181
  store i64 %add189, ptr %x91, align 8
  %182 = load i64, ptr %x15, align 8
  %183 = load i64, ptr %x91, align 8
  %add190 = add i64 %182, %183
  store i64 %add190, ptr %x92, align 8
  %184 = load i64, ptr %x13, align 8
  %185 = load i8, ptr %x14, align 1
  %conv191 = zext i8 %185 to i64
  %add192 = add i64 %184, %conv191
  store i64 %add192, ptr %x93, align 8
  %186 = load i64, ptr %x12, align 8
  %187 = load i64, ptr %x93, align 8
  %add193 = add i64 %186, %187
  store i64 %add193, ptr %x94, align 8
  %188 = load i64, ptr %x11, align 8
  %189 = load i64, ptr %x94, align 8
  %add194 = add i64 %188, %189
  store i64 %add194, ptr %x95, align 8
  %190 = load i64, ptr %x10, align 8
  %191 = load i64, ptr %x95, align 8
  %add195 = add i64 %190, %191
  store i64 %add195, ptr %x96, align 8
  %192 = load i64, ptr %x9, align 8
  %193 = load i64, ptr %x96, align 8
  %add196 = add i64 %192, %193
  store i64 %add196, ptr %x97, align 8
  %194 = load i64, ptr %x8, align 8
  %195 = load i64, ptr %x97, align 8
  %add197 = add i64 %194, %195
  store i64 %add197, ptr %x98, align 8
  %196 = load i64, ptr %x6, align 8
  %197 = load i8, ptr %x7, align 1
  %conv198 = zext i8 %197 to i64
  %add199 = add i64 %196, %conv198
  store i64 %add199, ptr %x99, align 8
  %198 = load i64, ptr %x5, align 8
  %199 = load i64, ptr %x99, align 8
  %add200 = add i64 %198, %199
  store i64 %add200, ptr %x100, align 8
  %200 = load i64, ptr %x4, align 8
  %201 = load i64, ptr %x100, align 8
  %add201 = add i64 %200, %201
  store i64 %add201, ptr %x101, align 8
  %202 = load i64, ptr %x3, align 8
  %203 = load i64, ptr %x101, align 8
  %add202 = add i64 %202, %203
  store i64 %add202, ptr %x102, align 8
  %204 = load i64, ptr %x2, align 8
  %205 = load i64, ptr %x102, align 8
  %add203 = add i64 %204, %205
  store i64 %add203, ptr %x103, align 8
  %206 = load i64, ptr %x1, align 8
  %207 = load i64, ptr %x103, align 8
  %add204 = add i64 %206, %207
  store i64 %add204, ptr %x104, align 8
  %208 = load i64, ptr %x62, align 8
  %209 = load ptr, ptr %out1.addr, align 8
  %arrayidx205 = getelementptr inbounds i64, ptr %209, i64 0
  store i64 %208, ptr %arrayidx205, align 8
  %210 = load i64, ptr %x68, align 8
  %211 = load ptr, ptr %out1.addr, align 8
  %arrayidx206 = getelementptr inbounds i64, ptr %211, i64 1
  store i64 %210, ptr %arrayidx206, align 8
  %212 = load i64, ptr %x74, align 8
  %213 = load ptr, ptr %out1.addr, align 8
  %arrayidx207 = getelementptr inbounds i64, ptr %213, i64 2
  store i64 %212, ptr %arrayidx207, align 8
  %214 = load i64, ptr %x80, align 8
  %215 = load ptr, ptr %out1.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %215, i64 3
  store i64 %214, ptr %arrayidx208, align 8
  %216 = load i64, ptr %x86, align 8
  %217 = load ptr, ptr %out1.addr, align 8
  %arrayidx209 = getelementptr inbounds i64, ptr %217, i64 4
  store i64 %216, ptr %arrayidx209, align 8
  %218 = load i64, ptr %x92, align 8
  %219 = load ptr, ptr %out1.addr, align 8
  %arrayidx210 = getelementptr inbounds i64, ptr %219, i64 5
  store i64 %218, ptr %arrayidx210, align 8
  %220 = load i64, ptr %x98, align 8
  %221 = load ptr, ptr %out1.addr, align 8
  %arrayidx211 = getelementptr inbounds i64, ptr %221, i64 6
  store i64 %220, ptr %arrayidx211, align 8
  %222 = load i64, ptr %x104, align 8
  %223 = load ptr, ptr %out1.addr, align 8
  %arrayidx212 = getelementptr inbounds i64, ptr %223, i64 7
  store i64 %222, ptr %arrayidx212, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_p448_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %16 = load i64, ptr %x1, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %17, i64 0
  store i64 %16, ptr %arrayidx8, align 8
  %18 = load i64, ptr %x2, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %18, ptr %arrayidx9, align 8
  %20 = load i64, ptr %x3, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %21, i64 2
  store i64 %20, ptr %arrayidx10, align 8
  %22 = load i64, ptr %x4, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %23, i64 3
  store i64 %22, ptr %arrayidx11, align 8
  %24 = load i64, ptr %x5, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %25, i64 4
  store i64 %24, ptr %arrayidx12, align 8
  %26 = load i64, ptr %x6, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %27, i64 5
  store i64 %26, ptr %arrayidx13, align 8
  %28 = load i64, ptr %x7, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %29, i64 6
  store i64 %28, ptr %arrayidx14, align 8
  %30 = load i64, ptr %x8, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %31, i64 7
  store i64 %30, ptr %arrayidx15, align 8
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
!6 = !{i64 3321}
