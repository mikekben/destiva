; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3TriggerSelectStep(ptr noundef %db, ptr noundef %pSelect, ptr noundef %zStart, ptr noundef %zEnd) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %zStart.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %pTriggerStep = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %zStart, ptr %zStart.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %0, i64 noundef 88)
  store ptr %call, ptr %pTriggerStep, align 8
  %1 = load ptr, ptr %pTriggerStep, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %pSelect.addr, align 8
  call void @sqlite3SelectDelete(ptr noundef %2, ptr noundef %3)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pTriggerStep, align 8
  %op = getelementptr inbounds nuw %struct.TriggerStep, ptr %4, i32 0, i32 0
  store i8 -122, ptr %op, align 8
  %5 = load ptr, ptr %pSelect.addr, align 8
  %6 = load ptr, ptr %pTriggerStep, align 8
  %pSelect1 = getelementptr inbounds nuw %struct.TriggerStep, ptr %6, i32 0, i32 3
  store ptr %5, ptr %pSelect1, align 8
  %7 = load ptr, ptr %pTriggerStep, align 8
  %orconf = getelementptr inbounds nuw %struct.TriggerStep, ptr %7, i32 0, i32 1
  store i8 11, ptr %orconf, align 1
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %zStart.addr, align 8
  %10 = load ptr, ptr %zEnd.addr, align 8
  %call2 = call ptr @triggerSpanDup(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %pTriggerStep, align 8
  %zSpan = getelementptr inbounds nuw %struct.TriggerStep, ptr %11, i32 0, i32 9
  store ptr %call2, ptr %zSpan, align 8
  %12 = load ptr, ptr %pTriggerStep, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
declare hidden ptr @triggerSpanDup(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
