; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind
declare double @ldexp(double noundef, i32 noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @_float32_pack(float noundef %val) #2 {
entry:
  %val.addr = alloca float, align 4
  %sign = alloca i32, align 4
  %exp = alloca i64, align 8
  %mant = alloca i64, align 8
  store float %val, ptr %val.addr, align 4
  store i32 0, ptr %sign, align 4
  %0 = load float, ptr %val.addr, align 4
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2147483648, ptr %sign, align 4
  %1 = load float, ptr %val.addr, align 4
  %fneg = fneg float %1
  store float %fneg, ptr %val.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load float, ptr %val.addr, align 4
  %conv = fpext float %2 to double
  %call = call double @log(double noundef %conv) #3
  %call1 = call double @log(double noundef 2.000000e+00) #3
  %div = fdiv double %call, %call1
  %3 = call double @llvm.floor.f64(double %div)
  %conv2 = fptosi double %3 to i64
  store i64 %conv2, ptr %exp, align 8
  %4 = load float, ptr %val.addr, align 4
  %conv3 = fpext float %4 to double
  %5 = load i64, ptr %exp, align 8
  %sub = sub nsw i64 20, %5
  %conv4 = trunc i64 %sub to i32
  %call5 = call double @ldexp(double noundef %conv3, i32 noundef %conv4) #3
  %6 = call double @llvm.rint.f64(double %call5)
  %conv6 = fptosi double %6 to i64
  store i64 %conv6, ptr %mant, align 8
  %7 = load i64, ptr %exp, align 8
  %add = add nsw i64 %7, 768
  %shl = shl i64 %add, 21
  store i64 %shl, ptr %exp, align 8
  %8 = load i32, ptr %sign, align 4
  %conv7 = sext i32 %8 to i64
  %9 = load i64, ptr %exp, align 8
  %or = or i64 %conv7, %9
  %10 = load i64, ptr %mant, align 8
  %or8 = or i64 %or, %10
  ret i64 %or8
}

; Function Attrs: nounwind
declare double @log(double noundef) #0

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
