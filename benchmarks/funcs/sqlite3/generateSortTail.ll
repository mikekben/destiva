; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SortCtx = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.anon.12 = type { i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @generateSortTail(ptr noundef %pParse, ptr noundef %p, ptr noundef %pSort, i32 noundef %nColumn, ptr noundef %pDest) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pSort.addr = alloca ptr, align 8
  %nColumn.addr = alloca i32, align 4
  %pDest.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %addrBreak = alloca i32, align 4
  %addrContinue = alloca i32, align 4
  %addr = alloca i32, align 4
  %addrOnce = alloca i32, align 4
  %iTab = alloca i32, align 4
  %pOrderBy = alloca ptr, align 8
  %eDest = alloca i32, align 4
  %iParm = alloca i32, align 4
  %regRow = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %iCol = alloca i32, align 4
  %nKey = alloca i32, align 4
  %iSortTab = alloca i32, align 4
  %i = alloca i32, align 4
  %bSeq = alloca i32, align 4
  %nRefKey = alloca i32, align 4
  %aOutEx = alloca ptr, align 8
  %regSortOut = alloca i32, align 4
  %iRead = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pSort, ptr %pSort.addr, align 8
  store i32 %nColumn, ptr %nColumn.addr, align 4
  store ptr %pDest, ptr %pDest.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pSort.addr, align 8
  %labelDone = getelementptr inbounds nuw %struct.SortCtx, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %labelDone, align 4
  store i32 %3, ptr %addrBreak, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %4)
  store i32 %call, ptr %addrContinue, align 4
  store i32 0, ptr %addrOnce, align 4
  %5 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy1 = getelementptr inbounds nuw %struct.SortCtx, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pOrderBy1, align 8
  store ptr %6, ptr %pOrderBy, align 8
  %7 = load ptr, ptr %pDest.addr, align 8
  %eDest2 = getelementptr inbounds nuw %struct.SelectDest, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %eDest2, align 8
  %conv = zext i8 %8 to i32
  store i32 %conv, ptr %eDest, align 4
  %9 = load ptr, ptr %pDest.addr, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iSDParm, align 4
  store i32 %10, ptr %iParm, align 4
  store i32 0, ptr %nRefKey, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %aOutEx, align 8
  %13 = load ptr, ptr %pSort.addr, align 8
  %labelBkOut = getelementptr inbounds nuw %struct.SortCtx, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %labelBkOut, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %v, align 8
  %16 = load ptr, ptr %pSort.addr, align 8
  %regReturn = getelementptr inbounds nuw %struct.SortCtx, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %regReturn, align 8
  %18 = load ptr, ptr %pSort.addr, align 8
  %labelBkOut3 = getelementptr inbounds nuw %struct.SortCtx, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %labelBkOut3, align 4
  %call4 = call i32 @sqlite3VdbeAddOp2(ptr noundef %15, i32 noundef 12, i32 noundef %17, i32 noundef %19)
  %20 = load ptr, ptr %v, align 8
  %21 = load i32, ptr %addrBreak, align 4
  %call5 = call i32 @sqlite3VdbeGoto(ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %v, align 8
  %23 = load ptr, ptr %pSort.addr, align 8
  %labelBkOut6 = getelementptr inbounds nuw %struct.SortCtx, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %labelBkOut6, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %22, i32 noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load ptr, ptr %pSort.addr, align 8
  %iECursor = getelementptr inbounds nuw %struct.SortCtx, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %iECursor, align 4
  store i32 %26, ptr %iTab, align 4
  %27 = load i32, ptr %eDest, align 4
  %cmp = icmp eq i32 %27, 9
  br i1 %cmp, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load i32, ptr %eDest, align 4
  %cmp8 = icmp eq i32 %28, 13
  br i1 %cmp8, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %29 = load i32, ptr %eDest, align 4
  %cmp11 = icmp eq i32 %29, 10
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end
  store i32 0, ptr %regRowid, align 4
  %30 = load ptr, ptr %pDest.addr, align 8
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %iSdst, align 8
  store i32 %31, ptr %regRow, align 4
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false10
  %32 = load ptr, ptr %pParse.addr, align 8
  %call14 = call i32 @sqlite3GetTempReg(ptr noundef %32)
  store i32 %call14, ptr %regRowid, align 4
  %33 = load i32, ptr %eDest, align 4
  %cmp15 = icmp eq i32 %33, 12
  br i1 %cmp15, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.else
  %34 = load i32, ptr %eDest, align 4
  %cmp18 = icmp eq i32 %34, 14
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %lor.lhs.false17, %if.else
  %35 = load ptr, ptr %pParse.addr, align 8
  %call21 = call i32 @sqlite3GetTempReg(ptr noundef %35)
  store i32 %call21, ptr %regRow, align 4
  store i32 0, ptr %nColumn.addr, align 4
  br label %if.end24

if.else22:                                        ; preds = %lor.lhs.false17
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load i32, ptr %nColumn.addr, align 4
  %call23 = call i32 @sqlite3GetTempRange(ptr noundef %36, i32 noundef %37)
  store i32 %call23, ptr %regRow, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then13
  %38 = load ptr, ptr %pOrderBy, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %nExpr, align 8
  %40 = load ptr, ptr %pSort.addr, align 8
  %nOBSat = getelementptr inbounds nuw %struct.SortCtx, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nOBSat, align 8
  %sub = sub nsw i32 %39, %41
  store i32 %sub, ptr %nKey, align 4
  %42 = load ptr, ptr %pSort.addr, align 8
  %sortFlags = getelementptr inbounds nuw %struct.SortCtx, ptr %42, i32 0, i32 8
  %43 = load i8, ptr %sortFlags, align 4
  %conv26 = zext i8 %43 to i32
  %and = and i32 %conv26, 1
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then28, label %if.else44

if.then28:                                        ; preds = %if.end25
  %44 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %44, i32 0, i32 18
  %45 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %regSortOut, align 4
  %46 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %46, i32 0, i32 17
  %47 = load i32, ptr %nTab, align 4
  %inc29 = add nsw i32 %47, 1
  store i32 %inc29, ptr %nTab, align 4
  store i32 %47, ptr %iSortTab, align 4
  %48 = load ptr, ptr %pSort.addr, align 8
  %labelBkOut30 = getelementptr inbounds nuw %struct.SortCtx, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %labelBkOut30, align 4
  %tobool31 = icmp ne i32 %49, 0
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then28
  %50 = load ptr, ptr %v, align 8
  %call33 = call i32 @sqlite3VdbeAddOp0(ptr noundef %50, i32 noundef 17)
  store i32 %call33, ptr %addrOnce, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then28
  %51 = load ptr, ptr %v, align 8
  %52 = load i32, ptr %iSortTab, align 4
  %53 = load i32, ptr %regSortOut, align 4
  %54 = load i32, ptr %nKey, align 4
  %add = add nsw i32 %54, 1
  %55 = load i32, ptr %nColumn.addr, align 4
  %add35 = add nsw i32 %add, %55
  %56 = load i32, ptr %nRefKey, align 4
  %add36 = add nsw i32 %add35, %56
  %call37 = call i32 @sqlite3VdbeAddOp3(ptr noundef %51, i32 noundef 116, i32 noundef %52, i32 noundef %53, i32 noundef %add36)
  %57 = load i32, ptr %addrOnce, align 4
  %tobool38 = icmp ne i32 %57, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  %58 = load ptr, ptr %v, align 8
  %59 = load i32, ptr %addrOnce, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %58, i32 noundef %59)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end34
  %60 = load ptr, ptr %v, align 8
  %61 = load i32, ptr %iTab, align 4
  %62 = load i32, ptr %addrBreak, align 4
  %call41 = call i32 @sqlite3VdbeAddOp2(ptr noundef %60, i32 noundef 34, i32 noundef %61, i32 noundef %62)
  %add42 = add nsw i32 1, %call41
  store i32 %add42, ptr %addr, align 4
  %63 = load ptr, ptr %v, align 8
  %64 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %64, i32 0, i32 5
  %65 = load i32, ptr %iOffset, align 4
  %66 = load i32, ptr %addrContinue, align 4
  call void @codeOffset(ptr noundef %63, i32 noundef %65, i32 noundef %66)
  %67 = load ptr, ptr %v, align 8
  %68 = load i32, ptr %iTab, align 4
  %69 = load i32, ptr %regSortOut, align 4
  %70 = load i32, ptr %iSortTab, align 4
  %call43 = call i32 @sqlite3VdbeAddOp3(ptr noundef %67, i32 noundef 126, i32 noundef %68, i32 noundef %69, i32 noundef %70)
  store i32 0, ptr %bSeq, align 4
  br label %if.end48

if.else44:                                        ; preds = %if.end25
  %71 = load ptr, ptr %v, align 8
  %72 = load i32, ptr %iTab, align 4
  %73 = load i32, ptr %addrBreak, align 4
  %call45 = call i32 @sqlite3VdbeAddOp2(ptr noundef %71, i32 noundef 35, i32 noundef %72, i32 noundef %73)
  %add46 = add nsw i32 1, %call45
  store i32 %add46, ptr %addr, align 4
  %74 = load ptr, ptr %v, align 8
  %75 = load ptr, ptr %p.addr, align 8
  %iOffset47 = getelementptr inbounds nuw %struct.Select, ptr %75, i32 0, i32 5
  %76 = load i32, ptr %iOffset47, align 4
  %77 = load i32, ptr %addrContinue, align 4
  call void @codeOffset(ptr noundef %74, i32 noundef %76, i32 noundef %77)
  %78 = load i32, ptr %iTab, align 4
  store i32 %78, ptr %iSortTab, align 4
  store i32 1, ptr %bSeq, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.end40
  store i32 0, ptr %i, align 4
  %79 = load i32, ptr %nKey, align 4
  %80 = load i32, ptr %bSeq, align 4
  %add49 = add nsw i32 %79, %80
  %sub50 = sub nsw i32 %add49, 1
  store i32 %sub50, ptr %iCol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end48
  %81 = load i32, ptr %i, align 4
  %82 = load i32, ptr %nColumn.addr, align 4
  %cmp51 = icmp slt i32 %81, %82
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load ptr, ptr %aOutEx, align 8
  %84 = load i32, ptr %i, align 4
  %idxprom = sext i32 %84 to i64
  %arrayidx = getelementptr inbounds %struct.ExprList_item, ptr %83, i64 %idxprom
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %85 = load i16, ptr %iOrderByCol, align 4
  %conv53 = zext i16 %85 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %for.body
  %86 = load i32, ptr %iCol, align 4
  %inc57 = add nsw i32 %86, 1
  store i32 %inc57, ptr %iCol, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %87 = load i32, ptr %i, align 4
  %inc59 = add nsw i32 %87, 1
  store i32 %inc59, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %88 = load i32, ptr %nColumn.addr, align 4
  %sub60 = sub nsw i32 %88, 1
  store i32 %sub60, ptr %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc81, %for.end
  %89 = load i32, ptr %i, align 4
  %cmp62 = icmp sge i32 %89, 0
  br i1 %cmp62, label %for.body64, label %for.end83

for.body64:                                       ; preds = %for.cond61
  %90 = load ptr, ptr %aOutEx, align 8
  %91 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %91 to i64
  %arrayidx66 = getelementptr inbounds %struct.ExprList_item, ptr %90, i64 %idxprom65
  %u67 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx66, i32 0, i32 5
  %iOrderByCol68 = getelementptr inbounds nuw %struct.anon.12, ptr %u67, i32 0, i32 0
  %92 = load i16, ptr %iOrderByCol68, align 4
  %tobool69 = icmp ne i16 %92, 0
  br i1 %tobool69, label %if.then70, label %if.else77

if.then70:                                        ; preds = %for.body64
  %93 = load ptr, ptr %aOutEx, align 8
  %94 = load i32, ptr %i, align 4
  %idxprom71 = sext i32 %94 to i64
  %arrayidx72 = getelementptr inbounds %struct.ExprList_item, ptr %93, i64 %idxprom71
  %u73 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx72, i32 0, i32 5
  %iOrderByCol74 = getelementptr inbounds nuw %struct.anon.12, ptr %u73, i32 0, i32 0
  %95 = load i16, ptr %iOrderByCol74, align 4
  %conv75 = zext i16 %95 to i32
  %sub76 = sub nsw i32 %conv75, 1
  store i32 %sub76, ptr %iRead, align 4
  br label %if.end78

if.else77:                                        ; preds = %for.body64
  %96 = load i32, ptr %iCol, align 4
  %dec = add nsw i32 %96, -1
  store i32 %dec, ptr %iCol, align 4
  store i32 %96, ptr %iRead, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.then70
  %97 = load ptr, ptr %v, align 8
  %98 = load i32, ptr %iSortTab, align 4
  %99 = load i32, ptr %iRead, align 4
  %100 = load i32, ptr %regRow, align 4
  %101 = load i32, ptr %i, align 4
  %add79 = add nsw i32 %100, %101
  %call80 = call i32 @sqlite3VdbeAddOp3(ptr noundef %97, i32 noundef 90, i32 noundef %98, i32 noundef %99, i32 noundef %add79)
  br label %for.inc81

for.inc81:                                        ; preds = %if.end78
  %102 = load i32, ptr %i, align 4
  %dec82 = add nsw i32 %102, -1
  store i32 %dec82, ptr %i, align 4
  br label %for.cond61, !llvm.loop !8

for.end83:                                        ; preds = %for.cond61
  %103 = load i32, ptr %eDest, align 4
  switch i32 %103, label %sw.default [
    i32 14, label %sw.bb
    i32 12, label %sw.bb
    i32 11, label %sw.bb88
    i32 10, label %sw.bb91
  ]

sw.bb:                                            ; preds = %for.end83, %for.end83
  %104 = load ptr, ptr %v, align 8
  %105 = load i32, ptr %iSortTab, align 4
  %106 = load i32, ptr %nKey, align 4
  %107 = load i32, ptr %bSeq, align 4
  %add84 = add nsw i32 %106, %107
  %108 = load i32, ptr %regRow, align 4
  %call85 = call i32 @sqlite3VdbeAddOp3(ptr noundef %104, i32 noundef 90, i32 noundef %105, i32 noundef %add84, i32 noundef %108)
  %109 = load ptr, ptr %v, align 8
  %110 = load i32, ptr %iParm, align 4
  %111 = load i32, ptr %regRowid, align 4
  %call86 = call i32 @sqlite3VdbeAddOp2(ptr noundef %109, i32 noundef 121, i32 noundef %110, i32 noundef %111)
  %112 = load ptr, ptr %v, align 8
  %113 = load i32, ptr %iParm, align 4
  %114 = load i32, ptr %regRow, align 4
  %115 = load i32, ptr %regRowid, align 4
  %call87 = call i32 @sqlite3VdbeAddOp3(ptr noundef %112, i32 noundef 122, i32 noundef %113, i32 noundef %114, i32 noundef %115)
  %116 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %116, i16 noundef zeroext 8)
  br label %sw.epilog

sw.bb88:                                          ; preds = %for.end83
  %117 = load ptr, ptr %v, align 8
  %118 = load i32, ptr %regRow, align 4
  %119 = load i32, ptr %nColumn.addr, align 4
  %120 = load i32, ptr %regRowid, align 4
  %121 = load ptr, ptr %pDest.addr, align 8
  %zAffSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %121, i32 0, i32 4
  %122 = load ptr, ptr %zAffSdst, align 8
  %123 = load i32, ptr %nColumn.addr, align 4
  %call89 = call i32 @sqlite3VdbeAddOp4(ptr noundef %117, i32 noundef 92, i32 noundef %118, i32 noundef %119, i32 noundef %120, ptr noundef %122, i32 noundef %123)
  %124 = load ptr, ptr %v, align 8
  %125 = load i32, ptr %iParm, align 4
  %126 = load i32, ptr %regRowid, align 4
  %127 = load i32, ptr %regRow, align 4
  %128 = load i32, ptr %nColumn.addr, align 4
  %call90 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %124, i32 noundef 132, i32 noundef %125, i32 noundef %126, i32 noundef %127, i32 noundef %128)
  br label %sw.epilog

sw.bb91:                                          ; preds = %for.end83
  br label %sw.epilog

sw.default:                                       ; preds = %for.end83
  %129 = load i32, ptr %eDest, align 4
  %cmp92 = icmp eq i32 %129, 9
  br i1 %cmp92, label %if.then94, label %if.else97

if.then94:                                        ; preds = %sw.default
  %130 = load ptr, ptr %v, align 8
  %131 = load ptr, ptr %pDest.addr, align 8
  %iSdst95 = getelementptr inbounds nuw %struct.SelectDest, ptr %131, i32 0, i32 2
  %132 = load i32, ptr %iSdst95, align 8
  %133 = load i32, ptr %nColumn.addr, align 4
  %call96 = call i32 @sqlite3VdbeAddOp2(ptr noundef %130, i32 noundef 81, i32 noundef %132, i32 noundef %133)
  br label %if.end100

if.else97:                                        ; preds = %sw.default
  %134 = load ptr, ptr %v, align 8
  %135 = load ptr, ptr %pDest.addr, align 8
  %iSDParm98 = getelementptr inbounds nuw %struct.SelectDest, ptr %135, i32 0, i32 1
  %136 = load i32, ptr %iSDParm98, align 4
  %call99 = call i32 @sqlite3VdbeAddOp1(ptr noundef %134, i32 noundef 14, i32 noundef %136)
  br label %if.end100

if.end100:                                        ; preds = %if.else97, %if.then94
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end100, %sw.bb91, %sw.bb88, %sw.bb
  %137 = load i32, ptr %regRowid, align 4
  %tobool101 = icmp ne i32 %137, 0
  br i1 %tobool101, label %if.then102, label %if.end108

if.then102:                                       ; preds = %sw.epilog
  %138 = load i32, ptr %eDest, align 4
  %cmp103 = icmp eq i32 %138, 11
  br i1 %cmp103, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.then102
  %139 = load ptr, ptr %pParse.addr, align 8
  %140 = load i32, ptr %regRow, align 4
  %141 = load i32, ptr %nColumn.addr, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %139, i32 noundef %140, i32 noundef %141)
  br label %if.end107

if.else106:                                       ; preds = %if.then102
  %142 = load ptr, ptr %pParse.addr, align 8
  %143 = load i32, ptr %regRow, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %142, i32 noundef %143)
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.then105
  %144 = load ptr, ptr %pParse.addr, align 8
  %145 = load i32, ptr %regRowid, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %144, i32 noundef %145)
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %sw.epilog
  %146 = load ptr, ptr %v, align 8
  %147 = load i32, ptr %addrContinue, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %146, i32 noundef %147)
  %148 = load ptr, ptr %pSort.addr, align 8
  %sortFlags109 = getelementptr inbounds nuw %struct.SortCtx, ptr %148, i32 0, i32 8
  %149 = load i8, ptr %sortFlags109, align 4
  %conv110 = zext i8 %149 to i32
  %and111 = and i32 %conv110, 1
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.end108
  %150 = load ptr, ptr %v, align 8
  %151 = load i32, ptr %iTab, align 4
  %152 = load i32, ptr %addr, align 4
  %call114 = call i32 @sqlite3VdbeAddOp2(ptr noundef %150, i32 noundef 3, i32 noundef %151, i32 noundef %152)
  br label %if.end117

if.else115:                                       ; preds = %if.end108
  %153 = load ptr, ptr %v, align 8
  %154 = load i32, ptr %iTab, align 4
  %155 = load i32, ptr %addr, align 4
  %call116 = call i32 @sqlite3VdbeAddOp2(ptr noundef %153, i32 noundef 5, i32 noundef %154, i32 noundef %155)
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then113
  %156 = load ptr, ptr %pSort.addr, align 8
  %regReturn118 = getelementptr inbounds nuw %struct.SortCtx, ptr %156, i32 0, i32 3
  %157 = load i32, ptr %regReturn118, align 8
  %tobool119 = icmp ne i32 %157, 0
  br i1 %tobool119, label %if.then120, label %if.end123

if.then120:                                       ; preds = %if.end117
  %158 = load ptr, ptr %v, align 8
  %159 = load ptr, ptr %pSort.addr, align 8
  %regReturn121 = getelementptr inbounds nuw %struct.SortCtx, ptr %159, i32 0, i32 3
  %160 = load i32, ptr %regReturn121, align 8
  %call122 = call i32 @sqlite3VdbeAddOp1(ptr noundef %158, i32 noundef 66, i32 noundef %160)
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.end117
  %161 = load ptr, ptr %v, align 8
  %162 = load i32, ptr %addrBreak, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %161, i32 noundef %162)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @codeOffset(ptr noundef, i32 noundef, i32 noundef) #0

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
