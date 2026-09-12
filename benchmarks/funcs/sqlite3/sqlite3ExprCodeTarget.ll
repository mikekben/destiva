; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.AggInfo = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.AggInfo_col = type { ptr, i32, i32, i32, i32, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.AggInfo_func = type { ptr, ptr, i32, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3ExprCodeTarget.zAff = external hidden constant [8 x i8], align 1
@.str.563 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.564 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.565 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.566 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.567 = external hidden unnamed_addr constant [50 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VListNumToName(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindFunction(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeDb(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeLoadString(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCodeTarget(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %target) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %target.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %op = alloca i32, align 4
  %inReg = alloca i32, align 4
  %regFree1 = alloca i32, align 4
  %regFree2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %tempX = alloca %struct.Expr, align 8
  %p5 = alloca i32, align 4
  %pAggInfo = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %iTab = alloca i32, align 4
  %iReg = alloca i32, align 4
  %aff = alloca i32, align 4
  %n = alloca i32, align 4
  %z = alloca ptr, align 8
  %zBlob = alloca ptr, align 8
  %z100 = alloca ptr, align 8
  %pLeft125 = alloca ptr, align 8
  %pLeft145 = alloca ptr, align 8
  %isTrue = alloca i32, align 4
  %bNormal = alloca i32, align 4
  %addr = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %pFarg = alloca ptr, align 8
  %nFarg = alloca i32, align 4
  %pDef = alloca ptr, align 8
  %zId = alloca ptr, align 8
  %constMask = alloca i32, align 4
  %i = alloca i32, align 4
  %db = alloca ptr, align 8
  %enc = alloca i8, align 1
  %pColl = alloca ptr, align 8
  %endCoalesce = alloca i32, align 4
  %exprOp = alloca i8, align 1
  %nCol = alloca i32, align 4
  %n386 = alloca i32, align 4
  %destIfFalse = alloca i32, align 4
  %destIfNull = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %p1 = alloca i32, align 4
  %addrINR = alloca i32, align 4
  %okConstFactor453 = alloca i8, align 1
  %endLabel = alloca i32, align 4
  %nextCase = alloca i32, align 4
  %nExpr461 = alloca i32, align 4
  %i462 = alloca i32, align 4
  %pEList463 = alloca ptr, align 8
  %aListelem = alloca ptr, align 8
  %opCompare = alloca %struct.Expr, align 8
  %pX = alloca ptr, align 8
  %pTest = alloca ptr, align 8
  %pDel = alloca ptr, align 8
  %db464 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %target, ptr %target.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load i32, ptr %target.addr, align 4
  store i32 %2, ptr %inReg, align 4
  store i32 0, ptr %regFree1, align 4
  store i32 0, ptr %regFree2, align 4
  store i32 0, ptr %p5, align 4
  %3 = load ptr, ptr %v, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %expr_code_doover

expr_code_doover:                                 ; preds = %sw.bb421, %if.end
  %4 = load ptr, ptr %pExpr.addr, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %expr_code_doover
  store i32 117, ptr %op, align 4
  br label %if.end4

if.else:                                          ; preds = %expr_code_doover
  %5 = load ptr, ptr %pExpr.addr, align 8
  %op3 = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %op3, align 8
  %conv = zext i8 %6 to i32
  store i32 %conv, ptr %op, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load i32, ptr %op, align 4
  switch i32 %7, label %sw.default [
    i32 164, label %sw.bb
    i32 162, label %sw.bb12
    i32 150, label %sw.bb72
    i32 165, label %sw.bb73
    i32 148, label %sw.bb76
    i32 113, label %sw.bb77
    i32 117, label %sw.bb80
    i32 149, label %sw.bb82
    i32 151, label %sw.bb90
    i32 171, label %sw.bb107
    i32 36, label %sw.bb109
    i32 45, label %sw.bb121
    i32 166, label %sw.bb121
    i32 56, label %sw.bb124
    i32 55, label %sw.bb124
    i32 54, label %sw.bb124
    i32 57, label %sw.bb124
    i32 52, label %sw.bb124
    i32 53, label %sw.bb124
    i32 44, label %sw.bb138
    i32 43, label %sw.bb138
    i32 103, label %sw.bb138
    i32 105, label %sw.bb138
    i32 104, label %sw.bb138
    i32 107, label %sw.bb138
    i32 99, label %sw.bb138
    i32 100, label %sw.bb138
    i32 106, label %sw.bb138
    i32 101, label %sw.bb138
    i32 102, label %sw.bb138
    i32 108, label %sw.bb138
    i32 168, label %sw.bb144
    i32 110, label %sw.bb169
    i32 19, label %sw.bb169
    i32 170, label %sw.bb173
    i32 50, label %sw.bb184
    i32 51, label %sw.bb184
    i32 163, label %sw.bb190
    i32 167, label %sw.bb202
    i32 20, label %sw.bb373
    i32 134, label %sw.bb373
    i32 173, label %sw.bb385
    i32 49, label %sw.bb414
    i32 48, label %sw.bb420
    i32 176, label %sw.bb421
    i32 109, label %sw.bb421
    i32 169, label %sw.bb421
    i32 77, label %sw.bb423
    i32 172, label %sw.bb451
    i32 174, label %sw.bb452
    i32 71, label %sw.bb519
  ]

sw.bb:                                            ; preds = %if.end4
  %8 = load ptr, ptr %pExpr.addr, align 8
  %pAggInfo5 = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %pAggInfo5, align 8
  store ptr %9, ptr %pAggInfo, align 8
  %10 = load ptr, ptr %pAggInfo, align 8
  %aCol = getelementptr inbounds nuw %struct.AggInfo, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %aCol, align 8
  %12 = load ptr, ptr %pExpr.addr, align 8
  %iAgg = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 10
  %13 = load i16, ptr %iAgg, align 2
  %idxprom = sext i16 %13 to i64
  %arrayidx = getelementptr inbounds %struct.AggInfo_col, ptr %11, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %14 = load ptr, ptr %pAggInfo, align 8
  %directMode = getelementptr inbounds nuw %struct.AggInfo, ptr %14, i32 0, i32 0
  %15 = load i8, ptr %directMode, align 8
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.else7, label %if.then6

if.then6:                                         ; preds = %sw.bb
  %16 = load ptr, ptr %pCol, align 8
  %iMem = getelementptr inbounds nuw %struct.AggInfo_col, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %iMem, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.else7:                                         ; preds = %sw.bb
  %18 = load ptr, ptr %pAggInfo, align 8
  %useSortingIdx = getelementptr inbounds nuw %struct.AggInfo, ptr %18, i32 0, i32 1
  %19 = load i8, ptr %useSortingIdx, align 1
  %tobool8 = icmp ne i8 %19, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else7
  %20 = load ptr, ptr %v, align 8
  %21 = load ptr, ptr %pAggInfo, align 8
  %sortingIdxPTab = getelementptr inbounds nuw %struct.AggInfo, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %sortingIdxPTab, align 8
  %23 = load ptr, ptr %pCol, align 8
  %iSorterColumn = getelementptr inbounds nuw %struct.AggInfo_col, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %iSorterColumn, align 8
  %25 = load i32, ptr %target.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %20, i32 noundef 90, i32 noundef %22, i32 noundef %24, i32 noundef %25)
  %26 = load i32, ptr %target.addr, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.end11, %if.end4
  %27 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 8
  %28 = load i32, ptr %iTable, align 4
  store i32 %28, ptr %iTab, align 4
  %29 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 8
  %cmp13 = icmp ne i32 %and, 0
  br i1 %cmp13, label %if.then15, label %if.end32

if.then15:                                        ; preds = %sw.bb12
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %pLeft, align 8
  %34 = load i32, ptr %target.addr, align 4
  %call16 = call i32 @sqlite3ExprCodeTarget(ptr noundef %31, ptr noundef %33, i32 noundef %34)
  store i32 %call16, ptr %iReg, align 4
  %35 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 14
  %36 = load ptr, ptr %y, align 8
  %37 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %37, i32 0, i32 9
  %38 = load i16, ptr %iColumn, align 8
  %conv17 = sext i16 %38 to i32
  %call18 = call signext i8 @sqlite3TableColumnAffinity(ptr noundef %36, i32 noundef %conv17)
  %conv19 = sext i8 %call18 to i32
  store i32 %conv19, ptr %aff, align 4
  %39 = load i32, ptr %aff, align 4
  %cmp20 = icmp sgt i32 %39, 65
  br i1 %cmp20, label %if.then22, label %if.end31

if.then22:                                        ; preds = %if.then15
  %40 = load i32, ptr %iReg, align 4
  %41 = load i32, ptr %target.addr, align 4
  %cmp23 = icmp ne i32 %40, %41
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %42 = load ptr, ptr %v, align 8
  %43 = load i32, ptr %iReg, align 4
  %44 = load i32, ptr %target.addr, align 4
  %call26 = call i32 @sqlite3VdbeAddOp2(ptr noundef %42, i32 noundef 79, i32 noundef %43, i32 noundef %44)
  %45 = load i32, ptr %target.addr, align 4
  store i32 %45, ptr %iReg, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  %46 = load ptr, ptr %v, align 8
  %47 = load i32, ptr %iReg, align 4
  %48 = load i32, ptr %aff, align 4
  %sub = sub nsw i32 %48, 66
  %mul = mul nsw i32 %sub, 2
  %idxprom28 = sext i32 %mul to i64
  %arrayidx29 = getelementptr inbounds [8 x i8], ptr @sqlite3ExprCodeTarget.zAff, i64 0, i64 %idxprom28
  %call30 = call i32 @sqlite3VdbeAddOp4(ptr noundef %46, i32 noundef 91, i32 noundef %47, i32 noundef 1, i32 noundef 0, ptr noundef %arrayidx29, i32 noundef -1)
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.then15
  %49 = load i32, ptr %iReg, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %sw.bb12
  %50 = load i32, ptr %iTab, align 4
  %cmp33 = icmp slt i32 %50, 0
  br i1 %cmp33, label %if.then35, label %if.end67

if.then35:                                        ; preds = %if.end32
  %51 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 20
  %52 = load i32, ptr %iSelfTab, align 8
  %cmp36 = icmp slt i32 %52, 0
  br i1 %cmp36, label %if.then38, label %if.else63

if.then38:                                        ; preds = %if.then35
  %53 = load ptr, ptr %pExpr.addr, align 8
  %iColumn39 = getelementptr inbounds nuw %struct.Expr, ptr %53, i32 0, i32 9
  %54 = load i16, ptr %iColumn39, align 8
  %conv40 = sext i16 %54 to i32
  %cmp41 = icmp sge i32 %conv40, 0
  br i1 %cmp41, label %land.lhs.true, label %if.else58

land.lhs.true:                                    ; preds = %if.then38
  %55 = load ptr, ptr %pExpr.addr, align 8
  %y43 = getelementptr inbounds nuw %struct.Expr, ptr %55, i32 0, i32 14
  %56 = load ptr, ptr %y43, align 8
  %aCol44 = getelementptr inbounds nuw %struct.Table, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %aCol44, align 8
  %58 = load ptr, ptr %pExpr.addr, align 8
  %iColumn45 = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 9
  %59 = load i16, ptr %iColumn45, align 8
  %idxprom46 = sext i16 %59 to i64
  %arrayidx47 = getelementptr inbounds %struct.Column, ptr %57, i64 %idxprom46
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx47, i32 0, i32 4
  %60 = load i8, ptr %affinity, align 1
  %conv48 = sext i8 %60 to i32
  %cmp49 = icmp eq i32 %conv48, 69
  br i1 %cmp49, label %if.then51, label %if.else58

if.then51:                                        ; preds = %land.lhs.true
  %61 = load ptr, ptr %v, align 8
  %62 = load ptr, ptr %pExpr.addr, align 8
  %iColumn52 = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 9
  %63 = load i16, ptr %iColumn52, align 8
  %conv53 = sext i16 %63 to i32
  %64 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab54 = getelementptr inbounds nuw %struct.Parse, ptr %64, i32 0, i32 20
  %65 = load i32, ptr %iSelfTab54, align 8
  %sub55 = sub nsw i32 %conv53, %65
  %66 = load i32, ptr %target.addr, align 4
  %call56 = call i32 @sqlite3VdbeAddOp2(ptr noundef %61, i32 noundef 79, i32 noundef %sub55, i32 noundef %66)
  %67 = load ptr, ptr %v, align 8
  %68 = load i32, ptr %target.addr, align 4
  %call57 = call i32 @sqlite3VdbeAddOp1(ptr noundef %67, i32 noundef 84, i32 noundef %68)
  %69 = load i32, ptr %target.addr, align 4
  store i32 %69, ptr %retval, align 4
  br label %return

if.else58:                                        ; preds = %land.lhs.true, %if.then38
  %70 = load ptr, ptr %pExpr.addr, align 8
  %iColumn59 = getelementptr inbounds nuw %struct.Expr, ptr %70, i32 0, i32 9
  %71 = load i16, ptr %iColumn59, align 8
  %conv60 = sext i16 %71 to i32
  %72 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab61 = getelementptr inbounds nuw %struct.Parse, ptr %72, i32 0, i32 20
  %73 = load i32, ptr %iSelfTab61, align 8
  %sub62 = sub nsw i32 %conv60, %73
  store i32 %sub62, ptr %retval, align 4
  br label %return

if.else63:                                        ; preds = %if.then35
  %74 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab64 = getelementptr inbounds nuw %struct.Parse, ptr %74, i32 0, i32 20
  %75 = load i32, ptr %iSelfTab64, align 8
  %sub65 = sub nsw i32 %75, 1
  store i32 %sub65, ptr %iTab, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else63
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end32
  %76 = load ptr, ptr %pParse.addr, align 8
  %77 = load ptr, ptr %pExpr.addr, align 8
  %y68 = getelementptr inbounds nuw %struct.Expr, ptr %77, i32 0, i32 14
  %78 = load ptr, ptr %y68, align 8
  %79 = load ptr, ptr %pExpr.addr, align 8
  %iColumn69 = getelementptr inbounds nuw %struct.Expr, ptr %79, i32 0, i32 9
  %80 = load i16, ptr %iColumn69, align 8
  %conv70 = sext i16 %80 to i32
  %81 = load i32, ptr %iTab, align 4
  %82 = load i32, ptr %target.addr, align 4
  %83 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %83, i32 0, i32 12
  %84 = load i8, ptr %op2, align 2
  %call71 = call i32 @sqlite3ExprCodeGetColumn(ptr noundef %76, ptr noundef %78, i32 noundef %conv70, i32 noundef %81, i32 noundef %82, i8 noundef zeroext %84)
  store i32 %call71, ptr %retval, align 4
  br label %return

sw.bb72:                                          ; preds = %if.end4
  %85 = load ptr, ptr %pParse.addr, align 8
  %86 = load ptr, ptr %pExpr.addr, align 8
  %87 = load i32, ptr %target.addr, align 4
  call void @codeInteger(ptr noundef %85, ptr noundef %86, i32 noundef 0, i32 noundef %87)
  %88 = load i32, ptr %target.addr, align 4
  store i32 %88, ptr %retval, align 4
  br label %return

sw.bb73:                                          ; preds = %if.end4
  %89 = load ptr, ptr %v, align 8
  %90 = load ptr, ptr %pExpr.addr, align 8
  %call74 = call i32 @sqlite3ExprTruthValue(ptr noundef %90)
  %91 = load i32, ptr %target.addr, align 4
  %call75 = call i32 @sqlite3VdbeAddOp2(ptr noundef %89, i32 noundef 70, i32 noundef %call74, i32 noundef %91)
  %92 = load i32, ptr %target.addr, align 4
  store i32 %92, ptr %retval, align 4
  br label %return

sw.bb76:                                          ; preds = %if.end4
  %93 = load ptr, ptr %v, align 8
  %94 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %94, i32 0, i32 3
  %95 = load ptr, ptr %u, align 8
  %96 = load i32, ptr %target.addr, align 4
  call void @codeReal(ptr noundef %93, ptr noundef %95, i32 noundef 0, i32 noundef %96)
  %97 = load i32, ptr %target.addr, align 4
  store i32 %97, ptr %retval, align 4
  br label %return

sw.bb77:                                          ; preds = %if.end4
  %98 = load ptr, ptr %v, align 8
  %99 = load i32, ptr %target.addr, align 4
  %100 = load ptr, ptr %pExpr.addr, align 8
  %u78 = getelementptr inbounds nuw %struct.Expr, ptr %100, i32 0, i32 3
  %101 = load ptr, ptr %u78, align 8
  %call79 = call i32 @sqlite3VdbeLoadString(ptr noundef %98, i32 noundef %99, ptr noundef %101)
  %102 = load i32, ptr %target.addr, align 4
  store i32 %102, ptr %retval, align 4
  br label %return

sw.bb80:                                          ; preds = %if.end4
  %103 = load ptr, ptr %v, align 8
  %104 = load i32, ptr %target.addr, align 4
  %call81 = call i32 @sqlite3VdbeAddOp2(ptr noundef %103, i32 noundef 73, i32 noundef 0, i32 noundef %104)
  %105 = load i32, ptr %target.addr, align 4
  store i32 %105, ptr %retval, align 4
  br label %return

sw.bb82:                                          ; preds = %if.end4
  %106 = load ptr, ptr %pExpr.addr, align 8
  %u83 = getelementptr inbounds nuw %struct.Expr, ptr %106, i32 0, i32 3
  %107 = load ptr, ptr %u83, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %107, i64 2
  store ptr %arrayidx84, ptr %z, align 8
  %108 = load ptr, ptr %z, align 8
  %call85 = call i32 @sqlite3Strlen30(ptr noundef %108)
  %sub86 = sub nsw i32 %call85, 1
  store i32 %sub86, ptr %n, align 4
  %109 = load ptr, ptr %v, align 8
  %call87 = call ptr @sqlite3VdbeDb(ptr noundef %109)
  %110 = load ptr, ptr %z, align 8
  %111 = load i32, ptr %n, align 4
  %call88 = call ptr @sqlite3HexToBlob(ptr noundef %call87, ptr noundef %110, i32 noundef %111)
  store ptr %call88, ptr %zBlob, align 8
  %112 = load ptr, ptr %v, align 8
  %113 = load i32, ptr %n, align 4
  %div = sdiv i32 %113, 2
  %114 = load i32, ptr %target.addr, align 4
  %115 = load ptr, ptr %zBlob, align 8
  %call89 = call i32 @sqlite3VdbeAddOp4(ptr noundef %112, i32 noundef 75, i32 noundef %div, i32 noundef %114, i32 noundef 0, ptr noundef %115, i32 noundef -7)
  %116 = load i32, ptr %target.addr, align 4
  store i32 %116, ptr %retval, align 4
  br label %return

sw.bb90:                                          ; preds = %if.end4
  %117 = load ptr, ptr %v, align 8
  %118 = load ptr, ptr %pExpr.addr, align 8
  %iColumn91 = getelementptr inbounds nuw %struct.Expr, ptr %118, i32 0, i32 9
  %119 = load i16, ptr %iColumn91, align 8
  %conv92 = sext i16 %119 to i32
  %120 = load i32, ptr %target.addr, align 4
  %call93 = call i32 @sqlite3VdbeAddOp2(ptr noundef %117, i32 noundef 76, i32 noundef %conv92, i32 noundef %120)
  %121 = load ptr, ptr %pExpr.addr, align 8
  %u94 = getelementptr inbounds nuw %struct.Expr, ptr %121, i32 0, i32 3
  %122 = load ptr, ptr %u94, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %122, i64 1
  %123 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %123 to i32
  %cmp97 = icmp ne i32 %conv96, 0
  br i1 %cmp97, label %if.then99, label %if.end106

if.then99:                                        ; preds = %sw.bb90
  %124 = load ptr, ptr %pParse.addr, align 8
  %pVList = getelementptr inbounds nuw %struct.Parse, ptr %124, i32 0, i32 55
  %125 = load ptr, ptr %pVList, align 8
  %126 = load ptr, ptr %pExpr.addr, align 8
  %iColumn101 = getelementptr inbounds nuw %struct.Expr, ptr %126, i32 0, i32 9
  %127 = load i16, ptr %iColumn101, align 8
  %conv102 = sext i16 %127 to i32
  %call103 = call ptr @sqlite3VListNumToName(ptr noundef %125, i32 noundef %conv102)
  store ptr %call103, ptr %z100, align 8
  %128 = load ptr, ptr %pParse.addr, align 8
  %pVList104 = getelementptr inbounds nuw %struct.Parse, ptr %128, i32 0, i32 55
  %129 = load ptr, ptr %pVList104, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %129, i64 0
  store i32 0, ptr %arrayidx105, align 4
  %130 = load ptr, ptr %v, align 8
  %131 = load ptr, ptr %z100, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %130, ptr noundef %131, i32 noundef -1)
  br label %if.end106

if.end106:                                        ; preds = %if.then99, %sw.bb90
  %132 = load i32, ptr %target.addr, align 4
  store i32 %132, ptr %retval, align 4
  br label %return

sw.bb107:                                         ; preds = %if.end4
  %133 = load ptr, ptr %pExpr.addr, align 8
  %iTable108 = getelementptr inbounds nuw %struct.Expr, ptr %133, i32 0, i32 8
  %134 = load i32, ptr %iTable108, align 4
  store i32 %134, ptr %retval, align 4
  br label %return

sw.bb109:                                         ; preds = %if.end4
  %135 = load ptr, ptr %pParse.addr, align 8
  %136 = load ptr, ptr %pExpr.addr, align 8
  %pLeft110 = getelementptr inbounds nuw %struct.Expr, ptr %136, i32 0, i32 4
  %137 = load ptr, ptr %pLeft110, align 8
  %138 = load i32, ptr %target.addr, align 4
  %call111 = call i32 @sqlite3ExprCodeTarget(ptr noundef %135, ptr noundef %137, i32 noundef %138)
  store i32 %call111, ptr %inReg, align 4
  %139 = load i32, ptr %inReg, align 4
  %140 = load i32, ptr %target.addr, align 4
  %cmp112 = icmp ne i32 %139, %140
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %sw.bb109
  %141 = load ptr, ptr %v, align 8
  %142 = load i32, ptr %inReg, align 4
  %143 = load i32, ptr %target.addr, align 4
  %call115 = call i32 @sqlite3VdbeAddOp2(ptr noundef %141, i32 noundef 79, i32 noundef %142, i32 noundef %143)
  %144 = load i32, ptr %target.addr, align 4
  store i32 %144, ptr %inReg, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %sw.bb109
  %145 = load ptr, ptr %v, align 8
  %146 = load i32, ptr %target.addr, align 4
  %147 = load ptr, ptr %pExpr.addr, align 8
  %u117 = getelementptr inbounds nuw %struct.Expr, ptr %147, i32 0, i32 3
  %148 = load ptr, ptr %u117, align 8
  %call118 = call signext i8 @sqlite3AffinityType(ptr noundef %148, ptr noundef null)
  %conv119 = sext i8 %call118 to i32
  %call120 = call i32 @sqlite3VdbeAddOp2(ptr noundef %145, i32 noundef 85, i32 noundef %146, i32 noundef %conv119)
  %149 = load i32, ptr %inReg, align 4
  store i32 %149, ptr %retval, align 4
  br label %return

sw.bb121:                                         ; preds = %if.end4, %if.end4
  %150 = load i32, ptr %op, align 4
  %cmp122 = icmp eq i32 %150, 45
  %151 = zext i1 %cmp122 to i64
  %cond = select i1 %cmp122, i32 53, i32 52
  store i32 %cond, ptr %op, align 4
  store i32 128, ptr %p5, align 4
  br label %sw.bb124

sw.bb124:                                         ; preds = %sw.bb121, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4
  %152 = load ptr, ptr %pExpr.addr, align 8
  %pLeft126 = getelementptr inbounds nuw %struct.Expr, ptr %152, i32 0, i32 4
  %153 = load ptr, ptr %pLeft126, align 8
  store ptr %153, ptr %pLeft125, align 8
  %154 = load ptr, ptr %pLeft125, align 8
  %call127 = call i32 @sqlite3ExprIsVector(ptr noundef %154)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.else132

if.then129:                                       ; preds = %sw.bb124
  %155 = load ptr, ptr %pParse.addr, align 8
  %156 = load ptr, ptr %pExpr.addr, align 8
  %157 = load i32, ptr %target.addr, align 4
  %158 = load i32, ptr %op, align 4
  %conv130 = trunc i32 %158 to i8
  %159 = load i32, ptr %p5, align 4
  %conv131 = trunc i32 %159 to i8
  call void @codeVectorCompare(ptr noundef %155, ptr noundef %156, i32 noundef %157, i8 noundef zeroext %conv130, i8 noundef zeroext %conv131)
  br label %if.end137

if.else132:                                       ; preds = %sw.bb124
  %160 = load ptr, ptr %pParse.addr, align 8
  %161 = load ptr, ptr %pLeft125, align 8
  %call133 = call i32 @sqlite3ExprCodeTemp(ptr noundef %160, ptr noundef %161, ptr noundef %regFree1)
  store i32 %call133, ptr %r1, align 4
  %162 = load ptr, ptr %pParse.addr, align 8
  %163 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %163, i32 0, i32 5
  %164 = load ptr, ptr %pRight, align 8
  %call134 = call i32 @sqlite3ExprCodeTemp(ptr noundef %162, ptr noundef %164, ptr noundef %regFree2)
  store i32 %call134, ptr %r2, align 4
  %165 = load ptr, ptr %pParse.addr, align 8
  %166 = load ptr, ptr %pLeft125, align 8
  %167 = load ptr, ptr %pExpr.addr, align 8
  %pRight135 = getelementptr inbounds nuw %struct.Expr, ptr %167, i32 0, i32 5
  %168 = load ptr, ptr %pRight135, align 8
  %169 = load i32, ptr %op, align 4
  %170 = load i32, ptr %r1, align 4
  %171 = load i32, ptr %r2, align 4
  %172 = load i32, ptr %inReg, align 4
  %173 = load i32, ptr %p5, align 4
  %or = or i32 32, %173
  %call136 = call i32 @codeCompare(ptr noundef %165, ptr noundef %166, ptr noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %or)
  br label %if.end137

if.end137:                                        ; preds = %if.else132, %if.then129
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4
  %174 = load ptr, ptr %pParse.addr, align 8
  %175 = load ptr, ptr %pExpr.addr, align 8
  %pLeft139 = getelementptr inbounds nuw %struct.Expr, ptr %175, i32 0, i32 4
  %176 = load ptr, ptr %pLeft139, align 8
  %call140 = call i32 @sqlite3ExprCodeTemp(ptr noundef %174, ptr noundef %176, ptr noundef %regFree1)
  store i32 %call140, ptr %r1, align 4
  %177 = load ptr, ptr %pParse.addr, align 8
  %178 = load ptr, ptr %pExpr.addr, align 8
  %pRight141 = getelementptr inbounds nuw %struct.Expr, ptr %178, i32 0, i32 5
  %179 = load ptr, ptr %pRight141, align 8
  %call142 = call i32 @sqlite3ExprCodeTemp(ptr noundef %177, ptr noundef %179, ptr noundef %regFree2)
  store i32 %call142, ptr %r2, align 4
  %180 = load ptr, ptr %v, align 8
  %181 = load i32, ptr %op, align 4
  %182 = load i32, ptr %r2, align 4
  %183 = load i32, ptr %r1, align 4
  %184 = load i32, ptr %target.addr, align 4
  %call143 = call i32 @sqlite3VdbeAddOp3(ptr noundef %180, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %184)
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end4
  %185 = load ptr, ptr %pExpr.addr, align 8
  %pLeft146 = getelementptr inbounds nuw %struct.Expr, ptr %185, i32 0, i32 4
  %186 = load ptr, ptr %pLeft146, align 8
  store ptr %186, ptr %pLeft145, align 8
  %187 = load ptr, ptr %pLeft145, align 8
  %op147 = getelementptr inbounds nuw %struct.Expr, ptr %187, i32 0, i32 0
  %188 = load i8, ptr %op147, align 8
  %conv148 = zext i8 %188 to i32
  %cmp149 = icmp eq i32 %conv148, 150
  br i1 %cmp149, label %if.then151, label %if.else152

if.then151:                                       ; preds = %sw.bb144
  %189 = load ptr, ptr %pParse.addr, align 8
  %190 = load ptr, ptr %pLeft145, align 8
  %191 = load i32, ptr %target.addr, align 4
  call void @codeInteger(ptr noundef %189, ptr noundef %190, i32 noundef 1, i32 noundef %191)
  %192 = load i32, ptr %target.addr, align 4
  store i32 %192, ptr %retval, align 4
  br label %return

if.else152:                                       ; preds = %sw.bb144
  %193 = load ptr, ptr %pLeft145, align 8
  %op153 = getelementptr inbounds nuw %struct.Expr, ptr %193, i32 0, i32 0
  %194 = load i8, ptr %op153, align 8
  %conv154 = zext i8 %194 to i32
  %cmp155 = icmp eq i32 %conv154, 148
  br i1 %cmp155, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.else152
  %195 = load ptr, ptr %v, align 8
  %196 = load ptr, ptr %pLeft145, align 8
  %u158 = getelementptr inbounds nuw %struct.Expr, ptr %196, i32 0, i32 3
  %197 = load ptr, ptr %u158, align 8
  %198 = load i32, ptr %target.addr, align 4
  call void @codeReal(ptr noundef %195, ptr noundef %197, i32 noundef 1, i32 noundef %198)
  %199 = load i32, ptr %target.addr, align 4
  store i32 %199, ptr %retval, align 4
  br label %return

if.else159:                                       ; preds = %if.else152
  %op160 = getelementptr inbounds nuw %struct.Expr, ptr %tempX, i32 0, i32 0
  store i8 -106, ptr %op160, align 8
  %flags161 = getelementptr inbounds nuw %struct.Expr, ptr %tempX, i32 0, i32 2
  store i32 17408, ptr %flags161, align 4
  %u162 = getelementptr inbounds nuw %struct.Expr, ptr %tempX, i32 0, i32 3
  store i32 0, ptr %u162, align 8
  %200 = load ptr, ptr %pParse.addr, align 8
  %call163 = call i32 @sqlite3ExprCodeTemp(ptr noundef %200, ptr noundef %tempX, ptr noundef %regFree1)
  store i32 %call163, ptr %r1, align 4
  %201 = load ptr, ptr %pParse.addr, align 8
  %202 = load ptr, ptr %pExpr.addr, align 8
  %pLeft164 = getelementptr inbounds nuw %struct.Expr, ptr %202, i32 0, i32 4
  %203 = load ptr, ptr %pLeft164, align 8
  %call165 = call i32 @sqlite3ExprCodeTemp(ptr noundef %201, ptr noundef %203, ptr noundef %regFree2)
  store i32 %call165, ptr %r2, align 4
  %204 = load ptr, ptr %v, align 8
  %205 = load i32, ptr %r2, align 4
  %206 = load i32, ptr %r1, align 4
  %207 = load i32, ptr %target.addr, align 4
  %call166 = call i32 @sqlite3VdbeAddOp3(ptr noundef %204, i32 noundef 104, i32 noundef %205, i32 noundef %206, i32 noundef %207)
  br label %if.end167

if.end167:                                        ; preds = %if.else159
  br label %if.end168

if.end168:                                        ; preds = %if.end167
  br label %sw.epilog

sw.bb169:                                         ; preds = %if.end4, %if.end4
  %208 = load ptr, ptr %pParse.addr, align 8
  %209 = load ptr, ptr %pExpr.addr, align 8
  %pLeft170 = getelementptr inbounds nuw %struct.Expr, ptr %209, i32 0, i32 4
  %210 = load ptr, ptr %pLeft170, align 8
  %call171 = call i32 @sqlite3ExprCodeTemp(ptr noundef %208, ptr noundef %210, ptr noundef %regFree1)
  store i32 %call171, ptr %r1, align 4
  %211 = load ptr, ptr %v, align 8
  %212 = load i32, ptr %op, align 4
  %213 = load i32, ptr %r1, align 4
  %214 = load i32, ptr %inReg, align 4
  %call172 = call i32 @sqlite3VdbeAddOp2(ptr noundef %211, i32 noundef %212, i32 noundef %213, i32 noundef %214)
  br label %sw.epilog

sw.bb173:                                         ; preds = %if.end4
  %215 = load ptr, ptr %pParse.addr, align 8
  %216 = load ptr, ptr %pExpr.addr, align 8
  %pLeft174 = getelementptr inbounds nuw %struct.Expr, ptr %216, i32 0, i32 4
  %217 = load ptr, ptr %pLeft174, align 8
  %call175 = call i32 @sqlite3ExprCodeTemp(ptr noundef %215, ptr noundef %217, ptr noundef %regFree1)
  store i32 %call175, ptr %r1, align 4
  %218 = load ptr, ptr %pExpr.addr, align 8
  %pRight176 = getelementptr inbounds nuw %struct.Expr, ptr %218, i32 0, i32 5
  %219 = load ptr, ptr %pRight176, align 8
  %call177 = call i32 @sqlite3ExprTruthValue(ptr noundef %219)
  store i32 %call177, ptr %isTrue, align 4
  %220 = load ptr, ptr %pExpr.addr, align 8
  %op2178 = getelementptr inbounds nuw %struct.Expr, ptr %220, i32 0, i32 12
  %221 = load i8, ptr %op2178, align 2
  %conv179 = zext i8 %221 to i32
  %cmp180 = icmp eq i32 %conv179, 45
  %conv181 = zext i1 %cmp180 to i32
  store i32 %conv181, ptr %bNormal, align 4
  %222 = load ptr, ptr %v, align 8
  %223 = load i32, ptr %r1, align 4
  %224 = load i32, ptr %inReg, align 4
  %225 = load i32, ptr %isTrue, align 4
  %tobool182 = icmp ne i32 %225, 0
  %lnot = xor i1 %tobool182, true
  %lnot.ext = zext i1 %lnot to i32
  %226 = load i32, ptr %isTrue, align 4
  %227 = load i32, ptr %bNormal, align 4
  %xor = xor i32 %226, %227
  %call183 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %222, i32 noundef 88, i32 noundef %223, i32 noundef %224, i32 noundef %lnot.ext, i32 noundef %xor)
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end4, %if.end4
  %228 = load ptr, ptr %v, align 8
  %229 = load i32, ptr %target.addr, align 4
  %call185 = call i32 @sqlite3VdbeAddOp2(ptr noundef %228, i32 noundef 70, i32 noundef 1, i32 noundef %229)
  %230 = load ptr, ptr %pParse.addr, align 8
  %231 = load ptr, ptr %pExpr.addr, align 8
  %pLeft186 = getelementptr inbounds nuw %struct.Expr, ptr %231, i32 0, i32 4
  %232 = load ptr, ptr %pLeft186, align 8
  %call187 = call i32 @sqlite3ExprCodeTemp(ptr noundef %230, ptr noundef %232, ptr noundef %regFree1)
  store i32 %call187, ptr %r1, align 4
  %233 = load ptr, ptr %v, align 8
  %234 = load i32, ptr %op, align 4
  %235 = load i32, ptr %r1, align 4
  %call188 = call i32 @sqlite3VdbeAddOp1(ptr noundef %233, i32 noundef %234, i32 noundef %235)
  store i32 %call188, ptr %addr, align 4
  %236 = load ptr, ptr %v, align 8
  %237 = load i32, ptr %target.addr, align 4
  %call189 = call i32 @sqlite3VdbeAddOp2(ptr noundef %236, i32 noundef 70, i32 noundef 0, i32 noundef %237)
  %238 = load ptr, ptr %v, align 8
  %239 = load i32, ptr %addr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %238, i32 noundef %239)
  br label %sw.epilog

sw.bb190:                                         ; preds = %if.end4
  %240 = load ptr, ptr %pExpr.addr, align 8
  %pAggInfo191 = getelementptr inbounds nuw %struct.Expr, ptr %240, i32 0, i32 13
  %241 = load ptr, ptr %pAggInfo191, align 8
  store ptr %241, ptr %pInfo, align 8
  %242 = load ptr, ptr %pInfo, align 8
  %cmp192 = icmp eq ptr %242, null
  br i1 %cmp192, label %if.then194, label %if.else196

if.then194:                                       ; preds = %sw.bb190
  %243 = load ptr, ptr %pParse.addr, align 8
  %244 = load ptr, ptr %pExpr.addr, align 8
  %u195 = getelementptr inbounds nuw %struct.Expr, ptr %244, i32 0, i32 3
  %245 = load ptr, ptr %u195, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %243, ptr noundef @.str.563, ptr noundef %245)
  br label %if.end201

if.else196:                                       ; preds = %sw.bb190
  %246 = load ptr, ptr %pInfo, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %246, i32 0, i32 11
  %247 = load ptr, ptr %aFunc, align 8
  %248 = load ptr, ptr %pExpr.addr, align 8
  %iAgg197 = getelementptr inbounds nuw %struct.Expr, ptr %248, i32 0, i32 10
  %249 = load i16, ptr %iAgg197, align 2
  %idxprom198 = sext i16 %249 to i64
  %arrayidx199 = getelementptr inbounds %struct.AggInfo_func, ptr %247, i64 %idxprom198
  %iMem200 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx199, i32 0, i32 2
  %250 = load i32, ptr %iMem200, align 8
  store i32 %250, ptr %retval, align 4
  br label %return

if.end201:                                        ; preds = %if.then194
  br label %sw.epilog

sw.bb202:                                         ; preds = %if.end4
  store i32 0, ptr %constMask, align 4
  %251 = load ptr, ptr %pParse.addr, align 8
  %db203 = getelementptr inbounds nuw %struct.Parse, ptr %251, i32 0, i32 0
  %252 = load ptr, ptr %db203, align 8
  store ptr %252, ptr %db, align 8
  %253 = load ptr, ptr %db, align 8
  %enc204 = getelementptr inbounds nuw %struct.sqlite3, ptr %253, i32 0, i32 16
  %254 = load i8, ptr %enc204, align 2
  store i8 %254, ptr %enc, align 1
  store ptr null, ptr %pColl, align 8
  %255 = load ptr, ptr %pExpr.addr, align 8
  %flags205 = getelementptr inbounds nuw %struct.Expr, ptr %255, i32 0, i32 2
  %256 = load i32, ptr %flags205, align 4
  %and206 = and i32 %256, 16777216
  %cmp207 = icmp ne i32 %and206, 0
  br i1 %cmp207, label %if.then209, label %if.end211

if.then209:                                       ; preds = %sw.bb202
  %257 = load ptr, ptr %pExpr.addr, align 8
  %y210 = getelementptr inbounds nuw %struct.Expr, ptr %257, i32 0, i32 14
  %258 = load ptr, ptr %y210, align 8
  %regResult = getelementptr inbounds nuw %struct.Window, ptr %258, i32 0, i32 17
  %259 = load i32, ptr %regResult, align 8
  store i32 %259, ptr %retval, align 4
  br label %return

if.end211:                                        ; preds = %sw.bb202
  %260 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor = getelementptr inbounds nuw %struct.Parse, ptr %260, i32 0, i32 11
  %261 = load i8, ptr %okConstFactor, align 1
  %conv212 = zext i8 %261 to i32
  %tobool213 = icmp ne i32 %conv212, 0
  br i1 %tobool213, label %land.lhs.true214, label %if.end219

land.lhs.true214:                                 ; preds = %if.end211
  %262 = load ptr, ptr %pExpr.addr, align 8
  %call215 = call i32 @sqlite3ExprIsConstantNotJoin(ptr noundef %262)
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then217, label %if.end219

if.then217:                                       ; preds = %land.lhs.true214
  %263 = load ptr, ptr %pParse.addr, align 8
  %264 = load ptr, ptr %pExpr.addr, align 8
  %call218 = call i32 @sqlite3ExprCodeAtInit(ptr noundef %263, ptr noundef %264, i32 noundef -1)
  store i32 %call218, ptr %retval, align 4
  br label %return

if.end219:                                        ; preds = %land.lhs.true214, %if.end211
  %265 = load ptr, ptr %pExpr.addr, align 8
  %flags220 = getelementptr inbounds nuw %struct.Expr, ptr %265, i32 0, i32 2
  %266 = load i32, ptr %flags220, align 4
  %and221 = and i32 %266, 16384
  %cmp222 = icmp ne i32 %and221, 0
  br i1 %cmp222, label %if.then224, label %if.else225

if.then224:                                       ; preds = %if.end219
  store ptr null, ptr %pFarg, align 8
  br label %if.end226

if.else225:                                       ; preds = %if.end219
  %267 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %267, i32 0, i32 6
  %268 = load ptr, ptr %x, align 8
  store ptr %268, ptr %pFarg, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.else225, %if.then224
  %269 = load ptr, ptr %pFarg, align 8
  %tobool227 = icmp ne ptr %269, null
  br i1 %tobool227, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end226
  %270 = load ptr, ptr %pFarg, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %270, i32 0, i32 0
  %271 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end226
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond228 = phi i32 [ %271, %cond.true ], [ 0, %cond.false ]
  store i32 %cond228, ptr %nFarg, align 4
  %272 = load ptr, ptr %pExpr.addr, align 8
  %u229 = getelementptr inbounds nuw %struct.Expr, ptr %272, i32 0, i32 3
  %273 = load ptr, ptr %u229, align 8
  store ptr %273, ptr %zId, align 8
  %274 = load ptr, ptr %db, align 8
  %275 = load ptr, ptr %zId, align 8
  %276 = load i32, ptr %nFarg, align 4
  %277 = load i8, ptr %enc, align 1
  %call230 = call ptr @sqlite3FindFunction(ptr noundef %274, ptr noundef %275, i32 noundef %276, i8 noundef zeroext %277, i8 noundef zeroext 0)
  store ptr %call230, ptr %pDef, align 8
  %278 = load ptr, ptr %pDef, align 8
  %cmp231 = icmp eq ptr %278, null
  br i1 %cmp231, label %if.then235, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %279 = load ptr, ptr %pDef, align 8
  %xFinalize = getelementptr inbounds nuw %struct.FuncDef, ptr %279, i32 0, i32 5
  %280 = load ptr, ptr %xFinalize, align 8
  %cmp233 = icmp ne ptr %280, null
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %lor.lhs.false, %cond.end
  %281 = load ptr, ptr %pParse.addr, align 8
  %282 = load ptr, ptr %zId, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %281, ptr noundef @.str.564, ptr noundef %282)
  br label %sw.epilog

if.end236:                                        ; preds = %lor.lhs.false
  %283 = load ptr, ptr %pDef, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %283, i32 0, i32 1
  %284 = load i32, ptr %funcFlags, align 4
  %and237 = and i32 %284, 512
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %if.then239, label %if.end250

if.then239:                                       ; preds = %if.end236
  %285 = load ptr, ptr %pParse.addr, align 8
  %call240 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %285)
  store i32 %call240, ptr %endCoalesce, align 4
  %286 = load ptr, ptr %pParse.addr, align 8
  %287 = load ptr, ptr %pFarg, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %287, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr242 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx241, i32 0, i32 0
  %288 = load ptr, ptr %pExpr242, align 8
  %289 = load i32, ptr %target.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %286, ptr noundef %288, i32 noundef %289)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then239
  %290 = load i32, ptr %i, align 4
  %291 = load i32, ptr %nFarg, align 4
  %cmp243 = icmp slt i32 %290, %291
  br i1 %cmp243, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %292 = load ptr, ptr %v, align 8
  %293 = load i32, ptr %target.addr, align 4
  %294 = load i32, ptr %endCoalesce, align 4
  %call245 = call i32 @sqlite3VdbeAddOp2(ptr noundef %292, i32 noundef 51, i32 noundef %293, i32 noundef %294)
  %295 = load ptr, ptr %pParse.addr, align 8
  %296 = load ptr, ptr %pFarg, align 8
  %a246 = getelementptr inbounds nuw %struct.ExprList, ptr %296, i32 0, i32 1
  %297 = load i32, ptr %i, align 4
  %idxprom247 = sext i32 %297 to i64
  %arrayidx248 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a246, i64 0, i64 %idxprom247
  %pExpr249 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx248, i32 0, i32 0
  %298 = load ptr, ptr %pExpr249, align 8
  %299 = load i32, ptr %target.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %295, ptr noundef %298, i32 noundef %299)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %300 = load i32, ptr %i, align 4
  %inc = add nsw i32 %300, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %301 = load ptr, ptr %v, align 8
  %302 = load i32, ptr %endCoalesce, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %301, i32 noundef %302)
  br label %sw.epilog

if.end250:                                        ; preds = %if.end236
  %303 = load ptr, ptr %pDef, align 8
  %funcFlags251 = getelementptr inbounds nuw %struct.FuncDef, ptr %303, i32 0, i32 1
  %304 = load i32, ptr %funcFlags251, align 4
  %and252 = and i32 %304, 1024
  %tobool253 = icmp ne i32 %and252, 0
  br i1 %tobool253, label %if.then254, label %if.end259

if.then254:                                       ; preds = %if.end250
  %305 = load ptr, ptr %pParse.addr, align 8
  %306 = load ptr, ptr %pFarg, align 8
  %a255 = getelementptr inbounds nuw %struct.ExprList, ptr %306, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a255, i64 0, i64 0
  %pExpr257 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx256, i32 0, i32 0
  %307 = load ptr, ptr %pExpr257, align 8
  %308 = load i32, ptr %target.addr, align 4
  %call258 = call i32 @sqlite3ExprCodeTarget(ptr noundef %305, ptr noundef %307, i32 noundef %308)
  store i32 %call258, ptr %retval, align 4
  br label %return

if.end259:                                        ; preds = %if.end250
  store i32 0, ptr %i, align 4
  br label %for.cond260

for.cond260:                                      ; preds = %for.inc289, %if.end259
  %309 = load i32, ptr %i, align 4
  %310 = load i32, ptr %nFarg, align 4
  %cmp261 = icmp slt i32 %309, %310
  br i1 %cmp261, label %for.body263, label %for.end291

for.body263:                                      ; preds = %for.cond260
  %311 = load i32, ptr %i, align 4
  %cmp264 = icmp slt i32 %311, 32
  br i1 %cmp264, label %land.lhs.true266, label %if.end275

land.lhs.true266:                                 ; preds = %for.body263
  %312 = load ptr, ptr %pFarg, align 8
  %a267 = getelementptr inbounds nuw %struct.ExprList, ptr %312, i32 0, i32 1
  %313 = load i32, ptr %i, align 4
  %idxprom268 = sext i32 %313 to i64
  %arrayidx269 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a267, i64 0, i64 %idxprom268
  %pExpr270 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx269, i32 0, i32 0
  %314 = load ptr, ptr %pExpr270, align 8
  %call271 = call i32 @sqlite3ExprIsConstant(ptr noundef %314)
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %if.then273, label %if.end275

if.then273:                                       ; preds = %land.lhs.true266
  %315 = load i32, ptr %i, align 4
  %shl = shl i32 1, %315
  %316 = load i32, ptr %constMask, align 4
  %or274 = or i32 %316, %shl
  store i32 %or274, ptr %constMask, align 4
  br label %if.end275

if.end275:                                        ; preds = %if.then273, %land.lhs.true266, %for.body263
  %317 = load ptr, ptr %pDef, align 8
  %funcFlags276 = getelementptr inbounds nuw %struct.FuncDef, ptr %317, i32 0, i32 1
  %318 = load i32, ptr %funcFlags276, align 4
  %and277 = and i32 %318, 32
  %cmp278 = icmp ne i32 %and277, 0
  br i1 %cmp278, label %land.lhs.true280, label %if.end288

land.lhs.true280:                                 ; preds = %if.end275
  %319 = load ptr, ptr %pColl, align 8
  %tobool281 = icmp ne ptr %319, null
  br i1 %tobool281, label %if.end288, label %if.then282

if.then282:                                       ; preds = %land.lhs.true280
  %320 = load ptr, ptr %pParse.addr, align 8
  %321 = load ptr, ptr %pFarg, align 8
  %a283 = getelementptr inbounds nuw %struct.ExprList, ptr %321, i32 0, i32 1
  %322 = load i32, ptr %i, align 4
  %idxprom284 = sext i32 %322 to i64
  %arrayidx285 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a283, i64 0, i64 %idxprom284
  %pExpr286 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx285, i32 0, i32 0
  %323 = load ptr, ptr %pExpr286, align 8
  %call287 = call ptr @sqlite3ExprCollSeq(ptr noundef %320, ptr noundef %323)
  store ptr %call287, ptr %pColl, align 8
  br label %if.end288

if.end288:                                        ; preds = %if.then282, %land.lhs.true280, %if.end275
  br label %for.inc289

for.inc289:                                       ; preds = %if.end288
  %324 = load i32, ptr %i, align 4
  %inc290 = add nsw i32 %324, 1
  store i32 %inc290, ptr %i, align 4
  br label %for.cond260, !llvm.loop !8

for.end291:                                       ; preds = %for.cond260
  %325 = load ptr, ptr %pFarg, align 8
  %tobool292 = icmp ne ptr %325, null
  br i1 %tobool292, label %if.then293, label %if.else328

if.then293:                                       ; preds = %for.end291
  %326 = load i32, ptr %constMask, align 4
  %tobool294 = icmp ne i32 %326, 0
  br i1 %tobool294, label %if.then295, label %if.else298

if.then295:                                       ; preds = %if.then293
  %327 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %327, i32 0, i32 18
  %328 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %328, 1
  store i32 %add, ptr %r1, align 4
  %329 = load i32, ptr %nFarg, align 4
  %330 = load ptr, ptr %pParse.addr, align 8
  %nMem296 = getelementptr inbounds nuw %struct.Parse, ptr %330, i32 0, i32 18
  %331 = load i32, ptr %nMem296, align 8
  %add297 = add nsw i32 %331, %329
  store i32 %add297, ptr %nMem296, align 8
  br label %if.end300

if.else298:                                       ; preds = %if.then293
  %332 = load ptr, ptr %pParse.addr, align 8
  %333 = load i32, ptr %nFarg, align 4
  %call299 = call i32 @sqlite3GetTempRange(ptr noundef %332, i32 noundef %333)
  store i32 %call299, ptr %r1, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.else298, %if.then295
  %334 = load ptr, ptr %pDef, align 8
  %funcFlags301 = getelementptr inbounds nuw %struct.FuncDef, ptr %334, i32 0, i32 1
  %335 = load i32, ptr %funcFlags301, align 4
  %and302 = and i32 %335, 192
  %cmp303 = icmp ne i32 %and302, 0
  br i1 %cmp303, label %if.then305, label %if.end326

if.then305:                                       ; preds = %if.end300
  %336 = load ptr, ptr %pFarg, align 8
  %a306 = getelementptr inbounds nuw %struct.ExprList, ptr %336, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a306, i64 0, i64 0
  %pExpr308 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx307, i32 0, i32 0
  %337 = load ptr, ptr %pExpr308, align 8
  %op309 = getelementptr inbounds nuw %struct.Expr, ptr %337, i32 0, i32 0
  %338 = load i8, ptr %op309, align 8
  store i8 %338, ptr %exprOp, align 1
  %339 = load i8, ptr %exprOp, align 1
  %conv310 = zext i8 %339 to i32
  %cmp311 = icmp eq i32 %conv310, 162
  br i1 %cmp311, label %if.then317, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %if.then305
  %340 = load i8, ptr %exprOp, align 1
  %conv314 = zext i8 %340 to i32
  %cmp315 = icmp eq i32 %conv314, 164
  br i1 %cmp315, label %if.then317, label %if.end325

if.then317:                                       ; preds = %lor.lhs.false313, %if.then305
  %341 = load ptr, ptr %pDef, align 8
  %funcFlags318 = getelementptr inbounds nuw %struct.FuncDef, ptr %341, i32 0, i32 1
  %342 = load i32, ptr %funcFlags318, align 4
  %and319 = and i32 %342, 192
  %conv320 = trunc i32 %and319 to i8
  %343 = load ptr, ptr %pFarg, align 8
  %a321 = getelementptr inbounds nuw %struct.ExprList, ptr %343, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a321, i64 0, i64 0
  %pExpr323 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx322, i32 0, i32 0
  %344 = load ptr, ptr %pExpr323, align 8
  %op2324 = getelementptr inbounds nuw %struct.Expr, ptr %344, i32 0, i32 12
  store i8 %conv320, ptr %op2324, align 2
  br label %if.end325

if.end325:                                        ; preds = %if.then317, %lor.lhs.false313
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.end300
  %345 = load ptr, ptr %pParse.addr, align 8
  %346 = load ptr, ptr %pFarg, align 8
  %347 = load i32, ptr %r1, align 4
  %call327 = call i32 @sqlite3ExprCodeExprList(ptr noundef %345, ptr noundef %346, i32 noundef %347, i32 noundef 0, i8 noundef zeroext 3)
  br label %if.end329

if.else328:                                       ; preds = %for.end291
  store i32 0, ptr %r1, align 4
  br label %if.end329

if.end329:                                        ; preds = %if.else328, %if.end326
  %348 = load i32, ptr %nFarg, align 4
  %cmp330 = icmp sge i32 %348, 2
  br i1 %cmp330, label %land.lhs.true332, label %if.else342

land.lhs.true332:                                 ; preds = %if.end329
  %349 = load ptr, ptr %pExpr.addr, align 8
  %flags333 = getelementptr inbounds nuw %struct.Expr, ptr %349, i32 0, i32 2
  %350 = load i32, ptr %flags333, align 4
  %and334 = and i32 %350, 128
  %cmp335 = icmp ne i32 %and334, 0
  br i1 %cmp335, label %if.then337, label %if.else342

if.then337:                                       ; preds = %land.lhs.true332
  %351 = load ptr, ptr %db, align 8
  %352 = load ptr, ptr %pDef, align 8
  %353 = load i32, ptr %nFarg, align 4
  %354 = load ptr, ptr %pFarg, align 8
  %a338 = getelementptr inbounds nuw %struct.ExprList, ptr %354, i32 0, i32 1
  %arrayidx339 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a338, i64 0, i64 1
  %pExpr340 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx339, i32 0, i32 0
  %355 = load ptr, ptr %pExpr340, align 8
  %call341 = call ptr @sqlite3VtabOverloadFunction(ptr noundef %351, ptr noundef %352, i32 noundef %353, ptr noundef %355)
  store ptr %call341, ptr %pDef, align 8
  br label %if.end351

if.else342:                                       ; preds = %land.lhs.true332, %if.end329
  %356 = load i32, ptr %nFarg, align 4
  %cmp343 = icmp sgt i32 %356, 0
  br i1 %cmp343, label %if.then345, label %if.end350

if.then345:                                       ; preds = %if.else342
  %357 = load ptr, ptr %db, align 8
  %358 = load ptr, ptr %pDef, align 8
  %359 = load i32, ptr %nFarg, align 4
  %360 = load ptr, ptr %pFarg, align 8
  %a346 = getelementptr inbounds nuw %struct.ExprList, ptr %360, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a346, i64 0, i64 0
  %pExpr348 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx347, i32 0, i32 0
  %361 = load ptr, ptr %pExpr348, align 8
  %call349 = call ptr @sqlite3VtabOverloadFunction(ptr noundef %357, ptr noundef %358, i32 noundef %359, ptr noundef %361)
  store ptr %call349, ptr %pDef, align 8
  br label %if.end350

if.end350:                                        ; preds = %if.then345, %if.else342
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %if.then337
  %362 = load ptr, ptr %pDef, align 8
  %funcFlags352 = getelementptr inbounds nuw %struct.FuncDef, ptr %362, i32 0, i32 1
  %363 = load i32, ptr %funcFlags352, align 4
  %and353 = and i32 %363, 32
  %tobool354 = icmp ne i32 %and353, 0
  br i1 %tobool354, label %if.then355, label %if.end360

if.then355:                                       ; preds = %if.end351
  %364 = load ptr, ptr %pColl, align 8
  %tobool356 = icmp ne ptr %364, null
  br i1 %tobool356, label %if.end358, label %if.then357

if.then357:                                       ; preds = %if.then355
  %365 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %365, i32 0, i32 2
  %366 = load ptr, ptr %pDfltColl, align 8
  store ptr %366, ptr %pColl, align 8
  br label %if.end358

if.end358:                                        ; preds = %if.then357, %if.then355
  %367 = load ptr, ptr %v, align 8
  %368 = load ptr, ptr %pColl, align 8
  %call359 = call i32 @sqlite3VdbeAddOp4(ptr noundef %367, i32 noundef 82, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %368, i32 noundef -2)
  br label %if.end360

if.end360:                                        ; preds = %if.end358, %if.end351
  %369 = load ptr, ptr %v, align 8
  %370 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab361 = getelementptr inbounds nuw %struct.Parse, ptr %370, i32 0, i32 20
  %371 = load i32, ptr %iSelfTab361, align 8
  %tobool362 = icmp ne i32 %371, 0
  %372 = zext i1 %tobool362 to i64
  %cond363 = select i1 %tobool362, i32 62, i32 63
  %373 = load i32, ptr %constMask, align 4
  %374 = load i32, ptr %r1, align 4
  %375 = load i32, ptr %target.addr, align 4
  %376 = load ptr, ptr %pDef, align 8
  %call364 = call i32 @sqlite3VdbeAddOp4(ptr noundef %369, i32 noundef %cond363, i32 noundef %373, i32 noundef %374, i32 noundef %375, ptr noundef %376, i32 noundef -8)
  %377 = load ptr, ptr %v, align 8
  %378 = load i32, ptr %nFarg, align 4
  %conv365 = trunc i32 %378 to i8
  %conv366 = zext i8 %conv365 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %377, i16 noundef zeroext %conv366)
  %379 = load i32, ptr %nFarg, align 4
  %tobool367 = icmp ne i32 %379, 0
  br i1 %tobool367, label %land.lhs.true368, label %if.end372

land.lhs.true368:                                 ; preds = %if.end360
  %380 = load i32, ptr %constMask, align 4
  %cmp369 = icmp eq i32 %380, 0
  br i1 %cmp369, label %if.then371, label %if.end372

if.then371:                                       ; preds = %land.lhs.true368
  %381 = load ptr, ptr %pParse.addr, align 8
  %382 = load i32, ptr %r1, align 4
  %383 = load i32, ptr %nFarg, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %381, i32 noundef %382, i32 noundef %383)
  br label %if.end372

if.end372:                                        ; preds = %if.then371, %land.lhs.true368, %if.end360
  %384 = load i32, ptr %target.addr, align 4
  store i32 %384, ptr %retval, align 4
  br label %return

sw.bb373:                                         ; preds = %if.end4, %if.end4
  %385 = load i32, ptr %op, align 4
  %cmp374 = icmp eq i32 %385, 134
  br i1 %cmp374, label %land.lhs.true376, label %if.else382

land.lhs.true376:                                 ; preds = %sw.bb373
  %386 = load ptr, ptr %pExpr.addr, align 8
  %x377 = getelementptr inbounds nuw %struct.Expr, ptr %386, i32 0, i32 6
  %387 = load ptr, ptr %x377, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %387, i32 0, i32 0
  %388 = load ptr, ptr %pEList, align 8
  %nExpr378 = getelementptr inbounds nuw %struct.ExprList, ptr %388, i32 0, i32 0
  %389 = load i32, ptr %nExpr378, align 8
  store i32 %389, ptr %nCol, align 4
  %cmp379 = icmp ne i32 %389, 1
  br i1 %cmp379, label %if.then381, label %if.else382

if.then381:                                       ; preds = %land.lhs.true376
  %390 = load ptr, ptr %pParse.addr, align 8
  %391 = load i32, ptr %nCol, align 4
  call void @sqlite3SubselectError(ptr noundef %390, i32 noundef %391, i32 noundef 1)
  br label %if.end384

if.else382:                                       ; preds = %land.lhs.true376, %sw.bb373
  %392 = load ptr, ptr %pParse.addr, align 8
  %393 = load ptr, ptr %pExpr.addr, align 8
  %call383 = call i32 @sqlite3CodeSubselect(ptr noundef %392, ptr noundef %393)
  store i32 %call383, ptr %retval, align 4
  br label %return

if.end384:                                        ; preds = %if.then381
  br label %sw.epilog

sw.bb385:                                         ; preds = %if.end4
  %394 = load ptr, ptr %pExpr.addr, align 8
  %pLeft387 = getelementptr inbounds nuw %struct.Expr, ptr %394, i32 0, i32 4
  %395 = load ptr, ptr %pLeft387, align 8
  %iTable388 = getelementptr inbounds nuw %struct.Expr, ptr %395, i32 0, i32 8
  %396 = load i32, ptr %iTable388, align 4
  %cmp389 = icmp eq i32 %396, 0
  br i1 %cmp389, label %if.then391, label %if.end396

if.then391:                                       ; preds = %sw.bb385
  %397 = load ptr, ptr %pParse.addr, align 8
  %398 = load ptr, ptr %pExpr.addr, align 8
  %pLeft392 = getelementptr inbounds nuw %struct.Expr, ptr %398, i32 0, i32 4
  %399 = load ptr, ptr %pLeft392, align 8
  %call393 = call i32 @sqlite3CodeSubselect(ptr noundef %397, ptr noundef %399)
  %400 = load ptr, ptr %pExpr.addr, align 8
  %pLeft394 = getelementptr inbounds nuw %struct.Expr, ptr %400, i32 0, i32 4
  %401 = load ptr, ptr %pLeft394, align 8
  %iTable395 = getelementptr inbounds nuw %struct.Expr, ptr %401, i32 0, i32 8
  store i32 %call393, ptr %iTable395, align 4
  br label %if.end396

if.end396:                                        ; preds = %if.then391, %sw.bb385
  %402 = load ptr, ptr %pExpr.addr, align 8
  %iTable397 = getelementptr inbounds nuw %struct.Expr, ptr %402, i32 0, i32 8
  %403 = load i32, ptr %iTable397, align 4
  %cmp398 = icmp ne i32 %403, 0
  br i1 %cmp398, label %land.lhs.true400, label %if.end408

land.lhs.true400:                                 ; preds = %if.end396
  %404 = load ptr, ptr %pExpr.addr, align 8
  %iTable401 = getelementptr inbounds nuw %struct.Expr, ptr %404, i32 0, i32 8
  %405 = load i32, ptr %iTable401, align 4
  %406 = load ptr, ptr %pExpr.addr, align 8
  %pLeft402 = getelementptr inbounds nuw %struct.Expr, ptr %406, i32 0, i32 4
  %407 = load ptr, ptr %pLeft402, align 8
  %call403 = call i32 @sqlite3ExprVectorSize(ptr noundef %407)
  store i32 %call403, ptr %n386, align 4
  %cmp404 = icmp ne i32 %405, %call403
  br i1 %cmp404, label %if.then406, label %if.end408

if.then406:                                       ; preds = %land.lhs.true400
  %408 = load ptr, ptr %pParse.addr, align 8
  %409 = load ptr, ptr %pExpr.addr, align 8
  %iTable407 = getelementptr inbounds nuw %struct.Expr, ptr %409, i32 0, i32 8
  %410 = load i32, ptr %iTable407, align 4
  %411 = load i32, ptr %n386, align 4
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %408, ptr noundef @.str.565, i32 noundef %410, i32 noundef %411)
  br label %if.end408

if.end408:                                        ; preds = %if.then406, %land.lhs.true400, %if.end396
  %412 = load ptr, ptr %pExpr.addr, align 8
  %pLeft409 = getelementptr inbounds nuw %struct.Expr, ptr %412, i32 0, i32 4
  %413 = load ptr, ptr %pLeft409, align 8
  %iTable410 = getelementptr inbounds nuw %struct.Expr, ptr %413, i32 0, i32 8
  %414 = load i32, ptr %iTable410, align 4
  %415 = load ptr, ptr %pExpr.addr, align 8
  %iColumn411 = getelementptr inbounds nuw %struct.Expr, ptr %415, i32 0, i32 9
  %416 = load i16, ptr %iColumn411, align 8
  %conv412 = sext i16 %416 to i32
  %add413 = add nsw i32 %414, %conv412
  store i32 %add413, ptr %retval, align 4
  br label %return

sw.bb414:                                         ; preds = %if.end4
  %417 = load ptr, ptr %pParse.addr, align 8
  %call415 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %417)
  store i32 %call415, ptr %destIfFalse, align 4
  %418 = load ptr, ptr %pParse.addr, align 8
  %call416 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %418)
  store i32 %call416, ptr %destIfNull, align 4
  %419 = load ptr, ptr %v, align 8
  %420 = load i32, ptr %target.addr, align 4
  %call417 = call i32 @sqlite3VdbeAddOp2(ptr noundef %419, i32 noundef 73, i32 noundef 0, i32 noundef %420)
  %421 = load ptr, ptr %pParse.addr, align 8
  %422 = load ptr, ptr %pExpr.addr, align 8
  %423 = load i32, ptr %destIfFalse, align 4
  %424 = load i32, ptr %destIfNull, align 4
  call void @sqlite3ExprCodeIN(ptr noundef %421, ptr noundef %422, i32 noundef %423, i32 noundef %424)
  %425 = load ptr, ptr %v, align 8
  %426 = load i32, ptr %target.addr, align 4
  %call418 = call i32 @sqlite3VdbeAddOp2(ptr noundef %425, i32 noundef 70, i32 noundef 1, i32 noundef %426)
  %427 = load ptr, ptr %v, align 8
  %428 = load i32, ptr %destIfFalse, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %427, i32 noundef %428)
  %429 = load ptr, ptr %v, align 8
  %430 = load i32, ptr %target.addr, align 4
  %call419 = call i32 @sqlite3VdbeAddOp2(ptr noundef %429, i32 noundef 83, i32 noundef %430, i32 noundef 0)
  %431 = load ptr, ptr %v, align 8
  %432 = load i32, ptr %destIfNull, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %431, i32 noundef %432)
  %433 = load i32, ptr %target.addr, align 4
  store i32 %433, ptr %retval, align 4
  br label %return

sw.bb420:                                         ; preds = %if.end4
  %434 = load ptr, ptr %pParse.addr, align 8
  %435 = load ptr, ptr %pExpr.addr, align 8
  %436 = load i32, ptr %target.addr, align 4
  call void @exprCodeBetween(ptr noundef %434, ptr noundef %435, i32 noundef %436, ptr noundef null, i32 noundef 0)
  %437 = load i32, ptr %target.addr, align 4
  store i32 %437, ptr %retval, align 4
  br label %return

sw.bb421:                                         ; preds = %if.end4, %if.end4, %if.end4
  %438 = load ptr, ptr %pExpr.addr, align 8
  %pLeft422 = getelementptr inbounds nuw %struct.Expr, ptr %438, i32 0, i32 4
  %439 = load ptr, ptr %pLeft422, align 8
  store ptr %439, ptr %pExpr.addr, align 8
  br label %expr_code_doover

sw.bb423:                                         ; preds = %if.end4
  %440 = load ptr, ptr %pExpr.addr, align 8
  %y424 = getelementptr inbounds nuw %struct.Expr, ptr %440, i32 0, i32 14
  %441 = load ptr, ptr %y424, align 8
  store ptr %441, ptr %pTab, align 8
  %442 = load ptr, ptr %pExpr.addr, align 8
  %iTable425 = getelementptr inbounds nuw %struct.Expr, ptr %442, i32 0, i32 8
  %443 = load i32, ptr %iTable425, align 4
  %444 = load ptr, ptr %pTab, align 8
  %nCol426 = getelementptr inbounds nuw %struct.Table, ptr %444, i32 0, i32 11
  %445 = load i16, ptr %nCol426, align 2
  %conv427 = sext i16 %445 to i32
  %add428 = add nsw i32 %conv427, 1
  %mul429 = mul nsw i32 %443, %add428
  %add430 = add nsw i32 %mul429, 1
  %446 = load ptr, ptr %pExpr.addr, align 8
  %iColumn431 = getelementptr inbounds nuw %struct.Expr, ptr %446, i32 0, i32 9
  %447 = load i16, ptr %iColumn431, align 8
  %conv432 = sext i16 %447 to i32
  %add433 = add nsw i32 %add430, %conv432
  store i32 %add433, ptr %p1, align 4
  %448 = load ptr, ptr %v, align 8
  %449 = load i32, ptr %p1, align 4
  %450 = load i32, ptr %target.addr, align 4
  %call434 = call i32 @sqlite3VdbeAddOp2(ptr noundef %448, i32 noundef 149, i32 noundef %449, i32 noundef %450)
  %451 = load ptr, ptr %pExpr.addr, align 8
  %iColumn435 = getelementptr inbounds nuw %struct.Expr, ptr %451, i32 0, i32 9
  %452 = load i16, ptr %iColumn435, align 8
  %conv436 = sext i16 %452 to i32
  %cmp437 = icmp sge i32 %conv436, 0
  br i1 %cmp437, label %land.lhs.true439, label %if.end450

land.lhs.true439:                                 ; preds = %sw.bb423
  %453 = load ptr, ptr %pTab, align 8
  %aCol440 = getelementptr inbounds nuw %struct.Table, ptr %453, i32 0, i32 1
  %454 = load ptr, ptr %aCol440, align 8
  %455 = load ptr, ptr %pExpr.addr, align 8
  %iColumn441 = getelementptr inbounds nuw %struct.Expr, ptr %455, i32 0, i32 9
  %456 = load i16, ptr %iColumn441, align 8
  %idxprom442 = sext i16 %456 to i64
  %arrayidx443 = getelementptr inbounds %struct.Column, ptr %454, i64 %idxprom442
  %affinity444 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx443, i32 0, i32 4
  %457 = load i8, ptr %affinity444, align 1
  %conv445 = sext i8 %457 to i32
  %cmp446 = icmp eq i32 %conv445, 69
  br i1 %cmp446, label %if.then448, label %if.end450

if.then448:                                       ; preds = %land.lhs.true439
  %458 = load ptr, ptr %v, align 8
  %459 = load i32, ptr %target.addr, align 4
  %call449 = call i32 @sqlite3VdbeAddOp1(ptr noundef %458, i32 noundef 84, i32 noundef %459)
  br label %if.end450

if.end450:                                        ; preds = %if.then448, %land.lhs.true439, %sw.bb423
  br label %sw.epilog

sw.bb451:                                         ; preds = %if.end4
  %460 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %460, ptr noundef @.str.566)
  br label %sw.epilog

sw.bb452:                                         ; preds = %if.end4
  %461 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor454 = getelementptr inbounds nuw %struct.Parse, ptr %461, i32 0, i32 11
  %462 = load i8, ptr %okConstFactor454, align 1
  store i8 %462, ptr %okConstFactor453, align 1
  %463 = load ptr, ptr %v, align 8
  %464 = load ptr, ptr %pExpr.addr, align 8
  %iTable455 = getelementptr inbounds nuw %struct.Expr, ptr %464, i32 0, i32 8
  %465 = load i32, ptr %iTable455, align 4
  %call456 = call i32 @sqlite3VdbeAddOp1(ptr noundef %463, i32 noundef 21, i32 noundef %465)
  store i32 %call456, ptr %addrINR, align 4
  %466 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor457 = getelementptr inbounds nuw %struct.Parse, ptr %466, i32 0, i32 11
  store i8 0, ptr %okConstFactor457, align 1
  %467 = load ptr, ptr %pParse.addr, align 8
  %468 = load ptr, ptr %pExpr.addr, align 8
  %pLeft458 = getelementptr inbounds nuw %struct.Expr, ptr %468, i32 0, i32 4
  %469 = load ptr, ptr %pLeft458, align 8
  %470 = load i32, ptr %target.addr, align 4
  %call459 = call i32 @sqlite3ExprCodeTarget(ptr noundef %467, ptr noundef %469, i32 noundef %470)
  store i32 %call459, ptr %inReg, align 4
  %471 = load i8, ptr %okConstFactor453, align 1
  %472 = load ptr, ptr %pParse.addr, align 8
  %okConstFactor460 = getelementptr inbounds nuw %struct.Parse, ptr %472, i32 0, i32 11
  store i8 %471, ptr %okConstFactor460, align 1
  %473 = load ptr, ptr %v, align 8
  %474 = load i32, ptr %addrINR, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %473, i32 noundef %474)
  %475 = load ptr, ptr %v, align 8
  %476 = load i32, ptr %addrINR, align 4
  %477 = load i32, ptr %inReg, align 4
  call void @sqlite3VdbeChangeP3(ptr noundef %475, i32 noundef %476, i32 noundef %477)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  store ptr null, ptr %pTest, align 8
  store ptr null, ptr %pDel, align 8
  %478 = load ptr, ptr %pParse.addr, align 8
  %db465 = getelementptr inbounds nuw %struct.Parse, ptr %478, i32 0, i32 0
  %479 = load ptr, ptr %db465, align 8
  store ptr %479, ptr %db464, align 8
  %480 = load ptr, ptr %pExpr.addr, align 8
  %x466 = getelementptr inbounds nuw %struct.Expr, ptr %480, i32 0, i32 6
  %481 = load ptr, ptr %x466, align 8
  store ptr %481, ptr %pEList463, align 8
  %482 = load ptr, ptr %pEList463, align 8
  %a467 = getelementptr inbounds nuw %struct.ExprList, ptr %482, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a467, i64 0, i64 0
  store ptr %arraydecay, ptr %aListelem, align 8
  %483 = load ptr, ptr %pEList463, align 8
  %nExpr468 = getelementptr inbounds nuw %struct.ExprList, ptr %483, i32 0, i32 0
  %484 = load i32, ptr %nExpr468, align 8
  store i32 %484, ptr %nExpr461, align 4
  %485 = load ptr, ptr %pParse.addr, align 8
  %call469 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %485)
  store i32 %call469, ptr %endLabel, align 4
  %486 = load ptr, ptr %pExpr.addr, align 8
  %pLeft470 = getelementptr inbounds nuw %struct.Expr, ptr %486, i32 0, i32 4
  %487 = load ptr, ptr %pLeft470, align 8
  store ptr %487, ptr %pX, align 8
  %cmp471 = icmp ne ptr %487, null
  br i1 %cmp471, label %if.then473, label %if.end481

if.then473:                                       ; preds = %sw.default
  %488 = load ptr, ptr %db464, align 8
  %489 = load ptr, ptr %pX, align 8
  %call474 = call ptr @sqlite3ExprDup(ptr noundef %488, ptr noundef %489, i32 noundef 0)
  store ptr %call474, ptr %pDel, align 8
  %490 = load ptr, ptr %db464, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %490, i32 0, i32 19
  %491 = load i8, ptr %mallocFailed, align 1
  %tobool475 = icmp ne i8 %491, 0
  br i1 %tobool475, label %if.then476, label %if.end477

if.then476:                                       ; preds = %if.then473
  %492 = load ptr, ptr %db464, align 8
  %493 = load ptr, ptr %pDel, align 8
  call void @sqlite3ExprDelete(ptr noundef %492, ptr noundef %493)
  br label %sw.epilog

if.end477:                                        ; preds = %if.then473
  %494 = load ptr, ptr %pDel, align 8
  %495 = load ptr, ptr %pParse.addr, align 8
  %496 = load ptr, ptr %pDel, align 8
  %call478 = call i32 @exprCodeVector(ptr noundef %495, ptr noundef %496, ptr noundef %regFree1)
  call void @exprToRegister(ptr noundef %494, i32 noundef %call478)
  call void @llvm.memset.p0.i64(ptr align 8 %opCompare, i8 0, i64 72, i1 false)
  %op479 = getelementptr inbounds nuw %struct.Expr, ptr %opCompare, i32 0, i32 0
  store i8 53, ptr %op479, align 8
  %497 = load ptr, ptr %pDel, align 8
  %pLeft480 = getelementptr inbounds nuw %struct.Expr, ptr %opCompare, i32 0, i32 4
  store ptr %497, ptr %pLeft480, align 8
  store ptr %opCompare, ptr %pTest, align 8
  store i32 0, ptr %regFree1, align 4
  br label %if.end481

if.end481:                                        ; preds = %if.end477, %sw.default
  store i32 0, ptr %i462, align 4
  br label %for.cond482

for.cond482:                                      ; preds = %for.inc504, %if.end481
  %498 = load i32, ptr %i462, align 4
  %499 = load i32, ptr %nExpr461, align 4
  %sub483 = sub nsw i32 %499, 1
  %cmp484 = icmp slt i32 %498, %sub483
  br i1 %cmp484, label %for.body486, label %for.end506

for.body486:                                      ; preds = %for.cond482
  %500 = load ptr, ptr %pX, align 8
  %tobool487 = icmp ne ptr %500, null
  br i1 %tobool487, label %if.then488, label %if.else493

if.then488:                                       ; preds = %for.body486
  %501 = load ptr, ptr %aListelem, align 8
  %502 = load i32, ptr %i462, align 4
  %idxprom489 = sext i32 %502 to i64
  %arrayidx490 = getelementptr inbounds %struct.ExprList_item, ptr %501, i64 %idxprom489
  %pExpr491 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx490, i32 0, i32 0
  %503 = load ptr, ptr %pExpr491, align 8
  %pRight492 = getelementptr inbounds nuw %struct.Expr, ptr %opCompare, i32 0, i32 5
  store ptr %503, ptr %pRight492, align 8
  br label %if.end497

if.else493:                                       ; preds = %for.body486
  %504 = load ptr, ptr %aListelem, align 8
  %505 = load i32, ptr %i462, align 4
  %idxprom494 = sext i32 %505 to i64
  %arrayidx495 = getelementptr inbounds %struct.ExprList_item, ptr %504, i64 %idxprom494
  %pExpr496 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx495, i32 0, i32 0
  %506 = load ptr, ptr %pExpr496, align 8
  store ptr %506, ptr %pTest, align 8
  br label %if.end497

if.end497:                                        ; preds = %if.else493, %if.then488
  %507 = load ptr, ptr %pParse.addr, align 8
  %call498 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %507)
  store i32 %call498, ptr %nextCase, align 4
  %508 = load ptr, ptr %pParse.addr, align 8
  %509 = load ptr, ptr %pTest, align 8
  %510 = load i32, ptr %nextCase, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %508, ptr noundef %509, i32 noundef %510, i32 noundef 16)
  %511 = load ptr, ptr %pParse.addr, align 8
  %512 = load ptr, ptr %aListelem, align 8
  %513 = load i32, ptr %i462, align 4
  %add499 = add nsw i32 %513, 1
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds %struct.ExprList_item, ptr %512, i64 %idxprom500
  %pExpr502 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx501, i32 0, i32 0
  %514 = load ptr, ptr %pExpr502, align 8
  %515 = load i32, ptr %target.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %511, ptr noundef %514, i32 noundef %515)
  %516 = load ptr, ptr %v, align 8
  %517 = load i32, ptr %endLabel, align 4
  %call503 = call i32 @sqlite3VdbeGoto(ptr noundef %516, i32 noundef %517)
  %518 = load ptr, ptr %v, align 8
  %519 = load i32, ptr %nextCase, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %518, i32 noundef %519)
  br label %for.inc504

for.inc504:                                       ; preds = %if.end497
  %520 = load i32, ptr %i462, align 4
  %add505 = add nsw i32 %520, 2
  store i32 %add505, ptr %i462, align 4
  br label %for.cond482, !llvm.loop !9

for.end506:                                       ; preds = %for.cond482
  %521 = load i32, ptr %nExpr461, align 4
  %and507 = and i32 %521, 1
  %cmp508 = icmp ne i32 %and507, 0
  br i1 %cmp508, label %if.then510, label %if.else516

if.then510:                                       ; preds = %for.end506
  %522 = load ptr, ptr %pParse.addr, align 8
  %523 = load ptr, ptr %pEList463, align 8
  %a511 = getelementptr inbounds nuw %struct.ExprList, ptr %523, i32 0, i32 1
  %524 = load i32, ptr %nExpr461, align 4
  %sub512 = sub nsw i32 %524, 1
  %idxprom513 = sext i32 %sub512 to i64
  %arrayidx514 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a511, i64 0, i64 %idxprom513
  %pExpr515 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx514, i32 0, i32 0
  %525 = load ptr, ptr %pExpr515, align 8
  %526 = load i32, ptr %target.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %522, ptr noundef %525, i32 noundef %526)
  br label %if.end518

if.else516:                                       ; preds = %for.end506
  %527 = load ptr, ptr %v, align 8
  %528 = load i32, ptr %target.addr, align 4
  %call517 = call i32 @sqlite3VdbeAddOp2(ptr noundef %527, i32 noundef 73, i32 noundef 0, i32 noundef %528)
  br label %if.end518

if.end518:                                        ; preds = %if.else516, %if.then510
  %529 = load ptr, ptr %db464, align 8
  %530 = load ptr, ptr %pDel, align 8
  call void @sqlite3ExprDelete(ptr noundef %529, ptr noundef %530)
  %531 = load ptr, ptr %v, align 8
  %532 = load i32, ptr %endLabel, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %531, i32 noundef %532)
  br label %sw.epilog

sw.bb519:                                         ; preds = %if.end4
  %533 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %533, i32 0, i32 36
  %534 = load ptr, ptr %pTriggerTab, align 8
  %tobool520 = icmp ne ptr %534, null
  br i1 %tobool520, label %if.end522, label %if.then521

if.then521:                                       ; preds = %sw.bb519
  %535 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %535, ptr noundef @.str.567)
  store i32 0, ptr %retval, align 4
  br label %return

if.end522:                                        ; preds = %sw.bb519
  %536 = load ptr, ptr %pExpr.addr, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %536, i32 0, i32 1
  %537 = load i8, ptr %affExpr, align 1
  %conv523 = sext i8 %537 to i32
  %cmp524 = icmp eq i32 %conv523, 2
  br i1 %cmp524, label %if.then526, label %if.end527

if.then526:                                       ; preds = %if.end522
  %538 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %538)
  br label %if.end527

if.end527:                                        ; preds = %if.then526, %if.end522
  %539 = load ptr, ptr %pExpr.addr, align 8
  %affExpr528 = getelementptr inbounds nuw %struct.Expr, ptr %539, i32 0, i32 1
  %540 = load i8, ptr %affExpr528, align 1
  %conv529 = sext i8 %540 to i32
  %cmp530 = icmp eq i32 %conv529, 4
  br i1 %cmp530, label %if.then532, label %if.else535

if.then532:                                       ; preds = %if.end527
  %541 = load ptr, ptr %v, align 8
  %542 = load ptr, ptr %pExpr.addr, align 8
  %u533 = getelementptr inbounds nuw %struct.Expr, ptr %542, i32 0, i32 3
  %543 = load ptr, ptr %u533, align 8
  %call534 = call i32 @sqlite3VdbeAddOp4(ptr noundef %541, i32 noundef 69, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef %543, i32 noundef 0)
  br label %if.end539

if.else535:                                       ; preds = %if.end527
  %544 = load ptr, ptr %pParse.addr, align 8
  %545 = load ptr, ptr %pExpr.addr, align 8
  %affExpr536 = getelementptr inbounds nuw %struct.Expr, ptr %545, i32 0, i32 1
  %546 = load i8, ptr %affExpr536, align 1
  %conv537 = sext i8 %546 to i32
  %547 = load ptr, ptr %pExpr.addr, align 8
  %u538 = getelementptr inbounds nuw %struct.Expr, ptr %547, i32 0, i32 3
  %548 = load ptr, ptr %u538, align 8
  call void @sqlite3HaltConstraint(ptr noundef %544, i32 noundef 1811, i32 noundef %conv537, ptr noundef %548, i8 noundef signext 0, i8 noundef zeroext 0)
  br label %if.end539

if.end539:                                        ; preds = %if.else535, %if.then532
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end539, %if.end518, %if.then476, %sw.bb452, %sw.bb451, %if.end450, %if.end384, %for.end, %if.then235, %if.end201, %sw.bb184, %sw.bb173, %sw.bb169, %if.end168, %sw.bb138, %if.end137
  %549 = load ptr, ptr %pParse.addr, align 8
  %550 = load i32, ptr %regFree1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %549, i32 noundef %550)
  %551 = load ptr, ptr %pParse.addr, align 8
  %552 = load i32, ptr %regFree2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %551, i32 noundef %552)
  %553 = load i32, ptr %inReg, align 4
  store i32 %553, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then521, %sw.bb420, %sw.bb414, %if.end408, %if.else382, %if.end372, %if.then254, %if.then217, %if.then209, %if.else196, %if.then157, %if.then151, %if.end116, %sw.bb107, %if.end106, %sw.bb82, %sw.bb80, %sw.bb77, %sw.bb76, %sw.bb73, %sw.bb72, %if.end67, %if.else58, %if.then51, %if.end31, %if.then9, %if.then6, %if.then
  %554 = load i32, ptr %retval, align 4
  ret i32 %554
}

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3TableColumnAffinity(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeGetColumn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeInteger(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprTruthValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeReal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HexToBlob(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3AffinityType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeVectorCompare(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTemp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @codeCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstantNotJoin(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeAtInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VtabOverloadFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SubselectError(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CodeSubselect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeIN(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @exprCodeBetween(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP3(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @exprToRegister(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @exprCodeVector(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HaltConstraint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

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
