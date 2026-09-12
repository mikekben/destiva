; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden float @round_hypot(float noundef %a, float noundef %b) #1 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4
  store float %b, ptr %b.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %1 = load float, ptr %b.addr, align 4
  %conv2 = fpext float %1 to double
  %cmp3 = fcmp ogt double %conv2, 0.000000e+00
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %2 = load float, ptr %a.addr, align 4
  %3 = load float, ptr %a.addr, align 4
  %4 = load float, ptr %b.addr, align 4
  %5 = load float, ptr %b.addr, align 4
  %mul6 = fmul float %4, %5
  %6 = call float @llvm.fmuladd.f32(float %2, float %3, float %mul6)
  %conv7 = fpext float %6 to double
  %call = call double @sqrt(double noundef %conv7) #3
  %conv8 = fptrunc double %call to float
  store float %conv8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load float, ptr %a.addr, align 4
  %8 = load float, ptr %b.addr, align 4
  %fneg = fneg float %8
  %cmp9 = fcmp ogt float %7, %fneg
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %9 = load float, ptr %a.addr, align 4
  %10 = load float, ptr %a.addr, align 4
  %11 = load float, ptr %b.addr, align 4
  %12 = load float, ptr %b.addr, align 4
  %mul12 = fmul float %11, %12
  %13 = call float @llvm.fmuladd.f32(float %9, float %10, float %mul12)
  %conv13 = fpext float %13 to double
  %call14 = call double @sqrt(double noundef %conv13) #3
  %conv15 = fptrunc double %call14 to float
  store float %conv15, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %14 = load float, ptr %b.addr, align 4
  %15 = load float, ptr %b.addr, align 4
  %16 = load float, ptr %a.addr, align 4
  %17 = load float, ptr %a.addr, align 4
  %mul17 = fmul float %16, %17
  %18 = call float @llvm.fmuladd.f32(float %14, float %15, float %mul17)
  %conv18 = fpext float %18 to double
  %call19 = call double @sqrt(double noundef %conv18) #3
  %fneg20 = fneg double %call19
  %conv21 = fptrunc double %fneg20 to float
  store float %conv21, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %entry
  %19 = load float, ptr %b.addr, align 4
  %conv23 = fpext float %19 to double
  %cmp24 = fcmp olt double %conv23, 0.000000e+00
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  %20 = load float, ptr %a.addr, align 4
  %21 = load float, ptr %a.addr, align 4
  %22 = load float, ptr %b.addr, align 4
  %23 = load float, ptr %b.addr, align 4
  %mul27 = fmul float %22, %23
  %24 = call float @llvm.fmuladd.f32(float %20, float %21, float %mul27)
  %conv28 = fpext float %24 to double
  %call29 = call double @sqrt(double noundef %conv28) #3
  %fneg30 = fneg double %call29
  %conv31 = fptrunc double %fneg30 to float
  store float %conv31, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end22
  %25 = load float, ptr %a.addr, align 4
  %fneg33 = fneg float %25
  %26 = load float, ptr %b.addr, align 4
  %cmp34 = fcmp ogt float %fneg33, %26
  br i1 %cmp34, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end32
  %27 = load float, ptr %a.addr, align 4
  %28 = load float, ptr %a.addr, align 4
  %29 = load float, ptr %b.addr, align 4
  %30 = load float, ptr %b.addr, align 4
  %mul37 = fmul float %29, %30
  %31 = call float @llvm.fmuladd.f32(float %27, float %28, float %mul37)
  %conv38 = fpext float %31 to double
  %call39 = call double @sqrt(double noundef %conv38) #3
  %fneg40 = fneg double %call39
  %conv41 = fptrunc double %fneg40 to float
  store float %conv41, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end32
  %32 = load float, ptr %b.addr, align 4
  %33 = load float, ptr %b.addr, align 4
  %34 = load float, ptr %a.addr, align 4
  %35 = load float, ptr %a.addr, align 4
  %mul43 = fmul float %34, %35
  %36 = call float @llvm.fmuladd.f32(float %32, float %33, float %mul43)
  %conv44 = fpext float %36 to double
  %call45 = call double @sqrt(double noundef %conv44) #3
  %conv46 = fptrunc double %call45 to float
  store float %conv46, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then36, %if.then26, %if.end16, %if.then11, %if.then5
  %37 = load float, ptr %retval, align 4
  ret float %37
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

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
