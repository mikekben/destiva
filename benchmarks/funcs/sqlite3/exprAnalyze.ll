; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
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
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@sqlite3StrBINARY = external hidden constant [7 x i8], align 1
@.str.745 = external hidden unnamed_addr constant [41 x i8], align 1
@exprAnalyze.ops = external hidden constant [2 x i8], align 1
@.str.746 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCheckIN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAddCollateString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprListUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereClauseInsert(ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @exprAnalyze(ptr noundef %pSrc, ptr noundef %pWC, i32 noundef %idxTerm) #0 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %idxTerm.addr = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pMaskSet = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  %prereqLeft = alloca i64, align 8
  %prereqAll = alloca i64, align 8
  %extraRight = alloca i64, align 8
  %pStr1 = alloca ptr, align 8
  %isComplete = alloca i32, align 4
  %noCase = alloca i32, align 4
  %op = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %db = alloca ptr, align 8
  %eOp2 = alloca i8, align 1
  %nLeft = alloca i32, align 4
  %x42 = alloca i64, align 8
  %aiCurCol = alloca [2 x i32], align 4
  %pLeft55 = alloca ptr, align 8
  %pRight58 = alloca ptr, align 8
  %opMask = alloca i16, align 2
  %pNew = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  %eExtraOp = alloca i16, align 2
  %idxNew = alloca i32, align 4
  %pList = alloca ptr, align 8
  %i = alloca i32, align 4
  %pNewExpr = alloca ptr, align 8
  %idxNew183 = alloca i32, align 4
  %pLeft219 = alloca ptr, align 8
  %pStr2 = alloca ptr, align 8
  %pNewExpr1 = alloca ptr, align 8
  %pNewExpr2 = alloca ptr, align 8
  %idxNew1 = alloca i32, align 4
  %idxNew2 = alloca i32, align 4
  %zCollSeqName = alloca ptr, align 8
  %wtFlags220 = alloca i16, align 2
  %i232 = alloca i32, align 4
  %c = alloca i8, align 1
  %c267 = alloca i8, align 1
  %pC = alloca ptr, align 8
  %pRight310 = alloca ptr, align 8
  %pLeft311 = alloca ptr, align 8
  %res = alloca i32, align 4
  %idxNew315 = alloca i32, align 4
  %pNewTerm = alloca ptr, align 8
  %prereqColumn = alloca i64, align 8
  %prereqExpr = alloca i64, align 8
  %pNewExpr322 = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i391 = alloca i32, align 4
  %idxNew396 = alloca i32, align 4
  %pNew397 = alloca ptr, align 8
  %pLeft398 = alloca ptr, align 8
  %pRight401 = alloca ptr, align 8
  %i444 = alloca i32, align 4
  %idxNew451 = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store i32 %idxTerm, ptr %idxTerm.addr, align 4
  %0 = load ptr, ptr %pWC.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereClause, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  store i64 0, ptr %extraRight, align 8
  store ptr null, ptr %pStr1, align 8
  store i32 0, ptr %isComplete, align 4
  store i32 0, ptr %noCase, align 4
  %2 = load ptr, ptr %pWInfo, align 8
  %pParse2 = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse2, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %pParse, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db3, align 8
  store ptr %5, ptr %db, align 8
  store i8 0, ptr %eOp2, align 1
  %6 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 19
  %7 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %a, align 8
  %10 = load i32, ptr %idxTerm.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %pTerm, align 8
  %11 = load ptr, ptr %pWInfo, align 8
  %sMaskSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %11, i32 0, i32 23
  store ptr %sMaskSet, ptr %pMaskSet, align 8
  %12 = load ptr, ptr %pTerm, align 8
  %pExpr4 = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pExpr4, align 8
  store ptr %13, ptr %pExpr, align 8
  %14 = load ptr, ptr %pMaskSet, align 8
  %15 = load ptr, ptr %pExpr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pLeft, align 8
  %call = call i64 @sqlite3WhereExprUsage(ptr noundef %14, ptr noundef %16)
  store i64 %call, ptr %prereqLeft, align 8
  %17 = load ptr, ptr %pExpr, align 8
  %op5 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 0
  %18 = load i8, ptr %op5, align 8
  %conv = zext i8 %18 to i32
  store i32 %conv, ptr %op, align 4
  %19 = load i32, ptr %op, align 4
  %cmp = icmp eq i32 %19, 49
  br i1 %cmp, label %if.then7, label %if.else20

if.then7:                                         ; preds = %if.end
  %20 = load ptr, ptr %pParse, align 8
  %21 = load ptr, ptr %pExpr, align 8
  %call8 = call i32 @sqlite3ExprCheckIN(ptr noundef %20, ptr noundef %21)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  br label %return

if.end11:                                         ; preds = %if.then7
  %22 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2048
  %cmp12 = icmp ne i32 %and, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %24 = load ptr, ptr %pMaskSet, align 8
  %25 = load ptr, ptr %pExpr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %x, align 8
  %call15 = call i64 @exprSelectUsage(ptr noundef %24, ptr noundef %26)
  %27 = load ptr, ptr %pTerm, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %27, i32 0, i32 11
  store i64 %call15, ptr %prereqRight, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end11
  %28 = load ptr, ptr %pMaskSet, align 8
  %29 = load ptr, ptr %pExpr, align 8
  %x16 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %x16, align 8
  %call17 = call i64 @sqlite3WhereExprListUsage(ptr noundef %28, ptr noundef %30)
  %31 = load ptr, ptr %pTerm, align 8
  %prereqRight18 = getelementptr inbounds nuw %struct.WhereTerm, ptr %31, i32 0, i32 11
  store i64 %call17, ptr %prereqRight18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  br label %if.end29

if.else20:                                        ; preds = %if.end
  %32 = load i32, ptr %op, align 4
  %cmp21 = icmp eq i32 %32, 50
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %33 = load ptr, ptr %pTerm, align 8
  %prereqRight24 = getelementptr inbounds nuw %struct.WhereTerm, ptr %33, i32 0, i32 11
  store i64 0, ptr %prereqRight24, align 8
  br label %if.end28

if.else25:                                        ; preds = %if.else20
  %34 = load ptr, ptr %pMaskSet, align 8
  %35 = load ptr, ptr %pExpr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %pRight, align 8
  %call26 = call i64 @sqlite3WhereExprUsage(ptr noundef %34, ptr noundef %36)
  %37 = load ptr, ptr %pTerm, align 8
  %prereqRight27 = getelementptr inbounds nuw %struct.WhereTerm, ptr %37, i32 0, i32 11
  store i64 %call26, ptr %prereqRight27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end19
  %38 = load ptr, ptr %pMaskSet, align 8
  %bVarSelect = getelementptr inbounds nuw %struct.WhereMaskSet, ptr %38, i32 0, i32 0
  store i32 0, ptr %bVarSelect, align 4
  %39 = load ptr, ptr %pMaskSet, align 8
  %40 = load ptr, ptr %pExpr, align 8
  %call30 = call i64 @sqlite3WhereExprUsageNN(ptr noundef %39, ptr noundef %40)
  store i64 %call30, ptr %prereqAll, align 8
  %41 = load ptr, ptr %pMaskSet, align 8
  %bVarSelect31 = getelementptr inbounds nuw %struct.WhereMaskSet, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %bVarSelect31, align 4
  %tobool32 = icmp ne i32 %42, 0
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  %43 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %43, i32 0, i32 3
  %44 = load i16, ptr %wtFlags, align 2
  %conv34 = zext i16 %44 to i32
  %or = or i32 %conv34, 4096
  %conv35 = trunc i32 %or to i16
  store i16 %conv35, ptr %wtFlags, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29
  %45 = load ptr, ptr %pExpr, align 8
  %flags37 = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %flags37, align 4
  %and38 = and i32 %46, 1
  %cmp39 = icmp ne i32 %and38, 0
  br i1 %cmp39, label %if.then41, label %if.end50

if.then41:                                        ; preds = %if.end36
  %47 = load ptr, ptr %pMaskSet, align 8
  %48 = load ptr, ptr %pExpr, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %48, i32 0, i32 11
  %49 = load i16, ptr %iRightJoinTable, align 4
  %conv43 = sext i16 %49 to i32
  %call44 = call i64 @sqlite3WhereGetMask(ptr noundef %47, i32 noundef %conv43)
  store i64 %call44, ptr %x42, align 8
  %50 = load i64, ptr %x42, align 8
  %51 = load i64, ptr %prereqAll, align 8
  %or45 = or i64 %51, %50
  store i64 %or45, ptr %prereqAll, align 8
  %52 = load i64, ptr %x42, align 8
  %sub = sub i64 %52, 1
  store i64 %sub, ptr %extraRight, align 8
  %53 = load i64, ptr %prereqAll, align 8
  %shr = lshr i64 %53, 1
  %54 = load i64, ptr %x42, align 8
  %cmp46 = icmp uge i64 %shr, %54
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then41
  %55 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %55, ptr noundef @.str.745)
  br label %return

if.end49:                                         ; preds = %if.then41
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end36
  %56 = load i64, ptr %prereqAll, align 8
  %57 = load ptr, ptr %pTerm, align 8
  %prereqAll51 = getelementptr inbounds nuw %struct.WhereTerm, ptr %57, i32 0, i32 12
  store i64 %56, ptr %prereqAll51, align 8
  %58 = load ptr, ptr %pTerm, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %58, i32 0, i32 8
  store i32 -1, ptr %leftCursor, align 4
  %59 = load ptr, ptr %pTerm, align 8
  %iParent = getelementptr inbounds nuw %struct.WhereTerm, ptr %59, i32 0, i32 7
  store i32 -1, ptr %iParent, align 8
  %60 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %60, i32 0, i32 4
  store i16 0, ptr %eOperator, align 4
  %61 = load i32, ptr %op, align 4
  %call52 = call i32 @allowedOp(i32 noundef %61)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.else169

if.then54:                                        ; preds = %if.end50
  %62 = load ptr, ptr %pExpr, align 8
  %pLeft56 = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %pLeft56, align 8
  %call57 = call ptr @sqlite3ExprSkipCollate(ptr noundef %63)
  store ptr %call57, ptr %pLeft55, align 8
  %64 = load ptr, ptr %pExpr, align 8
  %pRight59 = getelementptr inbounds nuw %struct.Expr, ptr %64, i32 0, i32 5
  %65 = load ptr, ptr %pRight59, align 8
  %call60 = call ptr @sqlite3ExprSkipCollate(ptr noundef %65)
  store ptr %call60, ptr %pRight58, align 8
  %66 = load ptr, ptr %pTerm, align 8
  %prereqRight61 = getelementptr inbounds nuw %struct.WhereTerm, ptr %66, i32 0, i32 11
  %67 = load i64, ptr %prereqRight61, align 8
  %68 = load i64, ptr %prereqLeft, align 8
  %and62 = and i64 %67, %68
  %cmp63 = icmp eq i64 %and62, 0
  %69 = zext i1 %cmp63 to i64
  %cond = select i1 %cmp63, i32 8191, i32 2048
  %conv65 = trunc i32 %cond to i16
  store i16 %conv65, ptr %opMask, align 2
  %70 = load ptr, ptr %pTerm, align 8
  %iField = getelementptr inbounds nuw %struct.WhereTerm, ptr %70, i32 0, i32 9
  %71 = load i32, ptr %iField, align 8
  %cmp66 = icmp sgt i32 %71, 0
  br i1 %cmp66, label %if.then68, label %if.end76

if.then68:                                        ; preds = %if.then54
  %72 = load ptr, ptr %pLeft55, align 8
  %x69 = getelementptr inbounds nuw %struct.Expr, ptr %72, i32 0, i32 6
  %73 = load ptr, ptr %x69, align 8
  %a70 = getelementptr inbounds nuw %struct.ExprList, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %pTerm, align 8
  %iField71 = getelementptr inbounds nuw %struct.WhereTerm, ptr %74, i32 0, i32 9
  %75 = load i32, ptr %iField71, align 8
  %sub72 = sub nsw i32 %75, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a70, i64 0, i64 %idxprom73
  %pExpr75 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx74, i32 0, i32 0
  %76 = load ptr, ptr %pExpr75, align 8
  store ptr %76, ptr %pLeft55, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then68, %if.then54
  %77 = load ptr, ptr %pSrc.addr, align 8
  %78 = load i64, ptr %prereqLeft, align 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aiCurCol, i64 0, i64 0
  %79 = load ptr, ptr %pLeft55, align 8
  %80 = load i32, ptr %op, align 4
  %call77 = call i32 @exprMightBeIndexed(ptr noundef %77, i64 noundef %78, ptr noundef %arraydecay, ptr noundef %79, i32 noundef %80)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end89

if.then79:                                        ; preds = %if.end76
  %arrayidx80 = getelementptr inbounds [2 x i32], ptr %aiCurCol, i64 0, i64 0
  %81 = load i32, ptr %arrayidx80, align 4
  %82 = load ptr, ptr %pTerm, align 8
  %leftCursor81 = getelementptr inbounds nuw %struct.WhereTerm, ptr %82, i32 0, i32 8
  store i32 %81, ptr %leftCursor81, align 4
  %arrayidx82 = getelementptr inbounds [2 x i32], ptr %aiCurCol, i64 0, i64 1
  %83 = load i32, ptr %arrayidx82, align 4
  %84 = load ptr, ptr %pTerm, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %84, i32 0, i32 10
  store i32 %83, ptr %u, align 8
  %85 = load i32, ptr %op, align 4
  %call83 = call zeroext i16 @operatorMask(i32 noundef %85)
  %conv84 = zext i16 %call83 to i32
  %86 = load i16, ptr %opMask, align 2
  %conv85 = zext i16 %86 to i32
  %and86 = and i32 %conv84, %conv85
  %conv87 = trunc i32 %and86 to i16
  %87 = load ptr, ptr %pTerm, align 8
  %eOperator88 = getelementptr inbounds nuw %struct.WhereTerm, ptr %87, i32 0, i32 4
  store i16 %conv87, ptr %eOperator88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then79, %if.end76
  %88 = load i32, ptr %op, align 4
  %cmp90 = icmp eq i32 %88, 45
  br i1 %cmp90, label %if.then92, label %if.end97

if.then92:                                        ; preds = %if.end89
  %89 = load ptr, ptr %pTerm, align 8
  %wtFlags93 = getelementptr inbounds nuw %struct.WhereTerm, ptr %89, i32 0, i32 3
  %90 = load i16, ptr %wtFlags93, align 2
  %conv94 = zext i16 %90 to i32
  %or95 = or i32 %conv94, 2048
  %conv96 = trunc i32 %or95 to i16
  store i16 %conv96, ptr %wtFlags93, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.end89
  %91 = load ptr, ptr %pRight58, align 8
  %tobool98 = icmp ne ptr %91, null
  br i1 %tobool98, label %land.lhs.true, label %if.end168

land.lhs.true:                                    ; preds = %if.end97
  %92 = load ptr, ptr %pSrc.addr, align 8
  %93 = load ptr, ptr %pTerm, align 8
  %prereqRight99 = getelementptr inbounds nuw %struct.WhereTerm, ptr %93, i32 0, i32 11
  %94 = load i64, ptr %prereqRight99, align 8
  %arraydecay100 = getelementptr inbounds [2 x i32], ptr %aiCurCol, i64 0, i64 0
  %95 = load ptr, ptr %pRight58, align 8
  %96 = load i32, ptr %op, align 4
  %call101 = call i32 @exprMightBeIndexed(ptr noundef %92, i64 noundef %94, ptr noundef %arraydecay100, ptr noundef %95, i32 noundef %96)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end168

if.then103:                                       ; preds = %land.lhs.true
  store i16 0, ptr %eExtraOp, align 2
  %97 = load ptr, ptr %pTerm, align 8
  %leftCursor104 = getelementptr inbounds nuw %struct.WhereTerm, ptr %97, i32 0, i32 8
  %98 = load i32, ptr %leftCursor104, align 4
  %cmp105 = icmp sge i32 %98, 0
  br i1 %cmp105, label %if.then107, label %if.else144

if.then107:                                       ; preds = %if.then103
  %99 = load ptr, ptr %db, align 8
  %100 = load ptr, ptr %pExpr, align 8
  %call108 = call ptr @sqlite3ExprDup(ptr noundef %99, ptr noundef %100, i32 noundef 0)
  store ptr %call108, ptr %pDup, align 8
  %101 = load ptr, ptr %db, align 8
  %mallocFailed109 = getelementptr inbounds nuw %struct.sqlite3, ptr %101, i32 0, i32 19
  %102 = load i8, ptr %mallocFailed109, align 1
  %tobool110 = icmp ne i8 %102, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.then107
  %103 = load ptr, ptr %db, align 8
  %104 = load ptr, ptr %pDup, align 8
  call void @sqlite3ExprDelete(ptr noundef %103, ptr noundef %104)
  br label %return

if.end112:                                        ; preds = %if.then107
  %105 = load ptr, ptr %pWC.addr, align 8
  %106 = load ptr, ptr %pDup, align 8
  %call113 = call i32 @whereClauseInsert(ptr noundef %105, ptr noundef %106, i16 noundef zeroext 3)
  store i32 %call113, ptr %idxNew, align 4
  %107 = load i32, ptr %idxNew, align 4
  %cmp114 = icmp eq i32 %107, 0
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end112
  br label %return

if.end117:                                        ; preds = %if.end112
  %108 = load ptr, ptr %pWC.addr, align 8
  %a118 = getelementptr inbounds nuw %struct.WhereClause, ptr %108, i32 0, i32 6
  %109 = load ptr, ptr %a118, align 8
  %110 = load i32, ptr %idxNew, align 4
  %idxprom119 = sext i32 %110 to i64
  %arrayidx120 = getelementptr inbounds %struct.WhereTerm, ptr %109, i64 %idxprom119
  store ptr %arrayidx120, ptr %pNew, align 8
  %111 = load ptr, ptr %pWC.addr, align 8
  %112 = load i32, ptr %idxNew, align 4
  %113 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %111, i32 noundef %112, i32 noundef %113)
  %114 = load i32, ptr %op, align 4
  %cmp121 = icmp eq i32 %114, 45
  br i1 %cmp121, label %if.then123, label %if.end128

if.then123:                                       ; preds = %if.end117
  %115 = load ptr, ptr %pNew, align 8
  %wtFlags124 = getelementptr inbounds nuw %struct.WhereTerm, ptr %115, i32 0, i32 3
  %116 = load i16, ptr %wtFlags124, align 2
  %conv125 = zext i16 %116 to i32
  %or126 = or i32 %conv125, 2048
  %conv127 = trunc i32 %or126 to i16
  store i16 %conv127, ptr %wtFlags124, align 2
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %if.end117
  %117 = load ptr, ptr %pWC.addr, align 8
  %a129 = getelementptr inbounds nuw %struct.WhereClause, ptr %117, i32 0, i32 6
  %118 = load ptr, ptr %a129, align 8
  %119 = load i32, ptr %idxTerm.addr, align 4
  %idxprom130 = sext i32 %119 to i64
  %arrayidx131 = getelementptr inbounds %struct.WhereTerm, ptr %118, i64 %idxprom130
  store ptr %arrayidx131, ptr %pTerm, align 8
  %120 = load ptr, ptr %pTerm, align 8
  %wtFlags132 = getelementptr inbounds nuw %struct.WhereTerm, ptr %120, i32 0, i32 3
  %121 = load i16, ptr %wtFlags132, align 2
  %conv133 = zext i16 %121 to i32
  %or134 = or i32 %conv133, 8
  %conv135 = trunc i32 %or134 to i16
  store i16 %conv135, ptr %wtFlags132, align 2
  %122 = load ptr, ptr %pParse, align 8
  %123 = load ptr, ptr %pDup, align 8
  %call136 = call i32 @termIsEquivalence(ptr noundef %122, ptr noundef %123)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then138, label %if.end143

if.then138:                                       ; preds = %if.end128
  %124 = load ptr, ptr %pTerm, align 8
  %eOperator139 = getelementptr inbounds nuw %struct.WhereTerm, ptr %124, i32 0, i32 4
  %125 = load i16, ptr %eOperator139, align 4
  %conv140 = zext i16 %125 to i32
  %or141 = or i32 %conv140, 2048
  %conv142 = trunc i32 %or141 to i16
  store i16 %conv142, ptr %eOperator139, align 4
  store i16 2048, ptr %eExtraOp, align 2
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.end128
  br label %if.end145

if.else144:                                       ; preds = %if.then103
  %126 = load ptr, ptr %pExpr, align 8
  store ptr %126, ptr %pDup, align 8
  %127 = load ptr, ptr %pTerm, align 8
  store ptr %127, ptr %pNew, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.else144, %if.end143
  %128 = load ptr, ptr %pParse, align 8
  %129 = load ptr, ptr %pDup, align 8
  %call146 = call zeroext i16 @exprCommute(ptr noundef %128, ptr noundef %129)
  %conv147 = zext i16 %call146 to i32
  %130 = load ptr, ptr %pNew, align 8
  %wtFlags148 = getelementptr inbounds nuw %struct.WhereTerm, ptr %130, i32 0, i32 3
  %131 = load i16, ptr %wtFlags148, align 2
  %conv149 = zext i16 %131 to i32
  %or150 = or i32 %conv149, %conv147
  %conv151 = trunc i32 %or150 to i16
  store i16 %conv151, ptr %wtFlags148, align 2
  %arrayidx152 = getelementptr inbounds [2 x i32], ptr %aiCurCol, i64 0, i64 0
  %132 = load i32, ptr %arrayidx152, align 4
  %133 = load ptr, ptr %pNew, align 8
  %leftCursor153 = getelementptr inbounds nuw %struct.WhereTerm, ptr %133, i32 0, i32 8
  store i32 %132, ptr %leftCursor153, align 4
  %arrayidx154 = getelementptr inbounds [2 x i32], ptr %aiCurCol, i64 0, i64 1
  %134 = load i32, ptr %arrayidx154, align 4
  %135 = load ptr, ptr %pNew, align 8
  %u155 = getelementptr inbounds nuw %struct.WhereTerm, ptr %135, i32 0, i32 10
  store i32 %134, ptr %u155, align 8
  %136 = load i64, ptr %prereqLeft, align 8
  %137 = load i64, ptr %extraRight, align 8
  %or156 = or i64 %136, %137
  %138 = load ptr, ptr %pNew, align 8
  %prereqRight157 = getelementptr inbounds nuw %struct.WhereTerm, ptr %138, i32 0, i32 11
  store i64 %or156, ptr %prereqRight157, align 8
  %139 = load i64, ptr %prereqAll, align 8
  %140 = load ptr, ptr %pNew, align 8
  %prereqAll158 = getelementptr inbounds nuw %struct.WhereTerm, ptr %140, i32 0, i32 12
  store i64 %139, ptr %prereqAll158, align 8
  %141 = load ptr, ptr %pDup, align 8
  %op159 = getelementptr inbounds nuw %struct.Expr, ptr %141, i32 0, i32 0
  %142 = load i8, ptr %op159, align 8
  %conv160 = zext i8 %142 to i32
  %call161 = call zeroext i16 @operatorMask(i32 noundef %conv160)
  %conv162 = zext i16 %call161 to i32
  %143 = load i16, ptr %eExtraOp, align 2
  %conv163 = zext i16 %143 to i32
  %add = add nsw i32 %conv162, %conv163
  %144 = load i16, ptr %opMask, align 2
  %conv164 = zext i16 %144 to i32
  %and165 = and i32 %add, %conv164
  %conv166 = trunc i32 %and165 to i16
  %145 = load ptr, ptr %pNew, align 8
  %eOperator167 = getelementptr inbounds nuw %struct.WhereTerm, ptr %145, i32 0, i32 4
  store i16 %conv166, ptr %eOperator167, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.end145, %land.lhs.true, %if.end97
  br label %if.end210

if.else169:                                       ; preds = %if.end50
  %146 = load ptr, ptr %pExpr, align 8
  %op170 = getelementptr inbounds nuw %struct.Expr, ptr %146, i32 0, i32 0
  %147 = load i8, ptr %op170, align 8
  %conv171 = zext i8 %147 to i32
  %cmp172 = icmp eq i32 %conv171, 48
  br i1 %cmp172, label %land.lhs.true174, label %if.else199

land.lhs.true174:                                 ; preds = %if.else169
  %148 = load ptr, ptr %pWC.addr, align 8
  %op175 = getelementptr inbounds nuw %struct.WhereClause, ptr %148, i32 0, i32 2
  %149 = load i8, ptr %op175, align 8
  %conv176 = zext i8 %149 to i32
  %cmp177 = icmp eq i32 %conv176, 44
  br i1 %cmp177, label %if.then179, label %if.else199

if.then179:                                       ; preds = %land.lhs.true174
  %150 = load ptr, ptr %pExpr, align 8
  %x180 = getelementptr inbounds nuw %struct.Expr, ptr %150, i32 0, i32 6
  %151 = load ptr, ptr %x180, align 8
  store ptr %151, ptr %pList, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then179
  %152 = load i32, ptr %i, align 4
  %cmp181 = icmp slt i32 %152, 2
  br i1 %cmp181, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %153 = load ptr, ptr %pParse, align 8
  %154 = load i32, ptr %i, align 4
  %idxprom184 = sext i32 %154 to i64
  %arrayidx185 = getelementptr inbounds [2 x i8], ptr @exprAnalyze.ops, i64 0, i64 %idxprom184
  %155 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %155 to i32
  %156 = load ptr, ptr %db, align 8
  %157 = load ptr, ptr %pExpr, align 8
  %pLeft187 = getelementptr inbounds nuw %struct.Expr, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %pLeft187, align 8
  %call188 = call ptr @sqlite3ExprDup(ptr noundef %156, ptr noundef %158, i32 noundef 0)
  %159 = load ptr, ptr %db, align 8
  %160 = load ptr, ptr %pList, align 8
  %a189 = getelementptr inbounds nuw %struct.ExprList, ptr %160, i32 0, i32 1
  %161 = load i32, ptr %i, align 4
  %idxprom190 = sext i32 %161 to i64
  %arrayidx191 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a189, i64 0, i64 %idxprom190
  %pExpr192 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx191, i32 0, i32 0
  %162 = load ptr, ptr %pExpr192, align 8
  %call193 = call ptr @sqlite3ExprDup(ptr noundef %159, ptr noundef %162, i32 noundef 0)
  %call194 = call ptr @sqlite3PExpr(ptr noundef %153, i32 noundef %conv186, ptr noundef %call188, ptr noundef %call193)
  store ptr %call194, ptr %pNewExpr, align 8
  %163 = load ptr, ptr %pNewExpr, align 8
  %164 = load ptr, ptr %pExpr, align 8
  call void @transferJoinMarkings(ptr noundef %163, ptr noundef %164)
  %165 = load ptr, ptr %pWC.addr, align 8
  %166 = load ptr, ptr %pNewExpr, align 8
  %call195 = call i32 @whereClauseInsert(ptr noundef %165, ptr noundef %166, i16 noundef zeroext 3)
  store i32 %call195, ptr %idxNew183, align 4
  %167 = load ptr, ptr %pSrc.addr, align 8
  %168 = load ptr, ptr %pWC.addr, align 8
  %169 = load i32, ptr %idxNew183, align 4
  call void @exprAnalyze(ptr noundef %167, ptr noundef %168, i32 noundef %169)
  %170 = load ptr, ptr %pWC.addr, align 8
  %a196 = getelementptr inbounds nuw %struct.WhereClause, ptr %170, i32 0, i32 6
  %171 = load ptr, ptr %a196, align 8
  %172 = load i32, ptr %idxTerm.addr, align 4
  %idxprom197 = sext i32 %172 to i64
  %arrayidx198 = getelementptr inbounds %struct.WhereTerm, ptr %171, i64 %idxprom197
  store ptr %arrayidx198, ptr %pTerm, align 8
  %173 = load ptr, ptr %pWC.addr, align 8
  %174 = load i32, ptr %idxNew183, align 4
  %175 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %173, i32 noundef %174, i32 noundef %175)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %176 = load i32, ptr %i, align 4
  %inc = add nsw i32 %176, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end209

if.else199:                                       ; preds = %land.lhs.true174, %if.else169
  %177 = load ptr, ptr %pExpr, align 8
  %op200 = getelementptr inbounds nuw %struct.Expr, ptr %177, i32 0, i32 0
  %178 = load i8, ptr %op200, align 8
  %conv201 = zext i8 %178 to i32
  %cmp202 = icmp eq i32 %conv201, 43
  br i1 %cmp202, label %if.then204, label %if.end208

if.then204:                                       ; preds = %if.else199
  %179 = load ptr, ptr %pSrc.addr, align 8
  %180 = load ptr, ptr %pWC.addr, align 8
  %181 = load i32, ptr %idxTerm.addr, align 4
  call void @exprAnalyzeOrTerm(ptr noundef %179, ptr noundef %180, i32 noundef %181)
  %182 = load ptr, ptr %pWC.addr, align 8
  %a205 = getelementptr inbounds nuw %struct.WhereClause, ptr %182, i32 0, i32 6
  %183 = load ptr, ptr %a205, align 8
  %184 = load i32, ptr %idxTerm.addr, align 4
  %idxprom206 = sext i32 %184 to i64
  %arrayidx207 = getelementptr inbounds %struct.WhereTerm, ptr %183, i64 %idxprom206
  store ptr %arrayidx207, ptr %pTerm, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.then204, %if.else199
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %for.end
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end168
  %185 = load ptr, ptr %pWC.addr, align 8
  %op211 = getelementptr inbounds nuw %struct.WhereClause, ptr %185, i32 0, i32 2
  %186 = load i8, ptr %op211, align 8
  %conv212 = zext i8 %186 to i32
  %cmp213 = icmp eq i32 %conv212, 44
  br i1 %cmp213, label %land.lhs.true215, label %if.end304

land.lhs.true215:                                 ; preds = %if.end210
  %187 = load ptr, ptr %pParse, align 8
  %188 = load ptr, ptr %pExpr, align 8
  %call216 = call i32 @isLikeOrGlob(ptr noundef %187, ptr noundef %188, ptr noundef %pStr1, ptr noundef %isComplete, ptr noundef %noCase)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.then218, label %if.end304

if.then218:                                       ; preds = %land.lhs.true215
  store i16 259, ptr %wtFlags220, align 2
  %189 = load ptr, ptr %pExpr, align 8
  %x221 = getelementptr inbounds nuw %struct.Expr, ptr %189, i32 0, i32 6
  %190 = load ptr, ptr %x221, align 8
  %a222 = getelementptr inbounds nuw %struct.ExprList, ptr %190, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a222, i64 0, i64 1
  %pExpr224 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx223, i32 0, i32 0
  %191 = load ptr, ptr %pExpr224, align 8
  store ptr %191, ptr %pLeft219, align 8
  %192 = load ptr, ptr %db, align 8
  %193 = load ptr, ptr %pStr1, align 8
  %call225 = call ptr @sqlite3ExprDup(ptr noundef %192, ptr noundef %193, i32 noundef 0)
  store ptr %call225, ptr %pStr2, align 8
  %194 = load i32, ptr %noCase, align 4
  %tobool226 = icmp ne i32 %194, 0
  br i1 %tobool226, label %land.lhs.true227, label %if.end263

land.lhs.true227:                                 ; preds = %if.then218
  %195 = load ptr, ptr %pParse, align 8
  %db228 = getelementptr inbounds nuw %struct.Parse, ptr %195, i32 0, i32 0
  %196 = load ptr, ptr %db228, align 8
  %mallocFailed229 = getelementptr inbounds nuw %struct.sqlite3, ptr %196, i32 0, i32 19
  %197 = load i8, ptr %mallocFailed229, align 1
  %tobool230 = icmp ne i8 %197, 0
  br i1 %tobool230, label %if.end263, label %if.then231

if.then231:                                       ; preds = %land.lhs.true227
  %198 = load ptr, ptr %pTerm, align 8
  %wtFlags233 = getelementptr inbounds nuw %struct.WhereTerm, ptr %198, i32 0, i32 3
  %199 = load i16, ptr %wtFlags233, align 2
  %conv234 = zext i16 %199 to i32
  %or235 = or i32 %conv234, 1024
  %conv236 = trunc i32 %or235 to i16
  store i16 %conv236, ptr %wtFlags233, align 2
  store i32 0, ptr %i232, align 4
  br label %for.cond237

for.cond237:                                      ; preds = %for.inc260, %if.then231
  %200 = load ptr, ptr %pStr1, align 8
  %u238 = getelementptr inbounds nuw %struct.Expr, ptr %200, i32 0, i32 3
  %201 = load ptr, ptr %u238, align 8
  %202 = load i32, ptr %i232, align 4
  %idxprom239 = sext i32 %202 to i64
  %arrayidx240 = getelementptr inbounds i8, ptr %201, i64 %idxprom239
  %203 = load i8, ptr %arrayidx240, align 1
  store i8 %203, ptr %c, align 1
  %conv241 = sext i8 %203 to i32
  %cmp242 = icmp ne i32 %conv241, 0
  br i1 %cmp242, label %for.body244, label %for.end262

for.body244:                                      ; preds = %for.cond237
  %204 = load i8, ptr %c, align 1
  %conv245 = sext i8 %204 to i32
  %205 = load i8, ptr %c, align 1
  %idxprom246 = zext i8 %205 to i64
  %arrayidx247 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom246
  %206 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %206 to i32
  %and249 = and i32 %conv248, 32
  %not = xor i32 %and249, -1
  %and250 = and i32 %conv245, %not
  %conv251 = trunc i32 %and250 to i8
  %207 = load ptr, ptr %pStr1, align 8
  %u252 = getelementptr inbounds nuw %struct.Expr, ptr %207, i32 0, i32 3
  %208 = load ptr, ptr %u252, align 8
  %209 = load i32, ptr %i232, align 4
  %idxprom253 = sext i32 %209 to i64
  %arrayidx254 = getelementptr inbounds i8, ptr %208, i64 %idxprom253
  store i8 %conv251, ptr %arrayidx254, align 1
  %210 = load i8, ptr %c, align 1
  %idxprom255 = zext i8 %210 to i64
  %arrayidx256 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom255
  %211 = load i8, ptr %arrayidx256, align 1
  %212 = load ptr, ptr %pStr2, align 8
  %u257 = getelementptr inbounds nuw %struct.Expr, ptr %212, i32 0, i32 3
  %213 = load ptr, ptr %u257, align 8
  %214 = load i32, ptr %i232, align 4
  %idxprom258 = sext i32 %214 to i64
  %arrayidx259 = getelementptr inbounds i8, ptr %213, i64 %idxprom258
  store i8 %211, ptr %arrayidx259, align 1
  br label %for.inc260

for.inc260:                                       ; preds = %for.body244
  %215 = load i32, ptr %i232, align 4
  %inc261 = add nsw i32 %215, 1
  store i32 %inc261, ptr %i232, align 4
  br label %for.cond237, !llvm.loop !8

for.end262:                                       ; preds = %for.cond237
  br label %if.end263

if.end263:                                        ; preds = %for.end262, %land.lhs.true227, %if.then218
  %216 = load ptr, ptr %db, align 8
  %mallocFailed264 = getelementptr inbounds nuw %struct.sqlite3, ptr %216, i32 0, i32 19
  %217 = load i8, ptr %mallocFailed264, align 1
  %tobool265 = icmp ne i8 %217, 0
  br i1 %tobool265, label %if.end287, label %if.then266

if.then266:                                       ; preds = %if.end263
  %218 = load ptr, ptr %pStr2, align 8
  %u268 = getelementptr inbounds nuw %struct.Expr, ptr %218, i32 0, i32 3
  %219 = load ptr, ptr %u268, align 8
  %220 = load ptr, ptr %pStr2, align 8
  %u269 = getelementptr inbounds nuw %struct.Expr, ptr %220, i32 0, i32 3
  %221 = load ptr, ptr %u269, align 8
  %call270 = call i32 @sqlite3Strlen30(ptr noundef %221)
  %sub271 = sub nsw i32 %call270, 1
  %idxprom272 = sext i32 %sub271 to i64
  %arrayidx273 = getelementptr inbounds i8, ptr %219, i64 %idxprom272
  store ptr %arrayidx273, ptr %pC, align 8
  %222 = load ptr, ptr %pC, align 8
  %223 = load i8, ptr %222, align 1
  store i8 %223, ptr %c267, align 1
  %224 = load i32, ptr %noCase, align 4
  %tobool274 = icmp ne i32 %224, 0
  br i1 %tobool274, label %if.then275, label %if.end283

if.then275:                                       ; preds = %if.then266
  %225 = load i8, ptr %c267, align 1
  %conv276 = zext i8 %225 to i32
  %cmp277 = icmp eq i32 %conv276, 64
  br i1 %cmp277, label %if.then279, label %if.end280

if.then279:                                       ; preds = %if.then275
  store i32 0, ptr %isComplete, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %if.then275
  %226 = load i8, ptr %c267, align 1
  %idxprom281 = zext i8 %226 to i64
  %arrayidx282 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom281
  %227 = load i8, ptr %arrayidx282, align 1
  store i8 %227, ptr %c267, align 1
  br label %if.end283

if.end283:                                        ; preds = %if.end280, %if.then266
  %228 = load i8, ptr %c267, align 1
  %conv284 = zext i8 %228 to i32
  %add285 = add nsw i32 %conv284, 1
  %conv286 = trunc i32 %add285 to i8
  %229 = load ptr, ptr %pC, align 8
  store i8 %conv286, ptr %229, align 1
  br label %if.end287

if.end287:                                        ; preds = %if.end283, %if.end263
  %230 = load i32, ptr %noCase, align 4
  %tobool288 = icmp ne i32 %230, 0
  %231 = zext i1 %tobool288 to i64
  %cond289 = select i1 %tobool288, ptr @.str.746, ptr @sqlite3StrBINARY
  store ptr %cond289, ptr %zCollSeqName, align 8
  %232 = load ptr, ptr %db, align 8
  %233 = load ptr, ptr %pLeft219, align 8
  %call290 = call ptr @sqlite3ExprDup(ptr noundef %232, ptr noundef %233, i32 noundef 0)
  store ptr %call290, ptr %pNewExpr1, align 8
  %234 = load ptr, ptr %pParse, align 8
  %235 = load ptr, ptr %pParse, align 8
  %236 = load ptr, ptr %pNewExpr1, align 8
  %237 = load ptr, ptr %zCollSeqName, align 8
  %call291 = call ptr @sqlite3ExprAddCollateString(ptr noundef %235, ptr noundef %236, ptr noundef %237)
  %238 = load ptr, ptr %pStr1, align 8
  %call292 = call ptr @sqlite3PExpr(ptr noundef %234, i32 noundef 57, ptr noundef %call291, ptr noundef %238)
  store ptr %call292, ptr %pNewExpr1, align 8
  %239 = load ptr, ptr %pNewExpr1, align 8
  %240 = load ptr, ptr %pExpr, align 8
  call void @transferJoinMarkings(ptr noundef %239, ptr noundef %240)
  %241 = load ptr, ptr %pWC.addr, align 8
  %242 = load ptr, ptr %pNewExpr1, align 8
  %call293 = call i32 @whereClauseInsert(ptr noundef %241, ptr noundef %242, i16 noundef zeroext 259)
  store i32 %call293, ptr %idxNew1, align 4
  %243 = load ptr, ptr %pSrc.addr, align 8
  %244 = load ptr, ptr %pWC.addr, align 8
  %245 = load i32, ptr %idxNew1, align 4
  call void @exprAnalyze(ptr noundef %243, ptr noundef %244, i32 noundef %245)
  %246 = load ptr, ptr %db, align 8
  %247 = load ptr, ptr %pLeft219, align 8
  %call294 = call ptr @sqlite3ExprDup(ptr noundef %246, ptr noundef %247, i32 noundef 0)
  store ptr %call294, ptr %pNewExpr2, align 8
  %248 = load ptr, ptr %pParse, align 8
  %249 = load ptr, ptr %pParse, align 8
  %250 = load ptr, ptr %pNewExpr2, align 8
  %251 = load ptr, ptr %zCollSeqName, align 8
  %call295 = call ptr @sqlite3ExprAddCollateString(ptr noundef %249, ptr noundef %250, ptr noundef %251)
  %252 = load ptr, ptr %pStr2, align 8
  %call296 = call ptr @sqlite3PExpr(ptr noundef %248, i32 noundef 56, ptr noundef %call295, ptr noundef %252)
  store ptr %call296, ptr %pNewExpr2, align 8
  %253 = load ptr, ptr %pNewExpr2, align 8
  %254 = load ptr, ptr %pExpr, align 8
  call void @transferJoinMarkings(ptr noundef %253, ptr noundef %254)
  %255 = load ptr, ptr %pWC.addr, align 8
  %256 = load ptr, ptr %pNewExpr2, align 8
  %call297 = call i32 @whereClauseInsert(ptr noundef %255, ptr noundef %256, i16 noundef zeroext 259)
  store i32 %call297, ptr %idxNew2, align 4
  %257 = load ptr, ptr %pSrc.addr, align 8
  %258 = load ptr, ptr %pWC.addr, align 8
  %259 = load i32, ptr %idxNew2, align 4
  call void @exprAnalyze(ptr noundef %257, ptr noundef %258, i32 noundef %259)
  %260 = load ptr, ptr %pWC.addr, align 8
  %a298 = getelementptr inbounds nuw %struct.WhereClause, ptr %260, i32 0, i32 6
  %261 = load ptr, ptr %a298, align 8
  %262 = load i32, ptr %idxTerm.addr, align 4
  %idxprom299 = sext i32 %262 to i64
  %arrayidx300 = getelementptr inbounds %struct.WhereTerm, ptr %261, i64 %idxprom299
  store ptr %arrayidx300, ptr %pTerm, align 8
  %263 = load i32, ptr %isComplete, align 4
  %tobool301 = icmp ne i32 %263, 0
  br i1 %tobool301, label %if.then302, label %if.end303

if.then302:                                       ; preds = %if.end287
  %264 = load ptr, ptr %pWC.addr, align 8
  %265 = load i32, ptr %idxNew1, align 4
  %266 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %264, i32 noundef %265, i32 noundef %266)
  %267 = load ptr, ptr %pWC.addr, align 8
  %268 = load i32, ptr %idxNew2, align 4
  %269 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %267, i32 noundef %268, i32 noundef %269)
  br label %if.end303

if.end303:                                        ; preds = %if.then302, %if.end287
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %land.lhs.true215, %if.end210
  %270 = load ptr, ptr %pWC.addr, align 8
  %op305 = getelementptr inbounds nuw %struct.WhereClause, ptr %270, i32 0, i32 2
  %271 = load i8, ptr %op305, align 8
  %conv306 = zext i8 %271 to i32
  %cmp307 = icmp eq i32 %conv306, 44
  br i1 %cmp307, label %if.then309, label %if.end354

if.then309:                                       ; preds = %if.end304
  store ptr null, ptr %pRight310, align 8
  store ptr null, ptr %pLeft311, align 8
  %272 = load ptr, ptr %db, align 8
  %273 = load ptr, ptr %pExpr, align 8
  %call312 = call i32 @isAuxiliaryVtabOperator(ptr noundef %272, ptr noundef %273, ptr noundef %eOp2, ptr noundef %pLeft311, ptr noundef %pRight310)
  store i32 %call312, ptr %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end353, %if.then309
  %274 = load i32, ptr %res, align 4
  %dec = add nsw i32 %274, -1
  store i32 %dec, ptr %res, align 4
  %cmp313 = icmp sgt i32 %274, 0
  br i1 %cmp313, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %275 = load ptr, ptr %pMaskSet, align 8
  %276 = load ptr, ptr %pRight310, align 8
  %call316 = call i64 @sqlite3WhereExprUsage(ptr noundef %275, ptr noundef %276)
  store i64 %call316, ptr %prereqExpr, align 8
  %277 = load ptr, ptr %pMaskSet, align 8
  %278 = load ptr, ptr %pLeft311, align 8
  %call317 = call i64 @sqlite3WhereExprUsage(ptr noundef %277, ptr noundef %278)
  store i64 %call317, ptr %prereqColumn, align 8
  %279 = load i64, ptr %prereqExpr, align 8
  %280 = load i64, ptr %prereqColumn, align 8
  %and318 = and i64 %279, %280
  %cmp319 = icmp eq i64 %and318, 0
  br i1 %cmp319, label %if.then321, label %if.end353

if.then321:                                       ; preds = %while.body
  %281 = load ptr, ptr %pParse, align 8
  %282 = load ptr, ptr %db, align 8
  %283 = load ptr, ptr %pRight310, align 8
  %call323 = call ptr @sqlite3ExprDup(ptr noundef %282, ptr noundef %283, i32 noundef 0)
  %call324 = call ptr @sqlite3PExpr(ptr noundef %281, i32 noundef 46, ptr noundef null, ptr noundef %call323)
  store ptr %call324, ptr %pNewExpr322, align 8
  %284 = load ptr, ptr %pExpr, align 8
  %flags325 = getelementptr inbounds nuw %struct.Expr, ptr %284, i32 0, i32 2
  %285 = load i32, ptr %flags325, align 4
  %and326 = and i32 %285, 1
  %cmp327 = icmp ne i32 %and326, 0
  br i1 %cmp327, label %land.lhs.true329, label %if.end334

land.lhs.true329:                                 ; preds = %if.then321
  %286 = load ptr, ptr %pNewExpr322, align 8
  %tobool330 = icmp ne ptr %286, null
  br i1 %tobool330, label %if.then331, label %if.end334

if.then331:                                       ; preds = %land.lhs.true329
  %287 = load ptr, ptr %pNewExpr322, align 8
  %flags332 = getelementptr inbounds nuw %struct.Expr, ptr %287, i32 0, i32 2
  %288 = load i32, ptr %flags332, align 4
  %or333 = or i32 %288, 1
  store i32 %or333, ptr %flags332, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %land.lhs.true329, %if.then321
  %289 = load ptr, ptr %pWC.addr, align 8
  %290 = load ptr, ptr %pNewExpr322, align 8
  %call335 = call i32 @whereClauseInsert(ptr noundef %289, ptr noundef %290, i16 noundef zeroext 3)
  store i32 %call335, ptr %idxNew315, align 4
  %291 = load ptr, ptr %pWC.addr, align 8
  %a336 = getelementptr inbounds nuw %struct.WhereClause, ptr %291, i32 0, i32 6
  %292 = load ptr, ptr %a336, align 8
  %293 = load i32, ptr %idxNew315, align 4
  %idxprom337 = sext i32 %293 to i64
  %arrayidx338 = getelementptr inbounds %struct.WhereTerm, ptr %292, i64 %idxprom337
  store ptr %arrayidx338, ptr %pNewTerm, align 8
  %294 = load i64, ptr %prereqExpr, align 8
  %295 = load ptr, ptr %pNewTerm, align 8
  %prereqRight339 = getelementptr inbounds nuw %struct.WhereTerm, ptr %295, i32 0, i32 11
  store i64 %294, ptr %prereqRight339, align 8
  %296 = load ptr, ptr %pLeft311, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %296, i32 0, i32 8
  %297 = load i32, ptr %iTable, align 4
  %298 = load ptr, ptr %pNewTerm, align 8
  %leftCursor340 = getelementptr inbounds nuw %struct.WhereTerm, ptr %298, i32 0, i32 8
  store i32 %297, ptr %leftCursor340, align 4
  %299 = load ptr, ptr %pLeft311, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %299, i32 0, i32 9
  %300 = load i16, ptr %iColumn, align 8
  %conv341 = sext i16 %300 to i32
  %301 = load ptr, ptr %pNewTerm, align 8
  %u342 = getelementptr inbounds nuw %struct.WhereTerm, ptr %301, i32 0, i32 10
  store i32 %conv341, ptr %u342, align 8
  %302 = load ptr, ptr %pNewTerm, align 8
  %eOperator343 = getelementptr inbounds nuw %struct.WhereTerm, ptr %302, i32 0, i32 4
  store i16 64, ptr %eOperator343, align 4
  %303 = load i8, ptr %eOp2, align 1
  %304 = load ptr, ptr %pNewTerm, align 8
  %eMatchOp = getelementptr inbounds nuw %struct.WhereTerm, ptr %304, i32 0, i32 6
  store i8 %303, ptr %eMatchOp, align 1
  %305 = load ptr, ptr %pWC.addr, align 8
  %306 = load i32, ptr %idxNew315, align 4
  %307 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %305, i32 noundef %306, i32 noundef %307)
  %308 = load ptr, ptr %pWC.addr, align 8
  %a344 = getelementptr inbounds nuw %struct.WhereClause, ptr %308, i32 0, i32 6
  %309 = load ptr, ptr %a344, align 8
  %310 = load i32, ptr %idxTerm.addr, align 4
  %idxprom345 = sext i32 %310 to i64
  %arrayidx346 = getelementptr inbounds %struct.WhereTerm, ptr %309, i64 %idxprom345
  store ptr %arrayidx346, ptr %pTerm, align 8
  %311 = load ptr, ptr %pTerm, align 8
  %wtFlags347 = getelementptr inbounds nuw %struct.WhereTerm, ptr %311, i32 0, i32 3
  %312 = load i16, ptr %wtFlags347, align 2
  %conv348 = zext i16 %312 to i32
  %or349 = or i32 %conv348, 8
  %conv350 = trunc i32 %or349 to i16
  store i16 %conv350, ptr %wtFlags347, align 2
  %313 = load ptr, ptr %pTerm, align 8
  %prereqAll351 = getelementptr inbounds nuw %struct.WhereTerm, ptr %313, i32 0, i32 12
  %314 = load i64, ptr %prereqAll351, align 8
  %315 = load ptr, ptr %pNewTerm, align 8
  %prereqAll352 = getelementptr inbounds nuw %struct.WhereTerm, ptr %315, i32 0, i32 12
  store i64 %314, ptr %prereqAll352, align 8
  br label %if.end353

if.end353:                                        ; preds = %if.end334, %while.body
  %316 = load ptr, ptr %pLeft311, align 8
  store ptr %316, ptr %t, align 8
  %317 = load ptr, ptr %pRight310, align 8
  store ptr %317, ptr %pLeft311, align 8
  %318 = load ptr, ptr %t, align 8
  store ptr %318, ptr %pRight310, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %if.end354

if.end354:                                        ; preds = %while.end, %if.end304
  %319 = load ptr, ptr %pWC.addr, align 8
  %op355 = getelementptr inbounds nuw %struct.WhereClause, ptr %319, i32 0, i32 2
  %320 = load i8, ptr %op355, align 8
  %conv356 = zext i8 %320 to i32
  %cmp357 = icmp eq i32 %conv356, 44
  br i1 %cmp357, label %land.lhs.true359, label %if.end419

land.lhs.true359:                                 ; preds = %if.end354
  %321 = load ptr, ptr %pExpr, align 8
  %op360 = getelementptr inbounds nuw %struct.Expr, ptr %321, i32 0, i32 0
  %322 = load i8, ptr %op360, align 8
  %conv361 = zext i8 %322 to i32
  %cmp362 = icmp eq i32 %conv361, 53
  br i1 %cmp362, label %land.lhs.true368, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true359
  %323 = load ptr, ptr %pExpr, align 8
  %op364 = getelementptr inbounds nuw %struct.Expr, ptr %323, i32 0, i32 0
  %324 = load i8, ptr %op364, align 8
  %conv365 = zext i8 %324 to i32
  %cmp366 = icmp eq i32 %conv365, 45
  br i1 %cmp366, label %land.lhs.true368, label %if.end419

land.lhs.true368:                                 ; preds = %lor.lhs.false, %land.lhs.true359
  %325 = load ptr, ptr %pExpr, align 8
  %pLeft369 = getelementptr inbounds nuw %struct.Expr, ptr %325, i32 0, i32 4
  %326 = load ptr, ptr %pLeft369, align 8
  %call370 = call i32 @sqlite3ExprVectorSize(ptr noundef %326)
  store i32 %call370, ptr %nLeft, align 4
  %cmp371 = icmp sgt i32 %call370, 1
  br i1 %cmp371, label %land.lhs.true373, label %if.end419

land.lhs.true373:                                 ; preds = %land.lhs.true368
  %327 = load ptr, ptr %pExpr, align 8
  %pRight374 = getelementptr inbounds nuw %struct.Expr, ptr %327, i32 0, i32 5
  %328 = load ptr, ptr %pRight374, align 8
  %call375 = call i32 @sqlite3ExprVectorSize(ptr noundef %328)
  %329 = load i32, ptr %nLeft, align 4
  %cmp376 = icmp eq i32 %call375, %329
  br i1 %cmp376, label %land.lhs.true378, label %if.end419

land.lhs.true378:                                 ; preds = %land.lhs.true373
  %330 = load ptr, ptr %pExpr, align 8
  %pLeft379 = getelementptr inbounds nuw %struct.Expr, ptr %330, i32 0, i32 4
  %331 = load ptr, ptr %pLeft379, align 8
  %flags380 = getelementptr inbounds nuw %struct.Expr, ptr %331, i32 0, i32 2
  %332 = load i32, ptr %flags380, align 4
  %and381 = and i32 %332, 2048
  %cmp382 = icmp eq i32 %and381, 0
  br i1 %cmp382, label %if.then390, label %lor.lhs.false384

lor.lhs.false384:                                 ; preds = %land.lhs.true378
  %333 = load ptr, ptr %pExpr, align 8
  %pRight385 = getelementptr inbounds nuw %struct.Expr, ptr %333, i32 0, i32 5
  %334 = load ptr, ptr %pRight385, align 8
  %flags386 = getelementptr inbounds nuw %struct.Expr, ptr %334, i32 0, i32 2
  %335 = load i32, ptr %flags386, align 4
  %and387 = and i32 %335, 2048
  %cmp388 = icmp eq i32 %and387, 0
  br i1 %cmp388, label %if.then390, label %if.end419

if.then390:                                       ; preds = %lor.lhs.false384, %land.lhs.true378
  store i32 0, ptr %i391, align 4
  br label %for.cond392

for.cond392:                                      ; preds = %for.inc408, %if.then390
  %336 = load i32, ptr %i391, align 4
  %337 = load i32, ptr %nLeft, align 4
  %cmp393 = icmp slt i32 %336, %337
  br i1 %cmp393, label %for.body395, label %for.end410

for.body395:                                      ; preds = %for.cond392
  %338 = load ptr, ptr %pParse, align 8
  %339 = load ptr, ptr %pExpr, align 8
  %pLeft399 = getelementptr inbounds nuw %struct.Expr, ptr %339, i32 0, i32 4
  %340 = load ptr, ptr %pLeft399, align 8
  %341 = load i32, ptr %i391, align 4
  %call400 = call ptr @sqlite3ExprForVectorField(ptr noundef %338, ptr noundef %340, i32 noundef %341)
  store ptr %call400, ptr %pLeft398, align 8
  %342 = load ptr, ptr %pParse, align 8
  %343 = load ptr, ptr %pExpr, align 8
  %pRight402 = getelementptr inbounds nuw %struct.Expr, ptr %343, i32 0, i32 5
  %344 = load ptr, ptr %pRight402, align 8
  %345 = load i32, ptr %i391, align 4
  %call403 = call ptr @sqlite3ExprForVectorField(ptr noundef %342, ptr noundef %344, i32 noundef %345)
  store ptr %call403, ptr %pRight401, align 8
  %346 = load ptr, ptr %pParse, align 8
  %347 = load ptr, ptr %pExpr, align 8
  %op404 = getelementptr inbounds nuw %struct.Expr, ptr %347, i32 0, i32 0
  %348 = load i8, ptr %op404, align 8
  %conv405 = zext i8 %348 to i32
  %349 = load ptr, ptr %pLeft398, align 8
  %350 = load ptr, ptr %pRight401, align 8
  %call406 = call ptr @sqlite3PExpr(ptr noundef %346, i32 noundef %conv405, ptr noundef %349, ptr noundef %350)
  store ptr %call406, ptr %pNew397, align 8
  %351 = load ptr, ptr %pNew397, align 8
  %352 = load ptr, ptr %pExpr, align 8
  call void @transferJoinMarkings(ptr noundef %351, ptr noundef %352)
  %353 = load ptr, ptr %pWC.addr, align 8
  %354 = load ptr, ptr %pNew397, align 8
  %call407 = call i32 @whereClauseInsert(ptr noundef %353, ptr noundef %354, i16 noundef zeroext 1)
  store i32 %call407, ptr %idxNew396, align 4
  %355 = load ptr, ptr %pSrc.addr, align 8
  %356 = load ptr, ptr %pWC.addr, align 8
  %357 = load i32, ptr %idxNew396, align 4
  call void @exprAnalyze(ptr noundef %355, ptr noundef %356, i32 noundef %357)
  br label %for.inc408

for.inc408:                                       ; preds = %for.body395
  %358 = load i32, ptr %i391, align 4
  %inc409 = add nsw i32 %358, 1
  store i32 %inc409, ptr %i391, align 4
  br label %for.cond392, !llvm.loop !10

for.end410:                                       ; preds = %for.cond392
  %359 = load ptr, ptr %pWC.addr, align 8
  %a411 = getelementptr inbounds nuw %struct.WhereClause, ptr %359, i32 0, i32 6
  %360 = load ptr, ptr %a411, align 8
  %361 = load i32, ptr %idxTerm.addr, align 4
  %idxprom412 = sext i32 %361 to i64
  %arrayidx413 = getelementptr inbounds %struct.WhereTerm, ptr %360, i64 %idxprom412
  store ptr %arrayidx413, ptr %pTerm, align 8
  %362 = load ptr, ptr %pTerm, align 8
  %wtFlags414 = getelementptr inbounds nuw %struct.WhereTerm, ptr %362, i32 0, i32 3
  %363 = load i16, ptr %wtFlags414, align 2
  %conv415 = zext i16 %363 to i32
  %or416 = or i32 %conv415, 6
  %conv417 = trunc i32 %or416 to i16
  store i16 %conv417, ptr %wtFlags414, align 2
  %364 = load ptr, ptr %pTerm, align 8
  %eOperator418 = getelementptr inbounds nuw %struct.WhereTerm, ptr %364, i32 0, i32 4
  store i16 0, ptr %eOperator418, align 4
  br label %if.end419

if.end419:                                        ; preds = %for.end410, %lor.lhs.false384, %land.lhs.true373, %land.lhs.true368, %lor.lhs.false, %if.end354
  %365 = load ptr, ptr %pWC.addr, align 8
  %op420 = getelementptr inbounds nuw %struct.WhereClause, ptr %365, i32 0, i32 2
  %366 = load i8, ptr %op420, align 8
  %conv421 = zext i8 %366 to i32
  %cmp422 = icmp eq i32 %conv421, 44
  br i1 %cmp422, label %land.lhs.true424, label %if.end461

land.lhs.true424:                                 ; preds = %if.end419
  %367 = load ptr, ptr %pExpr, align 8
  %op425 = getelementptr inbounds nuw %struct.Expr, ptr %367, i32 0, i32 0
  %368 = load i8, ptr %op425, align 8
  %conv426 = zext i8 %368 to i32
  %cmp427 = icmp eq i32 %conv426, 49
  br i1 %cmp427, label %land.lhs.true429, label %if.end461

land.lhs.true429:                                 ; preds = %land.lhs.true424
  %369 = load ptr, ptr %pTerm, align 8
  %iField430 = getelementptr inbounds nuw %struct.WhereTerm, ptr %369, i32 0, i32 9
  %370 = load i32, ptr %iField430, align 8
  %cmp431 = icmp eq i32 %370, 0
  br i1 %cmp431, label %land.lhs.true433, label %if.end461

land.lhs.true433:                                 ; preds = %land.lhs.true429
  %371 = load ptr, ptr %pExpr, align 8
  %pLeft434 = getelementptr inbounds nuw %struct.Expr, ptr %371, i32 0, i32 4
  %372 = load ptr, ptr %pLeft434, align 8
  %op435 = getelementptr inbounds nuw %struct.Expr, ptr %372, i32 0, i32 0
  %373 = load i8, ptr %op435, align 8
  %conv436 = zext i8 %373 to i32
  %cmp437 = icmp eq i32 %conv436, 172
  br i1 %cmp437, label %land.lhs.true439, label %if.end461

land.lhs.true439:                                 ; preds = %land.lhs.true433
  %374 = load ptr, ptr %pExpr, align 8
  %x440 = getelementptr inbounds nuw %struct.Expr, ptr %374, i32 0, i32 6
  %375 = load ptr, ptr %x440, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %375, i32 0, i32 13
  %376 = load ptr, ptr %pPrior, align 8
  %cmp441 = icmp eq ptr %376, null
  br i1 %cmp441, label %if.then443, label %if.end461

if.then443:                                       ; preds = %land.lhs.true439
  store i32 0, ptr %i444, align 4
  br label %for.cond445

for.cond445:                                      ; preds = %for.inc458, %if.then443
  %377 = load i32, ptr %i444, align 4
  %378 = load ptr, ptr %pExpr, align 8
  %pLeft446 = getelementptr inbounds nuw %struct.Expr, ptr %378, i32 0, i32 4
  %379 = load ptr, ptr %pLeft446, align 8
  %call447 = call i32 @sqlite3ExprVectorSize(ptr noundef %379)
  %cmp448 = icmp slt i32 %377, %call447
  br i1 %cmp448, label %for.body450, label %for.end460

for.body450:                                      ; preds = %for.cond445
  %380 = load ptr, ptr %pWC.addr, align 8
  %381 = load ptr, ptr %pExpr, align 8
  %call452 = call i32 @whereClauseInsert(ptr noundef %380, ptr noundef %381, i16 noundef zeroext 2)
  store i32 %call452, ptr %idxNew451, align 4
  %382 = load i32, ptr %i444, align 4
  %add453 = add nsw i32 %382, 1
  %383 = load ptr, ptr %pWC.addr, align 8
  %a454 = getelementptr inbounds nuw %struct.WhereClause, ptr %383, i32 0, i32 6
  %384 = load ptr, ptr %a454, align 8
  %385 = load i32, ptr %idxNew451, align 4
  %idxprom455 = sext i32 %385 to i64
  %arrayidx456 = getelementptr inbounds %struct.WhereTerm, ptr %384, i64 %idxprom455
  %iField457 = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx456, i32 0, i32 9
  store i32 %add453, ptr %iField457, align 8
  %386 = load ptr, ptr %pSrc.addr, align 8
  %387 = load ptr, ptr %pWC.addr, align 8
  %388 = load i32, ptr %idxNew451, align 4
  call void @exprAnalyze(ptr noundef %386, ptr noundef %387, i32 noundef %388)
  %389 = load ptr, ptr %pWC.addr, align 8
  %390 = load i32, ptr %idxNew451, align 4
  %391 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %389, i32 noundef %390, i32 noundef %391)
  br label %for.inc458

for.inc458:                                       ; preds = %for.body450
  %392 = load i32, ptr %i444, align 4
  %inc459 = add nsw i32 %392, 1
  store i32 %inc459, ptr %i444, align 4
  br label %for.cond445, !llvm.loop !11

for.end460:                                       ; preds = %for.cond445
  br label %if.end461

if.end461:                                        ; preds = %for.end460, %land.lhs.true439, %land.lhs.true433, %land.lhs.true429, %land.lhs.true424, %if.end419
  %393 = load ptr, ptr %pWC.addr, align 8
  %a462 = getelementptr inbounds nuw %struct.WhereClause, ptr %393, i32 0, i32 6
  %394 = load ptr, ptr %a462, align 8
  %395 = load i32, ptr %idxTerm.addr, align 4
  %idxprom463 = sext i32 %395 to i64
  %arrayidx464 = getelementptr inbounds %struct.WhereTerm, ptr %394, i64 %idxprom463
  store ptr %arrayidx464, ptr %pTerm, align 8
  %396 = load i64, ptr %extraRight, align 8
  %397 = load ptr, ptr %pTerm, align 8
  %prereqRight465 = getelementptr inbounds nuw %struct.WhereTerm, ptr %397, i32 0, i32 11
  %398 = load i64, ptr %prereqRight465, align 8
  %or466 = or i64 %398, %396
  store i64 %or466, ptr %prereqRight465, align 8
  br label %return

return:                                           ; preds = %if.end461, %if.then116, %if.then111, %if.then48, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @exprSelectUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprUsageNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereGetMask(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @allowedOp(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @exprMightBeIndexed(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @operatorMask(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @markTermAsChild(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @termIsEquivalence(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @exprCommute(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @transferJoinMarkings(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @exprAnalyzeOrTerm(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isLikeOrGlob(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isAuxiliaryVtabOperator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprForVectorField(ptr noundef, ptr noundef, i32 noundef) #0

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
