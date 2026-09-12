; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @hcf(i32 noundef %arg1, i32 noundef %arg2) #0 {
entry:
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %mult = alloca i32, align 4
  store i32 %arg1, ptr %arg1.addr, align 4
  store i32 %arg2, ptr %arg2.addr, align 4
  store i32 1, ptr %mult, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %arg1.addr, align 4
  %1 = load i32, ptr %arg2.addr, align 4
  %or = or i32 %0, %1
  %not = xor i32 %or, -1
  %and = and i32 %not, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %arg1.addr, align 4
  %shr = ashr i32 %2, 1
  store i32 %shr, ptr %arg1.addr, align 4
  %3 = load i32, ptr %arg2.addr, align 4
  %shr1 = ashr i32 %3, 1
  store i32 %shr1, ptr %arg2.addr, align 4
  %4 = load i32, ptr %mult, align 4
  %shl = shl i32 %4, 1
  store i32 %shl, ptr %mult, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %if.end20, %while.end
  %5 = load i32, ptr %arg1.addr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body3, label %while.end21

while.body3:                                      ; preds = %while.cond2
  %6 = load i32, ptr %arg1.addr, align 4
  %7 = load i32, ptr %arg2.addr, align 4
  %and4 = and i32 %6, %7
  %not5 = xor i32 %and4, -1
  %and6 = and i32 %not5, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body3
  %8 = load i32, ptr %arg1.addr, align 4
  %not8 = xor i32 %8, -1
  %and9 = and i32 %not8, 1
  %9 = load i32, ptr %arg1.addr, align 4
  %shr10 = ashr i32 %9, %and9
  store i32 %shr10, ptr %arg1.addr, align 4
  %10 = load i32, ptr %arg2.addr, align 4
  %not11 = xor i32 %10, -1
  %and12 = and i32 %not11, 1
  %11 = load i32, ptr %arg2.addr, align 4
  %shr13 = ashr i32 %11, %and12
  store i32 %shr13, ptr %arg2.addr, align 4
  br label %if.end20

if.else:                                          ; preds = %while.body3
  %12 = load i32, ptr %arg1.addr, align 4
  %13 = load i32, ptr %arg2.addr, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %14 = load i32, ptr %arg2.addr, align 4
  %15 = load i32, ptr %arg1.addr, align 4
  %sub = sub nsw i32 %14, %15
  %shr16 = ashr i32 %sub, 1
  store i32 %shr16, ptr %arg2.addr, align 4
  br label %if.end

if.else17:                                        ; preds = %if.else
  %16 = load i32, ptr %arg1.addr, align 4
  %17 = load i32, ptr %arg2.addr, align 4
  %sub18 = sub nsw i32 %16, %17
  %shr19 = ashr i32 %sub18, 1
  store i32 %shr19, ptr %arg1.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  br label %while.cond2, !llvm.loop !8

while.end21:                                      ; preds = %while.cond2
  %18 = load i32, ptr %arg2.addr, align 4
  %19 = load i32, ptr %mult, align 4
  %mul = mul nsw i32 %18, %19
  ret i32 %mul
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
