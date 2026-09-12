; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowLoadInfo = type { i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.DistinctCtx = type { i8, i8, i32, i32 }
%struct.SortCtx = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.anon.12 = type { i16, i16 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @selectInnerLoop(ptr noundef %pParse, ptr noundef %p, i32 noundef %srcTab, ptr noundef %pSort, ptr noundef %pDistinct, ptr noundef %pDest, i32 noundef %iContinue, i32 noundef %iBreak) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %srcTab.addr = alloca i32, align 4
  %pSort.addr = alloca ptr, align 8
  %pDistinct.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %iContinue.addr = alloca i32, align 4
  %iBreak.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %hasDistinct = alloca i32, align 4
  %eDest = alloca i32, align 4
  %iParm = alloca i32, align 4
  %nResultCol = alloca i32, align 4
  %nPrefixReg = alloca i32, align 4
  %sRowLoadInfo = alloca %struct.RowLoadInfo, align 4
  %regResult = alloca i32, align 4
  %regOrig = alloca i32, align 4
  %ecelFlags = alloca i8, align 1
  %pEList50 = alloca ptr, align 8
  %j = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %iJump = alloca i32, align 4
  %regPrev = alloca i32, align 4
  %pColl = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %r1190 = alloca i32, align 4
  %addr = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r1218 = alloca i32, align 4
  %nKey = alloca i32, align 4
  %r1244 = alloca i32, align 4
  %r2245 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %addrTest = alloca i32, align 4
  %pSO = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %srcTab, ptr %srcTab.addr, align 4
  store ptr %pSort, ptr %pSort.addr, align 8
  store ptr %pDistinct, ptr %pDistinct.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 %iContinue, ptr %iContinue.addr, align 4
  store i32 %iBreak, ptr %iBreak.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pDest.addr, align 8
  %eDest1 = getelementptr inbounds nuw %struct.SelectDest, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %eDest1, align 8
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %eDest, align 4
  %4 = load ptr, ptr %pDest.addr, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %iSDParm, align 4
  store i32 %5, ptr %iParm, align 4
  store i32 0, ptr %nPrefixReg, align 4
  %6 = load ptr, ptr %pDistinct.addr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %pDistinct.addr, align 8
  %eTnctType = getelementptr inbounds nuw %struct.DistinctCtx, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %eTnctType, align 1
  %conv2 = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %hasDistinct, align 4
  %9 = load ptr, ptr %pSort.addr, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %10 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.SortCtx, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pOrderBy, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %pSort.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %12 = load ptr, ptr %pSort.addr, align 8
  %cmp5 = icmp eq ptr %12, null
  br i1 %cmp5, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %if.end
  %13 = load i32, ptr %hasDistinct, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7
  %14 = load ptr, ptr %v, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %iOffset, align 4
  %17 = load i32, ptr %iContinue.addr, align 4
  call void @codeOffset(ptr noundef %14, i32 noundef %16, i32 noundef %17)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true7, %if.end
  %18 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %nExpr, align 8
  store i32 %20, ptr %nResultCol, align 4
  %21 = load ptr, ptr %pDest.addr, align 8
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %iSdst, align 8
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %23 = load ptr, ptr %pSort.addr, align 8
  %tobool14 = icmp ne ptr %23, null
  br i1 %tobool14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.then13
  %24 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy16 = getelementptr inbounds nuw %struct.SortCtx, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pOrderBy16, align 8
  %nExpr17 = getelementptr inbounds nuw %struct.ExprList, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %nExpr17, align 8
  store i32 %26, ptr %nPrefixReg, align 4
  %27 = load ptr, ptr %pSort.addr, align 8
  %sortFlags = getelementptr inbounds nuw %struct.SortCtx, ptr %27, i32 0, i32 8
  %28 = load i8, ptr %sortFlags, align 4
  %conv18 = zext i8 %28 to i32
  %and = and i32 %conv18, 1
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then15
  %29 = load i32, ptr %nPrefixReg, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %nPrefixReg, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then15
  %30 = load i32, ptr %nPrefixReg, align 4
  %31 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %31, i32 0, i32 18
  %32 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %32, %30
  store i32 %add, ptr %nMem, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then13
  %33 = load ptr, ptr %pParse.addr, align 8
  %nMem23 = getelementptr inbounds nuw %struct.Parse, ptr %33, i32 0, i32 18
  %34 = load i32, ptr %nMem23, align 8
  %add24 = add nsw i32 %34, 1
  %35 = load ptr, ptr %pDest.addr, align 8
  %iSdst25 = getelementptr inbounds nuw %struct.SelectDest, ptr %35, i32 0, i32 2
  store i32 %add24, ptr %iSdst25, align 8
  %36 = load i32, ptr %nResultCol, align 4
  %37 = load ptr, ptr %pParse.addr, align 8
  %nMem26 = getelementptr inbounds nuw %struct.Parse, ptr %37, i32 0, i32 18
  %38 = load i32, ptr %nMem26, align 8
  %add27 = add nsw i32 %38, %36
  store i32 %add27, ptr %nMem26, align 8
  br label %if.end37

if.else:                                          ; preds = %if.end10
  %39 = load ptr, ptr %pDest.addr, align 8
  %iSdst28 = getelementptr inbounds nuw %struct.SelectDest, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %iSdst28, align 8
  %41 = load i32, ptr %nResultCol, align 4
  %add29 = add nsw i32 %40, %41
  %42 = load ptr, ptr %pParse.addr, align 8
  %nMem30 = getelementptr inbounds nuw %struct.Parse, ptr %42, i32 0, i32 18
  %43 = load i32, ptr %nMem30, align 8
  %cmp31 = icmp sgt i32 %add29, %43
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.else
  %44 = load i32, ptr %nResultCol, align 4
  %45 = load ptr, ptr %pParse.addr, align 8
  %nMem34 = getelementptr inbounds nuw %struct.Parse, ptr %45, i32 0, i32 18
  %46 = load i32, ptr %nMem34, align 8
  %add35 = add nsw i32 %46, %44
  store i32 %add35, ptr %nMem34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end22
  %47 = load i32, ptr %nResultCol, align 4
  %48 = load ptr, ptr %pDest.addr, align 8
  %nSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %48, i32 0, i32 3
  store i32 %47, ptr %nSdst, align 4
  %49 = load ptr, ptr %pDest.addr, align 8
  %iSdst38 = getelementptr inbounds nuw %struct.SelectDest, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %iSdst38, align 8
  store i32 %50, ptr %regResult, align 4
  store i32 %50, ptr %regOrig, align 4
  %51 = load i32, ptr %srcTab.addr, align 4
  %cmp39 = icmp sge i32 %51, 0
  br i1 %cmp39, label %if.then41, label %if.else46

if.then41:                                        ; preds = %if.end37
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then41
  %52 = load i32, ptr %i, align 4
  %53 = load i32, ptr %nResultCol, align 4
  %cmp42 = icmp slt i32 %52, %53
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load ptr, ptr %v, align 8
  %55 = load i32, ptr %srcTab.addr, align 4
  %56 = load i32, ptr %i, align 4
  %57 = load i32, ptr %regResult, align 4
  %58 = load i32, ptr %i, align 4
  %add44 = add nsw i32 %57, %58
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %54, i32 noundef 90, i32 noundef %55, i32 noundef %56, i32 noundef %add44)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %59, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end134

if.else46:                                        ; preds = %if.end37
  %60 = load i32, ptr %eDest, align 4
  %cmp47 = icmp ne i32 %60, 3
  br i1 %cmp47, label %if.then49, label %if.end133

if.then49:                                        ; preds = %if.else46
  %61 = load i32, ptr %eDest, align 4
  %cmp51 = icmp eq i32 %61, 10
  br i1 %cmp51, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then49
  %62 = load i32, ptr %eDest, align 4
  %cmp53 = icmp eq i32 %62, 9
  br i1 %cmp53, label %if.then58, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false
  %63 = load i32, ptr %eDest, align 4
  %cmp56 = icmp eq i32 %63, 13
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %lor.lhs.false55, %lor.lhs.false, %if.then49
  store i8 1, ptr %ecelFlags, align 1
  br label %if.end60

if.else59:                                        ; preds = %lor.lhs.false55
  store i8 0, ptr %ecelFlags, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  %64 = load ptr, ptr %pSort.addr, align 8
  %tobool61 = icmp ne ptr %64, null
  br i1 %tobool61, label %land.lhs.true62, label %if.end118

land.lhs.true62:                                  ; preds = %if.end60
  %65 = load i32, ptr %hasDistinct, align 4
  %cmp63 = icmp eq i32 %65, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end118

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %66 = load i32, ptr %eDest, align 4
  %cmp66 = icmp ne i32 %66, 12
  br i1 %cmp66, label %land.lhs.true68, label %if.end118

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %67 = load i32, ptr %eDest, align 4
  %cmp69 = icmp ne i32 %67, 14
  br i1 %cmp69, label %if.then71, label %if.end118

if.then71:                                        ; preds = %land.lhs.true68
  %68 = load i8, ptr %ecelFlags, align 1
  %conv72 = zext i8 %68 to i32
  %or = or i32 %conv72, 12
  %conv73 = trunc i32 %or to i8
  store i8 %conv73, ptr %ecelFlags, align 1
  %69 = load ptr, ptr %pSort.addr, align 8
  %nOBSat = getelementptr inbounds nuw %struct.SortCtx, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %nOBSat, align 8
  store i32 %70, ptr %i, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc96, %if.then71
  %71 = load i32, ptr %i, align 4
  %72 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy75 = getelementptr inbounds nuw %struct.SortCtx, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %pOrderBy75, align 8
  %nExpr76 = getelementptr inbounds nuw %struct.ExprList, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %nExpr76, align 8
  %cmp77 = icmp slt i32 %71, %74
  br i1 %cmp77, label %for.body79, label %for.end98

for.body79:                                       ; preds = %for.cond74
  %75 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy80 = getelementptr inbounds nuw %struct.SortCtx, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %pOrderBy80, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %i, align 4
  %idxprom = sext i32 %77 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %78 = load i16, ptr %iOrderByCol, align 4
  %conv81 = zext i16 %78 to i32
  store i32 %conv81, ptr %j, align 4
  %cmp82 = icmp sgt i32 %conv81, 0
  br i1 %cmp82, label %if.then84, label %if.end95

if.then84:                                        ; preds = %for.body79
  %79 = load i32, ptr %i, align 4
  %add85 = add nsw i32 %79, 1
  %80 = load ptr, ptr %pSort.addr, align 8
  %nOBSat86 = getelementptr inbounds nuw %struct.SortCtx, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %nOBSat86, align 8
  %sub = sub nsw i32 %add85, %81
  %conv87 = trunc i32 %sub to i16
  %82 = load ptr, ptr %p.addr, align 8
  %pEList88 = getelementptr inbounds nuw %struct.Select, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %pEList88, align 8
  %a89 = getelementptr inbounds nuw %struct.ExprList, ptr %83, i32 0, i32 1
  %84 = load i32, ptr %j, align 4
  %sub90 = sub nsw i32 %84, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a89, i64 0, i64 %idxprom91
  %u93 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx92, i32 0, i32 5
  %iOrderByCol94 = getelementptr inbounds nuw %struct.anon.12, ptr %u93, i32 0, i32 0
  store i16 %conv87, ptr %iOrderByCol94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then84, %for.body79
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %85 = load i32, ptr %i, align 4
  %inc97 = add nsw i32 %85, 1
  store i32 %inc97, ptr %i, align 4
  br label %for.cond74, !llvm.loop !8

for.end98:                                        ; preds = %for.cond74
  %86 = load ptr, ptr %p.addr, align 8
  %pEList99 = getelementptr inbounds nuw %struct.Select, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %pEList99, align 8
  store ptr %87, ptr %pEList50, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc115, %for.end98
  %88 = load i32, ptr %i, align 4
  %89 = load ptr, ptr %pEList50, align 8
  %nExpr101 = getelementptr inbounds nuw %struct.ExprList, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %nExpr101, align 8
  %cmp102 = icmp slt i32 %88, %90
  br i1 %cmp102, label %for.body104, label %for.end117

for.body104:                                      ; preds = %for.cond100
  %91 = load ptr, ptr %pEList50, align 8
  %a105 = getelementptr inbounds nuw %struct.ExprList, ptr %91, i32 0, i32 1
  %92 = load i32, ptr %i, align 4
  %idxprom106 = sext i32 %92 to i64
  %arrayidx107 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a105, i64 0, i64 %idxprom106
  %u108 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx107, i32 0, i32 5
  %iOrderByCol109 = getelementptr inbounds nuw %struct.anon.12, ptr %u108, i32 0, i32 0
  %93 = load i16, ptr %iOrderByCol109, align 4
  %conv110 = zext i16 %93 to i32
  %cmp111 = icmp sgt i32 %conv110, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %for.body104
  %94 = load i32, ptr %nResultCol, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, ptr %nResultCol, align 4
  store i32 0, ptr %regOrig, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %for.body104
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %95 = load i32, ptr %i, align 4
  %inc116 = add nsw i32 %95, 1
  store i32 %inc116, ptr %i, align 4
  br label %for.cond100, !llvm.loop !9

for.end117:                                       ; preds = %for.cond100
  br label %if.end118

if.end118:                                        ; preds = %for.end117, %land.lhs.true68, %land.lhs.true65, %land.lhs.true62, %if.end60
  %96 = load i32, ptr %regResult, align 4
  %regResult119 = getelementptr inbounds nuw %struct.RowLoadInfo, ptr %sRowLoadInfo, i32 0, i32 0
  store i32 %96, ptr %regResult119, align 4
  %97 = load i8, ptr %ecelFlags, align 1
  %ecelFlags120 = getelementptr inbounds nuw %struct.RowLoadInfo, ptr %sRowLoadInfo, i32 0, i32 1
  store i8 %97, ptr %ecelFlags120, align 4
  %98 = load ptr, ptr %p.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %98, i32 0, i32 4
  %99 = load i32, ptr %iLimit, align 8
  %tobool121 = icmp ne i32 %99, 0
  br i1 %tobool121, label %land.lhs.true122, label %if.else131

land.lhs.true122:                                 ; preds = %if.end118
  %100 = load i8, ptr %ecelFlags, align 1
  %conv123 = zext i8 %100 to i32
  %and124 = and i32 %conv123, 8
  %cmp125 = icmp ne i32 %and124, 0
  br i1 %cmp125, label %land.lhs.true127, label %if.else131

land.lhs.true127:                                 ; preds = %land.lhs.true122
  %101 = load i32, ptr %nPrefixReg, align 4
  %cmp128 = icmp sgt i32 %101, 0
  br i1 %cmp128, label %if.then130, label %if.else131

if.then130:                                       ; preds = %land.lhs.true127
  %102 = load ptr, ptr %pSort.addr, align 8
  %pDeferredRowLoad = getelementptr inbounds nuw %struct.SortCtx, ptr %102, i32 0, i32 9
  store ptr %sRowLoadInfo, ptr %pDeferredRowLoad, align 8
  store i32 0, ptr %regOrig, align 4
  br label %if.end132

if.else131:                                       ; preds = %land.lhs.true127, %land.lhs.true122, %if.end118
  %103 = load ptr, ptr %pParse.addr, align 8
  %104 = load ptr, ptr %p.addr, align 8
  call void @innerLoopLoadRow(ptr noundef %103, ptr noundef %104, ptr noundef %sRowLoadInfo)
  br label %if.end132

if.end132:                                        ; preds = %if.else131, %if.then130
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.else46
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %for.end
  %105 = load i32, ptr %hasDistinct, align 4
  %tobool135 = icmp ne i32 %105, 0
  br i1 %tobool135, label %if.then136, label %if.end182

if.then136:                                       ; preds = %if.end134
  %106 = load ptr, ptr %pDistinct.addr, align 8
  %eTnctType137 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %106, i32 0, i32 1
  %107 = load i8, ptr %eTnctType137, align 1
  %conv138 = zext i8 %107 to i32
  switch i32 %conv138, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb174
  ]

sw.bb:                                            ; preds = %if.then136
  %108 = load ptr, ptr %pParse.addr, align 8
  %nMem139 = getelementptr inbounds nuw %struct.Parse, ptr %108, i32 0, i32 18
  %109 = load i32, ptr %nMem139, align 8
  %add140 = add nsw i32 %109, 1
  store i32 %add140, ptr %regPrev, align 4
  %110 = load i32, ptr %nResultCol, align 4
  %111 = load ptr, ptr %pParse.addr, align 8
  %nMem141 = getelementptr inbounds nuw %struct.Parse, ptr %111, i32 0, i32 18
  %112 = load i32, ptr %nMem141, align 8
  %add142 = add nsw i32 %112, %110
  store i32 %add142, ptr %nMem141, align 8
  %113 = load ptr, ptr %v, align 8
  %114 = load ptr, ptr %pDistinct.addr, align 8
  %addrTnct = getelementptr inbounds nuw %struct.DistinctCtx, ptr %114, i32 0, i32 3
  %115 = load i32, ptr %addrTnct, align 4
  %call143 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %113, i32 noundef %115)
  %116 = load ptr, ptr %v, align 8
  %117 = load ptr, ptr %pDistinct.addr, align 8
  %addrTnct144 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %117, i32 0, i32 3
  %118 = load i32, ptr %addrTnct144, align 4
  %call145 = call ptr @sqlite3VdbeGetOp(ptr noundef %116, i32 noundef %118)
  store ptr %call145, ptr %pOp, align 8
  %119 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %119, i32 0, i32 0
  store i8 73, ptr %opcode, align 8
  %120 = load ptr, ptr %pOp, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %120, i32 0, i32 3
  store i32 1, ptr %p1, align 4
  %121 = load i32, ptr %regPrev, align 4
  %122 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %122, i32 0, i32 4
  store i32 %121, ptr %p2, align 8
  %123 = load ptr, ptr %v, align 8
  %call146 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %123)
  %124 = load i32, ptr %nResultCol, align 4
  %add147 = add nsw i32 %call146, %124
  store i32 %add147, ptr %iJump, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc169, %sw.bb
  %125 = load i32, ptr %i, align 4
  %126 = load i32, ptr %nResultCol, align 4
  %cmp149 = icmp slt i32 %125, %126
  br i1 %cmp149, label %for.body151, label %for.end171

for.body151:                                      ; preds = %for.cond148
  %127 = load ptr, ptr %pParse.addr, align 8
  %128 = load ptr, ptr %p.addr, align 8
  %pEList152 = getelementptr inbounds nuw %struct.Select, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %pEList152, align 8
  %a153 = getelementptr inbounds nuw %struct.ExprList, ptr %129, i32 0, i32 1
  %130 = load i32, ptr %i, align 4
  %idxprom154 = sext i32 %130 to i64
  %arrayidx155 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a153, i64 0, i64 %idxprom154
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx155, i32 0, i32 0
  %131 = load ptr, ptr %pExpr, align 8
  %call156 = call ptr @sqlite3ExprCollSeq(ptr noundef %127, ptr noundef %131)
  store ptr %call156, ptr %pColl, align 8
  %132 = load i32, ptr %i, align 4
  %133 = load i32, ptr %nResultCol, align 4
  %sub157 = sub nsw i32 %133, 1
  %cmp158 = icmp slt i32 %132, %sub157
  br i1 %cmp158, label %if.then160, label %if.else164

if.then160:                                       ; preds = %for.body151
  %134 = load ptr, ptr %v, align 8
  %135 = load i32, ptr %regResult, align 4
  %136 = load i32, ptr %i, align 4
  %add161 = add nsw i32 %135, %136
  %137 = load i32, ptr %iJump, align 4
  %138 = load i32, ptr %regPrev, align 4
  %139 = load i32, ptr %i, align 4
  %add162 = add nsw i32 %138, %139
  %call163 = call i32 @sqlite3VdbeAddOp3(ptr noundef %134, i32 noundef 52, i32 noundef %add161, i32 noundef %137, i32 noundef %add162)
  br label %if.end168

if.else164:                                       ; preds = %for.body151
  %140 = load ptr, ptr %v, align 8
  %141 = load i32, ptr %regResult, align 4
  %142 = load i32, ptr %i, align 4
  %add165 = add nsw i32 %141, %142
  %143 = load i32, ptr %iContinue.addr, align 4
  %144 = load i32, ptr %regPrev, align 4
  %145 = load i32, ptr %i, align 4
  %add166 = add nsw i32 %144, %145
  %call167 = call i32 @sqlite3VdbeAddOp3(ptr noundef %140, i32 noundef 53, i32 noundef %add165, i32 noundef %143, i32 noundef %add166)
  br label %if.end168

if.end168:                                        ; preds = %if.else164, %if.then160
  %146 = load ptr, ptr %v, align 8
  %147 = load ptr, ptr %pColl, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %146, i32 noundef -1, ptr noundef %147, i32 noundef -2)
  %148 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %148, i16 noundef zeroext 128)
  br label %for.inc169

for.inc169:                                       ; preds = %if.end168
  %149 = load i32, ptr %i, align 4
  %inc170 = add nsw i32 %149, 1
  store i32 %inc170, ptr %i, align 4
  br label %for.cond148, !llvm.loop !10

for.end171:                                       ; preds = %for.cond148
  %150 = load ptr, ptr %v, align 8
  %151 = load i32, ptr %regResult, align 4
  %152 = load i32, ptr %regPrev, align 4
  %153 = load i32, ptr %nResultCol, align 4
  %sub172 = sub nsw i32 %153, 1
  %call173 = call i32 @sqlite3VdbeAddOp3(ptr noundef %150, i32 noundef 78, i32 noundef %151, i32 noundef %152, i32 noundef %sub172)
  br label %sw.epilog

sw.bb174:                                         ; preds = %if.then136
  %154 = load ptr, ptr %v, align 8
  %155 = load ptr, ptr %pDistinct.addr, align 8
  %addrTnct175 = getelementptr inbounds nuw %struct.DistinctCtx, ptr %155, i32 0, i32 3
  %156 = load i32, ptr %addrTnct175, align 4
  %call176 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %154, i32 noundef %156)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then136
  %157 = load ptr, ptr %pParse.addr, align 8
  %158 = load ptr, ptr %pDistinct.addr, align 8
  %tabTnct = getelementptr inbounds nuw %struct.DistinctCtx, ptr %158, i32 0, i32 2
  %159 = load i32, ptr %tabTnct, align 4
  %160 = load i32, ptr %iContinue.addr, align 4
  %161 = load i32, ptr %nResultCol, align 4
  %162 = load i32, ptr %regResult, align 4
  call void @codeDistinct(ptr noundef %157, i32 noundef %159, i32 noundef %160, i32 noundef %161, i32 noundef %162)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb174, %for.end171
  %163 = load ptr, ptr %pSort.addr, align 8
  %cmp177 = icmp eq ptr %163, null
  br i1 %cmp177, label %if.then179, label %if.end181

if.then179:                                       ; preds = %sw.epilog
  %164 = load ptr, ptr %v, align 8
  %165 = load ptr, ptr %p.addr, align 8
  %iOffset180 = getelementptr inbounds nuw %struct.Select, ptr %165, i32 0, i32 5
  %166 = load i32, ptr %iOffset180, align 4
  %167 = load i32, ptr %iContinue.addr, align 4
  call void @codeOffset(ptr noundef %164, i32 noundef %166, i32 noundef %167)
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %sw.epilog
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end134
  %168 = load i32, ptr %eDest, align 4
  switch i32 %168, label %sw.default293 [
    i32 1, label %sw.bb183
    i32 2, label %sw.bb187
    i32 5, label %sw.bb189
    i32 6, label %sw.bb189
    i32 14, label %sw.bb189
    i32 12, label %sw.bb189
    i32 11, label %sw.bb214
    i32 3, label %sw.bb223
    i32 10, label %sw.bb225
    i32 13, label %sw.bb230
    i32 9, label %sw.bb230
    i32 8, label %sw.bb243
    i32 7, label %sw.bb243
  ]

sw.bb183:                                         ; preds = %if.end182
  %169 = load ptr, ptr %pParse.addr, align 8
  %call184 = call i32 @sqlite3GetTempReg(ptr noundef %169)
  store i32 %call184, ptr %r1, align 4
  %170 = load ptr, ptr %v, align 8
  %171 = load i32, ptr %regResult, align 4
  %172 = load i32, ptr %nResultCol, align 4
  %173 = load i32, ptr %r1, align 4
  %call185 = call i32 @sqlite3VdbeAddOp3(ptr noundef %170, i32 noundef 92, i32 noundef %171, i32 noundef %172, i32 noundef %173)
  %174 = load ptr, ptr %v, align 8
  %175 = load i32, ptr %iParm, align 4
  %176 = load i32, ptr %r1, align 4
  %177 = load i32, ptr %regResult, align 4
  %178 = load i32, ptr %nResultCol, align 4
  %call186 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %174, i32 noundef 132, i32 noundef %175, i32 noundef %176, i32 noundef %177, i32 noundef %178)
  %179 = load ptr, ptr %pParse.addr, align 8
  %180 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %179, i32 noundef %180)
  br label %sw.epilog294

sw.bb187:                                         ; preds = %if.end182
  %181 = load ptr, ptr %v, align 8
  %182 = load i32, ptr %iParm, align 4
  %183 = load i32, ptr %regResult, align 4
  %184 = load i32, ptr %nResultCol, align 4
  %call188 = call i32 @sqlite3VdbeAddOp3(ptr noundef %181, i32 noundef 133, i32 noundef %182, i32 noundef %183, i32 noundef %184)
  br label %sw.epilog294

sw.bb189:                                         ; preds = %if.end182, %if.end182, %if.end182, %if.end182
  %185 = load ptr, ptr %pParse.addr, align 8
  %186 = load i32, ptr %nPrefixReg, align 4
  %add191 = add nsw i32 %186, 1
  %call192 = call i32 @sqlite3GetTempRange(ptr noundef %185, i32 noundef %add191)
  store i32 %call192, ptr %r1190, align 4
  %187 = load ptr, ptr %v, align 8
  %188 = load i32, ptr %regResult, align 4
  %189 = load i32, ptr %nResultCol, align 4
  %190 = load i32, ptr %r1190, align 4
  %191 = load i32, ptr %nPrefixReg, align 4
  %add193 = add nsw i32 %190, %191
  %call194 = call i32 @sqlite3VdbeAddOp3(ptr noundef %187, i32 noundef 92, i32 noundef %188, i32 noundef %189, i32 noundef %add193)
  %192 = load i32, ptr %eDest, align 4
  %cmp195 = icmp eq i32 %192, 6
  br i1 %cmp195, label %if.then197, label %if.end204

if.then197:                                       ; preds = %sw.bb189
  %193 = load ptr, ptr %v, align 8
  %call198 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %193)
  %add199 = add nsw i32 %call198, 4
  store i32 %add199, ptr %addr, align 4
  %194 = load ptr, ptr %v, align 8
  %195 = load i32, ptr %iParm, align 4
  %add200 = add nsw i32 %195, 1
  %196 = load i32, ptr %addr, align 4
  %197 = load i32, ptr %r1190, align 4
  %call201 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %194, i32 noundef 29, i32 noundef %add200, i32 noundef %196, i32 noundef %197, i32 noundef 0)
  %198 = load ptr, ptr %v, align 8
  %199 = load i32, ptr %iParm, align 4
  %add202 = add nsw i32 %199, 1
  %200 = load i32, ptr %r1190, align 4
  %201 = load i32, ptr %regResult, align 4
  %202 = load i32, ptr %nResultCol, align 4
  %call203 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %198, i32 noundef 132, i32 noundef %add202, i32 noundef %200, i32 noundef %201, i32 noundef %202)
  br label %if.end204

if.end204:                                        ; preds = %if.then197, %sw.bb189
  %203 = load ptr, ptr %pSort.addr, align 8
  %tobool205 = icmp ne ptr %203, null
  br i1 %tobool205, label %if.then206, label %if.else208

if.then206:                                       ; preds = %if.end204
  %204 = load ptr, ptr %pParse.addr, align 8
  %205 = load ptr, ptr %pSort.addr, align 8
  %206 = load ptr, ptr %p.addr, align 8
  %207 = load i32, ptr %r1190, align 4
  %208 = load i32, ptr %nPrefixReg, align 4
  %add207 = add nsw i32 %207, %208
  %209 = load i32, ptr %regOrig, align 4
  %210 = load i32, ptr %nPrefixReg, align 4
  call void @pushOntoSorter(ptr noundef %204, ptr noundef %205, ptr noundef %206, i32 noundef %add207, i32 noundef %209, i32 noundef 1, i32 noundef %210)
  br label %if.end212

if.else208:                                       ; preds = %if.end204
  %211 = load ptr, ptr %pParse.addr, align 8
  %call209 = call i32 @sqlite3GetTempReg(ptr noundef %211)
  store i32 %call209, ptr %r2, align 4
  %212 = load ptr, ptr %v, align 8
  %213 = load i32, ptr %iParm, align 4
  %214 = load i32, ptr %r2, align 4
  %call210 = call i32 @sqlite3VdbeAddOp2(ptr noundef %212, i32 noundef 121, i32 noundef %213, i32 noundef %214)
  %215 = load ptr, ptr %v, align 8
  %216 = load i32, ptr %iParm, align 4
  %217 = load i32, ptr %r1190, align 4
  %218 = load i32, ptr %r2, align 4
  %call211 = call i32 @sqlite3VdbeAddOp3(ptr noundef %215, i32 noundef 122, i32 noundef %216, i32 noundef %217, i32 noundef %218)
  %219 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %219, i16 noundef zeroext 8)
  %220 = load ptr, ptr %pParse.addr, align 8
  %221 = load i32, ptr %r2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %220, i32 noundef %221)
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.then206
  %222 = load ptr, ptr %pParse.addr, align 8
  %223 = load i32, ptr %r1190, align 4
  %224 = load i32, ptr %nPrefixReg, align 4
  %add213 = add nsw i32 %224, 1
  call void @sqlite3ReleaseTempRange(ptr noundef %222, i32 noundef %223, i32 noundef %add213)
  br label %sw.epilog294

sw.bb214:                                         ; preds = %if.end182
  %225 = load ptr, ptr %pSort.addr, align 8
  %tobool215 = icmp ne ptr %225, null
  br i1 %tobool215, label %if.then216, label %if.else217

if.then216:                                       ; preds = %sw.bb214
  %226 = load ptr, ptr %pParse.addr, align 8
  %227 = load ptr, ptr %pSort.addr, align 8
  %228 = load ptr, ptr %p.addr, align 8
  %229 = load i32, ptr %regResult, align 4
  %230 = load i32, ptr %regOrig, align 4
  %231 = load i32, ptr %nResultCol, align 4
  %232 = load i32, ptr %nPrefixReg, align 4
  call void @pushOntoSorter(ptr noundef %226, ptr noundef %227, ptr noundef %228, i32 noundef %229, i32 noundef %230, i32 noundef %231, i32 noundef %232)
  br label %if.end222

if.else217:                                       ; preds = %sw.bb214
  %233 = load ptr, ptr %pParse.addr, align 8
  %call219 = call i32 @sqlite3GetTempReg(ptr noundef %233)
  store i32 %call219, ptr %r1218, align 4
  %234 = load ptr, ptr %v, align 8
  %235 = load i32, ptr %regResult, align 4
  %236 = load i32, ptr %nResultCol, align 4
  %237 = load i32, ptr %r1218, align 4
  %238 = load ptr, ptr %pDest.addr, align 8
  %zAffSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %238, i32 0, i32 4
  %239 = load ptr, ptr %zAffSdst, align 8
  %240 = load i32, ptr %nResultCol, align 4
  %call220 = call i32 @sqlite3VdbeAddOp4(ptr noundef %234, i32 noundef 92, i32 noundef %235, i32 noundef %236, i32 noundef %237, ptr noundef %239, i32 noundef %240)
  %241 = load ptr, ptr %v, align 8
  %242 = load i32, ptr %iParm, align 4
  %243 = load i32, ptr %r1218, align 4
  %244 = load i32, ptr %regResult, align 4
  %245 = load i32, ptr %nResultCol, align 4
  %call221 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %241, i32 noundef 132, i32 noundef %242, i32 noundef %243, i32 noundef %244, i32 noundef %245)
  %246 = load ptr, ptr %pParse.addr, align 8
  %247 = load i32, ptr %r1218, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %246, i32 noundef %247)
  br label %if.end222

if.end222:                                        ; preds = %if.else217, %if.then216
  br label %sw.epilog294

sw.bb223:                                         ; preds = %if.end182
  %248 = load ptr, ptr %v, align 8
  %249 = load i32, ptr %iParm, align 4
  %call224 = call i32 @sqlite3VdbeAddOp2(ptr noundef %248, i32 noundef 70, i32 noundef 1, i32 noundef %249)
  br label %sw.epilog294

sw.bb225:                                         ; preds = %if.end182
  %250 = load ptr, ptr %pSort.addr, align 8
  %tobool226 = icmp ne ptr %250, null
  br i1 %tobool226, label %if.then227, label %if.else228

if.then227:                                       ; preds = %sw.bb225
  %251 = load ptr, ptr %pParse.addr, align 8
  %252 = load ptr, ptr %pSort.addr, align 8
  %253 = load ptr, ptr %p.addr, align 8
  %254 = load i32, ptr %regResult, align 4
  %255 = load i32, ptr %regOrig, align 4
  %256 = load i32, ptr %nResultCol, align 4
  %257 = load i32, ptr %nPrefixReg, align 4
  call void @pushOntoSorter(ptr noundef %251, ptr noundef %252, ptr noundef %253, i32 noundef %254, i32 noundef %255, i32 noundef %256, i32 noundef %257)
  br label %if.end229

if.else228:                                       ; preds = %sw.bb225
  br label %if.end229

if.end229:                                        ; preds = %if.else228, %if.then227
  br label %sw.epilog294

sw.bb230:                                         ; preds = %if.end182, %if.end182
  %258 = load ptr, ptr %pSort.addr, align 8
  %tobool231 = icmp ne ptr %258, null
  br i1 %tobool231, label %if.then232, label %if.else233

if.then232:                                       ; preds = %sw.bb230
  %259 = load ptr, ptr %pParse.addr, align 8
  %260 = load ptr, ptr %pSort.addr, align 8
  %261 = load ptr, ptr %p.addr, align 8
  %262 = load i32, ptr %regResult, align 4
  %263 = load i32, ptr %regOrig, align 4
  %264 = load i32, ptr %nResultCol, align 4
  %265 = load i32, ptr %nPrefixReg, align 4
  call void @pushOntoSorter(ptr noundef %259, ptr noundef %260, ptr noundef %261, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %265)
  br label %if.end242

if.else233:                                       ; preds = %sw.bb230
  %266 = load i32, ptr %eDest, align 4
  %cmp234 = icmp eq i32 %266, 13
  br i1 %cmp234, label %if.then236, label %if.else239

if.then236:                                       ; preds = %if.else233
  %267 = load ptr, ptr %v, align 8
  %268 = load ptr, ptr %pDest.addr, align 8
  %iSDParm237 = getelementptr inbounds nuw %struct.SelectDest, ptr %268, i32 0, i32 1
  %269 = load i32, ptr %iSDParm237, align 4
  %call238 = call i32 @sqlite3VdbeAddOp1(ptr noundef %267, i32 noundef 14, i32 noundef %269)
  br label %if.end241

if.else239:                                       ; preds = %if.else233
  %270 = load ptr, ptr %v, align 8
  %271 = load i32, ptr %regResult, align 4
  %272 = load i32, ptr %nResultCol, align 4
  %call240 = call i32 @sqlite3VdbeAddOp2(ptr noundef %270, i32 noundef 81, i32 noundef %271, i32 noundef %272)
  br label %if.end241

if.end241:                                        ; preds = %if.else239, %if.then236
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then232
  br label %sw.epilog294

sw.bb243:                                         ; preds = %if.end182, %if.end182
  store i32 0, ptr %addrTest, align 4
  %273 = load ptr, ptr %pDest.addr, align 8
  %pOrderBy246 = getelementptr inbounds nuw %struct.SelectDest, ptr %273, i32 0, i32 5
  %274 = load ptr, ptr %pOrderBy246, align 8
  store ptr %274, ptr %pSO, align 8
  %275 = load ptr, ptr %pSO, align 8
  %nExpr247 = getelementptr inbounds nuw %struct.ExprList, ptr %275, i32 0, i32 0
  %276 = load i32, ptr %nExpr247, align 8
  store i32 %276, ptr %nKey, align 4
  %277 = load ptr, ptr %pParse.addr, align 8
  %call248 = call i32 @sqlite3GetTempReg(ptr noundef %277)
  store i32 %call248, ptr %r1244, align 4
  %278 = load ptr, ptr %pParse.addr, align 8
  %279 = load i32, ptr %nKey, align 4
  %add249 = add nsw i32 %279, 2
  %call250 = call i32 @sqlite3GetTempRange(ptr noundef %278, i32 noundef %add249)
  store i32 %call250, ptr %r2245, align 4
  %280 = load i32, ptr %r2245, align 4
  %281 = load i32, ptr %nKey, align 4
  %add251 = add nsw i32 %280, %281
  %add252 = add nsw i32 %add251, 1
  store i32 %add252, ptr %r3, align 4
  %282 = load i32, ptr %eDest, align 4
  %cmp253 = icmp eq i32 %282, 8
  br i1 %cmp253, label %if.then255, label %if.end258

if.then255:                                       ; preds = %sw.bb243
  %283 = load ptr, ptr %v, align 8
  %284 = load i32, ptr %iParm, align 4
  %add256 = add nsw i32 %284, 1
  %285 = load i32, ptr %regResult, align 4
  %286 = load i32, ptr %nResultCol, align 4
  %call257 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %283, i32 noundef 29, i32 noundef %add256, i32 noundef 0, i32 noundef %285, i32 noundef %286)
  store i32 %call257, ptr %addrTest, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then255, %sw.bb243
  %287 = load ptr, ptr %v, align 8
  %288 = load i32, ptr %regResult, align 4
  %289 = load i32, ptr %nResultCol, align 4
  %290 = load i32, ptr %r3, align 4
  %call259 = call i32 @sqlite3VdbeAddOp3(ptr noundef %287, i32 noundef 92, i32 noundef %288, i32 noundef %289, i32 noundef %290)
  %291 = load i32, ptr %eDest, align 4
  %cmp260 = icmp eq i32 %291, 8
  br i1 %cmp260, label %if.then262, label %if.end265

if.then262:                                       ; preds = %if.end258
  %292 = load ptr, ptr %v, align 8
  %293 = load i32, ptr %iParm, align 4
  %add263 = add nsw i32 %293, 1
  %294 = load i32, ptr %r3, align 4
  %call264 = call i32 @sqlite3VdbeAddOp2(ptr noundef %292, i32 noundef 132, i32 noundef %add263, i32 noundef %294)
  %295 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %295, i16 noundef zeroext 16)
  br label %if.end265

if.end265:                                        ; preds = %if.then262, %if.end258
  store i32 0, ptr %i, align 4
  br label %for.cond266

for.cond266:                                      ; preds = %for.inc280, %if.end265
  %296 = load i32, ptr %i, align 4
  %297 = load i32, ptr %nKey, align 4
  %cmp267 = icmp slt i32 %296, %297
  br i1 %cmp267, label %for.body269, label %for.end282

for.body269:                                      ; preds = %for.cond266
  %298 = load ptr, ptr %v, align 8
  %299 = load i32, ptr %regResult, align 4
  %300 = load ptr, ptr %pSO, align 8
  %a270 = getelementptr inbounds nuw %struct.ExprList, ptr %300, i32 0, i32 1
  %301 = load i32, ptr %i, align 4
  %idxprom271 = sext i32 %301 to i64
  %arrayidx272 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a270, i64 0, i64 %idxprom271
  %u273 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx272, i32 0, i32 5
  %iOrderByCol274 = getelementptr inbounds nuw %struct.anon.12, ptr %u273, i32 0, i32 0
  %302 = load i16, ptr %iOrderByCol274, align 4
  %conv275 = zext i16 %302 to i32
  %add276 = add nsw i32 %299, %conv275
  %sub277 = sub nsw i32 %add276, 1
  %303 = load i32, ptr %r2245, align 4
  %304 = load i32, ptr %i, align 4
  %add278 = add nsw i32 %303, %304
  %call279 = call i32 @sqlite3VdbeAddOp2(ptr noundef %298, i32 noundef 79, i32 noundef %sub277, i32 noundef %add278)
  br label %for.inc280

for.inc280:                                       ; preds = %for.body269
  %305 = load i32, ptr %i, align 4
  %inc281 = add nsw i32 %305, 1
  store i32 %inc281, ptr %i, align 4
  br label %for.cond266, !llvm.loop !11

for.end282:                                       ; preds = %for.cond266
  %306 = load ptr, ptr %v, align 8
  %307 = load i32, ptr %iParm, align 4
  %308 = load i32, ptr %r2245, align 4
  %309 = load i32, ptr %nKey, align 4
  %add283 = add nsw i32 %308, %309
  %call284 = call i32 @sqlite3VdbeAddOp2(ptr noundef %306, i32 noundef 120, i32 noundef %307, i32 noundef %add283)
  %310 = load ptr, ptr %v, align 8
  %311 = load i32, ptr %r2245, align 4
  %312 = load i32, ptr %nKey, align 4
  %add285 = add nsw i32 %312, 2
  %313 = load i32, ptr %r1244, align 4
  %call286 = call i32 @sqlite3VdbeAddOp3(ptr noundef %310, i32 noundef 92, i32 noundef %311, i32 noundef %add285, i32 noundef %313)
  %314 = load ptr, ptr %v, align 8
  %315 = load i32, ptr %iParm, align 4
  %316 = load i32, ptr %r1244, align 4
  %317 = load i32, ptr %r2245, align 4
  %318 = load i32, ptr %nKey, align 4
  %add287 = add nsw i32 %318, 2
  %call288 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %314, i32 noundef 132, i32 noundef %315, i32 noundef %316, i32 noundef %317, i32 noundef %add287)
  %319 = load i32, ptr %addrTest, align 4
  %tobool289 = icmp ne i32 %319, 0
  br i1 %tobool289, label %if.then290, label %if.end291

if.then290:                                       ; preds = %for.end282
  %320 = load ptr, ptr %v, align 8
  %321 = load i32, ptr %addrTest, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %320, i32 noundef %321)
  br label %if.end291

if.end291:                                        ; preds = %if.then290, %for.end282
  %322 = load ptr, ptr %pParse.addr, align 8
  %323 = load i32, ptr %r1244, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %322, i32 noundef %323)
  %324 = load ptr, ptr %pParse.addr, align 8
  %325 = load i32, ptr %r2245, align 4
  %326 = load i32, ptr %nKey, align 4
  %add292 = add nsw i32 %326, 2
  call void @sqlite3ReleaseTempRange(ptr noundef %324, i32 noundef %325, i32 noundef %add292)
  br label %sw.epilog294

sw.default293:                                    ; preds = %if.end182
  br label %sw.epilog294

sw.epilog294:                                     ; preds = %sw.default293, %if.end291, %if.end242, %if.end229, %sw.bb223, %if.end222, %if.end212, %sw.bb187, %sw.bb183
  %327 = load ptr, ptr %pSort.addr, align 8
  %cmp295 = icmp eq ptr %327, null
  br i1 %cmp295, label %land.lhs.true297, label %if.end303

land.lhs.true297:                                 ; preds = %sw.epilog294
  %328 = load ptr, ptr %p.addr, align 8
  %iLimit298 = getelementptr inbounds nuw %struct.Select, ptr %328, i32 0, i32 4
  %329 = load i32, ptr %iLimit298, align 8
  %tobool299 = icmp ne i32 %329, 0
  br i1 %tobool299, label %if.then300, label %if.end303

if.then300:                                       ; preds = %land.lhs.true297
  %330 = load ptr, ptr %v, align 8
  %331 = load ptr, ptr %p.addr, align 8
  %iLimit301 = getelementptr inbounds nuw %struct.Select, ptr %331, i32 0, i32 4
  %332 = load i32, ptr %iLimit301, align 8
  %333 = load i32, ptr %iBreak.addr, align 4
  %call302 = call i32 @sqlite3VdbeAddOp2(ptr noundef %330, i32 noundef 49, i32 noundef %332, i32 noundef %333)
  br label %if.end303

if.end303:                                        ; preds = %if.then300, %land.lhs.true297, %sw.epilog294
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @codeOffset(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @innerLoopLoadRow(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeDistinct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pushOntoSorter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
