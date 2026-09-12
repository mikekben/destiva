; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.94 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.95 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.96 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.97 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.98 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.99 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local void @final_statistics(ptr noundef %fn, double noundef %time, i32 noundef %rate, i64 noundef %samples, i64 noundef %bytes) #1 {
entry:
  %fn.addr = alloca ptr, align 8
  %time.addr = alloca double, align 8
  %rate.addr = alloca i32, align 4
  %samples.addr = alloca i64, align 8
  %bytes.addr = alloca i64, align 8
  %speed_ratio = alloca double, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store double %time, ptr %time.addr, align 8
  store i32 %rate, ptr %rate.addr, align 4
  store i64 %samples, ptr %samples.addr, align 8
  store i64 %bytes, ptr %bytes.addr, align 8
  %0 = load ptr, ptr %fn.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %2 = load ptr, ptr %fn.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.94, ptr noundef %2) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.95) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, ptr %samples.addr, align 8
  %conv = sitofp i64 %4 to double
  %5 = load i32, ptr %rate.addr, align 4
  %conv2 = sitofp i32 %5 to double
  %div = fdiv double %conv, %conv2
  %6 = load double, ptr %time.addr, align 8
  %div3 = fdiv double %div, %6
  store double %div3, ptr %speed_ratio, align 8
  %7 = load ptr, ptr @stderr, align 8
  %8 = load i64, ptr %samples.addr, align 8
  %9 = load i32, ptr %rate.addr, align 4
  %conv4 = sext i32 %9 to i64
  %div5 = sdiv i64 %8, %conv4
  %div6 = sdiv i64 %div5, 60
  %conv7 = trunc i64 %div6 to i32
  %10 = load i64, ptr %samples.addr, align 8
  %11 = load i32, ptr %rate.addr, align 4
  %conv8 = sext i32 %11 to i64
  %div9 = sdiv i64 %10, %conv8
  %conv10 = sitofp i64 %div9 to double
  %12 = load i64, ptr %samples.addr, align 8
  %13 = load i32, ptr %rate.addr, align 4
  %conv11 = sext i32 %13 to i64
  %div12 = sdiv i64 %12, %conv11
  %div13 = sdiv i64 %div12, 60
  %conv14 = sitofp i64 %div13 to double
  %14 = call double @llvm.floor.f64(double %conv14)
  %neg = fneg double %14
  %15 = call double @llvm.fmuladd.f64(double %neg, double 6.000000e+01, double %conv10)
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.96, i32 noundef %conv7, double noundef %15) #3
  %16 = load ptr, ptr @stderr, align 8
  %17 = load double, ptr %time.addr, align 8
  %div16 = fdiv double %17, 6.000000e+01
  %conv17 = fptosi double %div16 to i32
  %18 = load double, ptr %time.addr, align 8
  %19 = load double, ptr %time.addr, align 8
  %div18 = fdiv double %19, 6.000000e+01
  %20 = call double @llvm.floor.f64(double %div18)
  %neg19 = fneg double %20
  %21 = call double @llvm.fmuladd.f64(double %neg19, double 6.000000e+01, double %18)
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.97, i32 noundef %conv17, double noundef %21) #3
  %22 = load ptr, ptr @stderr, align 8
  %23 = load double, ptr %speed_ratio, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.98, double noundef %23) #3
  %24 = load ptr, ptr @stderr, align 8
  %25 = load i64, ptr %bytes.addr, align 8
  %conv22 = sitofp i64 %25 to double
  %26 = load i64, ptr %samples.addr, align 8
  %conv23 = sitofp i64 %26 to double
  %27 = load i32, ptr %rate.addr, align 4
  %conv24 = sitofp i32 %27 to double
  %div25 = fdiv double %conv23, %conv24
  %div26 = fdiv double %conv22, %div25
  %mul = fmul double 8.000000e-03, %div26
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.99, double noundef %mul) #3
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
