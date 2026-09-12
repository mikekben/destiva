; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.InLoop = type { i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbReallocOrFree(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTarget(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindInIndex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @codeEqualityTerm(ptr noundef %pParse, ptr noundef %pTerm, ptr noundef %pLevel, i32 noundef %iEq, i32 noundef %bRev, i32 noundef %iTarget) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTerm.addr = alloca ptr, align 8
  %pLevel.addr = alloca ptr, align 8
  %iEq.addr = alloca i32, align 4
  %bRev.addr = alloca i32, align 4
  %iTarget.addr = alloca i32, align 4
  %pX = alloca ptr, align 8
  %v = alloca ptr, align 8
  %iReg = alloca i32, align 4
  %eType = alloca i32, align 4
  %iTab = alloca i32, align 4
  %pIn = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %i = alloca i32, align 4
  %nEq = alloca i32, align 4
  %aiMap = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iMap = alloca i32, align 4
  %iOut = alloca i32, align 4
  %iCol = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTerm, ptr %pTerm.addr, align 8
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store i32 %iEq, ptr %iEq.addr, align 4
  store i32 %bRev, ptr %bRev.addr, align 4
  store i32 %iTarget, ptr %iTarget.addr, align 4
  %0 = load ptr, ptr %pTerm.addr, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pExpr, align 8
  store ptr %1, ptr %pX, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pX, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 53
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %pX, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op2, align 8
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pX, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pRight, align 8
  %11 = load i32, ptr %iTarget.addr, align 4
  %call = call i32 @sqlite3ExprCodeTarget(ptr noundef %8, ptr noundef %10, i32 noundef %11)
  store i32 %call, ptr %iReg, align 4
  br label %if.end169

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pX, align 8
  %op6 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 0
  %13 = load i8, ptr %op6, align 8
  %conv7 = zext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 50
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  %14 = load i32, ptr %iTarget.addr, align 4
  store i32 %14, ptr %iReg, align 4
  %15 = load ptr, ptr %v, align 8
  %16 = load i32, ptr %iReg, align 4
  %call11 = call i32 @sqlite3VdbeAddOp2(ptr noundef %15, i32 noundef 73, i32 noundef 0, i32 noundef %16)
  br label %if.end168

if.else12:                                        ; preds = %if.else
  store i32 5, ptr %eType, align 4
  %17 = load ptr, ptr %pLevel.addr, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %17, i32 0, i32 20
  %18 = load ptr, ptr %pWLoop, align 8
  store ptr %18, ptr %pLoop, align 8
  store i32 0, ptr %nEq, align 4
  store ptr null, ptr %aiMap, align 8
  %19 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %wsFlags, align 8
  %and = and i32 %20, 1024
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else12
  %21 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 4
  %22 = load ptr, ptr %pIndex, align 8
  %cmp15 = icmp ne ptr %22, null
  br i1 %cmp15, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %23 = load ptr, ptr %pLoop, align 8
  %u18 = getelementptr inbounds nuw %struct.WhereLoop, ptr %23, i32 0, i32 7
  %pIndex19 = getelementptr inbounds nuw %struct.anon.19, ptr %u18, i32 0, i32 4
  %24 = load ptr, ptr %pIndex19, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %aSortOrder, align 8
  %26 = load i32, ptr %iEq.addr, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i8, ptr %25, i64 %idxprom
  %27 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %27 to i32
  %tobool = icmp ne i32 %conv20, 0
  br i1 %tobool, label %if.then21, label %if.end

if.then21:                                        ; preds = %land.lhs.true17
  %28 = load i32, ptr %bRev.addr, align 4
  %tobool22 = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool22, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %bRev.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %land.lhs.true17, %land.lhs.true, %if.else12
  %29 = load i32, ptr %iTarget.addr, align 4
  store i32 %29, ptr %iReg, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %iEq.addr, align 4
  %cmp23 = icmp slt i32 %30, %31
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %pLoop, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %aLTerm, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %33, i64 %idxprom25
  %35 = load ptr, ptr %arrayidx26, align 8
  %tobool27 = icmp ne ptr %35, null
  br i1 %tobool27, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %for.body
  %36 = load ptr, ptr %pLoop, align 8
  %aLTerm29 = getelementptr inbounds nuw %struct.WhereLoop, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %aLTerm29, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %38 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %37, i64 %idxprom30
  %39 = load ptr, ptr %arrayidx31, align 8
  %pExpr32 = getelementptr inbounds nuw %struct.WhereTerm, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pExpr32, align 8
  %41 = load ptr, ptr %pX, align 8
  %cmp33 = icmp eq ptr %40, %41
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true28
  %42 = load ptr, ptr %pLevel.addr, align 8
  %43 = load ptr, ptr %pTerm.addr, align 8
  call void @disableTerm(ptr noundef %42, ptr noundef %43)
  %44 = load i32, ptr %iTarget.addr, align 4
  store i32 %44, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %land.lhs.true28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %45 = load i32, ptr %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %46 = load i32, ptr %iEq.addr, align 4
  store i32 %46, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc51, %for.end
  %47 = load i32, ptr %i, align 4
  %48 = load ptr, ptr %pLoop, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %48, i32 0, i32 9
  %49 = load i16, ptr %nLTerm, align 4
  %conv38 = zext i16 %49 to i32
  %cmp39 = icmp slt i32 %47, %conv38
  br i1 %cmp39, label %for.body41, label %for.end53

for.body41:                                       ; preds = %for.cond37
  %50 = load ptr, ptr %pLoop, align 8
  %aLTerm42 = getelementptr inbounds nuw %struct.WhereLoop, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %aLTerm42, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %51, i64 %idxprom43
  %53 = load ptr, ptr %arrayidx44, align 8
  %pExpr45 = getelementptr inbounds nuw %struct.WhereTerm, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %pExpr45, align 8
  %55 = load ptr, ptr %pX, align 8
  %cmp46 = icmp eq ptr %54, %55
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.body41
  %56 = load i32, ptr %nEq, align 4
  %inc49 = add nsw i32 %56, 1
  store i32 %inc49, ptr %nEq, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.body41
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %57 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %57, 1
  store i32 %inc52, ptr %i, align 4
  br label %for.cond37, !llvm.loop !8

for.end53:                                        ; preds = %for.cond37
  store i32 0, ptr %iTab, align 4
  %58 = load ptr, ptr %pX, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %flags, align 4
  %and54 = and i32 %59, 2048
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %for.end53
  %60 = load ptr, ptr %pX, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 6
  %61 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %nExpr, align 8
  %cmp58 = icmp eq i32 %63, 1
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %lor.lhs.false57, %for.end53
  %64 = load ptr, ptr %pParse.addr, align 8
  %65 = load ptr, ptr %pX, align 8
  %call61 = call i32 @sqlite3FindInIndex(ptr noundef %64, ptr noundef %65, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef %iTab)
  store i32 %call61, ptr %eType, align 4
  br label %if.end74

if.else62:                                        ; preds = %lor.lhs.false57
  %66 = load ptr, ptr %pParse.addr, align 8
  %db63 = getelementptr inbounds nuw %struct.Parse, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %db63, align 8
  store ptr %67, ptr %db, align 8
  %68 = load ptr, ptr %pParse.addr, align 8
  %69 = load i32, ptr %iEq.addr, align 4
  %70 = load ptr, ptr %pLoop, align 8
  %71 = load ptr, ptr %pX, align 8
  %call64 = call ptr @removeUnindexableInClauseTerms(ptr noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %71)
  store ptr %call64, ptr %pX, align 8
  %72 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %72, i32 0, i32 19
  %73 = load i8, ptr %mallocFailed, align 1
  %tobool65 = icmp ne i8 %73, 0
  br i1 %tobool65, label %if.end72, label %if.then66

if.then66:                                        ; preds = %if.else62
  %74 = load ptr, ptr %pParse.addr, align 8
  %db67 = getelementptr inbounds nuw %struct.Parse, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %db67, align 8
  %76 = load i32, ptr %nEq, align 4
  %conv68 = sext i32 %76 to i64
  %mul = mul i64 4, %conv68
  %call69 = call ptr @sqlite3DbMallocZero(ptr noundef %75, i64 noundef %mul)
  store ptr %call69, ptr %aiMap, align 8
  %77 = load ptr, ptr %pParse.addr, align 8
  %78 = load ptr, ptr %pX, align 8
  %79 = load ptr, ptr %aiMap, align 8
  %call70 = call i32 @sqlite3FindInIndex(ptr noundef %77, ptr noundef %78, i32 noundef 4, ptr noundef null, ptr noundef %79, ptr noundef %iTab)
  store i32 %call70, ptr %eType, align 4
  %80 = load i32, ptr %iTab, align 4
  %81 = load ptr, ptr %pTerm.addr, align 8
  %pExpr71 = getelementptr inbounds nuw %struct.WhereTerm, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %pExpr71, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %82, i32 0, i32 8
  store i32 %80, ptr %iTable, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %if.else62
  %83 = load ptr, ptr %db, align 8
  %84 = load ptr, ptr %pX, align 8
  call void @sqlite3ExprDelete(ptr noundef %83, ptr noundef %84)
  %85 = load ptr, ptr %pTerm.addr, align 8
  %pExpr73 = getelementptr inbounds nuw %struct.WhereTerm, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %pExpr73, align 8
  store ptr %86, ptr %pX, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end72, %if.then60
  %87 = load i32, ptr %eType, align 4
  %cmp75 = icmp eq i32 %87, 4
  br i1 %cmp75, label %if.then77, label %if.end81

if.then77:                                        ; preds = %if.end74
  %88 = load i32, ptr %bRev.addr, align 4
  %tobool78 = icmp ne i32 %88, 0
  %lnot79 = xor i1 %tobool78, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  store i32 %lnot.ext80, ptr %bRev.addr, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end74
  %89 = load ptr, ptr %v, align 8
  %90 = load i32, ptr %bRev.addr, align 4
  %tobool82 = icmp ne i32 %90, 0
  %91 = zext i1 %tobool82 to i64
  %cond = select i1 %tobool82, i32 32, i32 36
  %92 = load i32, ptr %iTab, align 4
  %call83 = call i32 @sqlite3VdbeAddOp2(ptr noundef %89, i32 noundef %cond, i32 noundef %92, i32 noundef 0)
  %93 = load ptr, ptr %pLoop, align 8
  %wsFlags84 = getelementptr inbounds nuw %struct.WhereLoop, ptr %93, i32 0, i32 8
  %94 = load i32, ptr %wsFlags84, align 8
  %or = or i32 %94, 2048
  store i32 %or, ptr %wsFlags84, align 8
  %95 = load ptr, ptr %pLevel.addr, align 8
  %u85 = getelementptr inbounds nuw %struct.WhereLevel, ptr %95, i32 0, i32 19
  %nIn = getelementptr inbounds nuw %struct.anon.17, ptr %u85, i32 0, i32 0
  %96 = load i32, ptr %nIn, align 8
  %cmp86 = icmp eq i32 %96, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end81
  %97 = load ptr, ptr %pParse.addr, align 8
  %call89 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %97)
  %98 = load ptr, ptr %pLevel.addr, align 8
  %addrNxt = getelementptr inbounds nuw %struct.WhereLevel, ptr %98, i32 0, i32 4
  store i32 %call89, ptr %addrNxt, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end81
  %99 = load ptr, ptr %pLevel.addr, align 8
  %u91 = getelementptr inbounds nuw %struct.WhereLevel, ptr %99, i32 0, i32 19
  %nIn92 = getelementptr inbounds nuw %struct.anon.17, ptr %u91, i32 0, i32 0
  %100 = load i32, ptr %nIn92, align 8
  store i32 %100, ptr %i, align 4
  %101 = load i32, ptr %nEq, align 4
  %102 = load ptr, ptr %pLevel.addr, align 8
  %u93 = getelementptr inbounds nuw %struct.WhereLevel, ptr %102, i32 0, i32 19
  %nIn94 = getelementptr inbounds nuw %struct.anon.17, ptr %u93, i32 0, i32 0
  %103 = load i32, ptr %nIn94, align 8
  %add = add nsw i32 %103, %101
  store i32 %add, ptr %nIn94, align 8
  %104 = load ptr, ptr %pParse.addr, align 8
  %db95 = getelementptr inbounds nuw %struct.Parse, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %db95, align 8
  %106 = load ptr, ptr %pLevel.addr, align 8
  %u96 = getelementptr inbounds nuw %struct.WhereLevel, ptr %106, i32 0, i32 19
  %aInLoop = getelementptr inbounds nuw %struct.anon.17, ptr %u96, i32 0, i32 1
  %107 = load ptr, ptr %aInLoop, align 8
  %108 = load ptr, ptr %pLevel.addr, align 8
  %u97 = getelementptr inbounds nuw %struct.WhereLevel, ptr %108, i32 0, i32 19
  %nIn98 = getelementptr inbounds nuw %struct.anon.17, ptr %u97, i32 0, i32 0
  %109 = load i32, ptr %nIn98, align 8
  %conv99 = sext i32 %109 to i64
  %mul100 = mul i64 20, %conv99
  %call101 = call ptr @sqlite3DbReallocOrFree(ptr noundef %105, ptr noundef %107, i64 noundef %mul100)
  %110 = load ptr, ptr %pLevel.addr, align 8
  %u102 = getelementptr inbounds nuw %struct.WhereLevel, ptr %110, i32 0, i32 19
  %aInLoop103 = getelementptr inbounds nuw %struct.anon.17, ptr %u102, i32 0, i32 1
  store ptr %call101, ptr %aInLoop103, align 8
  %111 = load ptr, ptr %pLevel.addr, align 8
  %u104 = getelementptr inbounds nuw %struct.WhereLevel, ptr %111, i32 0, i32 19
  %aInLoop105 = getelementptr inbounds nuw %struct.anon.17, ptr %u104, i32 0, i32 1
  %112 = load ptr, ptr %aInLoop105, align 8
  store ptr %112, ptr %pIn, align 8
  %113 = load ptr, ptr %pIn, align 8
  %tobool106 = icmp ne ptr %113, null
  br i1 %tobool106, label %if.then107, label %if.else163

if.then107:                                       ; preds = %if.end90
  store i32 0, ptr %iMap, align 4
  %114 = load i32, ptr %i, align 4
  %115 = load ptr, ptr %pIn, align 8
  %idx.ext = sext i32 %114 to i64
  %add.ptr = getelementptr inbounds %struct.InLoop, ptr %115, i64 %idx.ext
  store ptr %add.ptr, ptr %pIn, align 8
  %116 = load i32, ptr %iEq.addr, align 4
  store i32 %116, ptr %i, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc160, %if.then107
  %117 = load i32, ptr %i, align 4
  %118 = load ptr, ptr %pLoop, align 8
  %nLTerm109 = getelementptr inbounds nuw %struct.WhereLoop, ptr %118, i32 0, i32 9
  %119 = load i16, ptr %nLTerm109, align 4
  %conv110 = zext i16 %119 to i32
  %cmp111 = icmp slt i32 %117, %conv110
  br i1 %cmp111, label %for.body113, label %for.end162

for.body113:                                      ; preds = %for.cond108
  %120 = load ptr, ptr %pLoop, align 8
  %aLTerm114 = getelementptr inbounds nuw %struct.WhereLoop, ptr %120, i32 0, i32 12
  %121 = load ptr, ptr %aLTerm114, align 8
  %122 = load i32, ptr %i, align 4
  %idxprom115 = sext i32 %122 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %121, i64 %idxprom115
  %123 = load ptr, ptr %arrayidx116, align 8
  %pExpr117 = getelementptr inbounds nuw %struct.WhereTerm, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %pExpr117, align 8
  %125 = load ptr, ptr %pX, align 8
  %cmp118 = icmp eq ptr %124, %125
  br i1 %cmp118, label %if.then120, label %if.end159

if.then120:                                       ; preds = %for.body113
  %126 = load i32, ptr %iReg, align 4
  %127 = load i32, ptr %i, align 4
  %add121 = add nsw i32 %126, %127
  %128 = load i32, ptr %iEq.addr, align 4
  %sub = sub nsw i32 %add121, %128
  store i32 %sub, ptr %iOut, align 4
  %129 = load i32, ptr %eType, align 4
  %cmp122 = icmp eq i32 %129, 1
  br i1 %cmp122, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.then120
  %130 = load ptr, ptr %v, align 8
  %131 = load i32, ptr %iTab, align 4
  %132 = load i32, ptr %iOut, align 4
  %call125 = call i32 @sqlite3VdbeAddOp2(ptr noundef %130, i32 noundef 128, i32 noundef %131, i32 noundef %132)
  %133 = load ptr, ptr %pIn, align 8
  %addrInTop = getelementptr inbounds nuw %struct.InLoop, ptr %133, i32 0, i32 1
  store i32 %call125, ptr %addrInTop, align 4
  br label %if.end134

if.else126:                                       ; preds = %if.then120
  %134 = load ptr, ptr %aiMap, align 8
  %tobool127 = icmp ne ptr %134, null
  br i1 %tobool127, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else126
  %135 = load ptr, ptr %aiMap, align 8
  %136 = load i32, ptr %iMap, align 4
  %inc128 = add nsw i32 %136, 1
  store i32 %inc128, ptr %iMap, align 4
  %idxprom129 = sext i32 %136 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %135, i64 %idxprom129
  %137 = load i32, ptr %arrayidx130, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else126
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond131 = phi i32 [ %137, %cond.true ], [ 0, %cond.false ]
  store i32 %cond131, ptr %iCol, align 4
  %138 = load ptr, ptr %v, align 8
  %139 = load i32, ptr %iTab, align 4
  %140 = load i32, ptr %iCol, align 4
  %141 = load i32, ptr %iOut, align 4
  %call132 = call i32 @sqlite3VdbeAddOp3(ptr noundef %138, i32 noundef 90, i32 noundef %139, i32 noundef %140, i32 noundef %141)
  %142 = load ptr, ptr %pIn, align 8
  %addrInTop133 = getelementptr inbounds nuw %struct.InLoop, ptr %142, i32 0, i32 1
  store i32 %call132, ptr %addrInTop133, align 4
  br label %if.end134

if.end134:                                        ; preds = %cond.end, %if.then124
  %143 = load ptr, ptr %v, align 8
  %144 = load i32, ptr %iOut, align 4
  %call135 = call i32 @sqlite3VdbeAddOp1(ptr noundef %143, i32 noundef 50, i32 noundef %144)
  %145 = load i32, ptr %i, align 4
  %146 = load i32, ptr %iEq.addr, align 4
  %cmp136 = icmp eq i32 %145, %146
  br i1 %cmp136, label %if.then138, label %if.else156

if.then138:                                       ; preds = %if.end134
  %147 = load i32, ptr %iTab, align 4
  %148 = load ptr, ptr %pIn, align 8
  %iCur = getelementptr inbounds nuw %struct.InLoop, ptr %148, i32 0, i32 0
  store i32 %147, ptr %iCur, align 4
  %149 = load i32, ptr %bRev.addr, align 4
  %tobool139 = icmp ne i32 %149, 0
  %150 = zext i1 %tobool139 to i64
  %cond140 = select i1 %tobool139, i32 4, i32 5
  %conv141 = trunc i32 %cond140 to i8
  %151 = load ptr, ptr %pIn, align 8
  %eEndLoopOp = getelementptr inbounds nuw %struct.InLoop, ptr %151, i32 0, i32 4
  store i8 %conv141, ptr %eEndLoopOp, align 4
  %152 = load i32, ptr %iEq.addr, align 4
  %cmp142 = icmp sgt i32 %152, 0
  br i1 %cmp142, label %land.lhs.true144, label %if.else153

land.lhs.true144:                                 ; preds = %if.then138
  %153 = load ptr, ptr %pLoop, align 8
  %wsFlags145 = getelementptr inbounds nuw %struct.WhereLoop, ptr %153, i32 0, i32 8
  %154 = load i32, ptr %wsFlags145, align 8
  %and146 = and i32 %154, 1024
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %if.then149, label %if.else153

if.then149:                                       ; preds = %land.lhs.true144
  %155 = load i32, ptr %iReg, align 4
  %156 = load i32, ptr %i, align 4
  %sub150 = sub nsw i32 %155, %156
  %157 = load ptr, ptr %pIn, align 8
  %iBase = getelementptr inbounds nuw %struct.InLoop, ptr %157, i32 0, i32 2
  store i32 %sub150, ptr %iBase, align 4
  %158 = load i32, ptr %i, align 4
  %159 = load ptr, ptr %pIn, align 8
  %nPrefix = getelementptr inbounds nuw %struct.InLoop, ptr %159, i32 0, i32 3
  store i32 %158, ptr %nPrefix, align 4
  %160 = load ptr, ptr %pLoop, align 8
  %wsFlags151 = getelementptr inbounds nuw %struct.WhereLoop, ptr %160, i32 0, i32 8
  %161 = load i32, ptr %wsFlags151, align 8
  %or152 = or i32 %161, 262144
  store i32 %or152, ptr %wsFlags151, align 8
  br label %if.end155

if.else153:                                       ; preds = %land.lhs.true144, %if.then138
  %162 = load ptr, ptr %pIn, align 8
  %nPrefix154 = getelementptr inbounds nuw %struct.InLoop, ptr %162, i32 0, i32 3
  store i32 0, ptr %nPrefix154, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.else153, %if.then149
  br label %if.end158

if.else156:                                       ; preds = %if.end134
  %163 = load ptr, ptr %pIn, align 8
  %eEndLoopOp157 = getelementptr inbounds nuw %struct.InLoop, ptr %163, i32 0, i32 4
  store i8 -86, ptr %eEndLoopOp157, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.end155
  %164 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.InLoop, ptr %164, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %for.body113
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159
  %165 = load i32, ptr %i, align 4
  %inc161 = add nsw i32 %165, 1
  store i32 %inc161, ptr %i, align 4
  br label %for.cond108, !llvm.loop !9

for.end162:                                       ; preds = %for.cond108
  br label %if.end166

if.else163:                                       ; preds = %if.end90
  %166 = load ptr, ptr %pLevel.addr, align 8
  %u164 = getelementptr inbounds nuw %struct.WhereLevel, ptr %166, i32 0, i32 19
  %nIn165 = getelementptr inbounds nuw %struct.anon.17, ptr %u164, i32 0, i32 0
  store i32 0, ptr %nIn165, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %for.end162
  %167 = load ptr, ptr %pParse.addr, align 8
  %db167 = getelementptr inbounds nuw %struct.Parse, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %db167, align 8
  %169 = load ptr, ptr %aiMap, align 8
  call void @sqlite3DbFree(ptr noundef %168, ptr noundef %169)
  br label %if.end168

if.end168:                                        ; preds = %if.end166, %if.then10
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.then
  %170 = load ptr, ptr %pLevel.addr, align 8
  %171 = load ptr, ptr %pTerm.addr, align 8
  call void @disableTerm(ptr noundef %170, ptr noundef %171)
  %172 = load i32, ptr %iReg, align 4
  store i32 %172, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end169, %if.then35
  %173 = load i32, ptr %retval, align 4
  ret i32 %173
}

; Function Attrs: nounwind uwtable
declare hidden void @disableTerm(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @removeUnindexableInClauseTerms(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
