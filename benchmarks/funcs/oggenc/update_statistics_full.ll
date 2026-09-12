; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@update_statistics_full.spinner = external hidden global ptr, align 8
@update_statistics_full.spinpoint = external hidden global i32, align 4
@.str.91 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.92 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local void @update_statistics_full(ptr noundef %fn, i64 noundef %total, i64 noundef %done, double noundef %time) #1 {
entry:
  %fn.addr = alloca ptr, align 8
  %total.addr = alloca i64, align 8
  %done.addr = alloca i64, align 8
  %time.addr = alloca double, align 8
  %remain_time = alloca double, align 8
  %minutes = alloca i32, align 4
  %seconds = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8
  store i64 %total, ptr %total.addr, align 8
  store i64 %done, ptr %done.addr, align 8
  store double %time, ptr %time.addr, align 8
  store i32 0, ptr %minutes, align 4
  store i32 0, ptr %seconds, align 4
  %0 = load double, ptr %time.addr, align 8
  %1 = load i64, ptr %done.addr, align 8
  %conv = sitofp i64 %1 to double
  %2 = load i64, ptr %total.addr, align 8
  %conv1 = sitofp i64 %2 to double
  %div = fdiv double %conv, %conv1
  %div2 = fdiv double %0, %div
  %3 = load double, ptr %time.addr, align 8
  %sub = fsub double %div2, %3
  store double %sub, ptr %remain_time, align 8
  %4 = load double, ptr %remain_time, align 8
  %conv3 = fptosi double %4 to i32
  %div4 = sdiv i32 %conv3, 60
  store i32 %div4, ptr %minutes, align 4
  %5 = load double, ptr %remain_time, align 8
  %6 = load double, ptr %remain_time, align 8
  %conv5 = fptosi double %6 to i32
  %div6 = sdiv i32 %conv5, 60
  %conv7 = sitofp i32 %div6 to double
  %neg = fneg double %conv7
  %7 = call double @llvm.fmuladd.f64(double %neg, double 6.000000e+01, double %5)
  %conv8 = fptosi double %7 to i32
  store i32 %conv8, ptr %seconds, align 4
  %8 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.91) #3
  %9 = load ptr, ptr @stderr, align 8
  %10 = load i64, ptr %done.addr, align 8
  %conv9 = sitofp i64 %10 to double
  %mul = fmul double %conv9, 1.000000e+02
  %11 = load i64, ptr %total.addr, align 8
  %conv10 = sitofp i64 %11 to double
  %div11 = fdiv double %mul, %conv10
  %12 = load i32, ptr %minutes, align 4
  %13 = load i32, ptr %seconds, align 4
  %14 = load ptr, ptr @update_statistics_full.spinner, align 8
  %15 = load i32, ptr @update_statistics_full.spinpoint, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr @update_statistics_full.spinpoint, align 4
  %rem = srem i32 %15, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1
  %conv12 = sext i8 %16 to i32
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.92, double noundef %div11, i32 noundef %12, i32 noundef %13, i32 noundef %conv12) #3
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

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
