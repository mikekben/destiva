; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.91 = external hidden unnamed_addr constant [2 x i8], align 1
@update_statistics_notime.spinner = external hidden global ptr, align 8
@update_statistics_notime.spinpoint = external hidden global i32, align 4
@.str.93 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local void @update_statistics_notime(ptr noundef %fn, i64 noundef %total, i64 noundef %done, double noundef %time) #1 {
entry:
  %fn.addr = alloca ptr, align 8
  %total.addr = alloca i64, align 8
  %done.addr = alloca i64, align 8
  %time.addr = alloca double, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store i64 %total, ptr %total.addr, align 8
  store i64 %done, ptr %done.addr, align 8
  store double %time, ptr %time.addr, align 8
  %0 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.91) #3
  %1 = load ptr, ptr @stderr, align 8
  %2 = load double, ptr %time.addr, align 8
  %conv = fptosi double %2 to i32
  %div = sdiv i32 %conv, 60
  %3 = load double, ptr %time.addr, align 8
  %4 = load double, ptr %time.addr, align 8
  %conv1 = fptosi double %4 to i32
  %div2 = sdiv i32 %conv1, 60
  %conv3 = sitofp i32 %div2 to double
  %neg = fneg double %conv3
  %5 = call double @llvm.fmuladd.f64(double %neg, double 6.000000e+01, double %3)
  %conv4 = fptosi double %5 to i32
  %6 = load ptr, ptr @update_statistics_notime.spinner, align 8
  %7 = load i32, ptr @update_statistics_notime.spinpoint, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @update_statistics_notime.spinpoint, align 4
  %rem = srem i32 %7, 4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.93, i32 noundef %div, i32 noundef %conv4, i32 noundef %conv5) #3
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
