; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind uwtable
define hidden i32 @Laguerre_With_Deflation(ptr noundef %a, i32 noundef %ord, ptr noundef %r) #1 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %ord.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %lastdelta = alloca double, align 8
  %defl = alloca ptr, align 8
  %new = alloca double, align 8
  %delta = alloca double, align 8
  %p = alloca double, align 8
  %pp = alloca double, align 8
  %ppp = alloca double, align 8
  %denom = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %ord, ptr %ord.addr, align 4
  store ptr %r, ptr %r.addr, align 8
  store double 0.000000e+00, ptr %lastdelta, align 8
  %0 = load i32, ptr %ord.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %defl, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %ord.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %idxprom
  %6 = load float, ptr %arrayidx, align 4
  %conv2 = fpext float %6 to double
  %7 = load ptr, ptr %defl, align 8
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
  %10 = load i32, ptr %ord.addr, align 4
  store i32 %10, ptr %m, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc79, %for.end
  %11 = load i32, ptr %m, align 4
  %cmp6 = icmp sgt i32 %11, 0
  br i1 %cmp6, label %for.body8, label %for.end81

for.body8:                                        ; preds = %for.cond5
  store double 0.000000e+00, ptr %new, align 8
  br label %while.body

while.body:                                       ; preds = %if.end61, %for.body8
  %12 = load ptr, ptr %defl, align 8
  %13 = load i32, ptr %m, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %12, i64 %idxprom9
  %14 = load double, ptr %arrayidx10, align 8
  store double %14, ptr %p, align 8
  store double 0.000000e+00, ptr %pp, align 8
  store double 0.000000e+00, ptr %ppp, align 8
  %15 = load i32, ptr %m, align 4
  store i32 %15, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %while.body
  %16 = load i32, ptr %i, align 4
  %cmp12 = icmp sgt i32 %16, 0
  br i1 %cmp12, label %for.body14, label %for.end21

for.body14:                                       ; preds = %for.cond11
  %17 = load double, ptr %new, align 8
  %18 = load double, ptr %ppp, align 8
  %19 = load double, ptr %pp, align 8
  %20 = call double @llvm.fmuladd.f64(double %17, double %18, double %19)
  store double %20, ptr %ppp, align 8
  %21 = load double, ptr %new, align 8
  %22 = load double, ptr %pp, align 8
  %23 = load double, ptr %p, align 8
  %24 = call double @llvm.fmuladd.f64(double %21, double %22, double %23)
  store double %24, ptr %pp, align 8
  %25 = load double, ptr %new, align 8
  %26 = load double, ptr %p, align 8
  %27 = load ptr, ptr %defl, align 8
  %28 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds double, ptr %27, i64 %idxprom18
  %29 = load double, ptr %arrayidx19, align 8
  %30 = call double @llvm.fmuladd.f64(double %25, double %26, double %29)
  store double %30, ptr %p, align 8
  br label %for.inc20

for.inc20:                                        ; preds = %for.body14
  %31 = load i32, ptr %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond11, !llvm.loop !8

for.end21:                                        ; preds = %for.cond11
  %32 = load i32, ptr %m, align 4
  %sub22 = sub nsw i32 %32, 1
  %conv23 = sitofp i32 %sub22 to double
  %33 = load i32, ptr %m, align 4
  %sub24 = sub nsw i32 %33, 1
  %conv25 = sitofp i32 %sub24 to double
  %34 = load double, ptr %pp, align 8
  %mul26 = fmul double %conv25, %34
  %35 = load double, ptr %pp, align 8
  %36 = load i32, ptr %m, align 4
  %conv28 = sitofp i32 %36 to double
  %37 = load double, ptr %p, align 8
  %mul29 = fmul double %conv28, %37
  %38 = load double, ptr %ppp, align 8
  %mul30 = fmul double %mul29, %38
  %neg = fneg double %mul30
  %39 = call double @llvm.fmuladd.f64(double %mul26, double %35, double %neg)
  %mul31 = fmul double %conv23, %39
  store double %mul31, ptr %denom, align 8
  %40 = load double, ptr %denom, align 8
  %cmp32 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.end21
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end21
  %41 = load double, ptr %pp, align 8
  %cmp34 = fcmp ogt double %41, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end
  %42 = load double, ptr %pp, align 8
  %43 = load double, ptr %denom, align 8
  %call = call double @sqrt(double noundef %43) #3
  %add37 = fadd double %42, %call
  store double %add37, ptr %denom, align 8
  %44 = load double, ptr %denom, align 8
  %cmp38 = fcmp olt double %44, 0x3EB0C6F7A0B5ED8D
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then36
  store double 0x3EB0C6F7A0B5ED8D, ptr %denom, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then36
  br label %if.end48

if.else:                                          ; preds = %if.end
  %45 = load double, ptr %pp, align 8
  %46 = load double, ptr %denom, align 8
  %call42 = call double @sqrt(double noundef %46) #3
  %sub43 = fsub double %45, %call42
  store double %sub43, ptr %denom, align 8
  %47 = load double, ptr %denom, align 8
  %cmp44 = fcmp ogt double %47, 0xBEB0C6F7A0B5ED8D
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.else
  store double 0xBEB0C6F7A0B5ED8D, ptr %denom, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end41
  %48 = load i32, ptr %m, align 4
  %conv49 = sitofp i32 %48 to double
  %49 = load double, ptr %p, align 8
  %mul50 = fmul double %conv49, %49
  %50 = load double, ptr %denom, align 8
  %div = fdiv double %mul50, %50
  store double %div, ptr %delta, align 8
  %51 = load double, ptr %delta, align 8
  %52 = load double, ptr %new, align 8
  %sub51 = fsub double %52, %51
  store double %sub51, ptr %new, align 8
  %53 = load double, ptr %delta, align 8
  %cmp52 = fcmp olt double %53, 0.000000e+00
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end48
  %54 = load double, ptr %delta, align 8
  %mul55 = fmul double %54, -1.000000e+00
  store double %mul55, ptr %delta, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end48
  %55 = load double, ptr %delta, align 8
  %56 = load double, ptr %new, align 8
  %div57 = fdiv double %55, %56
  %57 = call double @llvm.fabs.f64(double %div57)
  %cmp58 = fcmp olt double %57, 0x3DA5FD7FE1796495
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  br label %while.end

if.end61:                                         ; preds = %if.end56
  %58 = load double, ptr %delta, align 8
  store double %58, ptr %lastdelta, align 8
  br label %while.body

while.end:                                        ; preds = %if.then60
  %59 = load double, ptr %new, align 8
  %conv62 = fptrunc double %59 to float
  %60 = load ptr, ptr %r.addr, align 8
  %61 = load i32, ptr %m, align 4
  %sub63 = sub nsw i32 %61, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %60, i64 %idxprom64
  store float %conv62, ptr %arrayidx65, align 4
  %62 = load i32, ptr %m, align 4
  store i32 %62, ptr %i, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc76, %while.end
  %63 = load i32, ptr %i, align 4
  %cmp67 = icmp sgt i32 %63, 0
  br i1 %cmp67, label %for.body69, label %for.end78

for.body69:                                       ; preds = %for.cond66
  %64 = load double, ptr %new, align 8
  %65 = load ptr, ptr %defl, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %66 to i64
  %arrayidx71 = getelementptr inbounds double, ptr %65, i64 %idxprom70
  %67 = load double, ptr %arrayidx71, align 8
  %68 = load ptr, ptr %defl, align 8
  %69 = load i32, ptr %i, align 4
  %sub73 = sub nsw i32 %69, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds double, ptr %68, i64 %idxprom74
  %70 = load double, ptr %arrayidx75, align 8
  %71 = call double @llvm.fmuladd.f64(double %64, double %67, double %70)
  store double %71, ptr %arrayidx75, align 8
  br label %for.inc76

for.inc76:                                        ; preds = %for.body69
  %72 = load i32, ptr %i, align 4
  %dec77 = add nsw i32 %72, -1
  store i32 %dec77, ptr %i, align 4
  br label %for.cond66, !llvm.loop !9

for.end78:                                        ; preds = %for.cond66
  %73 = load ptr, ptr %defl, align 8
  %incdec.ptr = getelementptr inbounds nuw double, ptr %73, i32 1
  store ptr %incdec.ptr, ptr %defl, align 8
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  %74 = load i32, ptr %m, align 4
  %dec80 = add nsw i32 %74, -1
  store i32 %dec80, ptr %m, align 4
  br label %for.cond5, !llvm.loop !10

for.end81:                                        ; preds = %for.cond5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end81, %if.then
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
