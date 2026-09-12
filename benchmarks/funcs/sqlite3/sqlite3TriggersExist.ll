; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3TriggersExist(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %op, ptr noundef %pChanges, ptr noundef %pMask) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pChanges.addr = alloca ptr, align 8
  %pMask.addr = alloca ptr, align 8
  %mask = alloca i32, align 4
  %pList = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pChanges, ptr %pChanges.addr, align 8
  store ptr %pMask, ptr %pMask.addr, align 8
  store i32 0, ptr %mask, align 4
  store ptr null, ptr %pList, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 7
  %2 = load i64, ptr %flags, align 8
  %and = and i64 %2, 262144
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3TriggerList(ptr noundef %3, ptr noundef %4)
  store ptr %call, ptr %pList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pList, align 8
  store ptr %5, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8
  %op1 = getelementptr inbounds nuw %struct.Trigger, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %op1, align 8
  %conv = zext i8 %8 to i32
  %9 = load i32, ptr %op.addr, align 4
  %cmp2 = icmp eq i32 %conv, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %p, align 8
  %pColumns = getelementptr inbounds nuw %struct.Trigger, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pColumns, align 8
  %12 = load ptr, ptr %pChanges.addr, align 8
  %call4 = call i32 @checkColumnOverlap(ptr noundef %11, ptr noundef %12)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %p, align 8
  %tr_tm = getelementptr inbounds nuw %struct.Trigger, ptr %13, i32 0, i32 3
  %14 = load i8, ptr %tr_tm, align 1
  %conv7 = zext i8 %14 to i32
  %15 = load i32, ptr %mask, align 4
  %or = or i32 %15, %conv7
  store i32 %or, ptr %mask, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %16 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.Trigger, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %pNext, align 8
  store ptr %17, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %pMask.addr, align 8
  %tobool9 = icmp ne ptr %18, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  %19 = load i32, ptr %mask, align 4
  %20 = load ptr, ptr %pMask.addr, align 8
  store i32 %19, ptr %20, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %21 = load i32, ptr %mask, align 4
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %22 = load ptr, ptr %pList, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %22, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind uwtable
declare hidden i32 @checkColumnOverlap(ptr noundef, ptr noundef) #0

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
