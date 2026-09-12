; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @mdct_butterfly_8(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  %r3 = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 6
  %1 = load float, ptr %arrayidx, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %2, i64 2
  %3 = load float, ptr %arrayidx1, align 4
  %add = fadd float %1, %3
  store float %add, ptr %r0, align 4
  %4 = load ptr, ptr %x.addr, align 8
  %arrayidx2 = getelementptr inbounds float, ptr %4, i64 6
  %5 = load float, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %x.addr, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %6, i64 2
  %7 = load float, ptr %arrayidx3, align 4
  %sub = fsub float %5, %7
  store float %sub, ptr %r1, align 4
  %8 = load ptr, ptr %x.addr, align 8
  %arrayidx4 = getelementptr inbounds float, ptr %8, i64 4
  %9 = load float, ptr %arrayidx4, align 4
  %10 = load ptr, ptr %x.addr, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %10, i64 0
  %11 = load float, ptr %arrayidx5, align 4
  %add6 = fadd float %9, %11
  store float %add6, ptr %r2, align 4
  %12 = load ptr, ptr %x.addr, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %12, i64 4
  %13 = load float, ptr %arrayidx7, align 4
  %14 = load ptr, ptr %x.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %14, i64 0
  %15 = load float, ptr %arrayidx8, align 4
  %sub9 = fsub float %13, %15
  store float %sub9, ptr %r3, align 4
  %16 = load float, ptr %r0, align 4
  %17 = load float, ptr %r2, align 4
  %add10 = fadd float %16, %17
  %18 = load ptr, ptr %x.addr, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %18, i64 6
  store float %add10, ptr %arrayidx11, align 4
  %19 = load float, ptr %r0, align 4
  %20 = load float, ptr %r2, align 4
  %sub12 = fsub float %19, %20
  %21 = load ptr, ptr %x.addr, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %21, i64 4
  store float %sub12, ptr %arrayidx13, align 4
  %22 = load ptr, ptr %x.addr, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %22, i64 5
  %23 = load float, ptr %arrayidx14, align 4
  %24 = load ptr, ptr %x.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %24, i64 1
  %25 = load float, ptr %arrayidx15, align 4
  %sub16 = fsub float %23, %25
  store float %sub16, ptr %r0, align 4
  %26 = load ptr, ptr %x.addr, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %26, i64 7
  %27 = load float, ptr %arrayidx17, align 4
  %28 = load ptr, ptr %x.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %28, i64 3
  %29 = load float, ptr %arrayidx18, align 4
  %sub19 = fsub float %27, %29
  store float %sub19, ptr %r2, align 4
  %30 = load float, ptr %r1, align 4
  %31 = load float, ptr %r0, align 4
  %add20 = fadd float %30, %31
  %32 = load ptr, ptr %x.addr, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %32, i64 0
  store float %add20, ptr %arrayidx21, align 4
  %33 = load float, ptr %r1, align 4
  %34 = load float, ptr %r0, align 4
  %sub22 = fsub float %33, %34
  %35 = load ptr, ptr %x.addr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %35, i64 2
  store float %sub22, ptr %arrayidx23, align 4
  %36 = load ptr, ptr %x.addr, align 8
  %arrayidx24 = getelementptr inbounds float, ptr %36, i64 5
  %37 = load float, ptr %arrayidx24, align 4
  %38 = load ptr, ptr %x.addr, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %38, i64 1
  %39 = load float, ptr %arrayidx25, align 4
  %add26 = fadd float %37, %39
  store float %add26, ptr %r0, align 4
  %40 = load ptr, ptr %x.addr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %40, i64 7
  %41 = load float, ptr %arrayidx27, align 4
  %42 = load ptr, ptr %x.addr, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %42, i64 3
  %43 = load float, ptr %arrayidx28, align 4
  %add29 = fadd float %41, %43
  store float %add29, ptr %r1, align 4
  %44 = load float, ptr %r2, align 4
  %45 = load float, ptr %r3, align 4
  %add30 = fadd float %44, %45
  %46 = load ptr, ptr %x.addr, align 8
  %arrayidx31 = getelementptr inbounds float, ptr %46, i64 3
  store float %add30, ptr %arrayidx31, align 4
  %47 = load float, ptr %r2, align 4
  %48 = load float, ptr %r3, align 4
  %sub32 = fsub float %47, %48
  %49 = load ptr, ptr %x.addr, align 8
  %arrayidx33 = getelementptr inbounds float, ptr %49, i64 1
  store float %sub32, ptr %arrayidx33, align 4
  %50 = load float, ptr %r1, align 4
  %51 = load float, ptr %r0, align 4
  %add34 = fadd float %50, %51
  %52 = load ptr, ptr %x.addr, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %52, i64 7
  store float %add34, ptr %arrayidx35, align 4
  %53 = load float, ptr %r1, align 4
  %54 = load float, ptr %r0, align 4
  %sub36 = fsub float %53, %54
  %55 = load ptr, ptr %x.addr, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %55, i64 5
  store float %sub36, ptr %arrayidx37, align 4
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
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
