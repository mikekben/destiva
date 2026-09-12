; ModuleID = '/data2/ben/alive-decomp/bench/fiat/poly1305_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
