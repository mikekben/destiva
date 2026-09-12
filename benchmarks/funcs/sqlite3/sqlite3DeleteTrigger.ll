; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DeleteTrigger(ptr noundef %db, ptr noundef %pTrigger) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  %0 = load ptr, ptr %pTrigger.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %pTrigger.addr, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %step_list, align 8
  call void @sqlite3DeleteTriggerStep(ptr noundef %1, ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %pTrigger.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Trigger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pTrigger.addr, align 8
  %table = getelementptr inbounds nuw %struct.Trigger, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %table, align 8
  call void @sqlite3DbFree(ptr noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %db.addr, align 8
  %11 = load ptr, ptr %pTrigger.addr, align 8
  %pWhen = getelementptr inbounds nuw %struct.Trigger, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pWhen, align 8
  call void @sqlite3ExprDelete(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %pTrigger.addr, align 8
  %pColumns = getelementptr inbounds nuw %struct.Trigger, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pColumns, align 8
  call void @sqlite3IdListDelete(ptr noundef %13, ptr noundef %15)
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %pTrigger.addr, align 8
  call void @sqlite3DbFree(ptr noundef %16, ptr noundef %17)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTriggerStep(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
