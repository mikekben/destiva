; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FixTriggerStep(ptr noundef %pFix, ptr noundef %pStep) #0 {
entry:
  %retval = alloca i32, align 4
  %pFix.addr = alloca ptr, align 8
  %pStep.addr = alloca ptr, align 8
  %pUp = alloca ptr, align 8
  store ptr %pFix, ptr %pFix.addr, align 8
  store ptr %pStep, ptr %pStep.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %0 = load ptr, ptr %pStep.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pFix.addr, align 8
  %2 = load ptr, ptr %pStep.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.TriggerStep, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pSelect, align 8
  %call = call i32 @sqlite3FixSelect(ptr noundef %1, ptr noundef %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %pFix.addr, align 8
  %5 = load ptr, ptr %pStep.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.TriggerStep, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %pWhere, align 8
  %call2 = call i32 @sqlite3FixExpr(ptr noundef %4, ptr noundef %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %pFix.addr, align 8
  %8 = load ptr, ptr %pStep.addr, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %pExprList, align 8
  %call6 = call i32 @sqlite3FixExprList(ptr noundef %7, ptr noundef %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %10 = load ptr, ptr %pStep.addr, align 8
  %pUpsert = getelementptr inbounds nuw %struct.TriggerStep, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %pUpsert, align 8
  %tobool10 = icmp ne ptr %11, null
  br i1 %tobool10, label %if.then11, label %if.end25

if.then11:                                        ; preds = %if.end9
  %12 = load ptr, ptr %pStep.addr, align 8
  %pUpsert12 = getelementptr inbounds nuw %struct.TriggerStep, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %pUpsert12, align 8
  store ptr %13, ptr %pUp, align 8
  %14 = load ptr, ptr %pFix.addr, align 8
  %15 = load ptr, ptr %pUp, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pUpsertTarget, align 8
  %call13 = call i32 @sqlite3FixExprList(ptr noundef %14, ptr noundef %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then11
  %17 = load ptr, ptr %pFix.addr, align 8
  %18 = load ptr, ptr %pUp, align 8
  %pUpsertTargetWhere = getelementptr inbounds nuw %struct.Upsert, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pUpsertTargetWhere, align 8
  %call15 = call i32 @sqlite3FixExpr(ptr noundef %17, ptr noundef %19)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then23, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %20 = load ptr, ptr %pFix.addr, align 8
  %21 = load ptr, ptr %pUp, align 8
  %pUpsertSet = getelementptr inbounds nuw %struct.Upsert, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pUpsertSet, align 8
  %call18 = call i32 @sqlite3FixExprList(ptr noundef %20, ptr noundef %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %23 = load ptr, ptr %pFix.addr, align 8
  %24 = load ptr, ptr %pUp, align 8
  %pUpsertWhere = getelementptr inbounds nuw %struct.Upsert, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pUpsertWhere, align 8
  %call21 = call i32 @sqlite3FixExpr(ptr noundef %23, ptr noundef %25)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false, %if.then11
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end9
  %26 = load ptr, ptr %pStep.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %pNext, align 8
  store ptr %27, ptr %pStep.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then23, %if.then8, %if.then4, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
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
