; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereScan = type { ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, [11 x i32], [11 x i16] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
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
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompareSkip(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @whereScanNext(ptr noundef %pScan) #0 {
entry:
  %retval = alloca ptr, align 8
  %pScan.addr = alloca ptr, align 8
  %iCur = alloca i32, align 4
  %iColumn = alloca i16, align 2
  %pX = alloca ptr, align 8
  %pWC = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %pColl = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  store ptr %pScan, ptr %pScan.addr, align 8
  %0 = load ptr, ptr %pScan.addr, align 8
  %k1 = getelementptr inbounds nuw %struct.WhereScan, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %k1, align 8
  store i32 %1, ptr %k, align 4
  %2 = load ptr, ptr %pScan.addr, align 8
  %pWC2 = getelementptr inbounds nuw %struct.WhereScan, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pWC2, align 8
  store ptr %3, ptr %pWC, align 8
  br label %while.body

while.body:                                       ; preds = %if.end158, %entry
  %4 = load ptr, ptr %pScan.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.WhereScan, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %pScan.addr, align 8
  %iEquiv = getelementptr inbounds nuw %struct.WhereScan, ptr %5, i32 0, i32 6
  %6 = load i8, ptr %iEquiv, align 2
  %conv = zext i8 %6 to i32
  %sub = sub nsw i32 %conv, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [11 x i16], ptr %aiColumn, i64 0, i64 %idxprom
  %7 = load i16, ptr %arrayidx, align 2
  store i16 %7, ptr %iColumn, align 2
  %8 = load ptr, ptr %pScan.addr, align 8
  %aiCur = getelementptr inbounds nuw %struct.WhereScan, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %pScan.addr, align 8
  %iEquiv3 = getelementptr inbounds nuw %struct.WhereScan, ptr %9, i32 0, i32 6
  %10 = load i8, ptr %iEquiv3, align 2
  %conv4 = zext i8 %10 to i32
  %sub5 = sub nsw i32 %conv4, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [11 x i32], ptr %aiCur, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  store i32 %11, ptr %iCur, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %12 = load ptr, ptr %pWC, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %a, align 8
  %14 = load i32, ptr %k, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.WhereTerm, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc146, %do.body
  %15 = load i32, ptr %k, align 4
  %16 = load ptr, ptr %pWC, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %nTerm, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end148

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pTerm, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %leftCursor, align 4
  %20 = load i32, ptr %iCur, align 4
  %cmp9 = icmp eq i32 %19, %20
  br i1 %cmp9, label %land.lhs.true, label %if.end145

land.lhs.true:                                    ; preds = %for.body
  %21 = load ptr, ptr %pTerm, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %21, i32 0, i32 10
  %22 = load i32, ptr %u, align 8
  %23 = load i16, ptr %iColumn, align 2
  %conv11 = sext i16 %23 to i32
  %cmp12 = icmp eq i32 %22, %conv11
  br i1 %cmp12, label %land.lhs.true14, label %if.end145

land.lhs.true14:                                  ; preds = %land.lhs.true
  %24 = load i16, ptr %iColumn, align 2
  %conv15 = sext i16 %24 to i32
  %cmp16 = icmp ne i32 %conv15, -2
  br i1 %cmp16, label %land.lhs.true20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true14
  %25 = load ptr, ptr %pTerm, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pExpr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pLeft, align 8
  %28 = load ptr, ptr %pScan.addr, align 8
  %pIdxExpr = getelementptr inbounds nuw %struct.WhereScan, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %pIdxExpr, align 8
  %30 = load i32, ptr %iCur, align 4
  %call = call i32 @sqlite3ExprCompareSkip(ptr noundef %27, ptr noundef %29, i32 noundef %30)
  %cmp18 = icmp eq i32 %call, 0
  br i1 %cmp18, label %land.lhs.true20, label %if.end145

land.lhs.true20:                                  ; preds = %lor.lhs.false, %land.lhs.true14
  %31 = load ptr, ptr %pScan.addr, align 8
  %iEquiv21 = getelementptr inbounds nuw %struct.WhereScan, ptr %31, i32 0, i32 6
  %32 = load i8, ptr %iEquiv21, align 2
  %conv22 = zext i8 %32 to i32
  %cmp23 = icmp sle i32 %conv22, 1
  br i1 %cmp23, label %if.then, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true20
  %33 = load ptr, ptr %pTerm, align 8
  %pExpr26 = getelementptr inbounds nuw %struct.WhereTerm, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pExpr26, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 1
  %cmp27 = icmp ne i32 %and, 0
  br i1 %cmp27, label %if.end145, label %if.then

if.then:                                          ; preds = %lor.lhs.false25, %land.lhs.true20
  %36 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %36, i32 0, i32 4
  %37 = load i16, ptr %eOperator, align 4
  %conv29 = zext i16 %37 to i32
  %and30 = and i32 %conv29, 2048
  %cmp31 = icmp ne i32 %and30, 0
  br i1 %cmp31, label %land.lhs.true33, label %if.end81

land.lhs.true33:                                  ; preds = %if.then
  %38 = load ptr, ptr %pScan.addr, align 8
  %nEquiv = getelementptr inbounds nuw %struct.WhereScan, ptr %38, i32 0, i32 5
  %39 = load i8, ptr %nEquiv, align 1
  %conv34 = zext i8 %39 to i32
  %cmp35 = icmp slt i32 %conv34, 11
  br i1 %cmp35, label %land.lhs.true37, label %if.end81

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %40 = load ptr, ptr %pTerm, align 8
  %pExpr38 = getelementptr inbounds nuw %struct.WhereTerm, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pExpr38, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %pRight, align 8
  %call39 = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %42)
  store ptr %call39, ptr %pX, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %call39, i32 0, i32 0
  %43 = load i8, ptr %op, align 8
  %conv40 = zext i8 %43 to i32
  %cmp41 = icmp eq i32 %conv40, 162
  br i1 %cmp41, label %if.then43, label %if.end81

if.then43:                                        ; preds = %land.lhs.true37
  store i32 0, ptr %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %if.then43
  %44 = load i32, ptr %j, align 4
  %45 = load ptr, ptr %pScan.addr, align 8
  %nEquiv45 = getelementptr inbounds nuw %struct.WhereScan, ptr %45, i32 0, i32 5
  %46 = load i8, ptr %nEquiv45, align 1
  %conv46 = zext i8 %46 to i32
  %cmp47 = icmp slt i32 %44, %conv46
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond44
  %47 = load ptr, ptr %pScan.addr, align 8
  %aiCur50 = getelementptr inbounds nuw %struct.WhereScan, ptr %47, i32 0, i32 9
  %48 = load i32, ptr %j, align 4
  %idxprom51 = sext i32 %48 to i64
  %arrayidx52 = getelementptr inbounds [11 x i32], ptr %aiCur50, i64 0, i64 %idxprom51
  %49 = load i32, ptr %arrayidx52, align 4
  %50 = load ptr, ptr %pX, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 8
  %51 = load i32, ptr %iTable, align 4
  %cmp53 = icmp eq i32 %49, %51
  br i1 %cmp53, label %land.lhs.true55, label %if.end

land.lhs.true55:                                  ; preds = %for.body49
  %52 = load ptr, ptr %pScan.addr, align 8
  %aiColumn56 = getelementptr inbounds nuw %struct.WhereScan, ptr %52, i32 0, i32 10
  %53 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %53 to i64
  %arrayidx58 = getelementptr inbounds [11 x i16], ptr %aiColumn56, i64 0, i64 %idxprom57
  %54 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %54 to i32
  %55 = load ptr, ptr %pX, align 8
  %iColumn60 = getelementptr inbounds nuw %struct.Expr, ptr %55, i32 0, i32 9
  %56 = load i16, ptr %iColumn60, align 8
  %conv61 = sext i16 %56 to i32
  %cmp62 = icmp eq i32 %conv59, %conv61
  br i1 %cmp62, label %if.then64, label %if.end

if.then64:                                        ; preds = %land.lhs.true55
  br label %for.end

if.end:                                           ; preds = %land.lhs.true55, %for.body49
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %57 = load i32, ptr %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond44, !llvm.loop !6

for.end:                                          ; preds = %if.then64, %for.cond44
  %58 = load i32, ptr %j, align 4
  %59 = load ptr, ptr %pScan.addr, align 8
  %nEquiv65 = getelementptr inbounds nuw %struct.WhereScan, ptr %59, i32 0, i32 5
  %60 = load i8, ptr %nEquiv65, align 1
  %conv66 = zext i8 %60 to i32
  %cmp67 = icmp eq i32 %58, %conv66
  br i1 %cmp67, label %if.then69, label %if.end80

if.then69:                                        ; preds = %for.end
  %61 = load ptr, ptr %pX, align 8
  %iTable70 = getelementptr inbounds nuw %struct.Expr, ptr %61, i32 0, i32 8
  %62 = load i32, ptr %iTable70, align 4
  %63 = load ptr, ptr %pScan.addr, align 8
  %aiCur71 = getelementptr inbounds nuw %struct.WhereScan, ptr %63, i32 0, i32 9
  %64 = load i32, ptr %j, align 4
  %idxprom72 = sext i32 %64 to i64
  %arrayidx73 = getelementptr inbounds [11 x i32], ptr %aiCur71, i64 0, i64 %idxprom72
  store i32 %62, ptr %arrayidx73, align 4
  %65 = load ptr, ptr %pX, align 8
  %iColumn74 = getelementptr inbounds nuw %struct.Expr, ptr %65, i32 0, i32 9
  %66 = load i16, ptr %iColumn74, align 8
  %67 = load ptr, ptr %pScan.addr, align 8
  %aiColumn75 = getelementptr inbounds nuw %struct.WhereScan, ptr %67, i32 0, i32 10
  %68 = load i32, ptr %j, align 4
  %idxprom76 = sext i32 %68 to i64
  %arrayidx77 = getelementptr inbounds [11 x i16], ptr %aiColumn75, i64 0, i64 %idxprom76
  store i16 %66, ptr %arrayidx77, align 2
  %69 = load ptr, ptr %pScan.addr, align 8
  %nEquiv78 = getelementptr inbounds nuw %struct.WhereScan, ptr %69, i32 0, i32 5
  %70 = load i8, ptr %nEquiv78, align 1
  %inc79 = add i8 %70, 1
  store i8 %inc79, ptr %nEquiv78, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then69, %for.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %land.lhs.true37, %land.lhs.true33, %if.then
  %71 = load ptr, ptr %pTerm, align 8
  %eOperator82 = getelementptr inbounds nuw %struct.WhereTerm, ptr %71, i32 0, i32 4
  %72 = load i16, ptr %eOperator82, align 4
  %conv83 = zext i16 %72 to i32
  %73 = load ptr, ptr %pScan.addr, align 8
  %opMask = getelementptr inbounds nuw %struct.WhereScan, ptr %73, i32 0, i32 7
  %74 = load i32, ptr %opMask, align 4
  %and84 = and i32 %conv83, %74
  %cmp85 = icmp ne i32 %and84, 0
  br i1 %cmp85, label %if.then87, label %if.end144

if.then87:                                        ; preds = %if.end81
  %75 = load ptr, ptr %pScan.addr, align 8
  %zCollName = getelementptr inbounds nuw %struct.WhereScan, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %zCollName, align 8
  %tobool = icmp ne ptr %76, null
  br i1 %tobool, label %land.lhs.true88, label %if.end113

land.lhs.true88:                                  ; preds = %if.then87
  %77 = load ptr, ptr %pTerm, align 8
  %eOperator89 = getelementptr inbounds nuw %struct.WhereTerm, ptr %77, i32 0, i32 4
  %78 = load i16, ptr %eOperator89, align 4
  %conv90 = zext i16 %78 to i32
  %and91 = and i32 %conv90, 256
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %if.then94, label %if.end113

if.then94:                                        ; preds = %land.lhs.true88
  %79 = load ptr, ptr %pWC, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereClause, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %pWInfo, align 8
  %pParse95 = getelementptr inbounds nuw %struct.WhereInfo, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %pParse95, align 8
  store ptr %81, ptr %pParse, align 8
  %82 = load ptr, ptr %pTerm, align 8
  %pExpr96 = getelementptr inbounds nuw %struct.WhereTerm, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %pExpr96, align 8
  store ptr %83, ptr %pX, align 8
  %84 = load ptr, ptr %pX, align 8
  %85 = load ptr, ptr %pScan.addr, align 8
  %idxaff = getelementptr inbounds nuw %struct.WhereScan, ptr %85, i32 0, i32 4
  %86 = load i8, ptr %idxaff, align 8
  %call97 = call i32 @sqlite3IndexAffinityOk(ptr noundef %84, i8 noundef signext %86)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.then94
  br label %for.inc146

if.end100:                                        ; preds = %if.then94
  %87 = load ptr, ptr %pParse, align 8
  %88 = load ptr, ptr %pX, align 8
  %pLeft101 = getelementptr inbounds nuw %struct.Expr, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %pLeft101, align 8
  %90 = load ptr, ptr %pX, align 8
  %pRight102 = getelementptr inbounds nuw %struct.Expr, ptr %90, i32 0, i32 5
  %91 = load ptr, ptr %pRight102, align 8
  %call103 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %87, ptr noundef %89, ptr noundef %91)
  store ptr %call103, ptr %pColl, align 8
  %92 = load ptr, ptr %pColl, align 8
  %cmp104 = icmp eq ptr %92, null
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end100
  %93 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %94, i32 0, i32 2
  %95 = load ptr, ptr %pDfltColl, align 8
  store ptr %95, ptr %pColl, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end100
  %96 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %zName, align 8
  %98 = load ptr, ptr %pScan.addr, align 8
  %zCollName108 = getelementptr inbounds nuw %struct.WhereScan, ptr %98, i32 0, i32 2
  %99 = load ptr, ptr %zCollName108, align 8
  %call109 = call i32 @sqlite3StrICmp(ptr noundef %97, ptr noundef %99)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end107
  br label %for.inc146

if.end112:                                        ; preds = %if.end107
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %land.lhs.true88, %if.then87
  %100 = load ptr, ptr %pTerm, align 8
  %eOperator114 = getelementptr inbounds nuw %struct.WhereTerm, ptr %100, i32 0, i32 4
  %101 = load i16, ptr %eOperator114, align 4
  %conv115 = zext i16 %101 to i32
  %and116 = and i32 %conv115, 130
  %cmp117 = icmp ne i32 %and116, 0
  br i1 %cmp117, label %land.lhs.true119, label %if.end141

land.lhs.true119:                                 ; preds = %if.end113
  %102 = load ptr, ptr %pTerm, align 8
  %pExpr120 = getelementptr inbounds nuw %struct.WhereTerm, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %pExpr120, align 8
  %pRight121 = getelementptr inbounds nuw %struct.Expr, ptr %103, i32 0, i32 5
  %104 = load ptr, ptr %pRight121, align 8
  store ptr %104, ptr %pX, align 8
  %op122 = getelementptr inbounds nuw %struct.Expr, ptr %104, i32 0, i32 0
  %105 = load i8, ptr %op122, align 8
  %conv123 = zext i8 %105 to i32
  %cmp124 = icmp eq i32 %conv123, 162
  br i1 %cmp124, label %land.lhs.true126, label %if.end141

land.lhs.true126:                                 ; preds = %land.lhs.true119
  %106 = load ptr, ptr %pX, align 8
  %iTable127 = getelementptr inbounds nuw %struct.Expr, ptr %106, i32 0, i32 8
  %107 = load i32, ptr %iTable127, align 4
  %108 = load ptr, ptr %pScan.addr, align 8
  %aiCur128 = getelementptr inbounds nuw %struct.WhereScan, ptr %108, i32 0, i32 9
  %arrayidx129 = getelementptr inbounds [11 x i32], ptr %aiCur128, i64 0, i64 0
  %109 = load i32, ptr %arrayidx129, align 4
  %cmp130 = icmp eq i32 %107, %109
  br i1 %cmp130, label %land.lhs.true132, label %if.end141

land.lhs.true132:                                 ; preds = %land.lhs.true126
  %110 = load ptr, ptr %pX, align 8
  %iColumn133 = getelementptr inbounds nuw %struct.Expr, ptr %110, i32 0, i32 9
  %111 = load i16, ptr %iColumn133, align 8
  %conv134 = sext i16 %111 to i32
  %112 = load ptr, ptr %pScan.addr, align 8
  %aiColumn135 = getelementptr inbounds nuw %struct.WhereScan, ptr %112, i32 0, i32 10
  %arrayidx136 = getelementptr inbounds [11 x i16], ptr %aiColumn135, i64 0, i64 0
  %113 = load i16, ptr %arrayidx136, align 8
  %conv137 = sext i16 %113 to i32
  %cmp138 = icmp eq i32 %conv134, %conv137
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %land.lhs.true132
  br label %for.inc146

if.end141:                                        ; preds = %land.lhs.true132, %land.lhs.true126, %land.lhs.true119, %if.end113
  %114 = load ptr, ptr %pWC, align 8
  %115 = load ptr, ptr %pScan.addr, align 8
  %pWC142 = getelementptr inbounds nuw %struct.WhereScan, ptr %115, i32 0, i32 1
  store ptr %114, ptr %pWC142, align 8
  %116 = load i32, ptr %k, align 4
  %add = add nsw i32 %116, 1
  %117 = load ptr, ptr %pScan.addr, align 8
  %k143 = getelementptr inbounds nuw %struct.WhereScan, ptr %117, i32 0, i32 8
  store i32 %add, ptr %k143, align 8
  %118 = load ptr, ptr %pTerm, align 8
  store ptr %118, ptr %retval, align 8
  br label %return

if.end144:                                        ; preds = %if.end81
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %lor.lhs.false25, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc146

for.inc146:                                       ; preds = %if.end145, %if.then140, %if.then111, %if.then99
  %119 = load i32, ptr %k, align 4
  %inc147 = add nsw i32 %119, 1
  store i32 %inc147, ptr %k, align 4
  %120 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %120, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !8

for.end148:                                       ; preds = %for.cond
  %121 = load ptr, ptr %pWC, align 8
  %pOuter = getelementptr inbounds nuw %struct.WhereClause, ptr %121, i32 0, i32 1
  %122 = load ptr, ptr %pOuter, align 8
  store ptr %122, ptr %pWC, align 8
  store i32 0, ptr %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end148
  %123 = load ptr, ptr %pWC, align 8
  %cmp149 = icmp ne ptr %123, null
  br i1 %cmp149, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %124 = load ptr, ptr %pScan.addr, align 8
  %iEquiv151 = getelementptr inbounds nuw %struct.WhereScan, ptr %124, i32 0, i32 6
  %125 = load i8, ptr %iEquiv151, align 2
  %conv152 = zext i8 %125 to i32
  %126 = load ptr, ptr %pScan.addr, align 8
  %nEquiv153 = getelementptr inbounds nuw %struct.WhereScan, ptr %126, i32 0, i32 5
  %127 = load i8, ptr %nEquiv153, align 1
  %conv154 = zext i8 %127 to i32
  %cmp155 = icmp sge i32 %conv152, %conv154
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.end
  br label %while.end

if.end158:                                        ; preds = %do.end
  %128 = load ptr, ptr %pScan.addr, align 8
  %pOrigWC = getelementptr inbounds nuw %struct.WhereScan, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %pOrigWC, align 8
  store ptr %129, ptr %pWC, align 8
  store i32 0, ptr %k, align 4
  %130 = load ptr, ptr %pScan.addr, align 8
  %iEquiv159 = getelementptr inbounds nuw %struct.WhereScan, ptr %130, i32 0, i32 6
  %131 = load i8, ptr %iEquiv159, align 2
  %inc160 = add i8 %131, 1
  store i8 %inc160, ptr %iEquiv159, align 2
  br label %while.body

while.end:                                        ; preds = %if.then157
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.end141
  %132 = load ptr, ptr %retval, align 8
  ret ptr %132
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IndexAffinityOk(ptr noundef, i8 noundef signext) #0

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
