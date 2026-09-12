; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiat_poly1305_value_barrier_u32(i32 noundef %a) #0 {
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
define dso_local void @fiat_poly1305_addcarryx_u26(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
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
define dso_local void @fiat_poly1305_subborrowx_u26(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
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
define dso_local void @fiat_poly1305_cmovznz_u32(ptr noundef %out1, i8 noundef zeroext %arg1, i32 noundef %arg2, i32 noundef %arg3) #0 {
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
  %call = call i32 @fiat_poly1305_value_barrier_u32(i32 noundef %2)
  %3 = load i32, ptr %arg3.addr, align 4
  %and5 = and i32 %call, %3
  %4 = load i32, ptr %x2, align 4
  %not = xor i32 %4, -1
  %call6 = call i32 @fiat_poly1305_value_barrier_u32(i32 noundef %not)
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
define dso_local void @fiat_poly1305_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x28 = alloca i32, align 4
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i32, align 4
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  %x38 = alloca i32, align 4
  %x39 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %x41 = alloca i32, align 4
  %x42 = alloca i64, align 8
  %x43 = alloca i32, align 4
  %x44 = alloca i32, align 4
  %x45 = alloca i64, align 8
  %x46 = alloca i64, align 8
  %x47 = alloca i32, align 4
  %x48 = alloca i32, align 4
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i32, align 4
  %x52 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 4
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 4
  %3 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %3, 5
  %conv2 = zext i32 %mul to i64
  %mul3 = mul i64 %conv, %conv2
  store i64 %mul3, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 4
  %5 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %5 to i64
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx6, align 4
  %mul7 = mul i32 %7, 5
  %conv8 = zext i32 %mul7 to i64
  %mul9 = mul i64 %conv5, %conv8
  store i64 %mul9, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx10, align 4
  %conv11 = zext i32 %9 to i64
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx12, align 4
  %mul13 = mul i32 %11, 5
  %conv14 = zext i32 %mul13 to i64
  %mul15 = mul i64 %conv11, %conv14
  store i64 %mul15, ptr %x3, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %13 to i64
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx18, align 4
  %mul19 = mul i32 %15, 5
  %conv20 = zext i32 %mul19 to i64
  %mul21 = mul i64 %conv17, %conv20
  store i64 %mul21, ptr %x4, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx22, align 4
  %conv23 = zext i32 %17 to i64
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %18, i64 4
  %19 = load i32, ptr %arrayidx24, align 4
  %mul25 = mul i32 %19, 5
  %conv26 = zext i32 %mul25 to i64
  %mul27 = mul i64 %conv23, %conv26
  store i64 %mul27, ptr %x5, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %20, i64 3
  %21 = load i32, ptr %arrayidx28, align 4
  %conv29 = zext i32 %21 to i64
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %22, i64 3
  %23 = load i32, ptr %arrayidx30, align 4
  %mul31 = mul i32 %23, 5
  %conv32 = zext i32 %mul31 to i64
  %mul33 = mul i64 %conv29, %conv32
  store i64 %mul33, ptr %x6, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %24, i64 3
  %25 = load i32, ptr %arrayidx34, align 4
  %conv35 = zext i32 %25 to i64
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %26, i64 2
  %27 = load i32, ptr %arrayidx36, align 4
  %mul37 = mul i32 %27, 5
  %conv38 = zext i32 %mul37 to i64
  %mul39 = mul i64 %conv35, %conv38
  store i64 %mul39, ptr %x7, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %28, i64 2
  %29 = load i32, ptr %arrayidx40, align 4
  %conv41 = zext i32 %29 to i64
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %30, i64 4
  %31 = load i32, ptr %arrayidx42, align 4
  %mul43 = mul i32 %31, 5
  %conv44 = zext i32 %mul43 to i64
  %mul45 = mul i64 %conv41, %conv44
  store i64 %mul45, ptr %x8, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx46, align 4
  %conv47 = zext i32 %33 to i64
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %34, i64 3
  %35 = load i32, ptr %arrayidx48, align 4
  %mul49 = mul i32 %35, 5
  %conv50 = zext i32 %mul49 to i64
  %mul51 = mul i64 %conv47, %conv50
  store i64 %mul51, ptr %x9, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, ptr %36, i64 1
  %37 = load i32, ptr %arrayidx52, align 4
  %conv53 = zext i32 %37 to i64
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %38, i64 4
  %39 = load i32, ptr %arrayidx54, align 4
  %mul55 = mul i32 %39, 5
  %conv56 = zext i32 %mul55 to i64
  %mul57 = mul i64 %conv53, %conv56
  store i64 %mul57, ptr %x10, align 8
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %40, i64 4
  %41 = load i32, ptr %arrayidx58, align 4
  %conv59 = zext i32 %41 to i64
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %42, i64 0
  %43 = load i32, ptr %arrayidx60, align 4
  %conv61 = zext i32 %43 to i64
  %mul62 = mul i64 %conv59, %conv61
  store i64 %mul62, ptr %x11, align 8
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %44, i64 3
  %45 = load i32, ptr %arrayidx63, align 4
  %conv64 = zext i32 %45 to i64
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %46, i64 1
  %47 = load i32, ptr %arrayidx65, align 4
  %conv66 = zext i32 %47 to i64
  %mul67 = mul i64 %conv64, %conv66
  store i64 %mul67, ptr %x12, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %48, i64 3
  %49 = load i32, ptr %arrayidx68, align 4
  %conv69 = zext i32 %49 to i64
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %50, i64 0
  %51 = load i32, ptr %arrayidx70, align 4
  %conv71 = zext i32 %51 to i64
  %mul72 = mul i64 %conv69, %conv71
  store i64 %mul72, ptr %x13, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %52, i64 2
  %53 = load i32, ptr %arrayidx73, align 4
  %conv74 = zext i32 %53 to i64
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %54, i64 2
  %55 = load i32, ptr %arrayidx75, align 4
  %conv76 = zext i32 %55 to i64
  %mul77 = mul i64 %conv74, %conv76
  store i64 %mul77, ptr %x14, align 8
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %56, i64 2
  %57 = load i32, ptr %arrayidx78, align 4
  %conv79 = zext i32 %57 to i64
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %58, i64 1
  %59 = load i32, ptr %arrayidx80, align 4
  %conv81 = zext i32 %59 to i64
  %mul82 = mul i64 %conv79, %conv81
  store i64 %mul82, ptr %x15, align 8
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %60, i64 2
  %61 = load i32, ptr %arrayidx83, align 4
  %conv84 = zext i32 %61 to i64
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, ptr %62, i64 0
  %63 = load i32, ptr %arrayidx85, align 4
  %conv86 = zext i32 %63 to i64
  %mul87 = mul i64 %conv84, %conv86
  store i64 %mul87, ptr %x16, align 8
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %64, i64 1
  %65 = load i32, ptr %arrayidx88, align 4
  %conv89 = zext i32 %65 to i64
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %66, i64 3
  %67 = load i32, ptr %arrayidx90, align 4
  %conv91 = zext i32 %67 to i64
  %mul92 = mul i64 %conv89, %conv91
  store i64 %mul92, ptr %x17, align 8
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, ptr %68, i64 1
  %69 = load i32, ptr %arrayidx93, align 4
  %conv94 = zext i32 %69 to i64
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, ptr %70, i64 2
  %71 = load i32, ptr %arrayidx95, align 4
  %conv96 = zext i32 %71 to i64
  %mul97 = mul i64 %conv94, %conv96
  store i64 %mul97, ptr %x18, align 8
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx98 = getelementptr inbounds i32, ptr %72, i64 1
  %73 = load i32, ptr %arrayidx98, align 4
  %conv99 = zext i32 %73 to i64
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, ptr %74, i64 1
  %75 = load i32, ptr %arrayidx100, align 4
  %conv101 = zext i32 %75 to i64
  %mul102 = mul i64 %conv99, %conv101
  store i64 %mul102, ptr %x19, align 8
  %76 = load ptr, ptr %arg1.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, ptr %76, i64 1
  %77 = load i32, ptr %arrayidx103, align 4
  %conv104 = zext i32 %77 to i64
  %78 = load ptr, ptr %arg2.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %78, i64 0
  %79 = load i32, ptr %arrayidx105, align 4
  %conv106 = zext i32 %79 to i64
  %mul107 = mul i64 %conv104, %conv106
  store i64 %mul107, ptr %x20, align 8
  %80 = load ptr, ptr %arg1.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %80, i64 0
  %81 = load i32, ptr %arrayidx108, align 4
  %conv109 = zext i32 %81 to i64
  %82 = load ptr, ptr %arg2.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, ptr %82, i64 4
  %83 = load i32, ptr %arrayidx110, align 4
  %conv111 = zext i32 %83 to i64
  %mul112 = mul i64 %conv109, %conv111
  store i64 %mul112, ptr %x21, align 8
  %84 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i32, ptr %84, i64 0
  %85 = load i32, ptr %arrayidx113, align 4
  %conv114 = zext i32 %85 to i64
  %86 = load ptr, ptr %arg2.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, ptr %86, i64 3
  %87 = load i32, ptr %arrayidx115, align 4
  %conv116 = zext i32 %87 to i64
  %mul117 = mul i64 %conv114, %conv116
  store i64 %mul117, ptr %x22, align 8
  %88 = load ptr, ptr %arg1.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %88, i64 0
  %89 = load i32, ptr %arrayidx118, align 4
  %conv119 = zext i32 %89 to i64
  %90 = load ptr, ptr %arg2.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %90, i64 2
  %91 = load i32, ptr %arrayidx120, align 4
  %conv121 = zext i32 %91 to i64
  %mul122 = mul i64 %conv119, %conv121
  store i64 %mul122, ptr %x23, align 8
  %92 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %92, i64 0
  %93 = load i32, ptr %arrayidx123, align 4
  %conv124 = zext i32 %93 to i64
  %94 = load ptr, ptr %arg2.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, ptr %94, i64 1
  %95 = load i32, ptr %arrayidx125, align 4
  %conv126 = zext i32 %95 to i64
  %mul127 = mul i64 %conv124, %conv126
  store i64 %mul127, ptr %x24, align 8
  %96 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i32, ptr %96, i64 0
  %97 = load i32, ptr %arrayidx128, align 4
  %conv129 = zext i32 %97 to i64
  %98 = load ptr, ptr %arg2.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, ptr %98, i64 0
  %99 = load i32, ptr %arrayidx130, align 4
  %conv131 = zext i32 %99 to i64
  %mul132 = mul i64 %conv129, %conv131
  store i64 %mul132, ptr %x25, align 8
  %100 = load i64, ptr %x25, align 8
  %101 = load i64, ptr %x10, align 8
  %102 = load i64, ptr %x9, align 8
  %103 = load i64, ptr %x7, align 8
  %104 = load i64, ptr %x4, align 8
  %add = add i64 %103, %104
  %add133 = add i64 %102, %add
  %add134 = add i64 %101, %add133
  %add135 = add i64 %100, %add134
  store i64 %add135, ptr %x26, align 8
  %105 = load i64, ptr %x26, align 8
  %shr = lshr i64 %105, 26
  store i64 %shr, ptr %x27, align 8
  %106 = load i64, ptr %x26, align 8
  %and = and i64 %106, 67108863
  %conv136 = trunc i64 %and to i32
  store i32 %conv136, ptr %x28, align 4
  %107 = load i64, ptr %x21, align 8
  %108 = load i64, ptr %x17, align 8
  %109 = load i64, ptr %x14, align 8
  %110 = load i64, ptr %x12, align 8
  %111 = load i64, ptr %x11, align 8
  %add137 = add i64 %110, %111
  %add138 = add i64 %109, %add137
  %add139 = add i64 %108, %add138
  %add140 = add i64 %107, %add139
  store i64 %add140, ptr %x29, align 8
  %112 = load i64, ptr %x22, align 8
  %113 = load i64, ptr %x18, align 8
  %114 = load i64, ptr %x15, align 8
  %115 = load i64, ptr %x13, align 8
  %116 = load i64, ptr %x1, align 8
  %add141 = add i64 %115, %116
  %add142 = add i64 %114, %add141
  %add143 = add i64 %113, %add142
  %add144 = add i64 %112, %add143
  store i64 %add144, ptr %x30, align 8
  %117 = load i64, ptr %x23, align 8
  %118 = load i64, ptr %x19, align 8
  %119 = load i64, ptr %x16, align 8
  %120 = load i64, ptr %x5, align 8
  %121 = load i64, ptr %x2, align 8
  %add145 = add i64 %120, %121
  %add146 = add i64 %119, %add145
  %add147 = add i64 %118, %add146
  %add148 = add i64 %117, %add147
  store i64 %add148, ptr %x31, align 8
  %122 = load i64, ptr %x24, align 8
  %123 = load i64, ptr %x20, align 8
  %124 = load i64, ptr %x8, align 8
  %125 = load i64, ptr %x6, align 8
  %126 = load i64, ptr %x3, align 8
  %add149 = add i64 %125, %126
  %add150 = add i64 %124, %add149
  %add151 = add i64 %123, %add150
  %add152 = add i64 %122, %add151
  store i64 %add152, ptr %x32, align 8
  %127 = load i64, ptr %x27, align 8
  %128 = load i64, ptr %x32, align 8
  %add153 = add i64 %127, %128
  store i64 %add153, ptr %x33, align 8
  %129 = load i64, ptr %x33, align 8
  %shr154 = lshr i64 %129, 26
  store i64 %shr154, ptr %x34, align 8
  %130 = load i64, ptr %x33, align 8
  %and155 = and i64 %130, 67108863
  %conv156 = trunc i64 %and155 to i32
  store i32 %conv156, ptr %x35, align 4
  %131 = load i64, ptr %x34, align 8
  %132 = load i64, ptr %x31, align 8
  %add157 = add i64 %131, %132
  store i64 %add157, ptr %x36, align 8
  %133 = load i64, ptr %x36, align 8
  %shr158 = lshr i64 %133, 26
  store i64 %shr158, ptr %x37, align 8
  %134 = load i64, ptr %x36, align 8
  %and159 = and i64 %134, 67108863
  %conv160 = trunc i64 %and159 to i32
  store i32 %conv160, ptr %x38, align 4
  %135 = load i64, ptr %x37, align 8
  %136 = load i64, ptr %x30, align 8
  %add161 = add i64 %135, %136
  store i64 %add161, ptr %x39, align 8
  %137 = load i64, ptr %x39, align 8
  %shr162 = lshr i64 %137, 26
  store i64 %shr162, ptr %x40, align 8
  %138 = load i64, ptr %x39, align 8
  %and163 = and i64 %138, 67108863
  %conv164 = trunc i64 %and163 to i32
  store i32 %conv164, ptr %x41, align 4
  %139 = load i64, ptr %x40, align 8
  %140 = load i64, ptr %x29, align 8
  %add165 = add i64 %139, %140
  store i64 %add165, ptr %x42, align 8
  %141 = load i64, ptr %x42, align 8
  %shr166 = lshr i64 %141, 26
  %conv167 = trunc i64 %shr166 to i32
  store i32 %conv167, ptr %x43, align 4
  %142 = load i64, ptr %x42, align 8
  %and168 = and i64 %142, 67108863
  %conv169 = trunc i64 %and168 to i32
  store i32 %conv169, ptr %x44, align 4
  %143 = load i32, ptr %x43, align 4
  %conv170 = zext i32 %143 to i64
  %mul171 = mul i64 %conv170, 5
  store i64 %mul171, ptr %x45, align 8
  %144 = load i32, ptr %x28, align 4
  %conv172 = zext i32 %144 to i64
  %145 = load i64, ptr %x45, align 8
  %add173 = add i64 %conv172, %145
  store i64 %add173, ptr %x46, align 8
  %146 = load i64, ptr %x46, align 8
  %shr174 = lshr i64 %146, 26
  %conv175 = trunc i64 %shr174 to i32
  store i32 %conv175, ptr %x47, align 4
  %147 = load i64, ptr %x46, align 8
  %and176 = and i64 %147, 67108863
  %conv177 = trunc i64 %and176 to i32
  store i32 %conv177, ptr %x48, align 4
  %148 = load i32, ptr %x47, align 4
  %149 = load i32, ptr %x35, align 4
  %add178 = add i32 %148, %149
  store i32 %add178, ptr %x49, align 4
  %150 = load i32, ptr %x49, align 4
  %shr179 = lshr i32 %150, 26
  %conv180 = trunc i32 %shr179 to i8
  store i8 %conv180, ptr %x50, align 1
  %151 = load i32, ptr %x49, align 4
  %and181 = and i32 %151, 67108863
  store i32 %and181, ptr %x51, align 4
  %152 = load i8, ptr %x50, align 1
  %conv182 = zext i8 %152 to i32
  %153 = load i32, ptr %x38, align 4
  %add183 = add i32 %conv182, %153
  store i32 %add183, ptr %x52, align 4
  %154 = load i32, ptr %x48, align 4
  %155 = load ptr, ptr %out1.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, ptr %155, i64 0
  store i32 %154, ptr %arrayidx184, align 4
  %156 = load i32, ptr %x51, align 4
  %157 = load ptr, ptr %out1.addr, align 8
  %arrayidx185 = getelementptr inbounds i32, ptr %157, i64 1
  store i32 %156, ptr %arrayidx185, align 4
  %158 = load i32, ptr %x52, align 4
  %159 = load ptr, ptr %out1.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %159, i64 2
  store i32 %158, ptr %arrayidx186, align 4
  %160 = load i32, ptr %x41, align 4
  %161 = load ptr, ptr %out1.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, ptr %161, i64 3
  store i32 %160, ptr %arrayidx187, align 4
  %162 = load i32, ptr %x44, align 4
  %163 = load ptr, ptr %out1.addr, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %163, i64 4
  store i32 %162, ptr %arrayidx188, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x26 = alloca i32, align 4
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i64, align 8
  %x32 = alloca i64, align 8
  %x33 = alloca i32, align 4
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i32, align 4
  %x37 = alloca i64, align 8
  %x38 = alloca i64, align 8
  %x39 = alloca i32, align 4
  %x40 = alloca i64, align 8
  %x41 = alloca i32, align 4
  %x42 = alloca i32, align 4
  %x43 = alloca i64, align 8
  %x44 = alloca i64, align 8
  %x45 = alloca i32, align 4
  %x46 = alloca i32, align 4
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 4
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 5
  store i32 %mul, ptr %x1, align 4
  %2 = load i32, ptr %x1, align 4
  %mul1 = mul i32 %2, 2
  store i32 %mul1, ptr %x2, align 4
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 4
  %4 = load i32, ptr %arrayidx2, align 4
  %mul3 = mul i32 %4, 2
  store i32 %mul3, ptr %x3, align 4
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %5, i64 3
  %6 = load i32, ptr %arrayidx4, align 4
  %mul5 = mul i32 %6, 5
  store i32 %mul5, ptr %x4, align 4
  %7 = load i32, ptr %x4, align 4
  %mul6 = mul i32 %7, 2
  store i32 %mul6, ptr %x5, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 3
  %9 = load i32, ptr %arrayidx7, align 4
  %mul8 = mul i32 %9, 2
  store i32 %mul8, ptr %x6, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 2
  %11 = load i32, ptr %arrayidx9, align 4
  %mul10 = mul i32 %11, 2
  store i32 %mul10, ptr %x7, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 1
  %13 = load i32, ptr %arrayidx11, align 4
  %mul12 = mul i32 %13, 2
  store i32 %mul12, ptr %x8, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 4
  %15 = load i32, ptr %arrayidx13, align 4
  %conv = zext i32 %15 to i64
  %16 = load i32, ptr %x1, align 4
  %conv14 = zext i32 %16 to i64
  %mul15 = mul i64 %conv, %conv14
  store i64 %mul15, ptr %x9, align 8
  %17 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %17, i64 3
  %18 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %18 to i64
  %19 = load i32, ptr %x2, align 4
  %conv18 = zext i32 %19 to i64
  %mul19 = mul i64 %conv17, %conv18
  store i64 %mul19, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 3
  %21 = load i32, ptr %arrayidx20, align 4
  %conv21 = zext i32 %21 to i64
  %22 = load i32, ptr %x4, align 4
  %conv22 = zext i32 %22 to i64
  %mul23 = mul i64 %conv21, %conv22
  store i64 %mul23, ptr %x11, align 8
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %23, i64 2
  %24 = load i32, ptr %arrayidx24, align 4
  %conv25 = zext i32 %24 to i64
  %25 = load i32, ptr %x2, align 4
  %conv26 = zext i32 %25 to i64
  %mul27 = mul i64 %conv25, %conv26
  store i64 %mul27, ptr %x12, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %26, i64 2
  %27 = load i32, ptr %arrayidx28, align 4
  %conv29 = zext i32 %27 to i64
  %28 = load i32, ptr %x5, align 4
  %conv30 = zext i32 %28 to i64
  %mul31 = mul i64 %conv29, %conv30
  store i64 %mul31, ptr %x13, align 8
  %29 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %29, i64 2
  %30 = load i32, ptr %arrayidx32, align 4
  %conv33 = zext i32 %30 to i64
  %31 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, ptr %31, i64 2
  %32 = load i32, ptr %arrayidx34, align 4
  %conv35 = zext i32 %32 to i64
  %mul36 = mul i64 %conv33, %conv35
  store i64 %mul36, ptr %x14, align 8
  %33 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %33, i64 1
  %34 = load i32, ptr %arrayidx37, align 4
  %conv38 = zext i32 %34 to i64
  %35 = load i32, ptr %x2, align 4
  %conv39 = zext i32 %35 to i64
  %mul40 = mul i64 %conv38, %conv39
  store i64 %mul40, ptr %x15, align 8
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %36, i64 1
  %37 = load i32, ptr %arrayidx41, align 4
  %conv42 = zext i32 %37 to i64
  %38 = load i32, ptr %x6, align 4
  %conv43 = zext i32 %38 to i64
  %mul44 = mul i64 %conv42, %conv43
  store i64 %mul44, ptr %x16, align 8
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %39, i64 1
  %40 = load i32, ptr %arrayidx45, align 4
  %conv46 = zext i32 %40 to i64
  %41 = load i32, ptr %x7, align 4
  %conv47 = zext i32 %41 to i64
  %mul48 = mul i64 %conv46, %conv47
  store i64 %mul48, ptr %x17, align 8
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %42, i64 1
  %43 = load i32, ptr %arrayidx49, align 4
  %conv50 = zext i32 %43 to i64
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %44, i64 1
  %45 = load i32, ptr %arrayidx51, align 4
  %conv52 = zext i32 %45 to i64
  %mul53 = mul i64 %conv50, %conv52
  store i64 %mul53, ptr %x18, align 8
  %46 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %46, i64 0
  %47 = load i32, ptr %arrayidx54, align 4
  %conv55 = zext i32 %47 to i64
  %48 = load i32, ptr %x3, align 4
  %conv56 = zext i32 %48 to i64
  %mul57 = mul i64 %conv55, %conv56
  store i64 %mul57, ptr %x19, align 8
  %49 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %49, i64 0
  %50 = load i32, ptr %arrayidx58, align 4
  %conv59 = zext i32 %50 to i64
  %51 = load i32, ptr %x6, align 4
  %conv60 = zext i32 %51 to i64
  %mul61 = mul i64 %conv59, %conv60
  store i64 %mul61, ptr %x20, align 8
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %52, i64 0
  %53 = load i32, ptr %arrayidx62, align 4
  %conv63 = zext i32 %53 to i64
  %54 = load i32, ptr %x7, align 4
  %conv64 = zext i32 %54 to i64
  %mul65 = mul i64 %conv63, %conv64
  store i64 %mul65, ptr %x21, align 8
  %55 = load ptr, ptr %arg1.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %55, i64 0
  %56 = load i32, ptr %arrayidx66, align 4
  %conv67 = zext i32 %56 to i64
  %57 = load i32, ptr %x8, align 4
  %conv68 = zext i32 %57 to i64
  %mul69 = mul i64 %conv67, %conv68
  store i64 %mul69, ptr %x22, align 8
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %58, i64 0
  %59 = load i32, ptr %arrayidx70, align 4
  %conv71 = zext i32 %59 to i64
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %60, i64 0
  %61 = load i32, ptr %arrayidx72, align 4
  %conv73 = zext i32 %61 to i64
  %mul74 = mul i64 %conv71, %conv73
  store i64 %mul74, ptr %x23, align 8
  %62 = load i64, ptr %x23, align 8
  %63 = load i64, ptr %x15, align 8
  %64 = load i64, ptr %x13, align 8
  %add = add i64 %63, %64
  %add75 = add i64 %62, %add
  store i64 %add75, ptr %x24, align 8
  %65 = load i64, ptr %x24, align 8
  %shr = lshr i64 %65, 26
  store i64 %shr, ptr %x25, align 8
  %66 = load i64, ptr %x24, align 8
  %and = and i64 %66, 67108863
  %conv76 = trunc i64 %and to i32
  store i32 %conv76, ptr %x26, align 4
  %67 = load i64, ptr %x19, align 8
  %68 = load i64, ptr %x16, align 8
  %69 = load i64, ptr %x14, align 8
  %add77 = add i64 %68, %69
  %add78 = add i64 %67, %add77
  store i64 %add78, ptr %x27, align 8
  %70 = load i64, ptr %x20, align 8
  %71 = load i64, ptr %x17, align 8
  %72 = load i64, ptr %x9, align 8
  %add79 = add i64 %71, %72
  %add80 = add i64 %70, %add79
  store i64 %add80, ptr %x28, align 8
  %73 = load i64, ptr %x21, align 8
  %74 = load i64, ptr %x18, align 8
  %75 = load i64, ptr %x10, align 8
  %add81 = add i64 %74, %75
  %add82 = add i64 %73, %add81
  store i64 %add82, ptr %x29, align 8
  %76 = load i64, ptr %x22, align 8
  %77 = load i64, ptr %x12, align 8
  %78 = load i64, ptr %x11, align 8
  %add83 = add i64 %77, %78
  %add84 = add i64 %76, %add83
  store i64 %add84, ptr %x30, align 8
  %79 = load i64, ptr %x25, align 8
  %80 = load i64, ptr %x30, align 8
  %add85 = add i64 %79, %80
  store i64 %add85, ptr %x31, align 8
  %81 = load i64, ptr %x31, align 8
  %shr86 = lshr i64 %81, 26
  store i64 %shr86, ptr %x32, align 8
  %82 = load i64, ptr %x31, align 8
  %and87 = and i64 %82, 67108863
  %conv88 = trunc i64 %and87 to i32
  store i32 %conv88, ptr %x33, align 4
  %83 = load i64, ptr %x32, align 8
  %84 = load i64, ptr %x29, align 8
  %add89 = add i64 %83, %84
  store i64 %add89, ptr %x34, align 8
  %85 = load i64, ptr %x34, align 8
  %shr90 = lshr i64 %85, 26
  store i64 %shr90, ptr %x35, align 8
  %86 = load i64, ptr %x34, align 8
  %and91 = and i64 %86, 67108863
  %conv92 = trunc i64 %and91 to i32
  store i32 %conv92, ptr %x36, align 4
  %87 = load i64, ptr %x35, align 8
  %88 = load i64, ptr %x28, align 8
  %add93 = add i64 %87, %88
  store i64 %add93, ptr %x37, align 8
  %89 = load i64, ptr %x37, align 8
  %shr94 = lshr i64 %89, 26
  store i64 %shr94, ptr %x38, align 8
  %90 = load i64, ptr %x37, align 8
  %and95 = and i64 %90, 67108863
  %conv96 = trunc i64 %and95 to i32
  store i32 %conv96, ptr %x39, align 4
  %91 = load i64, ptr %x38, align 8
  %92 = load i64, ptr %x27, align 8
  %add97 = add i64 %91, %92
  store i64 %add97, ptr %x40, align 8
  %93 = load i64, ptr %x40, align 8
  %shr98 = lshr i64 %93, 26
  %conv99 = trunc i64 %shr98 to i32
  store i32 %conv99, ptr %x41, align 4
  %94 = load i64, ptr %x40, align 8
  %and100 = and i64 %94, 67108863
  %conv101 = trunc i64 %and100 to i32
  store i32 %conv101, ptr %x42, align 4
  %95 = load i32, ptr %x41, align 4
  %conv102 = zext i32 %95 to i64
  %mul103 = mul i64 %conv102, 5
  store i64 %mul103, ptr %x43, align 8
  %96 = load i32, ptr %x26, align 4
  %conv104 = zext i32 %96 to i64
  %97 = load i64, ptr %x43, align 8
  %add105 = add i64 %conv104, %97
  store i64 %add105, ptr %x44, align 8
  %98 = load i64, ptr %x44, align 8
  %shr106 = lshr i64 %98, 26
  %conv107 = trunc i64 %shr106 to i32
  store i32 %conv107, ptr %x45, align 4
  %99 = load i64, ptr %x44, align 8
  %and108 = and i64 %99, 67108863
  %conv109 = trunc i64 %and108 to i32
  store i32 %conv109, ptr %x46, align 4
  %100 = load i32, ptr %x45, align 4
  %101 = load i32, ptr %x33, align 4
  %add110 = add i32 %100, %101
  store i32 %add110, ptr %x47, align 4
  %102 = load i32, ptr %x47, align 4
  %shr111 = lshr i32 %102, 26
  %conv112 = trunc i32 %shr111 to i8
  store i8 %conv112, ptr %x48, align 1
  %103 = load i32, ptr %x47, align 4
  %and113 = and i32 %103, 67108863
  store i32 %and113, ptr %x49, align 4
  %104 = load i8, ptr %x48, align 1
  %conv114 = zext i8 %104 to i32
  %105 = load i32, ptr %x36, align 4
  %add115 = add i32 %conv114, %105
  store i32 %add115, ptr %x50, align 4
  %106 = load i32, ptr %x46, align 4
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %107, i64 0
  store i32 %106, ptr %arrayidx116, align 4
  %108 = load i32, ptr %x49, align 4
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %109, i64 1
  store i32 %108, ptr %arrayidx117, align 4
  %110 = load i32, ptr %x50, align 4
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %111, i64 2
  store i32 %110, ptr %arrayidx118, align 4
  %112 = load i32, ptr %x39, align 4
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, ptr %113, i64 3
  store i32 %112, ptr %arrayidx119, align 4
  %114 = load i32, ptr %x42, align 4
  %115 = load ptr, ptr %out1.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %115, i64 4
  store i32 %114, ptr %arrayidx120, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %shr2 = lshr i32 %5, 26
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
  %shr8 = lshr i32 %11, 26
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx9, align 4
  %add10 = add i32 %shr8, %13
  store i32 %add10, ptr %x5, align 4
  %14 = load i32, ptr %x1, align 4
  %and = and i32 %14, 67108863
  %15 = load i32, ptr %x5, align 4
  %shr11 = lshr i32 %15, 26
  %mul = mul i32 %shr11, 5
  %add12 = add i32 %and, %mul
  store i32 %add12, ptr %x6, align 4
  %16 = load i32, ptr %x6, align 4
  %shr13 = lshr i32 %16, 26
  %conv = trunc i32 %shr13 to i8
  %conv14 = zext i8 %conv to i32
  %17 = load i32, ptr %x2, align 4
  %and15 = and i32 %17, 67108863
  %add16 = add i32 %conv14, %and15
  store i32 %add16, ptr %x7, align 4
  %18 = load i32, ptr %x6, align 4
  %and17 = and i32 %18, 67108863
  store i32 %and17, ptr %x8, align 4
  %19 = load i32, ptr %x7, align 4
  %and18 = and i32 %19, 67108863
  store i32 %and18, ptr %x9, align 4
  %20 = load i32, ptr %x7, align 4
  %shr19 = lshr i32 %20, 26
  %conv20 = trunc i32 %shr19 to i8
  %conv21 = zext i8 %conv20 to i32
  %21 = load i32, ptr %x3, align 4
  %and22 = and i32 %21, 67108863
  %add23 = add i32 %conv21, %and22
  store i32 %add23, ptr %x10, align 4
  %22 = load i32, ptr %x4, align 4
  %and24 = and i32 %22, 67108863
  store i32 %and24, ptr %x11, align 4
  %23 = load i32, ptr %x5, align 4
  %and25 = and i32 %23, 67108863
  store i32 %and25, ptr %x12, align 4
  %24 = load i32, ptr %x8, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %25, i64 0
  store i32 %24, ptr %arrayidx26, align 4
  %26 = load i32, ptr %x9, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %26, ptr %arrayidx27, align 4
  %28 = load i32, ptr %x10, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %28, ptr %arrayidx28, align 4
  %30 = load i32, ptr %x11, align 4
  %31 = load ptr, ptr %out1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %31, i64 3
  store i32 %30, ptr %arrayidx29, align 4
  %32 = load i32, ptr %x12, align 4
  %33 = load ptr, ptr %out1.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %33, i64 4
  store i32 %32, ptr %arrayidx30, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
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
  %20 = load i32, ptr %x1, align 4
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %21, i64 0
  store i32 %20, ptr %arrayidx14, align 4
  %22 = load i32, ptr %x2, align 4
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %arrayidx15, align 4
  %24 = load i32, ptr %x3, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %24, ptr %arrayidx16, align 4
  %26 = load i32, ptr %x4, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %26, ptr %arrayidx17, align 4
  %28 = load i32, ptr %x5, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %28, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 134217718, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  %sub = sub i32 %add, %3
  store i32 %sub, ptr %x1, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx2, align 4
  %add3 = add i32 134217726, %5
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
  %add11 = add i32 134217726, %13
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
  %20 = load i32, ptr %x1, align 4
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %21, i64 0
  store i32 %20, ptr %arrayidx18, align 4
  %22 = load i32, ptr %x2, align 4
  %23 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %arrayidx19, align 4
  %24 = load i32, ptr %x3, align 4
  %25 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %25, i64 2
  store i32 %24, ptr %arrayidx20, align 4
  %26 = load i32, ptr %x4, align 4
  %27 = load ptr, ptr %out1.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %27, i64 3
  store i32 %26, ptr %arrayidx21, align 4
  %28 = load i32, ptr %x5, align 4
  %29 = load ptr, ptr %out1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %28, ptr %arrayidx22, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 134217718, %1
  store i32 %sub, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  %sub2 = sub i32 134217726, %3
  store i32 %sub2, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx3, align 4
  %sub4 = sub i32 134217726, %5
  store i32 %sub4, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx5, align 4
  %sub6 = sub i32 134217726, %7
  store i32 %sub6, ptr %x4, align 4
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 4
  %9 = load i32, ptr %arrayidx7, align 4
  %sub8 = sub i32 134217726, %9
  store i32 %sub8, ptr %x5, align 4
  %10 = load i32, ptr %x1, align 4
  %11 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %11, i64 0
  store i32 %10, ptr %arrayidx9, align 4
  %12 = load i32, ptr %x2, align 4
  %13 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %13, i64 1
  store i32 %12, ptr %arrayidx10, align 4
  %14 = load i32, ptr %x3, align 4
  %15 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 2
  store i32 %14, ptr %arrayidx11, align 4
  %16 = load i32, ptr %x4, align 4
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %17, i64 3
  store i32 %16, ptr %arrayidx12, align 4
  %18 = load i32, ptr %x5, align 4
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %19, i64 4
  store i32 %18, ptr %arrayidx13, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
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
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x1, i8 noundef zeroext %0, i32 noundef %2, i32 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %arrayidx3, align 4
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x2, i8 noundef zeroext %5, i32 noundef %7, i32 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %11, i64 2
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 2
  %14 = load i32, ptr %arrayidx5, align 4
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x3, i8 noundef zeroext %10, i32 noundef %12, i32 noundef %14)
  %15 = load i8, ptr %arg1.addr, align 1
  %16 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx6, align 4
  %18 = load ptr, ptr %arg3.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %18, i64 3
  %19 = load i32, ptr %arrayidx7, align 4
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x4, i8 noundef zeroext %15, i32 noundef %17, i32 noundef %19)
  %20 = load i8, ptr %arg1.addr, align 1
  %21 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %21, i64 4
  %22 = load i32, ptr %arrayidx8, align 4
  %23 = load ptr, ptr %arg3.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %23, i64 4
  %24 = load i32, ptr %arrayidx9, align 4
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x5, i8 noundef zeroext %20, i32 noundef %22, i32 noundef %24)
  %25 = load i32, ptr %x1, align 4
  %26 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %26, i64 0
  store i32 %25, ptr %arrayidx10, align 4
  %27 = load i32, ptr %x2, align 4
  %28 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %27, ptr %arrayidx11, align 4
  %29 = load i32, ptr %x3, align 4
  %30 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %30, i64 2
  store i32 %29, ptr %arrayidx12, align 4
  %31 = load i32, ptr %x4, align 4
  %32 = load ptr, ptr %out1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 3
  store i32 %31, ptr %arrayidx13, align 4
  %33 = load i32, ptr %x5, align 4
  %34 = load ptr, ptr %out1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %34, i64 4
  store i32 %33, ptr %arrayidx14, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x25 = alloca i8, align 1
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
  %x29 = alloca i8, align 1
  %x30 = alloca i8, align 1
  %x31 = alloca i32, align 4
  %x32 = alloca i8, align 1
  %x33 = alloca i32, align 4
  %x34 = alloca i8, align 1
  %x35 = alloca i32, align 4
  %x36 = alloca i8, align 1
  %x37 = alloca i8, align 1
  %x38 = alloca i32, align 4
  %x39 = alloca i8, align 1
  %x40 = alloca i32, align 4
  %x41 = alloca i8, align 1
  %x42 = alloca i32, align 4
  %x43 = alloca i8, align 1
  %x44 = alloca i8, align 1
  %x45 = alloca i32, align 4
  %x46 = alloca i8, align 1
  %x47 = alloca i32, align 4
  %x48 = alloca i8, align 1
  %x49 = alloca i32, align 4
  %x50 = alloca i8, align 1
  %x51 = alloca i8, align 1
  %x52 = alloca i8, align 1
  %x53 = alloca i32, align 4
  %x54 = alloca i8, align 1
  %x55 = alloca i32, align 4
  %x56 = alloca i8, align 1
  %x57 = alloca i8, align 1
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i32 noundef %1, i32 noundef 67108859)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i32 noundef %4, i32 noundef 67108863)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i32 noundef %7, i32 noundef 67108863)
  %8 = load i8, ptr %x6, align 1
  %9 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 3
  %10 = load i32, ptr %arrayidx3, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x7, ptr noundef %x8, i8 noundef zeroext %8, i32 noundef %10, i32 noundef 67108863)
  %11 = load i8, ptr %x8, align 1
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 4
  %13 = load i32, ptr %arrayidx4, align 4
  call void @fiat_poly1305_subborrowx_u26(ptr noundef %x9, ptr noundef %x10, i8 noundef zeroext %11, i32 noundef %13, i32 noundef 67108863)
  %14 = load i8, ptr %x10, align 1
  call void @fiat_poly1305_cmovznz_u32(ptr noundef %x11, i8 noundef zeroext %14, i32 noundef 0, i32 noundef -1)
  %15 = load i32, ptr %x1, align 4
  %16 = load i32, ptr %x11, align 4
  %and = and i32 %16, 67108859
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext 0, i32 noundef %15, i32 noundef %and)
  %17 = load i8, ptr %x13, align 1
  %18 = load i32, ptr %x3, align 4
  %19 = load i32, ptr %x11, align 4
  %and5 = and i32 %19, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x14, ptr noundef %x15, i8 noundef zeroext %17, i32 noundef %18, i32 noundef %and5)
  %20 = load i8, ptr %x15, align 1
  %21 = load i32, ptr %x5, align 4
  %22 = load i32, ptr %x11, align 4
  %and6 = and i32 %22, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x16, ptr noundef %x17, i8 noundef zeroext %20, i32 noundef %21, i32 noundef %and6)
  %23 = load i8, ptr %x17, align 1
  %24 = load i32, ptr %x7, align 4
  %25 = load i32, ptr %x11, align 4
  %and7 = and i32 %25, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x18, ptr noundef %x19, i8 noundef zeroext %23, i32 noundef %24, i32 noundef %and7)
  %26 = load i8, ptr %x19, align 1
  %27 = load i32, ptr %x9, align 4
  %28 = load i32, ptr %x11, align 4
  %and8 = and i32 %28, 67108863
  call void @fiat_poly1305_addcarryx_u26(ptr noundef %x20, ptr noundef %x21, i8 noundef zeroext %26, i32 noundef %27, i32 noundef %and8)
  %29 = load i32, ptr %x18, align 4
  %shl = shl i32 %29, 6
  store i32 %shl, ptr %x22, align 4
  %30 = load i32, ptr %x16, align 4
  %shl9 = shl i32 %30, 4
  store i32 %shl9, ptr %x23, align 4
  %31 = load i32, ptr %x14, align 4
  %shl10 = shl i32 %31, 2
  store i32 %shl10, ptr %x24, align 4
  %32 = load i32, ptr %x12, align 4
  %and11 = and i32 %32, 255
  %conv = trunc i32 %and11 to i8
  store i8 %conv, ptr %x25, align 1
  %33 = load i32, ptr %x12, align 4
  %shr = lshr i32 %33, 8
  store i32 %shr, ptr %x26, align 4
  %34 = load i32, ptr %x26, align 4
  %and12 = and i32 %34, 255
  %conv13 = trunc i32 %and12 to i8
  store i8 %conv13, ptr %x27, align 1
  %35 = load i32, ptr %x26, align 4
  %shr14 = lshr i32 %35, 8
  store i32 %shr14, ptr %x28, align 4
  %36 = load i32, ptr %x28, align 4
  %and15 = and i32 %36, 255
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, ptr %x29, align 1
  %37 = load i32, ptr %x28, align 4
  %shr17 = lshr i32 %37, 8
  %conv18 = trunc i32 %shr17 to i8
  store i8 %conv18, ptr %x30, align 1
  %38 = load i32, ptr %x24, align 4
  %39 = load i8, ptr %x30, align 1
  %conv19 = zext i8 %39 to i32
  %add = add i32 %38, %conv19
  store i32 %add, ptr %x31, align 4
  %40 = load i32, ptr %x31, align 4
  %and20 = and i32 %40, 255
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, ptr %x32, align 1
  %41 = load i32, ptr %x31, align 4
  %shr22 = lshr i32 %41, 8
  store i32 %shr22, ptr %x33, align 4
  %42 = load i32, ptr %x33, align 4
  %and23 = and i32 %42, 255
  %conv24 = trunc i32 %and23 to i8
  store i8 %conv24, ptr %x34, align 1
  %43 = load i32, ptr %x33, align 4
  %shr25 = lshr i32 %43, 8
  store i32 %shr25, ptr %x35, align 4
  %44 = load i32, ptr %x35, align 4
  %and26 = and i32 %44, 255
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, ptr %x36, align 1
  %45 = load i32, ptr %x35, align 4
  %shr28 = lshr i32 %45, 8
  %conv29 = trunc i32 %shr28 to i8
  store i8 %conv29, ptr %x37, align 1
  %46 = load i32, ptr %x23, align 4
  %47 = load i8, ptr %x37, align 1
  %conv30 = zext i8 %47 to i32
  %add31 = add i32 %46, %conv30
  store i32 %add31, ptr %x38, align 4
  %48 = load i32, ptr %x38, align 4
  %and32 = and i32 %48, 255
  %conv33 = trunc i32 %and32 to i8
  store i8 %conv33, ptr %x39, align 1
  %49 = load i32, ptr %x38, align 4
  %shr34 = lshr i32 %49, 8
  store i32 %shr34, ptr %x40, align 4
  %50 = load i32, ptr %x40, align 4
  %and35 = and i32 %50, 255
  %conv36 = trunc i32 %and35 to i8
  store i8 %conv36, ptr %x41, align 1
  %51 = load i32, ptr %x40, align 4
  %shr37 = lshr i32 %51, 8
  store i32 %shr37, ptr %x42, align 4
  %52 = load i32, ptr %x42, align 4
  %and38 = and i32 %52, 255
  %conv39 = trunc i32 %and38 to i8
  store i8 %conv39, ptr %x43, align 1
  %53 = load i32, ptr %x42, align 4
  %shr40 = lshr i32 %53, 8
  %conv41 = trunc i32 %shr40 to i8
  store i8 %conv41, ptr %x44, align 1
  %54 = load i32, ptr %x22, align 4
  %55 = load i8, ptr %x44, align 1
  %conv42 = zext i8 %55 to i32
  %add43 = add i32 %54, %conv42
  store i32 %add43, ptr %x45, align 4
  %56 = load i32, ptr %x45, align 4
  %and44 = and i32 %56, 255
  %conv45 = trunc i32 %and44 to i8
  store i8 %conv45, ptr %x46, align 1
  %57 = load i32, ptr %x45, align 4
  %shr46 = lshr i32 %57, 8
  store i32 %shr46, ptr %x47, align 4
  %58 = load i32, ptr %x47, align 4
  %and47 = and i32 %58, 255
  %conv48 = trunc i32 %and47 to i8
  store i8 %conv48, ptr %x48, align 1
  %59 = load i32, ptr %x47, align 4
  %shr49 = lshr i32 %59, 8
  store i32 %shr49, ptr %x49, align 4
  %60 = load i32, ptr %x49, align 4
  %and50 = and i32 %60, 255
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, ptr %x50, align 1
  %61 = load i32, ptr %x49, align 4
  %shr52 = lshr i32 %61, 8
  %conv53 = trunc i32 %shr52 to i8
  store i8 %conv53, ptr %x51, align 1
  %62 = load i32, ptr %x20, align 4
  %and54 = and i32 %62, 255
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, ptr %x52, align 1
  %63 = load i32, ptr %x20, align 4
  %shr56 = lshr i32 %63, 8
  store i32 %shr56, ptr %x53, align 4
  %64 = load i32, ptr %x53, align 4
  %and57 = and i32 %64, 255
  %conv58 = trunc i32 %and57 to i8
  store i8 %conv58, ptr %x54, align 1
  %65 = load i32, ptr %x53, align 4
  %shr59 = lshr i32 %65, 8
  store i32 %shr59, ptr %x55, align 4
  %66 = load i32, ptr %x55, align 4
  %and60 = and i32 %66, 255
  %conv61 = trunc i32 %and60 to i8
  store i8 %conv61, ptr %x56, align 1
  %67 = load i32, ptr %x55, align 4
  %shr62 = lshr i32 %67, 8
  %conv63 = trunc i32 %shr62 to i8
  store i8 %conv63, ptr %x57, align 1
  %68 = load i8, ptr %x25, align 1
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %69, i64 0
  store i8 %68, ptr %arrayidx64, align 1
  %70 = load i8, ptr %x27, align 1
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %70, ptr %arrayidx65, align 1
  %72 = load i8, ptr %x29, align 1
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %73, i64 2
  store i8 %72, ptr %arrayidx66, align 1
  %74 = load i8, ptr %x32, align 1
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %75, i64 3
  store i8 %74, ptr %arrayidx67, align 1
  %76 = load i8, ptr %x34, align 1
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %77, i64 4
  store i8 %76, ptr %arrayidx68, align 1
  %78 = load i8, ptr %x36, align 1
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %79, i64 5
  store i8 %78, ptr %arrayidx69, align 1
  %80 = load i8, ptr %x39, align 1
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %81, i64 6
  store i8 %80, ptr %arrayidx70, align 1
  %82 = load i8, ptr %x41, align 1
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %83, i64 7
  store i8 %82, ptr %arrayidx71, align 1
  %84 = load i8, ptr %x43, align 1
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %85, i64 8
  store i8 %84, ptr %arrayidx72, align 1
  %86 = load i8, ptr %x46, align 1
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %87, i64 9
  store i8 %86, ptr %arrayidx73, align 1
  %88 = load i8, ptr %x48, align 1
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %89, i64 10
  store i8 %88, ptr %arrayidx74, align 1
  %90 = load i8, ptr %x50, align 1
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %91, i64 11
  store i8 %90, ptr %arrayidx75, align 1
  %92 = load i8, ptr %x51, align 1
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %93, i64 12
  store i8 %92, ptr %arrayidx76, align 1
  %94 = load i8, ptr %x52, align 1
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %95, i64 13
  store i8 %94, ptr %arrayidx77, align 1
  %96 = load i8, ptr %x54, align 1
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %97, i64 14
  store i8 %96, ptr %arrayidx78, align 1
  %98 = load i8, ptr %x56, align 1
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %99, i64 15
  store i8 %98, ptr %arrayidx79, align 1
  %100 = load i8, ptr %x57, align 1
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %101, i64 16
  store i8 %100, ptr %arrayidx80, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x19 = alloca i32, align 4
  %x20 = alloca i32, align 4
  %x21 = alloca i32, align 4
  %x22 = alloca i8, align 1
  %x23 = alloca i32, align 4
  %x24 = alloca i32, align 4
  %x25 = alloca i32, align 4
  %x26 = alloca i32, align 4
  %x27 = alloca i8, align 1
  %x28 = alloca i32, align 4
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  store i32 %shl, ptr %x1, align 4
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 15
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  store i32 %shl3, ptr %x2, align 4
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 14
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  store i32 %shl6, ptr %x3, align 4
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 13
  %7 = load i8, ptr %arrayidx7, align 1
  store i8 %7, ptr %x4, align 1
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 12
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl10 = shl i32 %conv9, 18
  store i32 %shl10, ptr %x5, align 4
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 11
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %shl13 = shl i32 %conv12, 10
  store i32 %shl13, ptr %x6, align 4
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 10
  %13 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %shl16 = shl i32 %conv15, 2
  store i32 %shl16, ptr %x7, align 4
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 9
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %shl19 = shl i32 %conv18, 20
  store i32 %shl19, ptr %x8, align 4
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %shl22 = shl i32 %conv21, 12
  store i32 %shl22, ptr %x9, align 4
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 7
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %shl25 = shl i32 %conv24, 4
  store i32 %shl25, ptr %x10, align 4
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 6
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %shl28 = shl i32 %conv27, 22
  store i32 %shl28, ptr %x11, align 4
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 5
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %shl31 = shl i32 %conv30, 14
  store i32 %shl31, ptr %x12, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 4
  %25 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %25 to i32
  %shl34 = shl i32 %conv33, 6
  store i32 %shl34, ptr %x13, align 4
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %27 to i32
  %shl37 = shl i32 %conv36, 24
  store i32 %shl37, ptr %x14, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i32
  %shl40 = shl i32 %conv39, 16
  store i32 %shl40, ptr %x15, align 4
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %31 to i32
  %shl43 = shl i32 %conv42, 8
  store i32 %shl43, ptr %x16, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx44, align 1
  store i8 %33, ptr %x17, align 1
  %34 = load i32, ptr %x16, align 4
  %35 = load i8, ptr %x17, align 1
  %conv45 = zext i8 %35 to i32
  %add = add i32 %34, %conv45
  store i32 %add, ptr %x18, align 4
  %36 = load i32, ptr %x15, align 4
  %37 = load i32, ptr %x18, align 4
  %add46 = add i32 %36, %37
  store i32 %add46, ptr %x19, align 4
  %38 = load i32, ptr %x14, align 4
  %39 = load i32, ptr %x19, align 4
  %add47 = add i32 %38, %39
  store i32 %add47, ptr %x20, align 4
  %40 = load i32, ptr %x20, align 4
  %and = and i32 %40, 67108863
  store i32 %and, ptr %x21, align 4
  %41 = load i32, ptr %x20, align 4
  %shr = lshr i32 %41, 26
  %conv48 = trunc i32 %shr to i8
  store i8 %conv48, ptr %x22, align 1
  %42 = load i32, ptr %x13, align 4
  %43 = load i8, ptr %x22, align 1
  %conv49 = zext i8 %43 to i32
  %add50 = add i32 %42, %conv49
  store i32 %add50, ptr %x23, align 4
  %44 = load i32, ptr %x12, align 4
  %45 = load i32, ptr %x23, align 4
  %add51 = add i32 %44, %45
  store i32 %add51, ptr %x24, align 4
  %46 = load i32, ptr %x11, align 4
  %47 = load i32, ptr %x24, align 4
  %add52 = add i32 %46, %47
  store i32 %add52, ptr %x25, align 4
  %48 = load i32, ptr %x25, align 4
  %and53 = and i32 %48, 67108863
  store i32 %and53, ptr %x26, align 4
  %49 = load i32, ptr %x25, align 4
  %shr54 = lshr i32 %49, 26
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, ptr %x27, align 1
  %50 = load i32, ptr %x10, align 4
  %51 = load i8, ptr %x27, align 1
  %conv56 = zext i8 %51 to i32
  %add57 = add i32 %50, %conv56
  store i32 %add57, ptr %x28, align 4
  %52 = load i32, ptr %x9, align 4
  %53 = load i32, ptr %x28, align 4
  %add58 = add i32 %52, %53
  store i32 %add58, ptr %x29, align 4
  %54 = load i32, ptr %x8, align 4
  %55 = load i32, ptr %x29, align 4
  %add59 = add i32 %54, %55
  store i32 %add59, ptr %x30, align 4
  %56 = load i32, ptr %x30, align 4
  %and60 = and i32 %56, 67108863
  store i32 %and60, ptr %x31, align 4
  %57 = load i32, ptr %x30, align 4
  %shr61 = lshr i32 %57, 26
  %conv62 = trunc i32 %shr61 to i8
  store i8 %conv62, ptr %x32, align 1
  %58 = load i32, ptr %x7, align 4
  %59 = load i8, ptr %x32, align 1
  %conv63 = zext i8 %59 to i32
  %add64 = add i32 %58, %conv63
  store i32 %add64, ptr %x33, align 4
  %60 = load i32, ptr %x6, align 4
  %61 = load i32, ptr %x33, align 4
  %add65 = add i32 %60, %61
  store i32 %add65, ptr %x34, align 4
  %62 = load i32, ptr %x5, align 4
  %63 = load i32, ptr %x34, align 4
  %add66 = add i32 %62, %63
  store i32 %add66, ptr %x35, align 4
  %64 = load i32, ptr %x3, align 4
  %65 = load i8, ptr %x4, align 1
  %conv67 = zext i8 %65 to i32
  %add68 = add i32 %64, %conv67
  store i32 %add68, ptr %x36, align 4
  %66 = load i32, ptr %x2, align 4
  %67 = load i32, ptr %x36, align 4
  %add69 = add i32 %66, %67
  store i32 %add69, ptr %x37, align 4
  %68 = load i32, ptr %x1, align 4
  %69 = load i32, ptr %x37, align 4
  %add70 = add i32 %68, %69
  store i32 %add70, ptr %x38, align 4
  %70 = load i32, ptr %x21, align 4
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %71, i64 0
  store i32 %70, ptr %arrayidx71, align 4
  %72 = load i32, ptr %x26, align 4
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %73, i64 1
  store i32 %72, ptr %arrayidx72, align 4
  %74 = load i32, ptr %x31, align 4
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %75, i64 2
  store i32 %74, ptr %arrayidx73, align 4
  %76 = load i32, ptr %x35, align 4
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %77, i64 3
  store i32 %76, ptr %arrayidx74, align 4
  %78 = load i32, ptr %x38, align 4
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, ptr %79, i64 4
  store i32 %78, ptr %arrayidx75, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
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
  %10 = load i32, ptr %x1, align 4
  %11 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 0
  store i32 %10, ptr %arrayidx5, align 4
  %12 = load i32, ptr %x2, align 4
  %13 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i64 1
  store i32 %12, ptr %arrayidx6, align 4
  %14 = load i32, ptr %x3, align 4
  %15 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i64 2
  store i32 %14, ptr %arrayidx7, align 4
  %16 = load i32, ptr %x4, align 4
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %17, i64 3
  store i32 %16, ptr %arrayidx8, align 4
  %18 = load i32, ptr %x5, align 4
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %19, i64 4
  store i32 %18, ptr %arrayidx9, align 4
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
!6 = !{i64 2006}
