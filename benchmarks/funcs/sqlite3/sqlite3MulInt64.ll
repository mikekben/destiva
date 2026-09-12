; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3MulInt64(ptr noundef %pA, i64 noundef %iB) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %iB.addr = alloca i64, align 8
  %iA = alloca i64, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store i64 %iB, ptr %iB.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %iA, align 8
  %2 = load i64, ptr %iB.addr, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %iA, align 8
  %4 = load i64, ptr %iB.addr, align 8
  %div = sdiv i64 9223372036854775807, %4
  %cmp1 = icmp sgt i64 %3, %div
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i64, ptr %iA, align 8
  %6 = load i64, ptr %iB.addr, align 8
  %div3 = sdiv i64 -9223372036854775808, %6
  %cmp4 = icmp slt i64 %5, %div3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  br label %if.end32

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %iB.addr, align 8
  %cmp7 = icmp slt i64 %7, 0
  br i1 %cmp7, label %if.then8, label %if.end31

if.then8:                                         ; preds = %if.else
  %8 = load i64, ptr %iA, align 8
  %cmp9 = icmp sgt i64 %8, 0
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.then8
  %9 = load i64, ptr %iB.addr, align 8
  %10 = load i64, ptr %iA, align 8
  %div11 = sdiv i64 -9223372036854775808, %10
  %cmp12 = icmp slt i64 %9, %div11
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  br label %if.end30

if.else15:                                        ; preds = %if.then8
  %11 = load i64, ptr %iA, align 8
  %cmp16 = icmp slt i64 %11, 0
  br i1 %cmp16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.else15
  %12 = load i64, ptr %iB.addr, align 8
  %cmp18 = icmp eq i64 %12, -9223372036854775808
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  store i32 1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then17
  %13 = load i64, ptr %iA, align 8
  %cmp21 = icmp eq i64 %13, -9223372036854775808
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  store i32 1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end20
  %14 = load i64, ptr %iA, align 8
  %sub = sub nsw i64 0, %14
  %15 = load i64, ptr %iB.addr, align 8
  %sub24 = sub nsw i64 0, %15
  %div25 = sdiv i64 9223372036854775807, %sub24
  %cmp26 = icmp sgt i64 %sub, %div25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end14
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end6
  %16 = load i64, ptr %iA, align 8
  %17 = load i64, ptr %iB.addr, align 8
  %mul = mul nsw i64 %16, %17
  %18 = load ptr, ptr %pA.addr, align 8
  store i64 %mul, ptr %18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then27, %if.then22, %if.then19, %if.then13, %if.then5, %if.then2
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
