; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @mdct_butterfly_first(ptr noundef %T, ptr noundef %x, i32 noundef %points) #1 {
entry:
  %T.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %points.addr = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  store ptr %T, ptr %T.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %points, ptr %points.addr, align 4
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
  %36 = load ptr, ptr %x1, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %36, i64 4
  %37 = load float, ptr %arrayidx22, align 4
  %38 = load ptr, ptr %x2, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %38, i64 4
  %39 = load float, ptr %arrayidx23, align 4
  %sub24 = fsub float %37, %39
  store float %sub24, ptr %r0, align 4
  %40 = load ptr, ptr %x1, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %40, i64 5
  %41 = load float, ptr %arrayidx25, align 4
  %42 = load ptr, ptr %x2, align 8
  %arrayidx26 = getelementptr inbounds float, ptr %42, i64 5
  %43 = load float, ptr %arrayidx26, align 4
  %sub27 = fsub float %41, %43
  store float %sub27, ptr %r1, align 4
  %44 = load ptr, ptr %x2, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %44, i64 4
  %45 = load float, ptr %arrayidx28, align 4
  %46 = load ptr, ptr %x1, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %46, i64 4
  %47 = load float, ptr %arrayidx29, align 4
  %add30 = fadd float %47, %45
  store float %add30, ptr %arrayidx29, align 4
  %48 = load ptr, ptr %x2, align 8
  %arrayidx31 = getelementptr inbounds float, ptr %48, i64 5
  %49 = load float, ptr %arrayidx31, align 4
  %50 = load ptr, ptr %x1, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %50, i64 5
  %51 = load float, ptr %arrayidx32, align 4
  %add33 = fadd float %51, %49
  store float %add33, ptr %arrayidx32, align 4
  %52 = load float, ptr %r1, align 4
  %53 = load ptr, ptr %T.addr, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %53, i64 5
  %54 = load float, ptr %arrayidx34, align 4
  %55 = load float, ptr %r0, align 4
  %56 = load ptr, ptr %T.addr, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %56, i64 4
  %57 = load float, ptr %arrayidx35, align 4
  %mul36 = fmul float %55, %57
  %58 = call float @llvm.fmuladd.f32(float %52, float %54, float %mul36)
  %59 = load ptr, ptr %x2, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %59, i64 4
  store float %58, ptr %arrayidx37, align 4
  %60 = load float, ptr %r1, align 4
  %61 = load ptr, ptr %T.addr, align 8
  %arrayidx38 = getelementptr inbounds float, ptr %61, i64 4
  %62 = load float, ptr %arrayidx38, align 4
  %63 = load float, ptr %r0, align 4
  %64 = load ptr, ptr %T.addr, align 8
  %arrayidx39 = getelementptr inbounds float, ptr %64, i64 5
  %65 = load float, ptr %arrayidx39, align 4
  %mul40 = fmul float %63, %65
  %neg41 = fneg float %mul40
  %66 = call float @llvm.fmuladd.f32(float %60, float %62, float %neg41)
  %67 = load ptr, ptr %x2, align 8
  %arrayidx42 = getelementptr inbounds float, ptr %67, i64 5
  store float %66, ptr %arrayidx42, align 4
  %68 = load ptr, ptr %x1, align 8
  %arrayidx43 = getelementptr inbounds float, ptr %68, i64 2
  %69 = load float, ptr %arrayidx43, align 4
  %70 = load ptr, ptr %x2, align 8
  %arrayidx44 = getelementptr inbounds float, ptr %70, i64 2
  %71 = load float, ptr %arrayidx44, align 4
  %sub45 = fsub float %69, %71
  store float %sub45, ptr %r0, align 4
  %72 = load ptr, ptr %x1, align 8
  %arrayidx46 = getelementptr inbounds float, ptr %72, i64 3
  %73 = load float, ptr %arrayidx46, align 4
  %74 = load ptr, ptr %x2, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %74, i64 3
  %75 = load float, ptr %arrayidx47, align 4
  %sub48 = fsub float %73, %75
  store float %sub48, ptr %r1, align 4
  %76 = load ptr, ptr %x2, align 8
  %arrayidx49 = getelementptr inbounds float, ptr %76, i64 2
  %77 = load float, ptr %arrayidx49, align 4
  %78 = load ptr, ptr %x1, align 8
  %arrayidx50 = getelementptr inbounds float, ptr %78, i64 2
  %79 = load float, ptr %arrayidx50, align 4
  %add51 = fadd float %79, %77
  store float %add51, ptr %arrayidx50, align 4
  %80 = load ptr, ptr %x2, align 8
  %arrayidx52 = getelementptr inbounds float, ptr %80, i64 3
  %81 = load float, ptr %arrayidx52, align 4
  %82 = load ptr, ptr %x1, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %82, i64 3
  %83 = load float, ptr %arrayidx53, align 4
  %add54 = fadd float %83, %81
  store float %add54, ptr %arrayidx53, align 4
  %84 = load float, ptr %r1, align 4
  %85 = load ptr, ptr %T.addr, align 8
  %arrayidx55 = getelementptr inbounds float, ptr %85, i64 9
  %86 = load float, ptr %arrayidx55, align 4
  %87 = load float, ptr %r0, align 4
  %88 = load ptr, ptr %T.addr, align 8
  %arrayidx56 = getelementptr inbounds float, ptr %88, i64 8
  %89 = load float, ptr %arrayidx56, align 4
  %mul57 = fmul float %87, %89
  %90 = call float @llvm.fmuladd.f32(float %84, float %86, float %mul57)
  %91 = load ptr, ptr %x2, align 8
  %arrayidx58 = getelementptr inbounds float, ptr %91, i64 2
  store float %90, ptr %arrayidx58, align 4
  %92 = load float, ptr %r1, align 4
  %93 = load ptr, ptr %T.addr, align 8
  %arrayidx59 = getelementptr inbounds float, ptr %93, i64 8
  %94 = load float, ptr %arrayidx59, align 4
  %95 = load float, ptr %r0, align 4
  %96 = load ptr, ptr %T.addr, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %96, i64 9
  %97 = load float, ptr %arrayidx60, align 4
  %mul61 = fmul float %95, %97
  %neg62 = fneg float %mul61
  %98 = call float @llvm.fmuladd.f32(float %92, float %94, float %neg62)
  %99 = load ptr, ptr %x2, align 8
  %arrayidx63 = getelementptr inbounds float, ptr %99, i64 3
  store float %98, ptr %arrayidx63, align 4
  %100 = load ptr, ptr %x1, align 8
  %arrayidx64 = getelementptr inbounds float, ptr %100, i64 0
  %101 = load float, ptr %arrayidx64, align 4
  %102 = load ptr, ptr %x2, align 8
  %arrayidx65 = getelementptr inbounds float, ptr %102, i64 0
  %103 = load float, ptr %arrayidx65, align 4
  %sub66 = fsub float %101, %103
  store float %sub66, ptr %r0, align 4
  %104 = load ptr, ptr %x1, align 8
  %arrayidx67 = getelementptr inbounds float, ptr %104, i64 1
  %105 = load float, ptr %arrayidx67, align 4
  %106 = load ptr, ptr %x2, align 8
  %arrayidx68 = getelementptr inbounds float, ptr %106, i64 1
  %107 = load float, ptr %arrayidx68, align 4
  %sub69 = fsub float %105, %107
  store float %sub69, ptr %r1, align 4
  %108 = load ptr, ptr %x2, align 8
  %arrayidx70 = getelementptr inbounds float, ptr %108, i64 0
  %109 = load float, ptr %arrayidx70, align 4
  %110 = load ptr, ptr %x1, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %110, i64 0
  %111 = load float, ptr %arrayidx71, align 4
  %add72 = fadd float %111, %109
  store float %add72, ptr %arrayidx71, align 4
  %112 = load ptr, ptr %x2, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %112, i64 1
  %113 = load float, ptr %arrayidx73, align 4
  %114 = load ptr, ptr %x1, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %114, i64 1
  %115 = load float, ptr %arrayidx74, align 4
  %add75 = fadd float %115, %113
  store float %add75, ptr %arrayidx74, align 4
  %116 = load float, ptr %r1, align 4
  %117 = load ptr, ptr %T.addr, align 8
  %arrayidx76 = getelementptr inbounds float, ptr %117, i64 13
  %118 = load float, ptr %arrayidx76, align 4
  %119 = load float, ptr %r0, align 4
  %120 = load ptr, ptr %T.addr, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %120, i64 12
  %121 = load float, ptr %arrayidx77, align 4
  %mul78 = fmul float %119, %121
  %122 = call float @llvm.fmuladd.f32(float %116, float %118, float %mul78)
  %123 = load ptr, ptr %x2, align 8
  %arrayidx79 = getelementptr inbounds float, ptr %123, i64 0
  store float %122, ptr %arrayidx79, align 4
  %124 = load float, ptr %r1, align 4
  %125 = load ptr, ptr %T.addr, align 8
  %arrayidx80 = getelementptr inbounds float, ptr %125, i64 12
  %126 = load float, ptr %arrayidx80, align 4
  %127 = load float, ptr %r0, align 4
  %128 = load ptr, ptr %T.addr, align 8
  %arrayidx81 = getelementptr inbounds float, ptr %128, i64 13
  %129 = load float, ptr %arrayidx81, align 4
  %mul82 = fmul float %127, %129
  %neg83 = fneg float %mul82
  %130 = call float @llvm.fmuladd.f32(float %124, float %126, float %neg83)
  %131 = load ptr, ptr %x2, align 8
  %arrayidx84 = getelementptr inbounds float, ptr %131, i64 1
  store float %130, ptr %arrayidx84, align 4
  %132 = load ptr, ptr %x1, align 8
  %add.ptr85 = getelementptr inbounds float, ptr %132, i64 -8
  store ptr %add.ptr85, ptr %x1, align 8
  %133 = load ptr, ptr %x2, align 8
  %add.ptr86 = getelementptr inbounds float, ptr %133, i64 -8
  store ptr %add.ptr86, ptr %x2, align 8
  %134 = load ptr, ptr %T.addr, align 8
  %add.ptr87 = getelementptr inbounds float, ptr %134, i64 16
  store ptr %add.ptr87, ptr %T.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %135 = load ptr, ptr %x2, align 8
  %136 = load ptr, ptr %x.addr, align 8
  %cmp = icmp uge ptr %135, %136
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
