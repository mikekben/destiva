; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_backup_step(ptr noundef %p, i32 noundef %nPage) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %nPage.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %destMode = alloca i32, align 4
  %pgszSrc = alloca i32, align 4
  %pgszDest = alloca i32, align 4
  %pSrcPager = alloca ptr, align 8
  %pDestPager = alloca ptr, align 8
  %ii = alloca i32, align 4
  %nSrcPage = alloca i32, align 4
  %bCloseTrans = alloca i32, align 4
  %iSrcPg = alloca i32, align 4
  %pSrcPg = alloca ptr, align 8
  %nDestTruncate = alloca i32, align 4
  %ratio = alloca i32, align 4
  %iSize = alloca i64, align 8
  %pFile = alloca ptr, align 8
  %iPg = alloca i32, align 4
  %nDstPage = alloca i32, align 4
  %iOff = alloca i64, align 8
  %iEnd = alloca i64, align 8
  %pPg = alloca ptr, align 8
  %pSrcPg220 = alloca ptr, align 8
  %iSrcPg221 = alloca i32, align 4
  %zData = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nPage, ptr %nPage.addr, align 4
  store i32 0, ptr %pgszSrc, align 4
  store i32 0, ptr %pgszDest, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pSrcDb = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pSrcDb, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %pSrc, align 8
  call void @sqlite3BtreeEnter(ptr noundef %4)
  %5 = load ptr, ptr %p.addr, align 8
  %pDestDb = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pDestDb, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8
  %pDestDb1 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pDestDb1, align 8
  %mutex2 = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %mutex2, align 8
  call void @sqlite3_mutex_enter(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %p.addr, align 8
  %rc3 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %10, i32 0, i32 7
  %11 = load i32, ptr %rc3, align 8
  store i32 %11, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %call = call i32 @isFatalError(i32 noundef %12)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end273, label %if.then5

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %p.addr, align 8
  %pSrc6 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %pSrc6, align 8
  %call7 = call ptr @sqlite3BtreePager(ptr noundef %14)
  store ptr %call7, ptr %pSrcPager, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pDest = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pDest, align 8
  %call8 = call ptr @sqlite3BtreePager(ptr noundef %16)
  store ptr %call8, ptr %pDestPager, align 8
  store i32 -1, ptr %nSrcPage, align 4
  store i32 0, ptr %bCloseTrans, align 4
  %17 = load ptr, ptr %p.addr, align 8
  %pDestDb9 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pDestDb9, align 8
  %tobool10 = icmp ne ptr %18, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %19 = load ptr, ptr %p.addr, align 8
  %pSrc11 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %pSrc11, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pBt, align 8
  %inTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 8
  %22 = load i8, ptr %inTransaction, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %land.lhs.true
  store i32 5, ptr %rc, align 4
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %if.then5
  store i32 0, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  %23 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %23, 0
  br i1 %cmp15, label %land.lhs.true17, label %if.end25

land.lhs.true17:                                  ; preds = %if.end14
  %24 = load ptr, ptr %p.addr, align 8
  %pSrc18 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %pSrc18, align 8
  %call19 = call i32 @sqlite3BtreeIsInReadTrans(ptr noundef %25)
  %cmp20 = icmp eq i32 0, %call19
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %land.lhs.true17
  %26 = load ptr, ptr %p.addr, align 8
  %pSrc23 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %pSrc23, align 8
  %call24 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %27, i32 noundef 0, ptr noundef null)
  store i32 %call24, ptr %rc, align 4
  store i32 1, ptr %bCloseTrans, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true17, %if.end14
  %28 = load ptr, ptr %p.addr, align 8
  %bDestLocked = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %bDestLocked, align 4
  %cmp26 = icmp eq i32 %29, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %if.end25
  %30 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %30, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %31 = load ptr, ptr %p.addr, align 8
  %call32 = call i32 @setDestPgsz(ptr noundef %31)
  %cmp33 = icmp eq i32 %call32, 7
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true31
  store i32 7, ptr %rc, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true31, %land.lhs.true28, %if.end25
  %32 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 0, %32
  br i1 %cmp37, label %land.lhs.true39, label %if.end50

land.lhs.true39:                                  ; preds = %if.end36
  %33 = load ptr, ptr %p.addr, align 8
  %bDestLocked40 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %bDestLocked40, align 4
  %cmp41 = icmp eq i32 %34, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.end50

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %35 = load ptr, ptr %p.addr, align 8
  %pDest44 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %pDest44, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %iDestSchema = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %37, i32 0, i32 2
  %call45 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %36, i32 noundef 2, ptr noundef %iDestSchema)
  store i32 %call45, ptr %rc, align 4
  %cmp46 = icmp eq i32 0, %call45
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %land.lhs.true43
  %38 = load ptr, ptr %p.addr, align 8
  %bDestLocked49 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %38, i32 0, i32 3
  store i32 1, ptr %bDestLocked49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %land.lhs.true43, %land.lhs.true39, %if.end36
  %39 = load ptr, ptr %p.addr, align 8
  %pSrc51 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %39, i32 0, i32 6
  %40 = load ptr, ptr %pSrc51, align 8
  %call52 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %40)
  store i32 %call52, ptr %pgszSrc, align 4
  %41 = load ptr, ptr %p.addr, align 8
  %pDest53 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %pDest53, align 8
  %call54 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %42)
  store i32 %call54, ptr %pgszDest, align 4
  %43 = load ptr, ptr %p.addr, align 8
  %pDest55 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %pDest55, align 8
  %call56 = call ptr @sqlite3BtreePager(ptr noundef %44)
  %call57 = call i32 @sqlite3PagerGetJournalMode(ptr noundef %call56)
  store i32 %call57, ptr %destMode, align 4
  %45 = load i32, ptr %rc, align 4
  %cmp58 = icmp eq i32 0, %45
  br i1 %cmp58, label %land.lhs.true60, label %if.end67

land.lhs.true60:                                  ; preds = %if.end50
  %46 = load i32, ptr %destMode, align 4
  %cmp61 = icmp eq i32 %46, 5
  br i1 %cmp61, label %land.lhs.true63, label %if.end67

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %47 = load i32, ptr %pgszSrc, align 4
  %48 = load i32, ptr %pgszDest, align 4
  %cmp64 = icmp ne i32 %47, %48
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %land.lhs.true63
  store i32 8, ptr %rc, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true63, %land.lhs.true60, %if.end50
  %49 = load ptr, ptr %p.addr, align 8
  %pSrc68 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %pSrc68, align 8
  %call69 = call i32 @sqlite3BtreeLastPage(ptr noundef %50)
  store i32 %call69, ptr %nSrcPage, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end67
  %51 = load i32, ptr %nPage.addr, align 4
  %cmp70 = icmp slt i32 %51, 0
  br i1 %cmp70, label %land.lhs.true74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %52 = load i32, ptr %ii, align 4
  %53 = load i32, ptr %nPage.addr, align 4
  %cmp72 = icmp slt i32 %52, %53
  br i1 %cmp72, label %land.lhs.true74, label %land.end

land.lhs.true74:                                  ; preds = %lor.lhs.false, %for.cond
  %54 = load ptr, ptr %p.addr, align 8
  %iNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %iNext, align 8
  %56 = load i32, ptr %nSrcPage, align 4
  %cmp75 = icmp ule i32 %55, %56
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true74
  %57 = load i32, ptr %rc, align 4
  %tobool77 = icmp ne i32 %57, 0
  %lnot = xor i1 %tobool77, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true74, %lor.lhs.false
  %58 = phi i1 [ false, %land.lhs.true74 ], [ false, %lor.lhs.false ], [ %lnot, %land.rhs ]
  br i1 %58, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %59 = load ptr, ptr %p.addr, align 8
  %iNext78 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %59, i32 0, i32 4
  %60 = load i32, ptr %iNext78, align 8
  store i32 %60, ptr %iSrcPg, align 4
  %61 = load i32, ptr %iSrcPg, align 4
  %62 = load i32, ptr @sqlite3PendingByte, align 4
  %63 = load ptr, ptr %p.addr, align 8
  %pSrc79 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %pSrc79, align 8
  %pBt80 = getelementptr inbounds nuw %struct.Btree, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %pBt80, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %65, i32 0, i32 15
  %66 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %62, %66
  %add = add i32 %div, 1
  %cmp81 = icmp ne i32 %61, %add
  br i1 %cmp81, label %if.then83, label %if.end91

if.then83:                                        ; preds = %for.body
  %67 = load ptr, ptr %pSrcPager, align 8
  %68 = load i32, ptr %iSrcPg, align 4
  %call84 = call i32 @sqlite3PagerGet(ptr noundef %67, i32 noundef %68, ptr noundef %pSrcPg, i32 noundef 2)
  store i32 %call84, ptr %rc, align 4
  %69 = load i32, ptr %rc, align 4
  %cmp85 = icmp eq i32 %69, 0
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.then83
  %70 = load ptr, ptr %p.addr, align 8
  %71 = load i32, ptr %iSrcPg, align 4
  %72 = load ptr, ptr %pSrcPg, align 8
  %call88 = call ptr @sqlite3PagerGetData(ptr noundef %72)
  %call89 = call i32 @backupOnePage(ptr noundef %70, i32 noundef %71, ptr noundef %call88, i32 noundef 0)
  store i32 %call89, ptr %rc, align 4
  %73 = load ptr, ptr %pSrcPg, align 8
  call void @sqlite3PagerUnref(ptr noundef %73)
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then83
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %for.body
  %74 = load ptr, ptr %p.addr, align 8
  %iNext92 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %74, i32 0, i32 4
  %75 = load i32, ptr %iNext92, align 8
  %inc = add i32 %75, 1
  store i32 %inc, ptr %iNext92, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end91
  %76 = load i32, ptr %ii, align 4
  %inc93 = add nsw i32 %76, 1
  store i32 %inc93, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %77 = load i32, ptr %rc, align 4
  %cmp94 = icmp eq i32 %77, 0
  br i1 %cmp94, label %if.then96, label %if.end108

if.then96:                                        ; preds = %for.end
  %78 = load i32, ptr %nSrcPage, align 4
  %79 = load ptr, ptr %p.addr, align 8
  %nPagecount = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %79, i32 0, i32 9
  store i32 %78, ptr %nPagecount, align 8
  %80 = load i32, ptr %nSrcPage, align 4
  %add97 = add nsw i32 %80, 1
  %81 = load ptr, ptr %p.addr, align 8
  %iNext98 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %81, i32 0, i32 4
  %82 = load i32, ptr %iNext98, align 8
  %sub = sub i32 %add97, %82
  %83 = load ptr, ptr %p.addr, align 8
  %nRemaining = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %83, i32 0, i32 8
  store i32 %sub, ptr %nRemaining, align 4
  %84 = load ptr, ptr %p.addr, align 8
  %iNext99 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %84, i32 0, i32 4
  %85 = load i32, ptr %iNext99, align 8
  %86 = load i32, ptr %nSrcPage, align 4
  %cmp100 = icmp ugt i32 %85, %86
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.then96
  store i32 101, ptr %rc, align 4
  br label %if.end107

if.else103:                                       ; preds = %if.then96
  %87 = load ptr, ptr %p.addr, align 8
  %isAttached = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %87, i32 0, i32 10
  %88 = load i32, ptr %isAttached, align 4
  %tobool104 = icmp ne i32 %88, 0
  br i1 %tobool104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.else103
  %89 = load ptr, ptr %p.addr, align 8
  call void @attachBackupObject(ptr noundef %89)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.else103
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then102
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %for.end
  %90 = load i32, ptr %rc, align 4
  %cmp109 = icmp eq i32 %90, 101
  br i1 %cmp109, label %if.then111, label %if.end260

if.then111:                                       ; preds = %if.end108
  %91 = load i32, ptr %nSrcPage, align 4
  %cmp112 = icmp eq i32 %91, 0
  br i1 %cmp112, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.then111
  %92 = load ptr, ptr %p.addr, align 8
  %pDest115 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %pDest115, align 8
  %call116 = call i32 @sqlite3BtreeNewDb(ptr noundef %93)
  store i32 %call116, ptr %rc, align 4
  store i32 1, ptr %nSrcPage, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.then111
  %94 = load i32, ptr %rc, align 4
  %cmp118 = icmp eq i32 %94, 0
  br i1 %cmp118, label %if.then123, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.end117
  %95 = load i32, ptr %rc, align 4
  %cmp121 = icmp eq i32 %95, 101
  br i1 %cmp121, label %if.then123, label %if.end128

if.then123:                                       ; preds = %lor.lhs.false120, %if.end117
  %96 = load ptr, ptr %p.addr, align 8
  %pDest124 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %96, i32 0, i32 1
  %97 = load ptr, ptr %pDest124, align 8
  %98 = load ptr, ptr %p.addr, align 8
  %iDestSchema125 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %98, i32 0, i32 2
  %99 = load i32, ptr %iDestSchema125, align 8
  %add126 = add i32 %99, 1
  %call127 = call i32 @sqlite3BtreeUpdateMeta(ptr noundef %97, i32 noundef 1, i32 noundef %add126)
  store i32 %call127, ptr %rc, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %lor.lhs.false120
  %100 = load i32, ptr %rc, align 4
  %cmp129 = icmp eq i32 %100, 0
  br i1 %cmp129, label %if.then131, label %if.end143

if.then131:                                       ; preds = %if.end128
  %101 = load ptr, ptr %p.addr, align 8
  %pDestDb132 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %pDestDb132, align 8
  %tobool133 = icmp ne ptr %102, null
  br i1 %tobool133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then131
  %103 = load ptr, ptr %p.addr, align 8
  %pDestDb135 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %pDestDb135, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %104)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.then131
  %105 = load i32, ptr %destMode, align 4
  %cmp137 = icmp eq i32 %105, 5
  br i1 %cmp137, label %if.then139, label %if.end142

if.then139:                                       ; preds = %if.end136
  %106 = load ptr, ptr %p.addr, align 8
  %pDest140 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %106, i32 0, i32 1
  %107 = load ptr, ptr %pDest140, align 8
  %call141 = call i32 @sqlite3BtreeSetVersion(ptr noundef %107, i32 noundef 2)
  store i32 %call141, ptr %rc, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end136
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end128
  %108 = load i32, ptr %rc, align 4
  %cmp144 = icmp eq i32 %108, 0
  br i1 %cmp144, label %if.then146, label %if.end259

if.then146:                                       ; preds = %if.end143
  %109 = load i32, ptr %pgszSrc, align 4
  %110 = load i32, ptr %pgszDest, align 4
  %cmp147 = icmp slt i32 %109, %110
  br i1 %cmp147, label %if.then149, label %if.else163

if.then149:                                       ; preds = %if.then146
  %111 = load i32, ptr %pgszDest, align 4
  %112 = load i32, ptr %pgszSrc, align 4
  %div150 = sdiv i32 %111, %112
  store i32 %div150, ptr %ratio, align 4
  %113 = load i32, ptr %nSrcPage, align 4
  %114 = load i32, ptr %ratio, align 4
  %add151 = add nsw i32 %113, %114
  %sub152 = sub nsw i32 %add151, 1
  %115 = load i32, ptr %ratio, align 4
  %div153 = sdiv i32 %sub152, %115
  store i32 %div153, ptr %nDestTruncate, align 4
  %116 = load i32, ptr %nDestTruncate, align 4
  %117 = load i32, ptr @sqlite3PendingByte, align 4
  %118 = load ptr, ptr %p.addr, align 8
  %pDest154 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %118, i32 0, i32 1
  %119 = load ptr, ptr %pDest154, align 8
  %pBt155 = getelementptr inbounds nuw %struct.Btree, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %pBt155, align 8
  %pageSize156 = getelementptr inbounds nuw %struct.BtShared, ptr %120, i32 0, i32 15
  %121 = load i32, ptr %pageSize156, align 8
  %div157 = udiv i32 %117, %121
  %add158 = add i32 %div157, 1
  %cmp159 = icmp eq i32 %116, %add158
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then149
  %122 = load i32, ptr %nDestTruncate, align 4
  %dec = add nsw i32 %122, -1
  store i32 %dec, ptr %nDestTruncate, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.then149
  br label %if.end165

if.else163:                                       ; preds = %if.then146
  %123 = load i32, ptr %nSrcPage, align 4
  %124 = load i32, ptr %pgszSrc, align 4
  %125 = load i32, ptr %pgszDest, align 4
  %div164 = sdiv i32 %124, %125
  %mul = mul nsw i32 %123, %div164
  store i32 %mul, ptr %nDestTruncate, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.else163, %if.end162
  %126 = load i32, ptr %pgszSrc, align 4
  %127 = load i32, ptr %pgszDest, align 4
  %cmp166 = icmp slt i32 %126, %127
  br i1 %cmp166, label %if.then168, label %if.else247

if.then168:                                       ; preds = %if.end165
  %128 = load i32, ptr %pgszSrc, align 4
  %conv169 = sext i32 %128 to i64
  %129 = load i32, ptr %nSrcPage, align 4
  %conv170 = sext i32 %129 to i64
  %mul171 = mul nsw i64 %conv169, %conv170
  store i64 %mul171, ptr %iSize, align 8
  %130 = load ptr, ptr %pDestPager, align 8
  %call172 = call ptr @sqlite3PagerFile(ptr noundef %130)
  store ptr %call172, ptr %pFile, align 8
  %131 = load ptr, ptr %pDestPager, align 8
  call void @sqlite3PagerPagecount(ptr noundef %131, ptr noundef %nDstPage)
  %132 = load i32, ptr %nDestTruncate, align 4
  store i32 %132, ptr %iPg, align 4
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc196, %if.then168
  %133 = load i32, ptr %rc, align 4
  %cmp174 = icmp eq i32 %133, 0
  br i1 %cmp174, label %land.rhs176, label %land.end179

land.rhs176:                                      ; preds = %for.cond173
  %134 = load i32, ptr %iPg, align 4
  %135 = load i32, ptr %nDstPage, align 4
  %cmp177 = icmp ule i32 %134, %135
  br label %land.end179

land.end179:                                      ; preds = %land.rhs176, %for.cond173
  %136 = phi i1 [ false, %for.cond173 ], [ %cmp177, %land.rhs176 ]
  br i1 %136, label %for.body180, label %for.end198

for.body180:                                      ; preds = %land.end179
  %137 = load i32, ptr %iPg, align 4
  %138 = load i32, ptr @sqlite3PendingByte, align 4
  %139 = load ptr, ptr %p.addr, align 8
  %pDest181 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %139, i32 0, i32 1
  %140 = load ptr, ptr %pDest181, align 8
  %pBt182 = getelementptr inbounds nuw %struct.Btree, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %pBt182, align 8
  %pageSize183 = getelementptr inbounds nuw %struct.BtShared, ptr %141, i32 0, i32 15
  %142 = load i32, ptr %pageSize183, align 8
  %div184 = udiv i32 %138, %142
  %add185 = add i32 %div184, 1
  %cmp186 = icmp ne i32 %137, %add185
  br i1 %cmp186, label %if.then188, label %if.end195

if.then188:                                       ; preds = %for.body180
  %143 = load ptr, ptr %pDestPager, align 8
  %144 = load i32, ptr %iPg, align 4
  %call189 = call i32 @sqlite3PagerGet(ptr noundef %143, i32 noundef %144, ptr noundef %pPg, i32 noundef 0)
  store i32 %call189, ptr %rc, align 4
  %145 = load i32, ptr %rc, align 4
  %cmp190 = icmp eq i32 %145, 0
  br i1 %cmp190, label %if.then192, label %if.end194

if.then192:                                       ; preds = %if.then188
  %146 = load ptr, ptr %pPg, align 8
  %call193 = call i32 @sqlite3PagerWrite(ptr noundef %146)
  store i32 %call193, ptr %rc, align 4
  %147 = load ptr, ptr %pPg, align 8
  call void @sqlite3PagerUnref(ptr noundef %147)
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.then188
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %for.body180
  br label %for.inc196

for.inc196:                                       ; preds = %if.end195
  %148 = load i32, ptr %iPg, align 4
  %inc197 = add i32 %148, 1
  store i32 %inc197, ptr %iPg, align 4
  br label %for.cond173, !llvm.loop !8

for.end198:                                       ; preds = %land.end179
  %149 = load i32, ptr %rc, align 4
  %cmp199 = icmp eq i32 %149, 0
  br i1 %cmp199, label %if.then201, label %if.end203

if.then201:                                       ; preds = %for.end198
  %150 = load ptr, ptr %pDestPager, align 8
  %call202 = call i32 @sqlite3PagerCommitPhaseOne(ptr noundef %150, ptr noundef null, i32 noundef 1)
  store i32 %call202, ptr %rc, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %for.end198
  %151 = load i32, ptr @sqlite3PendingByte, align 4
  %152 = load i32, ptr %pgszDest, align 4
  %add204 = add nsw i32 %151, %152
  %conv205 = sext i32 %add204 to i64
  %153 = load i64, ptr %iSize, align 8
  %cmp206 = icmp slt i64 %conv205, %153
  br i1 %cmp206, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end203
  %154 = load i32, ptr @sqlite3PendingByte, align 4
  %155 = load i32, ptr %pgszDest, align 4
  %add208 = add nsw i32 %154, %155
  %conv209 = sext i32 %add208 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end203
  %156 = load i64, ptr %iSize, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv209, %cond.true ], [ %156, %cond.false ]
  store i64 %cond, ptr %iEnd, align 8
  %157 = load i32, ptr @sqlite3PendingByte, align 4
  %158 = load i32, ptr %pgszSrc, align 4
  %add210 = add nsw i32 %157, %158
  %conv211 = sext i32 %add210 to i64
  store i64 %conv211, ptr %iOff, align 8
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc233, %cond.end
  %159 = load i32, ptr %rc, align 4
  %cmp213 = icmp eq i32 %159, 0
  br i1 %cmp213, label %land.rhs215, label %land.end218

land.rhs215:                                      ; preds = %for.cond212
  %160 = load i64, ptr %iOff, align 8
  %161 = load i64, ptr %iEnd, align 8
  %cmp216 = icmp slt i64 %160, %161
  br label %land.end218

land.end218:                                      ; preds = %land.rhs215, %for.cond212
  %162 = phi i1 [ false, %for.cond212 ], [ %cmp216, %land.rhs215 ]
  br i1 %162, label %for.body219, label %for.end236

for.body219:                                      ; preds = %land.end218
  store ptr null, ptr %pSrcPg220, align 8
  %163 = load i64, ptr %iOff, align 8
  %164 = load i32, ptr %pgszSrc, align 4
  %conv222 = sext i32 %164 to i64
  %div223 = sdiv i64 %163, %conv222
  %add224 = add nsw i64 %div223, 1
  %conv225 = trunc i64 %add224 to i32
  store i32 %conv225, ptr %iSrcPg221, align 4
  %165 = load ptr, ptr %pSrcPager, align 8
  %166 = load i32, ptr %iSrcPg221, align 4
  %call226 = call i32 @sqlite3PagerGet(ptr noundef %165, i32 noundef %166, ptr noundef %pSrcPg220, i32 noundef 0)
  store i32 %call226, ptr %rc, align 4
  %167 = load i32, ptr %rc, align 4
  %cmp227 = icmp eq i32 %167, 0
  br i1 %cmp227, label %if.then229, label %if.end232

if.then229:                                       ; preds = %for.body219
  %168 = load ptr, ptr %pSrcPg220, align 8
  %call230 = call ptr @sqlite3PagerGetData(ptr noundef %168)
  store ptr %call230, ptr %zData, align 8
  %169 = load ptr, ptr %pFile, align 8
  %170 = load ptr, ptr %zData, align 8
  %171 = load i32, ptr %pgszSrc, align 4
  %172 = load i64, ptr %iOff, align 8
  %call231 = call i32 @sqlite3OsWrite(ptr noundef %169, ptr noundef %170, i32 noundef %171, i64 noundef %172)
  store i32 %call231, ptr %rc, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then229, %for.body219
  %173 = load ptr, ptr %pSrcPg220, align 8
  call void @sqlite3PagerUnref(ptr noundef %173)
  br label %for.inc233

for.inc233:                                       ; preds = %if.end232
  %174 = load i32, ptr %pgszSrc, align 4
  %conv234 = sext i32 %174 to i64
  %175 = load i64, ptr %iOff, align 8
  %add235 = add nsw i64 %175, %conv234
  store i64 %add235, ptr %iOff, align 8
  br label %for.cond212, !llvm.loop !9

for.end236:                                       ; preds = %land.end218
  %176 = load i32, ptr %rc, align 4
  %cmp237 = icmp eq i32 %176, 0
  br i1 %cmp237, label %if.then239, label %if.end241

if.then239:                                       ; preds = %for.end236
  %177 = load ptr, ptr %pFile, align 8
  %178 = load i64, ptr %iSize, align 8
  %call240 = call i32 @backupTruncateFile(ptr noundef %177, i64 noundef %178)
  store i32 %call240, ptr %rc, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %for.end236
  %179 = load i32, ptr %rc, align 4
  %cmp242 = icmp eq i32 %179, 0
  br i1 %cmp242, label %if.then244, label %if.end246

if.then244:                                       ; preds = %if.end241
  %180 = load ptr, ptr %pDestPager, align 8
  %call245 = call i32 @sqlite3PagerSync(ptr noundef %180, ptr noundef null)
  store i32 %call245, ptr %rc, align 4
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.end241
  br label %if.end249

if.else247:                                       ; preds = %if.end165
  %181 = load ptr, ptr %pDestPager, align 8
  %182 = load i32, ptr %nDestTruncate, align 4
  call void @sqlite3PagerTruncateImage(ptr noundef %181, i32 noundef %182)
  %183 = load ptr, ptr %pDestPager, align 8
  %call248 = call i32 @sqlite3PagerCommitPhaseOne(ptr noundef %183, ptr noundef null, i32 noundef 0)
  store i32 %call248, ptr %rc, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.else247, %if.end246
  %184 = load i32, ptr %rc, align 4
  %cmp250 = icmp eq i32 0, %184
  br i1 %cmp250, label %land.lhs.true252, label %if.end258

land.lhs.true252:                                 ; preds = %if.end249
  %185 = load ptr, ptr %p.addr, align 8
  %pDest253 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %185, i32 0, i32 1
  %186 = load ptr, ptr %pDest253, align 8
  %call254 = call i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef %186, i32 noundef 0)
  store i32 %call254, ptr %rc, align 4
  %cmp255 = icmp eq i32 0, %call254
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %land.lhs.true252
  store i32 101, ptr %rc, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %land.lhs.true252, %if.end249
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.end143
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.end108
  %187 = load i32, ptr %bCloseTrans, align 4
  %tobool261 = icmp ne i32 %187, 0
  br i1 %tobool261, label %if.then262, label %if.end267

if.then262:                                       ; preds = %if.end260
  %188 = load ptr, ptr %p.addr, align 8
  %pSrc263 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %188, i32 0, i32 6
  %189 = load ptr, ptr %pSrc263, align 8
  %call264 = call i32 @sqlite3BtreeCommitPhaseOne(ptr noundef %189, ptr noundef null)
  %190 = load ptr, ptr %p.addr, align 8
  %pSrc265 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %190, i32 0, i32 6
  %191 = load ptr, ptr %pSrc265, align 8
  %call266 = call i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef %191, i32 noundef 0)
  br label %if.end267

if.end267:                                        ; preds = %if.then262, %if.end260
  %192 = load i32, ptr %rc, align 4
  %cmp268 = icmp eq i32 %192, 3082
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %if.end267
  store i32 7, ptr %rc, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %if.end267
  %193 = load i32, ptr %rc, align 4
  %194 = load ptr, ptr %p.addr, align 8
  %rc272 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %194, i32 0, i32 7
  store i32 %193, ptr %rc272, align 8
  br label %if.end273

if.end273:                                        ; preds = %if.end271, %if.end
  %195 = load ptr, ptr %p.addr, align 8
  %pDestDb274 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %195, i32 0, i32 0
  %196 = load ptr, ptr %pDestDb274, align 8
  %tobool275 = icmp ne ptr %196, null
  br i1 %tobool275, label %if.then276, label %if.end279

if.then276:                                       ; preds = %if.end273
  %197 = load ptr, ptr %p.addr, align 8
  %pDestDb277 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %197, i32 0, i32 0
  %198 = load ptr, ptr %pDestDb277, align 8
  %mutex278 = getelementptr inbounds nuw %struct.sqlite3, ptr %198, i32 0, i32 3
  %199 = load ptr, ptr %mutex278, align 8
  call void @sqlite3_mutex_leave(ptr noundef %199)
  br label %if.end279

if.end279:                                        ; preds = %if.then276, %if.end273
  %200 = load ptr, ptr %p.addr, align 8
  %pSrc280 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %200, i32 0, i32 6
  %201 = load ptr, ptr %pSrc280, align 8
  call void @sqlite3BtreeLeave(ptr noundef %201)
  %202 = load ptr, ptr %p.addr, align 8
  %pSrcDb281 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %202, i32 0, i32 5
  %203 = load ptr, ptr %pSrcDb281, align 8
  %mutex282 = getelementptr inbounds nuw %struct.sqlite3, ptr %203, i32 0, i32 3
  %204 = load ptr, ptr %mutex282, align 8
  call void @sqlite3_mutex_leave(ptr noundef %204)
  %205 = load i32, ptr %rc, align 4
  ret i32 %205
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isFatalError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInReadTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginTrans(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @setDestPgsz(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetPageSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGetJournalMode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeLastPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @backupOnePage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetData(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @attachBackupObject(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeNewDb(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeUpdateMeta(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetVersion(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerPagecount(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerCommitPhaseOne(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @backupTruncateFile(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSync(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerTruncateImage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommitPhaseOne(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

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
