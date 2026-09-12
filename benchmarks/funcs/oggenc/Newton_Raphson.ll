; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden i32 @Newton_Raphson(ptr noundef %a, i32 noundef %ord, ptr noundef %r) #1 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %ord.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  %error = alloca double, align 8
  %root = alloca ptr, align 8
  %pp = alloca double, align 8
  %delta = alloca double, align 8
  %rooti = alloca double, align 8
  %p = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %ord, ptr %ord.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store i32 0, ptr %count, align 4
  store double 1.000000e+00, ptr %error, align 8
  %0 = load i32, ptr %ord.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %root, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %ord.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %r.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %idxprom
  %6 = load float, ptr %arrayidx, align 4
  %conv2 = fpext float %6 to double
  %7 = load ptr, ptr %root, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %7, i64 %idxprom3
  store double %conv2, ptr %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %10 = load double, ptr %error, align 8
  %cmp5 = fcmp ogt double %10, 0x3BC79CA10C924223
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store double 0.000000e+00, ptr %error, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc31, %while.body
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %ord.addr, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body10, label %for.end33

for.body10:                                       ; preds = %for.cond7
  store double 0.000000e+00, ptr %pp, align 8
  %13 = load ptr, ptr %root, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %13, i64 %idxprom11
  %15 = load double, ptr %arrayidx12, align 8
  store double %15, ptr %rooti, align 8
  %16 = load ptr, ptr %a.addr, align 8
  %17 = load i32, ptr %ord.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds float, ptr %16, i64 %idxprom13
  %18 = load float, ptr %arrayidx14, align 4
  %conv15 = fpext float %18 to double
  store double %conv15, ptr %p, align 8
  %19 = load i32, ptr %ord.addr, align 4
  %sub = sub nsw i32 %19, 1
  store i32 %sub, ptr %k, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body10
  %20 = load i32, ptr %k, align 4
  %cmp17 = icmp sge i32 %20, 0
  br i1 %cmp17, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond16
  %21 = load double, ptr %pp, align 8
  %22 = load double, ptr %rooti, align 8
  %23 = load double, ptr %p, align 8
  %24 = call double @llvm.fmuladd.f64(double %21, double %22, double %23)
  store double %24, ptr %pp, align 8
  %25 = load double, ptr %p, align 8
  %26 = load double, ptr %rooti, align 8
  %27 = load ptr, ptr %a.addr, align 8
  %28 = load i32, ptr %k, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %27, i64 %idxprom22
  %29 = load float, ptr %arrayidx23, align 4
  %conv24 = fpext float %29 to double
  %30 = call double @llvm.fmuladd.f64(double %25, double %26, double %conv24)
  store double %30, ptr %p, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %31 = load i32, ptr %k, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, ptr %k, align 4
  br label %for.cond16, !llvm.loop !8

for.end26:                                        ; preds = %for.cond16
  %32 = load double, ptr %p, align 8
  %33 = load double, ptr %pp, align 8
  %div = fdiv double %32, %33
  store double %div, ptr %delta, align 8
  %34 = load double, ptr %delta, align 8
  %35 = load ptr, ptr %root, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %35, i64 %idxprom27
  %37 = load double, ptr %arrayidx28, align 8
  %sub29 = fsub double %37, %34
  store double %sub29, ptr %arrayidx28, align 8
  %38 = load double, ptr %delta, align 8
  %39 = load double, ptr %delta, align 8
  %40 = load double, ptr %error, align 8
  %41 = call double @llvm.fmuladd.f64(double %38, double %39, double %40)
  store double %41, ptr %error, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.end26
  %42 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %42, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond7, !llvm.loop !9

for.end33:                                        ; preds = %for.cond7
  %43 = load i32, ptr %count, align 4
  %cmp34 = icmp sgt i32 %43, 40
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.end33
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end33
  %44 = load i32, ptr %count, align 4
  %inc36 = add nsw i32 %44, 1
  store i32 %inc36, ptr %count, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc46, %while.end
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %ord.addr, align 4
  %cmp38 = icmp slt i32 %45, %46
  br i1 %cmp38, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond37
  %47 = load ptr, ptr %root, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %48 to i64
  %arrayidx42 = getelementptr inbounds double, ptr %47, i64 %idxprom41
  %49 = load double, ptr %arrayidx42, align 8
  %conv43 = fptrunc double %49 to float
  %50 = load ptr, ptr %r.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %51 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %50, i64 %idxprom44
  store float %conv43, ptr %arrayidx45, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %for.body40
  %52 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %52, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond37, !llvm.loop !11

for.end48:                                        ; preds = %for.cond37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end48, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
