; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.413 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.414 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.566 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.619 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.620 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.621 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.622 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.623 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.624 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.625 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.626 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.627 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsRowid(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIdToTrueFalse(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @lookupName(ptr noundef %pParse, ptr noundef %zDb, ptr noundef %zTab, ptr noundef %zCol, ptr noundef %pNC, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %zTab.addr = alloca ptr, align 8
  %zCol.addr = alloca ptr, align 8
  %pNC.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cnt = alloca i32, align 4
  %cntTab = alloca i32, align 4
  %nSubquery = alloca i32, align 4
  %db = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pMatch = alloca ptr, align 8
  %pTopNC = alloca ptr, align 8
  %pSchema = alloca ptr, align 8
  %eNewExprOp = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %pSrcList = alloca ptr, align 8
  %hit = alloca i32, align 4
  %zTabName = alloca ptr, align 8
  %op = alloca i32, align 4
  %pUpsert = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %zAs = alloca ptr, align 8
  %pOrig = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store ptr %zTab, ptr %zTab.addr, align 8
  store ptr %zCol, ptr %zCol.addr, align 8
  store ptr %pNC, ptr %pNC.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 0, ptr %cnt, align 4
  store i32 0, ptr %cntTab, align 4
  store i32 0, ptr %nSubquery, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pMatch, align 8
  %2 = load ptr, ptr %pNC.addr, align 8
  store ptr %2, ptr %pTopNC, align 8
  store ptr null, ptr %pSchema, align 8
  store i32 162, ptr %eNewExprOp, align 4
  store ptr null, ptr %pTab, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 8
  store i32 -1, ptr %iTable, align 4
  %4 = load ptr, ptr %zDb.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pNC.addr, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %ncFlags, align 8
  %and = and i32 %6, 6
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store ptr null, ptr %zDb.addr, align 8
  br label %if.end10

if.else:                                          ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, ptr %i, align 4
  %8 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %nDb, align 8
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %aDb, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %11, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %13 = load ptr, ptr %zDbSName, align 8
  %14 = load ptr, ptr %zDb.addr, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %13, ptr noundef %14)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  %15 = load ptr, ptr %db, align 8
  %aDb6 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %aDb6, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.Db, ptr %16, i64 %idxprom7
  %pSchema9 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx8, i32 0, i32 4
  %18 = load ptr, ptr %pSchema9, align 8
  store ptr %18, ptr %pSchema, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then5, %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end11
  %20 = load ptr, ptr %pNC.addr, align 8
  %pSrcList12 = getelementptr inbounds nuw %struct.NameContext, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pSrcList12, align 8
  store ptr %21, ptr %pSrcList, align 8
  %22 = load ptr, ptr %pSrcList, align 8
  %tobool13 = icmp ne ptr %22, null
  br i1 %tobool13, label %if.then14, label %if.end135

if.then14:                                        ; preds = %do.body
  store i32 0, ptr %i, align 4
  %23 = load ptr, ptr %pSrcList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %23, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc115, %if.then14
  %24 = load i32, ptr %i, align 4
  %25 = load ptr, ptr %pSrcList, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %nSrc, align 8
  %cmp16 = icmp slt i32 %24, %26
  br i1 %cmp16, label %for.body17, label %for.end118

for.body17:                                       ; preds = %for.cond15
  %27 = load ptr, ptr %pItem, align 8
  %pTab18 = getelementptr inbounds nuw %struct.SrcList_item, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pTab18, align 8
  store ptr %28, ptr %pTab, align 8
  %29 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %pSelect, align 8
  %tobool19 = icmp ne ptr %30, null
  br i1 %tobool19, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %for.body17
  %31 = load ptr, ptr %pItem, align 8
  %pSelect20 = getelementptr inbounds nuw %struct.SrcList_item, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %pSelect20, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %selFlags, align 4
  %and21 = and i32 %33, 2048
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %if.then23, label %if.end45

if.then23:                                        ; preds = %land.lhs.true
  store i32 0, ptr %hit, align 4
  %34 = load ptr, ptr %pItem, align 8
  %pSelect24 = getelementptr inbounds nuw %struct.SrcList_item, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %pSelect24, align 8
  %pEList25 = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pEList25, align 8
  store ptr %36, ptr %pEList, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc37, %if.then23
  %37 = load i32, ptr %j, align 4
  %38 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %nExpr, align 8
  %cmp27 = icmp slt i32 %37, %39
  br i1 %cmp27, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond26
  %40 = load ptr, ptr %pEList, align 8
  %a29 = getelementptr inbounds nuw %struct.ExprList, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a29, i64 0, i64 %idxprom30
  %zSpan = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx31, i32 0, i32 2
  %42 = load ptr, ptr %zSpan, align 8
  %43 = load ptr, ptr %zCol.addr, align 8
  %44 = load ptr, ptr %zTab.addr, align 8
  %45 = load ptr, ptr %zDb.addr, align 8
  %call32 = call i32 @sqlite3MatchSpanName(ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.body28
  %46 = load i32, ptr %cnt, align 4
  %inc35 = add nsw i32 %46, 1
  store i32 %inc35, ptr %cnt, align 4
  store i32 2, ptr %cntTab, align 4
  %47 = load ptr, ptr %pItem, align 8
  store ptr %47, ptr %pMatch, align 8
  %48 = load i32, ptr %j, align 4
  %conv = trunc i32 %48 to i16
  %49 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 9
  store i16 %conv, ptr %iColumn, align 8
  store i32 1, ptr %hit, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %for.body28
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %50 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %50, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond26, !llvm.loop !8

for.end39:                                        ; preds = %for.cond26
  %51 = load i32, ptr %hit, align 4
  %tobool40 = icmp ne i32 %51, 0
  br i1 %tobool40, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end39
  %52 = load ptr, ptr %zTab.addr, align 8
  %cmp41 = icmp eq ptr %52, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false, %for.end39
  br label %for.inc115

if.end44:                                         ; preds = %lor.lhs.false
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %land.lhs.true, %for.body17
  %53 = load ptr, ptr %zDb.addr, align 8
  %tobool46 = icmp ne ptr %53, null
  br i1 %tobool46, label %land.lhs.true47, label %if.end52

land.lhs.true47:                                  ; preds = %if.end45
  %54 = load ptr, ptr %pTab, align 8
  %pSchema48 = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 20
  %55 = load ptr, ptr %pSchema48, align 8
  %56 = load ptr, ptr %pSchema, align 8
  %cmp49 = icmp ne ptr %55, %56
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %land.lhs.true47
  br label %for.inc115

if.end52:                                         ; preds = %land.lhs.true47, %if.end45
  %57 = load ptr, ptr %zTab.addr, align 8
  %tobool53 = icmp ne ptr %57, null
  br i1 %tobool53, label %if.then54, label %if.end70

if.then54:                                        ; preds = %if.end52
  %58 = load ptr, ptr %pItem, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %zAlias, align 8
  %tobool55 = icmp ne ptr %59, null
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then54
  %60 = load ptr, ptr %pItem, align 8
  %zAlias56 = getelementptr inbounds nuw %struct.SrcList_item, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %zAlias56, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then54
  %62 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %61, %cond.true ], [ %63, %cond.false ]
  store ptr %cond, ptr %zTabName, align 8
  %64 = load ptr, ptr %zTabName, align 8
  %65 = load ptr, ptr %zTab.addr, align 8
  %call57 = call i32 @sqlite3StrICmp(ptr noundef %64, ptr noundef %65)
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %cond.end
  br label %for.inc115

if.end61:                                         ; preds = %cond.end
  %66 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %66, i32 0, i32 51
  %67 = load i8, ptr %eParseMode, align 4
  %conv62 = zext i8 %67 to i32
  %cmp63 = icmp sge i32 %conv62, 2
  br i1 %cmp63, label %land.lhs.true65, label %if.end69

land.lhs.true65:                                  ; preds = %if.end61
  %68 = load ptr, ptr %pItem, align 8
  %zAlias66 = getelementptr inbounds nuw %struct.SrcList_item, ptr %68, i32 0, i32 3
  %69 = load ptr, ptr %zAlias66, align 8
  %tobool67 = icmp ne ptr %69, null
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %land.lhs.true65
  %70 = load ptr, ptr %pParse.addr, align 8
  %71 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %71, i32 0, i32 14
  call void @sqlite3RenameTokenRemap(ptr noundef %70, ptr noundef null, ptr noundef %y)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.lhs.true65, %if.end61
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end52
  %72 = load i32, ptr %cntTab, align 4
  %inc71 = add nsw i32 %72, 1
  store i32 %inc71, ptr %cntTab, align 4
  %cmp72 = icmp eq i32 0, %72
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  %73 = load ptr, ptr %pItem, align 8
  store ptr %73, ptr %pMatch, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70
  store i32 0, ptr %j, align 4
  %74 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %aCol, align 8
  store ptr %75, ptr %pCol, align 8
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc112, %if.end75
  %76 = load i32, ptr %j, align 4
  %77 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 11
  %78 = load i16, ptr %nCol, align 2
  %conv77 = sext i16 %78 to i32
  %cmp78 = icmp slt i32 %76, %conv77
  br i1 %cmp78, label %for.body80, label %for.end114

for.body80:                                       ; preds = %for.cond76
  %79 = load ptr, ptr %pCol, align 8
  %zName81 = getelementptr inbounds nuw %struct.Column, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %zName81, align 8
  %81 = load ptr, ptr %zCol.addr, align 8
  %call82 = call i32 @sqlite3StrICmp(ptr noundef %80, ptr noundef %81)
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end111

if.then85:                                        ; preds = %for.body80
  %82 = load i32, ptr %cnt, align 4
  %cmp86 = icmp eq i32 %82, 1
  br i1 %cmp86, label %if.then88, label %if.end98

if.then88:                                        ; preds = %if.then85
  %83 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %83, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %84 = load i8, ptr %jointype, align 4
  %conv89 = zext i8 %84 to i32
  %and90 = and i32 %conv89, 4
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.then88
  br label %for.inc112

if.end93:                                         ; preds = %if.then88
  %85 = load ptr, ptr %pItem, align 8
  %pUsing = getelementptr inbounds nuw %struct.SrcList_item, ptr %85, i32 0, i32 12
  %86 = load ptr, ptr %pUsing, align 8
  %87 = load ptr, ptr %zCol.addr, align 8
  %call94 = call i32 @nameInUsingClause(ptr noundef %86, ptr noundef %87)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  br label %for.inc112

if.end97:                                         ; preds = %if.end93
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then85
  %88 = load i32, ptr %cnt, align 4
  %inc99 = add nsw i32 %88, 1
  store i32 %inc99, ptr %cnt, align 4
  %89 = load ptr, ptr %pItem, align 8
  store ptr %89, ptr %pMatch, align 8
  %90 = load i32, ptr %j, align 4
  %91 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %91, i32 0, i32 10
  %92 = load i16, ptr %iPKey, align 4
  %conv100 = sext i16 %92 to i32
  %cmp101 = icmp eq i32 %90, %conv100
  br i1 %cmp101, label %cond.true103, label %cond.false104

cond.true103:                                     ; preds = %if.end98
  br label %cond.end107

cond.false104:                                    ; preds = %if.end98
  %93 = load i32, ptr %j, align 4
  %conv105 = trunc i32 %93 to i16
  %conv106 = sext i16 %conv105 to i32
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false104, %cond.true103
  %cond108 = phi i32 [ -1, %cond.true103 ], [ %conv106, %cond.false104 ]
  %conv109 = trunc i32 %cond108 to i16
  %94 = load ptr, ptr %pExpr.addr, align 8
  %iColumn110 = getelementptr inbounds nuw %struct.Expr, ptr %94, i32 0, i32 9
  store i16 %conv109, ptr %iColumn110, align 8
  br label %for.end114

if.end111:                                        ; preds = %for.body80
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111, %if.then96, %if.then92
  %95 = load i32, ptr %j, align 4
  %inc113 = add nsw i32 %95, 1
  store i32 %inc113, ptr %j, align 4
  %96 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %96, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond76, !llvm.loop !9

for.end114:                                       ; preds = %cond.end107, %for.cond76
  br label %for.inc115

for.inc115:                                       ; preds = %for.end114, %if.then60, %if.then51, %if.then43
  %97 = load i32, ptr %i, align 4
  %inc116 = add nsw i32 %97, 1
  store i32 %inc116, ptr %i, align 4
  %98 = load ptr, ptr %pItem, align 8
  %incdec.ptr117 = getelementptr inbounds nuw %struct.SrcList_item, ptr %98, i32 1
  store ptr %incdec.ptr117, ptr %pItem, align 8
  br label %for.cond15, !llvm.loop !10

for.end118:                                       ; preds = %for.cond15
  %99 = load ptr, ptr %pMatch, align 8
  %tobool119 = icmp ne ptr %99, null
  br i1 %tobool119, label %if.then120, label %if.end134

if.then120:                                       ; preds = %for.end118
  %100 = load ptr, ptr %pMatch, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %100, i32 0, i32 10
  %101 = load i32, ptr %iCursor, align 8
  %102 = load ptr, ptr %pExpr.addr, align 8
  %iTable121 = getelementptr inbounds nuw %struct.Expr, ptr %102, i32 0, i32 8
  store i32 %101, ptr %iTable121, align 4
  %103 = load ptr, ptr %pMatch, align 8
  %pTab122 = getelementptr inbounds nuw %struct.SrcList_item, ptr %103, i32 0, i32 4
  %104 = load ptr, ptr %pTab122, align 8
  %105 = load ptr, ptr %pExpr.addr, align 8
  %y123 = getelementptr inbounds nuw %struct.Expr, ptr %105, i32 0, i32 14
  store ptr %104, ptr %y123, align 8
  %106 = load ptr, ptr %pMatch, align 8
  %fg124 = getelementptr inbounds nuw %struct.SrcList_item, ptr %106, i32 0, i32 9
  %jointype125 = getelementptr inbounds nuw %struct.anon, ptr %fg124, i32 0, i32 0
  %107 = load i8, ptr %jointype125, align 4
  %conv126 = zext i8 %107 to i32
  %and127 = and i32 %conv126, 8
  %cmp128 = icmp ne i32 %and127, 0
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then120
  %108 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %flags, align 4
  %or = or i32 %109, 1048576
  store i32 %or, ptr %flags, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.then120
  %110 = load ptr, ptr %pExpr.addr, align 8
  %y132 = getelementptr inbounds nuw %struct.Expr, ptr %110, i32 0, i32 14
  %111 = load ptr, ptr %y132, align 8
  %pSchema133 = getelementptr inbounds nuw %struct.Table, ptr %111, i32 0, i32 20
  %112 = load ptr, ptr %pSchema133, align 8
  store ptr %112, ptr %pSchema, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.end131, %for.end118
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %do.body
  %113 = load ptr, ptr %zDb.addr, align 8
  %cmp136 = icmp eq ptr %113, null
  br i1 %cmp136, label %land.lhs.true138, label %if.end285

land.lhs.true138:                                 ; preds = %if.end135
  %114 = load ptr, ptr %zTab.addr, align 8
  %cmp139 = icmp ne ptr %114, null
  br i1 %cmp139, label %land.lhs.true141, label %if.end285

land.lhs.true141:                                 ; preds = %land.lhs.true138
  %115 = load i32, ptr %cntTab, align 4
  %cmp142 = icmp eq i32 %115, 0
  br i1 %cmp142, label %if.then144, label %if.end285

if.then144:                                       ; preds = %land.lhs.true141
  store ptr null, ptr %pTab, align 8
  %116 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %116, i32 0, i32 36
  %117 = load ptr, ptr %pTriggerTab, align 8
  %cmp145 = icmp ne ptr %117, null
  br i1 %cmp145, label %if.then147, label %if.end170

if.then147:                                       ; preds = %if.then144
  %118 = load ptr, ptr %pParse.addr, align 8
  %eTriggerOp = getelementptr inbounds nuw %struct.Parse, ptr %118, i32 0, i32 42
  %119 = load i8, ptr %eTriggerOp, align 8
  %conv148 = zext i8 %119 to i32
  store i32 %conv148, ptr %op, align 4
  %120 = load i32, ptr %op, align 4
  %cmp149 = icmp ne i32 %120, 124
  br i1 %cmp149, label %land.lhs.true151, label %if.else158

land.lhs.true151:                                 ; preds = %if.then147
  %121 = load ptr, ptr %zTab.addr, align 8
  %call152 = call i32 @sqlite3StrICmp(ptr noundef @.str.619, ptr noundef %121)
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.else158

if.then155:                                       ; preds = %land.lhs.true151
  %122 = load ptr, ptr %pExpr.addr, align 8
  %iTable156 = getelementptr inbounds nuw %struct.Expr, ptr %122, i32 0, i32 8
  store i32 1, ptr %iTable156, align 4
  %123 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab157 = getelementptr inbounds nuw %struct.Parse, ptr %123, i32 0, i32 36
  %124 = load ptr, ptr %pTriggerTab157, align 8
  store ptr %124, ptr %pTab, align 8
  br label %if.end169

if.else158:                                       ; preds = %land.lhs.true151, %if.then147
  %125 = load i32, ptr %op, align 4
  %cmp159 = icmp ne i32 %125, 123
  br i1 %cmp159, label %land.lhs.true161, label %if.end168

land.lhs.true161:                                 ; preds = %if.else158
  %126 = load ptr, ptr %zTab.addr, align 8
  %call162 = call i32 @sqlite3StrICmp(ptr noundef @.str.620, ptr noundef %126)
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then165, label %if.end168

if.then165:                                       ; preds = %land.lhs.true161
  %127 = load ptr, ptr %pExpr.addr, align 8
  %iTable166 = getelementptr inbounds nuw %struct.Expr, ptr %127, i32 0, i32 8
  store i32 0, ptr %iTable166, align 4
  %128 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab167 = getelementptr inbounds nuw %struct.Parse, ptr %128, i32 0, i32 36
  %129 = load ptr, ptr %pTriggerTab167, align 8
  store ptr %129, ptr %pTab, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %land.lhs.true161, %if.else158
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.then155
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then144
  %130 = load ptr, ptr %pNC.addr, align 8
  %ncFlags171 = getelementptr inbounds nuw %struct.NameContext, ptr %130, i32 0, i32 6
  %131 = load i32, ptr %ncFlags171, align 8
  %and172 = and i32 %131, 512
  %cmp173 = icmp ne i32 %and172, 0
  br i1 %cmp173, label %if.then175, label %if.end187

if.then175:                                       ; preds = %if.end170
  %132 = load ptr, ptr %pNC.addr, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %132, i32 0, i32 2
  %133 = load ptr, ptr %uNC, align 8
  store ptr %133, ptr %pUpsert, align 8
  %134 = load ptr, ptr %pUpsert, align 8
  %tobool176 = icmp ne ptr %134, null
  br i1 %tobool176, label %land.lhs.true177, label %if.end186

land.lhs.true177:                                 ; preds = %if.then175
  %135 = load ptr, ptr %zTab.addr, align 8
  %call178 = call i32 @sqlite3StrICmp(ptr noundef @.str.621, ptr noundef %135)
  %cmp179 = icmp eq i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %if.end186

if.then181:                                       ; preds = %land.lhs.true177
  %136 = load ptr, ptr %pUpsert, align 8
  %pUpsertSrc = getelementptr inbounds nuw %struct.Upsert, ptr %136, i32 0, i32 5
  %137 = load ptr, ptr %pUpsertSrc, align 8
  %a182 = getelementptr inbounds nuw %struct.SrcList, ptr %137, i32 0, i32 2
  %arrayidx183 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a182, i64 0, i64 0
  %pTab184 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx183, i32 0, i32 4
  %138 = load ptr, ptr %pTab184, align 8
  store ptr %138, ptr %pTab, align 8
  %139 = load ptr, ptr %pExpr.addr, align 8
  %iTable185 = getelementptr inbounds nuw %struct.Expr, ptr %139, i32 0, i32 8
  store i32 2, ptr %iTable185, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then181, %land.lhs.true177, %if.then175
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.end170
  %140 = load ptr, ptr %pTab, align 8
  %tobool188 = icmp ne ptr %140, null
  br i1 %tobool188, label %if.then189, label %if.end284

if.then189:                                       ; preds = %if.end187
  %141 = load ptr, ptr %pTab, align 8
  %pSchema190 = getelementptr inbounds nuw %struct.Table, ptr %141, i32 0, i32 20
  %142 = load ptr, ptr %pSchema190, align 8
  store ptr %142, ptr %pSchema, align 8
  %143 = load i32, ptr %cntTab, align 4
  %inc191 = add nsw i32 %143, 1
  store i32 %inc191, ptr %cntTab, align 4
  store i32 0, ptr %iCol, align 4
  %144 = load ptr, ptr %pTab, align 8
  %aCol192 = getelementptr inbounds nuw %struct.Table, ptr %144, i32 0, i32 1
  %145 = load ptr, ptr %aCol192, align 8
  store ptr %145, ptr %pCol, align 8
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc211, %if.then189
  %146 = load i32, ptr %iCol, align 4
  %147 = load ptr, ptr %pTab, align 8
  %nCol194 = getelementptr inbounds nuw %struct.Table, ptr %147, i32 0, i32 11
  %148 = load i16, ptr %nCol194, align 2
  %conv195 = sext i16 %148 to i32
  %cmp196 = icmp slt i32 %146, %conv195
  br i1 %cmp196, label %for.body198, label %for.end214

for.body198:                                      ; preds = %for.cond193
  %149 = load ptr, ptr %pCol, align 8
  %zName199 = getelementptr inbounds nuw %struct.Column, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %zName199, align 8
  %151 = load ptr, ptr %zCol.addr, align 8
  %call200 = call i32 @sqlite3StrICmp(ptr noundef %150, ptr noundef %151)
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then203, label %if.end210

if.then203:                                       ; preds = %for.body198
  %152 = load i32, ptr %iCol, align 4
  %153 = load ptr, ptr %pTab, align 8
  %iPKey204 = getelementptr inbounds nuw %struct.Table, ptr %153, i32 0, i32 10
  %154 = load i16, ptr %iPKey204, align 4
  %conv205 = sext i16 %154 to i32
  %cmp206 = icmp eq i32 %152, %conv205
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.then203
  store i32 -1, ptr %iCol, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %if.then203
  br label %for.end214

if.end210:                                        ; preds = %for.body198
  br label %for.inc211

for.inc211:                                       ; preds = %if.end210
  %155 = load i32, ptr %iCol, align 4
  %inc212 = add nsw i32 %155, 1
  store i32 %inc212, ptr %iCol, align 4
  %156 = load ptr, ptr %pCol, align 8
  %incdec.ptr213 = getelementptr inbounds nuw %struct.Column, ptr %156, i32 1
  store ptr %incdec.ptr213, ptr %pCol, align 8
  br label %for.cond193, !llvm.loop !11

for.end214:                                       ; preds = %if.end209, %for.cond193
  %157 = load i32, ptr %iCol, align 4
  %158 = load ptr, ptr %pTab, align 8
  %nCol215 = getelementptr inbounds nuw %struct.Table, ptr %158, i32 0, i32 11
  %159 = load i16, ptr %nCol215, align 2
  %conv216 = sext i16 %159 to i32
  %cmp217 = icmp sge i32 %157, %conv216
  br i1 %cmp217, label %land.lhs.true219, label %if.end227

land.lhs.true219:                                 ; preds = %for.end214
  %160 = load ptr, ptr %zCol.addr, align 8
  %call220 = call i32 @sqlite3IsRowid(ptr noundef %160)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %land.lhs.true222, label %if.end227

land.lhs.true222:                                 ; preds = %land.lhs.true219
  %161 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %161, i32 0, i32 9
  %162 = load i32, ptr %tabFlags, align 8
  %and223 = and i32 %162, 64
  %cmp224 = icmp eq i32 %and223, 0
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %land.lhs.true222
  store i32 -1, ptr %iCol, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %land.lhs.true222, %land.lhs.true219, %for.end214
  %163 = load i32, ptr %iCol, align 4
  %164 = load ptr, ptr %pTab, align 8
  %nCol228 = getelementptr inbounds nuw %struct.Table, ptr %164, i32 0, i32 11
  %165 = load i16, ptr %nCol228, align 2
  %conv229 = sext i16 %165 to i32
  %cmp230 = icmp slt i32 %163, %conv229
  br i1 %cmp230, label %if.then232, label %if.end283

if.then232:                                       ; preds = %if.end227
  %166 = load i32, ptr %cnt, align 4
  %inc233 = add nsw i32 %166, 1
  store i32 %inc233, ptr %cnt, align 4
  %167 = load ptr, ptr %pExpr.addr, align 8
  %iTable234 = getelementptr inbounds nuw %struct.Expr, ptr %167, i32 0, i32 8
  %168 = load i32, ptr %iTable234, align 4
  %cmp235 = icmp eq i32 %168, 2
  br i1 %cmp235, label %if.then237, label %if.else252

if.then237:                                       ; preds = %if.then232
  %169 = load ptr, ptr %pParse.addr, align 8
  %eParseMode238 = getelementptr inbounds nuw %struct.Parse, ptr %169, i32 0, i32 51
  %170 = load i8, ptr %eParseMode238, align 4
  %conv239 = zext i8 %170 to i32
  %cmp240 = icmp sge i32 %conv239, 2
  br i1 %cmp240, label %if.then242, label %if.else246

if.then242:                                       ; preds = %if.then237
  %171 = load i32, ptr %iCol, align 4
  %conv243 = trunc i32 %171 to i16
  %172 = load ptr, ptr %pExpr.addr, align 8
  %iColumn244 = getelementptr inbounds nuw %struct.Expr, ptr %172, i32 0, i32 9
  store i16 %conv243, ptr %iColumn244, align 8
  %173 = load ptr, ptr %pTab, align 8
  %174 = load ptr, ptr %pExpr.addr, align 8
  %y245 = getelementptr inbounds nuw %struct.Expr, ptr %174, i32 0, i32 14
  store ptr %173, ptr %y245, align 8
  store i32 162, ptr %eNewExprOp, align 4
  br label %if.end251

if.else246:                                       ; preds = %if.then237
  %175 = load ptr, ptr %pNC.addr, align 8
  %uNC247 = getelementptr inbounds nuw %struct.NameContext, ptr %175, i32 0, i32 2
  %176 = load ptr, ptr %uNC247, align 8
  %regData = getelementptr inbounds nuw %struct.Upsert, ptr %176, i32 0, i32 6
  %177 = load i32, ptr %regData, align 8
  %178 = load i32, ptr %iCol, align 4
  %add = add nsw i32 %177, %178
  %179 = load ptr, ptr %pExpr.addr, align 8
  %iTable248 = getelementptr inbounds nuw %struct.Expr, ptr %179, i32 0, i32 8
  store i32 %add, ptr %iTable248, align 4
  store i32 171, ptr %eNewExprOp, align 4
  %180 = load ptr, ptr %pExpr.addr, align 8
  %flags249 = getelementptr inbounds nuw %struct.Expr, ptr %180, i32 0, i32 2
  %181 = load i32, ptr %flags249, align 4
  %or250 = or i32 %181, 4194304
  store i32 %or250, ptr %flags249, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.else246, %if.then242
  br label %if.end282

if.else252:                                       ; preds = %if.then232
  %182 = load i32, ptr %iCol, align 4
  %cmp253 = icmp slt i32 %182, 0
  br i1 %cmp253, label %if.then255, label %if.else256

if.then255:                                       ; preds = %if.else252
  %183 = load ptr, ptr %pExpr.addr, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %183, i32 0, i32 1
  store i8 68, ptr %affExpr, align 1
  br label %if.end278

if.else256:                                       ; preds = %if.else252
  %184 = load ptr, ptr %pExpr.addr, align 8
  %iTable257 = getelementptr inbounds nuw %struct.Expr, ptr %184, i32 0, i32 8
  %185 = load i32, ptr %iTable257, align 4
  %cmp258 = icmp eq i32 %185, 0
  br i1 %cmp258, label %if.then260, label %if.else268

if.then260:                                       ; preds = %if.else256
  %186 = load i32, ptr %iCol, align 4
  %cmp261 = icmp sge i32 %186, 32
  br i1 %cmp261, label %cond.true263, label %cond.false264

cond.true263:                                     ; preds = %if.then260
  br label %cond.end265

cond.false264:                                    ; preds = %if.then260
  %187 = load i32, ptr %iCol, align 4
  %shl = shl i32 1, %187
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false264, %cond.true263
  %cond266 = phi i32 [ -1, %cond.true263 ], [ %shl, %cond.false264 ]
  %188 = load ptr, ptr %pParse.addr, align 8
  %oldmask = getelementptr inbounds nuw %struct.Parse, ptr %188, i32 0, i32 40
  %189 = load i32, ptr %oldmask, align 8
  %or267 = or i32 %189, %cond266
  store i32 %or267, ptr %oldmask, align 8
  br label %if.end277

if.else268:                                       ; preds = %if.else256
  %190 = load i32, ptr %iCol, align 4
  %cmp269 = icmp sge i32 %190, 32
  br i1 %cmp269, label %cond.true271, label %cond.false272

cond.true271:                                     ; preds = %if.else268
  br label %cond.end274

cond.false272:                                    ; preds = %if.else268
  %191 = load i32, ptr %iCol, align 4
  %shl273 = shl i32 1, %191
  br label %cond.end274

cond.end274:                                      ; preds = %cond.false272, %cond.true271
  %cond275 = phi i32 [ -1, %cond.true271 ], [ %shl273, %cond.false272 ]
  %192 = load ptr, ptr %pParse.addr, align 8
  %newmask = getelementptr inbounds nuw %struct.Parse, ptr %192, i32 0, i32 41
  %193 = load i32, ptr %newmask, align 4
  %or276 = or i32 %193, %cond275
  store i32 %or276, ptr %newmask, align 4
  br label %if.end277

if.end277:                                        ; preds = %cond.end274, %cond.end265
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.then255
  %194 = load ptr, ptr %pTab, align 8
  %195 = load ptr, ptr %pExpr.addr, align 8
  %y279 = getelementptr inbounds nuw %struct.Expr, ptr %195, i32 0, i32 14
  store ptr %194, ptr %y279, align 8
  %196 = load i32, ptr %iCol, align 4
  %conv280 = trunc i32 %196 to i16
  %197 = load ptr, ptr %pExpr.addr, align 8
  %iColumn281 = getelementptr inbounds nuw %struct.Expr, ptr %197, i32 0, i32 9
  store i16 %conv280, ptr %iColumn281, align 8
  store i32 77, ptr %eNewExprOp, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.end278, %if.end251
  br label %if.end283

if.end283:                                        ; preds = %if.end282, %if.end227
  br label %if.end284

if.end284:                                        ; preds = %if.end283, %if.end187
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %land.lhs.true141, %land.lhs.true138, %if.end135
  %198 = load i32, ptr %cnt, align 4
  %cmp286 = icmp eq i32 %198, 0
  br i1 %cmp286, label %land.lhs.true288, label %if.end310

land.lhs.true288:                                 ; preds = %if.end285
  %199 = load i32, ptr %cntTab, align 4
  %cmp289 = icmp eq i32 %199, 1
  br i1 %cmp289, label %land.lhs.true291, label %if.end310

land.lhs.true291:                                 ; preds = %land.lhs.true288
  %200 = load ptr, ptr %pMatch, align 8
  %tobool292 = icmp ne ptr %200, null
  br i1 %tobool292, label %land.lhs.true293, label %if.end310

land.lhs.true293:                                 ; preds = %land.lhs.true291
  %201 = load ptr, ptr %pNC.addr, align 8
  %ncFlags294 = getelementptr inbounds nuw %struct.NameContext, ptr %201, i32 0, i32 6
  %202 = load i32, ptr %ncFlags294, align 8
  %and295 = and i32 %202, 32
  %cmp296 = icmp eq i32 %and295, 0
  br i1 %cmp296, label %land.lhs.true298, label %if.end310

land.lhs.true298:                                 ; preds = %land.lhs.true293
  %203 = load ptr, ptr %zCol.addr, align 8
  %call299 = call i32 @sqlite3IsRowid(ptr noundef %203)
  %tobool300 = icmp ne i32 %call299, 0
  br i1 %tobool300, label %land.lhs.true301, label %if.end310

land.lhs.true301:                                 ; preds = %land.lhs.true298
  %204 = load ptr, ptr %pMatch, align 8
  %pTab302 = getelementptr inbounds nuw %struct.SrcList_item, ptr %204, i32 0, i32 4
  %205 = load ptr, ptr %pTab302, align 8
  %tabFlags303 = getelementptr inbounds nuw %struct.Table, ptr %205, i32 0, i32 9
  %206 = load i32, ptr %tabFlags303, align 8
  %and304 = and i32 %206, 64
  %cmp305 = icmp eq i32 %and304, 0
  br i1 %cmp305, label %if.then307, label %if.end310

if.then307:                                       ; preds = %land.lhs.true301
  store i32 1, ptr %cnt, align 4
  %207 = load ptr, ptr %pExpr.addr, align 8
  %iColumn308 = getelementptr inbounds nuw %struct.Expr, ptr %207, i32 0, i32 9
  store i16 -1, ptr %iColumn308, align 8
  %208 = load ptr, ptr %pExpr.addr, align 8
  %affExpr309 = getelementptr inbounds nuw %struct.Expr, ptr %208, i32 0, i32 1
  store i8 68, ptr %affExpr309, align 1
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %land.lhs.true301, %land.lhs.true298, %land.lhs.true293, %land.lhs.true291, %land.lhs.true288, %if.end285
  %209 = load ptr, ptr %pNC.addr, align 8
  %ncFlags311 = getelementptr inbounds nuw %struct.NameContext, ptr %209, i32 0, i32 6
  %210 = load i32, ptr %ncFlags311, align 8
  %and312 = and i32 %210, 128
  %cmp313 = icmp ne i32 %and312, 0
  br i1 %cmp313, label %land.lhs.true315, label %if.end380

land.lhs.true315:                                 ; preds = %if.end310
  %211 = load i32, ptr %cnt, align 4
  %cmp316 = icmp eq i32 %211, 0
  br i1 %cmp316, label %land.lhs.true318, label %if.end380

land.lhs.true318:                                 ; preds = %land.lhs.true315
  %212 = load ptr, ptr %zTab.addr, align 8
  %cmp319 = icmp eq ptr %212, null
  br i1 %cmp319, label %if.then321, label %if.end380

if.then321:                                       ; preds = %land.lhs.true318
  %213 = load ptr, ptr %pNC.addr, align 8
  %uNC322 = getelementptr inbounds nuw %struct.NameContext, ptr %213, i32 0, i32 2
  %214 = load ptr, ptr %uNC322, align 8
  store ptr %214, ptr %pEList, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc377, %if.then321
  %215 = load i32, ptr %j, align 4
  %216 = load ptr, ptr %pEList, align 8
  %nExpr324 = getelementptr inbounds nuw %struct.ExprList, ptr %216, i32 0, i32 0
  %217 = load i32, ptr %nExpr324, align 8
  %cmp325 = icmp slt i32 %215, %217
  br i1 %cmp325, label %for.body327, label %for.end379

for.body327:                                      ; preds = %for.cond323
  %218 = load ptr, ptr %pEList, align 8
  %a328 = getelementptr inbounds nuw %struct.ExprList, ptr %218, i32 0, i32 1
  %219 = load i32, ptr %j, align 4
  %idxprom329 = sext i32 %219 to i64
  %arrayidx330 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a328, i64 0, i64 %idxprom329
  %zName331 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx330, i32 0, i32 1
  %220 = load ptr, ptr %zName331, align 8
  store ptr %220, ptr %zAs, align 8
  %221 = load ptr, ptr %zAs, align 8
  %cmp332 = icmp ne ptr %221, null
  br i1 %cmp332, label %land.lhs.true334, label %if.end376

land.lhs.true334:                                 ; preds = %for.body327
  %222 = load ptr, ptr %zAs, align 8
  %223 = load ptr, ptr %zCol.addr, align 8
  %call335 = call i32 @sqlite3StrICmp(ptr noundef %222, ptr noundef %223)
  %cmp336 = icmp eq i32 %call335, 0
  br i1 %cmp336, label %if.then338, label %if.end376

if.then338:                                       ; preds = %land.lhs.true334
  %224 = load ptr, ptr %pEList, align 8
  %a339 = getelementptr inbounds nuw %struct.ExprList, ptr %224, i32 0, i32 1
  %225 = load i32, ptr %j, align 4
  %idxprom340 = sext i32 %225 to i64
  %arrayidx341 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a339, i64 0, i64 %idxprom340
  %pExpr342 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx341, i32 0, i32 0
  %226 = load ptr, ptr %pExpr342, align 8
  store ptr %226, ptr %pOrig, align 8
  %227 = load ptr, ptr %pNC.addr, align 8
  %ncFlags343 = getelementptr inbounds nuw %struct.NameContext, ptr %227, i32 0, i32 6
  %228 = load i32, ptr %ncFlags343, align 8
  %and344 = and i32 %228, 1
  %cmp345 = icmp eq i32 %and344, 0
  br i1 %cmp345, label %land.lhs.true347, label %if.end353

land.lhs.true347:                                 ; preds = %if.then338
  %229 = load ptr, ptr %pOrig, align 8
  %flags348 = getelementptr inbounds nuw %struct.Expr, ptr %229, i32 0, i32 2
  %230 = load i32, ptr %flags348, align 4
  %and349 = and i32 %230, 16
  %cmp350 = icmp ne i32 %and349, 0
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %land.lhs.true347
  %231 = load ptr, ptr %pParse.addr, align 8
  %232 = load ptr, ptr %zAs, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %231, ptr noundef @.str.622, ptr noundef %232)
  store i32 2, ptr %retval, align 4
  br label %return

if.end353:                                        ; preds = %land.lhs.true347, %if.then338
  %233 = load ptr, ptr %pNC.addr, align 8
  %ncFlags354 = getelementptr inbounds nuw %struct.NameContext, ptr %233, i32 0, i32 6
  %234 = load i32, ptr %ncFlags354, align 8
  %and355 = and i32 %234, 16384
  %cmp356 = icmp eq i32 %and355, 0
  br i1 %cmp356, label %land.lhs.true358, label %if.end364

land.lhs.true358:                                 ; preds = %if.end353
  %235 = load ptr, ptr %pOrig, align 8
  %flags359 = getelementptr inbounds nuw %struct.Expr, ptr %235, i32 0, i32 2
  %236 = load i32, ptr %flags359, align 4
  %and360 = and i32 %236, 32768
  %cmp361 = icmp ne i32 %and360, 0
  br i1 %cmp361, label %if.then363, label %if.end364

if.then363:                                       ; preds = %land.lhs.true358
  %237 = load ptr, ptr %pParse.addr, align 8
  %238 = load ptr, ptr %zAs, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %237, ptr noundef @.str.623, ptr noundef %238)
  store i32 2, ptr %retval, align 4
  br label %return

if.end364:                                        ; preds = %land.lhs.true358, %if.end353
  %239 = load ptr, ptr %pOrig, align 8
  %call365 = call i32 @sqlite3ExprVectorSize(ptr noundef %239)
  %cmp366 = icmp ne i32 %call365, 1
  br i1 %cmp366, label %if.then368, label %if.end369

if.then368:                                       ; preds = %if.end364
  %240 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %240, ptr noundef @.str.566)
  store i32 2, ptr %retval, align 4
  br label %return

if.end369:                                        ; preds = %if.end364
  %241 = load ptr, ptr %pParse.addr, align 8
  %242 = load ptr, ptr %pEList, align 8
  %243 = load i32, ptr %j, align 4
  %244 = load ptr, ptr %pExpr.addr, align 8
  %245 = load i32, ptr %nSubquery, align 4
  call void @resolveAlias(ptr noundef %241, ptr noundef %242, i32 noundef %243, ptr noundef %244, ptr noundef @.str.3, i32 noundef %245)
  store i32 1, ptr %cnt, align 4
  store ptr null, ptr %pMatch, align 8
  %246 = load ptr, ptr %pParse.addr, align 8
  %eParseMode370 = getelementptr inbounds nuw %struct.Parse, ptr %246, i32 0, i32 51
  %247 = load i8, ptr %eParseMode370, align 4
  %conv371 = zext i8 %247 to i32
  %cmp372 = icmp sge i32 %conv371, 2
  br i1 %cmp372, label %if.then374, label %if.end375

if.then374:                                       ; preds = %if.end369
  %248 = load ptr, ptr %pParse.addr, align 8
  %249 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %248, ptr noundef null, ptr noundef %249)
  br label %if.end375

if.end375:                                        ; preds = %if.then374, %if.end369
  br label %lookupname_end

if.end376:                                        ; preds = %land.lhs.true334, %for.body327
  br label %for.inc377

for.inc377:                                       ; preds = %if.end376
  %250 = load i32, ptr %j, align 4
  %inc378 = add nsw i32 %250, 1
  store i32 %inc378, ptr %j, align 4
  br label %for.cond323, !llvm.loop !12

for.end379:                                       ; preds = %for.cond323
  br label %if.end380

if.end380:                                        ; preds = %for.end379, %land.lhs.true318, %land.lhs.true315, %if.end310
  %251 = load i32, ptr %cnt, align 4
  %tobool381 = icmp ne i32 %251, 0
  br i1 %tobool381, label %if.then382, label %if.end383

if.then382:                                       ; preds = %if.end380
  br label %do.end

if.end383:                                        ; preds = %if.end380
  %252 = load ptr, ptr %pNC.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.NameContext, ptr %252, i32 0, i32 3
  %253 = load ptr, ptr %pNext, align 8
  store ptr %253, ptr %pNC.addr, align 8
  %254 = load i32, ptr %nSubquery, align 4
  %inc384 = add nsw i32 %254, 1
  store i32 %inc384, ptr %nSubquery, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end383
  %255 = load ptr, ptr %pNC.addr, align 8
  %tobool385 = icmp ne ptr %255, null
  br i1 %tobool385, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond, %if.then382
  %256 = load i32, ptr %cnt, align 4
  %cmp386 = icmp eq i32 %256, 0
  br i1 %cmp386, label %land.lhs.true388, label %if.end407

land.lhs.true388:                                 ; preds = %do.end
  %257 = load ptr, ptr %zTab.addr, align 8
  %cmp389 = icmp eq ptr %257, null
  br i1 %cmp389, label %if.then391, label %if.end407

if.then391:                                       ; preds = %land.lhs.true388
  %258 = load ptr, ptr %pExpr.addr, align 8
  %flags392 = getelementptr inbounds nuw %struct.Expr, ptr %258, i32 0, i32 2
  %259 = load i32, ptr %flags392, align 4
  %and393 = and i32 %259, 64
  %cmp394 = icmp ne i32 %and393, 0
  br i1 %cmp394, label %land.lhs.true396, label %if.end402

land.lhs.true396:                                 ; preds = %if.then391
  %260 = load ptr, ptr %db, align 8
  %261 = load ptr, ptr %pTopNC, align 8
  %call397 = call i32 @areDoubleQuotedStringsEnabled(ptr noundef %260, ptr noundef %261)
  %tobool398 = icmp ne i32 %call397, 0
  br i1 %tobool398, label %if.then399, label %if.end402

if.then399:                                       ; preds = %land.lhs.true396
  %262 = load ptr, ptr %zCol.addr, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.624, ptr noundef %262)
  %263 = load ptr, ptr %pExpr.addr, align 8
  %op400 = getelementptr inbounds nuw %struct.Expr, ptr %263, i32 0, i32 0
  store i8 113, ptr %op400, align 8
  %264 = load ptr, ptr %pExpr.addr, align 8
  %y401 = getelementptr inbounds nuw %struct.Expr, ptr %264, i32 0, i32 14
  store ptr null, ptr %y401, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end402:                                        ; preds = %land.lhs.true396, %if.then391
  %265 = load ptr, ptr %pExpr.addr, align 8
  %call403 = call i32 @sqlite3ExprIdToTrueFalse(ptr noundef %265)
  %tobool404 = icmp ne i32 %call403, 0
  br i1 %tobool404, label %if.then405, label %if.end406

if.then405:                                       ; preds = %if.end402
  store i32 1, ptr %retval, align 4
  br label %return

if.end406:                                        ; preds = %if.end402
  br label %if.end407

if.end407:                                        ; preds = %if.end406, %land.lhs.true388, %do.end
  %266 = load i32, ptr %cnt, align 4
  %cmp408 = icmp ne i32 %266, 1
  br i1 %cmp408, label %if.then410, label %if.end423

if.then410:                                       ; preds = %if.end407
  %267 = load i32, ptr %cnt, align 4
  %cmp411 = icmp eq i32 %267, 0
  %268 = zext i1 %cmp411 to i64
  %cond413 = select i1 %cmp411, ptr @.str.625, ptr @.str.626
  store ptr %cond413, ptr %zErr, align 8
  %269 = load ptr, ptr %zDb.addr, align 8
  %tobool414 = icmp ne ptr %269, null
  br i1 %tobool414, label %if.then415, label %if.else416

if.then415:                                       ; preds = %if.then410
  %270 = load ptr, ptr %pParse.addr, align 8
  %271 = load ptr, ptr %zErr, align 8
  %272 = load ptr, ptr %zDb.addr, align 8
  %273 = load ptr, ptr %zTab.addr, align 8
  %274 = load ptr, ptr %zCol.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %270, ptr noundef @.str.627, ptr noundef %271, ptr noundef %272, ptr noundef %273, ptr noundef %274)
  br label %if.end421

if.else416:                                       ; preds = %if.then410
  %275 = load ptr, ptr %zTab.addr, align 8
  %tobool417 = icmp ne ptr %275, null
  br i1 %tobool417, label %if.then418, label %if.else419

if.then418:                                       ; preds = %if.else416
  %276 = load ptr, ptr %pParse.addr, align 8
  %277 = load ptr, ptr %zErr, align 8
  %278 = load ptr, ptr %zTab.addr, align 8
  %279 = load ptr, ptr %zCol.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %276, ptr noundef @.str.413, ptr noundef %277, ptr noundef %278, ptr noundef %279)
  br label %if.end420

if.else419:                                       ; preds = %if.else416
  %280 = load ptr, ptr %pParse.addr, align 8
  %281 = load ptr, ptr %zErr, align 8
  %282 = load ptr, ptr %zCol.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %280, ptr noundef @.str.414, ptr noundef %281, ptr noundef %282)
  br label %if.end420

if.end420:                                        ; preds = %if.else419, %if.then418
  br label %if.end421

if.end421:                                        ; preds = %if.end420, %if.then415
  %283 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %283, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  %284 = load ptr, ptr %pTopNC, align 8
  %nErr = getelementptr inbounds nuw %struct.NameContext, ptr %284, i32 0, i32 5
  %285 = load i32, ptr %nErr, align 4
  %inc422 = add nsw i32 %285, 1
  store i32 %inc422, ptr %nErr, align 4
  br label %if.end423

if.end423:                                        ; preds = %if.end421, %if.end407
  %286 = load ptr, ptr %pExpr.addr, align 8
  %iColumn424 = getelementptr inbounds nuw %struct.Expr, ptr %286, i32 0, i32 9
  %287 = load i16, ptr %iColumn424, align 8
  %conv425 = sext i16 %287 to i32
  %cmp426 = icmp sge i32 %conv425, 0
  br i1 %cmp426, label %land.lhs.true428, label %if.end440

land.lhs.true428:                                 ; preds = %if.end423
  %288 = load ptr, ptr %pMatch, align 8
  %cmp429 = icmp ne ptr %288, null
  br i1 %cmp429, label %if.then431, label %if.end440

if.then431:                                       ; preds = %land.lhs.true428
  %289 = load ptr, ptr %pExpr.addr, align 8
  %iColumn432 = getelementptr inbounds nuw %struct.Expr, ptr %289, i32 0, i32 9
  %290 = load i16, ptr %iColumn432, align 8
  %conv433 = sext i16 %290 to i32
  store i32 %conv433, ptr %n, align 4
  %291 = load i32, ptr %n, align 4
  %cmp434 = icmp sge i32 %291, 64
  br i1 %cmp434, label %if.then436, label %if.end437

if.then436:                                       ; preds = %if.then431
  store i32 63, ptr %n, align 4
  br label %if.end437

if.end437:                                        ; preds = %if.then436, %if.then431
  %292 = load i32, ptr %n, align 4
  %sh_prom = zext i32 %292 to i64
  %shl438 = shl i64 1, %sh_prom
  %293 = load ptr, ptr %pMatch, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %293, i32 0, i32 13
  %294 = load i64, ptr %colUsed, align 8
  %or439 = or i64 %294, %shl438
  store i64 %or439, ptr %colUsed, align 8
  br label %if.end440

if.end440:                                        ; preds = %if.end437, %land.lhs.true428, %if.end423
  %295 = load ptr, ptr %db, align 8
  %296 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %296, i32 0, i32 4
  %297 = load ptr, ptr %pLeft, align 8
  call void @sqlite3ExprDelete(ptr noundef %295, ptr noundef %297)
  %298 = load ptr, ptr %pExpr.addr, align 8
  %pLeft441 = getelementptr inbounds nuw %struct.Expr, ptr %298, i32 0, i32 4
  store ptr null, ptr %pLeft441, align 8
  %299 = load ptr, ptr %db, align 8
  %300 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %300, i32 0, i32 5
  %301 = load ptr, ptr %pRight, align 8
  call void @sqlite3ExprDelete(ptr noundef %299, ptr noundef %301)
  %302 = load ptr, ptr %pExpr.addr, align 8
  %pRight442 = getelementptr inbounds nuw %struct.Expr, ptr %302, i32 0, i32 5
  store ptr null, ptr %pRight442, align 8
  %303 = load i32, ptr %eNewExprOp, align 4
  %conv443 = trunc i32 %303 to i8
  %304 = load ptr, ptr %pExpr.addr, align 8
  %op444 = getelementptr inbounds nuw %struct.Expr, ptr %304, i32 0, i32 0
  store i8 %conv443, ptr %op444, align 8
  %305 = load ptr, ptr %pExpr.addr, align 8
  %flags445 = getelementptr inbounds nuw %struct.Expr, ptr %305, i32 0, i32 2
  %306 = load i32, ptr %flags445, align 4
  %or446 = or i32 %306, 8388608
  store i32 %or446, ptr %flags445, align 4
  br label %lookupname_end

lookupname_end:                                   ; preds = %if.end440, %if.end375
  %307 = load i32, ptr %cnt, align 4
  %cmp447 = icmp eq i32 %307, 1
  br i1 %cmp447, label %if.then449, label %if.else465

if.then449:                                       ; preds = %lookupname_end
  %308 = load ptr, ptr %pExpr.addr, align 8
  %flags450 = getelementptr inbounds nuw %struct.Expr, ptr %308, i32 0, i32 2
  %309 = load i32, ptr %flags450, align 4
  %and451 = and i32 %309, 4194304
  %cmp452 = icmp ne i32 %and451, 0
  br i1 %cmp452, label %if.end456, label %if.then454

if.then454:                                       ; preds = %if.then449
  %310 = load ptr, ptr %pParse.addr, align 8
  %311 = load ptr, ptr %pExpr.addr, align 8
  %312 = load ptr, ptr %pSchema, align 8
  %313 = load ptr, ptr %pNC.addr, align 8
  %pSrcList455 = getelementptr inbounds nuw %struct.NameContext, ptr %313, i32 0, i32 1
  %314 = load ptr, ptr %pSrcList455, align 8
  call void @sqlite3AuthRead(ptr noundef %310, ptr noundef %311, ptr noundef %312, ptr noundef %314)
  br label %if.end456

if.end456:                                        ; preds = %if.then454, %if.then449
  br label %for.cond457

for.cond457:                                      ; preds = %if.end462, %if.end456
  %315 = load ptr, ptr %pTopNC, align 8
  %nRef = getelementptr inbounds nuw %struct.NameContext, ptr %315, i32 0, i32 4
  %316 = load i32, ptr %nRef, align 8
  %inc458 = add nsw i32 %316, 1
  store i32 %inc458, ptr %nRef, align 8
  %317 = load ptr, ptr %pTopNC, align 8
  %318 = load ptr, ptr %pNC.addr, align 8
  %cmp459 = icmp eq ptr %317, %318
  br i1 %cmp459, label %if.then461, label %if.end462

if.then461:                                       ; preds = %for.cond457
  br label %for.end464

if.end462:                                        ; preds = %for.cond457
  %319 = load ptr, ptr %pTopNC, align 8
  %pNext463 = getelementptr inbounds nuw %struct.NameContext, ptr %319, i32 0, i32 3
  %320 = load ptr, ptr %pNext463, align 8
  store ptr %320, ptr %pTopNC, align 8
  br label %for.cond457

for.end464:                                       ; preds = %if.then461
  store i32 1, ptr %retval, align 4
  br label %return

if.else465:                                       ; preds = %lookupname_end
  store i32 2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else465, %for.end464, %if.then405, %if.then399, %if.then368, %if.then363, %if.then352
  %321 = load i32, ptr %retval, align 4
  ret i32 %321
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MatchSpanName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @nameInUsingClause(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @resolveAlias(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @areDoubleQuotedStringsEnabled(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AuthRead(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
