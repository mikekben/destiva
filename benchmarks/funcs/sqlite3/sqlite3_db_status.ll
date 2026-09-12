; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.LookasideSlot = type { ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_db_status(ptr noundef %db, i32 noundef %op, ptr noundef %pCurrent, ptr noundef %pHighwater, i32 noundef %resetFlag) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pCurrent.addr = alloca ptr, align 8
  %pHighwater.addr = alloca ptr, align 8
  %resetFlag.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  %totalUsed = alloca i32, align 4
  %i = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %i38 = alloca i32, align 4
  %nByte39 = alloca i32, align 4
  %pSchema = alloca ptr, align 8
  %p50 = alloca ptr, align 8
  %pVdbe = alloca ptr, align 8
  %nByte102 = alloca i32, align 4
  %i114 = alloca i32, align 4
  %nRet = alloca i32, align 4
  %pPager126 = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pCurrent, ptr %pCurrent.addr, align 8
  store ptr %pHighwater, ptr %pHighwater.addr, align 8
  store i32 %resetFlag, ptr %resetFlag.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load i32, ptr %op.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb14
    i32 5, label %sw.bb14
    i32 6, label %sw.bb14
    i32 11, label %sw.bb24
    i32 1, label %sw.bb24
    i32 2, label %sw.bb37
    i32 3, label %sw.bb101
    i32 12, label %sw.bb112
    i32 7, label %sw.bb113
    i32 8, label %sw.bb113
    i32 9, label %sw.bb113
    i32 10, label %sw.bb136
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %pHighwater.addr, align 8
  %call = call i32 @sqlite3LookasideUsed(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %call, ptr %5, align 4
  %6 = load i32, ptr %resetFlag.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %sw.bb
  %7 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 61
  %pFree = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 6
  %8 = load ptr, ptr %pFree, align 8
  store ptr %8, ptr %p, align 8
  %9 = load ptr, ptr %p, align 8
  %tobool1 = icmp ne ptr %9, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %10 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.LookasideSlot, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pNext, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %p, align 8
  %pNext4 = getelementptr inbounds nuw %struct.LookasideSlot, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pNext4, align 8
  store ptr %13, ptr %p, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %db.addr, align 8
  %lookaside5 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 61
  %pInit = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside5, i32 0, i32 5
  %15 = load ptr, ptr %pInit, align 8
  %16 = load ptr, ptr %p, align 8
  %pNext6 = getelementptr inbounds nuw %struct.LookasideSlot, ptr %16, i32 0, i32 0
  store ptr %15, ptr %pNext6, align 8
  %17 = load ptr, ptr %db.addr, align 8
  %lookaside7 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 61
  %pFree8 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside7, i32 0, i32 6
  %18 = load ptr, ptr %pFree8, align 8
  %19 = load ptr, ptr %db.addr, align 8
  %lookaside9 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 61
  %pInit10 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside9, i32 0, i32 5
  store ptr %18, ptr %pInit10, align 8
  %20 = load ptr, ptr %db.addr, align 8
  %lookaside11 = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 61
  %pFree12 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside11, i32 0, i32 6
  store ptr null, ptr %pFree12, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %sw.bb
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry, %entry, %entry
  %21 = load ptr, ptr %pCurrent.addr, align 8
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %db.addr, align 8
  %lookaside15 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 61
  %anStat = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside15, i32 0, i32 4
  %23 = load i32, ptr %op.addr, align 4
  %sub = sub nsw i32 %23, 4
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr %anStat, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx, align 4
  %25 = load ptr, ptr %pHighwater.addr, align 8
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %resetFlag.addr, align 4
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %sw.bb14
  %27 = load ptr, ptr %db.addr, align 8
  %lookaside18 = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 61
  %anStat19 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside18, i32 0, i32 4
  %28 = load i32, ptr %op.addr, align 4
  %sub20 = sub nsw i32 %28, 4
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [3 x i32], ptr %anStat19, i64 0, i64 %idxprom21
  store i32 0, ptr %arrayidx22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %sw.bb14
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry, %entry
  store i32 0, ptr %totalUsed, align 4
  %29 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %29)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb24
  %30 = load i32, ptr %i, align 4
  %31 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %30, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %aDb, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds %struct.Db, ptr %34, i64 %idxprom25
  %pBt27 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx26, i32 0, i32 1
  %36 = load ptr, ptr %pBt27, align 8
  store ptr %36, ptr %pBt, align 8
  %37 = load ptr, ptr %pBt, align 8
  %tobool28 = icmp ne ptr %37, null
  br i1 %tobool28, label %if.then29, label %if.end36

if.then29:                                        ; preds = %for.body
  %38 = load ptr, ptr %pBt, align 8
  %call30 = call ptr @sqlite3BtreePager(ptr noundef %38)
  store ptr %call30, ptr %pPager, align 8
  %39 = load ptr, ptr %pPager, align 8
  %call31 = call i32 @sqlite3PagerMemUsed(ptr noundef %39)
  store i32 %call31, ptr %nByte, align 4
  %40 = load i32, ptr %op.addr, align 4
  %cmp32 = icmp eq i32 %40, 11
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then29
  %41 = load i32, ptr %nByte, align 4
  %42 = load ptr, ptr %pBt, align 8
  %call34 = call i32 @sqlite3BtreeConnectionCount(ptr noundef %42)
  %div = sdiv i32 %41, %call34
  store i32 %div, ptr %nByte, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then29
  %43 = load i32, ptr %nByte, align 4
  %44 = load i32, ptr %totalUsed, align 4
  %add = add nsw i32 %44, %43
  store i32 %add, ptr %totalUsed, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %45 = load i32, ptr %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %46)
  %47 = load i32, ptr %totalUsed, align 4
  %48 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %pHighwater.addr, align 8
  store i32 0, ptr %49, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  store i32 0, ptr %nByte39, align 4
  %50 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %50)
  %51 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %51, i32 0, i32 82
  store ptr %nByte39, ptr %pnBytesFreed, align 8
  store i32 0, ptr %i38, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc97, %sw.bb37
  %52 = load i32, ptr %i38, align 4
  %53 = load ptr, ptr %db.addr, align 8
  %nDb41 = getelementptr inbounds nuw %struct.sqlite3, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %nDb41, align 8
  %cmp42 = icmp slt i32 %52, %54
  br i1 %cmp42, label %for.body43, label %for.end99

for.body43:                                       ; preds = %for.cond40
  %55 = load ptr, ptr %db.addr, align 8
  %aDb44 = getelementptr inbounds nuw %struct.sqlite3, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %aDb44, align 8
  %57 = load i32, ptr %i38, align 4
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds %struct.Db, ptr %56, i64 %idxprom45
  %pSchema47 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx46, i32 0, i32 4
  %58 = load ptr, ptr %pSchema47, align 8
  store ptr %58, ptr %pSchema, align 8
  %59 = load ptr, ptr %pSchema, align 8
  %cmp48 = icmp ne ptr %59, null
  br i1 %cmp48, label %if.then49, label %if.end96

if.then49:                                        ; preds = %for.body43
  %60 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_mem_methods, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 12), i32 0, i32 4), align 8
  %call51 = call i32 %60(i32 noundef 32)
  %61 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %61, i32 0, i32 2
  %count = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 1
  %62 = load i32, ptr %count, align 4
  %63 = load ptr, ptr %pSchema, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %63, i32 0, i32 4
  %count52 = getelementptr inbounds nuw %struct.Hash, ptr %trigHash, i32 0, i32 1
  %64 = load i32, ptr %count52, align 4
  %add53 = add i32 %62, %64
  %65 = load ptr, ptr %pSchema, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %65, i32 0, i32 3
  %count54 = getelementptr inbounds nuw %struct.Hash, ptr %idxHash, i32 0, i32 1
  %66 = load i32, ptr %count54, align 4
  %add55 = add i32 %add53, %66
  %67 = load ptr, ptr %pSchema, align 8
  %fkeyHash = getelementptr inbounds nuw %struct.Schema, ptr %67, i32 0, i32 5
  %count56 = getelementptr inbounds nuw %struct.Hash, ptr %fkeyHash, i32 0, i32 1
  %68 = load i32, ptr %count56, align 4
  %add57 = add i32 %add55, %68
  %mul = mul i32 %call51, %add57
  %69 = load i32, ptr %nByte39, align 4
  %add58 = add i32 %69, %mul
  store i32 %add58, ptr %nByte39, align 4
  %70 = load ptr, ptr %pSchema, align 8
  %tblHash59 = getelementptr inbounds nuw %struct.Schema, ptr %70, i32 0, i32 2
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %tblHash59, i32 0, i32 3
  %71 = load ptr, ptr %ht, align 8
  %call60 = call i64 @sqlite3_msize(ptr noundef %71)
  %72 = load i32, ptr %nByte39, align 4
  %conv = sext i32 %72 to i64
  %add61 = add i64 %conv, %call60
  %conv62 = trunc i64 %add61 to i32
  store i32 %conv62, ptr %nByte39, align 4
  %73 = load ptr, ptr %pSchema, align 8
  %trigHash63 = getelementptr inbounds nuw %struct.Schema, ptr %73, i32 0, i32 4
  %ht64 = getelementptr inbounds nuw %struct.Hash, ptr %trigHash63, i32 0, i32 3
  %74 = load ptr, ptr %ht64, align 8
  %call65 = call i64 @sqlite3_msize(ptr noundef %74)
  %75 = load i32, ptr %nByte39, align 4
  %conv66 = sext i32 %75 to i64
  %add67 = add i64 %conv66, %call65
  %conv68 = trunc i64 %add67 to i32
  store i32 %conv68, ptr %nByte39, align 4
  %76 = load ptr, ptr %pSchema, align 8
  %idxHash69 = getelementptr inbounds nuw %struct.Schema, ptr %76, i32 0, i32 3
  %ht70 = getelementptr inbounds nuw %struct.Hash, ptr %idxHash69, i32 0, i32 3
  %77 = load ptr, ptr %ht70, align 8
  %call71 = call i64 @sqlite3_msize(ptr noundef %77)
  %78 = load i32, ptr %nByte39, align 4
  %conv72 = sext i32 %78 to i64
  %add73 = add i64 %conv72, %call71
  %conv74 = trunc i64 %add73 to i32
  store i32 %conv74, ptr %nByte39, align 4
  %79 = load ptr, ptr %pSchema, align 8
  %fkeyHash75 = getelementptr inbounds nuw %struct.Schema, ptr %79, i32 0, i32 5
  %ht76 = getelementptr inbounds nuw %struct.Hash, ptr %fkeyHash75, i32 0, i32 3
  %80 = load ptr, ptr %ht76, align 8
  %call77 = call i64 @sqlite3_msize(ptr noundef %80)
  %81 = load i32, ptr %nByte39, align 4
  %conv78 = sext i32 %81 to i64
  %add79 = add i64 %conv78, %call77
  %conv80 = trunc i64 %add79 to i32
  store i32 %conv80, ptr %nByte39, align 4
  %82 = load ptr, ptr %pSchema, align 8
  %trigHash81 = getelementptr inbounds nuw %struct.Schema, ptr %82, i32 0, i32 4
  %first = getelementptr inbounds nuw %struct.Hash, ptr %trigHash81, i32 0, i32 2
  %83 = load ptr, ptr %first, align 8
  store ptr %83, ptr %p50, align 8
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc85, %if.then49
  %84 = load ptr, ptr %p50, align 8
  %tobool83 = icmp ne ptr %84, null
  br i1 %tobool83, label %for.body84, label %for.end86

for.body84:                                       ; preds = %for.cond82
  %85 = load ptr, ptr %db.addr, align 8
  %86 = load ptr, ptr %p50, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %86, i32 0, i32 2
  %87 = load ptr, ptr %data, align 8
  call void @sqlite3DeleteTrigger(ptr noundef %85, ptr noundef %87)
  br label %for.inc85

for.inc85:                                        ; preds = %for.body84
  %88 = load ptr, ptr %p50, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %next, align 8
  store ptr %89, ptr %p50, align 8
  br label %for.cond82, !llvm.loop !9

for.end86:                                        ; preds = %for.cond82
  %90 = load ptr, ptr %pSchema, align 8
  %tblHash87 = getelementptr inbounds nuw %struct.Schema, ptr %90, i32 0, i32 2
  %first88 = getelementptr inbounds nuw %struct.Hash, ptr %tblHash87, i32 0, i32 2
  %91 = load ptr, ptr %first88, align 8
  store ptr %91, ptr %p50, align 8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc93, %for.end86
  %92 = load ptr, ptr %p50, align 8
  %tobool90 = icmp ne ptr %92, null
  br i1 %tobool90, label %for.body91, label %for.end95

for.body91:                                       ; preds = %for.cond89
  %93 = load ptr, ptr %db.addr, align 8
  %94 = load ptr, ptr %p50, align 8
  %data92 = getelementptr inbounds nuw %struct.HashElem, ptr %94, i32 0, i32 2
  %95 = load ptr, ptr %data92, align 8
  call void @sqlite3DeleteTable(ptr noundef %93, ptr noundef %95)
  br label %for.inc93

for.inc93:                                        ; preds = %for.body91
  %96 = load ptr, ptr %p50, align 8
  %next94 = getelementptr inbounds nuw %struct.HashElem, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %next94, align 8
  store ptr %97, ptr %p50, align 8
  br label %for.cond89, !llvm.loop !10

for.end95:                                        ; preds = %for.cond89
  br label %if.end96

if.end96:                                         ; preds = %for.end95, %for.body43
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %98 = load i32, ptr %i38, align 4
  %inc98 = add nsw i32 %98, 1
  store i32 %inc98, ptr %i38, align 4
  br label %for.cond40, !llvm.loop !11

for.end99:                                        ; preds = %for.cond40
  %99 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed100 = getelementptr inbounds nuw %struct.sqlite3, ptr %99, i32 0, i32 82
  store ptr null, ptr %pnBytesFreed100, align 8
  %100 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %100)
  %101 = load ptr, ptr %pHighwater.addr, align 8
  store i32 0, ptr %101, align 4
  %102 = load i32, ptr %nByte39, align 4
  %103 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %102, ptr %103, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %entry
  store i32 0, ptr %nByte102, align 4
  %104 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed103 = getelementptr inbounds nuw %struct.sqlite3, ptr %104, i32 0, i32 82
  store ptr %nByte102, ptr %pnBytesFreed103, align 8
  %105 = load ptr, ptr %db.addr, align 8
  %pVdbe104 = getelementptr inbounds nuw %struct.sqlite3, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %pVdbe104, align 8
  store ptr %106, ptr %pVdbe, align 8
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc108, %sw.bb101
  %107 = load ptr, ptr %pVdbe, align 8
  %tobool106 = icmp ne ptr %107, null
  br i1 %tobool106, label %for.body107, label %for.end110

for.body107:                                      ; preds = %for.cond105
  %108 = load ptr, ptr %db.addr, align 8
  %109 = load ptr, ptr %pVdbe, align 8
  call void @sqlite3VdbeClearObject(ptr noundef %108, ptr noundef %109)
  %110 = load ptr, ptr %db.addr, align 8
  %111 = load ptr, ptr %pVdbe, align 8
  call void @sqlite3DbFree(ptr noundef %110, ptr noundef %111)
  br label %for.inc108

for.inc108:                                       ; preds = %for.body107
  %112 = load ptr, ptr %pVdbe, align 8
  %pNext109 = getelementptr inbounds nuw %struct.Vdbe, ptr %112, i32 0, i32 2
  %113 = load ptr, ptr %pNext109, align 8
  store ptr %113, ptr %pVdbe, align 8
  br label %for.cond105, !llvm.loop !12

for.end110:                                       ; preds = %for.cond105
  %114 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed111 = getelementptr inbounds nuw %struct.sqlite3, ptr %114, i32 0, i32 82
  store ptr null, ptr %pnBytesFreed111, align 8
  %115 = load ptr, ptr %pHighwater.addr, align 8
  store i32 0, ptr %115, align 4
  %116 = load i32, ptr %nByte102, align 4
  %117 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %116, ptr %117, align 4
  br label %sw.epilog

sw.bb112:                                         ; preds = %entry
  store i32 10, ptr %op.addr, align 4
  br label %sw.bb113

sw.bb113:                                         ; preds = %sw.bb112, %entry, %entry, %entry
  store i32 0, ptr %nRet, align 4
  store i32 0, ptr %i114, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc133, %sw.bb113
  %118 = load i32, ptr %i114, align 4
  %119 = load ptr, ptr %db.addr, align 8
  %nDb116 = getelementptr inbounds nuw %struct.sqlite3, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %nDb116, align 8
  %cmp117 = icmp slt i32 %118, %120
  br i1 %cmp117, label %for.body119, label %for.end135

for.body119:                                      ; preds = %for.cond115
  %121 = load ptr, ptr %db.addr, align 8
  %aDb120 = getelementptr inbounds nuw %struct.sqlite3, ptr %121, i32 0, i32 4
  %122 = load ptr, ptr %aDb120, align 8
  %123 = load i32, ptr %i114, align 4
  %idxprom121 = sext i32 %123 to i64
  %arrayidx122 = getelementptr inbounds %struct.Db, ptr %122, i64 %idxprom121
  %pBt123 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx122, i32 0, i32 1
  %124 = load ptr, ptr %pBt123, align 8
  %tobool124 = icmp ne ptr %124, null
  br i1 %tobool124, label %if.then125, label %if.end132

if.then125:                                       ; preds = %for.body119
  %125 = load ptr, ptr %db.addr, align 8
  %aDb127 = getelementptr inbounds nuw %struct.sqlite3, ptr %125, i32 0, i32 4
  %126 = load ptr, ptr %aDb127, align 8
  %127 = load i32, ptr %i114, align 4
  %idxprom128 = sext i32 %127 to i64
  %arrayidx129 = getelementptr inbounds %struct.Db, ptr %126, i64 %idxprom128
  %pBt130 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx129, i32 0, i32 1
  %128 = load ptr, ptr %pBt130, align 8
  %call131 = call ptr @sqlite3BtreePager(ptr noundef %128)
  store ptr %call131, ptr %pPager126, align 8
  %129 = load ptr, ptr %pPager126, align 8
  %130 = load i32, ptr %op.addr, align 4
  %131 = load i32, ptr %resetFlag.addr, align 4
  call void @sqlite3PagerCacheStat(ptr noundef %129, i32 noundef %130, i32 noundef %131, ptr noundef %nRet)
  br label %if.end132

if.end132:                                        ; preds = %if.then125, %for.body119
  br label %for.inc133

for.inc133:                                       ; preds = %if.end132
  %132 = load i32, ptr %i114, align 4
  %inc134 = add nsw i32 %132, 1
  store i32 %inc134, ptr %i114, align 4
  br label %for.cond115, !llvm.loop !13

for.end135:                                       ; preds = %for.cond115
  %133 = load ptr, ptr %pHighwater.addr, align 8
  store i32 0, ptr %133, align 4
  %134 = load i32, ptr %nRet, align 4
  %135 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %134, ptr %135, align 4
  br label %sw.epilog

sw.bb136:                                         ; preds = %entry
  %136 = load ptr, ptr %pHighwater.addr, align 8
  store i32 0, ptr %136, align 4
  %137 = load ptr, ptr %db.addr, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %137, i32 0, i32 81
  %138 = load i64, ptr %nDeferredImmCons, align 8
  %cmp137 = icmp sgt i64 %138, 0
  br i1 %cmp137, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb136
  %139 = load ptr, ptr %db.addr, align 8
  %nDeferredCons = getelementptr inbounds nuw %struct.sqlite3, ptr %139, i32 0, i32 80
  %140 = load i64, ptr %nDeferredCons, align 8
  %cmp139 = icmp sgt i64 %140, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb136
  %141 = phi i1 [ true, %sw.bb136 ], [ %cmp139, %lor.rhs ]
  %lor.ext = zext i1 %141 to i32
  %142 = load ptr, ptr %pCurrent.addr, align 8
  store i32 %lor.ext, ptr %142, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 1, ptr %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %lor.end, %for.end135, %for.end110, %for.end99, %for.end, %if.end23, %if.end13
  %143 = load ptr, ptr %db.addr, align 8
  %mutex141 = getelementptr inbounds nuw %struct.sqlite3, ptr %143, i32 0, i32 3
  %144 = load ptr, ptr %mutex141, align 8
  call void @sqlite3_mutex_leave(ptr noundef %144)
  %145 = load i32, ptr %rc, align 4
  ret i32 %145
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3LookasideUsed(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerMemUsed(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeConnectionCount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_msize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeClearObject(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerCacheStat(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
