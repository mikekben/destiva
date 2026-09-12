; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AddInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3SubInt64(ptr noundef %pA, i64 noundef %iB) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %iB.addr = alloca i64, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store i64 %iB, ptr %iB.addr, align 8
  %0 = load i64, ptr %iB.addr, align 8
  %cmp = icmp eq i64 %0, -9223372036854775808
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pA.addr, align 8
  %2 = load i64, ptr %1, align 8
  %cmp1 = icmp sge i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %iB.addr, align 8
  %4 = load ptr, ptr %pA.addr, align 8
  %5 = load i64, ptr %4, align 8
  %sub = sub nsw i64 %5, %3
  store i64 %sub, ptr %4, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pA.addr, align 8
  %7 = load i64, ptr %iB.addr, align 8
  %sub3 = sub nsw i64 0, %7
  %call = call i32 @sqlite3AddInt64(ptr noundef %6, i64 noundef %sub3)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then2
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
