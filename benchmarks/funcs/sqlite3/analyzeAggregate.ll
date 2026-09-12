; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.AggInfo = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.AggInfo_col = type { ptr, i32, i32, i32, i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.AggInfo_func = type { ptr, ptr, i32, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindFunction(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @analyzeAggregate(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pNC = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pSrcList = alloca ptr, align 8
  %pAggInfo = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %pGB = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pE = alloca ptr, align 8
  %pItem95 = alloca ptr, align 8
  %enc = alloca i8, align 1
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %pNC, align 8
  %2 = load ptr, ptr %pNC, align 8
  %pParse1 = getelementptr inbounds nuw %struct.NameContext, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse1, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %pNC, align 8
  %pSrcList2 = getelementptr inbounds nuw %struct.NameContext, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pSrcList2, align 8
  store ptr %5, ptr %pSrcList, align 8
  %6 = load ptr, ptr %pNC, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %uNC, align 8
  store ptr %7, ptr %pAggInfo, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 0
  %9 = load i8, ptr %op, align 8
  %conv = zext i8 %9 to i32
  switch i32 %conv, label %sw.epilog [
    i32 164, label %sw.bb
    i32 162, label %sw.bb
    i32 163, label %sw.bb87
  ]

sw.bb:                                            ; preds = %entry, %entry
  %10 = load ptr, ptr %pSrcList, align 8
  %cmp = icmp ne ptr %10, null
  br i1 %cmp, label %if.then, label %if.end86

if.then:                                          ; preds = %sw.bb
  %11 = load ptr, ptr %pSrcList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %if.then
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %pSrcList, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %nSrc, align 8
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body, label %for.end85

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %iTable, align 4
  %17 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %iCursor, align 8
  %cmp6 = icmp eq i32 %16, %18
  br i1 %cmp6, label %if.then8, label %if.end81

if.then8:                                         ; preds = %for.body
  %19 = load ptr, ptr %pAggInfo, align 8
  %aCol = getelementptr inbounds nuw %struct.AggInfo, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %aCol, align 8
  store ptr %20, ptr %pCol, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.then8
  %21 = load i32, ptr %k, align 4
  %22 = load ptr, ptr %pAggInfo, align 8
  %nColumn = getelementptr inbounds nuw %struct.AggInfo, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %nColumn, align 8
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond9
  %24 = load ptr, ptr %pCol, align 8
  %iTable13 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %iTable13, align 8
  %26 = load ptr, ptr %pExpr.addr, align 8
  %iTable14 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 8
  %27 = load i32, ptr %iTable14, align 4
  %cmp15 = icmp eq i32 %25, %27
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body12
  %28 = load ptr, ptr %pCol, align 8
  %iColumn = getelementptr inbounds nuw %struct.AggInfo_col, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %iColumn, align 4
  %30 = load ptr, ptr %pExpr.addr, align 8
  %iColumn17 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 9
  %31 = load i16, ptr %iColumn17, align 8
  %conv18 = sext i16 %31 to i32
  %cmp19 = icmp eq i32 %29, %conv18
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, ptr %k, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %k, align 4
  %33 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.AggInfo_col, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond9, !llvm.loop !6

for.end:                                          ; preds = %if.then21, %for.cond9
  %34 = load i32, ptr %k, align 4
  %35 = load ptr, ptr %pAggInfo, align 8
  %nColumn22 = getelementptr inbounds nuw %struct.AggInfo, ptr %35, i32 0, i32 9
  %36 = load i32, ptr %nColumn22, align 8
  %cmp23 = icmp sge i32 %34, %36
  br i1 %cmp23, label %land.lhs.true25, label %if.end77

land.lhs.true25:                                  ; preds = %for.end
  %37 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %db, align 8
  %39 = load ptr, ptr %pAggInfo, align 8
  %call = call i32 @addAggInfoColumn(ptr noundef %38, ptr noundef %39)
  store i32 %call, ptr %k, align 4
  %cmp26 = icmp sge i32 %call, 0
  br i1 %cmp26, label %if.then28, label %if.end77

if.then28:                                        ; preds = %land.lhs.true25
  %40 = load ptr, ptr %pAggInfo, align 8
  %aCol29 = getelementptr inbounds nuw %struct.AggInfo, ptr %40, i32 0, i32 8
  %41 = load ptr, ptr %aCol29, align 8
  %42 = load i32, ptr %k, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds %struct.AggInfo_col, ptr %41, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %43 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 14
  %44 = load ptr, ptr %y, align 8
  %45 = load ptr, ptr %pCol, align 8
  %pTab = getelementptr inbounds nuw %struct.AggInfo_col, ptr %45, i32 0, i32 0
  store ptr %44, ptr %pTab, align 8
  %46 = load ptr, ptr %pExpr.addr, align 8
  %iTable30 = getelementptr inbounds nuw %struct.Expr, ptr %46, i32 0, i32 8
  %47 = load i32, ptr %iTable30, align 4
  %48 = load ptr, ptr %pCol, align 8
  %iTable31 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %48, i32 0, i32 1
  store i32 %47, ptr %iTable31, align 8
  %49 = load ptr, ptr %pExpr.addr, align 8
  %iColumn32 = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 9
  %50 = load i16, ptr %iColumn32, align 8
  %conv33 = sext i16 %50 to i32
  %51 = load ptr, ptr %pCol, align 8
  %iColumn34 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %51, i32 0, i32 2
  store i32 %conv33, ptr %iColumn34, align 4
  %52 = load ptr, ptr %pParse, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %52, i32 0, i32 18
  %53 = load i32, ptr %nMem, align 8
  %inc35 = add nsw i32 %53, 1
  store i32 %inc35, ptr %nMem, align 8
  %54 = load ptr, ptr %pCol, align 8
  %iMem = getelementptr inbounds nuw %struct.AggInfo_col, ptr %54, i32 0, i32 4
  store i32 %inc35, ptr %iMem, align 4
  %55 = load ptr, ptr %pCol, align 8
  %iSorterColumn = getelementptr inbounds nuw %struct.AggInfo_col, ptr %55, i32 0, i32 3
  store i32 -1, ptr %iSorterColumn, align 8
  %56 = load ptr, ptr %pExpr.addr, align 8
  %57 = load ptr, ptr %pCol, align 8
  %pExpr36 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %57, i32 0, i32 5
  store ptr %56, ptr %pExpr36, align 8
  %58 = load ptr, ptr %pAggInfo, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.AggInfo, ptr %58, i32 0, i32 7
  %59 = load ptr, ptr %pGroupBy, align 8
  %tobool = icmp ne ptr %59, null
  br i1 %tobool, label %if.then37, label %if.end69

if.then37:                                        ; preds = %if.then28
  %60 = load ptr, ptr %pAggInfo, align 8
  %pGroupBy38 = getelementptr inbounds nuw %struct.AggInfo, ptr %60, i32 0, i32 7
  %61 = load ptr, ptr %pGroupBy38, align 8
  store ptr %61, ptr %pGB, align 8
  %62 = load ptr, ptr %pGB, align 8
  %a39 = getelementptr inbounds nuw %struct.ExprList, ptr %62, i32 0, i32 1
  %arraydecay40 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a39, i64 0, i64 0
  store ptr %arraydecay40, ptr %pTerm, align 8
  %63 = load ptr, ptr %pGB, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %63, i32 0, i32 0
  %64 = load i32, ptr %nExpr, align 8
  store i32 %64, ptr %n, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc65, %if.then37
  %65 = load i32, ptr %j, align 4
  %66 = load i32, ptr %n, align 4
  %cmp42 = icmp slt i32 %65, %66
  br i1 %cmp42, label %for.body44, label %for.end68

for.body44:                                       ; preds = %for.cond41
  %67 = load ptr, ptr %pTerm, align 8
  %pExpr45 = getelementptr inbounds nuw %struct.ExprList_item, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %pExpr45, align 8
  store ptr %68, ptr %pE, align 8
  %69 = load ptr, ptr %pE, align 8
  %op46 = getelementptr inbounds nuw %struct.Expr, ptr %69, i32 0, i32 0
  %70 = load i8, ptr %op46, align 8
  %conv47 = zext i8 %70 to i32
  %cmp48 = icmp eq i32 %conv47, 162
  br i1 %cmp48, label %land.lhs.true50, label %if.end64

land.lhs.true50:                                  ; preds = %for.body44
  %71 = load ptr, ptr %pE, align 8
  %iTable51 = getelementptr inbounds nuw %struct.Expr, ptr %71, i32 0, i32 8
  %72 = load i32, ptr %iTable51, align 4
  %73 = load ptr, ptr %pExpr.addr, align 8
  %iTable52 = getelementptr inbounds nuw %struct.Expr, ptr %73, i32 0, i32 8
  %74 = load i32, ptr %iTable52, align 4
  %cmp53 = icmp eq i32 %72, %74
  br i1 %cmp53, label %land.lhs.true55, label %if.end64

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %75 = load ptr, ptr %pE, align 8
  %iColumn56 = getelementptr inbounds nuw %struct.Expr, ptr %75, i32 0, i32 9
  %76 = load i16, ptr %iColumn56, align 8
  %conv57 = sext i16 %76 to i32
  %77 = load ptr, ptr %pExpr.addr, align 8
  %iColumn58 = getelementptr inbounds nuw %struct.Expr, ptr %77, i32 0, i32 9
  %78 = load i16, ptr %iColumn58, align 8
  %conv59 = sext i16 %78 to i32
  %cmp60 = icmp eq i32 %conv57, %conv59
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %land.lhs.true55
  %79 = load i32, ptr %j, align 4
  %80 = load ptr, ptr %pCol, align 8
  %iSorterColumn63 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %80, i32 0, i32 3
  store i32 %79, ptr %iSorterColumn63, align 8
  br label %for.end68

if.end64:                                         ; preds = %land.lhs.true55, %land.lhs.true50, %for.body44
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %81 = load i32, ptr %j, align 4
  %inc66 = add nsw i32 %81, 1
  store i32 %inc66, ptr %j, align 4
  %82 = load ptr, ptr %pTerm, align 8
  %incdec.ptr67 = getelementptr inbounds nuw %struct.ExprList_item, ptr %82, i32 1
  store ptr %incdec.ptr67, ptr %pTerm, align 8
  br label %for.cond41, !llvm.loop !8

for.end68:                                        ; preds = %if.then62, %for.cond41
  br label %if.end69

if.end69:                                         ; preds = %for.end68, %if.then28
  %83 = load ptr, ptr %pCol, align 8
  %iSorterColumn70 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %83, i32 0, i32 3
  %84 = load i32, ptr %iSorterColumn70, align 8
  %cmp71 = icmp slt i32 %84, 0
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end69
  %85 = load ptr, ptr %pAggInfo, align 8
  %nSortingColumn = getelementptr inbounds nuw %struct.AggInfo, ptr %85, i32 0, i32 4
  %86 = load i32, ptr %nSortingColumn, align 4
  %inc74 = add nsw i32 %86, 1
  store i32 %inc74, ptr %nSortingColumn, align 4
  %87 = load ptr, ptr %pCol, align 8
  %iSorterColumn75 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %87, i32 0, i32 3
  store i32 %86, ptr %iSorterColumn75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %land.lhs.true25, %for.end
  %88 = load ptr, ptr %pAggInfo, align 8
  %89 = load ptr, ptr %pExpr.addr, align 8
  %pAggInfo78 = getelementptr inbounds nuw %struct.Expr, ptr %89, i32 0, i32 13
  store ptr %88, ptr %pAggInfo78, align 8
  %90 = load ptr, ptr %pExpr.addr, align 8
  %op79 = getelementptr inbounds nuw %struct.Expr, ptr %90, i32 0, i32 0
  store i8 -92, ptr %op79, align 8
  %91 = load i32, ptr %k, align 4
  %conv80 = trunc i32 %91 to i16
  %92 = load ptr, ptr %pExpr.addr, align 8
  %iAgg = getelementptr inbounds nuw %struct.Expr, ptr %92, i32 0, i32 10
  store i16 %conv80, ptr %iAgg, align 2
  br label %for.end85

if.end81:                                         ; preds = %for.body
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %93 = load i32, ptr %i, align 4
  %inc83 = add nsw i32 %93, 1
  store i32 %inc83, ptr %i, align 4
  %94 = load ptr, ptr %pItem, align 8
  %incdec.ptr84 = getelementptr inbounds nuw %struct.SrcList_item, ptr %94, i32 1
  store ptr %incdec.ptr84, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !9

for.end85:                                        ; preds = %if.end77, %for.cond
  br label %if.end86

if.end86:                                         ; preds = %for.end85, %sw.bb
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb87:                                          ; preds = %entry
  %95 = load ptr, ptr %pNC, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %95, i32 0, i32 6
  %96 = load i32, ptr %ncFlags, align 8
  %and = and i32 %96, 8
  %cmp88 = icmp eq i32 %and, 0
  br i1 %cmp88, label %land.lhs.true90, label %if.else145

land.lhs.true90:                                  ; preds = %sw.bb87
  %97 = load ptr, ptr %pWalker.addr, align 8
  %walkerDepth = getelementptr inbounds nuw %struct.Walker, ptr %97, i32 0, i32 4
  %98 = load i32, ptr %walkerDepth, align 8
  %99 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %99, i32 0, i32 12
  %100 = load i8, ptr %op2, align 2
  %conv91 = zext i8 %100 to i32
  %cmp92 = icmp eq i32 %98, %conv91
  br i1 %cmp92, label %if.then94, label %if.else145

if.then94:                                        ; preds = %land.lhs.true90
  %101 = load ptr, ptr %pAggInfo, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %101, i32 0, i32 11
  %102 = load ptr, ptr %aFunc, align 8
  store ptr %102, ptr %pItem95, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc106, %if.then94
  %103 = load i32, ptr %i, align 4
  %104 = load ptr, ptr %pAggInfo, align 8
  %nFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %104, i32 0, i32 12
  %105 = load i32, ptr %nFunc, align 8
  %cmp97 = icmp slt i32 %103, %105
  br i1 %cmp97, label %for.body99, label %for.end109

for.body99:                                       ; preds = %for.cond96
  %106 = load ptr, ptr %pItem95, align 8
  %pExpr100 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %pExpr100, align 8
  %108 = load ptr, ptr %pExpr.addr, align 8
  %call101 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %107, ptr noundef %108, i32 noundef -1)
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %for.body99
  br label %for.end109

if.end105:                                        ; preds = %for.body99
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %109 = load i32, ptr %i, align 4
  %inc107 = add nsw i32 %109, 1
  store i32 %inc107, ptr %i, align 4
  %110 = load ptr, ptr %pItem95, align 8
  %incdec.ptr108 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %110, i32 1
  store ptr %incdec.ptr108, ptr %pItem95, align 8
  br label %for.cond96, !llvm.loop !10

for.end109:                                       ; preds = %if.then104, %for.cond96
  %111 = load i32, ptr %i, align 4
  %112 = load ptr, ptr %pAggInfo, align 8
  %nFunc110 = getelementptr inbounds nuw %struct.AggInfo, ptr %112, i32 0, i32 12
  %113 = load i32, ptr %nFunc110, align 8
  %cmp111 = icmp sge i32 %111, %113
  br i1 %cmp111, label %if.then113, label %if.end141

if.then113:                                       ; preds = %for.end109
  %114 = load ptr, ptr %pParse, align 8
  %db114 = getelementptr inbounds nuw %struct.Parse, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %db114, align 8
  %enc115 = getelementptr inbounds nuw %struct.sqlite3, ptr %115, i32 0, i32 16
  %116 = load i8, ptr %enc115, align 2
  store i8 %116, ptr %enc, align 1
  %117 = load ptr, ptr %pParse, align 8
  %db116 = getelementptr inbounds nuw %struct.Parse, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %db116, align 8
  %119 = load ptr, ptr %pAggInfo, align 8
  %call117 = call i32 @addAggInfoFunc(ptr noundef %118, ptr noundef %119)
  store i32 %call117, ptr %i, align 4
  %120 = load i32, ptr %i, align 4
  %cmp118 = icmp sge i32 %120, 0
  br i1 %cmp118, label %if.then120, label %if.end140

if.then120:                                       ; preds = %if.then113
  %121 = load ptr, ptr %pAggInfo, align 8
  %aFunc121 = getelementptr inbounds nuw %struct.AggInfo, ptr %121, i32 0, i32 11
  %122 = load ptr, ptr %aFunc121, align 8
  %123 = load i32, ptr %i, align 4
  %idxprom122 = sext i32 %123 to i64
  %arrayidx123 = getelementptr inbounds %struct.AggInfo_func, ptr %122, i64 %idxprom122
  store ptr %arrayidx123, ptr %pItem95, align 8
  %124 = load ptr, ptr %pExpr.addr, align 8
  %125 = load ptr, ptr %pItem95, align 8
  %pExpr124 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %125, i32 0, i32 0
  store ptr %124, ptr %pExpr124, align 8
  %126 = load ptr, ptr %pParse, align 8
  %nMem125 = getelementptr inbounds nuw %struct.Parse, ptr %126, i32 0, i32 18
  %127 = load i32, ptr %nMem125, align 8
  %inc126 = add nsw i32 %127, 1
  store i32 %inc126, ptr %nMem125, align 8
  %128 = load ptr, ptr %pItem95, align 8
  %iMem127 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %128, i32 0, i32 2
  store i32 %inc126, ptr %iMem127, align 8
  %129 = load ptr, ptr %pParse, align 8
  %db128 = getelementptr inbounds nuw %struct.Parse, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %db128, align 8
  %131 = load ptr, ptr %pExpr.addr, align 8
  %u129 = getelementptr inbounds nuw %struct.Expr, ptr %131, i32 0, i32 3
  %132 = load ptr, ptr %u129, align 8
  %133 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %133, i32 0, i32 6
  %134 = load ptr, ptr %x, align 8
  %tobool130 = icmp ne ptr %134, null
  br i1 %tobool130, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then120
  %135 = load ptr, ptr %pExpr.addr, align 8
  %x131 = getelementptr inbounds nuw %struct.Expr, ptr %135, i32 0, i32 6
  %136 = load ptr, ptr %x131, align 8
  %nExpr132 = getelementptr inbounds nuw %struct.ExprList, ptr %136, i32 0, i32 0
  %137 = load i32, ptr %nExpr132, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %137, %cond.true ], [ 0, %cond.false ]
  %138 = load i8, ptr %enc, align 1
  %call133 = call ptr @sqlite3FindFunction(ptr noundef %130, ptr noundef %132, i32 noundef %cond, i8 noundef zeroext %138, i8 noundef zeroext 0)
  %139 = load ptr, ptr %pItem95, align 8
  %pFunc = getelementptr inbounds nuw %struct.AggInfo_func, ptr %139, i32 0, i32 1
  store ptr %call133, ptr %pFunc, align 8
  %140 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %140, i32 0, i32 2
  %141 = load i32, ptr %flags, align 4
  %and134 = and i32 %141, 2
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.else

if.then136:                                       ; preds = %cond.end
  %142 = load ptr, ptr %pParse, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %142, i32 0, i32 17
  %143 = load i32, ptr %nTab, align 4
  %inc137 = add nsw i32 %143, 1
  store i32 %inc137, ptr %nTab, align 4
  %144 = load ptr, ptr %pItem95, align 8
  %iDistinct = getelementptr inbounds nuw %struct.AggInfo_func, ptr %144, i32 0, i32 3
  store i32 %143, ptr %iDistinct, align 4
  br label %if.end139

if.else:                                          ; preds = %cond.end
  %145 = load ptr, ptr %pItem95, align 8
  %iDistinct138 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %145, i32 0, i32 3
  store i32 -1, ptr %iDistinct138, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else, %if.then136
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then113
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %for.end109
  %146 = load i32, ptr %i, align 4
  %conv142 = trunc i32 %146 to i16
  %147 = load ptr, ptr %pExpr.addr, align 8
  %iAgg143 = getelementptr inbounds nuw %struct.Expr, ptr %147, i32 0, i32 10
  store i16 %conv142, ptr %iAgg143, align 2
  %148 = load ptr, ptr %pAggInfo, align 8
  %149 = load ptr, ptr %pExpr.addr, align 8
  %pAggInfo144 = getelementptr inbounds nuw %struct.Expr, ptr %149, i32 0, i32 13
  store ptr %148, ptr %pAggInfo144, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else145:                                       ; preds = %land.lhs.true90, %sw.bb87
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.else145, %if.end141, %if.end86
  %150 = load i32, ptr %retval, align 4
  ret i32 %150
}

; Function Attrs: nounwind uwtable
declare hidden i32 @addAggInfoColumn(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @addAggInfoFunc(ptr noundef, ptr noundef) #0

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
