; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetPageSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TempInMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSorterInit(ptr noundef %db, i32 noundef %nField, ptr noundef %pCsr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %nField.addr = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %pgsz = alloca i32, align 4
  %i = alloca i32, align 4
  %pSorter = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  %szKeyInfo = alloca i32, align 4
  %sz = alloca i32, align 4
  %rc = alloca i32, align 4
  %nWorker = alloca i32, align 4
  %pTask = alloca ptr, align 8
  %mxCache = alloca i64, align 8
  %szPma = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %nField, ptr %nField.addr, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3TempInMemory(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %nWorker, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr %db.addr, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 11
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %nWorker, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %pCsr.addr, align 8
  %pKeyInfo2 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pKeyInfo2, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %5, i32 0, i32 2
  %6 = load i16, ptr %nKeyField, align 2
  %conv3 = zext i16 %6 to i32
  %sub = sub nsw i32 %conv3, 1
  %conv4 = sext i32 %sub to i64
  %mul = mul i64 %conv4, 8
  %add = add i64 40, %mul
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, ptr %szKeyInfo, align 4
  %7 = load i32, ptr %nWorker, align 4
  %conv6 = sext i32 %7 to i64
  %mul7 = mul i64 %conv6, 104
  %add8 = add i64 200, %mul7
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, ptr %sz, align 4
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load i32, ptr %sz, align 4
  %10 = load i32, ptr %szKeyInfo, align 4
  %add10 = add nsw i32 %9, %10
  %conv11 = sext i32 %add10 to i64
  %call12 = call ptr @sqlite3DbMallocZero(ptr noundef %8, i64 noundef %conv11)
  store ptr %call12, ptr %pSorter, align 8
  %11 = load ptr, ptr %pSorter, align 8
  %12 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %12, i32 0, i32 12
  store ptr %11, ptr %uc, align 8
  %13 = load ptr, ptr %pSorter, align 8
  %cmp13 = icmp eq ptr %13, null
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end
  store i32 7, ptr %rc, align 4
  br label %if.end106

if.else16:                                        ; preds = %if.end
  %14 = load ptr, ptr %pSorter, align 8
  %15 = load i32, ptr %sz, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %pKeyInfo, align 8
  %16 = load ptr, ptr %pSorter, align 8
  %pKeyInfo17 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %16, i32 0, i32 7
  store ptr %add.ptr, ptr %pKeyInfo17, align 8
  %17 = load ptr, ptr %pKeyInfo, align 8
  %18 = load ptr, ptr %pCsr.addr, align 8
  %pKeyInfo18 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %18, i32 0, i32 13
  %19 = load ptr, ptr %pKeyInfo18, align 8
  %20 = load i32, ptr %szKeyInfo, align 4
  %conv19 = sext i32 %20 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %19, i64 %conv19, i1 false)
  %21 = load ptr, ptr %pKeyInfo, align 8
  %db20 = getelementptr inbounds nuw %struct.KeyInfo, ptr %21, i32 0, i32 4
  store ptr null, ptr %db20, align 8
  %22 = load i32, ptr %nField.addr, align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.else16
  %23 = load i32, ptr %nWorker, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %land.lhs.true
  %24 = load i32, ptr %nField.addr, align 4
  %conv25 = trunc i32 %24 to i16
  %25 = load ptr, ptr %pKeyInfo, align 8
  %nKeyField26 = getelementptr inbounds nuw %struct.KeyInfo, ptr %25, i32 0, i32 2
  store i16 %conv25, ptr %nKeyField26, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %land.lhs.true, %if.else16
  %26 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %aDb, align 8
  %arrayidx28 = getelementptr inbounds %struct.Db, ptr %27, i64 0
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx28, i32 0, i32 1
  %28 = load ptr, ptr %pBt, align 8
  %call29 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %28)
  store i32 %call29, ptr %pgsz, align 4
  %29 = load ptr, ptr %pSorter, align 8
  %pgsz30 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %29, i32 0, i32 3
  store i32 %call29, ptr %pgsz30, align 4
  %30 = load i32, ptr %nWorker, align 4
  %add31 = add nsw i32 %30, 1
  %conv32 = trunc i32 %add31 to i8
  %31 = load ptr, ptr %pSorter, align 8
  %nTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %31, i32 0, i32 15
  store i8 %conv32, ptr %nTask, align 1
  %32 = load i32, ptr %nWorker, align 4
  %sub33 = sub nsw i32 %32, 1
  %conv34 = trunc i32 %sub33 to i8
  %33 = load ptr, ptr %pSorter, align 8
  %iPrev = getelementptr inbounds nuw %struct.VdbeSorter, ptr %33, i32 0, i32 14
  store i8 %conv34, ptr %iPrev, align 2
  %34 = load ptr, ptr %pSorter, align 8
  %nTask35 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %34, i32 0, i32 15
  %35 = load i8, ptr %nTask35, align 1
  %conv36 = zext i8 %35 to i32
  %cmp37 = icmp sgt i32 %conv36, 1
  %conv38 = zext i1 %cmp37 to i32
  %conv39 = trunc i32 %conv38 to i8
  %36 = load ptr, ptr %pSorter, align 8
  %bUseThreads = getelementptr inbounds nuw %struct.VdbeSorter, ptr %36, i32 0, i32 13
  store i8 %conv39, ptr %bUseThreads, align 1
  %37 = load ptr, ptr %db.addr, align 8
  %38 = load ptr, ptr %pSorter, align 8
  %db40 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %38, i32 0, i32 6
  store ptr %37, ptr %db40, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end27
  %39 = load i32, ptr %i, align 4
  %40 = load ptr, ptr %pSorter, align 8
  %nTask41 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %40, i32 0, i32 15
  %41 = load i8, ptr %nTask41, align 1
  %conv42 = zext i8 %41 to i32
  %cmp43 = icmp slt i32 %39, %conv42
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %pSorter, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %42, i32 0, i32 17
  %43 = load i32, ptr %i, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 %idxprom
  store ptr %arrayidx45, ptr %pTask, align 8
  %44 = load ptr, ptr %pSorter, align 8
  %45 = load ptr, ptr %pTask, align 8
  %pSorter46 = getelementptr inbounds nuw %struct.SortSubtask, ptr %45, i32 0, i32 2
  store ptr %44, ptr %pSorter46, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, ptr %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %db.addr, align 8
  %call47 = call i32 @sqlite3TempInMemory(ptr noundef %47)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end86, label %if.then49

if.then49:                                        ; preds = %for.end
  %48 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 26), align 8
  store i32 %48, ptr %szPma, align 4
  %49 = load i32, ptr %szPma, align 4
  %50 = load i32, ptr %pgsz, align 4
  %mul50 = mul i32 %49, %50
  %51 = load ptr, ptr %pSorter, align 8
  %mnPmaSize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %51, i32 0, i32 0
  store i32 %mul50, ptr %mnPmaSize, align 8
  %52 = load ptr, ptr %db.addr, align 8
  %aDb51 = getelementptr inbounds nuw %struct.sqlite3, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %aDb51, align 8
  %arrayidx52 = getelementptr inbounds %struct.Db, ptr %53, i64 0
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx52, i32 0, i32 4
  %54 = load ptr, ptr %pSchema, align 8
  %cache_size = getelementptr inbounds nuw %struct.Schema, ptr %54, i32 0, i32 10
  %55 = load i32, ptr %cache_size, align 4
  %conv53 = sext i32 %55 to i64
  store i64 %conv53, ptr %mxCache, align 8
  %56 = load i64, ptr %mxCache, align 8
  %cmp54 = icmp slt i64 %56, 0
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.then49
  %57 = load i64, ptr %mxCache, align 8
  %mul57 = mul nsw i64 %57, -1024
  store i64 %mul57, ptr %mxCache, align 8
  br label %if.end61

if.else58:                                        ; preds = %if.then49
  %58 = load i64, ptr %mxCache, align 8
  %59 = load i32, ptr %pgsz, align 4
  %conv59 = sext i32 %59 to i64
  %mul60 = mul nsw i64 %58, %conv59
  store i64 %mul60, ptr %mxCache, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then56
  %60 = load i64, ptr %mxCache, align 8
  %cmp62 = icmp slt i64 %60, 536870912
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end61
  %61 = load i64, ptr %mxCache, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %61, %cond.true ], [ 536870912, %cond.false ]
  store i64 %cond, ptr %mxCache, align 8
  %62 = load ptr, ptr %pSorter, align 8
  %mnPmaSize64 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %mnPmaSize64, align 8
  %64 = load i64, ptr %mxCache, align 8
  %conv65 = trunc i64 %64 to i32
  %cmp66 = icmp sgt i32 %63, %conv65
  br i1 %cmp66, label %cond.true68, label %cond.false70

cond.true68:                                      ; preds = %cond.end
  %65 = load ptr, ptr %pSorter, align 8
  %mnPmaSize69 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %65, i32 0, i32 0
  %66 = load i32, ptr %mnPmaSize69, align 8
  br label %cond.end72

cond.false70:                                     ; preds = %cond.end
  %67 = load i64, ptr %mxCache, align 8
  %conv71 = trunc i64 %67 to i32
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false70, %cond.true68
  %cond73 = phi i32 [ %66, %cond.true68 ], [ %conv71, %cond.false70 ]
  %68 = load ptr, ptr %pSorter, align 8
  %mxPmaSize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %68, i32 0, i32 1
  store i32 %cond73, ptr %mxPmaSize, align 4
  %69 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 5), align 8
  %conv74 = zext i8 %69 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then77, label %if.end85

if.then77:                                        ; preds = %cond.end72
  %70 = load i32, ptr %pgsz, align 4
  %71 = load ptr, ptr %pSorter, align 8
  %nMemory = getelementptr inbounds nuw %struct.VdbeSorter, ptr %71, i32 0, i32 11
  store i32 %70, ptr %nMemory, align 4
  %72 = load i32, ptr %pgsz, align 4
  %conv78 = sext i32 %72 to i64
  %call79 = call ptr @sqlite3Malloc(i64 noundef %conv78)
  %73 = load ptr, ptr %pSorter, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %73, i32 0, i32 9
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 1
  store ptr %call79, ptr %aMemory, align 8
  %74 = load ptr, ptr %pSorter, align 8
  %list80 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %74, i32 0, i32 9
  %aMemory81 = getelementptr inbounds nuw %struct.SorterList, ptr %list80, i32 0, i32 1
  %75 = load ptr, ptr %aMemory81, align 8
  %tobool82 = icmp ne ptr %75, null
  br i1 %tobool82, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.then77
  store i32 7, ptr %rc, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.then77
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %cond.end72
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %for.end
  %76 = load ptr, ptr %pKeyInfo, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %76, i32 0, i32 3
  %77 = load i16, ptr %nAllField, align 8
  %conv87 = zext i16 %77 to i32
  %cmp88 = icmp slt i32 %conv87, 13
  br i1 %cmp88, label %land.lhs.true90, label %if.end105

land.lhs.true90:                                  ; preds = %if.end86
  %78 = load ptr, ptr %pKeyInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %78, i32 0, i32 6
  %arrayidx91 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 0
  %79 = load ptr, ptr %arrayidx91, align 8
  %cmp92 = icmp eq ptr %79, null
  br i1 %cmp92, label %land.lhs.true99, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true90
  %80 = load ptr, ptr %pKeyInfo, align 8
  %aColl95 = getelementptr inbounds nuw %struct.KeyInfo, ptr %80, i32 0, i32 6
  %arrayidx96 = getelementptr inbounds [1 x ptr], ptr %aColl95, i64 0, i64 0
  %81 = load ptr, ptr %arrayidx96, align 8
  %82 = load ptr, ptr %db.addr, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %pDfltColl, align 8
  %cmp97 = icmp eq ptr %81, %83
  br i1 %cmp97, label %land.lhs.true99, label %if.end105

land.lhs.true99:                                  ; preds = %lor.lhs.false94, %land.lhs.true90
  %84 = load ptr, ptr %pKeyInfo, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %84, i32 0, i32 5
  %85 = load ptr, ptr %aSortFlags, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %85, i64 0
  %86 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %86 to i32
  %and = and i32 %conv101, 2
  %cmp102 = icmp eq i32 %and, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %land.lhs.true99
  %87 = load ptr, ptr %pSorter, align 8
  %typeMask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %87, i32 0, i32 16
  store i8 3, ptr %typeMask, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %land.lhs.true99, %lor.lhs.false94, %if.end86
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then15
  %88 = load i32, ptr %rc, align 4
  ret i32 %88
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
