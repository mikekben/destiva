; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @mdct_bitreverse(ptr noundef %init, ptr noundef %x) #1 {
entry:
  %init.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %bit = alloca ptr, align 8
  %w0 = alloca ptr, align 8
  %w1 = alloca ptr, align 8
  %T = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  %r3 = alloca float, align 4
  store ptr %init, ptr %init.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %init.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %init.addr, align 8
  %bitrev = getelementptr inbounds nuw %struct.mdct_lookup, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %bitrev, align 8
  store ptr %3, ptr %bit, align 8
  %4 = load ptr, ptr %x.addr, align 8
  store ptr %4, ptr %w0, align 8
  %5 = load ptr, ptr %w0, align 8
  %6 = load i32, ptr %n, align 4
  %shr = ashr i32 %6, 1
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds float, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %x.addr, align 8
  store ptr %add.ptr, ptr %w1, align 8
  %7 = load ptr, ptr %init.addr, align 8
  %trig = getelementptr inbounds nuw %struct.mdct_lookup, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %trig, align 8
  %9 = load i32, ptr %n, align 4
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds float, ptr %8, i64 %idx.ext2
  store ptr %add.ptr3, ptr %T, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %10 = load ptr, ptr %x.addr, align 8
  %11 = load ptr, ptr %bit, align 8
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx, align 4
  %idx.ext4 = sext i32 %12 to i64
  %add.ptr5 = getelementptr inbounds float, ptr %10, i64 %idx.ext4
  store ptr %add.ptr5, ptr %x0, align 8
  %13 = load ptr, ptr %x.addr, align 8
  %14 = load ptr, ptr %bit, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx6, align 4
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds float, ptr %13, i64 %idx.ext7
  store ptr %add.ptr8, ptr %x1, align 8
  %16 = load ptr, ptr %x0, align 8
  %arrayidx9 = getelementptr inbounds float, ptr %16, i64 1
  %17 = load float, ptr %arrayidx9, align 4
  %18 = load ptr, ptr %x1, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %18, i64 1
  %19 = load float, ptr %arrayidx10, align 4
  %sub = fsub float %17, %19
  store float %sub, ptr %r0, align 4
  %20 = load ptr, ptr %x0, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %20, i64 0
  %21 = load float, ptr %arrayidx11, align 4
  %22 = load ptr, ptr %x1, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %22, i64 0
  %23 = load float, ptr %arrayidx12, align 4
  %add = fadd float %21, %23
  store float %add, ptr %r1, align 4
  %24 = load float, ptr %r1, align 4
  %25 = load ptr, ptr %T, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %25, i64 0
  %26 = load float, ptr %arrayidx13, align 4
  %27 = load float, ptr %r0, align 4
  %28 = load ptr, ptr %T, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %28, i64 1
  %29 = load float, ptr %arrayidx14, align 4
  %mul15 = fmul float %27, %29
  %30 = call float @llvm.fmuladd.f32(float %24, float %26, float %mul15)
  store float %30, ptr %r2, align 4
  %31 = load float, ptr %r1, align 4
  %32 = load ptr, ptr %T, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %32, i64 1
  %33 = load float, ptr %arrayidx16, align 4
  %34 = load float, ptr %r0, align 4
  %35 = load ptr, ptr %T, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %35, i64 0
  %36 = load float, ptr %arrayidx17, align 4
  %mul18 = fmul float %34, %36
  %neg = fneg float %mul18
  %37 = call float @llvm.fmuladd.f32(float %31, float %33, float %neg)
  store float %37, ptr %r3, align 4
  %38 = load ptr, ptr %w1, align 8
  %add.ptr19 = getelementptr inbounds float, ptr %38, i64 -4
  store ptr %add.ptr19, ptr %w1, align 8
  %39 = load ptr, ptr %x0, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %39, i64 1
  %40 = load float, ptr %arrayidx20, align 4
  %41 = load ptr, ptr %x1, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %41, i64 1
  %42 = load float, ptr %arrayidx21, align 4
  %add22 = fadd float %40, %42
  %mul = fmul float %add22, 5.000000e-01
  store float %mul, ptr %r0, align 4
  %43 = load ptr, ptr %x0, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %43, i64 0
  %44 = load float, ptr %arrayidx23, align 4
  %45 = load ptr, ptr %x1, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %45, i64 0
  %46 = load float, ptr %arrayidx24, align 4
  %sub25 = fsub float %44, %46
  %mul26 = fmul float %sub25, 5.000000e-01
  store float %mul26, ptr %r1, align 4
  %47 = load float, ptr %r0, align 4
  %48 = load float, ptr %r2, align 4
  %add27 = fadd float %47, %48
  %49 = load ptr, ptr %w0, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %49, i64 0
  store float %add27, ptr %arrayidx28, align 4
  %50 = load float, ptr %r0, align 4
  %51 = load float, ptr %r2, align 4
  %sub29 = fsub float %50, %51
  %52 = load ptr, ptr %w1, align 8
  %arrayidx30 = getelementptr inbounds float, ptr %52, i64 2
  store float %sub29, ptr %arrayidx30, align 4
  %53 = load float, ptr %r1, align 4
  %54 = load float, ptr %r3, align 4
  %add31 = fadd float %53, %54
  %55 = load ptr, ptr %w0, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %55, i64 1
  store float %add31, ptr %arrayidx32, align 4
  %56 = load float, ptr %r3, align 4
  %57 = load float, ptr %r1, align 4
  %sub33 = fsub float %56, %57
  %58 = load ptr, ptr %w1, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %58, i64 3
  store float %sub33, ptr %arrayidx34, align 4
  %59 = load ptr, ptr %x.addr, align 8
  %60 = load ptr, ptr %bit, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %60, i64 2
  %61 = load i32, ptr %arrayidx35, align 4
  %idx.ext36 = sext i32 %61 to i64
  %add.ptr37 = getelementptr inbounds float, ptr %59, i64 %idx.ext36
  store ptr %add.ptr37, ptr %x0, align 8
  %62 = load ptr, ptr %x.addr, align 8
  %63 = load ptr, ptr %bit, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %63, i64 3
  %64 = load i32, ptr %arrayidx38, align 4
  %idx.ext39 = sext i32 %64 to i64
  %add.ptr40 = getelementptr inbounds float, ptr %62, i64 %idx.ext39
  store ptr %add.ptr40, ptr %x1, align 8
  %65 = load ptr, ptr %x0, align 8
  %arrayidx41 = getelementptr inbounds float, ptr %65, i64 1
  %66 = load float, ptr %arrayidx41, align 4
  %67 = load ptr, ptr %x1, align 8
  %arrayidx42 = getelementptr inbounds float, ptr %67, i64 1
  %68 = load float, ptr %arrayidx42, align 4
  %sub43 = fsub float %66, %68
  store float %sub43, ptr %r0, align 4
  %69 = load ptr, ptr %x0, align 8
  %arrayidx44 = getelementptr inbounds float, ptr %69, i64 0
  %70 = load float, ptr %arrayidx44, align 4
  %71 = load ptr, ptr %x1, align 8
  %arrayidx45 = getelementptr inbounds float, ptr %71, i64 0
  %72 = load float, ptr %arrayidx45, align 4
  %add46 = fadd float %70, %72
  store float %add46, ptr %r1, align 4
  %73 = load float, ptr %r1, align 4
  %74 = load ptr, ptr %T, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %74, i64 2
  %75 = load float, ptr %arrayidx47, align 4
  %76 = load float, ptr %r0, align 4
  %77 = load ptr, ptr %T, align 8
  %arrayidx49 = getelementptr inbounds float, ptr %77, i64 3
  %78 = load float, ptr %arrayidx49, align 4
  %mul50 = fmul float %76, %78
  %79 = call float @llvm.fmuladd.f32(float %73, float %75, float %mul50)
  store float %79, ptr %r2, align 4
  %80 = load float, ptr %r1, align 4
  %81 = load ptr, ptr %T, align 8
  %arrayidx51 = getelementptr inbounds float, ptr %81, i64 3
  %82 = load float, ptr %arrayidx51, align 4
  %83 = load float, ptr %r0, align 4
  %84 = load ptr, ptr %T, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %84, i64 2
  %85 = load float, ptr %arrayidx53, align 4
  %mul54 = fmul float %83, %85
  %neg55 = fneg float %mul54
  %86 = call float @llvm.fmuladd.f32(float %80, float %82, float %neg55)
  store float %86, ptr %r3, align 4
  %87 = load ptr, ptr %x0, align 8
  %arrayidx56 = getelementptr inbounds float, ptr %87, i64 1
  %88 = load float, ptr %arrayidx56, align 4
  %89 = load ptr, ptr %x1, align 8
  %arrayidx57 = getelementptr inbounds float, ptr %89, i64 1
  %90 = load float, ptr %arrayidx57, align 4
  %add58 = fadd float %88, %90
  %mul59 = fmul float %add58, 5.000000e-01
  store float %mul59, ptr %r0, align 4
  %91 = load ptr, ptr %x0, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %91, i64 0
  %92 = load float, ptr %arrayidx60, align 4
  %93 = load ptr, ptr %x1, align 8
  %arrayidx61 = getelementptr inbounds float, ptr %93, i64 0
  %94 = load float, ptr %arrayidx61, align 4
  %sub62 = fsub float %92, %94
  %mul63 = fmul float %sub62, 5.000000e-01
  store float %mul63, ptr %r1, align 4
  %95 = load float, ptr %r0, align 4
  %96 = load float, ptr %r2, align 4
  %add64 = fadd float %95, %96
  %97 = load ptr, ptr %w0, align 8
  %arrayidx65 = getelementptr inbounds float, ptr %97, i64 2
  store float %add64, ptr %arrayidx65, align 4
  %98 = load float, ptr %r0, align 4
  %99 = load float, ptr %r2, align 4
  %sub66 = fsub float %98, %99
  %100 = load ptr, ptr %w1, align 8
  %arrayidx67 = getelementptr inbounds float, ptr %100, i64 0
  store float %sub66, ptr %arrayidx67, align 4
  %101 = load float, ptr %r1, align 4
  %102 = load float, ptr %r3, align 4
  %add68 = fadd float %101, %102
  %103 = load ptr, ptr %w0, align 8
  %arrayidx69 = getelementptr inbounds float, ptr %103, i64 3
  store float %add68, ptr %arrayidx69, align 4
  %104 = load float, ptr %r3, align 4
  %105 = load float, ptr %r1, align 4
  %sub70 = fsub float %104, %105
  %106 = load ptr, ptr %w1, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %106, i64 1
  store float %sub70, ptr %arrayidx71, align 4
  %107 = load ptr, ptr %T, align 8
  %add.ptr72 = getelementptr inbounds float, ptr %107, i64 4
  store ptr %add.ptr72, ptr %T, align 8
  %108 = load ptr, ptr %bit, align 8
  %add.ptr73 = getelementptr inbounds i32, ptr %108, i64 4
  store ptr %add.ptr73, ptr %bit, align 8
  %109 = load ptr, ptr %w0, align 8
  %add.ptr74 = getelementptr inbounds float, ptr %109, i64 4
  store ptr %add.ptr74, ptr %w0, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %110 = load ptr, ptr %w0, align 8
  %111 = load ptr, ptr %w1, align 8
  %cmp = icmp ult ptr %110, %111
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  ret void
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
