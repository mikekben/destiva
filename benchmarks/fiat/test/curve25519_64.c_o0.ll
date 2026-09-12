; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_25519_value_barrier_u64(i64 noundef %a) #0 {
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
define dso_local void @fiat_25519_addcarryx_u51(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %and = and i64 %3, 2251799813685247
  store i64 %and, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 51
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
define dso_local void @fiat_25519_subborrowx_u51(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %shr = ashr i64 %3, 51
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 2251799813685247
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
define dso_local void @fiat_25519_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %call = call i64 @fiat_25519_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_25519_value_barrier_u64(i64 noundef %not)
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
define dso_local void @fiat_25519_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i128, align 16
  %x30 = alloca i128, align 16
  %x31 = alloca i128, align 16
  %x32 = alloca i128, align 16
  %x33 = alloca i128, align 16
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i128, align 16
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i128, align 16
  %x40 = alloca i64, align 8
  %x41 = alloca i64, align 8
  %x42 = alloca i128, align 16
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i64, align 8
  %x48 = alloca i64, align 8
  %x49 = alloca i64, align 8
  %x50 = alloca i8, align 1
  %x51 = alloca i64, align 8
  %x52 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 4
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 4
  %3 = load i64, ptr %arrayidx1, align 8
  %mul = mul i64 %3, 19
  %conv2 = zext i64 %mul to i128
  %mul3 = mul i128 %conv, %conv2
  store i128 %mul3, ptr %x1, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 4
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx6, align 8
  %mul7 = mul i64 %7, 19
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul i128 %conv5, %conv8
  store i128 %mul9, ptr %x2, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx12, align 8
  %mul13 = mul i64 %11, 19
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul i128 %conv11, %conv14
  store i128 %mul15, ptr %x3, align 16
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx16, align 8
  %conv17 = zext i64 %13 to i128
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %14, i64 1
  %15 = load i64, ptr %arrayidx18, align 8
  %mul19 = mul i64 %15, 19
  %conv20 = zext i64 %mul19 to i128
  %mul21 = mul i128 %conv17, %conv20
  store i128 %mul21, ptr %x4, align 16
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx22, align 8
  %conv23 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx24, align 8
  %mul25 = mul i64 %19, 19
  %conv26 = zext i64 %mul25 to i128
  %mul27 = mul i128 %conv23, %conv26
  store i128 %mul27, ptr %x5, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %20, i64 3
  %21 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %21 to i128
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %22, i64 3
  %23 = load i64, ptr %arrayidx30, align 8
  %mul31 = mul i64 %23, 19
  %conv32 = zext i64 %mul31 to i128
  %mul33 = mul i128 %conv29, %conv32
  store i128 %mul33, ptr %x6, align 16
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %24, i64 3
  %25 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, ptr %26, i64 2
  %27 = load i64, ptr %arrayidx36, align 8
  %mul37 = mul i64 %27, 19
  %conv38 = zext i64 %mul37 to i128
  %mul39 = mul i128 %conv35, %conv38
  store i128 %mul39, ptr %x7, align 16
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, ptr %28, i64 2
  %29 = load i64, ptr %arrayidx40, align 8
  %conv41 = zext i64 %29 to i128
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %30, i64 4
  %31 = load i64, ptr %arrayidx42, align 8
  %mul43 = mul i64 %31, 19
  %conv44 = zext i64 %mul43 to i128
  %mul45 = mul i128 %conv41, %conv44
  store i128 %mul45, ptr %x8, align 16
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %32, i64 2
  %33 = load i64, ptr %arrayidx46, align 8
  %conv47 = zext i64 %33 to i128
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i64, ptr %34, i64 3
  %35 = load i64, ptr %arrayidx48, align 8
  %mul49 = mul i64 %35, 19
  %conv50 = zext i64 %mul49 to i128
  %mul51 = mul i128 %conv47, %conv50
  store i128 %mul51, ptr %x9, align 16
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %36, i64 1
  %37 = load i64, ptr %arrayidx52, align 8
  %conv53 = zext i64 %37 to i128
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %38, i64 4
  %39 = load i64, ptr %arrayidx54, align 8
  %mul55 = mul i64 %39, 19
  %conv56 = zext i64 %mul55 to i128
  %mul57 = mul i128 %conv53, %conv56
  store i128 %mul57, ptr %x10, align 16
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %40, i64 4
  %41 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %42, i64 0
  %43 = load i64, ptr %arrayidx60, align 8
  %conv61 = zext i64 %43 to i128
  %mul62 = mul i128 %conv59, %conv61
  store i128 %mul62, ptr %x11, align 16
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, ptr %44, i64 3
  %45 = load i64, ptr %arrayidx63, align 8
  %conv64 = zext i64 %45 to i128
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i64, ptr %46, i64 1
  %47 = load i64, ptr %arrayidx65, align 8
  %conv66 = zext i64 %47 to i128
  %mul67 = mul i128 %conv64, %conv66
  store i128 %mul67, ptr %x12, align 16
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %48, i64 3
  %49 = load i64, ptr %arrayidx68, align 8
  %conv69 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %50, i64 0
  %51 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %51 to i128
  %mul72 = mul i128 %conv69, %conv71
  store i128 %mul72, ptr %x13, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i64, ptr %52, i64 2
  %53 = load i64, ptr %arrayidx73, align 8
  %conv74 = zext i64 %53 to i128
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %54, i64 2
  %55 = load i64, ptr %arrayidx75, align 8
  %conv76 = zext i64 %55 to i128
  %mul77 = mul i128 %conv74, %conv76
  store i128 %mul77, ptr %x14, align 16
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %56, i64 2
  %57 = load i64, ptr %arrayidx78, align 8
  %conv79 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %58, i64 1
  %59 = load i64, ptr %arrayidx80, align 8
  %conv81 = zext i64 %59 to i128
  %mul82 = mul i128 %conv79, %conv81
  store i128 %mul82, ptr %x15, align 16
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i64, ptr %60, i64 2
  %61 = load i64, ptr %arrayidx83, align 8
  %conv84 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i64, ptr %62, i64 0
  %63 = load i64, ptr %arrayidx85, align 8
  %conv86 = zext i64 %63 to i128
  %mul87 = mul i128 %conv84, %conv86
  store i128 %mul87, ptr %x16, align 16
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %64, i64 1
  %65 = load i64, ptr %arrayidx88, align 8
  %conv89 = zext i64 %65 to i128
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i64, ptr %66, i64 3
  %67 = load i64, ptr %arrayidx90, align 8
  %conv91 = zext i64 %67 to i128
  %mul92 = mul i128 %conv89, %conv91
  store i128 %mul92, ptr %x17, align 16
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i64, ptr %68, i64 1
  %69 = load i64, ptr %arrayidx93, align 8
  %conv94 = zext i64 %69 to i128
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i64, ptr %70, i64 2
  %71 = load i64, ptr %arrayidx95, align 8
  %conv96 = zext i64 %71 to i128
  %mul97 = mul i128 %conv94, %conv96
  store i128 %mul97, ptr %x18, align 16
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i64, ptr %72, i64 1
  %73 = load i64, ptr %arrayidx98, align 8
  %conv99 = zext i64 %73 to i128
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %74, i64 1
  %75 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %75 to i128
  %mul102 = mul i128 %conv99, %conv101
  store i128 %mul102, ptr %x19, align 16
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i64, ptr %76, i64 1
  %77 = load i64, ptr %arrayidx103, align 8
  %conv104 = zext i64 %77 to i128
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i64, ptr %78, i64 0
  %79 = load i64, ptr %arrayidx105, align 8
  %conv106 = zext i64 %79 to i128
  %mul107 = mul i128 %conv104, %conv106
  store i128 %mul107, ptr %x20, align 16
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i64, ptr %80, i64 0
  %81 = load i64, ptr %arrayidx108, align 8
  %conv109 = zext i64 %81 to i128
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i64, ptr %82, i64 4
  %83 = load i64, ptr %arrayidx110, align 8
  %conv111 = zext i64 %83 to i128
  %mul112 = mul i128 %conv109, %conv111
  store i128 %mul112, ptr %x21, align 16
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %84, i64 0
  %85 = load i64, ptr %arrayidx113, align 8
  %conv114 = zext i64 %85 to i128
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx115 = getelementptr inbounds i64, ptr %86, i64 3
  %87 = load i64, ptr %arrayidx115, align 8
  %conv116 = zext i64 %87 to i128
  %mul117 = mul i128 %conv114, %conv116
  store i128 %mul117, ptr %x22, align 16
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i64, ptr %88, i64 0
  %89 = load i64, ptr %arrayidx118, align 8
  %conv119 = zext i64 %89 to i128
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %90, i64 2
  %91 = load i64, ptr %arrayidx120, align 8
  %conv121 = zext i64 %91 to i128
  %mul122 = mul i128 %conv119, %conv121
  store i128 %mul122, ptr %x23, align 16
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %92, i64 0
  %93 = load i64, ptr %arrayidx123, align 8
  %conv124 = zext i64 %93 to i128
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i64, ptr %94, i64 1
  %95 = load i64, ptr %arrayidx125, align 8
  %conv126 = zext i64 %95 to i128
  %mul127 = mul i128 %conv124, %conv126
  store i128 %mul127, ptr %x24, align 16
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %96, i64 0
  %97 = load i64, ptr %arrayidx128, align 8
  %conv129 = zext i64 %97 to i128
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i64, ptr %98, i64 0
  %99 = load i64, ptr %arrayidx130, align 8
  %conv131 = zext i64 %99 to i128
  %mul132 = mul i128 %conv129, %conv131
  store i128 %mul132, ptr %x25, align 16
  %100 = load i128, ptr %x25, align 16
  %101 = load i128, ptr %x10, align 16
  %102 = load i128, ptr %x9, align 16
  %103 = load i128, ptr %x7, align 16
  %104 = load i128, ptr %x4, align 16
  %add = add i128 %103, %104
  %add133 = add i128 %102, %add
  %add134 = add i128 %101, %add133
  %add135 = add i128 %100, %add134
  store i128 %add135, ptr %x26, align 16
  %105 = load i128, ptr %x26, align 16
  %shr = lshr i128 %105, 51
  %conv136 = trunc i128 %shr to i64
  store i64 %conv136, ptr %x27, align 8
  %106 = load i128, ptr %x26, align 16
  %and = and i128 %106, 2251799813685247
  %conv137 = trunc i128 %and to i64
  store i64 %conv137, ptr %x28, align 8
  %107 = load i128, ptr %x21, align 16
  %108 = load i128, ptr %x17, align 16
  %109 = load i128, ptr %x14, align 16
  %110 = load i128, ptr %x12, align 16
  %111 = load i128, ptr %x11, align 16
  %add138 = add i128 %110, %111
  %add139 = add i128 %109, %add138
  %add140 = add i128 %108, %add139
  %add141 = add i128 %107, %add140
  store i128 %add141, ptr %x29, align 16
  %112 = load i128, ptr %x22, align 16
  %113 = load i128, ptr %x18, align 16
  %114 = load i128, ptr %x15, align 16
  %115 = load i128, ptr %x13, align 16
  %116 = load i128, ptr %x1, align 16
  %add142 = add i128 %115, %116
  %add143 = add i128 %114, %add142
  %add144 = add i128 %113, %add143
  %add145 = add i128 %112, %add144
  store i128 %add145, ptr %x30, align 16
  %117 = load i128, ptr %x23, align 16
  %118 = load i128, ptr %x19, align 16
  %119 = load i128, ptr %x16, align 16
  %120 = load i128, ptr %x5, align 16
  %121 = load i128, ptr %x2, align 16
  %add146 = add i128 %120, %121
  %add147 = add i128 %119, %add146
  %add148 = add i128 %118, %add147
  %add149 = add i128 %117, %add148
  store i128 %add149, ptr %x31, align 16
  %122 = load i128, ptr %x24, align 16
  %123 = load i128, ptr %x20, align 16
  %124 = load i128, ptr %x8, align 16
  %125 = load i128, ptr %x6, align 16
  %126 = load i128, ptr %x3, align 16
  %add150 = add i128 %125, %126
  %add151 = add i128 %124, %add150
  %add152 = add i128 %123, %add151
  %add153 = add i128 %122, %add152
  store i128 %add153, ptr %x32, align 16
  %127 = load i64, ptr %x27, align 8
  %conv154 = zext i64 %127 to i128
  %128 = load i128, ptr %x32, align 16
  %add155 = add i128 %conv154, %128
  store i128 %add155, ptr %x33, align 16
  %129 = load i128, ptr %x33, align 16
  %shr156 = lshr i128 %129, 51
  %conv157 = trunc i128 %shr156 to i64
  store i64 %conv157, ptr %x34, align 8
  %130 = load i128, ptr %x33, align 16
  %and158 = and i128 %130, 2251799813685247
  %conv159 = trunc i128 %and158 to i64
  store i64 %conv159, ptr %x35, align 8
  %131 = load i64, ptr %x34, align 8
  %conv160 = zext i64 %131 to i128
  %132 = load i128, ptr %x31, align 16
  %add161 = add i128 %conv160, %132
  store i128 %add161, ptr %x36, align 16
  %133 = load i128, ptr %x36, align 16
  %shr162 = lshr i128 %133, 51
  %conv163 = trunc i128 %shr162 to i64
  store i64 %conv163, ptr %x37, align 8
  %134 = load i128, ptr %x36, align 16
  %and164 = and i128 %134, 2251799813685247
  %conv165 = trunc i128 %and164 to i64
  store i64 %conv165, ptr %x38, align 8
  %135 = load i64, ptr %x37, align 8
  %conv166 = zext i64 %135 to i128
  %136 = load i128, ptr %x30, align 16
  %add167 = add i128 %conv166, %136
  store i128 %add167, ptr %x39, align 16
  %137 = load i128, ptr %x39, align 16
  %shr168 = lshr i128 %137, 51
  %conv169 = trunc i128 %shr168 to i64
  store i64 %conv169, ptr %x40, align 8
  %138 = load i128, ptr %x39, align 16
  %and170 = and i128 %138, 2251799813685247
  %conv171 = trunc i128 %and170 to i64
  store i64 %conv171, ptr %x41, align 8
  %139 = load i64, ptr %x40, align 8
  %conv172 = zext i64 %139 to i128
  %140 = load i128, ptr %x29, align 16
  %add173 = add i128 %conv172, %140
  store i128 %add173, ptr %x42, align 16
  %141 = load i128, ptr %x42, align 16
  %shr174 = lshr i128 %141, 51
  %conv175 = trunc i128 %shr174 to i64
  store i64 %conv175, ptr %x43, align 8
  %142 = load i128, ptr %x42, align 16
  %and176 = and i128 %142, 2251799813685247
  %conv177 = trunc i128 %and176 to i64
  store i64 %conv177, ptr %x44, align 8
  %143 = load i64, ptr %x43, align 8
  %mul178 = mul i64 %143, 19
  store i64 %mul178, ptr %x45, align 8
  %144 = load i64, ptr %x28, align 8
  %145 = load i64, ptr %x45, align 8
  %add179 = add i64 %144, %145
  store i64 %add179, ptr %x46, align 8
  %146 = load i64, ptr %x46, align 8
  %shr180 = lshr i64 %146, 51
  store i64 %shr180, ptr %x47, align 8
  %147 = load i64, ptr %x46, align 8
  %and181 = and i64 %147, 2251799813685247
  store i64 %and181, ptr %x48, align 8
  %148 = load i64, ptr %x47, align 8
  %149 = load i64, ptr %x35, align 8
  %add182 = add i64 %148, %149
  store i64 %add182, ptr %x49, align 8
  %150 = load i64, ptr %x49, align 8
  %shr183 = lshr i64 %150, 51
  %conv184 = trunc i64 %shr183 to i8
  store i8 %conv184, ptr %x50, align 1
  %151 = load i64, ptr %x49, align 8
  %and185 = and i64 %151, 2251799813685247
  store i64 %and185, ptr %x51, align 8
  %152 = load i8, ptr %x50, align 1
  %conv186 = zext i8 %152 to i64
  %153 = load i64, ptr %x38, align 8
  %add187 = add i64 %conv186, %153
  store i64 %add187, ptr %x52, align 8
  %154 = load i64, ptr %x48, align 8
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx188 = getelementptr inbounds i64, ptr %155, i64 0
  store i64 %154, ptr %arrayidx188, align 8
  %156 = load i64, ptr %x51, align 8
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx189 = getelementptr inbounds i64, ptr %157, i64 1
  store i64 %156, ptr %arrayidx189, align 8
  %158 = load i64, ptr %x52, align 8
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %159, i64 2
  store i64 %158, ptr %arrayidx190, align 8
  %160 = load i64, ptr %x41, align 8
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx191 = getelementptr inbounds i64, ptr %161, i64 3
  store i64 %160, ptr %arrayidx191, align 8
  %162 = load i64, ptr %x44, align 8
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx192 = getelementptr inbounds i64, ptr %163, i64 4
  store i64 %162, ptr %arrayidx192, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i128, align 16
  %x28 = alloca i128, align 16
  %x29 = alloca i128, align 16
  %x30 = alloca i128, align 16
  %x31 = alloca i128, align 16
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i128, align 16
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i128, align 16
  %x38 = alloca i64, align 8
  %x39 = alloca i64, align 8
  %x40 = alloca i128, align 16
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 4
  %1 = load i64, ptr %arrayidx, align 8
  %mul = mul i64 %1, 19
  store i64 %mul, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %mul1 = mul i64 %2, 2
  store i64 %mul1, ptr %x2, align 8
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %3, i64 4
  %4 = load i64, ptr %arrayidx2, align 8
  %mul3 = mul i64 %4, 2
  store i64 %mul3, ptr %x3, align 8
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %5, i64 3
  %6 = load i64, ptr %arrayidx4, align 8
  %mul5 = mul i64 %6, 19
  store i64 %mul5, ptr %x4, align 8
  %7 = load i64, ptr %x4, align 8
  %mul6 = mul i64 %7, 2
  store i64 %mul6, ptr %x5, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 3
  %9 = load i64, ptr %arrayidx7, align 8
  %mul8 = mul i64 %9, 2
  store i64 %mul8, ptr %x6, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx9, align 8
  %mul10 = mul i64 %11, 2
  store i64 %mul10, ptr %x7, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 1
  %13 = load i64, ptr %arrayidx11, align 8
  %mul12 = mul i64 %13, 2
  store i64 %mul12, ptr %x8, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %14, i64 4
  %15 = load i64, ptr %arrayidx13, align 8
  %conv = zext i64 %15 to i128
  %16 = load i64, ptr %x1, align 8
  %conv14 = zext i64 %16 to i128
  %mul15 = mul i128 %conv, %conv14
  store i128 %mul15, ptr %x9, align 16
  %17 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %17, i64 3
  %18 = load i64, ptr %arrayidx16, align 8
  %conv17 = zext i64 %18 to i128
  %19 = load i64, ptr %x2, align 8
  %conv18 = zext i64 %19 to i128
  %mul19 = mul i128 %conv17, %conv18
  store i128 %mul19, ptr %x10, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %20, i64 3
  %21 = load i64, ptr %arrayidx20, align 8
  %conv21 = zext i64 %21 to i128
  %22 = load i64, ptr %x4, align 8
  %conv22 = zext i64 %22 to i128
  %mul23 = mul i128 %conv21, %conv22
  store i128 %mul23, ptr %x11, align 16
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %23, i64 2
  %24 = load i64, ptr %arrayidx24, align 8
  %conv25 = zext i64 %24 to i128
  %25 = load i64, ptr %x2, align 8
  %conv26 = zext i64 %25 to i128
  %mul27 = mul i128 %conv25, %conv26
  store i128 %mul27, ptr %x12, align 16
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %26, i64 2
  %27 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %27 to i128
  %28 = load i64, ptr %x5, align 8
  %conv30 = zext i64 %28 to i128
  %mul31 = mul i128 %conv29, %conv30
  store i128 %mul31, ptr %x13, align 16
  %29 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %29, i64 2
  %30 = load i64, ptr %arrayidx32, align 8
  %conv33 = zext i64 %30 to i128
  %31 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %31, i64 2
  %32 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %32 to i128
  %mul36 = mul i128 %conv33, %conv35
  store i128 %mul36, ptr %x14, align 16
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %33, i64 1
  %34 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %34 to i128
  %35 = load i64, ptr %x2, align 8
  %conv39 = zext i64 %35 to i128
  %mul40 = mul i128 %conv38, %conv39
  store i128 %mul40, ptr %x15, align 16
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %36, i64 1
  %37 = load i64, ptr %arrayidx41, align 8
  %conv42 = zext i64 %37 to i128
  %38 = load i64, ptr %x6, align 8
  %conv43 = zext i64 %38 to i128
  %mul44 = mul i128 %conv42, %conv43
  store i128 %mul44, ptr %x16, align 16
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i64, ptr %39, i64 1
  %40 = load i64, ptr %arrayidx45, align 8
  %conv46 = zext i64 %40 to i128
  %41 = load i64, ptr %x7, align 8
  %conv47 = zext i64 %41 to i128
  %mul48 = mul i128 %conv46, %conv47
  store i128 %mul48, ptr %x17, align 16
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %42, i64 1
  %43 = load i64, ptr %arrayidx49, align 8
  %conv50 = zext i64 %43 to i128
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %44, i64 1
  %45 = load i64, ptr %arrayidx51, align 8
  %conv52 = zext i64 %45 to i128
  %mul53 = mul i128 %conv50, %conv52
  store i128 %mul53, ptr %x18, align 16
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %46, i64 0
  %47 = load i64, ptr %arrayidx54, align 8
  %conv55 = zext i64 %47 to i128
  %48 = load i64, ptr %x3, align 8
  %conv56 = zext i64 %48 to i128
  %mul57 = mul i128 %conv55, %conv56
  store i128 %mul57, ptr %x19, align 16
  %49 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %49, i64 0
  %50 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %50 to i128
  %51 = load i64, ptr %x6, align 8
  %conv60 = zext i64 %51 to i128
  %mul61 = mul i128 %conv59, %conv60
  store i128 %mul61, ptr %x20, align 16
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %52, i64 0
  %53 = load i64, ptr %arrayidx62, align 8
  %conv63 = zext i64 %53 to i128
  %54 = load i64, ptr %x7, align 8
  %conv64 = zext i64 %54 to i128
  %mul65 = mul i128 %conv63, %conv64
  store i128 %mul65, ptr %x21, align 16
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %55, i64 0
  %56 = load i64, ptr %arrayidx66, align 8
  %conv67 = zext i64 %56 to i128
  %57 = load i64, ptr %x8, align 8
  %conv68 = zext i64 %57 to i128
  %mul69 = mul i128 %conv67, %conv68
  store i128 %mul69, ptr %x22, align 16
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %58, i64 0
  %59 = load i64, ptr %arrayidx70, align 8
  %conv71 = zext i64 %59 to i128
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %60, i64 0
  %61 = load i64, ptr %arrayidx72, align 8
  %conv73 = zext i64 %61 to i128
  %mul74 = mul i128 %conv71, %conv73
  store i128 %mul74, ptr %x23, align 16
  %62 = load i128, ptr %x23, align 16
  %63 = load i128, ptr %x15, align 16
  %64 = load i128, ptr %x13, align 16
  %add = add i128 %63, %64
  %add75 = add i128 %62, %add
  store i128 %add75, ptr %x24, align 16
  %65 = load i128, ptr %x24, align 16
  %shr = lshr i128 %65, 51
  %conv76 = trunc i128 %shr to i64
  store i64 %conv76, ptr %x25, align 8
  %66 = load i128, ptr %x24, align 16
  %and = and i128 %66, 2251799813685247
  %conv77 = trunc i128 %and to i64
  store i64 %conv77, ptr %x26, align 8
  %67 = load i128, ptr %x19, align 16
  %68 = load i128, ptr %x16, align 16
  %69 = load i128, ptr %x14, align 16
  %add78 = add i128 %68, %69
  %add79 = add i128 %67, %add78
  store i128 %add79, ptr %x27, align 16
  %70 = load i128, ptr %x20, align 16
  %71 = load i128, ptr %x17, align 16
  %72 = load i128, ptr %x9, align 16
  %add80 = add i128 %71, %72
  %add81 = add i128 %70, %add80
  store i128 %add81, ptr %x28, align 16
  %73 = load i128, ptr %x21, align 16
  %74 = load i128, ptr %x18, align 16
  %75 = load i128, ptr %x10, align 16
  %add82 = add i128 %74, %75
  %add83 = add i128 %73, %add82
  store i128 %add83, ptr %x29, align 16
  %76 = load i128, ptr %x22, align 16
  %77 = load i128, ptr %x12, align 16
  %78 = load i128, ptr %x11, align 16
  %add84 = add i128 %77, %78
  %add85 = add i128 %76, %add84
  store i128 %add85, ptr %x30, align 16
  %79 = load i64, ptr %x25, align 8
  %conv86 = zext i64 %79 to i128
  %80 = load i128, ptr %x30, align 16
  %add87 = add i128 %conv86, %80
  store i128 %add87, ptr %x31, align 16
  %81 = load i128, ptr %x31, align 16
  %shr88 = lshr i128 %81, 51
  %conv89 = trunc i128 %shr88 to i64
  store i64 %conv89, ptr %x32, align 8
  %82 = load i128, ptr %x31, align 16
  %and90 = and i128 %82, 2251799813685247
  %conv91 = trunc i128 %and90 to i64
  store i64 %conv91, ptr %x33, align 8
  %83 = load i64, ptr %x32, align 8
  %conv92 = zext i64 %83 to i128
  %84 = load i128, ptr %x29, align 16
  %add93 = add i128 %conv92, %84
  store i128 %add93, ptr %x34, align 16
  %85 = load i128, ptr %x34, align 16
  %shr94 = lshr i128 %85, 51
  %conv95 = trunc i128 %shr94 to i64
  store i64 %conv95, ptr %x35, align 8
  %86 = load i128, ptr %x34, align 16
  %and96 = and i128 %86, 2251799813685247
  %conv97 = trunc i128 %and96 to i64
  store i64 %conv97, ptr %x36, align 8
  %87 = load i64, ptr %x35, align 8
  %conv98 = zext i64 %87 to i128
  %88 = load i128, ptr %x28, align 16
  %add99 = add i128 %conv98, %88
  store i128 %add99, ptr %x37, align 16
  %89 = load i128, ptr %x37, align 16
  %shr100 = lshr i128 %89, 51
  %conv101 = trunc i128 %shr100 to i64
  store i64 %conv101, ptr %x38, align 8
  %90 = load i128, ptr %x37, align 16
  %and102 = and i128 %90, 2251799813685247
  %conv103 = trunc i128 %and102 to i64
  store i64 %conv103, ptr %x39, align 8
  %91 = load i64, ptr %x38, align 8
  %conv104 = zext i64 %91 to i128
  %92 = load i128, ptr %x27, align 16
  %add105 = add i128 %conv104, %92
  store i128 %add105, ptr %x40, align 16
  %93 = load i128, ptr %x40, align 16
  %shr106 = lshr i128 %93, 51
  %conv107 = trunc i128 %shr106 to i64
  store i64 %conv107, ptr %x41, align 8
  %94 = load i128, ptr %x40, align 16
  %and108 = and i128 %94, 2251799813685247
  %conv109 = trunc i128 %and108 to i64
  store i64 %conv109, ptr %x42, align 8
  %95 = load i64, ptr %x41, align 8
  %mul110 = mul i64 %95, 19
  store i64 %mul110, ptr %x43, align 8
  %96 = load i64, ptr %x26, align 8
  %97 = load i64, ptr %x43, align 8
  %add111 = add i64 %96, %97
  store i64 %add111, ptr %x44, align 8
  %98 = load i64, ptr %x44, align 8
  %shr112 = lshr i64 %98, 51
  store i64 %shr112, ptr %x45, align 8
  %99 = load i64, ptr %x44, align 8
  %and113 = and i64 %99, 2251799813685247
  store i64 %and113, ptr %x46, align 8
  %100 = load i64, ptr %x45, align 8
  %101 = load i64, ptr %x33, align 8
  %add114 = add i64 %100, %101
  store i64 %add114, ptr %x47, align 8
  %102 = load i64, ptr %x47, align 8
  %shr115 = lshr i64 %102, 51
  %conv116 = trunc i64 %shr115 to i8
  store i8 %conv116, ptr %x48, align 1
  %103 = load i64, ptr %x47, align 8
  %and117 = and i64 %103, 2251799813685247
  store i64 %and117, ptr %x49, align 8
  %104 = load i8, ptr %x48, align 1
  %conv118 = zext i8 %104 to i64
  %105 = load i64, ptr %x36, align 8
  %add119 = add i64 %conv118, %105
  store i64 %add119, ptr %x50, align 8
  %106 = load i64, ptr %x46, align 8
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx120 = getelementptr inbounds i64, ptr %107, i64 0
  store i64 %106, ptr %arrayidx120, align 8
  %108 = load i64, ptr %x49, align 8
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, ptr %109, i64 1
  store i64 %108, ptr %arrayidx121, align 8
  %110 = load i64, ptr %x50, align 8
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx122 = getelementptr inbounds i64, ptr %111, i64 2
  store i64 %110, ptr %arrayidx122, align 8
  %112 = load i64, ptr %x39, align 8
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %113, i64 3
  store i64 %112, ptr %arrayidx123, align 8
  %114 = load i64, ptr %x42, align 8
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx124 = getelementptr inbounds i64, ptr %115, i64 4
  store i64 %114, ptr %arrayidx124, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  store i64 %1, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %shr = lshr i64 %2, 51
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  %add = add i64 %shr, %4
  store i64 %add, ptr %x2, align 8
  %5 = load i64, ptr %x2, align 8
  %shr2 = lshr i64 %5, 51
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %shr2, %7
  store i64 %add4, ptr %x3, align 8
  %8 = load i64, ptr %x3, align 8
  %shr5 = lshr i64 %8, 51
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %shr5, %10
  store i64 %add7, ptr %x4, align 8
  %11 = load i64, ptr %x4, align 8
  %shr8 = lshr i64 %11, 51
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %shr8, %13
  store i64 %add10, ptr %x5, align 8
  %14 = load i64, ptr %x1, align 8
  %and = and i64 %14, 2251799813685247
  %15 = load i64, ptr %x5, align 8
  %shr11 = lshr i64 %15, 51
  %mul = mul i64 %shr11, 19
  %add12 = add i64 %and, %mul
  store i64 %add12, ptr %x6, align 8
  %16 = load i64, ptr %x6, align 8
  %shr13 = lshr i64 %16, 51
  %conv = trunc i64 %shr13 to i8
  %conv14 = zext i8 %conv to i64
  %17 = load i64, ptr %x2, align 8
  %and15 = and i64 %17, 2251799813685247
  %add16 = add i64 %conv14, %and15
  store i64 %add16, ptr %x7, align 8
  %18 = load i64, ptr %x6, align 8
  %and17 = and i64 %18, 2251799813685247
  store i64 %and17, ptr %x8, align 8
  %19 = load i64, ptr %x7, align 8
  %and18 = and i64 %19, 2251799813685247
  store i64 %and18, ptr %x9, align 8
  %20 = load i64, ptr %x7, align 8
  %shr19 = lshr i64 %20, 51
  %conv20 = trunc i64 %shr19 to i8
  %conv21 = zext i8 %conv20 to i64
  %21 = load i64, ptr %x3, align 8
  %and22 = and i64 %21, 2251799813685247
  %add23 = add i64 %conv21, %and22
  store i64 %add23, ptr %x10, align 8
  %22 = load i64, ptr %x4, align 8
  %and24 = and i64 %22, 2251799813685247
  store i64 %and24, ptr %x11, align 8
  %23 = load i64, ptr %x5, align 8
  %and25 = and i64 %23, 2251799813685247
  store i64 %and25, ptr %x12, align 8
  %24 = load i64, ptr %x8, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, ptr %25, i64 0
  store i64 %24, ptr %arrayidx26, align 8
  %26 = load i64, ptr %x9, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %27, i64 1
  store i64 %26, ptr %arrayidx27, align 8
  %28 = load i64, ptr %x10, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %29, i64 2
  store i64 %28, ptr %arrayidx28, align 8
  %30 = load i64, ptr %x11, align 8
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %31, i64 3
  store i64 %30, ptr %arrayidx29, align 8
  %32 = load i64, ptr %x12, align 8
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %33, i64 4
  store i64 %32, ptr %arrayidx30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
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
  %20 = load i64, ptr %x1, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %21, i64 0
  store i64 %20, ptr %arrayidx14, align 8
  %22 = load i64, ptr %x2, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 %22, ptr %arrayidx15, align 8
  %24 = load i64, ptr %x3, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %25, i64 2
  store i64 %24, ptr %arrayidx16, align 8
  %26 = load i64, ptr %x4, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %27, i64 3
  store i64 %26, ptr %arrayidx17, align 8
  %28 = load i64, ptr %x5, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %29, i64 4
  store i64 %28, ptr %arrayidx18, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %add = add i64 4503599627370458, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %sub = sub i64 %add, %3
  store i64 %sub, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %add3 = add i64 4503599627370494, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx4, align 8
  %sub5 = sub i64 %add3, %7
  store i64 %sub5, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 4503599627370494, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx8, align 8
  %sub9 = sub i64 %add7, %11
  store i64 %sub9, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %12, i64 3
  %13 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 4503599627370494, %13
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %14, i64 3
  %15 = load i64, ptr %arrayidx12, align 8
  %sub13 = sub i64 %add11, %15
  store i64 %sub13, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %16, i64 4
  %17 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 4503599627370494, %17
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i64 4
  %19 = load i64, ptr %arrayidx16, align 8
  %sub17 = sub i64 %add15, %19
  store i64 %sub17, ptr %x5, align 8
  %20 = load i64, ptr %x1, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 0
  store i64 %20, ptr %arrayidx18, align 8
  %22 = load i64, ptr %x2, align 8
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 %22, ptr %arrayidx19, align 8
  %24 = load i64, ptr %x3, align 8
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %25, i64 2
  store i64 %24, ptr %arrayidx20, align 8
  %26 = load i64, ptr %x4, align 8
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %27, i64 3
  store i64 %26, ptr %arrayidx21, align 8
  %28 = load i64, ptr %x5, align 8
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %29, i64 4
  store i64 %28, ptr %arrayidx22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %sub = sub i64 4503599627370458, %1
  store i64 %sub, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %sub2 = sub i64 4503599627370494, %3
  store i64 %sub2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx3, align 8
  %sub4 = sub i64 4503599627370494, %5
  store i64 %sub4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx5, align 8
  %sub6 = sub i64 4503599627370494, %7
  store i64 %sub6, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx7, align 8
  %sub8 = sub i64 4503599627370494, %9
  store i64 %sub8, ptr %x5, align 8
  %10 = load i64, ptr %x1, align 8
  %11 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %11, i64 0
  store i64 %10, ptr %arrayidx9, align 8
  %12 = load i64, ptr %x2, align 8
  %13 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %13, i64 1
  store i64 %12, ptr %arrayidx10, align 8
  %14 = load i64, ptr %x3, align 8
  %15 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %15, i64 2
  store i64 %14, ptr %arrayidx11, align 8
  %16 = load i64, ptr %x4, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %17, i64 3
  store i64 %16, ptr %arrayidx12, align 8
  %18 = load i64, ptr %x5, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %19, i64 4
  store i64 %18, ptr %arrayidx13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
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
  call void @fiat_25519_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_25519_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 3
  %17 = load i64, ptr %arrayidx6, align 8
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 3
  %19 = load i64, ptr %arrayidx7, align 8
  call void @fiat_25519_cmovznz_u64(ptr noundef %x4, i8 noundef zeroext %15, i64 noundef %17, i64 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 4
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 4
  %24 = load i64, ptr %arrayidx9, align 8
  call void @fiat_25519_cmovznz_u64(ptr noundef %x5, i8 noundef zeroext %20, i64 noundef %22, i64 noundef %24)
  %25 = load i64, ptr %x1, align 8
  %26 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %26, i64 0
  store i64 %25, ptr %arrayidx10, align 8
  %27 = load i64, ptr %x2, align 8
  %28 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %28, i64 1
  store i64 %27, ptr %arrayidx11, align 8
  %29 = load i64, ptr %x3, align 8
  %30 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %30, i64 2
  store i64 %29, ptr %arrayidx12, align 8
  %31 = load i64, ptr %x4, align 8
  %32 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, ptr %32, i64 3
  store i64 %31, ptr %arrayidx13, align 8
  %33 = load i64, ptr %x5, align 8
  %34 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %34, i64 4
  store i64 %33, ptr %arrayidx14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x26 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef 2251799813685229)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef %4, i64 noundef 2251799813685247)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %7, i64 noundef 2251799813685247)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 3
  %10 = load i64, ptr %arrayidx3, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i64 noundef %10, i64 noundef 2251799813685247)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 4
  %13 = load i64, ptr %arrayidx4, align 8
  call void @fiat_25519_subborrowx_u51(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i64 noundef %13, i64 noundef 2251799813685247)
  %14 = load i8, ptr %x10, align 1
  call void @fiat_25519_cmovznz_u64(ptr noundef %x11, i8 noundef zeroext %14, i64 noundef 0, i64 noundef -1)
  %15 = load i64, ptr %x1, align 8
  %16 = load i64, ptr %x11, align 8
  %and = and i64 %16, 2251799813685229
  call void @fiat_25519_addcarryx_u51(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i64 noundef %15, i64 noundef %and)
  %17 = load i8, ptr %x13, align 1
  %18 = load i64, ptr %x3, align 8
  %19 = load i64, ptr %x11, align 8
  %and5 = and i64 %19, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %17, i64 noundef %18, i64 noundef %and5)
  %20 = load i8, ptr %x15, align 1
  %21 = load i64, ptr %x5, align 8
  %22 = load i64, ptr %x11, align 8
  %and6 = and i64 %22, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %20, i64 noundef %21, i64 noundef %and6)
  %23 = load i8, ptr %x17, align 1
  %24 = load i64, ptr %x7, align 8
  %25 = load i64, ptr %x11, align 8
  %and7 = and i64 %25, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i64 noundef %24, i64 noundef %and7)
  %26 = load i8, ptr %x19, align 1
  %27 = load i64, ptr %x9, align 8
  %28 = load i64, ptr %x11, align 8
  %and8 = and i64 %28, 2251799813685247
  call void @fiat_25519_addcarryx_u51(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i64 noundef %27, i64 noundef %and8)
  %29 = load i64, ptr %x20, align 8
  %shl = shl i64 %29, 4
  store i64 %shl, ptr %x22, align 8
  %30 = load i64, ptr %x18, align 8
  %mul = mul i64 %30, 2
  store i64 %mul, ptr %x23, align 8
  %31 = load i64, ptr %x16, align 8
  %shl9 = shl i64 %31, 6
  store i64 %shl9, ptr %x24, align 8
  %32 = load i64, ptr %x14, align 8
  %shl10 = shl i64 %32, 3
  store i64 %shl10, ptr %x25, align 8
  %33 = load i64, ptr %x12, align 8
  %and11 = and i64 %33, 255
  %conv = trunc i64 %and11 to i8
  store i8 %conv, ptr %x26, align 1
  %34 = load i64, ptr %x12, align 8
  %shr = lshr i64 %34, 8
  store i64 %shr, ptr %x27, align 8
  %35 = load i64, ptr %x27, align 8
  %and12 = and i64 %35, 255
  %conv13 = trunc i64 %and12 to i8
  store i8 %conv13, ptr %x28, align 1
  %36 = load i64, ptr %x27, align 8
  %shr14 = lshr i64 %36, 8
  store i64 %shr14, ptr %x29, align 8
  %37 = load i64, ptr %x29, align 8
  %and15 = and i64 %37, 255
  %conv16 = trunc i64 %and15 to i8
  store i8 %conv16, ptr %x30, align 1
  %38 = load i64, ptr %x29, align 8
  %shr17 = lshr i64 %38, 8
  store i64 %shr17, ptr %x31, align 8
  %39 = load i64, ptr %x31, align 8
  %and18 = and i64 %39, 255
  %conv19 = trunc i64 %and18 to i8
  store i8 %conv19, ptr %x32, align 1
  %40 = load i64, ptr %x31, align 8
  %shr20 = lshr i64 %40, 8
  store i64 %shr20, ptr %x33, align 8
  %41 = load i64, ptr %x33, align 8
  %and21 = and i64 %41, 255
  %conv22 = trunc i64 %and21 to i8
  store i8 %conv22, ptr %x34, align 1
  %42 = load i64, ptr %x33, align 8
  %shr23 = lshr i64 %42, 8
  store i64 %shr23, ptr %x35, align 8
  %43 = load i64, ptr %x35, align 8
  %and24 = and i64 %43, 255
  %conv25 = trunc i64 %and24 to i8
  store i8 %conv25, ptr %x36, align 1
  %44 = load i64, ptr %x35, align 8
  %shr26 = lshr i64 %44, 8
  %conv27 = trunc i64 %shr26 to i8
  store i8 %conv27, ptr %x37, align 1
  %45 = load i64, ptr %x25, align 8
  %46 = load i8, ptr %x37, align 1
  %conv28 = zext i8 %46 to i64
  %add = add i64 %45, %conv28
  store i64 %add, ptr %x38, align 8
  %47 = load i64, ptr %x38, align 8
  %and29 = and i64 %47, 255
  %conv30 = trunc i64 %and29 to i8
  store i8 %conv30, ptr %x39, align 1
  %48 = load i64, ptr %x38, align 8
  %shr31 = lshr i64 %48, 8
  store i64 %shr31, ptr %x40, align 8
  %49 = load i64, ptr %x40, align 8
  %and32 = and i64 %49, 255
  %conv33 = trunc i64 %and32 to i8
  store i8 %conv33, ptr %x41, align 1
  %50 = load i64, ptr %x40, align 8
  %shr34 = lshr i64 %50, 8
  store i64 %shr34, ptr %x42, align 8
  %51 = load i64, ptr %x42, align 8
  %and35 = and i64 %51, 255
  %conv36 = trunc i64 %and35 to i8
  store i8 %conv36, ptr %x43, align 1
  %52 = load i64, ptr %x42, align 8
  %shr37 = lshr i64 %52, 8
  store i64 %shr37, ptr %x44, align 8
  %53 = load i64, ptr %x44, align 8
  %and38 = and i64 %53, 255
  %conv39 = trunc i64 %and38 to i8
  store i8 %conv39, ptr %x45, align 1
  %54 = load i64, ptr %x44, align 8
  %shr40 = lshr i64 %54, 8
  store i64 %shr40, ptr %x46, align 8
  %55 = load i64, ptr %x46, align 8
  %and41 = and i64 %55, 255
  %conv42 = trunc i64 %and41 to i8
  store i8 %conv42, ptr %x47, align 1
  %56 = load i64, ptr %x46, align 8
  %shr43 = lshr i64 %56, 8
  store i64 %shr43, ptr %x48, align 8
  %57 = load i64, ptr %x48, align 8
  %and44 = and i64 %57, 255
  %conv45 = trunc i64 %and44 to i8
  store i8 %conv45, ptr %x49, align 1
  %58 = load i64, ptr %x48, align 8
  %shr46 = lshr i64 %58, 8
  %conv47 = trunc i64 %shr46 to i8
  store i8 %conv47, ptr %x50, align 1
  %59 = load i64, ptr %x24, align 8
  %60 = load i8, ptr %x50, align 1
  %conv48 = zext i8 %60 to i64
  %add49 = add i64 %59, %conv48
  store i64 %add49, ptr %x51, align 8
  %61 = load i64, ptr %x51, align 8
  %and50 = and i64 %61, 255
  %conv51 = trunc i64 %and50 to i8
  store i8 %conv51, ptr %x52, align 1
  %62 = load i64, ptr %x51, align 8
  %shr52 = lshr i64 %62, 8
  store i64 %shr52, ptr %x53, align 8
  %63 = load i64, ptr %x53, align 8
  %and53 = and i64 %63, 255
  %conv54 = trunc i64 %and53 to i8
  store i8 %conv54, ptr %x54, align 1
  %64 = load i64, ptr %x53, align 8
  %shr55 = lshr i64 %64, 8
  store i64 %shr55, ptr %x55, align 8
  %65 = load i64, ptr %x55, align 8
  %and56 = and i64 %65, 255
  %conv57 = trunc i64 %and56 to i8
  store i8 %conv57, ptr %x56, align 1
  %66 = load i64, ptr %x55, align 8
  %shr58 = lshr i64 %66, 8
  store i64 %shr58, ptr %x57, align 8
  %67 = load i64, ptr %x57, align 8
  %and59 = and i64 %67, 255
  %conv60 = trunc i64 %and59 to i8
  store i8 %conv60, ptr %x58, align 1
  %68 = load i64, ptr %x57, align 8
  %shr61 = lshr i64 %68, 8
  store i64 %shr61, ptr %x59, align 8
  %69 = load i64, ptr %x59, align 8
  %and62 = and i64 %69, 255
  %conv63 = trunc i64 %and62 to i8
  store i8 %conv63, ptr %x60, align 1
  %70 = load i64, ptr %x59, align 8
  %shr64 = lshr i64 %70, 8
  store i64 %shr64, ptr %x61, align 8
  %71 = load i64, ptr %x61, align 8
  %and65 = and i64 %71, 255
  %conv66 = trunc i64 %and65 to i8
  store i8 %conv66, ptr %x62, align 1
  %72 = load i64, ptr %x61, align 8
  %shr67 = lshr i64 %72, 8
  store i64 %shr67, ptr %x63, align 8
  %73 = load i64, ptr %x63, align 8
  %and68 = and i64 %73, 255
  %conv69 = trunc i64 %and68 to i8
  store i8 %conv69, ptr %x64, align 1
  %74 = load i64, ptr %x63, align 8
  %shr70 = lshr i64 %74, 8
  %conv71 = trunc i64 %shr70 to i8
  store i8 %conv71, ptr %x65, align 1
  %75 = load i64, ptr %x23, align 8
  %76 = load i8, ptr %x65, align 1
  %conv72 = zext i8 %76 to i64
  %add73 = add i64 %75, %conv72
  store i64 %add73, ptr %x66, align 8
  %77 = load i64, ptr %x66, align 8
  %and74 = and i64 %77, 255
  %conv75 = trunc i64 %and74 to i8
  store i8 %conv75, ptr %x67, align 1
  %78 = load i64, ptr %x66, align 8
  %shr76 = lshr i64 %78, 8
  store i64 %shr76, ptr %x68, align 8
  %79 = load i64, ptr %x68, align 8
  %and77 = and i64 %79, 255
  %conv78 = trunc i64 %and77 to i8
  store i8 %conv78, ptr %x69, align 1
  %80 = load i64, ptr %x68, align 8
  %shr79 = lshr i64 %80, 8
  store i64 %shr79, ptr %x70, align 8
  %81 = load i64, ptr %x70, align 8
  %and80 = and i64 %81, 255
  %conv81 = trunc i64 %and80 to i8
  store i8 %conv81, ptr %x71, align 1
  %82 = load i64, ptr %x70, align 8
  %shr82 = lshr i64 %82, 8
  store i64 %shr82, ptr %x72, align 8
  %83 = load i64, ptr %x72, align 8
  %and83 = and i64 %83, 255
  %conv84 = trunc i64 %and83 to i8
  store i8 %conv84, ptr %x73, align 1
  %84 = load i64, ptr %x72, align 8
  %shr85 = lshr i64 %84, 8
  store i64 %shr85, ptr %x74, align 8
  %85 = load i64, ptr %x74, align 8
  %and86 = and i64 %85, 255
  %conv87 = trunc i64 %and86 to i8
  store i8 %conv87, ptr %x75, align 1
  %86 = load i64, ptr %x74, align 8
  %shr88 = lshr i64 %86, 8
  store i64 %shr88, ptr %x76, align 8
  %87 = load i64, ptr %x76, align 8
  %and89 = and i64 %87, 255
  %conv90 = trunc i64 %and89 to i8
  store i8 %conv90, ptr %x77, align 1
  %88 = load i64, ptr %x76, align 8
  %shr91 = lshr i64 %88, 8
  %conv92 = trunc i64 %shr91 to i8
  store i8 %conv92, ptr %x78, align 1
  %89 = load i64, ptr %x22, align 8
  %90 = load i8, ptr %x78, align 1
  %conv93 = zext i8 %90 to i64
  %add94 = add i64 %89, %conv93
  store i64 %add94, ptr %x79, align 8
  %91 = load i64, ptr %x79, align 8
  %and95 = and i64 %91, 255
  %conv96 = trunc i64 %and95 to i8
  store i8 %conv96, ptr %x80, align 1
  %92 = load i64, ptr %x79, align 8
  %shr97 = lshr i64 %92, 8
  store i64 %shr97, ptr %x81, align 8
  %93 = load i64, ptr %x81, align 8
  %and98 = and i64 %93, 255
  %conv99 = trunc i64 %and98 to i8
  store i8 %conv99, ptr %x82, align 1
  %94 = load i64, ptr %x81, align 8
  %shr100 = lshr i64 %94, 8
  store i64 %shr100, ptr %x83, align 8
  %95 = load i64, ptr %x83, align 8
  %and101 = and i64 %95, 255
  %conv102 = trunc i64 %and101 to i8
  store i8 %conv102, ptr %x84, align 1
  %96 = load i64, ptr %x83, align 8
  %shr103 = lshr i64 %96, 8
  store i64 %shr103, ptr %x85, align 8
  %97 = load i64, ptr %x85, align 8
  %and104 = and i64 %97, 255
  %conv105 = trunc i64 %and104 to i8
  store i8 %conv105, ptr %x86, align 1
  %98 = load i64, ptr %x85, align 8
  %shr106 = lshr i64 %98, 8
  store i64 %shr106, ptr %x87, align 8
  %99 = load i64, ptr %x87, align 8
  %and107 = and i64 %99, 255
  %conv108 = trunc i64 %and107 to i8
  store i8 %conv108, ptr %x88, align 1
  %100 = load i64, ptr %x87, align 8
  %shr109 = lshr i64 %100, 8
  store i64 %shr109, ptr %x89, align 8
  %101 = load i64, ptr %x89, align 8
  %and110 = and i64 %101, 255
  %conv111 = trunc i64 %and110 to i8
  store i8 %conv111, ptr %x90, align 1
  %102 = load i64, ptr %x89, align 8
  %shr112 = lshr i64 %102, 8
  %conv113 = trunc i64 %shr112 to i8
  store i8 %conv113, ptr %x91, align 1
  %103 = load i8, ptr %x26, align 1
  %104 = load ptr, ptr %out1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %104, i64 0
  store i8 %103, ptr %arrayidx114, align 1
  %105 = load i8, ptr %x28, align 1
  %106 = load ptr, ptr %out1.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %106, i64 1
  store i8 %105, ptr %arrayidx115, align 1
  %107 = load i8, ptr %x30, align 1
  %108 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %108, i64 2
  store i8 %107, ptr %arrayidx116, align 1
  %109 = load i8, ptr %x32, align 1
  %110 = load ptr, ptr %out1.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %110, i64 3
  store i8 %109, ptr %arrayidx117, align 1
  %111 = load i8, ptr %x34, align 1
  %112 = load ptr, ptr %out1.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %112, i64 4
  store i8 %111, ptr %arrayidx118, align 1
  %113 = load i8, ptr %x36, align 1
  %114 = load ptr, ptr %out1.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %114, i64 5
  store i8 %113, ptr %arrayidx119, align 1
  %115 = load i8, ptr %x39, align 1
  %116 = load ptr, ptr %out1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %116, i64 6
  store i8 %115, ptr %arrayidx120, align 1
  %117 = load i8, ptr %x41, align 1
  %118 = load ptr, ptr %out1.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %118, i64 7
  store i8 %117, ptr %arrayidx121, align 1
  %119 = load i8, ptr %x43, align 1
  %120 = load ptr, ptr %out1.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, ptr %120, i64 8
  store i8 %119, ptr %arrayidx122, align 1
  %121 = load i8, ptr %x45, align 1
  %122 = load ptr, ptr %out1.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %122, i64 9
  store i8 %121, ptr %arrayidx123, align 1
  %123 = load i8, ptr %x47, align 1
  %124 = load ptr, ptr %out1.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %124, i64 10
  store i8 %123, ptr %arrayidx124, align 1
  %125 = load i8, ptr %x49, align 1
  %126 = load ptr, ptr %out1.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %126, i64 11
  store i8 %125, ptr %arrayidx125, align 1
  %127 = load i8, ptr %x52, align 1
  %128 = load ptr, ptr %out1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %128, i64 12
  store i8 %127, ptr %arrayidx126, align 1
  %129 = load i8, ptr %x54, align 1
  %130 = load ptr, ptr %out1.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %130, i64 13
  store i8 %129, ptr %arrayidx127, align 1
  %131 = load i8, ptr %x56, align 1
  %132 = load ptr, ptr %out1.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %132, i64 14
  store i8 %131, ptr %arrayidx128, align 1
  %133 = load i8, ptr %x58, align 1
  %134 = load ptr, ptr %out1.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %134, i64 15
  store i8 %133, ptr %arrayidx129, align 1
  %135 = load i8, ptr %x60, align 1
  %136 = load ptr, ptr %out1.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %136, i64 16
  store i8 %135, ptr %arrayidx130, align 1
  %137 = load i8, ptr %x62, align 1
  %138 = load ptr, ptr %out1.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %138, i64 17
  store i8 %137, ptr %arrayidx131, align 1
  %139 = load i8, ptr %x64, align 1
  %140 = load ptr, ptr %out1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %140, i64 18
  store i8 %139, ptr %arrayidx132, align 1
  %141 = load i8, ptr %x67, align 1
  %142 = load ptr, ptr %out1.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %142, i64 19
  store i8 %141, ptr %arrayidx133, align 1
  %143 = load i8, ptr %x69, align 1
  %144 = load ptr, ptr %out1.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %144, i64 20
  store i8 %143, ptr %arrayidx134, align 1
  %145 = load i8, ptr %x71, align 1
  %146 = load ptr, ptr %out1.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %146, i64 21
  store i8 %145, ptr %arrayidx135, align 1
  %147 = load i8, ptr %x73, align 1
  %148 = load ptr, ptr %out1.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %148, i64 22
  store i8 %147, ptr %arrayidx136, align 1
  %149 = load i8, ptr %x75, align 1
  %150 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %150, i64 23
  store i8 %149, ptr %arrayidx137, align 1
  %151 = load i8, ptr %x77, align 1
  %152 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %152, i64 24
  store i8 %151, ptr %arrayidx138, align 1
  %153 = load i8, ptr %x80, align 1
  %154 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %154, i64 25
  store i8 %153, ptr %arrayidx139, align 1
  %155 = load i8, ptr %x82, align 1
  %156 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %156, i64 26
  store i8 %155, ptr %arrayidx140, align 1
  %157 = load i8, ptr %x84, align 1
  %158 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %158, i64 27
  store i8 %157, ptr %arrayidx141, align 1
  %159 = load i8, ptr %x86, align 1
  %160 = load ptr, ptr %out1.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %160, i64 28
  store i8 %159, ptr %arrayidx142, align 1
  %161 = load i8, ptr %x88, align 1
  %162 = load ptr, ptr %out1.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %162, i64 29
  store i8 %161, ptr %arrayidx143, align 1
  %163 = load i8, ptr %x90, align 1
  %164 = load ptr, ptr %out1.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %164, i64 30
  store i8 %163, ptr %arrayidx144, align 1
  %165 = load i8, ptr %x91, align 1
  %166 = load ptr, ptr %out1.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %166, i64 31
  store i8 %165, ptr %arrayidx145, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x57 = alloca i8, align 1
  %x58 = alloca i64, align 8
  %x59 = alloca i64, align 8
  %x60 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %x62 = alloca i64, align 8
  %x63 = alloca i64, align 8
  %x64 = alloca i64, align 8
  %x65 = alloca i8, align 1
  %x66 = alloca i64, align 8
  %x67 = alloca i64, align 8
  %x68 = alloca i64, align 8
  %x69 = alloca i64, align 8
  %x70 = alloca i64, align 8
  %x71 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 31
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 44
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 30
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 36
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 29
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 28
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 28
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 20
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 27
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 12
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 26
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %shl15 = shl i64 %conv14, 4
  store i64 %shl15, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 25
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %shl18 = shl i64 %conv17, 47
  store i64 %shl18, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 24
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i64
  %shl21 = shl i64 %conv20, 39
  store i64 %shl21, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %16, i64 23
  %17 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %17 to i64
  %shl24 = shl i64 %conv23, 31
  store i64 %shl24, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %18, i64 22
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i64
  %shl27 = shl i64 %conv26, 23
  store i64 %shl27, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %20, i64 21
  %21 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %21 to i64
  %shl30 = shl i64 %conv29, 15
  store i64 %shl30, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 20
  %23 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %23 to i64
  %shl33 = shl i64 %conv32, 7
  store i64 %shl33, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 19
  %25 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %25 to i64
  %shl36 = shl i64 %conv35, 50
  store i64 %shl36, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %26, i64 18
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %27 to i64
  %shl39 = shl i64 %conv38, 42
  store i64 %shl39, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %28, i64 17
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i64
  %shl42 = shl i64 %conv41, 34
  store i64 %shl42, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %30, i64 16
  %31 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %31 to i64
  %shl45 = shl i64 %conv44, 26
  store i64 %shl45, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %32, i64 15
  %33 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %33 to i64
  %shl48 = shl i64 %conv47, 18
  store i64 %shl48, ptr %x17, align 8
  %34 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %34, i64 14
  %35 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %35 to i64
  %shl51 = shl i64 %conv50, 10
  store i64 %shl51, ptr %x18, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %36, i64 13
  %37 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %37 to i64
  %shl54 = shl i64 %conv53, 2
  store i64 %shl54, ptr %x19, align 8
  %38 = load ptr, ptr %arg1.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %38, i64 12
  %39 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %39 to i64
  %shl57 = shl i64 %conv56, 45
  store i64 %shl57, ptr %x20, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %40, i64 11
  %41 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %41 to i64
  %shl60 = shl i64 %conv59, 37
  store i64 %shl60, ptr %x21, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %42, i64 10
  %43 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %43 to i64
  %shl63 = shl i64 %conv62, 29
  store i64 %shl63, ptr %x22, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %44, i64 9
  %45 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %45 to i64
  %shl66 = shl i64 %conv65, 21
  store i64 %shl66, ptr %x23, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %46, i64 8
  %47 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %47 to i64
  %shl69 = shl i64 %conv68, 13
  store i64 %shl69, ptr %x24, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %48, i64 7
  %49 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %49 to i64
  %shl72 = shl i64 %conv71, 5
  store i64 %shl72, ptr %x25, align 8
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %50, i64 6
  %51 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %51 to i64
  %shl75 = shl i64 %conv74, 48
  store i64 %shl75, ptr %x26, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %52, i64 5
  %53 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %53 to i64
  %shl78 = shl i64 %conv77, 40
  store i64 %shl78, ptr %x27, align 8
  %54 = load ptr, ptr %arg1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %54, i64 4
  %55 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %55 to i64
  %shl81 = shl i64 %conv80, 32
  store i64 %shl81, ptr %x28, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %56, i64 3
  %57 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %57 to i64
  %shl84 = shl i64 %conv83, 24
  store i64 %shl84, ptr %x29, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %58, i64 2
  %59 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %59 to i64
  %shl87 = shl i64 %conv86, 16
  store i64 %shl87, ptr %x30, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %60, i64 1
  %61 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %61 to i64
  %shl90 = shl i64 %conv89, 8
  store i64 %shl90, ptr %x31, align 8
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx91, align 1
  store i8 %63, ptr %x32, align 1
  %64 = load i64, ptr %x31, align 8
  %65 = load i8, ptr %x32, align 1
  %conv92 = zext i8 %65 to i64
  %add = add i64 %64, %conv92
  store i64 %add, ptr %x33, align 8
  %66 = load i64, ptr %x30, align 8
  %67 = load i64, ptr %x33, align 8
  %add93 = add i64 %66, %67
  store i64 %add93, ptr %x34, align 8
  %68 = load i64, ptr %x29, align 8
  %69 = load i64, ptr %x34, align 8
  %add94 = add i64 %68, %69
  store i64 %add94, ptr %x35, align 8
  %70 = load i64, ptr %x28, align 8
  %71 = load i64, ptr %x35, align 8
  %add95 = add i64 %70, %71
  store i64 %add95, ptr %x36, align 8
  %72 = load i64, ptr %x27, align 8
  %73 = load i64, ptr %x36, align 8
  %add96 = add i64 %72, %73
  store i64 %add96, ptr %x37, align 8
  %74 = load i64, ptr %x26, align 8
  %75 = load i64, ptr %x37, align 8
  %add97 = add i64 %74, %75
  store i64 %add97, ptr %x38, align 8
  %76 = load i64, ptr %x38, align 8
  %and = and i64 %76, 2251799813685247
  store i64 %and, ptr %x39, align 8
  %77 = load i64, ptr %x38, align 8
  %shr = lshr i64 %77, 51
  %conv98 = trunc i64 %shr to i8
  store i8 %conv98, ptr %x40, align 1
  %78 = load i64, ptr %x25, align 8
  %79 = load i8, ptr %x40, align 1
  %conv99 = zext i8 %79 to i64
  %add100 = add i64 %78, %conv99
  store i64 %add100, ptr %x41, align 8
  %80 = load i64, ptr %x24, align 8
  %81 = load i64, ptr %x41, align 8
  %add101 = add i64 %80, %81
  store i64 %add101, ptr %x42, align 8
  %82 = load i64, ptr %x23, align 8
  %83 = load i64, ptr %x42, align 8
  %add102 = add i64 %82, %83
  store i64 %add102, ptr %x43, align 8
  %84 = load i64, ptr %x22, align 8
  %85 = load i64, ptr %x43, align 8
  %add103 = add i64 %84, %85
  store i64 %add103, ptr %x44, align 8
  %86 = load i64, ptr %x21, align 8
  %87 = load i64, ptr %x44, align 8
  %add104 = add i64 %86, %87
  store i64 %add104, ptr %x45, align 8
  %88 = load i64, ptr %x20, align 8
  %89 = load i64, ptr %x45, align 8
  %add105 = add i64 %88, %89
  store i64 %add105, ptr %x46, align 8
  %90 = load i64, ptr %x46, align 8
  %and106 = and i64 %90, 2251799813685247
  store i64 %and106, ptr %x47, align 8
  %91 = load i64, ptr %x46, align 8
  %shr107 = lshr i64 %91, 51
  %conv108 = trunc i64 %shr107 to i8
  store i8 %conv108, ptr %x48, align 1
  %92 = load i64, ptr %x19, align 8
  %93 = load i8, ptr %x48, align 1
  %conv109 = zext i8 %93 to i64
  %add110 = add i64 %92, %conv109
  store i64 %add110, ptr %x49, align 8
  %94 = load i64, ptr %x18, align 8
  %95 = load i64, ptr %x49, align 8
  %add111 = add i64 %94, %95
  store i64 %add111, ptr %x50, align 8
  %96 = load i64, ptr %x17, align 8
  %97 = load i64, ptr %x50, align 8
  %add112 = add i64 %96, %97
  store i64 %add112, ptr %x51, align 8
  %98 = load i64, ptr %x16, align 8
  %99 = load i64, ptr %x51, align 8
  %add113 = add i64 %98, %99
  store i64 %add113, ptr %x52, align 8
  %100 = load i64, ptr %x15, align 8
  %101 = load i64, ptr %x52, align 8
  %add114 = add i64 %100, %101
  store i64 %add114, ptr %x53, align 8
  %102 = load i64, ptr %x14, align 8
  %103 = load i64, ptr %x53, align 8
  %add115 = add i64 %102, %103
  store i64 %add115, ptr %x54, align 8
  %104 = load i64, ptr %x13, align 8
  %105 = load i64, ptr %x54, align 8
  %add116 = add i64 %104, %105
  store i64 %add116, ptr %x55, align 8
  %106 = load i64, ptr %x55, align 8
  %and117 = and i64 %106, 2251799813685247
  store i64 %and117, ptr %x56, align 8
  %107 = load i64, ptr %x55, align 8
  %shr118 = lshr i64 %107, 51
  %conv119 = trunc i64 %shr118 to i8
  store i8 %conv119, ptr %x57, align 1
  %108 = load i64, ptr %x12, align 8
  %109 = load i8, ptr %x57, align 1
  %conv120 = zext i8 %109 to i64
  %add121 = add i64 %108, %conv120
  store i64 %add121, ptr %x58, align 8
  %110 = load i64, ptr %x11, align 8
  %111 = load i64, ptr %x58, align 8
  %add122 = add i64 %110, %111
  store i64 %add122, ptr %x59, align 8
  %112 = load i64, ptr %x10, align 8
  %113 = load i64, ptr %x59, align 8
  %add123 = add i64 %112, %113
  store i64 %add123, ptr %x60, align 8
  %114 = load i64, ptr %x9, align 8
  %115 = load i64, ptr %x60, align 8
  %add124 = add i64 %114, %115
  store i64 %add124, ptr %x61, align 8
  %116 = load i64, ptr %x8, align 8
  %117 = load i64, ptr %x61, align 8
  %add125 = add i64 %116, %117
  store i64 %add125, ptr %x62, align 8
  %118 = load i64, ptr %x7, align 8
  %119 = load i64, ptr %x62, align 8
  %add126 = add i64 %118, %119
  store i64 %add126, ptr %x63, align 8
  %120 = load i64, ptr %x63, align 8
  %and127 = and i64 %120, 2251799813685247
  store i64 %and127, ptr %x64, align 8
  %121 = load i64, ptr %x63, align 8
  %shr128 = lshr i64 %121, 51
  %conv129 = trunc i64 %shr128 to i8
  store i8 %conv129, ptr %x65, align 1
  %122 = load i64, ptr %x6, align 8
  %123 = load i8, ptr %x65, align 1
  %conv130 = zext i8 %123 to i64
  %add131 = add i64 %122, %conv130
  store i64 %add131, ptr %x66, align 8
  %124 = load i64, ptr %x5, align 8
  %125 = load i64, ptr %x66, align 8
  %add132 = add i64 %124, %125
  store i64 %add132, ptr %x67, align 8
  %126 = load i64, ptr %x4, align 8
  %127 = load i64, ptr %x67, align 8
  %add133 = add i64 %126, %127
  store i64 %add133, ptr %x68, align 8
  %128 = load i64, ptr %x3, align 8
  %129 = load i64, ptr %x68, align 8
  %add134 = add i64 %128, %129
  store i64 %add134, ptr %x69, align 8
  %130 = load i64, ptr %x2, align 8
  %131 = load i64, ptr %x69, align 8
  %add135 = add i64 %130, %131
  store i64 %add135, ptr %x70, align 8
  %132 = load i64, ptr %x1, align 8
  %133 = load i64, ptr %x70, align 8
  %add136 = add i64 %132, %133
  store i64 %add136, ptr %x71, align 8
  %134 = load i64, ptr %x39, align 8
  %135 = load ptr, ptr %out1.addr, align 8
  %arrayidx137 = getelementptr inbounds i64, ptr %135, i64 0
  store i64 %134, ptr %arrayidx137, align 8
  %136 = load i64, ptr %x47, align 8
  %137 = load ptr, ptr %out1.addr, align 8
  %arrayidx138 = getelementptr inbounds i64, ptr %137, i64 1
  store i64 %136, ptr %arrayidx138, align 8
  %138 = load i64, ptr %x56, align 8
  %139 = load ptr, ptr %out1.addr, align 8
  %arrayidx139 = getelementptr inbounds i64, ptr %139, i64 2
  store i64 %138, ptr %arrayidx139, align 8
  %140 = load i64, ptr %x64, align 8
  %141 = load ptr, ptr %out1.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %141, i64 3
  store i64 %140, ptr %arrayidx140, align 8
  %142 = load i64, ptr %x71, align 8
  %143 = load ptr, ptr %out1.addr, align 8
  %arrayidx141 = getelementptr inbounds i64, ptr %143, i64 4
  store i64 %142, ptr %arrayidx141, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i64, align 8
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
  %10 = load i64, ptr %x1, align 8
  %11 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 0
  store i64 %10, ptr %arrayidx5, align 8
  %12 = load i64, ptr %x2, align 8
  %13 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %13, i64 1
  store i64 %12, ptr %arrayidx6, align 8
  %14 = load i64, ptr %x3, align 8
  %15 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %15, i64 2
  store i64 %14, ptr %arrayidx7, align 8
  %16 = load i64, ptr %x4, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %17, i64 3
  store i64 %16, ptr %arrayidx8, align 8
  %18 = load i64, ptr %x5, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %19, i64 4
  store i64 %18, ptr %arrayidx9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_25519_carry_scmul_121666(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i128, align 16
  %x2 = alloca i128, align 16
  %x3 = alloca i128, align 16
  %x4 = alloca i128, align 16
  %x5 = alloca i128, align 16
  %x6 = alloca i64, align 8
  %x7 = alloca i64, align 8
  %x8 = alloca i128, align 16
  %x9 = alloca i64, align 8
  %x10 = alloca i64, align 8
  %x11 = alloca i128, align 16
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i128, align 16
  %x15 = alloca i64, align 8
  %x16 = alloca i64, align 8
  %x17 = alloca i128, align 16
  %x18 = alloca i64, align 8
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i8, align 1
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i8, align 1
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 4
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %mul = mul i128 121666, %conv
  store i128 %mul, ptr %x1, align 16
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 3
  %3 = load i64, ptr %arrayidx1, align 8
  %conv2 = zext i64 %3 to i128
  %mul3 = mul i128 121666, %conv2
  store i128 %mul3, ptr %x2, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %mul6 = mul i128 121666, %conv5
  store i128 %mul6, ptr %x3, align 16
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx7, align 8
  %conv8 = zext i64 %7 to i128
  %mul9 = mul i128 121666, %conv8
  store i128 %mul9, ptr %x4, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 0
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %mul12 = mul i128 121666, %conv11
  store i128 %mul12, ptr %x5, align 16
  %10 = load i128, ptr %x5, align 16
  %shr = lshr i128 %10, 51
  %conv13 = trunc i128 %shr to i64
  store i64 %conv13, ptr %x6, align 8
  %11 = load i128, ptr %x5, align 16
  %and = and i128 %11, 2251799813685247
  %conv14 = trunc i128 %and to i64
  store i64 %conv14, ptr %x7, align 8
  %12 = load i64, ptr %x6, align 8
  %conv15 = zext i64 %12 to i128
  %13 = load i128, ptr %x4, align 16
  %add = add i128 %conv15, %13
  store i128 %add, ptr %x8, align 16
  %14 = load i128, ptr %x8, align 16
  %shr16 = lshr i128 %14, 51
  %conv17 = trunc i128 %shr16 to i64
  store i64 %conv17, ptr %x9, align 8
  %15 = load i128, ptr %x8, align 16
  %and18 = and i128 %15, 2251799813685247
  %conv19 = trunc i128 %and18 to i64
  store i64 %conv19, ptr %x10, align 8
  %16 = load i64, ptr %x9, align 8
  %conv20 = zext i64 %16 to i128
  %17 = load i128, ptr %x3, align 16
  %add21 = add i128 %conv20, %17
  store i128 %add21, ptr %x11, align 16
  %18 = load i128, ptr %x11, align 16
  %shr22 = lshr i128 %18, 51
  %conv23 = trunc i128 %shr22 to i64
  store i64 %conv23, ptr %x12, align 8
  %19 = load i128, ptr %x11, align 16
  %and24 = and i128 %19, 2251799813685247
  %conv25 = trunc i128 %and24 to i64
  store i64 %conv25, ptr %x13, align 8
  %20 = load i64, ptr %x12, align 8
  %conv26 = zext i64 %20 to i128
  %21 = load i128, ptr %x2, align 16
  %add27 = add i128 %conv26, %21
  store i128 %add27, ptr %x14, align 16
  %22 = load i128, ptr %x14, align 16
  %shr28 = lshr i128 %22, 51
  %conv29 = trunc i128 %shr28 to i64
  store i64 %conv29, ptr %x15, align 8
  %23 = load i128, ptr %x14, align 16
  %and30 = and i128 %23, 2251799813685247
  %conv31 = trunc i128 %and30 to i64
  store i64 %conv31, ptr %x16, align 8
  %24 = load i64, ptr %x15, align 8
  %conv32 = zext i64 %24 to i128
  %25 = load i128, ptr %x1, align 16
  %add33 = add i128 %conv32, %25
  store i128 %add33, ptr %x17, align 16
  %26 = load i128, ptr %x17, align 16
  %shr34 = lshr i128 %26, 51
  %conv35 = trunc i128 %shr34 to i64
  store i64 %conv35, ptr %x18, align 8
  %27 = load i128, ptr %x17, align 16
  %and36 = and i128 %27, 2251799813685247
  %conv37 = trunc i128 %and36 to i64
  store i64 %conv37, ptr %x19, align 8
  %28 = load i64, ptr %x18, align 8
  %mul38 = mul i64 %28, 19
  store i64 %mul38, ptr %x20, align 8
  %29 = load i64, ptr %x7, align 8
  %30 = load i64, ptr %x20, align 8
  %add39 = add i64 %29, %30
  store i64 %add39, ptr %x21, align 8
  %31 = load i64, ptr %x21, align 8
  %shr40 = lshr i64 %31, 51
  %conv41 = trunc i64 %shr40 to i8
  store i8 %conv41, ptr %x22, align 1
  %32 = load i64, ptr %x21, align 8
  %and42 = and i64 %32, 2251799813685247
  store i64 %and42, ptr %x23, align 8
  %33 = load i8, ptr %x22, align 1
  %conv43 = zext i8 %33 to i64
  %34 = load i64, ptr %x10, align 8
  %add44 = add i64 %conv43, %34
  store i64 %add44, ptr %x24, align 8
  %35 = load i64, ptr %x24, align 8
  %shr45 = lshr i64 %35, 51
  %conv46 = trunc i64 %shr45 to i8
  store i8 %conv46, ptr %x25, align 1
  %36 = load i64, ptr %x24, align 8
  %and47 = and i64 %36, 2251799813685247
  store i64 %and47, ptr %x26, align 8
  %37 = load i8, ptr %x25, align 1
  %conv48 = zext i8 %37 to i64
  %38 = load i64, ptr %x13, align 8
  %add49 = add i64 %conv48, %38
  store i64 %add49, ptr %x27, align 8
  %39 = load i64, ptr %x23, align 8
  %40 = load ptr, ptr %out1.addr, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %40, i64 0
  store i64 %39, ptr %arrayidx50, align 8
  %41 = load i64, ptr %x26, align 8
  %42 = load ptr, ptr %out1.addr, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %42, i64 1
  store i64 %41, ptr %arrayidx51, align 8
  %43 = load i64, ptr %x27, align 8
  %44 = load ptr, ptr %out1.addr, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %44, i64 2
  store i64 %43, ptr %arrayidx52, align 8
  %45 = load i64, ptr %x16, align 8
  %46 = load ptr, ptr %out1.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %46, i64 3
  store i64 %45, ptr %arrayidx53, align 8
  %47 = load i64, ptr %x19, align 8
  %48 = load ptr, ptr %out1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %48, i64 4
  store i64 %47, ptr %arrayidx54, align 8
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
!6 = !{i64 2590}
