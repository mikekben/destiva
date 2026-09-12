; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

@.str.576 = external hidden unnamed_addr constant [47 x i8], align 1
@.str.577 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3TableColumnAffinity(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FindInIndex(ptr noundef %pParse, ptr noundef %pX, i32 noundef %inFlags, ptr noundef %prRhsHasNull, ptr noundef %aiMap, ptr noundef %piTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %inFlags.addr = alloca i32, align 4
  %prRhsHasNull.addr = alloca ptr, align 8
  %aiMap.addr = alloca ptr, align 8
  %piTab.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %eType = alloca i32, align 4
  %iTab = alloca i32, align 4
  %mustBeUnique = alloca i32, align 4
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %pEList = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %iDb = alloca i16, align 2
  %pEList24 = alloca ptr, align 8
  %nExpr26 = alloca i32, align 4
  %iAddr = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %affinity_ok = alloca i32, align 4
  %i48 = alloca i32, align 4
  %pLhs = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %idxaff = alloca i8, align 1
  %cmpaff = alloca i8, align 1
  %colUsed = alloca i64, align 8
  %mCol = alloca i64, align 8
  %pLhs115 = alloca ptr, align 8
  %pRhs = alloca ptr, align 8
  %pReq = alloca ptr, align 8
  %j = alloca i32, align 4
  %iAddr171 = alloca i32, align 4
  %savedNQueryLoop = alloca i32, align 4
  %rMayHaveNull = alloca i32, align 4
  %i240 = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store i32 %inFlags, ptr %inFlags.addr, align 4
  store ptr %prRhsHasNull, ptr %prRhsHasNull.addr, align 8
  store ptr %aiMap, ptr %aiMap.addr, align 8
  store ptr %piTab, ptr %piTab.addr, align 8
  store i32 0, ptr %eType, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 17
  %1 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %nTab, align 4
  store i32 %1, ptr %iTab, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load i32, ptr %inFlags.addr, align 4
  %and = and i32 %3, 4
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %mustBeUnique, align 4
  %4 = load ptr, ptr %prRhsHasNull.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pX.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %flags, align 4
  %and1 = and i32 %6, 2048
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %pX.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %x, align 8
  %pEList3 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pEList3, align 8
  store ptr %9, ptr %pEList, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nExpr, align 8
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %15 = load ptr, ptr %pExpr, align 8
  %call6 = call i32 @sqlite3ExprCanBeNull(ptr noundef %15)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then8, %for.cond
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %pEList, align 8
  %nExpr10 = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nExpr10, align 8
  %cmp11 = icmp eq i32 %17, %19
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store ptr null, ptr %prRhsHasNull.addr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.lhs.true, %entry
  %20 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 16
  %21 = load i32, ptr %nErr, align 8
  %cmp16 = icmp eq i32 %21, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end192

land.lhs.true18:                                  ; preds = %if.end15
  %22 = load ptr, ptr %pX.addr, align 8
  %call19 = call ptr @isCandidateForInOpt(ptr noundef %22)
  store ptr %call19, ptr %p, align 8
  %cmp20 = icmp ne ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.end192

if.then22:                                        ; preds = %land.lhs.true18
  %23 = load ptr, ptr %pParse.addr, align 8
  %db23 = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db23, align 8
  store ptr %24, ptr %db, align 8
  %25 = load ptr, ptr %p, align 8
  %pEList25 = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pEList25, align 8
  store ptr %26, ptr %pEList24, align 8
  %27 = load ptr, ptr %pEList24, align 8
  %nExpr27 = getelementptr inbounds nuw %struct.ExprList, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %nExpr27, align 8
  store i32 %28, ptr %nExpr26, align 4
  %29 = load ptr, ptr %p, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %pSrc, align 8
  %a28 = getelementptr inbounds nuw %struct.SrcList, ptr %30, i32 0, i32 2
  %arrayidx29 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a28, i64 0, i64 0
  %pTab30 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx29, i32 0, i32 4
  %31 = load ptr, ptr %pTab30, align 8
  store ptr %31, ptr %pTab, align 8
  %32 = load ptr, ptr %db, align 8
  %33 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 20
  %34 = load ptr, ptr %pSchema, align 8
  %call31 = call i32 @sqlite3SchemaToIndex(ptr noundef %32, ptr noundef %34)
  %conv32 = trunc i32 %call31 to i16
  store i16 %conv32, ptr %iDb, align 2
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load i16, ptr %iDb, align 2
  %conv33 = sext i16 %36 to i32
  call void @sqlite3CodeVerifySchema(ptr noundef %35, i32 noundef %conv33)
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load i16, ptr %iDb, align 2
  %conv34 = sext i16 %38 to i32
  %39 = load ptr, ptr %pTab, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %39, i32 0, i32 7
  %40 = load i32, ptr %tnum, align 8
  %41 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %zName, align 8
  call void @sqlite3TableLock(ptr noundef %37, i32 noundef %conv34, i32 noundef %40, i8 noundef zeroext 0, ptr noundef %42)
  %43 = load i32, ptr %nExpr26, align 4
  %cmp35 = icmp eq i32 %43, 1
  br i1 %cmp35, label %land.lhs.true37, label %if.else

land.lhs.true37:                                  ; preds = %if.then22
  %44 = load ptr, ptr %pEList24, align 8
  %a38 = getelementptr inbounds nuw %struct.ExprList, ptr %44, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a38, i64 0, i64 0
  %pExpr40 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx39, i32 0, i32 0
  %45 = load ptr, ptr %pExpr40, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 9
  %46 = load i16, ptr %iColumn, align 8
  %conv41 = sext i16 %46 to i32
  %cmp42 = icmp slt i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %land.lhs.true37
  %47 = load ptr, ptr %v, align 8
  %call45 = call i32 @sqlite3VdbeAddOp0(ptr noundef %47, i32 noundef 17)
  store i32 %call45, ptr %iAddr, align 4
  %48 = load ptr, ptr %pParse.addr, align 8
  %49 = load i32, ptr %iTab, align 4
  %50 = load i16, ptr %iDb, align 2
  %conv46 = sext i16 %50 to i32
  %51 = load ptr, ptr %pTab, align 8
  call void @sqlite3OpenTable(ptr noundef %48, i32 noundef %49, i32 noundef %conv46, ptr noundef %51, i32 noundef 97)
  store i32 1, ptr %eType, align 4
  %52 = load ptr, ptr %pParse.addr, align 8
  %53 = load ptr, ptr %pTab, align 8
  %zName47 = getelementptr inbounds nuw %struct.Table, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zName47, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %52, i8 noundef zeroext 0, ptr noundef @.str.576, ptr noundef %54)
  %55 = load ptr, ptr %v, align 8
  %56 = load i32, ptr %iAddr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %55, i32 noundef %56)
  br label %if.end191

if.else:                                          ; preds = %land.lhs.true37, %if.then22
  store i32 1, ptr %affinity_ok, align 4
  store i32 0, ptr %i48, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc68, %if.else
  %57 = load i32, ptr %i48, align 4
  %58 = load i32, ptr %nExpr26, align 4
  %cmp50 = icmp slt i32 %57, %58
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond49
  %59 = load i32, ptr %affinity_ok, align 4
  %tobool52 = icmp ne i32 %59, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond49
  %60 = phi i1 [ false, %for.cond49 ], [ %tobool52, %land.rhs ]
  br i1 %60, label %for.body53, label %for.end70

for.body53:                                       ; preds = %land.end
  %61 = load ptr, ptr %pX.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %pLeft, align 8
  %63 = load i32, ptr %i48, align 4
  %call54 = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %62, i32 noundef %63)
  store ptr %call54, ptr %pLhs, align 8
  %64 = load ptr, ptr %pEList24, align 8
  %a55 = getelementptr inbounds nuw %struct.ExprList, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %i48, align 4
  %idxprom56 = sext i32 %65 to i64
  %arrayidx57 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a55, i64 0, i64 %idxprom56
  %pExpr58 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx57, i32 0, i32 0
  %66 = load ptr, ptr %pExpr58, align 8
  %iColumn59 = getelementptr inbounds nuw %struct.Expr, ptr %66, i32 0, i32 9
  %67 = load i16, ptr %iColumn59, align 8
  %conv60 = sext i16 %67 to i32
  store i32 %conv60, ptr %iCol, align 4
  %68 = load ptr, ptr %pTab, align 8
  %69 = load i32, ptr %iCol, align 4
  %call61 = call signext i8 @sqlite3TableColumnAffinity(ptr noundef %68, i32 noundef %69)
  store i8 %call61, ptr %idxaff, align 1
  %70 = load ptr, ptr %pLhs, align 8
  %71 = load i8, ptr %idxaff, align 1
  %call62 = call signext i8 @sqlite3CompareAffinity(ptr noundef %70, i8 noundef signext %71)
  store i8 %call62, ptr %cmpaff, align 1
  %72 = load i8, ptr %cmpaff, align 1
  %conv63 = sext i8 %72 to i32
  switch i32 %conv63, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb64
  ]

sw.bb:                                            ; preds = %for.body53
  br label %sw.epilog

sw.bb64:                                          ; preds = %for.body53
  br label %sw.epilog

sw.default:                                       ; preds = %for.body53
  %73 = load i8, ptr %idxaff, align 1
  %conv65 = sext i8 %73 to i32
  %cmp66 = icmp sge i32 %conv65, 67
  %conv67 = zext i1 %cmp66 to i32
  store i32 %conv67, ptr %affinity_ok, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb64, %sw.bb
  br label %for.inc68

for.inc68:                                        ; preds = %sw.epilog
  %74 = load i32, ptr %i48, align 4
  %inc69 = add nsw i32 %74, 1
  store i32 %inc69, ptr %i48, align 4
  br label %for.cond49, !llvm.loop !8

for.end70:                                        ; preds = %land.end
  %75 = load i32, ptr %affinity_ok, align 4
  %tobool71 = icmp ne i32 %75, 0
  br i1 %tobool71, label %if.then72, label %if.end190

if.then72:                                        ; preds = %for.end70
  %76 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %76, i32 0, i32 2
  %77 = load ptr, ptr %pIndex, align 8
  store ptr %77, ptr %pIdx, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc188, %if.then72
  %78 = load ptr, ptr %pIdx, align 8
  %tobool74 = icmp ne ptr %78, null
  br i1 %tobool74, label %land.rhs75, label %land.end78

land.rhs75:                                       ; preds = %for.cond73
  %79 = load i32, ptr %eType, align 4
  %cmp76 = icmp eq i32 %79, 0
  br label %land.end78

land.end78:                                       ; preds = %land.rhs75, %for.cond73
  %80 = phi i1 [ false, %for.cond73 ], [ %cmp76, %land.rhs75 ]
  br i1 %80, label %for.body79, label %for.end189

for.body79:                                       ; preds = %land.end78
  %81 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %81, i32 0, i32 14
  %82 = load i16, ptr %nColumn, align 8
  %conv80 = zext i16 %82 to i32
  %83 = load i32, ptr %nExpr26, align 4
  %cmp81 = icmp slt i32 %conv80, %83
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body79
  br label %for.inc188

if.end84:                                         ; preds = %for.body79
  %84 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %84, i32 0, i32 9
  %85 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp85 = icmp ne ptr %85, null
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  br label %for.inc188

if.end88:                                         ; preds = %if.end84
  %86 = load ptr, ptr %pIdx, align 8
  %nColumn89 = getelementptr inbounds nuw %struct.Index, ptr %86, i32 0, i32 14
  %87 = load i16, ptr %nColumn89, align 8
  %conv90 = zext i16 %87 to i32
  %cmp91 = icmp sge i32 %conv90, 63
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end88
  br label %for.inc188

if.end94:                                         ; preds = %if.end88
  %88 = load i32, ptr %mustBeUnique, align 4
  %tobool95 = icmp ne i32 %88, 0
  br i1 %tobool95, label %if.then96, label %if.end110

if.then96:                                        ; preds = %if.end94
  %89 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %89, i32 0, i32 13
  %90 = load i16, ptr %nKeyCol, align 2
  %conv97 = zext i16 %90 to i32
  %91 = load i32, ptr %nExpr26, align 4
  %cmp98 = icmp sgt i32 %conv97, %91
  br i1 %cmp98, label %if.then108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then96
  %92 = load ptr, ptr %pIdx, align 8
  %nColumn100 = getelementptr inbounds nuw %struct.Index, ptr %92, i32 0, i32 14
  %93 = load i16, ptr %nColumn100, align 8
  %conv101 = zext i16 %93 to i32
  %94 = load i32, ptr %nExpr26, align 4
  %cmp102 = icmp sgt i32 %conv101, %94
  br i1 %cmp102, label %land.lhs.true104, label %if.end109

land.lhs.true104:                                 ; preds = %lor.lhs.false
  %95 = load ptr, ptr %pIdx, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %95, i32 0, i32 15
  %96 = load i8, ptr %onError, align 2
  %conv105 = zext i8 %96 to i32
  %cmp106 = icmp ne i32 %conv105, 0
  br i1 %cmp106, label %if.end109, label %if.then108

if.then108:                                       ; preds = %land.lhs.true104, %if.then96
  br label %for.inc188

if.end109:                                        ; preds = %land.lhs.true104, %lor.lhs.false
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end94
  store i64 0, ptr %colUsed, align 8
  store i32 0, ptr %i48, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc163, %if.end110
  %97 = load i32, ptr %i48, align 4
  %98 = load i32, ptr %nExpr26, align 4
  %cmp112 = icmp slt i32 %97, %98
  br i1 %cmp112, label %for.body114, label %for.end165

for.body114:                                      ; preds = %for.cond111
  %99 = load ptr, ptr %pX.addr, align 8
  %pLeft116 = getelementptr inbounds nuw %struct.Expr, ptr %99, i32 0, i32 4
  %100 = load ptr, ptr %pLeft116, align 8
  %101 = load i32, ptr %i48, align 4
  %call117 = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %100, i32 noundef %101)
  store ptr %call117, ptr %pLhs115, align 8
  %102 = load ptr, ptr %pEList24, align 8
  %a118 = getelementptr inbounds nuw %struct.ExprList, ptr %102, i32 0, i32 1
  %103 = load i32, ptr %i48, align 4
  %idxprom119 = sext i32 %103 to i64
  %arrayidx120 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a118, i64 0, i64 %idxprom119
  %pExpr121 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx120, i32 0, i32 0
  %104 = load ptr, ptr %pExpr121, align 8
  store ptr %104, ptr %pRhs, align 8
  %105 = load ptr, ptr %pParse.addr, align 8
  %106 = load ptr, ptr %pLhs115, align 8
  %107 = load ptr, ptr %pRhs, align 8
  %call122 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %105, ptr noundef %106, ptr noundef %107)
  store ptr %call122, ptr %pReq, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc147, %for.body114
  %108 = load i32, ptr %j, align 4
  %109 = load i32, ptr %nExpr26, align 4
  %cmp124 = icmp slt i32 %108, %109
  br i1 %cmp124, label %for.body126, label %for.end149

for.body126:                                      ; preds = %for.cond123
  %110 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %110, i32 0, i32 1
  %111 = load ptr, ptr %aiColumn, align 8
  %112 = load i32, ptr %j, align 4
  %idxprom127 = sext i32 %112 to i64
  %arrayidx128 = getelementptr inbounds i16, ptr %111, i64 %idxprom127
  %113 = load i16, ptr %arrayidx128, align 2
  %conv129 = sext i16 %113 to i32
  %114 = load ptr, ptr %pRhs, align 8
  %iColumn130 = getelementptr inbounds nuw %struct.Expr, ptr %114, i32 0, i32 9
  %115 = load i16, ptr %iColumn130, align 8
  %conv131 = sext i16 %115 to i32
  %cmp132 = icmp ne i32 %conv129, %conv131
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %for.body126
  br label %for.inc147

if.end135:                                        ; preds = %for.body126
  %116 = load ptr, ptr %pReq, align 8
  %cmp136 = icmp ne ptr %116, null
  br i1 %cmp136, label %land.lhs.true138, label %if.end146

land.lhs.true138:                                 ; preds = %if.end135
  %117 = load ptr, ptr %pReq, align 8
  %zName139 = getelementptr inbounds nuw %struct.CollSeq, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %zName139, align 8
  %119 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %119, i32 0, i32 8
  %120 = load ptr, ptr %azColl, align 8
  %121 = load i32, ptr %j, align 4
  %idxprom140 = sext i32 %121 to i64
  %arrayidx141 = getelementptr inbounds ptr, ptr %120, i64 %idxprom140
  %122 = load ptr, ptr %arrayidx141, align 8
  %call142 = call i32 @sqlite3StrICmp(ptr noundef %118, ptr noundef %122)
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %land.lhs.true138
  br label %for.inc147

if.end146:                                        ; preds = %land.lhs.true138, %if.end135
  br label %for.end149

for.inc147:                                       ; preds = %if.then145, %if.then134
  %123 = load i32, ptr %j, align 4
  %inc148 = add nsw i32 %123, 1
  store i32 %inc148, ptr %j, align 4
  br label %for.cond123, !llvm.loop !9

for.end149:                                       ; preds = %if.end146, %for.cond123
  %124 = load i32, ptr %j, align 4
  %125 = load i32, ptr %nExpr26, align 4
  %cmp150 = icmp eq i32 %124, %125
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %for.end149
  br label %for.end165

if.end153:                                        ; preds = %for.end149
  %126 = load i32, ptr %j, align 4
  %sh_prom = zext i32 %126 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %mCol, align 8
  %127 = load i64, ptr %mCol, align 8
  %128 = load i64, ptr %colUsed, align 8
  %and154 = and i64 %127, %128
  %tobool155 = icmp ne i64 %and154, 0
  br i1 %tobool155, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end153
  br label %for.end165

if.end157:                                        ; preds = %if.end153
  %129 = load i64, ptr %mCol, align 8
  %130 = load i64, ptr %colUsed, align 8
  %or = or i64 %130, %129
  store i64 %or, ptr %colUsed, align 8
  %131 = load ptr, ptr %aiMap.addr, align 8
  %tobool158 = icmp ne ptr %131, null
  br i1 %tobool158, label %if.then159, label %if.end162

if.then159:                                       ; preds = %if.end157
  %132 = load i32, ptr %j, align 4
  %133 = load ptr, ptr %aiMap.addr, align 8
  %134 = load i32, ptr %i48, align 4
  %idxprom160 = sext i32 %134 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %133, i64 %idxprom160
  store i32 %132, ptr %arrayidx161, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end157
  br label %for.inc163

for.inc163:                                       ; preds = %if.end162
  %135 = load i32, ptr %i48, align 4
  %inc164 = add nsw i32 %135, 1
  store i32 %inc164, ptr %i48, align 4
  br label %for.cond111, !llvm.loop !10

for.end165:                                       ; preds = %if.then156, %if.then152, %for.cond111
  %136 = load i64, ptr %colUsed, align 8
  %137 = load i32, ptr %nExpr26, align 4
  %sh_prom166 = zext i32 %137 to i64
  %shl167 = shl i64 1, %sh_prom166
  %sub = sub i64 %shl167, 1
  %cmp168 = icmp eq i64 %136, %sub
  br i1 %cmp168, label %if.then170, label %if.end187

if.then170:                                       ; preds = %for.end165
  %138 = load ptr, ptr %v, align 8
  %call172 = call i32 @sqlite3VdbeAddOp0(ptr noundef %138, i32 noundef 17)
  store i32 %call172, ptr %iAddr171, align 4
  %139 = load ptr, ptr %pParse.addr, align 8
  %140 = load ptr, ptr %pIdx, align 8
  %zName173 = getelementptr inbounds nuw %struct.Index, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %zName173, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %139, i8 noundef zeroext 0, ptr noundef @.str.577, ptr noundef %141)
  %142 = load ptr, ptr %v, align 8
  %143 = load i32, ptr %iTab, align 4
  %144 = load ptr, ptr %pIdx, align 8
  %tnum174 = getelementptr inbounds nuw %struct.Index, ptr %144, i32 0, i32 11
  %145 = load i32, ptr %tnum174, align 8
  %146 = load i16, ptr %iDb, align 2
  %conv175 = sext i16 %146 to i32
  %call176 = call i32 @sqlite3VdbeAddOp3(ptr noundef %142, i32 noundef 97, i32 noundef %143, i32 noundef %145, i32 noundef %conv175)
  %147 = load ptr, ptr %pParse.addr, align 8
  %148 = load ptr, ptr %pIdx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %147, ptr noundef %148)
  %149 = load ptr, ptr %pIdx, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %149, i32 0, i32 7
  %150 = load ptr, ptr %aSortOrder, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %150, i64 0
  %151 = load i8, ptr %arrayidx177, align 1
  %conv178 = zext i8 %151 to i32
  %add = add nsw i32 3, %conv178
  store i32 %add, ptr %eType, align 4
  %152 = load ptr, ptr %prRhsHasNull.addr, align 8
  %tobool179 = icmp ne ptr %152, null
  br i1 %tobool179, label %if.then180, label %if.end186

if.then180:                                       ; preds = %if.then170
  %153 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %153, i32 0, i32 18
  %154 = load i32, ptr %nMem, align 8
  %inc181 = add nsw i32 %154, 1
  store i32 %inc181, ptr %nMem, align 8
  %155 = load ptr, ptr %prRhsHasNull.addr, align 8
  store i32 %inc181, ptr %155, align 4
  %156 = load i32, ptr %nExpr26, align 4
  %cmp182 = icmp eq i32 %156, 1
  br i1 %cmp182, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.then180
  %157 = load ptr, ptr %v, align 8
  %158 = load i32, ptr %iTab, align 4
  %159 = load ptr, ptr %prRhsHasNull.addr, align 8
  %160 = load i32, ptr %159, align 4
  call void @sqlite3SetHasNullFlag(ptr noundef %157, i32 noundef %158, i32 noundef %160)
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.then180
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.then170
  %161 = load ptr, ptr %v, align 8
  %162 = load i32, ptr %iAddr171, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %161, i32 noundef %162)
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %for.end165
  br label %for.inc188

for.inc188:                                       ; preds = %if.end187, %if.then108, %if.then93, %if.then87, %if.then83
  %163 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %163, i32 0, i32 5
  %164 = load ptr, ptr %pNext, align 8
  store ptr %164, ptr %pIdx, align 8
  br label %for.cond73, !llvm.loop !11

for.end189:                                       ; preds = %land.end78
  br label %if.end190

if.end190:                                        ; preds = %for.end189, %for.end70
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.then44
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %land.lhs.true18, %if.end15
  %165 = load i32, ptr %eType, align 4
  %cmp193 = icmp eq i32 %165, 0
  br i1 %cmp193, label %land.lhs.true195, label %if.end212

land.lhs.true195:                                 ; preds = %if.end192
  %166 = load i32, ptr %inFlags.addr, align 4
  %and196 = and i32 %166, 1
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %land.lhs.true198, label %if.end212

land.lhs.true198:                                 ; preds = %land.lhs.true195
  %167 = load ptr, ptr %pX.addr, align 8
  %flags199 = getelementptr inbounds nuw %struct.Expr, ptr %167, i32 0, i32 2
  %168 = load i32, ptr %flags199, align 4
  %and200 = and i32 %168, 2048
  %cmp201 = icmp ne i32 %and200, 0
  br i1 %cmp201, label %if.end212, label %land.lhs.true203

land.lhs.true203:                                 ; preds = %land.lhs.true198
  %169 = load ptr, ptr %pX.addr, align 8
  %call204 = call i32 @sqlite3InRhsIsConstant(ptr noundef %169)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %lor.lhs.false206, label %if.then211

lor.lhs.false206:                                 ; preds = %land.lhs.true203
  %170 = load ptr, ptr %pX.addr, align 8
  %x207 = getelementptr inbounds nuw %struct.Expr, ptr %170, i32 0, i32 6
  %171 = load ptr, ptr %x207, align 8
  %nExpr208 = getelementptr inbounds nuw %struct.ExprList, ptr %171, i32 0, i32 0
  %172 = load i32, ptr %nExpr208, align 8
  %cmp209 = icmp sle i32 %172, 2
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %lor.lhs.false206, %land.lhs.true203
  store i32 5, ptr %eType, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %lor.lhs.false206, %land.lhs.true198, %land.lhs.true195, %if.end192
  %173 = load i32, ptr %eType, align 4
  %cmp213 = icmp eq i32 %173, 0
  br i1 %cmp213, label %if.then215, label %if.end231

if.then215:                                       ; preds = %if.end212
  %174 = load ptr, ptr %pParse.addr, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %174, i32 0, i32 39
  %175 = load i32, ptr %nQueryLoop, align 4
  store i32 %175, ptr %savedNQueryLoop, align 4
  store i32 0, ptr %rMayHaveNull, align 4
  store i32 2, ptr %eType, align 4
  %176 = load i32, ptr %inFlags.addr, align 4
  %and216 = and i32 %176, 4
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then218, label %if.else220

if.then218:                                       ; preds = %if.then215
  %177 = load ptr, ptr %pParse.addr, align 8
  %nQueryLoop219 = getelementptr inbounds nuw %struct.Parse, ptr %177, i32 0, i32 39
  store i32 0, ptr %nQueryLoop219, align 4
  br label %if.end226

if.else220:                                       ; preds = %if.then215
  %178 = load ptr, ptr %prRhsHasNull.addr, align 8
  %tobool221 = icmp ne ptr %178, null
  br i1 %tobool221, label %if.then222, label %if.end225

if.then222:                                       ; preds = %if.else220
  %179 = load ptr, ptr %pParse.addr, align 8
  %nMem223 = getelementptr inbounds nuw %struct.Parse, ptr %179, i32 0, i32 18
  %180 = load i32, ptr %nMem223, align 8
  %inc224 = add nsw i32 %180, 1
  store i32 %inc224, ptr %nMem223, align 8
  store i32 %inc224, ptr %rMayHaveNull, align 4
  %181 = load ptr, ptr %prRhsHasNull.addr, align 8
  store i32 %inc224, ptr %181, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then222, %if.else220
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then218
  %182 = load ptr, ptr %pParse.addr, align 8
  %183 = load ptr, ptr %pX.addr, align 8
  %184 = load i32, ptr %iTab, align 4
  call void @sqlite3CodeRhsOfIN(ptr noundef %182, ptr noundef %183, i32 noundef %184)
  %185 = load i32, ptr %rMayHaveNull, align 4
  %tobool227 = icmp ne i32 %185, 0
  br i1 %tobool227, label %if.then228, label %if.end229

if.then228:                                       ; preds = %if.end226
  %186 = load ptr, ptr %v, align 8
  %187 = load i32, ptr %iTab, align 4
  %188 = load i32, ptr %rMayHaveNull, align 4
  call void @sqlite3SetHasNullFlag(ptr noundef %186, i32 noundef %187, i32 noundef %188)
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.end226
  %189 = load i32, ptr %savedNQueryLoop, align 4
  %190 = load ptr, ptr %pParse.addr, align 8
  %nQueryLoop230 = getelementptr inbounds nuw %struct.Parse, ptr %190, i32 0, i32 39
  store i32 %189, ptr %nQueryLoop230, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.end229, %if.end212
  %191 = load ptr, ptr %aiMap.addr, align 8
  %tobool232 = icmp ne ptr %191, null
  br i1 %tobool232, label %land.lhs.true233, label %if.end252

land.lhs.true233:                                 ; preds = %if.end231
  %192 = load i32, ptr %eType, align 4
  %cmp234 = icmp ne i32 %192, 3
  br i1 %cmp234, label %land.lhs.true236, label %if.end252

land.lhs.true236:                                 ; preds = %land.lhs.true233
  %193 = load i32, ptr %eType, align 4
  %cmp237 = icmp ne i32 %193, 4
  br i1 %cmp237, label %if.then239, label %if.end252

if.then239:                                       ; preds = %land.lhs.true236
  %194 = load ptr, ptr %pX.addr, align 8
  %pLeft241 = getelementptr inbounds nuw %struct.Expr, ptr %194, i32 0, i32 4
  %195 = load ptr, ptr %pLeft241, align 8
  %call242 = call i32 @sqlite3ExprVectorSize(ptr noundef %195)
  store i32 %call242, ptr %n, align 4
  store i32 0, ptr %i240, align 4
  br label %for.cond243

for.cond243:                                      ; preds = %for.inc249, %if.then239
  %196 = load i32, ptr %i240, align 4
  %197 = load i32, ptr %n, align 4
  %cmp244 = icmp slt i32 %196, %197
  br i1 %cmp244, label %for.body246, label %for.end251

for.body246:                                      ; preds = %for.cond243
  %198 = load i32, ptr %i240, align 4
  %199 = load ptr, ptr %aiMap.addr, align 8
  %200 = load i32, ptr %i240, align 4
  %idxprom247 = sext i32 %200 to i64
  %arrayidx248 = getelementptr inbounds i32, ptr %199, i64 %idxprom247
  store i32 %198, ptr %arrayidx248, align 4
  br label %for.inc249

for.inc249:                                       ; preds = %for.body246
  %201 = load i32, ptr %i240, align 4
  %inc250 = add nsw i32 %201, 1
  store i32 %inc250, ptr %i240, align 4
  br label %for.cond243, !llvm.loop !12

for.end251:                                       ; preds = %for.cond243
  br label %if.end252

if.end252:                                        ; preds = %for.end251, %land.lhs.true236, %land.lhs.true233, %if.end231
  %202 = load i32, ptr %iTab, align 4
  %203 = load ptr, ptr %piTab.addr, align 8
  store i32 %202, ptr %203, align 4
  %204 = load i32, ptr %eType, align 4
  ret i32 %204
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCanBeNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @isCandidateForInOpt(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SetHasNullFlag(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3InRhsIsConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeRhsOfIN(ptr noundef, ptr noundef, i32 noundef) #0

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
