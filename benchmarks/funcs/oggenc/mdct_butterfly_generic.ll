; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @mdct_butterfly_generic(ptr noundef %T, ptr noundef %x, i32 noundef %points, i32 noundef %trigint) #1 {
entry:
  %T.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %points.addr = alloca i32, align 4
  %trigint.addr = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  store ptr %T, ptr %T.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %points, ptr %points.addr, align 4
  store i32 %trigint, ptr %trigint.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %points.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds float, ptr %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds float, ptr %add.ptr, i64 -8
  store ptr %add.ptr1, ptr %x1, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %points.addr, align 4
  %shr = ashr i32 %3, 1
  %idx.ext2 = sext i32 %shr to i64
  %add.ptr3 = getelementptr inbounds float, ptr %2, i64 %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr3, i64 -8
  store ptr %add.ptr4, ptr %x2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load ptr, ptr %x1, align 8
  %arrayidx = getelementptr inbounds float, ptr %4, i64 6
  %5 = load float, ptr %arrayidx, align 4
  %6 = load ptr, ptr %x2, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %6, i64 6
  %7 = load float, ptr %arrayidx5, align 4
  %sub = fsub float %5, %7
  store float %sub, ptr %r0, align 4
  %8 = load ptr, ptr %x1, align 8
  %arrayidx6 = getelementptr inbounds float, ptr %8, i64 7
  %9 = load float, ptr %arrayidx6, align 4
  %10 = load ptr, ptr %x2, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %10, i64 7
  %11 = load float, ptr %arrayidx7, align 4
  %sub8 = fsub float %9, %11
  store float %sub8, ptr %r1, align 4
  %12 = load ptr, ptr %x2, align 8
  %arrayidx9 = getelementptr inbounds float, ptr %12, i64 6
  %13 = load float, ptr %arrayidx9, align 4
  %14 = load ptr, ptr %x1, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %14, i64 6
  %15 = load float, ptr %arrayidx10, align 4
  %add = fadd float %15, %13
  store float %add, ptr %arrayidx10, align 4
  %16 = load ptr, ptr %x2, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %16, i64 7
  %17 = load float, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %x1, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %18, i64 7
  %19 = load float, ptr %arrayidx12, align 4
  %add13 = fadd float %19, %17
  store float %add13, ptr %arrayidx12, align 4
  %20 = load float, ptr %r1, align 4
  %21 = load ptr, ptr %T.addr, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %21, i64 1
  %22 = load float, ptr %arrayidx14, align 4
  %23 = load float, ptr %r0, align 4
  %24 = load ptr, ptr %T.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %24, i64 0
  %25 = load float, ptr %arrayidx15, align 4
  %mul16 = fmul float %23, %25
  %26 = call float @llvm.fmuladd.f32(float %20, float %22, float %mul16)
  %27 = load ptr, ptr %x2, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %27, i64 6
  store float %26, ptr %arrayidx17, align 4
  %28 = load float, ptr %r1, align 4
  %29 = load ptr, ptr %T.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %29, i64 0
  %30 = load float, ptr %arrayidx18, align 4
  %31 = load float, ptr %r0, align 4
  %32 = load ptr, ptr %T.addr, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %32, i64 1
  %33 = load float, ptr %arrayidx19, align 4
  %mul20 = fmul float %31, %33
  %neg = fneg float %mul20
  %34 = call float @llvm.fmuladd.f32(float %28, float %30, float %neg)
  %35 = load ptr, ptr %x2, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %35, i64 7
  store float %34, ptr %arrayidx21, align 4
  %36 = load i32, ptr %trigint.addr, align 4
  %37 = load ptr, ptr %T.addr, align 8
  %idx.ext22 = sext i32 %36 to i64
  %add.ptr23 = getelementptr inbounds float, ptr %37, i64 %idx.ext22
  store ptr %add.ptr23, ptr %T.addr, align 8
  %38 = load ptr, ptr %x1, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %38, i64 4
  %39 = load float, ptr %arrayidx24, align 4
  %40 = load ptr, ptr %x2, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %40, i64 4
  %41 = load float, ptr %arrayidx25, align 4
  %sub26 = fsub float %39, %41
  store float %sub26, ptr %r0, align 4
  %42 = load ptr, ptr %x1, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %42, i64 5
  %43 = load float, ptr %arrayidx27, align 4
  %44 = load ptr, ptr %x2, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %44, i64 5
  %45 = load float, ptr %arrayidx28, align 4
  %sub29 = fsub float %43, %45
  store float %sub29, ptr %r1, align 4
  %46 = load ptr, ptr %x2, align 8
  %arrayidx30 = getelementptr inbounds float, ptr %46, i64 4
  %47 = load float, ptr %arrayidx30, align 4
  %48 = load ptr, ptr %x1, align 8
  %arrayidx31 = getelementptr inbounds float, ptr %48, i64 4
  %49 = load float, ptr %arrayidx31, align 4
  %add32 = fadd float %49, %47
  store float %add32, ptr %arrayidx31, align 4
  %50 = load ptr, ptr %x2, align 8
  %arrayidx33 = getelementptr inbounds float, ptr %50, i64 5
  %51 = load float, ptr %arrayidx33, align 4
  %52 = load ptr, ptr %x1, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %52, i64 5
  %53 = load float, ptr %arrayidx34, align 4
  %add35 = fadd float %53, %51
  store float %add35, ptr %arrayidx34, align 4
  %54 = load float, ptr %r1, align 4
  %55 = load ptr, ptr %T.addr, align 8
  %arrayidx36 = getelementptr inbounds float, ptr %55, i64 1
  %56 = load float, ptr %arrayidx36, align 4
  %57 = load float, ptr %r0, align 4
  %58 = load ptr, ptr %T.addr, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %58, i64 0
  %59 = load float, ptr %arrayidx37, align 4
  %mul38 = fmul float %57, %59
  %60 = call float @llvm.fmuladd.f32(float %54, float %56, float %mul38)
  %61 = load ptr, ptr %x2, align 8
  %arrayidx39 = getelementptr inbounds float, ptr %61, i64 4
  store float %60, ptr %arrayidx39, align 4
  %62 = load float, ptr %r1, align 4
  %63 = load ptr, ptr %T.addr, align 8
  %arrayidx40 = getelementptr inbounds float, ptr %63, i64 0
  %64 = load float, ptr %arrayidx40, align 4
  %65 = load float, ptr %r0, align 4
  %66 = load ptr, ptr %T.addr, align 8
  %arrayidx41 = getelementptr inbounds float, ptr %66, i64 1
  %67 = load float, ptr %arrayidx41, align 4
  %mul42 = fmul float %65, %67
  %neg43 = fneg float %mul42
  %68 = call float @llvm.fmuladd.f32(float %62, float %64, float %neg43)
  %69 = load ptr, ptr %x2, align 8
  %arrayidx44 = getelementptr inbounds float, ptr %69, i64 5
  store float %68, ptr %arrayidx44, align 4
  %70 = load i32, ptr %trigint.addr, align 4
  %71 = load ptr, ptr %T.addr, align 8
  %idx.ext45 = sext i32 %70 to i64
  %add.ptr46 = getelementptr inbounds float, ptr %71, i64 %idx.ext45
  store ptr %add.ptr46, ptr %T.addr, align 8
  %72 = load ptr, ptr %x1, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %72, i64 2
  %73 = load float, ptr %arrayidx47, align 4
  %74 = load ptr, ptr %x2, align 8
  %arrayidx48 = getelementptr inbounds float, ptr %74, i64 2
  %75 = load float, ptr %arrayidx48, align 4
  %sub49 = fsub float %73, %75
  store float %sub49, ptr %r0, align 4
  %76 = load ptr, ptr %x1, align 8
  %arrayidx50 = getelementptr inbounds float, ptr %76, i64 3
  %77 = load float, ptr %arrayidx50, align 4
  %78 = load ptr, ptr %x2, align 8
  %arrayidx51 = getelementptr inbounds float, ptr %78, i64 3
  %79 = load float, ptr %arrayidx51, align 4
  %sub52 = fsub float %77, %79
  store float %sub52, ptr %r1, align 4
  %80 = load ptr, ptr %x2, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %80, i64 2
  %81 = load float, ptr %arrayidx53, align 4
  %82 = load ptr, ptr %x1, align 8
  %arrayidx54 = getelementptr inbounds float, ptr %82, i64 2
  %83 = load float, ptr %arrayidx54, align 4
  %add55 = fadd float %83, %81
  store float %add55, ptr %arrayidx54, align 4
  %84 = load ptr, ptr %x2, align 8
  %arrayidx56 = getelementptr inbounds float, ptr %84, i64 3
  %85 = load float, ptr %arrayidx56, align 4
  %86 = load ptr, ptr %x1, align 8
  %arrayidx57 = getelementptr inbounds float, ptr %86, i64 3
  %87 = load float, ptr %arrayidx57, align 4
  %add58 = fadd float %87, %85
  store float %add58, ptr %arrayidx57, align 4
  %88 = load float, ptr %r1, align 4
  %89 = load ptr, ptr %T.addr, align 8
  %arrayidx59 = getelementptr inbounds float, ptr %89, i64 1
  %90 = load float, ptr %arrayidx59, align 4
  %91 = load float, ptr %r0, align 4
  %92 = load ptr, ptr %T.addr, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %92, i64 0
  %93 = load float, ptr %arrayidx60, align 4
  %mul61 = fmul float %91, %93
  %94 = call float @llvm.fmuladd.f32(float %88, float %90, float %mul61)
  %95 = load ptr, ptr %x2, align 8
  %arrayidx62 = getelementptr inbounds float, ptr %95, i64 2
  store float %94, ptr %arrayidx62, align 4
  %96 = load float, ptr %r1, align 4
  %97 = load ptr, ptr %T.addr, align 8
  %arrayidx63 = getelementptr inbounds float, ptr %97, i64 0
  %98 = load float, ptr %arrayidx63, align 4
  %99 = load float, ptr %r0, align 4
  %100 = load ptr, ptr %T.addr, align 8
  %arrayidx64 = getelementptr inbounds float, ptr %100, i64 1
  %101 = load float, ptr %arrayidx64, align 4
  %mul65 = fmul float %99, %101
  %neg66 = fneg float %mul65
  %102 = call float @llvm.fmuladd.f32(float %96, float %98, float %neg66)
  %103 = load ptr, ptr %x2, align 8
  %arrayidx67 = getelementptr inbounds float, ptr %103, i64 3
  store float %102, ptr %arrayidx67, align 4
  %104 = load i32, ptr %trigint.addr, align 4
  %105 = load ptr, ptr %T.addr, align 8
  %idx.ext68 = sext i32 %104 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %105, i64 %idx.ext68
  store ptr %add.ptr69, ptr %T.addr, align 8
  %106 = load ptr, ptr %x1, align 8
  %arrayidx70 = getelementptr inbounds float, ptr %106, i64 0
  %107 = load float, ptr %arrayidx70, align 4
  %108 = load ptr, ptr %x2, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %108, i64 0
  %109 = load float, ptr %arrayidx71, align 4
  %sub72 = fsub float %107, %109
  store float %sub72, ptr %r0, align 4
  %110 = load ptr, ptr %x1, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %110, i64 1
  %111 = load float, ptr %arrayidx73, align 4
  %112 = load ptr, ptr %x2, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %112, i64 1
  %113 = load float, ptr %arrayidx74, align 4
  %sub75 = fsub float %111, %113
  store float %sub75, ptr %r1, align 4
  %114 = load ptr, ptr %x2, align 8
  %arrayidx76 = getelementptr inbounds float, ptr %114, i64 0
  %115 = load float, ptr %arrayidx76, align 4
  %116 = load ptr, ptr %x1, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %116, i64 0
  %117 = load float, ptr %arrayidx77, align 4
  %add78 = fadd float %117, %115
  store float %add78, ptr %arrayidx77, align 4
  %118 = load ptr, ptr %x2, align 8
  %arrayidx79 = getelementptr inbounds float, ptr %118, i64 1
  %119 = load float, ptr %arrayidx79, align 4
  %120 = load ptr, ptr %x1, align 8
  %arrayidx80 = getelementptr inbounds float, ptr %120, i64 1
  %121 = load float, ptr %arrayidx80, align 4
  %add81 = fadd float %121, %119
  store float %add81, ptr %arrayidx80, align 4
  %122 = load float, ptr %r1, align 4
  %123 = load ptr, ptr %T.addr, align 8
  %arrayidx82 = getelementptr inbounds float, ptr %123, i64 1
  %124 = load float, ptr %arrayidx82, align 4
  %125 = load float, ptr %r0, align 4
  %126 = load ptr, ptr %T.addr, align 8
  %arrayidx83 = getelementptr inbounds float, ptr %126, i64 0
  %127 = load float, ptr %arrayidx83, align 4
  %mul84 = fmul float %125, %127
  %128 = call float @llvm.fmuladd.f32(float %122, float %124, float %mul84)
  %129 = load ptr, ptr %x2, align 8
  %arrayidx85 = getelementptr inbounds float, ptr %129, i64 0
  store float %128, ptr %arrayidx85, align 4
  %130 = load float, ptr %r1, align 4
  %131 = load ptr, ptr %T.addr, align 8
  %arrayidx86 = getelementptr inbounds float, ptr %131, i64 0
  %132 = load float, ptr %arrayidx86, align 4
  %133 = load float, ptr %r0, align 4
  %134 = load ptr, ptr %T.addr, align 8
  %arrayidx87 = getelementptr inbounds float, ptr %134, i64 1
  %135 = load float, ptr %arrayidx87, align 4
  %mul88 = fmul float %133, %135
  %neg89 = fneg float %mul88
  %136 = call float @llvm.fmuladd.f32(float %130, float %132, float %neg89)
  %137 = load ptr, ptr %x2, align 8
  %arrayidx90 = getelementptr inbounds float, ptr %137, i64 1
  store float %136, ptr %arrayidx90, align 4
  %138 = load i32, ptr %trigint.addr, align 4
  %139 = load ptr, ptr %T.addr, align 8
  %idx.ext91 = sext i32 %138 to i64
  %add.ptr92 = getelementptr inbounds float, ptr %139, i64 %idx.ext91
  store ptr %add.ptr92, ptr %T.addr, align 8
  %140 = load ptr, ptr %x1, align 8
  %add.ptr93 = getelementptr inbounds float, ptr %140, i64 -8
  store ptr %add.ptr93, ptr %x1, align 8
  %141 = load ptr, ptr %x2, align 8
  %add.ptr94 = getelementptr inbounds float, ptr %141, i64 -8
  store ptr %add.ptr94, ptr %x2, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %142 = load ptr, ptr %x2, align 8
  %143 = load ptr, ptr %x.addr, align 8
  %cmp = icmp uge ptr %142, %143
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
