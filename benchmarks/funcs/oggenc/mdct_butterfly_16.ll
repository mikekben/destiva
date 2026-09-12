; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @mdct_butterfly_16(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 1
  %1 = load float, ptr %arrayidx, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %2, i64 9
  %3 = load float, ptr %arrayidx1, align 4
  %sub = fsub float %1, %3
  store float %sub, ptr %r0, align 4
  %4 = load ptr, ptr %x.addr, align 8
  %arrayidx2 = getelementptr inbounds float, ptr %4, i64 0
  %5 = load float, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %x.addr, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %6, i64 8
  %7 = load float, ptr %arrayidx3, align 4
  %sub4 = fsub float %5, %7
  store float %sub4, ptr %r1, align 4
  %8 = load ptr, ptr %x.addr, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %8, i64 0
  %9 = load float, ptr %arrayidx5, align 4
  %10 = load ptr, ptr %x.addr, align 8
  %arrayidx6 = getelementptr inbounds float, ptr %10, i64 8
  %11 = load float, ptr %arrayidx6, align 4
  %add = fadd float %11, %9
  store float %add, ptr %arrayidx6, align 4
  %12 = load ptr, ptr %x.addr, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %12, i64 1
  %13 = load float, ptr %arrayidx7, align 4
  %14 = load ptr, ptr %x.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %14, i64 9
  %15 = load float, ptr %arrayidx8, align 4
  %add9 = fadd float %15, %13
  store float %add9, ptr %arrayidx8, align 4
  %16 = load float, ptr %r0, align 4
  %17 = load float, ptr %r1, align 4
  %add10 = fadd float %16, %17
  %mul = fmul float %add10, 0x3FE6A09E60000000
  %18 = load ptr, ptr %x.addr, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %18, i64 0
  store float %mul, ptr %arrayidx11, align 4
  %19 = load float, ptr %r0, align 4
  %20 = load float, ptr %r1, align 4
  %sub12 = fsub float %19, %20
  %mul13 = fmul float %sub12, 0x3FE6A09E60000000
  %21 = load ptr, ptr %x.addr, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %21, i64 1
  store float %mul13, ptr %arrayidx14, align 4
  %22 = load ptr, ptr %x.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %22, i64 3
  %23 = load float, ptr %arrayidx15, align 4
  %24 = load ptr, ptr %x.addr, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %24, i64 11
  %25 = load float, ptr %arrayidx16, align 4
  %sub17 = fsub float %23, %25
  store float %sub17, ptr %r0, align 4
  %26 = load ptr, ptr %x.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %26, i64 10
  %27 = load float, ptr %arrayidx18, align 4
  %28 = load ptr, ptr %x.addr, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %28, i64 2
  %29 = load float, ptr %arrayidx19, align 4
  %sub20 = fsub float %27, %29
  store float %sub20, ptr %r1, align 4
  %30 = load ptr, ptr %x.addr, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %30, i64 2
  %31 = load float, ptr %arrayidx21, align 4
  %32 = load ptr, ptr %x.addr, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %32, i64 10
  %33 = load float, ptr %arrayidx22, align 4
  %add23 = fadd float %33, %31
  store float %add23, ptr %arrayidx22, align 4
  %34 = load ptr, ptr %x.addr, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %34, i64 3
  %35 = load float, ptr %arrayidx24, align 4
  %36 = load ptr, ptr %x.addr, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %36, i64 11
  %37 = load float, ptr %arrayidx25, align 4
  %add26 = fadd float %37, %35
  store float %add26, ptr %arrayidx25, align 4
  %38 = load float, ptr %r0, align 4
  %39 = load ptr, ptr %x.addr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %39, i64 2
  store float %38, ptr %arrayidx27, align 4
  %40 = load float, ptr %r1, align 4
  %41 = load ptr, ptr %x.addr, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %41, i64 3
  store float %40, ptr %arrayidx28, align 4
  %42 = load ptr, ptr %x.addr, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %42, i64 12
  %43 = load float, ptr %arrayidx29, align 4
  %44 = load ptr, ptr %x.addr, align 8
  %arrayidx30 = getelementptr inbounds float, ptr %44, i64 4
  %45 = load float, ptr %arrayidx30, align 4
  %sub31 = fsub float %43, %45
  store float %sub31, ptr %r0, align 4
  %46 = load ptr, ptr %x.addr, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %46, i64 13
  %47 = load float, ptr %arrayidx32, align 4
  %48 = load ptr, ptr %x.addr, align 8
  %arrayidx33 = getelementptr inbounds float, ptr %48, i64 5
  %49 = load float, ptr %arrayidx33, align 4
  %sub34 = fsub float %47, %49
  store float %sub34, ptr %r1, align 4
  %50 = load ptr, ptr %x.addr, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %50, i64 4
  %51 = load float, ptr %arrayidx35, align 4
  %52 = load ptr, ptr %x.addr, align 8
  %arrayidx36 = getelementptr inbounds float, ptr %52, i64 12
  %53 = load float, ptr %arrayidx36, align 4
  %add37 = fadd float %53, %51
  store float %add37, ptr %arrayidx36, align 4
  %54 = load ptr, ptr %x.addr, align 8
  %arrayidx38 = getelementptr inbounds float, ptr %54, i64 5
  %55 = load float, ptr %arrayidx38, align 4
  %56 = load ptr, ptr %x.addr, align 8
  %arrayidx39 = getelementptr inbounds float, ptr %56, i64 13
  %57 = load float, ptr %arrayidx39, align 4
  %add40 = fadd float %57, %55
  store float %add40, ptr %arrayidx39, align 4
  %58 = load float, ptr %r0, align 4
  %59 = load float, ptr %r1, align 4
  %sub41 = fsub float %58, %59
  %mul42 = fmul float %sub41, 0x3FE6A09E60000000
  %60 = load ptr, ptr %x.addr, align 8
  %arrayidx43 = getelementptr inbounds float, ptr %60, i64 4
  store float %mul42, ptr %arrayidx43, align 4
  %61 = load float, ptr %r0, align 4
  %62 = load float, ptr %r1, align 4
  %add44 = fadd float %61, %62
  %mul45 = fmul float %add44, 0x3FE6A09E60000000
  %63 = load ptr, ptr %x.addr, align 8
  %arrayidx46 = getelementptr inbounds float, ptr %63, i64 5
  store float %mul45, ptr %arrayidx46, align 4
  %64 = load ptr, ptr %x.addr, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %64, i64 14
  %65 = load float, ptr %arrayidx47, align 4
  %66 = load ptr, ptr %x.addr, align 8
  %arrayidx48 = getelementptr inbounds float, ptr %66, i64 6
  %67 = load float, ptr %arrayidx48, align 4
  %sub49 = fsub float %65, %67
  store float %sub49, ptr %r0, align 4
  %68 = load ptr, ptr %x.addr, align 8
  %arrayidx50 = getelementptr inbounds float, ptr %68, i64 15
  %69 = load float, ptr %arrayidx50, align 4
  %70 = load ptr, ptr %x.addr, align 8
  %arrayidx51 = getelementptr inbounds float, ptr %70, i64 7
  %71 = load float, ptr %arrayidx51, align 4
  %sub52 = fsub float %69, %71
  store float %sub52, ptr %r1, align 4
  %72 = load ptr, ptr %x.addr, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %72, i64 6
  %73 = load float, ptr %arrayidx53, align 4
  %74 = load ptr, ptr %x.addr, align 8
  %arrayidx54 = getelementptr inbounds float, ptr %74, i64 14
  %75 = load float, ptr %arrayidx54, align 4
  %add55 = fadd float %75, %73
  store float %add55, ptr %arrayidx54, align 4
  %76 = load ptr, ptr %x.addr, align 8
  %arrayidx56 = getelementptr inbounds float, ptr %76, i64 7
  %77 = load float, ptr %arrayidx56, align 4
  %78 = load ptr, ptr %x.addr, align 8
  %arrayidx57 = getelementptr inbounds float, ptr %78, i64 15
  %79 = load float, ptr %arrayidx57, align 4
  %add58 = fadd float %79, %77
  store float %add58, ptr %arrayidx57, align 4
  %80 = load float, ptr %r0, align 4
  %81 = load ptr, ptr %x.addr, align 8
  %arrayidx59 = getelementptr inbounds float, ptr %81, i64 6
  store float %80, ptr %arrayidx59, align 4
  %82 = load float, ptr %r1, align 4
  %83 = load ptr, ptr %x.addr, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %83, i64 7
  store float %82, ptr %arrayidx60, align 4
  %84 = load ptr, ptr %x.addr, align 8
  call void @mdct_butterfly_8(ptr noundef %84)
  %85 = load ptr, ptr %x.addr, align 8
  %add.ptr = getelementptr inbounds float, ptr %85, i64 8
  call void @mdct_butterfly_8(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterfly_8(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
