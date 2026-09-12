; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeBeginTrans(ptr noundef %p, i32 noundef %wrflag, ptr noundef %pSchemaVersion) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %wrflag.addr = alloca i32, align 4
  %pSchemaVersion.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBlock = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  %pPage1158 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %wrflag, ptr %wrflag.addr, align 4
  store ptr %pSchemaVersion, ptr %pSchemaVersion.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %inTrans, align 8
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %inTrans3 = getelementptr inbounds nuw %struct.Btree, ptr %5, i32 0, i32 2
  %6 = load i8, ptr %inTrans3, align 8
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i32, ptr %wrflag.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %trans_begun

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Btree, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 7
  %10 = load i64, ptr %flags, align 8
  %and = and i64 %10, 33554432
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end16

land.lhs.true8:                                   ; preds = %if.end
  %11 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pPager, align 8
  %call = call zeroext i8 @sqlite3PagerIsreadonly(ptr noundef %12)
  %conv9 = zext i8 %call to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true8
  %13 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %13, i32 0, i32 10
  %14 = load i16, ptr %btsFlags, align 2
  %conv13 = zext i16 %14 to i32
  %and14 = and i32 %conv13, -2
  %conv15 = trunc i32 %and14 to i16
  store i16 %conv15, ptr %btsFlags, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true8, %if.end
  %15 = load ptr, ptr %pBt, align 8
  %btsFlags17 = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 10
  %16 = load i16, ptr %btsFlags17, align 2
  %conv18 = zext i16 %16 to i32
  %and19 = and i32 %conv18, 1
  %cmp20 = icmp ne i32 %and19, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.end25

land.lhs.true22:                                  ; preds = %if.end16
  %17 = load i32, ptr %wrflag.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true22
  store i32 8, ptr %rc, align 4
  br label %trans_begun

if.end25:                                         ; preds = %land.lhs.true22, %if.end16
  store ptr null, ptr %pBlock, align 8
  %18 = load i32, ptr %wrflag.addr, align 4
  %tobool26 = icmp ne i32 %18, 0
  br i1 %tobool26, label %land.lhs.true27, label %lor.lhs.false31

land.lhs.true27:                                  ; preds = %if.end25
  %19 = load ptr, ptr %pBt, align 8
  %inTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %19, i32 0, i32 8
  %20 = load i8, ptr %inTransaction, align 4
  %conv28 = zext i8 %20 to i32
  %cmp29 = icmp eq i32 %conv28, 2
  br i1 %cmp29, label %if.then37, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true27, %if.end25
  %21 = load ptr, ptr %pBt, align 8
  %btsFlags32 = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 10
  %22 = load i16, ptr %btsFlags32, align 2
  %conv33 = zext i16 %22 to i32
  %and34 = and i32 %conv33, 128
  %cmp35 = icmp ne i32 %and34, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %lor.lhs.false31, %land.lhs.true27
  %23 = load ptr, ptr %pBt, align 8
  %pWriter = getelementptr inbounds nuw %struct.BtShared, ptr %23, i32 0, i32 26
  %24 = load ptr, ptr %pWriter, align 8
  %db38 = getelementptr inbounds nuw %struct.Btree, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %db38, align 8
  store ptr %25, ptr %pBlock, align 8
  br label %if.end50

if.else:                                          ; preds = %lor.lhs.false31
  %26 = load i32, ptr %wrflag.addr, align 4
  %cmp39 = icmp sgt i32 %26, 1
  br i1 %cmp39, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.else
  %27 = load ptr, ptr %pBt, align 8
  %pLock = getelementptr inbounds nuw %struct.BtShared, ptr %27, i32 0, i32 25
  %28 = load ptr, ptr %pLock, align 8
  store ptr %28, ptr %pIter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then41
  %29 = load ptr, ptr %pIter, align 8
  %tobool42 = icmp ne ptr %29, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %pIter, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtLock, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %pBtree, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %cmp43 = icmp ne ptr %31, %32
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %for.body
  %33 = load ptr, ptr %pIter, align 8
  %pBtree46 = getelementptr inbounds nuw %struct.BtLock, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pBtree46, align 8
  %db47 = getelementptr inbounds nuw %struct.Btree, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %db47, align 8
  store ptr %35, ptr %pBlock, align 8
  br label %for.end

if.end48:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %36 = load ptr, ptr %pIter, align 8
  %pNext = getelementptr inbounds nuw %struct.BtLock, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %pNext, align 8
  store ptr %37, ptr %pIter, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then45, %for.cond
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.else
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then37
  %38 = load ptr, ptr %pBlock, align 8
  %tobool51 = icmp ne ptr %38, null
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end50
  store i32 262, ptr %rc, align 4
  br label %trans_begun

if.end53:                                         ; preds = %if.end50
  %39 = load ptr, ptr %p.addr, align 8
  %call54 = call i32 @querySharedCacheTableLock(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1)
  store i32 %call54, ptr %rc, align 4
  %40 = load i32, ptr %rc, align 4
  %cmp55 = icmp ne i32 0, %40
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  br label %trans_begun

if.end58:                                         ; preds = %if.end53
  %41 = load ptr, ptr %pBt, align 8
  %btsFlags59 = getelementptr inbounds nuw %struct.BtShared, ptr %41, i32 0, i32 10
  %42 = load i16, ptr %btsFlags59, align 2
  %conv60 = zext i16 %42 to i32
  %and61 = and i32 %conv60, -17
  %conv62 = trunc i32 %and61 to i16
  store i16 %conv62, ptr %btsFlags59, align 2
  %43 = load ptr, ptr %pBt, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %43, i32 0, i32 18
  %44 = load i32, ptr %nPage, align 4
  %cmp63 = icmp eq i32 %44, 0
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end58
  %45 = load ptr, ptr %pBt, align 8
  %btsFlags66 = getelementptr inbounds nuw %struct.BtShared, ptr %45, i32 0, i32 10
  %46 = load i16, ptr %btsFlags66, align 2
  %conv67 = zext i16 %46 to i32
  %or = or i32 %conv67, 16
  %conv68 = trunc i32 %or to i16
  store i16 %conv68, ptr %btsFlags66, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end58
  br label %do.body

do.body:                                          ; preds = %land.end125, %if.end69
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %47 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %47, i32 0, i32 3
  %48 = load ptr, ptr %pPage1, align 8
  %cmp70 = icmp eq ptr %48, null
  br i1 %cmp70, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %49 = load ptr, ptr %pBt, align 8
  %call72 = call i32 @lockBtree(ptr noundef %49)
  store i32 %call72, ptr %rc, align 4
  %cmp73 = icmp eq i32 0, %call72
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %cmp73, %land.rhs ]
  br i1 %50, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %51 = load i32, ptr %rc, align 4
  %cmp75 = icmp eq i32 %51, 0
  br i1 %cmp75, label %land.lhs.true77, label %if.end109

land.lhs.true77:                                  ; preds = %while.end
  %52 = load i32, ptr %wrflag.addr, align 4
  %tobool78 = icmp ne i32 %52, 0
  br i1 %tobool78, label %if.then79, label %if.end109

if.then79:                                        ; preds = %land.lhs.true77
  %53 = load ptr, ptr %pBt, align 8
  %btsFlags80 = getelementptr inbounds nuw %struct.BtShared, ptr %53, i32 0, i32 10
  %54 = load i16, ptr %btsFlags80, align 2
  %conv81 = zext i16 %54 to i32
  %and82 = and i32 %conv81, 1
  %cmp83 = icmp ne i32 %and82, 0
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.then79
  store i32 8, ptr %rc, align 4
  br label %if.end108

if.else86:                                        ; preds = %if.then79
  %55 = load ptr, ptr %pBt, align 8
  %pPager87 = getelementptr inbounds nuw %struct.BtShared, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pPager87, align 8
  %57 = load i32, ptr %wrflag.addr, align 4
  %cmp88 = icmp sgt i32 %57, 1
  %conv89 = zext i1 %cmp88 to i32
  %58 = load ptr, ptr %p.addr, align 8
  %db90 = getelementptr inbounds nuw %struct.Btree, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %db90, align 8
  %call91 = call i32 @sqlite3TempInMemory(ptr noundef %59)
  %call92 = call i32 @sqlite3PagerBegin(ptr noundef %56, i32 noundef %conv89, i32 noundef %call91)
  store i32 %call92, ptr %rc, align 4
  %60 = load i32, ptr %rc, align 4
  %cmp93 = icmp eq i32 %60, 0
  br i1 %cmp93, label %if.then95, label %if.else97

if.then95:                                        ; preds = %if.else86
  %61 = load ptr, ptr %pBt, align 8
  %call96 = call i32 @newDatabase(ptr noundef %61)
  store i32 %call96, ptr %rc, align 4
  br label %if.end107

if.else97:                                        ; preds = %if.else86
  %62 = load i32, ptr %rc, align 4
  %cmp98 = icmp eq i32 %62, 517
  br i1 %cmp98, label %land.lhs.true100, label %if.end106

land.lhs.true100:                                 ; preds = %if.else97
  %63 = load ptr, ptr %pBt, align 8
  %inTransaction101 = getelementptr inbounds nuw %struct.BtShared, ptr %63, i32 0, i32 8
  %64 = load i8, ptr %inTransaction101, align 4
  %conv102 = zext i8 %64 to i32
  %cmp103 = icmp eq i32 %conv102, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %land.lhs.true100
  store i32 5, ptr %rc, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %land.lhs.true100, %if.else97
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then95
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then85
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %land.lhs.true77, %while.end
  %65 = load i32, ptr %rc, align 4
  %cmp110 = icmp ne i32 %65, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end109
  %66 = load ptr, ptr %pBt, align 8
  call void @unlockBtreeIfUnused(ptr noundef %66)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end109
  br label %do.cond

do.cond:                                          ; preds = %if.end113
  %67 = load i32, ptr %rc, align 4
  %and114 = and i32 %67, 255
  %cmp115 = icmp eq i32 %and114, 5
  br i1 %cmp115, label %land.lhs.true117, label %land.end125

land.lhs.true117:                                 ; preds = %do.cond
  %68 = load ptr, ptr %pBt, align 8
  %inTransaction118 = getelementptr inbounds nuw %struct.BtShared, ptr %68, i32 0, i32 8
  %69 = load i8, ptr %inTransaction118, align 4
  %conv119 = zext i8 %69 to i32
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.rhs122, label %land.end125

land.rhs122:                                      ; preds = %land.lhs.true117
  %70 = load ptr, ptr %pBt, align 8
  %call123 = call i32 @btreeInvokeBusyHandler(ptr noundef %70)
  %tobool124 = icmp ne i32 %call123, 0
  br label %land.end125

land.end125:                                      ; preds = %land.rhs122, %land.lhs.true117, %do.cond
  %71 = phi i1 [ false, %land.lhs.true117 ], [ false, %do.cond ], [ %tobool124, %land.rhs122 ]
  br i1 %71, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %land.end125
  %72 = load i32, ptr %rc, align 4
  %cmp126 = icmp eq i32 %72, 0
  br i1 %cmp126, label %if.then128, label %if.end188

if.then128:                                       ; preds = %do.end
  %73 = load ptr, ptr %p.addr, align 8
  %inTrans129 = getelementptr inbounds nuw %struct.Btree, ptr %73, i32 0, i32 2
  %74 = load i8, ptr %inTrans129, align 8
  %conv130 = zext i8 %74 to i32
  %cmp131 = icmp eq i32 %conv130, 0
  br i1 %cmp131, label %if.then133, label %if.end142

if.then133:                                       ; preds = %if.then128
  %75 = load ptr, ptr %pBt, align 8
  %nTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %75, i32 0, i32 17
  %76 = load i32, ptr %nTransaction, align 8
  %inc = add nsw i32 %76, 1
  store i32 %inc, ptr %nTransaction, align 8
  %77 = load ptr, ptr %p.addr, align 8
  %sharable = getelementptr inbounds nuw %struct.Btree, ptr %77, i32 0, i32 3
  %78 = load i8, ptr %sharable, align 1
  %tobool134 = icmp ne i8 %78, 0
  br i1 %tobool134, label %if.then135, label %if.end141

if.then135:                                       ; preds = %if.then133
  %79 = load ptr, ptr %p.addr, align 8
  %lock = getelementptr inbounds nuw %struct.Btree, ptr %79, i32 0, i32 11
  %eLock = getelementptr inbounds nuw %struct.BtLock, ptr %lock, i32 0, i32 2
  store i8 1, ptr %eLock, align 4
  %80 = load ptr, ptr %pBt, align 8
  %pLock136 = getelementptr inbounds nuw %struct.BtShared, ptr %80, i32 0, i32 25
  %81 = load ptr, ptr %pLock136, align 8
  %82 = load ptr, ptr %p.addr, align 8
  %lock137 = getelementptr inbounds nuw %struct.Btree, ptr %82, i32 0, i32 11
  %pNext138 = getelementptr inbounds nuw %struct.BtLock, ptr %lock137, i32 0, i32 3
  store ptr %81, ptr %pNext138, align 8
  %83 = load ptr, ptr %p.addr, align 8
  %lock139 = getelementptr inbounds nuw %struct.Btree, ptr %83, i32 0, i32 11
  %84 = load ptr, ptr %pBt, align 8
  %pLock140 = getelementptr inbounds nuw %struct.BtShared, ptr %84, i32 0, i32 25
  store ptr %lock139, ptr %pLock140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %if.then133
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then128
  %85 = load i32, ptr %wrflag.addr, align 4
  %tobool143 = icmp ne i32 %85, 0
  %86 = zext i1 %tobool143 to i64
  %cond = select i1 %tobool143, i32 2, i32 1
  %conv144 = trunc i32 %cond to i8
  %87 = load ptr, ptr %p.addr, align 8
  %inTrans145 = getelementptr inbounds nuw %struct.Btree, ptr %87, i32 0, i32 2
  store i8 %conv144, ptr %inTrans145, align 8
  %88 = load ptr, ptr %p.addr, align 8
  %inTrans146 = getelementptr inbounds nuw %struct.Btree, ptr %88, i32 0, i32 2
  %89 = load i8, ptr %inTrans146, align 8
  %conv147 = zext i8 %89 to i32
  %90 = load ptr, ptr %pBt, align 8
  %inTransaction148 = getelementptr inbounds nuw %struct.BtShared, ptr %90, i32 0, i32 8
  %91 = load i8, ptr %inTransaction148, align 4
  %conv149 = zext i8 %91 to i32
  %cmp150 = icmp sgt i32 %conv147, %conv149
  br i1 %cmp150, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end142
  %92 = load ptr, ptr %p.addr, align 8
  %inTrans153 = getelementptr inbounds nuw %struct.Btree, ptr %92, i32 0, i32 2
  %93 = load i8, ptr %inTrans153, align 8
  %94 = load ptr, ptr %pBt, align 8
  %inTransaction154 = getelementptr inbounds nuw %struct.BtShared, ptr %94, i32 0, i32 8
  store i8 %93, ptr %inTransaction154, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end142
  %95 = load i32, ptr %wrflag.addr, align 4
  %tobool156 = icmp ne i32 %95, 0
  br i1 %tobool156, label %if.then157, label %if.end187

if.then157:                                       ; preds = %if.end155
  %96 = load ptr, ptr %pBt, align 8
  %pPage1159 = getelementptr inbounds nuw %struct.BtShared, ptr %96, i32 0, i32 3
  %97 = load ptr, ptr %pPage1159, align 8
  store ptr %97, ptr %pPage1158, align 8
  %98 = load ptr, ptr %p.addr, align 8
  %99 = load ptr, ptr %pBt, align 8
  %pWriter160 = getelementptr inbounds nuw %struct.BtShared, ptr %99, i32 0, i32 26
  store ptr %98, ptr %pWriter160, align 8
  %100 = load ptr, ptr %pBt, align 8
  %btsFlags161 = getelementptr inbounds nuw %struct.BtShared, ptr %100, i32 0, i32 10
  %101 = load i16, ptr %btsFlags161, align 2
  %conv162 = zext i16 %101 to i32
  %and163 = and i32 %conv162, -65
  %conv164 = trunc i32 %and163 to i16
  store i16 %conv164, ptr %btsFlags161, align 2
  %102 = load i32, ptr %wrflag.addr, align 4
  %cmp165 = icmp sgt i32 %102, 1
  br i1 %cmp165, label %if.then167, label %if.end172

if.then167:                                       ; preds = %if.then157
  %103 = load ptr, ptr %pBt, align 8
  %btsFlags168 = getelementptr inbounds nuw %struct.BtShared, ptr %103, i32 0, i32 10
  %104 = load i16, ptr %btsFlags168, align 2
  %conv169 = zext i16 %104 to i32
  %or170 = or i32 %conv169, 64
  %conv171 = trunc i32 %or170 to i16
  store i16 %conv171, ptr %btsFlags168, align 2
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %if.then157
  %105 = load ptr, ptr %pBt, align 8
  %nPage173 = getelementptr inbounds nuw %struct.BtShared, ptr %105, i32 0, i32 18
  %106 = load i32, ptr %nPage173, align 4
  %107 = load ptr, ptr %pPage1158, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %107, i32 0, i32 19
  %108 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %108, i64 28
  %call174 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  %cmp175 = icmp ne i32 %106, %call174
  br i1 %cmp175, label %if.then177, label %if.end186

if.then177:                                       ; preds = %if.end172
  %109 = load ptr, ptr %pPage1158, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %109, i32 0, i32 23
  %110 = load ptr, ptr %pDbPage, align 8
  %call178 = call i32 @sqlite3PagerWrite(ptr noundef %110)
  store i32 %call178, ptr %rc, align 4
  %111 = load i32, ptr %rc, align 4
  %cmp179 = icmp eq i32 %111, 0
  br i1 %cmp179, label %if.then181, label %if.end185

if.then181:                                       ; preds = %if.then177
  %112 = load ptr, ptr %pPage1158, align 8
  %aData182 = getelementptr inbounds nuw %struct.MemPage, ptr %112, i32 0, i32 19
  %113 = load ptr, ptr %aData182, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %113, i64 28
  %114 = load ptr, ptr %pBt, align 8
  %nPage184 = getelementptr inbounds nuw %struct.BtShared, ptr %114, i32 0, i32 18
  %115 = load i32, ptr %nPage184, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx183, i32 noundef %115)
  br label %if.end185

if.end185:                                        ; preds = %if.then181, %if.then177
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end172
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.end155
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %do.end
  br label %trans_begun

trans_begun:                                      ; preds = %if.end188, %if.then57, %if.then52, %if.then24, %if.then
  %116 = load i32, ptr %rc, align 4
  %cmp189 = icmp eq i32 %116, 0
  br i1 %cmp189, label %if.then191, label %if.end205

if.then191:                                       ; preds = %trans_begun
  %117 = load ptr, ptr %pSchemaVersion.addr, align 8
  %tobool192 = icmp ne ptr %117, null
  br i1 %tobool192, label %if.then193, label %if.end198

if.then193:                                       ; preds = %if.then191
  %118 = load ptr, ptr %pBt, align 8
  %pPage1194 = getelementptr inbounds nuw %struct.BtShared, ptr %118, i32 0, i32 3
  %119 = load ptr, ptr %pPage1194, align 8
  %aData195 = getelementptr inbounds nuw %struct.MemPage, ptr %119, i32 0, i32 19
  %120 = load ptr, ptr %aData195, align 8
  %arrayidx196 = getelementptr inbounds i8, ptr %120, i64 40
  %call197 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx196)
  %121 = load ptr, ptr %pSchemaVersion.addr, align 8
  store i32 %call197, ptr %121, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then193, %if.then191
  %122 = load i32, ptr %wrflag.addr, align 4
  %tobool199 = icmp ne i32 %122, 0
  br i1 %tobool199, label %if.then200, label %if.end204

if.then200:                                       ; preds = %if.end198
  %123 = load ptr, ptr %pBt, align 8
  %pPager201 = getelementptr inbounds nuw %struct.BtShared, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %pPager201, align 8
  %125 = load ptr, ptr %p.addr, align 8
  %db202 = getelementptr inbounds nuw %struct.Btree, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %db202, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %126, i32 0, i32 78
  %127 = load i32, ptr %nSavepoint, align 4
  %call203 = call i32 @sqlite3PagerOpenSavepoint(ptr noundef %124, i32 noundef %127)
  store i32 %call203, ptr %rc, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then200, %if.end198
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %trans_begun
  %128 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %128)
  %129 = load i32, ptr %rc, align 4
  ret i32 %129
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TempInMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInvokeBusyHandler(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3PagerIsreadonly(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @querySharedCacheTableLock(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @lockBtree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerBegin(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @newDatabase(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unlockBtreeIfUnused(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerOpenSavepoint(ptr noundef, i32 noundef) #0

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
