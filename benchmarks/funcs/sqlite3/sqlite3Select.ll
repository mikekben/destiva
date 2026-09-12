; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DistinctCtx = type { i8, i8, i32, i32 }
%struct.SortCtx = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.AggInfo = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.anon.12 = type { i16, i16 }
%struct.AggInfo_func = type { ptr, ptr, i32, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.AggInfo_col = type { ptr, i32, i32, i32, i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.720 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.721 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.722 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.723 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.724 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.725 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.726 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Select(ptr noundef %pParse, ptr noundef %p, ptr noundef %pDest) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %v = alloca ptr, align 8
  %isAgg = alloca i32, align 4
  %pEList = alloca ptr, align 8
  %pTabList = alloca ptr, align 8
  %pWhere = alloca ptr, align 8
  %pGroupBy = alloca ptr, align 8
  %pHaving = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sDistinct = alloca %struct.DistinctCtx, align 4
  %sSort = alloca %struct.SortCtx, align 8
  %sAggInfo = alloca %struct.AggInfo, align 8
  %iEnd = alloca i32, align 4
  %db = alloca ptr, align 8
  %pMinMaxOrderBy = alloca ptr, align 8
  %minMaxFlag = alloca i8, align 1
  %pItem = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pItem158 = alloca ptr, align 8
  %dest = alloca %struct.SelectDest, align 8
  %pSub162 = alloca ptr, align 8
  %zSavedAuthContext = alloca ptr, align 8
  %addrTop = alloca i32, align 4
  %topAddr = alloca i32, align 4
  %onceAddr = alloca i32, align 4
  %retAddr = alloca i32, align 4
  %pPrior227 = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  %wctrlFlags = alloca i16, align 2
  %pWin = alloca ptr, align 8
  %addrGosub = alloca i32, align 4
  %iCont = alloca i32, align 4
  %iBreak = alloca i32, align 4
  %regGosub = alloca i32, align 4
  %sNC = alloca %struct.NameContext, align 8
  %iAMem = alloca i32, align 4
  %iBMem = alloca i32, align 4
  %iUseFlag = alloca i32, align 4
  %iAbortFlag = alloca i32, align 4
  %groupBySort = alloca i32, align 4
  %addrEnd = alloca i32, align 4
  %sortPTab = alloca i32, align 4
  %sortOut = alloca i32, align 4
  %orderByGrp = alloca i32, align 4
  %k = alloca i32, align 4
  %pItem447 = alloca ptr, align 8
  %ii = alloca i32, align 4
  %sortFlags492 = alloca i8, align 1
  %pExpr554 = alloca ptr, align 8
  %pKeyInfo577 = alloca ptr, align 8
  %addr1 = alloca i32, align 4
  %addrOutputRow = alloca i32, align 4
  %regOutputRow = alloca i32, align 4
  %addrSetAbort = alloca i32, align 4
  %addrTopOfLoop = alloca i32, align 4
  %addrSortingIdx = alloca i32, align 4
  %addrReset = alloca i32, align 4
  %regReset = alloca i32, align 4
  %regBase = alloca i32, align 4
  %regRecord = alloca i32, align 4
  %nCol626 = alloca i32, align 4
  %nGroupBy = alloca i32, align 4
  %pCol = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %pTab762 = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %iCsr = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %pKeyInfo771 = alloca ptr, align 8
  %pBest = alloca ptr, align 8
  %iRoot = alloca i32, align 4
  %regAcc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store ptr null, ptr %pEList, align 8
  store i32 1, ptr %rc, align 4
  store ptr null, ptr %pMinMaxOrderBy, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 16
  %7 = load i32, ptr %nErr, align 8
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %pParse.addr, align 8
  %call4 = call i32 @sqlite3AuthCheck(ptr noundef %8, i32 noundef 21, ptr noundef null, ptr noundef null, ptr noundef null)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %sAggInfo, i8 0, i64 64, i1 false)
  %9 = load ptr, ptr %pDest.addr, align 8
  %eDest = getelementptr inbounds nuw %struct.SelectDest, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %eDest, align 8
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp sle i32 %conv8, 8
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pOrderBy, align 8
  call void @sqlite3ExprListDelete(ptr noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %p.addr, align 8
  %pOrderBy12 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 12
  store ptr null, ptr %pOrderBy12, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %selFlags, align 4
  %and = and i32 %16, -2
  store i32 %and, ptr %selFlags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  call void @sqlite3SelectPrep(ptr noundef %17, ptr noundef %18, ptr noundef null)
  %19 = load ptr, ptr %pParse.addr, align 8
  %nErr14 = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %nErr14, align 8
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end13
  %21 = load ptr, ptr %db, align 8
  %mallocFailed17 = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 19
  %22 = load i8, ptr %mallocFailed17, align 1
  %conv18 = zext i8 %22 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false16, %if.end13
  br label %select_end

if.end21:                                         ; preds = %lor.lhs.false16
  %23 = load ptr, ptr %pDest.addr, align 8
  %eDest22 = getelementptr inbounds nuw %struct.SelectDest, ptr %23, i32 0, i32 0
  %24 = load i8, ptr %eDest22, align 8
  %conv23 = zext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 9
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %p.addr, align 8
  call void @generateColumnNames(ptr noundef %25, ptr noundef %26)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %p.addr, align 8
  %call28 = call i32 @sqlite3WindowRewrite(ptr noundef %27, ptr noundef %28)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  br label %select_end

if.end31:                                         ; preds = %if.end27
  %29 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %pSrc, align 8
  store ptr %30, ptr %pTabList, align 8
  %31 = load ptr, ptr %p.addr, align 8
  %selFlags32 = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %selFlags32, align 4
  %and33 = and i32 %32, 8
  %cmp34 = icmp ne i32 %and33, 0
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, ptr %isAgg, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sSort, i8 0, i64 48, i1 false)
  %33 = load ptr, ptr %p.addr, align 8
  %pOrderBy36 = getelementptr inbounds nuw %struct.Select, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pOrderBy36, align 8
  %pOrderBy37 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  store ptr %34, ptr %pOrderBy37, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %35 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 13
  %36 = load ptr, ptr %pPrior, align 8
  %tobool38 = icmp ne ptr %36, null
  br i1 %tobool38, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %pTabList, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %nSrc, align 8
  %cmp39 = icmp slt i32 %37, %39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %40 = phi i1 [ false, %for.cond ], [ %cmp39, %land.rhs ]
  br i1 %40, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %41 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %i, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %43 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %pSelect, align 8
  store ptr %44, ptr %pSub, align 8
  %45 = load ptr, ptr %pItem, align 8
  %pTab41 = getelementptr inbounds nuw %struct.SrcList_item, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %pTab41, align 8
  store ptr %46, ptr %pTab, align 8
  %47 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %47, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %48 = load i8, ptr %jointype, align 4
  %conv42 = zext i8 %48 to i32
  %and43 = and i32 %conv42, 8
  %cmp44 = icmp ne i32 %and43, 0
  br i1 %cmp44, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %for.body
  %49 = load ptr, ptr %p.addr, align 8
  %pWhere46 = getelementptr inbounds nuw %struct.Select, ptr %49, i32 0, i32 9
  %50 = load ptr, ptr %pWhere46, align 8
  %51 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %51, i32 0, i32 10
  %52 = load i32, ptr %iCursor, align 8
  %call47 = call i32 @sqlite3ExprImpliesNonNullRow(ptr noundef %50, i32 noundef %52)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.end62

land.lhs.true49:                                  ; preds = %land.lhs.true
  %53 = load ptr, ptr %db, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %53, i32 0, i32 15
  %54 = load i16, ptr %dbOptFlags, align 4
  %conv50 = zext i16 %54 to i32
  %and51 = and i32 %conv50, 8192
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %if.then54, label %if.end62

if.then54:                                        ; preds = %land.lhs.true49
  %55 = load ptr, ptr %pItem, align 8
  %fg55 = getelementptr inbounds nuw %struct.SrcList_item, ptr %55, i32 0, i32 9
  %jointype56 = getelementptr inbounds nuw %struct.anon, ptr %fg55, i32 0, i32 0
  %56 = load i8, ptr %jointype56, align 4
  %conv57 = zext i8 %56 to i32
  %and58 = and i32 %conv57, -41
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, ptr %jointype56, align 4
  %57 = load ptr, ptr %p.addr, align 8
  %pWhere60 = getelementptr inbounds nuw %struct.Select, ptr %57, i32 0, i32 9
  %58 = load ptr, ptr %pWhere60, align 8
  %59 = load ptr, ptr %pItem, align 8
  %iCursor61 = getelementptr inbounds nuw %struct.SrcList_item, ptr %59, i32 0, i32 10
  %60 = load i32, ptr %iCursor61, align 8
  call void @unsetJoinExpr(ptr noundef %58, i32 noundef %60)
  br label %if.end62

if.end62:                                         ; preds = %if.then54, %land.lhs.true49, %land.lhs.true, %for.body
  %61 = load ptr, ptr %pSub, align 8
  %cmp63 = icmp eq ptr %61, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  br label %for.inc

if.end66:                                         ; preds = %if.end62
  %62 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %62, i32 0, i32 11
  %63 = load i16, ptr %nCol, align 2
  %conv67 = sext i16 %63 to i32
  %64 = load ptr, ptr %pSub, align 8
  %pEList68 = getelementptr inbounds nuw %struct.Select, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %pEList68, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %65, i32 0, i32 0
  %66 = load i32, ptr %nExpr, align 8
  %cmp69 = icmp ne i32 %conv67, %66
  br i1 %cmp69, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.end66
  %67 = load ptr, ptr %pParse.addr, align 8
  %68 = load ptr, ptr %pTab, align 8
  %nCol72 = getelementptr inbounds nuw %struct.Table, ptr %68, i32 0, i32 11
  %69 = load i16, ptr %nCol72, align 2
  %conv73 = sext i16 %69 to i32
  %70 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %zName, align 8
  %72 = load ptr, ptr %pSub, align 8
  %pEList74 = getelementptr inbounds nuw %struct.Select, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %pEList74, align 8
  %nExpr75 = getelementptr inbounds nuw %struct.ExprList, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %nExpr75, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %67, ptr noundef @.str.720, i32 noundef %conv73, ptr noundef %71, i32 noundef %74)
  br label %select_end

if.end76:                                         ; preds = %if.end66
  %75 = load ptr, ptr %pSub, align 8
  %selFlags77 = getelementptr inbounds nuw %struct.Select, ptr %75, i32 0, i32 3
  %76 = load i32, ptr %selFlags77, align 4
  %and78 = and i32 %76, 8
  %cmp79 = icmp ne i32 %and78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end76
  br label %for.inc

if.end82:                                         ; preds = %if.end76
  %77 = load ptr, ptr %pSub, align 8
  %pOrderBy83 = getelementptr inbounds nuw %struct.Select, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %pOrderBy83, align 8
  %cmp84 = icmp ne ptr %78, null
  br i1 %cmp84, label %land.lhs.true86, label %if.end108

land.lhs.true86:                                  ; preds = %if.end82
  %79 = load i32, ptr %i, align 4
  %cmp87 = icmp eq i32 %79, 0
  br i1 %cmp87, label %land.lhs.true89, label %if.end108

land.lhs.true89:                                  ; preds = %land.lhs.true86
  %80 = load ptr, ptr %p.addr, align 8
  %selFlags90 = getelementptr inbounds nuw %struct.Select, ptr %80, i32 0, i32 3
  %81 = load i32, ptr %selFlags90, align 4
  %and91 = and i32 %81, 262144
  %cmp92 = icmp ne i32 %and91, 0
  br i1 %cmp92, label %land.lhs.true94, label %if.end108

land.lhs.true94:                                  ; preds = %land.lhs.true89
  %82 = load ptr, ptr %pTabList, align 8
  %nSrc95 = getelementptr inbounds nuw %struct.SrcList, ptr %82, i32 0, i32 0
  %83 = load i32, ptr %nSrc95, align 8
  %cmp96 = icmp eq i32 %83, 1
  br i1 %cmp96, label %if.then107, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %land.lhs.true94
  %84 = load ptr, ptr %pTabList, align 8
  %a99 = getelementptr inbounds nuw %struct.SrcList, ptr %84, i32 0, i32 2
  %arrayidx100 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a99, i64 0, i64 1
  %fg101 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx100, i32 0, i32 9
  %jointype102 = getelementptr inbounds nuw %struct.anon, ptr %fg101, i32 0, i32 0
  %85 = load i8, ptr %jointype102, align 4
  %conv103 = zext i8 %85 to i32
  %and104 = and i32 %conv103, 10
  %cmp105 = icmp ne i32 %and104, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %lor.lhs.false98, %land.lhs.true94
  br label %for.inc

if.end108:                                        ; preds = %lor.lhs.false98, %land.lhs.true89, %land.lhs.true86, %if.end82
  %86 = load ptr, ptr %pParse.addr, align 8
  %87 = load ptr, ptr %p.addr, align 8
  %88 = load i32, ptr %i, align 4
  %89 = load i32, ptr %isAgg, align 4
  %call109 = call i32 @flattenSubquery(ptr noundef %86, ptr noundef %87, i32 noundef %88, i32 noundef %89)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end116

if.then111:                                       ; preds = %if.end108
  %90 = load ptr, ptr %pParse.addr, align 8
  %nErr112 = getelementptr inbounds nuw %struct.Parse, ptr %90, i32 0, i32 16
  %91 = load i32, ptr %nErr112, align 8
  %tobool113 = icmp ne i32 %91, 0
  br i1 %tobool113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then111
  br label %select_end

if.end115:                                        ; preds = %if.then111
  store i32 -1, ptr %i, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end108
  %92 = load ptr, ptr %p.addr, align 8
  %pSrc117 = getelementptr inbounds nuw %struct.Select, ptr %92, i32 0, i32 8
  %93 = load ptr, ptr %pSrc117, align 8
  store ptr %93, ptr %pTabList, align 8
  %94 = load ptr, ptr %db, align 8
  %mallocFailed118 = getelementptr inbounds nuw %struct.sqlite3, ptr %94, i32 0, i32 19
  %95 = load i8, ptr %mallocFailed118, align 1
  %tobool119 = icmp ne i8 %95, 0
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end116
  br label %select_end

if.end121:                                        ; preds = %if.end116
  %96 = load ptr, ptr %pDest.addr, align 8
  %eDest122 = getelementptr inbounds nuw %struct.SelectDest, ptr %96, i32 0, i32 0
  %97 = load i8, ptr %eDest122, align 8
  %conv123 = zext i8 %97 to i32
  %cmp124 = icmp sle i32 %conv123, 8
  br i1 %cmp124, label %if.end129, label %if.then126

if.then126:                                       ; preds = %if.end121
  %98 = load ptr, ptr %p.addr, align 8
  %pOrderBy127 = getelementptr inbounds nuw %struct.Select, ptr %98, i32 0, i32 12
  %99 = load ptr, ptr %pOrderBy127, align 8
  %pOrderBy128 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  store ptr %99, ptr %pOrderBy128, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end121
  br label %for.inc

for.inc:                                          ; preds = %if.end129, %if.then107, %if.then81, %if.then65
  %100 = load i32, ptr %i, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %101 = load ptr, ptr %p.addr, align 8
  %pPrior130 = getelementptr inbounds nuw %struct.Select, ptr %101, i32 0, i32 13
  %102 = load ptr, ptr %pPrior130, align 8
  %tobool131 = icmp ne ptr %102, null
  br i1 %tobool131, label %if.then132, label %if.end138

if.then132:                                       ; preds = %for.end
  %103 = load ptr, ptr %pParse.addr, align 8
  %104 = load ptr, ptr %p.addr, align 8
  %105 = load ptr, ptr %pDest.addr, align 8
  %call133 = call i32 @multiSelect(ptr noundef %103, ptr noundef %104, ptr noundef %105)
  store i32 %call133, ptr %rc, align 4
  %106 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %106, i32 0, i32 14
  %107 = load ptr, ptr %pNext, align 8
  %cmp134 = icmp eq ptr %107, null
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.then132
  %108 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeExplainPop(ptr noundef %108)
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.then132
  %109 = load i32, ptr %rc, align 4
  store i32 %109, ptr %retval, align 4
  br label %return

if.end138:                                        ; preds = %for.end
  %110 = load ptr, ptr %pTabList, align 8
  %nSrc139 = getelementptr inbounds nuw %struct.SrcList, ptr %110, i32 0, i32 0
  %111 = load i32, ptr %nSrc139, align 8
  %cmp140 = icmp sgt i32 %111, 1
  br i1 %cmp140, label %land.lhs.true142, label %if.else

land.lhs.true142:                                 ; preds = %if.end138
  %112 = load ptr, ptr %db, align 8
  %dbOptFlags143 = getelementptr inbounds nuw %struct.sqlite3, ptr %112, i32 0, i32 15
  %113 = load i16, ptr %dbOptFlags143, align 4
  %conv144 = zext i16 %113 to i32
  %and145 = and i32 %conv144, 32768
  %cmp146 = icmp eq i32 %and145, 0
  br i1 %cmp146, label %land.lhs.true148, label %if.else

land.lhs.true148:                                 ; preds = %land.lhs.true142
  %114 = load ptr, ptr %pParse.addr, align 8
  %115 = load ptr, ptr %p.addr, align 8
  %call149 = call i32 @propagateConstants(ptr noundef %114, ptr noundef %115)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then151, label %if.else

if.then151:                                       ; preds = %land.lhs.true148
  br label %if.end152

if.else:                                          ; preds = %land.lhs.true148, %land.lhs.true142, %if.end138
  br label %if.end152

if.end152:                                        ; preds = %if.else, %if.then151
  store i32 0, ptr %i, align 4
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc275, %if.end152
  %116 = load i32, ptr %i, align 4
  %117 = load ptr, ptr %pTabList, align 8
  %nSrc154 = getelementptr inbounds nuw %struct.SrcList, ptr %117, i32 0, i32 0
  %118 = load i32, ptr %nSrc154, align 8
  %cmp155 = icmp slt i32 %116, %118
  br i1 %cmp155, label %for.body157, label %for.end277

for.body157:                                      ; preds = %for.cond153
  %119 = load ptr, ptr %pTabList, align 8
  %a159 = getelementptr inbounds nuw %struct.SrcList, ptr %119, i32 0, i32 2
  %120 = load i32, ptr %i, align 4
  %idxprom160 = sext i32 %120 to i64
  %arrayidx161 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a159, i64 0, i64 %idxprom160
  store ptr %arrayidx161, ptr %pItem158, align 8
  %121 = load ptr, ptr %pItem158, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %121, i32 0, i32 13
  %122 = load i64, ptr %colUsed, align 8
  %cmp163 = icmp eq i64 %122, 0
  br i1 %cmp163, label %land.lhs.true165, label %if.end172

land.lhs.true165:                                 ; preds = %for.body157
  %123 = load ptr, ptr %pItem158, align 8
  %zName166 = getelementptr inbounds nuw %struct.SrcList_item, ptr %123, i32 0, i32 2
  %124 = load ptr, ptr %zName166, align 8
  %cmp167 = icmp ne ptr %124, null
  br i1 %cmp167, label %if.then169, label %if.end172

if.then169:                                       ; preds = %land.lhs.true165
  %125 = load ptr, ptr %pParse.addr, align 8
  %126 = load ptr, ptr %pItem158, align 8
  %zName170 = getelementptr inbounds nuw %struct.SrcList_item, ptr %126, i32 0, i32 2
  %127 = load ptr, ptr %zName170, align 8
  %128 = load ptr, ptr %pItem158, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %128, i32 0, i32 1
  %129 = load ptr, ptr %zDatabase, align 8
  %call171 = call i32 @sqlite3AuthCheck(ptr noundef %125, i32 noundef 20, ptr noundef %127, ptr noundef @.str.3, ptr noundef %129)
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %land.lhs.true165, %for.body157
  %130 = load ptr, ptr %pItem158, align 8
  %pSelect173 = getelementptr inbounds nuw %struct.SrcList_item, ptr %130, i32 0, i32 5
  %131 = load ptr, ptr %pSelect173, align 8
  store ptr %131, ptr %pSub162, align 8
  %132 = load ptr, ptr %pSub162, align 8
  %cmp174 = icmp eq ptr %132, null
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end172
  br label %for.inc275

if.end177:                                        ; preds = %if.end172
  %133 = load ptr, ptr %p.addr, align 8
  %call178 = call i32 @sqlite3SelectExprHeight(ptr noundef %133)
  %134 = load ptr, ptr %pParse.addr, align 8
  %nHeight = getelementptr inbounds nuw %struct.Parse, ptr %134, i32 0, i32 53
  %135 = load i32, ptr %nHeight, align 4
  %add = add nsw i32 %135, %call178
  store i32 %add, ptr %nHeight, align 4
  %136 = load ptr, ptr %db, align 8
  %dbOptFlags179 = getelementptr inbounds nuw %struct.sqlite3, ptr %136, i32 0, i32 15
  %137 = load i16, ptr %dbOptFlags179, align 4
  %conv180 = zext i16 %137 to i32
  %and181 = and i32 %conv180, 4096
  %cmp182 = icmp eq i32 %and181, 0
  br i1 %cmp182, label %land.lhs.true184, label %if.else196

land.lhs.true184:                                 ; preds = %if.end177
  %138 = load ptr, ptr %pParse.addr, align 8
  %139 = load ptr, ptr %pSub162, align 8
  %140 = load ptr, ptr %p.addr, align 8
  %pWhere185 = getelementptr inbounds nuw %struct.Select, ptr %140, i32 0, i32 9
  %141 = load ptr, ptr %pWhere185, align 8
  %142 = load ptr, ptr %pItem158, align 8
  %iCursor186 = getelementptr inbounds nuw %struct.SrcList_item, ptr %142, i32 0, i32 10
  %143 = load i32, ptr %iCursor186, align 8
  %144 = load ptr, ptr %pItem158, align 8
  %fg187 = getelementptr inbounds nuw %struct.SrcList_item, ptr %144, i32 0, i32 9
  %jointype188 = getelementptr inbounds nuw %struct.anon, ptr %fg187, i32 0, i32 0
  %145 = load i8, ptr %jointype188, align 4
  %conv189 = zext i8 %145 to i32
  %and190 = and i32 %conv189, 32
  %cmp191 = icmp ne i32 %and190, 0
  %conv192 = zext i1 %cmp191 to i32
  %call193 = call i32 @pushDownWhereTerms(ptr noundef %138, ptr noundef %139, ptr noundef %141, i32 noundef %143, i32 noundef %conv192)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.else196

if.then195:                                       ; preds = %land.lhs.true184
  br label %if.end197

if.else196:                                       ; preds = %land.lhs.true184, %if.end177
  br label %if.end197

if.end197:                                        ; preds = %if.else196, %if.then195
  %146 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext = getelementptr inbounds nuw %struct.Parse, ptr %146, i32 0, i32 61
  %147 = load ptr, ptr %zAuthContext, align 8
  store ptr %147, ptr %zSavedAuthContext, align 8
  %148 = load ptr, ptr %pItem158, align 8
  %zName198 = getelementptr inbounds nuw %struct.SrcList_item, ptr %148, i32 0, i32 2
  %149 = load ptr, ptr %zName198, align 8
  %150 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext199 = getelementptr inbounds nuw %struct.Parse, ptr %150, i32 0, i32 61
  store ptr %149, ptr %zAuthContext199, align 8
  %151 = load i32, ptr %i, align 4
  %cmp200 = icmp eq i32 %151, 0
  br i1 %cmp200, label %land.lhs.true202, label %if.else226

land.lhs.true202:                                 ; preds = %if.end197
  %152 = load ptr, ptr %pTabList, align 8
  %nSrc203 = getelementptr inbounds nuw %struct.SrcList, ptr %152, i32 0, i32 0
  %153 = load i32, ptr %nSrc203, align 8
  %cmp204 = icmp eq i32 %153, 1
  br i1 %cmp204, label %if.then215, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %land.lhs.true202
  %154 = load ptr, ptr %pTabList, align 8
  %a207 = getelementptr inbounds nuw %struct.SrcList, ptr %154, i32 0, i32 2
  %arrayidx208 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a207, i64 0, i64 1
  %fg209 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx208, i32 0, i32 9
  %jointype210 = getelementptr inbounds nuw %struct.anon, ptr %fg209, i32 0, i32 0
  %155 = load i8, ptr %jointype210, align 4
  %conv211 = zext i8 %155 to i32
  %and212 = and i32 %conv211, 10
  %cmp213 = icmp ne i32 %and212, 0
  br i1 %cmp213, label %if.then215, label %if.else226

if.then215:                                       ; preds = %lor.lhs.false206, %land.lhs.true202
  %156 = load ptr, ptr %v, align 8
  %call216 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %156)
  %add217 = add nsw i32 %call216, 1
  store i32 %add217, ptr %addrTop, align 4
  %157 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %157, i32 0, i32 18
  %158 = load i32, ptr %nMem, align 8
  %inc218 = add nsw i32 %158, 1
  store i32 %inc218, ptr %nMem, align 8
  %159 = load ptr, ptr %pItem158, align 8
  %regReturn = getelementptr inbounds nuw %struct.SrcList_item, ptr %159, i32 0, i32 7
  store i32 %inc218, ptr %regReturn, align 4
  %160 = load ptr, ptr %v, align 8
  %161 = load ptr, ptr %pItem158, align 8
  %regReturn219 = getelementptr inbounds nuw %struct.SrcList_item, ptr %161, i32 0, i32 7
  %162 = load i32, ptr %regReturn219, align 4
  %163 = load i32, ptr %addrTop, align 4
  %call220 = call i32 @sqlite3VdbeAddOp3(ptr noundef %160, i32 noundef 13, i32 noundef %162, i32 noundef 0, i32 noundef %163)
  %164 = load i32, ptr %addrTop, align 4
  %165 = load ptr, ptr %pItem158, align 8
  %addrFillSub = getelementptr inbounds nuw %struct.SrcList_item, ptr %165, i32 0, i32 6
  store i32 %164, ptr %addrFillSub, align 8
  %166 = load ptr, ptr %pItem158, align 8
  %regReturn221 = getelementptr inbounds nuw %struct.SrcList_item, ptr %166, i32 0, i32 7
  %167 = load i32, ptr %regReturn221, align 4
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 13, i32 noundef %167)
  %168 = load ptr, ptr %pParse.addr, align 8
  %169 = load ptr, ptr %pSub162, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %169, i32 0, i32 6
  %170 = load i32, ptr %selId, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %168, i8 noundef zeroext 1, ptr noundef @.str.721, i32 noundef %170)
  %171 = load ptr, ptr %pParse.addr, align 8
  %172 = load ptr, ptr %pSub162, align 8
  %call222 = call i32 @sqlite3Select(ptr noundef %171, ptr noundef %172, ptr noundef %dest)
  %173 = load ptr, ptr %pSub162, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %173, i32 0, i32 2
  %174 = load i16, ptr %nSelectRow, align 2
  %175 = load ptr, ptr %pItem158, align 8
  %pTab223 = getelementptr inbounds nuw %struct.SrcList_item, ptr %175, i32 0, i32 4
  %176 = load ptr, ptr %pTab223, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %176, i32 0, i32 12
  store i16 %174, ptr %nRowLogEst, align 8
  %177 = load ptr, ptr %pItem158, align 8
  %fg224 = getelementptr inbounds nuw %struct.SrcList_item, ptr %177, i32 0, i32 9
  %viaCoroutine = getelementptr inbounds nuw %struct.anon, ptr %fg224, i32 0, i32 1
  %bf.load = load i8, ptr %viaCoroutine, align 1
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %viaCoroutine, align 1
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 2
  %178 = load i32, ptr %iSdst, align 8
  %179 = load ptr, ptr %pItem158, align 8
  %regResult = getelementptr inbounds nuw %struct.SrcList_item, ptr %179, i32 0, i32 8
  store i32 %178, ptr %regResult, align 8
  %180 = load ptr, ptr %v, align 8
  %181 = load ptr, ptr %pItem158, align 8
  %regReturn225 = getelementptr inbounds nuw %struct.SrcList_item, ptr %181, i32 0, i32 7
  %182 = load i32, ptr %regReturn225, align 4
  call void @sqlite3VdbeEndCoroutine(ptr noundef %180, i32 noundef %182)
  %183 = load ptr, ptr %v, align 8
  %184 = load i32, ptr %addrTop, align 4
  %sub = sub nsw i32 %184, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %183, i32 noundef %sub)
  %185 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ClearTempRegCache(ptr noundef %185)
  br label %if.end266

if.else226:                                       ; preds = %lor.lhs.false206, %if.end197
  store i32 0, ptr %onceAddr, align 4
  %186 = load ptr, ptr %pParse.addr, align 8
  %nMem228 = getelementptr inbounds nuw %struct.Parse, ptr %186, i32 0, i32 18
  %187 = load i32, ptr %nMem228, align 8
  %inc229 = add nsw i32 %187, 1
  store i32 %inc229, ptr %nMem228, align 8
  %188 = load ptr, ptr %pItem158, align 8
  %regReturn230 = getelementptr inbounds nuw %struct.SrcList_item, ptr %188, i32 0, i32 7
  store i32 %inc229, ptr %regReturn230, align 4
  %189 = load ptr, ptr %v, align 8
  %190 = load ptr, ptr %pItem158, align 8
  %regReturn231 = getelementptr inbounds nuw %struct.SrcList_item, ptr %190, i32 0, i32 7
  %191 = load i32, ptr %regReturn231, align 4
  %call232 = call i32 @sqlite3VdbeAddOp2(ptr noundef %189, i32 noundef 70, i32 noundef 0, i32 noundef %191)
  store i32 %call232, ptr %topAddr, align 4
  %192 = load i32, ptr %topAddr, align 4
  %add233 = add nsw i32 %192, 1
  %193 = load ptr, ptr %pItem158, align 8
  %addrFillSub234 = getelementptr inbounds nuw %struct.SrcList_item, ptr %193, i32 0, i32 6
  store i32 %add233, ptr %addrFillSub234, align 8
  %194 = load ptr, ptr %pItem158, align 8
  %fg235 = getelementptr inbounds nuw %struct.SrcList_item, ptr %194, i32 0, i32 9
  %isCorrelated = getelementptr inbounds nuw %struct.anon, ptr %fg235, i32 0, i32 1
  %bf.load236 = load i8, ptr %isCorrelated, align 1
  %bf.lshr = lshr i8 %bf.load236, 3
  %bf.clear237 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear237 to i32
  %cmp238 = icmp eq i32 %bf.cast, 0
  br i1 %cmp238, label %if.then240, label %if.else242

if.then240:                                       ; preds = %if.else226
  %195 = load ptr, ptr %v, align 8
  %call241 = call i32 @sqlite3VdbeAddOp0(ptr noundef %195, i32 noundef 17)
  store i32 %call241, ptr %onceAddr, align 4
  br label %if.end243

if.else242:                                       ; preds = %if.else226
  br label %if.end243

if.end243:                                        ; preds = %if.else242, %if.then240
  %196 = load ptr, ptr %pTabList, align 8
  %197 = load ptr, ptr %pItem158, align 8
  %call244 = call ptr @isSelfJoinView(ptr noundef %196, ptr noundef %197)
  store ptr %call244, ptr %pPrior227, align 8
  %198 = load ptr, ptr %pPrior227, align 8
  %tobool245 = icmp ne ptr %198, null
  br i1 %tobool245, label %if.then246, label %if.else253

if.then246:                                       ; preds = %if.end243
  %199 = load ptr, ptr %v, align 8
  %200 = load ptr, ptr %pItem158, align 8
  %iCursor247 = getelementptr inbounds nuw %struct.SrcList_item, ptr %200, i32 0, i32 10
  %201 = load i32, ptr %iCursor247, align 8
  %202 = load ptr, ptr %pPrior227, align 8
  %iCursor248 = getelementptr inbounds nuw %struct.SrcList_item, ptr %202, i32 0, i32 10
  %203 = load i32, ptr %iCursor248, align 8
  %call249 = call i32 @sqlite3VdbeAddOp2(ptr noundef %199, i32 noundef 109, i32 noundef %201, i32 noundef %203)
  %204 = load ptr, ptr %pPrior227, align 8
  %pSelect250 = getelementptr inbounds nuw %struct.SrcList_item, ptr %204, i32 0, i32 5
  %205 = load ptr, ptr %pSelect250, align 8
  %nSelectRow251 = getelementptr inbounds nuw %struct.Select, ptr %205, i32 0, i32 2
  %206 = load i16, ptr %nSelectRow251, align 2
  %207 = load ptr, ptr %pSub162, align 8
  %nSelectRow252 = getelementptr inbounds nuw %struct.Select, ptr %207, i32 0, i32 2
  store i16 %206, ptr %nSelectRow252, align 2
  br label %if.end257

if.else253:                                       ; preds = %if.end243
  %208 = load ptr, ptr %pItem158, align 8
  %iCursor254 = getelementptr inbounds nuw %struct.SrcList_item, ptr %208, i32 0, i32 10
  %209 = load i32, ptr %iCursor254, align 8
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 12, i32 noundef %209)
  %210 = load ptr, ptr %pParse.addr, align 8
  %211 = load ptr, ptr %pSub162, align 8
  %selId255 = getelementptr inbounds nuw %struct.Select, ptr %211, i32 0, i32 6
  %212 = load i32, ptr %selId255, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %210, i8 noundef zeroext 1, ptr noundef @.str.722, i32 noundef %212)
  %213 = load ptr, ptr %pParse.addr, align 8
  %214 = load ptr, ptr %pSub162, align 8
  %call256 = call i32 @sqlite3Select(ptr noundef %213, ptr noundef %214, ptr noundef %dest)
  br label %if.end257

if.end257:                                        ; preds = %if.else253, %if.then246
  %215 = load ptr, ptr %pSub162, align 8
  %nSelectRow258 = getelementptr inbounds nuw %struct.Select, ptr %215, i32 0, i32 2
  %216 = load i16, ptr %nSelectRow258, align 2
  %217 = load ptr, ptr %pItem158, align 8
  %pTab259 = getelementptr inbounds nuw %struct.SrcList_item, ptr %217, i32 0, i32 4
  %218 = load ptr, ptr %pTab259, align 8
  %nRowLogEst260 = getelementptr inbounds nuw %struct.Table, ptr %218, i32 0, i32 12
  store i16 %216, ptr %nRowLogEst260, align 8
  %219 = load i32, ptr %onceAddr, align 4
  %tobool261 = icmp ne i32 %219, 0
  br i1 %tobool261, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end257
  %220 = load ptr, ptr %v, align 8
  %221 = load i32, ptr %onceAddr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %220, i32 noundef %221)
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.end257
  %222 = load ptr, ptr %v, align 8
  %223 = load ptr, ptr %pItem158, align 8
  %regReturn264 = getelementptr inbounds nuw %struct.SrcList_item, ptr %223, i32 0, i32 7
  %224 = load i32, ptr %regReturn264, align 4
  %call265 = call i32 @sqlite3VdbeAddOp1(ptr noundef %222, i32 noundef 66, i32 noundef %224)
  store i32 %call265, ptr %retAddr, align 4
  %225 = load ptr, ptr %v, align 8
  %226 = load i32, ptr %topAddr, align 4
  %227 = load i32, ptr %retAddr, align 4
  call void @sqlite3VdbeChangeP1(ptr noundef %225, i32 noundef %226, i32 noundef %227)
  %228 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ClearTempRegCache(ptr noundef %228)
  br label %if.end266

if.end266:                                        ; preds = %if.end263, %if.then215
  %229 = load ptr, ptr %db, align 8
  %mallocFailed267 = getelementptr inbounds nuw %struct.sqlite3, ptr %229, i32 0, i32 19
  %230 = load i8, ptr %mallocFailed267, align 1
  %tobool268 = icmp ne i8 %230, 0
  br i1 %tobool268, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.end266
  br label %select_end

if.end270:                                        ; preds = %if.end266
  %231 = load ptr, ptr %p.addr, align 8
  %call271 = call i32 @sqlite3SelectExprHeight(ptr noundef %231)
  %232 = load ptr, ptr %pParse.addr, align 8
  %nHeight272 = getelementptr inbounds nuw %struct.Parse, ptr %232, i32 0, i32 53
  %233 = load i32, ptr %nHeight272, align 4
  %sub273 = sub nsw i32 %233, %call271
  store i32 %sub273, ptr %nHeight272, align 4
  %234 = load ptr, ptr %zSavedAuthContext, align 8
  %235 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext274 = getelementptr inbounds nuw %struct.Parse, ptr %235, i32 0, i32 61
  store ptr %234, ptr %zAuthContext274, align 8
  br label %for.inc275

for.inc275:                                       ; preds = %if.end270, %if.then176
  %236 = load i32, ptr %i, align 4
  %inc276 = add nsw i32 %236, 1
  store i32 %inc276, ptr %i, align 4
  br label %for.cond153, !llvm.loop !8

for.end277:                                       ; preds = %for.cond153
  %237 = load ptr, ptr %p.addr, align 8
  %pEList278 = getelementptr inbounds nuw %struct.Select, ptr %237, i32 0, i32 0
  %238 = load ptr, ptr %pEList278, align 8
  store ptr %238, ptr %pEList, align 8
  %239 = load ptr, ptr %p.addr, align 8
  %pWhere279 = getelementptr inbounds nuw %struct.Select, ptr %239, i32 0, i32 9
  %240 = load ptr, ptr %pWhere279, align 8
  store ptr %240, ptr %pWhere, align 8
  %241 = load ptr, ptr %p.addr, align 8
  %pGroupBy280 = getelementptr inbounds nuw %struct.Select, ptr %241, i32 0, i32 10
  %242 = load ptr, ptr %pGroupBy280, align 8
  store ptr %242, ptr %pGroupBy, align 8
  %243 = load ptr, ptr %p.addr, align 8
  %pHaving281 = getelementptr inbounds nuw %struct.Select, ptr %243, i32 0, i32 11
  %244 = load ptr, ptr %pHaving281, align 8
  store ptr %244, ptr %pHaving, align 8
  %245 = load ptr, ptr %p.addr, align 8
  %selFlags282 = getelementptr inbounds nuw %struct.Select, ptr %245, i32 0, i32 3
  %246 = load i32, ptr %selFlags282, align 4
  %and283 = and i32 %246, 1
  %cmp284 = icmp ne i32 %and283, 0
  %conv285 = zext i1 %cmp284 to i32
  %conv286 = trunc i32 %conv285 to i8
  %isTnct = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 0
  store i8 %conv286, ptr %isTnct, align 4
  %247 = load ptr, ptr %p.addr, align 8
  %selFlags287 = getelementptr inbounds nuw %struct.Select, ptr %247, i32 0, i32 3
  %248 = load i32, ptr %selFlags287, align 4
  %and288 = and i32 %248, 9
  %cmp289 = icmp eq i32 %and288, 1
  br i1 %cmp289, label %land.lhs.true291, label %if.end301

land.lhs.true291:                                 ; preds = %for.end277
  %pOrderBy292 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %249 = load ptr, ptr %pOrderBy292, align 8
  %250 = load ptr, ptr %pEList, align 8
  %call293 = call i32 @sqlite3ExprListCompare(ptr noundef %249, ptr noundef %250, i32 noundef -1)
  %cmp294 = icmp eq i32 %call293, 0
  br i1 %cmp294, label %if.then296, label %if.end301

if.then296:                                       ; preds = %land.lhs.true291
  %251 = load ptr, ptr %p.addr, align 8
  %selFlags297 = getelementptr inbounds nuw %struct.Select, ptr %251, i32 0, i32 3
  %252 = load i32, ptr %selFlags297, align 4
  %and298 = and i32 %252, -2
  store i32 %and298, ptr %selFlags297, align 4
  %253 = load ptr, ptr %db, align 8
  %254 = load ptr, ptr %pEList, align 8
  %call299 = call ptr @sqlite3ExprListDup(ptr noundef %253, ptr noundef %254, i32 noundef 0)
  %255 = load ptr, ptr %p.addr, align 8
  %pGroupBy300 = getelementptr inbounds nuw %struct.Select, ptr %255, i32 0, i32 10
  store ptr %call299, ptr %pGroupBy300, align 8
  store ptr %call299, ptr %pGroupBy, align 8
  br label %if.end301

if.end301:                                        ; preds = %if.then296, %land.lhs.true291, %for.end277
  %pOrderBy302 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %256 = load ptr, ptr %pOrderBy302, align 8
  %tobool303 = icmp ne ptr %256, null
  br i1 %tobool303, label %if.then304, label %if.else316

if.then304:                                       ; preds = %if.end301
  %257 = load ptr, ptr %pParse.addr, align 8
  %pOrderBy305 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %258 = load ptr, ptr %pOrderBy305, align 8
  %259 = load ptr, ptr %pEList, align 8
  %nExpr306 = getelementptr inbounds nuw %struct.ExprList, ptr %259, i32 0, i32 0
  %260 = load i32, ptr %nExpr306, align 8
  %call307 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %257, ptr noundef %258, i32 noundef 0, i32 noundef %260)
  store ptr %call307, ptr %pKeyInfo, align 8
  %261 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %261, i32 0, i32 17
  %262 = load i32, ptr %nTab, align 4
  %inc308 = add nsw i32 %262, 1
  store i32 %inc308, ptr %nTab, align 4
  %iECursor = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 2
  store i32 %262, ptr %iECursor, align 4
  %263 = load ptr, ptr %v, align 8
  %iECursor309 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 2
  %264 = load i32, ptr %iECursor309, align 4
  %pOrderBy310 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %265 = load ptr, ptr %pOrderBy310, align 8
  %nExpr311 = getelementptr inbounds nuw %struct.ExprList, ptr %265, i32 0, i32 0
  %266 = load i32, ptr %nExpr311, align 8
  %add312 = add nsw i32 %266, 1
  %267 = load ptr, ptr %pEList, align 8
  %nExpr313 = getelementptr inbounds nuw %struct.ExprList, ptr %267, i32 0, i32 0
  %268 = load i32, ptr %nExpr313, align 8
  %add314 = add nsw i32 %add312, %268
  %269 = load ptr, ptr %pKeyInfo, align 8
  %call315 = call i32 @sqlite3VdbeAddOp4(ptr noundef %263, i32 noundef 112, i32 noundef %264, i32 noundef %add314, i32 noundef 0, ptr noundef %269, i32 noundef -9)
  %addrSortIndex = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  store i32 %call315, ptr %addrSortIndex, align 8
  br label %if.end318

if.else316:                                       ; preds = %if.end301
  %addrSortIndex317 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  store i32 -1, ptr %addrSortIndex317, align 8
  br label %if.end318

if.end318:                                        ; preds = %if.else316, %if.then304
  %270 = load ptr, ptr %pDest.addr, align 8
  %eDest319 = getelementptr inbounds nuw %struct.SelectDest, ptr %270, i32 0, i32 0
  %271 = load i8, ptr %eDest319, align 8
  %conv320 = zext i8 %271 to i32
  %cmp321 = icmp eq i32 %conv320, 12
  br i1 %cmp321, label %if.then323, label %if.end326

if.then323:                                       ; preds = %if.end318
  %272 = load ptr, ptr %v, align 8
  %273 = load ptr, ptr %pDest.addr, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %273, i32 0, i32 1
  %274 = load i32, ptr %iSDParm, align 4
  %275 = load ptr, ptr %pEList, align 8
  %nExpr324 = getelementptr inbounds nuw %struct.ExprList, ptr %275, i32 0, i32 0
  %276 = load i32, ptr %nExpr324, align 8
  %call325 = call i32 @sqlite3VdbeAddOp2(ptr noundef %272, i32 noundef 112, i32 noundef %274, i32 noundef %276)
  br label %if.end326

if.end326:                                        ; preds = %if.then323, %if.end318
  %277 = load ptr, ptr %pParse.addr, align 8
  %call327 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %277)
  store i32 %call327, ptr %iEnd, align 4
  %278 = load ptr, ptr %p.addr, align 8
  %selFlags328 = getelementptr inbounds nuw %struct.Select, ptr %278, i32 0, i32 3
  %279 = load i32, ptr %selFlags328, align 4
  %and329 = and i32 %279, 16384
  %cmp330 = icmp eq i32 %and329, 0
  br i1 %cmp330, label %if.then332, label %if.end334

if.then332:                                       ; preds = %if.end326
  %280 = load ptr, ptr %p.addr, align 8
  %nSelectRow333 = getelementptr inbounds nuw %struct.Select, ptr %280, i32 0, i32 2
  store i16 320, ptr %nSelectRow333, align 2
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.end326
  %281 = load ptr, ptr %pParse.addr, align 8
  %282 = load ptr, ptr %p.addr, align 8
  %283 = load i32, ptr %iEnd, align 4
  call void @computeLimitRegisters(ptr noundef %281, ptr noundef %282, i32 noundef %283)
  %284 = load ptr, ptr %p.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %284, i32 0, i32 4
  %285 = load i32, ptr %iLimit, align 8
  %cmp335 = icmp eq i32 %285, 0
  br i1 %cmp335, label %land.lhs.true337, label %if.end345

land.lhs.true337:                                 ; preds = %if.end334
  %addrSortIndex338 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  %286 = load i32, ptr %addrSortIndex338, align 8
  %cmp339 = icmp sge i32 %286, 0
  br i1 %cmp339, label %if.then341, label %if.end345

if.then341:                                       ; preds = %land.lhs.true337
  %287 = load ptr, ptr %v, align 8
  %addrSortIndex342 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  %288 = load i32, ptr %addrSortIndex342, align 8
  call void @sqlite3VdbeChangeOpcode(ptr noundef %287, i32 noundef %288, i8 noundef zeroext 114)
  %sortFlags = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 8
  %289 = load i8, ptr %sortFlags, align 4
  %conv343 = zext i8 %289 to i32
  %or = or i32 %conv343, 1
  %conv344 = trunc i32 %or to i8
  store i8 %conv344, ptr %sortFlags, align 4
  br label %if.end345

if.end345:                                        ; preds = %if.then341, %land.lhs.true337, %if.end334
  %290 = load ptr, ptr %p.addr, align 8
  %selFlags346 = getelementptr inbounds nuw %struct.Select, ptr %290, i32 0, i32 3
  %291 = load i32, ptr %selFlags346, align 4
  %and347 = and i32 %291, 1
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %if.then349, label %if.else356

if.then349:                                       ; preds = %if.end345
  %292 = load ptr, ptr %pParse.addr, align 8
  %nTab350 = getelementptr inbounds nuw %struct.Parse, ptr %292, i32 0, i32 17
  %293 = load i32, ptr %nTab350, align 4
  %inc351 = add nsw i32 %293, 1
  store i32 %inc351, ptr %nTab350, align 4
  %tabTnct = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 2
  store i32 %293, ptr %tabTnct, align 4
  %294 = load ptr, ptr %v, align 8
  %tabTnct352 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 2
  %295 = load i32, ptr %tabTnct352, align 4
  %296 = load ptr, ptr %pParse.addr, align 8
  %297 = load ptr, ptr %p.addr, align 8
  %pEList353 = getelementptr inbounds nuw %struct.Select, ptr %297, i32 0, i32 0
  %298 = load ptr, ptr %pEList353, align 8
  %call354 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %296, ptr noundef %298, i32 noundef 0, i32 noundef 0)
  %call355 = call i32 @sqlite3VdbeAddOp4(ptr noundef %294, i32 noundef 112, i32 noundef %295, i32 noundef 0, i32 noundef 0, ptr noundef %call354, i32 noundef -9)
  %addrTnct = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 3
  store i32 %call355, ptr %addrTnct, align 4
  %299 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %299, i16 noundef zeroext 8)
  %eTnctType = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 1
  store i8 3, ptr %eTnctType, align 1
  br label %if.end358

if.else356:                                       ; preds = %if.end345
  %eTnctType357 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 1
  store i8 0, ptr %eTnctType357, align 1
  br label %if.end358

if.end358:                                        ; preds = %if.else356, %if.then349
  %300 = load i32, ptr %isAgg, align 4
  %tobool359 = icmp ne i32 %300, 0
  br i1 %tobool359, label %if.else444, label %land.lhs.true360

land.lhs.true360:                                 ; preds = %if.end358
  %301 = load ptr, ptr %pGroupBy, align 8
  %cmp361 = icmp eq ptr %301, null
  br i1 %cmp361, label %if.then363, label %if.else444

if.then363:                                       ; preds = %land.lhs.true360
  %isTnct364 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 0
  %302 = load i8, ptr %isTnct364, align 4
  %conv365 = zext i8 %302 to i32
  %tobool366 = icmp ne i32 %conv365, 0
  %303 = zext i1 %tobool366 to i64
  %cond = select i1 %tobool366, i32 256, i32 0
  %304 = load ptr, ptr %p.addr, align 8
  %selFlags367 = getelementptr inbounds nuw %struct.Select, ptr %304, i32 0, i32 3
  %305 = load i32, ptr %selFlags367, align 4
  %and368 = and i32 %305, 16384
  %or369 = or i32 %cond, %and368
  %conv370 = trunc i32 %or369 to i16
  store i16 %conv370, ptr %wctrlFlags, align 2
  %306 = load ptr, ptr %p.addr, align 8
  %pWin371 = getelementptr inbounds nuw %struct.Select, ptr %306, i32 0, i32 17
  %307 = load ptr, ptr %pWin371, align 8
  store ptr %307, ptr %pWin, align 8
  %308 = load ptr, ptr %pWin, align 8
  %tobool372 = icmp ne ptr %308, null
  br i1 %tobool372, label %if.then373, label %if.end374

if.then373:                                       ; preds = %if.then363
  %309 = load ptr, ptr %pParse.addr, align 8
  %310 = load ptr, ptr %pWin, align 8
  call void @sqlite3WindowCodeInit(ptr noundef %309, ptr noundef %310)
  br label %if.end374

if.end374:                                        ; preds = %if.then373, %if.then363
  %311 = load ptr, ptr %pParse.addr, align 8
  %312 = load ptr, ptr %pTabList, align 8
  %313 = load ptr, ptr %pWhere, align 8
  %pOrderBy375 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %314 = load ptr, ptr %pOrderBy375, align 8
  %315 = load ptr, ptr %p.addr, align 8
  %pEList376 = getelementptr inbounds nuw %struct.Select, ptr %315, i32 0, i32 0
  %316 = load ptr, ptr %pEList376, align 8
  %317 = load i16, ptr %wctrlFlags, align 2
  %318 = load ptr, ptr %p.addr, align 8
  %nSelectRow377 = getelementptr inbounds nuw %struct.Select, ptr %318, i32 0, i32 2
  %319 = load i16, ptr %nSelectRow377, align 2
  %conv378 = sext i16 %319 to i32
  %call379 = call ptr @sqlite3WhereBegin(ptr noundef %311, ptr noundef %312, ptr noundef %313, ptr noundef %314, ptr noundef %316, i16 noundef zeroext %317, i32 noundef %conv378)
  store ptr %call379, ptr %pWInfo, align 8
  %320 = load ptr, ptr %pWInfo, align 8
  %cmp380 = icmp eq ptr %320, null
  br i1 %cmp380, label %if.then382, label %if.end383

if.then382:                                       ; preds = %if.end374
  br label %select_end

if.end383:                                        ; preds = %if.end374
  %321 = load ptr, ptr %pWInfo, align 8
  %call384 = call signext i16 @sqlite3WhereOutputRowCount(ptr noundef %321)
  %conv385 = sext i16 %call384 to i32
  %322 = load ptr, ptr %p.addr, align 8
  %nSelectRow386 = getelementptr inbounds nuw %struct.Select, ptr %322, i32 0, i32 2
  %323 = load i16, ptr %nSelectRow386, align 2
  %conv387 = sext i16 %323 to i32
  %cmp388 = icmp slt i32 %conv385, %conv387
  br i1 %cmp388, label %if.then390, label %if.end393

if.then390:                                       ; preds = %if.end383
  %324 = load ptr, ptr %pWInfo, align 8
  %call391 = call signext i16 @sqlite3WhereOutputRowCount(ptr noundef %324)
  %325 = load ptr, ptr %p.addr, align 8
  %nSelectRow392 = getelementptr inbounds nuw %struct.Select, ptr %325, i32 0, i32 2
  store i16 %call391, ptr %nSelectRow392, align 2
  br label %if.end393

if.end393:                                        ; preds = %if.then390, %if.end383
  %isTnct394 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 0
  %326 = load i8, ptr %isTnct394, align 4
  %conv395 = zext i8 %326 to i32
  %tobool396 = icmp ne i32 %conv395, 0
  br i1 %tobool396, label %land.lhs.true397, label %if.end404

land.lhs.true397:                                 ; preds = %if.end393
  %327 = load ptr, ptr %pWInfo, align 8
  %call398 = call i32 @sqlite3WhereIsDistinct(ptr noundef %327)
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.then400, label %if.end404

if.then400:                                       ; preds = %land.lhs.true397
  %328 = load ptr, ptr %pWInfo, align 8
  %call401 = call i32 @sqlite3WhereIsDistinct(ptr noundef %328)
  %conv402 = trunc i32 %call401 to i8
  %eTnctType403 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 1
  store i8 %conv402, ptr %eTnctType403, align 1
  br label %if.end404

if.end404:                                        ; preds = %if.then400, %land.lhs.true397, %if.end393
  %pOrderBy405 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %329 = load ptr, ptr %pOrderBy405, align 8
  %tobool406 = icmp ne ptr %329, null
  br i1 %tobool406, label %if.then407, label %if.end418

if.then407:                                       ; preds = %if.end404
  %330 = load ptr, ptr %pWInfo, align 8
  %call408 = call i32 @sqlite3WhereIsOrdered(ptr noundef %330)
  %nOBSat = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 1
  store i32 %call408, ptr %nOBSat, align 8
  %331 = load ptr, ptr %pWInfo, align 8
  %call409 = call i32 @sqlite3WhereOrderByLimitOptLabel(ptr noundef %331)
  %labelOBLopt = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 7
  store i32 %call409, ptr %labelOBLopt, align 8
  %nOBSat410 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 1
  %332 = load i32, ptr %nOBSat410, align 8
  %pOrderBy411 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %333 = load ptr, ptr %pOrderBy411, align 8
  %nExpr412 = getelementptr inbounds nuw %struct.ExprList, ptr %333, i32 0, i32 0
  %334 = load i32, ptr %nExpr412, align 8
  %cmp413 = icmp eq i32 %332, %334
  br i1 %cmp413, label %if.then415, label %if.end417

if.then415:                                       ; preds = %if.then407
  %pOrderBy416 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  store ptr null, ptr %pOrderBy416, align 8
  br label %if.end417

if.end417:                                        ; preds = %if.then415, %if.then407
  br label %if.end418

if.end418:                                        ; preds = %if.end417, %if.end404
  %addrSortIndex419 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  %335 = load i32, ptr %addrSortIndex419, align 8
  %cmp420 = icmp sge i32 %335, 0
  br i1 %cmp420, label %land.lhs.true422, label %if.end429

land.lhs.true422:                                 ; preds = %if.end418
  %pOrderBy423 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %336 = load ptr, ptr %pOrderBy423, align 8
  %cmp424 = icmp eq ptr %336, null
  br i1 %cmp424, label %if.then426, label %if.end429

if.then426:                                       ; preds = %land.lhs.true422
  %337 = load ptr, ptr %v, align 8
  %addrSortIndex427 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  %338 = load i32, ptr %addrSortIndex427, align 8
  %call428 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %337, i32 noundef %338)
  br label %if.end429

if.end429:                                        ; preds = %if.then426, %land.lhs.true422, %if.end418
  %339 = load ptr, ptr %pWin, align 8
  %tobool430 = icmp ne ptr %339, null
  br i1 %tobool430, label %if.then431, label %if.else440

if.then431:                                       ; preds = %if.end429
  %340 = load ptr, ptr %pParse.addr, align 8
  %call432 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %340)
  store i32 %call432, ptr %addrGosub, align 4
  %341 = load ptr, ptr %pParse.addr, align 8
  %call433 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %341)
  store i32 %call433, ptr %iCont, align 4
  %342 = load ptr, ptr %pParse.addr, align 8
  %call434 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %342)
  store i32 %call434, ptr %iBreak, align 4
  %343 = load ptr, ptr %pParse.addr, align 8
  %nMem435 = getelementptr inbounds nuw %struct.Parse, ptr %343, i32 0, i32 18
  %344 = load i32, ptr %nMem435, align 8
  %inc436 = add nsw i32 %344, 1
  store i32 %inc436, ptr %nMem435, align 8
  store i32 %inc436, ptr %regGosub, align 4
  %345 = load ptr, ptr %pParse.addr, align 8
  %346 = load ptr, ptr %p.addr, align 8
  %347 = load ptr, ptr %pWInfo, align 8
  %348 = load i32, ptr %regGosub, align 4
  %349 = load i32, ptr %addrGosub, align 4
  call void @sqlite3WindowCodeStep(ptr noundef %345, ptr noundef %346, ptr noundef %347, i32 noundef %348, i32 noundef %349)
  %350 = load ptr, ptr %v, align 8
  %351 = load i32, ptr %iBreak, align 4
  %call437 = call i32 @sqlite3VdbeAddOp2(ptr noundef %350, i32 noundef 11, i32 noundef 0, i32 noundef %351)
  %352 = load ptr, ptr %v, align 8
  %353 = load i32, ptr %addrGosub, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %352, i32 noundef %353)
  %labelOBLopt438 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 7
  store i32 0, ptr %labelOBLopt438, align 8
  %354 = load ptr, ptr %pParse.addr, align 8
  %355 = load ptr, ptr %p.addr, align 8
  %356 = load ptr, ptr %pDest.addr, align 8
  %357 = load i32, ptr %iCont, align 4
  %358 = load i32, ptr %iBreak, align 4
  call void @selectInnerLoop(ptr noundef %354, ptr noundef %355, i32 noundef -1, ptr noundef %sSort, ptr noundef %sDistinct, ptr noundef %356, i32 noundef %357, i32 noundef %358)
  %359 = load ptr, ptr %v, align 8
  %360 = load i32, ptr %iCont, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %359, i32 noundef %360)
  %361 = load ptr, ptr %v, align 8
  %362 = load i32, ptr %regGosub, align 4
  %call439 = call i32 @sqlite3VdbeAddOp1(ptr noundef %361, i32 noundef 66, i32 noundef %362)
  %363 = load ptr, ptr %v, align 8
  %364 = load i32, ptr %iBreak, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %363, i32 noundef %364)
  br label %if.end443

if.else440:                                       ; preds = %if.end429
  %365 = load ptr, ptr %pParse.addr, align 8
  %366 = load ptr, ptr %p.addr, align 8
  %367 = load ptr, ptr %pDest.addr, align 8
  %368 = load ptr, ptr %pWInfo, align 8
  %call441 = call i32 @sqlite3WhereContinueLabel(ptr noundef %368)
  %369 = load ptr, ptr %pWInfo, align 8
  %call442 = call i32 @sqlite3WhereBreakLabel(ptr noundef %369)
  call void @selectInnerLoop(ptr noundef %365, ptr noundef %366, i32 noundef -1, ptr noundef %sSort, ptr noundef %sDistinct, ptr noundef %367, i32 noundef %call441, i32 noundef %call442)
  %370 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %370)
  br label %if.end443

if.end443:                                        ; preds = %if.else440, %if.then431
  br label %if.end882

if.else444:                                       ; preds = %land.lhs.true360, %if.end358
  store i32 0, ptr %sortPTab, align 4
  store i32 0, ptr %sortOut, align 4
  store i32 0, ptr %orderByGrp, align 4
  %371 = load ptr, ptr %pGroupBy, align 8
  %tobool445 = icmp ne ptr %371, null
  br i1 %tobool445, label %if.then446, label %if.else515

if.then446:                                       ; preds = %if.else444
  %372 = load ptr, ptr %p.addr, align 8
  %pEList448 = getelementptr inbounds nuw %struct.Select, ptr %372, i32 0, i32 0
  %373 = load ptr, ptr %pEList448, align 8
  %nExpr449 = getelementptr inbounds nuw %struct.ExprList, ptr %373, i32 0, i32 0
  %374 = load i32, ptr %nExpr449, align 8
  store i32 %374, ptr %k, align 4
  %375 = load ptr, ptr %p.addr, align 8
  %pEList450 = getelementptr inbounds nuw %struct.Select, ptr %375, i32 0, i32 0
  %376 = load ptr, ptr %pEList450, align 8
  %a451 = getelementptr inbounds nuw %struct.ExprList, ptr %376, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a451, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem447, align 8
  br label %for.cond452

for.cond452:                                      ; preds = %for.inc456, %if.then446
  %377 = load i32, ptr %k, align 4
  %cmp453 = icmp sgt i32 %377, 0
  br i1 %cmp453, label %for.body455, label %for.end457

for.body455:                                      ; preds = %for.cond452
  %378 = load ptr, ptr %pItem447, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %378, i32 0, i32 5
  %iAlias = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 1
  store i16 0, ptr %iAlias, align 2
  br label %for.inc456

for.inc456:                                       ; preds = %for.body455
  %379 = load i32, ptr %k, align 4
  %dec = add nsw i32 %379, -1
  store i32 %dec, ptr %k, align 4
  %380 = load ptr, ptr %pItem447, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %380, i32 1
  store ptr %incdec.ptr, ptr %pItem447, align 8
  br label %for.cond452, !llvm.loop !9

for.end457:                                       ; preds = %for.cond452
  %381 = load ptr, ptr %pGroupBy, align 8
  %nExpr458 = getelementptr inbounds nuw %struct.ExprList, ptr %381, i32 0, i32 0
  %382 = load i32, ptr %nExpr458, align 8
  store i32 %382, ptr %k, align 4
  %383 = load ptr, ptr %pGroupBy, align 8
  %a459 = getelementptr inbounds nuw %struct.ExprList, ptr %383, i32 0, i32 1
  %arraydecay460 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a459, i64 0, i64 0
  store ptr %arraydecay460, ptr %pItem447, align 8
  br label %for.cond461

for.cond461:                                      ; preds = %for.inc467, %for.end457
  %384 = load i32, ptr %k, align 4
  %cmp462 = icmp sgt i32 %384, 0
  br i1 %cmp462, label %for.body464, label %for.end470

for.body464:                                      ; preds = %for.cond461
  %385 = load ptr, ptr %pItem447, align 8
  %u465 = getelementptr inbounds nuw %struct.ExprList_item, ptr %385, i32 0, i32 5
  %iAlias466 = getelementptr inbounds nuw %struct.anon.12, ptr %u465, i32 0, i32 1
  store i16 0, ptr %iAlias466, align 2
  br label %for.inc467

for.inc467:                                       ; preds = %for.body464
  %386 = load i32, ptr %k, align 4
  %dec468 = add nsw i32 %386, -1
  store i32 %dec468, ptr %k, align 4
  %387 = load ptr, ptr %pItem447, align 8
  %incdec.ptr469 = getelementptr inbounds nuw %struct.ExprList_item, ptr %387, i32 1
  store ptr %incdec.ptr469, ptr %pItem447, align 8
  br label %for.cond461, !llvm.loop !10

for.end470:                                       ; preds = %for.cond461
  %388 = load ptr, ptr %p.addr, align 8
  %nSelectRow471 = getelementptr inbounds nuw %struct.Select, ptr %388, i32 0, i32 2
  %389 = load i16, ptr %nSelectRow471, align 2
  %conv472 = sext i16 %389 to i32
  %cmp473 = icmp sgt i32 %conv472, 66
  br i1 %cmp473, label %if.then475, label %if.end477

if.then475:                                       ; preds = %for.end470
  %390 = load ptr, ptr %p.addr, align 8
  %nSelectRow476 = getelementptr inbounds nuw %struct.Select, ptr %390, i32 0, i32 2
  store i16 66, ptr %nSelectRow476, align 2
  br label %if.end477

if.end477:                                        ; preds = %if.then475, %for.end470
  %pOrderBy478 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %391 = load ptr, ptr %pOrderBy478, align 8
  %tobool479 = icmp ne ptr %391, null
  br i1 %tobool479, label %land.lhs.true480, label %if.end514

land.lhs.true480:                                 ; preds = %if.end477
  %392 = load ptr, ptr %pGroupBy, align 8
  %nExpr481 = getelementptr inbounds nuw %struct.ExprList, ptr %392, i32 0, i32 0
  %393 = load i32, ptr %nExpr481, align 8
  %pOrderBy482 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %394 = load ptr, ptr %pOrderBy482, align 8
  %nExpr483 = getelementptr inbounds nuw %struct.ExprList, ptr %394, i32 0, i32 0
  %395 = load i32, ptr %nExpr483, align 8
  %cmp484 = icmp eq i32 %393, %395
  br i1 %cmp484, label %if.then486, label %if.end514

if.then486:                                       ; preds = %land.lhs.true480
  store i32 0, ptr %ii, align 4
  br label %for.cond487

for.cond487:                                      ; preds = %for.inc505, %if.then486
  %396 = load i32, ptr %ii, align 4
  %397 = load ptr, ptr %pGroupBy, align 8
  %nExpr488 = getelementptr inbounds nuw %struct.ExprList, ptr %397, i32 0, i32 0
  %398 = load i32, ptr %nExpr488, align 8
  %cmp489 = icmp slt i32 %396, %398
  br i1 %cmp489, label %for.body491, label %for.end507

for.body491:                                      ; preds = %for.cond487
  %pOrderBy493 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %399 = load ptr, ptr %pOrderBy493, align 8
  %a494 = getelementptr inbounds nuw %struct.ExprList, ptr %399, i32 0, i32 1
  %400 = load i32, ptr %ii, align 4
  %idxprom495 = sext i32 %400 to i64
  %arrayidx496 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a494, i64 0, i64 %idxprom495
  %sortFlags497 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx496, i32 0, i32 3
  %401 = load i8, ptr %sortFlags497, align 8
  %conv498 = zext i8 %401 to i32
  %and499 = and i32 %conv498, 1
  %conv500 = trunc i32 %and499 to i8
  store i8 %conv500, ptr %sortFlags492, align 1
  %402 = load i8, ptr %sortFlags492, align 1
  %403 = load ptr, ptr %pGroupBy, align 8
  %a501 = getelementptr inbounds nuw %struct.ExprList, ptr %403, i32 0, i32 1
  %404 = load i32, ptr %ii, align 4
  %idxprom502 = sext i32 %404 to i64
  %arrayidx503 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a501, i64 0, i64 %idxprom502
  %sortFlags504 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx503, i32 0, i32 3
  store i8 %402, ptr %sortFlags504, align 8
  br label %for.inc505

for.inc505:                                       ; preds = %for.body491
  %405 = load i32, ptr %ii, align 4
  %inc506 = add nsw i32 %405, 1
  store i32 %inc506, ptr %ii, align 4
  br label %for.cond487, !llvm.loop !11

for.end507:                                       ; preds = %for.cond487
  %406 = load ptr, ptr %pGroupBy, align 8
  %pOrderBy508 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %407 = load ptr, ptr %pOrderBy508, align 8
  %call509 = call i32 @sqlite3ExprListCompare(ptr noundef %406, ptr noundef %407, i32 noundef -1)
  %cmp510 = icmp eq i32 %call509, 0
  br i1 %cmp510, label %if.then512, label %if.end513

if.then512:                                       ; preds = %for.end507
  store i32 1, ptr %orderByGrp, align 4
  br label %if.end513

if.end513:                                        ; preds = %if.then512, %for.end507
  br label %if.end514

if.end514:                                        ; preds = %if.end513, %land.lhs.true480, %if.end477
  br label %if.end517

if.else515:                                       ; preds = %if.else444
  %408 = load ptr, ptr %p.addr, align 8
  %nSelectRow516 = getelementptr inbounds nuw %struct.Select, ptr %408, i32 0, i32 2
  store i16 0, ptr %nSelectRow516, align 2
  br label %if.end517

if.end517:                                        ; preds = %if.else515, %if.end514
  %409 = load ptr, ptr %pParse.addr, align 8
  %call518 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %409)
  store i32 %call518, ptr %addrEnd, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %410 = load ptr, ptr %pParse.addr, align 8
  %pParse519 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %410, ptr %pParse519, align 8
  %411 = load ptr, ptr %pTabList, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %411, ptr %pSrcList, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 2
  store ptr %sAggInfo, ptr %uNC, align 8
  %412 = load ptr, ptr %pParse.addr, align 8
  %nMem520 = getelementptr inbounds nuw %struct.Parse, ptr %412, i32 0, i32 18
  %413 = load i32, ptr %nMem520, align 8
  %add521 = add nsw i32 %413, 1
  %mnReg = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 5
  store i32 %add521, ptr %mnReg, align 8
  %414 = load ptr, ptr %pGroupBy, align 8
  %tobool522 = icmp ne ptr %414, null
  br i1 %tobool522, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end517
  %415 = load ptr, ptr %pGroupBy, align 8
  %nExpr523 = getelementptr inbounds nuw %struct.ExprList, ptr %415, i32 0, i32 0
  %416 = load i32, ptr %nExpr523, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end517
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond524 = phi i32 [ %416, %cond.true ], [ 0, %cond.false ]
  %nSortingColumn = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 4
  store i32 %cond524, ptr %nSortingColumn, align 4
  %417 = load ptr, ptr %pGroupBy, align 8
  %pGroupBy525 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 7
  store ptr %417, ptr %pGroupBy525, align 8
  %418 = load ptr, ptr %pEList, align 8
  call void @sqlite3ExprAnalyzeAggList(ptr noundef %sNC, ptr noundef %418)
  %pOrderBy526 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %419 = load ptr, ptr %pOrderBy526, align 8
  call void @sqlite3ExprAnalyzeAggList(ptr noundef %sNC, ptr noundef %419)
  %420 = load ptr, ptr %pHaving, align 8
  %tobool527 = icmp ne ptr %420, null
  br i1 %tobool527, label %if.then528, label %if.end533

if.then528:                                       ; preds = %cond.end
  %421 = load ptr, ptr %pGroupBy, align 8
  %tobool529 = icmp ne ptr %421, null
  br i1 %tobool529, label %if.then530, label %if.end532

if.then530:                                       ; preds = %if.then528
  %422 = load ptr, ptr %pParse.addr, align 8
  %423 = load ptr, ptr %p.addr, align 8
  call void @havingToWhere(ptr noundef %422, ptr noundef %423)
  %424 = load ptr, ptr %p.addr, align 8
  %pWhere531 = getelementptr inbounds nuw %struct.Select, ptr %424, i32 0, i32 9
  %425 = load ptr, ptr %pWhere531, align 8
  store ptr %425, ptr %pWhere, align 8
  br label %if.end532

if.end532:                                        ; preds = %if.then530, %if.then528
  %426 = load ptr, ptr %pHaving, align 8
  call void @sqlite3ExprAnalyzeAggregates(ptr noundef %sNC, ptr noundef %426)
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %cond.end
  %nColumn = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 9
  %427 = load i32, ptr %nColumn, align 8
  %nAccumulator = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 10
  store i32 %427, ptr %nAccumulator, align 4
  %428 = load ptr, ptr %p.addr, align 8
  %pGroupBy534 = getelementptr inbounds nuw %struct.Select, ptr %428, i32 0, i32 10
  %429 = load ptr, ptr %pGroupBy534, align 8
  %cmp535 = icmp eq ptr %429, null
  br i1 %cmp535, label %land.lhs.true537, label %if.else547

land.lhs.true537:                                 ; preds = %if.end533
  %430 = load ptr, ptr %p.addr, align 8
  %pHaving538 = getelementptr inbounds nuw %struct.Select, ptr %430, i32 0, i32 11
  %431 = load ptr, ptr %pHaving538, align 8
  %cmp539 = icmp eq ptr %431, null
  br i1 %cmp539, label %land.lhs.true541, label %if.else547

land.lhs.true541:                                 ; preds = %land.lhs.true537
  %nFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 12
  %432 = load i32, ptr %nFunc, align 8
  %cmp542 = icmp eq i32 %432, 1
  br i1 %cmp542, label %if.then544, label %if.else547

if.then544:                                       ; preds = %land.lhs.true541
  %433 = load ptr, ptr %db, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 11
  %434 = load ptr, ptr %aFunc, align 8
  %arrayidx545 = getelementptr inbounds %struct.AggInfo_func, ptr %434, i64 0
  %pExpr = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx545, i32 0, i32 0
  %435 = load ptr, ptr %pExpr, align 8
  %call546 = call zeroext i8 @minMaxQuery(ptr noundef %433, ptr noundef %435, ptr noundef %pMinMaxOrderBy)
  store i8 %call546, ptr %minMaxFlag, align 1
  br label %if.end548

if.else547:                                       ; preds = %land.lhs.true541, %land.lhs.true537, %if.end533
  store i8 0, ptr %minMaxFlag, align 1
  br label %if.end548

if.end548:                                        ; preds = %if.else547, %if.then544
  store i32 0, ptr %i, align 4
  br label %for.cond549

for.cond549:                                      ; preds = %for.inc567, %if.end548
  %436 = load i32, ptr %i, align 4
  %nFunc550 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 12
  %437 = load i32, ptr %nFunc550, align 8
  %cmp551 = icmp slt i32 %436, %437
  br i1 %cmp551, label %for.body553, label %for.end569

for.body553:                                      ; preds = %for.cond549
  %aFunc555 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 11
  %438 = load ptr, ptr %aFunc555, align 8
  %439 = load i32, ptr %i, align 4
  %idxprom556 = sext i32 %439 to i64
  %arrayidx557 = getelementptr inbounds %struct.AggInfo_func, ptr %438, i64 %idxprom556
  %pExpr558 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx557, i32 0, i32 0
  %440 = load ptr, ptr %pExpr558, align 8
  store ptr %440, ptr %pExpr554, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %441 = load i32, ptr %ncFlags, align 8
  %or559 = or i32 %441, 8
  store i32 %or559, ptr %ncFlags, align 8
  %442 = load ptr, ptr %pExpr554, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %442, i32 0, i32 6
  %443 = load ptr, ptr %x, align 8
  call void @sqlite3ExprAnalyzeAggList(ptr noundef %sNC, ptr noundef %443)
  %444 = load ptr, ptr %pExpr554, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %444, i32 0, i32 2
  %445 = load i32, ptr %flags, align 4
  %and560 = and i32 %445, 16777216
  %cmp561 = icmp ne i32 %and560, 0
  br i1 %cmp561, label %if.then563, label %if.end564

if.then563:                                       ; preds = %for.body553
  %446 = load ptr, ptr %pExpr554, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %446, i32 0, i32 14
  %447 = load ptr, ptr %y, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %447, i32 0, i32 13
  %448 = load ptr, ptr %pFilter, align 8
  call void @sqlite3ExprAnalyzeAggregates(ptr noundef %sNC, ptr noundef %448)
  br label %if.end564

if.end564:                                        ; preds = %if.then563, %for.body553
  %ncFlags565 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %449 = load i32, ptr %ncFlags565, align 8
  %and566 = and i32 %449, -9
  store i32 %and566, ptr %ncFlags565, align 8
  br label %for.inc567

for.inc567:                                       ; preds = %if.end564
  %450 = load i32, ptr %i, align 4
  %inc568 = add nsw i32 %450, 1
  store i32 %inc568, ptr %i, align 4
  br label %for.cond549, !llvm.loop !12

for.end569:                                       ; preds = %for.cond549
  %451 = load ptr, ptr %pParse.addr, align 8
  %nMem570 = getelementptr inbounds nuw %struct.Parse, ptr %451, i32 0, i32 18
  %452 = load i32, ptr %nMem570, align 8
  %mxReg = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 6
  store i32 %452, ptr %mxReg, align 4
  %453 = load ptr, ptr %db, align 8
  %mallocFailed571 = getelementptr inbounds nuw %struct.sqlite3, ptr %453, i32 0, i32 19
  %454 = load i8, ptr %mallocFailed571, align 1
  %tobool572 = icmp ne i8 %454, 0
  br i1 %tobool572, label %if.then573, label %if.end574

if.then573:                                       ; preds = %for.end569
  br label %select_end

if.end574:                                        ; preds = %for.end569
  %455 = load ptr, ptr %pGroupBy, align 8
  %tobool575 = icmp ne ptr %455, null
  br i1 %tobool575, label %if.then576, label %if.else761

if.then576:                                       ; preds = %if.end574
  %456 = load ptr, ptr %pParse.addr, align 8
  %nTab578 = getelementptr inbounds nuw %struct.Parse, ptr %456, i32 0, i32 17
  %457 = load i32, ptr %nTab578, align 4
  %inc579 = add nsw i32 %457, 1
  store i32 %inc579, ptr %nTab578, align 4
  %sortingIdx = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 2
  store i32 %457, ptr %sortingIdx, align 4
  %458 = load ptr, ptr %pParse.addr, align 8
  %459 = load ptr, ptr %pGroupBy, align 8
  %nColumn580 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 9
  %460 = load i32, ptr %nColumn580, align 8
  %call581 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %458, ptr noundef %459, i32 noundef 0, i32 noundef %460)
  store ptr %call581, ptr %pKeyInfo577, align 8
  %461 = load ptr, ptr %v, align 8
  %sortingIdx582 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 2
  %462 = load i32, ptr %sortingIdx582, align 4
  %nSortingColumn583 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 4
  %463 = load i32, ptr %nSortingColumn583, align 4
  %464 = load ptr, ptr %pKeyInfo577, align 8
  %call584 = call i32 @sqlite3VdbeAddOp4(ptr noundef %461, i32 noundef 114, i32 noundef %462, i32 noundef %463, i32 noundef 0, ptr noundef %464, i32 noundef -9)
  store i32 %call584, ptr %addrSortingIdx, align 4
  %465 = load ptr, ptr %pParse.addr, align 8
  %nMem585 = getelementptr inbounds nuw %struct.Parse, ptr %465, i32 0, i32 18
  %466 = load i32, ptr %nMem585, align 8
  %inc586 = add nsw i32 %466, 1
  store i32 %inc586, ptr %nMem585, align 8
  store i32 %inc586, ptr %iUseFlag, align 4
  %467 = load ptr, ptr %pParse.addr, align 8
  %nMem587 = getelementptr inbounds nuw %struct.Parse, ptr %467, i32 0, i32 18
  %468 = load i32, ptr %nMem587, align 8
  %inc588 = add nsw i32 %468, 1
  store i32 %inc588, ptr %nMem587, align 8
  store i32 %inc588, ptr %iAbortFlag, align 4
  %469 = load ptr, ptr %pParse.addr, align 8
  %nMem589 = getelementptr inbounds nuw %struct.Parse, ptr %469, i32 0, i32 18
  %470 = load i32, ptr %nMem589, align 8
  %inc590 = add nsw i32 %470, 1
  store i32 %inc590, ptr %nMem589, align 8
  store i32 %inc590, ptr %regOutputRow, align 4
  %471 = load ptr, ptr %pParse.addr, align 8
  %call591 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %471)
  store i32 %call591, ptr %addrOutputRow, align 4
  %472 = load ptr, ptr %pParse.addr, align 8
  %nMem592 = getelementptr inbounds nuw %struct.Parse, ptr %472, i32 0, i32 18
  %473 = load i32, ptr %nMem592, align 8
  %inc593 = add nsw i32 %473, 1
  store i32 %inc593, ptr %nMem592, align 8
  store i32 %inc593, ptr %regReset, align 4
  %474 = load ptr, ptr %pParse.addr, align 8
  %call594 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %474)
  store i32 %call594, ptr %addrReset, align 4
  %475 = load ptr, ptr %pParse.addr, align 8
  %nMem595 = getelementptr inbounds nuw %struct.Parse, ptr %475, i32 0, i32 18
  %476 = load i32, ptr %nMem595, align 8
  %add596 = add nsw i32 %476, 1
  store i32 %add596, ptr %iAMem, align 4
  %477 = load ptr, ptr %pGroupBy, align 8
  %nExpr597 = getelementptr inbounds nuw %struct.ExprList, ptr %477, i32 0, i32 0
  %478 = load i32, ptr %nExpr597, align 8
  %479 = load ptr, ptr %pParse.addr, align 8
  %nMem598 = getelementptr inbounds nuw %struct.Parse, ptr %479, i32 0, i32 18
  %480 = load i32, ptr %nMem598, align 8
  %add599 = add nsw i32 %480, %478
  store i32 %add599, ptr %nMem598, align 8
  %481 = load ptr, ptr %pParse.addr, align 8
  %nMem600 = getelementptr inbounds nuw %struct.Parse, ptr %481, i32 0, i32 18
  %482 = load i32, ptr %nMem600, align 8
  %add601 = add nsw i32 %482, 1
  store i32 %add601, ptr %iBMem, align 4
  %483 = load ptr, ptr %pGroupBy, align 8
  %nExpr602 = getelementptr inbounds nuw %struct.ExprList, ptr %483, i32 0, i32 0
  %484 = load i32, ptr %nExpr602, align 8
  %485 = load ptr, ptr %pParse.addr, align 8
  %nMem603 = getelementptr inbounds nuw %struct.Parse, ptr %485, i32 0, i32 18
  %486 = load i32, ptr %nMem603, align 8
  %add604 = add nsw i32 %486, %484
  store i32 %add604, ptr %nMem603, align 8
  %487 = load ptr, ptr %v, align 8
  %488 = load i32, ptr %iAbortFlag, align 4
  %call605 = call i32 @sqlite3VdbeAddOp2(ptr noundef %487, i32 noundef 70, i32 noundef 0, i32 noundef %488)
  %489 = load ptr, ptr %v, align 8
  %490 = load i32, ptr %iAMem, align 4
  %491 = load i32, ptr %iAMem, align 4
  %492 = load ptr, ptr %pGroupBy, align 8
  %nExpr606 = getelementptr inbounds nuw %struct.ExprList, ptr %492, i32 0, i32 0
  %493 = load i32, ptr %nExpr606, align 8
  %add607 = add nsw i32 %491, %493
  %sub608 = sub nsw i32 %add607, 1
  %call609 = call i32 @sqlite3VdbeAddOp3(ptr noundef %489, i32 noundef 73, i32 noundef 0, i32 noundef %490, i32 noundef %sub608)
  %494 = load ptr, ptr %v, align 8
  %495 = load i32, ptr %regReset, align 4
  %496 = load i32, ptr %addrReset, align 4
  %call610 = call i32 @sqlite3VdbeAddOp2(ptr noundef %494, i32 noundef 12, i32 noundef %495, i32 noundef %496)
  %497 = load ptr, ptr %pParse.addr, align 8
  %498 = load ptr, ptr %pTabList, align 8
  %499 = load ptr, ptr %pWhere, align 8
  %500 = load ptr, ptr %pGroupBy, align 8
  %501 = load i32, ptr %orderByGrp, align 4
  %tobool611 = icmp ne i32 %501, 0
  %502 = zext i1 %tobool611 to i64
  %cond612 = select i1 %tobool611, i32 512, i32 0
  %or613 = or i32 64, %cond612
  %conv614 = trunc i32 %or613 to i16
  %call615 = call ptr @sqlite3WhereBegin(ptr noundef %497, ptr noundef %498, ptr noundef %499, ptr noundef %500, ptr noundef null, i16 noundef zeroext %conv614, i32 noundef 0)
  store ptr %call615, ptr %pWInfo, align 8
  %503 = load ptr, ptr %pWInfo, align 8
  %cmp616 = icmp eq ptr %503, null
  br i1 %cmp616, label %if.then618, label %if.end619

if.then618:                                       ; preds = %if.then576
  br label %select_end

if.end619:                                        ; preds = %if.then576
  %504 = load ptr, ptr %pWInfo, align 8
  %call620 = call i32 @sqlite3WhereIsOrdered(ptr noundef %504)
  %505 = load ptr, ptr %pGroupBy, align 8
  %nExpr621 = getelementptr inbounds nuw %struct.ExprList, ptr %505, i32 0, i32 0
  %506 = load i32, ptr %nExpr621, align 8
  %cmp622 = icmp eq i32 %call620, %506
  br i1 %cmp622, label %if.then624, label %if.else625

if.then624:                                       ; preds = %if.end619
  store i32 0, ptr %groupBySort, align 4
  br label %if.end685

if.else625:                                       ; preds = %if.end619
  %507 = load ptr, ptr %pParse.addr, align 8
  %isTnct627 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 0
  %508 = load i8, ptr %isTnct627, align 4
  %conv628 = zext i8 %508 to i32
  %tobool629 = icmp ne i32 %conv628, 0
  br i1 %tobool629, label %land.rhs630, label %land.end635

land.rhs630:                                      ; preds = %if.else625
  %509 = load ptr, ptr %p.addr, align 8
  %selFlags631 = getelementptr inbounds nuw %struct.Select, ptr %509, i32 0, i32 3
  %510 = load i32, ptr %selFlags631, align 4
  %and632 = and i32 %510, 1
  %cmp633 = icmp eq i32 %and632, 0
  br label %land.end635

land.end635:                                      ; preds = %land.rhs630, %if.else625
  %511 = phi i1 [ false, %if.else625 ], [ %cmp633, %land.rhs630 ]
  %512 = zext i1 %511 to i64
  %cond636 = select i1 %511, ptr @.str.723, ptr @.str.724
  call void @explainTempTable(ptr noundef %507, ptr noundef %cond636)
  store i32 1, ptr %groupBySort, align 4
  %513 = load ptr, ptr %pGroupBy, align 8
  %nExpr637 = getelementptr inbounds nuw %struct.ExprList, ptr %513, i32 0, i32 0
  %514 = load i32, ptr %nExpr637, align 8
  store i32 %514, ptr %nGroupBy, align 4
  %515 = load i32, ptr %nGroupBy, align 4
  store i32 %515, ptr %nCol626, align 4
  %516 = load i32, ptr %nGroupBy, align 4
  store i32 %516, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond638

for.cond638:                                      ; preds = %for.inc651, %land.end635
  %517 = load i32, ptr %i, align 4
  %nColumn639 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 9
  %518 = load i32, ptr %nColumn639, align 8
  %cmp640 = icmp slt i32 %517, %518
  br i1 %cmp640, label %for.body642, label %for.end653

for.body642:                                      ; preds = %for.cond638
  %aCol = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 8
  %519 = load ptr, ptr %aCol, align 8
  %520 = load i32, ptr %i, align 4
  %idxprom643 = sext i32 %520 to i64
  %arrayidx644 = getelementptr inbounds %struct.AggInfo_col, ptr %519, i64 %idxprom643
  %iSorterColumn = getelementptr inbounds nuw %struct.AggInfo_col, ptr %arrayidx644, i32 0, i32 3
  %521 = load i32, ptr %iSorterColumn, align 8
  %522 = load i32, ptr %j, align 4
  %cmp645 = icmp sge i32 %521, %522
  br i1 %cmp645, label %if.then647, label %if.end650

if.then647:                                       ; preds = %for.body642
  %523 = load i32, ptr %nCol626, align 4
  %inc648 = add nsw i32 %523, 1
  store i32 %inc648, ptr %nCol626, align 4
  %524 = load i32, ptr %j, align 4
  %inc649 = add nsw i32 %524, 1
  store i32 %inc649, ptr %j, align 4
  br label %if.end650

if.end650:                                        ; preds = %if.then647, %for.body642
  br label %for.inc651

for.inc651:                                       ; preds = %if.end650
  %525 = load i32, ptr %i, align 4
  %inc652 = add nsw i32 %525, 1
  store i32 %inc652, ptr %i, align 4
  br label %for.cond638, !llvm.loop !13

for.end653:                                       ; preds = %for.cond638
  %526 = load ptr, ptr %pParse.addr, align 8
  %527 = load i32, ptr %nCol626, align 4
  %call654 = call i32 @sqlite3GetTempRange(ptr noundef %526, i32 noundef %527)
  store i32 %call654, ptr %regBase, align 4
  %528 = load ptr, ptr %pParse.addr, align 8
  %529 = load ptr, ptr %pGroupBy, align 8
  %530 = load i32, ptr %regBase, align 4
  %call655 = call i32 @sqlite3ExprCodeExprList(ptr noundef %528, ptr noundef %529, i32 noundef %530, i32 noundef 0, i8 noundef zeroext 0)
  %531 = load i32, ptr %nGroupBy, align 4
  store i32 %531, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond656

for.cond656:                                      ; preds = %for.inc672, %for.end653
  %532 = load i32, ptr %i, align 4
  %nColumn657 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 9
  %533 = load i32, ptr %nColumn657, align 8
  %cmp658 = icmp slt i32 %532, %533
  br i1 %cmp658, label %for.body660, label %for.end674

for.body660:                                      ; preds = %for.cond656
  %aCol661 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 8
  %534 = load ptr, ptr %aCol661, align 8
  %535 = load i32, ptr %i, align 4
  %idxprom662 = sext i32 %535 to i64
  %arrayidx663 = getelementptr inbounds %struct.AggInfo_col, ptr %534, i64 %idxprom662
  store ptr %arrayidx663, ptr %pCol, align 8
  %536 = load ptr, ptr %pCol, align 8
  %iSorterColumn664 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %536, i32 0, i32 3
  %537 = load i32, ptr %iSorterColumn664, align 8
  %538 = load i32, ptr %j, align 4
  %cmp665 = icmp sge i32 %537, %538
  br i1 %cmp665, label %if.then667, label %if.end671

if.then667:                                       ; preds = %for.body660
  %539 = load i32, ptr %j, align 4
  %540 = load i32, ptr %regBase, align 4
  %add668 = add nsw i32 %539, %540
  store i32 %add668, ptr %r1, align 4
  %541 = load ptr, ptr %v, align 8
  %542 = load ptr, ptr %pCol, align 8
  %pTab669 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %542, i32 0, i32 0
  %543 = load ptr, ptr %pTab669, align 8
  %544 = load ptr, ptr %pCol, align 8
  %iTable = getelementptr inbounds nuw %struct.AggInfo_col, ptr %544, i32 0, i32 1
  %545 = load i32, ptr %iTable, align 8
  %546 = load ptr, ptr %pCol, align 8
  %iColumn = getelementptr inbounds nuw %struct.AggInfo_col, ptr %546, i32 0, i32 2
  %547 = load i32, ptr %iColumn, align 4
  %548 = load i32, ptr %r1, align 4
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %541, ptr noundef %543, i32 noundef %545, i32 noundef %547, i32 noundef %548)
  %549 = load i32, ptr %j, align 4
  %inc670 = add nsw i32 %549, 1
  store i32 %inc670, ptr %j, align 4
  br label %if.end671

if.end671:                                        ; preds = %if.then667, %for.body660
  br label %for.inc672

for.inc672:                                       ; preds = %if.end671
  %550 = load i32, ptr %i, align 4
  %inc673 = add nsw i32 %550, 1
  store i32 %inc673, ptr %i, align 4
  br label %for.cond656, !llvm.loop !14

for.end674:                                       ; preds = %for.cond656
  %551 = load ptr, ptr %pParse.addr, align 8
  %call675 = call i32 @sqlite3GetTempReg(ptr noundef %551)
  store i32 %call675, ptr %regRecord, align 4
  %552 = load ptr, ptr %v, align 8
  %553 = load i32, ptr %regBase, align 4
  %554 = load i32, ptr %nCol626, align 4
  %555 = load i32, ptr %regRecord, align 4
  %call676 = call i32 @sqlite3VdbeAddOp3(ptr noundef %552, i32 noundef 92, i32 noundef %553, i32 noundef %554, i32 noundef %555)
  %556 = load ptr, ptr %v, align 8
  %sortingIdx677 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 2
  %557 = load i32, ptr %sortingIdx677, align 4
  %558 = load i32, ptr %regRecord, align 4
  %call678 = call i32 @sqlite3VdbeAddOp2(ptr noundef %556, i32 noundef 131, i32 noundef %557, i32 noundef %558)
  %559 = load ptr, ptr %pParse.addr, align 8
  %560 = load i32, ptr %regRecord, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %559, i32 noundef %560)
  %561 = load ptr, ptr %pParse.addr, align 8
  %562 = load i32, ptr %regBase, align 4
  %563 = load i32, ptr %nCol626, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %561, i32 noundef %562, i32 noundef %563)
  %564 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %564)
  %565 = load ptr, ptr %pParse.addr, align 8
  %nTab679 = getelementptr inbounds nuw %struct.Parse, ptr %565, i32 0, i32 17
  %566 = load i32, ptr %nTab679, align 4
  %inc680 = add nsw i32 %566, 1
  store i32 %inc680, ptr %nTab679, align 4
  store i32 %566, ptr %sortPTab, align 4
  %sortingIdxPTab = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 3
  store i32 %566, ptr %sortingIdxPTab, align 8
  %567 = load ptr, ptr %pParse.addr, align 8
  %call681 = call i32 @sqlite3GetTempReg(ptr noundef %567)
  store i32 %call681, ptr %sortOut, align 4
  %568 = load ptr, ptr %v, align 8
  %569 = load i32, ptr %sortPTab, align 4
  %570 = load i32, ptr %sortOut, align 4
  %571 = load i32, ptr %nCol626, align 4
  %call682 = call i32 @sqlite3VdbeAddOp3(ptr noundef %568, i32 noundef 116, i32 noundef %569, i32 noundef %570, i32 noundef %571)
  %572 = load ptr, ptr %v, align 8
  %sortingIdx683 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 2
  %573 = load i32, ptr %sortingIdx683, align 4
  %574 = load i32, ptr %addrEnd, align 4
  %call684 = call i32 @sqlite3VdbeAddOp2(ptr noundef %572, i32 noundef 34, i32 noundef %573, i32 noundef %574)
  %useSortingIdx = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 1
  store i8 1, ptr %useSortingIdx, align 1
  br label %if.end685

if.end685:                                        ; preds = %for.end674, %if.then624
  %575 = load i32, ptr %orderByGrp, align 4
  %tobool686 = icmp ne i32 %575, 0
  br i1 %tobool686, label %land.lhs.true687, label %if.end702

land.lhs.true687:                                 ; preds = %if.end685
  %576 = load ptr, ptr %db, align 8
  %dbOptFlags688 = getelementptr inbounds nuw %struct.sqlite3, ptr %576, i32 0, i32 15
  %577 = load i16, ptr %dbOptFlags688, align 4
  %conv689 = zext i16 %577 to i32
  %and690 = and i32 %conv689, 4
  %cmp691 = icmp eq i32 %and690, 0
  br i1 %cmp691, label %land.lhs.true693, label %if.end702

land.lhs.true693:                                 ; preds = %land.lhs.true687
  %578 = load i32, ptr %groupBySort, align 4
  %tobool694 = icmp ne i32 %578, 0
  br i1 %tobool694, label %if.then698, label %lor.lhs.false695

lor.lhs.false695:                                 ; preds = %land.lhs.true693
  %579 = load ptr, ptr %pWInfo, align 8
  %call696 = call i32 @sqlite3WhereIsSorted(ptr noundef %579)
  %tobool697 = icmp ne i32 %call696, 0
  br i1 %tobool697, label %if.then698, label %if.end702

if.then698:                                       ; preds = %lor.lhs.false695, %land.lhs.true693
  %pOrderBy699 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  store ptr null, ptr %pOrderBy699, align 8
  %580 = load ptr, ptr %v, align 8
  %addrSortIndex700 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 5
  %581 = load i32, ptr %addrSortIndex700, align 8
  %call701 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %580, i32 noundef %581)
  br label %if.end702

if.end702:                                        ; preds = %if.then698, %lor.lhs.false695, %land.lhs.true687, %if.end685
  %582 = load ptr, ptr %v, align 8
  %call703 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %582)
  store i32 %call703, ptr %addrTopOfLoop, align 4
  %583 = load i32, ptr %groupBySort, align 4
  %tobool704 = icmp ne i32 %583, 0
  br i1 %tobool704, label %if.then705, label %if.end708

if.then705:                                       ; preds = %if.end702
  %584 = load ptr, ptr %v, align 8
  %sortingIdx706 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 2
  %585 = load i32, ptr %sortingIdx706, align 4
  %586 = load i32, ptr %sortOut, align 4
  %587 = load i32, ptr %sortPTab, align 4
  %call707 = call i32 @sqlite3VdbeAddOp3(ptr noundef %584, i32 noundef 126, i32 noundef %585, i32 noundef %586, i32 noundef %587)
  br label %if.end708

if.end708:                                        ; preds = %if.then705, %if.end702
  store i32 0, ptr %j, align 4
  br label %for.cond709

for.cond709:                                      ; preds = %for.inc725, %if.end708
  %588 = load i32, ptr %j, align 4
  %589 = load ptr, ptr %pGroupBy, align 8
  %nExpr710 = getelementptr inbounds nuw %struct.ExprList, ptr %589, i32 0, i32 0
  %590 = load i32, ptr %nExpr710, align 8
  %cmp711 = icmp slt i32 %588, %590
  br i1 %cmp711, label %for.body713, label %for.end727

for.body713:                                      ; preds = %for.cond709
  %591 = load i32, ptr %groupBySort, align 4
  %tobool714 = icmp ne i32 %591, 0
  br i1 %tobool714, label %if.then715, label %if.else718

if.then715:                                       ; preds = %for.body713
  %592 = load ptr, ptr %v, align 8
  %593 = load i32, ptr %sortPTab, align 4
  %594 = load i32, ptr %j, align 4
  %595 = load i32, ptr %iBMem, align 4
  %596 = load i32, ptr %j, align 4
  %add716 = add nsw i32 %595, %596
  %call717 = call i32 @sqlite3VdbeAddOp3(ptr noundef %592, i32 noundef 90, i32 noundef %593, i32 noundef %594, i32 noundef %add716)
  br label %if.end724

if.else718:                                       ; preds = %for.body713
  %directMode = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 0
  store i8 1, ptr %directMode, align 8
  %597 = load ptr, ptr %pParse.addr, align 8
  %598 = load ptr, ptr %pGroupBy, align 8
  %a719 = getelementptr inbounds nuw %struct.ExprList, ptr %598, i32 0, i32 1
  %599 = load i32, ptr %j, align 4
  %idxprom720 = sext i32 %599 to i64
  %arrayidx721 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a719, i64 0, i64 %idxprom720
  %pExpr722 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx721, i32 0, i32 0
  %600 = load ptr, ptr %pExpr722, align 8
  %601 = load i32, ptr %iBMem, align 4
  %602 = load i32, ptr %j, align 4
  %add723 = add nsw i32 %601, %602
  call void @sqlite3ExprCode(ptr noundef %597, ptr noundef %600, i32 noundef %add723)
  br label %if.end724

if.end724:                                        ; preds = %if.else718, %if.then715
  br label %for.inc725

for.inc725:                                       ; preds = %if.end724
  %603 = load i32, ptr %j, align 4
  %inc726 = add nsw i32 %603, 1
  store i32 %inc726, ptr %j, align 4
  br label %for.cond709, !llvm.loop !15

for.end727:                                       ; preds = %for.cond709
  %604 = load ptr, ptr %v, align 8
  %605 = load i32, ptr %iAMem, align 4
  %606 = load i32, ptr %iBMem, align 4
  %607 = load ptr, ptr %pGroupBy, align 8
  %nExpr728 = getelementptr inbounds nuw %struct.ExprList, ptr %607, i32 0, i32 0
  %608 = load i32, ptr %nExpr728, align 8
  %609 = load ptr, ptr %pKeyInfo577, align 8
  %call729 = call ptr @sqlite3KeyInfoRef(ptr noundef %609)
  %call730 = call i32 @sqlite3VdbeAddOp4(ptr noundef %604, i32 noundef 87, i32 noundef %605, i32 noundef %606, i32 noundef %608, ptr noundef %call729, i32 noundef -9)
  %610 = load ptr, ptr %v, align 8
  %call731 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %610)
  store i32 %call731, ptr %addr1, align 4
  %611 = load ptr, ptr %v, align 8
  %612 = load i32, ptr %addr1, align 4
  %add732 = add nsw i32 %612, 1
  %613 = load i32, ptr %addr1, align 4
  %add733 = add nsw i32 %613, 1
  %call734 = call i32 @sqlite3VdbeAddOp3(ptr noundef %611, i32 noundef 16, i32 noundef %add732, i32 noundef 0, i32 noundef %add733)
  %614 = load ptr, ptr %pParse.addr, align 8
  %615 = load i32, ptr %iBMem, align 4
  %616 = load i32, ptr %iAMem, align 4
  %617 = load ptr, ptr %pGroupBy, align 8
  %nExpr735 = getelementptr inbounds nuw %struct.ExprList, ptr %617, i32 0, i32 0
  %618 = load i32, ptr %nExpr735, align 8
  call void @sqlite3ExprCodeMove(ptr noundef %614, i32 noundef %615, i32 noundef %616, i32 noundef %618)
  %619 = load ptr, ptr %v, align 8
  %620 = load i32, ptr %regOutputRow, align 4
  %621 = load i32, ptr %addrOutputRow, align 4
  %call736 = call i32 @sqlite3VdbeAddOp2(ptr noundef %619, i32 noundef 12, i32 noundef %620, i32 noundef %621)
  %622 = load ptr, ptr %v, align 8
  %623 = load i32, ptr %iAbortFlag, align 4
  %624 = load i32, ptr %addrEnd, align 4
  %call737 = call i32 @sqlite3VdbeAddOp2(ptr noundef %622, i32 noundef 47, i32 noundef %623, i32 noundef %624)
  %625 = load ptr, ptr %v, align 8
  %626 = load i32, ptr %regReset, align 4
  %627 = load i32, ptr %addrReset, align 4
  %call738 = call i32 @sqlite3VdbeAddOp2(ptr noundef %625, i32 noundef 12, i32 noundef %626, i32 noundef %627)
  %628 = load ptr, ptr %v, align 8
  %629 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %628, i32 noundef %629)
  %630 = load ptr, ptr %pParse.addr, align 8
  %631 = load i32, ptr %iUseFlag, align 4
  call void @updateAccumulator(ptr noundef %630, i32 noundef %631, ptr noundef %sAggInfo)
  %632 = load ptr, ptr %v, align 8
  %633 = load i32, ptr %iUseFlag, align 4
  %call739 = call i32 @sqlite3VdbeAddOp2(ptr noundef %632, i32 noundef 70, i32 noundef 1, i32 noundef %633)
  %634 = load i32, ptr %groupBySort, align 4
  %tobool740 = icmp ne i32 %634, 0
  br i1 %tobool740, label %if.then741, label %if.else744

if.then741:                                       ; preds = %for.end727
  %635 = load ptr, ptr %v, align 8
  %sortingIdx742 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 2
  %636 = load i32, ptr %sortingIdx742, align 4
  %637 = load i32, ptr %addrTopOfLoop, align 4
  %call743 = call i32 @sqlite3VdbeAddOp2(ptr noundef %635, i32 noundef 3, i32 noundef %636, i32 noundef %637)
  br label %if.end746

if.else744:                                       ; preds = %for.end727
  %638 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %638)
  %639 = load ptr, ptr %v, align 8
  %640 = load i32, ptr %addrSortingIdx, align 4
  %call745 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %639, i32 noundef %640)
  br label %if.end746

if.end746:                                        ; preds = %if.else744, %if.then741
  %641 = load ptr, ptr %v, align 8
  %642 = load i32, ptr %regOutputRow, align 4
  %643 = load i32, ptr %addrOutputRow, align 4
  %call747 = call i32 @sqlite3VdbeAddOp2(ptr noundef %641, i32 noundef 12, i32 noundef %642, i32 noundef %643)
  %644 = load ptr, ptr %v, align 8
  %645 = load i32, ptr %addrEnd, align 4
  %call748 = call i32 @sqlite3VdbeGoto(ptr noundef %644, i32 noundef %645)
  %646 = load ptr, ptr %v, align 8
  %call749 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %646)
  store i32 %call749, ptr %addrSetAbort, align 4
  %647 = load ptr, ptr %v, align 8
  %648 = load i32, ptr %iAbortFlag, align 4
  %call750 = call i32 @sqlite3VdbeAddOp2(ptr noundef %647, i32 noundef 70, i32 noundef 1, i32 noundef %648)
  %649 = load ptr, ptr %v, align 8
  %650 = load i32, ptr %regOutputRow, align 4
  %call751 = call i32 @sqlite3VdbeAddOp1(ptr noundef %649, i32 noundef 66, i32 noundef %650)
  %651 = load ptr, ptr %v, align 8
  %652 = load i32, ptr %addrOutputRow, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %651, i32 noundef %652)
  %653 = load ptr, ptr %v, align 8
  %call752 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %653)
  store i32 %call752, ptr %addrOutputRow, align 4
  %654 = load ptr, ptr %v, align 8
  %655 = load i32, ptr %iUseFlag, align 4
  %656 = load i32, ptr %addrOutputRow, align 4
  %add753 = add nsw i32 %656, 2
  %call754 = call i32 @sqlite3VdbeAddOp2(ptr noundef %654, i32 noundef 47, i32 noundef %655, i32 noundef %add753)
  %657 = load ptr, ptr %v, align 8
  %658 = load i32, ptr %regOutputRow, align 4
  %call755 = call i32 @sqlite3VdbeAddOp1(ptr noundef %657, i32 noundef 66, i32 noundef %658)
  %659 = load ptr, ptr %pParse.addr, align 8
  call void @finalizeAggFunctions(ptr noundef %659, ptr noundef %sAggInfo)
  %660 = load ptr, ptr %pParse.addr, align 8
  %661 = load ptr, ptr %pHaving, align 8
  %662 = load i32, ptr %addrOutputRow, align 4
  %add756 = add nsw i32 %662, 1
  call void @sqlite3ExprIfFalse(ptr noundef %660, ptr noundef %661, i32 noundef %add756, i32 noundef 16)
  %663 = load ptr, ptr %pParse.addr, align 8
  %664 = load ptr, ptr %p.addr, align 8
  %665 = load ptr, ptr %pDest.addr, align 8
  %666 = load i32, ptr %addrOutputRow, align 4
  %add757 = add nsw i32 %666, 1
  %667 = load i32, ptr %addrSetAbort, align 4
  call void @selectInnerLoop(ptr noundef %663, ptr noundef %664, i32 noundef -1, ptr noundef %sSort, ptr noundef %sDistinct, ptr noundef %665, i32 noundef %add757, i32 noundef %667)
  %668 = load ptr, ptr %v, align 8
  %669 = load i32, ptr %regOutputRow, align 4
  %call758 = call i32 @sqlite3VdbeAddOp1(ptr noundef %668, i32 noundef 66, i32 noundef %669)
  %670 = load ptr, ptr %v, align 8
  %671 = load i32, ptr %addrReset, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %670, i32 noundef %671)
  %672 = load ptr, ptr %pParse.addr, align 8
  call void @resetAccumulator(ptr noundef %672, ptr noundef %sAggInfo)
  %673 = load ptr, ptr %v, align 8
  %674 = load i32, ptr %iUseFlag, align 4
  %call759 = call i32 @sqlite3VdbeAddOp2(ptr noundef %673, i32 noundef 70, i32 noundef 0, i32 noundef %674)
  %675 = load ptr, ptr %v, align 8
  %676 = load i32, ptr %regReset, align 4
  %call760 = call i32 @sqlite3VdbeAddOp1(ptr noundef %675, i32 noundef 66, i32 noundef %676)
  br label %if.end881

if.else761:                                       ; preds = %if.end574
  %677 = load ptr, ptr %p.addr, align 8
  %call763 = call ptr @isSimpleCount(ptr noundef %677, ptr noundef %sAggInfo)
  store ptr %call763, ptr %pTab762, align 8
  %cmp764 = icmp ne ptr %call763, null
  br i1 %cmp764, label %if.then766, label %if.else824

if.then766:                                       ; preds = %if.else761
  %678 = load ptr, ptr %pParse.addr, align 8
  %db767 = getelementptr inbounds nuw %struct.Parse, ptr %678, i32 0, i32 0
  %679 = load ptr, ptr %db767, align 8
  %680 = load ptr, ptr %pTab762, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %680, i32 0, i32 20
  %681 = load ptr, ptr %pSchema, align 8
  %call768 = call i32 @sqlite3SchemaToIndex(ptr noundef %679, ptr noundef %681)
  store i32 %call768, ptr %iDb, align 4
  %682 = load ptr, ptr %pParse.addr, align 8
  %nTab769 = getelementptr inbounds nuw %struct.Parse, ptr %682, i32 0, i32 17
  %683 = load i32, ptr %nTab769, align 4
  %inc770 = add nsw i32 %683, 1
  store i32 %inc770, ptr %nTab769, align 4
  store i32 %683, ptr %iCsr, align 4
  store ptr null, ptr %pKeyInfo771, align 8
  store ptr null, ptr %pBest, align 8
  %684 = load ptr, ptr %pTab762, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %684, i32 0, i32 7
  %685 = load i32, ptr %tnum, align 8
  store i32 %685, ptr %iRoot, align 4
  %686 = load ptr, ptr %pParse.addr, align 8
  %687 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %686, i32 noundef %687)
  %688 = load ptr, ptr %pParse.addr, align 8
  %689 = load i32, ptr %iDb, align 4
  %690 = load ptr, ptr %pTab762, align 8
  %tnum772 = getelementptr inbounds nuw %struct.Table, ptr %690, i32 0, i32 7
  %691 = load i32, ptr %tnum772, align 8
  %692 = load ptr, ptr %pTab762, align 8
  %zName773 = getelementptr inbounds nuw %struct.Table, ptr %692, i32 0, i32 0
  %693 = load ptr, ptr %zName773, align 8
  call void @sqlite3TableLock(ptr noundef %688, i32 noundef %689, i32 noundef %691, i8 noundef zeroext 0, ptr noundef %693)
  %694 = load ptr, ptr %pTab762, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %694, i32 0, i32 9
  %695 = load i32, ptr %tabFlags, align 8
  %and774 = and i32 %695, 32
  %cmp775 = icmp eq i32 %and774, 0
  br i1 %cmp775, label %if.end779, label %if.then777

if.then777:                                       ; preds = %if.then766
  %696 = load ptr, ptr %pTab762, align 8
  %call778 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %696)
  store ptr %call778, ptr %pBest, align 8
  br label %if.end779

if.end779:                                        ; preds = %if.then777, %if.then766
  %697 = load ptr, ptr %pTab762, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %697, i32 0, i32 2
  %698 = load ptr, ptr %pIndex, align 8
  store ptr %698, ptr %pIdx, align 8
  br label %for.cond780

for.cond780:                                      ; preds = %for.inc808, %if.end779
  %699 = load ptr, ptr %pIdx, align 8
  %tobool781 = icmp ne ptr %699, null
  br i1 %tobool781, label %for.body782, label %for.end810

for.body782:                                      ; preds = %for.cond780
  %700 = load ptr, ptr %pIdx, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %700, i32 0, i32 16
  %bf.load783 = load i16, ptr %bUnordered, align 1
  %bf.lshr784 = lshr i16 %bf.load783, 2
  %bf.clear785 = and i16 %bf.lshr784, 1
  %bf.cast786 = zext i16 %bf.clear785 to i32
  %cmp787 = icmp eq i32 %bf.cast786, 0
  br i1 %cmp787, label %land.lhs.true789, label %if.end807

land.lhs.true789:                                 ; preds = %for.body782
  %701 = load ptr, ptr %pIdx, align 8
  %szIdxRow = getelementptr inbounds nuw %struct.Index, ptr %701, i32 0, i32 12
  %702 = load i16, ptr %szIdxRow, align 4
  %conv790 = sext i16 %702 to i32
  %703 = load ptr, ptr %pTab762, align 8
  %szTabRow = getelementptr inbounds nuw %struct.Table, ptr %703, i32 0, i32 13
  %704 = load i16, ptr %szTabRow, align 2
  %conv791 = sext i16 %704 to i32
  %cmp792 = icmp slt i32 %conv790, %conv791
  br i1 %cmp792, label %land.lhs.true794, label %if.end807

land.lhs.true794:                                 ; preds = %land.lhs.true789
  %705 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %705, i32 0, i32 9
  %706 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp795 = icmp eq ptr %706, null
  br i1 %cmp795, label %land.lhs.true797, label %if.end807

land.lhs.true797:                                 ; preds = %land.lhs.true794
  %707 = load ptr, ptr %pBest, align 8
  %tobool798 = icmp ne ptr %707, null
  br i1 %tobool798, label %lor.lhs.false799, label %if.then806

lor.lhs.false799:                                 ; preds = %land.lhs.true797
  %708 = load ptr, ptr %pIdx, align 8
  %szIdxRow800 = getelementptr inbounds nuw %struct.Index, ptr %708, i32 0, i32 12
  %709 = load i16, ptr %szIdxRow800, align 4
  %conv801 = sext i16 %709 to i32
  %710 = load ptr, ptr %pBest, align 8
  %szIdxRow802 = getelementptr inbounds nuw %struct.Index, ptr %710, i32 0, i32 12
  %711 = load i16, ptr %szIdxRow802, align 4
  %conv803 = sext i16 %711 to i32
  %cmp804 = icmp slt i32 %conv801, %conv803
  br i1 %cmp804, label %if.then806, label %if.end807

if.then806:                                       ; preds = %lor.lhs.false799, %land.lhs.true797
  %712 = load ptr, ptr %pIdx, align 8
  store ptr %712, ptr %pBest, align 8
  br label %if.end807

if.end807:                                        ; preds = %if.then806, %lor.lhs.false799, %land.lhs.true794, %land.lhs.true789, %for.body782
  br label %for.inc808

for.inc808:                                       ; preds = %if.end807
  %713 = load ptr, ptr %pIdx, align 8
  %pNext809 = getelementptr inbounds nuw %struct.Index, ptr %713, i32 0, i32 5
  %714 = load ptr, ptr %pNext809, align 8
  store ptr %714, ptr %pIdx, align 8
  br label %for.cond780, !llvm.loop !16

for.end810:                                       ; preds = %for.cond780
  %715 = load ptr, ptr %pBest, align 8
  %tobool811 = icmp ne ptr %715, null
  br i1 %tobool811, label %if.then812, label %if.end815

if.then812:                                       ; preds = %for.end810
  %716 = load ptr, ptr %pBest, align 8
  %tnum813 = getelementptr inbounds nuw %struct.Index, ptr %716, i32 0, i32 11
  %717 = load i32, ptr %tnum813, align 8
  store i32 %717, ptr %iRoot, align 4
  %718 = load ptr, ptr %pParse.addr, align 8
  %719 = load ptr, ptr %pBest, align 8
  %call814 = call ptr @sqlite3KeyInfoOfIndex(ptr noundef %718, ptr noundef %719)
  store ptr %call814, ptr %pKeyInfo771, align 8
  br label %if.end815

if.end815:                                        ; preds = %if.then812, %for.end810
  %720 = load ptr, ptr %v, align 8
  %721 = load i32, ptr %iCsr, align 4
  %722 = load i32, ptr %iRoot, align 4
  %723 = load i32, ptr %iDb, align 4
  %call816 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %720, i32 noundef 97, i32 noundef %721, i32 noundef %722, i32 noundef %723, i32 noundef 1)
  %724 = load ptr, ptr %pKeyInfo771, align 8
  %tobool817 = icmp ne ptr %724, null
  br i1 %tobool817, label %if.then818, label %if.end819

if.then818:                                       ; preds = %if.end815
  %725 = load ptr, ptr %v, align 8
  %726 = load ptr, ptr %pKeyInfo771, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %725, i32 noundef -1, ptr noundef %726, i32 noundef -9)
  br label %if.end819

if.end819:                                        ; preds = %if.then818, %if.end815
  %727 = load ptr, ptr %v, align 8
  %728 = load i32, ptr %iCsr, align 4
  %aFunc820 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 11
  %729 = load ptr, ptr %aFunc820, align 8
  %arrayidx821 = getelementptr inbounds %struct.AggInfo_func, ptr %729, i64 0
  %iMem = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx821, i32 0, i32 2
  %730 = load i32, ptr %iMem, align 8
  %call822 = call i32 @sqlite3VdbeAddOp2(ptr noundef %727, i32 noundef 93, i32 noundef %728, i32 noundef %730)
  %731 = load ptr, ptr %v, align 8
  %732 = load i32, ptr %iCsr, align 4
  %call823 = call i32 @sqlite3VdbeAddOp1(ptr noundef %731, i32 noundef 117, i32 noundef %732)
  %733 = load ptr, ptr %pParse.addr, align 8
  %734 = load ptr, ptr %pTab762, align 8
  %735 = load ptr, ptr %pBest, align 8
  call void @explainSimpleCount(ptr noundef %733, ptr noundef %734, ptr noundef %735)
  br label %if.end879

if.else824:                                       ; preds = %if.else761
  store i32 0, ptr %regAcc, align 4
  %nAccumulator825 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 10
  %736 = load i32, ptr %nAccumulator825, align 4
  %tobool826 = icmp ne i32 %736, 0
  br i1 %tobool826, label %if.then827, label %if.end861

if.then827:                                       ; preds = %if.else824
  store i32 0, ptr %i, align 4
  br label %for.cond828

for.cond828:                                      ; preds = %for.inc850, %if.then827
  %737 = load i32, ptr %i, align 4
  %nFunc829 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 12
  %738 = load i32, ptr %nFunc829, align 8
  %cmp830 = icmp slt i32 %737, %738
  br i1 %cmp830, label %for.body832, label %for.end852

for.body832:                                      ; preds = %for.cond828
  %aFunc833 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 11
  %739 = load ptr, ptr %aFunc833, align 8
  %740 = load i32, ptr %i, align 4
  %idxprom834 = sext i32 %740 to i64
  %arrayidx835 = getelementptr inbounds %struct.AggInfo_func, ptr %739, i64 %idxprom834
  %pExpr836 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx835, i32 0, i32 0
  %741 = load ptr, ptr %pExpr836, align 8
  %flags837 = getelementptr inbounds nuw %struct.Expr, ptr %741, i32 0, i32 2
  %742 = load i32, ptr %flags837, align 4
  %and838 = and i32 %742, 16777216
  %cmp839 = icmp ne i32 %and838, 0
  br i1 %cmp839, label %if.then841, label %if.end842

if.then841:                                       ; preds = %for.body832
  br label %for.inc850

if.end842:                                        ; preds = %for.body832
  %aFunc843 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 11
  %743 = load ptr, ptr %aFunc843, align 8
  %744 = load i32, ptr %i, align 4
  %idxprom844 = sext i32 %744 to i64
  %arrayidx845 = getelementptr inbounds %struct.AggInfo_func, ptr %743, i64 %idxprom844
  %pFunc = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx845, i32 0, i32 1
  %745 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %745, i32 0, i32 1
  %746 = load i32, ptr %funcFlags, align 4
  %and846 = and i32 %746, 32
  %tobool847 = icmp ne i32 %and846, 0
  br i1 %tobool847, label %if.then848, label %if.end849

if.then848:                                       ; preds = %if.end842
  br label %for.end852

if.end849:                                        ; preds = %if.end842
  br label %for.inc850

for.inc850:                                       ; preds = %if.end849, %if.then841
  %747 = load i32, ptr %i, align 4
  %inc851 = add nsw i32 %747, 1
  store i32 %inc851, ptr %i, align 4
  br label %for.cond828, !llvm.loop !17

for.end852:                                       ; preds = %if.then848, %for.cond828
  %748 = load i32, ptr %i, align 4
  %nFunc853 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 12
  %749 = load i32, ptr %nFunc853, align 8
  %cmp854 = icmp eq i32 %748, %749
  br i1 %cmp854, label %if.then856, label %if.end860

if.then856:                                       ; preds = %for.end852
  %750 = load ptr, ptr %pParse.addr, align 8
  %nMem857 = getelementptr inbounds nuw %struct.Parse, ptr %750, i32 0, i32 18
  %751 = load i32, ptr %nMem857, align 8
  %inc858 = add nsw i32 %751, 1
  store i32 %inc858, ptr %nMem857, align 8
  store i32 %inc858, ptr %regAcc, align 4
  %752 = load ptr, ptr %v, align 8
  %753 = load i32, ptr %regAcc, align 4
  %call859 = call i32 @sqlite3VdbeAddOp2(ptr noundef %752, i32 noundef 70, i32 noundef 0, i32 noundef %753)
  br label %if.end860

if.end860:                                        ; preds = %if.then856, %for.end852
  br label %if.end861

if.end861:                                        ; preds = %if.end860, %if.else824
  %754 = load ptr, ptr %pParse.addr, align 8
  call void @resetAccumulator(ptr noundef %754, ptr noundef %sAggInfo)
  %755 = load ptr, ptr %pParse.addr, align 8
  %756 = load ptr, ptr %pTabList, align 8
  %757 = load ptr, ptr %pWhere, align 8
  %758 = load ptr, ptr %pMinMaxOrderBy, align 8
  %759 = load i8, ptr %minMaxFlag, align 1
  %conv862 = zext i8 %759 to i16
  %call863 = call ptr @sqlite3WhereBegin(ptr noundef %755, ptr noundef %756, ptr noundef %757, ptr noundef %758, ptr noundef null, i16 noundef zeroext %conv862, i32 noundef 0)
  store ptr %call863, ptr %pWInfo, align 8
  %760 = load ptr, ptr %pWInfo, align 8
  %cmp864 = icmp eq ptr %760, null
  br i1 %cmp864, label %if.then866, label %if.end867

if.then866:                                       ; preds = %if.end861
  br label %select_end

if.end867:                                        ; preds = %if.end861
  %761 = load ptr, ptr %pParse.addr, align 8
  %762 = load i32, ptr %regAcc, align 4
  call void @updateAccumulator(ptr noundef %761, i32 noundef %762, ptr noundef %sAggInfo)
  %763 = load i32, ptr %regAcc, align 4
  %tobool868 = icmp ne i32 %763, 0
  br i1 %tobool868, label %if.then869, label %if.end871

if.then869:                                       ; preds = %if.end867
  %764 = load ptr, ptr %v, align 8
  %765 = load i32, ptr %regAcc, align 4
  %call870 = call i32 @sqlite3VdbeAddOp2(ptr noundef %764, i32 noundef 70, i32 noundef 1, i32 noundef %765)
  br label %if.end871

if.end871:                                        ; preds = %if.then869, %if.end867
  %766 = load ptr, ptr %pWInfo, align 8
  %call872 = call i32 @sqlite3WhereIsOrdered(ptr noundef %766)
  %cmp873 = icmp sgt i32 %call872, 0
  br i1 %cmp873, label %if.then875, label %if.end878

if.then875:                                       ; preds = %if.end871
  %767 = load ptr, ptr %v, align 8
  %768 = load ptr, ptr %pWInfo, align 8
  %call876 = call i32 @sqlite3WhereBreakLabel(ptr noundef %768)
  %call877 = call i32 @sqlite3VdbeGoto(ptr noundef %767, i32 noundef %call876)
  br label %if.end878

if.end878:                                        ; preds = %if.then875, %if.end871
  %769 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %769)
  %770 = load ptr, ptr %pParse.addr, align 8
  call void @finalizeAggFunctions(ptr noundef %770, ptr noundef %sAggInfo)
  br label %if.end879

if.end879:                                        ; preds = %if.end878, %if.end819
  %pOrderBy880 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  store ptr null, ptr %pOrderBy880, align 8
  %771 = load ptr, ptr %pParse.addr, align 8
  %772 = load ptr, ptr %pHaving, align 8
  %773 = load i32, ptr %addrEnd, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %771, ptr noundef %772, i32 noundef %773, i32 noundef 16)
  %774 = load ptr, ptr %pParse.addr, align 8
  %775 = load ptr, ptr %p.addr, align 8
  %776 = load ptr, ptr %pDest.addr, align 8
  %777 = load i32, ptr %addrEnd, align 4
  %778 = load i32, ptr %addrEnd, align 4
  call void @selectInnerLoop(ptr noundef %774, ptr noundef %775, i32 noundef -1, ptr noundef null, ptr noundef null, ptr noundef %776, i32 noundef %777, i32 noundef %778)
  br label %if.end881

if.end881:                                        ; preds = %if.end879, %if.end746
  %779 = load ptr, ptr %v, align 8
  %780 = load i32, ptr %addrEnd, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %779, i32 noundef %780)
  br label %if.end882

if.end882:                                        ; preds = %if.end881, %if.end443
  %eTnctType883 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %sDistinct, i32 0, i32 1
  %781 = load i8, ptr %eTnctType883, align 1
  %conv884 = zext i8 %781 to i32
  %cmp885 = icmp eq i32 %conv884, 3
  br i1 %cmp885, label %if.then887, label %if.end888

if.then887:                                       ; preds = %if.end882
  %782 = load ptr, ptr %pParse.addr, align 8
  call void @explainTempTable(ptr noundef %782, ptr noundef @.str.723)
  br label %if.end888

if.end888:                                        ; preds = %if.then887, %if.end882
  %pOrderBy889 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 0
  %783 = load ptr, ptr %pOrderBy889, align 8
  %tobool890 = icmp ne ptr %783, null
  br i1 %tobool890, label %if.then891, label %if.end897

if.then891:                                       ; preds = %if.end888
  %784 = load ptr, ptr %pParse.addr, align 8
  %nOBSat892 = getelementptr inbounds nuw %struct.SortCtx, ptr %sSort, i32 0, i32 1
  %785 = load i32, ptr %nOBSat892, align 8
  %cmp893 = icmp sgt i32 %785, 0
  %786 = zext i1 %cmp893 to i64
  %cond895 = select i1 %cmp893, ptr @.str.725, ptr @.str.726
  call void @explainTempTable(ptr noundef %784, ptr noundef %cond895)
  %787 = load ptr, ptr %pParse.addr, align 8
  %788 = load ptr, ptr %p.addr, align 8
  %789 = load ptr, ptr %pEList, align 8
  %nExpr896 = getelementptr inbounds nuw %struct.ExprList, ptr %789, i32 0, i32 0
  %790 = load i32, ptr %nExpr896, align 8
  %791 = load ptr, ptr %pDest.addr, align 8
  call void @generateSortTail(ptr noundef %787, ptr noundef %788, ptr noundef %sSort, i32 noundef %790, ptr noundef %791)
  br label %if.end897

if.end897:                                        ; preds = %if.then891, %if.end888
  %792 = load ptr, ptr %v, align 8
  %793 = load i32, ptr %iEnd, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %792, i32 noundef %793)
  %794 = load ptr, ptr %pParse.addr, align 8
  %nErr898 = getelementptr inbounds nuw %struct.Parse, ptr %794, i32 0, i32 16
  %795 = load i32, ptr %nErr898, align 8
  %cmp899 = icmp sgt i32 %795, 0
  %conv900 = zext i1 %cmp899 to i32
  store i32 %conv900, ptr %rc, align 4
  br label %select_end

select_end:                                       ; preds = %if.end897, %if.then866, %if.then618, %if.then573, %if.then382, %if.then269, %if.then120, %if.then114, %if.then71, %if.then30, %if.then20
  %796 = load ptr, ptr %db, align 8
  %797 = load ptr, ptr %pMinMaxOrderBy, align 8
  call void @sqlite3ExprListDelete(ptr noundef %796, ptr noundef %797)
  %798 = load ptr, ptr %db, align 8
  %aCol901 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 8
  %799 = load ptr, ptr %aCol901, align 8
  call void @sqlite3DbFree(ptr noundef %798, ptr noundef %799)
  %800 = load ptr, ptr %db, align 8
  %aFunc902 = getelementptr inbounds nuw %struct.AggInfo, ptr %sAggInfo, i32 0, i32 11
  %801 = load ptr, ptr %aFunc902, align 8
  call void @sqlite3DbFree(ptr noundef %800, ptr noundef %801)
  %802 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeExplainPop(ptr noundef %802)
  %803 = load i32, ptr %rc, align 4
  store i32 %803, ptr %retval, align 4
  br label %return

return:                                           ; preds = %select_end, %if.end137, %if.then6, %if.then
  %804 = load i32, ptr %retval, align 4
  ret i32 %804
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoOfIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprListCompare(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ClearTempRegCache(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeEndCoroutine(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeOpcode(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoRef(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @generateColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WindowRewrite(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprImpliesNonNullRow(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unsetJoinExpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @flattenSubquery(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @multiSelect(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplainPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @propagateConstants(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SelectExprHeight(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pushDownWhereTerms(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @isSelfJoinView(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeLimitRegisters(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowCodeInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereBegin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3WhereOutputRowCount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereIsDistinct(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereIsOrdered(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereOrderByLimitOptLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowCodeStep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @selectInnerLoop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereContinueLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereBreakLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprAnalyzeAggList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @havingToWhere(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprAnalyzeAggregates(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @minMaxQuery(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @explainTempTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereIsSorted(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeMove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @updateAccumulator(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @finalizeAggFunctions(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @resetAccumulator(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @isSimpleCount(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @explainSimpleCount(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @generateSortTail(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
