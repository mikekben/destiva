; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
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
%struct.anon.12 = type { i16, i16 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

@.str.635 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.739 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.740 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.741 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3KeyInfoUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoAlloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeEndCoroutine(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveOrderGroupBy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @selectOpName(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplainPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeLimitRegisters(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @multiSelectOrderBy(ptr noundef %pParse, ptr noundef %p, ptr noundef %pDest) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pPrior = alloca ptr, align 8
  %v = alloca ptr, align 8
  %destA = alloca %struct.SelectDest, align 8
  %destB = alloca %struct.SelectDest, align 8
  %regAddrA = alloca i32, align 4
  %regAddrB = alloca i32, align 4
  %addrSelectA = alloca i32, align 4
  %addrSelectB = alloca i32, align 4
  %regOutA = alloca i32, align 4
  %regOutB = alloca i32, align 4
  %addrOutA = alloca i32, align 4
  %addrOutB = alloca i32, align 4
  %addrEofA = alloca i32, align 4
  %addrEofA_noB = alloca i32, align 4
  %addrEofB = alloca i32, align 4
  %addrAltB = alloca i32, align 4
  %addrAeqB = alloca i32, align 4
  %addrAgtB = alloca i32, align 4
  %regLimitA = alloca i32, align 4
  %regLimitB = alloca i32, align 4
  %regPrev = alloca i32, align 4
  %savedLimit = alloca i32, align 4
  %savedOffset = alloca i32, align 4
  %labelCmpr = alloca i32, align 4
  %labelEnd = alloca i32, align 4
  %addr1 = alloca i32, align 4
  %op = alloca i32, align 4
  %pKeyDup = alloca ptr, align 8
  %pKeyMerge = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pOrderBy = alloca ptr, align 8
  %nOrderBy = alloca i32, align 4
  %aPermute = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pItem48 = alloca ptr, align 8
  %nExpr75 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 0, ptr %addrOutB, align 4
  store ptr null, ptr %pKeyDup, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %4)
  store i32 %call, ptr %labelEnd, align 4
  %5 = load ptr, ptr %pParse.addr, align 8
  %call2 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %5)
  store i32 %call2, ptr %labelCmpr, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %op3 = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %op3, align 8
  %conv = zext i8 %7 to i32
  store i32 %conv, ptr %op, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %pPrior4 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %pPrior4, align 8
  store ptr %9, ptr %pPrior, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %pOrderBy5 = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pOrderBy5, align 8
  store ptr %11, ptr %pOrderBy, align 8
  %12 = load ptr, ptr %pOrderBy, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nExpr, align 8
  store i32 %13, ptr %nOrderBy, align 4
  %14 = load i32, ptr %op, align 4
  %cmp = icmp ne i32 %14, 131
  br i1 %cmp, label %if.then, label %if.end43

if.then:                                          ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %if.then
  %15 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 19
  %16 = load i8, ptr %mallocFailed, align 1
  %conv7 = zext i8 %16 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pEList, align 8
  %nExpr10 = getelementptr inbounds nuw %struct.ExprList, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %nExpr10, align 8
  %cmp11 = icmp sle i32 %17, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ]
  br i1 %21, label %for.body, label %for.end42

for.body:                                         ; preds = %land.end
  store i32 0, ptr %j, align 4
  %22 = load ptr, ptr %pOrderBy, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %22, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %nOrderBy, align 4
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond13
  %25 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %25, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %26 = load i16, ptr %iOrderByCol, align 4
  %conv17 = zext i16 %26 to i32
  %27 = load i32, ptr %i, align 4
  %cmp18 = icmp eq i32 %conv17, %27
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %for.body16
  br label %for.end

if.end:                                           ; preds = %for.body16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %j, align 4
  %29 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond13, !llvm.loop !6

for.end:                                          ; preds = %if.then20, %for.cond13
  %30 = load i32, ptr %j, align 4
  %31 = load i32, ptr %nOrderBy, align 4
  %cmp21 = icmp eq i32 %30, %31
  br i1 %cmp21, label %if.then23, label %if.end39

if.then23:                                        ; preds = %for.end
  %32 = load ptr, ptr %db, align 8
  %call24 = call ptr @sqlite3Expr(ptr noundef %32, i32 noundef 150, ptr noundef null)
  store ptr %call24, ptr %pNew, align 8
  %33 = load ptr, ptr %pNew, align 8
  %cmp25 = icmp eq ptr %33, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  store i32 7, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then23
  %34 = load ptr, ptr %pNew, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %flags, align 4
  %or = or i32 %35, 1024
  store i32 %or, ptr %flags, align 4
  %36 = load i32, ptr %i, align 4
  %37 = load ptr, ptr %pNew, align 8
  %u29 = getelementptr inbounds nuw %struct.Expr, ptr %37, i32 0, i32 3
  store i32 %36, ptr %u29, align 8
  %38 = load ptr, ptr %pParse.addr, align 8
  %39 = load ptr, ptr %pOrderBy, align 8
  %40 = load ptr, ptr %pNew, align 8
  %call30 = call ptr @sqlite3ExprListAppend(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  store ptr %call30, ptr %pOrderBy, align 8
  %41 = load ptr, ptr %p.addr, align 8
  %pOrderBy31 = getelementptr inbounds nuw %struct.Select, ptr %41, i32 0, i32 12
  store ptr %call30, ptr %pOrderBy31, align 8
  %42 = load ptr, ptr %pOrderBy, align 8
  %tobool = icmp ne ptr %42, null
  br i1 %tobool, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end28
  %43 = load i32, ptr %i, align 4
  %conv33 = trunc i32 %43 to i16
  %44 = load ptr, ptr %pOrderBy, align 8
  %a34 = getelementptr inbounds nuw %struct.ExprList, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %nOrderBy, align 4
  %inc35 = add nsw i32 %45, 1
  store i32 %inc35, ptr %nOrderBy, align 4
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a34, i64 0, i64 %idxprom
  %u36 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 5
  %iOrderByCol37 = getelementptr inbounds nuw %struct.anon.12, ptr %u36, i32 0, i32 0
  store i16 %conv33, ptr %iOrderByCol37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end28
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %for.end
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %46 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %46, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end42:                                        ; preds = %land.end
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %entry
  %47 = load ptr, ptr %db, align 8
  %48 = load i32, ptr %nOrderBy, align 4
  %add = add nsw i32 %48, 1
  %conv44 = sext i32 %add to i64
  %mul = mul i64 4, %conv44
  %call45 = call ptr @sqlite3DbMallocRawNN(ptr noundef %47, i64 noundef %mul)
  store ptr %call45, ptr %aPermute, align 8
  %49 = load ptr, ptr %aPermute, align 8
  %tobool46 = icmp ne ptr %49, null
  br i1 %tobool46, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end43
  %50 = load i32, ptr %nOrderBy, align 4
  %51 = load ptr, ptr %aPermute, align 8
  %arrayidx49 = getelementptr inbounds i32, ptr %51, i64 0
  store i32 %50, ptr %arrayidx49, align 4
  store i32 1, ptr %i, align 4
  %52 = load ptr, ptr %pOrderBy, align 8
  %a50 = getelementptr inbounds nuw %struct.ExprList, ptr %52, i32 0, i32 1
  %arraydecay51 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a50, i64 0, i64 0
  store ptr %arraydecay51, ptr %pItem48, align 8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc61, %if.then47
  %53 = load i32, ptr %i, align 4
  %54 = load i32, ptr %nOrderBy, align 4
  %cmp53 = icmp sle i32 %53, %54
  br i1 %cmp53, label %for.body55, label %for.end64

for.body55:                                       ; preds = %for.cond52
  %55 = load ptr, ptr %pItem48, align 8
  %u56 = getelementptr inbounds nuw %struct.ExprList_item, ptr %55, i32 0, i32 5
  %iOrderByCol57 = getelementptr inbounds nuw %struct.anon.12, ptr %u56, i32 0, i32 0
  %56 = load i16, ptr %iOrderByCol57, align 4
  %conv58 = zext i16 %56 to i32
  %sub = sub nsw i32 %conv58, 1
  %57 = load ptr, ptr %aPermute, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %58 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %57, i64 %idxprom59
  store i32 %sub, ptr %arrayidx60, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %for.body55
  %59 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %59, 1
  store i32 %inc62, ptr %i, align 4
  %60 = load ptr, ptr %pItem48, align 8
  %incdec.ptr63 = getelementptr inbounds nuw %struct.ExprList_item, ptr %60, i32 1
  store ptr %incdec.ptr63, ptr %pItem48, align 8
  br label %for.cond52, !llvm.loop !9

for.end64:                                        ; preds = %for.cond52
  %61 = load ptr, ptr %pParse.addr, align 8
  %62 = load ptr, ptr %p.addr, align 8
  %call65 = call ptr @multiSelectOrderByKeyInfo(ptr noundef %61, ptr noundef %62, i32 noundef 1)
  store ptr %call65, ptr %pKeyMerge, align 8
  br label %if.end66

if.else:                                          ; preds = %if.end43
  store ptr null, ptr %pKeyMerge, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %for.end64
  %63 = load ptr, ptr %pOrderBy, align 8
  %64 = load ptr, ptr %p.addr, align 8
  %pOrderBy67 = getelementptr inbounds nuw %struct.Select, ptr %64, i32 0, i32 12
  store ptr %63, ptr %pOrderBy67, align 8
  %65 = load ptr, ptr %pParse.addr, align 8
  %db68 = getelementptr inbounds nuw %struct.Parse, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %db68, align 8
  %67 = load ptr, ptr %pOrderBy, align 8
  %call69 = call ptr @sqlite3ExprListDup(ptr noundef %66, ptr noundef %67, i32 noundef 0)
  %68 = load ptr, ptr %pPrior, align 8
  %pOrderBy70 = getelementptr inbounds nuw %struct.Select, ptr %68, i32 0, i32 12
  store ptr %call69, ptr %pOrderBy70, align 8
  %69 = load i32, ptr %op, align 4
  %cmp71 = icmp eq i32 %69, 131
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.end66
  store i32 0, ptr %regPrev, align 4
  br label %if.end99

if.else74:                                        ; preds = %if.end66
  %70 = load ptr, ptr %p.addr, align 8
  %pEList76 = getelementptr inbounds nuw %struct.Select, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %pEList76, align 8
  %nExpr77 = getelementptr inbounds nuw %struct.ExprList, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %nExpr77, align 8
  store i32 %72, ptr %nExpr75, align 4
  %73 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %73, i32 0, i32 18
  %74 = load i32, ptr %nMem, align 8
  %add78 = add nsw i32 %74, 1
  store i32 %add78, ptr %regPrev, align 4
  %75 = load i32, ptr %nExpr75, align 4
  %add79 = add nsw i32 %75, 1
  %76 = load ptr, ptr %pParse.addr, align 8
  %nMem80 = getelementptr inbounds nuw %struct.Parse, ptr %76, i32 0, i32 18
  %77 = load i32, ptr %nMem80, align 8
  %add81 = add nsw i32 %77, %add79
  store i32 %add81, ptr %nMem80, align 8
  %78 = load ptr, ptr %v, align 8
  %79 = load i32, ptr %regPrev, align 4
  %call82 = call i32 @sqlite3VdbeAddOp2(ptr noundef %78, i32 noundef 70, i32 noundef 0, i32 noundef %79)
  %80 = load ptr, ptr %db, align 8
  %81 = load i32, ptr %nExpr75, align 4
  %call83 = call ptr @sqlite3KeyInfoAlloc(ptr noundef %80, i32 noundef %81, i32 noundef 1)
  store ptr %call83, ptr %pKeyDup, align 8
  %82 = load ptr, ptr %pKeyDup, align 8
  %tobool84 = icmp ne ptr %82, null
  br i1 %tobool84, label %if.then85, label %if.end98

if.then85:                                        ; preds = %if.else74
  store i32 0, ptr %i, align 4
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc95, %if.then85
  %83 = load i32, ptr %i, align 4
  %84 = load i32, ptr %nExpr75, align 4
  %cmp87 = icmp slt i32 %83, %84
  br i1 %cmp87, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond86
  %85 = load ptr, ptr %pParse.addr, align 8
  %86 = load ptr, ptr %p.addr, align 8
  %87 = load i32, ptr %i, align 4
  %call90 = call ptr @multiSelectCollSeq(ptr noundef %85, ptr noundef %86, i32 noundef %87)
  %88 = load ptr, ptr %pKeyDup, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %88, i32 0, i32 6
  %89 = load i32, ptr %i, align 4
  %idxprom91 = sext i32 %89 to i64
  %arrayidx92 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom91
  store ptr %call90, ptr %arrayidx92, align 8
  %90 = load ptr, ptr %pKeyDup, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %90, i32 0, i32 5
  %91 = load ptr, ptr %aSortFlags, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom93 = sext i32 %92 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %91, i64 %idxprom93
  store i8 0, ptr %arrayidx94, align 1
  br label %for.inc95

for.inc95:                                        ; preds = %for.body89
  %93 = load i32, ptr %i, align 4
  %inc96 = add nsw i32 %93, 1
  store i32 %inc96, ptr %i, align 4
  br label %for.cond86, !llvm.loop !10

for.end97:                                        ; preds = %for.cond86
  br label %if.end98

if.end98:                                         ; preds = %for.end97, %if.else74
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then73
  %94 = load ptr, ptr %p.addr, align 8
  %pPrior100 = getelementptr inbounds nuw %struct.Select, ptr %94, i32 0, i32 13
  store ptr null, ptr %pPrior100, align 8
  %95 = load ptr, ptr %pPrior, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %95, i32 0, i32 14
  store ptr null, ptr %pNext, align 8
  %96 = load ptr, ptr %pParse.addr, align 8
  %97 = load ptr, ptr %p.addr, align 8
  %98 = load ptr, ptr %p.addr, align 8
  %pOrderBy101 = getelementptr inbounds nuw %struct.Select, ptr %98, i32 0, i32 12
  %99 = load ptr, ptr %pOrderBy101, align 8
  %call102 = call i32 @sqlite3ResolveOrderGroupBy(ptr noundef %96, ptr noundef %97, ptr noundef %99, ptr noundef @.str.635)
  %100 = load ptr, ptr %pPrior, align 8
  %pPrior103 = getelementptr inbounds nuw %struct.Select, ptr %100, i32 0, i32 13
  %101 = load ptr, ptr %pPrior103, align 8
  %cmp104 = icmp eq ptr %101, null
  br i1 %cmp104, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.end99
  %102 = load ptr, ptr %pParse.addr, align 8
  %103 = load ptr, ptr %pPrior, align 8
  %104 = load ptr, ptr %pPrior, align 8
  %pOrderBy107 = getelementptr inbounds nuw %struct.Select, ptr %104, i32 0, i32 12
  %105 = load ptr, ptr %pOrderBy107, align 8
  %call108 = call i32 @sqlite3ResolveOrderGroupBy(ptr noundef %102, ptr noundef %103, ptr noundef %105, ptr noundef @.str.635)
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end99
  %106 = load ptr, ptr %pParse.addr, align 8
  %107 = load ptr, ptr %p.addr, align 8
  %108 = load i32, ptr %labelEnd, align 4
  call void @computeLimitRegisters(ptr noundef %106, ptr noundef %107, i32 noundef %108)
  %109 = load ptr, ptr %p.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %109, i32 0, i32 4
  %110 = load i32, ptr %iLimit, align 8
  %tobool110 = icmp ne i32 %110, 0
  br i1 %tobool110, label %land.lhs.true, label %if.else124

land.lhs.true:                                    ; preds = %if.end109
  %111 = load i32, ptr %op, align 4
  %cmp111 = icmp eq i32 %111, 131
  br i1 %cmp111, label %if.then113, label %if.else124

if.then113:                                       ; preds = %land.lhs.true
  %112 = load ptr, ptr %pParse.addr, align 8
  %nMem114 = getelementptr inbounds nuw %struct.Parse, ptr %112, i32 0, i32 18
  %113 = load i32, ptr %nMem114, align 8
  %inc115 = add nsw i32 %113, 1
  store i32 %inc115, ptr %nMem114, align 8
  store i32 %inc115, ptr %regLimitA, align 4
  %114 = load ptr, ptr %pParse.addr, align 8
  %nMem116 = getelementptr inbounds nuw %struct.Parse, ptr %114, i32 0, i32 18
  %115 = load i32, ptr %nMem116, align 8
  %inc117 = add nsw i32 %115, 1
  store i32 %inc117, ptr %nMem116, align 8
  store i32 %inc117, ptr %regLimitB, align 4
  %116 = load ptr, ptr %v, align 8
  %117 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %117, i32 0, i32 5
  %118 = load i32, ptr %iOffset, align 4
  %tobool118 = icmp ne i32 %118, 0
  br i1 %tobool118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then113
  %119 = load ptr, ptr %p.addr, align 8
  %iOffset119 = getelementptr inbounds nuw %struct.Select, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %iOffset119, align 4
  %add120 = add nsw i32 %120, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then113
  %121 = load ptr, ptr %p.addr, align 8
  %iLimit121 = getelementptr inbounds nuw %struct.Select, ptr %121, i32 0, i32 4
  %122 = load i32, ptr %iLimit121, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add120, %cond.true ], [ %122, %cond.false ]
  %123 = load i32, ptr %regLimitA, align 4
  %call122 = call i32 @sqlite3VdbeAddOp2(ptr noundef %116, i32 noundef 78, i32 noundef %cond, i32 noundef %123)
  %124 = load ptr, ptr %v, align 8
  %125 = load i32, ptr %regLimitA, align 4
  %126 = load i32, ptr %regLimitB, align 4
  %call123 = call i32 @sqlite3VdbeAddOp2(ptr noundef %124, i32 noundef 78, i32 noundef %125, i32 noundef %126)
  br label %if.end125

if.else124:                                       ; preds = %land.lhs.true, %if.end109
  store i32 0, ptr %regLimitB, align 4
  store i32 0, ptr %regLimitA, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %cond.end
  %127 = load ptr, ptr %db, align 8
  %128 = load ptr, ptr %p.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %128, i32 0, i32 15
  %129 = load ptr, ptr %pLimit, align 8
  call void @sqlite3ExprDelete(ptr noundef %127, ptr noundef %129)
  %130 = load ptr, ptr %p.addr, align 8
  %pLimit126 = getelementptr inbounds nuw %struct.Select, ptr %130, i32 0, i32 15
  store ptr null, ptr %pLimit126, align 8
  %131 = load ptr, ptr %pParse.addr, align 8
  %nMem127 = getelementptr inbounds nuw %struct.Parse, ptr %131, i32 0, i32 18
  %132 = load i32, ptr %nMem127, align 8
  %inc128 = add nsw i32 %132, 1
  store i32 %inc128, ptr %nMem127, align 8
  store i32 %inc128, ptr %regAddrA, align 4
  %133 = load ptr, ptr %pParse.addr, align 8
  %nMem129 = getelementptr inbounds nuw %struct.Parse, ptr %133, i32 0, i32 18
  %134 = load i32, ptr %nMem129, align 8
  %inc130 = add nsw i32 %134, 1
  store i32 %inc130, ptr %nMem129, align 8
  store i32 %inc130, ptr %regAddrB, align 4
  %135 = load ptr, ptr %pParse.addr, align 8
  %nMem131 = getelementptr inbounds nuw %struct.Parse, ptr %135, i32 0, i32 18
  %136 = load i32, ptr %nMem131, align 8
  %inc132 = add nsw i32 %136, 1
  store i32 %inc132, ptr %nMem131, align 8
  store i32 %inc132, ptr %regOutA, align 4
  %137 = load ptr, ptr %pParse.addr, align 8
  %nMem133 = getelementptr inbounds nuw %struct.Parse, ptr %137, i32 0, i32 18
  %138 = load i32, ptr %nMem133, align 8
  %inc134 = add nsw i32 %138, 1
  store i32 %inc134, ptr %nMem133, align 8
  store i32 %inc134, ptr %regOutB, align 4
  %139 = load i32, ptr %regAddrA, align 4
  call void @sqlite3SelectDestInit(ptr noundef %destA, i32 noundef 13, i32 noundef %139)
  %140 = load i32, ptr %regAddrB, align 4
  call void @sqlite3SelectDestInit(ptr noundef %destB, i32 noundef 13, i32 noundef %140)
  %141 = load ptr, ptr %pParse.addr, align 8
  %142 = load ptr, ptr %p.addr, align 8
  %op135 = getelementptr inbounds nuw %struct.Select, ptr %142, i32 0, i32 1
  %143 = load i8, ptr %op135, align 8
  %conv136 = zext i8 %143 to i32
  %call137 = call ptr @selectOpName(i32 noundef %conv136)
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %141, i8 noundef zeroext 1, ptr noundef @.str.739, ptr noundef %call137)
  %144 = load ptr, ptr %v, align 8
  %call138 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %144)
  %add139 = add nsw i32 %call138, 1
  store i32 %add139, ptr %addrSelectA, align 4
  %145 = load ptr, ptr %v, align 8
  %146 = load i32, ptr %regAddrA, align 4
  %147 = load i32, ptr %addrSelectA, align 4
  %call140 = call i32 @sqlite3VdbeAddOp3(ptr noundef %145, i32 noundef 13, i32 noundef %146, i32 noundef 0, i32 noundef %147)
  store i32 %call140, ptr %addr1, align 4
  %148 = load i32, ptr %regLimitA, align 4
  %149 = load ptr, ptr %pPrior, align 8
  %iLimit141 = getelementptr inbounds nuw %struct.Select, ptr %149, i32 0, i32 4
  store i32 %148, ptr %iLimit141, align 8
  %150 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %150, i8 noundef zeroext 1, ptr noundef @.str.740)
  %151 = load ptr, ptr %pParse.addr, align 8
  %152 = load ptr, ptr %pPrior, align 8
  %call142 = call i32 @sqlite3Select(ptr noundef %151, ptr noundef %152, ptr noundef %destA)
  %153 = load ptr, ptr %v, align 8
  %154 = load i32, ptr %regAddrA, align 4
  call void @sqlite3VdbeEndCoroutine(ptr noundef %153, i32 noundef %154)
  %155 = load ptr, ptr %v, align 8
  %156 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %155, i32 noundef %156)
  %157 = load ptr, ptr %v, align 8
  %call143 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %157)
  %add144 = add nsw i32 %call143, 1
  store i32 %add144, ptr %addrSelectB, align 4
  %158 = load ptr, ptr %v, align 8
  %159 = load i32, ptr %regAddrB, align 4
  %160 = load i32, ptr %addrSelectB, align 4
  %call145 = call i32 @sqlite3VdbeAddOp3(ptr noundef %158, i32 noundef 13, i32 noundef %159, i32 noundef 0, i32 noundef %160)
  store i32 %call145, ptr %addr1, align 4
  %161 = load ptr, ptr %p.addr, align 8
  %iLimit146 = getelementptr inbounds nuw %struct.Select, ptr %161, i32 0, i32 4
  %162 = load i32, ptr %iLimit146, align 8
  store i32 %162, ptr %savedLimit, align 4
  %163 = load ptr, ptr %p.addr, align 8
  %iOffset147 = getelementptr inbounds nuw %struct.Select, ptr %163, i32 0, i32 5
  %164 = load i32, ptr %iOffset147, align 4
  store i32 %164, ptr %savedOffset, align 4
  %165 = load i32, ptr %regLimitB, align 4
  %166 = load ptr, ptr %p.addr, align 8
  %iLimit148 = getelementptr inbounds nuw %struct.Select, ptr %166, i32 0, i32 4
  store i32 %165, ptr %iLimit148, align 8
  %167 = load ptr, ptr %p.addr, align 8
  %iOffset149 = getelementptr inbounds nuw %struct.Select, ptr %167, i32 0, i32 5
  store i32 0, ptr %iOffset149, align 4
  %168 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %168, i8 noundef zeroext 1, ptr noundef @.str.741)
  %169 = load ptr, ptr %pParse.addr, align 8
  %170 = load ptr, ptr %p.addr, align 8
  %call150 = call i32 @sqlite3Select(ptr noundef %169, ptr noundef %170, ptr noundef %destB)
  %171 = load i32, ptr %savedLimit, align 4
  %172 = load ptr, ptr %p.addr, align 8
  %iLimit151 = getelementptr inbounds nuw %struct.Select, ptr %172, i32 0, i32 4
  store i32 %171, ptr %iLimit151, align 8
  %173 = load i32, ptr %savedOffset, align 4
  %174 = load ptr, ptr %p.addr, align 8
  %iOffset152 = getelementptr inbounds nuw %struct.Select, ptr %174, i32 0, i32 5
  store i32 %173, ptr %iOffset152, align 4
  %175 = load ptr, ptr %v, align 8
  %176 = load i32, ptr %regAddrB, align 4
  call void @sqlite3VdbeEndCoroutine(ptr noundef %175, i32 noundef %176)
  %177 = load ptr, ptr %pParse.addr, align 8
  %178 = load ptr, ptr %p.addr, align 8
  %179 = load ptr, ptr %pDest.addr, align 8
  %180 = load i32, ptr %regOutA, align 4
  %181 = load i32, ptr %regPrev, align 4
  %182 = load ptr, ptr %pKeyDup, align 8
  %183 = load i32, ptr %labelEnd, align 4
  %call153 = call i32 @generateOutputSubroutine(ptr noundef %177, ptr noundef %178, ptr noundef %destA, ptr noundef %179, i32 noundef %180, i32 noundef %181, ptr noundef %182, i32 noundef %183)
  store i32 %call153, ptr %addrOutA, align 4
  %184 = load i32, ptr %op, align 4
  %cmp154 = icmp eq i32 %184, 131
  br i1 %cmp154, label %if.then158, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end125
  %185 = load i32, ptr %op, align 4
  %cmp156 = icmp eq i32 %185, 130
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %lor.lhs.false, %if.end125
  %186 = load ptr, ptr %pParse.addr, align 8
  %187 = load ptr, ptr %p.addr, align 8
  %188 = load ptr, ptr %pDest.addr, align 8
  %189 = load i32, ptr %regOutB, align 4
  %190 = load i32, ptr %regPrev, align 4
  %191 = load ptr, ptr %pKeyDup, align 8
  %192 = load i32, ptr %labelEnd, align 4
  %call159 = call i32 @generateOutputSubroutine(ptr noundef %186, ptr noundef %187, ptr noundef %destB, ptr noundef %188, i32 noundef %189, i32 noundef %190, ptr noundef %191, i32 noundef %192)
  store i32 %call159, ptr %addrOutB, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %lor.lhs.false
  %193 = load ptr, ptr %pKeyDup, align 8
  call void @sqlite3KeyInfoUnref(ptr noundef %193)
  %194 = load i32, ptr %op, align 4
  %cmp161 = icmp eq i32 %194, 132
  br i1 %cmp161, label %if.then166, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %if.end160
  %195 = load i32, ptr %op, align 4
  %cmp164 = icmp eq i32 %195, 133
  br i1 %cmp164, label %if.then166, label %if.else167

if.then166:                                       ; preds = %lor.lhs.false163, %if.end160
  %196 = load i32, ptr %labelEnd, align 4
  store i32 %196, ptr %addrEofA, align 4
  store i32 %196, ptr %addrEofA_noB, align 4
  br label %if.end174

if.else167:                                       ; preds = %lor.lhs.false163
  %197 = load ptr, ptr %v, align 8
  %198 = load i32, ptr %regOutB, align 4
  %199 = load i32, ptr %addrOutB, align 4
  %call168 = call i32 @sqlite3VdbeAddOp2(ptr noundef %197, i32 noundef 12, i32 noundef %198, i32 noundef %199)
  store i32 %call168, ptr %addrEofA, align 4
  %200 = load ptr, ptr %v, align 8
  %201 = load i32, ptr %regAddrB, align 4
  %202 = load i32, ptr %labelEnd, align 4
  %call169 = call i32 @sqlite3VdbeAddOp2(ptr noundef %200, i32 noundef 14, i32 noundef %201, i32 noundef %202)
  store i32 %call169, ptr %addrEofA_noB, align 4
  %203 = load ptr, ptr %v, align 8
  %204 = load i32, ptr %addrEofA, align 4
  %call170 = call i32 @sqlite3VdbeGoto(ptr noundef %203, i32 noundef %204)
  %205 = load ptr, ptr %p.addr, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %205, i32 0, i32 2
  %206 = load i16, ptr %nSelectRow, align 2
  %207 = load ptr, ptr %pPrior, align 8
  %nSelectRow171 = getelementptr inbounds nuw %struct.Select, ptr %207, i32 0, i32 2
  %208 = load i16, ptr %nSelectRow171, align 2
  %call172 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %206, i16 noundef signext %208)
  %209 = load ptr, ptr %p.addr, align 8
  %nSelectRow173 = getelementptr inbounds nuw %struct.Select, ptr %209, i32 0, i32 2
  store i16 %call172, ptr %nSelectRow173, align 2
  br label %if.end174

if.end174:                                        ; preds = %if.else167, %if.then166
  %210 = load i32, ptr %op, align 4
  %cmp175 = icmp eq i32 %210, 133
  br i1 %cmp175, label %if.then177, label %if.else188

if.then177:                                       ; preds = %if.end174
  %211 = load i32, ptr %addrEofA, align 4
  store i32 %211, ptr %addrEofB, align 4
  %212 = load ptr, ptr %p.addr, align 8
  %nSelectRow178 = getelementptr inbounds nuw %struct.Select, ptr %212, i32 0, i32 2
  %213 = load i16, ptr %nSelectRow178, align 2
  %conv179 = sext i16 %213 to i32
  %214 = load ptr, ptr %pPrior, align 8
  %nSelectRow180 = getelementptr inbounds nuw %struct.Select, ptr %214, i32 0, i32 2
  %215 = load i16, ptr %nSelectRow180, align 2
  %conv181 = sext i16 %215 to i32
  %cmp182 = icmp sgt i32 %conv179, %conv181
  br i1 %cmp182, label %if.then184, label %if.end187

if.then184:                                       ; preds = %if.then177
  %216 = load ptr, ptr %pPrior, align 8
  %nSelectRow185 = getelementptr inbounds nuw %struct.Select, ptr %216, i32 0, i32 2
  %217 = load i16, ptr %nSelectRow185, align 2
  %218 = load ptr, ptr %p.addr, align 8
  %nSelectRow186 = getelementptr inbounds nuw %struct.Select, ptr %218, i32 0, i32 2
  store i16 %217, ptr %nSelectRow186, align 2
  br label %if.end187

if.end187:                                        ; preds = %if.then184, %if.then177
  br label %if.end192

if.else188:                                       ; preds = %if.end174
  %219 = load ptr, ptr %v, align 8
  %220 = load i32, ptr %regOutA, align 4
  %221 = load i32, ptr %addrOutA, align 4
  %call189 = call i32 @sqlite3VdbeAddOp2(ptr noundef %219, i32 noundef 12, i32 noundef %220, i32 noundef %221)
  store i32 %call189, ptr %addrEofB, align 4
  %222 = load ptr, ptr %v, align 8
  %223 = load i32, ptr %regAddrA, align 4
  %224 = load i32, ptr %labelEnd, align 4
  %call190 = call i32 @sqlite3VdbeAddOp2(ptr noundef %222, i32 noundef 14, i32 noundef %223, i32 noundef %224)
  %225 = load ptr, ptr %v, align 8
  %226 = load i32, ptr %addrEofB, align 4
  %call191 = call i32 @sqlite3VdbeGoto(ptr noundef %225, i32 noundef %226)
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.end187
  %227 = load ptr, ptr %v, align 8
  %228 = load i32, ptr %regOutA, align 4
  %229 = load i32, ptr %addrOutA, align 4
  %call193 = call i32 @sqlite3VdbeAddOp2(ptr noundef %227, i32 noundef 12, i32 noundef %228, i32 noundef %229)
  store i32 %call193, ptr %addrAltB, align 4
  %230 = load ptr, ptr %v, align 8
  %231 = load i32, ptr %regAddrA, align 4
  %232 = load i32, ptr %addrEofA, align 4
  %call194 = call i32 @sqlite3VdbeAddOp2(ptr noundef %230, i32 noundef 14, i32 noundef %231, i32 noundef %232)
  %233 = load ptr, ptr %v, align 8
  %234 = load i32, ptr %labelCmpr, align 4
  %call195 = call i32 @sqlite3VdbeGoto(ptr noundef %233, i32 noundef %234)
  %235 = load i32, ptr %op, align 4
  %cmp196 = icmp eq i32 %235, 131
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %if.end192
  %236 = load i32, ptr %addrAltB, align 4
  store i32 %236, ptr %addrAeqB, align 4
  br label %if.end208

if.else199:                                       ; preds = %if.end192
  %237 = load i32, ptr %op, align 4
  %cmp200 = icmp eq i32 %237, 133
  br i1 %cmp200, label %if.then202, label %if.else204

if.then202:                                       ; preds = %if.else199
  %238 = load i32, ptr %addrAltB, align 4
  store i32 %238, ptr %addrAeqB, align 4
  %239 = load i32, ptr %addrAltB, align 4
  %inc203 = add nsw i32 %239, 1
  store i32 %inc203, ptr %addrAltB, align 4
  br label %if.end207

if.else204:                                       ; preds = %if.else199
  %240 = load ptr, ptr %v, align 8
  %241 = load i32, ptr %regAddrA, align 4
  %242 = load i32, ptr %addrEofA, align 4
  %call205 = call i32 @sqlite3VdbeAddOp2(ptr noundef %240, i32 noundef 14, i32 noundef %241, i32 noundef %242)
  store i32 %call205, ptr %addrAeqB, align 4
  %243 = load ptr, ptr %v, align 8
  %244 = load i32, ptr %labelCmpr, align 4
  %call206 = call i32 @sqlite3VdbeGoto(ptr noundef %243, i32 noundef %244)
  br label %if.end207

if.end207:                                        ; preds = %if.else204, %if.then202
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.then198
  %245 = load ptr, ptr %v, align 8
  %call209 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %245)
  store i32 %call209, ptr %addrAgtB, align 4
  %246 = load i32, ptr %op, align 4
  %cmp210 = icmp eq i32 %246, 131
  br i1 %cmp210, label %if.then215, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %if.end208
  %247 = load i32, ptr %op, align 4
  %cmp213 = icmp eq i32 %247, 130
  br i1 %cmp213, label %if.then215, label %if.end217

if.then215:                                       ; preds = %lor.lhs.false212, %if.end208
  %248 = load ptr, ptr %v, align 8
  %249 = load i32, ptr %regOutB, align 4
  %250 = load i32, ptr %addrOutB, align 4
  %call216 = call i32 @sqlite3VdbeAddOp2(ptr noundef %248, i32 noundef 12, i32 noundef %249, i32 noundef %250)
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %lor.lhs.false212
  %251 = load ptr, ptr %v, align 8
  %252 = load i32, ptr %regAddrB, align 4
  %253 = load i32, ptr %addrEofB, align 4
  %call218 = call i32 @sqlite3VdbeAddOp2(ptr noundef %251, i32 noundef 14, i32 noundef %252, i32 noundef %253)
  %254 = load ptr, ptr %v, align 8
  %255 = load i32, ptr %labelCmpr, align 4
  %call219 = call i32 @sqlite3VdbeGoto(ptr noundef %254, i32 noundef %255)
  %256 = load ptr, ptr %v, align 8
  %257 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %256, i32 noundef %257)
  %258 = load ptr, ptr %v, align 8
  %259 = load i32, ptr %regAddrA, align 4
  %260 = load i32, ptr %addrEofA_noB, align 4
  %call220 = call i32 @sqlite3VdbeAddOp2(ptr noundef %258, i32 noundef 14, i32 noundef %259, i32 noundef %260)
  %261 = load ptr, ptr %v, align 8
  %262 = load i32, ptr %regAddrB, align 4
  %263 = load i32, ptr %addrEofB, align 4
  %call221 = call i32 @sqlite3VdbeAddOp2(ptr noundef %261, i32 noundef 14, i32 noundef %262, i32 noundef %263)
  %264 = load ptr, ptr %v, align 8
  %265 = load i32, ptr %labelCmpr, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %264, i32 noundef %265)
  %266 = load ptr, ptr %v, align 8
  %267 = load ptr, ptr %aPermute, align 8
  %call222 = call i32 @sqlite3VdbeAddOp4(ptr noundef %266, i32 noundef 86, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %267, i32 noundef -15)
  %268 = load ptr, ptr %v, align 8
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %destA, i32 0, i32 2
  %269 = load i32, ptr %iSdst, align 8
  %iSdst223 = getelementptr inbounds nuw %struct.SelectDest, ptr %destB, i32 0, i32 2
  %270 = load i32, ptr %iSdst223, align 8
  %271 = load i32, ptr %nOrderBy, align 4
  %272 = load ptr, ptr %pKeyMerge, align 8
  %call224 = call i32 @sqlite3VdbeAddOp4(ptr noundef %268, i32 noundef 87, i32 noundef %269, i32 noundef %270, i32 noundef %271, ptr noundef %272, i32 noundef -9)
  %273 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %273, i16 noundef zeroext 1)
  %274 = load ptr, ptr %v, align 8
  %275 = load i32, ptr %addrAltB, align 4
  %276 = load i32, ptr %addrAeqB, align 4
  %277 = load i32, ptr %addrAgtB, align 4
  %call225 = call i32 @sqlite3VdbeAddOp3(ptr noundef %274, i32 noundef 16, i32 noundef %275, i32 noundef %276, i32 noundef %277)
  %278 = load ptr, ptr %v, align 8
  %279 = load i32, ptr %labelEnd, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %278, i32 noundef %279)
  %280 = load ptr, ptr %p.addr, align 8
  %pPrior226 = getelementptr inbounds nuw %struct.Select, ptr %280, i32 0, i32 13
  %281 = load ptr, ptr %pPrior226, align 8
  %tobool227 = icmp ne ptr %281, null
  br i1 %tobool227, label %if.then228, label %if.end230

if.then228:                                       ; preds = %if.end217
  %282 = load ptr, ptr %db, align 8
  %283 = load ptr, ptr %p.addr, align 8
  %pPrior229 = getelementptr inbounds nuw %struct.Select, ptr %283, i32 0, i32 13
  %284 = load ptr, ptr %pPrior229, align 8
  call void @sqlite3SelectDelete(ptr noundef %282, ptr noundef %284)
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.end217
  %285 = load ptr, ptr %pPrior, align 8
  %286 = load ptr, ptr %p.addr, align 8
  %pPrior231 = getelementptr inbounds nuw %struct.Select, ptr %286, i32 0, i32 13
  store ptr %285, ptr %pPrior231, align 8
  %287 = load ptr, ptr %p.addr, align 8
  %288 = load ptr, ptr %pPrior, align 8
  %pNext232 = getelementptr inbounds nuw %struct.Select, ptr %288, i32 0, i32 14
  store ptr %287, ptr %pNext232, align 8
  %289 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeExplainPop(ptr noundef %289)
  %290 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %290, i32 0, i32 16
  %291 = load i32, ptr %nErr, align 8
  %cmp233 = icmp ne i32 %291, 0
  %conv234 = zext i1 %cmp233 to i32
  store i32 %conv234, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end230, %if.then27
  %292 = load i32, ptr %retval, align 4
  ret i32 %292
}

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @multiSelectCollSeq(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @multiSelectOrderByKeyInfo(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @generateOutputSubroutine(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

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
