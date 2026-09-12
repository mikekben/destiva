; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
declare dso_local float @vorbis_coslook(float noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local float @vorbis_invsqlook(float noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local float @vorbis_invsq2explook(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local float @vorbis_fromdBlook(float noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_lsp_to_curve(ptr noundef %curve, ptr noundef %map, i32 noundef %n, i32 noundef %ln, ptr noundef %lsp, i32 noundef %m, float noundef %amp, float noundef %ampoffset) #1 {
entry:
  %curve.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ln.addr = alloca i32, align 4
  %lsp.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %amp.addr = alloca float, align 4
  %ampoffset.addr = alloca float, align 4
  %i = alloca i32, align 4
  %wdel = alloca float, align 4
  %fpu = alloca i32, align 4
  %k = alloca i32, align 4
  %qexp = alloca i32, align 4
  %p = alloca float, align 4
  %q = alloca float, align 4
  %w = alloca float, align 4
  %ftmp = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %curve, ptr %curve.addr, align 8
  store ptr %map, ptr %map.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %ln, ptr %ln.addr, align 4
  store ptr %lsp, ptr %lsp.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  store float %amp, ptr %amp.addr, align 4
  store float %ampoffset, ptr %ampoffset.addr, align 4
  %0 = load i32, ptr %ln.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 0x400921FB54442D18, %conv
  %conv1 = fptrunc double %div to float
  store float %conv1, ptr %wdel, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %lsp.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds float, ptr %3, i64 %idxprom
  %5 = load float, ptr %arrayidx, align 4
  %call = call float @vorbis_coslook(float noundef %5)
  %6 = load ptr, ptr %lsp.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %6, i64 %idxprom3
  store float %call, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end50, %for.end
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %map.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4
  store i32 %13, ptr %k, align 4
  store float 0x3FE6A09E60000000, ptr %p, align 4
  store float 0x3FE6A09E60000000, ptr %q, align 4
  %14 = load float, ptr %wdel, align 4
  %15 = load i32, ptr %k, align 4
  %conv9 = sitofp i32 %15 to float
  %mul = fmul float %14, %conv9
  %call10 = call float @vorbis_coslook(float noundef %mul)
  store float %call10, ptr %w, align 4
  %16 = load ptr, ptr %lsp.addr, align 8
  store ptr %16, ptr %ftmp, align 8
  %17 = load i32, ptr %m.addr, align 4
  %shr = ashr i32 %17, 1
  store i32 %shr, ptr %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %18 = load ptr, ptr %ftmp, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %18, i64 0
  %19 = load float, ptr %arrayidx11, align 4
  %20 = load float, ptr %w, align 4
  %sub = fsub float %19, %20
  %21 = load float, ptr %q, align 4
  %mul12 = fmul float %21, %sub
  store float %mul12, ptr %q, align 4
  %22 = load ptr, ptr %ftmp, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %22, i64 1
  %23 = load float, ptr %arrayidx13, align 4
  %24 = load float, ptr %w, align 4
  %sub14 = fsub float %23, %24
  %25 = load float, ptr %p, align 4
  %mul15 = fmul float %25, %sub14
  store float %mul15, ptr %p, align 4
  %26 = load ptr, ptr %ftmp, align 8
  %add.ptr = getelementptr inbounds float, ptr %26, i64 2
  store ptr %add.ptr, ptr %ftmp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load i32, ptr %c, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %c, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %28 = load i32, ptr %m.addr, align 4
  %and = and i32 %28, 1
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %29 = load ptr, ptr %ftmp, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %29, i64 0
  %30 = load float, ptr %arrayidx17, align 4
  %31 = load float, ptr %w, align 4
  %sub18 = fsub float %30, %31
  %32 = load float, ptr %q, align 4
  %mul19 = fmul float %32, %sub18
  store float %mul19, ptr %q, align 4
  %33 = load float, ptr %q, align 4
  %34 = load float, ptr %q, align 4
  %mul20 = fmul float %34, %33
  store float %mul20, ptr %q, align 4
  %35 = load float, ptr %p, align 4
  %36 = load float, ptr %w, align 4
  %37 = load float, ptr %w, align 4
  %neg = fneg float %36
  %38 = call float @llvm.fmuladd.f32(float %neg, float %37, float 1.000000e+00)
  %mul22 = fmul float %35, %38
  %39 = load float, ptr %p, align 4
  %mul23 = fmul float %39, %mul22
  store float %mul23, ptr %p, align 4
  br label %if.end

if.else:                                          ; preds = %do.end
  %40 = load float, ptr %q, align 4
  %41 = load float, ptr %w, align 4
  %add = fadd float 1.000000e+00, %41
  %mul24 = fmul float %40, %add
  %42 = load float, ptr %q, align 4
  %mul25 = fmul float %42, %mul24
  store float %mul25, ptr %q, align 4
  %43 = load float, ptr %p, align 4
  %44 = load float, ptr %w, align 4
  %sub26 = fsub float 1.000000e+00, %44
  %mul27 = fmul float %43, %sub26
  %45 = load float, ptr %p, align 4
  %mul28 = fmul float %45, %mul27
  store float %mul28, ptr %p, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %46 = load float, ptr %p, align 4
  %47 = load float, ptr %q, align 4
  %add29 = fadd float %46, %47
  %conv30 = fpext float %add29 to double
  %call31 = call double @frexp(double noundef %conv30, ptr noundef %qexp) #3
  %conv32 = fptrunc double %call31 to float
  store float %conv32, ptr %q, align 4
  %48 = load float, ptr %amp.addr, align 4
  %49 = load float, ptr %q, align 4
  %call33 = call float @vorbis_invsqlook(float noundef %49)
  %mul34 = fmul float %48, %call33
  %50 = load i32, ptr %qexp, align 4
  %51 = load i32, ptr %m.addr, align 4
  %add35 = add nsw i32 %50, %51
  %call36 = call float @vorbis_invsq2explook(i32 noundef %add35)
  %52 = load float, ptr %ampoffset.addr, align 4
  %neg38 = fneg float %52
  %53 = call float @llvm.fmuladd.f32(float %mul34, float %call36, float %neg38)
  %call39 = call float @vorbis_fromdBlook(float noundef %53)
  store float %call39, ptr %q, align 4
  br label %do.body40

do.body40:                                        ; preds = %do.cond45, %if.end
  %54 = load float, ptr %q, align 4
  %55 = load ptr, ptr %curve.addr, align 8
  %56 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %56, 1
  store i32 %inc41, ptr %i, align 4
  %idxprom42 = sext i32 %56 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %55, i64 %idxprom42
  %57 = load float, ptr %arrayidx43, align 4
  %mul44 = fmul float %57, %54
  store float %mul44, ptr %arrayidx43, align 4
  br label %do.cond45

do.cond45:                                        ; preds = %do.body40
  %58 = load ptr, ptr %map.addr, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %59 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %58, i64 %idxprom46
  %60 = load i32, ptr %arrayidx47, align 4
  %61 = load i32, ptr %k, align 4
  %cmp48 = icmp eq i32 %60, %61
  br i1 %cmp48, label %do.body40, label %do.end50, !llvm.loop !9

do.end50:                                         ; preds = %do.cond45
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare double @frexp(double noundef, ptr noundef) #2

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
