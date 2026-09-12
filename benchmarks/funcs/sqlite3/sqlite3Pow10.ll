; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden x86_fp80 @sqlite3Pow10(i32 noundef %E) #0 {
entry:
  %E.addr = alloca i32, align 4
  %x = alloca x86_fp80, align 16
  %r = alloca x86_fp80, align 16
  store i32 %E, ptr %E.addr, align 4
  store x86_fp80 0xK4002A000000000000000, ptr %x, align 16
  store x86_fp80 0xK3FFF8000000000000000, ptr %r, align 16
  br label %while.body

while.body:                                       ; preds = %if.end2, %entry
  %0 = load i32, ptr %E.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = load x86_fp80, ptr %x, align 16
  %2 = load x86_fp80, ptr %r, align 16
  %mul = fmul x86_fp80 %2, %1
  store x86_fp80 %mul, ptr %r, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = load i32, ptr %E.addr, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, ptr %E.addr, align 4
  %4 = load i32, ptr %E.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %while.end

if.end2:                                          ; preds = %if.end
  %5 = load x86_fp80, ptr %x, align 16
  %6 = load x86_fp80, ptr %x, align 16
  %mul3 = fmul x86_fp80 %6, %5
  store x86_fp80 %mul3, ptr %x, align 16
  br label %while.body

while.end:                                        ; preds = %if.then1
  %7 = load x86_fp80, ptr %r, align 16
  ret x86_fp80 %7
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
