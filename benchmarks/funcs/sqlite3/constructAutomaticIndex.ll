; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }

@sqlite3StrBINARY = external hidden constant [7 x i8], align 1
@.str.753 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.754 = external hidden unnamed_addr constant [11 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3AllocateIndexObject(ptr noundef, i16 noundef signext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GenerateIndexKey(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsTableConstant(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @constructAutomaticIndex(ptr noundef %pParse, ptr noundef %pWC, ptr noundef %pSrc, i64 noundef %notReady, ptr noundef %pLevel) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %notReady.addr = alloca i64, align 8
  %pLevel.addr = alloca ptr, align 8
  %nKeyCol = alloca i32, align 4
  %pTerm = alloca ptr, align 8
  %pWCEnd = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %v = alloca ptr, align 8
  %addrInit = alloca i32, align 4
  %pTable = alloca ptr, align 8
  %addrTop = alloca i32, align 4
  %regRecord = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %mxBitCol = alloca i32, align 4
  %pColl = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %zNotUsed = alloca ptr, align 8
  %idxCols = alloca i64, align 8
  %extraCols = alloca i64, align 8
  %sentWarning = alloca i8, align 1
  %pPartial = alloca ptr, align 8
  %iContinue = alloca i32, align 4
  %pTabItem = alloca ptr, align 8
  %addrCounter = alloca i32, align 4
  %regBase = alloca i32, align 4
  %pExpr = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %cMask = alloca i64, align 8
  %iCol93 = alloca i32, align 4
  %cMask95 = alloca i64, align 8
  %pX = alloca ptr, align 8
  %regYield = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i64 %notReady, ptr %notReady.addr, align 8
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store i8 0, ptr %sentWarning, align 1
  store ptr null, ptr %pPartial, align 8
  store i32 0, ptr %iContinue, align 4
  store i32 0, ptr %addrCounter, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  %call = call i32 @sqlite3VdbeAddOp0(ptr noundef %2, i32 noundef 17)
  store i32 %call, ptr %addrInit, align 4
  store i32 0, ptr %nKeyCol, align 4
  %3 = load ptr, ptr %pSrc.addr, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pTab, align 8
  store ptr %4, ptr %pTable, align 8
  %5 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %a, align 8
  %7 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %nTerm, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pWCEnd, align 8
  %9 = load ptr, ptr %pLevel.addr, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %pWLoop, align 8
  store ptr %10, ptr %pLoop, align 8
  store i64 0, ptr %idxCols, align 8
  %11 = load ptr, ptr %pWC.addr, align 8
  %a1 = getelementptr inbounds nuw %struct.WhereClause, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %a1, align 8
  store ptr %12, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load ptr, ptr %pTerm, align 8
  %14 = load ptr, ptr %pWCEnd, align 8
  %cmp = icmp ult ptr %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pTerm, align 8
  %pExpr2 = getelementptr inbounds nuw %struct.WhereTerm, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pExpr2, align 8
  store ptr %16, ptr %pExpr, align 8
  %17 = load ptr, ptr %pLoop, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %prereq, align 8
  %cmp3 = icmp eq i64 %18, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %19, i32 0, i32 3
  %20 = load i16, ptr %wtFlags, align 2
  %conv = zext i16 %20 to i32
  %and = and i32 %conv, 2
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %21 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %flags, align 4
  %and7 = and i32 %22, 1
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %23 = load ptr, ptr %pExpr, align 8
  %24 = load ptr, ptr %pSrc.addr, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %iCursor, align 8
  %call11 = call i32 @sqlite3ExprIsTableConstant(ptr noundef %23, i32 noundef %25)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true10
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %pPartial, align 8
  %28 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pExpr, align 8
  %call12 = call ptr @sqlite3ExprDup(ptr noundef %29, ptr noundef %30, i32 noundef 0)
  %call13 = call ptr @sqlite3ExprAnd(ptr noundef %26, ptr noundef %27, ptr noundef %call12)
  store ptr %call13, ptr %pPartial, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %for.body
  %31 = load ptr, ptr %pTerm, align 8
  %32 = load ptr, ptr %pSrc.addr, align 8
  %33 = load i64, ptr %notReady.addr, align 8
  %call14 = call i32 @termCanDriveIndex(ptr noundef %31, ptr noundef %32, i64 noundef %33)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end37

if.then16:                                        ; preds = %if.end
  %34 = load ptr, ptr %pTerm, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %34, i32 0, i32 10
  %35 = load i32, ptr %u, align 8
  store i32 %35, ptr %iCol, align 4
  %36 = load i32, ptr %iCol, align 4
  %cmp17 = icmp sge i32 %36, 64
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  %37 = load i32, ptr %iCol, align 4
  %sh_prom = zext i32 %37 to i64
  %shl = shl i64 1, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -9223372036854775808, %cond.true ], [ %shl, %cond.false ]
  store i64 %cond, ptr %cMask, align 8
  %38 = load i8, ptr %sentWarning, align 1
  %tobool19 = icmp ne i8 %38, 0
  br i1 %tobool19, label %if.end24, label %if.then20

if.then20:                                        ; preds = %cond.end
  %39 = load ptr, ptr %pTable, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zName, align 8
  %41 = load ptr, ptr %pTable, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %aCol, align 8
  %43 = load i32, ptr %iCol, align 4
  %idxprom21 = sext i32 %43 to i64
  %arrayidx22 = getelementptr inbounds %struct.Column, ptr %42, i64 %idxprom21
  %zName23 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx22, i32 0, i32 0
  %44 = load ptr, ptr %zName23, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 284, ptr noundef @.str.753, ptr noundef %40, ptr noundef %44)
  store i8 1, ptr %sentWarning, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %cond.end
  %45 = load i64, ptr %idxCols, align 8
  %46 = load i64, ptr %cMask, align 8
  %and25 = and i64 %45, %46
  %cmp26 = icmp eq i64 %and25, 0
  br i1 %cmp26, label %if.then28, label %if.end36

if.then28:                                        ; preds = %if.end24
  %47 = load ptr, ptr %pParse.addr, align 8
  %db29 = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %db29, align 8
  %49 = load ptr, ptr %pLoop, align 8
  %50 = load i32, ptr %nKeyCol, align 4
  %add = add nsw i32 %50, 1
  %call30 = call i32 @whereLoopResize(ptr noundef %48, ptr noundef %49, i32 noundef %add)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then28
  br label %end_auto_index_create

if.end33:                                         ; preds = %if.then28
  %51 = load ptr, ptr %pTerm, align 8
  %52 = load ptr, ptr %pLoop, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %aLTerm, align 8
  %54 = load i32, ptr %nKeyCol, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %nKeyCol, align 4
  %idxprom34 = sext i32 %54 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %53, i64 %idxprom34
  store ptr %51, ptr %arrayidx35, align 8
  %55 = load i64, ptr %cMask, align 8
  %56 = load i64, ptr %idxCols, align 8
  %or = or i64 %56, %55
  store i64 %or, ptr %idxCols, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end24
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %57 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %57, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %58 = load i32, ptr %nKeyCol, align 4
  %conv38 = trunc i32 %58 to i16
  %59 = load ptr, ptr %pLoop, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %59, i32 0, i32 9
  store i16 %conv38, ptr %nLTerm, align 4
  %60 = load ptr, ptr %pLoop, align 8
  %u39 = getelementptr inbounds nuw %struct.WhereLoop, ptr %60, i32 0, i32 7
  %nEq = getelementptr inbounds nuw %struct.anon.19, ptr %u39, i32 0, i32 0
  store i16 %conv38, ptr %nEq, align 8
  %61 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %61, i32 0, i32 8
  store i32 16961, ptr %wsFlags, align 8
  %62 = load ptr, ptr %pSrc.addr, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %62, i32 0, i32 13
  %63 = load i64, ptr %colUsed, align 8
  %64 = load i64, ptr %idxCols, align 8
  %not = xor i64 %64, -1
  %or40 = or i64 %not, -9223372036854775808
  %and41 = and i64 %63, %or40
  store i64 %and41, ptr %extraCols, align 8
  %65 = load ptr, ptr %pTable, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %65, i32 0, i32 11
  %66 = load i16, ptr %nCol, align 2
  %conv42 = sext i16 %66 to i32
  %cmp43 = icmp slt i32 63, %conv42
  br i1 %cmp43, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %for.end
  br label %cond.end49

cond.false46:                                     ; preds = %for.end
  %67 = load ptr, ptr %pTable, align 8
  %nCol47 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 11
  %68 = load i16, ptr %nCol47, align 2
  %conv48 = sext i16 %68 to i32
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false46, %cond.true45
  %cond50 = phi i32 [ 63, %cond.true45 ], [ %conv48, %cond.false46 ]
  store i32 %cond50, ptr %mxBitCol, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc62, %cond.end49
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %mxBitCol, align 4
  %cmp52 = icmp slt i32 %69, %70
  br i1 %cmp52, label %for.body54, label %for.end64

for.body54:                                       ; preds = %for.cond51
  %71 = load i64, ptr %extraCols, align 8
  %72 = load i32, ptr %i, align 4
  %sh_prom55 = zext i32 %72 to i64
  %shl56 = shl i64 1, %sh_prom55
  %and57 = and i64 %71, %shl56
  %tobool58 = icmp ne i64 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %for.body54
  %73 = load i32, ptr %nKeyCol, align 4
  %inc60 = add nsw i32 %73, 1
  store i32 %inc60, ptr %nKeyCol, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.body54
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %74 = load i32, ptr %i, align 4
  %inc63 = add nsw i32 %74, 1
  store i32 %inc63, ptr %i, align 4
  br label %for.cond51, !llvm.loop !8

for.end64:                                        ; preds = %for.cond51
  %75 = load ptr, ptr %pSrc.addr, align 8
  %colUsed65 = getelementptr inbounds nuw %struct.SrcList_item, ptr %75, i32 0, i32 13
  %76 = load i64, ptr %colUsed65, align 8
  %and66 = and i64 %76, -9223372036854775808
  %tobool67 = icmp ne i64 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %for.end64
  %77 = load ptr, ptr %pTable, align 8
  %nCol69 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 11
  %78 = load i16, ptr %nCol69, align 2
  %conv70 = sext i16 %78 to i32
  %sub = sub nsw i32 %conv70, 64
  %add71 = add nsw i32 %sub, 1
  %79 = load i32, ptr %nKeyCol, align 4
  %add72 = add nsw i32 %79, %add71
  store i32 %add72, ptr %nKeyCol, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %for.end64
  %80 = load ptr, ptr %pParse.addr, align 8
  %db74 = getelementptr inbounds nuw %struct.Parse, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %db74, align 8
  %82 = load i32, ptr %nKeyCol, align 4
  %add75 = add nsw i32 %82, 1
  %conv76 = trunc i32 %add75 to i16
  %call77 = call ptr @sqlite3AllocateIndexObject(ptr noundef %81, i16 noundef signext %conv76, i32 noundef 0, ptr noundef %zNotUsed)
  store ptr %call77, ptr %pIdx, align 8
  %83 = load ptr, ptr %pIdx, align 8
  %cmp78 = icmp eq ptr %83, null
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end73
  br label %end_auto_index_create

if.end81:                                         ; preds = %if.end73
  %84 = load ptr, ptr %pIdx, align 8
  %85 = load ptr, ptr %pLoop, align 8
  %u82 = getelementptr inbounds nuw %struct.WhereLoop, ptr %85, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u82, i32 0, i32 4
  store ptr %84, ptr %pIndex, align 8
  %86 = load ptr, ptr %pIdx, align 8
  %zName83 = getelementptr inbounds nuw %struct.Index, ptr %86, i32 0, i32 0
  store ptr @.str.754, ptr %zName83, align 8
  %87 = load ptr, ptr %pTable, align 8
  %88 = load ptr, ptr %pIdx, align 8
  %pTable84 = getelementptr inbounds nuw %struct.Index, ptr %88, i32 0, i32 3
  store ptr %87, ptr %pTable84, align 8
  store i32 0, ptr %n, align 4
  store i64 0, ptr %idxCols, align 8
  %89 = load ptr, ptr %pWC.addr, align 8
  %a85 = getelementptr inbounds nuw %struct.WhereClause, ptr %89, i32 0, i32 6
  %90 = load ptr, ptr %a85, align 8
  store ptr %90, ptr %pTerm, align 8
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc126, %if.end81
  %91 = load ptr, ptr %pTerm, align 8
  %92 = load ptr, ptr %pWCEnd, align 8
  %cmp87 = icmp ult ptr %91, %92
  br i1 %cmp87, label %for.body89, label %for.end128

for.body89:                                       ; preds = %for.cond86
  %93 = load ptr, ptr %pTerm, align 8
  %94 = load ptr, ptr %pSrc.addr, align 8
  %95 = load i64, ptr %notReady.addr, align 8
  %call90 = call i32 @termCanDriveIndex(ptr noundef %93, ptr noundef %94, i64 noundef %95)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.end125

if.then92:                                        ; preds = %for.body89
  %96 = load ptr, ptr %pTerm, align 8
  %u94 = getelementptr inbounds nuw %struct.WhereTerm, ptr %96, i32 0, i32 10
  %97 = load i32, ptr %u94, align 8
  store i32 %97, ptr %iCol93, align 4
  %98 = load i32, ptr %iCol93, align 4
  %cmp96 = icmp sge i32 %98, 64
  br i1 %cmp96, label %cond.true98, label %cond.false99

cond.true98:                                      ; preds = %if.then92
  br label %cond.end102

cond.false99:                                     ; preds = %if.then92
  %99 = load i32, ptr %iCol93, align 4
  %sh_prom100 = zext i32 %99 to i64
  %shl101 = shl i64 1, %sh_prom100
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false99, %cond.true98
  %cond103 = phi i64 [ -9223372036854775808, %cond.true98 ], [ %shl101, %cond.false99 ]
  store i64 %cond103, ptr %cMask95, align 8
  %100 = load i64, ptr %idxCols, align 8
  %101 = load i64, ptr %cMask95, align 8
  %and104 = and i64 %100, %101
  %cmp105 = icmp eq i64 %and104, 0
  br i1 %cmp105, label %if.then107, label %if.end124

if.then107:                                       ; preds = %cond.end102
  %102 = load ptr, ptr %pTerm, align 8
  %pExpr108 = getelementptr inbounds nuw %struct.WhereTerm, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %pExpr108, align 8
  store ptr %103, ptr %pX, align 8
  %104 = load i64, ptr %cMask95, align 8
  %105 = load i64, ptr %idxCols, align 8
  %or109 = or i64 %105, %104
  store i64 %or109, ptr %idxCols, align 8
  %106 = load ptr, ptr %pTerm, align 8
  %u110 = getelementptr inbounds nuw %struct.WhereTerm, ptr %106, i32 0, i32 10
  %107 = load i32, ptr %u110, align 8
  %conv111 = trunc i32 %107 to i16
  %108 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %aiColumn, align 8
  %110 = load i32, ptr %n, align 4
  %idxprom112 = sext i32 %110 to i64
  %arrayidx113 = getelementptr inbounds i16, ptr %109, i64 %idxprom112
  store i16 %conv111, ptr %arrayidx113, align 2
  %111 = load ptr, ptr %pParse.addr, align 8
  %112 = load ptr, ptr %pX, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %112, i32 0, i32 4
  %113 = load ptr, ptr %pLeft, align 8
  %114 = load ptr, ptr %pX, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %114, i32 0, i32 5
  %115 = load ptr, ptr %pRight, align 8
  %call114 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %111, ptr noundef %113, ptr noundef %115)
  store ptr %call114, ptr %pColl, align 8
  %116 = load ptr, ptr %pColl, align 8
  %tobool115 = icmp ne ptr %116, null
  br i1 %tobool115, label %cond.true116, label %cond.false118

cond.true116:                                     ; preds = %if.then107
  %117 = load ptr, ptr %pColl, align 8
  %zName117 = getelementptr inbounds nuw %struct.CollSeq, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %zName117, align 8
  br label %cond.end119

cond.false118:                                    ; preds = %if.then107
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true116
  %cond120 = phi ptr [ %118, %cond.true116 ], [ @sqlite3StrBINARY, %cond.false118 ]
  %119 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %119, i32 0, i32 8
  %120 = load ptr, ptr %azColl, align 8
  %121 = load i32, ptr %n, align 4
  %idxprom121 = sext i32 %121 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %120, i64 %idxprom121
  store ptr %cond120, ptr %arrayidx122, align 8
  %122 = load i32, ptr %n, align 4
  %inc123 = add nsw i32 %122, 1
  store i32 %inc123, ptr %n, align 4
  br label %if.end124

if.end124:                                        ; preds = %cond.end119, %cond.end102
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %for.body89
  br label %for.inc126

for.inc126:                                       ; preds = %if.end125
  %123 = load ptr, ptr %pTerm, align 8
  %incdec.ptr127 = getelementptr inbounds nuw %struct.WhereTerm, ptr %123, i32 1
  store ptr %incdec.ptr127, ptr %pTerm, align 8
  br label %for.cond86, !llvm.loop !9

for.end128:                                       ; preds = %for.cond86
  store i32 0, ptr %i, align 4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc147, %for.end128
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %mxBitCol, align 4
  %cmp130 = icmp slt i32 %124, %125
  br i1 %cmp130, label %for.body132, label %for.end149

for.body132:                                      ; preds = %for.cond129
  %126 = load i64, ptr %extraCols, align 8
  %127 = load i32, ptr %i, align 4
  %sh_prom133 = zext i32 %127 to i64
  %shl134 = shl i64 1, %sh_prom133
  %and135 = and i64 %126, %shl134
  %tobool136 = icmp ne i64 %and135, 0
  br i1 %tobool136, label %if.then137, label %if.end146

if.then137:                                       ; preds = %for.body132
  %128 = load i32, ptr %i, align 4
  %conv138 = trunc i32 %128 to i16
  %129 = load ptr, ptr %pIdx, align 8
  %aiColumn139 = getelementptr inbounds nuw %struct.Index, ptr %129, i32 0, i32 1
  %130 = load ptr, ptr %aiColumn139, align 8
  %131 = load i32, ptr %n, align 4
  %idxprom140 = sext i32 %131 to i64
  %arrayidx141 = getelementptr inbounds i16, ptr %130, i64 %idxprom140
  store i16 %conv138, ptr %arrayidx141, align 2
  %132 = load ptr, ptr %pIdx, align 8
  %azColl142 = getelementptr inbounds nuw %struct.Index, ptr %132, i32 0, i32 8
  %133 = load ptr, ptr %azColl142, align 8
  %134 = load i32, ptr %n, align 4
  %idxprom143 = sext i32 %134 to i64
  %arrayidx144 = getelementptr inbounds ptr, ptr %133, i64 %idxprom143
  store ptr @sqlite3StrBINARY, ptr %arrayidx144, align 8
  %135 = load i32, ptr %n, align 4
  %inc145 = add nsw i32 %135, 1
  store i32 %inc145, ptr %n, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then137, %for.body132
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %136 = load i32, ptr %i, align 4
  %inc148 = add nsw i32 %136, 1
  store i32 %inc148, ptr %i, align 4
  br label %for.cond129, !llvm.loop !10

for.end149:                                       ; preds = %for.cond129
  %137 = load ptr, ptr %pSrc.addr, align 8
  %colUsed150 = getelementptr inbounds nuw %struct.SrcList_item, ptr %137, i32 0, i32 13
  %138 = load i64, ptr %colUsed150, align 8
  %and151 = and i64 %138, -9223372036854775808
  %tobool152 = icmp ne i64 %and151, 0
  br i1 %tobool152, label %if.then153, label %if.end171

if.then153:                                       ; preds = %for.end149
  store i32 63, ptr %i, align 4
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc168, %if.then153
  %139 = load i32, ptr %i, align 4
  %140 = load ptr, ptr %pTable, align 8
  %nCol155 = getelementptr inbounds nuw %struct.Table, ptr %140, i32 0, i32 11
  %141 = load i16, ptr %nCol155, align 2
  %conv156 = sext i16 %141 to i32
  %cmp157 = icmp slt i32 %139, %conv156
  br i1 %cmp157, label %for.body159, label %for.end170

for.body159:                                      ; preds = %for.cond154
  %142 = load i32, ptr %i, align 4
  %conv160 = trunc i32 %142 to i16
  %143 = load ptr, ptr %pIdx, align 8
  %aiColumn161 = getelementptr inbounds nuw %struct.Index, ptr %143, i32 0, i32 1
  %144 = load ptr, ptr %aiColumn161, align 8
  %145 = load i32, ptr %n, align 4
  %idxprom162 = sext i32 %145 to i64
  %arrayidx163 = getelementptr inbounds i16, ptr %144, i64 %idxprom162
  store i16 %conv160, ptr %arrayidx163, align 2
  %146 = load ptr, ptr %pIdx, align 8
  %azColl164 = getelementptr inbounds nuw %struct.Index, ptr %146, i32 0, i32 8
  %147 = load ptr, ptr %azColl164, align 8
  %148 = load i32, ptr %n, align 4
  %idxprom165 = sext i32 %148 to i64
  %arrayidx166 = getelementptr inbounds ptr, ptr %147, i64 %idxprom165
  store ptr @sqlite3StrBINARY, ptr %arrayidx166, align 8
  %149 = load i32, ptr %n, align 4
  %inc167 = add nsw i32 %149, 1
  store i32 %inc167, ptr %n, align 4
  br label %for.inc168

for.inc168:                                       ; preds = %for.body159
  %150 = load i32, ptr %i, align 4
  %inc169 = add nsw i32 %150, 1
  store i32 %inc169, ptr %i, align 4
  br label %for.cond154, !llvm.loop !11

for.end170:                                       ; preds = %for.cond154
  br label %if.end171

if.end171:                                        ; preds = %for.end170, %for.end149
  %151 = load ptr, ptr %pIdx, align 8
  %aiColumn172 = getelementptr inbounds nuw %struct.Index, ptr %151, i32 0, i32 1
  %152 = load ptr, ptr %aiColumn172, align 8
  %153 = load i32, ptr %n, align 4
  %idxprom173 = sext i32 %153 to i64
  %arrayidx174 = getelementptr inbounds i16, ptr %152, i64 %idxprom173
  store i16 -1, ptr %arrayidx174, align 2
  %154 = load ptr, ptr %pIdx, align 8
  %azColl175 = getelementptr inbounds nuw %struct.Index, ptr %154, i32 0, i32 8
  %155 = load ptr, ptr %azColl175, align 8
  %156 = load i32, ptr %n, align 4
  %idxprom176 = sext i32 %156 to i64
  %arrayidx177 = getelementptr inbounds ptr, ptr %155, i64 %idxprom176
  store ptr @sqlite3StrBINARY, ptr %arrayidx177, align 8
  %157 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %157, i32 0, i32 17
  %158 = load i32, ptr %nTab, align 4
  %inc178 = add nsw i32 %158, 1
  store i32 %inc178, ptr %nTab, align 4
  %159 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %159, i32 0, i32 2
  store i32 %158, ptr %iIdxCur, align 8
  %160 = load ptr, ptr %v, align 8
  %161 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur179 = getelementptr inbounds nuw %struct.WhereLevel, ptr %161, i32 0, i32 2
  %162 = load i32, ptr %iIdxCur179, align 8
  %163 = load i32, ptr %nKeyCol, align 4
  %add180 = add nsw i32 %163, 1
  %call181 = call i32 @sqlite3VdbeAddOp2(ptr noundef %160, i32 noundef 111, i32 noundef %162, i32 noundef %add180)
  %164 = load ptr, ptr %pParse.addr, align 8
  %165 = load ptr, ptr %pIdx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %164, ptr noundef %165)
  %166 = load ptr, ptr %pWC.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereClause, ptr %166, i32 0, i32 0
  %167 = load ptr, ptr %pWInfo, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %167, i32 0, i32 1
  %168 = load ptr, ptr %pTabList, align 8
  %a182 = getelementptr inbounds nuw %struct.SrcList, ptr %168, i32 0, i32 2
  %169 = load ptr, ptr %pLevel.addr, align 8
  %iFrom = getelementptr inbounds nuw %struct.WhereLevel, ptr %169, i32 0, i32 13
  %170 = load i8, ptr %iFrom, align 4
  %idxprom183 = zext i8 %170 to i64
  %arrayidx184 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a182, i64 0, i64 %idxprom183
  store ptr %arrayidx184, ptr %pTabItem, align 8
  %171 = load ptr, ptr %pTabItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %171, i32 0, i32 9
  %viaCoroutine = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %viaCoroutine, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool185 = icmp ne i32 %bf.cast, 0
  br i1 %tobool185, label %if.then186, label %if.else

if.then186:                                       ; preds = %if.end171
  %172 = load ptr, ptr %pTabItem, align 8
  %regReturn = getelementptr inbounds nuw %struct.SrcList_item, ptr %172, i32 0, i32 7
  %173 = load i32, ptr %regReturn, align 4
  store i32 %173, ptr %regYield, align 4
  %174 = load ptr, ptr %v, align 8
  %call187 = call i32 @sqlite3VdbeAddOp2(ptr noundef %174, i32 noundef 70, i32 noundef 0, i32 noundef 0)
  store i32 %call187, ptr %addrCounter, align 4
  %175 = load ptr, ptr %v, align 8
  %176 = load i32, ptr %regYield, align 4
  %177 = load ptr, ptr %pTabItem, align 8
  %addrFillSub = getelementptr inbounds nuw %struct.SrcList_item, ptr %177, i32 0, i32 6
  %178 = load i32, ptr %addrFillSub, align 8
  %call188 = call i32 @sqlite3VdbeAddOp3(ptr noundef %175, i32 noundef 13, i32 noundef %176, i32 noundef 0, i32 noundef %178)
  %179 = load ptr, ptr %v, align 8
  %180 = load i32, ptr %regYield, align 4
  %call189 = call i32 @sqlite3VdbeAddOp1(ptr noundef %179, i32 noundef 14, i32 noundef %180)
  store i32 %call189, ptr %addrTop, align 4
  br label %if.end191

if.else:                                          ; preds = %if.end171
  %181 = load ptr, ptr %v, align 8
  %182 = load ptr, ptr %pLevel.addr, align 8
  %iTabCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %182, i32 0, i32 1
  %183 = load i32, ptr %iTabCur, align 4
  %call190 = call i32 @sqlite3VdbeAddOp1(ptr noundef %181, i32 noundef 36, i32 noundef %183)
  store i32 %call190, ptr %addrTop, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.else, %if.then186
  %184 = load ptr, ptr %pPartial, align 8
  %tobool192 = icmp ne ptr %184, null
  br i1 %tobool192, label %if.then193, label %if.end197

if.then193:                                       ; preds = %if.end191
  %185 = load ptr, ptr %pParse.addr, align 8
  %call194 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %185)
  store i32 %call194, ptr %iContinue, align 4
  %186 = load ptr, ptr %pParse.addr, align 8
  %187 = load ptr, ptr %pPartial, align 8
  %188 = load i32, ptr %iContinue, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %186, ptr noundef %187, i32 noundef %188, i32 noundef 16)
  %189 = load ptr, ptr %pLoop, align 8
  %wsFlags195 = getelementptr inbounds nuw %struct.WhereLoop, ptr %189, i32 0, i32 8
  %190 = load i32, ptr %wsFlags195, align 8
  %or196 = or i32 %190, 131072
  store i32 %or196, ptr %wsFlags195, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then193, %if.end191
  %191 = load ptr, ptr %pParse.addr, align 8
  %call198 = call i32 @sqlite3GetTempReg(ptr noundef %191)
  store i32 %call198, ptr %regRecord, align 4
  %192 = load ptr, ptr %pParse.addr, align 8
  %193 = load ptr, ptr %pIdx, align 8
  %194 = load ptr, ptr %pLevel.addr, align 8
  %iTabCur199 = getelementptr inbounds nuw %struct.WhereLevel, ptr %194, i32 0, i32 1
  %195 = load i32, ptr %iTabCur199, align 4
  %196 = load i32, ptr %regRecord, align 4
  %call200 = call i32 @sqlite3GenerateIndexKey(ptr noundef %192, ptr noundef %193, i32 noundef %195, i32 noundef %196, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0)
  store i32 %call200, ptr %regBase, align 4
  %197 = load ptr, ptr %v, align 8
  %198 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur201 = getelementptr inbounds nuw %struct.WhereLevel, ptr %198, i32 0, i32 2
  %199 = load i32, ptr %iIdxCur201, align 8
  %200 = load i32, ptr %regRecord, align 4
  %call202 = call i32 @sqlite3VdbeAddOp2(ptr noundef %197, i32 noundef 132, i32 noundef %199, i32 noundef %200)
  %201 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %201, i16 noundef zeroext 16)
  %202 = load ptr, ptr %pPartial, align 8
  %tobool203 = icmp ne ptr %202, null
  br i1 %tobool203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end197
  %203 = load ptr, ptr %v, align 8
  %204 = load i32, ptr %iContinue, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %203, i32 noundef %204)
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end197
  %205 = load ptr, ptr %pTabItem, align 8
  %fg206 = getelementptr inbounds nuw %struct.SrcList_item, ptr %205, i32 0, i32 9
  %viaCoroutine207 = getelementptr inbounds nuw %struct.anon, ptr %fg206, i32 0, i32 1
  %bf.load208 = load i8, ptr %viaCoroutine207, align 1
  %bf.lshr209 = lshr i8 %bf.load208, 4
  %bf.clear210 = and i8 %bf.lshr209, 1
  %bf.cast211 = zext i8 %bf.clear210 to i32
  %tobool212 = icmp ne i32 %bf.cast211, 0
  br i1 %tobool212, label %if.then213, label %if.else222

if.then213:                                       ; preds = %if.end205
  %206 = load ptr, ptr %v, align 8
  %207 = load i32, ptr %addrCounter, align 4
  %208 = load i32, ptr %regBase, align 4
  %209 = load i32, ptr %n, align 4
  %add214 = add nsw i32 %208, %209
  call void @sqlite3VdbeChangeP2(ptr noundef %206, i32 noundef %207, i32 noundef %add214)
  %210 = load ptr, ptr %pParse.addr, align 8
  %211 = load i32, ptr %addrTop, align 4
  %212 = load ptr, ptr %pLevel.addr, align 8
  %iTabCur215 = getelementptr inbounds nuw %struct.WhereLevel, ptr %212, i32 0, i32 1
  %213 = load i32, ptr %iTabCur215, align 4
  %214 = load ptr, ptr %pTabItem, align 8
  %regResult = getelementptr inbounds nuw %struct.SrcList_item, ptr %214, i32 0, i32 8
  %215 = load i32, ptr %regResult, align 8
  %216 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur216 = getelementptr inbounds nuw %struct.WhereLevel, ptr %216, i32 0, i32 2
  %217 = load i32, ptr %iIdxCur216, align 8
  call void @translateColumnToCopy(ptr noundef %210, i32 noundef %211, i32 noundef %213, i32 noundef %215, i32 noundef %217)
  %218 = load ptr, ptr %v, align 8
  %219 = load i32, ptr %addrTop, align 4
  %call217 = call i32 @sqlite3VdbeGoto(ptr noundef %218, i32 noundef %219)
  %220 = load ptr, ptr %pTabItem, align 8
  %fg218 = getelementptr inbounds nuw %struct.SrcList_item, ptr %220, i32 0, i32 9
  %viaCoroutine219 = getelementptr inbounds nuw %struct.anon, ptr %fg218, i32 0, i32 1
  %bf.load220 = load i8, ptr %viaCoroutine219, align 1
  %bf.clear221 = and i8 %bf.load220, -17
  %bf.set = or i8 %bf.clear221, 0
  store i8 %bf.set, ptr %viaCoroutine219, align 1
  br label %if.end226

if.else222:                                       ; preds = %if.end205
  %221 = load ptr, ptr %v, align 8
  %222 = load ptr, ptr %pLevel.addr, align 8
  %iTabCur223 = getelementptr inbounds nuw %struct.WhereLevel, ptr %222, i32 0, i32 1
  %223 = load i32, ptr %iTabCur223, align 4
  %224 = load i32, ptr %addrTop, align 4
  %add224 = add nsw i32 %224, 1
  %call225 = call i32 @sqlite3VdbeAddOp2(ptr noundef %221, i32 noundef 5, i32 noundef %223, i32 noundef %add224)
  br label %if.end226

if.end226:                                        ; preds = %if.else222, %if.then213
  %225 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %225, i16 noundef zeroext 3)
  %226 = load ptr, ptr %v, align 8
  %227 = load i32, ptr %addrTop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %226, i32 noundef %227)
  %228 = load ptr, ptr %pParse.addr, align 8
  %229 = load i32, ptr %regRecord, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %228, i32 noundef %229)
  %230 = load ptr, ptr %v, align 8
  %231 = load i32, ptr %addrInit, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %230, i32 noundef %231)
  br label %end_auto_index_create

end_auto_index_create:                            ; preds = %if.end226, %if.then80, %if.then32
  %232 = load ptr, ptr %pParse.addr, align 8
  %db227 = getelementptr inbounds nuw %struct.Parse, ptr %232, i32 0, i32 0
  %233 = load ptr, ptr %db227, align 8
  %234 = load ptr, ptr %pPartial, align 8
  call void @sqlite3ExprDelete(ptr noundef %233, ptr noundef %234)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopResize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @termCanDriveIndex(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @translateColumnToCopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
