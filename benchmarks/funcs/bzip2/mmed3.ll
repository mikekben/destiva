; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @mmed3(i8 noundef zeroext %a, i8 noundef zeroext %b, i8 noundef zeroext %c) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %t = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
  store i8 %b, ptr %b.addr, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %a.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %b.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %a.addr, align 1
  store i8 %2, ptr %t, align 1
  %3 = load i8, ptr %b.addr, align 1
  store i8 %3, ptr %a.addr, align 1
  %4 = load i8, ptr %t, align 1
  store i8 %4, ptr %b.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr %b.addr, align 1
  %conv3 = zext i8 %5 to i32
  %6 = load i8, ptr %c.addr, align 1
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp sgt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %7 = load i8, ptr %c.addr, align 1
  store i8 %7, ptr %b.addr, align 1
  %8 = load i8, ptr %a.addr, align 1
  %conv8 = zext i8 %8 to i32
  %9 = load i8, ptr %b.addr, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  %10 = load i8, ptr %a.addr, align 1
  store i8 %10, ptr %b.addr, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %11 = load i8, ptr %b.addr, align 1
  ret i8 %11
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
