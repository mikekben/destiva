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
%struct.WhereOrInfo = type { %struct.WhereClause, i64 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.WhereAndInfo = type { %struct.WhereClause }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereClauseInit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereSplit(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereExprAnalyze(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @whereClauseInsert(ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden void @exprAnalyze(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereGetMask(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @allowedOp(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @markTermAsChild(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @transferJoinMarkings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @exprAnalyzeOrTerm(ptr noundef %pSrc, ptr noundef %pWC, i32 noundef %idxTerm) #1 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %idxTerm.addr = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pOrWc = alloca ptr, align 8
  %pOrTerm = alloca ptr, align 8
  %pOrInfo = alloca ptr, align 8
  %chngToIN = alloca i64, align 8
  %indexable = alloca i64, align 8
  %pAndInfo = alloca ptr, align 8
  %pAndWC = alloca ptr, align 8
  %pAndTerm = alloca ptr, align 8
  %j = alloca i32, align 4
  %b = alloca i64, align 8
  %b60 = alloca i64, align 8
  %pOther = alloca ptr, align 8
  %iOne = alloca i32, align 4
  %pOne = alloca ptr, align 8
  %iTwo = alloca i32, align 4
  %pTwo = alloca ptr, align 8
  %okToChngToIN = alloca i32, align 4
  %iColumn = alloca i32, align 4
  %iCursor = alloca i32, align 4
  %j122 = alloca i32, align 4
  %pLeft = alloca ptr, align 8
  %affLeft = alloca i32, align 4
  %affRight = alloca i32, align 4
  %pDup = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %pLeft225 = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %idxNew = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store i32 %idxTerm, ptr %idxTerm.addr, align 4
  %0 = load ptr, ptr %pWC.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereClause, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  %2 = load ptr, ptr %pWInfo, align 8
  %pParse2 = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse2, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %pParse, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db3, align 8
  store ptr %5, ptr %db, align 8
  %6 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %a, align 8
  %8 = load i32, ptr %idxTerm.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %pTerm, align 8
  %9 = load ptr, ptr %pTerm, align 8
  %pExpr4 = getelementptr inbounds nuw %struct.WhereTerm, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pExpr4, align 8
  store ptr %10, ptr %pExpr, align 8
  %11 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %11, i64 noundef 560)
  store ptr %call, ptr %pOrInfo, align 8
  %12 = load ptr, ptr %pTerm, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 10
  store ptr %call, ptr %u, align 8
  %13 = load ptr, ptr %pOrInfo, align 8
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end259

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %wtFlags, align 2
  %conv = zext i16 %15 to i32
  %or = or i32 %conv, 16
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, ptr %wtFlags, align 2
  %16 = load ptr, ptr %pOrInfo, align 8
  %wc = getelementptr inbounds nuw %struct.WhereOrInfo, ptr %16, i32 0, i32 0
  store ptr %wc, ptr %pOrWc, align 8
  %17 = load ptr, ptr %pOrWc, align 8
  %aStatic = getelementptr inbounds nuw %struct.WhereClause, ptr %17, i32 0, i32 7
  %arraydecay = getelementptr inbounds [8 x %struct.WhereTerm], ptr %aStatic, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 512, i1 false)
  %18 = load ptr, ptr %pOrWc, align 8
  %19 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereClauseInit(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %pOrWc, align 8
  %21 = load ptr, ptr %pExpr, align 8
  call void @sqlite3WhereSplit(ptr noundef %20, ptr noundef %21, i8 noundef zeroext 43)
  %22 = load ptr, ptr %pSrc.addr, align 8
  %23 = load ptr, ptr %pOrWc, align 8
  call void @sqlite3WhereExprAnalyze(ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 19
  %25 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %25, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %if.end259

if.end7:                                          ; preds = %if.end
  store i64 -1, ptr %indexable, align 8
  store i64 -1, ptr %chngToIN, align 8
  %26 = load ptr, ptr %pOrWc, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %nTerm, align 4
  %sub = sub nsw i32 %27, 1
  store i32 %sub, ptr %i, align 4
  %28 = load ptr, ptr %pOrWc, align 8
  %a8 = getelementptr inbounds nuw %struct.WhereClause, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %a8, align 8
  store ptr %29, ptr %pOrTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc89, %if.end7
  %30 = load i32, ptr %i, align 4
  %cmp9 = icmp sge i32 %30, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load i64, ptr %indexable, align 8
  %tobool11 = icmp ne i64 %31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %32 = phi i1 [ false, %for.cond ], [ %tobool11, %land.rhs ]
  br i1 %32, label %for.body, label %for.end91

for.body:                                         ; preds = %land.end
  %33 = load ptr, ptr %pOrTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %33, i32 0, i32 4
  %34 = load i16, ptr %eOperator, align 4
  %conv12 = zext i16 %34 to i32
  %and = and i32 %conv12, 511
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %for.body
  store i64 0, ptr %chngToIN, align 8
  %35 = load ptr, ptr %db, align 8
  %call16 = call ptr @sqlite3DbMallocRawNN(ptr noundef %35, i64 noundef 552)
  store ptr %call16, ptr %pAndInfo, align 8
  %36 = load ptr, ptr %pAndInfo, align 8
  %tobool17 = icmp ne ptr %36, null
  br i1 %tobool17, label %if.then18, label %if.end53

if.then18:                                        ; preds = %if.then15
  store i64 0, ptr %b, align 8
  %37 = load ptr, ptr %pAndInfo, align 8
  %38 = load ptr, ptr %pOrTerm, align 8
  %u19 = getelementptr inbounds nuw %struct.WhereTerm, ptr %38, i32 0, i32 10
  store ptr %37, ptr %u19, align 8
  %39 = load ptr, ptr %pOrTerm, align 8
  %wtFlags20 = getelementptr inbounds nuw %struct.WhereTerm, ptr %39, i32 0, i32 3
  %40 = load i16, ptr %wtFlags20, align 2
  %conv21 = zext i16 %40 to i32
  %or22 = or i32 %conv21, 32
  %conv23 = trunc i32 %or22 to i16
  store i16 %conv23, ptr %wtFlags20, align 2
  %41 = load ptr, ptr %pOrTerm, align 8
  %eOperator24 = getelementptr inbounds nuw %struct.WhereTerm, ptr %41, i32 0, i32 4
  store i16 1024, ptr %eOperator24, align 4
  %42 = load ptr, ptr %pAndInfo, align 8
  %wc25 = getelementptr inbounds nuw %struct.WhereAndInfo, ptr %42, i32 0, i32 0
  store ptr %wc25, ptr %pAndWC, align 8
  %43 = load ptr, ptr %pAndWC, align 8
  %aStatic26 = getelementptr inbounds nuw %struct.WhereClause, ptr %43, i32 0, i32 7
  %arraydecay27 = getelementptr inbounds [8 x %struct.WhereTerm], ptr %aStatic26, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay27, i8 0, i64 512, i1 false)
  %44 = load ptr, ptr %pAndWC, align 8
  %45 = load ptr, ptr %pWC.addr, align 8
  %pWInfo28 = getelementptr inbounds nuw %struct.WhereClause, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pWInfo28, align 8
  call void @sqlite3WhereClauseInit(ptr noundef %44, ptr noundef %46)
  %47 = load ptr, ptr %pAndWC, align 8
  %48 = load ptr, ptr %pOrTerm, align 8
  %pExpr29 = getelementptr inbounds nuw %struct.WhereTerm, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %pExpr29, align 8
  call void @sqlite3WhereSplit(ptr noundef %47, ptr noundef %49, i8 noundef zeroext 44)
  %50 = load ptr, ptr %pSrc.addr, align 8
  %51 = load ptr, ptr %pAndWC, align 8
  call void @sqlite3WhereExprAnalyze(ptr noundef %50, ptr noundef %51)
  %52 = load ptr, ptr %pWC.addr, align 8
  %53 = load ptr, ptr %pAndWC, align 8
  %pOuter = getelementptr inbounds nuw %struct.WhereClause, ptr %53, i32 0, i32 1
  store ptr %52, ptr %pOuter, align 8
  %54 = load ptr, ptr %db, align 8
  %mallocFailed30 = getelementptr inbounds nuw %struct.sqlite3, ptr %54, i32 0, i32 19
  %55 = load i8, ptr %mallocFailed30, align 1
  %tobool31 = icmp ne i8 %55, 0
  br i1 %tobool31, label %if.end51, label %if.then32

if.then32:                                        ; preds = %if.then18
  store i32 0, ptr %j, align 4
  %56 = load ptr, ptr %pAndWC, align 8
  %a33 = getelementptr inbounds nuw %struct.WhereClause, ptr %56, i32 0, i32 6
  %57 = load ptr, ptr %a33, align 8
  store ptr %57, ptr %pAndTerm, align 8
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %if.then32
  %58 = load i32, ptr %j, align 4
  %59 = load ptr, ptr %pAndWC, align 8
  %nTerm35 = getelementptr inbounds nuw %struct.WhereClause, ptr %59, i32 0, i32 4
  %60 = load i32, ptr %nTerm35, align 4
  %cmp36 = icmp slt i32 %58, %60
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond34
  %61 = load ptr, ptr %pAndTerm, align 8
  %pExpr39 = getelementptr inbounds nuw %struct.WhereTerm, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pExpr39, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 0
  %63 = load i8, ptr %op, align 8
  %conv40 = zext i8 %63 to i32
  %call41 = call i32 @allowedOp(i32 noundef %conv40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body38
  %64 = load ptr, ptr %pAndTerm, align 8
  %eOperator43 = getelementptr inbounds nuw %struct.WhereTerm, ptr %64, i32 0, i32 4
  %65 = load i16, ptr %eOperator43, align 4
  %conv44 = zext i16 %65 to i32
  %cmp45 = icmp eq i32 %conv44, 64
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %lor.lhs.false, %for.body38
  %66 = load ptr, ptr %pWInfo, align 8
  %sMaskSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %66, i32 0, i32 23
  %67 = load ptr, ptr %pAndTerm, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %67, i32 0, i32 8
  %68 = load i32, ptr %leftCursor, align 4
  %call48 = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet, i32 noundef %68)
  %69 = load i64, ptr %b, align 8
  %or49 = or i64 %69, %call48
  store i64 %or49, ptr %b, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %70 = load i32, ptr %j, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %j, align 4
  %71 = load ptr, ptr %pAndTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %71, i32 1
  store ptr %incdec.ptr, ptr %pAndTerm, align 8
  br label %for.cond34, !llvm.loop !6

for.end:                                          ; preds = %for.cond34
  br label %if.end51

if.end51:                                         ; preds = %for.end, %if.then18
  %72 = load i64, ptr %b, align 8
  %73 = load i64, ptr %indexable, align 8
  %and52 = and i64 %73, %72
  store i64 %and52, ptr %indexable, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.then15
  br label %if.end88

if.else:                                          ; preds = %for.body
  %74 = load ptr, ptr %pOrTerm, align 8
  %wtFlags54 = getelementptr inbounds nuw %struct.WhereTerm, ptr %74, i32 0, i32 3
  %75 = load i16, ptr %wtFlags54, align 2
  %conv55 = zext i16 %75 to i32
  %and56 = and i32 %conv55, 8
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else
  br label %if.end87

if.else59:                                        ; preds = %if.else
  %76 = load ptr, ptr %pWInfo, align 8
  %sMaskSet61 = getelementptr inbounds nuw %struct.WhereInfo, ptr %76, i32 0, i32 23
  %77 = load ptr, ptr %pOrTerm, align 8
  %leftCursor62 = getelementptr inbounds nuw %struct.WhereTerm, ptr %77, i32 0, i32 8
  %78 = load i32, ptr %leftCursor62, align 4
  %call63 = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet61, i32 noundef %78)
  store i64 %call63, ptr %b60, align 8
  %79 = load ptr, ptr %pOrTerm, align 8
  %wtFlags64 = getelementptr inbounds nuw %struct.WhereTerm, ptr %79, i32 0, i32 3
  %80 = load i16, ptr %wtFlags64, align 2
  %conv65 = zext i16 %80 to i32
  %and66 = and i32 %conv65, 2
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.end76

if.then68:                                        ; preds = %if.else59
  %81 = load ptr, ptr %pOrWc, align 8
  %a69 = getelementptr inbounds nuw %struct.WhereClause, ptr %81, i32 0, i32 6
  %82 = load ptr, ptr %a69, align 8
  %83 = load ptr, ptr %pOrTerm, align 8
  %iParent = getelementptr inbounds nuw %struct.WhereTerm, ptr %83, i32 0, i32 7
  %84 = load i32, ptr %iParent, align 8
  %idxprom70 = sext i32 %84 to i64
  %arrayidx71 = getelementptr inbounds %struct.WhereTerm, ptr %82, i64 %idxprom70
  store ptr %arrayidx71, ptr %pOther, align 8
  %85 = load ptr, ptr %pWInfo, align 8
  %sMaskSet72 = getelementptr inbounds nuw %struct.WhereInfo, ptr %85, i32 0, i32 23
  %86 = load ptr, ptr %pOther, align 8
  %leftCursor73 = getelementptr inbounds nuw %struct.WhereTerm, ptr %86, i32 0, i32 8
  %87 = load i32, ptr %leftCursor73, align 4
  %call74 = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet72, i32 noundef %87)
  %88 = load i64, ptr %b60, align 8
  %or75 = or i64 %88, %call74
  store i64 %or75, ptr %b60, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then68, %if.else59
  %89 = load i64, ptr %b60, align 8
  %90 = load i64, ptr %indexable, align 8
  %and77 = and i64 %90, %89
  store i64 %and77, ptr %indexable, align 8
  %91 = load ptr, ptr %pOrTerm, align 8
  %eOperator78 = getelementptr inbounds nuw %struct.WhereTerm, ptr %91, i32 0, i32 4
  %92 = load i16, ptr %eOperator78, align 4
  %conv79 = zext i16 %92 to i32
  %and80 = and i32 %conv79, 2
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.end76
  store i64 0, ptr %chngToIN, align 8
  br label %if.end86

if.else84:                                        ; preds = %if.end76
  %93 = load i64, ptr %b60, align 8
  %94 = load i64, ptr %chngToIN, align 8
  %and85 = and i64 %94, %93
  store i64 %and85, ptr %chngToIN, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then83
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then58
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end53
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88
  %95 = load i32, ptr %i, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, ptr %i, align 4
  %96 = load ptr, ptr %pOrTerm, align 8
  %incdec.ptr90 = getelementptr inbounds nuw %struct.WhereTerm, ptr %96, i32 1
  store ptr %incdec.ptr90, ptr %pOrTerm, align 8
  br label %for.cond, !llvm.loop !8

for.end91:                                        ; preds = %land.end
  %97 = load i64, ptr %indexable, align 8
  %98 = load ptr, ptr %pOrInfo, align 8
  %indexable92 = getelementptr inbounds nuw %struct.WhereOrInfo, ptr %98, i32 0, i32 1
  store i64 %97, ptr %indexable92, align 8
  %99 = load i64, ptr %indexable, align 8
  %tobool93 = icmp ne i64 %99, 0
  br i1 %tobool93, label %if.then94, label %if.else96

if.then94:                                        ; preds = %for.end91
  %100 = load ptr, ptr %pTerm, align 8
  %eOperator95 = getelementptr inbounds nuw %struct.WhereTerm, ptr %100, i32 0, i32 4
  store i16 512, ptr %eOperator95, align 4
  %101 = load ptr, ptr %pWC.addr, align 8
  %hasOr = getelementptr inbounds nuw %struct.WhereClause, ptr %101, i32 0, i32 3
  store i8 1, ptr %hasOr, align 1
  br label %if.end98

if.else96:                                        ; preds = %for.end91
  %102 = load ptr, ptr %pTerm, align 8
  %eOperator97 = getelementptr inbounds nuw %struct.WhereTerm, ptr %102, i32 0, i32 4
  store i16 512, ptr %eOperator97, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then94
  %103 = load i64, ptr %indexable, align 8
  %tobool99 = icmp ne i64 %103, 0
  br i1 %tobool99, label %land.lhs.true, label %if.end119

land.lhs.true:                                    ; preds = %if.end98
  %104 = load ptr, ptr %pOrWc, align 8
  %nTerm100 = getelementptr inbounds nuw %struct.WhereClause, ptr %104, i32 0, i32 4
  %105 = load i32, ptr %nTerm100, align 4
  %cmp101 = icmp eq i32 %105, 2
  br i1 %cmp101, label %if.then103, label %if.end119

if.then103:                                       ; preds = %land.lhs.true
  store i32 0, ptr %iOne, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then103
  %106 = load ptr, ptr %pOrWc, align 8
  %a104 = getelementptr inbounds nuw %struct.WhereClause, ptr %106, i32 0, i32 6
  %107 = load ptr, ptr %a104, align 8
  %arrayidx105 = getelementptr inbounds %struct.WhereTerm, ptr %107, i64 0
  %108 = load i32, ptr %iOne, align 4
  %inc106 = add nsw i32 %108, 1
  store i32 %inc106, ptr %iOne, align 4
  %call107 = call ptr @whereNthSubterm(ptr noundef %arrayidx105, i32 noundef %108)
  store ptr %call107, ptr %pOne, align 8
  %cmp108 = icmp ne ptr %call107, null
  br i1 %cmp108, label %while.body, label %while.end118

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %iTwo, align 4
  br label %while.cond110

while.cond110:                                    ; preds = %while.body117, %while.body
  %109 = load ptr, ptr %pOrWc, align 8
  %a111 = getelementptr inbounds nuw %struct.WhereClause, ptr %109, i32 0, i32 6
  %110 = load ptr, ptr %a111, align 8
  %arrayidx112 = getelementptr inbounds %struct.WhereTerm, ptr %110, i64 1
  %111 = load i32, ptr %iTwo, align 4
  %inc113 = add nsw i32 %111, 1
  store i32 %inc113, ptr %iTwo, align 4
  %call114 = call ptr @whereNthSubterm(ptr noundef %arrayidx112, i32 noundef %111)
  store ptr %call114, ptr %pTwo, align 8
  %cmp115 = icmp ne ptr %call114, null
  br i1 %cmp115, label %while.body117, label %while.end

while.body117:                                    ; preds = %while.cond110
  %112 = load ptr, ptr %pSrc.addr, align 8
  %113 = load ptr, ptr %pWC.addr, align 8
  %114 = load ptr, ptr %pOne, align 8
  %115 = load ptr, ptr %pTwo, align 8
  call void @whereCombineDisjuncts(ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115)
  br label %while.cond110, !llvm.loop !9

while.end:                                        ; preds = %while.cond110
  br label %while.cond, !llvm.loop !10

while.end118:                                     ; preds = %while.cond
  br label %if.end119

if.end119:                                        ; preds = %while.end118, %land.lhs.true, %if.end98
  %116 = load i64, ptr %chngToIN, align 8
  %tobool120 = icmp ne i64 %116, 0
  br i1 %tobool120, label %if.then121, label %if.end259

if.then121:                                       ; preds = %if.end119
  store i32 0, ptr %okToChngToIN, align 4
  store i32 -1, ptr %iColumn, align 4
  store i32 -1, ptr %iCursor, align 4
  store i32 0, ptr %j122, align 4
  store i32 0, ptr %j122, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc220, %if.then121
  %117 = load i32, ptr %j122, align 4
  %cmp124 = icmp slt i32 %117, 2
  br i1 %cmp124, label %land.rhs126, label %land.end128

land.rhs126:                                      ; preds = %for.cond123
  %118 = load i32, ptr %okToChngToIN, align 4
  %tobool127 = icmp ne i32 %118, 0
  %lnot = xor i1 %tobool127, true
  br label %land.end128

land.end128:                                      ; preds = %land.rhs126, %for.cond123
  %119 = phi i1 [ false, %for.cond123 ], [ %lnot, %land.rhs126 ]
  br i1 %119, label %for.body129, label %for.end222

for.body129:                                      ; preds = %land.end128
  store ptr null, ptr %pLeft, align 8
  %120 = load ptr, ptr %pOrWc, align 8
  %a130 = getelementptr inbounds nuw %struct.WhereClause, ptr %120, i32 0, i32 6
  %121 = load ptr, ptr %a130, align 8
  store ptr %121, ptr %pOrTerm, align 8
  %122 = load ptr, ptr %pOrWc, align 8
  %nTerm131 = getelementptr inbounds nuw %struct.WhereClause, ptr %122, i32 0, i32 4
  %123 = load i32, ptr %nTerm131, align 4
  %sub132 = sub nsw i32 %123, 1
  store i32 %sub132, ptr %i, align 4
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc158, %for.body129
  %124 = load i32, ptr %i, align 4
  %cmp134 = icmp sge i32 %124, 0
  br i1 %cmp134, label %for.body136, label %for.end161

for.body136:                                      ; preds = %for.cond133
  %125 = load ptr, ptr %pOrTerm, align 8
  %wtFlags137 = getelementptr inbounds nuw %struct.WhereTerm, ptr %125, i32 0, i32 3
  %126 = load i16, ptr %wtFlags137, align 2
  %conv138 = zext i16 %126 to i32
  %and139 = and i32 %conv138, -65
  %conv140 = trunc i32 %and139 to i16
  store i16 %conv140, ptr %wtFlags137, align 2
  %127 = load ptr, ptr %pOrTerm, align 8
  %leftCursor141 = getelementptr inbounds nuw %struct.WhereTerm, ptr %127, i32 0, i32 8
  %128 = load i32, ptr %leftCursor141, align 4
  %129 = load i32, ptr %iCursor, align 4
  %cmp142 = icmp eq i32 %128, %129
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %for.body136
  br label %for.inc158

if.end145:                                        ; preds = %for.body136
  %130 = load i64, ptr %chngToIN, align 8
  %131 = load ptr, ptr %pWInfo, align 8
  %sMaskSet146 = getelementptr inbounds nuw %struct.WhereInfo, ptr %131, i32 0, i32 23
  %132 = load ptr, ptr %pOrTerm, align 8
  %leftCursor147 = getelementptr inbounds nuw %struct.WhereTerm, ptr %132, i32 0, i32 8
  %133 = load i32, ptr %leftCursor147, align 4
  %call148 = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet146, i32 noundef %133)
  %and149 = and i64 %130, %call148
  %cmp150 = icmp eq i64 %and149, 0
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end145
  br label %for.inc158

if.end153:                                        ; preds = %if.end145
  %134 = load ptr, ptr %pOrTerm, align 8
  %u154 = getelementptr inbounds nuw %struct.WhereTerm, ptr %134, i32 0, i32 10
  %135 = load i32, ptr %u154, align 8
  store i32 %135, ptr %iColumn, align 4
  %136 = load ptr, ptr %pOrTerm, align 8
  %leftCursor155 = getelementptr inbounds nuw %struct.WhereTerm, ptr %136, i32 0, i32 8
  %137 = load i32, ptr %leftCursor155, align 4
  store i32 %137, ptr %iCursor, align 4
  %138 = load ptr, ptr %pOrTerm, align 8
  %pExpr156 = getelementptr inbounds nuw %struct.WhereTerm, ptr %138, i32 0, i32 0
  %139 = load ptr, ptr %pExpr156, align 8
  %pLeft157 = getelementptr inbounds nuw %struct.Expr, ptr %139, i32 0, i32 4
  %140 = load ptr, ptr %pLeft157, align 8
  store ptr %140, ptr %pLeft, align 8
  br label %for.end161

for.inc158:                                       ; preds = %if.then152, %if.then144
  %141 = load i32, ptr %i, align 4
  %dec159 = add nsw i32 %141, -1
  store i32 %dec159, ptr %i, align 4
  %142 = load ptr, ptr %pOrTerm, align 8
  %incdec.ptr160 = getelementptr inbounds nuw %struct.WhereTerm, ptr %142, i32 1
  store ptr %incdec.ptr160, ptr %pOrTerm, align 8
  br label %for.cond133, !llvm.loop !11

for.end161:                                       ; preds = %if.end153, %for.cond133
  %143 = load i32, ptr %i, align 4
  %cmp162 = icmp slt i32 %143, 0
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %for.end161
  br label %for.end222

if.end165:                                        ; preds = %for.end161
  store i32 1, ptr %okToChngToIN, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc216, %if.end165
  %144 = load i32, ptr %i, align 4
  %cmp167 = icmp sge i32 %144, 0
  br i1 %cmp167, label %land.rhs169, label %land.end171

land.rhs169:                                      ; preds = %for.cond166
  %145 = load i32, ptr %okToChngToIN, align 4
  %tobool170 = icmp ne i32 %145, 0
  br label %land.end171

land.end171:                                      ; preds = %land.rhs169, %for.cond166
  %146 = phi i1 [ false, %for.cond166 ], [ %tobool170, %land.rhs169 ]
  br i1 %146, label %for.body172, label %for.end219

for.body172:                                      ; preds = %land.end171
  %147 = load ptr, ptr %pOrTerm, align 8
  %leftCursor173 = getelementptr inbounds nuw %struct.WhereTerm, ptr %147, i32 0, i32 8
  %148 = load i32, ptr %leftCursor173, align 4
  %149 = load i32, ptr %iCursor, align 4
  %cmp174 = icmp ne i32 %148, %149
  br i1 %cmp174, label %if.then176, label %if.else181

if.then176:                                       ; preds = %for.body172
  %150 = load ptr, ptr %pOrTerm, align 8
  %wtFlags177 = getelementptr inbounds nuw %struct.WhereTerm, ptr %150, i32 0, i32 3
  %151 = load i16, ptr %wtFlags177, align 2
  %conv178 = zext i16 %151 to i32
  %and179 = and i32 %conv178, -65
  %conv180 = trunc i32 %and179 to i16
  store i16 %conv180, ptr %wtFlags177, align 2
  br label %if.end215

if.else181:                                       ; preds = %for.body172
  %152 = load ptr, ptr %pOrTerm, align 8
  %u182 = getelementptr inbounds nuw %struct.WhereTerm, ptr %152, i32 0, i32 10
  %153 = load i32, ptr %u182, align 8
  %154 = load i32, ptr %iColumn, align 4
  %cmp183 = icmp ne i32 %153, %154
  br i1 %cmp183, label %if.then193, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %if.else181
  %155 = load i32, ptr %iColumn, align 4
  %cmp186 = icmp eq i32 %155, -2
  br i1 %cmp186, label %land.lhs.true188, label %if.else194

land.lhs.true188:                                 ; preds = %lor.lhs.false185
  %156 = load ptr, ptr %pParse, align 8
  %157 = load ptr, ptr %pOrTerm, align 8
  %pExpr189 = getelementptr inbounds nuw %struct.WhereTerm, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %pExpr189, align 8
  %pLeft190 = getelementptr inbounds nuw %struct.Expr, ptr %158, i32 0, i32 4
  %159 = load ptr, ptr %pLeft190, align 8
  %160 = load ptr, ptr %pLeft, align 8
  %call191 = call i32 @sqlite3ExprCompare(ptr noundef %156, ptr noundef %159, ptr noundef %160, i32 noundef -1)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then193, label %if.else194

if.then193:                                       ; preds = %land.lhs.true188, %if.else181
  store i32 0, ptr %okToChngToIN, align 4
  br label %if.end214

if.else194:                                       ; preds = %land.lhs.true188, %lor.lhs.false185
  %161 = load ptr, ptr %pOrTerm, align 8
  %pExpr195 = getelementptr inbounds nuw %struct.WhereTerm, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %pExpr195, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %162, i32 0, i32 5
  %163 = load ptr, ptr %pRight, align 8
  %call196 = call signext i8 @sqlite3ExprAffinity(ptr noundef %163)
  %conv197 = sext i8 %call196 to i32
  store i32 %conv197, ptr %affRight, align 4
  %164 = load ptr, ptr %pOrTerm, align 8
  %pExpr198 = getelementptr inbounds nuw %struct.WhereTerm, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %pExpr198, align 8
  %pLeft199 = getelementptr inbounds nuw %struct.Expr, ptr %165, i32 0, i32 4
  %166 = load ptr, ptr %pLeft199, align 8
  %call200 = call signext i8 @sqlite3ExprAffinity(ptr noundef %166)
  %conv201 = sext i8 %call200 to i32
  store i32 %conv201, ptr %affLeft, align 4
  %167 = load i32, ptr %affRight, align 4
  %cmp202 = icmp ne i32 %167, 0
  br i1 %cmp202, label %land.lhs.true204, label %if.else208

land.lhs.true204:                                 ; preds = %if.else194
  %168 = load i32, ptr %affRight, align 4
  %169 = load i32, ptr %affLeft, align 4
  %cmp205 = icmp ne i32 %168, %169
  br i1 %cmp205, label %if.then207, label %if.else208

if.then207:                                       ; preds = %land.lhs.true204
  store i32 0, ptr %okToChngToIN, align 4
  br label %if.end213

if.else208:                                       ; preds = %land.lhs.true204, %if.else194
  %170 = load ptr, ptr %pOrTerm, align 8
  %wtFlags209 = getelementptr inbounds nuw %struct.WhereTerm, ptr %170, i32 0, i32 3
  %171 = load i16, ptr %wtFlags209, align 2
  %conv210 = zext i16 %171 to i32
  %or211 = or i32 %conv210, 64
  %conv212 = trunc i32 %or211 to i16
  store i16 %conv212, ptr %wtFlags209, align 2
  br label %if.end213

if.end213:                                        ; preds = %if.else208, %if.then207
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then193
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then176
  br label %for.inc216

for.inc216:                                       ; preds = %if.end215
  %172 = load i32, ptr %i, align 4
  %dec217 = add nsw i32 %172, -1
  store i32 %dec217, ptr %i, align 4
  %173 = load ptr, ptr %pOrTerm, align 8
  %incdec.ptr218 = getelementptr inbounds nuw %struct.WhereTerm, ptr %173, i32 1
  store ptr %incdec.ptr218, ptr %pOrTerm, align 8
  br label %for.cond166, !llvm.loop !12

for.end219:                                       ; preds = %land.end171
  br label %for.inc220

for.inc220:                                       ; preds = %for.end219
  %174 = load i32, ptr %j122, align 4
  %inc221 = add nsw i32 %174, 1
  store i32 %inc221, ptr %j122, align 4
  br label %for.cond123, !llvm.loop !13

for.end222:                                       ; preds = %if.then164, %land.end128
  %175 = load i32, ptr %okToChngToIN, align 4
  %tobool223 = icmp ne i32 %175, 0
  br i1 %tobool223, label %if.then224, label %if.end258

if.then224:                                       ; preds = %for.end222
  store ptr null, ptr %pList, align 8
  store ptr null, ptr %pLeft225, align 8
  %176 = load ptr, ptr %pOrWc, align 8
  %nTerm226 = getelementptr inbounds nuw %struct.WhereClause, ptr %176, i32 0, i32 4
  %177 = load i32, ptr %nTerm226, align 4
  %sub227 = sub nsw i32 %177, 1
  store i32 %sub227, ptr %i, align 4
  %178 = load ptr, ptr %pOrWc, align 8
  %a228 = getelementptr inbounds nuw %struct.WhereClause, ptr %178, i32 0, i32 6
  %179 = load ptr, ptr %a228, align 8
  store ptr %179, ptr %pOrTerm, align 8
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc247, %if.then224
  %180 = load i32, ptr %i, align 4
  %cmp230 = icmp sge i32 %180, 0
  br i1 %cmp230, label %for.body232, label %for.end250

for.body232:                                      ; preds = %for.cond229
  %181 = load ptr, ptr %pOrTerm, align 8
  %wtFlags233 = getelementptr inbounds nuw %struct.WhereTerm, ptr %181, i32 0, i32 3
  %182 = load i16, ptr %wtFlags233, align 2
  %conv234 = zext i16 %182 to i32
  %and235 = and i32 %conv234, 64
  %cmp236 = icmp eq i32 %and235, 0
  br i1 %cmp236, label %if.then238, label %if.end239

if.then238:                                       ; preds = %for.body232
  br label %for.inc247

if.end239:                                        ; preds = %for.body232
  %183 = load ptr, ptr %db, align 8
  %184 = load ptr, ptr %pOrTerm, align 8
  %pExpr240 = getelementptr inbounds nuw %struct.WhereTerm, ptr %184, i32 0, i32 0
  %185 = load ptr, ptr %pExpr240, align 8
  %pRight241 = getelementptr inbounds nuw %struct.Expr, ptr %185, i32 0, i32 5
  %186 = load ptr, ptr %pRight241, align 8
  %call242 = call ptr @sqlite3ExprDup(ptr noundef %183, ptr noundef %186, i32 noundef 0)
  store ptr %call242, ptr %pDup, align 8
  %187 = load ptr, ptr %pWInfo, align 8
  %pParse243 = getelementptr inbounds nuw %struct.WhereInfo, ptr %187, i32 0, i32 0
  %188 = load ptr, ptr %pParse243, align 8
  %189 = load ptr, ptr %pList, align 8
  %190 = load ptr, ptr %pDup, align 8
  %call244 = call ptr @sqlite3ExprListAppend(ptr noundef %188, ptr noundef %189, ptr noundef %190)
  store ptr %call244, ptr %pList, align 8
  %191 = load ptr, ptr %pOrTerm, align 8
  %pExpr245 = getelementptr inbounds nuw %struct.WhereTerm, ptr %191, i32 0, i32 0
  %192 = load ptr, ptr %pExpr245, align 8
  %pLeft246 = getelementptr inbounds nuw %struct.Expr, ptr %192, i32 0, i32 4
  %193 = load ptr, ptr %pLeft246, align 8
  store ptr %193, ptr %pLeft225, align 8
  br label %for.inc247

for.inc247:                                       ; preds = %if.end239, %if.then238
  %194 = load i32, ptr %i, align 4
  %dec248 = add nsw i32 %194, -1
  store i32 %dec248, ptr %i, align 4
  %195 = load ptr, ptr %pOrTerm, align 8
  %incdec.ptr249 = getelementptr inbounds nuw %struct.WhereTerm, ptr %195, i32 1
  store ptr %incdec.ptr249, ptr %pOrTerm, align 8
  br label %for.cond229, !llvm.loop !14

for.end250:                                       ; preds = %for.cond229
  %196 = load ptr, ptr %db, align 8
  %197 = load ptr, ptr %pLeft225, align 8
  %call251 = call ptr @sqlite3ExprDup(ptr noundef %196, ptr noundef %197, i32 noundef 0)
  store ptr %call251, ptr %pDup, align 8
  %198 = load ptr, ptr %pParse, align 8
  %199 = load ptr, ptr %pDup, align 8
  %call252 = call ptr @sqlite3PExpr(ptr noundef %198, i32 noundef 49, ptr noundef %199, ptr noundef null)
  store ptr %call252, ptr %pNew, align 8
  %200 = load ptr, ptr %pNew, align 8
  %tobool253 = icmp ne ptr %200, null
  br i1 %tobool253, label %if.then254, label %if.else256

if.then254:                                       ; preds = %for.end250
  %201 = load ptr, ptr %pNew, align 8
  %202 = load ptr, ptr %pExpr, align 8
  call void @transferJoinMarkings(ptr noundef %201, ptr noundef %202)
  %203 = load ptr, ptr %pList, align 8
  %204 = load ptr, ptr %pNew, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %204, i32 0, i32 6
  store ptr %203, ptr %x, align 8
  %205 = load ptr, ptr %pWC.addr, align 8
  %206 = load ptr, ptr %pNew, align 8
  %call255 = call i32 @whereClauseInsert(ptr noundef %205, ptr noundef %206, i16 noundef zeroext 3)
  store i32 %call255, ptr %idxNew, align 4
  %207 = load ptr, ptr %pSrc.addr, align 8
  %208 = load ptr, ptr %pWC.addr, align 8
  %209 = load i32, ptr %idxNew, align 4
  call void @exprAnalyze(ptr noundef %207, ptr noundef %208, i32 noundef %209)
  %210 = load ptr, ptr %pWC.addr, align 8
  %211 = load i32, ptr %idxNew, align 4
  %212 = load i32, ptr %idxTerm.addr, align 4
  call void @markTermAsChild(ptr noundef %210, i32 noundef %211, i32 noundef %212)
  br label %if.end257

if.else256:                                       ; preds = %for.end250
  %213 = load ptr, ptr %db, align 8
  %214 = load ptr, ptr %pList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %213, ptr noundef %214)
  br label %if.end257

if.end257:                                        ; preds = %if.else256, %if.then254
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %for.end222
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.end119, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @whereNthSubterm(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @whereCombineDisjuncts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
