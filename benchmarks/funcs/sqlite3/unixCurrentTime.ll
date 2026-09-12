; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @unixCurrentTime(ptr noundef %NotUsed, ptr noundef %prNow) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %prNow.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store ptr %prNow, ptr %prNow.addr, align 8
  store i64 0, ptr %i, align 8
  %0 = load ptr, ptr %NotUsed.addr, align 8
  %call = call i32 @unixCurrentTimeInt64(ptr noundef null, ptr noundef %i)
  store i32 %call, ptr %rc, align 4
  %1 = load i64, ptr %i, align 8
  %conv = sitofp i64 %1 to double
  %div = fdiv double %conv, 8.640000e+07
  %2 = load ptr, ptr %prNow.addr, align 8
  store double %div, ptr %2, align 8
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixCurrentTimeInt64(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
