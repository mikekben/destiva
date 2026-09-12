; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereScan = type { ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, [11 x i32], [11 x i16] }
%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
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
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @indexColumnNotNull(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @whereScanInit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @whereScanNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopResize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopInsert(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @estLog(i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopOutputAdjust(ptr noundef, ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopAddBtreeIndex(ptr noundef %pBuilder, ptr noundef %pSrc, ptr noundef %pProbe, i16 noundef signext %nInMul) #0 {
entry:
  %retval = alloca i32, align 4
  %pBuilder.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pProbe.addr = alloca ptr, align 8
  %nInMul.addr = alloca i16, align 2
  %pWInfo = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %opMask = alloca i32, align 4
  %scan = alloca %struct.WhereScan, align 8
  %saved_prereq = alloca i64, align 8
  %saved_nLTerm = alloca i16, align 2
  %saved_nEq = alloca i16, align 2
  %saved_nBtm = alloca i16, align 2
  %saved_nTop = alloca i16, align 2
  %saved_nSkip = alloca i16, align 2
  %saved_wsFlags = alloca i32, align 4
  %saved_nOut = alloca i16, align 2
  %rc = alloca i32, align 4
  %rSize = alloca i16, align 2
  %rLogSize = alloca i16, align 2
  %pTop = alloca ptr, align 8
  %pBtm = alloca ptr, align 8
  %eOp = alloca i16, align 2
  %rCostIdx = alloca i16, align 2
  %nOutUnadjusted = alloca i16, align 2
  %nIn = alloca i32, align 4
  %pExpr94 = alloca ptr, align 8
  %i = alloca i32, align 4
  %M = alloca i16, align 2
  %logK = alloca i16, align 2
  %safetyMargin = alloca i16, align 2
  %iCol = alloca i32, align 4
  %nEq289 = alloca i32, align 4
  %nIter = alloca i16, align 2
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pProbe, ptr %pProbe.addr, align 8
  store i16 %nInMul, ptr %nInMul.addr, align 2
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 0
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
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pTop, align 8
  store ptr null, ptr %pBtm, align 8
  %6 = load ptr, ptr %pBuilder.addr, align 8
  %pNew4 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pNew4, align 8
  store ptr %7, ptr %pNew, align 8
  %8 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 19
  %9 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %pNew, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %10, i32 0, i32 8
  %11 = load i32, ptr %wsFlags, align 8
  %and = and i32 %11, 32
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  store i32 24, ptr %opMask, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  store i32 447, ptr %opMask, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %12 = load ptr, ptr %pProbe.addr, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %12, i32 0, i32 16
  %bf.load = load i16, ptr %bUnordered, align 1
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool8 = icmp ne i32 %bf.cast, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %13 = load i32, ptr %opMask, align 4
  %and10 = and i32 %13, -61
  store i32 %and10, ptr %opMask, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %14 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %14, i32 0, i32 7
  %nEq = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 0
  %15 = load i16, ptr %nEq, align 8
  store i16 %15, ptr %saved_nEq, align 2
  %16 = load ptr, ptr %pNew, align 8
  %u12 = getelementptr inbounds nuw %struct.WhereLoop, ptr %16, i32 0, i32 7
  %nBtm = getelementptr inbounds nuw %struct.anon.19, ptr %u12, i32 0, i32 1
  %17 = load i16, ptr %nBtm, align 2
  store i16 %17, ptr %saved_nBtm, align 2
  %18 = load ptr, ptr %pNew, align 8
  %u13 = getelementptr inbounds nuw %struct.WhereLoop, ptr %18, i32 0, i32 7
  %nTop = getelementptr inbounds nuw %struct.anon.19, ptr %u13, i32 0, i32 2
  %19 = load i16, ptr %nTop, align 4
  store i16 %19, ptr %saved_nTop, align 2
  %20 = load ptr, ptr %pNew, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %20, i32 0, i32 10
  %21 = load i16, ptr %nSkip, align 2
  store i16 %21, ptr %saved_nSkip, align 2
  %22 = load ptr, ptr %pNew, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %22, i32 0, i32 9
  %23 = load i16, ptr %nLTerm, align 4
  store i16 %23, ptr %saved_nLTerm, align 2
  %24 = load ptr, ptr %pNew, align 8
  %wsFlags14 = getelementptr inbounds nuw %struct.WhereLoop, ptr %24, i32 0, i32 8
  %25 = load i32, ptr %wsFlags14, align 8
  store i32 %25, ptr %saved_wsFlags, align 4
  %26 = load ptr, ptr %pNew, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %26, i32 0, i32 0
  %27 = load i64, ptr %prereq, align 8
  store i64 %27, ptr %saved_prereq, align 8
  %28 = load ptr, ptr %pNew, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %28, i32 0, i32 6
  %29 = load i16, ptr %nOut, align 2
  store i16 %29, ptr %saved_nOut, align 2
  %30 = load ptr, ptr %pBuilder.addr, align 8
  %pWC = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %pWC, align 8
  %32 = load ptr, ptr %pSrc.addr, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %32, i32 0, i32 10
  %33 = load i32, ptr %iCursor, align 8
  %34 = load i16, ptr %saved_nEq, align 2
  %conv = zext i16 %34 to i32
  %35 = load i32, ptr %opMask, align 4
  %36 = load ptr, ptr %pProbe.addr, align 8
  %call = call ptr @whereScanInit(ptr noundef %scan, ptr noundef %31, i32 noundef %33, i32 noundef %conv, i32 noundef %35, ptr noundef %36)
  store ptr %call, ptr %pTerm, align 8
  %37 = load ptr, ptr %pNew, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %37, i32 0, i32 4
  store i16 0, ptr %rSetup, align 2
  %38 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst = getelementptr inbounds nuw %struct.Index, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %aiRowLogEst, align 8
  %arrayidx = getelementptr inbounds i16, ptr %39, i64 0
  %40 = load i16, ptr %arrayidx, align 2
  store i16 %40, ptr %rSize, align 2
  %41 = load i16, ptr %rSize, align 2
  %call15 = call signext i16 @estLog(i16 noundef signext %41)
  store i16 %call15, ptr %rLogSize, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc403, %if.end11
  %42 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %42, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %43 = load ptr, ptr %pTerm, align 8
  %cmp17 = icmp ne ptr %43, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %44 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %44, label %for.body, label %for.end405

for.body:                                         ; preds = %land.end
  %45 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %45, i32 0, i32 4
  %46 = load i16, ptr %eOperator, align 4
  store i16 %46, ptr %eOp, align 2
  store i32 0, ptr %nIn, align 4
  %47 = load i16, ptr %eOp, align 2
  %conv19 = zext i16 %47 to i32
  %cmp20 = icmp eq i32 %conv19, 256
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %48 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %48, i32 0, i32 3
  %49 = load i16, ptr %wtFlags, align 2
  %conv22 = zext i16 %49 to i32
  %and23 = and i32 %conv22, 0
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %50 = load ptr, ptr %pProbe.addr, align 8
  %51 = load i16, ptr %saved_nEq, align 2
  %conv26 = zext i16 %51 to i32
  %call27 = call i32 @indexColumnNotNull(ptr noundef %50, i32 noundef %conv26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  br label %for.inc403

if.end30:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %52 = load ptr, ptr %pTerm, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %52, i32 0, i32 11
  %53 = load i64, ptr %prereqRight, align 8
  %54 = load ptr, ptr %pNew, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %54, i32 0, i32 1
  %55 = load i64, ptr %maskSelf, align 8
  %and31 = and i64 %53, %55
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  br label %for.inc403

if.end34:                                         ; preds = %if.end30
  %56 = load ptr, ptr %pTerm, align 8
  %wtFlags35 = getelementptr inbounds nuw %struct.WhereTerm, ptr %56, i32 0, i32 3
  %57 = load i16, ptr %wtFlags35, align 2
  %conv36 = zext i16 %57 to i32
  %and37 = and i32 %conv36, 256
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true39, label %if.end45

land.lhs.true39:                                  ; preds = %if.end34
  %58 = load ptr, ptr %pTerm, align 8
  %eOperator40 = getelementptr inbounds nuw %struct.WhereTerm, ptr %58, i32 0, i32 4
  %59 = load i16, ptr %eOperator40, align 4
  %conv41 = zext i16 %59 to i32
  %cmp42 = icmp eq i32 %conv41, 16
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %land.lhs.true39
  br label %for.inc403

if.end45:                                         ; preds = %land.lhs.true39, %if.end34
  %60 = load ptr, ptr %pSrc.addr, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %60, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %61 = load i8, ptr %jointype, align 4
  %conv46 = zext i8 %61 to i32
  %and47 = and i32 %conv46, 8
  %cmp48 = icmp ne i32 %and47, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end55

land.lhs.true50:                                  ; preds = %if.end45
  %62 = load ptr, ptr %pTerm, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %flags, align 4
  %and51 = and i32 %64, 1
  %cmp52 = icmp ne i32 %and51, 0
  br i1 %cmp52, label %if.end55, label %if.then54

if.then54:                                        ; preds = %land.lhs.true50
  br label %for.inc403

if.end55:                                         ; preds = %land.lhs.true50, %if.end45
  %65 = load ptr, ptr %pProbe.addr, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %65, i32 0, i32 15
  %66 = load i8, ptr %onError, align 2
  %conv56 = zext i8 %66 to i32
  %cmp57 = icmp ne i32 %conv56, 0
  br i1 %cmp57, label %land.lhs.true59, label %if.else65

land.lhs.true59:                                  ; preds = %if.end55
  %67 = load i16, ptr %saved_nEq, align 2
  %conv60 = zext i16 %67 to i32
  %68 = load ptr, ptr %pProbe.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %68, i32 0, i32 13
  %69 = load i16, ptr %nKeyCol, align 2
  %conv61 = zext i16 %69 to i32
  %sub = sub nsw i32 %conv61, 1
  %cmp62 = icmp eq i32 %conv60, %sub
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %land.lhs.true59
  %70 = load ptr, ptr %pBuilder.addr, align 8
  %bldFlags = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %70, i32 0, i32 5
  %71 = load i32, ptr %bldFlags, align 8
  %or = or i32 %71, 2
  store i32 %or, ptr %bldFlags, align 8
  br label %if.end68

if.else65:                                        ; preds = %land.lhs.true59, %if.end55
  %72 = load ptr, ptr %pBuilder.addr, align 8
  %bldFlags66 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %72, i32 0, i32 5
  %73 = load i32, ptr %bldFlags66, align 8
  %or67 = or i32 %73, 1
  store i32 %or67, ptr %bldFlags66, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then64
  %74 = load i32, ptr %saved_wsFlags, align 4
  %75 = load ptr, ptr %pNew, align 8
  %wsFlags69 = getelementptr inbounds nuw %struct.WhereLoop, ptr %75, i32 0, i32 8
  store i32 %74, ptr %wsFlags69, align 8
  %76 = load i16, ptr %saved_nEq, align 2
  %77 = load ptr, ptr %pNew, align 8
  %u70 = getelementptr inbounds nuw %struct.WhereLoop, ptr %77, i32 0, i32 7
  %nEq71 = getelementptr inbounds nuw %struct.anon.19, ptr %u70, i32 0, i32 0
  store i16 %76, ptr %nEq71, align 8
  %78 = load i16, ptr %saved_nBtm, align 2
  %79 = load ptr, ptr %pNew, align 8
  %u72 = getelementptr inbounds nuw %struct.WhereLoop, ptr %79, i32 0, i32 7
  %nBtm73 = getelementptr inbounds nuw %struct.anon.19, ptr %u72, i32 0, i32 1
  store i16 %78, ptr %nBtm73, align 2
  %80 = load i16, ptr %saved_nTop, align 2
  %81 = load ptr, ptr %pNew, align 8
  %u74 = getelementptr inbounds nuw %struct.WhereLoop, ptr %81, i32 0, i32 7
  %nTop75 = getelementptr inbounds nuw %struct.anon.19, ptr %u74, i32 0, i32 2
  store i16 %80, ptr %nTop75, align 4
  %82 = load i16, ptr %saved_nLTerm, align 2
  %83 = load ptr, ptr %pNew, align 8
  %nLTerm76 = getelementptr inbounds nuw %struct.WhereLoop, ptr %83, i32 0, i32 9
  store i16 %82, ptr %nLTerm76, align 4
  %84 = load ptr, ptr %db, align 8
  %85 = load ptr, ptr %pNew, align 8
  %86 = load ptr, ptr %pNew, align 8
  %nLTerm77 = getelementptr inbounds nuw %struct.WhereLoop, ptr %86, i32 0, i32 9
  %87 = load i16, ptr %nLTerm77, align 4
  %conv78 = zext i16 %87 to i32
  %add = add nsw i32 %conv78, 1
  %call79 = call i32 @whereLoopResize(ptr noundef %84, ptr noundef %85, i32 noundef %add)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end68
  br label %for.end405

if.end82:                                         ; preds = %if.end68
  %88 = load ptr, ptr %pTerm, align 8
  %89 = load ptr, ptr %pNew, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %89, i32 0, i32 12
  %90 = load ptr, ptr %aLTerm, align 8
  %91 = load ptr, ptr %pNew, align 8
  %nLTerm83 = getelementptr inbounds nuw %struct.WhereLoop, ptr %91, i32 0, i32 9
  %92 = load i16, ptr %nLTerm83, align 4
  %inc = add i16 %92, 1
  store i16 %inc, ptr %nLTerm83, align 4
  %idxprom = zext i16 %92 to i64
  %arrayidx84 = getelementptr inbounds nuw ptr, ptr %90, i64 %idxprom
  store ptr %88, ptr %arrayidx84, align 8
  %93 = load i64, ptr %saved_prereq, align 8
  %94 = load ptr, ptr %pTerm, align 8
  %prereqRight85 = getelementptr inbounds nuw %struct.WhereTerm, ptr %94, i32 0, i32 11
  %95 = load i64, ptr %prereqRight85, align 8
  %or86 = or i64 %93, %95
  %96 = load ptr, ptr %pNew, align 8
  %maskSelf87 = getelementptr inbounds nuw %struct.WhereLoop, ptr %96, i32 0, i32 1
  %97 = load i64, ptr %maskSelf87, align 8
  %not = xor i64 %97, -1
  %and88 = and i64 %or86, %not
  %98 = load ptr, ptr %pNew, align 8
  %prereq89 = getelementptr inbounds nuw %struct.WhereLoop, ptr %98, i32 0, i32 0
  store i64 %and88, ptr %prereq89, align 8
  %99 = load i16, ptr %eOp, align 2
  %conv90 = zext i16 %99 to i32
  %and91 = and i32 %conv90, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then93, label %if.else161

if.then93:                                        ; preds = %if.end82
  %100 = load ptr, ptr %pTerm, align 8
  %pExpr95 = getelementptr inbounds nuw %struct.WhereTerm, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %pExpr95, align 8
  store ptr %101, ptr %pExpr94, align 8
  %102 = load ptr, ptr %pExpr94, align 8
  %flags96 = getelementptr inbounds nuw %struct.Expr, ptr %102, i32 0, i32 2
  %103 = load i32, ptr %flags96, align 4
  %and97 = and i32 %103, 2048
  %cmp98 = icmp ne i32 %and97, 0
  br i1 %cmp98, label %if.then100, label %if.else122

if.then100:                                       ; preds = %if.then93
  store i32 46, ptr %nIn, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc, %if.then100
  %104 = load i32, ptr %i, align 4
  %105 = load ptr, ptr %pNew, align 8
  %nLTerm102 = getelementptr inbounds nuw %struct.WhereLoop, ptr %105, i32 0, i32 9
  %106 = load i16, ptr %nLTerm102, align 4
  %conv103 = zext i16 %106 to i32
  %sub104 = sub nsw i32 %conv103, 1
  %cmp105 = icmp slt i32 %104, %sub104
  br i1 %cmp105, label %for.body107, label %for.end

for.body107:                                      ; preds = %for.cond101
  %107 = load ptr, ptr %pNew, align 8
  %aLTerm108 = getelementptr inbounds nuw %struct.WhereLoop, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %aLTerm108, align 8
  %109 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %109 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %108, i64 %idxprom109
  %110 = load ptr, ptr %arrayidx110, align 8
  %tobool111 = icmp ne ptr %110, null
  br i1 %tobool111, label %land.lhs.true112, label %if.end120

land.lhs.true112:                                 ; preds = %for.body107
  %111 = load ptr, ptr %pNew, align 8
  %aLTerm113 = getelementptr inbounds nuw %struct.WhereLoop, ptr %111, i32 0, i32 12
  %112 = load ptr, ptr %aLTerm113, align 8
  %113 = load i32, ptr %i, align 4
  %idxprom114 = sext i32 %113 to i64
  %arrayidx115 = getelementptr inbounds ptr, ptr %112, i64 %idxprom114
  %114 = load ptr, ptr %arrayidx115, align 8
  %pExpr116 = getelementptr inbounds nuw %struct.WhereTerm, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %pExpr116, align 8
  %116 = load ptr, ptr %pExpr94, align 8
  %cmp117 = icmp eq ptr %115, %116
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %land.lhs.true112
  store i32 0, ptr %nIn, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %land.lhs.true112, %for.body107
  br label %for.inc

for.inc:                                          ; preds = %if.end120
  %117 = load i32, ptr %i, align 4
  %inc121 = add nsw i32 %117, 1
  store i32 %inc121, ptr %i, align 4
  br label %for.cond101, !llvm.loop !6

for.end:                                          ; preds = %for.cond101
  br label %if.end134

if.else122:                                       ; preds = %if.then93
  %118 = load ptr, ptr %pExpr94, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %118, i32 0, i32 6
  %119 = load ptr, ptr %x, align 8
  %tobool123 = icmp ne ptr %119, null
  br i1 %tobool123, label %land.lhs.true124, label %if.end133

land.lhs.true124:                                 ; preds = %if.else122
  %120 = load ptr, ptr %pExpr94, align 8
  %x125 = getelementptr inbounds nuw %struct.Expr, ptr %120, i32 0, i32 6
  %121 = load ptr, ptr %x125, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %121, i32 0, i32 0
  %122 = load i32, ptr %nExpr, align 8
  %tobool126 = icmp ne i32 %122, 0
  br i1 %tobool126, label %if.then127, label %if.end133

if.then127:                                       ; preds = %land.lhs.true124
  %123 = load ptr, ptr %pExpr94, align 8
  %x128 = getelementptr inbounds nuw %struct.Expr, ptr %123, i32 0, i32 6
  %124 = load ptr, ptr %x128, align 8
  %nExpr129 = getelementptr inbounds nuw %struct.ExprList, ptr %124, i32 0, i32 0
  %125 = load i32, ptr %nExpr129, align 8
  %conv130 = sext i32 %125 to i64
  %call131 = call signext i16 @sqlite3LogEst(i64 noundef %conv130)
  %conv132 = sext i16 %call131 to i32
  store i32 %conv132, ptr %nIn, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %land.lhs.true124, %if.else122
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %for.end
  %126 = load ptr, ptr %pProbe.addr, align 8
  %hasStat1 = getelementptr inbounds nuw %struct.Index, ptr %126, i32 0, i32 16
  %bf.load135 = load i16, ptr %hasStat1, align 1
  %bf.lshr136 = lshr i16 %bf.load135, 7
  %bf.clear137 = and i16 %bf.lshr136, 1
  %bf.cast138 = zext i16 %bf.clear137 to i32
  %tobool139 = icmp ne i32 %bf.cast138, 0
  br i1 %tobool139, label %if.then140, label %if.end158

if.then140:                                       ; preds = %if.end134
  %127 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst141 = getelementptr inbounds nuw %struct.Index, ptr %127, i32 0, i32 2
  %128 = load ptr, ptr %aiRowLogEst141, align 8
  %129 = load i16, ptr %saved_nEq, align 2
  %idxprom142 = zext i16 %129 to i64
  %arrayidx143 = getelementptr inbounds nuw i16, ptr %128, i64 %idxprom142
  %130 = load i16, ptr %arrayidx143, align 2
  store i16 %130, ptr %M, align 2
  %131 = load i32, ptr %nIn, align 4
  %conv144 = trunc i32 %131 to i16
  %call145 = call signext i16 @estLog(i16 noundef signext %conv144)
  store i16 %call145, ptr %logK, align 2
  store i16 10, ptr %safetyMargin, align 2
  %132 = load i16, ptr %M, align 2
  %conv146 = sext i16 %132 to i32
  %133 = load i16, ptr %logK, align 2
  %conv147 = sext i16 %133 to i32
  %add148 = add nsw i32 %conv146, %conv147
  %134 = load i16, ptr %safetyMargin, align 2
  %conv149 = sext i16 %134 to i32
  %add150 = add nsw i32 %add148, %conv149
  %135 = load i32, ptr %nIn, align 4
  %136 = load i16, ptr %rLogSize, align 2
  %conv151 = sext i16 %136 to i32
  %add152 = add nsw i32 %135, %conv151
  %cmp153 = icmp slt i32 %add150, %add152
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.then140
  br label %for.inc403

if.else156:                                       ; preds = %if.then140
  br label %if.end157

if.end157:                                        ; preds = %if.else156
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end134
  %137 = load ptr, ptr %pNew, align 8
  %wsFlags159 = getelementptr inbounds nuw %struct.WhereLoop, ptr %137, i32 0, i32 8
  %138 = load i32, ptr %wsFlags159, align 8
  %or160 = or i32 %138, 4
  store i32 %or160, ptr %wsFlags159, align 8
  br label %if.end282

if.else161:                                       ; preds = %if.end82
  %139 = load i16, ptr %eOp, align 2
  %conv162 = zext i16 %139 to i32
  %and163 = and i32 %conv162, 130
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then165, label %if.else217

if.then165:                                       ; preds = %if.else161
  %140 = load ptr, ptr %pProbe.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %aiColumn, align 8
  %142 = load i16, ptr %saved_nEq, align 2
  %idxprom166 = zext i16 %142 to i64
  %arrayidx167 = getelementptr inbounds nuw i16, ptr %141, i64 %idxprom166
  %143 = load i16, ptr %arrayidx167, align 2
  %conv168 = sext i16 %143 to i32
  store i32 %conv168, ptr %iCol, align 4
  %144 = load ptr, ptr %pNew, align 8
  %wsFlags169 = getelementptr inbounds nuw %struct.WhereLoop, ptr %144, i32 0, i32 8
  %145 = load i32, ptr %wsFlags169, align 8
  %or170 = or i32 %145, 1
  store i32 %or170, ptr %wsFlags169, align 8
  %146 = load i32, ptr %iCol, align 4
  %cmp171 = icmp eq i32 %146, -1
  br i1 %cmp171, label %if.then187, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %if.then165
  %147 = load i32, ptr %iCol, align 4
  %cmp174 = icmp sge i32 %147, 0
  br i1 %cmp174, label %land.lhs.true176, label %if.end216

land.lhs.true176:                                 ; preds = %lor.lhs.false173
  %148 = load i16, ptr %nInMul.addr, align 2
  %conv177 = sext i16 %148 to i32
  %cmp178 = icmp eq i32 %conv177, 0
  br i1 %cmp178, label %land.lhs.true180, label %if.end216

land.lhs.true180:                                 ; preds = %land.lhs.true176
  %149 = load i16, ptr %saved_nEq, align 2
  %conv181 = zext i16 %149 to i32
  %150 = load ptr, ptr %pProbe.addr, align 8
  %nKeyCol182 = getelementptr inbounds nuw %struct.Index, ptr %150, i32 0, i32 13
  %151 = load i16, ptr %nKeyCol182, align 2
  %conv183 = zext i16 %151 to i32
  %sub184 = sub nsw i32 %conv183, 1
  %cmp185 = icmp eq i32 %conv181, %sub184
  br i1 %cmp185, label %if.then187, label %if.end216

if.then187:                                       ; preds = %land.lhs.true180, %if.then165
  %152 = load i32, ptr %iCol, align 4
  %cmp188 = icmp eq i32 %152, -1
  br i1 %cmp188, label %if.then209, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %if.then187
  %153 = load ptr, ptr %pProbe.addr, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %153, i32 0, i32 16
  %bf.load191 = load i16, ptr %uniqNotNull, align 1
  %bf.lshr192 = lshr i16 %bf.load191, 3
  %bf.clear193 = and i16 %bf.lshr192, 1
  %bf.cast194 = zext i16 %bf.clear193 to i32
  %tobool195 = icmp ne i32 %bf.cast194, 0
  br i1 %tobool195, label %if.then209, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false190
  %154 = load ptr, ptr %pProbe.addr, align 8
  %nKeyCol197 = getelementptr inbounds nuw %struct.Index, ptr %154, i32 0, i32 13
  %155 = load i16, ptr %nKeyCol197, align 2
  %conv198 = zext i16 %155 to i32
  %cmp199 = icmp eq i32 %conv198, 1
  br i1 %cmp199, label %land.lhs.true201, label %if.else212

land.lhs.true201:                                 ; preds = %lor.lhs.false196
  %156 = load ptr, ptr %pProbe.addr, align 8
  %onError202 = getelementptr inbounds nuw %struct.Index, ptr %156, i32 0, i32 15
  %157 = load i8, ptr %onError202, align 2
  %conv203 = zext i8 %157 to i32
  %tobool204 = icmp ne i32 %conv203, 0
  br i1 %tobool204, label %land.lhs.true205, label %if.else212

land.lhs.true205:                                 ; preds = %land.lhs.true201
  %158 = load i16, ptr %eOp, align 2
  %conv206 = zext i16 %158 to i32
  %cmp207 = icmp eq i32 %conv206, 2
  br i1 %cmp207, label %if.then209, label %if.else212

if.then209:                                       ; preds = %land.lhs.true205, %lor.lhs.false190, %if.then187
  %159 = load ptr, ptr %pNew, align 8
  %wsFlags210 = getelementptr inbounds nuw %struct.WhereLoop, ptr %159, i32 0, i32 8
  %160 = load i32, ptr %wsFlags210, align 8
  %or211 = or i32 %160, 4096
  store i32 %or211, ptr %wsFlags210, align 8
  br label %if.end215

if.else212:                                       ; preds = %land.lhs.true205, %land.lhs.true201, %lor.lhs.false196
  %161 = load ptr, ptr %pNew, align 8
  %wsFlags213 = getelementptr inbounds nuw %struct.WhereLoop, ptr %161, i32 0, i32 8
  %162 = load i32, ptr %wsFlags213, align 8
  %or214 = or i32 %162, 65536
  store i32 %or214, ptr %wsFlags213, align 8
  br label %if.end215

if.end215:                                        ; preds = %if.else212, %if.then209
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %land.lhs.true180, %land.lhs.true176, %lor.lhs.false173
  br label %if.end281

if.else217:                                       ; preds = %if.else161
  %163 = load i16, ptr %eOp, align 2
  %conv218 = zext i16 %163 to i32
  %and219 = and i32 %conv218, 256
  %tobool220 = icmp ne i32 %and219, 0
  br i1 %tobool220, label %if.then221, label %if.else224

if.then221:                                       ; preds = %if.else217
  %164 = load ptr, ptr %pNew, align 8
  %wsFlags222 = getelementptr inbounds nuw %struct.WhereLoop, ptr %164, i32 0, i32 8
  %165 = load i32, ptr %wsFlags222, align 8
  %or223 = or i32 %165, 8
  store i32 %or223, ptr %wsFlags222, align 8
  br label %if.end280

if.else224:                                       ; preds = %if.else217
  %166 = load i16, ptr %eOp, align 2
  %conv225 = zext i16 %166 to i32
  %and226 = and i32 %conv225, 36
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then228, label %if.else260

if.then228:                                       ; preds = %if.else224
  %167 = load ptr, ptr %pNew, align 8
  %wsFlags229 = getelementptr inbounds nuw %struct.WhereLoop, ptr %167, i32 0, i32 8
  %168 = load i32, ptr %wsFlags229, align 8
  %or230 = or i32 %168, 34
  store i32 %or230, ptr %wsFlags229, align 8
  %169 = load ptr, ptr %pParse, align 8
  %170 = load ptr, ptr %pSrc.addr, align 8
  %iCursor231 = getelementptr inbounds nuw %struct.SrcList_item, ptr %170, i32 0, i32 10
  %171 = load i32, ptr %iCursor231, align 8
  %172 = load ptr, ptr %pProbe.addr, align 8
  %173 = load i16, ptr %saved_nEq, align 2
  %conv232 = zext i16 %173 to i32
  %174 = load ptr, ptr %pTerm, align 8
  %call233 = call i32 @whereRangeVectorLen(ptr noundef %169, i32 noundef %171, ptr noundef %172, i32 noundef %conv232, ptr noundef %174)
  %conv234 = trunc i32 %call233 to i16
  %175 = load ptr, ptr %pNew, align 8
  %u235 = getelementptr inbounds nuw %struct.WhereLoop, ptr %175, i32 0, i32 7
  %nBtm236 = getelementptr inbounds nuw %struct.anon.19, ptr %u235, i32 0, i32 1
  store i16 %conv234, ptr %nBtm236, align 2
  %176 = load ptr, ptr %pTerm, align 8
  store ptr %176, ptr %pBtm, align 8
  store ptr null, ptr %pTop, align 8
  %177 = load ptr, ptr %pTerm, align 8
  %wtFlags237 = getelementptr inbounds nuw %struct.WhereTerm, ptr %177, i32 0, i32 3
  %178 = load i16, ptr %wtFlags237, align 2
  %conv238 = zext i16 %178 to i32
  %and239 = and i32 %conv238, 256
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then241, label %if.end259

if.then241:                                       ; preds = %if.then228
  %179 = load ptr, ptr %pTerm, align 8
  %arrayidx242 = getelementptr inbounds %struct.WhereTerm, ptr %179, i64 1
  store ptr %arrayidx242, ptr %pTop, align 8
  %180 = load ptr, ptr %db, align 8
  %181 = load ptr, ptr %pNew, align 8
  %182 = load ptr, ptr %pNew, align 8
  %nLTerm243 = getelementptr inbounds nuw %struct.WhereLoop, ptr %182, i32 0, i32 9
  %183 = load i16, ptr %nLTerm243, align 4
  %conv244 = zext i16 %183 to i32
  %add245 = add nsw i32 %conv244, 1
  %call246 = call i32 @whereLoopResize(ptr noundef %180, ptr noundef %181, i32 noundef %add245)
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.then248, label %if.end249

if.then248:                                       ; preds = %if.then241
  br label %for.end405

if.end249:                                        ; preds = %if.then241
  %184 = load ptr, ptr %pTop, align 8
  %185 = load ptr, ptr %pNew, align 8
  %aLTerm250 = getelementptr inbounds nuw %struct.WhereLoop, ptr %185, i32 0, i32 12
  %186 = load ptr, ptr %aLTerm250, align 8
  %187 = load ptr, ptr %pNew, align 8
  %nLTerm251 = getelementptr inbounds nuw %struct.WhereLoop, ptr %187, i32 0, i32 9
  %188 = load i16, ptr %nLTerm251, align 4
  %inc252 = add i16 %188, 1
  store i16 %inc252, ptr %nLTerm251, align 4
  %idxprom253 = zext i16 %188 to i64
  %arrayidx254 = getelementptr inbounds nuw ptr, ptr %186, i64 %idxprom253
  store ptr %184, ptr %arrayidx254, align 8
  %189 = load ptr, ptr %pNew, align 8
  %wsFlags255 = getelementptr inbounds nuw %struct.WhereLoop, ptr %189, i32 0, i32 8
  %190 = load i32, ptr %wsFlags255, align 8
  %or256 = or i32 %190, 16
  store i32 %or256, ptr %wsFlags255, align 8
  %191 = load ptr, ptr %pNew, align 8
  %u257 = getelementptr inbounds nuw %struct.WhereLoop, ptr %191, i32 0, i32 7
  %nTop258 = getelementptr inbounds nuw %struct.anon.19, ptr %u257, i32 0, i32 2
  store i16 1, ptr %nTop258, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.end249, %if.then228
  br label %if.end279

if.else260:                                       ; preds = %if.else224
  %192 = load ptr, ptr %pNew, align 8
  %wsFlags261 = getelementptr inbounds nuw %struct.WhereLoop, ptr %192, i32 0, i32 8
  %193 = load i32, ptr %wsFlags261, align 8
  %or262 = or i32 %193, 18
  store i32 %or262, ptr %wsFlags261, align 8
  %194 = load ptr, ptr %pParse, align 8
  %195 = load ptr, ptr %pSrc.addr, align 8
  %iCursor263 = getelementptr inbounds nuw %struct.SrcList_item, ptr %195, i32 0, i32 10
  %196 = load i32, ptr %iCursor263, align 8
  %197 = load ptr, ptr %pProbe.addr, align 8
  %198 = load i16, ptr %saved_nEq, align 2
  %conv264 = zext i16 %198 to i32
  %199 = load ptr, ptr %pTerm, align 8
  %call265 = call i32 @whereRangeVectorLen(ptr noundef %194, i32 noundef %196, ptr noundef %197, i32 noundef %conv264, ptr noundef %199)
  %conv266 = trunc i32 %call265 to i16
  %200 = load ptr, ptr %pNew, align 8
  %u267 = getelementptr inbounds nuw %struct.WhereLoop, ptr %200, i32 0, i32 7
  %nTop268 = getelementptr inbounds nuw %struct.anon.19, ptr %u267, i32 0, i32 2
  store i16 %conv266, ptr %nTop268, align 4
  %201 = load ptr, ptr %pTerm, align 8
  store ptr %201, ptr %pTop, align 8
  %202 = load ptr, ptr %pNew, align 8
  %wsFlags269 = getelementptr inbounds nuw %struct.WhereLoop, ptr %202, i32 0, i32 8
  %203 = load i32, ptr %wsFlags269, align 8
  %and270 = and i32 %203, 32
  %cmp271 = icmp ne i32 %and270, 0
  br i1 %cmp271, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else260
  %204 = load ptr, ptr %pNew, align 8
  %aLTerm273 = getelementptr inbounds nuw %struct.WhereLoop, ptr %204, i32 0, i32 12
  %205 = load ptr, ptr %aLTerm273, align 8
  %206 = load ptr, ptr %pNew, align 8
  %nLTerm274 = getelementptr inbounds nuw %struct.WhereLoop, ptr %206, i32 0, i32 9
  %207 = load i16, ptr %nLTerm274, align 4
  %conv275 = zext i16 %207 to i32
  %sub276 = sub nsw i32 %conv275, 2
  %idxprom277 = sext i32 %sub276 to i64
  %arrayidx278 = getelementptr inbounds ptr, ptr %205, i64 %idxprom277
  %208 = load ptr, ptr %arrayidx278, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else260
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %208, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %pBtm, align 8
  br label %if.end279

if.end279:                                        ; preds = %cond.end, %if.end259
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %if.then221
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %if.end216
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.end158
  %209 = load ptr, ptr %pNew, align 8
  %wsFlags283 = getelementptr inbounds nuw %struct.WhereLoop, ptr %209, i32 0, i32 8
  %210 = load i32, ptr %wsFlags283, align 8
  %and284 = and i32 %210, 2
  %tobool285 = icmp ne i32 %and284, 0
  br i1 %tobool285, label %if.then286, label %if.else288

if.then286:                                       ; preds = %if.end282
  %211 = load ptr, ptr %pParse, align 8
  %212 = load ptr, ptr %pBuilder.addr, align 8
  %213 = load ptr, ptr %pBtm, align 8
  %214 = load ptr, ptr %pTop, align 8
  %215 = load ptr, ptr %pNew, align 8
  %call287 = call i32 @whereRangeScanEst(ptr noundef %211, ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %215)
  br label %if.end340

if.else288:                                       ; preds = %if.end282
  %216 = load ptr, ptr %pNew, align 8
  %u290 = getelementptr inbounds nuw %struct.WhereLoop, ptr %216, i32 0, i32 7
  %nEq291 = getelementptr inbounds nuw %struct.anon.19, ptr %u290, i32 0, i32 0
  %217 = load i16, ptr %nEq291, align 8
  %inc292 = add i16 %217, 1
  store i16 %inc292, ptr %nEq291, align 8
  %conv293 = zext i16 %inc292 to i32
  store i32 %conv293, ptr %nEq289, align 4
  %218 = load ptr, ptr %pTerm, align 8
  %truthProb = getelementptr inbounds nuw %struct.WhereTerm, ptr %218, i32 0, i32 2
  %219 = load i16, ptr %truthProb, align 8
  %conv294 = sext i16 %219 to i32
  %cmp295 = icmp sle i32 %conv294, 0
  br i1 %cmp295, label %land.lhs.true297, label %if.else315

land.lhs.true297:                                 ; preds = %if.else288
  %220 = load ptr, ptr %pProbe.addr, align 8
  %aiColumn298 = getelementptr inbounds nuw %struct.Index, ptr %220, i32 0, i32 1
  %221 = load ptr, ptr %aiColumn298, align 8
  %222 = load i16, ptr %saved_nEq, align 2
  %idxprom299 = zext i16 %222 to i64
  %arrayidx300 = getelementptr inbounds nuw i16, ptr %221, i64 %idxprom299
  %223 = load i16, ptr %arrayidx300, align 2
  %conv301 = sext i16 %223 to i32
  %cmp302 = icmp sge i32 %conv301, 0
  br i1 %cmp302, label %if.then304, label %if.else315

if.then304:                                       ; preds = %land.lhs.true297
  %224 = load ptr, ptr %pTerm, align 8
  %truthProb305 = getelementptr inbounds nuw %struct.WhereTerm, ptr %224, i32 0, i32 2
  %225 = load i16, ptr %truthProb305, align 8
  %conv306 = sext i16 %225 to i32
  %226 = load ptr, ptr %pNew, align 8
  %nOut307 = getelementptr inbounds nuw %struct.WhereLoop, ptr %226, i32 0, i32 6
  %227 = load i16, ptr %nOut307, align 2
  %conv308 = sext i16 %227 to i32
  %add309 = add nsw i32 %conv308, %conv306
  %conv310 = trunc i32 %add309 to i16
  store i16 %conv310, ptr %nOut307, align 2
  %228 = load i32, ptr %nIn, align 4
  %229 = load ptr, ptr %pNew, align 8
  %nOut311 = getelementptr inbounds nuw %struct.WhereLoop, ptr %229, i32 0, i32 6
  %230 = load i16, ptr %nOut311, align 2
  %conv312 = sext i16 %230 to i32
  %sub313 = sub nsw i32 %conv312, %228
  %conv314 = trunc i32 %sub313 to i16
  store i16 %conv314, ptr %nOut311, align 2
  br label %if.end339

if.else315:                                       ; preds = %land.lhs.true297, %if.else288
  %231 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst316 = getelementptr inbounds nuw %struct.Index, ptr %231, i32 0, i32 2
  %232 = load ptr, ptr %aiRowLogEst316, align 8
  %233 = load i32, ptr %nEq289, align 4
  %idxprom317 = sext i32 %233 to i64
  %arrayidx318 = getelementptr inbounds i16, ptr %232, i64 %idxprom317
  %234 = load i16, ptr %arrayidx318, align 2
  %conv319 = sext i16 %234 to i32
  %235 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst320 = getelementptr inbounds nuw %struct.Index, ptr %235, i32 0, i32 2
  %236 = load ptr, ptr %aiRowLogEst320, align 8
  %237 = load i32, ptr %nEq289, align 4
  %sub321 = sub nsw i32 %237, 1
  %idxprom322 = sext i32 %sub321 to i64
  %arrayidx323 = getelementptr inbounds i16, ptr %236, i64 %idxprom322
  %238 = load i16, ptr %arrayidx323, align 2
  %conv324 = sext i16 %238 to i32
  %sub325 = sub nsw i32 %conv319, %conv324
  %239 = load ptr, ptr %pNew, align 8
  %nOut326 = getelementptr inbounds nuw %struct.WhereLoop, ptr %239, i32 0, i32 6
  %240 = load i16, ptr %nOut326, align 2
  %conv327 = sext i16 %240 to i32
  %add328 = add nsw i32 %conv327, %sub325
  %conv329 = trunc i32 %add328 to i16
  store i16 %conv329, ptr %nOut326, align 2
  %241 = load i16, ptr %eOp, align 2
  %conv330 = zext i16 %241 to i32
  %and331 = and i32 %conv330, 256
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then333, label %if.end338

if.then333:                                       ; preds = %if.else315
  %242 = load ptr, ptr %pNew, align 8
  %nOut334 = getelementptr inbounds nuw %struct.WhereLoop, ptr %242, i32 0, i32 6
  %243 = load i16, ptr %nOut334, align 2
  %conv335 = sext i16 %243 to i32
  %add336 = add nsw i32 %conv335, 10
  %conv337 = trunc i32 %add336 to i16
  store i16 %conv337, ptr %nOut334, align 2
  br label %if.end338

if.end338:                                        ; preds = %if.then333, %if.else315
  br label %if.end339

if.end339:                                        ; preds = %if.end338, %if.then304
  br label %if.end340

if.end340:                                        ; preds = %if.end339, %if.then286
  %244 = load ptr, ptr %pNew, align 8
  %nOut341 = getelementptr inbounds nuw %struct.WhereLoop, ptr %244, i32 0, i32 6
  %245 = load i16, ptr %nOut341, align 2
  %conv342 = sext i16 %245 to i32
  %add343 = add nsw i32 %conv342, 1
  %246 = load ptr, ptr %pProbe.addr, align 8
  %szIdxRow = getelementptr inbounds nuw %struct.Index, ptr %246, i32 0, i32 12
  %247 = load i16, ptr %szIdxRow, align 4
  %conv344 = sext i16 %247 to i32
  %mul = mul nsw i32 15, %conv344
  %248 = load ptr, ptr %pSrc.addr, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %248, i32 0, i32 4
  %249 = load ptr, ptr %pTab, align 8
  %szTabRow = getelementptr inbounds nuw %struct.Table, ptr %249, i32 0, i32 13
  %250 = load i16, ptr %szTabRow, align 2
  %conv345 = sext i16 %250 to i32
  %div = sdiv i32 %mul, %conv345
  %add346 = add nsw i32 %add343, %div
  %conv347 = trunc i32 %add346 to i16
  store i16 %conv347, ptr %rCostIdx, align 2
  %251 = load i16, ptr %rLogSize, align 2
  %252 = load i16, ptr %rCostIdx, align 2
  %call348 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %251, i16 noundef signext %252)
  %253 = load ptr, ptr %pNew, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %253, i32 0, i32 5
  store i16 %call348, ptr %rRun, align 4
  %254 = load ptr, ptr %pNew, align 8
  %wsFlags349 = getelementptr inbounds nuw %struct.WhereLoop, ptr %254, i32 0, i32 8
  %255 = load i32, ptr %wsFlags349, align 8
  %and350 = and i32 %255, 320
  %cmp351 = icmp eq i32 %and350, 0
  br i1 %cmp351, label %if.then353, label %if.end361

if.then353:                                       ; preds = %if.end340
  %256 = load ptr, ptr %pNew, align 8
  %rRun354 = getelementptr inbounds nuw %struct.WhereLoop, ptr %256, i32 0, i32 5
  %257 = load i16, ptr %rRun354, align 4
  %258 = load ptr, ptr %pNew, align 8
  %nOut355 = getelementptr inbounds nuw %struct.WhereLoop, ptr %258, i32 0, i32 6
  %259 = load i16, ptr %nOut355, align 2
  %conv356 = sext i16 %259 to i32
  %add357 = add nsw i32 %conv356, 16
  %conv358 = trunc i32 %add357 to i16
  %call359 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %257, i16 noundef signext %conv358)
  %260 = load ptr, ptr %pNew, align 8
  %rRun360 = getelementptr inbounds nuw %struct.WhereLoop, ptr %260, i32 0, i32 5
  store i16 %call359, ptr %rRun360, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.then353, %if.end340
  %261 = load ptr, ptr %pNew, align 8
  %nOut362 = getelementptr inbounds nuw %struct.WhereLoop, ptr %261, i32 0, i32 6
  %262 = load i16, ptr %nOut362, align 2
  store i16 %262, ptr %nOutUnadjusted, align 2
  %263 = load i16, ptr %nInMul.addr, align 2
  %conv363 = sext i16 %263 to i32
  %264 = load i32, ptr %nIn, align 4
  %add364 = add nsw i32 %conv363, %264
  %265 = load ptr, ptr %pNew, align 8
  %rRun365 = getelementptr inbounds nuw %struct.WhereLoop, ptr %265, i32 0, i32 5
  %266 = load i16, ptr %rRun365, align 4
  %conv366 = sext i16 %266 to i32
  %add367 = add nsw i32 %conv366, %add364
  %conv368 = trunc i32 %add367 to i16
  store i16 %conv368, ptr %rRun365, align 4
  %267 = load i16, ptr %nInMul.addr, align 2
  %conv369 = sext i16 %267 to i32
  %268 = load i32, ptr %nIn, align 4
  %add370 = add nsw i32 %conv369, %268
  %269 = load ptr, ptr %pNew, align 8
  %nOut371 = getelementptr inbounds nuw %struct.WhereLoop, ptr %269, i32 0, i32 6
  %270 = load i16, ptr %nOut371, align 2
  %conv372 = sext i16 %270 to i32
  %add373 = add nsw i32 %conv372, %add370
  %conv374 = trunc i32 %add373 to i16
  store i16 %conv374, ptr %nOut371, align 2
  %271 = load ptr, ptr %pBuilder.addr, align 8
  %pWC375 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %271, i32 0, i32 1
  %272 = load ptr, ptr %pWC375, align 8
  %273 = load ptr, ptr %pNew, align 8
  %274 = load i16, ptr %rSize, align 2
  call void @whereLoopOutputAdjust(ptr noundef %272, ptr noundef %273, i16 noundef signext %274)
  %275 = load ptr, ptr %pBuilder.addr, align 8
  %276 = load ptr, ptr %pNew, align 8
  %call376 = call i32 @whereLoopInsert(ptr noundef %275, ptr noundef %276)
  store i32 %call376, ptr %rc, align 4
  %277 = load ptr, ptr %pNew, align 8
  %wsFlags377 = getelementptr inbounds nuw %struct.WhereLoop, ptr %277, i32 0, i32 8
  %278 = load i32, ptr %wsFlags377, align 8
  %and378 = and i32 %278, 2
  %tobool379 = icmp ne i32 %and378, 0
  br i1 %tobool379, label %if.then380, label %if.else382

if.then380:                                       ; preds = %if.end361
  %279 = load i16, ptr %saved_nOut, align 2
  %280 = load ptr, ptr %pNew, align 8
  %nOut381 = getelementptr inbounds nuw %struct.WhereLoop, ptr %280, i32 0, i32 6
  store i16 %279, ptr %nOut381, align 2
  br label %if.end384

if.else382:                                       ; preds = %if.end361
  %281 = load i16, ptr %nOutUnadjusted, align 2
  %282 = load ptr, ptr %pNew, align 8
  %nOut383 = getelementptr inbounds nuw %struct.WhereLoop, ptr %282, i32 0, i32 6
  store i16 %281, ptr %nOut383, align 2
  br label %if.end384

if.end384:                                        ; preds = %if.else382, %if.then380
  %283 = load ptr, ptr %pNew, align 8
  %wsFlags385 = getelementptr inbounds nuw %struct.WhereLoop, ptr %283, i32 0, i32 8
  %284 = load i32, ptr %wsFlags385, align 8
  %and386 = and i32 %284, 16
  %cmp387 = icmp eq i32 %and386, 0
  br i1 %cmp387, label %land.lhs.true389, label %if.end401

land.lhs.true389:                                 ; preds = %if.end384
  %285 = load ptr, ptr %pNew, align 8
  %u390 = getelementptr inbounds nuw %struct.WhereLoop, ptr %285, i32 0, i32 7
  %nEq391 = getelementptr inbounds nuw %struct.anon.19, ptr %u390, i32 0, i32 0
  %286 = load i16, ptr %nEq391, align 8
  %conv392 = zext i16 %286 to i32
  %287 = load ptr, ptr %pProbe.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %287, i32 0, i32 14
  %288 = load i16, ptr %nColumn, align 8
  %conv393 = zext i16 %288 to i32
  %cmp394 = icmp slt i32 %conv392, %conv393
  br i1 %cmp394, label %if.then396, label %if.end401

if.then396:                                       ; preds = %land.lhs.true389
  %289 = load ptr, ptr %pBuilder.addr, align 8
  %290 = load ptr, ptr %pSrc.addr, align 8
  %291 = load ptr, ptr %pProbe.addr, align 8
  %292 = load i16, ptr %nInMul.addr, align 2
  %conv397 = sext i16 %292 to i32
  %293 = load i32, ptr %nIn, align 4
  %add398 = add nsw i32 %conv397, %293
  %conv399 = trunc i32 %add398 to i16
  %call400 = call i32 @whereLoopAddBtreeIndex(ptr noundef %289, ptr noundef %290, ptr noundef %291, i16 noundef signext %conv399)
  br label %if.end401

if.end401:                                        ; preds = %if.then396, %land.lhs.true389, %if.end384
  %294 = load i16, ptr %saved_nOut, align 2
  %295 = load ptr, ptr %pNew, align 8
  %nOut402 = getelementptr inbounds nuw %struct.WhereLoop, ptr %295, i32 0, i32 6
  store i16 %294, ptr %nOut402, align 2
  br label %for.inc403

for.inc403:                                       ; preds = %if.end401, %if.then155, %if.then54, %if.then44, %if.then33, %if.then29
  %call404 = call ptr @whereScanNext(ptr noundef %scan)
  store ptr %call404, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !8

for.end405:                                       ; preds = %if.then248, %if.then81, %land.end
  %296 = load i64, ptr %saved_prereq, align 8
  %297 = load ptr, ptr %pNew, align 8
  %prereq406 = getelementptr inbounds nuw %struct.WhereLoop, ptr %297, i32 0, i32 0
  store i64 %296, ptr %prereq406, align 8
  %298 = load i16, ptr %saved_nEq, align 2
  %299 = load ptr, ptr %pNew, align 8
  %u407 = getelementptr inbounds nuw %struct.WhereLoop, ptr %299, i32 0, i32 7
  %nEq408 = getelementptr inbounds nuw %struct.anon.19, ptr %u407, i32 0, i32 0
  store i16 %298, ptr %nEq408, align 8
  %300 = load i16, ptr %saved_nBtm, align 2
  %301 = load ptr, ptr %pNew, align 8
  %u409 = getelementptr inbounds nuw %struct.WhereLoop, ptr %301, i32 0, i32 7
  %nBtm410 = getelementptr inbounds nuw %struct.anon.19, ptr %u409, i32 0, i32 1
  store i16 %300, ptr %nBtm410, align 2
  %302 = load i16, ptr %saved_nTop, align 2
  %303 = load ptr, ptr %pNew, align 8
  %u411 = getelementptr inbounds nuw %struct.WhereLoop, ptr %303, i32 0, i32 7
  %nTop412 = getelementptr inbounds nuw %struct.anon.19, ptr %u411, i32 0, i32 2
  store i16 %302, ptr %nTop412, align 4
  %304 = load i16, ptr %saved_nSkip, align 2
  %305 = load ptr, ptr %pNew, align 8
  %nSkip413 = getelementptr inbounds nuw %struct.WhereLoop, ptr %305, i32 0, i32 10
  store i16 %304, ptr %nSkip413, align 2
  %306 = load i32, ptr %saved_wsFlags, align 4
  %307 = load ptr, ptr %pNew, align 8
  %wsFlags414 = getelementptr inbounds nuw %struct.WhereLoop, ptr %307, i32 0, i32 8
  store i32 %306, ptr %wsFlags414, align 8
  %308 = load i16, ptr %saved_nOut, align 2
  %309 = load ptr, ptr %pNew, align 8
  %nOut415 = getelementptr inbounds nuw %struct.WhereLoop, ptr %309, i32 0, i32 6
  store i16 %308, ptr %nOut415, align 2
  %310 = load i16, ptr %saved_nLTerm, align 2
  %311 = load ptr, ptr %pNew, align 8
  %nLTerm416 = getelementptr inbounds nuw %struct.WhereLoop, ptr %311, i32 0, i32 9
  store i16 %310, ptr %nLTerm416, align 4
  %312 = load i16, ptr %saved_nEq, align 2
  %conv417 = zext i16 %312 to i32
  %313 = load i16, ptr %saved_nSkip, align 2
  %conv418 = zext i16 %313 to i32
  %cmp419 = icmp eq i32 %conv417, %conv418
  br i1 %cmp419, label %land.lhs.true421, label %if.end499

land.lhs.true421:                                 ; preds = %for.end405
  %314 = load i16, ptr %saved_nEq, align 2
  %conv422 = zext i16 %314 to i32
  %add423 = add nsw i32 %conv422, 1
  %315 = load ptr, ptr %pProbe.addr, align 8
  %nKeyCol424 = getelementptr inbounds nuw %struct.Index, ptr %315, i32 0, i32 13
  %316 = load i16, ptr %nKeyCol424, align 2
  %conv425 = zext i16 %316 to i32
  %cmp426 = icmp slt i32 %add423, %conv425
  br i1 %cmp426, label %land.lhs.true428, label %if.end499

land.lhs.true428:                                 ; preds = %land.lhs.true421
  %317 = load ptr, ptr %pProbe.addr, align 8
  %noSkipScan = getelementptr inbounds nuw %struct.Index, ptr %317, i32 0, i32 16
  %bf.load429 = load i16, ptr %noSkipScan, align 1
  %bf.lshr430 = lshr i16 %bf.load429, 6
  %bf.clear431 = and i16 %bf.lshr430, 1
  %bf.cast432 = zext i16 %bf.clear431 to i32
  %cmp433 = icmp eq i32 %bf.cast432, 0
  br i1 %cmp433, label %land.lhs.true435, label %if.end499

land.lhs.true435:                                 ; preds = %land.lhs.true428
  %318 = load ptr, ptr %db, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %318, i32 0, i32 15
  %319 = load i16, ptr %dbOptFlags, align 4
  %conv436 = zext i16 %319 to i32
  %and437 = and i32 %conv436, 16384
  %cmp438 = icmp eq i32 %and437, 0
  br i1 %cmp438, label %land.lhs.true440, label %if.end499

land.lhs.true440:                                 ; preds = %land.lhs.true435
  %320 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst441 = getelementptr inbounds nuw %struct.Index, ptr %320, i32 0, i32 2
  %321 = load ptr, ptr %aiRowLogEst441, align 8
  %322 = load i16, ptr %saved_nEq, align 2
  %conv442 = zext i16 %322 to i32
  %add443 = add nsw i32 %conv442, 1
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds i16, ptr %321, i64 %idxprom444
  %323 = load i16, ptr %arrayidx445, align 2
  %conv446 = sext i16 %323 to i32
  %cmp447 = icmp sge i32 %conv446, 42
  br i1 %cmp447, label %land.lhs.true449, label %if.end499

land.lhs.true449:                                 ; preds = %land.lhs.true440
  %324 = load ptr, ptr %db, align 8
  %325 = load ptr, ptr %pNew, align 8
  %326 = load ptr, ptr %pNew, align 8
  %nLTerm450 = getelementptr inbounds nuw %struct.WhereLoop, ptr %326, i32 0, i32 9
  %327 = load i16, ptr %nLTerm450, align 4
  %conv451 = zext i16 %327 to i32
  %add452 = add nsw i32 %conv451, 1
  %call453 = call i32 @whereLoopResize(ptr noundef %324, ptr noundef %325, i32 noundef %add452)
  store i32 %call453, ptr %rc, align 4
  %cmp454 = icmp eq i32 %call453, 0
  br i1 %cmp454, label %if.then456, label %if.end499

if.then456:                                       ; preds = %land.lhs.true449
  %328 = load ptr, ptr %pNew, align 8
  %u457 = getelementptr inbounds nuw %struct.WhereLoop, ptr %328, i32 0, i32 7
  %nEq458 = getelementptr inbounds nuw %struct.anon.19, ptr %u457, i32 0, i32 0
  %329 = load i16, ptr %nEq458, align 8
  %inc459 = add i16 %329, 1
  store i16 %inc459, ptr %nEq458, align 8
  %330 = load ptr, ptr %pNew, align 8
  %nSkip460 = getelementptr inbounds nuw %struct.WhereLoop, ptr %330, i32 0, i32 10
  %331 = load i16, ptr %nSkip460, align 2
  %inc461 = add i16 %331, 1
  store i16 %inc461, ptr %nSkip460, align 2
  %332 = load ptr, ptr %pNew, align 8
  %aLTerm462 = getelementptr inbounds nuw %struct.WhereLoop, ptr %332, i32 0, i32 12
  %333 = load ptr, ptr %aLTerm462, align 8
  %334 = load ptr, ptr %pNew, align 8
  %nLTerm463 = getelementptr inbounds nuw %struct.WhereLoop, ptr %334, i32 0, i32 9
  %335 = load i16, ptr %nLTerm463, align 4
  %inc464 = add i16 %335, 1
  store i16 %inc464, ptr %nLTerm463, align 4
  %idxprom465 = zext i16 %335 to i64
  %arrayidx466 = getelementptr inbounds nuw ptr, ptr %333, i64 %idxprom465
  store ptr null, ptr %arrayidx466, align 8
  %336 = load ptr, ptr %pNew, align 8
  %wsFlags467 = getelementptr inbounds nuw %struct.WhereLoop, ptr %336, i32 0, i32 8
  %337 = load i32, ptr %wsFlags467, align 8
  %or468 = or i32 %337, 32768
  store i32 %or468, ptr %wsFlags467, align 8
  %338 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst469 = getelementptr inbounds nuw %struct.Index, ptr %338, i32 0, i32 2
  %339 = load ptr, ptr %aiRowLogEst469, align 8
  %340 = load i16, ptr %saved_nEq, align 2
  %idxprom470 = zext i16 %340 to i64
  %arrayidx471 = getelementptr inbounds nuw i16, ptr %339, i64 %idxprom470
  %341 = load i16, ptr %arrayidx471, align 2
  %conv472 = sext i16 %341 to i32
  %342 = load ptr, ptr %pProbe.addr, align 8
  %aiRowLogEst473 = getelementptr inbounds nuw %struct.Index, ptr %342, i32 0, i32 2
  %343 = load ptr, ptr %aiRowLogEst473, align 8
  %344 = load i16, ptr %saved_nEq, align 2
  %conv474 = zext i16 %344 to i32
  %add475 = add nsw i32 %conv474, 1
  %idxprom476 = sext i32 %add475 to i64
  %arrayidx477 = getelementptr inbounds i16, ptr %343, i64 %idxprom476
  %345 = load i16, ptr %arrayidx477, align 2
  %conv478 = sext i16 %345 to i32
  %sub479 = sub nsw i32 %conv472, %conv478
  %conv480 = trunc i32 %sub479 to i16
  store i16 %conv480, ptr %nIter, align 2
  %346 = load i16, ptr %nIter, align 2
  %conv481 = sext i16 %346 to i32
  %347 = load ptr, ptr %pNew, align 8
  %nOut482 = getelementptr inbounds nuw %struct.WhereLoop, ptr %347, i32 0, i32 6
  %348 = load i16, ptr %nOut482, align 2
  %conv483 = sext i16 %348 to i32
  %sub484 = sub nsw i32 %conv483, %conv481
  %conv485 = trunc i32 %sub484 to i16
  store i16 %conv485, ptr %nOut482, align 2
  %349 = load i16, ptr %nIter, align 2
  %conv486 = sext i16 %349 to i32
  %add487 = add nsw i32 %conv486, 5
  %conv488 = trunc i32 %add487 to i16
  store i16 %conv488, ptr %nIter, align 2
  %350 = load ptr, ptr %pBuilder.addr, align 8
  %351 = load ptr, ptr %pSrc.addr, align 8
  %352 = load ptr, ptr %pProbe.addr, align 8
  %353 = load i16, ptr %nIter, align 2
  %conv489 = sext i16 %353 to i32
  %354 = load i16, ptr %nInMul.addr, align 2
  %conv490 = sext i16 %354 to i32
  %add491 = add nsw i32 %conv489, %conv490
  %conv492 = trunc i32 %add491 to i16
  %call493 = call i32 @whereLoopAddBtreeIndex(ptr noundef %350, ptr noundef %351, ptr noundef %352, i16 noundef signext %conv492)
  %355 = load i16, ptr %saved_nOut, align 2
  %356 = load ptr, ptr %pNew, align 8
  %nOut494 = getelementptr inbounds nuw %struct.WhereLoop, ptr %356, i32 0, i32 6
  store i16 %355, ptr %nOut494, align 2
  %357 = load i16, ptr %saved_nEq, align 2
  %358 = load ptr, ptr %pNew, align 8
  %u495 = getelementptr inbounds nuw %struct.WhereLoop, ptr %358, i32 0, i32 7
  %nEq496 = getelementptr inbounds nuw %struct.anon.19, ptr %u495, i32 0, i32 0
  store i16 %357, ptr %nEq496, align 8
  %359 = load i16, ptr %saved_nSkip, align 2
  %360 = load ptr, ptr %pNew, align 8
  %nSkip497 = getelementptr inbounds nuw %struct.WhereLoop, ptr %360, i32 0, i32 10
  store i16 %359, ptr %nSkip497, align 2
  %361 = load i32, ptr %saved_wsFlags, align 4
  %362 = load ptr, ptr %pNew, align 8
  %wsFlags498 = getelementptr inbounds nuw %struct.WhereLoop, ptr %362, i32 0, i32 8
  store i32 %361, ptr %wsFlags498, align 8
  br label %if.end499

if.end499:                                        ; preds = %if.then456, %land.lhs.true449, %land.lhs.true440, %land.lhs.true435, %land.lhs.true428, %land.lhs.true421, %for.end405
  %363 = load i32, ptr %rc, align 4
  store i32 %363, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end499, %if.then
  %364 = load i32, ptr %retval, align 4
  ret i32 %364
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereRangeVectorLen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereRangeScanEst(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
