; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @Glob(ptr noundef %zPattern, ptr noundef %zString, i32 noundef %iEsc, i32 noundef %CaseCompare) #0 {
entry:
  %zPattern.addr = alloca ptr, align 8
  %zString.addr = alloca ptr, align 8
  %iEsc.addr = alloca i32, align 4
  %CaseCompare.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zPattern, ptr %zPattern.addr, align 8
  store ptr %zString, ptr %zString.addr, align 8
  store i32 %iEsc, ptr %iEsc.addr, align 4
  store i32 %CaseCompare, ptr %CaseCompare.addr, align 4
  %0 = load i32, ptr %iEsc.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 92, ptr %iEsc.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %zPattern.addr, align 8
  %2 = load ptr, ptr %zString.addr, align 8
  %3 = load i32, ptr %iEsc.addr, align 4
  %4 = load i32, ptr %CaseCompare.addr, align 4
  %call = call i32 @patternCompare(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
declare hidden i32 @patternCompare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
