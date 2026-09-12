; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind uwtable
define hidden void @couple_lossless(float noundef %A, float noundef %B, ptr noundef %qA, ptr noundef %qB) #1 {
entry:
  %A.addr = alloca float, align 4
  %B.addr = alloca float, align 4
  %qA.addr = alloca ptr, align 8
  %qB.addr = alloca ptr, align 8
  %test1 = alloca i32, align 4
  %temp = alloca float, align 4
  store float %A, ptr %A.addr, align 4
  store float %B, ptr %B.addr, align 4
  store ptr %qA, ptr %qA.addr, align 8
  store ptr %qB, ptr %qB.addr, align 8
  %0 = load ptr, ptr %qA.addr, align 8
  %1 = load float, ptr %0, align 4
  %conv = fpext float %1 to double
  %2 = call double @llvm.fabs.f64(double %conv)
  %3 = load ptr, ptr %qB.addr, align 8
  %4 = load float, ptr %3, align 4
  %conv1 = fpext float %4 to double
  %5 = call double @llvm.fabs.f64(double %conv1)
  %cmp = fcmp ogt double %2, %5
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, ptr %test1, align 4
  %6 = load ptr, ptr %qA.addr, align 8
  %7 = load float, ptr %6, align 4
  %conv3 = fpext float %7 to double
  %8 = call double @llvm.fabs.f64(double %conv3)
  %9 = load ptr, ptr %qB.addr, align 8
  %10 = load float, ptr %9, align 4
  %conv4 = fpext float %10 to double
  %11 = call double @llvm.fabs.f64(double %conv4)
  %cmp5 = fcmp olt double %8, %11
  %conv6 = zext i1 %cmp5 to i32
  %12 = load i32, ptr %test1, align 4
  %sub = sub nsw i32 %12, %conv6
  store i32 %sub, ptr %test1, align 4
  %13 = load i32, ptr %test1, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load float, ptr %A.addr, align 4
  %conv7 = fpext float %14 to double
  %15 = call double @llvm.fabs.f64(double %conv7)
  %16 = load float, ptr %B.addr, align 4
  %conv8 = fpext float %16 to double
  %17 = call double @llvm.fabs.f64(double %conv8)
  %cmp9 = fcmp ogt double %15, %17
  %conv10 = zext i1 %cmp9 to i32
  %shl = shl i32 %conv10, 1
  %sub11 = sub nsw i32 %shl, 1
  store i32 %sub11, ptr %test1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, ptr %test1, align 4
  %cmp12 = icmp eq i32 %18, 1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %19 = load ptr, ptr %qA.addr, align 8
  %20 = load float, ptr %19, align 4
  %cmp15 = fcmp ogt float %20, 0.000000e+00
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %21 = load ptr, ptr %qA.addr, align 8
  %22 = load float, ptr %21, align 4
  %23 = load ptr, ptr %qB.addr, align 8
  %24 = load float, ptr %23, align 4
  %sub17 = fsub float %22, %24
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  %25 = load ptr, ptr %qB.addr, align 8
  %26 = load float, ptr %25, align 4
  %27 = load ptr, ptr %qA.addr, align 8
  %28 = load float, ptr %27, align 4
  %sub18 = fsub float %26, %28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub17, %cond.true ], [ %sub18, %cond.false ]
  %29 = load ptr, ptr %qB.addr, align 8
  store float %cond, ptr %29, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  %30 = load ptr, ptr %qB.addr, align 8
  %31 = load float, ptr %30, align 4
  store float %31, ptr %temp, align 4
  %32 = load ptr, ptr %qB.addr, align 8
  %33 = load float, ptr %32, align 4
  %cmp19 = fcmp ogt float %33, 0.000000e+00
  br i1 %cmp19, label %cond.true21, label %cond.false23

cond.true21:                                      ; preds = %if.else
  %34 = load ptr, ptr %qA.addr, align 8
  %35 = load float, ptr %34, align 4
  %36 = load ptr, ptr %qB.addr, align 8
  %37 = load float, ptr %36, align 4
  %sub22 = fsub float %35, %37
  br label %cond.end25

cond.false23:                                     ; preds = %if.else
  %38 = load ptr, ptr %qB.addr, align 8
  %39 = load float, ptr %38, align 4
  %40 = load ptr, ptr %qA.addr, align 8
  %41 = load float, ptr %40, align 4
  %sub24 = fsub float %39, %41
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.true21
  %cond26 = phi float [ %sub22, %cond.true21 ], [ %sub24, %cond.false23 ]
  %42 = load ptr, ptr %qB.addr, align 8
  store float %cond26, ptr %42, align 4
  %43 = load float, ptr %temp, align 4
  %44 = load ptr, ptr %qA.addr, align 8
  store float %43, ptr %44, align 4
  br label %if.end27

if.end27:                                         ; preds = %cond.end25, %cond.end
  %45 = load ptr, ptr %qB.addr, align 8
  %46 = load float, ptr %45, align 4
  %conv28 = fpext float %46 to double
  %47 = load ptr, ptr %qA.addr, align 8
  %48 = load float, ptr %47, align 4
  %conv29 = fpext float %48 to double
  %49 = call double @llvm.fabs.f64(double %conv29)
  %mul = fmul double %49, 0x3FFFFF9720000000
  %cmp30 = fcmp ogt double %conv28, %mul
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end27
  %50 = load ptr, ptr %qA.addr, align 8
  %51 = load float, ptr %50, align 4
  %conv33 = fpext float %51 to double
  %52 = call double @llvm.fabs.f64(double %conv33)
  %fneg = fneg double %52
  %mul34 = fmul double %fneg, 2.000000e+00
  %conv35 = fptrunc double %mul34 to float
  %53 = load ptr, ptr %qB.addr, align 8
  store float %conv35, ptr %53, align 4
  %54 = load ptr, ptr %qA.addr, align 8
  %55 = load float, ptr %54, align 4
  %fneg36 = fneg float %55
  %56 = load ptr, ptr %qA.addr, align 8
  store float %fneg36, ptr %56, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end27
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
