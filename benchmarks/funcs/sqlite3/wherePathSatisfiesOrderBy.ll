; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.WherePath = type { i64, i64, i16, i16, i16, i8, ptr }
%struct.anon.20 = type { i32, i8, i8, i16, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprNNCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompareSkip(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCollSeqMatch(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereFindTerm(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden signext i8 @wherePathSatisfiesOrderBy(ptr noundef %pWInfo, ptr noundef %pOrderBy, ptr noundef %pPath, i16 noundef zeroext %wctrlFlags, i16 noundef zeroext %nLoop, ptr noundef %pLast, ptr noundef %pRevMask) #0 {
entry:
  %retval = alloca i8, align 1
  %pWInfo.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %pPath.addr = alloca ptr, align 8
  %wctrlFlags.addr = alloca i16, align 2
  %nLoop.addr = alloca i16, align 2
  %pLast.addr = alloca ptr, align 8
  %pRevMask.addr = alloca ptr, align 8
  %revSet = alloca i8, align 1
  %rev = alloca i8, align 1
  %revIdx = alloca i8, align 1
  %isOrderDistinct = alloca i8, align 1
  %distinctColumns = alloca i8, align 1
  %isMatch = alloca i8, align 1
  %eqOpMask = alloca i16, align 2
  %nKeyCol = alloca i16, align 2
  %nColumn = alloca i16, align 2
  %nOrderBy = alloca i16, align 2
  %iLoop = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iCur = alloca i32, align 4
  %iColumn = alloca i32, align 4
  %pLoop = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pOBExpr = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %db = alloca ptr, align 8
  %obSat = alloca i64, align 8
  %obDone = alloca i64, align 8
  %orderDistinctMask = alloca i64, align 8
  %ready = alloca i64, align 8
  %bOnce = alloca i8, align 1
  %eOp = alloca i16, align 2
  %pX = alloca ptr, align 8
  %pIdxExpr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mTerm = alloca i64, align 8
  %m = alloca i64, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pPath, ptr %pPath.addr, align 8
  store i16 %wctrlFlags, ptr %wctrlFlags.addr, align 2
  store i16 %nLoop, ptr %nLoop.addr, align 2
  store ptr %pLast, ptr %pLast.addr, align 8
  store ptr %pRevMask, ptr %pRevMask.addr, align 8
  store ptr null, ptr %pLoop, align 8
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db1, align 8
  store ptr %2, ptr %db, align 8
  store i64 0, ptr %obSat, align 8
  %3 = load i16, ptr %nLoop.addr, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 15
  %5 = load i16, ptr %dbOptFlags, align 4
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 64
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nExpr, align 8
  %conv4 = trunc i32 %7 to i16
  store i16 %conv4, ptr %nOrderBy, align 2
  %8 = load i16, ptr %nOrderBy, align 2
  %conv5 = zext i16 %8 to i32
  %cmp6 = icmp sgt i32 %conv5, 63
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i8 0, ptr %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end
  store i8 1, ptr %isOrderDistinct, align 1
  %9 = load i16, ptr %nOrderBy, align 2
  %conv10 = zext i16 %9 to i32
  %sh_prom = zext i32 %conv10 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, ptr %obDone, align 8
  store i64 0, ptr %orderDistinctMask, align 8
  store i64 0, ptr %ready, align 8
  store i16 386, ptr %eqOpMask, align 2
  %10 = load i16, ptr %wctrlFlags.addr, align 2
  %conv11 = zext i16 %10 to i32
  %and12 = and i32 %conv11, 2048
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  %11 = load i16, ptr %eqOpMask, align 2
  %conv15 = zext i16 %11 to i32
  %or = or i32 %conv15, 1
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, ptr %eqOpMask, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9
  store i32 0, ptr %iLoop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc479, %if.end17
  %12 = load i8, ptr %isOrderDistinct, align 1
  %conv18 = zext i8 %12 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %land.lhs.true20, label %land.end

land.lhs.true20:                                  ; preds = %for.cond
  %13 = load i64, ptr %obSat, align 8
  %14 = load i64, ptr %obDone, align 8
  %cmp21 = icmp ult i64 %13, %14
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true20
  %15 = load i32, ptr %iLoop, align 4
  %16 = load i16, ptr %nLoop.addr, align 2
  %conv23 = zext i16 %16 to i32
  %cmp24 = icmp sle i32 %15, %conv23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true20, %for.cond
  %17 = phi i1 [ false, %land.lhs.true20 ], [ false, %for.cond ], [ %cmp24, %land.rhs ]
  br i1 %17, label %for.body, label %for.end481

for.body:                                         ; preds = %land.end
  %18 = load i32, ptr %iLoop, align 4
  %cmp26 = icmp sgt i32 %18, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.body
  %19 = load ptr, ptr %pLoop, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %maskSelf, align 8
  %21 = load i64, ptr %ready, align 8
  %or29 = or i64 %21, %20
  store i64 %or29, ptr %ready, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.body
  %22 = load i32, ptr %iLoop, align 4
  %23 = load i16, ptr %nLoop.addr, align 2
  %conv31 = zext i16 %23 to i32
  %cmp32 = icmp slt i32 %22, %conv31
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  %24 = load ptr, ptr %pPath.addr, align 8
  %aLoop = getelementptr inbounds nuw %struct.WherePath, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %aLoop, align 8
  %26 = load i32, ptr %iLoop, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %25, i64 %idxprom
  %27 = load ptr, ptr %arrayidx, align 8
  store ptr %27, ptr %pLoop, align 8
  %28 = load i16, ptr %wctrlFlags.addr, align 2
  %conv35 = zext i16 %28 to i32
  %and36 = and i32 %conv35, 2048
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then34
  br label %for.inc479

if.end39:                                         ; preds = %if.then34
  br label %if.end40

if.else:                                          ; preds = %if.end30
  %29 = load ptr, ptr %pLast.addr, align 8
  store ptr %29, ptr %pLoop, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end39
  %30 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %30, i32 0, i32 8
  %31 = load i32, ptr %wsFlags, align 8
  %and41 = and i32 %31, 1024
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.end40
  %32 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %32, i32 0, i32 7
  %isOrdered = getelementptr inbounds nuw %struct.anon.20, ptr %u, i32 0, i32 2
  %33 = load i8, ptr %isOrdered, align 1
  %tobool44 = icmp ne i8 %33, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then43
  %34 = load i64, ptr %obDone, align 8
  store i64 %34, ptr %obSat, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then43
  br label %for.end481

if.else47:                                        ; preds = %if.end40
  %35 = load i16, ptr %wctrlFlags.addr, align 2
  %conv48 = zext i16 %35 to i32
  %and49 = and i32 %conv48, 128
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.else47
  %36 = load ptr, ptr %pLoop, align 8
  %u52 = getelementptr inbounds nuw %struct.WhereLoop, ptr %36, i32 0, i32 7
  %nDistinctCol = getelementptr inbounds nuw %struct.anon.19, ptr %u52, i32 0, i32 3
  store i16 0, ptr %nDistinctCol, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.else47
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  %37 = load ptr, ptr %pWInfo.addr, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pLoop, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %39, i32 0, i32 2
  %40 = load i8, ptr %iTab, align 8
  %idxprom55 = zext i8 %40 to i64
  %arrayidx56 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom55
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx56, i32 0, i32 10
  %41 = load i32, ptr %iCursor, align 8
  store i32 %41, ptr %iCur, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc136, %if.end54
  %42 = load i32, ptr %i, align 4
  %43 = load i16, ptr %nOrderBy, align 2
  %conv58 = zext i16 %43 to i32
  %cmp59 = icmp slt i32 %42, %conv58
  br i1 %cmp59, label %for.body61, label %for.end138

for.body61:                                       ; preds = %for.cond57
  %44 = load i32, ptr %i, align 4
  %sh_prom62 = zext i32 %44 to i64
  %shl63 = shl i64 1, %sh_prom62
  %45 = load i64, ptr %obSat, align 8
  %and64 = and i64 %shl63, %45
  %tobool65 = icmp ne i64 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %for.body61
  br label %for.inc136

if.end67:                                         ; preds = %for.body61
  %46 = load ptr, ptr %pOrderBy.addr, align 8
  %a68 = getelementptr inbounds nuw %struct.ExprList, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a68, i64 0, i64 %idxprom69
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx70, i32 0, i32 0
  %48 = load ptr, ptr %pExpr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %48)
  store ptr %call, ptr %pOBExpr, align 8
  %49 = load ptr, ptr %pOBExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 0
  %50 = load i8, ptr %op, align 8
  %conv71 = zext i8 %50 to i32
  %cmp72 = icmp ne i32 %conv71, 162
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end67
  br label %for.inc136

if.end75:                                         ; preds = %if.end67
  %51 = load ptr, ptr %pOBExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %51, i32 0, i32 8
  %52 = load i32, ptr %iTable, align 4
  %53 = load i32, ptr %iCur, align 4
  %cmp76 = icmp ne i32 %52, %53
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  br label %for.inc136

if.end79:                                         ; preds = %if.end75
  %54 = load ptr, ptr %pWInfo.addr, align 8
  %sWC = getelementptr inbounds nuw %struct.WhereInfo, ptr %54, i32 0, i32 22
  %55 = load i32, ptr %iCur, align 4
  %56 = load ptr, ptr %pOBExpr, align 8
  %iColumn80 = getelementptr inbounds nuw %struct.Expr, ptr %56, i32 0, i32 9
  %57 = load i16, ptr %iColumn80, align 8
  %conv81 = sext i16 %57 to i32
  %58 = load i64, ptr %ready, align 8
  %not = xor i64 %58, -1
  %59 = load i16, ptr %eqOpMask, align 2
  %conv82 = zext i16 %59 to i32
  %call83 = call ptr @sqlite3WhereFindTerm(ptr noundef %sWC, i32 noundef %55, i32 noundef %conv81, i64 noundef %not, i32 noundef %conv82, ptr noundef null)
  store ptr %call83, ptr %pTerm, align 8
  %60 = load ptr, ptr %pTerm, align 8
  %cmp84 = icmp eq ptr %60, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end79
  br label %for.inc136

if.end87:                                         ; preds = %if.end79
  %61 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %61, i32 0, i32 4
  %62 = load i16, ptr %eOperator, align 4
  %conv88 = zext i16 %62 to i32
  %cmp89 = icmp eq i32 %conv88, 1
  br i1 %cmp89, label %if.then91, label %if.end109

if.then91:                                        ; preds = %if.end87
  store i32 0, ptr %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc, %if.then91
  %63 = load i32, ptr %j, align 4
  %64 = load ptr, ptr %pLoop, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %64, i32 0, i32 9
  %65 = load i16, ptr %nLTerm, align 4
  %conv93 = zext i16 %65 to i32
  %cmp94 = icmp slt i32 %63, %conv93
  br i1 %cmp94, label %land.rhs96, label %land.end101

land.rhs96:                                       ; preds = %for.cond92
  %66 = load ptr, ptr %pTerm, align 8
  %67 = load ptr, ptr %pLoop, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %aLTerm, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom97 = sext i32 %69 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %68, i64 %idxprom97
  %70 = load ptr, ptr %arrayidx98, align 8
  %cmp99 = icmp ne ptr %66, %70
  br label %land.end101

land.end101:                                      ; preds = %land.rhs96, %for.cond92
  %71 = phi i1 [ false, %for.cond92 ], [ %cmp99, %land.rhs96 ]
  br i1 %71, label %for.body102, label %for.end

for.body102:                                      ; preds = %land.end101
  br label %for.inc

for.inc:                                          ; preds = %for.body102
  %72 = load i32, ptr %j, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond92, !llvm.loop !6

for.end:                                          ; preds = %land.end101
  %73 = load i32, ptr %j, align 4
  %74 = load ptr, ptr %pLoop, align 8
  %nLTerm103 = getelementptr inbounds nuw %struct.WhereLoop, ptr %74, i32 0, i32 9
  %75 = load i16, ptr %nLTerm103, align 4
  %conv104 = zext i16 %75 to i32
  %cmp105 = icmp sge i32 %73, %conv104
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %for.end
  br label %for.inc136

if.end108:                                        ; preds = %for.end
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end87
  %76 = load ptr, ptr %pTerm, align 8
  %eOperator110 = getelementptr inbounds nuw %struct.WhereTerm, ptr %76, i32 0, i32 4
  %77 = load i16, ptr %eOperator110, align 4
  %conv111 = zext i16 %77 to i32
  %and112 = and i32 %conv111, 130
  %cmp113 = icmp ne i32 %and112, 0
  br i1 %cmp113, label %land.lhs.true115, label %if.end132

land.lhs.true115:                                 ; preds = %if.end109
  %78 = load ptr, ptr %pOBExpr, align 8
  %iColumn116 = getelementptr inbounds nuw %struct.Expr, ptr %78, i32 0, i32 9
  %79 = load i16, ptr %iColumn116, align 8
  %conv117 = sext i16 %79 to i32
  %cmp118 = icmp sge i32 %conv117, 0
  br i1 %cmp118, label %if.then120, label %if.end132

if.then120:                                       ; preds = %land.lhs.true115
  %80 = load ptr, ptr %pWInfo.addr, align 8
  %pParse121 = getelementptr inbounds nuw %struct.WhereInfo, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %pParse121, align 8
  %82 = load ptr, ptr %pOrderBy.addr, align 8
  %a122 = getelementptr inbounds nuw %struct.ExprList, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %i, align 4
  %idxprom123 = sext i32 %83 to i64
  %arrayidx124 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a122, i64 0, i64 %idxprom123
  %pExpr125 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx124, i32 0, i32 0
  %84 = load ptr, ptr %pExpr125, align 8
  %85 = load ptr, ptr %pTerm, align 8
  %pExpr126 = getelementptr inbounds nuw %struct.WhereTerm, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %pExpr126, align 8
  %call127 = call i32 @sqlite3ExprCollSeqMatch(ptr noundef %81, ptr noundef %84, ptr noundef %86)
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then120
  br label %for.inc136

if.end131:                                        ; preds = %if.then120
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %land.lhs.true115, %if.end109
  %87 = load i32, ptr %i, align 4
  %sh_prom133 = zext i32 %87 to i64
  %shl134 = shl i64 1, %sh_prom133
  %88 = load i64, ptr %obSat, align 8
  %or135 = or i64 %88, %shl134
  store i64 %or135, ptr %obSat, align 8
  br label %for.inc136

for.inc136:                                       ; preds = %if.end132, %if.then130, %if.then107, %if.then86, %if.then78, %if.then74, %if.then66
  %89 = load i32, ptr %i, align 4
  %inc137 = add nsw i32 %89, 1
  store i32 %inc137, ptr %i, align 4
  br label %for.cond57, !llvm.loop !8

for.end138:                                       ; preds = %for.cond57
  %90 = load ptr, ptr %pLoop, align 8
  %wsFlags139 = getelementptr inbounds nuw %struct.WhereLoop, ptr %90, i32 0, i32 8
  %91 = load i32, ptr %wsFlags139, align 8
  %and140 = and i32 %91, 4096
  %cmp141 = icmp eq i32 %and140, 0
  br i1 %cmp141, label %if.then143, label %if.end438

if.then143:                                       ; preds = %for.end138
  %92 = load ptr, ptr %pLoop, align 8
  %wsFlags144 = getelementptr inbounds nuw %struct.WhereLoop, ptr %92, i32 0, i32 8
  %93 = load i32, ptr %wsFlags144, align 8
  %and145 = and i32 %93, 256
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.else148

if.then147:                                       ; preds = %if.then143
  store ptr null, ptr %pIndex, align 8
  store i16 0, ptr %nKeyCol, align 2
  store i16 1, ptr %nColumn, align 2
  br label %if.end169

if.else148:                                       ; preds = %if.then143
  %94 = load ptr, ptr %pLoop, align 8
  %u149 = getelementptr inbounds nuw %struct.WhereLoop, ptr %94, i32 0, i32 7
  %pIndex150 = getelementptr inbounds nuw %struct.anon.19, ptr %u149, i32 0, i32 4
  %95 = load ptr, ptr %pIndex150, align 8
  store ptr %95, ptr %pIndex, align 8
  %cmp151 = icmp eq ptr %95, null
  br i1 %cmp151, label %if.then154, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else148
  %96 = load ptr, ptr %pIndex, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %96, i32 0, i32 16
  %bf.load = load i16, ptr %bUnordered, align 1
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool153 = icmp ne i32 %bf.cast, 0
  br i1 %tobool153, label %if.then154, label %if.else155

if.then154:                                       ; preds = %lor.lhs.false, %if.else148
  store i8 0, ptr %retval, align 1
  br label %return

if.else155:                                       ; preds = %lor.lhs.false
  %97 = load ptr, ptr %pIndex, align 8
  %nKeyCol156 = getelementptr inbounds nuw %struct.Index, ptr %97, i32 0, i32 13
  %98 = load i16, ptr %nKeyCol156, align 2
  store i16 %98, ptr %nKeyCol, align 2
  %99 = load ptr, ptr %pIndex, align 8
  %nColumn157 = getelementptr inbounds nuw %struct.Index, ptr %99, i32 0, i32 14
  %100 = load i16, ptr %nColumn157, align 8
  store i16 %100, ptr %nColumn, align 2
  %101 = load ptr, ptr %pIndex, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %101, i32 0, i32 15
  %102 = load i8, ptr %onError, align 2
  %conv158 = zext i8 %102 to i32
  %cmp159 = icmp ne i32 %conv158, 0
  br i1 %cmp159, label %land.rhs161, label %land.end166

land.rhs161:                                      ; preds = %if.else155
  %103 = load ptr, ptr %pLoop, align 8
  %wsFlags162 = getelementptr inbounds nuw %struct.WhereLoop, ptr %103, i32 0, i32 8
  %104 = load i32, ptr %wsFlags162, align 8
  %and163 = and i32 %104, 32768
  %cmp164 = icmp eq i32 %and163, 0
  br label %land.end166

land.end166:                                      ; preds = %land.rhs161, %if.else155
  %105 = phi i1 [ false, %if.else155 ], [ %cmp164, %land.rhs161 ]
  %land.ext = zext i1 %105 to i32
  %conv167 = trunc i32 %land.ext to i8
  store i8 %conv167, ptr %isOrderDistinct, align 1
  br label %if.end168

if.end168:                                        ; preds = %land.end166
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.then147
  store i8 0, ptr %revSet, align 1
  store i8 0, ptr %rev, align 1
  store i8 0, ptr %distinctColumns, align 1
  store i32 0, ptr %j, align 4
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc432, %if.end169
  %106 = load i32, ptr %j, align 4
  %107 = load i16, ptr %nColumn, align 2
  %conv171 = zext i16 %107 to i32
  %cmp172 = icmp slt i32 %106, %conv171
  br i1 %cmp172, label %for.body174, label %for.end434

for.body174:                                      ; preds = %for.cond170
  store i8 1, ptr %bOnce, align 1
  %108 = load i32, ptr %j, align 4
  %109 = load ptr, ptr %pLoop, align 8
  %u175 = getelementptr inbounds nuw %struct.WhereLoop, ptr %109, i32 0, i32 7
  %nEq = getelementptr inbounds nuw %struct.anon.19, ptr %u175, i32 0, i32 0
  %110 = load i16, ptr %nEq, align 8
  %conv176 = zext i16 %110 to i32
  %cmp177 = icmp slt i32 %108, %conv176
  br i1 %cmp177, label %land.lhs.true179, label %if.end228

land.lhs.true179:                                 ; preds = %for.body174
  %111 = load i32, ptr %j, align 4
  %112 = load ptr, ptr %pLoop, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %112, i32 0, i32 10
  %113 = load i16, ptr %nSkip, align 2
  %conv180 = zext i16 %113 to i32
  %cmp181 = icmp sge i32 %111, %conv180
  br i1 %cmp181, label %if.then183, label %if.end228

if.then183:                                       ; preds = %land.lhs.true179
  %114 = load ptr, ptr %pLoop, align 8
  %aLTerm184 = getelementptr inbounds nuw %struct.WhereLoop, ptr %114, i32 0, i32 12
  %115 = load ptr, ptr %aLTerm184, align 8
  %116 = load i32, ptr %j, align 4
  %idxprom185 = sext i32 %116 to i64
  %arrayidx186 = getelementptr inbounds ptr, ptr %115, i64 %idxprom185
  %117 = load ptr, ptr %arrayidx186, align 8
  %eOperator187 = getelementptr inbounds nuw %struct.WhereTerm, ptr %117, i32 0, i32 4
  %118 = load i16, ptr %eOperator187, align 4
  store i16 %118, ptr %eOp, align 2
  %119 = load i16, ptr %eOp, align 2
  %conv188 = zext i16 %119 to i32
  %120 = load i16, ptr %eqOpMask, align 2
  %conv189 = zext i16 %120 to i32
  %and190 = and i32 %conv188, %conv189
  %cmp191 = icmp ne i32 %and190, 0
  br i1 %cmp191, label %if.then193, label %if.else199

if.then193:                                       ; preds = %if.then183
  %121 = load i16, ptr %eOp, align 2
  %conv194 = zext i16 %121 to i32
  %and195 = and i32 %conv194, 384
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.then193
  store i8 0, ptr %isOrderDistinct, align 1
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.then193
  br label %for.inc432

if.else199:                                       ; preds = %if.then183
  %122 = load i16, ptr %eOp, align 2
  %conv200 = zext i16 %122 to i32
  %and201 = and i32 %conv200, 1
  %tobool202 = icmp ne i32 %and201, 0
  br i1 %tobool202, label %if.then203, label %if.end226

if.then203:                                       ; preds = %if.else199
  %123 = load ptr, ptr %pLoop, align 8
  %aLTerm204 = getelementptr inbounds nuw %struct.WhereLoop, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %aLTerm204, align 8
  %125 = load i32, ptr %j, align 4
  %idxprom205 = sext i32 %125 to i64
  %arrayidx206 = getelementptr inbounds ptr, ptr %124, i64 %idxprom205
  %126 = load ptr, ptr %arrayidx206, align 8
  %pExpr207 = getelementptr inbounds nuw %struct.WhereTerm, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %pExpr207, align 8
  store ptr %127, ptr %pX, align 8
  %128 = load i32, ptr %j, align 4
  %add = add nsw i32 %128, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond208

for.cond208:                                      ; preds = %for.inc223, %if.then203
  %129 = load i32, ptr %i, align 4
  %130 = load ptr, ptr %pLoop, align 8
  %u209 = getelementptr inbounds nuw %struct.WhereLoop, ptr %130, i32 0, i32 7
  %nEq210 = getelementptr inbounds nuw %struct.anon.19, ptr %u209, i32 0, i32 0
  %131 = load i16, ptr %nEq210, align 8
  %conv211 = zext i16 %131 to i32
  %cmp212 = icmp slt i32 %129, %conv211
  br i1 %cmp212, label %for.body214, label %for.end225

for.body214:                                      ; preds = %for.cond208
  %132 = load ptr, ptr %pLoop, align 8
  %aLTerm215 = getelementptr inbounds nuw %struct.WhereLoop, ptr %132, i32 0, i32 12
  %133 = load ptr, ptr %aLTerm215, align 8
  %134 = load i32, ptr %i, align 4
  %idxprom216 = sext i32 %134 to i64
  %arrayidx217 = getelementptr inbounds ptr, ptr %133, i64 %idxprom216
  %135 = load ptr, ptr %arrayidx217, align 8
  %pExpr218 = getelementptr inbounds nuw %struct.WhereTerm, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %pExpr218, align 8
  %137 = load ptr, ptr %pX, align 8
  %cmp219 = icmp eq ptr %136, %137
  br i1 %cmp219, label %if.then221, label %if.end222

if.then221:                                       ; preds = %for.body214
  store i8 0, ptr %bOnce, align 1
  br label %for.end225

if.end222:                                        ; preds = %for.body214
  br label %for.inc223

for.inc223:                                       ; preds = %if.end222
  %138 = load i32, ptr %i, align 4
  %inc224 = add nsw i32 %138, 1
  store i32 %inc224, ptr %i, align 4
  br label %for.cond208, !llvm.loop !9

for.end225:                                       ; preds = %if.then221, %for.cond208
  br label %if.end226

if.end226:                                        ; preds = %for.end225, %if.else199
  br label %if.end227

if.end227:                                        ; preds = %if.end226
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %land.lhs.true179, %for.body174
  %139 = load ptr, ptr %pIndex, align 8
  %tobool229 = icmp ne ptr %139, null
  br i1 %tobool229, label %if.then230, label %if.else244

if.then230:                                       ; preds = %if.end228
  %140 = load ptr, ptr %pIndex, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %aiColumn, align 8
  %142 = load i32, ptr %j, align 4
  %idxprom231 = sext i32 %142 to i64
  %arrayidx232 = getelementptr inbounds i16, ptr %141, i64 %idxprom231
  %143 = load i16, ptr %arrayidx232, align 2
  %conv233 = sext i16 %143 to i32
  store i32 %conv233, ptr %iColumn, align 4
  %144 = load ptr, ptr %pIndex, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %144, i32 0, i32 7
  %145 = load ptr, ptr %aSortOrder, align 8
  %146 = load i32, ptr %j, align 4
  %idxprom234 = sext i32 %146 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %145, i64 %idxprom234
  %147 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %147 to i32
  %and237 = and i32 %conv236, 1
  %conv238 = trunc i32 %and237 to i8
  store i8 %conv238, ptr %revIdx, align 1
  %148 = load i32, ptr %iColumn, align 4
  %149 = load ptr, ptr %pIndex, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %149, i32 0, i32 3
  %150 = load ptr, ptr %pTable, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %150, i32 0, i32 10
  %151 = load i16, ptr %iPKey, align 4
  %conv239 = sext i16 %151 to i32
  %cmp240 = icmp eq i32 %148, %conv239
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.then230
  store i32 -1, ptr %iColumn, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %if.then230
  br label %if.end245

if.else244:                                       ; preds = %if.end228
  store i32 -1, ptr %iColumn, align 4
  store i8 0, ptr %revIdx, align 1
  br label %if.end245

if.end245:                                        ; preds = %if.else244, %if.end243
  %152 = load i8, ptr %isOrderDistinct, align 1
  %conv246 = zext i8 %152 to i32
  %tobool247 = icmp ne i32 %conv246, 0
  br i1 %tobool247, label %land.lhs.true248, label %if.end265

land.lhs.true248:                                 ; preds = %if.end245
  %153 = load i32, ptr %iColumn, align 4
  %cmp249 = icmp sge i32 %153, 0
  br i1 %cmp249, label %land.lhs.true251, label %if.end265

land.lhs.true251:                                 ; preds = %land.lhs.true248
  %154 = load i32, ptr %j, align 4
  %155 = load ptr, ptr %pLoop, align 8
  %u252 = getelementptr inbounds nuw %struct.WhereLoop, ptr %155, i32 0, i32 7
  %nEq253 = getelementptr inbounds nuw %struct.anon.19, ptr %u252, i32 0, i32 0
  %156 = load i16, ptr %nEq253, align 8
  %conv254 = zext i16 %156 to i32
  %cmp255 = icmp sge i32 %154, %conv254
  br i1 %cmp255, label %land.lhs.true257, label %if.end265

land.lhs.true257:                                 ; preds = %land.lhs.true251
  %157 = load ptr, ptr %pIndex, align 8
  %pTable258 = getelementptr inbounds nuw %struct.Index, ptr %157, i32 0, i32 3
  %158 = load ptr, ptr %pTable258, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %158, i32 0, i32 1
  %159 = load ptr, ptr %aCol, align 8
  %160 = load i32, ptr %iColumn, align 4
  %idxprom259 = sext i32 %160 to i64
  %arrayidx260 = getelementptr inbounds %struct.Column, ptr %159, i64 %idxprom259
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx260, i32 0, i32 3
  %161 = load i8, ptr %notNull, align 8
  %conv261 = zext i8 %161 to i32
  %cmp262 = icmp eq i32 %conv261, 0
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %land.lhs.true257
  store i8 0, ptr %isOrderDistinct, align 1
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %land.lhs.true257, %land.lhs.true251, %land.lhs.true248, %if.end245
  store i8 0, ptr %isMatch, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond266

for.cond266:                                      ; preds = %for.inc349, %if.end265
  %162 = load i8, ptr %bOnce, align 1
  %conv267 = zext i8 %162 to i32
  %tobool268 = icmp ne i32 %conv267, 0
  br i1 %tobool268, label %land.rhs269, label %land.end273

land.rhs269:                                      ; preds = %for.cond266
  %163 = load i32, ptr %i, align 4
  %164 = load i16, ptr %nOrderBy, align 2
  %conv270 = zext i16 %164 to i32
  %cmp271 = icmp slt i32 %163, %conv270
  br label %land.end273

land.end273:                                      ; preds = %land.rhs269, %for.cond266
  %165 = phi i1 [ false, %for.cond266 ], [ %cmp271, %land.rhs269 ]
  br i1 %165, label %for.body275, label %for.end351

for.body275:                                      ; preds = %land.end273
  %166 = load i32, ptr %i, align 4
  %sh_prom276 = zext i32 %166 to i64
  %shl277 = shl i64 1, %sh_prom276
  %167 = load i64, ptr %obSat, align 8
  %and278 = and i64 %shl277, %167
  %tobool279 = icmp ne i64 %and278, 0
  br i1 %tobool279, label %if.then280, label %if.end281

if.then280:                                       ; preds = %for.body275
  br label %for.inc349

if.end281:                                        ; preds = %for.body275
  %168 = load ptr, ptr %pOrderBy.addr, align 8
  %a282 = getelementptr inbounds nuw %struct.ExprList, ptr %168, i32 0, i32 1
  %169 = load i32, ptr %i, align 4
  %idxprom283 = sext i32 %169 to i64
  %arrayidx284 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a282, i64 0, i64 %idxprom283
  %pExpr285 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx284, i32 0, i32 0
  %170 = load ptr, ptr %pExpr285, align 8
  %call286 = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %170)
  store ptr %call286, ptr %pOBExpr, align 8
  %171 = load i16, ptr %wctrlFlags.addr, align 2
  %conv287 = zext i16 %171 to i32
  %and288 = and i32 %conv287, 192
  %cmp289 = icmp eq i32 %and288, 0
  br i1 %cmp289, label %if.then291, label %if.end292

if.then291:                                       ; preds = %if.end281
  store i8 0, ptr %bOnce, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.then291, %if.end281
  %172 = load i32, ptr %iColumn, align 4
  %cmp293 = icmp sge i32 %172, -1
  br i1 %cmp293, label %if.then295, label %if.else313

if.then295:                                       ; preds = %if.end292
  %173 = load ptr, ptr %pOBExpr, align 8
  %op296 = getelementptr inbounds nuw %struct.Expr, ptr %173, i32 0, i32 0
  %174 = load i8, ptr %op296, align 8
  %conv297 = zext i8 %174 to i32
  %cmp298 = icmp ne i32 %conv297, 162
  br i1 %cmp298, label %if.then300, label %if.end301

if.then300:                                       ; preds = %if.then295
  br label %for.inc349

if.end301:                                        ; preds = %if.then295
  %175 = load ptr, ptr %pOBExpr, align 8
  %iTable302 = getelementptr inbounds nuw %struct.Expr, ptr %175, i32 0, i32 8
  %176 = load i32, ptr %iTable302, align 4
  %177 = load i32, ptr %iCur, align 4
  %cmp303 = icmp ne i32 %176, %177
  br i1 %cmp303, label %if.then305, label %if.end306

if.then305:                                       ; preds = %if.end301
  br label %for.inc349

if.end306:                                        ; preds = %if.end301
  %178 = load ptr, ptr %pOBExpr, align 8
  %iColumn307 = getelementptr inbounds nuw %struct.Expr, ptr %178, i32 0, i32 9
  %179 = load i16, ptr %iColumn307, align 8
  %conv308 = sext i16 %179 to i32
  %180 = load i32, ptr %iColumn, align 4
  %cmp309 = icmp ne i32 %conv308, %180
  br i1 %cmp309, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.end306
  br label %for.inc349

if.end312:                                        ; preds = %if.end306
  br label %if.end322

if.else313:                                       ; preds = %if.end292
  %181 = load ptr, ptr %pIndex, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %181, i32 0, i32 10
  %182 = load ptr, ptr %aColExpr, align 8
  %a314 = getelementptr inbounds nuw %struct.ExprList, ptr %182, i32 0, i32 1
  %183 = load i32, ptr %j, align 4
  %idxprom315 = sext i32 %183 to i64
  %arrayidx316 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a314, i64 0, i64 %idxprom315
  %pExpr317 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx316, i32 0, i32 0
  %184 = load ptr, ptr %pExpr317, align 8
  store ptr %184, ptr %pIdxExpr, align 8
  %185 = load ptr, ptr %pOBExpr, align 8
  %186 = load ptr, ptr %pIdxExpr, align 8
  %187 = load i32, ptr %iCur, align 4
  %call318 = call i32 @sqlite3ExprCompareSkip(ptr noundef %185, ptr noundef %186, i32 noundef %187)
  %tobool319 = icmp ne i32 %call318, 0
  br i1 %tobool319, label %if.then320, label %if.end321

if.then320:                                       ; preds = %if.else313
  br label %for.inc349

if.end321:                                        ; preds = %if.else313
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %if.end312
  %188 = load i32, ptr %iColumn, align 4
  %cmp323 = icmp ne i32 %188, -1
  br i1 %cmp323, label %if.then325, label %if.end339

if.then325:                                       ; preds = %if.end322
  %189 = load ptr, ptr %pWInfo.addr, align 8
  %pParse326 = getelementptr inbounds nuw %struct.WhereInfo, ptr %189, i32 0, i32 0
  %190 = load ptr, ptr %pParse326, align 8
  %191 = load ptr, ptr %pOrderBy.addr, align 8
  %a327 = getelementptr inbounds nuw %struct.ExprList, ptr %191, i32 0, i32 1
  %192 = load i32, ptr %i, align 4
  %idxprom328 = sext i32 %192 to i64
  %arrayidx329 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a327, i64 0, i64 %idxprom328
  %pExpr330 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx329, i32 0, i32 0
  %193 = load ptr, ptr %pExpr330, align 8
  %call331 = call ptr @sqlite3ExprNNCollSeq(ptr noundef %190, ptr noundef %193)
  store ptr %call331, ptr %pColl, align 8
  %194 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %194, i32 0, i32 0
  %195 = load ptr, ptr %zName, align 8
  %196 = load ptr, ptr %pIndex, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %196, i32 0, i32 8
  %197 = load ptr, ptr %azColl, align 8
  %198 = load i32, ptr %j, align 4
  %idxprom332 = sext i32 %198 to i64
  %arrayidx333 = getelementptr inbounds ptr, ptr %197, i64 %idxprom332
  %199 = load ptr, ptr %arrayidx333, align 8
  %call334 = call i32 @sqlite3StrICmp(ptr noundef %195, ptr noundef %199)
  %cmp335 = icmp ne i32 %call334, 0
  br i1 %cmp335, label %if.then337, label %if.end338

if.then337:                                       ; preds = %if.then325
  br label %for.inc349

if.end338:                                        ; preds = %if.then325
  br label %if.end339

if.end339:                                        ; preds = %if.end338, %if.end322
  %200 = load i16, ptr %wctrlFlags.addr, align 2
  %conv340 = zext i16 %200 to i32
  %and341 = and i32 %conv340, 128
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %if.then343, label %if.end348

if.then343:                                       ; preds = %if.end339
  %201 = load i32, ptr %j, align 4
  %add344 = add nsw i32 %201, 1
  %conv345 = trunc i32 %add344 to i16
  %202 = load ptr, ptr %pLoop, align 8
  %u346 = getelementptr inbounds nuw %struct.WhereLoop, ptr %202, i32 0, i32 7
  %nDistinctCol347 = getelementptr inbounds nuw %struct.anon.19, ptr %u346, i32 0, i32 3
  store i16 %conv345, ptr %nDistinctCol347, align 2
  br label %if.end348

if.end348:                                        ; preds = %if.then343, %if.end339
  store i8 1, ptr %isMatch, align 1
  br label %for.end351

for.inc349:                                       ; preds = %if.then337, %if.then320, %if.then311, %if.then305, %if.then300, %if.then280
  %203 = load i32, ptr %i, align 4
  %inc350 = add nsw i32 %203, 1
  store i32 %inc350, ptr %i, align 4
  br label %for.cond266, !llvm.loop !10

for.end351:                                       ; preds = %if.end348, %land.end273
  %204 = load i8, ptr %isMatch, align 1
  %conv352 = zext i8 %204 to i32
  %tobool353 = icmp ne i32 %conv352, 0
  br i1 %tobool353, label %land.lhs.true354, label %if.end390

land.lhs.true354:                                 ; preds = %for.end351
  %205 = load i16, ptr %wctrlFlags.addr, align 2
  %conv355 = zext i16 %205 to i32
  %and356 = and i32 %conv355, 64
  %cmp357 = icmp eq i32 %and356, 0
  br i1 %cmp357, label %if.then359, label %if.end390

if.then359:                                       ; preds = %land.lhs.true354
  %206 = load i8, ptr %revSet, align 1
  %tobool360 = icmp ne i8 %206, 0
  br i1 %tobool360, label %if.then361, label %if.else373

if.then361:                                       ; preds = %if.then359
  %207 = load i8, ptr %rev, align 1
  %conv362 = zext i8 %207 to i32
  %208 = load i8, ptr %revIdx, align 1
  %conv363 = zext i8 %208 to i32
  %xor = xor i32 %conv362, %conv363
  %209 = load ptr, ptr %pOrderBy.addr, align 8
  %a364 = getelementptr inbounds nuw %struct.ExprList, ptr %209, i32 0, i32 1
  %210 = load i32, ptr %i, align 4
  %idxprom365 = sext i32 %210 to i64
  %arrayidx366 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a364, i64 0, i64 %idxprom365
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx366, i32 0, i32 3
  %211 = load i8, ptr %sortFlags, align 8
  %conv367 = zext i8 %211 to i32
  %and368 = and i32 %conv367, 1
  %cmp369 = icmp ne i32 %xor, %and368
  br i1 %cmp369, label %if.then371, label %if.end372

if.then371:                                       ; preds = %if.then361
  store i8 0, ptr %isMatch, align 1
  br label %if.end372

if.end372:                                        ; preds = %if.then371, %if.then361
  br label %if.end389

if.else373:                                       ; preds = %if.then359
  %212 = load i8, ptr %revIdx, align 1
  %conv374 = zext i8 %212 to i32
  %213 = load ptr, ptr %pOrderBy.addr, align 8
  %a375 = getelementptr inbounds nuw %struct.ExprList, ptr %213, i32 0, i32 1
  %214 = load i32, ptr %i, align 4
  %idxprom376 = sext i32 %214 to i64
  %arrayidx377 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a375, i64 0, i64 %idxprom376
  %sortFlags378 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx377, i32 0, i32 3
  %215 = load i8, ptr %sortFlags378, align 8
  %conv379 = zext i8 %215 to i32
  %and380 = and i32 %conv379, 1
  %xor381 = xor i32 %conv374, %and380
  %conv382 = trunc i32 %xor381 to i8
  store i8 %conv382, ptr %rev, align 1
  %216 = load i8, ptr %rev, align 1
  %tobool383 = icmp ne i8 %216, 0
  br i1 %tobool383, label %if.then384, label %if.end388

if.then384:                                       ; preds = %if.else373
  %217 = load i32, ptr %iLoop, align 4
  %sh_prom385 = zext i32 %217 to i64
  %shl386 = shl i64 1, %sh_prom385
  %218 = load ptr, ptr %pRevMask.addr, align 8
  %219 = load i64, ptr %218, align 8
  %or387 = or i64 %219, %shl386
  store i64 %or387, ptr %218, align 8
  br label %if.end388

if.end388:                                        ; preds = %if.then384, %if.else373
  store i8 1, ptr %revSet, align 1
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.end372
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %land.lhs.true354, %for.end351
  %220 = load i8, ptr %isMatch, align 1
  %conv391 = zext i8 %220 to i32
  %tobool392 = icmp ne i32 %conv391, 0
  br i1 %tobool392, label %land.lhs.true393, label %if.end412

land.lhs.true393:                                 ; preds = %if.end390
  %221 = load ptr, ptr %pOrderBy.addr, align 8
  %a394 = getelementptr inbounds nuw %struct.ExprList, ptr %221, i32 0, i32 1
  %222 = load i32, ptr %i, align 4
  %idxprom395 = sext i32 %222 to i64
  %arrayidx396 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a394, i64 0, i64 %idxprom395
  %sortFlags397 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx396, i32 0, i32 3
  %223 = load i8, ptr %sortFlags397, align 8
  %conv398 = zext i8 %223 to i32
  %and399 = and i32 %conv398, 2
  %tobool400 = icmp ne i32 %and399, 0
  br i1 %tobool400, label %if.then401, label %if.end412

if.then401:                                       ; preds = %land.lhs.true393
  %224 = load i32, ptr %j, align 4
  %225 = load ptr, ptr %pLoop, align 8
  %u402 = getelementptr inbounds nuw %struct.WhereLoop, ptr %225, i32 0, i32 7
  %nEq403 = getelementptr inbounds nuw %struct.anon.19, ptr %u402, i32 0, i32 0
  %226 = load i16, ptr %nEq403, align 8
  %conv404 = zext i16 %226 to i32
  %cmp405 = icmp eq i32 %224, %conv404
  br i1 %cmp405, label %if.then407, label %if.else410

if.then407:                                       ; preds = %if.then401
  %227 = load ptr, ptr %pLoop, align 8
  %wsFlags408 = getelementptr inbounds nuw %struct.WhereLoop, ptr %227, i32 0, i32 8
  %228 = load i32, ptr %wsFlags408, align 8
  %or409 = or i32 %228, 524288
  store i32 %or409, ptr %wsFlags408, align 8
  br label %if.end411

if.else410:                                       ; preds = %if.then401
  store i8 0, ptr %isMatch, align 1
  br label %if.end411

if.end411:                                        ; preds = %if.else410, %if.then407
  br label %if.end412

if.end412:                                        ; preds = %if.end411, %land.lhs.true393, %if.end390
  %229 = load i8, ptr %isMatch, align 1
  %tobool413 = icmp ne i8 %229, 0
  br i1 %tobool413, label %if.then414, label %if.else422

if.then414:                                       ; preds = %if.end412
  %230 = load i32, ptr %iColumn, align 4
  %cmp415 = icmp eq i32 %230, -1
  br i1 %cmp415, label %if.then417, label %if.end418

if.then417:                                       ; preds = %if.then414
  store i8 1, ptr %distinctColumns, align 1
  br label %if.end418

if.end418:                                        ; preds = %if.then417, %if.then414
  %231 = load i32, ptr %i, align 4
  %sh_prom419 = zext i32 %231 to i64
  %shl420 = shl i64 1, %sh_prom419
  %232 = load i64, ptr %obSat, align 8
  %or421 = or i64 %232, %shl420
  store i64 %or421, ptr %obSat, align 8
  br label %if.end431

if.else422:                                       ; preds = %if.end412
  %233 = load i32, ptr %j, align 4
  %cmp423 = icmp eq i32 %233, 0
  br i1 %cmp423, label %if.then429, label %lor.lhs.false425

lor.lhs.false425:                                 ; preds = %if.else422
  %234 = load i32, ptr %j, align 4
  %235 = load i16, ptr %nKeyCol, align 2
  %conv426 = zext i16 %235 to i32
  %cmp427 = icmp slt i32 %234, %conv426
  br i1 %cmp427, label %if.then429, label %if.end430

if.then429:                                       ; preds = %lor.lhs.false425, %if.else422
  store i8 0, ptr %isOrderDistinct, align 1
  br label %if.end430

if.end430:                                        ; preds = %if.then429, %lor.lhs.false425
  br label %for.end434

if.end431:                                        ; preds = %if.end418
  br label %for.inc432

for.inc432:                                       ; preds = %if.end431, %if.end198
  %236 = load i32, ptr %j, align 4
  %inc433 = add nsw i32 %236, 1
  store i32 %inc433, ptr %j, align 4
  br label %for.cond170, !llvm.loop !11

for.end434:                                       ; preds = %if.end430, %for.cond170
  %237 = load i8, ptr %distinctColumns, align 1
  %tobool435 = icmp ne i8 %237, 0
  br i1 %tobool435, label %if.then436, label %if.end437

if.then436:                                       ; preds = %for.end434
  store i8 1, ptr %isOrderDistinct, align 1
  br label %if.end437

if.end437:                                        ; preds = %if.then436, %for.end434
  br label %if.end438

if.end438:                                        ; preds = %if.end437, %for.end138
  %238 = load i8, ptr %isOrderDistinct, align 1
  %tobool439 = icmp ne i8 %238, 0
  br i1 %tobool439, label %if.then440, label %if.end478

if.then440:                                       ; preds = %if.end438
  %239 = load ptr, ptr %pLoop, align 8
  %maskSelf441 = getelementptr inbounds nuw %struct.WhereLoop, ptr %239, i32 0, i32 1
  %240 = load i64, ptr %maskSelf441, align 8
  %241 = load i64, ptr %orderDistinctMask, align 8
  %or442 = or i64 %241, %240
  store i64 %or442, ptr %orderDistinctMask, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond443

for.cond443:                                      ; preds = %for.inc475, %if.then440
  %242 = load i32, ptr %i, align 4
  %243 = load i16, ptr %nOrderBy, align 2
  %conv444 = zext i16 %243 to i32
  %cmp445 = icmp slt i32 %242, %conv444
  br i1 %cmp445, label %for.body447, label %for.end477

for.body447:                                      ; preds = %for.cond443
  %244 = load i32, ptr %i, align 4
  %sh_prom448 = zext i32 %244 to i64
  %shl449 = shl i64 1, %sh_prom448
  %245 = load i64, ptr %obSat, align 8
  %and450 = and i64 %shl449, %245
  %tobool451 = icmp ne i64 %and450, 0
  br i1 %tobool451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %for.body447
  br label %for.inc475

if.end453:                                        ; preds = %for.body447
  %246 = load ptr, ptr %pOrderBy.addr, align 8
  %a454 = getelementptr inbounds nuw %struct.ExprList, ptr %246, i32 0, i32 1
  %247 = load i32, ptr %i, align 4
  %idxprom455 = sext i32 %247 to i64
  %arrayidx456 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a454, i64 0, i64 %idxprom455
  %pExpr457 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx456, i32 0, i32 0
  %248 = load ptr, ptr %pExpr457, align 8
  store ptr %248, ptr %p, align 8
  %249 = load ptr, ptr %pWInfo.addr, align 8
  %sMaskSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %249, i32 0, i32 23
  %250 = load ptr, ptr %p, align 8
  %call458 = call i64 @sqlite3WhereExprUsage(ptr noundef %sMaskSet, ptr noundef %250)
  store i64 %call458, ptr %mTerm, align 8
  %251 = load i64, ptr %mTerm, align 8
  %cmp459 = icmp eq i64 %251, 0
  br i1 %cmp459, label %land.lhs.true461, label %if.end465

land.lhs.true461:                                 ; preds = %if.end453
  %252 = load ptr, ptr %p, align 8
  %call462 = call i32 @sqlite3ExprIsConstant(ptr noundef %252)
  %tobool463 = icmp ne i32 %call462, 0
  br i1 %tobool463, label %if.end465, label %if.then464

if.then464:                                       ; preds = %land.lhs.true461
  br label %for.inc475

if.end465:                                        ; preds = %land.lhs.true461, %if.end453
  %253 = load i64, ptr %mTerm, align 8
  %254 = load i64, ptr %orderDistinctMask, align 8
  %not466 = xor i64 %254, -1
  %and467 = and i64 %253, %not466
  %cmp468 = icmp eq i64 %and467, 0
  br i1 %cmp468, label %if.then470, label %if.end474

if.then470:                                       ; preds = %if.end465
  %255 = load i32, ptr %i, align 4
  %sh_prom471 = zext i32 %255 to i64
  %shl472 = shl i64 1, %sh_prom471
  %256 = load i64, ptr %obSat, align 8
  %or473 = or i64 %256, %shl472
  store i64 %or473, ptr %obSat, align 8
  br label %if.end474

if.end474:                                        ; preds = %if.then470, %if.end465
  br label %for.inc475

for.inc475:                                       ; preds = %if.end474, %if.then464, %if.then452
  %257 = load i32, ptr %i, align 4
  %inc476 = add nsw i32 %257, 1
  store i32 %inc476, ptr %i, align 4
  br label %for.cond443, !llvm.loop !12

for.end477:                                       ; preds = %for.cond443
  br label %if.end478

if.end478:                                        ; preds = %for.end477, %if.end438
  br label %for.inc479

for.inc479:                                       ; preds = %if.end478, %if.then38
  %258 = load i32, ptr %iLoop, align 4
  %inc480 = add nsw i32 %258, 1
  store i32 %inc480, ptr %iLoop, align 4
  br label %for.cond, !llvm.loop !13

for.end481:                                       ; preds = %if.end46, %land.end
  %259 = load i64, ptr %obSat, align 8
  %260 = load i64, ptr %obDone, align 8
  %cmp482 = icmp eq i64 %259, %260
  br i1 %cmp482, label %if.then484, label %if.end486

if.then484:                                       ; preds = %for.end481
  %261 = load i16, ptr %nOrderBy, align 2
  %conv485 = trunc i16 %261 to i8
  store i8 %conv485, ptr %retval, align 1
  br label %return

if.end486:                                        ; preds = %for.end481
  %262 = load i8, ptr %isOrderDistinct, align 1
  %tobool487 = icmp ne i8 %262, 0
  br i1 %tobool487, label %if.end506, label %if.then488

if.then488:                                       ; preds = %if.end486
  %263 = load i16, ptr %nOrderBy, align 2
  %conv489 = zext i16 %263 to i32
  %sub490 = sub nsw i32 %conv489, 1
  store i32 %sub490, ptr %i, align 4
  br label %for.cond491

for.cond491:                                      ; preds = %for.inc504, %if.then488
  %264 = load i32, ptr %i, align 4
  %cmp492 = icmp sgt i32 %264, 0
  br i1 %cmp492, label %for.body494, label %for.end505

for.body494:                                      ; preds = %for.cond491
  %265 = load i32, ptr %i, align 4
  %sh_prom495 = zext i32 %265 to i64
  %shl496 = shl i64 1, %sh_prom495
  %sub497 = sub i64 %shl496, 1
  store i64 %sub497, ptr %m, align 8
  %266 = load i64, ptr %obSat, align 8
  %267 = load i64, ptr %m, align 8
  %and498 = and i64 %266, %267
  %268 = load i64, ptr %m, align 8
  %cmp499 = icmp eq i64 %and498, %268
  br i1 %cmp499, label %if.then501, label %if.end503

if.then501:                                       ; preds = %for.body494
  %269 = load i32, ptr %i, align 4
  %conv502 = trunc i32 %269 to i8
  store i8 %conv502, ptr %retval, align 1
  br label %return

if.end503:                                        ; preds = %for.body494
  br label %for.inc504

for.inc504:                                       ; preds = %if.end503
  %270 = load i32, ptr %i, align 4
  %dec = add nsw i32 %270, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond491, !llvm.loop !14

for.end505:                                       ; preds = %for.cond491
  store i8 0, ptr %retval, align 1
  br label %return

if.end506:                                        ; preds = %if.end486
  store i8 -1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end506, %for.end505, %if.then501, %if.then484, %if.then154, %if.then8, %if.then
  %271 = load i8, ptr %retval, align 1
  ret i8 %271
}

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
!14 = distinct !{!14, !7}
