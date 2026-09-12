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

@.str.575 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTemp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprCodeIN(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %destIfFalse, i32 noundef %destIfNull) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %destIfFalse.addr = alloca i32, align 4
  %destIfNull.addr = alloca i32, align 4
  %rRhsHasNull = alloca i32, align 4
  %eType = alloca i32, align 4
  %rLhs = alloca i32, align 4
  %rLhsOrig = alloca i32, align 4
  %v = alloca ptr, align 8
  %aiMap = alloca ptr, align 8
  %zAff = alloca ptr, align 8
  %nVector = alloca i32, align 4
  %iDummy = alloca i32, align 4
  %pLeft = alloca ptr, align 8
  %i = alloca i32, align 4
  %destStep2 = alloca i32, align 4
  %destStep6 = alloca i32, align 4
  %addrTruthOp = alloca i32, align 4
  %destNotNull = alloca i32, align 4
  %addrTop = alloca i32, align 4
  %iTab = alloca i32, align 4
  %pList = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %labelOk = alloca i32, align 4
  %r2 = alloca i32, align 4
  %regToFree = alloca i32, align 4
  %regCkNull = alloca i32, align 4
  %ii = alloca i32, align 4
  %bLhsReal = alloca i32, align 4
  %p = alloca ptr, align 8
  %p164 = alloca ptr, align 8
  %pColl165 = alloca ptr, align 8
  %r3 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %destIfFalse, ptr %destIfFalse.addr, align 4
  store i32 %destIfNull, ptr %destIfNull.addr, align 4
  store i32 0, ptr %rRhsHasNull, align 4
  store ptr null, ptr %aiMap, align 8
  store ptr null, ptr %zAff, align 8
  store i32 0, ptr %destStep6, align 4
  store i32 0, ptr %iTab, align 4
  %0 = load ptr, ptr %pExpr.addr, align 8
  %pLeft1 = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pLeft1, align 8
  store ptr %1, ptr %pLeft, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ExprCheckIN(ptr noundef %2, ptr noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pExpr.addr, align 8
  %call2 = call ptr @exprINAffinity(ptr noundef %4, ptr noundef %5)
  store ptr %call2, ptr %zAff, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %pLeft3 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pLeft3, align 8
  %call4 = call i32 @sqlite3ExprVectorSize(ptr noundef %7)
  store i32 %call4, ptr %nVector, align 4
  %8 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %10 = load i32, ptr %nVector, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 5
  %add = add i64 %mul, 1
  %call5 = call ptr @sqlite3DbMallocZero(ptr noundef %9, i64 noundef %add)
  store ptr %call5, ptr %aiMap, align 8
  %11 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db6, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 19
  %13 = load i8, ptr %mallocFailed, align 1
  %tobool7 = icmp ne i8 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %sqlite3ExprCodeIN_oom_error

if.end9:                                          ; preds = %if.end
  %14 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pVdbe, align 8
  store ptr %15, ptr %v, align 8
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pExpr.addr, align 8
  %18 = load i32, ptr %destIfFalse.addr, align 4
  %19 = load i32, ptr %destIfNull.addr, align 4
  %cmp = icmp eq i32 %18, %19
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end9
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %rRhsHasNull, %cond.false ]
  %20 = load ptr, ptr %aiMap, align 8
  %call11 = call i32 @sqlite3FindInIndex(ptr noundef %16, ptr noundef %17, i32 noundef 3, ptr noundef %cond, ptr noundef %20, ptr noundef %iTab)
  store i32 %call11, ptr %eType, align 4
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pLeft, align 8
  %call12 = call i32 @exprCodeVector(ptr noundef %21, ptr noundef %22, ptr noundef %iDummy)
  store i32 %call12, ptr %rLhsOrig, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %nVector, align 4
  %cmp13 = icmp slt i32 %23, %24
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %25 = load ptr, ptr %aiMap, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 %idxprom
  %27 = load i32, ptr %arrayidx, align 4
  %28 = load i32, ptr %i, align 4
  %cmp15 = icmp eq i32 %27, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %nVector, align 4
  %cmp17 = icmp eq i32 %31, %32
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.end
  %33 = load i32, ptr %rLhsOrig, align 4
  store i32 %33, ptr %rLhs, align 4
  br label %if.end33

if.else:                                          ; preds = %for.end
  %34 = load ptr, ptr %pParse.addr, align 8
  %35 = load i32, ptr %nVector, align 4
  %call20 = call i32 @sqlite3GetTempRange(ptr noundef %34, i32 noundef %35)
  store i32 %call20, ptr %rLhs, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %if.else
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %nVector, align 4
  %cmp22 = icmp slt i32 %36, %37
  br i1 %cmp22, label %for.body24, label %for.end32

for.body24:                                       ; preds = %for.cond21
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %rLhsOrig, align 4
  %40 = load i32, ptr %i, align 4
  %add25 = add nsw i32 %39, %40
  %41 = load i32, ptr %rLhs, align 4
  %42 = load ptr, ptr %aiMap, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %43 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %42, i64 %idxprom26
  %44 = load i32, ptr %arrayidx27, align 4
  %add28 = add nsw i32 %41, %44
  %call29 = call i32 @sqlite3VdbeAddOp3(ptr noundef %38, i32 noundef 78, i32 noundef %add25, i32 noundef %add28, i32 noundef 0)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body24
  %45 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %45, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond21, !llvm.loop !8

for.end32:                                        ; preds = %for.cond21
  br label %if.end33

if.end33:                                         ; preds = %for.end32, %if.then19
  %46 = load i32, ptr %eType, align 4
  %cmp34 = icmp eq i32 %46, 5
  br i1 %cmp34, label %if.then36, label %if.end102

if.then36:                                        ; preds = %if.end33
  %47 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %47, i32 0, i32 6
  %48 = load ptr, ptr %x, align 8
  store ptr %48, ptr %pList, align 8
  %49 = load ptr, ptr %pParse.addr, align 8
  %50 = load ptr, ptr %pExpr.addr, align 8
  %pLeft37 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %pLeft37, align 8
  %call38 = call ptr @sqlite3ExprCollSeq(ptr noundef %49, ptr noundef %51)
  store ptr %call38, ptr %pColl, align 8
  %52 = load ptr, ptr %pParse.addr, align 8
  %call39 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %52)
  store i32 %call39, ptr %labelOk, align 4
  store i32 0, ptr %regCkNull, align 4
  %53 = load i32, ptr %destIfNull.addr, align 4
  %54 = load i32, ptr %destIfFalse.addr, align 4
  %cmp40 = icmp ne i32 %53, %54
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then36
  %55 = load ptr, ptr %pParse.addr, align 8
  %call43 = call i32 @sqlite3GetTempReg(ptr noundef %55)
  store i32 %call43, ptr %regCkNull, align 4
  %56 = load ptr, ptr %v, align 8
  %57 = load i32, ptr %rLhs, align 4
  %58 = load i32, ptr %rLhs, align 4
  %59 = load i32, ptr %regCkNull, align 4
  %call44 = call i32 @sqlite3VdbeAddOp3(ptr noundef %56, i32 noundef 99, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then36
  %60 = load ptr, ptr %pExpr.addr, align 8
  %pLeft46 = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %pLeft46, align 8
  %call47 = call signext i8 @sqlite3ExprAffinity(ptr noundef %61)
  %conv48 = sext i8 %call47 to i32
  %cmp49 = icmp eq i32 %conv48, 69
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, ptr %bLhsReal, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc94, %if.end45
  %62 = load i32, ptr %ii, align 4
  %63 = load ptr, ptr %pList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %63, i32 0, i32 0
  %64 = load i32, ptr %nExpr, align 8
  %cmp52 = icmp slt i32 %62, %64
  br i1 %cmp52, label %for.body54, label %for.end96

for.body54:                                       ; preds = %for.cond51
  %65 = load i32, ptr %bLhsReal, align 4
  %tobool55 = icmp ne i32 %65, 0
  br i1 %tobool55, label %if.then56, label %if.else62

if.then56:                                        ; preds = %for.body54
  %66 = load ptr, ptr %pParse.addr, align 8
  %call57 = call i32 @sqlite3GetTempReg(ptr noundef %66)
  store i32 %call57, ptr %regToFree, align 4
  store i32 %call57, ptr %r2, align 4
  %67 = load ptr, ptr %pParse.addr, align 8
  %68 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %68, i32 0, i32 1
  %69 = load i32, ptr %ii, align 4
  %idxprom58 = sext i32 %69 to i64
  %arrayidx59 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom58
  %pExpr60 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx59, i32 0, i32 0
  %70 = load ptr, ptr %pExpr60, align 8
  %71 = load i32, ptr %r2, align 4
  call void @sqlite3ExprCode(ptr noundef %67, ptr noundef %70, i32 noundef %71)
  %72 = load ptr, ptr %v, align 8
  %73 = load i32, ptr %r2, align 4
  %call61 = call i32 @sqlite3VdbeAddOp4(ptr noundef %72, i32 noundef 91, i32 noundef %73, i32 noundef 1, i32 noundef 0, ptr noundef @.str.575, i32 noundef -1)
  br label %if.end68

if.else62:                                        ; preds = %for.body54
  %74 = load ptr, ptr %pParse.addr, align 8
  %75 = load ptr, ptr %pList, align 8
  %a63 = getelementptr inbounds nuw %struct.ExprList, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %ii, align 4
  %idxprom64 = sext i32 %76 to i64
  %arrayidx65 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a63, i64 0, i64 %idxprom64
  %pExpr66 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx65, i32 0, i32 0
  %77 = load ptr, ptr %pExpr66, align 8
  %call67 = call i32 @sqlite3ExprCodeTemp(ptr noundef %74, ptr noundef %77, ptr noundef %regToFree)
  store i32 %call67, ptr %r2, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else62, %if.then56
  %78 = load i32, ptr %regCkNull, align 4
  %tobool69 = icmp ne i32 %78, 0
  br i1 %tobool69, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.end68
  %79 = load ptr, ptr %pList, align 8
  %a70 = getelementptr inbounds nuw %struct.ExprList, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %ii, align 4
  %idxprom71 = sext i32 %80 to i64
  %arrayidx72 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a70, i64 0, i64 %idxprom71
  %pExpr73 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx72, i32 0, i32 0
  %81 = load ptr, ptr %pExpr73, align 8
  %call74 = call i32 @sqlite3ExprCanBeNull(ptr noundef %81)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %land.lhs.true
  %82 = load ptr, ptr %v, align 8
  %83 = load i32, ptr %regCkNull, align 4
  %84 = load i32, ptr %r2, align 4
  %85 = load i32, ptr %regCkNull, align 4
  %call77 = call i32 @sqlite3VdbeAddOp3(ptr noundef %82, i32 noundef 99, i32 noundef %83, i32 noundef %84, i32 noundef %85)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %land.lhs.true, %if.end68
  %86 = load i32, ptr %ii, align 4
  %87 = load ptr, ptr %pList, align 8
  %nExpr79 = getelementptr inbounds nuw %struct.ExprList, ptr %87, i32 0, i32 0
  %88 = load i32, ptr %nExpr79, align 8
  %sub = sub nsw i32 %88, 1
  %cmp80 = icmp slt i32 %86, %sub
  br i1 %cmp80, label %if.then84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end78
  %89 = load i32, ptr %destIfNull.addr, align 4
  %90 = load i32, ptr %destIfFalse.addr, align 4
  %cmp82 = icmp ne i32 %89, %90
  br i1 %cmp82, label %if.then84, label %if.else88

if.then84:                                        ; preds = %lor.lhs.false, %if.end78
  %91 = load ptr, ptr %v, align 8
  %92 = load i32, ptr %rLhs, align 4
  %93 = load i32, ptr %labelOk, align 4
  %94 = load i32, ptr %r2, align 4
  %95 = load ptr, ptr %pColl, align 8
  %call85 = call i32 @sqlite3VdbeAddOp4(ptr noundef %91, i32 noundef 53, i32 noundef %92, i32 noundef %93, i32 noundef %94, ptr noundef %95, i32 noundef -2)
  %96 = load ptr, ptr %v, align 8
  %97 = load ptr, ptr %zAff, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %97, i64 0
  %98 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %98 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %96, i16 noundef zeroext %conv87)
  br label %if.end93

if.else88:                                        ; preds = %lor.lhs.false
  %99 = load ptr, ptr %v, align 8
  %100 = load i32, ptr %rLhs, align 4
  %101 = load i32, ptr %destIfFalse.addr, align 4
  %102 = load i32, ptr %r2, align 4
  %103 = load ptr, ptr %pColl, align 8
  %call89 = call i32 @sqlite3VdbeAddOp4(ptr noundef %99, i32 noundef 52, i32 noundef %100, i32 noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef -2)
  %104 = load ptr, ptr %v, align 8
  %105 = load ptr, ptr %zAff, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %105, i64 0
  %106 = load i8, ptr %arrayidx90, align 1
  %conv91 = sext i8 %106 to i32
  %or = or i32 %conv91, 16
  %conv92 = trunc i32 %or to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %104, i16 noundef zeroext %conv92)
  br label %if.end93

if.end93:                                         ; preds = %if.else88, %if.then84
  %107 = load ptr, ptr %pParse.addr, align 8
  %108 = load i32, ptr %regToFree, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %107, i32 noundef %108)
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %109 = load i32, ptr %ii, align 4
  %inc95 = add nsw i32 %109, 1
  store i32 %inc95, ptr %ii, align 4
  br label %for.cond51, !llvm.loop !9

for.end96:                                        ; preds = %for.cond51
  %110 = load i32, ptr %regCkNull, align 4
  %tobool97 = icmp ne i32 %110, 0
  br i1 %tobool97, label %if.then98, label %if.end101

if.then98:                                        ; preds = %for.end96
  %111 = load ptr, ptr %v, align 8
  %112 = load i32, ptr %regCkNull, align 4
  %113 = load i32, ptr %destIfNull.addr, align 4
  %call99 = call i32 @sqlite3VdbeAddOp2(ptr noundef %111, i32 noundef 50, i32 noundef %112, i32 noundef %113)
  %114 = load ptr, ptr %v, align 8
  %115 = load i32, ptr %destIfFalse.addr, align 4
  %call100 = call i32 @sqlite3VdbeGoto(ptr noundef %114, i32 noundef %115)
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %for.end96
  %116 = load ptr, ptr %v, align 8
  %117 = load i32, ptr %labelOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %116, i32 noundef %117)
  %118 = load ptr, ptr %pParse.addr, align 8
  %119 = load i32, ptr %regCkNull, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %118, i32 noundef %119)
  br label %sqlite3ExprCodeIN_finished

if.end102:                                        ; preds = %if.end33
  %120 = load i32, ptr %destIfNull.addr, align 4
  %121 = load i32, ptr %destIfFalse.addr, align 4
  %cmp103 = icmp eq i32 %120, %121
  br i1 %cmp103, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.end102
  %122 = load i32, ptr %destIfFalse.addr, align 4
  store i32 %122, ptr %destStep2, align 4
  br label %if.end108

if.else106:                                       ; preds = %if.end102
  %123 = load ptr, ptr %pParse.addr, align 8
  %call107 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %123)
  store i32 %call107, ptr %destStep6, align 4
  store i32 %call107, ptr %destStep2, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.then105
  store i32 0, ptr %i, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc121, %if.end108
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %nVector, align 4
  %cmp110 = icmp slt i32 %124, %125
  br i1 %cmp110, label %for.body112, label %for.end123

for.body112:                                      ; preds = %for.cond109
  %126 = load ptr, ptr %pExpr.addr, align 8
  %pLeft113 = getelementptr inbounds nuw %struct.Expr, ptr %126, i32 0, i32 4
  %127 = load ptr, ptr %pLeft113, align 8
  %128 = load i32, ptr %i, align 4
  %call114 = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %127, i32 noundef %128)
  store ptr %call114, ptr %p, align 8
  %129 = load ptr, ptr %p, align 8
  %call115 = call i32 @sqlite3ExprCanBeNull(ptr noundef %129)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then117, label %if.end120

if.then117:                                       ; preds = %for.body112
  %130 = load ptr, ptr %v, align 8
  %131 = load i32, ptr %rLhs, align 4
  %132 = load i32, ptr %i, align 4
  %add118 = add nsw i32 %131, %132
  %133 = load i32, ptr %destStep2, align 4
  %call119 = call i32 @sqlite3VdbeAddOp2(ptr noundef %130, i32 noundef 50, i32 noundef %add118, i32 noundef %133)
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %for.body112
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120
  %134 = load i32, ptr %i, align 4
  %inc122 = add nsw i32 %134, 1
  store i32 %inc122, ptr %i, align 4
  br label %for.cond109, !llvm.loop !10

for.end123:                                       ; preds = %for.cond109
  %135 = load i32, ptr %eType, align 4
  %cmp124 = icmp eq i32 %135, 1
  br i1 %cmp124, label %if.then126, label %if.else129

if.then126:                                       ; preds = %for.end123
  %136 = load ptr, ptr %v, align 8
  %137 = load i32, ptr %iTab, align 4
  %138 = load i32, ptr %destIfFalse.addr, align 4
  %139 = load i32, ptr %rLhs, align 4
  %call127 = call i32 @sqlite3VdbeAddOp3(ptr noundef %136, i32 noundef 30, i32 noundef %137, i32 noundef %138, i32 noundef %139)
  %140 = load ptr, ptr %v, align 8
  %call128 = call i32 @sqlite3VdbeAddOp0(ptr noundef %140, i32 noundef 11)
  store i32 %call128, ptr %addrTruthOp, align 4
  br label %if.end137

if.else129:                                       ; preds = %for.end123
  %141 = load ptr, ptr %v, align 8
  %142 = load i32, ptr %rLhs, align 4
  %143 = load i32, ptr %nVector, align 4
  %144 = load ptr, ptr %zAff, align 8
  %145 = load i32, ptr %nVector, align 4
  %call130 = call i32 @sqlite3VdbeAddOp4(ptr noundef %141, i32 noundef 91, i32 noundef %142, i32 noundef %143, i32 noundef 0, ptr noundef %144, i32 noundef %145)
  %146 = load i32, ptr %destIfFalse.addr, align 4
  %147 = load i32, ptr %destIfNull.addr, align 4
  %cmp131 = icmp eq i32 %146, %147
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.else129
  %148 = load ptr, ptr %v, align 8
  %149 = load i32, ptr %iTab, align 4
  %150 = load i32, ptr %destIfFalse.addr, align 4
  %151 = load i32, ptr %rLhs, align 4
  %152 = load i32, ptr %nVector, align 4
  %call134 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %148, i32 noundef 28, i32 noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152)
  br label %sqlite3ExprCodeIN_finished

if.end135:                                        ; preds = %if.else129
  %153 = load ptr, ptr %v, align 8
  %154 = load i32, ptr %iTab, align 4
  %155 = load i32, ptr %rLhs, align 4
  %156 = load i32, ptr %nVector, align 4
  %call136 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %153, i32 noundef 29, i32 noundef %154, i32 noundef 0, i32 noundef %155, i32 noundef %156)
  store i32 %call136, ptr %addrTruthOp, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.end135, %if.then126
  %157 = load i32, ptr %rRhsHasNull, align 4
  %tobool138 = icmp ne i32 %157, 0
  br i1 %tobool138, label %land.lhs.true139, label %if.end144

land.lhs.true139:                                 ; preds = %if.end137
  %158 = load i32, ptr %nVector, align 4
  %cmp140 = icmp eq i32 %158, 1
  br i1 %cmp140, label %if.then142, label %if.end144

if.then142:                                       ; preds = %land.lhs.true139
  %159 = load ptr, ptr %v, align 8
  %160 = load i32, ptr %rRhsHasNull, align 4
  %161 = load i32, ptr %destIfFalse.addr, align 4
  %call143 = call i32 @sqlite3VdbeAddOp2(ptr noundef %159, i32 noundef 51, i32 noundef %160, i32 noundef %161)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %land.lhs.true139, %if.end137
  %162 = load i32, ptr %destIfFalse.addr, align 4
  %163 = load i32, ptr %destIfNull.addr, align 4
  %cmp145 = icmp eq i32 %162, %163
  br i1 %cmp145, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end144
  %164 = load ptr, ptr %v, align 8
  %165 = load i32, ptr %destIfFalse.addr, align 4
  %call148 = call i32 @sqlite3VdbeGoto(ptr noundef %164, i32 noundef %165)
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end144
  %166 = load i32, ptr %destStep6, align 4
  %tobool150 = icmp ne i32 %166, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end149
  %167 = load ptr, ptr %v, align 8
  %168 = load i32, ptr %destStep6, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %167, i32 noundef %168)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end149
  %169 = load ptr, ptr %v, align 8
  %170 = load i32, ptr %iTab, align 4
  %171 = load i32, ptr %destIfFalse.addr, align 4
  %call153 = call i32 @sqlite3VdbeAddOp2(ptr noundef %169, i32 noundef 36, i32 noundef %170, i32 noundef %171)
  store i32 %call153, ptr %addrTop, align 4
  %172 = load i32, ptr %nVector, align 4
  %cmp154 = icmp sgt i32 %172, 1
  br i1 %cmp154, label %if.then156, label %if.else158

if.then156:                                       ; preds = %if.end152
  %173 = load ptr, ptr %pParse.addr, align 8
  %call157 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %173)
  store i32 %call157, ptr %destNotNull, align 4
  br label %if.end159

if.else158:                                       ; preds = %if.end152
  %174 = load i32, ptr %destIfFalse.addr, align 4
  store i32 %174, ptr %destNotNull, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else158, %if.then156
  store i32 0, ptr %i, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc172, %if.end159
  %175 = load i32, ptr %i, align 4
  %176 = load i32, ptr %nVector, align 4
  %cmp161 = icmp slt i32 %175, %176
  br i1 %cmp161, label %for.body163, label %for.end174

for.body163:                                      ; preds = %for.cond160
  %177 = load ptr, ptr %pParse.addr, align 8
  %call166 = call i32 @sqlite3GetTempReg(ptr noundef %177)
  store i32 %call166, ptr %r3, align 4
  %178 = load ptr, ptr %pLeft, align 8
  %179 = load i32, ptr %i, align 4
  %call167 = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %178, i32 noundef %179)
  store ptr %call167, ptr %p164, align 8
  %180 = load ptr, ptr %pParse.addr, align 8
  %181 = load ptr, ptr %p164, align 8
  %call168 = call ptr @sqlite3ExprCollSeq(ptr noundef %180, ptr noundef %181)
  store ptr %call168, ptr %pColl165, align 8
  %182 = load ptr, ptr %v, align 8
  %183 = load i32, ptr %iTab, align 4
  %184 = load i32, ptr %i, align 4
  %185 = load i32, ptr %r3, align 4
  %call169 = call i32 @sqlite3VdbeAddOp3(ptr noundef %182, i32 noundef 90, i32 noundef %183, i32 noundef %184, i32 noundef %185)
  %186 = load ptr, ptr %v, align 8
  %187 = load i32, ptr %rLhs, align 4
  %188 = load i32, ptr %i, align 4
  %add170 = add nsw i32 %187, %188
  %189 = load i32, ptr %destNotNull, align 4
  %190 = load i32, ptr %r3, align 4
  %191 = load ptr, ptr %pColl165, align 8
  %call171 = call i32 @sqlite3VdbeAddOp4(ptr noundef %186, i32 noundef 52, i32 noundef %add170, i32 noundef %189, i32 noundef %190, ptr noundef %191, i32 noundef -2)
  %192 = load ptr, ptr %pParse.addr, align 8
  %193 = load i32, ptr %r3, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %192, i32 noundef %193)
  br label %for.inc172

for.inc172:                                       ; preds = %for.body163
  %194 = load i32, ptr %i, align 4
  %inc173 = add nsw i32 %194, 1
  store i32 %inc173, ptr %i, align 4
  br label %for.cond160, !llvm.loop !11

for.end174:                                       ; preds = %for.cond160
  %195 = load ptr, ptr %v, align 8
  %196 = load i32, ptr %destIfNull.addr, align 4
  %call175 = call i32 @sqlite3VdbeAddOp2(ptr noundef %195, i32 noundef 11, i32 noundef 0, i32 noundef %196)
  %197 = load i32, ptr %nVector, align 4
  %cmp176 = icmp sgt i32 %197, 1
  br i1 %cmp176, label %if.then178, label %if.end182

if.then178:                                       ; preds = %for.end174
  %198 = load ptr, ptr %v, align 8
  %199 = load i32, ptr %destNotNull, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %198, i32 noundef %199)
  %200 = load ptr, ptr %v, align 8
  %201 = load i32, ptr %iTab, align 4
  %202 = load i32, ptr %addrTop, align 4
  %add179 = add nsw i32 %202, 1
  %call180 = call i32 @sqlite3VdbeAddOp2(ptr noundef %200, i32 noundef 5, i32 noundef %201, i32 noundef %add179)
  %203 = load ptr, ptr %v, align 8
  %204 = load i32, ptr %destIfFalse.addr, align 4
  %call181 = call i32 @sqlite3VdbeAddOp2(ptr noundef %203, i32 noundef 11, i32 noundef 0, i32 noundef %204)
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %for.end174
  %205 = load ptr, ptr %v, align 8
  %206 = load i32, ptr %addrTruthOp, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %205, i32 noundef %206)
  br label %sqlite3ExprCodeIN_finished

sqlite3ExprCodeIN_finished:                       ; preds = %if.end182, %if.then133, %if.end101
  %207 = load i32, ptr %rLhs, align 4
  %208 = load i32, ptr %rLhsOrig, align 4
  %cmp183 = icmp ne i32 %207, %208
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %sqlite3ExprCodeIN_finished
  %209 = load ptr, ptr %pParse.addr, align 8
  %210 = load i32, ptr %rLhs, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %209, i32 noundef %210)
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %sqlite3ExprCodeIN_finished
  br label %sqlite3ExprCodeIN_oom_error

sqlite3ExprCodeIN_oom_error:                      ; preds = %if.end186, %if.then8
  %211 = load ptr, ptr %pParse.addr, align 8
  %db187 = getelementptr inbounds nuw %struct.Parse, ptr %211, i32 0, i32 0
  %212 = load ptr, ptr %db187, align 8
  %213 = load ptr, ptr %aiMap, align 8
  call void @sqlite3DbFree(ptr noundef %212, ptr noundef %213)
  %214 = load ptr, ptr %pParse.addr, align 8
  %db188 = getelementptr inbounds nuw %struct.Parse, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %db188, align 8
  %216 = load ptr, ptr %zAff, align 8
  call void @sqlite3DbFree(ptr noundef %215, ptr noundef %216)
  br label %return

return:                                           ; preds = %sqlite3ExprCodeIN_oom_error, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @exprCodeVector(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCheckIN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @exprINAffinity(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindInIndex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCanBeNull(ptr noundef) #0

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
