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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3TriggerList(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pTmpSchema = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pTrig = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %2, i64 1
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %3 = load ptr, ptr %pSchema, align 8
  store ptr %3, ptr %pTmpSchema, align 8
  store ptr null, ptr %pList, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %disableTriggers = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 44
  %5 = load i8, ptr %disableTriggers, align 2
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pTmpSchema, align 8
  %7 = load ptr, ptr %pTab.addr, align 8
  %pSchema1 = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 20
  %8 = load ptr, ptr %pSchema1, align 8
  %cmp = icmp ne ptr %6, %8
  br i1 %cmp, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %pTmpSchema, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %9, i32 0, i32 4
  %first = getelementptr inbounds nuw %struct.Hash, ptr %trigHash, i32 0, i32 2
  %10 = load ptr, ptr %first, align 8
  store ptr %10, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %11 = load ptr, ptr %p, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %data, align 8
  store ptr %13, ptr %pTrig, align 8
  %14 = load ptr, ptr %pTrig, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %pTabSchema, align 8
  %16 = load ptr, ptr %pTab.addr, align 8
  %pSchema4 = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 20
  %17 = load ptr, ptr %pSchema4, align 8
  %cmp5 = icmp eq ptr %15, %17
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %18 = load ptr, ptr %pTrig, align 8
  %table = getelementptr inbounds nuw %struct.Trigger, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %table, align 8
  %20 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %zName, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %19, ptr noundef %21)
  %cmp6 = icmp eq i32 0, %call
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %22 = load ptr, ptr %pList, align 8
  %tobool8 = icmp ne ptr %22, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  %23 = load ptr, ptr %pList, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  %24 = load ptr, ptr %pTab.addr, align 8
  %pTrigger = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 19
  %25 = load ptr, ptr %pTrigger, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ %25, %cond.false ]
  %26 = load ptr, ptr %pTrig, align 8
  %pNext = getelementptr inbounds nuw %struct.Trigger, ptr %26, i32 0, i32 9
  store ptr %cond, ptr %pNext, align 8
  %27 = load ptr, ptr %pTrig, align 8
  store ptr %27, ptr %pList, align 8
  br label %if.end9

if.end9:                                          ; preds = %cond.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %28 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %next, align 8
  store ptr %29, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end
  %30 = load ptr, ptr %pList, align 8
  %tobool11 = icmp ne ptr %30, null
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %if.end10
  %31 = load ptr, ptr %pList, align 8
  br label %cond.end15

cond.false13:                                     ; preds = %if.end10
  %32 = load ptr, ptr %pTab.addr, align 8
  %pTrigger14 = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 19
  %33 = load ptr, ptr %pTrigger14, align 8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi ptr [ %31, %cond.true12 ], [ %33, %cond.false13 ]
  store ptr %cond16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end15, %if.then
  %34 = load ptr, ptr %retval, align 8
  ret ptr %34
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
