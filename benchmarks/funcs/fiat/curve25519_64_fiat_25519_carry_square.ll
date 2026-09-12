; ModuleID = '/data2/ben/alive-decomp/bench/fiat/curve25519_64.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
