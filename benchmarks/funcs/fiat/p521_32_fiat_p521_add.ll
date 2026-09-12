; ModuleID = '/data2/ben/alive-decomp/bench/fiat/p521_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_p521_add(ptr noundef %out1, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
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
  %x13 = alloca i32, align 4
  %x14 = alloca i32, align 4
  %x15 = alloca i32, align 4
  %x16 = alloca i32, align 4
  %x17 = alloca i32, align 4
  %x18 = alloca i32, align 4
  %x19 = alloca i32, align 4
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
  %20 = load ptr, ptr %arg1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 5
  %21 = load i32, ptr %arrayidx14, align 4
  %22 = load ptr, ptr %arg2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %22, i64 5
  %23 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %21, %23
  store i32 %add16, ptr %x6, align 4
  %24 = load ptr, ptr %arg1.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %24, i64 6
  %25 = load i32, ptr %arrayidx17, align 4
  %26 = load ptr, ptr %arg2.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %26, i64 6
  %27 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %25, %27
  store i32 %add19, ptr %x7, align 4
  %28 = load ptr, ptr %arg1.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %28, i64 7
  %29 = load i32, ptr %arrayidx20, align 4
  %30 = load ptr, ptr %arg2.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, ptr %30, i64 7
  %31 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %29, %31
  store i32 %add22, ptr %x8, align 4
  %32 = load ptr, ptr %arg1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %32, i64 8
  %33 = load i32, ptr %arrayidx23, align 4
  %34 = load ptr, ptr %arg2.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, ptr %34, i64 8
  %35 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %33, %35
  store i32 %add25, ptr %x9, align 4
  %36 = load ptr, ptr %arg1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %36, i64 9
  %37 = load i32, ptr %arrayidx26, align 4
  %38 = load ptr, ptr %arg2.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %38, i64 9
  %39 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %37, %39
  store i32 %add28, ptr %x10, align 4
  %40 = load ptr, ptr %arg1.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, ptr %40, i64 10
  %41 = load i32, ptr %arrayidx29, align 4
  %42 = load ptr, ptr %arg2.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %42, i64 10
  %43 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %41, %43
  store i32 %add31, ptr %x11, align 4
  %44 = load ptr, ptr %arg1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %44, i64 11
  %45 = load i32, ptr %arrayidx32, align 4
  %46 = load ptr, ptr %arg2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, ptr %46, i64 11
  %47 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %45, %47
  store i32 %add34, ptr %x12, align 4
  %48 = load ptr, ptr %arg1.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %48, i64 12
  %49 = load i32, ptr %arrayidx35, align 4
  %50 = load ptr, ptr %arg2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %50, i64 12
  %51 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %49, %51
  store i32 %add37, ptr %x13, align 4
  %52 = load ptr, ptr %arg1.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %52, i64 13
  %53 = load i32, ptr %arrayidx38, align 4
  %54 = load ptr, ptr %arg2.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %54, i64 13
  %55 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %53, %55
  store i32 %add40, ptr %x14, align 4
  %56 = load ptr, ptr %arg1.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, ptr %56, i64 14
  %57 = load i32, ptr %arrayidx41, align 4
  %58 = load ptr, ptr %arg2.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %58, i64 14
  %59 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %57, %59
  store i32 %add43, ptr %x15, align 4
  %60 = load ptr, ptr %arg1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %60, i64 15
  %61 = load i32, ptr %arrayidx44, align 4
  %62 = load ptr, ptr %arg2.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %62, i64 15
  %63 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %61, %63
  store i32 %add46, ptr %x16, align 4
  %64 = load ptr, ptr %arg1.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %64, i64 16
  %65 = load i32, ptr %arrayidx47, align 4
  %66 = load ptr, ptr %arg2.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, ptr %66, i64 16
  %67 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %65, %67
  store i32 %add49, ptr %x17, align 4
  %68 = load ptr, ptr %arg1.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %68, i64 17
  %69 = load i32, ptr %arrayidx50, align 4
  %70 = load ptr, ptr %arg2.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, ptr %70, i64 17
  %71 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %69, %71
  store i32 %add52, ptr %x18, align 4
  %72 = load ptr, ptr %arg1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, ptr %72, i64 18
  %73 = load i32, ptr %arrayidx53, align 4
  %74 = load ptr, ptr %arg2.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %74, i64 18
  %75 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %73, %75
  store i32 %add55, ptr %x19, align 4
  %76 = load i32, ptr %x1, align 4
  %77 = load ptr, ptr %out1.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %77, i64 0
  store i32 %76, ptr %arrayidx56, align 4
  %78 = load i32, ptr %x2, align 4
  %79 = load ptr, ptr %out1.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %79, i64 1
  store i32 %78, ptr %arrayidx57, align 4
  %80 = load i32, ptr %x3, align 4
  %81 = load ptr, ptr %out1.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %81, i64 2
  store i32 %80, ptr %arrayidx58, align 4
  %82 = load i32, ptr %x4, align 4
  %83 = load ptr, ptr %out1.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %83, i64 3
  store i32 %82, ptr %arrayidx59, align 4
  %84 = load i32, ptr %x5, align 4
  %85 = load ptr, ptr %out1.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %85, i64 4
  store i32 %84, ptr %arrayidx60, align 4
  %86 = load i32, ptr %x6, align 4
  %87 = load ptr, ptr %out1.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, ptr %87, i64 5
  store i32 %86, ptr %arrayidx61, align 4
  %88 = load i32, ptr %x7, align 4
  %89 = load ptr, ptr %out1.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %89, i64 6
  store i32 %88, ptr %arrayidx62, align 4
  %90 = load i32, ptr %x8, align 4
  %91 = load ptr, ptr %out1.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, ptr %91, i64 7
  store i32 %90, ptr %arrayidx63, align 4
  %92 = load i32, ptr %x9, align 4
  %93 = load ptr, ptr %out1.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, ptr %93, i64 8
  store i32 %92, ptr %arrayidx64, align 4
  %94 = load i32, ptr %x10, align 4
  %95 = load ptr, ptr %out1.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %95, i64 9
  store i32 %94, ptr %arrayidx65, align 4
  %96 = load i32, ptr %x11, align 4
  %97 = load ptr, ptr %out1.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, ptr %97, i64 10
  store i32 %96, ptr %arrayidx66, align 4
  %98 = load i32, ptr %x12, align 4
  %99 = load ptr, ptr %out1.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, ptr %99, i64 11
  store i32 %98, ptr %arrayidx67, align 4
  %100 = load i32, ptr %x13, align 4
  %101 = load ptr, ptr %out1.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, ptr %101, i64 12
  store i32 %100, ptr %arrayidx68, align 4
  %102 = load i32, ptr %x14, align 4
  %103 = load ptr, ptr %out1.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %103, i64 13
  store i32 %102, ptr %arrayidx69, align 4
  %104 = load i32, ptr %x15, align 4
  %105 = load ptr, ptr %out1.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, ptr %105, i64 14
  store i32 %104, ptr %arrayidx70, align 4
  %106 = load i32, ptr %x16, align 4
  %107 = load ptr, ptr %out1.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %107, i64 15
  store i32 %106, ptr %arrayidx71, align 4
  %108 = load i32, ptr %x17, align 4
  %109 = load ptr, ptr %out1.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, ptr %109, i64 16
  store i32 %108, ptr %arrayidx72, align 4
  %110 = load i32, ptr %x18, align 4
  %111 = load ptr, ptr %out1.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %111, i64 17
  store i32 %110, ptr %arrayidx73, align 4
  %112 = load i32, ptr %x19, align 4
  %113 = load ptr, ptr %out1.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %113, i64 18
  store i32 %112, ptr %arrayidx74, align 4
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
