; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FkDelete(ptr noundef %db, ptr noundef %pTab) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pFKey = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %p = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %pFKey1 = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFKey1, align 8
  store ptr %1, ptr %pFKey, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pFKey, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %db.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %4 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 82
  %5 = load ptr, ptr %pnBytesFreed, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %6 = load ptr, ptr %pFKey, align 8
  %pPrevTo = getelementptr inbounds nuw %struct.FKey, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pPrevTo, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %pFKey, align 8
  %pNextTo = getelementptr inbounds nuw %struct.FKey, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pNextTo, align 8
  %10 = load ptr, ptr %pFKey, align 8
  %pPrevTo5 = getelementptr inbounds nuw %struct.FKey, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pPrevTo5, align 8
  %pNextTo6 = getelementptr inbounds nuw %struct.FKey, ptr %11, i32 0, i32 3
  store ptr %9, ptr %pNextTo6, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %pFKey, align 8
  %pNextTo7 = getelementptr inbounds nuw %struct.FKey, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pNextTo7, align 8
  store ptr %13, ptr %p, align 8
  %14 = load ptr, ptr %p, align 8
  %tobool8 = icmp ne ptr %14, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %15 = load ptr, ptr %pFKey, align 8
  %pNextTo9 = getelementptr inbounds nuw %struct.FKey, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pNextTo9, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %zTo, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %18 = load ptr, ptr %pFKey, align 8
  %zTo10 = getelementptr inbounds nuw %struct.FKey, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %zTo10, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ %19, %cond.false ]
  store ptr %cond, ptr %z, align 8
  %20 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 20
  %21 = load ptr, ptr %pSchema, align 8
  %fkeyHash = getelementptr inbounds nuw %struct.Schema, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %z, align 8
  %23 = load ptr, ptr %p, align 8
  %call = call ptr @sqlite3HashInsert(ptr noundef %fkeyHash, ptr noundef %22, ptr noundef %23)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then4
  %24 = load ptr, ptr %pFKey, align 8
  %pNextTo11 = getelementptr inbounds nuw %struct.FKey, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pNextTo11, align 8
  %tobool12 = icmp ne ptr %25, null
  br i1 %tobool12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  %26 = load ptr, ptr %pFKey, align 8
  %pPrevTo14 = getelementptr inbounds nuw %struct.FKey, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pPrevTo14, align 8
  %28 = load ptr, ptr %pFKey, align 8
  %pNextTo15 = getelementptr inbounds nuw %struct.FKey, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %pNextTo15, align 8
  %pPrevTo16 = getelementptr inbounds nuw %struct.FKey, ptr %29, i32 0, i32 4
  store ptr %27, ptr %pPrevTo16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %lor.lhs.false
  %30 = load ptr, ptr %db.addr, align 8
  %31 = load ptr, ptr %pFKey, align 8
  %apTrigger = getelementptr inbounds nuw %struct.FKey, ptr %31, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apTrigger, i64 0, i64 0
  %32 = load ptr, ptr %arrayidx, align 8
  call void @fkTriggerDelete(ptr noundef %30, ptr noundef %32)
  %33 = load ptr, ptr %db.addr, align 8
  %34 = load ptr, ptr %pFKey, align 8
  %apTrigger19 = getelementptr inbounds nuw %struct.FKey, ptr %34, i32 0, i32 8
  %arrayidx20 = getelementptr inbounds [2 x ptr], ptr %apTrigger19, i64 0, i64 1
  %35 = load ptr, ptr %arrayidx20, align 8
  call void @fkTriggerDelete(ptr noundef %33, ptr noundef %35)
  %36 = load ptr, ptr %pFKey, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %pNextFrom, align 8
  store ptr %37, ptr %pNext, align 8
  %38 = load ptr, ptr %db.addr, align 8
  %39 = load ptr, ptr %pFKey, align 8
  call void @sqlite3DbFree(ptr noundef %38, ptr noundef %39)
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %40 = load ptr, ptr %pNext, align 8
  store ptr %40, ptr %pFKey, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @fkTriggerDelete(ptr noundef, ptr noundef) #0

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
