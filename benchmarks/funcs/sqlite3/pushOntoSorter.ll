; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SortCtx = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeMove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @pushOntoSorter(ptr noundef %pParse, ptr noundef %pSort, ptr noundef %pSelect, i32 noundef %regData, i32 noundef %regOrigData, i32 noundef %nData, i32 noundef %nPrefixReg) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSort.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %regData.addr = alloca i32, align 4
  %regOrigData.addr = alloca i32, align 4
  %nData.addr = alloca i32, align 4
  %nPrefixReg.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %bSeq = alloca i32, align 4
  %nExpr = alloca i32, align 4
  %nBase = alloca i32, align 4
  %regBase = alloca i32, align 4
  %regRecord = alloca i32, align 4
  %nOBSat = alloca i32, align 4
  %op = alloca i32, align 4
  %iLimit = alloca i32, align 4
  %iSkip = alloca i32, align 4
  %regPrevKey = alloca i32, align 4
  %addrFirst = alloca i32, align 4
  %addrJmp = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %nKey = alloca i32, align 4
  %pKI = alloca ptr, align 8
  %iCsr = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSort, ptr %pSort.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i32 %regData, ptr %regData.addr, align 4
  store i32 %regOrigData, ptr %regOrigData.addr, align 4
  store i32 %nData, ptr %nData.addr, align 4
  store i32 %nPrefixReg, ptr %nPrefixReg.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pSort.addr, align 8
  %sortFlags = getelementptr inbounds nuw %struct.SortCtx, ptr %2, i32 0, i32 8
  %3 = load i8, ptr %sortFlags, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 1
  %cmp = icmp eq i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, ptr %bSeq, align 4
  %4 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.SortCtx, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pOrderBy, align 8
  %nExpr2 = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr2, align 8
  store i32 %6, ptr %nExpr, align 4
  %7 = load i32, ptr %nExpr, align 4
  %8 = load i32, ptr %bSeq, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, ptr %nData.addr, align 4
  %add3 = add nsw i32 %add, %9
  store i32 %add3, ptr %nBase, align 4
  store i32 0, ptr %regRecord, align 4
  %10 = load ptr, ptr %pSort.addr, align 8
  %nOBSat4 = getelementptr inbounds nuw %struct.SortCtx, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nOBSat4, align 8
  store i32 %11, ptr %nOBSat, align 4
  store i32 0, ptr %iSkip, align 4
  %12 = load i32, ptr %nPrefixReg.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %regData.addr, align 4
  %14 = load i32, ptr %nPrefixReg.addr, align 4
  %sub = sub nsw i32 %13, %14
  store i32 %sub, ptr %regBase, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 18
  %16 = load i32, ptr %nMem, align 8
  %add5 = add nsw i32 %16, 1
  store i32 %add5, ptr %regBase, align 4
  %17 = load i32, ptr %nBase, align 4
  %18 = load ptr, ptr %pParse.addr, align 8
  %nMem6 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 18
  %19 = load i32, ptr %nMem6, align 8
  %add7 = add nsw i32 %19, %17
  store i32 %add7, ptr %nMem6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load ptr, ptr %pSelect.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %iOffset, align 4
  %tobool8 = icmp ne i32 %21, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load ptr, ptr %pSelect.addr, align 8
  %iOffset9 = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %iOffset9, align 4
  %add10 = add nsw i32 %23, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load ptr, ptr %pSelect.addr, align 8
  %iLimit11 = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %iLimit11, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add10, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, ptr %iLimit, align 4
  %26 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %26)
  %27 = load ptr, ptr %pSort.addr, align 8
  %labelDone = getelementptr inbounds nuw %struct.SortCtx, ptr %27, i32 0, i32 6
  store i32 %call, ptr %labelDone, align 4
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy12 = getelementptr inbounds nuw %struct.SortCtx, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pOrderBy12, align 8
  %31 = load i32, ptr %regBase, align 4
  %32 = load i32, ptr %regOrigData.addr, align 4
  %33 = load i32, ptr %regOrigData.addr, align 4
  %tobool13 = icmp ne i32 %33, 0
  %34 = zext i1 %tobool13 to i64
  %cond14 = select i1 %tobool13, i32 4, i32 0
  %or = or i32 1, %cond14
  %conv15 = trunc i32 %or to i8
  %call16 = call i32 @sqlite3ExprCodeExprList(ptr noundef %28, ptr noundef %30, i32 noundef %31, i32 noundef %32, i8 noundef zeroext %conv15)
  %35 = load i32, ptr %bSeq, align 4
  %tobool17 = icmp ne i32 %35, 0
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %cond.end
  %36 = load ptr, ptr %v, align 8
  %37 = load ptr, ptr %pSort.addr, align 8
  %iECursor = getelementptr inbounds nuw %struct.SortCtx, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %iECursor, align 4
  %39 = load i32, ptr %regBase, align 4
  %40 = load i32, ptr %nExpr, align 4
  %add19 = add nsw i32 %39, %40
  %call20 = call i32 @sqlite3VdbeAddOp2(ptr noundef %36, i32 noundef 120, i32 noundef %38, i32 noundef %add19)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %cond.end
  %41 = load i32, ptr %nPrefixReg.addr, align 4
  %cmp22 = icmp eq i32 %41, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end21
  %42 = load i32, ptr %nData.addr, align 4
  %cmp24 = icmp sgt i32 %42, 0
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %pParse.addr, align 8
  %44 = load i32, ptr %regData.addr, align 4
  %45 = load i32, ptr %regBase, align 4
  %46 = load i32, ptr %nExpr, align 4
  %add27 = add nsw i32 %45, %46
  %47 = load i32, ptr %bSeq, align 4
  %add28 = add nsw i32 %add27, %47
  %48 = load i32, ptr %nData.addr, align 4
  call void @sqlite3ExprCodeMove(ptr noundef %43, i32 noundef %44, i32 noundef %add28, i32 noundef %48)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true, %if.end21
  %49 = load i32, ptr %nOBSat, align 4
  %cmp30 = icmp sgt i32 %49, 0
  br i1 %cmp30, label %if.then32, label %if.end83

if.then32:                                        ; preds = %if.end29
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pSort.addr, align 8
  %52 = load ptr, ptr %pSelect.addr, align 8
  %53 = load i32, ptr %regBase, align 4
  %54 = load i32, ptr %nBase, align 4
  %call33 = call i32 @makeSorterRecord(ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  store i32 %call33, ptr %regRecord, align 4
  %55 = load ptr, ptr %pParse.addr, align 8
  %nMem34 = getelementptr inbounds nuw %struct.Parse, ptr %55, i32 0, i32 18
  %56 = load i32, ptr %nMem34, align 8
  %add35 = add nsw i32 %56, 1
  store i32 %add35, ptr %regPrevKey, align 4
  %57 = load ptr, ptr %pSort.addr, align 8
  %nOBSat36 = getelementptr inbounds nuw %struct.SortCtx, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %nOBSat36, align 8
  %59 = load ptr, ptr %pParse.addr, align 8
  %nMem37 = getelementptr inbounds nuw %struct.Parse, ptr %59, i32 0, i32 18
  %60 = load i32, ptr %nMem37, align 8
  %add38 = add nsw i32 %60, %58
  store i32 %add38, ptr %nMem37, align 8
  %61 = load i32, ptr %nExpr, align 4
  %62 = load ptr, ptr %pSort.addr, align 8
  %nOBSat39 = getelementptr inbounds nuw %struct.SortCtx, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %nOBSat39, align 8
  %sub40 = sub nsw i32 %61, %63
  %64 = load i32, ptr %bSeq, align 4
  %add41 = add nsw i32 %sub40, %64
  store i32 %add41, ptr %nKey, align 4
  %65 = load i32, ptr %bSeq, align 4
  %tobool42 = icmp ne i32 %65, 0
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.then32
  %66 = load ptr, ptr %v, align 8
  %67 = load i32, ptr %regBase, align 4
  %68 = load i32, ptr %nExpr, align 4
  %add44 = add nsw i32 %67, %68
  %call45 = call i32 @sqlite3VdbeAddOp1(ptr noundef %66, i32 noundef 20, i32 noundef %add44)
  store i32 %call45, ptr %addrFirst, align 4
  br label %if.end49

if.else46:                                        ; preds = %if.then32
  %69 = load ptr, ptr %v, align 8
  %70 = load ptr, ptr %pSort.addr, align 8
  %iECursor47 = getelementptr inbounds nuw %struct.SortCtx, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %iECursor47, align 4
  %call48 = call i32 @sqlite3VdbeAddOp1(ptr noundef %69, i32 noundef 115, i32 noundef %71)
  store i32 %call48, ptr %addrFirst, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then43
  %72 = load ptr, ptr %v, align 8
  %73 = load i32, ptr %regPrevKey, align 4
  %74 = load i32, ptr %regBase, align 4
  %75 = load ptr, ptr %pSort.addr, align 8
  %nOBSat50 = getelementptr inbounds nuw %struct.SortCtx, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %nOBSat50, align 8
  %call51 = call i32 @sqlite3VdbeAddOp3(ptr noundef %72, i32 noundef 87, i32 noundef %73, i32 noundef %74, i32 noundef %76)
  %77 = load ptr, ptr %v, align 8
  %78 = load ptr, ptr %pSort.addr, align 8
  %addrSortIndex = getelementptr inbounds nuw %struct.SortCtx, ptr %78, i32 0, i32 5
  %79 = load i32, ptr %addrSortIndex, align 8
  %call52 = call ptr @sqlite3VdbeGetOp(ptr noundef %77, i32 noundef %79)
  store ptr %call52, ptr %pOp, align 8
  %80 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %81, i32 0, i32 19
  %82 = load i8, ptr %mallocFailed, align 1
  %tobool53 = icmp ne i8 %82, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  br label %if.end121

if.end55:                                         ; preds = %if.end49
  %83 = load i32, ptr %nKey, align 4
  %84 = load i32, ptr %nData.addr, align 4
  %add56 = add nsw i32 %83, %84
  %85 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %85, i32 0, i32 4
  store i32 %add56, ptr %p2, align 8
  %86 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %86, i32 0, i32 6
  %87 = load ptr, ptr %p4, align 8
  store ptr %87, ptr %pKI, align 8
  %88 = load ptr, ptr %pKI, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %88, i32 0, i32 5
  %89 = load ptr, ptr %aSortFlags, align 8
  %90 = load ptr, ptr %pKI, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %90, i32 0, i32 2
  %91 = load i16, ptr %nKeyField, align 2
  %conv57 = zext i16 %91 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %89, i8 0, i64 %conv57, i1 false)
  %92 = load ptr, ptr %v, align 8
  %93 = load ptr, ptr %pKI, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %92, i32 noundef -1, ptr noundef %93, i32 noundef -9)
  %94 = load ptr, ptr %pParse.addr, align 8
  %95 = load ptr, ptr %pSort.addr, align 8
  %pOrderBy58 = getelementptr inbounds nuw %struct.SortCtx, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %pOrderBy58, align 8
  %97 = load i32, ptr %nOBSat, align 4
  %98 = load ptr, ptr %pKI, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %98, i32 0, i32 3
  %99 = load i16, ptr %nAllField, align 8
  %conv59 = zext i16 %99 to i32
  %100 = load ptr, ptr %pKI, align 8
  %nKeyField60 = getelementptr inbounds nuw %struct.KeyInfo, ptr %100, i32 0, i32 2
  %101 = load i16, ptr %nKeyField60, align 2
  %conv61 = zext i16 %101 to i32
  %sub62 = sub nsw i32 %conv59, %conv61
  %sub63 = sub nsw i32 %sub62, 1
  %call64 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %94, ptr noundef %96, i32 noundef %97, i32 noundef %sub63)
  %102 = load ptr, ptr %pOp, align 8
  %p465 = getelementptr inbounds nuw %struct.VdbeOp, ptr %102, i32 0, i32 6
  store ptr %call64, ptr %p465, align 8
  %103 = load ptr, ptr %v, align 8
  %call66 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %103)
  store i32 %call66, ptr %addrJmp, align 4
  %104 = load ptr, ptr %v, align 8
  %105 = load i32, ptr %addrJmp, align 4
  %add67 = add nsw i32 %105, 1
  %106 = load i32, ptr %addrJmp, align 4
  %add68 = add nsw i32 %106, 1
  %call69 = call i32 @sqlite3VdbeAddOp3(ptr noundef %104, i32 noundef 16, i32 noundef %add67, i32 noundef 0, i32 noundef %add68)
  %107 = load ptr, ptr %pParse.addr, align 8
  %call70 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %107)
  %108 = load ptr, ptr %pSort.addr, align 8
  %labelBkOut = getelementptr inbounds nuw %struct.SortCtx, ptr %108, i32 0, i32 4
  store i32 %call70, ptr %labelBkOut, align 4
  %109 = load ptr, ptr %pParse.addr, align 8
  %nMem71 = getelementptr inbounds nuw %struct.Parse, ptr %109, i32 0, i32 18
  %110 = load i32, ptr %nMem71, align 8
  %inc = add nsw i32 %110, 1
  store i32 %inc, ptr %nMem71, align 8
  %111 = load ptr, ptr %pSort.addr, align 8
  %regReturn = getelementptr inbounds nuw %struct.SortCtx, ptr %111, i32 0, i32 3
  store i32 %inc, ptr %regReturn, align 8
  %112 = load ptr, ptr %v, align 8
  %113 = load ptr, ptr %pSort.addr, align 8
  %regReturn72 = getelementptr inbounds nuw %struct.SortCtx, ptr %113, i32 0, i32 3
  %114 = load i32, ptr %regReturn72, align 8
  %115 = load ptr, ptr %pSort.addr, align 8
  %labelBkOut73 = getelementptr inbounds nuw %struct.SortCtx, ptr %115, i32 0, i32 4
  %116 = load i32, ptr %labelBkOut73, align 4
  %call74 = call i32 @sqlite3VdbeAddOp2(ptr noundef %112, i32 noundef 12, i32 noundef %114, i32 noundef %116)
  %117 = load ptr, ptr %v, align 8
  %118 = load ptr, ptr %pSort.addr, align 8
  %iECursor75 = getelementptr inbounds nuw %struct.SortCtx, ptr %118, i32 0, i32 2
  %119 = load i32, ptr %iECursor75, align 4
  %call76 = call i32 @sqlite3VdbeAddOp1(ptr noundef %117, i32 noundef 138, i32 noundef %119)
  %120 = load i32, ptr %iLimit, align 4
  %tobool77 = icmp ne i32 %120, 0
  br i1 %tobool77, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end55
  %121 = load ptr, ptr %v, align 8
  %122 = load i32, ptr %iLimit, align 4
  %123 = load ptr, ptr %pSort.addr, align 8
  %labelDone79 = getelementptr inbounds nuw %struct.SortCtx, ptr %123, i32 0, i32 6
  %124 = load i32, ptr %labelDone79, align 4
  %call80 = call i32 @sqlite3VdbeAddOp2(ptr noundef %121, i32 noundef 20, i32 noundef %122, i32 noundef %124)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end55
  %125 = load ptr, ptr %v, align 8
  %126 = load i32, ptr %addrFirst, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %125, i32 noundef %126)
  %127 = load ptr, ptr %pParse.addr, align 8
  %128 = load i32, ptr %regBase, align 4
  %129 = load i32, ptr %regPrevKey, align 4
  %130 = load ptr, ptr %pSort.addr, align 8
  %nOBSat82 = getelementptr inbounds nuw %struct.SortCtx, ptr %130, i32 0, i32 1
  %131 = load i32, ptr %nOBSat82, align 8
  call void @sqlite3ExprCodeMove(ptr noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %131)
  %132 = load ptr, ptr %v, align 8
  %133 = load i32, ptr %addrJmp, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %132, i32 noundef %133)
  br label %if.end83

if.end83:                                         ; preds = %if.end81, %if.end29
  %134 = load i32, ptr %iLimit, align 4
  %tobool84 = icmp ne i32 %134, 0
  br i1 %tobool84, label %if.then85, label %if.end95

if.then85:                                        ; preds = %if.end83
  %135 = load ptr, ptr %pSort.addr, align 8
  %iECursor86 = getelementptr inbounds nuw %struct.SortCtx, ptr %135, i32 0, i32 2
  %136 = load i32, ptr %iECursor86, align 4
  store i32 %136, ptr %iCsr, align 4
  %137 = load ptr, ptr %v, align 8
  %138 = load i32, ptr %iLimit, align 4
  %139 = load ptr, ptr %v, align 8
  %call87 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %139)
  %add88 = add nsw i32 %call87, 4
  %call89 = call i32 @sqlite3VdbeAddOp2(ptr noundef %137, i32 noundef 48, i32 noundef %138, i32 noundef %add88)
  %140 = load ptr, ptr %v, align 8
  %141 = load i32, ptr %iCsr, align 4
  %call90 = call i32 @sqlite3VdbeAddOp2(ptr noundef %140, i32 noundef 32, i32 noundef %141, i32 noundef 0)
  %142 = load ptr, ptr %v, align 8
  %143 = load i32, ptr %iCsr, align 4
  %144 = load i32, ptr %regBase, align 4
  %145 = load i32, ptr %nOBSat, align 4
  %add91 = add nsw i32 %144, %145
  %146 = load i32, ptr %nExpr, align 4
  %147 = load i32, ptr %nOBSat, align 4
  %sub92 = sub nsw i32 %146, %147
  %call93 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %142, i32 noundef 37, i32 noundef %143, i32 noundef 0, i32 noundef %add91, i32 noundef %sub92)
  store i32 %call93, ptr %iSkip, align 4
  %148 = load ptr, ptr %v, align 8
  %149 = load i32, ptr %iCsr, align 4
  %call94 = call i32 @sqlite3VdbeAddOp1(ptr noundef %148, i32 noundef 123, i32 noundef %149)
  br label %if.end95

if.end95:                                         ; preds = %if.then85, %if.end83
  %150 = load i32, ptr %regRecord, align 4
  %cmp96 = icmp eq i32 %150, 0
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end95
  %151 = load ptr, ptr %pParse.addr, align 8
  %152 = load ptr, ptr %pSort.addr, align 8
  %153 = load ptr, ptr %pSelect.addr, align 8
  %154 = load i32, ptr %regBase, align 4
  %155 = load i32, ptr %nBase, align 4
  %call99 = call i32 @makeSorterRecord(ptr noundef %151, ptr noundef %152, ptr noundef %153, i32 noundef %154, i32 noundef %155)
  store i32 %call99, ptr %regRecord, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end95
  %156 = load ptr, ptr %pSort.addr, align 8
  %sortFlags101 = getelementptr inbounds nuw %struct.SortCtx, ptr %156, i32 0, i32 8
  %157 = load i8, ptr %sortFlags101, align 4
  %conv102 = zext i8 %157 to i32
  %and103 = and i32 %conv102, 1
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.end100
  store i32 131, ptr %op, align 4
  br label %if.end107

if.else106:                                       ; preds = %if.end100
  store i32 132, ptr %op, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.then105
  %158 = load ptr, ptr %v, align 8
  %159 = load i32, ptr %op, align 4
  %160 = load ptr, ptr %pSort.addr, align 8
  %iECursor108 = getelementptr inbounds nuw %struct.SortCtx, ptr %160, i32 0, i32 2
  %161 = load i32, ptr %iECursor108, align 4
  %162 = load i32, ptr %regRecord, align 4
  %163 = load i32, ptr %regBase, align 4
  %164 = load i32, ptr %nOBSat, align 4
  %add109 = add nsw i32 %163, %164
  %165 = load i32, ptr %nBase, align 4
  %166 = load i32, ptr %nOBSat, align 4
  %sub110 = sub nsw i32 %165, %166
  %call111 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %158, i32 noundef %159, i32 noundef %161, i32 noundef %162, i32 noundef %add109, i32 noundef %sub110)
  %167 = load i32, ptr %iSkip, align 4
  %tobool112 = icmp ne i32 %167, 0
  br i1 %tobool112, label %if.then113, label %if.end121

if.then113:                                       ; preds = %if.end107
  %168 = load ptr, ptr %v, align 8
  %169 = load i32, ptr %iSkip, align 4
  %170 = load ptr, ptr %pSort.addr, align 8
  %labelOBLopt = getelementptr inbounds nuw %struct.SortCtx, ptr %170, i32 0, i32 7
  %171 = load i32, ptr %labelOBLopt, align 8
  %tobool114 = icmp ne i32 %171, 0
  br i1 %tobool114, label %cond.true115, label %cond.false117

cond.true115:                                     ; preds = %if.then113
  %172 = load ptr, ptr %pSort.addr, align 8
  %labelOBLopt116 = getelementptr inbounds nuw %struct.SortCtx, ptr %172, i32 0, i32 7
  %173 = load i32, ptr %labelOBLopt116, align 8
  br label %cond.end119

cond.false117:                                    ; preds = %if.then113
  %174 = load ptr, ptr %v, align 8
  %call118 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %174)
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false117, %cond.true115
  %cond120 = phi i32 [ %173, %cond.true115 ], [ %call118, %cond.false117 ]
  call void @sqlite3VdbeChangeP2(ptr noundef %168, i32 noundef %169, i32 noundef %cond120)
  br label %if.end121

if.end121:                                        ; preds = %cond.end119, %if.end107, %if.then54
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @makeSorterRecord(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

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
