; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

@.str.735 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.736 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.737 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.738 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

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
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeLimitRegisters(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @selectInnerLoop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @generateWithRecursiveQuery(ptr noundef %pParse, ptr noundef %p, ptr noundef %pDest) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %v = alloca ptr, align 8
  %pSetup = alloca ptr, align 8
  %addrTop = alloca i32, align 4
  %addrCont = alloca i32, align 4
  %addrBreak = alloca i32, align 4
  %iCurrent = alloca i32, align 4
  %regCurrent = alloca i32, align 4
  %iQueue = alloca i32, align 4
  %iDistinct = alloca i32, align 4
  %eDest = alloca i32, align 4
  %destQueue = alloca %struct.SelectDest, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %pOrderBy = alloca ptr, align 8
  %pLimit = alloca ptr, align 8
  %regLimit = alloca i32, align 4
  %regOffset = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pSrc1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pSrc1, align 8
  store ptr %1, ptr %pSrc, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  store i32 %4, ptr %nCol, align 4
  %5 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pVdbe, align 8
  store ptr %6, ptr %v, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pPrior, align 8
  store ptr %8, ptr %pSetup, align 8
  store i32 0, ptr %iCurrent, align 4
  store i32 0, ptr %iDistinct, align 4
  store i32 5, ptr %eDest, align 4
  %9 = load ptr, ptr %p.addr, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %9, i32 0, i32 17
  %10 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %11, ptr noundef @.str.735)
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3AuthCheck(ptr noundef %12, i32 noundef 33, ptr noundef null, ptr noundef null, ptr noundef null)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %pParse.addr, align 8
  %call5 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %13)
  store i32 %call5, ptr %addrBreak, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 2
  store i16 320, ptr %nSelectRow, align 2
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %p.addr, align 8
  %17 = load i32, ptr %addrBreak, align 4
  call void @computeLimitRegisters(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %p.addr, align 8
  %pLimit6 = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 15
  %19 = load ptr, ptr %pLimit6, align 8
  store ptr %19, ptr %pLimit, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %iLimit, align 8
  store i32 %21, ptr %regLimit, align 4
  %22 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %iOffset, align 4
  store i32 %23, ptr %regOffset, align 4
  %24 = load ptr, ptr %p.addr, align 8
  %pLimit7 = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 15
  store ptr null, ptr %pLimit7, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %iOffset8 = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 5
  store i32 0, ptr %iOffset8, align 4
  %26 = load ptr, ptr %p.addr, align 8
  %iLimit9 = getelementptr inbounds nuw %struct.Select, ptr %26, i32 0, i32 4
  store i32 0, ptr %iLimit9, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %pOrderBy10 = getelementptr inbounds nuw %struct.Select, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %pOrderBy10, align 8
  store ptr %28, ptr %pOrderBy, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %29 = load i32, ptr %i, align 4
  %30 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %nSrc, align 8
  %cmp = icmp slt i32 %29, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 9
  %isRecursive = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isRecursive, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool11 = icmp ne i32 %bf.cast, 0
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %for.body
  %34 = load ptr, ptr %pSrc, align 8
  %a13 = getelementptr inbounds nuw %struct.SrcList, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %35 to i64
  %arrayidx15 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a13, i64 0, i64 %idxprom14
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx15, i32 0, i32 10
  %36 = load i32, ptr %iCursor, align 8
  store i32 %36, ptr %iCurrent, align 4
  br label %for.end

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then12, %for.cond
  %38 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %38, i32 0, i32 17
  %39 = load i32, ptr %nTab, align 4
  %inc17 = add nsw i32 %39, 1
  store i32 %inc17, ptr %nTab, align 4
  store i32 %39, ptr %iQueue, align 4
  %40 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %40, i32 0, i32 1
  %41 = load i8, ptr %op, align 8
  %conv = zext i8 %41 to i32
  %cmp18 = icmp eq i32 %conv, 130
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.end
  %42 = load ptr, ptr %pOrderBy, align 8
  %tobool21 = icmp ne ptr %42, null
  %43 = zext i1 %tobool21 to i64
  %cond = select i1 %tobool21, i32 8, i32 6
  store i32 %cond, ptr %eDest, align 4
  %44 = load ptr, ptr %pParse.addr, align 8
  %nTab22 = getelementptr inbounds nuw %struct.Parse, ptr %44, i32 0, i32 17
  %45 = load i32, ptr %nTab22, align 4
  %inc23 = add nsw i32 %45, 1
  store i32 %inc23, ptr %nTab22, align 4
  store i32 %45, ptr %iDistinct, align 4
  br label %if.end26

if.else:                                          ; preds = %for.end
  %46 = load ptr, ptr %pOrderBy, align 8
  %tobool24 = icmp ne ptr %46, null
  %47 = zext i1 %tobool24 to i64
  %cond25 = select i1 %tobool24, i32 7, i32 5
  store i32 %cond25, ptr %eDest, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20
  %48 = load i32, ptr %eDest, align 4
  %49 = load i32, ptr %iQueue, align 4
  call void @sqlite3SelectDestInit(ptr noundef %destQueue, i32 noundef %48, i32 noundef %49)
  %50 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %50, i32 0, i32 18
  %51 = load i32, ptr %nMem, align 8
  %inc27 = add nsw i32 %51, 1
  store i32 %inc27, ptr %nMem, align 8
  store i32 %inc27, ptr %regCurrent, align 4
  %52 = load ptr, ptr %v, align 8
  %53 = load i32, ptr %iCurrent, align 4
  %54 = load i32, ptr %regCurrent, align 4
  %55 = load i32, ptr %nCol, align 4
  %call28 = call i32 @sqlite3VdbeAddOp3(ptr noundef %52, i32 noundef 116, i32 noundef %53, i32 noundef %54, i32 noundef %55)
  %56 = load ptr, ptr %pOrderBy, align 8
  %tobool29 = icmp ne ptr %56, null
  br i1 %tobool29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.end26
  %57 = load ptr, ptr %pParse.addr, align 8
  %58 = load ptr, ptr %p.addr, align 8
  %call31 = call ptr @multiSelectOrderByKeyInfo(ptr noundef %57, ptr noundef %58, i32 noundef 1)
  store ptr %call31, ptr %pKeyInfo, align 8
  %59 = load ptr, ptr %v, align 8
  %60 = load i32, ptr %iQueue, align 4
  %61 = load ptr, ptr %pOrderBy, align 8
  %nExpr32 = getelementptr inbounds nuw %struct.ExprList, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %nExpr32, align 8
  %add = add nsw i32 %62, 2
  %63 = load ptr, ptr %pKeyInfo, align 8
  %call33 = call i32 @sqlite3VdbeAddOp4(ptr noundef %59, i32 noundef 112, i32 noundef %60, i32 noundef %add, i32 noundef 0, ptr noundef %63, i32 noundef -9)
  %64 = load ptr, ptr %pOrderBy, align 8
  %pOrderBy34 = getelementptr inbounds nuw %struct.SelectDest, ptr %destQueue, i32 0, i32 5
  store ptr %64, ptr %pOrderBy34, align 8
  br label %if.end37

if.else35:                                        ; preds = %if.end26
  %65 = load ptr, ptr %v, align 8
  %66 = load i32, ptr %iQueue, align 4
  %67 = load i32, ptr %nCol, align 4
  %call36 = call i32 @sqlite3VdbeAddOp2(ptr noundef %65, i32 noundef 112, i32 noundef %66, i32 noundef %67)
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then30
  %68 = load i32, ptr %iDistinct, align 4
  %tobool38 = icmp ne i32 %68, 0
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end37
  %69 = load ptr, ptr %v, align 8
  %70 = load i32, ptr %iDistinct, align 4
  %call40 = call i32 @sqlite3VdbeAddOp2(ptr noundef %69, i32 noundef 112, i32 noundef %70, i32 noundef 0)
  %71 = load ptr, ptr %p.addr, align 8
  %addrOpenEphm = getelementptr inbounds nuw %struct.Select, ptr %71, i32 0, i32 7
  %arrayidx41 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm, i64 0, i64 0
  store i32 %call40, ptr %arrayidx41, align 4
  %72 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %selFlags, align 4
  %or = or i32 %73, 32
  store i32 %or, ptr %selFlags, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37
  %74 = load ptr, ptr %p.addr, align 8
  %pOrderBy43 = getelementptr inbounds nuw %struct.Select, ptr %74, i32 0, i32 12
  store ptr null, ptr %pOrderBy43, align 8
  %75 = load ptr, ptr %pSetup, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %75, i32 0, i32 14
  store ptr null, ptr %pNext, align 8
  %76 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %76, i8 noundef zeroext 1, ptr noundef @.str.736)
  %77 = load ptr, ptr %pParse.addr, align 8
  %78 = load ptr, ptr %pSetup, align 8
  %call44 = call i32 @sqlite3Select(ptr noundef %77, ptr noundef %78, ptr noundef %destQueue)
  store i32 %call44, ptr %rc, align 4
  %79 = load ptr, ptr %p.addr, align 8
  %80 = load ptr, ptr %pSetup, align 8
  %pNext45 = getelementptr inbounds nuw %struct.Select, ptr %80, i32 0, i32 14
  store ptr %79, ptr %pNext45, align 8
  %81 = load i32, ptr %rc, align 4
  %tobool46 = icmp ne i32 %81, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end42
  br label %end_of_recursive_query

if.end48:                                         ; preds = %if.end42
  %82 = load ptr, ptr %v, align 8
  %83 = load i32, ptr %iQueue, align 4
  %84 = load i32, ptr %addrBreak, align 4
  %call49 = call i32 @sqlite3VdbeAddOp2(ptr noundef %82, i32 noundef 36, i32 noundef %83, i32 noundef %84)
  store i32 %call49, ptr %addrTop, align 4
  %85 = load ptr, ptr %v, align 8
  %86 = load i32, ptr %iCurrent, align 4
  %call50 = call i32 @sqlite3VdbeAddOp1(ptr noundef %85, i32 noundef 129, i32 noundef %86)
  %87 = load ptr, ptr %pOrderBy, align 8
  %tobool51 = icmp ne ptr %87, null
  br i1 %tobool51, label %if.then52, label %if.else56

if.then52:                                        ; preds = %if.end48
  %88 = load ptr, ptr %v, align 8
  %89 = load i32, ptr %iQueue, align 4
  %90 = load ptr, ptr %pOrderBy, align 8
  %nExpr53 = getelementptr inbounds nuw %struct.ExprList, ptr %90, i32 0, i32 0
  %91 = load i32, ptr %nExpr53, align 8
  %add54 = add nsw i32 %91, 1
  %92 = load i32, ptr %regCurrent, align 4
  %call55 = call i32 @sqlite3VdbeAddOp3(ptr noundef %88, i32 noundef 90, i32 noundef %89, i32 noundef %add54, i32 noundef %92)
  br label %if.end58

if.else56:                                        ; preds = %if.end48
  %93 = load ptr, ptr %v, align 8
  %94 = load i32, ptr %iQueue, align 4
  %95 = load i32, ptr %regCurrent, align 4
  %call57 = call i32 @sqlite3VdbeAddOp2(ptr noundef %93, i32 noundef 127, i32 noundef %94, i32 noundef %95)
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then52
  %96 = load ptr, ptr %v, align 8
  %97 = load i32, ptr %iQueue, align 4
  %call59 = call i32 @sqlite3VdbeAddOp1(ptr noundef %96, i32 noundef 123, i32 noundef %97)
  %98 = load ptr, ptr %pParse.addr, align 8
  %call60 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %98)
  store i32 %call60, ptr %addrCont, align 4
  %99 = load ptr, ptr %v, align 8
  %100 = load i32, ptr %regOffset, align 4
  %101 = load i32, ptr %addrCont, align 4
  call void @codeOffset(ptr noundef %99, i32 noundef %100, i32 noundef %101)
  %102 = load ptr, ptr %pParse.addr, align 8
  %103 = load ptr, ptr %p.addr, align 8
  %104 = load i32, ptr %iCurrent, align 4
  %105 = load ptr, ptr %pDest.addr, align 8
  %106 = load i32, ptr %addrCont, align 4
  %107 = load i32, ptr %addrBreak, align 4
  call void @selectInnerLoop(ptr noundef %102, ptr noundef %103, i32 noundef %104, ptr noundef null, ptr noundef null, ptr noundef %105, i32 noundef %106, i32 noundef %107)
  %108 = load i32, ptr %regLimit, align 4
  %tobool61 = icmp ne i32 %108, 0
  br i1 %tobool61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end58
  %109 = load ptr, ptr %v, align 8
  %110 = load i32, ptr %regLimit, align 4
  %111 = load i32, ptr %addrBreak, align 4
  %call63 = call i32 @sqlite3VdbeAddOp2(ptr noundef %109, i32 noundef 49, i32 noundef %110, i32 noundef %111)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end58
  %112 = load ptr, ptr %v, align 8
  %113 = load i32, ptr %addrCont, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %112, i32 noundef %113)
  %114 = load ptr, ptr %p.addr, align 8
  %selFlags65 = getelementptr inbounds nuw %struct.Select, ptr %114, i32 0, i32 3
  %115 = load i32, ptr %selFlags65, align 4
  %and = and i32 %115, 8
  %tobool66 = icmp ne i32 %and, 0
  br i1 %tobool66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.end64
  %116 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %116, ptr noundef @.str.737)
  br label %if.end72

if.else68:                                        ; preds = %if.end64
  %117 = load ptr, ptr %p.addr, align 8
  %pPrior69 = getelementptr inbounds nuw %struct.Select, ptr %117, i32 0, i32 13
  store ptr null, ptr %pPrior69, align 8
  %118 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %118, i8 noundef zeroext 1, ptr noundef @.str.738)
  %119 = load ptr, ptr %pParse.addr, align 8
  %120 = load ptr, ptr %p.addr, align 8
  %call70 = call i32 @sqlite3Select(ptr noundef %119, ptr noundef %120, ptr noundef %destQueue)
  %121 = load ptr, ptr %pSetup, align 8
  %122 = load ptr, ptr %p.addr, align 8
  %pPrior71 = getelementptr inbounds nuw %struct.Select, ptr %122, i32 0, i32 13
  store ptr %121, ptr %pPrior71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then67
  %123 = load ptr, ptr %v, align 8
  %124 = load i32, ptr %addrTop, align 4
  %call73 = call i32 @sqlite3VdbeGoto(ptr noundef %123, i32 noundef %124)
  %125 = load ptr, ptr %v, align 8
  %126 = load i32, ptr %addrBreak, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %125, i32 noundef %126)
  br label %end_of_recursive_query

end_of_recursive_query:                           ; preds = %if.end72, %if.then47
  %127 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %db, align 8
  %129 = load ptr, ptr %p.addr, align 8
  %pOrderBy74 = getelementptr inbounds nuw %struct.Select, ptr %129, i32 0, i32 12
  %130 = load ptr, ptr %pOrderBy74, align 8
  call void @sqlite3ExprListDelete(ptr noundef %128, ptr noundef %130)
  %131 = load ptr, ptr %pOrderBy, align 8
  %132 = load ptr, ptr %p.addr, align 8
  %pOrderBy75 = getelementptr inbounds nuw %struct.Select, ptr %132, i32 0, i32 12
  store ptr %131, ptr %pOrderBy75, align 8
  %133 = load ptr, ptr %pLimit, align 8
  %134 = load ptr, ptr %p.addr, align 8
  %pLimit76 = getelementptr inbounds nuw %struct.Select, ptr %134, i32 0, i32 15
  store ptr %133, ptr %pLimit76, align 8
  br label %return

return:                                           ; preds = %end_of_recursive_query, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @multiSelectOrderByKeyInfo(ptr noundef, ptr noundef, i32 noundef) #0

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
