; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @operatorMask(i32 noundef %op) #0 {
entry:
  %op.addr = alloca i32, align 4
  %c = alloca i16, align 2
  store i32 %op, ptr %op.addr, align 4
  %0 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %0, 49
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 1, ptr %c, align 2
  br label %if.end8

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %op.addr, align 4
  %cmp1 = icmp eq i32 %1, 50
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i16 256, ptr %c, align 2
  br label %if.end7

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr %op.addr, align 4
  %cmp4 = icmp eq i32 %2, 45
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i16 128, ptr %c, align 2
  br label %if.end

if.else6:                                         ; preds = %if.else3
  %3 = load i32, ptr %op.addr, align 4
  %sub = sub nsw i32 %3, 53
  %shl = shl i32 2, %sub
  %conv = trunc i32 %shl to i16
  store i16 %conv, ptr %c, align 2
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  %4 = load i16, ptr %c, align 2
  ret i16 %4
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
