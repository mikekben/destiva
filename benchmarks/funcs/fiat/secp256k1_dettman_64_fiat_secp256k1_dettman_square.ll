; ModuleID = '/data2/ben/alive-decomp/bench/fiat/secp256k1_dettman_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_secp256k1_dettman_square(ptr noundef %out1, ptr noundef %arg1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
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
  %x17 = alloca i64, align 8
  %x18 = alloca i64, align 8
  %x19 = alloca i128, align 16
  %x20 = alloca i64, align 8
  %x21 = alloca i64, align 8
  %x22 = alloca i128, align 16
  %x23 = alloca i64, align 8
  %x24 = alloca i64, align 8
  %x25 = alloca i128, align 16
  %x26 = alloca i64, align 8
  %x27 = alloca i64, align 8
  %x28 = alloca i128, align 16
  %x29 = alloca i64, align 8
  %x30 = alloca i64, align 8
  %x31 = alloca i128, align 16
  %x32 = alloca i64, align 8
  %x33 = alloca i64, align 8
  %x34 = alloca i128, align 16
  %x35 = alloca i64, align 8
  %x36 = alloca i64, align 8
  %x37 = alloca i64, align 8
  store ptr %out1, ptr %out1.addr, align 8
  store ptr %arg1, ptr %arg1.addr, align 8
  %0 = load ptr, ptr %arg1.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 3
  %1 = load i64, ptr %arrayidx, align 8
  %mul = mul i64 %1, 2
  store i64 %mul, ptr %x1, align 8
  %2 = load ptr, ptr %arg1.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2
  %3 = load i64, ptr %arrayidx1, align 8
  %mul2 = mul i64 %3, 2
  store i64 %mul2, ptr %x2, align 8
  %4 = load ptr, ptr %arg1.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %4, i64 1
  %5 = load i64, ptr %arrayidx3, align 8
  %mul4 = mul i64 %5, 2
  store i64 %mul4, ptr %x3, align 8
  %6 = load ptr, ptr %arg1.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx5, align 8
  %mul6 = mul i64 %7, 2
  store i64 %mul6, ptr %x4, align 8
  %8 = load ptr, ptr %arg1.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx7, align 8
  %conv = zext i64 %9 to i128
  %10 = load ptr, ptr %arg1.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 4
  %11 = load i64, ptr %arrayidx8, align 8
  %conv9 = zext i64 %11 to i128
  %mul10 = mul i128 %conv, %conv9
  store i128 %mul10, ptr %x5, align 16
  %12 = load i128, ptr %x5, align 16
  %shr = lshr i128 %12, 64
  %conv11 = trunc i128 %shr to i64
  store i64 %conv11, ptr %x6, align 8
  %13 = load i128, ptr %x5, align 16
  %and = and i128 %13, 18446744073709551615
  %conv12 = trunc i128 %and to i64
  store i64 %conv12, ptr %x7, align 8
  %14 = load i64, ptr %x4, align 8
  %conv13 = zext i64 %14 to i128
  %15 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, ptr %15, i64 3
  %16 = load i64, ptr %arrayidx14, align 8
  %conv15 = zext i64 %16 to i128
  %mul16 = mul i128 %conv13, %conv15
  %17 = load i64, ptr %x3, align 8
  %conv17 = zext i64 %17 to i128
  %18 = load ptr, ptr %arg1.addr, align 8
  %arrayidx18 = getelementptr inbounds i64, ptr %18, i64 2
  %19 = load i64, ptr %arrayidx18, align 8
  %conv19 = zext i64 %19 to i128
  %mul20 = mul i128 %conv17, %conv19
  %add = add i128 %mul16, %mul20
  %20 = load i64, ptr %x7, align 8
  %conv21 = zext i64 %20 to i128
  %mul22 = mul i128 %conv21, 68719492368
  %add23 = add i128 %add, %mul22
  store i128 %add23, ptr %x8, align 16
  %21 = load i128, ptr %x8, align 16
  %shr24 = lshr i128 %21, 52
  %conv25 = trunc i128 %shr24 to i64
  store i64 %conv25, ptr %x9, align 8
  %22 = load i128, ptr %x8, align 16
  %and26 = and i128 %22, 4503599627370495
  %conv27 = trunc i128 %and26 to i64
  store i64 %conv27, ptr %x10, align 8
  %23 = load i64, ptr %x9, align 8
  %conv28 = zext i64 %23 to i128
  %24 = load i64, ptr %x4, align 8
  %conv29 = zext i64 %24 to i128
  %25 = load ptr, ptr %arg1.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, ptr %25, i64 4
  %26 = load i64, ptr %arrayidx30, align 8
  %conv31 = zext i64 %26 to i128
  %mul32 = mul i128 %conv29, %conv31
  %27 = load i64, ptr %x3, align 8
  %conv33 = zext i64 %27 to i128
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx34 = getelementptr inbounds i64, ptr %28, i64 3
  %29 = load i64, ptr %arrayidx34, align 8
  %conv35 = zext i64 %29 to i128
  %mul36 = mul i128 %conv33, %conv35
  %30 = load ptr, ptr %arg1.addr, align 8
  %arrayidx37 = getelementptr inbounds i64, ptr %30, i64 2
  %31 = load i64, ptr %arrayidx37, align 8
  %conv38 = zext i64 %31 to i128
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, ptr %32, i64 2
  %33 = load i64, ptr %arrayidx39, align 8
  %conv40 = zext i64 %33 to i128
  %mul41 = mul i128 %conv38, %conv40
  %add42 = add i128 %mul36, %mul41
  %add43 = add i128 %mul32, %add42
  %add44 = add i128 %conv28, %add43
  %34 = load i64, ptr %x6, align 8
  %conv45 = zext i64 %34 to i128
  %mul46 = mul i128 %conv45, 281475040739328
  %add47 = add i128 %add44, %mul46
  store i128 %add47, ptr %x11, align 16
  %35 = load i128, ptr %x11, align 16
  %shr48 = lshr i128 %35, 52
  %conv49 = trunc i128 %shr48 to i64
  store i64 %conv49, ptr %x12, align 8
  %36 = load i128, ptr %x11, align 16
  %and50 = and i128 %36, 4503599627370495
  %conv51 = trunc i128 %and50 to i64
  store i64 %conv51, ptr %x13, align 8
  %37 = load i64, ptr %x12, align 8
  %conv52 = zext i64 %37 to i128
  %38 = load i64, ptr %x3, align 8
  %conv53 = zext i64 %38 to i128
  %39 = load ptr, ptr %arg1.addr, align 8
  %arrayidx54 = getelementptr inbounds i64, ptr %39, i64 4
  %40 = load i64, ptr %arrayidx54, align 8
  %conv55 = zext i64 %40 to i128
  %mul56 = mul i128 %conv53, %conv55
  %41 = load i64, ptr %x2, align 8
  %conv57 = zext i64 %41 to i128
  %42 = load ptr, ptr %arg1.addr, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %42, i64 3
  %43 = load i64, ptr %arrayidx58, align 8
  %conv59 = zext i64 %43 to i128
  %mul60 = mul i128 %conv57, %conv59
  %add61 = add i128 %mul56, %mul60
  %add62 = add i128 %conv52, %add61
  store i128 %add62, ptr %x14, align 16
  %44 = load i128, ptr %x14, align 16
  %shr63 = lshr i128 %44, 52
  %conv64 = trunc i128 %shr63 to i64
  store i64 %conv64, ptr %x15, align 8
  %45 = load i128, ptr %x14, align 16
  %and65 = and i128 %45, 4503599627370495
  %conv66 = trunc i128 %and65 to i64
  store i64 %conv66, ptr %x16, align 8
  %46 = load i64, ptr %x13, align 8
  %shr67 = lshr i64 %46, 48
  store i64 %shr67, ptr %x17, align 8
  %47 = load i64, ptr %x13, align 8
  %and68 = and i64 %47, 281474976710655
  store i64 %and68, ptr %x18, align 8
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %48, i64 0
  %49 = load i64, ptr %arrayidx69, align 8
  %conv70 = zext i64 %49 to i128
  %50 = load ptr, ptr %arg1.addr, align 8
  %arrayidx71 = getelementptr inbounds i64, ptr %50, i64 0
  %51 = load i64, ptr %arrayidx71, align 8
  %conv72 = zext i64 %51 to i128
  %mul73 = mul i128 %conv70, %conv72
  %52 = load i64, ptr %x17, align 8
  %53 = load i64, ptr %x16, align 8
  %shl = shl i64 %53, 4
  %add74 = add i64 %52, %shl
  %conv75 = zext i64 %add74 to i128
  %mul76 = mul i128 %conv75, 4294968273
  %add77 = add i128 %mul73, %mul76
  store i128 %add77, ptr %x19, align 16
  %54 = load i128, ptr %x19, align 16
  %shr78 = lshr i128 %54, 52
  %conv79 = trunc i128 %shr78 to i64
  store i64 %conv79, ptr %x20, align 8
  %55 = load i128, ptr %x19, align 16
  %and80 = and i128 %55, 4503599627370495
  %conv81 = trunc i128 %and80 to i64
  store i64 %conv81, ptr %x21, align 8
  %56 = load i64, ptr %x15, align 8
  %conv82 = zext i64 %56 to i128
  %57 = load i64, ptr %x2, align 8
  %conv83 = zext i64 %57 to i128
  %58 = load ptr, ptr %arg1.addr, align 8
  %arrayidx84 = getelementptr inbounds i64, ptr %58, i64 4
  %59 = load i64, ptr %arrayidx84, align 8
  %conv85 = zext i64 %59 to i128
  %mul86 = mul i128 %conv83, %conv85
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx87 = getelementptr inbounds i64, ptr %60, i64 3
  %61 = load i64, ptr %arrayidx87, align 8
  %conv88 = zext i64 %61 to i128
  %62 = load ptr, ptr %arg1.addr, align 8
  %arrayidx89 = getelementptr inbounds i64, ptr %62, i64 3
  %63 = load i64, ptr %arrayidx89, align 8
  %conv90 = zext i64 %63 to i128
  %mul91 = mul i128 %conv88, %conv90
  %add92 = add i128 %mul86, %mul91
  %add93 = add i128 %conv82, %add92
  store i128 %add93, ptr %x22, align 16
  %64 = load i128, ptr %x22, align 16
  %shr94 = lshr i128 %64, 52
  %conv95 = trunc i128 %shr94 to i64
  store i64 %conv95, ptr %x23, align 8
  %65 = load i128, ptr %x22, align 16
  %and96 = and i128 %65, 4503599627370495
  %conv97 = trunc i128 %and96 to i64
  store i64 %conv97, ptr %x24, align 8
  %66 = load i64, ptr %x20, align 8
  %conv98 = zext i64 %66 to i128
  %67 = load i64, ptr %x4, align 8
  %conv99 = zext i64 %67 to i128
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx100 = getelementptr inbounds i64, ptr %68, i64 1
  %69 = load i64, ptr %arrayidx100, align 8
  %conv101 = zext i64 %69 to i128
  %mul102 = mul i128 %conv99, %conv101
  %add103 = add i128 %conv98, %mul102
  %70 = load i64, ptr %x24, align 8
  %conv104 = zext i64 %70 to i128
  %mul105 = mul i128 %conv104, 68719492368
  %add106 = add i128 %add103, %mul105
  store i128 %add106, ptr %x25, align 16
  %71 = load i128, ptr %x25, align 16
  %shr107 = lshr i128 %71, 52
  %conv108 = trunc i128 %shr107 to i64
  store i64 %conv108, ptr %x26, align 8
  %72 = load i128, ptr %x25, align 16
  %and109 = and i128 %72, 4503599627370495
  %conv110 = trunc i128 %and109 to i64
  store i64 %conv110, ptr %x27, align 8
  %73 = load i64, ptr %x23, align 8
  %conv111 = zext i64 %73 to i128
  %74 = load i64, ptr %x1, align 8
  %conv112 = zext i64 %74 to i128
  %75 = load ptr, ptr %arg1.addr, align 8
  %arrayidx113 = getelementptr inbounds i64, ptr %75, i64 4
  %76 = load i64, ptr %arrayidx113, align 8
  %conv114 = zext i64 %76 to i128
  %mul115 = mul i128 %conv112, %conv114
  %add116 = add i128 %conv111, %mul115
  store i128 %add116, ptr %x28, align 16
  %77 = load i128, ptr %x28, align 16
  %shr117 = lshr i128 %77, 64
  %conv118 = trunc i128 %shr117 to i64
  store i64 %conv118, ptr %x29, align 8
  %78 = load i128, ptr %x28, align 16
  %and119 = and i128 %78, 18446744073709551615
  %conv120 = trunc i128 %and119 to i64
  store i64 %conv120, ptr %x30, align 8
  %79 = load i64, ptr %x26, align 8
  %conv121 = zext i64 %79 to i128
  %80 = load i64, ptr %x4, align 8
  %conv122 = zext i64 %80 to i128
  %81 = load ptr, ptr %arg1.addr, align 8
  %arrayidx123 = getelementptr inbounds i64, ptr %81, i64 2
  %82 = load i64, ptr %arrayidx123, align 8
  %conv124 = zext i64 %82 to i128
  %mul125 = mul i128 %conv122, %conv124
  %83 = load ptr, ptr %arg1.addr, align 8
  %arrayidx126 = getelementptr inbounds i64, ptr %83, i64 1
  %84 = load i64, ptr %arrayidx126, align 8
  %conv127 = zext i64 %84 to i128
  %85 = load ptr, ptr %arg1.addr, align 8
  %arrayidx128 = getelementptr inbounds i64, ptr %85, i64 1
  %86 = load i64, ptr %arrayidx128, align 8
  %conv129 = zext i64 %86 to i128
  %mul130 = mul i128 %conv127, %conv129
  %add131 = add i128 %mul125, %mul130
  %add132 = add i128 %conv121, %add131
  %87 = load i64, ptr %x30, align 8
  %conv133 = zext i64 %87 to i128
  %mul134 = mul i128 %conv133, 68719492368
  %add135 = add i128 %add132, %mul134
  store i128 %add135, ptr %x31, align 16
  %88 = load i128, ptr %x31, align 16
  %shr136 = lshr i128 %88, 52
  %conv137 = trunc i128 %shr136 to i64
  store i64 %conv137, ptr %x32, align 8
  %89 = load i128, ptr %x31, align 16
  %and138 = and i128 %89, 4503599627370495
  %conv139 = trunc i128 %and138 to i64
  store i64 %conv139, ptr %x33, align 8
  %90 = load i64, ptr %x32, align 8
  %91 = load i64, ptr %x10, align 8
  %add140 = add i64 %90, %91
  %conv141 = zext i64 %add140 to i128
  %92 = load i64, ptr %x29, align 8
  %conv142 = zext i64 %92 to i128
  %mul143 = mul i128 %conv142, 281475040739328
  %add144 = add i128 %conv141, %mul143
  store i128 %add144, ptr %x34, align 16
  %93 = load i128, ptr %x34, align 16
  %shr145 = lshr i128 %93, 52
  %conv146 = trunc i128 %shr145 to i64
  store i64 %conv146, ptr %x35, align 8
  %94 = load i128, ptr %x34, align 16
  %and147 = and i128 %94, 4503599627370495
  %conv148 = trunc i128 %and147 to i64
  store i64 %conv148, ptr %x36, align 8
  %95 = load i64, ptr %x35, align 8
  %96 = load i64, ptr %x18, align 8
  %add149 = add i64 %95, %96
  store i64 %add149, ptr %x37, align 8
  %97 = load i64, ptr %x21, align 8
  %98 = load ptr, ptr %out1.addr, align 8
  %arrayidx150 = getelementptr inbounds i64, ptr %98, i64 0
  store i64 %97, ptr %arrayidx150, align 8
  %99 = load i64, ptr %x27, align 8
  %100 = load ptr, ptr %out1.addr, align 8
  %arrayidx151 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 %99, ptr %arrayidx151, align 8
  %101 = load i64, ptr %x33, align 8
  %102 = load ptr, ptr %out1.addr, align 8
  %arrayidx152 = getelementptr inbounds i64, ptr %102, i64 2
  store i64 %101, ptr %arrayidx152, align 8
  %103 = load i64, ptr %x36, align 8
  %104 = load ptr, ptr %out1.addr, align 8
  %arrayidx153 = getelementptr inbounds i64, ptr %104, i64 3
  store i64 %103, ptr %arrayidx153, align 8
  %105 = load i64, ptr %x37, align 8
  %106 = load ptr, ptr %out1.addr, align 8
  %arrayidx154 = getelementptr inbounds i64, ptr %106, i64 4
  store i64 %105, ptr %arrayidx154, align 8
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
