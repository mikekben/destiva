; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
