; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameWalkTrigger(ptr noundef %pWalker, ptr noundef %pTrigger) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %pStep = alloca ptr, align 8
  %pUpsert5 = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %1 = load ptr, ptr %pTrigger.addr, align 8
  %pWhen = getelementptr inbounds nuw %struct.Trigger, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pWhen, align 8
  %call = call i32 @sqlite3WalkExpr(ptr noundef %0, ptr noundef %2)
  %3 = load ptr, ptr %pTrigger.addr, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %step_list, align 8
  store ptr %4, ptr %pStep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %pStep, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pWalker.addr, align 8
  %7 = load ptr, ptr %pStep, align 8
  %pSelect = getelementptr inbounds nuw %struct.TriggerStep, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pSelect, align 8
  %call1 = call i32 @sqlite3WalkSelect(ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %pWalker.addr, align 8
  %10 = load ptr, ptr %pStep, align 8
  %pWhere = getelementptr inbounds nuw %struct.TriggerStep, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pWhere, align 8
  %call2 = call i32 @sqlite3WalkExpr(ptr noundef %9, ptr noundef %11)
  %12 = load ptr, ptr %pWalker.addr, align 8
  %13 = load ptr, ptr %pStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %pExprList, align 8
  %call3 = call i32 @sqlite3WalkExprList(ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %pStep, align 8
  %pUpsert = getelementptr inbounds nuw %struct.TriggerStep, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %pUpsert, align 8
  %tobool4 = icmp ne ptr %16, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load ptr, ptr %pStep, align 8
  %pUpsert6 = getelementptr inbounds nuw %struct.TriggerStep, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %pUpsert6, align 8
  store ptr %18, ptr %pUpsert5, align 8
  %19 = load ptr, ptr %pWalker.addr, align 8
  %20 = load ptr, ptr %pUpsert5, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pUpsertTarget, align 8
  %call7 = call i32 @sqlite3WalkExprList(ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %pWalker.addr, align 8
  %23 = load ptr, ptr %pUpsert5, align 8
  %pUpsertSet = getelementptr inbounds nuw %struct.Upsert, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pUpsertSet, align 8
  %call8 = call i32 @sqlite3WalkExprList(ptr noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %pWalker.addr, align 8
  %26 = load ptr, ptr %pUpsert5, align 8
  %pUpsertWhere = getelementptr inbounds nuw %struct.Upsert, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pUpsertWhere, align 8
  %call9 = call i32 @sqlite3WalkExpr(ptr noundef %25, ptr noundef %27)
  %28 = load ptr, ptr %pWalker.addr, align 8
  %29 = load ptr, ptr %pUpsert5, align 8
  %pUpsertTargetWhere = getelementptr inbounds nuw %struct.Upsert, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %pUpsertTargetWhere, align 8
  %call10 = call i32 @sqlite3WalkExpr(ptr noundef %28, ptr noundef %30)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load ptr, ptr %pStep, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %31, i32 0, i32 10
  %32 = load ptr, ptr %pNext, align 8
  store ptr %32, ptr %pStep, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
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
