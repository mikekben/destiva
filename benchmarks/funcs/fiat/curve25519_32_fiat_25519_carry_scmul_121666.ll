; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
