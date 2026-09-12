; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
