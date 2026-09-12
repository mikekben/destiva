; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i64 @doubleToInt64(double noundef %r) #0 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca double, align 8
  store double %r, ptr %r.addr, align 8
  %0 = load double, ptr %r.addr, align 8
  %cmp = fcmp ole double %0, 0xC3E0000000000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -9223372036854775808, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, ptr %r.addr, align 8
  %cmp1 = fcmp oge double %1, 0x43E0000000000000
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i64 9223372036854775807, ptr %retval, align 8
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load double, ptr %r.addr, align 8
  %conv = fptosi double %2 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
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
