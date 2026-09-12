; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
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
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.anon.20 = type { i32, i8, i8, i16, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.InLoop = type { i32, i32, i32, i32, i8 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.WhereOrInfo = type { %struct.WhereClause, i64 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@__const.sqlite3WhereCodeOneLoopStart.aMoveOp = external hidden unnamed_addr constant [4 x i8], align 1
@sqlite3WhereCodeOneLoopStart.aStartOp = external hidden constant [8 x i8], align 1
@sqlite3WhereCodeOneLoopStart.aEndOp = external hidden constant [4 x i8], align 1
@.str.778 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.779 = external hidden unnamed_addr constant [9 x i8], align 1
@sqlite3WhereCodeOneLoopStart.aStep = external hidden constant [2 x i8], align 1
@sqlite3WhereCodeOneLoopStart.aStart = external hidden constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTemp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCanBeNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplainPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereBegin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereExplainOneScan(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i64 @sqlite3WhereCodeOneLoopStart(ptr noundef %pParse, ptr noundef %v, ptr noundef %pWInfo, i32 noundef %iLevel, ptr noundef %pLevel, i64 noundef %notReady) #0 {
entry:
  %retval = alloca i64, align 8
  %pParse.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pWInfo.addr = alloca ptr, align 8
  %iLevel.addr = alloca i32, align 4
  %pLevel.addr = alloca ptr, align 8
  %notReady.addr = alloca i64, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iCur = alloca i32, align 4
  %addrNxt = alloca i32, align 4
  %bRev = alloca i32, align 4
  %pLoop = alloca ptr, align 8
  %pWC = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTabItem = alloca ptr, align 8
  %addrBrk = alloca i32, align 4
  %addrHalt = alloca i32, align 4
  %addrCont = alloca i32, align 4
  %iRowidReg = alloca i32, align 4
  %iReleaseReg = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %iLoop = alloca i32, align 4
  %regYield = alloca i32, align 4
  %iReg = alloca i32, align 4
  %addrNotFound = alloca i32, align 4
  %nConstraint = alloca i32, align 4
  %iIn = alloca i32, align 4
  %iTarget = alloca i32, align 4
  %pRight = alloca ptr, align 8
  %pCompare = alloca ptr, align 8
  %pRight107 = alloca ptr, align 8
  %pOp = alloca ptr, align 8
  %testOp = alloca i32, align 4
  %start = alloca i32, align 4
  %memEndValue = alloca i32, align 4
  %pStart = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %rTemp = alloca i32, align 4
  %op205 = alloca i32, align 4
  %aMoveOp = alloca [4 x i8], align 1
  %pX240 = alloca ptr, align 8
  %nEq = alloca i16, align 2
  %nBtm = alloca i16, align 2
  %nTop = alloca i16, align 2
  %regBase = alloca i32, align 4
  %pRangeStart = alloca ptr, align 8
  %pRangeEnd = alloca ptr, align 8
  %startEq = alloca i32, align 4
  %endEq = alloca i32, align 4
  %start_constraints = alloca i32, align 4
  %nConstraint298 = alloca i32, align 4
  %iIdxCur = alloca i32, align 4
  %nExtraReg = alloca i32, align 4
  %op299 = alloca i32, align 4
  %zStartAff = alloca ptr, align 8
  %zEndAff = alloca ptr, align 8
  %bSeekPastNull = alloca i8, align 1
  %bStopAtNull = alloca i8, align 1
  %omitTable = alloca i32, align 4
  %regBignull = alloca i32, align 4
  %t = alloca ptr, align 8
  %t419 = alloca i8, align 1
  %t420 = alloca i8, align 1
  %pRight464 = alloca ptr, align 8
  %pRight563 = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %pOrWc = alloca ptr, align 8
  %pOrTab = alloca ptr, align 8
  %pCov = alloca ptr, align 8
  %iCovCur = alloca i32, align 4
  %regReturn771 = alloca i32, align 4
  %regRowset = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %iLoopBody = alloca i32, align 4
  %iRetInit = alloca i32, align 4
  %untestedTerms = alloca i32, align 4
  %ii = alloca i32, align 4
  %wctrlFlags775 = alloca i16, align 2
  %pAndExpr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %nNotReady = alloca i32, align 4
  %origSrc = alloca ptr, align 8
  %pPk839 = alloca ptr, align 8
  %iTerm = alloca i32, align 4
  %pExpr859 = alloca ptr, align 8
  %pOrTerm = alloca ptr, align 8
  %pSubWInfo = alloca ptr, align 8
  %pOrExpr = alloca ptr, align 8
  %jmp1 = alloca i32, align 4
  %pSubLoop = alloca ptr, align 8
  %addrExplain = alloca i32, align 4
  %iSet = alloca i32, align 4
  %pPk956 = alloca ptr, align 8
  %nPk = alloca i32, align 4
  %iPk = alloca i32, align 4
  %r = alloca i32, align 4
  %iCol = alloca i32, align 4
  %iNext = alloca i32, align 4
  %pE = alloca ptr, align 8
  %skipLikeAddr = alloca i32, align 4
  %x = alloca i32, align 4
  %pE1172 = alloca ptr, align 8
  %sEAlt = alloca %struct.Expr, align 8
  %pAlt = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store i32 %iLevel, ptr %iLevel.addr, align 4
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store i64 %notReady, ptr %notReady.addr, align 8
  store i32 0, ptr %iRowidReg, align 4
  store i32 0, ptr %iReleaseReg, align 4
  store ptr null, ptr %pIdx, align 8
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %sWC = getelementptr inbounds nuw %struct.WhereInfo, ptr %0, i32 0, i32 22
  store ptr %sWC, ptr %pWC, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db1, align 8
  store ptr %2, ptr %db, align 8
  %3 = load ptr, ptr %pLevel.addr, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %3, i32 0, i32 20
  %4 = load ptr, ptr %pWLoop, align 8
  store ptr %4, ptr %pLoop, align 8
  %5 = load ptr, ptr %pWInfo.addr, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pLevel.addr, align 8
  %iFrom = getelementptr inbounds nuw %struct.WhereLevel, ptr %7, i32 0, i32 13
  %8 = load i8, ptr %iFrom, align 4
  %idxprom = zext i8 %8 to i64
  %arrayidx = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pTabItem, align 8
  %9 = load ptr, ptr %pTabItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %9, i32 0, i32 10
  %10 = load i32, ptr %iCursor, align 8
  store i32 %10, ptr %iCur, align 4
  %11 = load i64, ptr %notReady.addr, align 8
  %12 = load ptr, ptr %pWInfo.addr, align 8
  %sMaskSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %12, i32 0, i32 23
  %13 = load i32, ptr %iCur, align 4
  %call = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet, i32 noundef %13)
  %not = xor i64 %call, -1
  %and = and i64 %11, %not
  %14 = load ptr, ptr %pLevel.addr, align 8
  %notReady2 = getelementptr inbounds nuw %struct.WhereLevel, ptr %14, i32 0, i32 21
  store i64 %and, ptr %notReady2, align 8
  %15 = load ptr, ptr %pWInfo.addr, align 8
  %revMask = getelementptr inbounds nuw %struct.WhereInfo, ptr %15, i32 0, i32 20
  %16 = load i64, ptr %revMask, align 8
  %17 = load i32, ptr %iLevel.addr, align 4
  %sh_prom = zext i32 %17 to i64
  %shr = lshr i64 %16, %sh_prom
  %and3 = and i64 %shr, 1
  %conv = trunc i64 %and3 to i32
  store i32 %conv, ptr %bRev, align 4
  %18 = load ptr, ptr %pParse.addr, align 8
  %call4 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %18)
  %19 = load ptr, ptr %pLevel.addr, align 8
  %addrNxt5 = getelementptr inbounds nuw %struct.WhereLevel, ptr %19, i32 0, i32 4
  store i32 %call4, ptr %addrNxt5, align 8
  %20 = load ptr, ptr %pLevel.addr, align 8
  %addrBrk6 = getelementptr inbounds nuw %struct.WhereLevel, ptr %20, i32 0, i32 3
  store i32 %call4, ptr %addrBrk6, align 4
  store i32 %call4, ptr %addrBrk, align 4
  %21 = load ptr, ptr %pParse.addr, align 8
  %call7 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %21)
  %22 = load ptr, ptr %pLevel.addr, align 8
  %addrCont8 = getelementptr inbounds nuw %struct.WhereLevel, ptr %22, i32 0, i32 6
  store i32 %call7, ptr %addrCont8, align 8
  store i32 %call7, ptr %addrCont, align 4
  %23 = load ptr, ptr %pLevel.addr, align 8
  %iFrom9 = getelementptr inbounds nuw %struct.WhereLevel, ptr %23, i32 0, i32 13
  %24 = load i8, ptr %iFrom9, align 4
  %conv10 = zext i8 %24 to i32
  %cmp = icmp sgt i32 %conv10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load ptr, ptr %pTabItem, align 8
  %arrayidx12 = getelementptr inbounds %struct.SrcList_item, ptr %25, i64 0
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx12, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %26 = load i8, ptr %jointype, align 4
  %conv13 = zext i8 %26 to i32
  %and14 = and i32 %conv13, 8
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 18
  %28 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %nMem, align 8
  %29 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin = getelementptr inbounds nuw %struct.WhereLevel, ptr %29, i32 0, i32 0
  store i32 %inc, ptr %iLeftJoin, align 8
  %30 = load ptr, ptr %v.addr, align 8
  %31 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin17 = getelementptr inbounds nuw %struct.WhereLevel, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %iLeftJoin17, align 8
  %call18 = call i32 @sqlite3VdbeAddOp2(ptr noundef %30, i32 noundef 70, i32 noundef 0, i32 noundef %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %33 = load i32, ptr %iLevel.addr, align 4
  store i32 %33, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, ptr %j, align 4
  %cmp19 = icmp sgt i32 %34, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %35 = load ptr, ptr %pWInfo.addr, align 8
  %a21 = getelementptr inbounds nuw %struct.WhereInfo, ptr %35, i32 0, i32 24
  %36 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a21, i64 0, i64 %idxprom22
  %iLeftJoin24 = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx23, i32 0, i32 0
  %37 = load i32, ptr %iLeftJoin24, align 8
  %cmp25 = icmp eq i32 %37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %38 = phi i1 [ false, %for.cond ], [ %cmp25, %land.rhs ]
  br i1 %38, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %j, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %40 = load ptr, ptr %pWInfo.addr, align 8
  %a27 = getelementptr inbounds nuw %struct.WhereInfo, ptr %40, i32 0, i32 24
  %41 = load i32, ptr %j, align 4
  %idxprom28 = sext i32 %41 to i64
  %arrayidx29 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a27, i64 0, i64 %idxprom28
  %addrBrk30 = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx29, i32 0, i32 3
  %42 = load i32, ptr %addrBrk30, align 4
  store i32 %42, ptr %addrHalt, align 4
  %43 = load ptr, ptr %pTabItem, align 8
  %fg31 = getelementptr inbounds nuw %struct.SrcList_item, ptr %43, i32 0, i32 9
  %viaCoroutine = getelementptr inbounds nuw %struct.anon, ptr %fg31, i32 0, i32 1
  %bf.load = load i8, ptr %viaCoroutine, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.end
  %44 = load ptr, ptr %pTabItem, align 8
  %regReturn = getelementptr inbounds nuw %struct.SrcList_item, ptr %44, i32 0, i32 7
  %45 = load i32, ptr %regReturn, align 4
  store i32 %45, ptr %regYield, align 4
  %46 = load ptr, ptr %v.addr, align 8
  %47 = load i32, ptr %regYield, align 4
  %48 = load ptr, ptr %pTabItem, align 8
  %addrFillSub = getelementptr inbounds nuw %struct.SrcList_item, ptr %48, i32 0, i32 6
  %49 = load i32, ptr %addrFillSub, align 8
  %call33 = call i32 @sqlite3VdbeAddOp3(ptr noundef %46, i32 noundef 13, i32 noundef %47, i32 noundef 0, i32 noundef %49)
  %50 = load ptr, ptr %v.addr, align 8
  %51 = load i32, ptr %regYield, align 4
  %52 = load i32, ptr %addrBrk, align 4
  %call34 = call i32 @sqlite3VdbeAddOp2(ptr noundef %50, i32 noundef 14, i32 noundef %51, i32 noundef %52)
  %53 = load ptr, ptr %pLevel.addr, align 8
  %p2 = getelementptr inbounds nuw %struct.WhereLevel, ptr %53, i32 0, i32 18
  store i32 %call34, ptr %p2, align 4
  %54 = load ptr, ptr %pLevel.addr, align 8
  %op = getelementptr inbounds nuw %struct.WhereLevel, ptr %54, i32 0, i32 14
  store i8 11, ptr %op, align 1
  br label %if.end1082

if.else:                                          ; preds = %for.end
  %55 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %55, i32 0, i32 8
  %56 = load i32, ptr %wsFlags, align 8
  %and35 = and i32 %56, 1024
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %if.else140

if.then38:                                        ; preds = %if.else
  %57 = load ptr, ptr %pLoop, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %57, i32 0, i32 9
  %58 = load i16, ptr %nLTerm, align 4
  %conv39 = zext i16 %58 to i32
  store i32 %conv39, ptr %nConstraint, align 4
  %59 = load ptr, ptr %pParse.addr, align 8
  %60 = load i32, ptr %nConstraint, align 4
  %add = add nsw i32 %60, 2
  %call40 = call i32 @sqlite3GetTempRange(ptr noundef %59, i32 noundef %add)
  store i32 %call40, ptr %iReg, align 4
  %61 = load ptr, ptr %pLevel.addr, align 8
  %addrBrk41 = getelementptr inbounds nuw %struct.WhereLevel, ptr %61, i32 0, i32 3
  %62 = load i32, ptr %addrBrk41, align 4
  store i32 %62, ptr %addrNotFound, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc63, %if.then38
  %63 = load i32, ptr %j, align 4
  %64 = load i32, ptr %nConstraint, align 4
  %cmp43 = icmp slt i32 %63, %64
  br i1 %cmp43, label %for.body45, label %for.end65

for.body45:                                       ; preds = %for.cond42
  %65 = load i32, ptr %iReg, align 4
  %66 = load i32, ptr %j, align 4
  %add46 = add nsw i32 %65, %66
  %add47 = add nsw i32 %add46, 2
  store i32 %add47, ptr %iTarget, align 4
  %67 = load ptr, ptr %pLoop, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %aLTerm, align 8
  %69 = load i32, ptr %j, align 4
  %idxprom48 = sext i32 %69 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %68, i64 %idxprom48
  %70 = load ptr, ptr %arrayidx49, align 8
  store ptr %70, ptr %pTerm, align 8
  %71 = load ptr, ptr %pTerm, align 8
  %cmp50 = icmp eq ptr %71, null
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.body45
  br label %for.inc63

if.end53:                                         ; preds = %for.body45
  %72 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %72, i32 0, i32 4
  %73 = load i16, ptr %eOperator, align 4
  %conv54 = zext i16 %73 to i32
  %and55 = and i32 %conv54, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.end53
  %74 = load ptr, ptr %pParse.addr, align 8
  %75 = load ptr, ptr %pTerm, align 8
  %76 = load ptr, ptr %pLevel.addr, align 8
  %77 = load i32, ptr %j, align 4
  %78 = load i32, ptr %bRev, align 4
  %79 = load i32, ptr %iTarget, align 4
  %call58 = call i32 @codeEqualityTerm(ptr noundef %74, ptr noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %79)
  %80 = load ptr, ptr %pLevel.addr, align 8
  %addrNxt59 = getelementptr inbounds nuw %struct.WhereLevel, ptr %80, i32 0, i32 4
  %81 = load i32, ptr %addrNxt59, align 8
  store i32 %81, ptr %addrNotFound, align 4
  br label %if.end62

if.else60:                                        ; preds = %if.end53
  %82 = load ptr, ptr %pTerm, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %pExpr, align 8
  %pRight61 = getelementptr inbounds nuw %struct.Expr, ptr %83, i32 0, i32 5
  %84 = load ptr, ptr %pRight61, align 8
  store ptr %84, ptr %pRight, align 8
  %85 = load ptr, ptr %pParse.addr, align 8
  %86 = load ptr, ptr %pRight, align 8
  %87 = load i32, ptr %iTarget, align 4
  call void @codeExprOrVector(ptr noundef %85, ptr noundef %86, i32 noundef %87, i32 noundef 1)
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.then57
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62, %if.then52
  %88 = load i32, ptr %j, align 4
  %inc64 = add nsw i32 %88, 1
  store i32 %inc64, ptr %j, align 4
  br label %for.cond42, !llvm.loop !8

for.end65:                                        ; preds = %for.cond42
  %89 = load ptr, ptr %v.addr, align 8
  %90 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %90, i32 0, i32 7
  %idxNum = getelementptr inbounds nuw %struct.anon.20, ptr %u, i32 0, i32 0
  %91 = load i32, ptr %idxNum, align 8
  %92 = load i32, ptr %iReg, align 4
  %call66 = call i32 @sqlite3VdbeAddOp2(ptr noundef %89, i32 noundef 70, i32 noundef %91, i32 noundef %92)
  %93 = load ptr, ptr %v.addr, align 8
  %94 = load i32, ptr %nConstraint, align 4
  %95 = load i32, ptr %iReg, align 4
  %add67 = add nsw i32 %95, 1
  %call68 = call i32 @sqlite3VdbeAddOp2(ptr noundef %93, i32 noundef 70, i32 noundef %94, i32 noundef %add67)
  %96 = load ptr, ptr %v.addr, align 8
  %97 = load i32, ptr %iCur, align 4
  %98 = load i32, ptr %addrNotFound, align 4
  %99 = load i32, ptr %iReg, align 4
  %100 = load ptr, ptr %pLoop, align 8
  %u69 = getelementptr inbounds nuw %struct.WhereLoop, ptr %100, i32 0, i32 7
  %idxStr = getelementptr inbounds nuw %struct.anon.20, ptr %u69, i32 0, i32 4
  %101 = load ptr, ptr %idxStr, align 8
  %102 = load ptr, ptr %pLoop, align 8
  %u70 = getelementptr inbounds nuw %struct.WhereLoop, ptr %102, i32 0, i32 7
  %needFree = getelementptr inbounds nuw %struct.anon.20, ptr %u70, i32 0, i32 1
  %103 = load i8, ptr %needFree, align 4
  %conv71 = zext i8 %103 to i32
  %tobool72 = icmp ne i32 %conv71, 0
  %104 = zext i1 %tobool72 to i64
  %cond = select i1 %tobool72, i32 -7, i32 -1
  %call73 = call i32 @sqlite3VdbeAddOp4(ptr noundef %96, i32 noundef 9, i32 noundef %97, i32 noundef %98, i32 noundef %99, ptr noundef %101, i32 noundef %cond)
  %105 = load ptr, ptr %pLoop, align 8
  %u74 = getelementptr inbounds nuw %struct.WhereLoop, ptr %105, i32 0, i32 7
  %needFree75 = getelementptr inbounds nuw %struct.anon.20, ptr %u74, i32 0, i32 1
  store i8 0, ptr %needFree75, align 4
  %106 = load i32, ptr %iCur, align 4
  %107 = load ptr, ptr %pLevel.addr, align 8
  %p1 = getelementptr inbounds nuw %struct.WhereLevel, ptr %107, i32 0, i32 17
  store i32 %106, ptr %p1, align 8
  %108 = load ptr, ptr %pWInfo.addr, align 8
  %eOnePass = getelementptr inbounds nuw %struct.WhereInfo, ptr %108, i32 0, i32 14
  %109 = load i8, ptr %eOnePass, align 1
  %conv76 = zext i8 %109 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  %110 = zext i1 %tobool77 to i64
  %cond78 = select i1 %tobool77, i32 170, i32 60
  %conv79 = trunc i32 %cond78 to i8
  %111 = load ptr, ptr %pLevel.addr, align 8
  %op80 = getelementptr inbounds nuw %struct.WhereLevel, ptr %111, i32 0, i32 14
  store i8 %conv79, ptr %op80, align 1
  %112 = load ptr, ptr %v.addr, align 8
  %call81 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %112)
  %113 = load ptr, ptr %pLevel.addr, align 8
  %p282 = getelementptr inbounds nuw %struct.WhereLevel, ptr %113, i32 0, i32 18
  store i32 %call81, ptr %p282, align 4
  %114 = load ptr, ptr %pLevel.addr, align 8
  %u83 = getelementptr inbounds nuw %struct.WhereLevel, ptr %114, i32 0, i32 19
  %nIn = getelementptr inbounds nuw %struct.anon.17, ptr %u83, i32 0, i32 0
  %115 = load i32, ptr %nIn, align 8
  store i32 %115, ptr %iIn, align 4
  %116 = load i32, ptr %nConstraint, align 4
  %sub = sub nsw i32 %116, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc137, %for.end65
  %117 = load i32, ptr %j, align 4
  %cmp85 = icmp sge i32 %117, 0
  br i1 %cmp85, label %for.body87, label %for.end139

for.body87:                                       ; preds = %for.cond84
  %118 = load ptr, ptr %pLoop, align 8
  %aLTerm88 = getelementptr inbounds nuw %struct.WhereLoop, ptr %118, i32 0, i32 12
  %119 = load ptr, ptr %aLTerm88, align 8
  %120 = load i32, ptr %j, align 4
  %idxprom89 = sext i32 %120 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %119, i64 %idxprom89
  %121 = load ptr, ptr %arrayidx90, align 8
  store ptr %121, ptr %pTerm, align 8
  %122 = load i32, ptr %j, align 4
  %cmp91 = icmp slt i32 %122, 16
  br i1 %cmp91, label %land.lhs.true93, label %if.else100

land.lhs.true93:                                  ; preds = %for.body87
  %123 = load ptr, ptr %pLoop, align 8
  %u94 = getelementptr inbounds nuw %struct.WhereLoop, ptr %123, i32 0, i32 7
  %omitMask = getelementptr inbounds nuw %struct.anon.20, ptr %u94, i32 0, i32 3
  %124 = load i16, ptr %omitMask, align 2
  %conv95 = zext i16 %124 to i32
  %125 = load i32, ptr %j, align 4
  %shr96 = ashr i32 %conv95, %125
  %and97 = and i32 %shr96, 1
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then99, label %if.else100

if.then99:                                        ; preds = %land.lhs.true93
  %126 = load ptr, ptr %pLevel.addr, align 8
  %127 = load ptr, ptr %pTerm, align 8
  call void @disableTerm(ptr noundef %126, ptr noundef %127)
  br label %if.end136

if.else100:                                       ; preds = %land.lhs.true93, %for.body87
  %128 = load ptr, ptr %pTerm, align 8
  %eOperator101 = getelementptr inbounds nuw %struct.WhereTerm, ptr %128, i32 0, i32 4
  %129 = load i16, ptr %eOperator101, align 4
  %conv102 = zext i16 %129 to i32
  %and103 = and i32 %conv102, 1
  %cmp104 = icmp ne i32 %and103, 0
  br i1 %cmp104, label %if.then106, label %if.end135

if.then106:                                       ; preds = %if.else100
  %130 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %130, i32 0, i32 19
  %131 = load i8, ptr %mallocFailed, align 1
  %tobool108 = icmp ne i8 %131, 0
  br i1 %tobool108, label %if.end119, label %if.then109

if.then109:                                       ; preds = %if.then106
  %132 = load ptr, ptr %v.addr, align 8
  %133 = load ptr, ptr %pLevel.addr, align 8
  %u110 = getelementptr inbounds nuw %struct.WhereLevel, ptr %133, i32 0, i32 19
  %aInLoop = getelementptr inbounds nuw %struct.anon.17, ptr %u110, i32 0, i32 1
  %134 = load ptr, ptr %aInLoop, align 8
  %135 = load i32, ptr %iIn, align 4
  %dec111 = add nsw i32 %135, -1
  store i32 %dec111, ptr %iIn, align 4
  %idxprom112 = sext i32 %dec111 to i64
  %arrayidx113 = getelementptr inbounds %struct.InLoop, ptr %134, i64 %idxprom112
  %addrInTop = getelementptr inbounds nuw %struct.InLoop, ptr %arrayidx113, i32 0, i32 1
  %136 = load i32, ptr %addrInTop, align 4
  %call114 = call ptr @sqlite3VdbeGetOp(ptr noundef %132, i32 noundef %136)
  store ptr %call114, ptr %pOp, align 8
  %137 = load ptr, ptr %v.addr, align 8
  %138 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %138, i32 0, i32 0
  %139 = load i8, ptr %opcode, align 8
  %conv115 = zext i8 %139 to i32
  %140 = load ptr, ptr %pOp, align 8
  %p1116 = getelementptr inbounds nuw %struct.VdbeOp, ptr %140, i32 0, i32 3
  %141 = load i32, ptr %p1116, align 4
  %142 = load ptr, ptr %pOp, align 8
  %p2117 = getelementptr inbounds nuw %struct.VdbeOp, ptr %142, i32 0, i32 4
  %143 = load i32, ptr %p2117, align 8
  %144 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %144, i32 0, i32 5
  %145 = load i32, ptr %p3, align 4
  %call118 = call i32 @sqlite3VdbeAddOp3(ptr noundef %137, i32 noundef %conv115, i32 noundef %141, i32 noundef %143, i32 noundef %145)
  br label %if.end119

if.end119:                                        ; preds = %if.then109, %if.then106
  %146 = load ptr, ptr %pParse.addr, align 8
  %call120 = call ptr @sqlite3PExpr(ptr noundef %146, i32 noundef 53, ptr noundef null, ptr noundef null)
  store ptr %call120, ptr %pCompare, align 8
  %147 = load ptr, ptr %pCompare, align 8
  %tobool121 = icmp ne ptr %147, null
  br i1 %tobool121, label %if.then122, label %if.end134

if.then122:                                       ; preds = %if.end119
  %148 = load ptr, ptr %pTerm, align 8
  %pExpr123 = getelementptr inbounds nuw %struct.WhereTerm, ptr %148, i32 0, i32 0
  %149 = load ptr, ptr %pExpr123, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %149, i32 0, i32 4
  %150 = load ptr, ptr %pLeft, align 8
  %151 = load ptr, ptr %pCompare, align 8
  %pLeft124 = getelementptr inbounds nuw %struct.Expr, ptr %151, i32 0, i32 4
  store ptr %150, ptr %pLeft124, align 8
  %152 = load ptr, ptr %db, align 8
  %call125 = call ptr @sqlite3Expr(ptr noundef %152, i32 noundef 171, ptr noundef null)
  store ptr %call125, ptr %pRight107, align 8
  %153 = load ptr, ptr %pCompare, align 8
  %pRight126 = getelementptr inbounds nuw %struct.Expr, ptr %153, i32 0, i32 5
  store ptr %call125, ptr %pRight126, align 8
  %154 = load ptr, ptr %pRight107, align 8
  %tobool127 = icmp ne ptr %154, null
  br i1 %tobool127, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.then122
  %155 = load i32, ptr %iReg, align 4
  %156 = load i32, ptr %j, align 4
  %add129 = add nsw i32 %155, %156
  %add130 = add nsw i32 %add129, 2
  %157 = load ptr, ptr %pRight107, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %157, i32 0, i32 8
  store i32 %add130, ptr %iTable, align 4
  %158 = load ptr, ptr %pParse.addr, align 8
  %159 = load ptr, ptr %pCompare, align 8
  %160 = load ptr, ptr %pLevel.addr, align 8
  %addrCont131 = getelementptr inbounds nuw %struct.WhereLevel, ptr %160, i32 0, i32 6
  %161 = load i32, ptr %addrCont131, align 8
  call void @sqlite3ExprIfFalse(ptr noundef %158, ptr noundef %159, i32 noundef %161, i32 noundef 0)
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.then122
  %162 = load ptr, ptr %pCompare, align 8
  %pLeft133 = getelementptr inbounds nuw %struct.Expr, ptr %162, i32 0, i32 4
  store ptr null, ptr %pLeft133, align 8
  %163 = load ptr, ptr %db, align 8
  %164 = load ptr, ptr %pCompare, align 8
  call void @sqlite3ExprDelete(ptr noundef %163, ptr noundef %164)
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %if.end119
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.else100
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then99
  br label %for.inc137

for.inc137:                                       ; preds = %if.end136
  %165 = load i32, ptr %j, align 4
  %dec138 = add nsw i32 %165, -1
  store i32 %dec138, ptr %j, align 4
  br label %for.cond84, !llvm.loop !9

for.end139:                                       ; preds = %for.cond84
  br label %if.end1081

if.else140:                                       ; preds = %if.else
  %166 = load ptr, ptr %pLoop, align 8
  %wsFlags141 = getelementptr inbounds nuw %struct.WhereLoop, ptr %166, i32 0, i32 8
  %167 = load i32, ptr %wsFlags141, align 8
  %and142 = and i32 %167, 256
  %cmp143 = icmp ne i32 %and142, 0
  br i1 %cmp143, label %land.lhs.true145, label %if.else171

land.lhs.true145:                                 ; preds = %if.else140
  %168 = load ptr, ptr %pLoop, align 8
  %wsFlags146 = getelementptr inbounds nuw %struct.WhereLoop, ptr %168, i32 0, i32 8
  %169 = load i32, ptr %wsFlags146, align 8
  %and147 = and i32 %169, 5
  %cmp148 = icmp ne i32 %and147, 0
  br i1 %cmp148, label %if.then150, label %if.else171

if.then150:                                       ; preds = %land.lhs.true145
  %170 = load ptr, ptr %pLoop, align 8
  %aLTerm151 = getelementptr inbounds nuw %struct.WhereLoop, ptr %170, i32 0, i32 12
  %171 = load ptr, ptr %aLTerm151, align 8
  %arrayidx152 = getelementptr inbounds ptr, ptr %171, i64 0
  %172 = load ptr, ptr %arrayidx152, align 8
  store ptr %172, ptr %pTerm, align 8
  %173 = load ptr, ptr %pParse.addr, align 8
  %nMem153 = getelementptr inbounds nuw %struct.Parse, ptr %173, i32 0, i32 18
  %174 = load i32, ptr %nMem153, align 8
  %inc154 = add nsw i32 %174, 1
  store i32 %inc154, ptr %nMem153, align 8
  store i32 %inc154, ptr %iReleaseReg, align 4
  %175 = load ptr, ptr %pParse.addr, align 8
  %176 = load ptr, ptr %pTerm, align 8
  %177 = load ptr, ptr %pLevel.addr, align 8
  %178 = load i32, ptr %bRev, align 4
  %179 = load i32, ptr %iReleaseReg, align 4
  %call155 = call i32 @codeEqualityTerm(ptr noundef %175, ptr noundef %176, ptr noundef %177, i32 noundef 0, i32 noundef %178, i32 noundef %179)
  store i32 %call155, ptr %iRowidReg, align 4
  %180 = load i32, ptr %iRowidReg, align 4
  %181 = load i32, ptr %iReleaseReg, align 4
  %cmp156 = icmp ne i32 %180, %181
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.then150
  %182 = load ptr, ptr %pParse.addr, align 8
  %183 = load i32, ptr %iReleaseReg, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %182, i32 noundef %183)
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.then150
  %184 = load ptr, ptr %pLevel.addr, align 8
  %addrNxt160 = getelementptr inbounds nuw %struct.WhereLevel, ptr %184, i32 0, i32 4
  %185 = load i32, ptr %addrNxt160, align 8
  store i32 %185, ptr %addrNxt, align 4
  %186 = load ptr, ptr %v.addr, align 8
  %187 = load i32, ptr %iCur, align 4
  %188 = load i32, ptr %addrNxt, align 4
  %189 = load i32, ptr %iRowidReg, align 4
  %call161 = call i32 @sqlite3VdbeAddOp3(ptr noundef %186, i32 noundef 30, i32 noundef %187, i32 noundef %188, i32 noundef %189)
  %190 = load ptr, ptr %pLevel.addr, align 8
  %op162 = getelementptr inbounds nuw %struct.WhereLevel, ptr %190, i32 0, i32 14
  store i8 -86, ptr %op162, align 1
  %191 = load ptr, ptr %pTerm, align 8
  %prereqAll = getelementptr inbounds nuw %struct.WhereTerm, ptr %191, i32 0, i32 12
  %192 = load i64, ptr %prereqAll, align 8
  %193 = load ptr, ptr %pLevel.addr, align 8
  %notReady163 = getelementptr inbounds nuw %struct.WhereLevel, ptr %193, i32 0, i32 21
  %194 = load i64, ptr %notReady163, align 8
  %and164 = and i64 %192, %194
  %cmp165 = icmp eq i64 %and164, 0
  br i1 %cmp165, label %if.then167, label %if.end170

if.then167:                                       ; preds = %if.end159
  %195 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %195, i32 0, i32 3
  %196 = load i16, ptr %wtFlags, align 2
  %conv168 = zext i16 %196 to i32
  %or = or i32 %conv168, 4
  %conv169 = trunc i32 %or to i16
  store i16 %conv169, ptr %wtFlags, align 2
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.end159
  br label %if.end1080

if.else171:                                       ; preds = %land.lhs.true145, %if.else140
  %197 = load ptr, ptr %pLoop, align 8
  %wsFlags172 = getelementptr inbounds nuw %struct.WhereLoop, ptr %197, i32 0, i32 8
  %198 = load i32, ptr %wsFlags172, align 8
  %and173 = and i32 %198, 256
  %cmp174 = icmp ne i32 %and173, 0
  br i1 %cmp174, label %land.lhs.true176, label %if.else287

land.lhs.true176:                                 ; preds = %if.else171
  %199 = load ptr, ptr %pLoop, align 8
  %wsFlags177 = getelementptr inbounds nuw %struct.WhereLoop, ptr %199, i32 0, i32 8
  %200 = load i32, ptr %wsFlags177, align 8
  %and178 = and i32 %200, 2
  %cmp179 = icmp ne i32 %and178, 0
  br i1 %cmp179, label %if.then181, label %if.else287

if.then181:                                       ; preds = %land.lhs.true176
  store i32 170, ptr %testOp, align 4
  store i32 0, ptr %memEndValue, align 4
  store i32 0, ptr %j, align 4
  store ptr null, ptr %pEnd, align 8
  store ptr null, ptr %pStart, align 8
  %201 = load ptr, ptr %pLoop, align 8
  %wsFlags182 = getelementptr inbounds nuw %struct.WhereLoop, ptr %201, i32 0, i32 8
  %202 = load i32, ptr %wsFlags182, align 8
  %and183 = and i32 %202, 32
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then185, label %if.end190

if.then185:                                       ; preds = %if.then181
  %203 = load ptr, ptr %pLoop, align 8
  %aLTerm186 = getelementptr inbounds nuw %struct.WhereLoop, ptr %203, i32 0, i32 12
  %204 = load ptr, ptr %aLTerm186, align 8
  %205 = load i32, ptr %j, align 4
  %inc187 = add nsw i32 %205, 1
  store i32 %inc187, ptr %j, align 4
  %idxprom188 = sext i32 %205 to i64
  %arrayidx189 = getelementptr inbounds ptr, ptr %204, i64 %idxprom188
  %206 = load ptr, ptr %arrayidx189, align 8
  store ptr %206, ptr %pStart, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %if.then181
  %207 = load ptr, ptr %pLoop, align 8
  %wsFlags191 = getelementptr inbounds nuw %struct.WhereLoop, ptr %207, i32 0, i32 8
  %208 = load i32, ptr %wsFlags191, align 8
  %and192 = and i32 %208, 16
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then194, label %if.end199

if.then194:                                       ; preds = %if.end190
  %209 = load ptr, ptr %pLoop, align 8
  %aLTerm195 = getelementptr inbounds nuw %struct.WhereLoop, ptr %209, i32 0, i32 12
  %210 = load ptr, ptr %aLTerm195, align 8
  %211 = load i32, ptr %j, align 4
  %inc196 = add nsw i32 %211, 1
  store i32 %inc196, ptr %j, align 4
  %idxprom197 = sext i32 %211 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %210, i64 %idxprom197
  %212 = load ptr, ptr %arrayidx198, align 8
  store ptr %212, ptr %pEnd, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %if.end190
  %213 = load i32, ptr %bRev, align 4
  %tobool200 = icmp ne i32 %213, 0
  br i1 %tobool200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end199
  %214 = load ptr, ptr %pStart, align 8
  store ptr %214, ptr %pTerm, align 8
  %215 = load ptr, ptr %pEnd, align 8
  store ptr %215, ptr %pStart, align 8
  %216 = load ptr, ptr %pTerm, align 8
  store ptr %216, ptr %pEnd, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end199
  %217 = load ptr, ptr %pStart, align 8
  %tobool203 = icmp ne ptr %217, null
  br i1 %tobool203, label %if.then204, label %if.else233

if.then204:                                       ; preds = %if.end202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %aMoveOp, ptr align 1 @__const.sqlite3WhereCodeOneLoopStart.aMoveOp, i64 4, i1 false)
  %218 = load ptr, ptr %pStart, align 8
  %pExpr206 = getelementptr inbounds nuw %struct.WhereTerm, ptr %218, i32 0, i32 0
  %219 = load ptr, ptr %pExpr206, align 8
  store ptr %219, ptr %pX, align 8
  %220 = load ptr, ptr %pX, align 8
  %pRight207 = getelementptr inbounds nuw %struct.Expr, ptr %220, i32 0, i32 5
  %221 = load ptr, ptr %pRight207, align 8
  %call208 = call i32 @sqlite3ExprIsVector(ptr noundef %221)
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.then210, label %if.else222

if.then210:                                       ; preds = %if.then204
  %222 = load ptr, ptr %pParse.addr, align 8
  %call211 = call i32 @sqlite3GetTempReg(ptr noundef %222)
  store i32 %call211, ptr %rTemp, align 4
  store i32 %call211, ptr %r1, align 4
  %223 = load ptr, ptr %pParse.addr, align 8
  %224 = load ptr, ptr %pX, align 8
  %pRight212 = getelementptr inbounds nuw %struct.Expr, ptr %224, i32 0, i32 5
  %225 = load ptr, ptr %pRight212, align 8
  %226 = load i32, ptr %r1, align 4
  call void @codeExprOrVector(ptr noundef %223, ptr noundef %225, i32 noundef %226, i32 noundef 1)
  %227 = load ptr, ptr %pX, align 8
  %op213 = getelementptr inbounds nuw %struct.Expr, ptr %227, i32 0, i32 0
  %228 = load i8, ptr %op213, align 8
  %conv214 = zext i8 %228 to i32
  %sub215 = sub nsw i32 %conv214, 54
  %sub216 = sub nsw i32 %sub215, 1
  %and217 = and i32 %sub216, 3
  %or218 = or i32 %and217, 1
  %idxprom219 = sext i32 %or218 to i64
  %arrayidx220 = getelementptr inbounds [4 x i8], ptr %aMoveOp, i64 0, i64 %idxprom219
  %229 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %229 to i32
  store i32 %conv221, ptr %op205, align 4
  br label %if.end231

if.else222:                                       ; preds = %if.then204
  %230 = load ptr, ptr %pParse.addr, align 8
  %231 = load ptr, ptr %pX, align 8
  %pRight223 = getelementptr inbounds nuw %struct.Expr, ptr %231, i32 0, i32 5
  %232 = load ptr, ptr %pRight223, align 8
  %call224 = call i32 @sqlite3ExprCodeTemp(ptr noundef %230, ptr noundef %232, ptr noundef %rTemp)
  store i32 %call224, ptr %r1, align 4
  %233 = load ptr, ptr %pLevel.addr, align 8
  %234 = load ptr, ptr %pStart, align 8
  call void @disableTerm(ptr noundef %233, ptr noundef %234)
  %235 = load ptr, ptr %pX, align 8
  %op225 = getelementptr inbounds nuw %struct.Expr, ptr %235, i32 0, i32 0
  %236 = load i8, ptr %op225, align 8
  %conv226 = zext i8 %236 to i32
  %sub227 = sub nsw i32 %conv226, 54
  %idxprom228 = sext i32 %sub227 to i64
  %arrayidx229 = getelementptr inbounds [4 x i8], ptr %aMoveOp, i64 0, i64 %idxprom228
  %237 = load i8, ptr %arrayidx229, align 1
  %conv230 = zext i8 %237 to i32
  store i32 %conv230, ptr %op205, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.else222, %if.then210
  %238 = load ptr, ptr %v.addr, align 8
  %239 = load i32, ptr %op205, align 4
  %240 = load i32, ptr %iCur, align 4
  %241 = load i32, ptr %addrBrk, align 4
  %242 = load i32, ptr %r1, align 4
  %call232 = call i32 @sqlite3VdbeAddOp3(ptr noundef %238, i32 noundef %239, i32 noundef %240, i32 noundef %241, i32 noundef %242)
  %243 = load ptr, ptr %pParse.addr, align 8
  %244 = load i32, ptr %rTemp, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %243, i32 noundef %244)
  br label %if.end237

if.else233:                                       ; preds = %if.end202
  %245 = load ptr, ptr %v.addr, align 8
  %246 = load i32, ptr %bRev, align 4
  %tobool234 = icmp ne i32 %246, 0
  %247 = zext i1 %tobool234 to i64
  %cond235 = select i1 %tobool234, i32 32, i32 36
  %248 = load i32, ptr %iCur, align 4
  %249 = load i32, ptr %addrHalt, align 4
  %call236 = call i32 @sqlite3VdbeAddOp2(ptr noundef %245, i32 noundef %cond235, i32 noundef %248, i32 noundef %249)
  br label %if.end237

if.end237:                                        ; preds = %if.else233, %if.end231
  %250 = load ptr, ptr %pEnd, align 8
  %tobool238 = icmp ne ptr %250, null
  br i1 %tobool238, label %if.then239, label %if.end271

if.then239:                                       ; preds = %if.end237
  %251 = load ptr, ptr %pEnd, align 8
  %pExpr241 = getelementptr inbounds nuw %struct.WhereTerm, ptr %251, i32 0, i32 0
  %252 = load ptr, ptr %pExpr241, align 8
  store ptr %252, ptr %pX240, align 8
  %253 = load ptr, ptr %pParse.addr, align 8
  %nMem242 = getelementptr inbounds nuw %struct.Parse, ptr %253, i32 0, i32 18
  %254 = load i32, ptr %nMem242, align 8
  %inc243 = add nsw i32 %254, 1
  store i32 %inc243, ptr %nMem242, align 8
  store i32 %inc243, ptr %memEndValue, align 4
  %255 = load ptr, ptr %pParse.addr, align 8
  %256 = load ptr, ptr %pX240, align 8
  %pRight244 = getelementptr inbounds nuw %struct.Expr, ptr %256, i32 0, i32 5
  %257 = load ptr, ptr %pRight244, align 8
  %258 = load i32, ptr %memEndValue, align 4
  call void @codeExprOrVector(ptr noundef %255, ptr noundef %257, i32 noundef %258, i32 noundef 1)
  %259 = load ptr, ptr %pX240, align 8
  %pRight245 = getelementptr inbounds nuw %struct.Expr, ptr %259, i32 0, i32 5
  %260 = load ptr, ptr %pRight245, align 8
  %call246 = call i32 @sqlite3ExprIsVector(ptr noundef %260)
  %cmp247 = icmp eq i32 0, %call246
  br i1 %cmp247, label %land.lhs.true249, label %if.else261

land.lhs.true249:                                 ; preds = %if.then239
  %261 = load ptr, ptr %pX240, align 8
  %op250 = getelementptr inbounds nuw %struct.Expr, ptr %261, i32 0, i32 0
  %262 = load i8, ptr %op250, align 8
  %conv251 = zext i8 %262 to i32
  %cmp252 = icmp eq i32 %conv251, 56
  br i1 %cmp252, label %if.then258, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true249
  %263 = load ptr, ptr %pX240, align 8
  %op254 = getelementptr inbounds nuw %struct.Expr, ptr %263, i32 0, i32 0
  %264 = load i8, ptr %op254, align 8
  %conv255 = zext i8 %264 to i32
  %cmp256 = icmp eq i32 %conv255, 54
  br i1 %cmp256, label %if.then258, label %if.else261

if.then258:                                       ; preds = %lor.lhs.false, %land.lhs.true249
  %265 = load i32, ptr %bRev, align 4
  %tobool259 = icmp ne i32 %265, 0
  %266 = zext i1 %tobool259 to i64
  %cond260 = select i1 %tobool259, i32 55, i32 57
  store i32 %cond260, ptr %testOp, align 4
  br label %if.end264

if.else261:                                       ; preds = %lor.lhs.false, %if.then239
  %267 = load i32, ptr %bRev, align 4
  %tobool262 = icmp ne i32 %267, 0
  %268 = zext i1 %tobool262 to i64
  %cond263 = select i1 %tobool262, i32 56, i32 54
  store i32 %cond263, ptr %testOp, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.else261, %if.then258
  %269 = load ptr, ptr %pX240, align 8
  %pRight265 = getelementptr inbounds nuw %struct.Expr, ptr %269, i32 0, i32 5
  %270 = load ptr, ptr %pRight265, align 8
  %call266 = call i32 @sqlite3ExprIsVector(ptr noundef %270)
  %cmp267 = icmp eq i32 0, %call266
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.end264
  %271 = load ptr, ptr %pLevel.addr, align 8
  %272 = load ptr, ptr %pEnd, align 8
  call void @disableTerm(ptr noundef %271, ptr noundef %272)
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %if.end264
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end237
  %273 = load ptr, ptr %v.addr, align 8
  %call272 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %273)
  store i32 %call272, ptr %start, align 4
  %274 = load i32, ptr %bRev, align 4
  %tobool273 = icmp ne i32 %274, 0
  %275 = zext i1 %tobool273 to i64
  %cond274 = select i1 %tobool273, i32 4, i32 5
  %conv275 = trunc i32 %cond274 to i8
  %276 = load ptr, ptr %pLevel.addr, align 8
  %op276 = getelementptr inbounds nuw %struct.WhereLevel, ptr %276, i32 0, i32 14
  store i8 %conv275, ptr %op276, align 1
  %277 = load i32, ptr %iCur, align 4
  %278 = load ptr, ptr %pLevel.addr, align 8
  %p1277 = getelementptr inbounds nuw %struct.WhereLevel, ptr %278, i32 0, i32 17
  store i32 %277, ptr %p1277, align 8
  %279 = load i32, ptr %start, align 4
  %280 = load ptr, ptr %pLevel.addr, align 8
  %p2278 = getelementptr inbounds nuw %struct.WhereLevel, ptr %280, i32 0, i32 18
  store i32 %279, ptr %p2278, align 4
  %281 = load i32, ptr %testOp, align 4
  %cmp279 = icmp ne i32 %281, 170
  br i1 %cmp279, label %if.then281, label %if.end286

if.then281:                                       ; preds = %if.end271
  %282 = load ptr, ptr %pParse.addr, align 8
  %nMem282 = getelementptr inbounds nuw %struct.Parse, ptr %282, i32 0, i32 18
  %283 = load i32, ptr %nMem282, align 8
  %inc283 = add nsw i32 %283, 1
  store i32 %inc283, ptr %nMem282, align 8
  store i32 %inc283, ptr %iRowidReg, align 4
  %284 = load ptr, ptr %v.addr, align 8
  %285 = load i32, ptr %iCur, align 4
  %286 = load i32, ptr %iRowidReg, align 4
  %call284 = call i32 @sqlite3VdbeAddOp2(ptr noundef %284, i32 noundef 128, i32 noundef %285, i32 noundef %286)
  %287 = load ptr, ptr %v.addr, align 8
  %288 = load i32, ptr %testOp, align 4
  %289 = load i32, ptr %memEndValue, align 4
  %290 = load i32, ptr %addrBrk, align 4
  %291 = load i32, ptr %iRowidReg, align 4
  %call285 = call i32 @sqlite3VdbeAddOp3(ptr noundef %287, i32 noundef %288, i32 noundef %289, i32 noundef %290, i32 noundef %291)
  %292 = load ptr, ptr %v.addr, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %292, i16 noundef zeroext 83)
  br label %if.end286

if.end286:                                        ; preds = %if.then281, %if.end271
  br label %if.end1079

if.else287:                                       ; preds = %land.lhs.true176, %if.else171
  %293 = load ptr, ptr %pLoop, align 8
  %wsFlags288 = getelementptr inbounds nuw %struct.WhereLoop, ptr %293, i32 0, i32 8
  %294 = load i32, ptr %wsFlags288, align 8
  %and289 = and i32 %294, 512
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.then291, label %if.else765

if.then291:                                       ; preds = %if.else287
  %295 = load ptr, ptr %pLoop, align 8
  %u292 = getelementptr inbounds nuw %struct.WhereLoop, ptr %295, i32 0, i32 7
  %nEq293 = getelementptr inbounds nuw %struct.anon.19, ptr %u292, i32 0, i32 0
  %296 = load i16, ptr %nEq293, align 8
  store i16 %296, ptr %nEq, align 2
  %297 = load ptr, ptr %pLoop, align 8
  %u294 = getelementptr inbounds nuw %struct.WhereLoop, ptr %297, i32 0, i32 7
  %nBtm295 = getelementptr inbounds nuw %struct.anon.19, ptr %u294, i32 0, i32 1
  %298 = load i16, ptr %nBtm295, align 2
  store i16 %298, ptr %nBtm, align 2
  %299 = load ptr, ptr %pLoop, align 8
  %u296 = getelementptr inbounds nuw %struct.WhereLoop, ptr %299, i32 0, i32 7
  %nTop297 = getelementptr inbounds nuw %struct.anon.19, ptr %u296, i32 0, i32 2
  %300 = load i16, ptr %nTop297, align 4
  store i16 %300, ptr %nTop, align 2
  store ptr null, ptr %pRangeStart, align 8
  store ptr null, ptr %pRangeEnd, align 8
  store i32 0, ptr %nExtraReg, align 4
  store ptr null, ptr %zEndAff, align 8
  store i8 0, ptr %bSeekPastNull, align 1
  store i8 0, ptr %bStopAtNull, align 1
  store i32 0, ptr %regBignull, align 4
  %301 = load ptr, ptr %pLoop, align 8
  %u300 = getelementptr inbounds nuw %struct.WhereLoop, ptr %301, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u300, i32 0, i32 4
  %302 = load ptr, ptr %pIndex, align 8
  store ptr %302, ptr %pIdx, align 8
  %303 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur301 = getelementptr inbounds nuw %struct.WhereLevel, ptr %303, i32 0, i32 2
  %304 = load i32, ptr %iIdxCur301, align 8
  store i32 %304, ptr %iIdxCur, align 4
  %305 = load i16, ptr %nEq, align 2
  %conv302 = zext i16 %305 to i32
  store i32 %conv302, ptr %j, align 4
  %306 = load ptr, ptr %pLoop, align 8
  %wsFlags303 = getelementptr inbounds nuw %struct.WhereLoop, ptr %306, i32 0, i32 8
  %307 = load i32, ptr %wsFlags303, align 8
  %and304 = and i32 %307, 32
  %tobool305 = icmp ne i32 %and304, 0
  br i1 %tobool305, label %if.then306, label %if.end320

if.then306:                                       ; preds = %if.then291
  %308 = load ptr, ptr %pLoop, align 8
  %aLTerm307 = getelementptr inbounds nuw %struct.WhereLoop, ptr %308, i32 0, i32 12
  %309 = load ptr, ptr %aLTerm307, align 8
  %310 = load i32, ptr %j, align 4
  %inc308 = add nsw i32 %310, 1
  store i32 %inc308, ptr %j, align 4
  %idxprom309 = sext i32 %310 to i64
  %arrayidx310 = getelementptr inbounds ptr, ptr %309, i64 %idxprom309
  %311 = load ptr, ptr %arrayidx310, align 8
  store ptr %311, ptr %pRangeStart, align 8
  %312 = load i32, ptr %nExtraReg, align 4
  %313 = load ptr, ptr %pLoop, align 8
  %u311 = getelementptr inbounds nuw %struct.WhereLoop, ptr %313, i32 0, i32 7
  %nBtm312 = getelementptr inbounds nuw %struct.anon.19, ptr %u311, i32 0, i32 1
  %314 = load i16, ptr %nBtm312, align 2
  %conv313 = zext i16 %314 to i32
  %cmp314 = icmp sgt i32 %312, %conv313
  br i1 %cmp314, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then306
  %315 = load i32, ptr %nExtraReg, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then306
  %316 = load ptr, ptr %pLoop, align 8
  %u316 = getelementptr inbounds nuw %struct.WhereLoop, ptr %316, i32 0, i32 7
  %nBtm317 = getelementptr inbounds nuw %struct.anon.19, ptr %u316, i32 0, i32 1
  %317 = load i16, ptr %nBtm317, align 2
  %conv318 = zext i16 %317 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond319 = phi i32 [ %315, %cond.true ], [ %conv318, %cond.false ]
  store i32 %cond319, ptr %nExtraReg, align 4
  br label %if.end320

if.end320:                                        ; preds = %cond.end, %if.then291
  %318 = load ptr, ptr %pLoop, align 8
  %wsFlags321 = getelementptr inbounds nuw %struct.WhereLoop, ptr %318, i32 0, i32 8
  %319 = load i32, ptr %wsFlags321, align 8
  %and322 = and i32 %319, 16
  %tobool323 = icmp ne i32 %and322, 0
  br i1 %tobool323, label %if.then324, label %if.end381

if.then324:                                       ; preds = %if.end320
  %320 = load ptr, ptr %pLoop, align 8
  %aLTerm325 = getelementptr inbounds nuw %struct.WhereLoop, ptr %320, i32 0, i32 12
  %321 = load ptr, ptr %aLTerm325, align 8
  %322 = load i32, ptr %j, align 4
  %inc326 = add nsw i32 %322, 1
  store i32 %inc326, ptr %j, align 4
  %idxprom327 = sext i32 %322 to i64
  %arrayidx328 = getelementptr inbounds ptr, ptr %321, i64 %idxprom327
  %323 = load ptr, ptr %arrayidx328, align 8
  store ptr %323, ptr %pRangeEnd, align 8
  %324 = load i32, ptr %nExtraReg, align 4
  %325 = load ptr, ptr %pLoop, align 8
  %u329 = getelementptr inbounds nuw %struct.WhereLoop, ptr %325, i32 0, i32 7
  %nTop330 = getelementptr inbounds nuw %struct.anon.19, ptr %u329, i32 0, i32 2
  %326 = load i16, ptr %nTop330, align 4
  %conv331 = zext i16 %326 to i32
  %cmp332 = icmp sgt i32 %324, %conv331
  br i1 %cmp332, label %cond.true334, label %cond.false335

cond.true334:                                     ; preds = %if.then324
  %327 = load i32, ptr %nExtraReg, align 4
  br label %cond.end339

cond.false335:                                    ; preds = %if.then324
  %328 = load ptr, ptr %pLoop, align 8
  %u336 = getelementptr inbounds nuw %struct.WhereLoop, ptr %328, i32 0, i32 7
  %nTop337 = getelementptr inbounds nuw %struct.anon.19, ptr %u336, i32 0, i32 2
  %329 = load i16, ptr %nTop337, align 4
  %conv338 = zext i16 %329 to i32
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false335, %cond.true334
  %cond340 = phi i32 [ %327, %cond.true334 ], [ %conv338, %cond.false335 ]
  store i32 %cond340, ptr %nExtraReg, align 4
  %330 = load ptr, ptr %pRangeEnd, align 8
  %wtFlags341 = getelementptr inbounds nuw %struct.WhereTerm, ptr %330, i32 0, i32 3
  %331 = load i16, ptr %wtFlags341, align 2
  %conv342 = zext i16 %331 to i32
  %and343 = and i32 %conv342, 256
  %cmp344 = icmp ne i32 %and343, 0
  br i1 %cmp344, label %if.then346, label %if.end360

if.then346:                                       ; preds = %cond.end339
  %332 = load ptr, ptr %pParse.addr, align 8
  %nMem347 = getelementptr inbounds nuw %struct.Parse, ptr %332, i32 0, i32 18
  %333 = load i32, ptr %nMem347, align 8
  %inc348 = add nsw i32 %333, 1
  store i32 %inc348, ptr %nMem347, align 8
  %334 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr = getelementptr inbounds nuw %struct.WhereLevel, ptr %334, i32 0, i32 11
  store i32 %inc348, ptr %iLikeRepCntr, align 4
  %335 = load ptr, ptr %v.addr, align 8
  %336 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr349 = getelementptr inbounds nuw %struct.WhereLevel, ptr %336, i32 0, i32 11
  %337 = load i32, ptr %iLikeRepCntr349, align 4
  %call350 = call i32 @sqlite3VdbeAddOp2(ptr noundef %335, i32 noundef 70, i32 noundef 1, i32 noundef %337)
  %338 = load ptr, ptr %v.addr, align 8
  %call351 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %338)
  %339 = load ptr, ptr %pLevel.addr, align 8
  %addrLikeRep = getelementptr inbounds nuw %struct.WhereLevel, ptr %339, i32 0, i32 12
  store i32 %call351, ptr %addrLikeRep, align 8
  %340 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr352 = getelementptr inbounds nuw %struct.WhereLevel, ptr %340, i32 0, i32 11
  %341 = load i32, ptr %iLikeRepCntr352, align 4
  %shl = shl i32 %341, 1
  store i32 %shl, ptr %iLikeRepCntr352, align 4
  %342 = load i32, ptr %bRev, align 4
  %343 = load ptr, ptr %pIdx, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %343, i32 0, i32 7
  %344 = load ptr, ptr %aSortOrder, align 8
  %345 = load i16, ptr %nEq, align 2
  %idxprom353 = zext i16 %345 to i64
  %arrayidx354 = getelementptr inbounds nuw i8, ptr %344, i64 %idxprom353
  %346 = load i8, ptr %arrayidx354, align 1
  %conv355 = zext i8 %346 to i32
  %cmp356 = icmp eq i32 %conv355, 1
  %conv357 = zext i1 %cmp356 to i32
  %xor = xor i32 %342, %conv357
  %347 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr358 = getelementptr inbounds nuw %struct.WhereLevel, ptr %347, i32 0, i32 11
  %348 = load i32, ptr %iLikeRepCntr358, align 4
  %or359 = or i32 %348, %xor
  store i32 %or359, ptr %iLikeRepCntr358, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.then346, %cond.end339
  %349 = load ptr, ptr %pRangeStart, align 8
  %cmp361 = icmp eq ptr %349, null
  br i1 %cmp361, label %if.then363, label %if.end380

if.then363:                                       ; preds = %if.end360
  %350 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %350, i32 0, i32 1
  %351 = load ptr, ptr %aiColumn, align 8
  %352 = load i16, ptr %nEq, align 2
  %idxprom364 = zext i16 %352 to i64
  %arrayidx365 = getelementptr inbounds nuw i16, ptr %351, i64 %idxprom364
  %353 = load i16, ptr %arrayidx365, align 2
  %conv366 = sext i16 %353 to i32
  store i32 %conv366, ptr %j, align 4
  %354 = load i32, ptr %j, align 4
  %cmp367 = icmp sge i32 %354, 0
  br i1 %cmp367, label %land.lhs.true369, label %lor.lhs.false375

land.lhs.true369:                                 ; preds = %if.then363
  %355 = load ptr, ptr %pIdx, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %355, i32 0, i32 3
  %356 = load ptr, ptr %pTable, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %356, i32 0, i32 1
  %357 = load ptr, ptr %aCol, align 8
  %358 = load i32, ptr %j, align 4
  %idxprom370 = sext i32 %358 to i64
  %arrayidx371 = getelementptr inbounds %struct.Column, ptr %357, i64 %idxprom370
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx371, i32 0, i32 3
  %359 = load i8, ptr %notNull, align 8
  %conv372 = zext i8 %359 to i32
  %cmp373 = icmp eq i32 %conv372, 0
  br i1 %cmp373, label %if.then378, label %lor.lhs.false375

lor.lhs.false375:                                 ; preds = %land.lhs.true369, %if.then363
  %360 = load i32, ptr %j, align 4
  %cmp376 = icmp eq i32 %360, -2
  br i1 %cmp376, label %if.then378, label %if.end379

if.then378:                                       ; preds = %lor.lhs.false375, %land.lhs.true369
  store i8 1, ptr %bSeekPastNull, align 1
  br label %if.end379

if.end379:                                        ; preds = %if.then378, %lor.lhs.false375
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %if.end360
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.end320
  %361 = load ptr, ptr %pLoop, align 8
  %wsFlags382 = getelementptr inbounds nuw %struct.WhereLoop, ptr %361, i32 0, i32 8
  %362 = load i32, ptr %wsFlags382, align 8
  %and383 = and i32 %362, 48
  %cmp384 = icmp eq i32 %and383, 0
  br i1 %cmp384, label %land.lhs.true386, label %if.end396

land.lhs.true386:                                 ; preds = %if.end381
  %363 = load ptr, ptr %pLoop, align 8
  %wsFlags387 = getelementptr inbounds nuw %struct.WhereLoop, ptr %363, i32 0, i32 8
  %364 = load i32, ptr %wsFlags387, align 8
  %and388 = and i32 %364, 524288
  %cmp389 = icmp ne i32 %and388, 0
  br i1 %cmp389, label %if.then391, label %if.end396

if.then391:                                       ; preds = %land.lhs.true386
  store i32 1, ptr %nExtraReg, align 4
  store i8 1, ptr %bSeekPastNull, align 1
  %365 = load ptr, ptr %pParse.addr, align 8
  %nMem392 = getelementptr inbounds nuw %struct.Parse, ptr %365, i32 0, i32 18
  %366 = load i32, ptr %nMem392, align 8
  %inc393 = add nsw i32 %366, 1
  store i32 %inc393, ptr %nMem392, align 8
  store i32 %inc393, ptr %regBignull, align 4
  %367 = load ptr, ptr %pLevel.addr, align 8
  %regBignull394 = getelementptr inbounds nuw %struct.WhereLevel, ptr %367, i32 0, i32 9
  store i32 %inc393, ptr %regBignull394, align 4
  %368 = load ptr, ptr %pParse.addr, align 8
  %call395 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %368)
  %369 = load ptr, ptr %pLevel.addr, align 8
  %addrBignull = getelementptr inbounds nuw %struct.WhereLevel, ptr %369, i32 0, i32 10
  store i32 %call395, ptr %addrBignull, align 8
  br label %if.end396

if.end396:                                        ; preds = %if.then391, %land.lhs.true386, %if.end381
  %370 = load i16, ptr %nEq, align 2
  %conv397 = zext i16 %370 to i32
  %371 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %371, i32 0, i32 13
  %372 = load i16, ptr %nKeyCol, align 2
  %conv398 = zext i16 %372 to i32
  %cmp399 = icmp slt i32 %conv397, %conv398
  br i1 %cmp399, label %land.lhs.true401, label %lor.lhs.false410

land.lhs.true401:                                 ; preds = %if.end396
  %373 = load i32, ptr %bRev, align 4
  %374 = load ptr, ptr %pIdx, align 8
  %aSortOrder402 = getelementptr inbounds nuw %struct.Index, ptr %374, i32 0, i32 7
  %375 = load ptr, ptr %aSortOrder402, align 8
  %376 = load i16, ptr %nEq, align 2
  %idxprom403 = zext i16 %376 to i64
  %arrayidx404 = getelementptr inbounds nuw i8, ptr %375, i64 %idxprom403
  %377 = load i8, ptr %arrayidx404, align 1
  %conv405 = zext i8 %377 to i32
  %cmp406 = icmp eq i32 %conv405, 0
  %conv407 = zext i1 %cmp406 to i32
  %cmp408 = icmp eq i32 %373, %conv407
  br i1 %cmp408, label %if.then418, label %lor.lhs.false410

lor.lhs.false410:                                 ; preds = %land.lhs.true401, %if.end396
  %378 = load i32, ptr %bRev, align 4
  %tobool411 = icmp ne i32 %378, 0
  br i1 %tobool411, label %land.lhs.true412, label %if.end423

land.lhs.true412:                                 ; preds = %lor.lhs.false410
  %379 = load ptr, ptr %pIdx, align 8
  %nKeyCol413 = getelementptr inbounds nuw %struct.Index, ptr %379, i32 0, i32 13
  %380 = load i16, ptr %nKeyCol413, align 2
  %conv414 = zext i16 %380 to i32
  %381 = load i16, ptr %nEq, align 2
  %conv415 = zext i16 %381 to i32
  %cmp416 = icmp eq i32 %conv414, %conv415
  br i1 %cmp416, label %if.then418, label %if.end423

if.then418:                                       ; preds = %land.lhs.true412, %land.lhs.true401
  %382 = load ptr, ptr %pRangeEnd, align 8
  store ptr %382, ptr %t, align 8
  %383 = load ptr, ptr %pRangeStart, align 8
  store ptr %383, ptr %pRangeEnd, align 8
  %384 = load ptr, ptr %t, align 8
  store ptr %384, ptr %pRangeStart, align 8
  %385 = load i8, ptr %bSeekPastNull, align 1
  store i8 %385, ptr %t419, align 1
  %386 = load i8, ptr %bStopAtNull, align 1
  store i8 %386, ptr %bSeekPastNull, align 1
  %387 = load i8, ptr %t419, align 1
  store i8 %387, ptr %bStopAtNull, align 1
  %388 = load i16, ptr %nBtm, align 2
  %conv421 = trunc i16 %388 to i8
  store i8 %conv421, ptr %t420, align 1
  %389 = load i16, ptr %nTop, align 2
  store i16 %389, ptr %nBtm, align 2
  %390 = load i8, ptr %t420, align 1
  %conv422 = zext i8 %390 to i16
  store i16 %conv422, ptr %nTop, align 2
  br label %if.end423

if.end423:                                        ; preds = %if.then418, %land.lhs.true412, %lor.lhs.false410
  %391 = load ptr, ptr %pParse.addr, align 8
  %392 = load ptr, ptr %pLevel.addr, align 8
  %393 = load i32, ptr %bRev, align 4
  %394 = load i32, ptr %nExtraReg, align 4
  %call424 = call i32 @codeAllEqualityTerms(ptr noundef %391, ptr noundef %392, i32 noundef %393, i32 noundef %394, ptr noundef %zStartAff)
  store i32 %call424, ptr %regBase, align 4
  %395 = load ptr, ptr %zStartAff, align 8
  %tobool425 = icmp ne ptr %395, null
  br i1 %tobool425, label %land.lhs.true426, label %if.end433

land.lhs.true426:                                 ; preds = %if.end423
  %396 = load i16, ptr %nTop, align 2
  %conv427 = zext i16 %396 to i32
  %tobool428 = icmp ne i32 %conv427, 0
  br i1 %tobool428, label %if.then429, label %if.end433

if.then429:                                       ; preds = %land.lhs.true426
  %397 = load ptr, ptr %db, align 8
  %398 = load ptr, ptr %zStartAff, align 8
  %399 = load i16, ptr %nEq, align 2
  %idxprom430 = zext i16 %399 to i64
  %arrayidx431 = getelementptr inbounds nuw i8, ptr %398, i64 %idxprom430
  %call432 = call ptr @sqlite3DbStrDup(ptr noundef %397, ptr noundef %arrayidx431)
  store ptr %call432, ptr %zEndAff, align 8
  br label %if.end433

if.end433:                                        ; preds = %if.then429, %land.lhs.true426, %if.end423
  %400 = load i32, ptr %regBignull, align 4
  %tobool434 = icmp ne i32 %400, 0
  br i1 %tobool434, label %cond.true435, label %cond.false437

cond.true435:                                     ; preds = %if.end433
  %401 = load ptr, ptr %pLevel.addr, align 8
  %addrBignull436 = getelementptr inbounds nuw %struct.WhereLevel, ptr %401, i32 0, i32 10
  %402 = load i32, ptr %addrBignull436, align 8
  br label %cond.end439

cond.false437:                                    ; preds = %if.end433
  %403 = load ptr, ptr %pLevel.addr, align 8
  %addrNxt438 = getelementptr inbounds nuw %struct.WhereLevel, ptr %403, i32 0, i32 4
  %404 = load i32, ptr %addrNxt438, align 8
  br label %cond.end439

cond.end439:                                      ; preds = %cond.false437, %cond.true435
  %cond440 = phi i32 [ %402, %cond.true435 ], [ %404, %cond.false437 ]
  store i32 %cond440, ptr %addrNxt, align 4
  %405 = load ptr, ptr %pRangeStart, align 8
  %tobool441 = icmp ne ptr %405, null
  br i1 %tobool441, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end439
  %406 = load ptr, ptr %pRangeStart, align 8
  %eOperator442 = getelementptr inbounds nuw %struct.WhereTerm, ptr %406, i32 0, i32 4
  %407 = load i16, ptr %eOperator442, align 4
  %conv443 = zext i16 %407 to i32
  %and444 = and i32 %conv443, 40
  %tobool445 = icmp ne i32 %and444, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end439
  %408 = phi i1 [ true, %cond.end439 ], [ %tobool445, %lor.rhs ]
  %lor.ext = zext i1 %408 to i32
  store i32 %lor.ext, ptr %startEq, align 4
  %409 = load ptr, ptr %pRangeEnd, align 8
  %tobool446 = icmp ne ptr %409, null
  br i1 %tobool446, label %lor.rhs447, label %lor.end452

lor.rhs447:                                       ; preds = %lor.end
  %410 = load ptr, ptr %pRangeEnd, align 8
  %eOperator448 = getelementptr inbounds nuw %struct.WhereTerm, ptr %410, i32 0, i32 4
  %411 = load i16, ptr %eOperator448, align 4
  %conv449 = zext i16 %411 to i32
  %and450 = and i32 %conv449, 40
  %tobool451 = icmp ne i32 %and450, 0
  br label %lor.end452

lor.end452:                                       ; preds = %lor.rhs447, %lor.end
  %412 = phi i1 [ true, %lor.end ], [ %tobool451, %lor.rhs447 ]
  %lor.ext453 = zext i1 %412 to i32
  store i32 %lor.ext453, ptr %endEq, align 4
  %413 = load ptr, ptr %pRangeStart, align 8
  %tobool454 = icmp ne ptr %413, null
  br i1 %tobool454, label %lor.end459, label %lor.rhs455

lor.rhs455:                                       ; preds = %lor.end452
  %414 = load i16, ptr %nEq, align 2
  %conv456 = zext i16 %414 to i32
  %cmp457 = icmp sgt i32 %conv456, 0
  br label %lor.end459

lor.end459:                                       ; preds = %lor.rhs455, %lor.end452
  %415 = phi i1 [ true, %lor.end452 ], [ %cmp457, %lor.rhs455 ]
  %lor.ext460 = zext i1 %415 to i32
  store i32 %lor.ext460, ptr %start_constraints, align 4
  %416 = load i16, ptr %nEq, align 2
  %conv461 = zext i16 %416 to i32
  store i32 %conv461, ptr %nConstraint298, align 4
  %417 = load ptr, ptr %pRangeStart, align 8
  %tobool462 = icmp ne ptr %417, null
  br i1 %tobool462, label %if.then463, label %if.else497

if.then463:                                       ; preds = %lor.end459
  %418 = load ptr, ptr %pRangeStart, align 8
  %pExpr465 = getelementptr inbounds nuw %struct.WhereTerm, ptr %418, i32 0, i32 0
  %419 = load ptr, ptr %pExpr465, align 8
  %pRight466 = getelementptr inbounds nuw %struct.Expr, ptr %419, i32 0, i32 5
  %420 = load ptr, ptr %pRight466, align 8
  store ptr %420, ptr %pRight464, align 8
  %421 = load ptr, ptr %pParse.addr, align 8
  %422 = load ptr, ptr %pRight464, align 8
  %423 = load i32, ptr %regBase, align 4
  %424 = load i16, ptr %nEq, align 2
  %conv467 = zext i16 %424 to i32
  %add468 = add nsw i32 %423, %conv467
  %425 = load i16, ptr %nBtm, align 2
  %conv469 = zext i16 %425 to i32
  call void @codeExprOrVector(ptr noundef %421, ptr noundef %422, i32 noundef %add468, i32 noundef %conv469)
  %426 = load ptr, ptr %v.addr, align 8
  %427 = load ptr, ptr %pLevel.addr, align 8
  %428 = load ptr, ptr %pRangeStart, align 8
  call void @whereLikeOptimizationStringFixup(ptr noundef %426, ptr noundef %427, ptr noundef %428)
  %429 = load ptr, ptr %pRangeStart, align 8
  %wtFlags470 = getelementptr inbounds nuw %struct.WhereTerm, ptr %429, i32 0, i32 3
  %430 = load i16, ptr %wtFlags470, align 2
  %conv471 = zext i16 %430 to i32
  %and472 = and i32 %conv471, 0
  %cmp473 = icmp eq i32 %and472, 0
  br i1 %cmp473, label %land.lhs.true475, label %if.end482

land.lhs.true475:                                 ; preds = %if.then463
  %431 = load ptr, ptr %pRight464, align 8
  %call476 = call i32 @sqlite3ExprCanBeNull(ptr noundef %431)
  %tobool477 = icmp ne i32 %call476, 0
  br i1 %tobool477, label %if.then478, label %if.end482

if.then478:                                       ; preds = %land.lhs.true475
  %432 = load ptr, ptr %v.addr, align 8
  %433 = load i32, ptr %regBase, align 4
  %434 = load i16, ptr %nEq, align 2
  %conv479 = zext i16 %434 to i32
  %add480 = add nsw i32 %433, %conv479
  %435 = load i32, ptr %addrNxt, align 4
  %call481 = call i32 @sqlite3VdbeAddOp2(ptr noundef %432, i32 noundef 50, i32 noundef %add480, i32 noundef %435)
  br label %if.end482

if.end482:                                        ; preds = %if.then478, %land.lhs.true475, %if.then463
  %436 = load ptr, ptr %zStartAff, align 8
  %tobool483 = icmp ne ptr %436, null
  br i1 %tobool483, label %if.then484, label %if.end488

if.then484:                                       ; preds = %if.end482
  %437 = load ptr, ptr %pRight464, align 8
  %438 = load i16, ptr %nBtm, align 2
  %conv485 = zext i16 %438 to i32
  %439 = load ptr, ptr %zStartAff, align 8
  %440 = load i16, ptr %nEq, align 2
  %idxprom486 = zext i16 %440 to i64
  %arrayidx487 = getelementptr inbounds nuw i8, ptr %439, i64 %idxprom486
  call void @updateRangeAffinityStr(ptr noundef %437, i32 noundef %conv485, ptr noundef %arrayidx487)
  br label %if.end488

if.end488:                                        ; preds = %if.then484, %if.end482
  %441 = load i16, ptr %nBtm, align 2
  %conv489 = zext i16 %441 to i32
  %442 = load i32, ptr %nConstraint298, align 4
  %add490 = add nsw i32 %442, %conv489
  store i32 %add490, ptr %nConstraint298, align 4
  %443 = load ptr, ptr %pRight464, align 8
  %call491 = call i32 @sqlite3ExprIsVector(ptr noundef %443)
  %cmp492 = icmp eq i32 %call491, 0
  br i1 %cmp492, label %if.then494, label %if.else495

if.then494:                                       ; preds = %if.end488
  %444 = load ptr, ptr %pLevel.addr, align 8
  %445 = load ptr, ptr %pRangeStart, align 8
  call void @disableTerm(ptr noundef %444, ptr noundef %445)
  br label %if.end496

if.else495:                                       ; preds = %if.end488
  store i32 1, ptr %startEq, align 4
  br label %if.end496

if.end496:                                        ; preds = %if.else495, %if.then494
  store i8 0, ptr %bSeekPastNull, align 1
  br label %if.end513

if.else497:                                       ; preds = %lor.end459
  %446 = load i8, ptr %bSeekPastNull, align 1
  %tobool498 = icmp ne i8 %446, 0
  br i1 %tobool498, label %if.then499, label %if.else504

if.then499:                                       ; preds = %if.else497
  store i32 0, ptr %startEq, align 4
  %447 = load ptr, ptr %v.addr, align 8
  %448 = load i32, ptr %regBase, align 4
  %449 = load i16, ptr %nEq, align 2
  %conv500 = zext i16 %449 to i32
  %add501 = add nsw i32 %448, %conv500
  %call502 = call i32 @sqlite3VdbeAddOp2(ptr noundef %447, i32 noundef 73, i32 noundef 0, i32 noundef %add501)
  store i32 1, ptr %start_constraints, align 4
  %450 = load i32, ptr %nConstraint298, align 4
  %inc503 = add nsw i32 %450, 1
  store i32 %inc503, ptr %nConstraint298, align 4
  br label %if.end512

if.else504:                                       ; preds = %if.else497
  %451 = load i32, ptr %regBignull, align 4
  %tobool505 = icmp ne i32 %451, 0
  br i1 %tobool505, label %if.then506, label %if.end511

if.then506:                                       ; preds = %if.else504
  %452 = load ptr, ptr %v.addr, align 8
  %453 = load i32, ptr %regBase, align 4
  %454 = load i16, ptr %nEq, align 2
  %conv507 = zext i16 %454 to i32
  %add508 = add nsw i32 %453, %conv507
  %call509 = call i32 @sqlite3VdbeAddOp2(ptr noundef %452, i32 noundef 73, i32 noundef 0, i32 noundef %add508)
  store i32 1, ptr %start_constraints, align 4
  %455 = load i32, ptr %nConstraint298, align 4
  %inc510 = add nsw i32 %455, 1
  store i32 %inc510, ptr %nConstraint298, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.then506, %if.else504
  br label %if.end512

if.end512:                                        ; preds = %if.end511, %if.then499
  br label %if.end513

if.end513:                                        ; preds = %if.end512, %if.end496
  %456 = load ptr, ptr %pParse.addr, align 8
  %457 = load i32, ptr %regBase, align 4
  %458 = load i32, ptr %nConstraint298, align 4
  %459 = load i8, ptr %bSeekPastNull, align 1
  %conv514 = zext i8 %459 to i32
  %sub515 = sub nsw i32 %458, %conv514
  %460 = load ptr, ptr %zStartAff, align 8
  call void @codeApplyAffinity(ptr noundef %456, i32 noundef %457, i32 noundef %sub515, ptr noundef %460)
  %461 = load ptr, ptr %pLoop, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %461, i32 0, i32 10
  %462 = load i16, ptr %nSkip, align 2
  %conv516 = zext i16 %462 to i32
  %cmp517 = icmp sgt i32 %conv516, 0
  br i1 %cmp517, label %land.lhs.true519, label %if.else525

land.lhs.true519:                                 ; preds = %if.end513
  %463 = load i32, ptr %nConstraint298, align 4
  %464 = load ptr, ptr %pLoop, align 8
  %nSkip520 = getelementptr inbounds nuw %struct.WhereLoop, ptr %464, i32 0, i32 10
  %465 = load i16, ptr %nSkip520, align 2
  %conv521 = zext i16 %465 to i32
  %cmp522 = icmp eq i32 %463, %conv521
  br i1 %cmp522, label %if.then524, label %if.else525

if.then524:                                       ; preds = %land.lhs.true519
  br label %if.end559

if.else525:                                       ; preds = %land.lhs.true519, %if.end513
  %466 = load ptr, ptr %pLoop, align 8
  %wsFlags526 = getelementptr inbounds nuw %struct.WhereLoop, ptr %466, i32 0, i32 8
  %467 = load i32, ptr %wsFlags526, align 8
  %and527 = and i32 %467, 262144
  %tobool528 = icmp ne i32 %and527, 0
  br i1 %tobool528, label %if.then529, label %if.end531

if.then529:                                       ; preds = %if.else525
  %468 = load ptr, ptr %v.addr, align 8
  %469 = load i32, ptr %iIdxCur, align 4
  %call530 = call i32 @sqlite3VdbeAddOp1(ptr noundef %468, i32 noundef 119, i32 noundef %469)
  br label %if.end531

if.end531:                                        ; preds = %if.then529, %if.else525
  %470 = load i32, ptr %regBignull, align 4
  %tobool532 = icmp ne i32 %470, 0
  br i1 %tobool532, label %if.then533, label %if.end535

if.then533:                                       ; preds = %if.end531
  %471 = load ptr, ptr %v.addr, align 8
  %472 = load i32, ptr %regBignull, align 4
  %call534 = call i32 @sqlite3VdbeAddOp2(ptr noundef %471, i32 noundef 70, i32 noundef 1, i32 noundef %472)
  br label %if.end535

if.end535:                                        ; preds = %if.then533, %if.end531
  %473 = load i32, ptr %start_constraints, align 4
  %shl536 = shl i32 %473, 2
  %474 = load i32, ptr %startEq, align 4
  %shl537 = shl i32 %474, 1
  %add538 = add nsw i32 %shl536, %shl537
  %475 = load i32, ptr %bRev, align 4
  %add539 = add nsw i32 %add538, %475
  %idxprom540 = sext i32 %add539 to i64
  %arrayidx541 = getelementptr inbounds [8 x i8], ptr @sqlite3WhereCodeOneLoopStart.aStartOp, i64 0, i64 %idxprom540
  %476 = load i8, ptr %arrayidx541, align 1
  %conv542 = zext i8 %476 to i32
  store i32 %conv542, ptr %op299, align 4
  %477 = load ptr, ptr %v.addr, align 8
  %478 = load i32, ptr %op299, align 4
  %479 = load i32, ptr %iIdxCur, align 4
  %480 = load i32, ptr %addrNxt, align 4
  %481 = load i32, ptr %regBase, align 4
  %482 = load i32, ptr %nConstraint298, align 4
  %call543 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %477, i32 noundef %478, i32 noundef %479, i32 noundef %480, i32 noundef %481, i32 noundef %482)
  %483 = load i32, ptr %regBignull, align 4
  %tobool544 = icmp ne i32 %483, 0
  br i1 %tobool544, label %if.then545, label %if.end558

if.then545:                                       ; preds = %if.end535
  %484 = load ptr, ptr %v.addr, align 8
  %485 = load ptr, ptr %v.addr, align 8
  %call546 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %485)
  %add547 = add nsw i32 %call546, 2
  %call548 = call i32 @sqlite3VdbeAddOp2(ptr noundef %484, i32 noundef 11, i32 noundef 0, i32 noundef %add547)
  %486 = load i32, ptr %nConstraint298, align 4
  %cmp549 = icmp sgt i32 %486, 1
  %conv550 = zext i1 %cmp549 to i32
  %mul = mul nsw i32 %conv550, 4
  %add551 = add nsw i32 %mul, 2
  %487 = load i32, ptr %bRev, align 4
  %add552 = add nsw i32 %add551, %487
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds [8 x i8], ptr @sqlite3WhereCodeOneLoopStart.aStartOp, i64 0, i64 %idxprom553
  %488 = load i8, ptr %arrayidx554, align 1
  %conv555 = zext i8 %488 to i32
  store i32 %conv555, ptr %op299, align 4
  %489 = load ptr, ptr %v.addr, align 8
  %490 = load i32, ptr %op299, align 4
  %491 = load i32, ptr %iIdxCur, align 4
  %492 = load i32, ptr %addrNxt, align 4
  %493 = load i32, ptr %regBase, align 4
  %494 = load i32, ptr %nConstraint298, align 4
  %495 = load i32, ptr %startEq, align 4
  %sub556 = sub nsw i32 %494, %495
  %call557 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %489, i32 noundef %490, i32 noundef %491, i32 noundef %492, i32 noundef %493, i32 noundef %sub556)
  br label %if.end558

if.end558:                                        ; preds = %if.then545, %if.end535
  br label %if.end559

if.end559:                                        ; preds = %if.end558, %if.then524
  %496 = load i16, ptr %nEq, align 2
  %conv560 = zext i16 %496 to i32
  store i32 %conv560, ptr %nConstraint298, align 4
  %497 = load ptr, ptr %pRangeEnd, align 8
  %tobool561 = icmp ne ptr %497, null
  br i1 %tobool561, label %if.then562, label %if.else598

if.then562:                                       ; preds = %if.end559
  %498 = load ptr, ptr %pRangeEnd, align 8
  %pExpr564 = getelementptr inbounds nuw %struct.WhereTerm, ptr %498, i32 0, i32 0
  %499 = load ptr, ptr %pExpr564, align 8
  %pRight565 = getelementptr inbounds nuw %struct.Expr, ptr %499, i32 0, i32 5
  %500 = load ptr, ptr %pRight565, align 8
  store ptr %500, ptr %pRight563, align 8
  %501 = load ptr, ptr %pParse.addr, align 8
  %502 = load ptr, ptr %pRight563, align 8
  %503 = load i32, ptr %regBase, align 4
  %504 = load i16, ptr %nEq, align 2
  %conv566 = zext i16 %504 to i32
  %add567 = add nsw i32 %503, %conv566
  %505 = load i16, ptr %nTop, align 2
  %conv568 = zext i16 %505 to i32
  call void @codeExprOrVector(ptr noundef %501, ptr noundef %502, i32 noundef %add567, i32 noundef %conv568)
  %506 = load ptr, ptr %v.addr, align 8
  %507 = load ptr, ptr %pLevel.addr, align 8
  %508 = load ptr, ptr %pRangeEnd, align 8
  call void @whereLikeOptimizationStringFixup(ptr noundef %506, ptr noundef %507, ptr noundef %508)
  %509 = load ptr, ptr %pRangeEnd, align 8
  %wtFlags569 = getelementptr inbounds nuw %struct.WhereTerm, ptr %509, i32 0, i32 3
  %510 = load i16, ptr %wtFlags569, align 2
  %conv570 = zext i16 %510 to i32
  %and571 = and i32 %conv570, 0
  %cmp572 = icmp eq i32 %and571, 0
  br i1 %cmp572, label %land.lhs.true574, label %if.end581

land.lhs.true574:                                 ; preds = %if.then562
  %511 = load ptr, ptr %pRight563, align 8
  %call575 = call i32 @sqlite3ExprCanBeNull(ptr noundef %511)
  %tobool576 = icmp ne i32 %call575, 0
  br i1 %tobool576, label %if.then577, label %if.end581

if.then577:                                       ; preds = %land.lhs.true574
  %512 = load ptr, ptr %v.addr, align 8
  %513 = load i32, ptr %regBase, align 4
  %514 = load i16, ptr %nEq, align 2
  %conv578 = zext i16 %514 to i32
  %add579 = add nsw i32 %513, %conv578
  %515 = load i32, ptr %addrNxt, align 4
  %call580 = call i32 @sqlite3VdbeAddOp2(ptr noundef %512, i32 noundef 50, i32 noundef %add579, i32 noundef %515)
  br label %if.end581

if.end581:                                        ; preds = %if.then577, %land.lhs.true574, %if.then562
  %516 = load ptr, ptr %zEndAff, align 8
  %tobool582 = icmp ne ptr %516, null
  br i1 %tobool582, label %if.then583, label %if.else588

if.then583:                                       ; preds = %if.end581
  %517 = load ptr, ptr %pRight563, align 8
  %518 = load i16, ptr %nTop, align 2
  %conv584 = zext i16 %518 to i32
  %519 = load ptr, ptr %zEndAff, align 8
  call void @updateRangeAffinityStr(ptr noundef %517, i32 noundef %conv584, ptr noundef %519)
  %520 = load ptr, ptr %pParse.addr, align 8
  %521 = load i32, ptr %regBase, align 4
  %522 = load i16, ptr %nEq, align 2
  %conv585 = zext i16 %522 to i32
  %add586 = add nsw i32 %521, %conv585
  %523 = load i16, ptr %nTop, align 2
  %conv587 = zext i16 %523 to i32
  %524 = load ptr, ptr %zEndAff, align 8
  call void @codeApplyAffinity(ptr noundef %520, i32 noundef %add586, i32 noundef %conv587, ptr noundef %524)
  br label %if.end589

if.else588:                                       ; preds = %if.end581
  br label %if.end589

if.end589:                                        ; preds = %if.else588, %if.then583
  %525 = load i16, ptr %nTop, align 2
  %conv590 = zext i16 %525 to i32
  %526 = load i32, ptr %nConstraint298, align 4
  %add591 = add nsw i32 %526, %conv590
  store i32 %add591, ptr %nConstraint298, align 4
  %527 = load ptr, ptr %pRight563, align 8
  %call592 = call i32 @sqlite3ExprIsVector(ptr noundef %527)
  %cmp593 = icmp eq i32 %call592, 0
  br i1 %cmp593, label %if.then595, label %if.else596

if.then595:                                       ; preds = %if.end589
  %528 = load ptr, ptr %pLevel.addr, align 8
  %529 = load ptr, ptr %pRangeEnd, align 8
  call void @disableTerm(ptr noundef %528, ptr noundef %529)
  br label %if.end597

if.else596:                                       ; preds = %if.end589
  store i32 1, ptr %endEq, align 4
  br label %if.end597

if.end597:                                        ; preds = %if.else596, %if.then595
  br label %if.end610

if.else598:                                       ; preds = %if.end559
  %530 = load i8, ptr %bStopAtNull, align 1
  %tobool599 = icmp ne i8 %530, 0
  br i1 %tobool599, label %if.then600, label %if.end609

if.then600:                                       ; preds = %if.else598
  %531 = load i32, ptr %regBignull, align 4
  %cmp601 = icmp eq i32 %531, 0
  br i1 %cmp601, label %if.then603, label %if.end607

if.then603:                                       ; preds = %if.then600
  %532 = load ptr, ptr %v.addr, align 8
  %533 = load i32, ptr %regBase, align 4
  %534 = load i16, ptr %nEq, align 2
  %conv604 = zext i16 %534 to i32
  %add605 = add nsw i32 %533, %conv604
  %call606 = call i32 @sqlite3VdbeAddOp2(ptr noundef %532, i32 noundef 73, i32 noundef 0, i32 noundef %add605)
  store i32 0, ptr %endEq, align 4
  br label %if.end607

if.end607:                                        ; preds = %if.then603, %if.then600
  %535 = load i32, ptr %nConstraint298, align 4
  %inc608 = add nsw i32 %535, 1
  store i32 %inc608, ptr %nConstraint298, align 4
  br label %if.end609

if.end609:                                        ; preds = %if.end607, %if.else598
  br label %if.end610

if.end610:                                        ; preds = %if.end609, %if.end597
  %536 = load ptr, ptr %db, align 8
  %537 = load ptr, ptr %zStartAff, align 8
  call void @sqlite3DbFree(ptr noundef %536, ptr noundef %537)
  %538 = load ptr, ptr %db, align 8
  %539 = load ptr, ptr %zEndAff, align 8
  call void @sqlite3DbFree(ptr noundef %538, ptr noundef %539)
  %540 = load ptr, ptr %v.addr, align 8
  %call611 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %540)
  %541 = load ptr, ptr %pLevel.addr, align 8
  %p2612 = getelementptr inbounds nuw %struct.WhereLevel, ptr %541, i32 0, i32 18
  store i32 %call611, ptr %p2612, align 4
  %542 = load i32, ptr %nConstraint298, align 4
  %tobool613 = icmp ne i32 %542, 0
  br i1 %tobool613, label %if.then614, label %if.end627

if.then614:                                       ; preds = %if.end610
  %543 = load i32, ptr %regBignull, align 4
  %tobool615 = icmp ne i32 %543, 0
  br i1 %tobool615, label %if.then616, label %if.end620

if.then616:                                       ; preds = %if.then614
  %544 = load ptr, ptr %v.addr, align 8
  %545 = load i32, ptr %regBignull, align 4
  %546 = load ptr, ptr %v.addr, align 8
  %call617 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %546)
  %add618 = add nsw i32 %call617, 3
  %call619 = call i32 @sqlite3VdbeAddOp2(ptr noundef %544, i32 noundef 20, i32 noundef %545, i32 noundef %add618)
  br label %if.end620

if.end620:                                        ; preds = %if.then616, %if.then614
  %547 = load i32, ptr %bRev, align 4
  %mul621 = mul nsw i32 %547, 2
  %548 = load i32, ptr %endEq, align 4
  %add622 = add nsw i32 %mul621, %548
  %idxprom623 = sext i32 %add622 to i64
  %arrayidx624 = getelementptr inbounds [4 x i8], ptr @sqlite3WhereCodeOneLoopStart.aEndOp, i64 0, i64 %idxprom623
  %549 = load i8, ptr %arrayidx624, align 1
  %conv625 = zext i8 %549 to i32
  store i32 %conv625, ptr %op299, align 4
  %550 = load ptr, ptr %v.addr, align 8
  %551 = load i32, ptr %op299, align 4
  %552 = load i32, ptr %iIdxCur, align 4
  %553 = load i32, ptr %addrNxt, align 4
  %554 = load i32, ptr %regBase, align 4
  %555 = load i32, ptr %nConstraint298, align 4
  %call626 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %550, i32 noundef %551, i32 noundef %552, i32 noundef %553, i32 noundef %554, i32 noundef %555)
  br label %if.end627

if.end627:                                        ; preds = %if.end620, %if.end610
  %556 = load i32, ptr %regBignull, align 4
  %tobool628 = icmp ne i32 %556, 0
  br i1 %tobool628, label %if.then629, label %if.end642

if.then629:                                       ; preds = %if.end627
  %557 = load ptr, ptr %v.addr, align 8
  %558 = load i32, ptr %regBignull, align 4
  %559 = load ptr, ptr %v.addr, align 8
  %call630 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %559)
  %add631 = add nsw i32 %call630, 2
  %call632 = call i32 @sqlite3VdbeAddOp2(ptr noundef %557, i32 noundef 18, i32 noundef %558, i32 noundef %add631)
  %560 = load i32, ptr %bRev, align 4
  %mul633 = mul nsw i32 %560, 2
  %561 = load i8, ptr %bSeekPastNull, align 1
  %conv634 = zext i8 %561 to i32
  %add635 = add nsw i32 %mul633, %conv634
  %idxprom636 = sext i32 %add635 to i64
  %arrayidx637 = getelementptr inbounds [4 x i8], ptr @sqlite3WhereCodeOneLoopStart.aEndOp, i64 0, i64 %idxprom636
  %562 = load i8, ptr %arrayidx637, align 1
  %conv638 = zext i8 %562 to i32
  store i32 %conv638, ptr %op299, align 4
  %563 = load ptr, ptr %v.addr, align 8
  %564 = load i32, ptr %op299, align 4
  %565 = load i32, ptr %iIdxCur, align 4
  %566 = load i32, ptr %addrNxt, align 4
  %567 = load i32, ptr %regBase, align 4
  %568 = load i32, ptr %nConstraint298, align 4
  %569 = load i8, ptr %bSeekPastNull, align 1
  %conv639 = zext i8 %569 to i32
  %add640 = add nsw i32 %568, %conv639
  %call641 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %563, i32 noundef %564, i32 noundef %565, i32 noundef %566, i32 noundef %567, i32 noundef %add640)
  br label %if.end642

if.end642:                                        ; preds = %if.then629, %if.end627
  %570 = load ptr, ptr %pLoop, align 8
  %wsFlags643 = getelementptr inbounds nuw %struct.WhereLoop, ptr %570, i32 0, i32 8
  %571 = load i32, ptr %wsFlags643, align 8
  %and644 = and i32 %571, 262144
  %tobool645 = icmp ne i32 %and644, 0
  br i1 %tobool645, label %if.then646, label %if.end648

if.then646:                                       ; preds = %if.end642
  %572 = load ptr, ptr %v.addr, align 8
  %573 = load i32, ptr %iIdxCur, align 4
  %call647 = call i32 @sqlite3VdbeAddOp2(ptr noundef %572, i32 noundef 119, i32 noundef %573, i32 noundef 1)
  br label %if.end648

if.end648:                                        ; preds = %if.then646, %if.end642
  %574 = load ptr, ptr %pLoop, align 8
  %wsFlags649 = getelementptr inbounds nuw %struct.WhereLoop, ptr %574, i32 0, i32 8
  %575 = load i32, ptr %wsFlags649, align 8
  %and650 = and i32 %575, 64
  %cmp651 = icmp ne i32 %and650, 0
  br i1 %cmp651, label %land.rhs653, label %land.end658

land.rhs653:                                      ; preds = %if.end648
  %576 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags = getelementptr inbounds nuw %struct.WhereInfo, ptr %576, i32 0, i32 10
  %577 = load i16, ptr %wctrlFlags, align 8
  %conv654 = zext i16 %577 to i32
  %and655 = and i32 %conv654, 32
  %cmp656 = icmp eq i32 %and655, 0
  br label %land.end658

land.end658:                                      ; preds = %land.rhs653, %if.end648
  %578 = phi i1 [ false, %if.end648 ], [ %cmp656, %land.rhs653 ]
  %land.ext = zext i1 %578 to i32
  store i32 %land.ext, ptr %omitTable, align 4
  %579 = load i32, ptr %omitTable, align 4
  %tobool659 = icmp ne i32 %579, 0
  br i1 %tobool659, label %if.then660, label %if.else661

if.then660:                                       ; preds = %land.end658
  br label %if.end718

if.else661:                                       ; preds = %land.end658
  %580 = load ptr, ptr %pIdx, align 8
  %pTable662 = getelementptr inbounds nuw %struct.Index, ptr %580, i32 0, i32 3
  %581 = load ptr, ptr %pTable662, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %581, i32 0, i32 9
  %582 = load i32, ptr %tabFlags, align 8
  %and663 = and i32 %582, 32
  %cmp664 = icmp eq i32 %and663, 0
  br i1 %cmp664, label %if.then666, label %if.else688

if.then666:                                       ; preds = %if.else661
  %583 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags667 = getelementptr inbounds nuw %struct.WhereInfo, ptr %583, i32 0, i32 10
  %584 = load i16, ptr %wctrlFlags667, align 8
  %conv668 = zext i16 %584 to i32
  %and669 = and i32 %conv668, 1024
  %tobool670 = icmp ne i32 %and669, 0
  br i1 %tobool670, label %if.then681, label %lor.lhs.false671

lor.lhs.false671:                                 ; preds = %if.then666
  %585 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags672 = getelementptr inbounds nuw %struct.WhereInfo, ptr %585, i32 0, i32 10
  %586 = load i16, ptr %wctrlFlags672, align 8
  %conv673 = zext i16 %586 to i32
  %and674 = and i32 %conv673, 4096
  %tobool675 = icmp ne i32 %and674, 0
  br i1 %tobool675, label %land.lhs.true676, label %if.else686

land.lhs.true676:                                 ; preds = %lor.lhs.false671
  %587 = load ptr, ptr %pWInfo.addr, align 8
  %eOnePass677 = getelementptr inbounds nuw %struct.WhereInfo, ptr %587, i32 0, i32 14
  %588 = load i8, ptr %eOnePass677, align 1
  %conv678 = zext i8 %588 to i32
  %cmp679 = icmp eq i32 %conv678, 1
  br i1 %cmp679, label %if.then681, label %if.else686

if.then681:                                       ; preds = %land.lhs.true676, %if.then666
  %589 = load ptr, ptr %pParse.addr, align 8
  %nMem682 = getelementptr inbounds nuw %struct.Parse, ptr %589, i32 0, i32 18
  %590 = load i32, ptr %nMem682, align 8
  %inc683 = add nsw i32 %590, 1
  store i32 %inc683, ptr %nMem682, align 8
  store i32 %inc683, ptr %iRowidReg, align 4
  %591 = load ptr, ptr %v.addr, align 8
  %592 = load i32, ptr %iIdxCur, align 4
  %593 = load i32, ptr %iRowidReg, align 4
  %call684 = call i32 @sqlite3VdbeAddOp2(ptr noundef %591, i32 noundef 135, i32 noundef %592, i32 noundef %593)
  %594 = load ptr, ptr %v.addr, align 8
  %595 = load i32, ptr %iCur, align 4
  %596 = load i32, ptr %iRowidReg, align 4
  %call685 = call i32 @sqlite3VdbeAddOp3(ptr noundef %594, i32 noundef 31, i32 noundef %595, i32 noundef 0, i32 noundef %596)
  br label %if.end687

if.else686:                                       ; preds = %land.lhs.true676, %lor.lhs.false671
  %597 = load ptr, ptr %pWInfo.addr, align 8
  %598 = load ptr, ptr %pIdx, align 8
  %599 = load i32, ptr %iCur, align 4
  %600 = load i32, ptr %iIdxCur, align 4
  call void @codeDeferredSeek(ptr noundef %597, ptr noundef %598, i32 noundef %599, i32 noundef %600)
  br label %if.end687

if.end687:                                        ; preds = %if.else686, %if.then681
  br label %if.end717

if.else688:                                       ; preds = %if.else661
  %601 = load i32, ptr %iCur, align 4
  %602 = load i32, ptr %iIdxCur, align 4
  %cmp689 = icmp ne i32 %601, %602
  br i1 %cmp689, label %if.then691, label %if.end716

if.then691:                                       ; preds = %if.else688
  %603 = load ptr, ptr %pIdx, align 8
  %pTable692 = getelementptr inbounds nuw %struct.Index, ptr %603, i32 0, i32 3
  %604 = load ptr, ptr %pTable692, align 8
  %call693 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %604)
  store ptr %call693, ptr %pPk, align 8
  %605 = load ptr, ptr %pParse.addr, align 8
  %606 = load ptr, ptr %pPk, align 8
  %nKeyCol694 = getelementptr inbounds nuw %struct.Index, ptr %606, i32 0, i32 13
  %607 = load i16, ptr %nKeyCol694, align 2
  %conv695 = zext i16 %607 to i32
  %call696 = call i32 @sqlite3GetTempRange(ptr noundef %605, i32 noundef %conv695)
  store i32 %call696, ptr %iRowidReg, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond697

for.cond697:                                      ; preds = %for.inc710, %if.then691
  %608 = load i32, ptr %j, align 4
  %609 = load ptr, ptr %pPk, align 8
  %nKeyCol698 = getelementptr inbounds nuw %struct.Index, ptr %609, i32 0, i32 13
  %610 = load i16, ptr %nKeyCol698, align 2
  %conv699 = zext i16 %610 to i32
  %cmp700 = icmp slt i32 %608, %conv699
  br i1 %cmp700, label %for.body702, label %for.end712

for.body702:                                      ; preds = %for.cond697
  %611 = load ptr, ptr %pIdx, align 8
  %612 = load ptr, ptr %pPk, align 8
  %aiColumn703 = getelementptr inbounds nuw %struct.Index, ptr %612, i32 0, i32 1
  %613 = load ptr, ptr %aiColumn703, align 8
  %614 = load i32, ptr %j, align 4
  %idxprom704 = sext i32 %614 to i64
  %arrayidx705 = getelementptr inbounds i16, ptr %613, i64 %idxprom704
  %615 = load i16, ptr %arrayidx705, align 2
  %call706 = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %611, i16 noundef signext %615)
  %conv707 = sext i16 %call706 to i32
  store i32 %conv707, ptr %k, align 4
  %616 = load ptr, ptr %v.addr, align 8
  %617 = load i32, ptr %iIdxCur, align 4
  %618 = load i32, ptr %k, align 4
  %619 = load i32, ptr %iRowidReg, align 4
  %620 = load i32, ptr %j, align 4
  %add708 = add nsw i32 %619, %620
  %call709 = call i32 @sqlite3VdbeAddOp3(ptr noundef %616, i32 noundef 90, i32 noundef %617, i32 noundef %618, i32 noundef %add708)
  br label %for.inc710

for.inc710:                                       ; preds = %for.body702
  %621 = load i32, ptr %j, align 4
  %inc711 = add nsw i32 %621, 1
  store i32 %inc711, ptr %j, align 4
  br label %for.cond697, !llvm.loop !10

for.end712:                                       ; preds = %for.cond697
  %622 = load ptr, ptr %v.addr, align 8
  %623 = load i32, ptr %iCur, align 4
  %624 = load i32, ptr %addrCont, align 4
  %625 = load i32, ptr %iRowidReg, align 4
  %626 = load ptr, ptr %pPk, align 8
  %nKeyCol713 = getelementptr inbounds nuw %struct.Index, ptr %626, i32 0, i32 13
  %627 = load i16, ptr %nKeyCol713, align 2
  %conv714 = zext i16 %627 to i32
  %call715 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %622, i32 noundef 28, i32 noundef %623, i32 noundef %624, i32 noundef %625, i32 noundef %conv714)
  br label %if.end716

if.end716:                                        ; preds = %for.end712, %if.else688
  br label %if.end717

if.end717:                                        ; preds = %if.end716, %if.end687
  br label %if.end718

if.end718:                                        ; preds = %if.end717, %if.then660
  %628 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin719 = getelementptr inbounds nuw %struct.WhereLevel, ptr %628, i32 0, i32 0
  %629 = load i32, ptr %iLeftJoin719, align 8
  %cmp720 = icmp eq i32 %629, 0
  br i1 %cmp720, label %land.lhs.true722, label %if.end729

land.lhs.true722:                                 ; preds = %if.end718
  %630 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags723 = getelementptr inbounds nuw %struct.WhereInfo, ptr %630, i32 0, i32 10
  %631 = load i16, ptr %wctrlFlags723, align 8
  %conv724 = zext i16 %631 to i32
  %and725 = and i32 %conv724, 32
  %cmp726 = icmp eq i32 %and725, 0
  br i1 %cmp726, label %if.then728, label %if.end729

if.then728:                                       ; preds = %land.lhs.true722
  %632 = load ptr, ptr %pIdx, align 8
  %633 = load i32, ptr %iCur, align 4
  %634 = load i32, ptr %iIdxCur, align 4
  %635 = load ptr, ptr %pWInfo.addr, align 8
  call void @whereIndexExprTrans(ptr noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef %635)
  br label %if.end729

if.end729:                                        ; preds = %if.then728, %land.lhs.true722, %if.end718
  %636 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %636, i32 0, i32 9
  %637 = load ptr, ptr %pPartIdxWhere, align 8
  %tobool730 = icmp ne ptr %637, null
  br i1 %tobool730, label %if.then731, label %if.end733

if.then731:                                       ; preds = %if.end729
  %638 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere732 = getelementptr inbounds nuw %struct.Index, ptr %638, i32 0, i32 9
  %639 = load ptr, ptr %pPartIdxWhere732, align 8
  %640 = load i32, ptr %iCur, align 4
  %641 = load ptr, ptr %pWC, align 8
  call void @whereApplyPartialIndexConstraints(ptr noundef %639, i32 noundef %640, ptr noundef %641)
  br label %if.end733

if.end733:                                        ; preds = %if.then731, %if.end729
  %642 = load ptr, ptr %pLoop, align 8
  %wsFlags734 = getelementptr inbounds nuw %struct.WhereLoop, ptr %642, i32 0, i32 8
  %643 = load i32, ptr %wsFlags734, align 8
  %and735 = and i32 %643, 4096
  %tobool736 = icmp ne i32 %and735, 0
  br i1 %tobool736, label %if.then737, label %if.else739

if.then737:                                       ; preds = %if.end733
  %644 = load ptr, ptr %pLevel.addr, align 8
  %op738 = getelementptr inbounds nuw %struct.WhereLevel, ptr %644, i32 0, i32 14
  store i8 -86, ptr %op738, align 1
  br label %if.end746

if.else739:                                       ; preds = %if.end733
  %645 = load i32, ptr %bRev, align 4
  %tobool740 = icmp ne i32 %645, 0
  br i1 %tobool740, label %if.then741, label %if.else743

if.then741:                                       ; preds = %if.else739
  %646 = load ptr, ptr %pLevel.addr, align 8
  %op742 = getelementptr inbounds nuw %struct.WhereLevel, ptr %646, i32 0, i32 14
  store i8 4, ptr %op742, align 1
  br label %if.end745

if.else743:                                       ; preds = %if.else739
  %647 = load ptr, ptr %pLevel.addr, align 8
  %op744 = getelementptr inbounds nuw %struct.WhereLevel, ptr %647, i32 0, i32 14
  store i8 5, ptr %op744, align 1
  br label %if.end745

if.end745:                                        ; preds = %if.else743, %if.then741
  br label %if.end746

if.end746:                                        ; preds = %if.end745, %if.then737
  %648 = load i32, ptr %iIdxCur, align 4
  %649 = load ptr, ptr %pLevel.addr, align 8
  %p1747 = getelementptr inbounds nuw %struct.WhereLevel, ptr %649, i32 0, i32 17
  store i32 %648, ptr %p1747, align 8
  %650 = load ptr, ptr %pLoop, align 8
  %wsFlags748 = getelementptr inbounds nuw %struct.WhereLoop, ptr %650, i32 0, i32 8
  %651 = load i32, ptr %wsFlags748, align 8
  %and749 = and i32 %651, 65536
  %cmp750 = icmp ne i32 %and749, 0
  %652 = zext i1 %cmp750 to i64
  %cond752 = select i1 %cmp750, i32 1, i32 0
  %conv753 = trunc i32 %cond752 to i8
  %653 = load ptr, ptr %pLevel.addr, align 8
  %p3754 = getelementptr inbounds nuw %struct.WhereLevel, ptr %653, i32 0, i32 15
  store i8 %conv753, ptr %p3754, align 2
  %654 = load ptr, ptr %pLoop, align 8
  %wsFlags755 = getelementptr inbounds nuw %struct.WhereLoop, ptr %654, i32 0, i32 8
  %655 = load i32, ptr %wsFlags755, align 8
  %and756 = and i32 %655, 15
  %cmp757 = icmp eq i32 %and756, 0
  br i1 %cmp757, label %if.then759, label %if.else760

if.then759:                                       ; preds = %if.end746
  %656 = load ptr, ptr %pLevel.addr, align 8
  %p5 = getelementptr inbounds nuw %struct.WhereLevel, ptr %656, i32 0, i32 16
  store i8 1, ptr %p5, align 1
  br label %if.end761

if.else760:                                       ; preds = %if.end746
  br label %if.end761

if.end761:                                        ; preds = %if.else760, %if.then759
  %657 = load i32, ptr %omitTable, align 4
  %tobool762 = icmp ne i32 %657, 0
  br i1 %tobool762, label %if.then763, label %if.end764

if.then763:                                       ; preds = %if.end761
  store ptr null, ptr %pIdx, align 8
  br label %if.end764

if.end764:                                        ; preds = %if.then763, %if.end761
  br label %if.end1078

if.else765:                                       ; preds = %if.else287
  %658 = load ptr, ptr %pLoop, align 8
  %wsFlags766 = getelementptr inbounds nuw %struct.WhereLoop, ptr %658, i32 0, i32 8
  %659 = load i32, ptr %wsFlags766, align 8
  %and767 = and i32 %659, 8192
  %tobool768 = icmp ne i32 %and767, 0
  br i1 %tobool768, label %if.then769, label %if.else1055

if.then769:                                       ; preds = %if.else765
  store ptr null, ptr %pCov, align 8
  %660 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %660, i32 0, i32 17
  %661 = load i32, ptr %nTab, align 4
  %inc770 = add nsw i32 %661, 1
  store i32 %inc770, ptr %nTab, align 4
  store i32 %661, ptr %iCovCur, align 4
  %662 = load ptr, ptr %pParse.addr, align 8
  %nMem772 = getelementptr inbounds nuw %struct.Parse, ptr %662, i32 0, i32 18
  %663 = load i32, ptr %nMem772, align 8
  %inc773 = add nsw i32 %663, 1
  store i32 %inc773, ptr %nMem772, align 8
  store i32 %inc773, ptr %regReturn771, align 4
  store i32 0, ptr %regRowset, align 4
  store i32 0, ptr %regRowid, align 4
  %664 = load ptr, ptr %pParse.addr, align 8
  %call774 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %664)
  store i32 %call774, ptr %iLoopBody, align 4
  store i32 0, ptr %untestedTerms, align 4
  store ptr null, ptr %pAndExpr, align 8
  %665 = load ptr, ptr %pTabItem, align 8
  %pTab776 = getelementptr inbounds nuw %struct.SrcList_item, ptr %665, i32 0, i32 4
  %666 = load ptr, ptr %pTab776, align 8
  store ptr %666, ptr %pTab, align 8
  %667 = load ptr, ptr %pLoop, align 8
  %aLTerm777 = getelementptr inbounds nuw %struct.WhereLoop, ptr %667, i32 0, i32 12
  %668 = load ptr, ptr %aLTerm777, align 8
  %arrayidx778 = getelementptr inbounds ptr, ptr %668, i64 0
  %669 = load ptr, ptr %arrayidx778, align 8
  store ptr %669, ptr %pTerm, align 8
  %670 = load ptr, ptr %pTerm, align 8
  %u779 = getelementptr inbounds nuw %struct.WhereTerm, ptr %670, i32 0, i32 10
  %671 = load ptr, ptr %u779, align 8
  %wc = getelementptr inbounds nuw %struct.WhereOrInfo, ptr %671, i32 0, i32 0
  store ptr %wc, ptr %pOrWc, align 8
  %672 = load ptr, ptr %pLevel.addr, align 8
  %op780 = getelementptr inbounds nuw %struct.WhereLevel, ptr %672, i32 0, i32 14
  store i8 66, ptr %op780, align 1
  %673 = load i32, ptr %regReturn771, align 4
  %674 = load ptr, ptr %pLevel.addr, align 8
  %p1781 = getelementptr inbounds nuw %struct.WhereLevel, ptr %674, i32 0, i32 17
  store i32 %673, ptr %p1781, align 8
  %675 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %675, i32 0, i32 11
  %676 = load i8, ptr %nLevel, align 2
  %conv782 = zext i8 %676 to i32
  %cmp783 = icmp sgt i32 %conv782, 1
  br i1 %cmp783, label %if.then785, label %if.else821

if.then785:                                       ; preds = %if.then769
  %677 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel786 = getelementptr inbounds nuw %struct.WhereInfo, ptr %677, i32 0, i32 11
  %678 = load i8, ptr %nLevel786, align 2
  %conv787 = zext i8 %678 to i32
  %679 = load i32, ptr %iLevel.addr, align 4
  %sub788 = sub nsw i32 %conv787, %679
  %sub789 = sub nsw i32 %sub788, 1
  store i32 %sub789, ptr %nNotReady, align 4
  %680 = load ptr, ptr %db, align 8
  %681 = load i32, ptr %nNotReady, align 4
  %conv790 = sext i32 %681 to i64
  %mul791 = mul i64 %conv790, 112
  %add792 = add i64 120, %mul791
  %call793 = call ptr @sqlite3DbMallocRaw(ptr noundef %680, i64 noundef %add792)
  store ptr %call793, ptr %pOrTab, align 8
  %682 = load ptr, ptr %pOrTab, align 8
  %cmp794 = icmp eq ptr %682, null
  br i1 %cmp794, label %if.then796, label %if.end797

if.then796:                                       ; preds = %if.then785
  %683 = load i64, ptr %notReady.addr, align 8
  store i64 %683, ptr %retval, align 8
  br label %return

if.end797:                                        ; preds = %if.then785
  %684 = load i32, ptr %nNotReady, align 4
  %add798 = add nsw i32 %684, 1
  %conv799 = trunc i32 %add798 to i8
  %conv800 = zext i8 %conv799 to i32
  %685 = load ptr, ptr %pOrTab, align 8
  %nAlloc = getelementptr inbounds nuw %struct.SrcList, ptr %685, i32 0, i32 1
  store i32 %conv800, ptr %nAlloc, align 4
  %686 = load ptr, ptr %pOrTab, align 8
  %nAlloc801 = getelementptr inbounds nuw %struct.SrcList, ptr %686, i32 0, i32 1
  %687 = load i32, ptr %nAlloc801, align 4
  %688 = load ptr, ptr %pOrTab, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %688, i32 0, i32 0
  store i32 %687, ptr %nSrc, align 8
  %689 = load ptr, ptr %pOrTab, align 8
  %a802 = getelementptr inbounds nuw %struct.SrcList, ptr %689, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a802, i64 0, i64 0
  %690 = load ptr, ptr %pTabItem, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %690, i64 112, i1 false)
  %691 = load ptr, ptr %pWInfo.addr, align 8
  %pTabList803 = getelementptr inbounds nuw %struct.WhereInfo, ptr %691, i32 0, i32 1
  %692 = load ptr, ptr %pTabList803, align 8
  %a804 = getelementptr inbounds nuw %struct.SrcList, ptr %692, i32 0, i32 2
  %arraydecay805 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a804, i64 0, i64 0
  store ptr %arraydecay805, ptr %origSrc, align 8
  store i32 1, ptr %k, align 4
  br label %for.cond806

for.cond806:                                      ; preds = %for.inc818, %if.end797
  %693 = load i32, ptr %k, align 4
  %694 = load i32, ptr %nNotReady, align 4
  %cmp807 = icmp sle i32 %693, %694
  br i1 %cmp807, label %for.body809, label %for.end820

for.body809:                                      ; preds = %for.cond806
  %695 = load ptr, ptr %pOrTab, align 8
  %a810 = getelementptr inbounds nuw %struct.SrcList, ptr %695, i32 0, i32 2
  %696 = load i32, ptr %k, align 4
  %idxprom811 = sext i32 %696 to i64
  %arrayidx812 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a810, i64 0, i64 %idxprom811
  %697 = load ptr, ptr %origSrc, align 8
  %698 = load ptr, ptr %pLevel.addr, align 8
  %699 = load i32, ptr %k, align 4
  %idxprom813 = sext i32 %699 to i64
  %arrayidx814 = getelementptr inbounds %struct.WhereLevel, ptr %698, i64 %idxprom813
  %iFrom815 = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx814, i32 0, i32 13
  %700 = load i8, ptr %iFrom815, align 4
  %idxprom816 = zext i8 %700 to i64
  %arrayidx817 = getelementptr inbounds nuw %struct.SrcList_item, ptr %697, i64 %idxprom816
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx812, ptr align 8 %arrayidx817, i64 112, i1 false)
  br label %for.inc818

for.inc818:                                       ; preds = %for.body809
  %701 = load i32, ptr %k, align 4
  %inc819 = add nsw i32 %701, 1
  store i32 %inc819, ptr %k, align 4
  br label %for.cond806, !llvm.loop !11

for.end820:                                       ; preds = %for.cond806
  br label %if.end823

if.else821:                                       ; preds = %if.then769
  %702 = load ptr, ptr %pWInfo.addr, align 8
  %pTabList822 = getelementptr inbounds nuw %struct.WhereInfo, ptr %702, i32 0, i32 1
  %703 = load ptr, ptr %pTabList822, align 8
  store ptr %703, ptr %pOrTab, align 8
  br label %if.end823

if.end823:                                        ; preds = %if.else821, %for.end820
  %704 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags824 = getelementptr inbounds nuw %struct.WhereInfo, ptr %704, i32 0, i32 10
  %705 = load i16, ptr %wctrlFlags824, align 8
  %conv825 = zext i16 %705 to i32
  %and826 = and i32 %conv825, 16
  %cmp827 = icmp eq i32 %and826, 0
  br i1 %cmp827, label %if.then829, label %if.end849

if.then829:                                       ; preds = %if.end823
  %706 = load ptr, ptr %pTab, align 8
  %tabFlags830 = getelementptr inbounds nuw %struct.Table, ptr %706, i32 0, i32 9
  %707 = load i32, ptr %tabFlags830, align 8
  %and831 = and i32 %707, 32
  %cmp832 = icmp eq i32 %and831, 0
  br i1 %cmp832, label %if.then834, label %if.else838

if.then834:                                       ; preds = %if.then829
  %708 = load ptr, ptr %pParse.addr, align 8
  %nMem835 = getelementptr inbounds nuw %struct.Parse, ptr %708, i32 0, i32 18
  %709 = load i32, ptr %nMem835, align 8
  %inc836 = add nsw i32 %709, 1
  store i32 %inc836, ptr %nMem835, align 8
  store i32 %inc836, ptr %regRowset, align 4
  %710 = load ptr, ptr %v.addr, align 8
  %711 = load i32, ptr %regRowset, align 4
  %call837 = call i32 @sqlite3VdbeAddOp2(ptr noundef %710, i32 noundef 73, i32 noundef 0, i32 noundef %711)
  br label %if.end846

if.else838:                                       ; preds = %if.then829
  %712 = load ptr, ptr %pTab, align 8
  %call840 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %712)
  store ptr %call840, ptr %pPk839, align 8
  %713 = load ptr, ptr %pParse.addr, align 8
  %nTab841 = getelementptr inbounds nuw %struct.Parse, ptr %713, i32 0, i32 17
  %714 = load i32, ptr %nTab841, align 4
  %inc842 = add nsw i32 %714, 1
  store i32 %inc842, ptr %nTab841, align 4
  store i32 %714, ptr %regRowset, align 4
  %715 = load ptr, ptr %v.addr, align 8
  %716 = load i32, ptr %regRowset, align 4
  %717 = load ptr, ptr %pPk839, align 8
  %nKeyCol843 = getelementptr inbounds nuw %struct.Index, ptr %717, i32 0, i32 13
  %718 = load i16, ptr %nKeyCol843, align 2
  %conv844 = zext i16 %718 to i32
  %call845 = call i32 @sqlite3VdbeAddOp2(ptr noundef %715, i32 noundef 112, i32 noundef %716, i32 noundef %conv844)
  %719 = load ptr, ptr %pParse.addr, align 8
  %720 = load ptr, ptr %pPk839, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %719, ptr noundef %720)
  br label %if.end846

if.end846:                                        ; preds = %if.else838, %if.then834
  %721 = load ptr, ptr %pParse.addr, align 8
  %nMem847 = getelementptr inbounds nuw %struct.Parse, ptr %721, i32 0, i32 18
  %722 = load i32, ptr %nMem847, align 8
  %inc848 = add nsw i32 %722, 1
  store i32 %inc848, ptr %nMem847, align 8
  store i32 %inc848, ptr %regRowid, align 4
  br label %if.end849

if.end849:                                        ; preds = %if.end846, %if.end823
  %723 = load ptr, ptr %v.addr, align 8
  %724 = load i32, ptr %regReturn771, align 4
  %call850 = call i32 @sqlite3VdbeAddOp2(ptr noundef %723, i32 noundef 70, i32 noundef 0, i32 noundef %724)
  store i32 %call850, ptr %iRetInit, align 4
  %725 = load ptr, ptr %pWC, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %725, i32 0, i32 4
  %726 = load i32, ptr %nTerm, align 4
  %cmp851 = icmp sgt i32 %726, 1
  br i1 %cmp851, label %if.then853, label %if.end900

if.then853:                                       ; preds = %if.end849
  store i32 0, ptr %iTerm, align 4
  br label %for.cond854

for.cond854:                                      ; preds = %for.inc893, %if.then853
  %727 = load i32, ptr %iTerm, align 4
  %728 = load ptr, ptr %pWC, align 8
  %nTerm855 = getelementptr inbounds nuw %struct.WhereClause, ptr %728, i32 0, i32 4
  %729 = load i32, ptr %nTerm855, align 4
  %cmp856 = icmp slt i32 %727, %729
  br i1 %cmp856, label %for.body858, label %for.end895

for.body858:                                      ; preds = %for.cond854
  %730 = load ptr, ptr %pWC, align 8
  %a860 = getelementptr inbounds nuw %struct.WhereClause, ptr %730, i32 0, i32 6
  %731 = load ptr, ptr %a860, align 8
  %732 = load i32, ptr %iTerm, align 4
  %idxprom861 = sext i32 %732 to i64
  %arrayidx862 = getelementptr inbounds %struct.WhereTerm, ptr %731, i64 %idxprom861
  %pExpr863 = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx862, i32 0, i32 0
  %733 = load ptr, ptr %pExpr863, align 8
  store ptr %733, ptr %pExpr859, align 8
  %734 = load ptr, ptr %pWC, align 8
  %a864 = getelementptr inbounds nuw %struct.WhereClause, ptr %734, i32 0, i32 6
  %735 = load ptr, ptr %a864, align 8
  %736 = load i32, ptr %iTerm, align 4
  %idxprom865 = sext i32 %736 to i64
  %arrayidx866 = getelementptr inbounds %struct.WhereTerm, ptr %735, i64 %idxprom865
  %737 = load ptr, ptr %pTerm, align 8
  %cmp867 = icmp eq ptr %arrayidx866, %737
  br i1 %cmp867, label %if.then869, label %if.end870

if.then869:                                       ; preds = %for.body858
  br label %for.inc893

if.end870:                                        ; preds = %for.body858
  %738 = load ptr, ptr %pWC, align 8
  %a871 = getelementptr inbounds nuw %struct.WhereClause, ptr %738, i32 0, i32 6
  %739 = load ptr, ptr %a871, align 8
  %740 = load i32, ptr %iTerm, align 4
  %idxprom872 = sext i32 %740 to i64
  %arrayidx873 = getelementptr inbounds %struct.WhereTerm, ptr %739, i64 %idxprom872
  %wtFlags874 = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx873, i32 0, i32 3
  %741 = load i16, ptr %wtFlags874, align 2
  %conv875 = zext i16 %741 to i32
  %and876 = and i32 %conv875, 6
  %cmp877 = icmp ne i32 %and876, 0
  br i1 %cmp877, label %if.then879, label %if.end880

if.then879:                                       ; preds = %if.end870
  br label %for.inc893

if.end880:                                        ; preds = %if.end870
  %742 = load ptr, ptr %pWC, align 8
  %a881 = getelementptr inbounds nuw %struct.WhereClause, ptr %742, i32 0, i32 6
  %743 = load ptr, ptr %a881, align 8
  %744 = load i32, ptr %iTerm, align 4
  %idxprom882 = sext i32 %744 to i64
  %arrayidx883 = getelementptr inbounds %struct.WhereTerm, ptr %743, i64 %idxprom882
  %eOperator884 = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx883, i32 0, i32 4
  %745 = load i16, ptr %eOperator884, align 4
  %conv885 = zext i16 %745 to i32
  %and886 = and i32 %conv885, 8191
  %cmp887 = icmp eq i32 %and886, 0
  br i1 %cmp887, label %if.then889, label %if.end890

if.then889:                                       ; preds = %if.end880
  br label %for.inc893

if.end890:                                        ; preds = %if.end880
  %746 = load ptr, ptr %db, align 8
  %747 = load ptr, ptr %pExpr859, align 8
  %call891 = call ptr @sqlite3ExprDup(ptr noundef %746, ptr noundef %747, i32 noundef 0)
  store ptr %call891, ptr %pExpr859, align 8
  %748 = load ptr, ptr %pParse.addr, align 8
  %749 = load ptr, ptr %pAndExpr, align 8
  %750 = load ptr, ptr %pExpr859, align 8
  %call892 = call ptr @sqlite3ExprAnd(ptr noundef %748, ptr noundef %749, ptr noundef %750)
  store ptr %call892, ptr %pAndExpr, align 8
  br label %for.inc893

for.inc893:                                       ; preds = %if.end890, %if.then889, %if.then879, %if.then869
  %751 = load i32, ptr %iTerm, align 4
  %inc894 = add nsw i32 %751, 1
  store i32 %inc894, ptr %iTerm, align 4
  br label %for.cond854, !llvm.loop !12

for.end895:                                       ; preds = %for.cond854
  %752 = load ptr, ptr %pAndExpr, align 8
  %tobool896 = icmp ne ptr %752, null
  br i1 %tobool896, label %if.then897, label %if.end899

if.then897:                                       ; preds = %for.end895
  %753 = load ptr, ptr %pParse.addr, align 8
  %754 = load ptr, ptr %pAndExpr, align 8
  %call898 = call ptr @sqlite3PExpr(ptr noundef %753, i32 noundef 65580, ptr noundef null, ptr noundef %754)
  store ptr %call898, ptr %pAndExpr, align 8
  br label %if.end899

if.end899:                                        ; preds = %if.then897, %for.end895
  br label %if.end900

if.end900:                                        ; preds = %if.end899, %if.end849
  %755 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags901 = getelementptr inbounds nuw %struct.WhereInfo, ptr %755, i32 0, i32 10
  %756 = load i16, ptr %wctrlFlags901, align 8
  %conv902 = zext i16 %756 to i32
  %and903 = and i32 %conv902, 1024
  %or904 = or i32 32, %and903
  %conv905 = trunc i32 %or904 to i16
  store i16 %conv905, ptr %wctrlFlags775, align 2
  %757 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %757, i8 noundef zeroext 1, ptr noundef @.str.778)
  store i32 0, ptr %ii, align 4
  br label %for.cond906

for.cond906:                                      ; preds = %for.inc1031, %if.end900
  %758 = load i32, ptr %ii, align 4
  %759 = load ptr, ptr %pOrWc, align 8
  %nTerm907 = getelementptr inbounds nuw %struct.WhereClause, ptr %759, i32 0, i32 4
  %760 = load i32, ptr %nTerm907, align 4
  %cmp908 = icmp slt i32 %758, %760
  br i1 %cmp908, label %for.body910, label %for.end1033

for.body910:                                      ; preds = %for.cond906
  %761 = load ptr, ptr %pOrWc, align 8
  %a911 = getelementptr inbounds nuw %struct.WhereClause, ptr %761, i32 0, i32 6
  %762 = load ptr, ptr %a911, align 8
  %763 = load i32, ptr %ii, align 4
  %idxprom912 = sext i32 %763 to i64
  %arrayidx913 = getelementptr inbounds %struct.WhereTerm, ptr %762, i64 %idxprom912
  store ptr %arrayidx913, ptr %pOrTerm, align 8
  %764 = load ptr, ptr %pOrTerm, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %764, i32 0, i32 8
  %765 = load i32, ptr %leftCursor, align 4
  %766 = load i32, ptr %iCur, align 4
  %cmp914 = icmp eq i32 %765, %766
  br i1 %cmp914, label %if.then922, label %lor.lhs.false916

lor.lhs.false916:                                 ; preds = %for.body910
  %767 = load ptr, ptr %pOrTerm, align 8
  %eOperator917 = getelementptr inbounds nuw %struct.WhereTerm, ptr %767, i32 0, i32 4
  %768 = load i16, ptr %eOperator917, align 4
  %conv918 = zext i16 %768 to i32
  %and919 = and i32 %conv918, 1024
  %cmp920 = icmp ne i32 %and919, 0
  br i1 %cmp920, label %if.then922, label %if.end1030

if.then922:                                       ; preds = %lor.lhs.false916, %for.body910
  %769 = load ptr, ptr %pOrTerm, align 8
  %pExpr923 = getelementptr inbounds nuw %struct.WhereTerm, ptr %769, i32 0, i32 0
  %770 = load ptr, ptr %pExpr923, align 8
  store ptr %770, ptr %pOrExpr, align 8
  store i32 0, ptr %jmp1, align 4
  %771 = load ptr, ptr %pAndExpr, align 8
  %tobool924 = icmp ne ptr %771, null
  br i1 %tobool924, label %if.then925, label %if.end927

if.then925:                                       ; preds = %if.then922
  %772 = load ptr, ptr %pOrExpr, align 8
  %773 = load ptr, ptr %pAndExpr, align 8
  %pLeft926 = getelementptr inbounds nuw %struct.Expr, ptr %773, i32 0, i32 4
  store ptr %772, ptr %pLeft926, align 8
  %774 = load ptr, ptr %pAndExpr, align 8
  store ptr %774, ptr %pOrExpr, align 8
  br label %if.end927

if.end927:                                        ; preds = %if.then925, %if.then922
  %775 = load ptr, ptr %pParse.addr, align 8
  %776 = load i32, ptr %ii, align 4
  %add928 = add nsw i32 %776, 1
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %775, i8 noundef zeroext 1, ptr noundef @.str.779, i32 noundef %add928)
  %777 = load ptr, ptr %pParse.addr, align 8
  %778 = load ptr, ptr %pOrTab, align 8
  %779 = load ptr, ptr %pOrExpr, align 8
  %780 = load i16, ptr %wctrlFlags775, align 2
  %781 = load i32, ptr %iCovCur, align 4
  %call929 = call ptr @sqlite3WhereBegin(ptr noundef %777, ptr noundef %778, ptr noundef %779, ptr noundef null, ptr noundef null, i16 noundef zeroext %780, i32 noundef %781)
  store ptr %call929, ptr %pSubWInfo, align 8
  %782 = load ptr, ptr %pSubWInfo, align 8
  %tobool930 = icmp ne ptr %782, null
  br i1 %tobool930, label %if.then931, label %if.end1029

if.then931:                                       ; preds = %if.end927
  %783 = load ptr, ptr %pParse.addr, align 8
  %784 = load ptr, ptr %pOrTab, align 8
  %785 = load ptr, ptr %pSubWInfo, align 8
  %a932 = getelementptr inbounds nuw %struct.WhereInfo, ptr %785, i32 0, i32 24
  %arrayidx933 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a932, i64 0, i64 0
  %call934 = call i32 @sqlite3WhereExplainOneScan(ptr noundef %783, ptr noundef %784, ptr noundef %arrayidx933, i16 noundef zeroext 0)
  store i32 %call934, ptr %addrExplain, align 4
  %786 = load i32, ptr %addrExplain, align 4
  %787 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags935 = getelementptr inbounds nuw %struct.WhereInfo, ptr %787, i32 0, i32 10
  %788 = load i16, ptr %wctrlFlags935, align 8
  %conv936 = zext i16 %788 to i32
  %and937 = and i32 %conv936, 16
  %cmp938 = icmp eq i32 %and937, 0
  br i1 %cmp938, label %if.then940, label %if.end987

if.then940:                                       ; preds = %if.then931
  %789 = load i32, ptr %ii, align 4
  %790 = load ptr, ptr %pOrWc, align 8
  %nTerm941 = getelementptr inbounds nuw %struct.WhereClause, ptr %790, i32 0, i32 4
  %791 = load i32, ptr %nTerm941, align 4
  %sub942 = sub nsw i32 %791, 1
  %cmp943 = icmp eq i32 %789, %sub942
  br i1 %cmp943, label %cond.true945, label %cond.false946

cond.true945:                                     ; preds = %if.then940
  br label %cond.end947

cond.false946:                                    ; preds = %if.then940
  %792 = load i32, ptr %ii, align 4
  br label %cond.end947

cond.end947:                                      ; preds = %cond.false946, %cond.true945
  %cond948 = phi i32 [ -1, %cond.true945 ], [ %792, %cond.false946 ]
  store i32 %cond948, ptr %iSet, align 4
  %793 = load ptr, ptr %pTab, align 8
  %tabFlags949 = getelementptr inbounds nuw %struct.Table, ptr %793, i32 0, i32 9
  %794 = load i32, ptr %tabFlags949, align 8
  %and950 = and i32 %794, 32
  %cmp951 = icmp eq i32 %and950, 0
  br i1 %cmp951, label %if.then953, label %if.else955

if.then953:                                       ; preds = %cond.end947
  %795 = load ptr, ptr %v.addr, align 8
  %796 = load ptr, ptr %pTab, align 8
  %797 = load i32, ptr %iCur, align 4
  %798 = load i32, ptr %regRowid, align 4
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %795, ptr noundef %796, i32 noundef %797, i32 noundef -1, i32 noundef %798)
  %799 = load ptr, ptr %v.addr, align 8
  %800 = load i32, ptr %regRowset, align 4
  %801 = load i32, ptr %regRowid, align 4
  %802 = load i32, ptr %iSet, align 4
  %call954 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %799, i32 noundef 42, i32 noundef %800, i32 noundef 0, i32 noundef %801, i32 noundef %802)
  store i32 %call954, ptr %jmp1, align 4
  br label %if.end986

if.else955:                                       ; preds = %cond.end947
  %803 = load ptr, ptr %pTab, align 8
  %call957 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %803)
  store ptr %call957, ptr %pPk956, align 8
  %804 = load ptr, ptr %pPk956, align 8
  %nKeyCol958 = getelementptr inbounds nuw %struct.Index, ptr %804, i32 0, i32 13
  %805 = load i16, ptr %nKeyCol958, align 2
  %conv959 = zext i16 %805 to i32
  store i32 %conv959, ptr %nPk, align 4
  %806 = load ptr, ptr %pParse.addr, align 8
  %807 = load i32, ptr %nPk, align 4
  %call960 = call i32 @sqlite3GetTempRange(ptr noundef %806, i32 noundef %807)
  store i32 %call960, ptr %r, align 4
  store i32 0, ptr %iPk, align 4
  br label %for.cond961

for.cond961:                                      ; preds = %for.inc970, %if.else955
  %808 = load i32, ptr %iPk, align 4
  %809 = load i32, ptr %nPk, align 4
  %cmp962 = icmp slt i32 %808, %809
  br i1 %cmp962, label %for.body964, label %for.end972

for.body964:                                      ; preds = %for.cond961
  %810 = load ptr, ptr %pPk956, align 8
  %aiColumn965 = getelementptr inbounds nuw %struct.Index, ptr %810, i32 0, i32 1
  %811 = load ptr, ptr %aiColumn965, align 8
  %812 = load i32, ptr %iPk, align 4
  %idxprom966 = sext i32 %812 to i64
  %arrayidx967 = getelementptr inbounds i16, ptr %811, i64 %idxprom966
  %813 = load i16, ptr %arrayidx967, align 2
  %conv968 = sext i16 %813 to i32
  store i32 %conv968, ptr %iCol, align 4
  %814 = load ptr, ptr %v.addr, align 8
  %815 = load ptr, ptr %pTab, align 8
  %816 = load i32, ptr %iCur, align 4
  %817 = load i32, ptr %iCol, align 4
  %818 = load i32, ptr %r, align 4
  %819 = load i32, ptr %iPk, align 4
  %add969 = add nsw i32 %818, %819
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %814, ptr noundef %815, i32 noundef %816, i32 noundef %817, i32 noundef %add969)
  br label %for.inc970

for.inc970:                                       ; preds = %for.body964
  %820 = load i32, ptr %iPk, align 4
  %inc971 = add nsw i32 %820, 1
  store i32 %inc971, ptr %iPk, align 4
  br label %for.cond961, !llvm.loop !13

for.end972:                                       ; preds = %for.cond961
  %821 = load i32, ptr %iSet, align 4
  %tobool973 = icmp ne i32 %821, 0
  br i1 %tobool973, label %if.then974, label %if.end976

if.then974:                                       ; preds = %for.end972
  %822 = load ptr, ptr %v.addr, align 8
  %823 = load i32, ptr %regRowset, align 4
  %824 = load i32, ptr %r, align 4
  %825 = load i32, ptr %nPk, align 4
  %call975 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %822, i32 noundef 29, i32 noundef %823, i32 noundef 0, i32 noundef %824, i32 noundef %825)
  store i32 %call975, ptr %jmp1, align 4
  br label %if.end976

if.end976:                                        ; preds = %if.then974, %for.end972
  %826 = load i32, ptr %iSet, align 4
  %cmp977 = icmp sge i32 %826, 0
  br i1 %cmp977, label %if.then979, label %if.end985

if.then979:                                       ; preds = %if.end976
  %827 = load ptr, ptr %v.addr, align 8
  %828 = load i32, ptr %r, align 4
  %829 = load i32, ptr %nPk, align 4
  %830 = load i32, ptr %regRowid, align 4
  %call980 = call i32 @sqlite3VdbeAddOp3(ptr noundef %827, i32 noundef 92, i32 noundef %828, i32 noundef %829, i32 noundef %830)
  %831 = load ptr, ptr %v.addr, align 8
  %832 = load i32, ptr %regRowset, align 4
  %833 = load i32, ptr %regRowid, align 4
  %834 = load i32, ptr %r, align 4
  %835 = load i32, ptr %nPk, align 4
  %call981 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %831, i32 noundef 132, i32 noundef %832, i32 noundef %833, i32 noundef %834, i32 noundef %835)
  %836 = load i32, ptr %iSet, align 4
  %tobool982 = icmp ne i32 %836, 0
  br i1 %tobool982, label %if.then983, label %if.end984

if.then983:                                       ; preds = %if.then979
  %837 = load ptr, ptr %v.addr, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %837, i16 noundef zeroext 16)
  br label %if.end984

if.end984:                                        ; preds = %if.then983, %if.then979
  br label %if.end985

if.end985:                                        ; preds = %if.end984, %if.end976
  %838 = load ptr, ptr %pParse.addr, align 8
  %839 = load i32, ptr %r, align 4
  %840 = load i32, ptr %nPk, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %838, i32 noundef %839, i32 noundef %840)
  br label %if.end986

if.end986:                                        ; preds = %if.end985, %if.then953
  br label %if.end987

if.end987:                                        ; preds = %if.end986, %if.then931
  %841 = load ptr, ptr %v.addr, align 8
  %842 = load i32, ptr %regReturn771, align 4
  %843 = load i32, ptr %iLoopBody, align 4
  %call988 = call i32 @sqlite3VdbeAddOp2(ptr noundef %841, i32 noundef 12, i32 noundef %842, i32 noundef %843)
  %844 = load i32, ptr %jmp1, align 4
  %tobool989 = icmp ne i32 %844, 0
  br i1 %tobool989, label %if.then990, label %if.end991

if.then990:                                       ; preds = %if.end987
  %845 = load ptr, ptr %v.addr, align 8
  %846 = load i32, ptr %jmp1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %845, i32 noundef %846)
  br label %if.end991

if.end991:                                        ; preds = %if.then990, %if.end987
  %847 = load ptr, ptr %pSubWInfo, align 8
  %untestedTerms992 = getelementptr inbounds nuw %struct.WhereInfo, ptr %847, i32 0, i32 15
  %848 = load i8, ptr %untestedTerms992, align 2
  %tobool993 = icmp ne i8 %848, 0
  br i1 %tobool993, label %if.then994, label %if.end995

if.then994:                                       ; preds = %if.end991
  store i32 1, ptr %untestedTerms, align 4
  br label %if.end995

if.end995:                                        ; preds = %if.then994, %if.end991
  %849 = load ptr, ptr %pSubWInfo, align 8
  %a996 = getelementptr inbounds nuw %struct.WhereInfo, ptr %849, i32 0, i32 24
  %arrayidx997 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a996, i64 0, i64 0
  %pWLoop998 = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx997, i32 0, i32 20
  %850 = load ptr, ptr %pWLoop998, align 8
  store ptr %850, ptr %pSubLoop, align 8
  %851 = load ptr, ptr %pSubLoop, align 8
  %wsFlags999 = getelementptr inbounds nuw %struct.WhereLoop, ptr %851, i32 0, i32 8
  %852 = load i32, ptr %wsFlags999, align 8
  %and1000 = and i32 %852, 512
  %cmp1001 = icmp ne i32 %and1000, 0
  br i1 %cmp1001, label %land.lhs.true1003, label %if.else1027

land.lhs.true1003:                                ; preds = %if.end995
  %853 = load i32, ptr %ii, align 4
  %cmp1004 = icmp eq i32 %853, 0
  br i1 %cmp1004, label %land.lhs.true1011, label %lor.lhs.false1006

lor.lhs.false1006:                                ; preds = %land.lhs.true1003
  %854 = load ptr, ptr %pSubLoop, align 8
  %u1007 = getelementptr inbounds nuw %struct.WhereLoop, ptr %854, i32 0, i32 7
  %pIndex1008 = getelementptr inbounds nuw %struct.anon.19, ptr %u1007, i32 0, i32 4
  %855 = load ptr, ptr %pIndex1008, align 8
  %856 = load ptr, ptr %pCov, align 8
  %cmp1009 = icmp eq ptr %855, %856
  br i1 %cmp1009, label %land.lhs.true1011, label %if.else1027

land.lhs.true1011:                                ; preds = %lor.lhs.false1006, %land.lhs.true1003
  %857 = load ptr, ptr %pTab, align 8
  %tabFlags1012 = getelementptr inbounds nuw %struct.Table, ptr %857, i32 0, i32 9
  %858 = load i32, ptr %tabFlags1012, align 8
  %and1013 = and i32 %858, 32
  %cmp1014 = icmp eq i32 %and1013, 0
  br i1 %cmp1014, label %if.then1024, label %lor.lhs.false1016

lor.lhs.false1016:                                ; preds = %land.lhs.true1011
  %859 = load ptr, ptr %pSubLoop, align 8
  %u1017 = getelementptr inbounds nuw %struct.WhereLoop, ptr %859, i32 0, i32 7
  %pIndex1018 = getelementptr inbounds nuw %struct.anon.19, ptr %u1017, i32 0, i32 4
  %860 = load ptr, ptr %pIndex1018, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %860, i32 0, i32 16
  %bf.load1019 = load i16, ptr %idxType, align 1
  %bf.clear1020 = and i16 %bf.load1019, 3
  %bf.cast1021 = zext i16 %bf.clear1020 to i32
  %cmp1022 = icmp eq i32 %bf.cast1021, 2
  br i1 %cmp1022, label %if.else1027, label %if.then1024

if.then1024:                                      ; preds = %lor.lhs.false1016, %land.lhs.true1011
  %861 = load ptr, ptr %pSubLoop, align 8
  %u1025 = getelementptr inbounds nuw %struct.WhereLoop, ptr %861, i32 0, i32 7
  %pIndex1026 = getelementptr inbounds nuw %struct.anon.19, ptr %u1025, i32 0, i32 4
  %862 = load ptr, ptr %pIndex1026, align 8
  store ptr %862, ptr %pCov, align 8
  br label %if.end1028

if.else1027:                                      ; preds = %lor.lhs.false1016, %lor.lhs.false1006, %if.end995
  store ptr null, ptr %pCov, align 8
  br label %if.end1028

if.end1028:                                       ; preds = %if.else1027, %if.then1024
  %863 = load ptr, ptr %pSubWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %863)
  %864 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeExplainPop(ptr noundef %864)
  br label %if.end1029

if.end1029:                                       ; preds = %if.end1028, %if.end927
  br label %if.end1030

if.end1030:                                       ; preds = %if.end1029, %lor.lhs.false916
  br label %for.inc1031

for.inc1031:                                      ; preds = %if.end1030
  %865 = load i32, ptr %ii, align 4
  %inc1032 = add nsw i32 %865, 1
  store i32 %inc1032, ptr %ii, align 4
  br label %for.cond906, !llvm.loop !14

for.end1033:                                      ; preds = %for.cond906
  %866 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeExplainPop(ptr noundef %866)
  %867 = load ptr, ptr %pCov, align 8
  %868 = load ptr, ptr %pLevel.addr, align 8
  %u1034 = getelementptr inbounds nuw %struct.WhereLevel, ptr %868, i32 0, i32 19
  store ptr %867, ptr %u1034, align 8
  %869 = load ptr, ptr %pCov, align 8
  %tobool1035 = icmp ne ptr %869, null
  br i1 %tobool1035, label %if.then1036, label %if.end1038

if.then1036:                                      ; preds = %for.end1033
  %870 = load i32, ptr %iCovCur, align 4
  %871 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur1037 = getelementptr inbounds nuw %struct.WhereLevel, ptr %871, i32 0, i32 2
  store i32 %870, ptr %iIdxCur1037, align 8
  br label %if.end1038

if.end1038:                                       ; preds = %if.then1036, %for.end1033
  %872 = load ptr, ptr %pAndExpr, align 8
  %tobool1039 = icmp ne ptr %872, null
  br i1 %tobool1039, label %if.then1040, label %if.end1042

if.then1040:                                      ; preds = %if.end1038
  %873 = load ptr, ptr %pAndExpr, align 8
  %pLeft1041 = getelementptr inbounds nuw %struct.Expr, ptr %873, i32 0, i32 4
  store ptr null, ptr %pLeft1041, align 8
  %874 = load ptr, ptr %db, align 8
  %875 = load ptr, ptr %pAndExpr, align 8
  call void @sqlite3ExprDelete(ptr noundef %874, ptr noundef %875)
  br label %if.end1042

if.end1042:                                       ; preds = %if.then1040, %if.end1038
  %876 = load ptr, ptr %v.addr, align 8
  %877 = load i32, ptr %iRetInit, align 4
  %878 = load ptr, ptr %v.addr, align 8
  %call1043 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %878)
  call void @sqlite3VdbeChangeP1(ptr noundef %876, i32 noundef %877, i32 noundef %call1043)
  %879 = load ptr, ptr %v.addr, align 8
  %880 = load ptr, ptr %pLevel.addr, align 8
  %addrBrk1044 = getelementptr inbounds nuw %struct.WhereLevel, ptr %880, i32 0, i32 3
  %881 = load i32, ptr %addrBrk1044, align 4
  %call1045 = call i32 @sqlite3VdbeGoto(ptr noundef %879, i32 noundef %881)
  %882 = load ptr, ptr %v.addr, align 8
  %883 = load i32, ptr %iLoopBody, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %882, i32 noundef %883)
  %884 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel1046 = getelementptr inbounds nuw %struct.WhereInfo, ptr %884, i32 0, i32 11
  %885 = load i8, ptr %nLevel1046, align 2
  %conv1047 = zext i8 %885 to i32
  %cmp1048 = icmp sgt i32 %conv1047, 1
  br i1 %cmp1048, label %if.then1050, label %if.end1051

if.then1050:                                      ; preds = %if.end1042
  %886 = load ptr, ptr %db, align 8
  %887 = load ptr, ptr %pOrTab, align 8
  call void @sqlite3DbFree(ptr noundef %886, ptr noundef %887)
  br label %if.end1051

if.end1051:                                       ; preds = %if.then1050, %if.end1042
  %888 = load i32, ptr %untestedTerms, align 4
  %tobool1052 = icmp ne i32 %888, 0
  br i1 %tobool1052, label %if.end1054, label %if.then1053

if.then1053:                                      ; preds = %if.end1051
  %889 = load ptr, ptr %pLevel.addr, align 8
  %890 = load ptr, ptr %pTerm, align 8
  call void @disableTerm(ptr noundef %889, ptr noundef %890)
  br label %if.end1054

if.end1054:                                       ; preds = %if.then1053, %if.end1051
  br label %if.end1077

if.else1055:                                      ; preds = %if.else765
  %891 = load ptr, ptr %pTabItem, align 8
  %fg1056 = getelementptr inbounds nuw %struct.SrcList_item, ptr %891, i32 0, i32 9
  %isRecursive = getelementptr inbounds nuw %struct.anon, ptr %fg1056, i32 0, i32 1
  %bf.load1057 = load i8, ptr %isRecursive, align 1
  %bf.lshr1058 = lshr i8 %bf.load1057, 5
  %bf.clear1059 = and i8 %bf.lshr1058, 1
  %bf.cast1060 = zext i8 %bf.clear1059 to i32
  %tobool1061 = icmp ne i32 %bf.cast1060, 0
  br i1 %tobool1061, label %if.then1062, label %if.else1064

if.then1062:                                      ; preds = %if.else1055
  %892 = load ptr, ptr %pLevel.addr, align 8
  %op1063 = getelementptr inbounds nuw %struct.WhereLevel, ptr %892, i32 0, i32 14
  store i8 -86, ptr %op1063, align 1
  br label %if.end1076

if.else1064:                                      ; preds = %if.else1055
  %893 = load i32, ptr %bRev, align 4
  %idxprom1065 = sext i32 %893 to i64
  %arrayidx1066 = getelementptr inbounds [2 x i8], ptr @sqlite3WhereCodeOneLoopStart.aStep, i64 0, i64 %idxprom1065
  %894 = load i8, ptr %arrayidx1066, align 1
  %895 = load ptr, ptr %pLevel.addr, align 8
  %op1067 = getelementptr inbounds nuw %struct.WhereLevel, ptr %895, i32 0, i32 14
  store i8 %894, ptr %op1067, align 1
  %896 = load i32, ptr %iCur, align 4
  %897 = load ptr, ptr %pLevel.addr, align 8
  %p11068 = getelementptr inbounds nuw %struct.WhereLevel, ptr %897, i32 0, i32 17
  store i32 %896, ptr %p11068, align 8
  %898 = load ptr, ptr %v.addr, align 8
  %899 = load i32, ptr %bRev, align 4
  %idxprom1069 = sext i32 %899 to i64
  %arrayidx1070 = getelementptr inbounds [2 x i8], ptr @sqlite3WhereCodeOneLoopStart.aStart, i64 0, i64 %idxprom1069
  %900 = load i8, ptr %arrayidx1070, align 1
  %conv1071 = zext i8 %900 to i32
  %901 = load i32, ptr %iCur, align 4
  %902 = load i32, ptr %addrHalt, align 4
  %call1072 = call i32 @sqlite3VdbeAddOp2(ptr noundef %898, i32 noundef %conv1071, i32 noundef %901, i32 noundef %902)
  %add1073 = add nsw i32 1, %call1072
  %903 = load ptr, ptr %pLevel.addr, align 8
  %p21074 = getelementptr inbounds nuw %struct.WhereLevel, ptr %903, i32 0, i32 18
  store i32 %add1073, ptr %p21074, align 4
  %904 = load ptr, ptr %pLevel.addr, align 8
  %p51075 = getelementptr inbounds nuw %struct.WhereLevel, ptr %904, i32 0, i32 16
  store i8 1, ptr %p51075, align 1
  br label %if.end1076

if.end1076:                                       ; preds = %if.else1064, %if.then1062
  br label %if.end1077

if.end1077:                                       ; preds = %if.end1076, %if.end1054
  br label %if.end1078

if.end1078:                                       ; preds = %if.end1077, %if.end764
  br label %if.end1079

if.end1079:                                       ; preds = %if.end1078, %if.end286
  br label %if.end1080

if.end1080:                                       ; preds = %if.end1079, %if.end170
  br label %if.end1081

if.end1081:                                       ; preds = %if.end1080, %for.end139
  br label %if.end1082

if.end1082:                                       ; preds = %if.end1081, %if.then32
  %905 = load ptr, ptr %pIdx, align 8
  %tobool1083 = icmp ne ptr %905, null
  %906 = zext i1 %tobool1083 to i64
  %cond1084 = select i1 %tobool1083, i32 1, i32 2
  store i32 %cond1084, ptr %iLoop, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end1082
  store i32 0, ptr %iNext, align 4
  %907 = load ptr, ptr %pWC, align 8
  %a1085 = getelementptr inbounds nuw %struct.WhereClause, ptr %907, i32 0, i32 6
  %908 = load ptr, ptr %a1085, align 8
  store ptr %908, ptr %pTerm, align 8
  %909 = load ptr, ptr %pWC, align 8
  %nTerm1086 = getelementptr inbounds nuw %struct.WhereClause, ptr %909, i32 0, i32 4
  %910 = load i32, ptr %nTerm1086, align 4
  store i32 %910, ptr %j, align 4
  br label %for.cond1087

for.cond1087:                                     ; preds = %for.inc1161, %do.body
  %911 = load i32, ptr %j, align 4
  %cmp1088 = icmp sgt i32 %911, 0
  br i1 %cmp1088, label %for.body1090, label %for.end1163

for.body1090:                                     ; preds = %for.cond1087
  store i32 0, ptr %skipLikeAddr, align 4
  %912 = load ptr, ptr %pTerm, align 8
  %wtFlags1091 = getelementptr inbounds nuw %struct.WhereTerm, ptr %912, i32 0, i32 3
  %913 = load i16, ptr %wtFlags1091, align 2
  %conv1092 = zext i16 %913 to i32
  %and1093 = and i32 %conv1092, 6
  %tobool1094 = icmp ne i32 %and1093, 0
  br i1 %tobool1094, label %if.then1095, label %if.end1096

if.then1095:                                      ; preds = %for.body1090
  br label %for.inc1161

if.end1096:                                       ; preds = %for.body1090
  %914 = load ptr, ptr %pTerm, align 8
  %prereqAll1097 = getelementptr inbounds nuw %struct.WhereTerm, ptr %914, i32 0, i32 12
  %915 = load i64, ptr %prereqAll1097, align 8
  %916 = load ptr, ptr %pLevel.addr, align 8
  %notReady1098 = getelementptr inbounds nuw %struct.WhereLevel, ptr %916, i32 0, i32 21
  %917 = load i64, ptr %notReady1098, align 8
  %and1099 = and i64 %915, %917
  %cmp1100 = icmp ne i64 %and1099, 0
  br i1 %cmp1100, label %if.then1102, label %if.end1104

if.then1102:                                      ; preds = %if.end1096
  %918 = load ptr, ptr %pWInfo.addr, align 8
  %untestedTerms1103 = getelementptr inbounds nuw %struct.WhereInfo, ptr %918, i32 0, i32 15
  store i8 1, ptr %untestedTerms1103, align 2
  br label %for.inc1161

if.end1104:                                       ; preds = %if.end1096
  %919 = load ptr, ptr %pTerm, align 8
  %pExpr1105 = getelementptr inbounds nuw %struct.WhereTerm, ptr %919, i32 0, i32 0
  %920 = load ptr, ptr %pExpr1105, align 8
  store ptr %920, ptr %pE, align 8
  %921 = load ptr, ptr %pTabItem, align 8
  %fg1106 = getelementptr inbounds nuw %struct.SrcList_item, ptr %921, i32 0, i32 9
  %jointype1107 = getelementptr inbounds nuw %struct.anon, ptr %fg1106, i32 0, i32 0
  %922 = load i8, ptr %jointype1107, align 4
  %conv1108 = zext i8 %922 to i32
  %and1109 = and i32 %conv1108, 8
  %tobool1110 = icmp ne i32 %and1109, 0
  br i1 %tobool1110, label %land.lhs.true1111, label %if.end1116

land.lhs.true1111:                                ; preds = %if.end1104
  %923 = load ptr, ptr %pE, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %923, i32 0, i32 2
  %924 = load i32, ptr %flags, align 4
  %and1112 = and i32 %924, 1
  %cmp1113 = icmp ne i32 %and1112, 0
  br i1 %cmp1113, label %if.end1116, label %if.then1115

if.then1115:                                      ; preds = %land.lhs.true1111
  br label %for.inc1161

if.end1116:                                       ; preds = %land.lhs.true1111, %if.end1104
  %925 = load i32, ptr %iLoop, align 4
  %cmp1117 = icmp eq i32 %925, 1
  br i1 %cmp1117, label %land.lhs.true1119, label %if.end1123

land.lhs.true1119:                                ; preds = %if.end1116
  %926 = load ptr, ptr %pE, align 8
  %927 = load ptr, ptr %pLevel.addr, align 8
  %iTabCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %927, i32 0, i32 1
  %928 = load i32, ptr %iTabCur, align 4
  %929 = load ptr, ptr %pIdx, align 8
  %call1120 = call i32 @sqlite3ExprCoveredByIndex(ptr noundef %926, i32 noundef %928, ptr noundef %929)
  %tobool1121 = icmp ne i32 %call1120, 0
  br i1 %tobool1121, label %if.end1123, label %if.then1122

if.then1122:                                      ; preds = %land.lhs.true1119
  store i32 2, ptr %iNext, align 4
  br label %for.inc1161

if.end1123:                                       ; preds = %land.lhs.true1119, %if.end1116
  %930 = load i32, ptr %iLoop, align 4
  %cmp1124 = icmp slt i32 %930, 3
  br i1 %cmp1124, label %land.lhs.true1126, label %if.end1136

land.lhs.true1126:                                ; preds = %if.end1123
  %931 = load ptr, ptr %pTerm, align 8
  %wtFlags1127 = getelementptr inbounds nuw %struct.WhereTerm, ptr %931, i32 0, i32 3
  %932 = load i16, ptr %wtFlags1127, align 2
  %conv1128 = zext i16 %932 to i32
  %and1129 = and i32 %conv1128, 4096
  %tobool1130 = icmp ne i32 %and1129, 0
  br i1 %tobool1130, label %if.then1131, label %if.end1136

if.then1131:                                      ; preds = %land.lhs.true1126
  %933 = load i32, ptr %iNext, align 4
  %cmp1132 = icmp eq i32 %933, 0
  br i1 %cmp1132, label %if.then1134, label %if.end1135

if.then1134:                                      ; preds = %if.then1131
  store i32 3, ptr %iNext, align 4
  br label %if.end1135

if.end1135:                                       ; preds = %if.then1134, %if.then1131
  br label %for.inc1161

if.end1136:                                       ; preds = %land.lhs.true1126, %if.end1123
  %934 = load ptr, ptr %pTerm, align 8
  %wtFlags1137 = getelementptr inbounds nuw %struct.WhereTerm, ptr %934, i32 0, i32 3
  %935 = load i16, ptr %wtFlags1137, align 2
  %conv1138 = zext i16 %935 to i32
  %and1139 = and i32 %conv1138, 512
  %cmp1140 = icmp ne i32 %and1139, 0
  br i1 %cmp1140, label %if.then1142, label %if.end1153

if.then1142:                                      ; preds = %if.end1136
  %936 = load ptr, ptr %pLevel.addr, align 8
  %iLikeRepCntr1143 = getelementptr inbounds nuw %struct.WhereLevel, ptr %936, i32 0, i32 11
  %937 = load i32, ptr %iLikeRepCntr1143, align 4
  store i32 %937, ptr %x, align 4
  %938 = load i32, ptr %x, align 4
  %cmp1144 = icmp ugt i32 %938, 0
  br i1 %cmp1144, label %if.then1146, label %if.end1152

if.then1146:                                      ; preds = %if.then1142
  %939 = load ptr, ptr %v.addr, align 8
  %940 = load i32, ptr %x, align 4
  %and1147 = and i32 %940, 1
  %tobool1148 = icmp ne i32 %and1147, 0
  %941 = zext i1 %tobool1148 to i64
  %cond1149 = select i1 %tobool1148, i32 20, i32 18
  %942 = load i32, ptr %x, align 4
  %shr1150 = lshr i32 %942, 1
  %call1151 = call i32 @sqlite3VdbeAddOp1(ptr noundef %939, i32 noundef %cond1149, i32 noundef %shr1150)
  store i32 %call1151, ptr %skipLikeAddr, align 4
  br label %if.end1152

if.end1152:                                       ; preds = %if.then1146, %if.then1142
  br label %if.end1153

if.end1153:                                       ; preds = %if.end1152, %if.end1136
  %943 = load ptr, ptr %pParse.addr, align 8
  %944 = load ptr, ptr %pE, align 8
  %945 = load i32, ptr %addrCont, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %943, ptr noundef %944, i32 noundef %945, i32 noundef 16)
  %946 = load i32, ptr %skipLikeAddr, align 4
  %tobool1154 = icmp ne i32 %946, 0
  br i1 %tobool1154, label %if.then1155, label %if.end1156

if.then1155:                                      ; preds = %if.end1153
  %947 = load ptr, ptr %v.addr, align 8
  %948 = load i32, ptr %skipLikeAddr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %947, i32 noundef %948)
  br label %if.end1156

if.end1156:                                       ; preds = %if.then1155, %if.end1153
  %949 = load ptr, ptr %pTerm, align 8
  %wtFlags1157 = getelementptr inbounds nuw %struct.WhereTerm, ptr %949, i32 0, i32 3
  %950 = load i16, ptr %wtFlags1157, align 2
  %conv1158 = zext i16 %950 to i32
  %or1159 = or i32 %conv1158, 4
  %conv1160 = trunc i32 %or1159 to i16
  store i16 %conv1160, ptr %wtFlags1157, align 2
  br label %for.inc1161

for.inc1161:                                      ; preds = %if.end1156, %if.end1135, %if.then1122, %if.then1115, %if.then1102, %if.then1095
  %951 = load i32, ptr %j, align 4
  %dec1162 = add nsw i32 %951, -1
  store i32 %dec1162, ptr %j, align 4
  %952 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %952, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond1087, !llvm.loop !15

for.end1163:                                      ; preds = %for.cond1087
  %953 = load i32, ptr %iNext, align 4
  store i32 %953, ptr %iLoop, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end1163
  %954 = load i32, ptr %iLoop, align 4
  %cmp1164 = icmp sgt i32 %954, 0
  br i1 %cmp1164, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  %955 = load ptr, ptr %pWC, align 8
  %a1166 = getelementptr inbounds nuw %struct.WhereClause, ptr %955, i32 0, i32 6
  %956 = load ptr, ptr %a1166, align 8
  store ptr %956, ptr %pTerm, align 8
  %957 = load ptr, ptr %pWC, align 8
  %nTerm1167 = getelementptr inbounds nuw %struct.WhereClause, ptr %957, i32 0, i32 4
  %958 = load i32, ptr %nTerm1167, align 4
  store i32 %958, ptr %j, align 4
  br label %for.cond1168

for.cond1168:                                     ; preds = %for.inc1234, %do.end
  %959 = load i32, ptr %j, align 4
  %cmp1169 = icmp sgt i32 %959, 0
  br i1 %cmp1169, label %for.body1171, label %for.end1237

for.body1171:                                     ; preds = %for.cond1168
  %960 = load ptr, ptr %pTerm, align 8
  %wtFlags1173 = getelementptr inbounds nuw %struct.WhereTerm, ptr %960, i32 0, i32 3
  %961 = load i16, ptr %wtFlags1173, align 2
  %conv1174 = zext i16 %961 to i32
  %and1175 = and i32 %conv1174, 6
  %tobool1176 = icmp ne i32 %and1175, 0
  br i1 %tobool1176, label %if.then1177, label %if.end1178

if.then1177:                                      ; preds = %for.body1171
  br label %for.inc1234

if.end1178:                                       ; preds = %for.body1171
  %962 = load ptr, ptr %pTerm, align 8
  %eOperator1179 = getelementptr inbounds nuw %struct.WhereTerm, ptr %962, i32 0, i32 4
  %963 = load i16, ptr %eOperator1179, align 4
  %conv1180 = zext i16 %963 to i32
  %and1181 = and i32 %conv1180, 130
  %cmp1182 = icmp eq i32 %and1181, 0
  br i1 %cmp1182, label %if.then1184, label %if.end1185

if.then1184:                                      ; preds = %if.end1178
  br label %for.inc1234

if.end1185:                                       ; preds = %if.end1178
  %964 = load ptr, ptr %pTerm, align 8
  %eOperator1186 = getelementptr inbounds nuw %struct.WhereTerm, ptr %964, i32 0, i32 4
  %965 = load i16, ptr %eOperator1186, align 4
  %conv1187 = zext i16 %965 to i32
  %and1188 = and i32 %conv1187, 2048
  %cmp1189 = icmp eq i32 %and1188, 0
  br i1 %cmp1189, label %if.then1191, label %if.end1192

if.then1191:                                      ; preds = %if.end1185
  br label %for.inc1234

if.end1192:                                       ; preds = %if.end1185
  %966 = load ptr, ptr %pTerm, align 8
  %leftCursor1193 = getelementptr inbounds nuw %struct.WhereTerm, ptr %966, i32 0, i32 8
  %967 = load i32, ptr %leftCursor1193, align 4
  %968 = load i32, ptr %iCur, align 4
  %cmp1194 = icmp ne i32 %967, %968
  br i1 %cmp1194, label %if.then1196, label %if.end1197

if.then1196:                                      ; preds = %if.end1192
  br label %for.inc1234

if.end1197:                                       ; preds = %if.end1192
  %969 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin1198 = getelementptr inbounds nuw %struct.WhereLevel, ptr %969, i32 0, i32 0
  %970 = load i32, ptr %iLeftJoin1198, align 8
  %tobool1199 = icmp ne i32 %970, 0
  br i1 %tobool1199, label %if.then1200, label %if.end1201

if.then1200:                                      ; preds = %if.end1197
  br label %for.inc1234

if.end1201:                                       ; preds = %if.end1197
  %971 = load ptr, ptr %pTerm, align 8
  %pExpr1202 = getelementptr inbounds nuw %struct.WhereTerm, ptr %971, i32 0, i32 0
  %972 = load ptr, ptr %pExpr1202, align 8
  store ptr %972, ptr %pE1172, align 8
  %973 = load ptr, ptr %pWC, align 8
  %974 = load i32, ptr %iCur, align 4
  %975 = load ptr, ptr %pTerm, align 8
  %u1203 = getelementptr inbounds nuw %struct.WhereTerm, ptr %975, i32 0, i32 10
  %976 = load i32, ptr %u1203, align 8
  %977 = load i64, ptr %notReady.addr, align 8
  %call1204 = call ptr @sqlite3WhereFindTerm(ptr noundef %973, i32 noundef %974, i32 noundef %976, i64 noundef %977, i32 noundef 131, ptr noundef null)
  store ptr %call1204, ptr %pAlt, align 8
  %978 = load ptr, ptr %pAlt, align 8
  %cmp1205 = icmp eq ptr %978, null
  br i1 %cmp1205, label %if.then1207, label %if.end1208

if.then1207:                                      ; preds = %if.end1201
  br label %for.inc1234

if.end1208:                                       ; preds = %if.end1201
  %979 = load ptr, ptr %pAlt, align 8
  %wtFlags1209 = getelementptr inbounds nuw %struct.WhereTerm, ptr %979, i32 0, i32 3
  %980 = load i16, ptr %wtFlags1209, align 2
  %conv1210 = zext i16 %980 to i32
  %and1211 = and i32 %conv1210, 4
  %tobool1212 = icmp ne i32 %and1211, 0
  br i1 %tobool1212, label %if.then1213, label %if.end1214

if.then1213:                                      ; preds = %if.end1208
  br label %for.inc1234

if.end1214:                                       ; preds = %if.end1208
  %981 = load ptr, ptr %pAlt, align 8
  %eOperator1215 = getelementptr inbounds nuw %struct.WhereTerm, ptr %981, i32 0, i32 4
  %982 = load i16, ptr %eOperator1215, align 4
  %conv1216 = zext i16 %982 to i32
  %and1217 = and i32 %conv1216, 1
  %tobool1218 = icmp ne i32 %and1217, 0
  br i1 %tobool1218, label %land.lhs.true1219, label %if.end1230

land.lhs.true1219:                                ; preds = %if.end1214
  %983 = load ptr, ptr %pAlt, align 8
  %pExpr1220 = getelementptr inbounds nuw %struct.WhereTerm, ptr %983, i32 0, i32 0
  %984 = load ptr, ptr %pExpr1220, align 8
  %flags1221 = getelementptr inbounds nuw %struct.Expr, ptr %984, i32 0, i32 2
  %985 = load i32, ptr %flags1221, align 4
  %and1222 = and i32 %985, 2048
  %tobool1223 = icmp ne i32 %and1222, 0
  br i1 %tobool1223, label %land.lhs.true1224, label %if.end1230

land.lhs.true1224:                                ; preds = %land.lhs.true1219
  %986 = load ptr, ptr %pAlt, align 8
  %pExpr1225 = getelementptr inbounds nuw %struct.WhereTerm, ptr %986, i32 0, i32 0
  %987 = load ptr, ptr %pExpr1225, align 8
  %x1226 = getelementptr inbounds nuw %struct.Expr, ptr %987, i32 0, i32 6
  %988 = load ptr, ptr %x1226, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %988, i32 0, i32 0
  %989 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %989, i32 0, i32 0
  %990 = load i32, ptr %nExpr, align 8
  %cmp1227 = icmp sgt i32 %990, 1
  br i1 %cmp1227, label %if.then1229, label %if.end1230

if.then1229:                                      ; preds = %land.lhs.true1224
  br label %for.inc1234

if.end1230:                                       ; preds = %land.lhs.true1224, %land.lhs.true1219, %if.end1214
  %991 = load ptr, ptr %pAlt, align 8
  %pExpr1231 = getelementptr inbounds nuw %struct.WhereTerm, ptr %991, i32 0, i32 0
  %992 = load ptr, ptr %pExpr1231, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sEAlt, ptr align 8 %992, i64 72, i1 false)
  %993 = load ptr, ptr %pE1172, align 8
  %pLeft1232 = getelementptr inbounds nuw %struct.Expr, ptr %993, i32 0, i32 4
  %994 = load ptr, ptr %pLeft1232, align 8
  %pLeft1233 = getelementptr inbounds nuw %struct.Expr, ptr %sEAlt, i32 0, i32 4
  store ptr %994, ptr %pLeft1233, align 8
  %995 = load ptr, ptr %pParse.addr, align 8
  %996 = load i32, ptr %addrCont, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %995, ptr noundef %sEAlt, i32 noundef %996, i32 noundef 16)
  br label %for.inc1234

for.inc1234:                                      ; preds = %if.end1230, %if.then1229, %if.then1213, %if.then1207, %if.then1200, %if.then1196, %if.then1191, %if.then1184, %if.then1177
  %997 = load i32, ptr %j, align 4
  %dec1235 = add nsw i32 %997, -1
  store i32 %dec1235, ptr %j, align 4
  %998 = load ptr, ptr %pTerm, align 8
  %incdec.ptr1236 = getelementptr inbounds nuw %struct.WhereTerm, ptr %998, i32 1
  store ptr %incdec.ptr1236, ptr %pTerm, align 8
  br label %for.cond1168, !llvm.loop !17

for.end1237:                                      ; preds = %for.cond1168
  %999 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin1238 = getelementptr inbounds nuw %struct.WhereLevel, ptr %999, i32 0, i32 0
  %1000 = load i32, ptr %iLeftJoin1238, align 8
  %tobool1239 = icmp ne i32 %1000, 0
  br i1 %tobool1239, label %if.then1240, label %if.end1272

if.then1240:                                      ; preds = %for.end1237
  %1001 = load ptr, ptr %v.addr, align 8
  %call1241 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %1001)
  %1002 = load ptr, ptr %pLevel.addr, align 8
  %addrFirst = getelementptr inbounds nuw %struct.WhereLevel, ptr %1002, i32 0, i32 7
  store i32 %call1241, ptr %addrFirst, align 4
  %1003 = load ptr, ptr %v.addr, align 8
  %1004 = load ptr, ptr %pLevel.addr, align 8
  %iLeftJoin1242 = getelementptr inbounds nuw %struct.WhereLevel, ptr %1004, i32 0, i32 0
  %1005 = load i32, ptr %iLeftJoin1242, align 8
  %call1243 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1003, i32 noundef 70, i32 noundef 1, i32 noundef %1005)
  %1006 = load ptr, ptr %pWC, align 8
  %a1244 = getelementptr inbounds nuw %struct.WhereClause, ptr %1006, i32 0, i32 6
  %1007 = load ptr, ptr %a1244, align 8
  store ptr %1007, ptr %pTerm, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond1245

for.cond1245:                                     ; preds = %for.inc1268, %if.then1240
  %1008 = load i32, ptr %j, align 4
  %1009 = load ptr, ptr %pWC, align 8
  %nTerm1246 = getelementptr inbounds nuw %struct.WhereClause, ptr %1009, i32 0, i32 4
  %1010 = load i32, ptr %nTerm1246, align 4
  %cmp1247 = icmp slt i32 %1008, %1010
  br i1 %cmp1247, label %for.body1249, label %for.end1271

for.body1249:                                     ; preds = %for.cond1245
  %1011 = load ptr, ptr %pTerm, align 8
  %wtFlags1250 = getelementptr inbounds nuw %struct.WhereTerm, ptr %1011, i32 0, i32 3
  %1012 = load i16, ptr %wtFlags1250, align 2
  %conv1251 = zext i16 %1012 to i32
  %and1252 = and i32 %conv1251, 6
  %tobool1253 = icmp ne i32 %and1252, 0
  br i1 %tobool1253, label %if.then1254, label %if.end1255

if.then1254:                                      ; preds = %for.body1249
  br label %for.inc1268

if.end1255:                                       ; preds = %for.body1249
  %1013 = load ptr, ptr %pTerm, align 8
  %prereqAll1256 = getelementptr inbounds nuw %struct.WhereTerm, ptr %1013, i32 0, i32 12
  %1014 = load i64, ptr %prereqAll1256, align 8
  %1015 = load ptr, ptr %pLevel.addr, align 8
  %notReady1257 = getelementptr inbounds nuw %struct.WhereLevel, ptr %1015, i32 0, i32 21
  %1016 = load i64, ptr %notReady1257, align 8
  %and1258 = and i64 %1014, %1016
  %cmp1259 = icmp ne i64 %and1258, 0
  br i1 %cmp1259, label %if.then1261, label %if.end1262

if.then1261:                                      ; preds = %if.end1255
  br label %for.inc1268

if.end1262:                                       ; preds = %if.end1255
  %1017 = load ptr, ptr %pParse.addr, align 8
  %1018 = load ptr, ptr %pTerm, align 8
  %pExpr1263 = getelementptr inbounds nuw %struct.WhereTerm, ptr %1018, i32 0, i32 0
  %1019 = load ptr, ptr %pExpr1263, align 8
  %1020 = load i32, ptr %addrCont, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %1017, ptr noundef %1019, i32 noundef %1020, i32 noundef 16)
  %1021 = load ptr, ptr %pTerm, align 8
  %wtFlags1264 = getelementptr inbounds nuw %struct.WhereTerm, ptr %1021, i32 0, i32 3
  %1022 = load i16, ptr %wtFlags1264, align 2
  %conv1265 = zext i16 %1022 to i32
  %or1266 = or i32 %conv1265, 4
  %conv1267 = trunc i32 %or1266 to i16
  store i16 %conv1267, ptr %wtFlags1264, align 2
  br label %for.inc1268

for.inc1268:                                      ; preds = %if.end1262, %if.then1261, %if.then1254
  %1023 = load i32, ptr %j, align 4
  %inc1269 = add nsw i32 %1023, 1
  store i32 %inc1269, ptr %j, align 4
  %1024 = load ptr, ptr %pTerm, align 8
  %incdec.ptr1270 = getelementptr inbounds nuw %struct.WhereTerm, ptr %1024, i32 1
  store ptr %incdec.ptr1270, ptr %pTerm, align 8
  br label %for.cond1245, !llvm.loop !18

for.end1271:                                      ; preds = %for.cond1245
  br label %if.end1272

if.end1272:                                       ; preds = %for.end1271, %for.end1237
  %1025 = load ptr, ptr %pLevel.addr, align 8
  %notReady1273 = getelementptr inbounds nuw %struct.WhereLevel, ptr %1025, i32 0, i32 21
  %1026 = load i64, ptr %notReady1273, align 8
  store i64 %1026, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end1272, %if.then796
  %1027 = load i64, ptr %retval, align 8
  ret i64 %1027
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereGetMask(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereFindTerm(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCoveredByIndex(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @codeEqualityTerm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeExprOrVector(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @disableTerm(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @codeAllEqualityTerms(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLikeOptimizationStringFixup(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @updateRangeAffinityStr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeApplyAffinity(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeDeferredSeek(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereIndexExprTrans(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereApplyPartialIndexConstraints(ptr noundef, i32 noundef, ptr noundef) #0

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
!18 = distinct !{!18, !7}
