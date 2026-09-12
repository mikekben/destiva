; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3IntFloatCompare(i64 noundef %i, double noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %r.addr = alloca double, align 8
  %x = alloca x86_fp80, align 16
  store i64 %i, ptr %i.addr, align 8
  store double %r, ptr %r.addr, align 8
  %0 = load i64, ptr %i.addr, align 8
  %conv = sitofp i64 %0 to x86_fp80
  store x86_fp80 %conv, ptr %x, align 16
  %1 = load x86_fp80, ptr %x, align 16
  %2 = load double, ptr %r.addr, align 8
  %conv1 = fpext double %2 to x86_fp80
  %cmp = fcmp olt x86_fp80 %1, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load x86_fp80, ptr %x, align 16
  %4 = load double, ptr %r.addr, align 8
  %conv3 = fpext double %4 to x86_fp80
  %cmp4 = fcmp ogt x86_fp80 %3, %conv3
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
