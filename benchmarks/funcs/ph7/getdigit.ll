; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @getdigit(ptr noundef %val, ptr noundef %cnt) #0 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %cnt.addr = alloca ptr, align 8
  %d = alloca x86_fp80, align 16
  %digit = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  store ptr %cnt, ptr %cnt.addr, align 8
  %0 = load ptr, ptr %cnt.addr, align 8
  %1 = load i32, ptr %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4
  %cmp = icmp sge i32 %1, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 48, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8
  %3 = load x86_fp80, ptr %2, align 16
  %conv = fptosi x86_fp80 %3 to i32
  store i32 %conv, ptr %digit, align 4
  %4 = load i32, ptr %digit, align 4
  %conv1 = sitofp i32 %4 to x86_fp80
  store x86_fp80 %conv1, ptr %d, align 16
  %5 = load ptr, ptr %val.addr, align 8
  %6 = load x86_fp80, ptr %5, align 16
  %7 = load x86_fp80, ptr %d, align 16
  %sub = fsub x86_fp80 %6, %7
  %mul = fmul x86_fp80 %sub, 0xK4002A000000000000000
  %8 = load ptr, ptr %val.addr, align 8
  store x86_fp80 %mul, ptr %8, align 16
  %9 = load i32, ptr %digit, align 4
  %add = add nsw i32 %9, 48
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
