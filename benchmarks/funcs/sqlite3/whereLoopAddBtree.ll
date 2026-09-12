; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext, i16 noundef signext) #1

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopAddBtree(ptr noundef %pBuilder, i64 noundef %mPrereq) #1 {
entry:
  %pBuilder.addr = alloca ptr, align 8
  %mPrereq.addr = alloca i64, align 8
  %pWInfo = alloca ptr, align 8
  %pProbe = alloca ptr, align 8
  %sPk = alloca %struct.Index, align 8
  %aiRowEstPk = alloca [2 x i16], align 2
  %aiColumnPk = alloca i16, align 2
  %pTabList = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iSortIdx = alloca i32, align 4
  %b = alloca i32, align 4
  %rSize = alloca i16, align 2
  %rLogSize = alloca i16, align 2
  %pWC = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pFirst = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pWCEnd = alloca ptr, align 8
  %m = alloca i64, align 8
  %nLookup = alloca i16, align 2
  %ii = alloca i32, align 4
  %iCur = alloca i32, align 4
  %pWC2 = alloca ptr, align 8
  %pTerm256 = alloca ptr, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store i64 %mPrereq, ptr %mPrereq.addr, align 8
  store i16 -1, ptr %aiColumnPk, align 2
  store i32 0, ptr %rc, align 4
  store i32 1, ptr %iSortIdx, align 4
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pNew1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pNew1, align 8
  store ptr %1, ptr %pNew, align 8
  %2 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo2 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pWInfo2, align 8
  store ptr %3, ptr %pWInfo, align 8
  %4 = load ptr, ptr %pWInfo, align 8
  %pTabList3 = getelementptr inbounds nuw %struct.WhereInfo, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pTabList3, align 8
  store ptr %5, ptr %pTabList, align 8
  %6 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %7 = load ptr, ptr %pNew, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %iTab, align 8
  %conv = zext i8 %8 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds %struct.SrcList_item, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %pSrc, align 8
  %9 = load ptr, ptr %pSrc, align 8
  %pTab4 = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pTab4, align 8
  store ptr %10, ptr %pTab, align 8
  %11 = load ptr, ptr %pBuilder.addr, align 8
  %pWC5 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pWC5, align 8
  store ptr %12, ptr %pWC, align 8
  %13 = load ptr, ptr %pSrc, align 8
  %pIBIndex = getelementptr inbounds nuw %struct.SrcList_item, ptr %13, i32 0, i32 15
  %14 = load ptr, ptr %pIBIndex, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %pSrc, align 8
  %pIBIndex6 = getelementptr inbounds nuw %struct.SrcList_item, ptr %15, i32 0, i32 15
  %16 = load ptr, ptr %pIBIndex6, align 8
  store ptr %16, ptr %pProbe, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %tabFlags, align 8
  %and = and i32 %18, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.else9, label %if.then8

if.then8:                                         ; preds = %if.else
  %19 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pIndex, align 8
  store ptr %20, ptr %pProbe, align 8
  br label %if.end19

if.else9:                                         ; preds = %if.else
  call void @llvm.memset.p0.i64(ptr align 8 %sPk, i8 0, i64 112, i1 false)
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 13
  store i16 1, ptr %nKeyCol, align 2
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 14
  store i16 1, ptr %nColumn, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 1
  store ptr %aiColumnPk, ptr %aiColumn, align 8
  %arraydecay10 = getelementptr inbounds [2 x i16], ptr %aiRowEstPk, i64 0, i64 0
  %aiRowLogEst = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 2
  store ptr %arraydecay10, ptr %aiRowLogEst, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 15
  store i8 5, ptr %onError, align 2
  %21 = load ptr, ptr %pTab, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 3
  store ptr %21, ptr %pTable, align 8
  %22 = load ptr, ptr %pTab, align 8
  %szTabRow = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 13
  %23 = load i16, ptr %szTabRow, align 2
  %szIdxRow = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 12
  store i16 %23, ptr %szIdxRow, align 4
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, -4
  %bf.set = or i16 %bf.clear, 3
  store i16 %bf.set, ptr %idxType, align 1
  %24 = load ptr, ptr %pTab, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 12
  %25 = load i16, ptr %nRowLogEst, align 8
  %arrayidx = getelementptr inbounds [2 x i16], ptr %aiRowEstPk, i64 0, i64 0
  store i16 %25, ptr %arrayidx, align 2
  %arrayidx11 = getelementptr inbounds [2 x i16], ptr %aiRowEstPk, i64 0, i64 1
  store i16 0, ptr %arrayidx11, align 2
  %26 = load ptr, ptr %pSrc, align 8
  %pTab12 = getelementptr inbounds nuw %struct.SrcList_item, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pTab12, align 8
  %pIndex13 = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pIndex13, align 8
  store ptr %28, ptr %pFirst, align 8
  %29 = load ptr, ptr %pSrc, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 9
  %notIndexed = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load14 = load i8, ptr %notIndexed, align 1
  %bf.clear15 = and i8 %bf.load14, 1
  %bf.cast = zext i8 %bf.clear15 to i32
  %cmp16 = icmp eq i32 %bf.cast, 0
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.else9
  %30 = load ptr, ptr %pFirst, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %sPk, i32 0, i32 5
  store ptr %30, ptr %pNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.else9
  store ptr %sPk, ptr %pProbe, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  %31 = load ptr, ptr %pTab, align 8
  %nRowLogEst21 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 12
  %32 = load i16, ptr %nRowLogEst21, align 8
  store i16 %32, ptr %rSize, align 2
  %33 = load i16, ptr %rSize, align 2
  %call = call signext i16 @estLog(i16 noundef signext %33)
  store i16 %call, ptr %rLogSize, align 2
  %34 = load ptr, ptr %pBuilder.addr, align 8
  %pOrSet = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %pOrSet, align 8
  %tobool22 = icmp ne ptr %35, null
  br i1 %tobool22, label %if.end111, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %36 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags = getelementptr inbounds nuw %struct.WhereInfo, ptr %36, i32 0, i32 10
  %37 = load i16, ptr %wctrlFlags, align 8
  %conv23 = zext i16 %37 to i32
  %and24 = and i32 %conv23, 32
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %land.lhs.true27, label %if.end111

land.lhs.true27:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %pWInfo, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 7
  %41 = load i64, ptr %flags, align 8
  %and28 = and i64 %41, 32768
  %cmp29 = icmp ne i64 %and28, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end111

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %42 = load ptr, ptr %pSrc, align 8
  %pIBIndex32 = getelementptr inbounds nuw %struct.SrcList_item, ptr %42, i32 0, i32 15
  %43 = load ptr, ptr %pIBIndex32, align 8
  %cmp33 = icmp eq ptr %43, null
  br i1 %cmp33, label %land.lhs.true35, label %if.end111

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %44 = load ptr, ptr %pSrc, align 8
  %fg36 = getelementptr inbounds nuw %struct.SrcList_item, ptr %44, i32 0, i32 9
  %notIndexed37 = getelementptr inbounds nuw %struct.anon, ptr %fg36, i32 0, i32 1
  %bf.load38 = load i8, ptr %notIndexed37, align 1
  %bf.clear39 = and i8 %bf.load38, 1
  %bf.cast40 = zext i8 %bf.clear39 to i32
  %tobool41 = icmp ne i32 %bf.cast40, 0
  br i1 %tobool41, label %if.end111, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true35
  %45 = load ptr, ptr %pTab, align 8
  %tabFlags43 = getelementptr inbounds nuw %struct.Table, ptr %45, i32 0, i32 9
  %46 = load i32, ptr %tabFlags43, align 8
  %and44 = and i32 %46, 32
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %land.lhs.true47, label %if.end111

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %47 = load ptr, ptr %pSrc, align 8
  %fg48 = getelementptr inbounds nuw %struct.SrcList_item, ptr %47, i32 0, i32 9
  %isCorrelated = getelementptr inbounds nuw %struct.anon, ptr %fg48, i32 0, i32 1
  %bf.load49 = load i8, ptr %isCorrelated, align 1
  %bf.lshr = lshr i8 %bf.load49, 3
  %bf.clear50 = and i8 %bf.lshr, 1
  %bf.cast51 = zext i8 %bf.clear50 to i32
  %tobool52 = icmp ne i32 %bf.cast51, 0
  br i1 %tobool52, label %if.end111, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %48 = load ptr, ptr %pSrc, align 8
  %fg54 = getelementptr inbounds nuw %struct.SrcList_item, ptr %48, i32 0, i32 9
  %isRecursive = getelementptr inbounds nuw %struct.anon, ptr %fg54, i32 0, i32 1
  %bf.load55 = load i8, ptr %isRecursive, align 1
  %bf.lshr56 = lshr i8 %bf.load55, 5
  %bf.clear57 = and i8 %bf.lshr56, 1
  %bf.cast58 = zext i8 %bf.clear57 to i32
  %tobool59 = icmp ne i32 %bf.cast58, 0
  br i1 %tobool59, label %if.end111, label %if.then60

if.then60:                                        ; preds = %land.lhs.true53
  %49 = load ptr, ptr %pWC, align 8
  %a61 = getelementptr inbounds nuw %struct.WhereClause, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %a61, align 8
  %51 = load ptr, ptr %pWC, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %51, i32 0, i32 4
  %52 = load i32, ptr %nTerm, align 4
  %idx.ext62 = sext i32 %52 to i64
  %add.ptr63 = getelementptr inbounds %struct.WhereTerm, ptr %50, i64 %idx.ext62
  store ptr %add.ptr63, ptr %pWCEnd, align 8
  %53 = load ptr, ptr %pWC, align 8
  %a64 = getelementptr inbounds nuw %struct.WhereClause, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %a64, align 8
  store ptr %54, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then60
  %55 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %55, 0
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %56 = load ptr, ptr %pTerm, align 8
  %57 = load ptr, ptr %pWCEnd, align 8
  %cmp67 = icmp ult ptr %56, %57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %58 = phi i1 [ false, %for.cond ], [ %cmp67, %land.rhs ]
  br i1 %58, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %59 = load ptr, ptr %pTerm, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %59, i32 0, i32 11
  %60 = load i64, ptr %prereqRight, align 8
  %61 = load ptr, ptr %pNew, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %maskSelf, align 8
  %and69 = and i64 %60, %62
  %tobool70 = icmp ne i64 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.body
  br label %for.inc

if.end72:                                         ; preds = %for.body
  %63 = load ptr, ptr %pTerm, align 8
  %64 = load ptr, ptr %pSrc, align 8
  %call73 = call i32 @termCanDriveIndex(ptr noundef %63, ptr noundef %64, i64 noundef 0)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end110

if.then75:                                        ; preds = %if.end72
  %65 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %65, i32 0, i32 7
  %nEq = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 0
  store i16 1, ptr %nEq, align 8
  %66 = load ptr, ptr %pNew, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %66, i32 0, i32 10
  store i16 0, ptr %nSkip, align 2
  %67 = load ptr, ptr %pNew, align 8
  %u76 = getelementptr inbounds nuw %struct.WhereLoop, ptr %67, i32 0, i32 7
  %pIndex77 = getelementptr inbounds nuw %struct.anon.19, ptr %u76, i32 0, i32 4
  store ptr null, ptr %pIndex77, align 8
  %68 = load ptr, ptr %pNew, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %68, i32 0, i32 9
  store i16 1, ptr %nLTerm, align 4
  %69 = load ptr, ptr %pTerm, align 8
  %70 = load ptr, ptr %pNew, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %aLTerm, align 8
  %arrayidx78 = getelementptr inbounds ptr, ptr %71, i64 0
  store ptr %69, ptr %arrayidx78, align 8
  %72 = load i16, ptr %rLogSize, align 2
  %conv79 = sext i16 %72 to i32
  %73 = load i16, ptr %rSize, align 2
  %conv80 = sext i16 %73 to i32
  %add = add nsw i32 %conv79, %conv80
  %conv81 = trunc i32 %add to i16
  %74 = load ptr, ptr %pNew, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %74, i32 0, i32 4
  store i16 %conv81, ptr %rSetup, align 2
  %75 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %75, i32 0, i32 3
  %76 = load ptr, ptr %pSelect, align 8
  %cmp82 = icmp eq ptr %76, null
  br i1 %cmp82, label %land.lhs.true84, label %if.else94

land.lhs.true84:                                  ; preds = %if.then75
  %77 = load ptr, ptr %pTab, align 8
  %tabFlags85 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 9
  %78 = load i32, ptr %tabFlags85, align 8
  %and86 = and i32 %78, 2
  %cmp87 = icmp eq i32 %and86, 0
  br i1 %cmp87, label %if.then89, label %if.else94

if.then89:                                        ; preds = %land.lhs.true84
  %79 = load ptr, ptr %pNew, align 8
  %rSetup90 = getelementptr inbounds nuw %struct.WhereLoop, ptr %79, i32 0, i32 4
  %80 = load i16, ptr %rSetup90, align 2
  %conv91 = sext i16 %80 to i32
  %add92 = add nsw i32 %conv91, 28
  %conv93 = trunc i32 %add92 to i16
  store i16 %conv93, ptr %rSetup90, align 2
  br label %if.end98

if.else94:                                        ; preds = %land.lhs.true84, %if.then75
  %81 = load ptr, ptr %pNew, align 8
  %rSetup95 = getelementptr inbounds nuw %struct.WhereLoop, ptr %81, i32 0, i32 4
  %82 = load i16, ptr %rSetup95, align 2
  %conv96 = sext i16 %82 to i32
  %sub = sub nsw i32 %conv96, 10
  %conv97 = trunc i32 %sub to i16
  store i16 %conv97, ptr %rSetup95, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.else94, %if.then89
  %83 = load ptr, ptr %pNew, align 8
  %rSetup99 = getelementptr inbounds nuw %struct.WhereLoop, ptr %83, i32 0, i32 4
  %84 = load i16, ptr %rSetup99, align 2
  %conv100 = sext i16 %84 to i32
  %cmp101 = icmp slt i32 %conv100, 0
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end98
  %85 = load ptr, ptr %pNew, align 8
  %rSetup104 = getelementptr inbounds nuw %struct.WhereLoop, ptr %85, i32 0, i32 4
  store i16 0, ptr %rSetup104, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end98
  %86 = load ptr, ptr %pNew, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %86, i32 0, i32 6
  store i16 43, ptr %nOut, align 2
  %87 = load i16, ptr %rLogSize, align 2
  %88 = load ptr, ptr %pNew, align 8
  %nOut106 = getelementptr inbounds nuw %struct.WhereLoop, ptr %88, i32 0, i32 6
  %89 = load i16, ptr %nOut106, align 2
  %call107 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %87, i16 noundef signext %89)
  %90 = load ptr, ptr %pNew, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %90, i32 0, i32 5
  store i16 %call107, ptr %rRun, align 4
  %91 = load ptr, ptr %pNew, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %91, i32 0, i32 8
  store i32 16384, ptr %wsFlags, align 8
  %92 = load i64, ptr %mPrereq.addr, align 8
  %93 = load ptr, ptr %pTerm, align 8
  %prereqRight108 = getelementptr inbounds nuw %struct.WhereTerm, ptr %93, i32 0, i32 11
  %94 = load i64, ptr %prereqRight108, align 8
  %or = or i64 %92, %94
  %95 = load ptr, ptr %pNew, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %95, i32 0, i32 0
  store i64 %or, ptr %prereq, align 8
  %96 = load ptr, ptr %pBuilder.addr, align 8
  %97 = load ptr, ptr %pNew, align 8
  %call109 = call i32 @whereLoopInsert(ptr noundef %96, ptr noundef %97)
  store i32 %call109, ptr %rc, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end105, %if.end72
  br label %for.inc

for.inc:                                          ; preds = %if.end110, %if.then71
  %98 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %98, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  br label %if.end111

if.end111:                                        ; preds = %for.end, %land.lhs.true53, %land.lhs.true47, %land.lhs.true42, %land.lhs.true35, %land.lhs.true31, %land.lhs.true27, %land.lhs.true, %if.end20
  br label %for.cond112

for.cond112:                                      ; preds = %cond.end309, %if.end111
  %99 = load i32, ptr %rc, align 4
  %cmp113 = icmp eq i32 %99, 0
  br i1 %cmp113, label %land.rhs115, label %land.end117

land.rhs115:                                      ; preds = %for.cond112
  %100 = load ptr, ptr %pProbe, align 8
  %tobool116 = icmp ne ptr %100, null
  br label %land.end117

land.end117:                                      ; preds = %land.rhs115, %for.cond112
  %101 = phi i1 [ false, %for.cond112 ], [ %tobool116, %land.rhs115 ]
  br i1 %101, label %for.body118, label %for.end312

for.body118:                                      ; preds = %land.end117
  %102 = load ptr, ptr %pProbe, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %102, i32 0, i32 9
  %103 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp119 = icmp ne ptr %103, null
  br i1 %cmp119, label %land.lhs.true121, label %if.end126

land.lhs.true121:                                 ; preds = %for.body118
  %104 = load ptr, ptr %pSrc, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %104, i32 0, i32 10
  %105 = load i32, ptr %iCursor, align 8
  %106 = load ptr, ptr %pWC, align 8
  %107 = load ptr, ptr %pProbe, align 8
  %pPartIdxWhere122 = getelementptr inbounds nuw %struct.Index, ptr %107, i32 0, i32 9
  %108 = load ptr, ptr %pPartIdxWhere122, align 8
  %call123 = call i32 @whereUsablePartialIndex(i32 noundef %105, ptr noundef %106, ptr noundef %108)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end126, label %if.then125

if.then125:                                       ; preds = %land.lhs.true121
  br label %for.inc303

if.end126:                                        ; preds = %land.lhs.true121, %for.body118
  %109 = load ptr, ptr %pProbe, align 8
  %bNoQuery = getelementptr inbounds nuw %struct.Index, ptr %109, i32 0, i32 16
  %bf.load127 = load i16, ptr %bNoQuery, align 1
  %bf.lshr128 = lshr i16 %bf.load127, 8
  %bf.clear129 = and i16 %bf.lshr128, 1
  %bf.cast130 = zext i16 %bf.clear129 to i32
  %tobool131 = icmp ne i32 %bf.cast130, 0
  br i1 %tobool131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end126
  br label %for.inc303

if.end133:                                        ; preds = %if.end126
  %110 = load ptr, ptr %pProbe, align 8
  %aiRowLogEst134 = getelementptr inbounds nuw %struct.Index, ptr %110, i32 0, i32 2
  %111 = load ptr, ptr %aiRowLogEst134, align 8
  %arrayidx135 = getelementptr inbounds i16, ptr %111, i64 0
  %112 = load i16, ptr %arrayidx135, align 2
  store i16 %112, ptr %rSize, align 2
  %113 = load ptr, ptr %pNew, align 8
  %u136 = getelementptr inbounds nuw %struct.WhereLoop, ptr %113, i32 0, i32 7
  %nEq137 = getelementptr inbounds nuw %struct.anon.19, ptr %u136, i32 0, i32 0
  store i16 0, ptr %nEq137, align 8
  %114 = load ptr, ptr %pNew, align 8
  %u138 = getelementptr inbounds nuw %struct.WhereLoop, ptr %114, i32 0, i32 7
  %nBtm = getelementptr inbounds nuw %struct.anon.19, ptr %u138, i32 0, i32 1
  store i16 0, ptr %nBtm, align 2
  %115 = load ptr, ptr %pNew, align 8
  %u139 = getelementptr inbounds nuw %struct.WhereLoop, ptr %115, i32 0, i32 7
  %nTop = getelementptr inbounds nuw %struct.anon.19, ptr %u139, i32 0, i32 2
  store i16 0, ptr %nTop, align 4
  %116 = load ptr, ptr %pNew, align 8
  %nSkip140 = getelementptr inbounds nuw %struct.WhereLoop, ptr %116, i32 0, i32 10
  store i16 0, ptr %nSkip140, align 2
  %117 = load ptr, ptr %pNew, align 8
  %nLTerm141 = getelementptr inbounds nuw %struct.WhereLoop, ptr %117, i32 0, i32 9
  store i16 0, ptr %nLTerm141, align 4
  %118 = load ptr, ptr %pNew, align 8
  %iSortIdx142 = getelementptr inbounds nuw %struct.WhereLoop, ptr %118, i32 0, i32 3
  store i8 0, ptr %iSortIdx142, align 1
  %119 = load ptr, ptr %pNew, align 8
  %rSetup143 = getelementptr inbounds nuw %struct.WhereLoop, ptr %119, i32 0, i32 4
  store i16 0, ptr %rSetup143, align 2
  %120 = load i64, ptr %mPrereq.addr, align 8
  %121 = load ptr, ptr %pNew, align 8
  %prereq144 = getelementptr inbounds nuw %struct.WhereLoop, ptr %121, i32 0, i32 0
  store i64 %120, ptr %prereq144, align 8
  %122 = load i16, ptr %rSize, align 2
  %123 = load ptr, ptr %pNew, align 8
  %nOut145 = getelementptr inbounds nuw %struct.WhereLoop, ptr %123, i32 0, i32 6
  store i16 %122, ptr %nOut145, align 2
  %124 = load ptr, ptr %pProbe, align 8
  %125 = load ptr, ptr %pNew, align 8
  %u146 = getelementptr inbounds nuw %struct.WhereLoop, ptr %125, i32 0, i32 7
  %pIndex147 = getelementptr inbounds nuw %struct.anon.19, ptr %u146, i32 0, i32 4
  store ptr %124, ptr %pIndex147, align 8
  %126 = load ptr, ptr %pBuilder.addr, align 8
  %127 = load ptr, ptr %pProbe, align 8
  %128 = load ptr, ptr %pSrc, align 8
  %iCursor148 = getelementptr inbounds nuw %struct.SrcList_item, ptr %128, i32 0, i32 10
  %129 = load i32, ptr %iCursor148, align 8
  %call149 = call i32 @indexMightHelpWithOrderBy(ptr noundef %126, ptr noundef %127, i32 noundef %129)
  store i32 %call149, ptr %b, align 4
  %130 = load ptr, ptr %pProbe, align 8
  %idxType150 = getelementptr inbounds nuw %struct.Index, ptr %130, i32 0, i32 16
  %bf.load151 = load i16, ptr %idxType150, align 1
  %bf.clear152 = and i16 %bf.load151, 3
  %bf.cast153 = zext i16 %bf.clear152 to i32
  %cmp154 = icmp eq i32 %bf.cast153, 3
  br i1 %cmp154, label %if.then156, label %if.else170

if.then156:                                       ; preds = %if.end133
  %131 = load ptr, ptr %pNew, align 8
  %wsFlags157 = getelementptr inbounds nuw %struct.WhereLoop, ptr %131, i32 0, i32 8
  store i32 256, ptr %wsFlags157, align 8
  %132 = load i32, ptr %b, align 4
  %tobool158 = icmp ne i32 %132, 0
  br i1 %tobool158, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then156
  %133 = load i32, ptr %iSortIdx, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then156
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %133, %cond.true ], [ 0, %cond.false ]
  %conv159 = trunc i32 %cond to i8
  %134 = load ptr, ptr %pNew, align 8
  %iSortIdx160 = getelementptr inbounds nuw %struct.WhereLoop, ptr %134, i32 0, i32 3
  store i8 %conv159, ptr %iSortIdx160, align 1
  %135 = load i16, ptr %rSize, align 2
  %conv161 = sext i16 %135 to i32
  %add162 = add nsw i32 %conv161, 16
  %conv163 = trunc i32 %add162 to i16
  %136 = load ptr, ptr %pNew, align 8
  %rRun164 = getelementptr inbounds nuw %struct.WhereLoop, ptr %136, i32 0, i32 5
  store i16 %conv163, ptr %rRun164, align 4
  %137 = load ptr, ptr %pWC, align 8
  %138 = load ptr, ptr %pNew, align 8
  %139 = load i16, ptr %rSize, align 2
  call void @whereLoopOutputAdjust(ptr noundef %137, ptr noundef %138, i16 noundef signext %139)
  %140 = load ptr, ptr %pBuilder.addr, align 8
  %141 = load ptr, ptr %pNew, align 8
  %call165 = call i32 @whereLoopInsert(ptr noundef %140, ptr noundef %141)
  store i32 %call165, ptr %rc, align 4
  %142 = load i16, ptr %rSize, align 2
  %143 = load ptr, ptr %pNew, align 8
  %nOut166 = getelementptr inbounds nuw %struct.WhereLoop, ptr %143, i32 0, i32 6
  store i16 %142, ptr %nOut166, align 2
  %144 = load i32, ptr %rc, align 4
  %tobool167 = icmp ne i32 %144, 0
  br i1 %tobool167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %cond.end
  br label %for.end312

if.end169:                                        ; preds = %cond.end
  br label %if.end294

if.else170:                                       ; preds = %if.end133
  %145 = load ptr, ptr %pProbe, align 8
  %isCovering = getelementptr inbounds nuw %struct.Index, ptr %145, i32 0, i32 16
  %bf.load171 = load i16, ptr %isCovering, align 1
  %bf.lshr172 = lshr i16 %bf.load171, 5
  %bf.clear173 = and i16 %bf.lshr172, 1
  %bf.cast174 = zext i16 %bf.clear173 to i32
  %tobool175 = icmp ne i32 %bf.cast174, 0
  br i1 %tobool175, label %if.then176, label %if.else178

if.then176:                                       ; preds = %if.else170
  %146 = load ptr, ptr %pNew, align 8
  %wsFlags177 = getelementptr inbounds nuw %struct.WhereLoop, ptr %146, i32 0, i32 8
  store i32 576, ptr %wsFlags177, align 8
  store i64 0, ptr %m, align 8
  br label %if.end184

if.else178:                                       ; preds = %if.else170
  %147 = load ptr, ptr %pSrc, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %147, i32 0, i32 13
  %148 = load i64, ptr %colUsed, align 8
  %149 = load ptr, ptr %pProbe, align 8
  %colNotIdxed = getelementptr inbounds nuw %struct.Index, ptr %149, i32 0, i32 18
  %150 = load i64, ptr %colNotIdxed, align 8
  %and179 = and i64 %148, %150
  store i64 %and179, ptr %m, align 8
  %151 = load i64, ptr %m, align 8
  %cmp180 = icmp eq i64 %151, 0
  %152 = zext i1 %cmp180 to i64
  %cond182 = select i1 %cmp180, i32 576, i32 512
  %153 = load ptr, ptr %pNew, align 8
  %wsFlags183 = getelementptr inbounds nuw %struct.WhereLoop, ptr %153, i32 0, i32 8
  store i32 %cond182, ptr %wsFlags183, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.else178, %if.then176
  %154 = load i32, ptr %b, align 4
  %tobool185 = icmp ne i32 %154, 0
  br i1 %tobool185, label %if.then227, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end184
  %155 = load ptr, ptr %pTab, align 8
  %tabFlags186 = getelementptr inbounds nuw %struct.Table, ptr %155, i32 0, i32 9
  %156 = load i32, ptr %tabFlags186, align 8
  %and187 = and i32 %156, 32
  %cmp188 = icmp eq i32 %and187, 0
  br i1 %cmp188, label %lor.lhs.false190, label %if.then227

lor.lhs.false190:                                 ; preds = %lor.lhs.false
  %157 = load ptr, ptr %pProbe, align 8
  %pPartIdxWhere191 = getelementptr inbounds nuw %struct.Index, ptr %157, i32 0, i32 9
  %158 = load ptr, ptr %pPartIdxWhere191, align 8
  %cmp192 = icmp ne ptr %158, null
  br i1 %cmp192, label %if.then227, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %lor.lhs.false190
  %159 = load i64, ptr %m, align 8
  %cmp195 = icmp eq i64 %159, 0
  br i1 %cmp195, label %land.lhs.true197, label %if.end293

land.lhs.true197:                                 ; preds = %lor.lhs.false194
  %160 = load ptr, ptr %pProbe, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %160, i32 0, i32 16
  %bf.load198 = load i16, ptr %bUnordered, align 1
  %bf.lshr199 = lshr i16 %bf.load198, 2
  %bf.clear200 = and i16 %bf.lshr199, 1
  %bf.cast201 = zext i16 %bf.clear200 to i32
  %cmp202 = icmp eq i32 %bf.cast201, 0
  br i1 %cmp202, label %land.lhs.true204, label %if.end293

land.lhs.true204:                                 ; preds = %land.lhs.true197
  %161 = load ptr, ptr %pProbe, align 8
  %szIdxRow205 = getelementptr inbounds nuw %struct.Index, ptr %161, i32 0, i32 12
  %162 = load i16, ptr %szIdxRow205, align 4
  %conv206 = sext i16 %162 to i32
  %163 = load ptr, ptr %pTab, align 8
  %szTabRow207 = getelementptr inbounds nuw %struct.Table, ptr %163, i32 0, i32 13
  %164 = load i16, ptr %szTabRow207, align 2
  %conv208 = sext i16 %164 to i32
  %cmp209 = icmp slt i32 %conv206, %conv208
  br i1 %cmp209, label %land.lhs.true211, label %if.end293

land.lhs.true211:                                 ; preds = %land.lhs.true204
  %165 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags212 = getelementptr inbounds nuw %struct.WhereInfo, ptr %165, i32 0, i32 10
  %166 = load i16, ptr %wctrlFlags212, align 8
  %conv213 = zext i16 %166 to i32
  %and214 = and i32 %conv213, 4
  %cmp215 = icmp eq i32 %and214, 0
  br i1 %cmp215, label %land.lhs.true217, label %if.end293

land.lhs.true217:                                 ; preds = %land.lhs.true211
  %167 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 4), align 1
  %conv218 = zext i8 %167 to i32
  %tobool219 = icmp ne i32 %conv218, 0
  br i1 %tobool219, label %land.lhs.true220, label %if.end293

land.lhs.true220:                                 ; preds = %land.lhs.true217
  %168 = load ptr, ptr %pWInfo, align 8
  %pParse221 = getelementptr inbounds nuw %struct.WhereInfo, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %pParse221, align 8
  %db222 = getelementptr inbounds nuw %struct.Parse, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %db222, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %170, i32 0, i32 15
  %171 = load i16, ptr %dbOptFlags, align 4
  %conv223 = zext i16 %171 to i32
  %and224 = and i32 %conv223, 32
  %cmp225 = icmp eq i32 %and224, 0
  br i1 %cmp225, label %if.then227, label %if.end293

if.then227:                                       ; preds = %land.lhs.true220, %lor.lhs.false190, %lor.lhs.false, %if.end184
  %172 = load i32, ptr %b, align 4
  %tobool228 = icmp ne i32 %172, 0
  br i1 %tobool228, label %cond.true229, label %cond.false230

cond.true229:                                     ; preds = %if.then227
  %173 = load i32, ptr %iSortIdx, align 4
  br label %cond.end231

cond.false230:                                    ; preds = %if.then227
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false230, %cond.true229
  %cond232 = phi i32 [ %173, %cond.true229 ], [ 0, %cond.false230 ]
  %conv233 = trunc i32 %cond232 to i8
  %174 = load ptr, ptr %pNew, align 8
  %iSortIdx234 = getelementptr inbounds nuw %struct.WhereLoop, ptr %174, i32 0, i32 3
  store i8 %conv233, ptr %iSortIdx234, align 1
  %175 = load i16, ptr %rSize, align 2
  %conv235 = sext i16 %175 to i32
  %add236 = add nsw i32 %conv235, 1
  %176 = load ptr, ptr %pProbe, align 8
  %szIdxRow237 = getelementptr inbounds nuw %struct.Index, ptr %176, i32 0, i32 12
  %177 = load i16, ptr %szIdxRow237, align 4
  %conv238 = sext i16 %177 to i32
  %mul = mul nsw i32 15, %conv238
  %178 = load ptr, ptr %pTab, align 8
  %szTabRow239 = getelementptr inbounds nuw %struct.Table, ptr %178, i32 0, i32 13
  %179 = load i16, ptr %szTabRow239, align 2
  %conv240 = sext i16 %179 to i32
  %div = sdiv i32 %mul, %conv240
  %add241 = add nsw i32 %add236, %div
  %conv242 = trunc i32 %add241 to i16
  %180 = load ptr, ptr %pNew, align 8
  %rRun243 = getelementptr inbounds nuw %struct.WhereLoop, ptr %180, i32 0, i32 5
  store i16 %conv242, ptr %rRun243, align 4
  %181 = load i64, ptr %m, align 8
  %cmp244 = icmp ne i64 %181, 0
  br i1 %cmp244, label %if.then246, label %if.end287

if.then246:                                       ; preds = %cond.end231
  %182 = load i16, ptr %rSize, align 2
  %conv247 = sext i16 %182 to i32
  %add248 = add nsw i32 %conv247, 16
  %conv249 = trunc i32 %add248 to i16
  store i16 %conv249, ptr %nLookup, align 2
  %183 = load ptr, ptr %pSrc, align 8
  %iCursor250 = getelementptr inbounds nuw %struct.SrcList_item, ptr %183, i32 0, i32 10
  %184 = load i32, ptr %iCursor250, align 8
  store i32 %184, ptr %iCur, align 4
  %185 = load ptr, ptr %pWInfo, align 8
  %sWC = getelementptr inbounds nuw %struct.WhereInfo, ptr %185, i32 0, i32 22
  store ptr %sWC, ptr %pWC2, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond251

for.cond251:                                      ; preds = %for.inc282, %if.then246
  %186 = load i32, ptr %ii, align 4
  %187 = load ptr, ptr %pWC2, align 8
  %nTerm252 = getelementptr inbounds nuw %struct.WhereClause, ptr %187, i32 0, i32 4
  %188 = load i32, ptr %nTerm252, align 4
  %cmp253 = icmp slt i32 %186, %188
  br i1 %cmp253, label %for.body255, label %for.end283

for.body255:                                      ; preds = %for.cond251
  %189 = load ptr, ptr %pWC2, align 8
  %a257 = getelementptr inbounds nuw %struct.WhereClause, ptr %189, i32 0, i32 6
  %190 = load ptr, ptr %a257, align 8
  %191 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %191 to i64
  %arrayidx258 = getelementptr inbounds %struct.WhereTerm, ptr %190, i64 %idxprom
  store ptr %arrayidx258, ptr %pTerm256, align 8
  %192 = load ptr, ptr %pTerm256, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %192, i32 0, i32 0
  %193 = load ptr, ptr %pExpr, align 8
  %194 = load i32, ptr %iCur, align 4
  %195 = load ptr, ptr %pProbe, align 8
  %call259 = call i32 @sqlite3ExprCoveredByIndex(ptr noundef %193, i32 noundef %194, ptr noundef %195)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.end262, label %if.then261

if.then261:                                       ; preds = %for.body255
  br label %for.end283

if.end262:                                        ; preds = %for.body255
  %196 = load ptr, ptr %pTerm256, align 8
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %196, i32 0, i32 2
  %197 = load i16, ptr %truthProb, align 8
  %conv263 = sext i16 %197 to i32
  %cmp264 = icmp sle i32 %conv263, 0
  br i1 %cmp264, label %if.then266, label %if.else272

if.then266:                                       ; preds = %if.end262
  %198 = load ptr, ptr %pTerm256, align 8
  %truthProb267 = getelementptr inbounds nuw %struct.WhereTerm, ptr %198, i32 0, i32 2
  %199 = load i16, ptr %truthProb267, align 8
  %conv268 = sext i16 %199 to i32
  %200 = load i16, ptr %nLookup, align 2
  %conv269 = sext i16 %200 to i32
  %add270 = add nsw i32 %conv269, %conv268
  %conv271 = trunc i32 %add270 to i16
  store i16 %conv271, ptr %nLookup, align 2
  br label %if.end281

if.else272:                                       ; preds = %if.end262
  %201 = load i16, ptr %nLookup, align 2
  %dec = add i16 %201, -1
  store i16 %dec, ptr %nLookup, align 2
  %202 = load ptr, ptr %pTerm256, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %202, i32 0, i32 4
  %203 = load i16, ptr %eOperator, align 4
  %conv273 = zext i16 %203 to i32
  %and274 = and i32 %conv273, 130
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %if.then276, label %if.end280

if.then276:                                       ; preds = %if.else272
  %204 = load i16, ptr %nLookup, align 2
  %conv277 = sext i16 %204 to i32
  %sub278 = sub nsw i32 %conv277, 19
  %conv279 = trunc i32 %sub278 to i16
  store i16 %conv279, ptr %nLookup, align 2
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.else272
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %if.then266
  br label %for.inc282

for.inc282:                                       ; preds = %if.end281
  %205 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %205, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond251, !llvm.loop !8

for.end283:                                       ; preds = %if.then261, %for.cond251
  %206 = load ptr, ptr %pNew, align 8
  %rRun284 = getelementptr inbounds nuw %struct.WhereLoop, ptr %206, i32 0, i32 5
  %207 = load i16, ptr %rRun284, align 4
  %208 = load i16, ptr %nLookup, align 2
  %call285 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %207, i16 noundef signext %208)
  %209 = load ptr, ptr %pNew, align 8
  %rRun286 = getelementptr inbounds nuw %struct.WhereLoop, ptr %209, i32 0, i32 5
  store i16 %call285, ptr %rRun286, align 4
  br label %if.end287

if.end287:                                        ; preds = %for.end283, %cond.end231
  %210 = load ptr, ptr %pWC, align 8
  %211 = load ptr, ptr %pNew, align 8
  %212 = load i16, ptr %rSize, align 2
  call void @whereLoopOutputAdjust(ptr noundef %210, ptr noundef %211, i16 noundef signext %212)
  %213 = load ptr, ptr %pBuilder.addr, align 8
  %214 = load ptr, ptr %pNew, align 8
  %call288 = call i32 @whereLoopInsert(ptr noundef %213, ptr noundef %214)
  store i32 %call288, ptr %rc, align 4
  %215 = load i16, ptr %rSize, align 2
  %216 = load ptr, ptr %pNew, align 8
  %nOut289 = getelementptr inbounds nuw %struct.WhereLoop, ptr %216, i32 0, i32 6
  store i16 %215, ptr %nOut289, align 2
  %217 = load i32, ptr %rc, align 4
  %tobool290 = icmp ne i32 %217, 0
  br i1 %tobool290, label %if.then291, label %if.end292

if.then291:                                       ; preds = %if.end287
  br label %for.end312

if.end292:                                        ; preds = %if.end287
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %land.lhs.true220, %land.lhs.true217, %land.lhs.true211, %land.lhs.true204, %land.lhs.true197, %lor.lhs.false194
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.end169
  %218 = load ptr, ptr %pBuilder.addr, align 8
  %bldFlags = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %218, i32 0, i32 5
  store i32 0, ptr %bldFlags, align 8
  %219 = load ptr, ptr %pBuilder.addr, align 8
  %220 = load ptr, ptr %pSrc, align 8
  %221 = load ptr, ptr %pProbe, align 8
  %call295 = call i32 @whereLoopAddBtreeIndex(ptr noundef %219, ptr noundef %220, ptr noundef %221, i16 noundef signext 0)
  store i32 %call295, ptr %rc, align 4
  %222 = load ptr, ptr %pBuilder.addr, align 8
  %bldFlags296 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %222, i32 0, i32 5
  %223 = load i32, ptr %bldFlags296, align 8
  %cmp297 = icmp eq i32 %223, 1
  br i1 %cmp297, label %if.then299, label %if.end302

if.then299:                                       ; preds = %if.end294
  %224 = load ptr, ptr %pTab, align 8
  %tabFlags300 = getelementptr inbounds nuw %struct.Table, ptr %224, i32 0, i32 9
  %225 = load i32, ptr %tabFlags300, align 8
  %or301 = or i32 %225, 256
  store i32 %or301, ptr %tabFlags300, align 8
  br label %if.end302

if.end302:                                        ; preds = %if.then299, %if.end294
  br label %for.inc303

for.inc303:                                       ; preds = %if.end302, %if.then132, %if.then125
  %226 = load ptr, ptr %pSrc, align 8
  %pIBIndex304 = getelementptr inbounds nuw %struct.SrcList_item, ptr %226, i32 0, i32 15
  %227 = load ptr, ptr %pIBIndex304, align 8
  %tobool305 = icmp ne ptr %227, null
  br i1 %tobool305, label %cond.true306, label %cond.false307

cond.true306:                                     ; preds = %for.inc303
  br label %cond.end309

cond.false307:                                    ; preds = %for.inc303
  %228 = load ptr, ptr %pProbe, align 8
  %pNext308 = getelementptr inbounds nuw %struct.Index, ptr %228, i32 0, i32 5
  %229 = load ptr, ptr %pNext308, align 8
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false307, %cond.true306
  %cond310 = phi ptr [ null, %cond.true306 ], [ %229, %cond.false307 ]
  store ptr %cond310, ptr %pProbe, align 8
  %230 = load i32, ptr %iSortIdx, align 4
  %inc311 = add nsw i32 %230, 1
  store i32 %inc311, ptr %iSortIdx, align 4
  br label %for.cond112, !llvm.loop !9

for.end312:                                       ; preds = %if.then291, %if.then168, %land.end117
  %231 = load i32, ptr %rc, align 4
  ret i32 %231
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopInsert(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden signext i16 @estLog(i16 noundef signext) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @termCanDriveIndex(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @whereUsablePartialIndex(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @indexMightHelpWithOrderBy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopOutputAdjust(ptr noundef, ptr noundef, i16 noundef signext) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCoveredByIndex(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddBtreeIndex(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
