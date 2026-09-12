; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_status64(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_status(i32 noundef %op, ptr noundef %pCurrent, ptr noundef %pHighwater, i32 noundef %resetFlag) #0 {
entry:
  %op.addr = alloca i32, align 4
  %pCurrent.addr = alloca ptr, align 8
  %pHighwater.addr = alloca ptr, align 8
  %resetFlag.addr = alloca i32, align 4
  %iCur = alloca i64, align 8
  %iHwtr = alloca i64, align 8
  %rc = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  store ptr %pCurrent, ptr %pCurrent.addr, align 8
  store ptr %pHighwater, ptr %pHighwater.addr, align 8
  store i32 %resetFlag, ptr %resetFlag.addr, align 4
  store i64 0, ptr %iCur, align 8
  store i64 0, ptr %iHwtr, align 8
  %0 = load i32, ptr %op.addr, align 4
  %1 = load i32, ptr %resetFlag.addr, align 4
  %call = call i32 @sqlite3_status64(i32 noundef %0, ptr noundef %iCur, ptr noundef %iHwtr, i32 noundef %1)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %iCur, align 8
  %conv = trunc i64 %3 to i32
  %4 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %conv, ptr %4, align 4
  %5 = load i64, ptr %iHwtr, align 8
  %conv1 = trunc i64 %5 to i32
  %6 = load ptr, ptr %pHighwater.addr, align 8
  store i32 %conv1, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %rc, align 4
  ret i32 %7
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
