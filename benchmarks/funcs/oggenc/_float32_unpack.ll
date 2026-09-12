; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind
declare double @ldexp(double noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local float @_float32_unpack(i64 noundef %val) #1 {
entry:
  %val.addr = alloca i64, align 8
  %mant = alloca double, align 8
  %sign = alloca i32, align 4
  %exp = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  %0 = load i64, ptr %val.addr, align 8
  %and = and i64 %0, 2097151
  %conv = sitofp i64 %and to double
  store double %conv, ptr %mant, align 8
  %1 = load i64, ptr %val.addr, align 8
  %and1 = and i64 %1, 2147483648
  %conv2 = trunc i64 %and1 to i32
  store i32 %conv2, ptr %sign, align 4
  %2 = load i64, ptr %val.addr, align 8
  %and3 = and i64 %2, 2145386496
  %shr = ashr i64 %and3, 21
  store i64 %shr, ptr %exp, align 8
  %3 = load i32, ptr %sign, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, ptr %mant, align 8
  %fneg = fneg double %4
  store double %fneg, ptr %mant, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double, ptr %mant, align 8
  %6 = load i64, ptr %exp, align 8
  %sub = sub nsw i64 %6, 20
  %sub4 = sub nsw i64 %sub, 768
  %conv5 = trunc i64 %sub4 to i32
  %call = call double @ldexp(double noundef %5, i32 noundef %conv5) #2
  %conv6 = fptrunc double %call to float
  ret float %conv6
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
