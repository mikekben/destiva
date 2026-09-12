; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DeleteTriggerStep(ptr noundef %db, ptr noundef %pTriggerStep) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTriggerStep.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTriggerStep, ptr %pTriggerStep.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pTriggerStep.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pTriggerStep.addr, align 8
  store ptr %1, ptr %pTmp, align 8
  %2 = load ptr, ptr %pTriggerStep.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %pNext, align 8
  store ptr %3, ptr %pTriggerStep.addr, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %pTmp, align 8
  %pWhere = getelementptr inbounds nuw %struct.TriggerStep, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %pWhere, align 8
  call void @sqlite3ExprDelete(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pTmp, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %pExprList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %db.addr, align 8
  %11 = load ptr, ptr %pTmp, align 8
  %pSelect = getelementptr inbounds nuw %struct.TriggerStep, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pSelect, align 8
  call void @sqlite3SelectDelete(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %pTmp, align 8
  %pIdList = getelementptr inbounds nuw %struct.TriggerStep, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %pIdList, align 8
  call void @sqlite3IdListDelete(ptr noundef %13, ptr noundef %15)
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %pTmp, align 8
  %pUpsert = getelementptr inbounds nuw %struct.TriggerStep, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %pUpsert, align 8
  call void @sqlite3UpsertDelete(ptr noundef %16, ptr noundef %18)
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %pTmp, align 8
  %zSpan = getelementptr inbounds nuw %struct.TriggerStep, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %zSpan, align 8
  call void @sqlite3DbFree(ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %pTmp, align 8
  call void @sqlite3DbFree(ptr noundef %22, ptr noundef %23)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UpsertDelete(ptr noundef, ptr noundef) #0

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
