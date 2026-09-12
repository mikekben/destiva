; ModuleID = 'test/test.c'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiat_poly1305_value_barrier_u64(i64 noundef %a) #0 {
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
define dso_local void @fiat_poly1305_addcarryx_u44(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %and = and i64 %3, 17592186044415
  store i64 %and, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 44
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
define dso_local void @fiat_poly1305_subborrowx_u44(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %shr = ashr i64 %3, 44
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 17592186044415
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
define dso_local void @fiat_poly1305_addcarryx_u43(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %and = and i64 %3, 8796093022207
  store i64 %and, ptr %x2, align 8
  %4 = load i64, ptr %x1, align 8
  %shr = lshr i64 %4, 43
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
define dso_local void @fiat_poly1305_subborrowx_u43(ptr noundef %out1, ptr noundef %out2, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %shr = ashr i64 %3, 43
  %conv2 = trunc i64 %shr to i8
  store i8 %conv2, ptr %x2, align 1
  %4 = load i64, ptr %x1, align 8
  %and = and i64 %4, 8796093022207
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
define dso_local void @fiat_poly1305_cmovznz_u64(ptr noundef %out1, i8 noundef zeroext %arg1, i64 noundef %arg2, i64 noundef %arg3) #0 {
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
  %call = call i64 @fiat_poly1305_value_barrier_u64(i64 noundef %2)
  %3 = load i64, ptr %arg3.addr, align 8
  %and5 = and i64 %call, %3
  %4 = load i64, ptr %x2, align 8
  %not = xor i64 %4, -1
  %call6 = call i64 @fiat_poly1305_value_barrier_u64(i64 noundef %not)
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
define dso_local void @fiat_poly1305_carry_mul(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
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
  %x11 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %x13 = alloca i128, align 16
  %x14 = alloca i128, align 16
  %x15 = alloca i128, align 16
  %x16 = alloca i64, align 8
  %x17 = alloca i64, align 8
  %x18 = alloca i128, align 16
  %x19 = alloca i64, align 8
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i8, align 1
  %x27 = alloca i64, align 8
  %x28 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 2
  %1 = load i64, ptr %arrayidx, align 8
  %conv = zext i64 %1 to i128
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  %mul = mul i64 %3, 5
  %conv2 = zext i64 %mul to i128
  %mul3 = mul i128 %conv, %conv2
  store i128 %mul3, ptr %x1, align 16
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx4, align 8
  %conv5 = zext i64 %5 to i128
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx6, align 8
  %mul7 = mul i64 %7, 10
  %conv8 = zext i64 %mul7 to i128
  %mul9 = mul i128 %conv5, %conv8
  store i128 %mul9, ptr %x2, align 16
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx10, align 8
  %conv11 = zext i64 %9 to i128
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx12, align 8
  %mul13 = mul i64 %11, 10
  %conv14 = zext i64 %mul13 to i128
  %mul15 = mul i128 %conv11, %conv14
  store i128 %mul15, ptr %x3, align 16
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %arrayidx16, align 8
  %conv17 = zext i64 %13 to i128
  %14 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %14, i64 0
  %15 = load i64, ptr %arrayidx18, align 8
  %conv19 = zext i64 %15 to i128
  %mul20 = mul i128 %conv17, %conv19
  store i128 %mul20, ptr %x4, align 16
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, ptr %16, i64 1
  %17 = load i64, ptr %arrayidx21, align 8
  %conv22 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg2.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, ptr %18, i64 1
  %19 = load i64, ptr %arrayidx23, align 8
  %mul24 = mul i64 %19, 2
  %conv25 = zext i64 %mul24 to i128
  %mul26 = mul i128 %conv22, %conv25
  store i128 %mul26, ptr %x5, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, ptr %20, i64 1
  %21 = load i64, ptr %arrayidx27, align 8
  %conv28 = zext i64 %21 to i128
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, ptr %22, i64 0
  %23 = load i64, ptr %arrayidx29, align 8
  %conv30 = zext i64 %23 to i128
  %mul31 = mul i128 %conv28, %conv30
  store i128 %mul31, ptr %x6, align 16
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i64, ptr %24, i64 0
  %25 = load i64, ptr %arrayidx32, align 8
  %conv33 = zext i64 %25 to i128
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %26, i64 2
  %27 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %27 to i128
  %mul36 = mul i128 %conv33, %conv35
  store i128 %mul36, ptr %x7, align 16
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %28, i64 0
  %29 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %29 to i128
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %30, i64 1
  %31 = load i64, ptr %arrayidx39, align 8
  %conv40 = zext i64 %31 to i128
  %mul41 = mul i128 %conv38, %conv40
  store i128 %mul41, ptr %x8, align 16
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, ptr %32, i64 0
  %33 = load i64, ptr %arrayidx42, align 8
  %conv43 = zext i64 %33 to i128
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, ptr %34, i64 0
  %35 = load i64, ptr %arrayidx44, align 8
  %conv45 = zext i64 %35 to i128
  %mul46 = mul i128 %conv43, %conv45
  store i128 %mul46, ptr %x9, align 16
  %36 = load i128, ptr %x9, align 16
  %37 = load i128, ptr %x3, align 16
  %38 = load i128, ptr %x2, align 16
  %add = add i128 %37, %38
  %add47 = add i128 %36, %add
  store i128 %add47, ptr %x10, align 16
  %39 = load i128, ptr %x10, align 16
  %shr = lshr i128 %39, 44
  %conv48 = trunc i128 %shr to i64
  store i64 %conv48, ptr %x11, align 8
  %40 = load i128, ptr %x10, align 16
  %and = and i128 %40, 17592186044415
  %conv49 = trunc i128 %and to i64
  store i64 %conv49, ptr %x12, align 8
  %41 = load i128, ptr %x7, align 16
  %42 = load i128, ptr %x5, align 16
  %43 = load i128, ptr %x4, align 16
  %add50 = add i128 %42, %43
  %add51 = add i128 %41, %add50
  store i128 %add51, ptr %x13, align 16
  %44 = load i128, ptr %x8, align 16
  %45 = load i128, ptr %x6, align 16
  %46 = load i128, ptr %x1, align 16
  %add52 = add i128 %45, %46
  %add53 = add i128 %44, %add52
  store i128 %add53, ptr %x14, align 16
  %47 = load i64, ptr %x11, align 8
  %conv54 = zext i64 %47 to i128
  %48 = load i128, ptr %x14, align 16
  %add55 = add i128 %conv54, %48
  store i128 %add55, ptr %x15, align 16
  %49 = load i128, ptr %x15, align 16
  %shr56 = lshr i128 %49, 43
  %conv57 = trunc i128 %shr56 to i64
  store i64 %conv57, ptr %x16, align 8
  %50 = load i128, ptr %x15, align 16
  %and58 = and i128 %50, 8796093022207
  %conv59 = trunc i128 %and58 to i64
  store i64 %conv59, ptr %x17, align 8
  %51 = load i64, ptr %x16, align 8
  %conv60 = zext i64 %51 to i128
  %52 = load i128, ptr %x13, align 16
  %add61 = add i128 %conv60, %52
  store i128 %add61, ptr %x18, align 16
  %53 = load i128, ptr %x18, align 16
  %shr62 = lshr i128 %53, 43
  %conv63 = trunc i128 %shr62 to i64
  store i64 %conv63, ptr %x19, align 8
  %54 = load i128, ptr %x18, align 16
  %and64 = and i128 %54, 8796093022207
  %conv65 = trunc i128 %and64 to i64
  store i64 %conv65, ptr %x20, align 8
  %55 = load i64, ptr %x19, align 8
  %mul66 = mul i64 %55, 5
  store i64 %mul66, ptr %x21, align 8
  %56 = load i64, ptr %x12, align 8
  %57 = load i64, ptr %x21, align 8
  %add67 = add i64 %56, %57
  store i64 %add67, ptr %x22, align 8
  %58 = load i64, ptr %x22, align 8
  %shr68 = lshr i64 %58, 44
  store i64 %shr68, ptr %x23, align 8
  %59 = load i64, ptr %x22, align 8
  %and69 = and i64 %59, 17592186044415
  store i64 %and69, ptr %x24, align 8
  %60 = load i64, ptr %x23, align 8
  %61 = load i64, ptr %x17, align 8
  %add70 = add i64 %60, %61
  store i64 %add70, ptr %x25, align 8
  %62 = load i64, ptr %x25, align 8
  %shr71 = lshr i64 %62, 43
  %conv72 = trunc i64 %shr71 to i8
  store i8 %conv72, ptr %x26, align 1
  %63 = load i64, ptr %x25, align 8
  %and73 = and i64 %63, 8796093022207
  store i64 %and73, ptr %x27, align 8
  %64 = load i8, ptr %x26, align 1
  %conv74 = zext i8 %64 to i64
  %65 = load i64, ptr %x20, align 8
  %add75 = add i64 %conv74, %65
  store i64 %add75, ptr %x28, align 8
  %66 = load i64, ptr %x24, align 8
  %67 = load ptr, ptr %out1.addr, align 8
  %arrayidx76 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 %66, ptr %arrayidx76, align 8
  %68 = load i64, ptr %x27, align 8
  %69 = load ptr, ptr %out1.addr, align 8
  %arrayidx77 = getelementptr inbounds i64, ptr %69, i64 1
  store i64 %68, ptr %arrayidx77, align 8
  %70 = load i64, ptr %x28, align 8
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %71, i64 2
  store i64 %70, ptr %arrayidx78, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_carry_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %x5 = alloca i128, align 16
  %x6 = alloca i128, align 16
  %x7 = alloca i128, align 16
  %x8 = alloca i128, align 16
  %x9 = alloca i128, align 16
  %x10 = alloca i128, align 16
  %x11 = alloca i128, align 16
  %x12 = alloca i64, align 8
  %x13 = alloca i64, align 8
  %x14 = alloca i128, align 16
  %x15 = alloca i128, align 16
  %x16 = alloca i128, align 16
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i128, align 16
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i64, align 8
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i64, align 8
  %x26 = alloca i64, align 8
  %x27 = alloca i8, align 1
  %x28 = alloca i64, align 8
  %x29 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 2
  %1 = load i64, ptr %arrayidx, align 8
  %mul = mul i64 %1, 5
  store i64 %mul, ptr %x1, align 8
  %2 = load i64, ptr %x1, align 8
  %mul1 = mul i64 %2, 2
  store i64 %mul1, ptr %x2, align 8
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %3, i64 2
  %4 = load i64, ptr %arrayidx2, align 8
  %mul3 = mul i64 %4, 2
  store i64 %mul3, ptr %x3, align 8
  %5 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %arrayidx4, align 8
  %mul5 = mul i64 %6, 2
  store i64 %mul5, ptr %x4, align 8
  %7 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %7, i64 2
  %8 = load i64, ptr %arrayidx6, align 8
  %conv = zext i64 %8 to i128
  %9 = load i64, ptr %x1, align 8
  %conv7 = zext i64 %9 to i128
  %mul8 = mul i128 %conv, %conv7
  store i128 %mul8, ptr %x5, align 16
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 1
  %11 = load i64, ptr %arrayidx9, align 8
  %conv10 = zext i64 %11 to i128
  %12 = load i64, ptr %x2, align 8
  %mul11 = mul i64 %12, 2
  %conv12 = zext i64 %mul11 to i128
  %mul13 = mul i128 %conv10, %conv12
  store i128 %mul13, ptr %x6, align 16
  %13 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %13, i64 1
  %14 = load i64, ptr %arrayidx14, align 8
  %conv15 = zext i64 %14 to i128
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, ptr %15, i64 1
  %16 = load i64, ptr %arrayidx16, align 8
  %mul17 = mul i64 %16, 2
  %conv18 = zext i64 %mul17 to i128
  %mul19 = mul i128 %conv15, %conv18
  store i128 %mul19, ptr %x7, align 16
  %17 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %17, i64 0
  %18 = load i64, ptr %arrayidx20, align 8
  %conv21 = zext i64 %18 to i128
  %19 = load i64, ptr %x3, align 8
  %conv22 = zext i64 %19 to i128
  %mul23 = mul i128 %conv21, %conv22
  store i128 %mul23, ptr %x8, align 16
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i64, ptr %20, i64 0
  %21 = load i64, ptr %arrayidx24, align 8
  %conv25 = zext i64 %21 to i128
  %22 = load i64, ptr %x4, align 8
  %conv26 = zext i64 %22 to i128
  %mul27 = mul i128 %conv25, %conv26
  store i128 %mul27, ptr %x9, align 16
  %23 = load ptr, ptr %arg1.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, ptr %23, i64 0
  %24 = load i64, ptr %arrayidx28, align 8
  %conv29 = zext i64 %24 to i128
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %25, i64 0
  %26 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %26 to i128
  %mul32 = mul i128 %conv29, %conv31
  store i128 %mul32, ptr %x10, align 16
  %27 = load i128, ptr %x10, align 16
  %28 = load i128, ptr %x6, align 16
  %add = add i128 %27, %28
  store i128 %add, ptr %x11, align 16
  %29 = load i128, ptr %x11, align 16
  %shr = lshr i128 %29, 44
  %conv33 = trunc i128 %shr to i64
  store i64 %conv33, ptr %x12, align 8
  %30 = load i128, ptr %x11, align 16
  %and = and i128 %30, 17592186044415
  %conv34 = trunc i128 %and to i64
  store i64 %conv34, ptr %x13, align 8
  %31 = load i128, ptr %x8, align 16
  %32 = load i128, ptr %x7, align 16
  %add35 = add i128 %31, %32
  store i128 %add35, ptr %x14, align 16
  %33 = load i128, ptr %x9, align 16
  %34 = load i128, ptr %x5, align 16
  %add36 = add i128 %33, %34
  store i128 %add36, ptr %x15, align 16
  %35 = load i64, ptr %x12, align 8
  %conv37 = zext i64 %35 to i128
  %36 = load i128, ptr %x15, align 16
  %add38 = add i128 %conv37, %36
  store i128 %add38, ptr %x16, align 16
  %37 = load i128, ptr %x16, align 16
  %shr39 = lshr i128 %37, 43
  %conv40 = trunc i128 %shr39 to i64
  store i64 %conv40, ptr %x17, align 8
  %38 = load i128, ptr %x16, align 16
  %and41 = and i128 %38, 8796093022207
  %conv42 = trunc i128 %and41 to i64
  store i64 %conv42, ptr %x18, align 8
  %39 = load i64, ptr %x17, align 8
  %conv43 = zext i64 %39 to i128
  %40 = load i128, ptr %x14, align 16
  %add44 = add i128 %conv43, %40
  store i128 %add44, ptr %x19, align 16
  %41 = load i128, ptr %x19, align 16
  %shr45 = lshr i128 %41, 43
  %conv46 = trunc i128 %shr45 to i64
  store i64 %conv46, ptr %x20, align 8
  %42 = load i128, ptr %x19, align 16
  %and47 = and i128 %42, 8796093022207
  %conv48 = trunc i128 %and47 to i64
  store i64 %conv48, ptr %x21, align 8
  %43 = load i64, ptr %x20, align 8
  %mul49 = mul i64 %43, 5
  store i64 %mul49, ptr %x22, align 8
  %44 = load i64, ptr %x13, align 8
  %45 = load i64, ptr %x22, align 8
  %add50 = add i64 %44, %45
  store i64 %add50, ptr %x23, align 8
  %46 = load i64, ptr %x23, align 8
  %shr51 = lshr i64 %46, 44
  store i64 %shr51, ptr %x24, align 8
  %47 = load i64, ptr %x23, align 8
  %and52 = and i64 %47, 17592186044415
  store i64 %and52, ptr %x25, align 8
  %48 = load i64, ptr %x24, align 8
  %49 = load i64, ptr %x18, align 8
  %add53 = add i64 %48, %49
  store i64 %add53, ptr %x26, align 8
  %50 = load i64, ptr %x26, align 8
  %shr54 = lshr i64 %50, 43
  %conv55 = trunc i64 %shr54 to i8
  store i8 %conv55, ptr %x27, align 1
  %51 = load i64, ptr %x26, align 8
  %and56 = and i64 %51, 8796093022207
  store i64 %and56, ptr %x28, align 8
  %52 = load i8, ptr %x27, align 1
  %conv57 = zext i8 %52 to i64
  %53 = load i64, ptr %x21, align 8
  %add58 = add i64 %conv57, %53
  store i64 %add58, ptr %x29, align 8
  %54 = load i64, ptr %x25, align 8
  %55 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i64, ptr %55, i64 0
  store i64 %54, ptr %arrayidx59, align 8
  %56 = load i64, ptr %x28, align 8
  %57 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i64, ptr %57, i64 1
  store i64 %56, ptr %arrayidx60, align 8
  %58 = load i64, ptr %x29, align 8
  %59 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i64, ptr %59, i64 2
  store i64 %58, ptr %arrayidx61, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_carry(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %2 = load i64, ptr %x1, align 8
  %shr = lshr i64 %2, 44
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  %add = add i64 %shr, %4
  store i64 %add, ptr %x2, align 8
  %5 = load i64, ptr %x2, align 8
  %shr2 = lshr i64 %5, 43
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %shr2, %7
  store i64 %add4, ptr %x3, align 8
  %8 = load i64, ptr %x1, align 8
  %and = and i64 %8, 17592186044415
  %9 = load i64, ptr %x3, align 8
  %shr5 = lshr i64 %9, 43
  %mul = mul i64 %shr5, 5
  %add6 = add i64 %and, %mul
  store i64 %add6, ptr %x4, align 8
  %10 = load i64, ptr %x4, align 8
  %shr7 = lshr i64 %10, 44
  %conv = trunc i64 %shr7 to i8
  %conv8 = zext i8 %conv to i64
  %11 = load i64, ptr %x2, align 8
  %and9 = and i64 %11, 8796093022207
  %add10 = add i64 %conv8, %and9
  store i64 %add10, ptr %x5, align 8
  %12 = load i64, ptr %x4, align 8
  %and11 = and i64 %12, 17592186044415
  store i64 %and11, ptr %x6, align 8
  %13 = load i64, ptr %x5, align 8
  %and12 = and i64 %13, 8796093022207
  store i64 %and12, ptr %x7, align 8
  %14 = load i64, ptr %x5, align 8
  %shr13 = lshr i64 %14, 43
  %conv14 = trunc i64 %shr13 to i8
  %conv15 = zext i8 %conv14 to i64
  %15 = load i64, ptr %x3, align 8
  %and16 = and i64 %15, 8796093022207
  %add17 = add i64 %conv15, %and16
  store i64 %add17, ptr %x8, align 8
  %16 = load i64, ptr %x6, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %17, i64 0
  store i64 %16, ptr %arrayidx18, align 8
  %18 = load i64, ptr %x7, align 8
  %19 = load ptr, ptr %out1.addr, align 8
  %arrayidx19 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 %18, ptr %arrayidx19, align 8
  %20 = load i64, ptr %x8, align 8
  %21 = load ptr, ptr %out1.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %21, i64 2
  store i64 %20, ptr %arrayidx20, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
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
  %12 = load i64, ptr %x1, align 8
  %13 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %13, i64 0
  store i64 %12, ptr %arrayidx8, align 8
  %14 = load i64, ptr %x2, align 8
  %15 = load ptr, ptr %out1.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %14, ptr %arrayidx9, align 8
  %16 = load i64, ptr %x3, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %17, i64 2
  store i64 %16, ptr %arrayidx10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_sub(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  store ptr %arg2, ptr %arg2.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %add = add i64 35184372088822, %1
  %2 = load ptr, ptr %arg2.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 0
  %3 = load i64, ptr %arrayidx1, align 8
  %sub = sub i64 %add, %3
  store i64 %sub, ptr %x1, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx2, align 8
  %add3 = add i64 17592186044414, %5
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx4, align 8
  %sub5 = sub i64 %add3, %7
  store i64 %sub5, ptr %x2, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %8, i64 2
  %9 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 17592186044414, %9
  %10 = load ptr, ptr %arg2.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 2
  %11 = load i64, ptr %arrayidx8, align 8
  %sub9 = sub i64 %add7, %11
  store i64 %sub9, ptr %x3, align 8
  %12 = load i64, ptr %x1, align 8
  %13 = load ptr, ptr %out1.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, ptr %13, i64 0
  store i64 %12, ptr %arrayidx10, align 8
  %14 = load i64, ptr %x2, align 8
  %15 = load ptr, ptr %out1.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %15, i64 1
  store i64 %14, ptr %arrayidx11, align 8
  %16 = load i64, ptr %x3, align 8
  %17 = load ptr, ptr %out1.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, ptr %17, i64 2
  store i64 %16, ptr %arrayidx12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_opp(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %sub = sub i64 35184372088822, %1
  store i64 %sub, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  %sub2 = sub i64 17592186044414, %3
  store i64 %sub2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx3, align 8
  %sub4 = sub i64 17592186044414, %5
  store i64 %sub4, ptr %x3, align 8
  %6 = load i64, ptr %x1, align 8
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %7, i64 0
  store i64 %6, ptr %arrayidx5, align 8
  %8 = load i64, ptr %x2, align 8
  %9 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %9, i64 1
  store i64 %8, ptr %arrayidx6, align 8
  %10 = load i64, ptr %x3, align 8
  %11 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %11, i64 2
  store i64 %10, ptr %arrayidx7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_selectznz(ptr noundef %out1, i8 noundef zeroext %arg1, ptr noundef %arg2, ptr noundef %arg3) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca i8, align 1
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
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
  call void @fiat_poly1305_cmovznz_u64(ptr noundef %x1, i8 noundef zeroext %0, i64 noundef %2, i64 noundef %4)
  %5 = load i8, ptr %arg1.addr, align 1
  %6 = load ptr, ptr %arg2.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 1
  %7 = load i64, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %arg3.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 1
  %9 = load i64, ptr %arrayidx3, align 8
  call void @fiat_poly1305_cmovznz_u64(ptr noundef %x2, i8 noundef zeroext %5, i64 noundef %7, i64 noundef %9)
  %10 = load i8, ptr %arg1.addr, align 1
  %11 = load ptr, ptr %arg2.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 2
  %12 = load i64, ptr %arrayidx4, align 8
  %13 = load ptr, ptr %arg3.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %13, i64 2
  %14 = load i64, ptr %arrayidx5, align 8
  call void @fiat_poly1305_cmovznz_u64(ptr noundef %x3, i8 noundef zeroext %10, i64 noundef %12, i64 noundef %14)
  %15 = load i64, ptr %x1, align 8
  %16 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 0
  store i64 %15, ptr %arrayidx6, align 8
  %17 = load i64, ptr %x2, align 8
  %18 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %18, i64 1
  store i64 %17, ptr %arrayidx7, align 8
  %19 = load i64, ptr %x3, align 8
  %20 = load ptr, ptr %out1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 2
  store i64 %19, ptr %arrayidx8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_to_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x8 = alloca i64, align 8
  %x9 = alloca i8, align 1
  %x10 = alloca i64, align 8
  %x11 = alloca i8, align 1
  %x12 = alloca i64, align 8
  %x13 = alloca i8, align 1
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
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  call void @fiat_poly1305_subborrowx_u44(ptr noundef %x1, ptr noundef %x2, i8 noundef zeroext 0, i64 noundef %1, i64 noundef 17592186044411)
  %2 = load i8, ptr %x2, align 1
  %3 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %3, i64 1
  %4 = load i64, ptr %arrayidx1, align 8
  call void @fiat_poly1305_subborrowx_u43(ptr noundef %x3, ptr noundef %x4, i8 noundef zeroext %2, i64 noundef %4, i64 noundef 8796093022207)
  %5 = load i8, ptr %x4, align 1
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 2
  %7 = load i64, ptr %arrayidx2, align 8
  call void @fiat_poly1305_subborrowx_u43(ptr noundef %x5, ptr noundef %x6, i8 noundef zeroext %5, i64 noundef %7, i64 noundef 8796093022207)
  %8 = load i8, ptr %x6, align 1
  call void @fiat_poly1305_cmovznz_u64(ptr noundef %x7, i8 noundef zeroext %8, i64 noundef 0, i64 noundef -1)
  %9 = load i64, ptr %x1, align 8
  %10 = load i64, ptr %x7, align 8
  %and = and i64 %10, 17592186044411
  call void @fiat_poly1305_addcarryx_u44(ptr noundef %x8, ptr noundef %x9, i8 noundef zeroext 0, i64 noundef %9, i64 noundef %and)
  %11 = load i8, ptr %x9, align 1
  %12 = load i64, ptr %x3, align 8
  %13 = load i64, ptr %x7, align 8
  %and3 = and i64 %13, 8796093022207
  call void @fiat_poly1305_addcarryx_u43(ptr noundef %x10, ptr noundef %x11, i8 noundef zeroext %11, i64 noundef %12, i64 noundef %and3)
  %14 = load i8, ptr %x11, align 1
  %15 = load i64, ptr %x5, align 8
  %16 = load i64, ptr %x7, align 8
  %and4 = and i64 %16, 8796093022207
  call void @fiat_poly1305_addcarryx_u43(ptr noundef %x12, ptr noundef %x13, i8 noundef zeroext %14, i64 noundef %15, i64 noundef %and4)
  %17 = load i64, ptr %x12, align 8
  %shl = shl i64 %17, 7
  store i64 %shl, ptr %x14, align 8
  %18 = load i64, ptr %x10, align 8
  %shl5 = shl i64 %18, 4
  store i64 %shl5, ptr %x15, align 8
  %19 = load i64, ptr %x8, align 8
  %and6 = and i64 %19, 255
  %conv = trunc i64 %and6 to i8
  store i8 %conv, ptr %x16, align 1
  %20 = load i64, ptr %x8, align 8
  %shr = lshr i64 %20, 8
  store i64 %shr, ptr %x17, align 8
  %21 = load i64, ptr %x17, align 8
  %and7 = and i64 %21, 255
  %conv8 = trunc i64 %and7 to i8
  store i8 %conv8, ptr %x18, align 1
  %22 = load i64, ptr %x17, align 8
  %shr9 = lshr i64 %22, 8
  store i64 %shr9, ptr %x19, align 8
  %23 = load i64, ptr %x19, align 8
  %and10 = and i64 %23, 255
  %conv11 = trunc i64 %and10 to i8
  store i8 %conv11, ptr %x20, align 1
  %24 = load i64, ptr %x19, align 8
  %shr12 = lshr i64 %24, 8
  store i64 %shr12, ptr %x21, align 8
  %25 = load i64, ptr %x21, align 8
  %and13 = and i64 %25, 255
  %conv14 = trunc i64 %and13 to i8
  store i8 %conv14, ptr %x22, align 1
  %26 = load i64, ptr %x21, align 8
  %shr15 = lshr i64 %26, 8
  store i64 %shr15, ptr %x23, align 8
  %27 = load i64, ptr %x23, align 8
  %and16 = and i64 %27, 255
  %conv17 = trunc i64 %and16 to i8
  store i8 %conv17, ptr %x24, align 1
  %28 = load i64, ptr %x23, align 8
  %shr18 = lshr i64 %28, 8
  %conv19 = trunc i64 %shr18 to i8
  store i8 %conv19, ptr %x25, align 1
  %29 = load i64, ptr %x15, align 8
  %30 = load i8, ptr %x25, align 1
  %conv20 = zext i8 %30 to i64
  %add = add i64 %29, %conv20
  store i64 %add, ptr %x26, align 8
  %31 = load i64, ptr %x26, align 8
  %and21 = and i64 %31, 255
  %conv22 = trunc i64 %and21 to i8
  store i8 %conv22, ptr %x27, align 1
  %32 = load i64, ptr %x26, align 8
  %shr23 = lshr i64 %32, 8
  store i64 %shr23, ptr %x28, align 8
  %33 = load i64, ptr %x28, align 8
  %and24 = and i64 %33, 255
  %conv25 = trunc i64 %and24 to i8
  store i8 %conv25, ptr %x29, align 1
  %34 = load i64, ptr %x28, align 8
  %shr26 = lshr i64 %34, 8
  store i64 %shr26, ptr %x30, align 8
  %35 = load i64, ptr %x30, align 8
  %and27 = and i64 %35, 255
  %conv28 = trunc i64 %and27 to i8
  store i8 %conv28, ptr %x31, align 1
  %36 = load i64, ptr %x30, align 8
  %shr29 = lshr i64 %36, 8
  store i64 %shr29, ptr %x32, align 8
  %37 = load i64, ptr %x32, align 8
  %and30 = and i64 %37, 255
  %conv31 = trunc i64 %and30 to i8
  store i8 %conv31, ptr %x33, align 1
  %38 = load i64, ptr %x32, align 8
  %shr32 = lshr i64 %38, 8
  store i64 %shr32, ptr %x34, align 8
  %39 = load i64, ptr %x34, align 8
  %and33 = and i64 %39, 255
  %conv34 = trunc i64 %and33 to i8
  store i8 %conv34, ptr %x35, align 1
  %40 = load i64, ptr %x34, align 8
  %shr35 = lshr i64 %40, 8
  %conv36 = trunc i64 %shr35 to i8
  store i8 %conv36, ptr %x36, align 1
  %41 = load i64, ptr %x14, align 8
  %42 = load i8, ptr %x36, align 1
  %conv37 = zext i8 %42 to i64
  %add38 = add i64 %41, %conv37
  store i64 %add38, ptr %x37, align 8
  %43 = load i64, ptr %x37, align 8
  %and39 = and i64 %43, 255
  %conv40 = trunc i64 %and39 to i8
  store i8 %conv40, ptr %x38, align 1
  %44 = load i64, ptr %x37, align 8
  %shr41 = lshr i64 %44, 8
  store i64 %shr41, ptr %x39, align 8
  %45 = load i64, ptr %x39, align 8
  %and42 = and i64 %45, 255
  %conv43 = trunc i64 %and42 to i8
  store i8 %conv43, ptr %x40, align 1
  %46 = load i64, ptr %x39, align 8
  %shr44 = lshr i64 %46, 8
  store i64 %shr44, ptr %x41, align 8
  %47 = load i64, ptr %x41, align 8
  %and45 = and i64 %47, 255
  %conv46 = trunc i64 %and45 to i8
  store i8 %conv46, ptr %x42, align 1
  %48 = load i64, ptr %x41, align 8
  %shr47 = lshr i64 %48, 8
  store i64 %shr47, ptr %x43, align 8
  %49 = load i64, ptr %x43, align 8
  %and48 = and i64 %49, 255
  %conv49 = trunc i64 %and48 to i8
  store i8 %conv49, ptr %x44, align 1
  %50 = load i64, ptr %x43, align 8
  %shr50 = lshr i64 %50, 8
  store i64 %shr50, ptr %x45, align 8
  %51 = load i64, ptr %x45, align 8
  %and51 = and i64 %51, 255
  %conv52 = trunc i64 %and51 to i8
  store i8 %conv52, ptr %x46, align 1
  %52 = load i64, ptr %x45, align 8
  %shr53 = lshr i64 %52, 8
  store i64 %shr53, ptr %x47, align 8
  %53 = load i64, ptr %x47, align 8
  %and54 = and i64 %53, 255
  %conv55 = trunc i64 %and54 to i8
  store i8 %conv55, ptr %x48, align 1
  %54 = load i64, ptr %x47, align 8
  %shr56 = lshr i64 %54, 8
  %conv57 = trunc i64 %shr56 to i8
  store i8 %conv57, ptr %x49, align 1
  %55 = load i8, ptr %x16, align 1
  %56 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %56, i64 0
  store i8 %55, ptr %arrayidx58, align 1
  %57 = load i8, ptr %x18, align 1
  %58 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %58, i64 1
  store i8 %57, ptr %arrayidx59, align 1
  %59 = load i8, ptr %x20, align 1
  %60 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %60, i64 2
  store i8 %59, ptr %arrayidx60, align 1
  %61 = load i8, ptr %x22, align 1
  %62 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %62, i64 3
  store i8 %61, ptr %arrayidx61, align 1
  %63 = load i8, ptr %x24, align 1
  %64 = load ptr, ptr %out1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %64, i64 4
  store i8 %63, ptr %arrayidx62, align 1
  %65 = load i8, ptr %x27, align 1
  %66 = load ptr, ptr %out1.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %66, i64 5
  store i8 %65, ptr %arrayidx63, align 1
  %67 = load i8, ptr %x29, align 1
  %68 = load ptr, ptr %out1.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %68, i64 6
  store i8 %67, ptr %arrayidx64, align 1
  %69 = load i8, ptr %x31, align 1
  %70 = load ptr, ptr %out1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %70, i64 7
  store i8 %69, ptr %arrayidx65, align 1
  %71 = load i8, ptr %x33, align 1
  %72 = load ptr, ptr %out1.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %72, i64 8
  store i8 %71, ptr %arrayidx66, align 1
  %73 = load i8, ptr %x35, align 1
  %74 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %74, i64 9
  store i8 %73, ptr %arrayidx67, align 1
  %75 = load i8, ptr %x38, align 1
  %76 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %76, i64 10
  store i8 %75, ptr %arrayidx68, align 1
  %77 = load i8, ptr %x40, align 1
  %78 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %78, i64 11
  store i8 %77, ptr %arrayidx69, align 1
  %79 = load i8, ptr %x42, align 1
  %80 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %80, i64 12
  store i8 %79, ptr %arrayidx70, align 1
  %81 = load i8, ptr %x44, align 1
  %82 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %82, i64 13
  store i8 %81, ptr %arrayidx71, align 1
  %83 = load i8, ptr %x46, align 1
  %84 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %84, i64 14
  store i8 %83, ptr %arrayidx72, align 1
  %85 = load i8, ptr %x48, align 1
  %86 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %86, i64 15
  store i8 %85, ptr %arrayidx73, align 1
  %87 = load i8, ptr %x49, align 1
  %88 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %88, i64 16
  store i8 %87, ptr %arrayidx74, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_from_bytes(ptr noundef %out1, ptr noundef %arg1) #0 {
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
  %x31 = alloca i8, align 1
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i64, align 8
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 16
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 41
  store i64 %shl, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 15
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 33
  store i64 %shl3, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 14
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 25
  store i64 %shl6, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 13
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 17
  store i64 %shl9, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 12
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i64
  %shl12 = shl i64 %conv11, 9
  store i64 %shl12, ptr %x5, align 8
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 11
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i64
  %mul = mul i64 %conv14, 2
  store i64 %mul, ptr %x6, align 8
  %12 = load ptr, ptr %arg1.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 10
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %13 to i64
  %shl17 = shl i64 %conv16, 36
  store i64 %shl17, ptr %x7, align 8
  %14 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %14, i64 9
  %15 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %15 to i64
  %shl20 = shl i64 %conv19, 28
  store i64 %shl20, ptr %x8, align 8
  %16 = load ptr, ptr %arg1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i64
  %shl23 = shl i64 %conv22, 20
  store i64 %shl23, ptr %x9, align 8
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 7
  %19 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %19 to i64
  %shl26 = shl i64 %conv25, 12
  store i64 %shl26, ptr %x10, align 8
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %20, i64 6
  %21 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %21 to i64
  %shl29 = shl i64 %conv28, 4
  store i64 %shl29, ptr %x11, align 8
  %22 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 5
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %23 to i64
  %shl32 = shl i64 %conv31, 40
  store i64 %shl32, ptr %x12, align 8
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %24, i64 4
  %25 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %25 to i64
  %shl35 = shl i64 %conv34, 32
  store i64 %shl35, ptr %x13, align 8
  %26 = load ptr, ptr %arg1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %27 to i64
  %shl38 = shl i64 %conv37, 24
  store i64 %shl38, ptr %x14, align 8
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %29 to i64
  %shl41 = shl i64 %conv40, 16
  store i64 %shl41, ptr %x15, align 8
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %31 to i64
  %shl44 = shl i64 %conv43, 8
  store i64 %shl44, ptr %x16, align 8
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx45, align 1
  store i8 %33, ptr %x17, align 1
  %34 = load i64, ptr %x16, align 8
  %35 = load i8, ptr %x17, align 1
  %conv46 = zext i8 %35 to i64
  %add = add i64 %34, %conv46
  store i64 %add, ptr %x18, align 8
  %36 = load i64, ptr %x15, align 8
  %37 = load i64, ptr %x18, align 8
  %add47 = add i64 %36, %37
  store i64 %add47, ptr %x19, align 8
  %38 = load i64, ptr %x14, align 8
  %39 = load i64, ptr %x19, align 8
  %add48 = add i64 %38, %39
  store i64 %add48, ptr %x20, align 8
  %40 = load i64, ptr %x13, align 8
  %41 = load i64, ptr %x20, align 8
  %add49 = add i64 %40, %41
  store i64 %add49, ptr %x21, align 8
  %42 = load i64, ptr %x12, align 8
  %43 = load i64, ptr %x21, align 8
  %add50 = add i64 %42, %43
  store i64 %add50, ptr %x22, align 8
  %44 = load i64, ptr %x22, align 8
  %and = and i64 %44, 17592186044415
  store i64 %and, ptr %x23, align 8
  %45 = load i64, ptr %x22, align 8
  %shr = lshr i64 %45, 44
  %conv51 = trunc i64 %shr to i8
  store i8 %conv51, ptr %x24, align 1
  %46 = load i64, ptr %x11, align 8
  %47 = load i8, ptr %x24, align 1
  %conv52 = zext i8 %47 to i64
  %add53 = add i64 %46, %conv52
  store i64 %add53, ptr %x25, align 8
  %48 = load i64, ptr %x10, align 8
  %49 = load i64, ptr %x25, align 8
  %add54 = add i64 %48, %49
  store i64 %add54, ptr %x26, align 8
  %50 = load i64, ptr %x9, align 8
  %51 = load i64, ptr %x26, align 8
  %add55 = add i64 %50, %51
  store i64 %add55, ptr %x27, align 8
  %52 = load i64, ptr %x8, align 8
  %53 = load i64, ptr %x27, align 8
  %add56 = add i64 %52, %53
  store i64 %add56, ptr %x28, align 8
  %54 = load i64, ptr %x7, align 8
  %55 = load i64, ptr %x28, align 8
  %add57 = add i64 %54, %55
  store i64 %add57, ptr %x29, align 8
  %56 = load i64, ptr %x29, align 8
  %and58 = and i64 %56, 8796093022207
  store i64 %and58, ptr %x30, align 8
  %57 = load i64, ptr %x29, align 8
  %shr59 = lshr i64 %57, 43
  %conv60 = trunc i64 %shr59 to i8
  store i8 %conv60, ptr %x31, align 1
  %58 = load i64, ptr %x6, align 8
  %59 = load i8, ptr %x31, align 1
  %conv61 = zext i8 %59 to i64
  %add62 = add i64 %58, %conv61
  store i64 %add62, ptr %x32, align 8
  %60 = load i64, ptr %x5, align 8
  %61 = load i64, ptr %x32, align 8
  %add63 = add i64 %60, %61
  store i64 %add63, ptr %x33, align 8
  %62 = load i64, ptr %x4, align 8
  %63 = load i64, ptr %x33, align 8
  %add64 = add i64 %62, %63
  store i64 %add64, ptr %x34, align 8
  %64 = load i64, ptr %x3, align 8
  %65 = load i64, ptr %x34, align 8
  %add65 = add i64 %64, %65
  store i64 %add65, ptr %x35, align 8
  %66 = load i64, ptr %x2, align 8
  %67 = load i64, ptr %x35, align 8
  %add66 = add i64 %66, %67
  store i64 %add66, ptr %x36, align 8
  %68 = load i64, ptr %x1, align 8
  %69 = load i64, ptr %x36, align 8
  %add67 = add i64 %68, %69
  store i64 %add67, ptr %x37, align 8
  %70 = load i64, ptr %x23, align 8
  %71 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %71, i64 0
  store i64 %70, ptr %arrayidx68, align 8
  %72 = load i64, ptr %x30, align 8
  %73 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %73, i64 1
  store i64 %72, ptr %arrayidx69, align 8
  %74 = load i64, ptr %x37, align 8
  %75 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %75, i64 2
  store i64 %74, ptr %arrayidx70, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiat_poly1305_relax(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
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
  %6 = load i64, ptr %x1, align 8
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 0
  store i64 %6, ptr %arrayidx3, align 8
  %8 = load i64, ptr %x2, align 8
  %9 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %9, i64 1
  store i64 %8, ptr %arrayidx4, align 8
  %10 = load i64, ptr %x3, align 8
  %11 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 2
  store i64 %10, ptr %arrayidx5, align 8
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
!6 = !{i64 2142}
