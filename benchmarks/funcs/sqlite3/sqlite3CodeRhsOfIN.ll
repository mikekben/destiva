; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.6 = type { i32, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.574 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.578 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.579 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3KeyInfoUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoAlloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ClearTempRegCache(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @exprINAffinity(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CodeRhsOfIN(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %iTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %addrOnce = alloca i32, align 4
  %addr = alloca i32, align 4
  %pLeft = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  %nVal = alloca i32, align 4
  %v = alloca ptr, align 8
  %pSelect = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %dest = alloca %struct.SelectDest, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %affinity = alloca i8, align 1
  %i59 = alloca i32, align 4
  %pList = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %pE2 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  store i32 0, ptr %addrOnce, align 4
  store ptr null, ptr %pKeyInfo, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 20
  %5 = load i32, ptr %iSelfTab, align 8
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end23

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %pExpr.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %flags2, align 4
  %and3 = and i32 %7, 33554432
  %cmp4 = icmp ne i32 %and3, 0
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %v, align 8
  %call = call i32 @sqlite3VdbeAddOp0(ptr noundef %8, i32 noundef 17)
  store i32 %call, ptr %addrOnce, align 4
  %9 = load ptr, ptr %pExpr.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags6, align 4
  %and7 = and i32 %10, 2048
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then5
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %x, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %selId, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %11, i8 noundef zeroext 0, ptr noundef @.str.578, i32 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then5
  %15 = load ptr, ptr %v, align 8
  %16 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 14
  %regReturn = getelementptr inbounds nuw %struct.anon.6, ptr %y, i32 0, i32 1
  %17 = load i32, ptr %regReturn, align 4
  %18 = load ptr, ptr %pExpr.addr, align 8
  %y10 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 14
  %iAddr = getelementptr inbounds nuw %struct.anon.6, ptr %y10, i32 0, i32 0
  %19 = load i32, ptr %iAddr, align 8
  %call11 = call i32 @sqlite3VdbeAddOp2(ptr noundef %15, i32 noundef 12, i32 noundef %17, i32 noundef %19)
  %20 = load ptr, ptr %v, align 8
  %21 = load i32, ptr %iTab.addr, align 4
  %22 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 8
  %23 = load i32, ptr %iTable, align 4
  %call12 = call i32 @sqlite3VdbeAddOp2(ptr noundef %20, i32 noundef 109, i32 noundef %21, i32 noundef %23)
  %24 = load ptr, ptr %v, align 8
  %25 = load i32, ptr %addrOnce, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %24, i32 noundef %25)
  br label %if.end109

if.end13:                                         ; preds = %if.then
  %26 = load ptr, ptr %pExpr.addr, align 8
  %flags14 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %flags14, align 4
  %or = or i32 %27, 33554432
  store i32 %or, ptr %flags14, align 4
  %28 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %28, i32 0, i32 18
  %29 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %nMem, align 8
  %30 = load ptr, ptr %pExpr.addr, align 8
  %y15 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 14
  %regReturn16 = getelementptr inbounds nuw %struct.anon.6, ptr %y15, i32 0, i32 1
  store i32 %inc, ptr %regReturn16, align 4
  %31 = load ptr, ptr %v, align 8
  %32 = load ptr, ptr %pExpr.addr, align 8
  %y17 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 14
  %regReturn18 = getelementptr inbounds nuw %struct.anon.6, ptr %y17, i32 0, i32 1
  %33 = load i32, ptr %regReturn18, align 4
  %call19 = call i32 @sqlite3VdbeAddOp2(ptr noundef %31, i32 noundef 70, i32 noundef 0, i32 noundef %33)
  %add = add nsw i32 %call19, 1
  %34 = load ptr, ptr %pExpr.addr, align 8
  %y20 = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 14
  %iAddr21 = getelementptr inbounds nuw %struct.anon.6, ptr %y20, i32 0, i32 0
  store i32 %add, ptr %iAddr21, align 8
  %35 = load ptr, ptr %v, align 8
  %call22 = call i32 @sqlite3VdbeAddOp0(ptr noundef %35, i32 noundef 17)
  store i32 %call22, ptr %addrOnce, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %land.lhs.true, %entry
  %36 = load ptr, ptr %pExpr.addr, align 8
  %pLeft24 = getelementptr inbounds nuw %struct.Expr, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %pLeft24, align 8
  store ptr %37, ptr %pLeft, align 8
  %38 = load ptr, ptr %pLeft, align 8
  %call25 = call i32 @sqlite3ExprVectorSize(ptr noundef %38)
  store i32 %call25, ptr %nVal, align 4
  %39 = load i32, ptr %iTab.addr, align 4
  %40 = load ptr, ptr %pExpr.addr, align 8
  %iTable26 = getelementptr inbounds nuw %struct.Expr, ptr %40, i32 0, i32 8
  store i32 %39, ptr %iTable26, align 4
  %41 = load ptr, ptr %v, align 8
  %42 = load ptr, ptr %pExpr.addr, align 8
  %iTable27 = getelementptr inbounds nuw %struct.Expr, ptr %42, i32 0, i32 8
  %43 = load i32, ptr %iTable27, align 4
  %44 = load i32, ptr %nVal, align 4
  %call28 = call i32 @sqlite3VdbeAddOp2(ptr noundef %41, i32 noundef 112, i32 noundef %43, i32 noundef %44)
  store i32 %call28, ptr %addr, align 4
  %45 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %db, align 8
  %47 = load i32, ptr %nVal, align 4
  %call29 = call ptr @sqlite3KeyInfoAlloc(ptr noundef %46, i32 noundef %47, i32 noundef 1)
  store ptr %call29, ptr %pKeyInfo, align 8
  %48 = load ptr, ptr %pExpr.addr, align 8
  %flags30 = getelementptr inbounds nuw %struct.Expr, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %flags30, align 4
  %and31 = and i32 %49, 2048
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end23
  %50 = load ptr, ptr %pExpr.addr, align 8
  %x34 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %x34, align 8
  store ptr %51, ptr %pSelect, align 8
  %52 = load ptr, ptr %pSelect, align 8
  %pEList35 = getelementptr inbounds nuw %struct.Select, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %pEList35, align 8
  store ptr %53, ptr %pEList, align 8
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load i32, ptr %addrOnce, align 4
  %tobool = icmp ne i32 %55, 0
  %56 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.3, ptr @.str.574
  %57 = load ptr, ptr %pSelect, align 8
  %selId36 = getelementptr inbounds nuw %struct.Select, ptr %57, i32 0, i32 6
  %58 = load i32, ptr %selId36, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %54, i8 noundef zeroext 1, ptr noundef @.str.579, ptr noundef %cond, i32 noundef %58)
  %59 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %59, i32 0, i32 0
  %60 = load i32, ptr %nExpr, align 8
  %61 = load i32, ptr %nVal, align 4
  %cmp37 = icmp eq i32 %60, %61
  br i1 %cmp37, label %if.then38, label %if.end55

if.then38:                                        ; preds = %if.then33
  %62 = load i32, ptr %iTab.addr, align 4
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 11, i32 noundef %62)
  %63 = load ptr, ptr %pParse.addr, align 8
  %64 = load ptr, ptr %pExpr.addr, align 8
  %call39 = call ptr @exprINAffinity(ptr noundef %63, ptr noundef %64)
  %zAffSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 4
  store ptr %call39, ptr %zAffSdst, align 8
  %65 = load ptr, ptr %pSelect, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %65, i32 0, i32 4
  store i32 0, ptr %iLimit, align 8
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %pSelect, align 8
  %call40 = call i32 @sqlite3Select(ptr noundef %66, ptr noundef %67, ptr noundef %dest)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then38
  %68 = load ptr, ptr %pParse.addr, align 8
  %db43 = getelementptr inbounds nuw %struct.Parse, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %db43, align 8
  %zAffSdst44 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 4
  %70 = load ptr, ptr %zAffSdst44, align 8
  call void @sqlite3DbFree(ptr noundef %69, ptr noundef %70)
  %71 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3KeyInfoUnref(ptr noundef %71)
  br label %if.end109

if.end45:                                         ; preds = %if.then38
  %72 = load ptr, ptr %pParse.addr, align 8
  %db46 = getelementptr inbounds nuw %struct.Parse, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %db46, align 8
  %zAffSdst47 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 4
  %74 = load ptr, ptr %zAffSdst47, align 8
  call void @sqlite3DbFree(ptr noundef %73, ptr noundef %74)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end45
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %nVal, align 4
  %cmp48 = icmp slt i32 %75, %76
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load ptr, ptr %pLeft, align 8
  %78 = load i32, ptr %i, align 4
  %call49 = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %77, i32 noundef %78)
  store ptr %call49, ptr %p, align 8
  %79 = load ptr, ptr %pParse.addr, align 8
  %80 = load ptr, ptr %p, align 8
  %81 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %i, align 4
  %idxprom = sext i32 %82 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr50 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %83 = load ptr, ptr %pExpr50, align 8
  %call51 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %79, ptr noundef %80, ptr noundef %83)
  %84 = load ptr, ptr %pKeyInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %84, i32 0, i32 6
  %85 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %85 to i64
  %arrayidx53 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom52
  store ptr %call51, ptr %arrayidx53, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %86, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.then33
  br label %if.end96

if.else:                                          ; preds = %if.end23
  %87 = load ptr, ptr %pExpr.addr, align 8
  %x56 = getelementptr inbounds nuw %struct.Expr, ptr %87, i32 0, i32 6
  %88 = load ptr, ptr %x56, align 8
  %cmp57 = icmp ne ptr %88, null
  br i1 %cmp57, label %if.then58, label %if.end95

if.then58:                                        ; preds = %if.else
  %89 = load ptr, ptr %pExpr.addr, align 8
  %x60 = getelementptr inbounds nuw %struct.Expr, ptr %89, i32 0, i32 6
  %90 = load ptr, ptr %x60, align 8
  store ptr %90, ptr %pList, align 8
  %91 = load ptr, ptr %pLeft, align 8
  %call61 = call signext i8 @sqlite3ExprAffinity(ptr noundef %91)
  store i8 %call61, ptr %affinity, align 1
  %92 = load i8, ptr %affinity, align 1
  %conv = sext i8 %92 to i32
  %cmp62 = icmp sle i32 %conv, 64
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then58
  store i8 65, ptr %affinity, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then58
  %93 = load ptr, ptr %pKeyInfo, align 8
  %tobool66 = icmp ne ptr %93, null
  br i1 %tobool66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end65
  %94 = load ptr, ptr %pParse.addr, align 8
  %95 = load ptr, ptr %pExpr.addr, align 8
  %pLeft68 = getelementptr inbounds nuw %struct.Expr, ptr %95, i32 0, i32 4
  %96 = load ptr, ptr %pLeft68, align 8
  %call69 = call ptr @sqlite3ExprCollSeq(ptr noundef %94, ptr noundef %96)
  %97 = load ptr, ptr %pKeyInfo, align 8
  %aColl70 = getelementptr inbounds nuw %struct.KeyInfo, ptr %97, i32 0, i32 6
  %arrayidx71 = getelementptr inbounds [1 x ptr], ptr %aColl70, i64 0, i64 0
  store ptr %call69, ptr %arrayidx71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end65
  %98 = load ptr, ptr %pParse.addr, align 8
  %call73 = call i32 @sqlite3GetTempReg(ptr noundef %98)
  store i32 %call73, ptr %r1, align 4
  %99 = load ptr, ptr %pParse.addr, align 8
  %call74 = call i32 @sqlite3GetTempReg(ptr noundef %99)
  store i32 %call74, ptr %r2, align 4
  %100 = load ptr, ptr %pList, align 8
  %nExpr75 = getelementptr inbounds nuw %struct.ExprList, ptr %100, i32 0, i32 0
  %101 = load i32, ptr %nExpr75, align 8
  store i32 %101, ptr %i59, align 4
  %102 = load ptr, ptr %pList, align 8
  %a76 = getelementptr inbounds nuw %struct.ExprList, ptr %102, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a76, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc93, %if.end72
  %103 = load i32, ptr %i59, align 4
  %cmp78 = icmp sgt i32 %103, 0
  br i1 %cmp78, label %for.body80, label %for.end94

for.body80:                                       ; preds = %for.cond77
  %104 = load ptr, ptr %pItem, align 8
  %pExpr81 = getelementptr inbounds nuw %struct.ExprList_item, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %pExpr81, align 8
  store ptr %105, ptr %pE2, align 8
  %106 = load i32, ptr %addrOnce, align 4
  %tobool82 = icmp ne i32 %106, 0
  br i1 %tobool82, label %land.lhs.true83, label %if.end90

land.lhs.true83:                                  ; preds = %for.body80
  %107 = load ptr, ptr %pE2, align 8
  %call84 = call i32 @sqlite3ExprIsConstant(ptr noundef %107)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end90, label %if.then86

if.then86:                                        ; preds = %land.lhs.true83
  %108 = load ptr, ptr %v, align 8
  %109 = load i32, ptr %addrOnce, align 4
  %call87 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %108, i32 noundef %109)
  %110 = load ptr, ptr %pExpr.addr, align 8
  %flags88 = getelementptr inbounds nuw %struct.Expr, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %flags88, align 4
  %and89 = and i32 %111, -33554433
  store i32 %and89, ptr %flags88, align 4
  store i32 0, ptr %addrOnce, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %land.lhs.true83, %for.body80
  %112 = load ptr, ptr %pParse.addr, align 8
  %113 = load ptr, ptr %pE2, align 8
  %114 = load i32, ptr %r1, align 4
  call void @sqlite3ExprCode(ptr noundef %112, ptr noundef %113, i32 noundef %114)
  %115 = load ptr, ptr %v, align 8
  %116 = load i32, ptr %r1, align 4
  %117 = load i32, ptr %r2, align 4
  %call91 = call i32 @sqlite3VdbeAddOp4(ptr noundef %115, i32 noundef 92, i32 noundef %116, i32 noundef 1, i32 noundef %117, ptr noundef %affinity, i32 noundef 1)
  %118 = load ptr, ptr %v, align 8
  %119 = load i32, ptr %iTab.addr, align 4
  %120 = load i32, ptr %r2, align 4
  %121 = load i32, ptr %r1, align 4
  %call92 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %118, i32 noundef 132, i32 noundef %119, i32 noundef %120, i32 noundef %121, i32 noundef 1)
  br label %for.inc93

for.inc93:                                        ; preds = %if.end90
  %122 = load i32, ptr %i59, align 4
  %dec = add nsw i32 %122, -1
  store i32 %dec, ptr %i59, align 4
  %123 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %123, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond77, !llvm.loop !8

for.end94:                                        ; preds = %for.cond77
  %124 = load ptr, ptr %pParse.addr, align 8
  %125 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %124, i32 noundef %125)
  %126 = load ptr, ptr %pParse.addr, align 8
  %127 = load i32, ptr %r2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %126, i32 noundef %127)
  br label %if.end95

if.end95:                                         ; preds = %for.end94, %if.else
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end55
  %128 = load ptr, ptr %pKeyInfo, align 8
  %tobool97 = icmp ne ptr %128, null
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end96
  %129 = load ptr, ptr %v, align 8
  %130 = load i32, ptr %addr, align 4
  %131 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %129, i32 noundef %130, ptr noundef %131, i32 noundef -9)
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end96
  %132 = load i32, ptr %addrOnce, align 4
  %tobool100 = icmp ne i32 %132, 0
  br i1 %tobool100, label %if.then101, label %if.end109

if.then101:                                       ; preds = %if.end99
  %133 = load ptr, ptr %v, align 8
  %134 = load i32, ptr %addrOnce, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %133, i32 noundef %134)
  %135 = load ptr, ptr %v, align 8
  %136 = load ptr, ptr %pExpr.addr, align 8
  %y102 = getelementptr inbounds nuw %struct.Expr, ptr %136, i32 0, i32 14
  %regReturn103 = getelementptr inbounds nuw %struct.anon.6, ptr %y102, i32 0, i32 1
  %137 = load i32, ptr %regReturn103, align 4
  %call104 = call i32 @sqlite3VdbeAddOp1(ptr noundef %135, i32 noundef 66, i32 noundef %137)
  %138 = load ptr, ptr %v, align 8
  %139 = load ptr, ptr %pExpr.addr, align 8
  %y105 = getelementptr inbounds nuw %struct.Expr, ptr %139, i32 0, i32 14
  %iAddr106 = getelementptr inbounds nuw %struct.anon.6, ptr %y105, i32 0, i32 0
  %140 = load i32, ptr %iAddr106, align 8
  %sub = sub nsw i32 %140, 1
  %141 = load ptr, ptr %v, align 8
  %call107 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %141)
  %sub108 = sub nsw i32 %call107, 1
  call void @sqlite3VdbeChangeP1(ptr noundef %138, i32 noundef %sub, i32 noundef %sub108)
  %142 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ClearTempRegCache(ptr noundef %142)
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.end99, %if.then42, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef, i32 noundef) #0

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
